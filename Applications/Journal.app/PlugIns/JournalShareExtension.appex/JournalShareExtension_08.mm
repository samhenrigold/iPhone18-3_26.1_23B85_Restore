double *sub_1000CD4C0()
{
  v1 = sub_1000FF874();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 journals];
  if (!v5 || (v6 = v5, sub_1000FFB84(), v7 = sub_1000FFB74(), v8 = [v6 filteredSetUsingPredicate:v7], v6, v7, v9 = sub_100101414(), v8, sub_1000D0110(v9), v11 = v10, , !v11))
  {
    if (_swiftEmptyArrayStorage >> 62 && sub_100101DA4())
    {
      sub_100033378(_swiftEmptyArrayStorage);
      v11 = v20;
    }

    else
    {

      v11 = _swiftEmptySetSingleton;
    }
  }

  sub_1000CC7BC(v11);
  v13 = v12;

  if (!*(v13 + 2))
  {
    sub_1000FFB84();
    sub_1000FFB64();
    v14 = sub_1000FF814();
    v16 = v15;
    (*(v2 + 8))(v4, v1);
    v17 = *(v13 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v13;
    if (!isUniquelyReferenced_nonNull_native || v17 >= *(v13 + 3) >> 1)
    {
      v13 = sub_10000F02C(isUniquelyReferenced_nonNull_native, v17 + 1, 1, v13);
      v22 = v13;
    }

    sub_10005092C(0, 0, 1, v14, v16);
  }

  return v13;
}

double *sub_1000CD710()
{
  v1 = v0;
  v2 = sub_100007210(&qword_10014C368, &qword_10010BF80);
  __chkstk_darwin(v2);
  v4 = (&v85 - v3);
  v98 = sub_100007210(&qword_10014C378, &qword_10010BF90);
  v5 = *(v98 - 8);
  __chkstk_darwin(v98);
  v118 = &v85 - v6;
  v115 = sub_1001005F4();
  v124 = *(v115 - 8);
  __chkstk_darwin(v115);
  v97 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_100007210(&qword_10014C3B0, &qword_10010BFB8);
  __chkstk_darwin(v101);
  v100 = (&v85 - v8);
  v99 = sub_100007210(&qword_10014C3C0, &qword_10010E1C0);
  v120 = *(v99 - 8);
  __chkstk_darwin(v99);
  v122 = &v85 - v9;
  v10 = sub_100100554();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v112 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_100007210(&qword_10014C268, &qword_10010BEB0);
  __chkstk_darwin(v104);
  v103 = (&v85 - v13);
  v102 = sub_100007210(&qword_10014C278, &qword_10010BEC0);
  v14 = *(v102 - 8);
  __chkstk_darwin(v102);
  v16 = &v85 - v15;
  v17 = sub_100100464();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v113 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [v1 assets];
  if (v20)
  {
    v96 = v4;
    v21 = v20;
    v22 = [v20 allObjects];

    v23 = sub_1001011D4();
    v24 = sub_1000B8328(v23);

    if (v24)
    {
      v25 = v24 & 0xFFFFFFFFFFFFFF8;
      v123 = v24 & 0xFFFFFFFFFFFFFF8;
      if (v24 >> 62)
      {
LABEL_61:
        v26 = sub_100101DA4();
        v25 = v123;
        if (v26)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26)
        {
LABEL_5:
          v90 = v2;
          v2 = 0;
          v121 = v24 & 0xC000000000000001;
          v95 = (v14 + 56);
          v117 = (v18 + 48);
          v109 = (v18 + 8);
          v110 = (v18 + 32);
          v94 = (v18 + 56);
          v92 = (v120 + 56);
          v114 = (v11 + 6);
          v105 = (v11 + 1);
          v106 = (v11 + 4);
          v91 = (v11 + 7);
          v89 = (v5 + 56);
          v111 = (v124 + 48);
          v88 = (v124 + 56);
          v87 = (v124 + 32);
          v11 = _swiftEmptyArrayStorage;
          v86 = (v124 + 8);
          v107 = xmmword_10010BC70;
          v116 = v10;
          v108 = v16;
          v124 = v17;
          v119 = v24;
          v120 = v26;
          while (1)
          {
            v93 = v11;
            v14 = v2;
            while (1)
            {
              if (v121)
              {
                v27 = sub_100101CA4();
              }

              else
              {
                if (v14 >= *(v25 + 16))
                {
                  goto LABEL_60;
                }

                v27 = *&v24[v14 + 4];
              }

              v24 = v27;
              v2 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                __break(1u);
LABEL_60:
                __break(1u);
                goto LABEL_61;
              }

              v18 = v27;
              v11 = sub_100044DCC();
              type metadata accessor for WorkoutIconAsset(0);
              v28 = swift_dynamicCastClass();
              if (v28)
              {
                v29 = OBJC_IVAR____TtC21JournalShareExtension16WorkoutIconAsset_metadata;
                if (*(v28 + OBJC_IVAR____TtC21JournalShareExtension16WorkoutIconAsset_metadata))
                {
                  v30 = v11;
LABEL_22:

                  sub_100009700(v16);

                  v18 = (*v117)(v16, 1, v17);

                  if (v18 != 1)
                  {
                    v18 = v113;
                    (*v110)(v113, v16, v17);
                    v5 = sub_100100414();
                    v42 = v17;
                    v44 = v43;

                    (*v109)(v18, v42);
                    goto LABEL_36;
                  }
                }

                else
                {
                  v31 = v28;
                  v32 = *(v28 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
                  if (v32)
                  {
                    v33 = v11;
                    v34 = [v32 assetMetaData];
                    if (v34)
                    {
                      v35 = v34;
                      v36 = sub_1000FF564();
                      v5 = v37;

                      v38 = v103;
                      *v103 = v36;
                      v38[1] = v5;
                      v17 = v124;
                      swift_storeEnumTagMultiPayload();
                      sub_100007210(&qword_100150398, &qword_10010F880);
                      v39 = swift_allocObject();
                      (*v95)(v39 + *(*v39 + 104), 1, 1, v102);
                      *(v39 + *(*v39 + 112)) = v107;
                      v40 = v38;
                      v16 = v108;
                      sub_10001012C(v40, v39 + *(*v39 + 120), &qword_10014C268, &qword_10010BEB0);
                      *(v31 + v29) = v39;
                    }
                  }

                  else
                  {
                    v41 = v11;
                  }

                  v18 = *(v31 + v29);
                  v10 = v116;
                  if (v18)
                  {
                    goto LABEL_22;
                  }

                  (*v94)(v16, 1, 1, v17);
                }

                sub_10000FFB4(v16, &qword_10014C278, &qword_10010BEC0);
              }

              type metadata accessor for WorkoutRouteAsset(0);
              v45 = swift_dynamicCastClass();
              if (!v45)
              {
                goto LABEL_40;
              }

              v46 = OBJC_IVAR____TtC21JournalShareExtension17WorkoutRouteAsset_metadata;
              if (!*(v45 + OBJC_IVAR____TtC21JournalShareExtension17WorkoutRouteAsset_metadata))
              {
                break;
              }

              v47 = v11;
LABEL_34:

              v59 = v122;
              sub_100008FB8(v122);

              v18 = (*v114)(v59, 1, v10);

              if (v18 == 1)
              {
                goto LABEL_39;
              }

              v60 = v112;
              (*v106)(v112, v122, v10);
              v18 = v60;
              v5 = sub_1001004E4();
              v44 = v61;

              (*v105)(v60, v10);
LABEL_36:

              if (v44)
              {
                goto LABEL_51;
              }

LABEL_9:
              ++v14;
              v24 = v119;
              v25 = v123;
              v17 = v124;
              if (v2 == v120)
              {
                v11 = v93;
                goto LABEL_63;
              }
            }

            v48 = v45;
            v49 = *(v45 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
            if (v49)
            {
              v50 = v11;
              v51 = [v49 assetMetaData];
              if (v51)
              {
                v52 = v51;
                v53 = sub_1000FF564();
                v5 = v54;

                v55 = v100;
                *v100 = v53;
                v55[1] = v5;
                swift_storeEnumTagMultiPayload();
                sub_100007210(&qword_10014C4C0, &qword_10010C098);
                v56 = swift_allocObject();
                (*v92)(v56 + *(*v56 + 104), 1, 1, v99);
                *(v56 + *(*v56 + 112)) = v107;
                v57 = v55;
                v16 = v108;
                sub_10001012C(v57, v56 + *(*v56 + 120), &qword_10014C3B0, &qword_10010BFB8);
                *(v48 + v46) = v56;
              }
            }

            else
            {
              v58 = v11;
            }

            v18 = *(v48 + v46);
            v10 = v116;
            if (v18)
            {
              goto LABEL_34;
            }

            (*v91)(v122, 1, 1, v116);

LABEL_39:
            sub_10000FFB4(v122, &qword_10014C3C0, &qword_10010E1C0);
LABEL_40:
            type metadata accessor for MotionActivityAsset(0);
            v62 = swift_dynamicCastClass();
            if (!v62)
            {

              v24 = v11;
              goto LABEL_8;
            }

            v63 = OBJC_IVAR____TtC21JournalShareExtension19MotionActivityAsset_metadata;
            v18 = *(v62 + OBJC_IVAR____TtC21JournalShareExtension19MotionActivityAsset_metadata);
            if (!v18)
            {
              v64 = v62;
              v65 = *(v62 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
              if (v65)
              {
                v66 = [v65 assetMetaData];
                if (v66)
                {
                  v67 = v66;
                  v68 = sub_1000FF564();
                  v5 = v69;

                  v70 = v96;
                  *v96 = v68;
                  v70[1] = v5;
                  swift_storeEnumTagMultiPayload();
                  sub_100007210(&qword_100150390, &qword_10010F878);
                  v71 = swift_allocObject();
                  (*v89)(v71 + *(*v71 + 104), 1, 1, v98);
                  *(v71 + *(*v71 + 112)) = v107;
                  v72 = v70;
                  v16 = v108;
                  sub_10001012C(v72, v71 + *(*v71 + 120), &qword_10014C368, &qword_10010BF80);
                  *(v64 + v63) = v71;
                }
              }

              v18 = *(v64 + v63);
              v10 = v116;
              if (!v18)
              {
                (*v88)(v118, 1, 1, v115);
LABEL_47:

                sub_10000FFB4(v118, &qword_10014C378, &qword_10010BF90);
LABEL_8:

                goto LABEL_9;
              }
            }

            v73 = v118;
            sub_10000B7C4(v118);

            if ((*v111)(v73, 1, v115) == 1)
            {
              goto LABEL_47;
            }

            v74 = v97;
            v75 = v115;
            (*v87)(v97, v118, v115);
            v18 = v74;
            v5 = sub_1001005C4();
            v44 = v76;

            (*v86)(v74, v75);
LABEL_51:
            v24 = v119;
            v77 = v93;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v77 = sub_10000F02C(0, *(v77 + 2) + 1, 1, v77);
            }

            v79 = *(v77 + 2);
            v78 = *(v77 + 3);
            v80 = v77;
            v25 = v123;
            v81 = v120;
            if (v79 >= v78 >> 1)
            {
              v83 = sub_10000F02C((v78 > 1), v79 + 1, 1, v77);
              v25 = v123;
              v80 = v83;
              v81 = v120;
            }

            *(v80 + 2) = v79 + 1;
            v82 = &v80[2 * v79];
            v11 = v80;
            *(v82 + 4) = v5;
            *(v82 + 5) = v44;
            v17 = v124;
            if (v2 == v81)
            {
LABEL_63:

              return v11;
            }
          }
        }
      }

      v11 = _swiftEmptyArrayStorage;
      goto LABEL_63;
    }
  }

  return _swiftEmptyArrayStorage;
}

void sub_1000CE53C()
{
  v1 = v0;
  v144 = sub_100007210(&qword_10014C3F0, &qword_10010BFE8);
  __chkstk_darwin(v144);
  v3 = (&v130 - v2);
  v143 = sub_100007210(&qword_10014C400, &unk_10010FA10);
  v4 = *(v143 - 8);
  __chkstk_darwin(v143);
  v148 = &v130 - v5;
  v6 = sub_100100214();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_100007210(&qword_10014C510, &qword_10010C0E8);
  __chkstk_darwin(v142);
  v141 = (&v130 - v10);
  v140 = sub_100007210(&qword_10014C520, &qword_10010C0F8);
  v11 = *(v140 - 8);
  v12 = __chkstk_darwin(v140);
  v14 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v159 = &v130 - v15;
  v167 = sub_100100004();
  v147 = *(v167 - 8);
  v16 = __chkstk_darwin(v167);
  v164 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v157 = &v130 - v19;
  v20 = __chkstk_darwin(v18);
  v169 = &v130 - v21;
  __chkstk_darwin(v20);
  v168 = &v130 - v22;
  v139 = sub_100007210(&qword_10014C3D0, &qword_10010BFD0);
  __chkstk_darwin(v139);
  v138 = (&v130 - v23);
  v137 = sub_100007210(&qword_10014C3E0, &qword_10010BFE0);
  v24 = *(v137 - 8);
  __chkstk_darwin(v137);
  v26 = &v130 - v25;
  v27 = [v1 assets];
  if (!v27)
  {
    return;
  }

  v156 = v9;
  v151 = v6;
  v28 = v27;
  v29 = [v27 allObjects];

  v30 = sub_1001011D4();
  v31 = sub_1000B8328(v30);

  if (!v31)
  {
    return;
  }

  v176 = _swiftEmptySetSingleton;
  v160 = v31;
  v154 = v31 & 0xFFFFFFFFFFFFFF8;
  if (v31 >> 62)
  {
LABEL_120:
    v32 = sub_100101DA4();
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v151;
  if (v32)
  {
    v34 = 0;
    v163 = v160 & 0xC000000000000001;
    v153 = (v160 + 32);
    v134 = v24 + 7;
    v171 = v147 + 16;
    v174 = (v147 + 8);
    v133 = (v11 + 56);
    v161 = (v147 + 48);
    v155 = (v147 + 32);
    v131 = (v147 + 56);
    v132 = (v4 + 7);
    v158 = (v7 + 48);
    v150 = (v7 + 32);
    v149 = (v7 + 8);
    v130 = (v7 + 56);
    v152 = xmmword_10010BC70;
    v7 = v148;
    v145 = v14;
    v11 = v164;
    v146 = v26;
    v162 = v32;
    v135 = v3;
    while (1)
    {
      if (v163)
      {
        v35 = sub_100101CA4();
        v36 = __OFADD__(v34, 1);
        v37 = v34 + 1;
        if (v36)
        {
          goto LABEL_118;
        }
      }

      else
      {
        if (v34 >= *(v154 + 16))
        {
          goto LABEL_119;
        }

        v35 = *&v153[v34];
        v36 = __OFADD__(v34, 1);
        v37 = v34 + 1;
        if (v36)
        {
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }
      }

      v165 = v35;
      v4 = v35;
      v24 = sub_100044DCC();
      type metadata accessor for MultiPinMapAsset(0);
      v38 = swift_dynamicCastClass();
      v166 = v37;
      v170 = v24;
      if (v38)
      {
        v39 = OBJC_IVAR____TtC21JournalShareExtension16MultiPinMapAsset_metadata;
        v4 = *(v38 + OBJC_IVAR____TtC21JournalShareExtension16MultiPinMapAsset_metadata);
        if (v4)
        {
          v40 = v24;
        }

        else
        {
          v41 = v38;
          v42 = *(v38 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
          if (v42)
          {
            v43 = v170;
            v44 = [v42 assetMetaData];
            if (v44)
            {
              v45 = v44;
              v46 = sub_1000FF564();
              v48 = v47;

              v49 = v138;
              *v138 = v46;
              v49[1] = v48;
              v11 = v164;
              swift_storeEnumTagMultiPayload();
              sub_100007210(&qword_10014C4A0, &qword_10010C078);
              v50 = swift_allocObject();
              (*v134)(v50 + *(*v50 + 104), 1, 1, v137);
              *(v50 + *(*v50 + 112)) = v152;
              v51 = v49;
              v26 = v146;
              sub_10001012C(v51, v50 + *(*v50 + 120), &qword_10014C3D0, &qword_10010BFD0);
              *(v41 + v39) = v50;
            }
          }

          else
          {
            v52 = v170;
          }

          v4 = *(v41 + v39);
          v24 = v170;
          if (!v4)
          {

            v81 = sub_100100384();
            (*(*(v81 - 8) + 56))(v26, 1, 1, v81);
            goto LABEL_54;
          }
        }

        sub_100008870(v26);

        v53 = sub_100100384();
        v54 = *(v53 - 8);
        if ((*(v54 + 48))(v26, 1, v53) == 1)
        {

          v11 = v164;
LABEL_54:
          sub_10000FFB4(v26, &qword_10014C3E0, &qword_10010BFE0);
          goto LABEL_57;
        }

        v4 = sub_100100344();
        (*(v54 + 8))(v26, v53);
        if (v4)
        {
          v55 = v4[2];
          if (v55)
          {
            v56 = (*(v147 + 80) + 32) & ~*(v147 + 80);
            v136 = v4;
            v57 = v4 + v56;
            v58 = *(v147 + 72);
            v172 = *(v147 + 16);
            v173 = v58;
            v59 = v4 + v56;
            v60 = v55;
            v61 = _swiftEmptyArrayStorage;
            v62 = v167;
            do
            {
              v63 = v168;
              v172(v168, v59, v62);
              v64 = sub_1000FFFF4();
              v66 = v65;
              v67 = *v174;
              (*v174)(v63, v62);
              if (v66)
              {
                v68 = HIBYTE(v66) & 0xF;
                if ((v66 & 0x2000000000000000) == 0)
                {
                  v68 = v64 & 0xFFFFFFFFFFFFLL;
                }

                if (v68)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v61 = sub_10000F02C(0, *(v61 + 2) + 1, 1, v61);
                  }

                  v70 = *(v61 + 2);
                  v69 = *(v61 + 3);
                  if (v70 >= v69 >> 1)
                  {
                    v61 = sub_10000F02C((v69 > 1), v70 + 1, 1, v61);
                  }

                  *(v61 + 2) = v70 + 1;
                  v71 = &v61[2 * v70];
                  *(v71 + 4) = v64;
                  *(v71 + 5) = v66;
                  v62 = v167;
                }

                else
                {
                }
              }

              v59 += v173;
              v60 = (v60 - 1);
            }

            while (v60);
            sub_1000F08C4(v61);

            v72 = _swiftEmptyArrayStorage;
            v14 = v145;
            v24 = v170;
            do
            {
              v73 = v169;
              v172(v169, v57, v62);
              v74 = sub_1000FFFB4();
              v76 = v75;
              v67(v73, v62);
              if (v76)
              {
                v77 = HIBYTE(v76) & 0xF;
                if ((v76 & 0x2000000000000000) == 0)
                {
                  v77 = v74 & 0xFFFFFFFFFFFFLL;
                }

                if (v77)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v72 = sub_10000F02C(0, *(v72 + 2) + 1, 1, v72);
                  }

                  v79 = *(v72 + 2);
                  v78 = *(v72 + 3);
                  if (v79 >= v78 >> 1)
                  {
                    v72 = sub_10000F02C((v78 > 1), v79 + 1, 1, v72);
                  }

                  *(v72 + 2) = v79 + 1;
                  v80 = &v72[2 * v79];
                  *(v80 + 4) = v74;
                  *(v80 + 5) = v76;
                  v24 = v170;
                }

                else
                {
                }
              }

              v57 += v173;
              v55 = (v55 - 1);
            }

            while (v55);
            v3 = v135;
            v7 = v148;
            v11 = v164;
            v26 = v146;
          }

          else
          {
            v72 = _swiftEmptyArrayStorage;
            sub_1000F08C4(_swiftEmptyArrayStorage);

            v11 = v164;
          }

          v4 = &v176;
          sub_1000F08C4(v72);

          v33 = v151;
        }

        else
        {

          v11 = v164;
        }
      }

LABEL_57:
      type metadata accessor for VisitAsset(0);
      v82 = swift_dynamicCastClass();
      if (!v82)
      {
        goto LABEL_84;
      }

      v83 = OBJC_IVAR____TtC21JournalShareExtension10VisitAsset_metadata;
      if (*(v82 + OBJC_IVAR____TtC21JournalShareExtension10VisitAsset_metadata))
      {
        v84 = v24;
      }

      else
      {
        v85 = v82;
        v86 = *(v82 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
        if (v86)
        {
          v87 = v170;
          v88 = [v86 assetMetaData];
          if (v88)
          {
            v89 = v88;
            v90 = sub_1000FF564();
            v92 = v91;

            v93 = v141;
            *v141 = v90;
            v93[1] = v92;
            v11 = v164;
            swift_storeEnumTagMultiPayload();
            sub_100007210(&qword_100150388, &qword_10010F870);
            v94 = swift_allocObject();
            (*v133)(v94 + *(*v94 + 104), 1, 1, v140);
            *(v94 + *(*v94 + 112)) = v152;
            v95 = v93;
            v14 = v145;
            sub_10001012C(v95, v94 + *(*v94 + 120), &qword_10014C510, &qword_10010C0E8);
            *(v85 + v83) = v94;
          }
        }

        else
        {
          v96 = v170;
        }

        v4 = *(v85 + v83);
        v24 = v170;
        if (!v4)
        {

          v97 = v159;
          (*v131)(v159, 1, 1, v167);
          goto LABEL_73;
        }
      }

      v97 = v159;
      sub_10000A1EC(v159);

      v4 = v167;
      if ((*v161)(v97, 1, v167) == 1)
      {

LABEL_73:
        sub_10000FFB4(v97, &qword_10014C520, &qword_10010C0F8);
        goto LABEL_84;
      }

      v98 = v157;
      (*v155)(v157, v97, v4);
      v99 = sub_1000FFFF4();
      if (v100)
      {
        v101 = HIBYTE(v100) & 0xF;
        if ((v100 & 0x2000000000000000) == 0)
        {
          v101 = v99 & 0xFFFFFFFFFFFFLL;
        }

        if (v101)
        {
          sub_100045C9C(&v175, v99, v100);
        }
      }

      v4 = v98;
      v102 = sub_1000FFFB4();
      if (!v103)
      {
        (*v174)(v98, v167);
LABEL_82:

        goto LABEL_83;
      }

      v104 = HIBYTE(v103) & 0xF;
      if ((v103 & 0x2000000000000000) == 0)
      {
        v104 = v102 & 0xFFFFFFFFFFFFLL;
      }

      if (!v104)
      {
        (*v174)(v157, v167);

        goto LABEL_82;
      }

      v4 = &v176;
      sub_100045C9C(&v175, v102, v103);

      (*v174)(v157, v167);
LABEL_83:
      v11 = v164;
LABEL_84:
      type metadata accessor for GenericMapAsset(0);
      v105 = swift_dynamicCastClass();
      if (v105)
      {
        v106 = OBJC_IVAR____TtC21JournalShareExtension15GenericMapAsset_metadata;
        v4 = *(v105 + OBJC_IVAR____TtC21JournalShareExtension15GenericMapAsset_metadata);
        if (v4)
        {
          goto LABEL_90;
        }

        v107 = v105;
        v108 = *(v105 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
        if (v108)
        {
          v109 = [v108 assetMetaData];
          if (v109)
          {
            v110 = v109;
            v111 = sub_1000FF564();
            v113 = v112;

            *v3 = v111;
            v3[1] = v113;
            v11 = v164;
            swift_storeEnumTagMultiPayload();
            sub_100007210(&qword_10014C498, &qword_10010C070);
            v114 = swift_allocObject();
            (*v132)(v114 + *(*v114 + 104), 1, 1, v143);
            *(v114 + *(*v114 + 112)) = v152;
            sub_10001012C(v3, v114 + *(*v114 + 120), &qword_10014C3F0, &qword_10010BFE8);
            *(v107 + v106) = v114;
          }
        }

        v4 = *(v107 + v106);
        v24 = v170;
        if (v4)
        {
LABEL_90:

          sub_100008C14(v7);

          if ((*v158)(v7, 1, v33) == 1)
          {

            goto LABEL_100;
          }

          v4 = v156;
          (*v150)(v156, v7, v33);
          sub_100100204();
          v115 = v167;
          v116 = (*v161)(v14, 1, v167);
          v34 = v166;
          if (v116 != 1)
          {
            (*v155)(v11, v14, v115);
            v120 = sub_1000FFFF4();
            if (v121)
            {
              v122 = HIBYTE(v121) & 0xF;
              if ((v121 & 0x2000000000000000) == 0)
              {
                v122 = v120 & 0xFFFFFFFFFFFFLL;
              }

              if (v122)
              {
                sub_100045C9C(&v175, v120, v121);
              }
            }

            v4 = v11;
            v123 = sub_1000FFFB4();
            if (v124)
            {
              v125 = HIBYTE(v124) & 0xF;
              if ((v124 & 0x2000000000000000) == 0)
              {
                v125 = v123 & 0xFFFFFFFFFFFFLL;
              }

              if (v125)
              {
                v4 = &v176;
                sub_100045C9C(&v175, v123, v124);
              }

              else
              {
              }

              v11 = v164;
              (*v174)(v164, v167);
            }

            else
            {

              (*v174)(v11, v167);
            }

            (*v149)(v156, v33);
            goto LABEL_8;
          }

          (*v149)(v4, v33);

          v117 = v14;
          v118 = &qword_10014C520;
          v119 = &qword_10010C0F8;
        }

        else
        {

          (*v130)(v7, 1, 1, v33);
LABEL_100:
          v34 = v166;
          v117 = v7;
          v118 = &qword_10014C400;
          v119 = &unk_10010FA10;
        }

        sub_10000FFB4(v117, v118, v119);
        goto LABEL_8;
      }

      v34 = v166;
LABEL_8:
      if (v34 == v162)
      {

        v126 = v176;
        v127 = v176[2];
        if (!v127)
        {
          goto LABEL_116;
        }

LABEL_113:
        v128 = sub_10000FCD8(v127, 0);
        v129 = sub_10005A2FC(&v175, v128 + 4, v127, v126);
        sub_10004A9A0(v175);
        if (v129 != v127)
        {
          __break(1u);
        }

        return;
      }
    }
  }

  v126 = _swiftEmptySetSingleton;
  v127 = _swiftEmptySetSingleton[2];
  if (v127)
  {
    goto LABEL_113;
  }

LABEL_116:
}

