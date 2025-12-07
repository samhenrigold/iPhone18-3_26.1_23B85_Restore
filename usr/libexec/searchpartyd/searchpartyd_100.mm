uint64_t sub_100AFD8FC(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for OwnedBeaconRecord(0);
  v112 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v115 = &v100 - v13;
  v14 = __chkstk_darwin(v12);
  v116 = &v100 - v15;
  result = __chkstk_darwin(v14);
  v18 = &v100 - v17;
  v114 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_100B31E68(a4);
    }

    v118 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *(result + 16 * a4);
        v97 = result;
        v98 = *(result + 16 * (a4 - 1) + 40);
        sub_100AFF61C(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_100B31E68(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_100B31DDC(a4 - 1);
        result = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v108 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v112 + 72);
      v5 = *v114 + v24 * v23;
      v110 = *v114;
      v25 = v110;
      sub_100022A54(v110 + v24 * v23, v18, type metadata accessor for OwnedBeaconRecord);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v116;
      sub_100022A54(v26, v116, type metadata accessor for OwnedBeaconRecord);
      LODWORD(v111) = static Date.< infix(_:_:)();
      sub_100022C40(v28, type metadata accessor for OwnedBeaconRecord);
      result = sub_100022C40(v18, type metadata accessor for OwnedBeaconRecord);
      v102 = v27;
      v29 = v27 + 2;
      v113 = v24;
      v30 = v110 + v24 * (v27 + 2);
      while (v19 != v29)
      {
        sub_100022A54(v30, v18, type metadata accessor for OwnedBeaconRecord);
        v31 = v116;
        sub_100022A54(v5, v116, type metadata accessor for OwnedBeaconRecord);
        v32 = static Date.< infix(_:_:)() & 1;
        sub_100022C40(v31, type metadata accessor for OwnedBeaconRecord);
        result = sub_100022C40(v18, type metadata accessor for OwnedBeaconRecord);
        ++v29;
        v30 += v113;
        v5 += v113;
        if ((v111 & 1) != v32)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v102;
      a4 = v103;
      if (v111)
      {
        if (v19 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v19)
        {
          v101 = v6;
          v33 = v113 * (v19 - 1);
          v34 = v19;
          v35 = v19 * v113;
          v111 = v19;
          v36 = v102;
          v37 = v102;
          v38 = v102 * v113;
          do
          {
            if (v36 != --v34)
            {
              v39 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v39 + v38;
              sub_10002911C(v39 + v38, v107, type metadata accessor for OwnedBeaconRecord);
              if (v38 < v33 || v5 >= v39 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10002911C(v107, v39 + v33, type metadata accessor for OwnedBeaconRecord);
            }

            ++v36;
            v33 -= v113;
            v35 -= v113;
            v38 += v113;
          }

          while (v36 < v34);
          v6 = v101;
          a4 = v103;
          v22 = v37;
          v19 = v111;
        }
      }
    }

    v40 = v114[1];
    if (v19 < v40)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v40)
        {
          v41 = v114[1];
        }

        else
        {
          v41 = v22 + a4;
        }

        if (v41 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v41)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v108;
    }

    else
    {
      result = sub_100A5B430(0, *(v108 + 2) + 1, 1, v108);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v42 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_100A5B430((v42 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[16 * a4];
    *(v43 + 4) = v22;
    *(v43 + 5) = v20;
    v44 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_112;
          }

          v62 = &v21[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_115;
          }

          v68 = &v21[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_119;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_114;
        }

        v75 = &v21[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_117;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v83 = v21;
        v84 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v45 + 40];
        sub_100AFF61C(*v114 + *(v112 + 72) * v84, *v114 + *(v112 + 72) * *&v21[16 * v45 + 32], *v114 + *(v112 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_100B31E68(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_109;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v118 = v83;
        result = sub_100B31DDC(v45);
        v21 = v118;
        v5 = *(v118 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_110;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v57 = &v21[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_113;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_116;
      }

      if (v61 >= v53)
      {
        v79 = &v21[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v114[1];
    a4 = v103;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v86 = v19;
  v87 = v22;
  v88 = *v114;
  v89 = *(v112 + 72);
  v90 = *v114 + v89 * (v19 - 1);
  v91 = -v89;
  v102 = v87;
  v92 = v87 - v19;
  v111 = v86;
  v105 = v89;
  v106 = v41;
  v5 = v88 + v86 * v89;
LABEL_85:
  v109 = v5;
  v110 = v92;
  v113 = v90;
  while (1)
  {
    sub_100022A54(v5, v18, type metadata accessor for OwnedBeaconRecord);
    v93 = v116;
    sub_100022A54(v90, v116, type metadata accessor for OwnedBeaconRecord);
    a4 = static Date.< infix(_:_:)();
    sub_100022C40(v93, type metadata accessor for OwnedBeaconRecord);
    result = sub_100022C40(v18, type metadata accessor for OwnedBeaconRecord);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v20 = v106;
      v90 = v113 + v105;
      v92 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v22 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v88)
    {
      break;
    }

    a4 = type metadata accessor for OwnedBeaconRecord;
    v94 = v115;
    sub_10002911C(v5, v115, type metadata accessor for OwnedBeaconRecord);
    swift_arrayInitWithTakeFrontToBack();
    sub_10002911C(v94, v90, type metadata accessor for OwnedBeaconRecord);
    v90 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_100AFE260(char **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a4;
  v143 = a5;
  v130 = a1;
  v135 = type metadata accessor for BeaconStatus(0);
  v140 = *(v135 - 8);
  v10 = __chkstk_darwin(v135);
  v132 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v134 = &v119 - v13;
  v14 = __chkstk_darwin(v12);
  v15 = __chkstk_darwin(v14);
  v17 = &v119 - v16;
  v18 = __chkstk_darwin(v15);
  v19 = __chkstk_darwin(v18);
  v21 = &v119 - v20;
  v22 = __chkstk_darwin(v19);
  result = __chkstk_darwin(v22);
  v141 = a3;
  if (a3[1] < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_99:
    v21 = *v130;
    if (*v130)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_101;
    }

    goto LABEL_142;
  }

  v28 = a3[1];
  v125 = &v119 - v24;
  v126 = v27;
  v136 = v26;
  v133 = v25;
  v124 = a6;
  v29 = 0;
  v30 = _swiftEmptyArrayStorage;
  v123 = v17;
  while (1)
  {
    if (v29 + 1 >= v28)
    {
      v43 = v29 + 1;
    }

    else
    {
      v128 = v28;
      v31 = *v141;
      v32 = *(v140 + 72);
      v33 = v29;
      v34 = *v141 + v32 * (v29 + 1);
      v35 = v125;
      sub_100022A54(v34, v125, type metadata accessor for BeaconStatus);
      v139 = v31;
      v36 = v31 + v32 * v33;
      v37 = v126;
      sub_100022A54(v36, v126, type metadata accessor for BeaconStatus);
      LODWORD(v138) = v142(v35, v37);
      if (v7)
      {
        sub_100022C40(v37, type metadata accessor for BeaconStatus);
        v118 = v35;
        goto LABEL_112;
      }

      sub_100022C40(v37, type metadata accessor for BeaconStatus);
      result = sub_100022C40(v35, type metadata accessor for BeaconStatus);
      v122 = v128 - 1;
      v137 = v128 - 2;
      v38 = v139 + v32 * (v33 + 2);
      v127 = v33;
      v39 = v32;
      v139 = v32;
      while (v137 != v33)
      {
        sub_100022A54(v38, v21, type metadata accessor for BeaconStatus);
        v40 = v21;
        v41 = v136;
        sub_100022A54(v34, v136, type metadata accessor for BeaconStatus);
        v42 = v142(v40, v41);
        sub_100022C40(v41, type metadata accessor for BeaconStatus);
        result = sub_100022C40(v40, type metadata accessor for BeaconStatus);
        ++v33;
        v39 = v139;
        v38 += v139;
        v34 += v139;
        v21 = v40;
        if ((v138 ^ v42))
        {
          v43 = v33 + 1;
          goto LABEL_12;
        }
      }

      v33 = v122;
      v43 = v128;
LABEL_12:
      v29 = v127;
      if ((v138 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v43 < v127)
      {
        goto LABEL_136;
      }

      if (v127 <= v33)
      {
        v44 = v43;
        v45 = v39 * (v43 - 1);
        v46 = v44 * v39;
        v128 = v44;
        v129 = v21;
        v47 = v44;
        v48 = v127;
        v49 = v127 * v39;
        do
        {
          if (v48 != --v47)
          {
            v50 = *v141;
            if (!*v141)
            {
              goto LABEL_140;
            }

            sub_10002911C(v50 + v49, v132, type metadata accessor for BeaconStatus);
            if (v49 < v45 || v50 + v49 >= (v50 + v46))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v49 != v45)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_10002911C(v132, v50 + v45, type metadata accessor for BeaconStatus);
            v21 = v129;
            v39 = v139;
          }

          ++v48;
          v45 -= v39;
          v46 -= v39;
          v49 += v39;
        }

        while (v48 < v47);
        v17 = v123;
        v29 = v127;
        v43 = v128;
      }

      else
      {
LABEL_15:
        v17 = v123;
      }
    }

    v51 = v141[1];
    if (v43 >= v51)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v43, v29))
    {
      goto LABEL_132;
    }

    if (v43 - v29 >= v124)
    {
LABEL_36:
      v53 = v43;
      if (v43 < v29)
      {
        goto LABEL_131;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v29, v124))
    {
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (v29 + v124 >= v51)
    {
      v52 = v141[1];
    }

    else
    {
      v52 = v29 + v124;
    }

    if (v52 < v29)
    {
      goto LABEL_135;
    }

    if (v43 == v52)
    {
      goto LABEL_36;
    }

    v129 = v21;
    v101 = *v141;
    v102 = *(v140 + 72);
    v103 = *v141 + v102 * (v43 - 1);
    v138 = -v102;
    v139 = v101;
    v127 = v29;
    v104 = v29 - v43;
    v120 = v102;
    v105 = v101 + v43 * v102;
    v137 = v52;
    v131 = v30;
    do
    {
      v121 = v105;
      v122 = v104;
      v128 = v103;
      while (1)
      {
        sub_100022A54(v105, v17, type metadata accessor for BeaconStatus);
        v106 = v17;
        v107 = v133;
        sub_100022A54(v103, v133, type metadata accessor for BeaconStatus);
        v108 = v142(v106, v107);
        if (v7)
        {
          sub_100022C40(v107, type metadata accessor for BeaconStatus);
          v118 = v106;
LABEL_112:
          sub_100022C40(v118, type metadata accessor for BeaconStatus);
        }

        v109 = v108;
        v110 = v43;
        sub_100022C40(v107, type metadata accessor for BeaconStatus);
        result = sub_100022C40(v106, type metadata accessor for BeaconStatus);
        v17 = v106;
        if ((v109 & 1) == 0)
        {
          break;
        }

        if (!v139)
        {
          goto LABEL_138;
        }

        v111 = v134;
        sub_10002911C(v105, v134, type metadata accessor for BeaconStatus);
        swift_arrayInitWithTakeFrontToBack();
        sub_10002911C(v111, v103, type metadata accessor for BeaconStatus);
        v103 += v138;
        v105 += v138;
        v112 = __CFADD__(v104++, 1);
        v43 = v110;
        v7 = 0;
        v30 = v131;
        if (v112)
        {
          goto LABEL_95;
        }
      }

      v7 = 0;
      v30 = v131;
LABEL_95:
      ++v43;
      v103 = v128 + v120;
      v104 = v122 - 1;
      v105 = v121 + v120;
      v53 = v137;
    }

    while (v43 != v137);
    v21 = v129;
    v29 = v127;
    if (v137 < v127)
    {
      goto LABEL_131;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v55 = *(v30 + 2);
    v54 = *(v30 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_100A5B430((v54 > 1), v55 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v56;
    v57 = &v30[16 * v55];
    *(v57 + 4) = v29;
    *(v57 + 5) = v53;
    v137 = v53;
    v58 = *v130;
    if (!*v130)
    {
      goto LABEL_141;
    }

    if (v55)
    {
      break;
    }

LABEL_3:
    v28 = v141[1];
    v29 = v137;
    if (v137 >= v28)
    {
      goto LABEL_99;
    }
  }

  while (2)
  {
    v59 = v56 - 1;
    if (v56 >= 4)
    {
      v64 = &v30[16 * v56 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_118;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_119;
      }

      v71 = &v30[16 * v56];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_121;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_124;
      }

      if (v75 >= v67)
      {
        v93 = &v30[16 * v59 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_130;
        }

        if (v62 < v96)
        {
          v59 = v56 - 2;
        }
      }

      else
      {
LABEL_56:
        if (v63)
        {
          goto LABEL_120;
        }

        v76 = &v30[16 * v56];
        v78 = *v76;
        v77 = *(v76 + 1);
        v79 = __OFSUB__(v77, v78);
        v80 = v77 - v78;
        v81 = v79;
        if (v79)
        {
          goto LABEL_123;
        }

        v82 = &v30[16 * v59 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_126;
        }

        if (__OFADD__(v80, v85))
        {
          goto LABEL_127;
        }

        if (v80 + v85 < v62)
        {
          goto LABEL_70;
        }

        if (v62 < v85)
        {
          v59 = v56 - 2;
        }
      }
    }

    else
    {
      if (v56 == 3)
      {
        v60 = *(v30 + 4);
        v61 = *(v30 + 5);
        v70 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        v63 = v70;
        goto LABEL_56;
      }

      v86 = &v30[16 * v56];
      v88 = *v86;
      v87 = *(v86 + 1);
      v70 = __OFSUB__(v87, v88);
      v80 = v87 - v88;
      v81 = v70;
LABEL_70:
      if (v81)
      {
        goto LABEL_122;
      }

      v89 = &v30[16 * v59];
      v91 = *(v89 + 4);
      v90 = *(v89 + 5);
      v70 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v70)
      {
        goto LABEL_125;
      }

      if (v92 < v80)
      {
        goto LABEL_3;
      }
    }

    v97 = v59 - 1;
    if (v59 - 1 < v56)
    {
      if (!*v141)
      {
        goto LABEL_137;
      }

      v98 = *&v30[16 * v97 + 32];
      v99 = *&v30[16 * v59 + 40];
      sub_100AFFB4C(*v141 + *(v140 + 72) * v98, *v141 + *(v140 + 72) * *&v30[16 * v59 + 32], *v141 + *(v140 + 72) * v99, v58, v142, v143);
      if (v7)
      {
      }

      if (v99 < v98)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_100B31E68(v30);
      }

      if (v97 >= *(v30 + 2))
      {
        goto LABEL_117;
      }

      v100 = &v30[16 * v97];
      *(v100 + 4) = v98;
      *(v100 + 5) = v99;
      v144 = v30;
      result = sub_100B31DDC(v59);
      v30 = v144;
      v56 = *(v144 + 2);
      if (v56 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

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
  result = sub_100B31E68(v30);
  v30 = result;
LABEL_101:
  v144 = v30;
  v113 = *(v30 + 2);
  if (v113 < 2)
  {
  }

  v114 = v142;
  while (*v141)
  {
    v115 = *&v30[16 * v113];
    v116 = *&v30[16 * v113 + 24];
    sub_100AFFB4C(*v141 + *(v140 + 72) * v115, *v141 + *(v140 + 72) * *&v30[16 * v113 + 16], *v141 + *(v140 + 72) * v116, v21, v114, v143);
    if (v7)
    {
    }

    if (v116 < v115)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_100B31E68(v30);
    }

    if (v113 - 2 >= *(v30 + 2))
    {
      goto LABEL_129;
    }

    v117 = &v30[16 * v113];
    *v117 = v115;
    *(v117 + 1) = v116;
    v144 = v30;
    result = sub_100B31DDC(v113 - 1);
    v30 = v144;
    v113 = *(v144 + 2);
    if (v113 <= 1)
    {
    }
  }

LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_100AFED58(_BYTE *a1, _BYTE *a2, _BYTE *a3, _BYTE *a4)
{
  v84 = sub_1000BC4D4(&qword_1016B5598, &unk_1013D6AA0);
  v8 = __chkstk_darwin(v84);
  v78 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v83 = &v73 - v11;
  v12 = __chkstk_darwin(v10);
  v81 = &v73 - v13;
  __chkstk_darwin(v12);
  v15 = &v73 - v14;
  v92 = type metadata accessor for BeaconEstimatedLocation(0);
  v16 = __chkstk_darwin(v92);
  v86 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v85 = &v73 - v19;
  v20 = __chkstk_darwin(v18);
  v88 = &v73 - v21;
  result = __chkstk_darwin(v20);
  v87 = &v73 - v23;
  v25 = *(v24 + 72);
  if (!v25)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_68;
  }

  v26 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_69;
  }

  v27 = (a2 - a1) / v25;
  v95 = a1;
  v94 = a4;
  v82 = v25;
  if (v27 >= v26 / v25)
  {
    v29 = v26 / v25 * v25;
    if (a4 < a2 || &a2[v29] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v50 = &a4[v29];
    if (v29 >= 1)
    {
      v51 = -v82;
      v52 = v50;
      v89 = a4;
      v90 = a1;
      v76 = -v82;
      while (2)
      {
        while (1)
        {
          v74 = v50;
          v53 = a2;
          a2 += v51;
          v91 = a2;
          v77 = v53;
          while (1)
          {
            if (v53 <= a1)
            {
              v95 = v53;
              v93 = v74;
              goto LABEL_66;
            }

            v87 = a3;
            v88 = v52;
            v75 = v50;
            v80 = (v52 + v51);
            v54 = v85;
            sub_100022A54(v52 + v51, v85, type metadata accessor for BeaconEstimatedLocation);
            v55 = v86;
            sub_100022A54(a2, v86, type metadata accessor for BeaconEstimatedLocation);
            v57 = *(v92 + 40);
            v56 = *(v92 + 44);
            LODWORD(v82) = *(v54 + v56);
            LODWORD(v81) = *(v55 + v56);
            v58 = v83;
            v59 = v84;
            *v83 = v82;
            v60 = *(v59 + 48);
            v61 = type metadata accessor for Date();
            v62 = *(*(v61 - 8) + 16);
            v79 = v60;
            v63 = &v58[v60];
            v64 = v78;
            v65 = v54 + v57;
            v66 = v81;
            v62(v63, v65, v61);
            *v64 = v66;
            v62(&v64[*(v59 + 48)], v55 + v57, v61);
            v67 = v82;
            if (v82 == v66)
            {
              sub_10000768C(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
              v68 = v83;
              v69 = dispatch thunk of static Comparable.> infix(_:_:)();
              sub_10000B3A8(v64, &qword_1016B5598, &unk_1013D6AA0);
              sub_10000B3A8(v68, &qword_1016B5598, &unk_1013D6AA0);
            }

            else
            {
              sub_10000B3A8(v83, &qword_1016B5598, &unk_1013D6AA0);
              sub_10000B3A8(v64, &qword_1016B5598, &unk_1013D6AA0);
              v69 = v66 < v67;
            }

            v51 = v76;
            v70 = v87;
            a3 = &v87[v76];
            sub_100022C40(v86, type metadata accessor for BeaconEstimatedLocation);
            sub_100022C40(v85, type metadata accessor for BeaconEstimatedLocation);
            a1 = v90;
            a2 = v91;
            v52 = v88;
            v71 = v89;
            if (v69)
            {
              break;
            }

            v72 = v80;
            v50 = v80;
            if (v70 < v88 || a3 >= v88)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v70 != v88)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v52 = v50;
            v53 = v77;
            if (v72 <= v71)
            {
              a2 = v77;
              goto LABEL_65;
            }
          }

          if (v70 < v77 || a3 >= v77)
          {
            break;
          }

          v50 = v75;
          if (v70 != v77)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v52 <= v71)
          {
            goto LABEL_65;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v50 = v75;
        if (v52 > v71)
        {
          continue;
        }

        break;
      }
    }

LABEL_65:
    v95 = a2;
    v93 = v50;
  }

  else
  {
    v28 = v27 * v25;
    if (a4 < a1 || &a1[v28] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v83 = &a4[v28];
    v93 = &a4[v28];
    if (v28 >= 1 && a2 < a3)
    {
      v79 = v15;
      v80 = a3;
      do
      {
        v90 = a1;
        v91 = a2;
        v31 = v87;
        sub_100022A54(a2, v87, type metadata accessor for BeaconEstimatedLocation);
        v89 = a4;
        v32 = v88;
        sub_100022A54(a4, v88, type metadata accessor for BeaconEstimatedLocation);
        v33 = *(v92 + 44);
        v85 = *(v92 + 40);
        LODWORD(v86) = *(v31 + v33);
        v34 = *(v32 + v33);
        *v15 = v86;
        v35 = v84;
        v36 = *(v84 + 48);
        v37 = type metadata accessor for Date();
        v38 = *(*(v37 - 8) + 16);
        v39 = &v15[v36];
        v40 = v85;
        v41 = v31 + v85;
        v42 = v81;
        v38(v39, v41, v37);
        *v42 = v34;
        v43 = v32 + v40;
        v44 = v86;
        v38(&v42[*(v35 + 48)], v43, v37);
        if (v44 == v34)
        {
          sub_10000768C(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v45 = v79;
          v46 = dispatch thunk of static Comparable.> infix(_:_:)();
          sub_10000B3A8(v42, &qword_1016B5598, &unk_1013D6AA0);
          sub_10000B3A8(v45, &qword_1016B5598, &unk_1013D6AA0);
          v15 = v45;
        }

        else
        {
          v15 = v79;
          sub_10000B3A8(v79, &qword_1016B5598, &unk_1013D6AA0);
          sub_10000B3A8(v42, &qword_1016B5598, &unk_1013D6AA0);
          v46 = v34 < v44;
        }

        sub_100022C40(v88, type metadata accessor for BeaconEstimatedLocation);
        sub_100022C40(v87, type metadata accessor for BeaconEstimatedLocation);
        v47 = v90;
        a2 = v91;
        a4 = v89;
        v48 = v80;
        v49 = v82;
        if (v46)
        {
          if (v90 < v91 || v90 >= &v91[v82])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v90 != v91)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v49;
        }

        else
        {
          if (v90 < v89 || v90 >= &v89[v82])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v90 != v89)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v94 = &a4[v49];
          a4 += v49;
        }

        a1 = (v47 + v49);
        v95 = a1;
      }

      while (a4 < v83 && a2 < v48);
    }
  }

LABEL_66:
  sub_10060AA9C(&v95, &v94, &v93);
  return 1;
}

uint64_t sub_100AFF61C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for OwnedBeaconRecord(0);
  v8 = __chkstk_darwin(v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
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

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_100022A54(v30, v43, type metadata accessor for OwnedBeaconRecord);
          v32 = v44;
          sub_100022A54(v27, v44, type metadata accessor for OwnedBeaconRecord);
          v33 = static Date.< infix(_:_:)();
          sub_100022C40(v32, type metadata accessor for OwnedBeaconRecord);
          sub_100022C40(v31, type metadata accessor for OwnedBeaconRecord);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
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

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_100022A54(a2, v43, type metadata accessor for OwnedBeaconRecord);
        v21 = v44;
        sub_100022A54(a4, v44, type metadata accessor for OwnedBeaconRecord);
        v22 = static Date.< infix(_:_:)();
        sub_100022C40(v21, type metadata accessor for OwnedBeaconRecord);
        sub_100022C40(v20, type metadata accessor for OwnedBeaconRecord);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_10060AB44(&v48, &v47, &v46);
  return 1;
}

unint64_t sub_100AFFB4C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v54 = a6;
  v55 = a5;
  v56 = a3;
  v53 = type metadata accessor for BeaconStatus(0);
  v11 = __chkstk_darwin(v53);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v45 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v45 - v18;
  result = __chkstk_darwin(v17);
  v22 = &v45 - v21;
  v52 = *(v23 + 72);
  if (!v52)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  result = a1;
  if (a2 - a1 == 0x8000000000000000 && v52 == -1)
  {
    goto LABEL_66;
  }

  v24 = v56 - a2;
  if (v56 - a2 != 0x8000000000000000 || v52 != -1)
  {
    v25 = (a2 - a1) / v52;
    v59 = a1;
    v58 = a4;
    v51 = a1;
    if (v25 < v24 / v52)
    {
      v26 = v25 * v52;
      if (a4 < result || result + v26 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == result)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      result = v51;
LABEL_17:
      v51 = a4 + v26;
      v57 = a4 + v26;
      if (v26 >= 1 && a2 < v56)
      {
        while (1)
        {
          v29 = result;
          sub_100022A54(a2, v22, type metadata accessor for BeaconStatus);
          sub_100022A54(a4, v19, type metadata accessor for BeaconStatus);
          v30 = v55(v22, v19);
          if (v7)
          {
            break;
          }

          v31 = v30;
          v32 = a4;
          sub_100022C40(v19, type metadata accessor for BeaconStatus);
          sub_100022C40(v22, type metadata accessor for BeaconStatus);
          if (v31)
          {
            v33 = v52;
            v34 = v29;
            if (v29 < a2 || v29 >= a2 + v52)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v29;
              a2 += v33;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v29 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
                v34 = v29;
              }

              a2 += v33;
            }
          }

          else
          {
            v35 = a4;
            v33 = v52;
            a4 += v52;
            v34 = v29;
            if (v29 < v32 || v29 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v29;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v29 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
                v34 = v29;
              }
            }

            v58 = a4;
          }

          result = v34 + v33;
          v59 = result;
          if (a4 >= v51 || a2 >= v56)
          {
            goto LABEL_64;
          }
        }

        sub_100022C40(v19, type metadata accessor for BeaconStatus);
        sub_100022C40(v22, type metadata accessor for BeaconStatus);
      }

LABEL_64:
      sub_10060ABA4(&v59, &v58, &v57);
      return 1;
    }

    v27 = v24 / v52 * v52;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_40:
        v36 = a4 + v27;
        if (v27 >= 1)
        {
          v37 = -v52;
          v38 = v36;
          v47 = v16;
          v48 = v13;
          do
          {
            v45 = v36;
            v39 = a2;
            v49 = a2;
            v50 = a2 + v37;
            while (1)
            {
              v40 = v56;
              if (v39 <= result)
              {
                v59 = v39;
                v57 = v45;
                goto LABEL_64;
              }

              v46 = v36;
              v52 = v38;
              v41 = v38 + v37;
              sub_100022A54(v38 + v37, v16, type metadata accessor for BeaconStatus);
              sub_100022A54(v50, v13, type metadata accessor for BeaconStatus);
              v42 = v55(v16, v13);
              if (v7)
              {
                sub_100022C40(v13, type metadata accessor for BeaconStatus);
                sub_100022C40(v16, type metadata accessor for BeaconStatus);
                v59 = v49;
                v57 = v46;
                goto LABEL_64;
              }

              v43 = v42;
              v56 = v40 + v37;
              sub_100022C40(v13, type metadata accessor for BeaconStatus);
              sub_100022C40(v16, type metadata accessor for BeaconStatus);
              if (v43)
              {
                break;
              }

              v36 = v41;
              if (v40 < v52 || v56 >= v52)
              {
                swift_arrayInitWithTakeFrontToBack();
                v7 = 0;
              }

              else
              {
                v7 = 0;
                if (v40 != v52)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v38 = v41;
              result = v51;
              v16 = v47;
              v13 = v48;
              v39 = v49;
              if (v41 <= a4)
              {
                a2 = v49;
                goto LABEL_63;
              }
            }

            if (v40 < v49 || v56 >= v49)
            {
              a2 = v50;
              swift_arrayInitWithTakeFrontToBack();
              v7 = 0;
              v36 = v46;
            }

            else
            {
              v44 = v40 == v49;
              a2 = v50;
              v7 = 0;
              v36 = v46;
              if (!v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = v51;
            v38 = v52;
            v16 = v47;
            v13 = v48;
          }

          while (v52 > a4);
        }

LABEL_63:
        v59 = a2;
        v57 = v36;
        goto LABEL_64;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = v51;
    goto LABEL_40;
  }

LABEL_67:
  __break(1u);
  return result;
}

void *sub_100B00194(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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

    v8 = sub_10061B7B8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_100B00224(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v43 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a3 + 32);
  v11 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v35 = v11;
    v41 = v10;
    v42 = v8;
    v46 = v4;
    v37 = &v34;
    __chkstk_darwin(v8);
    v36 = &v34 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v12);
    v13 = 0;
    v44 = a3;
    v15 = *(a3 + 56);
    a3 += 56;
    v14 = v15;
    v16 = 1 << *(a3 - 24);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v14;
    v10 = ((v16 + 63) >> 6);
    v38 = 0;
    v39 = v7 + 16;
    v40 = (v7 + 8);
    while (v18)
    {
      v19 = __clz(__rbit64(v18));
      v45 = (v18 - 1) & v18;
LABEL_12:
      v11 = v19 | (v13 << 6);
      v22 = *(v44 + 48) + *(v7 + 72) * v11;
      v4 = v7;
      v23 = *(v7 + 16);
      v24 = v41;
      v25 = v42;
      v23(v41, v22, v42);
      v26 = v46;
      v27 = v43(v24);
      v46 = v26;
      if (v26)
      {
        (*v40)(v24, v25);

        return swift_willThrow();
      }

      v28 = v27;
      v8 = (*v40)(v24, v25);
      v7 = v4;
      v18 = v45;
      if (v28)
      {
        *&v36[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
          return sub_10060AF64(v36, v35, v38, v44);
        }
      }
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        return sub_10060AF64(v36, v35, v38, v44);
      }

      v21 = *(a3 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v45 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v31 = v8;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v8 = v31;
  }

  v32 = swift_slowAlloc();
  v33 = sub_100B00194(v32, v11, a3, v43);

  if (!v4)
  {
    return v33;
  }

  return result;
}

id sub_100B005BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v333 = a2;
  v292 = sub_1000BC4D4(&unk_101698C20, &qword_101390748);
  __chkstk_darwin(v292);
  v294 = &v281 - v7;
  v293 = type metadata accessor for KeyDropLostItemDates(0);
  v291 = *(v293 - 8);
  __chkstk_darwin(v293);
  v286 = &v281 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  __chkstk_darwin(v9 - 8);
  v288 = &v281 - v10;
  v11 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v11 - 8);
  v323 = &v281 - v12;
  v324 = type metadata accessor for SharedBeaconRecord(0);
  v301 = *(v324 - 8);
  v13 = __chkstk_darwin(v324);
  v285 = &v281 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v281 - v16;
  v18 = __chkstk_darwin(v15);
  v289 = &v281 - v19;
  v290 = v20;
  __chkstk_darwin(v18);
  v325 = &v281 - v21;
  v22 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v23 = __chkstk_darwin(v22 - 8);
  v287 = &v281 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v299 = &v281 - v25;
  v26 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v26 - 8);
  v321 = &v281 - v27;
  v322 = type metadata accessor for OwnedBeaconRecord(0);
  v320 = *(v322 - 8);
  __chkstk_darwin(v322);
  v29 = &v281 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v316);
  v317 = &v281 - v30;
  v318 = type metadata accessor for BeaconNamingRecord(0);
  v315 = *(v318 - 8);
  __chkstk_darwin(v318);
  v326 = &v281 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v32 - 8);
  v314 = &v281 - v33;
  v313 = type metadata accessor for BeaconProductInfoRecord(0);
  v312 = *(v313 - 8);
  __chkstk_darwin(v313);
  v298 = &v281 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  __chkstk_darwin(v35 - 8);
  v310 = &v281 - v36;
  v311 = type metadata accessor for KeyAlignmentRecord(0);
  v309 = *(v311 - 8);
  __chkstk_darwin(v311);
  v297 = &v281 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v39 = __chkstk_darwin(v38 - 8);
  v284 = &v281 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v308 = &v281 - v41;
  v304 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v42 = __chkstk_darwin(v304);
  v307 = &v281 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v305 = (&v281 - v45);
  __chkstk_darwin(v44);
  v336 = &v281 - v46;
  v303 = sub_1000BC4D4(&unk_1016AA420, &unk_1013BCFE0);
  v47 = __chkstk_darwin(v303);
  v49 = &v281 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v331 = &v281 - v50;
  v51 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  __chkstk_darwin(v51 - 8);
  v302 = (&v281 - v52);
  v340 = type metadata accessor for Date();
  v332 = *(v340 - 8);
  v53 = __chkstk_darwin(v340);
  v55 = &v281 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v53);
  v283 = &v281 - v57;
  v58 = __chkstk_darwin(v56);
  v306 = &v281 - v59;
  v60 = __chkstk_darwin(v58);
  v329 = &v281 - v61;
  __chkstk_darwin(v60);
  v327 = &v281 - v62;
  v347 = type metadata accessor for UUID();
  v328 = *(v347 - 8);
  v63 = __chkstk_darwin(v347);
  v346 = &v281 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v66 = &v281 - v65;
  v360[3] = a3;
  v360[4] = a4;
  v67 = sub_1000280DC(v360);
  (*(*(a3 - 8) + 16))(v67, a1, a3);
  v343 = [objc_allocWithZone(SPBeacon) init];
  v68 = *(a4 + 48);
  v335 = (a4 + 48);
  v334 = v68;
  v69 = v68(a3, a4);
  v70 = *(a4 + 56);
  v345 = v67;
  v344 = a3;
  v339 = a4;
  v338 = a4 + 56;
  v337 = v70;
  v71 = v70(a3, a4);
  v72 = sub_100314604(v69, v71);
  v330 = v66;
  v282 = v17;
  v281 = v55;
  v300 = v29;
  v319 = v49;
  if (v73 >> 60 == 15)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    sub_1000076D4(v74, qword_10177BA08);
    sub_10001F280(v360, &v355);
    sub_10001F280(v360, &v350);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 134218240;
      sub_1000035D0(&v355, *(&v356 + 1));
      v78 = v344;
      v79 = v339;
      v80 = v334(v344, v339);
      sub_100007BAC(&v355);
      *(v77 + 4) = v80;
      *(v77 + 12) = 2048;
      sub_1000035D0(&v350, *(&v351 + 1));
      v81 = v337(v78, v79);
      sub_100007BAC(&v350);
      *(v77 + 14) = v81;
      _os_log_impl(&_mh_execute_header, v75, v76, "Unable to create AccessoryProductData from %ld/%ld", v77, 0x16u);
    }

    else
    {
      sub_100007BAC(&v350);
      sub_100007BAC(&v355);
    }

    UUID.init(uuid:)();
  }

  else
  {
    v82 = v73;
    v83 = v72;
    if (qword_101694570 != -1)
    {
      swift_once();
    }

    v355 = xmmword_10169DAA8;
    sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
    Data.append(_:)();
    v84 = v355;
    v350 = v355;
    sub_100017D5C(v355, *(&v355 + 1));
    sub_1000E0A3C();
    DataProtocol.stableUUID.getter();
    sub_100006654(v83, v82);
    sub_100016590(v84, *(&v84 + 1));
    sub_100016590(v84, *(&v84 + 1));
  }

  v85 = v339;
  v342 = *(*(v339 + 8) + 8);
  v86 = (v342 + 32);
  v341 = *(v342 + 32);
  v87 = v346;
  v88 = v344;
  v341(v344);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v90 = v328 + 8;
  v348 = *(v328 + 8);
  v91 = v347;
  v348(v87, v347);
  v92 = v343;
  [v343 setIdentifier:isa];

  (*(v85 + 16))(v88, v85);
  v93 = String._bridgeToObjectiveC()();

  [v92 setModel:v93];

  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr, &protocol conformance descriptor for NSObject);
  v94 = Set._bridgeToObjectiveC()().super.isa;
  [v92 setShares:v94];

  (*(v85 + 24))(v88, v85);
  v95 = String._bridgeToObjectiveC()();

  [v92 setSystemVersion:v95];

  v96 = UUID._bridgeToObjectiveC()().super.isa;
  [v92 setProductUUID:v96];

  [v92 setVendorId:{v334(v88, v85)}];
  [v92 setProductId:{v337(v88, v85)}];
  v97 = *(v85 + 192);
  v98 = v327;
  v296 = v85 + 192;
  v295 = v97;
  v97(v88, v85);
  v99 = Date._bridgeToObjectiveC()().super.isa;
  v100 = *(v332 + 8);
  v334 = (v332 + 8);
  v335 = v100;
  v100(v98, v340);
  [v92 setPairingDate:v99];

  v101 = *(v85 + 184);
  v102 = v85;
  v103 = v346;
  v104 = v101(v88, v102);
  [v92 setType:v104];

  v337 = v86;
  (v341)(v88, v342);
  v105 = v302;
  sub_100ABD87C(v302);
  v338 = v90;
  v348(v103, v91);
  v106 = type metadata accessor for LostModeRecord(0);
  if ((*(*(v106 - 8) + 48))(v105, 1, v106) == 1)
  {
    sub_10000B3A8(v105, &unk_1016A99E0, &qword_1013A07B0);
    v107 = 0;
  }

  else
  {
    v107 = sub_100E78AA8();
    sub_100022C40(v105, type metadata accessor for LostModeRecord);
  }

  v108 = v319;
  v109 = v303;
  [v92 setLostModeInfo:{v107, v281}];

  v110 = *(v109 + 48);
  (v341)(v88, v342);
  v111 = v92;
  v112 = v333;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v113 = sub_100035730(v103, 0, 0);
  v114 = v331;
  v115 = sub_10003ABC0(&v331[v110], v103, v113, 1);

  v348(v103, v347);
  *v114 = v115 & 1;
  [v111 setConnected:?];
  sub_1000D2A70(v114, v108, &unk_1016AA420, &unk_1013BCFE0);
  v116 = *(v109 + 48);
  v117 = v332;
  v118 = v332 + 48;
  v119 = *(v332 + 48);
  v120 = v340;
  v121 = (v119)(v108 + v116, 1, v340);
  v122 = 0;
  v123 = v310;
  if (v121 != 1)
  {
    v122 = Date._bridgeToObjectiveC()().super.isa;
    v335(v108 + v116, v120);
  }

  v124 = v343;
  [v343 setConnectedStateExpiryDate:v122];

  [v124 setIsAppleAudioAccessory:(*(v339 + 120))(v344) & 1];
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_10107485C(v355);

  Date.init(timeIntervalSinceNow:)();
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v125 = v355;
  sub_10001F280(v360, &v355);
  v126 = swift_allocObject();
  *(v126 + 16) = v125;
  sub_10000A748(&v355, v126 + 24);
  v319 = v125;

  v127 = v336;
  unsafeFromAsyncTask<A>(_:)();

  v128 = v305;
  sub_1000D2A70(v127, v305, &unk_1016AF8A0, &unk_10139D7C0);
  v129 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v130 = *(*(v129 - 8) + 48);
  if (v130(v128, 1, v129) == 1)
  {
    sub_10000B3A8(v128, &unk_1016AF8A0, &unk_10139D7C0);
    v131 = 1;
  }

  else
  {
    v132 = v128;
    v131 = *v128;
    sub_10000B3A8(v132, &unk_1016C8FC0, &unk_10139D7D0);
  }

  [v343 setKeySyncLastObservedIndex:v131];
  v133 = v307;
  sub_1000D2A70(v336, v307, &unk_1016AF8A0, &unk_10139D7C0);
  v134 = v130(v133, 1, v129);
  v303 = v118;
  v302 = v119;
  if (v134 == 1)
  {
    sub_10000B3A8(v133, &unk_1016AF8A0, &unk_10139D7C0);
    v135 = v308;
    v136 = v340;
    (*(v117 + 56))(v308, 1, 1, v340);
    v137 = v306;
    v295(v344, v339);
    v138 = (v119)(v135, 1, v136);
    v139 = v347;
    if (v138 != 1)
    {
      sub_10000B3A8(v135, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    v140 = v133 + *(v129 + 36);
    v141 = v133;
    v142 = v308;
    v136 = v340;
    (*(v117 + 16))(v308, v140, v340);
    sub_10000B3A8(v141, &unk_1016C8FC0, &unk_10139D7D0);
    (*(v117 + 56))(v142, 0, 1, v136);
    v143 = *(v117 + 32);
    v137 = v306;
    v143(v306, v142, v136);
    v139 = v347;
  }

  v144 = Date._bridgeToObjectiveC()().super.isa;
  v145 = v137;
  v146 = v335;
  v335(v145, v136);
  v147 = v343;
  [v343 setKeySyncLastIndexObservationDate:v144];

  [v147 setKeySyncWildIndexFallback:1];
  v148 = v346;
  (v341)(v344, v342);
  sub_100B2DA4C(v123);
  v348(v148, v139);
  v149 = v311;
  if ((*(v309 + 48))(v123, 1, v311) == 1)
  {
    sub_10000B3A8(v123, &qword_10169F328, &unk_1013CB040);
    [v147 setKeyAlignmentLastObservedIndex:0];
    v150 = v327;
    static Date.distantPast.getter();
    v151 = Date._bridgeToObjectiveC()().super.isa;
    v146(v150, v136);
    [v147 setKeyAlignmentLastIndexObservationDate:v151];
  }

  else
  {
    v152 = v297;
    sub_10002911C(v123, v297, type metadata accessor for KeyAlignmentRecord);
    [v147 setKeyAlignmentLastObservedIndex:*(v152 + *(v149 + 28))];
    v153 = Date._bridgeToObjectiveC()().super.isa;
    [v147 setKeyAlignmentLastIndexObservationDate:v153];

    sub_100022C40(v152, type metadata accessor for KeyAlignmentRecord);
  }

  v154 = [v147 identifier];
  v155 = v346;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v156 = v314;
  sub_100AC1584(v155, v314);
  v348(v155, v347);
  v157 = (*(v312 + 48))(v156, 1, v313);
  v158 = v344;
  v159 = v317;
  if (v157 == 1)
  {
    sub_10000B3A8(v156, &unk_1016AF8C0, &unk_1013A07A0);
  }

  else
  {
    v160 = v298;
    sub_10002911C(v156, v298, type metadata accessor for BeaconProductInfoRecord);
    v161 = sub_10083B890();
    [v147 setAccessoryProductInfo:v161];

    sub_100022C40(v160, type metadata accessor for BeaconProductInfoRecord);
  }

  v162 = v346;
  v163 = (v341)(v158, v342);
  __chkstk_darwin(v163);
  QueueSynchronizer.conditionalSync<A>(_:)();
  v348(v162, v347);
  v164 = v318;
  if ((*(v315 + 48))(v159, 1, v318) != 1)
  {
    v178 = v326;
    sub_10002911C(v159, v326, type metadata accessor for BeaconNamingRecord);
    v179 = String._bridgeToObjectiveC()();
    [v147 setName:v179];

    v180 = v164;
    v181 = *(v178 + *(v164 + 28));
    v182 = (*(v339 + 208))(v181, v158);
    v183 = v182;
    v184 = v335;
    if (v181 == SPBeaconRoleIdOther && *(v326 + *(v180 + 36) + 8) && v182)
    {
      v185 = v347;
      v186 = [v182 role];
      v187 = v324;
      if (!v186)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v186 = String._bridgeToObjectiveC()();
      }

      v188 = objc_allocWithZone(SPBeaconRole);
      v189 = String._bridgeToObjectiveC()();
      v190 = [v188 initWithRoleId:v181 role:v186 roleEmoji:v189];

      v147 = v343;
      [v343 setRole:v190];

      v191 = v185;
      v184 = v335;
    }

    else
    {
      [v147 setRole:v182];
      v187 = v324;
      v191 = v347;
    }

    sub_100022C40(v326, type metadata accessor for BeaconNamingRecord);
    v192 = v323;
    v193 = v322;
    goto LABEL_58;
  }

  sub_10000B3A8(v159, &unk_1016B29E0, &unk_1013B70E0);
  sub_10001F280(v360, &v349);
  v165 = swift_allocObject();
  *(v165 + 16) = v112;
  sub_10000A748(&v349, v165 + 24);

  sub_1000BC4D4(&unk_1016AF910, &unk_10138C4C0);
  unsafeFromAsyncTask<A>(_:)();

  v355 = v350;
  v356 = v351;
  v357 = v352;
  v358 = v353;
  v166 = v354;
  v359 = v354;
  if (*(&v350 + 1))
  {
    v167 = v347;
    v168 = v357;
    v169 = v158;
    v346 = *(&v358 + 1);
    v170 = v356;
    v171 = String._bridgeToObjectiveC()();
    [v147 setName:v171];

    v172 = (*(v339 + 208))(v170, v169);
    v173 = v172;
    if (v170 == SPBeaconRoleIdOther && v168 && v172)
    {

      v174 = [v173 role];
      if (!v174)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v174 = String._bridgeToObjectiveC()();
      }

      v175 = objc_allocWithZone(SPBeaconRole);
      v176 = String._bridgeToObjectiveC()();

      v177 = [v175 initWithRoleId:v170 role:v174 roleEmoji:v176];

      v147 = v343;
      [v343 setRole:v177];
    }

    else
    {
      [v147 setRole:v172];
    }

    v187 = v324;
    v193 = v322;
    v191 = v167;
    if (v166)
    {

      v194 = String._bridgeToObjectiveC()();
      sub_10000B3A8(&v355, &unk_1016AF910, &unk_10138C4C0);
    }

    else
    {
      sub_10000B3A8(&v355, &unk_1016AF910, &unk_10138C4C0);
      v194 = 0;
    }

    v184 = v335;
    [v147 setSerialNumber:v194];

    v192 = v323;
LABEL_58:
    v206 = v321;
    goto LABEL_59;
  }

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v195 = type metadata accessor for Logger();
  sub_1000076D4(v195, qword_10177BA08);
  sub_10001F280(v360, &v350);
  v196 = Logger.logObject.getter();
  v197 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v196, v197))
  {
    v198 = swift_slowAlloc();
    v199 = swift_slowAlloc();
    *&v349 = v199;
    *v198 = 141558275;
    *(v198 + 4) = 1752392040;
    *(v198 + 12) = 2081;
    sub_1000035D0(&v350, *(&v351 + 1));
    v200 = v346;
    (v341)(v158, v342);
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v201 = v347;
    v202 = dispatch thunk of CustomStringConvertible.description.getter();
    v204 = v203;
    v348(v200, v201);
    sub_100007BAC(&v350);
    v205 = sub_1000136BC(v202, v204, &v349);
    v147 = v343;

    *(v198 + 14) = v205;
    _os_log_impl(&_mh_execute_header, v196, v197, "No beacon name record %{private,mask.hash}s. Fallback to custom role.", v198, 0x16u);
    sub_100007BAC(v199);
  }

  else
  {

    sub_100007BAC(&v350);
  }

  v187 = v324;
  v184 = v335;
  v192 = v323;
  v193 = v322;
  v206 = v321;
  v229 = String._bridgeToObjectiveC()();
  [v147 setName:v229];

  v191 = v347;
