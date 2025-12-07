uint64_t sub_1D6BAE998@<X0>(void *a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v131 = a3;
  v126 = a2;
  v109 = a4;
  v134 = *MEMORY[0x1E69E9840];
  sub_1D5B5C268(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v108 = v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v130 = v105 - v10;
  v127 = sub_1D725BD1C();
  v112 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127, v11);
  v110 = v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v113 = v105 - v15;
  v16 = type metadata accessor for FormatOption(0);
  v111 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = (v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6BAFA3C(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v128 = v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AB28(0);
  v24 = *(v23 - 1);
  v123 = v23;
  v124 = v24;
  v132 = v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v122 = v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5971C(0);
  v28 = v27 - 8;
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D725895C();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = v105 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1[1];
  v38 = a1[4];
  v119 = a1[3];
  v120 = v37;
  v115 = v38;
  v39 = a1[5];
  v129 = a1[6];
  v40 = a1[8];
  v125 = a1[7];
  v117 = a1[9];
  v118 = v40;
  sub_1D725894C();
  v107 = sub_1D725893C();
  v116 = v41;
  (*(v33 + 8))(v36, v32);
  v42 = v122;
  swift_storeEnumTagMultiPayload();
  sub_1D5BD8258(v42, v31, sub_1D5C2AB28);
  sub_1D5B5C0A4(0, &qword_1EDF3C600, sub_1D5C2AB28, MEMORY[0x1E69E6F90]);
  v43 = (*(v132 + 80) + 32) & ~*(v132 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1D7273AE0;
  sub_1D6BAFA90(v42, v44 + v43, sub_1D5C2AB28);
  v45 = *(v28 + 44);
  v124 = v31;
  *&v31[v45] = v44;
  v46 = *(v39 + 16);
  v114 = v39;
  if (v46)
  {
    v133 = MEMORY[0x1E69E7CC0];
    sub_1D69988B8(0, v46, 0);
    v47 = v133;
    v48 = v39 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
    v132 = v111[9];
    do
    {
      sub_1D5BD8258(v48, v19, type metadata accessor for FormatOption);
      v50 = *v19;
      v49 = v19[1];
      v51 = v19[2];

      sub_1D5D28AA4(v19, type metadata accessor for FormatOption);
      v133 = v47;
      v53 = *(v47 + 16);
      v52 = *(v47 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_1D69988B8((v52 > 1), v53 + 1, 1);
        v47 = v133;
      }

      *(v47 + 16) = v53 + 1;
      v54 = (v47 + 24 * v53);
      v54[4] = v50;
      v54[5] = v49;
      v54[6] = v51;
      v48 += v132;
      --v46;
    }

    while (v46);
  }

  else
  {
    v47 = MEMORY[0x1E69E7CC0];
  }

  v55 = v131;
  v56 = v128;
  sub_1D5BD8258(v131, v128, sub_1D6BAFA3C);
  v57 = type metadata accessor for FeedContext(0);
  v58 = (*(*(v57 - 8) + 48))(v56, 1, v57);
  v59 = v126;
  v60 = v127;
  v61 = v129;
  v62 = v130;
  v132 = v47;
  if (v58 == 1)
  {
    v63 = v129;
    sub_1D5D28AA4(v56, sub_1D6BAFA3C);
  }

  else
  {
    v64 = *(v56 + *(v57 + 40));

    v65 = sub_1D5D6021C(MEMORY[0x1E69E7CD0], v64);
    if (*(v65 + 16) <= *(v61 + 16) >> 3)
    {
      v133 = v61;

      sub_1D6836478(v65);

      v66 = v133;
    }

    else
    {

      v66 = sub_1D6E14F70(v65, v61);
    }

    v68 = *(v66 + 32);
    v106 = ((1 << v68) + 63) >> 6;
    v69 = 8 * v106;
    if ((v68 & 0x3Fu) > 0xD)
    {
      goto LABEL_46;
    }

    while (1)
    {
      v105[1] = v105;
      MEMORY[0x1EEE9AC00](v67, v69);
      v111 = (v105 - ((v70 + 15) & 0x3FFFFFFFFFFFFFF0));
      bzero(v111, v70);
      v71 = 0;
      v72 = 1 << *(v66 + 32);
      v73 = -1;
      if (v72 < 64)
      {
        v73 = ~(-1 << v72);
      }

      v62 = v73 & *(v66 + 56);
      v59 = (v72 + 63) >> 6;
      v122 = 0;
      v123 = "ormatGroupNodeMaskGradientLayer";
      while (v62)
      {
        v74 = __clz(__rbit64(v62));
        v62 &= v62 - 1;
LABEL_25:
        v55 = v74 | (v71 << 6);
        v60 = *(*(v66 + 48) + 16 * v55 + 8);

        if (sub_1D726230C() & 1) != 0 || (sub_1D726230C())
        {
        }

        else
        {
          v77 = sub_1D726230C();

          if ((v77 & 1) == 0)
          {
            *(v111 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
            if (__OFADD__(v122++, 1))
            {
              __break(1u);
LABEL_31:
              v79 = sub_1D6EC09F8(v111, v106, v122, v66);
              v59 = v126;
              v60 = v127;
              goto LABEL_32;
            }
          }
        }
      }

      v75 = v71;
      v62 = v130;
      v55 = v131;
      while (1)
      {
        v71 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          break;
        }

        if (v71 >= v59)
        {
          goto LABEL_31;
        }

        v76 = *(v66 + 56 + 8 * v71);
        ++v75;
        if (v76)
        {
          v74 = __clz(__rbit64(v76));
          v62 = (v76 - 1) & v76;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_46:
      v101 = v69;

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }

      v69 = v101;
    }

    v102 = swift_slowAlloc();
    v103 = v121;
    v104 = sub_1D70E22F0(v102, v106, v66, sub_1D70E2238);
    v121 = v103;
    if (v103)
    {

      result = MEMORY[0x1DA6FD500](v102, -1, -1);
      __break(1u);
      return result;
    }

    v79 = v104;

    MEMORY[0x1DA6FD500](v102, -1, -1);
    v55 = v131;
LABEL_32:
    sub_1D5D28AA4(v128, type metadata accessor for FeedContext);

    v63 = v79;
  }

  MEMORY[0x1EEE9AC00](v80, v81);
  v105[-2] = v55;
  v82 = v121;
  v83 = sub_1D5ECBCD0(sub_1D6BAFB4C, &v105[-4], v59);
  if (v82)
  {
    sub_1D5D28AA4(v124, sub_1D5B5971C);

    v84 = v55;
  }

  else
  {
    v130 = v83;

    sub_1D725BD3C();
    v85 = v112;
    v86 = *(v112 + 48);
    if (v86(v62, 1, v60) == 1)
    {
      sub_1D725BCDC();
      if (v86(v62, 1, v60) != 1)
      {
        sub_1D5D28AA4(v62, sub_1D5B5C268);
      }
    }

    else
    {
      (*(v85 + 32))(v113, v62, v60);
    }

    v129 = v63;
    v87 = v108;
    sub_1D725BD3C();
    if (v86(v87, 1, v60) == 1)
    {
      v88 = v110;
      sub_1D725BCCC();
      v89 = v60;
      if (v86(v87, 1, v60) != 1)
      {
        sub_1D5D28AA4(v87, sub_1D5B5C268);
      }
    }

    else
    {
      v90 = *(v85 + 32);
      v88 = v110;
      v90(v110, v87, v60);
      v89 = v60;
    }

    v91 = type metadata accessor for FormatContentSubgroup(0);
    v92 = v109;
    v93 = v109 + v91[10];
    v94 = type metadata accessor for FormatMetadata(0);
    sub_1D725BD3C();
    *v93 = 0;
    *(v93 + 1) = 0;
    v95 = *(v112 + 32);
    v95(&v93[v94[5]], v113, v89);
    v95(&v93[v94[6]], v88, v89);
    v96 = MEMORY[0x1E69E7CD0];
    *&v93[v94[8]] = MEMORY[0x1E69E7CD0];
    *&v93[v94[9]] = v96;
    *&v93[v94[10]] = v96;
    *&v93[v94[11]] = v96;
    v97 = v116;
    *v92 = v107;
    v92[1] = v97;
    sub_1D6BAFA90(v124, v92 + v91[5], sub_1D5B5971C);
    v84 = v131;
    *(v92 + v91[6]) = v132;
    v98 = v130;
    *(v92 + v91[7]) = v129;
    v99 = MEMORY[0x1E69E7CC0];
    *(v92 + v91[9]) = MEMORY[0x1E69E7CC0];
    *(v92 + v91[8]) = v98;
    *(v92 + v91[12]) = v99;
    *(v92 + v91[11]) = v99;
  }

  return sub_1D5D28AA4(v84, sub_1D6BAFA3C);
}

void sub_1D6BAF720(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  sub_1D6BAFA3C(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1[1];
  v21[0] = *a1;
  v21[1] = v14;
  v15 = a1[3];
  v17 = *a1;
  v16 = a1[1];
  v21[2] = a1[2];
  v21[3] = v15;
  v20[0] = v17;
  v20[1] = v16;
  v18 = a1[3];
  v20[2] = a1[2];
  v20[3] = v18;
  sub_1D5BD8258(a2, v13, sub_1D6BAFA3C);
  sub_1D5CB6F58(v21, v19);
  sub_1D683B5D0(v20, v13, a4);
  if (v5)
  {
    *a3 = v5;
  }
}

uint64_t sub_1D6BAF818@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1D6BAFA3C(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[1];
  v27[0] = *a1;
  v27[1] = v13;
  v14 = a1[3];
  v16 = *a1;
  v15 = a1[1];
  v27[2] = a1[2];
  v27[3] = v14;
  v26[0] = v16;
  v26[1] = v15;
  v17 = a1[3];
  v26[2] = a1[2];
  v26[3] = v17;
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  v20 = *(v19 + 16);
  sub_1D5E3FA60(v27, v25);
  v25[0] = v20(v18, v19);
  sub_1D69A8914(0);
  sub_1D5B4A30C(&qword_1EDF1B490, sub_1D69A8914, MEMORY[0x1E69E6328]);
  sub_1D5B4A30C(&qword_1EDF34F40, type metadata accessor for FeedItem, &protocol conformance descriptor for FeedItem);
  v21 = sub_1D72623BC();

  sub_1D5BD8258(a3, v12, type metadata accessor for FeedContext);
  v22 = type metadata accessor for FeedContext(0);
  (*(*(v22 - 8) + 56))(v12, 0, 1, v22);
  v23 = a2[5];

  return sub_1D683A634(v26, v21, v12, v23, a4);
}

uint64_t sub_1D6BAFA90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id _s8NewsFeed13SharingModuleC20createViewController3forSo06UIViewG0CAA0C6IntentV_tF_0(__int128 *a1)
{
  v1 = *(a1 + 2);
  v12 = *a1;
  v2 = *a1;
  v3 = [*a1 activityItems];
  v4 = [v2 activities];
  sub_1D6BAFDE4();
  sub_1D726267C();

  v5 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
  v6 = sub_1D726265C();

  v7 = [v5 initWithActivityItems:v3 applicationActivities:v6];

  v8 = [v2 excludedActivityTypes];
  [v7 setExcludedActivityTypes_];

  v9 = swift_allocObject();
  *(v9 + 16) = v12;
  *(v9 + 32) = v1;
  aBlock[4] = sub_1D6BAFE30;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D67C58F8;
  aBlock[3] = &block_descriptor_83;
  v10 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v7 setCompletionWithItemsHandler_];
  _Block_release(v10);
  return v7;
}

unint64_t sub_1D6BAFDE4()
{
  result = qword_1EC892F70;
  if (!qword_1EC892F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC892F70);
  }

  return result;
}

void sub_1D6BAFE30(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + 24);
    v3 = a1;
    v2();
  }
}

uint64_t sub_1D6BAFE90(__n128 a1)
{
  v1 = sub_1D7259EEC();
  v2 = sub_1D6C26820(v1);

  return v2 & 1;
}

uint64_t static FormatContentSizeCategoryExpression.== infix(_:_:)(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return _s8NewsFeed25FormatContentSizeCategoryO2eeoiySbAC_ACtFZ_0(&v5, &v4) & 1;
}

uint64_t sub_1D6BAFF50(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return _s8NewsFeed25FormatContentSizeCategoryO2eeoiySbAC_ACtFZ_0(&v5, &v4) & 1;
}

unint64_t sub_1D6BAFF8C(uint64_t a1)
{
  result = sub_1D6BAFFB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6BAFFB4()
{
  result = qword_1EC892F78;
  if (!qword_1EC892F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892F78);
  }

  return result;
}

unint64_t sub_1D6BB0008(void *a1)
{
  a1[1] = sub_1D66871A8();
  a1[2] = sub_1D66FEC68();
  result = sub_1D6BB0040();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6BB0040()
{
  result = qword_1EC892F80;
  if (!qword_1EC892F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892F80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatContentSizeCategory(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 == 1)
  {
    goto LABEL_17;
  }

  if ((a2 + 254) >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 254) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 254;
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

      return (*a1 | (v4 << 8)) - 254;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 254;
    }
  }

LABEL_17:
  if (*a1 >= 0xE0u)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t sub_1D6BB0140(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_1D6BB0188(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6BB0208@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = v1->n128_u64[0];
  v6 = v1[2].n128_i64[0];
  v5 = v1[2].n128_u64[1];
  __swift_project_boxed_opaque_existential_1(&v2->n128_u64[1], v6);
  (*(*(v5 + 8) + 40))(&v50, v6);
  v7 = v50;
  v8 = v51;
  v48 = v50;
  v49 = v51;
  v9 = FeedItem.Kind.description.getter();
  v11 = v10;
  sub_1D5BF6680(v7, v8);

  sub_1D6A9DF10(v12, &v39, 0.0, 0.0, 22.0, 22.0);
  sub_1D5B68374(&v2->n128_i64[1], v34);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 1;
  v13 = sub_1D67F5654(&v39, v34);
  sub_1D6BB26C0(v34);
  v52[6] = v44;
  v52[7] = v45;
  v52[8] = v46;
  v53 = v47;
  v52[2] = v41;
  v52[3] = *v42;
  v52[4] = *&v42[16];
  v52[5] = v43;
  v52[0] = v39;
  v52[1] = v40;
  sub_1D6202060(v52);
  sub_1D6BB272C(0);
  v15 = v14;
  v16 = a1 + *(v14 + 48);
  v34[0] = 0;
  sub_1D72618EC();
  v17 = *(&v39 + 1);
  *v16 = v39;
  *(v16 + 1) = v17;
  *a1 = v4;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  v18 = a1 + *(v15 + 44);

  *v18 = sub_1D72611CC();
  *(v18 + 1) = 0;
  v18[16] = 1;
  sub_1D6BB3088(0, v19);
  sub_1D6BB04EC(v2, &v18[*(v20 + 44)]);
  sub_1D6BB29E4(0, &qword_1EC892F98, sub_1D6BB2854, sub_1D5F25A44);
  v18[*(v21 + 36)] = 0;
  __swift_project_boxed_opaque_existential_1(&v2->n128_u64[1], v2[2].n128_i64[0]);
  v22 = sub_1D725AA4C();
  v24 = v23;
  sub_1D6BB3120(v2, &v39);
  v25 = swift_allocObject();
  v26 = *v42;
  v25[3] = v41;
  v25[4] = v26;
  *(v25 + 73) = *&v42[9];
  v27 = v40;
  v25[1] = v39;
  v25[2] = v27;
  sub_1D6BB2790(0);
  v29 = &v18[*(v28 + 36)];
  sub_1D6BB35FC(0, &qword_1EC892FF8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6180], MEMORY[0x1E697C518]);
  v31 = v30;
  result = sub_1D726291C();
  v33 = &v29[*(v31 + 40)];
  *v33 = v22;
  v33[1] = v24;
  *v29 = &unk_1D7331C70;
  *(v29 + 1) = v25;
  return result;
}

uint64_t sub_1D6BB04EC@<X0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6BB29B0(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6BB3984(0, &qword_1EC892FB8, sub_1D6BB29B0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v60 - v16;
  v76 = a1[3];
  sub_1D6BB3984(0, &qword_1EC89AEF0, sub_1D6851ABC, MEMORY[0x1E6981790]);
  sub_1D72618FC();
  if (v74)
  {
    v18 = v74;
    v19 = sub_1D72618BC();
    v63 = a2;
    v20 = v19;
    sub_1D6BB2A58(0);
    v22 = *(v21 + 36);
    v61 = v17;
    v23 = v5;
    v24 = (v9 + v22);
    v25 = a1;
    v26 = *(sub_1D726106C() + 20);
    v62 = v13;
    v27 = *MEMORY[0x1E697F468];
    v28 = sub_1D726123C();
    v29 = v24 + v26;
    a1 = v25;
    (*(*(v28 - 8) + 104))(v29, v27, v28);
    __asm { FMOV            V0.2D, #4.0 }

    *v24 = _Q0;
    sub_1D6BB2A94(0);
    *(v24 + *(v35 + 36)) = 256;
    *v9 = v20;
    v36 = sub_1D7261A5C();
    v38 = v37;
    v39 = v9 + *(v23 + 36);
    sub_1D6BB0A04(v25, v39);

    sub_1D6BB2AB4(0);
    v41 = (v39 + *(v40 + 36));
    v5 = v23;
    *v41 = v36;
    v41[1] = v38;
    a2 = v63;
    v17 = v61;
    v13 = v62;
    sub_1D6BB32D0(v9, v61);
    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  (*(v6 + 56))(v17, v42, 1, v5);
  v43 = sub_1D726125C();
  v65 = 1;
  sub_1D6BB0CD0(a1, &v76);
  v68 = *&v77[16];
  v69 = *&v77[32];
  v70 = *&v77[48];
  v71 = v77[64];
  v66 = v76;
  v67 = *v77;
  v73 = v77[64];
  v72[2] = *&v77[16];
  v72[3] = *&v77[32];
  v72[4] = *&v77[48];
  v72[0] = v76;
  v72[1] = *v77;
  v44 = MEMORY[0x1E6981F40];
  sub_1D6BB3260(&v66, &v74, &qword_1EC892FE0, sub_1D6BB2D08, MEMORY[0x1E6981F40], *&v77[16]);
  sub_1D6BB3204(v72, &qword_1EC892FE0, sub_1D6BB2D08, v44, v45);
  *&v64[39] = v68;
  *&v64[55] = v69;
  *&v64[71] = v70;
  v64[87] = v71;
  *&v64[7] = v66;
  *&v64[23] = v67;
  v46 = v65;
  v47 = MEMORY[0x1E69E6720];
  sub_1D6BB3260(v17, v13, &qword_1EC892FB8, sub_1D6BB29B0, MEMORY[0x1E69E6720], v66);
  sub_1D6BB3260(v13, a2, &qword_1EC892FB8, sub_1D6BB29B0, v47, v48);
  sub_1D6BB2908(0, v49);
  v51 = (a2 + *(v50 + 48));
  v74 = v43;
  LOBYTE(v75[0]) = v46;
  *(v75 + 1) = *v64;
  *(&v75[1] + 1) = *&v64[16];
  *(&v75[4] + 1) = *&v64[64];
  *(&v75[3] + 1) = *&v64[48];
  *(&v75[2] + 1) = *&v64[32];
  *(&v75[5] + 1) = *&v64[80];
  v52 = v75[0];
  *v51 = v43;
  v51[1] = v52;
  v53 = v75[1];
  v54 = v75[2];
  *(v51 + 89) = *(&v75[4] + 9);
  v55 = v75[4];
  v51[4] = v75[3];
  v51[5] = v55;
  v51[2] = v53;
  v51[3] = v54;
  v56 = a2 + *(v50 + 64);
  *v56 = 0;
  *(v56 + 8) = 1;
  sub_1D6BB3334(&v74, &v76, sub_1D6BB2C54);
  sub_1D6BB3204(v17, &qword_1EC892FB8, sub_1D6BB29B0, v47, v57);
  *&v77[33] = *&v64[32];
  *&v77[49] = *&v64[48];
  v78 = *&v64[64];
  *&v77[1] = *v64;
  v76 = v43;
  v77[0] = v46;
  v79 = *&v64[80];
  *&v77[17] = *&v64[16];
  sub_1D6BB3508(&v76, sub_1D6BB2C54);
  return sub_1D6BB3204(v13, &qword_1EC892FB8, sub_1D6BB29B0, v47, v58);
}

void sub_1D6BB0A04(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D72611AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1D726106C();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v13 + 28);
  v15 = *MEMORY[0x1E697F468];
  v16 = sub_1D726123C();
  (*(*(v16 - 8) + 104))(&v12[v14], v15, v16);
  __asm { FMOV            V0.2D, #4.0 }

  *v12 = _Q0;
  v22 = sub_1D726145C();
  v23 = *(a1 + 64);
  if (*(a1 + 72) != 1)
  {

    v24 = sub_1D7262ECC();
    v25 = sub_1D726158C();
    sub_1D725C31C(v24, &dword_1D5B42000, v25, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1D726119C();
    swift_getAtKeyPath();
    v26 = sub_1D6BB3158(v23, 0);
    (*(v5 + 8))(v8, v4, v26);
  }

  sub_1D7260EAC();
  sub_1D6BB3334(v12, a2, MEMORY[0x1E697EAF0]);
  sub_1D6BB339C(0);
  v28 = a2 + *(v27 + 36);
  v29 = v37;
  *v28 = *&v36[8];
  *(v28 + 16) = v29;
  *(v28 + 32) = v38;
  sub_1D6BB3458(0);
  *(a2 + *(v30 + 52)) = v22;
  *(a2 + *(v30 + 56)) = 256;
  v31 = sub_1D7261A5C();
  v33 = v32;
  sub_1D6BB3508(v12, MEMORY[0x1E697EAF0]);
  sub_1D6BB3568(0);
  v35 = (a2 + *(v34 + 36));
  *v35 = v31;
  v35[1] = v33;
}

double sub_1D6BB0CD0@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v71 = a2;
  v4 = MEMORY[0x1E6980E30];
  v5 = MEMORY[0x1E69E6720];
  sub_1D6BB3984(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v62 - v8;
  v11 = a1[4];
  v10 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v11);
  (*(*(v10 + 8) + 40))(&v77, v11);
  v12 = v77;
  v13 = v78;
  v75 = v77;
  v76 = v78;
  v14 = FeedItem.Kind.description.getter();
  v16 = v15;
  sub_1D5BF6680(v12, v13);
  v73 = v14;
  v74 = v16;
  v65 = sub_1D5BF4D9C();
  v17 = sub_1D726171C();
  v19 = v18;
  LOBYTE(v16) = v20;
  v21 = sub_1D726163C();
  v22 = *(v21 - 8);
  v63 = *(v22 + 56);
  v64 = v21;
  v62 = v22 + 56;
  v63(v9, 1, 1);
  sub_1D726167C();
  v70 = v9;
  sub_1D6BB3204(v9, &qword_1EC881178, v4, v5, v23);
  v24 = sub_1D72616DC();
  v26 = v25;
  LOBYTE(v9) = v27;

  sub_1D5F26348(v17, v19, v16 & 1);

  LODWORD(v77) = sub_1D726144C();
  v28 = sub_1D72616CC();
  v67 = v29;
  v68 = v28;
  v66 = v30;
  v69 = v31;
  sub_1D5F26348(v24, v26, v9 & 1);

  v32 = a1[4];
  v33 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v32);
  v34 = (*(*(v33 + 8) + 24))(v32);
  if (!v35)
  {
    v36 = a1[4];
    v37 = a1[5];
    __swift_project_boxed_opaque_existential_1(a1 + 1, v36);
    v34 = (*(*(v37 + 8) + 8))(v36);
  }

  v77 = v34;
  v78 = v35;
  v38 = sub_1D726171C();
  v40 = v39;
  v42 = v41;
  v43 = v70;
  (v63)(v70, 1, 1, v64);
  sub_1D726167C();
  sub_1D6BB3204(v43, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720], v44);
  v45 = sub_1D72616DC();
  v47 = v46;
  v49 = v48;

  sub_1D5F26348(v38, v40, v42 & 1);

  LODWORD(v77) = sub_1D726145C();
  v50 = sub_1D72616CC();
  v52 = v51;
  LOBYTE(v38) = v53;
  v55 = v54;
  sub_1D5F26348(v45, v47, v49 & 1);

  KeyPath = swift_getKeyPath();
  v57 = v66 & 1;
  LOBYTE(v77) = v66 & 1;
  LOBYTE(v75) = v66 & 1;
  LOBYTE(v38) = v38 & 1;
  LOBYTE(v73) = v38;
  v72 = 0;
  v58 = v71;
  v60 = v67;
  v59 = v68;
  *v71 = v68;
  v58[1] = v60;
  *(v58 + 16) = v57;
  v58[3] = v69;
  v58[4] = v50;
  v58[5] = v52;
  *(v58 + 48) = v38;
  v58[7] = v55;
  v58[8] = KeyPath;
  v58[9] = 1;
  *(v58 + 80) = 0;
  sub_1D5F26358(v59, v60, v57);

  sub_1D5F26358(v50, v52, v38);

  sub_1D5F26348(v50, v52, v38);

  sub_1D5F26348(v59, v60, v77);

  return result;
}

uint64_t sub_1D6BB11A4(uint64_t a1)
{
  v1[17] = a1;
  v1[18] = type metadata accessor for FeedItem(0);
  v1[19] = swift_task_alloc();
  sub_1D726290C();
  v1[20] = sub_1D72628FC();
  v3 = sub_1D726285C();
  v1[21] = v3;
  v1[22] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D6BB126C, v3, v2);
}

uint64_t sub_1D6BB126C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  sub_1D5B68374(v2 + 8, v0 + 16);
  sub_1D6818590((v0 + 16), v1);
  if (swift_getEnumCaseMultiPayload() == 13)
  {
    v3 = *(v0 + 152);
    v4 = *(v0 + 136);
    *(v0 + 184) = *(v3 + 8);
    v5 = *(v3 + 16);
    *(v0 + 192) = v5;
    v6 = *v4;
    v7 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_imageCache;
    *(v0 + 200) = v6;
    *(v0 + 208) = v7;
    *(v0 + 216) = *(v6 + v7);

    v8 = swift_task_alloc();
    *(v0 + 224) = v8;
    *v8 = v0;
    v8[1] = sub_1D6BB1520;

    return sub_1D6F8D30C(v5);
  }

  else
  {
    v10 = *(v0 + 136);
    v11 = *(v10 + 32);
    v12 = *(v10 + 40);
    __swift_project_boxed_opaque_existential_1((v2 + 8), v11);
    v13 = (*(*(v12 + 8) + 32))(v11);
    *(v0 + 240) = v13;
    if (v13)
    {
      *(v0 + 248) = *(**(v0 + 136) + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_imageCache);
      __swift_project_boxed_opaque_existential_1((v2 + 8), *(v10 + 32));

      *(v0 + 256) = sub_1D725AA4C();
      *(v0 + 264) = v14;

      return MEMORY[0x1EEE6DFA0](sub_1D6BB17B0, 0, 0);
    }

    else
    {
      v15 = *(v0 + 136);

      v16 = *(*(*v15 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_imageCache) + 16);
      *(v0 + 56) = *(v15 + 48);
      *(v0 + 104) = v16;
      sub_1D6BB3984(0, &qword_1EC89AEF0, sub_1D6851ABC, MEMORY[0x1E6981790]);
      v17 = v16;
      sub_1D726190C();
      sub_1D6BB3508(*(v0 + 152), type metadata accessor for FeedItem);

      v18 = *(v0 + 8);

      return v18();
    }
  }
}

uint64_t sub_1D6BB1520(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 232) = a1;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1D6BB166C, v4, v3);
}

