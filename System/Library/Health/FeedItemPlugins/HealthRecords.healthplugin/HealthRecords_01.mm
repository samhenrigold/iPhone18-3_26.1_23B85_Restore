uint64_t sub_29D4AD5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v41 = a2;
  v4 = MEMORY[0x29EDB8AB0];
  sub_29D4B2EB0(0, &qword_2A1A165E0, sub_29D4B3AC0, MEMORY[0x29EDB8AB0]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v38 - v9;
  sub_29D4B2EB0(0, &qword_2A1A165E8, sub_29D4B3D94, v4);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v38 - v15;
  sub_29D4B3DC8(0);
  v44 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B3E78(0);
  v24 = MEMORY[0x2A1C7C4A8](v22, v23);
  v27 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) < 0xBuLL)
  {
    v45 = MEMORY[0x29EDCA190];
    sub_29D4B3AC0(0);
    sub_29D5B3A2C();
    sub_29D4B3AF4();
    sub_29D5B39EC();
    (*(v7 + 8))(v10, v6);
    sub_29D4B2F14(&qword_2A1A161C0, sub_29D4B3DC8, MEMORY[0x29EDB8B20]);
    v36 = v44;
    v35 = sub_29D5B3B1C();
    (*(v18 + 8))(v21, v36);
  }

  else
  {
    v45 = a1;
    v39 = v24;
    v40 = v25;
    sub_29D4B3D94(0);

    v28 = sub_29D5B3A2C();
    MEMORY[0x2A1C7C4A8](v28, v29);
    v30 = v43;
    v32 = v41;
    v31 = v42;
    *(&v38 - 4) = v43;
    *(&v38 - 3) = v32;
    *(&v38 - 2) = v31;
    sub_29D4B3AC0(0);
    sub_29D5B3A0C();
    (*(v13 + 8))(v16, v12);
    *(swift_allocObject() + 16) = v30;
    sub_29D4B3A8C(0);
    sub_29D4B2F14(&qword_2A1A161C0, sub_29D4B3DC8, MEMORY[0x29EDB8B20]);
    sub_29D4B2F14(&qword_2A1A167C0, sub_29D4B3A8C, MEMORY[0x29EDB8A00]);
    v33 = v44;
    sub_29D5B3B8C();

    (*(v18 + 8))(v21, v33);
    sub_29D4B2F14(&qword_2A1A16CC8, sub_29D4B3E78, MEMORY[0x29EDB8928]);
    v34 = v39;
    v35 = sub_29D5B3B1C();
    (*(v40 + 8))(v27, v34);
  }

  return v35;
}

double sub_29D4ADB0C(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), uint64_t a4)
{
  v117 = a3;
  v108 = a1;
  v107 = sub_29D5B148C();
  v103 = *(v107 - 8);
  MEMORY[0x2A1C7C4A8](v107, v6);
  v102 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_29D5B371C();
  v105 = *(v106 - 8);
  MEMORY[0x2A1C7C4A8](v106, v8);
  v104 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4AD4(0);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v118 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D5B134C();
  v121 = *(v13 - 8);
  v122 = v13;
  v15 = MEMORY[0x2A1C7C4A8](v13, v14);
  v120 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v111 = &v100 - v19;
  MEMORY[0x2A1C7C4A8](v18, v20);
  v119 = &v100 - v21;
  v22 = sub_29D5B1AAC();
  v23 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v26 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29D5B1D6C();
  v28 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27, v29);
  v31 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a2;
  v32 = *(a2 + 16);
  v109 = a4;
  if (v32)
  {
    v33 = MEMORY[0x29EDCA190];
  }

  else
  {
    (*(v28 + 104))(v31, *MEMORY[0x29EDC4068], v27);
    (*(v23 + 104))(v26, *MEMORY[0x29EDC3F10], v22);
    v34 = sub_29D5B143C();
    v35 = sub_29D5B26EC();
    v116 = v36;

    (*(v23 + 8))(v26, v22);
    (*(v28 + 8))(v31, v27);
    v37 = sub_29D514C4C(0, 1, 1, MEMORY[0x29EDCA190]);
    v39 = *(v37 + 2);
    v38 = *(v37 + 3);
    v40 = v37;
    if (v39 >= v38 >> 1)
    {
      v40 = sub_29D514C4C((v38 > 1), v39 + 1, 1, v37);
    }

    *(v40 + 2) = v39 + 1;
    v41 = &v40[16 * v39];
    v33 = v40;
    v42 = v116;
    *(v41 + 4) = v35;
    *(v41 + 5) = v42;
    v32 = 0;
  }

  if (*(v108 + 16))
  {
    v43 = v117;
  }

  else
  {
    v44 = v32;
    (*(v28 + 104))(v31, *MEMORY[0x29EDC4068], v27);
    (*(v23 + 104))(v26, *MEMORY[0x29EDC3F10], v22);
    v45 = sub_29D5B143C();
    v46 = sub_29D5B26DC();
    v116 = v47;

    (*(v23 + 8))(v26, v22);
    (*(v28 + 8))(v31, v27);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_29D514C4C(0, *(v33 + 2) + 1, 1, v33);
    }

    v49 = *(v33 + 2);
    v48 = *(v33 + 3);
    v43 = v117;
    if (v49 >= v48 >> 1)
    {
      v99 = sub_29D514C4C((v48 > 1), v49 + 1, 1, v33);
      v32 = v44;
      v33 = v99;
    }

    else
    {
      v32 = v44;
    }

    *(v33 + 2) = v49 + 1;
    v50 = &v33[16 * v49];
    v51 = v116;
    *(v50 + 4) = v46;
    *(v50 + 5) = v51;
  }

  v101 = v33;
  if (v32 && (v52 = sub_29D5B143C(), v53 = sub_29D5B10DC(), v54 = sub_29D5B10CC(), v53, v52, (v54 & 1) == 0))
  {
    v83 = v43[2];
    if (v83)
    {
      v117 = *(v121 + 16);
      v110 = (*(v121 + 80) + 32) & ~*(v121 + 80);
      v84 = v43 + v110;
      v85 = *(v121 + 72);
      v115 = (v121 + 8);
      v116 = (v121 + 56);
      v114 = (v121 + 48);
      v43 = MEMORY[0x29EDCA190];
      v121 += 16;
      v113 = (v121 + 16);
      v112 = xmmword_29D5B62A0;
      v86 = v122;
      v87 = v118;
      do
      {
        v88 = v119;
        v89 = v117;
        v117(v119, v84, v86);
        v89(v87, v88, v86);
        sub_29D4B4B08(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
        inited = swift_initStackObject();
        *(inited + 16) = v112;
        *(inited + 32) = sub_29D5B15DC();
        v91 = inited + 32;
        *(inited + 40) = v92;
        v93 = sub_29D5B130C();
        sub_29D4F1774(inited);
        v86 = v122;
        swift_setDeallocating();
        sub_29D4B4B58(v91);
        v93(v125, 0);
        (*v116)(v87, 0, 1, v86);
        (*v115)(v88, v86);
        if ((*v114)(v87, 1, v86) == 1)
        {
          sub_29D4B4540(v87, sub_29D4B4AD4);
        }

        else
        {
          v94 = *v113;
          v95 = v111;
          (*v113)(v111, v87, v86);
          v94(v120, v95, v86);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_29D515230(0, v43[2] + 1, 1, v43);
          }

          v97 = v43[2];
          v96 = v43[3];
          if (v97 >= v96 >> 1)
          {
            v43 = sub_29D515230((v96 > 1), v97 + 1, 1, v43);
          }

          v43[2] = v97 + 1;
          v98 = v43 + v110 + v97 * v85;
          v86 = v122;
          v94(v98, v120, v122);
        }

        v84 += v85;
        --v83;
      }

      while (v83);
    }

    else
    {
      v43 = MEMORY[0x29EDCA190];
    }
  }

  else
  {
  }

  v124 = v43;

  sub_29D54F7D0(v55);

  sub_29D54F7D0(v56);
  v57 = v124;
  v58 = v104;
  sub_29D5B36AC();
  v59 = v103;
  v60 = v102;
  v61 = v107;
  (*(v103 + 16))(v102, v109, v107);

  v62 = sub_29D5B370C();
  v63 = sub_29D5B426C();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = v59;
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v123 = v66;
    *v65 = 136446722;
    v125[0] = sub_29D4B34E8(0);
    sub_29D4B3508(0, &qword_2A1A17C68, sub_29D4B34E8);
    v67 = sub_29D5B3E7C();
    v69 = sub_29D501890(v67, v68, &v123);

    *(v65 + 4) = v69;
    *(v65 + 12) = 2082;
    v70 = sub_29D5B143C();
    v71 = sub_29D5B10AC();

    v125[0] = v71;
    sub_29D4B2EB0(0, &qword_2A1A16328, sub_29D4B4BAC, MEMORY[0x29EDC9C68]);
    sub_29D5B4CAC();
    v72 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v73 = sub_29D5B3E7C();
    v75 = v74;
    (*(v64 + 8))(v60, v107);
    v76 = sub_29D501890(v73, v75, &v123);

    *(v65 + 14) = v76;
    *(v65 + 22) = 2082;
    v125[0] = v57;
    sub_29D4B3AC0(0);

    sub_29D5B4CAC();
    v77 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v78 = sub_29D5B3E7C();
    v80 = sub_29D501890(v78, v79, &v123);

    *(v65 + 24) = v80;
    _os_log_impl(&dword_29D48C000, v62, v63, "[%{public}s]: for profile: %{public}s, generated new feed items: %{public}s", v65, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v66, -1, -1);
    MEMORY[0x29ED5FB80](v65, -1, -1);
  }

  else
  {

    (*(v59 + 8))(v60, v61);
  }

  (*(v105 + 8))(v58, v106);
  sub_29D4B4B08(0, &qword_2A1A16208, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9E90]);
  v81 = swift_allocObject();
  *&result = 2;
  *(v81 + 16) = xmmword_29D5B5E20;
  *(v81 + 32) = v57;
  *(v81 + 40) = 0;
  *(v81 + 48) = 0;
  *(v81 + 56) = 0;
  *(v81 + 64) = 0;
  *(v81 + 72) = v101;
  *(v81 + 80) = 0;
  *(v81 + 88) = 0;
  *(v81 + 96) = 0;
  *(v81 + 104) = 32;
  return result;
}

uint64_t sub_29D4AE7A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D4B37EC(0);
  v5 = v4;
  v43 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B3C64(0, &qword_2A17A3D48, MEMORY[0x29EDB8B18]);
  v9 = v8;
  v42 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v37 - v11;
  v40 = sub_29D5B371C();
  v13 = *(v40 - 8);
  MEMORY[0x2A1C7C4A8](v40, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  sub_29D5B36AC();
  v18 = v17;
  v19 = sub_29D5B370C();
  v20 = sub_29D5B427C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v37 = v9;
    v22 = v21;
    v23 = swift_slowAlloc();
    v45 = v23;
    *v22 = 136446466;
    v44 = sub_29D4B34E8(0);
    sub_29D4B3508(0, &qword_2A1A17C68, sub_29D4B34E8);
    v24 = sub_29D5B3E7C();
    v39 = a2;
    v26 = sub_29D501890(v24, v25, &v45);
    v38 = v5;
    v27 = v26;

    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    v44 = v17;
    v28 = v17;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v29 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v30 = sub_29D5B3E7C();
    v32 = sub_29D501890(v30, v31, &v45);

    *(v22 + 14) = v32;
    a2 = v39;
    _os_log_impl(&dword_29D48C000, v19, v20, "[%{public}s] Unable to compute desired feed item difference based on sharable model change for commit: %{public}s", v22, 0x16u);
    v5 = v38;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v23, -1, -1);
    v33 = v22;
    v9 = v37;
    MEMORY[0x29ED5FB80](v33, -1, -1);
  }

  (*(v13 + 8))(v16, v40);
  v44 = MEMORY[0x29EDCA190];
  sub_29D4B4B08(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  v34 = v41;
  sub_29D5B3A2C();
  sub_29D4B3AF4();
  sub_29D5B39EC();
  (*(v43 + 8))(v34, v5);
  sub_29D4B4A90(&qword_2A17A3D50, &qword_2A17A3D48, MEMORY[0x29EDB8B18], MEMORY[0x29EDB8B20]);
  v35 = sub_29D5B3B1C();
  result = (*(v42 + 8))(v12, v9);
  *a2 = v35;
  return result;
}

uint64_t sub_29D4AEC44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v148 = a2;
  v145 = a4;
  v143 = sub_29D5B148C();
  v149 = *(v143 - 8);
  MEMORY[0x2A1C7C4A8](v143, v6);
  v8 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_29D5B371C();
  v139 = *(v140 - 8);
  MEMORY[0x2A1C7C4A8](v140, v9);
  v141 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4AD4(0);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v14 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_29D5B134C();
  v152 = *(v150 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v150, v15);
  v136 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v137 = &v135 - v20;
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v24 = &v135 - v23;
  MEMORY[0x2A1C7C4A8](v22, v25);
  v144 = &v135 - v26;
  v161 = sub_29D5B0E6C();
  v153 = *(v161 - 8);
  v28 = MEMORY[0x2A1C7C4A8](v161, v27);
  v30 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x2A1C7C4A8](v28, v31);
  v34 = &v135 - v33;
  v36 = MEMORY[0x2A1C7C4A8](v32, v35);
  v146 = &v135 - v37;
  v39 = MEMORY[0x2A1C7C4A8](v36, v38);
  v154 = &v135 - v40;
  MEMORY[0x2A1C7C4A8](v39, v41);
  v151 = &v135 - v42;
  sub_29D4B4CA8(0);
  v45 = MEMORY[0x2A1C7C4A8](v43 - 8, v44);
  v157 = &v135 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v45, v47);
  v49 = &v135 - v48;
  v50 = type metadata accessor for SharedConceptFeedItemData(0);
  v51 = *(v50 - 8);
  v163 = v50;
  v164 = v51;
  v53 = MEMORY[0x2A1C7C4A8](v50, v52);
  v160 = (&v135 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = MEMORY[0x2A1C7C4A8](v53, v55);
  v156 = &v135 - v57;
  result = MEMORY[0x2A1C7C4A8](v56, v58);
  v165 = a3;
  v166 = (&v135 - v60);
  v61 = *a1;
  v167 = *(*a1 + 16);
  v138 = v8;
  v142 = v24;
  v147 = v14;
  v159 = v34;
  if (v167)
  {
    v62 = 0;
    v158 = MEMORY[0x29EDCA190];
    v162 = v30;
    while (1)
    {
      if (v62 >= *(v61 + 16))
      {
        __break(1u);
        return result;
      }

      v63 = (*(v164 + 80) + 32) & ~*(v164 + 80);
      v64 = *(v164 + 9);
      v65 = v166;
      sub_29D4B4CDC(v61 + v63 + v64 * v62, v166, type metadata accessor for SharedConceptFeedItemData);
      sub_29D4B4CDC(v65 + *(v163 + 13), v49, sub_29D4B4CA8);
      v66 = sub_29D5B175C();
      v67 = *(v66 - 8);
      if ((*(v67 + 48))(v49, 1, v66) == 1)
      {
        sub_29D4B4540(v49, sub_29D4B4CA8);
      }

      else
      {
        v68 = v49;
        v69 = v61;
        v70 = v157;
        sub_29D5B174C();
        (*(v67 + 56))(v70, 0, 1, v66);
        v71 = sub_29D5B173C();
        v72 = v70;
        v61 = v69;
        v49 = v68;
        sub_29D4B4540(v72, sub_29D4B4CA8);
        (*(v67 + 8))(v68, v66);
        if (v71)
        {
          sub_29D4B45A0(v166, v156);
          v73 = v158;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v168 = v73;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_29D4C6BC0(0, *(v73 + 16) + 1, 1);
            v73 = v168;
          }

          v76 = *(v73 + 16);
          v75 = *(v73 + 24);
          if (v76 >= v75 >> 1)
          {
            sub_29D4C6BC0((v75 > 1), v76 + 1, 1);
            v73 = v168;
          }

          *(v73 + 16) = v76 + 1;
          v158 = v73;
          result = sub_29D4B45A0(v156, v73 + v63 + v76 * v64);
          goto LABEL_5;
        }
      }

      result = sub_29D4B4540(v166, type metadata accessor for SharedConceptFeedItemData);
LABEL_5:
      a3 = v165;
      ++v62;
      v30 = v162;
      if (v167 == v62)
      {
        goto LABEL_15;
      }
    }
  }

  v158 = MEMORY[0x29EDCA190];
LABEL_15:
  if (!*(v158 + 16))
  {

LABEL_32:
    *v145 = MEMORY[0x29EDCA190];
    return result;
  }

  v77 = v154;
  sub_29D5B0D9C();
  v78 = v153;
  v79 = v146;
  v80 = v161;
  (*(v153 + 16))(v146, v77, v161);
  v81 = v167;
  if (v167)
  {
    v82 = v160;
    v83 = v161;
    v163 = v160 + *(v163 + 11);
    v84 = v61 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
    v164 = *(v164 + 9);
    v166 = (v78 + 8);
    v85 = (v78 + 32);
    do
    {
      v167 = v81;
      sub_29D4B4CDC(v84, v82, type metadata accessor for SharedConceptFeedItemData);
      sub_29D5B0E1C();
      v86 = sub_29D5B0DFC();
      sub_29D4B4540(v82, type metadata accessor for SharedConceptFeedItemData);
      v87 = *v166;
      if (v86)
      {
        v88 = v79;
      }

      else
      {
        v88 = v30;
      }

      if (v86)
      {
        v89 = v30;
      }

      else
      {
        v89 = v79;
      }

      v87(v88, v83);
      v90 = *v85;
      v91 = v159;
      (*v85)(v159, v89, v83);
      v90(v79, v91, v83);
      v82 = v160;
      v84 += v164;
      v81 = v167 - 1;
    }

    while (v167 != 1);
    v80 = v161;
    a3 = v165;
    v92 = v166;
    v78 = v153;
  }

  else
  {
    v92 = (v78 + 8);
    v87 = *(v78 + 8);
  }

  v87(v154, v80);
  v93 = v151;
  (*(v78 + 32))(v151, v79, v80);
  v94 = v147;
  v95 = v155;
  sub_29D4AFB2C(v158, v93, v148, a3, v147);
  v96 = v150;
  v97 = v152;
  v98 = v149;
  v155 = v95;
  if (v95)
  {
    v87(v93, v80);
  }

  v166 = v92;
  v167 = v87;

  if ((*(v97 + 48))(v94, 1, v96) == 1)
  {
    sub_29D4B4540(v94, sub_29D4B4AD4);
    result = (v167)(v93, v80);
    goto LABEL_32;
  }

  v99 = (v97 + 32);
  v100 = v144;
  v101 = v94;
  v102 = *(v97 + 32);
  v102(v144, v101, v96);
  v103 = v141;
  sub_29D5B36AC();
  v104 = v138;
  (*(v98 + 16))(v138, v165, v143);
  v105 = *(v97 + 16);
  v105(v142, v100, v96);
  v106 = v103;
  v107 = sub_29D5B370C();
  LODWORD(v165) = sub_29D5B426C();
  if (os_log_type_enabled(v107, v165))
  {
    v108 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    v169 = v162;
    *v108 = 136446722;
    v168 = sub_29D4B34E8(0);
    sub_29D4B3508(0, &qword_2A1A17C68, sub_29D4B34E8);
    v109 = sub_29D5B3E7C();
    v160 = v107;
    v111 = sub_29D501890(v109, v110, &v169);
    v164 = v102;
    v112 = v111;

    *(v108 + 4) = v112;
    *(v108 + 12) = 2082;
    v113 = sub_29D5B143C();
    v114 = sub_29D5B10AC();

    v168 = v114;
    sub_29D4B2EB0(0, &qword_2A1A16328, sub_29D4B4BAC, MEMORY[0x29EDC9C68]);
    sub_29D5B4CAC();
    v115 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v116 = sub_29D5B3E7C();
    v118 = v117;
    (*(v98 + 8))(v104, v143);
    v119 = sub_29D501890(v116, v118, &v169);

    *(v108 + 14) = v119;
    *(v108 + 22) = 2082;
    v120 = v137;
    v163 = v99;
    v121 = v142;
    v105(v137, v142, v96);
    v105(v136, v120, v96);
    sub_29D5B4CAC();
    v122 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v123 = sub_29D5B3E7C();
    v125 = v124;
    v126 = v152;
    v127 = *(v152 + 8);
    v127(v120, v96);
    v127(v121, v96);
    v128 = sub_29D501890(v123, v125, &v169);
    v102 = v164;

    *(v108 + 24) = v128;
    v129 = v160;
    _os_log_impl(&dword_29D48C000, v160, v165, "[%{public}s]: for profile: %{public}s, generated combo feed item: %{public}s", v108, 0x20u);
    v130 = v162;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v130, -1, -1);
    MEMORY[0x29ED5FB80](v108, -1, -1);

    (*(v139 + 8))(v141, v140);
  }

  else
  {

    v132 = v152;
    (*(v152 + 8))(v142, v96);
    (*(v98 + 8))(v104, v143);
    (*(v139 + 8))(v106, v140);
    v126 = v132;
  }

  v131 = v167;
  sub_29D4B2EB0(0, &qword_2A1A195F0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
  v133 = (*(v126 + 80) + 32) & ~*(v126 + 80);
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_29D5B62A0;
  v102((v134 + v133), v144, v96);
  result = (v131)(v151, v161);
  *v145 = v134;
  return result;
}

