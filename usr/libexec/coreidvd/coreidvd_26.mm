uint64_t sub_1002B8868(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DIPError.Code();
  __chkstk_darwin(v2);
  type metadata accessor for ImageQualitySettings();
  sub_1002BC3E8(&qword_10083D510, &type metadata accessor for ImageQualitySettings, &protocol conformance descriptor for ImageQualitySettings);
  return dispatch thunk of JSONEncoder.encode<A>(_:)();
}

uint64_t sub_1002B8B4C(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DIPError.Code();
  __chkstk_darwin(v2);
  sub_100007224(&qword_10083D4E0, &qword_1006DC790);
  sub_1001C575C();
  return dispatch thunk of JSONEncoder.encode<A>(_:)();
}

uint64_t sub_1002B8E10()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_1002B8E6C(uint64_t *a1)
{
  v2 = *(sub_100007224(&qword_10083C1C8, &qword_1006DA768) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1003BD1E8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1002B8F20(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1002B8F20(unint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100007224(&qword_10083C1C8, &qword_1006DA768);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_100007224(&qword_10083C1C8, &qword_1006DA768) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1002B92A0(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1002B9064(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1002B9064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100007224(&qword_10083C1C8, &qword_1006DA768);
  v9 = __chkstk_darwin(v8);
  v39 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v30 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v30 - v16;
  v32 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v37 = -v19;
    v38 = v18;
    v21 = a1 - a3;
    v31 = v19;
    v22 = v18 + v19 * a3;
LABEL_5:
    v35 = v20;
    v36 = a3;
    v33 = v22;
    v34 = v21;
    while (1)
    {
      sub_1002BC430(v22, v17);
      sub_1002BC430(v20, v13);
      v23 = *(v8 + 48);
      v24 = v8;
      v25 = *&v17[v23];
      v26 = *&v13[v23];
      sub_1002BC4A0(v13);
      result = sub_1002BC4A0(v17);
      v27 = v25 < v26;
      v8 = v24;
      if (!v27)
      {
LABEL_4:
        a3 = v36 + 1;
        v20 = v35 + v31;
        v21 = v34 - 1;
        v22 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v28 = v39;
      sub_1000B1FC8(v22, v39, &qword_10083C1C8, &qword_1006DA768);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1000B1FC8(v28, v20, &qword_10083C1C8, &qword_1006DA768);
      v20 += v37;
      v22 += v37;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002B92A0(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v110 = a1;
  v124 = sub_100007224(&qword_10083C1C8, &qword_1006DA768);
  v119 = *(v124 - 8);
  v8 = __chkstk_darwin(v124);
  v114 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v121 = &v107 - v11;
  v12 = __chkstk_darwin(v10);
  v123 = &v107 - v13;
  result = __chkstk_darwin(v12);
  v122 = &v107 - v15;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = _swiftEmptyArrayStorage;
LABEL_95:
    a4 = *v110;
    if (!*v110)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_97:
      v125 = v18;
      v103 = *(v18 + 2);
      if (v103 >= 2)
      {
        while (*a3)
        {
          v104 = *&v18[16 * v103];
          v105 = *&v18[16 * v103 + 24];
          sub_1002B9B34(*a3 + *(v119 + 72) * v104, *a3 + *(v119 + 72) * *&v18[16 * v103 + 16], *a3 + *(v119 + 72) * v105, a4);
          if (v5)
          {
          }

          if (v105 < v104)
          {
            goto LABEL_120;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_1003BBEA4(v18);
          }

          if (v103 - 2 >= *(v18 + 2))
          {
            goto LABEL_121;
          }

          v106 = &v18[16 * v103];
          *v106 = v104;
          *(v106 + 1) = v105;
          v125 = v18;
          result = sub_1003BBE18(v103 - 1);
          v18 = v125;
          v103 = *(v125 + 2);
          if (v103 <= 1)
          {
          }
        }

        goto LABEL_131;
      }
    }

LABEL_127:
    result = sub_1003BBEA4(v18);
    v18 = result;
    goto LABEL_97;
  }

  v107 = a4;
  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  v111 = a3;
  while (1)
  {
    v19 = v17;
    if (v17 + 1 >= v16)
    {
      v16 = v17 + 1;
    }

    else
    {
      v109 = v5;
      v20 = *a3;
      v21 = *(v119 + 72);
      a4 = *a3 + v21 * (v17 + 1);
      v22 = v122;
      sub_1002BC430(a4, v122);
      v23 = v123;
      sub_1002BC430(v20 + v21 * v17, v123);
      v24 = *(v124 + 48);
      v25 = *(v22 + v24);
      v117 = *(v23 + v24);
      v118 = v25;
      sub_1002BC4A0(v23);
      result = sub_1002BC4A0(v22);
      v108 = v17;
      v26 = v17 + 2;
      v120 = v21;
      v27 = v20 + v21 * (v17 + 2);
      v116 = v18;
      while (v16 != v26)
      {
        v28 = v118 < v117;
        v29 = v122;
        sub_1002BC430(v27, v122);
        v30 = v16;
        v31 = v123;
        sub_1002BC430(a4, v123);
        v32 = *(v124 + 48);
        v33 = *(v29 + v32);
        v34 = *(v31 + v32);
        v35 = v31;
        v16 = v30;
        sub_1002BC4A0(v35);
        result = sub_1002BC4A0(v29);
        v36 = v28 ^ (v33 >= v34);
        v18 = v116;
        ++v26;
        v27 += v120;
        a4 += v120;
        if ((v36 & 1) == 0)
        {
          v16 = v26 - 1;
          break;
        }
      }

      v19 = v108;
      v5 = v109;
      a3 = v111;
      if (v118 < v117)
      {
        if (v16 < v108)
        {
          goto LABEL_124;
        }

        if (v108 < v16)
        {
          v37 = v120 * (v16 - 1);
          v38 = v16 * v120;
          v39 = v16;
          v40 = v108;
          v41 = v108 * v120;
          do
          {
            if (v40 != --v39)
            {
              a4 = *v111;
              if (!*v111)
              {
                goto LABEL_130;
              }

              sub_1000B1FC8(a4 + v41, v114, &qword_10083C1C8, &qword_1006DA768);
              if (v41 < v37 || a4 + v41 >= a4 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v37)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1000B1FC8(v114, a4 + v37, &qword_10083C1C8, &qword_1006DA768);
            }

            ++v40;
            v37 -= v120;
            v38 -= v120;
            v41 += v120;
          }

          while (v40 < v39);
          v19 = v108;
          v5 = v109;
          a3 = v111;
          v18 = v116;
        }
      }
    }

    v42 = a3[1];
    if (v16 >= v42)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v16, v19))
    {
      goto LABEL_123;
    }

    if (v16 - v19 >= v107)
    {
LABEL_32:
      v17 = v16;
      if (v16 < v19)
      {
        goto LABEL_122;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v19, v107))
    {
      goto LABEL_125;
    }

    if (v19 + v107 >= v42)
    {
      v43 = a3[1];
    }

    else
    {
      v43 = v19 + v107;
    }

    if (v43 < v19)
    {
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v16 == v43)
    {
      goto LABEL_32;
    }

    v116 = v18;
    v108 = v19;
    v109 = v5;
    v89 = *a3;
    v90 = *(v119 + 72);
    v91 = *a3 + v90 * (v16 - 1);
    v92 = -v90;
    v93 = v19 - v16;
    v112 = v90;
    v113 = v43;
    a4 = v89 + v16 * v90;
    v94 = v124;
LABEL_86:
    v120 = v16;
    v115 = a4;
    v117 = v93;
    v118 = v91;
    v95 = v91;
LABEL_87:
    v96 = v122;
    sub_1002BC430(a4, v122);
    v97 = v123;
    sub_1002BC430(v95, v123);
    v98 = *(v94 + 48);
    v99 = *(v96 + v98);
    v100 = *(v97 + v98);
    sub_1002BC4A0(v97);
    result = sub_1002BC4A0(v96);
    if (v99 < v100)
    {
      break;
    }

    v94 = v124;
LABEL_85:
    v16 = v120 + 1;
    v17 = v113;
    v91 = v118 + v112;
    v93 = v117 - 1;
    a4 = v115 + v112;
    if (v120 + 1 != v113)
    {
      goto LABEL_86;
    }

    v19 = v108;
    v5 = v109;
    a3 = v111;
    v18 = v116;
    if (v113 < v108)
    {
      goto LABEL_122;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003BC0AC(0, *(v18 + 2) + 1, 1, v18);
      v18 = result;
    }

    v45 = *(v18 + 2);
    v44 = *(v18 + 3);
    a4 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_1003BC0AC((v44 > 1), v45 + 1, 1, v18);
      v18 = result;
    }

    *(v18 + 2) = a4;
    v46 = &v18[16 * v45];
    *(v46 + 4) = v19;
    *(v46 + 5) = v17;
    v47 = *v110;
    if (!*v110)
    {
      goto LABEL_132;
    }

    if (v45)
    {
      while (2)
      {
        v48 = a4 - 1;
        if (a4 >= 4)
        {
          v53 = &v18[16 * a4 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_109;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_110;
          }

          v60 = &v18[16 * a4];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_112;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_115;
          }

          if (v64 >= v56)
          {
            v82 = &v18[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_119;
            }

            if (v51 < v85)
            {
              v48 = a4 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_111;
            }

            v65 = &v18[16 * a4];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_114;
            }

            v71 = &v18[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_118;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = a4 - 2;
            }
          }
        }

        else
        {
          if (a4 == 3)
          {
            v49 = *(v18 + 4);
            v50 = *(v18 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v18[16 * a4];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_113;
          }

          v78 = &v18[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_116;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        v86 = v48 - 1;
        if (v48 - 1 >= a4)
        {
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
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        a4 = *&v18[16 * v86 + 32];
        v87 = *&v18[16 * v48 + 40];
        sub_1002B9B34(*a3 + *(v119 + 72) * a4, *a3 + *(v119 + 72) * *&v18[16 * v48 + 32], *a3 + *(v119 + 72) * v87, v47);
        if (v5)
        {
        }

        if (v87 < a4)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1003BBEA4(v18);
        }

        if (v86 >= *(v18 + 2))
        {
          goto LABEL_108;
        }

        v88 = &v18[16 * v86];
        *(v88 + 4) = a4;
        *(v88 + 5) = v87;
        v125 = v18;
        result = sub_1003BBE18(v48);
        v18 = v125;
        a4 = *(v125 + 2);
        if (a4 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v16 = a3[1];
    if (v17 >= v16)
    {
      goto LABEL_95;
    }
  }

  if (v89)
  {
    v101 = v121;
    sub_1000B1FC8(a4, v121, &qword_10083C1C8, &qword_1006DA768);
    v94 = v124;
    swift_arrayInitWithTakeFrontToBack();
    sub_1000B1FC8(v101, v95, &qword_10083C1C8, &qword_1006DA768);
    v95 += v92;
    a4 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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
  return result;
}

uint64_t sub_1002B9B34(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_100007224(&qword_10083C1C8, &qword_1006DA768);
  v9 = __chkstk_darwin(v8);
  v56 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v55 = &v48 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v15 = a2;
  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v14 != -1)
  {
    v17 = (a2 - a1) / v14;
    v59 = a1;
    v18 = a4;
    v58 = a4;
    if (v17 < v16 / v14)
    {
      v19 = v17 * v14;
      if (a4 < a1 || a1 + v19 <= a4)
      {
        v20 = v15;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == a1)
        {
          goto LABEL_17;
        }

        v20 = v15;
        swift_arrayInitWithTakeBackToFront();
      }

      v15 = v20;
      v18 = a4;
LABEL_17:
      v52 = v18 + v19;
      v57 = v18 + v19;
      if (v19 >= 1 && v15 < a3)
      {
        v51 = a3;
        do
        {
          v25 = v14;
          v26 = v55;
          v27 = v15;
          sub_1002BC430(v15, v55);
          v28 = v56;
          sub_1002BC430(v18, v56);
          v29 = v8;
          v30 = *(v8 + 48);
          v31 = *(v26 + v30);
          v32 = *(v28 + v30);
          sub_1002BC4A0(v28);
          sub_1002BC4A0(v26);
          if (v31 >= v32)
          {
            v54 = v27;
            v14 = v25;
            if (a1 < v18 || a1 >= v18 + v25)
            {
              v8 = v29;
              swift_arrayInitWithTakeFrontToBack();
              v33 = v51;
            }

            else
            {
              v33 = v51;
              v8 = v29;
              if (a1 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v58 = v18 + v25;
            v18 += v25;
            v15 = v54;
          }

          else
          {
            v53 = v18;
            v14 = v25;
            if (a1 < v27 || a1 >= v27 + v25)
            {
              v8 = v29;
              swift_arrayInitWithTakeFrontToBack();
              v15 = v27 + v25;
              v33 = v51;
            }

            else
            {
              v33 = v51;
              v8 = v29;
              if (a1 != v27)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v15 = v27 + v25;
            }

            v18 = v53;
          }

          a1 += v14;
          v59 = a1;
        }

        while (v18 < v52 && v15 < v33);
      }

LABEL_60:
      sub_1003BBEB8(&v59, &v58, &v57);
      return 1;
    }

    v21 = v8;
    v22 = v16 / v14 * v14;
    if (a4 < v15 || v15 + v22 <= a4)
    {
      v23 = v15;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == v15)
      {
LABEL_41:
        v34 = v18 + v22;
        if (v22 >= 1)
        {
          v35 = -v14;
          v36 = v18 + v22;
          v53 = v18;
          v49 = v35;
          v50 = a1;
          do
          {
            v48 = v34;
            v37 = v15 + v35;
            v54 = v15 + v35;
            v52 = v15;
            while (1)
            {
              if (v15 <= a1)
              {
                v59 = v15;
                v57 = v48;
                goto LABEL_60;
              }

              v38 = a3;
              v51 = v34;
              a3 += v35;
              v39 = v36 + v35;
              v40 = v55;
              sub_1002BC430(v36 + v35, v55);
              v41 = v56;
              sub_1002BC430(v37, v56);
              v42 = v21;
              v43 = *(v21 + 48);
              v44 = *(v40 + v43);
              v45 = *(v41 + v43);
              sub_1002BC4A0(v41);
              sub_1002BC4A0(v40);
              if (v44 < v45)
              {
                break;
              }

              v34 = v39;
              if (v38 < v36 || a3 >= v36)
              {
                v21 = v42;
                swift_arrayInitWithTakeFrontToBack();
                v35 = v49;
                a1 = v50;
              }

              else
              {
                v21 = v42;
                v35 = v49;
                a1 = v50;
                if (v38 != v36)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v36 = v39;
              v37 = v54;
              v15 = v52;
              if (v39 <= v53)
              {
                goto LABEL_58;
              }
            }

            if (v38 < v52 || a3 >= v52)
            {
              v47 = v54;
              v21 = v42;
              swift_arrayInitWithTakeFrontToBack();
              v15 = v47;
              a1 = v50;
              v34 = v51;
              v35 = v49;
            }

            else
            {
              v21 = v42;
              v15 = v54;
              a1 = v50;
              v34 = v51;
              v35 = v49;
              if (v38 != v52)
              {
                v46 = v54;
                swift_arrayInitWithTakeBackToFront();
                v15 = v46;
              }
            }
          }

          while (v36 > v53);
        }

LABEL_58:
        v59 = v15;
        v57 = v34;
        goto LABEL_60;
      }

      v23 = v15;
      swift_arrayInitWithTakeBackToFront();
    }

    v15 = v23;
    v18 = a4;
    goto LABEL_41;
  }

LABEL_63:
  __break(1u);
  return result;
}

void *sub_1002BA048(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1002BA1A8(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1002BA44C(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1002BA1A8(unint64_t *a1, uint64_t a2, void *a3)
{
  v28 = a2;
  v29 = a1;
  v39 = sub_100007224(&qword_10083C1C8, &qword_1006DA768);
  __chkstk_darwin(v39);
  v38 = &v28 - v4;
  v37 = type metadata accessor for IQCType();
  result = __chkstk_darwin(v37);
  v35 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v6;
  v8 = 0;
  v40 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v30 = 0;
  v31 = (v12 + 63) >> 6;
  v34 = v6 + 16;
  v32 = v10;
  v33 = v6 + 8;
  while (v14)
  {
    v15 = __clz(__rbit64(v14));
    v41 = (v14 - 1) & v14;
LABEL_11:
    v18 = v15 | (v8 << 6);
    v19 = v40;
    v20 = v35;
    v21 = v36;
    v22 = *(v36 + 16);
    v23 = v37;
    v22(v35, v40[6] + *(v36 + 72) * v18, v37);
    v24 = v18;
    v25 = *(v19[7] + 8 * v18);
    v26 = v38;
    v22(v38, v20, v23);
    *(v26 + *(v39 + 48)) = v25;
    sub_1002BC4A0(v26);
    result = (*(v21 + 8))(v20, v23);
    v14 = v41;
    if ((v25 & 0x8000000000000000) == 0)
    {
      *(v29 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
        return sub_1003D3A34(v29, v28, v30, v40);
      }
    }
  }

  v16 = v8;
  while (1)
  {
    v8 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v8 >= v31)
    {
      return sub_1003D3A34(v29, v28, v30, v40);
    }

    v17 = v32[v8];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v41 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1002BA44C(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1002BA1A8(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t sub_1002BA4C4()
{
  result = qword_10083F530;
  if (!qword_10083F530)
  {
    sub_10000B870(&qword_10083F528, &qword_1006DC798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083F530);
  }

  return result;
}

uint64_t sub_1002BA528(uint64_t a1)
{
  v1 = *(a1 + 976);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_1002BA54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a1 + 16);
  if (!v10)
  {
    return 0;
  }

  for (i = (a1 + 152); ; i += 19)
  {
    v12 = *i;
    v13 = *(i - 15) == a2 && *(i - 14) == a3;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v12 && *(v12 + 16))
    {
      break;
    }

    if (!--v10)
    {
      return 0;
    }
  }

  v14 = *(v12 + 128);
  v33[5] = *(v12 + 112);
  v33[6] = v14;
  v34[0] = *(v12 + 144);
  *(v34 + 9) = *(v12 + 153);
  v15 = *(v12 + 48);
  v16 = *(v12 + 80);
  v17 = *(v12 + 96);
  v33[2] = *(v12 + 64);
  v33[3] = v16;
  v33[4] = v17;
  v33[0] = *(v12 + 32);
  v33[1] = v15;
  v18 = v16;
  v19 = objc_opt_self();
  sub_1000F28D0(v33, v32);
  v20 = [v19 standardUserDefaults];
  v21._countAndFlagsBits = static DaemonInternalDefaultsKeys.imageResizeScale.getter();
  v35 = NSUserDefaults.internalDouble(forKey:)(v21);
  v22 = *&v35.is_nil;
  v24 = v23;

  if (v24)
  {
    if (((*(&v18 + 1) | v18) & 0x8000000000000000) == 0)
    {
      v26 = objc_allocWithZone(type metadata accessor for IdentityImageDimension());
      v27 = IdentityImageDimension.init(height:width:scale:)();
      sub_1000F2908(v33);
      return v27;
    }

    __break(1u);
  }

  else
  {
    sub_1000F2908(v33);
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v28, v29, "forcing resize scale to %f", v30, 0xCu);
    }

    result = (*(v7 + 8))(v9, v6);
    if (((*(&v18 + 1) | v18) & 0x8000000000000000) == 0)
    {
      v31 = objc_allocWithZone(type metadata accessor for IdentityImageDimension());
      return IdentityImageDimension.init(height:width:scale:)();
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1002BA828(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DIPError.Code();
  __chkstk_darwin(v6);
  if (a1 >= 2)
  {
    if (*(a1 + 16) == 2)
    {
      v9 = *(a1 + 32);
      if (v9 <= *(a1 + 36))
      {
        v11 = 0;
        v10 = LODWORD(v9);
        goto LABEL_6;
      }
    }

    (*(v8 + 104))(&v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], enum case for DIPError.Code.invalidImageQualitySettings(_:));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002BC3E8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v3 + 8))(v5, v2);
  }

  v10 = 0;
  v11 = 1;
LABEL_6:
  v13[12] = v11;
  v13[8] = v11;
  return v10 | (v11 << 32);
}

unint64_t sub_1002BAAF4(unint64_t a1)
{
  result = sub_1002BA828(a1);
  if ((result & 0x100000000) != 0 || (v2 & 0x100000000) != 0)
  {
    return 0;
  }

  if (*&result <= -9.2234e18)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*&result >= 9.2234e18)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((result & 0x7F800000) == 0x7F800000 || (v2 & 0x7F800000) == 0x7F800000)
  {
    goto LABEL_13;
  }

  if (*&v2 > -9.2234e18)
  {
    if (*&v2 < 9.2234e18)
    {
      return *&result;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void *sub_1002BABC0(const void *a1)
{
  v333 = sub_100007224(&qword_10083C1C8, &qword_1006DA768);
  v2 = *(v333 - 8);
  v3 = __chkstk_darwin(v333);
  v5 = &v220 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v304 = &v220 - v7;
  __chkstk_darwin(v6);
  v331 = &v220 - v8;
  v9 = type metadata accessor for IQCType();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v316 = &v220 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v327 = &v220 - v14;
  v15 = __chkstk_darwin(v13);
  v335 = &v220 - v16;
  v17 = __chkstk_darwin(v15);
  v330 = &v220 - v18;
  v19 = __chkstk_darwin(v17);
  v329 = &v220 - v20;
  v21 = __chkstk_darwin(v19);
  v328 = &v220 - v22;
  v23 = __chkstk_darwin(v21);
  v326 = &v220 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v220 - v26;
  v28 = __chkstk_darwin(v25);
  v314 = &v220 - v29;
  v30 = __chkstk_darwin(v28);
  v325 = &v220 - v31;
  v32 = __chkstk_darwin(v30);
  v324 = &v220 - v33;
  v34 = __chkstk_darwin(v32);
  v323 = &v220 - v35;
  v36 = __chkstk_darwin(v34);
  v313 = &v220 - v37;
  v38 = __chkstk_darwin(v36);
  v322 = &v220 - v39;
  v40 = __chkstk_darwin(v38);
  v312 = &v220 - v41;
  v42 = __chkstk_darwin(v40);
  v321 = &v220 - v43;
  v44 = __chkstk_darwin(v42);
  v311 = &v220 - v45;
  v46 = __chkstk_darwin(v44);
  v320 = &v220 - v47;
  v48 = __chkstk_darwin(v46);
  v310 = &v220 - v49;
  v50 = __chkstk_darwin(v48);
  v319 = &v220 - v51;
  v52 = __chkstk_darwin(v50);
  v309 = &v220 - v53;
  v54 = __chkstk_darwin(v52);
  v318 = &v220 - v55;
  v56 = __chkstk_darwin(v54);
  v308 = &v220 - v57;
  v58 = __chkstk_darwin(v56);
  v317 = &v220 - v59;
  v60 = __chkstk_darwin(v58);
  v307 = &v220 - v61;
  v62 = __chkstk_darwin(v60);
  v64 = &v220 - v63;
  v65 = __chkstk_darwin(v62);
  v67 = &v220 - v66;
  __chkstk_darwin(v65);
  v69 = &v220 - v68;
  memcpy(v338, a1, 0x41BuLL);
  if (sub_1002BA528(v338) == 1)
  {
    return _swiftEmptyArrayStorage;
  }

  v315 = v27;
  v303 = v2;
  v70 = v338[0];
  v71 = v338[2];
  v305 = v338[6];
  v221 = LOBYTE(v338[3]);
  v222 = LOBYTE(v338[7]);
  v249 = v338[4];
  v250 = v338[8];
  v251 = v338[10];
  v252 = v338[12];
  v306 = v338[14];
  v223 = LOBYTE(v338[11]);
  v224 = LOBYTE(v338[15]);
  v253 = v338[16];
  v254 = v338[18];
  v255 = v338[20];
  v256 = v338[22];
  v225 = LOBYTE(v338[19]);
  v226 = LOBYTE(v338[23]);
  v257 = v338[24];
  v258 = v338[26];
  v259 = v338[28];
  v260 = v338[30];
  v227 = LOBYTE(v338[27]);
  v228 = LOBYTE(v338[31]);
  v261 = v338[32];
  v262 = v338[34];
  v291 = v338[36];
  v292 = v338[38];
  v293 = v338[40];
  v295 = v338[42];
  v244 = LOBYTE(v338[39]);
  v245 = LOBYTE(v338[43]);
  v263 = v338[44];
  v264 = v338[46];
  v229 = LOBYTE(v338[35]);
  v230 = LOBYTE(v338[47]);
  v265 = v338[48];
  v266 = v338[50];
  v267 = v338[52];
  v268 = v338[54];
  v231 = LOBYTE(v338[51]);
  v232 = LOBYTE(v338[55]);
  v269 = v338[56];
  v270 = v338[58];
  v271 = v338[60];
  v272 = v338[62];
  v233 = LOBYTE(v338[59]);
  v234 = LOBYTE(v338[63]);
  v273 = v338[64];
  v274 = v338[66];
  v275 = v338[72];
  v276 = v338[74];
  v235 = LOBYTE(v338[67]);
  v236 = LOBYTE(v338[75]);
  v277 = v338[76];
  v278 = v338[78];
  v279 = v338[80];
  v280 = v338[82];
  v237 = LOBYTE(v338[79]);
  v238 = LOBYTE(v338[83]);
  v281 = v338[84];
  v282 = v338[86];
  v283 = v338[88];
  v284 = v338[90];
  v239 = LOBYTE(v338[87]);
  v240 = LOBYTE(v338[91]);
  v285 = v338[92];
  v286 = v338[94];
  v287 = v338[96];
  v288 = v338[98];
  v241 = LOBYTE(v338[95]);
  v242 = LOBYTE(v338[99]);
  v289 = v338[100];
  v290 = v338[102];
  v243 = LOBYTE(v338[103]);
  v294 = v338[104];
  v296 = v338[105];
  v297 = v338[107];
  v298 = v338[108];
  v246 = LOBYTE(v338[106]);
  v247 = LOBYTE(v338[109]);
  v299 = v338[118];
  v300 = v338[119];
  v248 = LOBYTE(v338[120]);
  v301 = v338[122];
  v302 = v338[123];
  v337 = sub_10003DC5C(_swiftEmptyArrayStorage);
  v334 = v10;
  v72 = *(v10 + 104);
  v332 = v9;
  v73 = v72;
  v72(v69, enum case for IQCType.blurriness(_:), v9);
  if (v70 == 1 || (v221 & 1) != 0)
  {
    v71 = -1;
  }

  v74 = v337;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v74;
  sub_10016D0C0(v71, v69, isUniquelyReferenced_nonNull_native);
  v76 = *(v334 + 8);
  v77 = v69;
  v78 = v332;
  v76(v77, v332);
  v337 = v336[0];
  v73(v67, enum case for IQCType.laplaceBlur(_:), v78);
  if (v249 == 1 || (v222 & 1) != 0)
  {
    v305 = -1;
  }

  v79 = v337;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v79;
  sub_10016D0C0(v305, v67, v80);
  v76(v67, v78);
  v337 = v336[0];
  v73(v64, enum case for IQCType.exposure(_:), v78);
  v81 = v251;
  if (v250 == 1 || (v223 & 1) != 0)
  {
    v81 = -1;
  }

  v82 = v337;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v82;
  sub_10016D0C0(v81, v64, v83);
  v76(v64, v78);
  v337 = v336[0];
  v84 = v307;
  v73(v307, enum case for IQCType.cardDistortion(_:), v78);
  v85 = v254;
  if (v252 == 1 || (v224 & 1) != 0)
  {
    v306 = -1;
  }

  v86 = v337;
  v87 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v86;
  sub_10016D0C0(v306, v84, v87);
  v76(v84, v78);
  v337 = v336[0];
  v73(v317, enum case for IQCType.faceToImageRatio(_:), v78);
  v88 = v308;
  if (v253 == 1 || (v225 & 1) != 0)
  {
    v85 = -1;
  }

  v89 = v337;
  v90 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v89;
  v91 = v85;
  v92 = v317;
  sub_10016D0C0(v91, v317, v90);
  v76(v92, v78);
  v337 = v336[0];
  v73(v88, enum case for IQCType.faceCenteredRatio(_:), v78);
  v93 = v256;
  if (v255 == 1 || (v226 & 1) != 0)
  {
    v93 = -1;
  }

  v94 = v337;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v94;
  sub_10016D0C0(v93, v88, v95);
  v76(v88, v78);
  v337 = v336[0];
  v73(v318, enum case for IQCType.headPitch(_:), v78);
  v96 = v258;
  if (v257 == 1 || (v227 & 1) != 0)
  {
    v96 = -1;
  }

  v97 = v337;
  v98 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v97;
  v99 = v96;
  v100 = v318;
  sub_10016D0C0(v99, v318, v98);
  v76(v100, v78);
  v337 = v336[0];
  v101 = v309;
  v73(v309, enum case for IQCType.headRoll(_:), v78);
  v102 = v260;
  if (v259 == 1 || (v228 & 1) != 0)
  {
    v102 = -1;
  }

  v103 = v337;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v103;
  sub_10016D0C0(v102, v101, v104);
  v76(v101, v78);
  v337 = v336[0];
  v73(v319, enum case for IQCType.headYaw(_:), v78);
  v105 = v262;
  if (v261 == 1 || (v229 & 1) != 0)
  {
    v105 = -1;
  }

  v106 = v337;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v106;
  v108 = v319;
  sub_10016D0C0(v105, v319, v107);
  v76(v108, v78);
  v337 = v336[0];
  v109 = v310;
  v73(v310, enum case for IQCType.blinkingConfidence(_:), v78);
  v110 = v264;
  if (v263 == 1 || (v230 & 1) != 0)
  {
    v110 = -1;
  }

  v111 = v337;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v111;
  sub_10016D0C0(v110, v109, v112);
  v76(v109, v78);
  v337 = v336[0];
  v73(v320, enum case for IQCType.glassesConfidence(_:), v78);
  v113 = v266;
  if (v265 == 1 || (v231 & 1) != 0)
  {
    v113 = -1;
  }

  v114 = v337;
  v115 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v114;
  v116 = v113;
  v117 = v320;
  sub_10016D0C0(v116, v320, v115);
  v76(v117, v78);
  v337 = v336[0];
  v118 = v311;
  v73(v311, enum case for IQCType.sunglassesConfidence(_:), v78);
  v119 = v268;
  if (v267 == 1 || (v232 & 1) != 0)
  {
    v119 = -1;
  }

  v120 = v337;
  v121 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v120;
  sub_10016D0C0(v119, v118, v121);
  v76(v118, v78);
  v337 = v336[0];
  v73(v321, enum case for IQCType.facemaskConfidence(_:), v78);
  v122 = v270;
  v123 = v272;
  if (v269 == 1 || (v233 & 1) != 0)
  {
    v122 = -1;
  }

  v124 = v337;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v124;
  v126 = v122;
  v127 = v321;
  sub_10016D0C0(v126, v321, v125);
  v76(v127, v78);
  v337 = v336[0];
  v128 = v312;
  v73(v312, enum case for IQCType.headgearConfidence(_:), v78);
  if (v271 == 1 || (v234 & 1) != 0)
  {
    v123 = -1;
  }

  v129 = v337;
  v130 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v129;
  sub_10016D0C0(v123, v128, v130);
  v76(v128, v78);
  v337 = v336[0];
  v73(v322, enum case for IQCType.lensSmudgeConfidence(_:), v78);
  v131 = v274;
  v132 = v313;
  if (v273 == 1 || (v235 & 1) != 0)
  {
    v131 = -1;
  }

  v133 = v337;
  v134 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v133;
  v135 = v131;
  v136 = v322;
  sub_10016D0C0(v135, v322, v134);
  v76(v136, v78);
  v337 = v336[0];
  v73(v132, enum case for IQCType.faceCaptureQuality(_:), v78);
  v137 = v276;
  if (v275 == 1 || (v236 & 1) != 0)
  {
    v137 = -1;
  }

  v138 = v337;
  v139 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v138;
  sub_10016D0C0(v137, v132, v139);
  v76(v132, v78);
  v337 = v336[0];
  v73(v323, enum case for IQCType.documentSize(_:), v78);
  v140 = v278;
  v141 = v280;
  if (v277 == 1 || (v237 & 1) != 0)
  {
    v140 = -1;
  }

  v142 = v337;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v142;
  v144 = v140;
  v145 = v323;
  sub_10016D0C0(v144, v323, v143);
  v76(v145, v78);
  v337 = v336[0];
  v73(v324, enum case for IQCType.documentRotation(_:), v78);
  if (v279 == 1 || (v238 & 1) != 0)
  {
    v141 = -1;
  }

  v146 = v337;
  v147 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v146;
  v148 = v324;
  sub_10016D0C0(v141, v324, v147);
  v76(v148, v78);
  v337 = v336[0];
  v73(v325, enum case for IQCType.documentSkew(_:), v78);
  v149 = v282;
  if (v281 == 1 || (v239 & 1) != 0)
  {
    v149 = -1;
  }

  v150 = v337;
  v151 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v150;
  v152 = v149;
  v153 = v325;
  sub_10016D0C0(v152, v325, v151);
  v76(v153, v78);
  v337 = v336[0];
  v154 = v314;
  v73(v314, enum case for IQCType.leftDrift(_:), v78);
  v155 = v284;
  if (v283 == 1 || (v240 & 1) != 0)
  {
    v155 = -1;
  }

  v156 = v337;
  v157 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v156;
  sub_10016D0C0(v155, v154, v157);
  v76(v154, v78);
  v337 = v336[0];
  v73(v315, enum case for IQCType.rightDrift(_:), v78);
  v158 = v286;
  v159 = v290;
  if (v285 == 1 || (v241 & 1) != 0)
  {
    v158 = -1;
  }

  v160 = v337;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v160;
  v162 = v158;
  v163 = v315;
  sub_10016D0C0(v162, v315, v161);
  v76(v163, v78);
  v337 = v336[0];
  v73(v326, enum case for IQCType.upDrift(_:), v78);
  v164 = v288;
  if (v287 == 1 || (v242 & 1) != 0)
  {
    v164 = -1;
  }

  v165 = v337;
  v166 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v165;
  v167 = v164;
  v168 = v326;
  sub_10016D0C0(v167, v326, v166);
  v76(v168, v78);
  v337 = v336[0];
  v73(v328, enum case for IQCType.downDrift(_:), v78);
  v169 = v295;
  if (v289 == 1 || (v243 & 1) != 0)
  {
    v159 = -1;
  }

  v170 = v337;
  v171 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v170;
  v172 = v159;
  v173 = v328;
  sub_10016D0C0(v172, v328, v171);
  v76(v173, v78);
  v337 = v336[0];
  v73(v329, enum case for IQCType.numFaces(_:), v78);
  v174 = v292;
  if (v291 == 1 || (v244 & 1) != 0)
  {
    v174 = -1;
  }

  v175 = v337;
  v176 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v175;
  v177 = v174;
  v178 = v329;
  sub_10016D0C0(v177, v329, v176);
  v76(v178, v78);
  v337 = v336[0];
  v73(v330, enum case for IQCType.luxLevel(_:), v78);
  v179 = v298;
  if (v293 == 1 || (v245 & 1) != 0)
  {
    v169 = -1;
  }

  v180 = v337;
  v181 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v180;
  v182 = v169;
  v183 = v330;
  sub_10016D0C0(v182, v330, v181);
  v76(v183, v78);
  v337 = v336[0];
  v73(v335, enum case for IQCType.pdf417Detected(_:), v78);
  v184 = v296;
  if (v294 & 0xFF00) == 0x200 || (v246)
  {
    v184 = -1;
  }

  v185 = v337;
  v186 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v185;
  v187 = v184;
  v188 = v335;
  sub_10016D0C0(v187, v335, v186);
  v76(v188, v78);
  v337 = v336[0];
  v73(v327, enum case for IQCType.isAAMVACompliant(_:), v78);
  v189 = v300;
  if (v297 & 0xFF00) == 0x200 || (v247)
  {
    v179 = -1;
  }

  v190 = v337;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v190;
  v192 = v179;
  v193 = v327;
  sub_10016D0C0(v192, v327, v191);
  v76(v193, v78);
  v337 = v336[0];
  v194 = v316;
  v73(v316, enum case for IQCType.glare(_:), v78);
  if (v299 & 0xFF00) == 0x200 || (v248)
  {
    v189 = -1;
  }

  v195 = v337;
  v196 = swift_isUniquelyReferenced_nonNull_native();
  v336[0] = v195;
  sub_10016D0C0(v189, v194, v196);
  v76(v194, v78);
  v337 = v336[0];
  v197 = v303;
  v198 = v334;
  if (v301)
  {
    v199 = 0;
    sub_1002B0860(v301, &v337);
    v200 = v302;
    if (!v302)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  v199 = 0;
  v200 = v302;
  if (v302)
  {
LABEL_88:
    sub_1002B0B40(v200, &v337);
  }

LABEL_89:
  v327 = v337;
  v201 = sub_1002BA048(v337);
  v202 = v201[2];
  if (v202)
  {
    v330 = 0;
    v203 = sub_1003BA108(v202, 0);
    v335 = sub_1003BC70C(v336, v203 + ((*(v197 + 80) + 32) & ~*(v197 + 80)), v202, v201);
    v204 = v336[0];

    sub_10001FA6C(v204);
    if (v335 != v202)
    {
      __break(1u);
      goto LABEL_108;
    }

    v78 = v332;
    v197 = v303;
    v198 = v334;
    v199 = v330;
  }

  else
  {

    v203 = _swiftEmptyArrayStorage;
  }

  v336[0] = v203;
  sub_1002B8E6C(v336);
  if (!v199)
  {
    v205 = *(v336[0] + 16);
    if (v205)
    {
      v330 = *(v333 + 48);
      v206 = *(v197 + 80);
      v326 = v336[0];
      v207 = v336[0] + ((v206 + 32) & ~v206);
      v329 = *(v197 + 72);
      v208 = v198 + 32;
      v209 = _swiftEmptyArrayStorage;
      v210 = v304;
      v328 = v208;
      do
      {
        v211 = v331;
        sub_1002BC430(v207, v331);
        v212 = v208;
        v213 = *(v211 + v330);
        v214 = v5;
        v215 = *(v333 + 48);
        v335 = *v212;
        (v335)(v210, v211, v78);
        *(v210 + v215) = v213;
        sub_1002BC430(v210, v214);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v209 = sub_1003C526C(0, v209[2] + 1, 1, v209);
        }

        v217 = v209[2];
        v216 = v209[3];
        if (v217 >= v216 >> 1)
        {
          v209 = sub_1003C526C((v216 > 1), v217 + 1, 1, v209);
        }

        sub_1002BC4A0(v210);
        v209[2] = v217 + 1;
        v218 = v209 + ((*(v334 + 80) + 32) & ~*(v334 + 80)) + *(v334 + 72) * v217;
        v5 = v214;
        v78 = v332;
        v208 = v328;
        (v335)(v218, v214, v332);
        v207 += v329;
        --v205;
      }

      while (v205);

      return v209;
    }

    return _swiftEmptyArrayStorage;
  }

LABEL_108:

  __break(1u);
  return result;
}

uint64_t sub_1002BC3E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002BC430(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083C1C8, &qword_1006DA768);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BC4A0(uint64_t a1)
{
  v2 = sub_100007224(&qword_10083C1C8, &qword_1006DA768);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1002BC508(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = vcvts_n_f32_u32(sub_10054A40C(0x1000001uLL), 0x18uLL);
  if ((a1 & &_mh_execute_header) != 0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = *&a1;
  }

  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 67109378;
    *(v10 + 4) = v6 < v7;
    *(v10 + 8) = 2080;
    v16 = a1;
    v17 = BYTE4(a1) & 1;
    sub_100007224(&qword_10083F548, &unk_1006DC7B0);
    v12 = Optional.debugDescription.getter();
    v14 = sub_100141FE4(v12, v13, &v18);

    *(v10 + 10) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "IQ Exploration rolled a %{BOOL}d from probability %s", v10, 0x12u);
    sub_10000BB78(v11);
  }

  (*(v3 + 8))(v5, v2);
  return v6 < v7;
}

uint64_t sub_1002BC714()
{
  v0 = type metadata accessor for IQImageType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100832C38 != -1)
  {
    swift_once();
  }

  v71 = xmmword_1008822A8;
  v72 = unk_1008822B8;
  v73 = qword_1008822C8;
  v67 = xmmword_100882268;
  v68 = unk_100882278;
  v69 = xmmword_100882288;
  v70 = unk_100882298;
  v4 = sub_1001C6430();
  v66 = 0;
  v65 = sub_1002BC508(LODWORD(v4));
  v5 = *(v1 + 104);
  v5(v3, enum case for IQImageType.frontScan(_:), v0);
  v6 = sub_1001B732C(v3);
  v63 = v7;
  v64 = v6;
  v8 = *(v1 + 8);
  v8(v3, v0);
  v5(v3, enum case for IQImageType.backScan(_:), v0);
  v9 = sub_1001B732C(v3);
  v61 = v10;
  v62 = v9;
  v8(v3, v0);
  v5(v3, enum case for IQImageType.idFront(_:), v0);
  v11 = sub_1001B732C(v3);
  v59 = v12;
  v60 = v11;
  v8(v3, v0);
  v5(v3, enum case for IQImageType.idBack(_:), v0);
  v58 = sub_1001B732C(v3);
  v57 = v13;
  v8(v3, v0);
  v5(v3, enum case for IQImageType.selfie(_:), v0);
  v56 = sub_1001B732C(v3);
  v55 = v14;
  v8(v3, v0);
  v5(v3, enum case for IQImageType.liveness(_:), v0);
  v46 = v5;
  v54 = sub_1001B732C(v3);
  v53 = v15;
  v8(v3, v0);
  v5(v3, enum case for IQImageType.passive(_:), v0);
  v52 = sub_1001B732C(v3);
  v51 = v16;
  v8(v3, v0);
  v50 = sub_1001C4D78();
  v49 = v17;
  v18 = objc_opt_self();
  v19 = [v18 standardUserDefaults];
  v20._countAndFlagsBits = static DaemonInternalDefaultsKeys.confidenceBufferSize.getter();
  v74 = NSUserDefaults.internalInt(forKey:)(v20);
  value = v74.value;
  is_nil = v74.is_nil;

  v23 = *(&v67 + 1);
  if (!is_nil)
  {
    v23 = value;
  }

  v48 = v23;
  v24 = [v18 standardUserDefaults];
  v25._countAndFlagsBits = static DaemonInternalDefaultsKeys.stableWindow.getter();
  v75 = NSUserDefaults.internalInt(forKey:)(v25);
  v26 = v75.value;
  v27 = v75.is_nil;

  v28 = v68;
  if (!v27)
  {
    v28 = v26;
  }

  v47 = v28;
  v29 = [v18 standardUserDefaults];
  v30._countAndFlagsBits = static DaemonInternalDefaultsKeys.imqIDScanFrameRate.getter();
  v76 = NSUserDefaults.internalInt(forKey:)(v30);
  v31 = v76.value;
  v32 = v76.is_nil;

  v33 = *(&v68 + 1);
  if (!v32)
  {
    v33 = v31;
  }

  v45[1] = v33;
  v34 = [v18 standardUserDefaults];
  v35._countAndFlagsBits = static DaemonInternalDefaultsKeys.imqVideoFrameRate.getter();
  v77 = NSUserDefaults.internalInt(forKey:)(v35);
  v36 = v77.value;
  v37 = v77.is_nil;

  v38 = v69;
  if (!v37)
  {
    v38 = v36;
  }

  v45[0] = v38;
  v46(v3, enum case for IQImageType.passport(_:), v0);
  sub_1001B732C(v3);
  v8(v3, v0);
  v39 = [v18 standardUserDefaults];
  v40._countAndFlagsBits = static DaemonInternalDefaultsKeys.passportFramerate.getter();
  NSUserDefaults.internalInt(forKey:)(v40);

  v41 = [v18 standardUserDefaults];
  v42._countAndFlagsBits = static DaemonInternalDefaultsKeys.passportTimeout.getter();
  NSUserDefaults.internalInt(forKey:)(v42);

  v43 = objc_allocWithZone(type metadata accessor for IdentityImageQuality());
  v66 = 0;
  return IdentityImageQuality.init(frontScanSettings:backScanSettings:frontIDSettings:backIDSettings:selfieSettings:livenessSettings:passiveSettings:livenessBlockingCodes:exploration:bufferSize:stableWindow:idScanFrameRate:videoFrameRate:maxRectTravel:resizeDimensions:passportSettings:passportFramerate:passportTimeout:)();
}

uint64_t sub_1002BCD94()
{
  v1 = v0;
  v28 = type metadata accessor for DIPHTTPSession.Configuration(0);
  __chkstk_darwin(v28);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for UUID();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_currentSignedConfigV2;
  v8 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v9 = *(*(v8 - 8) + 56);
  v9(v1 + v7, 1, 1, v8);
  v9(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_livenessConfigV2, 1, 1, v8);
  v10 = (v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_proofingSessionId);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_disabledGestureSequence) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_disabledGestureCount) = 0;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultTimeToSkipAX) = 50;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultTimeToAlertAX) = 100;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultTutorialVideoDelay) = 2000;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultTutorialVideoDuration) = 2000;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultFaceOutOfBoundFrames) = 30;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultTutorialResumeDelay) = 1000;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultGestureDetectedSuccessDuration) = 3000;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultLastGestureExtraFrameDuration) = 1000;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultRequiresGoodLuxFlag) = 0;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultEnablePrintReplayFlag) = 0;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultEnableIDMatchingFlag) = 0;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultSelfieRequirement) = 1;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultTotalFrameCount) = 150;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultMinimumValidFrameCount) = 146;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultDisplayPassiveLivenessFlag) = 0;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultEnableAutoFlashFlag) = 1;
  type metadata accessor for IdentityProofingDatabaseProvider();
  v11 = swift_allocObject();
  v12 = type metadata accessor for IdentitySelfHealer();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_proofingSessionID];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v13[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_databaseProvider] = v11;
  v31.receiver = v13;
  v31.super_class = v12;
  v15 = objc_msgSendSuper2(&v31, "init");
  v16 = swift_allocObject();
  v17 = objc_allocWithZone(v12);
  v18 = &v17[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_proofingSessionID];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v17[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_databaseProvider] = v16;
  v30.receiver = v17;
  v30.super_class = v12;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_selfHealer) = objc_msgSendSuper2(&v30, "init");
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v4 + 8))(v6, v27);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  if (qword_100832D08 != -1)
  {
    swift_once();
  }

  v22 = sub_10003170C(v28, qword_100882448);
  sub_1002BEB48(v22, v3);
  v23 = objc_allocWithZone(type metadata accessor for DIPTopekaWebService(0));
  v24 = sub_1005D7D88(v19, v21, v29, v3);
  *(v1 + 16) = v24;
  *&v24[OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_selfHealer + 8] = &off_10080DB50;
  swift_unknownObjectWeakAssign();

  return v1;
}

