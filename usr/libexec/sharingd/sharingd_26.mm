id sub_10042B380()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SDDeferrableOperation(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SDDeferrableOperation(uint64_t a1)
{
  result = qword_10097DB70;
  if (!qword_10097DB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10042B4C0(uint64_t a1)
{
  sub_1002A6BEC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_10042B59C()
{
  result = qword_10097DBA0;
  if (!qword_10097DBA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10097DBA0);
  }

  return result;
}

Swift::Int sub_10042B5F0(uint64_t *a1)
{
  v2 = *(sub_10028088C(&qword_1009750E8, &qword_1007FBB20) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1004978E0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10042B6A4(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10042B6A4(uint64_t *a1)
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
        sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_10028088C(&qword_1009750E8, &qword_1007FBB20) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10042BA48(v8, v9, a1, v4);
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
    return sub_10042B7E8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10042B7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
  v8 = __chkstk_darwin(v35);
  v34 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v25 - v11;
  result = __chkstk_darwin(v10);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v32 = -v18;
    v33 = v17;
    v20 = a1 - a3;
    v26 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v30 = v19;
    v31 = a3;
    v28 = v21;
    v29 = v20;
    while (1)
    {
      sub_10000FF90(v21, v16, &qword_1009750E8, &qword_1007FBB20);
      sub_10000FF90(v19, v12, &qword_1009750E8, &qword_1007FBB20);
      v22 = static Date.> infix(_:_:)();
      sub_100005508(v12, &qword_1009750E8, &qword_1007FBB20);
      result = sub_100005508(v16, &qword_1009750E8, &qword_1007FBB20);
      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v19 = v30 + v26;
        v20 = v29 - 1;
        v21 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v23 = v34;
      sub_10002C4E4(v21, v34, &qword_1009750E8, &qword_1007FBB20);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10002C4E4(v23, v19, &qword_1009750E8, &qword_1007FBB20);
      v19 += v32;
      v21 += v32;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10042BA48(unint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v108 = a1;
  v6 = sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
  v118 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v112 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v121 = &v105 - v10;
  v11 = __chkstk_darwin(v9);
  v123 = &v105 - v12;
  result = __chkstk_darwin(v11);
  v122 = &v105 - v14;
  v119 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_100:
    a4 = *v108;
    if (!*v108)
    {
      goto LABEL_139;
    }

    v6 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v109;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v6;
LABEL_103:
      v125 = result;
      v6 = *(result + 16);
      if (v6 >= 2)
      {
        while (*v119)
        {
          v101 = *(result + 16 * v6);
          v102 = result;
          v103 = *(result + 16 * (v6 - 1) + 40);
          sub_10042C3B0(*v119 + *(v118 + 72) * v101, *v119 + *(v118 + 72) * *(result + 16 * (v6 - 1) + 32), *v119 + *(v118 + 72) * v103, a4);
          if (v32)
          {
          }

          if (v103 < v101)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v102 = sub_1004973B4(v102);
          }

          if (v6 - 2 >= *(v102 + 2))
          {
            goto LABEL_127;
          }

          v104 = &v102[16 * v6];
          *v104 = v101;
          *(v104 + 1) = v103;
          v125 = v102;
          sub_100497328(v6 - 1);
          result = v125;
          v6 = *(v125 + 16);
          if (v6 <= 1)
          {
          }
        }

        goto LABEL_137;
      }
    }

LABEL_133:
    result = sub_1004973B4(v6);
    goto LABEL_103;
  }

  v106 = a4;
  v16 = 0;
  v17 = _swiftEmptyArrayStorage;
  v18 = &qword_1009750E8;
  v124 = v6;
  while (1)
  {
    v19 = v16;
    v113 = v17;
    if (v16 + 1 >= v15)
    {
      v31 = v16 + 1;
      v32 = v109;
    }

    else
    {
      v20 = v16;
      v21 = *v119;
      v116 = v21;
      v22 = *(v118 + 72);
      a4 = v21 + v22 * (v16 + 1);
      v23 = v122;
      sub_10000FF90(a4, v122, v18, &qword_1007FBB20);
      v24 = v21 + v22 * v20;
      v25 = v123;
      sub_10000FF90(v24, v123, v18, &qword_1007FBB20);
      LODWORD(v117) = static Date.> infix(_:_:)();
      sub_100005508(v25, v18, &qword_1007FBB20);
      result = sub_100005508(v23, v18, &qword_1007FBB20);
      v107 = v20;
      v26 = v20 + 2;
      v120 = v22;
      v27 = v116 + v22 * (v20 + 2);
      while (v15 != v26)
      {
        v28 = v122;
        sub_10000FF90(v27, v122, v18, &qword_1007FBB20);
        v29 = v123;
        sub_10000FF90(a4, v123, v18, &qword_1007FBB20);
        v30 = static Date.> infix(_:_:)() & 1;
        sub_100005508(v29, v18, &qword_1007FBB20);
        result = sub_100005508(v28, v18, &qword_1007FBB20);
        ++v26;
        v27 += v120;
        a4 += v120;
        if ((v117 & 1) != v30)
        {
          v31 = v26 - 1;
          goto LABEL_12;
        }
      }

      v31 = v15;
LABEL_12:
      v6 = v124;
      v19 = v107;
      v32 = v109;
      if (v117)
      {
        if (v31 < v107)
        {
          goto LABEL_130;
        }

        if (v107 < v31)
        {
          v33 = v120 * (v31 - 1);
          v34 = v31;
          v35 = v31 * v120;
          v36 = v31;
          v37 = v107;
          a4 = v107 * v120;
          do
          {
            if (v37 != --v34)
            {
              v38 = *v119;
              if (!*v119)
              {
                goto LABEL_136;
              }

              sub_10002C4E4(v38 + a4, v112, v18, &qword_1007FBB20);
              if (a4 < v33 || v38 + a4 >= (v38 + v35))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a4 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10002C4E4(v112, v38 + v33, v18, &qword_1007FBB20);
            }

            ++v37;
            v33 -= v120;
            v35 -= v120;
            a4 += v120;
          }

          while (v37 < v34);
          v32 = v109;
          v6 = v124;
          v19 = v107;
          v31 = v36;
        }
      }
    }

    v39 = v119[1];
    if (v31 >= v39)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v31, v19))
    {
      goto LABEL_129;
    }

    if (v31 - v19 >= v106)
    {
LABEL_35:
      v16 = v31;
      if (v31 < v19)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v19, v106))
    {
      goto LABEL_131;
    }

    if (v19 + v106 >= v39)
    {
      v40 = v119[1];
    }

    else
    {
      v40 = v19 + v106;
    }

    if (v40 < v19)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v31 == v40)
    {
      goto LABEL_35;
    }

    v109 = v32;
    v87 = *v119;
    v88 = *(v118 + 72);
    v89 = *v119 + v88 * (v31 - 1);
    v90 = -v88;
    v107 = v19;
    v91 = v19 - v31;
    v117 = v31;
    v110 = v88;
    v111 = v40;
    v120 = v87;
    a4 = v87 + v31 * v88;
LABEL_90:
    v114 = a4;
    v115 = v91;
    v116 = v89;
    v92 = v89;
LABEL_91:
    v93 = v122;
    sub_10000FF90(a4, v122, v18, &qword_1007FBB20);
    v94 = v123;
    sub_10000FF90(v92, v123, v18, &qword_1007FBB20);
    v95 = static Date.> infix(_:_:)();
    sub_100005508(v94, v18, &qword_1007FBB20);
    result = sub_100005508(v93, v18, &qword_1007FBB20);
    if (v95)
    {
      break;
    }

    v6 = v124;
LABEL_89:
    v16 = v111;
    v89 = v116 + v110;
    v91 = v115 - 1;
    a4 = v114 + v110;
    if (++v117 != v111)
    {
      goto LABEL_90;
    }

    v32 = v109;
    v19 = v107;
    if (v111 < v107)
    {
      goto LABEL_128;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v17 = v113;
    }

    else
    {
      result = sub_10028E6A8(0, *(v113 + 2) + 1, 1, v113);
      v17 = result;
    }

    v42 = *(v17 + 2);
    v41 = *(v17 + 3);
    a4 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_10028E6A8((v41 > 1), v42 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 2) = a4;
    v43 = &v17[16 * v42];
    *(v43 + 4) = v19;
    *(v43 + 5) = v16;
    if (!*v108)
    {
      goto LABEL_138;
    }

    if (v42)
    {
      v44 = *v108;
      v6 = v124;
      while (1)
      {
        v45 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v46 = *(v17 + 4);
          v47 = *(v17 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_56:
          if (v49)
          {
            goto LABEL_117;
          }

          v62 = &v17[16 * a4];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_120;
          }

          v68 = &v17[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_124;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v72 = &v17[16 * a4];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_70:
        if (v67)
        {
          goto LABEL_119;
        }

        v75 = &v17[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_122;
        }

        if (v78 < v66)
        {
          goto LABEL_4;
        }

LABEL_77:
        v6 = v45 - 1;
        if (v45 - 1 >= a4)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*v119)
        {
          goto LABEL_135;
        }

        v83 = v17;
        a4 = *&v17[16 * v6 + 32];
        v84 = *&v17[16 * v45 + 40];
        sub_10042C3B0(*v119 + *(v118 + 72) * a4, *v119 + *(v118 + 72) * *&v17[16 * v45 + 32], *v119 + *(v118 + 72) * v84, v44);
        if (v32)
        {
        }

        if (v84 < a4)
        {
          goto LABEL_113;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v85 = v83;
        }

        else
        {
          v85 = sub_1004973B4(v83);
        }

        if (v6 >= *(v85 + 2))
        {
          goto LABEL_114;
        }

        v86 = &v85[16 * v6];
        *(v86 + 4) = a4;
        *(v86 + 5) = v84;
        v125 = v85;
        result = sub_100497328(v45);
        v17 = v125;
        a4 = *(v125 + 16);
        v6 = v124;
        if (a4 <= 1)
        {
          goto LABEL_4;
        }
      }

      v50 = &v17[16 * a4 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_115;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_116;
      }

      v57 = &v17[16 * a4];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_118;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_121;
      }

      if (v61 >= v53)
      {
        v79 = &v17[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_125;
        }

        if (v48 < v82)
        {
          v45 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v6 = v124;
LABEL_4:
    v109 = v32;
    v15 = v119[1];
    if (v16 >= v15)
    {
      goto LABEL_100;
    }
  }

  if (v120)
  {
    v96 = v18;
    v97 = v121;
    sub_10002C4E4(a4, v121, v96, &qword_1007FBB20);
    v6 = v124;
    swift_arrayInitWithTakeFrontToBack();
    v98 = v97;
    v18 = v96;
    sub_10002C4E4(v98, v92, v96, &qword_1007FBB20);
    v92 += v90;
    a4 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_89;
    }

    goto LABEL_91;
  }

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
  return result;
}

uint64_t sub_10042C3B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = a3;
  v44 = sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
  v7 = __chkstk_darwin(v44);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v11 = &v37 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = v45 - a2;
  if (v45 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
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

    if (v17 < 1)
    {
      v25 = a4 + v17;
    }

    else
    {
      v23 = -v13;
      v24 = a4 + v17;
      v25 = a4 + v17;
      v40 = a4;
      v41 = -v13;
      v39 = a1;
      do
      {
        v37 = v25;
        v26 = a2;
        v27 = a2 + v23;
        v42 = v26;
        while (1)
        {
          v29 = v45;
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v37;
            goto LABEL_60;
          }

          v38 = v25;
          v45 += v23;
          v30 = v24 + v23;
          sub_10000FF90(v30, v11, &qword_1009750E8, &qword_1007FBB20);
          v31 = v27;
          v32 = v27;
          v33 = v11;
          v34 = v43;
          sub_10000FF90(v32, v43, &qword_1009750E8, &qword_1007FBB20);
          v35 = static Date.> infix(_:_:)();
          v36 = v34;
          v11 = v33;
          sub_100005508(v36, &qword_1009750E8, &qword_1007FBB20);
          sub_100005508(v33, &qword_1009750E8, &qword_1007FBB20);
          if (v35)
          {
            break;
          }

          v25 = v30;
          if (v29 < v24 || v45 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v31;
            a1 = v39;
          }

          else
          {
            v27 = v31;
            a1 = v39;
            if (v29 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v30;
          v28 = v30 > v40;
          v23 = v41;
          v26 = v42;
          if (!v28)
          {
            a2 = v42;
            goto LABEL_59;
          }
        }

        if (v29 < v42 || v45 >= v42)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v38;
          a1 = v39;
          v23 = v41;
        }

        else
        {
          v25 = v38;
          a1 = v39;
          a2 = v31;
          v23 = v41;
          if (v29 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v40);
    }

LABEL_59:
    v48 = a2;
    v46 = v25;
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
    if (v16 >= 1 && a2 < v45)
    {
      v41 = v13;
      do
      {
        sub_10000FF90(a2, v11, &qword_1009750E8, &qword_1007FBB20);
        v19 = v43;
        sub_10000FF90(a4, v43, &qword_1009750E8, &qword_1007FBB20);
        v20 = static Date.> infix(_:_:)();
        sub_100005508(v19, &qword_1009750E8, &qword_1007FBB20);
        sub_100005508(v11, &qword_1009750E8, &qword_1007FBB20);
        if (v20)
        {
          v21 = a2 + v13;
          if (a1 < a2 || a1 >= v21)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v21;
        }

        else
        {
          v22 = a4 + v13;
          if (a1 < a4 || a1 >= v22)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = v22;
          a4 = v22;
        }

        v13 = v41;
        a1 += v41;
        v48 = a1;
      }

      while (a4 < v42 && a2 < v45);
    }
  }

LABEL_60:
  sub_10042C8C8(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_10042C8C8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10042C9B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10042CA04(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v9 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = OBJC_IVAR___SDDeferrableOperation_preventUntilDate;
  v13 = type metadata accessor for Date();
  v14 = *(*(v13 - 8) + 56);
  v14(&v5[v12], 1, 1, v13);
  v15 = OBJC_IVAR___SDDeferrableOperation_mainTimer;
  *&v5[OBJC_IVAR___SDDeferrableOperation_mainTimer] = 0;
  *&v5[OBJC_IVAR___SDDeferrableOperation_queue] = a3;
  v16 = &v5[OBJC_IVAR___SDDeferrableOperation_identifier];
  *v16 = a1;
  v16[1] = a2;
  *&v5[OBJC_IVAR___SDDeferrableOperation_timedReasons] = &_swiftEmptyDictionarySingleton;
  *&v5[OBJC_IVAR___SDDeferrableOperation_reasons] = &_swiftEmptySetSingleton;
  v14(v11, 1, 1, v13);
  swift_beginAccess();
  v17 = a3;
  sub_1003561CC(v11, &v5[v12]);
  swift_endAccess();
  v18 = &v5[OBJC_IVAR___SDDeferrableOperation_operation];
  v19 = v24;
  *v18 = v23;
  v18[1] = v19;
  v5[OBJC_IVAR___SDDeferrableOperation_pendingOperation] = 0;
  *&v5[v15] = 0;

  swift_unknownObjectRelease();
  v20 = type metadata accessor for SDDeferrableOperation(0);
  v25.receiver = v5;
  v25.super_class = v20;
  return objc_msgSendSuper2(&v25, "init");
}

uint64_t sub_10042CBD8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097DBC0);
  v1 = sub_10000C4AC(v0, qword_10097DBC0);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10042CCA0()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_rangingOperationFinished;
  v2 = sub_10028088C(&qword_100975650, &qword_1007F8A30);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_rangingStartedContinuation, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_rangingSucceeded) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_wifiRequest) = 0;
  v4 = v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_metrics;
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v7 = type metadata accessor for RangingMetrics(0);
  v6(v4 + v7[5], 1, 1, v5);
  v6(v4 + v7[6], 1, 1, v5);
  *(v4 + v7[7]) = 0;
  v6(v4 + v7[8], 1, 1, v5);
  v6(v4 + v7[9], 1, 1, v5);
  v8 = v4 + v7[10];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_lock;
  sub_10028088C(&qword_1009806F0, &unk_1007FD5C0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v0 + v9) = v10;
  *(v0 + 16) = sub_100431844();
  *(v0 + 24) = v11;
  type metadata accessor for ResponseTimer();
  v12 = swift_allocObject();
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_responseTimer) = v12;
  v12[2] = v0;
  v12[3] = &off_1008E1208;
  v12[4] = 0;

  sub_100111BA4(1);
  return v0;
}

uint64_t sub_10042CEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[92] = v3;
  v4[91] = a3;
  v4[90] = a2;
  v4[89] = a1;
  v4[93] = *v3;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4[94] = swift_task_alloc();
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v4[95] = swift_task_alloc();

  return _swift_task_switch(sub_10042CFE4, 0, 0);
}

uint64_t sub_10042CFE4()
{
  v60 = v0;
  *(v0 + 88) = *(v0 + 89);
  strcpy(v0 + 640, "AWDL_INFO_SELF");
  v0[655] = -18;

  AnyHashable.init<A>(_:)();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v2 = sub_1001114F4(isa);

  if (v2)
  {
    v3 = *(v0 + 89);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *(v0 + 56) = sub_10028088C(&unk_100974E50, &qword_1007FD600);
    *(v0 + 53) = v4;
    sub_1000106E0(v0 + 424, v0 + 584);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1005789A0(v0 + 584, (v0 + 304), isUniquelyReferenced_nonNull_native);
    sub_100285E74((v0 + 304));
    v6 = v3;
    *(v0 + 88) = v3;
  }

  else
  {
    sub_1002D2A30((v0 + 304), v0 + 456);
    sub_100285E74((v0 + 304));
    sub_100005508((v0 + 456), &unk_1009746F0, &qword_1007F90B0);
    v6 = *(v0 + 88);
  }

  *(v0 + 82) = 0xD00000000000001BLL;
  *(v0 + 83) = 0x8000000100790B80;
  AnyHashable.init<A>(_:)();
  *(v0 + 64) = &type metadata for Bool;
  v0[488] = 1;
  sub_1000106E0(v0 + 488, v0 + 520);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v59 = v6;
  sub_1005789A0(v0 + 520, (v0 + 344), v7);
  sub_100285E74((v0 + 344));
  *(v0 + 96) = v6;
  *(v0 + 88) = v6;
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_10097DBC0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v59 = v12;
    *v11 = 136315138;

    v13 = Dictionary.description.getter();
    v15 = v14;

    v16 = sub_10000C4E4(v13, v15, &v59);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "combinedAWDLInfo = %s", v11, 0xCu);
    sub_10000C60C(v12);
  }

  v17 = *(v0 + 89);
  *(v0 + 84) = 0xD000000000000013;
  *(v0 + 85) = 0x8000000100790C10;
  AnyHashable.init<A>(_:)();
  if (!*(v17 + 16) || (v18 = sub_100570754((v0 + 384)), (v19 & 1) == 0))
  {
    sub_100285E74((v0 + 384));
    goto LABEL_14;
  }

  sub_10000C5B0(*(*(v0 + 89) + 56) + 32 * v18, (v0 + 552));
  sub_100285E74((v0 + 384));
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v22 = 0;
    goto LABEL_15;
  }

  v20 = *(v0 + 86);
  v21 = *(v0 + 87);
  v22 = [objc_allocWithZone(SDAutoUnlockRangingPeer) init];
  if (v22)
  {
    v23 = objc_allocWithZone(_NIRangingPeer);
    sub_100294008(v20, v21);
    v24 = Data._bridgeToObjectiveC()().super.isa;
    v25 = Data._bridgeToObjectiveC()().super.isa;
    v26 = [v23 initWithMacAddressAsData:v24 secureRangingKeyID:v25];

    sub_100026AC0(v20, v21);
    [v22 setNiRangingPeer:v26];

    v27 = Data._bridgeToObjectiveC()().super.isa;
    [v22 setMacAddressData:v27];
    sub_100026AC0(v20, v21);
  }

  else
  {
    sub_100026AC0(v20, v21);
  }

LABEL_15:
  *(v0 + 97) = v22;
  v58 = *(v0 + 94);
  v28 = *(v0 + 93);
  v56 = *(v0 + 95);
  v57 = v28;
  v29 = *(v0 + 92);
  v30 = swift_allocObject();
  *(v0 + 98) = v30;
  swift_weakInit();
  v31 = swift_allocObject();
  *(v0 + 99) = v31;
  swift_weakInit();
  v32 = swift_allocObject();
  v53 = v29;
  swift_weakInit();
  v33 = swift_allocObject();
  *(v0 + 100) = v33;
  *(v33 + 16) = v32;
  *(v33 + 24) = v28;
  v34 = swift_allocObject();
  *(v0 + 101) = v34;
  swift_weakInit();
  v55 = objc_allocWithZone(SDAutoUnlockWiFiRequest);

  v54 = v22;

  v35 = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 6) = sub_10042DE10;
  *(v0 + 7) = 0;
  *(v0 + 2) = _NSConcreteStackBlock;
  *(v0 + 3) = 1107296256;
  *(v0 + 4) = sub_100431630;
  *(v0 + 5) = &unk_1008E1358;
  v36 = _Block_copy(v0 + 16);
  *(v0 + 12) = sub_100431C48;
  *(v0 + 13) = v30;
  *(v0 + 8) = _NSConcreteStackBlock;
  *(v0 + 9) = 1107296256;
  *(v0 + 10) = sub_1004316C4;
  *(v0 + 11) = &unk_1008E1380;
  v37 = _Block_copy(v0 + 64);

  *(v0 + 18) = sub_100431C50;
  *(v0 + 19) = v31;
  *(v0 + 14) = _NSConcreteStackBlock;
  *(v0 + 15) = 1107296256;
  *(v0 + 16) = sub_10043175C;
  *(v0 + 17) = &unk_1008E13A8;
  v38 = _Block_copy(v0 + 112);

  *(v0 + 24) = sub_100431C58;
  *(v0 + 25) = v33;
  *(v0 + 20) = _NSConcreteStackBlock;
  *(v0 + 21) = 1107296256;
  *(v0 + 22) = sub_100011678;
  *(v0 + 23) = &unk_1008E13D0;
  v39 = _Block_copy(v0 + 160);

  *(v0 + 30) = sub_100431C60;
  *(v0 + 31) = v34;
  *(v0 + 26) = _NSConcreteStackBlock;
  *(v0 + 27) = 1107296256;
  *(v0 + 28) = sub_1004317B0;
  *(v0 + 29) = &unk_1008E13F8;
  v40 = _Block_copy(v0 + 208);

  *(v0 + 36) = sub_10042EC78;
  *(v0 + 37) = 0;
  *(v0 + 32) = _NSConcreteStackBlock;
  *(v0 + 33) = 1107296256;
  *(v0 + 34) = sub_100011678;
  *(v0 + 35) = &unk_1008E1420;
  v41 = _Block_copy(v0 + 256);

  v42 = [v55 initWithAwdlInfo:v35 isRangingInitiator:1 rangingPeer:v54 queueAvailableHandler:v36 awdlStartedHandler:v37 peerFoundHandler:v38 rangingStartedHandler:v39 rangingCompletedHandler:v40 invalidationHandler:v41];
  *(v0 + 102) = v42;

  _Block_release(v41);
  _Block_release(v40);
  _Block_release(v39);
  _Block_release(v38);
  _Block_release(v37);
  _Block_release(v36);

  [v42 setRangingTimeout:5];
  Date.init()();
  v43 = type metadata accessor for Date();
  (*(*(v43 - 8) + 56))(v56, 0, 1, v43);
  v44 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_metrics;
  swift_beginAccess();
  sub_10000C788(v56, v53 + v44, &qword_10097A7F0, &unk_1007FB600);
  swift_endAccess();
  v45 = *(v53 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_wifiRequest);
  *(v53 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_wifiRequest) = v42;
  v46 = v42;

  v47 = [objc_opt_self() sharedManager];
  [v47 scheduleWiFiRequest:v46];

  v48 = type metadata accessor for TaskPriority();
  (*(*(v48 - 8) + 56))(v58, 1, 1, v48);
  v49 = swift_allocObject();
  v49[2] = 0;
  v49[3] = 0;
  v49[4] = v53;
  v49[5] = v57;

  sub_1002B3098(0, 0, v58, &unk_100802C78, v49);

  v50 = swift_task_alloc();
  *(v0 + 103) = v50;
  *v50 = v0;
  v50[1] = sub_10042DB40;
  v51 = *(v0 + 92);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 840, 0, 0, 0xD00000000000002ELL, 0x8000000100790C70, sub_100431D28, v51, &type metadata for Bool);
}