uint64_t sub_1D6BB166C()
{
  v1 = v0[29];

  if (v1)
  {
    v2 = v0[29];
  }

  else
  {
    v2 = *(*(v0[25] + v0[26]) + 16);
  }

  v3 = v0[17];
  v5 = *(v3 + 48);
  v4 = *(v3 + 56);
  v0[11] = v5;
  v0[12] = v4;
  v0[16] = v2;
  sub_1D6BB3984(0, &qword_1EC89AEF0, sub_1D6851ABC, MEMORY[0x1E6981790]);
  v6 = v5;

  v7 = v2;
  sub_1D726190C();

  swift_unknownObjectRelease();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D6BB17B0()
{
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = swift_task_alloc();
  v0[34] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v1;
  v6 = swift_task_alloc();
  v0[35] = v6;
  v7 = sub_1D62B7E2C();
  *v6 = v0;
  v6[1] = sub_1D6BB18BC;

  return MEMORY[0x1EEE6DDE0](v0 + 14, 0, 0, 0xD00000000000001FLL, 0x80000001D73EA5B0, sub_1D6BB31F8, v5, v7);
}

uint64_t sub_1D6BB18BC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D6BB19F0, 0, 0);
}

uint64_t sub_1D6BB19F0()
{

  v0[36] = v0[14];
  v1 = v0[21];
  v2 = v0[22];

  return MEMORY[0x1EEE6DFA0](sub_1D6BB1A5C, v1, v2);
}

uint64_t sub_1D6BB1A5C()
{
  v1 = v0[36];
  v2 = v0[30];
  v3 = v0[17];

  v5 = *(v3 + 48);
  v4 = *(v3 + 56);
  v0[9] = v5;
  v0[10] = v4;
  v0[15] = v1;
  sub_1D6BB3984(0, &qword_1EC89AEF0, sub_1D6851ABC, MEMORY[0x1E6981790]);
  v6 = v5;

  v7 = v1;
  sub_1D726190C();

  sub_1D6BB3508(v0[19], type metadata accessor for FeedItem);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D6BB1B94(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_1D726290C();
  v4[3] = sub_1D72628FC();
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_1D6BB1CB4;

  return v9(a1);
}

uint64_t sub_1D6BB1CB4()
{
  *(*v1 + 40) = v0;

  v3 = sub_1D726285C();
  if (v0)
  {
    v4 = sub_1D5FE5D50;
  }

  else
  {
    v4 = sub_1D6A7FCFC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1D6BB1E10(uint64_t *a1)
{
  sub_1D6BB39E8(0, &qword_1EC893070, sub_1D672B3A4, &type metadata for DebugFormatFeedItemView, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v16 - v5;
  sub_1D672B3A4();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6BB3984(0, &qword_1EC893068, sub_1D630BB34, MEMORY[0x1E6981790]);
  sub_1D72618FC();
  if (v19)
  {
    sub_1D5B63F14(&v18, v23);
    v13 = *a1;
    sub_1D5B68374(v23, &v18 + 8);
    v16[1] = 0;
    sub_1D6851ABC(0);

    sub_1D72618EC();
    v20 = v17;
    KeyPath = swift_getKeyPath();
    v22 = 0;
    v21 = KeyPath;
    *&v18 = v13;
    sub_1D6BB3120(&v18, v6);
    swift_storeEnumTagMultiPayload();
    sub_1D68C43C4();
    sub_1D6BB2C0C(&qword_1EC89AF50, sub_1D672B3A4, MEMORY[0x1E697BF38]);
    sub_1D726135C();
    sub_1D6BB3A54(&v18);
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    sub_1D6BB3508(&v18, sub_1D630BB34);
    sub_1D7260EBC();
    (*(v9 + 16))(v6, v12, v8);
    swift_storeEnumTagMultiPayload();
    sub_1D68C43C4();
    sub_1D6BB2C0C(&qword_1EC89AF50, sub_1D672B3A4, MEMORY[0x1E697BF38]);
    sub_1D726135C();
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_1D6BB2154(uint64_t a1)
{
  v1[12] = a1;
  sub_1D726290C();
  v1[13] = sub_1D72628FC();
  v3 = sub_1D726285C();
  v1[14] = v3;
  v1[15] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D6BB21EC, v3, v2);
}

uint64_t sub_1D6BB21EC()
{
  v1 = *(*(v0 + 96) + 8);
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  sub_1D630BB34(0);
  v4 = v3;
  v5 = sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  *v2 = v0;
  v2[1] = sub_1D6BB22CC;
  v6 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 16, v1, v4, v5, v6);
}

uint64_t sub_1D6BB22CC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1D6BB24D8;
  }

  else
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1D6BB23F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D6BB23F0()
{

  sub_1D6BB3334(v0 + 16, v0 + 56, sub_1D630BB34);
  sub_1D6BB3984(0, &qword_1EC893068, sub_1D630BB34, MEMORY[0x1E6981790]);
  sub_1D726190C();
  sub_1D6BB3508(v0 + 16, sub_1D630BB34);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6BB24D8()
{

  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  sub_1D6BB3334(v0 + 16, v0 + 56, sub_1D630BB34);
  sub_1D6BB3984(0, &qword_1EC893068, sub_1D630BB34, MEMORY[0x1E6981790]);
  sub_1D726190C();
  sub_1D6BB3508(v0 + 16, sub_1D630BB34);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6BB25D4@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1D726124C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1D6BB3694(0);
  sub_1D6BB1E10(v2);
  sub_1D6BB3734(v2, v10);
  v4 = swift_allocObject();
  v5 = v10[1];
  v4[1] = v10[0];
  v4[2] = v5;
  v6 = v10[3];
  v4[3] = v10[2];
  v4[4] = v6;
  sub_1D6BB29E4(0, &qword_1EC893050, sub_1D6BB3800, MEMORY[0x1E697C028]);
  v8 = (a2 + *(v7 + 36));
  sub_1D7260F2C();
  result = sub_1D726291C();
  *v8 = &unk_1D7331D88;
  v8[1] = v4;
  return result;
}

uint64_t sub_1D6BB26C0(uint64_t a1)
{
  sub_1D5B49CBC(0, &qword_1EC890C20, &type metadata for FormatInspectionFeedItem);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6BB272C(uint64_t a1)
{
  if (!qword_1EC892F88)
  {
    sub_1D6BB2790(255);
    v3 = v2;
    v4 = sub_1D6BB2E74();
    v6 = type metadata accessor for DebugFormatInspectorPopoverView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EC892F88);
    }
  }
}

void sub_1D6BB2790(uint64_t a1)
{
  if (!qword_1EC892F90)
  {
    sub_1D6BB29E4(255, &qword_1EC892F98, sub_1D6BB2854, sub_1D5F25A44);
    sub_1D6BB35FC(255, &qword_1EC892FF8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6180], MEMORY[0x1E697C518]);
    v1 = sub_1D726101C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC892F90);
    }
  }
}

void sub_1D6BB2854(uint64_t a1, __n128 a2)
{
  if (!qword_1EC892FA0)
  {
    sub_1D6BB3984(255, &qword_1EC892FA8, sub_1D6BB2908, MEMORY[0x1E6981F40]);
    sub_1D6BB2E10(&qword_1EC892FF0, &qword_1EC892FA8, sub_1D6BB2908, v2);
    v3 = sub_1D726197C();
    if (!v4)
    {
      atomic_store(v3, &qword_1EC892FA0);
    }
  }
}

void sub_1D6BB2908(uint64_t a1, __n128 a2)
{
  if (!qword_1EC892FB0)
  {
    sub_1D6BB3984(255, &qword_1EC892FB8, sub_1D6BB29B0, MEMORY[0x1E69E6720]);
    sub_1D6BB2C54(255, v2);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC892FB0);
    }
  }
}

void sub_1D6BB29E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_1D6BB2AB4(uint64_t a1)
{
  if (!qword_1EC892FD0)
  {
    sub_1D6BB2B48(255);
    sub_1D6BB2C0C(&qword_1EC892FD8, sub_1D6BB2B48, MEMORY[0x1E697E8C0]);
    v1 = sub_1D726109C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC892FD0);
    }
  }
}

void sub_1D6BB2B48(uint64_t a1)
{
  if (!qword_1EC89AE30)
  {
    sub_1D726106C();
    sub_1D6BB2C0C(&unk_1EC89AE20, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    v1 = sub_1D726104C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC89AE30);
    }
  }
}

uint64_t sub_1D6BB2C0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D6BB2C54(uint64_t a1, __n128 a2)
{
  if (!qword_1EC89AE40)
  {
    sub_1D6BB3984(255, &qword_1EC892FE0, sub_1D6BB2D08, MEMORY[0x1E6981F40]);
    sub_1D6BB2E10(&qword_1EC89AE70, &qword_1EC892FE0, sub_1D6BB2D08, v2);
    v3 = sub_1D726198C();
    if (!v4)
    {
      atomic_store(v3, &qword_1EC89AE40);
    }
  }
}

void sub_1D6BB2D08(uint64_t a1)
{
  if (!qword_1EC89AE50)
  {
    sub_1D6BB39E8(255, &qword_1EC892FE8, sub_1D6BB2DA8, MEMORY[0x1E6981148], MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC89AE50);
    }
  }
}

void sub_1D6BB2DA8(uint64_t a1)
{
  if (!qword_1EC89AE60)
  {
    sub_1D5B49CBC(255, &qword_1EDF3C7C0, MEMORY[0x1E69E6530]);
    v1 = sub_1D726157C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC89AE60);
    }
  }
}

uint64_t sub_1D6BB2E10(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), __n128 a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6BB3984(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6BB2E74()
{
  result = qword_1EC893000;
  if (!qword_1EC893000)
  {
    sub_1D6BB2790(255);
    sub_1D6BB2EF4();
    sub_1D6BB3004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893000);
  }

  return result;
}

unint64_t sub_1D6BB2EF4()
{
  result = qword_1EC893008;
  if (!qword_1EC893008)
  {
    sub_1D6BB29E4(255, &qword_1EC892F98, sub_1D6BB2854, sub_1D5F25A44);
    sub_1D6BB2C0C(&qword_1EC893010, sub_1D6BB2854, MEMORY[0x1E69817F8]);
    sub_1D6BB2C0C(&qword_1EC881138, sub_1D5F25A44, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893008);
  }

  return result;
}

unint64_t sub_1D6BB3004()
{
  result = qword_1EC893018;
  if (!qword_1EC893018)
  {
    sub_1D6BB35FC(255, &qword_1EC892FF8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6180], MEMORY[0x1E697C518]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893018);
  }

  return result;
}

void sub_1D6BB3088(uint64_t a1, __n128 a2)
{
  if (!qword_1EC893020)
  {
    sub_1D6BB3984(255, &qword_1EC892FA8, sub_1D6BB2908, MEMORY[0x1E6981F40]);
    v2 = sub_1D7260F3C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC893020);
    }
  }
}

double sub_1D6BB3158(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1D6BB3164()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D5B64680;

  return sub_1D6BB11A4(v0 + 16);
}

uint64_t sub_1D6BB3204(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t), __n128 a5)
{
  sub_1D6BB3984(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D6BB3260(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t), __n128 a6)
{
  sub_1D6BB3984(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D6BB32D0(uint64_t a1, uint64_t a2)
{
  sub_1D6BB29B0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6BB3334(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D6BB33BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D726106C();
    v7 = sub_1D6BB2C0C(&unk_1EC89AE20, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D6BB3458(uint64_t a1)
{
  if (!qword_1EC893028)
  {
    sub_1D6BB339C(255);
    sub_1D6BB2C0C(&unk_1EC89AF70, sub_1D6BB339C, MEMORY[0x1E697E298]);
    v1 = sub_1D7260E8C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC893028);
    }
  }
}

uint64_t sub_1D6BB3508(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6BB3568(uint64_t a1)
{
  if (!qword_1EC893030)
  {
    sub_1D6BB3458(255);
    sub_1D6BB35FC(255, &unk_1EC89AF80, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697F930]);
    v1 = sub_1D726101C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC893030);
    }
  }
}

void sub_1D6BB35FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed0B8ItemType_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1D6BB3694(uint64_t a1)
{
  if (!qword_1EC893040)
  {
    sub_1D6BB39E8(255, &qword_1EC893048, sub_1D672B3A4, &type metadata for DebugFormatFeedItemView, MEMORY[0x1E697F960]);
    v1 = sub_1D7260F3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC893040);
    }
  }
}

uint64_t sub_1D6BB376C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D5B64684;

  return sub_1D6BB2154(v0 + 16);
}

void sub_1D6BB3800(uint64_t a1)
{
  if (!qword_1EC893058)
  {
    sub_1D6BB39E8(255, &qword_1EC893048, sub_1D672B3A4, &type metadata for DebugFormatFeedItemView, MEMORY[0x1E697F960]);
    sub_1D6BB389C();
    v1 = sub_1D726198C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC893058);
    }
  }
}

unint64_t sub_1D6BB389C()
{
  result = qword_1EC893060;
  if (!qword_1EC893060)
  {
    sub_1D6BB39E8(255, &qword_1EC893048, sub_1D672B3A4, &type metadata for DebugFormatFeedItemView, MEMORY[0x1E697F960]);
    sub_1D68C43C4();
    sub_1D6BB2C0C(&qword_1EC89AF50, sub_1D672B3A4, MEMORY[0x1E697BF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893060);
  }

  return result;
}

void sub_1D6BB3984(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6BB39E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D6BB3A84()
{
  result = qword_1EC893078;
  if (!qword_1EC893078)
  {
    sub_1D6BB29E4(255, &qword_1EC893050, sub_1D6BB3800, MEMORY[0x1E697C028]);
    sub_1D6BB2C0C(&qword_1EC893080, sub_1D6BB3800, MEMORY[0x1E6981870]);
    sub_1D6BB2C0C(qword_1EC89AFE0, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893078);
  }

  return result;
}

uint64_t Heading.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6BB3C20()
{
  result = qword_1EC893088;
  if (!qword_1EC893088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893088);
  }

  return result;
}

uint64_t FeedTopicRecipesCluster.replacing(recipeItems:titleModification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *v3;
  v8 = *(v3 + 16);
  if (v6 == 255)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    v9 = sub_1D726203C();
    if (v6)
    {
      v10 = [v7 setTitleDisplaySuffixOverride_];
    }

    else
    {
      v10 = [v7 setTitleDisplayPrefixOverride_];
    }

    v7 = v10;
  }

  *a3 = v7;
  a3[1] = a1;
  a3[2] = v8;
}

uint64_t FeedTopicRecipesCluster.recipeItems.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v4 = (v1 + 32);
    do
    {
      v5 = *v4;
      v4 += 2;
      v6 = v5;
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

BOOL FeedTopicRecipesCluster.titleHasPrefix.getter()
{
  v1 = [*v0 titleDisplayPrefix];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t FeedTopicRecipesCluster.init(tag:scoredRecipeItems:minClusterSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

double static Format.prepare()()
{
  if (qword_1EDF223A8 != -1)
  {
    swift_once();
  }

  return sub_1D6F0C188();
}

uint64_t sub_1D6BB3EF0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1D725CFDC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1D5E46B00(a1 + 16, &v15);
  if (v16)
  {
    sub_1D5B63F14(&v15, v17);
    v18 = v6;
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_1D725CFBC();
    v11 = sub_1D725E62C();
    (*(v7 + 8))(v10, v18);
    v12 = v11 ^ 1;
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_1D5E46B90(&v15);
    v12 = 0;
  }

  return LayeredMediaViewRenderer.render(view:renderedViewModel:forceAsync:)(a2, *(a3 + 24), v12 & 1);
}

void sub_1D6BB4094(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1D725CFDC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1D5E46B00(a2 + 16, &v19);
  if (v20)
  {
    sub_1D5B63F14(&v19, aBlock);
    __swift_project_boxed_opaque_existential_1(aBlock, v16);
    sub_1D725CFCC();
    v10 = sub_1D725E62C();
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if ((v10 & 1) == 0)
    {
      sub_1D726343C();
      return;
    }
  }

  else
  {
    sub_1D5E46B90(&v19);
  }

  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  v17 = sub_1D6BB4820;
  v18 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  v16 = &block_descriptor_84;
  v13 = _Block_copy(aBlock);
  v14 = a3;

  [v11 animateWithDuration:v13 animations:0.15];
  _Block_release(v13);
}

uint64_t sub_1D6BB42BC()
{
  sub_1D5E46B90(v0 + 16);

  return swift_deallocClassInstance();
}

double sub_1D6BB42FC(uint64_t a1, char *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a4[1];
  v58 = *a4;
  v59 = v13;
  v60 = *(a4 + 32);
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = &a2[OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_identifier];
  *v16 = v15;
  *(v16 + 1) = v14;

  swift_beginAccess();
  sub_1D726344C();
  [a2 setUserInteractionEnabled_];
  if (sub_1D703AB88(*(*(&v59 + 1) + 16)))
  {
    v52 = a5;
    v53 = a7;
    objc_allocWithZone(type metadata accessor for LayeredMediaView(0));

    v19 = sub_1D6F666C4(v18);
    sub_1D726348C();
    [a2 bounds];
    sub_1D726344C();
    sub_1D726343C();
    [v19 setAccessibilityIgnoresInvertColors_];

    sub_1D703AC7C(v19);
    v20 = *(a1 + 144);
    v54 = a3;
    if (v20)
    {
      v21 = *(v20 + 80);
      v22 = *(v20 + 88);
      v23 = *(v20 + 96);
      sub_1D5ED34B0(v21, v22, v23);
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = -2;
    }

    v24 = [a2 layer];
    [a2 bounds];
    v55 = v21;
    v56 = v22;
    v57 = v23;
    sub_1D6E549E4(v24, &v55, v25, v26, v27, v28);

    sub_1D5ED348C(v21, v22, v23);
    if (v20)
    {
      v29 = *(v20 + 80);
      v30 = *(v20 + 88);
      v31 = *(v20 + 96);
      sub_1D5ED34B0(v29, v30, v31);
    }

    else
    {
      v29 = 0;
      v30 = 0;
      v31 = -2;
    }

    v32 = [v19 layer];
    [v19 bounds];
    v55 = v29;
    v56 = v30;
    v57 = v31;
    sub_1D6E549E4(v32, &v55, v33, v34, v35, v36);

    sub_1D5ED348C(v29, v30, v31);
    if (v20)
    {
      v37 = *(v20 + 64);
      if (v37 >> 61 || (v37 & 0xF000000000000007) == 0xF000000000000007)
      {
        v45 = [objc_opt_self() clearColor];
        sub_1D726349C();
      }

      else
      {
        v55 = *(v37 + 16);
        sub_1D5D04BD4(v37);

        v39 = FormatColor.color.getter(v38);
        sub_1D726349C();

        sub_1D5C8500C(v37);
      }

      v43 = *(v20 + 72);
      v41 = *(v20 + 80);
      v42 = *(v20 + 88);
      v44 = *(v20 + 96);

      sub_1D5ED34B0(v41, v42, v44);
    }

    else
    {
      v40 = [objc_opt_self() clearColor];
      sub_1D726349C();

      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = -2;
    }

    v46 = [a2 layer];
    v55 = v41;
    v56 = v42;
    v57 = v44;
    sub_1D6D111F4(v46, v52, v43, &v55, a6, v53);

    sub_1D5ED348C(v41, v42, v44);
    if (v20)
    {
    }

    else
    {
      v47 = 0;
    }

    v55 = v47;
    sub_1D613DC18(a2, &v55, v54);

    MEMORY[0x1EEE9AC00](v48, v49);
    sub_1D725BDCC();
    v50 = sub_1D725A95C();
    *(swift_allocObject() + 16) = v19;
    v51 = v19;
    sub_1D725BAAC();
  }

  return result;
}

double FormatImageNode.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

uint64_t FormatImageNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatImageNode.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 128);

  return v1;
}

double FormatImageNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

unint64_t FormatImageNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

double FormatImageNode.resize.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 40);

  return result;
}

double FormatImageNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

double FormatImageNode.content.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 72);

  return result;
}

double FormatImageNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = v2;
  return sub_1D5EB15C4(v3);
}

void FormatImageNode.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = *(v1 + 104);
  *(a1 + 8) = v2;
}

double FormatImageNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;

  return result;
}

double sub_1D6BB4EAC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 128) = v3;
  *(v4 + 136) = v2;

  return result;
}

double FormatImageNode.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;

  return result;
}

uint64_t FormatImageNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[18];
  v3 = v1[19];
  v4 = v1[20];
  v5 = v1[21];
  v6 = v1[22];
  v7 = v1[23];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6, v7);
}

uint64_t FormatImageNode.__allocating_init(identifier:size:resize:adjustments:style:animation:content:zIndex:visibility:isUserInteractionEnabled:shouldCancelContextMenu:accessibilityRole:selectors:name:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t *a10, char a11, char a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = swift_allocObject();
  v23 = *a3;
  v24 = *a4;
  v25 = *a8;
  v26 = *a10;
  v33 = *a13;
  v27 = *(a13 + 8);
  v34 = *(a17 + 40);
  v35 = *(a17 + 32);
  *(v22 + 136) = 0;
  *(v22 + 128) = 0;
  swift_beginAccess();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = v23;
  *(v22 + 40) = v24;
  swift_beginAccess();
  *(v22 + 48) = a5;
  *(v22 + 56) = a6;
  *(v22 + 64) = a7;
  *(v22 + 72) = v25;
  swift_beginAccess();
  *(v22 + 80) = a9;
  swift_beginAccess();
  *(v22 + 88) = v26;
  swift_beginAccess();
  *(v22 + 96) = a11;
  swift_beginAccess();
  *(v22 + 97) = a12;
  *(v22 + 104) = v33;
  *(v22 + 112) = v27;
  swift_beginAccess();
  *(v22 + 120) = a14;
  swift_beginAccess();
  *(v22 + 128) = a15;
  *(v22 + 136) = a16;

  v28 = *(a17 + 16);
  *(v22 + 144) = *a17;
  *(v22 + 160) = v28;
  *(v22 + 176) = v35;
  *(v22 + 184) = v34;
  return v22;
}

uint64_t FormatImageNode.init(identifier:size:resize:adjustments:style:animation:content:zIndex:visibility:isUserInteractionEnabled:shouldCancelContextMenu:accessibilityRole:selectors:name:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t *a10, char a11, char a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = *a3;
  v22 = *a4;
  v23 = *a8;
  v26 = *a10;
  v30 = *a13;
  v29 = *(a13 + 8);
  v31 = *(a17 + 40);
  v32 = *(a17 + 32);
  *(v17 + 136) = 0;
  *(v17 + 128) = 0;
  swift_beginAccess();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = v21;
  *(v17 + 40) = v22;
  swift_beginAccess();
  *(v17 + 48) = a5;
  *(v17 + 56) = a6;
  *(v17 + 64) = a7;
  *(v17 + 72) = v23;
  swift_beginAccess();
  *(v17 + 80) = a9;
  swift_beginAccess();
  *(v17 + 88) = v26;
  swift_beginAccess();
  *(v17 + 96) = a11;
  swift_beginAccess();
  *(v17 + 97) = a12;
  *(v17 + 104) = v30;
  *(v17 + 112) = v29;
  swift_beginAccess();
  *(v17 + 120) = a14;
  swift_beginAccess();
  *(v17 + 128) = a15;
  *(v17 + 136) = a16;

  v24 = *(a17 + 16);
  *(v17 + 144) = *a17;
  *(v17 + 160) = v24;
  *(v17 + 176) = v32;
  *(v17 + 184) = v31;
  return v17;
}

uint64_t FormatImageNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 32));

  sub_1D5EB15C4(*(v0 + 88));

  sub_1D5EB2398(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184));
  return v0;
}