void sub_29D4AFB2C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v125 = a4;
  v126 = a2;
  v121 = a3;
  v116 = a5;
  v101 = sub_29D5B12DC();
  v100 = *(v101 - 8);
  MEMORY[0x2A1C7C4A8](v101, v6);
  v99 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B2EB0(0, &qword_2A1A17388, MEMORY[0x29EDC3980], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v107 = &v93 - v10;
  v124 = sub_29D5B0E6C();
  v130 = *(v124 - 8);
  MEMORY[0x2A1C7C4A8](v124, v11);
  v106 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D5B0C7C();
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v105 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D5B170C();
  v114 = *(v16 - 8);
  v115 = v16;
  MEMORY[0x2A1C7C4A8](v16, v17);
  v113 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_29D5B104C();
  v102 = *(v104 - 8);
  MEMORY[0x2A1C7C4A8](v104, v19);
  v103 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29D5B134C();
  v22 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v123 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29D5B1AAC();
  v119 = *(v25 - 8);
  v120 = v25;
  MEMORY[0x2A1C7C4A8](v25, v26);
  v118 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SharedConceptFeedItemData(0);
  v133 = *(v28 - 8);
  v30 = MEMORY[0x2A1C7C4A8](v28, v29);
  v131 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30, v32);
  v34 = &v93 - v33;
  v35 = sub_29D5B1D6C();
  v36 = *(v35 - 8);
  v38 = MEMORY[0x2A1C7C4A8](v35, v37);
  v117 = &v93 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v38, v40);
  v42 = &v93 - v41;
  v128 = type metadata accessor for SharedConceptComboFeedItemData(0);
  v44 = MEMORY[0x2A1C7C4A8](v128, v43);
  v122 = &v93 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = MEMORY[0x29ED5F4B0](v44);
  v46 = a1;
  v47 = *(a1 + 16);
  if (!v47)
  {
    (*(v22 + 56))(v116, 1, 1, v21);
LABEL_17:
    objc_autoreleasePoolPop(v127);
    return;
  }

  v96 = v22;
  v97 = v21;
  v48 = *MEMORY[0x29EDC4068];
  v111 = v36;
  v49 = *(v36 + 104);
  LODWORD(v110) = v48;
  v112 = v35;
  v109 = v36 + 104;
  v108 = v49;
  v49(v42);
  v50 = &v34[*(v28 + 28)];
  v51 = v46 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
  v133 = *(v133 + 72);
  v52 = MEMORY[0x29EDCA190];
  v94 = v51;
  v95 = v47;
  v132 = v42;
  do
  {
    sub_29D4B4CDC(v51, v34, type metadata accessor for SharedConceptFeedItemData);
    v54 = *v50;
    v53 = *(v50 + 1);

    sub_29D4B4540(v34, type metadata accessor for SharedConceptFeedItemData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_29D514C4C(0, *(v52 + 2) + 1, 1, v52);
    }

    v56 = *(v52 + 2);
    v55 = *(v52 + 3);
    if (v56 >= v55 >> 1)
    {
      v52 = sub_29D514C4C((v55 > 1), v56 + 1, 1, v52);
    }

    *(v52 + 2) = v56 + 1;
    v57 = &v52[16 * v56];
    *(v57 + 4) = v54;
    *(v57 + 5) = v53;
    v58 = v132;
    v51 += v133;
    --v47;
  }

  while (v47);
  v59 = v128;
  v60 = *(v130 + 16);
  v61 = v122;
  v62 = (v122 + *(v128 + 24));
  v130 += 16;
  v98 = v60;
  v60(v62, v126, v124);
  v63 = v111;
  v64 = v112;
  (*(v111 + 32))(v61, v58, v112);
  *(v61 + *(v59 + 20)) = v52;
  v65 = v117;
  v108(v117, v110, v64);
  v67 = v118;
  v66 = v119;
  v68 = v120;
  (*(v119 + 104))(v118, *MEMORY[0x29EDC3F10], v120);
  v69 = sub_29D5B143C();
  v110 = sub_29D5B26EC();
  v132 = v70;

  (*(v66 + 8))(v67, v68);
  (*(v63 + 8))(v65, v64);
  sub_29D4B2F14(&qword_2A17A3D78, type metadata accessor for SharedConceptComboFeedItemData, &unk_29D5B77A0);
  v71 = v129;
  sub_29D5B0BEC();
  if (v71)
  {
    sub_29D4B4540(v61, type metadata accessor for SharedConceptComboFeedItemData);

    objc_autoreleasePoolPop(v127);
    return;
  }

  v129 = 0;
  type metadata accessor for SharedConceptComboTileViewController(0);
  (*(v102 + 104))(v103, *MEMORY[0x29EDC36E0], v104);
  sub_29D5B143C();
  sub_29D5B110C();
  v98(v106, v126, v124);
  sub_29D5B0C6C();
  v72 = v113;
  sub_29D5B16EC();
  v73 = v114;
  v74 = v107;
  v75 = v72;
  v76 = v115;
  (*(v114 + 16))(v107, v75, v115);
  (*(v73 + 56))(v74, 0, 1, v76);
  sub_29D5B12BC();
  v77 = [objc_opt_self() categoryWithID_];
  if (v77)
  {
    v78 = v77;
    sub_29D5B111C();

    sub_29D5B123C();
    v134 = MEMORY[0x29EDCA190];
    v79 = v95;
    sub_29D4C6C10(0, v95, 0);
    v80 = v134;
    v81 = v100;
    v132 = (v100 + 32);
    v82 = v101;
    v83 = v99;
    v84 = v94;
    do
    {
      v85 = v131;
      sub_29D4B4CDC(v84, v131, type metadata accessor for SharedConceptFeedItemData);

      sub_29D5B12CC();
      sub_29D4B4540(v85, type metadata accessor for SharedConceptFeedItemData);
      v134 = v80;
      v87 = *(v80 + 16);
      v86 = *(v80 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_29D4C6C10((v86 > 1), v87 + 1, 1);
        v80 = v134;
      }

      *(v80 + 16) = v87 + 1;
      (*(v81 + 32))(v80 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v87, v83, v82);
      v84 += v133;
      --v79;
    }

    while (v79);
    sub_29D5960BC(v80);

    v88 = v123;
    sub_29D5B12FC();
    (*(v114 + 8))(v113, v115);
    sub_29D4B4540(v122, type metadata accessor for SharedConceptComboFeedItemData);
    v89 = v96;
    v90 = v116;
    v91 = v88;
    v92 = v97;
    (*(v96 + 32))(v116, v91, v97);
    (*(v89 + 56))(v90, 0, 1, v92);
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_29D4B0784@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D4B2EB0(0, &qword_2A1A165E0, sub_29D4B3AC0, MEMORY[0x29EDB8AB0]);
  v5 = v4;
  v42 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v37 - v7;
  sub_29D4B3DC8(0);
  v10 = v9;
  v43 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_29D5B371C();
  v14 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  sub_29D5B36AC();
  v19 = v18;
  v20 = sub_29D5B370C();
  v21 = sub_29D5B427C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v38 = v5;
    v23 = v22;
    v37 = swift_slowAlloc();
    v45 = v37;
    *v23 = 136446466;
    v44 = sub_29D4B34E8(0);
    sub_29D4B3508(0, &qword_2A1A17C68, sub_29D4B34E8);
    v24 = sub_29D5B3E7C();
    v40 = a2;
    v26 = sub_29D501890(v24, v25, &v45);
    v39 = v10;
    v27 = v26;

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    v44 = v18;
    v28 = v18;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v29 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v30 = sub_29D5B3E7C();
    v32 = sub_29D501890(v30, v31, &v45);

    *(v23 + 14) = v32;
    a2 = v40;
    _os_log_impl(&dword_29D48C000, v20, v21, "[%{public}s] Unable to generate combo tile: %{public}s", v23, 0x16u);
    v10 = v39;
    v33 = v37;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v33, -1, -1);
    v34 = v23;
    v5 = v38;
    MEMORY[0x29ED5FB80](v34, -1, -1);
  }

  (*(v14 + 8))(v17, v41);
  v44 = MEMORY[0x29EDCA190];
  sub_29D4B3AC0(0);
  sub_29D5B3A2C();
  sub_29D4B3AF4();
  sub_29D5B39EC();
  (*(v42 + 8))(v8, v5);
  sub_29D4B2F14(&qword_2A1A161C0, sub_29D4B3DC8, MEMORY[0x29EDB8B20]);
  v35 = sub_29D5B3B1C();
  result = (*(v43 + 8))(v13, v10);
  *a2 = v35;
  return result;
}

id sub_29D4B0C08@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *&v186 = a4;
  v181 = a3;
  v188 = a1;
  v156 = a5;
  sub_29D4B4C4C(0);
  v8 = MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v149 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v153 = &v146 - v11;
  v166 = sub_29D5B33EC();
  v151 = *(v166 - 8);
  MEMORY[0x2A1C7C4A8](v166, v12);
  v150 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B2EB0(0, &qword_2A1A17388, MEMORY[0x29EDC3980], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v165 = &v146 - v16;
  v17 = sub_29D5B0C7C();
  MEMORY[0x2A1C7C4A8](v17 - 8, v18);
  v164 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_29D5B170C();
  v170 = *(v171 - 8);
  MEMORY[0x2A1C7C4A8](v171, v20);
  v169 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29D5B0E6C();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x2A1C7C4A8](v22, v24);
  v163 = &v146 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25, v27);
  v168 = &v146 - v28;
  v162 = sub_29D5B104C();
  v160 = *(v162 - 8);
  MEMORY[0x2A1C7C4A8](v162, v29);
  v161 = &v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_29D5B134C();
  v154 = *(v155 - 8);
  MEMORY[0x2A1C7C4A8](v155, v31);
  v167 = &v146 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_29D5B1AAC();
  v179 = *(v180 - 1);
  MEMORY[0x2A1C7C4A8](v180, v33);
  v178 = &v146 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_29D5B1D6C();
  v35 = *(v177 - 8);
  MEMORY[0x2A1C7C4A8](v177, v36);
  v175 = &v146 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B44A0(0);
  v39 = v38;
  v41 = MEMORY[0x2A1C7C4A8](v38, v40);
  v148 = &v146 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x2A1C7C4A8](v41, v43);
  v46 = &v146 - v45;
  MEMORY[0x2A1C7C4A8](v44, v47);
  v49 = &v146 - v48;
  sub_29D4B4CDC(a2, &v146 - v48, sub_29D4B44A0);
  v50 = *(v39 + 48);
  v51 = *(v39 + 64);
  v187 = v23;
  v52 = *(v23 + 16);
  v52(v46, v49, v22);
  v53 = &v46[*(v39 + 48)];
  v174 = v50;
  v52(v53, &v49[v50], v22);
  v147 = v39;
  v54 = *(v39 + 64);
  v183 = v46;
  v173 = v51;
  v185 = v22;
  v159 = v52;
  v158 = v23 + 16;
  v55 = (v52)(&v46[v54], &v49[v51], v22);
  v172 = MEMORY[0x29ED5F4B0](v55);
  v56 = *v188;
  v184 = *(v188 + 1);
  v57 = v175;
  v58 = v177;
  (*(v35 + 104))(v175, *MEMORY[0x29EDC4068], v177);
  v59 = v179;
  v60 = v178;
  v61 = v180;
  (*(v179 + 104))(v178, *MEMORY[0x29EDC3F10], v180);
  v62 = sub_29D5B143C();
  v152 = v56;
  v157 = sub_29D5B26FC();
  v176 = v63;

  (*(v59 + 8))(v60, v61);
  (*(v35 + 8))(v57, v58);
  v64 = type metadata accessor for SharedConceptFeedItemData(0);
  sub_29D4B2F14(&qword_2A17A3D68, type metadata accessor for SharedConceptFeedItemData, &unk_29D5B7630);
  v65 = v182;
  sub_29D5B0BEC();
  if (v65)
  {

    objc_autoreleasePoolPop(v172);
    sub_29D4B4540(v183, sub_29D4B44A0);
    v66 = *(v187 + 8);
    v67 = v185;
    v66(&v49[v173], v185);
    v66(&v49[v174], v67);
    return (v66)(v49, v67);
  }

  v181 = 0;
  v182 = v49;
  type metadata accessor for SharedConceptTileViewController(0);
  (*(v160 + 104))(v161, *MEMORY[0x29EDC36E0], v162);
  sub_29D5B143C();
  v69 = v167;
  sub_29D5B110C();
  v70 = v64;
  v71 = v188;
  v72 = v168;
  sub_29D5B0E1C();
  v159(v163, v72, v185);
  sub_29D5B0C6C();
  v73 = v169;
  sub_29D5B16EC();
  v74 = v170;
  v75 = v165;
  v76 = v73;
  v77 = v171;
  (*(v170 + 16))(v165, v76, v171);
  (*(v74 + 56))(v75, 0, 1, v77);
  sub_29D5B12BC();

  sub_29D5B124C();
  sub_29D4B4B08(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  v186 = xmmword_29D5B62A0;
  *(inited + 16) = xmmword_29D5B62A0;
  *(inited + 32) = sub_29D5B162C();
  *(inited + 40) = v79;
  v80 = sub_29D5B130C();
  sub_29D4F1774(inited);
  swift_setDeallocating();
  sub_29D4B4B58(inited + 32);
  v80(v190, 0);
  result = [objc_opt_self() categoryWithID_];
  if (result)
  {
    v81 = result;
    sub_29D5B111C();

    sub_29D5B123C();
    sub_29D4B2EB0(0, &qword_2A17A3D70, MEMORY[0x29EDC3828], MEMORY[0x29EDC9E90]);
    v82 = sub_29D5B12DC();
    v83 = *(v82 - 8);
    v84 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = v186;

    sub_29D5B12CC();
    sub_29D5960BC(v85);
    swift_setDeallocating();
    (*(v83 + 8))(v85 + v84, v82);
    swift_deallocClassInstance();
    sub_29D5B12FC();
    v86 = v187;
    v87 = v153;
    if (*(v71 + *(v70 + 40)))
    {
      v88 = *MEMORY[0x29EDC2B98];
      v89 = sub_29D5B34AC();
      v90 = v150;
      (*(*(v89 - 8) + 104))(v150, v88, v89);
      v91 = v151;
      v92 = v166;
      (*(v151 + 104))(v90, *MEMORY[0x29EDC2AD8], v166);
      v93 = sub_29D5B33DC();
      v95 = v94;
      (*(v91 + 8))(v90, v92);
      v96 = sub_29D5B130C();
      sub_29D59AD10(v189, v93, v95);

      v96(v190, 0);
      (*(v170 + 8))(v169, v171);
      v97 = *(v86 + 8);
      v98 = v185;
      v97(v168, v185);
      v99 = v156;
      v100 = v155;
      v101 = v154;
      v102 = v69;
      v103 = v182;
LABEL_15:
      v122 = v173;
      goto LABEL_16;
    }

    sub_29D5B0E1C();
    v104 = *(v86 + 56);
    v98 = v185;
    v104(v87, 0, 1, v185);
    v105 = v148;
    sub_29D4B4CDC(v183, v148, sub_29D4B44A0);
    v106 = v147;
    v188 = *(v147 + 48);
    v107 = *(v147 + 64);
    v108 = v87;
    v109 = v149;
    v180 = *(v187 + 32);
    v179 = v187 + 32;
    (v180)(v149, v105, v98);
    v184 = v104;
    v104(v109, 0, 1, v98);
    v110 = sub_29D58C560(v87, v109);
    sub_29D4B4540(v109, sub_29D4B4C4C);
    sub_29D4B4540(v108, sub_29D4B4C4C);
    v111 = *(v187 + 8);
    v187 += 8;
    *&v186 = v187 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v111((v105 + v107), v98);
    v112 = v188 + v105;
    v188 = v111;
    v111(v112, v98);
    if (v110)
    {
      v113 = *MEMORY[0x29EDC2B90];
      v114 = sub_29D5B34AC();
      v115 = v150;
      (*(*(v114 - 8) + 104))(v150, v113, v114);
      v116 = v151;
      v117 = v166;
      (*(v151 + 104))(v115, *MEMORY[0x29EDC2AD8], v166);
      v118 = sub_29D5B33DC();
      v120 = v119;
      (*(v116 + 8))(v115, v117);
      v102 = v167;
      v121 = sub_29D5B130C();
      sub_29D59AD10(v189, v118, v120);

      v121(v190, 0);
      (*(v170 + 8))(v169, v171);
      v97 = v188;
      v188(v168, v98);
      v99 = v156;
      v100 = v155;
      v101 = v154;
      v103 = v182;
      v122 = v173;
LABEL_16:
      (*(v101 + 32))(v99, v102, v100);
      objc_autoreleasePoolPop(v172);
      sub_29D4B4540(v183, sub_29D4B44A0);
      v97(&v103[v122], v98);
      v97(&v103[v174], v98);
      v97(v103, v98);
      return (*(v101 + 56))(v99, 0, 1, v100);
    }

    sub_29D5B0E1C();
    v123 = v184;
    v184(v108, 0, 1, v98);
    sub_29D4B4CDC(v183, v105, sub_29D4B44A0);
    v124 = *(v106 + 64);
    (v180)(v109, v105 + *(v106 + 48), v98);
    v123(v109, 0, 1, v98);
    LOBYTE(v123) = sub_29D58C560(v108, v109);
    sub_29D4B4540(v109, sub_29D4B4C4C);
    sub_29D4B4540(v108, sub_29D4B4C4C);
    v125 = v188;
    v188((v105 + v124), v98);
    v125(v105, v98);
    v126 = v166;
    if (v123)
    {
      v127 = *MEMORY[0x29EDC2BA0];
      v128 = sub_29D5B34AC();
      v129 = v150;
      (*(*(v128 - 8) + 104))(v150, v127, v128);
      v130 = v151;
      (*(v151 + 104))(v129, *MEMORY[0x29EDC2AD8], v126);
      v131 = sub_29D5B33DC();
      v133 = v132;
      (*(v130 + 8))(v129, v126);
      v102 = v167;
      v134 = sub_29D5B130C();
      sub_29D59AD10(v189, v131, v133);

      v134(v190, 0);
      (*(v170 + 8))(v169, v171);
      v97 = v188;
      v188(v168, v98);
    }

    else
    {
      sub_29D5B0E1C();
      v135 = v184;
      v184(v108, 0, 1, v98);
      sub_29D4B4CDC(v183, v105, sub_29D4B44A0);
      v136 = *(v106 + 48);
      (v180)(v109, v105 + *(v106 + 64), v98);
      v135(v109, 0, 1, v98);
      LOBYTE(v135) = sub_29D58C560(v108, v109);
      sub_29D4B4540(v109, sub_29D4B4C4C);
      sub_29D4B4540(v108, sub_29D4B4C4C);
      v97 = v188;
      v188((v105 + v136), v98);
      v97(v105, v98);
      if ((v135 & 1) == 0)
      {
        (*(v170 + 8))(v169, v171);
        v97(v168, v98);
        v99 = v156;
        v100 = v155;
        v101 = v154;
        v102 = v167;
        goto LABEL_14;
      }

      v137 = *MEMORY[0x29EDC2B88];
      v138 = sub_29D5B34AC();
      v139 = v150;
      (*(*(v138 - 8) + 104))(v150, v137, v138);
      v140 = v151;
      v141 = v166;
      (*(v151 + 104))(v139, *MEMORY[0x29EDC2AD8], v166);
      v142 = sub_29D5B33DC();
      v144 = v143;
      (*(v140 + 8))(v139, v141);
      v102 = v167;
      v145 = sub_29D5B130C();
      sub_29D59AD10(v189, v142, v144);

      v145(v190, 0);
      (*(v170 + 8))(v169, v171);
      v97(v168, v98);
    }

    v99 = v156;
    v100 = v155;
    v101 = v154;
LABEL_14:
    v103 = v182;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D4B2244@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D4B4BF8(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B371C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_29D5B36AC();
  v16 = v15;
  v17 = sub_29D5B370C();
  v18 = sub_29D5B427C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v38 = v6;
    v22 = v21;
    v42 = v21;
    *v20 = 136446466;
    v41 = sub_29D4B34E8(0);
    sub_29D4B3508(0, &qword_2A1A17C68, sub_29D4B34E8);
    v23 = sub_29D5B3E7C();
    v37 = v10;
    v25 = sub_29D501890(v23, v24, &v42);
    v40 = a2;
    v26 = v25;

    *(v20 + 4) = v26;
    *(v20 + 12) = 2082;
    v41 = v15;
    v27 = v15;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v28 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v29 = sub_29D5B3E7C();
    v31 = sub_29D501890(v29, v30, &v42);

    *(v20 + 14) = v31;
    a2 = v40;
    _os_log_impl(&dword_29D48C000, v17, v18, "[%{public}s] Unable to generate sharing snippets: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    v32 = v22;
    v6 = v38;
    MEMORY[0x29ED5FB80](v32, -1, -1);
    v33 = v20;
    v5 = v39;
    MEMORY[0x29ED5FB80](v33, -1, -1);

    (*(v11 + 8))(v14, v37);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  sub_29D4B3AC0(0);
  sub_29D4B3AF4();
  sub_29D5B3A3C();
  sub_29D4B2F14(&qword_2A17A3D60, sub_29D4B4BF8, MEMORY[0x29EDB8AC8]);
  v34 = sub_29D5B3B1C();
  result = (*(v6 + 8))(v9, v5);
  *a2 = v34;
  return result;
}

uint64_t sub_29D4B2600()
{

  v1 = OBJC_IVAR____TtC13HealthRecords30SharedConceptFeedItemGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D4B4540(v0 + OBJC_IVAR____TtC13HealthRecords30SharedConceptFeedItemGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);

  return swift_deallocClassInstance();
}

uint64_t sub_29D4B2710(uint64_t a1)
{
  result = sub_29D5B13EC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HealthRecordsGeneratorContext(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29D4B2808@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords30SharedConceptFeedItemGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D4B2884(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t *sub_29D4B2930(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v32 = *v4;
  v31 = sub_29D5B13CC();
  v29 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_29D5B13EC();
  v11 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  sub_29D4B4CDC(a1, v4 + OBJC_IVAR____TtC13HealthRecords30SharedConceptFeedItemGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);
  v28 = a2;
  *(v4 + OBJC_IVAR____TtC13HealthRecords30SharedConceptFeedItemGenerator_changes) = a2;
  *(v4 + OBJC_IVAR____TtC13HealthRecords30SharedConceptFeedItemGenerator_primaryHealthStore) = a3;

  v27 = a3;
  v25 = sub_29D5B143C();
  sub_29D4B2EB0(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v15 = sub_29D5B104C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_29D5B5E20;
  v20 = v19 + v18;
  v21 = *(v16 + 104);
  v21(v20, *MEMORY[0x29EDC3730], v15);
  v21(v20 + v17, *MEMORY[0x29EDC36E0], v15);
  (*(v29 + 104))(v10, *MEMORY[0x29EDC38A8], v31);
  sub_29D5B13DC();
  (*(v11 + 32))(v4 + OBJC_IVAR____TtC13HealthRecords30SharedConceptFeedItemGenerator_domain, v14, v30);
  v22 = v26;
  v23 = sub_29D4A98FC(v26, v28, v27);
  sub_29D4B4540(v22, type metadata accessor for HealthRecordsGeneratorContext);
  v4[2] = v23;
  return v4;
}

void sub_29D4B2CA4(uint64_t a1)
{
  if (!qword_2A1A16AB8)
  {
    sub_29D4B2D8C(255);
    sub_29D4B2E18(255);
    v1 = MEMORY[0x29EDB8A00];
    sub_29D4B2F14(&qword_2A1A16780, sub_29D4B2D8C, MEMORY[0x29EDB8A00]);
    sub_29D4B2F14(&qword_2A1A167A0, sub_29D4B2E18, v1);
    v2 = sub_29D5B38FC();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A16AB8);
    }
  }
}

void sub_29D4B2D8C(uint64_t a1)
{
  if (!qword_2A1A16778)
  {
    sub_29D4B4B08(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    v1 = sub_29D5B398C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16778);
    }
  }
}

void sub_29D4B2E18(uint64_t a1)
{
  if (!qword_2A1A16798)
  {
    sub_29D4B2EB0(255, &qword_2A1A16460, MEMORY[0x29EDC3948], MEMORY[0x29EDC9A40]);
    v1 = sub_29D5B398C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16798);
    }
  }
}

void sub_29D4B2EB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D4B2F14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D4B2F5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D5B148C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D4A9FE4(a1, v2 + v6, v9, v10, v11, a2);
}

void sub_29D4B302C(uint64_t a1)
{
  if (!qword_2A1A16898)
  {
    sub_29D4B2D8C(255);
    sub_29D4B2F14(&qword_2A1A16780, sub_29D4B2D8C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B393C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16898);
    }
  }
}

uint64_t sub_29D4B30C8(uint64_t a1)
{
  sub_29D4B37EC(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B1AAC();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x29EDC3F10], v7);
  sub_29D5B140C();
  sub_29D5B176C();
  sub_29D48F668(v19);
  (*(v8 + 8))(v11, v7);
  v12 = MEMORY[0x29EDC3A38];
  sub_29D4B4B08(0, &qword_2A1A16208, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9E90]);
  v13 = swift_allocObject();
  v14 = v20[0];
  v15 = v20[1];
  *(v13 + 16) = xmmword_29D5B62A0;
  *(v13 + 32) = v14;
  *(v13 + 48) = v15;
  *(v13 + 64) = v21;
  v18[1] = v13;
  sub_29D4B3868(v20, v19);
  sub_29D4B4B08(0, &qword_2A1A196E0, v12, MEMORY[0x29EDC9A40]);
  sub_29D5B3A2C();
  sub_29D4B2F14(&qword_2A1A165D8, sub_29D4B37EC, MEMORY[0x29EDB8AB8]);
  v16 = sub_29D5B3B1C();
  sub_29D4B38C4(v20);
  (*(v3 + 8))(v6, v2);
  return v16;
}

uint64_t sub_29D4B33D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = sub_29D5B168C();
  v6 = sub_29D4B3554(v4, v5, v3);
  v8 = v7;

  *a1 = v6;
  a1[1] = v8;
  return result;
}

unint64_t sub_29D4B343C()
{
  result = qword_2A17A3E80;
  if (!qword_2A17A3E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A3E80);
  }

  return result;
}

uint64_t sub_29D4B3490(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_29D5B4C7C() & 1;
  }
}

uint64_t sub_29D4B3508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D4B3554(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_29D5B1AAC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B1D6C();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  v16 = sub_29D5166E4(a1, a2);
  if (!v16)
  {
    return 0;
  }

  v19 = v16;
  v20 = v17;
  v27[0] = a3;
  v21 = v6;
  v22 = v18;
  v27[1] = sub_29D514404(v16, v17, v18);
  sub_29D4B37AC(v19, v20, v22);
  (*(v12 + 104))(v15, *MEMORY[0x29EDC4068], v11);
  v23 = v21;
  (*(v7 + 104))(v10, *MEMORY[0x29EDC3F10], v21);
  v24 = sub_29D5B143C();
  v25 = sub_29D5B26FC();

  (*(v7 + 8))(v10, v23);
  (*(v12 + 8))(v15, v11);
  return v25;
}