uint64_t sub_10042DB40()
{
  *(*v1 + 832) = v0;

  if (v0)
  {
    v2 = sub_10042DD34;
  }

  else
  {
    v2 = sub_10042DC54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10042DC54()
{
  v1 = *(v0 + 816);

  v2 = *(v0 + 840);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10042DD34()
{
  v1 = *(v0 + 816);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_10042DE10(uint64_t (*a1)(uint64_t))
{
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097DBC0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting wifi request", v5, 2u);
  }

  return a1(1);
}

uint64_t sub_10042DF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10028088C(&qword_10097DE40, &qword_100802C50);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v37 - v8;
  v10 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v10 - 8);
  v12 = v37 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    if (qword_100973878 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_10097DBC0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "AWDL started", v18, 2u);
    }

    if (a2)
    {
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134217984;
        *(v21 + 4) = a2;
        _os_log_impl(&_mh_execute_header, v19, v20, "AWDL failed to start: %ld", v21, 0xCu);
      }

      sub_1005D6028();

      v23 = *(v14 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_lock);
      __chkstk_darwin(v22);
      v37[-2] = sub_100431EF0;
      v37[-1] = v14;

      os_unfair_lock_lock(v23 + 4);
      sub_100431F08(v24);
      os_unfair_lock_unlock(v23 + 4);

      sub_100431AE8(v9, v7);
      v25 = sub_10028088C(&qword_100975650, &qword_1007F8A30);
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v7, 1, v25) == 1)
      {
        sub_100005508(v9, &qword_10097DE40, &qword_100802C50);

        return sub_100005508(v7, &qword_10097DE40, &qword_100802C50);
      }

      else
      {
        v32 = sub_100010F88(10, 0xD000000000000014, 0x8000000100790CA0);
        v34 = v33;
        sub_1000115C8();
        v35 = swift_allocError();
        *v36 = v32;
        *(v36 + 8) = v34;
        v37[3] = v35;
        CheckedContinuation.resume(throwing:)();

        sub_100005508(v9, &qword_10097DE40, &qword_100802C50);
        return (*(v26 + 8))(v7, v25);
      }
    }

    else
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v28 = Strong;
        Date.init()();

        v29 = type metadata accessor for Date();
        (*(*(v29 - 8) + 56))(v12, 0, 1, v29);
        v30 = v28 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_metrics;
        swift_beginAccess();
        v31 = type metadata accessor for RangingMetrics(0);
        sub_10000C788(v12, v30 + *(v31 + 20), &qword_10097A7F0, &unk_1007FB600);
        swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_10042E418(char a1, uint64_t a2)
{
  v3 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_10097DBC0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "peer found", v9, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    Date.init()();
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    v13 = v11 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_metrics;
    swift_beginAccess();
    v14 = type metadata accessor for RangingMetrics(0);
    sub_10000C788(v5, v13 + *(v14 + 24), &qword_10097A7F0, &unk_1007FB600);
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_metrics;
    swift_beginAccess();
    *(v16 + *(type metadata accessor for RangingMetrics(0) + 28)) = a1 & 1;
  }

  return result;
}

uint64_t sub_10042E674(uint64_t a1, uint64_t a2)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v16[-v4];
  v6 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v6 - 8);
  v8 = &v16[-v7];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    Date.init()();
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    v12 = v10 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_metrics;
    swift_beginAccess();
    v13 = type metadata accessor for RangingMetrics(0);
    sub_10000C788(v8, v12 + *(v13 + 32), &qword_10097A7F0, &unk_1007FB600);
    swift_endAccess();
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v10;
    v15[5] = a2;

    sub_1002B3098(0, 0, v5, &unk_100802C88, v15);
  }

  return result;
}

uint64_t sub_10042E8C8()
{
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097DBC0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Ranging started", v4, 2u);
  }

  v5 = v0[2];

  v0[3] = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_responseTimer);

  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_100431EB4;

  return sub_1005D6208(10);
}

uint64_t sub_10042EA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v5 - 8);
  v7 = &v18[-v6];
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_10097DBC0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Ranging completed", v11, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    Date.init()();
    v14 = type metadata accessor for Date();
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
    v15 = v13 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_metrics;
    swift_beginAccess();
    v16 = type metadata accessor for RangingMetrics(0);
    sub_10000C788(v7, v15 + *(v16 + 36), &qword_10097A7F0, &unk_1007FB600);
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004306D0(a1, a2);
  }

  return result;
}

uint64_t sub_10042ECA4()
{
  v0[3] = *(v0[2] + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_responseTimer);

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100431EB4;

  return sub_1005D6208(10);
}

void sub_10042ED54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_lock);
  os_unfair_lock_lock(v2 + 4);
  sub_1002F5418(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_10042EDC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097DE40, &qword_100802C50);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_10028088C(&qword_100975650, &qword_1007F8A30);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_rangingOperationFinished;
  swift_beginAccess();
  sub_10000C788(v6, a1 + v9, &qword_10097DE40, &qword_100802C50);
  return swift_endAccess();
}

uint64_t sub_10042EF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[57] = a3;
  v4[58] = v3;
  v4[55] = a1;
  v4[56] = a2;
  v4[59] = *v3;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4[60] = swift_task_alloc();

  return _swift_task_switch(sub_10042EFE4, 0, 0);
}

uint64_t sub_10042EFE4()
{
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097DBC0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Scheduling ranging request as responder", v4, 2u);
  }

  v5 = *(v0 + 55);

  *(v0 + 54) = v5;
  strcpy(v0 + 400, "AWDL_INFO_SELF");
  v0[415] = -18;

  AnyHashable.init<A>(_:)();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = sub_1001114F4(isa);

  if (v7)
  {
    v8 = *(v0 + 55);
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *(v0 + 33) = sub_10028088C(&unk_100974E50, &qword_1007FD600);
    *(v0 + 30) = v9;
    sub_1000106E0(v0 + 15, v0 + 23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1005789A0(v0 + 23, (v0 + 160), isUniquelyReferenced_nonNull_native);
    sub_100285E74((v0 + 160));
    *(v0 + 54) = v8;
  }

  else
  {
    sub_1002D2A30((v0 + 160), v0 + 17);
    sub_100005508((v0 + 272), &unk_1009746F0, &qword_1007F90B0);
    sub_100285E74((v0 + 160));
  }

  v31 = *(v0 + 60);
  v32 = *(v0 + 59);
  v12 = *(v0 + 57);
  v11 = *(v0 + 58);
  v13 = *(v0 + 55);
  v14 = *(v0 + 56);
  *(v0 + 52) = 0xD00000000000001BLL;
  *(v0 + 53) = 0x8000000100790B80;
  AnyHashable.init<A>(_:)();
  *(v0 + 41) = &type metadata for Bool;
  v0[304] = 0;
  sub_1000106E0(v0 + 19, v0 + 21);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_1005789A0(v0 + 21, (v0 + 200), v15);
  sub_100285E74((v0 + 200));
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v0 + 61) = v17;
  v17[2] = v16;
  v17[3] = v13;
  v17[4] = v14;
  v17[5] = v12;
  v18 = objc_allocWithZone(SDAutoUnlockWiFiRequest);

  sub_100294008(v14, v12);

  v19 = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 6) = sub_100431B74;
  *(v0 + 7) = v17;
  *(v0 + 2) = _NSConcreteStackBlock;
  *(v0 + 3) = 1107296256;
  *(v0 + 4) = sub_100431630;
  *(v0 + 5) = &unk_1008E1268;
  v20 = _Block_copy(v0 + 16);
  *(v0 + 12) = sub_100430168;
  *(v0 + 13) = 0;
  *(v0 + 8) = _NSConcreteStackBlock;
  *(v0 + 9) = 1107296256;
  *(v0 + 10) = sub_1004316C4;
  *(v0 + 11) = &unk_1008E1290;
  v21 = _Block_copy(v0 + 64);

  *(v0 + 18) = sub_100430268;
  *(v0 + 19) = 0;
  *(v0 + 14) = _NSConcreteStackBlock;
  *(v0 + 15) = 1107296256;
  *(v0 + 16) = sub_100011678;
  *(v0 + 17) = &unk_1008E12B8;
  v22 = _Block_copy(v0 + 112);

  v23 = [v18 initWithAwdlInfo:v19 isRangingInitiator:0 rangingPeer:0 queueAvailableHandler:v20 awdlStartedHandler:v21 peerFoundHandler:0 rangingStartedHandler:0 rangingCompletedHandler:0 invalidationHandler:v22];
  *(v0 + 62) = v23;

  _Block_release(v22);
  _Block_release(v21);
  _Block_release(v20);

  [v23 setRangingTimeout:5];
  v24 = *(v11 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_wifiRequest);
  *(v11 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_wifiRequest) = v23;
  v25 = v23;

  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v31, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v11;
  v27[5] = v32;

  sub_1002B3098(0, 0, v31, &unk_100802C60, v27);

  v28 = swift_task_alloc();
  *(v0 + 63) = v28;
  *(v28 + 16) = v11;
  *(v28 + 24) = v25;
  v29 = swift_task_alloc();
  *(v0 + 64) = v29;
  *v29 = v0;
  v29[1] = sub_10042F678;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 528, 0, 0, 0xD00000000000003FLL, 0x8000000100790BD0, sub_100431C40, v28, &type metadata for Bool);
}

uint64_t sub_10042F678()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_10042F810;
  }

  else
  {

    v2 = sub_10042F794;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10042F794()
{
  v1 = *(v0 + 496);

  v2 = *(v0 + 528);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10042F810()
{
  v1 = *(v0 + 496);

  v2 = *(v0 + 8);

  return v2(0);
}

void sub_10042F898(void (*a1)(void), char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a5;
  v72 = a6;
  v9 = sub_10028088C(&qword_10097DE40, &qword_100802C50);
  v10 = __chkstk_darwin(v9 - 8);
  v75 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = v68 - v12;
  v13 = sub_10028088C(&qword_100975650, &qword_1007F8A30);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v74 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v70 = v68 - v17;
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000C4AC(v18, qword_10097DBC0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Starting wifi request", v21, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_20;
  }

  v23 = Strong;
  v24 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_wifiRequest);
  if (!v24)
  {

LABEL_20:
    a1(0);
    return;
  }

  v25 = v24;

  sub_1005D6028();

  v76 = 0xD000000000000013;
  v77 = 0x8000000100790C10;
  AnyHashable.init<A>(_:)();
  if (*(a4 + 16) && (v26 = sub_100570754(v78), (v27 & 1) != 0))
  {
    sub_10000C5B0(*(a4 + 56) + 32 * v26, &v79);
    sub_100285E74(v78);
    if (swift_dynamicCast())
    {
      v75 = a2;
      v68[0] = a1;
      v28 = v76;
      v29 = v77;
      v30 = [objc_allocWithZone(SDAutoUnlockRangingPeer) init];
      v31 = objc_allocWithZone(_NIRangingPeer);
      sub_100294008(v28, v29);
      v32.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v69 = v25;
      isa = v32.super.isa;
      v34 = Data._bridgeToObjectiveC()().super.isa;
      v35 = [v31 initWithMacAddressAsData:isa secureRangingKeyID:v34];

      v36 = v69;
      sub_100026AC0(v28, v29);
      [v30 setNiRangingPeer:v35];

      v37 = [objc_opt_self() sharedManager];
      [v37 updateWiFiRequest:v36 setRangingPeer:v30];

      v38 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_rangingStartedContinuation;
      swift_beginAccess();
      v39 = v73;
      sub_100431AE8(v23 + v38, v73);
      if ((*(v14 + 48))(v39, 1, v13) == 1)
      {
        sub_100005508(v39, &qword_10097DE40, &qword_100802C50);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();
        v42 = os_log_type_enabled(v40, v41);
        v43 = v68[0];
        if (v42)
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&_mh_execute_header, v40, v41, "No continuation. ScheduleRangingRequestAsResponder is stuck. Attempting to clear current request", v44, 2u);
          v36 = v69;
        }

        v43(0);
        sub_100026AC0(v28, v29);
      }

      else
      {
        v67 = v70;
        (*(v14 + 32))(v70, v39, v13);
        LOBYTE(v79) = 1;
        CheckedContinuation.resume(returning:)();
        (v68[0])(1);

        sub_100026AC0(v28, v29);
        (*(v14 + 8))(v67, v13);
      }

      return;
    }
  }

  else
  {
    sub_100285E74(v78);
  }

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();

  v47 = os_log_type_enabled(v45, v46);
  v68[1] = a4;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v69 = v25;
    v49 = v48;
    v50 = swift_slowAlloc();
    v68[0] = a1;
    v51 = v50;
    v78[0] = v50;
    *v49 = 136315138;
    v52 = Dictionary.description.getter();
    v54 = v14;
    v55 = sub_10000C4E4(v52, v53, v78);

    *(v49 + 4) = v55;
    v14 = v54;
    _os_log_impl(&_mh_execute_header, v45, v46, "Could not find peer mac address in remote AWDL info: %s", v49, 0xCu);
    sub_10000C60C(v51);
    a1 = v68[0];

    v25 = v69;
  }

  v56 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_rangingStartedContinuation;
  swift_beginAccess();
  v57 = v23 + v56;
  v58 = v75;
  sub_100431AE8(v57, v75);
  if ((*(v14 + 48))(v58, 1, v13))
  {
    sub_100005508(v58, &qword_10097DE40, &qword_100802C50);
  }

  else
  {
    v59 = v74;
    (*(v14 + 16))(v74, v58, v13);
    sub_100005508(v58, &qword_10097DE40, &qword_100802C50);
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    v60._countAndFlagsBits = 0xD000000000000035;
    v60._object = 0x8000000100790C30;
    String.append(_:)(v60);
    v61._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v61);

    v62 = sub_100010F88(1, v79, v80);
    v64 = v63;
    sub_1000115C8();
    v65 = swift_allocError();
    *v66 = v62;
    *(v66 + 8) = v64;
    v79 = v65;
    CheckedContinuation.resume(throwing:)();
    (*(v14 + 8))(v59, v13);
  }

  a1(0);
}

void sub_100430168(uint64_t a1, uint64_t a2)
{
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_10097DBC0);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a2;
    _os_log_impl(&_mh_execute_header, oslog, v4, "AWDL started (error = %ld)", v5, 0xCu);
  }
}

void sub_100430274(const char *a1)
{
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097DBC0);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t sub_100430384()
{
  v0[3] = *(v0[2] + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_responseTimer);

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100430434;

  return sub_1005D6208(5);
}

uint64_t sub_100430434()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_100430544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10028088C(&qword_10097DE40, &qword_100802C50);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_10028088C(&qword_100975650, &qword_1007F8A30);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_rangingStartedContinuation;
  swift_beginAccess();
  sub_10000C788(v8, a2 + v11, &qword_10097DE40, &qword_100802C50);
  swift_endAccess();
  v12 = [objc_opt_self() sharedManager];
  [v12 scheduleWiFiRequest:a3];
}

uint64_t sub_1004306D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10028088C(&qword_10097DE40, &qword_100802C50);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v48[-v11];
  __chkstk_darwin(v10);
  v14 = &v48[-v13];

  sub_1005D6028();

  v16 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_wifiRequest;
  v17 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_wifiRequest);
  if (v17)
  {
    v18 = objc_opt_self();
    v19 = v17;
    v20 = [v18 sharedManager];
    [v20 cancelWiFiRequest:v19];

    v21 = *(v3 + v16);
    *(v3 + v16) = 0;
  }

  v22 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_lock);
  __chkstk_darwin(v15);
  *&v48[-16] = sub_100431B58;
  *&v48[-8] = v3;
  os_unfair_lock_lock(v22 + 4);
  sub_100431F08(v23);
  os_unfair_lock_unlock(v22 + 4);
  if (a1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_31;
      }

      v24 = *(a1 + 32);
    }

    v25 = v24;
    v26 = [v24 distanceMeters];

    [v26 floatValue];
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = v3 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_metrics;
  swift_beginAccess();
  v30 = v29 + *(type metadata accessor for RangingMetrics(0) + 40);
  *v30 = v28;
  *(v30 + 4) = a1 == 0;
  if (!a1 || a2)
  {
    goto LABEL_20;
  }

  if ((a1 & 0xC000000000000001) == 0)
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_33;
    }

    v31 = *(a1 + 32);
    goto LABEL_14;
  }

LABEL_31:
  v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
  v32 = v31;
  v33 = [v31 shouldUnlock];

  if (v33)
  {
    if (qword_100973878 == -1)
    {
LABEL_16:
      v34 = type metadata accessor for Logger();
      sub_10000C4AC(v34, qword_10097DBC0);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Peer in range", v37, 2u);
      }

      sub_100431AE8(v14, v12);
      v38 = sub_10028088C(&qword_100975650, &qword_1007F8A30);
      v39 = *(v38 - 8);
      if ((*(v39 + 48))(v12, 1, v38) == 1)
      {
        sub_100005508(v14, &qword_10097DE40, &qword_100802C50);
        v40 = v12;
        return sub_100005508(v40, &qword_10097DE40, &qword_100802C50);
      }

      v49 = 1;
      CheckedContinuation.resume(returning:)();
      sub_100005508(v14, &qword_10097DE40, &qword_100802C50);
      return (*(v39 + 8))(v12, v38);
    }

LABEL_33:
    swift_once();
    goto LABEL_16;
  }

LABEL_20:
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_10000C4AC(v41, qword_10097DBC0);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Peer out of range", v44, 2u);
  }

  sub_100431AE8(v14, v9);
  v45 = sub_10028088C(&qword_100975650, &qword_1007F8A30);
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v9, 1, v45) == 1)
  {
    sub_100005508(v14, &qword_10097DE40, &qword_100802C50);
    v40 = v9;
    return sub_100005508(v40, &qword_10097DE40, &qword_100802C50);
  }

  v49 = 0;
  CheckedContinuation.resume(returning:)();
  sub_100005508(v14, &qword_10097DE40, &qword_100802C50);
  return (*(v46 + 8))(v9, v45);
}

uint64_t sub_100430CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10028088C(&qword_10097DE40, &qword_100802C50);
  __chkstk_darwin(v4 - 8);
  v6 = &v10[-v5];
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_rangingOperationFinished;
  swift_beginAccess();
  sub_100431AE8(a1 + v7, a2);
  v8 = sub_10028088C(&qword_100975650, &qword_1007F8A30);
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  swift_beginAccess();
  sub_10000C788(v6, a1 + v7, &qword_10097DE40, &qword_100802C50);
  return swift_endAccess();
}

uint64_t sub_100430E2C()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_10097DE40, &qword_100802C50);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v23 - v6;
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_10097DBC0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Ranging timer fired", v11, 2u);
  }

  v12 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_lock);
  __chkstk_darwin(v13);
  v23[-2] = sub_100431EF0;
  v23[-1] = v1;
  os_unfair_lock_lock(v12 + 4);
  sub_100431ACC(v14);
  os_unfair_lock_unlock(v12 + 4);
  sub_100431AE8(v7, v5);
  v15 = sub_10028088C(&qword_100975650, &qword_1007F8A30);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v5, 1, v15) == 1)
  {
    sub_100005508(v5, &qword_10097DE40, &qword_100802C50);
  }

  else
  {
    v17 = sub_100010F88(24, 0x20676E69676E6152, 0xEF74756F656D6974);
    v19 = v18;
    sub_1000115C8();
    v20 = swift_allocError();
    *v21 = v17;
    *(v21 + 8) = v19;
    v23[0] = v20;
    CheckedContinuation.resume(throwing:)();
    (*(v16 + 8))(v5, v15);
  }

  sub_100431124();
  return sub_100005508(v7, &qword_10097DE40, &qword_100802C50);
}

void sub_100431124()
{
  v1 = v0;
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097DBC0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "invalidating wifi request", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_wifiRequest);
  if (v6)
  {
    v7 = objc_opt_self();
    v9 = v6;
    v8 = [v7 sharedManager];
    [v8 cancelWiFiRequest:v9];

    sub_100111BA4(0);
  }
}

uint64_t sub_100431290()
{
  sub_100026AC0(*(v0 + 16), *(v0 + 24));
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_rangingOperationFinished, &qword_10097DE40, &qword_100802C50);
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_rangingStartedContinuation, &qword_10097DE40, &qword_100802C50);

  sub_100431E58(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_metrics);

  return swift_deallocClassInstance();
}

void sub_1004313A4(uint64_t a1)
{
  sub_10043149C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RangingMetrics(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10043149C(uint64_t a1)
{
  if (!qword_10097DC18)
  {
    sub_100280938(&qword_100975650, &qword_1007F8A30);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10097DC18);
    }
  }
}

void sub_100431548(uint64_t a1)
{
  sub_1002A6BEC(319);
  if (v1 <= 0x3F)
  {
    sub_1004315E0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1004315E0()
{
  if (!qword_10097DDF8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10097DDF8);
    }
  }
}

uint64_t sub_100431630(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_10042C9FC, v4);
}

uint64_t sub_1004316C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v4(v5, a3);
}

uint64_t sub_10043175C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1004317B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100431D4C();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

