uint64_t sub_1C1B30488(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v8 = v5;
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_317:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_357;
    }

    v4 = v12;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v86 = v4;
LABEL_320:
      v109 = v86;
      v4 = *(v86 + 2);
      if (v4 >= 2)
      {
        while (*v9)
        {
          v6 = v4 - 1;
          v87 = *&v86[16 * v4];
          v88 = v86;
          v89 = *&v86[16 * v4 + 24];
          sub_1C1B313CC((*v9 + 8 * v87), (*v9 + 8 * *&v86[16 * v4 + 16]), (*v9 + 8 * v89), v7);
          if (v8)
          {
          }

          if (v89 < v87)
          {
            goto LABEL_344;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v88 = sub_1C1B90C2C(v88);
          }

          if (v4 - 2 >= *(v88 + 2))
          {
            goto LABEL_345;
          }

          v90 = &v88[16 * v4];
          *v90 = v87;
          *(v90 + 1) = v89;
          v109 = v88;
          sub_1C1B90BA0(v4 - 1);
          v86 = v109;
          v4 = *(v109 + 2);
          if (v4 <= 1)
          {
          }
        }

        goto LABEL_355;
      }
    }

LABEL_351:
    v86 = sub_1C1B90C2C(v4);
    goto LABEL_320;
  }

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v13 = v11;
    v14 = v11 + 1;
    if (v14 >= v10)
    {
      v105 = v14;
      goto LABEL_127;
    }

    v96 = v12;
    v4 = *v9;
    v7 = *(*v9 + 8 * v14);
    v108 = v7;
    v6 = *(v4 + 8 * v13);
    v107 = v6;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v103 = sub_1C1B2EC10(&v108, &v107);
    if (v8)
    {

      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v105 = v13 + 2;
    if (v13 + 2 >= v10)
    {
      v12 = v96;
      if (v103)
      {
        goto LABEL_119;
      }

      goto LABEL_127;
    }

    v93 = v13;
    v15 = (v4 + 8 * v13 + 16);
    v101 = v10;
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v6 = [v17 serverUnfilledReason];
      v7 = [v16 serverUnfilledReason];
      v4 = &selRef_hash;
      v18 = [v17 error];
      v19 = [v16 error];
      v20 = v19;
      if (v6 == 200)
      {
        if (v7 == 200)
        {
          if (!v18)
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (v20)
            {
              goto LABEL_31;
            }

            goto LABEL_9;
          }
        }

        else if (!v18)
        {
          goto LABEL_30;
        }

        v4 = v18;
        if (v19)
        {

          goto LABEL_29;
        }

LABEL_35:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_9:
        v9 = a3;
        if (v103)
        {
          v12 = v96;
          v13 = v93;
          goto LABEL_119;
        }

        goto LABEL_10;
      }

      if (v7 == 200 && v19 == 0)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        goto LABEL_9;
      }

      v4 = v18;
      if (!v18 && v19)
      {
LABEL_30:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_31:

        v9 = a3;
        if ((v103 & 1) == 0)
        {
          v12 = v96;
          v13 = v93;
          goto LABEL_127;
        }

        goto LABEL_10;
      }

      if (v7 == 200)
      {
        if (v18)
        {

          if (!v20)
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_9;
          }
        }

LABEL_29:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        goto LABEL_9;
      }

      if (!v19 && v18)
      {
        goto LABEL_35;
      }

      if (v6 <= 204)
      {
        if (v6 > 202)
        {
          if (v6 == 203)
          {
            v4 = 2;
          }

          else
          {
            v4 = 6;
          }
        }

        else if (v6 == 201)
        {
          v4 = 4;
        }

        else
        {
          if (v6 != 202)
          {
            goto LABEL_358;
          }

          v4 = 3;
        }
      }

      else
      {
        switch(v6)
        {
          case 1000:
            v4 = 10;
            break;
          case 1001:
          case 1002:
          case 1003:
          case 1004:
          case 1005:
          case 1006:
          case 1007:
          case 1008:
          case 1009:
          case 1011:
          case 1012:
          case 1013:
          case 1014:
          case 1015:
          case 1016:
          case 1017:
          case 1018:
          case 1019:
          case 1024:
          case 1032:
          case 1033:
          case 1034:
          case 1035:
          case 1036:
          case 1037:
          case 1038:
          case 1039:
          case 1040:
          case 1041:
          case 1042:
          case 1043:
          case 1044:
          case 1045:
          case 1046:
          case 1047:
          case 1048:
            goto LABEL_358;
          case 1010:
            v4 = 5;
            break;
          case 1020:
            v4 = 7;
            break;
          case 1021:
            v4 = 8;
            break;
          case 1022:
          case 1023:
            v4 = 9;
            break;
          case 1025:
            v4 = 28;
            break;
          case 1026:
            v4 = 34;
            break;
          case 1027:
            v4 = 35;
            break;
          case 1028:
            v4 = 36;
            break;
          case 1029:
            v4 = 31;
            break;
          case 1030:
            v4 = 37;
            break;
          case 1031:
            v4 = 38;
            break;
          case 1049:
            v4 = 20;
            break;
          case 1050:
            v4 = 21;
            break;
          case 1051:
            v4 = 22;
            break;
          case 1052:
            v4 = 23;
            break;
          case 1053:
            v4 = 24;
            break;
          case 1054:
            v4 = 25;
            break;
          case 1055:
            v4 = 26;
            break;
          case 1056:
            v4 = 27;
            break;
          case 1057:
            v4 = 30;
            break;
          case 1058:
            v4 = 32;
            break;
          case 1059:
            v4 = 33;
            break;
          default:
            if (v6 == 205)
            {
              v4 = 1;
            }

            else
            {
              if (v6 != 206)
              {
                goto LABEL_358;
              }

              v4 = 29;
            }

            break;
        }
      }

      if (v7 <= 204)
      {
        if (v7 > 202)
        {
          if (v7 == 203)
          {
            v6 = 2;
          }

          else
          {
            v6 = 6;
          }
        }

        else if (v7 == 201)
        {
          v6 = 4;
        }

        else
        {
          if (v7 != 202)
          {
            goto LABEL_359;
          }

          v6 = 3;
        }
      }

      else
      {
        switch(v7)
        {
          case 1000:
            v6 = 10;
            break;
          case 1001:
          case 1002:
          case 1003:
          case 1004:
          case 1005:
          case 1006:
          case 1007:
          case 1008:
          case 1009:
          case 1011:
          case 1012:
          case 1013:
          case 1014:
          case 1015:
          case 1016:
          case 1017:
          case 1018:
          case 1019:
          case 1024:
          case 1032:
          case 1033:
          case 1034:
          case 1035:
          case 1036:
          case 1037:
          case 1038:
          case 1039:
          case 1040:
          case 1041:
          case 1042:
          case 1043:
          case 1044:
          case 1045:
          case 1046:
          case 1047:
          case 1048:
            goto LABEL_359;
          case 1010:
            v6 = 5;
            break;
          case 1020:
            v6 = 7;
            break;
          case 1021:
            v6 = 8;
            break;
          case 1022:
          case 1023:
            v6 = 9;
            break;
          case 1025:
            v6 = 28;
            break;
          case 1026:
            v6 = 34;
            break;
          case 1027:
            v6 = 35;
            break;
          case 1028:
            v6 = 36;
            break;
          case 1029:
            v6 = 31;
            break;
          case 1030:
            v6 = 37;
            break;
          case 1031:
            v6 = 38;
            break;
          case 1049:
            v6 = 20;
            break;
          case 1050:
            v6 = 21;
            break;
          case 1051:
            v6 = 22;
            break;
          case 1052:
            v6 = 23;
            break;
          case 1053:
            v6 = 24;
            break;
          case 1054:
            v6 = 25;
            break;
          case 1055:
            v6 = 26;
            break;
          case 1056:
            v6 = 27;
            break;
          case 1057:
            v6 = 30;
            break;
          case 1058:
            v6 = 32;
            break;
          case 1059:
            v6 = 33;
            break;
          default:
            if (v7 == 205)
            {
              v6 = 1;
            }

            else
            {
              if (v7 != 206)
              {
LABEL_359:
                v108 = v7;
                goto LABEL_360;
              }

              v6 = 29;
            }

            break;
        }
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v9 = a3;
      if ((v103 ^ (v4 < v6)))
      {
        goto LABEL_116;
      }

LABEL_10:
      ++v15;
      ++v105;
    }

    while (v101 != v105);
    v105 = v101;
LABEL_116:
    v12 = v96;
    v13 = v93;
    if ((v103 & 1) == 0)
    {
      goto LABEL_127;
    }

LABEL_119:
    v22 = v105;
    if (v105 < v13)
    {
      goto LABEL_348;
    }

    if (v13 < v105)
    {
      v23 = 8 * v105 - 8;
      v24 = 8 * v13;
      v25 = v13;
      do
      {
        if (v25 != --v22)
        {
          v27 = *v9;
          if (!*v9)
          {
            goto LABEL_354;
          }

          v26 = *(v27 + v24);
          *(v27 + v24) = *(v27 + v23);
          *(v27 + v23) = v26;
        }

        ++v25;
        v23 -= 8;
        v24 += 8;
      }

      while (v25 < v22);
    }

LABEL_127:
    v28 = v9[1];
    if (v105 >= v28)
    {
      goto LABEL_265;
    }

    if (__OFSUB__(v105, v13))
    {
      goto LABEL_347;
    }

    if (v105 - v13 >= a4)
    {
LABEL_265:
      if (v105 < v13)
      {
        goto LABEL_346;
      }

      v41 = v12;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v12 = v41;
      }

      else
      {
        v12 = sub_1C1ACE08C(0, *(v41 + 2) + 1, 1, v41);
      }

      v4 = *(v12 + 2);
      v42 = *(v12 + 3);
      v43 = v4 + 1;
      if (v4 >= v42 >> 1)
      {
        v12 = sub_1C1ACE08C((v42 > 1), v4 + 1, 1, v12);
      }

      *(v12 + 2) = v43;
      v44 = &v12[16 * v4];
      *(v44 + 4) = v13;
      *(v44 + 5) = v105;
      v7 = *a1;
      if (!*a1)
      {
        goto LABEL_356;
      }

      if (!v4)
      {
LABEL_3:
        v10 = v9[1];
        v11 = v105;
        if (v105 >= v10)
        {
          goto LABEL_317;
        }

        continue;
      }

      while (1)
      {
        v45 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v46 = *(v12 + 4);
          v47 = *(v12 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_285:
          if (v49)
          {
            goto LABEL_335;
          }

          v62 = &v12[16 * v43];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_338;
          }

          v68 = &v12[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_341;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_342;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v43 - 2;
            }

            goto LABEL_306;
          }

          goto LABEL_299;
        }

        v72 = &v12[16 * v43];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_299:
        if (v67)
        {
          goto LABEL_337;
        }

        v75 = &v12[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_340;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_306:
        v4 = v45 - 1;
        if (v45 - 1 >= v43)
        {
          __break(1u);
LABEL_331:
          __break(1u);
LABEL_332:
          __break(1u);
LABEL_333:
          __break(1u);
LABEL_334:
          __break(1u);
LABEL_335:
          __break(1u);
LABEL_336:
          __break(1u);
LABEL_337:
          __break(1u);
LABEL_338:
          __break(1u);
LABEL_339:
          __break(1u);
LABEL_340:
          __break(1u);
LABEL_341:
          __break(1u);
LABEL_342:
          __break(1u);
LABEL_343:
          __break(1u);
LABEL_344:
          __break(1u);
LABEL_345:
          __break(1u);
LABEL_346:
          __break(1u);
LABEL_347:
          __break(1u);
LABEL_348:
          __break(1u);
LABEL_349:
          __break(1u);
          goto LABEL_350;
        }

        if (!*v9)
        {
          goto LABEL_353;
        }

        v83 = v12;
        v84 = *&v12[16 * v4 + 32];
        v6 = *&v12[16 * v45 + 40];
        sub_1C1B313CC((*v9 + 8 * v84), (*v9 + 8 * *&v12[16 * v45 + 32]), (*v9 + 8 * v6), v7);
        if (v8)
        {
        }

        if (v6 < v84)
        {
          goto LABEL_331;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_1C1B90C2C(v83);
        }

        if (v4 >= *(v83 + 2))
        {
          goto LABEL_332;
        }

        v85 = &v83[16 * v4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v6;
        v109 = v83;
        sub_1C1B90BA0(v45);
        v12 = v109;
        v43 = *(v109 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v12[16 * v43 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_333;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_334;
      }

      v57 = &v12[16 * v43];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_336;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_339;
      }

      if (v61 >= v53)
      {
        v79 = &v12[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_343;
        }

        if (v48 < v82)
        {
          v45 = v43 - 2;
        }

        goto LABEL_306;
      }

      goto LABEL_285;
    }

    break;
  }

  if (__OFADD__(v13, a4))
  {
    goto LABEL_349;
  }

  if (v13 + a4 >= v28)
  {
    v29 = v9[1];
  }

  else
  {
    v29 = v13 + a4;
  }

  if (v29 < v13)
  {
LABEL_350:
    __break(1u);
    goto LABEL_351;
  }

  if (v105 == v29)
  {
    goto LABEL_265;
  }

  v97 = v12;
  v92 = v8;
  v94 = v13;
  v4 = *v9;
  v30 = *v9 + 8 * v105 - 8;
  v31 = v13 - v105;
  v32 = v105;
  v99 = v29;
  while (2)
  {
    v104 = v30;
    v106 = v32;
    v33 = *(v4 + 8 * v32);
    v102 = v31;
LABEL_140:
    v34 = *v30;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v6 = [v33 serverUnfilledReason];
    v7 = [v34 serverUnfilledReason];
    v35 = [v33 error];
    v36 = [v34 error];
    v37 = v36;
    if (v6 != 200)
    {
      if (v7 == 200 && v36 == 0)
      {
        goto LABEL_137;
      }

      if (!v35 && v36)
      {
LABEL_160:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_161;
      }

      if (v7 == 200)
      {
        goto LABEL_263;
      }

      if (!v36 && v35)
      {
        goto LABEL_137;
      }

      if (v6 > 204)
      {
        switch(v6)
        {
          case 1000:
            v6 = 10;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1001:
          case 1002:
          case 1003:
          case 1004:
          case 1005:
          case 1006:
          case 1007:
          case 1008:
          case 1009:
          case 1011:
          case 1012:
          case 1013:
          case 1014:
          case 1015:
          case 1016:
          case 1017:
          case 1018:
          case 1019:
          case 1024:
          case 1032:
          case 1033:
          case 1034:
          case 1035:
          case 1036:
          case 1037:
          case 1038:
          case 1039:
          case 1040:
          case 1041:
          case 1042:
          case 1043:
          case 1044:
          case 1045:
          case 1046:
          case 1047:
          case 1048:
            goto LABEL_358;
          case 1010:
            v6 = 5;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1020:
            v6 = 7;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1021:
            v6 = 8;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1022:
          case 1023:
            v6 = 9;
            if (v7 > 204)
            {
              goto LABEL_157;
            }

            goto LABEL_165;
          case 1025:
            v6 = 28;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1026:
            v6 = 34;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1027:
            v6 = 35;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1028:
            v6 = 36;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1029:
            v6 = 31;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1030:
            v6 = 37;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1031:
            v6 = 38;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1049:
            v6 = 20;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1050:
            v6 = 21;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1051:
            v6 = 22;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1052:
            v6 = 23;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1053:
            v6 = 24;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1054:
            v6 = 25;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1055:
            v6 = 26;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1056:
            v6 = 27;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1057:
            v6 = 30;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1058:
            v6 = 32;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1059:
            v6 = 33;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          default:
            if (v6 == 205)
            {
              v6 = 1;
              if (v7 > 204)
              {
                goto LABEL_157;
              }
            }

            else
            {
              if (v6 != 206)
              {
                goto LABEL_358;
              }

              v6 = 29;
              if (v7 > 204)
              {
                goto LABEL_157;
              }
            }

            break;
        }

        goto LABEL_165;
      }

      if (v6 > 202)
      {
        if (v6 == 203)
        {
          v6 = 2;
          if (v7 > 204)
          {
            goto LABEL_157;
          }
        }

        else
        {
          v6 = 6;
          if (v7 > 204)
          {
            goto LABEL_157;
          }
        }
      }

      else
      {
        if (v6 == 201)
        {
          v6 = 4;
          if (v7 <= 204)
          {
            goto LABEL_165;
          }

LABEL_157:
          switch(v7)
          {
            case 1000:
              v7 = 10;
              break;
            case 1001:
            case 1002:
            case 1003:
            case 1004:
            case 1005:
            case 1006:
            case 1007:
            case 1008:
            case 1009:
            case 1011:
            case 1012:
            case 1013:
            case 1014:
            case 1015:
            case 1016:
            case 1017:
            case 1018:
            case 1019:
            case 1024:
            case 1032:
            case 1033:
            case 1034:
            case 1035:
            case 1036:
            case 1037:
            case 1038:
            case 1039:
            case 1040:
            case 1041:
            case 1042:
            case 1043:
            case 1044:
            case 1045:
            case 1046:
            case 1047:
            case 1048:
              goto LABEL_359;
            case 1010:
              v7 = 5;
              break;
            case 1020:
              v7 = 7;
              break;
            case 1021:
              v7 = 8;
              break;
            case 1022:
            case 1023:
              v7 = 9;
              break;
            case 1025:
              v7 = 28;
              break;
            case 1026:
              v7 = 34;
              break;
            case 1027:
              v7 = 35;
              break;
            case 1028:
              v7 = 36;
              break;
            case 1029:
              v7 = 31;
              break;
            case 1030:
              v7 = 37;
              break;
            case 1031:
              v7 = 38;
              break;
            case 1049:
              v7 = 20;
              break;
            case 1050:
              v7 = 21;
              break;
            case 1051:
              v7 = 22;
              break;
            case 1052:
              v7 = 23;
              break;
            case 1053:
              v7 = 24;
              break;
            case 1054:
              v7 = 25;
              break;
            case 1055:
              v7 = 26;
              break;
            case 1056:
              v7 = 27;
              break;
            case 1057:
              v7 = 30;
              break;
            case 1058:
              v7 = 32;
              break;
            case 1059:
              v7 = 33;
              break;
            default:
              if (v7 == 205)
              {
                v7 = 1;
              }

              else
              {
                if (v7 != 206)
                {
                  goto LABEL_359;
                }

                v7 = 29;
              }

              break;
          }

LABEL_257:

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v6 >= v7)
          {
            goto LABEL_138;
          }

          goto LABEL_258;
        }

        if (v6 != 202)
        {
          goto LABEL_358;
        }

        v6 = 3;
        if (v7 > 204)
        {
          goto LABEL_157;
        }
      }

LABEL_165:
      if (v7 > 202)
      {
        if (v7 == 203)
        {
          v7 = 2;
        }

        else
        {
          v7 = 6;
        }
      }

      else if (v7 == 201)
      {
        v7 = 4;
      }

      else
      {
        if (v7 != 202)
        {
          goto LABEL_359;
        }

        v7 = 3;
      }

      goto LABEL_257;
    }

    if (v7 != 200)
    {
      if (v35)
      {
LABEL_262:
        if (v36)
        {
LABEL_263:

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
LABEL_137:
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

LABEL_138:
        v32 = v106 + 1;
        v30 = v104 + 8;
        v31 = v102 - 1;
        if (v106 + 1 == v99)
        {
          v105 = v99;
          v8 = v92;
          v13 = v94;
          v9 = a3;
          v12 = v97;
          goto LABEL_265;
        }

        continue;
      }

      goto LABEL_160;
    }

    break;
  }

  if (v35)
  {
    goto LABEL_262;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v37)
  {
    goto LABEL_138;
  }

LABEL_161:

LABEL_258:
  if (v4)
  {
    v39 = *v30;
    v33 = *(v30 + 8);
    *v30 = v33;
    *(v30 + 8) = v39;
    v30 -= 8;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_138;
    }

    goto LABEL_140;
  }

  __break(1u);
LABEL_353:
  __break(1u);
LABEL_354:
  __break(1u);
LABEL_355:
  __break(1u);
LABEL_356:
  __break(1u);
LABEL_357:
  __break(1u);
LABEL_358:
  v108 = v6;