uint64_t sub_29D4B37AC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

void sub_29D4B37EC(uint64_t a1)
{
  if (!qword_2A1A165D0)
  {
    sub_29D4B4B08(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    v1 = sub_29D5B3A1C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A165D0);
    }
  }
}

void sub_29D4B3918(uint64_t a1)
{
  if (!qword_2A1A16C10)
  {
    sub_29D4B39E8(255);
    sub_29D4B4B08(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D4B2F14(&qword_2A1A17210, sub_29D4B39E8, MEMORY[0x29EDB8878]);
    v1 = sub_29D5B38DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16C10);
    }
  }
}

void sub_29D4B39E8(uint64_t a1)
{
  if (!qword_2A1A17208)
  {
    sub_29D4B3A8C(255);
    sub_29D4B2F14(&qword_2A1A167C0, sub_29D4B3A8C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B37AC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17208);
    }
  }
}

unint64_t sub_29D4B3AF4()
{
  result = qword_2A1A1A410;
  if (!qword_2A1A1A410)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A1A410);
  }

  return result;
}

void sub_29D4B3B58(uint64_t a1)
{
  if (!qword_2A1A16DA0)
  {
    sub_29D4B3918(255);
    v1 = MEMORY[0x29EDB89F8];
    sub_29D4B3C64(255, &qword_2A1A16788, MEMORY[0x29EDB89F8]);
    sub_29D4B2F14(&qword_2A1A16C18, sub_29D4B3918, MEMORY[0x29EDB8990]);
    sub_29D4B4A90(&qword_2A1A16790, &qword_2A1A16788, v1, MEMORY[0x29EDB8A00]);
    v2 = sub_29D5B387C();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A16DA0);
    }
  }
}

void sub_29D4B3C64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_29D4B4B08(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    v7 = v6;
    v8 = sub_29D4B3AF4();
    v9 = a3(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D4B3D00(uint64_t a1)
{
  if (!qword_2A1A17080)
  {
    sub_29D4B3B58(255);
    sub_29D4B2F14(&qword_2A1A16DA8, sub_29D4B3B58, MEMORY[0x29EDB8928]);
    v1 = sub_29D5B37FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17080);
    }
  }
}

void sub_29D4B3DFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_29D4B3AF4();
    v9 = a4(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D4B3E78(uint64_t a1)
{
  if (!qword_2A1A16CC0)
  {
    sub_29D4B3DC8(255);
    sub_29D4B3A8C(255);
    sub_29D4B2F14(&qword_2A1A161C0, sub_29D4B3DC8, MEMORY[0x29EDB8B20]);
    sub_29D4B2F14(&qword_2A1A167C0, sub_29D4B3A8C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B387C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16CC0);
    }
  }
}

void sub_29D4B3F64(uint64_t a1)
{
  if (!qword_2A1A16F40)
  {
    sub_29D4B4040(255);
    sub_29D4B2EB0(255, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData, MEMORY[0x29EDC9C68]);
    sub_29D4B2F14(&qword_2A1A16840, sub_29D4B4040, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16F40);
    }
  }
}

void sub_29D4B4074(uint64_t a1)
{
  if (!qword_2A1A16A18)
  {
    sub_29D4B415C(255);
    sub_29D4B3F64(255);
    v1 = MEMORY[0x29EDB8908];
    sub_29D4B2F14(&qword_2A1A16F38, sub_29D4B415C, MEMORY[0x29EDB8908]);
    sub_29D4B2F14(&qword_2A1A16F48, sub_29D4B3F64, v1);
    v2 = sub_29D5B38FC();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A16A18);
    }
  }
}

void sub_29D4B415C(uint64_t a1)
{
  if (!qword_2A1A16F30)
  {
    sub_29D4B4208(255);
    sub_29D4B4270(255);
    sub_29D4B2F14(&qword_2A1A16820, sub_29D4B4208, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16F30);
    }
  }
}

void sub_29D4B4270(uint64_t a1)
{
  if (!qword_2A1A19158)
  {
    sub_29D4B2EB0(255, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData, MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A19158);
    }
  }
}

void sub_29D4B4308(uint64_t a1)
{
  if (!qword_2A1A16C30)
  {
    sub_29D4B4074(255);
    sub_29D4B3AC0(255);
    sub_29D4B2F14(&qword_2A1A16A20, sub_29D4B4074, MEMORY[0x29EDB89A8]);
    v1 = sub_29D5B38DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16C30);
    }
  }
}

void sub_29D4B43B4(uint64_t a1)
{
  if (!qword_2A1A16DC0)
  {
    sub_29D4B4308(255);
    sub_29D4B3A8C(255);
    sub_29D4B2F14(&qword_2A1A16C38, sub_29D4B4308, MEMORY[0x29EDB8990]);
    sub_29D4B2F14(&qword_2A1A167C0, sub_29D4B3A8C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B387C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16DC0);
    }
  }
}

void sub_29D4B44A0(uint64_t a1)
{
  if (!qword_2A1A193E0)
  {
    sub_29D5B0E6C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1A193E0);
    }
  }
}

uint64_t sub_29D4B4540(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D4B45A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedConceptFeedItemData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4B46B4(uint64_t a1)
{
  sub_29D4B4B08(0, &qword_2A17A3D38, &type metadata for SharedConceptFormattedRecord, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D4B473C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_29D5B148C() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D52E048(a1, v2 + v6, v8, v9, a2);
}

uint64_t sub_29D4B47F8(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = *(sub_29D5B148C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_29D52E988(a1, v3, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_29D4B48B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 16);
  sub_29D4B4270(0);
  result = v6(a1, *(a1 + *(v7 + 48)));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

char *sub_29D4B491C@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = *a1;
  v6 = *(v2 + 32);
  v8[1] = *(v2 + 16);
  v8[2] = v6;
  result = sub_29D548320(sub_29D4B4C2C, v8, v5);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

double sub_29D4B497C(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t))
{
  v7 = *(sub_29D5B148C() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_29D4ADB0C(a1, a2, a3, v8);
}

uint64_t sub_29D4B4A3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1], a1[2]);
  *a2 = result;
  return result;
}

uint64_t sub_29D4B4A90(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D4B3C64(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D4B4B08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29D4B4BAC()
{
  result = qword_2A1A16330;
  if (!qword_2A1A16330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A16330);
  }

  return result;
}

uint64_t sub_29D4B4CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_29D4B4D5C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___accountStateChangeListener;
  v3 = *(v0 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___accountStateChangeListener);
  v4 = v3;
  if (v3 == 1)
  {
    v5 = objc_allocWithZone(sub_29D5B247C());
    v4 = sub_29D5B246C();
    v6 = *(v1 + v2);
    *(v1 + v2) = v4;
    v7 = v4;
    sub_29D490A5C(v6);
  }

  sub_29D490A6C(v3);
  return v4;
}

void *sub_29D4B4DF8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___healthRecordsSupportedListener;
  v3 = *(v0 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___healthRecordsSupportedListener);
  v4 = v3;
  if (v3 == 1)
  {
    v5 = objc_allocWithZone(sub_29D5B19DC());
    v4 = sub_29D5B19CC();
    v6 = *(v1 + v2);
    *(v1 + v2) = v4;
    v7 = v4;
    sub_29D490A5C(v6);
  }

  sub_29D490A6C(v3);
  return v4;
}

void *sub_29D4B4E90()
{
  v1 = v0;
  sub_29D4B73D4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B743C(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___accountStateChangePublisher;
  v15 = *(v0 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___accountStateChangePublisher);
  v16 = v15;
  if (v15 == 1)
  {
    v16 = sub_29D4B4D5C();
    if (v16)
    {
      sub_29D5B245C();

      sub_29D4B6F38(&qword_2A1A19728, sub_29D4B73D4, MEMORY[0x29EDB8AF8]);
      sub_29D5B3B7C();
      (*(v4 + 8))(v7, v3);
      sub_29D4B6F38(&qword_2A1A197C8, sub_29D4B743C, MEMORY[0x29EDB8908]);
      v16 = sub_29D5B3B1C();
      (*(v10 + 8))(v13, v9);
    }

    v17 = *(v1 + v14);
    *(v1 + v14) = v16;

    sub_29D4B73B4(v17);
  }

  sub_29D4B73C4(v15);
  return v16;
}

void *sub_29D4B50FC()
{
  v1 = v0;
  sub_29D4B7310(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B7378(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___healthRecordsSupportedPublisher;
  v15 = *(v0 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___healthRecordsSupportedPublisher);
  v16 = v15;
  if (v15 == 1)
  {
    v16 = sub_29D4B4DF8();
    if (v16)
    {
      sub_29D5B19BC();

      sub_29D4B6F38(&qword_2A1A19738, sub_29D4B7310, MEMORY[0x29EDB8AF8]);
      sub_29D5B3B7C();
      (*(v4 + 8))(v7, v3);
      sub_29D4B6F38(&qword_2A1A197D8, sub_29D4B7378, MEMORY[0x29EDB8908]);
      v16 = sub_29D5B3B1C();
      (*(v10 + 8))(v13, v9);
    }

    v17 = *(v1 + v14);
    *(v1 + v14) = v16;

    sub_29D4B73B4(v17);
  }

  sub_29D4B73C4(v15);
  return v16;
}

void *sub_29D4B5368(uint64_t a1)
{
  v2 = v1;
  v118 = *v2;
  sub_29D4B6CEC(0);
  v122 = *(v4 - 8);
  v123 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v121 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v110 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v111 = v9;
  v129 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B6D20(0);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v105 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_29D5B43DC();
  v104 = *(v106 - 8);
  MEMORY[0x2A1C7C4A8](v106, v13);
  v102 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B6DB8(0);
  v103 = v15;
  v101 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v100 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B6E4C(0);
  v109 = v18;
  v108 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18, v19);
  v107 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B6F80(0);
  v116 = v21;
  v114 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v22);
  v112 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B702C(0);
  v117 = v24;
  v115 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v25);
  v113 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29D5B371C();
  v119 = *(v27 - 8);
  v120 = v27;
  v29 = MEMORY[0x2A1C7C4A8](v27, v28);
  v97 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v29, v31);
  v98 = &v97 - v32;
  sub_29D4B7118(0);
  v34 = *(v33 - 1);
  v127 = v33;
  v128 = v34;
  MEMORY[0x2A1C7C4A8](v33, v35);
  v126 = &v97 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_29D5B13CC();
  v37 = *(v125 - 1);
  MEMORY[0x2A1C7C4A8](v125, v38);
  v40 = &v97 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_29D5B13EC();
  v41 = *(v124 - 8);
  MEMORY[0x2A1C7C4A8](v124, v42);
  v44 = &v97 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___accountStateChangeListener) = 1;
  *(v2 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___healthRecordsSupportedListener) = 1;
  *(v2 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___accountStateChangePublisher) = 1;
  *(v2 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___healthRecordsSupportedPublisher) = 1;
  *(v2 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline_observerToken) = 0;
  v130 = a1;
  sub_29D499E5C(a1, v2 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline_context);
  sub_29D5B143C();
  sub_29D4B6D54(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v45 = sub_29D5B104C();
  v46 = *(v45 - 8);
  v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v48 = swift_allocObject();
  v99 = xmmword_29D5B62A0;
  *(v48 + 16) = xmmword_29D5B62A0;
  (*(v46 + 104))(v48 + v47, *MEMORY[0x29EDC36E8], v45);
  (*(v37 + 104))(v40, *MEMORY[0x29EDC3898], v125);
  sub_29D5B13DC();
  v49 = v44;
  v50 = v2;
  (*(v41 + 32))(v2 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline_domain, v49, v124);
  v51 = v130;
  sub_29D499B38();
  v52 = v126;
  sub_29D5B3A3C();
  sub_29D4B6F38(&qword_2A1A19768, sub_29D4B7118, MEMORY[0x29EDB8AC8]);
  v53 = v127;
  v54 = sub_29D5B3B1C();
  (v128[1])(v52, v53);
  v2[2] = v54;
  sub_29D5B141C();
  if ((sub_29D5B17EC() & 1) == 0)
  {
    v61 = v129;
    v62 = sub_29D4B4E90();
    if (v62)
    {
      v63 = v62;
      v64 = sub_29D4B50FC();
      if (v64)
      {
        v65 = v64;
        v125 = MEMORY[0x29EDC9E90];
        sub_29D4B6D54(0, &qword_2A1A195C8, sub_29D499998, MEMORY[0x29EDC9E90]);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_29D5B5E20;
        *(v66 + 32) = v63;
        *(v66 + 40) = v65;
        v127 = v65;

        v67 = sub_29D5B146C();
        v128 = v50;
        v68 = v67;
        v126 = v67;
        v131 = v66;
        sub_29D499998();
        sub_29D4B7180(0);
        sub_29D4B6F38(&qword_2A1A19778, sub_29D499998, MEMORY[0x29EDB8A00]);
        sub_29D4B6F38(&qword_2A1A196B8, sub_29D4B7180, MEMORY[0x29EDC9A70]);
        v69 = v100;
        sub_29D5B394C();
        v70 = v102;
        sub_29D5B43CC();
        v131 = v68;
        v71 = sub_29D5B43BC();
        v72 = v105;
        (*(*(v71 - 8) + 56))(v105, 1, 1, v71);
        sub_29D4999F8();
        sub_29D4B6F38(&qword_2A1A19788, sub_29D4B6DB8, MEMORY[0x29EDB89D8]);
        sub_29D4B6F38(&qword_2A1A19620, sub_29D4999F8, MEMORY[0x29EDCA280]);
        v73 = v107;
        v74 = v103;
        sub_29D5B3C2C();
        sub_29D4B71B4(v72, sub_29D4B6D20);
        (*(v104 + 8))(v70, v106);
        (*(v101 + 8))(v69, v74);
        v75 = v130;
        v76 = v61;
        sub_29D499E5C(v130, v61);
        v77 = (*(v110 + 80) + 16) & ~*(v110 + 80);
        v78 = (v111 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
        v79 = swift_allocObject();
        sub_29D499F90(v61, v79 + v77);
        *(v79 + v78) = v118;
        sub_29D4B6F38(&qword_2A1A16920, sub_29D4B6E4C, MEMORY[0x29EDB89B8]);
        v80 = v112;
        v81 = v109;
        sub_29D5B3B7C();

        (*(v108 + 8))(v73, v81);
        sub_29D4B6D54(0, &qword_2A1A195D8, sub_29D499B38, v125);
        v82 = swift_allocObject();
        *(v82 + 16) = v99;
        sub_29D499E5C(v75, v76);
        v83 = type metadata accessor for ClinicalSharingGenerator(0);
        swift_allocObject();
        v84 = sub_29D53B4C4(v76);
        *(v82 + 56) = v83;
        *(v82 + 64) = sub_29D4B6F38(qword_2A1A187E8, type metadata accessor for ClinicalSharingGenerator, &unk_29D5B9DBC);
        *(v82 + 32) = v84;
        sub_29D4B6F38(&qword_2A1A16E20, sub_29D4B6F80, MEMORY[0x29EDB8908]);
        v85 = v113;
        v86 = v116;
        sub_29D5B3C0C();

        (*(v114 + 8))(v80, v86);
        sub_29D4B6F38(&qword_2A1A17108, sub_29D4B702C, MEMORY[0x29EDB88B0]);
        v87 = v117;
        v88 = sub_29D5B3B1C();
        (*(v115 + 8))(v85, v87);
        v128[2] = v88;

        v89 = sub_29D4B6750();

        v50 = v128;
        sub_29D4B71B4(v75, type metadata accessor for HealthRecordsGeneratorContext);
        *(v50 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline_observerToken) = v89;
        goto LABEL_6;
      }

      v90 = v97;
      sub_29D5B36CC();
      v91 = sub_29D5B370C();
      v94 = sub_29D5B429C();
      if (os_log_type_enabled(v91, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&dword_29D48C000, v91, v94, "healthRecordsSupportedPublisher was nil", v95, 2u);
        MEMORY[0x29ED5FB80](v95, -1, -1);
      }
    }

    else
    {
      v90 = v98;
      sub_29D5B36CC();
      v91 = sub_29D5B370C();
      v92 = sub_29D5B429C();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_29D48C000, v91, v92, "accountStateChangePublisher was nil", v93, 2u);
        MEMORY[0x29ED5FB80](v93, -1, -1);
      }
    }

    sub_29D4B71B4(v51, type metadata accessor for HealthRecordsGeneratorContext);
    (*(v119 + 8))(v90, v120);
    return v50;
  }

  v55 = v129;
  sub_29D499E5C(v51, v129);
  v56 = type metadata accessor for ClinicalSharingGenerator(0);
  swift_allocObject();
  v57 = sub_29D53B4C4(v55);
  v132 = v56;
  v133 = sub_29D4B6F38(qword_2A1A187E8, type metadata accessor for ClinicalSharingGenerator, &unk_29D5B9DBC);
  v131 = v57;
  v58 = v121;
  sub_29D5B3A2C();
  sub_29D4B6F38(&qword_2A1A165F8, sub_29D4B6CEC, MEMORY[0x29EDB8AB8]);
  v59 = v123;
  v60 = sub_29D5B3B1C();
  sub_29D4B71B4(v51, type metadata accessor for HealthRecordsGeneratorContext);
  (*(v122 + 8))(v58, v59);
  v2[2] = v60;
LABEL_6:

  return v50;
}

uint64_t sub_29D4B6464@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for HealthRecordsGeneratorContext(0);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B371C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  v15 = sub_29D5B370C();
  v16 = sub_29D5B426C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v34 = v19;
    v35 = a2;
    *v18 = 136446466;
    swift_getMetatypeMetadata();
    v20 = sub_29D5B3E7C();
    v22 = sub_29D501890(v20, v21, &v34);
    v32 = v10;
    v23 = a1;
    v24 = v22;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2082;
    v35 = type metadata accessor for ClinicalSharingGenerator(0);
    sub_29D4B72C0();
    v25 = sub_29D5B3E7C();
    v27 = sub_29D501890(v25, v26, &v34);
    a1 = v23;

    *(v18 + 14) = v27;
    _os_log_impl(&dword_29D48C000, v15, v16, "[%{public}s]: Emitting %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v19, -1, -1);
    v28 = v18;
    a3 = v33;
    MEMORY[0x29ED5FB80](v28, -1, -1);

    (*(v11 + 8))(v14, v32);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  sub_29D499E5C(a1, v9);
  v29 = type metadata accessor for ClinicalSharingGenerator(0);
  swift_allocObject();
  v30 = sub_29D53B4C4(v9);
  a3[3] = v29;
  result = sub_29D4B6F38(qword_2A1A187E8, type metadata accessor for ClinicalSharingGenerator, &unk_29D5B9DBC);
  a3[4] = result;
  *a3 = v30;
  return result;
}

uint64_t sub_29D4B6750()
{
  v1 = sub_29D5B371C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D4B4D5C();
  if (v6)
  {
    v7 = v6;
    [*(v0 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline_context + *(type metadata accessor for HealthRecordsGeneratorContext(0) + 20)) addAccountStateChangeListener_];
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    sub_29D5B1EEC();
    swift_allocObject();
    return sub_29D5B1ECC();
  }

  else
  {
    sub_29D5B36CC();
    v11 = sub_29D5B370C();
    v12 = sub_29D5B429C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_29D48C000, v11, v12, "accountStateChangeListener was nil", v13, 2u);
      MEMORY[0x29ED5FB80](v13, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }
}

uint64_t sub_29D4B6940(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    [*(result + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline_context + *(type metadata accessor for HealthRecordsGeneratorContext(0) + 20)) removeAccountStateChangeListener_];
  }

  return result;
}

uint64_t sub_29D4B69CC()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline_observerToken))
  {

    sub_29D5B1EDC();
  }

  v2 = OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline_domain;
  v3 = sub_29D5B13EC();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_29D4B71B4(v1 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline_context, type metadata accessor for HealthRecordsGeneratorContext);
  sub_29D490A5C(*(v1 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___accountStateChangeListener));
  sub_29D490A5C(*(v1 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___healthRecordsSupportedListener));
  sub_29D4B73B4(*(v1 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___accountStateChangePublisher));
  sub_29D4B73B4(*(v1 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___healthRecordsSupportedPublisher));

  return v1;
}

uint64_t sub_29D4B6AD0()
{
  sub_29D4B69CC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClinicalSharingGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A17C28;
  if (!qword_2A1A17C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D4B6B7C(uint64_t a1)
{
  result = sub_29D5B13EC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HealthRecordsGeneratorContext(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29D4B6C70@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D4B6D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D4B6DB8(uint64_t a1)
{
  if (!qword_2A1A19780)
  {
    sub_29D499998();
    sub_29D4B6F38(&qword_2A1A19778, sub_29D499998, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B393C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A19780);
    }
  }
}

void sub_29D4B6E4C(uint64_t a1)
{
  if (!qword_2A1A16918)
  {
    sub_29D4B6DB8(255);
    sub_29D4999F8();
    sub_29D4B6F38(&qword_2A1A19788, sub_29D4B6DB8, MEMORY[0x29EDB89D8]);
    sub_29D4B6F38(&qword_2A1A19620, sub_29D4999F8, MEMORY[0x29EDCA280]);
    v1 = sub_29D5B390C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16918);
    }
  }
}

uint64_t sub_29D4B6F38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D4B6F80(uint64_t a1)
{
  if (!qword_2A1A16E18)
  {
    sub_29D4B6E4C(255);
    sub_29D499B38();
    sub_29D4B6F38(&qword_2A1A16920, sub_29D4B6E4C, MEMORY[0x29EDB89B8]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16E18);
    }
  }
}

void sub_29D4B702C(uint64_t a1)
{
  if (!qword_2A1A17100)
  {
    sub_29D499C88(255);
    sub_29D4B6F80(255);
    sub_29D4B6F38(&qword_2A1A197A8, sub_29D499C88, MEMORY[0x29EDB89C0]);
    sub_29D4B6F38(&qword_2A1A16E20, sub_29D4B6F80, MEMORY[0x29EDB8908]);
    v1 = sub_29D5B37DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17100);
    }
  }
}

void sub_29D4B7118(uint64_t a1)
{
  if (!qword_2A1A19760)
  {
    sub_29D499B38();
    v1 = sub_29D5B3A4C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A19760);
    }
  }
}

uint64_t sub_29D4B71B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D4B7214@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D4B6464(v1 + v4, v5, a1);
}

unint64_t sub_29D4B72C0()
{
  result = qword_2A1A18708[0];
  if (!qword_2A1A18708[0])
  {
    type metadata accessor for ClinicalSharingGenerator(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_2A1A18708);
  }

  return result;
}

uint64_t sub_29D4B73B4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_29D4B73C4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_29D4B7478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D4B6F38(a4, a5, MEMORY[0x29EDB8AF8]);
    v8 = sub_29D5B384C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D4B7518(char a1)
{
  v3 = sub_29D5B371C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NewRecordsLabFeedItemViewController(0);
  v13.receiver = v1;
  v13.super_class = v8;
  objc_msgSendSuper2(&v13, sel_viewDidAppear_, a1 & 1);
  sub_29D5B36CC();
  v9 = sub_29D5B370C();
  v10 = sub_29D5B429C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_29D48C000, v9, v10, "New Lab Records tile did appear", v11, 2u);
    MEMORY[0x29ED5FB80](v11, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  sub_29D5B1E5C();
  v12 = sub_29D5B1E4C();
  sub_29D5B1E2C();
}

void sub_29D4B76A8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_29D4B7518(a3);
}