uint64_t sub_1002BD1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[152] = v8;
  v9[151] = a8;
  v9[150] = a7;
  v9[149] = a6;
  v9[148] = a5;
  v9[147] = a4;
  v9[146] = a3;
  v9[145] = a2;
  v9[144] = a1;
  v10 = type metadata accessor for DIPError.Code();
  v9[153] = v10;
  v9[154] = *(v10 - 8);
  v9[155] = swift_task_alloc();
  sub_100007224(&qword_100835970, &unk_1006C1EA0);
  v9[156] = swift_task_alloc();
  v9[157] = swift_task_alloc();
  v9[158] = swift_task_alloc();
  v9[159] = type metadata accessor for IdentityProofingLivenessConfigResponseV2(0);
  v9[160] = swift_task_alloc();
  v9[161] = swift_task_alloc();
  v11 = type metadata accessor for DeviceInformationProvider();
  v9[162] = v11;
  v9[163] = *(v11 - 8);
  v9[164] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v9[165] = v12;
  v9[166] = *(v12 - 8);
  v9[167] = swift_task_alloc();

  return _swift_task_switch(sub_1002BD3E4, 0, 0);
}

uint64_t sub_1002BD3E4()
{
  v1 = *(v0 + 1336);
  v2 = *(v0 + 1328);
  v29 = *(v0 + 1320);
  v3 = *(v0 + 1312);
  v4 = *(v0 + 1304);
  v5 = *(v0 + 1296);
  v6 = *(v0 + 1216);
  v7 = v6 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_proofingSessionId;
  v34 = *(v6 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_proofingSessionId);
  *(v0 + 1344) = v34;
  v8 = *(v7 + 8);
  *(v0 + 1352) = v8;
  v32 = v5;
  v33 = v8;

  UUID.init()();
  v9 = UUID.uuidString.getter();
  v30 = v10;
  v31 = v9;
  *(v0 + 1360) = v9;
  *(v0 + 1368) = v10;
  (*(v2 + 8))(v1, v29);
  v11 = *(v6 + 16);
  v12 = v11 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation;
  v13 = *(v11 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  *(v0 + 1376) = v13;
  v14 = *(v12 + 8);
  *(v0 + 1384) = v14;
  sub_100020260(*(v11 + OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession) + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager, v0 + 1040);
  sub_10000BA08((v0 + 1040), *(v0 + 1064));

  v15 = dispatch thunk of DIPAccountManagerProtocol.appleAuthHeader(_:)();
  v17 = v16;
  *(v0 + 1392) = v15;
  *(v0 + 1400) = v16;
  sub_10000BB78((v0 + 1040));
  DeviceInformationProvider.init()();
  v18 = DeviceInformationProvider.uniqueDeviceID.getter();
  v20 = v19;
  *(v0 + 1408) = v18;
  *(v0 + 1416) = v19;
  (*(v4 + 8))(v3, v32);
  if (qword_100832D18 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 1192);
  v22 = *(v0 + 1184);
  v23 = *(v0 + 1168);
  v24 = *(v0 + 1152);
  v25 = xmmword_100882478;
  *(v0 + 1424) = xmmword_100882478;
  *(v0 + 560) = v13;
  *(v0 + 568) = v14;
  *(v0 + 576) = v31;
  *(v0 + 584) = v30;
  *(v0 + 592) = v15;
  *(v0 + 600) = v17;
  *(v0 + 608) = v18;
  *(v0 + 616) = v20;
  *(v0 + 624) = v25;
  *(v0 + 640) = v24;
  *(v0 + 656) = v23;
  *(v0 + 672) = v22;
  *(v0 + 680) = v21;
  *(v0 + 688) = *(v0 + 1200);
  *(v0 + 704) = v34;
  *(v0 + 712) = v33;

  v26 = swift_task_alloc();
  *(v0 + 1440) = v26;
  *v26 = v0;
  v26[1] = sub_1002BD6C4;
  v27 = *(v0 + 1280);

  return sub_1005E5868(v27, v0 + 560);
}

uint64_t sub_1002BD6C4()
{
  v2 = *v1;
  *(*v1 + 1448) = v0;

  if (v0)
  {
    v3 = *(v2 + 1424);
    v4 = *(v2 + 1408);
    v5 = *(v2 + 1392);
    v6 = *(v2 + 1360);
    v7 = *(v2 + 1192);
    v8 = *(v2 + 1184);
    v9 = *(v2 + 1168);
    v10 = *(v2 + 1152);
    *(v2 + 720) = *(v2 + 1376);
    *(v2 + 736) = v6;
    *(v2 + 752) = v5;
    *(v2 + 768) = v4;
    *(v2 + 784) = v3;
    *(v2 + 800) = v10;
    *(v2 + 816) = v9;
    *(v2 + 832) = v8;
    *(v2 + 840) = v7;
    v11 = *(v2 + 1344);
    *(v2 + 848) = *(v2 + 1200);
    *(v2 + 864) = v11;
    sub_1000B16EC(v2 + 720);
    v12 = sub_1002BDC50;
  }

  else
  {
    v12 = sub_1002BD828;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1002BD828()
{
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1216);
  sub_1002BEE60(*(v0 + 1280), *(v0 + 1288));
  v3 = OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_livenessConfigV2;
  swift_beginAccess();
  v30 = v3;
  v31 = v2;
  sub_1002BEEC4(v2 + v3, v1);
  v4 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (v6(v1, 1, v4) == 1)
  {
    v7 = *(v0 + 1256);
    (*(v5 + 16))(*(v0 + 1264), *(v0 + 1288) + *(*(v0 + 1272) + 24), v4);
    if (v6(v7, 1, v4) != 1)
    {
      sub_1002BEF34(*(v0 + 1256));
    }
  }

  else
  {
    (*(v5 + 32))(*(v0 + 1264), *(v0 + 1256), v4);
  }

  v8 = *(v0 + 1424);
  v9 = *(v0 + 1408);
  v10 = *(v0 + 1392);
  v11 = *(v0 + 1360);
  v12 = *(v0 + 1288);
  v28 = *(v0 + 1272);
  v29 = *(v0 + 1448);
  v13 = *(v0 + 1264);
  v14 = *(v0 + 1248);
  v15 = *(v0 + 1216);
  v16 = *(v0 + 1192);
  v17 = *(v0 + 1184);
  v18 = *(v0 + 1168);
  v19 = *(v0 + 1152);
  *(v0 + 880) = *(v0 + 1376);
  *(v0 + 896) = v11;
  *(v0 + 912) = v10;
  *(v0 + 928) = v9;
  *(v0 + 944) = v8;
  *(v0 + 960) = v19;
  *(v0 + 976) = v18;
  *(v0 + 992) = v17;
  *(v0 + 1000) = v16;
  v20 = *(v0 + 1344);
  *(v0 + 1008) = *(v0 + 1200);
  *(v0 + 1024) = v20;
  sub_1000B16EC(v0 + 880);
  v21 = *(v5 + 56);
  v21(v13, 0, 1, v4);
  v22 = OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_currentSignedConfigV2;
  swift_beginAccess();
  sub_1002BEDF0(v13, v15 + v22);
  swift_endAccess();
  (*(v5 + 16))(v14, v12 + *(v28 + 24), v4);
  v21(v14, 0, 1, v4);
  swift_beginAccess();
  sub_1002BEDF0(v14, v31 + v30);
  swift_endAccess();
  JWSSignedJSON.payload.getter();
  memcpy((v0 + 16), (v0 + 288), 0x10AuLL);
  v23 = sub_1002BE038((v0 + 16));
  if (v29)
  {
    sub_1002BEF9C(*(v0 + 1288));
    sub_10009F310(v0 + 16);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v26 = v23;
    sub_1002BEF9C(*(v0 + 1288));
    sub_10009F310(v0 + 16);

    v27 = *(v0 + 8);

    return v27(v26);
  }
}

uint64_t sub_1002BDC50()
{
  (*(v0[154] + 104))(v0[155], enum case for DIPError.Code.internalError(_:), v0[153]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002BDE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = a3;
  v5 = sub_100007224(&qword_100835970, &unk_1006C1EA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v9 = *(v8 - 8);
  v19 = *(v9 + 16);
  v19(v7, a1, v8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_currentSignedConfigV2;
  swift_beginAccess();
  v12 = v3 + v11;
  v13 = v3;
  sub_1002BEDF0(v7, v12);
  swift_endAccess();
  v19(v7, a1, v8);
  v10(v7, 0, 1, v8);
  v14 = OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_livenessConfigV2;
  swift_beginAccess();
  sub_1002BEDF0(v7, v13 + v14);
  swift_endAccess();
  v15 = (v13 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_proofingSessionId);
  v16 = v21;
  *v15 = v20;
  v15[1] = v16;

  JWSSignedJSON.payload.getter();
  memcpy(v23, v22, 0x10AuLL);
  v17 = sub_1002BE038(v23);
  sub_10009F310(v23);
  return v17;
}

uint64_t sub_1002BE038(__int128 *a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v32 = *(v2 - 8);
  __chkstk_darwin(v2);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() standardUserDefaults];
  v9._countAndFlagsBits = static DaemonInternalDefaultsKeys.overrideLivenessConfig.getter();
  v10 = NSUserDefaults.internalBool(forKey:)(v9);

  if (!v10)
  {
    v15 = a1[7];
    v16 = a1[9];
    v42 = a1[8];
    v43[0] = v16;
    *(v43 + 14) = *(a1 + 158);
    v17 = a1[3];
    v18 = a1[5];
    v38 = a1[4];
    v39 = v18;
    v19 = a1[5];
    v20 = a1[7];
    v40 = a1[6];
    v41 = v20;
    v21 = a1[1];
    v34 = *a1;
    v35 = v21;
    v22 = a1[3];
    v24 = *a1;
    v23 = a1[1];
    v36 = a1[2];
    v37 = v22;
    v25 = a1[9];
    v44[8] = v42;
    v45[0] = v25;
    *(v45 + 14) = *(a1 + 158);
    v44[4] = v38;
    v44[5] = v19;
    v44[6] = v40;
    v44[7] = v15;
    v44[0] = v24;
    v44[1] = v23;
    v44[2] = v36;
    v44[3] = v17;
    if (sub_10021C1F8(v44) == 1)
    {
      v26 = *(a1 + 25);
      if (!v26)
      {
        (*(v32 + 104))(v33, enum case for DIPError.Code.livenessConfigV2MissingFields(_:), v2);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100037214();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        return swift_willThrow();
      }
    }

    else
    {
      v52[8] = v42;
      v53[0] = v43[0];
      *(v53 + 14) = *(v43 + 14);
      v52[4] = v38;
      v52[5] = v39;
      v52[6] = v40;
      v52[7] = v41;
      v52[0] = v34;
      v52[1] = v35;
      v52[2] = v36;
      v52[3] = v37;
      sub_1002BE484(v52);
      v26 = *(a1 + 25);
      if (!v26)
      {
        goto LABEL_11;
      }
    }

    v46 = a1[11];
    v27 = *(a1 + 24);
    v28 = a1[14];
    v49 = a1[13];
    v50 = v28;
    v51[0] = a1[15];
    *(v51 + 10) = *(a1 + 250);
    v47 = v27;
    v48 = v26;
    v29 = sub_10021C1F8(&v34) == 0;
    sub_1002BEBAC(&v46, v29);
LABEL_11:
    v30 = objc_allocWithZone(type metadata accessor for IdentityLivenessConfig());
    return IdentityLivenessConfig.init(active:passive:)();
  }

  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Using custom liveness config from internal settings.", v13, 2u);
  }

  (*(v5 + 8))(v7, v4);
  return sub_1001C73F4();
}

uint64_t sub_1002BE484(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v33 - v6;
  v8 = *(a1 + 16);
  v9 = *(v8 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v42 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v11 = type metadata accessor for IdentityGesture();
    v12 = v8 + 40;
    do
    {
      v13 = objc_allocWithZone(v11);
      IdentityGesture.init(gesture:type:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v12 += 16;
      --v9;
    }

    while (v9);
    v10 = v42;
  }

  v41 = *(a1 + 40);
  v14 = *(a1 + 80);
  v40 = (*(a1 + 173) == 2) | *(a1 + 173);
  v15 = objc_opt_self();
  v16 = [v15 standardUserDefaults];
  v17._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableLiveness.getter();
  v18 = NSUserDefaults.internalBool(forKey:)(v17);

  if (v18)
  {

    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Internal settings has been set to disable liveness.", v21, 2u);
    }

    (*(v38 + 8))(v7, v39);
    v10 = *(v37 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_disabledGestureSequence);

    v41 = 0;
  }

  v37 = v10;
  v22 = [v15 standardUserDefaults];
  v23._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableAutoFlash.getter();
  v24 = NSUserDefaults.internalBool(forKey:)(v23);

  if (v24)
  {
    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Internal settings has been set to disable auto flash.", v27, 2u);
    }

    (*(v38 + 8))(v5, v39);
    v40 = 0;
  }

  v28 = *(a1 + 128);
  if (*(a1 + 136))
  {
    v28 = 1000;
  }

  v38 = v28;
  v39 = v14 & ~(v14 >> 63);
  if (*(a1 + 152))
  {
    v29 = 3000;
  }

  else
  {
    v29 = *(a1 + 144);
  }

  v30 = *(a1 + 160);
  if (*(a1 + 168))
  {
    v30 = 1000;
  }

  v34 = v30;
  v35 = *(a1 + 88);
  v36 = v29;
  v33 = *(a1 + 96);
  v31 = objc_allocWithZone(type metadata accessor for IdentityActiveLivenessConfig());
  return IdentityActiveLivenessConfig.init(gestureSequence:minRequiredGestureCount:timeToSkipOption:timeToSkipAccessible:timeToAlert:timeToAlertAccessible:maxRetakeCount:sessionTimeout:faceOutOfBoundFrames:gestureCompletionDelay:tutorialVideoDelay:tutorialVideoDuration:tutorialResumeDelay:gestureDetectedSuccessDuration:lastGestureExtraFrameDuration:requiresGoodLux:enablePrintReplay:enableIDMatching:requireSelfie:enableAutoFlash:)();
}

uint64_t sub_1002BE8EC()
{
  sub_1002BEF34(v0 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_currentSignedConfigV2);
  sub_1002BEF34(v0 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_livenessConfigV2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityProofingLivenessConfigProvider(uint64_t a1)
{
  result = qword_10083F628;
  if (!qword_10083F628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002BE9F0(uint64_t a1)
{
  sub_1002BEAE4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002BEAE4(uint64_t a1)
{
  if (!qword_100835A28)
  {
    sub_10000B870(&qword_100835A30, &unk_1006DB6C0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100835A28);
    }
  }
}

uint64_t sub_1002BEB48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPHTTPSession.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BEBAC(uint64_t a1, char a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() standardUserDefaults];
  v7._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableAutoFlash.getter();
  v8 = NSUserDefaults.internalBool(forKey:)(v7);

  if (v8)
  {
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Internal settings has been set to disable auto flash.", v11, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }

  v12 = objc_allocWithZone(type metadata accessor for IdentityPassiveLivenessConfig());
  return IdentityPassiveLivenessConfig.init(maxRetakeCount:sessionTimeout:faceOutOfBoundFrames:totalFrameCount:minimumValidFrameCount:requiresGoodLux:enablePrintReplay:disableStitchDetection:enableAutoFlash:useAuxiliaryURL:)();
}

uint64_t sub_1002BEDF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100835970, &unk_1006C1EA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BEE60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityProofingLivenessConfigResponseV2(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BEEC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100835970, &unk_1006C1EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BEF34(uint64_t a1)
{
  v2 = sub_100007224(&qword_100835970, &unk_1006C1EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002BEF9C(uint64_t a1)
{
  v2 = type metadata accessor for IdentityProofingLivenessConfigResponseV2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002BF01C(uint64_t a1)
{
  v157 = a1;
  v1 = type metadata accessor for IdentityProofingUnorderedUIElement();
  v152 = *(v1 - 8);
  v153 = v1;
  v2 = __chkstk_darwin(v1);
  v139 = &v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v138 = &v134 - v5;
  __chkstk_darwin(v4);
  v137 = &v134 - v6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v140 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v148 = &v134 - v12;
  v13 = __chkstk_darwin(v11);
  v143 = &v134 - v14;
  v15 = __chkstk_darwin(v13);
  v142 = &v134 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v134 - v18;
  v20 = __chkstk_darwin(v17);
  v136 = &v134 - v21;
  v22 = __chkstk_darwin(v20);
  v135 = &v134 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v134 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v134 - v28;
  __chkstk_darwin(v27);
  v31 = &v134 - v30;
  defaultLogger()();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Fetching liveness consent UI from the unordered UI", v34, 2u);
  }

  v37 = *(v8 + 8);
  v35 = v8 + 8;
  v36 = v37;
  v37(v31, v7);
  v141 = IdentityProofingUnorderedUIElement.title.getter();
  v39 = v38;
  v40 = IdentityProofingUnorderedUIElement.messages.getter();
  if (v40)
  {
    if (v40[2])
    {
      v41 = v40[5];
      v147 = v40[4];

      goto LABEL_8;
    }
  }

  v147 = 0;
  v41 = 0;
LABEL_8:
  v42 = IdentityProofingUnorderedUIElement.actions.getter();
  v156 = v36;
  if (v42)
  {
    if (v42[2] >= 2uLL)
    {
      v44 = v42[4];
      v43 = v42[5];
      v45 = v42[7];
      v144 = v42[6];
      v145 = v44;
      v151 = v43;

      v150 = v45;

      goto LABEL_13;
    }
  }

  v144 = 0;
  v145 = 0;
  v150 = 0;
  v151 = 0;
LABEL_13:
  defaultLogger()();
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  v48 = os_log_type_enabled(v46, v47);
  v149 = v39;
  if (v48)
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "BEGIN LOGGING LIVENESS CONSENT UI messageIDs", v49, 2u);
    v39 = v149;
  }

  v50 = v156;
  v156(v29, v7);
  defaultLogger()();

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();

  v53 = os_log_type_enabled(v51, v52);
  v146 = v41;
  v155 = v35;
  v134 = v19;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v158[0] = v55;
    *v54 = 136315138;
    if (v39)
    {
      v56 = v141;
    }

    else
    {

      v39 = 0xE300000000000000;
      v56 = 4999502;
    }

    v57 = v135;

    v58 = sub_100141FE4(v56, v39, v158);

    *(v54 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v51, v52, "title -> %s", v54, 0xCu);
    sub_10000BB78(v55);

    v50 = v156;
    v156(v26, v7);
    v41 = v146;
  }

  else
  {

    v50(v26, v7);
    v57 = v135;
  }

  defaultLogger()();

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v158[0] = v62;
    *v61 = 136315138;
    if (v41)
    {
      v63 = v147;
    }

    else
    {
      v63 = 4999502;
    }

    if (v41)
    {
      v64 = v41;
    }

    else
    {
      v64 = 0xE300000000000000;
    }

    v65 = sub_100141FE4(v63, v64, v158);
    v50 = v156;

    *(v61 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v59, v60, "subtitle -> %s", v61, 0xCu);
    sub_10000BB78(v62);
  }

  v50(v57, v7);
  v66 = v150;
  v67 = v136;
  defaultLogger()();
  v68 = v151;

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v158[0] = v72;
    *v71 = 136315138;
    if (v68)
    {
      v73 = v145;
    }

    else
    {
      v73 = 4999502;
    }

    if (v68)
    {
      v74 = v68;
    }

    else
    {
      v74 = 0xE300000000000000;
    }

    v75 = sub_100141FE4(v73, v74, v158);
    v50 = v156;

    *(v71 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v69, v70, "primaryButtonTitle -> %s", v71, 0xCu);
    sub_10000BB78(v72);
  }

  v50(v67, v7);
  v76 = v134;
  defaultLogger()();

  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();

  v79 = os_log_type_enabled(v77, v78);
  v154 = v7;
  if (v79)
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v158[0] = v81;
    *v80 = 136315138;
    if (v66)
    {
      v82 = v144;
    }

    else
    {
      v82 = 4999502;
    }

    if (v66)
    {
      v83 = v66;
    }

    else
    {
      v83 = 0xE300000000000000;
    }

    v84 = sub_100141FE4(v82, v83, v158);
    v50 = v156;

    *(v80 + 4) = v84;
    _os_log_impl(&_mh_execute_header, v77, v78, "secondaryButtonTitle -> %s", v80, 0xCu);
    sub_10000BB78(v81);

    v50(v76, v7);
  }

  else
  {

    v50(v76, v7);
  }

  v85 = v152;
  v86 = v153;
  v87 = v142;
  defaultLogger()();
  v88 = *(v85 + 16);
  v89 = v137;
  v88(v137, v157, v86);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = v85;
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v158[0] = v94;
    *v93 = 136315138;
    v95 = IdentityProofingUnorderedUIElement.privacyLinkTitle.getter();
    if (v96)
    {
      v97 = v95;
    }

    else
    {
      v97 = 4999502;
    }

    if (v96)
    {
      v98 = v96;
    }

    else
    {
      v98 = 0xE300000000000000;
    }

    v99 = *(v92 + 8);
    v99(v89, v153);
    v100 = sub_100141FE4(v97, v98, v158);
    v50 = v156;

    *(v93 + 4) = v100;
    _os_log_impl(&_mh_execute_header, v90, v91, "privacyLinkTitle -> %s", v93, 0xCu);
    sub_10000BB78(v94);
    v86 = v153;

    v101 = v142;
  }

  else
  {

    v99 = *(v85 + 8);
    v99(v89, v86);
    v101 = v87;
  }

  v50(v101, v154);
  v102 = v143;
  defaultLogger()();
  v103 = v138;
  v88(v138, v157, v86);
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = v103;
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v158[0] = v108;
    *v107 = 136315138;
    v109 = IdentityProofingUnorderedUIElement.privacyLinkIdentifier.getter();
    if (v110)
    {
      v111 = v109;
    }

    else
    {
      v111 = 4999502;
    }

    if (v110)
    {
      v112 = v110;
    }

    else
    {
      v112 = 0xE300000000000000;
    }

    v99(v106, v153);
    v113 = sub_100141FE4(v111, v112, v158);

    *(v107 + 4) = v113;
    _os_log_impl(&_mh_execute_header, v104, v105, "privacyLinkIdentifier -> %s", v107, 0xCu);
    sub_10000BB78(v108);
    v86 = v153;

    v156(v143, v154);
  }

  else
  {

    v99(v103, v86);
    v50(v102, v154);
  }

  v114 = v148;
  v115 = v139;
  defaultLogger()();
  v88(v115, v157, v86);
  v116 = Logger.logObject.getter();
  v117 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v158[0] = v119;
    *v118 = 136315138;
    IdentityProofingUnorderedUIElement.options.getter();
    type metadata accessor for IdentityProofingUnorderedUIElementOption();
    v120 = v86;
    v121 = Array.description.getter();
    v123 = v122;

    v99(v115, v120);
    v124 = sub_100141FE4(v121, v123, v158);

    *(v118 + 4) = v124;
    _os_log_impl(&_mh_execute_header, v116, v117, "options -> %s", v118, 0xCu);
    sub_10000BB78(v119);

    v125 = v148;
  }

  else
  {

    v99(v115, v86);
    v125 = v114;
  }

  v126 = v154;
  v127 = v156;
  v156(v125, v154);
  v128 = v140;
  defaultLogger()();
  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    *v131 = 0;
    _os_log_impl(&_mh_execute_header, v129, v130, "END LOGGING LIVENESS CONSENT UI messageIDs", v131, 2u);
  }

  v127(v128, v126);
  IdentityProofingUnorderedUIElement.learnMoreURL.getter();
  IdentityProofingUnorderedUIElement.privacyLinkTitle.getter();
  IdentityProofingUnorderedUIElement.options.getter();
  IdentityProofingUnorderedUIElement.privacyLinkIdentifier.getter();
  v132 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  return IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
}