id sub_100431844()
{
  result = [objc_opt_self() sharedMonitor];
  if (result)
  {
    v1 = result;
    v2 = [result awdlInfo];

    if (v2)
    {
      v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v3 = 0;
    }

    if (qword_100973878 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_10097DBC0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136315138;
      if (v3)
      {
        v9 = Dictionary.description.getter();
        v11 = v10;
      }

      else
      {
        v11 = 0x8000000100790B60;
        v9 = 0xD000000000000012;
      }

      v12 = sub_10000C4E4(v9, v11, &v16);

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "AWDLInfo = %s", v7, 0xCu);
      sub_10000C60C(v8);
    }

    if (v3)
    {
      v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v13.super.isa = 0;
    }

    v14 = sub_10011137C(v13.super.isa);

    if (!v14)
    {
      return 0;
    }

    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100431AE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097DE40, &qword_100802C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100431B80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_100430364(a1, v4, v5, v6);
}

uint64_t sub_100431C68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10042EC84(a1, v4, v5, v6);
}

unint64_t sub_100431D4C()
{
  result = qword_10097DE48;
  if (!qword_10097DE48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10097DE48);
  }

  return result;
}

uint64_t sub_100431D98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10042E8A8(a1, v4, v5, v6);
}

uint64_t sub_100431E58(uint64_t a1)
{
  v2 = type metadata accessor for RangingMetrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100431F20()
{
  v1 = *(_s15VisionUnlockiOSV18InitialLockContextVMa(0) + 40);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationPreRequest) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100431F90()
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  result = swift_allocObject();
  *(result + 16) = xmmword_1008018C0;
  if (qword_100973880 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  *(result + 56) = &type metadata for SDAuthentication.Operation.RecordSessionStart;
  *(result + 64) = &off_10097BDE8;
  *(result + 96) = &type metadata for SDAuthentication.Operation.RecordDiscoveryEnd;
  *(result + 104) = &off_10097BB90;
  *(result + 136) = &type metadata for SDAuthentication.Operation.RecordKeyExchangeStart;
  *(result + 144) = &off_10097BDD0;
  *(result + 176) = &type metadata for SDAuthentication.Operation.CheckIsBluetoothEnabled;
  *(result + 184) = &off_10097BDB8;
  *(result + 216) = &type metadata for SDAuthentication.Operation.CheckIsWiFiEnabled;
  *(result + 224) = &off_10097BDA0;
  *(result + 256) = &type metadata for SDAuthentication.Operation.CheckRemoteDeviceOSVersionIsSupported;
  *(result + 264) = &off_10097BE00;
  *(result + 296) = &type metadata for SDAuthentication.Operation.RecordRemoteDevice;
  *(result + 304) = &off_10097BD70;
  *(result + 336) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(result + 344) = &off_10097BD58;
  *(result + 376) = &type metadata for SDAuthentication.Operation.CheckRegistrationStateWithAKSManager;
  *(result + 384) = &off_10097BC08;
  *(result + 416) = &type metadata for SDAuthentication.Operation.IncludeAWDLInfoInMessage;
  *(result + 424) = &off_10097BD40;
  *(result + 456) = &type metadata for SDAuthentication.Operation.SendPreRequestMessage;
  *(result + 464) = &off_10097BB78;
  return result;
}

void sub_100432180(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    sub_1002A6B90(319, &unk_100977800, &protocol descriptor for SDAuthenticationRangingSessionProtocol);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics(319);
      if (v3 <= 0x3F)
      {
        sub_1002A6BEC(319);
        if (v4 <= 0x3F)
        {
          sub_1002A6C94(319, &qword_10097DF50, &unk_10097DF58, off_1008C8D40);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1004322D4(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    sub_1002A6B90(319, &unk_100977800, &protocol descriptor for SDAuthenticationRangingSessionProtocol);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics(319);
      if (v3 <= 0x3F)
      {
        sub_1002F9C34(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id sub_100432424@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A60;
  if (qword_100973880 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v6 + 64) = &off_10097BD58;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.CheckUserGazingAtPhone;
  *(v6 + 104) = &off_10097C138;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.CheckRegistrationStateWithAKSManager;
  *(v6 + 144) = &off_10097BC08;
  *(v6 + 176) = &type metadata for SDAuthentication.Operation.IncludeRegistrationIDInMessage;
  *(v6 + 184) = &off_10097BBF0;
  *(v6 + 216) = &type metadata for SDAuthentication.Operation.IncludeAWDLInfoInMessage;
  *(v6 + 224) = &off_10097BD40;
  *(v6 + 256) = &type metadata for SDAuthentication.Operation.IncludeFirstAKSTokenWithLTKSessionInMessage;
  *(v6 + 264) = &off_10097BBD8;
  *(v6 + 296) = &type metadata for SDAuthentication.Operation.SendRequestMessage;
  *(v6 + 304) = &off_10097BCF8;
  *a3 = v6;
  result = [objc_allocWithZone(SDAuthenticationRequest) init];
  if (result)
  {
    v8 = result;
    v9 = _s15VisionUnlockiOSV23HandlePreRequestContextVMa(0);
    *(a3 + v9[10]) = v8;
    *(a3 + v9[11]) = 0;
    if ([a1 hasVersion])
    {
      if ([a1 hasAwdlInfo])
      {
        v10 = _s15VisionUnlockiOSV17InitialKeyContextVMa(0);
        sub_100434848(a2 + *(v10 + 24), a3 + v9[6], type metadata accessor for SDAuthenticationSessionMetrics);
        sub_1002A9938(a2 + 8, (a3 + 1));
        v11 = (a2 + *(v10 + 28));
        v12 = *v11;
        v13 = v11[1];
        v14 = (a3 + v9[8]);
        *v14 = v12;
        v14[1] = v13;
        sub_100294008(v12, v13);
        result = [a1 awdlInfo];
        if (result)
        {
          v15 = result;
          v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;

          v19 = (a3 + v9[9]);
          *v19 = v16;
          v19[1] = v18;
          LODWORD(v15) = [a1 version];

          result = sub_1004348B0(a2, _s15VisionUnlockiOSV17InitialKeyContextVMa);
          *(a3 + v9[7]) = v15;
          return result;
        }

        goto LABEL_12;
      }

      v27 = 0x800000010078B300;
      v26 = 0xD000000000000011;
    }

    else
    {
      _StringGuts.grow(_:)(32);
      v20 = [a1 description];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24._countAndFlagsBits = 0xD00000000000001CLL;
      v24._object = 0x800000010078B2C0;
      String.append(_:)(v24);
      v25._countAndFlagsBits = 0xD000000000000017;
      v25._object = 0x8000000100802E10;
      String.append(_:)(v25);
      v26 = v21;
      v27 = v23;
    }

    v28 = sub_100010F88(1, v26, v27);
    v30 = v29;
    sub_1000115C8();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    swift_willThrow();

    sub_1004348B0(a2, _s15VisionUnlockiOSV17InitialKeyContextVMa);
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1004327D4(uint64_t a1)
{
  v2 = [*(v1 + *(a1 + 40)) data];
  if (v2)
  {
    v3 = v2;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

  else
  {
    v6 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v8 = v7;
    sub_1000115C8();
    swift_allocError();
    *v9 = v6;
    *(v9 + 8) = v8;
    return swift_willThrow();
  }
}

id sub_10043289C()
{
  v1 = *(_s15VisionUnlockiOSV20HandleRequestContextVMa(0) + 48);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationResponse) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_10043290C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A60;
  if (qword_100973880 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.RecordKeyExchangeEnd;
  *(v6 + 64) = &off_10097C1F8;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.RecordTokenExchangeStart;
  *(v6 + 104) = &off_10097C1E0;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v6 + 144) = &off_10097BD58;
  *(v6 + 176) = &type metadata for SDAuthentication.Operation.VerifyRegistrationIDsInSync;
  *(v6 + 184) = &off_10097C240;
  *(v6 + 216) = &type metadata for SDAuthentication.Operation.UseReceivedTokenForIncludingFirstAKSTokenWithLTKSessionInMessage;
  *(v6 + 224) = &off_10097C120;
  *(v6 + 256) = &type metadata for SDAuthentication.Operation.RecordARTrackingDistance;
  *(v6 + 264) = &off_10097C108;
  *(v6 + 296) = &type metadata for SDAuthentication.Operation.SendResponseMessage;
  *(v6 + 304) = &off_10097C1B0;
  *a3 = v6;
  v7 = _s15VisionUnlockiOSV20HandleRequestContextVMa(0);
  *(a3 + v7[12]) = 0;
  *(a3 + v7[13]) = 1;
  if (![a1 hasAwdlInfo])
  {
    v27 = "Missing awdl info";
LABEL_14:
    v28 = (v27 - 32) | 0x8000000000000000;
    v29 = 1;
    v30 = 0xD000000000000011;
LABEL_15:
    v31 = sub_100010F88(v29, v30, v28);
    v33 = v32;
    sub_1000115C8();
    swift_allocError();
    *v34 = v31;
    *(v34 + 8) = v33;
    swift_willThrow();

    sub_1004348B0(a2, _s15VisionUnlockiOSV18InitialLockContextVMa);
  }

  if (![a1 hasAksToken])
  {
    v27 = "Missing AKS token";
    goto LABEL_14;
  }

  if (![a1 hasRegistrationID])
  {
    v30 = 0xD000000000000016;
    v28 = 0x80000001007901D0;
    v29 = 11;
    goto LABEL_15;
  }

  v8 = _s15VisionUnlockiOSV18InitialLockContextVMa(0);
  sub_100434848(a2 + *(v8 + 24), a3 + v7[5], type metadata accessor for SDAuthenticationSessionMetrics);
  sub_1002A9938(a2 + 8, a3 + v7[6]);
  *(a3 + v7[7]) = [a1 version];
  result = [a1 registrationID];
  if (result)
  {
    v10 = result;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = (a3 + v7[10]);
    *v14 = v11;
    v14[1] = v13;
    v15 = [a1 hasArTrackingDistance];
    v16 = 0;
    if (v15)
    {
      [a1 arTrackingDistance];
    }

    *(a3 + v7[11]) = v16;
    result = [a1 awdlInfo];
    if (result)
    {
      v17 = result;
      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = (a3 + v7[8]);
      *v21 = v18;
      v21[1] = v20;
      result = [a1 aksToken];
      if (result)
      {
        v22 = result;
        v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        result = sub_1004348B0(a2, _s15VisionUnlockiOSV18InitialLockContextVMa);
        v26 = (a3 + v7[9]);
        *v26 = v23;
        v26[1] = v25;
        return result;
      }

      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_100432CBC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

id sub_100432D24()
{
  v1 = *(_s15VisionUnlockiOSV21HandleResponseContextVMa(0) + 28);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationToken) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_100432D94@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = _s15VisionUnlockiOSV21HandleResponseContextVMa(0);
  *(a3 + v6[7]) = 0;
  *(a3 + v6[9]) = 7;
  v7 = v6[10];
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007F8830;
  if (qword_100973880 != -1)
  {
    swift_once();
  }

  *(v8 + 56) = &type metadata for SDAuthentication.Operation.IncludeNextAKSTokenWithLTKSessionInMessage;
  *(v8 + 64) = &off_10097C198;
  *(v8 + 96) = &type metadata for SDAuthentication.Operation.RangeAsResponder;
  *(v8 + 104) = &off_10097C0F0;
  *(v8 + 136) = &type metadata for SDAuthentication.Operation.SendTokenMessage;
  *(v8 + 144) = &off_10097C180;
  *(a3 + v7) = v8;
  if ([a1 hasAksToken])
  {
    v9 = _s15VisionUnlockiOSV23HandlePreRequestContextVMa(0);
    sub_100434848(a2 + *(v9 + 24), a3 + v6[5], type metadata accessor for SDAuthenticationSessionMetrics);
    sub_1002A9938(a2 + 8, a3);
    result = [a1 aksToken];
    if (result)
    {
      v11 = result;
      v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = (a3 + v6[8]);
      *v15 = v12;
      v15[1] = v14;
      v16 = (a2 + *(v9 + 36));
      v17 = *v16;
      v18 = v16[1];
      sub_100294008(*v16, v18);
      result = sub_1004348B0(a2, _s15VisionUnlockiOSV23HandlePreRequestContextVMa);
      v19 = (a3 + v6[6]);
      *v19 = v17;
      v19[1] = v18;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v20 = sub_100010F88(1, 0xD000000000000011, 0x80000001007901B0);
    v22 = v21;
    sub_1000115C8();
    swift_allocError();
    *v23 = v20;
    *(v23 + 8) = v22;
    swift_willThrow();

    sub_1004348B0(a2, _s15VisionUnlockiOSV23HandlePreRequestContextVMa);
  }

  return result;
}

id sub_100433060()
{
  v1 = *(_s15VisionUnlockiOSV18HandleTokenContextVMa(0) + 36);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationConfirmation) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1004330D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A60;
  if (qword_100973880 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.RecordTokenExchangeEnd;
  *(v6 + 64) = &off_10097C168;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.RangeAsInitiator;
  *(v6 + 104) = &off_10097C0D8;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.CheckScreenOn;
  *(v6 + 144) = &off_10097C0C0;
  *(v6 + 176) = &type metadata for SDAuthentication.Operation.ConsumeAKSTokenWithLTKSession;
  *(v6 + 184) = &off_10097C150;
  *(v6 + 216) = &type metadata for SDAuthentication.Operation.IfScreenOffLockDevice;
  *(v6 + 224) = &off_10097C0A8;
  *(v6 + 256) = &type metadata for SDAuthentication.Operation.SendConfirmation;
  *(v6 + 264) = &off_10097C270;
  *(v6 + 296) = &type metadata for SDAuthentication.Operation.RecordSessionFinished;
  *(v6 + 304) = &off_10097BB00;
  *a3 = v6;
  v7 = _s15VisionUnlockiOSV18HandleTokenContextVMa(0);
  *(a3 + v7[9]) = 0;
  *(a3 + v7[10]) = 2;
  if ([a1 hasAksToken])
  {
    v8 = _s15VisionUnlockiOSV20HandleRequestContextVMa(0);
    sub_100434848(a2 + v8[5], a3 + v7[5], type metadata accessor for SDAuthenticationSessionMetrics);
    sub_1002A9938(a2 + v8[6], a3 + v7[6]);
    v9 = (a2 + v8[8]);
    v10 = *v9;
    v11 = v9[1];
    v12 = (a3 + v7[8]);
    *v12 = v10;
    v12[1] = v11;
    sub_100294008(v10, v11);
    result = [a1 aksToken];
    if (result)
    {
      v14 = result;
      v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      result = sub_1004348B0(a2, _s15VisionUnlockiOSV20HandleRequestContextVMa);
      v18 = (a3 + v7[7]);
      *v18 = v15;
      v18[1] = v17;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v19 = sub_100010F88(1, 0xD000000000000019, 0x8000000100789BB0);
    v21 = v20;
    sub_1000115C8();
    swift_allocError();
    *v22 = v19;
    *(v22 + 8) = v21;
    swift_willThrow();

    sub_1004348B0(a2, _s15VisionUnlockiOSV20HandleRequestContextVMa);
  }

  return result;
}

uint64_t sub_1004333B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = a3(a1, a2);
  v4 = [v3 data];

  if (v4)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  else
  {
    v7 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v9 = v8;
    sub_1000115C8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    return swift_willThrow();
  }
}

uint64_t sub_100433488@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_100973880 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.HandleSucceededResult;
  *(v6 + 64) = &off_10097C258;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.ConfirmAKSSessionWithLTKSession;
  *(v6 + 104) = &off_10097C090;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.PostNotificationOfiPhoneUnlockedByVision;
  *(v6 + 144) = &off_10097C078;
  *a3 = v6;
  if ([a1 hasSuccess])
  {
    v7 = *(_s15VisionUnlockiOSV21HandleResponseContextVMa(0) + 20);
    v8 = _s15VisionUnlockiOSV25HandleConfirmationContextVMa(0);
    sub_100434848(a2 + v7, a3 + *(v8 + 24), type metadata accessor for SDAuthenticationSessionMetrics);
    sub_1002A9938(a2, (a3 + 1));
    LOBYTE(v7) = [a1 success];

    result = sub_1004348B0(a2, _s15VisionUnlockiOSV21HandleResponseContextVMa);
    *(a3 + *(v8 + 28)) = v7;
  }

  else
  {
    v10 = sub_100010F88(1, 0xD000000000000016, 0x8000000100789BD0);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();

    sub_1004348B0(a2, _s15VisionUnlockiOSV21HandleResponseContextVMa);
  }

  return result;
}

void sub_100433684(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v136 = a2;
  v131 = a3;
  v109 = _s15VisionUnlockiOSV25HandleConfirmationContextVMa(0);
  __chkstk_darwin(v109);
  v113 = (&v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10028088C(&qword_10097E040, &qword_100802E08);
  __chkstk_darwin(v5 - 8);
  v118 = &v109 - v6;
  v110 = _s15VisionUnlockiOSV18HandleTokenContextVMa(0);
  __chkstk_darwin(v110);
  v117 = (&v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10028088C(&qword_10097E048, &qword_100802E10);
  __chkstk_darwin(v8 - 8);
  v124 = &v109 - v9;
  v119 = _s15VisionUnlockiOSV21HandleResponseContextVMa(0);
  v116 = *(v119 - 8);
  v10 = __chkstk_darwin(v119);
  v111 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v112 = &v109 - v13;
  __chkstk_darwin(v12);
  v123 = &v109 - v14;
  v15 = sub_10028088C(&qword_10097E050, &qword_100802E18);
  __chkstk_darwin(v15 - 8);
  v130 = &v109 - v16;
  v125 = _s15VisionUnlockiOSV20HandleRequestContextVMa(0);
  v122 = *(v125 - 8);
  v17 = __chkstk_darwin(v125);
  v114 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v115 = &v109 - v20;
  __chkstk_darwin(v19);
  v129 = (&v109 - v21);
  v22 = sub_10028088C(&qword_10097E058, &qword_100802E20);
  __chkstk_darwin(v22 - 8);
  v24 = &v109 - v23;
  v25 = _s15VisionUnlockiOSV18InitialLockContextVMa(0);
  v133 = *(v25 - 8);
  v134 = v25;
  v26 = __chkstk_darwin(v25);
  v127 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v128 = &v109 - v28;
  v132 = _s15VisionUnlockiOSV23HandlePreRequestContextVMa(0);
  v126 = *(v132 - 8);
  v29 = __chkstk_darwin(v132);
  v120 = &v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v121 = &v109 - v32;
  __chkstk_darwin(v31);
  v34 = (&v109 - v33);
  v35 = sub_10028088C(&qword_10097E060, &qword_100802E28);
  __chkstk_darwin(v35 - 8);
  v37 = &v109 - v36;
  v38 = _s15VisionUnlockiOSV17InitialKeyContextVMa(0);
  v39 = *(v38 - 8);
  v40 = __chkstk_darwin(v38);
  v42 = &v109 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v44 = &v109 - v43;
  sub_1002A9938(a1, v137);
  sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
  sub_1000276B4(0, &unk_10097DF58, off_1008C8D40);
  if (swift_dynamicCast())
  {
    v45 = v138;
    sub_1002A9938(v136, v137);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v46 = swift_dynamicCast();
    v47 = *(v39 + 56);
    if (!v46)
    {
      v47(v37, 1, 1, v38);
      sub_100005508(v37, &qword_10097E060, &qword_100802E28);
      v61 = sub_100010F88(10, 0xD000000000000046, 0x8000000100789AA0);
      v63 = v62;
      sub_1000115C8();
      swift_allocError();
      *v64 = v61;
      *(v64 + 8) = v63;
      swift_willThrow();

      return;
    }

    v47(v37, 0, 1, v38);
    sub_1004347E0(v37, v44, _s15VisionUnlockiOSV17InitialKeyContextVMa);
    sub_100434848(v44, v42, _s15VisionUnlockiOSV17InitialKeyContextVMa);
    v48 = v45;
    v49 = v135;
    sub_100432424(v48, v42, v34);
    if (v49)
    {
      sub_1004348B0(v44, _s15VisionUnlockiOSV17InitialKeyContextVMa);

      return;
    }

    v81 = v131;
    v131[3] = v132;
    v81[4] = &off_1008E19D0;
    v82 = sub_10002F604(v81);
    sub_1004347E0(v34, v82, _s15VisionUnlockiOSV23HandlePreRequestContextVMa);

    v83 = _s15VisionUnlockiOSV17InitialKeyContextVMa;
    v84 = v44;
    goto LABEL_35;
  }

  v50 = v136;
  sub_1002A9938(a1, v137);
  sub_1000276B4(0, &qword_1009758B8, off_1008C8D48);
  if (swift_dynamicCast())
  {
    v51 = v138;
    sub_1002A9938(v50, v137);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v52 = v134;
    v53 = swift_dynamicCast();
    v54 = *(v133 + 56);
    if (v53)
    {
      v54(v24, 0, 1, v52);
      v55 = v128;
      sub_1004347E0(v24, v128, _s15VisionUnlockiOSV18InitialLockContextVMa);
      v56 = v127;
      sub_100434848(v55, v127, _s15VisionUnlockiOSV18InitialLockContextVMa);
      v57 = v51;
      v58 = v129;
      v59 = v135;
      sub_10043290C(v57, v56, v129);
      if (v59)
      {
        v60 = _s15VisionUnlockiOSV18InitialLockContextVMa;
LABEL_25:
        sub_1004348B0(v55, v60);

        return;
      }

      v92 = v131;
      v131[3] = v125;
      v92[4] = &off_1008E19E8;
      v93 = sub_10002F604(v92);
      sub_1004347E0(v58, v93, _s15VisionUnlockiOSV20HandleRequestContextVMa);

      v94 = _s15VisionUnlockiOSV18InitialLockContextVMa;
      goto LABEL_34;
    }

    v54(v24, 1, 1, v52);
    sub_100005508(v24, &qword_10097E058, &qword_100802E20);
    v72 = "sult, message may be replayed";
    v73 = 0xD000000000000047;
LABEL_31:
    v101 = sub_100010F88(10, v73, v72 | 0x8000000000000000);
    v103 = v102;
    sub_1000115C8();
    swift_allocError();
    *v104 = v101;
    *(v104 + 8) = v103;
    swift_willThrow();

    return;
  }

  sub_1002A9938(a1, v137);
  sub_1000276B4(0, &qword_1009758C0, off_1008C8D50);
  if (!swift_dynamicCast())
  {
    sub_1002A9938(a1, v137);
    sub_1000276B4(0, &qword_1009758C8, off_1008C8D58);
    if (swift_dynamicCast())
    {
      v51 = v138;
      sub_1002A9938(v50, v137);
      sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
      v75 = v124;
      v74 = v125;
      v76 = swift_dynamicCast();
      v77 = *(v122 + 56);
      if (v76)
      {
        v77(v75, 0, 1, v74);
        v55 = v115;
        sub_1004347E0(v75, v115, _s15VisionUnlockiOSV20HandleRequestContextVMa);
        v78 = v114;
        sub_100434848(v55, v114, _s15VisionUnlockiOSV20HandleRequestContextVMa);
        v57 = v51;
        v79 = v117;
        v80 = v135;
        sub_1004330D0(v57, v78, v117);
        if (v80)
        {
          v60 = _s15VisionUnlockiOSV20HandleRequestContextVMa;
          goto LABEL_25;
        }

        v105 = v131;
        v131[3] = v110;
        v105[4] = &off_1008E1A18;
        v106 = sub_10002F604(v105);
        sub_1004347E0(v79, v106, _s15VisionUnlockiOSV18HandleTokenContextVMa);

        v94 = _s15VisionUnlockiOSV20HandleRequestContextVMa;
        goto LABEL_34;
      }

      v77(v75, 1, 1, v74);
      sub_100005508(v75, &qword_10097E048, &qword_100802E10);
      v72 = "t, message may be replayed";
      v73 = 0xD000000000000049;
    }

    else
    {
      sub_1002A9938(a1, v137);
      sub_1000276B4(0, &qword_1009758D0, off_1008C8D08);
      if (!swift_dynamicCast())
      {
        v95 = sub_100010F88(10, 0xD00000000000001FLL, 0x80000001007898F0);
        v97 = v96;
        sub_1000115C8();
        swift_allocError();
        *v98 = v95;
        *(v98 + 8) = v97;
        swift_willThrow();
        return;
      }

      v51 = v138;
      sub_1002A9938(v50, v137);
      sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
      v85 = v118;
      v86 = v119;
      v87 = swift_dynamicCast();
      v88 = *(v116 + 56);
      if (v87)
      {
        v88(v85, 0, 1, v86);
        v55 = v112;
        sub_1004347E0(v85, v112, _s15VisionUnlockiOSV21HandleResponseContextVMa);
        v89 = v111;
        sub_100434848(v55, v111, _s15VisionUnlockiOSV21HandleResponseContextVMa);
        v57 = v51;
        v90 = v113;
        v91 = v135;
        sub_100433488(v57, v89, v113);
        if (v91)
        {
          v60 = _s15VisionUnlockiOSV21HandleResponseContextVMa;
          goto LABEL_25;
        }

        v107 = v131;
        v131[3] = v109;
        v107[4] = &off_1008E1A30;
        v108 = sub_10002F604(v107);
        sub_1004347E0(v90, v108, _s15VisionUnlockiOSV25HandleConfirmationContextVMa);

        v94 = _s15VisionUnlockiOSV21HandleResponseContextVMa;
        goto LABEL_34;
      }

      v88(v85, 1, 1, v86);
      sub_100005508(v85, &qword_10097E040, &qword_100802E08);
      v72 = "Invalid message object received";
      v73 = 0xD00000000000004ALL;
    }

    goto LABEL_31;
  }

  v51 = v138;
  sub_1002A9938(v50, v137);
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  v65 = v130;
  v66 = v132;
  v67 = swift_dynamicCast();
  v68 = *(v126 + 56);
  if (!v67)
  {
    v68(v65, 1, 1, v66);
    sub_100005508(v65, &qword_10097E050, &qword_100802E18);
    v72 = "AWDL failed to start";
    v73 = 0xD00000000000004CLL;
    goto LABEL_31;
  }

  v68(v65, 0, 1, v66);
  v55 = v121;
  sub_1004347E0(v65, v121, _s15VisionUnlockiOSV23HandlePreRequestContextVMa);
  v69 = v120;
  sub_100434848(v55, v120, _s15VisionUnlockiOSV23HandlePreRequestContextVMa);
  v57 = v51;
  v70 = v123;
  v71 = v135;
  sub_100432D94(v57, v69, v123);
  if (v71)
  {
    v60 = _s15VisionUnlockiOSV23HandlePreRequestContextVMa;
    goto LABEL_25;
  }

  v99 = v131;
  v131[3] = v119;
  v99[4] = &off_1008E1A00;
  v100 = sub_10002F604(v99);
  sub_1004347E0(v70, v100, _s15VisionUnlockiOSV21HandleResponseContextVMa);

  v94 = _s15VisionUnlockiOSV23HandlePreRequestContextVMa;
LABEL_34:
  v83 = v94;
  v84 = v55;
LABEL_35:
  sub_1004348B0(v84, v83);
}

uint64_t sub_1004347E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100434848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004348B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100434938(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    sub_1002A6B90(319, &unk_100977800, &protocol descriptor for SDAuthenticationRangingSessionProtocol);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics(319);
      if (v3 <= 0x3F)
      {
        sub_1000276B4(319, &qword_1009758B8, off_1008C8D48);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100434A50(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_1002A6B90(319, &unk_100977800, &protocol descriptor for SDAuthenticationRangingSessionProtocol);
      if (v3 <= 0x3F)
      {
        sub_1002A6C94(319, &unk_100975A90, &qword_1009758C0, off_1008C8D50);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100434B88(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_1002A6B90(319, &unk_100977800, &protocol descriptor for SDAuthenticationRangingSessionProtocol);
      if (v3 <= 0x3F)
      {
        sub_1002A6C94(319, &unk_100975B40, &qword_1009758D0, off_1008C8D08);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100434CB4(uint64_t a1)
{
  sub_1002A6B90(319, &unk_100977800, &protocol descriptor for SDAuthenticationRangingSessionProtocol);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_1002A6C94(319, &unk_100975BE8, &qword_1009758C8, off_1008C8D58);
      if (v3 <= 0x3F)
      {
        sub_1002A6B2C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100434DD0(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    sub_1002A6B90(319, &unk_100977800, &protocol descriptor for SDAuthenticationRangingSessionProtocol);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100434E94()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097E3A8);
  v1 = sub_10000C4AC(v0, qword_10097E3A8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100434F5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferObserverClientsBundleIDs;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double SDAirDropService.transferObserverClientsBundleIDs.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_10043500C()
{
  sub_10028088C(&unk_10097E7B0, qword_100804108);
  v0 = type metadata accessor for SFAirDropClient.Identifier();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007F5670;
  result = (*(v1 + 104))(v3 + v2, enum case for SFAirDropClient.Identifier.shareSheet(_:), v0);
  qword_1009A0B88 = v3;
  return result;
}

void sub_1004350F0()
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v1 - 8);
  v219 = v211 - v2;
  v3 = type metadata accessor for SFAirDrop.Transfers();
  v230 = *(v3 - 8);
  v231 = v3;
  v4 = __chkstk_darwin(v3);
  v216 = v211 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v229 = v211 - v6;
  v228 = sub_10028088C(&qword_10097E668, &qword_1008040C0);
  v222 = *(v228 - 8);
  v7 = __chkstk_darwin(v228);
  v217 = v8;
  v218 = v211 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v245 = v211 - v9;
  v232 = sub_10028088C(&qword_100977DA0, &unk_1007FB2F0);
  v221 = *(v232 - 8);
  __chkstk_darwin(v232);
  v227 = v211 - v10;
  v226 = sub_10028088C(&qword_10097AD18, &unk_1007FDF70);
  v220 = *(v226 - 8);
  __chkstk_darwin(v226);
  v225 = v211 - v11;
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v12 - 8);
  v249 = v12;
  v250 = v13;
  __chkstk_darwin(v12);
  v15 = v211 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v16);
  v18 = v211 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v19 - 8);
  v21 = v211 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_deviceStatus;
  v23 = [objc_opt_self() sharedMonitor];
  v251 = v22;
  *&v0[v22] = v23;
  v24 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearbyAgent;
  v25 = [objc_opt_self() sharedNearbyAgent];
  v248 = v24;
  *&v0[v24] = v25;
  v26 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_bleController;
  if (qword_100973AF8 != -1)
  {
    swift_once();
  }

  v27 = qword_1009A0CA0;
  v242 = v26;
  *&v26[v0] = qword_1009A0CA0;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nwAgent] = 0;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferObserverTask] = 0;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferObserverClientsBundleIDs] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferPresenters] = _swiftEmptyArrayStorage;
  v243 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_queue;
  v28 = sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  v252 = v0;
  v247 = "OS";
  v29 = v27;
  static DispatchQoS.default.getter();
  *&v266 = _swiftEmptyArrayStorage;
  v30 = sub_100443FCC(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v31 = sub_10028088C(&unk_10097A630, &unk_1007F5680);
  v238 = sub_100011630(&qword_100973C70, &unk_10097A630, &unk_1007F5680, &protocol conformance descriptor for [A]);
  v239 = v31;
  v240 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v33 = v250 + 104;
  v32 = *(v250 + 104);
  v237 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v236 = v32;
  v32(v15);
  v34 = v252;
  v241 = v21;
  v244 = v28;
  *&v34[v243] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v35 = v251;
  v36 = *&v34[v251];
  if (!v36)
  {
    __break(1u);
    goto LABEL_35;
  }

  type metadata accessor for SDAirDropLegacySessionLogger(0);
  swift_allocObject();
  v37 = sub_100560090(v36);
  v247 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_sessionLogger;
  *&v34[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_sessionLogger] = v37;
  v38 = *&v34[v35];
  if (!v38)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v233 = v16;
  v234 = v18;
  v235 = v15;
  v250 = v33;
  v39 = objc_allocWithZone(IDSService);
  v246 = v38;
  v40 = v36;
  v41 = String._bridgeToObjectiveC()();
  v42 = [v39 initWithService:v41];

  if (!v42)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v43 = type metadata accessor for SDPseudonymNetworkPathMonitor();
  swift_allocObject();
  v44 = v42;
  v45 = sub_100531094();
  v267 = &type metadata for SDPseudonymPropertiesProvider;
  v268 = &off_1008E4190;
  v264 = &type metadata for SDPseudonymStorage;
  v265 = &off_1008DA720;
  v261 = v43;
  v262 = &off_1008E6270;
  v260[0] = v45;
  type metadata accessor for SDAirDropPseudonymService(0);
  v46 = swift_allocObject();
  sub_10002F5B4(&v266, &type metadata for SDPseudonymPropertiesProvider);
  sub_10002F5B4(v263, v264);
  v47 = sub_10002F5B4(v260, v261);
  v224 = v211;
  __chkstk_darwin(v47);
  v49 = (v211 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49);
  v51 = *v49;
  v259[3] = sub_1000276B4(0, &unk_100985A30, IDSService_ptr);
  v259[4] = &off_1008E7BC0;
  v223 = v44;
  v259[0] = v44;
  v258[3] = &type metadata for SDPseudonymPropertiesProvider;
  v258[4] = &off_1008E4190;
  v257[3] = &type metadata for SDPseudonymStorage;
  v257[4] = &off_1008DA720;
  v256[3] = v43;
  v256[4] = &off_1008E6270;
  v256[0] = v51;
  *(v46 + 22) = 0;
  *(v46 + 23) = 0;
  v52 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_lastProvisionAttempt;
  v53 = type metadata accessor for Date();
  (*(*(v53 - 8) + 56))(&v46[v52], 1, 1, v53);
  *&v46[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_processStartupDelaySeconds] = 0x4014000000000000;
  *&v46[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_provisionThrottleDefaultSeconds] = 0x404E000000000000;
  sub_1002A9938(v259, (v46 + 16));
  sub_1002A9938(v258, (v46 + 56));
  sub_1002A9938(v257, (v46 + 96));
  sub_1002A9938(v256, (v46 + 136));
  v54 = v246;
  *&v46[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_deviceStatus] = v246;
  *&v46[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_provisionThrottleSeconds] = 0x404E000000000000;
  v55 = v54;
  if (sub_1004E701C())
  {
    v56 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    v57 = *(v46 + 20);
    v58 = *(v46 + 21);
    sub_10002F5B4((v46 + 136), v57);
    v59 = *(v58 + 16);

    v59(sub_100443FC4, v56, v57, v58);
    swift_endAccess();

    sub_1005EB438();
  }

  else
  {
    if (qword_100973B50 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_10000C4AC(v60, qword_100986460);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Pseudonym service is disabled", v63, 2u);

      v55 = v61;
    }

    else
    {
    }
  }

  v64 = v223;

  sub_10000C60C(v259);
  sub_10000C60C(v256);
  sub_10000C60C(v257);
  sub_10000C60C(v258);

  sub_10000C60C(v260);
  sub_10000C60C(v263);
  sub_10000C60C(&v266);
  v65 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_pseudonymService;
  v66 = v252;
  *&v252[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_pseudonymService] = v46;
  if (qword_100973A08 != -1)
  {
    swift_once();
  }

  v67 = v251;
  v68 = *(v66 + v251);
  if (!v68)
  {
    goto LABEL_37;
  }

  v69 = qword_1009831A8;
  v70 = objc_allocWithZone(type metadata accessor for SDAirDropIDMSService(0));
  v71 = sub_100376808(v69, v68);
  v72 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_idmsService;
  *(v66 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_idmsService) = v71;
  v73 = type metadata accessor for SDAirDropUISessionManager(0);
  v74 = [objc_allocWithZone(v73) init];
  v75 = v66 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_airDropUISessionManager;
  v75[3] = v73;
  v75[4] = &off_1008E1BD8;
  v246 = v75;
  *v75 = v74;
  v76 = *(v66 + v67);
  if (!v76)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v77 = *(v66 + v248);
  if (!v77)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v78 = *&v242[v66];
  v79 = *&v247[v66];
  v224 = v65;
  v80 = *&v65[v66];
  v213 = v72;
  v81 = *(v66 + v72);
  v82 = type metadata accessor for SDAirDropEndpointService(0);
  v83 = objc_allocWithZone(v82);
  *&v83[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_applicationServiceBrowser] = 0;
  *&v83[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourBrowser] = 0;
  v84 = &v83[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_classroomBrowser];
  *v84 = 0;
  *(v84 + 1) = 0;
  v85 = v78;

  v86 = v81;
  v87 = v77;
  v88 = v76;
  UUID.init()();
  *&v83[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscoveredEndpoints] = &_swiftEmptySetSingleton;
  *&v83[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered] = &_swiftEmptyDictionarySingleton;
  *&v83[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_browseClientIDs] = &_swiftEmptySetSingleton;
  *&v83[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_displayableIDs] = &_swiftEmptySetSingleton;
  *&v83[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_connectableByDisplayableID] = &_swiftEmptyDictionarySingleton;
  *&v83[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_transferringConnectables] = &_swiftEmptySetSingleton;
  *&v83[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_receivingDisplayables] = &_swiftEmptyDictionarySingleton;
  *&v83[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_delegateByConnectableID] = &_swiftEmptyDictionarySingleton;
  *&v83[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourDiscoveryContinuations] = &_swiftEmptyDictionarySingleton;
  v89 = &v83[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler];
  *v89 = 0;
  *(v89 + 1) = 0;
  *&v83[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v83[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus] = v88;
  *&v83[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_nearbyAgent] = v87;
  *&v83[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bleController] = v85;
  *&v83[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_sessionLogger] = v79;
  *&v83[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_pseudonymService] = v80;
  *&v83[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_idmsService] = v86;
  v255.receiver = v83;
  v255.super_class = v82;
  v223 = v85;

  v215 = v86;
  v90 = v87;
  v91 = v88;
  v92 = objc_msgSendSuper2(&v255, "init");
  v93 = objc_opt_self();
  v94 = v92;
  v214 = v93;
  v95 = [v93 defaultCenter];
  [v95 addObserver:v94 selector:"screenStateChangedWithNotification:" name:@"com.apple.sharingd.ScreenStateChanged" object:0];
  if (qword_100973550 != -1)
  {
    swift_once();
  }

  [v95 addObserver:v94 selector:"nearFieldDidTap" name:qword_1009A0648 object:0];

  v96 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_endpointService;
  v97 = v251;
  v98 = v252;
  *&v252[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_endpointService] = v94;
  v99 = *&v98[v97];
  if (!v99)
  {
    goto LABEL_40;
  }

  v212 = v96;
  v100 = *&v98[v248];
  if (!v100)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v215 = *&v247[v252];
  v223 = *&v224[v252];
  sub_1002A9938(v246, &v266);
  type metadata accessor for SDAirDropSendService();
  v101 = swift_allocObject();
  v101[6] = 0;
  swift_unknownObjectWeakInit();
  v102 = v94;

  v103 = v100;
  v104 = v99;
  static DispatchQoS.default.getter();
  v263[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v236(v235, v237, v249);
  v211[1] = "e.alloy.airdrop.walkaway";
  v105 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v101[16] = v105;
  v101[3] = v104;
  v101[4] = v103;
  v101[7] = v215;
  v101[8] = &_swiftEmptyDictionarySingleton;
  v101[9] = v102;
  v106 = v102;
  v107 = v103;
  v108 = v104;
  v109 = v105;
  v263[0] = sub_1002812E0(_swiftEmptyArrayStorage);
  v110 = sub_10028088C(&qword_100977DB0, &qword_1007FB300);
  swift_allocObject();
  v101[2] = CurrentValueSubject.init(_:)();
  type metadata accessor for SDAirDropSendStateMachine();
  v111 = swift_allocObject();
  v111[9] = &_swiftEmptyDictionarySingleton;
  v111[2] = v109;
  v111[3] = v108;
  v112 = v252;
  v113 = v223;
  v111[4] = v106;
  v111[5] = v113;
  v111[6] = v107;
  type metadata accessor for SDAirDropiOSHapticsManager();
  v114 = swift_allocObject();
  v114[3] = 0;
  v114[4] = 0;
  v114[2] = 0;
  v111[7] = v114;
  v111[8] = &off_1008DA630;

  sub_1002DD168();

  v101[10] = v111;
  sub_1000121F8(&v266, (v101 + 11));
  v115 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_sendService;
  *(v112 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_sendService) = v101;
  v116 = *(v112 + v251);
  if (!v116)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v215 = v115;
  v223 = v110;
  v117 = *(v112 + v248);
  if (!v117)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    return;
  }

  v118 = *&v242[v112];
  v119 = *&v247[v112];
  v120 = *(v112 + v212);
  v121 = *&v224[v112];
  sub_1002A9938(v246, &v266);
  v122 = *(v112 + v213);
  type metadata accessor for SDAirDropReceiveService();
  v123 = swift_allocObject();
  *(v123 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v123 + 112) = 0u;
  v248 = v123 + 112;
  *(v123 + 144) = 0;
  *(v123 + 128) = 0u;
  v124 = v116;
  v247 = v117;
  v242 = v118;
  v125 = v119;

  v126 = v120;
  v127 = v121;
  v128 = v123;

  v224 = v122;
  static DispatchQoS.default.getter();
  v263[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v236(v235, v237, v249);
  v129 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v123 + 168) = v129;
  *(v123 + 16) = v124;
  *(v123 + 24) = v126;
  *(v123 + 152) = v125;
  v130 = v125;
  *(v123 + 160) = &_swiftEmptyDictionarySingleton;
  type metadata accessor for SDAirDropReceiveConnectionManager(0);
  v131 = swift_allocObject();
  v131[3] = 0;
  swift_unknownObjectWeakInit();
  v131[5] = 0;
  swift_unknownObjectWeakInit();
  *(v131 + 28) = 0;
  v250 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleScannerID;
  v132 = v124;
  v133 = v126;
  v134 = v129;
  v135 = v132;
  v240 = v247;
  v136 = v242;

  v137 = v133;

  v138 = v224;
  v139 = v134;
  UUID.init()();
  *(v131 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleHashes) = &_swiftEmptySetSingleton;
  v140 = (v131 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServer);
  *v140 = 0;
  v140[1] = 0;
  *(v131 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServerErrors) = &_swiftEmptySetSingleton;
  v141 = (v131 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServer);
  *v141 = 0;
  v141[1] = 0;
  *(v131 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServerErrors) = &_swiftEmptySetSingleton;
  *(v131 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldTransactions) = &_swiftEmptySetSingleton;
  *(v131 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldServersByTransactionID) = &_swiftEmptyDictionarySingleton;
  *(v131 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldServerErrors) = &_swiftEmptySetSingleton;
  *(v131 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_quicReceiveHandlers) = &_swiftEmptyDictionarySingleton;
  *(v131 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourReceiveHandlers) = &_swiftEmptyDictionarySingleton;
  *(v131 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourLegacyReceiveHandlers) = _swiftEmptyArrayStorage;
  *(v131 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourDiscoveryHandlers) = _swiftEmptyArrayStorage;
  *(v131 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_lastDiscoverableLevel) = 0;
  v142 = (v131 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_appleIDState);
  *v142 = 0;
  v142[1] = 0;
  *(v131 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_lastWirelessBluetoothStateEnabled) = 0;
  *(v131 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_togetherDefaultsObserver) = 0;
  v239 = v135;
  v131[6] = v135;
  v143 = v240;
  v131[7] = v240;
  v131[8] = v137;
  v247 = v136;
  v131[15] = v136;
  v249 = v127;
  v131[10] = v127;
  v131[11] = v130;
  v241 = v139;
  v242 = v138;
  v131[9] = v138;
  v131[12] = v139;
  v144 = [v214 defaultCenter];

  v131[13] = v144;
  v250 = v128;
  *(v128 + 32) = v131;
  type metadata accessor for SDAirDropReceiveStateMachineAdaptor();
  v145 = swift_allocObject();
  v145[3] = 0;
  swift_unknownObjectWeakInit();
  v146 = sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v147 = v143;

  v240 = v146;
  v148 = static NSUserDefaults.airdrop.getter();
  LOBYTE(v137) = SFAirDropUserDefaults.privateContactDiscoveryEnabled.getter();

  if (v137)
  {
    type metadata accessor for SDAirDropReceiveStateMachine();
    swift_allocObject();
    v149 = v147;
    v150 = v239;
    v151 = v149;
    v238 = v149;
    v152 = sub_100542188(v239, v149);

    v131[3] = &off_1008E6358;
    swift_unknownObjectWeakAssign();
    v153 = [objc_allocWithZone(SDAirDropClassroomTransferManager) init];

    v154 = static OS_dispatch_queue.main.getter();
    v155 = type metadata accessor for SDAirDropReceiveClassroomHandler();
    v244 = v147;
    v156 = v155;
    v157 = objc_allocWithZone(v155);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *&v157[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_queue] = v154;
    *&v157[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_stateMachine] = v152;
    swift_unknownObjectWeakAssign();

    v158 = v154;
    *&v157[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_continuations] = sub_100280464(_swiftEmptyArrayStorage);
    v253.receiver = v157;
    v253.super_class = v156;
    v147 = v244;
    v159 = objc_msgSendSuper2(&v253, "init");

    swift_unknownObjectWeakAssign();
    v160 = v159;
    [v153 setAlertManager:v160];

    v161 = v159 | 0x8000000000000000;
  }

  else
  {

    v131 = [objc_allocWithZone(SDAirDropReceiveManager) init];
    v152 = [objc_allocWithZone(SDAirDropClassroomTransferManager) init];
    v162 = [objc_allocWithZone(SDAirDropTransferManager) init];
    [v131 setAlertManager:v162];
    [v162 setDelegate:v131];
    v153 = v162;
    [v152 setAlertManager:v153];

    v161 = 0;
  }

  v145[4] = v131;
  v145[5] = v152;
  v145[6] = v153;
  v145[7] = v161;
  v163 = v250;
  *(v250 + 40) = v145;
  v263[0] = sub_100281B7C(_swiftEmptyArrayStorage);
  sub_10028088C(&qword_10097AD28, &unk_1007FDF80);
  swift_allocObject();
  *(v163 + 48) = CurrentValueSubject.init(_:)();
  sub_1002A9938(&v266, v163 + 72);
  v164 = static NSUserDefaults.airdrop.getter();
  v165 = SFAirDropUserDefaults.privateContactDiscoveryEnabled.getter();

  if (v165)
  {
    v166 = type metadata accessor for SDAirDropiOSNotificationManager();
    v167 = [objc_allocWithZone(v166) init];
    v168 = &off_1008DE010;
  }

  else
  {
    v166 = type metadata accessor for SDAirDropPlatformNotificationManagerUnsupported();
    v167 = swift_allocObject();
    v167[3] = 0;
    swift_unknownObjectWeakInit();
    v168 = &off_1008E51C0;
  }

  v169 = v243;
  v170 = v251;
  v264 = v166;
  v265 = v168;

  v263[0] = v167;
  sub_10000C60C(&v266);
  v171 = v248;
  swift_beginAccess();
  sub_100443E18(v263, v171);
  swift_endAccess();
  v172 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_receiveService;
  v173 = v252;
  *&v252[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_receiveService] = v250;
  v174 = *(v173 + v169);
  sub_1002A9938(v246, v263);
  v175 = *(v173 + v170);
  if (!v175)
  {
    goto LABEL_44;
  }

  sub_1002A9938(v263, &v266);
  v176 = type metadata accessor for SDAirDropNearFieldService(0);
  v177 = objc_allocWithZone(v176);
  v178 = v174;
  v179 = v175;
  v180 = sub_1002D67C8(v178, &v266, v179);
  v267 = v176;
  v268 = &off_1008D9BB0;

  *&v266 = v180;
  sub_10000C60C(v263);
  sub_1000121F8(&v266, v173 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService);
  type metadata accessor for SDTempPairingService(0);
  swift_allocObject();
  *(v173 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_pairingService) = sub_100420174();
  sub_10028088C(&qword_10097E670, &qword_1008040C8);
  AirDropMachServiceName.getter();
  v181 = *(v173 + v169);
  *(v173 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_xpcListener) = SFXPCListener.__allocating_init(machServiceName:queue:)();
  *&v266 = *(*(v173 + v172) + 48);
  sub_100011630(&qword_10097AD30, &qword_10097AD28, &unk_1007FDF80, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  Publisher<>.values.getter();
  *&v266 = *(*&v215[v173] + 16);
  sub_100011630(&qword_100977DB8, &qword_100977DB0, &qword_1007FB300, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  Publisher<>.values.getter();
  sub_100011630(&qword_10097E678, &qword_10097AD18, &unk_1007FDF70, &protocol conformance descriptor for AsyncPublisher<A>);
  sub_100011630(&qword_10097E680, &qword_100977DA0, &unk_1007FB2F0, &protocol conformance descriptor for AsyncPublisher<A>);
  static SFAirDrop.Transfers.stream<A, B>(receiveTransferSeq:sendTransfersSeq:)();
  sub_100281B7C(_swiftEmptyArrayStorage);
  sub_1002812E0(_swiftEmptyArrayStorage);
  v182 = v229;
  SFAirDrop.Transfers.init(receiveTransfers:sendTransfers:)();
  (*(v230 + 16))(v216, v182, v231);
  sub_10028088C(&qword_10097E688, &qword_1008040D0);
  swift_allocObject();
  *(v173 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transfersSubject) = CurrentValueSubject.init(_:)();
  v183 = type metadata accessor for SDAirDropService();
  v254.receiver = v173;
  v254.super_class = v183;
  v184 = objc_msgSendSuper2(&v254, "init");
  *(*&v184[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_endpointService] + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_delegate + 8) = &off_1008E1A48;
  swift_unknownObjectWeakAssign();
  *(*&v184[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_sendService] + 48) = &off_1008E1A88;
  swift_unknownObjectWeakAssign();
  v185 = *&v184[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_receiveService];
  *(v185 + 64) = &off_1008E1A60;
  swift_unknownObjectWeakAssign();
  v186 = *(v185 + 32);
  swift_unknownObjectWeakLoadStrong();
  *(v186 + 40) = *(v185 + 64);
  swift_unknownObjectWeakAssign();
  v187 = v184;
  swift_unknownObjectRelease();
  v188 = &v187[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService];
  swift_beginAccess();
  v189 = *(v188 + 24);
  v190 = *(v188 + 32);
  sub_10002F5B4(v188, v189);
  v191 = *(v190 + 16);
  v192 = v187;
  v191(v184, &off_1008E1AA0, v189, v190);
  swift_endAccess();
  v193 = type metadata accessor for TaskPriority();
  v194 = v219;
  (*(*(v193 - 8) + 56))(v219, 1, 1, v193);
  v195 = v222;
  v196 = v218;
  (*(v222 + 16))(v218, v245, v228);
  v197 = qword_1009735E0;
  v198 = v192;
  if (v197 != -1)
  {
    swift_once();
  }

  v199 = static AirDropActor.shared;
  v200 = sub_100443FCC(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v201 = (*(v195 + 80) + 32) & ~*(v195 + 80);
  v202 = (v217 + v201 + 7) & 0xFFFFFFFFFFFFFFF8;
  v203 = swift_allocObject();
  *(v203 + 16) = v199;
  *(v203 + 24) = v200;
  v204 = v196;
  v205 = v228;
  (*(v195 + 32))(v203 + v201, v204, v228);
  *(v203 + v202) = v198;

  *&v198[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferObserverTask] = sub_1002B3098(0, 0, v194, &unk_1008040E0, v203);

  v206 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_xpcListener;
  v207 = *&v198[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_xpcListener];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v208 = v207;

  SFXPCListener.didAddConnectionHandler.setter();

  v209 = *&v198[v206];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v210 = v209;

  SFXPCListener.didRemoveConnectionHandler.setter();

  (*(v230 + 8))(v229, v231);
  (*(v195 + 8))(v245, v205);
  (*(v221 + 8))(v227, v232);
  (*(v220 + 8))(v225, v226);
}

uint64_t sub_100436FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for SFAirDrop.Transfers();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_10028088C(&qword_10097E690, &qword_1008040E8);
  v5[8] = swift_task_alloc();
  v7 = sub_10028088C(&qword_10097E698, &unk_1008040F0);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v5[12] = static AirDropActor.shared;

  return _swift_task_switch(sub_100437180, v8, 0);
}

uint64_t sub_100437180()
{
  sub_10028088C(&qword_10097E668, &qword_1008040C0);
  SFNoThrowAsyncSequence.makeAsyncIterator()();
  v1 = sub_100443FCC(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transfersSubject;
  v0[13] = v1;
  v0[14] = v2;
  v3 = sub_100011630(&qword_10097E6A0, &qword_10097E698, &unk_1008040F0, &protocol conformance descriptor for SFNoThrowAsyncSequence<A>.AsyncIterator);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1004372B8;
  v5 = v0[8];
  v6 = v0[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v5, v6, v3);
}

uint64_t sub_1004372B8()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100437624;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100437450;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_10043746C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[7], v1, v2);
    CurrentValueSubject.value.setter();
    v6 = sub_100011630(&qword_10097E6A0, &qword_10097E698, &unk_1008040F0, &protocol conformance descriptor for SFNoThrowAsyncSequence<A>.AsyncIterator);
    v7 = swift_task_alloc();
    v0[15] = v7;
    *v7 = v0;
    v7[1] = sub_1004372B8;
    v8 = v0[8];
    v9 = v0[9];

    return dispatch thunk of AsyncIteratorProtocol.next()(v8, v9, v6);
  }
}

uint64_t sub_100437624()
{
  *(v0 + 16) = *(v0 + 128);
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void sub_1004376B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100443640(a1);
  }
}

void sub_10043770C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100437CD8(a1);
  }
}

void sub_10043778C()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v2 - 8);
  v4 = &v23[-v3];
  if (qword_100973888 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_10097E3A8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Starting AirDrop Service", v8, 2u);
  }

  *(swift_allocObject() + 16) = v1;
  v9 = v1;
  SFXPCListener.contextProvider.setter();
  SFXPCListener.resume()();
  v10 = [objc_allocWithZone(SDAirDropAgent) initWithEndpointService:*&v9[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_endpointService]];
  v11 = *&v9[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nwAgent];
  *&v9[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nwAgent] = v10;

  sub_1003134E0();
  sub_100396BFC();
  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(&v9[v12], v24);
  v13 = v25;
  v14 = v26;
  sub_10002CDC0(v24, v25);
  (*(v14 + 40))(v13, v14);
  sub_10000C60C(v24);
  v15 = *&v9[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_idmsService];
  type metadata accessor for SFAirDropUserDefaults();
  v16 = static SFAirDropUserDefaults.shared.getter();
  LOBYTE(v9) = SFAirDropUserDefaults.privacyImprovements.getter();

  if (v9)
  {
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
    v18 = qword_1009735E0;
    v19 = v15;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = static AirDropActor.shared;
    v21 = sub_100443FCC(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v22 = swift_allocObject();
    v22[2] = v20;
    v22[3] = v21;
    v22[4] = v19;

    sub_1002B3098(0, 0, v4, &unk_1008040B8, v22);
  }
}

uint64_t sub_100437B10()
{
  v1 = v0;
  if (qword_100973888 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097E3A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stopping AirDrop Service", v5, 2u);
  }

  SFXPCListener.invalidate()();
  SFXPCListener.contextProvider.setter();
  sub_100396F18();
  sub_100318400();
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v6, v11);
  v7 = v12;
  v8 = v13;
  sub_10002CDC0(v11, v12);
  (*(v8 + 48))(v7, v8);
  sub_10000C60C(v11);
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferObserverTask;
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferObserverTask))
  {

    Task.cancel()();
  }

  *(v1 + v9) = 0;
}

uint64_t sub_100437CD8(uint64_t a1)
{
  v2 = type metadata accessor for SDAirDropService.TransferPresenterClient(0);
  __chkstk_darwin(v2 - 8);
  v42 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v4 - 8);
  v6 = &v42 - v5;
  v7 = type metadata accessor for UUID();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SFClientIdentity();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973888 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_10097E3A8);
  v14 = *(v10 + 16);
  v44 = a1;
  v14(v12, a1, v9);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v48[0] = v18;
    *v17 = 136315138;
    sub_100443FCC(&qword_1009761E8, &type metadata accessor for SFClientIdentity, &protocol conformance descriptor for SFClientIdentity);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v10 + 8))(v12, v9);
    v22 = sub_10000C4E4(v19, v21, v48);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Removing AirDrop Client %s", v17, 0xCu);
    sub_10000C60C(v18);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v23 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  v24 = v47;
  swift_beginAccess();
  sub_1002A9938(v24 + v23, v48);
  v25 = v49;
  v26 = v50;
  sub_10002CDC0(v48, v49);
  (*(v26 + 136))(v44, v25, v26);
  sub_10000C60C(v48);
  v27 = SFClientIdentity.bundleIdentifier.getter();
  v30 = v45;
  v29 = v46;
  if (v28)
  {
    v31 = v27;
    v32 = v28;
    swift_beginAccess();
    sub_10036DB18(v31, v32);
    swift_endAccess();
  }

  SFClientIdentity.connectionID.getter();
  if ((*(v30 + 48))(v6, 1, v29) == 1)
  {
    return sub_100005508(v6, &unk_100976120, &qword_1007F9260);
  }

  v34 = v43;
  (*(v30 + 32))();
  v35 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferPresenters;
  v36 = swift_beginAccess();
  v37 = *(v24 + v35);
  __chkstk_darwin(v36);
  *(&v42 - 2) = v34;

  v38 = sub_1002CCF44(sub_100443C44, (&v42 - 4), v37);
  v40 = v39;

  if ((v40 & 1) == 0)
  {
    swift_beginAccess();
    v41 = v42;
    sub_1002CD290(v38, v42);
    sub_100443C64(v41, type metadata accessor for SDAirDropService.TransferPresenterClient);
    swift_endAccess();
  }

  return (*(v30 + 8))(v34, v29);
}

void sub_100438288(uint64_t a1, unint64_t a2, double a3, double a4, double a5, double a6)
{
  v116 = a1;
  v119 = a2;
  v10 = type metadata accessor for SFClientIdentity();
  v110 = *(v10 - 8);
  v111 = v10;
  __chkstk_darwin(v10);
  v108 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for SDAirDropService.TransferPresenterClient(0);
  v106 = *(v105 - 8);
  v12 = __chkstk_darwin(v105);
  v102 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v103 = &v99 - v15;
  v16 = __chkstk_darwin(v14);
  v101 = &v99 - v17;
  v18 = __chkstk_darwin(v16);
  v100 = &v99 - v19;
  __chkstk_darwin(v18);
  v104 = &v99 - v20;
  v21 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v21 - 8);
  v112 = (&v99 - v22);
  v23 = type metadata accessor for UUID();
  v114 = *(v23 - 8);
  v115 = v23;
  v24 = __chkstk_darwin(v23);
  v107 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v113 = (&v99 - v26);
  v27 = type metadata accessor for SFAirDropClient.Identifier();
  v28 = *(v27 - 1);
  __chkstk_darwin(v27);
  v30 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973890 != -1)
  {
LABEL_38:
    swift_once();
  }

  v31 = qword_1009A0B88;
  v32 = *(qword_1009A0B88 + 16);
  v33 = (v28 + 16);

  v34 = 0;
  while (v32 != v34)
  {
    if (v34 >= *(v31 + 16))
    {
      __break(1u);
      goto LABEL_38;
    }

    (*(v28 + 16))(v30, v31 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v34++, v27);
    v35 = static SFAirDropClient.Identifier.== infix(_:_:)();
    (*(v28 + 8))(v30, v27);
    if (v35)
    {

      if (qword_100973888 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_10000C4AC(v36, qword_10097E3A8);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Unsupported client for presenter", v39, 2u);
        goto LABEL_15;
      }

      goto LABEL_16;
    }
  }

  v40 = v112;
  SFClientIdentity.connectionID.getter();
  v41 = v114;
  v42 = v115;
  if ((*(v114 + 48))(v40, 1, v115) != 1)
  {
    v56 = v113;
    (*(v41 + 32))(v113, v40, v42);
    if (qword_100973888 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    v58 = sub_10000C4AC(v57, qword_10097E3A8);
    v59 = v107;
    (*(v41 + 16))(v107, v56, v42);
    v108 = v58;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = v59;
      v63 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v118[0] = v99;
      *v63 = 136315138;
      sub_100443FCC(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v41;
      v67 = v66;
      v112 = *(v65 + 8);
      v112(v62, v42);
      v68 = sub_10000C4E4(v64, v67, v118);

      *(v63 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v60, v61, "Becoming presenter for connectionID %s", v63, 0xCu);
      sub_10000C60C(v99);
    }

    else
    {

      v112 = *(v41 + 8);
      v112(v59, v42);
    }

    v69 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferPresenters;
    v70 = v109;
    v71 = swift_beginAccess();
    v72 = *(v70 + v69);
    __chkstk_darwin(v71);
    *(&v99 - 2) = v113;

    v73 = sub_1002CCF44(sub_1004440EC, (&v99 - 4), v72);
    v75 = v74;

    if (v75)
    {
      v76 = v103;
      (*(v110 + 16))(v103, v116, v111);
      v77 = v105;
      (*v33)(v76 + *(v105 + 20), v119, v27);
      v78 = (v76 + *(v77 + 24));
      *v78 = a3;
      v78[1] = a4;
      v78[2] = a5;
      v78[3] = a6;
      v79 = v102;
      sub_100444014(v76, v102, type metadata accessor for SDAirDropService.TransferPresenterClient);
      swift_beginAccess();
      v80 = *(v70 + v69);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v70 + v69) = v80;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v80 = sub_10028EFB8(0, v80[2] + 1, 1, v80);
        *(v70 + v69) = v80;
      }

      v83 = v80[2];
      v82 = v80[3];
      if (v83 >= v82 >> 1)
      {
        v80 = sub_10028EFB8((v82 > 1), v83 + 1, 1, v80);
      }

      v80[2] = v83 + 1;
      sub_10044407C(v79, v80 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v83, type metadata accessor for SDAirDropService.TransferPresenterClient);
      *(v70 + v69) = v80;
      swift_endAccess();
      sub_100443C64(v76, type metadata accessor for SDAirDropService.TransferPresenterClient);
      v112(v113, v115);
      return;
    }

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v84, v85, "Presenter already exists, becoming first presenter", v86, 2u);
    }

    if ((v73 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v87 = v109;
      v88 = *(v109 + v69);
      if (v73 < *(v88 + 16))
      {
        v119 = (*(v106 + 80) + 32) & ~*(v106 + 80);
        v117 = *(v106 + 72);
        v89 = v88 + v119 + v117 * v73;
        v90 = v104;
        (*(v110 + 16))(v104, v89, v111);
        v91 = v105;
        (*v33)(v90 + *(v105 + 20), v89 + *(v105 + 20), v27);
        v92 = (v90 + *(v91 + 24));
        *v92 = a3;
        v92[1] = a4;
        v92[2] = a5;
        v92[3] = a6;
        swift_beginAccess();
        v93 = v100;
        sub_1002CD290(v73, v100);
        sub_100443C64(v93, type metadata accessor for SDAirDropService.TransferPresenterClient);
        v94 = v90;
        v85 = v101;
        sub_100444014(v94, v101, type metadata accessor for SDAirDropService.TransferPresenterClient);
        v27 = *(v87 + v69);
        v95 = swift_isUniquelyReferenced_nonNull_native();
        *(v87 + v69) = v27;
        v73 = v87;
        if (v95)
        {
LABEL_34:
          v96 = v112;
          v98 = v27[2];
          v97 = v27[3];
          if (v98 >= v97 >> 1)
          {
            v27 = sub_10028EFB8((v97 > 1), v98 + 1, 1, v27);
          }

          v27[2] = v98 + 1;
          sub_10044407C(v85, v27 + v119 + v98 * v117, type metadata accessor for SDAirDropService.TransferPresenterClient);
          *(v73 + v69) = v27;
          swift_endAccess();
          sub_100443C64(v104, type metadata accessor for SDAirDropService.TransferPresenterClient);
          v96(v113, v115);
          return;
        }

LABEL_41:
        v27 = sub_10028EFB8(0, v27[2] + 1, 1, v27);
        *(v73 + v69) = v27;
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  sub_100005508(v40, &unk_100976120, &qword_1007F9260);
  v43 = v110;
  if (qword_100973888 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_10000C4AC(v44, qword_10097E3A8);
  v45 = v108;
  v46 = v111;
  (*(v43 + 16))(v108, v116, v111);
  v37 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v37, v47))
  {
    v48 = v43;
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v118[0] = v50;
    *v49 = 136315138;
    sub_100443FCC(&qword_1009761E8, &type metadata accessor for SFClientIdentity, &protocol conformance descriptor for SFClientIdentity);
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v45;
    v54 = v53;
    (*(v48 + 8))(v52, v46);
    v55 = sub_10000C4E4(v51, v54, v118);

    *(v49 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v37, v47, "No connectionID present - %s", v49, 0xCu);
    sub_10000C60C(v50);

LABEL_15:

LABEL_16:

    return;
  }

  (*(v43 + 8))(v45, v46);
}

uint64_t sub_100439024(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v11 = __chkstk_darwin(v10 - 8);
  v26 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v25 - v14;
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  SFClientIdentity.connectionID.getter();
  (*(v4 + 16))(v15, a2, v3);
  (*(v4 + 56))(v15, 0, 1, v3);
  v18 = *(v7 + 56);
  sub_100443CC4(v17, v9);
  sub_100443CC4(v15, &v9[v18]);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) != 1)
  {
    sub_100443CC4(v9, v26);
    if (v19(&v9[v18], 1, v3) != 1)
    {
      v21 = &v9[v18];
      v22 = v25;
      (*(v4 + 32))(v25, v21, v3);
      sub_100443FCC(&qword_1009761E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v4 + 8);
      v23(v22, v3);
      sub_100005508(v15, &unk_100976120, &qword_1007F9260);
      sub_100005508(v17, &unk_100976120, &qword_1007F9260);
      v23(v26, v3);
      sub_100005508(v9, &unk_100976120, &qword_1007F9260);
      return v20 & 1;
    }

    sub_100005508(v15, &unk_100976120, &qword_1007F9260);
    sub_100005508(v17, &unk_100976120, &qword_1007F9260);
    (*(v4 + 8))(v26, v3);
    goto LABEL_6;
  }

  sub_100005508(v15, &unk_100976120, &qword_1007F9260);
  sub_100005508(v17, &unk_100976120, &qword_1007F9260);
  if (v19(&v9[v18], 1, v3) != 1)
  {
LABEL_6:
    sub_100005508(v9, &unk_100987030, &qword_1007F9330);
    v20 = 0;
    return v20 & 1;
  }

  sub_100005508(v9, &unk_100976120, &qword_1007F9260);
  v20 = 1;
  return v20 & 1;
}