LABEL_360:
  result = sub_1C1B958C8();
  __break(1u);
  return result;
}

uint64_t sub_1C1B313CC(void **__dst, void **a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = a2 - __dst;
  v8 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v8 = a2 - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      v13 = a2;
      memmove(a4, __dst, 8 * v9);
      v6 = __dst;
      a2 = v13;
    }

    v15 = &v4[v9];
    if (v7 < 8)
    {
      a2 = v6;
LABEL_137:
      v40 = v15 - v4 + 7;
      if (v15 - v4 >= 0)
      {
        v40 = v15 - v4;
      }

      if (a2 < v4 || a2 >= (v4 + (v40 & 0xFFFFFFFFFFFFFFF8)) || a2 != v4)
      {
        v39 = 8 * (v40 >> 3);
        v38 = a2;
LABEL_143:
        memmove(v38, v4, v39);
      }

      return 1;
    }

    if (a2 >= v5)
    {
LABEL_19:
      a2 = v6;
      goto LABEL_137;
    }

    while (1)
    {
      v16 = v6;
      v17 = a2;
      v48 = *a2;
      v47 = *v4;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v18 = sub_1C1B2EC10(&v48, &v47);
      if (v44)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v38 = v16;
        if (v16 != v4 || v16 >= (v4 + ((v15 - v4 + (v15 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
        {
          v39 = 8 * (v15 - v4);
          goto LABEL_143;
        }

        return 1;
      }

      v19 = v18;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = v17;
      a2 = v17 + 1;
      v21 = v16;
      if (v16 != v17)
      {
        goto LABEL_16;
      }

LABEL_17:
      v6 = v21 + 1;
      if (v4 >= v15 || a2 >= v5)
      {
        goto LABEL_19;
      }
    }

    v20 = v4;
    v21 = v16;
    v34 = v16 == v4++;
    a2 = v17;
    if (v34)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v21 = *v20;
    goto LABEL_17;
  }

  if (a4 != a2 || &a2[v12] <= a4)
  {
    v22 = a2;
    memmove(a4, a2, 8 * v12);
    v6 = __dst;
    a2 = v22;
  }

  v24 = &v4[v12];
  if (v10 < 8 || a2 <= v6)
  {
    v15 = &v4[v12];
    goto LABEL_137;
  }

  v45 = v4;
  v42 = v6;
  while (2)
  {
    v43 = a2;
    v25 = a2 - 1;
    --v5;
    v15 = v24;
    v46 = a2 - 1;
    while (1)
    {
      v26 = *--v15;
      v27 = *v25;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v28 = [v26 serverUnfilledReason];
      v29 = [v27 serverUnfilledReason];
      v30 = [v26 error];
      v31 = [v27 error];
      if (v28 != 200)
      {
        break;
      }

      if (v29 == 200)
      {
        if (!v30)
        {
          v32 = v31;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v33 = v32;
          if (v32)
          {
            goto LABEL_125;
          }

          goto LABEL_49;
        }
      }

      else if (!v30)
      {
        goto LABEL_124;
      }

      if (!v31)
      {
        goto LABEL_48;
      }

LABEL_47:

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_49:
      v4 = v45;
      if (v5 + 1 != v24)
      {
        *v5 = *v15;
      }

      --v5;
      v24 = v15;
      v25 = v46;
      if (v15 <= v45)
      {
        a2 = v43;
        goto LABEL_137;
      }
    }

    v34 = v29 == 200 && v31 == 0;
    if (v34)
    {
      goto LABEL_48;
    }

    if (!v30 && v31)
    {
LABEL_124:
      v37 = v31;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v33 = v37;
LABEL_125:

LABEL_126:
      v4 = v45;
      if (v5 + 1 != v43)
      {
        *v5 = *v46;
      }

      if (v24 <= v45 || (a2 = v46, v46 <= v42))
      {
        v15 = v24;
        a2 = v46;
        goto LABEL_137;
      }

      continue;
    }

    break;
  }

  if (v29 == 200)
  {
    goto LABEL_47;
  }

  if (!v31 && v30)
  {
LABEL_48:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_49;
  }

  if (v28 <= 204)
  {
    if (v28 > 202)
    {
      if (v28 == 203)
      {
        v35 = 2;
      }

      else
      {
        v35 = 6;
      }
    }

    else if (v28 == 201)
    {
      v35 = 4;
    }

    else
    {
      if (v28 != 202)
      {
        goto LABEL_145;
      }

      v35 = 3;
    }
  }

  else
  {
    switch(v28)
    {
      case 1000:
        v35 = 10;
        break;
      case 1001:
      case 1002:
      case 1003:
      case 1004:
      case 1005:
      case 1006:
      case 1007:
      case 1008:
      case 1009:
      case 1011:
      case 1012:
      case 1013:
      case 1014:
      case 1015:
      case 1016:
      case 1017:
      case 1018:
      case 1019:
      case 1024:
      case 1032:
      case 1033:
      case 1034:
      case 1035:
      case 1036:
      case 1037:
      case 1038:
      case 1039:
      case 1040:
      case 1041:
      case 1042:
      case 1043:
      case 1044:
      case 1045:
      case 1046:
      case 1047:
      case 1048:
        goto LABEL_145;
      case 1010:
        v35 = 5;
        break;
      case 1020:
        v35 = 7;
        break;
      case 1021:
        v35 = 8;
        break;
      case 1022:
      case 1023:
        v35 = 9;
        break;
      case 1025:
        v35 = 28;
        break;
      case 1026:
        v35 = 34;
        break;
      case 1027:
        v35 = 35;
        break;
      case 1028:
        v35 = 36;
        break;
      case 1029:
        v35 = 31;
        break;
      case 1030:
        v35 = 37;
        break;
      case 1031:
        v35 = 38;
        break;
      case 1049:
        v35 = 20;
        break;
      case 1050:
        v35 = 21;
        break;
      case 1051:
        v35 = 22;
        break;
      case 1052:
        v35 = 23;
        break;
      case 1053:
        v35 = 24;
        break;
      case 1054:
        v35 = 25;
        break;
      case 1055:
        v35 = 26;
        break;
      case 1056:
        v35 = 27;
        break;
      case 1057:
        v35 = 30;
        break;
      case 1058:
        v35 = 32;
        break;
      case 1059:
        v35 = 33;
        break;
      default:
        if (v28 == 205)
        {
          v35 = 1;
        }

        else
        {
          if (v28 != 206)
          {
LABEL_145:
            v48 = v28;
            goto LABEL_147;
          }

          v35 = 29;
        }

        break;
    }
  }

  if (v29 <= 204)
  {
    if (v29 > 202)
    {
      if (v29 == 203)
      {
        v36 = 2;
      }

      else
      {
        v36 = 6;
      }
    }

    else if (v29 == 201)
    {
      v36 = 4;
    }

    else
    {
      if (v29 != 202)
      {
        goto LABEL_146;
      }

      v36 = 3;
    }

LABEL_122:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v35 < v36)
    {
      goto LABEL_126;
    }

    goto LABEL_49;
  }

  switch(v29)
  {
    case 1000:
      v36 = 10;
      goto LABEL_122;
    case 1001:
    case 1002:
    case 1003:
    case 1004:
    case 1005:
    case 1006:
    case 1007:
    case 1008:
    case 1009:
    case 1011:
    case 1012:
    case 1013:
    case 1014:
    case 1015:
    case 1016:
    case 1017:
    case 1018:
    case 1019:
    case 1024:
    case 1032:
    case 1033:
    case 1034:
    case 1035:
    case 1036:
    case 1037:
    case 1038:
    case 1039:
    case 1040:
    case 1041:
    case 1042:
    case 1043:
    case 1044:
    case 1045:
    case 1046:
    case 1047:
    case 1048:
      goto LABEL_146;
    case 1010:
      v36 = 5;
      goto LABEL_122;
    case 1020:
      v36 = 7;
      goto LABEL_122;
    case 1021:
      v36 = 8;
      goto LABEL_122;
    case 1022:
    case 1023:
      v36 = 9;
      goto LABEL_122;
    case 1025:
      v36 = 28;
      goto LABEL_122;
    case 1026:
      v36 = 34;
      goto LABEL_122;
    case 1027:
      v36 = 35;
      goto LABEL_122;
    case 1028:
      v36 = 36;
      goto LABEL_122;
    case 1029:
      v36 = 31;
      goto LABEL_122;
    case 1030:
      v36 = 37;
      goto LABEL_122;
    case 1031:
      v36 = 38;
      goto LABEL_122;
    case 1049:
      v36 = 20;
      goto LABEL_122;
    case 1050:
      v36 = 21;
      goto LABEL_122;
    case 1051:
      v36 = 22;
      goto LABEL_122;
    case 1052:
      v36 = 23;
      goto LABEL_122;
    case 1053:
      v36 = 24;
      goto LABEL_122;
    case 1054:
      v36 = 25;
      goto LABEL_122;
    case 1055:
      v36 = 26;
      goto LABEL_122;
    case 1056:
      v36 = 27;
      goto LABEL_122;
    case 1057:
      v36 = 30;
      goto LABEL_122;
    case 1058:
      v36 = 32;
      goto LABEL_122;
    case 1059:
      v36 = 33;
      goto LABEL_122;
    default:
      if (v29 == 205)
      {
        v36 = 1;
        goto LABEL_122;
      }

      if (v29 == 206)
      {
        v36 = 29;
        goto LABEL_122;
      }

LABEL_146:
      v48 = v29;
LABEL_147:
      result = sub_1C1B958C8();
      __break(1u);
      return result;
  }
}

uint64_t sub_1C1B31AD4(void *a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v121 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v122 = &v115 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v124 = &v115 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v125 = (&v115 - v12);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v126 = &v115 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v127 = &v115 - v15;
  v16 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v115 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v115 - v23;
  v129 = sub_1C1B94588();
  v25 = *(v129 - 8);
  v26 = MEMORY[0x1EEE9AC00](v129);
  v28 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v128 = &v115 - v29;
  v130 = a1;
  v30 = [a1 metricEventsTracking];
  if (v30)
  {
    [v30 didReceiveAdResponse];
    swift_unknownObjectRelease();
  }

  v31 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  swift_beginAccess();
  v123 = a2;
  sub_1C1ABB0C4(a2 + v31, v24);
  v32 = *(v25 + 48);
  v33 = v129;
  if (v32(v24, 1, v129) == 1)
  {
    v22 = v24;
LABEL_12:
    v41 = v130;
    sub_1C1AA7C8C(v22, &qword_1EBF07F50, &qword_1C1B9A590);
    v42 = sub_1C1B95128();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v43 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1C1B9AF30;
    v45 = [v41 contextIdentifier];
    v46 = v127;
    v47 = v126;
    if (v45)
    {
      v48 = v45;
      sub_1C1B945D8();

      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    v50 = sub_1C1B945F8();
    v51 = *(v50 - 8);
    (*(v51 + 56))(v47, v49, 1, v50);
    sub_1C1B32AD8(v47, v46, &unk_1EBF098E0, &qword_1C1BA22A0);
    if ((*(v51 + 48))(v46, 1, v50) == 1)
    {
      sub_1C1AA7C8C(v46, &unk_1EBF098E0, &qword_1C1BA22A0);
      v52 = 0;
      v53 = 0;
    }

    else
    {
      v52 = sub_1C1B945A8();
      v53 = v54;
      (*(v51 + 8))(v46, v50);
    }

    v55 = MEMORY[0x1E69E6158];
    *(v44 + 56) = MEMORY[0x1E69E6158];
    v56 = sub_1C1AA5E7C();
    *(v44 + 64) = v56;
    if (v53)
    {
      v57 = v52;
    }

    else
    {
      v57 = 0;
    }

    v58 = 0xE000000000000000;
    if (v53)
    {
      v58 = v53;
    }

    *(v44 + 32) = v57;
    *(v44 + 40) = v58;
    v59 = [v41 identifier];
    v60 = sub_1C1B94D88();
    v62 = v61;

    *(v44 + 96) = v55;
    *(v44 + 104) = v56;
    *(v44 + 72) = v60;
    *(v44 + 80) = v62;
    sub_1C1B94BA8(v42, &dword_1C1AA2000, v43, "[PC] Context (%@) Wanted to send analytics but do not have prefetchTimestamp or responseTime (%@)", 97, 2, v44);
  }

  v120 = v28;
  v34 = v128;
  v118 = *(v25 + 32);
  v118(v128, v24, v33);
  v35 = [v130 metricEventsTracking];
  if (!v35)
  {
    (*(v25 + 8))(v34, v33);
    (*(v25 + 56))(v22, 1, 1, v33);
    goto LABEL_12;
  }

  v119 = v25;
  v36 = [v35 adResponseTimestamp];
  swift_unknownObjectRelease();
  if (v36)
  {
    sub_1C1B94558();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = v129;
  v39 = v120;
  v40 = v119;
  (*(v119 + 56))(v19, v37, 1, v129);
  sub_1C1B32AD8(v19, v22, &qword_1EBF07F50, &qword_1C1B9A590);
  if (v32(v22, 1, v38) == 1)
  {
    (*(v40 + 8))(v128, v38);
    goto LABEL_12;
  }

  v118(v39, v22, v38);
  sub_1C1B94528();
  v65 = v64;
  LODWORD(v127) = sub_1C1B95108();
  v66 = sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v126 = "eContentDepiction>16@0:8";
  v118 = v66;
  v67 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v68 = swift_allocObject();
  v117 = xmmword_1C1B9AF30;
  *(v68 + 16) = xmmword_1C1B9AF30;
  v69 = [v130 contextIdentifier];
  if (v69)
  {
    v70 = v124;
    v71 = v69;
    sub_1C1B945D8();

    v72 = 0;
    v73 = v125;
  }

  else
  {
    v72 = 1;
    v73 = v125;
    v70 = v124;
  }

  v74 = sub_1C1B945F8();
  v75 = *(v74 - 8);
  v76 = v75;
  v125 = *(v75 + 56);
  v124 = (v75 + 56);
  v125(v70, v72, 1, v74);
  sub_1C1B32AD8(v70, v73, &unk_1EBF098E0, &qword_1C1BA22A0);
  v116 = *(v76 + 48);
  if (v116(v73, 1, v74) == 1)
  {
    v77 = v76;
    sub_1C1AA7C8C(v73, &unk_1EBF098E0, &qword_1C1BA22A0);
    v78 = 0;
    v79 = 0;
  }

  else
  {
    v78 = sub_1C1B945A8();
    v79 = v80;
    v77 = v76;
    (*(v76 + 8))(v73, v74);
  }

  *(v68 + 56) = MEMORY[0x1E69E6158];
  v81 = sub_1C1AA5E7C();
  *(v68 + 64) = v81;
  if (v79)
  {
    v82 = v78;
  }

  else
  {
    v82 = 0;
  }

  v83 = 0xE000000000000000;
  if (v79)
  {
    v83 = v79;
  }

  v84 = MEMORY[0x1E69E63B0];
  *(v68 + 32) = v82;
  *(v68 + 40) = v83;
  v85 = MEMORY[0x1E69E6438];
  *(v68 + 96) = v84;
  *(v68 + 104) = v85;
  *(v68 + 72) = v65;
  sub_1C1B94BA8(v127, &dword_1C1AA2000, v67, "[PC] Context %{public}@: Pre-fetch to client ad response interval is %{public}f.", 80, 2, v68);

  v86 = sub_1C1B0C2B4(v65);
  if (v86)
  {
    v87 = v86;
    sub_1C1AC1F08(&qword_1EBF090B0, &unk_1C1B9F3A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1B9C9C0;
    *(inited + 32) = 0x6C61767265746E49;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v87;
    strcpy((inited + 56), "IntervalType");
    *(inited + 69) = 0;
    *(inited + 70) = -5120;
    v89 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v90 = v87;
    *(inited + 72) = [v89 initWithInteger_];
    *(inited + 80) = 0x546B726F7774654ELL;
    *(inited + 88) = 0xEB00000000657079;
    *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    strcpy((inited + 104), "PlacementType");
    *(inited + 118) = -4864;
    v91 = *(v123 + OBJC_IVAR___APPCBaseContext_current);
    if (v91)
    {
      v92 = Placement.apPlacement.getter([v91 placement]);
    }

    else
    {
      v92 = 0;
    }

    v100 = v129;
    v101 = v120;
    *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    *(inited + 128) = 0x64656C696146;
    *(inited + 136) = 0xE600000000000000;
    sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
    *(inited + 144) = sub_1C1B95248();
    v102 = sub_1C1AD46B4(inited);
    swift_setDeallocating();
    sub_1C1AC1F08(&qword_1EBF08840, &qword_1C1B9CB40);
    swift_arrayDestroy();
    v103 = objc_opt_self();
    v104 = sub_1C1B94D78();
    sub_1C1B1A914(v102);

    sub_1C1AA576C(0, &qword_1EDE6C9D0, 0x1E69E58C0);
    v105 = sub_1C1B94CA8();

    [v103 sendEvent:v104 customPayload:v105];

    v106 = *(v119 + 8);
    v106(v101, v100);
    return (v106)(v128, v100);
  }

  else
  {
    v93 = sub_1C1B95128();
    v94 = sub_1C1B95298();
    v95 = swift_allocObject();
    *(v95 + 16) = v117;
    v96 = [v130 contextIdentifier];
    if (v96)
    {
      v97 = v121;
      v98 = v96;
      sub_1C1B945D8();

      v99 = 0;
    }

    else
    {
      v99 = 1;
      v97 = v121;
    }

    v125(v97, v99, 1, v74);
    v107 = v97;
    v108 = v122;
    sub_1C1B32AD8(v107, v122, &unk_1EBF098E0, &qword_1C1BA22A0);
    if (v116(v108, 1, v74) == 1)
    {
      sub_1C1AA7C8C(v108, &unk_1EBF098E0, &qword_1C1BA22A0);
      v109 = 0;
      *(v95 + 56) = MEMORY[0x1E69E6158];
      *(v95 + 64) = v81;
      v110 = 0xE000000000000000;
      v111 = v129;
    }

    else
    {
      v109 = sub_1C1B945A8();
      v110 = v112;
      (*(v77 + 8))(v108, v74);
      *(v95 + 56) = MEMORY[0x1E69E6158];
      *(v95 + 64) = v81;
      v111 = v129;
      if (!v110)
      {
        v109 = 0;
        v110 = 0xE000000000000000;
      }
    }

    v113 = v119;
    *(v95 + 32) = v109;
    *(v95 + 40) = v110;
    *(v95 + 96) = MEMORY[0x1E69E63B0];
    *(v95 + 104) = MEMORY[0x1E69E6438];
    *(v95 + 72) = v65;
    sub_1C1B94BA8(v93, &dword_1C1AA2000, v94, "[PC] Context %{public}@: Interval is NaN: %{public}f.", 53, 2, v95);

    v114 = *(v113 + 8);
    v114(v120, v111);
    return (v114)(v128, v111);
  }
}

uint64_t sub_1C1B32A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1B32A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderRequest(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1B32AD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C1AC1F08(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C1B32B40(unsigned __int8 a1)
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B32C5C(unsigned __int8 a1)
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B32D68(uint64_t a1, unsigned __int8 a2)
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B32E70(uint64_t a1, unsigned __int8 a2)
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B32FD0(uint64_t a1, unsigned __int8 a2)
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B33124(uint64_t a1, unsigned __int8 a2)
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B33280(uint64_t a1, unsigned __int8 a2)
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

id BaseContext.init(identifier:maxSize:requestedAd:current:adjacent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v7 = sub_1C1B35E00(a1, a2, a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();
  return v7;
}

char *BaseContext.init(maxSize:requestedAd:current:adjacent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v13 = sub_1C1B945F8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR___APPCBaseContext_adjacentInternal] = MEMORY[0x1E69E7CC0];
  v18 = &v6[OBJC_IVAR___APPCBaseContext_requestedAd];
  *v18 = 0;
  *(v18 + 1) = 0;
  sub_1C1B945E8();
  (*(v14 + 32))(&v6[OBJC_IVAR___APPCBaseContext_identifier], v16, v13);
  v19 = &v6[OBJC_IVAR___APPCBaseContext_maxSize];
  *v19 = a5;
  v19[1] = a6;
  swift_beginAccess();
  *v18 = a1;
  *(v18 + 1) = a2;

  *&v6[OBJC_IVAR___APPCBaseContext_current] = a3;
  *&v6[OBJC_IVAR___APPCBaseContext_next] = v17;
  *&v6[OBJC_IVAR___APPCBaseContext_adjacent] = a4;
  v20 = type metadata accessor for BaseContext(0);
  v31.receiver = v6;
  v31.super_class = v20;
  swift_unknownObjectRetain();
  v21 = objc_msgSendSuper2(&v31, sel_init);
  v22 = sub_1C1B95118();
  sub_1C1AC53E4();
  v23 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C1B98E60;
  v25 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v14 + 16))(v16, &v21[v25], v13);
  v26 = sub_1C1B945A8();
  v28 = v27;
  (*(v14 + 8))(v16, v13);
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = sub_1C1AA5E7C();
  *(v24 + 32) = v26;
  *(v24 + 40) = v28;
  sub_1C1B94BA8(v22, &dword_1C1AA2000, v23, "[PC] Context (%{public}@) is being initialized", 46, 2, v24);

  sub_1C1B343B4();

  swift_unknownObjectRelease();
  return v21;
}

void *BaseContext.init(from:)(void *a1)
{
  v4 = sub_1C1B945F8();
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1AC1F08(&qword_1EBF090C0, &qword_1C1B9FEC0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - v8;
  v31 = OBJC_IVAR___APPCBaseContext_adjacentInternal;
  v32 = v1;
  *(v1 + OBJC_IVAR___APPCBaseContext_adjacentInternal) = MEMORY[0x1E69E7CC0];
  v10 = (v1 + OBJC_IVAR___APPCBaseContext_requestedAd);
  *v10 = 0;
  v10[1] = 0;
  v33 = a1;
  v34 = v10;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B36078();
  sub_1C1B95A08();
  if (v2)
  {
    v13 = v32;
    sub_1C1AA86F8(v33);

    type metadata accessor for BaseContext(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v7;
    LOBYTE(v37) = 0;
    sub_1C1B360CC(&qword_1EDE6C358, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v12 = v29;
    sub_1C1B956F8();
    v15 = v32;
    (*(v30 + 32))(v32 + OBJC_IVAR___APPCBaseContext_identifier, v12, v4);
    type metadata accessor for CGSize(0);
    LOBYTE(v38) = 1;
    sub_1C1B360CC(&unk_1EDE6BB30, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
    sub_1C1B956F8();
    *&v15[OBJC_IVAR___APPCBaseContext_maxSize] = v37;
    LOBYTE(v37) = 2;
    v16 = sub_1C1B95638();
    v18 = v17;
    v19 = v34;
    swift_beginAccess();
    *v19 = v16;
    v19[1] = v18;

    type metadata accessor for ContentDepiction();
    v36 = 3;
    sub_1C1B360CC(&qword_1EDE6B2B0, type metadata accessor for ContentDepiction, &protocol conformance descriptor for ContentDepiction);
    sub_1C1B95678();
    *&v15[OBJC_IVAR___APPCBaseContext_current] = v38;
    v20 = sub_1C1AC1F08(&qword_1EBF07B50, &unk_1C1B98F80);
    v36 = 4;
    v21 = sub_1C1B36114(&qword_1EDE6A700, &qword_1EDE6B2B0, &protocol conformance descriptor for ContentDepiction, MEMORY[0x1E69E6330]);
    sub_1C1B95678();
    v28 = v21;
    v29 = v20;
    v22 = MEMORY[0x1E69E7CC0];
    if (v38)
    {
      v23 = v38;
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
    }

    if (v23 >> 62)
    {
      sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
      v24 = sub_1C1B95578();
    }

    else
    {
      sub_1C1B95898();
      v24 = v23;
    }

    *&v15[OBJC_IVAR___APPCBaseContext_next] = v24;
    v36 = 5;
    sub_1C1B95678();
    if (v38)
    {
      v25 = v38;
    }

    else
    {
      v25 = v22;
    }

    if (v25 >> 62)
    {
      sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
      v26 = sub_1C1B95578();
    }

    else
    {
      sub_1C1B95898();
      v26 = v25;
    }

    *&v15[OBJC_IVAR___APPCBaseContext_adjacent] = v26;
    v27 = type metadata accessor for BaseContext(0);
    v35.receiver = v15;
    v35.super_class = v27;
    v13 = objc_msgSendSuper2(&v35, sel_init, v28, v29);
    (*(v11 + 8))(v9, v6);
    sub_1C1AA86F8(v33);
  }

  return v13;
}

uint64_t sub_1C1B33E0C(void *a1)
{
  v2 = sub_1C1B945F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1AC1F08(&qword_1EBF090C8, &qword_1C1B9FEC8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - v8;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B36078();
  v10 = v16[0];
  sub_1C1B95A18();
  v11 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v3 + 16))(v5, v10 + v11, v2);
  LOBYTE(v18) = 0;
  sub_1C1B360CC(&unk_1EDE6C360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  v12 = v16[1];
  sub_1C1B95808();
  if (v12)
  {
    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    v18 = *(v10 + OBJC_IVAR___APPCBaseContext_maxSize);
    LOBYTE(v17) = 1;
    type metadata accessor for CGSize(0);
    sub_1C1B360CC(&qword_1EDE6BB40, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
    sub_1C1B95808();
    v14 = OBJC_IVAR___APPCBaseContext_requestedAd;
    swift_beginAccess();
    v17 = *(v10 + v14);
    v19 = 2;
    sub_1C1AC1F08(&qword_1EBF07AB8, &qword_1C1B98D00);
    sub_1C1AC344C();
    sub_1C1B95808();
    if (*(v10 + OBJC_IVAR___APPCBaseContext_current))
    {
      type metadata accessor for ContentDepiction();
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        swift_unknownObjectRetain();
      }
    }

    else
    {
      v15 = 0;
    }

    *&v17 = v15;
    v19 = 3;
    type metadata accessor for ContentDepiction();
    sub_1C1B360CC(&qword_1EDE6B2B8, type metadata accessor for ContentDepiction, &protocol conformance descriptor for ContentDepiction);
    sub_1C1B95788();

    *&v17 = sub_1C1AA5AB0(*(v10 + OBJC_IVAR___APPCBaseContext_next));
    v19 = 4;
    sub_1C1AC1F08(&qword_1EBF07B50, &unk_1C1B98F80);
    sub_1C1B36114(&qword_1EDE6A708, &qword_1EDE6B2B8, &protocol conformance descriptor for ContentDepiction, MEMORY[0x1E69E6300]);
    sub_1C1B95788();

    *&v17 = sub_1C1AA5AB0(*(v10 + OBJC_IVAR___APPCBaseContext_adjacent));
    v19 = 5;
    sub_1C1B95788();

    return (*(v7 + 8))(v9, 0);
  }
}

uint64_t sub_1C1B3435C()
{
  v1 = (v0 + OBJC_IVAR___APPCBaseContext_requestedAd);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_1C1B343B4()
{
  v1 = *(v0 + OBJC_IVAR___APPCBaseContext_adjacent);
  if (v1 >> 62)
  {
LABEL_24:
    v2 = sub_1C1B953A8();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v2 == v3)
    {
      goto LABEL_13;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1C6907490](v3, v1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      goto LABEL_8;
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_24;
    }

    v4 = *(v1 + 8 * v3 + 32);
    swift_unknownObjectRetain();
    if (__OFADD__(v3, 1))
    {
      break;
    }

LABEL_8:
    v5 = [v4 adjacentPosition];
    swift_unknownObjectRelease();
    ++v3;
    if (!v5)
    {
      v6 = sub_1C1B94D78();
      APSimulateCrash();
LABEL_16:

      return;
    }
  }

  __break(1u);
LABEL_13:
  if (!*(v0 + OBJC_IVAR___APPCBaseContext_current))
  {
    return;
  }

  if ([swift_unknownObjectRetain() adjacentPosition])
  {
    v6 = sub_1C1B94D78();
    APSimulateCrash();
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1C1B345B8(uint64_t a1)
{
  sub_1C1B94DE8();
}

unint64_t sub_1C1B346B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C1B363FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C1B346E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x696669746E656469;
  v5 = 0xE700000000000000;
  v6 = 0x746E6572727563;
  v7 = 0xE400000000000000;
  v8 = 1954047342;
  if (v2 != 4)
  {
    v8 = 0x746E6563616A6461;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x657A695378616DLL;
  if (v2 != 1)
  {
    v10 = 0x6574736575716572;
    v9 = 0xEB00000000644164;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1C1B347A8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x746E6572727563;
  v4 = 1954047342;
  if (v1 != 4)
  {
    v4 = 0x746E6563616A6461;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657A695378616DLL;
  if (v1 != 1)
  {
    v5 = 0x6574736575716572;
  }

  if (*v0)
  {
    v2 = v5;
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

unint64_t sub_1C1B34868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1B363FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B3489C(uint64_t a1)
{
  v2 = sub_1C1B36078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B348D8(uint64_t a1)
{
  v2 = sub_1C1B36078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1B34A28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v5 = sub_1C1B945F8();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1C1B34AB4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C1B945F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

id sub_1C1B34C60(uint64_t a1, uint64_t a2, void *a3)
{

  sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
  v3 = sub_1C1B94EB8();

  return v3;
}

uint64_t sub_1C1B34D58(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___APPCBaseContext_requestedAd);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

void BaseContext.init(maxSize:requestedAd:current:next:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, double a5, double a6)
{
  v13 = sub_1C1B945F8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR___APPCBaseContext_adjacentInternal] = MEMORY[0x1E69E7CC0];
  v18 = &v6[OBJC_IVAR___APPCBaseContext_requestedAd];
  *v18 = 0;
  *(v18 + 1) = 0;
  sub_1C1B945E8();
  v41 = v16;
  v42 = v14;
  (*(v14 + 32))(&v6[OBJC_IVAR___APPCBaseContext_identifier], v16, v13);
  v19 = &v6[OBJC_IVAR___APPCBaseContext_maxSize];
  *v19 = a5;
  v19[1] = a6;
  swift_beginAccess();
  *v18 = a1;
  *(v18 + 1) = a2;

  *&v6[OBJC_IVAR___APPCBaseContext_current] = a3;
  v40 = v6;
  *&v6[OBJC_IVAR___APPCBaseContext_next] = a4;
  if (a4 >> 62)
  {
    goto LABEL_14;
  }

  v20 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20)
  {
    while (1)
    {
      v43[0] = v17;
      swift_unknownObjectRetain();

      sub_1C1B95518();
      if (v20 < 0)
      {
        break;
      }

      v39[0] = v13;
      v39[1] = a3;
      v21 = 0;
      a3 = a4 & 0xC000000000000001;
      v13 = a4 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (a3)
        {
          v23 = MEMORY[0x1C6907490](v21, a4);
        }

        else
        {
          if (v21 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v23 = *(a4 + 8 * v21 + 32);
          swift_unknownObjectRetain();
        }

        v45 = v23;
        sub_1C1B35970(&v45, &v46);
        swift_unknownObjectRelease();
        sub_1C1B954F8();
        v17 = *(v43[0] + 16);
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
        ++v21;
        if (v22 == v20)
        {

          v24 = v43[0];
          v13 = v39[0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v20 = sub_1C1B953A8();
      if (!v20)
      {
        goto LABEL_15;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_15:
    swift_unknownObjectRetain();
    v24 = MEMORY[0x1E69E7CC0];
LABEL_16:

    if (v24 >> 62)
    {
      sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
      v25 = sub_1C1B95578();
    }

    else
    {
      sub_1C1B95898();
      v25 = v24;
    }

    v26 = v40;
    *&v40[OBJC_IVAR___APPCBaseContext_adjacent] = v25;
    v27 = type metadata accessor for BaseContext(0);
    v44.receiver = v26;
    v44.super_class = v27;
    v28 = objc_msgSendSuper2(&v44, sel_init);
    v29 = sub_1C1B95118();
    sub_1C1AC53E4();
    v30 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1C1B98E60;
    v32 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    v33 = v42;
    v34 = &v28[v32];
    v35 = v41;
    (*(v42 + 16))(v41, v34, v13);
    v36 = sub_1C1B945A8();
    v38 = v37;
    (*(v33 + 8))(v35, v13);
    *(v31 + 56) = MEMORY[0x1E69E6158];
    *(v31 + 64) = sub_1C1AA5E7C();
    *(v31 + 32) = v36;
    *(v31 + 40) = v38;
    sub_1C1B94BA8(v29, &dword_1C1AA2000, v30, "[PC] Context (%{public}@) is being initialized", 46, 2, v31);

    swift_unknownObjectRelease();
  }
}

char *BaseContext.__allocating_init(maxSize:requestedAd:current:adjacent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v29[0] = a4;
  v12 = sub_1C1B945F8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(v6);
  v17 = MEMORY[0x1E69E7CC0];
  *&v16[OBJC_IVAR___APPCBaseContext_adjacentInternal] = MEMORY[0x1E69E7CC0];
  v18 = &v16[OBJC_IVAR___APPCBaseContext_requestedAd];
  *v18 = 0;
  *(v18 + 1) = 0;
  sub_1C1B945E8();
  (*(v13 + 32))(&v16[OBJC_IVAR___APPCBaseContext_identifier], v15, v12);
  v19 = &v16[OBJC_IVAR___APPCBaseContext_maxSize];
  *v19 = a5;
  v19[1] = a6;
  swift_beginAccess();
  *v18 = a1;
  *(v18 + 1) = a2;

  v29[1] = a3;
  *&v16[OBJC_IVAR___APPCBaseContext_current] = a3;
  *&v16[OBJC_IVAR___APPCBaseContext_next] = v17;
  *&v16[OBJC_IVAR___APPCBaseContext_adjacent] = v29[0];
  v30.receiver = v16;
  v30.super_class = v6;
  swift_unknownObjectRetain();
  v20 = objc_msgSendSuper2(&v30, sel_init);
  v21 = sub_1C1B95118();
  sub_1C1AC53E4();
  v22 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C1B98E60;
  v24 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v13 + 16))(v15, &v20[v24], v12);
  v25 = sub_1C1B945A8();
  v27 = v26;
  (*(v13 + 8))(v15, v12);
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = sub_1C1AA5E7C();
  *(v23 + 32) = v25;
  *(v23 + 40) = v27;
  sub_1C1B94BA8(v21, &dword_1C1AA2000, v22, "[PC] Context (%{public}@) is being initialized", 46, 2, v23);

  sub_1C1B343B4();

  swift_unknownObjectRelease();
  return v20;
}

uint64_t sub_1C1B35614(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, double, double))
{
  if (a5)
  {
    v12 = sub_1C1B94D88();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
  v15 = sub_1C1B94EC8();
  swift_unknownObjectRetain();
  return a8(v12, v14, a6, v15, a1, a2);
}

id BaseContext.__allocating_init(identifier:maxSize:requestedAd:current:adjacent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR___APPCBaseContext_adjacentInternal] = MEMORY[0x1E69E7CC0];
  v15 = &v14[OBJC_IVAR___APPCBaseContext_requestedAd];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = OBJC_IVAR___APPCBaseContext_identifier;
  v17 = sub_1C1B945F8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v14[v16], a1, v17);
  v19 = &v14[OBJC_IVAR___APPCBaseContext_maxSize];
  *v19 = a6;
  v19[1] = a7;
  swift_beginAccess();
  *v15 = a2;
  *(v15 + 1) = a3;
  *&v14[OBJC_IVAR___APPCBaseContext_current] = a4;
  *&v14[OBJC_IVAR___APPCBaseContext_next] = MEMORY[0x1E69E7CC0];
  *&v14[OBJC_IVAR___APPCBaseContext_adjacent] = a5;
  v29.receiver = v14;
  v29.super_class = v7;
  swift_unknownObjectRetain();
  v20 = objc_msgSendSuper2(&v29, sel_init);
  v21 = sub_1C1B95118();
  sub_1C1AC53E4();
  v22 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C1B98E60;
  v24 = sub_1C1B945A8();
  v26 = v25;
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = sub_1C1AA5E7C();
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  sub_1C1B94BA8(v21, &dword_1C1AA2000, v22, "[PC] Context (%@) is being initialized", 38, 2, v23);

  sub_1C1B343B4();

  (*(v18 + 8))(a1, v17);
  swift_unknownObjectRelease();
  return v20;
}

id *sub_1C1B35970@<X0>(id *a1@<X0>, id **a2@<X8>)
{
  v2 = *a1;
  v3 = [*a1 identifier];
  v4 = sub_1C1B94D88();
  v27 = v5;
  v28 = v4;

  v26 = [v2 placement];
  v6 = [v2 language];
  v7 = sub_1C1B94D88();
  v9 = v8;

  v10 = [v2 locale];
  v11 = sub_1C1B94D88();
  v13 = v12;

  v14 = [v2 searchTerms];
  v15 = sub_1C1B94EC8();

  v16 = [v2 keywords];
  v17 = sub_1C1B94EC8();

  v18 = [v2 categories];
  v19 = sub_1C1B94EC8();

  v20 = type metadata accessor for ContentDepiction();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR___APPCContentDepiction_identifier];
  *v22 = v28;
  *(v22 + 1) = v27;
  *&v21[OBJC_IVAR___APPCContentDepiction_adjacentPosition] = 151;
  *&v21[OBJC_IVAR___APPCContentDepiction_placement] = v26;
  v23 = &v21[OBJC_IVAR___APPCContentDepiction_language];
  *v23 = v7;
  v23[1] = v9;
  v24 = &v21[OBJC_IVAR___APPCContentDepiction_locale];
  *v24 = v11;
  v24[1] = v13;
  *&v21[OBJC_IVAR___APPCContentDepiction_searchTerms] = v15;
  *&v21[OBJC_IVAR___APPCContentDepiction_keywords] = v17;
  *&v21[OBJC_IVAR___APPCContentDepiction_categories] = v19;
  v30.receiver = v21;
  v30.super_class = v20;
  result = objc_msgSendSuper2(&v30, sel_init);
  *a2 = result;
  return result;
}

id BaseContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BaseContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseContext(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1B35D70@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 240))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_1C1B35E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *&v7[OBJC_IVAR___APPCBaseContext_adjacentInternal] = MEMORY[0x1E69E7CC0];
  v15 = &v7[OBJC_IVAR___APPCBaseContext_requestedAd];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = OBJC_IVAR___APPCBaseContext_identifier;
  v17 = sub_1C1B945F8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v7[v16], a1, v17);
  v19 = &v7[OBJC_IVAR___APPCBaseContext_maxSize];
  *v19 = a6;
  v19[1] = a7;
  swift_beginAccess();
  *v15 = a2;
  *(v15 + 1) = a3;
  *&v7[OBJC_IVAR___APPCBaseContext_current] = a4;
  *&v7[OBJC_IVAR___APPCBaseContext_next] = MEMORY[0x1E69E7CC0];
  *&v7[OBJC_IVAR___APPCBaseContext_adjacent] = a5;
  v28.receiver = v7;
  v28.super_class = type metadata accessor for BaseContext(0);
  swift_unknownObjectRetain();
  v20 = objc_msgSendSuper2(&v28, sel_init);
  v21 = sub_1C1B95118();
  sub_1C1AC53E4();
  v22 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C1B98E60;
  v24 = sub_1C1B945A8();
  v26 = v25;
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = sub_1C1AA5E7C();
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  sub_1C1B94BA8(v21, &dword_1C1AA2000, v22, "[PC] Context (%@) is being initialized", 38, 2, v23);

  sub_1C1B343B4();

  (*(v18 + 8))(a1, v17);
  return v20;
}

unint64_t sub_1C1B36078()
{
  result = qword_1EDE6B298;
  if (!qword_1EDE6B298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B298);
  }

  return result;
}

uint64_t sub_1C1B360CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1B36114(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF07B50, &unk_1C1B98F80);
    sub_1C1B360CC(a2, type metadata accessor for ContentDepiction, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1B362F8()
{
  result = qword_1EBF090D0;
  if (!qword_1EBF090D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF090D0);
  }

  return result;
}

unint64_t sub_1C1B36350()
{
  result = qword_1EDE6B288;
  if (!qword_1EDE6B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B288);
  }

  return result;
}

unint64_t sub_1C1B363A8()
{
  result = qword_1EDE6B290;
  if (!qword_1EDE6B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B290);
  }

  return result;
}

unint64_t sub_1C1B363FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1B955F8();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

char *NewsSupplementalContext.__allocating_init(_:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) init];
  v4 = [a1 supplementalContext];
  if (!v4)
  {

    return v3;
  }

  v5 = v4;
  sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
  v6 = sub_1C1B94CB8();

  if (!*(v6 + 16))
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_1C1AA7C14(0x6576697461657263, 0xEC00000065707954);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  swift_unknownObjectRetain();

  if (swift_dynamicCast())
  {
    v8 = &v3[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_creativeType];
    swift_beginAccess();
    *v8 = v12;
    *(v8 + 1) = v13;
LABEL_7:
  }

  if (!*(v6 + 16))
  {
    goto LABEL_12;
  }

  sub_1C1AA7C14(0x6E656D6563616C70, 0xE900000000000074);
  if ((v9 & 1) == 0)
  {
    goto LABEL_12;
  }

  swift_unknownObjectRetain();

  if (swift_dynamicCast())
  {
    v10 = &v3[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement];
    swift_beginAccess();
    *v10 = v12;
    *(v10 + 1) = v13;
LABEL_13:
  }

  return v3;
}

BOOL sub_1C1B366AC(uint64_t a1)
{
  sub_1C1B36814(a1, v6);
  if (v7)
  {
    type metadata accessor for ContextKey();
    if (swift_dynamicCast())
    {
      v2 = *(v1 + OBJC_IVAR____TtC15PromotedContent10ContextKey_key);
      v3 = *&v5[OBJC_IVAR____TtC15PromotedContent10ContextKey_key];

      return v2 == v3;
    }
  }

  else
  {
    sub_1C1AF4F4C(v6);
  }

  return 0;
}

id sub_1C1B367E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextKey();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1B36814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF08850, &qword_1C1B9CC70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Context.registerHandlerForAllMetrics(closure:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C1B945F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDE6BC60 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(&qword_1EDE6CE68, v16);
  sub_1C1AAABE0(v16, v16[3]);
  v9 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  v10 = sub_1C1B945A8();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  sub_1C1B49FBC(v10, v12, sub_1C1B18B2C, v13);

  return sub_1C1AA86F8(v16);
}

Swift::Void __swiftcall Context.removeHandler()()
{
  v1 = sub_1C1B945F8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDE6BC60 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(&qword_1EDE6CE68, v10);
  sub_1C1AAABE0(v10, v10[3]);
  v5 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  v6 = sub_1C1B945A8();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  sub_1C1B4A148(v6, v8);

  sub_1C1AA86F8(v10);
}

uint64_t PlacementType.stringValue.getter(uint64_t a1)
{
  result = 0x72656E6E6162;
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x6F69647561;
      }

      else
      {
        return 0x6F65646976;
      }
    }

    else if (a1)
    {
      if (a1 == 1)
      {
        return 0x6974737265746E69;
      }

LABEL_19:
      result = sub_1C1B958C8();
      __break(1u);
    }
  }

  else
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return 7368801;
        case 7:
          return 0x73726F736E6F7073;
        case 8:
          return 0x686372616573;
      }

      goto LABEL_19;
    }

    if (a1 == 4)
    {
      return 0x65766974616ELL;
    }
  }

  return result;
}