void *sub_1002BFF90@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for Logger();
  v97 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v89 - v10;
  __chkstk_darwin(v9);
  v95 = &v89 - v12;
  v13 = sub_100007224(&qword_100835970, &unk_1006C1EA0);
  __chkstk_darwin(v13 - 8);
  v15 = &v89 - v14;
  v16 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v98 = &v89 - v19;
  if (!a1)
  {
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Missing results for liveness attestation", v30, 2u);
    }

    (v97[1])(v8, v5);
    goto LABEL_9;
  }

  v94 = v5;
  v20 = *(v2 + 16);
  v96 = v18;
  v21 = OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_currentSignedConfigV2;
  swift_beginAccess();
  v22 = v20 + v21;
  v23 = v96;
  sub_10000BBC4(v22, v15, &qword_100835970, &unk_1006C1EA0);
  if ((*(v17 + 48))(v15, 1, v23) == 1)
  {
    v24 = a1;
    sub_10000BE18(v15, &qword_100835970, &unk_1006C1EA0);
    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Missing signed config v2 from LivenessConfigProvider", v27, 2u);
    }

    (v97[1])(v11, v94);
LABEL_9:
    v31 = type metadata accessor for LivenessDataV2(0);
    return (*(*(v31 - 8) + 56))(a2, 1, 1, v31);
  }

  v90 = *(v17 + 32);
  v91 = v17 + 32;
  v90(v98, v15, v23);
  v93 = a1;
  v33 = IdentityLivenessResults.timestampsFAC.getter();
  v34 = v33;
  if (v33 >> 62)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v92 = a2;
  if (v35)
  {
    *&v101[0] = _swiftEmptyArrayStorage;
    result = sub_100172FE0(0, v35 & ~(v35 >> 63), 0);
    if (v35 < 0)
    {
      __break(1u);
      goto LABEL_45;
    }

    v36 = 0;
    v37 = *&v101[0];
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v38 = *(v34 + 8 * v36 + 32);
      }

      v39 = v38;
      v40 = GestureTimestamps.timestamps.getter();

      *&v101[0] = v37;
      v42 = v37[2];
      v41 = v37[3];
      if (v42 >= v41 >> 1)
      {
        sub_100172FE0((v41 > 1), v42 + 1, 1);
        v37 = *&v101[0];
      }

      ++v36;
      v37[2] = v42 + 1;
      v37[v42 + 4] = v40;
    }

    while (v35 != v36);
  }

  else
  {

    v37 = _swiftEmptyArrayStorage;
  }

  v43 = [objc_opt_self() standardUserDefaults];
  v44._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableLiveness.getter();
  v45 = NSUserDefaults.internalBool(forKey:)(v44);

  if (v45 && (JWSSignedJSON.payload.getter(), memcpy(v101, v100, 0x10AuLL), sub_10000BBC4(v101, v99, &qword_100835828, &qword_1006C1B18), sub_10009F310(v101), v110 = v101[8], v111[0] = v101[9], *(v111 + 14) = *(&v101[9] + 14), v106 = v101[4], v107 = v101[5], v108 = v101[6], v109 = v101[7], v102 = v101[0], v103 = v101[1], v104 = v101[2], v105 = v101[3], sub_10021C1F8(&v102) != 1))
  {
    v47 = v103;

    sub_10000BE18(v101, &qword_100835828, &qword_1006C1B18);
    v48 = *(v47 + 16);

    v46 = sub_1002C0990(_swiftEmptyArrayStorage, v48);

    v49 = v95;
    defaultLogger()();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v100[0] = v53;
      *v52 = 134218242;
      *(v52 + 4) = v48;
      *(v52 + 12) = 2080;

      sub_100007224(&qword_1008375E0, &qword_1006C9820);
      v54 = Array.description.getter();
      v56 = v55;

      v57 = sub_100141FE4(v54, v56, v100);

      *(v52 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "IdentityProofingLivenessDataProvider: liveness disabled. Gesture count: %ld Timestamps FAC: %s", v52, 0x16u);
      sub_10000BB78(v53);
    }

    (v97[1])(v49, v94);
  }

  else
  {
    v46 = v37;
  }

  v58 = IdentityLivenessResults.assessmentsPRD.getter();
  v59 = v58;
  if (!(v58 >> 62))
  {
    v60 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v97 = v46;
    if (v60)
    {
      goto LABEL_31;
    }

LABEL_42:

    v62 = _swiftEmptyArrayStorage;
LABEL_43:
    v71 = v93;
    v95 = IdentityLivenessResults.livenessLabel.getter();
    v72 = IdentityLivenessResults.assessmentsFAC.getter();
    v73 = v97;

    IdentityLivenessResults.assessmentTA.getter();
    v75 = v74;
    IdentityLivenessResults.maxNccLow.getter();
    v77 = v76;
    IdentityLivenessResults.maxNccHigh.getter();
    v79 = v78;
    v80 = IdentityLivenessResults.ignoredStitches.getter();
    IdentityLivenessResults.assessmentID.getter();
    v82 = v81;
    v83 = IdentityLivenessResults.timestampsID.getter();
    v84 = IdentityLivenessResults.timestampsButtonPressed.getter();
    v85 = IdentityLivenessResults.luxValues.getter();

    LOBYTE(v101[0]) = 0;
    LOBYTE(v100[0]) = 0;
    LOBYTE(v102) = 0;
    v99[0] = 0;
    v113 = 0;
    v112 = 0;
    v86 = v92;
    v90(v92, v98, v96);
    v87 = type metadata accessor for LivenessDataV2(0);
    v88 = &v86[*(v87 + 20)];
    *v88 = v95;
    v88[8] = v101[0];
    *(v88 + 2) = v72;
    *(v88 + 3) = v73;
    *(v88 + 8) = v75;
    v88[36] = v100[0];
    *(v88 + 10) = v77;
    v88[44] = v102;
    *(v88 + 12) = v79;
    v88[52] = v99[0];
    *(v88 + 7) = v80;
    v88[64] = v113;
    *(v88 + 9) = v62;
    *(v88 + 20) = v82;
    v88[84] = v112;
    *(v88 + 11) = v83;
    *(v88 + 12) = v84;
    *(v88 + 13) = v85;
    (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
  }

  v60 = _CocoaArrayWrapper.endIndex.getter();
  v97 = v46;
  if (!v60)
  {
    goto LABEL_42;
  }

LABEL_31:
  *&v101[0] = _swiftEmptyArrayStorage;
  result = sub_100172FC0(0, v60 & ~(v60 >> 63), 0);
  if ((v60 & 0x8000000000000000) == 0)
  {
    v61 = 0;
    v62 = *&v101[0];
    do
    {
      if ((v59 & 0xC000000000000001) != 0)
      {
        v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v63 = *(v59 + 8 * v61 + 32);
      }

      v64 = v63;
      PRDMetadata.stage2.getter();
      v66 = v65;
      v67 = PRDMetadata.timestamp.getter();

      *&v101[0] = v62;
      v69 = v62[2];
      v68 = v62[3];
      if (v69 >= v68 >> 1)
      {
        sub_100172FC0((v68 > 1), v69 + 1, 1);
        v62 = *&v101[0];
      }

      ++v61;
      v62[2] = v69 + 1;
      v70 = &v62[2 * v69];
      *(v70 + 8) = v66;
      v70[5] = v67;
    }

    while (v60 != v61);

    goto LABEL_43;
  }

LABEL_45:
  __break(1u);
  return result;
}