id sub_1000CF914()
{
  v1 = [v0 assets];
  if (!v1)
  {
    goto LABEL_5;
  }

  result = [v0 assets];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [result count];

  if (v4)
  {
    return 0;
  }

LABEL_5:
  v5 = sub_1000CCC84();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  return (v8 != 0);
}

uint64_t sub_1000CF9C0()
{
  v0 = sub_100007210(&qword_10014D208, &unk_10010CDA8);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v50 = v45 - v4;
  v5 = sub_1001007D4();
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = __chkstk_darwin(v5);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v64 = v45 - v12;
  __chkstk_darwin(v11);
  v49 = v45 - v13;
  sub_100007210(&qword_10014C530, &qword_10010C100);
  v14 = *(v6 + 72);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10010F860;
  v46 = v15;
  v56 = v7;
  v17 = *(v7 + 104);
  v17(v16 + v15, enum case for AssetType.link(_:), v5);
  v17(v16 + v15 + v14, enum case for AssetType.genericMap(_:), v5);
  v17(v16 + v15 + 2 * v14, enum case for AssetType.visit(_:), v5);
  v17(v16 + v15 + 3 * v14, enum case for AssetType.placeholder(_:), v5);
  v17(v16 + v15 + 4 * v14, enum case for AssetType.streakEvent(_:), v5);
  v62 = v14;
  v17(v16 + v15 + 5 * v14, enum case for AssetType.unknown(_:), v5);
  v63 = sub_100033058(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v18 = sub_1000FFBC4();
  if (v18 >> 62)
  {
    goto LABEL_31;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v20 = v50;
  v45[1] = v18;
  if (v19)
  {
    v21 = 0;
    v57 = v18 & 0xFFFFFFFFFFFFFF8;
    v58 = v18 & 0xC000000000000001;
    v55 = v18 + 32;
    v22 = (v56 + 6);
    v61 = v63 + 7;
    v59 = (v56 + 4);
    v60 = (v56 + 2);
    v23 = (v56 + 1);
    v51 = (v56 + 6);
    v52 = _swiftEmptyArrayStorage;
    v56 += 7;
    v47 = v19;
    v48 = v3;
    while (1)
    {
      while (1)
      {
        if (v58)
        {
          v18 = sub_100101CA4();
        }

        else
        {
          if (v21 >= *(v57 + 16))
          {
            goto LABEL_30;
          }

          v18 = *(v55 + 8 * v21);
        }

        v24 = v18;
        if (__OFADD__(v21++, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          v44 = v18;
          v19 = sub_100101DA4();
          v18 = v44;
          goto LABEL_3;
        }

        sub_1000FFB04();
        v26 = *v22;
        if ((*v22)(v3, 1, v5) != 1)
        {
          break;
        }

        sub_10000FFB4(v3, &qword_10014D208, &unk_10010CDA8);
        (*v56)(v20, 1, 1, v5);
LABEL_6:
        v18 = sub_10000FFB4(v20, &qword_10014D208, &unk_10010CDA8);
        if (v21 == v19)
        {
          goto LABEL_28;
        }
      }

      v27 = *v59;
      v53 = v26;
      v54 = v27;
      v27(v64, v3, v5);
      if (v63[2] && (v28 = v63, sub_1000D0550(&qword_10014CED8, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType), v29 = sub_100100E84(), v30 = -1 << *(v28 + 32), v31 = v29 & ~v30, ((*(v61 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
      {
        v32 = ~v30;
        v33 = *v60;
        while (1)
        {
          v33(v10, v63[6] + v31 * v62, v5);
          sub_1000D0550(&unk_10014CEE0, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
          v34 = sub_100100F04();
          v35 = *v23;
          (*v23)(v10, v5);
          if (v34)
          {
            break;
          }

          v31 = (v31 + 1) & v32;
          if (((*(v61 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        v35(v64, v5);
        v37 = 1;
        v20 = v50;
        v36 = v54;
      }

      else
      {
LABEL_17:

        v20 = v50;
        v36 = v54;
        v54(v50, v64, v5);
        v37 = 0;
      }

      (*v56)(v20, v37, 1, v5);
      v22 = v51;
      v38 = v53(v20, 1, v5);
      v19 = v47;
      v3 = v48;
      if (v38 == 1)
      {
        goto LABEL_6;
      }

      v36(v49, v20, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_10000F340(0, *(v52 + 2) + 1, 1, v52);
      }

      v40 = *(v52 + 2);
      v39 = *(v52 + 3);
      if (v40 >= v39 >> 1)
      {
        v52 = sub_10000F340((v39 > 1), v40 + 1, 1, v52);
      }

      v41 = v52;
      *(v52 + 2) = v40 + 1;
      v18 = (v36)(v41 + v46 + v40 * v62, v49, v5);
      v22 = v51;
      if (v21 == v19)
      {
        goto LABEL_28;
      }
    }
  }

  v52 = _swiftEmptyArrayStorage;
LABEL_28:

  v42 = sub_1000AC754(v52);

  return v42;
}

void sub_1000D0110(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100007210(&qword_10014CEC8, &unk_10010CA20);
    v2 = sub_100101C24();
  }

  else
  {
    v2 = _swiftEmptySetSingleton;
  }

  v3 = sub_1000FFB84();
  v29[5] = v2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  if (v3 == &type metadata for String)
  {
    v24 = (v5 + 63) >> 6;

    v25 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
      v26 = v25;
LABEL_31:
      sub_10004DAE4(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v26 << 6)), v29);
      v27.isa = sub_100101BC4().isa;
      sub_10004DB40(v29);
      v28 = swift_dynamicCastClass();
      if (!v28)
      {

        return;
      }

      v7 &= v7 - 1;
      sub_1000D0420(v28);
      v25 = v26;
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v26);
      ++v25;
      if (v7)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v8 = (v5 + 63) >> 6;
    v9 = v2 + 7;

    v10 = 0;
    while (v7)
    {
LABEL_16:
      sub_10004DAE4(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v10 << 6)), v29);
      v13.isa = sub_100101BC4().isa;
      sub_10004DB40(v29);
      v14 = swift_dynamicCastClass();
      if (!v14)
      {

        return;
      }

      v15 = v14;
      v16 = sub_100101A24(v2[5]);
      v17 = -1 << *(v2 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~v9[v18 >> 6]) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = v9[v19];
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~v9[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v9 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(v2[6] + 8 * v11) = v15;
      ++v2[2];
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v12);
      ++v10;
      if (v7)
      {
        v10 = v12;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

void sub_1000D0420(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_100101A24(*(*v1 + 40));
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_1000FFB84();
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_100101A34();

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

uint64_t sub_1000D0550(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000D0598()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_1001503A8);
  v1 = sub_100003D38(v0, qword_1001503A8);
  if (qword_10014B870 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_1001587E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

NSObject *sub_1000D0694()
{
  v1 = sub_100007210(&qword_1001504E8, &qword_10010F958);
  v90 = *(v1 - 8);
  v91 = v1;
  __chkstk_darwin(v1);
  v89 = &v79 - v2;
  v3 = sub_100007210(&qword_1001504F0, &qword_10010F960);
  v87 = *(v3 - 8);
  v88 = v3;
  __chkstk_darwin(v3);
  v86 = &v79 - v4;
  v5 = sub_100007210(&qword_1001504F8, &qword_10010F968);
  v84 = *(v5 - 8);
  v85 = v5;
  __chkstk_darwin(v5);
  v83 = &v79 - v6;
  v7 = sub_100007210(&qword_100150500, &qword_10010F970);
  v81 = *(v7 - 8);
  v82 = v7;
  __chkstk_darwin(v7);
  v80 = &v79 - v8;
  v9 = sub_100007210(&qword_100150508, &qword_10010F978);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v79 - v11;
  v99 = sub_100101794();
  v13 = *(v99 - 8);
  v14 = __chkstk_darwin(v99);
  v95 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v94 = &v79 - v17;
  v18 = __chkstk_darwin(v16);
  v93 = &v79 - v19;
  v20 = __chkstk_darwin(v18);
  v92 = &v79 - v21;
  __chkstk_darwin(v20);
  v98 = &v79 - v22;
  *&v0[OBJC_IVAR____TtC21JournalShareExtension16EntryUndoManager_observationTokens] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC21JournalShareExtension16EntryUndoManager_propertiesToRefresh] = _swiftEmptySetSingleton;
  v23 = &v0[OBJC_IVAR____TtC21JournalShareExtension16EntryUndoManager_didUndoOrRedo];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = OBJC_IVAR____TtC21JournalShareExtension16EntryUndoManager_lastUndoableActivity;
  type metadata accessor for UndoableActivity();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 3;
  *&v0[v24] = v25;
  v26 = type metadata accessor for EntryUndoManager();
  v100.receiver = v0;
  v100.super_class = v26;
  v27 = objc_msgSendSuper2(&v100, "init");
  v28 = qword_10014B8D0;
  v29 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = sub_100100AE4();
  sub_100003D38(v30, qword_1001503A8);
  v31 = v29;
  v32 = sub_100100AC4();
  v33 = sub_1001015A4();
  v34 = os_log_type_enabled(v32, v33);
  v97 = v13;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412546;
    *(v35 + 4) = v31;
    *v36 = v31;
    *(v35 + 12) = 2048;
    *(v35 + 14) = [v31 groupingLevel];

    _os_log_impl(&_mh_execute_header, v32, v33, "Created new undoManager: %@, initial level:%ld", v35, 0x16u);
    sub_100011058(v36);
  }

  else
  {

    v32 = v31;
  }

  v37 = objc_opt_self();
  v38 = [v37 defaultCenter];
  sub_100101564();
  sub_1001017A4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000D22D4(&qword_100150510, &qword_100150508, &qword_10010F978);
  v39 = v31;
  sub_100101784();

  (*(v10 + 8))(v12, v9);
  v40 = OBJC_IVAR____TtC21JournalShareExtension16EntryUndoManager_observationTokens;
  v41 = *(&v39->isa + OBJC_IVAR____TtC21JournalShareExtension16EntryUndoManager_observationTokens);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v41 = sub_10000FAD4(0, *(v41 + 2) + 1, 1, v41);
    *(&v39->isa + v40) = v41;
  }

  v43 = v97;
  v45 = *(v41 + 2);
  v44 = *(v41 + 3);
  if (v45 >= v44 >> 1)
  {
    v41 = sub_10000FAD4((v44 > 1), v45 + 1, 1, v41);
  }

  *(v41 + 2) = v45 + 1;
  v47 = *(v43 + 32);
  v46 = v43 + 32;
  v97 = (*(v46 + 48) + 32) & ~*(v46 + 48);
  v96 = *(v46 + 40);
  v48 = v98;
  v98 = v47;
  (v47)(v41 + v97 + v96 * v45, v48, v99);
  *(&v39->isa + v40) = v41;
  v49 = [v37 defaultCenter];
  sub_100101574();
  v50 = v80;
  sub_1001017A4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000D22D4(&qword_100150518, &qword_100150500, &qword_10010F970);
  v51 = v82;
  sub_100101784();

  (*(v81 + 8))(v50, v51);
  v52 = *(&v39->isa + v40);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v52;
  if ((v53 & 1) == 0)
  {
    v52 = sub_10000FAD4(0, *(v52 + 2) + 1, 1, v52);
    *(&v39->isa + v40) = v52;
  }

  v55 = *(v52 + 2);
  v54 = *(v52 + 3);
  if (v55 >= v54 >> 1)
  {
    v52 = sub_10000FAD4((v54 > 1), v55 + 1, 1, v52);
  }

  *(v52 + 2) = v55 + 1;
  (v98)(v52 + v97 + v55 * v96, v92, v99);
  *(&v39->isa + v40) = v52;
  v56 = v37;
  v57 = [v37 defaultCenter];
  sub_100101584();
  v58 = v83;
  sub_1001017A4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000D22D4(&qword_100150520, &qword_1001504F8, &qword_10010F968);
  v59 = v85;
  sub_100101784();

  (*(v84 + 8))(v58, v59);
  v60 = *(&v39->isa + v40);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v60;
  if ((v61 & 1) == 0)
  {
    v60 = sub_10000FAD4(0, *(v60 + 2) + 1, 1, v60);
    *(&v39->isa + v40) = v60;
  }

  v63 = *(v60 + 2);
  v62 = *(v60 + 3);
  if (v63 >= v62 >> 1)
  {
    v60 = sub_10000FAD4((v62 > 1), v63 + 1, 1, v60);
  }

  *(v60 + 2) = v63 + 1;
  (v98)(v60 + v97 + v63 * v96, v93, v99);
  *(&v39->isa + v40) = v60;
  v64 = [v56 defaultCenter];
  sub_100101554();
  v65 = v86;
  sub_1001017A4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000D22D4(&qword_100150528, &qword_1001504F0, &qword_10010F960);
  v66 = v88;
  sub_100101784();

  (*(v87 + 8))(v65, v66);
  v67 = *(&v39->isa + v40);
  v68 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v67;
  if ((v68 & 1) == 0)
  {
    v67 = sub_10000FAD4(0, *(v67 + 2) + 1, 1, v67);
    *(&v39->isa + v40) = v67;
  }

  v70 = *(v67 + 2);
  v69 = *(v67 + 3);
  if (v70 >= v69 >> 1)
  {
    v67 = sub_10000FAD4((v69 > 1), v70 + 1, 1, v67);
  }

  *(v67 + 2) = v70 + 1;
  (v98)(v67 + v97 + v70 * v96, v94, v99);
  *(&v39->isa + v40) = v67;
  v71 = [v56 defaultCenter];
  sub_100101544();
  v72 = v89;
  sub_1001017A4();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1000D22D4(&qword_100150530, &qword_1001504E8, &qword_10010F958);
  v73 = v91;
  sub_100101784();

  (*(v90 + 8))(v72, v73);
  v74 = *(&v39->isa + v40);
  v75 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v74;
  if ((v75 & 1) == 0)
  {
    v74 = sub_10000FAD4(0, *(v74 + 2) + 1, 1, v74);
    *(&v39->isa + v40) = v74;
  }

  v77 = *(v74 + 2);
  v76 = *(v74 + 3);
  if (v77 >= v76 >> 1)
  {
    v74 = sub_10000FAD4((v76 > 1), v77 + 1, 1, v74);
  }

  *(v74 + 2) = v77 + 1;
  (v98)(v74 + v97 + v77 * v96, v95);
  *(&v39->isa + v40) = v74;
  [v39 beginUndoGrouping];

  return v39;
}

void sub_1000D13C0(uint64_t a1, uint64_t a2, const char *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_10014B8D0 != -1)
    {
      swift_once();
    }

    v6 = sub_100100AE4();
    sub_100003D38(v6, qword_1001503A8);
    v7 = v5;
    v8 = sub_100100AC4();
    v9 = sub_1001015A4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v5;
      *(v10 + 12) = 2048;
      *(v10 + 14) = [v7 groupingLevel];
      _os_log_impl(&_mh_execute_header, v8, v9, a3, v10, 0x16u);
      sub_100011058(v11);
    }

    else
    {

      v8 = v7;
    }
  }
}

void sub_1000D1544(uint64_t a1, uint64_t a2, const char *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_10014B8D0 != -1)
    {
      swift_once();
    }

    v6 = sub_100100AE4();
    sub_100003D38(v6, qword_1001503A8);
    v7 = v5;
    v8 = sub_100100AC4();
    v9 = sub_1001015A4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v5;
      *(v10 + 12) = 2048;
      *(v10 + 14) = [v7 groupingLevel];
      _os_log_impl(&_mh_execute_header, v8, v9, a3, v10, 0x16u);
      sub_100011058(v11);
    }

    else
    {

      v8 = v7;
    }

    sub_1000D16F4();
  }
}

void sub_1000D16F4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC21JournalShareExtension16EntryUndoManager_propertiesToRefresh;
  swift_beginAccess();
  if (*(*(v0 + v2) + 16))
  {
    v3 = *(v0 + OBJC_IVAR____TtC21JournalShareExtension16EntryUndoManager_didUndoOrRedo);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC21JournalShareExtension16EntryUndoManager_didUndoOrRedo + 8);
      sub_100030340(*(v1 + OBJC_IVAR____TtC21JournalShareExtension16EntryUndoManager_didUndoOrRedo), v4);

      v3(v5);
      sub_10002FB80(v3, v4);
    }

    *(v1 + v2) = _swiftEmptySetSingleton;

    *(*(v1 + OBJC_IVAR____TtC21JournalShareExtension16EntryUndoManager_lastUndoableActivity) + 16) = 0;
  }
}

id sub_1000D17C4()
{
  v1 = v0;
  if (qword_10014B8D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100100AE4();
  sub_100003D38(v2, qword_1001503A8);
  v3 = sub_100100AC4();
  v4 = sub_1001015A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "EntryUndoManager.undo()", v5, 2u);
  }

  sub_1000D18C8();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for EntryUndoManager();
  return objc_msgSendSuper2(&v7, "undo");
}

uint64_t sub_1000D18C8()
{
  v1 = v0;
  if (qword_10014B8D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100100AE4();
  sub_100003D38(v2, qword_1001503A8);
  v3 = sub_100100AC4();
  v4 = sub_1001015A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "endUndoGroupIfNeeded", v5, 2u);
  }

  result = [v1 groupingLevel];
  if (result >= 1)
  {

    return [v1 endUndoGrouping];
  }

  return result;
}

void sub_1000D1A30()
{
  v1 = [v0 groupingLevel];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for EntryUndoManager();
  objc_msgSendSuper2(&v7, "beginUndoGrouping");
  if (qword_10014B8D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100100AE4();
  sub_100003D38(v2, qword_1001503A8);
  v3 = v0;
  v4 = sub_100100AC4();
  v5 = sub_1001015A4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v1;
    *(v6 + 12) = 2048;
    *(v6 + 14) = [v3 groupingLevel];

    _os_log_impl(&_mh_execute_header, v4, v5, "beginUndoGrouping, level: %ld -> %ld", v6, 0x16u);
  }

  else
  {

    v4 = v3;
  }
}

void sub_1000D1BCC()
{
  if ([v0 groupingLevel] < 1)
  {
    if (qword_10014B8D0 != -1)
    {
      swift_once();
    }

    v7 = sub_100100AE4();
    sub_100003D38(v7, qword_1001503A8);
    v11 = v0;
    oslog = sub_100100AC4();
    v8 = sub_1001015A4();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = [v11 groupingLevel];

      _os_log_impl(&_mh_execute_header, oslog, v8, "endUndoGrouping skipped, current level: %ld", v9, 0xCu);

      v10 = oslog;
    }

    else
    {

      v10 = v11;
    }
  }

  else
  {
    v1 = [v0 groupingLevel];
    v13.receiver = v0;
    v13.super_class = type metadata accessor for EntryUndoManager();
    objc_msgSendSuper2(&v13, "endUndoGrouping");
    *(*&v0[OBJC_IVAR____TtC21JournalShareExtension16EntryUndoManager_lastUndoableActivity] + 16) = 0;
    if (qword_10014B8D0 != -1)
    {
      swift_once();
    }

    v2 = sub_100100AE4();
    sub_100003D38(v2, qword_1001503A8);
    v3 = v0;
    v4 = sub_100100AC4();
    v5 = sub_1001015A4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134218240;
      *(v6 + 4) = v1;
      *(v6 + 12) = 2048;
      *(v6 + 14) = [v3 groupingLevel];

      _os_log_impl(&_mh_execute_header, v4, v5, "endUndoGrouping, level: %ld -> %ld", v6, 0x16u);
    }

    else
    {
    }
  }
}