uint64_t FormatImageNode.__deallocating_deinit()
{
  FormatImageNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6BB543C(uint64_t a1, uint64_t a2)
{
  result = sub_1D6BB6598(&qword_1EC893090, a2, type metadata accessor for FormatImageNode, &protocol conformance descriptor for FormatImageNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6BB5494(void *a1, uint64_t a2)
{
  a1[1] = sub_1D6BB6598(&qword_1EDF31738, a2, type metadata accessor for FormatImageNode, &protocol conformance descriptor for FormatImageNode);
  a1[2] = sub_1D6BB6598(&qword_1EDF118C8, v3, type metadata accessor for FormatImageNode, &protocol conformance descriptor for FormatImageNode);
  result = sub_1D6BB6598(&qword_1EC893098, v4, type metadata accessor for FormatImageNode, &protocol conformance descriptor for FormatImageNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6BB5570(uint64_t a1, uint64_t a2)
{
  result = sub_1D6BB6598(&qword_1EC8930A0, a2, type metadata accessor for FormatImageNode, &protocol conformance descriptor for FormatImageNode);
  *(a1 + 8) = result;
  return result;
}

double sub_1D6BB55C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v49 = a8;
  v50 = a5;
  v47 = a2;
  sub_1D6BB646C(0, &qword_1EDF3BEE0, MEMORY[0x1E69D74C0]);
  v46 = v15;
  v48 = *(v15 - 8);
  v16 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v51 = v39 - v18;
  sub_1D6BB646C(0, &qword_1EDF3BF10, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v53 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = (v39 - v22);
  v56 = a1;
  KeyPath = swift_getKeyPath();
  swift_unownedRetainStrong();
  v25 = *(a6 + 32);
  sub_1D5C82CD8(v25);

  v55 = v25;
  v52 = a7;
  v26 = v54;
  sub_1D5BEB9F4(a7, a3, a4, v23);
  sub_1D5C92A8C(v55);
  if (!v26)
  {
    v41 = v16;
    v42 = a3;
    v44 = v23;
    v45 = KeyPath;
    v54 = v20;
    v43 = a4;
    swift_unownedRetainStrong();
    swift_beginAccess();
    v28 = *(a6 + 48);

    v29 = v52;
    v30 = sub_1D618EFB4(v52, v28);
    v40 = a9;

    v39[1] = v30;
    v31 = v48;
    v32 = v46;
    (*(v48 + 16))(v51, v47, v46);
    v33 = (*(v31 + 80) + 72) & ~*(v31 + 80);
    v34 = swift_allocObject();
    *(v34 + 2) = v49;
    *(v34 + 3) = v29;
    v35 = v42;
    v36 = v43;
    *(v34 + 4) = a6;
    *(v34 + 5) = v35;
    v37 = v40;
    *(v34 + 6) = v36;
    *(v34 + 7) = v37;
    *(v34 + 8) = a10;
    (*(v31 + 32))(&v34[v33], v51, v32);

    swift_unownedRetain();
    sub_1D5EB563C(0);
    sub_1D6BB6598(&qword_1EDF3C118, 255, sub_1D5EB563C, MEMORY[0x1E69D6FB0]);

    v38 = v44;
    sub_1D7259B1C();
    (*(v53 + 8))(v38, v54);
  }

  return result;
}

void sub_1D6BB59EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t *a9@<X8>, __n128 a10@<Q0>, double a11@<D1>, CGFloat a12@<D2>, CGFloat a13@<D3>)
{
  v14 = v13;
  v113 = a8;
  v114 = a7;
  v116 = a4;
  v117 = a2;
  v22 = a10.n128_u64[0];
  sub_1D6047B58(0, a10);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v110 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v111 = &v104 - v29;
  v30 = type metadata accessor for FormatNodeStateData.Data(0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = a1;
  v108 = v35;
  v109 = v34;
  if (!a1)
  {
    goto LABEL_4;
  }

  v36 = *(v115 + 248);
  v37 = *(v115 + 256);
  if (v36)
  {
    if (v36 == 1)
    {
LABEL_4:
      v107 = a9;
      v129 = 0;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v124 = 0u;
      v38 = 1;
      goto LABEL_13;
    }

    sub_1D62B5D88(*(v115 + 248));

    v39 = sub_1D6E7C848(v117, v36, 0.0, 0.0, a12, a13);
    v40 = v43;
    v41 = v44;
    v42 = v45;

    if (v13)
    {
LABEL_9:
      sub_1D62B5D44(v36);
      return;
    }
  }

  else
  {

    v39 = 0.0;
    v40 = 0.0;
    v41 = a12;
    v42 = a13;
  }

  if (v37)
  {

    *&v46 = sub_1D6E7C848(v117, v37, 0.0, 0.0, v41, v42);
    v112 = v46;
    v106 = v47;
    v104 = v48;
    v105 = v49;

    if (v13)
    {
      goto LABEL_9;
    }

    v107 = a9;
    *&v50 = v112;
    *(&v50 + 1) = v104;
    *&v51 = v106;
    *(&v51 + 1) = v105;
  }

  else
  {
    v107 = a9;
    v50 = 0uLL;
    v51 = 0uLL;
  }

  v122[0] = v50;
  v122[1] = v51;
  v123 = v37 == 0;
  sub_1D69FD714(v122, &v124, v39, v40, v41, v42);
  sub_1D62B5D44(v36);
  v38 = *(&v124 + 1) == 0;
LABEL_13:
  *&v106 = v33;
  swift_unownedRetainStrong();
  v52 = *(a3 + 72);

  v121[0] = v52;
  *&v112 = a5;
  v53 = sub_1D6F7D3CC(v116, a5, a6);
  v55 = v54;
  v57 = v56;

  if (!v38)
  {
    sub_1D5B49E48(0, &qword_1EDF19878, &type metadata for FormatNodeCacheKey, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7270C10;
    *(inited + 32) = v53;
    *(inited + 40) = v55;
    *(inited + 48) = v57 & 1;
    v119 = 0;
    v120 = 0xE000000000000000;
    v121[0] = v22;
    *&v121[1] = a11;
    *&v121[2] = a12;
    *&v121[3] = a13;
    type metadata accessor for CGRect(0);
    sub_1D7263F9C();
    v59 = v120;
    *(inited + 56) = v119;
    *(inited + 64) = v59;
    *(inited + 72) = 0;
    sub_1D60ED798();
    v14 = v13;
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  v60 = v117;
  sub_1D7259F1C();
  v62 = v61;
  v63 = v60;
  v64 = sub_1D7259EBC();
  type metadata accessor for FormatImageNodeContext();
  v65 = swift_allocObject();
  *(v65 + 16) = a12;
  *(v65 + 24) = a13;
  *(v65 + 32) = v62;
  *(v65 + 40) = v64;
  v66 = v127;
  *(v65 + 80) = v126;
  *(v65 + 96) = v66;
  *(v65 + 112) = v128;
  *(v65 + 128) = v129;
  v67 = v125;
  *(v65 + 48) = v124;
  *(v65 + 64) = v67;
  swift_unownedRetainStrong();
  v68 = *(a3 + 72);
  sub_1D673F334(&v124, v121);

  v121[0] = v68;
  sub_1D6F7D724(v63, v113, v65, &v119);
  if (v14)
  {

    sub_1D68B7728(&v124);

    return;
  }

  sub_1D68B7728(&v124);

  v69 = v119;
  v70 = v106;
  *v106 = v119;
  v71 = v109;
  swift_storeEnumTagMultiPayload();
  v72 = v111;
  sub_1D6BB65E0(v70, v111, type metadata accessor for FormatNodeStateData.Data);
  (*(v108 + 56))(v72, 0, 1, v71);
  v73 = v110;
  sub_1D6BB65E0(v72, v110, sub_1D6047B58);
  swift_beginAccess();
  v113 = v69;

  v74 = v112;

  sub_1D6D60A18(v73, v116, v74);
  swift_endAccess();
  sub_1D6BB6648(v72, sub_1D6047B58);
  v75 = v117;
  sub_1D6BB6648(v70, type metadata accessor for FormatNodeStateData.Data);
  v76 = *(v75 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v78 = *(a3 + 16);
  v77 = *(a3 + 24);

  v79 = *(v76 + 40);
  if (v79)
  {
    v119 = *(v76 + 32);
    v120 = v79;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v78, v77);

    v78 = v119;
    v77 = v120;
  }

  swift_unownedRetainStrong();
  swift_beginAccess();
  v80 = *(a3 + 24);
  v108 = *(a3 + 16);
  v109 = v80;

  swift_unownedRetainStrong();
  v81 = *(a3 + 40);

  v114 = 0;
  v110 = v78;
  v111 = v77;
  if (!v81)
  {
    goto LABEL_23;
  }

  v82 = *(v81 + 16);
  swift_beginAccess();
  if (!*(*(v82 + 16) + 16))
  {

LABEL_23:
    v82 = 0;
    goto LABEL_24;
  }

LABEL_24:
  swift_unownedRetainStrong();
  swift_beginAccess();
  *&v106 = *(a3 + 80);

  swift_unownedRetainStrong();
  swift_beginAccess();
  v83 = *(a3 + 88);
  sub_1D5EB1500(v83);

  v118[0] = v83;
  sub_1D615B4A8(v75, &v130);
  sub_1D5EB15C4(v118[0]);
  v117 = v130;
  swift_unownedRetainStrong();
  swift_beginAccess();
  LODWORD(v105) = *(a3 + 96);

  swift_unownedRetainStrong();
  v84 = *(a3 + 104);
  v85 = *(a3 + 112);

  swift_unownedRetainStrong();
  swift_beginAccess();
  v87 = *(a3 + 128);
  v86 = *(a3 + 136);

  swift_unownedRetainStrong();
  swift_beginAccess();
  v88 = *(a3 + 97);

  type metadata accessor for FormatImageNodeLayoutAttributes();
  v89 = swift_allocObject();
  v90 = v115;
  *(v89 + 16) = v116;
  v91 = v110;
  v92 = v111;
  *(v89 + 24) = v112;
  *(v89 + 32) = v91;
  v94 = v108;
  v93 = v109;
  *(v89 + 40) = v92;
  *(v89 + 48) = v94;
  *(v89 + 56) = v93;
  *(v89 + 64) = v22;
  *(v89 + 72) = a11;
  *(v89 + 80) = a12;
  *(v89 + 88) = a13;
  *(v89 + 96) = v90;
  *(v89 + 104) = v82;
  v95 = v117;
  *(v89 + 112) = v106;
  *(v89 + 120) = v95;
  *(v89 + 128) = v105;
  *(v89 + 136) = v84;
  *(v89 + 144) = v85;
  *(v89 + 152) = v87;
  *(v89 + 160) = v86;
  *(v89 + 129) = v88;
  if (v90)
  {
    sub_1D60D656C(0, &qword_1EDF195B8, sub_1D60D65D0, MEMORY[0x1E69E6F90]);
    v96 = swift_initStackObject();
    v97 = v96;
    *(v96 + 16) = xmmword_1D7273AE0;
    v98 = *(v90 + 72);
    if ((~v98 & 0xF000000000000007) != 0)
    {
      v101 = &protocol witness table for FormatBackground;
      v100 = &type metadata for FormatBackground;
      v99 = *(v90 + 72);
    }

    else
    {
      v99 = 0;
      v100 = 0;
      v101 = 0;
      *(v96 + 40) = 0;
      *(v96 + 48) = 0;
    }

    *(v96 + 32) = v99;
    *(v96 + 56) = v100;
    *(v96 + 64) = v101;

    sub_1D5D04BD4(v98);
    v102 = sub_1D6E27AC0();
    swift_setDeallocating();
    sub_1D6BB6648(v97 + 32, sub_1D60D65D0);
  }

  else
  {

    v102 = MEMORY[0x1E69E7CD0];
  }

  v103 = swift_allocObject();
  *(v89 + 168) = v102;
  *(v103 + 16) = v89;
  *v107 = v103 | 0x2000000000000004;
}

void sub_1D6BB646C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5EB5218();
    v7 = a3(a1, &type metadata for FormatLayout, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D6BB64D0(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1D6BB646C(0, &qword_1EDF3BEE0, MEMORY[0x1E69D74C0]);
  v12.n128_f64[0] = a2;
  sub_1D6BB59EC(v5[2], v5[3], v5[4], v5[5], v5[6], v5[7], v5[8], v5 + ((*(*(v11 - 8) + 80) + 72) & ~*(*(v11 - 8) + 80)), a1, v12, a3, a4, a5);
}

uint64_t sub_1D6BB6598(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D6BB65E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6BB6648(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id FeedDescriptor.groupItem.getter@<X0>(id *a1@<X8>)
{
  v3 = *v1;
  *a1 = *v1;
  type metadata accessor for FeedGroupItem(0);
  swift_storeEnumTagMultiPayload();

  return v3;
}

id sub_1D6BB6718@<X0>(id *a1@<X8>)
{
  v3 = *v1;
  *a1 = *v1;
  type metadata accessor for FeedGroupItem(0);
  swift_storeEnumTagMultiPayload();

  return v3;
}

char *sub_1D6BB6778()
{
  v1 = *v0;
  FCFeedDescriptor.feedTag.getter();
  ObjectType = swift_getObjectType();
  v3 = sub_1D5EEDC00(0x2D64656566, 0xE500000000000000, ObjectType);
  swift_unknownObjectRelease();
  v32 = v3;
  v4 = [v1 alternativeFeedDescriptor];
  if (v4)
  {
    v5 = v4;
    FCFeedDescriptor.feedTag.getter();
    v6 = swift_getObjectType();
    v7 = sub_1D5EEDC00(0x646565662D746C61, 0xE90000000000002DLL, v6);
    swift_unknownObjectRelease();
    sub_1D6985160(v7);
  }

  v8 = [objc_msgSend(v1 backingTag)];
  swift_unknownObjectRelease();
  if (v8)
  {
    v9 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D5B858EC(0, *(v32 + 2) + 1, 1, v32);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1D5B858EC((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[16 * v11];
    *(v12 + 4) = 0xD000000000000015;
    *(v12 + 5) = 0x80000001D73EA6D0;
    v32 = v9;
    v13 = swift_getObjectType();
    v14 = sub_1D5EEDC00(0x6365732D64656566, 0xED00002D6E6F6974, v13);
    sub_1D6985160(v14);
    v15 = [v1 backingChannel];
    if (v15)
    {
      v16 = v15;
      v17 = [v8 identifier];
      v18 = sub_1D726207C();
      v20 = v19;

      v21 = [v16 defaultSectionID];
      if (v21)
      {
        v22 = v21;
        v23 = sub_1D726207C();
        v25 = v24;

        if (v18 == v23 && v20 == v25)
        {

LABEL_16:
          v27 = v32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_1D5B858EC(0, *(v32 + 2) + 1, 1, v32);
          }

          v29 = *(v27 + 2);
          v28 = *(v27 + 3);
          if (v29 >= v28 >> 1)
          {
            v27 = sub_1D5B858EC((v28 > 1), v29 + 1, 1, v27);
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          *(v27 + 2) = v29 + 1;
          v30 = &v27[16 * v29];
          *(v30 + 4) = 0xD000000000000017;
          *(v30 + 5) = 0x80000001D73EA6F0;
          return v27;
        }

        v26 = sub_1D72646CC();

        if (v26)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return v32;
}

uint64_t FeedDescriptor.debugIdentifier.getter()
{
  v1 = [*v0 identifier];
  v2 = sub_1D726207C();

  return v2;
}

id FeedDescriptor.debugAssetHandle.getter()
{
  v0 = FCFeedDescriptor.feedTag.getter();
  v1 = [v0 identifier];
  v2 = sub_1D726207C();
  v4 = v3;

  v15 = xmmword_1D7279980;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v7[0] = v2;
  v7[1] = v4;
  v7[2] = v0;
  v8 = 0;
  v11 = 0;
  v12 = 0xE000000000000000;
  v9 = 0;
  v10 = 0;
  v13 = 0;
  v14 = MEMORY[0x1E69E7CD0];
  v5 = FeedTag.debugAssetHandle.getter();
  sub_1D5EE5B54(v7);
  return v5;
}

unint64_t sub_1D6BB6C4C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    if ((v2 - result) >= 1 && v2 < result)
    {
      __break(1u);
    }

    return a2;
  }

  return result;
}

uint64_t sub_1D6BB6C90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a5 >> 1;
  v6 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6 - result;
  if (__OFSUB__(v6, result))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 < 1)
  {
    v7 = 0;
  }

  else if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = a5 >> 1;
    if (v6 < v7)
    {
LABEL_10:
      if (v8 >= a4)
      {
        if (v5 >= a4)
        {
          if (v5 >= v8)
          {
            if ((v8 & 0x8000000000000000) == 0)
            {
              return a2;
            }

            goto LABEL_21;
          }

LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  v8 = a4 + v7;
  if (!__OFADD__(a4, v7))
  {
    goto LABEL_10;
  }

LABEL_22:
  __break(1u);
  return result;
}

void FeedItemIdentifier.init(identifier:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D5BF4D9C();
  v6 = sub_1D7263ACC();
  v7 = v6;
  v8 = v6[2];
  if (!v8)
  {
    sub_1D72639AC();
LABEL_17:

    v21 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_21;
  }

  v30 = a1;
  v10 = v6[4];
  v9 = v6[5];
  v12 = v6[6];
  v11 = v6[7];

  v13 = sub_1D72639AC();
  if (!v11)
  {
    a1 = v30;
    goto LABEL_17;
  }

  if (v12 == v15 && v11 == v16 && v10 >> 16 == v13 >> 16 && v9 >> 16 == v14 >> 16)
  {
  }

  else
  {
    v20 = sub_1D72644AC();

    if ((v20 & 1) == 0)
    {

      v21 = 0;
      v22 = 0;
      v23 = 0;
      a1 = v30;
LABEL_21:
      *a3 = a1;
      *(a3 + 8) = a2;
      *(a3 + 16) = v21;
      *(a3 + 24) = v22;
      *(a3 + 32) = v23;
      return;
    }
  }

  if (v8 <= *(v7 + 16))
  {
    v24 = (v7 + 32 * v8);
    v25 = v24[1];
    v31 = *v24;
    v27 = v24[2];
    v26 = v24[3];
    v23 = 1;
    sub_1D6BB6C90(1, v7, v7 + 32, 1, (2 * v8) | 1);
    sub_1D6BB6F80();
    sub_1D6BB6FD0();
    sub_1D61A0208();

    a1 = sub_1D726252C();
    a2 = v28;
    swift_unknownObjectRelease();
    v21 = MEMORY[0x1DA6F97E0](v31, v25, v27, v26);
    v22 = v29;

    goto LABEL_21;
  }

  __break(1u);
}

void sub_1D6BB6F80()
{
  if (!qword_1EC8930A8)
  {
    v0 = sub_1D7263AFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8930A8);
    }
  }
}

unint64_t sub_1D6BB6FD0()
{
  result = qword_1EC8930B0;
  if (!qword_1EC8930B0)
  {
    sub_1D6BB6F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8930B0);
  }

  return result;
}

void *LayeredMediaLayerProviderFactory.createLayerProvider(loader:traits:)(uint64_t a1, uint64_t a2)
{
  sub_1D5B68374(a1, v23);
  sub_1D5B68374(v2 + 16, v22);
  v4 = *(v2 + 56);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v22, v22[3]);
  v6 = MEMORY[0x1EEE9AC00](v5, v5);
  v8 = (&v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = *v8;
  v11 = type metadata accessor for LayeredMediaVariantFactory();
  v21[3] = v11;
  v21[4] = &off_1F5132ED8;
  v21[0] = v10;
  type metadata accessor for LayeredMediaLayerProvider();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v21, v11);
  v14 = MEMORY[0x1EEE9AC00](v13, v13);
  v16 = (&v21[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v16;
  v12[11] = v11;
  v12[12] = &off_1F5132ED8;
  v12[8] = v18;
  sub_1D5B63F14(v23, (v12 + 2));
  v12[7] = a2;
  v12[13] = v4;

  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v12;
}

uint64_t LayeredMediaLayerProviderFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t LayeredMediaLayerProviderFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_1D6BB72B4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_1D5B68374(a1, v15);
  sub_1D5B68374(v4 + 16, v14);
  v5 = *(v4 + 56);
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v14, v14[3]);
  v7 = MEMORY[0x1EEE9AC00](v6, v6);
  v9 = (v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9, v7);
  v11 = *v9;

  v12 = sub_1D6BB73D0(v15, a2, v11, v5);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v12;
}

void *sub_1D6BB73D0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for LayeredMediaVariantFactory();
  v18[3] = v8;
  v18[4] = &off_1F5132ED8;
  v18[0] = a3;
  type metadata accessor for LayeredMediaLayerProvider();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v18, v8);
  v11 = MEMORY[0x1EEE9AC00](v10, v10);
  v13 = (&v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = *v13;
  v9[11] = v8;
  v9[12] = &off_1F5132ED8;
  v9[8] = v15;
  sub_1D5B63F14(a1, (v9 + 2));
  v9[7] = a2;
  v9[13] = a4;
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v9;
}

uint64_t sub_1D6BB7540()
{
  v1 = sub_1D725DD0C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v0;
  v7 = *(v0 + 1);
  v14 = *(v0 + 2);
  v15 = v7;
  v8 = *(v6 + 16);
  if (v8)
  {
    v17 = MEMORY[0x1E69E7CC0];

    sub_1D7263ECC();
    v10 = (v6 + 32);
    do
    {
      v11 = *v10++;
      v16 = v11;
      FormatColor.color.getter(v9);
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      --v8;
    }

    while (v8);
  }

  else
  {
  }

  v12 = v14;
  *v5 = v15;
  v5[1] = v12;
  (*(v2 + 104))(v5, *MEMORY[0x1E69D7B68], v1);
  return sub_1D725DCCC();
}

uint64_t sub_1D6BB76E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D725DD0C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D725DD3C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6BB7540();
  v13 = sub_1D725DCDC();
  v14 = v13;
  if (!(v13 >> 62))
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_11:

LABEL_12:
    sub_1D725DD2C();
    sub_1D725DD1C();
    sub_1D725DCCC();
    return (*(v9 + 8))(v12, v8);
  }

  v15 = sub_1D7263BFC();
  if (!v15)
  {
    goto LABEL_11;
  }

LABEL_3:
  v28 = MEMORY[0x1E69E7CC0];
  result = sub_1D7263ECC();
  if ((v15 & 0x8000000000000000) == 0)
  {
    v23 = v12;
    v24 = v9;
    v25 = v7;
    v26 = v8;
    v27 = a2;
    v17 = objc_opt_self();
    v18 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1DA6FB460](v18, v14);
      }

      else
      {
        v19 = *(v14 + 8 * v18 + 32);
      }

      v20 = v19;
      ++v18;
      v21 = [v17 traitCollectionWithUserInterfaceStyle_];
      v22 = [v20 resolvedColorWithTraitCollection_];

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
    }

    while (v15 != v18);

    v8 = v26;
    v12 = v23;
    v9 = v24;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

__n128 FormatGradient.direction.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t FormatGradient.offset.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5D615EC(v2, v3);
}

BOOL _s8NewsFeed14FormatGradientV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  v15 = *(a2 + 48);
  v14 = *(a2 + 56);
  sub_1D6359350(*a1, *a2);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v9)
    {
      return 0;
    }

    v17 = sub_1D635D3A0(v2, v9);
    result = 0;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v9)
    {
      return result;
    }
  }

  if (v4 == v11 && v3 == v10 && v6 == v13 && v5 == v12)
  {
    if (v8)
    {
      if (v15)
      {
        sub_1D5D615EC(v8, v7);
        sub_1D5D615EC(v15, v14);
        sub_1D5D615EC(v8, v7);
        sub_1D633A310(v8, v15);
        if (v22)
        {
          sub_1D633A310(v7, v14);
          v24 = v23;
          sub_1D5CDE22C(v15, v14);

          sub_1D5CDE22C(v8, v7);
          return (v24 & 1) != 0;
        }

        sub_1D5CDE22C(v15, v14);

        v25 = v8;
        v26 = v7;
        goto LABEL_28;
      }

      sub_1D5D615EC(v8, v7);
      sub_1D5D615EC(0, v14);
      sub_1D5D615EC(v8, v7);
    }

    else
    {
      sub_1D5D615EC(0, v7);
      if (!v15)
      {
        sub_1D5D615EC(0, v14);
        sub_1D5CDE22C(0, v7);
        return 1;
      }

      sub_1D5D615EC(v15, v14);
    }

    sub_1D5CDE22C(v8, v7);
    v25 = v15;
    v26 = v14;
LABEL_28:
    sub_1D5CDE22C(v25, v26);
    return 0;
  }

  return result;
}

unint64_t sub_1D6BB7BCC(uint64_t a1)
{
  result = sub_1D6BB7BF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6BB7BF4()
{
  result = qword_1EC8930B8;
  if (!qword_1EC8930B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8930B8);
  }

  return result;
}

unint64_t sub_1D6BB7C48(void *a1)
{
  a1[1] = sub_1D5C4C9E8();
  a1[2] = sub_1D66F7DBC();
  result = sub_1D6BB7C80();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6BB7C80()
{
  result = qword_1EC8930C0;
  if (!qword_1EC8930C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8930C0);
  }

  return result;
}

void *sub_1D6BB7CE4(uint64_t a1, int64_t **a2)
{
  sub_1D5EA74B8(0);
  v70 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v75 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[5];
  v79 = a2[4];
  v77 = v9;
  v78 = v11;
  v12 = a2[7];
  v66 = a2[6];
  v67 = v12;
  v68 = v8;
  v13 = MEMORY[0x1E69E6F90];
  sub_1D6BB8420(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v76 = xmmword_1D7279970;
  v69 = inited;
  *(inited + 16) = xmmword_1D7279970;
  sub_1D6BB8420(0, &qword_1EC880490, sub_1D5EA74B8, v13);
  v15 = *(v4 + 72);
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v65[1] = *(v4 + 80);
  v65[2] = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = v76;
  *&v76 = v16;
  v19 = (v18 + v16);
  v20 = v8 == 0;
  if (v8)
  {
    v21 = v10;
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v77;
  }

  else
  {
    v22 = 0;
  }

  v23 = v78;
  if (v8)
  {
    v24 = v79;
  }

  else
  {
    v24 = 0;
  }

  if (!v8)
  {
    v23 = 0;
  }

  v79 = v23;
  sub_1D7124550(0x6F50207472617453, 0xEB00000000746E69, v21, v22, v8 == 0, v19);
  v25 = type metadata accessor for FormatInspectionItem(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v28 = v26 + 56;
  v27(v19, 0, 1, v25);
  v29 = v24;
  v30 = v25;
  sub_1D7124550(0x6E696F5020646E45, 0xE900000000000074, v29, v79, v20, &v19[v15]);
  v78 = v27;
  v79 = v15;
  v31 = &v19[v15];
  v32 = v68;
  v77 = v28;
  v27(v31, 0, 1, v25);
  if (v32)
  {
  }

  else
  {
    v75 = 0;
  }

  v33 = 2 * v79;
  v34 = sub_1D7124B54(0x6E6F697461636F4CLL, 0xE900000000000073, v75, &v19[2 * v79]);
  v78(&v19[v33], 0, 1, v30, v34);
  sub_1D6795150(0x746E656964617247, 0xE800000000000000, 0, 0, v18, v80);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v35 = v69;
  v69[7] = &type metadata for FormatInspectionGroup;
  v35[8] = &off_1F518B2C0;
  v36 = swift_allocObject();
  v35[4] = v36;
  *(v36 + 48) = v81;
  v37 = v80[1];
  *(v36 + 16) = v80[0];
  *(v36 + 32) = v37;
  v38 = MEMORY[0x1E69E7CC0];
  if (v32)
  {

    v39 = v32;
    v40 = v32[2];
    if (v40)
    {
      goto LABEL_17;
    }

LABEL_23:

    goto LABEL_24;
  }

  v39 = MEMORY[0x1E69E7CC0];
  v40 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v40)
  {
    goto LABEL_23;
  }

LABEL_17:
  v65[0] = v33;
  *&v84[0] = v38;
  sub_1D69972A4(0, v40, 0);
  v38 = *&v84[0];
  v74 = type metadata accessor for FormatInspectionItem.Value(0);
  v41 = *(v74 - 8);
  v42 = *(v41 + 56);
  v72 = v41 + 56;
  v73 = v42;
  v43 = 4;
  v71 = xmmword_1D72EBCC0;
  v75 = v39;
  do
  {
    v44 = *(v30 + 24);
    *&v7[v44] = v39[v43];
    v45 = v74;
    swift_storeEnumTagMultiPayload();
    v73(&v7[v44], 0, 1, v45);
    *v7 = v71;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    v46 = &v7[*(v30 + 28)];
    *v46 = 0;
    *(v46 + 1) = 0;
    v46[16] = -1;
    (v78)(v7, 0, 1, v30);
    *&v84[0] = v38;
    v48 = *(v38 + 16);
    v47 = *(v38 + 24);

    if (v48 >= v47 >> 1)
    {
      sub_1D69972A4((v47 > 1), v48 + 1, 1);
      v38 = *&v84[0];
    }

    *(v38 + 16) = v48 + 1;
    sub_1D5E4F52C(v7, v38 + v76 + v48 * v79);
    ++v43;
    --v40;
    v39 = v75;
  }

  while (v40);

  v32 = v68;
  v35 = v69;
LABEL_24:
  sub_1D6795150(0x73726F6C6F43, 0xE600000000000000, 0, 0, v38, v82);

  v35[12] = &type metadata for FormatInspectionGroup;
  v35[13] = &off_1F518B2C0;
  v49 = swift_allocObject();
  v35[9] = v49;
  *(v49 + 48) = v83;
  v50 = v82[1];
  *(v49 + 16) = v82[0];
  *(v49 + 32) = v50;
  v51 = v76;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1D7270C10;
  v53 = (v52 + v51);
  v55 = v66;
  v54 = v67;
  v56 = v78;
  if (v32 && v66)
  {

    v57 = sub_1D711B070(88, 0xE100000000000000, v55, v53);
    v56(v53, 0, 1, v30, v57);
  }

  else
  {
    v58 = sub_1D711B070(88, 0xE100000000000000, 0, v53);
    v56(v53, 0, 1, v30, v58);
    v54 = 0;
  }

  v59 = v79;
  v60 = sub_1D711B070(89, 0xE100000000000000, v54, &v53[v79]);
  v56(&v53[v59], 0, 1, v30, v60);
  sub_1D6795150(0x74657366664FLL, 0xE600000000000000, 0, 0, v52, v84);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v35[17] = &type metadata for FormatInspectionGroup;
  v35[18] = &off_1F518B2C0;
  v61 = swift_allocObject();
  v35[14] = v61;
  *(v61 + 48) = v85;
  v62 = v84[1];
  *(v61 + 16) = v84[0];
  *(v61 + 32) = v62;
  v63 = sub_1D7073500(v35);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  return v63;
}

void sub_1D6BB8420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t FeedSuggestionClusteringRequest.tagIDSorter.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t FeedSuggestionClusteringRequest.init(configuration:feedItems:feedItemScoreProfiles:feedContextByFeedID:ignoreTagIDs:tagIDSorter:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_1D6BB8500()
{
  v1 = *(v0 + 8);
  sub_1D7264A0C();
  sub_1D67E0858();
  sub_1D72621EC();

  sub_1D7264A2C();
  if (v1)
  {
    sub_1D5BE251C(v3, v1);
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D6BB8590(__int128 *a1)
{
  v3 = *(v1 + 8);
  sub_1D67E0858();
  sub_1D72621EC();

  if (!v3)
  {
    return sub_1D7264A2C();
  }

  sub_1D7264A2C();

  return sub_1D5BE251C(a1, v3);
}

uint64_t sub_1D6BB8628(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1D7264A0C();
  sub_1D67E0858();
  sub_1D72621EC();

  sub_1D7264A2C();
  if (v2)
  {
    sub_1D5BE251C(v4, v2);
  }

  return sub_1D7264A5C();
}

void *sub_1D6BB86CC(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = v3;
  v63 = a2;
  v62 = a1;
  v58 = *v3;
  v56 = sub_1D7257F9C();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v6);
  v53 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1D725815C();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v8);
  v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54B38(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v61 = &v47 - v12;
  v60 = sub_1D7257FAC();
  v13 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D7257FBC();
  v17 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D7257FDC();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v50 = sub_1D72580BC();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v23);
  v48 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v47 - v27;
  v57 = OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_styles;
  *(v4 + OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_styles) = MEMORY[0x1E69E7CC8];
  v29 = (v4 + OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_baseStyle);
  v30 = a3[5];
  v29[4] = a3[4];
  v29[5] = v30;
  v29[6] = a3[6];
  *(v29 + 105) = *(a3 + 105);
  v31 = a3[1];
  *v29 = *a3;
  v29[1] = v31;
  v32 = a3[3];
  v29[2] = a3[2];
  v29[3] = v32;
  *(v4 + OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_buildType) = 1;
  (*(v17 + 104))(v20, *MEMORY[0x1E6968748], v59);
  (*(v13 + 104))(v16, *MEMORY[0x1E6968728], v60);
  sub_1D61FFF18(a3, v64);
  sub_1D7257FCC();
  v33 = sub_1D72585BC();
  (*(*(v33 - 8) + 56))(v61, 1, 1, v33);
  sub_1D68BF2D4();
  v34 = v66;
  sub_1D72580AC();
  if (v34)
  {
    sub_1D61FFF74(a3);

    v35 = v29[5];
    v64[4] = v29[4];
    v64[5] = v35;
    *v65 = v29[6];
    *&v65[9] = *(v29 + 105);
    v36 = v29[1];
    v64[0] = *v29;
    v64[1] = v36;
    v37 = v29[3];
    v64[2] = v29[2];
    v64[3] = v37;
    sub_1D61FFF74(v64);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v38 = v49;
    v39 = v50;
    (*(v49 + 32))(v4 + OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_attributedString, v28, v50);
    v40 = OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_attributedString;
    swift_beginAccess();
    v41 = v48;
    (*(v38 + 16))(v48, v4 + v40, v39);
    v42 = v51;
    sub_1D62DDAE8(v41, v51);
    (*(v38 + 8))(v41, v39);
    v43 = v55;
    v44 = v53;
    v45 = v56;
    (*(v55 + 104))(v53, *MEMORY[0x1E69686E8], v56);
    swift_beginAccess();
    sub_1D7257F5C();
    swift_endAccess();
    sub_1D61FFF74(a3);
    (*(v43 + 8))(v44, v45);
    (*(v52 + 8))(v42, v54);
  }

  return v4;
}

char **sub_1D6BB8DF0(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = v3;
  v48 = *v4;
  v42 = sub_1D7257F9C();
  v47 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v8);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1D725815C();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v10);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1D72580BC();
  v43 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v40 - v17;
  *(v4 + OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_styles) = MEMORY[0x1E69E7CC8];
  v19 = (v4 + OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_baseStyle);
  v20 = a3[5];
  v19[4] = a3[4];
  v19[5] = v20;
  v19[6] = a3[6];
  *(v19 + 105) = *(a3 + 105);
  v21 = a3[1];
  *v19 = *a3;
  v19[1] = v21;
  v22 = a3[3];
  v19[2] = a3[2];
  v19[3] = v22;
  *(v4 + OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_buildType) = 0;
  sub_1D61FFF18(a3, v49);
  v23 = v51;
  sub_1D62DF1B0(a1, a2);
  if (v23)
  {
    sub_1D61FFF74(a3);

    v25 = v19[5];
    v49[4] = v19[4];
    v49[5] = v25;
    v50[0] = v19[6];
    *(v50 + 9) = *(v19 + 105);
    v26 = v19[1];
    v49[0] = *v19;
    v49[1] = v26;
    v27 = v19[3];
    v49[2] = v19[2];
    v49[3] = v27;
    sub_1D61FFF74(v49);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v48 = v18;
    v28 = v40;
    v51 = 0;
    v29 = v41;
    v30 = v42;
    if (v24)
    {
    }

    v31 = v14;
    sub_1D725814C();
    v32 = v48;
    sub_1D72580CC();
    v33 = v43;
    (*(v43 + 32))(v4 + OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_attributedString, v32, v28);
    v34 = v28;
    v35 = OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_attributedString;
    swift_beginAccess();
    (*(v33 + 16))(v31, v4 + v35, v34);
    sub_1D62DDAE8(v31, v29);
    (*(v33 + 8))(v31, v34);
    v36 = v29;
    v37 = v47;
    v38 = v45;
    (*(v47 + 104))(v45, *MEMORY[0x1E69686E8], v30);
    swift_beginAccess();
    sub_1D7257F5C();
    swift_endAccess();
    sub_1D61FFF74(a3);
    (*(v37 + 8))(v38, v30);
    (*(v44 + 8))(v36, v46);
  }

  return v4;
}

void sub_1D6BB92D8(uint64_t a1)
{
  v196 = a1;
  v186 = sub_1D72585BC();
  v200 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186, v2);
  v185 = &v173 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v184 = &v173 - v6;
  v191 = sub_1D725815C();
  v197 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191, v7);
  v202 = &v173 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v194 = &v173 - v11;
  v208 = sub_1D7257F3C();
  MEMORY[0x1EEE9AC00](v208, v12);
  v207 = &v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_1D725823C();
  v218 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206, v14);
  v205 = &v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D681334C(0);
  v210 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v183 = &v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v209 = &v173 - v21;
  sub_1D5B54B38(0, qword_1EDF1F308, type metadata accessor for FormatAttributedStringAttachment);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v188 = &v173 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v190 = (&v173 - v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  v195 = &v173 - v30;
  sub_1D68BF278(0);
  v224 = v31;
  v193 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v189 = &v173 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v228 = &v173 - v36;
  v223 = sub_1D725804C();
  v219 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223, v37);
  v222 = &v173 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_1D725802C();
  v192 = *(v252 - 1);
  MEMORY[0x1EEE9AC00](v252, v39);
  v227 = &v173 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v220 = &v173 - v43;
  v221 = sub_1D725805C();
  v226 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221, v44);
  v46 = &v173 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1D72580BC();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v49);
  v51 = &v173 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v187 = &v173 - v54;
  v57 = MEMORY[0x1EEE9AC00](v55, v56);
  v59 = &v173 - v58;
  sub_1D6813428(0, v57);
  v61 = v60;
  MEMORY[0x1EEE9AC00](v60, v62);
  if (v1[OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_buildType] != 1)
  {
    sub_1D5B5A498(0, &qword_1EDF3C730, 0x1E696AAB0);
    v155 = OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_attributedString;
    swift_beginAccess();
    (*(v48 + 16))(v51, &v1[v155], v47);
    swift_getKeyPath();
    sub_1D7257EDC();
    sub_1D6BBC0D4(&qword_1EDF3C418, MEMORY[0x1E69DBE88], MEMORY[0x1E69DBE80]);
LABEL_50:
    sub_1D72630FC();
    return;
  }

  v64 = OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_attributedString;
  v212 = v1;
  v65 = &v173 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v66 = *(v48 + 16);
  v211 = v64;
  v181 = v66;
  v182 = v48 + 16;
  v66(v59, &v1[v64], v47);
  sub_1D725807C();
  v67 = *(v48 + 8);
  v201 = v59;
  v203 = v47;
  v198 = v67;
  v199 = v48 + 8;
  v67(v59, v47);
  v68 = v226;
  v69 = v221;
  (*(v226 + 2))(v65, v46, v221);
  v70 = *(v61 + 36);
  v71 = sub_1D6BBC0D4(&qword_1EDF3C410, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
  sub_1D7262BFC();
  (*(v68 + 1))(v46, v69);
  v177 = (v196 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
  v226 = &v212[OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_baseStyle];
  v216 = (v192 + 2);
  v215 = (v192 + 4);
  v204 = (v218 + 1);
  v217 = (v193 + 1);
  v218 = (v192 + 1);
  ++v219;
  v180 = (v197 + 16);
  v192 = (v197 + 8);
  v193 += 2;
  v174 = (v200 + 16);
  v175 = (v200 + 8);
  v176 = (v200 + 32);
  v197 = MEMORY[0x1E69E7CC8];
  v72 = v227;
  v200 = v71;
  v225 = v65;
  v214 = v70;
  while (1)
  {
    v74 = v222;
    sub_1D7262C5C();
    sub_1D6BBC0D4(&qword_1EDF18AD8, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
    v75 = v223;
    v76 = sub_1D7261FBC();
    (*v219)(v74, v75);
    if (v76)
    {
      break;
    }

    v77 = sub_1D7262D0C();
    v78 = v220;
    v79 = v252;
    (*v216)(v220);
    v77(&v239, 0);
    sub_1D7262C6C();
    (*v215)(v72, v78, v79);
    swift_getKeyPath();
    sub_1D68BF2D4();
    sub_1D725800C();

    swift_getKeyPath();
    sub_1D6BBC11C();
    v80 = v224;
    sub_1D72582FC();

    v81 = v239;
    if (v239 == 18)
    {
      v82 = *(*(v226 + 13) + 288);
      if (!v82)
      {
        v72 = v227;
        v65 = v225;
LABEL_4:
        v73 = v252;
        goto LABEL_5;
      }

      v72 = v227;
      v65 = v225;
      v73 = v252;
      if (*(v82 + 16))
      {
        v83 = *(v226 + 5);
        v250[6] = *(v226 + 4);
        v250[7] = v83;
        v251[0] = *(v226 + 6);
        *(v251 + 9) = *(v226 + 105);
        v84 = *(v226 + 1);
        v250[2] = *v226;
        v250[3] = v84;
        v85 = *(v226 + 3);
        v250[4] = *(v226 + 2);
        v250[5] = v85;
        v86 = v209;
        sub_1D725801C();
        swift_beginAccess();
        sub_1D6BBC0D4(&qword_1EDF046C0, sub_1D681334C, MEMORY[0x1E69E66D8]);
        v87 = v205;
        sub_1D72580FC();
        swift_endAccess();
        sub_1D6BBC170(v86, sub_1D681334C);
        sub_1D725820C();
        (*v204)(v87, v206);
        sub_1D6BBC0D4(&qword_1EC885818, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
        v88 = sub_1D726234C();
        v89 = v213;
        sub_1D62DF1B0(v88, v90);
        if (v89)
        {

          (*v217)(v228, v80);
          sub_1D6BBC170(v65, sub_1D6813428);

          (*v218)(v227, v252);
          return;
        }

        v92 = v91;
        v213 = 0;

        if (v92)
        {
          v93 = v209;
          v94 = v227;
          sub_1D725801C();
          sub_1D7257FFC();
          v95 = v201;
          v72 = v94;
          sub_1D72580CC();
          swift_beginAccess();
          sub_1D6BBC0D4(&qword_1EC8930D0, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
          v96 = v203;
          sub_1D7257F6C();
          swift_endAccess();
          v97 = v95;
          v65 = v225;
          v198(v97, v96);
          sub_1D6BBC170(v93, sub_1D681334C);
          goto LABEL_4;
        }

        v73 = v252;
        v72 = v227;
      }

LABEL_5:
      (*v217)(v228, v80);
      (*v218)(v72, v73);
    }

    else
    {
      swift_getKeyPath();
      sub_1D6BBC1D0();
      v98 = v228;
      sub_1D72582FC();

      v99 = v213;
      sub_1D6BBB284(v81, v246, v247);
      v100 = v80;
      v101 = v201;
      if (v99)
      {

        (*v217)(v98, v100);
        sub_1D6BBC170(v225, sub_1D6813428);

        (*v218)(v227, v252);
        return;
      }

      v243 = v247[4];
      v244 = v247[5];
      v245[0] = v248[0];
      *(v245 + 9) = *(v248 + 9);
      v239 = v247[0];
      v240 = v247[1];
      v241 = v247[2];
      v242 = v247[3];

      v102 = v189;
      (*v193)(v189, v98, v100);

      v103 = v195;
      sub_1D68BEB64(v102, v195);
      v104 = v103;
      v105 = v190;
      sub_1D6BBC224(v104, v190);
      v106 = type metadata accessor for FormatAttributedStringAttachment(0);
      v107 = *(v106 - 8);
      v108 = *(v107 + 48);
      KeyPath = v107 + 48;
      v179 = v108;
      v109 = v108(v105, 1, v106);
      v110 = v203;
      v65 = v225;
      if (v109 != 1)
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          v213 = 0;
          v112 = *v105;
          v113 = v209;
          v114 = v227;
          if (EnumCaseMultiPayload == 1)
          {
            sub_1D725801C();
            swift_beginAccess();
            sub_1D6BBC0D4(&qword_1EDF046C0, sub_1D681334C, MEMORY[0x1E69E66D8]);
            v115 = v205;
            sub_1D72580FC();
            swift_endAccess();
            sub_1D6BBC170(v113, sub_1D681334C);
            sub_1D725820C();
            (*v204)(v115, v206);
            sub_1D6BBC0D4(&qword_1EC885818, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
            v116 = sub_1D726234C();
            v118 = v117;
            v119 = sub_1D62DEAEC(v112);
          }

          else
          {
            sub_1D725801C();
            swift_beginAccess();
            sub_1D6BBC0D4(&qword_1EDF046C0, sub_1D681334C, MEMORY[0x1E69E66D8]);
            v133 = v205;
            sub_1D72580FC();
            swift_endAccess();
            sub_1D6BBC170(v113, sub_1D681334C);
            sub_1D725820C();
            (*v204)(v133, v206);
            sub_1D6BBC0D4(&qword_1EC885818, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
            v116 = sub_1D726234C();
            v118 = v134;
            v119 = sub_1D62DEF44(v112);
          }

          v135 = v119;
          v136 = v197;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v232 = v136;
          sub_1D6D779A0(v135, v116, v118, isUniquelyReferenced_nonNull_native);

          v72 = v114;

          sub_1D61FFF74(v247);
          v197 = v232;
          sub_1D6BBC2AC(v195);
          (*v217)(v228, v224);
          v138 = v252;
          goto LABEL_34;
        }

        sub_1D6BBC170(v105, type metadata accessor for FormatAttributedStringAttachment);
      }

      v173 = v106;
      v120 = v212;
      v181(v101, &v212[v211], v110);
      sub_1D62DDAE8(v101, v194);
      v121 = (v198)(v101, v110);
      MEMORY[0x1EEE9AC00](v121, v122);
      v123 = v227;
      *(&v173 - 2) = v120;
      *(&v173 - 1) = v123;
      v236 = v243;
      v237 = v244;
      v238[0] = v245[0];
      *(v238 + 9) = *(v245 + 9);
      v232 = v239;
      v233 = v240;
      v234 = v241;
      v235 = v242;
      nullsub_1();
      v249[4] = v236;
      v249[5] = v237;
      v250[0] = v238[0];
      *(v250 + 9) = *(v238 + 9);
      v249[0] = v232;
      v249[1] = v233;
      v249[2] = v234;
      v249[3] = v235;
      sub_1D61FFF18(v247, v231);
      sub_1D6BBAFDC(sub_1D6BBC2A4, (&v173 - 4), v249);
      v125 = v124;
      v213 = 0;
      sub_1D61FFF74(v247);
      v126 = v209;
      sub_1D725801C();
      if (v125)
      {
        (*v180)(v202, v194, v191);
        sub_1D72580CC();
        swift_beginAccess();
        sub_1D6BBC0D4(&qword_1EDF046C0, sub_1D681334C, MEMORY[0x1E69E66D8]);
        sub_1D6BBC0D4(&qword_1EC8930D0, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
        v127 = v203;
        sub_1D7257F6C();
        swift_endAccess();
        v198(v101, v127);
      }

      else
      {
        swift_beginAccess();
        sub_1D6BBC0D4(&qword_1EDF046C0, sub_1D681334C, MEMORY[0x1E69E66D8]);
        v128 = sub_1D72580EC();
        sub_1D725822C();
        v128(v231, 0);
        swift_endAccess();
      }

      sub_1D6BBC170(v126, sub_1D681334C);
      v129 = v195;
      v130 = v188;
      sub_1D6BBC224(v195, v188);
      v131 = v179(v130, 1, v173);
      v132 = v224;
      if (v131 == 1)
      {
        sub_1D61FFF74(v247);
        (*v192)(v194, v191);
        sub_1D6BBC2AC(v129);
        (*v217)(v228, v132);
        sub_1D6BBC2AC(v130);
        v72 = v227;
      }

      else if (swift_getEnumCaseMultiPayload())
      {
        sub_1D61FFF74(v247);
        (*v192)(v194, v191);
        sub_1D6BBC2AC(v195);
        (*v217)(v228, v132);
        sub_1D6BBC170(v130, type metadata accessor for FormatAttributedStringAttachment);
        v72 = v227;
      }

      else
      {
        v139 = v184;
        v140 = v186;
        (*v176)();
        sub_1D725801C();
        KeyPath = swift_getKeyPath();
        v179 = swift_getKeyPath();
        v141 = v177[2];
        if (v141)
        {
          v142 = v177[3];
          v143 = v177[4];
          v144 = v177[1];

          sub_1D69F65B4(v139, v144, v141, v142, v143, v185);
        }

        else
        {
          (*v174)(v185, v139, v140);
        }

        v145 = type metadata accessor for FormatAttributedStringLink();
        v146 = objc_allocWithZone(v145);
        v147 = sub_1D725843C();
        v149 = v148;
        v150 = sub_1D725865C();
        sub_1D5B952F8(v147, v149);
        v230.receiver = v146;
        v230.super_class = v145;
        v151 = objc_msgSendSuper2(&v230, sel_initWithData_ofType_, v150, 0);

        v152 = *v175;
        (*v175)(v185, v140);
        v229[7] = v151;
        swift_beginAccess();
        sub_1D6BBC0D4(&qword_1EDF046C0, sub_1D681334C, MEMORY[0x1E69E66D8]);
        v153 = v183;
        v173 = sub_1D72580EC();
        sub_1D7257EDC();
        sub_1D6BBC0D4(&qword_1EDF3C418, MEMORY[0x1E69DBE88], MEMORY[0x1E69DBE80]);
        v154 = sub_1D725821C();
        sub_1D62DE3AC(0);
        sub_1D6BBC324();
        sub_1D725830C();
        v154(v229, 0);
        v173(v231, 0);
        swift_endAccess();

        sub_1D61FFF74(v247);
        sub_1D6BBC170(v153, sub_1D681334C);
        v152(v184, v186);
        (*v192)(v194, v191);
        sub_1D6BBC2AC(v195);
        (*v217)(v228, v224);
        v72 = v227;
        v65 = v225;
      }

      v138 = v252;
LABEL_34:
      (*v218)(v72, v138);
    }
  }

  sub_1D6BBC170(v65, sub_1D6813428);
  v156 = v197;
  if (!*(v197 + 16))
  {

    sub_1D5B5A498(0, &qword_1EDF3C730, 0x1E696AAB0);
    v181(v187, &v212[v211], v203);
    swift_getKeyPath();
    sub_1D7257EDC();
    sub_1D6BBC0D4(&qword_1EDF3C418, MEMORY[0x1E69DBE88], MEMORY[0x1E69DBE80]);
    goto LABEL_50;
  }

  sub_1D5B5A498(0, &qword_1EDF1A7E0, 0x1E696AD40);
  v181(v201, &v212[v211], v203);
  v157 = sub_1D726310C();
  v158 = v157;
  v159 = 0;
  v160 = v156 + 64;
  v161 = 1 << *(v156 + 32);
  v162 = -1;
  if (v161 < 64)
  {
    v162 = ~(-1 << v161);
  }

  v163 = v162 & *(v156 + 64);
  v164 = (v161 + 63) >> 6;
  v228 = v157;
  while (v163)
  {
LABEL_46:
    v166 = *(*(v156 + 56) + 8 * (__clz(__rbit64(v163)) | (v159 << 6)));

    v252 = v166;
    v167 = [v158 mutableString];
    v168 = sub_1D726203C();

    v169 = [v167 rangeOfString_];
    v171 = v170;

    v158 = v228;
    v172 = v252;
    if (v169 != sub_1D725773C())
    {
      [v158 replaceCharactersInRange:v169 withAttributedString:{v171, v172}];
    }

    v163 &= v163 - 1;

    v156 = v197;
  }

  while (1)
  {
    v165 = v159 + 1;
    if (__OFADD__(v159, 1))
    {
      break;
    }

    if (v165 >= v164)
    {

      return;
    }

    v163 = *(v160 + 8 * v165);
    ++v159;
    if (v163)
    {
      v159 = v165;
      goto LABEL_46;
    }
  }

  __break(1u);
}

uint64_t sub_1D6BBAFDC(uint64_t (*a1)(uint64_t), uint64_t a2, _OWORD *a3)
{
  v5 = v4;
  v8 = a3[5];
  v53 = a3[4];
  v54 = v8;
  v55[0] = a3[6];
  *(v55 + 9) = *(a3 + 105);
  v9 = a3[1];
  v49 = *a3;
  v50 = v9;
  v10 = a3[3];
  v51 = a3[2];
  v52 = v10;
  v11 = (v3 + OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_baseStyle);
  v12 = *(*(v3 + OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_baseStyle + 104) + 288);
  if (v12 && *(v12 + 16))
  {
    v13 = v11[5];
    v47[6] = v11[4];
    v47[7] = v13;
    v48[0] = v11[6];
    *(v48 + 9) = *(v11 + 105);
    v14 = v11[1];
    v47[2] = *v11;
    v47[3] = v14;
    v15 = v11[3];
    v47[4] = v11[2];
    v47[5] = v15;
    v16 = (a1)();
    v18 = v17;
    v19 = sub_1D62DF1B0(v16, v17);
    if (v4)
    {

      return v18;
    }

    v28 = v19;
    v21 = v20;

    if (v21)
    {
      v18 = v28;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    v21 = 0;
  }

  v22 = a3[5];
  v44 = a3[4];
  v45 = v22;
  v46[0] = a3[6];
  *(v46 + 9) = *(a3 + 105);
  v23 = a3[1];
  v40 = *a3;
  v41 = v23;
  v24 = a3[3];
  v42 = a3[2];
  v43 = v24;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v40) != 1)
  {
    *(v47 + 9) = *(v46 + 9);
    v46[7] = v45;
    v47[0] = v46[0];
    v46[2] = v40;
    v46[3] = v41;
    v46[4] = v42;
    v46[5] = v43;
    v46[6] = v44;
    v25 = *(*(&v46[0] + 1) + 288);
    if (v25)
    {
      if (*(v25 + 16))
      {
        v38[4] = v53;
        v38[5] = v54;
        v39[0] = v55[0];
        *(v39 + 9) = *(v55 + 9);
        v38[0] = v49;
        v38[1] = v50;
        v38[2] = v51;
        v38[3] = v52;
        if (v21)
        {
          sub_1D61FFF18(v38, v37);
          v26 = v18;
          v27 = v21;
        }

        else
        {
          v29 = sub_1D61FFF18(v38, v37);
          v26 = a1(v29);
          v27 = v30;
        }

        v31 = sub_1D62DF1B0(v26, v27);
        if (v5)
        {

          sub_1D6BBC378(a3);
        }

        else
        {
          v33 = v31;
          v34 = a3;
          v35 = v32;
          sub_1D6BBC378(v34);

          if (v35)
          {

            return v33;
          }
        }
      }
    }
  }

  return v18;
}

double sub_1D6BBB284@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_styles;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = *(v8 + 16);

  v65 = a1;
  if (v9)
  {
    v10 = sub_1D6D62A1C(a1, a2);
    if (v11)
    {
      v12 = (*(v8 + 56) + (v10 << 7));
      v14 = v12[2];
      v13 = v12[3];
      v15 = v12[1];
      *v67 = *v12;
      *&v67[16] = v15;
      *v68 = v14;
      *&v68[16] = v13;
      v16 = v12[4];
      v17 = v12[5];
      v18 = v12[6];
      *&v71[9] = *(v12 + 105);
      v70 = v17;
      *v71 = v18;
      v69 = v16;
      swift_endAccess();
      v62 = v71[24];
      v61 = *(&v70 + 1);
      v19 = v71[0];
      v20 = v70;
      v59 = v69;
      v60 = *&v71[8];
      v21 = v68[24];
      v22 = v4;
      v23 = v7;
      v24 = v68[0];
      v57 = *&v67[8];
      v58 = *&v68[8];
      v25 = *&v67[24];
      v26 = a2;
      v27 = *v67;
      sub_1D61FFF18(v67, v66);
      v28 = v27;
      a2 = v26;
      v30 = v57;
      v29 = v58;
      v31 = v25;
      v32 = v24;
      v7 = v23;
      v4 = v22;
      v34 = v59;
      v33 = v60;
      v35 = v61;
      v36 = v62;
LABEL_4:
      *&v67[8] = v30;
      *v67 = v28;
      *&v67[24] = v31;
      v68[0] = v32;
      *&v68[8] = v29;
      v68[24] = v21;
      v69 = v34;
      LOBYTE(v70) = v20;
      *(&v70 + 1) = v35;
      v71[0] = v19;
      *&v71[8] = v33;
      v71[24] = v36;
      v84[4] = v34;
      v84[5] = v70;
      v85[0] = *v71;
      *(v85 + 9) = *&v71[9];
      v84[0] = *v67;
      v84[1] = *&v67[16];
      v84[2] = *v68;
      v84[3] = *&v68[16];
      swift_beginAccess();
      sub_1D61FFF18(v67, v66);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66[0] = *(v4 + v7);
      *(v4 + v7) = 0x8000000000000000;
      sub_1D6D777FC(v84, v65, a2, isUniquelyReferenced_nonNull_native);

      *(v4 + v7) = v66[0];
      swift_endAccess();
      v38 = v70;
      a3[4] = v69;
      a3[5] = v38;
      a3[6] = *v71;
      *(a3 + 105) = *&v71[9];
      v39 = *&v67[16];
      *a3 = *v67;
      a3[1] = v39;
      result = *v68;
      v41 = *&v68[16];
      a3[2] = *v68;
      a3[3] = v41;
      return result;
    }
  }

  swift_endAccess();
  v63 = *(v4 + OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_baseStyle);
  v42 = *(v4 + OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_baseStyle + 104);
  if (a2)
  {
    v43 = a2;
  }

  else
  {
    v43 = MEMORY[0x1E69E7CD0];
  }

  sub_1D5B5D53C(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = sub_1D67E16AC();
  *(inited + 40) = v45;

  v46 = sub_1D5BA8750(inited, v43);
  swift_setDeallocating();
  sub_1D5BFB68C(inited + 32);
  v47 = sub_1D6B0ACE8(v46, 0);

  v48 = (*(v47 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v50 = *v48;
  v49 = v48[1];

  sub_1D6FBAAA4(v51, v47, v50, v49);
  v53 = v52;

  if (!v86)
  {
    v54 = v42;
    if (v53)
    {

      v54 = v53;
    }

    v55 = dword_1D7332770[v65];

    v56 = sub_1D62DD8C8(v63, v55, v42, v54, v47);

    sub_1D62DF2F4(v56, v54, v47, v65, &v72);
    v86 = 0;
    v36 = v83;
    v33 = v82;
    v35 = v80;
    v19 = v81;
    v20 = v79;
    v34 = v78;
    v21 = v77;
    v29 = v76;
    v32 = v75;
    v30 = v73;
    v31 = v74;
    v28 = v72;
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_1D6BBB714(uint64_t a1)
{
  v1 = sub_1D7257F3C();
  MEMORY[0x1EEE9AC00](v1, v2);
  v3 = sub_1D725823C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D681334C(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725801C();
  swift_beginAccess();
  sub_1D6BBC0D4(&qword_1EDF046C0, sub_1D681334C, MEMORY[0x1E69E66D8]);
  sub_1D72580FC();
  swift_endAccess();
  sub_1D6BBC170(v11, sub_1D681334C);
  sub_1D725820C();
  (*(v4 + 8))(v7, v3);
  sub_1D6BBC0D4(&qword_1EC885818, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
  return sub_1D726234C();
}

uint64_t sub_1D6BBB96C()
{
  v1 = OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_attributedString;
  v2 = sub_1D72580BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_baseStyle + 80);
  v7[4] = *(v0 + OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_baseStyle + 64);
  v7[5] = v3;
  v8[0] = *(v0 + OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_baseStyle + 96);
  *(v8 + 9) = *(v0 + OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_baseStyle + 105);
  v4 = *(v0 + OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_baseStyle + 16);
  v7[0] = *(v0 + OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_baseStyle);
  v7[1] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_baseStyle + 48);
  v7[2] = *(v0 + OBJC_IVAR____TtC8NewsFeed22FormatAttributedString_baseStyle + 32);
  v7[3] = v5;
  sub_1D61FFF74(v7);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FormatAttributedString(uint64_t a1)
{
  result = qword_1EDF28A90;
  if (!qword_1EDF28A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6BBBAA4(uint64_t a1)
{
  result = sub_1D72580BC();
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

unint64_t sub_1D6BBBB78()
{
  result = qword_1EDF0DB68;
  if (!qword_1EDF0DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DB68);
  }

  return result;
}

unint64_t sub_1D6BBBBD0()
{
  result = qword_1EC8930C8;
  if (!qword_1EC8930C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8930C8);
  }

  return result;
}

uint64_t sub_1D6BBBC24(unsigned __int8 a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = 1684828002;
  v6 = 0xE400000000000000;
  v9 = a1;
  v10 = 1684828002;
  switch(v9)
  {
    case 1:
      v6 = 0xE600000000000000;
      v10 = 0x63696C617469;
      break;
    case 2:
      v10 = 0x6E696C7265646E75;
      v6 = 0xE900000000000065;
      break;
    case 3:
      v10 = 0x6874656B69727473;
      v6 = 0xED00006867756F72;
      break;
    case 4:
      v10 = 0x7069726373627573;
      v6 = 0xE900000000000074;
      break;
    case 5:
      v10 = 0x7263737265707573;
      v6 = 0xEB00000000747069;
      break;
    case 6:
      v10 = 1701080931;
      break;
    case 7:
      v10 = 1802398060;
      break;
    case 8:
      v6 = 0xE800000000000000;
      v10 = 0x31676E6964616568;
      break;
    case 9:
      v6 = 0xE800000000000000;
      v10 = 0x32676E6964616568;
      break;
    case 10:
      v6 = 0xE800000000000000;
      v10 = 0x33676E6964616568;
      break;
    case 11:
      v6 = 0xE800000000000000;
      v10 = 0x34676E6964616568;
      break;
    case 12:
      v6 = 0xE800000000000000;
      v10 = 0x35676E6964616568;
      break;
    case 13:
      v6 = 0xE800000000000000;
      v10 = 0x36676E6964616568;
      break;
    case 14:
      v10 = 0x7061726761726170;
      v6 = 0xE900000000000068;
      break;
    case 15:
      v10 = 1851879539;
      break;
    case 16:
      v6 = 0xE300000000000000;
      v10 = 6648432;
      break;
    case 17:
      v6 = 0xE500000000000000;
      v10 = 0x6567616D69;
      break;
    default:
      break;
  }

  v11 = 0xE400000000000000;
  switch(a3)
  {
    case 1:
      v11 = 0xE600000000000000;
      if (v10 == 0x63696C617469)
      {
        goto LABEL_52;
      }

      goto LABEL_55;
    case 2:
      v11 = 0xE900000000000065;
      if (v10 != 0x6E696C7265646E75)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    case 3:
      v11 = 0xED00006867756F72;
      if (v10 != 0x6874656B69727473)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    case 4:
      v11 = 0xE900000000000074;
      if (v10 != 0x7069726373627573)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    case 5:
      v11 = 0xEB00000000747069;
      if (v10 != 0x7263737265707573)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    case 6:
      if (v10 != 1701080931)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    case 7:
      if (v10 != 1802398060)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    case 8:
      v11 = 0xE800000000000000;
      if (v10 != 0x31676E6964616568)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    case 9:
      v11 = 0xE800000000000000;
      if (v10 != 0x32676E6964616568)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    case 10:
      v11 = 0xE800000000000000;
      v5 = 0x33676E6964616568;
      goto LABEL_51;
    case 11:
      v11 = 0xE800000000000000;
      if (v10 != 0x34676E6964616568)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    case 12:
      v11 = 0xE800000000000000;
      if (v10 != 0x35676E6964616568)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    case 13:
      v11 = 0xE800000000000000;
      if (v10 != 0x36676E6964616568)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    case 14:
      v11 = 0xE900000000000068;
      if (v10 != 0x7061726761726170)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    case 15:
      if (v10 != 1851879539)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    case 16:
      v11 = 0xE300000000000000;
      if (v10 != 6648432)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    case 17:
      v11 = 0xE500000000000000;
      if (v10 != 0x6567616D69)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    default:
LABEL_51:
      if (v10 != v5)
      {
        goto LABEL_55;
      }

LABEL_52:
      if (v6 == v11)
      {
      }

      else
      {
LABEL_55:
        v12 = sub_1D72646CC();

        result = 0;
        if ((v12 & 1) == 0)
        {
          return result;
        }
      }

      if (a2)
      {
        if (a4)
        {

          v14 = sub_1D5BFC390(a2, a4);

          if (v14)
          {
            return 1;
          }
        }
      }

      else if (!a4)
      {
        return 1;
      }

      return 0;
  }
}

uint64_t sub_1D6BBC0D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D6BBC11C()
{
  result = qword_1EDF0F228;
  if (!qword_1EDF0F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F228);
  }

  return result;
}

uint64_t sub_1D6BBC170(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D6BBC1D0()
{
  result = qword_1EDF0F1E8;
  if (!qword_1EDF0F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F1E8);
  }

  return result;
}

uint64_t sub_1D6BBC224(uint64_t a1, uint64_t a2)
{
  sub_1D5B54B38(0, qword_1EDF1F308, type metadata accessor for FormatAttributedStringAttachment);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6BBC2AC(uint64_t a1)
{
  sub_1D5B54B38(0, qword_1EDF1F308, type metadata accessor for FormatAttributedStringAttachment);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6BBC324()
{
  result = qword_1EC8930D8;
  if (!qword_1EC8930D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8930D8);
  }

  return result;
}

uint64_t sub_1D6BBC378(uint64_t a1)
{
  sub_1D5B5D53C(0, &qword_1EDF0B098, &type metadata for FormatAttributedStringStyle, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D6BBC3F8()
{
  sub_1D5B5C108(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_titleLabel);
  v6 = sub_1D725BD1C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_1D6BBD35C(v4);
  sub_1D5F40BCC(v4);
  [v5 setAttributedText_];

  v8 = OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_changeSet;
  swift_beginAccess();
  *(v0 + v8) = MEMORY[0x1E69E7CC0];

  return [*(v0 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_tableView) reloadData];
}

id sub_1D6BBC554(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_titleLabel);
  if (a1 >> 62)
  {
    sub_1D7263BFC();
  }

  v7 = sub_1D6BBD35C(a3);
  [v6 setAttributedText_];

  v8 = OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_changeSet;
  swift_beginAccess();
  *(v3 + v8) = a1;

  v9 = *(v3 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_tableView);
  [v9 setContentOffset_];
  [v9 setScrollEnabled_];
  [v9 setScrollEnabled_];
  return [v9 reloadData];
}

char *sub_1D6BBC660(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1D5B5C108(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v41 - v7;
  v1[OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_isLoading] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_activityIndicatorView;
  *&v2[v9] = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v10 = OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_titleLabel;
  sub_1D725D04C();
  *&v2[v10] = sub_1D725D01C();
  v11 = OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_tableView;
  *&v2[v11] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_changeSet] = MEMORY[0x1E69E7CC0];
  v2[OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_source] = a1 & 1;
  v41.receiver = v2;
  v41.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v41, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v13 = OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_tableView;
  v14 = *&v12[OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_tableView];
  v15 = v12;
  [v15 addSubview_];
  v16 = OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_titleLabel;
  [v15 addSubview_];
  [v15 addSubview_];
  v17 = *&v15[v16];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 systemFillColor];
  [v19 setBackgroundColor_];

  [*&v15[v16] setTextAlignment_];
  [*&v15[v16] setNumberOfLines_];
  v21 = *&v15[v16];
  v22 = sub_1D725BD1C();
  (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  v23 = v21;
  v24 = sub_1D6BBD35C(v8);
  sub_1D5F40BCC(v8);
  [v23 setAttributedText_];

  v25 = *&v15[v16];
  v26 = sub_1D725D03C();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v27 = *&v12[v13];
  type metadata accessor for DebugFormatUploadDiffTableViewCell();
  v28 = v27;
  sub_1D7262DAC();

  [*&v12[v13] setDelegate_];
  v29 = *&v12[v13];
  [v29 setDataSource_];

  v30 = *&v12[v13];
  v31 = [v18 secondarySystemBackgroundColor];
  [v30 setBackgroundColor_];

  [*&v12[v13] setSeparatorStyle_];
  [*&v12[v13] setRowHeight_];
  v32 = *&v12[v13];
  v33 = objc_opt_self();
  v34 = *MEMORY[0x1E69DB978];
  v35 = v32;
  v36 = [v33 monospacedDigitSystemFontOfSize:12.0 weight:v34];
  [v36 lineHeight];
  v38 = v37;

  [v35 setEstimatedRowHeight_];
  v39 = *&v12[v13];
  [v39 _setHiddenPocketEdges_];

  return v15;
}

void sub_1D6BBCB4C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *&v2[OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_titleLabel];
      sub_1D5F5D2C0(v2, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_1D6BBCC18()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_titleLabel];
  [v0 safeAreaInsets];
  v3 = v2;
  [v0 bounds];
  [v1 setFrame_];
  v4 = *&v0[OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_tableView];
  [v0 safeAreaInsets];
  v6 = v5;
  [v1 bounds];
  v7 = v6 + CGRectGetHeight(v16);
  [v0 bounds];
  Width = CGRectGetWidth(v17);
  [v0 bounds];
  Height = CGRectGetHeight(v18);
  [v0 safeAreaInsets];
  v11 = Height - v10;
  [v1 bounds];
  [v4 setFrame_];
  v12 = *&v0[OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_activityIndicatorView];
  [v0 bounds];
  return [v12 setFrame_];
}

void sub_1D6BBD004(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for DebugFormatUploadDiffTableViewCell();
  v4 = sub_1D7262D8C();
  v5 = sub_1D7258DAC();
  v6 = OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_changeSet;
  v7 = swift_beginAccess();
  v8 = *(v3 + v6);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1DA6FB460](v5);
  }

  else
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_12;
    }

    if (v5 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_14;
    }

    v9 = *(v8 + 8 * v5 + 32);
  }

  swift_endAccess();
  v3 = *(v9 + 16);

  v7 = sub_1D7258D9C();
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v10 = MEMORY[0x1DA6FB460](v7, v3);
    goto LABEL_9;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v3 + 8 * v7 + 32);
LABEL_9:
    v11 = v10;

    [*&v4[OBJC_IVAR____TtC8NewsFeed34DebugFormatUploadDiffTableViewCell_label] setAttributedText_];
    v12 = objc_opt_self();
    v13 = v4;
    v14 = [v12 systemBackgroundColor];
    [v13 setBackgroundColor_];

    return;
  }

LABEL_15:
  __break(1u);
}

id sub_1D6BBD35C(uint64_t a1)
{
  sub_1D5B5C108(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v33 - v4;
  sub_1D726213C();

  sub_1D5B5C108(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  v40 = v6;
  inited = swift_initStackObject();
  v39 = xmmword_1D7270C10;
  *(inited + 16) = xmmword_1D7270C10;
  v8 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v9 = objc_opt_self();
  v10 = *MEMORY[0x1E69DB958];
  v37 = v8;
  v38 = v9;
  v11 = [v9 systemFontOfSize:11.0 weight:v10];
  v12 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  *(inited + 40) = v11;
  v13 = *MEMORY[0x1E69DB650];
  v36 = v12;
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = objc_opt_self();
  v34 = v13;
  v35 = v14;
  v15 = [v14 systemGray2Color];
  v33 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(inited + 104) = v33;
  *(inited + 80) = v15;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4(0);
  swift_arrayDestroy();
  v16 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v17 = sub_1D726203C();

  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v18 = sub_1D7261D2C();

  v19 = [v16 initWithString:v17 attributes:v18];

  v41 = 10;
  v42 = 0xE100000000000000;
  sub_1D5D3A874(a1, v5);
  v20 = sub_1D725BD1C();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v5, 1, v20) == 1)
  {
    sub_1D5F40BCC(v5);
    v22 = 0xE300000000000000;
    v23 = 2960685;
  }

  else
  {
    v23 = sub_1D725BC9C();
    v22 = v24;
    (*(v21 + 8))(v5, v20);
  }

  MEMORY[0x1DA6F9910](v23, v22);

  v25 = swift_initStackObject();
  *(v25 + 16) = v39;
  *(v25 + 32) = v37;
  *(v25 + 40) = [v38 systemFontOfSize:11.0 weight:*MEMORY[0x1E69DB980]];
  v26 = v34;
  *(v25 + 64) = v36;
  *(v25 + 72) = v26;
  v27 = [v35 systemGray2Color];
  *(v25 + 104) = v33;
  *(v25 + 80) = v27;
  sub_1D5C09CEC(v25);
  swift_setDeallocating();
  swift_arrayDestroy();
  v28 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v29 = sub_1D726203C();

  v30 = sub_1D7261D2C();

  v31 = [v28 initWithString:v29 attributes:v30];

  [v19 appendAttributedString_];
  return v19;
}

void sub_1D6BBD8BC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_isLoading) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_activityIndicatorView;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v3 = OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_titleLabel;
  sub_1D725D04C();
  *(v1 + v3) = sub_1D725D01C();
  v4 = OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_tableView;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_changeSet) = MEMORY[0x1E69E7CC0];
  sub_1D726402C();
  __break(1u);
}

void sub_1D6BBD9D8(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_changeSet;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1DA6FB460](a1);
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {

LABEL_5:
    swift_endAccess();
    v5 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v5);

    MEMORY[0x1DA6F9910](2108704, 0xE300000000000000);
    v6 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v6);

    return;
  }

  __break(1u);
}