LABEL_59:
  sub_10001F280(v360, &v355);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v207 = swift_dynamicCast();
  v208 = *(v320 + 56);
  if (!v207)
  {
    v208(v206, 1, 1, v193);
    sub_10000B3A8(v206, &unk_1016A9A20, &qword_10138B280);
    sub_10001F280(v360, &v355);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_10000B3A8(v336, &unk_1016AF8A0, &unk_10139D7C0);
      v184(v329, v340);
      sub_10000B3A8(v331, &unk_1016AA420, &unk_1013BCFE0);
      v348(v330, v191);
      (*(v301 + 56))(v192, 1, 1, v187);
      sub_10000B3A8(v192, &unk_101698C30, &unk_101392630);
      goto LABEL_95;
    }

    (*(v301 + 56))(v192, 0, 1, v187);
    v213 = v192;
    v214 = v325;
    sub_10002911C(v213, v325, type metadata accessor for SharedBeaconRecord);
    v215 = String._bridgeToObjectiveC()();
    [v147 setStableIdentifier:v215];

    v216 = sub_100EB3708(*(v214 + v187[7]), *(v214 + v187[7] + 8), *(v214 + v187[7] + 16));
    [v147 setOwner:v216];

    [v147 setAccepted:*(v214 + v187[13])];
    v217 = String._bridgeToObjectiveC()();
    [v147 setCorrelationIdentifier:v217];

    [v147 setInternalShareType:*(v214 + v187[16])];
    v218 = v214 + v187[20];
    v219 = v288;
    sub_1000D2A70(v218, v288, &unk_1016AF890, &qword_1013926D0);
    v220 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v220 - 8) + 48))(v219, 1, v220) == 1)
    {
      sub_10000B3A8(v219, &unk_1016AF890, &qword_1013926D0);
      (*(v328 + 56))(v287, 1, 1, v191);
      v221 = 0;
      v222 = v332;
    }

    else
    {
      v226 = v219 + *(v220 + 20);
      v227 = v287;
      sub_1000D2A70(v226, v287, &qword_1016980D0, &unk_10138F3B0);
      sub_100022C40(v219, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      v228 = (*(v328 + 48))(v227, 1, v191);
      v222 = v332;
      if (v228 == 1)
      {
        v221 = 0;
      }

      else
      {
        v230.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v231 = v227;
        v221 = v230.super.isa;
        v348(v231, v191);
      }
    }

    [v147 setOwnerBeaconIdentifier:v221];

    v232 = v289;
    sub_100022A54(v325, v289, type metadata accessor for SharedBeaconRecord);
    v233 = (*(v301 + 80) + 24) & ~*(v301 + 80);
    v234 = swift_allocObject();
    *(v234 + 16) = v333;
    sub_10002911C(v232, v234 + v233, type metadata accessor for SharedBeaconRecord);

    v235 = v294;
    unsafeFromAsyncTask<A>(_:)();

    v236 = v293;
    if ((*(v291 + 48))(v235, 1, v293) == 1)
    {
      v237 = v191;
      v238 = &unk_101698C20;
      v239 = &qword_101390748;
    }

    else
    {
      v240 = v235;
      v241 = v236;
      v242 = v286;
      sub_10002911C(v240, v286, type metadata accessor for KeyDropLostItemDates);
      v243 = v242 + *(v241 + 20);
      v235 = v284;
      sub_1000D2A70(v243, v284, &unk_101696900, &unk_10138B1E0);
      v244 = v340;
      if ((v302)(v235, 1, v340) != 1)
      {
        v257 = v191;
        v258 = v283;
        (*(v222 + 32))(v283, v235, v244);
        if (qword_101694480 != -1)
        {
          swift_once();
        }

        v259 = type metadata accessor for Logger();
        sub_1000076D4(v259, qword_10177A560);
        v260 = v282;
        sub_100022A54(v325, v282, type metadata accessor for SharedBeaconRecord);
        v261 = *(v222 + 16);
        v262 = v281;
        v261(v281, v258, v244);
        v263 = Logger.logObject.getter();
        v264 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v263, v264))
        {
          v265 = swift_slowAlloc();
          *&v355 = swift_slowAlloc();
          *v265 = 141558531;
          *(v265 + 4) = 1752392040;
          *(v265 + 12) = 2081;
          LODWORD(v346) = v264;
          sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v266 = dispatch thunk of CustomStringConvertible.description.getter();
          v268 = v267;
          sub_100022C40(v260, type metadata accessor for SharedBeaconRecord);
          v269 = sub_1000136BC(v266, v268, &v355);

          *(v265 + 14) = v269;
          *(v265 + 22) = 2080;
          sub_10000768C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v270 = dispatch thunk of CustomStringConvertible.description.getter();
          v272 = v271;
          v273 = v262;
          v274 = v335;
          v335(v273, v244);
          v275 = sub_1000136BC(v270, v272, &v355);

          *(v265 + 24) = v275;
          _os_log_impl(&_mh_execute_header, v263, v346, "Lost mode is enabled for shared beacon %{private,mask.hash}s\nwith timestamp of %s.", v265, 0x20u);
          swift_arrayDestroy();
          v147 = v343;

          v258 = v283;
        }

        else
        {

          v276 = v262;
          v274 = v335;
          v335(v276, v244);
          sub_100022C40(v260, type metadata accessor for SharedBeaconRecord);
        }

        v277 = objc_allocWithZone(SPLostModeInfo);
        v278 = Date._bridgeToObjectiveC()().super.isa;
        v279 = [v277 initWithMessage:0 email:0 phoneNumber:0 timestamp:v278];

        [v147 setLostModeInfo:v279];

        v274(v258, v244);
        sub_100022C40(v286, type metadata accessor for KeyDropLostItemDates);
        sub_10000B3A8(v336, &unk_1016AF8A0, &unk_10139D7C0);
        v274(v329, v244);
        sub_10000B3A8(v331, &unk_1016AA420, &unk_1013BCFE0);
        v255 = v330;
        v256 = v257;
        goto LABEL_93;
      }

      v237 = v191;
      sub_100022C40(v242, type metadata accessor for KeyDropLostItemDates);
      v238 = &unk_101696900;
      v239 = &unk_10138B1E0;
    }

    sub_10000B3A8(v235, v238, v239);
    [v147 setLostModeInfo:0];
    v245 = v285;
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v246 = type metadata accessor for Logger();
    sub_1000076D4(v246, qword_10177A560);
    sub_100022A54(v325, v245, type metadata accessor for SharedBeaconRecord);
    v247 = Logger.logObject.getter();
    v248 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v247, v248))
    {
      v249 = swift_slowAlloc();
      v250 = swift_slowAlloc();
      *&v355 = v250;
      *v249 = 141558275;
      *(v249 + 4) = 1752392040;
      *(v249 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v251 = dispatch thunk of CustomStringConvertible.description.getter();
      v253 = v252;
      sub_100022C40(v245, type metadata accessor for SharedBeaconRecord);
      v254 = sub_1000136BC(v251, v253, &v355);

      *(v249 + 14) = v254;
      _os_log_impl(&_mh_execute_header, v247, v248, "Lost mode is not enabled for shared beacon %{private,mask.hash}s.", v249, 0x16u);
      sub_100007BAC(v250);
      v147 = v343;

      sub_10000B3A8(v336, &unk_1016AF8A0, &unk_10139D7C0);
      v184(v329, v340);
      sub_10000B3A8(v331, &unk_1016AA420, &unk_1013BCFE0);
      v348(v330, v237);
LABEL_94:
      sub_100022C40(v325, type metadata accessor for SharedBeaconRecord);
      goto LABEL_95;
    }

    sub_100022C40(v245, type metadata accessor for SharedBeaconRecord);
    sub_10000B3A8(v336, &unk_1016AF8A0, &unk_10139D7C0);
    v184(v329, v340);
    sub_10000B3A8(v331, &unk_1016AA420, &unk_1013BCFE0);
    v255 = v330;
    v256 = v237;
LABEL_93:
    v348(v255, v256);
    goto LABEL_94;
  }

  v208(v206, 0, 1, v193);
  v209 = v300;
  sub_10002911C(v206, v300, type metadata accessor for OwnedBeaconRecord);
  sub_1010DA578();
  v210 = String._bridgeToObjectiveC()();

  [v147 setStableIdentifier:v210];

  v211 = v299;
  sub_1000D2A70(v209 + v193[7], v299, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v328 + 48))(v211, 1, v191) == 1)
  {
    v212 = 0;
  }

  else
  {
    v212 = UUID._bridgeToObjectiveC()().super.isa;
    v348(v211, v191);
  }

  [v147 setGroupIdentifier:v212];

  sub_100B0E4A8(v209);
  if (v223)
  {
    v224 = String._bridgeToObjectiveC()();
  }

  else
  {
    v224 = 0;
  }

  [v147 setSerialNumber:v224];

  [v147 setPartIdentifier:sub_100B0E7A8(v209)];
  [v147 setBatteryLevel:*(v209 + v193[19])];
  [v147 setIsZeus:*(v209 + v193[20])];
  if (qword_101694E80 != -1)
  {
    swift_once();
  }

  [v147 setOwner:qword_10177C088];
  [v147 setAccepted:1];
  v225 = String._bridgeToObjectiveC()();
  [v147 setCorrelationIdentifier:v225];

  [v147 setInternalShareType:-1];
  [v147 setOwnerBeaconIdentifier:0];

  sub_100022C40(v209, type metadata accessor for OwnedBeaconRecord);
  sub_10000B3A8(v336, &unk_1016AF8A0, &unk_10139D7C0);
  v184(v329, v340);
  sub_10000B3A8(v331, &unk_1016AA420, &unk_1013BCFE0);
  v348(v330, v191);