uint64_t sub_29D4B76FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = qword_2A17A3D80;
  swift_beginAccess();
  sub_29D4B9790(v1 + v4, &v9, &unk_2A17A4DB0, &unk_2A17A4570, MEMORY[0x29EDC4218]);
  if (v10)
  {
    return sub_29D497868(&v9, a1);
  }

  sub_29D4B9414(&v9);
  v6 = sub_29D5B21EC();
  v7 = sub_29D5B21DC();
  v8 = MEMORY[0x29EDC4178];
  a1[3] = v6;
  a1[4] = v8;
  *a1 = v7;
  sub_29D48F564(a1, &v9);
  swift_beginAccess();
  sub_29D4B9800(&v9, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_29D4B77E4(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v31 = sub_29D5B200C();
  v3 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B9488(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for NewLabsFeedItemData(0);
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D4B9488(0, &qword_2A17A3DA0, type metadata accessor for NewLabsFeedItemData);
  MEMORY[0x2A1C7C4A8](v16 - 8, v17);
  v19 = &v30 - v18;
  sub_29D4B96B0(a1, &v30 - v18, &qword_2A17A3DA0, type metadata accessor for NewLabsFeedItemData);
  v20 = 0;
  v21 = 0;
  if ((*(v12 + 48))(v19, 1, v11) != 1)
  {
    sub_29D4B94E4(v19, v15);
    v20 = *v15;
    v21 = *(v15 + *(v11 + 24));

    sub_29D4B9548(v15, type metadata accessor for NewLabsFeedItemData);
  }

  v22 = v33;
  sub_29D4A16E8(v20, v21);

  v23 = sub_29D5B0EFC();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  (*(v3 + 8))(v6, v31);
  sub_29D4B95EC(v10, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  v24 = sub_29D5B3E1C();

  [v32 setTitle_];

  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = (v22 + qword_2A17A3C38);
  v27 = *(v22 + qword_2A17A3C38);
  v28 = *(v22 + qword_2A17A3C38 + 8);
  *v26 = sub_29D4B94DC;
  v26[1] = v25;

  sub_29D490438(v27, v28);
}

void *sub_29D4B7BE0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    sub_29D5B1E5C();
    v3 = sub_29D5B1E4C();
    sub_29D5B1E2C();

    memset(v4, 0, sizeof(v4));
    sub_29D4B875C(v4);

    return sub_29D4B9548(v4, sub_29D4A63E4);
  }

  return result;
}

uint64_t sub_29D4B7C90@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NewLabsFeedItemData(0);
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B9488(0, &qword_2A17A3DA0, type metadata accessor for NewLabsFeedItemData);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v28 - v10;
  sub_29D4B9488(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = &v28 - v14;
  v16 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  sub_29D4B96B0(v1 + v16, v11, &qword_2A17A3DA0, type metadata accessor for NewLabsFeedItemData);
  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_29D4B95EC(v11, &qword_2A17A3DA0, type metadata accessor for NewLabsFeedItemData);
    v17 = sub_29D5B0E6C();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  }

  else
  {
    sub_29D4B9648(v11, v7, type metadata accessor for NewLabsFeedItemData);
    sub_29D4B95EC(v11, &qword_2A17A3DA0, type metadata accessor for NewLabsFeedItemData);
    sub_29D4B96B0(&v7[*(v3 + 20)], v15, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
    sub_29D4B9548(v7, type metadata accessor for NewLabsFeedItemData);
    v18 = sub_29D5B0E6C();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v15, 1, v18) != 1)
    {
      sub_29D4B971C(0);
      v25 = *(v24 + 48);
      (*(v19 + 32))(a1, v15, v18);
      v26 = *MEMORY[0x29EDC2188];
      v27 = sub_29D5B2E8C();
      (*(*(v27 - 8) + 104))(a1 + v25, v26, v27);
      v20 = MEMORY[0x29EDC2190];
      goto LABEL_5;
    }
  }

  v20 = MEMORY[0x29EDC2198];
LABEL_5:
  v21 = *v20;
  v22 = sub_29D5B2E9C();
  return (*(*(v22 - 8) + 104))(a1, v21, v22);
}

void sub_29D4B8090()
{
  v1 = v0;
  v2 = sub_29D5B371C();
  v30 = *(v2 - 8);
  v31 = v2;
  v4 = MEMORY[0x2A1C7C4A8](v2, v3);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v28 - v7;
  v9 = sub_29D5B2C2C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x70);
  swift_beginAccess();
  sub_29D4B9790(v1 + v14, v32, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
  v15 = v33;
  if (v33)
  {
    v16 = sub_29D499EC0(v32, v33);
    v17 = *(v15 - 8);
    MEMORY[0x2A1C7C4A8](v16, v16);
    v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19);
    sub_29D5B315C();
    (*(v17 + 8))(v19, v15);
    if ((*(v10 + 88))(v13, v9) == *MEMORY[0x29EDC1D20])
    {
      sub_29D48F668(v32);
      sub_29D5B36DC();
      v20 = sub_29D5B370C();
      v21 = sub_29D5B429C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_29D48C000, v20, v21, "User dismissed NewLabRecords tile", v22, 2u);
        MEMORY[0x29ED5FB80](v22, -1, -1);
      }

      (*(v30 + 8))(v8, v31);
      v32[0] = v1;
      type metadata accessor for NewRecordsLabFeedItemViewController(0);
      sub_29D4B95A8(&qword_2A17A3DA8, &unk_29D5B6A58);
      sub_29D5B212C();
      sub_29D5B1E5C();
      v23 = sub_29D5B1E4C();
      sub_29D5B1E2C();
    }

    else
    {
      (*(v10 + 8))(v13, v9);
      sub_29D48F668(v32);
      v24 = v29;
      sub_29D5B36DC();
      v25 = sub_29D5B370C();
      v26 = sub_29D5B427C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_29D48C000, v25, v26, "didTapDismis invoked for tile without a dismiss button!", v27, 2u);
        MEMORY[0x29ED5FB80](v27, -1, -1);
      }

      (*(v30 + 8))(v24, v31);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D4B8514()
{
  v1 = sub_29D5B2C2C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x70);
  swift_beginAccess();
  result = sub_29D4B9790(v0 + v6, v16, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
  v8 = v17;
  if (v17)
  {
    v9 = sub_29D499EC0(v16, v17);
    v10 = *(v8 - 8);
    MEMORY[0x2A1C7C4A8](v9, v9);
    v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v12);
    sub_29D5B315C();
    (*(v10 + 8))(v12, v8);
    v13 = (*(v2 + 88))(v5, v1);
    v14 = *MEMORY[0x29EDC1D20];
    if (v13 != *MEMORY[0x29EDC1D20])
    {
      (*(v2 + 8))(v5, v1);
    }

    sub_29D48F668(v16);
    return v13 == v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D4B875C(uint64_t a1)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_29D5B371C();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B1BCC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B1CBC();
  v11 = sub_29D5B1C8C();
  v12 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x70);
  swift_beginAccess();
  result = sub_29D4B9790(v2 + v12, v38, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
  v14 = v39;
  if (v39)
  {
    v15 = sub_29D499EC0(v38, v39);
    v16 = *(v14 - 8);
    MEMORY[0x2A1C7C4A8](v15, v15);
    v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v18);
    v19 = sub_29D5B314C();
    (*(v16 + 8))(v18, v14);
    v20 = sub_29D5B1C9C();

    sub_29D48F668(v38);
    sub_29D4B76FC(v38);
    sub_29D499EC0(v38, v39);
    v21 = *MEMORY[0x29EDC4068];
    v22 = sub_29D5B1D6C();
    (*(*(v22 - 8) + 104))(v10, v21, v22);
    (*(v7 + 104))(v10, *MEMORY[0x29EDC3F80], v6);
    v23 = sub_29D5B252C();
    (*(v7 + 8))(v10, v6);
    if (v23)
    {
      sub_29D48F668(v38);
      sub_29D4B9648(v37, v38, sub_29D4A63E4);
      v24 = v39;
      if (v39)
      {
        v25 = sub_29D499EC0(v38, v39);
        v26 = *(v24 - 8);
        MEMORY[0x2A1C7C4A8](v25, v25);
        v28 = &v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v26 + 16))(v28);
        v29 = sub_29D5B4C6C();
        (*(v26 + 8))(v28, v24);
        sub_29D48F668(v38);
      }

      else
      {
        v29 = 0;
      }

      [v2 showViewController:v23 sender:{v29, v34, v35}];

      return swift_unknownObjectRelease();
    }

    else
    {
      sub_29D48F668(v38);
      v30 = v36;
      sub_29D5B36DC();
      v31 = sub_29D5B370C();
      v32 = sub_29D5B427C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_29D48C000, v31, v32, "Error tapping on NewLabRecords feed item, can't load labs view controller", v33, 2u);
        MEMORY[0x29ED5FB80](v33, -1, -1);
      }

      return (*(v34 + 8))(v30, v35);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *sub_29D4B8C94(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_29D5B3E5C();
    v6 = &a1[qword_2A17A3D80];
    *v6 = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 4) = 0;
    v7 = qword_2A17ABED8;
    v8 = *MEMORY[0x29EDC1E68];
    v9 = sub_29D5B2CAC();
    (*(*(v9 - 8) + 104))(&a1[v7], v8, v9);
    a1[qword_2A17ABEE0] = 1;
    v10 = a4;
    v11 = sub_29D5B3E1C();
  }

  else
  {
    v12 = &a1[qword_2A17A3D80];
    *v12 = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 4) = 0;
    v13 = qword_2A17ABED8;
    v14 = *MEMORY[0x29EDC1E68];
    v15 = sub_29D5B2CAC();
    (*(*(v15 - 8) + 104))(&a1[v13], v14, v15);
    a1[qword_2A17ABEE0] = 1;
    v16 = a4;
    v11 = 0;
  }

  v19.receiver = a1;
  v19.super_class = type metadata accessor for NewRecordsLabFeedItemViewController(0);
  v17 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, v11, a4);

  return v17;
}

_BYTE *sub_29D4B8E30(_BYTE *a1, uint64_t a2, void *a3)
{
  v5 = &a1[qword_2A17A3D80];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = qword_2A17ABED8;
  v7 = *MEMORY[0x29EDC1E68];
  v8 = sub_29D5B2CAC();
  (*(*(v8 - 8) + 104))(&a1[v6], v7, v8);
  a1[qword_2A17ABEE0] = 1;
  v12.receiver = a1;
  v12.super_class = type metadata accessor for NewRecordsLabFeedItemViewController(0);
  v9 = a3;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, v9);

  if (v10)
  {
  }

  return v10;
}

uint64_t sub_29D4B8F24()
{
  sub_29D4B9414(v0 + qword_2A17A3D80);
  v1 = qword_2A17ABED8;
  v2 = sub_29D5B2CAC();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_29D4B8F9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NewRecordsLabFeedItemViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D4B8FD4(uint64_t a1)
{
  sub_29D4B9414(a1 + qword_2A17A3D80);
  v2 = qword_2A17ABED8;
  v3 = sub_29D5B2CAC();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t type metadata accessor for NewRecordsLabFeedItemViewController(uint64_t a1)
{
  result = qword_2A17A3D88;
  if (!qword_2A17A3D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D4B909C(uint64_t a1)
{
  result = sub_29D5B2CAC();
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

uint64_t sub_29D4B9150@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_2A17ABED8;
  v5 = sub_29D5B2CAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D4B91F4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC41B8];
  v3 = sub_29D5B23CC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D4B9268()
{
  v1 = *v0;
  v2 = *((*MEMORY[0x29EDCA1E8] & **v0) + 0x70);
  swift_beginAccess();
  result = sub_29D4B9790(v1 + v2, v11, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
  v4 = v12;
  if (v12)
  {
    v5 = sub_29D499EC0(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x2A1C7C4A8](v5, v5);
    v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v6 + 16))(v8);
    v9 = sub_29D5B314C();
    (*(v6 + 8))(v8, v4);
    sub_29D48F668(v11);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D4B9414(uint64_t a1)
{
  sub_29D4A02A4(0, &unk_2A17A4DB0, &unk_2A17A4570, MEMORY[0x29EDC4218]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D4B9488(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D4B94E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewLabsFeedItemData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4B9548(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D4B95A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NewRecordsLabFeedItemViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D4B95EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D4B9488(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D4B9648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4B96B0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D4B9488(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_29D4B971C(uint64_t a1)
{
  if (!qword_2A17A3DB0)
  {
    sub_29D5B0E6C();
    sub_29D5B2E8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A3DB0);
    }
  }
}

uint64_t sub_29D4B9790(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_29D4A02A4(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_29D4B9800(uint64_t a1, uint64_t a2)
{
  sub_29D4A02A4(0, &unk_2A17A4DB0, &unk_2A17A4570, MEMORY[0x29EDC4218]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_29D4B987C(uint64_t a1)
{
  v136 = *v1;
  v3 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v4 = *(v3 - 8);
  v142 = v3 - 8;
  v134 = v4;
  v132 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v130 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B6D20(0);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v126 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_29D5B43DC();
  v127 = *(v129 - 8);
  MEMORY[0x2A1C7C4A8](v129, v10);
  v124 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4BB684(0);
  v131 = v12;
  v133 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v125 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4BB930(0);
  v137 = v15;
  v139 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v128 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4BB9DC(0);
  v138 = v18;
  v140 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18, v19);
  v135 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B6DB8(0);
  v122 = v21;
  v123 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v22);
  v121 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4BB770(0);
  v145 = v24;
  v141 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v25);
  v144 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_29D5B446C();
  v147 = *(v115 - 8);
  MEMORY[0x2A1C7C4A8](v115, v27);
  v113 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499DC0(0);
  v116 = v29;
  v117 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29, v30);
  v114 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B73D4(0);
  v109 = v32;
  v118 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32, v33);
  v107 = &v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B743C(0);
  v110 = v35;
  v112 = *(v35 - 1);
  MEMORY[0x2A1C7C4A8](v35, v36);
  v108 = &v104 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_29D5B13CC();
  v38 = *(v106 - 8);
  MEMORY[0x2A1C7C4A8](v106, v39);
  v41 = &v104 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_29D5B13EC();
  v42 = *(v105 - 8);
  MEMORY[0x2A1C7C4A8](v105, v43);
  v45 = &v104 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_observerToken) = 0;
  sub_29D5B140C();
  sub_29D499EC0(v148, v148[3]);
  sub_29D5B136C();
  sub_29D5B28DC();
  swift_allocObject();
  v146 = sub_29D5B28AC();
  sub_29D48F668(v148);
  v119 = a1;
  sub_29D499E5C(a1, v1 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_context);
  sub_29D5B143C();
  v143 = MEMORY[0x29EDC9E90];
  sub_29D4BBB78(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v46 = sub_29D5B104C();
  v47 = *(v46 - 8);
  v48 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v49 = swift_allocObject();
  v120 = xmmword_29D5B62A0;
  *(v49 + 16) = xmmword_29D5B62A0;
  (*(v47 + 104))(v49 + v48, *MEMORY[0x29EDC3758], v46);
  (*(v38 + 104))(v41, *MEMORY[0x29EDC3898], v106);
  sub_29D5B13DC();
  v50 = v1;
  (*(v42 + 32))(v1 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_domain, v45, v105);
  v51 = objc_allocWithZone(sub_29D5B247C());
  v52 = sub_29D5B246C();
  *(v1 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_accountStateChangeListener) = v52;
  v53 = v52;
  v54 = v107;
  sub_29D5B245C();

  sub_29D4BB8E8(&qword_2A1A19728, sub_29D4B73D4, MEMORY[0x29EDB8AF8]);
  v55 = v108;
  v56 = v109;
  sub_29D5B3B7C();
  (*(v118 + 8))(v54, v56);
  v57 = MEMORY[0x29EDB8908];
  v118 = MEMORY[0x29EDB8908];
  sub_29D4BB8E8(&qword_2A1A197C8, sub_29D4B743C, MEMORY[0x29EDB8908]);
  v58 = v110;
  v59 = sub_29D5B3B1C();
  (*(v112 + 8))(v55, v58);
  *(v50 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_accountStateChangePublisher) = v59;
  v60 = objc_opt_self();
  v61 = [v60 defaultCenter];
  v62 = sub_29D5B443C();
  v63 = v113;
  sub_29D5B447C();

  v112 = sub_29D4BB8E8(&qword_2A1A19608, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);

  v64 = v114;
  v65 = v115;
  sub_29D5B3B7C();

  v66 = v147[1];
  ++v147;
  v110 = v66;
  v66(v63, v65);
  sub_29D4BB8E8(&qword_2A1A197B8, sub_29D499DC0, v57);
  v67 = v116;
  v68 = sub_29D5B3B1C();
  v69 = *(v117 + 8);
  v69(v64, v67);
  *(v50 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_accountStatusSummaryTileDidDismissPublisher) = v68;
  v70 = [v60 defaultCenter];
  v71 = sub_29D5B444C();
  sub_29D5B447C();

  sub_29D5B3B7C();

  v110(v63, v65);
  v72 = sub_29D5B3B1C();
  v69(v64, v67);
  *(v50 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_accountStatusSummaryTileShouldResetPublisher) = v72;
  sub_29D4BBB78(0, &qword_2A1A195C8, sub_29D499998, v143);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_29D5B6320;
  v74 = *(v50 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_accountStateChangePublisher);
  v75 = *(v50 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_accountStatusSummaryTileDidDismissPublisher);
  v111 = v50;
  *(v73 + 32) = v74;
  *(v73 + 40) = v75;
  *(v73 + 48) = v72;
  v148[0] = v73;
  sub_29D499998();
  sub_29D4B7180(0);
  sub_29D4BB8E8(&qword_2A1A19778, sub_29D499998, MEMORY[0x29EDB8A00]);
  sub_29D4BB8E8(&qword_2A1A196B8, sub_29D4B7180, MEMORY[0x29EDC9A70]);

  v76 = v121;
  sub_29D5B394C();
  sub_29D4BB8E8(&qword_2A1A19788, sub_29D4B6DB8, MEMORY[0x29EDB89D8]);
  v77 = v122;
  sub_29D5B3C0C();
  (*(v123 + 8))(v76, v77);
  v78 = v119;
  v79 = sub_29D5B146C();
  v147 = v79;
  v80 = v124;
  sub_29D5B43CC();
  v148[0] = v79;
  v81 = sub_29D5B43BC();
  v82 = v126;
  (*(*(v81 - 8) + 56))(v126, 1, 1, v81);
  sub_29D4999F8();
  v83 = MEMORY[0x29EDB88B0];
  sub_29D4BB8E8(&qword_2A1A197E8, sub_29D4BB770, MEMORY[0x29EDB88B0]);
  sub_29D4BB8E8(&qword_2A1A19620, sub_29D4999F8, MEMORY[0x29EDCA280]);
  v84 = v125;
  sub_29D5B3C2C();
  sub_29D4BBCDC(v82, sub_29D4B6D20);
  (*(v127 + 8))(v80, v129);
  v85 = v130;
  sub_29D499E5C(v78, v130);
  v86 = (*(v134 + 80) + 16) & ~*(v134 + 80);
  v87 = (v132 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v89 = v88 + v86;
  v90 = v85;
  sub_29D499F90(v85, v89);
  v91 = v146;
  *(v88 + v87) = v146;
  *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v136;
  sub_29D499B38();
  sub_29D4BB8E8(&qword_2A1A16940, sub_29D4BB684, MEMORY[0x29EDB89B8]);

  v92 = v128;
  v93 = v131;
  sub_29D5B3B7C();

  (*(v133 + 8))(v84, v93);
  sub_29D4BBB78(0, &qword_2A1A195D8, sub_29D499B38, v143);
  v94 = swift_allocObject();
  *(v94 + 16) = v120;
  sub_29D499E5C(v78, v90);
  v95 = type metadata accessor for AccountStatusSummaryTileGenerator(0);
  swift_allocObject();

  v96 = sub_29D4CEF98(v90, v91);

  *(v94 + 56) = v95;
  *(v94 + 64) = sub_29D4BB8E8(qword_2A1A17AB0, type metadata accessor for AccountStatusSummaryTileGenerator, &unk_29D5B6F94);
  *(v94 + 32) = v96;
  sub_29D4BB8E8(&qword_2A1A16E40, sub_29D4BB930, v118);
  v97 = v135;
  v98 = v137;
  sub_29D5B3C0C();

  (*(v139 + 8))(v92, v98);
  sub_29D4BB8E8(&qword_2A1A170F8, sub_29D4BB9DC, v83);
  v99 = v138;
  v100 = sub_29D5B3B1C();
  (*(v140 + 8))(v97, v99);
  v101 = v111;
  v111[2] = v100;
  [*(v101 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_context + *(v142 + 28)) addAccountStateChangeListener_];
  swift_allocObject();
  swift_weakInit();
  sub_29D5B1EEC();
  swift_allocObject();

  v102 = sub_29D5B1ECC();

  sub_29D4BBCDC(v78, type metadata accessor for HealthRecordsGeneratorContext);
  (*(v141 + 8))(v144, v145);

  *(v101 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_observerToken) = v102;

  return v101;
}

unint64_t sub_29D4BAC68(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_29D4BBD84();
    v2 = sub_29D5B4AAC();
  }

  else
  {
    v2 = MEMORY[0x29EDCA198];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v14 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v14);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v14 = v9;
LABEL_13:
    v15 = __clz(__rbit64(v6)) | (v14 << 6);
    sub_29D4BBDE0(*(v1 + 48) + 40 * v15, v28);
    sub_29D4A7420(*(v1 + 56) + 32 * v15, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_29D4BBDE0(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_29D4BBCDC(v25, sub_29D4BBE3C);

      goto LABEL_22;
    }

    sub_29D4A7420(v26 + 8, v24);
    sub_29D4BBCDC(v25, sub_29D4BBE3C);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_29D57A290(v22, v23);
    if (v16)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      *v12 = v22;
      v12[1] = v23;

      v13 = (v2[7] + v11);
      v1 = v10;
      *v13 = v22;
      v13[1] = v23;

      v9 = v14;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * result);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_26;
      }

      v2[2] = v21;
      v9 = v14;
    }
  }

LABEL_22:

  return 0;
}

uint64_t sub_29D4BAF44@<X0>(_BYTE *a2@<X8>)
{
  result = sub_29D5B0C8C();
  if (result)
  {
    v4 = sub_29D4BAC68(result);

    if (v4)
    {
      sub_29D5B289C();
    }
  }

  *a2 = 1;
  return result;
}

uint64_t sub_29D4BAFCC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for HealthRecordsGeneratorContext(0);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D5B371C();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  v17 = sub_29D5B370C();
  v18 = sub_29D5B426C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v36 = v12;
    v20 = v19;
    v21 = swift_slowAlloc();
    v38 = a4;
    v39 = v21;
    v22 = v21;
    *v20 = 136446466;
    v40 = a3;
    swift_getMetatypeMetadata();
    v23 = sub_29D5B3E7C();
    v25 = sub_29D501890(v23, v24, &v39);
    v37 = a2;
    v26 = a1;
    v27 = v25;

    *(v20 + 4) = v27;
    *(v20 + 12) = 2082;
    v40 = type metadata accessor for AccountStatusSummaryTileGenerator(0);
    sub_29D4BBD3C();
    v28 = sub_29D5B3E7C();
    v30 = sub_29D501890(v28, v29, &v39);
    a1 = v26;
    a2 = v37;

    *(v20 + 14) = v30;
    _os_log_impl(&dword_29D48C000, v17, v18, "[%{public}s]: Emitting %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    v31 = v22;
    a4 = v38;
    MEMORY[0x29ED5FB80](v31, -1, -1);
    MEMORY[0x29ED5FB80](v20, -1, -1);

    (*(v13 + 8))(v16, v36);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  sub_29D499E5C(a1, v11);
  v32 = type metadata accessor for AccountStatusSummaryTileGenerator(0);
  swift_allocObject();

  v33 = sub_29D4CEF98(v11, a2);

  a4[3] = v32;
  result = sub_29D4BB8E8(qword_2A1A17AB0, type metadata accessor for AccountStatusSummaryTileGenerator, &unk_29D5B6F94);
  a4[4] = result;
  *a4 = v33;
  return result;
}

uint64_t sub_29D4BB2D8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    [*(result + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_context + *(type metadata accessor for HealthRecordsGeneratorContext(0) + 20)) removeAccountStateChangeListener_];
  }

  return result;
}

uint64_t sub_29D4BB360()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_observerToken))
  {

    sub_29D5B1EDC();
  }

  v2 = OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_domain;
  v3 = sub_29D5B13EC();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_29D4BBCDC(v1 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_context, type metadata accessor for HealthRecordsGeneratorContext);

  return v1;
}