void sub_100439450(uint64_t a1)
{
  v2 = type metadata accessor for SFClientIdentity();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SDAirDropService.TransferPresenterClient(0);
  __chkstk_darwin(v6 - 8);
  v68 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v8 - 8);
  v10 = &v61 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v69 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v61 - v16;
  __chkstk_darwin(v15);
  v19 = (&v61 - v18);
  SFClientIdentity.connectionID.getter();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100005508(v10, &unk_100976120, &qword_1007F9260);
    if (qword_100973888 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000C4AC(v20, qword_10097E3A8);
    (*(v3 + 16))(v5, a1, v2);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v72[0] = v24;
      *v23 = 136315138;
      sub_100443FCC(&qword_1009761E8, &type metadata accessor for SFClientIdentity, &protocol conformance descriptor for SFClientIdentity);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v3 + 8))(v5, v2);
      v28 = sub_10000C4E4(v25, v27, v72);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "No connectionID present - %s", v23, 0xCu);
      sub_10000C60C(v24);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
    (*(v12 + 32))(v19, v10, v11);
    if (qword_100973888 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    v30 = sub_10000C4AC(v29, qword_10097E3A8);
    v62 = *(v12 + 16);
    v63 = v12 + 16;
    v62(v17, v19, v11);
    v64 = v30;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v33 = os_log_type_enabled(v31, v32);
    v66 = v12;
    v67 = v19;
    if (v33)
    {
      v34 = v12;
      v35 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v72[0] = v61;
      *v35 = 136315138;
      sub_100443FCC(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      v65 = *(v34 + 8);
      v65(v17, v11);
      v39 = sub_10000C4E4(v36, v38, v72);
      v40 = v73;
      v19 = v67;

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v31, v32, "Resigning presenter for connectionID %s", v35, 0xCu);
      sub_10000C60C(v61);
    }

    else
    {

      v65 = *(v12 + 8);
      v65(v17, v11);
      v40 = v73;
    }

    v41 = v70;
    v42 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferPresenters;
    v43 = swift_beginAccess();
    v44 = *(v41 + v42);
    __chkstk_darwin(v43);
    *(&v61 - 2) = v19;

    v45 = v40;
    v46 = sub_1002CCF44(sub_1004440EC, (&v61 - 4), v44);
    v48 = v47;
    v73 = v45;

    if (v48)
    {
      v49 = v69;
      v62(v69, v19, v11);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v71[0] = v53;
        *v52 = 136315138;
        sub_100443FCC(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        v55 = v49;
        v57 = v56;
        v58 = v65;
        v65(v55, v11);
        v59 = sub_10000C4E4(v54, v57, v71);

        *(v52 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v50, v51, "No existing transfer presenter for connectionID %s", v52, 0xCu);
        sub_10000C60C(v53);
      }

      else
      {

        v58 = v65;
        v65(v49, v11);
      }

      v58(v67, v11);
    }

    else
    {
      swift_beginAccess();
      v60 = v68;
      sub_1002CD290(v46, v68);
      sub_100443C64(v60, type metadata accessor for SDAirDropService.TransferPresenterClient);
      swift_endAccess();
      v65(v19, v11);
    }
  }
}