LABEL_95:
  sub_100007BAC(v360);
  return v147;
}

uint64_t sub_100B039C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1000280DC(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_10000A748(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_100B03A58(uint64_t a1, uint64_t a2, char a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a4;
  v25 = a5;
  v13 = type metadata accessor for DateInterval();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v27[3] = a7;
  v27[4] = a8;
  v16 = sub_1000280DC(v27);
  (*(*(a7 - 8) + 16))(v16, a1, a7);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v17 = v26;
  sub_10001F280(v27, &v26);
  (*(v14 + 16))(&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v13);
  v18 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  sub_10000A748(&v26, v19 + 24);
  (*(v14 + 32))(v19 + v18, &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v20 = (v19 + v18 + v15);
  *v20 = a3 & 1;
  v21 = v25;
  v20[1] = v24;
  v20[2] = v21;

  unsafeFromAsyncTask<A>(_:)();

  v22 = v26;
  sub_100007BAC(v27);
  return v22;
}

uint64_t sub_100B03CB0()
{
  v1 = *(type metadata accessor for CloudKitChangeSet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *v5;
  v7 = *(v5 + 8);
  (*(v0 + v4))(0, 0);

  return sub_100AE8F9C(v0 + v2, v6, v7);
}

uint64_t sub_100B03D84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100B03DD0()
{
  v1 = *(type metadata accessor for CloudKitChangeSet(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 47) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_100AE97C0(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + v4), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

double sub_100B03EB0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    swift_errorRetain();
  }

  else
  {
  }

  return result;
}

double sub_100B03EFC(uint64_t a1, double a2)
{
  v2 = a2;
  if (a2 < 4.0)
  {
    v3 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v4 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_10138BBE0;
    *(v5 + 56) = &type metadata for Double;
    *(v5 + 64) = &protocol witness table for Double;
    *(v5 + 32) = v2;
    *(v5 + 96) = &type metadata for Double;
    *(v5 + 104) = &protocol witness table for Double;
    *(v5 + 72) = 0x4010000000000000;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "txPower too low %f  -- clamping to %f", v10, v11);
    v2 = 4.0;
LABEL_9:

    return v2;
  }

  if (a2 > 20.0)
  {
    v6 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v7 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10138BBE0;
    *(v8 + 56) = &type metadata for Double;
    *(v8 + 64) = &protocol witness table for Double;
    *(v8 + 32) = v2;
    *(v8 + 96) = &type metadata for Double;
    *(v8 + 104) = &protocol witness table for Double;
    *(v8 + 72) = 0x4034000000000000;
    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "txPower too high %f  -- clamping to %f", v10, v11);
    v2 = 20.0;
    goto LABEL_9;
  }

  return v2;
}

uint64_t sub_100B040D4()
{
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177B810);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Posting SPManagedCBPeripheralChanged from BeaconStore.", v3, 2u);
  }

  return static DarwinNotification.post(name:)();
}

Swift::Int sub_100B041C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016A5A68, &qword_1013B3588);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v30 = a1 + 32;
    v29 = v1;
    while (1)
    {
      v6 = *(v30 + v4);
      Hasher.init(_seed:)();
      sub_1012C5AB0(v6);
      String.hash(into:)();

      result = Hasher._finalize()();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xE700000000000000;
          v14 = 0x6E776F6E6B6E75;
          switch(*(*(v3 + 48) + v9))
          {
            case 1:
              v14 = 0xD000000000000015;
              v13 = 0x8000000101347FF0;
              break;
            case 2:
              v14 = 0xD000000000000016;
              v13 = 0x8000000101348010;
              break;
            case 3:
              v13 = 0xE600000000000000;
              v14 = 0x657461636F6CLL;
              break;
            case 4:
              v13 = 0xEC000000676E6972;
              v14 = 0x6168537472617473;
              break;
            case 5:
              v14 = 0x72616853706F7473;
              goto LABEL_21;
            case 6:
              v16 = 2036427888;
              goto LABEL_25;
            case 7:
              v16 = 1886352499;
LABEL_25:
              v14 = v16 | 0x6E756F5300000000;
              v13 = 0xE900000000000064;
              break;
            case 8:
              v14 = 0x61654C6E69676562;
              v13 = 0xED0000676E696873;
              break;
            case 9:
              v14 = 0x687361654C646E65;
LABEL_21:
              v13 = 0xEB00000000676E69;
              break;
            case 0xA:
              v14 = 0x4654426E69676562;
              v13 = 0xEE00676E69646E69;
              break;
            case 0xB:
              v14 = 0x6E69465442646E65;
              v15 = 1735289188;
              goto LABEL_32;
            case 0xC:
              v13 = 0xEC000000676E6967;
              v14 = 0x6E61526E69676562;
              break;
            case 0xD:
              v14 = 0x69676E6152646E65;
              v13 = 0xEA0000000000676ELL;
              break;
            case 0xE:
              v14 = 0x6F4C656C62616E65;
              v13 = 0xEE0065646F4D7473;
              break;
            case 0xF:
              v14 = 0x4C656C6261736964;
              v13 = 0xEF65646F4D74736FLL;
              break;
            case 0x10:
              v13 = 0xE600000000000000;
              v14 = 0x656D616E6572;
              break;
            case 0x11:
              v14 = 0x7463656E6E6F63;
              break;
            case 0x12:
              v13 = 0xEA00000000007463;
              v14 = 0x656E6E6F63736964;
              break;
            case 0x13:
              v14 = 0xD000000000000017;
              v13 = 0x80000001013480F0;
              break;
            case 0x14:
              v13 = 0xE600000000000000;
              v14 = 0x726961706E75;
              break;
            case 0x15:
              v14 = 0x65746167656C6564;
              v13 = 0xEE00657261685364;
              break;
            case 0x16:
              v14 = 0xD000000000000013;
              v13 = 0x8000000101348120;
              break;
            case 0x17:
              v14 = 0x6F69736963657270;
              v15 = 1481004654;
LABEL_32:
              v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              break;
            default:
              break;
          }

          v17 = 0xE700000000000000;
          v18 = 0x6E776F6E6B6E75;
          switch(v6)
          {
            case 1:
              v17 = 0x8000000101347FF0;
              if (v14 == 0xD000000000000015)
              {
                goto LABEL_76;
              }

              goto LABEL_77;
            case 2:
              v17 = 0x8000000101348010;
              if (v14 != 0xD000000000000016)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 3:
              v17 = 0xE600000000000000;
              if (v14 != 0x657461636F6CLL)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 4:
              v17 = 0xEC000000676E6972;
              if (v14 != 0x6168537472617473)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 5:
              v23 = 0x72616853706F7473;
              goto LABEL_57;
            case 6:
              v24 = 2036427888;
              goto LABEL_63;
            case 7:
              v24 = 1886352499;
LABEL_63:
              v17 = 0xE900000000000064;
              if (v14 != (v24 | 0x6E756F5300000000))
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 8:
              v17 = 0xED0000676E696873;
              if (v14 != 0x61654C6E69676562)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 9:
              v23 = 0x687361654C646E65;
LABEL_57:
              v17 = 0xEB00000000676E69;
              if (v14 != v23)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 10:
              v19 = 0x4654426E69676562;
              v20 = 0x676E69646E69;
              goto LABEL_68;
            case 11:
              v21 = 0x6E69465442646E65;
              v22 = 1735289188;
              goto LABEL_81;
            case 12:
              v17 = 0xEC000000676E6967;
              if (v14 != 0x6E61526E69676562)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 13:
              v17 = 0xEA0000000000676ELL;
              if (v14 != 0x69676E6152646E65)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 14:
              v19 = 0x6F4C656C62616E65;
              v20 = 0x65646F4D7473;
              goto LABEL_68;
            case 15:
              v17 = 0xEF65646F4D74736FLL;
              if (v14 != 0x4C656C6261736964)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 16:
              v17 = 0xE600000000000000;
              if (v14 != 0x656D616E6572)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 17:
              if (v14 != 0x7463656E6E6F63)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 18:
              v17 = 0xEA00000000007463;
              if (v14 != 0x656E6E6F63736964)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 19:
              v18 = 0xD000000000000017;
              v17 = 0x80000001013480F0;
              goto LABEL_75;
            case 20:
              v17 = 0xE600000000000000;
              if (v14 != 0x726961706E75)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 21:
              v19 = 0x65746167656C6564;
              v20 = 0x657261685364;
LABEL_68:
              v17 = v20 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
              if (v14 != v19)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 22:
              v17 = 0x8000000101348120;
              if (v14 != 0xD000000000000013)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 23:
              v21 = 0x6F69736963657270;
              v22 = 1481004654;
LABEL_81:
              v17 = v22 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              if (v14 != v21)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            default:
LABEL_75:
              if (v14 != v18)
              {
                goto LABEL_77;
              }

LABEL_76:
              if (v13 == v17)
              {

                goto LABEL_4;
              }

LABEL_77:
              v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v25)
              {
                goto LABEL_4;
              }

              v9 = (v9 + 1) & v8;
              v10 = v9 >> 6;
              v11 = *(v5 + 8 * (v9 >> 6));
              v12 = 1 << v9;
              if ((v11 & (1 << v9)) == 0)
              {
                goto LABEL_83;
              }

              break;
          }
        }
      }

LABEL_83:
      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v26 = *(v3 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(v3 + 16) = v28;
LABEL_4:
      if (++v4 == v29)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_100B04978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016B54C8, &qword_1013D6910);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v26 = a1 + 32;
    v25 = v1;
    while (1)
    {
      v6 = *(v26 + v4);
      Hasher.init(_seed:)();
      sub_10125403C(v6);
      String.hash(into:)();

      result = Hasher._finalize()();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xE700000000000000;
          v14 = 0x7972616D697270;
          switch(*(*(v3 + 48) + v9))
          {
            case 1:
              v13 = 0xE900000000000079;
              v14 = 0x7261646E6F636573;
              break;
            case 2:
              v14 = 0xD000000000000019;
              v13 = 0x8000000101348160;
              break;
            case 3:
              v14 = 0xD00000000000001BLL;
              v13 = 0x8000000101348180;
              break;
            case 4:
              v14 = 0x646E7542646C6977;
              v13 = 0xEA0000000000656CLL;
              break;
            case 5:
              v14 = 0x417972616D697270;
              v13 = 0xEE00737365726464;
              break;
            case 6:
              v14 = 0xD000000000000010;
              v13 = 0x80000001013481C0;
              break;
            case 7:
              v14 = 0xD000000000000012;
              v13 = 0x80000001013475D0;
              break;
            case 8:
              v14 = 0xD000000000000011;
              v13 = 0x80000001013475F0;
              break;
            case 9:
              v14 = 0x697463656E6E6F63;
              v13 = 0xED000079654B6E6FLL;
              break;
            case 0xA:
              v14 = 0x656E774F7261656ELL;
              v13 = 0xEC00000079654B72;
              break;
            case 0xB:
              v14 = 0x656B6F546E696F6ALL;
              v13 = 0xE90000000000006ELL;
              break;
            case 0xC:
              v14 = 0xD000000000000015;
              v13 = 0x80000001013481F0;
              break;
            case 0xD:
              v14 = 0xD000000000000010;
              v13 = 0x8000000101348210;
              break;
            case 0xE:
              v14 = 0x7461636F4C626577;
              v13 = 0xEE0079654B6E6F69;
              break;
            case 0xF:
              v14 = 0x646174654D626577;
              v13 = 0xEB00000000617461;
              break;
            case 0x10:
              v14 = 0x6D65744974736F6CLL;
              v13 = 0xED00007365746144;
              break;
            case 0x11:
              v14 = 0xD000000000000014;
              v13 = 0x8000000101348240;
              break;
            case 0x12:
              v14 = 0xD000000000000016;
              v13 = 0x8000000101348260;
              break;
            default:
              break;
          }

          v15 = 0xE700000000000000;
          v16 = 0x7972616D697270;
          switch(v6)
          {
            case 1:
              v15 = 0xE900000000000079;
              if (v14 == 0x7261646E6F636573)
              {
                goto LABEL_60;
              }

              goto LABEL_61;
            case 2:
              v15 = 0x8000000101348160;
              if (v14 != 0xD000000000000019)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 3:
              v15 = 0x8000000101348180;
              if (v14 != 0xD00000000000001BLL)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 4:
              v15 = 0xEA0000000000656CLL;
              if (v14 != 0x646E7542646C6977)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 5:
              v19 = 0x417972616D697270;
              v20 = 0x737365726464;
              goto LABEL_50;
            case 6:
              v15 = 0x80000001013481C0;
              if (v14 != 0xD000000000000010)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 7:
              v15 = 0x80000001013475D0;
              if (v14 != 0xD000000000000012)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 8:
              v15 = 0x80000001013475F0;
              if (v14 != 0xD000000000000011)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 9:
              v17 = 0x697463656E6E6F63;
              v18 = 0x79654B6E6FLL;
              goto LABEL_37;
            case 10:
              v16 = 0x656E774F7261656ELL;
              v15 = 0xEC00000079654B72;
              goto LABEL_59;
            case 11:
              v15 = 0xE90000000000006ELL;
              if (v14 != 0x656B6F546E696F6ALL)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 12:
              v15 = 0x80000001013481F0;
              if (v14 != 0xD000000000000015)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 13:
              v15 = 0x8000000101348210;
              if (v14 != 0xD000000000000010)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 14:
              v19 = 0x7461636F4C626577;
              v20 = 0x79654B6E6F69;
LABEL_50:
              v15 = v20 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
              if (v14 != v19)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 15:
              v15 = 0xEB00000000617461;
              if (v14 != 0x646174654D626577)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 16:
              v17 = 0x6D65744974736F6CLL;
              v18 = 0x7365746144;
LABEL_37:
              v15 = v18 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              if (v14 != v17)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 17:
              v15 = 0x8000000101348240;
              if (v14 != 0xD000000000000014)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 18:
              v15 = 0x8000000101348260;
              if (v14 != 0xD000000000000016)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            default:
LABEL_59:
              if (v14 != v16)
              {
                goto LABEL_61;
              }

LABEL_60:
              if (v13 == v15)
              {

                goto LABEL_4;
              }

LABEL_61:
              v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v21)
              {
                goto LABEL_4;
              }

              v9 = (v9 + 1) & v8;
              v10 = v9 >> 6;
              v11 = *(v5 + 8 * (v9 >> 6));
              v12 = 1 << v9;
              if ((v11 & (1 << v9)) == 0)
              {
                goto LABEL_66;
              }

              break;
          }
        }
      }

LABEL_66:
      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      *(v3 + 16) = v24;