uint64_t PlacementType.isSuitableReplacement(for:)(uint64_t a1, uint64_t a2)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        return a1 == 2;
      }

      else
      {
        return a1 == 3;
      }
    }

    if (a2)
    {
      if (a2 == 1)
      {
        return a1 == 1;
      }

LABEL_24:
      result = sub_1C1B958C8();
      __break(1u);
      return result;
    }
  }

  else
  {
    if (a2 > 5)
    {
      switch(a2)
      {
        case 6:
          return a1 == 6;
        case 7:
          return a1 == 7;
        case 8:
          return 0;
      }

      goto LABEL_24;
    }

    if (a2 == 4)
    {
      return a1 == 4;
    }
  }

  return !a1 || a1 == 5;
}

uint64_t static PlacementType.type(fromString:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x72656E6E6162 && a2 == 0xE600000000000000;
  if (v3 || (sub_1C1B95888() & 1) != 0 || a1 == 7958113 && a2 == 0xE300000000000000 || (sub_1C1B95888() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x6974737265746E69 && a2 == 0xEC0000006C616974 || (sub_1C1B95888() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x6F69647561 && a2 == 0xE500000000000000 || (sub_1C1B95888() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x6F65646976 && a2 == 0xE500000000000000 || (sub_1C1B95888() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x65766974616ELL && a2 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 7368801 && a2 == 0xE300000000000000 || (sub_1C1B95888() & 1) != 0)
  {
    return 6;
  }

  if (a1 == 0x73726F736E6F7073 && a2 == 0xEB00000000706968)
  {
    return 7;
  }

  if (sub_1C1B95888())
  {
    return 7;
  }

  return 0;
}

uint64_t PlacementType.description.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return 7368801;
        case 7:
          return 0x73726F736E6F7073;
        case 8:
          return 0x686372616573;
      }

      goto LABEL_19;
    }

    if (a1 == 4)
    {
      return 0x65766974616ELL;
    }

    return 0x72656E6E6162;
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6974737265746E69;
      }

LABEL_19:
      result = sub_1C1B958C8();
      __break(1u);
      return result;
    }

    return 0x72656E6E6162;
  }

  if (a1 == 2)
  {
    return 0x6F69647561;
  }

  else
  {
    return 0x6F65646976;
  }
}