uint64_t sub_100439CF8()
{
  v1 = sub_10028088C(&qword_10097E788, &qword_100804100);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - v3;
  v5 = SFClientIdentity.bundleIdentifier.getter();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    swift_beginAccess();
    sub_10046DAAC(&v11, v7, v8);
    swift_endAccess();
  }

  v10[1] = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transfersSubject);
  sub_10028088C(&qword_10097E688, &qword_1008040D0);
  sub_100011630(&qword_10097E790, &qword_10097E688, &qword_1008040D0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  Publisher<>.values.getter();
  sub_100011630(&qword_10097E798, &qword_10097E788, &qword_100804100, &protocol conformance descriptor for AsyncPublisher<A>);
  sub_100443FCC(&qword_10097E7A0, &type metadata accessor for SFAirDrop.Transfers, &protocol conformance descriptor for SFAirDrop.Transfers);
  sub_100443FCC(&qword_10097E7A8, &type metadata accessor for SFAirDrop.Transfers, &protocol conformance descriptor for SFAirDrop.Transfers);
  AsyncSequence<>.xpc.getter();
  return (*(v2 + 8))(v4, v1);
}

uint64_t SDAirDropService.forceRebuild()()
{
  *(v1 + 16) = v0;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;

  return _swift_task_switch(sub_100439FE4, v2, 0);
}