LABEL_4:
      if (++v4 == v25)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_100B05044(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1000BC4D4(&qword_1016A59A0, &unk_1013B34C0);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_100B05364(uint64_t a1, uint64_t a2)
{
  v81 = type metadata accessor for SystemInfo.DeviceLockState();
  v5 = *(v81 - 8);
  v6 = __chkstk_darwin(v81);
  v80 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v79 = &v58 - v8;
  v9 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - v10;
  v78 = type metadata accessor for OwnedBeaconRecord(0);
  v12 = *(v78 - 8);
  __chkstk_darwin(v78);
  v59 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v83 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&qword_1016B54A8, &qword_1013D6838);
  v76 = *(v17 - 8);
  v77 = v17;
  __chkstk_darwin(v17);
  v75 = (&v58 - v18);
  v19 = *(a1 + 16);
  if (!v19)
  {
    return _swiftEmptyArrayStorage;
  }

  v63 = a2;
  v82 = v2;
  v91 = _swiftEmptyArrayStorage;
  sub_101124BB4(0, v19, 0);
  v89 = a1 + 56;
  v90 = v91;
  result = _HashTable.startBucket.getter();
  v21 = v5;
  v22 = result;
  v23 = 0;
  v71 = v15 + 16;
  v70 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v69 = (v21 + 104);
  v68 = (v21 + 8);
  v62 = (v12 + 48);
  v61 = (v12 + 56);
  v67 = (v15 + 8);
  v60 = a1 + 64;
  v66 = xmmword_101385D80;
  v24 = v83;
  v73 = v11;
  v74 = a1;
  v72 = v14;
  v65 = v15;
  v64 = v19;
  while ((v22 & 0x8000000000000000) == 0 && v22 < 1 << *(a1 + 32))
  {
    if ((*(v89 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
    {
      goto LABEL_30;
    }

    v86 = 1 << v22;
    v87 = v22 >> 6;
    v27 = *(a1 + 36);
    v84 = v23;
    v85 = v27;
    (*(v15 + 16))(v24, *(a1 + 48) + *(v15 + 72) * v22, v14);
    v88 = *(v77 + 48);
    v28 = static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v29 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v30 = swift_allocObject();
    *(v30 + 16) = v66;
    v31 = v24;
    v32 = UUID.uuidString.getter();
    v34 = v33;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_100008C00();
    *(v30 + 32) = v32;
    *(v30 + 40) = v34;
    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v29, "ownedBeaconRecord(for uuid: %@)", 31, 2, v30);

    v35 = v79;
    static SystemInfo.lockState.getter();
    v37 = v80;
    v36 = v81;
    (*v69)(v80, v70, v81);
    sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    v38 = dispatch thunk of static Equatable.== infix(_:_:)();
    v39 = *v68;
    (*v68)(v37, v36);
    v39(v35, v36);
    if (v38)
    {
      v40 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, v29, "ownedBeaconRecord call failed because in device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
      v41 = v73;
      (*v61)(v73, 1, 1, v78);
LABEL_13:
      a1 = v74;
      v44 = v75;
      v14 = v72;
      sub_10000B3A8(v41, &unk_1016A9A20, &qword_10138B280);
      static Date.distantPast.getter();
      v45 = 0;
      goto LABEL_15;
    }

    v42 = sub_100025044();
    __chkstk_darwin(v42);
    *(&v58 - 2) = v31;
    v41 = v73;
    v43 = v82;
    sub_1012BBBD0(sub_100B27F94, v42, v73);
    v82 = v43;

    if ((*v62)(v41, 1, v78) == 1)
    {
      goto LABEL_13;
    }

    v46 = v59;
    sub_10002911C(v41, v59, type metadata accessor for OwnedBeaconRecord);
    v44 = v75;
    v45 = sub_100AD43C8(v75 + v88, v46);
    sub_100022C40(v46, type metadata accessor for OwnedBeaconRecord);
    a1 = v74;
    v14 = v72;
LABEL_15:
    v24 = v83;
    *v44 = v45;
    (*v67)(v24, v14);
    v47 = v90;
    v91 = v90;
    v49 = v90[2];
    v48 = v90[3];
    if (v49 >= v48 >> 1)
    {
      sub_101124BB4((v48 > 1), v49 + 1, 1);
      v24 = v83;
      v47 = v91;
    }

    v47[2] = v49 + 1;
    v50 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v90 = v47;
    result = sub_1000D2AD8(v44, v47 + v50 + *(v76 + 72) * v49, &qword_1016B54A8, &qword_1013D6838);
    v25 = 1 << *(a1 + 32);
    if (v22 >= v25)
    {
      goto LABEL_31;
    }

    v51 = *(v89 + 8 * v87);
    if ((v51 & v86) == 0)
    {
      goto LABEL_32;
    }

    if (v85 != *(a1 + 36))
    {
      goto LABEL_33;
    }

    v52 = v51 & (-2 << (v22 & 0x3F));
    if (v52)
    {
      v25 = __clz(__rbit64(v52)) | v22 & 0x7FFFFFFFFFFFFFC0;
      v26 = v64;
    }

    else
    {
      v53 = v87 << 6;
      v54 = v87 + 1;
      v55 = (v60 + 8 * v87);
      v26 = v64;
      while (v54 < (v25 + 63) >> 6)
      {
        v57 = *v55++;
        v56 = v57;
        v53 += 64;
        ++v54;
        if (v57)
        {
          result = sub_10040BA00(v22, v85, 0);
          v25 = __clz(__rbit64(v56)) + v53;
          goto LABEL_26;
        }
      }

      result = sub_10040BA00(v22, v85, 0);
LABEL_26:
      v24 = v83;
    }

    v23 = v84 + 1;
    v22 = v25;
    v15 = v65;
    if (v84 + 1 == v26)
    {
      return v90;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void *sub_100B05C44(uint64_t a1, char a2, char a3, int a4)
{
  v48 = a4;
  v7 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v7);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v10 - 8);
  v12 = &v47[-v11];
  v13 = type metadata accessor for OwnedBeaconRecord(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v47[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v15);
  v20 = &v47[-v19];
  v50[3] = v18;
  v50[4] = sub_10000768C(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
  v21 = sub_1000280DC(v50);
  sub_100022A54(a1, v21, type metadata accessor for OwnedBeaconRecord);
  sub_10001F280(v50, v49);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v22 = swift_dynamicCast();
  v23 = *(v14 + 56);
  if (!v22)
  {
    v23(v12, 1, 1, v13);
    sub_10000B3A8(v12, &unk_1016A9A20, &qword_10138B280);
    goto LABEL_16;
  }

  v23(v12, 0, 1, v13);
  sub_10002911C(v12, v20, type metadata accessor for OwnedBeaconRecord);
  sub_100022A54(&v20[*(v13 + 24)], v9, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v30 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

    v31 = &v9[*(v30 + 96)];
    v32 = *v31;
    v33 = v31[1];

    if ((v33 & 1) == 0)
    {
      v27 = a2 & 1;
      v28 = a3 & 1;
      v29 = v48 & 1;
      v26 = v32;
      goto LABEL_13;
    }

    sub_100022C40(v20, type metadata accessor for OwnedBeaconRecord);
    v34 = type metadata accessor for UUID();
    (*(*(v34 - 8) + 8))(v9, v34);
LABEL_16:
    v44 = &_swiftEmptySetSingleton;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (qword_101694BF8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000076D4(v35, qword_10177BA38);
    sub_100022A54(v20, v17, type metadata accessor for OwnedBeaconRecord);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v49[0] = v39;
      *v38 = 141558275;
      *(v38 + 4) = 1752392040;
      *(v38 + 12) = 2081;
      v40 = sub_1010DA578();
      v42 = v41;
      sub_100022C40(v17, type metadata accessor for OwnedBeaconRecord);
      v43 = sub_1000136BC(v40, v42, v49);

      *(v38 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "nearbyParts: Invalid stableIdentifier %{private,mask.hash}s", v38, 0x16u);
      sub_100007BAC(v39);
    }

    else
    {

      sub_100022C40(v17, type metadata accessor for OwnedBeaconRecord);
    }

    sub_100022C40(v20, type metadata accessor for OwnedBeaconRecord);
    sub_100022C40(v9, type metadata accessor for StableIdentifier);
    goto LABEL_16;
  }

  v25 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

  v26 = v9[*(v25 + 96)];
  v27 = a2 & 1;
  v28 = a3 & 1;
  v29 = v48 & 1;
LABEL_13:
  v44 = sub_100165BD4(v26, v27, v28, v29);
  sub_100022C40(v20, type metadata accessor for OwnedBeaconRecord);
  v45 = type metadata accessor for UUID();
  (*(*(v45 - 8) + 8))(v9, v45);
LABEL_17:
  sub_100007BAC(v50);
  return v44;
}

unint64_t *sub_100B06298(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  v108 = a5;
  LODWORD(v102) = a4;
  LODWORD(v101) = a3;
  LODWORD(v100) = a2;
  v112 = type metadata accessor for SystemInfo.DeviceLockState();
  v103 = *(v112 - 8);
  v6 = __chkstk_darwin(v112);
  v111 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v110 = &v84 - v8;
  v9 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v9 - 8);
  v11 = (&v84 - v10);
  v107 = type metadata accessor for OwnedBeaconGroup(0);
  v105 = *(v107 - 1);
  __chkstk_darwin(v107);
  v104 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v84 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v113 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v106 = &v84 - v20;
  v21 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v22 = __chkstk_darwin(v21 - 8);
  v109 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v84 - v24;
  v26 = type metadata accessor for OwnedBeaconRecord(0);
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v114 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v32 = &v84 - v31;
  v33 = __chkstk_darwin(v30);
  v99 = &v84 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v84 - v36;
  v117[3] = v35;
  v117[4] = sub_10000768C(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
  v38 = sub_1000280DC(v117);
  sub_100022A54(a1, v38, type metadata accessor for OwnedBeaconRecord);
  sub_10001F280(v117, &v116);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v39 = swift_dynamicCast();
  v115 = v27;
  v42 = *(v27 + 56);
  v41 = v27 + 56;
  v40 = v42;
  if (!v39)
  {
    v40(v25, 1, 1, v26);
    sub_10000B3A8(v25, &unk_1016A9A20, &qword_10138B280);
    goto LABEL_5;
  }

  v40(v25, 0, 1, v26);
  sub_10002911C(v25, v37, type metadata accessor for OwnedBeaconRecord);
  sub_1000D2A70(&v37[*(v26 + 28)], v15, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000B3A8(v15, &qword_1016980D0, &unk_10138F3B0);
    sub_100022C40(v37, type metadata accessor for OwnedBeaconRecord);
LABEL_5:
    v43 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v98 = v26;
  v87 = v37;
  v45 = v106;
  (*(v17 + 32))(v106, v15, v16);
  sub_100AC53EC(v45, v11);
  if (v105[6](v11, 1, v107) == 1)
  {
    sub_10000B3A8(v11, &unk_1016AF8B0, &unk_1013A0700);
    (*(v17 + 8))(v45, v16);
    sub_100022C40(v87, type metadata accessor for OwnedBeaconRecord);
    goto LABEL_5;
  }

  v85 = v40;
  v86 = v41;
  sub_10002911C(v11, v104, type metadata accessor for OwnedBeaconGroup);
  v46 = sub_100B05C44(v87, v100 & 1, v101 & 1, v102 & 1);
  sub_100519FB0();
  v48 = v46;
  v49 = v47 + 56;
  v50 = 1 << *(v47 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & *(v47 + 56);
  v53 = (v50 + 63) >> 6;
  v94 = v17 + 16;
  v93 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v92 = (v103 + 104);
  v91 = (v103 + 8);
  v100 = v17;
  v101 = (v17 + 8);
  v89 = (v115 + 48);
  v102 = v47;

  v54 = 0;
  v88 = xmmword_101385D80;
  v107 = _swiftEmptyArrayStorage;
  v55 = v113;
  v105 = v46;
  v96 = v49;
  v97 = v16;
  v95 = v53;
  v90 = v32;
  while (v52)
  {
    v56 = v54;
LABEL_17:
    (*(v100 + 16))(v55, *(v102 + 48) + *(v100 + 72) * (__clz(__rbit64(v52)) | (v56 << 6)), v16);
    v57 = static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v58 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v59 = swift_allocObject();
    *(v59 + 16) = v88;
    v60 = UUID.uuidString.getter();
    v62 = v61;
    *(v59 + 56) = &type metadata for String;
    *(v59 + 64) = sub_100008C00();
    *(v59 + 32) = v60;
    *(v59 + 40) = v62;
    v103 = v58;
    os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v58, "ownedBeaconRecord(for uuid: %@)", 31, 2, v59);

    v63 = v110;
    static SystemInfo.lockState.getter();
    v65 = v111;
    v64 = v112;
    (*v92)(v111, v93, v112);
    sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    LOBYTE(v60) = dispatch thunk of static Equatable.== infix(_:_:)();
    v66 = *v91;
    (*v91)(v65, v64);
    v66(v63, v64);
    if (v60)
    {
      v67 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v67, &_mh_execute_header, v103, "ownedBeaconRecord call failed because in device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
      v68 = v109;
      v69 = v98;
      v85(v109, 1, 1, v98);
      v16 = v97;
      v55 = v113;
    }

    else
    {
      v70 = sub_100025044();
      __chkstk_darwin(v70);
      v71 = v113;
      *(&v84 - 2) = v113;
      v68 = v109;
      sub_1012BBBD0(sub_100B27F94, v70, v109);

      v16 = v97;
      v55 = v71;
      v69 = v98;
    }

    v53 = v95;
    v32 = v90;
    v52 &= v52 - 1;
    (*v101)(v55, v16);
    if ((*v89)(v68, 1, v69) == 1)
    {
      sub_10000B3A8(v68, &unk_1016A9A20, &qword_10138B280);
      v54 = v56;
      v48 = v105;
      v49 = v96;
    }

    else
    {
      sub_10002911C(v68, v99, type metadata accessor for OwnedBeaconRecord);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v107 = sub_100A5C050(0, v107[2] + 1, 1, v107);
      }

      v49 = v96;
      v73 = v107[2];
      v72 = v107[3];
      if (v73 >= v72 >> 1)
      {
        v107 = sub_100A5C050((v72 > 1), v73 + 1, 1, v107);
      }

      v74 = v107;
      v107[2] = v73 + 1;
      sub_10002911C(v99, v74 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v73, type metadata accessor for OwnedBeaconRecord);
      v54 = v56;
      v48 = v105;
    }
  }

  while (1)
  {
    v56 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);

      sub_100022C40(v32, type metadata accessor for OwnedBeaconRecord);

      __break(1u);
      return result;
    }

    if (v56 >= v53)
    {
      break;
    }

    v52 = *(v49 + 8 * v56);
    ++v54;
    if (v52)
    {
      goto LABEL_17;
    }
  }

  v75 = v107;
  v76 = v107[2];
  if (v76)
  {
    v77 = 0;
    v78 = _swiftEmptyArrayStorage;
    while (v77 < v75[2])
    {
      v79 = (*(v115 + 80) + 32) & ~*(v115 + 80);
      v80 = *(v115 + 72);
      sub_100022A54(v75 + v79 + v80 * v77, v32, type metadata accessor for OwnedBeaconRecord);
      if (sub_100AD69D8(v32, v48))
      {
        sub_10002911C(v32, v114, type metadata accessor for OwnedBeaconRecord);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v116 = v78;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10112434C(0, v78[2] + 1, 1);
          v48 = v105;
          v78 = v116;
        }

        v83 = v78[2];
        v82 = v78[3];
        if (v83 >= v82 >> 1)
        {
          sub_10112434C((v82 > 1), v83 + 1, 1);
          v48 = v105;
          v78 = v116;
        }

        v78[2] = v83 + 1;
        sub_10002911C(v114, v78 + v79 + v83 * v80, type metadata accessor for OwnedBeaconRecord);
        v75 = v107;
      }

      else
      {
        sub_100022C40(v32, type metadata accessor for OwnedBeaconRecord);
      }

      if (v76 == ++v77)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_43;
  }

  v78 = _swiftEmptyArrayStorage;
LABEL_41:

  v43 = sub_1000257D0(v78);

  sub_100022C40(v104, type metadata accessor for OwnedBeaconGroup);
  (*v101)(v106, v97);
  sub_100022C40(v87, type metadata accessor for OwnedBeaconRecord);
LABEL_6:
  sub_100007BAC(v117);
  return v43;
}

void *sub_100B07144(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for UUID();
  v8 = __chkstk_darwin(v7);
  v53 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v41 - v11;
  v13 = a1 + 56;
  v12 = *(a1 + 56);
  v14 = 1 << *(a1 + 32);
  v57 = &_swiftEmptySetSingleton;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v46 = (v10 + 48);
  v42 = (v10 + 32);
  v52 = v10 + 16;
  v41 = v10;
  v54 = (v10 + 8);

  v18 = 0;
  v48 = a1 + 56;
  v49 = 0;
  v47 = v17;
  v44 = a2;
  v45 = a1;
  v43 = v6;
  if (v16)
  {
    while (1)
    {
LABEL_9:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = *(*(a1 + 48) + ((v18 << 9) | (8 * v20)));
      sub_1000D2A70(a2, v6, &qword_1016980D0, &unk_10138F3B0);
      if ((*v46)(v6, 1, v7) == 1)
      {

        sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);
      }

      else
      {
        (*v42)(v55, v6, v7);
        if (*(v21 + 16))
        {
          sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

          v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v23 = -1 << *(v21 + 32);
          v24 = v22 & ~v23;
          v51 = v21 + 56;
          if ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
          {
            v50 = ~v23;
            v25 = *(v41 + 72);
            v26 = *(v41 + 16);
            while (1)
            {
              v27 = v53;
              v26(v53, *(v21 + 48) + v25 * v24, v7);
              sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v28 = dispatch thunk of static Equatable.== infix(_:_:)();
              v29 = *v54;
              (*v54)(v27, v7);
              if (v28)
              {
                break;
              }

              v24 = (v24 + 1) & v50;
              if (((*(v51 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            sub_100DEEB44(v56, v21);

            v29(v55, v7);
            a2 = v44;
            a1 = v45;
            v6 = v43;
            goto LABEL_20;
          }
        }

        else
        {
        }

LABEL_18:
        (*v54)(v55, v7);
        a2 = v44;
        a1 = v45;
        v6 = v43;
      }

      v30 = v49;
      sub_100A81AC4(v21, &v57);
      v49 = v30;

LABEL_20:
      v17 = v47;
      v13 = v48;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v19 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_9;
    }
  }

  if (qword_101694BF8 == -1)
  {
    goto LABEL_24;
  }

LABEL_28:
  swift_once();
LABEL_24:
  v31 = type metadata accessor for Logger();
  sub_1000076D4(v31, qword_10177BA38);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v56[0] = v35;
    *v34 = 136315138;
    swift_beginAccess();

    sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
    sub_1000041A4(&unk_1016AF8E8, &qword_1016AF8E0, &qword_101393130, &protocol conformance descriptor for Set<A>);
    v36 = Set.description.getter();
    v38 = v37;

    v39 = sub_1000136BC(v36, v38, v56);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "Multipart Status after separating non-primary parts: %s", v34, 0xCu);
    sub_100007BAC(v35);
  }

  swift_beginAccess();
  return v57;
}

uint64_t sub_100B07780(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v26 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v10 = aBlock[0];
  v11 = swift_allocObject();
  v11[2] = sub_100B24ADC;
  v11[3] = v9;
  v11[4] = a1;

  QueueSynchronizer.conditionalSync<A>(_:)();
  v12 = LOBYTE(aBlock[0]);
  v13 = static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C390;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  *(v15 + 56) = &type metadata for Bool;
  *(v15 + 64) = &protocol witness table for Bool;
  *(v15 + 32) = v12;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "localAvailable: %d", v24);

  v16 = static os_log_type_t.default.getter();
  if (v12)
  {
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v14, "Container is already available -- calling completion immediately", 64, 2, _swiftEmptyArrayStorage);
    sub_100139244(a2, a3);
  }

  else
  {
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v14, "Container is not yet available", 30, 2, _swiftEmptyArrayStorage);
    v17 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v14, "Waiting for availableWaitQueue", 30, 2, _swiftEmptyArrayStorage);
    v25 = *(v10 + 72);
    v18 = swift_allocObject();
    v18[2] = v10;
    v18[3] = sub_100B27E44;
    v18[4] = v11;
    aBlock[4] = sub_100B28008;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101647230;
    v19 = _Block_copy(aBlock);

    v20 = v26;
    static DispatchQoS.unspecified.getter();
    v32 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v21 = v28;
    v22 = v31;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v30 + 8))(v21, v22);
    (*(v27 + 8))(v20, v29);
  }
}

uint64_t sub_100B07CF0(uint64_t a1)
{
  v1 = static os_log_type_t.debug.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v2 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (*(&v19 + 1))
  {
    v8 = swift_dynamicCast();
    v9 = v17;
    if (!v8)
    {
      v9 = 2;
    }
  }

  else
  {
    sub_10000B3A8(&v20, &unk_1016A0B10, &qword_10139BF40);
    v9 = 2;
  }

  LOBYTE(v20) = v9;
  sub_1000BC4D4(&unk_1016BB0A0, &qword_10139A220);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100008C00();
  *(v3 + 32) = v10;
  *(v3 + 40) = v12;
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "beaconFindMyAccessoryAssociated get, %@", 39, 2, v3);

  v13 = [v4 standardUserDefaults];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 objectForKey:v14];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (*(&v19 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v17;
    }
  }

  else
  {
    sub_10000B3A8(&v20, &unk_1016A0B10, &qword_10139BF40);
    return 0;
  }

  return result;
}

void sub_100B07FD8(uint64_t a1)
{
  v1 = a1;
  v2 = static os_log_type_t.debug.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v3 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  v5 = v4;
  *(v4 + 16) = xmmword_101385D80;
  v6 = v1 & 1;
  if (v6)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v6)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100008C00();
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "beaconFindMyAccessoryAssociated set, %@", 39, 2, v5);

  v9 = [objc_opt_self() standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  [v9 setBool:v6 forKey:v10];
}