uint64_t sub_29D4BB464()
{
  sub_29D4BB360();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccountStatusSummaryTileGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A17728;
  if (!qword_2A1A17728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D4BB510(uint64_t a1)
{
  result = sub_29D5B13EC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HealthRecordsGeneratorContext(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_29D4BB608@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D4BB684(uint64_t a1)
{
  if (!qword_2A1A16938)
  {
    sub_29D4BB770(255);
    sub_29D4999F8();
    sub_29D4BB8E8(&qword_2A1A197E8, sub_29D4BB770, MEMORY[0x29EDB88B0]);
    sub_29D4BB8E8(&qword_2A1A19620, sub_29D4999F8, MEMORY[0x29EDCA280]);
    v1 = sub_29D5B390C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16938);
    }
  }
}

void sub_29D4BB770(uint64_t a1)
{
  if (!qword_2A1A197E0)
  {
    sub_29D4BB85C(255);
    sub_29D4B6DB8(255);
    sub_29D4BB8E8(&qword_2A1A19798, sub_29D4BB85C, MEMORY[0x29EDB89C0]);
    sub_29D4BB8E8(&qword_2A1A19788, sub_29D4B6DB8, MEMORY[0x29EDB89D8]);
    v1 = sub_29D5B37DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A197E0);
    }
  }
}

void sub_29D4BB898()
{
  if (!qword_2A1A19680)
  {
    v0 = sub_29D5B40BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A19680);
    }
  }
}

uint64_t sub_29D4BB8E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D4BB930(uint64_t a1)
{
  if (!qword_2A1A16E38)
  {
    sub_29D4BB684(255);
    sub_29D499B38();
    sub_29D4BB8E8(&qword_2A1A16940, sub_29D4BB684, MEMORY[0x29EDB89B8]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16E38);
    }
  }
}

void sub_29D4BB9DC(uint64_t a1)
{
  if (!qword_2A1A170F0)
  {
    sub_29D499C88(255);
    sub_29D4BB930(255);
    sub_29D4BB8E8(&qword_2A1A197A8, sub_29D499C88, MEMORY[0x29EDB89C0]);
    sub_29D4BB8E8(&qword_2A1A16E40, sub_29D4BB930, MEMORY[0x29EDB8908]);
    v1 = sub_29D5B37DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A170F0);
    }
  }
}

void sub_29D4BBAC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D4BB8E8(a4, a5, MEMORY[0x29EDC9A70]);
    v8 = sub_29D5B392C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D4BBB78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D4BBC1C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D4BAFCC(v1 + v4, v6, v7, a1);
}

uint64_t sub_29D4BBCDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D4BBD3C()
{
  result = qword_2A1A179E8[0];
  if (!qword_2A1A179E8[0])
  {
    type metadata accessor for AccountStatusSummaryTileGenerator(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_2A1A179E8);
  }

  return result;
}

void sub_29D4BBD84()
{
  if (!qword_2A17A3DB8)
  {
    v0 = sub_29D5B4ABC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A3DB8);
    }
  }
}

void sub_29D4BBE3C()
{
  if (!qword_2A17A3DC0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A3DC0);
    }
  }
}

uint64_t sub_29D4BBEA4(uint64_t a1)
{
  v2 = v1;
  v39 = *v2;
  v4 = sub_29D5B371C();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D5B148C();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v14 = v13 - 8;
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v38 - v20;
  v22 = *(v9 + 16);
  v22(v12, a1, v8);
  v22(v21, v12, v8);
  sub_29D5B140C();
  sub_29D499EC0(v43, v43[3]);
  v23 = sub_29D5B136C();
  v24 = [objc_allocWithZone(MEMORY[0x29EDC3E10]) initWithHealthStore_];

  (*(v9 + 8))(v12, v8);
  sub_29D48F668(v43);
  *&v21[*(v14 + 28)] = v24;
  v25 = sub_29D5B143C();
  v26 = sub_29D5B10DC();
  LOBYTE(v8) = sub_29D5B10CC();

  if (v8)
  {
    sub_29D5B36EC();
    v27 = sub_29D5B370C();
    v28 = sub_29D5B429C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v42 = v30;
      *v29 = 136315138;
      v43[0] = v39;
      swift_getMetatypeMetadata();
      v31 = sub_29D5B3E7C();
      v33 = sub_29D501890(v31, v32, &v42);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_29D48C000, v27, v28, "[%s]: Returning CHI sharable model pipeline for primary profile", v29, 0xCu);
      sub_29D48F668(v30);
      MEMORY[0x29ED5FB80](v30, -1, -1);
      MEMORY[0x29ED5FB80](v29, -1, -1);
    }

    (*(v40 + 8))(v7, v41);
    sub_29D4BC2C0(0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_29D5B62A0;
    sub_29D499E5C(v21, v18);
    v35 = type metadata accessor for ConceptSharableModelPipeline(0);
    swift_allocObject();
    v36 = sub_29D55DD78(v18);
    *(v34 + 56) = v35;
    *(v34 + 64) = sub_29D4BC37C();
    *(v34 + 32) = v36;
  }

  else
  {
    v34 = MEMORY[0x29EDCA190];
  }

  sub_29D49A104(v21);
  return v34;
}

void sub_29D4BC2C0(uint64_t a1)
{
  if (!qword_2A1A161F0)
  {
    sub_29D4BC318();
    v1 = sub_29D5B4C5C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A161F0);
    }
  }
}

unint64_t sub_29D4BC318()
{
  result = qword_2A1A17368;
  if (!qword_2A1A17368)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A17368);
  }

  return result;
}

unint64_t sub_29D4BC37C()
{
  result = qword_2A1A180D8[0];
  if (!qword_2A1A180D8[0])
  {
    type metadata accessor for ConceptSharableModelPipeline(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A180D8);
  }

  return result;
}

uint64_t sub_29D4BC3D4(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = sub_29D5B134C();
  v6 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18, v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x29EDCA190];
  if (v10)
  {
    v22 = MEMORY[0x29EDCA190];
    sub_29D4C6C60(0, v10, 0);
    v11 = v22;
    v12 = *(sub_29D5B25DC() - 8);
    v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v17[1] = v6 + 32;
    v17[0] = *(v12 + 72);
    while (1)
    {
      v19(v13, &v21);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v22 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_29D4C6C60((v14 > 1), v15 + 1, 1);
        v11 = v22;
      }

      *(v11 + 16) = v15 + 1;
      (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v18);
      v13 += v17[0];
      if (!--v10)
      {
        return v11;
      }
    }
  }

  return v11;
}

void sub_29D4BC5DC()
{
  v0 = [objc_opt_self() sharedBehavior];
  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = v0;
  v2 = [v0 isAppleInternalInstall];

  if (v2)
  {
    sub_29D48F51C(0, &qword_2A1A16348, 0x29EDB8E78);
    v3 = sub_29D5B42AC();
    v4 = sub_29D5B3E1C();
    v5 = [v3 integerForKey_];

    if (v5)
    {
      if (__OFSUB__(0, v5))
      {
        __break(1u);
LABEL_9:
        __break(1u);
        return;
      }
    }
  }

  sub_29D5B0DBC();
}

void *sub_29D4BC710(uint64_t a1)
{
  v2 = v1;
  v26 = *v1;
  v24 = sub_29D5B13CC();
  v4 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29D5B13EC();
  v8 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for HealthRecordsGeneratorContext;
  sub_29D4C1D88(a1, v1 + OBJC_IVAR____TtC13HealthRecords19AddAccountGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);
  v22 = sub_29D5B143C();
  sub_29D4C23AC(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v12 = sub_29D5B104C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D5B62A0;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x29EDC3790], v12);
  (*(v4 + 104))(v7, *MEMORY[0x29EDC3898], v24);
  sub_29D5B13DC();
  (*(v8 + 32))(v2 + OBJC_IVAR____TtC13HealthRecords19AddAccountGenerator_domain, v11, v23);
  sub_29D5B140C();
  v16 = v28;
  v17 = v29;
  sub_29D499EC0(v27, v28);
  v18 = sub_29D4C9C80(v16, v17);
  type metadata accessor for AddAccountDataProvider();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  sub_29D48F668(v27);
  *(v2 + OBJC_IVAR____TtC13HealthRecords19AddAccountGenerator_dataProvider) = v19;

  v20 = sub_29D4BCA88(a1, v19);

  sub_29D4C1DF0(a1, v25);
  v2[2] = v20;
  return v2;
}

uint64_t sub_29D4BCA88(uint64_t a1, uint64_t a2)
{
  v111 = a2;
  v115 = sub_29D5B148C();
  v114 = *(v115 - 8);
  MEMORY[0x2A1C7C4A8](v115, v3);
  v112 = v4;
  v113 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C1268(0);
  v118 = v5;
  v117 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v6);
  v116 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C13BC(0);
  v121 = v8;
  v120 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v119 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C1468(0);
  v124 = v11;
  v123 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v122 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C1554(0);
  v130 = v14;
  v127 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v15);
  v125 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C1624(0);
  v131 = v17;
  v128 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v18);
  v126 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C1710(0);
  v132 = *(v20 - 8);
  v133 = v20;
  MEMORY[0x2A1C7C4A8](v20, v21);
  v129 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_29D5B23CC();
  v134 = *(v107 - 8);
  MEMORY[0x2A1C7C4A8](v107, v23);
  v105 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C17A4(0);
  v110 = v25;
  v109 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25, v26);
  v108 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29D5B0EDC();
  v29 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28, v30);
  v32 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_29D5B1AAC();
  v34 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33, v35);
  v37 = &v95 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B140C();
  (*(v34 + 104))(v37, *MEMORY[0x29EDC3EF8], v33);
  v136 = a1;
  v38 = sub_29D5B143C();
  v39 = sub_29D5B10AC();
  v40 = sub_29D5B1A8C();
  v42 = v41;
  if (v39)
  {
    v139 = 0x656C69666F72505BLL;
    v140 = 0xE90000000000003ALL;
    v135 = v40;
    v39 = v39;
    v43 = [v39 identifier];
    sub_29D5B0EBC();

    v44 = sub_29D5B0E8C();
    v45 = v29;
    v46 = v44;
    v47 = v28;
    v48 = v33;
    v49 = v38;
    v51 = v50;
    (*(v45 + 8))(v32, v47);
    MEMORY[0x29ED5E510](v46, v51);
    v38 = v49;
    v33 = v48;

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v40 = v135;
    v52 = v139;
    v53 = v140;
  }

  else
  {
    v53 = 0x800000029D5BBCB0;
    v52 = 0xD000000000000013;
  }

  v139 = v52;
  v140 = v53;
  MEMORY[0x29ED5E510](v40, v42);

  v54 = v139;
  v55 = v140;
  (*(v34 + 8))(v37, v33);
  type metadata accessor for FeedItemContextChangeGenerator();
  v56 = swift_allocObject();
  v106 = v56;
  sub_29D497868(&v141, v56 + 16);
  *(v56 + 56) = v54;
  *(v56 + 64) = v55;
  sub_29D5B140C();
  sub_29D499EC0(&v141, v142);
  sub_29D5B136C();
  sub_29D5B26AC();
  swift_allocObject();
  v135 = sub_29D5B269C();
  sub_29D48F668(&v141);
  v57 = *MEMORY[0x29EDC41B0];
  v58 = v134;
  v102 = *(v134 + 104);
  v59 = v105;
  v60 = v107;
  v102(v105, v57, v107);
  v61 = sub_29D5B268C();
  v104 = v61;
  v101 = *(v58 + 8);
  v101(v59, v60);
  *&v141 = v61;
  *(swift_allocObject() + 16) = v137;
  sub_29D4C188C(0);
  v100 = v62;
  sub_29D4C1354(0);
  v98 = v63;
  v64 = MEMORY[0x29EDB8A00];
  v103 = MEMORY[0x29EDB8A00];
  v99 = sub_29D4C2410(&qword_2A1A16880, sub_29D4C188C, MEMORY[0x29EDB8A00]);
  v97 = sub_29D4C2410(&qword_2A1A16870, sub_29D4C1354, v64);
  v65 = v108;
  sub_29D5B3B8C();

  v104 = MEMORY[0x29EDB8928];
  sub_29D4C2410(&qword_2A1A16DF8, sub_29D4C17A4, MEMORY[0x29EDB8928]);
  v66 = v110;
  v134 = sub_29D5B3B1C();
  v96 = *(v109 + 8);
  v96(v65, v66);
  v102(v59, *MEMORY[0x29EDC41D8], v60);
  v67 = sub_29D5B268C();
  v101(v59, v60);
  *&v141 = v67;
  *(swift_allocObject() + 16) = v137;
  sub_29D5B3B8C();

  v68 = sub_29D5B3B1C();
  v96(v65, v66);
  *&v141 = sub_29D5B44CC();
  v138 = v68;
  v139 = v134;
  v109 = v68;
  sub_29D499998();
  v69 = v103;
  sub_29D4C2410(&qword_2A1A19778, sub_29D499998, v103);

  v70 = v116;
  sub_29D5B37BC();
  v71 = v114;
  v72 = v113;
  v73 = v115;
  (*(v114 + 16))(v113, v136, v115);
  v74 = (*(v71 + 80) + 24) & ~*(v71 + 80);
  v75 = (v112 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  v77 = v137;
  *(v76 + 16) = v137;
  (*(v71 + 32))(v76 + v74, v72, v73);
  *(v76 + v75) = v77;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_29D4C1908;
  *(v78 + 24) = v76;
  sub_29D4B3AC0(0);
  sub_29D4C2410(&qword_2A1A17200, sub_29D4C1268, MEMORY[0x29EDB8878]);
  v79 = v119;
  v80 = v118;
  sub_29D5B3BCC();

  (*(v117 + 8))(v70, v80);
  *(swift_allocObject() + 16) = v77;
  sub_29D4B3A8C(0);
  v81 = MEMORY[0x29EDB8990];
  sub_29D4C2410(&qword_2A1A16C08, sub_29D4C13BC, MEMORY[0x29EDB8990]);
  v82 = v69;
  sub_29D4C2410(&qword_2A1A167C0, sub_29D4B3A8C, v69);
  v83 = v122;
  v84 = v121;
  sub_29D5B3B8C();

  (*(v120 + 8))(v79, v84);
  sub_29D4C1E70(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  v85 = v104;
  sub_29D4C2410(&qword_2A1A16D98, sub_29D4C1468, v104);

  v86 = v125;
  v87 = v124;
  sub_29D5B3BCC();

  (*(v123 + 8))(v83, v87);
  *(swift_allocObject() + 16) = v137;
  sub_29D4B2D8C(0);
  sub_29D4C2410(&qword_2A1A16BC8, sub_29D4C1554, v81);
  sub_29D4C2410(&qword_2A1A16780, sub_29D4B2D8C, v82);
  v88 = v126;
  v89 = v130;
  sub_29D5B3B8C();

  (*(v127 + 8))(v86, v89);
  *&v141 = MEMORY[0x29EDCA190];
  sub_29D4C2410(&qword_2A1A16D08, sub_29D4C1624, v85);
  v90 = v129;
  v91 = v131;
  sub_29D5B3B4C();
  (*(v128 + 8))(v88, v91);
  sub_29D4C2410(&qword_2A1A17068, sub_29D4C1710, MEMORY[0x29EDB88C8]);
  v92 = v133;
  v93 = sub_29D5B3B1C();

  (*(v132 + 8))(v90, v92);
  return v93;
}

uint64_t sub_29D4BDB30@<X0>(const char *a1@<X2>, uint64_t *a2@<X8>)
{
  v34 = a1;
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v3, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C2378(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D5B371C();
  v36 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36CC();
  v17 = sub_29D5B370C();
  v35 = sub_29D5B427C();
  if (os_log_type_enabled(v17, v35))
  {
    v18 = swift_slowAlloc();
    v31 = v18;
    v33 = swift_slowAlloc();
    v38 = v33;
    *v18 = 136446210;
    v37 = sub_29D4C1C34(0);
    sub_29D4C1C54(0, &qword_2A1A18CA0, sub_29D4C1C34);
    v19 = sub_29D5B3E7C();
    v21 = sub_29D501890(v19, v20, &v38);
    v32 = v13;
    v22 = v12;
    v23 = v9;
    v24 = a2;
    v25 = v21;

    v26 = v31;
    *(v31 + 1) = v25;
    a2 = v24;
    v9 = v23;
    v12 = v22;
    _os_log_impl(&dword_29D48C000, v17, v35, v34, v26, 0xCu);
    v27 = v33;
    sub_29D48F668(v33);
    MEMORY[0x29ED5FB80](v27, -1, -1);
    MEMORY[0x29ED5FB80](v26, -1, -1);

    (*(v36 + 8))(v16, v32);
  }

  else
  {

    (*(v36 + 8))(v16, v13);
  }

  sub_29D5B0DAC();
  v28 = sub_29D5B0E6C();
  (*(*(v28 - 8) + 56))(v6, 0, 1, v28);
  sub_29D5B3A2C();
  sub_29D4C2410(&qword_2A17A3DD8, sub_29D4C2378, MEMORY[0x29EDB8AB8]);
  v29 = sub_29D5B3B1C();
  result = (*(v9 + 8))(v12, v8);
  *a2 = v29;
  return result;
}

uint64_t sub_29D4BDEE8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a6;
  v61 = a1;
  sub_29D4B4C4C(0);
  v56 = v10;
  v12 = MEMORY[0x2A1C7C4A8](v10, v11);
  v14 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x2A1C7C4A8](v12, v15);
  v18 = &v49[-v17];
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v49[-v20];
  v22 = sub_29D5B371C();
  v57 = *(v22 - 8);
  v58 = v22;
  MEMORY[0x2A1C7C4A8](v22, v23);
  v25 = &v49[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D5B36CC();
  v59 = a2;
  sub_29D4C1D88(a2, v21, sub_29D4B4C4C);
  sub_29D4C1D88(a3, v18, sub_29D4B4C4C);
  v26 = sub_29D5B370C();
  v27 = sub_29D5B429C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v55 = v6;
    v29 = v28;
    v52 = swift_slowAlloc();
    v63 = v52;
    *v29 = 136446978;
    v62 = sub_29D4C1C34(0);
    sub_29D4C1C54(0, &qword_2A1A18CA0, sub_29D4C1C34);
    v30 = sub_29D5B3E7C();
    v54 = a5;
    v32 = sub_29D501890(v30, v31, &v63);
    v53 = a3;
    v33 = v32;

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    if (v61)
    {
      v34 = 1702195828;
    }

    else
    {
      v34 = 0x65736C6166;
    }

    if (v61)
    {
      v35 = 0xE400000000000000;
    }

    else
    {
      v35 = 0xE500000000000000;
    }

    v36 = sub_29D501890(v34, v35, &v63);

    *(v29 + 14) = v36;
    *(v29 + 22) = 2082;
    sub_29D4C1D88(v21, v14, sub_29D4B4C4C);
    v51 = v26;
    v37 = sub_29D5B3E7C();
    v50 = v27;
    v39 = v38;
    sub_29D4C1DF0(v21, sub_29D4B4C4C);
    v40 = v37;
    a3 = v53;
    v41 = sub_29D501890(v40, v39, &v63);

    *(v29 + 24) = v41;
    *(v29 + 32) = 2082;
    sub_29D4C1D88(v18, v14, sub_29D4B4C4C);
    v42 = sub_29D5B3E7C();
    v44 = v43;
    a5 = v54;
    sub_29D4C1DF0(v18, sub_29D4B4C4C);
    v45 = sub_29D501890(v42, v44, &v63);

    *(v29 + 34) = v45;
    v46 = v51;
    _os_log_impl(&dword_29D48C000, v51, v50, "[%{public}s] (Health records onboarding tile state) Onboardable: %{public}s, General tile dismissal date: %{public}s, Labs tile dismissal date: %{public}s", v29, 0x2Au);
    v47 = v52;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v47, -1, -1);
    MEMORY[0x29ED5FB80](v29, -1, -1);
  }

  else
  {

    sub_29D4C1DF0(v18, sub_29D4B4C4C);
    sub_29D4C1DF0(v21, sub_29D4B4C4C);
  }

  (*(v57 + 8))(v25, v58);
  return sub_29D4BE338(v61 & 1, v59, a3, a5);
}

uint64_t sub_29D4BE338(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29D5B0E6C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    return MEMORY[0x29EDCA190];
  }

  sub_29D5B0E5C();
  v14 = sub_29D4BEDEC(a2, a3, v13);
  v15 = (*(v10 + 8))(v13, v9);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v19[-2] = a4;
  v17 = sub_29D4BC3D4(sub_29D4C1E50, &v19[-4], v14);

  if (!v4)
  {
    return v17;
  }

  return result;
}

uint64_t sub_29D4BE4B4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D4C23AC(0, &qword_2A1A165E0, sub_29D4B3AC0, MEMORY[0x29EDB8AB0]);
  v5 = v4;
  v42 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v37 - v7;
  sub_29D4B3DC8(0);
  v10 = v9;
  v43 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_29D5B371C();
  v14 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  sub_29D5B36AC();
  v19 = v18;
  v20 = sub_29D5B370C();
  v21 = sub_29D5B427C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v38 = v5;
    v23 = v22;
    v37 = swift_slowAlloc();
    v45 = v37;
    *v23 = 136446466;
    v44 = sub_29D4C1C34(0);
    sub_29D4C1C54(0, &qword_2A1A18CA0, sub_29D4C1C34);
    v24 = sub_29D5B3E7C();
    v40 = a2;
    v26 = sub_29D501890(v24, v25, &v45);
    v39 = v10;
    v27 = v26;

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    v44 = v18;
    v28 = v18;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v29 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v30 = sub_29D5B3E7C();
    v32 = sub_29D501890(v30, v31, &v45);

    *(v23 + 14) = v32;
    a2 = v40;
    _os_log_impl(&dword_29D48C000, v20, v21, "[%{public}s] Unable to make feed items for commit: %{public}s", v23, 0x16u);
    v10 = v39;
    v33 = v37;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v33, -1, -1);
    v34 = v23;
    v5 = v38;
    MEMORY[0x29ED5FB80](v34, -1, -1);
  }

  (*(v14 + 8))(v17, v41);
  v44 = MEMORY[0x29EDCA190];
  sub_29D4B3AC0(0);
  sub_29D5B3A2C();
  sub_29D4B3AF4();
  sub_29D5B39EC();
  (*(v42 + 8))(v8, v5);
  sub_29D4C2410(&qword_2A1A161C0, sub_29D4B3DC8, MEMORY[0x29EDB8B20]);
  v35 = sub_29D5B3B1C();
  result = (*(v43 + 8))(v13, v10);
  *a2 = v35;
  return result;
}

uint64_t sub_29D4BE938@<X0>(void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29D499EC0(a2 + 2, a2[5]);
  sub_29D499EC0(a2 + 2, a2[5]);
  v4 = sub_29D5B13BC();
  sub_29D5B13AC();

  v5 = sub_29D5B404C();

  if (!v8)
  {
    *a3 = v5;
  }

  return result;
}