uint64_t PlacementType.desiredPlacementType(count:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >= 9)
  {
    result = sub_1C1B958C8();
    __break(1u);
  }

  else
  {
    v3 = byte_1C1BA023C[a2];
    *a3 = result;
    *(a3 + 8) = v3;
  }

  return result;
}

unint64_t sub_1C1B3730C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1B373F8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1C1B373F8(unint64_t result)
{
  if (result > 8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1B3740C()
{
  result = qword_1EDE6C2C0;
  if (!qword_1EDE6C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C2C0);
  }

  return result;
}

unint64_t sub_1C1B37460()
{
  result = qword_1EDE6C2B8;
  if (!qword_1EDE6C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C2B8);
  }

  return result;
}

void *OutstreamVideoTapAction.adamIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier);
  v2 = v1;
  return v1;
}

unint64_t sub_1C1B37518@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C1B38790(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1C1B37548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1B38790(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B37570(uint64_t a1)
{
  v2 = sub_1C1B38408();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B375AC(uint64_t a1)
{
  v2 = sub_1C1B38408();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id OutstreamVideoTapAction.__allocating_init(actionType:confirmedClickInterval:)(double a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_url;
  v5 = sub_1C1B944A8();
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  v3[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_opensInstalledApp] = 2;
  *&v3[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier] = 0;
  *&v3[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_iTunesMetadata] = 0;
  *&v3[OBJC_IVAR___APPCTapAction_actionType] = 4;
  *&v3[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a1;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v7, sel_init);
}

id OutstreamVideoTapAction.init(actionType:confirmedClickInterval:)(double a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_url;
  v4 = sub_1C1B944A8();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v1[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_opensInstalledApp] = 2;
  *&v1[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier] = 0;
  *&v1[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_iTunesMetadata] = 0;
  *&v1[OBJC_IVAR___APPCTapAction_actionType] = 4;
  *&v1[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v6, sel_init);
}

id OutstreamVideoTapAction.__allocating_init(url:opensInstalledApp:confirmedClickInterval:)(uint64_t a1, uint64_t a2, double a3)
{
  v5 = a2;
  v7 = objc_allocWithZone(v3);
  return OutstreamVideoTapAction.init(url:opensInstalledApp:confirmedClickInterval:)(a1, v5, a3);
}

id OutstreamVideoTapAction.init(url:opensInstalledApp:confirmedClickInterval:)(uint64_t a1, char a2, double a3)
{
  v7 = OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_url;
  v8 = sub_1C1B944A8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a1, v8);
  (*(v9 + 56))(&v3[v7], 0, 1, v8);
  v3[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_opensInstalledApp] = a2;
  *&v3[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier] = 0;
  *&v3[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_iTunesMetadata] = 0;
  *&v3[OBJC_IVAR___APPCTapAction_actionType] = 6;
  *&v3[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a3;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for TapAction();
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v9 + 8))(a1, v8);
  return v10;
}

id OutstreamVideoTapAction.__allocating_init(adamIdentifier:iTunesMetadata:confirmedClickInterval:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier] = a1;
  *&v7[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_iTunesMetadata] = a2;
  v8 = OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_url;
  v9 = sub_1C1B944A8();
  (*(*(v9 - 8) + 56))(&v7[v8], 1, 1, v9);
  v7[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_opensInstalledApp] = 2;
  *&v7[OBJC_IVAR___APPCTapAction_actionType] = 6;
  *&v7[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a3;
  v11.receiver = v7;
  v11.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v11, sel_init);
}

id OutstreamVideoTapAction.init(adamIdentifier:iTunesMetadata:confirmedClickInterval:)(uint64_t a1, uint64_t a2, double a3)
{
  *&v3[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier] = a1;
  *&v3[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_iTunesMetadata] = a2;
  v5 = OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_url;
  v6 = sub_1C1B944A8();
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 1, v6);
  v3[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_opensInstalledApp] = 2;
  *&v3[OBJC_IVAR___APPCTapAction_actionType] = 6;
  *&v3[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v8, sel_init);
}

void *sub_1C1B37C70(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1C1AC1F08(&qword_1EBF09108, &qword_1C1BA03F8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B38408();
  sub_1C1B95A08();
  if (v1)
  {
    v11 = v18;
    sub_1C1AA86F8(a1);
    type metadata accessor for OutstreamVideoTapAction(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v7;
    sub_1C1B944A8();
    LOBYTE(v20[0]) = 0;
    sub_1C1AEF214(&unk_1EDE6C3A0, MEMORY[0x1E6968FD0]);
    sub_1C1B95678();
    v13 = v18;
    sub_1C1AEF258(v5, v18 + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_url);
    LOBYTE(v20[0]) = 1;
    *(v13 + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_opensInstalledApp) = sub_1C1B95648();
    LOBYTE(v20[0]) = 2;
    v14 = sub_1C1B95658();
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    }

    *(v13 + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier) = v16;
    sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
    LOBYTE(v19[0]) = 3;
    sub_1C1AD0C9C(&unk_1EDE6BBF0, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1C1B95678();
    *(v13 + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_iTunesMetadata) = v20[0];
    sub_1C1B95628();
    sub_1C1AAD2FC(v20, v19);
    v11 = TapAction.init(from:)(v19);
    sub_1C1AA86F8(v20);
    (*(v10 + 8))(v9, v6);
    sub_1C1AA86F8(a1);
  }

  return v11;
}

uint64_t sub_1C1B3811C(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF090E0, &qword_1C1BA0248);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B38408();
  sub_1C1B95A18();
  LOBYTE(v10[0]) = 0;
  sub_1C1B944A8();
  sub_1C1AEF214(&unk_1EDE6C3B0, MEMORY[0x1E6968FB8]);
  sub_1C1B95788();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v10[0]) = 1;
  sub_1C1B95758();
  if (*(v3 + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier))
  {
    [*(v3 + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier) doubleValue];
  }

  LOBYTE(v10[0]) = 2;
  sub_1C1B95768();
  v10[0] = *(v3 + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_iTunesMetadata);
  v11 = 3;
  sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
  sub_1C1AD0C9C(&qword_1EDE6BC00, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1C1B95788();
  sub_1C1B95738();
  sub_1C1B3BBE0(v10);
  sub_1C1AA86F8(v10);
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1C1B38408()
{
  result = qword_1EBF090E8;
  if (!qword_1EBF090E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF090E8);
  }

  return result;
}

uint64_t sub_1C1B3845C()
{
  sub_1C1AC54A0(v0 + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_url);
}

id OutstreamVideoTapAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OutstreamVideoTapAction(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for OutstreamVideoTapAction(uint64_t a1)
{
  result = qword_1EDE6AD20;
  if (!qword_1EDE6AD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1B38594(uint64_t a1)
{
  sub_1C1AEF0A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C1B3868C()
{
  result = qword_1EBF090F0;
  if (!qword_1EBF090F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF090F0);
  }

  return result;
}

unint64_t sub_1C1B386E4()
{
  result = qword_1EBF090F8;
  if (!qword_1EBF090F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF090F8);
  }

  return result;
}

unint64_t sub_1C1B3873C()
{
  result = qword_1EBF09100;
  if (!qword_1EBF09100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09100);
  }

  return result;
}

unint64_t sub_1C1B38790(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1B955F8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t RelevantIdentifierType.stringValue.getter(uint64_t a1)
{
  if (a1 > 15002)
  {
    switch(a1)
    {
      case 15003:
        return 0x6E676961706D6163;
      case 15004:
        return 0x6576697461657263;
      case 15005:
        return 0x64496D616461;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        return 0x6E776F6E6B6E75;
      case 15001:
        return 0x6441657571696E75;
      case 15002:
        return 1701734764;
    }
  }

  result = sub_1C1B958C8();
  __break(1u);
  return result;
}

uint64_t sub_1C1B38900@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1B3A42C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t PolicyData.creativeIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent10PolicyData_creativeIdentifier);

  return v1;
}

id PolicyData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C1B38AC4()
{
  if (*v0)
  {
    return 0x61567963696C6F70;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1C1B38B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001C1BAAC10 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x61567963696C6F70 && a2 == 0xEC0000007365756CLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1C1B95888();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1C1B38BF8(uint64_t a1)
{
  v2 = sub_1C1B3A470();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B38C34(uint64_t a1)
{
  v2 = sub_1C1B3A470();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1B38CD8(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09120, &qword_1C1BA0400);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B3A470();
  sub_1C1B95A18();
  v12 = 0;
  sub_1C1B957A8();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC15PromotedContent10PolicyData_policyValues);
    v10[15] = 1;
    sub_1C1AC1F08(&qword_1EBF09130, &qword_1C1BA0408);
    sub_1C1B3A4C4(&qword_1EBF09138, MEMORY[0x1E69E6160], MEMORY[0x1E69E6538], MEMORY[0x1E69E5E38]);
    sub_1C1B95808();
  }

  return (*(v6 + 8))(v8, v5);
}

char *PolicyData.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09140, &qword_1C1BA0410);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B3A470();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for PolicyData();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v17) = 0;
    v9 = sub_1C1B95698();
    v11 = (v1 + OBJC_IVAR____TtC15PromotedContent10PolicyData_creativeIdentifier);
    *v11 = v9;
    v11[1] = v12;
    sub_1C1AC1F08(&qword_1EBF09130, &qword_1C1BA0408);
    v16 = 1;
    sub_1C1B3A4C4(&qword_1EBF09148, MEMORY[0x1E69E6190], MEMORY[0x1E69E6560], MEMORY[0x1E69E5E58]);
    sub_1C1B956F8();
    *(v1 + OBJC_IVAR____TtC15PromotedContent10PolicyData_policyValues) = v17;
    v13 = type metadata accessor for PolicyData();
    v15.receiver = v1;
    v15.super_class = v13;
    v3 = objc_msgSendSuper2(&v15, sel_init);
    (*(v6 + 8))(v8, v5);
    sub_1C1AA86F8(a1);
  }

  return v3;
}

id sub_1C1B391FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC15PromotedContent16FrequencyCapData_relevantIdentifier] = a1;
  if (([objc_opt_self() isAppleInternalInstall] & 1) != 0 || (v6 = objc_msgSend(objc_opt_self(), sel_processInfo), v7 = objc_msgSend(v6, sel_isRunningTests), v6, v7))
  {
    if (qword_1EDE6BB80 != -1)
    {
      swift_once();
    }

    if (!(byte_1EDE6CE58 & 1 | (qword_1EDE6CE50 < 1)))
    {
      a2 = qword_1EDE6CE50;
    }

    if (qword_1EDE6BB78 != -1)
    {
      swift_once();
    }

    if (!(byte_1EDE6CDE0 & 1 | (qword_1EDE6CDD8 < 1)))
    {
      a3 = qword_1EDE6CDD8;
    }
  }

  *&v3[OBJC_IVAR____TtC15PromotedContent16FrequencyCapData_frequencyValue] = a2;
  *&v3[OBJC_IVAR____TtC15PromotedContent16FrequencyCapData_frequencyDuration] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for FrequencyCapData();
  return objc_msgSendSuper2(&v9, sel_init);
}

unint64_t sub_1C1B393D4()
{
  v1 = 0x636E657571657266;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1C1B39444@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C1B3AC58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C1B3946C(uint64_t a1)
{
  v2 = sub_1C1B3A558();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B394A8(uint64_t a1)
{
  v2 = sub_1C1B3A558();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1B394FC(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09168, &qword_1C1BA0418);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B3A558();
  sub_1C1B95A18();
  v11 = *(v3 + OBJC_IVAR____TtC15PromotedContent16FrequencyCapData_relevantIdentifier);
  v10[7] = 0;
  sub_1C1B3A5AC();
  sub_1C1B95808();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[6] = 1;
  sub_1C1B957F8();
  v10[5] = 2;
  sub_1C1B957F8();
  return (*(v6 + 8))(v8, v5);
}

void *FrequencyCapData.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09170, &qword_1C1BA0420);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  v9 = sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B3A558();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for FrequencyCapData();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    sub_1C1B3A600();
    sub_1C1B956F8();
    *&v3[OBJC_IVAR____TtC15PromotedContent16FrequencyCapData_relevantIdentifier] = v15;
    LOBYTE(v15) = 1;
    *&v3[OBJC_IVAR____TtC15PromotedContent16FrequencyCapData_frequencyValue] = sub_1C1B956E8();
    LOBYTE(v15) = 2;
    *&v3[OBJC_IVAR____TtC15PromotedContent16FrequencyCapData_frequencyDuration] = sub_1C1B956E8();
    v11 = type metadata accessor for FrequencyCapData();
    v13.receiver = v3;
    v13.super_class = v11;
    v9 = objc_msgSendSuper2(&v13, sel_init);
    (*(v6 + 8))(v8, v5);
    sub_1C1AA86F8(a1);
  }

  return v9;
}

uint64_t AdPolicyData.rawAdType.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCAdPolicyData_rawAdType);

  return v1;
}

uint64_t AdPolicyData.rawAdFormatType.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCAdPolicyData_rawAdFormatType);

  return v1;
}

void *AdPolicyData.frequencyCapData.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCAdPolicyData_frequencyCapData);
  v2 = v1;
  return v1;
}

void *AdPolicyData.policyData.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCAdPolicyData_policyData);
  v2 = v1;
  return v1;
}

unint64_t sub_1C1B39AE8()
{
  v1 = 0x7079546441776172;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x61447963696C6F70;
  }

  if (*v0)
  {
    v1 = 0x726F466441776172;
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

uint64_t sub_1C1B39B7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C1B3AD84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C1B39BA4(uint64_t a1)
{
  v2 = sub_1C1B3A678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B39BE0(uint64_t a1)
{
  v2 = sub_1C1B3A678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1C1B39C34(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C1B39CE0(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09198, &qword_1C1BA0428);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B3A678();
  sub_1C1B95A18();
  LOBYTE(v11) = 0;
  sub_1C1B95748();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_1C1B95748();
    v11 = *(v3 + OBJC_IVAR___APPCAdPolicyData_frequencyCapData);
    HIBYTE(v10) = 2;
    type metadata accessor for FrequencyCapData();
    sub_1C1B3A6CC(&qword_1EDE6B050, type metadata accessor for FrequencyCapData, &protocol conformance descriptor for FrequencyCapData);
    sub_1C1B95788();
    v11 = *(v3 + OBJC_IVAR___APPCAdPolicyData_policyData);
    HIBYTE(v10) = 3;
    type metadata accessor for PolicyData();
    sub_1C1B3A6CC(&qword_1EDE6B2A8, type metadata accessor for PolicyData, &protocol conformance descriptor for PolicyData);
    sub_1C1B95788();
  }

  return (*(v6 + 8))(v8, v5);
}

char *AdPolicyData.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF091A0, &qword_1C1BA0430);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B3A678();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for AdPolicyData();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v20) = 0;
    v9 = sub_1C1B95638();
    v11 = (v1 + OBJC_IVAR___APPCAdPolicyData_rawAdType);
    *v11 = v9;
    v11[1] = v12;
    LOBYTE(v20) = 1;
    v13 = sub_1C1B95638();
    v14 = (v1 + OBJC_IVAR___APPCAdPolicyData_rawAdFormatType);
    *v14 = v13;
    v14[1] = v15;
    type metadata accessor for FrequencyCapData();
    v19 = 2;
    sub_1C1B3A6CC(&qword_1EDE6B048, type metadata accessor for FrequencyCapData, &protocol conformance descriptor for FrequencyCapData);
    sub_1C1B95678();
    *(v1 + OBJC_IVAR___APPCAdPolicyData_frequencyCapData) = v20;
    type metadata accessor for PolicyData();
    v19 = 3;
    sub_1C1B3A6CC(&qword_1EDE6B2A0, type metadata accessor for PolicyData, &protocol conformance descriptor for PolicyData);
    sub_1C1B95678();
    *(v1 + OBJC_IVAR___APPCAdPolicyData_policyData) = v20;
    v16 = type metadata accessor for AdPolicyData();
    v18.receiver = v1;
    v18.super_class = v16;
    v3 = objc_msgSendSuper2(&v18, sel_init);
    (*(v6 + 8))(v8, v5);
    sub_1C1AA86F8(a1);
  }

  return v3;
}