id sub_1000D1EA4()
{
  v1 = v0;
  if (qword_10014B8D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100100AE4();
  sub_100003D38(v2, qword_1001503A8);
  v3 = sub_100100AC4();
  v4 = sub_1001015A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "markUndoPoint", v5, 2u);
  }

  sub_1000D18C8();
  result = sub_1000D1F9C();
  *(*(v1 + OBJC_IVAR____TtC21JournalShareExtension16EntryUndoManager_lastUndoableActivity) + 16) = 0;
  return result;
}

id sub_1000D1F9C()
{
  v1 = v0;
  if (qword_10014B8D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100100AE4();
  sub_100003D38(v2, qword_1001503A8);
  v3 = sub_100100AC4();
  v4 = sub_1001015A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "beginUndoGroupIfNeeded", v5, 2u);
  }

  result = [v1 groupingLevel];
  if (!result)
  {

    return [v1 beginUndoGrouping];
  }

  return result;
}

id sub_1000D20B8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EntryUndoManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1000D2194()
{
  result = qword_1001504E0;
  if (!qword_1001504E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001504E0);
  }

  return result;
}

uint64_t sub_1000D21E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000D22D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000F19C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000D2328(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000D2390()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_100158900);
  v1 = sub_100003D38(v0, qword_100158900);
  if (qword_10014B8C0 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_1001588D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000D2458(int a1, id a2, uint64_t a3)
{
  v3 = [a2 extensionContext];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1000FF324();
    [v4 cancelRequestWithError:v5];
  }
}

void sub_1000D24E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v25._countAndFlagsBits = 0x8000000100109320;
  v36._countAndFlagsBits = 0xD00000000000002CLL;
  v36._object = 0x80000001001092F0;
  v39.value._countAndFlagsBits = 0;
  v39.value._object = 0;
  v8.super.isa = v7;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  sub_1000FF2E4(v36, v39, v8, v42, 0xD000000000000015, v25);

  v9 = sub_100100F94();

  v10 = [objc_opt_self() alertControllerWithTitle:0 message:v9 preferredStyle:0];

  v11 = [v6 mainBundle];
  v26._countAndFlagsBits = 0x8000000100109340;
  v37._countAndFlagsBits = 0x2064726163736944;
  v37._object = 0xED00007972746E45;
  v40.value._countAndFlagsBits = 0;
  v40.value._object = 0;
  v12.super.isa = v11;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  sub_1000FF2E4(v37, v40, v12, v43, 0xD00000000000001ALL, v26);

  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  v14 = sub_100100F94();

  v34 = sub_1000D2978;
  v35 = v13;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1000D2328;
  v33 = &unk_100138710;
  v15 = _Block_copy(&aBlock);

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v14 style:2 handler:v15];
  _Block_release(v15);

  [v10 addAction:v17];
  v18 = [v6 mainBundle];
  v27._countAndFlagsBits = 0x8000000100109360;
  v38._countAndFlagsBits = 0x696445207065654BLL;
  v38._object = 0xEC000000676E6974;
  v41.value._countAndFlagsBits = 0;
  v41.value._object = 0;
  v19.super.isa = v18;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  sub_1000FF2E4(v38, v41, v19, v44, 0xD000000000000019, v27);

  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;

  v21 = sub_100100F94();

  v34 = sub_1000D29BC;
  v35 = v20;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1000D2328;
  v33 = &unk_100138760;
  v22 = _Block_copy(&aBlock);

  v23 = [v16 actionWithTitle:v21 style:1 handler:v22];
  _Block_release(v22);

  [v10 addAction:v23];
  v24 = [v10 popoverPresentationController];
  [v24 setSourceItem:a2];

  [a1 presentViewController:v10 animated:1 completion:0];
}

uint64_t sub_1000D2940()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000D29A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000D29E8(uint64_t a1, void *a2)
{
  v4 = sub_1000FF8B4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100100F84();
  __chkstk_darwin(v5 - 8);
  v6 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:1];
  aBlock[0] = a1;
  swift_errorRetain();
  sub_100007210(&qword_10014EBE0, &unk_10010C1A0);
  if (!swift_dynamicCast() || aBlock[11])
  {

    sub_100100F14();
    sub_1000FF8A4();
    sub_100101004();
    v9 = sub_100100F94();

    [v6 setTitle:v9];

    swift_getErrorValue();
    sub_100101F14();
    v10 = sub_100100F94();

    [v6 setMessage:v10];
  }

  else
  {
    sub_100100F14();
    sub_1000FF8A4();
    sub_100101004();
    v7 = sub_100100F94();

    [v6 setTitle:v7];

    sub_100100F14();
    sub_1000FF8A4();
    sub_100101004();
    v8 = sub_100100F94();

    [v6 setMessage:v8];
  }

  if (qword_10014B640 != -1)
  {
    swift_once();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  swift_errorRetain();
  v12 = a2;
  v13 = sub_100100F94();
  aBlock[4] = sub_1000D2E94;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D2328;
  aBlock[3] = &unk_1001387B0;
  v14 = _Block_copy(aBlock);

  v15 = [objc_opt_self() actionWithTitle:v13 style:1 handler:v14];
  _Block_release(v14);

  [v6 addAction:v15];
  [v12 presentViewController:v6 animated:1 completion:0];
}

uint64_t sub_1000D2E54()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1000D2EB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnknownAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UnknownAsset(uint64_t a1)
{
  result = qword_100150560;
  if (!qword_100150560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1000D2F3C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_1000D2F94()
{
  v1 = OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType;
  if (*(v0 + OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType) <= 1u && *(v0 + OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType))
  {
    v2 = 1;
LABEL_17:

    return v2 & 1;
  }

  v3 = sub_100101E84();

  if ((v3 & 1) == 0)
  {
    if (*(v0 + v1) == 3)
    {
      v2 = 1;
      goto LABEL_17;
    }

    v4 = sub_100101E84();

    if ((v4 & 1) == 0)
    {
      if (*(v0 + v1) > 6u)
      {
        v2 = 1;
        goto LABEL_17;
      }

      v5 = sub_100101E84();

      if ((v5 & 1) == 0)
      {
        if (*(v0 + v1) > 3u || *(v0 + v1))
        {
          v2 = sub_100101E84();
        }

        else
        {
          v2 = 1;
        }

        goto LABEL_17;
      }
    }
  }

  v2 = 1;
  return v2 & 1;
}

void sub_1000D33DC()
{
  sub_10002AAD8();
  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_100100F94();
  [v1 addObserver:v0 selector:"handleAllowedVideosNotification:" name:v2 object:0];
}

uint64_t sub_1000D3490()
{
  v0 = sub_100100C44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100100CB4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095D18();
  v8 = sub_100101704();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000D596C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D2F3C;
  aBlock[3] = &unk_100138800;
  v10 = _Block_copy(aBlock);

  sub_100100C64();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000D5AD8(&qword_10014D090, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007210(&qword_10014E310, &unk_10010C8E0);
  sub_10002FCF8();
  sub_100101B64();
  sub_100101714();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

double sub_1000D3748(uint64_t a1)
{
  v1 = sub_100007210(&qword_10014CBD8, &qword_10010E240);
  __chkstk_darwin(v1 - 8);
  v3 = &v34 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC21JournalShareExtension18VideoAssetGridView_durationLabel;
    v8 = [*(Strong + OBJC_IVAR____TtC21JournalShareExtension18VideoAssetGridView_durationLabel) superview];
    if (v8)
    {

      [v6 bringSubviewToFront:*&v6[v7]];
    }

    else
    {
      v9 = qword_10014B620;
      v10 = *&v6[v7];
      if (v9 != -1)
      {
        swift_once();
      }

      [v10 setFont:qword_100158510];

      v11 = *&v6[v7];
      v12 = objc_opt_self();
      v13 = v11;
      v14 = [v12 whiteColor];
      [v13 setTextColor:v14];

      [*&v6[v7] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
      [*&v6[v7] setAdjustsFontForContentSizeCategory:1];
      [*&v6[v7] setAdjustsFontSizeToFitWidth:1];
      [v6 addSubview:*&v6[v7]];
      v15 = *&v6[v7];
      v16 = [v15 superview];
      v17 = &selRef_cancel;
      if (v16)
      {
        v18 = v16;
        [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
        v19 = [v15 trailingAnchor];
        v20 = [v18 trailingAnchor];
        v21 = [v19 constraintEqualToAnchor:v20];

        [v21 setConstant:-8.0];
        if (v21)
        {
          [v21 setActive:1];
        }

        v17 = &selRef_cancel;
      }

      else
      {
        v21 = 0;
        v18 = v15;
      }

      v22 = *&v6[v7];
      v23 = [v22 superview];
      if (v23)
      {
        v24 = v23;
        [v22 v17[97]];
        v25 = [v22 leadingAnchor];
        v26 = [v24 leadingAnchor];
        v27 = [v25 constraintGreaterThanOrEqualToAnchor:v26];

        [v27 setConstant:8.0];
        if (v27)
        {
          [v27 setActive:1];
        }
      }

      else
      {
        v27 = 0;
        v24 = v22;
      }

      v28 = *&v6[v7];
      v29 = sub_100096328(0, 1, 6.0);
    }

    v30 = sub_100101324();
    (*(*(v30 - 8) + 56))(v3, 1, 1, v30);
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100101304();

    v32 = sub_1001012F4();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = &protocol witness table for MainActor;
    v33[4] = v31;

    sub_1000D7A60(0, 0, v3, &unk_10010F9C8, v33);
  }

  return result;
}

uint64_t sub_1000D3C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[28] = a4;
  v5 = sub_100100C44();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  v6 = sub_100100CB4();
  v4[32] = v6;
  v4[33] = *(v6 - 8);
  v4[34] = swift_task_alloc();
  sub_100007210(&qword_10014EBD0, &qword_10010BE50);
  v4[35] = swift_task_alloc();
  v7 = sub_1000FF514();
  v4[36] = v7;
  v4[37] = *(v7 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = sub_100101304();
  v4[40] = sub_1001012F4();
  v8 = sub_100101284();
  v4[41] = v8;
  v4[42] = v9;

  return _swift_task_switch(sub_1000D3DE8, v8);
}

uint64_t sub_1000D3DE8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView);
    if (!v3)
    {
      goto LABEL_10;
    }

    v4 = v3;
    v5 = [v4 layer];
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
    }

    v7 = [v6 player];

    if (v7)
    {
      v8 = [v7 currentItem];

      if (v8)
      {
        v0[43] = [v8 asset];

        sub_100007210(&qword_1001505B0, &unk_10010F9D0);
        v9 = sub_1000FFA84();
        v0[44] = v9;
        v10 = sub_1001012F4();
        v0[45] = v10;
        v11 = swift_task_alloc();
        v0[46] = v11;
        *v11 = v0;
        v11[1] = sub_1000D4184;

        return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 55, v9, v10, &protocol witness table for MainActor);
      }
    }

    else
    {
LABEL_10:
    }
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12 || (v13 = *(v12 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_videoAsset), v14 = v12, v15 = v13, v14, !v13))
  {
    v21 = v0[36];
    v22 = v0[37];
    v23 = v0[35];

    (*(v22 + 56))(v23, 1, 1, v21);
    goto LABEL_16;
  }

  v16 = v0[36];
  v17 = v0[37];
  v18 = v0[35];
  sub_1000C8CD0();

  v19 = (*(v17 + 48))(v18, 1, v16);
  v20 = v0[40];
  if (v19 == 1)
  {

LABEL_16:
    sub_100073EEC(v0[35]);

    v24 = v0[1];

    return v24();
  }

  (*(v0[37] + 32))(v0[38], v0[35], v0[36]);

  if (v20)
  {
    swift_getObjectType();
    v25 = sub_100101284();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v0[48] = v25;
  v0[49] = v27;

  return _swift_task_switch(sub_1000D456C, v25);
}

uint64_t sub_1000D4184()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = *(v2 + 328);
    v4 = sub_1000D4C44;
  }

  else
  {
    v5 = *(v2 + 344);

    v3 = *(v2 + 328);
    v4 = sub_1000D42B8;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_1000D42B8()
{
  v13 = v0[34];
  v1 = v0[31];
  v15 = v0[33];
  v16 = v0[32];
  v2 = v0[29];
  v3 = v0[30];

  v4 = v0[55];
  v5 = v0[57];
  sub_100095D18();
  v6 = v0[56];
  v14 = sub_100101704();
  v7 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v4;
  v9[4] = v6;
  v9[5] = v5;
  v0[12] = sub_1000D5B34;
  v0[13] = v9;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_1000D2F3C;
  v0[11] = &unk_1001388C8;
  v10 = _Block_copy(v0 + 8);

  sub_100100C64();
  v0[27] = _swiftEmptyArrayStorage;
  sub_1000D5AD8(&qword_10014D090, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007210(&qword_10014E310, &unk_10010C8E0);
  sub_10002FCF8();
  sub_100101B64();
  sub_100101714();
  _Block_release(v10);

  (*(v3 + 8))(v1, v2);
  (*(v15 + 8))(v13, v16);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000D456C()
{
  v1 = v0[40];
  v2 = objc_allocWithZone(AVURLAsset);
  sub_1000FF474(v3);
  v5 = v4;
  v0[50] = [v2 initWithURL:v4 options:0];

  sub_100007210(&qword_10014C878, &qword_10010C500);
  v6 = sub_1000FFA84();
  v0[51] = v6;
  v7 = swift_task_alloc();
  v0[52] = v7;
  *v7 = v0;
  v7[1] = sub_1000D4688;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 58, v6, v1, &protocol witness table for MainActor);
}

uint64_t sub_1000D4688()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 384);
    v4 = sub_1000D4B24;
  }

  else
  {

    v3 = *(v2 + 384);
    v4 = sub_1000D47CC;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_1000D47CC()
{
  v1 = v0[50];

  v2 = v0[58];
  v0[61] = v0[59];
  v3 = v0[60];
  v0[53] = v2;
  v0[54] = v3;
  v4 = v0[41];

  return _swift_task_switch(sub_1000D484C, v4);
}

uint64_t sub_1000D484C()
{
  v1 = v0[53];
  v13 = v0[54];
  v18 = v0[36];
  v19 = v0[38];
  v2 = v0[34];
  v15 = v0[33];
  v3 = v0[31];
  v16 = v0[32];
  v17 = v0[37];
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[61];

  sub_100095D18();
  v14 = sub_100101704();
  v7 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v1;
  v9[4] = v6;
  v9[5] = v13;
  v0[6] = sub_1000D5AB8;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000D2F3C;
  v0[5] = &unk_100138878;
  v10 = _Block_copy(v0 + 2);

  sub_100100C64();
  v0[26] = _swiftEmptyArrayStorage;
  sub_1000D5AD8(&qword_10014D090, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007210(&qword_10014E310, &unk_10010C8E0);
  sub_10002FCF8();
  sub_100101B64();
  sub_100101714();
  _Block_release(v10);

  (*(v5 + 8))(v3, v4);
  (*(v15 + 8))(v2, v16);
  (*(v17 + 8))(v19, v18);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000D4B24()
{
  v1 = *(v0 + 400);

  v2 = *(v0 + 328);

  return _swift_task_switch(sub_1000D4B90, v2);
}

uint64_t sub_1000D4B90()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000D4C44()
{
  v1 = *(v0 + 344);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1000D4D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_100102054();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100102064();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v16 = *(Strong + OBJC_IVAR____TtC21JournalShareExtension18VideoAssetGridView_durationLabel);

    sub_100101944();
    sub_1001020A4();
    if (sub_100102094())
    {
      sub_100102034();
    }

    else
    {
      sub_100102044();
    }

    sub_1000FF184();
    (*(v5 + 8))(v7, v4);
    sub_1000D5AD8(&qword_10014CBE0, &type metadata accessor for Duration.TimeFormatStyle, &protocol conformance descriptor for Duration.TimeFormatStyle);
    sub_100102084();
    (*(v9 + 8))(v11, v8);
    v14 = sub_100100F94();

    v15 = v16;
    [v16 setText:v14];
  }
}

void sub_1000D4F90()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_fallbackView);
  v3 = *(v0 + OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType);
  v4 = v2;
  sub_1000F8768(1, v3);

  v5 = OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView;
  v6 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView);
  if (v6)
  {
    v7 = v6;
    v8 = [v7 layer];
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (!v9)
    {
    }

    v10 = [v9 player];

    if (v10)
    {
      [v10 rate];
      v12 = v11;

      if (v12 > 0.0 && (sub_1000D2F94() & 1) == 0)
      {
        v13 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_thumbnailView);
        v14 = [v13 image];
        if (v14 && (v14, ([v13 isHidden] & 1) == 0) && (objc_msgSend(v13, "alpha"), v15 == 1.0))
        {

          sub_10002B098();
        }

        else
        {
          v16 = *(v1 + v5);
          if (v16)
          {
            v17 = v16;
            v18 = [v17 layer];
            objc_opt_self();
            v19 = swift_dynamicCastObjCClass();
            if (!v19)
            {
            }

            v20 = [v19 player];

            [v20 pause];
            v21 = *(v1 + v5);
            if (v21)
            {
              timescale = kCMTimeZero.timescale;
              flags = kCMTimeZero.flags;
              epoch = kCMTimeZero.epoch;
              v25 = v21;
              v26 = [v25 layer];
              objc_opt_self();
              v27 = swift_dynamicCastObjCClass();
              if (!v27)
              {
              }

              v28 = [v27 player];

              v36 = epoch;
              value = kCMTimeZero.value;
              v38 = timescale;
              v39 = flags;
              v40 = epoch;
              v32 = epoch;
              v33 = kCMTimeZero.value;
              v34 = timescale;
              v35 = flags;
              v29 = kCMTimeZero.value;
              v30 = timescale;
              v31 = flags;
              [v28 seekToTime:&value toleranceBefore:&v33 toleranceAfter:&v29];
            }
          }

          sub_10002B268();
        }
      }
    }
  }
}

void sub_1000D5288()
{
  v1 = v0;
  v2 = sub_1000FF874();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000FF214();
  if (v6)
  {
    v7 = v6;
    v24 = 0xD000000000000019;
    v25 = 0x8000000100109520;
    sub_100101BF4();
    if (*(v7 + 16) && (v8 = sub_10004C500(v26), (v9 & 1) != 0))
    {
      sub_100010FA8(*(v7 + 56) + 32 * v8, v27);
      sub_10004DB40(v26);

      sub_100007210(&unk_10014D670, &unk_10010C9A0);
      if (swift_dynamicCast())
      {
        v10 = v24;
        v11 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_videoAsset);
        if (v11)
        {
          (*(v3 + 16))(v5, v11 + OBJC_IVAR____TtC21JournalShareExtension5Asset_id, v2);
          v12 = v11;
          v13 = sub_1000FF814();
          v15 = v14;
          v16 = (*(v3 + 8))(v5, v2);
          v26[0] = v13;
          v26[1] = v15;
          __chkstk_darwin(v16);
          *(&v23 - 2) = v26;
          LOBYTE(v13) = sub_10004F030(sub_1000D58DC, (&v23 - 4), v10);

          if ((v13 & 1) != 0 || (*(v1 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_isLoaded) & 1) == 0)
          {
          }

          else
          {
            v17 = (v1 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_finishPlayingAction);
            v18 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_finishPlayingAction);
            v19 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_finishPlayingAction + 8);
            *v17 = 0;
            v17[1] = 0;
            sub_10002FB80(v18, v19);
            sub_10002B268();
            sub_10002B098();
          }
        }

        else
        {

          v20 = (v1 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_finishPlayingAction);
          v21 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_finishPlayingAction);
          v22 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_finishPlayingAction + 8);
          *v20 = 0;
          v20[1] = 0;
          sub_10002FB80(v21, v22);
          sub_10002B268();
          sub_10002B098();
        }
      }
    }

    else
    {

      sub_10004DB40(v26);
    }
  }
}

id sub_1000D57A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoAssetGridView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VideoAssetGridView(uint64_t a1)
{
  result = qword_1001505A0;
  if (!qword_1001505A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D5884(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_100101E84() & 1;
  }
}

uint64_t sub_1000D58DC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100101E84() & 1;
  }
}

uint64_t sub_1000D5934()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000D5974(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000D598C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000D59CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008030;

  return sub_1000D3C00(a1, v4, v5, v6);
}

uint64_t sub_1000D5A80()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000D5AD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000D5B38()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_1001505B8);
  sub_100003D38(v0, qword_1001505B8);
  return sub_100100AD4();
}

uint64_t sub_1000D5BB8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_100007210(&qword_10014C400, &unk_10010FA10);
  v3[5] = swift_task_alloc();
  sub_100007210(&qword_10014C520, &qword_10010C0F8);
  v3[6] = swift_task_alloc();
  v5 = sub_100100004();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = sub_100101284();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[10] = v6;
  v3[11] = v8;

  return _swift_task_switch(sub_1000D5D28, v6);
}

uint64_t sub_1000D5D28()
{
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1000D5DC0;
  v2 = v0[3];
  v3 = v0[2];

  return sub_1000F1FC0(v3, v2);
}

uint64_t sub_1000D5DC0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 80);

  return _swift_task_switch(sub_1000D5EE8, v3);
}

uint64_t sub_1000D5EE8()
{
  v1 = v0[13];
  if (v1)
  {
LABEL_10:

    v14 = v0[1];

    return v14(v1);
  }

  v2 = v0[5];
  sub_1000D71DC(v0[4] + qword_100158918, v2);
  v3 = sub_100100214();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  if (v5 == 1)
  {
    sub_10000FFB4(v0[5], &qword_10014C400, &unk_10010FA10);
    (*(v7 + 56))(v9, 1, 1, v6);
LABEL_5:
    sub_10000FFB4(v0[6], &qword_10014C520, &qword_10010C0F8);
    if (qword_10014B8E0 != -1)
    {
      swift_once();
    }

    v10 = sub_100100AE4();
    sub_100003D38(v10, qword_1001505B8);
    v11 = sub_100100AC4();
    v12 = sub_1001015B4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "no visits data", v13, 2u);
    }

    goto LABEL_10;
  }

  sub_100100204();
  (*(v4 + 8))(v8, v3);
  if ((*(v7 + 48))(v9, 1, v6) == 1)
  {
    goto LABEL_5;
  }

  (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
  v16 = swift_task_alloc();
  v0[14] = v16;
  *v16 = v0;
  v16[1] = sub_1000D61E0;
  v17 = v0[9];
  v18 = v0[3];
  v19 = v0[2];

  return sub_1000D6860(v19, v18, v17);
}