uint64_t sub_29D4BEA18@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D4B37EC(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B371C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_29D5B36AC();
  v16 = v15;
  v17 = sub_29D5B370C();
  v18 = sub_29D5B427C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v38 = v6;
    v22 = v21;
    v42 = v21;
    *v20 = 136446466;
    v41 = sub_29D4C1C34(0);
    sub_29D4C1C54(0, &qword_2A1A18CA0, sub_29D4C1C34);
    v23 = sub_29D5B3E7C();
    v37 = v10;
    v25 = sub_29D501890(v23, v24, &v42);
    v40 = a2;
    v26 = v25;

    *(v20 + 4) = v26;
    *(v20 + 12) = 2082;
    v41 = v15;
    v27 = v15;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v28 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v29 = sub_29D5B3E7C();
    v31 = sub_29D501890(v29, v30, &v42);

    *(v20 + 14) = v31;
    a2 = v40;
    _os_log_impl(&dword_29D48C000, v17, v18, "[%{public}s] Unable to compute desired difference for commit: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    v32 = v22;
    v6 = v38;
    MEMORY[0x29ED5FB80](v32, -1, -1);
    v33 = v20;
    v5 = v39;
    MEMORY[0x29ED5FB80](v33, -1, -1);

    (*(v11 + 8))(v14, v37);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v41 = MEMORY[0x29EDCA190];
  sub_29D4C1E70(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D5B3A2C();
  sub_29D4C2410(&qword_2A1A165D8, sub_29D4B37EC, MEMORY[0x29EDB8AB8]);
  v34 = sub_29D5B3B1C();
  result = (*(v6 + 8))(v9, v5);
  *a2 = v34;
  return result;
}

void *sub_29D4BEDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v81 = a3;
  v88 = a2;
  v90[1] = *MEMORY[0x29EDCA608];
  v86 = sub_29D5B25DC();
  v6 = *(v86 - 8);
  MEMORY[0x2A1C7C4A8](v86, v7);
  v82 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B371C();
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4C4C(0);
  v15 = MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v15, v18);
  v83 = &v71 - v20;
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = &v71 - v22;
  v24 = sub_29D5B0E6C();
  v25 = *(v24 - 8);
  v27 = MEMORY[0x2A1C7C4A8](v24, v26);
  v77 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x2A1C7C4A8](v27, v29);
  v32 = &v71 - v31;
  MEMORY[0x2A1C7C4A8](v30, v33);
  v35 = &v71 - v34;
  v84 = a1;
  sub_29D4C1D88(a1, v23, sub_29D4B4C4C);
  v36 = *(v25 + 48);
  v85 = v25 + 48;
  v87 = v36;
  if (v36(v23, 1, v24) == 1)
  {
    sub_29D4C1DF0(v23, sub_29D4B4C4C);
  }

  else
  {
    (*(v25 + 32))(v35, v23, v24);
    sub_29D5B0DAC();
    v37 = sub_29D5B0E3C();
    v78 = v17;
    v38 = v12;
    v39 = v6;
    v40 = *(v25 + 8);
    v40(v32, v24);
    v40(v35, v24);
    v6 = v39;
    v12 = v38;
    v17 = v78;
    if (v37)
    {
      return MEMORY[0x29EDCA190];
    }
  }

  v41 = v83;
  sub_29D4C1D88(v88, v83, sub_29D4B4C4C);
  if (v87(v41, 1, v24) != 1)
  {
    v42 = v77;
    (*(v25 + 32))(v77, v41, v24);
    sub_29D5B0DAC();
    v43 = sub_29D5B0E3C();
    v44 = *(v25 + 8);
    v44(v32, v24);
    v44(v42, v24);
    if ((v43 & 1) == 0)
    {
      goto LABEL_8;
    }

    return MEMORY[0x29EDCA190];
  }

  sub_29D4C1DF0(v41, sub_29D4B4C4C);
LABEL_8:
  v85 = v4;
  sub_29D4C23AC(0, &qword_2A1A161E0, MEMORY[0x29EDC4210], MEMORY[0x29EDC9E90]);
  v46 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v83 = *(v6 + 72);
  v47 = swift_allocObject();
  v48 = v24;
  v49 = v47;
  *(v47 + 16) = xmmword_29D5B62A0;
  v50 = v84;
  v75 = v48;
  v51 = v87;
  *(v47 + v46) = (v87)(v84, 1) != 1;
  v52 = *MEMORY[0x29EDC4208];
  v76 = *(v6 + 104);
  v77 = v46;
  v76(&v49[v46], v52, v86);
  sub_29D5B36CC();
  sub_29D4C1D88(v50, v17, sub_29D4B4C4C);
  v53 = sub_29D5B370C();
  v54 = sub_29D5B429C();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v74 = v6;
    v78 = v17;
    v56 = v55;
    v73 = swift_slowAlloc();
    v90[0] = v73;
    *v56 = 136446466;
    v89 = sub_29D4C1C34(0);
    sub_29D4C1C54(0, &qword_2A1A18CA0, sub_29D4C1C34);
    v57 = sub_29D5B3E7C();
    v59 = sub_29D501890(v57, v58, v90);
    v72 = v12;
    v60 = v59;

    *(v56 + 4) = v60;
    *(v56 + 12) = 2082;
    v61 = v78;
    v62 = v51(v78, 1, v75);
    if (v62 == 1)
    {
      v63 = 0x65736C6166;
    }

    else
    {
      v63 = 1702195828;
    }

    if (v62 == 1)
    {
      v64 = 0xE500000000000000;
    }

    else
    {
      v64 = 0xE400000000000000;
    }

    sub_29D4C1DF0(v61, sub_29D4B4C4C);
    v65 = sub_29D501890(v63, v64, v90);

    *(v56 + 14) = v65;
    _os_log_impl(&dword_29D48C000, v53, v54, "[%{public}s] Generating general CHR onboarding tile, hidden in Summary: %{public}s", v56, 0x16u);
    v66 = v73;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v66, -1, -1);
    v6 = v74;
    MEMORY[0x29ED5FB80](v56, -1, -1);

    (*(v79 + 8))(v72, v80);
  }

  else
  {

    (*(v79 + 8))(v12, v80);
    sub_29D4C1DF0(v17, sub_29D4B4C4C);
  }

  v67 = sub_29D4C0638(v84, v88);
  v68 = v82;
  *v82 = v67 & 1;
  v69 = v86;
  v76(v68, *MEMORY[0x29EDC4200], v86);
  v45 = sub_29D515264(1, 2, 1, v49);
  v45[2] = 2;
  (*(v6 + 32))(&v77[v83 + v45], v68, v69);
  return v45;
}

id sub_29D4BF604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a3;
  v83 = a4;
  v73 = sub_29D5B163C();
  v71 = *(v73 - 8);
  MEMORY[0x2A1C7C4A8](v73, v6);
  v69 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_29D5B16CC();
  v70 = *(v72 - 8);
  MEMORY[0x2A1C7C4A8](v72, v8);
  v68 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B2A7C();
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v90 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D5B2ACC();
  v87 = *(v13 - 8);
  v88 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v97 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D5B25DC();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v81 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = &v67 - v22;
  sub_29D4C23AC(0, &qword_2A1A17330, MEMORY[0x29EDC4210], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v24 - 8, v25);
  v27 = &v67 - v26;
  v94 = sub_29D5B221C();
  v86 = *(v94 - 8);
  MEMORY[0x2A1C7C4A8](v94, v28);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v17 + 16);
  v31(v27, a1, v16);
  (*(v17 + 56))(v27, 0, 1, v16);
  v93 = v30;
  sub_29D5B21FC();
  v79 = v17 + 16;
  v78 = v31;
  v31(v23, a1, v16);
  v32 = *(v17 + 88);
  v85 = v16;
  v77 = v17 + 88;
  v76 = v32;
  v33 = v32(v23, v16);
  v75 = *MEMORY[0x29EDC4208];
  v82 = v17;
  v80 = a2;
  if (v33 == v75)
  {
    v34 = sub_29D5B143C();
    v40 = sub_29D5B10AC();

    v35 = sub_29D5B278C();
LABEL_6:
    v89 = v35;
    v92 = v36;

    goto LABEL_8;
  }

  v37 = v33;
  v38 = *MEMORY[0x29EDC4200];
  v39 = sub_29D5B143C();
  v40 = sub_29D5B10AC();

  if (v37 == v38)
  {
    v35 = sub_29D5B279C();
    goto LABEL_6;
  }

  v89 = sub_29D5B278C();
  v92 = v41;

  (*(v17 + 8))(v23, v85);
LABEL_8:
  sub_29D5B25AC();
  sub_29D5B257C();
  sub_29D5B256C();
  sub_29D5B25CC();
  v74 = a1;
  sub_29D5B258C();

  v42 = v97;
  sub_29D5B2ABC();
  sub_29D5B0C0C();
  swift_allocObject();
  sub_29D5B0BFC();
  sub_29D4C2410(&unk_2A1A17338, MEMORY[0x29EDC4180], MEMORY[0x29EDC4188]);
  v44 = v93;
  v43 = v94;
  v45 = v91;
  v46 = sub_29D5B0BEC();
  if (v45)
  {

    (*(v87 + 8))(v42, v88);
    result = (*(v86 + 8))(v44, v43);
    *v84 = v45;
    return result;
  }

  v90 = v46;
  v91 = v47;

  v49 = sub_29D5B143C();
  v50 = v74;
  sub_29D5B25BC();
  if (MEMORY[0x29EDCA190] >> 62)
  {
    if (sub_29D5B485C())
    {
      sub_29D4C2000(MEMORY[0x29EDCA190]);
    }
  }

  type metadata accessor for AddAccountFeedItemViewController(0);
  sub_29D4C2410(&qword_2A1A17C60, type metadata accessor for AddAccountFeedItemViewController, MEMORY[0x29EDC4238]);
  v51 = v91;
  v52 = v90;
  sub_29D5B117C();

  sub_29D4A96D0(v52, v51);

  v53 = v81;
  v54 = v85;
  v78(v81, v50, v85);
  v55 = v76(v53, v54);
  if (v55 == v75)
  {
    (*(v82 + 96))(v53, v54);
    v56 = [objc_opt_self() allTypes];
    sub_29D48F51C(0, &qword_2A1A16358, 0x29EDBAA88);
    v57 = sub_29D5B402C();

    v58 = sub_29D596258(v57);

    sub_29D4C0134(v58);

LABEL_16:
    sub_29D5B128C();
    sub_29D5B122C();
LABEL_18:
    (*(v71 + 104))(v69, *MEMORY[0x29EDC3910], v73);
    v61 = v68;
    sub_29D5B16DC();
    v62 = v72;
    sub_29D5B11FC();
    (*(v70 + 8))(v61, v62);
    sub_29D5B257C();
    sub_29D5B124C();
    sub_29D5B256C();
    sub_29D5B12AC();
    v63 = sub_29D5B151C();
    v65 = v64;
    v66 = sub_29D5B130C();
    sub_29D59AD10(v96, v63, v65);

    v66(v95, 0);
    (*(v87 + 8))(v97, v88);
    return (*(v86 + 8))(v93, v94);
  }

  v59 = v82;
  if (v55 != *MEMORY[0x29EDC4200])
  {
    sub_29D5B128C();
    (*(v59 + 8))(v53, v54);
    goto LABEL_18;
  }

  (*(v82 + 96))(v53, v54);
  sub_29D4C1E70(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D5B6350;
  result = [objc_allocWithZone(MEMORY[0x29EDBAA88]) initWithIdentifier_];
  if (result)
  {
    *(inited + 32) = result;
    sub_29D50BDA8(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_29D4C0134(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x29EDCA1A0];
    goto LABEL_6;
  }

  if (!sub_29D5B485C())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_29D4C22E4(0);
  v3 = sub_29D5B490C();
LABEL_6:
  if (sub_29D48F51C(0, &qword_2A1A16370, 0x29EDBACB8) == MEMORY[0x29EDC99B0])
  {
    if (v2)
    {

      sub_29D5B481C();
      sub_29D48F51C(0, &qword_2A1A16358, 0x29EDBAA88);
      sub_29D4A6A1C(&qword_2A1A16350, &qword_2A1A16358, 0x29EDBAA88);
      sub_29D5B41DC();
      v1 = v39;
      v8 = v40;
      v9 = v41;
      v10 = v42;
      v11 = v43;
    }

    else
    {
      v30 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v11 = v32 & *(v1 + 56);

      v10 = 0;
    }

    while ((v1 & 0x8000000000000000) == 0)
    {
      if (v11)
      {
        v33 = v10;
        goto LABEL_44;
      }

      v36 = v10;
      do
      {
        v33 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_60;
        }

        if (v33 >= ((v9 + 64) >> 6))
        {
          v37 = v1;
          goto LABEL_56;
        }

        v11 = *(v8 + 8 * v33);
        ++v36;
      }

      while (!v11);
      v10 = v33;
LABEL_44:
      v34 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v35 = *(*(v1 + 48) + ((v33 << 9) | (8 * v34)));
LABEL_45:
      sub_29D4C1EC0(v35);
    }

    if (sub_29D5B488C())
    {
      sub_29D48F51C(0, &qword_2A1A16358, 0x29EDBAA88);
      swift_dynamicCast();
      v35 = v38;
      goto LABEL_45;
    }

    v37 = v1;
LABEL_56:
    sub_29D4B30C0(v37);
LABEL_57:

    return;
  }

  if (v2)
  {

    sub_29D5B481C();
    sub_29D48F51C(0, &qword_2A1A16358, 0x29EDBAA88);
    sub_29D4A6A1C(&qword_2A1A16350, &qword_2A1A16358, 0x29EDBAA88);
    sub_29D5B41DC();
    v1 = v39;
    v4 = v40;
    v5 = v41;
    v6 = v42;
    v7 = v43;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_29D5B488C())
    {
LABEL_38:
      sub_29D4B30C0(v1);
      goto LABEL_57;
    }

    sub_29D48F51C(0, &qword_2A1A16358, 0x29EDBAA88);
    swift_dynamicCast();
    v19 = v38;
LABEL_29:
    v22 = sub_29D5B464C();
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      do
      {
        if (++v25 == v27 && (v26 & 1) != 0)
        {
          __break(1u);
          goto LABEL_59;
        }

        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v25);
      }

      while (v29 == -1);
      v17 = __clz(__rbit64(~v29)) + (v25 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v38 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v38;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_38;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_29D4C0638(uint64_t a1, uint64_t a2)
{
  v101 = a2;
  v3 = sub_29D5B371C();
  v104 = *(v3 - 8);
  v105 = v3;
  v5 = MEMORY[0x2A1C7C4A8](v3, v4);
  v7 = &v93[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x2A1C7C4A8](v5, v8);
  v100 = &v93[-v10];
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v102 = &v93[-v13];
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v97 = &v93[-v16];
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v93[-v18];
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v20 - 8, v21);
  v23 = &v93[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_29D5B0E6C();
  v25 = *(v24 - 8);
  v27 = MEMORY[0x2A1C7C4A8](v24, v26);
  v99 = &v93[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v27, v29);
  v31 = &v93[-v30];
  sub_29D4C1D88(a1, v23, sub_29D4B4C4C);
  v32 = *(v25 + 48);
  if (v32(v23, 1, v24) == 1)
  {
    sub_29D4C1DF0(v23, sub_29D4B4C4C);
    sub_29D5B36CC();
    v33 = sub_29D5B370C();
    v34 = sub_29D5B429C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v107 = v36;
      *v35 = 136446210;
      v106 = sub_29D4C1C34(0);
      sub_29D4C1C54(0, &qword_2A1A18CA0, sub_29D4C1C34);
      v37 = sub_29D5B3E7C();
      v39 = sub_29D501890(v37, v38, &v107);
      v40 = v104;
      v41 = v39;

      *(v35 + 4) = v41;
      _os_log_impl(&dword_29D48C000, v33, v34, "[%{public}s] General CHR Onboarding tile has not been dismissed", v35, 0xCu);
      sub_29D48F668(v36);
      MEMORY[0x29ED5FB80](v36, -1, -1);
      MEMORY[0x29ED5FB80](v35, -1, -1);

      (*(v40 + 8))(v7, v105);
    }

    else
    {

      (*(v104 + 8))(v7, v105);
    }

    return 1;
  }

  v103 = v25;
  v42 = *(v25 + 32);
  v98 = v24;
  v42(v31, v23, v24);
  v96 = v31;
  v43 = sub_29D4E48C0(v31);
  v45 = v44;
  sub_29D5B36CC();

  v46 = sub_29D5B370C();
  v47 = sub_29D5B429C();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v107 = v95;
    *v48 = 136446466;
    v106 = sub_29D4C1C34(0);
    sub_29D4C1C54(0, &qword_2A1A18CA0, sub_29D4C1C34);
    v49 = sub_29D5B3E7C();
    v51 = sub_29D501890(v49, v50, &v107);
    v94 = v47;
    v52 = v51;

    *(v48 + 4) = v52;
    *(v48 + 12) = 2082;
    v53 = sub_29D501890(v43, v45, &v107);

    *(v48 + 14) = v53;
    v54 = v104;
    _os_log_impl(&dword_29D48C000, v46, v94, "[%{public}s] %{public}s elapsed since general tile dismissal", v48, 0x16u);
    v55 = v95;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v55, -1, -1);
    MEMORY[0x29ED5FB80](v48, -1, -1);

    v56 = v54;
  }

  else
  {

    v56 = v104;
  }

  v57 = *(v56 + 8);
  v57(v19, v105);
  v58 = v102;
  v59 = v98;
  if (v32(v101, 1, v98) != 1)
  {
    v74 = v100;
    sub_29D5B36CC();
    v75 = sub_29D5B370C();
    v76 = sub_29D5B429C();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v107 = v78;
      *v77 = 136446210;
      v106 = sub_29D4C1C34(0);
      sub_29D4C1C54(0, &qword_2A1A18CA0, sub_29D4C1C34);
      v79 = sub_29D5B3E7C();
      v81 = sub_29D501890(v79, v80, &v107);

      *(v77 + 4) = v81;
      _os_log_impl(&dword_29D48C000, v75, v76, "[%{public}s] Labs CHR Onboarding tile has been dismissed", v77, 0xCu);
      sub_29D48F668(v78);
      MEMORY[0x29ED5FB80](v78, -1, -1);
      MEMORY[0x29ED5FB80](v77, -1, -1);
    }

    v57(v74, v105);
    (*(v103 + 8))(v96, v59);
    return 1;
  }

  v60 = v99;
  sub_29D4BC5DC();
  sub_29D4C2410(&qword_2A17A3DC8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
  v61 = v96;
  v62 = sub_29D5B3DCC();
  v63 = *(v103 + 8);
  v103 += 8;
  v63(v60, v59);
  if (v62)
  {
    sub_29D5B36CC();
    v64 = sub_29D5B370C();
    v65 = sub_29D5B429C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v107 = v67;
      *v66 = 136446210;
      v106 = sub_29D4C1C34(0);
      sub_29D4C1C54(0, &qword_2A1A18CA0, sub_29D4C1C34);
      v68 = sub_29D5B3E7C();
      v70 = v58;
      v71 = sub_29D501890(v68, v69, &v107);

      *(v66 + 4) = v71;
      _os_log_impl(&dword_29D48C000, v64, v65, "[%{public}s] Not enough time elapsed to show Labs CHR Onboarding tile in Summary", v66, 0xCu);
      sub_29D48F668(v67);
      MEMORY[0x29ED5FB80](v67, -1, -1);
      MEMORY[0x29ED5FB80](v66, -1, -1);

      v57(v70, v105);
      v72 = v61;
      v73 = v98;
    }

    else
    {

      v57(v58, v105);
      v72 = v61;
      v73 = v59;
    }

    v63(v72, v73);
    return 1;
  }

  v82 = v97;
  sub_29D5B36CC();
  v83 = sub_29D5B370C();
  v84 = sub_29D5B429C();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v107 = v86;
    *v85 = 136446210;
    v106 = sub_29D4C1C34(0);
    sub_29D4C1C54(0, &qword_2A1A18CA0, sub_29D4C1C34);
    v87 = sub_29D5B3E7C();
    v89 = sub_29D501890(v87, v88, &v107);

    *(v85 + 4) = v89;
    _os_log_impl(&dword_29D48C000, v83, v84, "[%{public}s] Generating Labs CHR Onboarding tile in Summary", v85, 0xCu);
    sub_29D48F668(v86);
    MEMORY[0x29ED5FB80](v86, -1, -1);
    MEMORY[0x29ED5FB80](v85, -1, -1);

    v57(v82, v105);
    v90 = v61;
    v91 = v98;
  }

  else
  {

    v57(v82, v105);
    v90 = v61;
    v91 = v59;
  }

  v63(v90, v91);
  return 0;
}

uint64_t sub_29D4C10C0()
{

  v1 = OBJC_IVAR____TtC13HealthRecords19AddAccountGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D4C1DF0(v0 + OBJC_IVAR____TtC13HealthRecords19AddAccountGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AddAccountGenerator(uint64_t a1)
{
  result = qword_2A1A19F80;
  if (!qword_2A1A19F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D4C11EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords19AddAccountGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D4C1268(uint64_t a1)
{
  if (!qword_2A1A171F8)
  {
    sub_29D499998();
    sub_29D4C1354(255);
    v1 = MEMORY[0x29EDB8A00];
    sub_29D4C2410(&qword_2A1A19778, sub_29D499998, MEMORY[0x29EDB8A00]);
    sub_29D4C2410(&qword_2A1A16870, sub_29D4C1354, v1);
    v2 = sub_29D5B37AC();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A171F8);
    }
  }
}

void sub_29D4C1354(uint64_t a1)
{
  if (!qword_2A1A16868)
  {
    sub_29D4B4C4C(255);
    v1 = sub_29D5B398C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16868);
    }
  }
}

void sub_29D4C13BC(uint64_t a1)
{
  if (!qword_2A1A16C00)
  {
    sub_29D4C1268(255);
    sub_29D4B3AC0(255);
    sub_29D4C2410(&qword_2A1A17200, sub_29D4C1268, MEMORY[0x29EDB8878]);
    v1 = sub_29D5B38DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16C00);
    }
  }
}

void sub_29D4C1468(uint64_t a1)
{
  if (!qword_2A1A16D90)
  {
    sub_29D4C13BC(255);
    sub_29D4B3A8C(255);
    sub_29D4C2410(&qword_2A1A16C08, sub_29D4C13BC, MEMORY[0x29EDB8990]);
    sub_29D4C2410(&qword_2A1A167C0, sub_29D4B3A8C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B387C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16D90);
    }
  }
}

void sub_29D4C1554(uint64_t a1)
{
  if (!qword_2A1A16BC0)
  {
    sub_29D4C1468(255);
    sub_29D4C1E70(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D4C2410(&qword_2A1A16D98, sub_29D4C1468, MEMORY[0x29EDB8928]);
    v1 = sub_29D5B38DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16BC0);
    }
  }
}

void sub_29D4C1624(uint64_t a1)
{
  if (!qword_2A1A16D00)
  {
    sub_29D4C1554(255);
    sub_29D4B2D8C(255);
    sub_29D4C2410(&qword_2A1A16BC8, sub_29D4C1554, MEMORY[0x29EDB8990]);
    sub_29D4C2410(&qword_2A1A16780, sub_29D4B2D8C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B387C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16D00);
    }
  }
}

void sub_29D4C1710(uint64_t a1)
{
  if (!qword_2A1A17060)
  {
    sub_29D4C1624(255);
    sub_29D4C2410(&qword_2A1A16D08, sub_29D4C1624, MEMORY[0x29EDB8928]);
    v1 = sub_29D5B37FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17060);
    }
  }
}

void sub_29D4C17A4(uint64_t a1)
{
  if (!qword_2A1A16DF0)
  {
    sub_29D4C188C(255);
    sub_29D4C1354(255);
    v1 = MEMORY[0x29EDB8A00];
    sub_29D4C2410(&qword_2A1A16880, sub_29D4C188C, MEMORY[0x29EDB8A00]);
    sub_29D4C2410(&qword_2A1A16870, sub_29D4C1354, v1);
    v2 = sub_29D5B387C();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A16DF0);
    }
  }
}