uint64_t sub_100B081DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v116 = a2;
  v115 = type metadata accessor for BeaconStoreFileRecord(0);
  v111 = *(v115 - 1);
  __chkstk_darwin(v115);
  v109 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for URL();
  v8 = *(v112 - 8);
  v9 = __chkstk_darwin(v112);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v101 = &v96 - v12;
  v13 = type metadata accessor for UUID();
  v117 = *(v13 - 1);
  v118 = v13;
  v14 = __chkstk_darwin(v13);
  v96 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v108 = &v96 - v17;
  __chkstk_darwin(v16);
  v99 = &v96 - v18;
  v97 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v97);
  v98 = &v96 - v19;
  v20 = type metadata accessor for OwnedBeaconGroup(0);
  v104 = *(v20 - 8);
  v21 = *(v104 + 64);
  v22 = __chkstk_darwin(v20);
  v106 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v96 - v23;
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
  v113 = v25;

  v110 = a4;
  v26 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v27 = qword_10177C380;
  v107 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v28 = swift_allocObject();
  v100 = xmmword_101385D80;
  *(v28 + 16) = xmmword_101385D80;
  sub_100022A54(a1, v24, type metadata accessor for OwnedBeaconGroup);
  v105 = v24;
  v114 = v20;
  v29 = String.init<A>(describing:)();
  v31 = v30;
  *(v28 + 56) = &type metadata for String;
  v102 = sub_100008C00();
  *(v28 + 64) = v102;
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  v103 = v27;
  os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v27, "Attempting to remove: %@", 24, 2, v28);

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v32 = qword_10177C218;
  v33 = [objc_opt_self() sharedInstance];
  v34 = [v33 isInternalBuild];

  if (v34)
  {
    v35 = String._bridgeToObjectiveC()();
    v34 = [v32 BOOLForKey:v35];
  }

  v36 = v11;
  v37 = [objc_opt_self() defaultStore];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 aa_primaryAppleAccount];

    v119 = a1;
    if (v39 && (v39, (v34 & 1) == 0))
    {
      v109 = v21;
      v110 = v8;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v52 = *(v114 + 24);
      v53 = UUID.uuidString.getter();
      v55 = v54;
      v56 = v116;
      v57 = *(v116 + 160);
      v58._countAndFlagsBits = v53;
      v58._object = v55;
      isa = CKRecordID.init(recordName:zoneID:)(v58, v57).super.isa;
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v106 = isa;
      v114 = sub_100FDB020(isa);

      v108 = swift_allocBox();
      v60 = *(v111 + 56);
      v97 = v61;
      v111 += 56;
      v96 = v60;
      (v60)(v61, 1, 1, v115);
      v62 = *(v56 + 168);
      v64 = v117;
      v63 = v118;
      v65 = a1 + v52;
      v66 = v99;
      (*(v117 + 16))(v99, v65, v118);
      if (qword_1016947B8 != -1)
      {
        swift_once();
      }

      v67 = v112;
      v68 = sub_1000076D4(v112, qword_10177AEF8);
      v69 = v110;
      v70 = v101;
      v71 = (v110[2].isa)(v101, v68, v67);
      __chkstk_darwin(v71);
      *(&v96 - 4) = v62;
      *(&v96 - 3) = v66;
      *(&v96 - 2) = v70;
      v72 = v98;
      OS_dispatch_queue.sync<A>(execute:)();
      (v69[1].isa)(v70, v67);
      (*(v64 + 8))(v66, v63);
      (v96)(v72, 0, 1, v115);
      sub_10002311C(v72, v97, &qword_1016B53E0, &unk_1013D65D0);
      v75 = v103;
      v76 = v102;
      v77 = v106;
      v78 = static os_log_type_t.default.getter();
      v79 = swift_allocObject();
      *(v79 + 16) = v100;
      v80 = v77;
      v118 = v80;
      v81 = [v80 description];
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;

      *(v79 + 56) = &type metadata for String;
      *(v79 + 64) = v76;
      *(v79 + 32) = v82;
      *(v79 + 40) = v84;
      os_log(_:dso:log:_:_:)(v78, &_mh_execute_header, v75, "cloudBacked item deleted from disk: %@", 38, 2, v79);

      v85 = v105;
      sub_100022A54(v119, v105, type metadata accessor for OwnedBeaconGroup);
      v86 = *(v104 + 80);
      v117 = (v86 + 32) & ~v86;
      v87 = &v109[v117 + 7] & 0xFFFFFFFFFFFFFFF8;
      v88 = swift_allocObject();
      v89 = v108;
      v90 = v116;
      *(v88 + 16) = v108;
      *(v88 + 24) = v90;
      v115 = type metadata accessor for OwnedBeaconGroup;
      sub_10002911C(v85, v88 + ((v86 + 32) & ~v86), type metadata accessor for OwnedBeaconGroup);
      v91 = (v88 + v87);
      v112 = sub_100B247EC;
      v92 = v113;
      *v91 = sub_100B247EC;
      v91[1] = v92;

      Future.addSuccess(block:)();

      sub_100022A54(v119, v85, type metadata accessor for OwnedBeaconGroup);
      v93 = swift_allocObject();
      *(v93 + 16) = v89;
      *(v93 + 24) = v90;
      sub_10002911C(v85, v93 + v117, v115);
      v94 = (v93 + v87);
      *v94 = v112;
      v94[1] = v92;

      Future.addFailure(block:)();
    }

    else
    {
      v40 = v8;
      v111 = a3;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_1000076D4(v41, qword_10177BA08);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 67109376;
        *(v44 + 4) = v34;
        *(v44 + 8) = 1024;
        *(v44 + 10) = v39 != 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v44, 0xEu);
      }

      v45 = *(v116 + 168);
      v46 = v119 + *(v114 + 24);
      v47 = v108;
      v107 = *(v117 + 16);
      v107(v108, v46, v118);
      if (qword_1016947B8 != -1)
      {
        swift_once();
      }

      v48 = v112;
      v49 = sub_1000076D4(v112, qword_10177AEF8);
      v50 = v40[2](v36, v49, v48);
      __chkstk_darwin(v50);
      *(&v96 - 4) = v45;
      *(&v96 - 3) = v47;
      *(&v96 - 2) = v36;
      v51 = v109;
      OS_dispatch_queue.sync<A>(execute:)();
      (v40[1])(v36, v48);
      (*(v117 + 8))(v47, v118);
      sub_100B39D8C(v51);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v73 = sub_100A8306C(9u);
      sub_100A8375C(v73);
      v74 = v111;
      swift_beginAccess();
      *(v74 + 16) = 0;

      dispatch_group_leave(v110);
      sub_100022C40(v51, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B092E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&unk_1016BBDF0, &qword_1013D6808);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = static Hasher._hash(seed:_:)();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100B093F8(uint64_t *a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v263 = a4;
  v262 = a3;
  v6 = type metadata accessor for OwnedBeaconRecord(0);
  v7 = v6 - 8;
  v241 = *(v6 - 8);
  __chkstk_darwin(v6);
  v242 = v8;
  v243 = &v230 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BeaconProductInfoRecord(0);
  __chkstk_darwin(v9 - 8);
  v252 = &v230 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v11 - 8);
  v250 = &v230 - v12;
  v249 = type metadata accessor for AccessoryProductInfo(0);
  v248 = *(v249 - 8);
  v13 = __chkstk_darwin(v249);
  v244 = &v230 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v251 = &v230 - v15;
  v267 = type metadata accessor for DispatchWorkItemFlags();
  v266 = *(v267 - 8);
  __chkstk_darwin(v267);
  v264 = &v230 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = type metadata accessor for DispatchQoS();
  v268 = *(v269 - 8);
  __chkstk_darwin(v269);
  v265 = &v230 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = type metadata accessor for DispatchTime();
  v275 = *(v270 - 8);
  v18 = __chkstk_darwin(v270);
  v272 = &v230 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v273 = &v230 - v20;
  v261 = type metadata accessor for KeySyncMetadata(0);
  v236 = *(v261 - 1);
  v21 = __chkstk_darwin(v261);
  v238 = &v230 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = v22;
  __chkstk_darwin(v21);
  v24 = &v230 - v23;
  v257 = type metadata accessor for KeyAlignmentRecord(0);
  v233 = *(v257 - 8);
  v25 = __chkstk_darwin(v257);
  v235 = &v230 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = v26;
  __chkstk_darwin(v25);
  v280 = (&v230 - v27);
  v28 = type metadata accessor for BeaconNamingRecord(0);
  v258 = *(v28 - 1);
  v29 = __chkstk_darwin(v28);
  v260 = &v230 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = v30;
  __chkstk_darwin(v29);
  v284 = &v230 - v31;
  v278 = type metadata accessor for Date();
  v277 = *(v278 - 8);
  __chkstk_darwin(v278);
  v33 = &v230 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for UUID();
  v35 = __chkstk_darwin(v34);
  v231 = &v230 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v232 = &v230 - v38;
  v39 = __chkstk_darwin(v37);
  v253 = &v230 - v40;
  v41 = __chkstk_darwin(v39);
  v255 = &v230 - v42;
  v43 = __chkstk_darwin(v41);
  v45 = &v230 - v44;
  v46 = __chkstk_darwin(v43);
  v279 = &v230 - v47;
  v246 = v48;
  __chkstk_darwin(v46);
  v49 = *(v7 + 28);
  v247 = a1;
  v50 = a1 + v49;
  v281 = v51;
  v52 = *(v51 + 16);
  v286 = &v230 - v53;
  v239 = v50;
  v285 = v54;
  v282 = v52;
  v283 = (v51 + 16);
  v52();
  v276 = v33;
  sub_100A82D10(v33);
  if (a2[2].isa)
  {
    isa = a2[2].isa;
  }

  else
  {
    isa = SPBeaconRoleIdUndefined;
  }

  if (qword_101694940 != -1)
  {
LABEL_65:
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v240 = 0;
  *&v288 = sub_101073D24(aBlock);

  v56 = a2[4].isa;
  v274 = v24;
  v254 = a2;
  if (v56 && isa == SPBeaconRoleIdOther)
  {
    v256 = a2[3].isa;
    v287 = v56;

    goto LABEL_23;
  }

  v57 = *(v288 + 16);
  if (v57)
  {
    v245 = v45;
    v256 = v28;
    aBlock = _swiftEmptyArrayStorage;
    v287 = v57;
    sub_101124558(0, v57, 0);
    v59 = v287;
    v58 = v288;
    v60 = 0;
    v61 = aBlock;
    v62 = v288 + 32;
    do
    {
      if (v60 >= *(v58 + 16))
      {
        __break(1u);
        goto LABEL_65;
      }

      a2 = (v60 + 1);
      v63 = *(v62 + 32 * v60 + 24);
      v65 = *(v63 + 16);
      v64 = v63 + 16;
      v66 = v65 + 1;
      while (--v66)
      {
        v67 = (v64 + 40);
        v68 = *(v64 + 16);
        v64 += 40;
        if (v68 == isa)
        {
          v69 = *(v67 - 2);
          v28 = *(v67 - 1);
          v24 = *v67;
          v70 = v67[1];

          v59 = v287;
          v58 = v288;
          goto LABEL_16;
        }
      }

      v24 = 0;
      v70 = 0xE000000000000000;
      v69 = 0x4E206D6F74737543;
      v28 = 0xEB00000000656D61;
LABEL_16:
      aBlock = v61;
      v72 = v61[2];
      v71 = v61[3];
      v45 = (v72 + 1);
      if (v72 >= v71 >> 1)
      {
        sub_101124558((v71 > 1), v72 + 1, 1);
        v59 = v287;
        v58 = v288;
        v61 = aBlock;
      }

      v61[2] = v45;
      v73 = &v61[5 * v72];
      v73[4] = isa;
      v73[5] = v69;
      v73[6] = v28;
      v73[7] = v24;
      v73[8] = v70;
      v60 = a2;
    }

    while (a2 != v59);

    a2 = v254;
    v28 = v256;
    v45 = v245;
    if (!v61[2])
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v61 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage[2])
  {
LABEL_20:
    v74 = v61[8];
    v256 = v61[7];
    v287 = v74;

    goto LABEL_23;
  }

LABEL_22:

  v256 = 0;
  v287 = 0xE000000000000000;
LABEL_23:
  UUID.init()();
  (v282)(v45, v286, v285);
  if (a2[1].isa)
  {
    v75 = a2->isa;
    v76 = a2[1].isa;
  }

  else
  {
    v75 = 0;
    v76 = 0xE000000000000000;
  }

  v288 = xmmword_10138C660;
  v78 = v284;
  v77 = v285;
  *v284 = xmmword_10138C660;
  v79 = (v281 + 32);
  v80 = *(v281 + 32);
  v80(&v78[v28[5]], v279, v77);
  v81 = &v78[v28[6]];
  v279 = v79;
  v245 = v80;
  v80(v81, v45, v77);
  *&v78[v28[7]] = isa;
  v82 = &v78[v28[8]];
  *v82 = v75;
  v82[1] = v76;
  v83 = &v78[v28[9]];
  v84 = v287;
  *v83 = v256;
  v83[1] = v84;
  v85 = v257;

  v86 = v280;
  UUID.init()();
  v87 = v286;
  v88 = v282;
  (v282)(v86 + v85[6], v286, v77);
  v89 = *(v277 + 16);
  v90 = v276;
  v91 = v278;
  v89(v86 + v85[8], v276, v278);
  *v86 = v288;
  *(v86 + v85[7]) = 1;
  v92 = v274;
  (v88)(v274, v87, v77);
  v93 = v92;
  v94 = v261;
  v95 = (v92 + v261[6]);
  v95[3] = &type metadata for PrimaryIndex;
  v95[4] = sub_10002A2B8();
  *v95 = 1;
  v89((v92 + v94[7]), v90, v91);
  *(v92 + v94[5]) = 1;
  v96 = swift_allocObject();
  *(v96 + 16) = 0;
  v97 = (v96 + 16);
  v98 = dispatch_group_create();
  dispatch_group_enter(v98);
  v99 = v284;
  v100 = v260;
  sub_100022A54(v284, v260, type metadata accessor for BeaconNamingRecord);
  v101 = (*(v258 + 80) + 24) & ~*(v258 + 80);
  v102 = (v259 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
  v103 = swift_allocObject();
  *(v103 + 16) = v98;
  sub_10002911C(v100, v103 + v101, type metadata accessor for BeaconNamingRecord);
  *(v103 + v102) = v96;
  v104 = v98;
  *&v288 = v96;

  v105 = v271;
  sub_1006DD754(v99, 0, sub_100B242A4, v103);

  v106 = v272;
  static DispatchTime.now()();
  v107 = v273;
  + infix(_:_:)();
  v109 = v275 + 8;
  v108 = *(v275 + 8);
  v110 = v270;
  v108(v106, v270);
  OS_dispatch_group.wait(timeout:)();
  v108(v107, v110);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v111 = type metadata accessor for Logger();
    sub_1000076D4(v111, qword_10177C418);
    v112 = v255;
    v113 = v285;
    (v282)(v255, v286, v285);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();
    v116 = os_log_type_enabled(v114, v115);
    v287 = v104;
    if (v116)
    {
      v117 = v112;
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      aBlock = v119;
      *v118 = 141558275;
      *(v118 + 4) = 1752392040;
      *(v118 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v120 = dispatch thunk of CustomStringConvertible.description.getter();
      v122 = v121;
      v283 = *(v281 + 8);
      v283(v117, v113);
      v123 = sub_1000136BC(v120, v122, &aBlock);

      *(v118 + 14) = v123;
      _os_log_impl(&_mh_execute_header, v114, v115, "Timed out saving beacon naming record for beacon %{private,mask.hash}s", v118, 0x16u);
      sub_100007BAC(v119);
    }

    else
    {

      v283 = *(v281 + 8);
      v283(v112, v113);
    }

    v132 = swift_allocObject();
    v133 = v263;
    *(v132 + 16) = v262;
    *(v132 + 24) = v133;
    v294 = sub_100B24554;
    v295 = v132;
    aBlock = _NSConcreteStackBlock;
    v291 = 1107296256;
    v292 = sub_100006684;
    v293 = &unk_101646F60;
    v134 = _Block_copy(&aBlock);

    v135 = v265;
    static DispatchQoS.unspecified.getter();
    v296 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v136 = v264;
    v137 = v267;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v134);

    (*(v266 + 8))(v136, v137);
    (*(v268 + 8))(v135, v269);
    sub_100022C40(v280, type metadata accessor for KeyAlignmentRecord);
    sub_100022C40(v284, type metadata accessor for BeaconNamingRecord);
    (*(v277 + 8))(v276, v278);
    v283(v286, v113);
LABEL_37:
    v131 = v274;
    goto LABEL_38;
  }

  v275 = v109;
  swift_beginAccess();
  v124 = *v97;
  if (*v97)
  {
    v283 = *(v105 + 136);
    v125 = swift_allocObject();
    v126 = v263;
    v125[2] = v262;
    v125[3] = v126;
    v125[4] = v124;
    v294 = sub_100B24534;
    v295 = v125;
    aBlock = _NSConcreteStackBlock;
    v291 = 1107296256;
    v292 = sub_100006684;
    v293 = &unk_101646F10;
    v127 = _Block_copy(&aBlock);
    swift_errorRetain();

    swift_errorRetain();
    v128 = v265;
    static DispatchQoS.unspecified.getter();
    v289 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v129 = v264;
    v130 = v267;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v127);

    (*(v266 + 8))(v129, v130);
LABEL_33:
    (*(v268 + 8))(v128, v269);
    sub_100022C40(v280, type metadata accessor for KeyAlignmentRecord);
    sub_100022C40(v284, type metadata accessor for BeaconNamingRecord);
    (*(v277 + 8))(v276, v278);
    (*(v281 + 8))(v286, v285);
LABEL_34:
    v131 = v93;
LABEL_38:
    sub_100022C40(v131, type metadata accessor for KeySyncMetadata);
  }

  v139 = type metadata accessor for PairingConfig(0);
  v140 = v250;
  sub_1000D2A70(v254 + *(v139 + 28), v250, &qword_101697268, &qword_101394FE0);
  v141 = (*(v248 + 48))(v140, 1, v249);
  v142 = v285;
  if (v141 == 1)
  {
    sub_10000B3A8(v140, &qword_101697268, &qword_101394FE0);
    if (sub_100D60B1C())
    {
      v143 = static os_log_type_t.error.getter();
      if (qword_1016950C8 != -1)
      {
        v229 = v143;
        swift_once();
        v143 = v229;
      }

      os_log(_:dso:log:_:_:)(v143, &_mh_execute_header, qword_10177C410, "Missing info for BeaconProductInfoRecord!", 41, 2, _swiftEmptyArrayStorage);
      v144 = swift_allocObject();
      v145 = v263;
      *(v144 + 16) = v262;
      *(v144 + 24) = v145;
      v294 = sub_100B2450C;
      v295 = v144;
      aBlock = _NSConcreteStackBlock;
      v291 = 1107296256;
      v292 = sub_100006684;
      v293 = &unk_101646DF8;
      v146 = _Block_copy(&aBlock);

      v128 = v265;
      static DispatchQoS.unspecified.getter();
      v289 = _swiftEmptyArrayStorage;
      sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v147 = v264;
      v148 = v267;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v146);

      (*(v266 + 8))(v147, v148);
      goto LABEL_33;
    }
  }

  else
  {
    v149 = v140;
    v150 = v251;
    sub_10002911C(v149, v251, type metadata accessor for AccessoryProductInfo);
    v151 = v244;
    sub_100022A54(v150, v244, type metadata accessor for AccessoryProductInfo);
    v152 = v253;
    (v282)(v253, v286, v142);
    v153 = v252;
    sub_10083B3C8(v151, v152, v252);
    dispatch_group_enter(v104);
    v154 = swift_allocObject();
    v155 = v288;
    *(v154 + 16) = v104;
    *(v154 + 24) = v155;
    v156 = v104;

    sub_100D76090(v153, sub_100B2452C, v154);

    v157 = v272;
    static DispatchTime.now()();
    v158 = v273;
    + infix(_:_:)();
    v108(v157, v110);
    v261 = v156;
    OS_dispatch_group.wait(timeout:)();
    v108(v158, v110);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v159 = type metadata accessor for Logger();
      sub_1000076D4(v159, qword_10177C418);
      v160 = v232;
      v161 = v285;
      (v282)(v232, v286, v285);
      v162 = Logger.logObject.getter();
      v163 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        aBlock = v165;
        *v164 = 141558275;
        *(v164 + 4) = 1752392040;
        *(v164 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v166 = dispatch thunk of CustomStringConvertible.description.getter();
        v168 = v167;
        v287 = *(v281 + 8);
        (v287)(v160, v161);
        v169 = sub_1000136BC(v166, v168, &aBlock);

        *(v164 + 14) = v169;
        _os_log_impl(&_mh_execute_header, v162, v163, "Timed out saving productInfoRecord for beacon %{private,mask.hash}s", v164, 0x16u);
        sub_100007BAC(v165);
      }

      else
      {

        v287 = *(v281 + 8);
        (v287)(v160, v161);
      }

      v178 = swift_allocObject();
      v179 = v263;
      *(v178 + 16) = v262;
      *(v178 + 24) = v179;
      v294 = sub_100B27E3C;
      v295 = v178;
      aBlock = _NSConcreteStackBlock;
      v291 = 1107296256;
      v292 = sub_100006684;
      v293 = &unk_101646EC0;
      v180 = _Block_copy(&aBlock);

      v181 = v265;
      static DispatchQoS.unspecified.getter();
      v289 = _swiftEmptyArrayStorage;
      sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v182 = v264;
      v183 = v267;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v180);

      (*(v266 + 8))(v182, v183);
      (*(v268 + 8))(v181, v269);
      sub_100022C40(v252, type metadata accessor for BeaconProductInfoRecord);
      sub_100022C40(v251, type metadata accessor for AccessoryProductInfo);
      sub_100022C40(v280, type metadata accessor for KeyAlignmentRecord);
      sub_100022C40(v284, type metadata accessor for BeaconNamingRecord);
      (*(v277 + 8))(v276, v278);
      (v287)(v286, v161);
      goto LABEL_37;
    }

    v170 = *v97;
    if (v170)
    {
      v287 = *(v105 + 136);
      v171 = swift_allocObject();
      v172 = v263;
      v171[2] = v262;
      v171[3] = v172;
      v171[4] = v170;
      v294 = sub_100B28004;
      v295 = v171;
      aBlock = _NSConcreteStackBlock;
      v291 = 1107296256;
      v292 = sub_100006684;
      v293 = &unk_101646E70;
      v173 = _Block_copy(&aBlock);
      swift_errorRetain();

      swift_errorRetain();
      v174 = v265;
      static DispatchQoS.unspecified.getter();
      v289 = _swiftEmptyArrayStorage;
      sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      v175 = v285;
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v176 = v264;
      v177 = v267;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v173);

      (*(v266 + 8))(v176, v177);
      (*(v268 + 8))(v174, v269);
      sub_100022C40(v252, type metadata accessor for BeaconProductInfoRecord);
      sub_100022C40(v251, type metadata accessor for AccessoryProductInfo);
      sub_100022C40(v280, type metadata accessor for KeyAlignmentRecord);
      sub_100022C40(v284, type metadata accessor for BeaconNamingRecord);
      (*(v277 + 8))(v276, v278);
      (*(v281 + 8))(v286, v175);
      goto LABEL_34;
    }

    sub_100022C40(v252, type metadata accessor for BeaconProductInfoRecord);
    sub_100022C40(v251, type metadata accessor for AccessoryProductInfo);
    v142 = v285;
  }

  dispatch_group_enter(v104);
  v184 = v235;
  sub_100022A54(v280, v235, type metadata accessor for KeyAlignmentRecord);
  v287 = v104;
  v185 = v238;
  sub_100022A54(v93, v238, type metadata accessor for KeySyncMetadata);
  (v282)(v253, v286, v142);
  v186 = (*(v233 + 80) + 32) & ~*(v233 + 80);
  v187 = (v234 + *(v236 + 80) + v186) & ~*(v236 + 80);
  v188 = (v237 + *(v281 + 80) + v187) & ~*(v281 + 80);
  v261 = *(v281 + 80);
  v189 = (v246 + v188 + 7) & 0xFFFFFFFFFFFFFFF8;
  v190 = swift_allocObject();
  v191 = v287;
  *(v190 + 16) = v287;
  *(v190 + 24) = v105;
  sub_10002911C(v184, v190 + v186, type metadata accessor for KeyAlignmentRecord);
  sub_10002911C(v185, v190 + v187, type metadata accessor for KeySyncMetadata);
  (v245)(v190 + v188, v253, v285);
  *(v190 + v189) = v288;
  v192 = v191;

  v193 = v247;
  sub_1006DDE30(v247, 0, sub_100B242D0, v190);

  v194 = v272;
  static DispatchTime.now()();
  v195 = v273;
  + infix(_:_:)();
  v196 = v270;
  v108(v194, v270);
  v287 = v192;
  OS_dispatch_group.wait(timeout:)();
  v108(v195, v196);
  v197 = v193;
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v198 = type metadata accessor for Logger();
    sub_1000076D4(v198, qword_10177C418);
    v199 = v231;
    v200 = v285;
    (v282)(v231, v286, v285);
    v201 = Logger.logObject.getter();
    v202 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v201, v202))
    {
      v203 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      aBlock = v204;
      *v203 = 141558275;
      *(v203 + 4) = 1752392040;
      *(v203 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v205 = dispatch thunk of CustomStringConvertible.description.getter();
      v206 = v199;
      v208 = v207;
      (*(v281 + 8))(v206, v200);
      v209 = sub_1000136BC(v205, v208, &aBlock);

      *(v203 + 14) = v209;
      _os_log_impl(&_mh_execute_header, v201, v202, "Timed out saving new beacon %{private,mask.hash}s", v203, 0x16u);
      sub_100007BAC(v204);
    }

    else
    {

      (*(v281 + 8))(v199, v200);
    }
  }

  v210 = v261;
  v211 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v212 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v213 = swift_allocObject();
  *(v213 + 16) = xmmword_101385D80;
  v214 = UUID.uuidString.getter();
  v216 = v215;
  *(v213 + 56) = &type metadata for String;
  *(v213 + 64) = sub_100008C00();
  *(v213 + 32) = v214;
  *(v213 + 40) = v216;
  os_log(_:dso:log:_:_:)(v211, &_mh_execute_header, v212, "completed beacon creation: %@", 29, 2, v213);

  v275 = *(v271 + 136);
  v217 = v253;
  v218 = v285;
  (v282)(v253, v286, v285);
  v219 = v197;
  v220 = v243;
  sub_100022A54(v219, v243, type metadata accessor for OwnedBeaconRecord);
  v221 = (v210 + 40) & ~v210;
  v222 = (v221 + v246 + *(v241 + 80)) & ~*(v241 + 80);
  v223 = swift_allocObject();
  v224 = v262;
  v223[2] = v288;
  v223[3] = v224;
  v223[4] = v263;
  (v245)(v223 + v221, v217, v218);
  sub_10002911C(v220, v223 + v222, type metadata accessor for OwnedBeaconRecord);
  v294 = sub_100B24438;
  v295 = v223;
  aBlock = _NSConcreteStackBlock;
  v291 = 1107296256;
  v292 = sub_100006684;
  v293 = &unk_101646DA8;
  v225 = _Block_copy(&aBlock);

  v226 = v265;
  static DispatchQoS.unspecified.getter();
  v289 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v227 = v264;
  v228 = v267;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v225);
  (*(v266 + 8))(v227, v228);
  (*(v268 + 8))(v226, v269);

  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100A8306C(3u);
  sub_100A907FC();
  sub_100A906A4(0, "Requesting BeaconsToMonitorForSeparationChangedNotification to be posted. Bypass rate limit? %{BOOL}d", &OBJC_IVAR____TtC12searchpartyd11BeaconStore_separationMonitoringBeaconsChangedPoster, &unk_1013D66C0);
  type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();

  sub_100022C40(v280, type metadata accessor for KeyAlignmentRecord);
  sub_100022C40(v284, type metadata accessor for BeaconNamingRecord);
  (*(v277 + 8))(v276, v278);
  (*(v281 + 8))(v286, v285);
  sub_100022C40(v274, type metadata accessor for KeySyncMetadata);
}