uint64_t sub_1000D61E0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 120) = a1;

  v3 = *(v2 + 80);

  return _swift_task_switch(sub_1000D6308, v3);
}

uint64_t sub_1000D6308()
{
  if (*(v0 + 120))
  {
    v1 = *(*(v0 + 32) + qword_100158A80);
    *(v0 + 144) = v1;
    if (sub_100079B10(v1))
    {
      sub_10006D19C();
      v3 = v2;
      v4 = [objc_opt_self() mainScreen];
      [v4 scale];
      v6 = v5;

      v7 = swift_task_alloc();
      *(v0 + 128) = v7;
      *v7 = v0;
      v7[1] = sub_1000D64BC;
      v9 = *(v0 + 16);
      v8 = *(v0 + 24);

      return sub_100079B14(v9, v8, v3 * v6);
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v11 = *(v0 + 120);
  }

  else
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v11 = 0;
  }

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_1000D64BC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 80);

  return _swift_task_switch(sub_1000D65E4, v3);
}

uint64_t sub_1000D65E4()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    if (sub_1000797E0(*(v0 + 144)))
    {
      if (qword_10014B840 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + 64);
      v2 = *(v0 + 72);
      v4 = *(v0 + 56);
      sub_1000F3B9C(v1, *(*(v0 + 32) + qword_100151300), *(*(v0 + 32) + qword_100151300 + 8));

      (*(v3 + 8))(v2, v4);
    }

    else
    {
      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    }
  }

  else
  {
    if (qword_10014B8E0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 32);
    v6 = sub_100100AE4();
    sub_100003D38(v6, qword_1001505B8);
    v7 = v5;
    v8 = sub_100100AC4();
    v9 = sub_1001015B4();

    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 56);
    if (v10)
    {
      v14 = *(v0 + 32);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v14;
      *v16 = v14;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "%@ - error creating thumbnail from MKMap", v15, 0xCu);
      sub_10000FFB4(v16, &unk_10014D660, &qword_10010C710);
    }

    (*(v12 + 8))(v11, v13);
  }

  v18 = *(v0 + 120);

  v19 = *(v0 + 8);

  return v19(v18);
}

uint64_t sub_1000D6860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_100101284();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[21] = v5;
  v4[22] = v7;

  return _swift_task_switch(sub_1000D68F0, v5);
}

uint64_t sub_1000D68F0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  sub_100007210(&qword_100150748, &qword_10010FA30);
  v3 = sub_100100004();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10010BC80;
  (*(v4 + 16))(v6 + v5, v1, v3);
  *(v0 + 184) = sub_1000BF1A0(v6);
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  *(v0 + 232) = *(v2 + qword_100158A80);
  *(v0 + 192) = *(v2 + qword_100158A90);
  sub_100101304();
  *(v0 + 200) = sub_1001012F4();
  v7 = sub_100101284();

  return _swift_task_switch(sub_1000D6AB0, v7);
}

uint64_t sub_1000D6AB0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  v3 = *(v0 + 232);

  *(v0 + 208) = sub_1000AECB8(v2, 0, v3, 0, 0, 1, v1, 0);

  v4 = *(v0 + 168);

  return _swift_task_switch(sub_1000D6B54, v4);
}

uint64_t sub_1000D6B54()
{
  v1 = v0[26];
  [v1 _setRendersInBackground:1];
  v2 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v1];
  v0[27] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000D6CA8;
  v3 = swift_continuation_init();
  v0[17] = sub_100007210(&qword_10014C7B0, &unk_10010C2B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000994EC;
  v0[13] = &unk_1001388F0;
  v0[14] = v3;
  [v2 startWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000D6CA8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 168);
  if (v2)
  {
    v4 = sub_1000D6E6C;
  }

  else
  {
    v4 = sub_1000D6DD8;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_1000D6DD8()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[18];
  v4 = [v3 image];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1000D6E6C(uint64_t a1)
{
  swift_willThrow();
  if (qword_10014B8E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100100AE4();
  sub_100003D38(v2, qword_1001505B8);
  swift_errorRetain();
  v3 = sub_100100AC4();
  v4 = sub_1001015B4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[27];
  v7 = v1[26];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MKMapSnapshotter: Unable to create Location Preview Map Snapshot with error: %@", v8, 0xCu);
    sub_10000FFB4(v9, &unk_10014D660, &qword_10010C710);
  }

  else
  {
  }

  v11 = v1[1];

  return v11(0);
}

uint64_t type metadata accessor for GenericMapThumbnailCacheOperation(uint64_t a1)
{
  result = qword_1001505F8;
  if (!qword_1001505F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D70EC(uint64_t a1)
{
  sub_1000D717C(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1000D717C(uint64_t a1)
{
  if (!qword_100150608)
  {
    sub_100100214();
    v1 = sub_100101A94();
    if (!v2)
    {
      atomic_store(v1, &qword_100150608);
    }
  }
}

uint64_t sub_1000D71DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&qword_10014C400, &unk_10010FA10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1000D738C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s15MOMapAnnotationCMa();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000D73F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100007210(&qword_10014CBD8, &qword_10010E240);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100010014(a3, v25 - v10, &qword_10014CBD8, &qword_10010E240);
  v12 = sub_100101324();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000FFB4(v11, &qword_10014CBD8, &qword_10010E240);
  }

  else
  {
    sub_100101314();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100101284();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100101044() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000FFB4(a3, &qword_10014CBD8, &qword_10010E240);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000FFB4(a3, &qword_10014CBD8, &qword_10010E240);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000D76F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100007210(&qword_10014CBD8, &qword_10010E240);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100010014(a3, v25 - v10, &qword_10014CBD8, &qword_10010E240);
  v12 = sub_100101324();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000FFB4(v11, &qword_10014CBD8, &qword_10010E240);
  }

  else
  {
    sub_100101314();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100101284();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100101044() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100007210(&qword_10014C870, &qword_10010C4F8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10000FFB4(a3, &qword_10014CBD8, &qword_10010E240);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000FFB4(a3, &qword_10014CBD8, &qword_10010E240);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100007210(&qword_10014C870, &qword_10010C4F8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

double sub_1000D7A0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_1000D7A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100007210(&qword_10014CBD8, &qword_10010E240);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100010014(a3, v22 - v9, &qword_10014CBD8, &qword_10010E240);
  v11 = sub_100101324();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000FFB4(v10, &qword_10014CBD8, &qword_10010E240);
  }

  else
  {
    sub_100101314();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100101284();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_100101044() + 32;

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

      sub_10000FFB4(a3, &qword_10014CBD8, &qword_10010E240);

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

  sub_10000FFB4(a3, &qword_10014CBD8, &qword_10010E240);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000D7D0C()
{
  v0 = sub_100007210(&qword_1001509D8, &qword_10010FAF8);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_100007210(&qword_1001509E0, &unk_10010FB00);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_1000FF264();
  sub_100003CD4(v6, qword_100158920);
  sub_100003D38(v6, qword_100158920);
  v7 = sub_1000FF9C4();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1000FF9F4();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  return sub_1000FF254();
}

uint64_t sub_1000D7F04(uint64_t a1, char a2)
{
  v5 = sub_1000FF8C4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_startDate;
  v10 = sub_1000FF804();
  v11 = *(*(v10 - 8) + 56);
  v11(v2 + v9, 1, 1, v10);
  v11(v2 + OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_endDate, 1, 1, v10);
  *(v2 + OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_pauseTask) = 0;
  v12 = OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_backgroundingSemaphore;
  *(v2 + v12) = dispatch_semaphore_create(0);
  sub_100100AD4();
  (*(v6 + 104))(v8, enum case for Calendar.Identifier.gregorian(_:), v5);
  sub_1000FF8D4();
  (*(v6 + 8))(v8, v5);
  *(v2 + OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_shouldShowTTRAlert) = 0;
  v13 = (v2 + OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_ttrErrorDescription);
  *v13 = 0;
  v13[1] = 0;
  sub_100010014(a1, v2 + 16, &qword_1001509D0, &unk_10010FAE8);
  v14 = &NSExtensionHostDidEnterBackgroundNotification;
  if ((a2 & 1) == 0)
  {
    v14 = &UISceneDidEnterBackgroundNotification;
  }

  v15 = *v14;
  v16 = objc_opt_self();
  v17 = [v16 defaultCenter];
  [v17 addObserver:v2 selector:"appDidEnterBackground:" name:v15 object:0];

  v18 = [v16 defaultCenter];
  [v18 addObserver:v2 selector:"appWillBeTerminated" name:UIApplicationWillTerminateNotification object:0];

  v19 = [v16 defaultCenter];
  v20 = qword_10014B7B8;

  if (v20 != -1)
  {
    swift_once();
  }

  [v19 addObserver:v2 selector:"userBecameActive" name:qword_100158738 object:0];

  v21 = [v16 defaultCenter];
  v22 = qword_10014B7C0;

  if (v22 != -1)
  {
    swift_once();
  }

  [v21 addObserver:v2 selector:"userBecameInactive" name:qword_100158740 object:0];

  sub_10000FFB4(a1, &qword_1001509D0, &unk_10010FAE8);
  return v2;
}

double sub_1000D82FC()
{
  v1 = v0;
  v2 = sub_1000FF804();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007210(&unk_10014D640, &unk_10010C480);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  sub_1000FF204();
  if (v22)
  {
    sub_1000DD504();
    if (swift_dynamicCast())
    {
      v9 = v20;
      v10 = [v20 session];
      v11 = [v10 role];

      v12 = sub_100100FD4();
      v14 = v13;
      if (v12 == sub_100100FD4() && v14 == v15)
      {
      }

      else
      {
        v18 = sub_100101E84();

        if ((v18 & 1) == 0)
        {
          return result;
        }
      }
    }
  }

  else
  {
    sub_10000FFB4(v21, &qword_10014CA68, &qword_10010D130);
  }

  v16 = OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_startDate;
  swift_beginAccess();
  sub_100010014(v1 + v16, v8, &unk_10014D640, &unk_10010C480);
  LODWORD(v16) = (*(v3 + 48))(v8, 1, v2);
  sub_10000FFB4(v8, &unk_10014D640, &unk_10010C480);
  if (v16 != 1)
  {
    sub_1000FF7C4();
    sub_1000D996C(v5, 60.0);
    (*(v3 + 8))(v5, v2);
  }

  return result;
}

double sub_1000D86C8()
{
  v1 = sub_100007210(&qword_10014CBD8, &qword_10010E240);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_100007210(&unk_10014D640, &unk_10010C480);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_startDate;
  swift_beginAccess();
  sub_100010014(v0 + v7, v6, &unk_10014D640, &unk_10010C480);
  v8 = sub_1000FF804();
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_10000FFB4(v6, &unk_10014D640, &unk_10010C480);
  if (v7 != 1)
  {
    v10 = sub_100101324();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    sub_100101304();

    v11 = v0;
    v12 = sub_1001012F4();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v11;
    sub_1000D73F8(0, 0, v3, &unk_10010FB68, v13);
  }

  return result;
}

uint64_t sub_1000D88D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1000FF804();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_100101304();
  v4[6] = sub_1001012F4();
  v6 = sub_100101284();
  v4[7] = v6;
  v4[8] = v7;

  return _swift_task_switch(sub_1000D89CC, v6);
}

uint64_t sub_1000D89CC(uint64_t a1)
{
  sub_1000FF7C4();
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_1000D8A70;
  v3 = *(v1 + 40);

  return sub_1000DB114(v3, 0);
}

uint64_t sub_1000D8A70()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 56);

  return _swift_task_switch(sub_1000DD810, v5);
}

void sub_1000D8C0C()
{
  v1 = sub_1000FF804();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007210(&unk_10014D640, &unk_10010C480);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_startDate;
  swift_beginAccess();
  sub_100010014(v0 + v8, v7, &unk_10014D640, &unk_10010C480);
  LODWORD(v8) = (*(v2 + 48))(v7, 1, v1);
  sub_10000FFB4(v7, &unk_10014D640, &unk_10010C480);
  if (v8 == 1)
  {
    sub_1000FF7C4();
    sub_1000D962C(v4);
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v9 = sub_100100AC4();
    v10 = sub_100101594();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      sub_1000FF7C4();
      v13 = sub_1000FF724();
      v15 = v14;
      (*(v2 + 8))(v4, v1);
      v16 = sub_10007A774(v13, v15, &v17);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "User became active at %s", v11, 0xCu);
      sub_10001100C(v12);
    }

    sub_1000DAE68();
  }
}

double sub_1000D8ED4()
{
  v1 = v0;
  v2 = sub_100007210(&qword_10014CBD8, &qword_10010E240);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_1000FF804();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007210(&unk_10014D640, &unk_10010C480);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v12 = OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_startDate;
  swift_beginAccess();
  sub_100010014(v0 + v12, v11, &unk_10014D640, &unk_10010C480);
  LODWORD(v12) = (*(v6 + 48))(v11, 1, v5);
  sub_10000FFB4(v11, &unk_10014D640, &unk_10010C480);
  if (v12 != 1)
  {
    v14 = sub_100100AC4();
    v15 = sub_100101594();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v4;
      v28 = v17;
      v18 = v17;
      *v16 = 136315138;
      sub_1000FF7C4();
      v19 = sub_1000FF724();
      v21 = v20;
      (*(v6 + 8))(v8, v5);
      v22 = sub_10007A774(v19, v21, &v28);

      *(v16 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "User became inactive at %s", v16, 0xCu);
      sub_10001100C(v18);
      v4 = v27;
    }

    v23 = sub_100101324();
    (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
    sub_100101304();

    v24 = sub_1001012F4();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = &protocol witness table for MainActor;
    v25[4] = v1;
    sub_1000D73F8(0, 0, v4, &unk_10010FB58, v25);
  }

  return result;
}

uint64_t sub_1000D924C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1000FF804();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_100101304();
  v4[6] = sub_1001012F4();
  v6 = sub_100101284();
  v4[7] = v6;
  v4[8] = v7;

  return _swift_task_switch(sub_1000D9340, v6);
}

uint64_t sub_1000D9340(uint64_t a1)
{
  sub_1000FF7C4();
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_1000D93E4;
  v3 = *(v1 + 40);

  return sub_1000DB114(v3, 1);
}

uint64_t sub_1000D93E4()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 56);

  return _swift_task_switch(sub_1000D9568, v5);
}

uint64_t sub_1000D9568()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1000D95E8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);

  return result;
}

void sub_1000D962C(uint64_t a1)
{
  v25 = a1;
  v2 = sub_1000FF804();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007210(&unk_10014D640, &unk_10010C480);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_startDate;
  swift_beginAccess();
  sub_100010014(v1 + v12, v11, &unk_10014D640, &unk_10010C480);
  v13 = (*(v3 + 48))(v11, 1, v2);
  sub_10000FFB4(v11, &unk_10014D640, &unk_10010C480);
  if (v13 == 1)
  {
    v14 = *(v3 + 16);
    v15 = v25;
    v14(v9, v25, v2);
    (*(v3 + 56))(v9, 0, 1, v2);
    swift_beginAccess();
    sub_1000DC8D0(v9, v1 + v12);
    swift_endAccess();
    v14(v5, v15, v2);
    v16 = sub_100100AC4();
    v17 = sub_100101594();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26[0] = v19;
      *v18 = 136315138;
      v20 = sub_1000FF724();
      v22 = v21;
      (*(v3 + 8))(v5, v2);
      v23 = sub_10007A774(v20, v22, v26);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Started mindfulness session %s", v18, 0xCu);
      sub_10001100C(v19);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }
  }
}

void sub_1000D996C(uint64_t a1, double a2)
{
  v3 = v2;
  v43 = a1;
  v5 = sub_100007210(&qword_10014CBD8, &qword_10010E240);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - v6;
  v7 = sub_1000FF804();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = sub_100007210(&unk_10014D640, &unk_10010C480);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v16 = OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_startDate;
  swift_beginAccess();
  sub_100010014(v2 + v16, v15, &unk_10014D640, &unk_10010C480);
  v17 = (*(v8 + 48))(v15, 1, v7);
  sub_10000FFB4(v15, &unk_10014D640, &unk_10010C480);
  if (v17 != 1)
  {
    v18 = v43;
    v39 = *(v8 + 16);
    v40 = v8 + 16;
    v39(v12, v43, v7);
    v19 = sub_100100AC4();
    v20 = sub_100101594();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v21 = 136315138;
      v22 = sub_1000FF724();
      v24 = v23;
      (*(v8 + 8))(v12, v7);
      v25 = sub_10007A774(v22, v24, aBlock);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Paused mindfulness session at %s", v21, 0xCu);
      sub_10001100C(v38);

      v18 = v43;
    }

    else
    {

      (*(v8 + 8))(v12, v7);
    }

    v26 = sub_100101324();
    v27 = v41;
    (*(*(v26 - 8) + 56))(v41, 1, 1, v26);
    v28 = v42;
    v39(v42, v18, v7);
    sub_100101304();

    v29 = sub_1001012F4();
    v30 = *(v8 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = &protocol witness table for MainActor;
    *(v31 + 32) = a2;
    *(v31 + 40) = v3;
    v38 = *(v8 + 32);
    v38(v31 + ((v30 + 48) & ~v30), v28, v7);
    *(v3 + OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_pauseTask) = sub_1000D7A60(0, 0, v27, &unk_10010FB18, v31);

    v32 = [objc_opt_self() processInfo];
    v33 = sub_100100F94();
    v34 = swift_allocObject();
    swift_weakInit();
    v39(v28, v43, v7);
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    v38(v35 + ((v30 + 24) & ~v30), v28, v7);
    aBlock[4] = sub_1000DD000;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D7A0C;
    aBlock[3] = &unk_100138990;
    v36 = _Block_copy(aBlock);

    [v32 performExpiringActivityWithReason:v33 usingBlock:v36];
    _Block_release(v36);
  }
}

uint64_t sub_1000D9F2C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a1;
  v7 = sub_100101D64();
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();
  sub_100101304();
  *(v6 + 64) = sub_1001012F4();
  v8 = sub_100101284();
  *(v6 + 72) = v8;
  *(v6 + 80) = v9;

  return _swift_task_switch(sub_1000DA024, v8);
}

uint64_t sub_1000DA024(uint64_t a1)
{
  v2 = sub_1001020A4();
  v4 = v3;
  sub_100101F04();
  v5 = swift_task_alloc();
  *(v1 + 88) = v5;
  *v5 = v1;
  v5[1] = sub_1000DA100;

  return sub_1000DC940(v2, v4, 0, 0, 1);
}

uint64_t sub_1000DA100()
{
  v2 = *v1;
  v3 = *v1;
  v2[12] = v0;

  v4 = v2[7];
  v5 = v2[6];
  v6 = v2[5];
  if (v0)
  {
    (*(v5 + 8))(v4, v6);
    v7 = v2[9];

    return _swift_task_switch(sub_1000DA464, v7);
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v8 = swift_task_alloc();
    v2[13] = v8;
    *v8 = v3;
    v8[1] = sub_1000DA2D8;
    v9 = v2[4];

    return sub_1000DB114(v9, 0);
  }
}

uint64_t sub_1000DA2D8()
{
  v1 = *v0;

  v2 = *(v1 + 72);

  return _swift_task_switch(sub_1000DA3F8, v2);
}

uint64_t sub_1000DA3F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DA464()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000DA4D0(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000FF804();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007210(&qword_10014CBD8, &qword_10010E240);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = sub_100101324();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    (*(v6 + 16))(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
    sub_100101304();

    v15 = sub_1001012F4();
    v16 = (*(v6 + 80) + 48) & ~*(v6 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = &protocol witness table for MainActor;
    *(v17 + 32) = a1 & 1;
    *(v17 + 40) = v13;
    (*(v6 + 32))(v17 + v16, v8, v5);
    sub_1000D73F8(0, 0, v11, &unk_10010FB28, v17);

    v18 = *(v13 + OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_backgroundingSemaphore);
    sub_1001017E4();
  }
}

uint64_t sub_1000DA72C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 88) = a4;
  sub_100101304();
  *(v6 + 32) = sub_1001012F4();
  v7 = sub_100101284();
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;

  return _swift_task_switch(sub_1000DA7C8, v7);
}

uint64_t sub_1000DA7C8(uint64_t a1)
{
  if (*(v1 + 88) == 1)
  {
    v2 = sub_100100AC4();
    v3 = sub_1001015D4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Process is being suspended so ending the background timer early", v4, 2u);
    }

    v5 = swift_task_alloc();
    *(v1 + 56) = v5;
    *v5 = v1;
    v5[1] = sub_1000DAA00;
    v6 = *(v1 + 24);

    return sub_1000DB114(v6, 0);
  }

  else
  {
    v8 = *(*(v1 + 16) + OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_pauseTask);
    *(v1 + 64) = v8;
    if (v8)
    {

      v9 = swift_task_alloc();
      *(v1 + 72) = v9;
      v10 = sub_100007210(&qword_10014EBE0, &unk_10010C1A0);
      *v9 = v1;
      v9[1] = sub_1000DAB94;

      return Task.value.getter(v10, v8, &type metadata for () + 8, v10, &protocol self-conformance witness table for Error);
    }

    else
    {

      sub_1001017F4();
      v11 = *(v1 + 8);

      return v11();
    }
  }
}

uint64_t sub_1000DAA00()
{
  v1 = *v0;

  v2 = *(v1 + 40);

  return _swift_task_switch(sub_1000DAB20, v2);
}