uint64_t sub_100439FE4()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1002963B0;

  return sub_100383F24();
}

uint64_t SDAirDropService.dumpIDMSDB(url:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;

  return _swift_task_switch(sub_10043A11C, v3, 0);
}

uint64_t sub_10043A11C()
{
  v1 = *(*(v0[3] + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_idmsService) + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore);
  v0[4] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_10043A210;
    v3 = v0[2];

    return sub_100664D94(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10043A210()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t SDAirDropService.description.getter()
{
  type metadata accessor for SFAirDropUserDefaults();
  v0 = static SFAirDropUserDefaults.shared.getter();
  v1 = SFAirDropUserDefaults.description.getter();

  return v1;
}

id SDAirDropService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SDAirDropService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10043A598@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SFPlatform();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferPresenters;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v9 - 1;
    v11 = type metadata accessor for SDAirDropService.TransferPresenterClient(0);
    v12 = v8 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80)) + *(*(v11 - 8) + 72) * v10;
    v13 = *(v11 + 20);
    v14 = type metadata accessor for SFAirDropClient.Identifier();
    return (*(*(v14 - 8) + 16))(a1, v12 + v13, v14);
  }

  else
  {
    static SFPlatform.iOS.getter();
    v16 = static SFPlatform.isPlatform(_:)();
    (*(v4 + 8))(v6, v3);
    v17 = type metadata accessor for SFAirDropClient.Identifier();
    if (v16)
    {
      v18 = &enum case for SFAirDropClient.Identifier.airdropUI(_:);
    }

    else
    {
      v18 = &enum case for SFAirDropClient.Identifier.daemon(_:);
    }

    return (*(*(v17 - 8) + 104))(a1, *v18, v17);
  }
}

uint64_t SFAirDropInvocations.Send.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10043A864, 0, 0);
}

uint64_t sub_10043A864(uint64_t a1)
{
  SFClientIdentity.bundleIdentifier.getter();
  v1[9] = v2;
  v3 = swift_task_alloc();
  v1[10] = v3;
  *v3 = v1;
  v3[1] = sub_10043A930;
  v4 = v1[8];
  v5 = v1[3];

  return sub_100313770(v4, v5);
}

uint64_t sub_10043A930()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_10043AB60;
  }

  else
  {

    v2 = sub_10043AA4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10043AA4C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_100443FCC(&qword_10097E3D8, &type metadata accessor for SFAirDropSend.Transfer, &protocol conformance descriptor for SFAirDropSend.Transfer);
  sub_100443FCC(&qword_10097E3E0, &type metadata accessor for SFAirDropSend.Transfer, &protocol conformance descriptor for SFAirDropSend.Transfer);
  SFProgressTask<>.xpc.getter();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10043AB60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10043ABCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E780, &type metadata accessor for SFAirDropInvocations.Send, &protocol conformance descriptor for SFAirDropInvocations.Send);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_10043AD00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v6 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  v4[5] = v6;
  v4[6] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a3;
  v4[7] = v7;
  v4[8] = v8;

  return _swift_task_switch(sub_10043ADD8, 0, 0);
}

uint64_t sub_10043ADD8(uint64_t a1)
{
  SFClientIdentity.bundleIdentifier.getter();
  v1[9] = v2;
  v3 = swift_task_alloc();
  v1[10] = v3;
  *v3 = v1;
  v3[1] = sub_10043AEA8;
  v4 = v1[7];
  v5 = v1[3];

  return sub_100313770(v4, v5);
}

uint64_t sub_10043AEA8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_10043B0D8;
  }

  else
  {

    v2 = sub_10043AFC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10043AFC4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_100443FCC(&qword_10097E3D8, &type metadata accessor for SFAirDropSend.Transfer, &protocol conformance descriptor for SFAirDropSend.Transfer);
  sub_100443FCC(&qword_10097E3E0, &type metadata accessor for SFAirDropSend.Transfer, &protocol conformance descriptor for SFAirDropSend.Transfer);
  SFProgressTask<>.xpc.getter();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10043B0D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SFAirDropInvocations.Cancel.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10043B16C, 0, 0);
}

uint64_t sub_10043B16C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10043B210;
  v2 = *(v0 + 24);

  return sub_100317544(v2);
}

uint64_t sub_10043B210()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_10043B438;
  }

  else
  {
    v2 = sub_100444114;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10043B324()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10043B62C;
  }

  else
  {
    v2 = sub_100444114;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10043B438()
{
  if (qword_100973888 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = sub_10000C4AC(v1, qword_10097E3A8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Send cancel failed %@, attempting receive cancel with same transferID", v4, 0xCu);
    sub_100005508(v5, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_10043B324;
  v8 = v0[3];

  return sub_100396FFC(v8);
}

uint64_t sub_10043B62C()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Receive cancel failed %@", v3, 0xCu);
    sub_100005508(v4, &qword_100975400, &qword_1007F65D0);
  }

  v6 = type metadata accessor for SFAirDropReceive.Failure();
  sub_100443FCC(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, enum case for SFAirDropReceive.Failure.badRequest(_:), v6);
  swift_willThrow();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10043B81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E778, &type metadata accessor for SFAirDropInvocations.Cancel, &protocol conformance descriptor for SFAirDropInvocations.Cancel);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_10043B950(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return SFAirDropInvocations.Cancel.invoke(with:context:client:)(a1, a2, v6);
}

uint64_t SFAirDropInvocations.FetchUserDefaults.invoke(with:context:client:)()
{
  type metadata accessor for SFAirDropUserDefaults();
  v0 = static SFAirDropUserDefaults.shared.getter();
  v1 = SFAirDropUserDefaults.userDefaultDescriptions.getter();

  return v1;
}

void sub_10043BB20(uint64_t *a1@<X8>)
{
  type metadata accessor for SFAirDropUserDefaults();
  v3 = static SFAirDropUserDefaults.shared.getter();
  v4 = SFAirDropUserDefaults.userDefaultDescriptions.getter();

  if (!v1)
  {
    *a1 = v4;
  }
}

uint64_t SFAirDropInvocations.FetchEndpointMetadata.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10043BBA8, 0, 0);
}

uint64_t sub_10043BBA8()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_10043BC4C;
  v2 = v0[2];
  v3 = v0[3];

  return sub_10047F580(v2, v3);
}

uint64_t sub_10043BC4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10043BD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E768, &type metadata accessor for SFAirDropInvocations.FetchEndpointMetadata, &protocol conformance descriptor for SFAirDropInvocations.FetchEndpointMetadata);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_10043BE78(uint64_t a1, uint64_t a2, void *a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *a3;
  return _swift_task_switch(sub_10043BEA0, 0, 0);
}

uint64_t sub_10043BEA0()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1004440E8;
  v2 = v0[2];
  v3 = v0[3];

  return sub_10047F580(v2, v3);
}

uint64_t SFAirDropInvocations.BecomeTransferPresenter.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for SFAirDropClient.Identifier();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10043C008, 0, 0);
}

uint64_t sub_10043C008()
{
  SFAirDropInvocations.BecomeTransferPresenter.Parameters.clientIdentifier.getter();
  SFAirDropInvocations.BecomeTransferPresenter.Parameters.animationRect.getter();
  v0[9] = v1;
  v0[10] = v2;
  v0[11] = v3;
  v0[12] = v4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_10043C0B8, v5, 0);
}

uint64_t sub_10043C0B8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_100438288(*(v0 + 40), v1, *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  *(v0 + 104) = 0;
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10043C178, 0, 0);
}

uint64_t sub_10043C178()
{
  VoidResponse.init()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10043C1E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10043C24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E760, &type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter, &protocol conformance descriptor for SFAirDropInvocations.BecomeTransferPresenter);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_10043C380(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v6 = type metadata accessor for SFAirDropClient.Identifier();
  v4[5] = v6;
  v4[6] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a3;
  v4[7] = v7;
  v4[8] = v8;

  return _swift_task_switch(sub_10043C44C, 0, 0);
}

uint64_t sub_10043C44C()
{
  SFAirDropInvocations.BecomeTransferPresenter.Parameters.clientIdentifier.getter();
  SFAirDropInvocations.BecomeTransferPresenter.Parameters.animationRect.getter();
  v0[9] = v1;
  v0[10] = v2;
  v0[11] = v3;
  v0[12] = v4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_10043C4FC, v5, 0);
}

uint64_t sub_10043C4FC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_100438288(*(v0 + 32), v1, *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  *(v0 + 104) = 0;
  (*(v3 + 8))(v1, v2);

  return _swift_task_switch(sub_10043C5BC, 0, 0);
}

uint64_t sub_10043C5BC()
{
  VoidResponse.init()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10043C62C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SFAirDropInvocations.ResignTransferPresenter.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return _swift_task_switch(sub_10043C6B4, 0, 0);
}

uint64_t sub_10043C6B4()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_10043C74C, v0, 0);
}

uint64_t sub_10043C74C()
{
  sub_100439450(*(v0 + 32));

  return _swift_task_switch(sub_100444114, 0, 0);
}

uint64_t sub_10043C7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E758, &type metadata accessor for SFAirDropInvocations.ResignTransferPresenter, &protocol conformance descriptor for SFAirDropInvocations.ResignTransferPresenter);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_10043C930(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = *a3;
  return _swift_task_switch(sub_10043C958, 0, 0);
}

uint64_t sub_10043C958()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_10043C9F0, v0, 0);
}

uint64_t sub_10043C9F0()
{
  sub_100439450(*(v0 + 24));

  return _swift_task_switch(sub_100444114, 0, 0);
}

uint64_t SFAirDropInvocations.TransfersMonitor.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return _swift_task_switch(sub_10043CAC4, 0, 0);
}

uint64_t sub_10043CAC4()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_10043CB5C, v0, 0);
}

uint64_t sub_10043CB5C()
{
  sub_100439CF8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10043CBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E750, &type metadata accessor for SFAirDropInvocations.TransfersMonitor, &protocol conformance descriptor for SFAirDropInvocations.TransfersMonitor);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_10043CCF8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = *a3;
  return _swift_task_switch(sub_10043CD20, 0, 0);
}

uint64_t sub_10043CD20()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_10043CDB8, v0, 0);
}

uint64_t sub_10043CDB8()
{
  sub_100439CF8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t SFAirDropInvocations.StartNearbySharingDiscovery.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  return _swift_task_switch(sub_10043CE44, 0, 0);
}

uint64_t sub_10043CE44()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  *(v0 + 112) = static AirDropActor.shared;

  return _swift_task_switch(sub_10043CEE0, v1, 0);
}

uint64_t sub_10043CEE0()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 16);

  return _swift_task_switch(sub_10043CF6C, 0, 0);
}

uint64_t sub_10043CF6C()
{
  v1 = v0[14];
  v2 = v0[5];
  v3 = v0[6];
  v0[15] = v2;
  v0[16] = v3;
  v0[17] = sub_10002CDC0(v0 + 2, v2);
  v0[18] = *(v3 + 120);
  v0[19] = (v3 + 120) & 0xFFFFFFFFFFFFLL | 0xE398000000000000;

  return _swift_task_switch(sub_10043CFF0, v1, 0);
}

uint64_t sub_10043CFF0()
{
  (*(v0 + 144))(*(v0 + 88), *(v0 + 104), *(v0 + 120), *(v0 + 128));

  return _swift_task_switch(sub_1004440E4, 0, 0);
}

uint64_t sub_10043D068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E748, &type metadata accessor for SFAirDropInvocations.StartNearbySharingDiscovery, &protocol conformance descriptor for SFAirDropInvocations.StartNearbySharingDiscovery);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_10043D19C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100005C00;

  return SFAirDropInvocations.StartNearbySharingDiscovery.invoke(with:context:client:)(a1, a2, v8, a4);
}

uint64_t SFAirDropInvocations.StopNearbySharingDiscovery.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  return _swift_task_switch(sub_10043D278, 0, 0);
}

uint64_t sub_10043D278()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  *(v0 + 112) = static AirDropActor.shared;

  return _swift_task_switch(sub_10043D314, v1, 0);
}

uint64_t sub_10043D314()
{
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 16);

  return _swift_task_switch(sub_10043D3A0, 0, 0);
}

uint64_t sub_10043D3A0()
{
  v1 = v0[14];
  v2 = v0[5];
  v3 = v0[6];
  v0[15] = v2;
  v0[16] = v3;
  v0[17] = sub_10002CDC0(v0 + 2, v2);
  v0[18] = *(v3 + 144);
  v0[19] = (v3 + 144) & 0xFFFFFFFFFFFFLL | 0xDF4C000000000000;

  return _swift_task_switch(sub_10043D424, v1, 0);
}

uint64_t sub_10043D424()
{
  (*(v0 + 144))(*(v0 + 88), *(v0 + 96), *(v0 + 120), *(v0 + 128));

  return _swift_task_switch(sub_10043D498, 0, 0);
}

uint64_t sub_10043D498()
{
  sub_10000C60C((v0 + 16));
  VoidResponse.init()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10043D508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E740, &type metadata accessor for SFAirDropInvocations.StopNearbySharingDiscovery, &protocol conformance descriptor for SFAirDropInvocations.StopNearbySharingDiscovery);
  *v15 = v14;
  v15[1] = sub_10043D63C;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_10043D63C(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_10043D74C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *a3;
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100005C04;

  return SFAirDropInvocations.StopNearbySharingDiscovery.invoke(with:context:client:)(a1, v5, v6, v7);
}

uint64_t SFAirDropInvocations.TakeNearbySharingAssertion.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  return _swift_task_switch(sub_10043D824, 0, 0);
}

uint64_t sub_10043D824()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  *(v0 + 112) = static AirDropActor.shared;

  return _swift_task_switch(sub_10043D8C0, v1, 0);
}

uint64_t sub_10043D8C0()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 16);

  return _swift_task_switch(sub_10043D94C, 0, 0);
}

uint64_t sub_10043D94C()
{
  v1 = v0[14];
  v2 = v0[5];
  v3 = v0[6];
  v0[15] = v2;
  v0[16] = v3;
  v0[17] = sub_10002CDC0(v0 + 2, v2);
  v0[18] = *(v3 + 152);
  v0[19] = (v3 + 152) & 0xFFFFFFFFFFFFLL | 0xC728000000000000;

  return _swift_task_switch(sub_10043D9D0, v1, 0);
}

uint64_t sub_10043D9D0()
{
  (*(v0 + 144))(*(v0 + 88), *(v0 + 104), *(v0 + 120), *(v0 + 128));

  return _swift_task_switch(sub_10043DA48, 0, 0);
}

uint64_t sub_10043DA48()
{
  sub_10000C60C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10043DAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E738, &type metadata accessor for SFAirDropInvocations.TakeNearbySharingAssertion, &protocol conformance descriptor for SFAirDropInvocations.TakeNearbySharingAssertion);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_10043DBE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4[10] = a1;
  v4[11] = a2;
  v5 = *a3;
  v4[12] = a4;
  v4[13] = v5;
  return _swift_task_switch(sub_10043DC08, 0, 0);
}

uint64_t sub_10043DC08()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  *(v0 + 112) = static AirDropActor.shared;

  return _swift_task_switch(sub_10043DCA4, v1, 0);
}

uint64_t sub_10043DCA4()
{
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 16);

  return _swift_task_switch(sub_10043DD30, 0, 0);
}

uint64_t sub_10043DD30()
{
  v1 = v0[14];
  v2 = v0[5];
  v3 = v0[6];
  v0[15] = v2;
  v0[16] = v3;
  v0[17] = sub_10002CDC0(v0 + 2, v2);
  v0[18] = *(v3 + 152);
  v0[19] = (v3 + 152) & 0xFFFFFFFFFFFFLL | 0xC728000000000000;

  return _swift_task_switch(sub_10043DDB4, v1, 0);
}

uint64_t sub_10043DDB4()
{
  (*(v0 + 144))(*(v0 + 88), *(v0 + 96), *(v0 + 120), *(v0 + 128));

  return _swift_task_switch(sub_10044410C, 0, 0);
}

uint64_t SFAirDropInvocations.ReleaseNearbySharingAssertion.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_10043DE50, 0, 0);
}

uint64_t sub_10043DE50()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  *(v0 + 104) = static AirDropActor.shared;

  return _swift_task_switch(sub_10043DEEC, v1, 0);
}

uint64_t sub_10043DEEC()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 16);

  return _swift_task_switch(sub_10043DF78, 0, 0);
}

uint64_t sub_10043DF78()
{
  v1 = v0[13];
  v2 = v0[5];
  v3 = v0[6];
  v0[14] = v2;
  v0[15] = v3;
  v0[16] = sub_10002CDC0(v0 + 2, v2);
  v0[17] = *(v3 + 160);
  v0[18] = (v3 + 160) & 0xFFFFFFFFFFFFLL | 0x733A000000000000;

  return _swift_task_switch(sub_10043DFFC, v1, 0);
}

uint64_t sub_10043DFFC()
{
  (*(v0 + 136))(*(v0 + 88), *(v0 + 112), *(v0 + 120));

  return _swift_task_switch(sub_1004440E4, 0, 0);
}

uint64_t sub_10043E070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E730, &type metadata accessor for SFAirDropInvocations.ReleaseNearbySharingAssertion, &protocol conformance descriptor for SFAirDropInvocations.ReleaseNearbySharingAssertion);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_10043E1A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return SFAirDropInvocations.ReleaseNearbySharingAssertion.invoke(with:context:client:)(a1, a2, v6);
}

uint64_t SFAirDropInvocations.NearbySharingInteractions.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v4 = sub_10028088C(&qword_10097E400, &unk_1008031C8);
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10043E320, 0, 0);
}

uint64_t sub_10043E320()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  *(v0 + 120) = static AirDropActor.shared;

  return _swift_task_switch(sub_10043E3BC, v1, 0);
}

uint64_t sub_10043E3BC()
{
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 16);

  return _swift_task_switch(sub_10043E448, 0, 0);
}

uint64_t sub_10043E448()
{
  v1 = v0[15];
  v2 = v0[5];
  v3 = v0[6];
  v0[16] = v2;
  v0[17] = v3;
  v0[18] = sub_10002CDC0(v0 + 2, v2);
  v0[19] = *(v3 + 96);
  v0[20] = (v3 + 96) & 0xFFFFFFFFFFFFLL | 0x63B4000000000000;

  return _swift_task_switch(sub_10043E4CC, v1, 0);
}

uint64_t sub_10043E4CC()
{
  (*(v0 + 152))(*(v0 + 128), *(v0 + 136));

  return _swift_task_switch(sub_10043E540, 0, 0);
}

uint64_t sub_10043E540()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_100011630(&qword_10097E408, &qword_10097E400, &unk_1008031C8, &protocol conformance descriptor for SFNoThrowAsyncSequence<A>);
  sub_100442CB4(&qword_10097E410, &qword_10097E418, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction, &protocol conformance descriptor for <A> [A]);
  sub_100442CB4(&qword_10097E420, &qword_10097E428, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction, &protocol conformance descriptor for <A> [A]);
  AsyncSequence<>.xpc.getter();
  (*(v2 + 8))(v1, v3);
  sub_10000C60C(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10043E6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E728, &type metadata accessor for SFAirDropInvocations.NearbySharingInteractions, &protocol conformance descriptor for SFAirDropInvocations.NearbySharingInteractions);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_10043E7DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return SFAirDropInvocations.NearbySharingInteractions.invoke(with:context:client:)(a1, v6, v5);
}

uint64_t SFAirDropInvocations.SimulateNearbySharingInteractions.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_10043E8A0, 0, 0);
}

uint64_t sub_10043E8A0()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  *(v0 + 104) = static AirDropActor.shared;

  return _swift_task_switch(sub_10043E93C, v1, 0);
}

uint64_t sub_10043E93C()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 16);

  return _swift_task_switch(sub_10043E9C8, 0, 0);
}

uint64_t sub_10043E9C8()
{
  v1 = v0[13];
  v2 = v0[5];
  v3 = v0[6];
  v0[14] = v2;
  v0[15] = v3;
  v0[16] = sub_10002CDC0(v0 + 2, v2);
  v0[17] = *(v3 + 56);
  v0[18] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xB8A1000000000000;

  return _swift_task_switch(sub_10043DFFC, v1, 0);
}

uint64_t sub_10043EA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E720, &type metadata accessor for SFAirDropInvocations.SimulateNearbySharingInteractions, &protocol conformance descriptor for SFAirDropInvocations.SimulateNearbySharingInteractions);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_10043EB80(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return SFAirDropInvocations.SimulateNearbySharingInteractions.invoke(with:context:client:)(a1, a2, v6);
}

