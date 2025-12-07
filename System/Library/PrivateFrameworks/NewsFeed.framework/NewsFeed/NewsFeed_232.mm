uint64_t sub_1D7023490()
{
  v1 = (v0 + *(type metadata accessor for FeedClusteringOptions(0) + 72));
  sub_1D67113E8(*v1, v1[1], v1[2], v1[3], v1[4]);

  return sub_1D72593EC();
}

uint64_t sub_1D7023524(uint64_t a1)
{
  sub_1D7031448(0);
  v36 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeedClusteringOptions(0);
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v39 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7031C8C(0);
  v10 = sub_1D72640FC();
  v11 = 0;
  v37 = a1;
  v38 = v10;
  v14 = *(a1 + 64);
  v13 = a1 + 64;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v35 = v3;
  v32[1] = v3 + 32;
  v33 = v10 + 64;
  v19 = v39;
  if ((v16 & v12) != 0)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_10:
      v23 = v20 | (v11 << 6);
      v24 = (*(v37 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      sub_1D702DE88(*(v37 + 56) + *(v34 + 72) * v23, v19, type metadata accessor for FeedClusteringOptions);

      sub_1D7023828(v19, v6);
      sub_1D7031C2C(v19, type metadata accessor for FeedClusteringOptions);
      *(v33 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v19 = v38;
      v27 = (*(v38 + 48) + 16 * v23);
      *v27 = v25;
      v27[1] = v26;
      (*(v35 + 32))(*(v19 + 56) + *(v35 + 72) * v23, v6, v36);
      v28 = *(v19 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      *(v19 + 16) = v30;
      v19 = v39;
      if (!v17)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v11 >= v18)
      {
        return v38;
      }

      v22 = *(v13 + 8 * v11);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);

  result = sub_1D7031C2C(v19, type metadata accessor for FeedClusteringOptions);
  __break(1u);
  return result;
}

uint64_t sub_1D7023828@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  sub_1D5E3B6C0(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v104 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D72593FC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v103 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E3B330(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v98 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7031B94(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v101 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725943C();
  v99 = *(v15 - 8);
  v100 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E3B6E0(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v96 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v92 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v92 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v95 = &v92 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v92 - v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v92 - v39;
  v41 = sub_1D72593CC();
  v106 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v42);
  v92 = &v92 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v112 = &v92 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v111 = &v92 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v110 = &v92 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v109 = &v92 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v108 = &v92 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v107 = &v92 - v61;
  v62 = type metadata accessor for FeedClusteringOptions(0);
  v63 = a1 + v62[11];
  v64 = *(v63 + 8);
  v113 = v18;
  v94 = v29;
  if (v64 == 1)
  {
    v102 = sub_1D725912C();
  }

  else
  {
    v102 = *v63;
  }

  sub_1D702DE88(a1 + v62[12], v40, sub_1D5E3B6E0);
  v65 = v106;
  v66 = *(v106 + 48);
  if (v66(v40, 1, v41) == 1)
  {
    sub_1D72593BC();
    if (v66(v40, 1, v41) != 1)
    {
      sub_1D7031C2C(v40, sub_1D5E3B6E0);
    }
  }

  else
  {
    (*(v65 + 32))(v107, v40, v41);
  }

  v67 = a1 + v62[9];
  if (*(v67 + 8))
  {
    v97 = sub_1D725914C();
  }

  else
  {
    v97 = *v67;
  }

  v68 = v106;
  sub_1D702DE88(a1 + v62[10], v36, sub_1D5E3B6E0);
  if (v66(v36, 1, v41) == 1)
  {
    sub_1D72593BC();
    if (v66(v36, 1, v41) != 1)
    {
      sub_1D7031C2C(v36, sub_1D5E3B6E0);
    }
  }

  else
  {
    (*(v68 + 32))(v108, v36, v41);
  }

  v69 = a1 + v62[13];
  if (*(v69 + 8))
  {
    v106 = sub_1D725916C();
  }

  else
  {
    v106 = *v69;
  }

  v70 = v95;
  sub_1D702DE88(a1 + v62[14], v95, sub_1D5E3B6E0);
  if (v66(v70, 1, v41) == 1)
  {
    sub_1D72593BC();
    if (v66(v70, 1, v41) != 1)
    {
      sub_1D7031C2C(v70, sub_1D5E3B6E0);
    }
  }

  else
  {
    (*(v68 + 32))(v109, v70, v41);
  }

  if (*(a1 + v62[15]))
  {
    v95 = *(a1 + v62[15]);
  }

  else
  {
    v95 = sub_1D5C44DF4(MEMORY[0x1E69E7CC0]);
  }

  v71 = v98;
  v93 = v25;
  v72 = (a1 + v62[16]);
  v73 = v68;
  if (v72[1])
  {

    v98 = sub_1D725910C();
  }

  else
  {
    v98 = *v72;
  }

  v74 = v94;
  sub_1D702DE88(a1 + v62[17], v94, sub_1D5E3B6E0);
  v75 = v66(v74, 1, v41);
  v76 = v96;
  if (v75 == 1)
  {
    sub_1D72593BC();
    if (v66(v74, 1, v41) != 1)
    {
      sub_1D7031C2C(v74, sub_1D5E3B6E0);
    }
  }

  else
  {
    (*(v73 + 32))(v110, v74, v41);
  }

  v77 = (a1 + v62[6]);
  if (v77[1])
  {
    v94 = sub_1D72590BC();
  }

  else
  {
    v94 = *v77;
  }

  v78 = v73;
  v79 = v93;
  sub_1D702DE88(a1 + v62[7], v93, sub_1D5E3B6E0);
  if (v66(v79, 1, v41) == 1)
  {
    sub_1D72593BC();
    if (v66(v79, 1, v41) != 1)
    {
      sub_1D7031C2C(v79, sub_1D5E3B6E0);
    }

    if (a1[1])
    {
      goto LABEL_39;
    }
  }

  else
  {
    (*(v78 + 32))(v111, v79, v41);
    if (a1[1])
    {
LABEL_39:
      v93 = sub_1D72590DC();
      goto LABEL_42;
    }
  }

  v93 = *a1;
LABEL_42:
  sub_1D702DE88(a1 + v62[5], v76, sub_1D5E3B6E0);
  if (v66(v76, 1, v41) == 1)
  {
    sub_1D72593BC();
    v80 = v66(v76, 1, v41);
    v81 = v113;
    if (v80 != 1)
    {
      sub_1D7031C2C(v76, sub_1D5E3B6E0);
    }
  }

  else
  {
    (*(v78 + 32))(v112, v76, v41);
    v81 = v113;
  }

  sub_1D702DE88(a1 + v62[8], v71, sub_1D5E3B330);
  v82 = type metadata accessor for FeedGroupBundleArticleQuotas(0);
  if ((*(*(v82 - 8) + 48))(v71, 1, v82) == 1)
  {
    sub_1D7031C2C(v71, sub_1D5E3B330);
    v84 = v99;
    v83 = v100;
    v85 = v101;
    v86 = (*(v99 + 56))(v101, 1, 1, v100);
    MEMORY[0x1DA6F0820](v86);
    if ((*(v84 + 48))(v85, 1, v83) != 1)
    {
      sub_1D7031C2C(v85, sub_1D7031B94);
    }
  }

  else
  {
    (*(v78 + 16))(v92, v71 + *(v82 + 24), v41);

    v87 = v101;
    sub_1D725941C();
    sub_1D7031C2C(v71, type metadata accessor for FeedGroupBundleArticleQuotas);
    v89 = v99;
    v88 = v100;
    (*(v99 + 56))(v87, 0, 1, v100);
    (*(v89 + 32))(v81, v87, v88);
  }

  v90 = (a1 + v62[18]);
  sub_1D67113E8(*v90, v90[1], v90[2], v90[3], v90[4]);
  sub_1D72593EC();
  sub_1D702DE88(a1 + v62[20], v104, sub_1D5E3B6C0);
  v101 = sub_1D725913C();
  v100 = sub_1D725915C();
  sub_1D725917C();
  sub_1D725911C();
  sub_1D72590CC();
  sub_1D72590EC();
  sub_1D725919C();
  sub_1D72590FC();
  sub_1D7031B18(&qword_1EDF18970, 255, MEMORY[0x1E69E3388], MEMORY[0x1E69E3380]);
  sub_1D7031B18(&qword_1EDF18978, 255, MEMORY[0x1E69E3358], MEMORY[0x1E69E3350]);
  return sub_1D725937C();
}

void sub_1D70245A0(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v5 = v4;
  v104 = v5;
  v101 = *v5;
  v10 = sub_1D725944C();
  v11 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v91 - v18;
  v20 = a2[1];
  v102 = *a2;
  v21 = *(v11 + 16);
  v21(&v91 - v18, a1, v10, v17);
  v98 = v14;
  (v21)(v14, a1, v10);
  v103 = a3;

  if (sub_1D7025508())
  {
    if (qword_1EDF12600 == -1)
    {
LABEL_3:
      v101 = v19;
      v93 = v20;
      v94 = v11;
      v95 = v10;
      v96 = a4;
      v22 = qword_1EDFFC618;
      v23 = sub_1D7262EDC();
      v10 = MEMORY[0x1E69E7CC0];
      v92 = v22;
      sub_1D725C30C("Found topic splitting configuration specified by smarter placement", 66, 2, &dword_1D5B42000, v22, v23, MEMORY[0x1E69E7CC0]);
      v24 = *(v102 + 16);

      if (v24)
      {
        v11 = 0;
        v26 = v25 + 48;
        v97 = v10;
        v91 = v25 + 48;
        do
        {
          v19 = (v26 + 24 * v11++);
          while (1)
          {
            if (v11 - 1 >= v24)
            {
              __break(1u);
              goto LABEL_48;
            }

            v27 = *(v19 - 1);
            v28 = *v19;
            v106 = *(v19 - 2);
            a4 = v106;
            v107 = v27;
            v108 = v28;
            swift_unknownObjectRetain();

            v30 = sub_1D7025098(a4, v103, v11 - 1, v29);
            sub_1D7025A24(&v112, &v109, &v106, v30);
            v31 = v112;
            v32 = v113;
            v33 = v114;
            v20 = v109;
            v34 = v110;
            v99 = v111;
            swift_unknownObjectRetain();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v100 = v34;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v10 = sub_1D6996914(0, *(v10 + 2) + 1, 1, v10);
            }

            v37 = *(v10 + 2);
            v36 = *(v10 + 3);
            v105 = v10;
            if (v37 >= v36 >> 1)
            {
              v105 = sub_1D6996914((v36 > 1), v37 + 1, 1, v105);
            }

            v38 = v105;
            *(v105 + 2) = v37 + 1;
            v10 = v38;
            v39 = &v38[24 * v37];
            *(v39 + 4) = v31;
            *(v39 + 5) = v32;
            *(v39 + 6) = v33;
            if (v20)
            {
              break;
            }

            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            v24 = *(v102 + 16);
            v19 += 24;
            if (v11++ == v24)
            {
              goto LABEL_43;
            }
          }

          v41 = v97;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_1D6996914(0, *(v41 + 2) + 1, 1, v41);
          }

          v42 = v99;
          v44 = *(v41 + 2);
          v43 = *(v41 + 3);
          if (v44 >= v43 >> 1)
          {
            v41 = sub_1D6996914((v43 > 1), v44 + 1, 1, v41);
          }

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          *(v41 + 2) = v44 + 1;
          v97 = v41;
          v45 = &v41[24 * v44];
          v46 = v100;
          *(v45 + 4) = v20;
          *(v45 + 5) = v46;
          *(v45 + 6) = v42;
          v24 = *(v102 + 16);
          v26 = v91;
          v10 = v105;
        }

        while (v24 != v11);
      }

      else
      {
        v97 = v10;
      }

LABEL_43:

      v73 = *(v94 + 8);
      v74 = v95;
      v73(v101, v95);
      sub_1D7031BC8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_1D7270C10;
      v76 = *(v10 + 2);
      v77 = MEMORY[0x1E69E6530];
      v78 = MEMORY[0x1E69E65A8];
      *(v75 + 56) = MEMORY[0x1E69E6530];
      *(v75 + 64) = v78;
      *(v75 + 32) = v76;
      v79 = v97;
      v80 = *(v97 + 2);
      *(v75 + 96) = v77;
      *(v75 + 104) = v78;
      *(v75 + 72) = v80;
      sub_1D7262EDC();
      sub_1D725C30C("Finished splitting using splitting configuration with %lu front groups and %lu back groups", v91, v92);

      v112 = v10;
      sub_1D6988DD4(v79);
      v54 = v112;
      v20 = v93;

      v73(v98, v74);
      goto LABEL_45;
    }

LABEL_49:
    swift_once();
    goto LABEL_3;
  }

  v49 = *(v11 + 8);
  v48 = v11 + 8;
  v47 = v49;
  v49(v19, v10);
  if (qword_1EDF12600 != -1)
  {
    swift_once();
  }

  v50 = qword_1EDFFC618;
  v51 = sub_1D7262EDC();
  v105 = MEMORY[0x1E69E7CC0];
  v52 = sub_1D725C30C("Found no topic splitting configuration specified by smarter placement, proceeding with legacy splitting", 103, 2, &dword_1D5B42000, v50, v51);
  v53 = [objc_msgSend(v104[2] appConfigurationManager];
  swift_unknownObjectRelease();
  v54 = v102;
  if (qword_1EDF18840 != -1)
  {
    swift_once();
  }

  v55 = [v53 respondsToSelector_];
  v99 = v53;
  if (v55)
  {
    [v53 splitTopicGroups];
  }

  sub_1D7031B18(qword_1EDF14318, v56, type metadata accessor for FeedClusteringService, &protocol conformance descriptor for FeedClusteringService);
  if (sub_1D725966C())
  {
    v91 = v50;
    v93 = v20;
    v94 = v48;
    v95 = v10;
    v96 = a4;
    v115 = MEMORY[0x1E69E7CC0];
    v97 = *(v54 + 2);
    v92 = v47;
    if (!v97)
    {
LABEL_44:
      sub_1D7031BC8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_1D7270C10;
      v112 = *(v102 + 16);
      v82 = sub_1D72644BC();
      v84 = v83;
      v85 = MEMORY[0x1E69E6158];
      *(v81 + 56) = MEMORY[0x1E69E6158];
      v86 = sub_1D5B7E2C0();
      *(v81 + 64) = v86;
      *(v81 + 32) = v82;
      *(v81 + 40) = v84;
      v87 = v105;
      v112 = *(v105 + 2);
      v88 = sub_1D72644BC();
      *(v81 + 96) = v85;
      *(v81 + 104) = v86;
      *(v81 + 72) = v88;
      *(v81 + 80) = v89;
      v90 = sub_1D7262EDC();
      sub_1D725C30C("Topic group splitting enabled, split %{public}@ groups into %{public}@ groups", 77, 2, &dword_1D5B42000, v91, v90, v81);

      swift_unknownObjectRelease();
      v20 = v93;

      v92(v98, v95);
      v54 = v87;
LABEL_45:
      a4 = v96;
      goto LABEL_46;
    }

    v19 = 0;
    v57 = (v54 + 48);
    v105 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v20 = *(v57 - 2);
      v58 = *(v57 - 1);
      v59 = *v57;
      swift_unknownObjectRetain();

      v61 = sub_1D7025098(v20, v103, v19, v60);
      v106 = v20;
      v107 = v58;
      v101 = v58;
      v108 = v59;
      sub_1D7025A24(&v112, &v109, &v106, v61);
      v10 = v112;
      v11 = v113;
      v62 = v114;
      v63 = v109;
      v64 = v110;
      a4 = v111;
      swift_unknownObjectRetain();

      sub_1D7031028(v63);
      sub_1D7031068(v63);
      v65 = *(v105 + 2);
      if (v65 < v19)
      {
        break;
      }

      v100 = v20;
      v66 = swift_isUniquelyReferenced_nonNull_native();
      v115 = v105;
      if (v66 && v65 < *(v105 + 3) >> 1)
      {
        v67 = v105;
      }

      else
      {
        v67 = sub_1D6996914(v66, v65 + 1, 1, v105);
        v115 = v67;
      }

      sub_1D5EC4410(v19, v19, 1, v10, v11, v62);

      swift_unknownObjectRelease();
      v115 = v67;
      swift_unknownObjectRetain();

      sub_1D7031028(v63);

      swift_unknownObjectRelease();
      v105 = v67;
      if (v63)
      {
        v69 = *(v67 + 2);
        v68 = *(v67 + 3);
        if (v69 >= v68 >> 1)
        {
          v105 = sub_1D6996914((v68 > 1), v69 + 1, 1, v67);
        }

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        sub_1D7031068(v63);
        v70 = v105;
        *(v105 + 2) = v69 + 1;
        v71 = &v70[24 * v69];
        *(v71 + 4) = v63;
        *(v71 + 5) = v64;
        *(v71 + 6) = a4;
        v115 = v70;
      }

      else
      {

        swift_unknownObjectRelease();
        sub_1D7031068(0);

        swift_unknownObjectRelease();
      }

      ++v19;
      v57 += 3;
      if (v97 == v19)
      {
        goto LABEL_44;
      }
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v72 = sub_1D7262EDC();
  sub_1D725C30C("Topic group splitting disabled, returning ordered clusters unmodified", 69, 2, &dword_1D5B42000, v50, v72, MEMORY[0x1E69E7CC0]);
  swift_unknownObjectRelease();

  v47(v98, v10);
LABEL_46:

  *a4 = v54;
  a4[1] = v20;
}

uint64_t sub_1D7025098(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v56 = a3;
  v52 = a2;
  sub_1D7031244(0);
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70310A8(0);
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v46 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70315E4(0);
  v53 = *(v12 - 8);
  v54 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7031448(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v45 - v24;
  v55 = v4;
  v26 = sub_1D725933C();
  v27 = a1;
  v28 = [a1 identifier];
  v29 = sub_1D726207C();
  v31 = v30;

  if (*(v26 + 16))
  {
    v32 = sub_1D5B69D90(v29, v31);
    v34 = v33;

    if (v34)
    {
      (*(v18 + 16))(v21, *(v26 + 56) + *(v18 + 72) * v32, v17);

      (*(v18 + 32))(v25, v21, v17);
      v35 = sub_1D725938C();
      (*(v18 + 8))(v25, v17);
      return v35;
    }
  }

  else
  {
  }

  if ([v27 asChannel])
  {
    swift_unknownObjectRelease();
    sub_1D725934C();
    v36 = v54;
    v35 = sub_1D725938C();
    (*(v53 + 8))(v15, v36);
  }

  else
  {
    v37 = [v27 identifier];
    v38 = sub_1D726207C();
    v40 = v39;

    LOBYTE(v37) = sub_1D5BE240C(v38, v40, v52);

    if (v37)
    {
      v41 = v46;
      sub_1D725932C();
      v42 = v48;
      v35 = sub_1D725938C();
      v43 = v47;
    }

    else
    {
      v41 = v49;
      sub_1D72590AC();
      v42 = v51;
      v35 = sub_1D725938C();
      v43 = v50;
    }

    (*(v43 + 8))(v41, v42);
  }

  return v35;
}

BOOL sub_1D7025508()
{
  v0 = sub_1D725935C();
  v49 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v50 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E3B6C0(0);
  v4 = *(v3 - 8);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v43 - v11;
  sub_1D70310A8(0);
  v14 = *(v13 - 1);
  v47 = v13;
  v48 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v46 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7031244(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7031BC8(0, &qword_1EDF02450, sub_1D5E3B6C0, MEMORY[0x1E69E6F90]);
  v23 = *(v4 + 72);
  v24 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v25 = swift_allocObject();
  v44 = v24;
  v45 = v25;
  *(v25 + 16) = xmmword_1D7270C10;
  sub_1D72590AC();
  sub_1D725936C();
  (*(v19 + 8))(v22, v18);
  v26 = v46;
  sub_1D725932C();
  v27 = v47;
  sub_1D725936C();
  (*(v48 + 8))(v26, v27);
  v28 = sub_1D725933C();
  v29 = sub_1D701BEC4(v28);

  v51 = v45;
  sub_1D6988D8C(v29);
  v46 = v51;
  v30 = *(v51 + 2);
  if (v30)
  {
    v31 = &v46[v44];
    v32 = (v49 + 48);
    v33 = (v49 + 32);
    v34 = MEMORY[0x1E69E7CC0];
    v47 = (v49 + 32);
    v48 = v0;
    do
    {
      sub_1D702DE88(v31, v12, sub_1D5E3B6C0);
      sub_1D70313E0(v12, v8, sub_1D5E3B6C0);
      if ((*v32)(v8, 1, v0) == 1)
      {
        sub_1D7031C2C(v8, sub_1D5E3B6C0);
      }

      else
      {
        v35 = v12;
        v36 = v23;
        v37 = *v33;
        (*v33)(v50, v8, v0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_1D69968E0(0, v34[2] + 1, 1, v34);
        }

        v39 = v34[2];
        v38 = v34[3];
        if (v39 >= v38 >> 1)
        {
          v34 = sub_1D69968E0((v38 > 1), v39 + 1, 1, v34);
        }

        v34[2] = v39 + 1;
        v40 = v34 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v39;
        v33 = v47;
        v0 = v48;
        v37(v40, v50, v48);
        v23 = v36;
        v12 = v35;
      }

      v31 += v23;
      --v30;
    }

    while (v30);
  }

  else
  {

    v34 = MEMORY[0x1E69E7CC0];
  }

  v41 = v34[2];

  return v41 != 0;
}

void sub_1D7025A24(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = *a3;
  v7 = *(a3 + 8);
  v29 = *(a3 + 16);
  if (qword_1EDF12600 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDFFC618;
  sub_1D7031BC8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7279970;
  v11 = [v8 name];
  v12 = sub_1D726207C();
  v14 = v13;

  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1D5B7E2C0();
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  v15 = *(v7 + 16);
  v16 = MEMORY[0x1E69E6530];
  v17 = MEMORY[0x1E69E65A8];
  *(v10 + 96) = MEMORY[0x1E69E6530];
  *(v10 + 104) = v17;
  *(v10 + 72) = v15;
  *(v10 + 136) = v16;
  *(v10 + 144) = v17;
  *(v10 + 112) = a4;
  v18 = sub_1D7262EDC();
  sub_1D725C30C("Splitting cluster %{public}@ with %lu items using minClusterSize=%lu", 68, 2, &dword_1D5B42000, v9, v18, v10);

  if ((a4 + 0x4000000000000000) < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = 2 * a4;
  if (v15 >= (2 * a4))
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      v19 = *(v7 + 16);
      if (v19 >= a4)
      {

        if (v19 == a4)
        {
          *a1 = v8;
          a1[1] = v7;
          v20 = v29;
          a1[2] = v29;

          v21 = a4;
          goto LABEL_12;
        }

LABEL_17:
        sub_1D5EC3470(v7, v7 + 32, 0, v9 | 1);
        v21 = *(v7 + 16);
        *a1 = v8;
        a1[1] = v26;
        v20 = v29;
        a1[2] = v29;
        if (v21 < a4)
        {
          __break(1u);
          goto LABEL_19;
        }

LABEL_12:
        swift_unknownObjectRetain();
        if (!a4)
        {
LABEL_13:
          type metadata accessor for Localized();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v23 = [objc_opt_self() bundleForClass_];
          sub_1D725811C();

          v24 = sub_1D726203C();
          v25 = [v8 setTitleDisplayPrefixOverride_];

          *a2 = v25;
          a2[1] = v7;
          a2[2] = v20;
          return;
        }

LABEL_19:
        sub_1D5EC3470(v7, v7 + 32, a4, (2 * v21) | 1);
        v28 = v27;

        v7 = v28;
        goto LABEL_13;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a1 = v8;
  a1[1] = v7;
  a1[2] = v29;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  swift_unknownObjectRetain();
}

uint64_t sub_1D7025D88(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 2)
  {
    if (qword_1EDF12600 == -1)
    {
LABEL_3:
      v4 = qword_1EDFFC618;
      v5 = sub_1D7262EDC();
      sub_1D725C30C("Channel groups disabled, not surfacing channel tags for grouping", 64, 2, &dword_1D5B42000, v4, v5, MEMORY[0x1E69E7CC0]);
      sub_1D7031BC8(0, &qword_1EDF3B940, sub_1D5C44E18, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      return sub_1D725BB1C();
    }

LABEL_45:
    swift_once();
    goto LABEL_3;
  }

  v8 = *(a2 + 16);
  if (!v8)
  {
    v53 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v9 = 0;
  v10 = a2 + 48;
  v53 = MEMORY[0x1E69E7CC0];
  v54 = a2 + 48;
  do
  {
    v11 = (v10 + 24 * v9);
    v12 = v9;
    while (1)
    {
      if (v12 >= v8)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (__OFADD__(v12, 1))
      {
        goto LABEL_43;
      }

      v55 = v12 + 1;
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;
      swift_unknownObjectRetain();
      v16 = v14;
      v17 = v15;
      swift_unknownObjectRetain();
      v18 = v16;
      v19 = [v13 publisherID];
      if (v19)
      {
        break;
      }

      swift_unknownObjectRelease_n();
      ++v12;
      v11 += 3;
      if (v55 == v8)
      {
        goto LABEL_19;
      }
    }

    v20 = v19;
    v21 = sub_1D726207C();
    v52 = v22;

    swift_unknownObjectRelease_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_1D5B858EC(0, *(v53 + 2) + 1, 1, v53);
    }

    v10 = v54;
    v9 = v12 + 1;
    v24 = *(v53 + 2);
    v23 = *(v53 + 3);
    if (v24 >= v23 >> 1)
    {
      v53 = sub_1D5B858EC((v23 > 1), v24 + 1, 1, v53);
    }

    *(v53 + 2) = v24 + 1;
    v25 = &v53[16 * v24];
    *(v25 + 4) = v21;
    *(v25 + 5) = v52;
  }

  while (v55 != v8);
LABEL_19:
  v26 = v53;
  v56 = *(v53 + 2);
  if (v56)
  {
    v27 = 0;
    v28 = a3 + 56;
    v29 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v27 >= *(v26 + 2))
      {
        goto LABEL_44;
      }

      v30 = &v53[16 * v27 + 32];
      v32 = *v30;
      v31 = *(v30 + 1);
      ++v27;
      if (!*(a3 + 16))
      {
        break;
      }

      sub_1D7264A0C();

      sub_1D72621EC();
      v33 = sub_1D7264A5C();
      v34 = -1 << *(a3 + 32);
      v35 = v33 & ~v34;
      if ((*(v28 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
      {
        v36 = ~v34;
        while (1)
        {
          v37 = (*(a3 + 48) + 16 * v35);
          v38 = *v37 == v32 && v37[1] == v31;
          if (v38 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v35 = (v35 + 1) & v36;
          if (((*(v28 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        if (v27 == v56)
        {
          goto LABEL_39;
        }
      }

      else
      {
LABEL_32:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D5BFC364(0, *(v29 + 16) + 1, 1);
        }

        v40 = *(v29 + 16);
        v39 = *(v29 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1D5BFC364((v39 > 1), v40 + 1, 1);
        }

        *(v29 + 16) = v40 + 1;
        v41 = v29 + 16 * v40;
        *(v41 + 32) = v32;
        *(v41 + 40) = v31;
        v26 = v53;
        if (v27 == v56)
        {
          goto LABEL_39;
        }
      }
    }

    goto LABEL_32;
  }

LABEL_39:

  if (qword_1EDF12600 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDFFC618;
  sub_1D7031BC8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1D7273AE0;
  v44 = sub_1D72644BC();
  v46 = v45;
  *(v43 + 56) = MEMORY[0x1E69E6158];
  *(v43 + 64) = sub_1D5B7E2C0();
  *(v43 + 32) = v44;
  *(v43 + 40) = v46;
  v47 = sub_1D7262EDC();
  sub_1D725C30C("Requesting %{public}@ publisher tags", 36, 2, &dword_1D5B42000, v42, v47, v43);

  MEMORY[0x1EEE9AC00](v48, v49);
  sub_1D703179C(0, &qword_1EDF1AEB0, &qword_1EDF3C770, &protocolRef_FCTagProviding, MEMORY[0x1E69E62F8]);
  sub_1D725BDCC();

  v50 = sub_1D725B92C();
  sub_1D5C44E18(0);
  sub_1D6C7626C();
  v51 = sub_1D725BBEC();

  return v51;
}

uint64_t sub_1D70263D8(char **a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, char *a8, double a9, double a10, uint64_t a11, __int16 a12, unsigned __int8 a13)
{
  v309 = a8;
  v333 = a7;
  v315 = a5;
  v319 = a4;
  v356 = a3;
  v321 = sub_1D7258F4C();
  v305 = *(v321 - 8);
  MEMORY[0x1EEE9AC00](v321, v17);
  v313 = &v303 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v318 = &v303 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v303 - v24;
  sub_1D7031804(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v316 = &v303 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v317 = sub_1D7258F5C();
  v311 = *(v317 - 8);
  MEMORY[0x1EEE9AC00](v317, v29);
  v303 = &v303 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D605FEA0(0);
  v348 = v31;
  v337 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v341 = (&v303 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34, v35);
  v331 = &v303 - v36;
  sub_1D7031838(0);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  isUniquelyReferenced_nonNull_native = &v303 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5B2A0(0);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v330 = &v303 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v344 = &v303 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v343 = &v303 - v49;
  v347 = sub_1D725891C();
  v50 = *(v347 - 1);
  MEMORY[0x1EEE9AC00](v347, v51);
  v53 = &v303 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54, v55);
  v334 = &v303 - v56;
  *&v59 = MEMORY[0x1EEE9AC00](v57, v58).n128_u64[0];
  v354 = &v303 - v60;
  v308 = *a1;
  v61 = [a2 subscribedTags];
  sub_1D5B5534C(0, &qword_1EDF3C770, &protocolRef_FCTagProviding);
  v62 = sub_1D726267C();

  v63 = v62;
  v371 = MEMORY[0x1E69E7CD0];
  if (v62 >> 62)
  {
    goto LABEL_258;
  }

  v64 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v320 = v25;
  v332 = isUniquelyReferenced_nonNull_native;
  v342 = v53;
  if (!v64)
  {
    v312 = MEMORY[0x1E69E7CD0];
    goto LABEL_17;
  }

  v353 = v50;
  v355 = a6;
  v50 = 0;
  v25 = v63 & 0xC000000000000001;
  a6 = v63 & 0xFFFFFFFFFFFFFF8;
  isUniquelyReferenced_nonNull_native = &selRef_setHyphenationFactor_;
  v357 = v63;
  v358 = v64;
  while (v25)
  {
    v65 = MEMORY[0x1DA6FB460](v50, v63);
    v66 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_14;
    }

LABEL_10:
    if ([v65 *(isUniquelyReferenced_nonNull_native + 2544)] == 2)
    {
      v67 = [v65 identifier];
      v68 = isUniquelyReferenced_nonNull_native;
      v69 = v25;
      v70 = sub_1D726207C();
      v53 = v71;

      v72 = v70;
      v25 = v69;
      isUniquelyReferenced_nonNull_native = v68;
      sub_1D5B860D0(&v359, v72, v53);
      v63 = v357;
      v64 = v358;
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v50;
    if (v66 == v64)
    {
      goto LABEL_15;
    }
  }

  if (v50 >= *(a6 + 16))
  {
    goto LABEL_254;
  }

  v65 = *(v63 + 8 * v50 + 32);
  swift_unknownObjectRetain();
  v66 = v50 + 1;
  if (!__OFADD__(v50, 1))
  {
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  v312 = v371;
  isUniquelyReferenced_nonNull_native = v332;
  a6 = v355;
  v50 = v353;
LABEL_17:

  v73 = [objc_opt_self() sharedAccount];
  v74 = [v73 primaryLanguageCode];

  v75 = sub_1D726207C();
  v314 = v76;

  v77 = v356;
  v78 = [v356 subscribedTagIDs];
  if (v78)
  {
    v79 = v78;
    v80 = sub_1D7262B0C();
  }

  else
  {
    v80 = MEMORY[0x1E69E7CD0];
  }

  v81 = [v77 groupableTagIDs];
  if (v81)
  {
    v82 = v81;
    v325 = sub_1D7262B0C();
  }

  else
  {
    v325 = MEMORY[0x1E69E7CD0];
  }

  v304 = *(v319 + 16);
  v83 = [objc_msgSend(v304 appConfigurationManager)];
  swift_unknownObjectRelease();
  if ([v83 respondsToSelector_])
  {
    v307 = [v83 isImprovedManagedTopicGroupingEnabled];
  }

  else
  {
    v307 = 0;
  }

  v326 = v80;
  swift_unknownObjectRelease();
  if (qword_1EDF18858 != -1)
  {
    swift_once();
  }

  type metadata accessor for FeedClusteringService();
  sub_1D7031B18(qword_1EDF14318, v84, type metadata accessor for FeedClusteringService, &protocol conformance descriptor for FeedClusteringService);
  sub_1D725964C();
  v306 = v359;
  v85 = v315;
  v86 = sub_1D7030334(v315, a6, v75, v314);
  v87 = sub_1D605EB80(MEMORY[0x1E69E7CC0]);
  v371 = v87;
  v89 = *(v85 + 16);
  *&v324 = v86;
  v323 = v89;
  if (v89)
  {
    v90 = v87;
    v53 = isUniquelyReferenced_nonNull_native;
    v91 = 0;
    v322 = (v315 + 32);
    v336 = v50 + 32;
    v356 = (v50 + 56);
    *&v349 = v50 + 48;
    v340 = (v337 + 56);
    v339 = (v337 + 48);
    v338 = (v50 + 8);
    while (1)
    {
      v92 = &v322[3 * v91];
      v94 = *v92;
      v93 = v92[1];
      v328 = v92[2];
      swift_unknownObjectRetain();
      v327 = v93;
      v351 = v94;
      v95 = [v94 itemID];
      a6 = sub_1D726207C();
      v97 = v96;

      if (*(v86 + 2))
      {
        a6 = sub_1D5B69D90(a6, v97);
        v99 = v98;

        v25 = MEMORY[0x1E69E7CC0];
        if (v99)
        {
          v25 = *(*(v86 + 7) + 8 * a6);
        }
      }

      else
      {

        v25 = MEMORY[0x1E69E7CC0];
      }

      isUniquelyReferenced_nonNull_native = v25 >> 62 ? sub_1D7263BFC() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v63 = v90;
      v329 = v91;
      if (isUniquelyReferenced_nonNull_native)
      {
        break;
      }

LABEL_30:
      v90 = v63;
      v91 = v329 + 1;

      swift_unknownObjectRelease();

      v86 = v324;
      if (v91 == v323)
      {
        goto LABEL_79;
      }
    }

    v100 = 0;
    v350 = (v25 & 0xC000000000000001);
    v335 = v25 & 0xFFFFFFFFFFFFFF8;
    v345 = v25;
    v346 = isUniquelyReferenced_nonNull_native;
    while (2)
    {
      if (v350)
      {
        v101 = MEMORY[0x1DA6FB460](v100, v25);
      }

      else
      {
        if (v100 >= *(v335 + 16))
        {
          goto LABEL_249;
        }

        v101 = *(v25 + 8 * v100 + 32);
      }

      v102 = v101;
      a6 = v100 + 1;
      if (__OFADD__(v100, 1))
      {
        __break(1u);
LABEL_249:
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
        goto LABEL_253;
      }

      v103 = [v101 tagID];
      if (v103)
      {
        v352 = v100 + 1;
        v104 = v103;
        v357 = sub_1D726207C();
        v106 = v105;

        v107 = [v351 lastModifiedDate];
        v358 = v106;
        v353 = v102;
        if (v107)
        {
          v108 = v334;
          v109 = v107;
          sub_1D72588BC();

          v110 = *v336;
          v111 = v343;
          v50 = v347;
          (*v336)(v343, v108, v347);
          v355 = *v356;
          (v355)(v111, 0, 1, v50);
          v106 = v358;
          v110(v354, v111, v50);
        }

        else
        {
          v112 = v343;
          v50 = v347;
          v355 = *v356;
          (v355)(v343, 1, 1, v347);
          sub_1D72587BC();
          if ((*v349)(v112, 1, v50) != 1)
          {
            sub_1D7031C2C(v112, sub_1D5B5B2A0);
          }
        }

        if (*(v63 + 16) && (v113 = sub_1D5B69D90(v357, v106), (v114 & 1) != 0))
        {
          sub_1D702DE88(*(v63 + 56) + *(v337 + 72) * v113, v53, sub_1D605FEA0);
          v115 = 0;
        }

        else
        {
          v115 = 1;
        }

        v116 = v348;
        (*v340)(v53, v115, 1, v348);
        if ((*v339)(v53, 1, v116))
        {
          sub_1D7031C2C(v53, sub_1D7031838);
          v117 = v344;
          (v355)(v344, 1, 1, v50);
LABEL_58:
          v118 = v63;
          v119 = v53;
          v25 = v342;
          sub_1D72587BC();
          if ((*v349)(v117, 1, v50) != 1)
          {
            sub_1D7031C2C(v117, sub_1D5B5B2A0);
          }
        }

        else
        {
          v117 = v344;
          sub_1D702DE88(v53, v344, sub_1D5B5B2A0);
          sub_1D7031C2C(v53, sub_1D7031838);
          if ((*v349)(v117, 1, v50) == 1)
          {
            goto LABEL_58;
          }

          v118 = v63;
          v119 = v53;
          v25 = v342;
          (*v336)(v342, v117, v50);
        }

        v120 = v354;
        v121 = sub_1D725882C();
        v122 = *v338;
        (*v338)(v25, v50);
        v122(v120, v50);
        if (v121)
        {
          v123 = [v351 lastModifiedDate];
          if (v123)
          {
            v124 = v330;
            v125 = v123;
            sub_1D72588BC();

            v126 = 0;
          }

          else
          {
            v126 = 1;
            v124 = v330;
          }

          a6 = v353;
          (v355)(v124, v126, 1, v347);
          v127 = v331;
          sub_1D70313E0(v124, v331, sub_1D5B5B2A0);
          v53 = *(v333 + 3);
          v128 = *(v333 + 4);
          __swift_project_boxed_opaque_existential_1(v333, v53);
          (*(v128 + 16))(a6, v53, v128);
          sub_1D70313E0(v127, v341, sub_1D605FEA0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v63 = v371;
          v359 = v371;
          v50 = v358;
          v130 = sub_1D5B69D90(v357, v358);
          v131 = *(v63 + 16);
          v132 = (v129 & 1) == 0;
          v133 = v131 + v132;
          if (__OFADD__(v131, v132))
          {
            goto LABEL_250;
          }

          v53 = v129;
          if (*(v63 + 24) >= v133)
          {
            v25 = v332;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D6D870A0();
            }
          }

          else
          {
            sub_1D6D75FB4(v133, isUniquelyReferenced_nonNull_native);
            v134 = sub_1D5B69D90(v357, v50);
            v25 = v332;
            if ((v53 & 1) != (v135 & 1))
            {
              goto LABEL_260;
            }

            v130 = v134;
          }

          isUniquelyReferenced_nonNull_native = v346;
          if (v53)
          {

            v63 = v359;
            sub_1D70318C8(v341, *(v359 + 56) + *(v337 + 72) * v130);
          }

          else
          {
            v63 = v359;
            *(v359 + 8 * (v130 >> 6) + 64) |= 1 << v130;
            v136 = (*(v63 + 48) + 16 * v130);
            *v136 = v357;
            v136[1] = v50;
            sub_1D70313E0(v341, *(v63 + 56) + *(v337 + 72) * v130, sub_1D605FEA0);

            v137 = *(v63 + 16);
            v138 = __OFADD__(v137, 1);
            v139 = v137 + 1;
            if (v138)
            {
              goto LABEL_251;
            }

            *(v63 + 16) = v139;
          }

          v371 = v63;
          v53 = v25;
          v25 = v345;
        }

        else
        {

          v53 = v119;
          v25 = v345;
          v63 = v118;
          isUniquelyReferenced_nonNull_native = v346;
        }

        a6 = v352;
      }

      else
      {
      }

      ++v100;
      if (a6 == isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_30;
      }

      continue;
    }
  }

LABEL_79:
  v140 = MEMORY[0x1E69E6158];
  MEMORY[0x1EEE9AC00](v87, v88);
  *(&v303 - 12) = v312;
  *(&v303 - 11) = v86;
  *(&v303 - 10) = v309;
  *(&v303 - 9) = &v371;
  *(&v303 - 8) = v326;
  *(&v303 - 7) = v141;
  v358 = v141;
  *(&v303 - 6) = v325;
  *(&v303 - 20) = v142;
  v143 = v333;
  *(&v303 - 4) = v308;
  *(&v303 - 3) = v143;
  *(&v303 - 16) = v307;
  *(&v303 - 15) = v306;
  *(&v303 - 1) = v319;
  *&v365 = MEMORY[0x1E69E7CC0];
  *(&v365 + 1) = MEMORY[0x1E69E7CD0];
  v366 = MEMORY[0x1E69E7CD0];
  v367 = MEMORY[0x1E69E7CC8];
  v368 = MEMORY[0x1E69E7CC8];
  v144 = v310;
  sub_1D632A424(&v365, sub_1D703186C, v315, &v359);
  v329 = v144;
  v145 = v359;
  v146 = v360;
  v355 = v361;
  v336 = v362;
  v330 = v363;
  if (qword_1EDF12600 != -1)
  {
    swift_once();
  }

  LODWORD(v345) = a13;
  v147 = qword_1EDFFC618;
  sub_1D7031BC8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v327 = v148;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D7279970;
  v315 = v145;
  v359 = *(v145 + 16);
  v53 = MEMORY[0x1E69E6530];
  v149 = sub_1D72644BC();
  a6 = v150;
  *(v25 + 56) = v140;
  v151 = sub_1D5B7E2C0();
  *(v25 + 64) = v151;
  *(v25 + 32) = v149;
  *(v25 + 40) = a6;
  v359 = *(v146 + 16);
  v63 = &v359;
  v152 = sub_1D72644BC();
  *(v25 + 96) = v140;
  *(v25 + 104) = v151;
  *(v25 + 72) = v152;
  *(v25 + 80) = v153;
  v359 = *(v355 + 16);
  v154 = sub_1D72644BC();
  *(v25 + 136) = v140;
  *(v25 + 144) = v151;
  v323 = v151;
  *(v25 + 112) = v154;
  *(v25 + 120) = v155;
  v156 = sub_1D7262EDC();
  v328 = v147;
  sub_1D725C30C("Found %{public}@ groupable items with %{public}@ topicTags %{public}@ channelTags", 81, 2, &dword_1D5B42000, v147, v156, v25);

  v364 = MEMORY[0x1E69E7CD0];
  isUniquelyReferenced_nonNull_native = v146 + 56;
  v157 = 1 << *(v146 + 32);
  if (v157 < 64)
  {
    v158 = ~(-1 << v157);
  }

  else
  {
    v158 = -1;
  }

  v159 = v158 & *(v146 + 56);
  v160 = (v157 + 63) >> 6;
  v357 = v326 + 56;
  v356 = (v358 + 56);
  v354 = (v325 + 56);

  v50 = 0;
  while (2)
  {
    if (v159)
    {
LABEL_92:
      v162 = __clz(__rbit64(v159));
      v159 &= v159 - 1;
      a6 = v146;
      v163 = (*(v146 + 48) + ((v50 << 10) | (16 * v162)));
      v53 = *v163;
      v25 = v163[1];
      v164 = v326;
      if (*(v326 + 16))
      {
        sub_1D7264A0C();

        sub_1D72621EC();
        v165 = sub_1D7264A5C();
        v166 = -1 << *(v164 + 32);
        v167 = v165 & ~v166;
        if ((*(v357 + ((v167 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v167))
        {
          v168 = ~v166;
          do
          {
            v169 = (*(v326 + 48) + 16 * v167);
            v170 = *v169 == v53 && v169[1] == v25;
            if (v170 || (sub_1D72646CC() & 1) != 0)
            {
              goto LABEL_85;
            }

            v167 = (v167 + 1) & v168;
          }

          while (((*(v357 + ((v167 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v167) & 1) != 0);
        }
      }

      else
      {
      }

      if (*(v358 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v171 = sub_1D7264A5C(), v172 = v358, v173 = -1 << *(v358 + 32), v174 = v171 & ~v173, ((*&v356[(v174 >> 3) & 0xFFFFFFFFFFFFFF8] >> v174) & 1) != 0))
      {
        v175 = ~v173;
        while (1)
        {
          v176 = (*(v172 + 48) + 16 * v174);
          v177 = *v176 == v53 && v176[1] == v25;
          if (v177 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v174 = (v174 + 1) & v175;
          v172 = v358;
          if (((*&v356[(v174 >> 3) & 0xFFFFFFFFFFFFFF8] >> v174) & 1) == 0)
          {
            goto LABEL_112;
          }
        }
      }

      else
      {
LABEL_112:
        if (*(v325 + 16) && (v178 = v325, sub_1D7264A0C(), sub_1D72621EC(), v179 = sub_1D7264A5C(), v180 = -1 << *(v178 + 32), v181 = v179 & ~v180, ((*&v354[(v181 >> 3) & 0xFFFFFFFFFFFFFF8] >> v181) & 1) != 0))
        {
          v182 = ~v180;
          while (1)
          {
            v183 = (*(v325 + 48) + 16 * v181);
            v184 = *v183 == v53 && v183[1] == v25;
            if (v184 || (sub_1D72646CC() & 1) != 0)
            {
              break;
            }

            v181 = (v181 + 1) & v182;
            if (((*&v354[(v181 >> 3) & 0xFFFFFFFFFFFFFF8] >> v181) & 1) == 0)
            {
              goto LABEL_121;
            }
          }
        }

        else
        {
LABEL_121:
          v185 = 0.0;
          if (*(v336 + 16))
          {
            v186 = sub_1D5B69D90(v53, v25);
            if (v187)
            {
              v185 = *(*(v336 + 56) + 8 * v186);
            }
          }

          v63 = v330;
          if (!*(v330 + 2))
          {
            goto LABEL_86;
          }

          v188 = sub_1D5B69D90(v53, v25);
          if ((v189 & 1) == 0)
          {
            goto LABEL_86;
          }

          v190 = *(*(v63 + 56) + 8 * v188);
          if (v190 <= 0 || v185 / v190 <= a9)
          {
            goto LABEL_86;
          }
        }
      }

LABEL_85:
      v63 = &v364;
      sub_1D5B860D0(&v359, v53, v25);
LABEL_86:

      v146 = a6;
      continue;
    }

    break;
  }

  while (1)
  {
    v161 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_252;
    }

    if (v161 >= v160)
    {
      break;
    }

    v159 = *(isUniquelyReferenced_nonNull_native + 8 * v161);
    ++v50;
    if (v159)
    {
      v50 = v161;
      goto LABEL_92;
    }
  }

  v191 = v364;

  v351 = sub_1D5D6021C(v192, v191);
  v193 = [*(v319 + 24) allowlist];
  if (!v193)
  {

    v198 = MEMORY[0x1E69E7CC0];
LABEL_133:
    v314 = v146;

    v337 = sub_1D5B86020(v198);

    v199 = *(v319 + 56);
    v200 = *(v319 + 64);
    v63 = __swift_project_boxed_opaque_existential_1((v319 + 32), v199);

    a6 = sub_1D5E1E408(v201);
    v25 = (*(v200 + 40))(a6, v199, v200);

    v353 = *(v25 + 16);
    if (v353)
    {
      v202 = 0;
      v53 = v25 + 48;
      isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if (v202 >= *(v25 + 16))
        {
          goto LABEL_255;
        }

        v203 = *(v53 - 16);
        a6 = *(v53 - 8);
        a9 = *v53;
        swift_bridgeObjectRetain_n();
        v204 = swift_isUniquelyReferenced_nonNull_native();
        v359 = isUniquelyReferenced_nonNull_native;
        v63 = isUniquelyReferenced_nonNull_native;
        v205 = sub_1D5B69D90(v203, a6);
        v207 = *(isUniquelyReferenced_nonNull_native + 16);
        v208 = (v206 & 1) == 0;
        v138 = __OFADD__(v207, v208);
        v209 = v207 + v208;
        if (v138)
        {
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          v64 = sub_1D7263BFC();
          goto LABEL_3;
        }

        v50 = v206;
        if (*(isUniquelyReferenced_nonNull_native + 24) < v209)
        {
          break;
        }

        if (v204)
        {
          goto LABEL_143;
        }

        v63 = &v359;
        v214 = v205;
        sub_1D6D801A8();
        v205 = v214;
        if (v50)
        {
LABEL_135:
          v63 = v205;

          isUniquelyReferenced_nonNull_native = v359;
          *(*(v359 + 56) + 8 * v63) = a9;

          goto LABEL_136;
        }

LABEL_144:
        isUniquelyReferenced_nonNull_native = v359;
        *(v359 + 8 * (v205 >> 6) + 64) |= 1 << v205;
        v211 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v205);
        *v211 = v203;
        v211[1] = a6;
        *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v205) = a9;

        v212 = *(isUniquelyReferenced_nonNull_native + 16);
        v138 = __OFADD__(v212, 1);
        v213 = v212 + 1;
        if (v138)
        {
          goto LABEL_257;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v213;
LABEL_136:
        ++v202;
        v53 += 24;
        a6 = v355;
        if (v353 == v202)
        {
          goto LABEL_149;
        }
      }

      sub_1D6D69858(v209, v204);
      v63 = v359;
      v205 = sub_1D5B69D90(v203, a6);
      if ((v50 & 1) != (v210 & 1))
      {
        goto LABEL_260;
      }

LABEL_143:
      if (v50)
      {
        goto LABEL_135;
      }

      goto LABEL_144;
    }

    isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC8];
    a6 = v355;
LABEL_149:

    sub_1D702ACA0(v319);
    v216 = v215;
    v217 = [objc_msgSend(v304 appConfigurationManager)];
    swift_unknownObjectRelease();
    v63 = &selRef_superfeedConfigResourceID;
    if ([v217 respondsToSelector_])
    {
      v63 = [v217 channelGroupBaselineMultipliers];
      swift_unknownObjectRelease();
      if (v63)
      {
        sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
        v53 = sub_1D7261D3C();

        goto LABEL_154;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v53 = sub_1D605EDA8(MEMORY[0x1E69E7CC0]);
LABEL_154:
    v50 = v321;
    v218 = v351 + 56;
    v219 = 1 << v351[32];
    if (v219 < 64)
    {
      v220 = ~(-1 << v219);
    }

    else
    {
      v220 = -1;
    }

    v221 = v220 & *(v351 + 7);
    v25 = (v219 + 63) >> 6;
    v353 = (a6 + 56);
    LODWORD(v348) = *MEMORY[0x1E69E3178];
    v341 = (v305 + 104);
    LODWORD(v346) = *MEMORY[0x1E69E3170];
    v350 = (v305 + 16);
    v340 = (v305 + 88);
    v347 = (v305 + 8);
    v339 = (v311 + 56);
    v352 = v337 + 56;
    v338 = (v311 + 48);
    v319 = v311 + 32;

    v222 = 0;
    v322 = MEMORY[0x1E69E7CC0];
    v324 = xmmword_1D7274590;
    v349 = xmmword_1D7273AE0;
    v342 = v53;
    v344 = v218;
    v343 = v25;
LABEL_158:
    v223 = v222;
    if (!v221)
    {
      goto LABEL_160;
    }

    while (1)
    {
      v224 = v50;
      v222 = v223;
LABEL_164:
      v225 = (*(v351 + 6) + ((v222 << 10) | (16 * __clz(__rbit64(v221)))));
      v226 = *v225;
      v227 = v225[1];
      if (*(a6 + 16))
      {
        sub_1D7264A0C();

        sub_1D72621EC();
        v228 = sub_1D7264A5C();
        v229 = -1 << *(a6 + 32);
        v230 = v228 & ~v229;
        if ((*&v353[(v230 >> 3) & 0xFFFFFFFFFFFFFF8] >> v230))
        {
          v231 = ~v229;
          while (1)
          {
            v232 = (*(a6 + 48) + 16 * v230);
            v233 = *v232 == v226 && v232[1] == v227;
            if (v233 || (sub_1D72646CC() & 1) != 0)
            {
              break;
            }

            v230 = (v230 + 1) & v231;
            if (((*&v353[(v230 >> 3) & 0xFFFFFFFFFFFFFF8] >> v230) & 1) == 0)
            {
              goto LABEL_173;
            }
          }

          v234 = &v370;
        }

        else
        {
LABEL_173:
          v234 = &v369;
        }

        v235 = *(v234 - 64);
        v236 = v321;
      }

      else
      {

        v235 = v346;
        v236 = v224;
      }

      (*v341)(v320, v235, v236);
      a9 = 0.0;
      if (*(isUniquelyReferenced_nonNull_native + 16))
      {
        v237 = sub_1D5B69D90(v226, v227);
        if (v238)
        {
          a9 = *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v237);
        }
      }

      if (*(v53 + 16) && (v239 = sub_1D5B69D90(v226, v227), (v240 & 1) != 0))
      {
        v241 = *(*(v53 + 56) + 8 * v239);
      }

      else
      {
        sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
        v241 = sub_1D72636CC();
      }

      v242 = v241;
      sub_1D7262A7C();
      v244 = v243;

      v245 = *v350;
      v246 = v318;
      v247 = v321;
      (*v350)(v318, v320, v321);
      v248 = (*v340)(v246, v247);
      if (v248 == v348)
      {
        v249 = v216 * v244;
      }

      else
      {
        v249 = 0.0;
        if (v248 != v346)
        {
          (*v347)(v318, v321);
        }
      }

      if ((v345 & 1) != 0 || v249 <= a9)
      {
        break;
      }

      v250 = swift_allocObject();
      *(v250 + 16) = v324;
      v251 = v323;
      *(v250 + 56) = MEMORY[0x1E69E6158];
      *(v250 + 64) = v251;
      *(v250 + 32) = v226;
      *(v250 + 40) = v227;
      v252 = swift_allocObject();
      *(v252 + 16) = v349;
      *(v252 + 56) = MEMORY[0x1E69E63B0];
      *(v252 + 64) = MEMORY[0x1E69E6438];
      *(v252 + 32) = a9;

      v253 = sub_1D72620BC();
      v254 = MEMORY[0x1E69E6158];
      *(v250 + 96) = MEMORY[0x1E69E6158];
      *(v250 + 104) = v251;
      *(v250 + 72) = v253;
      *(v250 + 80) = v255;
      v256 = swift_allocObject();
      *(v256 + 16) = v349;
      *(v256 + 56) = MEMORY[0x1E69E63B0];
      *(v256 + 64) = MEMORY[0x1E69E6438];
      *(v256 + 32) = v249;
      v257 = sub_1D72620BC();
      *(v250 + 136) = v254;
      *(v250 + 144) = v251;
      *(v250 + 112) = v257;
      *(v250 + 120) = v258;
      v259 = v320;
      v260 = swift_allocObject();
      *(v260 + 16) = v349;
      *(v260 + 56) = MEMORY[0x1E69E63B0];
      *(v260 + 64) = MEMORY[0x1E69E6438];
      *(v260 + 32) = v244;
      v261 = sub_1D72620BC();
      *(v250 + 176) = v254;
      *(v250 + 184) = v251;
      *(v250 + 152) = v261;
      *(v250 + 160) = v262;
      v263 = sub_1D7262EDC();
      sub_1D725C30C("Ignoring tag %{public}@ for grouping because its score %{public}@ is less than the minimum %{public}@ (multiplier: %{public}@)", 126, 2, &dword_1D5B42000, v328, v263, v250);

      v264 = 1;
      v63 = v316;
      v50 = v321;
LABEL_238:
      v221 &= v221 - 1;
      (*v347)(v259, v50);
      v294 = v264;
      v295 = v317;
      (*v339)(v63, v294, 1, v317);
      v170 = (*v338)(v63, 1, v295) == 1;
      v296 = v63;
      v53 = v342;
      if (!v170)
      {
        v63 = *v319;
        (*v319)(v303, v296, v317);
        v297 = swift_isUniquelyReferenced_nonNull_native();
        if ((v297 & 1) == 0)
        {
          v322 = sub_1D6996928(0, v322[2] + 1, 1, v322);
        }

        v299 = v322[2];
        v298 = v322[3];
        if (v299 >= v298 >> 1)
        {
          v322 = sub_1D6996928((v298 > 1), v299 + 1, 1, v322);
        }

        v300 = v322;
        v322[2] = v299 + 1;
        (v63)(v300 + ((*(v311 + 80) + 32) & ~*(v311 + 80)) + *(v311 + 72) * v299, v303, v317);
        v50 = v321;
        v218 = v344;
        v25 = v343;
        goto LABEL_158;
      }

      sub_1D7031C2C(v63, sub_1D7031804);
      v223 = v222;
      v218 = v344;
      v25 = v343;
      if (!v221)
      {
LABEL_160:
        while (1)
        {
          v222 = v223 + 1;
          if (__OFADD__(v223, 1))
          {
            break;
          }

          if (v222 >= v25)
          {

            v359 = v315;
            v360 = v322;
            sub_1D7031BC8(0, &qword_1EDF17988, sub_1D702DF60, MEMORY[0x1E69D6B18]);
            swift_allocObject();
            v301 = sub_1D725BB1C();

            return v301;
          }

          v221 = *&v218[8 * v222];
          ++v223;
          if (v221)
          {
            v224 = v50;
            goto LABEL_164;
          }
        }

LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
        goto LABEL_256;
      }
    }

    v334 = v245;
    v265 = v337;
    if (*(v337 + 16))
    {
      sub_1D7264A0C();
      sub_1D72621EC();
      v266 = sub_1D7264A5C();
      v267 = -1 << *(v265 + 32);
      v268 = v266 & ~v267;
      v269 = v326;
      if ((*(v352 + ((v268 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v268))
      {
        v270 = ~v267;
        while (1)
        {
          v271 = (*(v265 + 48) + 16 * v268);
          v272 = *v271 == v226 && v271[1] == v227;
          if (v272 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v268 = (v268 + 1) & v270;
          if (((*(v352 + ((v268 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v268) & 1) == 0)
          {
            goto LABEL_200;
          }
        }

        LODWORD(v333) = 1;
        if (!*(v269 + 16))
        {
          goto LABEL_213;
        }
      }

      else
      {
LABEL_200:
        LODWORD(v333) = 0;
        if (!*(v269 + 16))
        {
          goto LABEL_213;
        }
      }
    }

    else
    {
      LODWORD(v333) = 0;
      v269 = v326;
      if (!*(v326 + 16))
      {
        goto LABEL_213;
      }
    }

    sub_1D7264A0C();
    sub_1D72621EC();
    v273 = sub_1D7264A5C();
    v274 = -1 << *(v269 + 32);
    v275 = v273 & ~v274;
    if ((*(v357 + ((v275 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v275))
    {
      v276 = ~v274;
      while (1)
      {
        v277 = (*(v269 + 48) + 16 * v275);
        v278 = *v277 == v226 && v277[1] == v227;
        if (v278 || (sub_1D72646CC() & 1) != 0)
        {
          break;
        }

        v275 = (v275 + 1) & v276;
        if (((*(v357 + ((v275 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v275) & 1) == 0)
        {
          goto LABEL_213;
        }
      }

      LODWORD(v332) = 1;
LABEL_215:
      v279 = v325;
      if (*(v358 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v280 = sub_1D7264A5C(), v281 = v358, v282 = -1 << *(v358 + 32), v283 = v280 & ~v282, ((*&v356[(v283 >> 3) & 0xFFFFFFFFFFFFFF8] >> v283) & 1) != 0))
      {
        v284 = ~v282;
        while (1)
        {
          v285 = (*(v281 + 48) + 16 * v283);
          v286 = *v285 == v226 && v285[1] == v227;
          if (v286 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v283 = (v283 + 1) & v284;
          v281 = v358;
          if (((*&v356[(v283 >> 3) & 0xFFFFFFFFFFFFFF8] >> v283) & 1) == 0)
          {
            goto LABEL_224;
          }
        }

        LODWORD(v331) = 1;
        if (!*(v279 + 16))
        {
          goto LABEL_235;
        }
      }

      else
      {
LABEL_224:
        LODWORD(v331) = 0;
        if (!*(v279 + 16))
        {
          goto LABEL_235;
        }
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v287 = sub_1D7264A5C();
      v288 = -1 << *(v279 + 32);
      v289 = v287 & ~v288;
      if ((*&v354[(v289 >> 3) & 0xFFFFFFFFFFFFFF8] >> v289))
      {
        v290 = ~v288;
        while (1)
        {
          v291 = (*(v279 + 48) + 16 * v289);
          v292 = *v291 == v226 && v291[1] == v227;
          if (v292 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v289 = (v289 + 1) & v290;
          if (((*&v354[(v289 >> 3) & 0xFFFFFFFFFFFFFF8] >> v289) & 1) == 0)
          {
            goto LABEL_235;
          }
        }

        LODWORD(v335) = 1;
        goto LABEL_237;
      }

LABEL_235:
      LODWORD(v335) = 0;
LABEL_237:
      v259 = v320;
      v293 = v321;
      (v334)(v313, v320, v321);
      v63 = v316;
      v50 = v293;
      sub_1D7258F3C();
      v264 = 0;
      a6 = v355;
      goto LABEL_238;
    }

LABEL_213:
    LODWORD(v332) = 0;
    goto LABEL_215;
  }

  v194 = v193;
  v195 = [v193 optionalTags];

  if (v195)
  {

    sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
    v196 = sub_1D7261D3C();

    v197 = v329;
    v198 = sub_1D701C278(v196);
    v329 = v197;
    goto LABEL_133;
  }

  __break(1u);
LABEL_260:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D7028CA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, void *a8, void *a9, char a10, uint64_t a11, void *a12, unsigned __int8 a13, unsigned __int8 a14, uint64_t a15)
{
  v261 = a8;
  v267 = a6;
  v260 = a5;
  v262 = a1;
  v250 = sub_1D725900C();
  v249 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250, v19);
  v248 = &v246[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v253 = sub_1D7258FFC();
  v252 = *(v253 - 8);
  MEMORY[0x1EEE9AC00](v253, v21);
  v251 = &v246[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7031838(0);
  *&v25 = MEMORY[0x1EEE9AC00](v23 - 8, v24).n128_u64[0];
  v27 = &v246[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = *a2;
  v254 = *(a2 + 8);
  v266 = v28;
  v29 = [v28 publisherID];
  if (v29 && (v30 = v29, v31 = sub_1D726207C(), v33 = v32, v30, LOBYTE(v30) = sub_1D5BE240C(v31, v33, a3), , (v30 & 1) != 0))
  {
    v247 = 1;
    v34 = v266;
  }

  else
  {
    v34 = v266;
    v35 = [v266 sourceFeedID];
    v247 = v35 && (v36 = v35, v37 = sub_1D726207C(), v39 = v38, v36, v34 = v266, v40 = sub_1D5BE240C(v37, v39, a3), , (v40 & 1) != 0);
  }

  v41 = [v34 itemID];
  v42 = sub_1D726207C();
  v44 = v43;

  v45 = *(a4 + 16);
  v271 = a7;
  v268 = v27;
  if (v45)
  {
    v46 = sub_1D5B69D90(v42, v44);
    v48 = v47;

    v51 = v260;
    if (v48)
    {
      isUniquelyReferenced_nonNull_native = *(*(a4 + 56) + 8 * v46);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {

    isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC0];
    v51 = v260;
  }

  v259 = a9;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_244:
    v49 = sub_1D7263BFC();
    v53 = v49;
  }

  else
  {
    v53 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = &selRef_setFillMode_;
  v270 = isUniquelyReferenced_nonNull_native;
  v272 = v53;
  if (v53)
  {
    v256 = 0;
    v258 = 0;
    v55 = 0;
    v56 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v264 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    *&v263 = isUniquelyReferenced_nonNull_native + 32;
    v274 = v51 + 56;
    *&v265 = v271 + 7;
    v257 = v261 + 7;
    v255 = v259 + 7;
    v269 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    while (1)
    {
      if (v56)
      {
        v49 = MEMORY[0x1DA6FB460](v55, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        if (v55 >= *(v264 + 16))
        {
          __break(1u);
          goto LABEL_244;
        }

        v49 = *(v263 + 8 * v55);
      }

      v57 = v49;
      v58 = __OFADD__(v55++, 1);
      if (v58)
      {
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        v54 = 0x1E84D6000;
        if (sub_1D5BE240C(v49, v50, v271) & 1) != 0 || (sub_1D5BE240C(v53, v57, v261) & 1) != 0 || (sub_1D5BE240C(v53, v57, v259))
        {
          goto LABEL_242;
        }

LABEL_235:

        v49 = swift_unknownObjectRelease();
        goto LABEL_119;
      }

      v59 = [v49 *(v54 + 928)];
      if (v59)
      {
        v273 = v57;
        v60 = v59;
        v57 = sub_1D726207C();
        v62 = v61;

        if (*(v51 + 16))
        {
          sub_1D7264A0C();
          sub_1D72621EC();
          v63 = sub_1D7264A5C();
          v64 = -1 << *(v51 + 32);
          v65 = v63 & ~v64;
          if ((*(v274 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65))
          {
            v66 = ~v64;
            while (1)
            {
              v67 = (*(v51 + 48) + 16 * v65);
              v68 = *v67 == v57 && v67[1] == v62;
              if (v68 || (sub_1D72646CC() & 1) != 0)
              {
                break;
              }

              v65 = (v65 + 1) & v66;
              if (((*(v274 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
              {
                goto LABEL_34;
              }
            }

LABEL_88:

            v54 = 0x1E84D6000;
            goto LABEL_18;
          }
        }

LABEL_34:
        v69 = *v267;
        if (*(*v267 + 16) && (v70 = sub_1D5B69D90(v57, v62), (v71 & 1) != 0))
        {
          v72 = v70;
          v73 = *(v69 + 56);
          sub_1D605FEA0(0);
          v75 = v74;
          v76 = *(v74 - 8);
          v77 = v73 + *(v76 + 72) * v72;
          v78 = v272;
          v79 = v268;
          sub_1D702DE88(v77, v268, sub_1D605FEA0);
          (*(v76 + 56))(v79, 0, 1, v75);
          v51 = v260;
        }

        else
        {
          v78 = v53;
          sub_1D605FEA0(0);
          v75 = v80;
          v79 = v268;
          (*(*(v80 - 8) + 56))(v268, 1, 1, v80);
        }

        sub_1D605FEA0(0);
        v54 = 0x1E84D6000;
        if ((*(*(v75 - 8) + 48))(v79, 1, v75))
        {

          v49 = sub_1D7031C2C(v79, sub_1D7031838);
          isUniquelyReferenced_nonNull_native = v270;
          goto LABEL_40;
        }

        v81 = *(v79 + *(v75 + 48));
        sub_1D7031C2C(v79, sub_1D7031838);
        if (v81 > 1)
        {
          isUniquelyReferenced_nonNull_native = v270;
          if (v81 == 2)
          {
            v82 = v271;
            v56 = v269;
            if (!v271[2])
            {

              v53 = v272;
              goto LABEL_18;
            }

            sub_1D7264A0C();
            sub_1D72621EC();
            v83 = sub_1D7264A5C();
            v84 = -1 << *(v82 + 32);
            v85 = v83 & ~v84;
            v53 = v272;
            if ((*(v265 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85))
            {
              v86 = ~v84;
              while (1)
              {
                v87 = (v271[6] + 16 * v85);
                v88 = *v87 == v57 && v87[1] == v62;
                if (v88 || (sub_1D72646CC() & 1) != 0)
                {
                  break;
                }

                v85 = (v85 + 1) & v86;
                if (((*(v265 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85) & 1) == 0)
                {
                  goto LABEL_88;
                }
              }

LABEL_89:
              sub_1D5B860D0(&v277, v57, v62);

              v54 = 0x1E84D6000;
              goto LABEL_18;
            }

            goto LABEL_88;
          }

          v53 = v78;
          v56 = v269;
          if (v271[2])
          {
            v97 = v271;
            sub_1D7264A0C();
            sub_1D72621EC();
            v98 = sub_1D7264A5C();
            v99 = *(v97 + 32);
            v53 = v272;
            v100 = -1 << v99;
            v101 = v98 & ~v100;
            if ((*(v265 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101))
            {
              v102 = ~v100;
              do
              {
                v103 = (v271[6] + 16 * v101);
                v104 = *v103 == v57 && v103[1] == v62;
                if (v104 || (sub_1D72646CC() & 1) != 0)
                {
                  goto LABEL_89;
                }

                v101 = (v101 + 1) & v102;
              }

              while (((*(v265 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101) & 1) != 0);
            }
          }

          if (v261[2])
          {
            v105 = v261;
            sub_1D7264A0C();
            sub_1D72621EC();
            v106 = sub_1D7264A5C();
            v107 = -1 << *(v105 + 32);
            v108 = v106 & ~v107;
            if ((*(v257 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108))
            {
              v109 = ~v107;
              do
              {
                v110 = (v261[6] + 16 * v108);
                v111 = *v110 == v57 && v110[1] == v62;
                if (v111 || (sub_1D72646CC() & 1) != 0)
                {
                  goto LABEL_89;
                }

                v108 = (v108 + 1) & v109;
              }

              while (((*(v257 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108) & 1) != 0);
            }
          }

          v78 = v53;
          v112 = v259;
          if (v259[2])
          {
            sub_1D7264A0C();
            sub_1D72621EC();
            v113 = sub_1D7264A5C();
            v114 = -1 << *(v112 + 32);
            v115 = v113 & ~v114;
            v53 = v78;
            v56 = v269;
            if ((*(v255 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115))
            {
              v116 = ~v114;
              while (1)
              {
                v117 = (v259[6] + 16 * v115);
                v118 = *v117 == v57 && v117[1] == v62;
                if (v118 || (sub_1D72646CC() & 1) != 0)
                {
                  goto LABEL_89;
                }

                v115 = (v115 + 1) & v116;
                if (((*(v255 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115) & 1) == 0)
                {
                  goto LABEL_88;
                }
              }
            }

            goto LABEL_88;
          }

          v54 = 0x1E84D6000;
LABEL_40:
          v53 = v78;
LABEL_41:
          v56 = v269;
          goto LABEL_18;
        }

        isUniquelyReferenced_nonNull_native = v270;
        v53 = v78;
        if (!v81)
        {

          goto LABEL_41;
        }

        v56 = v269;
        if (v247)
        {
          sub_1D5B74328(v256, 0);
          v89 = v262;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v90 = v89[3];
          *&v277 = v90;
          v54 = sub_1D5B69D90(v57, v62);
          v92 = *(v90 + 16);
          v93 = (v91 & 1) == 0;
          v94 = v92 + v93;
          if (__OFADD__(v92, v93))
          {
            goto LABEL_247;
          }

          if (*(v90 + 24) >= v94)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = v91;
              sub_1D6D7FBD4();
              LOBYTE(v91) = isUniquelyReferenced_nonNull_native;
            }
          }

          else
          {
            LODWORD(v256) = v91;
            sub_1D6D69220(v94, isUniquelyReferenced_nonNull_native);
            v95 = sub_1D5B69D90(v57, v62);
            v96 = v91 & 1;
            LOBYTE(v91) = v256;
            if ((v256 & 1) != v96)
            {
              goto LABEL_252;
            }

            v54 = v95;
          }

          v119 = v277;
          v262[3] = v277;
          if ((v91 & 1) == 0)
          {
            sub_1D6D7CFA0(v54, v57, v62, 0, v119);
          }

          v120 = v119[7];
          v121 = *(v120 + 8 * v54);
          v58 = __OFADD__(v121, 1);
          v122 = v121 + 1;
          if (v58)
          {
            goto LABEL_248;
          }

          *(v120 + 8 * v54) = v122;
          v256 = sub_1D5DF2CFC;
        }

        sub_1D5B74328(v258, 0);
        v123 = v262;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v124 = v123[4];
        *&v277 = v124;
        v125 = sub_1D5B69D90(v57, v62);
        v127 = *(v124 + 16);
        v128 = (v126 & 1) == 0;
        v58 = __OFADD__(v127, v128);
        v129 = v127 + v128;
        if (v58)
        {
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
          goto LABEL_249;
        }

        v54 = v126;
        if (*(v124 + 24) >= v129)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v135 = v125;
            sub_1D6D7FBD4();
            v125 = v135;
          }
        }

        else
        {
          sub_1D6D69220(v129, isUniquelyReferenced_nonNull_native);
          v125 = sub_1D5B69D90(v57, v62);
          if ((v54 & 1) != (v130 & 1))
          {
            goto LABEL_252;
          }
        }

        isUniquelyReferenced_nonNull_native = v270;
        v131 = v277;
        v262[4] = v277;
        if ((v54 & 1) == 0)
        {
          v54 = v125;
          sub_1D6D7CFA0(v125, v57, v62, 0, v131);

          v125 = v54;
        }

        v132 = v131[7];
        v133 = *(v132 + 8 * v125);
        v58 = __OFADD__(v133, 1);
        v134 = v133 + 1;
        if (v58)
        {
          goto LABEL_246;
        }

        *(v132 + 8 * v125) = v134;
        sub_1D5B860D0(&v277, v57, v62);

        v258 = sub_1D5DF2CFC;
        v54 = 0x1E84D6000;
      }

      else
      {
      }

LABEL_18:
      if (v55 == v53)
      {
        goto LABEL_109;
      }
    }
  }

  v256 = 0;
  v258 = 0;
LABEL_109:
  if (a10 != 2)
  {
    v49 = [v266 publisherID];
    if (v49)
    {
      v136 = v49;
      v53 = sub_1D726207C();
      v57 = v137;

      if ((sub_1D5BE240C(v53, v57, v51) & 1) == 0)
      {
        if (*(a11 + 16) && (sub_1D5B69D90(v53, v57), (v138 & 1) != 0))
        {
          if (a10)
          {
            sub_1D5B860D0(&v277, v53, v57);
          }

          else
          {
            v242 = a12[3];
            v243 = a12[4];
            __swift_project_boxed_opaque_existential_1(a12, v242);
            v244 = *(v243 + 8);
            v245 = swift_unknownObjectRetain();
            v244(&v277, v245, v242, v243);
            if (v277 <= 1u)
            {
              v54 = 0x1E84D6000;
              if (v277)
              {
                goto LABEL_242;
              }

              goto LABEL_235;
            }

            v49 = v53;
            v50 = v57;
            if (v277 != 2)
            {
              goto LABEL_239;
            }

            v54 = 0x1E84D6000;
            if ((sub_1D5BE240C(v53, v57, v271) & 1) == 0)
            {
              goto LABEL_235;
            }

LABEL_242:
            sub_1D5B860D0(&v277, v53, v57);
            swift_unknownObjectRelease();
          }
        }

        else
        {
          if (qword_1EDF12600 != -1)
          {
LABEL_249:
            swift_once();
          }

          v139 = qword_1EDFFC618;
          v140 = sub_1D7262EBC();
          sub_1D7031BC8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
          v141 = swift_allocObject();
          *(v141 + 16) = xmmword_1D7273AE0;
          *(v141 + 56) = MEMORY[0x1E69E6158];
          *(v141 + 64) = sub_1D5B7E2C0();
          *(v141 + 32) = v53;
          *(v141 + 40) = v57;
          sub_1D725C30C("Failed to find a publisher tag for %{public}@", 45, 2, &dword_1D5B42000, v139, v140, v141);
        }
      }

LABEL_119:
      v53 = v272;
    }
  }

  v280 = MEMORY[0x1E69E7CD0];
  v281 = MEMORY[0x1E69E7CD0];
  v279 = MEMORY[0x1E69E7CD0];
  if (v53)
  {
    v57 = 0;
    v142 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    LODWORD(v268) = a14;
    v274 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    isUniquelyReferenced_nonNull_native += 32;
    LODWORD(v273) = a13;
    v269 = (v271 + 7);
    v261 = 0x80000001D73FB400;
    v265 = xmmword_1D7270C10;
    v263 = xmmword_1D7279970;
    v143 = v266;
    v267 = v142;
    v264 = isUniquelyReferenced_nonNull_native;
    while (1)
    {
      if (v142)
      {
        v49 = MEMORY[0x1DA6FB460](v57, v270);
      }

      else
      {
        if (v57 >= *(v274 + 16))
        {
          goto LABEL_238;
        }

        v49 = *(isUniquelyReferenced_nonNull_native + 8 * v57);
      }

      v144 = v49;
      v58 = __OFADD__(v57++, 1);
      if (v58)
      {
        goto LABEL_237;
      }

      v145 = [v49 *(v54 + 928)];
      if (v145)
      {
        v146 = v145;
        v147 = sub_1D726207C();
        v149 = v148;

        if ([v144 isManagedTopic])
        {

          sub_1D5B860D0(&v277, v147, v149);
        }

        if ([v144 isManagedTopicWinner])
        {

          sub_1D5B860D0(&v277, v147, v149);
        }

        if ((v273 & 1) == 0)
        {
          goto LABEL_164;
        }

        if ([v144 isDisallowedFromGrouping])
        {

          if (v268)
          {
            if (qword_1EDF12600 != -1)
            {
              swift_once();
            }

            v150 = qword_1EDFFC618;
            sub_1D7031BC8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
            v151 = swift_allocObject();
            *(v151 + 16) = v265;
            v152 = [v143 itemID];
            v153 = sub_1D726207C();
            v155 = v154;

            *(v151 + 56) = MEMORY[0x1E69E6158];
            v156 = sub_1D5B7E2C0();
            *(v151 + 64) = v156;
            *(v151 + 32) = v153;
            *(v151 + 40) = v155;
            *&v277 = 0;
            *(&v277 + 1) = 0xE000000000000000;
            v157 = [v144 tagID];
            if (v157)
            {
              v158 = v157;
              v159 = sub_1D726207C();
              v161 = v160;
            }

            else
            {
              v159 = 0;
              v161 = 0;
            }

            v142 = v267;
            *&v275 = v159;
            *(&v275 + 1) = v161;
            v174 = MEMORY[0x1E69E6158];
            sub_1D703192C(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
            v175 = sub_1D72620FC();
            MEMORY[0x1DA6F9910](v175);

            v176 = v277;
            *(v151 + 96) = v174;
            *(v151 + 104) = v156;
            *(v151 + 72) = v176;
            v177 = sub_1D7262EDC();
            sub_1D725C30C("Article %{public}@ is disallowed from being grouped into %{public}@, omitting topic", 83, 2, &dword_1D5B42000, v150, v177, v151);

            v143 = v266;
            v53 = v272;
            v54 = 0x1E84D6000;
            isUniquelyReferenced_nonNull_native = v264;
          }

          else
          {

            v53 = v272;
          }

          goto LABEL_123;
        }

        if (([v144 hardFollowRequiredForGrouping] & 1) == 0)
        {
          goto LABEL_164;
        }

        v162 = [v143 publisherID];
        if (v162)
        {
          v163 = v162;
          v164 = sub_1D726207C();
          v166 = v165;

          v167 = v271;
          if (v271[2])
          {
            sub_1D7264A0C();

            sub_1D72621EC();
            v168 = sub_1D7264A5C();
            v169 = -1 << *(v167 + 32);
            v170 = v168 & ~v169;
            if ((*(v269 + ((v170 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v170))
            {
              v171 = ~v169;
              while (1)
              {
                v172 = (v271[6] + 16 * v170);
                v173 = *v172 == v164 && v172[1] == v166;
                if (v173 || (sub_1D72646CC() & 1) != 0)
                {
                  break;
                }

                v170 = (v170 + 1) & v171;
                if (((*(v269 + ((v170 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v170) & 1) == 0)
                {
                  goto LABEL_151;
                }
              }

              swift_bridgeObjectRelease_n();

              v143 = v266;
              v54 = 0x1E84D6000;
              v142 = v267;
LABEL_164:
              sub_1D5B860D0(&v277, v147, v149);

              v53 = v272;
              goto LABEL_123;
            }

LABEL_151:

            swift_bridgeObjectRelease_n();
          }

          else
          {
          }

          v143 = v266;
          v54 = 0x1E84D6000;
          v142 = v267;
        }

        else
        {
        }

        v53 = v272;
        if (v268)
        {
          if (qword_1EDF12600 != -1)
          {
            swift_once();
          }

          v178 = qword_1EDFFC618;
          sub_1D7031BC8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
          v179 = swift_allocObject();
          *(v179 + 16) = v263;
          v180 = [v143 itemID];
          v181 = sub_1D726207C();
          v183 = v182;

          *(v179 + 56) = MEMORY[0x1E69E6158];
          v184 = sub_1D5B7E2C0();
          *(v179 + 64) = v184;
          *(v179 + 32) = v181;
          *(v179 + 40) = v183;
          *&v277 = 0;
          *(&v277 + 1) = 0xE000000000000000;
          v185 = [v144 tagID];
          if (v185)
          {
            v186 = v185;
            v187 = sub_1D726207C();
            v189 = v188;
          }

          else
          {
            v187 = 0;
            v189 = 0;
          }

          *&v275 = v187;
          *(&v275 + 1) = v189;
          v190 = MEMORY[0x1E69E6158];
          sub_1D703192C(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          v191 = sub_1D72620FC();
          MEMORY[0x1DA6F9910](v191);

          v192 = v277;
          *(v179 + 96) = v190;
          *(v179 + 104) = v184;
          *(v179 + 72) = v192;
          *&v277 = 0;
          *(&v277 + 1) = 0xE000000000000000;
          v193 = [v266 publisherID];
          if (v193)
          {
            v194 = v193;
            v195 = sub_1D726207C();
            v197 = v196;
          }

          else
          {
            v195 = 0xD000000000000011;
            v197 = v261;
          }

          MEMORY[0x1DA6F9910](v195, v197);

          v198 = v277;
          *(v179 + 136) = MEMORY[0x1E69E6158];
          *(v179 + 144) = v184;
          *(v179 + 112) = v198;
          v199 = sub_1D7262EDC();
          sub_1D725C30C("Article %{public}@ is disallowed from being grouped into %{public}@ unless the publisher %{public}@ is a hard favorite, which it is not, omitting topic", 151, 2, &dword_1D5B42000, v178, v199, v179);

          v143 = v266;
          v53 = v272;
          v54 = 0x1E84D6000;
          v142 = v267;
          goto LABEL_123;
        }
      }

LABEL_123:
      if (v57 == v53)
      {
        v200 = v280;
        goto LABEL_173;
      }
    }
  }

  v200 = MEMORY[0x1E69E7CD0];
  v143 = v266;
LABEL_173:
  v201 = [v143 itemID];
  v271 = sub_1D726207C();
  v272 = v202;

  v203 = [v143 publisherID];
  if (v203)
  {
    v204 = v203;
    v269 = sub_1D726207C();
    v268 = v205;
  }

  else
  {
    v269 = 0;
    v268 = 0xE000000000000000;
  }

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  [v254 sortingScore];
  v273 = *(a15 + 16);
  v206 = [v273 paidAccessChecker];
  if (!v206)
  {
    __break(1u);
    goto LABEL_251;
  }

  v207 = v206;
  v274 = v200;
  v208 = v266;
  v209 = [v266 isPaid];
  if ([v208 respondsToSelector_])
  {
    v210 = [v208 isBundlePaid];
  }

  else
  {
    v210 = 0;
  }

  v211 = [v208 publisherID];
  if (v211)
  {
    v212 = v211;
    v267 = sub_1D726207C();
    v214 = v213;

    if (v209)
    {
      goto LABEL_182;
    }

LABEL_186:
    if (v210)
    {
      goto LABEL_190;
    }

LABEL_187:
    swift_unknownObjectRelease();

    goto LABEL_214;
  }

  v267 = 0;
  v214 = 0;
  if (!v209)
  {
    goto LABEL_186;
  }

LABEL_182:
  v215 = [v207 purchaseProvider];
  if (v214)
  {
    v216 = [v215 purchasedTagIDs];
    v217 = sub_1D7262B0C();

    LOBYTE(v216) = sub_1D5BE240C(v267, v214, v217);

    swift_unknownObjectRelease();
    if (v216)
    {

      swift_unknownObjectRelease();
      goto LABEL_214;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  if (!v210)
  {
    goto LABEL_187;
  }

LABEL_190:
  if (!v214)
  {
LABEL_211:
    swift_unknownObjectRelease();
    goto LABEL_214;
  }

  v218 = [objc_msgSend(v207 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v218, v218 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v275 = 0u;
    v276 = 0u;
  }

  v277 = v275;
  v278 = v276;
  if (!*(&v276 + 1))
  {
    sub_1D5EBD03C(&v277);
    goto LABEL_200;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_200:
    v219 = 0;
    v221 = 0;
    goto LABEL_201;
  }

  v219 = v281;
  v220 = [v281 integerValue];
  if (v220 == -1)
  {

    goto LABEL_213;
  }

  v221 = v220;
LABEL_201:
  if (objc_getAssociatedObject(v218, ~v221))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v275 = 0u;
    v276 = 0u;
  }

  v277 = v275;
  v278 = v276;
  if (*(&v276 + 1))
  {
    sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v222 = v281;
      v223 = [v222 integerValue];

      if ((v223 ^ v221))
      {
        goto LABEL_213;
      }

      goto LABEL_210;
    }
  }

  else
  {
    sub_1D5EBD03C(&v277);
  }

  if ((v221 & 1) == 0)
  {
LABEL_210:

    goto LABEL_211;
  }

LABEL_213:
  v224 = [objc_msgSend(v207 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v225 = [v224 bundleChannelIDs];

  v226 = sub_1D726203C();
  [v225 containsObject_];

  swift_unknownObjectRelease();
LABEL_214:
  v227 = [v273 paidAccessChecker];
  v228 = v266;
  if (v227)
  {
    v229 = v227;

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v230 = [v229 bundleSubscriptionProvider];
    swift_unknownObjectRelease();
    v231 = [v230 bundleSubscription];
    swift_unknownObjectRelease();
    [v231 containsItem_];

    if ([v228 respondsToSelector_])
    {
      [v228 isAIGenerated];
    }

    if ([v228 respondsToSelector_])
    {
      [v228 isEvergreen];
    }

    if ([v228 respondsToSelector_])
    {
      v232 = [v228 thumbnailPerceptualHash];
      if (v232)
      {
        v233 = v232;
        v234 = sub_1D725867C();
        v236 = v235;
      }

      else
      {
        v234 = 0;
        v236 = 0xF000000000000000;
      }

      *&v277 = v234;
      *(&v277 + 1) = v236;
      sub_1D703192C(0, &qword_1EDF18A90, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
      sub_1D726392C();
      sub_1D5B952E4(v234, v236);
    }

    (*(v249 + 104))(v248, *MEMORY[0x1E69E3278], v250);
    v237 = v251;
    sub_1D7258FCC();
    v238 = *v262;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v238 = sub_1D699695C(0, v238[2] + 1, 1, v238);
    }

    v240 = v238[2];
    v239 = v238[3];
    if (v240 >= v239 >> 1)
    {
      v238 = sub_1D699695C((v239 > 1), v240 + 1, 1, v238);
    }

    v238[2] = v240 + 1;
    (*(v252 + 32))(v238 + ((*(v252 + 80) + 32) & ~*(v252 + 80)) + *(v252 + 72) * v240, v237, v253);
    sub_1D5B74328(v256, 0);
    result = sub_1D5B74328(v258, 0);
    *v262 = v238;
    return result;
  }

LABEL_251:
  __break(1u);
LABEL_252:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D702ACA0(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 16) appConfigurationManager)];
  swift_unknownObjectRelease();
  if (([v2 respondsToSelector_] & 1) != 0 && objc_msgSend(v2, sel_enableTabiTagScoring) && (objc_msgSend(v2, sel_respondsToSelector_, sel_newsTabiConfiguration) & 1) != 0 && (v3 = objc_msgSend(v2, sel_newsTabiConfiguration), v4 = objc_msgSend(v3, sel_tagScoringConfiguration), v3, v4))
  {
    [v4 minimumChannelScoreForGrouping];

    return swift_unknownObjectRelease();
  }

  else
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    __swift_project_boxed_opaque_existential_1((a1 + 32), v6);
    (*(v7 + 80))(v6, v7);
    return swift_unknownObjectRelease();
  }
}

double sub_1D702ADF4(void **a1)
{
  v2 = sub_1D725891C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v7, v8).n128_u64[0];
  v11 = &v20 - v10;
  v12 = *a1;
  [a1[1] sortingScore];
  v14 = v13;
  if ([v12 respondsToSelector_])
  {
    if ([v12 isFeatureCandidate])
    {
      v15 = [v12 publishDate];
      if (v15)
      {
        v16 = v15;
        sub_1D72588BC();

        (*(v3 + 32))(v11, v6, v2);
        sub_1D725887C();
        v18 = v17;
        (*(v3 + 8))(v11, v2);
        if (v18 < 86400.0)
        {
          return v14 + 100.0;
        }
      }
    }
  }

  return v14;
}

id sub_1D702AF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10)
{
  v113 = a8;
  v114 = a7;
  v122 = a1;
  v123 = a2;
  v12 = type metadata accessor for FeedClusteringRequest(0);
  v117 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12, v13);
  v118 = v14;
  v126 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D702DE54(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1D725944C();
  v130 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133, v19);
  v125 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v106 - v23;
  v25 = sub_1D725C34C();
  v128 = *(v25 - 8);
  v129 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v124 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v106 - v30;
  v32 = sub_1D725C37C();
  v120 = *(v32 - 8);
  v121 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF12600 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDFFC618;
  sub_1D725C35C();
  v119 = v35;
  sub_1D725C36C();
  sub_1D725C32C();
  v127 = v31;
  sub_1D725C33C();
  tf_os_signpost_clustering_begin();
  v37 = [a5[2] personalizationTreatment];
  v38 = a5[5];
  v39 = *(a5 + v12[18]);
  v40 = *(a5 + v12[19]);
  v41 = *(a5 + v12[20]);
  LOBYTE(v134[0]) = *(a5 + v12[17]);
  v42 = v12[22];
  v43 = HIBYTE(*(a5 + v42)) & 1;
  if (*(a5 + v42) == 2)
  {
    LOBYTE(v43) = 0;
  }

  v44 = v12[10];
  v45 = v12[11];
  v47 = v12[13];
  v46 = v12[14];
  v48 = *(a5 + v12[21]);
  v105 = *(a5 + v12[12]);
  v131 = v37;
  v132 = v24;
  sub_1D701CBCC(v37, v38, (a5 + v44), a5 + v45, a5 + v47, a5 + v46, v134, v39, v24, v40, v41, v43, v48, v105);
  sub_1D725A9FC();
  if (sub_1D725A9CC())
  {
    sub_1D7031BC8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1D7273AE0;
    v50 = sub_1D702BA6C();
    v51 = a6;
    v53 = v52;
    *(v49 + 56) = MEMORY[0x1E69E6158];
    *(v49 + 64) = sub_1D5B7E2C0();
    v54 = 7104878;
    if (v53)
    {
      v54 = v50;
    }

    v55 = 0xE300000000000000;
    if (v53)
    {
      v55 = v53;
    }

    a6 = v51;
    *(v49 + 32) = v54;
    *(v49 + 40) = v55;
    v56 = sub_1D7262EDC();
    sub_1D725C30C("Clustering with Xavier using config %{public}@", 46, 2, &dword_1D5B42000, v36, v56, v49);
  }

  v57 = *a5;
  [v131 uGroupMinimumSubscribedChannelSourceFeedArticleRatio];
  v59 = v58;
  v60 = *(a5 + v12[15]);
  v112 = *(a5 + v42);
  sub_1D702DE88(a5 + v45, v18, sub_1D702DE54);
  v61 = type metadata accessor for FeedClusteringOptions(0);
  if ((*(*(v61 - 8) + 48))(v18, 1, v61) == 1)
  {
    sub_1D7031C2C(v18, sub_1D702DE54);
    v62 = 1.0;
  }

  else
  {
    v63 = &v18[*(v61 + 76)];
    v62 = *v63;
    v64 = v63[8];
    sub_1D7031C2C(v18, type metadata accessor for FeedClusteringOptions);
    if (v64)
    {
      v62 = 1.0;
    }
  }

  v65 = v12[23];
  v111 = *(a5 + v12[24]);
  v110 = *(a5 + v12[25]);
  v66 = a6;
  v67 = [*(a6 + 16) subscriptionList];
  result = [v67 ignoredTagIDs];
  if (result)
  {
    v69 = result;
    v70 = v57;
    v71 = sub_1D7262B0C();

    v72 = sub_1D5D6021C(v71, v60);
    result = [v67 mutedTagIDs];
    if (result)
    {
      v73 = result;
      v108 = a9;
      v109 = a10;
      v74 = sub_1D7262B0C();

      v75 = sub_1D5D6021C(v74, v72);
      MEMORY[0x1EEE9AC00](v75, v76);
      v77 = v112;
      *(&v106 - 16) = v112;
      *(&v106 - 3) = v70;
      v104 = v78;
      v105 = v66;
      sub_1D5C44E18(0);
      sub_1D725BDCC();
      sub_1D5B68374(a5 + v65, v134);
      v79 = swift_allocObject();
      v80 = v114;
      *(v79 + 16) = v114;
      *(v79 + 24) = v67;
      *(v79 + 32) = v66;
      *(v79 + 40) = v70;
      v107 = v66;
      *(v79 + 48) = v113;
      sub_1D5B63F14(v134, v79 + 56);
      *(v79 + 96) = v75;
      *(v79 + 104) = v111;
      *(v79 + 112) = v77;
      *(v79 + 120) = v59;
      *(v79 + 128) = v62;
      *(v79 + 136) = v110;
      swift_unknownObjectRetain();

      v113 = v80;
      v81 = v67;

      v82 = sub_1D725B92C();
      sub_1D702DF60(0);
      v114 = sub_1D725BA7C();

      v83 = v130;
      (*(v130 + 16))(v125, v132, v133);
      sub_1D5B68374(v108, v134);
      sub_1D702DE88(a5, v126, type metadata accessor for FeedClusteringRequest);
      v84 = v128;
      (*(v128 + 16))(v124, v127, v129);
      v85 = (*(v83 + 80) + 24) & ~*(v83 + 80);
      v86 = (v116 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
      v87 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
      v88 = (*(v117 + 80) + v87 + 40) & ~*(v117 + 80);
      v118 = (v118 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
      v89 = (v118 + 15) & 0xFFFFFFFFFFFFFFF8;
      v90 = (*(v84 + 80) + v89 + 8) & ~*(v84 + 80);
      v91 = (v115 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
      v92 = swift_allocObject();
      *(v92 + 16) = v107;
      (*(v83 + 32))(v92 + v85, v125, v133);
      v93 = v131;
      *(v92 + v86) = v131;
      sub_1D5B63F14(v134, v92 + v87);
      sub_1D70313E0(v126, v92 + v88, type metadata accessor for FeedClusteringRequest);
      v94 = v109;
      *(v92 + v118) = v109;
      v95 = v113;
      *(v92 + v89) = v113;
      v97 = v128;
      v96 = v129;
      (*(v128 + 32))(v92 + v90, v124, v129);
      v98 = (v92 + v91);
      v99 = v123;
      *v98 = v122;
      v98[1] = v99;
      v100 = v95;

      v101 = v93;
      v102 = v94;

      v103 = sub_1D725B92C();
      sub_1D725BA8C();

      (*(v130 + 8))(v132, v133);
      (*(v97 + 8))(v127, v96);
      return (*(v120 + 8))(v119, v121);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D702BA6C()
{
  v31 = *MEMORY[0x1E69E9840];
  v0 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  sub_1D72578EC();
  swift_allocObject();
  sub_1D72578DC();
  sub_1D725944C();
  sub_1D7031B18(&unk_1EDF18880, 255, MEMORY[0x1E69E34E8], MEMORY[0x1E69E34F0]);
  v8 = sub_1D72578BC();
  v10 = v9;

  v11 = objc_opt_self();
  v12 = sub_1D725865C();
  v27[0] = 0;
  v13 = [v11 JSONObjectWithData:v12 options:0 error:v27];

  v14 = v27[0];
  if (v13)
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(&v28, v30);
    v15 = sub_1D72646AC();
    v27[0] = 0;
    v16 = [v11 dataWithJSONObject:v15 options:1 error:v27];
    swift_unknownObjectRelease();
    v17 = v27[0];
    if (v16)
    {
      v18 = sub_1D725867C();
      v20 = v19;

      sub_1D72620CC();
      v21 = sub_1D726209C();
      sub_1D5B952F8(v8, v10);
      sub_1D5B952F8(v18, v20);
      __swift_destroy_boxed_opaque_existential_1(&v28);
      return v21;
    }

    v25 = v17;
    v26 = sub_1D725829C();

    swift_willThrow();
    v24 = v26;
    sub_1D5B952F8(v8, v10);
    __swift_destroy_boxed_opaque_existential_1(&v28);
  }

  else
  {
    v22 = v14;
    v23 = sub_1D725829C();

    swift_willThrow();
    v24 = v23;
    sub_1D5B952F8(v8, v10);
  }

  if (qword_1EDF12600 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDFFC618;
  v3 = sub_1D7262EBC();
  sub_1D7031BC8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_1D7263F9C();
  v5 = v28;
  v6 = v29;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D5B7E2C0();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_1D725C30C("Failed to make pretty version of encodable value %{public}@", 59, 2, &dword_1D5B42000, v2, v3, v4);

  return 0;
}

uint64_t sub_1D702BE58(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, char *a5, id **a6, void *a7, void *a8, uint64_t a9, uint64_t a10, id *a11)
{
  v137 = a7;
  v143 = a8;
  v156 = a6;
  v151 = a3;
  v142 = sub_1D725C34C();
  v136 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142, v15);
  v135 = v16;
  v141 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D72594FC();
  v144 = *(v17 - 8);
  v145 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v140 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v152 = &v128 - v22;
  v149 = sub_1D725944C();
  v146 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149, v23);
  v133 = v24;
  v148 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D7258F6C();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = *a1;
  sub_1D725A9FC();
  if (sub_1D725A9CC())
  {
    v155 = a4;
    if (qword_1EDF18870 != -1)
    {
      swift_once();
    }

    type metadata accessor for FeedClusteringService();
    sub_1D7031B18(qword_1EDF14318, v30, type metadata accessor for FeedClusteringService, &protocol conformance descriptor for FeedClusteringService);
    sub_1D725964C();
    *v29 = v157;
    (*(v26 + 104))(v29, *MEMORY[0x1E69E3198], v25);
    a4 = v155;
  }

  else
  {
    (*(v26 + 104))(v29, *MEMORY[0x1E69E3190], v25);
  }

  v31 = *(v146 + 16);
  v132 = v146 + 16;
  v131 = v31;
  v31(v148, v151, v149);
  sub_1D7258FBC();
  swift_allocObject();

  v147 = sub_1D7258F9C();
  v32 = [a4 defaultTopicsConfig];
  if (!v32)
  {
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    result = sub_1D726493C();
    __break(1u);
    return result;
  }

  v33 = v32;
  sub_1D6E1CF6C();

  v139 = a2;
  v34 = [*(a2 + 16) bundleSubscriptionManager];
  if (!v34)
  {
    goto LABEL_47;
  }

  v35 = [v34 bundleSubscription];
  swift_unknownObjectRelease();
  [v35 isSubscribed];

  sub_1D725947C();

  if (sub_1D725A9CC())
  {
    v36 = *(a5 + 3);
    v37 = *(a5 + 4);
    __swift_project_boxed_opaque_existential_1(a5, v36);
    v38 = *(v37 + 8);
    a5 = v147;

    v38(v39, v36, v37);
  }

  v40 = *v156;
  v154 = (*v156)[2];
  if (v154)
  {
    v41 = 0;
    v42 = v40 + 6;
    v43 = MEMORY[0x1E69E7CC8];
    v153 = v40;
    while (1)
    {
      if (v41 >= v40[2])
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v48 = v43;
      v49 = *(v42 - 2);
      v50 = *(v42 - 1);
      v156 = *v42;
      v51 = v156;
      swift_unknownObjectRetain();
      v52 = v50;
      v53 = [v49 itemID];
      v54 = sub_1D726207C();
      v25 = v55;

      swift_unknownObjectRetain();
      a5 = v52;
      v155 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v157 = v48;
      v57 = sub_1D5B69D90(v54, v25);
      v59 = *(v48 + 2);
      v60 = (v58 & 1) == 0;
      v61 = __OFADD__(v59, v60);
      v62 = v59 + v60;
      if (v61)
      {
        goto LABEL_42;
      }

      v63 = v58;
      if (*(v48 + 3) < v62)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_20;
      }

      v69 = v57;
      sub_1D6D870F4();
      v57 = v69;
      if (v63)
      {
LABEL_12:
        v44 = v57;

        v45 = v157;
        v46 = (*(v157 + 7) + 24 * v44);
        v47 = v46[1];
        v25 = v46[2];
        *v46 = v49;
        v46[1] = a5;
        v46[2] = v156;

        swift_unknownObjectRelease();
        v43 = v45;
        swift_unknownObjectRelease();

        goto LABEL_13;
      }

LABEL_21:
      v43 = v157;
      *&v157[8 * (v57 >> 6) + 64] |= 1 << v57;
      v65 = (*(v43 + 6) + 16 * v57);
      *v65 = v54;
      v65[1] = v25;
      v66 = (*(v43 + 7) + 24 * v57);
      *v66 = v49;
      v66[1] = a5;
      v66[2] = v156;

      swift_unknownObjectRelease();
      v67 = *(v43 + 2);
      v61 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (v61)
      {
        goto LABEL_44;
      }

      *(v43 + 2) = v68;
LABEL_13:
      ++v41;
      v42 += 3;
      v40 = v153;
      if (v154 == v41)
      {
        goto LABEL_26;
      }
    }

    sub_1D6D76008(v62, isUniquelyReferenced_nonNull_native);
    v57 = sub_1D5B69D90(v54, v25);
    if ((v63 & 1) != (v64 & 1))
    {
      goto LABEL_48;
    }

LABEL_20:
    if (v63)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  v43 = MEMORY[0x1E69E7CC8];
LABEL_26:
  a5 = MEMORY[0x1E69E7CC0];
  v157 = MEMORY[0x1E69E7CC0];
  v70 = sub_1D72594EC();
  v71 = v138;
  sub_1D701C4BC(v70, &v157);

  v72 = sub_1D72594DC();
  sub_1D701C4BC(v72, &v157);
  v154 = v71;

  v73 = sub_1D72594CC();
  sub_1D6985160(v73);
  v74 = v157;
  v75 = *(v157 + 2);
  v155 = v43;
  if (v75)
  {
    v76 = 0;
    v156 = (v75 - 1);
LABEL_28:
    v77 = &v74[16 * v76 + 40];
    v78 = v76;
    while (v78 < *(v74 + 2))
    {
      if (*(v43 + 2))
      {
        v79 = *(v77 - 1);
        v25 = *v77;

        v80 = sub_1D5B69D90(v79, v25);
        if (v81)
        {
          v82 = (*(v43 + 7) + 24 * v80);
          v83 = *v82;
          v84 = v82[1];
          v85 = v82[2];
          v86 = v85;
          swift_unknownObjectRetain();
          v153 = v84;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a5 = sub_1D698BF70(0, *(a5 + 2) + 1, 1, a5);
          }

          v25 = *(a5 + 2);
          v87 = *(a5 + 3);
          if (v25 >= v87 >> 1)
          {
            a5 = sub_1D698BF70((v87 > 1), v25 + 1, 1, a5);
          }

          v76 = (v78 + 1);
          *(a5 + 2) = v25 + 1;
          v88 = &a5[24 * v25];
          v89 = v153;
          *(v88 + 4) = v83;
          *(v88 + 5) = v89;
          *(v88 + 6) = v85;
          v43 = v155;
          if (v156 != v78)
          {
            goto LABEL_28;
          }

          goto LABEL_39;
        }
      }

      v78 = (v78 + 1);
      v77 += 2;
      if (v75 == v78)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_43;
  }

LABEL_39:
  v153 = a11;
  v130 = a9;
  v138 = a10;

  v156 = sub_1D72594DC();
  v25 = sub_1D72594EC();
  if (qword_1EDF12600 != -1)
  {
LABEL_45:
    swift_once();
  }

  v128 = qword_1EDFFC618;
  sub_1D7031BC8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_1D7274590;
  v157 = *(v150 + 16);
  v91 = sub_1D72644BC();
  v93 = v92;
  v94 = MEMORY[0x1E69E6158];
  *(v90 + 56) = MEMORY[0x1E69E6158];
  v95 = sub_1D5B7E2C0();
  *(v90 + 64) = v95;
  *(v90 + 32) = v91;
  *(v90 + 40) = v93;
  v129 = v25;
  v157 = *(v25 + 16);
  v96 = sub_1D72644BC();
  *(v90 + 96) = v94;
  *(v90 + 104) = v95;
  *(v90 + 72) = v96;
  *(v90 + 80) = v97;
  v157 = v156[2];
  v98 = sub_1D72644BC();
  *(v90 + 136) = v94;
  *(v90 + 144) = v95;
  *(v90 + 112) = v98;
  *(v90 + 120) = v99;
  v100 = *(a5 + 2);

  v157 = v100;
  v101 = sub_1D72644BC();
  *(v90 + 176) = v94;
  *(v90 + 184) = v95;
  *(v90 + 152) = v101;
  *(v90 + 160) = v102;
  v103 = sub_1D7262EDC();
  sub_1D725C30C("Clustered %{public}@ items into %{public}@ channel groups, %{public}@ topic groups, and %{public}@ total chosen items", 117, 2, &dword_1D5B42000, v128, v103, v90);

  MEMORY[0x1EEE9AC00](v104, v105);
  v106 = v139;
  v107 = v152;
  *(&v128 - 2) = v139;
  *(&v128 - 1) = v107;
  sub_1D5C44E18(0);
  v150 = sub_1D725BDCC();
  v131(v148, v151, v149);
  v108 = v136;
  (*(v136 + 16))(v141, v130, v142);
  v109 = v144;
  (*(v144 + 16))(v140, v107, v145);
  v110 = v146;
  v111 = (*(v146 + 80) + 64) & ~*(v146 + 80);
  v112 = (v133 + *(v108 + 80) + v111) & ~*(v108 + 80);
  v113 = (v135 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
  v114 = (*(v109 + 80) + v113 + 16) & ~*(v109 + 80);
  v115 = (v134 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
  v116 = swift_allocObject();
  v117 = v155;
  *(v116 + 2) = v129;
  *(v116 + 3) = v117;
  *(v116 + 4) = v106;
  v118 = v137;
  v119 = v143;
  *(v116 + 5) = v137;
  *(v116 + 6) = v119;
  *(v116 + 7) = v156;
  (*(v110 + 32))(&v116[v111], v148, v149);
  (*(v108 + 32))(&v116[v112], v141, v142);
  v120 = &v116[v113];
  v121 = v153;
  *v120 = v138;
  v120[1] = v121;
  v123 = v144;
  v122 = v145;
  (*(v144 + 32))(&v116[v114], v140, v145);
  *&v116[v115] = v147;

  v124 = v118;
  v125 = v143;

  v126 = sub_1D725B92C();
  sub_1D725BA8C();

  return (*(v123 + 8))(v152, v122);
}

uint64_t sub_1D702CB90(uint64_t a1, __n128 a2)
{
  sub_1D702CCA0(a2);
  sub_1D703179C(0, &qword_1EDF1AEB0, &qword_1EDF3C770, &protocolRef_FCTagProviding, MEMORY[0x1E69E62F8]);
  sub_1D725BDCC();

  v2 = sub_1D725B92C();
  sub_1D5C44E18(0);
  sub_1D6C7626C();
  v3 = sub_1D725BBEC();

  return v3;
}

uint64_t sub_1D702CCA0(__n128 a1)
{
  v1 = sub_1D72594EC();
  v2 = sub_1D72594DC();
  sub_1D6988EDC(v2);
  v3 = *(v1 + 16);
  if (v3)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v3, 0);
    v4 = v12;
    v5 = (v1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(v12 + 16);
      v9 = *(v12 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_1D5BFC364((v9 > 1), v8 + 1, 1);
      }

      *(v12 + 16) = v8 + 1;
      v10 = v12 + 16 * v8;
      *(v10 + 32) = v7;
      *(v10 + 40) = v6;
      v5 += 3;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

void sub_1D702CDAC(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, char *a7, uint64_t a8, uint64_t a9, void (*a10)(_BYTE *))
{
  v144 = a8;
  v146 = a7;
  *&v147 = a3;
  v139 = a4;
  v14 = sub_1D7258F8C();
  v141 = *(v14 - 8);
  v142 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v140 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = *(a2 + 16);
  v145 = *a1;
  if (!v18)
  {
    v151 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  v137 = a5;
  v19 = 0;
  v20 = a2 + 48;
  v151 = MEMORY[0x1E69E7CC0];
  v143 = a6;
  v136 = a2 + 48;
  do
  {
    v21 = (v20 + 24 * v19);
    v22 = v19;
    while (1)
    {
      if (v22 >= v18)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v19 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_46;
      }

      if (v17[2])
      {
        break;
      }

LABEL_5:
      ++v22;
      v21 += 3;
      if (v19 == v18)
      {
        a6 = v143;
        goto LABEL_34;
      }
    }

    v23 = *(v21 - 2);
    v24 = *(v21 - 1);
    v25 = *v21;
    swift_bridgeObjectRetain_n();

    v26 = sub_1D5B69D90(v23, v24);
    if ((v27 & 1) == 0)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_5;
    }

    v28 = *(v25 + 16);
    v135 = *(v17[7] + 8 * v26);
    swift_unknownObjectRetain();
    if (!v28)
    {
      v138 = MEMORY[0x1E69E7CC0];
      goto LABEL_26;
    }

    v29 = 0;
    v30 = v25 + 40;
    v133 = v28 - 1;
    v138 = MEMORY[0x1E69E7CC0];
    v31 = v147;
    v134 = v25 + 40;
    while (2)
    {
      v17 = (v30 + 16 * v29);
      v32 = v29;
      while (2)
      {
        if (v32 >= *(v25 + 16))
        {
          goto LABEL_47;
        }

        if (!*(v31 + 16))
        {
          goto LABEL_14;
        }

        v34 = *(v17 - 1);
        v33 = *v17;

        v35 = sub_1D5B69D90(v34, v33);
        if ((v36 & 1) == 0)
        {

          v31 = v147;
LABEL_14:
          ++v32;
          v17 += 2;
          if (v28 == v32)
          {
            v17 = v145;
            goto LABEL_26;
          }

          continue;
        }

        break;
      }

      v37 = (*(v147 + 56) + 24 * v35);
      v38 = *v37;
      v39 = v37[1];
      v132 = v37[2];
      v40 = v132;
      swift_unknownObjectRetain();
      v131 = v39;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v138 = sub_1D698BF70(0, *(v138 + 2) + 1, 1, v138);
      }

      v42 = *(v138 + 2);
      v41 = *(v138 + 3);
      if (v42 >= v41 >> 1)
      {
        v138 = sub_1D698BF70((v41 > 1), v42 + 1, 1, v138);
      }

      v29 = v32 + 1;
      v43 = v138;
      *(v138 + 2) = v42 + 1;
      v44 = &v43[24 * v42];
      v45 = v131;
      *(v44 + 4) = v38;
      *(v44 + 5) = v45;
      *(v44 + 6) = v132;
      v31 = v147;
      v17 = v145;
      v30 = v134;
      if (v133 != v32)
      {
        continue;
      }

      break;
    }

LABEL_26:

    v46 = sub_1D7030C9C(v138);

    v47 = v137;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v151 = sub_1D6996AEC(0, *(v151 + 2) + 1, 1, v151);
    }

    a6 = v143;
    v48 = v135;
    v50 = *(v151 + 2);
    v49 = *(v151 + 3);
    if (v50 >= v49 >> 1)
    {
      v151 = sub_1D6996AEC((v49 > 1), v50 + 1, 1, v151);
    }

    v51 = v151;
    *(v151 + 2) = v50 + 1;
    v52 = &v51[24 * v50];
    *(v52 + 4) = v48;
    *(v52 + 5) = v46;
    *(v52 + 6) = v47;
    v20 = v136;
  }

  while (v19 != v18);
LABEL_34:
  v53 = [a6 subscribedTags];
  sub_1D5B5534C(0, &qword_1EDF3C770, &protocolRef_FCTagProviding);
  v19 = sub_1D726267C();

  if (v19 >> 62)
  {
LABEL_48:
    v54 = sub_1D7263BFC();
    if (!v54)
    {
      goto LABEL_49;
    }

LABEL_36:
    *v148 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v54 & ~(v54 >> 63), 0);
    if ((v54 & 0x8000000000000000) == 0)
    {
      v55 = 0;
      v56 = *v148;
      do
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA6FB460](v55, v19);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        v57 = [swift_unknownObjectRetain() identifier];
        v58 = sub_1D726207C();
        v60 = v59;
        swift_unknownObjectRelease_n();

        *v148 = v56;
        v62 = *(v56 + 16);
        v61 = *(v56 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_1D5BFC364((v61 > 1), v62 + 1, 1);
          v56 = *v148;
        }

        ++v55;
        *(v56 + 16) = v62 + 1;
        v63 = v56 + 16 * v62;
        *(v63 + 32) = v58;
        *(v63 + 40) = v60;
      }

      while (v54 != v55);

      v17 = v145;
      goto LABEL_50;
    }

    __break(1u);
    return;
  }

  v54 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v54)
  {
    goto LABEL_36;
  }

LABEL_49:

  v56 = MEMORY[0x1E69E7CC0];
LABEL_50:
  v143 = sub_1D5B86020(v56);

  v64 = *(v146 + 2);
  if (v64)
  {
    v65 = 0;
    v66 = v146 + 48;
    v146 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v67 = &v66[24 * v65];
      v68 = v65;
      while (1)
      {
        if (v68 >= v64)
        {
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v65 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          goto LABEL_101;
        }

        if (v17[2])
        {
          break;
        }

LABEL_54:
        ++v68;
        v67 += 24;
        if (v65 == v64)
        {
          goto LABEL_83;
        }
      }

      v69 = *(v67 - 2);
      v70 = *(v67 - 1);
      v71 = *v67;

      v72 = sub_1D5B69D90(v69, v70);
      if ((v73 & 1) == 0)
      {
        break;
      }

      v136 = v64;
      v74 = *(v71 + 16);
      v137 = *(v17[7] + 8 * v72);
      swift_unknownObjectRetain();
      if (v74)
      {
        v75 = 0;
        v76 = v71 + 40;
        v133 = v74 - 1;
        v138 = MEMORY[0x1E69E7CC0];
        v77 = v147;
        v135 = v66;
        v134 = v71 + 40;
        while (1)
        {
          v78 = (v76 + 16 * v75);
          v79 = v75;
          while (1)
          {
            if (v79 >= *(v71 + 16))
            {
              goto LABEL_103;
            }

            if (!*(v77 + 16))
            {
              goto LABEL_62;
            }

            v80 = *(v78 - 1);
            v81 = *v78;

            v82 = sub_1D5B69D90(v80, v81);
            if (v83)
            {
              break;
            }

            v77 = v147;
LABEL_62:
            ++v79;
            v78 += 2;
            if (v74 == v79)
            {
              v17 = v145;
              v66 = v135;
              goto LABEL_76;
            }
          }

          v84 = (*(v147 + 56) + 24 * v82);
          v85 = *v84;
          v86 = v84[1];
          v132 = v84[2];
          v87 = v132;
          swift_unknownObjectRetain();
          v88 = v86;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v131 = v88;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v138 = sub_1D698BF70(0, *(v138 + 2) + 1, 1, v138);
          }

          v91 = *(v138 + 2);
          v90 = *(v138 + 3);
          if (v91 >= v90 >> 1)
          {
            v138 = sub_1D698BF70((v90 > 1), v91 + 1, 1, v138);
          }

          v75 = v79 + 1;
          v92 = v138;
          *(v138 + 2) = v91 + 1;
          v93 = &v92[24 * v91];
          v94 = v131;
          *(v93 + 4) = v85;
          *(v93 + 5) = v94;
          *(v93 + 6) = v132;
          v95 = v133 == v79;
          v77 = v147;
          v17 = v145;
          v66 = v135;
          v76 = v134;
          if (v95)
          {
            goto LABEL_76;
          }
        }
      }

      v138 = MEMORY[0x1E69E7CC0];
LABEL_76:
      v96 = sub_1D7030C9C(v138);

      v98 = sub_1D7025098(v137, v143, v68, v97);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v146 = sub_1D6996914(0, *(v146 + 2) + 1, 1, v146);
      }

      v64 = v136;
      v100 = *(v146 + 2);
      v99 = *(v146 + 3);
      if (v100 >= v99 >> 1)
      {
        v146 = sub_1D6996914((v99 > 1), v100 + 1, 1, v146);
      }

      v101 = v146;
      *(v146 + 2) = v100 + 1;
      v102 = &v101[24 * v100];
      *(v102 + 4) = v137;
      *(v102 + 5) = v96;
      *(v102 + 6) = v98;
      if (v65 == v64)
      {
        goto LABEL_83;
      }
    }

    goto LABEL_54;
  }

  v146 = MEMORY[0x1E69E7CC0];
LABEL_83:
  if (qword_1EDF12600 != -1)
  {
    goto LABEL_104;
  }

  while (1)
  {
    sub_1D725C33C();
    tf_os_signpost_clustering_end();
    v103 = sub_1D72594CC();
    v104 = v103;
    v105 = *(v103 + 16);
    if (!v105)
    {
      break;
    }

    v106 = 0;
    v107 = (v103 + 40);
    v108 = (v105 - 1);
    v109 = MEMORY[0x1E69E7CC0];
LABEL_86:
    v110 = &v107[16 * v106];
    v111 = v106;
    v112 = v147;
    while (v111 < *(v104 + 16))
    {
      if (*(v112 + 16))
      {
        v113 = *(v110 - 1);
        v114 = *v110;

        v115 = sub_1D5B69D90(v113, v114);
        if (v116)
        {
          v138 = v107;
          v145 = v108;
          v117 = (*(v147 + 56) + 24 * v115);
          v118 = *v117;
          v119 = v117[1];
          v120 = v117[2];
          v121 = v120;
          swift_unknownObjectRetain();
          v122 = v119;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = sub_1D698BF70(0, *(v109 + 2) + 1, 1, v109);
          }

          v124 = *(v109 + 2);
          v123 = *(v109 + 3);
          if (v124 >= v123 >> 1)
          {
            v109 = sub_1D698BF70((v123 > 1), v124 + 1, 1, v109);
          }

          v106 = (v111 + 1);
          *(v109 + 2) = v124 + 1;
          v125 = &v109[24 * v124];
          *(v125 + 4) = v118;
          *(v125 + 5) = v122;
          *(v125 + 6) = v120;
          v108 = v145;
          v107 = v138;
          if (v145 != v111)
          {
            goto LABEL_86;
          }

          goto LABEL_99;
        }

        v112 = v147;
      }

      v111 = (v111 + 1);
      v110 += 2;
      if (v105 == v111)
      {
        goto LABEL_99;
      }
    }

LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    swift_once();
  }

  v109 = MEMORY[0x1E69E7CC0];
LABEL_99:

  v150[0] = v146;
  v150[1] = v109;
  sub_1D70245A0(v144, v150, v143, v148);

  v126 = v140;
  sub_1D7258FAC();
  v127 = sub_1D7258F7C();
  v128 = *(v141 + 8);
  v147 = *v148;
  v128(v126, v142);
  v129 = sub_1D7030068(v127);

  *v148 = v151;
  *&v148[8] = v147;
  v149 = v129;
  a10(v148);
}

id sub_1D702D920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 16);

  result = [v9 translationManager];
  if (result)
  {
    v11 = result;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1D5B7E910;
    *(v12 + 24) = v8;
    v14[4] = sub_1D62E7ED0;
    v14[5] = v12;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1D5BE62C8;
    v14[3] = &block_descriptor_127;
    v13 = _Block_copy(v14);

    [v11 fetchTranslationProvider_];
    _Block_release(v13);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D702DA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 16);

  v12 = [v11 subscriptionController];
  if (v12)
  {
    v13 = v12;
    sub_1D725AC4C();
    v14 = sub_1D725ABFC();
    v15 = swift_allocObject();
    v15[2] = sub_1D6F05050;
    v15[3] = v10;
    v15[4] = a3;
    v15[5] = a4;
    v17[4] = sub_1D7031DF0;
    v17[5] = v15;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1D6DC0B78;
    v17[3] = &block_descriptor_38_0;
    v16 = _Block_copy(v17);

    [v13 fetchAllTagsWithCallbackQueue:v14 maximumCachedAge:25 qualityOfService:v16 completion:86400.0];
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D702DBE0(void *a1, id a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  if (a1)
  {
    v11 = a1;
    a3();
    v6 = v11;
  }

  else
  {
    if (a2)
    {
      v8 = a2;
      v9 = a2;
      v10 = v8;
    }

    else
    {
      sub_1D7031DFC();
      v10 = swift_allocError();
      v8 = v10;
    }

    a5(v10);
    v6 = v8;
  }
}

uint64_t sub_1D702DCB0(void *a1, uint64_t a2)
{
  v3 = a1[17];
  v4 = a1[18];
  __swift_project_boxed_opaque_existential_1(a1 + 14, v3);
  v5 = [objc_opt_self() cachePolicyWithSoftMaxAge_];
  v6 = (*(v4 + 24))(a2, v5, v3, v4);

  return v6;
}

uint64_t FeedClusteringService.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  return v0;
}

uint64_t FeedClusteringService.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  return swift_deallocClassInstance();
}

uint64_t sub_1D702DE88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D702DF60(uint64_t a1)
{
  if (!qword_1EDF053D0)
  {
    v1 = MEMORY[0x1E69E62F8];
    sub_1D7031BC8(255, &qword_1EDF053D8, MEMORY[0x1E69E31B8], MEMORY[0x1E69E62F8]);
    sub_1D7031BC8(255, &unk_1EDF053E0, MEMORY[0x1E69E3180], v1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF053D0);
    }
  }
}

uint64_t sub_1D702E02C(uint64_t *a1)
{
  v3 = *(sub_1D725944C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for FeedClusteringRequest(0) - 8);
  v8 = (v6 + *(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_1D725C34C() - 8);
  v12 = (*(v11 + 80) + v10 + 8) & ~*(v11 + 80);
  v13 = v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1D702BE58(a1, *(v1 + 16), v1 + v4, *(v1 + v5), (v1 + v6), (v1 + v8), *(v1 + v9), *(v1 + v10), v1 + v12, *v13, *(v13 + 8));
}

void sub_1D702E1EC(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_1D6EC4E1C(0x20000000000001uLL);
  }
}

void sub_1D702E274(uint64_t **a1)
{
  v3 = *(sub_1D725944C() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1D725C34C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D72594FC();
  sub_1D702CDAC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v4, v1 + v7, *(v1 + v8));
}

void sub_1D702E410(uint64_t *a1)
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

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D702E960(v7, v8, a1, v4);
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
    sub_1D702E508(0, v2, 1, a1);
  }
}

void sub_1D702E508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v65 = sub_1D725891C();
  MEMORY[0x1EEE9AC00](v65, v8);
  v62 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v60 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v59 = &v54 - v19;
  v55 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v63 = (v18 + 8);
    v64 = (v18 + 32);
    v67 = v20;
    v21 = v20 + 24 * a3;
    v22 = a1 - a3;
LABEL_5:
    v57 = v21;
    v58 = a3;
    v23 = v67 + 24 * a3;
    v25 = *v23;
    v24 = *(v23 + 8);
    v26 = *(v23 + 16);
    v56 = v22;
    while (1)
    {
      v27 = *(v21 - 24);
      v28 = *(v21 - 16);
      v68 = *(v21 - 8);
      swift_unknownObjectRetain();
      v29 = v24;
      v30 = v26;
      swift_unknownObjectRetain();
      v31 = v28;
      [v29 sortingScore];
      v33 = v32;
      if ([v25 respondsToSelector_])
      {
        if ([v25 isFeatureCandidate])
        {
          v34 = [v25 publishDate];
          if (v34)
          {
            v66 = v30;
            v35 = v60;
            v36 = v34;
            sub_1D72588BC();

            v37 = v59;
            v38 = v35;
            v39 = v65;
            (*v64)(v59, v38, v65);
            sub_1D725887C();
            v41 = v40;
            v42 = v39;
            v30 = v66;
            (*v63)(v37, v42);
            if (v41 < 86400.0)
            {
              v33 = v33 + 100.0;
            }
          }
        }
      }

      [v31 sortingScore];
      v44 = v43;
      if (([v27 respondsToSelector_] & 1) != 0 && (objc_msgSend(v27, sel_isFeatureCandidate) & 1) != 0 && (v45 = objc_msgSend(v27, sel_publishDate)) != 0)
      {
        v66 = v30;
        v46 = v62;
        v47 = v45;
        sub_1D72588BC();

        v48 = v61;
        v49 = v46;
        v50 = v65;
        (*v64)(v61, v49, v65);
        sub_1D725887C();
        v52 = v51;
        (*v63)(v48, v50);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v52 < 86400.0)
        {
          v44 = v44 + 100.0;
        }

        if (v44 >= v33)
        {
LABEL_4:
          a3 = v58 + 1;
          v21 = v57 + 24;
          v22 = v56 - 1;
          if (v58 + 1 == v55)
          {
            return;
          }

          goto LABEL_5;
        }
      }

      else
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v44 >= v33)
        {
          goto LABEL_4;
        }
      }

      if (!v67)
      {
        break;
      }

      v25 = *v21;
      v24 = *(v21 + 8);
      v26 = *(v21 + 16);
      *v21 = *(v21 - 24);
      *(v21 + 16) = *(v21 - 8);
      *(v21 - 16) = v24;
      *(v21 - 8) = v26;
      *(v21 - 24) = v25;
      v21 -= 24;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D702E960(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v175 = a1;
  v192 = sub_1D725891C();
  MEMORY[0x1EEE9AC00](v192, v8);
  v187 = &v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v186 = &v171 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v185 = &v171 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v184 = &v171 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v179 = &v171 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v178 = &v171 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v177 = &v171 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v176 = &v171 - v31;
  v188 = a3;
  v32 = *(a3 + 8);
  if (v32 < 1)
  {
    v34 = MEMORY[0x1E69E7CC0];
LABEL_112:
    a3 = *v175;
    if (!*v175)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_144:
      v34 = sub_1D62FF50C(v34);
    }

    v199 = v34;
    v167 = *(v34 + 2);
    if (v167 >= 2)
    {
      while (*v188)
      {
        v168 = *&v34[16 * v167];
        v169 = *&v34[16 * v167 + 24];
        sub_1D702F6E8(&(*v188)[24 * v168], &(*v188)[24 * *&v34[16 * v167 + 16]], &(*v188)[24 * v169], a3);
        if (v5)
        {
          goto LABEL_122;
        }

        if (v169 < v168)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_1D62FF50C(v34);
        }

        if (v167 - 2 >= *(v34 + 2))
        {
          goto LABEL_138;
        }

        v170 = &v34[16 * v167];
        *v170 = v168;
        *(v170 + 1) = v169;
        v199 = v34;
        sub_1D62FF480(v167 - 1);
        v34 = v199;
        v167 = *(v199 + 2);
        if (v167 <= 1)
        {
          goto LABEL_122;
        }
      }

      goto LABEL_148;
    }

LABEL_122:

    return;
  }

  v33 = 0;
  v190 = (v30 + 8);
  v191 = (v30 + 32);
  v34 = MEMORY[0x1E69E7CC0];
  v172 = a4;
  while (1)
  {
    v35 = v33 + 1;
    v183 = v34;
    if (v33 + 1 < v32)
    {
      v174 = v5;
      v36 = *v188;
      v37 = &(*v188)[24 * v35];
      v38 = *v37;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      v193 = 24 * v33;
      v41 = &v36[24 * v33];
      a3 = *v41;
      v42 = v41[1];
      v43 = v41[2];
      v196 = v38;
      v197 = v39;
      v198 = v40;
      v195 = v43;
      swift_unknownObjectRetain();
      v44 = v39;
      v189 = v32;
      v45 = v44;
      v46 = v40;
      swift_unknownObjectRetain();
      v47 = v42;
      v48 = sub_1D702ADF4(&v196);
      v196 = a3;
      v197 = v47;
      v198 = v43;
      v49 = sub_1D702ADF4(&v196);

      v35 = v189;
      swift_unknownObjectRelease();

      v34 = v183;
      swift_unknownObjectRelease();
      v173 = v33;
      v50 = v33 + 2;
      v51 = (v41 + 8);
      while (v35 != v50)
      {
        v52 = *(v51 - 1);
        v53 = *v51;
        v54 = *(v51 - 5);
        v55 = *(v51 - 4);
        v56 = *(v51 - 2);
        v195 = *(v51 - 3);
        swift_unknownObjectRetain();
        v57 = v52;
        a3 = v53;
        swift_unknownObjectRetain();
        v58 = v55;
        v59 = &selRef_superfeedConfigResourceID;
        [v57 sortingScore];
        v61 = v60;
        if (([v56 respondsToSelector_] & 1) != 0 && objc_msgSend(v56, sel_isFeatureCandidate))
        {
          v62 = [v56 publishDate];
          v34 = v183;
          if (v62)
          {
            v194 = a3;
            v63 = v177;
            v64 = v62;
            sub_1D72588BC();

            v65 = v176;
            v66 = v63;
            v67 = v192;
            (*v191)(v176, v66, v192);
            sub_1D725887C();
            v69 = v68;
            v70 = v65;
            v59 = &selRef_superfeedConfigResourceID;
            v71 = v67;
            a3 = v194;
            (*v190)(v70, v71);
            if (v69 < 86400.0)
            {
              v61 = v61 + 100.0;
            }
          }
        }

        else
        {
          v34 = v183;
        }

        [v58 sortingScore];
        v73 = v72;
        if (([v54 respondsToSelector_] & 1) != 0 && (objc_msgSend(v54, v59[339]) & 1) != 0 && (v74 = objc_msgSend(v54, sel_publishDate)) != 0)
        {
          v194 = a3;
          v75 = v179;
          v76 = v74;
          sub_1D72588BC();

          v77 = v178;
          v78 = v75;
          a3 = v192;
          (*v191)(v178, v78, v192);
          sub_1D725887C();
          v80 = v79;
          (*v190)(v77, a3);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v80 < 86400.0)
          {
            v73 = v73 + 100.0;
          }
        }

        else
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        ++v50;
        v51 += 3;
        v35 = v189;
        if (v49 < v48 == v73 >= v61)
        {
          v35 = v50 - 1;
          break;
        }
      }

      v5 = v174;
      a4 = v172;
      v33 = v173;
      v81 = v193;
      if (v49 < v48)
      {
        if (v35 < v173)
        {
          goto LABEL_141;
        }

        if (v173 < v35)
        {
          v82 = 0;
          v83 = 24 * v35;
          v84 = v173;
          do
          {
            if (v84 != v35 + v82 - 1)
            {
              v90 = *v188;
              if (!*v188)
              {
                goto LABEL_147;
              }

              v85 = &v90[v81];
              v86 = &v90[v83];
              v87 = *(v85 + 2);
              v88 = *v85;
              v89 = *(v86 - 1);
              *v85 = *(v86 - 24);
              *(v85 + 2) = v89;
              *(v86 - 24) = v88;
              *(v86 - 1) = v87;
            }

            ++v84;
            --v82;
            v83 -= 24;
            v81 += 24;
          }

          while (v84 < v35 + v82);
        }
      }
    }

    v91 = v188[1];
    if (v35 < v91)
    {
      if (__OFSUB__(v35, v33))
      {
        goto LABEL_140;
      }

      if (v35 - v33 < a4)
      {
        if (__OFADD__(v33, a4))
        {
          goto LABEL_142;
        }

        if (v33 + a4 < v91)
        {
          v91 = v33 + a4;
        }

        if (v91 < v33)
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        v180 = v91;
        if (v35 != v91)
        {
          break;
        }
      }
    }

LABEL_61:
    if (v35 < v33)
    {
      goto LABEL_139;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_1D698BA94(0, *(v34 + 2) + 1, 1, v34);
    }

    a3 = *(v34 + 2);
    v122 = *(v34 + 3);
    v123 = a3 + 1;
    if (a3 >= v122 >> 1)
    {
      v34 = sub_1D698BA94((v122 > 1), a3 + 1, 1, v34);
    }

    *(v34 + 2) = v123;
    v124 = &v34[16 * a3];
    *(v124 + 4) = v33;
    *(v124 + 5) = v35;
    v125 = *v175;
    if (!*v175)
    {
      goto LABEL_149;
    }

    if (a3)
    {
      while (1)
      {
        v126 = v123 - 1;
        if (v123 >= 4)
        {
          break;
        }

        if (v123 == 3)
        {
          v127 = *(v34 + 4);
          v128 = *(v34 + 5);
          v137 = __OFSUB__(v128, v127);
          v129 = v128 - v127;
          v130 = v137;
LABEL_81:
          if (v130)
          {
            goto LABEL_128;
          }

          v143 = &v34[16 * v123];
          v145 = *v143;
          v144 = *(v143 + 1);
          v146 = __OFSUB__(v144, v145);
          v147 = v144 - v145;
          v148 = v146;
          if (v146)
          {
            goto LABEL_131;
          }

          v149 = &v34[16 * v126 + 32];
          v151 = *v149;
          v150 = *(v149 + 1);
          v137 = __OFSUB__(v150, v151);
          v152 = v150 - v151;
          if (v137)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v147, v152))
          {
            goto LABEL_135;
          }

          if (v147 + v152 >= v129)
          {
            if (v129 < v152)
            {
              v126 = v123 - 2;
            }

            goto LABEL_102;
          }

          goto LABEL_95;
        }

        v153 = &v34[16 * v123];
        v155 = *v153;
        v154 = *(v153 + 1);
        v137 = __OFSUB__(v154, v155);
        v147 = v154 - v155;
        v148 = v137;
LABEL_95:
        if (v148)
        {
          goto LABEL_130;
        }

        v156 = &v34[16 * v126];
        v158 = *(v156 + 4);
        v157 = *(v156 + 5);
        v137 = __OFSUB__(v157, v158);
        v159 = v157 - v158;
        if (v137)
        {
          goto LABEL_133;
        }

        if (v159 < v147)
        {
          goto LABEL_3;
        }

LABEL_102:
        a3 = v126 - 1;
        if (v126 - 1 >= v123)
        {
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
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*v188)
        {
          goto LABEL_146;
        }

        v164 = *&v34[16 * a3 + 32];
        v165 = *&v34[16 * v126 + 40];
        sub_1D702F6E8(&(*v188)[24 * v164], &(*v188)[24 * *&v34[16 * v126 + 32]], &(*v188)[24 * v165], v125);
        if (v5)
        {
          goto LABEL_122;
        }

        if (v165 < v164)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_1D62FF50C(v34);
        }

        if (a3 >= *(v34 + 2))
        {
          goto LABEL_125;
        }

        v166 = &v34[16 * a3];
        *(v166 + 4) = v164;
        *(v166 + 5) = v165;
        v199 = v34;
        sub_1D62FF480(v126);
        v34 = v199;
        v123 = *(v199 + 2);
        if (v123 <= 1)
        {
          goto LABEL_3;
        }
      }

      v131 = &v34[16 * v123 + 32];
      v132 = *(v131 - 64);
      v133 = *(v131 - 56);
      v137 = __OFSUB__(v133, v132);
      v134 = v133 - v132;
      if (v137)
      {
        goto LABEL_126;
      }

      v136 = *(v131 - 48);
      v135 = *(v131 - 40);
      v137 = __OFSUB__(v135, v136);
      v129 = v135 - v136;
      v130 = v137;
      if (v137)
      {
        goto LABEL_127;
      }

      v138 = &v34[16 * v123];
      v140 = *v138;
      v139 = *(v138 + 1);
      v137 = __OFSUB__(v139, v140);
      v141 = v139 - v140;
      if (v137)
      {
        goto LABEL_129;
      }

      v137 = __OFADD__(v129, v141);
      v142 = v129 + v141;
      if (v137)
      {
        goto LABEL_132;
      }

      if (v142 >= v134)
      {
        v160 = &v34[16 * v126 + 32];
        v162 = *v160;
        v161 = *(v160 + 1);
        v137 = __OFSUB__(v161, v162);
        v163 = v161 - v162;
        if (v137)
        {
          goto LABEL_136;
        }

        if (v129 < v163)
        {
          v126 = v123 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_81;
    }

LABEL_3:
    v32 = v188[1];
    v33 = v35;
    if (v35 >= v32)
    {
      goto LABEL_112;
    }
  }

  v174 = v5;
  v194 = *v188;
  v92 = &v194[24 * v35];
  v173 = v33;
  v93 = v33 - v35;
LABEL_42:
  v189 = v35;
  v94 = &v194[24 * v35];
  v95 = *v94;
  v96 = *(v94 + 1);
  a3 = *(v94 + 2);
  v181 = v93;
  v182 = v92;
  while (1)
  {
    v97 = *(v92 - 3);
    v98 = *(v92 - 2);
    v195 = *(v92 - 1);
    swift_unknownObjectRetain();
    v99 = v96;
    a3 = a3;
    swift_unknownObjectRetain();
    v100 = v98;
    [v99 sortingScore];
    v102 = v101;
    if ([v95 respondsToSelector_])
    {
      if ([v95 isFeatureCandidate])
      {
        v103 = [v95 publishDate];
        if (v103)
        {
          v193 = a3;
          v104 = v185;
          v105 = v103;
          sub_1D72588BC();

          v106 = v184;
          v107 = v104;
          v108 = v192;
          (*v191)(v184, v107, v192);
          sub_1D725887C();
          v110 = v109;
          v111 = v108;
          a3 = v193;
          (*v190)(v106, v111);
          if (v110 < 86400.0)
          {
            v102 = v102 + 100.0;
          }
        }
      }
    }

    [v100 sortingScore];
    v113 = v112;
    if (([v97 respondsToSelector_] & 1) != 0 && (objc_msgSend(v97, sel_isFeatureCandidate) & 1) != 0 && (v114 = objc_msgSend(v97, sel_publishDate)) != 0)
    {
      v193 = a3;
      v115 = v187;
      v116 = v114;
      sub_1D72588BC();

      v117 = v186;
      v118 = v115;
      a3 = v192;
      (*v191)(v186, v118, v192);
      sub_1D725887C();
      v120 = v119;
      (*v190)(v117, a3);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v120 < 86400.0)
      {
        v113 = v113 + 100.0;
      }

      if (v113 >= v102)
      {
LABEL_41:
        v35 = v189 + 1;
        v92 = v182 + 24;
        v93 = v181 - 1;
        if (v189 + 1 != v180)
        {
          goto LABEL_42;
        }

        v5 = v174;
        v34 = v183;
        a4 = v172;
        v33 = v173;
        v35 = v180;
        goto LABEL_61;
      }
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v113 >= v102)
      {
        goto LABEL_41;
      }
    }

    if (!v194)
    {
      break;
    }

    v95 = *v92;
    v96 = *(v92 + 1);
    a3 = *(v92 + 2);
    *v92 = *(v92 - 24);
    *(v92 + 2) = *(v92 - 1);
    *(v92 - 2) = v96;
    *(v92 - 1) = a3;
    *(v92 - 3) = v95;
    v92 -= 24;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
}

uint64_t sub_1D702F6E8(char *a1, uint64_t a2, unint64_t a3, char *a4)
{
  v122 = sub_1D725891C();
  v7 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122, v8);
  v120 = (&v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v119 = &v112 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v118 = &v112 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v117 = &v112 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v116 = &v112 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v115 = &v112 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v114 = &v112 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v113 = &v112 - v31;
  v32 = v30 - a1;
  v33 = (v30 - a1) / 24;
  v34 = a3 - v30;
  v35 = (a3 - v30) / 24;
  if (v33 < v35)
  {
    if (a4 != a1 || &a1[24 * v33] <= a4)
    {
      v36 = v30;
      memmove(a4, a1, 24 * v33);
      v30 = v36;
    }

    v128 = &a4[24 * v33];
    if (v32 < 24)
    {
      v30 = a1;
    }

    else
    {
      v37 = a1;
      if (v30 < a3)
      {
        v120 = (v7 + 8);
        v121 = (v7 + 32);
        v38 = a4;
        while (1)
        {
          v39 = a3;
          v40 = v37;
          v42 = *v30;
          v41 = *(v30 + 1);
          v126 = v38;
          v127 = v30;
          v43 = *(v30 + 2);
          v45 = *v38;
          v44 = *(v38 + 1);
          v124 = *(v38 + 2);
          swift_unknownObjectRetain();
          v46 = v41;
          v47 = v43;
          v48 = &selRef_superfeedConfigResourceID;
          v123 = v47;
          swift_unknownObjectRetain();
          v125 = v44;
          [v46 sortingScore];
          v50 = v49;
          if (([v42 respondsToSelector_] & 1) != 0 && objc_msgSend(v42, sel_isFeatureCandidate))
          {
            v51 = [v42 publishDate];
            v52 = v40;
            v38 = v126;
            if (v51)
            {
              v53 = v114;
              v54 = v51;
              sub_1D72588BC();

              v55 = v122;
              v56 = v113;
              v57 = v53;
              v48 = &selRef_superfeedConfigResourceID;
              (*v121)(v113, v57, v122);
              sub_1D725887C();
              v38 = v126;
              v59 = v58;
              (*v120)(v56, v55);
              if (v59 < 86400.0)
              {
                v50 = v50 + 100.0;
              }
            }
          }

          else
          {
            v52 = v40;
            v38 = v126;
          }

          v60 = v125;
          [v125 sortingScore];
          v62 = v61;
          a3 = v39;
          if (([v45 respondsToSelector_] & 1) == 0)
          {
            break;
          }

          if (([v45 v48[339]] & 1) == 0 || (v63 = objc_msgSend(v45, sel_publishDate)) == 0)
          {

            swift_unknownObjectRelease();
            goto LABEL_23;
          }

          v64 = v116;
          v65 = v63;
          sub_1D72588BC();

          v66 = v115;
          v67 = v64;
          v68 = v122;
          (*v121)(v115, v67, v122);
          sub_1D725887C();
          v38 = v126;
          v70 = v69;
          (*v120)(v66, v68);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v70 < 86400.0)
          {
            v62 = v62 + 100.0;
          }

LABEL_24:
          v30 = v127;
          if (v62 >= v50)
          {
            v71 = v38;
            v72 = v52 == v38;
            v38 += 24;
            if (v72)
            {
              goto LABEL_29;
            }

LABEL_28:
            v73 = *v71;
            *(v52 + 2) = *(v71 + 2);
            *v52 = v73;
            goto LABEL_29;
          }

          v71 = v127;
          v30 = v127 + 24;
          if (v52 != v127)
          {
            goto LABEL_28;
          }

LABEL_29:
          v37 = v52 + 24;
          if (v38 >= v128 || v30 >= a3)
          {
            v30 = v37;
            goto LABEL_66;
          }
        }

        swift_unknownObjectRelease();
LABEL_23:
        swift_unknownObjectRelease();
        goto LABEL_24;
      }

      v30 = a1;
    }

    v38 = a4;
    goto LABEL_66;
  }

  v116 = a1;
  v38 = a4;
  if (a4 != v30 || &v30[24 * v35] <= a4)
  {
    v74 = a4;
    v75 = v30;
    memmove(v74, v30, 24 * v35);
    v30 = v75;
  }

  v128 = &v38[24 * v35];
  if (v34 >= 24 && v30 > v116)
  {
    v123 = (v7 + 32);
    v121 = (v7 + 8);
    v126 = v38;
    do
    {
      v115 = v30 - 24;
      v76 = a3 - 24;
      v77 = v128;
      v127 = v30;
      while (1)
      {
        v78 = v76;
        v80 = *(v77 - 3);
        v79 = *(v77 - 2);
        v77 -= 24;
        v81 = *(v77 + 2);
        v82 = *(v30 - 3);
        v83 = *(v30 - 2);
        v125 = *(v30 - 1);
        swift_unknownObjectRetain();
        v84 = v79;
        v124 = v81;
        swift_unknownObjectRetain();
        v85 = v83;
        [v84 sortingScore];
        v87 = v86;
        if (([v80 respondsToSelector_] & 1) != 0 && objc_msgSend(v80, sel_isFeatureCandidate))
        {
          v88 = [v80 publishDate];
          a3 = v78;
          if (v88)
          {
            v89 = v118;
            v90 = v88;
            sub_1D72588BC();

            v91 = v117;
            v92 = v89;
            v93 = v122;
            (*v123)(v117, v92, v122);
            sub_1D725887C();
            v38 = v126;
            v95 = v94;
            (*v121)(v91, v93);
            if (v95 < 86400.0)
            {
              v87 = v87 + 100.0;
            }
          }
        }

        else
        {
          a3 = v78;
        }

        [v85 sortingScore];
        v97 = v96;
        if (([v82 respondsToSelector_] & 1) != 0 && (objc_msgSend(v82, sel_isFeatureCandidate) & 1) != 0 && (v98 = objc_msgSend(v82, sel_publishDate)) != 0)
        {
          v99 = v120;
          v100 = v98;
          sub_1D72588BC();

          v101 = v119;
          v102 = v99;
          v103 = v122;
          (*v123)(v119, v102, v122);
          sub_1D725887C();
          v38 = v126;
          v105 = v104;
          (*v121)(v101, v103);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v105 < 86400.0)
          {
            v97 = v97 + 100.0;
          }
        }

        else
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        v30 = v127;
        v106 = (a3 + 24);
        if (v97 < v87)
        {
          break;
        }

        if (v106 != v128)
        {
          v107 = *v77;
          *(a3 + 16) = *(v77 + 2);
          *a3 = v107;
        }

        v76 = a3 - 24;
        v128 = v77;
        if (v77 <= v38)
        {
          v128 = v77;
          goto LABEL_66;
        }
      }

      v108 = v115;
      if (v106 != v127)
      {
        v109 = *v115;
        *(a3 + 16) = *(v115 + 2);
        *a3 = v109;
      }

      if (v128 <= v38)
      {
        break;
      }

      v30 = v108;
    }

    while (v108 > v116);
    v30 = v108;
  }

LABEL_66:
  v110 = (v128 - v38) / 24;
  if (v30 != v38 || v30 >= &v38[24 * v110])
  {
    memmove(v30, v38, 24 * v110);
  }

  return 1;
}

void *sub_1D7030068(uint64_t a1)
{
  sub_1D7030FC8();
  result = sub_1D72640FC();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 8;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = *v14;
      result = v14[1];
      v16 = (v3[6] + 16 * v13);
      v17 = *(*(a1 + 56) + 16 * v13);
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *v16 = v15;
      v16[1] = result;
      *(v3[7] + 16 * v13) = v17;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      v3[2] = v20;

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v3;
      }

      v12 = *(a1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D70301AC(uint64_t a1, void *a2, void *a3)
{
  v21 = *(a1 + 16);
  if (v21)
  {
    v3 = 0;
    for (i = (a1 + 40); ; i += 3)
    {
      v8 = *i;
      v9 = [*(i - 1) itemID];
      v10 = sub_1D726207C();
      v12 = v11;

      v13 = [a2 itemID];
      v14 = sub_1D726207C();
      v16 = v15;

      if (v10 == v14 && v12 == v16)
      {
        break;
      }

      v18 = sub_1D72646CC();

      if (v18)
      {
        goto LABEL_4;
      }

LABEL_5:
      if (v21 == ++v3)
      {
        return 0;
      }
    }

LABEL_4:
    sub_1D5B5A498(0, &qword_1EDF1A650, 0x1E69E58C0);
    v5 = v8;
    v6 = a3;
    v7 = sub_1D726370C();

    if (v7)
    {
      return v3;
    }

    goto LABEL_5;
  }

  return 0;
}

void *sub_1D7030334(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D605EA68(MEMORY[0x1E69E7CC0]);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return v6;
  }

  v8 = 0;
  v80 = a1 + 32;
  v76 = *(a1 + 16);
  v77 = a2;
  while (1)
  {
    v10 = v80 + 24 * v8;
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    swift_unknownObjectRetain();
    v14 = v11;
    v15 = [v12 topics];
    v82 = v14;
    if (v15)
    {
      v16 = v15;
      sub_1D5B5A498(0, &unk_1EDF04550, 0x1E69B6D00);
      v17 = sub_1D726267C();

      if (!a2)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
      if (!a2)
      {
        goto LABEL_34;
      }
    }

    v18 = [v12 respondsToSelector_];
    swift_unknownObjectRetain();
    if (v18)
    {
      v19 = [v12 language];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1D726207C();
        v23 = v22;

        if (v21 == a3 && v23 == a4)
        {
          swift_unknownObjectRelease();

LABEL_34:
          v39 = v7;
          v40 = v13;
          v41 = [v12 itemID];
          v42 = sub_1D726207C();
          v44 = v43;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = sub_1D5B69D90(v42, v44);
          v48 = v6[2];
          v49 = (v47 & 1) == 0;
          v50 = __OFADD__(v48, v49);
          v51 = v48 + v49;
          if (v50)
          {
            goto LABEL_59;
          }

          v52 = v47;
          if (v6[3] >= v51)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_39;
            }

            v66 = v8;
            v67 = v46;
            sub_1D6D87088();
            v46 = v67;
            v8 = v66;
            if (v52)
            {
              goto LABEL_3;
            }

LABEL_40:
            v6[(v46 >> 6) + 8] |= 1 << v46;
            v54 = (v6[6] + 16 * v46);
            *v54 = v42;
            v54[1] = v44;
            *(v6[7] + 8 * v46) = v17;

            swift_unknownObjectRelease();
            v55 = v6[2];
            v50 = __OFADD__(v55, 1);
            v56 = v55 + 1;
            if (v50)
            {
              goto LABEL_62;
            }

            v6[2] = v56;
          }

          else
          {
            sub_1D6D75F9C(v51, isUniquelyReferenced_nonNull_native);
            v46 = sub_1D5B69D90(v42, v44);
            if ((v52 & 1) != (v53 & 1))
            {
              goto LABEL_65;
            }

LABEL_39:
            if ((v52 & 1) == 0)
            {
              goto LABEL_40;
            }

LABEL_3:
            v9 = v46;

            *(v6[7] + 8 * v9) = v17;

            swift_unknownObjectRelease();
          }

          v7 = v39;
          a2 = v77;
          goto LABEL_5;
        }

        v25 = sub_1D72646CC();

        if (v25)
        {
          swift_unknownObjectRelease();
          goto LABEL_34;
        }
      }
    }

    v79 = v13;
    v26 = [v12 itemID];
    v81 = sub_1D726207C();
    v28 = v27;

    if (v17 >> 62)
    {
      break;
    }

    v29 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_20;
    }

LABEL_43:

    v38 = MEMORY[0x1E69E7CC0];
LABEL_44:
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v58 = sub_1D5B69D90(v81, v28);
    v60 = v6[2];
    v61 = (v59 & 1) == 0;
    v50 = __OFADD__(v60, v61);
    v62 = v60 + v61;
    if (v50)
    {
      goto LABEL_60;
    }

    v63 = v59;
    if (v6[3] >= v62)
    {
      if ((v57 & 1) == 0)
      {
        v68 = v28;
        v69 = v58;
        sub_1D6D87088();
        v58 = v69;
        v28 = v68;
        if (v63)
        {
LABEL_50:
          v65 = v58;

          *(v6[7] + 8 * v65) = v38;

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          goto LABEL_5;
        }

        goto LABEL_54;
      }
    }

    else
    {
      sub_1D6D75F9C(v62, v57);
      v58 = sub_1D5B69D90(v81, v28);
      if ((v63 & 1) != (v64 & 1))
      {
        goto LABEL_65;
      }
    }

    if (v63)
    {
      goto LABEL_50;
    }

LABEL_54:
    v6[(v58 >> 6) + 8] |= 1 << v58;
    v70 = (v6[6] + 16 * v58);
    *v70 = v81;
    v70[1] = v28;
    *(v6[7] + 8 * v58) = v38;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v71 = v6[2];
    v50 = __OFADD__(v71, 1);
    v72 = v71 + 1;
    if (v50)
    {
      goto LABEL_63;
    }

    v6[2] = v72;
LABEL_5:
    if (++v8 == v7)
    {
      return v6;
    }
  }

  v29 = sub_1D7263BFC();
  if (!v29)
  {
    goto LABEL_43;
  }

LABEL_20:
  v83 = MEMORY[0x1E69E7CC0];
  sub_1D7263ECC();
  if (v29 < 0)
  {
    goto LABEL_61;
  }

  v78 = v8;
  v30 = 0;
  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x1DA6FB460](v30, v17);
    }

    else
    {
      if (v30 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v32 = *(v17 + 8 * v30 + 32);
    }

    v33 = v32;
    v34 = [v32 tagID];
    if (!v34)
    {
      goto LABEL_64;
    }

    v35 = v34;
    v36 = [a2 topicTranslationForTagID_];

    if (v36)
    {
      v37 = [v36 articleTopic];

      if (v37)
      {
      }
    }

    sub_1D7263E9C();
    sub_1D7263EDC();
    sub_1D7263EEC();
    sub_1D7263EAC();
    ++v30;
    if (v31 == v29)
    {

      v38 = v83;
      v7 = v76;
      v8 = v78;
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

void sub_1D7030994(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = sub_1D70301AC(*a1, a2, a3);
  v7 = v5;
  if (!v3 && (v6 & 1) == 0)
  {
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_35;
    }

    v10 = (v4 + 16);
    v9 = *(v4 + 16);
    if (v8 != v9)
    {
      v11 = 24 * v5;
      do
      {
        if (v8 >= v9)
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          return;
        }

        v50 = v4;
        v12 = v4 + v11;
        v47 = *(v12 + 64);
        v49 = v7;
        v13 = [*(v12 + 56) itemID];
        v14 = sub_1D726207C();
        v16 = v15;

        v17 = [a2 itemID];
        v18 = sub_1D726207C();
        v20 = v19;

        if (v14 == v18 && v16 == v20)
        {
        }

        else
        {
          v22 = sub_1D72646CC();

          if ((v22 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        sub_1D5B5A498(0, &qword_1EDF1A650, 0x1E69E58C0);
        v23 = v47;
        v24 = a3;
        v25 = sub_1D726370C();

        if (v25)
        {
          v7 = v49;
          v4 = v50;
          goto LABEL_8;
        }

LABEL_18:
        v26 = v49;
        if (v8 == v49)
        {
          v4 = v50;
        }

        else
        {
          if ((v49 & 0x8000000000000000) != 0)
          {
            goto LABEL_30;
          }

          if (v49 >= *v10)
          {
            goto LABEL_31;
          }

          if (v8 >= *v10)
          {
            goto LABEL_32;
          }

          v27 = &v50[24 * v49 + 32];
          v29 = *v27;
          v28 = *(v27 + 1);
          v30 = *(v27 + 2);
          v31 = *(v12 + 56);
          v32 = *(v12 + 64);
          v48 = *&v50[v11 + 72];
          v33 = v48;
          v43 = v29;
          swift_unknownObjectRetain();
          v34 = v28;
          v35 = v30;
          swift_unknownObjectRetain();
          v36 = v32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_1D5EC3C7C(v50);
          }

          v4 = v50;
          if (v49 >= *(v50 + 2))
          {
            goto LABEL_33;
          }

          v37 = &v50[24 * v49];
          v38 = *(v37 + 5);
          v39 = *(v37 + 6);
          *(v37 + 4) = v31;
          *(v37 + 5) = v36;
          *(v37 + 6) = v48;

          swift_unknownObjectRelease();
          if (v8 >= *(v50 + 2))
          {
            goto LABEL_34;
          }

          v40 = &v50[v11];
          v41 = *&v50[v11 + 64];
          v42 = *&v50[v11 + 72];
          *(v40 + 7) = v43;
          *(v40 + 8) = v34;
          *(v40 + 9) = v30;

          swift_unknownObjectRelease();
          *a1 = v50;
          v26 = v49;
        }

        v7 = v26 + 1;
LABEL_8:
        ++v8;
        v10 = (v4 + 16);
        v9 = *(v4 + 16);
        v11 += 24;
      }

      while (v8 != v9);
    }
  }
}

char *sub_1D7030C9C(uint64_t a1)
{
  v4 = a1;
  v5 = *(a1 + 16);
  if (v5)
  {
    if ([*(a1 + 32) hasThumbnail])
    {
LABEL_30:

      return v4;
    }

    v6 = 0;
    v7 = v4 + 48;
    v8 = MEMORY[0x1E69E7CC0];
    v25 = v4 + 48;
    v26 = v4;
    do
    {
      v9 = &v7[24 * v6];
      v4 = v6;
      while (1)
      {
        if (v4 >= v5)
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_33;
        }

        v10 = *(v9 - 2);
        v11 = *(v9 - 1);
        v12 = *v9;
        v2 = *v9;
        v3 = sel_hasThumbnail;
        swift_unknownObjectRetain();
        v1 = v11;
        if ([v10 hasThumbnail])
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v4;
        v9 += 3;
        if (v6 == v5)
        {
          v4 = v26;
          goto LABEL_17;
        }
      }

      v27 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D6997D30(0, *(v8 + 2) + 1, 1);
        v8 = v27;
      }

      v4 = v26;
      v14 = *(v8 + 2);
      v13 = *(v8 + 3);
      v2 = (v14 + 1);
      if (v14 >= v13 >> 1)
      {
        sub_1D6997D30((v13 > 1), v14 + 1, 1);
        v8 = v27;
      }

      *(v8 + 2) = v2;
      v15 = &v8[24 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v1;
      *(v15 + 6) = v12;
      v7 = v25;
    }

    while (v6 != v5);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

LABEL_17:
  v27 = v8;

  sub_1D701C600(&v27);

  if (!*(v27 + 2))
  {

    goto LABEL_30;
  }

  v1 = *(v27 + 4);
  v16 = *(v27 + 5);
  v2 = *(v27 + 6);
  v17 = v2;
  swift_unknownObjectRetain();
  v18 = v16;

  v27 = v4;

  swift_unknownObjectRetain();
  v3 = v18;
  v5 = v17;
  sub_1D7030994(&v27, v1, v3);
  v20 = v19;

  swift_unknownObjectRelease();
  v4 = v27;
  v21 = *(v27 + 2);
  v7 = (v20 - v21);
  if (v20 > v21)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v20 < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!__OFADD__(v21, v7))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v20 > *(v4 + 3) >> 1)
    {
      if (v21 <= v20)
      {
        v23 = v20;
      }

      else
      {
        v23 = v21;
      }

      v4 = sub_1D698BF70(isUniquelyReferenced_nonNull_native, v23, 1, v4);
      v27 = v4;
    }

    sub_1D5EC4524(v20, v21, 0);
    v27 = v4;
    v7 = *(v4 + 2);
    if (v7 < *(v4 + 3) >> 1)
    {
      goto LABEL_28;
    }

    goto LABEL_37;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  v4 = sub_1D698BF70(1, (v7 + 1), 1, v4);
  v27 = v4;
LABEL_28:
  sub_1D5EC45FC(0, 0, 1, v1, v3, v2);

  swift_unknownObjectRelease();
  return v4;
}

void sub_1D7030FC8()
{
  if (!qword_1EDF040D0)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF040D0);
    }
  }
}

uint64_t sub_1D7031028(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

double sub_1D7031068(uint64_t a1)
{
  if (a1)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D70310A8(uint64_t a1)
{
  if (!qword_1EDF18900)
  {
    sub_1D725904C();
    sub_1D725905C();
    sub_1D725906C();
    sub_1D725903C();
    sub_1D725901C();
    sub_1D725902C();
    sub_1D725907C();
    sub_1D725908C();
    sub_1D7031B18(&unk_1EDF18988, 255, MEMORY[0x1E69E3328], MEMORY[0x1E69E3320]);
    sub_1D7031B18(&qword_1EDF18980, 255, MEMORY[0x1E69E3338], MEMORY[0x1E69E3330]);
    v1 = sub_1D725939C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF18900);
    }
  }
}

void sub_1D7031244(uint64_t a1)
{
  if (!qword_1EDF188D8)
  {
    sub_1D72592EC();
    sub_1D72592FC();
    sub_1D725930C();
    sub_1D72592DC();
    sub_1D72592AC();
    sub_1D72592BC();
    sub_1D725931C();
    sub_1D72592CC();
    sub_1D7031B18(&qword_1EDF18930, 255, MEMORY[0x1E69E3478], MEMORY[0x1E69E3470]);
    sub_1D7031B18(&qword_1EDF18938, 255, MEMORY[0x1E69E3448], MEMORY[0x1E69E3440]);
    v1 = sub_1D725939C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF188D8);
    }
  }
}

uint64_t sub_1D70313E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D7031448(uint64_t a1)
{
  if (!qword_1EDF188F8)
  {
    sub_1D725913C();
    sub_1D725915C();
    sub_1D725917C();
    sub_1D725911C();
    sub_1D72590CC();
    sub_1D72590EC();
    sub_1D725919C();
    sub_1D72590FC();
    sub_1D7031B18(&qword_1EDF18970, 255, MEMORY[0x1E69E3388], MEMORY[0x1E69E3380]);
    sub_1D7031B18(&qword_1EDF18978, 255, MEMORY[0x1E69E3358], MEMORY[0x1E69E3350]);
    v1 = sub_1D725939C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF188F8);
    }
  }
}

void sub_1D70315E4(uint64_t a1)
{
  if (!qword_1EDF188F0)
  {
    sub_1D72591EC();
    sub_1D72591FC();
    sub_1D725920C();
    sub_1D72591DC();
    sub_1D72591AC();
    sub_1D72591BC();
    sub_1D725921C();
    sub_1D72591CC();
    sub_1D7031B18(&qword_1EDF18958, 255, MEMORY[0x1E69E33D8], MEMORY[0x1E69E33D0]);
    sub_1D7031B18(&unk_1EDF18960, 255, MEMORY[0x1E69E33A8], MEMORY[0x1E69E33A0]);
    v1 = sub_1D725939C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF188F0);
    }
  }
}

void sub_1D703179C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B5534C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D70318C8(uint64_t a1, uint64_t a2)
{
  sub_1D605FEA0(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D703192C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D703197C(uint64_t a1)
{
  if (!qword_1EDF188E8)
  {
    sub_1D725926C();
    sub_1D725927C();
    sub_1D725928C();
    sub_1D725925C();
    sub_1D725922C();
    sub_1D725923C();
    sub_1D725929C();
    sub_1D725924C();
    sub_1D7031B18(&qword_1EDF18940, 255, MEMORY[0x1E69E3428], MEMORY[0x1E69E3420]);
    sub_1D7031B18(&unk_1EDF18948, 255, MEMORY[0x1E69E33F8], MEMORY[0x1E69E33F0]);
    v1 = sub_1D725939C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF188E8);
    }
  }
}

uint64_t sub_1D7031B18(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1D7031BC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7031C2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7031C8C(uint64_t a1)
{
  if (!qword_1EDF04110)
  {
    sub_1D7031448(255);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF04110);
    }
  }
}

void sub_1D7031CFC(uint64_t a1)
{
  if (!qword_1EDF17920)
  {
    sub_1D5B5A498(255, &qword_1EDF04568, 0x1E69B55F8);
    v1 = sub_1D725BC0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17920);
    }
  }
}

void sub_1D7031D6C(uint64_t a1)
{
  if (!qword_1EDF17900)
  {
    sub_1D703179C(255, &qword_1EDF044A0, &qword_1EDF044A8, &protocolRef_FCTranslationProvider, MEMORY[0x1E69E6720]);
    v1 = sub_1D725BC0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17900);
    }
  }
}

unint64_t sub_1D7031DFC()
{
  result = qword_1EC899648;
  if (!qword_1EC899648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899648);
  }

  return result;
}

unint64_t sub_1D7031E64()
{
  result = qword_1EC899650;
  if (!qword_1EC899650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899650);
  }

  return result;
}

uint64_t type metadata accessor for SportsEventStatusResponseData(uint64_t a1)
{
  result = qword_1EDF0A100;
  if (!qword_1EDF0A100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7031F5C(uint64_t a1)
{
  result = type metadata accessor for SportsEventStatusResponseEmbed(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D7031FC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for SportsEventStatusResponseEmbed(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70325A8(0, &qword_1EDF03958, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v20 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for SportsEventStatusResponseData(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70324EC();
  sub_1D7264B0C();
  if (!v2)
  {
    v16 = v20;
    sub_1D703260C(&qword_1EDF099E8, &unk_1D7344798);
    v17 = v21;
    sub_1D726431C();
    (*(v16 + 8))(v11, v8);
    sub_1D7032540(v17, v15, type metadata accessor for SportsEventStatusResponseEmbed);
    sub_1D7032540(v15, v19, type metadata accessor for SportsEventStatusResponseData);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D7032264(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465626D65 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D70322E8(uint64_t a1)
{
  v2 = sub_1D70324EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7032324(uint64_t a1)
{
  v2 = sub_1D70324EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7032378(void *a1, __n128 a2)
{
  sub_1D70325A8(0, &qword_1EC899660, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70324EC();
  sub_1D7264B5C();
  type metadata accessor for SportsEventStatusResponseEmbed(0);
  sub_1D703260C(&qword_1EC899668, &unk_1D7344770);
  sub_1D726443C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D70324EC()
{
  result = qword_1EDF0A138;
  if (!qword_1EDF0A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A138);
  }

  return result;
}

uint64_t sub_1D7032540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D70325A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D70324EC();
    v7 = a3(a1, &type metadata for SportsEventStatusResponseData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D703260C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SportsEventStatusResponseEmbed(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7032664()
{
  result = qword_1EC899670;
  if (!qword_1EC899670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899670);
  }

  return result;
}

unint64_t sub_1D70326BC()
{
  result = qword_1EDF0A128;
  if (!qword_1EDF0A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A128);
  }

  return result;
}

unint64_t sub_1D7032714()
{
  result = qword_1EDF0A130;
  if (!qword_1EDF0A130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A130);
  }

  return result;
}

double FormatMicaNode.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 232);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

uint64_t FormatMicaNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void FormatMicaNode.runMode.getter(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 216);
  *a1 = *(v1 + 212);
  *(a1 + 4) = v3;
}

double FormatMicaNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

unint64_t FormatMicaNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

double FormatMicaNode.resize.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 40);

  return result;
}

double FormatMicaNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

double FormatMicaNode.content.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 64);

  return result;
}

uint64_t FormatMicaNode.mediaTiming.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 184);
  v12[6] = *(v1 + 168);
  v13[0] = v3;
  *(v13 + 9) = *(v1 + 193);
  v4 = *(v1 + 88);
  v5 = *(v1 + 120);
  v12[2] = *(v1 + 104);
  v12[3] = v5;
  v12[4] = *(v1 + 136);
  v12[5] = v2;
  v12[0] = *(v1 + 72);
  v12[1] = v4;
  v6 = *(v1 + 152);
  v7 = *(v1 + 184);
  a1[6] = *(v1 + 168);
  a1[7] = v7;
  *(a1 + 121) = *(v1 + 193);
  v8 = *(v1 + 88);
  v9 = *(v1 + 120);
  a1[2] = *(v1 + 104);
  a1[3] = v9;
  a1[4] = *(v1 + 136);
  a1[5] = v6;
  *a1 = *(v1 + 72);
  a1[1] = v8;
  return sub_1D6047E28(v12, &v11);
}

void FormatMicaNode.runMode.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  swift_beginAccess();
  *(v1 + 212) = v2;
  *(v1 + 216) = v3;
}

double sub_1D7032C60(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 232);
  sub_1D5EB1500(v2);
  *(v3 + 232) = v2;
  return sub_1D5EB15C4(v4);
}

double FormatMicaNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 232);
  *(v1 + 232) = v2;
  return sub_1D5EB15C4(v3);
}

void FormatMicaNode.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 256);
  *a1 = *(v1 + 248);
  *(a1 + 8) = v2;
}

double sub_1D7032DFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 264) = v2;

  return result;
}

double FormatMicaNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 264) = a1;

  return result;
}

uint64_t FormatMicaNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[34];
  v3 = v1[35];
  v4 = v1[36];
  v5 = v1[37];
  v6 = v1[38];
  v7 = v1[39];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6, v7);
}

uint64_t FormatMicaNode.__allocating_init(identifier:size:resize:adjustments:style:content:mediaTiming:runMode:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:selectors:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, __int128 *a8, int *a9, uint64_t a10, uint64_t *a11, char a12, uint64_t *a13, uint64_t a14, uint64_t a15)
{
  v20 = swift_allocObject();
  v21 = *a3;
  v22 = *a4;
  v23 = *a7;
  v34 = *a9;
  v24 = *(a9 + 4);
  v36 = *a11;
  v39 = *a13;
  v38 = *(a13 + 8);
  v25 = *(a15 + 32);
  v26 = *(a15 + 40);
  swift_beginAccess();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  swift_beginAccess();
  v27 = a8[4];
  *(v20 + 152) = a8[5];
  v28 = a8[7];
  *(v20 + 168) = a8[6];
  *(v20 + 184) = v28;
  *(v20 + 193) = *(a8 + 121);
  v29 = *a8;
  *(v20 + 88) = a8[1];
  v30 = a8[3];
  *(v20 + 104) = a8[2];
  *(v20 + 120) = v30;
  *(v20 + 136) = v27;
  *(v20 + 48) = a5;
  *(v20 + 56) = a6;
  *(v20 + 64) = v23;
  *(v20 + 72) = v29;
  swift_beginAccess();
  *(v20 + 212) = v34;
  *(v20 + 216) = v24;
  swift_beginAccess();
  *(v20 + 224) = a10;
  swift_beginAccess();
  *(v20 + 232) = v36;
  swift_beginAccess();
  *(v20 + 240) = a12;
  *(v20 + 248) = v39;
  *(v20 + 256) = v38;
  swift_beginAccess();
  *(v20 + 264) = a14;
  v31 = *(a15 + 16);
  *(v20 + 272) = *a15;
  *(v20 + 288) = v31;
  *(v20 + 304) = v25;
  *(v20 + 312) = v26;
  return v20;
}

uint64_t FormatMicaNode.init(identifier:size:resize:adjustments:style:content:mediaTiming:runMode:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:selectors:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, __int128 *a8, int *a9, uint64_t a10, uint64_t *a11, char a12, uint64_t *a13, uint64_t a14, uint64_t a15)
{
  v19 = *a3;
  v20 = *a4;
  v21 = *a7;
  v22 = *a9;
  v23 = *(a9 + 4);
  v32 = *a11;
  v33 = *(a13 + 8);
  v36 = *(a15 + 32);
  v34 = *a13;
  v35 = *(a15 + 40);
  swift_beginAccess();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = v19;
  *(v15 + 40) = v20;
  swift_beginAccess();
  v24 = a8[4];
  *(v15 + 152) = a8[5];
  v25 = a8[7];
  *(v15 + 168) = a8[6];
  *(v15 + 184) = v25;
  *(v15 + 193) = *(a8 + 121);
  v26 = *a8;
  *(v15 + 88) = a8[1];
  v27 = a8[3];
  *(v15 + 104) = a8[2];
  *(v15 + 120) = v27;
  *(v15 + 136) = v24;
  *(v15 + 48) = a5;
  *(v15 + 56) = a6;
  *(v15 + 64) = v21;
  *(v15 + 72) = v26;
  swift_beginAccess();
  *(v15 + 212) = v22;
  *(v15 + 216) = v23;
  swift_beginAccess();
  *(v15 + 224) = a10;
  swift_beginAccess();
  *(v15 + 232) = v32;
  swift_beginAccess();
  *(v15 + 240) = a12;
  *(v15 + 248) = v34;
  *(v15 + 256) = v33;
  swift_beginAccess();
  *(v15 + 264) = a14;
  v28 = *(a15 + 16);
  *(v15 + 272) = *a15;
  *(v15 + 288) = v28;
  *(v15 + 304) = v36;
  *(v15 + 312) = v35;
  return v15;
}

uint64_t FormatMicaNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 32));

  v1 = *(v0 + 152);
  v2 = *(v0 + 184);
  v6[6] = *(v0 + 168);
  v7[0] = v2;
  *(v7 + 9) = *(v0 + 193);
  v3 = *(v0 + 88);
  v4 = *(v0 + 120);
  v6[2] = *(v0 + 104);
  v6[3] = v4;
  v6[4] = *(v0 + 136);
  v6[5] = v1;
  v6[0] = *(v0 + 72);
  v6[1] = v3;
  sub_1D703338C(v6);
  sub_1D5EB15C4(*(v0 + 232));

  sub_1D5EB2398(*(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312));
  return v0;
}

uint64_t sub_1D703338C(uint64_t a1)
{
  sub_1D6047E8C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FormatMicaNode.__deallocating_deinit()
{
  FormatMicaNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D703341C(uint64_t a1)
{
  result = sub_1D70335B0(&qword_1EC899678, &protocol conformance descriptor for FormatMicaNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D7033484(void *a1)
{
  a1[1] = sub_1D70335B0(&qword_1EC886FA8, &protocol conformance descriptor for FormatMicaNode);
  a1[2] = sub_1D70335B0(&qword_1EC889CE0, &protocol conformance descriptor for FormatMicaNode);
  result = sub_1D70335B0(&qword_1EC899680, &protocol conformance descriptor for FormatMicaNode);
  a1[3] = result;
  return result;
}

void *sub_1D7033510@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D66A26A8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D703356C(uint64_t a1)
{
  result = sub_1D70335B0(&qword_1EC899688, &protocol conformance descriptor for FormatMicaNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D70335B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatMicaNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D70335F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  v17 = *(a3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_beginAccess();
  v18 = *(a4 + 16);
  v19 = *(a4 + 24);
  v20 = *(v17 + 40);
  if (v20)
  {
    v38 = *(v17 + 32);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v18, v19);

    v32 = v20;
    v33 = v38;
    v18 = *(a4 + 16);
    v19 = *(a4 + 24);
  }

  else
  {

    v32 = v19;
    v33 = v18;
  }

  v21 = *(a4 + 40);
  v34 = v18;
  if (v21 && (v22 = *(v21 + 16), swift_beginAccess(), *(*(v22 + 16) + 16)))
  {
  }

  else
  {
    v22 = 0;
  }

  swift_beginAccess();
  v23 = *(a4 + 224);
  swift_beginAccess();
  v24 = *(a4 + 232);

  sub_1D5EB1500(v24);
  sub_1D615B4A8(a3, &v39);
  sub_1D5EB15C4(v24);
  v25 = v39;
  swift_beginAccess();
  v26 = *(a4 + 240);
  v27 = *(a4 + 248);
  v28 = *(a4 + 256);
  type metadata accessor for FormatMicaNodeLayoutAttributes();
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  *(v29 + 32) = v33;
  *(v29 + 40) = v32;
  *(v29 + 48) = v34;
  *(v29 + 56) = v19;
  *(v29 + 64) = a7;
  *(v29 + 72) = a8;
  *(v29 + 80) = a9;
  *(v29 + 88) = a10;
  *(v29 + 96) = a5;
  *(v29 + 104) = v22;
  *(v29 + 112) = v23;
  *(v29 + 120) = v25;
  *(v29 + 128) = v26;
  *(v29 + 136) = v27;
  *(v29 + 144) = v28;
  v30 = swift_allocObject();
  *(v29 + 152) = MEMORY[0x1E69E7CD0];
  *(v30 + 16) = v29;
  *a6 = v30 | 0x6000000000000000;
}

uint64_t sub_1D70338B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D66ED2C8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1D703391C(void *a1)
{
  a1[1] = sub_1D6658938();
  a1[2] = sub_1D6658DBC();
  result = sub_1D7033954();
  a1[3] = result;
  return result;
}

unint64_t sub_1D7033954()
{
  result = qword_1EC899690;
  if (!qword_1EC899690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899690);
  }

  return result;
}

unint64_t sub_1D70339A8(uint64_t a1)
{
  result = sub_1D70339D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70339D0()
{
  result = qword_1EC899698;
  if (!qword_1EC899698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899698);
  }

  return result;
}

uint64_t sub_1D7033A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5 || (v8 = sub_1D72646CC(), result = 0, (v8 & 1) != 0))
  {
    if (a3)
    {
      if (a6)
      {

        v10 = sub_1D663D3A4(a3, a6);

        if (v10)
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

void sub_1D7033AF0(uint64_t a1, void *a2, void *a3, unsigned int a4, void *a5, void *a6, void *a7, char *a8)
{
  v75 = a4;
  v73 = a2;
  v74 = a3;
  v13 = type metadata accessor for PuzzleResourceSource(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v70 = v16;
  v72 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54E6C(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v71 = &v67 - v19;
  sub_1D5B54E6C(0, qword_1EDF41DF0, type metadata accessor for PuzzleData);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v67 - v22;
  v77 = type metadata accessor for PuzzleData(0);
  v24 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v25);
  v76 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54E6C(0, &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v67 - v29;
  v68 = a1;
  sub_1D7034A2C(a1, &v67 - v29);
  v69 = v14;
  (*(v14 + 56))(v30, 0, 1, v13);
  v31 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleSource;
  swift_beginAccess();
  sub_1D7034A90(v30, &a8[v31]);
  swift_endAccess();
  v32 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_layoutGuide;
  swift_beginAccess();
  v33 = *&a8[v32];
  *&a8[v32] = a5;
  v34 = a5;

  v35 = [a8 view];
  if (!v35)
  {
    __break(1u);
    goto LABEL_9;
  }

  v36 = v35;
  [v35 setNeedsLayout];

  *&a8[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_embedLocation] = a6;
  v37 = a6;
  swift_unknownObjectRelease();
  v38 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_feedConfiguration;
  swift_beginAccess();
  v39 = *&a8[v38];
  *&a8[v38] = a7;
  v40 = a7;

  v41 = [a8 view];
  if (!v41)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v42 = v41;
  [v41 setNeedsLayout];

  v43 = *&a8[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_interactionProvider];
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v82 = sub_1D6A28CBC;
  v83 = v44;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_1D5B6B06C;
  v81 = &block_descriptor_128;
  v45 = _Block_copy(&aBlock);

  [v43 setInteractionBlock_];
  _Block_release(v45);
  v46 = *&a8[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_failureProvider];
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v82 = sub_1D6A28CC4;
  v83 = v47;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_1D6A20938;
  v81 = &block_descriptor_6_4;
  v48 = _Block_copy(&aBlock);

  [v46 onEvent_];
  _Block_release(v48);
  v49 = *&a8[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController];
  [v49 setPocketsEnabled_];
  v50 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleData;
  swift_beginAccess();
  sub_1D7034B10(&a8[v50], v23);
  v51 = v77;
  if ((*(v24 + 48))(v23, 1, v77) == 1)
  {
    sub_1D7034B90(v23);
    if (a8[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_hasPuzzleDataLoadAttempted] != 1)
    {
      a8[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_hasPuzzleDataLoadAttempted] = 1;
      v52 = sub_1D726294C();
      v53 = v71;
      (*(*(v52 - 8) + 56))(v71, 1, 1, v52);
      v54 = v72;
      sub_1D7034A2C(v68, v72);
      sub_1D726290C();
      v55 = a8;
      v57 = v73;
      v56 = v74;
      v58 = v75;
      sub_1D5FE3DF8(v73, v74, v75);
      v59 = sub_1D72628FC();
      v60 = (*(v69 + 80) + 40) & ~*(v69 + 80);
      v61 = (v70 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      v63 = MEMORY[0x1E69E85E0];
      v62[2] = v59;
      v62[3] = v63;
      v62[4] = v55;
      sub_1D7034C08(v54, v62 + v60, type metadata accessor for PuzzleResourceSource);
      v64 = v62 + v61;
      *v64 = v57;
      *(v64 + 1) = v56;
      *(v64 + 4) = v58;
      sub_1D6BD1334(0, 0, v53, &unk_1D7312E10, v62);
    }
  }

  else
  {
    v65 = v76;
    sub_1D7034C08(v23, v76, type metadata accessor for PuzzleData);
    v66 = sub_1D6A22688(v65 + *(v51 + 20));
    [v49 setConfiguration_];

    sub_1D7034C70(v65, type metadata accessor for PuzzleData);
  }
}

id sub_1D7034244(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  sub_1D5B54E6C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v75 - v10;
  v12 = type metadata accessor for PuzzleResourceSource(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v79 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 32))
  {
    swift_beginAccess();
    v15 = *(a2 + 80);
    v16 = *(a2 + 88);
    v17 = 0.0;
    v18 = 0.0;
  }

  else
  {
    swift_beginAccess();
    CGRectGetMinX(*(a2 + 64));
    sub_1D726328C();
    CGRectGetMinY(*(a2 + 64));
    sub_1D726329C();
    v17 = v19;
    v18 = v20;
    v15 = v21;
    v16 = v22;
  }

  result = [a4 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_35;
  }

  v24 = result;
  swift_beginAccess();
  sub_1D726344C();

  result = [a4 view];
  if (!result)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v25 = result;
  v26 = *(a2 + 104);
  if (v26)
  {
    LOBYTE(v26) = *(a2 + 145);
  }

  v77 = v12;
  v78 = v11;
  [result setAccessibilityIgnoresInvertColors_];

  result = [a4 view];
  if (!result)
  {
    goto LABEL_36;
  }

  v27 = result;
  v28 = *(a2 + 200);
  v29 = *(a2 + 208);
  [result setIsAccessibilityElement_];
  [v27 setAccessibilityElementsHidden_];
  if (v29 > 0xFD)
  {
    goto LABEL_15;
  }

  if ((v29 & 0x80) != 0)
  {
    if (!(v28 | v29 & 0x7F))
    {
      goto LABEL_15;
    }

    v30 = &selRef_setAccessibilityElementsHidden_;
  }

  else
  {
    v30 = &selRef_setIsAccessibilityElement_;
  }

  [v27 *v30];
LABEL_15:

  v31 = *&a4[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController];
  result = [v31 view];
  if (!result)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v32 = result;
  v33 = *(a2 + 104);
  if (v33)
  {
    LOBYTE(v33) = *(a2 + 145);
  }

  [result setAccessibilityIgnoresInvertColors_];

  result = [v31 view];
  if (!result)
  {
    goto LABEL_38;
  }

  v34 = result;
  v35 = *(a2 + 200);
  v36 = *(a2 + 208);
  [result setIsAccessibilityElement_];
  [v34 setAccessibilityElementsHidden_];
  if (v36 > 0xFD)
  {
    goto LABEL_25;
  }

  if ((v36 & 0x80) != 0)
  {
    if (!(v35 | v36 & 0x7F))
    {
      goto LABEL_25;
    }

    v37 = &selRef_setAccessibilityElementsHidden_;
  }

  else
  {
    v37 = &selRef_setIsAccessibilityElement_;
  }

  [v34 *v37];
LABEL_25:

  result = [a4 view];
  if (!result)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v38 = result;
  v76 = a1;
  if (*(a2 + 104))
  {
    v39 = *(a2 + 144);
    v40 = *(a2 + 128);
    v41 = *(a2 + 136);
    sub_1D5ED34B0(v40, v41, v39);
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v39 = -2;
  }

  v42 = [v38 layer];
  [v38 bounds];
  v80[0] = v40;
  v80[1] = v41;
  v81 = v39;
  sub_1D6E549E4(v42, v80, v43, v44, v45, v46);

  sub_1D5ED348C(v40, v41, v39);
  result = [a4 view];
  if (!result)
  {
    goto LABEL_40;
  }

  v47 = result;
  [result bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v56 = [objc_allocWithZone(MEMORY[0x1E69CE188]) initWithBounds:v49 contentFrame:v51 contentSafeAreaFrame:v53 systemSafeAreaFrame:{v55, v17, v18, v15, v16, *&v17, *&v18, *&v15, *&v16, *&v17, *&v18, *&v15, *&v16}];
  v57 = OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_layoutGuide;
  swift_beginAccess();
  v58 = *&a4[v57];
  *&a4[v57] = v56;
  v59 = v56;

  v60 = *(a2 + 209);
  v61 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_layoutGuide;
  swift_beginAccess();
  v62 = *&v31[v61];
  *&v31[v61] = v59;
  v63 = v59;

  result = [v31 view];
  v64 = v76;
  v65 = v79;
  if (!result)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v66 = result;
  v75 = v63;
  [result setNeedsLayout];

  v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_isResizable] = v60;
  *v65 = *(v64 + 88);
  swift_storeEnumTagMultiPayload();
  v67 = sub_1D72585BC();
  v68 = *(v67 - 8);
  v69 = v78;
  (*(v68 + 56))(v78, 1, 1, v67);
  swift_unknownObjectRetain();

  v70 = sub_1D726203C();

  v71 = 0;
  if ((*(v68 + 48))(v69, 1, v67) != 1)
  {
    v71 = sub_1D725844C();
    (*(v68 + 8))(v69, v67);
  }

  v72 = [objc_allocWithZone(MEMORY[0x1E69CE190]) initWithContext:v70 URL:v71];

  v73 = *(*(v64 + 240) + 16);
  v74 = v75;
  sub_1D7033AF0(v65, 0, 0, 0x2000000u, v75, v72, v73, v31);

  return sub_1D7034C70(v65, type metadata accessor for PuzzleResourceSource);
}

uint64_t dispatch thunk of FormatPuzzleEmbedNodeRendererType.render<A>(context:for:with:contentFrame:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a9 + 8);
  v10 = *(a4 + 32);
  v11 = *(a4 + 16);
  v13[0] = *a4;
  v13[1] = v11;
  v14 = v10;
  return v9(a1, a2, a3, v13, a5, a6, a7, a8, a9);
}

uint64_t sub_1D7034A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleResourceSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7034A90(uint64_t a1, uint64_t a2)
{
  sub_1D5B54E6C(0, &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7034B10(uint64_t a1, uint64_t a2)
{
  sub_1D5B54E6C(0, qword_1EDF41DF0, type metadata accessor for PuzzleData);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7034B90(uint64_t a1)
{
  sub_1D5B54E6C(0, qword_1EDF41DF0, type metadata accessor for PuzzleData);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7034C08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7034C70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D7034CE8()
{
  result = qword_1EDF20848;
  if (!qword_1EDF20848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20848);
  }

  return result;
}

uint64_t FeedPluginModel.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D7034DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v21[0] = a7;
  v21[1] = a8;
  v21[2] = a10;
  v21[3] = a11;
  v18 = type metadata accessor for FeedPluginModel(0, v21);
  (*(*(a7 - 8) + 32))(&a9[v18[13]], a3, a7);
  result = (*(*(a8 - 8) + 32))(&a9[v18[14]], a4, a8);
  v20 = &a9[v18[15]];
  *v20 = a5;
  *(v20 + 1) = a6;
  return result;
}

double FeedPluginModel.next(revision:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v25 = *(a2 + 24);
  v26 = a3;
  v7 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13, v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 52);
  v24 = *(v16 + 40);
  v28 = sub_1D725AA4C();
  v29 = v18;
  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v27 = a1;
  v19 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v19);

  v20 = v28;
  v21 = v29;
  (*(v12 + 16))(v15, v4 + v17, v11);
  v22 = v25;
  (*(v7 + 16))(v9, v4 + *(a2 + 56), v25);
  sub_1D7034DDC(v20, v21, v15, v9, *(v4 + *(a2 + 60)), *(v4 + *(a2 + 60) + 8), v11, v22, v26, *(a2 + 32), v24);

  return result;
}

uint64_t static FeedPluginModel.== infix(_:_:)(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1 == *a2 && *(a1 + 1) == *(a2 + 1);
  if (v12 || (sub_1D72646CC()) && (v16[0] = a3, v16[1] = a4, v16[2] = a5, v16[3] = a6, v13 = type metadata accessor for FeedPluginModel(0, v16), (sub_1D7261FBC()))
  {
    v14 = (*&a1[*(v13 + 60)])(&a1[*(v13 + 56)], &a2[*(v13 + 56)]);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t (*FeedPluginModel<>.init(group:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>))(uint64_t a1, uint64_t a2)
{
  *a8 = sub_1D725AA4C();
  *(a8 + 1) = v16;
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v17 = type metadata accessor for FeedPluginModel(0, v20);
  (*(*(a3 - 8) + 32))(&a8[v17[13]], a1, a3);
  (*(*(a4 - 8) + 32))(&a8[v17[14]], a2, a4);
  result = swift_allocObject();
  *(result + 2) = a3;
  *(result + 3) = a4;
  *(result + 4) = a5;
  *(result + 5) = a6;
  *(result + 6) = a7;
  v19 = &a8[v17[15]];
  *v19 = sub_1D5C38688;
  *(v19 + 1) = result;
  return result;
}

uint64_t FeedPluginModel<>.init(group:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = sub_1D725AA4C();
  v11 = MEMORY[0x1E69E7CA8];
  *a5 = v10;
  *(a5 + 1) = v12;
  v16[0] = a2;
  v16[1] = v11 + 8;
  v16[2] = a3;
  v16[3] = a4;
  v13 = type metadata accessor for FeedPluginModel(0, v16);
  result = (*(*(a2 - 8) + 32))(&a5[*(v13 + 52)], a1, a2);
  v15 = &a5[*(v13 + 60)];
  *v15 = sub_1D5C00104;
  v15[1] = 0;
  return result;
}

uint64_t sub_1D70353E4(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((*(*(v6 - 8) + 64) + ((v10 + v11 + ((v9 + 16) & ~v9)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v15 = a2 - v13;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v19 || (v20 = *(a1 + v14)) == 0)
  {
LABEL_30:
    if ((v12 & 0x80000000) != 0)
    {
      v25 = (a1 + v9 + 16) & ~v9;
      if (v5 == v13)
      {
        return (*(v4 + 48))(v25);
      }

      else
      {
        return (*(v7 + 48))((v25 + v10 + v11) & ~v11, v8, v6);
      }
    }

    else
    {
      v24 = *(a1 + 1);
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }
  }

  v22 = v20 - 1;
  if (v16)
  {
    v22 = 0;
    v23 = *a1;
  }

  else
  {
    v23 = 0;
  }

  return v13 + (v23 | v22) + 1;
}

void *sub_1D70355CC(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v5 + 80);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v6 <= *(v7 + 84))
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = ((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = a3 - v13;
    if (((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(result + v14) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *(result + v14) = 0;
      }

      else if (v18)
      {
        *(result + v14) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_36:
        if ((v12 & 0x80000000) != 0)
        {
          v23 = (result + v8 + 16) & ~v8;
          if (v6 == v13)
          {
            v24 = *(v5 + 56);

            return v24(v23);
          }

          else
          {
            v25 = *(v7 + 56);
            v26 = (v23 + v9 + v10) & ~v10;

            return v25(v26);
          }
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

      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }
  }

  if (((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v13 + a2;
    v22 = result;
    bzero(result, ((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v22;
    *v22 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(result + v14) = v20;
    }

    else
    {
      *(result + v14) = v20;
    }
  }

  else if (v18)
  {
    *(result + v14) = v20;
  }

  return result;
}

uint64_t FeedHeadlineClusteringService.__allocating_init(clusteringService:headlineService:feedPersonalizer:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  sub_1D5B7DDE8(a2, v6 + 24);
  *(v6 + 64) = a3;
  return v6;
}

uint64_t FeedHeadlineClusteringService.createClusters(request:)(uint64_t a1)
{
  sub_1D725BDCC();

  v1 = sub_1D725B92C();
  v2 = sub_1D725BA7C();

  return v2;
}

uint64_t sub_1D703595C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedClusteringRequest(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v8 = *(a1 + 16);
  v9 = sub_1D701C8D4(a2);
  sub_1D6F84BC8(0);
  sub_1D725BDCC();
  sub_1D6F84D04(a2, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  sub_1D6F84D68(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1D6F84DCC;
  *(v12 + 24) = v11;

  v13 = v9;
  v14 = sub_1D725B92C();
  v15 = sub_1D725BA7C();

  return v15;
}

uint64_t sub_1D7035B48(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  sub_1D5B9F1C4(0, &qword_1EDF3C810, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, MEMORY[0x1E69E62F8]);
  sub_1D725BDCC();
  v6 = sub_1D725B92C();
  sub_1D6D87D50(0);
  sub_1D6F04ED0();
  sub_1D725BBEC();

  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;
  v7[5] = v4;

  v8 = sub_1D725B92C();
  v9 = sub_1D725BA8C();

  return v9;
}

uint64_t sub_1D7035D00(void *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v2);
  FeedChannelClusteringResult.scoredItems.getter();
  FeedTopicClusteringResult.scoredItems.getter();
  sub_1D6985340(v4);
  sub_1D6155CCC();
  sub_1D6155D1C();
  sub_1D6155D74();
  v5 = sub_1D726239C();

  v6 = HeadlineServiceType.fetchHeadlines(for:feedPersonalizer:purpose:)(v5, a1[8], *MEMORY[0x1E69B50B0], v2, v3);

  return v6;
}

void sub_1D7035E0C(uint64_t *a1, id *a2)
{
  v3 = *a2;
  v4 = [*a2 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  sub_1D6D76D08(v3, v5, v7, isUniquelyReferenced_nonNull_native);

  *a1 = v9;
}

uint64_t sub_1D7035EBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v141 = *result;
  v6 = *(a2 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v145 = MEMORY[0x1E69E7CC0];
    sub_1D69999D8(0, v6, 0);
    v9 = 0;
    v10 = v145;
    v122 = v6;
    v124 = a2 + 32;
    while (1)
    {
      v131 = v9;
      v11 = (v124 + 24 * v9);
      v13 = *v11;
      v12 = v11[1];
      v14 = v11[2];
      v15 = *(v12 + 16);
      swift_unknownObjectRetain_n();
      swift_bridgeObjectRetain_n();
      result = v14;
      v16 = v15;
      v17 = result;
      if (v16)
      {
        break;
      }

      v20 = v7;
LABEL_20:

      swift_unknownObjectRelease();
      result = swift_bridgeObjectRelease_n();
      v40 = *(v10 + 16);
      v39 = *(v10 + 24);
      if (v40 >= v39 >> 1)
      {
        result = sub_1D69999D8((v39 > 1), v40 + 1, 1);
      }

      v9 = v131 + 1;
      *(v10 + 16) = v40 + 1;
      v41 = (v10 + 24 * v40);
      v41[4] = v13;
      v41[5] = v20;
      v41[6] = v17;
      if (v131 + 1 == v6)
      {
        goto LABEL_25;
      }
    }

    v18 = 0;
    v19 = v12 + 48;
    v118 = v16 - 1;
    v20 = v7;
    v126 = v10;
    v138 = result;
    v133 = v16;
    v135 = v12;
    v120 = v12 + 48;
LABEL_5:
    v128 = v20;
    v21 = (v19 + 24 * v18);
    v22 = v18;
    while (1)
    {
      if (v22 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_80;
      }

      v23 = v13;
      v25 = *(v21 - 2);
      v24 = *(v21 - 1);
      v26 = *v21;
      swift_unknownObjectRetain();
      v142 = v24;
      v27 = [v25 itemID];
      v28 = sub_1D726207C();
      v30 = v29;

      if (*(v141 + 16))
      {
        v31 = sub_1D5B69D90(v28, v30);
        v33 = v32;

        if (v33)
        {
          v34 = *(*(v141 + 56) + 8 * v31);
          swift_unknownObjectRetain();

          swift_unknownObjectRelease();
          v20 = v128;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D698FB64(0, *(v128 + 16) + 1, 1, v128);
            v20 = result;
          }

          v7 = MEMORY[0x1E69E7CC0];
          v13 = v23;
          v36 = *(v20 + 16);
          v35 = *(v20 + 24);
          v17 = v138;
          if (v36 >= v35 >> 1)
          {
            result = sub_1D698FB64((v35 > 1), v36 + 1, 1, v20);
            v20 = result;
          }

          v18 = v22 + 1;
          *(v20 + 16) = v36 + 1;
          v37 = v20 + 16 * v36;
          *(v37 + 32) = v34;
          *(v37 + 40) = v142;
          v19 = v120;
          v38 = v118 == v22;
          v10 = v126;
          v6 = v122;
          v12 = v135;
          if (v38)
          {
            goto LABEL_20;
          }

          goto LABEL_5;
        }
      }

      else
      {
      }

      ++v22;

      result = swift_unknownObjectRelease();
      v21 += 3;
      v12 = v135;
      v13 = v23;
      v17 = v138;
      if (v133 == v22)
      {
        v10 = v126;
        v20 = v128;
        v7 = MEMORY[0x1E69E7CC0];
        v6 = v122;
        goto LABEL_20;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_25:
  v127 = v10;
  v42 = *(a3 + 16);
  v43 = MEMORY[0x1E69E7CC0];
  if (v42)
  {
    v146 = MEMORY[0x1E69E7CC0];
    sub_1D6998B38(0, v42, 0);
    v44 = 0;
    v45 = v146;
    v121 = v42;
    v123 = a3 + 32;
    while (1)
    {
      v46 = (v123 + 24 * v44);
      v47 = *v46;
      v48 = v46[1];
      v134 = v46[2];
      v136 = v44;
      v49 = *(v48 + 16);
      swift_unknownObjectRetain_n();
      result = swift_bridgeObjectRetain_n();
      if (v49)
      {
        break;
      }

      v52 = v43;
LABEL_44:
      swift_bridgeObjectRelease_n();
      result = swift_unknownObjectRelease();
      v70 = v47;
      v72 = *(v45 + 16);
      v71 = *(v45 + 24);
      if (v72 >= v71 >> 1)
      {
        result = sub_1D6998B38((v71 > 1), v72 + 1, 1);
      }

      v44 = v136 + 1;
      *(v45 + 16) = v72 + 1;
      v73 = (v45 + 24 * v72);
      v73[4] = v70;
      v73[5] = v52;
      v73[6] = v134;
      if (v136 + 1 == v42)
      {
        goto LABEL_49;
      }
    }

    v50 = 0;
    v51 = v48 + 48;
    v117 = v49 - 1;
    v52 = v43;
    v129 = v45;
    v125 = v47;
    v143 = v48;
    v139 = v49;
    v119 = v48 + 48;
LABEL_29:
    v132 = v52;
    v53 = (v51 + 24 * v50);
    v54 = v50;
    while (v54 < *(v48 + 16))
    {
      v55 = *(v53 - 2);
      v56 = *(v53 - 1);
      v57 = *v53;
      swift_unknownObjectRetain();
      v58 = v56;
      v59 = [v55 itemID];
      v60 = sub_1D726207C();
      v62 = v61;

      if (*(v141 + 16))
      {
        v63 = sub_1D5B69D90(v60, v62);
        v65 = v64;

        if (v65)
        {
          v66 = *(*(v141 + 56) + 8 * v63);
          swift_unknownObjectRetain();

          swift_unknownObjectRelease();
          v52 = v132;
          result = swift_isUniquelyReferenced_nonNull_native();
          v48 = v143;
          v51 = v119;
          if ((result & 1) == 0)
          {
            result = sub_1D698FB64(0, *(v132 + 16) + 1, 1, v132);
            v52 = result;
          }

          v68 = *(v52 + 16);
          v67 = *(v52 + 24);
          if (v68 >= v67 >> 1)
          {
            result = sub_1D698FB64((v67 > 1), v68 + 1, 1, v52);
            v52 = result;
          }

          v50 = v54 + 1;
          *(v52 + 16) = v68 + 1;
          v69 = v52 + 16 * v68;
          *(v69 + 32) = v66;
          *(v69 + 40) = v58;
          v38 = v117 == v54;
          v45 = v129;
          v43 = MEMORY[0x1E69E7CC0];
          v42 = v121;
          v47 = v125;
          if (v38)
          {
            goto LABEL_44;
          }

          goto LABEL_29;
        }
      }

      else
      {
      }

      ++v54;

      result = swift_unknownObjectRelease();
      v53 += 3;
      v48 = v143;
      if (v139 == v54)
      {
        v45 = v129;
        v52 = v132;
        v43 = MEMORY[0x1E69E7CC0];
        v42 = v121;
        v47 = v125;
        goto LABEL_44;
      }
    }

LABEL_80:
    __break(1u);
  }

  else
  {
    v45 = MEMORY[0x1E69E7CC0];
LABEL_49:
    v130 = v45;
    v74 = *(a4 + 16);
    if (v74)
    {
      v75 = 0;
      v76 = a4 + 48;
      v77 = MEMORY[0x1E69E7CC0];
      v140 = *(a4 + 16);
LABEL_51:
      v137 = v77;
      v78 = (v76 + 24 * v75);
      v79 = v75;
      while (v79 < v74)
      {
        v75 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          goto LABEL_83;
        }

        v81 = *(v78 - 2);
        v80 = *(v78 - 1);
        v82 = *v78;
        swift_unknownObjectRetain();
        v144 = v80;
        v83 = [v81 itemID];
        v84 = sub_1D726207C();
        v86 = v85;

        if (*(v141 + 16))
        {
          v87 = sub_1D5B69D90(v84, v86);
          v89 = v88;

          if (v89)
          {
            v90 = *(*(v141 + 56) + 8 * v87);
            swift_unknownObjectRetain();

            swift_unknownObjectRelease();
            v77 = v137;
            result = swift_isUniquelyReferenced_nonNull_native();
            v74 = v140;
            if ((result & 1) == 0)
            {
              result = sub_1D698FB64(0, *(v137 + 16) + 1, 1, v137);
              v77 = result;
            }

            v76 = a4 + 48;
            v92 = *(v77 + 16);
            v91 = *(v77 + 24);
            if (v92 >= v91 >> 1)
            {
              result = sub_1D698FB64((v91 > 1), v92 + 1, 1, v77);
              v77 = result;
            }

            *(v77 + 16) = v92 + 1;
            v93 = v77 + 16 * v92;
            *(v93 + 32) = v90;
            *(v93 + 40) = v144;
            if (v75 != v140)
            {
              goto LABEL_51;
            }

            goto LABEL_66;
          }
        }

        else
        {
        }

        result = swift_unknownObjectRelease();
        ++v79;
        v78 += 3;
        v74 = v140;
        if (v75 == v140)
        {
          v77 = v137;
          goto LABEL_66;
        }
      }

      goto LABEL_82;
    }

    v77 = MEMORY[0x1E69E7CC0];
LABEL_66:
    sub_1D7036888();
    result = sub_1D72640FC();
    v94 = result;
    v95 = 0;
    v96 = *(a5 + 64);
    v97 = 1 << *(a5 + 32);
    v98 = -1;
    if (v97 < 64)
    {
      v98 = ~(-1 << v97);
    }

    v99 = v98 & v96;
    v100 = (v97 + 63) >> 6;
    v101 = result + 64;
    if ((v98 & v96) != 0)
    {
      do
      {
        v102 = __clz(__rbit64(v99));
        v99 &= v99 - 1;
LABEL_75:
        v105 = v102 | (v95 << 6);
        v106 = (*(a5 + 48) + 16 * v105);
        v107 = *v106;
        result = v106[1];
        v108 = (v94[6] + 16 * v105);
        v109 = *(*(a5 + 56) + 16 * v105);
        *(v101 + ((v105 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v105;
        *v108 = v107;
        v108[1] = result;
        *(v94[7] + 16 * v105) = v109;
        v110 = v94[2];
        v111 = __OFADD__(v110, 1);
        v112 = v110 + 1;
        if (v111)
        {
          goto LABEL_84;
        }

        v94[2] = v112;
      }

      while (v99);
    }

    v103 = v95;
    while (1)
    {
      v95 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        break;
      }

      if (v95 >= v100)
      {
        *a6 = v127;
        a6[1] = v130;
        a6[2] = v77;
        a6[3] = v94;
        return result;
      }

      v104 = *(a5 + 64 + 8 * v95);
      ++v103;
      if (v104)
      {
        v102 = __clz(__rbit64(v104));
        v99 = (v104 - 1) & v104;
        goto LABEL_75;
      }
    }
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}