uint64_t sub_1000DAB20()
{

  sub_1001017F4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DAB94()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1000DAD50;
  }

  else
  {
    v4 = sub_1000DACD0;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_1000DACD0()
{

  sub_1001017F4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DAD50()
{

  v1 = sub_100100AC4();
  v2 = sub_100101594();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Sleep task was canceled", v3, 2u);
  }

  sub_1001017F4();
  v4 = *(v0 + 8);

  return v4();
}

void sub_1000DAE68()
{
  v1 = sub_1000FF804();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_pauseTask;
  if (!*(v0 + OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_pauseTask))
  {
    goto LABEL_4;
  }

  if (swift_task_isCancelled())
  {

LABEL_4:
    sub_1000FF7C4();
    sub_1000D962C(v4);
    (*(v2 + 8))(v4, v1);
    return;
  }

  if (*(v0 + v5))
  {

    sub_100007210(&qword_10014EBE0, &unk_10010C1A0);
    sub_100101344();

    *(v0 + v5) = 0;
  }

  v14 = sub_100100AC4();
  v6 = sub_100101594();
  if (os_log_type_enabled(v14, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    sub_1000FF7C4();
    v9 = sub_1000FF724();
    v11 = v10;
    (*(v2 + 8))(v4, v1);
    v12 = sub_10007A774(v9, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v14, v6, "Resumed mindfulness session at %s", v7, 0xCu);
    sub_10001100C(v8);
  }

  else
  {

    v13 = v14;
  }
}

uint64_t sub_1000DB114(uint64_t a1, char a2)
{
  *(v3 + 520) = a2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v2;
  v4 = sub_1000FF9B4();
  *(v3 + 320) = v4;
  *(v3 + 328) = *(v4 - 8);
  *(v3 + 336) = swift_task_alloc();
  v5 = sub_1000FF804();
  *(v3 + 344) = v5;
  *(v3 + 352) = *(v5 - 8);
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 368) = swift_task_alloc();
  *(v3 + 376) = swift_task_alloc();
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  sub_100007210(&unk_10014D640, &unk_10010C480);
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  sub_100101304();
  *(v3 + 464) = sub_1001012F4();
  v6 = sub_100101284();
  *(v3 + 472) = v6;
  *(v3 + 480) = v7;

  return _swift_task_switch(sub_1000DB324, v6);
}

uint64_t sub_1000DB324()
{
  v97 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v4 = *(v0 + 312);
  v5 = OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_startDate;
  *(v0 + 488) = OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_startDate;
  swift_beginAccess();
  sub_100010014(v4 + v5, v1, &unk_10014D640, &unk_10010C480);
  v6 = *(v3 + 48);
  if (v6(v1, 1, v2) == 1)
  {
    v7 = *(v0 + 456);

    sub_10000FFB4(v7, &unk_10014D640, &unk_10010C480);
    v8 = sub_100100AC4();
    v9 = sub_1001015B4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Not currently in a mindfulness session, so nothing will be logged to Health";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v8, v9, v11, v10, 2u);

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v93 = v4;
  v94 = v6;
  v12 = *(v0 + 312);
  sub_10000FFB4(*(v0 + 456), &unk_10014D640, &unk_10010C480);
  v13 = OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_pauseTask;
  if (*(v12 + OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_pauseTask))
  {

    sub_100007210(&qword_10014EBE0, &unk_10010C1A0);
    sub_100101344();

    *(v12 + v13) = 0;
  }

  v14 = *(v0 + 448);
  v15 = *(v0 + 344);
  v16 = *(v0 + 352);
  v17 = *(v0 + 312);
  if (*(v0 + 520) == 1)
  {
    sub_1000FF744();
  }

  else
  {
    (*(v16 + 16))(*(v0 + 448), *(v0 + 304), *(v0 + 344));
  }

  v18 = *(v16 + 56);
  v18(v14, 0, 1, v15);
  v19 = OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_endDate;
  swift_beginAccess();
  sub_1000DC8D0(v14, v17 + v19);
  swift_endAccess();
  v92 = v18;
  *(v0 + 496) = v18;
  v20 = *(v0 + 440);
  v21 = *(v0 + 344);
  sub_100010014(v93 + v5, v20, &unk_10014D640, &unk_10010C480);
  if (v94(v20, 1, v21) == 1)
  {
    v22 = *(v0 + 440);

    v23 = &unk_10014D640;
    v24 = &unk_10010C480;
    v25 = v22;
LABEL_19:
    sub_10000FFB4(v25, v23, v24);
LABEL_20:
    v8 = sub_100100AC4();
    v9 = sub_1001015B4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "endDate, healthManager, or minimumStartDate was nil";
      goto LABEL_22;
    }

LABEL_23:

LABEL_24:

    v46 = *(v0 + 8);

    return v46();
  }

  v91 = v5;
  v26 = *(v0 + 432);
  v27 = *(v0 + 344);
  v28 = *(v0 + 312);
  v29 = *(*(v0 + 352) + 32);
  v29(*(v0 + 416), *(v0 + 440), v27);
  v30 = OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_endDate;
  *(v0 + 504) = OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_endDate;
  swift_beginAccess();
  sub_100010014(v28 + v30, v26, &unk_10014D640, &unk_10010C480);
  if (v94(v26, 1, v27) == 1)
  {
    v31 = *(v0 + 432);
    (*(*(v0 + 352) + 8))(*(v0 + 416), *(v0 + 344));

    v23 = &unk_10014D640;
    v24 = &unk_10010C480;
    v25 = v31;
    goto LABEL_19;
  }

  v32 = *(v0 + 312);
  v29(*(v0 + 408), *(v0 + 432), *(v0 + 344));
  sub_100010014(v32 + 16, v0 + 56, &qword_1001509D0, &unk_10010FAE8);
  if (!*(v0 + 80))
  {
    v41 = *(v0 + 408);
    v42 = *(v0 + 416);
    v43 = *(v0 + 344);
    v44 = *(v0 + 352);

    v45 = *(v44 + 8);
    v45(v41, v43);
    v45(v42, v43);
    v23 = &qword_1001509D0;
    v24 = &unk_10010FAE8;
    v25 = v0 + 56;
    goto LABEL_19;
  }

  sub_10005240C((v0 + 56), v0 + 16);
  if (qword_10014B8E8 != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 424);
  v89 = *(v0 + 344);
  v34 = sub_1000FF264();
  sub_100003D38(v34, qword_100158920);
  sub_1000FF964();
  if (v94(v33, 1, v89) == 1)
  {
    v35 = *(v0 + 416);
    v36 = *(v0 + 424);
    v37 = *(v0 + 408);
    v38 = *(v0 + 344);
    v39 = *(v0 + 352);

    v40 = *(v39 + 8);
    v40(v37, v38);
    v40(v35, v38);
    sub_10000FFB4(v36, &unk_10014D640, &unk_10010C480);
    sub_10001100C((v0 + 16));
    goto LABEL_20;
  }

  v95 = v30;
  v90 = v28;
  v48 = *(v0 + 336);
  v49 = *(v0 + 320);
  v50 = *(v0 + 328);
  v29(*(v0 + 400), *(v0 + 424), *(v0 + 344));
  (*(v50 + 104))(v48, enum case for Calendar.Component.second(_:), v49);
  v51 = sub_1000FF994();
  (*(v50 + 8))(v48, v49);
  if ((v51 + 1) > 1)
  {
    v56 = *(v0 + 408);
    v57 = *(v0 + 416);
    v59 = *(v0 + 360);
    v58 = *(v0 + 368);
    v60 = *(v0 + 344);
    v61 = *(v0 + 352);

    v62 = *(v61 + 16);
    v62(v58, v57, v60);
    v62(v59, v56, v60);
    v63 = sub_100100AC4();
    v64 = sub_1001015B4();
    v65 = os_log_type_enabled(v63, v64);
    v67 = *(v0 + 408);
    v66 = *(v0 + 416);
    v68 = *(v0 + 400);
    v70 = *(v0 + 360);
    v69 = *(v0 + 368);
    v71 = *(v0 + 344);
    v72 = *(v0 + 352);
    if (v65)
    {
      v86 = v64;
      v73 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v73 = 136315394;
      v87 = v68;
      v88 = v66;
      v74 = sub_1000FF724();
      v76 = v75;
      v77 = *(v72 + 8);
      v77(v69, v71);
      v78 = sub_10007A774(v74, v76, &v96);

      *(v73 + 4) = v78;
      *(v73 + 12) = 2080;
      v79 = sub_1000FF724();
      v81 = v80;
      v77(v70, v71);
      v82 = sub_10007A774(v79, v81, &v96);

      *(v73 + 14) = v82;
      _os_log_impl(&_mh_execute_header, v63, v86, "The Mindfulness session duration was less than a minute, so it won't be logged into Health (start: %s, end: %s", v73, 0x16u);
      swift_arrayDestroy();

      v77(v87, v71);
      v77(v67, v71);
      v77(v88, v71);
    }

    else
    {

      v83 = *(v72 + 8);
      v83(v70, v71);
      v83(v69, v71);
      v83(v68, v71);
      v83(v67, v71);
      v83(v66, v71);
    }

    v84 = *(v0 + 448);
    v85 = *(v0 + 344);
    v92(v84, 1, 1, v85);
    swift_beginAccess();
    sub_1000DC8D0(v84, v93 + v91);
    swift_endAccess();
    v92(v84, 1, 1, v85);
    swift_beginAccess();
    sub_1000DC8D0(v84, v90 + v95);
    swift_endAccess();
    sub_10001100C((v0 + 16));
    goto LABEL_24;
  }

  v52 = *(v0 + 464);
  sub_1000110C0((v0 + 16), *(v0 + 40));

  v53 = swift_task_alloc();
  *(v0 + 512) = v53;
  *v53 = v0;
  v53[1] = sub_1000DBDE0;
  v55 = *(v0 + 408);
  v54 = *(v0 + 416);

  return sub_100010654(v52, &protocol witness table for MainActor, v54, v55);
}

uint64_t sub_1000DBDE0()
{
  v1 = *(*v0 + 464);

  if (v1)
  {
    swift_getObjectType();
    v2 = sub_100101284();
  }

  else
  {
    v2 = 0;
  }

  return _swift_task_switch(sub_1000DBF1C, v2);
}

uint64_t sub_1000DBF1C()
{

  v1 = *(v0 + 472);

  return _swift_task_switch(sub_1000DBF80, v1);
}

uint64_t sub_1000DBF80()
{
  v52 = v0;
  v1 = v0[51];
  v3 = v0[48];
  v2 = v0[49];
  v4 = v0[47];
  v5 = v0[43];
  v6 = v0[44];
  v7 = v0[38];
  v47 = v0[52];

  v8 = *(v6 + 16);
  v8(v2, v7, v5);
  v8(v3, v1, v5);
  v8(v4, v47, v5);
  v9 = sub_100100AC4();
  v10 = sub_100101594();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[48];
  v12 = v0[49];
  v14 = v0[47];
  v16 = v0[43];
  v15 = v0[44];
  if (v11)
  {
    v46 = v0[48];
    v17 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v50 = v48;
    *v17 = 136315394;
    v18 = sub_1000FF724();
    v20 = v19;
    v45 = v10;
    v21 = *(v15 + 8);
    v21(v12, v16);
    v22 = sub_10007A774(v18, v20, &v50);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2048;
    sub_1000FF734();
    v24 = v23;
    v21(v14, v16);
    v21(v46, v16);
    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v9, v45, "Ended mindfulness session at %s and logged a mindfulness session for %f seconds", v17, 0x16u);
    sub_10001100C(v48);

    if ((sub_100100784() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    v21 = *(v15 + 8);
    v21(v14, v16);
    v21(v13, v16);
    v21(v12, v16);
    if ((sub_100100784() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_1000FF734();
  if (v25 > 3600.0)
  {
    v27 = v0[51];
    v26 = v0[52];
    v28 = v0[43];
    v49 = v0[50];
    v29 = v0[39];
    *(v29 + OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_shouldShowTTRAlert) = 1;
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_100101C64(56);
    v30 = v51;
    v0[36] = v50;
    v0[37] = v30;
    v54._countAndFlagsBits = 0x7461447472617473;
    v54._object = 0xEB00000000203A65;
    sub_1001010B4(v54);
    sub_1000DD350(&qword_10014C020, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v55._countAndFlagsBits = sub_100101E44();
    sub_1001010B4(v55);

    v56._countAndFlagsBits = 0x746144646E65202CLL;
    v56._object = 0xEB00000000203A65;
    sub_1001010B4(v56);
    v57._countAndFlagsBits = sub_100101E44();
    sub_1001010B4(v57);

    v58._object = 0x80000001001097B0;
    v58._countAndFlagsBits = 0xD000000000000014;
    sub_1001010B4(v58);
    sub_1000FF734();
    sub_100101384();
    v59._countAndFlagsBits = 0x73646E6F63657320;
    v59._object = 0xE800000000000000;
    sub_1001010B4(v59);
    v31 = v0[36];
    v32 = v0[37];
    v21(v49, v28);
    v21(v27, v28);
    v21(v26, v28);
    v33 = (v29 + OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_ttrErrorDescription);
    *v33 = v31;
    v33[1] = v32;

    goto LABEL_8;
  }

LABEL_7:
  v34 = v0[51];
  v35 = v0[52];
  v36 = v0[43];
  v21(v0[50], v36);
  v21(v34, v36);
  v21(v35, v36);
LABEL_8:
  v38 = v0[62];
  v37 = v0[63];
  v39 = v0[61];
  v40 = v0[56];
  v41 = v0[43];
  v42 = v0[39];
  v38(v40, 1, 1, v41);
  swift_beginAccess();
  sub_1000DC8D0(v40, v42 + v39);
  swift_endAccess();
  v38(v40, 1, 1, v41);
  swift_beginAccess();
  sub_1000DC8D0(v40, v42 + v37);
  swift_endAccess();
  sub_10001100C(v0 + 2);

  v43 = v0[1];

  return v43();
}

uint64_t sub_1000DC578()
{
  sub_10000FFB4(v0 + 16, &qword_1001509D0, &unk_10010FAE8);
  sub_10000FFB4(v0 + OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_startDate, &unk_10014D640, &unk_10010C480);
  sub_10000FFB4(v0 + OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_endDate, &unk_10014D640, &unk_10010C480);

  v1 = OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_logger;
  v2 = sub_100100AE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_calendar;
  v4 = sub_1000FF9C4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MindfulnessManager(uint64_t a1)
{
  result = qword_100150840;
  if (!qword_100150840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DC73C(uint64_t a1)
{
  sub_1000DC878(319);
  if (v1 <= 0x3F)
  {
    sub_100100AE4();
    if (v2 <= 0x3F)
    {
      sub_1000FF9C4();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000DC878(uint64_t a1)
{
  if (!qword_10014D1E0)
  {
    sub_1000FF804();
    v1 = sub_100101A94();
    if (!v2)
    {
      atomic_store(v1, &qword_10014D1E0);
    }
  }
}

uint64_t sub_1000DC8D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&unk_10014D640, &unk_10010C480);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DC940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_100101D54();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1000DCA40, 0);
}

uint64_t sub_1000DCA40()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_100101D64();
  v5 = sub_1000DD350(&qword_1001509E8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_100101EE4();
  sub_1000DD350(&qword_1001509F0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_100101D74();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1000DCBD0;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1000DCBD0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1000DCD8C, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1000DCD8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DCDFC(uint64_t a1)
{
  v4 = *(sub_1000FF804() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = v1[4];
  v9 = *(v1 + 5);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008030;

  return sub_1000D9F2C(v8, a1, v6, v7, v9, v1 + v5);
}

uint64_t sub_1000DCF04()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000DCF3C()
{
  v1 = sub_1000FF804();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000DD000(char a1)
{
  v3 = *(sub_1000FF804() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1000DA4D0(a1, v4, v5);
}

uint64_t sub_1000DD074(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000DD08C()
{
  v1 = sub_1000FF804();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000DD158(uint64_t a1)
{
  v4 = *(sub_1000FF804() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008030;

  return sub_1000DA72C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1000DD260()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000DD298(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008124;

  return sub_10008ECB4(a1, v4);
}

uint64_t sub_1000DD350(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000DD39C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008124;

  return sub_1000D924C(a1, v4, v5, v6);
}

uint64_t sub_1000DD450(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008124;

  return sub_1000D88D8(a1, v4, v5, v6);
}

unint64_t sub_1000DD504()
{
  result = qword_1001509F8;
  if (!qword_1001509F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001509F8);
  }

  return result;
}

uint64_t sub_1000DD550(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1000DD644;

  return v5(v2 + 32);
}

uint64_t sub_1000DD644()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000DD758(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008124;

  return sub_1000DD550(a1, v4);
}

Swift::Int sub_1000DD828()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 4);
  sub_100101F84();
  sub_1000DEE90(v1, v2, v3, v4);
  if (v5)
  {
    sub_100101FA4(1u);
    v6 = v5;
    sub_100101A44();
  }

  else
  {
    sub_100101FA4(0);
  }

  return sub_100101FE4();
}

void sub_1000DD8C4(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1000DEE90(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  if (v2)
  {
    sub_100101FA4(1u);
    v3 = v2;
    sub_100101A44();
  }

  else
  {
    sub_100101FA4(0);
  }
}

Swift::Int sub_1000DD960()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 4);
  sub_100101F84();
  sub_1000DEE90(v1, v2, v3, v4);
  if (v5)
  {
    sub_100101FA4(1u);
    v6 = v5;
    sub_100101A44();
  }

  else
  {
    sub_100101FA4(0);
  }

  return sub_100101FE4();
}

BOOL sub_1000DD9F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    if (v2)
    {
      if (v3)
      {
        sub_10001511C();
        v5 = v3;
        v6 = v2;
        v7 = sub_100101A34();

        if (v7)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

id sub_1000DDA88(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC21JournalShareExtension19BlockQuoteLayerView_quoteAreas] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC21JournalShareExtension19BlockQuoteLayerView_barInset] = 0;
  *&v5[OBJC_IVAR____TtC21JournalShareExtension19BlockQuoteLayerView_topInset] = 0;
  v15.receiver = v5;
  v15.super_class = type metadata accessor for BlockQuoteLayerView();
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", a2, a3, a4, a5);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor:v13];

  [v12 setContentMode:5];
  return v12;
}

void sub_1000DDC40(double *a1, double a2, double a3, double a4, double a5)
{
  v11 = [v5 traitCollection];
  [v11 displayScale];
  v13 = v12;

  v14 = 1.0;
  if (v13 > 1.0)
  {
    v14 = v13;
  }

  v15 = round(v14 * a3) / v14;
  v16 = OBJC_IVAR____TtC21JournalShareExtension19BlockQuoteLayerView_quoteAreas;
  v17 = round(v14 * a5) / v14;
  swift_beginAccess();
  v18 = *&v5[v16];
  v28[0] = *&a2;
  v28[1] = *&v15;
  v28[2] = *&a4;
  v28[3] = *&v17;
  v28[4] = a1;
  v27[2] = v28;
  v19 = a1;

  v20 = sub_10004F204(sub_1000DEFAC, v27, v18);

  if (v20)
  {
  }

  else
  {
    swift_beginAccess();
    v21 = *&v5[v16];
    v22 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v5[v16] = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_10000F72C(0, *(v21 + 2) + 1, 1, v21);
      *&v5[v16] = v21;
    }

    v25 = *(v21 + 2);
    v24 = *(v21 + 3);
    if (v25 >= v24 >> 1)
    {
      v21 = sub_10000F72C((v24 > 1), v25 + 1, 1, v21);
    }

    *(v21 + 2) = v25 + 1;
    v26 = &v21[5 * v25];
    v26[4] = a2;
    v26[5] = v15;
    v26[6] = a4;
    v26[7] = v17;
    *(v26 + 8) = a1;
    *&v5[v16] = v21;
    swift_endAccess();
    v28[0] = v21;
    swift_bridgeObjectRetain_n();
    sub_1000DE518(v28);

    *&v5[v16] = v28[0];
  }
}

void sub_1000DDE78(double a1, double a2, double a3, double a4)
{
  v55 = sub_1000FFA94();
  v9 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BlockQuoteLayerView();
  v58.receiver = v4;
  v58.super_class = v11;
  objc_msgSendSuper2(&v58, "drawRect:", a1, a2, a3, a4);
  v12 = UIGraphicsGetCurrentContext();
  if (v12)
  {
    v56 = v12;
    CGContextSaveGState(v12);
    v13 = OBJC_IVAR____TtC21JournalShareExtension19BlockQuoteLayerView_quoteAreas;
    swift_beginAccess();
    v57 = v13;
    v14 = *&v4[v13];
    v15 = *(v14 + 16);
    v51 = OBJC_IVAR____TtC21JournalShareExtension19BlockQuoteLayerView_barInset;
    v52 = OBJC_IVAR____TtC21JournalShareExtension19BlockQuoteLayerView_topInset;

    v53 = v15;
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v48 = enum case for CGPathFillRule.winding(_:);
      v47 = (v9 + 104);
      v46 = (v9 + 8);
      v19 = (v14 + 64);
      v49 = v14;
      v50 = v4;
      while (1)
      {
        if (v17 >= *(v14 + 16))
        {
          __break(1u);
          return;
        }

        v25 = *(v19 - 3);
        v26 = *(v19 - 1);
        v27 = v17 + 1;
        v28 = *v19;
        if (v17 && (v29 = *&v4[v57], v30 = *(v29 + 16), v17 <= v30) && vabdd_f64(*(v29 + v16) + *(v29 + v16 + 16), v25) < 1.0)
        {
          v31 = v28;
          v32 = v17 >= v30 || v27 >= v30;
          v33 = v18;
          if (v32)
          {
            v34 = -4;
            v44 = &selRef_cancel;
            goto LABEL_30;
          }

          v43 = 1;
          v44 = &selRef_cancel;
        }

        else
        {
          v33 = v18;
          if (v28)
          {
            v35 = v28;

            v33 = v28;
          }

          v44 = &selRef_cancel;
          v29 = *&v4[v57];
          v36 = *(v29 + 16);
          if (v17 >= v36 || v27 >= v36)
          {
            goto LABEL_29;
          }

          v43 = 0;
        }

        if (vabdd_f64(*(v29 + v16 + 80), v25 + v26) < 1.0)
        {
          if (v43)
          {
            v34 = -16;
          }

          else
          {
            v34 = -13;
          }

          goto LABEL_30;
        }

        if ((v43 & 1) == 0)
        {
LABEL_29:
          v34 = -1;
          goto LABEL_30;
        }

        v34 = -4;
LABEL_30:
        v38 = [objc_opt_self() bezierPathWithRoundedRect:v34 byRoundingCorners:*&v4[v51] cornerRadii:{v25 + *&v4[v52], 4.0, v26, 2.0, 2.0}];
        v39 = [v38 CGPath];

        v40 = v56;
        CGContextAddPath(v56, v39);
        if (qword_10014B618 != -1)
        {
          swift_once();
        }

        v21 = [qword_100158508 v44[463]];
        v41 = v33;
        v42 = v44;
        if (v33 || (v41 = v28) != 0)
        {
          v18 = v33;
          v20 = [v41 v42[463]];

          v21 = v20;
        }

        else
        {
          v18 = 0;
        }

        v22 = [v21 CGColor];
        CGContextSetFillColorWithColor(v40, v22);

        CGContextClosePath(v40);
        v23 = v54;
        v24 = v55;
        (*v47)(v54, v48, v55);
        sub_1001014D4();

        (*v46)(v23, v24);
        v19 += 5;
        v16 += 40;
        v17 = v27;
        v14 = v49;
        v4 = v50;
        if (v53 == v27)
        {
          goto LABEL_36;
        }
      }
    }

    v18 = 0;
LABEL_36:

    v45 = v56;
    CGContextRestoreGState(v56);
  }
}

id sub_1000DE37C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BlockQuoteLayerView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

__n128 sub_1000DE3E4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000DE3F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000DE454(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1000DE4C4()
{
  result = qword_100150A40;
  if (!qword_100150A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100150A40);
  }

  return result;
}

void sub_1000DE518(double **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100071BD4(v2);
  }

  v3 = *(v2 + 2);
  v21[0] = (v2 + 4);
  v21[1] = v3;
  v4 = sub_100101E34(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 8;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[5 * i + 5];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 3))
          {
            break;
          }

          v14 = *(v13 + 1);
          v15 = *(v13 + 5);
          v16 = *(v13 - 1);
          *(v13 + 1) = *(v13 - 2);
          v17 = *(v13 + 3);
          *(v13 + 3) = v16;
          v13[5] = *v13;
          *(v13 - 4) = v14;
          *(v13 - 3) = v11;
          *(v13 - 1) = v17;
          *v13 = v15;
          v13 -= 5;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 5;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_100101214();
      *(v7 + 2) = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v19[0] = v7 + 4;
    v19[1] = v6;
    sub_1000DE680(v19, v20, v21, v5);
    v7[2] = 0.0;
  }

  *a1 = v2;
}

void sub_1000DE680(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v97 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = sub_100071584(v7);
    }

    v88 = v7 + 2;
    v89 = *(v7 + 2);
    if (v89 >= 2)
    {
      while (*a3)
      {
        v90 = &v7[2 * v89];
        v91 = *v90;
        v92 = &v88[2 * v89];
        v93 = v92[1];
        sub_1000DEC54((*a3 + 40 * *v90), (*a3 + 40 * *v92), *a3 + 40 * v93, v97);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v93 < v91)
        {
          goto LABEL_114;
        }

        if (v89 - 2 >= *v88)
        {
          goto LABEL_115;
        }

        *v90 = v91;
        *(v90 + 1) = v93;
        v94 = *v88 - v89;
        if (*v88 < v89)
        {
          goto LABEL_116;
        }

        v89 = *v88 - 1;
        memmove(v92, v92 + 2, 16 * v94);
        *v88 = v89;
        if (v89 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v95 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 40 * v6 + 8);
      v10 = 40 * v8;
      v11 = *a3 + 40 * v8;
      v12 = *(v11 + 8);
      v13 = v8 + 2;
      v14 = (v11 + 88);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 5;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v9 < v12) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 40 * v6 - 40;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v28 + v10);
            v22 = *(v28 + v10 + 32);
            v23 = (v28 + v18);
            v24 = *v21;
            v25 = v21[1];
            v26 = *(v23 + 4);
            v27 = v23[1];
            *v21 = *v23;
            v21[1] = v27;
            *(v21 + 4) = v26;
            *v23 = v24;
            v23[1] = v25;
            *(v23 + 4) = v22;
          }

          ++v20;
          v18 -= 40;
          v10 += 40;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_10000F368(0, *(v7 + 2) + 1, 1, v7);
    }

    v41 = *(v7 + 2);
    v40 = *(v7 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v7 = sub_10000F368((v40 > 1), v41 + 1, 1, v7);
    }

    *(v7 + 2) = v42;
    v43 = v7 + 4;
    v44 = &v7[2 * v41 + 4];
    *v44 = v8;
    *(v44 + 1) = v6;
    v97 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v7 + 4);
          v47 = *(v7 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_57:
          if (v49)
          {
            goto LABEL_104;
          }

          v62 = &v7[2 * v42];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_106;
          }

          v68 = &v43[2 * v45];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_111;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v42 < 2)
        {
          goto LABEL_112;
        }

        v72 = &v7[2 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_72:
        if (v67)
        {
          goto LABEL_108;
        }

        v75 = &v43[2 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_110;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v45 - 1 >= v42)
        {
          __break(1u);
LABEL_99:
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v83 = &v43[2 * v45 - 2];
        v84 = *v83;
        v85 = &v43[2 * v45];
        v86 = *(v85 + 1);
        sub_1000DEC54((*a3 + 40 * *v83), (*a3 + 40 * *v85), *a3 + 40 * v86, v97);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v86 < v84)
        {
          goto LABEL_99;
        }

        if (v45 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v83 = v84;
        *(v83 + 1) = v86;
        v87 = *(v7 + 2);
        if (v45 >= v87)
        {
          goto LABEL_101;
        }

        v42 = v87 - 1;
        memmove(&v43[2 * v45], v85 + 2, 16 * (v87 - 1 - v45));
        *(v7 + 2) = v87 - 1;
        if (v87 <= 2)
        {
          goto LABEL_3;
        }
      }

      v50 = &v43[2 * v42];
      v51 = *(v50 - 8);
      v52 = *(v50 - 7);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_102;
      }

      v55 = *(v50 - 6);
      v54 = *(v50 - 5);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_103;
      }

      v57 = &v7[2 * v42];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_105;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_107;
      }

      if (v61 >= v53)
      {
        v79 = &v43[2 * v45];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v95;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 40 * v6 - 40;
  v31 = v8 - v6;
LABEL_30:
  v32 = *(v29 + 40 * v6 + 8);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >= *(v34 + 8))
    {
LABEL_29:
      ++v6;
      v30 += 40;
      --v31;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 40);
    v36 = *(v34 + 72);
    v37 = *(v34 + 16);
    *(v34 + 40) = *v34;
    v38 = *(v34 + 56);
    *(v34 + 56) = v37;
    *(v34 + 72) = *(v34 + 32);
    *v34 = v35;
    *(v34 + 8) = v32;
    *(v34 + 16) = v38;
    *(v34 + 32) = v36;
    v34 -= 40;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_1000DEC54(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[1] < v4[1])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v17 = (v5 + 40);
      if (*(v12 - 4) < *(v6 - 4))
      {
        v21 = v6 - 5;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v22;
          *(v5 + 16) = v23;
        }

        if (v12 <= v4 || (v6 -= 5, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 5;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 3);
        *(v5 + 32) = *(v12 - 1);
        *v5 = v19;
        *(v5 + 16) = v20;
      }

      v5 -= 40;
      v12 -= 5;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v25 = (v24 >> 4) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v25])
  {
    memmove(v6, v4, 40 * v25);
  }

  return 1;
}