void sub_100B0BE30(uint64_t *a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, id, uint64_t), uint64_t a8, uint64_t a9)
{
  v45 = a7;
  v48 = a3;
  v42[1] = a8;
  v43 = a9;
  v44 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  __chkstk_darwin(v44);
  v14 = v42 - v13;
  v15 = type metadata accessor for OwnedBeaconGroup(0);
  __chkstk_darwin(v15 - 8);
  v49 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  v47 = v17;
  v18 = qword_101694BE8;
  v46 = a4;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = a1;
  v20 = type metadata accessor for Logger();
  sub_1000076D4(v20, qword_10177BA08);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v21, v22, "Saving record. Disk First? %{BOOL}d", v23, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v24 = qword_10177C218;
  v25 = [objc_opt_self() sharedInstance];
  v26 = [v25 isInternalBuild];

  if (v26)
  {
    v27 = String._bridgeToObjectiveC()();
    v28 = [v24 BOOLForKey:v27];
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_opt_self() defaultStore];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 aa_primaryAppleAccount];

    if (v31 && (v31, ((a2 | v28) & 1) == 0))
    {
      sub_1006E4FAC(v19, v43, v47);
    }

    else
    {
      v32 = v49;
      sub_100022A54(v19, v49, type metadata accessor for OwnedBeaconGroup);
      sub_1009F10FC(v32);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Saved LocalStorageBacked record. Calling completion.", v35, 2u);
      }

      sub_100022A54(v19, v14, type metadata accessor for OwnedBeaconGroup);
      swift_storeEnumTagMultiPayload();
      v45(v14, v46, a5);
      sub_10000B3A8(v14, &qword_101699398, &qword_101391900);
      if (((v31 != 0) & ~v28) != 0)
      {
        v40 = type metadata accessor for Transaction();
        __chkstk_darwin(v40);
        v41 = v49;
        v42[-4] = v48;
        v42[-3] = v19;
        v42[-2] = v41;
        static Transaction.named<A>(_:with:)();
        v39 = v41;
      }

      else
      {
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 67109376;
          *(v38 + 4) = v28;
          *(v38 + 8) = 1024;
          *(v38 + 10) = v31 != 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v38, 0xEu);
        }

        v39 = v49;
      }

      sub_100022C40(v39, type metadata accessor for OwnedBeaconGroup);
    }
  }

  else
  {

    __break(1u);
  }
}

uint64_t sub_100B0C534(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), char *a4)
{
  v119 = a2;
  v7 = type metadata accessor for BeaconStoreFileRecord(0);
  v116 = *(v7 - 8);
  __chkstk_darwin(v7);
  v112 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v113 = *(v9 - 8);
  v114 = v9;
  v10 = __chkstk_darwin(v9);
  v111 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v102 = &v97 - v12;
  v13 = type metadata accessor for UUID();
  v117 = *(v13 - 1);
  v14 = __chkstk_darwin(v13);
  v98 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v110 = &v97 - v17;
  __chkstk_darwin(v16);
  v101 = &v97 - v18;
  v99 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v99);
  v100 = &v97 - v19;
  v20 = type metadata accessor for OwnedDeviceKeyRecord(0);
  v106 = *(v20 - 1);
  v21 = __chkstk_darwin(v20);
  v109 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v22;
  __chkstk_darwin(v21);
  v24 = &v97 - v23;
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
  v115 = v25;

  v26 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v27 = qword_10177C380;
  v104 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v28 = swift_allocObject();
  v103 = xmmword_101385D80;
  *(v28 + 16) = xmmword_101385D80;
  v120 = a1;
  sub_100022A54(a1, v24, type metadata accessor for OwnedDeviceKeyRecord);
  v108 = v24;
  v118 = v20;
  v29 = String.init<A>(describing:)();
  v31 = v30;
  *(v28 + 56) = &type metadata for String;
  v32 = sub_100008C00();
  *(v28 + 64) = v32;
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  v105 = v27;
  os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v27, "Attempting to remove: %@", 24, 2, v28);

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v33 = qword_10177C218;
  v34 = [objc_opt_self() sharedInstance];
  v35 = [v34 isInternalBuild];

  if (v35)
  {
    v36 = String._bridgeToObjectiveC()();
    v37 = [v33 BOOLForKey:v36];
  }

  else
  {
    v37 = 0;
  }

  v38 = v118;
  v39 = [objc_opt_self() defaultStore];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 aa_primaryAppleAccount];

    if (v41 && (v41, (v37 & 1) == 0))
    {
      v112 = v32;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v55 = v38[5];
      v56 = v120;
      v57 = UUID.uuidString.getter();
      v59 = v58;
      v60 = v13;
      v61 = v119;
      v62 = *(v119 + 160);
      v63._countAndFlagsBits = v57;
      v63._object = v59;
      isa = CKRecordID.init(recordName:zoneID:)(v63, v62).super.isa;
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v109 = isa;
      v111 = sub_100FDB020(isa);

      v110 = swift_allocBox();
      v65 = *(v116 + 7);
      v99 = v66;
      v116 = (v116 + 56);
      v98 = v65;
      (v65)(v66, 1, 1, v7);
      v67 = *(v61 + 168);
      v68 = v60;
      v69 = v101;
      (*(v117 + 2))(v101, v56 + v55, v60);
      v70 = v7;
      if (qword_101695268 != -1)
      {
        swift_once();
      }

      v71 = v114;
      sub_1000076D4(v114, qword_10177C680);
      UUID.uuidString.getter();
      v72 = v102;
      URL.appendingPathComponent(_:isDirectory:)();

      __chkstk_darwin(v73);
      *(&v97 - 4) = v67;
      *(&v97 - 3) = v69;
      *(&v97 - 2) = v72;
      v74 = v100;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v113 + 8))(v72, v71);
      (*(v117 + 1))(v69, v68);
      (v98)(v74, 0, 1, v70);
      sub_10002311C(v74, v99, &qword_1016B53E0, &unk_1013D65D0);
      v76 = v108;
      v77 = v109;
      v78 = v105;
      v79 = v112;
      v80 = static os_log_type_t.default.getter();
      v81 = swift_allocObject();
      *(v81 + 16) = v103;
      v82 = v77;
      v118 = v82;
      v83 = [v82 description];
      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v85;

      *(v81 + 56) = &type metadata for String;
      *(v81 + 64) = v79;
      *(v81 + 32) = v84;
      *(v81 + 40) = v86;
      os_log(_:dso:log:_:_:)(v80, &_mh_execute_header, v78, "cloudBacked item deleted from disk: %@", 38, 2, v81);

      v117 = type metadata accessor for OwnedDeviceKeyRecord;
      sub_100022A54(v120, v76, type metadata accessor for OwnedDeviceKeyRecord);
      v87 = (*(v106 + 80) + 32) & ~*(v106 + 80);
      v88 = (v107 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
      v89 = swift_allocObject();
      v90 = v110;
      v91 = v119;
      *(v89 + 16) = v110;
      *(v89 + 24) = v91;
      v116 = type metadata accessor for OwnedDeviceKeyRecord;
      sub_10002911C(v76, v89 + v87, type metadata accessor for OwnedDeviceKeyRecord);
      v92 = (v89 + v88);
      v93 = v115;
      *v92 = sub_100B27FFC;
      v92[1] = v93;

      Future.addSuccess(block:)();

      sub_100022A54(v120, v76, v117);
      v94 = swift_allocObject();
      *(v94 + 16) = v90;
      *(v94 + 24) = v91;
      sub_10002911C(v76, v94 + v87, v116);
      v95 = (v94 + v88);
      *v95 = sub_100B27FFC;
      v95[1] = v93;

      Future.addFailure(block:)();
    }

    else
    {
      v107 = a3;
      v108 = a4;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v106 = v7;
      v116 = v13;
      v42 = type metadata accessor for Logger();
      v105 = sub_1000076D4(v42, qword_10177BA08);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();
      v45 = os_log_type_enabled(v43, v44);
      v46 = v110;
      if (v45)
      {
        v47 = swift_slowAlloc();
        *v47 = 67109376;
        *(v47 + 4) = v37;
        *(v47 + 8) = 1024;
        *(v47 + 10) = v41 != 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v47, 0xEu);
      }

      v48 = *(v119 + 168);
      v49 = v117;
      v50 = v120 + v38[5];
      v104 = *(v117 + 2);
      v104(v46, v50, v116);
      if (qword_101695268 != -1)
      {
        swift_once();
      }

      v51 = v114;
      sub_1000076D4(v114, qword_10177C680);
      UUID.uuidString.getter();
      v52 = v111;
      URL.appendingPathComponent(_:isDirectory:)();

      __chkstk_darwin(v53);
      *(&v97 - 4) = v48;
      *(&v97 - 3) = v46;
      *(&v97 - 2) = v52;
      v54 = v112;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v113 + 8))(v52, v51);
      (*(v49 + 1))(v46, v116);
      sub_100B39D8C(v54);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v75 = sub_100A8306C(9u);
      sub_100A8375C(v75);
      v107(1);
      sub_100022C40(v54, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

unint64_t *sub_100B0D624(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v115 = a5;
  LODWORD(v107) = a4;
  LODWORD(v106) = a3;
  LODWORD(v105) = a2;
  v121 = a1;
  v119 = type metadata accessor for SystemInfo.DeviceLockState();
  v108 = *(v119 - 8);
  v9 = __chkstk_darwin(v119);
  v118 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v117 = &v90 - v11;
  v12 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v12 - 8);
  v114 = (&v90 - v13);
  v112 = type metadata accessor for OwnedBeaconGroup(0);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v90 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v109 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v113 = &v90 - v22;
  v23 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v24 = __chkstk_darwin(v23 - 8);
  v116 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v90 - v26;
  v28 = type metadata accessor for OwnedBeaconRecord(0);
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v120 = &v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v34 = &v90 - v33;
  v35 = __chkstk_darwin(v32);
  v104 = &v90 - v36;
  __chkstk_darwin(v35);
  v38 = &v90 - v37;
  v123[3] = a6;
  v123[4] = a7;
  v39 = sub_1000280DC(v123);
  (*(*(a6 - 8) + 16))(v39, v121, a6);
  sub_10001F280(v123, &v122);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v40 = swift_dynamicCast();
  v121 = v29;
  v43 = *(v29 + 56);
  v41 = v29 + 56;
  v42 = v43;
  if (!v40)
  {
    v42(v27, 1, 1, v28);
    sub_10000B3A8(v27, &unk_1016A9A20, &qword_10138B280);
    goto LABEL_5;
  }

  v42(v27, 0, 1, v28);
  sub_10002911C(v27, v38, type metadata accessor for OwnedBeaconRecord);
  sub_1000D2A70(&v38[*(v28 + 28)], v17, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    sub_100022C40(v38, type metadata accessor for OwnedBeaconRecord);
LABEL_5:
    v44 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v46 = v18;
  v47 = v19;
  v103 = v28;
  v93 = v38;
  v48 = *(v19 + 32);
  v49 = v113;
  v48(v113, v17, v18);
  v50 = v114;
  sub_100AC53EC(v49, v114);
  if ((*(v111 + 48))(v50, 1, v112) == 1)
  {
    sub_10000B3A8(v50, &unk_1016AF8B0, &unk_1013A0700);
    (*(v47 + 8))(v49, v18);
    sub_100022C40(v93, type metadata accessor for OwnedBeaconRecord);
    goto LABEL_5;
  }

  v91 = v42;
  v92 = v41;
  sub_10002911C(v50, v110, type metadata accessor for OwnedBeaconGroup);
  v51 = sub_100B05C44(v93, v105 & 1, v106 & 1, v107 & 1);
  sub_100519FB0();
  v53 = v51;
  v54 = v52 + 56;
  v55 = 1 << *(v52 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & *(v52 + 56);
  v58 = (v55 + 63) >> 6;
  v100 = v47 + 16;
  v99 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v98 = (v108 + 104);
  v97 = (v108 + 8);
  v107 = (v47 + 8);
  v95 = (v121 + 48);
  v108 = v52;

  v59 = 0;
  v94 = xmmword_101385D80;
  v114 = _swiftEmptyArrayStorage;
  v60 = v109;
  v112 = v51;
  v105 = v54;
  v102 = v46;
  v101 = v47;
  v106 = v58;
  v96 = v34;
  while (v57)
  {
    v61 = v59;
LABEL_17:
    (*(v47 + 16))(v60, *(v108 + 48) + *(v47 + 72) * (__clz(__rbit64(v57)) | (v61 << 6)), v46);
    v62 = static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v63 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v64 = swift_allocObject();
    *(v64 + 16) = v94;
    v65 = UUID.uuidString.getter();
    v67 = v66;
    *(v64 + 56) = &type metadata for String;
    *(v64 + 64) = sub_100008C00();
    *(v64 + 32) = v65;
    *(v64 + 40) = v67;
    v111 = v63;
    os_log(_:dso:log:_:_:)(v62, &_mh_execute_header, v63, "ownedBeaconRecord(for uuid: %@)", 31, 2, v64);

    v68 = v117;
    static SystemInfo.lockState.getter();
    v70 = v118;
    v69 = v119;
    (*v98)(v118, v99, v119);
    sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    LOBYTE(v65) = dispatch thunk of static Equatable.== infix(_:_:)();
    v71 = v60;
    v72 = *v97;
    (*v97)(v70, v69);
    v72(v68, v69);
    if (v65)
    {
      v73 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v111, "ownedBeaconRecord call failed because in device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
      v74 = v116;
      v75 = v103;
      v91(v116, 1, 1, v103);
      v46 = v102;
      v60 = v71;
    }

    else
    {
      v76 = sub_100025044();
      __chkstk_darwin(v76);
      *(&v90 - 2) = v71;
      v74 = v116;
      sub_1012BBBD0(sub_100B223FC, v76, v116);

      v46 = v102;
      v60 = v71;
      v75 = v103;
    }

    v34 = v96;
    v57 &= v57 - 1;
    (*v107)(v60, v46);
    v77 = (*v95)(v74, 1, v75);
    v47 = v101;
    v58 = v106;
    if (v77 == 1)
    {
      sub_10000B3A8(v74, &unk_1016A9A20, &qword_10138B280);
      v59 = v61;
      v53 = v112;
      v54 = v105;
    }

    else
    {
      sub_10002911C(v74, v104, type metadata accessor for OwnedBeaconRecord);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v114 = sub_100A5C050(0, v114[2] + 1, 1, v114);
      }

      v54 = v105;
      v79 = v114[2];
      v78 = v114[3];
      if (v79 >= v78 >> 1)
      {
        v114 = sub_100A5C050((v78 > 1), v79 + 1, 1, v114);
      }

      v80 = v114;
      v114[2] = v79 + 1;
      sub_10002911C(v104, v80 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v79, type metadata accessor for OwnedBeaconRecord);
      v59 = v61;
      v53 = v112;
      v58 = v106;
    }
  }

  while (1)
  {
    v61 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);

      sub_100022C40(v34, type metadata accessor for OwnedBeaconRecord);

      __break(1u);
      return result;
    }

    if (v61 >= v58)
    {
      break;
    }

    v57 = *(v54 + 8 * v61);
    ++v59;
    if (v57)
    {
      goto LABEL_17;
    }
  }

  v81 = v114;
  v82 = v114[2];
  if (v82)
  {
    v83 = 0;
    v84 = _swiftEmptyArrayStorage;
    while (v83 < v81[2])
    {
      v85 = (*(v121 + 80) + 32) & ~*(v121 + 80);
      v86 = *(v121 + 72);
      sub_100022A54(v81 + v85 + v86 * v83, v34, type metadata accessor for OwnedBeaconRecord);
      if (sub_100AD69D8(v34, v53))
      {
        sub_10002911C(v34, v120, type metadata accessor for OwnedBeaconRecord);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v122 = v84;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10112434C(0, v84[2] + 1, 1);
          v53 = v112;
          v84 = v122;
        }

        v89 = v84[2];
        v88 = v84[3];
        if (v89 >= v88 >> 1)
        {
          sub_10112434C((v88 > 1), v89 + 1, 1);
          v53 = v112;
          v84 = v122;
        }

        v84[2] = v89 + 1;
        sub_10002911C(v120, v84 + v85 + v89 * v86, type metadata accessor for OwnedBeaconRecord);
        v81 = v114;
      }

      else
      {
        sub_100022C40(v34, type metadata accessor for OwnedBeaconRecord);
      }

      if (v82 == ++v83)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_43;
  }

  v84 = _swiftEmptyArrayStorage;
LABEL_41:

  v44 = sub_1000257D0(v84);

  sub_100022C40(v110, type metadata accessor for OwnedBeaconGroup);
  (*v107)(v113, v102);
  sub_100022C40(v93, type metadata accessor for OwnedBeaconRecord);
LABEL_6:
  sub_100007BAC(v123);
  return v44;
}

uint64_t sub_100B0E4A8(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OwnedBeaconRecord(0);
  sub_100022A54(a1 + *(v6 + 24), v5, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v12 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

    v13 = &v5[*(v12 + 80)];
    v8 = *v13;
    v11 = *(v13 + 1);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v8 = *(v5 + 4);
      }

      else
      {
        sub_100022C40(v5, type metadata accessor for StableIdentifier);
        return 0;
      }

      return v8;
    }

    v9 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

    v10 = &v5[*(v9 + 80)];
    v8 = *v10;
    v11 = *(v10 + 1);
  }

  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 8))(v5, v14);
  v25 = v8;
  v26 = v11;
  sub_1000DF96C();

  v15 = Data.init<A>(hexString:)();
  if (v16 >> 60 != 15)
  {
    v17 = v15;
    v18 = v16;
    v25 = v15;
    v26 = v16;
    sub_1000E0A3C();
    if ((DataProtocol.isNull.getter() & 1) == 0)
    {

      v19 = Data.trimmed.getter();
      v21 = v20;
      static String.Encoding.utf8.getter();
      v22 = String.init(data:encoding:)();
      if (!v23)
      {
        v22 = Data.hexString.getter();
      }

      v8 = v22;
      sub_100016590(v19, v21);
    }

    sub_100006654(v17, v18);
  }

  return v8;
}

uint64_t sub_100B0E7A8(uint64_t a1)
{
  v2 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  sub_100022A54(a1 + *(v5 + 24), v4, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v12 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

    v9 = v4[*(v12 + 96)];
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_6:
    sub_100022C40(v4, type metadata accessor for StableIdentifier);
    return -1;
  }

  v7 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

  v8 = &v4[*(v7 + 96)];
  v9 = *v8;
  v10 = v8[1];

  if ((v10 & 1) == 0)
  {
LABEL_9:
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v4, v13);
    return v9;
  }

  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v4, v11);
  return -1;
}

uint64_t sub_100B0E9C8(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a1;
  v42 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v42);
  v12 = &v40 - v11;
  v13 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v43 = a5;
  v44 = a4;
  v16[4] = a6;
  v17 = qword_101694BE8;

  v45 = a6;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177BA08);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67109120;
    *(v21 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v19, v20, "Saving record. Disk First? %{BOOL}d", v21, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v22 = qword_10177C218;
  v23 = [objc_opt_self() sharedInstance];
  v24 = [v23 isInternalBuild];

  if (v24)
  {
    v25 = String._bridgeToObjectiveC()();
    v26 = [v22 BOOLForKey:v25];
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_opt_self() defaultStore];
  v28 = v46;
  if (v27)
  {
    v29 = v27;
    v30 = [v27 aa_primaryAppleAccount];

    if (v30 && (v30, ((a2 | v26) & 1) == 0))
    {
      sub_1006E5214(v28, sub_100B27354, v16);
    }

    else
    {
      sub_100022A54(v28, v15, type metadata accessor for OwnedBeaconRecord);
      QueueSynchronizer.conditionalSync<A>(_:)();
      sub_1009F15D4(v15);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v41 = v15;
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Saved LocalStorageBacked record. Calling completion.", v34, 2u);
        v15 = v41;
      }

      v35 = v46;
      sub_100022A54(v46, v12, type metadata accessor for OwnedBeaconRecord);
      swift_storeEnumTagMultiPayload();
      sub_100AD79A4(v12, v44, v43, v45);
      sub_10000B3A8(v12, &unk_1016B15A0, &qword_1013A0900);
      if (((v30 != 0) & ~v26) != 0)
      {
        v39 = type metadata accessor for Transaction();
        __chkstk_darwin(v39);
        *(&v40 - 4) = a3;
        *(&v40 - 3) = v35;
        *(&v40 - 2) = v15;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 67109376;
          *(v38 + 4) = v26;
          *(v38 + 8) = 1024;
          *(v38 + 10) = v30 != 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v38, 0xEu);
        }
      }

      sub_100022C40(v15, type metadata accessor for OwnedBeaconRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B0F108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v30 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;

  v27 = a4;

  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v12 = aBlock[0];
  v13 = swift_allocObject();
  v13[2] = sub_100B27348;
  v13[3] = v11;
  v13[4] = a1;

  QueueSynchronizer.conditionalSync<A>(_:)();
  v14 = LOBYTE(aBlock[0]);
  v15 = static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  v16 = qword_10177C390;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_101385D80;
  *(v17 + 56) = &type metadata for Bool;
  *(v17 + 64) = &protocol witness table for Bool;
  *(v17 + 32) = v14;
  os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "localAvailable: %d", v26);

  v18 = static os_log_type_t.default.getter();
  if (v14)
  {
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v16, "Container is already available -- calling completion immediately", 64, 2, _swiftEmptyArrayStorage);
    sub_10040020C(a2, a3, v27);
  }

  else
  {
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v16, "Container is not yet available", 30, 2, _swiftEmptyArrayStorage);
    v19 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v16, "Waiting for availableWaitQueue", 30, 2, _swiftEmptyArrayStorage);
    v27 = *(v12 + 72);
    v20 = swift_allocObject();
    v20[2] = v12;
    v20[3] = sub_100B27E44;
    v20[4] = v13;
    aBlock[4] = sub_100B28008;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101648298;
    v21 = _Block_copy(aBlock);

    v22 = v28;
    static DispatchQoS.unspecified.getter();
    v34 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v23 = v30;
    v24 = v33;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v32 + 8))(v23, v24);
    (*(v29 + 8))(v22, v31);
  }
}