void sub_1D6BBDB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v209 = a4;
  v217 = a2;
  v6 = type metadata accessor for ScoredFormatContentSlotItemResolution(0);
  v225 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v204 = &v200 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v203 = &v200 - v11;
  v12 = MEMORY[0x1E69E6720];
  sub_1D6BC2698(0, qword_1EDF35230, type metadata accessor for FeedPersonalizationClusteringRules, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v215 = &v200 - v15;
  v208 = type metadata accessor for FeedPersonalizationClusteringRules(0);
  v207 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208, v16);
  v202 = &v200 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6BC2698(0, &unk_1EDF43A10, sub_1D5B5D194, v12);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v200 - v20;
  v218 = type metadata accessor for FormatWebEmbed.Resolved(0);
  MEMORY[0x1EEE9AC00](v218, v22);
  v24 = &v200 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v231, v25);
  v228 = &v200 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v210 = &v200 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v200 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = (&v200 - v36);
  v38 = type metadata accessor for FormatContentSlotItemResolution(0);
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38 - 8, v40);
  v206 = &v200 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v201 = &v200 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v205 = &v200 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v227 = &v200 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v223 = &v200 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v200 - v56;
  MEMORY[0x1EEE9AC00](v58, v59);
  v61 = &v200 - v60;
  sub_1D5B68374(a3 + 64, &v234);
  v213 = v236;
  v214 = v235;
  v212 = __swift_project_boxed_opaque_existential_1(&v234, v235);
  v232 = MEMORY[0x1E69E7CC0];
  v62 = *(a1 + 16);
  v226 = v39;
  v229 = v62;
  v224 = MEMORY[0x1E69E7CC0];
  v219 = a1;
  if (v62)
  {
    v221 = v24;
    v63 = a1 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v222 = MEMORY[0x1E69E7CC0];
    v230 = *(v39 + 72);
    v64 = v62;
    v65 = v62;
    *&v216 = v21;
    while (1)
    {
      sub_1D6BC2358(v63, v61, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D6BC2358(v61, v37, type metadata accessor for FormatContentSlotItemObject.Resolved);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (((1 << EnumCaseMultiPayload) & 0x3F6) != 0)
      {
        sub_1D5D1EBB8(v37, type metadata accessor for FormatContentSlotItemObject.Resolved);
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          v222 = *v37;
LABEL_12:
          v75 = sub_1D5D1EBB8(v61, type metadata accessor for FormatContentSlotItemResolution);
          MEMORY[0x1DA6F9CE0](v75);
          if (*((v232 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v232 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
            v65 = v229;
          }

          sub_1D726278C();
          v222 = v232;
          goto LABEL_5;
        }

        v67 = v221;
        sub_1D6BC26FC(v37, v221, type metadata accessor for FormatWebEmbed.Resolved);
        sub_1D6BC23C0(v67 + *(v218 + 36), v21, &unk_1EDF43A10, sub_1D5B5D194, v68);
        sub_1D5B5D194(0);
        v69 = v21;
        v71 = v70;
        v72 = *(v70 - 8);
        if ((*(v72 + 48))(v69, 1, v70) != 1)
        {
          v74 = v216;
          sub_1D725BF7C();
          sub_1D5D1EBB8(v221, type metadata accessor for FormatWebEmbed.Resolved);
          v222 = v237;
          (*(v72 + 8))(v74, v71);
          v65 = v229;
          v21 = v74;
          goto LABEL_12;
        }

        sub_1D5D1EBB8(v221, type metadata accessor for FormatWebEmbed.Resolved);
        v21 = v216;
        sub_1D6BC2440(v216, &unk_1EDF43A10, sub_1D5B5D194, v73);
        v65 = v229;
      }

      sub_1D5D1EBB8(v61, type metadata accessor for FormatContentSlotItemResolution);
LABEL_5:
      v63 += v230;
      if (!--v64)
      {
        goto LABEL_16;
      }
    }
  }

  v222 = MEMORY[0x1E69E7CC0];
  v65 = 0;
LABEL_16:
  v211 = type metadata accessor for FormatServiceOptions(0);
  v76 = v217 + *(v211 + 40);
  v218 = type metadata accessor for FormatTransformData(0);
  v77 = *(v218 + 32);
  v78 = v65;
  v230 = v76;
  LOBYTE(v232) = *(v76 + v77);
  v221 = (*(v213 + 16))(v222, &v232, v214);

  v79 = v236;
  v222 = v235;
  *&v216 = __swift_project_boxed_opaque_existential_1(&v234, v235);
  v80 = MEMORY[0x1E69E7CC0];
  v232 = MEMORY[0x1E69E7CC0];
  if (v65)
  {
    v81 = v219 + ((*(v226 + 80) + 32) & ~*(v226 + 80));
    v82 = *(v226 + 72);
    do
    {
      sub_1D6BC2358(v81, v57, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D6BC2358(v57, v33, type metadata accessor for FormatContentSlotItemObject.Resolved);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v83 = sub_1D5D1EBB8(v57, type metadata accessor for FormatContentSlotItemResolution);
        MEMORY[0x1DA6F9CE0](v83);
        if (*((v232 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v232 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v214 = *((v232 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D726272C();
          v65 = v229;
        }

        sub_1D726278C();
        v80 = v232;
      }

      else
      {
        sub_1D5D1EBB8(v33, type metadata accessor for FormatContentSlotItemObject.Resolved);
        sub_1D5D1EBB8(v57, type metadata accessor for FormatContentSlotItemResolution);
      }

      v81 += v82;
      --v78;
    }

    while (v78);
  }

  LOBYTE(v232) = *(v230 + *(v218 + 36));
  v214 = (*(v79 + 32))(v80, &v232, v222, v79);

  v218 = v236;
  v222 = v235;
  *&v216 = __swift_project_boxed_opaque_existential_1(&v234, v235);
  v84 = MEMORY[0x1E69E7CC0];
  v232 = MEMORY[0x1E69E7CC0];
  if (v65)
  {
    v85 = v219 + ((*(v226 + 80) + 32) & ~*(v226 + 80));
    v86 = *(v226 + 72);
    v230 = MEMORY[0x1E69E7CC0];
    v87 = v65;
    v88 = v228;
    v89 = v210;
    v90 = v223;
    do
    {
      sub_1D6BC2358(v85, v90, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D6BC2358(v90, v89, type metadata accessor for FormatContentSlotItemObject.Resolved);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v91 = sub_1D5D1EBB8(v90, type metadata accessor for FormatContentSlotItemResolution);
        MEMORY[0x1DA6F9CE0](v91);
        if (*((v232 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v232 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
          v84 = MEMORY[0x1E69E7CC0];
        }

        sub_1D726278C();
        v230 = v232;
        v90 = v223;
      }

      else
      {
        sub_1D5D1EBB8(v89, type metadata accessor for FormatContentSlotItemObject.Resolved);
        sub_1D5D1EBB8(v90, type metadata accessor for FormatContentSlotItemResolution);
      }

      v85 += v86;
      --v87;
    }

    while (v87);
  }

  else
  {
    v230 = MEMORY[0x1E69E7CC0];
    v88 = v228;
  }

  v92 = v230;
  if (v230 >> 62)
  {
    v107 = v230;
    v108 = sub_1D7263BFC();
    v109 = v107;
    v93 = v108;
    v92 = v109;
    if (v93)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v93 = *((v230 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v93)
    {
LABEL_35:
      v94 = v92;
      v232 = v84;
      v95 = &v232;
      sub_1D5BFC364(0, v93 & ~(v93 >> 63), 0);
      if (v93 < 0)
      {
        goto LABEL_107;
      }

      v96 = 0;
      v97 = v232;
      v98 = v94;
      v99 = v94 & 0xC000000000000001;
      do
      {
        if (v99)
        {
          MEMORY[0x1DA6FB460](v96, v98);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        v100 = [swift_unknownObjectRetain() identifier];
        v101 = sub_1D726207C();
        v103 = v102;
        swift_unknownObjectRelease_n();

        v232 = v97;
        v105 = *(v97 + 16);
        v104 = *(v97 + 24);
        if (v105 >= v104 >> 1)
        {
          sub_1D5BFC364((v104 > 1), v105 + 1, 1);
          v97 = v232;
        }

        ++v96;
        *(v97 + 16) = v105 + 1;
        v106 = v97 + 16 * v105;
        *(v106 + 32) = v101;
        *(v106 + 40) = v103;
        v88 = v228;
        v98 = v230;
      }

      while (v93 != v96);

      v65 = v229;
      v84 = MEMORY[0x1E69E7CC0];
      goto LABEL_46;
    }
  }

  v97 = MEMORY[0x1E69E7CC0];
LABEL_46:
  v230 = (*(v218 + 40))(v97, v222);

  v232 = v84;
  if (v65)
  {
    v110 = v227;
    v111 = v219 + ((*(v226 + 80) + 32) & ~*(v226 + 80));
    v112 = *(v226 + 72);
    v224 = MEMORY[0x1E69E7CC0];
    v113 = v65;
    v114 = v221;
    do
    {
      sub_1D6BC2358(v111, v110, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D6BC2358(v110, v88, type metadata accessor for FormatContentSlotItemObject.Resolved);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v115 = sub_1D5D1EBB8(v110, type metadata accessor for FormatContentSlotItemResolution);
        MEMORY[0x1DA6F9CE0](v115);
        if (*((v232 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v232 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
          v114 = v221;
        }

        sub_1D726278C();
        v224 = v232;
      }

      else
      {
        sub_1D5D1EBB8(v88, type metadata accessor for FormatContentSlotItemObject.Resolved);
        sub_1D5D1EBB8(v110, type metadata accessor for FormatContentSlotItemResolution);
      }

      v111 += v112;
      --v113;
    }

    while (v113);
  }

  else
  {
    v114 = v221;
  }

  v116 = v224;
  if (v224 >> 62)
  {
    v117 = sub_1D7263BFC();
  }

  else
  {
    v117 = *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v118 = v215;
  v119 = MEMORY[0x1E69E7CC0];
  if (v117)
  {
    v120 = v236;
    __swift_project_boxed_opaque_existential_1(&v234, v235);
    v121 = *(v120 + 24);
    sub_1D5B7AF6C();
    v122 = v220;
    v123 = v121(v116);
    v124 = v122;
    if (v122)
    {

      __swift_destroy_boxed_opaque_existential_1(&v234);
      return;
    }

    v119 = v123;
    v118 = v215;
  }

  else
  {
    v124 = v220;
  }

  sub_1D6BC23C0(v209, v118, qword_1EDF35230, type metadata accessor for FeedPersonalizationClusteringRules, v125);
  v126 = (*(v207 + 48))(v118, 1, v208);
  v128 = MEMORY[0x1E69E65A8];
  v220 = v124;
  v231 = v119;
  if (v126 == 1)
  {
    sub_1D6BC2440(v118, qword_1EDF35230, type metadata accessor for FeedPersonalizationClusteringRules, v127);
    goto LABEL_70;
  }

  v129 = v118;
  v130 = v202;
  sub_1D6BC26FC(v129, v202, type metadata accessor for FeedPersonalizationClusteringRules);
  if (*(v114 + 16) != v65)
  {
    v131 = v130;
LABEL_69:
    sub_1D5D1EBB8(v131, type metadata accessor for FeedPersonalizationClusteringRules);
    goto LABEL_70;
  }

  v131 = v130;
  if (*(v130 + 24) == 1)
  {
    goto LABEL_69;
  }

  v132 = *(v130 + 16);
  if (v65 < v132)
  {
    goto LABEL_69;
  }

  v158 = *(v217 + *(v211 + 52));
  v159 = v131;
  sub_1D5C384A0(0);
  v223 = v160;
  v161 = swift_allocObject();
  v216 = xmmword_1D7279970;
  *(v161 + 16) = xmmword_1D7279970;
  v162 = MEMORY[0x1E69E6530];
  *(v161 + 56) = MEMORY[0x1E69E6530];
  *(v161 + 64) = v128;
  *(v161 + 32) = v65;
  v163 = *(v159 + 8);
  v222 = *v159;
  v232 = v222;
  LODWORD(v218) = v163;
  v233 = v163;
  sub_1D6BC2648(0, &qword_1EDF3C7C0, v162, MEMORY[0x1E69E6720]);
  v164 = sub_1D72620FC();
  v166 = v165;
  v167 = MEMORY[0x1E69E6158];
  *(v161 + 96) = MEMORY[0x1E69E6158];
  v168 = sub_1D5B7E2C0();
  *(v161 + 104) = v168;
  *(v161 + 72) = v164;
  *(v161 + 80) = v166;
  v232 = v132;
  v233 = 0;
  v169 = sub_1D72620FC();
  *(v161 + 136) = v167;
  *(v161 + 144) = v168;
  *(v161 + 112) = v169;
  *(v161 + 120) = v170;
  v171 = sub_1D7262EDC();
  v224 = v158;
  sub_1D725C30C("Slot transform will attempt smarter placement personalization on %ld resolutions with min %{public}@ and max %{public}@", 119, 2, &dword_1D5B42000, v158, v171, v161);

  sub_1D6BBF660(&v234, v221, v217, v159);
  v173 = v172;
  v232 = v219;
  sub_1D6BC2698(0, &qword_1EDF1AF70, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E62F8]);
  sub_1D6BC259C(&qword_1EDF1AF60, &qword_1EDF1AF70, type metadata accessor for FormatContentSlotItemResolution, v174);
  sub_1D6BC2600(&qword_1EDF1FC50, type metadata accessor for FormatContentSlotItemResolution, &protocol conformance descriptor for FormatContentSlotItemResolution);
  v95 = sub_1D72623BC();
  v175 = v173;
  v228 = *(v173 + 2);
  if (!v228)
  {
    v178 = MEMORY[0x1E69E7CC0];
LABEL_99:

    if (v218)
    {
      v193 = 1;
    }

    else
    {
      v193 = v222;
    }

    v194 = v178[2];
    if (v194 >= v193)
    {

      v197 = swift_allocObject();
      *(v197 + 16) = xmmword_1D7270C10;
      v198 = MEMORY[0x1E69E6530];
      *(v197 + 56) = MEMORY[0x1E69E6530];
      v199 = MEMORY[0x1E69E65A8];
      *(v197 + 64) = MEMORY[0x1E69E65A8];
      *(v197 + 72) = v194;
      *(v197 + 32) = v229;
      *(v197 + 96) = v198;
      *(v197 + 104) = v199;
      sub_1D7262EDC();
      sub_1D725C30C("Slot transform did smarter placement personalization on %ld resolutions and best resolved %ld", v200, v201);

      sub_1D5D1EBB8(v202, type metadata accessor for FeedPersonalizationClusteringRules);
LABEL_84:
      __swift_destroy_boxed_opaque_existential_1(&v234);
      return;
    }

    v195 = swift_allocObject();
    *(v195 + 16) = v216;
    v196 = MEMORY[0x1E69E6530];
    *(v195 + 56) = MEMORY[0x1E69E6530];
    v128 = MEMORY[0x1E69E65A8];
    *(v195 + 64) = MEMORY[0x1E69E65A8];
    *(v195 + 72) = v194;
    v65 = v229;
    *(v195 + 32) = v229;
    *(v195 + 96) = v196;
    *(v195 + 104) = v128;
    *(v195 + 136) = v196;
    *(v195 + 144) = v128;
    *(v195 + 112) = v193;
    sub_1D7262EDC();
    sub_1D725C30C("Slot transform did smarter placement personalization on %ld resolutions and best resolved %ld but did not meet the required minClusterSize of %ld, will fallback to top N personalization", v200, v201, v202);

    sub_1D5D1EBB8(v202, type metadata accessor for FeedPersonalizationClusteringRules);
    v114 = v221;
LABEL_70:
    sub_1D5C384A0(0);
    v133 = swift_allocObject();
    *(v133 + 16) = xmmword_1D7273AE0;
    *(v133 + 56) = MEMORY[0x1E69E6530];
    *(v133 + 64) = v128;
    *(v133 + 32) = v65;
    sub_1D7262EDC();
    sub_1D725C30C("Slot transform will use basic personalization on %ld resolutions", v200);

    v232 = v114;
    v134 = MEMORY[0x1E69E62F8];
    sub_1D6BC2648(0, &qword_1EDF1B508, &type metadata for FeedScoredHeadline, MEMORY[0x1E69E62F8]);
    sub_1D6BC24B0(&qword_1EDF1B500, &qword_1EDF1B508, &type metadata for FeedScoredHeadline);
    sub_1D61D0D44();
    v135 = sub_1D72623BC();

    v232 = v214;
    sub_1D6BC2648(0, &qword_1EDF1B530, &type metadata for FeedScoredIssue, v134);
    sub_1D6BC24B0(&qword_1EDF1B528, &qword_1EDF1B530, &type metadata for FeedScoredIssue);
    sub_1D6724534();
    v136 = sub_1D72623BC();

    v232 = v230;
    sub_1D6BC2648(0, &qword_1EDF1B458, &type metadata for FeedScoredTag, v134);
    sub_1D6BC24B0(&qword_1EDF1B450, &qword_1EDF1B458, &type metadata for FeedScoredTag);
    sub_1D6BC2514();
    v137 = sub_1D72623BC();

    v232 = v231;
    sub_1D6BC2698(0, &qword_1EDF1B520, sub_1D6BC2568, MEMORY[0x1E69E62F8]);
    sub_1D6BC259C(&unk_1EDF1B510, &qword_1EDF1B520, sub_1D6BC2568, v138);
    sub_1D6BC2600(qword_1EDF39008, sub_1D6BC2568, &protocol conformance descriptor for FeedScoredRecipe<A>);
    v139 = v229;
    v140 = sub_1D72623BC();

    if (v139)
    {
      v230 = v137;
      v231 = v136;
      v232 = MEMORY[0x1E69E7CC0];
      sub_1D6997D50(0, v139, 0);
      v141 = v232;
      v95 = v220;
      v142 = v219 + ((*(v226 + 80) + 32) & ~*(v226 + 80));
      v143 = *(v226 + 72);
      v144 = v203;
      v145 = v135;
      do
      {
        v146 = v145;
        sub_1D6BBF9DC(v142, v145, v231, v230, v140, v144);
        v232 = v141;
        v148 = *(v141 + 16);
        v147 = *(v141 + 24);
        if (v148 >= v147 >> 1)
        {
          sub_1D6997D50((v147 > 1), v148 + 1, 1);
          v141 = v232;
        }

        *(v141 + 16) = v148 + 1;
        sub_1D6BC26FC(v144, v141 + ((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v148, type metadata accessor for ScoredFormatContentSlotItemResolution);
        v142 += v143;
        --v229;
        v145 = v146;
      }

      while (v229);
    }

    else
    {

      v141 = MEMORY[0x1E69E7CC0];
      v95 = v220;
    }

    v232 = v141;

    sub_1D6BC0428(&v232);
    v149 = v206;
    if (v95)
    {
      goto LABEL_108;
    }

    v150 = v232;
    v151 = *(v232 + 16);
    if (v151)
    {
      v220 = 0;
      v232 = MEMORY[0x1E69E7CC0];
      sub_1D6997C80(0, v151, 0);
      v152 = v232;
      v153 = v150 + ((*(v225 + 80) + 32) & ~*(v225 + 80));
      v154 = *(v225 + 72);
      v155 = v204;
      do
      {
        sub_1D6BC2358(v153, v155, type metadata accessor for ScoredFormatContentSlotItemResolution);
        sub_1D6BC26FC(v155, v149, type metadata accessor for FormatContentSlotItemResolution);
        v232 = v152;
        v157 = *(v152 + 16);
        v156 = *(v152 + 24);
        if (v157 >= v156 >> 1)
        {
          sub_1D6997C80((v156 > 1), v157 + 1, 1);
          v155 = v204;
          v152 = v232;
        }

        *(v152 + 16) = v157 + 1;
        sub_1D6BC26FC(v149, v152 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v157, type metadata accessor for FormatContentSlotItemResolution);
        v153 += v154;
        --v151;
      }

      while (v151);
    }

    goto LABEL_84;
  }

  v176 = 0;
  v177 = (v173 + 40);
  v178 = MEMORY[0x1E69E7CC0];
  v227 = v175;
  while (v176 < *(v175 + 2))
  {
    v180 = *(v177 - 1);
    v179 = *v177;
    swift_unknownObjectRetain();
    v181 = v179;
    v182 = [v180 articleID];
    v183 = sub_1D726207C();
    v185 = v184;

    if (v95[2])
    {
      v186 = sub_1D5B69D90(v183, v185);
      v188 = v187;

      if (v188)
      {
        v189 = *(v226 + 72);
        v190 = v201;
        sub_1D6BC2358(v95[7] + v189 * v186, v201, type metadata accessor for FormatContentSlotItemResolution);

        swift_unknownObjectRelease();
        sub_1D6BC26FC(v190, v205, type metadata accessor for FormatContentSlotItemResolution);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v178 = sub_1D698FDAC(0, v178[2] + 1, 1, v178);
        }

        v192 = v178[2];
        v191 = v178[3];
        if (v192 >= v191 >> 1)
        {
          v178 = sub_1D698FDAC((v191 > 1), v192 + 1, 1, v178);
        }

        v178[2] = v192 + 1;
        sub_1D6BC26FC(v205, v178 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + v192 * v189, type metadata accessor for FormatContentSlotItemResolution);
        goto LABEL_89;
      }
    }

    else
    {
    }

    swift_unknownObjectRelease();
LABEL_89:
    ++v176;
    v177 += 2;
    v175 = v227;
    if (v228 == v176)
    {
      goto LABEL_99;
    }
  }

  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:

  __break(1u);
}

void sub_1D6BBF660(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = *(a2 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v32 = a4;
    v33 = a3;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1D6997D30(0, v9, 0);
    v10 = v36;
    v11 = (a2 + 32);
    do
    {
      v34 = *v11;
      v36 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      swift_unknownObjectRetain();
      v14 = *(&v34 + 1);
      if (v13 >= v12 >> 1)
      {
        sub_1D6997D30((v12 > 1), v13 + 1, 1);
        v10 = v36;
      }

      *(v10 + 16) = v13 + 1;
      v15 = v10 + 24 * v13;
      *(v15 + 32) = v34;
      *(v15 + 48) = 0;
      ++v11;
      --v9;
    }

    while (v9);
    a4 = v32;
    a3 = v33;
  }

  v16 = a3 + *(type metadata accessor for FormatServiceOptions(0) + 40);
  LOWORD(v36) = *(v16 + *(type metadata accessor for FormatTransformData(0) + 32));
  v17 = (*(v8 + 72))(v10, &v36, 1, a4, v7, v8);

  v18 = 0;
  v19 = *(v17 + 16);
  v20 = v17 + 40;
  v21 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v22 = (v20 + 24 * v18);
  while (1)
  {
    if (v19 == v18)
    {

      return;
    }

    if (v18 >= *(v17 + 16))
    {
      break;
    }

    ++v18;
    v23 = v22 + 3;
    v24 = *v22;
    v25 = swift_dynamicCastObjCProtocolConditional();
    v22 = v23;
    if (v25)
    {
      v35 = v20;
      v26 = v25;
      swift_unknownObjectRetain();
      v27 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1D698FB64(0, *(v21 + 2) + 1, 1, v21);
      }

      v29 = *(v21 + 2);
      v28 = *(v21 + 3);
      if (v29 >= v28 >> 1)
      {
        v21 = sub_1D698FB64((v28 > 1), v29 + 1, 1, v21);
      }

      v30 = v26;
      v20 = v35;
      *(v21 + 2) = v29 + 1;
      v31 = &v21[16 * v29];
      *(v31 + 4) = v30;
      *(v31 + 5) = v27;
      goto LABEL_8;
    }
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_1D6BBF9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v125 = a6;
  v119 = a5;
  v122 = a3;
  v123 = a4;
  v121 = a2;
  sub_1D6BC2698(0, &unk_1EDF43A10, sub_1D5B5D194, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v118 - v10;
  v12 = type metadata accessor for FormatWebEmbed.Resolved(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v120 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FormatContentSlotItemResolution(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v118 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v118 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v118 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v118 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v118 - v32;
  v34 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = (&v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v124 = a1;
  sub_1D6BC2358(a1, v37, type metadata accessor for FormatContentSlotItemObject.Resolved);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v44 = v122;
    v43 = v123;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v45 = *v37;
        v46 = [*v37 identifier];
        v47 = sub_1D726207C();
        v49 = v48;

        if (*(v44 + 16))
        {
          v50 = sub_1D5B69D90(v47, v49);
          v52 = v51;

          if (v52)
          {
            v53 = *(v44 + 56) + 16 * v50;
            v54 = *(v53 + 8);
            v55 = *v53;
            v56 = v54;
            sub_1D6BC2358(v124, v29, type metadata accessor for FormatContentSlotItemResolution);
            if (v55)
            {
              [v56 agedPersonalizationScore];
              v42 = v57;

              sub_1D5DEA2E0(v55, v56);
LABEL_41:
              v116 = v29;
              goto LABEL_51;
            }

LABEL_40:

            v42 = 0;
            goto LABEL_41;
          }
        }

        else
        {
        }

        sub_1D6BC2358(v124, v29, type metadata accessor for FormatContentSlotItemResolution);
        goto LABEL_40;
      }

      v92 = [*v37 identifier];
      v93 = sub_1D726207C();
      v95 = v94;

      if (*(v43 + 16))
      {
        v96 = sub_1D5B69D90(v93, v95);
        v98 = v97;

        if (v98)
        {
          v99 = *(v43 + 56) + 24 * v96;
          v100 = *(v99 + 8);
          v42 = *(v99 + 16);

          swift_unknownObjectRelease();
          sub_1D6BC2358(v124, v25, type metadata accessor for FormatContentSlotItemResolution);
          v41 = v125;
          if (v100)
          {

LABEL_46:
            v116 = v25;
LABEL_52:
            sub_1D6BC26FC(v116, v41, type metadata accessor for FormatContentSlotItemResolution);
            goto LABEL_53;
          }

LABEL_45:
          v42 = 0;
          goto LABEL_46;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v41 = v125;
      sub_1D6BC2358(v124, v25, type metadata accessor for FormatContentSlotItemResolution);
      goto LABEL_45;
    }

    v79 = [*v37 identifier];
    v80 = sub_1D726207C();
    v82 = v81;

    v83 = v121;
    if (*(v121 + 16))
    {
      v84 = sub_1D5B69D90(v80, v82);
      v86 = v85;

      if (v86)
      {
        v87 = (*(v83 + 56) + 16 * v84);
        v88 = *v87;
        v89 = v87[1];
        swift_unknownObjectRetain();
        v90 = v89;
        sub_1D6BC2358(v124, v33, type metadata accessor for FormatContentSlotItemResolution);
        if (v88)
        {
          [v90 sortingScore];
          v42 = v91;
          swift_unknownObjectRelease();
          sub_1D5F587AC(v88, v90);
LABEL_37:
          v116 = v33;
          goto LABEL_51;
        }

LABEL_36:
        swift_unknownObjectRelease();
        v42 = 0;
        goto LABEL_37;
      }
    }

    else
    {
    }

    sub_1D6BC2358(v124, v33, type metadata accessor for FormatContentSlotItemResolution);
    goto LABEL_36;
  }

  if (((1 << EnumCaseMultiPayload) & 0x370) == 0)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v58 = v120;
      sub_1D6BC26FC(v37, v120, type metadata accessor for FormatWebEmbed.Resolved);
      sub_1D6BC23C0(v58 + *(v12 + 36), v11, &unk_1EDF43A10, sub_1D5B5D194, v59);
      sub_1D5B5D194(0);
      v61 = v60;
      v62 = *(v60 - 8);
      if ((*(v62 + 48))(v11, 1, v60) == 1)
      {
        sub_1D6BC2440(v11, &unk_1EDF43A10, sub_1D5B5D194, v63);
        v39 = type metadata accessor for FormatWebEmbed.Resolved;
        v40 = v58;
        goto LABEL_4;
      }

      sub_1D725BF7C();
      v101 = v126;
      (*(v62 + 8))(v11, v61);
      v102 = [v101 identifier];
      v103 = sub_1D726207C();
      v105 = v104;

      v106 = v121;
      if (*(v121 + 16))
      {
        v107 = sub_1D5B69D90(v103, v105);
        v109 = v108;

        v110 = v118;
        if (v109)
        {
          v111 = (*(v106 + 56) + 16 * v107);
          v112 = *v111;
          v113 = v111[1];
          swift_unknownObjectRetain();
          v114 = v113;
          sub_1D6BC2358(v124, v110, type metadata accessor for FormatContentSlotItemResolution);
          if (v112)
          {
            swift_unknownObjectRetain();
            [v114 sortingScore];
            v42 = v115;
            swift_unknownObjectRelease();
            sub_1D5F587AC(v112, v114);
            sub_1D5D1EBB8(v58, type metadata accessor for FormatWebEmbed.Resolved);
            sub_1D5F587AC(v112, v114);
LABEL_50:
            v116 = v110;
            goto LABEL_51;
          }

LABEL_49:
          sub_1D5D1EBB8(v58, type metadata accessor for FormatWebEmbed.Resolved);
          swift_unknownObjectRelease();
          v42 = 0;
          goto LABEL_50;
        }
      }

      else
      {

        v110 = v118;
      }

      sub_1D6BC2358(v124, v110, type metadata accessor for FormatContentSlotItemResolution);
      goto LABEL_49;
    }

    v64 = *v37;
    v65 = [*v37 identifier];
    v66 = sub_1D726207C();
    v68 = v67;

    v69 = v119;
    if (*(v119 + 16))
    {
      v70 = sub_1D5B69D90(v66, v68);
      v72 = v71;

      if (v72)
      {
        v73 = *(v69 + 56) + 16 * v70;
        v74 = *(v73 + 8);
        v75 = *v73;
        v76 = v74;
        sub_1D6BC2358(v124, v21, type metadata accessor for FormatContentSlotItemResolution);
        if (v75)
        {
          v77 = v75;
          [v76 sortingScore];
          v42 = v78;

          sub_1D5DEA2E0(v75, v76);
          sub_1D5DEA2E0(v75, v76);
LABEL_33:
          v116 = v21;
LABEL_51:
          v41 = v125;
          goto LABEL_52;
        }

LABEL_32:

        v42 = 0;
        goto LABEL_33;
      }
    }

    else
    {
    }

    sub_1D6BC2358(v124, v21, type metadata accessor for FormatContentSlotItemResolution);
    goto LABEL_32;
  }

  v39 = type metadata accessor for FormatContentSlotItemObject.Resolved;
  v40 = v37;
LABEL_4:
  sub_1D5D1EBB8(v40, v39);
  v41 = v125;
  sub_1D6BC2358(v124, v125, type metadata accessor for FormatContentSlotItemResolution);
  v42 = 0;
LABEL_53:
  result = type metadata accessor for ScoredFormatContentSlotItemResolution(0);
  *(v41 + *(result + 20)) = v42;
  return result;
}

void sub_1D6BC03BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D62FFB6C(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1D6BC04D0(v4);
  *a1 = v2;
}

void sub_1D6BC0428(uint64_t *a1)
{
  v2 = *(type metadata accessor for ScoredFormatContentSlotItemResolution(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D62FFB80(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D6BC05C8(v5);
  *a1 = v3;
}

void sub_1D6BC04D0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D726449C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D726276C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1D6BC0A7C(v7, v8, a1, v4);
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
    sub_1D6BC06F4(0, v2, 1, a1);
  }
}

void sub_1D6BC05C8(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D726449C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ScoredFormatContentSlotItemResolution(0);
        v6 = sub_1D726276C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ScoredFormatContentSlotItemResolution(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D6BC1194(v8, v9, a1, v4);
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
    sub_1D6BC0824(0, v2, 1, a1);
  }
}

uint64_t sub_1D6BC06F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 16 * a3 - 16;
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 16 * v4);
    v19 = v7;
    v21 = v6;
    while (1)
    {
      v20 = *(&v8 + 1);
      v9 = *(v6 + 8);
      swift_unknownObjectRetain();
      v10 = v20;
      swift_unknownObjectRetain();
      v11 = v9;
      [v10 sortingScore];
      v13 = v12;
      [v11 sortingScore];
      v15 = v14;

      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v15 > v13)
      {
LABEL_4:
        ++v4;
        v6 = v21 + 16;
        v7 = v19 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v16 = *v6;
      v8 = *(v6 + 16);
      *v6 = v8;
      *(v6 + 16) = v16;
      v6 -= 16;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D6BC0824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ScoredFormatContentSlotItemResolution(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v31 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v31 - v19;
  v33 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v18 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v24 = -v22;
    v25 = a1 - a3;
    v38 = v21;
    v32 = v22;
    v26 = v21 + v22 * a3;
LABEL_5:
    v36 = v23;
    v37 = a3;
    v34 = v26;
    v35 = v25;
    while (1)
    {
      sub_1D6BC2358(v26, v20, type metadata accessor for ScoredFormatContentSlotItemResolution);
      sub_1D6BC2358(v23, v15, type metadata accessor for ScoredFormatContentSlotItemResolution);
      v27 = *(v8 + 20);
      v28 = *&v20[v27];
      v29 = *&v15[v27];
      sub_1D5D1EBB8(v15, type metadata accessor for ScoredFormatContentSlotItemResolution);
      sub_1D5D1EBB8(v20, type metadata accessor for ScoredFormatContentSlotItemResolution);
      if (v29 > v28)
      {
LABEL_4:
        a3 = v37 + 1;
        v23 = v36 + v32;
        v25 = v35 - 1;
        v26 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      sub_1D6BC26FC(v26, v11, type metadata accessor for ScoredFormatContentSlotItemResolution);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D6BC26FC(v11, v23, type metadata accessor for ScoredFormatContentSlotItemResolution);
      v23 += v24;
      v26 += v24;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D6BC0A7C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v8 = sub_1D62FF50C(v8);
    }

    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v101 = v8;
        v8 = (v100 - 1);
        v102 = *&v101[16 * v100];
        v103 = *&v101[16 * v100 + 24];
        sub_1D6BC1AF8((*a3 + 16 * v102), (*a3 + 16 * *&v101[16 * v100 + 16]), (*a3 + 16 * v103), v7);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v103 < v102)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_1D62FF50C(v101);
        }

        if (v100 - 2 >= *(v101 + 2))
        {
          goto LABEL_114;
        }

        v104 = &v101[16 * v100];
        *v104 = v102;
        *(v104 + 1) = v103;
        sub_1D62FF480(v100 - 1);
        v8 = v101;
        v100 = *(v101 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    if ((v7 + 1) >= v6)
    {
      v21 = v7 + 1;
    }

    else
    {
      v114 = v6;
      v108 = v5;
      v10 = *(*a3 + 16 * (v7 + 1) + 8);
      v116 = 16 * v7;
      v11 = *a3 + 16 * v7;
      v12 = *(v11 + 8);
      swift_unknownObjectRetain();
      v13 = v10;
      swift_unknownObjectRetain();
      v14 = v12;
      [v13 sortingScore];
      v16 = v15;
      [v14 sortingScore];
      v18 = v17;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v107 = v7;
      v19 = v7 + 2;
      v20 = (v11 + 24);
      while (1)
      {
        v21 = v114;
        if (v114 == v19)
        {
          break;
        }

        v7 = v20 + 16;
        v22 = *(v20 + 2);
        v23 = v8;
        v24 = *v20;
        swift_unknownObjectRetain();
        v25 = v22;
        swift_unknownObjectRetain();
        v26 = v24;
        v8 = v23;
        v27 = v26;
        [v25 sortingScore];
        v29 = v28;
        [v27 sortingScore];
        v31 = v30;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        ++v19;
        v20 = v7;
        if (v18 <= v16 == v31 > v29)
        {
          v21 = v19 - 1;
          break;
        }
      }

      v9 = v107;
      v5 = v108;
      v32 = v116;
      if (v18 <= v16)
      {
        if (v21 < v107)
        {
          goto LABEL_117;
        }

        if (v107 < v21)
        {
          v33 = 16 * v21 - 16;
          v34 = v21;
          v35 = v107;
          do
          {
            if (v35 != --v34)
            {
              v37 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v36 = *(v37 + v32);
              *(v37 + v32) = *(v37 + v33);
              *(v37 + v33) = v36;
            }

            ++v35;
            v33 -= 16;
            v32 += 16;
          }

          while (v35 < v34);
        }
      }
    }

    v38 = a3[1];
    if (v21 < v38)
    {
      if (__OFSUB__(v21, v9))
      {
        goto LABEL_116;
      }

      if (v21 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_118;
        }

        if (&v9[a4] < v38)
        {
          v38 = &v9[a4];
        }

        if (v38 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v21 != v38)
        {
          break;
        }
      }
    }

    v7 = v21;
    if (v21 < v9)
    {
      goto LABEL_115;
    }

LABEL_28:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D698BA94(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_1D698BA94((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_47:
          if (v48)
          {
            goto LABEL_104;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_107;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_111;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_68;
          }

          goto LABEL_61;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_61:
        if (v66)
        {
          goto LABEL_106;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_109;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_68:
        v82 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v83 = *&v8[16 * v82 + 32];
        v84 = *&v8[16 * v44 + 40];
        sub_1D6BC1AF8((*a3 + 16 * v83), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v84), v43);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v84 < v83)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D62FF50C(v8);
        }

        if (v82 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v85 = &v8[16 * v82];
        *(v85 + 4) = v83;
        *(v85 + 5) = v84;
        sub_1D62FF480(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_102;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_103;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_105;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_108;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_112;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_68;
      }

      goto LABEL_47;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v111 = v38;
  v105 = v8;
  v109 = v5;
  v86 = *a3;
  v87 = *a3 + 16 * v21 - 16;
  v88 = v9 - v21;
LABEL_79:
  v115 = v21;
  v89 = *(v86 + 16 * v21);
  v90 = v88;
  v112 = v87;
  while (1)
  {
    v117 = *(&v89 + 1);
    v91 = *(v87 + 8);
    swift_unknownObjectRetain();
    v92 = v117;
    swift_unknownObjectRetain();
    v93 = v91;
    [v92 sortingScore];
    v95 = v94;
    [v93 sortingScore];
    v97 = v96;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v97 > v95)
    {
LABEL_78:
      v21 = v115 + 1;
      v87 = v112 + 16;
      --v88;
      if (v115 + 1 != v111)
      {
        goto LABEL_79;
      }

      v5 = v109;
      v8 = v105;
      v7 = v111;
      if (v111 < v9)
      {
        goto LABEL_115;
      }

      goto LABEL_28;
    }

    if (!v86)
    {
      break;
    }

    v98 = *v87;
    v89 = *(v87 + 16);
    *v87 = v89;
    *(v87 + 16) = v98;
    v87 -= 16;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_78;
    }
  }

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
}

void sub_1D6BC1194(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v114 = a1;
  v9 = type metadata accessor for ScoredFormatContentSlotItemResolution(0);
  v122 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v117 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v125 = &v111 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v126 = &v111 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v111 - v20;
  v124 = a3;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v114;
    if (!*v114)
    {
      goto LABEL_135;
    }

    a4 = v24;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v106 = a4;
    }

    else
    {
LABEL_129:
      v106 = sub_1D62FF50C(a4);
    }

    v128 = v106;
    a4 = *(v106 + 2);
    if (a4 >= 2)
    {
      while (*v124)
      {
        v107 = *&v106[16 * a4];
        v108 = v106;
        v109 = *&v106[16 * a4 + 24];
        sub_1D6BC1E14(*v124 + *(v122 + 72) * v107, *v124 + *(v122 + 72) * *&v106[16 * a4 + 16], *v124 + *(v122 + 72) * v109, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v109 < v107)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_1D62FF50C(v108);
        }

        if (a4 - 2 >= *(v108 + 2))
        {
          goto LABEL_123;
        }

        v110 = &v108[16 * a4];
        *v110 = v107;
        *(v110 + 1) = v109;
        v128 = v108;
        sub_1D62FF480(a4 - 1);
        v106 = v128;
        a4 = *(v128 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v23 = 0;
  v24 = MEMORY[0x1E69E7CC0];
  v113 = a4;
  v127 = v9;
  while (1)
  {
    v25 = v23;
    v26 = v23 + 1;
    v118 = v24;
    if (v23 + 1 >= v22)
    {
      v22 = v23 + 1;
    }

    else
    {
      v27 = *(v122 + 72);
      v5 = *v124 + v27 * v26;
      v121 = *v124;
      v28 = v121;
      sub_1D6BC2358(v121 + v27 * v26, v21, type metadata accessor for ScoredFormatContentSlotItemResolution);
      v29 = v28 + v27 * v25;
      v30 = v25;
      v31 = v126;
      sub_1D6BC2358(v29, v126, type metadata accessor for ScoredFormatContentSlotItemResolution);
      v32 = *(v9 + 20);
      v33 = *&v21[v32];
      v34 = *(v31 + v32);
      sub_1D5D1EBB8(v31, type metadata accessor for ScoredFormatContentSlotItemResolution);
      sub_1D5D1EBB8(v21, type metadata accessor for ScoredFormatContentSlotItemResolution);
      v112 = v30;
      v35 = v30 + 2;
      v123 = v27;
      v36 = v121 + v27 * (v30 + 2);
      while (v22 != v35)
      {
        sub_1D6BC2358(v36, v21, type metadata accessor for ScoredFormatContentSlotItemResolution);
        v37 = v126;
        sub_1D6BC2358(v5, v126, type metadata accessor for ScoredFormatContentSlotItemResolution);
        v38 = *(v127 + 20);
        v39 = *&v21[v38];
        v40 = *(v37 + v38);
        sub_1D5D1EBB8(v37, type metadata accessor for ScoredFormatContentSlotItemResolution);
        sub_1D5D1EBB8(v21, type metadata accessor for ScoredFormatContentSlotItemResolution);
        ++v35;
        v36 += v123;
        v5 += v123;
        if (v34 <= v33 == v40 > v39)
        {
          v22 = v35 - 1;
          break;
        }
      }

      v25 = v112;
      a4 = v113;
      v9 = v127;
      if (v34 <= v33)
      {
        if (v22 < v112)
        {
          goto LABEL_126;
        }

        if (v112 < v22)
        {
          v111 = v6;
          v41 = v123 * (v22 - 1);
          v42 = v22 * v123;
          v43 = v22;
          v44 = v22;
          v45 = v112;
          v46 = v112 * v123;
          do
          {
            if (v45 != --v44)
            {
              v47 = *v124;
              if (!*v124)
              {
                goto LABEL_132;
              }

              v5 = v47 + v46;
              sub_1D6BC26FC(v47 + v46, v117, type metadata accessor for ScoredFormatContentSlotItemResolution);
              if (v46 < v41 || v5 >= v47 + v42)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v46 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D6BC26FC(v117, v47 + v41, type metadata accessor for ScoredFormatContentSlotItemResolution);
            }

            ++v45;
            v41 -= v123;
            v42 -= v123;
            v46 += v123;
          }

          while (v45 < v44);
          v6 = v111;
          v25 = v112;
          a4 = v113;
          v9 = v127;
          v22 = v43;
        }
      }
    }

    v48 = v124[1];
    if (v22 < v48)
    {
      if (__OFSUB__(v22, v25))
      {
        goto LABEL_125;
      }

      if (v22 - v25 < a4)
      {
        if (__OFADD__(v25, a4))
        {
          goto LABEL_127;
        }

        if ((v25 + a4) >= v48)
        {
          v49 = v124[1];
        }

        else
        {
          v49 = v25 + a4;
        }

        if (v49 < v25)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v22 != v49)
        {
          break;
        }
      }
    }

    v23 = v22;
    if (v22 < v25)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v24 = v118;
    }

    else
    {
      v24 = sub_1D698BA94(0, *(v118 + 2) + 1, 1, v118);
    }

    a4 = *(v24 + 2);
    v50 = *(v24 + 3);
    v5 = a4 + 1;
    if (a4 >= v50 >> 1)
    {
      v24 = sub_1D698BA94((v50 > 1), a4 + 1, 1, v24);
    }

    *(v24 + 2) = v5;
    v51 = &v24[16 * a4];
    *(v51 + 4) = v25;
    *(v51 + 5) = v23;
    v52 = *v114;
    if (!*v114)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v53 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v54 = *(v24 + 4);
          v55 = *(v24 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_52:
          if (v57)
          {
            goto LABEL_113;
          }

          v70 = &v24[16 * v5];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_116;
          }

          v76 = &v24[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_120;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v80 = &v24[16 * v5];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_66:
        if (v75)
        {
          goto LABEL_115;
        }

        v83 = &v24[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_118;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v53 - 1;
        if (v53 - 1 >= v5)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v124)
        {
          goto LABEL_131;
        }

        v91 = v24;
        v92 = *&v24[16 * a4 + 32];
        v5 = *&v24[16 * v53 + 40];
        sub_1D6BC1E14(*v124 + *(v122 + 72) * v92, *v124 + *(v122 + 72) * *&v24[16 * v53 + 32], *v124 + *(v122 + 72) * v5, v52);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v92)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v93 = v91;
        }

        else
        {
          v93 = sub_1D62FF50C(v91);
        }

        v9 = v127;
        if (a4 >= *(v93 + 2))
        {
          goto LABEL_110;
        }

        v94 = &v93[16 * a4];
        *(v94 + 4) = v92;
        *(v94 + 5) = v5;
        v128 = v93;
        sub_1D62FF480(v53);
        v24 = v128;
        v5 = *(v128 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v24[16 * v5 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_111;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_112;
      }

      v65 = &v24[16 * v5];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_114;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_117;
      }

      if (v69 >= v61)
      {
        v87 = &v24[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_121;
        }

        if (v56 < v90)
        {
          v53 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v22 = v124[1];
    a4 = v113;
    if (v23 >= v22)
    {
      goto LABEL_96;
    }
  }

  v111 = v6;
  v112 = v25;
  a4 = *v124;
  v95 = *(v122 + 72);
  v96 = *v124 + v95 * (v22 - 1);
  v97 = -v95;
  v98 = v25 - v22;
  v115 = v95;
  v116 = v49;
  v5 = a4 + v22 * v95;
LABEL_86:
  v123 = v22;
  v119 = v5;
  v120 = v98;
  v121 = v96;
  v99 = v127;
  while (1)
  {
    sub_1D6BC2358(v5, v21, type metadata accessor for ScoredFormatContentSlotItemResolution);
    v100 = v126;
    sub_1D6BC2358(v96, v126, type metadata accessor for ScoredFormatContentSlotItemResolution);
    v101 = *(v99 + 20);
    v102 = *&v21[v101];
    v103 = *(v100 + v101);
    sub_1D5D1EBB8(v100, type metadata accessor for ScoredFormatContentSlotItemResolution);
    sub_1D5D1EBB8(v21, type metadata accessor for ScoredFormatContentSlotItemResolution);
    if (v103 > v102)
    {
LABEL_85:
      v22 = v123 + 1;
      v23 = v116;
      v96 = v121 + v115;
      v98 = v120 - 1;
      v5 = v119 + v115;
      if (v123 + 1 != v116)
      {
        goto LABEL_86;
      }

      v6 = v111;
      v25 = v112;
      v9 = v127;
      if (v116 < v112)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a4)
    {
      break;
    }

    v104 = v125;
    sub_1D6BC26FC(v5, v125, type metadata accessor for ScoredFormatContentSlotItemResolution);
    v99 = v127;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D6BC26FC(v104, v96, type metadata accessor for ScoredFormatContentSlotItemResolution);
    v96 += v97;
    v5 += v97;
    if (__CFADD__(v98++, 1))
    {
      goto LABEL_85;
    }
  }

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
}

uint64_t sub_1D6BC1AF8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 4;
  v10 = a3 - __src;
  v11 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 4;
  if (v9 < v11 >> 4)
  {
    v13 = a4;
    if (a4 != __dst || &__dst[16 * v9] <= a4)
    {
      memmove(a4, __dst, 16 * v9);
    }

    v38 = &v13[16 * v9];
    if (v7 < 16)
    {
LABEL_10:
      v5 = v6;
      goto LABEL_36;
    }

    while (1)
    {
      if (v5 >= v4)
      {
        goto LABEL_10;
      }

      v16 = *(v5 + 1);
      v17 = *(v13 + 1);
      swift_unknownObjectRetain();
      v18 = v16;
      swift_unknownObjectRetain();
      v19 = v17;
      [v18 sortingScore];
      v21 = v20;
      [v19 sortingScore];
      v23 = v22;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v23 <= v21)
      {
        break;
      }

      v14 = v13;
      v15 = v6 == v13;
      v13 += 16;
      if (!v15)
      {
        goto LABEL_12;
      }

LABEL_13:
      v6 += 16;
      if (v13 >= v38)
      {
        goto LABEL_10;
      }
    }

    v14 = v5;
    v15 = v6 == v5;
    v5 += 16;
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v6 = *v14;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v12] <= a4)
  {
    v24 = a4;
    memmove(a4, __src, 16 * v12);
    a4 = v24;
  }

  v37 = a4;
  v38 = &a4[16 * v12];
  if (v10 < 16)
  {
    v13 = a4;
  }

  else
  {
    v13 = a4;
    if (v5 > v6)
    {
LABEL_24:
      v36 = v5 - 16;
      v4 -= 16;
      v25 = v38;
      do
      {
        v26 = v4 + 16;
        v27 = *(v25 - 1);
        v25 -= 16;
        v28 = *(v5 - 1);
        swift_unknownObjectRetain();
        v29 = v27;
        swift_unknownObjectRetain();
        v30 = v28;
        [v29 sortingScore];
        v32 = v31;
        [v30 sortingScore];
        v34 = v33;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v34 <= v32)
        {
          if (v26 != v5)
          {
            *v4 = *v36;
          }

          v13 = v37;
          if (v38 <= v37 || (v5 -= 16, v36 <= v6))
          {
            v5 = v36;
            goto LABEL_36;
          }

          goto LABEL_24;
        }

        if (v26 != v38)
        {
          *v4 = *v25;
        }

        v4 -= 16;
        v38 = v25;
        v13 = v37;
      }

      while (v25 > v37);
      v38 = v25;
    }
  }

LABEL_36:
  if (v5 != v13 || v5 >= &v13[(v38 - v13 + (v38 - v13 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v5, v13, 16 * ((v38 - v13) / 16));
  }

  return 1;
}

void sub_1D6BC1E14(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = a3;
  v48 = type metadata accessor for ScoredFormatContentSlotItemResolution(0);
  MEMORY[0x1EEE9AC00](v48, v8);
  v47 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v43 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = v49 - a2;
  if (v49 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v17 = (a2 - a1) / v15;
  v52 = a1;
  v51 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43[1] = v4;
    v26 = a4 + v19;
    if (v19 < 1)
    {
      v29 = a4 + v19;
    }

    else
    {
      v27 = -v15;
      v28 = a4 + v19;
      v29 = v26;
      v45 = v27;
      v46 = a4;
      do
      {
        v43[0] = v29;
        v30 = a2;
        v31 = a2 + v27;
        while (1)
        {
          v33 = v49;
          if (v30 <= a1)
          {
            v52 = v30;
            v50 = v43[0];
            goto LABEL_59;
          }

          v44 = v29;
          v49 += v27;
          v34 = v28 + v27;
          sub_1D6BC2358(v34, v13, type metadata accessor for ScoredFormatContentSlotItemResolution);
          v35 = v31;
          v36 = v31;
          v37 = v13;
          v38 = v47;
          sub_1D6BC2358(v36, v47, type metadata accessor for ScoredFormatContentSlotItemResolution);
          v39 = *(v48 + 20);
          v40 = *(v37 + v39);
          v41 = *(v38 + v39);
          v42 = v38;
          v13 = v37;
          sub_1D5D1EBB8(v42, type metadata accessor for ScoredFormatContentSlotItemResolution);
          sub_1D5D1EBB8(v37, type metadata accessor for ScoredFormatContentSlotItemResolution);
          if (v41 <= v40)
          {
            break;
          }

          v29 = v34;
          if (v33 < v28 || v49 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v35;
          }

          else
          {
            v31 = v35;
            if (v33 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v34;
          v32 = v34 > v46;
          v27 = v45;
          if (!v32)
          {
            a2 = v30;
            goto LABEL_58;
          }
        }

        if (v33 < v30 || v49 >= v30)
        {
          a2 = v35;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v44;
          v27 = v45;
        }

        else
        {
          v29 = v44;
          v27 = v45;
          a2 = v35;
          if (v33 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v46);
    }

LABEL_58:
    v52 = a2;
    v50 = v29;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v20 = a4 + v18;
    v50 = a4 + v18;
    if (v18 >= 1 && a2 < v49)
    {
      do
      {
        sub_1D6BC2358(a2, v13, type metadata accessor for ScoredFormatContentSlotItemResolution);
        v22 = v47;
        sub_1D6BC2358(a4, v47, type metadata accessor for ScoredFormatContentSlotItemResolution);
        v23 = *(v48 + 20);
        v24 = *&v13[v23];
        v25 = *(v22 + v23);
        sub_1D5D1EBB8(v22, type metadata accessor for ScoredFormatContentSlotItemResolution);
        sub_1D5D1EBB8(v13, type metadata accessor for ScoredFormatContentSlotItemResolution);
        if (v25 <= v24)
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51 = a4 + v15;
          a4 += v15;
        }

        a1 += v15;
        v52 = a1;
      }

      while (a4 < v20 && a2 < v49);
    }
  }

LABEL_59:
  sub_1D62FF580(&v52, &v51, &v50);
}

uint64_t type metadata accessor for ScoredFormatContentSlotItemResolution(uint64_t a1)
{
  result = qword_1EDF1CDD8;
  if (!qword_1EDF1CDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6BC2358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6BC23C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), __n128 a5)
{
  sub_1D6BC2698(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D6BC2440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), __n128 a4)
{
  sub_1D6BC2698(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D6BC24B0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D6BC2648(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6BC2514()
{
  result = qword_1EDF34938;
  if (!qword_1EDF34938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34938);
  }

  return result;
}

uint64_t sub_1D6BC259C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), __n128 a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6BC2698(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6BC2600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D6BC2648(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D6BC2698(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6BC26FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6BC278C(uint64_t a1)
{
  result = type metadata accessor for FormatContentSlotItemResolution(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D6BC2824()
{

  return swift_deallocClassInstance();
}

uint64_t FeedNativeAdInsertBlueprintModifier.init(nativeAdManager:nativeAdInsertion:feedContext:policyValidator:layoutCollectionProvider:subscriptionList:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, uint64_t a13)
{
  sub_1D5B63F14(a1, a9);
  v23[0] = a7;
  v23[1] = a8;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  inserted = type metadata accessor for FeedNativeAdInsertBlueprintModifier(0, v23);
  sub_1D6BC29CC(a2, a9 + inserted[23], type metadata accessor for FeedNativeAdInsertion);
  sub_1D6BC29CC(a3, a9 + inserted[24], type metadata accessor for FeedContext);
  sub_1D5B63F14(a4, a9 + inserted[25]);
  result = sub_1D5B63F14(a5, a9 + inserted[26]);
  *(a9 + inserted[27]) = a6;
  return result;
}

uint64_t sub_1D6BC29CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double FeedNativeAdInsertBlueprintModifier.modify(blueprint:completion:)(uint64_t a1, void (*a2)(char *), uint64_t a3, __n128 *a4)
{
  v4 = a4;
  v170 = a3;
  v169 = a2;
  v168 = a1;
  v5 = a4[5].n128_u64[0];
  v174 = a4[1];
  v182 = v174;
  v6 = v174.n128_u64[0];
  v183 = a4[3].n128_u64[1];
  v184 = v5;
  v7 = v183;
  v166 = sub_1D725E50C();
  v165 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166, v8);
  v164 = &v131 - v9;
  v162 = v4;
  v10 = v4[-1].n128_u64[1];
  v4 = (v4 - 8);
  v151 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v138 = v13;
  v150 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = v174.n128_u64[1];
  v14 = sub_1D725CE8C();
  v136 = sub_1D726393C();
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136, v15);
  v144 = (&v131 - v16);
  v153 = v14;
  v152 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v147 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v149 = &v131 - v22;
  v160 = v6;
  v159 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v23, v24);
  v158 = &v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = v174;
  v171 = v7;
  v183 = v7;
  v184 = v5;
  v26 = sub_1D725FACC();
  v27 = *(v26 - 8);
  v148 = v27[8];
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v131 - v29;
  v182 = v174;
  v183 = v7;
  v184 = v5;
  v31 = sub_1D725D68C();
  v157 = sub_1D726393C();
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157, v32);
  v34 = &v131 - v33;
  v173 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v35, v36);
  v143 = &v131 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v161 = &v131 - v40;
  v167 = swift_allocBox();
  v42 = v41;
  v43 = v27[2];
  v43(v41, v168, v26);
  v146 = v27 + 2;
  v145 = v43;
  v43(v30, v42, v26);
  v44 = *(&v4[2] + 8);
  v175 = v174;
  v176 = v44;
  v163 = v44;
  v45 = v4[3].n128_u64[1];
  v177 = v45;
  v178 = v171;
  v155 = *(&v4[4] + 8);
  v179 = v155;
  v154 = v5;
  v180 = v5;
  v181 = v172;
  swift_getWitnessTable();
  sub_1D726246C();
  v46 = v173;
  v140 = v27;
  v47 = v27[1];
  v141 = v30;
  v139 = v26;
  v47(v30, v26);
  if ((*(v46 + 48))(v34, 1, v31) == 1)
  {
    v156[1](v34, v157);
    v48 = v165;
    v49 = v164;
    v50 = v166;
    (*(v165 + 104))(v164, *MEMORY[0x1E69D7ED0], v166);
    v169(v49);
    (*(v48 + 8))(v49, v50);
  }

  else
  {
    v51 = v45;
    v52 = v166;
    v53 = v169;
    v54 = *(v46 + 32);
    v55 = v161;
    v157 = v46 + 32;
    v156 = v54;
    (v54)(v161, v34, v31);
    v56 = v158;
    sub_1D725D61C();
    v57 = v163;
    v58 = v160;
    v59 = (*(v163 + 16))(v160, v163);
    (*(v159 + 8))(v56, v58);
    v60 = v55;
    if (v59)
    {
      swift_getWitnessTable();
      v133 = v31;
      if (sub_1D7262CCC())
      {
        if (qword_1EDF1BB68 != -1)
        {
          swift_once();
        }

        v61 = qword_1EDFFC830;
        sub_1D5C384A0(0);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1D7273AE0;
        v63 = sub_1D7260DEC();
        v65 = v64;
        *(v62 + 56) = MEMORY[0x1E69E6158];
        *(v62 + 64) = sub_1D5B7E2C0();
        *(v62 + 32) = v63;
        *(v62 + 40) = v65;
        v66 = sub_1D7262EDC();
        sub_1D725C30C("Aborting native ad insertion, section is empty, placement=%{public}@", 68, 2, &dword_1D5B42000, v61, v66, v62);

        v67 = v165;
        v68 = v164;
        (*(v165 + 104))(v164, *MEMORY[0x1E69D7ED0], v52);
        v53(v68);
        (*(v67 + 8))(v68, v52);
      }

      else
      {
        v77 = v154;
        v78 = v144;
        v79 = v58;
        v80 = v51;
        v81 = v171;
        sub_1D6BC3D5C(v55, v79, v57, v144, *(&v155 + 1), v154);
        v82 = v152;
        v83 = v153;
        if ((*(v152 + 48))(v78, 1, v153) != 1)
        {
          v86 = *(v82 + 32);
          v159 = v82 + 32;
          v160 = v86;
          v87 = v149;
          v132 = v80;
          v88 = (v86)(v149, v78, v83);
          MEMORY[0x1EEE9AC00](v88, v89);
          v90 = v83;
          v91 = v163;
          *(&v131 - 6) = v174;
          *(&v131 - 5) = v91;
          *&v92 = v80;
          *(&v92 + 1) = v81;
          v93 = v155;
          *(&v131 - 4) = v92;
          *(&v131 - 3) = v93;
          *(&v131 - 4) = v77;
          v94 = v172;
          *(&v131 - 3) = v172;
          v129 = v87;
          v95 = v82;
          v96 = v168;
          v130 = v168;
          sub_1D7260E3C();
          v164 = sub_1D725BDCC();
          v97 = v151;
          v165 = *(v151 + 16);
          v166 = v151 + 16;
          (v165)(v150, v94, v162);
          v98 = v95;
          (*(v95 + 16))(v147, v87, v90);
          v99 = v173;
          (*(v173 + 16))(v143, v60, v133);
          v100 = v139;
          v145(v141, v96);
          v101 = *(v97 + 80);
          v102 = v97;
          v103 = (v101 + 88) & ~v101;
          v158 = (v103 + v138);
          v136 = v103;
          v104 = (v103 + v138 + *(v98 + 80)) & ~*(v98 + 80);
          v105 = (v137 + *(v99 + 80) + v104) & ~*(v99 + 80);
          v106 = (v134 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
          v107 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
          v108 = v140;
          v138 = *(v140 + 80);
          v142 = v138 + 16;
          v109 = (v138 + 16 + v107) & ~v138;
          v144 = (v101 | v138 | 7);
          v110 = swift_allocObject();
          v111 = v163;
          *(v110 + 16) = v174;
          *(v110 + 32) = v111;
          v112 = v171;
          *(v110 + 48) = v132;
          *(v110 + 56) = v112;
          *(v110 + 64) = v155;
          *(v110 + 80) = v154;
          v113 = *(v102 + 32);
          v151 = v102 + 32;
          v137 = v113;
          v113(v110 + v103, v150, v162);
          v160(v110 + v104, v147, v153);
          (v156)(v110 + v105, v143, v133);
          *(v110 + v106) = v167;
          v114 = (v110 + v107);
          v115 = v170;
          *v114 = v169;
          v114[1] = v115;
          v160 = v108[4];
          v116 = v110 + v109;
          v117 = v141;
          v160(v116, v141, v100);

          v118 = sub_1D725B92C();
          sub_1D725BA8C();

          v119 = v150;
          v120 = v162;
          (v165)(v150, v172, v162);
          (v145)(v117, v168, v100);
          v121 = (v158 + 7) & 0xFFFFFFFFFFFFFFF8;
          v122 = (v142 + v121) & ~v138;
          v123 = swift_allocObject();
          v124 = v163;
          *(v123 + 16) = v174;
          *(v123 + 32) = v124;
          v125 = v171;
          *(v123 + 48) = v132;
          *(v123 + 56) = v125;
          *(v123 + 64) = v155;
          *(v123 + 80) = v154;
          v137(v123 + v136, v119, v120);
          v126 = (v123 + v121);
          *v126 = v169;
          v126[1] = v115;
          v160(v123 + v122, v117, v100);

          v127 = sub_1D725B92C();
          sub_1D725BACC();

          (*(v173 + 8))(v161, v133);
          (*(v152 + 8))(v149, v153);
          goto LABEL_15;
        }

        (*(v135 + 8))(v78, v136);
        v84 = v165;
        v85 = v164;
        (*(v165 + 104))(v164, *MEMORY[0x1E69D7ED0], v52);
        v169(v85);
        (*(v84 + 8))(v85, v52);
      }

      (*(v173 + 8))(v55, v133);
    }

    else
    {
      if (qword_1EDF1BB68 != -1)
      {
        swift_once();
      }

      v69 = qword_1EDFFC830;
      sub_1D5C384A0(0);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_1D7273AE0;
      v71 = sub_1D7260DEC();
      v73 = v72;
      *(v70 + 56) = MEMORY[0x1E69E6158];
      *(v70 + 64) = sub_1D5B7E2C0();
      *(v70 + 32) = v71;
      *(v70 + 40) = v73;
      v74 = sub_1D7262EDC();
      sub_1D725C30C("Aborting native ad insertion, group doesn't support native ads, placement=%{public}@", 84, 2, &dword_1D5B42000, v69, v74, v70);

      v75 = v165;
      v76 = v164;
      (*(v165 + 104))(v164, *MEMORY[0x1E69D7ED0], v52);
      v53(v76);
      (*(v75 + 8))(v76, v52);
      (*(v173 + 8))(v55, v31);
    }
  }

LABEL_15:

  return result;
}

uint64_t sub_1D6BC3C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1D725D68C();
  v15 = sub_1D725D62C();
  v17 = v16;
  v26[0] = a3;
  v26[1] = a4;
  v26[2] = a5;
  v26[3] = a6;
  v26[4] = a7;
  v26[5] = a8;
  v26[6] = a9;
  v26[7] = a10;
  v26[8] = a11;
  v18 = *(type metadata accessor for FeedNativeAdInsertBlueprintModifier(0, v26) + 92);
  v19 = (a2 + *(type metadata accessor for FeedNativeAdInsertion(0) + 20) + v18);
  if (v15 == *v19 && v17 == v19[1])
  {
    v21 = 1;
  }

  else
  {
    v21 = sub_1D72646CC();
  }

  return v21 & 1;
}

void *sub_1D6BC3D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, void *a5@<X8>, uint64_t a6, uint64_t a7)
{
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = v13;
  v21[1] = v14;
  v21[2] = v15;
  v21[3] = a7;
  sub_1D725D68C();
  sub_1D725D61C();
  (*(a4 + 24))(v21, a2, a4);
  (*(v10 + 8))(v12, a2);
  if (LOBYTE(v21[0]))
  {
    if (LOBYTE(v21[0]) == 1)
    {
      swift_getWitnessTable();
      v16 = sub_1D7262C8C();
      v17 = __OFSUB__(v16, 1);
      result = (v16 - 1);
      if (v17)
      {
        __break(1u);
      }

      else
      {
        sub_1D725D6AC();
        v19 = sub_1D725CE8C();
        return (*(*(v19 - 8) + 56))(a5, 0, 1, v19);
      }
    }

    else
    {
      v20 = sub_1D725CE8C();
      return (*(*(v20 - 8) + 56))(a5, 1, 1, v20);
    }
  }

  else
  {
    swift_getWitnessTable();
    return sub_1D7262C9C();
  }

  return result;
}

uint64_t sub_1D6BC3F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a3 - 8);
  v71 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v72 = v5;
  v70 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725E9DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6BC6C30(0, &qword_1EDF3C370, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v63 - v13;
  v15 = sub_1D7258DBC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v73 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v4[3];
  v20 = v4[8];
  v21 = v4[11];
  v76 = v4[4];
  v77 = v19;
  v80 = v19;
  v81 = v76;
  v78 = v20;
  v79 = v21;
  *&v82 = v20;
  *(&v82 + 1) = v21;
  sub_1D725FACC();
  sub_1D725FABC();
  v22 = *(v16 + 48);
  v74 = v15;
  if (v22(v14, 1, v15) == 1)
  {
    sub_1D6BC6C94(v14);
  }

  else
  {
    (*(v16 + 32))(v73, v14, v74);
    v23 = v75;
    __swift_project_boxed_opaque_existential_1((v75 + *(a3 + 104)), *(v75 + *(a3 + 104) + 24));
    sub_1D725F44C();
    v24 = sub_1D725E9AC();
    (*(v7 + 8))(v10, v6);
    v25 = v23;
    if (v24)
    {
      [v24 frame];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      MEMORY[0x1EEE9AC00](v34, v35);
      v36 = v76;
      v63[-14] = v77;
      v63[-13] = v36;
      v67 = *(a3 + 32);
      v69 = *(a3 + 40);
      v37 = v69;
      v63[-12] = v67;
      v63[-11] = v37;
      v68 = *(a3 + 48);
      v38 = v78;
      v63[-10] = v68;
      v63[-9] = v38;
      v39 = *(a3 + 72);
      v66 = *(a3 + 64);
      v63[-8] = v66;
      v63[-7] = v39;
      v64 = v39;
      v63[-6] = v79;
      v63[-5] = v23;
      v63[-4] = v27;
      v63[-3] = v29;
      v63[-2] = v31;
      v63[-1] = v33;
      sub_1D6BC6D78();
      sub_1D725BDCC();
      v40 = v71;
      v65 = *(v71 + 16);
      v41 = v70;
      v65(v70, v25, a3);
      v42 = (*(v40 + 80) + 88) & ~*(v40 + 80);
      v43 = swift_allocObject();
      v44 = v76;
      v43[2] = v77;
      v43[3] = v44;
      v45 = v69;
      v43[4] = v67;
      v43[5] = v45;
      v46 = v78;
      v43[6] = v68;
      v43[7] = v46;
      v43[8] = v66;
      v43[9] = v39;
      v43[10] = v79;
      v71 = *(v40 + 32);
      (v71)(v43 + v42, v41, a3);
      v47 = sub_1D725B92C();
      sub_1D7260E3C();
      v63[1] = sub_1D725BA8C();

      v65(v41, v75, a3);
      v48 = swift_allocObject();
      v49 = v76;
      v48[2] = v77;
      v48[3] = v49;
      v50 = v69;
      v48[4] = v67;
      v48[5] = v50;
      v51 = v78;
      v48[6] = v68;
      v48[7] = v51;
      v52 = v64;
      v48[8] = v66;
      v48[9] = v52;
      v48[10] = v79;
      (v71)(v48 + v42, v41, a3);
      v53 = sub_1D725B92C();
      v54 = sub_1D725BB6C();

      (*(v16 + 8))(v73, v74);
      return v54;
    }

    (*(v16 + 8))(v73, v74);
  }

  if (qword_1EDF1BB68 != -1)
  {
    swift_once();
  }

  v56 = qword_1EDFFC830;
  v57 = sub_1D7262EBC();
  sub_1D5C384A0(0);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1D7273AE0;
  v59 = sub_1D7260DEC();
  v61 = v60;
  *(v58 + 56) = MEMORY[0x1E69E6158];
  *(v58 + 64) = sub_1D5B7E2C0();
  *(v58 + 32) = v59;
  *(v58 + 40) = v61;
  sub_1D725C30C("Failed to find layout for placement=%{public}@", 46, 2, &dword_1D5B42000, v56, v57, v58);

  v62 = *(a3 + 48);
  v80 = v77;
  v81 = v76;
  v82 = *(a3 + 32);
  v83 = v62;
  v84 = v78;
  v85 = *(a3 + 64);
  v86 = v79;
  type metadata accessor for FeedNativeAdInsertBlueprintModifier.Errors(0, &v80);
  swift_getWitnessTable();
  swift_allocError();
  sub_1D6BC6C30(0, &qword_1EDF3B9B8, MEMORY[0x1E69B4428], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BAFC();
}

uint64_t sub_1D6BC474C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (*a15)(void, void), uint64_t a16, uint64_t a17)
{
  v131 = a8;
  v132 = a7;
  v133 = a6;
  v145 = a5;
  v121 = a4;
  v138 = a3;
  v141 = a1;
  v142 = a2;
  v114 = a16;
  v108 = a15;
  v143 = a13;
  v130 = sub_1D725D85C();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v17);
  v128 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = a9;
  v149 = a10;
  v150 = a14;
  v151 = a17;
  v127 = sub_1D725FACC();
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127, v19);
  v125 = &v101 - v20;
  v148 = a9;
  v149 = a10;
  v150 = a14;
  v151 = a17;
  v124 = sub_1D725E50C();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124, v21);
  v122 = &v101 - v22;
  v120 = sub_1D7260E3C();
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v23);
  v118 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D725CE8C();
  WitnessTable = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v112 = WitnessTable;
  v111 = v27;
  v28 = sub_1D725B15C();
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v109 = &v101 - v30;
  v113 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v110 = &v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v107 = &v101 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v136 = &v101 - v39;
  v148 = a9;
  v149 = a10;
  v150 = a14;
  v151 = a17;
  v147 = sub_1D725D68C();
  v140 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147, v40);
  v106 = &v101 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v139 = &v101 - v44;
  v105 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v45, v46);
  v104 = &v101 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v101 - v50;
  MEMORY[0x1EEE9AC00](v52, v53);
  v103 = &v101 - v54;
  v157 = v25;
  v116 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v55, v56);
  v146 = &v101 - v57;
  v137 = swift_projectBox();
  if (qword_1EDF1BB68 != -1)
  {
    swift_once();
  }

  v102 = qword_1EDFFC830;
  sub_1D5C384A0(0);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1D7273AE0;
  v144 = a9;
  v148 = a9;
  v149 = a10;
  v117 = a11;
  v150 = a11;
  v151 = a12;
  v115 = a12;
  v152 = v143;
  v153 = a14;
  v145 = a14;
  v59 = v114;
  v154 = v108;
  v155 = v114;
  v134 = a17;
  v156 = a17;
  inserted = type metadata accessor for FeedNativeAdInsertBlueprintModifier(0, &v148);
  v61 = v142;
  v62 = sub_1D7260DEC();
  v64 = v63;
  *(v58 + 56) = MEMORY[0x1E69E6158];
  *(v58 + 64) = sub_1D5B7E2C0();
  *(v58 + 32) = v62;
  *(v58 + 40) = v64;
  v65 = sub_1D7262EDC();
  sub_1D725C30C("Placing native ad in feed, placement=%{public}@", 47, 2, &dword_1D5B42000, v102, v65, v58);

  v66 = *(inserted + 96);
  sub_1D725CE7C();
  (*(v59 + 16))(v141, &v61[v66], v51, a10, v59);
  v108 = *(v105 + 8);
  v108(v51, a10);
  sub_1D725CE6C();
  v67 = v104;
  v68 = v157;
  sub_1D725CE7C();
  v114 = (*(v59 + 8))(a10, v59);
  v70 = v69;
  v108(v67, a10);
  v135 = a10;
  if (v70)
  {
    v71 = v121;
    v72 = v70;
    v73 = v114;
  }

  else
  {
    v73 = sub_1D725CE5C();
    v72 = v74;
    v71 = v121;
  }

  v75 = sub_1D725CE5C();
  v77 = v76;
  v78 = v107;
  v79 = v147;
  sub_1D725D61C();
  v148 = v73;
  v149 = v72;
  v150 = v75;
  v151 = v77;
  v80 = v144;
  (*(v115 + 8))(v78, &v148, v144);
  v81 = *(v113 + 8);
  v81(v78, v80);

  (*(v140 + 16))(v106, v71, v79);
  swift_getWitnessTable();
  v82 = sub_1D726281C();
  MEMORY[0x1DA6F27E0](v82, v68, v112, v111);
  sub_1D725D60C();
  sub_1D725D66C();
  v83 = v110;
  sub_1D725D61C();
  (*(v117 + 24))(v80);
  v81(v83, v80);
  v84 = v127;
  if (v148)
  {
    v85 = v120;
    v86 = v119;
    if (v148 == 1)
    {
      sub_1D725D64C();
    }
  }

  else
  {
    sub_1D725D65C();
    v85 = v120;
    v86 = v119;
  }

  swift_beginAccess();
  sub_1D725FA5C();
  swift_endAccess();
  v87 = v118;
  (*(v86 + 16))(v118, v141, v85);
  v88 = (*(v86 + 88))(v87, v85);
  if (v88 == *MEMORY[0x1E69B4410])
  {
    sub_1D7260DFC();
    v89 = 1;
    v90 = v142;
LABEL_16:
    v91 = *(v90 + 3);
    v92 = *(v90 + 4);
    __swift_project_boxed_opaque_existential_1(v90, v91);
    (*(v92 + 24))(v89, v91, v92);
    goto LABEL_17;
  }

  v90 = v142;
  if (v88 == *MEMORY[0x1E69B4418])
  {
    v89 = 1;
    goto LABEL_16;
  }

  if (v88 == *MEMORY[0x1E69B4420])
  {
    v89 = 0;
    goto LABEL_16;
  }

LABEL_17:
  (*(v86 + 8))(v87, v85);
  v93 = v137;
  swift_beginAccess();
  v94 = v126;
  v95 = v125;
  (*(v126 + 16))(v125, v93, v84);
  v96 = v129;
  v97 = v128;
  v98 = v130;
  (*(v129 + 104))(v128, *MEMORY[0x1E69D7A38], v130);
  v99 = v122;
  sub_1D725E4FC();
  (*(v96 + 8))(v97, v98);
  (*(v94 + 8))(v95, v84);
  v133(v99);
  (*(v123 + 8))(v99, v124);
  (*(v140 + 8))(v139, v147);
  return (*(v116 + 8))(v146, v157);
}

uint64_t sub_1D6BC54A0(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v38 = a8;
  v45 = a5;
  v47 = a4;
  v48 = a3;
  v43 = a1;
  v37 = a13;
  v50 = a6;
  v51 = a7;
  v52 = a11;
  v53 = a14;
  v46 = sub_1D725E50C();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v17);
  v19 = &v36 - v18;
  if (qword_1EDF1BB68 != -1)
  {
    swift_once();
  }

  v40 = qword_1EDFFC830;
  v39 = sub_1D7262EBC();
  sub_1D5C384A0(0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7270C10;
  v41 = a7;
  v42 = a6;
  v50 = a6;
  v51 = a7;
  v52 = v38;
  v53 = a9;
  v54 = a10;
  v55 = a11;
  v56 = a12;
  v57 = v37;
  v58 = a14;
  type metadata accessor for FeedNativeAdInsertBlueprintModifier(0, &v50);
  v21 = sub_1D7260DEC();
  v23 = v22;
  v24 = MEMORY[0x1E69E6158];
  *(v20 + 56) = MEMORY[0x1E69E6158];
  v25 = sub_1D5B7E2C0();
  *(v20 + 64) = v25;
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  v50 = 0;
  v51 = 0xE000000000000000;
  v49 = v43;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  v26 = v50;
  v27 = v51;
  *(v20 + 96) = v24;
  *(v20 + 104) = v25;
  *(v20 + 72) = v26;
  *(v20 + 80) = v27;
  sub_1D725C30C("Failed to update native ad in feed, placement=%{public}@, error=%{public}@", 74, 2, &dword_1D5B42000, v40, v39, v20);

  v28 = a2[3];
  v29 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v28);
  (*(v29 + 24))(0, v28, v29);
  v50 = v42;
  v51 = v41;
  v52 = a11;
  v53 = a14;
  v30 = sub_1D725FACC();
  v31 = sub_1D725D85C();
  v32 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(v30 - 8) + 16))(v19, v45, v30);
  (*(*(v31 - 8) + 104))(&v19[v32], *MEMORY[0x1E69D7A38], v31);
  v33 = v44;
  v34 = v46;
  (*(v44 + 104))(v19, *MEMORY[0x1E69D7EB8], v46);
  v48(v19);
  return (*(v33 + 8))(v19, v34);
}

uint64_t sub_1D6BC583C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE46F70](a1, WitnessTable);
}

uint64_t sub_1D6BC5890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12)
{
  v27 = a7;
  v28 = a8;
  v26 = a6;
  v29 = sub_1D726078C();
  v17 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = a2;
  v30[1] = a3;
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = v26;
  v30[5] = v27;
  v30[6] = v28;
  v30[7] = a11;
  v30[8] = a12;
  inserted = type metadata accessor for FeedNativeAdInsertBlueprintModifier(0, v30);
  v22 = *(inserted + 92);
  sub_1D7260DEC();
  sub_1D726077C();
  sub_1D6BC5A48(a1 + v22, inserted);
  __swift_project_boxed_opaque_existential_1((a1 + *(inserted + 100)), *(a1 + *(inserted + 100) + 24));
  sub_1D7260C8C();
  v23 = sub_1D725BD9C();

  (*(v17 + 8))(v20, v29);
  return v23;
}