void sub_1000DEE90(double a1, double a2, double a3, double a4)
{
  v10 = CGRectStandardize(*&a1);
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  if (v10.origin.x == 0.0)
  {
    v10.origin.x = 0.0;
  }

  sub_100101FC4(*&v10.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  sub_100101FC4(*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  sub_100101FC4(*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  sub_100101FC4(*&v9);
}

BOOL sub_1000DEF14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    if (v2)
    {
      if (v3)
      {
        sub_10001511C();
        v5 = v3;
        v6 = v2;
        v7 = sub_100101A34();

        if (v7)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000DEFCC(uint64_t a1)
{
  v3 = sub_100100384();
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007210(&qword_10014C3E0, &qword_10010BFE0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  sub_100010014(a1, v32, &qword_10014CA68, &qword_10010D130);
  v11 = v33;
  if (v33)
  {
    v12 = sub_1000110C0(v32, v33);
    v13 = *(v11 - 8);
    __chkstk_darwin(v12);
    v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = sub_100101E64();
    (*(v13 + 8))(v15, v11);
    sub_10001100C(v32);
  }

  else
  {
    v16 = 0;
  }

  v17 = type metadata accessor for MultiPinMapAsset(0);
  v31.receiver = v1;
  v31.super_class = v17;
  v18 = objc_msgSendSuper2(&v31, "isEqual:", v16);
  swift_unknownObjectRelease();
  if (!v18)
  {
    goto LABEL_17;
  }

  sub_100010014(a1, v32, &qword_10014CA68, &qword_10010D130);
  if (!v33)
  {
    sub_10000FFB4(v32, &qword_10014CA68, &qword_10010D130);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v23 = 0;
    return v23 & 1;
  }

  v19 = v29;
  v20 = v30;
  if (!*&v1[OBJC_IVAR____TtC21JournalShareExtension16MultiPinMapAsset_metadata])
  {
LABEL_10:

    v21 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  sub_100008870(v10);

  if ((*(v19 + 48))(v10, 1, v3))
  {
    sub_10000FFB4(v10, &qword_10014C3E0, &qword_10010BFE0);
    goto LABEL_10;
  }

  v25 = v28;
  (*(v19 + 16))(v28, v10, v3);
  sub_10000FFB4(v10, &qword_10014C3E0, &qword_10010BFE0);
  v21 = sub_100100344();
  (*(v19 + 8))(v25, v3);
  if (!v21)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (*&v20[OBJC_IVAR____TtC21JournalShareExtension16MultiPinMapAsset_metadata])
  {

    sub_100008870(v8);

    if ((*(v19 + 48))(v8, 1, v3))
    {
      sub_10000FFB4(v8, &qword_10014C3E0, &qword_10010BFE0);
    }

    else
    {
      v26 = v28;
      (*(v19 + 16))(v28, v8, v3);
      sub_10000FFB4(v8, &qword_10014C3E0, &qword_10010BFE0);
      v22 = sub_100100344();
      (*(v19 + 8))(v26, v3);
      if (v22)
      {
        goto LABEL_15;
      }
    }
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_15:
  v23 = sub_1000DF478(v21, v22);

  return v23 & 1;
}

uint64_t sub_1000DF478(uint64_t a1, uint64_t a2)
{
  v4 = sub_100100004();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_1000E13AC(&qword_100150AE8, &type metadata accessor for VisitAssetMetadata, &protocol conformance descriptor for VisitAssetMetadata);
    v21 = sub_100100F04();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DF714()
{
  v1 = v0;
  v2 = sub_100007210(&qword_10014C3E0, &qword_10010BFE0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v12[-v4];
  if (*(v0 + OBJC_IVAR____TtC21JournalShareExtension16MultiPinMapAsset_metadata))
  {

    sub_100008870(v5);

    v6 = sub_100100384();
    if ((*(*(v6 - 8) + 48))(v5, 1, v6))
    {
      v3 = sub_10000FFB4(v5, &qword_10014C3E0, &qword_10010BFE0);
    }

    else
    {
      v7 = sub_100100364();
      v3 = sub_10000FFB4(v5, &qword_10014C3E0, &qword_10010BFE0);
      if (v7 != 2 && (v7 & 1) != 0)
      {
        LOBYTE(v8) = 1;
        return v8 & 1;
      }
    }
  }

  v8 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_context);
  if (v8)
  {
    __chkstk_darwin(v3);
    *&v12[-16] = v1;
    v10 = v9;
    sub_100007210(&qword_10014D288, &qword_10010CE20);
    sub_100101814();

    LOBYTE(v8) = v12[15];
  }

  return v8 & 1;
}

NSObject *sub_1000DF8E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v12 = a1;
  v13 = sub_100007210(&qword_10014C3E0, &qword_10010BFE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v19 - v14;
  v16 = objc_allocWithZone(type metadata accessor for MultiPinMapThumbnailCacheOperation(0));
  sub_10000C96C(v15);
  sub_1000E1320(v15, v16 + qword_1001586C0);
  v17 = v6;

  return sub_1000F1AEC(v17, v12, a2, a3 & 1, a4, a5, a6);
}

uint64_t sub_1000DF9F0(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v7 = sub_100007210(&qword_10014C3E0, &qword_10010BFE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_1000FF874();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v3 + OBJC_IVAR____TtC21JournalShareExtension5Asset_id, v10);
  v30 = [a3 userInterfaceStyle];
  if (*(v3 + OBJC_IVAR____TtC21JournalShareExtension16MultiPinMapAsset_metadata))
  {

    sub_100008870(v9);

    v14 = sub_100100384();
    v15 = 1;
    if ((*(*(v14 - 8) + 48))(v9, 1, v14))
    {
      v16 = 0;
    }

    else
    {
      v16 = sub_100100374();
      v15 = v17;
    }

    sub_10000FFB4(v9, &qword_10014C3E0, &qword_10010BFE0);
  }

  else
  {
    v16 = 0;
    v15 = 1;
  }

  v33 = 0x2D626D756874;
  v34 = 0xE600000000000000;
  sub_1000E13AC(&qword_10014C018, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v35._countAndFlagsBits = sub_100101E44();
  sub_1001010B4(v35);

  v36._countAndFlagsBits = 45;
  v36._object = 0xE100000000000000;
  sub_1001010B4(v36);
  v32._countAndFlagsBits = a1;
  v37._countAndFlagsBits = sub_100101E44();
  sub_1001010B4(v37);

  v38._countAndFlagsBits = 45;
  v38._object = 0xE100000000000000;
  sub_1001010B4(v38);
  v18 = 0x656772614C78;
  v19 = 0xE500000000000000;
  v20 = 0x6C6C616D73;
  if (a2 != 6)
  {
    v20 = 0x657263536C6C7566;
    v19 = 0xEA00000000006E65;
  }

  v21 = 0xE600000000000000;
  v22 = 0x6D756964656DLL;
  if (a2 != 4)
  {
    v22 = 0x61546D756964656DLL;
    v21 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 5u)
  {
    v20 = v22;
    v19 = v21;
  }

  v23 = 0xEA00000000006564;
  v24 = 0x69576D756964656DLL;
  if (a2 != 2)
  {
    v24 = 0x656772616CLL;
    v23 = 0xE500000000000000;
  }

  if (a2)
  {
    v25 = 0xE600000000000000;
  }

  else
  {
    v18 = 0x6154656772614C78;
    v25 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 1u)
  {
    v23 = v25;
  }

  else
  {
    v18 = v24;
  }

  if (a2 <= 3u)
  {
    v26._countAndFlagsBits = v18;
  }

  else
  {
    v26._countAndFlagsBits = v20;
  }

  if (a2 <= 3u)
  {
    v27 = v23;
  }

  else
  {
    v27 = v19;
  }

  v26._object = v27;
  sub_1001010B4(v26);

  if ((v15 & 1) == 0)
  {
    v32._countAndFlagsBits = 45;
    v32._object = 0xE100000000000000;
    v31 = v16;
    v39._countAndFlagsBits = sub_100101E44();
    sub_1001010B4(v39);

    sub_1001010B4(v32);
  }

  v32._countAndFlagsBits = 45;
  v32._object = 0xE100000000000000;
  v31 = v30;
  v40._countAndFlagsBits = sub_100101E44();
  sub_1001010B4(v40);

  sub_1001010B4(v32);

  v28 = v33;
  (*(v11 + 8))(v13, v10);
  return v28;
}

id sub_1000DFE90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiPinMapAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MultiPinMapAsset(uint64_t a1)
{
  result = qword_100150A70;
  if (!qword_100150A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1000DFF80(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC21JournalShareExtension16MultiPinMapAsset_metadata) = a1;

  return result;
}

void *sub_1000DFF98(double *a1)
{
  v167 = a1;
  v1 = sub_1000FF8B4();
  __chkstk_darwin(v1 - 8);
  v141 = &v128 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100100F84();
  __chkstk_darwin(v3 - 8);
  v140 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_100007210(&qword_100150AC0, &qword_10010FCE0);
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v136 = &v128 - v5;
  v134 = sub_100007210(&qword_100150AC8, &qword_10010FCE8);
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = &v128 - v6;
  v137 = sub_100007210(&qword_100150AD0, &qword_10010FCF0);
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v132 = &v128 - v7;
  v130 = sub_100100A04();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v128 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000FF804();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v143 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v128 - v14;
  v16 = __chkstk_darwin(v13);
  v142 = &v128 - v17;
  __chkstk_darwin(v16);
  v19 = &v128 - v18;
  v166 = sub_100100004();
  v20 = *(v166 - 8);
  __chkstk_darwin(v166);
  v22 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100007210(&unk_10014D640, &unk_10010C480);
  v24 = __chkstk_darwin(v23 - 8);
  v148 = &v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v128 - v27;
  v29 = __chkstk_darwin(v26);
  v147 = &v128 - v30;
  v31 = __chkstk_darwin(v29);
  v162 = &v128 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v128 - v34;
  __chkstk_darwin(v33);
  v36 = *(v10 + 56);
  v150 = &v128 - v37;
  v36();
  v151 = v35;
  v168 = v9;
  v152 = v36;
  v153 = v10 + 56;
  (v36)(v35, 1, 1, v9);
  v38 = *(v167 + 2);
  if (v38)
  {
    v146 = v15;
    v39 = *(v20 + 16);
    v40 = v20 + 16;
    v41 = v167 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v157 = (v10 + 32);
    v158 = v39;
    v144 = (v10 + 8);
    v42 = _swiftEmptyArrayStorage;
    v43 = *(v40 + 56);
    v160 = v28;
    v161 = v40;
    v155 = (v40 - 8);
    v156 = v43;
    v44 = &unk_10010C480;
    v154 = _swiftEmptyArrayStorage;
    v45 = v19;
    v145 = v19;
    v159 = v22;
    v165 = (v10 + 48);
    v39(v22, v41, v166);
    while (1)
    {
      v46 = sub_1000FFFF4();
      if (v47)
      {
        v48 = v46;
        v49 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_10000F02C(0, *(v42 + 2) + 1, 1, v42);
        }

        v51 = *(v42 + 2);
        v50 = *(v42 + 3);
        if (v51 >= v50 >> 1)
        {
          v42 = sub_10000F02C((v50 > 1), v51 + 1, 1, v42);
        }

        *(v42 + 2) = v51 + 1;
        v52 = &v42[2 * v51];
        *(v52 + 4) = v48;
        *(v52 + 5) = v49;
      }

      v53 = sub_1000FFF64();
      v167 = v42;
      if (v54 >> 60 != 15)
      {
        v55 = v53;
        v56 = v54;
        sub_100058884();
        v57 = sub_100101A04();
        sub_1000064AC(v55, v56);
        if (v57)
        {
          v58 = [v57 _addressFormattedAsSinglelineAddress];
          if (v58 || (v58 = [v57 name]) != 0)
          {
            v59 = v58;
            v149 = sub_100100FD4();
            v61 = v60;
          }

          else
          {
            v98 = sub_1000FFFF4();
            if (!v99)
            {

              goto LABEL_22;
            }

            v61 = v99;
            v149 = v98;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v154 = sub_10000F02C(0, *(v154 + 2) + 1, 1, v154);
          }

          v63 = *(v154 + 2);
          v62 = *(v154 + 3);
          if (v63 >= v62 >> 1)
          {
            v154 = sub_10000F02C((v62 > 1), v63 + 1, 1, v154);
          }

          v64 = v154;
          *(v154 + 2) = v63 + 1;
          v65 = &v64[2 * v63];
          *(v65 + 4) = v149;
          *(v65 + 5) = v61;
        }
      }

LABEL_22:
      v66 = v162;
      sub_1000FFF84();
      v67 = *v165;
      v68 = (*v165)(v66, 1, v168);
      v163 = v41;
      v164 = v38;
      if (v68 == 1)
      {
        sub_10000FFB4(v66, &unk_10014D640, v44);
LABEL_26:
        v42 = v167;
        v76 = v160;
        goto LABEL_31;
      }

      v69 = v66;
      v70 = *v157;
      v71 = v44;
      v72 = v168;
      (*v157)(v45, v69, v168);
      v73 = v150;
      v74 = v147;
      sub_100010014(v150, v147, &unk_10014D640, v71);
      if (v67(v74, 1, v72) == 1)
      {
        sub_10000FFB4(v73, &unk_10014D640, v71);
        sub_10000FFB4(v74, &unk_10014D640, v71);
        v75 = v168;
        v70(v73, v45, v168);
        (v152)(v73, 0, 1, v75);
        v22 = v159;
        v44 = v71;
        v41 = v163;
        v38 = v164;
        goto LABEL_26;
      }

      v77 = v142;
      v78 = v74;
      v79 = v168;
      v70(v142, v78, v168);
      v80 = sub_1000FF774();
      v81 = *v144;
      (*v144)(v77, v79);
      if (v80)
      {
        v82 = v150;
        sub_10000FFB4(v150, &unk_10014D640, &unk_10010C480);
        v83 = v168;
        v70(v82, v45, v168);
        (v152)(v82, 0, 1, v83);
        v44 = &unk_10010C480;
        v42 = v167;
        v22 = v159;
        v76 = v160;
      }

      else
      {
        v81(v45, v168);
        v42 = v167;
        v22 = v159;
        v76 = v160;
        v44 = &unk_10010C480;
      }

      v41 = v163;
      v38 = v164;
LABEL_31:
      sub_1000FFF74();
      if (v67(v76, 1, v168) == 1)
      {
        (*v155)(v22, v166);
        sub_10000FFB4(v76, &unk_10014D640, v44);
      }

      else
      {
        v84 = v76;
        v85 = *v157;
        v86 = v146;
        v87 = v168;
        (*v157)(v146, v84, v168);
        v88 = v151;
        v89 = v44;
        v90 = v148;
        sub_100010014(v151, v148, &unk_10014D640, v89);
        if (v67(v90, 1, v87) == 1)
        {
          v91 = v159;
          (*v155)(v159, v166);
          sub_10000FFB4(v88, &unk_10014D640, v89);
          sub_10000FFB4(v90, &unk_10014D640, v89);
          v85(v88, v86, v87);
          (v152)(v88, 0, 1, v87);
          v45 = v145;
          v42 = v167;
          v41 = v163;
          v38 = v164;
          v22 = v91;
          v44 = v89;
        }

        else
        {
          v92 = v143;
          v85(v143, v90, v87);
          v93 = sub_1000FF764();
          v94 = *v144;
          (*v144)(v92, v87);
          v22 = v159;
          (*v155)(v159, v166);
          if (v93)
          {
            v95 = v151;
            sub_10000FFB4(v151, &unk_10014D640, &unk_10010C480);
            v96 = v168;
            v85(v95, v86, v168);
            v97 = v96;
            v44 = &unk_10010C480;
            (v152)(v95, 0, 1, v97);
            v45 = v145;
            v42 = v167;
            v41 = v163;
            v38 = v164;
          }

          else
          {
            v94(v86, v168);
            v45 = v145;
            v42 = v167;
            v41 = v163;
            v38 = v164;
            v44 = &unk_10010C480;
          }
        }
      }

      v41 += v156;
      if (!--v38)
      {
        goto LABEL_41;
      }

      v158(v22, v41, v166);
    }
  }

  v42 = _swiftEmptyArrayStorage;
  v154 = _swiftEmptyArrayStorage;
LABEL_41:
  v100 = v128;
  sub_100100914();
  v101 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_100100944().super.isa;
  v168 = [v101 initWithContentType:isa];

  (*(v129 + 8))(v100, v130);
  v169 = v42;
  v103 = v133;
  v104 = v131;
  v105 = v134;
  (*(v133 + 104))(v131, enum case for ListFormatStyle.ListType.and<A, B>(_:), v134);
  v106 = v138;
  v107 = v136;
  v108 = v139;
  (*(v138 + 104))(v136, enum case for ListFormatStyle.Width.narrow<A, B>(_:), v139);
  sub_100007210(&unk_10014D670, &unk_10010C9A0);
  sub_100032894(&qword_100150AD8, &unk_10014D670, &unk_10010C9A0, &protocol conformance descriptor for [A]);
  v109 = v132;
  sub_1000FF174();
  (*(v106 + 8))(v107, v108);
  (*(v103 + 8))(v104, v105);
  sub_100032894(&qword_100150AE0, &qword_100150AD0, &qword_10010FCF0, &protocol conformance descriptor for ListFormatStyle<A, B>);
  v110 = v137;
  sub_100101164();
  (*(v135 + 8))(v109, v110);

  v111 = v170;
  v112 = v171;
  v169 = v154;
  sub_100032894(&qword_10014C218, &unk_10014D670, &unk_10010C9A0, &protocol conformance descriptor for [A]);
  v113 = sub_100100EA4();
  v115 = v114;

  v116 = v168;
  sub_1000800A4(v111, v112, v113, v115, v117);

  sub_100100F14();
  sub_1000FF8A4();
  v118 = sub_100101004();
  v120 = v119;
  sub_100007210(&qword_10014C220, &qword_10010BE70);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_10010BC80;
  v122 = v150;
  v123 = sub_100081080(v118, v120, v150);
  v125 = v124;

  *(v121 + 32) = v123;
  *(v121 + 40) = v125;
  v126 = sub_1001011C4().super.isa;

  [v116 setAlternateNames:v126];

  sub_10000FFB4(v151, &unk_10014D640, &unk_10010C480);
  sub_10000FFB4(v122, &unk_10014D640, &unk_10010C480);
  return v116;
}

void *sub_1000E1088()
{
  v1 = sub_100007210(&qword_10014C3E0, &qword_10010BFE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_100100384();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC21JournalShareExtension16MultiPinMapAsset_metadata))
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    goto LABEL_6;
  }

  sub_100008870(v3);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
LABEL_6:
    sub_10000FFB4(v3, &qword_10014C3E0, &qword_10010BFE0);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  v8 = sub_100100344();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = sub_1000DFF98(v8);

    return v9;
  }

  return 0;
}

uint64_t sub_1000E1320(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&qword_10014C3E0, &qword_10010BFE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E13AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E13F4()
{
  v1 = sub_1000FFCA4();
  v18 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007210(&qword_1001510C8, &qword_10010FF28);
  __chkstk_darwin(v4);
  v6 = (&v17 - v5);
  v7 = (v0 + *(*v0 + 112));
  v8 = *v7;
  v9 = v7[1];
  v10 = *v7;
  if (v9 >> 60 == 11)
  {
    sub_100010014(v0 + *(*v0 + 120), v6, &qword_1001510C8, &qword_10010FF28);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = v18;
      (*(v18 + 32))(v3, v6, v1);
      sub_1000F01B8(&qword_1001510D0, &type metadata accessor for StreakEvent, &protocol conformance descriptor for StreakEvent);
      v10 = sub_100100E74();
      v13 = v12;
      (*(v11 + 8))(v3, v1);
    }

    else
    {
      v10 = *v6;
      v13 = v6[1];
    }

    v14 = *v7;
    v15 = v7[1];
    *v7 = v10;
    v7[1] = v13;
    sub_10000736C(v10, v13);
    sub_100007380(v14, v15);
  }

  sub_100007394(v8, v9);
  return v10;
}

void sub_1000E1658()
{
  v1 = v0;
  v2 = sub_100100034();
  v79 = *(v2 - 8);
  __chkstk_darwin(v2);
  v78 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000FF804();
  v77 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001007A4();
  v81 = *(v7 - 8);
  v82 = v7;
  __chkstk_darwin(v7);
  v80 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000FFB34();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[OBJC_IVAR____TtC21JournalShareExtension16StreakEventAsset_metadata])
  {

    v13 = sub_1000E13F4();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xF000000000000000;
  }

  v83 = OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO;
  v16 = *&v0[OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO];
  if (!v16)
  {
    goto LABEL_29;
  }

  v74 = v2;
  v17 = [v16 assetMetaData];
  v18 = v15 >> 60;
  if (v17)
  {
    v19 = v17;
    v20 = sub_1000FF564();
    v75 = v15 >> 60;
    v21 = v20;
    v76 = v15;
    v23 = v22;

    v24 = v21;
    v18 = v75;
    v25 = v23;
    v15 = v76;
    sub_1000064C0(v24, v25);
    if (v18 >= 0xF)
    {
      v73 = v4;
      if (qword_10014B580 != -1)
      {
        swift_once();
      }

      v26 = sub_100100AE4();
      sub_100003D38(v26, qword_10014BF00);
      v27 = v1;
      v28 = sub_100100AC4();
      v70 = sub_1001015C4();
      v72 = v28;
      v29 = os_log_type_enabled(v28, v70);
      v71 = v27;
      if (v29)
      {
        v30 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v84 = v68;
        *v30 = 136446466;
        sub_1001007D4();
        v69 = v13;
        sub_1000F01B8(&qword_10014C038, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
        v31 = sub_100101E44();
        v33 = v32;

        v34 = sub_10007A774(v31, v33, &v84);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2082;
        sub_1000FF874();
        sub_1000F01B8(&qword_10014C018, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v35 = sub_100101E44();
        v37 = sub_10007A774(v35, v36, &v84);

        *(v30 + 14) = v37;
        v13 = v69;
        v38 = v72;
        _os_log_impl(&_mh_execute_header, v72, v70, "Setting existing non-nil assetMetaData to nil. Asset type: %{public}s, id: %{public}s", v30, 0x16u);
        swift_arrayDestroy();

        v18 = v75;
      }

      else
      {
      }

      v39 = v73;
      (*(v10 + 104))(v12, enum case for JournalFeatureFlags.debug(_:), v9);
      v40 = sub_1000FFB24();
      (*(v10 + 8))(v12, v9);
      v15 = v76;
      if (v40)
      {
        v41 = 0x6E776F6E6B6E55;
        v84 = 0;
        v85 = 0xE000000000000000;
        sub_100101C64(148);
        v86._countAndFlagsBits = 0x7974207465737341;
        v86._object = 0xEC000000203A6570;
        sub_1001010B4(v86);
        v87._countAndFlagsBits = sub_1001007C4();
        sub_1001010B4(v87);

        v88._countAndFlagsBits = 0x492074657373410ALL;
        v88._object = 0xEB00000000203A44;
        sub_1001010B4(v88);
        sub_1000FF874();
        sub_1000F01B8(&qword_10014C018, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v89._countAndFlagsBits = sub_100101E44();
        sub_1001010B4(v89);

        v90._countAndFlagsBits = 0x617473656D69740ALL;
        v90._object = 0xEC000000203A706DLL;
        sub_1001010B4(v90);
        sub_1000FF7F4();
        sub_1000F01B8(&qword_10014C020, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v91._countAndFlagsBits = sub_100101E44();
        sub_1001010B4(v91);

        (*(v77 + 8))(v6, v39);
        v92._object = 0x80000001001045D0;
        v92._countAndFlagsBits = 0xD000000000000033;
        sub_1001010B4(v92);
        v42 = *&v1[v83];
        if (v42 && (v43 = [v42 entry]) != 0)
        {
          v44 = v43;
          v45 = [v43 debugDescription];

          v46 = sub_100100FD4();
          v48 = v47;

          v49._countAndFlagsBits = v46;
        }

        else
        {
          v48 = 0xE700000000000000;
          v49._countAndFlagsBits = 0x6E776F6E6B6E55;
        }

        v49._object = v48;
        sub_1001010B4(v49);

        v93._object = 0x8000000100104610;
        v93._countAndFlagsBits = 0xD000000000000033;
        sub_1001010B4(v93);
        v50 = *&v1[v83];
        v51 = v13;
        if (v50)
        {
          v52 = [v50 debugDescription];
          v41 = sub_100100FD4();
          v54 = v53;
        }

        else
        {
          v54 = 0xE700000000000000;
        }

        v94._countAndFlagsBits = v41;
        v94._object = v54;
        sub_1001010B4(v94);

        v95._countAndFlagsBits = 10;
        v95._object = 0xE100000000000000;
        sub_1001010B4(v95);
        (*(v79 + 104))(v78, enum case for TapToRadarUtilities.RadarClassification.crashHangDataLoss(_:), v74);
        v55 = v80;
        sub_100100794();
        v56 = [objc_opt_self() defaultCenter];
        if (qword_10014B770 != -1)
        {
          swift_once();
        }

        v57 = qword_100158700;
        sub_100007210(&qword_10014C028, &qword_10010C8F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10010BC80;
        v84 = 0x6F666E49727474;
        v85 = 0xE700000000000000;
        sub_100101BF4();
        v59 = v82;
        *(inited + 96) = v82;
        v60 = sub_100007258((inited + 72));
        v61 = v81;
        (*(v81 + 16))(v60, v55, v59);
        sub_10004D288(inited);
        swift_setDeallocating();
        sub_10000FFB4(inited + 32, &qword_10014C030, &unk_10010BD30);
        isa = sub_100100E44().super.isa;

        [v56 postNotificationName:v57 object:0 userInfo:isa];

        (*(v61 + 8))(v55, v59);
        v13 = v51;
        v15 = v76;
        v18 = v75;
      }
    }
  }

  v63 = *&v1[v83];
  if (!v63)
  {
    goto LABEL_29;
  }

  v64 = v63;
  if (v18 <= 0xE)
  {
    sub_10000736C(v13, v15);
    v65 = sub_1000FF554().super.isa;
    sub_1000064AC(v13, v15);
  }

  else
  {
    v65 = 0;
  }

  [v64 setAssetMetaData:v65];

  v66 = *&v1[v83];
  if (v66)
  {
    v67 = v66;
    [v67 setIsUploadedToCloud:0];
    sub_1000064AC(v13, v15);
  }

  else
  {
LABEL_29:
    sub_1000064AC(v13, v15);
  }
}

uint64_t sub_1000E21A8(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  v5 = sub_100101824();
  v3[3] = v5;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = sub_100101284();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[7] = v6;
  v3[8] = v8;

  return _swift_task_switch(sub_1000E22B0, v6);
}

uint64_t sub_1000E22B0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  *(v0 + 72) = *(*(v0 + 16) + 24);
  *(v0 + 160) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v3 = *(v2 + 104);
  *(v0 + 80) = v3;
  *(v0 + 88) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v3(v1);

  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_1000E23BC;
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v4, v5, sub_1000F070C, v6, &type metadata for () + 8);
}

uint64_t sub_1000E23BC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v2[13] = v0;

  v6 = *(v4 + 8);
  v2[14] = v6;
  v2[15] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);

  v7 = v2[7];
  if (v0)
  {
    v8 = sub_1000E28E0;
  }

  else
  {
    v8 = sub_1000E2584;
  }

  return _swift_task_switch(v8, v7);
}

uint64_t sub_1000E2584()
{
  v1 = [*(v0 + 72) parentContext];
  *(v0 + 128) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 80);
    v4 = *(v0 + 160);
    v5 = *(v0 + 40);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = swift_allocObject();
    *(v0 + 136) = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v2;
    v3(v5, v4, v6);

    v2;
    v9 = swift_task_alloc();
    *(v0 + 144) = v9;
    *v9 = v0;
    v9[1] = sub_1000E271C;
    v10 = *(v0 + 40);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v9, v10, sub_1000F0768, v8, &type metadata for () + 8);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1000E271C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  *(*v1 + 152) = v0;

  v3(v4, v5);

  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_1000E29C0;
  }

  else
  {
    v7 = sub_1000E294C;
  }

  return _swift_task_switch(v7, v6);
}

uint64_t sub_1000E28E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E294C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E29C0()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1000E2A34(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_1000E2B24(v1, 0x6F72685465766173, 0xEF2928656C626177, 0x6E6F6320706D6574, 0xEC00000074786574);
  v4 = 0;
  if ([v1 save:&v4])
  {
    return v4;
  }

  v3 = v4;
  sub_1000FF334();

  return swift_willThrow();
}

void sub_1000E2B24(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = [a1 insertedObjects];
  sub_100010F50(0, &qword_10014F890, NSManagedObject_ptr);
  sub_1000F0784(&qword_10014F898, &qword_10014F890, NSManagedObject_ptr, &protocol conformance descriptor for NSObject);
  v9 = sub_100101414();

  v10 = [a1 deletedObjects];
  v11 = sub_100101414();

  v12 = [a1 updatedObjects];
  v13 = sub_100101414();

  if (qword_10014B5A8 != -1)
  {
    swift_once();
  }

  v14 = sub_100100AE4();
  sub_100003D38(v14, qword_10014C958);

  v15 = a1;
  v16 = sub_100100AC4();
  v17 = sub_1001015D4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = a5;
    v19 = swift_slowAlloc();
    v29 = v13;
    v20 = swift_slowAlloc();
    v32 = v20;
    *v18 = 136315394;
    *(v18 + 4) = sub_10007A774(a2, a3, &v32);
    *(v18 + 12) = 2112;
    *(v18 + 14) = v15;
    *v19 = v15;
    v21 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "(%s) context:%@", v18, 0x16u);
    sub_10000FFB4(v19, &unk_10014D660, &qword_10010C710);
    a5 = v28;

    sub_10001100C(v20);
    v13 = v29;
  }

  v22 = sub_100100AC4();
  v23 = sub_1001015D4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v24 = 136316162;
    *(v24 + 4) = sub_10007A774(a2, a3, &v32);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_10007A774(a4, a5, &v32);
    *(v24 + 22) = 2048;
    if ((v9 & 0xC000000000000001) != 0)
    {
      v25 = sub_100101BA4();
    }

    else
    {
      v25 = *(v9 + 16);
    }

    *(v24 + 24) = v25;

    *(v24 + 32) = 2048;
    if ((v11 & 0xC000000000000001) != 0)
    {
      v26 = sub_100101BA4();
    }

    else
    {
      v26 = *(v11 + 16);
    }

    *(v24 + 34) = v26;

    *(v24 + 42) = 2048;
    if ((v13 & 0xC000000000000001) != 0)
    {
      v27 = sub_100101BA4();
    }

    else
    {
      v27 = *(v13 + 16);
    }

    *(v24 + 44) = v27;

    _os_log_impl(&_mh_execute_header, v22, v23, "(%s) for %s insertedObjects.count:%ld deletedObjects.count:%ld updatedObjects.count:%ld", v24, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }
}

id sub_1000E2FD0(uint64_t a1, void *a2)
{
  sub_1000E2B24(a2, 0x6F72685465766173, 0xEF2928656C626177, 0xD000000000000013, 0x8000000100109B10);
  v5 = 0;
  if ([a2 save:&v5])
  {
    return v5;
  }

  v4 = v5;
  sub_1000FF334();

  return swift_willThrow();
}

void sub_1000E30BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_1001012F4();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1000F0974();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_100101C64(66);
    v11._object = 0x8000000100109B60;
    v11._countAndFlagsBits = 0xD00000000000003FLL;
    sub_1001010B4(v11);
    v12._countAndFlagsBits = sub_1001020E4();
    sub_1001010B4(v12);

    v13._countAndFlagsBits = 46;
    v13._object = 0xE100000000000000;
    sub_1001010B4(v13);
    sub_100101D94();
    __break(1u);
  }
}