void *sub_1002C0990(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_100007224(&qword_1008375E0, &qword_1006C9820);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_1002C0A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  sub_100007224(&qword_100835968, &qword_1006DBC90);
  v5[28] = swift_task_alloc();
  v7 = type metadata accessor for WorkflowRecommendationResponse(0);
  v5[29] = v7;
  v5[30] = *(v7 - 8);
  v5[31] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[32] = v8;
  v5[33] = *(v8 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return _swift_task_switch(sub_1002C0BF0, 0, 0);
}

uint64_t sub_1002C0BF0()
{
  v1 = *(v0 + 192);
  v2 = *(*(v1 + 56) + 16);

  os_unfair_lock_lock(v2 + 14);
  sub_10000BBC4(&v2[4], v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
  os_unfair_lock_unlock(v2 + 14);

  if (*(v0 + 80))
  {
    sub_10012D290((v0 + 56), v0 + 16);
    v3 = *(*(v1 + 56) + 32);

    os_unfair_lock_lock((v3 + 24));
    v4 = *(v3 + 16);
    v5 = v4;
    os_unfair_lock_unlock((v3 + 24));

    if (v4)
    {
      v6 = *(*(v1 + 56) + 40);

      os_unfair_lock_lock((v6 + 24));
      v7 = *(v6 + 16);
      v8 = v7;
      os_unfair_lock_unlock((v6 + 24));

      if (v7)
      {
        defaultLogger()();
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "Retrieving the data from the pending actions repository", v11, 2u);
        }

        v12 = *(v0 + 280);
        v13 = *(v0 + 256);
        v14 = *(v0 + 264);
        v15 = *(v0 + 160);

        (*(v14 + 8))(v12, v13);
        sub_10012D290((v0 + 16), (v15 + 2));
        *v15 = v5;
        v15[1] = v8;

        v16 = *(v0 + 8);

        return v16();
      }

      sub_10000BB78((v0 + 16));
    }

    else
    {
      sub_10000BB78((v0 + 16));
    }
  }

  else
  {
    sub_10000BE18(v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
  }

  defaultLogger()();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Data doesn't exist in the pending actions repository. Fetching the data from the server", v20, 2u);
  }

  v22 = *(v0 + 264);
  v21 = *(v0 + 272);
  v23 = *(v0 + 256);
  v24 = *(v0 + 192);
  v25 = *(v0 + 176);

  (*(v22 + 8))(v21, v23);
  v26 = *(v24 + 64);

  *(v0 + 288) = sub_100266DA8(0, v26);

  v27 = swift_task_alloc();
  *(v0 + 296) = v27;
  *v27 = v0;
  v27[1] = sub_1002C0FA4;
  v28 = *(v0 + 184);
  v29 = *(v0 + 168);

  return sub_10025AE6C(v29, v25, v28, 0);
}

uint64_t sub_1002C0FA4(uint64_t a1)
{
  *(*v2 + 304) = v1;

  if (v1)
  {
    v3 = sub_1002C13EC;
  }

  else
  {

    v3 = sub_1002C10C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002C10C4()
{
  v1 = v0[36];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[28];
  v5 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_workflowRecommendationResponse;
  swift_beginAccess();
  sub_10000BBC4(v1 + v5, v4, &qword_100835968, &qword_1006DBC90);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v6 = v0[27];
    v7 = v0[25];
    v8 = v0[26];
    sub_10000BE18(v0[28], &qword_100835968, &qword_1006DBC90);
    (*(v8 + 104))(v6, enum case for DIPError.Code.topekaInternalServerError(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_5:

    v14 = v0[1];
    goto LABEL_6;
  }

  v9 = v0[38];
  v10 = v0[31];
  sub_1002C5C40(v0[28], v10, type metadata accessor for WorkflowRecommendationResponse);
  v0[15] = type metadata accessor for Workflow(0);
  v0[16] = &off_100808FE8;
  v11 = sub_100032DBC(v0 + 12);
  sub_1002C5C40(v10, v11, type metadata accessor for Workflow);
  v12 = sub_10025D0C4();
  if (v9)
  {
    sub_10000BB78(v0 + 12);
    goto LABEL_5;
  }

  v16 = v12;
  v17 = v13;
  v18 = v0[20];

  sub_10012D290(v0 + 6, (v18 + 2));
  *v18 = v16;
  v18[1] = v17;

  v14 = v0[1];
LABEL_6:

  return v14();
}

uint64_t sub_1002C13EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C1490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[68] = v6;
  v7[67] = v14;
  v7[66] = a6;
  v7[65] = a5;
  v7[63] = a3;
  v7[64] = a4;
  v7[61] = a1;
  v7[62] = a2;
  v8 = type metadata accessor for DIPError.Code();
  v7[69] = v8;
  v7[70] = *(v8 - 8);
  v7[71] = swift_task_alloc();
  v9 = type metadata accessor for IdentityProofingAttributeConfiguration();
  v7[72] = v9;
  v7[73] = *(v9 - 8);
  v7[74] = swift_task_alloc();
  v10 = type metadata accessor for IdentityDocumentType.Category();
  v7[75] = v10;
  v7[76] = *(v10 - 8);
  v7[77] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v7[78] = v11;
  v7[79] = *(v11 - 8);
  v7[80] = swift_task_alloc();
  v7[81] = swift_task_alloc();
  v7[82] = swift_task_alloc();
  v7[83] = swift_task_alloc();
  v7[84] = swift_task_alloc();
  v7[85] = swift_task_alloc();
  v7[86] = swift_task_alloc();

  return _swift_task_switch(sub_1002C16C8, 0, 0);
}

uint64_t sub_1002C16C8()
{
  if (*(v0 + 528))
  {
    *(v0 + 696) = String.lowercased()();
    v1 = swift_task_alloc();
    *(v0 + 712) = v1;
    *v1 = v0;
    v1[1] = sub_1002C1960;
    v2 = *(v0 + 504);
    v3 = *(v0 + 512);
    v4 = *(v0 + 496);

    return sub_1002C0A2C(v0 + 72, v4, v2, v3);
  }

  else
  {
    (*(*(v0 + 560) + 104))(*(v0 + 568), enum case for DIPError.Code.idStateUnavailable(_:), *(v0 + 552));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1002C1960()
{
  *(*v1 + 720) = v0;

  if (v0)
  {

    v2 = sub_1002C3C70;
  }

  else
  {
    v2 = sub_1002C1A7C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002C1A7C(uint64_t a1)
{
  v56 = v1;
  v2 = *(v1 + 88);
  *(v1 + 16) = *(v1 + 72);
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v1 + 104);
  *(v1 + 64) = *(v1 + 120);
  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "-----BEGIN LOGGING SAVED WORKFLOW-----", v5, 2u);
  }

  v6 = *(v1 + 688);
  v7 = *(v1 + 632);
  v8 = *(v1 + 624);

  v9 = *(v7 + 8);
  *(v1 + 728) = v9;
  v9(v6, v8);
  defaultLogger()();
  sub_1002C4620(v1 + 16, v1 + 128);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v1 + 680);
  v14 = *(v1 + 624);
  v54 = v9;
  if (v12)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v55 = v16;
    *v15 = 136446210;
    v17 = sub_10000BA08((v1 + 144), *(v1 + 168));
    v18 = *v17;
    v19 = v17[1];

    sub_1002C45F0(v1 + 128);
    v20 = sub_100141FE4(v18, v19, &v55);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, " WORKFLOWID: %{public}s", v15, 0xCu);
    sub_10000BB78(v16);
    v9 = v54;

    v54(v13, v14);
  }

  else
  {

    v9(v13, v14);
    sub_1002C45F0(v1 + 128);
  }

  defaultLogger()();
  sub_1002C4620(v1 + 16, v1 + 184);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v1 + 672);
  v25 = *(v1 + 624);
  if (v23)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v55 = v27;
    *v26 = 136446210;
    v28 = sub_10000BA08((v1 + 200), *(v1 + 224));
    v29 = v28[6];
    v30 = v28[7];

    sub_1002C45F0(v1 + 184);
    v31 = sub_100141FE4(v29, v30, &v55);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v21, v22, " PROVIDERID: %{public}s", v26, 0xCu);
    sub_10000BB78(v27);
    v9 = v54;

    v54(v24, v25);
  }

  else
  {

    v9(v24, v25);
    sub_1002C45F0(v1 + 184);
  }

  defaultLogger()();
  sub_1002C4620(v1 + 16, v1 + 240);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v1 + 664);
  v36 = *(v1 + 624);
  if (v34)
  {
    v53 = *(v1 + 664);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v55 = v38;
    *v37 = 136446210;
    sub_10000BA08((v1 + 256), *(v1 + 280));
    type metadata accessor for Workflow(0);

    v39 = Array.description.getter();
    v41 = v40;

    sub_1002C45F0(v1 + 240);
    v42 = sub_100141FE4(v39, v41, &v55);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v32, v33, " PAGINATION: %{public}s", v37, 0xCu);
    sub_10000BB78(v38);
    v9 = v54;

    v54(v53, v36);
  }

  else
  {

    v9(v35, v36);
    sub_1002C45F0(v1 + 240);
  }

  defaultLogger()();
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "-----END LOGGING SAVED WORKFLOW-----", v45, 2u);
  }

  v46 = *(v1 + 656);
  v47 = *(v1 + 624);

  v9(v46, v47);
  v48 = swift_task_alloc();
  *(v1 + 736) = v48;
  *v48 = v1;
  v48[1] = sub_1002C20B8;
  v49 = *(v1 + 704);
  v50 = *(v1 + 696);
  v51 = *(v1 + 536);

  return sub_1002C4658(v51, v1 + 32, v50, v49);
}