uint64_t SFAirDropInvocations.BoopAtADistanceBegin.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_10043EC54, 0, 0);
}

uint64_t sub_10043EC54()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_10043ECEC, v0, 0);
}

uint64_t sub_10043ECEC()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 16);

  return _swift_task_switch(sub_10043ED78, 0, 0);
}

uint64_t sub_10043ED78()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10002CDC0(v0 + 2, v1);
  v7 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_10043EEA4;
  v4 = v0[10];
  v5 = v0[11];

  return v7(v4, v5, v1, v2);
}

uint64_t sub_10043EEA4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_10043EFB8;
  }

  else
  {
    v2 = sub_10044410C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10043EFB8()
{
  sub_10000C60C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10043F01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E718, &type metadata accessor for SFAirDropInvocations.BoopAtADistanceBegin, &protocol conformance descriptor for SFAirDropInvocations.BoopAtADistanceBegin);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_10043F150(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return SFAirDropInvocations.BoopAtADistanceBegin.invoke(with:context:client:)(a1, a2, v6);
}

uint64_t SFAirDropInvocations.BoopAtADistanceUpdate.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_10043F320, 0, 0);
}

uint64_t sub_10043F320()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_10043F3B8, v0, 0);
}

uint64_t sub_10043F3B8()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 16);

  return _swift_task_switch(sub_10043F444, 0, 0);
}

uint64_t sub_10043F444()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10002CDC0(v0 + 2, v1);
  SFAirDropInvocations.BoopAtADistanceUpdate.Parameters.transaction.getter();
  SFAirDropInvocations.BoopAtADistanceUpdate.Parameters.tap.getter();
  v7 = (*(v2 + 72) + **(v2 + 72));
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_10043F5A4;
  v4 = v0[18];
  v5 = v0[15];

  return v7(v4, v5, v1, v2);
}

uint64_t sub_10043F5A4()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 104);
  *(*v1 + 160) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = sub_10043F808;
  }

  else
  {
    v8 = sub_10043F778;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10043F778()
{
  sub_10000C60C((v0 + 16));
  VoidResponse.init()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10043F808()
{
  sub_10000C60C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10043F884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E710, &type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate, &protocol conformance descriptor for SFAirDropInvocations.BoopAtADistanceUpdate);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_10043F9B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return SFAirDropInvocations.BoopAtADistanceUpdate.invoke(with:context:client:)(a1, a2, v6);
}

uint64_t SFAirDropInvocations.BoopAtADistanceEnd.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_10043FA8C, 0, 0);
}

uint64_t sub_10043FA8C()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  *(v0 + 104) = static AirDropActor.shared;

  return _swift_task_switch(sub_10043FB28, v1, 0);
}

uint64_t sub_10043FB28()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 16);

  return _swift_task_switch(sub_10043FBB4, 0, 0);
}

uint64_t sub_10043FBB4()
{
  v1 = v0[13];
  v2 = v0[5];
  v3 = v0[6];
  v0[14] = v2;
  v0[15] = v3;
  v0[16] = sub_10002CDC0(v0 + 2, v2);
  v0[17] = *(v3 + 80);
  v0[18] = (v3 + 80) & 0xFFFFFFFFFFFFLL | 0xE0BE000000000000;

  return _swift_task_switch(sub_10043FC38, v1, 0);
}

uint64_t sub_10043FC38()
{
  (*(v0 + 136))(*(v0 + 88), *(v0 + 112), *(v0 + 120));
  *(v0 + 152) = 0;

  return _swift_task_switch(sub_1004440E4, 0, 0);
}

uint64_t sub_10043FCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E708, &type metadata accessor for SFAirDropInvocations.BoopAtADistanceEnd, &protocol conformance descriptor for SFAirDropInvocations.BoopAtADistanceEnd);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_10043FE04(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return SFAirDropInvocations.BoopAtADistanceEnd.invoke(with:context:client:)(a1, a2, v6);
}

uint64_t SFAirDropInvocations.EndNearbySharingInteraction.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_10043FF54, 0, 0);
}

uint64_t sub_10043FF54()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  *(v0 + 112) = static AirDropActor.shared;

  return _swift_task_switch(sub_10043FFF0, v1, 0);
}

uint64_t sub_10043FFF0()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 16);

  return _swift_task_switch(sub_10044007C, 0, 0);
}

uint64_t sub_10044007C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[5];
  v5 = v0[6];
  v0[15] = v4;
  v0[16] = v5;
  v0[17] = sub_10002CDC0(v0 + 2, v4);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v1, v3, v6);
  (*(v7 + 56))(v1, 0, 1, v6);
  v0[18] = *(v5 + 88);
  v0[19] = (v5 + 88) & 0xFFFFFFFFFFFFLL | 0x898B000000000000;

  return _swift_task_switch(sub_100440188, v2, 0);
}

uint64_t sub_100440188()
{
  v1 = *(v0 + 104);
  (*(v0 + 144))(v1, *(v0 + 120), *(v0 + 128));
  sub_100005508(v1, &unk_100976120, &qword_1007F9260);

  return _swift_task_switch(sub_100440218, 0, 0);
}

uint64_t sub_100440218()
{
  sub_10000C60C((v0 + 16));
  VoidResponse.init()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100440294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E700, &type metadata accessor for SFAirDropInvocations.EndNearbySharingInteraction, &protocol conformance descriptor for SFAirDropInvocations.EndNearbySharingInteraction);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_1004403C8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return SFAirDropInvocations.EndNearbySharingInteraction.invoke(with:context:client:)(a1, a2, v6);
}

uint64_t SFAirDropInvocations.StartTempPairing.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v5 = sub_10028088C(&qword_10097D810, &qword_100803210);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100440544, 0, 0);
}

uint64_t sub_100440544()
{
  v0[10] = *(v0[6] + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_pairingService);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  v0[11] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004405F4, v1, 0);
}

uint64_t sub_1004405F4()
{
  v1 = *(v0 + 88);
  sub_100421A28();

  return _swift_task_switch(sub_10044065C, v1, 0);
}

uint64_t sub_10044065C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_senderStateUpdates;
  swift_beginAccess();
  (*(v4 + 16))(v1, v2 + v5, v3);
  sub_100011630(&qword_10097E438, &qword_10097D810, &qword_100803210, &protocol conformance descriptor for SFNoThrowAsyncSequence<A>);
  sub_100443FCC(&qword_10097E440, &type metadata accessor for SFTempPairingSenderStateUpdate, &protocol conformance descriptor for SFTempPairingSenderStateUpdate);
  sub_100443FCC(&qword_10097E448, &type metadata accessor for SFTempPairingSenderStateUpdate, &protocol conformance descriptor for SFTempPairingSenderStateUpdate);
  AsyncSequence<>.xpc.getter();
  (*(v4 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004407E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E6F8, &type metadata accessor for SFAirDropInvocations.StartTempPairing, &protocol conformance descriptor for SFAirDropInvocations.StartTempPairing);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_100440918(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100005C00;

  return SFAirDropInvocations.StartTempPairing.invoke(with:context:client:)(a1, v6, v7, v5);
}

uint64_t SFAirDropInvocations.StopTempPairing.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_1004409D8, 0, 0);
}

uint64_t sub_1004409D8()
{
  *(v0 + 32) = *(*(v0 + 24) + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_pairingService);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;

  return _swift_task_switch(sub_100440A84, v1, 0);
}

uint64_t sub_100440A84()
{
  v1 = *(v0 + 32);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_server;
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_server))
  {

    sub_100593254();
  }

  *(v1 + v2) = 0;

  return _swift_task_switch(sub_100440B28, 0, 0);
}

uint64_t sub_100440B28(uint64_t a1)
{
  VoidResponse.init()();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100440B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E6F0, &type metadata accessor for SFAirDropInvocations.StopTempPairing, &protocol conformance descriptor for SFAirDropInvocations.StopTempPairing);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_100440CC0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return SFAirDropInvocations.StopTempPairing.invoke(with:context:client:)(a1, v6, v5);
}

uint64_t SFAirDropInvocations.TempPairingMonitor.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_100440D80, 0, 0);
}

uint64_t sub_100440D80()
{
  v0[4] = *(v0[3] + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_pairingService);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  v0[5] = static AirDropActor.shared;

  return _swift_task_switch(sub_100440E30, v1, 0);
}

uint64_t sub_100440E30()
{
  v1 = *(v0 + 40);
  sub_100420850();

  return _swift_task_switch(sub_100440E98, v1, 0);
}

uint64_t sub_100440E98()
{
  sub_10028088C(&qword_10097D820, &unk_100801F18);
  sub_100011630(&qword_10097E450, &qword_10097D820, &unk_100801F18, &protocol conformance descriptor for SFNoThrowAsyncSequence<A>);
  sub_100443FCC(&qword_10097E458, &type metadata accessor for SFTempPairingStateUpdate, &protocol conformance descriptor for SFTempPairingStateUpdate);
  sub_100443FCC(&qword_10097E460, &type metadata accessor for SFTempPairingStateUpdate, &protocol conformance descriptor for SFTempPairingStateUpdate);
  AsyncSequence<>.xpc.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100440FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E6E8, &type metadata accessor for SFAirDropInvocations.TempPairingMonitor, &protocol conformance descriptor for SFAirDropInvocations.TempPairingMonitor);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_100441118(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  return _swift_task_switch(sub_100440D80, 0, 0);
}

id sub_10044122C@<X0>(void *a1@<X8>)
{
  result = sub_100421844();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SFAirDropInvocations.TempPairingConnect.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_10044127C, 0, 0);
}

uint64_t sub_10044127C()
{
  *(v0 + 32) = *(*(v0 + 24) + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_pairingService);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;

  return _swift_task_switch(sub_100441328, v1, 0);
}

uint64_t sub_100441328()
{
  sub_100420C00();

  return _swift_task_switch(sub_100444114, 0, 0);
}

uint64_t sub_100441390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E6D8, &type metadata accessor for SFAirDropInvocations.TempPairingConnect, &protocol conformance descriptor for SFAirDropInvocations.TempPairingConnect);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_1004414C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  return _swift_task_switch(sub_1004414E8, 0, 0);
}

uint64_t sub_1004414E8()
{
  *(v0 + 32) = *(*(v0 + 24) + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_pairingService);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;

  return _swift_task_switch(sub_100441594, v1, 0);
}

uint64_t sub_100441594()
{
  sub_100420C00();

  return _swift_task_switch(sub_100440B28, 0, 0);
}

uint64_t SFAirDropInvocations.TempPairingDisconnect.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_10044161C, 0, 0);
}

uint64_t sub_10044161C()
{
  *(v0 + 32) = *(*(v0 + 24) + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_pairingService);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004416C8, v1, 0);
}

uint64_t sub_1004416C8()
{
  sub_100420D34();

  return _swift_task_switch(sub_100444114, 0, 0);
}

uint64_t sub_100441730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E6D0, &type metadata accessor for SFAirDropInvocations.TempPairingDisconnect, &protocol conformance descriptor for SFAirDropInvocations.TempPairingDisconnect);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_100441864(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  return _swift_task_switch(sub_10044161C, 0, 0);
}

uint64_t SFAirDropInvocations.Discoverability.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_1004418A8, 0, 0);
}

uint64_t sub_1004418A8()
{
  if (*(v0[3] + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_deviceStatus))
  {
    SDStatusMonitor.currentDiscoverabilityMode.getter(v0[2]);
    v1 = v0[1];

    return v1();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100441924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E6C8, &type metadata accessor for SFAirDropInvocations.Discoverability, &protocol conformance descriptor for SFAirDropInvocations.Discoverability);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_100441A58(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  return _swift_task_switch(sub_1004418A8, 0, 0);
}

void sub_100441A9C()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_deviceStatus))
  {
    v1 = SDStatusMonitor.availableDiscoverability.getter();
    v2 = *(v0 + 8);

    v2(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100441B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E6C0, &type metadata accessor for SFAirDropInvocations.AvailableDiscoverability, &protocol conformance descriptor for SFAirDropInvocations.AvailableDiscoverability);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_100441C48(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  return _swift_task_switch(sub_100441C6C, 0, 0);
}

void sub_100441C6C()
{
  if (*(v0[3] + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_deviceStatus))
  {
    v1 = v0[2];
    *v1 = SDStatusMonitor.availableDiscoverability.getter();
    v2 = v0[1];

    v2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t SFAirDropInvocations.ChangeDiscoverability.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100441DB0, 0, 0);
}

void sub_100441DB0()
{
  if (*(v0[4] + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_deviceStatus))
  {
    v2 = v0[6];
    v1 = v0[7];
    v3 = v0[5];
    SFAirDropInvocations.ChangeDiscoverability.Parameters.discoverabilityMode.getter();
    SDStatusMonitor.change(discoverabilityMode:)(v1);
    (*(v2 + 8))(v1, v3);
    VoidResponse.init()();

    v4 = v0[1];

    v4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100441EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E6B8, &type metadata accessor for SFAirDropInvocations.ChangeDiscoverability, &protocol conformance descriptor for SFAirDropInvocations.ChangeDiscoverability);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_100441FDC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v5 = type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode();
  v3[4] = v5;
  v3[5] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a3;
  v3[6] = v6;
  v3[7] = v7;

  return _swift_task_switch(sub_1004420A4, 0, 0);
}

void sub_1004420A4()
{
  if (*(v0[7] + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_deviceStatus))
  {
    v2 = v0[5];
    v1 = v0[6];
    v3 = v0[4];
    SFAirDropInvocations.ChangeDiscoverability.Parameters.discoverabilityMode.getter();
    SDStatusMonitor.change(discoverabilityMode:)(v1);
    (*(v2 + 8))(v1, v3);
    VoidResponse.init()();

    v4 = v0[1];

    v4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t SFAirDropInvocations.UserSafetyIntervention.invoke(with:context:client:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1004421B8, 0, 0);
}

uint64_t sub_1004421B8()
{
  v0[4] = [objc_allocWithZone(type metadata accessor for SDAirDropUserSafetyInterventionAlert()) init];
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_10044226C;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1004B1884(v2, v3);
}

uint64_t sub_10044226C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004423A8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1004423A8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10044240C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E6B0, &type metadata accessor for SFAirDropInvocations.UserSafetyIntervention, &protocol conformance descriptor for SFAirDropInvocations.UserSafetyIntervention);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_100442540(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100442560, 0, 0);
}

uint64_t sub_100442560()
{
  v0[4] = [objc_allocWithZone(type metadata accessor for SDAirDropUserSafetyInterventionAlert()) init];
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_100442614;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1004B1884(v2, v3);
}

uint64_t sub_100442614()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100444110, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t SFAirDropInvocations.ItemDestinationAlert.invoke(with:context:client:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1004427F8;

  return sub_1002943BC(a1);
}

uint64_t sub_1004427F8(uint64_t a1, unint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    if (a2)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    if (a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0xE000000000000000;
    }

    v11 = *(v6 + 8);

    return v11(v9, v10);
  }
}

uint64_t sub_100442944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_100443FCC(&qword_10097E6A8, &type metadata accessor for SFAirDropInvocations.ItemDestinationAlert, &protocol conformance descriptor for SFAirDropInvocations.ItemDestinationAlert);
  *v15 = v14;
  v15[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_100442A78(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100442B24;

  return sub_1002943BC(a2);
}

uint64_t sub_100442B24(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return _swift_task_switch(sub_100442C80, 0, 0);
  }
}

uint64_t sub_100442C80()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  if (!v2)
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  *v3 = v1;
  v3[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_100442CB4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100280938(&qword_100976218, &unk_1007F9370);
    sub_100443FCC(a2, &type metadata accessor for SFAirDrop.NearbySharingInteraction, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for SDAirDropService.TransferPresenterClient(uint64_t a1)
{
  result = qword_10097E628;
  if (!qword_10097E628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004435A4(uint64_t a1)
{
  type metadata accessor for SFClientIdentity();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SFAirDropClient.Identifier();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGRect(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100443640(uint64_t a1)
{
  v2 = type metadata accessor for SFClientIdentity();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973888 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_10097E3A8);
  (*(v3 + 16))(v5, a1, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    sub_100443FCC(&qword_1009761E8, &type metadata accessor for SFClientIdentity, &protocol conformance descriptor for SFClientIdentity);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_10000C4E4(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "New AirDrop Client %s", v9, 0xCu);
    sub_10000C60C(v10);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1004438B0(uint64_t a1)
{
  v3 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  __chkstk_darwin(v3);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v6);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  __chkstk_darwin(v12);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100444014(a1, v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v28 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      v29 = v14;
LABEL_13:
      sub_100443C64(v29, v28);
      goto LABEL_14;
    }

    sub_10044407C(v14, v5, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    v22 = &v5[*(v3 + 28)];
    v19 = *v22;
    v21 = v22[1];

    sub_100443C64(v5, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    if (v21)
    {
      goto LABEL_10;
    }

LABEL_14:
    v27 = 0;
    return v27 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_10044407C(v14, v8, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v23 = &v8[*(v6 + 44)];
    v19 = *v23;
    v21 = v23[1];

    sub_100443C64(v8, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (v21)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  v16 = v1;
  sub_10044407C(v14, v11, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  result = NWEndpoint.nw.getter();
  if (result)
  {
    contact_id = nw_endpoint_get_contact_id();
    swift_unknownObjectRelease();
    if (contact_id)
    {
      v1 = v16;
      v19 = String.init(cString:)();
      v21 = v20;
      sub_100443C64(v11, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
LABEL_10:
      v24 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
      swift_beginAccess();
      sub_1002A9938(v1 + v24, v31);
      v25 = v32;
      v26 = v33;
      sub_10002CDC0(v31, v32);
      v27 = (*(v26 + 104))(v19, v21, v25, v26);

      sub_10000C60C(v31);
      return v27 & 1;
    }

    v28 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    v29 = v11;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_100443C64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100443CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100443D34@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t sub_100443D64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100376CC4(a1, v4, v5, v6);
}

uint64_t sub_100443E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097AD60, &qword_1007FDFD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100443E88(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_10097E668, &qword_1008040C0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C04;

  return sub_100436FE4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100443FCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100444014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10044407C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100444118()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097E7C0);
  v1 = sub_10000C4AC(v0, qword_10097E7C0);
  if (qword_100973720 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A09A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004441E0()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v15 = *(v1 - 8);
  v16 = v1;
  __chkstk_darwin(v1);
  v14 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_transferObserver;
  *&v0[v5] = [objc_allocWithZone(SFAirDropTransferObserver) init];
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_activeTransfersById] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_progressObserversById] = &_swiftEmptyDictionarySingleton;
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUISession;
  *&v0[v6] = [objc_allocWithZone(type metadata accessor for AirDropUISessionClient()) init];
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v0[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUIBundleIdentifier];
  *v7 = 0xD00000000000001BLL;
  *(v7 + 1) = 0x80000001007911D0;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_assertionDurationInSeconds] = 2;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUIAssertion] = 0;
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_ongoingWalletTransferStartDate;
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(&v0[v8], 1, 1, v9);
  v13 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_queue;
  sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_1000143BC(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_10044EDD8(&qword_100973C70, &unk_10097A630, &unk_1007F5680);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v15 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  *&v0[v13] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = type metadata accessor for SDAirDropUISessionManager(0);
  v17.receiver = v0;
  v17.super_class = v10;
  return objc_msgSendSuper2(&v17, "init");
}

uint64_t sub_1004445A0()
{
  v1 = v0;
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097E7C0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Activate AirDrop UI session manager.", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_transferObserver);
  [v6 setDelegate:v1];
  [v6 activate];
  *(*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUISession) + OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_delegate + 8) = &off_1008E1BA0;

  return swift_unknownObjectWeakAssign();
}

void sub_10044472C(void *a1)
{
  v2 = v1;
  v4 = [a1 identifier];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_activeTransfersById;
  swift_beginAccess();
  if (*(*(v1 + v8) + 16))
  {

    sub_100012854(v5, v7);
    if (v9)
    {

      return;
    }
  }

  swift_beginAccess();

  v10 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58[0] = *(v1 + v8);
  *(v1 + v8) = 0x8000000000000000;
  sub_10057B450(v10, v5, v7, isUniquelyReferenced_nonNull_native);

  *(v1 + v8) = v58[0];
  swift_endAccess();
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_10097E7C0);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v59[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_10000C4E4(v5, v7, v59);
    _os_log_impl(&_mh_execute_header, v13, v14, "Tracking new transfer session with AirDropUI over XPC: %s", v15, 0xCu);
    sub_10000C60C(v16);
  }

  v17 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUISession;
  v18 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUISession);
  v19 = *&v18[OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer];
  if (v19 || (v20 = v18, sub_10044BF04(), v20, (v19 = *(*(v2 + v17) + OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer)) != 0))
  {
    v56 = v4;
    swift_unknownObjectRetain();
    v55 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:{objc_msgSend(v10, "transferState")}];
    v21 = &selRef_loadManaged;
    v22 = [v10 metaData];
    v23 = [v22 senderIsMe];

    v54 = [objc_allocWithZone(NSNumber) initWithBool:v23];
    v53 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v10, "itemCount")}];
    v24 = [v10 metaData];
    v25 = [v24 senderCompositeName];

    v26 = [v10 contentsDescription];
    if (!v26)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = String._bridgeToObjectiveC()();
    }

    v27 = [v10 metaData];
    v28 = [v27 smallPreviewImage];

    if (v28)
    {
      v29 = v25;
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10000C5B0(v59, v58);
      type metadata accessor for CGImage(0);
      swift_dynamicCast();
      v30 = sub_100117E28(v57, 0);
      if (!v30)
      {

        __break(1u);
LABEL_32:

        __break(1u);
        return;
      }

      v31 = v30;
      v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      sub_10000C60C(v59);
      v25 = v29;
      v21 = &selRef_loadManaged;
    }

    else
    {
      v32 = 0;
      v34 = 0xF000000000000000;
    }

    v35 = [v10 v21[156]];
    v36 = [v35 previewImage];

    if (!v36)
    {
      v37 = v19;

      if (v34 >> 60 == 15)
      {
        v40 = v26;
        v44 = v25;
        v45 = 0;
        v52 = v32;
LABEL_26:
        sub_1000276B4(0, &qword_1009755C0, NSNumber_ptr);
        isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
        [v37 transferStartedForIdentifier:v56 isFromMe:v54 withTransferState:v55 itemCount:v53 senderName:v44 localizedTransferDescription:v40 previewImageData:v45 previewImageIsSensitive:isa];
        swift_unknownObjectRelease();

        sub_10028BCC0(v52, v34);
        return;
      }

      v29 = v25;
      v40 = v26;
      v41 = v32;
LABEL_25:
      v44 = v29;
      v52 = v41;
      v45 = Data._bridgeToObjectiveC()().super.isa;
      goto LABEL_26;
    }

    v29 = v25;
    v37 = v19;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000C5B0(v59, v58);
    type metadata accessor for CGImage(0);
    swift_dynamicCast();
    v38 = sub_100117E28(v57, 0);
    if (v38)
    {
      v39 = v38;
      v40 = v26;

      v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;
      sub_10028BCC0(v32, v34);

      sub_10000C60C(v59);
      v34 = v43;
      goto LABEL_25;
    }

    goto LABEL_32;
  }

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v59[0] = v50;
    *v49 = 136315138;
    v51 = sub_10000C4E4(v5, v7, v59);

    *(v49 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v47, v48, "AirDropUI server was not found, cannot track transfer: %s", v49, 0xCu);
    sub_10000C60C(v50);
  }

  else
  {
  }
}

void sub_100444E9C(void *a1)
{
  v2 = v1;
  v4 = [a1 identifier];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_activeTransfersById;
  swift_beginAccess();
  if (!*(*(v1 + v8) + 16))
  {

LABEL_11:
    if (qword_100973898 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000C4AC(v18, qword_10097E7C0);

    v4 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v78[0] = v21;
      *v20 = 136315138;
      v22 = sub_10000C4E4(v5, v7, v78);

      *(v20 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v4, v19, "Transfer not tracked. Skipping update. %s", v20, 0xCu);
      sub_10000C60C(v21);
    }

    else
    {
    }

    goto LABEL_16;
  }

  sub_100012854(v5, v7);
  if ((v9 & 1) == 0)
  {

    goto LABEL_11;
  }

  swift_beginAccess();

  v10 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = *(v1 + v8);
  *(v1 + v8) = 0x8000000000000000;
  sub_10057B450(v10, v5, v7, isUniquelyReferenced_nonNull_native);

  *(v1 + v8) = v77;
  swift_endAccess();
  sub_100445C48(v10);
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_10097E7C0);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v78[0] = v16;
    *v15 = 136315138;
    v17 = sub_10000C4E4(v5, v7, v78);

    *(v15 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v13, v14, "Updating transfer session with AirDropUI over XPC: %s", v15, 0xCu);
    sub_10000C60C(v16);
  }

  else
  {
  }

  v23 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUISession;
  v24 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUISession);
  v25 = *&v24[OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer];
  if (!v25)
  {
    v26 = v24;
    sub_10044BF04();

    v25 = *(*(v2 + v23) + OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer);
    if (!v25)
    {
LABEL_16:

      return;
    }
  }

  swift_unknownObjectRetain();
  v70 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:{objc_msgSend(v10, "transferState")}];
  if ([v10 userResponse] == 1)
  {
    v27 = 1;
  }

  else
  {
    v28 = [v10 metaData];
    v27 = [v28 didAutoAccept];
  }

  v73 = [objc_allocWithZone(NSNumber) initWithBool:v27];
  v29 = [v10 transferProgress];
  if (v29)
  {
    v30 = v29;
    v72 = [objc_allocWithZone(NSNumber) initWithLongLong:{objc_msgSend(v29, "completedUnitCount")}];
    v31 = [objc_allocWithZone(NSNumber) initWithLongLong:{objc_msgSend(v30, "totalUnitCount")}];
  }

  else
  {
    v32 = [objc_allocWithZone(NSNumber) initWithInteger:0];
    v33 = objc_allocWithZone(NSNumber);
    v72 = v32;
    v31 = [v33 initWithInteger:0];
  }

  v71 = v31;
  v34 = [v10 possibleActions];
  sub_1000276B4(0, &qword_10097A3A8, SFAirDropAction_ptr);
  v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v35 >> 62)
  {
    v36 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v36)
  {
    isa = [v10 possibleActions];
    if (!isa)
    {
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    v38 = objc_opt_self();
    v78[0] = 0;
    v39 = [v38 archivedDataWithRootObject:isa requiringSecureCoding:1 error:v78];

    v40 = v78[0];
    if (v39)
    {
      v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      goto LABEL_38;
    }

    v44 = v40;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      loga = v45;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v78[0] = v48;
      *v47 = 136315138;
      swift_errorRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      v49 = String.init<A>(describing:)();
      v51 = sub_10000C4E4(v49, v50, v78);

      *(v47 + 4) = v51;
      _os_log_impl(&_mh_execute_header, loga, v46, "Could not archive actions array into Data for XPC: %s", v47, 0xCu);
      sub_10000C60C(v48);
    }

    else
    {
    }
  }

  v41 = 0;
  v43 = 0xF000000000000000;