BOOL sub_1000E3244(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_100101F84();
  sub_100101F94(v3);
  v4 = sub_100101FE4();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

double sub_1000E3338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_1000F01B8(&qword_10014BD70, type metadata accessor for Key, &unk_10010B804);
  v9 = sub_100100E64();
  v8(v9, a3, a4, a5);

  return result;
}

uint64_t sub_1000E3468(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t), unint64_t *a5)
{
  v37 = a5;
  v34 = a1;
  v35 = a4;
  v8 = sub_100100334();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007210(&qword_10014F8B0, &qword_10010EF28);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v36 = a2;
  v38 = a3;
  v15 = sub_100007210(a2, a3);
  v33 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v32 - v20;
  __chkstk_darwin(v19);
  v23 = &v32 - v22;
  v24 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  sub_100010014(v5 + v24, v14, &qword_10014F8B0, &qword_10010EF28);
  if ((*(v9 + 48))(v14, 1, v8))
  {
    sub_10000FFB4(v14, &qword_10014F8B0, &qword_10010EF28);
    v25 = 1;
  }

  else
  {
    (*(v9 + 16))(v11, v14, v8);
    v26 = sub_10000FFB4(v14, &qword_10014F8B0, &qword_10010EF28);
    v27 = v35;
    v35(v26);
    (*(v9 + 8))(v11, v8);
    v28 = v33;
    v29 = (*(v33 + 32))(v23, v21, v15);
    v27(v29);
    sub_100032894(v37, v36, v38, &protocol conformance descriptor for CRAttributedString<A>);
    v25 = sub_100100DA4();
    v30 = *(v28 + 8);
    v30(v18, v15);
    v30(v23, v15);
  }

  return v25 & 1;
}