uint64_t sub_1002C20B8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 744) = a1;
  *(v3 + 752) = v1;

  if (v1)
  {
    v4 = sub_1002C2808;
  }

  else
  {
    v4 = sub_1002C21F8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002C21F8()
{
  v26 = v0;
  v1 = v0[93];
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_3:
    v2 = v0[68];
    v3 = *(v2 + 40);
    v4 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_identityKeyPair;
    swift_beginAccess();
    sub_10000BBC4(v3 + v4, (v0 + 37), &qword_10083D4B8, &qword_1006DB470);
    v5 = v0[40];
    sub_10000BE18((v0 + 37), &qword_10083D4B8, &qword_1006DB470);
    if (v5 && (v6 = *(v0[68] + 32), swift_beginAccess(), sub_10000BBC4(v6 + 192, (v0 + 49), &qword_10083D4B8, &qword_1006DB470), v7 = v0[52], sub_10000BE18((v0 + 49), &qword_10083D4B8, &qword_1006DB470), v7))
    {
      v0[104] = *(v0[68] + 24);
      v8 = sub_10000BA08(v0 + 4, v0[7])[20];
      v0[105] = v8;

      v9 = IdentityProofingConfiguration.documentType.getter();
      v10 = swift_task_alloc();
      v0[106] = v10;
      *v10 = v0;
      v10[1] = sub_1002C350C;
      v11 = v0[74];

      return sub_1002A77FC(v11, v8, v9);
    }

    else
    {
      defaultLogger()();
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      v15 = os_log_type_enabled(v13, v14);
      v16 = v0[91];
      v17 = v0[81];
      v18 = v0[78];
      if (v15)
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v25 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_100141FE4(0xD000000000000083, 0x800000010070AB80, &v25);
        _os_log_impl(&_mh_execute_header, v13, v14, "%s missing identitykeys, refetching", v19, 0xCu);
        sub_10000BB78(v20);
      }

      v16(v17, v18);
      v0[95] = *(v2 + 40);

      v21 = swift_task_alloc();
      v0[96] = v21;
      *v21 = v0;
      v21[1] = sub_1002C2A28;
      v22 = v0[67];

      return sub_1001AAAAC((v0 + 43), (v0 + 4), v22);
    }
  }

  (*(v0[70] + 104))(v0[71], enum case for DIPError.Code.invalidWorkflowPackage(_:), v0[69]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v24 = v0[90];
  (*(v0[70] + 104))(v0[71], enum case for DIPError.Code.internalError(_:), v0[69]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  if (!v24)
  {
    sub_1002C45F0((v0 + 2));
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_1002C2808()
{
  v1 = v0[90];
  (*(v0[70] + 104))(v0[71], enum case for DIPError.Code.internalError(_:), v0[69]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  if (!v1)
  {
    sub_1002C45F0((v0 + 2));
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_1002C2A28()
{
  *(*v1 + 776) = v0;

  if (v0)
  {
    v2 = sub_1002C3E8C;
  }

  else
  {
    v2 = sub_1002C2B5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002C2B5C()
{
  v1 = v0[97];
  sub_10000BA08(v0 + 43, v0[46]);
  v2 = dispatch thunk of IdentityKey.getIdentityPublicKeyData()();
  v0[98] = v2;
  v0[99] = v3;
  if (v1)
  {
    sub_1001B7154((v0 + 43));
    v4 = v0[90];
    (*(v0[70] + 104))(v0[71], enum case for DIPError.Code.internalError(_:), v0[69]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    if (!v4)
    {
      sub_1002C45F0((v0 + 2));
    }

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v9 = v0[77];
    v10 = v0[76];
    v11 = v0[75];
    v12 = *(v0[68] + 40);

    IdentityProofingConfiguration.documentType.getter();
    IdentityDocumentType.category.getter();
    v13 = (*(v10 + 88))(v9, v11);
    if (v13 == enum case for IdentityDocumentType.Category.mDL(_:))
    {
      v14 = 63;
    }

    else if (v13 == enum case for IdentityDocumentType.Category.passport(_:))
    {
      v14 = 16;
    }

    else
    {
      (*(v0[76] + 8))(v0[77], v0[75]);
      v14 = 0;
    }

    v15 = PKPassKitCoreBundle();
    type metadata accessor for SupplementalDeviceDataFetcher();
    swift_allocObject();
    sub_10000B8B8(v7, v8);
    *(v12 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_supplementalDataFetcher) = sub_10059F7F0(v14, v7, v8, v15);

    sub_10059FA1C();

    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "prepareStepUpUIFromSavedWorkflow: warmup producedAssets", v18, 2u);
    }

    v19 = v0[91];
    v20 = v0[80];
    v21 = v0[78];
    v22 = v0[68];

    v19(v20, v21);
    v0[100] = *(v22 + 32);

    v23 = IdentityProofingConfiguration.documentType.getter();
    v24 = *(*(v22 + 40) + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_supplementalDataFetcher);
    v0[101] = v24;

    v25 = swift_task_alloc();
    v0[102] = v25;
    *v25 = v0;
    v25[1] = sub_1002C3064;

    return sub_1001D0B30(v23, (v0 + 4), (v0 + 43), v24);
  }
}

uint64_t sub_1002C3064()
{
  *(*v1 + 824) = v0;

  if (v0)
  {
    v2 = sub_1002C32CC;
  }

  else
  {
    v2 = sub_1002C31B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002C31B4()
{
  v1 = v0[68];
  sub_10000B90C(v0[98], v0[99]);
  v2 = *(v1 + 32);

  sub_1001B7154((v0 + 43));
  *(v2 + 184) = 1;

  v0[104] = *(v0[68] + 24);
  v3 = sub_10000BA08(v0 + 4, v0[7])[20];
  v0[105] = v3;

  v4 = IdentityProofingConfiguration.documentType.getter();
  v5 = swift_task_alloc();
  v0[106] = v5;
  *v5 = v0;
  v5[1] = sub_1002C350C;
  v6 = v0[74];

  return sub_1002A77FC(v6, v3, v4);
}

uint64_t sub_1002C32CC()
{
  sub_10000B90C(v0[98], v0[99]);
  sub_1001B7154((v0 + 43));
  v1 = v0[90];
  (*(v0[70] + 104))(v0[71], enum case for DIPError.Code.internalError(_:), v0[69]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  if (!v1)
  {
    sub_1002C45F0((v0 + 2));
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_1002C350C()
{
  *(*v1 + 856) = v0;

  if (v0)
  {

    v2 = sub_1002C3A2C;
  }

  else
  {
    v2 = sub_1002C3654;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002C3654()
{
  v1 = v0[107];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001A6758(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration, &protocol conformance descriptor for IdentityProofingAttributeConfiguration);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v0[74];
  v5 = v0[73];
  v6 = v0[72];
  if (v1)
  {

    (*(v5 + 8))(v4, v6);

    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1006DAE90;
    v8 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
    *(v7 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
    IdentityProofingConfiguration.documentType.getter();
    v9 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v18 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
  }

  else
  {
    v10 = v2;
    v11 = v3;

    (*(v5 + 8))(v4, v6);
    sub_10000B8B8(v10, v11);
    IdentityProofingConfiguration.documentType.getter();
    sub_1002C40B8();
    v12 = v0[2];
    v13 = v0[3];
    objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v14 = v12;
    v15 = v13;
    v18 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
    sub_10000B90C(v10, v11);
  }

  sub_100020260((v0 + 4), v0[61]);
  sub_1002C45F0((v0 + 2));

  v16 = v0[1];

  return v16(v18);
}

uint64_t sub_1002C3A2C()
{

  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006DAE90;
  v2 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  *(v1 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  IdentityProofingConfiguration.documentType.getter();
  v3 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
  v6 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

  sub_100020260(v0 + 32, *(v0 + 488));
  sub_1002C45F0(v0 + 16);

  v4 = *(v0 + 8);

  return v4(v6);
}

uint64_t sub_1002C3C70()
{
  v1 = v0[90];
  (*(v0[70] + 104))(v0[71], enum case for DIPError.Code.internalError(_:), v0[69]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  if (!v1)
  {
    sub_1002C45F0((v0 + 2));
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_1002C3E8C()
{
  v1 = v0[90];
  (*(v0[70] + 104))(v0[71], enum case for DIPError.Code.internalError(_:), v0[69]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  if (!v1)
  {
    sub_1002C45F0((v0 + 2));
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_1002C40B8()
{
  v1 = v0;
  v2 = sub_100007224(&qword_10083D4B0, &qword_1006DC940);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Logger();
  v9 = *(v33 - 8);
  v10 = __chkstk_darwin(v33);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v33 - v14;
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  IdentityProofingConfiguration.documentType.getter();
  v18 = IdentityDocumentType.rawValue.getter();
  if (v18 == IdentityDocumentType.rawValue.getter())
  {
    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Passport is not supported for Liveness consent", v21, 2u);
    }

    (*(v9 + 8))(v17, v33);
    return 0;
  }

  v22 = *(v1 + 40);
  v23 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_staticWorkflow;
  swift_beginAccess();
  sub_10000BBC4(v22 + v23, v4, &qword_10083D4B0, &qword_1006DC940);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000BE18(v4, &qword_10083D4B0, &qword_1006DC940);
    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to fetch static workflow", v26, 2u);
    }

    (*(v9 + 8))(v12, v33);
    return 0;
  }

  sub_1002C5C40(v4, v8, type metadata accessor for IdentityProofingStaticWorkflow);
  if (*&v8[*(v5 + 76)])
  {
    IdentityProofingConsentFlow.manualReviewEnabledLivenessFlowItem.getter();
    IdentityProofingConsentFlow.manualReviewEnabledFedStatsFlowItem.getter();
    IdentityProofingConsentFlow.manualReviewDisabledFedStatsFlowItem.getter();
  }

  v28 = objc_allocWithZone(type metadata accessor for IdentityProofingFeatureEnablementConfig());
  v29 = IdentityProofingFeatureEnablementConfig.init(manualReviewEnabledLivenessConsentFlowItem:manualReviewEnabledFedStatsConsentFlowItem:manualReviewDisabledFedStatsConsentFlowItem:)();
  defaultLogger()();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "successfully prepared featureEnablementConfig", v32, 2u);
  }

  (*(v9 + 8))(v15, v33);
  sub_1001A1FAC(v8);
  return v29;
}

void *sub_1002C4548()
{

  return v0;
}

uint64_t sub_1002C4598()
{
  sub_1002C4548();

  return swift_deallocClassInstance();
}

uint64_t sub_1002C4658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[68] = v4;
  v5[67] = a4;
  v5[66] = a3;
  v5[65] = a2;
  v5[64] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[69] = v6;
  v5[70] = *(v6 - 8);
  v5[71] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[72] = v7;
  v5[73] = *(v7 - 8);
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();

  return _swift_task_switch(sub_1002C479C, 0, 0);
}

uint64_t sub_1002C479C()
{
  v1 = v0[65];
  v2 = sub_10000BA08(v1, v1[3]);
  v3 = *(v2 + *(type metadata accessor for Workflow(0) + 116));
  v0[77] = v3;
  if (v3 && (v4 = *(v3 + 16), (v0[78] = v4) != 0))
  {

    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Fetch activeConfig from prepareProofingUI", v7, 2u);
    }

    v8 = v0[76];
    v9 = v0[73];
    v10 = v0[72];
    v11 = v0[68];
    v12 = v0[65];

    v13 = *(v9 + 8);
    v0[79] = v13;
    v13(v8, v10);
    v0[80] = *(v11 + 24);
    v14 = sub_10000BA08(v12, v1[3])[20];
    v0[81] = v14;

    v15 = IdentityProofingConfiguration.documentType.getter();
    v16 = swift_task_alloc();
    v0[82] = v16;
    *v16 = v0;
    v16[1] = sub_1002C4B00;

    return sub_1002A8D74((v0 + 2), v14, v15);
  }

  else
  {
    (*(v0[70] + 104))(v0[71], enum case for DIPError.Code.workflowPaginationUnavailable(_:), v0[69]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1002C4B00()
{
  v2 = *v1;
  *(*v1 + 664) = v0;

  if (v0)
  {
    v3 = sub_1002C5294;
  }

  else
  {
    sub_1000F2758(v2 + 16);

    v3 = sub_1002C4C3C;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1002C4C3C()
{
  v43 = v0;
  v0[63] = _swiftEmptyArrayStorage;
  v0[85] = _swiftEmptyArrayStorage;
  v0[84] = 0;
  v1 = v0[77];
  if (*(v1 + 16))
  {
    v2 = 0;
    while (1)
    {
      v3 = (v1 + 112 * v2);
      v0[86] = v3[5];
      v0[87] = v3[6];
      v0[88] = v3[7];
      v0[89] = v3[8];
      v0[90] = v3[9];
      v0[91] = v3[10];
      v0[92] = v3[12];
      v4 = v3[14];
      v0[93] = v4;
      v0[94] = v3[16];
      v5 = v3[17];
      v0[95] = v5;
      v6 = sub_100308788(v3[13], v4);
      v8 = v7;
      v40 = v6;
      v0[96] = v6;
      v0[97] = v7;
      if (v5)
      {
        v9 = *(v5 + 16);

        if (v9)
        {

          defaultLogger()();

          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.debug.getter();

          v31 = os_log_type_enabled(v29, v30);
          v32 = v0[79];
          v33 = v0[75];
          v34 = v0[72];
          if (v31)
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v42[0] = v36;
            *v35 = 136315138;
            *(v35 + 4) = sub_100141FE4(v40, v8, v42);
            _os_log_impl(&_mh_execute_header, v29, v30, "Image assets field exists for the page -> %s", v35, 0xCu);
            sub_10000BB78(v36);
          }

          v32(v33, v34);
          v0[98] = *(v0[68] + 48);

          v37 = swift_task_alloc();
          v0[99] = v37;
          *v37 = v0;
          v37[1] = sub_1002C5344;
          v38 = v0[67];
          v39 = v0[66];

          sub_10026F6BC(v39, v38, v5);
          return;
        }
      }

      else
      {
      }

      v10 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());

      v11 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();

      defaultLogger()();
      v12 = v11;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();

      v15 = os_log_type_enabled(v13, v14);
      v16 = v0[79];
      v17 = v0[74];
      v18 = v0[72];
      if (v15)
      {
        v41 = v0[79];
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v42[0] = v20;
        *v19 = 136446210;
        v21 = IdentityProofingUIConfig.view.getter();
        v23 = sub_100141FE4(v21, v22, v42);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s to be shown to the user", v19, 0xCu);
        sub_10000BB78(v20);

        v41(v17, v18);
      }

      else
      {

        v16(v17, v18);
      }

      v24 = v12;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v0[63] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[63] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v25 = v0[78];
      v26 = v0[84] + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v27 = v0[63];
      if (v26 == v25)
      {
        break;
      }

      v2 = v0[84] + 1;
      v0[85] = v27;
      v0[84] = v2;
      v1 = v0[77];
      if (v2 >= *(v1 + 16))
      {
        goto LABEL_23;
      }
    }

    v28 = v0[1];

    v28(v27);
  }

  else
  {
LABEL_23:
    __break(1u);
  }
}

uint64_t sub_1002C5294()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C5344(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 800) = v1;

  if (v1)
  {

    swift_bridgeObjectRelease_n();

    v5 = sub_1002C5BB0;
  }

  else
  {
    *(v4 + 808) = a1;
    v5 = sub_1002C5534;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_1002C5534()
{
  v45 = v0;
  v41 = type metadata accessor for IdentityProofingUIConfig();
  while (1)
  {
    v1 = objc_allocWithZone(v41);

    v2 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();

    defaultLogger()();
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[79];
    v8 = v0[74];
    v9 = v0[72];
    if (v6)
    {
      v42 = v0[79];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v44[0] = v11;
      *v10 = 136446210;
      v12 = IdentityProofingUIConfig.view.getter();
      v14 = sub_100141FE4(v12, v13, v44);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s to be shown to the user", v10, 0xCu);
      sub_10000BB78(v11);

      v42(v8, v9);
    }

    else
    {

      v7(v8, v9);
    }

    v15 = v3;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v0[63] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[63] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v16 = v0[78];
    v17 = v0[84] + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v18 = v0[63];
    if (v17 == v16)
    {
      break;
    }

    v19 = v0[84] + 1;
    v0[85] = v18;
    v0[84] = v19;
    v20 = v0[77];
    if (v19 >= *(v20 + 16))
    {
      __break(1u);
      return;
    }

    v21 = (v20 + 112 * v19);
    v0[86] = v21[5];
    v0[87] = v21[6];
    v0[88] = v21[7];
    v0[89] = v21[8];
    v0[90] = v21[9];
    v0[91] = v21[10];
    v0[92] = v21[12];
    v22 = v21[14];
    v0[93] = v22;
    v0[94] = v21[16];
    v23 = v21[17];
    v0[95] = v23;
    v24 = sub_100308788(v21[13], v22);
    v26 = v25;
    v43 = v24;
    v0[96] = v24;
    v0[97] = v25;
    if (v23)
    {
      v27 = *(v23 + 16);

      if (v27)
      {

        defaultLogger()();

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.debug.getter();

        v31 = os_log_type_enabled(v29, v30);
        v32 = v0[79];
        v33 = v0[75];
        v34 = v0[72];
        if (v31)
        {
          v35 = v0[79];
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v44[0] = v37;
          *v36 = 136315138;
          *(v36 + 4) = sub_100141FE4(v43, v26, v44);
          _os_log_impl(&_mh_execute_header, v29, v30, "Image assets field exists for the page -> %s", v36, 0xCu);
          sub_10000BB78(v37);

          v35(v33, v34);
        }

        else
        {

          v32(v33, v34);
        }

        v0[98] = *(v0[68] + 48);

        v38 = swift_task_alloc();
        v0[99] = v38;
        *v38 = v0;
        v38[1] = sub_1002C5344;
        v39 = v0[67];
        v40 = v0[66];

        sub_10026F6BC(v40, v39, v23);
        return;
      }
    }

    else
    {
    }
  }

  v28 = v0[1];

  v28(v18);
}

uint64_t sub_1002C5BB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C5C40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002C5CDC(uint64_t a1, uint64_t a2)
{
  v3[201] = v2;
  v3[200] = a2;
  v3[199] = a1;
  v4 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v3[202] = v4;
  v3[203] = *(v4 - 8);
  v3[204] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[205] = v5;
  v3[206] = *(v5 - 8);
  v3[207] = swift_task_alloc();
  v3[208] = swift_task_alloc();
  v3[209] = swift_task_alloc();
  sub_100007224(&qword_10083D4B0, &qword_1006DC940);
  v3[210] = swift_task_alloc();
  v3[211] = swift_task_alloc();
  v3[212] = swift_task_alloc();

  return _swift_task_switch(sub_1002C5E68, v2, 0);
}

uint64_t sub_1002C5E68()
{
  v1 = v0[212];
  v2 = v0[203];
  v3 = v0[202];
  v4 = v0[201];
  v5 = OBJC_IVAR____TtC8coreidvd45IdentityProofingTextReplacementHelperProvider_staticWorkflow;
  v0[213] = OBJC_IVAR____TtC8coreidvd45IdentityProofingTextReplacementHelperProvider_staticWorkflow;
  swift_beginAccess();
  sub_10000BBC4(v4 + v5, v1, &qword_10083D4B0, &qword_1006DC940);
  v6 = *(v2 + 48);
  v0[214] = v6;
  v0[215] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v3) = v6(v1, 1, v3);
  sub_10000BE18(v1, &qword_10083D4B0, &qword_1006DC940);
  if (v3 == 1)
  {

    return _swift_task_switch(sub_1002C60BC, 0, 0);
  }

  else
  {
    v7 = v0[214];
    v8 = v0[210];
    v9 = v0[202];
    sub_10000BBC4(v0[201] + v0[213], v8, &qword_10083D4B0, &qword_1006DC940);
    v10 = v7(v8, 1, v9);
    v11 = v0[210];
    if (v10)
    {
      sub_10000BE18(v11, &qword_10083D4B0, &qword_1006DC940);
      v12 = 0;
    }

    else
    {
      v13 = v0[204];
      v14 = v0[210];
      sub_1001A2050(v11, v13);
      sub_10000BE18(v14, &qword_10083D4B0, &qword_1006DC940);
      v12 = *(v13 + 64);

      sub_1001A1FAC(v13);
    }

    v0[221] = v12;
    v15 = swift_task_alloc();
    v0[222] = v15;
    *v15 = v0;
    v15[1] = sub_1002C6838;
    v16 = v0[200];

    return sub_1002A8D74((v0 + 2), v12, v16);
  }
}

uint64_t sub_1002C60BC(uint64_t a1)
{
  v2 = v1[200];
  v1[216] = sub_1006146AC();
  v3 = sub_10058CB08(v2);
  v1[217] = v4;
  v1[218] = v5;
  v6 = v3;
  v7 = v4;
  v9 = v8;
  v10 = v5;
  v11 = swift_task_alloc();
  v1[219] = v11;
  *v11 = v1;
  v11[1] = sub_1002C6200;
  v12 = v1[211];

  return sub_100612ED4(v12, v6, v7, v9, v10);
}

uint64_t sub_1002C6200()
{
  v2 = *v1;

  if (v0)
  {

    *(v2 + 1760) = v0;
    v3 = *(v2 + 1608);
    v4 = sub_1002C6558;
  }

  else
  {
    v5 = *(v2 + 1608);

    v4 = sub_1002C6398;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002C6398()
{
  v1 = v0[213];
  v2 = v0[211];
  v3 = v0[201];
  (*(v0[203] + 56))(v2, 0, 1, v0[202]);
  swift_beginAccess();
  sub_1002C73C0(v2, v3 + v1);
  swift_endAccess();
  v4 = v0[214];
  v5 = v0[210];
  v6 = v0[202];
  sub_10000BBC4(v0[201] + v0[213], v5, &qword_10083D4B0, &qword_1006DC940);
  v7 = v4(v5, 1, v6);
  v8 = v0[210];
  if (v7)
  {
    sub_10000BE18(v8, &qword_10083D4B0, &qword_1006DC940);
    v9 = 0;
  }

  else
  {
    v10 = v0[204];
    v11 = v0[210];
    sub_1001A2050(v8, v10);
    sub_10000BE18(v11, &qword_10083D4B0, &qword_1006DC940);
    v9 = *(v10 + 64);

    sub_1001A1FAC(v10);
  }

  v0[221] = v9;
  v12 = swift_task_alloc();
  v0[222] = v12;
  *v12 = v0;
  v12[1] = sub_1002C6838;
  v13 = v0[200];

  return sub_1002A8D74((v0 + 2), v9, v13);
}

uint64_t sub_1002C6558(uint64_t a1)
{
  v27 = v1;
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v25 = v1[209];
    v4 = v1[206];
    v5 = v1[205];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100141FE4(v8, v9, &v26);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Ignore the static workflow fetch error %s", v6, 0xCu);
    sub_10000BB78(v7);

    (*(v4 + 8))(v25, v5);
  }

  else
  {
    v11 = v1[209];
    v12 = v1[206];
    v13 = v1[205];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[214];
  v15 = v1[210];
  v16 = v1[202];
  sub_10000BBC4(v1[201] + v1[213], v15, &qword_10083D4B0, &qword_1006DC940);
  v17 = v14(v15, 1, v16);
  v18 = v1[210];
  if (v17)
  {
    sub_10000BE18(v18, &qword_10083D4B0, &qword_1006DC940);
    v19 = 0;
  }

  else
  {
    v20 = v1[204];
    v21 = v1[210];
    sub_1001A2050(v18, v20);
    sub_10000BE18(v21, &qword_10083D4B0, &qword_1006DC940);
    v19 = *(v20 + 64);

    sub_1001A1FAC(v20);
  }

  v1[221] = v19;
  v22 = swift_task_alloc();
  v1[222] = v22;
  *v22 = v1;
  v22[1] = sub_1002C6838;
  v23 = v1[200];

  return sub_1002A8D74((v1 + 2), v19, v23);
}

uint64_t sub_1002C6838()
{
  v8 = v1;
  v8 = *v1;
  v2 = v8;
  v3 = *v1;
  v8 = v3;
  v2[223] = v0;

  if (v0)
  {
    v4 = v2[201];

    return _swift_task_switch(sub_1002C6A5C, v4, 0);
  }

  else
  {
    memcpy(v7, v2 + 2, sizeof(v7));

    memcpy(v2 + 124, v7, 0x1E8uLL);
    nullsub_7();
    memcpy(v2 + 63, v2 + 124, 0x1E8uLL);
    memcpy(v2[199], v2 + 63, 0x1E8uLL);

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_1002C6A5C(uint64_t a1)
{
  v21 = v1;
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 1664);
    v5 = *(v1 + 1648);
    v6 = *(v1 + 1640);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_100141FE4(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received an error while fetching the active config. %s", v7, 0xCu);
    sub_10000BB78(v8);

    v12 = *(v5 + 8);
    v12(v4, v6);
  }

  else
  {
    v13 = *(v1 + 1664);
    v14 = *(v1 + 1648);
    v15 = *(v1 + 1640);

    v12 = *(v14 + 8);
    v12(v13, v15);
  }

  v16 = *(v1 + 1656);
  v17 = *(v1 + 1640);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v12(v16, v17);
  sub_1002C7378(v1 + 504);
  memcpy(*(v1 + 1592), (v1 + 504), 0x1E8uLL);

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_1002C6CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[132] = a5;
  v5[131] = a4;
  v5[130] = a3;
  v5[129] = a2;
  v5[128] = a1;
  v7 = type metadata accessor for Logger();
  v5[133] = v7;
  v5[134] = *(v7 - 8);
  v5[135] = swift_task_alloc();
  v5[136] = swift_task_alloc();
  v5[137] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[138] = v8;
  *v8 = v5;
  v8[1] = sub_1002C6E08;

  return sub_1002C5CDC((v5 + 63), a5);
}

uint64_t sub_1002C6E08()
{

  return _swift_task_switch(sub_1002C6F04, 0, 0);
}

uint64_t sub_1002C6F04()
{
  memcpy(v0 + 2, v0 + 63, 0x1E8uLL);
  if (sub_1000A257C((v0 + 2)) == 1)
  {
    defaultLogger()();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    v3 = os_log_type_enabled(v1, v2);
    v4 = v0[135];
    v5 = v0[134];
    v6 = v0[133];
    if (v3)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "ActiveConfig doesn't exist. Failed to create text replacement helper";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v1, v2, v8, v7, 2u);
    }
  }

  else
  {
    v10 = v0[60];
    v9 = v0[61];
    v0[125] = v10;
    if (v10)
    {
      v0[124] = v9;
      if (v9)
      {
        sub_10000BBC4((v0 + 125), (v0 + 126), &qword_100836F98, &qword_1006DC5A0);
        sub_10000BBC4((v0 + 124), (v0 + 127), &qword_100836F98, &qword_1006DC5A0);
        sub_10000BE18((v0 + 63), &qword_100839998, &qword_1006DCAA0);
        type metadata accessor for IdentityProofingTextReplacementHelper();

        v11 = IdentityProofingTextReplacementHelper.__allocating_init(attributeMessages:messageReplacements:state:country:documentType:)();
        goto LABEL_13;
      }

      sub_10000BE18((v0 + 63), &qword_100839998, &qword_1006DCAA0);
      defaultLogger()();
      v1 = Logger.logObject.getter();
      v2 = static os_log_type_t.error.getter();
      v13 = os_log_type_enabled(v1, v2);
      v4 = v0[137];
      v5 = v0[134];
      v6 = v0[133];
      if (v13)
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "messageReplacements doesn't exist. Failed to create text replacement helper";
        goto LABEL_11;
      }
    }

    else
    {
      sub_10000BE18((v0 + 63), &qword_100839998, &qword_1006DCAA0);
      defaultLogger()();
      v1 = Logger.logObject.getter();
      v2 = static os_log_type_t.error.getter();
      v12 = os_log_type_enabled(v1, v2);
      v4 = v0[136];
      v5 = v0[134];
      v6 = v0[133];
      if (v12)
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "attributeMessages doesn't exist. Failed to create text replacement helper";
        goto LABEL_11;
      }
    }
  }

  (*(v5 + 8))(v4, v6);
  v11 = 0;
LABEL_13:

  v14 = v0[1];

  return v14(v11);
}

uint64_t sub_1002C7218()
{

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd45IdentityProofingTextReplacementHelperProvider_staticWorkflow, &qword_10083D4B0, &qword_1006DC940);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for IdentityProofingTextReplacementHelperProvider(uint64_t a1)
{
  result = qword_10083FB98;
  if (!qword_10083FB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002C72CC(uint64_t a1)
{
  sub_1001B4B18(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1002C7378(uint64_t a1)
{
  *(a1 + 480) = 0;
  result = 0.0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1002C73C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083D4B0, &qword_1006DC940);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C7430(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 256) = a3;
  *(v4 + 48) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = type metadata accessor for IdentityProofingStaticWorkflow(0);
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  sub_100007224(&unk_100834140, &qword_1006DC180);
  *(v4 + 136) = swift_task_alloc();
  v6 = type metadata accessor for NWPath();
  *(v4 + 144) = v6;
  *(v4 + 152) = *(v6 - 8);
  *(v4 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_1002C75E0, 0, 0);
}

uint64_t sub_1002C75E0(uint64_t a1)
{
  v2 = v1[18];
  v3 = v1[19];
  v4 = v1[17];
  NetworkMonitor.currentPath.getter();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1002C8738(v1[17]);

    v17 = v1[1];

    return v17(0);
  }

  else
  {
    v5 = v1[6];
    (*(v1[19] + 32))(v1[20], v1[17], v1[18]);
    v1[21] = sub_1006146AC();
    v6 = sub_10058CB08(v5);
    v1[22] = v7;
    v1[23] = v8;
    v9 = v6;
    v10 = v7;
    v12 = v11;
    v13 = v8;
    v14 = swift_task_alloc();
    v1[24] = v14;
    *v14 = v1;
    v14[1] = sub_1002C7948;
    v15 = v1[16];

    return sub_100612ED4(v15, v9, v10, v12, v13);
  }
}

uint64_t sub_1002C7948()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1002C7DE0;
  }

  else
  {
    v2 = sub_1002C7AB4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002C7AB4()
{
  v35 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 128);
  v3 = *(v0 + 48);
  v4 = v2 + *(*(v0 + 112) + 52);
  *(v0 + 208) = *v4;
  *(v0 + 257) = *(v4 + 8);
  sub_1001A1FAC(v2);
  *(v0 + 216) = sub_1006146AC();
  v5 = sub_10058CB08(v3);
  *(v0 + 224) = v6;
  *(v0 + 232) = v8;
  if (v1)
  {

    defaultLogger()();
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 152);
    v12 = *(v0 + 160);
    v14 = *(v0 + 144);
    v16 = *(v0 + 80);
    v15 = *(v0 + 88);
    v17 = *(v0 + 72);
    if (v11)
    {
      v33 = *(v0 + 72);
      v18 = swift_slowAlloc();
      v32 = v14;
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = 136315138;
      swift_getErrorValue();
      v20 = Error.localizedDescription.getter();
      v31 = v15;
      v22 = sub_100141FE4(v20, v21, &v34);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v9, v10, "Received an error while fetching the static workflow to get the upload threshold %s", v18, 0xCu);
      sub_10000BB78(v19);

      (*(v16 + 8))(v31, v33);
      (*(v13 + 8))(v12, v32);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
      (*(v13 + 8))(v12, v14);
    }

    v30 = *(v0 + 8);

    return v30(0);
  }

  else
  {
    v23 = v5;
    v24 = v6;
    v25 = v7;
    v26 = v8;
    v27 = swift_task_alloc();
    *(v0 + 240) = v27;
    *v27 = v0;
    v27[1] = sub_1002C8034;
    v28 = *(v0 + 120);

    return sub_100612ED4(v28, v23, v24, v25, v26);
  }
}

uint64_t sub_1002C7DE0(uint64_t a1)
{
  v24 = v1;
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[19];
    v21 = v1[18];
    v22 = v1[20];
    v5 = v1[10];
    v19 = v1[9];
    v20 = v1[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100141FE4(v8, v9, &v23);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received an error while fetching the static workflow to get the upload threshold %s", v6, 0xCu);
    sub_10000BB78(v7);

    (*(v5 + 8))(v20, v19);
    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[19];
    v11 = v1[20];
    v13 = v1[18];
    v15 = v1[10];
    v14 = v1[11];
    v16 = v1[9];

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
  }

  v17 = v1[1];

  return v17(0);
}

uint64_t sub_1002C8034()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1002C84C0;
  }

  else
  {
    v2 = sub_1002C81A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002C81A0()
{
  v1 = *(v0 + 120);
  v2 = v1 + *(*(v0 + 112) + 56);
  v3 = *v2;
  v4 = *(v2 + 8);
  sub_1001A1FAC(v1);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 56);
    if (*(v0 + 257))
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v0 + 208);
    }

    v10 = swift_slowAlloc();
    *v10 = 134218496;
    *(v10 + 4) = v8;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v9;
    *(v10 + 22) = 1024;
    *(v10 + 24) = v9 < v8;
    _os_log_impl(&_mh_execute_header, v6, v7, "Comparing the uploadSize %lld with the bill shock threshold %ld. isDataGreaterThanBillShockThreshold: %{BOOL}d", v10, 0x1Cu);
  }

  v11 = *(v0 + 104);
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);

  v14 = *(v13 + 8);
  v14(v11, v12);
  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 56);
    if (*(v0 + 257))
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v0 + 208);
    }

    v19 = swift_slowAlloc();
    *v19 = 134218496;
    *(v19 + 4) = v17;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v18;
    *(v19 + 22) = 1024;
    *(v19 + 24) = v5 < v17;
    _os_log_impl(&_mh_execute_header, v15, v16, "Comparing the uploadSize %lld with the low data mode threshold %ld. isDataGreaterThanLowDataModeThreshold: %{BOOL}d", v19, 0x1Cu);
  }

  v36 = v5;
  v20 = *(v0 + 257);
  v21 = *(v0 + 208);
  v22 = *(v0 + 96);
  v23 = *(v0 + 72);
  v24 = *(v0 + 56);

  if (v20)
  {
    v25 = 0;
  }

  else
  {
    v25 = v21;
  }

  v14(v22, v23);
  v26 = NWPath.isExpensive.getter();
  v28 = *(v0 + 152);
  v27 = *(v0 + 160);
  v29 = *(v0 + 144);
  if ((v26 & 1) != 0 && v25 < v24)
  {
    (*(v28 + 8))(*(v0 + 160), *(v0 + 144));
    v30 = 1;
  }

  else
  {
    v31 = *(v0 + 256);
    v32 = *(v0 + 56);
    v33 = NWPath.isConstrained.getter();
    (*(v28 + 8))(v27, v29);
    v30 = v33 & (v31 ^ 1) & (v36 < v32);
  }

  v34 = *(v0 + 8);

  return v34(v30);
}

uint64_t sub_1002C84C0(uint64_t a1)
{
  v24 = v1;
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[19];
    v21 = v1[18];
    v22 = v1[20];
    v5 = v1[10];
    v19 = v1[9];
    v20 = v1[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100141FE4(v8, v9, &v23);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received an error while fetching the static workflow to get the upload threshold %s", v6, 0xCu);
    sub_10000BB78(v7);

    (*(v5 + 8))(v20, v19);
    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[19];
    v11 = v1[20];
    v13 = v1[18];
    v15 = v1[10];
    v14 = v1[11];
    v16 = v1[9];

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
  }

  v17 = v1[1];

  return v17(0);
}

uint64_t sub_1002C8738(uint64_t a1)
{
  v2 = sub_100007224(&unk_100834140, &qword_1006DC180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002C87A0(uint64_t a1, uint64_t a2, objc_class *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100041F04;

  return sub_1002D0EC0(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1002C889C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100027B9C;

  return sub_1002D05A8(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1002C8998(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_1002D0358(a1, a2);
}

uint64_t sub_1002C8A54(uint64_t a1, uint64_t a2)
{
  v3[19] = a1;
  v3[20] = a2;
  v3[21] = *v2;
  return _swift_task_switch(sub_1002C8A7C, 0, 0);
}

uint64_t sub_1002C8A7C()
{
  v1 = v0[21];
  v2 = String._bridgeToObjectiveC()();
  v0[22] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1002C8BB4;
  v3 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_10083FFA0, &qword_1006DCCD0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1002C8CC0;
  v0[13] = &unk_10080C678;
  v0[14] = v3;
  [v1 retrievePendingProvisioningsWithType:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002C8BB4()
{
  v4 = *v0;
  v1 = *(*v0 + 144);

  v2 = *(v4 + 8);

  return v2(v1);
}

uint64_t sub_1002C8CC0(uint64_t a1, uint64_t a2)
{
  v3 = *sub_10000BA08((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_10001F8D4(0, &qword_10083FFA8, PKPendingProvisioning_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return _swift_continuation_resume(v3);
}

uint64_t sub_1002C8D74(uint64_t a1, uint64_t a2)
{
  v3[201] = v2;
  v3[200] = a2;
  v3[199] = a1;
  v4 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v3[202] = v4;
  v3[203] = *(v4 - 8);
  v3[204] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[205] = v5;
  v3[206] = *(v5 - 8);
  v3[207] = swift_task_alloc();
  v3[208] = swift_task_alloc();
  sub_100007224(&qword_10083D4B0, &qword_1006DC940);
  v3[209] = swift_task_alloc();
  v3[210] = swift_task_alloc();
  v3[211] = swift_task_alloc();

  return _swift_task_switch(sub_1002C8EF4, 0, 0);
}

uint64_t sub_1002C8EF4()
{
  v1 = v0[211];
  v2 = v0[203];
  v3 = v0[202];
  v4 = v0[201];
  v5 = OBJC_IVAR____TtC8coreidvd40IdentityProofingUserNotificationProvider_staticWorkflow;
  v0[212] = OBJC_IVAR____TtC8coreidvd40IdentityProofingUserNotificationProvider_staticWorkflow;
  swift_beginAccess();
  sub_10000BBC4(v4 + v5, v1, &qword_10083D4B0, &qword_1006DC940);
  v6 = *(v2 + 48);
  v0[213] = v6;
  v0[214] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v3) = v6(v1, 1, v3);
  sub_10000BE18(v1, &qword_10083D4B0, &qword_1006DC940);
  if (v3 == 1)
  {
    v7 = v0[200];
    v0[215] = sub_1006146AC();
    v8 = sub_10058CB08(v7);
    v0[216] = v9;
    v0[217] = v10;
    v11 = v8;
    v12 = v9;
    v14 = v13;
    v15 = v10;
    v16 = swift_task_alloc();
    v0[218] = v16;
    *v16 = v0;
    v16[1] = sub_1002C9330;
    v17 = v0[210];

    return sub_100612ED4(v17, v11, v12, v14, v15);
  }

  else
  {
    v19 = v0[213];
    v20 = v0[212];
    v21 = v0[209];
    v22 = v0[202];
    v23 = v0[201];
    v0[220] = *(v23 + 96);
    sub_10000BBC4(v23 + v20, v21, &qword_10083D4B0, &qword_1006DC940);
    v24 = v19(v21, 1, v22);
    v25 = v0[209];
    if (v24)
    {

      sub_10000BE18(v25, &qword_10083D4B0, &qword_1006DC940);
      v26 = 0;
    }

    else
    {
      v27 = v0[204];
      sub_1001A2050(v0[209], v27);

      sub_10000BE18(v25, &qword_10083D4B0, &qword_1006DC940);
      v26 = *(v27 + 64);

      sub_1001A1FAC(v27);
    }

    v0[221] = v26;
    v28 = swift_task_alloc();
    v0[222] = v28;
    *v28 = v0;
    v28[1] = sub_1002C9984;
    v29 = v0[200];

    return sub_1002A8D74((v0 + 2), v26, v29);
  }
}

uint64_t sub_1002C9330()
{
  *(*v1 + 1752) = v0;

  if (v0)
  {
    v2 = sub_1002C9690;
  }

  else
  {
    v2 = sub_1002C949C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002C949C()
{
  v1 = v0[212];
  v2 = v0[210];
  v3 = v0[201];
  (*(v0[203] + 56))(v2, 0, 1, v0[202]);
  swift_beginAccess();
  sub_1000B2764(v2, v3 + v1, &qword_10083D4B0, &qword_1006DC940);
  swift_endAccess();
  v4 = v0[213];
  v5 = v0[212];
  v6 = v0[209];
  v7 = v0[202];
  v8 = v0[201];
  v0[220] = *(v8 + 96);
  sub_10000BBC4(v8 + v5, v6, &qword_10083D4B0, &qword_1006DC940);
  v9 = v4(v6, 1, v7);
  v10 = v0[209];
  if (v9)
  {

    sub_10000BE18(v10, &qword_10083D4B0, &qword_1006DC940);
    v11 = 0;
  }

  else
  {
    v12 = v0[204];
    sub_1001A2050(v0[209], v12);

    sub_10000BE18(v10, &qword_10083D4B0, &qword_1006DC940);
    v11 = *(v12 + 64);

    sub_1001A1FAC(v12);
  }

  v0[221] = v11;
  v13 = swift_task_alloc();
  v0[222] = v13;
  *v13 = v0;
  v13[1] = sub_1002C9984;
  v14 = v0[200];

  return sub_1002A8D74((v0 + 2), v11, v14);
}

uint64_t sub_1002C9690(uint64_t a1)
{
  v28 = v1;
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v26 = v1[208];
    v4 = v1[206];
    v5 = v1[205];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100141FE4(v8, v9, &v27);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Ignore the static workflow fetch error %s", v6, 0xCu);
    sub_10000BB78(v7);

    (*(v4 + 8))(v26, v5);
  }

  else
  {
    v11 = v1[208];
    v12 = v1[206];
    v13 = v1[205];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[213];
  v15 = v1[212];
  v16 = v1[209];
  v17 = v1[202];
  v18 = v1[201];
  v1[220] = *(v18 + 96);
  sub_10000BBC4(v18 + v15, v16, &qword_10083D4B0, &qword_1006DC940);
  v19 = v14(v16, 1, v17);
  v20 = v1[209];
  if (v19)
  {

    sub_10000BE18(v20, &qword_10083D4B0, &qword_1006DC940);
    v21 = 0;
  }

  else
  {
    v22 = v1[204];
    sub_1001A2050(v1[209], v22);

    sub_10000BE18(v20, &qword_10083D4B0, &qword_1006DC940);
    v21 = *(v22 + 64);

    sub_1001A1FAC(v22);
  }

  v1[221] = v21;
  v23 = swift_task_alloc();
  v1[222] = v23;
  *v23 = v1;
  v23[1] = sub_1002C9984;
  v24 = v1[200];

  return sub_1002A8D74((v1 + 2), v21, v24);
}

uint64_t sub_1002C9984()
{
  v7 = v1;
  v7 = *v1;
  v2 = v7;
  v3 = *v1;
  v7 = v3;
  v2[223] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002C9BA4, 0, 0);
  }

  else
  {
    memcpy(__dst, v2 + 2, sizeof(__dst));

    memcpy(v2 + 124, __dst, 0x1E8uLL);
    nullsub_7();
    memcpy(v2 + 63, v2 + 124, 0x1E8uLL);
    memcpy(v2[199], v2 + 63, 0x1E8uLL);

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1002C9BA4(uint64_t a1)
{
  v18 = v1;
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v16 = *(v1 + 1656);
    v4 = *(v1 + 1648);
    v5 = *(v1 + 1640);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100141FE4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to retrieve the active config, %s", v6, 0xCu);
    sub_10000BB78(v7);

    (*(v4 + 8))(v16, v5);
  }

  else
  {
    v11 = *(v1 + 1656);
    v12 = *(v1 + 1648);
    v13 = *(v1 + 1640);

    (*(v12 + 8))(v11, v13);
  }

  sub_1002C7378(v1 + 504);
  memcpy(*(v1 + 1592), (v1 + 504), 0x1E8uLL);

  v14 = *(v1 + 8);

  return v14();
}

uint64_t sub_1002C9DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[133] = v5;
  v6[132] = a5;
  v6[131] = a4;
  v6[130] = a3;
  v6[129] = a2;
  v6[128] = a1;
  v8 = type metadata accessor for Logger();
  v6[134] = v8;
  v6[135] = *(v8 - 8);
  v6[136] = swift_task_alloc();
  v6[137] = swift_task_alloc();
  v6[138] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[139] = v9;
  *v9 = v6;
  v9[1] = sub_1002C9F10;

  return sub_1002C8D74((v6 + 63), a5);
}

uint64_t sub_1002C9F10()
{

  return _swift_task_switch(sub_1002CA00C, 0, 0);
}

uint64_t sub_1002CA00C()
{
  memcpy(v0 + 2, v0 + 63, 0x1E8uLL);
  if (sub_1000A257C((v0 + 2)) == 1)
  {
    defaultLogger()();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    v3 = os_log_type_enabled(v1, v2);
    v4 = v0[136];
    v5 = v0[135];
    v6 = v0[134];
    if (v3)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "ActiveConfig doesn't exist. Will not show a notification to the user";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v1, v2, v8, v7, 2u);
    }
  }

  else
  {
    v9 = v0[60];
    v10 = v0[61];
    v0[125] = v9;
    if (v9)
    {
      v0[124] = v10;
      if (v10)
      {
        sub_10000BBC4((v0 + 125), (v0 + 126), &qword_100836F98, &qword_1006DC5A0);
        sub_10000BBC4((v0 + 124), (v0 + 127), &qword_100836F98, &qword_1006DC5A0);
        sub_10000BE18((v0 + 63), &qword_100839998, &qword_1006DCAA0);

        v11 = dispatch thunk of IdentityProofingTextReplacementProvider.makeTextReplacementHelper(attributeMessages:messageReplacements:state:country:documentType:)();

        sub_10000BE18((v0 + 124), &qword_100836F98, &qword_1006DC5A0);
        sub_10000BE18((v0 + 125), &qword_100836F98, &qword_1006DC5A0);
        goto LABEL_13;
      }

      sub_10000BE18((v0 + 63), &qword_100839998, &qword_1006DCAA0);
      defaultLogger()();
      v1 = Logger.logObject.getter();
      v2 = static os_log_type_t.error.getter();
      v13 = os_log_type_enabled(v1, v2);
      v4 = v0[138];
      v5 = v0[135];
      v6 = v0[134];
      if (v13)
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "messageReplacements doesn't exist. Will not show a notification to the user";
        goto LABEL_11;
      }
    }

    else
    {
      sub_10000BE18((v0 + 63), &qword_100839998, &qword_1006DCAA0);
      defaultLogger()();
      v1 = Logger.logObject.getter();
      v2 = static os_log_type_t.error.getter();
      v12 = os_log_type_enabled(v1, v2);
      v4 = v0[137];
      v5 = v0[135];
      v6 = v0[134];
      if (v12)
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "attributeMessages doesn't exist. Will not show a notification to the user";
        goto LABEL_11;
      }
    }
  }

  (*(v5 + 8))(v4, v6);
  v11 = 0;
LABEL_13:

  v14 = v0[1];

  return v14(v11);
}

uint64_t sub_1002CA338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 1192) = v7;
  *(v8 + 1352) = a7;
  *(v8 + 1184) = a6;
  *(v8 + 1176) = a5;
  *(v8 + 1168) = a4;
  *(v8 + 1160) = a3;
  *(v8 + 1152) = a2;
  *(v8 + 1144) = a1;
  v9 = type metadata accessor for DIPError.Code();
  *(v8 + 1200) = v9;
  *(v8 + 1208) = *(v9 - 8);
  *(v8 + 1216) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 1224) = v10;
  *(v8 + 1232) = *(v10 - 8);
  *(v8 + 1240) = swift_task_alloc();
  *(v8 + 1248) = swift_task_alloc();
  *(v8 + 1256) = swift_task_alloc();
  *(v8 + 1264) = swift_task_alloc();
  *(v8 + 1272) = swift_task_alloc();
  *(v8 + 1280) = swift_task_alloc();
  *(v8 + 1288) = swift_task_alloc();

  return _swift_task_switch(sub_1002CA4B8, 0, 0);
}

uint64_t sub_1002CA4B8()
{
  v15 = v0;
  v1 = v0[146];
  if (v1)
  {
    v2 = v0[144];
    if (v2)
    {
      if (v0[147] == 3)
      {
        v3 = v0[145];
        strcpy(v14, "issuer.name.");
        BYTE5(v14[1]) = 0;
        HIWORD(v14[1]) = -5120;
        v4 = v1;
      }

      else
      {
        v7 = v0[145];
        v8 = v0[143];
        _StringGuts.grow(_:)(17);

        strcpy(v14, "issuer.name.");
        BYTE5(v14[1]) = 0;
        HIWORD(v14[1]) = -5120;
        v9._countAndFlagsBits = v7;
        v9._object = v1;
        String.append(_:)(v9);
        v10._countAndFlagsBits = 46;
        v10._object = 0xE100000000000000;
        String.append(_:)(v10);
        v3 = v8;
        v4 = v2;
      }

      String.append(_:)(*&v3);
      v11 = v14[0];
      v0[163] = v14[1];
      v0[162] = v11;
      v12 = swift_task_alloc();
      v0[164] = v12;
      *v12 = v0;
      v12[1] = sub_1002CA840;
      v13 = v0[147];

      return sub_1002C8D74((v0 + 63), v13);
    }

    (*(v0[151] + 104))(v0[152], enum case for DIPError.Code.idStateUnavailable(_:), v0[150]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
  }

  else
  {
    (*(v0[151] + 104))(v0[152], enum case for DIPError.Code.idCountryUnavailable(_:), v0[150]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002CA840()
{

  return _swift_task_switch(sub_1002CA93C, 0, 0);
}

uint64_t sub_1002CA93C()
{
  v71 = v0;
  memcpy((v0 + 16), (v0 + 504), 0x1E8uLL);
  if (sub_1000A257C(v0 + 16) == 1)
  {
    goto LABEL_7;
  }

  *(v0 + 1120) = *(v0 + 488);
  sub_10000BBC4(v0 + 1120, v0 + 1128, &qword_100836F98, &qword_1006DC5A0);
  sub_10000BE18(v0 + 504, &qword_100839998, &qword_1006DCAA0);
  v1 = *(v0 + 1120);
  if (!v1)
  {
    goto LABEL_7;
  }

  if (!*(v1 + 16))
  {
    sub_10000BE18(v0 + 1120, &qword_100836F98, &qword_1006DC5A0);
LABEL_7:

LABEL_8:
    (*(*(v0 + 1208) + 104))(*(v0 + 1216), enum case for DIPError.Code.invalidAttribute(_:), *(v0 + 1200));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    goto LABEL_9;
  }

  v2 = sub_10003ADCC(*(v0 + 1296), *(v0 + 1304));
  v4 = v3;

  if ((v4 & 1) == 0)
  {
    sub_10000BE18(v0 + 1120, &qword_100836F98, &qword_1006DC5A0);
    goto LABEL_8;
  }

  v5 = *(v0 + 1352);
  v6 = (*(v1 + 56) + 16 * v2);
  v8 = *v6;
  v7 = v6[1];
  *(v0 + 1320) = v7;

  sub_10000BE18(v0 + 1120, &qword_100836F98, &qword_1006DC5A0);
  if (v5 & 1) != 0 || ((v14 = *(v0 + 1176), v14 > 3) ? (v15 = 0) : (v15 = qword_1006DCD00[v14]), v16 = sub_1002D089C(*(v0 + 1184)), (v17))
  {
    v9 = *(v0 + 1216);
    v10 = *(v0 + 1208);
    v11 = *(v0 + 1200);

    (*(v10 + 104))(v9, enum case for DIPError.Code.invalidProofingActionStatus(_:), v11);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
LABEL_9:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }

  v68 = v16;
  v18 = *(v0 + 1192);
  swift_beginAccess();
  sub_10000BBC4(v18 + 56, v0 + 1032, &unk_100845E80, &qword_1006DAD90);
  if (!*(v0 + 1056))
  {
    v37 = *(v0 + 1216);
    v38 = *(v0 + 1208);
    v39 = *(v0 + 1200);

    sub_10000BE18(v0 + 1032, &unk_100845E80, &qword_1006DAD90);
    (*(v38 + 104))(v37, enum case for DIPError.Code.watchConnectionFailure(_:), v39);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    goto LABEL_9;
  }

  v66 = v15;
  sub_10001F358((v0 + 1032), v0 + 992);
  defaultLogger()();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "----- BEGIN SENDING THE DATA TO WATCH FOR NOTIFICATION ------", v21, 2u);
  }

  v22 = *(v0 + 1288);
  v23 = *(v0 + 1232);
  v24 = *(v0 + 1224);

  v25 = *(v23 + 8);
  *(v0 + 1328) = v25;
  v25(v22, v24);
  defaultLogger()();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 1280);
  v30 = *(v0 + 1224);
  v69 = v25;
  v67 = v8;
  if (v28)
  {
    v64 = *(v0 + 1280);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v70[0] = v32;
    *v31 = 136315138;
    v33 = IdentityProofingActionStatus.debugDescription.getter();
    v35 = sub_100141FE4(v33, v34, v70);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v26, v27, "actionStatus -> %s", v31, 0xCu);
    sub_10000BB78(v32);
    v25 = v69;

    v36 = v64;
  }

  else
  {

    v36 = v29;
  }

  v25(v36, v30);
  defaultLogger()();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v0 + 1272);
  v44 = *(v0 + 1224);
  if (v42)
  {
    v65 = *(v0 + 1272);
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v70[0] = v46;
    *v45 = 136315138;
    v47 = IdentityDocumentType.description.getter();
    v49 = sub_100141FE4(v47, v48, v70);

    *(v45 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v40, v41, "documentType -> %s", v45, 0xCu);
    sub_10000BB78(v46);
    v25 = v69;

    v50 = v65;
  }

  else
  {

    v50 = v43;
  }

  v25(v50, v44);
  defaultLogger()();

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();

  v53 = os_log_type_enabled(v51, v52);
  v54 = *(v0 + 1264);
  v55 = *(v0 + 1224);
  if (v53)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v70[0] = v57;
    *v56 = 136315138;
    *(v56 + 4) = sub_100141FE4(v67, v7, v70);
    _os_log_impl(&_mh_execute_header, v51, v52, "issuerName -> %s", v56, 0xCu);
    sub_10000BB78(v57);

    v69(v54, v55);
  }

  else
  {

    v25(v54, v55);
  }

  defaultLogger()();
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "----- END SENDING THE DATA TO WATCH FOR NOTIFICATION------", v60, 2u);
  }

  v61 = *(v0 + 1256);
  v62 = *(v0 + 1224);

  v69(v61, v62);
  sub_10000BA08((v0 + 992), *(v0 + 1016));
  v63 = swift_task_alloc();
  *(v0 + 1336) = v63;
  *v63 = v0;
  v63[1] = sub_1002CB3E0;

  return sub_1004C532C(v68, v66, v67, v7);
}

uint64_t sub_1002CB3E0()
{
  *(*v1 + 1344) = v0;

  if (v0)
  {
    v2 = sub_1002CB69C;
  }

  else
  {
    v2 = sub_1002CB514;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002CB514(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Did show notification to the user on the watch", v4, 2u);
  }

  v5 = v1[166];
  v6 = v1[156];
  v7 = v1[153];

  v5(v6, v7);
  sub_10000BB78(v1 + 124);

  v8 = v1[1];

  return v8();
}

uint64_t sub_1002CB69C(uint64_t a1)
{
  v18 = v1;
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v16 = v1[166];
    v4 = v1[155];
    v5 = v1[153];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100141FE4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error occurred while showing notification to the user on the watch %s", v6, 0xCu);
    sub_10000BB78(v7);

    v16(v4, v5);
  }

  else
  {
    v11 = v1[166];
    v12 = v1[155];
    v13 = v1[153];

    v11(v12, v13);
  }

  swift_willThrow();
  sub_10000BB78(v1 + 124);

  v14 = v1[1];

  return v14();
}

uint64_t sub_1002CB8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 272) = v15;
  *(v9 + 280) = v8;
  *(v9 + 256) = v14;
  *(v9 + 240) = a7;
  *(v9 + 248) = a8;
  *(v9 + 224) = a5;
  *(v9 + 232) = a6;
  *(v9 + 208) = a3;
  *(v9 + 216) = a4;
  *(v9 + 192) = a1;
  *(v9 + 200) = a2;
  v10 = type metadata accessor for DIPError.Code();
  *(v9 + 288) = v10;
  *(v9 + 296) = *(v10 - 8);
  *(v9 + 304) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v9 + 312) = v11;
  *(v9 + 320) = *(v11 - 8);
  *(v9 + 328) = swift_task_alloc();
  *(v9 + 336) = swift_task_alloc();
  *(v9 + 344) = swift_task_alloc();
  *(v9 + 352) = swift_task_alloc();
  *(v9 + 360) = swift_task_alloc();
  *(v9 + 368) = swift_task_alloc();
  *(v9 + 376) = swift_task_alloc();
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();

  return _swift_task_switch(sub_1002CBA80, 0, 0);
}

uint64_t sub_1002CBA80()
{
  v1 = v0[31];
  if (v1)
  {
    v2 = v0[29];
    if (v2)
    {
      v3 = swift_task_alloc();
      v0[50] = v3;
      *v3 = v0;
      v3[1] = sub_1002CBD7C;
      v4 = v0[32];
      v5 = v0[30];
      v6 = v0[28];

      return sub_1002C9DE0(v6, v2, v5, v1, v4);
    }

    (*(v0[37] + 104))(v0[38], enum case for DIPError.Code.idStateUnavailable(_:), v0[36]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
  }

  else
  {
    (*(v0[37] + 104))(v0[38], enum case for DIPError.Code.idCountryUnavailable(_:), v0[36]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002CBD7C(uint64_t a1)
{
  *(*v1 + 408) = a1;

  return _swift_task_switch(sub_1002CBE7C, 0, 0);
}

uint64_t sub_1002CBE7C(uint64_t a1)
{
  v81 = v1;
  if (v1[51])
  {
    if (v1[25] && (v2 = dispatch thunk of IdentityProofingTextReplacementHelper.replaceText(_:)(), (v1[52] = v3) != 0))
    {
      v4 = v3;
      if (v1[27])
      {
        v5 = v2;
        v6 = dispatch thunk of IdentityProofingTextReplacementHelper.replaceText(_:)();
        v1[53] = v7;
        v77 = v7;
        if (v7)
        {
          v74 = v6;
          v75 = v5;
          v76 = v4;
          defaultLogger()();
          v8 = Logger.logObject.getter();
          v9 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v8, v9))
          {
            v10 = swift_slowAlloc();
            *v10 = 0;
            _os_log_impl(&_mh_execute_header, v8, v9, "----- BEGIN LOGGING USER NOTIFICATION DATA------", v10, 2u);
          }

          v11 = v1[49];
          v13 = v1[39];
          v12 = v1[40];

          v14 = *(v12 + 8);
          v1[54] = v14;
          v14(v11, v13);
          defaultLogger()();

          v15 = Logger.logObject.getter();
          v16 = static os_log_type_t.debug.getter();

          v17 = os_log_type_enabled(v15, v16);
          v18 = v1[48];
          v19 = v1[39];
          v78 = v14;
          if (v17)
          {
            v73 = v1[48];
            v20 = v1[30];
            v21 = v1[31];
            v23 = v1[28];
            v22 = v1[29];
            v24 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            *v24 = 136315650;
            *(v24 + 4) = sub_100141FE4(v23, v22, &v80);
            *(v24 + 12) = 2080;
            *(v24 + 14) = sub_100141FE4(v20, v21, &v80);
            *(v24 + 22) = 2080;
            v25 = IdentityDocumentType.description.getter();
            v27 = sub_100141FE4(v25, v26, &v80);

            *(v24 + 24) = v27;
            _os_log_impl(&_mh_execute_header, v15, v16, "State -> %s country -> %s documentType -> %s", v24, 0x20u);
            swift_arrayDestroy();

            v28 = v73;
          }

          else
          {

            v28 = v18;
          }

          v14(v28, v19);
          defaultLogger()();

          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.debug.getter();

          v43 = os_log_type_enabled(v41, v42);
          v44 = v1[47];
          v45 = v1[39];
          if (v43)
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v80 = v47;
            *v46 = 136315138;
            *(v46 + 4) = sub_100141FE4(v75, v76, &v80);
            _os_log_impl(&_mh_execute_header, v41, v42, "title -> %s", v46, 0xCu);
            sub_10000BB78(v47);
          }

          v14(v44, v45);
          defaultLogger()();

          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.debug.getter();

          v50 = os_log_type_enabled(v48, v49);
          v51 = v1[46];
          v52 = v1[39];
          if (v50)
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v80 = v54;
            *v53 = 136315138;
            *(v53 + 4) = sub_100141FE4(v74, v77, &v80);
            _os_log_impl(&_mh_execute_header, v48, v49, "message -> %s", v53, 0xCu);
            sub_10000BB78(v54);
          }

          v14(v51, v52);
          defaultLogger()();
          v55 = Logger.logObject.getter();
          v56 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            *v57 = 0;
            _os_log_impl(&_mh_execute_header, v55, v56, "----- END LOGGING USER NOTIFICATION DATA------", v57, 2u);
          }

          v58 = v1[45];
          v59 = v1[39];
          v61 = v1[30];
          v60 = v1[31];
          v62 = v1[28];
          v63 = v1[29];

          v78(v58, v59);
          sub_100007224(&qword_100838818, &unk_1006D0F90);
          inited = swift_initStackObject();
          *(inited + 32) = 0xD000000000000012;
          *(inited + 16) = xmmword_1006BF740;
          *(inited + 40) = 0x800000010070AFF0;
          *(inited + 48) = v62;
          *(inited + 56) = v63;
          *(inited + 64) = 0x7972746E756F63;
          *(inited + 72) = 0xE700000000000000;
          *(inited + 80) = v61;
          *(inited + 88) = v60;

          v1[55] = sub_10003D21C(inited);
          swift_setDeallocating();
          sub_100007224(&qword_100838820, &unk_1006DB6B0);
          swift_arrayDestroy();
          defaultLogger()();
          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 0;
            _os_log_impl(&_mh_execute_header, v65, v66, "Will call update notification on PKPaymentService for the phone", v67, 2u);
          }

          v68 = v1[44];
          v69 = v1[39];
          v70 = v1[35];

          v78(v68, v69);
          sub_100020260(v70 + 16, (v1 + 14));
          v71 = v1[18];
          sub_10000BA08(v1 + 14, v1[17]);
          v79 = *(v71 + 8) + **(v71 + 8);
          v72 = swift_task_alloc();
          v1[56] = v72;
          *v72 = v1;
          v72[1] = sub_1002CC980;
          v83 = v71;

          __asm { BRAA            X8, X16 }
        }
      }

      v37 = v1[37];
      v38 = v1[38];
      v39 = v1[36];

      (*(v37 + 104))(v38, enum case for DIPError.Code.invalidAttribute(_:), v39);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
    }

    else
    {
      (*(v1[37] + 104))(v1[38], enum case for DIPError.Code.invalidAttribute(_:), v1[36]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
    }

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v36 = v1[1];
  }

  else
  {
    defaultLogger()();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v1[42];
    v33 = v1[39];
    v34 = v1[40];
    if (v31)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unable to create textReplacementHelper. Will not show a notification to the user", v35, 2u);
    }

    (*(v34 + 8))(v32, v33);

    v36 = v1[1];
  }

  return v36();
}