uint64_t sub_1C1B3A3A8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = objc_allocWithZone(a2());
  result = a3(a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C1B3A42C(uint64_t result)
{
  if ((result - 15001) >= 5 && result != 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1B3A470()
{
  result = qword_1EBF09128;
  if (!qword_1EBF09128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09128);
  }

  return result;
}

uint64_t sub_1C1B3A4C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF09130, &qword_1C1BA0408);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1B3A558()
{
  result = qword_1EDE6B068;
  if (!qword_1EDE6B068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B068);
  }

  return result;
}

unint64_t sub_1C1B3A5AC()
{
  result = qword_1EDE6AD58;
  if (!qword_1EDE6AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6AD58);
  }

  return result;
}

unint64_t sub_1C1B3A600()
{
  result = qword_1EDE6AD48;
  if (!qword_1EDE6AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6AD48);
  }

  return result;
}

unint64_t sub_1C1B3A678()
{
  result = qword_1EDE6B240;
  if (!qword_1EDE6B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B240);
  }

  return result;
}

uint64_t sub_1C1B3A6CC(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1B3A714()
{
  result = qword_1EBF091A8;
  if (!qword_1EBF091A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF091A8);
  }

  return result;
}

unint64_t sub_1C1B3A944()
{
  result = qword_1EBF091B0;
  if (!qword_1EBF091B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF091B0);
  }

  return result;
}

unint64_t sub_1C1B3A99C()
{
  result = qword_1EBF091B8;
  if (!qword_1EBF091B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF091B8);
  }

  return result;
}

unint64_t sub_1C1B3A9F4()
{
  result = qword_1EBF091C0;
  if (!qword_1EBF091C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF091C0);
  }

  return result;
}

unint64_t sub_1C1B3AA4C()
{
  result = qword_1EDE6B230;
  if (!qword_1EDE6B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B230);
  }

  return result;
}

unint64_t sub_1C1B3AAA4()
{
  result = qword_1EDE6B238;
  if (!qword_1EDE6B238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B238);
  }

  return result;
}

unint64_t sub_1C1B3AAFC()
{
  result = qword_1EDE6B058;
  if (!qword_1EDE6B058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B058);
  }

  return result;
}

unint64_t sub_1C1B3AB54()
{
  result = qword_1EDE6B060;
  if (!qword_1EDE6B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B060);
  }

  return result;
}

unint64_t sub_1C1B3ABAC()
{
  result = qword_1EBF091C8;
  if (!qword_1EBF091C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF091C8);
  }

  return result;
}

unint64_t sub_1C1B3AC04()
{
  result = qword_1EBF091D0;
  if (!qword_1EBF091D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF091D0);
  }

  return result;
}

uint64_t sub_1C1B3AC58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000001C1BAAC70 == a2;
  if (v4 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xEE0065756C615679 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C1BAACA0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C1B95888();

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

uint64_t sub_1C1B3AD84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079546441776172 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F466441776172 && a2 == 0xEF6570795474616DLL || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C1BAACF0 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61447963696C6F70 && a2 == 0xEA00000000006174)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C1B95888();

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

unint64_t sub_1C1B3AF08()
{
  result = qword_1EDE6AD50;
  if (!qword_1EDE6AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6AD50);
  }

  return result;
}

uint64_t sub_1C1B3AF64(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1C6907490](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1C1B953A8();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1C1B3B0A0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void *Context.firstPromotableContent(withIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___APPCContext_inventory;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
LABEL_23:
    v7 = sub_1C1B953A8();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1C6907490](v8, v6);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v9 = *(v6 + 8 * v8 + 32);
        swift_unknownObjectRetain();
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_17;
        }
      }

      v11 = [v9 identifier];
      v12 = sub_1C1B94D88();
      v14 = v13;

      if (v12 == a1 && v14 == a2)
      {

LABEL_20:

        return v9;
      }

      v16 = sub_1C1B95888();

      if (v16)
      {
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
      ++v8;
    }

    while (v10 != v7);
  }

  return 0;
}

uint64_t Context.sponsorshipHeadline(for:)(void *a1)
{
  v3 = sub_1C1B94628();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v49 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v49 - v11;
  if (![a1 bestRepresentation])
  {
    return 0;
  }

  type metadata accessor for ClientLayoutRepresentation(0);
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v14 = v13;
  v15 = *(v13 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_headline + 8);
  v54 = v4;
  if (v15)
  {
    v16 = *(v13 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_headline);
    v55 = v15;
  }

  else
  {
    v16 = 0;
    v55 = 0xE000000000000000;
  }

  v17 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v18 = *(v1 + v17);
  if (!v18 || (v19 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataLanguages, swift_beginAccess(), (v20 = *(v18 + v19)) == 0) || (v21 = *(v14 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_localizedHeadlines)) == 0)
  {

    swift_unknownObjectRelease();
    return v16;
  }

  v53 = v20;

  sub_1C1B94618();
  v22 = sub_1C1B94608();
  if (!*(v21 + 16))
  {
    v37 = v21;

    v28 = v54;
LABEL_19:
    v52 = *(v28 + 8);
    v52(v12, v3);
    goto LABEL_20;
  }

  v24 = sub_1C1AA7C14(v22, v23);
  v26 = v25;

  v27 = v21;
  v28 = v54;
  if ((v26 & 1) == 0)
  {
    v37 = v27;
    goto LABEL_19;
  }

  v50 = v27;
  v29 = (*(v27 + 56) + 16 * v24);
  v30 = v29[1];
  v49 = *v29;
  v31 = *(v54 + 8);
  v51 = v30;

  v31(v12, v3);
  sub_1C1B94618();
  v32 = sub_1C1B94608();
  v34 = v33;
  v52 = v31;
  v35 = (v31)(v10, v3);
  v56 = v32;
  v57 = v34;
  MEMORY[0x1EEE9AC00](v35);
  *(&v49 - 2) = &v56;
  LOBYTE(v32) = sub_1C1B3B0A0(sub_1C1B3B8A0, (&v49 - 4), v53);

  if (v32)
  {
    swift_unknownObjectRelease();

    return v49;
  }

  v37 = v50;

LABEL_20:
  sub_1C1B94618();
  v38 = sub_1C1B94608();
  v40 = v37;
  if (!*(v37 + 16))
  {

    goto LABEL_25;
  }

  v54 = 0;
  v41 = sub_1C1AA7C14(v38, v39);
  v43 = v42;

  if ((v43 & 1) == 0)
  {
LABEL_25:
    v52(v7, v3);
    swift_unknownObjectRelease();

    return v16;
  }

  v51 = *(*(v40 + 56) + 16 * v41);

  v44 = v52;
  v52(v7, v3);

  sub_1C1B94618();
  v45 = sub_1C1B94608();
  v47 = v46;
  v48 = v44(v10, v3);
  v56 = v45;
  v57 = v47;
  MEMORY[0x1EEE9AC00](v48);
  *(&v49 - 2) = &v56;
  LOBYTE(v45) = sub_1C1B3B0A0(sub_1C1B3B82C, (&v49 - 4), v53);

  swift_unknownObjectRelease();

  if (v45)
  {
    return v51;
  }

  return v16;
}

uint64_t sub_1C1B3B848(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C1B95888() & 1;
  }
}

id TapAction.init(actionType:confirmedClickInterval:)(uint64_t a1, double a2)
{
  *&v2[OBJC_IVAR___APPCTapAction_actionType] = a1;
  *&v2[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v4, sel_init);
}

void *TapAction.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF091E8, &qword_1C1BA09D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  v9 = sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B3BB38();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for TapAction();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = 0;
    sub_1C1B3BB8C();
    sub_1C1B956F8();
    *&v3[OBJC_IVAR___APPCTapAction_actionType] = v16;
    LOBYTE(v16) = 1;
    sub_1C1B956B8();
    *&v3[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v11;
    v12 = type metadata accessor for TapAction();
    v14.receiver = v3;
    v14.super_class = v12;
    v9 = objc_msgSendSuper2(&v14, sel_init);
    (*(v6 + 8))(v8, v5);
    sub_1C1AA86F8(a1);
  }

  return v9;
}

unint64_t sub_1C1B3BB38()
{
  result = qword_1EDE6A7B8;
  if (!qword_1EDE6A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A7B8);
  }

  return result;
}

unint64_t sub_1C1B3BB8C()
{
  result = qword_1EDE6B170;
  if (!qword_1EDE6B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B170);
  }

  return result;
}

uint64_t sub_1C1B3BBE0(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF091F0, &qword_1C1BA09D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B3BB38();
  sub_1C1B95A18();
  v11 = *(v3 + OBJC_IVAR___APPCTapAction_actionType);
  v10[7] = 0;
  sub_1C1B3BD88();
  sub_1C1B95808();
  if (!v2)
  {
    v10[6] = 1;
    sub_1C1B957C8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1C1B3BD88()
{
  result = qword_1EDE6B180[0];
  if (!qword_1EDE6B180[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE6B180);
  }

  return result;
}

id TapAction.__allocating_init(actionType:confirmedClickInterval:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___APPCTapAction_actionType] = a1;
  *&v5[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id TapAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C1B3BF74()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x79546E6F69746361;
  }
}

uint64_t sub_1C1B3BFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79546E6F69746361 && a2 == 0xEA00000000006570;
  if (v6 || (sub_1C1B95888() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001C1BAAD50 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C1B95888();

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

uint64_t sub_1C1B3C0A4(uint64_t a1)
{
  v2 = sub_1C1B3BB38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B3C0E0(uint64_t a1)
{
  v2 = sub_1C1B3BB38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id TapAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1B3C194@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C1B3C33C()
{
  result = qword_1EBF091F8;
  if (!qword_1EBF091F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF091F8);
  }

  return result;
}

unint64_t sub_1C1B3C394()
{
  result = qword_1EDE6A7A8;
  if (!qword_1EDE6A7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A7A8);
  }

  return result;
}

unint64_t sub_1C1B3C3EC()
{
  result = qword_1EDE6A7B0;
  if (!qword_1EDE6A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A7B0);
  }

  return result;
}

uint64_t FetchableAdContentSubState.nextSubState(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *v2;
  v7 = *(v2 + 8);
  if (!*(v2 + 8))
  {
    if (*(a1 + 8) > 4u)
    {
      if (v5 == 5 || (v5 == 7 ? (v11 = (v4 | 2) == 2) : (v11 = 0), v11))
      {
        sub_1C1AC5F78(*a1, v5);
        sub_1C1B3CA84(v6, 0);
        v8 = v6;
        v9 = 0;
        goto LABEL_24;
      }

      goto LABEL_34;
    }

    if (v5 == 1)
    {
      sub_1C1AC5F78(v4, 1u);
      sub_1C1B3CA84(v6, 0);
      sub_1C1AC5F78(v4, 1u);
      sub_1C1B3CA84(v6, 0);
      sub_1C1AC730C(v4);
      sub_1C1B3CA98(v6, 0);
      result = sub_1C1AC5FD0(v4, 1u);
      *a2 = v6;
      goto LABEL_39;
    }

    if (v5 != 2)
    {
      goto LABEL_34;
    }

    v24 = *a1;
    MEMORY[0x1EEE9AC00](a1);
    v23[2] = &v24;
    sub_1C1B3CA84(v6, 0);
    sub_1C1AC5F78(v4, 2u);
    sub_1C1B3CA84(v6, 0);
    if (sub_1C1B3AF64(sub_1C1B3D6DC, v23, v6))
    {
      sub_1C1B3CA98(v6, 0);
      result = sub_1C1AC5FD0(v4, 2u);
      *a2 = v6;
    }

    else
    {
      sub_1C1AC1F08(&qword_1EBF08D30, qword_1C1B9E9E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1B9FE60;
      *(inited + 32) = v4;
      v24 = v6;

      sub_1C1AC730C(inited);
      sub_1C1B3CA98(v6, 0);
      result = sub_1C1AC5FD0(v4, 2u);
      *a2 = v24;
    }

LABEL_49:
    v12 = 1;
    goto LABEL_50;
  }

  if (v7 != 1)
  {
    if (v5 != 2)
    {
      if (v5 != 1)
      {
        goto LABEL_34;
      }

      swift_bridgeObjectRetain_n();
      sub_1C1B3CA98(v6, 2u);
      result = sub_1C1AC5FD0(v4, 1u);
      *a2 = v4;
LABEL_39:
      *(a2 + 8) = 0;
      return result;
    }

    sub_1C1AC1F08(&qword_1EBF08D30, qword_1C1B9E9E0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C1B9FE60;
    *(v17 + 32) = v4;
    sub_1C1AC5F78(v4, 2u);

    sub_1C1B3CA98(v6, 2u);
    result = sub_1C1AC5FD0(v4, 2u);
    *a2 = v17;
    goto LABEL_49;
  }

  if (*(a1 + 8) <= 4u)
  {
    if (v5 == 2)
    {
      v24 = *v2;
      sub_1C1AC5F78(v4, 2u);
      LOBYTE(v18) = 1;
      sub_1C1B3CA84(v6, 1u);
      sub_1C1AC5F78(v4, 2u);
      v21 = sub_1C1B3CA84(v6, 1u);
      MEMORY[0x1C6906EA0](v21);
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_47:
        sub_1C1B94F48();
        sub_1C1B3CA98(v6, 1u);
        result = sub_1C1AC5FD0(v4, 2u);
        *a2 = v24;
        *(a2 + 8) = v18;
        return result;
      }

LABEL_53:
      sub_1C1B94F08();
      goto LABEL_47;
    }

    if (v5 != 3)
    {
      goto LABEL_34;
    }

    v24 = *v2;
    sub_1C1AC5F78(v4, 3u);
    sub_1C1B3CA84(v6, 1u);
    sub_1C1AC5F78(v4, 3u);
    sub_1C1B3CA84(v6, 1u);
    sub_1C1B3D1A0(&v24, v4);
    v14 = v13;
    sub_1C1AC5FD0(v4, 3u);
    if (v24 >> 62)
    {
      v15 = sub_1C1B953A8();
      if (v15 >= v14)
      {
LABEL_30:
        sub_1C1AF8758(v14, v15);
        v2 = v24;
        if (v24 >> 62)
        {
          v16 = sub_1C1B953A8();
        }

        else
        {
          v16 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_1C1B3CA98(v6, 1u);
        result = sub_1C1AC5FD0(v4, 3u);
        if (v16)
        {
          goto LABEL_45;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v15 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15 >= v14)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

  if (v5 == 5)
  {
LABEL_8:
    sub_1C1AC5F78(*a1, v5);
    sub_1C1B3CA84(v6, 1u);
    v8 = v6;
    v9 = 1;
LABEL_24:
    sub_1C1B3CA98(v8, v9);
    result = sub_1C1AC5FD0(v4, v5);
LABEL_25:
    *a2 = 0;
    v12 = 2;
LABEL_50:
    *(a2 + 8) = v12;
    return result;
  }

  if (v5 == 6)
  {
    v24 = *v2;
    sub_1C1AC5F78(v4, 6u);
    sub_1C1B3CA84(v6, 1u);
    sub_1C1AC5F78(v4, 6u);
    sub_1C1B3CA84(v6, 1u);
    v18 = sub_1C1B3CEF8(&v24, v4);
    sub_1C1AC5FD0(v4, 6u);
    if (v24 >> 62)
    {
      v19 = sub_1C1B953A8();
      if (v19 >= v18)
      {
LABEL_42:
        sub_1C1AF8758(v18, v19);
        v2 = v24;
        if (!(v24 >> 62))
        {
          v20 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_44;
        }

LABEL_56:
        v20 = sub_1C1B953A8();
LABEL_44:
        sub_1C1B3CA98(v6, 1u);
        result = sub_1C1AC5FD0(v4, 6u);
        if (v20)
        {
LABEL_45:
          *a2 = v2;
          *(a2 + 8) = 1;
          return result;
        }

LABEL_33:

        goto LABEL_25;
      }
    }

    else
    {
      v19 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19 >= v18)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

  if (v5 == 7 && (v4 | 2) == 2)
  {
    goto LABEL_8;
  }

LABEL_34:
  sub_1C1AC5F78(*a1, v5);
  sub_1C1B3CA84(v6, v7);
  sub_1C1B3CA98(v6, v7);
  sub_1C1AC5FD0(v4, v5);
  *a2 = v6;
  *(a2 + 8) = v7;

  return sub_1C1B3CA84(v6, v7);
}

uint64_t sub_1C1B3CA84(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return v2;
}

uint64_t sub_1C1B3CA98(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1C1B3CAC8(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1C1B945F8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18[-v9];
  v11 = *a1;
  v12 = *a2;
  v13 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  swift_beginAccess();
  v14 = *(v5 + 16);
  v14(v10, v11 + v13, v4);
  v15 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  swift_beginAccess();
  v14(v8, v12 + v15, v4);
  LOBYTE(v12) = sub_1C1B945C8();
  v16 = *(v5 + 8);
  v16(v8, v4);
  v16(v10, v4);
  return v12 & 1;
}

uint64_t _s15PromotedContent011FetchableAdB8SubStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_1C1B3CA84(*a2, 0);
      sub_1C1B3CA84(v2, 0);
      v6 = sub_1C1B520B8(v2, v4);
      sub_1C1B3CA98(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      sub_1C1B3CA84(*a2, 1u);
      sub_1C1B3CA84(v2, 1u);
      LOBYTE(v6) = sub_1C1B520B8(v2, v4);
      sub_1C1B3CA98(v2, 1u);
      v7 = v4;
      v8 = 1;
LABEL_7:
      sub_1C1B3CA98(v7, v8);
      return v6 & 1;
    }

    goto LABEL_12;
  }

  if (v5 != 2 || v4 != 0)
  {
LABEL_12:
    sub_1C1B3CA84(*a2, *(a2 + 8));
    sub_1C1B3CA84(v2, v3);
    sub_1C1B3CA98(v2, v3);
    sub_1C1B3CA98(v4, v5);
    return 0;
  }

  sub_1C1B3CA98(*a1, 2u);
  sub_1C1B3CA98(0, 2u);
  return 1;
}

unint64_t sub_1C1B3CDA8(unint64_t a1, unint64_t a2)
{
  v12 = a2;
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_1C1B953A8();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1C6907490](v5, a1);
      v6 = v7;
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v13 = v6;
    MEMORY[0x1EEE9AC00](v7);
    v11[2] = &v13;
    v8 = sub_1C1B3AF64(sub_1C1B3D848, v11, v12);

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1C1B3CEF8(unint64_t *a1, unint64_t a2)
{
  v6 = *a1;
  v7 = sub_1C1B3CDA8(*a1, a2);
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_1C1B953A8();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v21 = a1;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_1C1B953A8())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1C6907490](v10, v6);
      v12 = v13;
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v22 = v12;
    MEMORY[0x1EEE9AC00](v13);
    v20[2] = &v22;
    v14 = sub_1C1B3AF64(sub_1C1B3D848, v20, a2);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1C6907490](v2, v6);
    v16 = MEMORY[0x1C6907490](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v17)
    {
      goto LABEL_46;
    }

    if (v10 >= v17)
    {
      goto LABEL_47;
    }

    v15 = *(v6 + 32 + 8 * v2);
    v16 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1C1B91B54(v6);
    v18 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v18) = 0;
  }

  v19 = v6 & 0xFFFFFFFFFFFFFF8;
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v16;

  if ((v6 & 0x8000000000000000) == 0 && !v18)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_1C1B91B54(v6);
  v19 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v19 + 16))
    {
      goto LABEL_44;
    }

    *(v19 + 8 * v10 + 32) = v15;

    *v21 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_1C1B953A8();
}