uint64_t sub_29D4C1908(int a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_29D5B148C() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  return sub_29D4BDEE8(a1, a2, a3, *(v3 + 16), v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_29D4C19BC@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 16);
  v7 = *a1;
  sub_29D4C1D1C(0);
  result = v6(v7, &a1[*(v8 + 48)], &a1[*(v8 + 64)]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_29D4C1A58(unint64_t a1, unint64_t a2)
{
  sub_29D48F51C(0, &qword_2A1A16370, 0x29EDBACB8);
  if (a2 >> 62)
  {
    v4 = sub_29D5B4A6C();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_29D5B494C();
    v6 = 0xD000000000000046;
    v5 = 0x800000029D5BC740;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_29D5B494C();
  v5 = 0x800000029D5BC6F0;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x29ED5E510](v6, v5);
  v8 = sub_29D5B4DFC();
  MEMORY[0x29ED5E510](v8);

  MEMORY[0x29ED5E510](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = sub_29D5B4DFC();
  MEMORY[0x29ED5E510](v9);

  result = sub_29D5B4A3C();
  __break(1u);
  return result;
}

uint64_t sub_29D4C1C54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29D4C1CA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_29D4B3AF4();
    v9 = a4(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D4C1D1C(uint64_t a1)
{
  if (!qword_2A1A163A8)
  {
    sub_29D4B4C4C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1A163A8);
    }
  }
}

uint64_t sub_29D4C1D88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4C1DF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D4C1E70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D4C1EC0(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_29D5B464C();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_29D48F51C(0, &qword_2A1A16370, 0x29EDBACB8);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_29D5B465C();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

void sub_29D4C2000(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_29D5B485C())
    {
LABEL_3:
      sub_29D4C22E4(0);
      v3 = sub_29D5B490C();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_29D5B485C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x29EDCA1A0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = sub_29D4C1A58(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_29D5B464C();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_29D48F51C(0, &qword_2A1A16370, 0x29EDBACB8);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_29D5B465C();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_29D5B464C();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_29D48F51C(0, &qword_2A1A16370, 0x29EDBACB8);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_29D5B465C();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_29D4C22E4(uint64_t a1)
{
  if (!qword_2A1A16258)
  {
    sub_29D48F51C(255, &qword_2A1A16370, 0x29EDBACB8);
    sub_29D4A6A1C(&unk_2A1A16360, &qword_2A1A16370, 0x29EDBACB8);
    v1 = sub_29D5B491C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16258);
    }
  }
}

void sub_29D4C23AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D4C2410(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D4C2458(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_29D5B480C();
    v5 = v4;
    v6 = sub_29D5B489C();
    v8 = v7;
    v9 = MEMORY[0x29ED5EE00](v3, v5, v6, v7);
    sub_29D4C902C(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_29D4C902C(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_29D5B47DC();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_29D4C7CA0(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_29D4C902C(v3, v5, v2 != 0);
  return v12;
}

id sub_29D4C2574()
{
  v1 = OBJC_IVAR____TtC13HealthRecords30HealthRecordsPluginAppDelegate____lazy_storage___notificationCenterDelegate;
  if (*(v0 + OBJC_IVAR____TtC13HealthRecords30HealthRecordsPluginAppDelegate____lazy_storage___notificationCenterDelegate))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13HealthRecords30HealthRecordsPluginAppDelegate____lazy_storage___notificationCenterDelegate);
  }

  else
  {
    v3 = v0;
    sub_29D5B1CBC();
    v4 = sub_29D5B1C8C();
    v5 = sub_29D5B1C4C();

    v6 = [v5 healthStore];
    v7 = objc_allocWithZone(sub_29D5B202C());
    v8 = sub_29D5B201C();
    *(v3 + v1) = v8;
    v2 = v8;
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_29D4C2630(char a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, void *a5)
{
  v9 = sub_29D5B0EDC();
  v85 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D5B200C();
  v84 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C9038(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v17 - 8, v18);
  v20 = &v70 - v19;
  v21 = sub_29D5B2F1C();
  v23 = MEMORY[0x2A1C7C4A8](v21, v22);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    return (a3)(0, 0);
  }

  v78 = a5;
  v80 = v24;
  v81 = v23;
  v82 = a4;
  v83 = a3;
  v27 = sub_29D5B0EFC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v74 = v27;
  v73 = v29;
  v72 = v28 + 56;
  (v29)(v20, 1, 1);
  sub_29D5B1FFC();
  v70 = sub_29D5B2A0C();
  v30 = v85;
  v31 = *(v84 + 8);
  v76 = v13;
  v71 = v31;
  v31(v16, v13);
  sub_29D4C909C(v20, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  sub_29D5B0ECC();
  sub_29D5B0E8C();
  v32 = *(v30 + 8);
  v79 = v12;
  v84 = v9;
  v85 = v30 + 8;
  v77 = v32;
  v32();
  v75 = v26;
  sub_29D5B2F0C();
  sub_29D5B324C();
  v70 = sub_29D5B2C3C();
  v34 = v33;
  v35 = sub_29D5B401C();
  v36 = HKUIJoinStringsForAutomationIdentifier();

  if (v36)
  {
    v37 = sub_29D5B3E5C();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v73(v20, 1, 1, v74);
  sub_29D5B1FFC();
  v41 = sub_29D5B2A0C();
  v43 = v42;
  v71(v16, v76);
  sub_29D4C909C(v20, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  v44 = type metadata accessor for HealthRecordsPluginAppDelegate.CHRAccountsListItem(0);
  v88 = v44;
  v89 = sub_29D4C8844(&qword_2A17A3F70, 255, type metadata accessor for HealthRecordsPluginAppDelegate.CHRAccountsListItem, &unk_29D5B6F24);
  v45 = sub_29D4A0410(v87);
  *v45 = v70;
  v45[1] = v34;
  v45[2] = v37;
  v45[3] = v39;
  v45[4] = v41;
  v45[5] = v43;
  v45[6] = 0;
  v45[7] = 0;
  *(v45 + 64) = 1;
  sub_29D5B0ECC();
  v46 = v78;
  *(v45 + *(v44 + 40)) = v78;
  v47 = v46;
  v48 = v75;
  v49 = sub_29D5B2EFC();
  v51 = v50;
  v52 = *v50;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v51 = v52;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v52 = sub_29D515298(0, v52[2] + 1, 1, v52);
    *v51 = v52;
  }

  v55 = v52[2];
  v54 = v52[3];
  if (v55 >= v54 >> 1)
  {
    *v51 = sub_29D515298((v54 > 1), v55 + 1, 1, v52);
  }

  v56 = v88;
  v57 = v89;
  v58 = sub_29D4C9A30(v87, v88);
  MEMORY[0x2A1C7C4A8](v58, v58);
  v60 = &v70 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v61 + 16))(v60);
  sub_29D4C7EC4(v55, v60, v51, v56, v57);
  sub_29D48F668(v87);
  v49(v86, 0);
  sub_29D4C9038(0, &qword_2A17A3F78, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v62 = v80;
  v63 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_29D5B62A0;
  v65 = v81;
  (*(v62 + 16))(v64 + v63, v48, v81);
  v87[0] = 0x3C53447961727241;
  v87[1] = 0xE800000000000000;
  v66 = v79;
  sub_29D5B0ECC();
  v67 = sub_29D5B0E8C();
  v69 = v68;
  (v77)(v66, v84);
  MEMORY[0x29ED5E510](v67, v69);

  MEMORY[0x29ED5E510](62, 0xE100000000000000);
  sub_29D5B2CEC();
  swift_allocObject();
  sub_29D5B2CDC();
  v83();

  return (*(v62 + 8))(v48, v65);
}

uint64_t sub_29D4C2E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_29D4C2EB8(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_29D5B371C();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B3CCC();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v29 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v16 = dispatch_semaphore_create(0);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;

  v18 = v16;
  sub_29D4C888C(a1, sub_29D4C99D0, v17);

  sub_29D5B3CBC();
  sub_29D5B3CDC();
  v19 = *(v7 + 8);
  v19(v11, v6);
  LOBYTE(a1) = sub_29D5B448C();
  v19(v14, v6);
  if (a1)
  {
    sub_29D5B36CC();
    v20 = sub_29D5B370C();
    v21 = sub_29D5B427C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34 = v23;
      *v22 = 136315138;
      v33 = ObjectType;
      swift_getMetatypeMetadata();
      v24 = sub_29D5B3E7C();
      v26 = sub_29D501890(v24, v25, &v34);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_29D48C000, v20, v21, "%s timed out waiting for healthd to return whether CHR section should be shown", v22, 0xCu);
      sub_29D48F668(v23);
      MEMORY[0x29ED5FB80](v23, -1, -1);
      MEMORY[0x29ED5FB80](v22, -1, -1);
    }

    else
    {
    }

    (*(v31 + 8))(v5, v32);

    return 0;
  }

  else
  {

    swift_beginAccess();
    v27 = *(v15 + 16);
    swift_unknownObjectRetain();
  }

  return v27;
}

uint64_t sub_29D4C3248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return sub_29D5B449C();
}

uint64_t sub_29D4C32BC()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_29D4C3300()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_29D4C333C(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

unint64_t sub_29D4C3394(uint64_t a1)
{
  v1 = sub_29D5B0E8C();
  MEMORY[0x29ED5E510](v1);

  return 0xD000000000000014;
}

uint64_t sub_29D4C33F8(uint64_t a1)
{
  v2 = sub_29D4C8844(&unk_2A17A3FB0, 255, type metadata accessor for HealthRecordsPluginAppDelegate.CHRAccountsListItem, &unk_29D5B6EF4);

  return MEMORY[0x2A1C60910](a1, v2);
}

id sub_29D4C3478()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthRecordsPluginAppDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29D4C34AC(uint64_t a1)
{
  if (a1 == 3)
  {
    return sub_29D4C2574();
  }

  else
  {
    return 0;
  }
}

void sub_29D4C34DC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29D4C7F5C(a1, a3);
  v5 = sub_29D5B2FBC();
  sub_29D574C28(a1, v5, a3);
}

void sub_29D4C3550(void *a1, uint64_t a2, void *a3)
{
  sub_29D4C86FC(a1, a3);
  v5 = sub_29D5B2FBC();
  sub_29D4A6A6C(a1, v5, a3);
}

uint64_t sub_29D4C35C8@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v21 = a3;
  swift_getObjectType();
  v20 = sub_29D5B104C();
  v4 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C8844(&qword_2A17A3E78, v8, type metadata accessor for HealthRecordsPluginAppDelegate, &unk_29D5B6CE8);
  v9 = sub_29D5B32DC();
  v11 = v10;
  sub_29D5B32FC();
  v12 = [a1 uniqueIdentifier];
  v13 = sub_29D5B3E5C();
  v15 = v14;

  sub_29D4C8C00(v13, v15, v9, v11, 0, 0);

  if (sub_29D5B182C())
  {
    sub_29D5B355C();
  }

  v16 = sub_29D5B18BC();
  sub_29D4C2458(v16);

  sub_29D5B188C();
  (*(v4 + 104))(v7, *MEMORY[0x29EDC36E0], v20);
  v17 = v21;
  sub_29D5B334C();
  v18 = sub_29D5B335C();
  return (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
}

uint64_t sub_29D4C3840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  ObjectType = swift_getObjectType();
  v3 = sub_29D5B371C();
  v52 = *(v3 - 8);
  v53 = v3;
  v5 = MEMORY[0x2A1C7C4A8](v3, v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v45 - v9;
  v11 = sub_29D5B104C();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x2A1C7C4A8](v11, v12);
  v48 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D5B200C();
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x2A1C7C4A8](v14, v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C9038(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v18 - 8, v19);
  v21 = &v45 - v20;
  v22 = sub_29D5B353C();
  v23 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v23 + 16);
  v51 = a1;
  v27(v26, a1, v22);
  if ((*(v23 + 88))(v26, v22) == *MEMORY[0x29EDC2E28])
  {
    (*(v23 + 8))(v26, v22);
    v28 = [objc_opt_self() categoryWithID_];
    if (v28)
    {
      v53 = v28;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v52 = [objc_opt_self() bundleForClass_];
      sub_29D5B352C();
      if (!v30)
      {
        v40 = sub_29D5B0EFC();
        (*(*(v40 - 8) + 56))(v21, 1, 1, v40);
        sub_29D5B1FFC();
        sub_29D5B2A0C();
        (*(v45 + 8))(v17, v46);
        sub_29D4C909C(v21, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
      }

      sub_29D4C9038(0, &qword_2A17A3E88, MEMORY[0x29EDC2E38], MEMORY[0x29EDC9E90]);
      v41 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_29D5B62A0;
      v27((v42 + v41), v51, v22);
      (*(v49 + 104))(v48, *MEMORY[0x29EDC36E0], v50);
      v43 = v54;
      sub_29D5B334C();
      v44 = sub_29D5B335C();
      return (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
    }

    else
    {
      sub_29D5B36CC();
      v36 = sub_29D5B370C();
      v37 = sub_29D5B427C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_29D48C000, v36, v37, "failed to create lab results category when generating data type item", v38, 2u);
        MEMORY[0x29ED5FB80](v38, -1, -1);
      }

      v52[1](v10, v53);
      v39 = sub_29D5B335C();
      return (*(*(v39 - 8) + 56))(v54, 1, 1, v39);
    }
  }

  else
  {
    sub_29D5B36CC();
    v31 = sub_29D5B370C();
    v32 = sub_29D5B427C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_29D48C000, v31, v32, "auth identifier is not of health records concept type", v33, 2u);
      MEMORY[0x29ED5FB80](v33, -1, -1);
    }

    v52[1](v7, v53);
    v34 = sub_29D5B335C();
    (*(*(v34 - 8) + 56))(v54, 1, 1, v34);
    return (*(v23 + 8))(v26, v22);
  }
}

void sub_29D4C3F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a4;
  v9 = sub_29D5B371C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36CC();

  v14 = sub_29D5B370C();
  v15 = sub_29D5B429C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v32 = v9;
    v19 = v18;
    v36 = v18;
    aBlock = a1;
    *v17 = 136315138;
    v38 = a2;

    sub_29D5B4CAC();
    v33 = a3;
    v20 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v21 = sub_29D5B3E7C();
    v23 = sub_29D501890(v21, v22, &v36);
    a3 = v33;

    *(v17 + 4) = v23;
    _os_log_impl(&dword_29D48C000, v14, v15, "Starting attachment search for query string: %s", v17, 0xCu);
    sub_29D48F668(v19);
    MEMORY[0x29ED5FB80](v19, -1, -1);
    v24 = v17;
    v5 = v34;
    MEMORY[0x29ED5FB80](v24, -1, -1);

    (*(v10 + 8))(v13, v32);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v25 = [objc_allocWithZone(MEMORY[0x29EDC3E00]) init];
  v26 = sub_29D5B3E1C();
  v27 = swift_allocObject();
  v27[2] = a1;
  v27[3] = a2;
  v28 = v35;
  v27[4] = a3;
  v27[5] = v28;
  v27[6] = v5;
  v41 = sub_29D4C94D8;
  v42 = v27;
  aBlock = MEMORY[0x29EDCA5F8];
  v38 = 1107296256;
  v39 = sub_29D4C5348;
  v40 = &unk_2A2428188;
  v29 = _Block_copy(&aBlock);

  v30 = v5;

  [v25 fetchSpotlightSearchResultsForQueryString:v26 completion:v29];
  _Block_release(v29);
}