LABEL_38:
  v52 = [v10 completedURLs];
  if (!v52)
  {
LABEL_44:
    log = 0;
    v58 = 0xF000000000000000;
    goto LABEL_45;
  }

  v53 = v52;
  v54 = objc_opt_self();
  v78[0] = 0;
  v55 = [v54 archivedDataWithRootObject:v53 requiringSecureCoding:1 error:v78];

  v56 = v78[0];
  if (!v55)
  {
    v59 = v56;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      buf = swift_slowAlloc();
      logb = swift_slowAlloc();
      v78[0] = logb;
      *buf = 136315138;
      swift_errorRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      v62 = String.init<A>(describing:)();
      v64 = v61;
      v65 = sub_10000C4E4(v62, v63, v78);

      *(buf + 4) = v65;
      _os_log_impl(&_mh_execute_header, v60, v64, "Could not archive completedURLs array into Data for XPC: %s", buf, 0xCu);
      sub_10000C60C(logb);
    }

    else
    {
    }

    goto LABEL_44;
  }

  log = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

LABEL_45:
  v66 = [v10 contentsDescription];
  if (!v66)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = String._bridgeToObjectiveC()();
  }

  if (v43 >> 60 == 15)
  {
    v67 = 0;
  }

  else
  {
    v67 = Data._bridgeToObjectiveC()().super.isa;
  }

  if (v58 >> 60 == 15)
  {
    v68 = 0;
  }

  else
  {
    v68 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v25 transferUpdatedForIdentifier:v4 withTransferState:v70 transferAccepted:v73 completedUnitCount:v72 totalUnitCount:v71 localizedTransferDescription:v66 actionsData:v67 completedURLsData:v68];
  sub_10028BCC0(v41, v43);
  swift_unknownObjectRelease();

  sub_10028BCC0(log, v58);
}

void sub_10044597C(void *a1)
{
  v2 = v1;
  v4 = [a1 identifier];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_activeTransfersById;
  swift_beginAccess();
  if (*(*(v1 + v8) + 16))
  {

    sub_100012854(v5, v7);
    if (v9)
    {

      if (qword_100973898 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000C4AC(v10, qword_10097E7C0);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v19[0] = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_10000C4E4(v5, v7, v19);
        _os_log_impl(&_mh_execute_header, v11, v12, "Transfer %s no longer being tracked. Ending session for it over XPC.", v13, 0xCu);
        sub_10000C60C(v14);
      }

      swift_beginAccess();
      sub_1002B1A40(0, v5, v7);
      swift_endAccess();
      sub_100446168(a1);
      v15 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUISession;
      v16 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUISession);
      if (*&v16[OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer] || (v17 = v16, sub_10044BF04(), v17, *(*(v2 + v15) + OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer)))
      {
        [swift_unknownObjectRetain() transferEndedForIdentifier:v4];
        swift_unknownObjectRelease();
      }

      if (!*(*(v2 + v8) + 16))
      {
        v18 = *(v2 + v15);
        sub_10044CCF8();
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_100445C48(void *a1)
{
  v2 = v1;
  v4 = [a1 transferProgress];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 identifier];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_progressObserversById;
    swift_beginAccess();
    if (*(*(v2 + v10) + 16))
    {

      sub_100012854(v7, v9);
      if (v11)
      {

        return;
      }
    }

    if (qword_100973898 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_10097E7C0);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_10000C4E4(v7, v9, v23);
      _os_log_impl(&_mh_execute_header, v13, v14, "Starting to observe transfer progress for %s", v15, 0xCu);
      sub_10000C60C(v16);
    }

    v23[0] = v5;
    swift_getKeyPath();
    v17 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v18 = swift_allocObject();
    v18[2] = v7;
    v18[3] = v9;
    v18[4] = v17;

    v19 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    swift_beginAccess();
    v20 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v2 + v10);
    *(v2 + v10) = 0x8000000000000000;
    sub_10057B478(v20, v7, v9, isUniquelyReferenced_nonNull_native);

    *(v2 + v10) = v22;
    swift_endAccess();
  }
}

void sub_100445F58(void **a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = *a1;
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_10097E7C0);

  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_10000C4E4(a3, a4, v22);
    *(v12 + 12) = 2048;
    [v9 fractionCompleted];
    *(v12 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "KVO: Transfer %s updated progress: %f", v12, 0x16u);
    sub_10000C60C(v13);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v16 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_activeTransfersById;
  swift_beginAccess();
  v17 = *&Strong[v16];

  if (*(v17 + 16) && (v18 = sub_100012854(a3, a4), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);

    v21 = swift_unknownObjectUnownedLoadStrong();
    sub_100444E9C(v20);
  }

  else
  {
  }
}

void sub_100446168(void *a1)
{
  v2 = [a1 identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_progressObserversById;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_100012854(v3, v5);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      if (qword_100973898 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000C4AC(v11, qword_10097E7C0);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v19[0] = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_10000C4E4(v3, v5, v19);
        _os_log_impl(&_mh_execute_header, v12, v13, "Stopping observing transfer progress for %s", v14, 0xCu);
        sub_10000C60C(v15);
      }

      swift_beginAccess();
      sub_1002B1A68(0, v3, v5);
      swift_endAccess();
      dispatch thunk of NSKeyValueObservation.invalidate()();
      goto LABEL_13;
    }
  }

  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000C4AC(v16, qword_10097E7C0);
  v10 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v10, v17, "Didn't find progress observer to stop observing. Returning", v18, 2u);
  }

LABEL_13:
}

uint64_t sub_10044645C()
{
  v1 = v0[19];
  v2 = swift_task_alloc();
  v0[20] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[21] = v3;
  v4 = sub_10028088C(&unk_10097E990, &unk_100804270);
  *v3 = v0;
  v3[1] = sub_100446564;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 18, 0, 0, 0xD000000000000011, 0x8000000100791190, sub_10044EF28, v2, v4);
}

uint64_t sub_100446564()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10044690C;
  }

  else
  {

    v2 = sub_100446680;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100446680()
{
  v1 = v0[18];
  v0[23] = v1;
  v0[2] = v0;
  v0[3] = sub_100446798;
  v2 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_10097B520, &qword_1007FCC20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100638A98;
  v0[13] = &unk_1008E1F28;
  v0[14] = v2;
  [v1 registerForPermissionRequests:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100446798()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_100446970;
  }

  else
  {
    v2 = sub_1004468A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004468A8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10044690C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100446970(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1004469E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v20 = *(v7 - 8);
  v21 = v7;
  __chkstk_darwin(v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10028088C(&qword_10097E9D8, qword_1008042D0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v19 - v12;
  v19[1] = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_queue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(v13, a1, v10);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  (*(v11 + 32))(v16 + v15, v13, v10);
  aBlock[4] = sub_10044EF48;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E1F78;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1000143BC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v22 + 8))(v6, v4);
  (*(v20 + 8))(v9, v21);
}

void sub_100446DAC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUISession;
    v4 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUISession);
    if (*&v4[OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer] || (v5 = v4, sub_10044BF04(), v5, *(*&v2[v3] + OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer)))
    {
      swift_unknownObjectRetain();
      sub_10028088C(&qword_10097E9D8, qword_1008042D0);
      CheckedContinuation.resume(returning:)();
    }

    else
    {
      v8 = sub_100010F88(10, 0xD000000000000010, 0x80000001007911B0);
      v10 = v9;
      sub_1000115C8();
      swift_allocError();
      *v11 = v8;
      *(v11 + 8) = v10;
      swift_willThrow();
      sub_10028088C(&qword_10097E9D8, qword_1008042D0);
      CheckedContinuation.resume(throwing:)();
    }
  }

  else
  {
    v6 = type metadata accessor for SFAirDropSend.Failure();
    sub_1000143BC(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for SFAirDropSend.Failure.cancelled(_:), v6);
    sub_10028088C(&qword_10097E9D8, qword_1008042D0);
    CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_100446FB8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SFAirDropSend.Transfer.State();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SFAirDrop.DisplayPriority();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, enum case for SFAirDrop.DisplayPriority.high(_:), v7);
  v11 = static SFAirDrop.DisplayPriority.== infix(_:_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    (*(v4 + 16))(v6, a1, v3);
    v12 = (*(v4 + 88))(v6, v3);
    if (v12 == enum case for SFAirDropSend.Transfer.State.transferring(_:))
    {
      (*(v4 + 96))(v6, v3);

      v13 = sub_10028088C(&qword_10097B2C8, &qword_1007FE680);
      v14 = &v6[*(v13 + 48)];

      v15 = *(v13 + 80);
      v16 = type metadata accessor for SFAirDrop.DeclineAction();
      (*(*(v16 - 8) + 8))(&v6[v15], v16);
      v17 = type metadata accessor for SFAirDrop.Progress();
      v6 = v14;
    }

    else
    {
      if (v12 == enum case for SFAirDropSend.Transfer.State.transferFailed(_:))
      {
        (*(v4 + 96))(v6, v3);
        v18 = *(sub_10028088C(&unk_100986210, &unk_1008042C0) + 48);
        v19 = type metadata accessor for SFAirDropSend.Failure();
        (*(*(v19 - 8) + 8))(&v6[v18], v19);
      }

      else
      {
        if (v12 != enum case for SFAirDropSend.Transfer.State.completedSuccessfully(_:))
        {
          return (*(v4 + 8))(v6, v3);
        }

        (*(v4 + 96))(v6, v3);
        sub_10028088C(&qword_10097E9D0, &unk_1007FC200);
      }

      v17 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
    }

    (*(*(v17 - 8) + 8))(v6);
  }

  v20 = SFAirDropSend.Transfer.State.description.getter();
  sub_100447908(v20, v21);
}

uint64_t sub_100447374(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SFAirDrop.DisplayPriority();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, enum case for SFAirDrop.DisplayPriority.high(_:), v7);
  v11 = static SFAirDrop.DisplayPriority.== infix(_:_:)();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    goto LABEL_12;
  }

  (*(v4 + 16))(v6, a1, v3);
  v12 = (*(v4 + 88))(v6, v3);
  if (v12 != enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
  {
    if (v12 == enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:))
    {
      (*(v4 + 96))(v6, v3);
      v14 = &qword_10097C688;
      v15 = &unk_1008042A0;
    }

    else
    {
      if (v12 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:) || v12 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenDestinationResponse(_:))
      {
        (*(v4 + 96))(v6, v3);
        v20 = sub_10028088C(&unk_10097C670, &qword_100805110);

        v21 = *(v20 + 80);
        v22 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
        (*(*(v22 - 8) + 8))(&v6[v21], v22);
        v13 = type metadata accessor for SFAirDropReceive.ItemDestination();
        goto LABEL_11;
      }

      if (v12 == enum case for SFAirDropReceive.Transfer.State.waitingForShouldImportContactResponse(_:))
      {
        (*(v4 + 96))(v6, v3);
        v16 = *(sub_10028088C(&unk_10097E9C0, &unk_100808DC0) + 48);
        v17 = &qword_100974E70;
        v18 = &qword_1007FE3F0;
        goto LABEL_7;
      }

      if (v12 != enum case for SFAirDropReceive.Transfer.State.waitingForContactShareBackResponse(_:))
      {
        if (v12 == enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:))
        {
          (*(v4 + 96))(v6, v3);
          v26 = *(sub_10028088C(&unk_10097E9B0, &unk_100808D90) + 48);

          v27 = type metadata accessor for SFAirDropReceive.ItemDestination();
          (*(*(v27 - 8) + 8))(&v6[v26], v27);
        }

        else
        {
          if (v12 != enum case for SFAirDropReceive.Transfer.State.transferFailed(_:))
          {
            return (*(v4 + 8))(v6, v3);
          }

          (*(v4 + 96))(v6, v3);
          v28 = *(sub_10028088C(&qword_10097A670, &unk_100804290) + 48);
          v29 = type metadata accessor for SFAirDropReceive.Failure();
          (*(*(v29 - 8) + 8))(&v6[v28], v29);
        }

        v13 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
        goto LABEL_11;
      }

      (*(v4 + 96))(v6, v3);
      v14 = &qword_10097C658;
      v15 = &unk_1008042B0;
    }

    v16 = *(sub_10028088C(v14, v15) + 48);
    v17 = &unk_10097C660;
    v18 = &unk_10080D3E0;
LABEL_7:
    v19 = sub_10028088C(v17, v18);
    (*(*(v19 - 8) + 8))(&v6[v16], v19);
    v13 = type metadata accessor for SFAirDrop.ContactInfo();
    goto LABEL_11;
  }

  (*(v4 + 96))(v6, v3);
  v13 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
LABEL_11:
  (*(*(v13 - 8) + 8))(v6, v13);
LABEL_12:
  v23 = SFAirDropReceive.Transfer.State.description.getter();
  sub_100447908(v23, v24);
}

uint64_t sub_100447908(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_queue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_10044EF1C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E1F00;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_1000143BC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

void sub_100447C14(uint64_t a1, void *a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100447C84(a2, a3);
  }
}

void sub_100447C84(void *a1, unint64_t a2)
{
  v91 = a2;
  v83 = a1;
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v75 - v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v89 = *(v6 - 8);
  v90 = v6;
  __chkstk_darwin(v6);
  v87 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for DispatchQoS();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v81 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = (&v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = type metadata accessor for DispatchTime();
  v84 = *(v92 - 8);
  v12 = __chkstk_darwin(v92);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v75 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_queue);
  *v20 = v21;
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v82 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v20, v17);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v22 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUIAssertion;
  if (*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUIAssertion))
  {
    if (qword_100973898 == -1)
    {
LABEL_4:
      v23 = type metadata accessor for Logger();
      sub_10000C4AC(v23, qword_10097E7C0);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Not taking assertion to ensure AirDropUI is active because assertion was already taken", v26, 2u);
      }

      return;
    }

LABEL_27:
    swift_once();
    goto LABEL_4;
  }

  if (*(*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUISession) + OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer))
  {
    v80 = v2;
    v27 = String._bridgeToObjectiveC()();
    v28 = [objc_opt_self() predicateMatchingBundleIdentifier:v27];

    sub_1000276B4(0, &unk_10097E9A0, RBSProcessHandle_ptr);
    v29 = v28;
    v35 = sub_100663DC8(v29);

    v78 = "rviceConnectionContext>8";
    v36 = [v35 identity];
    v79 = v35;
    v37 = v36;
    v38 = [objc_opt_self() targetWithProcessIdentity:v36];

    v39 = String._bridgeToObjectiveC()();
    v40 = String._bridgeToObjectiveC()();
    v41 = [objc_opt_self() attributeWithDomain:v39 name:v40];

    sub_10028088C(&qword_100974F70, &unk_100804260);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1007FD580;
    *(v42 + 32) = v41;
    v76 = objc_allocWithZone(RBSAssertion);
    v43 = v38;
    v77 = v41;
    v44 = String._bridgeToObjectiveC()();
    sub_1000276B4(0, &unk_10097E980, RBSAttribute_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v46 = [v76 initWithExplanation:v44 target:v43 attributes:isa];

    v78 = v43;
    v47 = v46;
    aBlock[0] = 0;
    v48 = [v46 acquireWithError:aBlock];
    if (v48)
    {
      v76 = v29;
      v49 = qword_100973898;
      v50 = aBlock[0];
      if (v49 != -1)
      {
        swift_once();
      }

      v75 = v47;
      v51 = type metadata accessor for Logger();
      sub_10000C4AC(v51, qword_10097E7C0);
      v52 = v91;

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        aBlock[0] = v56;
        *v55 = 136315138;
        v57 = v83;
        *(v55 + 4) = sub_10000C4E4(v83, v91, aBlock);
        _os_log_impl(&_mh_execute_header, v53, v54, "Successfully acquired assertion for state %s", v55, 0xCu);
        sub_10000C60C(v56);

        v52 = v91;

        v58 = v80;
      }

      else
      {

        v58 = v80;
        v57 = v83;
      }

      v66 = *(v58 + v22);
      v67 = v75;
      *(v58 + v22) = v75;
      v83 = v67;

      static DispatchTime.now()();
      *v11 = 2;
      v68 = v81;
      (*(v81 + 104))(v11, enum case for DispatchTimeInterval.seconds(_:), v9);
      DispatchTime.advanced(by:)();
      (*(v68 + 8))(v11, v9);
      v84 = *(v84 + 8);
      (v84)(v14, v92);
      v69 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v70 = swift_allocObject();
      v70[2] = v69;
      v70[3] = v57;
      v70[4] = v52;
      aBlock[4] = sub_10044EED0;
      aBlock[5] = v70;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100011678;
      aBlock[3] = &unk_1008E1EB0;
      v71 = _Block_copy(aBlock);

      v72 = v85;
      static DispatchQoS.unspecified.getter();
      v93 = _swiftEmptyArrayStorage;
      sub_1000143BC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
      v73 = v87;
      v74 = v90;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v71);

      (*(v89 + 8))(v73, v74);
      (*(v86 + 8))(v72, v88);
      (v84)(v16, v92);
    }

    else
    {
      v59 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100973898 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_10000C4AC(v60, qword_10097E7C0);
      swift_errorRetain();
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v63 = 138412290;
        swift_errorRetain();
        v65 = _swift_stdlib_bridgeErrorToNSError();
        *(v63 + 4) = v65;
        *v64 = v65;
        _os_log_impl(&_mh_execute_header, v61, v62, "Failed to take assertion on AirDropUI ensuring it is active: %@", v63, 0xCu);
        sub_100005508(v64, &qword_100975400, &qword_1007F65D0);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_100973898 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000C4AC(v30, qword_10097E7C0);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "AirDropUI process is suspended and we need it to be active. Launching AirDropUI", v33, 2u);
    }

    v34 = type metadata accessor for TaskPriority();
    (*(*(v34 - 8) + 56))(v5, 1, 1, v34);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    static Task<>.noThrow(priority:operation:)();

    sub_100005508(v5, &qword_100976160, &qword_1007F8770);
  }
}

uint64_t sub_100448A80(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  *(v2 + 48) = static AirDropActor.shared;

  return _swift_task_switch(sub_100448B20, v3, 0);
}

uint64_t sub_100448B20()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_100448C08;

    return sub_10044643C();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100448C08()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_100448D34;
  }

  else
  {
    v4 = sub_10044F03C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100448D34()
{
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097E7C0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 56);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to launch AirDropUI: %@", v6, 0xCu);
    sub_100005508(v7, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

void sub_100448EE4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUIAssertion;
    [*(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUIAssertion) invalidate];
    v8 = *&v6[v7];
    *&v6[v7] = 0;

    if (qword_100973898 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_10097E7C0);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10000C4E4(a2, a3, &v14);
      _os_log_impl(&_mh_execute_header, v10, v11, "Invalidated assertion for state %s", v12, 0xCu);
      sub_10000C60C(v13);
    }
  }
}