uint64_t sub_1002CC980()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_1002CCCE4;
  }

  else
  {

    v2 = sub_1002CCAB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002CCAB0()
{
  sub_10000BB78(v0 + 14);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Did show notification to the user", v3, 2u);
  }

  v4 = v0[54];
  v5 = v0[43];
  v6 = v0[39];

  v4(v5, v6);
  v7 = type metadata accessor for IdentityManagementSessionDelegate();
  v8 = [objc_opt_self() defaultCenter];
  v9 = String._bridgeToObjectiveC()();
  v0[23] = v7;
  sub_100007224(&qword_10083D698, &unk_1006DB6F0);
  [v8 postNotificationName:v9 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002CCCE4()
{
  v17 = v0;

  sub_10000BB78(v0 + 14);
  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v15 = v0[54];
    v3 = v0[41];
    v4 = v0[39];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100141FE4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occurred while showing notification to the user %s", v5, 0xCu);
    sub_10000BB78(v6);

    v15(v3, v4);
  }

  else
  {
    v10 = v0[54];
    v11 = v0[41];
    v12 = v0[39];

    v10(v11, v12);
  }

  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002CCF5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Attempting to clear the user notifications after provisioning completion", v15, 2u);
  }

  (*(v10 + 8))(v12, v9);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v3;
  v17[5] = a1;
  v17[6] = a2;

  sub_1003E653C(0, 0, v8, &unk_1006DCCC8, v17);
}