uint64_t sub_29D4C42C4(uint64_t a1, id a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, id), uint64_t a6)
{
  v66[1] = a6;
  v67 = a5;
  v10 = sub_29D5B371C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D5B0EDC();
  MEMORY[0x2A1C7C4A8](v15 - 8, v16);
  v72 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a2;
  if (a1)
  {

    v77[0] = sub_29D4C76D4(v18);
    sub_29D4C5670(v77);
    v19 = v77[0];
    v77[0] = MEMORY[0x29EDCA190];
    if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
    {
      goto LABEL_40;
    }

    for (i = *(v19 + 16); i; i = sub_29D5B485C())
    {
      v21 = 0;
      v70 = v19 + 32;
      v71 = v19 & 0xC000000000000001;
      v68 = i;
      v69 = v19;
      while (1)
      {
        if (v71)
        {
          v22 = MEMORY[0x29ED5EF30](v21, v19);
        }

        else
        {
          if (v21 >= *(v19 + 16))
          {
            goto LABEL_39;
          }

          v22 = *(v70 + 8 * v21);
        }

        v23 = v22;
        v24 = __OFADD__(v21, 1);
        v25 = v21 + 1;
        if (v24)
        {
          break;
        }

        v75 = v25;
        v26 = [v22 previewStringMatchRanges];
        sub_29D48F51C(0, &qword_2A17A3EA0, 0x29EDBA168);
        v27 = sub_29D5B402C();

        if (v27 >> 62)
        {
          v28 = sub_29D5B485C();
          v74 = v23;
          if (v28)
          {
LABEL_12:
            v29 = 0;
            v76 = v27 & 0xC000000000000001;
            v30 = v27 & 0xFFFFFFFFFFFFFF8;
            v31 = MEMORY[0x29EDCA190];
            a2 = v27;
            v19 = v28;
            while (1)
            {
              if (v76)
              {
                v32 = MEMORY[0x29ED5EF30](v29, v27);
              }

              else
              {
                if (v29 >= *(v30 + 16))
                {
                  goto LABEL_37;
                }

                v32 = *(v27 + 8 * v29 + 32);
              }

              v33 = v32;
              v34 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
                break;
              }

              v35 = [v32 rangeValue];
              v37 = v36;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v31 = sub_29D5152B4(0, *(v31 + 2) + 1, 1, v31);
              }

              v39 = *(v31 + 2);
              v38 = *(v31 + 3);
              if (v39 >= v38 >> 1)
              {
                v31 = sub_29D5152B4((v38 > 1), v39 + 1, 1, v31);
              }

              *(v31 + 2) = v39 + 1;
              v40 = &v31[16 * v39];
              *(v40 + 4) = v35;
              *(v40 + 5) = v37;
              ++v29;
              v41 = v34 == v19;
              v27 = a2;
              if (v41)
              {
                goto LABEL_27;
              }
            }

            __break(1u);
LABEL_37:
            __break(1u);
            break;
          }
        }

        else
        {
          v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v74 = v23;
          if (v28)
          {
            goto LABEL_12;
          }
        }

LABEL_27:

        v42 = v74;
        v43 = [v74 title];
        sub_29D5B3E5C();

        v44 = [v42 previewString];
        if (v44)
        {
          v45 = v44;
          sub_29D5B3E5C();
        }

        v46 = [v42 medicalRecord];
        v47 = [v42 attachmentUUID];
        sub_29D5B0EBC();

        sub_29D5B1CBC();
        v48 = sub_29D5B1C8C();
        sub_29D5B1C4C();

        sub_29D5B210C();
        swift_allocObject();
        sub_29D5B20FC();

        MEMORY[0x29ED5E5E0]();
        if (*((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_29D5B408C();
        }

        sub_29D5B40AC();
        v19 = v69;
        v21 = v75;
        a2 = v73;
        if (v75 == v68)
        {
          v64 = v77[0];
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      ;
    }

    v64 = MEMORY[0x29EDCA190];
LABEL_42:

    v65 = sub_29D4C4B5C(v64);

    v67(v65, a2);
  }

  else
  {
    sub_29D5B36CC();

    v49 = a2;
    v50 = sub_29D5B370C();
    v51 = sub_29D5B429C();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v78 = v53;
      *v52 = 136315394;
      v77[0] = a3;
      v77[1] = a4;

      sub_29D5B4CAC();
      v54 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_29D5B47BC();
      swift_unknownObjectRelease();
      v55 = sub_29D5B3E7C();
      v57 = sub_29D501890(v55, v56, &v78);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2080;
      v77[0] = v73;
      v58 = v73;
      sub_29D4C94F0(0);
      v59 = sub_29D5B3E7C();
      v61 = sub_29D501890(v59, v60, &v78);

      *(v52 + 14) = v61;
      _os_log_impl(&dword_29D48C000, v50, v51, "No search results returned for “%s” from the spotlight indexer, error: %s", v52, 0x16u);
      swift_arrayDestroy();
      v62 = v53;
      a2 = v73;
      MEMORY[0x29ED5FB80](v62, -1, -1);
      MEMORY[0x29ED5FB80](v52, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    return (v67)(MEMORY[0x29EDCA190], a2);
  }
}

uint64_t sub_29D4C49B4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 medicalRecord];
  v5 = [v4 sortDate];

  v6 = [v3 medicalRecord];
  v7 = [v6 sortDate];

  sub_29D48F51C(0, &qword_2A17A3ED0, 0x29EDBAD90);
  if (sub_29D5B465C())
  {
    v8 = [v2 title];
    v9 = sub_29D5B3E5C();
    v11 = v10;

    v12 = [v3 title];
    v13 = sub_29D5B3E5C();
    v15 = v14;

    if (v9 == v13 && v11 == v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = sub_29D5B4C7C();
    }
  }

  else
  {
    v17 = [v7 compare_];

    v16 = v17 == -1;
  }

  return v16 & 1;
}

void *sub_29D4C4B5C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_29D5B485C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x29EDCA190];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x29EDCA190];
  result = sub_29D4C6CB0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x29ED5EF30](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_29D4C6CB0((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = sub_29D5B210C();
        v15 = sub_29D4C8844(&qword_2A17A3EA8, 255, MEMORY[0x29EDC4168], MEMORY[0x29EDC4160]);
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_29D497868(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_29D4C6CB0((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = sub_29D5B210C();
        v15 = sub_29D4C8844(&qword_2A17A3EA8, 255, MEMORY[0x29EDC4168], MEMORY[0x29EDC4160]);
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        sub_29D497868(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D4C4D84(uint64_t a1)
{
  v2 = type metadata accessor for SharedConceptCodedValue(0);
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x29EDCA190];
  if (v7)
  {
    v18 = MEMORY[0x29EDCA190];
    sub_29D4C6D64(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_29D4C9684(v9, v6);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_29D4C6D64((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_29D4C8844(&qword_2A17A3EE8, 255, type metadata accessor for SharedConceptCodedValue, &unk_29D5B8DB0);
      v13 = sub_29D4A0410(&v15);
      sub_29D4C9684(v6, v13);
      *(v8 + 16) = v12 + 1;
      sub_29D497868(&v15, v8 + 40 * v12 + 32);
      sub_29D4C96E8(v6);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_29D4C4FD0(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), uint64_t (*a3)(void), void (*a4)(void *, unint64_t))
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x29EDCA190];
  if (v4)
  {
    v28 = MEMORY[0x29EDCA190];
    a2(0, v4, 0);
    v5 = v28;
    v9 = (a1 + 32);
    do
    {
      v10 = v9[2];
      v11 = v9[4];
      v25 = v9[3];
      v26 = v11;
      v27 = *(v9 + 10);
      v12 = v9[1];
      v22 = *v9;
      v23 = v12;
      v24 = v10;
      sub_29D4B4604(&v22, v21);
      v28 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        a2(v13 > 1, v14 + 1, 1);
        v5 = v28;
      }

      v21[3] = &type metadata for SharedConceptFormattedRecord;
      v21[4] = a3();
      v15 = swift_allocObject();
      v21[0] = v15;
      v16 = v25;
      v17 = v26;
      *(v15 + 48) = v24;
      *(v15 + 64) = v16;
      *(v15 + 80) = v17;
      *(v15 + 96) = v27;
      v18 = v23;
      *(v15 + 16) = v22;
      *(v15 + 32) = v18;
      *(v5 + 16) = v14 + 1;
      a4(v21, v5 + 40 * v14 + 32);
      v9 = (v9 + 88);
      --v4;
    }

    while (v4);
  }

  return v5;
}

char *sub_29D4C514C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_29D5B485C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x29EDCA190];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x29EDCA190];
  result = sub_29D4C6E80(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x29ED5EF30](i, a1);
        sub_29D48F51C(0, &unk_2A17A3F00, 0x29EDC44D0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_29D4C6E80((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_29D4C97AC(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_29D48F51C(0, &unk_2A17A3F00, 0x29EDC44D0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_29D4C6E80((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_29D4C97AC(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D4C5348(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_29D48F51C(0, &qword_2A17A3E90, 0x29EDC3E18);
    v4 = sub_29D5B402C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_29D4C53EC()
{
  v0 = sub_29D5B200C();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDB9C70];
  sub_29D4C9038(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v13 - v8;
  v10 = sub_29D5B0EFC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_29D5B1FCC();
  v11 = sub_29D5B2A0C();
  (*(v1 + 8))(v4, v0);
  sub_29D4C909C(v9, &qword_2A1A19588, v5);
  return v11;
}

uint64_t sub_29D4C55D8()
{
  sub_29D5B20EC();
  sub_29D4C8844(&qword_2A1A17348, 255, MEMORY[0x29EDC4158], MEMORY[0x29EDC4150]);
  return sub_29D5B431C();
}

uint64_t sub_29D4C5670(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_29D4C7C8C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_29D4C56EC(v6);
  return sub_29D5B499C();
}

void sub_29D4C56EC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_29D5B4C3C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x29EDCA190];
      }

      else
      {
        sub_29D48F51C(0, &qword_2A17A3E90, 0x29EDC3E18);
        v6 = sub_29D5B409C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_29D4C5A9C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_29D4C5800(0, v2, 1, a1);
  }
}

void sub_29D4C5800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    v8 = &off_29F351000;
    v36 = *a4;
    sub_29D48F51C(0, &qword_2A17A3ED0, 0x29EDBAD90);
LABEL_6:
    v32 = v6;
    v33 = v4;
    v9 = *(v5 + 8 * v4);
    v31 = v7;
    while (1)
    {
      v10 = *v6;
      v11 = v9;
      v12 = v10;
      v13 = [v11 v8[357]];
      v14 = [v13 sortDate];

      v15 = [v12 v8[357]];
      v16 = v14;
      v17 = [v15 sortDate];

      if (sub_29D5B465C())
      {
        v34 = v16;
        v35 = v11;
        v18 = [v11 title];
        v19 = sub_29D5B3E5C();
        v21 = v20;

        v22 = [v12 title];
        v23 = sub_29D5B3E5C();
        v25 = v24;

        if (v19 == v23 && v21 == v25)
        {

          v5 = v36;
          v8 = &off_29F351000;
LABEL_5:
          v4 = v33 + 1;
          v6 = v32 + 8;
          v7 = v31 - 1;
          if (v33 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        v26 = sub_29D5B4C7C();

        v5 = v36;
        v8 = &off_29F351000;
        if ((v26 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v27 = [v17 compare_];

        v5 = v36;
        if (v27 != -1)
        {
          goto LABEL_5;
        }
      }

      if (!v5)
      {
        break;
      }

      v28 = *v6;
      v9 = *(v6 + 8);
      *v6 = v9;
      *(v6 + 8) = v28;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_29D4C5A9C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x29EDCA190];
    while (1)
    {
      v11 = v9;
      v9 = (v9 + 1);
      v133 = v8;
      if (v9 < v8)
      {
        v12 = *v6;
        v13 = *(*v6 + 8 * v9);
        v139 = *(*v6 + 8 * v11);
        v14 = v139;
        v140 = v13;
        v15 = v13;
        v16 = v14;
        v17 = v5;
        v137 = sub_29D4C49B4(&v140, &v139);
        if (v5)
        {

          return;
        }

        v9 = (v11 + 2);
        if (v11 + 2 < v133)
        {
          v131 = (v11 + 2);
          v123 = v10;
          v121 = v11;
          v18 = (v12 + 8 * v11 + 16);
          v19 = v133;
          do
          {
            v21 = *(v18 - 1);
            v22 = *v18;
            v23 = v21;
            v24 = [v22 medicalRecord];
            v25 = [v24 sortDate];

            v26 = [v23 medicalRecord];
            v27 = [v26 sortDate];

            sub_29D48F51C(0, &qword_2A17A3ED0, 0x29EDBAD90);
            if (sub_29D5B465C())
            {
              v28 = [v22 title];
              v29 = sub_29D5B3E5C();
              v31 = v30;

              v135 = v23;
              v32 = [v23 title];
              v33 = sub_29D5B3E5C();
              v35 = v34;

              if (v29 == v33 && v31 == v35)
              {
                v36 = 0;
              }

              else
              {
                v36 = sub_29D5B4C7C();
              }

              v19 = v133;

              if ((v137 ^ v36))
              {
LABEL_16:
                v10 = v123;
                v5 = v17;
                v6 = a3;
                v7 = a1;
                v9 = v131;
                goto LABEL_18;
              }
            }

            else
            {
              v20 = [v27 compare_];

              if (((v137 ^ (v20 != -1)) & 1) == 0)
              {
                goto LABEL_16;
              }
            }

            ++v18;
            v131 = (v131 + 1);
          }

          while (v19 != v131);
          v9 = v19;
          v10 = v123;
          v5 = v17;
          v6 = a3;
          v7 = a1;
LABEL_18:
          v11 = v121;
        }

        if (v137)
        {
          if (v9 < v11)
          {
            goto LABEL_135;
          }

          if (v11 < v9)
          {
            v37 = 8 * v9 - 8;
            v38 = 8 * v11;
            v39 = v9;
            v40 = v11;
            do
            {
              v39 = (v39 - 1);
              if (v40 != v39)
              {
                v41 = *v6;
                if (!*v6)
                {
                  goto LABEL_139;
                }

                v42 = *(v41 + v38);
                *(v41 + v38) = *(v41 + v37);
                *(v41 + v37) = v42;
              }

              ++v40;
              v37 -= 8;
              v38 += 8;
            }

            while (v40 < v39);
          }
        }
      }

      v43 = v6[1];
      if (v9 >= v43)
      {
        goto LABEL_51;
      }

      if (__OFSUB__(v9, v11))
      {
        goto LABEL_132;
      }

      if (v9 - v11 >= a4)
      {
        goto LABEL_51;
      }

      if (__OFADD__(v11, a4))
      {
        goto LABEL_133;
      }

      if (v11 + a4 >= v43)
      {
        v44 = v6[1];
      }

      else
      {
        v44 = (v11 + a4);
      }

      if (v44 < v11)
      {
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

      if (v9 == v44)
      {
        goto LABEL_51;
      }

      v124 = v10;
      v125 = v5;
      v45 = *v6;
      sub_29D48F51C(0, &qword_2A17A3ED0, 0x29EDBAD90);
      v46 = v45 + 8 * v9 - 8;
      v122 = v11;
      v47 = v11 - v9;
      v128 = v44;
      v138 = v45;
LABEL_39:
      v130 = v46;
      v132 = v9;
      v48 = *(v45 + 8 * v9);
      v129 = v47;
      v49 = v47;
      v50 = v46;
      while (1)
      {
        v51 = *v50;
        v52 = v48;
        v53 = v51;
        v54 = [v52 medicalRecord];
        v55 = [v54 sortDate];

        v56 = [v53 medicalRecord];
        v57 = [v56 sortDate];

        if (sub_29D5B465C())
        {
          break;
        }

        v67 = [v57 compare_];

        v45 = v138;
        if (v67 != -1)
        {
          goto LABEL_38;
        }

LABEL_46:
        if (!v45)
        {
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        v68 = *v50;
        v48 = *(v50 + 8);
        *v50 = v48;
        *(v50 + 8) = v68;
        v50 -= 8;
        if (__CFADD__(v49++, 1))
        {
          goto LABEL_38;
        }
      }

      v134 = v52;
      v58 = [v52 title];
      v59 = sub_29D5B3E5C();
      v61 = v60;

      v136 = v53;
      v62 = [v53 title];
      v63 = sub_29D5B3E5C();
      v65 = v64;

      if (v59 != v63 || v61 != v65)
      {
        break;
      }

      v45 = v138;
LABEL_38:
      v9 = (v132 + 1);
      v46 = v130 + 8;
      v47 = v129 - 1;
      if ((v132 + 1) != v128)
      {
        goto LABEL_39;
      }

      v9 = v128;
      v10 = v124;
      v5 = v125;
      v6 = a3;
      v11 = v122;
      v7 = a1;
LABEL_51:
      if (v9 < v11)
      {
        goto LABEL_131;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_29D514BF8(0, *(v10 + 2) + 1, 1, v10);
      }

      v71 = *(v10 + 2);
      v70 = *(v10 + 3);
      v72 = v71 + 1;
      if (v71 >= v70 >> 1)
      {
        v10 = sub_29D514BF8((v70 > 1), v71 + 1, 1, v10);
      }

      *(v10 + 2) = v72;
      v73 = &v10[16 * v71];
      *(v73 + 4) = v11;
      *(v73 + 5) = v9;
      v74 = *v7;
      if (!v74)
      {
        goto LABEL_141;
      }

      if (v71)
      {
        while (2)
        {
          v11 = v72 - 1;
          if (v72 >= 4)
          {
            v79 = &v10[16 * v72 + 32];
            v80 = *(v79 - 64);
            v81 = *(v79 - 56);
            v85 = __OFSUB__(v81, v80);
            v82 = v81 - v80;
            if (v85)
            {
              goto LABEL_118;
            }

            v84 = *(v79 - 48);
            v83 = *(v79 - 40);
            v85 = __OFSUB__(v83, v84);
            v77 = v83 - v84;
            v78 = v85;
            if (v85)
            {
              goto LABEL_119;
            }

            v86 = &v10[16 * v72];
            v88 = *v86;
            v87 = *(v86 + 1);
            v85 = __OFSUB__(v87, v88);
            v89 = v87 - v88;
            if (v85)
            {
              goto LABEL_121;
            }

            v85 = __OFADD__(v77, v89);
            v90 = v77 + v89;
            if (v85)
            {
              goto LABEL_124;
            }

            if (v90 >= v82)
            {
              v108 = &v10[16 * v11 + 32];
              v110 = *v108;
              v109 = *(v108 + 1);
              v85 = __OFSUB__(v109, v110);
              v111 = v109 - v110;
              if (v85)
              {
                goto LABEL_128;
              }

              if (v77 < v111)
              {
                v11 = v72 - 2;
              }
            }

            else
            {
LABEL_71:
              if (v78)
              {
                goto LABEL_120;
              }

              v91 = &v10[16 * v72];
              v93 = *v91;
              v92 = *(v91 + 1);
              v94 = __OFSUB__(v92, v93);
              v95 = v92 - v93;
              v96 = v94;
              if (v94)
              {
                goto LABEL_123;
              }

              v97 = &v10[16 * v11 + 32];
              v99 = *v97;
              v98 = *(v97 + 1);
              v85 = __OFSUB__(v98, v99);
              v100 = v98 - v99;
              if (v85)
              {
                goto LABEL_126;
              }

              if (__OFADD__(v95, v100))
              {
                goto LABEL_127;
              }

              if (v95 + v100 < v77)
              {
                goto LABEL_85;
              }

              if (v77 < v100)
              {
                v11 = v72 - 2;
              }
            }
          }

          else
          {
            if (v72 == 3)
            {
              v75 = *(v10 + 4);
              v76 = *(v10 + 5);
              v85 = __OFSUB__(v76, v75);
              v77 = v76 - v75;
              v78 = v85;
              goto LABEL_71;
            }

            v101 = &v10[16 * v72];
            v103 = *v101;
            v102 = *(v101 + 1);
            v85 = __OFSUB__(v102, v103);
            v95 = v102 - v103;
            v96 = v85;
LABEL_85:
            if (v96)
            {
              goto LABEL_122;
            }

            v104 = &v10[16 * v11];
            v106 = *(v104 + 4);
            v105 = *(v104 + 5);
            v85 = __OFSUB__(v105, v106);
            v107 = v105 - v106;
            if (v85)
            {
              goto LABEL_125;
            }

            if (v107 < v95)
            {
              break;
            }
          }

          v112 = v11 - 1;
          if (v11 - 1 >= v72)
          {
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
            goto LABEL_134;
          }

          if (!*v6)
          {
            goto LABEL_138;
          }

          v113 = *&v10[16 * v112 + 32];
          v114 = *&v10[16 * v11 + 40];
          sub_29D4C641C((*v6 + 8 * v113), (*v6 + 8 * *&v10[16 * v11 + 32]), (*v6 + 8 * v114), v74);
          if (v5)
          {
            goto LABEL_113;
          }

          if (v114 < v113)
          {
            goto LABEL_116;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_29D4C6A64(v10);
          }

          if (v112 >= *(v10 + 2))
          {
            goto LABEL_117;
          }

          v115 = &v10[16 * v112];
          *(v115 + 4) = v113;
          *(v115 + 5) = v114;
          v141 = v10;
          sub_29D4C69D8(v11);
          v10 = v141;
          v72 = *(v141 + 16);
          if (v72 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v8 = v6[1];
      v7 = a1;
      if (v9 >= v8)
      {
        goto LABEL_103;
      }
    }

    v66 = sub_29D5B4C7C();

    v45 = v138;
    if ((v66 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_46;
  }

  v10 = MEMORY[0x29EDCA190];
LABEL_103:
  v9 = *v7;
  if (!*v7)
  {
    goto LABEL_142;
  }

  v11 = v10;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_136:
    v11 = sub_29D4C6A64(v11);
  }

  v141 = v11;
  v116 = *(v11 + 16);
  if (v116 < 2)
  {
LABEL_113:

    return;
  }

  while (*v6)
  {
    v117 = *(v11 + 16 * v116);
    v118 = *(v11 + 16 * (v116 - 1) + 40);
    sub_29D4C641C((*v6 + 8 * v117), (*v6 + 8 * *(v11 + 16 * (v116 - 1) + 32)), (*v6 + 8 * v118), v9);
    if (v5)
    {
      goto LABEL_113;
    }

    if (v118 < v117)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_29D4C6A64(v11);
    }

    if (v116 - 2 >= *(v11 + 16))
    {
      goto LABEL_130;
    }

    v119 = (v11 + 16 * v116);
    *v119 = v117;
    v119[1] = v118;
    v141 = v11;
    sub_29D4C69D8(v116 - 1);
    v11 = v141;
    v116 = *(v141 + 16);
    if (v116 <= 1)
    {
      goto LABEL_113;
    }
  }

LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_29D4C641C(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v66 = &v4[v12];
    if (v10 >= 8)
    {
      v34 = __src;
      if (v6 > __src)
      {
        v58 = v4;
LABEL_32:
        v35 = v6 - 1;
        v36 = v5 - 1;
        v37 = v66;
        v60 = v6;
        v56 = v6 - 1;
        do
        {
          v63 = v37 - 1;
          v65 = v36;
          v38 = *v35;
          v39 = *(v37 - 1);
          v40 = v38;
          v41 = [v39 medicalRecord];
          v42 = [v41 sortDate];

          v43 = [v40 medicalRecord];
          v44 = [v43 sortDate];

          sub_29D48F51C(0, &qword_2A17A3ED0, 0x29EDBAD90);
          if (sub_29D5B465C())
          {
            v45 = [v39 title];
            v46 = sub_29D5B3E5C();
            v48 = v47;

            v49 = [v40 title];
            v50 = sub_29D5B3E5C();
            v52 = v51;

            if (v46 == v50 && v48 == v52)
            {

              v4 = v58;
              v6 = v60;
              v34 = __src;
            }

            else
            {
              v54 = sub_29D5B4C7C();

              v4 = v58;
              v6 = v60;
              v34 = __src;
              if (v54)
              {
LABEL_43:
                v5 = v65;
                if (v65 + 1 != v6)
                {
                  *v65 = *v56;
                }

                if (v66 <= v4 || (v6 = v56, v56 <= v34))
                {
                  v6 = v56;
                  goto LABEL_50;
                }

                goto LABEL_32;
              }
            }
          }

          else
          {
            v53 = [v44 compare_];

            if (v53 == -1)
            {
              goto LABEL_43;
            }
          }

          v37 = v63;
          if (v65 + 1 != v66)
          {
            *v65 = *v63;
          }

          v36 = v65 - 1;
          v66 = v63;
          v35 = v56;
        }

        while (v63 > v4);
        v66 = v63;
      }
    }
  }

  else
  {
    v13 = __src;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v66 = &v4[v9];
    if (v7 >= 8 && v6 < v5)
    {
      v64 = v5;
      do
      {
        v14 = *v4;
        v15 = *v6;
        v16 = v14;
        v17 = [v15 medicalRecord];
        v18 = [v17 sortDate];

        v19 = [v16 medicalRecord];
        v20 = [v19 sortDate];

        sub_29D48F51C(0, &qword_2A17A3ED0, 0x29EDBAD90);
        if (sub_29D5B465C())
        {
          v59 = v6;
          v61 = v13;
          v57 = v4;
          v21 = [v15 title];
          v22 = sub_29D5B3E5C();
          v24 = v23;

          v25 = [v16 title];
          v26 = sub_29D5B3E5C();
          v28 = v27;

          if (v22 == v26 && v24 == v28)
          {

            v4 = v57;
            v6 = v59;
            v13 = v61;
LABEL_17:
            v30 = v4;
            v31 = v13 == v4++;
            v32 = v64;
            if (v31)
            {
              goto LABEL_19;
            }

LABEL_18:
            *v13 = *v30;
            goto LABEL_19;
          }

          v33 = sub_29D5B4C7C();

          v4 = v57;
          v6 = v59;
          v13 = v61;
          if ((v33 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v29 = [v20 compare_];

          if (v29 != -1)
          {
            goto LABEL_17;
          }
        }

        v30 = v6;
        v31 = v13 == v6++;
        v32 = v64;
        if (!v31)
        {
          goto LABEL_18;
        }

LABEL_19:
        ++v13;
      }

      while (v4 < v66 && v6 < v32);
    }

    v6 = v13;
  }

LABEL_50:
  if (v6 != v4 || v6 >= (v4 + ((v66 - v4 + (v66 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v66 - v4));
  }

  return 1;
}

uint64_t sub_29D4C69D8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_29D4C6A64(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_29D4C6A78(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29D4C9038(0, &qword_2A17A3ED8, sub_29D4C962C, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_29D4C6BA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D4C6EF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29D4C6BC0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D4C73D8(a1, a2, a3, *v3, &unk_2A17A3F60, type metadata accessor for SharedConceptFeedItemData, type metadata accessor for SharedConceptFeedItemData);
  *v3 = result;
  return result;
}

void *sub_29D4C6C10(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D4C73D8(a1, a2, a3, *v3, &qword_2A17A3D70, MEMORY[0x29EDC3828], MEMORY[0x29EDC3828]);
  *v3 = result;
  return result;
}

void *sub_29D4C6C60(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D4C73D8(a1, a2, a3, *v3, &qword_2A1A195F0, MEMORY[0x29EDC3840], MEMORY[0x29EDC3840]);
  *v3 = result;
  return result;
}

void *sub_29D4C6CB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D4C7160(a1, a2, a3, *v3, sub_29D4C9558, &qword_2A17A3EB8, MEMORY[0x29EDC1910]);
  *v3 = result;
  return result;
}

void *sub_29D4C6CF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D4C7014(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29D4C6D14(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D4C73D8(a1, a2, a3, *v3, &qword_2A17A3F58, type metadata accessor for RecordKindFeedItemData, type metadata accessor for RecordKindFeedItemData);
  *v3 = result;
  return result;
}

void *sub_29D4C6D64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D4C7160(a1, a2, a3, *v3, sub_29D4C9744, &qword_2A17A3EF8, MEMORY[0x29EDC41F0]);
  *v3 = result;
  return result;
}

void *sub_29D4C6DA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D4C7160(a1, a2, a3, *v3, sub_29D4C9934, &unk_2A17A3F48, MEMORY[0x29EDC4258]);
  *v3 = result;
  return result;
}

void *sub_29D4C6DEC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D4C7160(a1, a2, a3, *v3, sub_29D4C9878, &qword_2A17A3F30, MEMORY[0x29EDC41A8]);
  *v3 = result;
  return result;
}

void *sub_29D4C6E30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D4C73D8(a1, a2, a3, *v3, &qword_2A1A195D0, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FB8]);
  *v3 = result;
  return result;
}

char *sub_29D4C6E80(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D4C72AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29D4C6EA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D4C73D8(a1, a2, a3, *v3, &qword_2A17A3F18, type metadata accessor for LabNameWithDate, type metadata accessor for LabNameWithDate);
  *v3 = result;
  return result;
}

char *sub_29D4C6EF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29D48E500(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29D4C7014(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29D4C9038(0, &qword_2A1A195C0, sub_29D4C999C, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D4C999C(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29D4C7160(void *result, int64_t a2, char a3, void *a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    a5(0);
    v15 = swift_allocObject();
    v16 = j__malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x29EDCA190];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[5 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D4A02FC(0, a6, a7);
    swift_arrayInitWithCopy();
  }

  return v15;
}

char *sub_29D4C72AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29D48E500(0, &qword_2A17A4EC0, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29D4C73D8(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29D4C9038(0, a5, a6, MEMORY[0x29EDC9E90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void (*sub_29D4C75CC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED5EF30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_29D4C9C70;
  }

  __break(1u);
  return result;
}

void (*sub_29D4C764C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED5EF30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_29D4C76CC;
  }

  __break(1u);
  return result;
}

unint64_t sub_29D4C76D4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_29D5B485C();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x29EDCA190];
  }

  v4 = v3;
  v5 = sub_29D5173F0();
  sub_29D4C7918(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_29D4C7768(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29D5B485C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29D5B485C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29D4C9A80(0);
          sub_29D4C8844(&unk_2A17A3F90, 255, sub_29D4C9A80, MEMORY[0x29EDC9A88]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D4C75CC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29D48F51C(0, &qword_2A17A3F80, 0x29EDBA008);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D4C7918(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29D5B485C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29D5B485C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29D4C95C4(0);
          sub_29D4C8844(&qword_2A17A3EC8, 255, sub_29D4C95C4, MEMORY[0x29EDC9A88]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D4C75CC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29D48F51C(0, &qword_2A17A3E90, 0x29EDC3E18);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D4C7AC8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29D5B485C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29D5B485C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29D4C97BC(0);
          sub_29D4C8844(&qword_2A17A3F10, 255, sub_29D4C97BC, MEMORY[0x29EDC9A88]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D4C75CC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29D48F51C(0, &qword_2A1A16320, 0x29EDBAE68);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_29D4C7CA0(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x29ED5EE50](a1, a2, v7);
      sub_29D48F51C(0, &qword_2A1A16370, 0x29EDBACB8);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_29D48F51C(0, &qword_2A1A16370, 0x29EDBACB8);
    if (sub_29D5B483C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_29D5B484C();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_29D5B464C();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_29D5B465C();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_29D4C7EC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_29D4A0410(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_29D497868(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_29D4C7F5C(uint64_t a1, void *a2)
{
  v3 = sub_29D5B198C();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v23 - v10;
  sub_29D5B18FC();
  swift_allocObject();
  sub_29D5B18EC();
  sub_29D5B18DC();
  (*(v4 + 16))(v8, v11, v3);
  v12 = (*(v4 + 88))(v8, v3);
  if (v12 == *MEMORY[0x29EDC3E50])
  {
    goto LABEL_2;
  }

  if (v12 == *MEMORY[0x29EDC3E30])
  {
    (*(v4 + 96))(v8, v3);
    v13 = sub_29D5B0EDC();
    (*(*(v13 - 8) + 8))(v8, v13);
    goto LABEL_5;
  }

  if (v12 == *MEMORY[0x29EDC3E38])
  {
LABEL_2:
    (*(v4 + 8))(v8, v3);
LABEL_5:
    sub_29D499EC0(a2, a2[3]);
    sub_29D5B2D8C();

    return (*(v4 + 8))(v11, v3);
  }

  if (v12 == *MEMORY[0x29EDC3E60])
  {
    (*(v4 + 8))(v11, v3);

    (*(v4 + 96))(v8, v3);
    sub_29D4C8544(0);

LABEL_10:
    v15 = sub_29D5B0EDC();
    return (*(*(v15 - 8) + 8))(v8, v15);
  }

  if (v12 == *MEMORY[0x29EDC3E68] || v12 == *MEMORY[0x29EDC3E40] || v12 == *MEMORY[0x29EDC3E78])
  {
    v16 = *(v4 + 8);
    v16(v11, v3);

    return (v16)(v8, v3);
  }

  if (v12 == *MEMORY[0x29EDC3E70])
  {
    (*(v4 + 8))(v11, v3);

    (*(v4 + 96))(v8, v3);

    sub_29D4C8690(0);
    v18 = *(v17 + 48);
    v19 = sub_29D5B0EDC();
    return (*(*(v19 - 8) + 8))(v8 + v18, v19);
  }

  if (v12 == *MEMORY[0x29EDC3E58])
  {
    (*(v4 + 8))(v11, v3);

    (*(v4 + 96))(v8, v3);

    sub_29D4C85DC(0);
    return sub_29D4C909C(v8 + *(v20 + 48), &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  }

  if (v12 == *MEMORY[0x29EDC3E88])
  {
    (*(v4 + 8))(v11, v3);

    (*(v4 + 96))(v8, v3);
    goto LABEL_10;
  }

  if (v12 == *MEMORY[0x29EDC3E80] || v12 == *MEMORY[0x29EDC3E90])
  {
    (*(v4 + 8))(v11, v3);

    (*(v4 + 96))(v8, v3);
    v15 = sub_29D5B0D5C();
    return (*(*(v15 - 8) + 8))(v8, v15);
  }

  if (v12 == *MEMORY[0x29EDC3E48])
  {
    (*(v4 + 8))(v11, v3);
  }

  v21 = *MEMORY[0x29EDC3E98];
  v22 = v12;
  sub_29D499EC0(a2, a2[3]);
  sub_29D5B2D8C();

  v16 = *(v4 + 8);
  result = (v16)(v11, v3);
  if (v22 != v21)
  {
    return (v16)(v8, v3);
  }

  return result;
}