void sub_1C1B3D1A0(uint64_t *a1, uint64_t a2)
{
  v42 = a2;
  v39 = sub_1C1B945F8();
  v3 = *(v39 - 8);
  v4 = MEMORY[0x1EEE9AC00](v39);
  v41 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v30 - v6;
  v32 = a1;
  v7 = *a1;
  v31 = v7 >> 62;
  if (v7 >> 62)
  {
LABEL_67:
    v34 = v7 & 0xFFFFFFFFFFFFFF8;
    v35 = sub_1C1B953A8();
  }

  else
  {
    v34 = v7 & 0xFFFFFFFFFFFFFF8;
    v35 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  swift_beginAccess();
  v8 = 0;
  v33 = v7 & 0xC000000000000001;
  v36 = (v3 + 8);
  v37 = (v3 + 16);
  v43 = v7;
  while (1)
  {
    if (v35 == v8)
    {
      if (v31)
      {
        goto LABEL_55;
      }

      return;
    }

    if (v33)
    {
      v9 = MEMORY[0x1C6907490](v8, v7);
    }

    else
    {
      if (v8 >= *(v34 + 16))
      {
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
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v9 = *(v7 + 8 * v8 + 32);
    }

    v10 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
    swift_beginAccess();
    v11 = *v37;
    v12 = v39;
    v7 = v40;
    (*v37)(v40, v9 + v10, v39);
    v13 = v41;
    v11(v41, v42 + v38, v12);
    v14 = sub_1C1B945C8();
    v15 = *v36;
    (*v36)(v13, v12);
    v15(v7, v12);

    v3 = (v8 + 1);
    v16 = __OFADD__(v8, 1);
    if (v14)
    {
      break;
    }

    ++v8;
    v7 = v43;
    if (v16)
    {
      goto LABEL_58;
    }
  }

  if (v16)
  {
    __break(1u);
    return;
  }

  v17 = v43;
  v34 = v15;
  v35 = v11;
  while (1)
  {
    if (v17 >> 62)
    {
      if (v3 == sub_1C1B953A8())
      {
        return;
      }
    }

    else if (v3 == *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v19 = v17 & 0xC000000000000001;
    v43 = v17;
    if ((v17 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1C6907490](v3, v17);
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      if (v3 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      v7 = *(v17 + 8 * v3 + 32);
    }

    v20 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
    swift_beginAccess();
    v22 = v39;
    v21 = v40;
    v23 = v35;
    v35(v40, v7 + v20, v39);
    v24 = v41;
    v23(v41, v42 + v38, v22);
    LOBYTE(v20) = sub_1C1B945C8();
    v25 = v34;
    (v34)(v24, v22);
    v25(v21, v22);

    if (v20)
    {
      v17 = v43;
      goto LABEL_20;
    }

    if (v8 == v3)
    {
      v17 = v43;
      v18 = __OFADD__(v8++, 1);
      if (v18)
      {
        goto LABEL_62;
      }

      goto LABEL_20;
    }

    v17 = v43;
    if (v19)
    {
      v26 = MEMORY[0x1C6907490](v8, v43);
      v27 = MEMORY[0x1C6907490](v3, v17);
    }

    else
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_64;
      }

      v28 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= v28)
      {
        goto LABEL_65;
      }

      if (v3 >= v28)
      {
        goto LABEL_66;
      }

      v26 = *(v43 + 32 + 8 * v8);
      v27 = *(v43 + 32 + 8 * v3);
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v17 & 0x8000000000000000) != 0 || (v17 & 0x4000000000000000) != 0)
    {
      v17 = sub_1C1B91B54(v17);
      v7 = (v17 >> 62) & 1;
    }

    else
    {
      v7 = 0;
    }

    v29 = v17 & 0xFFFFFFFFFFFFFF8;
    *((v17 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v27;

    if ((v17 & 0x8000000000000000) == 0 && !v7)
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        break;
      }

      goto LABEL_46;
    }

    v17 = sub_1C1B91B54(v17);
    v29 = v17 & 0xFFFFFFFFFFFFFF8;
    if ((v3 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_46:
    if (v3 >= *(v29 + 16))
    {
      goto LABEL_63;
    }

    *(v29 + 8 * v3 + 32) = v26;

    *v32 = v17;
    v18 = __OFADD__(v8++, 1);
    if (v18)
    {
      goto LABEL_62;
    }

LABEL_20:
    v18 = __OFADD__(v3++, 1);
    if (v18)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_55:
  sub_1C1B953A8();
}

unint64_t sub_1C1B3D6FC(uint64_t a1)
{
  result = sub_1C1B3D724();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C1B3D724()
{
  result = qword_1EDE6B800;
  if (!qword_1EDE6B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B800);
  }

  return result;
}

uint64_t sub_1C1B3D778(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1C1B3D794(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C1B3D7DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C1B3D820(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t LoadFailed.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_1C1B3D878@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

Swift::Void __swiftcall DiagnosticMetricsHelping.loadFailed(reason:)(Swift::String reason)
{
  v2 = sub_1C1B94D78();
  [v1 loadFailedWithReason:v2 code:0];
}

unint64_t sub_1C1B3D8E8()
{
  result = qword_1EBF09200;
  if (!qword_1EBF09200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09200);
  }

  return result;
}

id _s15PromotedContent9TapActionC04makecD04withACSo05APTapD0C_tFZ_0(void *a1)
{
  v2 = [a1 actionType];
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v16 = a1;
        result = sub_1C1AF1608(v16);
        if (!result)
        {
          [v16 confirmedClickInterval];
          v18 = v17;
          v19 = type metadata accessor for TapAction();
          v20 = objc_allocWithZone(v19);
          *&v20[OBJC_IVAR___APPCTapAction_actionType] = 0;
          *&v20[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v18;
          return objc_msgSendSuper2(&v36, sel_init, v33.receiver, v33.super_class, v34.receiver, v34.super_class, v35.receiver, v35.super_class, v20, v19, v37.receiver, v37.super_class, v38.receiver, v38.super_class, v39.receiver, v39.super_class);
        }

        break;
      case 4:
        v28 = a1;
        result = sub_1C1B4098C(v28);
        if (!result)
        {
          [v28 confirmedClickInterval];
          v30 = v29;
          v31 = type metadata accessor for TapAction();
          v32 = objc_allocWithZone(v31);
          *&v32[OBJC_IVAR___APPCTapAction_actionType] = 0;
          *&v32[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v30;
          return objc_msgSendSuper2(&v37, sel_init, v33.receiver, v33.super_class, v34.receiver, v34.super_class, v35.receiver, v35.super_class, v36.receiver, v36.super_class, v32, v31, v38.receiver, v38.super_class, v39.receiver, v39.super_class);
        }

        break;
      case 5:
        v9 = a1;
        result = sub_1C1B5BBB8(v9);
        if (!result)
        {
          [v9 confirmedClickInterval];
          v11 = v10;
          v12 = type metadata accessor for TapAction();
          v13 = objc_allocWithZone(v12);
          *&v13[OBJC_IVAR___APPCTapAction_actionType] = 0;
          *&v13[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v11;
          return objc_msgSendSuper2(&v34, sel_init, v33.receiver, v33.super_class, v13, v12, v35.receiver, v35.super_class, v36.receiver, v36.super_class, v37.receiver, v37.super_class, v38.receiver, v38.super_class, v39.receiver, v39.super_class);
        }

        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    if (!v2)
    {
      v14 = type metadata accessor for TapAction();
      v15 = objc_allocWithZone(v14);
      *&v15[OBJC_IVAR___APPCTapAction_actionType] = 0;
      *&v15[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = 0x3FF0000000000000;
      return objc_msgSendSuper2(&v38, sel_init, v33.receiver, v33.super_class, v34.receiver, v34.super_class, v35.receiver, v35.super_class, v36.receiver, v36.super_class, v37.receiver, v37.super_class, v15, v14, v39.receiver, v39.super_class);
    }

    if (v2 != 1)
    {
      if (v2 == 2)
      {
        v3 = a1;
        result = sub_1C1AC06F0(v3);
        if (!result)
        {
          [v3 confirmedClickInterval];
          v6 = v5;
          v7 = type metadata accessor for TapAction();
          v8 = objc_allocWithZone(v7);
          *&v8[OBJC_IVAR___APPCTapAction_actionType] = 0;
          *&v8[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v6;
          return objc_msgSendSuper2(&v35, sel_init, v33.receiver, v33.super_class, v34.receiver, v34.super_class, v8, v7, v36.receiver, v36.super_class, v37.receiver, v37.super_class, v38.receiver, v38.super_class, v39.receiver, v39.super_class);
        }

        return result;
      }

LABEL_15:
      v21 = type metadata accessor for TapAction();
      v22 = objc_allocWithZone(v21);
      *&v22[OBJC_IVAR___APPCTapAction_actionType] = 0;
      *&v22[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = 0x3FF0000000000000;
      return objc_msgSendSuper2(&v39, sel_init, v33.receiver, v33.super_class, v34.receiver, v34.super_class, v35.receiver, v35.super_class, v36.receiver, v36.super_class, v37.receiver, v37.super_class, v38.receiver, v38.super_class, v22, v21);
    }

    v23 = a1;
    result = sub_1C1B870D4(v23);
    if (!result)
    {
      [v23 confirmedClickInterval];
      v25 = v24;
      v26 = type metadata accessor for TapAction();
      v27 = objc_allocWithZone(v26);
      *&v27[OBJC_IVAR___APPCTapAction_actionType] = 0;
      *&v27[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v25;
      return objc_msgSendSuper2(&v33, sel_init, v27, v26, v34.receiver, v34.super_class, v35.receiver, v35.super_class, v36.receiver, v36.super_class, v37.receiver, v37.super_class, v38.receiver, v38.super_class, v39.receiver, v39.super_class);
    }
  }

  return result;
}

unint64_t sub_1C1B3DC98()
{
  type metadata accessor for PageTrackingStorage();
  v0 = swift_allocObject();
  sub_1C1AC1F08(&qword_1EBF08860, &qword_1C1B9CD80);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[2] = v1;
  v2 = MEMORY[0x1E69E7CC0];
  v0[3] = sub_1C1AD44C4(MEMORY[0x1E69E7CC0]);
  result = sub_1C1AD48DC(v2);
  v0[4] = result;
  qword_1EBF09208 = v0;
  return result;
}

void *PageTrackingStorage.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_1C1AC1F08(&qword_1EBF08860, &qword_1C1B9CD80);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[2] = v1;
  v2 = MEMORY[0x1E69E7CC0];
  v0[3] = sub_1C1AD44C4(MEMORY[0x1E69E7CC0]);
  v0[4] = sub_1C1AD48DC(v2);
  return v0;
}

uint64_t static PageTrackingStorage.shared.getter()
{
  if (qword_1EBF076C8 != -1)
  {
    swift_once();
  }
}

void *PageTrackingStorage.init()()
{
  sub_1C1AC1F08(&qword_1EBF08860, &qword_1C1B9CD80);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[2] = v1;
  v2 = MEMORY[0x1E69E7CC0];
  v0[3] = sub_1C1AD44C4(MEMORY[0x1E69E7CC0]);
  v0[4] = sub_1C1AD48DC(v2);
  return v0;
}

void PageTrackingStorage.set(instance:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = v3[3];
  v3[3] = 0x8000000000000000;
  sub_1C1AE41B4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

  v3[3] = v12;
  swift_endAccess();
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  swift_beginAccess();

  v11 = swift_isUniquelyReferenced_nonNull_native();
  v13 = v3[4];
  v3[4] = 0x8000000000000000;
  sub_1C1AE3EE0(a2, a3, v10, v9, v11);

  v3[4] = v13;
  swift_endAccess();
  os_unfair_lock_unlock(v7 + 4);
}

uint64_t PageTrackingStorage.get(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (*(v6 + 16) && (v7 = sub_1C1AA7C14(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  os_unfair_lock_unlock(v5 + 4);
  return v9;
}

Swift::Void __swiftcall PageTrackingStorage.delete(adInstanceId:)(Swift::String adInstanceId)
{
  object = adInstanceId._object;
  countAndFlagsBits = adInstanceId._countAndFlagsBits;
  v4 = *(v1 + 16);
  os_unfair_lock_lock(v4 + 4);
  swift_beginAccess();
  v5 = sub_1C1AF6428(countAndFlagsBits, object);
  v7 = v6;
  swift_endAccess();
  if (v7)
  {
    swift_beginAccess();
    sub_1C1AF657C(v5, v7);
    swift_endAccess();
  }

  os_unfair_lock_unlock(v4 + 4);
}

uint64_t PageTrackingStorage.deinit()
{

  return v0;
}

uint64_t PageTrackingStorage.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t TapActionType.stringValue.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x6E776F6E6B6E75;
      case 1:
        return 6448503;
      case 2:
        return 0x65685365726F7473;
    }

LABEL_16:
    result = sub_1C1B958C8();
    __break(1u);
    return result;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0x7261646E656C6163;
    }

    if (a1 == 6)
    {
      return 0x616572747374756FLL;
    }

    goto LABEL_16;
  }

  if (a1 == 3)
  {
    return 0x4C70656544707061;
  }

  else
  {
    return 0x444941524D796E61;
  }
}

unint64_t sub_1C1B3E320@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1B3E404(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1C1B3E404(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1B3E418()
{
  result = qword_1EDE6C2A0;
  if (!qword_1EDE6C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C2A0);
  }

  return result;
}

unint64_t sub_1C1B3E47C()
{
  result = qword_1EDE6B178;
  if (!qword_1EDE6B178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B178);
  }

  return result;
}

id ClientLayoutAssetInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C1B3E5EC()
{
  v1 = *v0;
  v2 = 0x54746E65746E6F63;
  v3 = 0x65746172746962;
  if (v1 != 6)
  {
    v3 = 0x706F6F6C6F747561;
  }

  v4 = 0x6C725579786F7270;
  if (v1 != 4)
  {
    v4 = 0x6874676E656CLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x746867696568;
  if (v1 != 2)
  {
    v5 = 7107189;
  }

  if (*v0)
  {
    v2 = 0x6874646977;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C1B3E6D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C1B3F374(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C1B3E700(uint64_t a1)
{
  v2 = sub_1C1B3EB30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B3E73C(uint64_t a1)
{
  v2 = sub_1C1B3EB30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ClientLayoutAssetInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientLayoutAssetInfo(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ClientLayoutAssetInfo(uint64_t a1)
{
  result = qword_1EDE6BF28;
  if (!qword_1EDE6BF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1B3E848(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF092D8, &qword_1C1BA0E98);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B3EB30();
  sub_1C1B95A18();
  v8[15] = 0;
  sub_1C1B957E8();
  if (!v1)
  {
    v8[14] = 1;
    sub_1C1B957E8();
    v8[13] = 2;
    sub_1C1B957E8();
    v8[12] = 3;
    sub_1C1B944A8();
    sub_1C1AEF214(&unk_1EDE6C3B0, MEMORY[0x1E6968FB8]);
    sub_1C1B95788();
    v8[11] = 4;
    sub_1C1B95788();
    v8[10] = 5;
    sub_1C1B957D8();
    v8[9] = 6;
    sub_1C1B957C8();
    v8[8] = 7;
    sub_1C1B957B8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1C1B3EB30()
{
  result = qword_1EBF092E0;
  if (!qword_1EBF092E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF092E0);
  }

  return result;
}

void *ClientLayoutAssetInfo.init(from:)(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v23 = sub_1C1AC1F08(&qword_1EBF092E8, &qword_1C1BA0EA0);
  v9 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v11 = &v22 - v10;
  v12 = a1[3];
  v25 = a1;
  sub_1C1AAABE0(a1, v12);
  sub_1C1B3EB30();
  sub_1C1B95A08();
  if (v1)
  {
    v21 = v24;
    sub_1C1AA86F8(v25);
    type metadata accessor for ClientLayoutAssetInfo(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v9;
    v27 = 0;
    v14 = v23;
    v15 = sub_1C1B956D8();
    v17 = v24;
    *(v24 + OBJC_IVAR___APPCClientLayoutAssetInfo_contentType) = v15;
    v27 = 1;
    *&v17[OBJC_IVAR___APPCClientLayoutAssetInfo_width] = sub_1C1B956D8();
    v27 = 2;
    *&v17[OBJC_IVAR___APPCClientLayoutAssetInfo_height] = sub_1C1B956D8();
    sub_1C1B944A8();
    v27 = 3;
    sub_1C1AEF214(&unk_1EDE6C3A0, MEMORY[0x1E6968FD0]);
    sub_1C1B95678();
    sub_1C1AEF258(v8, &v17[OBJC_IVAR___APPCClientLayoutAssetInfo_url]);
    v27 = 4;
    sub_1C1B95678();
    sub_1C1AEF258(v6, &v17[OBJC_IVAR___APPCClientLayoutAssetInfo_proxyUrl]);
    v27 = 5;
    sub_1C1B956C8();
    *&v17[OBJC_IVAR___APPCClientLayoutAssetInfo_length] = v18;
    v27 = 6;
    sub_1C1B956B8();
    *&v17[OBJC_IVAR___APPCClientLayoutAssetInfo_bitrate] = v19;
    v27 = 7;
    v17[OBJC_IVAR___APPCClientLayoutAssetInfo_autoloop] = sub_1C1B956A8() & 1;
    v20 = type metadata accessor for ClientLayoutAssetInfo(0);
    v26.receiver = v17;
    v26.super_class = v20;
    v21 = objc_msgSendSuper2(&v26, sel_init);
    (*(v13 + 8))(v11, v14);
    sub_1C1AA86F8(v25);
  }

  return v21;
}

void *sub_1C1B3F090@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ClientLayoutAssetInfo(0));
  result = ClientLayoutAssetInfo.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C1B3F114(uint64_t a1)
{
  sub_1C1AEF0A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C1B3F270()
{
  result = qword_1EBF092F0;
  if (!qword_1EBF092F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF092F0);
  }

  return result;
}

unint64_t sub_1C1B3F2C8()
{
  result = qword_1EBF092F8;
  if (!qword_1EBF092F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF092F8);
  }

  return result;
}

unint64_t sub_1C1B3F320()
{
  result = qword_1EBF09300;
  if (!qword_1EBF09300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09300);
  }

  return result;
}

uint64_t sub_1C1B3F374(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079;
  if (v4 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C725579786F7270 && a2 == 0xE800000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65746172746962 && a2 == 0xE700000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x706F6F6C6F747561 && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1C1B3F600(uint64_t a1)
{
  v1 = 7309;
  v2 = 7312;
  v3 = 7313;
  if (a1 != 40)
  {
    v3 = 0;
  }

  if (a1 != 30)
  {
    v2 = v3;
  }

  if (a1 != 20)
  {
    v1 = v2;
  }

  v4 = 7307;
  v5 = 7308;
  if (a1 != 14)
  {
    v5 = 0;
  }

  if (a1 != 13)
  {
    v4 = v5;
  }

  if (a1 <= 19)
  {
    v1 = v4;
  }

  v6 = 7305;
  v7 = 7306;
  if (a1 != 12)
  {
    v7 = 0;
  }

  if (a1 != 11)
  {
    v6 = v7;
  }

  v8 = 7303;
  v9 = 7304;
  if (a1 != 10)
  {
    v9 = 0;
  }

  if (a1 != 5)
  {
    v8 = v9;
  }

  if (a1 <= 10)
  {
    v6 = v8;
  }

  if (a1 <= 12)
  {
    return v6;
  }

  else
  {
    return v1;
  }
}

void sub_1C1B3F6F4()
{
  v0 = sub_1C1B94D78();
  v1 = NSClassFromString(v0);

  if (v1)
  {
    class_addProtocol(v1, &unk_1F4165530);
    v2 = sub_1C1B94D78();
    v3 = NSClassFromString(v2);

    if (v3)
    {
      class_addProtocol(v3, &unk_1F4165530);
      v4 = sub_1C1B94D78();
      v5 = NSClassFromString(v4);

      if (v5)
      {
        class_addProtocol(v5, &unk_1F4165530);
        v6 = sub_1C1B94D78();
        v7 = NSClassFromString(v6);

        if (v7)
        {

          class_addProtocol(v7, &unk_1F4165530);
        }
      }
    }
  }
}

uint64_t sub_1C1B3F888()
{
  v1 = OBJC_IVAR___APPCMetric_purpose;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B3F968()
{
  v1 = OBJC_IVAR___APPCMetric_metric;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B3FB20@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___APPCMetric_timestamp;
  swift_beginAccess();
  v4 = sub_1C1B94588();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1C1B3FCBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCMetric_timestamp;
  swift_beginAccess();
  v5 = sub_1C1B94588();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1C1B3FD48(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C1B94588();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR___APPCMetric_timestamp;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_1C1B3FEEC()
{
  v1 = (v0 + OBJC_IVAR___APPCMetric_contentId);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1C1B3FFC0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___APPCMetric_contentId);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1C1B401A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___APPCMetric_properties;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

id PromotedContentMetric.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PromotedContentMetric.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromotedContentMetric(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PromotedContentMetric(uint64_t a1)
{
  result = qword_1EBF09328;
  if (!qword_1EBF09328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1B40320@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t sub_1C1B40374(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_1C1B4045C(uint64_t a1)
{
  result = sub_1C1B94588();
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

id sub_1C1B4062C(void *a1)
{
  v32 = sub_1C1B94588();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBF076D0 != -1)
  {
    swift_once();
  }

  v31 = [a1 purpose];
  v5 = [a1 metric];
  v6 = [a1 timestamp];
  sub_1C1B94558();

  v7 = [a1 contentIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1C1B94D88();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [a1 properties];
  if (v12)
  {
    v13 = v12;
    sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
    v14 = sub_1C1B94CB8();

    v15 = sub_1C1B1AAF4(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = type metadata accessor for PromotedContentMetric(0);
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR___APPCMetric_contentId];
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR___APPCMetric_properties;
  *&v17[OBJC_IVAR___APPCMetric_properties] = 0;
  v20 = v32;
  *&v17[OBJC_IVAR___APPCMetric_purpose] = v31;
  *&v17[OBJC_IVAR___APPCMetric_metric] = v5;
  (*(v2 + 16))(&v17[OBJC_IVAR___APPCMetric_timestamp], v4, v20);
  swift_beginAccess();
  *v18 = v9;
  v18[1] = v11;
  v35 = v15;
  if (v15)
  {
    v21 = sub_1C1B94D88();
    v23 = v22;
    if (*(v15 + 16))
    {
      v24 = v21;

      sub_1C1AA7C14(v24, v23);
      LOBYTE(v24) = v25;

      if (v24)
      {
        v26 = sub_1C1B94D88();
        sub_1C1AF64D8(v26, v27, v33);

        sub_1C1AF4F4C(v33);
      }
    }

    else
    {
    }
  }

  v28 = v35;
  swift_beginAccess();
  *&v17[v19] = v28;

  v34.receiver = v17;
  v34.super_class = v16;
  v29 = objc_msgSendSuper2(&v34, sel_init);
  (*(v2 + 8))(v4, v32);
  return v29;
}

id sub_1C1B4098C(void *a1)
{
  v2 = sub_1C1B944A8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - v7;
  if ([a1 actionType] == 4)
  {
    v9 = [a1 adamIdentifier];
    if (v9)
    {
      v10 = v9;
      v11 = [a1 iTunesMetadata];
      if (v11)
      {
        v12 = v11;
        v13 = sub_1C1B94CB8();

        [a1 confirmedClickInterval];
        v15 = v14;
        v16 = objc_allocWithZone(type metadata accessor for MobileRichAdInterfaceDefinitionTapAction(0));
        *&v16[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier] = v10;
        *&v16[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_iTunesMetadata] = v13;
        (*(v3 + 56))(&v16[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_url], 1, 1, v2);
        v16[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_opensInstalledApp] = 0;
        *&v16[OBJC_IVAR___APPCTapAction_actionType] = 4;
        *&v16[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v15;
        v17 = type metadata accessor for TapAction();
        v18 = objc_msgSendSuper2(&v35, sel_init, v16, v17, v36.receiver, v36.super_class);
        goto LABEL_15;
      }
    }

    v25 = [a1 actionURL];
    if (v25)
    {
      v26 = v25;
      sub_1C1B94488();

      (*(v3 + 16))(v6, v8, v2);
      LOBYTE(v26) = [a1 opensInstalledApp];
      [a1 confirmedClickInterval];
      v28 = v27;
      v29 = objc_allocWithZone(type metadata accessor for MobileRichAdInterfaceDefinitionTapAction(0));
      v30 = MobileRichAdInterfaceDefinitionTapAction.init(url:opensInstalledApp:confirmedClickInterval:)(v6, v26, v28);

      (*(v3 + 8))(v8, v2);
      return v30;
    }

    [a1 confirmedClickInterval];
    v32 = v31;
    v33 = objc_allocWithZone(type metadata accessor for MobileRichAdInterfaceDefinitionTapAction(0));
    (*(v3 + 56))(&v33[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_url], 1, 1, v2);
    v33[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_opensInstalledApp] = 0;
    *&v33[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier] = 0;
    *&v33[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_iTunesMetadata] = 0;
    *&v33[OBJC_IVAR___APPCTapAction_actionType] = 4;
    *&v33[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v32;
    v34 = type metadata accessor for TapAction();
    v18 = objc_msgSendSuper2(&v36, sel_init, v35.receiver, v35.super_class, v33, v34);
LABEL_15:
    v30 = v18;

    return v30;
  }

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v19 = sub_1C1B94BE8();
  sub_1C1AB4454(v19, qword_1EDE6D058);
  v20 = a1;
  v21 = sub_1C1B94BC8();
  v22 = sub_1C1B95128();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = [v20 actionType];

    _os_log_impl(&dword_1C1AA2000, v21, v22, "Attempting to initialize a MobileRichAdInterfaceDefinitionTapAction with an invalid tap action type %ld.", v23, 0xCu);
    MEMORY[0x1C6908230](v23, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t ClientLayoutRepresentation.headline.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_headline);

  return v1;
}

uint64_t ClientLayoutRepresentation.accessibilityHeadline.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_accessibilityHeadline);

  return v1;
}

uint64_t ClientLayoutRepresentation.adCopy.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_adCopy);

  return v1;
}

uint64_t ClientLayoutRepresentation.accessibilityAdCopy.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_accessibilityAdCopy);

  return v1;
}

uint64_t ClientLayoutRepresentation.sponsoredBy.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredBy);

  return v1;
}

void ClientLayoutRepresentation.button.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button);
  v3 = *(v1 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 8);
  v4 = *(v1 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 16);
  v5 = *(v1 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 24);
  v6 = *(v1 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 32);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  sub_1C1B08A14(v2, v3, v4, v5, v6);
}

uint64_t ClientLayoutRepresentation.targetingDimensions.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions);
  v3 = *(v1 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions + 8);
  *a1 = v2;
  a1[1] = v3;
  return sub_1C1B08B68(v2, v3);
}

uint64_t ClientLayoutRepresentation.style.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_style);
  v3 = *(v1 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_style + 8);
  *a1 = v2;
  a1[1] = v3;
  return sub_1C1B08B68(v2, v3);
}

uint64_t ClientLayoutRepresentation.journeyRelayCampaignID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_journeyRelayCampaignID);

  return v1;
}

unint64_t sub_1C1B41084(char a1)
{
  result = 0x656E696C64616568;
  switch(a1)
  {
    case 1:
    case 12:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0x79706F436461;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x65726F736E6F7073;
      break;
    case 5:
      result = 0x73746E656D656C65;
      break;
    case 6:
      result = 0x74616D726F466461;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000026;
      break;
    case 10:
      result = 0x6E6F74747562;
      break;
    case 11:
      result = 0x52556E6F69746361;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x656C797473;
      break;
    case 16:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C1B4125C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1C1B41084(*a1);
  v5 = v4;
  if (v3 == sub_1C1B41084(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C1B95888();
  }

  return v8 & 1;
}

uint64_t sub_1C1B412E4()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B41084(v1);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B41348(uint64_t a1)
{
  sub_1C1B41084(*v1);
  sub_1C1B94DE8();
}

uint64_t sub_1C1B4139C(uint64_t a1)
{
  v2 = *v1;
  sub_1C1B95958();
  sub_1C1B41084(v2);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

unint64_t sub_1C1B413FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C1B432F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1C1B4142C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C1B41084(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C1B41474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1B432F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B414A8(uint64_t a1)
{
  v2 = sub_1C1B422E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B414E4(uint64_t a1)
{
  v2 = sub_1C1B422E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientLayoutRepresentation.init(from:)(void *a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v59 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v59 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v59 - v12;
  v62 = sub_1C1AC1F08(&qword_1EBF09338, &qword_1C1BA10E8);
  v14 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v16 = &v59 - v15;
  v17 = a1[3];
  v63 = a1;
  sub_1C1AAABE0(a1, v17);
  sub_1C1B422E0();
  v61 = v16;
  v18 = v64;
  sub_1C1B95A08();
  if (!v18)
  {
    *(&v60 + 1) = v14;
    LOBYTE(v66[0]) = 0;
    v19 = v61;
    v20 = v62;
    v21 = sub_1C1B95638();
    v23 = v65;
    v24 = (v65 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_headline);
    *v24 = v21;
    v24[1] = v25;
    LOBYTE(v66[0]) = 1;
    v26 = sub_1C1B95638();
    v27 = *(&v60 + 1);
    v28 = (v23 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_accessibilityHeadline);
    *v28 = v26;
    v28[1] = v29;
    LOBYTE(v66[0]) = 2;
    v59 = 0;
    v30 = sub_1C1B95638();
    v31 = (v23 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_adCopy);
    *v31 = v30;
    v31[1] = v32;
    LOBYTE(v66[0]) = 3;
    v33 = sub_1C1B95638();
    v34 = (v23 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_accessibilityAdCopy);
    *v34 = v33;
    v34[1] = v35;
    LOBYTE(v66[0]) = 4;
    v36 = sub_1C1B95638();
    v64 = 0;
    v38 = (v23 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredBy);
    *v38 = v36;
    v38[1] = v37;
    sub_1C1AC1F08(&qword_1EBF09340, &qword_1C1BA10F0);
    v69 = 5;
    sub_1C1B42AFC(&qword_1EDE6A6A8, &qword_1EDE6AE78, &protocol conformance descriptor for ClientLayoutElement, MEMORY[0x1E69E6330]);
    v39 = v64;
    sub_1C1B95678();
    if (v39)
    {
      v64 = v39;
      (*(v27 + 8))(v19, v20);
      v5 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      *&v60 = 0;
      v68 = 0;
      DWORD2(v60) = 0;
      LODWORD(v61) = 0;
      LODWORD(v62) = 0;
    }

    else
    {
      *(v23 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_elements) = *&v66[0];
      LOBYTE(v66[0]) = 6;
      v43 = sub_1C1B956D8();
      v64 = 0;
      *(v23 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_adFormatType) = v43;
      sub_1C1B944A8();
      LOBYTE(v66[0]) = 7;
      sub_1C1B42B98(&unk_1EDE6C3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
      v44 = v64;
      sub_1C1B95678();
      v64 = v44;
      if (v44)
      {
        (*(v27 + 8))(v19, v20);
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *&v60 = 0;
        v68 = 0;
        DWORD2(v60) = 0;
        LODWORD(v61) = 0;
        LODWORD(v62) = 0;
        v5 = 1;
      }

      else
      {
        sub_1C1AEF258(v13, v65 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetURL);
        LOBYTE(v66[0]) = 8;
        v47 = v64;
        sub_1C1B95678();
        v64 = v47;
        if (v47)
        {
          (*(v27 + 8))(v19, v20);
          v41 = 0;
          v42 = 0;
          *&v60 = 0;
          v68 = 0;
          DWORD2(v60) = 0;
          LODWORD(v61) = 0;
          LODWORD(v62) = 0;
          v5 = 1;
          v40 = 1;
        }

        else
        {
          sub_1C1AEF258(v11, v65 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetProxyURL);
          LOBYTE(v66[0]) = 9;
          v48 = v64;
          sub_1C1B95678();
          v64 = v48;
          if (v48)
          {
            (*(*(&v60 + 1) + 8))(v61, v62);
            v42 = 0;
            *&v60 = 0;
            v68 = 0;
            DWORD2(v60) = 0;
            LODWORD(v61) = 0;
            LODWORD(v62) = 0;
            v5 = 1;
            v40 = 1;
            v41 = 1;
          }

          else
          {
            sub_1C1AEF258(v8, v65 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetURLForDarkModeProxyURL);
            v69 = 10;
            sub_1C1B0989C();
            v49 = v64;
            sub_1C1B95678();
            v64 = v49;
            if (v49)
            {
              (*(*(&v60 + 1) + 8))(v61, v62);
              *&v60 = 0;
              v68 = 0;
              DWORD2(v60) = 0;
              LODWORD(v61) = 0;
              LODWORD(v62) = 0;
              v5 = 1;
              v40 = 1;
              v41 = 1;
              v42 = 1;
            }

            else
            {
              v50 = v67;
              v51 = v65 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button;
              v52 = v66[1];
              *v51 = v66[0];
              *(v51 + 16) = v52;
              *(v51 + 32) = v50;
              LOBYTE(v66[0]) = 11;
              sub_1C1B95678();
              v64 = 0;
              sub_1C1AEF258(v5, v65 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_actionURL);
              v69 = 13;
              sub_1C1B42380();
              v53 = v64;
              sub_1C1B95678();
              v64 = v53;
              if (v53)
              {
                (*(*(&v60 + 1) + 8))(v61, v62);
                v68 = 0;
                LODWORD(v61) = 0;
                LODWORD(v62) = 0;
                v5 = 1;
                v40 = 1;
                v41 = 1;
                v42 = 1;
                LODWORD(v60) = 1;
                *(&v60 + 4) = 1;
              }

              else
              {
                *(v65 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_localizedHeadlines) = *&v66[0];
                v69 = 14;
                sub_1C1B423D4();
                v54 = v64;
                sub_1C1B95678();
                v64 = v54;
                if (v54)
                {
                  (*(*(&v60 + 1) + 8))(v61, v62);
                  LODWORD(v61) = 0;
                  LODWORD(v62) = 0;
                  v5 = 1;
                  v40 = 1;
                  v41 = 1;
                  v42 = 1;
                  LODWORD(v60) = 1;
                  *(&v60 + 4) = 1;
                  v68 = 1;
                }

                else
                {
                  *(v65 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions) = v66[0];
                  v69 = 15;
                  sub_1C1B09938();
                  v55 = v64;
                  sub_1C1B95678();
                  v64 = v55;
                  if (!v55)
                  {
                    *(v65 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_style) = v66[0];
                    LOBYTE(v66[0]) = 16;
                    v56 = sub_1C1B95638();
                    v64 = 0;
                    v57 = (v65 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_journeyRelayCampaignID);
                    *v57 = v56;
                    v57[1] = v58;
                    sub_1C1B95628();
                    v64 = 0;
                    v5 = ContentRepresentation.init(from:)(v66);
                    (*(*(&v60 + 1) + 8))(v61, v62);
                    sub_1C1AA86F8(v63);
                    v64 = 0;
                    return v5;
                  }

                  (*(*(&v60 + 1) + 8))(v61, v62);
                  LODWORD(v61) = 0;
                  LODWORD(v62) = 0;
                  v5 = 1;
                  v40 = 1;
                  v41 = 1;
                  v42 = 1;
                  *&v60 = 0x100000001;
                  v68 = 1;
                  DWORD2(v60) = 1;
                }
              }
            }
          }
        }
      }
    }

    v45 = v59;
    sub_1C1AA86F8(v63);

    if (!v45)
    {
    }

    v46 = v65;

    if (v5)
    {

      if (v40)
      {
LABEL_14:
        sub_1C1AC54A0(v46 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetURL);
        if ((v41 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_25;
      }
    }

    else if (v40)
    {
      goto LABEL_14;
    }

    if (!v41)
    {
LABEL_15:
      if (v42)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }

LABEL_25:
    sub_1C1AC54A0(v46 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetProxyURL);
    if (v42)
    {
LABEL_16:
      sub_1C1AC54A0(v46 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetURLForDarkModeProxyURL);
      if ((v60 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    }

LABEL_26:
    if (!v60)
    {
LABEL_17:
      if (DWORD1(v60))
      {
        goto LABEL_18;
      }

      goto LABEL_28;
    }

LABEL_27:
    sub_1C1B091A0(*(v46 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button), *(v46 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 8), *(v46 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 16), *(v46 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 24), *(v46 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 32));
    if (BYTE4(v60))
    {
LABEL_18:
      sub_1C1AC54A0(v46 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_actionURL);
      if ((v68 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!v68)
    {
LABEL_19:
      if (DWORD2(v60))
      {
        goto LABEL_20;
      }

      goto LABEL_30;
    }

LABEL_29:

    if (BYTE8(v60))
    {
LABEL_20:
      sub_1C1B0923C(*(v46 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions), *(v46 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions + 8));
      if ((v61 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_31;
    }

LABEL_30:
    if (!v61)
    {
LABEL_21:
      if (!v62)
      {
        goto LABEL_4;
      }

LABEL_32:

      goto LABEL_4;
    }

LABEL_31:
    sub_1C1B0923C(*(v46 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_style), *(v46 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_style + 8));
    if ((v62 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_32;
  }

  v64 = v18;
  sub_1C1AA86F8(v63);
LABEL_4:
  type metadata accessor for ClientLayoutRepresentation(0);
  swift_deallocPartialClassInstance();
  return v5;
}

unint64_t sub_1C1B422E0()
{
  result = qword_1EDE6A910;
  if (!qword_1EDE6A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A910);
  }

  return result;
}

uint64_t type metadata accessor for ClientLayoutRepresentation(uint64_t a1)
{
  result = qword_1EDE6BE78;
  if (!qword_1EDE6BE78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C1B42380()
{
  result = qword_1EDE6B018;
  if (!qword_1EDE6B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B018);
  }

  return result;
}

unint64_t sub_1C1B423D4()
{
  result = qword_1EDE6ADA8;
  if (!qword_1EDE6ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6ADA8);
  }

  return result;
}

uint64_t sub_1C1B42428(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09348, &unk_1C1BA10F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B422E0();
  sub_1C1B95A18();
  v16 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_headline);
  v20 = 0;
  sub_1C1AC1F08(&qword_1EBF07AB8, &qword_1C1B98D00);
  sub_1C1AC344C();
  sub_1C1B95808();
  if (!v2)
  {
    v16 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_accessibilityHeadline);
    v20 = 1;
    sub_1C1B95808();
    v16 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_adCopy);
    v20 = 2;
    sub_1C1B95808();
    v16 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_accessibilityAdCopy);
    v20 = 3;
    sub_1C1B95808();
    v16 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredBy);
    v20 = 4;
    sub_1C1B95808();
    *&v16 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_elements);
    v20 = 5;
    sub_1C1AC1F08(&qword_1EBF09350, &qword_1C1BA1108);
    sub_1C1B42A40();
    sub_1C1B95808();
    LOBYTE(v16) = 6;
    sub_1C1B957E8();
    LOBYTE(v16) = 7;
    sub_1C1B944A8();
    sub_1C1B42B98(&unk_1EDE6C3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1C1B95788();
    LOBYTE(v16) = 9;
    sub_1C1B95788();
    LOBYTE(v16) = 8;
    sub_1C1B95788();
    v9 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 8);
    v10 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 16);
    v11 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 24);
    v12 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 32);
    *&v16 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button);
    *(&v16 + 1) = v9;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    v20 = 10;
    sub_1C1B08A14(v16, v9, v10, v11, v12);
    sub_1C1B0914C();
    sub_1C1B95788();
    sub_1C1B091A0(v16, *(&v16 + 1), v17, v18, v19);
    LOBYTE(v16) = 11;
    sub_1C1B95788();
    *&v16 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_localizedHeadlines);
    v20 = 13;
    sub_1C1B42BE0();

    sub_1C1B95788();

    v13 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions + 8);
    *&v16 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions);
    *(&v16 + 1) = v13;
    v20 = 14;
    sub_1C1B08B68(v16, v13);
    sub_1C1B42C34();
    sub_1C1B95788();
    sub_1C1B0923C(v16, *(&v16 + 1));
    v14 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_style + 8);
    *&v16 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_style);
    *(&v16 + 1) = v14;
    v20 = 15;
    sub_1C1B08B68(v16, v14);
    sub_1C1B091E8();
    sub_1C1B95788();
    sub_1C1B0923C(v16, *(&v16 + 1));
    LOBYTE(v16) = 16;
    sub_1C1B95748();
    sub_1C1B95738();
    sub_1C1B4FA4C(&v16);
    sub_1C1AA86F8(&v16);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1C1B42A40()
{
  result = qword_1EDE6A6A0;
  if (!qword_1EDE6A6A0)
  {
    sub_1C1AC3404(&qword_1EBF09350, &qword_1C1BA1108);
    sub_1C1B42AFC(&unk_1EDE6A6B0, qword_1EDE6AE80, &protocol conformance descriptor for ClientLayoutElement, MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A6A0);
  }

  return result;
}

uint64_t sub_1C1B42AFC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF09340, &qword_1C1BA10F0);
    sub_1C1B42B98(a2, type metadata accessor for ClientLayoutElement, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1B42B98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C1B42BE0()
{
  result = qword_1EDE6B020;
  if (!qword_1EDE6B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B020);
  }

  return result;
}

unint64_t sub_1C1B42C34()
{
  result = qword_1EDE6ADB0;
  if (!qword_1EDE6ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6ADB0);
  }

  return result;
}

uint64_t sub_1C1B42CE8()
{

  sub_1C1AC54A0(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetURL);
  sub_1C1AC54A0(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetProxyURL);
  sub_1C1AC54A0(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetURLForDarkModeProxyURL);
  sub_1C1B091A0(*(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button), *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 8), *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 16), *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 24), *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 32));
  sub_1C1AC54A0(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_actionURL);

  sub_1C1B0923C(*(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions), *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions + 8));
  sub_1C1B0923C(*(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_style), *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_style + 8));
}

id ClientLayoutRepresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientLayoutRepresentation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C1B42FAC(uint64_t a1)
{
  sub_1C1AEF0A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for ClientLayoutRepresentation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClientLayoutRepresentation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1B431F0()
{
  result = qword_1EBF09358;
  if (!qword_1EBF09358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09358);
  }

  return result;
}

unint64_t sub_1C1B43248()
{
  result = qword_1EDE6A900;
  if (!qword_1EDE6A900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A900);
  }

  return result;
}

unint64_t sub_1C1B432A0()
{
  result = qword_1EDE6A908;
  if (!qword_1EDE6A908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A908);
  }

  return result;
}

unint64_t sub_1C1B432F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1B958A8();

  if (v2 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v2;
  }
}

void *ContentPipelineBuilder.__allocating_init()()
{
  result = swift_allocObject();
  result[2] = MEMORY[0x1E69E7CC0];
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  return result;
}

void *ContentPipelineBuilder.init()()
{
  result = v0;
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  v0[5] = 0;
  return result;
}

uint64_t sub_1C1B433B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v3[3] = a3;
  v3[4] = sub_1C1B4456C;
  v3[5] = v7;

  sub_1C1B43454(v8, v9, v10);
}

double sub_1C1B43454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1C1B43464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;
  swift_beginAccess();
  v10 = *(v4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1C1ACE4E8(0, *(v10 + 2) + 1, 1, v10);
    *(v4 + 16) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1C1ACE4E8((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[32 * v13];
  *(v14 + 4) = a3;
  *(v14 + 5) = a4;
  *(v14 + 6) = sub_1C1B4454C;
  *(v14 + 7) = v9;
  *(v4 + 16) = v10;
  swift_endAccess();
}

uint64_t sub_1C1B435A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[3];
  if (v4)
  {
    v5 = v3;
    v28 = v2[4];

    v28(v33);
    swift_beginAccess();
    v6 = v2[2];
    v7 = *(v6 + 16);

    if (v7)
    {
      v8 = (v6 + 32 * v7 + 16);
      v9 = v4;
      while (v7 <= *(v6 + 16))
      {
        v10 = *(v8 - 2);
        v11 = *(v8 - 1);
        v12 = *v8;

        sub_1C1B43AA4(v33, v9, v10, v12, &v31);
        sub_1C1AA86F8(v33);
        if (v5)
        {

          sub_1C1B43454(v4, v28, v29);
        }

        --v7;
        sub_1C1AC0580(&v31, v33);

        v8 -= 4;
        v9 = v11;
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      sub_1C1AAD2FC(v33, &v31);
      sub_1C1AC1F08(&qword_1EBF09360, &unk_1C1BA12F8);
      v34 = a1;
      swift_getExtendedExistentialTypeMetadata();
      if (swift_dynamicCast())
      {
        sub_1C1AA86F8(v33);
        sub_1C1B43454(v4, v28, v29);
        return sub_1C1AC0580(&v30, a2);
      }
    }

    sub_1C1AC1F08(&qword_1EBF08310, &qword_1C1B9AF40);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6567617373656DLL;
    *(inited + 16) = xmmword_1C1B98E60;
    *(inited + 40) = 0xE700000000000000;
    *&v31 = 0;
    *(&v31 + 1) = 0xE000000000000000;
    sub_1C1B95468();
    v30 = v31;
    MEMORY[0x1C6906DF0](0xD000000000000032, 0x80000001C1BAB040);
    v20 = sub_1C1B95A48();
    MEMORY[0x1C6906DF0](v20);

    MEMORY[0x1C6906DF0](0x6F6720747562202CLL, 0xEA00000000002074);
    sub_1C1AAD2FC(v33, &v31);
    sub_1C1AAABE0(&v31, v32);
    swift_getDynamicType();
    sub_1C1AA86F8(&v31);
    v21 = sub_1C1B95A48();
    MEMORY[0x1C6906DF0](v21);

    v22 = v30;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v22;
    sub_1C1AA7D00(inited);
    swift_setDeallocating();
    sub_1C1AA7C8C(inited + 32, &qword_1EBF08340, &qword_1C1B9AF70);
    v23 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v24 = sub_1C1B94D78();
    v25 = sub_1C1B94CA8();

    [v23 initWithDomain:v24 code:2 userInfo:v25];

    swift_willThrow();
    sub_1C1B43454(v4, v28, v29);
    return sub_1C1AA86F8(v33);
  }

  else
  {
    sub_1C1AC1F08(&qword_1EBF08310, &qword_1C1B9AF40);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_1C1B98E60;
    *(v14 + 32) = 0x6567617373656DLL;
    v15 = v14 + 32;
    *(v14 + 72) = MEMORY[0x1E69E6158];
    *(v14 + 40) = 0xE700000000000000;
    *(v14 + 48) = 0xD000000000000038;
    *(v14 + 56) = 0x80000001C1BAB000;
    sub_1C1AA7D00(v14);
    swift_setDeallocating();
    sub_1C1AA7C8C(v15, &qword_1EBF08340, &qword_1C1B9AF70);
    v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v17 = sub_1C1B94D78();
    v18 = sub_1C1B94CA8();

    [v16 initWithDomain:v17 code:1 userInfo:v18];

    return swift_willThrow();
  }
}

uint64_t sub_1C1B43AA4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a5)(void *__return_ptr, __int128 *)@<X4>, uint64_t a6@<X8>)
{
  if (a3 != a2)
  {
    sub_1C1AC1F08(&qword_1EBF08310, &qword_1C1B9AF40);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6567617373656DLL;
    *(inited + 16) = xmmword_1C1B98E60;
    *(inited + 40) = 0xE700000000000000;
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_1C1B95468();
    MEMORY[0x1C6906DF0](0xD00000000000003DLL, 0x80000001C1BAB0F0);
    v8 = sub_1C1B95A48();
    MEMORY[0x1C6906DF0](v8);

    MEMORY[0x1C6906DF0](0x20746F67202CLL, 0xE600000000000000);
    v9 = sub_1C1B95A48();
    MEMORY[0x1C6906DF0](v9);

    MEMORY[0x1C6906DF0](46, 0xE100000000000000);
    v10 = v26;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v10;
    sub_1C1AA7D00(inited);
    swift_setDeallocating();
    sub_1C1AA7C8C(inited + 32, &qword_1EBF08340, &qword_1C1B9AF70);
    v11 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v12 = sub_1C1B94D78();
    v13 = sub_1C1B94CA8();

    [v11 initWithDomain:v12 code:2 userInfo:v13];

    return swift_willThrow();
  }

  v17 = a1[3];
  v18 = sub_1C1AAABE0(a1, v17);
  *(&v27 + 1) = v17;
  v19 = sub_1C1AB0D60(&v26);
  (*(*(v17 - 8) + 16))(v19, v18, v17);
  a5(v29, &v26);
  result = sub_1C1AA86F8(&v26);
  if (!v6)
  {
    sub_1C1AC1F08(&qword_1EBF09360, &unk_1C1BA12F8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      sub_1C1AA7C8C(&v26, &qword_1EBF09368, &qword_1C1BA1398);
      sub_1C1AC1F08(&qword_1EBF08310, &qword_1C1B9AF40);
      v20 = swift_initStackObject();
      *(v20 + 32) = 0x6567617373656DLL;
      *(v20 + 16) = xmmword_1C1B98E60;
      *(v20 + 40) = 0xE700000000000000;
      *&v26 = 0;
      *(&v26 + 1) = 0xE000000000000000;
      sub_1C1B95468();
      MEMORY[0x1C6906DF0](0xD00000000000004ALL, 0x80000001C1BAB130);
      v21 = sub_1C1B95A48();
      MEMORY[0x1C6906DF0](v21);

      MEMORY[0x1C6906DF0](11838, 0xE200000000000000);
      v22 = v26;
      *(v20 + 72) = MEMORY[0x1E69E6158];
      *(v20 + 48) = v22;
      sub_1C1AA7D00(v20);
      swift_setDeallocating();
      sub_1C1AA7C8C(v20 + 32, &qword_1EBF08340, &qword_1C1B9AF70);
      v23 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v24 = sub_1C1B94D78();
      v25 = sub_1C1B94CA8();

      [v23 initWithDomain:v24 code:4 userInfo:v25];

      return swift_willThrow();
    }

    return sub_1C1AC0580(&v26, a6);
  }

  return result;
}

uint64_t *ContentPipelineBuilder.deinit()
{

  sub_1C1B43454(v0[3], v0[4], v0[5]);
  return v0;
}

uint64_t ContentPipelineBuilder.__deallocating_deinit()
{

  sub_1C1B43454(v0[3], v0[4], v0[5]);

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1C1B43F90@<X0>(void *a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t *)@<X1>, uint64_t *a4@<X8>)
{
  sub_1C1AAA7B8(a1, v23);
  swift_getExtendedExistentialTypeMetadata();
  if (swift_dynamicCast())
  {
    sub_1C1AC0580(&v21, &v24);
    a2(&v21, &v24);
    if (v4)
    {
      v8 = &v24;
    }

    else
    {
      v18 = v22;
      v19 = sub_1C1AAABE0(&v21, v22);
      a4[3] = v18;
      v20 = sub_1C1AB0D60(a4);
      (*(*(v18 - 8) + 16))(v20, v19, v18);
      sub_1C1AA86F8(&v24);
      v8 = &v21;
    }

    return sub_1C1AA86F8(v8);
  }

  else
  {
    sub_1C1AC1F08(&qword_1EBF08310, &qword_1C1B9AF40);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6567617373656DLL;
    *(inited + 16) = xmmword_1C1B98E60;
    *(inited + 40) = 0xE700000000000000;
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_1C1B95468();
    MEMORY[0x1C6906DF0](0xD000000000000045, 0x80000001C1BAB180);
    v10 = sub_1C1B95A48();
    MEMORY[0x1C6906DF0](v10);

    MEMORY[0x1C6906DF0](0x20746F67202C3ELL, 0xE700000000000000);
    sub_1C1AAABE0(a1, a1[3]);
    swift_getDynamicType();
    v11 = sub_1C1B95A48();
    MEMORY[0x1C6906DF0](v11);

    v12 = v24;
    v13 = v25;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v12;
    *(inited + 56) = v13;
    sub_1C1AA7D00(inited);
    swift_setDeallocating();
    sub_1C1AA7C8C(inited + 32, &qword_1EBF08340, &qword_1C1B9AF70);
    v14 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v15 = sub_1C1B94D78();
    v16 = sub_1C1B94CA8();

    [v14 initWithDomain:v15 code:1 userInfo:v16];

    return swift_willThrow();
  }
}

uint64_t sub_1C1B44280@<X0>(void (*a1)(void *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  a1(v8);
  v7 = v9;
  v3 = v9;
  v4 = sub_1C1AAABE0(v8, v9);
  *(a2 + 24) = v7;
  v5 = sub_1C1AB0D60(a2);
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  return sub_1C1AA86F8(v8);
}

__n128 initializeBufferWithCopyOfBuffer for ContentProviderPluginSettings(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C1B4441C(uint64_t *a1, int a2)
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

uint64_t sub_1C1B44464(uint64_t result, int a2, int a3)
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

uint64_t sub_1C1B444B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C1B444FC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t LegacyCapInstance.frequencyCapIdentifier.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x1C6906DF0](124, 0xE100000000000000);
  MEMORY[0x1C6906DF0](v1, v2);
  return v4;
}

uint64_t LegacyCapInstance.adamId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LegacyCapInstance.metadata.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall LegacyCapInstance.init(adamId:metadata:frequencyStorageType:)(PromotedContent::LegacyCapInstance *__return_ptr retstr, Swift::String adamId, Swift::String metadata, PromotedContent::FrequencyCapStorageType_optional frequencyStorageType)
{
  retstr->frequencyStorageType.value = *frequencyStorageType.value;
  retstr->adamId = adamId;
  retstr->metadata = metadata;
}

uint64_t sub_1C1B44658()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x1C6906DF0](124, 0xE100000000000000);
  MEMORY[0x1C6906DF0](v1, v2);
  return v4;
}

__n128 sub_1C1B446EC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C1B44700(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1C1B44748(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1C1B447A0(void *a1)
{
  v2 = sub_1C1B945F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 maxSize];
  v7 = v6;
  v9 = v8;
  type metadata accessor for NewsSupplementalContext();
  v10 = a1;
  v11 = NewsSupplementalContext.__allocating_init(_:)(v10);
  v12 = [v10 identifier];
  sub_1C1B945D8();

  v13 = [v10 requestedAdIdentifier];
  v14 = sub_1C1B94D88();
  v16 = v15;

  v17 = objc_allocWithZone(type metadata accessor for Context(0));
  v18 = Context.init(maxSize:requestedAd:current:next:)(v14, v16, 0, MEMORY[0x1E69E7CC0], v7, v9);

  v19 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v20 = *(v3 + 40);
  v21 = v18;
  v20(&v18[v19], v5, v2);
  swift_endAccess();

  v22 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v23 = *&v21[v22];
  *&v21[v22] = v11;

  return v21;
}

uint64_t sub_1C1B449D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001C1BAB1D0 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C1BAB1F0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1C1B95888();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1C1B44ABC(uint64_t a1)
{
  v2 = sub_1C1B44CF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B44AF8(uint64_t a1)
{
  v2 = sub_1C1B44CF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TargetingDimensions.encode(to:)(void *a1)
{
  v4 = sub_1C1AC1F08(&qword_1EBF09370, &qword_1C1BA1420);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B44CF4();

  sub_1C1B95A18();
  v12 = v8;
  v11 = 0;
  sub_1C1AC1F08(&unk_1EBF08578, &qword_1C1B9AFB0);
  sub_1C1AE4A54();
  sub_1C1B95808();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_1C1B95808();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1C1B44CF4()
{
  result = qword_1EDE6ADC8[0];
  if (!qword_1EDE6ADC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE6ADC8);
  }

  return result;
}

uint64_t TargetingDimensions.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C1AC1F08(&qword_1EBF09378, &qword_1C1BA1428);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B44CF4();
  sub_1C1B95A08();
  if (v2)
  {
    return sub_1C1AA86F8(a1);
  }

  v13 = a2;
  sub_1C1AC1F08(&unk_1EBF08578, &qword_1C1B9AFB0);
  v14 = 0;
  sub_1C1AE47EC();
  sub_1C1B956F8();
  v9 = v15;
  v14 = 1;
  sub_1C1B956F8();
  (*(v6 + 8))(v8, v5);
  v10 = v15;
  v11 = v13;
  *v13 = v9;
  v11[1] = v10;

  sub_1C1AA86F8(a1);
}

unint64_t sub_1C1B44FBC()
{
  result = qword_1EBF09380;
  if (!qword_1EBF09380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09380);
  }

  return result;
}

unint64_t sub_1C1B45014()
{
  result = qword_1EDE6ADB8;
  if (!qword_1EDE6ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6ADB8);
  }

  return result;
}

unint64_t sub_1C1B4506C()
{
  result = qword_1EDE6ADC0;
  if (!qword_1EDE6ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6ADC0);
  }

  return result;
}

void *AdRequestManager.__allocating_init()()
{
  v0 = [objc_opt_self() sharedCoordinator];
  v1 = swift_allocObject();
  v1[3] = MEMORY[0x1E69E7CD0];
  v1[4] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  sub_1C1B945E8();
  *(v1 + OBJC_IVAR____TtC15PromotedContent16AdRequestManager_isSessionActive) = 1;
  v1[2] = v0;
  v2 = v0;
  v3 = sub_1C1B945B8();
  [v2 beginSessionForID_];

  return v1;
}

void sub_1C1B451A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t AdRequestError.hashValue.getter()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v1);
  return sub_1C1B959A8();
}