Swift::Int sub_100B0F6A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1000BC4D4(a2, a3);
    v5 = static _SetStorage.allocate(capacity:)();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v12);
      result = Hasher._finalize()();
      v14 = ~(-1 << *(v5 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v7 + 8 * v16);
      v18 = 1 << (result & v14);
      v19 = *(v5 + 48);
      if ((v18 & v17) != 0)
      {
        while (*(v19 + v15) != v12)
        {
          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v7 + 8 * (v15 >> 6));
          v18 = 1 << v15;
          if (((1 << v15) & v17) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v16) = v18 | v17;
        *(v19 + v15) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100B0F7D8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v117 = a2;
  v113 = type metadata accessor for BeaconStoreFileRecord(0);
  v110 = *(v113 - 8);
  __chkstk_darwin(v113);
  v109 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v111 = *(v8 - 8);
  v112 = v8;
  v9 = __chkstk_darwin(v8);
  v108 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v100 = &v95 - v11;
  v12 = type metadata accessor for UUID();
  v116 = *(v12 - 1);
  v13 = __chkstk_darwin(v12);
  v96 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v107 = &v95 - v16;
  __chkstk_darwin(v15);
  v99 = &v95 - v17;
  v97 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v97);
  v98 = &v95 - v18;
  v19 = type metadata accessor for ShareRecord(0);
  v104 = *(v19 - 1);
  v20 = *(v104 + 64);
  v21 = __chkstk_darwin(v19);
  v106 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = (&v95 - v22);
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v114 = v24;

  v25 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v26 = qword_10177C380;
  v102 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v27 = swift_allocObject();
  v101 = xmmword_101385D80;
  *(v27 + 16) = xmmword_101385D80;
  v118 = a1;
  sub_100022A54(a1, v23, type metadata accessor for ShareRecord);
  v105 = v23;
  v115 = v19;
  v28 = String.init<A>(describing:)();
  v30 = v29;
  *(v27 + 56) = &type metadata for String;
  v31 = sub_100008C00();
  *(v27 + 64) = v31;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v103 = v26;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v26, "Attempting to remove: %@", 24, 2, v27);

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v32 = qword_10177C218;
  v33 = [objc_opt_self() sharedInstance];
  v34 = [v33 isInternalBuild];

  if (v34)
  {
    v35 = String._bridgeToObjectiveC()();
    v36 = [v32 BOOLForKey:v35];
  }

  else
  {
    v36 = 0;
  }

  v37 = [objc_opt_self() defaultStore];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 aa_primaryAppleAccount];

    v119 = v12;
    if (v39 && (v39, (v36 & 1) == 0))
    {
      v108 = v31;
      v109 = v20;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v53 = *(v115 + 5);
      v54 = v118;
      v55 = UUID.uuidString.getter();
      v57 = v56;
      v58 = v12;
      v59 = v117;
      v60 = *(v117 + 160);
      v61._countAndFlagsBits = v55;
      v61._object = v57;
      isa = CKRecordID.init(recordName:zoneID:)(v61, v60).super.isa;
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v96 = isa;
      v107 = sub_100FDB020(isa);

      v106 = swift_allocBox();
      v63 = *(v110 + 56);
      v97 = v64;
      v65 = v113;
      v110 += 56;
      v95 = v63;
      v63(v64, 1, 1, v113);
      v66 = *(v59 + 168);
      v67 = v99;
      (*(v116 + 2))(v99, v54 + v53, v58);
      if (qword_101694468 != -1)
      {
        swift_once();
      }

      v68 = v112;
      sub_1000076D4(v112, qword_10177A518);
      UUID.uuidString.getter();
      v69 = v100;
      URL.appendingPathComponent(_:isDirectory:)();

      __chkstk_darwin(v70);
      *(&v95 - 4) = v66;
      *(&v95 - 3) = v67;
      *(&v95 - 2) = v69;
      v71 = v98;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v111 + 8))(v69, v68);
      (*(v116 + 1))(v67, v119);
      v95(v71, 0, 1, v65);
      sub_10002311C(v71, v97, &qword_1016B53E0, &unk_1013D65D0);
      v73 = v105;
      v74 = v103;
      v75 = v108;
      v76 = v96;
      v77 = static os_log_type_t.default.getter();
      v78 = swift_allocObject();
      *(v78 + 16) = v101;
      v79 = v76;
      v119 = v79;
      v80 = [v79 description];
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;

      *(v78 + 56) = &type metadata for String;
      *(v78 + 64) = v75;
      *(v78 + 32) = v81;
      *(v78 + 40) = v83;
      os_log(_:dso:log:_:_:)(v77, &_mh_execute_header, v74, "cloudBacked item deleted from disk: %@", 38, 2, v78);

      v116 = type metadata accessor for ShareRecord;
      sub_100022A54(v118, v73, type metadata accessor for ShareRecord);
      v84 = v73;
      v85 = (*(v104 + 80) + 32) & ~*(v104 + 80);
      v86 = &v109[v85 + 7] & 0xFFFFFFFFFFFFFFF8;
      v87 = swift_allocObject();
      v88 = v106;
      v89 = v117;
      *(v87 + 16) = v106;
      *(v87 + 24) = v89;
      v115 = type metadata accessor for ShareRecord;
      sub_10002911C(v73, v87 + v85, type metadata accessor for ShareRecord);
      v90 = (v87 + v86);
      v91 = v114;
      *v90 = sub_100B27FFC;
      v90[1] = v91;

      Future.addSuccess(block:)();

      sub_100022A54(v118, v84, v116);
      v92 = swift_allocObject();
      *(v92 + 16) = v88;
      *(v92 + 24) = v89;
      sub_10002911C(v84, v92 + v85, v115);
      v93 = (v92 + v86);
      *v93 = sub_100B27FFC;
      v93[1] = v91;

      Future.addFailure(block:)();
    }

    else
    {
      v105 = a3;
      v110 = a4;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      v104 = sub_1000076D4(v40, qword_10177BA08);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.info.getter();
      v43 = os_log_type_enabled(v41, v42);
      v44 = v107;
      if (v43)
      {
        v45 = swift_slowAlloc();
        *v45 = 67109376;
        *(v45 + 4) = v36;
        *(v45 + 8) = 1024;
        *(v45 + 10) = v39 != 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v45, 0xEu);
      }

      v46 = *(v117 + 168);
      v47 = v116;
      v48 = v118 + *(v115 + 5);
      v103 = *(v116 + 2);
      v103(v44, v48, v119);
      if (qword_101694468 != -1)
      {
        swift_once();
      }

      v49 = v112;
      sub_1000076D4(v112, qword_10177A518);
      UUID.uuidString.getter();
      v50 = v108;
      URL.appendingPathComponent(_:isDirectory:)();

      __chkstk_darwin(v51);
      *(&v95 - 4) = v46;
      *(&v95 - 3) = v44;
      *(&v95 - 2) = v50;
      v52 = v109;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v111 + 8))(v50, v49);
      (*(v47 + 1))(v44, v119);
      sub_100B39D8C(v52);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v72 = sub_100A8306C(9u);
      sub_100A8375C(v72);
      v105(1);
      sub_100022C40(v52, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

id sub_100B10ADC(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v6 - 8);
  v8 = &v34[-v7 - 8];
  v9 = type metadata accessor for OwnedBeaconGroup(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = [objc_allocWithZone(SPBeaconGroup) init];
  sub_10001F280(a1, v34);
  sub_1000BC4D4(&qword_10169EF38, &unk_1013AB040);
  v14 = swift_dynamicCast();
  v15 = *(v10 + 56);
  if (v14)
  {
    v15(v8, 0, 1, v9);
    sub_10002911C(v8, v12, type metadata accessor for OwnedBeaconGroup);
    if (v12[24])
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v12 + 2);
    }

    [v13 setVersion:v16];
    v19 = String._bridgeToObjectiveC()();
    [v13 setName:v19];

    v20 = MACAddress.data.getter();
    v22 = v21;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v20, v22);
    [v13 setMacAddress:isa];

    [v13 setIsPairingComplete:sub_100518118() & 1];
    [v13 setIsFindMyNetworkEnabled:v12[*(v9 + 32)]];
    sub_100022C40(v12, type metadata accessor for OwnedBeaconGroup);
  }

  else
  {
    v15(v8, 1, 1, v9);
    sub_10000B3A8(v8, &unk_1016AF8B0, &unk_1013A0700);
    v17 = String._bridgeToObjectiveC()();
    [v13 setName:v17];

    v18 = Data._bridgeToObjectiveC()().super.isa;
    [v13 setMacAddress:v18];

    [v13 setIsPairingComplete:1];
    [v13 setIsFindMyNetworkEnabled:1];
  }

  v24 = a1[3];
  v25 = a1[4];
  sub_1000035D0(a1, v24);
  (*(v25 + 8))(v24, v25);
  v26 = UUID._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  [v13 setIdentifier:v26];

  [v13 setClassification:0];
  [v13 setStatus:0];
  v27 = a1[3];
  v28 = a1[4];
  sub_1000035D0(a1, v27);
  (*(v28 + 16))(v27, v28);
  sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v29 = Set._bridgeToObjectiveC()().super.isa;

  [v13 setBeaconIdentifiers:v29];

  [v13 setIsClassicConnected:0];
  sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
  sub_1000041A4(&unk_1016AF8E8, &qword_1016AF8E0, &qword_101393130, &protocol conformance descriptor for Set<A>);
  v30 = Set._bridgeToObjectiveC()().super.isa;
  [v13 setMultipartStatus:v30];

  [v13 setIsConnected:0];
  [v13 setLostModeInfo:0];
  sub_10090979C(_swiftEmptyArrayStorage);
  sub_100008BB8(0, &qword_1016B54D8, SPPairingState_ptr);
  v31 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v13 setBeaconMap:v31];

  return v13;
}

Swift::Int sub_100B11100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016B5498, &qword_1013D6818);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_100B11268(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016B54B8, &qword_1013D6858);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_100B1145C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v113 = a2;
  v110 = type metadata accessor for BeaconStoreFileRecord(0);
  v107 = *(v110 - 8);
  __chkstk_darwin(v110);
  v105 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v108 = *(v8 - 8);
  v109 = v8;
  v9 = __chkstk_darwin(v8);
  v104 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v99 = &v92 - v11;
  v12 = type metadata accessor for UUID();
  v115 = *(v12 - 1);
  v116 = v12;
  v13 = __chkstk_darwin(v12);
  v93 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v92 - v16;
  __chkstk_darwin(v15);
  v98 = &v92 - v18;
  v19 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v19);
  v97 = &v92 - v20;
  v21 = type metadata accessor for BeaconNamingRecord(0);
  v96 = *(v21 - 1);
  v22 = *(v96 + 64);
  v23 = __chkstk_darwin(v21);
  v101 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v92 - v24;
  v26 = swift_allocObject();
  v106 = a3;
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;
  v111 = v26;

  v27 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v28 = qword_10177C380;
  v102 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v29 = swift_allocObject();
  v100 = xmmword_101385D80;
  *(v29 + 16) = xmmword_101385D80;
  v114 = a1;
  sub_100022A54(a1, v25, type metadata accessor for BeaconNamingRecord);
  v112 = v21;
  v30 = String.init<A>(describing:)();
  v32 = v31;
  *(v29 + 56) = &type metadata for String;
  v94 = sub_100008C00();
  *(v29 + 64) = v94;
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  v95 = v28;
  os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v28, "Attempting to remove: %@", 24, 2, v29);

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v33 = qword_10177C218;
  v34 = [objc_opt_self() sharedInstance];
  v35 = [v34 isInternalBuild];

  if (v35)
  {
    v36 = String._bridgeToObjectiveC()();
    v37 = [v33 BOOLForKey:v36];
  }

  else
  {
    v37 = 0;
  }

  v38 = [objc_opt_self() defaultStore];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 aa_primaryAppleAccount];

    v103 = a4;
    if (v40 && (v40, (v37 & 1) == 0))
    {
      v106 = v25;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v52 = *(v112 + 5);
      v53 = v114;
      v54 = UUID.uuidString.getter();
      v56 = v55;
      v57 = v113;
      v58 = *(v113 + 160);
      v59._countAndFlagsBits = v54;
      v59._object = v56;
      isa = CKRecordID.init(recordName:zoneID:)(v59, v58).super.isa;
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v101 = isa;
      v105 = sub_100FDB020(isa);

      v104 = swift_allocBox();
      v61 = *(v107 + 56);
      v93 = v62;
      v63 = v110;
      v107 += 56;
      v61(v62, 1, 1, v110);
      v64 = *(v57 + 168);
      v65 = v98;
      (*(v115 + 2))(v98, v53 + v52, v116);
      v66 = objc_autoreleasePoolPush();
      v67 = v99;
      sub_100DE1148(v99);
      v112 = v22;
      objc_autoreleasePoolPop(v66);
      __chkstk_darwin(v68);
      *(&v92 - 4) = v64;
      *(&v92 - 3) = v65;
      *(&v92 - 2) = v67;
      v69 = v97;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v108 + 8))(v67, v109);
      (*(v115 + 1))(v65, v116);
      v61(v69, 0, 1, v63);
      sub_10002311C(v69, v93, &qword_1016B53E0, &unk_1013D65D0);
      v71 = v96;
      v72 = v95;
      v73 = v94;
      v74 = v101;
      v75 = static os_log_type_t.default.getter();
      v76 = swift_allocObject();
      *(v76 + 16) = v100;
      v77 = v74;
      v116 = v77;
      v78 = [v77 description];
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v80;

      *(v76 + 56) = &type metadata for String;
      *(v76 + 64) = v73;
      *(v76 + 32) = v79;
      *(v76 + 40) = v81;
      os_log(_:dso:log:_:_:)(v75, &_mh_execute_header, v72, "cloudBacked item deleted from disk: %@", 38, 2, v76);

      v115 = type metadata accessor for BeaconNamingRecord;
      v82 = v106;
      sub_100022A54(v114, v106, type metadata accessor for BeaconNamingRecord);
      v83 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v84 = (v112 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
      v85 = swift_allocObject();
      v86 = v104;
      v87 = v113;
      *(v85 + 16) = v104;
      *(v85 + 24) = v87;
      v112 = type metadata accessor for BeaconNamingRecord;
      sub_10002911C(v82, v85 + v83, type metadata accessor for BeaconNamingRecord);
      v88 = (v85 + v84);
      v110 = sub_100B27FFC;
      v89 = v111;
      *v88 = sub_100B27FFC;
      v88[1] = v89;

      Future.addSuccess(block:)();

      sub_100022A54(v114, v82, v115);
      v90 = swift_allocObject();
      *(v90 + 16) = v86;
      *(v90 + 24) = v87;
      sub_10002911C(v82, v90 + v83, v112);
      v91 = (v90 + v84);
      *v91 = v110;
      v91[1] = v89;

      Future.addFailure(block:)();
    }

    else
    {
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v41 = v114;
      v42 = type metadata accessor for Logger();
      sub_1000076D4(v42, qword_10177BA08);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();
      v45 = os_log_type_enabled(v43, v44);
      v46 = v104;
      if (v45)
      {
        v47 = swift_slowAlloc();
        *v47 = 67109376;
        *(v47 + 4) = v37;
        *(v47 + 8) = 1024;
        *(v47 + 10) = v40 != 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v47, 0xEu);
      }

      v48 = *(v113 + 168);
      (*(v115 + 2))(v17, v41 + *(v112 + 5), v116);
      v49 = objc_autoreleasePoolPush();
      sub_100DE1148(v46);
      objc_autoreleasePoolPop(v49);
      __chkstk_darwin(v50);
      *(&v92 - 4) = v48;
      *(&v92 - 3) = v17;
      *(&v92 - 2) = v46;
      v51 = v105;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v108 + 8))(v46, v109);
      (*(v115 + 1))(v17, v116);
      sub_100B39D8C(v51);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v70 = sub_100A8306C(9u);
      sub_100A8375C(v70);
      v106(1);
      sub_100022C40(v51, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {

    __break(1u);

    objc_autoreleasePoolPop(v33);
    __break(1u);
  }
}

void sub_100B12498(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v43 = a3;
  v40 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  __chkstk_darwin(v40);
  v41 = &v38 - v9;
  v10 = type metadata accessor for BeaconNamingRecord(0);
  __chkstk_darwin(v10 - 8);
  v44 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  v13 = swift_allocObject();
  v13[2] = sub_1002FB454;
  v13[3] = v12;
  v13[4] = a4;
  _Block_copy(a5);
  _Block_copy(a5);
  v14 = qword_101694BE8;

  v42 = a4;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177BA08);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v16, v17, "Saving record. Disk First? %{BOOL}d", v18, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v19 = qword_10177C218;
  v20 = [objc_opt_self() sharedInstance];
  v21 = [v20 isInternalBuild];

  if (v21)
  {
    v22 = String._bridgeToObjectiveC()();
    v21 = [v19 BOOLForKey:v22];
  }

  v23 = [objc_opt_self() defaultStore];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 aa_primaryAppleAccount];

    if (v25 && (v25, ((a2 | v21) & 1) == 0))
    {
      sub_1006E547C(a1, sub_100B24B10, v13);

      _Block_release(a5);
    }

    else
    {
      v39 = v21;
      v26 = v44;
      sub_100022A54(a1, v44, type metadata accessor for BeaconNamingRecord);
      QueueSynchronizer.conditionalSync<A>(_:)();
      sub_1009F0C24(v26);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v38 = v12;
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Saved LocalStorageBacked record. Calling completion.", v29, 2u);
      }

      v30 = v41;
      sub_100022A54(a1, v41, type metadata accessor for BeaconNamingRecord);
      swift_storeEnumTagMultiPayload();
      _Block_copy(a5);
      sub_10070DAD8(v30, v42, a5);
      _Block_release(a5);
      sub_10000B3A8(v30, &qword_1016A7808, &qword_1013D6750);
      v31 = v39;
      if (((v25 != 0) & ~v39) != 0)
      {
        v36 = type metadata accessor for Transaction();
        __chkstk_darwin(v36);
        v37 = v44;
        *(&v38 - 4) = v43;
        *(&v38 - 3) = a1;
        *(&v38 - 2) = v37;
        static Transaction.named<A>(_:with:)();
        v35 = v37;
      }

      else
      {
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 67109376;
          *(v34 + 4) = v31;
          *(v34 + 8) = 1024;
          *(v34 + 10) = v25 != 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v34, 0xEu);
        }

        v35 = v44;
      }

      sub_100022C40(v35, type metadata accessor for BeaconNamingRecord);

      _Block_release(a5);
    }
  }

  else
  {

    _Block_release(a5);
    _Block_release(a5);

    __break(1u);
  }
}

void sub_100B12C8C(uint64_t *a1, int a2, uint64_t a3, void *a4, uint64_t a5)
{
  v39 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  __chkstk_darwin(v39);
  v11 = &v39 - v10;
  v12 = type metadata accessor for BeaconNamingRecord(0);
  __chkstk_darwin(v12 - 8);
  v43 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v42 = v14;
  v15 = qword_101694BE8;
  v16 = a4;
  v40 = a5;
  v41 = v16;

  if (v15 != -1)
  {
    swift_once();
  }

  v17 = a1;
  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177BA08);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67109120;
    *(v21 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v19, v20, "Saving record. Disk First? %{BOOL}d", v21, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v22 = qword_10177C218;
  v23 = [objc_opt_self() sharedInstance];
  v24 = [v23 isInternalBuild];

  if (v24)
  {
    v25 = String._bridgeToObjectiveC()();
    v24 = [v22 BOOLForKey:v25];
  }

  v26 = [objc_opt_self() defaultStore];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 aa_primaryAppleAccount];

    if (v28 && (v28, ((a2 | v24) & 1) == 0))
    {
      sub_1006E547C(v17, sub_100B23AC4, v42);
    }

    else
    {
      v29 = v43;
      sub_100022A54(v17, v43, type metadata accessor for BeaconNamingRecord);
      QueueSynchronizer.conditionalSync<A>(_:)();
      sub_1009F0C24(v29);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Saved LocalStorageBacked record. Calling completion.", v32, 2u);
      }

      sub_100022A54(v17, v11, type metadata accessor for BeaconNamingRecord);
      swift_storeEnumTagMultiPayload();
      sub_1006D5B48(v11, v41, v40);
      sub_10000B3A8(v11, &qword_1016A7808, &qword_1013D6750);
      if (((v28 != 0) & ~v24) != 0)
      {
        v37 = type metadata accessor for Transaction();
        __chkstk_darwin(v37);
        *(&v39 - 4) = a3;
        *(&v39 - 3) = v17;
        v38 = v43;
        *(&v39 - 2) = v43;
        static Transaction.named<A>(_:with:)();
        v36 = v38;
      }

      else
      {
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 67109376;
          *(v35 + 4) = v24;
          *(v35 + 8) = 1024;
          *(v35 + 10) = v28 != 0;
          _os_log_impl(&_mh_execute_header, v33, v34, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v35, 0xEu);
        }

        v36 = v43;
      }

      sub_100022C40(v36, type metadata accessor for BeaconNamingRecord);
    }
  }

  else
  {

    __break(1u);
  }
}

Swift::Int sub_100B133C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016B55E8, &qword_1013D6BD0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_100B13520(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      sub_1000BC4D4(a2, a3);
      v7 = static _SetStorage.allocate(capacity:)();
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
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

  v7 = &_swiftEmptySetSingleton;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = (v7 + 7);
  v46 = v9;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = NSObject._rawHashValue(seed:)(v7[5]);
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *&v13[8 * (v20 >> 6)];
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_100008BB8(0, a4, a5);
        while (1)
        {
          v25 = *(v7[6] + 8 * v20);
          v26 = static NSObject.== infix(_:_:)();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *&v13[8 * (v20 >> 6)];
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v13[8 * v21] = v23 | v22;
        *(v7[6] + 8 * v20) = v17;
        v27 = v7[2];
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        v7[2] = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = v7[5];
      v31 = *(a1 + 32 + 8 * v29);
      v32 = NSObject._rawHashValue(seed:)(v30);
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = *&v13[8 * (v34 >> 6)];
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        sub_100008BB8(0, a4, a5);
        while (1)
        {
          v39 = *(v7[6] + 8 * v34);
          v40 = static NSObject.== infix(_:_:)();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = *&v13[8 * (v34 >> 6)];
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v13[8 * v35] = v37 | v36;
        *(v7[6] + 8 * v34) = v31;
        v41 = v7[2];
        v16 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        v7[2] = v42;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_100B1380C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v6 - 8);
  v30 = v6;
  __chkstk_darwin(v6);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v25 = a2;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v11 = aBlock[0];
  v12 = swift_allocObject();
  v12[2] = sub_100B2531C;
  v12[3] = v10;
  v12[4] = a1;

  QueueSynchronizer.conditionalSync<A>(_:)();
  v13 = LOBYTE(aBlock[0]);
  v14 = static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C390;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  *(v16 + 56) = &type metadata for Bool;
  *(v16 + 64) = &protocol witness table for Bool;
  *(v16 + 32) = v13;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "localAvailable: %d", v25);

  v17 = static os_log_type_t.default.getter();
  if (v13)
  {
    v18 = os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v15, "Container is already available -- calling completion immediately", 64, 2, _swiftEmptyArrayStorage);
    v25(v18);
  }

  else
  {
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v15, "Container is not yet available", 30, 2, _swiftEmptyArrayStorage);
    v19 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v15, "Waiting for availableWaitQueue", 30, 2, _swiftEmptyArrayStorage);
    v25 = *(v11 + 72);
    v20 = swift_allocObject();
    v20[2] = v11;
    v20[3] = sub_100B27E44;
    v20[4] = v12;
    aBlock[4] = sub_100B28008;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101648720;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v31 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v22 = v27;
    v23 = v30;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v29 + 8))(v22, v23);
    (*(v26 + 8))(v9, v28);
  }
}