uint64_t sub_1002CD198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = type metadata accessor for Logger();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_1002CD268, 0, 0);
}

void sub_1002CD268()
{
  sub_100020260(v0[11] + 16, (v0 + 2));
  v1 = v0[6];
  sub_10000BA08(v0 + 2, v0[5]);
  v4 = *(v1 + 8) + **(v1 + 8);
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_1002CD3C0;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1002CD3C0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1002CD5EC;
  }

  else
  {
    v2 = sub_1002CD4D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002CD4D4()
{
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Did clear the notification after provisioning completion", v7, 2u);
  }

  (*(v6 + 8))(v4, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002CD5EC()
{
  v17 = v0;
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[15];
    v15 = v0[16];
    v4 = v0[14];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100141FE4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occured while clearing notification to the user %s", v5, 0xCu);
    sub_10000BB78(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = v0[15];
    v10 = v0[16];
    v12 = v0[14];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002CD7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 288) = a6;
  *(v8 + 296) = v7;
  *(v8 + 624) = a7;
  *(v8 + 272) = a4;
  *(v8 + 280) = a5;
  *(v8 + 256) = a2;
  *(v8 + 264) = a3;
  *(v8 + 248) = a1;
  v9 = type metadata accessor for Logger();
  *(v8 + 304) = v9;
  *(v8 + 312) = *(v9 - 8);
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  v10 = type metadata accessor for ProofingSession();
  *(v8 + 376) = v10;
  *(v8 + 384) = *(v10 - 8);
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = sub_100007224(&qword_10083FF90, &qword_1006DCCA0);
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();

  return _swift_task_switch(sub_1002CD990, 0, 0);
}

uint64_t sub_1002CD990()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_1000318FC(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];
  v0[53] = v0[9];

  sub_100031918((v0 + 2));
  v5 = swift_allocObject();
  v0[54] = v5;
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v6 = swift_allocObject();
  v0[55] = v6;
  *(v6 + 16) = sub_1002D14E0;
  *(v6 + 24) = v5;

  v7 = swift_task_alloc();
  v0[56] = v7;
  *v7 = v0;
  v7[1] = sub_1002CDB6C;
  v8 = v0[52];
  v9 = v0[50];

  return AsyncCoreDataContainer.performRead<A>(_:)(v8, sub_1000280B4, v6, v9);
}

uint64_t sub_1002CDB6C()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_1002CE268;
  }

  else
  {

    v2 = sub_1002CDC9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002CDC9C()
{
  v1 = *(v0 + 408);
  sub_10000BBC4(*(v0 + 416), v1, &qword_10083FF90, &qword_1006DCCA0);
  v2 = sub_100007224(&qword_10083FF98, &qword_1006DCCA8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 408);
    sub_10000BE18(*(v0 + 416), &qword_10083FF90, &qword_1006DCCA0);
LABEL_18:
    sub_10000BE18(v3, &qword_10083FF90, &qword_1006DCCA0);

    v31 = *(v0 + 8);

    return v31();
  }

  v4 = *(*(v0 + 408) + *(v2 + 48));
  (*(*(v0 + 384) + 32))(*(v0 + 392));
  v5 = ProofingSession.state.getter();
  *(v0 + 464) = v6;
  if (!v6)
  {
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    v28 = os_log_type_enabled(v17, v18);
    v3 = *(v0 + 416);
    v21 = *(v0 + 384);
    v20 = *(v0 + 392);
    v22 = *(v0 + 376);
    v23 = *(v0 + 344);
    v25 = *(v0 + 304);
    v24 = *(v0 + 312);
    if (v28)
    {
      v48 = *(v0 + 392);
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "proofing session state doesn't exist. Will not show a notification to the user";
      goto LABEL_16;
    }

LABEL_17:

    (*(v24 + 8))(v23, v25);
    (*(v21 + 8))(v20, v22);
    goto LABEL_18;
  }

  v7 = v6;
  v8 = v5;
  v9 = ProofingSession.country.getter();
  *(v0 + 472) = v10;
  if (!v10)
  {

    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    v29 = os_log_type_enabled(v17, v18);
    v3 = *(v0 + 416);
    v21 = *(v0 + 384);
    v20 = *(v0 + 392);
    v22 = *(v0 + 376);
    v23 = *(v0 + 352);
    v25 = *(v0 + 304);
    v24 = *(v0 + 312);
    if (v29)
    {
      v48 = *(v0 + 392);
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "proofing session country doesn't exist. Will not show a notification to the user";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v11 = v9;
  v12 = v10;
  ProofingSession.documentType.getter();
  if (!v13)
  {

    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    v30 = os_log_type_enabled(v17, v18);
    v3 = *(v0 + 416);
    v21 = *(v0 + 384);
    v20 = *(v0 + 392);
    v22 = *(v0 + 376);
    v23 = *(v0 + 360);
    v25 = *(v0 + 304);
    v24 = *(v0 + 312);
    if (v30)
    {
      v48 = *(v0 + 392);
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "unable to derive document";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v14 = IdentityDocumentType.init(documentTypeString:)();
  if (v4)
  {

    ProofingSession.proofingActionStatus.getter();
    v15 = IdentityProofingActionStatus.init(rawValue:)();
    if (v16)
    {
      defaultLogger()();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      v19 = os_log_type_enabled(v17, v18);
      v3 = *(v0 + 416);
      v21 = *(v0 + 384);
      v20 = *(v0 + 392);
      v23 = *(v0 + 368);
      v22 = *(v0 + 376);
      v25 = *(v0 + 304);
      v24 = *(v0 + 312);
      if (v19)
      {
        v48 = *(v0 + 392);
        v26 = swift_slowAlloc();
        *v26 = 0;
        v27 = "invalid action status. Will not show the notification on the watch";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v17, v18, v27, v26, 2u);

        (*(v24 + 8))(v23, v25);
        (*(v21 + 8))(v48, v22);
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (*(v0 + 624))
    {
      v39 = 11;
    }

    else
    {
      v39 = v15;
    }

    v40 = ProofingSession.state.getter();
    v42 = v41;
    *(v0 + 480) = v41;
    v43 = ProofingSession.country.getter();
    v45 = v44;
    *(v0 + 488) = v44;
    v46 = swift_task_alloc();
    *(v0 + 496) = v46;
    *v46 = v0;
    v46[1] = sub_1002CE3A8;

    return sub_1002CA338(v40, v42, v43, v45, v14, v39, 0);
  }

  else
  {
    ProofingSession.productIdentifier.getter();
    *(v0 + 536) = v33;
    v34 = swift_task_alloc();
    *(v0 + 544) = v34;
    *v34 = v0;
    v34[1] = sub_1002CEADC;
    v35 = *(v0 + 264);
    v36 = *(v0 + 272);
    v38 = *(v0 + 248);
    v37 = *(v0 + 256);

    return sub_1002CB8E4(v38, v37, v35, v36, v8, v7, v11, v12);
  }
}

uint64_t sub_1002CE268()
{

  v1 = v0[42];
  v2 = v0[38];
  v3 = v0[39];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002CE3A8()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_1002CF3F8;
  }

  else
  {

    v2 = sub_1002CE4CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002CE4CC()
{
  if (ProofingSession.shouldShowNotificationOnWatch.getter())
  {
    v1 = ProofingSession.objectID.getter();
    v0[64] = v1;
    v2 = swift_task_alloc();
    v0[65] = v2;
    *v2 = v0;
    v2[1] = sub_1002CE688;

    return sub_1002D0B00(v1, sub_1002CFC90, 0);
  }

  else
  {
    v4 = v0[52];
    (*(v0[48] + 8))(v0[49], v0[47]);
    sub_10000BE18(v4, &qword_10083FF90, &qword_1006DCCA0);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1002CE688()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v3 = sub_1002CE8B4;
  }

  else
  {

    v3 = sub_1002CE7A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002CE7A4()
{
  v1 = v0[52];
  (*(v0[48] + 8))(v0[49], v0[47]);
  sub_10000BE18(v1, &qword_10083FF90, &qword_1006DCCA0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1002CE8B4()
{
  v19 = v0;

  *(v0 + 584) = *(v0 + 528);
  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 328);
    v4 = *(v0 + 304);
    v5 = *(v0 + 312);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100141FE4(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received an error while showing a notification on the watch %s", v6, 0xCu);
    sub_10000BB78(v7);

    v11 = *(v5 + 8);
    v11(v3, v4);
  }

  else
  {
    v12 = *(v0 + 328);
    v13 = *(v0 + 304);
    v14 = *(v0 + 312);

    v11 = *(v14 + 8);
    v11(v12, v13);
  }

  *(v0 + 592) = v11;
  v15 = ProofingSession.objectID.getter();
  *(v0 + 600) = v15;
  v16 = swift_task_alloc();
  *(v0 + 608) = v16;
  *v16 = v0;
  v16[1] = sub_1002CEF8C;

  return sub_1002D0B00(v15, sub_1002CFE18, 0);
}

uint64_t sub_1002CEADC()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_1002CF628;
  }

  else
  {
    v2 = sub_1002CEC48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002CEC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = ProofingSession.objectID.getter();
  *(v3 + 560) = v4;
  v5 = swift_task_alloc();
  *(v3 + 568) = v5;
  *v5 = v3;
  v5[1] = sub_1002CED00;

  return sub_1002D0B00(v4, sub_1002CFFA4, 0);
}

uint64_t sub_1002CED00()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    v3 = sub_1002CEE34;
  }

  else
  {
    v3 = sub_1002CE7A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002CEE34()
{
  v1 = v0[52];
  (*(v0[48] + 8))(v0[49], v0[47]);
  sub_10000BE18(v1, &qword_10083FF90, &qword_1006DCCA0);
  v2 = v0[42];
  v3 = v0[38];
  v4 = v0[39];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002CEF8C()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v3 = sub_1002CF290;
  }

  else
  {
    v3 = sub_1002CF0C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002CF0C0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[52];
  v6 = v1[48];
  v13 = v1[49];
  v14 = v1[74];
  v7 = v1[47];
  v8 = v1[40];
  v9 = v1[38];
  if (v4)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "setting shouldShowNotificationOnWatch to true to show the notification to the user when the watch becomes active.", v10, 2u);
  }

  v14(v8, v9);
  (*(v6 + 8))(v13, v7);
  sub_10000BE18(v5, &qword_10083FF90, &qword_1006DCCA0);

  v11 = v1[1];

  return v11();
}

uint64_t sub_1002CF290()
{
  v1 = v0[52];
  v3 = v0[48];
  v2 = v0[49];
  v4 = v0[47];

  (*(v3 + 8))(v2, v4);
  sub_10000BE18(v1, &qword_10083FF90, &qword_1006DCCA0);
  v5 = v0[42];
  v6 = v0[38];
  v7 = v0[39];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v7 + 8))(v5, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002CF3F8()
{
  v19 = v0;

  v0[73] = v0[63];
  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[41];
    v4 = v0[38];
    v5 = v0[39];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100141FE4(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received an error while showing a notification on the watch %s", v6, 0xCu);
    sub_10000BB78(v7);

    v11 = *(v5 + 8);
    v11(v3, v4);
  }

  else
  {
    v12 = v0[41];
    v13 = v0[38];
    v14 = v0[39];

    v11 = *(v14 + 8);
    v11(v12, v13);
  }

  v0[74] = v11;
  v15 = ProofingSession.objectID.getter();
  v0[75] = v15;
  v16 = swift_task_alloc();
  v0[76] = v16;
  *v16 = v0;
  v16[1] = sub_1002CEF8C;

  return sub_1002D0B00(v15, sub_1002CFE18, 0);
}

uint64_t sub_1002CF628()
{
  v1 = v0[52];
  (*(v0[48] + 8))(v0[49], v0[47]);
  sub_10000BE18(v1, &qword_10083FF90, &qword_1006DCCA0);
  v2 = v0[42];
  v3 = v0[38];
  v4 = v0[39];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

unint64_t sub_1002CF780@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, char *a3@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  result = sub_1005791C8(a1, a2);
  if (!v3)
  {
    v15 = result;
    v40 = a1;
    v41 = v13;
    v42 = v8;
    if (result >> 62)
    {
      goto LABEL_27;
    }

    v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = v16;
    if (v16)
    {
      while (1)
      {
        v39 = v7;
        if (v17 == 1)
        {
          break;
        }

        v37 = 0;
        v38 = a3;
        if (v17 != 2)
        {
LABEL_15:

          a3 = v38;
          v22 = v41;
          v21 = v42;
          goto LABEL_20;
        }

        v11 = 0;
        v7 = v15 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v11 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v18 = *(v15 + 8 * v11 + 32);
          }

          v19 = v18;
          a3 = (v11 + 1);
          if (__OFADD__(v11, 1))
          {
            break;
          }

          v20 = [v18 target];
          if (v20 == IdentityTarget.rawValue.getter())
          {

            v23 = 0;
            a3 = v38;
            goto LABEL_24;
          }

          ++v11;
          if (a3 == v16)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        v32 = _CocoaArrayWrapper.endIndex.getter();
        if (!v32)
        {
          goto LABEL_29;
        }

        v16 = v32;
        v17 = _CocoaArrayWrapper.endIndex.getter();
      }

      result = sub_1002D1610(v15);
      v23 = result;
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v22 = v41;
        v21 = v42;
      }

      else
      {
        v22 = v41;
        v21 = v42;
        if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v19 = *(v15 + 32);
      }

      if (v19)
      {
LABEL_24:
        v29 = v19;
        v30 = sub_100007224(&qword_10083FF98, &qword_1006DCCA8);
        v31 = *(v30 + 48);
        ProofingSession.init(_:)();

        a3[v31] = v23 & 1;
        return (*(*(v30 - 8) + 56))(a3, 0, 1, v30);
      }

LABEL_20:
      defaultLogger()();

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v43 = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_100141FE4(v40, a2, &v43);
        _os_log_impl(&_mh_execute_header, v24, v25, "proofing session for ID %s doesn't exist. Will not show a notification to the user.", v26, 0xCu);
        sub_10000BB78(v27);
      }

      (*(v21 + 8))(v22, v39);
      v28 = sub_100007224(&qword_10083FF98, &qword_1006DCCA8);
      return (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
    }

    else
    {
LABEL_29:

      defaultLogger()();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "proofing session doesn't exist. Will not show a notification to the user", v35, 2u);
      }

      (*(v42 + 8))(v11, v7);
      v36 = sub_100007224(&qword_10083FF98, &qword_1006DCCA8);
      return (*(*(v36 - 8) + 56))(a3, 1, 1, v36);
    }
  }

  return result;
}

id sub_1002CFC90(void *a1)
{
  result = [a1 managedObjectContext];
  if (result)
  {
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = 0;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1002D1570;
    *(v5 + 24) = v4;
    v8[4] = sub_10021E8E8;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10057E264;
    v8[3] = &unk_10080C4E8;
    v6 = _Block_copy(v8);
    v7 = a1;

    [v3 performBlockAndWait:v6];

    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1002CFE18(void *a1)
{
  result = [a1 managedObjectContext];
  if (result)
  {
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = 1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1002D1980;
    *(v5 + 24) = v4;
    v8[4] = sub_10026CBB8;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10057E264;
    v8[3] = &unk_10080C560;
    v6 = _Block_copy(v8);
    v7 = a1;

    [v3 performBlockAndWait:v6];

    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1002CFFA4(void *a1)
{
  result = [a1 managedObjectContext];
  if (result)
  {
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = 1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1002D1604;
    *(v5 + 24) = v4;
    v8[4] = sub_10026CBB8;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10057E264;
    v8[3] = &unk_10080C628;
    v6 = _Block_copy(v8);
    v7 = a1;

    [v3 performBlockAndWait:v6];

    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1002D0130(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v5 = sub_10057886C(a2);
  if (!v3)
  {
    v6 = v5;
    a3();
    sub_1005783D4();
  }
}

uint64_t sub_1002D01A0()
{
  sub_10000BB78((v0 + 16));
  sub_10000BE18(v0 + 56, &unk_100845E80, &qword_1006DAD90);

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd40IdentityProofingUserNotificationProvider_staticWorkflow, &qword_10083D4B0, &qword_1006DC940);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityProofingUserNotificationProvider(uint64_t a1)
{
  result = qword_10083FE00;
  if (!qword_10083FE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002D02A0(uint64_t a1)
{
  sub_1001B4B18(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002D0358(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v3[18] = v4;
  v3[2] = v3;
  v3[3] = sub_1002D0488;
  v5 = swift_continuation_init();
  v3[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v3[10] = _NSConcreteStackBlock;
  v3[11] = 1107296256;
  v3[12] = sub_100429100;
  v3[13] = &unk_10080C6A0;
  v3[14] = v5;
  [v2 prepareIdentityProvisioningForTargetDeviceIdentifier:v4 completion:v3 + 10];

  return _swift_continuation_await(v3 + 2);
}

uint64_t sub_1002D0488(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 144);
  if (*(v2 + 48))
  {
    swift_willThrow();
  }

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1002D05A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a3)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v8[18] = v11;
  v12 = String._bridgeToObjectiveC()();
  v8[19] = v12;
  if (a7 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v8[20] = isa;
  v8[2] = v8;
  v8[3] = sub_1002D0744;
  v14 = swift_continuation_init();
  v8[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v8[10] = _NSConcreteStackBlock;
  v8[11] = 1107296256;
  v8[12] = sub_100429100;
  v8[13] = &unk_10080C6C8;
  v8[14] = v14;
  [v7 queueIdentityPassProvisioningWithPassMetadata:a1 targetDeviceIdentifier:v11 credentialIdentifier:v12 supplementalData:isa completion:v8 + 10];

  return _swift_continuation_await(v8 + 2);
}

uint64_t sub_1002D0744(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  v6 = *(*v1 + 144);
  if (*(v2 + 48))
  {
    swift_willThrow();
  }

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_1002D089C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (result > 7)
  {
    if (result <= 9)
    {
      if (result != 8)
      {
        return 4;
      }
    }

    else
    {
      if (result == 10)
      {
        return 5;
      }

      if (result != 11)
      {
        if (result == 12)
        {
          return 7;
        }

LABEL_19:
        defaultLogger()();
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v15 = v10;
          *v9 = 136315138;
          v11 = IdentityProofingActionStatus.debugDescription.getter();
          v13 = sub_100141FE4(v11, v12, &v15);

          *(v9 + 4) = v13;
          _os_log_impl(&_mh_execute_header, v7, v8, "No corresponding option on the watch to show the notification with the action status %s ", v9, 0xCu);
          sub_10000BB78(v10);
        }

        (*(v3 + 8))(v6, v2);
        return 0;
      }
    }

    return 3;
  }

  if (result > 5)
  {
    return 2;
  }

  if (result)
  {
    if (result == 1)
    {
      return 6;
    }

    if (result == 4)
    {
      return 1;
    }

    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1002D0B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
  return _swift_task_switch(sub_1002D0B24, 0, 0);
}

uint64_t sub_1002D0B24()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], v0 + 16);
  os_unfair_lock_unlock(v1 + 54);
  v2 = *(v0 + 232);
  *(v0 + 240) = *(v0 + 72);

  v8 = *(v0 + 216);
  sub_100031918(v0 + 16);
  v3 = swift_allocObject();
  *(v0 + 248) = v3;
  *(v3 + 16) = v8;
  *(v3 + 32) = v2;
  v4 = swift_allocObject();
  *(v0 + 256) = v4;
  *(v4 + 16) = sub_1002D15E4;
  *(v4 + 24) = v3;
  v5 = v8;

  v6 = swift_task_alloc();
  *(v0 + 264) = v6;
  *v6 = v0;
  v6[1] = sub_1002D0D00;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v6, sub_10017F710, v4, &type metadata for () + 8);
}

uint64_t sub_1002D0D00()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1002D0E48;
  }

  else
  {

    v2 = sub_1002D0E30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D0E48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D0EC0(uint64_t a1, uint64_t a2, objc_class *a3, uint64_t a4, NSString a5, uint64_t a6, NSString a7)
{
  isa = a3;
  if (a2)
  {
    v12 = String._bridgeToObjectiveC()();
    v8[18] = v12;
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = 0;
  v8[18] = 0;
  if (a3)
  {
LABEL_3:
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_4:
  v8[19] = isa;
  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  v8[20] = a5;
  if (a7)
  {
    a7 = String._bridgeToObjectiveC()();
  }

  v8[21] = a7;
  v8[2] = v8;
  v8[3] = sub_1002D1078;
  v13 = swift_continuation_init();
  v8[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v8[10] = _NSConcreteStackBlock;
  v8[11] = 1107296256;
  v8[12] = sub_100429100;
  v8[13] = &unk_10080C6F0;
  v8[14] = v13;
  [v7 updateNotificationForProductIdentifier:v12 configuration:isa localizedNotificationTitle:a5 localizedNotificationMessage:a7 completion:v8 + 10];

  return _swift_continuation_await(v8 + 2);
}

uint64_t sub_1002D1078(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 152);
  v7 = *(*v1 + 144);
  if (*(v2 + 48))
  {
    swift_willThrow();
  }

  v8 = *(v3 + 8);

  return v8();
}

uint64_t sub_1002D11F0()
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v0 = [objc_allocWithZone(PKPaymentService) init];
  v16[3] = sub_10001F8D4(0, &unk_1008458A0, PKPaymentService_ptr);
  v16[4] = &off_10080C410;
  v16[0] = v0;
  type metadata accessor for IdentityProofingConfigProvider();
  v1 = swift_allocObject();
  type metadata accessor for IdentityProofingTextReplacementProvider();
  swift_allocObject();
  v2 = IdentityProofingTextReplacementProvider.init()();
  type metadata accessor for IdentityProofingDeviceMigrationManagerFactory();
  v3 = swift_allocObject();
  type metadata accessor for IdentityProofingWorkflowProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  type metadata accessor for IdentityProofingUserNotificationProvider(0);
  v5 = swift_allocObject();
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0;
  v6 = OBJC_IVAR____TtC8coreidvd40IdentityProofingUserNotificationProvider_staticWorkflow;
  v7 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  sub_100020260(v16, v5 + 16);
  sub_10000BBC4(v17, &v11, &unk_100845E80, &qword_1006DAD90);
  if (!v12)
  {
    if (qword_1008824A8 && (v8 = *(qword_1008824A8 + 152)) != 0)
    {
      *(&v14 + 1) = type metadata accessor for IdentityWatchSessionManagementListener(0);
      v15 = &off_10080C438;
      *&v13 = v8;
      v9 = v8;
      sub_10000BE18(v17, &unk_100845E80, &qword_1006DAD90);
      sub_10000BB78(v16);
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_10000BE18(v17, &unk_100845E80, &qword_1006DAD90);
      sub_10000BB78(v16);
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    sub_10000BE18(&v11, &unk_100845E80, &qword_1006DAD90);
    goto LABEL_9;
  }

  sub_10000BE18(v17, &unk_100845E80, &qword_1006DAD90);
  sub_10000BB78(v16);
  sub_10001F358(&v11, &v13);
LABEL_9:
  swift_beginAccess();
  sub_1000B2764(&v13, v5 + 56, &unk_100845E80, &qword_1006DAD90);
  swift_endAccess();
  *(v5 + 96) = v1;
  *(v5 + 104) = v2;
  *(v5 + 112) = v4;
  return v5;
}

uint64_t sub_1002D14A0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002D1500()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002D1538()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1002D158C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002D15A4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002D1610(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v15 = result;
  if (_CocoaArrayWrapper.endIndex.getter() != 1)
  {
    return 0;
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  result = v15;
  if (!v16)
  {
    return 0;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = result;
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = result;
    v8 = *(a1 + 32);
  }

  v9 = v8;
  [v8 target];

  IdentityTarget.init(rawValue:)();
  if (v10)
  {
    return 0;
  }

  v11 = IdentityTarget.rawValue.getter();
  if (v11 != IdentityTarget.rawValue.getter())
  {
    return 0;
  }

  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Proofing is in gift watch scenario", v14, 2u);
  }

  (*(v3 + 8))(v6, v7);
  return 1;
}

uint64_t sub_1002D1810()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002D1858(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_1002CD198(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002D198C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for Logger();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002D1A64, 0, 0);
}

uint64_t sub_1002D1A64(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking if Wallet was deleted", v4, 2u);
  }

  v5 = v1[10];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[4];
  v9 = v1[5];

  v10 = *(v7 + 8);
  v10(v5, v6);
  v11 = *(v9 + 32);
  v1[2] = *(v9 + 24);
  v1[3] = v11;
  v12 = swift_task_alloc();
  *(v12 + 16) = v1 + 2;

  LOBYTE(v6) = sub_10035C8E4(sub_1000307C0, v12, v8);

  if (v6)
  {
    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Wallet has been deleted, will clear all the proofing sessions locally", v15, 2u);
    }

    v16 = v1[9];
    v17 = v1[6];
    v18 = v1[5];

    v10(v16, v17);
    v1[11] = *(v18 + 16);

    v19 = swift_task_alloc();
    v1[12] = v19;
    *v19 = v1;
    v19[1] = sub_1002D1DB0;

    return sub_10028C2C4();
  }

  else
  {
    defaultLogger()();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v1[8];
    v25 = v1[6];
    if (v23)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Wallet not deleted. Moving on...", v26, 2u);
    }

    v10(v24, v25);

    v27 = v1[1];

    return v27();
  }
}

uint64_t sub_1002D1DB0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002D1F1C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002D1F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_1002D20AC, 0, 0);
}

uint64_t sub_1002D20AC()
{
  v1 = OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService;
  v0[14] = *(v0[5] + 16);
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_1002D2154;

  return sub_1006738C8();
}

uint64_t sub_1002D2154(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_1002D2254, 0, 0);
}

uint64_t sub_1002D2254(uint64_t a1)
{
  v40 = v1;
  v2 = *(v1 + 136);
  if (v2)
  {
    v3 = *(v1 + 24);
    v4 = [*(v1 + 136) deviceID];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *(v1 + 144) = v5;
    *(v1 + 152) = v7;
    defaultLogger()();

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v1 + 104);
    v13 = *(v1 + 56);
    v12 = *(v1 + 64);
    if (v10)
    {
      v38 = *(v1 + 104);
      v14 = *(v1 + 24);
      v36 = *(v1 + 16);
      v37 = *(v1 + 56);
      v15 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v15 = 136315394;
      *(v15 + 4) = sub_100141FE4(v5, v7, &v39);
      *(v15 + 12) = 2080;
      if (v14)
      {
        v16 = v36;
      }

      else
      {
        v16 = 7104878;
      }

      if (v14)
      {
        v17 = v3;
      }

      else
      {
        v17 = 0xE300000000000000;
      }

      v18 = sub_100141FE4(v16, v17, &v39);

      *(v15 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v8, v9, "Established session with watch with pairingID: %s, proofingMinWatchOSVersion: %s", v15, 0x16u);
      swift_arrayDestroy();

      v19 = *(v12 + 8);
      v19(v38, v37);
    }

    else
    {

      v19 = *(v12 + 8);
      v19(v11, v13);
    }

    *(v1 + 160) = v19;
    v27 = *(v1 + 112);
    v28 = *(v1 + 120);
    v29._countAndFlagsBits = 0x6638643237646131;
    v30._countAndFlagsBits = 0x7369206863746157;
    v30._object = 0xEF64657269617020;
    v29._object = 0xE800000000000000;
    logMilestone(tag:description:)(v29, v30);
    v31 = *(v27 + v28);
    *(v1 + 168) = v31;
    v31;
    v32 = swift_task_alloc();
    *(v1 + 176) = v32;
    *v32 = v1;
    v32[1] = sub_1002D263C;
    v33 = *(v1 + 24);
    v34 = *(v1 + 32);
    v35 = *(v1 + 16);

    return sub_100675578(v35, v33, v34);
  }

  else
  {
    defaultLogger()();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v1 + 64);
    if (v22)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "No watch is paired to the device", v24, 2u);
    }

    (*(v23 + 8))(*(v1 + 80), *(v1 + 56));

    v25 = *(v1 + 8);

    return v25(0);
  }
}

uint64_t sub_1002D263C(char a1)
{
  v4 = *v2;
  *(v4 + 184) = v1;

  if (v1)
  {

    v5 = sub_1002D29F0;
  }

  else
  {
    *(v4 + 192) = a1 & 1;
    v5 = sub_1002D2794;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002D2794()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 152);
  if (v1 == 1)
  {
    v3 = (v0 + 96);
    v4 = *(v0 + 144);
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    v8[5] = v4;
    v8[6] = v2;

    sub_1003E653C(0, 0, v5, &unk_1006DCDB8, v8);

    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_7;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Watch is paired to the device and its preflight check is successful";
  }

  else
  {
    v3 = (v0 + 88);

    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_7;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Watch is paired to the device but it failed the preflight check";
  }

  _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);

LABEL_7:

  (*(v0 + 160))(*v3, *(v0 + 56));

  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_1002D29F0(uint64_t a1)
{
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Watch is paired to the device but it failed the preflight check: %@", v4, 0xCu);
    sub_10000BE18(v5, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
  }

  (*(v1 + 160))(*(v1 + 72), *(v1 + 56));

  v7 = *(v1 + 8);

  return v7(0);
}

uint64_t sub_1002D2BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for DIPError.Code();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002D2CE0, 0, 0);
}