double sub_1000E37C0(void *a1)
{
  v2 = v1;
  v4 = sub_100007210(&qword_10014FAA8, &qword_10010FF50);
  __chkstk_darwin(v4 - 8);
  v97 = &v90 - v5;
  v98 = sub_100100284();
  v100 = *(v98 - 8);
  v6 = __chkstk_darwin(v98);
  v94 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v7;
  __chkstk_darwin(v6);
  v95 = &v90 - v8;
  v9 = sub_100100CD4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007210(&qword_10014F8B0, &qword_10010EF28);
  v14 = __chkstk_darwin(v13 - 8);
  v106 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v102 = &v90 - v17;
  v18 = __chkstk_darwin(v16);
  v107 = &v90 - v19;
  __chkstk_darwin(v18);
  v21 = &v90 - v20;
  v22 = sub_100100334();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v93 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v99 = &v90 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v90 - v29;
  __chkstk_darwin(v28);
  v32 = &v90 - v31;
  v33 = *(v23 + 16);
  v92 = v23 + 16;
  v91 = v33;
  v33(&v90 - v31, a1, v22);
  v34 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  v105 = v34;
  sub_100010014(v2 + v34, v21, &qword_10014F8B0, &qword_10010EF28);
  v108 = *(v23 + 48);
  v109 = v22;
  if (v108(v21, 1, v22) == 1)
  {
    v35 = v32;
    sub_10000FFB4(v21, &qword_10014F8B0, &qword_10010EF28);
  }

  else
  {
    v36 = v21;
    v37 = v109;
    (*(v23 + 32))(v30, v36, v109);
    v35 = v32;
    sub_100100304();
    (*(v10 + 8))(v12, v9);
    (*(v23 + 8))(v30, v37);
  }

  v38 = v23;
  v39 = sub_100032F1C(&off_100134AB8);
  v40 = v106;
  v41 = v107;
  if (qword_10014B6A0 != -1)
  {
    swift_once();
  }

  v101 = qword_1001585F8;
  v103 = unk_100158600;
  sub_100010014(v2 + v105, v41, &qword_10014F8B0, &qword_10010EF28);
  v42 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_undoManager;
  v43 = *(v2 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_undoManager);
  v44 = v35;
  v45 = v108;
  v104 = v39;
  if (!v43)
  {
    goto LABEL_13;
  }

  v46 = qword_10014B8F8;
  v96 = v43;
  if (v46 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v47 = sub_100100AE4();
    sub_100003D38(v47, qword_100150B08);
    v48 = v103;

    v49 = sub_100100AC4();
    v50 = sub_1001015A4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = v44;
      v53 = v38;
      v54 = swift_slowAlloc();
      aBlock[0] = v54;
      *v51 = 136315138;

      v55 = sub_10007A774(v101, v48, aBlock);

      *(v51 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v49, v50, "undoable (%s)", v51, 0xCu);
      sub_10001100C(v54);
      v38 = v53;
      v44 = v52;
      v40 = v106;

      v41 = v107;
    }

    v56 = v96;
    v57 = [v96 groupingLevel];
    v45 = v108;
    if (!v57)
    {
      [v56 beginUndoGrouping];
    }

LABEL_13:
    sub_1000ED634(v2, v44);
    v58 = *(v2 + v42);
    if (!v58)
    {

      v60 = &qword_10014F8B0;
      v61 = &qword_10010EF28;
      v59 = v41;
      goto LABEL_22;
    }

    v42 = v102;
    sub_100010014(v41, v102, &qword_10014F8B0, &qword_10010EF28);
    if (v45(v42, 1, v109) == 1)
    {

      sub_10000FFB4(v41, &qword_10014F8B0, &qword_10010EF28);
      v59 = v42;
      v60 = &qword_10014F8B0;
      v61 = &qword_10010EF28;
      goto LABEL_22;
    }

    v62 = v42;
    v42 = v99;
    v63 = v109;
    (*(v38 + 32))(v99, v62, v109);
    sub_100010014(v2 + v105, v40, &qword_10014F8B0, &qword_10010EF28);
    if (v45(v40, 1, v63))
    {

      (*(v38 + 8))(v42, v109);
      sub_10000FFB4(v41, &qword_10014F8B0, &qword_10010EF28);
      sub_10000FFB4(v40, &qword_10014F8B0, &qword_10010EF28);
      v64 = v97;
      (*(v100 + 56))(v97, 1, 1, v98);
LABEL_21:
      v60 = &qword_10014FAA8;
      v61 = &qword_10010FF50;
      v59 = v64;
      goto LABEL_22;
    }

    v65 = v93;
    v66 = v109;
    v91(v93, v40, v109);
    v108 = v58;
    sub_10000FFB4(v40, &qword_10014F8B0, &qword_10010EF28);
    v67 = v97;
    sub_1001002A4();
    v68 = v66;
    v64 = v67;
    v106 = *(v38 + 8);
    (v106)(v65, v68);
    v69 = v100;
    v70 = v98;
    if ((*(v100 + 48))(v64, 1, v98) == 1)
    {

      (v106)(v42, v109);
      sub_10000FFB4(v41, &qword_10014F8B0, &qword_10010EF28);
      goto LABEL_21;
    }

    v74 = v69;
    v96 = *(v69 + 32);
    v75 = v95;
    (v96)(v95, v64, v70);
    v76 = v70;
    v77 = sub_100100F94();
    [v108 setActionName:v77];

    v78 = v75;
    v79 = v76;
    (*(v74 + 16))(v94, v78, v76);
    v80 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v105 = v38;
    v81 = (v90 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
    v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
    v83 = (v82 + 23) & 0xFFFFFFFFFFFFFFF8;
    v102 = v44;
    v84 = swift_allocObject();
    (v96)(v84 + v80, v94, v79);
    *(v84 + v81) = v104;
    v38 = v105;
    v85 = (v84 + v82);
    v42 = v109;
    v86 = v103;
    *v85 = v101;
    v85[1] = v86;
    v87 = (v84 + v83);
    v88 = (v84 + ((v83 + 23) & 0xFFFFFFFFFFFFFFF8));
    v44 = v102;
    *v87 = 0;
    v87[1] = 0;
    *v88 = 0;
    v88[1] = 0;
    type metadata accessor for EntryViewModel(0);

    v89 = v108;
    sub_100101534();

    (*(v100 + 8))(v95, v79);
    (v106)(v99, v42);
    v60 = &qword_10014F8B0;
    v61 = &qword_10010EF28;
    v59 = v107;
LABEL_22:
    sub_10000FFB4(v59, v60, v61);
    v71 = *(v2 + 24);
    v72 = swift_allocObject();
    *(v72 + 16) = sub_1000F07C8;
    *(v72 + 24) = v2;
    aBlock[4] = sub_1000C5C3C;
    v111 = v72;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000C4BD8;
    aBlock[3] = &unk_100138FB0;
    v40 = _Block_copy(aBlock);
    v41 = v111;

    [v71 performBlockAndWait:v40];
    _Block_release(v40);
    LOBYTE(v71) = swift_isEscapingClosureAtFileLocation();

    if ((v71 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  (*(v38 + 8))(v44, v109);

  return result;
}

uint64_t sub_1000E4400(uint64_t a1)
{
  v2 = sub_100007210(&qword_10014FAB0, &unk_10010FF70);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-v3];
  v5 = sub_1001006F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000FFB34();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 104))(v12, enum case for JournalFeatureFlags.enhancedSync(_:), v9);
  v13 = sub_1000FFB24();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    sub_100010014(a1, v4, &qword_10014FAB0, &unk_10010FF70);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      return sub_10000FFB4(v4, &qword_10014FAB0, &unk_10010FF70);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      v15 = sub_1000E4814(v19);
      v17 = v16;
      v18 = sub_100100334();
      if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
      {
        sub_1001002D4();
      }

      (v15)(v19, 0);
      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

void sub_1000E46E0(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_10004613C(&v10, *(*(a1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

char *sub_1000E4878(void *a1, int a2, int a3, void *a4)
{
  v5 = v4;
  v175 = a4;
  v176 = a3;
  v158 = a2;
  v173 = *v4;
  v174 = a1;
  v6 = sub_100007210(&qword_10014F290, &qword_10010E638);
  __chkstk_darwin(v6 - 8);
  v152 = &v145 - v7;
  v151 = sub_100007210(&qword_100151108, &qword_10010FF80);
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v149 = (&v145 - v8);
  v155 = sub_100007210(&qword_100151110, &qword_10010FF88);
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v153 = &v145 - v9;
  v10 = sub_100007210(&qword_10014F8B0, &qword_10010EF28);
  __chkstk_darwin(v10 - 8);
  v172 = &v145 - v11;
  v12 = sub_100007210(&qword_10014F8A8, &qword_10010EF20);
  __chkstk_darwin(v12 - 8);
  v163 = &v145 - v13;
  v14 = sub_100007210(&unk_10014D640, &unk_10010C480);
  v15 = __chkstk_darwin(v14 - 8);
  v171 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v170 = &v145 - v18;
  __chkstk_darwin(v17);
  v159 = &v145 - v19;
  v20 = sub_1000FF804();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v162 = &v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v157 = &v145 - v24;
  v25 = sub_100007210(&qword_10014CD08, &unk_10010C860);
  v26 = __chkstk_darwin(v25 - 8);
  v168 = &v145 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v145 - v28;
  v30 = sub_1000FF874();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v146 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v145 - v34;
  *(v4 + 7) = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_cancelable] = 0;
  v36 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_changeEventPublisher;
  v148 = sub_100007210(&qword_100151118, &qword_10010FF90);
  swift_allocObject();
  *&v4[v36] = sub_100100BF4();
  v37 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_mergeableAttributes;
  v38 = sub_100100334();
  v39 = *(*(v38 - 8) + 56);
  v40 = 1;
  v169 = v37;
  v39(&v5[v37], 1, 1, v38);
  v164 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_attributedText;
  *&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_attributedText] = 0;
  v161 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_attributedTitle;
  *&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_attributedTitle] = 0;
  *&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_undoManager] = 0;
  v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_textChanged] = 0;
  v160 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_prompts;
  *&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_prompts] = 0;
  v41 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_dateSource;
  v42 = sub_1000FFD94();
  v43 = *(*(v42 - 8) + 56);
  v156 = v41;
  v43(&v5[v41], 1, 1, v42);
  v44 = *(v31 + 56);
  v165 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_bundleId;
  v177 = v44;
  v178 = v31 + 56;
  v44(&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_bundleId], 1, 1, v30);
  v45 = *(v21 + 56);
  v166 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_bundleDate;
  v45(&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_bundleDate], 1, 1, v20);
  v167 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_bundleEndDate;
  v45(&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_bundleEndDate], 1, 1, v20);
  *&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_allAssets] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_gridAssets] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_gridAssetsAndSlimAsset] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_canvasAssets] = _swiftEmptyArrayStorage;
  v46 = &v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_slimAsset];
  *v46 = 0;
  *(v46 + 1) = 0;
  *&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_hiddenAssets] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_multiPinMapAsset] = 0;
  *&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_fullScreenAssets] = _swiftEmptyArrayStorage;
  v180 = v45;
  v45(&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_originalUpdatedDate], 1, 1, v20);
  sub_1000FF864();
  v147 = v31;
  v47 = *(v31 + 32);
  v179 = v30;
  v47(&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_uniqueID], v35, v30);
  v48 = v158;
  v5[16] = v158 & 1;
  v49 = v174;
  v50 = [v174 objectID];
  *&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_id] = v50;
  v5[40] = v176;
  v51 = v175;
  *(v5 + 3) = v175;
  *(v5 + 4) = v49;
  v175 = v51;
  v174 = v49;
  v52 = [v174 id];
  if (v52)
  {
    v53 = v52;
    sub_1000FF854();

    v40 = 0;
  }

  v177(v29, v40, 1, v179);
  sub_100045508(v29, &v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_uuid]);
  v54 = [*(v5 + 4) entryDate];
  v55 = v162;
  v56 = v157;
  if (v54)
  {
    v57 = v54;
    sub_1000FF7B4();

    v58 = *(v21 + 32);
    v59 = v159;
    v58(v159, v55, v20);
    v180(v59, 0, 1, v20);
    v58(v56, v59, v20);
  }

  else
  {
    v60 = v159;
    v180(v159, 1, 1, v20);
    sub_1000FF7F4();
    if ((*(v21 + 48))(v60, 1, v20) != 1)
    {
      sub_10000FFB4(v60, &unk_10014D640, &unk_10010C480);
    }
  }

  v61 = *(v21 + 32);
  v61(&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_date], v56, v20);
  v62 = [*(v5 + 4) dateSource];
  if (v62)
  {
    v63 = v62;
    sub_100100FD4();
  }

  v64 = v163;
  sub_1000FFD84();
  v65 = v156;
  swift_beginAccess();
  sub_10001007C(v64, &v5[v65], &qword_10014F8A8, &qword_10010EF20);
  swift_endAccess();
  v66 = *(v5 + 4);
  sub_1000FFBA4();

  v61(&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_displayDate], v55, v20);
  v67 = [*(v5 + 4) flagged];
  v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_bookmarked] = v67;
  v68 = [*(v5 + 4) prompt];
  if (v68)
  {
    v69 = v68;
    v70 = sub_1000FF564();
    v72 = v71;

    v73 = sub_1000FF534();
    sub_1000064C0(v70, v72);
  }

  else
  {
    v73 = 0;
  }

  v74 = v170;
  v75 = *&v5[v160];
  *&v5[v160] = v73;

  v76 = [*(v5 + 4) title];
  if (v76)
  {
    v77 = v76;
    v78 = sub_1000FF564();
    v80 = v79;

    v81 = sub_1000FF534();
    sub_1000064C0(v78, v80);
  }

  else
  {
    v81 = 0;
  }

  v82 = *&v5[v161];
  *&v5[v161] = v81;

  v83 = [*(v5 + 4) text];
  if (v83)
  {
    v84 = v83;
    v85 = sub_1000FF564();
    v87 = v86;

    v88 = sub_1000FF534();
    sub_1000064C0(v85, v87);
  }

  else
  {
    v88 = 0;
  }

  v89 = v171;
  v90 = v168;
  v91 = *&v5[v164];
  *&v5[v164] = v88;

  v92 = [*(v5 + 4) showTitle];
  v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_showTitle] = v92;
  v93 = [*(v5 + 4) bundleId];
  if (v93)
  {
    v94 = v93;
    sub_1000FF854();

    v95 = 0;
  }

  else
  {
    v95 = 1;
  }

  v96 = 1;
  v177(v90, v95, 1, v179);
  v97 = v165;
  swift_beginAccess();
  sub_10001007C(v90, &v5[v97], &qword_10014CD08, &unk_10010C860);
  swift_endAccess();
  v98 = [*(v5 + 4) bundleDate];
  if (v98)
  {
    v99 = v98;
    sub_1000FF7B4();

    v96 = 0;
  }

  v100 = 1;
  v180(v74, v96, 1, v20);
  v101 = v166;
  swift_beginAccess();
  sub_10001007C(v74, &v5[v101], &unk_10014D640, &unk_10010C480);
  swift_endAccess();
  v102 = [*(v5 + 4) bundleEndDate];
  if (v102)
  {
    v103 = v102;
    sub_1000FF7B4();

    v100 = 0;
  }

  v180(v89, v100, 1, v20);
  v104 = v167;
  swift_beginAccess();
  sub_10001007C(v89, &v5[v104], &unk_10014D640, &unk_10010C480);
  swift_endAccess();
  v105 = *(v5 + 4);
  v106 = v172;
  sub_1000E5C0C(v105, v172);

  v107 = v169;
  swift_beginAccess();
  sub_10001007C(v106, &v5[v107], &qword_10014F8B0, &qword_10010EF28);
  swift_endAccess();
  v108 = [*(v5 + 4) showPhotoMemoryBanner];
  v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_showPhotoMemoryBanner] = v108;
  v109 = [*(v5 + 4) flagged];
  v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_originalBookmarkFromEntryMO] = v109;
  sub_1000EABFC();
  if (v48)
  {
    if (v176)
    {
      [*(v5 + 4) setIsDraft:1];
    }

    v110 = [*(v5 + 4) id];
    if (v110)
    {
      v111 = v146;
      v112 = v110;
      sub_1000FF854();

      v113 = sub_1000FF814();
      sub_1000A5878(v113, v114);

      (*(v147 + 8))(v111, v179);
    }

    else
    {
      if (qword_10014B8F0 != -1)
      {
        swift_once();
      }

      v115 = sub_100100AE4();
      sub_100003D38(v115, qword_100150AF0);

      v116 = sub_100100AC4();
      v117 = sub_1001015B4();

      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v181 = v119;
        *v118 = 136315138;
        v120 = [*(v5 + 4) debugDescription];
        v121 = sub_100100FD4();
        v123 = v122;

        v124 = sub_10007A774(v121, v123, &v181);

        *(v118 + 4) = v124;
        _os_log_impl(&_mh_execute_header, v116, v117, "Error getting entry id for in-progress register %s", v118, 0xCu);
        sub_10001100C(v119);
      }
    }

    v125 = [objc_opt_self() defaultCenter];
    [v125 addObserver:v5 selector:"contextObjectsDidChangeWithNotification:" name:NSManagedObjectContextObjectsDidChangeNotification object:*(v5 + 3)];

    v181 = *&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_changeEventPublisher];
    sub_100007210(&qword_100151120, &qword_10010FF98);
    sub_100010F50(0, &qword_10014E300, OS_dispatch_queue_ptr);

    v126 = sub_100101704();
    v127 = v149;
    *v149 = v126;
    sub_1001016B4();
    v128 = v150;
    v129 = v151;
    (*(v150 + 104))(v127, enum case for Publishers.TimeGroupingStrategy.byTime<A>(_:), v151);
    v130 = sub_1001016A4();
    v131 = v152;
    (*(*(v130 - 8) + 56))(v152, 1, 1, v130);
    sub_100032894(&qword_100151128, &qword_100151118, &qword_10010FF90, &protocol conformance descriptor for PassthroughSubject<A, B>);
    sub_1000F0784(&qword_10014F2A8, &qword_10014E300, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v132 = v153;
    sub_100100C14();
    sub_10000FFB4(v131, &qword_10014F290, &qword_10010E638);
    (*(v128 + 8))(v127, v129);

    swift_allocObject();
    swift_weakInit();
    sub_100032894(&qword_100151130, &qword_100151110, &qword_10010FF88, &protocol conformance descriptor for Publishers.CollectByTime<A, B>);

    v133 = v155;
    v134 = sub_100100C34();

    (*(v154 + 8))(v132, v133);
    *&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_cancelable] = v134;

    v135 = [objc_allocWithZone(type metadata accessor for EntryUndoManager()) init];

    v136 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_undoManager;
    v137 = *&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_undoManager];
    *&v5[OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_undoManager] = v135;

    v138 = *&v5[v136];
    if (v138)
    {
      v139 = swift_allocObject();
      swift_weakInit();
      v140 = v138;

      v141 = &v140[OBJC_IVAR____TtC21JournalShareExtension16EntryUndoManager_didUndoOrRedo];
      v142 = *&v140[OBJC_IVAR____TtC21JournalShareExtension16EntryUndoManager_didUndoOrRedo];
      v143 = *&v140[OBJC_IVAR____TtC21JournalShareExtension16EntryUndoManager_didUndoOrRedo + 8];
      *v141 = sub_1000F093C;
      v141[1] = v139;

      sub_10002FB80(v142, v143);
    }
  }

  else
  {
  }

  return v5;
}

uint64_t sub_1000E5C0C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100007210(&qword_10014F8B0, &qword_10010EF28);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_100100334();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000FFB34();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, enum case for JournalFeatureFlags.enhancedSync(_:), v11);
  v15 = sub_1000FFB24();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    sub_1000FFC24();
    sub_1000F01B8(&qword_100151138, &type metadata accessor for JournalEntryMO, &protocol conformance descriptor for JournalEntryMO);
    sub_1000FFE44();
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_10000FFB4(v6, &qword_10014F8B0, &qword_10010EF28);
      sub_1000ED858(a1, a2);
    }

    else
    {
      v17 = *(v8 + 32);
      v17(v10, v6, v7);
      v17(a2, v10, v7);
    }

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a2, v16, 1, v7);
}

void sub_1000E5EEC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = _swiftEmptySetSingleton;
    v12 = _swiftEmptySetSingleton;
    v6 = *(v2 + 16);
    if (v6)
    {
      v7 = 0;
      while (v7 < *(v2 + 16))
      {
        v8 = v7 + 1;

        sub_1000E46E0(v9);
        v7 = v8;
        if (v6 == v8)
        {
          v5 = v12;
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:
      if (v5[2])
      {
        v10 = sub_100101304();
        __chkstk_darwin(v10);
        v11[2] = v4;
        v11[3] = v5;
        sub_1000E30BC(sub_1000F0944, v11, "JournalShareExtension/EntryViewModel.swift", 42, 2u, 157);
      }

      else
      {
      }
    }
  }
}

double sub_1000E6030(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000EE220();
    sub_100100BE4();
  }

  return result;
}

void sub_1000E60B0(uint64_t a1)
{
  v2 = sub_1000FF874();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  sub_1000FFB84();
  sub_1000F01B8(&qword_100151148, &type metadata accessor for JournalMO, &protocol conformance descriptor for JournalMO);
  v7 = sub_100101C74();
  if (v7)
  {
    v19 = v7;
    sub_1000EFF44(v7);
    v8 = v19;
  }

  else
  {
    if (qword_10014B8F0 != -1)
    {
      swift_once();
    }

    v9 = sub_100100AE4();
    sub_100003D38(v9, qword_100150AF0);
    (*(v3 + 16))(v6, a1, v2);
    v10 = sub_100100AC4();
    v11 = sub_1001015B4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      sub_1000F01B8(&qword_10014C018, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = sub_100101E44();
      v16 = v15;
      (*(v3 + 8))(v6, v2);
      v17 = sub_10007A774(v14, v16, &v20);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "Journal not found for ID: %s", v12, 0xCu);
      sub_10001100C(v13);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }
}

uint64_t sub_1000E65FC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  sub_10002FC00(v0 + 48);
  sub_10000FFB4(v0 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_uuid, &qword_10014CD08, &unk_10010C860);

  v2 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_uniqueID;
  v3 = sub_1000FF874();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_10000FFB4(v0 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_mergeableAttributes, &qword_10014F8B0, &qword_10010EF28);

  v4 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_date;
  v5 = sub_1000FF804();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  sub_10000FFB4(v0 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_dateSource, &qword_10014F8A8, &qword_10010EF20);
  v6(v0 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_displayDate, v5);
  sub_10000FFB4(v0 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_bundleId, &qword_10014CD08, &unk_10010C860);
  sub_10000FFB4(v0 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_bundleDate, &unk_10014D640, &unk_10010C480);
  sub_10000FFB4(v0 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_bundleEndDate, &unk_10014D640, &unk_10010C480);

  sub_10000FFB4(v0 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_originalUpdatedDate, &unk_10014D640, &unk_10010C480);
  return v0;
}

uint64_t sub_1000E68EC()
{
  sub_1000E65FC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntryViewModel(uint64_t a1)
{
  result = qword_100150B70;
  if (!qword_100150B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E6998(uint64_t a1)
{
  sub_1000EC898(319, &qword_10014CCD0, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    sub_1000FF874();
    if (v2 <= 0x3F)
    {
      sub_1000EC898(319, &qword_100150B80, &type metadata accessor for MergeableEntryAttributes);
      if (v3 <= 0x3F)
      {
        sub_1000FF804();
        if (v4 <= 0x3F)
        {
          sub_1000EC898(319, &unk_100150B88, &type metadata accessor for EntryDateSource);
          if (v5 <= 0x3F)
          {
            sub_1000EC898(319, &qword_10014D1E0, &type metadata accessor for Date);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

double sub_1000E6C4C(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  if (sub_1000E3244(1u, a1) || sub_1000E3244(4u, a1))
  {

    sub_1000EABFC();
  }

  else
  {
  }

  if (sub_1000E3244(0, a1))
  {
    sub_1000EA288();
    if ((v4 & 1) == 0)
    {
      sub_1000F0200(0);
      if (qword_10014B8F0 != -1)
      {
        swift_once();
      }

      v5 = sub_100100AE4();
      sub_100003D38(v5, qword_100150AF0);
      v6 = sub_100100AC4();
      v7 = sub_1001015A4();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v19[0] = v9;
        *v8 = 136315138;
        swift_beginAccess();
        sub_1000AC14C();

        v10 = sub_100101424();
        v12 = v11;

        v13 = sub_10007A774(v10, v12, v19);

        *(v8 + 4) = v13;
        sub_10001100C(v9);
      }
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v2 + 56);
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v16 = v20;
    v17 = *(v14 + 8);

    v17(v2, v16, ObjectType, v14);
    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

uint64_t sub_1000E6EC8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_100007210(&qword_10014CD08, &unk_10010C860);
  v3[5] = swift_task_alloc();
  v5 = sub_1000FF874();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v6 = sub_100101824();
  v3[9] = v6;
  v3[10] = *(v6 - 8);
  v3[11] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v7 = sub_100101284();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v3[12] = v7;
  v3[13] = v9;

  return _swift_task_switch(sub_1000E705C, v7);
}

uint64_t sub_1000E705C()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_undoManager);
  if (v1)
  {
    [v1 removeAllActions];
  }

  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_1000E7114;
  v3 = v0[3];
  v4 = v0[2];

  return sub_1000BB23C(v4, v3);
}

uint64_t sub_1000E7114()
{
  v1 = *v0;

  v2 = *(v1 + 96);

  return _swift_task_switch(sub_1000E7234, v2);
}

uint64_t sub_1000E7234()
{
  if (qword_10014B8F0 != -1)
  {
    swift_once();
  }

  v1 = sub_100100AE4();
  v0[15] = sub_100003D38(v1, qword_100150AF0);
  swift_retain_n();
  v2 = sub_100100AC4();
  v3 = sub_1001015D4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[4];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543618;
    v8 = *(v5 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_id);
    *(v6 + 4) = v8;
    *v7 = v8;
    *(v6 + 12) = 2048;
    v9 = *(v5 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_gridAssets);
    if (v9 >> 62)
    {
      v10 = sub_100101DA4();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v8;

    *(v6 + 14) = v10;

    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}@ (finishEditingAndSave) assets.count: %ld", v6, 0x16u);
    sub_10000FFB4(v7, &unk_10014D660, &qword_10010C710);
  }

  else
  {
  }

  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_1000E7470;
  v13 = v0[3];
  v14 = v0[2];

  return sub_1000E9310(v14, v13);
}

uint64_t sub_1000E7470()
{
  v1 = *v0;

  v2 = *(v1 + 96);

  return _swift_task_switch(sub_1000E7590, v2);
}

uint64_t sub_1000E7590()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v0[17] = *(v0[4] + 24);
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);

  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1000E768C;
  v5 = v0[11];
  v6 = v0[4];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v4, v5, sub_1000F06F0, v6, &type metadata for () + 8);
}

void sub_1000E768C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);

    v3 = v2[12];

    _swift_task_switch(sub_1000E77E0, v3);
  }
}

uint64_t sub_1000E77E0()
{
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_1000E788C;
  v2 = v0[3];
  v3 = v0[2];

  return sub_1000E21A8(v3, v2);
}

uint64_t sub_1000E788C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_1000E7C18;
  }

  else
  {
    v4 = sub_1000E79C8;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_1000E79C8()
{
  v22 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_100010014(v0[4] + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_uuid, v3, &qword_10014CD08, &unk_10010C860);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000FFB4(v0[5], &qword_10014CD08, &unk_10010C860);

    v4 = sub_100100AC4();
    v5 = sub_1001015B4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[4];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315138;
      v9 = [*(v6 + 32) debugDescription];
      v10 = sub_100100FD4();
      v12 = v11;

      v13 = sub_10007A774(v10, v12, &v21);

      *(v7 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error getting entry id for in-progress deregister %s", v7, 0xCu);
      sub_10001100C(v8);
    }
  }

  else
  {
    v15 = v0[7];
    v14 = v0[8];
    v16 = v0[6];
    (*(v15 + 32))(v14, v0[5], v16);
    v17 = sub_1000FF814();
    sub_1000A5684(v17, v18);

    (*(v15 + 8))(v14, v16);
  }

  v19 = v0[1];

  return v19();
}