uint64_t sub_100B13D74(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v41 = a3;
  v38 = sub_1000BC4D4(&qword_1016B1840, &qword_1013B68F0);
  __chkstk_darwin(v38);
  v10 = &v38 - v9;
  v11 = type metadata accessor for LostModeRecord(0);
  __chkstk_darwin(v11 - 8);
  v42 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v40 = v13;
  v14 = qword_101694BE8;

  v39 = a5;
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177BA08);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v16, v17, "Saving record. Disk First? %{BOOL}d", v18, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v19 = qword_10177C218;
  v20 = [objc_opt_self() sharedInstance];
  v21 = [v20 isInternalBuild];

  if (v21)
  {
    v22 = String._bridgeToObjectiveC()();
    v21 = [v19 BOOLForKey:v22];
  }

  v23 = [objc_opt_self() defaultStore];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 aa_primaryAppleAccount];

    if (v25 && (v25, ((a2 | v21) & 1) == 0))
    {
      sub_1006E594C(a1, sub_100B27A2C, v40);
    }

    else
    {
      v26 = v42;
      sub_100022A54(a1, v42, type metadata accessor for LostModeRecord);
      sub_1009F0274(v26);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Saved LocalStorageBacked record. Calling completion.", v30, 2u);
      }

      sub_100022A54(a1, v10, type metadata accessor for LostModeRecord);
      swift_storeEnumTagMultiPayload();
      v31 = swift_projectBox();
      swift_beginAccess();
      sub_1008BA6D8(v10, v31);
      dispatch_group_leave(v39);
      sub_10000B3A8(v10, &qword_1016B1840, &qword_1013B68F0);
      if (((v25 != 0) & ~v21) != 0)
      {
        v36 = type metadata accessor for Transaction();
        __chkstk_darwin(v36);
        v37 = v42;
        *(&v38 - 4) = v41;
        *(&v38 - 3) = a1;
        *(&v38 - 2) = v37;
        static Transaction.named<A>(_:with:)();
        v35 = v37;
      }

      else
      {
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 67109376;
          *(v34 + 4) = v21;
          *(v34 + 8) = 1024;
          *(v34 + 10) = v25 != 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v34, 0xEu);
        }

        v35 = v42;
      }

      sub_100022C40(v35, type metadata accessor for LostModeRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B144B8(uint64_t a1, uint64_t a2, void *a3)
{
  v123 = a2;
  v118 = type metadata accessor for BeaconStoreFileRecord(0);
  v115 = *(v118 - 8);
  __chkstk_darwin(v118);
  v114 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v116 = *(v6 - 8);
  v117 = v6;
  v7 = __chkstk_darwin(v6);
  v113 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v109 = &v100 - v9;
  v124 = type metadata accessor for UUID();
  v10 = *(v124 - 1);
  v11 = __chkstk_darwin(v124);
  v102 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v100 - v14;
  __chkstk_darwin(v13);
  v105 = &v100 - v16;
  v103 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v103);
  v104 = &v100 - v17;
  v18 = type metadata accessor for LostModeRecord(0);
  v111 = *(v18 - 8);
  v19 = v111[8];
  v20 = __chkstk_darwin(v18);
  v112 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v100 - v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_100B277FC;
  *(v24 + 24) = v23;
  v119 = v24;
  v120 = a3;
  v121 = v23;

  v25 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v26 = qword_10177C380;
  v107 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v27 = swift_allocObject();
  v106 = xmmword_101385D80;
  *(v27 + 16) = xmmword_101385D80;
  sub_100022A54(a1, v22, type metadata accessor for LostModeRecord);
  v122 = v18;
  v28 = String.init<A>(describing:)();
  v30 = v29;
  *(v27 + 56) = &type metadata for String;
  v108 = sub_100008C00();
  *(v27 + 64) = v108;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v110 = v26;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v26, "Attempting to remove: %@", 24, 2, v27);

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v31 = qword_10177C218;
  v32 = [objc_opt_self() sharedInstance];
  v33 = [v32 isInternalBuild];

  if (v33)
  {
    v34 = String._bridgeToObjectiveC()();
    v35 = [v31 BOOLForKey:v34];
  }

  else
  {
    v35 = 0;
  }

  v36 = v15;
  v37 = [objc_opt_self() defaultStore];
  if (v37)
  {
    v38 = v37;
    v125 = v10;
    v39 = [v37 aa_primaryAppleAccount];

    if (v39 && (v39, (v35 & 1) == 0))
    {
      v113 = v22;
      v114 = v19;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v53 = *(v122 + 20);
      v54 = UUID.uuidString.getter();
      v56 = v55;
      v57 = a1;
      v58 = v123;
      v59 = *(v123 + 160);
      v60._countAndFlagsBits = v54;
      v60._object = v56;
      isa = CKRecordID.init(recordName:zoneID:)(v60, v59).super.isa;
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v102 = isa;
      v112 = sub_100FDB020(isa);

      v103 = swift_allocBox();
      v62 = *(v115 + 56);
      v101 = v63;
      v64 = v118;
      v115 += 56;
      v62(v63, 1, 1, v118);
      v65 = *(v58 + 168);
      v66 = v57;
      v67 = v57 + v53;
      v68 = v105;
      v69 = v124;
      (v125)[2](v105, v67, v124);
      if (qword_101694EF8 != -1)
      {
        swift_once();
      }

      v70 = v117;
      sub_1000076D4(v117, qword_10177C140);
      v122 = v66;
      UUID.uuidString.getter();
      v71 = v109;
      URL.appendingPathComponent(_:isDirectory:)();

      __chkstk_darwin(v72);
      *(&v100 - 4) = v65;
      *(&v100 - 3) = v68;
      *(&v100 - 2) = v71;
      v73 = v104;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v116 + 8))(v71, v70);
      (v125[1])(v68, v69);
      v62(v73, 0, 1, v64);
      sub_10002311C(v73, v101, &qword_1016B53E0, &unk_1013D65D0);
      v77 = v110;
      v78 = v108;
      v79 = v102;
      v80 = static os_log_type_t.default.getter();
      v81 = swift_allocObject();
      *(v81 + 16) = v106;
      v82 = v79;
      v125 = v82;
      v83 = [v82 description];
      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v85;

      *(v81 + 56) = &type metadata for String;
      *(v81 + 64) = v78;
      *(v81 + 32) = v84;
      *(v81 + 40) = v86;
      os_log(_:dso:log:_:_:)(v80, &_mh_execute_header, v77, "cloudBacked item deleted from disk: %@", 38, 2, v81);

      v87 = v113;
      sub_100022A54(v122, v113, type metadata accessor for LostModeRecord);
      v88 = (*(v111 + 80) + 32) & ~*(v111 + 80);
      v89 = &v114[v88 + 7] & 0xFFFFFFFFFFFFFFF8;
      v90 = swift_allocObject();
      v91 = v103;
      v92 = v123;
      *(v90 + 16) = v103;
      *(v90 + 24) = v92;
      v124 = type metadata accessor for LostModeRecord;
      sub_10002911C(v87, v90 + v88, type metadata accessor for LostModeRecord);
      v93 = (v90 + v89);
      v118 = sub_100B27FFC;
      v94 = v119;
      *v93 = sub_100B27FFC;
      v93[1] = v94;

      Future.addSuccess(block:)();

      sub_100022A54(v122, v87, type metadata accessor for LostModeRecord);
      v95 = swift_allocObject();
      *(v95 + 16) = v91;
      *(v95 + 24) = v92;
      sub_10002911C(v87, v95 + v88, v124);
      v96 = (v95 + v89);
      *v96 = v118;
      v96[1] = v94;

      Future.addFailure(block:)();
    }

    else
    {
      v40 = a1;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      v115 = sub_1000076D4(v41, qword_10177BA08);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 67109376;
        *(v44 + 4) = v35;
        *(v44 + 8) = 1024;
        *(v44 + 10) = v39 != 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v44, 0xEu);
      }

      v45 = v116;

      v46 = *(v123 + 168);
      v47 = v40 + *(v122 + 20);
      v111 = v125[2];
      (v111)(v36, v47, v124);
      v48 = v36;
      if (qword_101694EF8 != -1)
      {
        swift_once();
      }

      v49 = v117;
      sub_1000076D4(v117, qword_10177C140);
      UUID.uuidString.getter();
      v50 = v113;
      URL.appendingPathComponent(_:isDirectory:)();

      __chkstk_darwin(v51);
      *(&v100 - 4) = v46;
      *(&v100 - 3) = v48;
      *(&v100 - 2) = v50;
      v52 = v114;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v45 + 8))(v50, v49);
      (v125[1])(v48, v124);
      sub_100B39D8C(v52);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v74 = sub_100A8306C(9u);
      sub_100A8375C(v74);
      v75 = v120;
      v76 = static os_log_type_t.default.getter();
      if (qword_1016950A0 != -1)
      {
        v98 = v76;
        swift_once();
        v76 = v98;
      }

      os_log(_:dso:log:_:_:)(v76, &_mh_execute_header, qword_10177C3E8, "Successfully reverted CK changes.", 33, 2, _swiftEmptyArrayStorage);
      dispatch_group_leave(v75);

      sub_100022C40(v52, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {
    v99 = v120;

    __break(1u);
  }

  return result;
}

uint64_t sub_100B156CC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v117 = a2;
  v113 = type metadata accessor for BeaconStoreFileRecord(0);
  v110 = *(v113 - 8);
  __chkstk_darwin(v113);
  v109 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v111 = *(v8 - 8);
  v112 = v8;
  v9 = __chkstk_darwin(v8);
  v108 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v100 = &v95 - v11;
  v12 = type metadata accessor for UUID();
  v116 = *(v12 - 1);
  v13 = __chkstk_darwin(v12);
  v96 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v107 = &v95 - v16;
  __chkstk_darwin(v15);
  v99 = &v95 - v17;
  v97 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v97);
  v98 = &v95 - v18;
  v19 = type metadata accessor for LostModeRecord(0);
  v104 = *(v19 - 1);
  v20 = *(v104 + 64);
  v21 = __chkstk_darwin(v19);
  v106 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = (&v95 - v22);
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v114 = v24;

  v25 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v26 = qword_10177C380;
  v102 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v27 = swift_allocObject();
  v101 = xmmword_101385D80;
  *(v27 + 16) = xmmword_101385D80;
  v118 = a1;
  sub_100022A54(a1, v23, type metadata accessor for LostModeRecord);
  v105 = v23;
  v115 = v19;
  v28 = String.init<A>(describing:)();
  v30 = v29;
  *(v27 + 56) = &type metadata for String;
  v31 = sub_100008C00();
  *(v27 + 64) = v31;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v103 = v26;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v26, "Attempting to remove: %@", 24, 2, v27);

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v32 = qword_10177C218;
  v33 = [objc_opt_self() sharedInstance];
  v34 = [v33 isInternalBuild];

  if (v34)
  {
    v35 = String._bridgeToObjectiveC()();
    v36 = [v32 BOOLForKey:v35];
  }

  else
  {
    v36 = 0;
  }

  v37 = [objc_opt_self() defaultStore];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 aa_primaryAppleAccount];

    v119 = v12;
    if (v39 && (v39, (v36 & 1) == 0))
    {
      v108 = v31;
      v109 = v20;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v53 = *(v115 + 5);
      v54 = v118;
      v55 = UUID.uuidString.getter();
      v57 = v56;
      v58 = v12;
      v59 = v117;
      v60 = *(v117 + 160);
      v61._countAndFlagsBits = v55;
      v61._object = v57;
      isa = CKRecordID.init(recordName:zoneID:)(v61, v60).super.isa;
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v96 = isa;
      v107 = sub_100FDB020(isa);

      v106 = swift_allocBox();
      v63 = *(v110 + 56);
      v97 = v64;
      v65 = v113;
      v110 += 56;
      v95 = v63;
      v63(v64, 1, 1, v113);
      v66 = *(v59 + 168);
      v67 = v99;
      (*(v116 + 2))(v99, v54 + v53, v58);
      if (qword_101694EF8 != -1)
      {
        swift_once();
      }

      v68 = v112;
      sub_1000076D4(v112, qword_10177C140);
      UUID.uuidString.getter();
      v69 = v100;
      URL.appendingPathComponent(_:isDirectory:)();

      __chkstk_darwin(v70);
      *(&v95 - 4) = v66;
      *(&v95 - 3) = v67;
      *(&v95 - 2) = v69;
      v71 = v98;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v111 + 8))(v69, v68);
      (*(v116 + 1))(v67, v119);
      v95(v71, 0, 1, v65);
      sub_10002311C(v71, v97, &qword_1016B53E0, &unk_1013D65D0);
      v73 = v105;
      v74 = v103;
      v75 = v108;
      v76 = v96;
      v77 = static os_log_type_t.default.getter();
      v78 = swift_allocObject();
      *(v78 + 16) = v101;
      v79 = v76;
      v119 = v79;
      v80 = [v79 description];
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;

      *(v78 + 56) = &type metadata for String;
      *(v78 + 64) = v75;
      *(v78 + 32) = v81;
      *(v78 + 40) = v83;
      os_log(_:dso:log:_:_:)(v77, &_mh_execute_header, v74, "cloudBacked item deleted from disk: %@", 38, 2, v78);

      v116 = type metadata accessor for LostModeRecord;
      sub_100022A54(v118, v73, type metadata accessor for LostModeRecord);
      v84 = v73;
      v85 = (*(v104 + 80) + 32) & ~*(v104 + 80);
      v86 = &v109[v85 + 7] & 0xFFFFFFFFFFFFFFF8;
      v87 = swift_allocObject();
      v88 = v106;
      v89 = v117;
      *(v87 + 16) = v106;
      *(v87 + 24) = v89;
      v115 = type metadata accessor for LostModeRecord;
      sub_10002911C(v73, v87 + v85, type metadata accessor for LostModeRecord);
      v90 = (v87 + v86);
      v91 = v114;
      *v90 = sub_100B27FFC;
      v90[1] = v91;

      Future.addSuccess(block:)();

      sub_100022A54(v118, v84, v116);
      v92 = swift_allocObject();
      *(v92 + 16) = v88;
      *(v92 + 24) = v89;
      sub_10002911C(v84, v92 + v85, v115);
      v93 = (v92 + v86);
      *v93 = sub_100B27FFC;
      v93[1] = v91;

      Future.addFailure(block:)();
    }

    else
    {
      v105 = a3;
      v110 = a4;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      v104 = sub_1000076D4(v40, qword_10177BA08);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.info.getter();
      v43 = os_log_type_enabled(v41, v42);
      v44 = v107;
      if (v43)
      {
        v45 = swift_slowAlloc();
        *v45 = 67109376;
        *(v45 + 4) = v36;
        *(v45 + 8) = 1024;
        *(v45 + 10) = v39 != 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v45, 0xEu);
      }

      v46 = *(v117 + 168);
      v47 = v116;
      v48 = v118 + *(v115 + 5);
      v103 = *(v116 + 2);
      v103(v44, v48, v119);
      if (qword_101694EF8 != -1)
      {
        swift_once();
      }

      v49 = v112;
      sub_1000076D4(v112, qword_10177C140);
      UUID.uuidString.getter();
      v50 = v108;
      URL.appendingPathComponent(_:isDirectory:)();

      __chkstk_darwin(v51);
      *(&v95 - 4) = v46;
      *(&v95 - 3) = v44;
      *(&v95 - 2) = v50;
      v52 = v109;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v111 + 8))(v50, v49);
      (*(v47 + 1))(v44, v119);
      sub_100B39D8C(v52);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v72 = sub_100A8306C(9u);
      sub_100A8375C(v72);
      v105(1);
      sub_100022C40(v52, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

void *sub_100B167CC(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v9 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v9);
  v11 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v12 - 8);
  v14 = &v48[-v13];
  v15 = type metadata accessor for OwnedBeaconRecord(0);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v48[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v21 = &v48[-v20];
  v53[3] = a5;
  v53[4] = a6;
  v22 = sub_1000280DC(v53);
  (*(*(a5 - 8) + 16))(v22, a1, a5);
  sub_10001F280(v53, v52);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v23 = swift_dynamicCast();
  v24 = *(v16 + 56);
  if (!v23)
  {
    v24(v14, 1, 1, v15);
    sub_10000B3A8(v14, &unk_1016A9A20, &qword_10138B280);
    goto LABEL_16;
  }

  v24(v14, 0, 1, v15);
  sub_10002911C(v14, v21, type metadata accessor for OwnedBeaconRecord);
  sub_100022A54(&v21[*(v15 + 24)], v11, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v31 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

    v32 = &v11[*(v31 + 96)];
    v33 = *v32;
    v34 = v32[1];

    if ((v34 & 1) == 0)
    {
      v28 = v49 & 1;
      v29 = v50 & 1;
      v30 = v51 & 1;
      v27 = v33;
      goto LABEL_13;
    }

    sub_100022C40(v21, type metadata accessor for OwnedBeaconRecord);
    v35 = type metadata accessor for UUID();
    (*(*(v35 - 8) + 8))(v11, v35);
LABEL_16:
    v45 = &_swiftEmptySetSingleton;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (qword_101694BF8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177BA38);
    sub_100022A54(v21, v19, type metadata accessor for OwnedBeaconRecord);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52[0] = v40;
      *v39 = 141558275;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      v41 = sub_1010DA578();
      v43 = v42;
      sub_100022C40(v19, type metadata accessor for OwnedBeaconRecord);
      v44 = sub_1000136BC(v41, v43, v52);

      *(v39 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "nearbyParts: Invalid stableIdentifier %{private,mask.hash}s", v39, 0x16u);
      sub_100007BAC(v40);
    }

    else
    {

      sub_100022C40(v19, type metadata accessor for OwnedBeaconRecord);
    }

    sub_100022C40(v21, type metadata accessor for OwnedBeaconRecord);
    sub_100022C40(v11, type metadata accessor for StableIdentifier);
    goto LABEL_16;
  }

  v26 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

  v27 = v11[*(v26 + 96)];
  v28 = v49 & 1;
  v29 = v50 & 1;
  v30 = v51 & 1;
LABEL_13:
  v45 = sub_100165BD4(v27, v28, v29, v30);
  sub_100022C40(v21, type metadata accessor for OwnedBeaconRecord);
  v46 = type metadata accessor for UUID();
  (*(*(v46 - 8) + 8))(v11, v46);
LABEL_17:
  sub_100007BAC(v53);
  return v45;
}

unint64_t sub_100B16E04(unint64_t result)
{
  if (result >= 0x17)
  {
    return 23;
  }

  return result;
}

uint64_t sub_100B16E14(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a3;
  v50 = a1;
  v8 = sub_1000BC4D4(&unk_1016B14A0, &unk_1013D68C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v42[-v9];
  v11 = sub_1000BC4D4(&unk_1016B1480, &qword_1013B6890);
  v45 = *(v11 - 8);
  v46 = v11;
  __chkstk_darwin(v11);
  v13 = &v42[-v12];
  v14 = type metadata accessor for SafeLocation(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v42[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  v18 = qword_101694BE8;
  v48 = a4;

  v47 = a5;
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177BA08);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v20, v21, "Saving record. Disk First? %{BOOL}d", v22, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v23 = qword_10177C218;
  v24 = [objc_opt_self() sharedInstance];
  v25 = [v24 isInternalBuild];

  if (v25)
  {
    v26 = String._bridgeToObjectiveC()();
    v27 = [v23 BOOLForKey:v26];
  }

  else
  {
    v27 = 0;
  }

  v28 = [objc_opt_self() defaultStore];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 aa_primaryAppleAccount];

    if (v30 && (v30, ((a2 | v27) & 1) == 0))
    {
      sub_1006E6084(v50, sub_100B24CBC, v17);
    }

    else
    {
      sub_100022A54(v50, v16, type metadata accessor for SafeLocation);
      sub_1009F04E0(v16);
      v44 = v17;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Saved LocalStorageBacked record. Calling completion.", v34, 2u);
      }

      v43 = v30 != 0;

      v35 = v50;
      sub_100022A54(v50, v13, type metadata accessor for SafeLocation);
      v36 = v46;
      swift_storeEnumTagMultiPayload();
      v37 = swift_projectBox();
      sub_1000D2A70(v13, v10, &unk_1016B1480, &qword_1013B6890);
      (*(v45 + 56))(v10, 0, 1, v36);
      swift_beginAccess();
      sub_10002311C(v10, v37, &unk_1016B14A0, &unk_1013D68C0);
      dispatch_group_leave(v47);
      sub_10000B3A8(v13, &unk_1016B1480, &qword_1013B6890);
      if (v43 & ~v27)
      {
        v41 = type metadata accessor for Transaction();
        __chkstk_darwin(v41);
        *&v42[-32] = v49;
        *&v42[-24] = v35;
        *&v42[-16] = v16;
        static Transaction.named<A>(_:with:)();
        sub_100022C40(v16, type metadata accessor for SafeLocation);
      }

      else
      {
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 67109376;
          *(v40 + 4) = v27;
          *(v40 + 8) = 1024;
          *(v40 + 10) = v30 != 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v40, 0xEu);
        }

        sub_100022C40(v16, type metadata accessor for SafeLocation);
      }
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B176D4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v117 = a2;
  v115 = type metadata accessor for BeaconStoreFileRecord(0);
  v112 = *(v115 - 8);
  __chkstk_darwin(v115);
  v110 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v113 = *(v8 - 8);
  v114 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v102 = &v97 - v12;
  v121 = type metadata accessor for UUID();
  v118 = *(v121 - 1);
  v13 = __chkstk_darwin(v121);
  v98 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v109 = &v97 - v16;
  __chkstk_darwin(v15);
  v101 = &v97 - v17;
  v99 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v99);
  v100 = &v97 - v18;
  v19 = type metadata accessor for SafeLocation(0);
  v20 = *(v19 - 1);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v108 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v97 - v23;
  v25 = swift_allocObject();
  v111 = a3;
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
  v116 = v25;

  v26 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v27 = qword_10177C380;
  v104 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v28 = swift_allocObject();
  v103 = xmmword_101385D80;
  *(v28 + 16) = xmmword_101385D80;
  sub_100022A54(a1, v24, type metadata accessor for SafeLocation);
  v107 = v24;
  v120 = v19;
  v29 = String.init<A>(describing:)();
  v31 = v30;
  *(v28 + 56) = &type metadata for String;
  v105 = sub_100008C00();
  *(v28 + 64) = v105;
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  v106 = v27;
  os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v27, "Attempting to remove: %@", 24, 2, v28);

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v32 = qword_10177C218;
  v33 = [objc_opt_self() sharedInstance];
  v34 = [v33 isInternalBuild];

  if (v34)
  {
    v35 = String._bridgeToObjectiveC()();
    v34 = [v32 BOOLForKey:v35];
  }

  v36 = v120;
  v37 = v11;
  v38 = [objc_opt_self() defaultStore];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 aa_primaryAppleAccount];

    v119 = a1;
    if (v40 && (v40, (v34 & 1) == 0))
    {
      v111 = v21;
      v120 = v20;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v53 = *(v36 + 5);
      v54 = UUID.uuidString.getter();
      v56 = v55;
      v57 = v117;
      v58 = *(v117 + 160);
      v59._countAndFlagsBits = v54;
      v59._object = v56;
      isa = CKRecordID.init(recordName:zoneID:)(v59, v58).super.isa;
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v108 = isa;
      v110 = sub_100FDB020(isa);

      v109 = swift_allocBox();
      v61 = *(v112 + 56);
      v99 = v62;
      v63 = a1;
      v64 = v115;
      v112 += 56;
      v98 = v61;
      (v61)(v62, 1, 1, v115);
      v65 = *(v57 + 168);
      v66 = v118;
      v67 = v101;
      (*(v118 + 2))(v101, v63 + v53, v121);
      if (qword_101694F88 != -1)
      {
        swift_once();
      }

      v68 = v114;
      v69 = sub_1000076D4(v114, qword_10177C268);
      v70 = v113;
      v71 = v102;
      v72 = (*(v113 + 16))(v102, v69, v68);
      __chkstk_darwin(v72);
      *(&v97 - 4) = v65;
      *(&v97 - 3) = v67;
      *(&v97 - 2) = v71;
      v73 = v100;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v70 + 8))(v71, v68);
      (*(v66 + 1))(v67, v121);
      (v98)(v73, 0, 1, v64);
      sub_10002311C(v73, v99, &qword_1016B53E0, &unk_1013D65D0);
      v76 = v105;
      v75 = v106;
      v77 = v111;
      v78 = v108;
      v79 = static os_log_type_t.default.getter();
      v80 = swift_allocObject();
      *(v80 + 16) = v103;
      v81 = v78;
      v121 = v81;
      v82 = [v81 description];
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;

      *(v80 + 56) = &type metadata for String;
      *(v80 + 64) = v76;
      *(v80 + 32) = v83;
      *(v80 + 40) = v85;
      os_log(_:dso:log:_:_:)(v79, &_mh_execute_header, v75, "cloudBacked item deleted from disk: %@", 38, 2, v80);

      v118 = type metadata accessor for SafeLocation;
      v86 = v107;
      sub_100022A54(v119, v107, type metadata accessor for SafeLocation);
      v87 = (*(v120 + 80) + 32) & ~*(v120 + 80);
      v88 = (v77 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
      v89 = swift_allocObject();
      v90 = v109;
      v91 = v117;
      *(v89 + 16) = v109;
      *(v89 + 24) = v91;
      v120 = type metadata accessor for SafeLocation;
      sub_10002911C(v86, v89 + v87, type metadata accessor for SafeLocation);
      v92 = (v89 + v88);
      v115 = sub_100B27FFC;
      v93 = v116;
      *v92 = sub_100B27FFC;
      v92[1] = v93;

      Future.addSuccess(block:)();

      sub_100022A54(v119, v86, v118);
      v94 = swift_allocObject();
      *(v94 + 16) = v90;
      *(v94 + 24) = v91;
      sub_10002911C(v86, v94 + v87, v120);
      v95 = (v94 + v88);
      *v95 = v115;
      v95[1] = v93;

      Future.addFailure(block:)();
    }

    else
    {
      v112 = a4;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_1000076D4(v41, qword_10177BA08);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 67109376;
        *(v44 + 4) = v34;
        *(v44 + 8) = 1024;
        *(v44 + 10) = v40 != 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v44, 0xEu);
      }

      v45 = v113;

      v46 = *(v117 + 168);
      v47 = v119 + *(v120 + 5);
      v48 = v109;
      v107 = *(v118 + 2);
      v107(v109, v47, v121);
      if (qword_101694F88 != -1)
      {
        swift_once();
      }

      v49 = v114;
      v50 = sub_1000076D4(v114, qword_10177C268);
      v51 = (*(v45 + 16))(v37, v50, v49);
      __chkstk_darwin(v51);
      *(&v97 - 4) = v46;
      *(&v97 - 3) = v48;
      *(&v97 - 2) = v37;
      v52 = v110;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v45 + 8))(v37, v49);
      (*(v118 + 1))(v48, v121);
      sub_100B39D8C(v52);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v74 = sub_100A8306C(9u);
      sub_100A8375C(v74);
      v111(1);
      sub_100022C40(v52, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}