uint64_t sub_1002D2CE0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Kicked off prearm trust cleanup, if any", v4, 2u);
  }

  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];

  v8 = *(v7 + 8);
  v1[12] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v1[13] = v9;
  *v9 = v1;
  v9[1] = sub_1002D2E28;
  v11 = v1[3];
  v10 = v1[4];

  return sub_1004B2600(v11, v10);
}

uint64_t sub_1002D2E28()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002D2F78, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1002D2F78()
{
  v5 = v0[12];
  v1 = v0[10];
  v2 = v0[8];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.cleanupPrearmTrustError(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v5(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002D3138(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = type metadata accessor for DIPError();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[32] = v6;
  v3[33] = *(v6 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();

  return _swift_task_switch(sub_1002D3308, 0, 0);
}

uint64_t sub_1002D3308()
{
  v0[42] = *(v0[25] + 16);
  v1 = swift_task_alloc();
  v0[43] = v1;
  *v1 = v0;
  v1[1] = sub_1002D33C0;
  v2 = v0[23];
  v3 = v0[24];

  return sub_1004C9820((v0 + 9), v2, v3);
}

uint64_t sub_1002D33C0()
{

  return _swift_task_switch(sub_1002D34BC, 0, 0);
}

uint64_t sub_1002D34BC(uint64_t a1)
{
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 88);
    *(v1 + 16) = *(v1 + 72);
    *(v1 + 32) = v3;
    *(v1 + 48) = *(v1 + 104);
    *(v1 + 56) = v2;
    *(v1 + 64) = *(v1 + 120);
    *(v1 + 66) = *(v1 + 122);
    v4 = swift_task_alloc();
    *(v1 + 352) = v4;
    *v4 = v1;
    v4[1] = sub_1002D3690;

    return sub_1004B1CC8();
  }

  else
  {
    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "establishPrearmTrust - establishing a NEW trust", v8, 2u);
    }

    v9 = *(v1 + 296);
    v10 = *(v1 + 256);
    v11 = *(v1 + 264);

    v12 = *(v11 + 8);
    *(v1 + 392) = v12;
    v12(v9, v10);
    v13 = swift_task_alloc();
    *(v1 + 400) = v13;
    *v13 = v1;
    v13[1] = sub_1002D3E80;
    v15 = *(v1 + 184);
    v14 = *(v1 + 192);

    return sub_1004BCE00(v15, v14);
  }
}

uint64_t sub_1002D3690(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 168) = a2;
  *(v3 + 152) = v2;
  *(v3 + 160) = a1;
  *(v3 + 67) = a2;

  return _swift_task_switch(sub_1002D3798, 0, 0);
}

uint64_t sub_1002D3798(uint64_t a1)
{
  if ((*(v1 + 67) & 1) != 0 || *(v1 + 160))
  {
    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "establishPrearmTrust - fetching attestation from existing trust", v26, 2u);
    }

    v27 = *(v1 + 328);
    v28 = *(v1 + 256);
    v29 = *(v1 + 264);

    v30 = *(v29 + 8);
    *(v1 + 360) = v30;
    v30(v27, v28);
    v31 = swift_task_alloc();
    *(v1 + 368) = v31;
    *v31 = v1;
    v31[1] = sub_1002D3BCC;
    v33 = *(v1 + 184);
    v32 = *(v1 + 192);

    return sub_1004B9EF8(v33, v32, v1 + 16);
  }

  else
  {
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "establishPrearmTrust - no identity passes on watch. Not re-using trust", v4, 2u);
    }

    v5 = *(v1 + 304);
    v6 = *(v1 + 312);
    v8 = *(v1 + 256);
    v7 = *(v1 + 264);
    v9 = *(v1 + 240);
    v10 = *(v1 + 248);
    v11 = *(v1 + 232);

    v12 = *(v7 + 8);
    v12(v6, v8);
    (*(v9 + 104))(v10, enum case for DIPError.Code.invalidPrearmTrustReuseAttempt(_:), v11);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    sub_10000BE18(v1 + 72, &qword_100845E10, &qword_1006DCDA8);
    v12(v5, v8);

    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "establishPrearmTrust - establishing a NEW trust", v15, 2u);
    }

    v16 = *(v1 + 296);
    v17 = *(v1 + 256);
    v18 = *(v1 + 264);

    v19 = *(v18 + 8);
    *(v1 + 392) = v19;
    v19(v16, v17);
    v20 = swift_task_alloc();
    *(v1 + 400) = v20;
    *v20 = v1;
    v20[1] = sub_1002D3E80;
    v22 = *(v1 + 184);
    v21 = *(v1 + 192);

    return sub_1004BCE00(v22, v21);
  }
}

uint64_t sub_1002D3BCC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v4 = sub_1002D4A14;
  }

  else
  {
    v4 = sub_1002D3CE0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002D3CE0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[45];
  v6 = v1[40];
  v7 = v1[32];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "establishPrearmTrust - returning a watch attestation fetched based on existing trust", v8, 2u);
  }

  sub_10000BE18((v1 + 9), &qword_100845E10, &qword_1006DCDA8);

  v5(v6, v7);
  v11 = v1[47];

  v9 = v1[1];

  return v9(v11);
}

uint64_t sub_1002D3E80(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[51] = a1;
  v4[52] = a2;
  v4[53] = v2;

  if (v2)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_1002D4050, 0, 0);
  }
}

uint64_t sub_1002D4050()
{
  v46 = v0;
  if ([*(v0 + 408) credentialAccessibilityEnabled])
  {
    v1 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents();
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 432) = v2;

    defaultLogger()();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 392);
    v7 = *(v0 + 288);
    v8 = *(v0 + 256);
    if (v5)
    {
      v42 = *(v0 + 392);
      v9 = swift_slowAlloc();
      v41 = v7;
      v10 = swift_slowAlloc();
      v45[0] = v10;
      *v9 = 136315138;
      v11 = Array.description.getter();
      v13 = sub_100141FE4(v11, v12, v45);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v3, v4, "Phone's accessibility is enabled, trying to unregister for event: %s", v9, 0xCu);
      sub_10000BB78(v10);

      v42(v41, v8);
    }

    else
    {

      v6(v7, v8);
    }

    v24 = swift_task_alloc();
    *(v0 + 440) = v24;
    *v24 = v0;
    v24[1] = sub_1002D4684;

    return sub_1004B8058(v2);
  }

  else
  {
    defaultLogger()();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 392);
    v18 = *(v0 + 272);
    v19 = *(v0 + 256);
    if (v16)
    {
      v43 = *(v0 + 392);
      v21 = *(v0 + 184);
      v20 = *(v0 + 192);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v45[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_100141FE4(v21, v20, v45);
      _os_log_impl(&_mh_execute_header, v14, v15, "Trying to persist prearm trust key and certificate for watch with pairingID: %s", v22, 0xCu);
      sub_10000BB78(v23);

      v43(v18, v19);
    }

    else
    {

      v17(v18, v19);
    }

    v26 = *(v0 + 424);
    type metadata accessor for IdentityProofingDataContext();
    swift_allocObject();
    sub_10057E28C();
    if (v26)
    {
      v34 = *(v0 + 408);
      v36 = *(v0 + 240);
      v35 = *(v0 + 248);
      v37 = *(v0 + 232);

      (*(v36 + 104))(v35, enum case for DIPError.Code.internalError(_:), v37);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v38 = *(v0 + 8);

      return v38();
    }

    else
    {
      v28 = v27;
      v29 = *(v0 + 408);
      v31 = *(v0 + 184);
      v30 = *(v0 + 192);
      v32 = swift_allocObject();
      v32[2] = v28;
      v32[3] = v31;
      v32[4] = v30;
      v32[5] = v29;

      v33 = v29;
      sub_10057C18C(sub_1002D5680, v32);
      v39 = *(v0 + 408);

      v44 = *(v0 + 416);

      v40 = *(v0 + 8);

      return v40(v44);
    }
  }
}