uint64_t sub_1C1B452C8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v6 = a2(a1, v2, ObjectType);
  swift_unknownObjectRelease();
  return v6;
}

void AdRequestManager.deinit()
{
  v1 = v0;
  v2 = sub_1C1B945F8();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v30 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v0 + 32) lock];
  swift_beginAccess();
  v29 = *(v0 + 24);
  if ((v29 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1C1B95368();
    type metadata accessor for AdResponseBlock(0);
    sub_1C1B478A0();
    sub_1C1B95088();
    v5 = v35;
    v4 = v36;
    v6 = v37;
    v7 = v38;
    v8 = v39;
  }

  else
  {
    v9 = -1 << *(v29 + 32);
    v4 = v29 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v29 + 56);
    v5 = v29;
    swift_bridgeObjectRetain_n();
    v7 = 0;
  }

  v28[1] = v6;
  v12 = (v6 + 64) >> 6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_18:
      sub_1C1B478F8(v5);

      v21 = *(v1 + 16);
      v22 = OBJC_IVAR____TtC15PromotedContent16AdRequestManager_requesterID;
      v24 = v30;
      v23 = v31;
      v25 = v32;
      (*(v31 + 16))(v30, v1 + OBJC_IVAR____TtC15PromotedContent16AdRequestManager_requesterID, v32);
      swift_unknownObjectRetain();
      v26 = sub_1C1B945B8();
      v27 = *(v23 + 8);
      v27(v24, v25);
      [v21 finishedWithRequestsForID_];
      swift_unknownObjectRelease();

      [*(v1 + 32) unlock];
      swift_unknownObjectRelease();

      v27((v1 + v22), v25);
      return;
    }

    while (1)
    {
      v19 = *(v1 + 16);
      v20 = sub_1C1B945B8();
      [v19 finishedWithRequestsForID_];

      v7 = v15;
      v8 = v16;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v18 = sub_1C1B953D8();
      if (v18)
      {
        v33 = v18;
        type metadata accessor for AdResponseBlock(0);
        swift_dynamicCast();
        v17 = v34;
        v15 = v7;
        v16 = v8;
        if (v34)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_18;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}