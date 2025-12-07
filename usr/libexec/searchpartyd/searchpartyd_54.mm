uint64_t sub_100608784(uint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v6 = v4;
  v112 = a1;
  v123 = type metadata accessor for Date();
  v9 = __chkstk_darwin(v123);
  v122 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v121 = &v109 - v13;
  v14 = a3[1];
  v114 = a3;
  if (v14 < 1)
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_93:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_133;
    }

    a4 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_127:
      result = sub_100B31E68(a4);
    }

    v130 = result;
    v104 = *(result + 16);
    if (v104 >= 2)
    {
      a4 = 40;
      while (1)
      {
        v105 = *a3;
        if (!*a3)
        {
          goto LABEL_131;
        }

        v106 = *(result + 16 * v104);
        v107 = result;
        a3 = *(result + 16 * (v104 - 1) + 40);
        sub_100609FE8((v105 + 40 * v106), (v105 + 40 * *(result + 16 * (v104 - 1) + 32)), (v105 + 40 * a3), v5);
        if (v6)
        {
        }

        if (a3 < v106)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_100B31E68(v107);
        }

        if (v104 - 2 >= *(v107 + 2))
        {
          goto LABEL_121;
        }

        v108 = &v107[16 * v104];
        *v108 = v106;
        v108[1] = a3;
        v130 = v107;
        sub_100B31DDC(v104 - 1);
        result = v130;
        v104 = *(v130 + 16);
        a3 = v114;
        if (v104 <= 1)
        {
        }
      }
    }
  }

  v15 = 0;
  v120 = (v12 + 8);
  v16 = _swiftEmptyArrayStorage;
  v111 = a4;
  while (1)
  {
    v113 = v16;
    if (v15 + 1 >= v14)
    {
      v36 = v15 + 1;
    }

    else
    {
      v118 = v14;
      v110 = v6;
      v17 = *a3;
      sub_10001F280(*a3 + 40 * (v15 + 1), &v127);
      v5 = 40 * v15;
      v18 = v17 + 40 * v15;
      sub_10001F280(v18, v124);
      v19 = v128;
      v20 = v129;
      sub_1000035D0(&v127, v128);
      v21 = v121;
      (*(v20 + 8))(v19, v20);
      v23 = v125;
      v22 = v126;
      sub_1000035D0(v124, v125);
      v24 = v122;
      (*(v22 + 8))(v23, v22);
      LODWORD(v119) = static Date.< infix(_:_:)();
      v25 = v15;
      v26 = *v120;
      a4 = v123;
      (*v120)(v24, v123);
      v26(v21, a4);
      sub_100007BAC(v124);
      result = sub_100007BAC(&v127);
      v109 = v25;
      v27 = v25 + 2;
      v28 = v18 + 80;
      while (v118 != v27)
      {
        sub_10001F280(v28, &v127);
        sub_10001F280(v28 - 40, v124);
        v30 = v128;
        v29 = v129;
        sub_1000035D0(&v127, v128);
        v31 = v121;
        (*(v29 + 8))(v30, v29);
        v32 = v125;
        v33 = v126;
        sub_1000035D0(v124, v125);
        v34 = v122;
        (*(v33 + 8))(v32, v33);
        a4 = static Date.< infix(_:_:)() & 1;
        v35 = v123;
        v26(v34, v123);
        v26(v31, v35);
        sub_100007BAC(v124);
        result = sub_100007BAC(&v127);
        ++v27;
        v28 += 40;
        if ((v119 & 1) != a4)
        {
          v36 = v27 - 1;
          goto LABEL_11;
        }
      }

      v36 = v118;
      v6 = v110;
      a3 = v114;
      v15 = v109;
      if ((v119 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v36 < v109)
      {
        goto LABEL_124;
      }

      if (v109 < v36)
      {
        v37 = 40 * v36 - 40;
        v118 = v36;
        v38 = v36;
        v39 = v109;
        do
        {
          if (v39 != --v38)
          {
            v44 = *v114;
            if (!*v114)
            {
              goto LABEL_130;
            }

            v40 = v44 + v5;
            v41 = v44 + v37;
            sub_10000A748((v44 + v5), &v127);
            v42 = *(v41 + 32);
            v43 = *(v41 + 16);
            *v40 = *v41;
            *(v40 + 16) = v43;
            *(v40 + 32) = v42;
            result = sub_10000A748(&v127, v41);
          }

          ++v39;
          v37 -= 40;
          v5 += 40;
        }

        while (v39 < v38);
        a3 = v114;
        a4 = v111;
        v36 = v118;
      }

      else
      {
LABEL_20:
        a4 = v111;
      }
    }

    v45 = a3[1];
    if (v36 < v45)
    {
      if (__OFSUB__(v36, v15))
      {
        goto LABEL_123;
      }

      if (v36 - v15 < a4)
      {
        if (__OFADD__(v15, a4))
        {
          goto LABEL_125;
        }

        if (v15 + a4 >= v45)
        {
          v46 = a3[1];
        }

        else
        {
          v46 = v15 + a4;
        }

        if (v46 < v15)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v36 != v46)
        {
          break;
        }
      }
    }

    v47 = v36;
    if (v36 < v15)
    {
      goto LABEL_122;
    }

LABEL_32:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v16 = v113;
    }

    else
    {
      result = sub_100A5B430(0, *(v113 + 2) + 1, 1, v113);
      v16 = result;
    }

    a4 = *(v16 + 2);
    v48 = *(v16 + 3);
    v49 = a4 + 1;
    if (a4 >= v48 >> 1)
    {
      result = sub_100A5B430((v48 > 1), a4 + 1, 1, v16);
      v16 = result;
    }

    *(v16 + 2) = v49;
    v50 = &v16[16 * a4];
    *(v50 + 4) = v15;
    *(v50 + 5) = v47;
    v51 = *v112;
    if (!*v112)
    {
      goto LABEL_132;
    }

    v115 = v47;
    if (a4)
    {
      while (1)
      {
        v5 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v52 = *(v16 + 4);
          v53 = *(v16 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_51:
          if (v55)
          {
            goto LABEL_111;
          }

          v68 = &v16[16 * v49];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_114;
          }

          v74 = &v16[16 * v5 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_118;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v5 = v49 - 2;
            }

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v78 = &v16[16 * v49];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_65:
        if (v73)
        {
          goto LABEL_113;
        }

        v81 = &v16[16 * v5];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_116;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_72:
        a4 = v5 - 1;
        if (v5 - 1 >= v49)
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

        v89 = v16;
        v90 = *&v16[16 * a4 + 32];
        v91 = *&v16[16 * v5 + 40];
        sub_100609FE8((*a3 + 40 * v90), (*a3 + 40 * *&v16[16 * v5 + 32]), (*a3 + 40 * v91), v51);
        if (v6)
        {
        }

        if (v91 < v90)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_100B31E68(v89);
        }

        if (a4 >= *(v89 + 2))
        {
          goto LABEL_108;
        }

        v92 = &v89[16 * a4];
        *(v92 + 4) = v90;
        *(v92 + 5) = v91;
        v130 = v89;
        result = sub_100B31DDC(v5);
        v16 = v130;
        v49 = *(v130 + 16);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v16[16 * v49 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_109;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_110;
      }

      v63 = &v16[16 * v49];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_112;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_115;
      }

      if (v67 >= v59)
      {
        v85 = &v16[16 * v5 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_119;
        }

        if (v54 < v88)
        {
          v5 = v49 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_3:
    v14 = a3[1];
    v15 = v115;
    a4 = v111;
    if (v115 >= v14)
    {
      goto LABEL_93;
    }
  }

  v110 = v6;
  v119 = *a3;
  v5 = v119 + 40 * v36;
  v109 = v15;
  v93 = v15 - v36;
  v115 = v46;
LABEL_83:
  v117 = v5;
  v118 = v36;
  v116 = v93;
  while (1)
  {
    sub_10001F280(v5, &v127);
    sub_10001F280(v5 - 40, v124);
    v94 = v128;
    v95 = v129;
    sub_1000035D0(&v127, v128);
    v96 = v121;
    (*(v95 + 8))(v94, v95);
    v97 = v125;
    v98 = v126;
    sub_1000035D0(v124, v125);
    v99 = v122;
    (*(v98 + 8))(v97, v98);
    a4 = static Date.< infix(_:_:)();
    v100 = *v120;
    v101 = v123;
    (*v120)(v99, v123);
    v100(v96, v101);
    sub_100007BAC(v124);
    result = sub_100007BAC(&v127);
    if ((a4 & 1) == 0)
    {
LABEL_82:
      v36 = v118 + 1;
      v5 = v117 + 40;
      v47 = v115;
      v93 = v116 - 1;
      if (v118 + 1 != v115)
      {
        goto LABEL_83;
      }

      v6 = v110;
      a3 = v114;
      v15 = v109;
      if (v115 < v109)
      {
        goto LABEL_122;
      }

      goto LABEL_32;
    }

    if (!v119)
    {
      break;
    }

    sub_10000A748(v5, &v127);
    v102 = *(v5 - 24);
    *v5 = *(v5 - 40);
    *(v5 + 16) = v102;
    *(v5 + 32) = *(v5 - 8);
    sub_10000A748(&v127, v5 - 40);
    v5 -= 40;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_82;
    }
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

uint64_t sub_100609128(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for RawSearchResult(0);
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
        sub_10060A510(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
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
      sub_10062CD24(v110 + v24 * v23, v18, type metadata accessor for RawSearchResult);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v116;
      sub_10062CD24(v26, v116, type metadata accessor for RawSearchResult);
      LODWORD(v111) = static Date.< infix(_:_:)();
      sub_10062CBB8(v28, type metadata accessor for RawSearchResult);
      result = sub_10062CBB8(v18, type metadata accessor for RawSearchResult);
      v102 = v27;
      v29 = v27 + 2;
      v113 = v24;
      v30 = v110 + v24 * (v27 + 2);
      while (v19 != v29)
      {
        sub_10062CD24(v30, v18, type metadata accessor for RawSearchResult);
        v31 = v116;
        sub_10062CD24(v5, v116, type metadata accessor for RawSearchResult);
        v32 = static Date.< infix(_:_:)() & 1;
        sub_10062CBB8(v31, type metadata accessor for RawSearchResult);
        result = sub_10062CBB8(v18, type metadata accessor for RawSearchResult);
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
              sub_10062CC64(v39 + v38, v107, type metadata accessor for RawSearchResult);
              if (v38 < v33 || v5 >= v39 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10062CC64(v107, v39 + v33, type metadata accessor for RawSearchResult);
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
        sub_10060A510(*v114 + *(v112 + 72) * v84, *v114 + *(v112 + 72) * *&v21[16 * v45 + 32], *v114 + *(v112 + 72) * v5, v44);
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
    sub_10062CD24(v5, v18, type metadata accessor for RawSearchResult);
    v93 = v116;
    sub_10062CD24(v90, v116, type metadata accessor for RawSearchResult);
    a4 = static Date.< infix(_:_:)();
    sub_10062CBB8(v93, type metadata accessor for RawSearchResult);
    result = sub_10062CBB8(v18, type metadata accessor for RawSearchResult);
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

    a4 = type metadata accessor for RawSearchResult;
    v94 = v115;
    sub_10062CC64(v5, v115, type metadata accessor for RawSearchResult);
    swift_arrayInitWithTakeFrontToBack();
    sub_10062CC64(v94, v90, type metadata accessor for RawSearchResult);
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

uint64_t sub_100609A8C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v8 = __chkstk_darwin(RequestBeacon);
  v51 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v50 = &v41 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
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

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v28 = a4 + v17;
      v44 = -v13;
      v45 = a1;
      do
      {
        v42 = v26;
        v29 = a2 + v27;
        v46 = a2;
        v47 = a2 + v27;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v52 = v42;
            goto LABEL_58;
          }

          v43 = v26;
          v30 = a4;
          v31 = a3 + v27;
          v32 = v28 + v27;
          v33 = v28 + v27;
          v34 = v50;
          v35 = v28;
          sub_10062CD24(v33, v50, type metadata accessor for FetchRequestBeacon);
          v36 = v29;
          v37 = v51;
          sub_10062CD24(v36, v51, type metadata accessor for FetchRequestBeacon);
          v48 = UUID.hashValue.getter();
          v38 = UUID.hashValue.getter();
          sub_10062CBB8(v37, type metadata accessor for FetchRequestBeacon);
          sub_10062CBB8(v34, type metadata accessor for FetchRequestBeacon);
          if (v48 < v38)
          {
            break;
          }

          v26 = v32;
          a4 = v30;
          if (a3 < v35 || v31 >= v35)
          {
            a3 = v31;
            swift_arrayInitWithTakeFrontToBack();
            v27 = v44;
            a1 = v45;
          }

          else
          {
            v39 = a3 == v35;
            a3 = v31;
            v27 = v44;
            a1 = v45;
            if (!v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v32;
          a2 = v46;
          v29 = v47;
          if (v32 <= a4)
          {
            goto LABEL_56;
          }
        }

        v40 = v35;
        a4 = v30;
        if (a3 < v46 || v31 >= v46)
        {
          a3 = v31;
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v44;
          a1 = v45;
          v26 = v43;
        }

        else
        {
          v39 = a3 == v46;
          a3 = v31;
          a2 = v47;
          v27 = v44;
          a1 = v45;
          v26 = v43;
          if (!v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v40;
      }

      while (v40 > a4);
    }

LABEL_56:
    v54 = a2;
    v52 = v26;
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

    v48 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v47 = a3;
      do
      {
        v19 = v50;
        v20 = a2;
        sub_10062CD24(a2, v50, type metadata accessor for FetchRequestBeacon);
        v21 = v51;
        sub_10062CD24(a4, v51, type metadata accessor for FetchRequestBeacon);
        v22 = a4;
        v23 = UUID.hashValue.getter();
        v24 = UUID.hashValue.getter();
        sub_10062CBB8(v21, type metadata accessor for FetchRequestBeacon);
        sub_10062CBB8(v19, type metadata accessor for FetchRequestBeacon);
        if (v23 >= v24)
        {
          a4 = v22 + v13;
          if (a1 < v22 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v47;
          }

          else
          {
            v25 = v47;
            if (a1 != v22)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v53 = v22 + v13;
          a2 = v20;
        }

        else
        {
          a4 = v22;
          if (a1 < v20 || a1 >= v20 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v20 + v13;
            v25 = v47;
          }

          else
          {
            v25 = v47;
            if (a1 != v20)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v20 + v13;
          }
        }

        a1 += v13;
        v54 = a1;
      }

      while (a4 < v48 && a2 < v25);
    }
  }

LABEL_58:
  sub_10060AD74(&v54, &v53, &v52, type metadata accessor for FetchRequestBeacon);
  return 1;
}

uint64_t sub_100609FE8(char *a1, char *a2, char *a3, char *a4)
{
  v74 = type metadata accessor for Date();
  v9 = __chkstk_darwin(v74);
  v67 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v66 = &v58 - v12;
  v13 = (a2 - a1) / 40;
  v14 = (a3 - a2) / 40;
  if (v13 >= v14)
  {
    if (a4 != a2 || &a2[40 * v14] <= a4)
    {
      v34 = v11;
      memmove(a4, a2, 40 * v14);
      v11 = v34;
    }

    v17 = &a4[40 * v14];
    v15 = a4;
    if (a3 - a2 < 40)
    {
      v33 = a2;
      goto LABEL_35;
    }

    v35 = a2;
    if (a2 <= a1)
    {
      v33 = a2;
      goto LABEL_35;
    }

    v60 = v4;
    v61 = (v11 + 8);
    v65 = a1;
    v62 = a4;
    while (1)
    {
      v59 = v35;
      v36 = (v35 - 40);
      v37 = (v17 - 40);
      v38 = a3 - 40;
      v63 = v35 - 40;
      while (1)
      {
        v64 = v38;
        v41 = v38 + 40;
        sub_10001F280(v37, v71);
        sub_10001F280(v36, v68);
        v42 = v72;
        v43 = v73;
        sub_1000035D0(v71, v72);
        v44 = v66;
        (*(v43 + 8))(v42, v43);
        v45 = v69;
        v46 = v70;
        sub_1000035D0(v68, v69);
        v47 = v67;
        (*(v46 + 8))(v45, v46);
        v48 = static Date.< infix(_:_:)();
        v49 = *v61;
        v50 = v74;
        (*v61)(v47, v74);
        v49(v44, v50);
        sub_100007BAC(v68);
        sub_100007BAC(v71);
        if (v48)
        {
          break;
        }

        v15 = v62;
        v51 = v64;
        if (v41 != (v37 + 40))
        {
          v52 = *v37;
          v53 = *(v37 + 16);
          *(v64 + 4) = *(v37 + 32);
          *v51 = v52;
          v51[1] = v53;
        }

        v39 = v37 - 40;
        v38 = v51 - 40;
        v40 = v37 > v15;
        v37 -= 40;
        v36 = v63;
        if (!v40)
        {
          v17 = (v39 + 40);
          v33 = v59;
          goto LABEL_35;
        }
      }

      v17 = (v37 + 40);
      v15 = v62;
      v33 = v63;
      a3 = v64;
      if (v41 != v59)
      {
        v54 = *v63;
        v55 = *(v63 + 1);
        *(v64 + 4) = *(v63 + 4);
        *a3 = v54;
        *(a3 + 1) = v55;
      }

      if (v17 > v15)
      {
        v35 = v33;
        if (v33 > v65)
        {
          continue;
        }
      }

      v17 = (v37 + 40);
      goto LABEL_35;
    }
  }

  v15 = a4;
  if (a4 != a1 || &a1[40 * v13] <= a4)
  {
    v16 = v11;
    memmove(a4, a1, 40 * v13);
    v11 = v16;
  }

  v17 = &a4[40 * v13];
  if (a2 - a1 < 40 || (v18 = a2, a2 >= a3))
  {
    v33 = a1;
    goto LABEL_35;
  }

  v60 = v4;
  v19 = (v11 + 8);
  v64 = v17;
  do
  {
    v65 = a1;
    sub_10001F280(v18, v71);
    sub_10001F280(v15, v68);
    v20 = v72;
    v21 = v73;
    sub_1000035D0(v71, v72);
    v22 = v66;
    (*(v21 + 8))(v20, v21);
    v23 = v69;
    v24 = v70;
    sub_1000035D0(v68, v69);
    v25 = v67;
    (*(v24 + 8))(v23, v24);
    LOBYTE(v23) = static Date.< infix(_:_:)();
    v26 = *v19;
    v27 = v74;
    (*v19)(v25, v74);
    v26(v22, v27);
    sub_100007BAC(v68);
    sub_100007BAC(v71);
    if (v23)
    {
      v28 = v18;
      v29 = v65;
      v30 = v65 == v18;
      v18 += 40;
      if (v30)
      {
        goto LABEL_14;
      }

LABEL_13:
      v31 = *v28;
      v32 = *(v28 + 1);
      *(v29 + 4) = *(v28 + 4);
      *v29 = v31;
      *(v29 + 1) = v32;
      goto LABEL_14;
    }

    v28 = v15;
    v29 = v65;
    v30 = v65 == v15;
    v15 += 40;
    if (!v30)
    {
      goto LABEL_13;
    }

LABEL_14:
    a1 = v29 + 40;
    v17 = v64;
  }

  while (v15 < v64 && v18 < a3);
  v33 = a1;
LABEL_35:
  v56 = (v17 - v15) / 40;
  if (v33 != v15 || v33 >= &v15[40 * v56])
  {
    memmove(v33, v15, 40 * v56);
  }

  return 1;
}

uint64_t sub_10060A510(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for RawSearchResult(0);
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
          sub_10062CD24(v30, v43, type metadata accessor for RawSearchResult);
          v32 = v44;
          sub_10062CD24(v27, v44, type metadata accessor for RawSearchResult);
          v33 = static Date.< infix(_:_:)();
          sub_10062CBB8(v32, type metadata accessor for RawSearchResult);
          sub_10062CBB8(v31, type metadata accessor for RawSearchResult);
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
        sub_10062CD24(a2, v43, type metadata accessor for RawSearchResult);
        v21 = v44;
        sub_10062CD24(a4, v44, type metadata accessor for RawSearchResult);
        v22 = static Date.< infix(_:_:)();
        sub_10062CBB8(v21, type metadata accessor for RawSearchResult);
        sub_10062CBB8(v20, type metadata accessor for RawSearchResult);
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
  sub_10060AD74(&v48, &v47, &v46, type metadata accessor for RawSearchResult);
  return 1;
}

uint64_t sub_10060AC44(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = sub_1000BC4D4(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10060AD74(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_10060AE5C(void *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_10061BF10(result, a2, a3);

    return v6;
  }

  return result;
}

char *sub_10060AED4(char *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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

    v8 = sub_10061BA18(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10060AF64(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for UUID();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000BC4D4(&qword_1016A59A0, &unk_1013B34C0);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_100009774(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *sub_10060B28C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SharedBeaconRecord(0);
  v26 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000BC4D4(&unk_1016BBF90, &qword_1013B3678);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v25 = result + 56;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v18 = a4;
    v19 = *(a4 + 48);
    v20 = *(v26 + 72);
    sub_10062CD24(v19 + v20 * (v15 | (v14 << 6)), v10, type metadata accessor for SharedBeaconRecord);
    Hasher.init(_seed:)();
    sub_1011D8230(v27);
    Hasher._finalize()();
    v21 = v25;
    v22 = _HashTable.nextHole(atOrAfter:)();
    *&v21[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
    result = sub_10062CC64(v10, *(v11 + 6) + v22 * v20, type metadata accessor for SharedBeaconRecord);
    ++*(v11 + 2);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v18;
    if (!a3)
    {
LABEL_18:

      return v11;
    }
  }

  v16 = v14;
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_18;
    }

    v17 = a1[v14];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

Swift::Int sub_10060B4EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000BC4D4(&qword_1016A5A00, &qword_1013B3500);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 24 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    Hasher.init(_seed:)();

    String.hash(into:)();
    Hasher._combine(_:)(v19);
    result = Hasher._finalize()();
    v20 = -1 << v9[32];
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v9 + 6) + 24 * v23;
    *v28 = v17;
    *(v28 + 8) = v18;
    *(v28 + 16) = v19;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_10060B738(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000BC4D4(&qword_1016BC020, &qword_1013B3580);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    sub_100017D5C(v17, v18);
    Data.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10060B960(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000BC4D4(&qword_1016BBE20, &unk_1013B3520);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = static Hasher._hash(seed:_:)();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + 8 * v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_10060BB4C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000BC4D4(&qword_1016A5A68, &qword_1013B3588);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_10060C04C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = type metadata accessor for UUID();
  v76 = *(v83 - 8);
  __chkstk_darwin(v83);
  v82 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016BC360, &qword_10139CBE0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v61 - v13;
  v15 = type metadata accessor for OwnerSharingCircle(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v72 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      sub_1000BC4D4(&qword_1016A5A18, &qword_1013B3538);
      v18 = static _SetStorage.allocate(capacity:)();
      if (a2 < 1)
      {
        v19 = 0;
      }

      else
      {
        v19 = *a1;
      }

      v20 = 0;
      v74 = v76 + 16;
      v81 = (v76 + 32);
      v78 = (v76 + 8);
      v65 = v18 + 56;
      v21 = &qword_1016BBEE0;
      v63 = a2;
      v62 = a1;
      v80 = v12;
      v75 = v14;
      v64 = a4;
      v67 = v15;
      v61 = v16;
      v66 = v18;
      while (v19)
      {
        v71 = a3;
        v68 = (v19 - 1) & v19;
        v69 = v20;
        v22 = __clz(__rbit64(v19)) | (v20 << 6);
LABEL_16:
        v26 = *(a4 + 48);
        v70 = *(v16 + 72);
        v27 = v72;
        sub_10062CD24(v26 + v70 * v22, v72, type metadata accessor for OwnerSharingCircle);
        Hasher.init(_seed:)();
        Data.hash(into:)();
        v28 = sub_100009774(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        v79 = v28;
        dispatch thunk of Hashable.hash(into:)();
        Hasher._combine(_:)(*(v27 + *(v15 + 28)));
        v29 = *(v27 + *(v15 + 32));
        v30 = *(v29 + 64);
        v73 = v29 + 64;
        v31 = 1 << *(v29 + 32);
        if (v31 < 64)
        {
          v32 = ~(-1 << v31);
        }

        else
        {
          v32 = -1;
        }

        v33 = v32 & v30;
        v34 = (v31 + 63) >> 6;
        v77 = v29;

        v35 = 0;
        v84 = 0;
        if (!v33)
        {
LABEL_21:
          if (v34 <= v35 + 1)
          {
            v37 = v35 + 1;
          }

          else
          {
            v37 = v34;
          }

          v38 = v37 - 1;
          v39 = v80;
          while (1)
          {
            v36 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              break;
            }

            if (v36 >= v34)
            {
              v56 = sub_1000BC4D4(v21, &unk_10139CBF0);
              (*(*(v56 - 8) + 56))(v39, 1, 1, v56);
              v33 = 0;
              goto LABEL_29;
            }

            v33 = *(v73 + 8 * v36);
            ++v35;
            if (v33)
            {
              goto LABEL_28;
            }
          }

          __break(1u);
          goto LABEL_37;
        }

        while (1)
        {
          v36 = v35;
LABEL_28:
          v40 = __clz(__rbit64(v33));
          v33 &= v33 - 1;
          v41 = v40 | (v36 << 6);
          v42 = v77;
          v43 = v76;
          v44 = v82;
          v45 = v83;
          (*(v76 + 16))(v82, *(v77 + 48) + *(v76 + 72) * v41, v83);
          LOBYTE(v42) = *(*(v42 + 56) + v41);
          v46 = sub_1000BC4D4(v21, &unk_10139CBF0);
          v47 = v21;
          v48 = *(v46 + 48);
          v49 = *(v43 + 32);
          v39 = v80;
          v49(v80, v44, v45);
          *(v39 + v48) = v42;
          v21 = v47;
          (*(*(v46 - 8) + 56))(v39, 0, 1, v46);
          v38 = v36;
          v14 = v75;
LABEL_29:
          sub_1000D2AD8(v39, v14, &unk_1016BC360, &qword_10139CBE0);
          v50 = sub_1000BC4D4(v21, &unk_10139CBF0);
          if ((*(*(v50 - 8) + 48))(v14, 1, v50) == 1)
          {
            break;
          }

          v51 = *(v50 + 48);
          v52 = v82;
          v53 = v83;
          (*v81)(v82, v14, v83);
          v54 = v14[v51];
          v87 = v92;
          v88 = v93;
          v89 = v94;
          v85 = v90;
          v86 = v91;
          dispatch thunk of Hashable.hash(into:)();
          (*v78)(v52, v53);
          Hasher._combine(_:)(v54);
          v55 = Hasher._finalize()();
          v35 = v38;
          v84 ^= v55;
          if (!v33)
          {
            goto LABEL_21;
          }
        }

        Hasher._combine(_:)(v84);
        v15 = v67;
        v57 = v72;
        Hasher._combine(_:)(*(v72 + *(v67 + 36)));
        Hasher._finalize()();
        v58 = v66;
        v59 = v65;
        v60 = _HashTable.nextHole(atOrAfter:)();
        *(v59 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
        sub_10062CC64(v57, *(v58 + 48) + v60 * v70, type metadata accessor for OwnerSharingCircle);
        ++*(v58 + 16);
        a3 = v71 - 1;
        if (__OFSUB__(v71, 1))
        {
          goto LABEL_38;
        }

        a4 = v64;
        a2 = v63;
        a1 = v62;
        v16 = v61;
        v20 = v69;
        v19 = v68;
        if (v71 == 1)
        {
          goto LABEL_35;
        }
      }

      v23 = v20;
      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v24 >= a2)
        {
          goto LABEL_35;
        }

        v25 = a1[v24];
        ++v23;
        if (v25)
        {
          v71 = a3;
          v68 = (v25 - 1) & v25;
          v69 = v24;
          v22 = __clz(__rbit64(v25)) | (v24 << 6);
          goto LABEL_16;
        }
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  else
  {
LABEL_35:
  }
}

Swift::Int sub_10060C86C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000BC4D4(&qword_1016A5A58, &qword_1013B3578);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v31 = (v10 - 1) & v10;
LABEL_17:
    v16 = (*(v4 + 48) + 24 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = *(v16 + 1);
    v19 = *(v16 + 2);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v17);

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << v9[32];
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v9 + 6) + 24 * v23;
    *v28 = v17;
    *(v28 + 8) = v18;
    *(v28 + 16) = v19;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    v10 = v31;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v31 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10060CABC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for CorrelationIdentifier();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000BC4D4(&qword_1016A5A50, &qword_1013B3570);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_100009774(&unk_1016C7F30, &type metadata accessor for CorrelationIdentifier, &protocol conformance descriptor for CorrelationIdentifier);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *sub_10060CDE4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RawSearchResult(0);
  v26 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000BC4D4(&qword_1016A58C0, &qword_1013B32C8);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v25 = result + 56;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v18 = a4;
    v19 = *(a4 + 48);
    v20 = *(v26 + 72);
    sub_10062CD24(v19 + v20 * (v15 | (v14 << 6)), v10, type metadata accessor for RawSearchResult);
    Hasher.init(_seed:)();
    sub_100D15128(v27);
    Hasher._finalize()();
    v21 = v25;
    v22 = _HashTable.nextHole(atOrAfter:)();
    *&v21[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
    result = sub_10062CC64(v10, *(v11 + 6) + v22 * v20, type metadata accessor for RawSearchResult);
    ++*(v11 + 2);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v18;
    if (!a3)
    {
LABEL_18:

      return v11;
    }
  }

  v16 = v14;
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_18;
    }

    v17 = a1[v14];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

Swift::Int sub_10060D058(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = &_swiftEmptySetSingleton;
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  sub_1000BC4D4(a5, a6);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = v11[5];
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = NSObject._rawHashValue(seed:)(v18);
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(v11[6] + 8 * v23) = v19;
    ++v11[2];
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_10060D244(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for BeaconIdentifier(0);
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin(v8);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000BC4D4(&unk_1016BBE50, &unk_1013B34E0);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v28 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v18 = *(a4 + 48);
    v31 = *(v29 + 72);
    sub_10062CD24(v18 + v31 * (v15 | (v13 << 6)), v32, type metadata accessor for BeaconIdentifier);
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_100009774(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      a4 = v28;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
    a4 = v28;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = sub_10062CC64(v32, *(v10 + 48) + v22 * v31, type metadata accessor for BeaconIdentifier);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_10060D588(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = &_swiftEmptySetSingleton;
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  sub_1000BC4D4(a5, a6);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + (v15 | (v13 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v18);
    result = Hasher._finalize()();
    v19 = -1 << v11[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v11 + 6) + v22) = v18;
    ++*(v11 + 2);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_10060D788(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v10 = &_swiftEmptySetSingleton;
LABEL_6:

    return v10;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000BC4D4(&unk_1016BBF70, &qword_1013B3530);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    *&v9 = *(*(v4 + 48) + 8 * (v14 | (v12 << 6)));
    v26 = v9;
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v26);
    Hasher._combine(_:)(DWORD1(v26));
    result = Hasher._finalize()();
    v17 = -1 << v10[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v13 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v13 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v13 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v13 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(&v9 + 1) = *(&v26 + 1);
    *(*(v10 + 6) + 8 * v20) = v26;
    ++*(v10 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_6;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

double sub_10060D9F4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *(sub_1000BC4D4(a2, a3) + 48);
  v11 = *(sub_1000BC4D4(a4, a5) + 48);
  v12 = *(a1 + v10);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 16))(a6, a1, v13);
  *(a6 + v11) = v12;

  return result;
}

char *sub_10060DAA8(uint64_t a1, char *a2)
{
  v4 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v63 - v8;
  v75 = type metadata accessor for SharedBeaconRecord(0);
  v10 = __chkstk_darwin(v75);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v63 - v14;
  __chkstk_darwin(v13);
  v77 = (&v63 - v17);
  if (!*(a2 + 2))
  {

    return &_swiftEmptySetSingleton;
  }

  v67 = v7;
  v19 = a1 + 56;
  v18 = *(a1 + 56);
  v20 = -1 << *(a1 + 32);
  v76 = ~v20;
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v18;
  v68 = (63 - v20) >> 6;
  v74 = (v16 + 56);
  v66 = v16;
  v73 = (v16 + 48);
  v78 = a2 + 56;

  v24 = 0;
  v79 = a2;
  v72 = a1;
  v71 = a1 + 56;
  for (i = v9; ; v9 = i)
  {
    v25 = v22;
    v26 = v24;
    v65 = v22;
    if (v22)
    {
LABEL_15:
      v22 = (v25 - 1) & v25;
      sub_10062CD24(*(a1 + 48) + *(v66 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v9, type metadata accessor for SharedBeaconRecord);
      v30 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v68 <= (v24 + 1) ? v24 + 1 : v68;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v68)
        {
          break;
        }

        v25 = *(v19 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_15;
        }
      }

      v22 = 0;
      v30 = 1;
    }

    v31 = v75;
    v70 = *v74;
    v70(v9, v30, 1, v75);
    v81 = a1;
    v82 = v19;
    v83 = v76;
    v84 = v28;
    v85 = v22;
    v69 = *v73;
    if (v69(v9, 1, v31) == 1)
    {
      sub_10000B3A8(v9, &unk_101698C30, &unk_101392630);
      v58 = a1;
      goto LABEL_52;
    }

    sub_10062CC64(v9, v77, type metadata accessor for SharedBeaconRecord);
    Hasher.init(_seed:)();
    sub_1011D8230(v80);
    v32 = Hasher._finalize()();
    v33 = -1 << a2[32];
    v24 = v32 & ~v33;
    a1 = v24 >> 6;
    v9 = 1 << v24;
    if (((1 << v24) & v78[v24 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_10062CBB8(v77, type metadata accessor for SharedBeaconRecord);
    v24 = v28;
    a1 = v72;
    v19 = v71;
  }

  v34 = ~v33;
  v26 = *(v66 + 72);
  sub_10062CD24(*(a2 + 6) + v26 * v24, v15, type metadata accessor for SharedBeaconRecord);
  LODWORD(v65) = sub_1011DB3D8(v15, v77);
  sub_10062CBB8(v15, type metadata accessor for SharedBeaconRecord);
  if ((v65 & 1) == 0)
  {
    while (1)
    {
      v24 = (v24 + 1) & v34;
      a1 = v24 >> 6;
      a2 = v79;
      v9 = 1 << v24;
      if (((1 << v24) & v78[v24 >> 6]) == 0)
      {
        goto LABEL_6;
      }

      sub_10062CD24(*(v79 + 6) + v26 * v24, v15, type metadata accessor for SharedBeaconRecord);
      v35 = sub_1011DB3D8(v15, v77);
      sub_10062CBB8(v15, type metadata accessor for SharedBeaconRecord);
      if (v35)
      {
        a2 = v79;
        break;
      }
    }
  }

  v36 = sub_10062CBB8(v77, type metadata accessor for SharedBeaconRecord);
  v37 = a2[32];
  v19 = ((1 << v37) + 63) >> 6;
  v23 = (8 * v19);
  if ((v37 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    i = v19;
    v65 = &v63;
    __chkstk_darwin(v36);
    v39 = &v63 - ((v38 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v39, v78, v38);
    v40 = *&v39[8 * a1] & ~v9;
    v41 = *(a2 + 2);
    v77 = v39;
    *&v39[8 * a1] = v40;
    v42 = v41 - 1;
    a1 = v72;
    v19 = v71;
    v24 = v67;
    v43 = v68;
LABEL_25:
    v66 = v42;
    while (v22)
    {
      v44 = v28;
LABEL_37:
      v47 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      sub_10062CD24(*(a1 + 48) + (v47 | (v44 << 6)) * v26, v24, type metadata accessor for SharedBeaconRecord);
      v48 = 0;
LABEL_38:
      v49 = v75;
      v70(v24, v48, 1, v75);
      v81 = a1;
      v82 = v19;
      v83 = v76;
      v84 = v28;
      v85 = v22;
      if (v69(v24, 1, v49) == 1)
      {
        sub_10000B3A8(v24, &unk_101698C30, &unk_101392630);
        a2 = sub_10060B28C(v77, i, v66, a2);
        goto LABEL_51;
      }

      sub_10062CC64(v24, v12, type metadata accessor for SharedBeaconRecord);
      Hasher.init(_seed:)();
      sub_1011D8230(v80);
      v50 = Hasher._finalize()();
      v51 = -1 << a2[32];
      v52 = v50 & ~v51;
      v53 = v52 >> 6;
      v9 = 1 << v52;
      if (((1 << v52) & v78[v52 >> 6]) == 0)
      {
        goto LABEL_26;
      }

      sub_10062CD24(*(v79 + 6) + v52 * v26, v15, type metadata accessor for SharedBeaconRecord);
      v54 = sub_1011DB3D8(v15, v12);
      sub_10062CBB8(v15, type metadata accessor for SharedBeaconRecord);
      if (!v54)
      {
        v55 = ~v51;
        while (1)
        {
          v52 = (v52 + 1) & v55;
          v53 = v52 >> 6;
          v9 = 1 << v52;
          if (((1 << v52) & v78[v52 >> 6]) == 0)
          {
            break;
          }

          sub_10062CD24(*(v79 + 6) + v52 * v26, v15, type metadata accessor for SharedBeaconRecord);
          v56 = sub_1011DB3D8(v15, v12);
          sub_10062CBB8(v15, type metadata accessor for SharedBeaconRecord);
          if (v56)
          {
            goto LABEL_44;
          }
        }

LABEL_26:
        sub_10062CBB8(v12, type metadata accessor for SharedBeaconRecord);
        a2 = v79;
        a1 = v72;
        v19 = v71;
        v24 = v67;
        v43 = v68;
        continue;
      }

LABEL_44:
      sub_10062CBB8(v12, type metadata accessor for SharedBeaconRecord);
      v57 = v77[v53];
      v77[v53] = v57 & ~v9;
      a2 = v79;
      a1 = v72;
      v19 = v71;
      v24 = v67;
      v43 = v68;
      if ((v57 & v9) != 0)
      {
        v42 = v66 - 1;
        if (__OFSUB__(v66, 1))
        {
          __break(1u);
        }

        if (v66 == 1)
        {

          a2 = &_swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_25;
      }
    }

    if (v43 <= (v28 + 1))
    {
      v45 = v28 + 1;
    }

    else
    {
      v45 = v43;
    }

    v46 = v45 - 1;
    while (1)
    {
      v44 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v44 >= v43)
      {
        v22 = 0;
        v48 = 1;
        v28 = v46;
        goto LABEL_38;
      }

      v22 = *(v19 + 8 * v44);
      ++v28;
      if (v22)
      {
        v28 = v44;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v77 = v23;

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v60 = v77;
  v61 = swift_slowAlloc();
  memcpy(v61, v78, v60);
  v62 = sub_1006173A4(v61, v19, a2, v24, &v81);

  a1 = v81;
  v76 = v83;
  a2 = v62;
LABEL_51:
  v58 = a1;
LABEL_52:
  sub_1000128F8(v58);
  return a2;
}

void *sub_10060E4E0(uint64_t a1, unint64_t *a2)
{
  v7 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v53 = 0;
  v9 = a1 + 56;
  v8 = *(a1 + 56);
  v10 = -1 << *(a1 + 32);
  v58 = ~v10;
  if (-v10 < 64)
  {
    v11 = ~(-1 << -v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = (63 - v10) >> 6;
  v64 = a2 + 7;

  v16 = 0;
  v60 = v9;
  v59 = v13;
  v61 = v14;
  v62 = v7;
  while (1)
  {
    if (v12)
    {
      goto LABEL_13;
    }

    v17 = v16;
    do
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_53;
      }

      if (v18 >= v13)
      {
LABEL_50:
        sub_1000128F8(v14);
        return v7;
      }

      v12 = *(v9 + 8 * v18);
      ++v17;
    }

    while (!v12);
    v16 = v18;
LABEL_13:
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v63 = v16;
    v20 = *(v14 + 48) + 24 * (v19 | (v16 << 6));
    v2 = *v20;
    v21 = *(v20 + 8);
    v4 = *(v20 + 16);
    Hasher.init(_seed:)();

    String.hash(into:)();
    Hasher._combine(_:)(v4);
    v22 = Hasher._finalize()();
    v23 = -1 << *(v7 + 32);
    v9 = v22 & ~v23;
    v7 = v9 >> 6;
    v6 = 1 << v9;
    if (((1 << v9) & v64[v9 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v14 = v61;
    v7 = v62;
    v9 = v60;
    v16 = v63;
    v13 = v59;
  }

  v24 = ~v23;
  v3 = v62[6];
  while (1)
  {
    v25 = v3 + 24 * v9;
    v5 = *(v25 + 16);
    v26 = *v25 == v2 && *(v25 + 8) == v21;
    if (!v26)
    {
      break;
    }

    if (v4 == v5)
    {
      goto LABEL_23;
    }

LABEL_16:
    v9 = (v9 + 1) & v24;
    v7 = v9 >> 6;
    v6 = 1 << v9;
    if ((v64[v9 >> 6] & (1 << v9)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v4 ^ v5))
  {
    goto LABEL_16;
  }

LABEL_23:
  v5 = v63;
  v66 = v58;
  v67 = v63;
  v68 = v12;
  v4 = v60;
  v2 = v61;
  v65[0] = v61;
  v65[1] = v60;

  v3 = v62;
  v28 = *(v62 + 32);
  v54 = ((1 << v28) + 63) >> 6;
  v15 = 8 * v54;
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v55 = &v52;
    __chkstk_darwin(v27);
    v9 = &v52 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v9, v64, v29);
    v30 = *(v9 + 8 * v7) & ~v6;
    v57 = v9;
    *(v9 + 8 * v7) = v30;
    v31 = *(v3 + 16) - 1;
    v32 = v59;
LABEL_25:
    v56 = v31;
LABEL_27:
    while (2)
    {
      if (v12)
      {
LABEL_33:
        v35 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v63 = v5;
        v36 = *(v2 + 48) + 24 * (v35 | (v5 << 6));
        v6 = *v36;
        v37 = *(v36 + 8);
        v38 = *(v36 + 16);
        Hasher.init(_seed:)();

        String.hash(into:)();
        Hasher._combine(_:)(v38);
        v39 = Hasher._finalize()();
        v40 = -1 << *(v3 + 32);
        v7 = v39 & ~v40;
        v9 = v7 >> 6;
        v41 = 1 << v7;
        if (((1 << v7) & v64[v7 >> 6]) == 0)
        {
LABEL_26:

          v2 = v61;
          v3 = v62;
          v4 = v60;
          v5 = v63;
          v32 = v59;
          continue;
        }

        v42 = ~v40;
        v43 = *(v3 + 48);
        while (1)
        {
          v44 = v43 + 24 * v7;
          v45 = *(v44 + 16);
          if (*v44 == v6 && *(v44 + 8) == v37)
          {
            if (v38 == v45)
            {
              goto LABEL_43;
            }
          }

          else if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && ((v38 ^ v45) & 1) == 0)
          {
LABEL_43:

            v47 = v57[v9];
            v57[v9] = v47 & ~v41;
            v26 = (v47 & v41) == 0;
            v2 = v61;
            v3 = v62;
            v4 = v60;
            v5 = v63;
            v32 = v59;
            if (!v26)
            {
              v31 = v56 - 1;
              if (__OFSUB__(v56, 1))
              {
                __break(1u);
              }

              if (v56 == 1)
              {

                v7 = &_swiftEmptySetSingleton;
                goto LABEL_49;
              }

              goto LABEL_25;
            }

            goto LABEL_27;
          }

          v7 = (v7 + 1) & v42;
          v9 = v7 >> 6;
          v41 = 1 << v7;
          if ((v64[v7 >> 6] & (1 << v7)) == 0)
          {
            goto LABEL_26;
          }
        }
      }

      break;
    }

    v33 = v5;
    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v34 >= v32)
      {
        v7 = sub_10060B4EC(v57, v54, v56, v3);
        goto LABEL_49;
      }

      v12 = *(v4 + 8 * v34);
      ++v33;
      if (v12)
      {
        v5 = v34;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    v49 = v15;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v64, v49);
  v51 = v53;
  v7 = sub_100617828(v50, v54, v3, v9, v65);

  if (!v51)
  {

    v2 = v65[0];
    v58 = v66;
LABEL_49:
    v14 = v2;
    goto LABEL_50;
  }

  __break(1u);
  return result;
}

void *sub_10060EAD8(uint64_t a1, Swift::Int a2)
{
  v4 = a2;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v174 = 0;
  v6 = a1 + 56;
  v5 = *(a1 + 56);
  v7 = -1;
  v8 = -1 << *(a1 + 32);
  v179 = ~v8;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v5;
  v11 = (63 - v8) >> 6;
  v189 = (a2 + 56);
  v13 = v201;
  v12 = v202;

  v16 = 0;
  v185 = v4;
  v178 = v6;
  v176 = v11;
  v177 = v14;
  if (!v10)
  {
LABEL_6:
    v17 = v16;
    do
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_319;
      }

      if (v18 >= v11)
      {
        v201 = v13;
        v202 = v12;
        goto LABEL_315;
      }

      v10 = *(v6 + 8 * v18);
      ++v17;
    }

    while (!v10);
    v16 = v18;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v20 = (*(v14 + 48) + ((v16 << 10) | (16 * v19)));
    v22 = *v20;
    v21 = v20[1];
    v182 = v16;
    v203 = v16;
    v204 = v10;
    Hasher.init(_seed:)();
    sub_100017D5C(v22, v21);
    v188 = v22;
    Data.hash(into:)();
    v13 = __s1;
    v23 = Hasher._finalize()();
    v24 = -1 << *(v4 + 32);
    v7 = v21;
    v3 = v23 & ~v24;
    v11 = v3 >> 6;
    v25 = v189;
    v2 = 1 << v3;
    if (((1 << v3) & v189[v3 >> 6]) != 0)
    {
      break;
    }

LABEL_156:
    sub_100016590(v188, v7);
    v12 = v179;
    v6 = v178;
    v13 = v178;
    v14 = v177;
    v16 = v182;
    v11 = v176;
    v7 = -1;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  v26 = ~v24;
  v27 = v21 >> 62;
  if (v188)
  {
    v28 = 0;
  }

  else
  {
    v28 = v7 == 0xC000000000000000;
  }

  v29 = !v28;
  LODWORD(v186) = v29;
  v173 = HIDWORD(v188);
  v30 = __OFSUB__(HIDWORD(v188), v188);
  v181 = v30;
  v180 = HIDWORD(v188) - v188;
  v187 = BYTE6(v7);
  v175 = v188;
  v172 = v188 >> 32;
  v171 = (v188 >> 32) - v188;
  v184 = v7;
  v183 = v26;
  while (1)
  {
    v31 = (*(v4 + 48) + 16 * v3);
    v6 = *v31;
    v32 = v31[1];
    v33 = v32 >> 62;
    if (v32 >> 62 == 3)
    {
      if (v6)
      {
        v34 = 0;
      }

      else
      {
        v34 = v32 == 0xC000000000000000;
      }

      v36 = !v34 || v27 < 3;
      if (((v36 | v186) & 1) == 0)
      {
        v6 = v178;
        v201 = v178;
        v202 = v179;
        v7 = v177;
        v200 = v177;
        v81 = 0;
        v82 = 0xC000000000000000;
LABEL_161:
        v83 = sub_100016590(v81, v82);
        goto LABEL_162;
      }

LABEL_46:
      v37 = 0;
      if (v27 <= 1)
      {
        goto LABEL_43;
      }

      goto LABEL_47;
    }

    if (v33 > 1)
    {
      if (v33 != 2)
      {
        goto LABEL_46;
      }

      v39 = *(v6 + 16);
      v38 = *(v6 + 24);
      v40 = __OFSUB__(v38, v39);
      v37 = v38 - v39;
      if (v40)
      {
        goto LABEL_328;
      }

      if (v27 <= 1)
      {
        goto LABEL_43;
      }
    }

    else if (v33)
    {
      LODWORD(v37) = HIDWORD(v6) - v6;
      if (__OFSUB__(HIDWORD(v6), v6))
      {
        goto LABEL_327;
      }

      v37 = v37;
      if (v27 <= 1)
      {
LABEL_43:
        v41 = v187;
        if (v27)
        {
          v41 = v180;
          if (v181)
          {
            goto LABEL_323;
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
      v37 = BYTE6(v32);
      if (v27 <= 1)
      {
        goto LABEL_43;
      }
    }

LABEL_47:
    if (v27 != 2)
    {
      if (!v37)
      {
        goto LABEL_159;
      }

      goto LABEL_23;
    }

    v43 = *(v188 + 16);
    v42 = *(v188 + 24);
    v40 = __OFSUB__(v42, v43);
    v41 = v42 - v43;
    if (v40)
    {
      goto LABEL_322;
    }

LABEL_49:
    if (v37 != v41)
    {
      goto LABEL_23;
    }

    if (v37 < 1)
    {
      goto LABEL_159;
    }

    if (v33 > 1)
    {
      break;
    }

    if (v33)
    {
      v7 = v6;
      if (v6 > v6 >> 32)
      {
        goto LABEL_329;
      }

      sub_100017D5C(v6, v32);
      v49 = __DataStorage._bytes.getter();
      if (v49)
      {
        v4 = v49;
        v50 = __DataStorage._offset.getter();
        if (__OFSUB__(v6, v50))
        {
          goto LABEL_333;
        }

        v170 = v6 - v50 + v4;
      }

      else
      {
        v170 = 0;
      }

      v13 = v32 & 0x3FFFFFFFFFFFFFFFLL;
      __DataStorage._length.getter();
      v4 = v185;
      v7 = v184;
      if (v27 != 2)
      {
        if (v27 == 1)
        {
          if (v172 < v175)
          {
            goto LABEL_349;
          }

          v4 = __DataStorage._bytes.getter();
          if (v4)
          {
            v59 = __DataStorage._offset.getter();
            if (__OFSUB__(v175, v59))
            {
              goto LABEL_363;
            }

            v4 += v175 - v59;
          }

          v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
          v60 = __DataStorage._length.getter();
          v57 = v171;
          if (v60 < v171)
          {
            v57 = v60;
          }

          v58 = v170;
          if (!v170)
          {
            goto LABEL_389;
          }

          if (!v4)
          {
            goto LABEL_388;
          }

          goto LABEL_101;
        }

        v70 = v170;
        LODWORD(__s1[0]) = v188;
        BYTE4(__s1[0]) = v173;
        *(__s1 + 5) = *(&v188 + 5);
        HIBYTE(__s1[0]) = HIBYTE(v188);
        LODWORD(__s1[1]) = v184;
        WORD2(__s1[1]) = WORD2(v184);
        if (!v170)
        {
          goto LABEL_385;
        }

        goto LABEL_123;
      }

      v71 = *(v188 + 24);
      v169 = *(v188 + 16);
      v168 = v71;
      v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
      v4 = __DataStorage._bytes.getter();
      if (v4)
      {
        v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
        v72 = __DataStorage._offset.getter();
        v73 = v169;
        if (__OFSUB__(v169, v72))
        {
          goto LABEL_361;
        }

        v4 += v169 - v72;
      }

      else
      {
        v73 = v169;
      }

      v79 = v168 - v73;
      if (__OFSUB__(v168, v73))
      {
        goto LABEL_350;
      }

      v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
      v80 = __DataStorage._length.getter();
      if (v80 >= v79)
      {
        v57 = v79;
      }

      else
      {
        v57 = v80;
      }

      v58 = v170;
      if (!v170)
      {
        goto LABEL_378;
      }

      if (!v4)
      {
        goto LABEL_377;
      }

      goto LABEL_150;
    }

    __s1[0] = v6;
    LOWORD(__s1[1]) = v32;
    BYTE2(__s1[1]) = BYTE2(v32);
    BYTE3(__s1[1]) = BYTE3(v32);
    BYTE4(__s1[1]) = BYTE4(v32);
    BYTE5(__s1[1]) = BYTE5(v32);
    if (!v27)
    {
      goto LABEL_76;
    }

    if (v27 == 1)
    {
      if (v172 < v175)
      {
        goto LABEL_342;
      }

      sub_100017D5C(v6, v32);
      v44 = __DataStorage._bytes.getter();
      if (!v44)
      {
        goto LABEL_379;
      }

      v4 = v44;
      v13 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v45 = __DataStorage._offset.getter();
      if (__OFSUB__(v175, v45))
      {
        goto LABEL_347;
      }

      v4 += v175 - v45;
      v46 = __DataStorage._length.getter();
      if (!v4)
      {
        goto LABEL_380;
      }

      goto LABEL_110;
    }

    v61 = *(v188 + 24);
    v170 = *(v188 + 16);
    v169 = v61;
    sub_100017D5C(v6, v32);
    v13 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v4 = __DataStorage._bytes.getter();
    if (v4)
    {
      v13 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v62 = __DataStorage._offset.getter();
      v63 = v170;
      if (__OFSUB__(v170, v62))
      {
        v201 = v178;
        v202 = v179;
        __break(1u);
LABEL_359:
        v201 = v178;
        v202 = v179;
        __break(1u);
LABEL_360:
        v201 = v178;
        v202 = v179;
        __break(1u);
LABEL_361:
        v201 = v178;
        v202 = v179;
        __break(1u);
LABEL_362:
        v201 = v178;
        v202 = v179;
        __break(1u);
LABEL_363:
        v201 = v178;
        v202 = v179;
        __break(1u);
LABEL_364:
        __break(1u);
      }

      v4 += v170 - v62;
    }

    else
    {
      v63 = v170;
    }

    v74 = v169 - v63;
    if (__OFSUB__(v169, v63))
    {
      goto LABEL_345;
    }

    v75 = __DataStorage._length.getter();
    if (!v4)
    {
      goto LABEL_381;
    }

LABEL_131:
    if (v75 >= v74)
    {
      v76 = v74;
    }

    else
    {
      v76 = v75;
    }

    v13 = memcmp(__s1, v4, v76);
    sub_100016590(v6, v32);
    v4 = v185;
    v25 = v189;
    v7 = v184;
LABEL_154:
    v26 = v183;
    if (!v13)
    {
LABEL_159:
      v6 = v178;
      v201 = v178;
      v202 = v179;
      v82 = v7;
      v7 = v177;
      v200 = v177;
      v81 = v188;
      goto LABEL_161;
    }

LABEL_23:
    v3 = (v3 + 1) & v26;
    v11 = v3 >> 6;
    v2 = 1 << v3;
    if ((v25[v3 >> 6] & (1 << v3)) == 0)
    {
      goto LABEL_156;
    }
  }

  if (v33 != 2)
  {
    memset(__s1, 0, 14);
    if (!v27)
    {
LABEL_76:
      __s2 = v188;
      v191 = v173;
      v192 = *(&v188 + 5);
      v193 = HIBYTE(v188);
      v194 = v7;
      v195 = BYTE2(v7);
      v196 = BYTE3(v7);
      v197 = BYTE4(v7);
      v198 = BYTE5(v7);
      v54 = memcmp(__s1, &__s2, v187);
      v26 = v183;
      v25 = v189;
      if (!v54)
      {
        goto LABEL_159;
      }

      goto LABEL_23;
    }

    if (v27 != 2)
    {
      if (v172 < v175)
      {
        goto LABEL_341;
      }

      sub_100017D5C(v6, v32);
      v64 = __DataStorage._bytes.getter();
      if (!v64)
      {
        goto LABEL_382;
      }

      v4 = v64;
      v13 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v65 = __DataStorage._offset.getter();
      if (__OFSUB__(v175, v65))
      {
        goto LABEL_346;
      }

      v4 += v175 - v65;
      v46 = __DataStorage._length.getter();
      if (!v4)
      {
        goto LABEL_384;
      }

LABEL_110:
      if (v46 >= v171)
      {
        v66 = v171;
      }

      else
      {
        v66 = v46;
      }

      v58 = __s1;
LABEL_152:
      v13 = memcmp(v58, v4, v66);
      sub_100016590(v6, v32);
      v4 = v185;
LABEL_153:
      v25 = v189;
      goto LABEL_154;
    }

    v51 = *(v188 + 24);
    v170 = *(v188 + 16);
    v169 = v51;
    sub_100017D5C(v6, v32);
    v13 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v4 = __DataStorage._bytes.getter();
    if (v4)
    {
      v13 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v52 = __DataStorage._offset.getter();
      v53 = v170;
      if (__OFSUB__(v170, v52))
      {
        goto LABEL_359;
      }

      v4 += v170 - v52;
    }

    else
    {
      v53 = v170;
    }

    v74 = v169 - v53;
    if (__OFSUB__(v169, v53))
    {
      goto LABEL_344;
    }

    v75 = __DataStorage._length.getter();
    if (!v4)
    {
      goto LABEL_383;
    }

    goto LABEL_131;
  }

  v7 = *(v6 + 16);
  sub_100017D5C(v6, v32);
  v47 = __DataStorage._bytes.getter();
  if (v47)
  {
    v4 = v47;
    v48 = __DataStorage._offset.getter();
    if (__OFSUB__(v7, v48))
    {
      goto LABEL_332;
    }

    v170 = v7 - v48 + v4;
  }

  else
  {
    v170 = 0;
  }

  v13 = v32 & 0x3FFFFFFFFFFFFFFFLL;
  __DataStorage._length.getter();
  v4 = v185;
  v7 = v184;
  if (v27 != 2)
  {
    if (v27 == 1)
    {
      if (v172 < v175)
      {
        goto LABEL_343;
      }

      v4 = __DataStorage._bytes.getter();
      if (v4)
      {
        v55 = __DataStorage._offset.getter();
        if (__OFSUB__(v175, v55))
        {
          goto LABEL_362;
        }

        v4 += v175 - v55;
      }

      v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
      v56 = __DataStorage._length.getter();
      v57 = v171;
      if (v56 < v171)
      {
        v57 = v56;
      }

      v58 = v170;
      if (!v170)
      {
        goto LABEL_391;
      }

      if (!v4)
      {
        goto LABEL_390;
      }

LABEL_101:
      if (v58 == v4)
      {
        goto LABEL_317;
      }

LABEL_151:
      v66 = v57;
      goto LABEL_152;
    }

    v70 = v170;
    LODWORD(__s1[0]) = v188;
    BYTE4(__s1[0]) = v173;
    *(__s1 + 5) = *(&v188 + 5);
    HIBYTE(__s1[0]) = HIBYTE(v188);
    LODWORD(__s1[1]) = v184;
    WORD2(__s1[1]) = WORD2(v184);
    if (!v170)
    {
      goto LABEL_376;
    }

LABEL_123:
    v13 = memcmp(v70, __s1, v187);
    sub_100016590(v6, v32);
    goto LABEL_153;
  }

  v67 = *(v188 + 24);
  v169 = *(v188 + 16);
  v168 = v67;
  v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = __DataStorage._bytes.getter();
  if (v4)
  {
    v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
    v68 = __DataStorage._offset.getter();
    v69 = v169;
    if (__OFSUB__(v169, v68))
    {
      goto LABEL_360;
    }

    v4 += v169 - v68;
  }

  else
  {
    v69 = v169;
  }

  v77 = v168 - v69;
  if (__OFSUB__(v168, v69))
  {
    goto LABEL_348;
  }

  v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
  v78 = __DataStorage._length.getter();
  if (v78 >= v77)
  {
    v57 = v77;
  }

  else
  {
    v57 = v78;
  }

  v58 = v170;
  if (!v170)
  {
    goto LABEL_387;
  }

  if (!v4)
  {
    goto LABEL_386;
  }

LABEL_150:
  v7 = v184;
  if (v58 != v4)
  {
    goto LABEL_151;
  }

LABEL_317:
  v201 = v178;
  v202 = v179;
  v157 = v7;
  v7 = v177;
  v200 = v177;
  v158 = v6;
  v6 = v178;
  sub_100016590(v158, v32);
  v83 = sub_100016590(v188, v157);
  v4 = v185;
LABEL_162:
  v84 = *(v4 + 32);
  v166 = ((1 << v84) + 63) >> 6;
  v15 = 8 * v166;
  if ((v84 & 0x3Fu) > 0xD)
  {
    goto LABEL_334;
  }

LABEL_163:
  v167 = &v163;
  __chkstk_darwin(v83);
  v86 = &v163 - ((v85 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v86, v189, v85);
  v87 = *&v86[8 * v11] & ~v2;
  v169 = v86;
  *&v86[8 * v11] = v87;
  v88 = *(v4 + 16) - 1;
  v12 = v182;
  v89 = v176;
  while (2)
  {
    v168 = v88;
    while (1)
    {
LABEL_165:
      if (v10)
      {
        goto LABEL_171;
      }

      v90 = v12;
      do
      {
        v91 = v90 + 1;
        if (__OFADD__(v90, 1))
        {
          __break(1u);
LABEL_319:
          v201 = v13;
          v202 = v12;
          __break(1u);
LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          v201 = v178;
          v202 = v179;
          __break(1u);
LABEL_323:
          v201 = v178;
          v202 = v179;
          __break(1u);
LABEL_324:
          __break(1u);
LABEL_325:
          __break(1u);
LABEL_326:
          __break(1u);
LABEL_327:
          v201 = v178;
          v202 = v179;
          __break(1u);
LABEL_328:
          v201 = v178;
          v202 = v179;
          __break(1u);
LABEL_329:
          v201 = v178;
          v202 = v179;
          __break(1u);
LABEL_330:
          __break(1u);
LABEL_331:
          __break(1u);
LABEL_332:
          v201 = v178;
          v202 = v179;
          __break(1u);
LABEL_333:
          v201 = v178;
          v202 = v179;
          __break(1u);
LABEL_334:
          v159 = v15;

          v13 = v159;
          if (!swift_stdlib_isStackAllocationSafe())
          {
            goto LABEL_356;
          }

          goto LABEL_163;
        }

        if (v91 >= v89)
        {
          v4 = sub_10060B738(v169, v166, v168, v4);
          goto LABEL_314;
        }

        v10 = *(v6 + 8 * v91);
        ++v90;
      }

      while (!v10);
      v12 = v91;
LABEL_171:
      v92 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v93 = (*(v7 + 48) + ((v12 << 10) | (16 * v92)));
      v95 = *v93;
      v94 = v93[1];
      v200 = v7;
      v201 = v6;
      v6 = v94;
      v202 = v179;
      v203 = v12;
      v182 = v12;
      v204 = v10;
      Hasher.init(_seed:)();
      sub_100017D5C(v95, v6);
      Data.hash(into:)();
      v13 = __s1;
      v96 = Hasher._finalize()();
      v97 = -1 << *(v4 + 32);
      v98 = v96 & ~v97;
      v11 = v98 >> 6;
      v99 = v189;
      v2 = 1 << v98;
      if (((1 << v98) & v189[v98 >> 6]) != 0)
      {
        break;
      }

      v104 = v95;
LABEL_304:
      sub_100016590(v104, v6);
      v6 = v178;
      v7 = v177;
      v12 = v182;
      v89 = v176;
    }

    v100 = ~v97;
    v7 = v6 >> 62;
    if (v95)
    {
      v101 = 0;
    }

    else
    {
      v101 = v6 == 0xC000000000000000;
    }

    v102 = !v101;
    LODWORD(v184) = v102;
    v173 = HIDWORD(v95);
    v103 = __OFSUB__(HIDWORD(v95), v95);
    v181 = v103;
    v180 = HIDWORD(v95) - v95;
    v188 = BYTE6(v6);
    v175 = v95;
    v172 = v95 >> 32;
    v170 = (v95 >> 32) - v95;
    v186 = v6;
    v104 = v95;
    v187 = v95;
    v183 = v100;
    while (2)
    {
      v105 = (*(v4 + 48) + 16 * v98);
      v106 = *v105;
      v3 = v105[1];
      v107 = v3 >> 62;
      if (v3 >> 62 != 3)
      {
        if (v107 <= 1)
        {
          if (v107)
          {
            LODWORD(v111) = HIDWORD(v106) - v106;
            if (__OFSUB__(HIDWORD(v106), v106))
            {
              goto LABEL_325;
            }

            v111 = v111;
            if (v7 > 1)
            {
              goto LABEL_207;
            }
          }

          else
          {
            v111 = BYTE6(v3);
            if (v7 > 1)
            {
              goto LABEL_207;
            }
          }

          goto LABEL_203;
        }

        if (v107 != 2)
        {
          goto LABEL_206;
        }

        v113 = *(v106 + 16);
        v112 = *(v106 + 24);
        v40 = __OFSUB__(v112, v113);
        v111 = v112 - v113;
        if (v40)
        {
          goto LABEL_324;
        }

        if (v7 <= 1)
        {
          goto LABEL_203;
        }

LABEL_207:
        if (v7 == 2)
        {
          v116 = *(v104 + 16);
          v115 = *(v104 + 24);
          v40 = __OFSUB__(v115, v116);
          v114 = v115 - v116;
          if (v40)
          {
            goto LABEL_320;
          }

          goto LABEL_209;
        }

        if (!v111)
        {
          goto LABEL_302;
        }

        goto LABEL_183;
      }

      if (v106)
      {
        v108 = 0;
      }

      else
      {
        v108 = v3 == 0xC000000000000000;
      }

      v110 = !v108 || v7 < 3;
      if (((v110 | v184) & 1) == 0)
      {
        v153 = 0;
        v154 = 0xC000000000000000;
        goto LABEL_305;
      }

LABEL_206:
      v111 = 0;
      if (v7 > 1)
      {
        goto LABEL_207;
      }

LABEL_203:
      v114 = v188;
      if (v7)
      {
        v114 = v180;
        if (v181)
        {
          goto LABEL_321;
        }
      }

LABEL_209:
      if (v111 != v114)
      {
        goto LABEL_183;
      }

      if (v111 < 1)
      {
        goto LABEL_302;
      }

      if (v107 <= 1)
      {
        if (!v107)
        {
          __s1[0] = v106;
          LOWORD(__s1[1]) = v3;
          BYTE2(__s1[1]) = BYTE2(v3);
          BYTE3(__s1[1]) = BYTE3(v3);
          BYTE4(__s1[1]) = BYTE4(v3);
          BYTE5(__s1[1]) = BYTE5(v3);
          if (v7)
          {
            if (v7 == 1)
            {
              v13 = v175;
              v117 = v172;
              if (v172 < v175)
              {
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
                v201 = v178;
                v202 = v179;
                __break(1u);
LABEL_342:
                v201 = v178;
                v202 = v179;
                __break(1u);
LABEL_343:
                v201 = v178;
                v202 = v179;
                __break(1u);
LABEL_344:
                v201 = v178;
                v202 = v179;
                __break(1u);
LABEL_345:
                v201 = v178;
                v202 = v179;
                __break(1u);
LABEL_346:
                v201 = v178;
                v202 = v179;
                __break(1u);
LABEL_347:
                v201 = v178;
                v202 = v179;
                __break(1u);
LABEL_348:
                v201 = v178;
                v202 = v179;
                __break(1u);
LABEL_349:
                v201 = v178;
                v202 = v179;
                __break(1u);
LABEL_350:
                v201 = v178;
                v202 = v179;
                __break(1u);
LABEL_351:
                __break(1u);
LABEL_352:
                __break(1u);
LABEL_353:
                __break(1u);
LABEL_354:
                __break(1u);
LABEL_355:
                __break(1u);
LABEL_356:
                v160 = swift_slowAlloc();
                memcpy(v160, v189, v13);
                v161 = v174;
                v162 = sub_100617A78(v160, v166, v4, v3, &v200);

                if (v161)
                {
                  goto LABEL_393;
                }

                v7 = v200;
                v179 = v202;
                v4 = v162;
LABEL_314:
                v14 = v7;
LABEL_315:
                sub_1000128F8(v14);
                return v4;
              }
            }

            else
            {
              v13 = *(v104 + 16);
              v117 = *(v104 + 24);
            }

            sub_100017D5C(v106, v3);
            v133 = v117;
            v134 = v174;
            v135 = sub_100625B10(v13, v133, v186 & 0x3FFFFFFFFFFFFFFFLL, __s1);
            v174 = v134;
            if (v134)
            {
              goto LABEL_392;
            }

            v13 = v135;
            sub_100016590(v106, v3);
            v99 = v189;
            v6 = v186;
            v104 = v187;
            v100 = v183;
            if (v13)
            {
              goto LABEL_302;
            }

LABEL_183:
            v98 = (v98 + 1) & v100;
            v11 = v98 >> 6;
            v2 = 1 << v98;
            if ((v99[v98 >> 6] & (1 << v98)) == 0)
            {
              goto LABEL_304;
            }

            continue;
          }

LABEL_232:
          LOWORD(__s2) = v104;
          BYTE2(__s2) = BYTE2(v104);
          HIBYTE(__s2) = BYTE3(v104);
          v191 = v173;
          LOBYTE(v192) = BYTE5(v104);
          HIBYTE(v192) = BYTE6(v104);
          v193 = HIBYTE(v104);
          v194 = v6;
          v195 = BYTE2(v6);
          v196 = BYTE3(v6);
          v197 = BYTE4(v6);
          v198 = BYTE5(v6);
          v126 = memcmp(__s1, &__s2, v188);
          v100 = v183;
          v104 = v187;
          v99 = v189;
          if (!v126)
          {
            goto LABEL_302;
          }

          goto LABEL_183;
        }

        v4 = v106;
        if (v106 > v106 >> 32)
        {
          goto LABEL_326;
        }

        sub_100017D5C(v106, v3);
        v120 = __DataStorage._bytes.getter();
        if (v120)
        {
          v6 = v120;
          v121 = __DataStorage._offset.getter();
          if (__OFSUB__(v106, v121))
          {
            goto LABEL_331;
          }

          v171 = v106 - v121 + v6;
        }

        else
        {
          v171 = 0;
        }

        v13 = v3 & 0x3FFFFFFFFFFFFFFFLL;
        __DataStorage._length.getter();
        v4 = v185;
        v6 = v186;
        if (v7 != 2)
        {
          if (v7 == 1)
          {
            if (v172 < v175)
            {
              goto LABEL_339;
            }

            v4 = __DataStorage._bytes.getter();
            if (v4)
            {
              v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
              v131 = __DataStorage._offset.getter();
              if (__OFSUB__(v175, v131))
              {
                goto LABEL_355;
              }

              v4 += v175 - v131;
            }

            v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
            v132 = __DataStorage._length.getter();
            v129 = v170;
            if (v132 < v170)
            {
              v129 = v132;
            }

            v130 = v171;
            if (!v171)
            {
              goto LABEL_370;
            }

            if (!v4)
            {
              goto LABEL_369;
            }

LABEL_257:
            if (v130 == v4)
            {
              goto LABEL_308;
            }

LABEL_299:
            v13 = memcmp(v130, v4, v129);
            sub_100016590(v106, v3);
            v4 = v185;
LABEL_300:
            v99 = v189;
LABEL_301:
            v104 = v187;
            v100 = v183;
            if (!v13)
            {
              goto LABEL_302;
            }

            goto LABEL_183;
          }

          v145 = v171;
          LODWORD(__s1[0]) = v187;
          BYTE4(__s1[0]) = v173;
          *(__s1 + 5) = *(&v187 + 5);
          HIBYTE(__s1[0]) = HIBYTE(v187);
          LODWORD(__s1[1]) = v186;
          WORD2(__s1[1]) = WORD2(v186);
          if (!v171)
          {
            goto LABEL_366;
          }

LABEL_282:
          v13 = memcmp(v145, __s1, v188);
          sub_100016590(v106, v3);
          goto LABEL_300;
        }

        v146 = *(v187 + 24);
        v165 = *(v187 + 16);
        v164 = v146;
        v13 = v186 & 0x3FFFFFFFFFFFFFFFLL;
        v4 = __DataStorage._bytes.getter();
        if (v4)
        {
          v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
          v147 = __DataStorage._offset.getter();
          v148 = v165;
          if (__OFSUB__(v165, v147))
          {
            goto LABEL_353;
          }

          v4 += v165 - v147;
        }

        else
        {
          v148 = v165;
        }

        v151 = v164 - v148;
        if (__OFSUB__(v164, v148))
        {
          goto LABEL_340;
        }

        v13 = v186 & 0x3FFFFFFFFFFFFFFFLL;
        v152 = __DataStorage._length.getter();
        if (v152 >= v151)
        {
          v129 = v151;
        }

        else
        {
          v129 = v152;
        }

        v130 = v171;
        if (!v171)
        {
          goto LABEL_374;
        }

        if (!v4)
        {
          goto LABEL_372;
        }

        goto LABEL_298;
      }

      break;
    }

    if (v107 == 2)
    {
      v4 = *(v106 + 16);
      sub_100017D5C(v106, v3);
      v118 = __DataStorage._bytes.getter();
      if (v118)
      {
        v6 = v118;
        v119 = __DataStorage._offset.getter();
        if (__OFSUB__(v4, v119))
        {
          goto LABEL_330;
        }

        v171 = v4 - v119 + v6;
      }

      else
      {
        v171 = 0;
      }

      v6 = v186;
      v13 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      __DataStorage._length.getter();
      v4 = v185;
      if (v7 != 2)
      {
        if (v7 == 1)
        {
          if (v172 < v175)
          {
            goto LABEL_337;
          }

          v4 = __DataStorage._bytes.getter();
          if (v4)
          {
            v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
            v127 = __DataStorage._offset.getter();
            if (__OFSUB__(v175, v127))
            {
              goto LABEL_354;
            }

            v4 += v175 - v127;
          }

          v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
          v128 = __DataStorage._length.getter();
          v129 = v170;
          if (v128 < v170)
          {
            v129 = v128;
          }

          v130 = v171;
          if (!v171)
          {
            goto LABEL_375;
          }

          if (!v4)
          {
            goto LABEL_373;
          }

          goto LABEL_257;
        }

        v145 = v171;
        LODWORD(__s1[0]) = v187;
        BYTE4(__s1[0]) = v173;
        *(__s1 + 5) = *(&v187 + 5);
        HIBYTE(__s1[0]) = HIBYTE(v187);
        LOWORD(__s1[1]) = v6;
        BYTE2(__s1[1]) = BYTE2(v6);
        BYTE3(__s1[1]) = BYTE3(v6);
        BYTE4(__s1[1]) = BYTE4(v6);
        BYTE5(__s1[1]) = BYTE5(v6);
        if (!v171)
        {
          goto LABEL_367;
        }

        goto LABEL_282;
      }

      v142 = *(v187 + 24);
      v165 = *(v187 + 16);
      v164 = v142;
      v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v4 = __DataStorage._bytes.getter();
      if (v4)
      {
        v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
        v143 = __DataStorage._offset.getter();
        v144 = v165;
        if (__OFSUB__(v165, v143))
        {
          goto LABEL_351;
        }

        v4 += v165 - v143;
      }

      else
      {
        v144 = v165;
      }

      v149 = v164 - v144;
      if (__OFSUB__(v164, v144))
      {
        goto LABEL_338;
      }

      v13 = v186 & 0x3FFFFFFFFFFFFFFFLL;
      v150 = __DataStorage._length.getter();
      if (v150 >= v149)
      {
        v129 = v149;
      }

      else
      {
        v129 = v150;
      }

      v130 = v171;
      if (!v171)
      {
        goto LABEL_371;
      }

      if (!v4)
      {
        goto LABEL_368;
      }

LABEL_298:
      v6 = v186;
      if (v130 != v4)
      {
        goto LABEL_299;
      }

LABEL_308:
      sub_100016590(v106, v3);
      sub_100016590(v187, v6);
      v4 = v185;
LABEL_306:
      v12 = v182;
      v89 = v176;
      v155 = v169[v11];
      v169[v11] = v155 & ~v2;
      v6 = v178;
      v7 = v177;
      if ((v155 & v2) != 0)
      {
        v88 = v168 - 1;
        if (__OFSUB__(v168, 1))
        {
          goto LABEL_364;
        }

        if (v168 == 1)
        {

          v4 = &_swiftEmptySetSingleton;
          goto LABEL_314;
        }

        continue;
      }

      goto LABEL_165;
    }

    break;
  }

  memset(__s1, 0, 14);
  if (!v7)
  {
    goto LABEL_232;
  }

  if (v7 == 2)
  {
    v122 = *(v104 + 16);
    v123 = *(v104 + 24);
    sub_100017D5C(v106, v3);
    v124 = v123;
    v125 = v174;
    v13 = sub_100625B10(v122, v124, v186 & 0x3FFFFFFFFFFFFFFFLL, __s1);
    v174 = v125;
    v6 = v186;
    sub_100016590(v106, v3);
    v100 = v183;
    v104 = v187;
    v99 = v189;
    if (v13)
    {
      goto LABEL_302;
    }

    goto LABEL_183;
  }

  if (v172 < v175)
  {
    goto LABEL_336;
  }

  sub_100017D5C(v106, v3);
  v136 = __DataStorage._bytes.getter();
  v137 = v6;
  v138 = v136;
  if (v136)
  {
    v13 = v137 & 0x3FFFFFFFFFFFFFFFLL;
    v139 = __DataStorage._offset.getter();
    if (__OFSUB__(v175, v139))
    {
      goto LABEL_352;
    }

    v138 += v175 - v139;
  }

  v13 = v186 & 0x3FFFFFFFFFFFFFFFLL;
  v140 = __DataStorage._length.getter();
  if (v140 >= v170)
  {
    v141 = v170;
  }

  else
  {
    v141 = v140;
  }

  if (v138)
  {
    if (__s1 != v138)
    {
      v13 = memcmp(__s1, v138, v141);
      sub_100016590(v106, v3);
      v99 = v189;
      v6 = v186;
      goto LABEL_301;
    }

    sub_100016590(v106, v3);
    v6 = v186;
    v104 = v187;
LABEL_302:
    v153 = v104;
    v154 = v6;
LABEL_305:
    sub_100016590(v153, v154);
    goto LABEL_306;
  }

  __break(1u);
LABEL_366:
  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_377:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_378:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_379:
  v201 = v178;
  v202 = v179;
  __DataStorage._length.getter();
  __break(1u);
LABEL_380:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_381:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_382:
  v201 = v178;
  v202 = v179;
  __DataStorage._length.getter();
  __break(1u);
LABEL_383:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_384:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_385:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_386:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_387:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_388:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_389:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_390:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_391:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_392:

  __break(1u);
LABEL_393:

  __break(1u);
  return result;
}

void *sub_10061076C(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a2[2])
  {
    v47 = a1;
    v48 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v46 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v47;
          v16 = v48;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v48 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v47;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v4 = *(*(v15 + 48) + ((v48 << 9) | (8 * v18)));
        v19 = static Hasher._hash(seed:_:)();
        v20 = -1 << *(v6 + 32);
        v5 = v19 & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
      }

      while (((1 << v5) & v13[v5 >> 6]) == 0);
      v21 = v6[6];
      if (*(v21 + 8 * v5) == v4)
      {
        break;
      }

      while (1)
      {
        v5 = (v5 + 1) & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
        if (((1 << v5) & v13[v5 >> 6]) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v5) == v4)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v50 = v46;
    v51 = v48;
    v52 = v11;
    v49[0] = v47;
    v49[1] = v8;
    v4 = (63 - v20) >> 6;
    v14 = 8 * v4;

    if (v4 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v40 = swift_slowAlloc();
      memcpy(v40, v6 + 7, v14);
      v41 = sub_100618338(v40, v4, v6, v5, v49);

      v2 = v49[0];
      v46 = v50;
      v48 = v51;
      v6 = v41;
      goto LABEL_41;
    }

LABEL_18:
    v43 = v4;
    v44 = &v42;
    __chkstk_darwin(v22);
    v5 = &v42 - v23;
    memcpy(&v42 - v23, v6 + 7, v14);
    v24 = v6[2];
    *(v5 + 8 * v3) &= ~v2;
    v25 = v24 - 1;
    v14 = -1;
    v4 = 1;
    v2 = v47;
LABEL_19:
    v45 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v2 + 48) + ((v48 << 9) | (8 * v29)));
      v30 = static Hasher._hash(seed:_:)();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & v13[v32 >> 6]) != 0)
      {
        v35 = v6[6];
        if (*(v35 + 8 * v32) == v3)
        {
LABEL_20:
          v26 = *(v5 + 8 * v33);
          *(v5 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v45 - 1;
            if (__OFSUB__(v45, 1))
            {
              __break(1u);
            }

            if (v45 == 1)
            {

              v6 = &_swiftEmptySetSingleton;
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & v13[v32 >> 6]) == 0)
            {
              break;
            }

            if (*(v35 + 8 * v32) == v3)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v48;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v48 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v48 + 1)
    {
      v37 = v48 + 1;
    }

    else
    {
      v37 = v12;
    }

    v48 = v37 - 1;
    v6 = sub_10060B960(v5, v43, v45, v6);
LABEL_41:
    v38 = v2;
LABEL_43:
    sub_1000128F8(v38);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v6;
}

void *sub_100610BC8(uint64_t a1, void *a2)
{
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v65 - v9);
  v11 = type metadata accessor for UUID();
  v12 = __chkstk_darwin(v11);
  v85 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = (&v65 - v15);
  __chkstk_darwin(v14);
  v80 = (&v65 - v18);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v66 = v10;
  v68 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = a2 + 7;
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_10000B3A8(v30, &qword_1016980D0, &unk_10138F3B0);
      v59 = a1;
      goto LABEL_53;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_100009774(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v16, a2[6] + v84 * v24, v11);
    v35 = sub_100009774(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v87 = *v88;
    v87(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v66 = &v65;
    __chkstk_darwin(v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_10000B3A8(v24, &qword_1016980D0, &unk_10138F3B0);
        a2 = sub_10060AF64(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v16, v52[6] + v54 * v84, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v87(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v16, v52[6] + v54 * v84, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v87(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v80 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v80;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v82, v62);
  a2 = sub_1006184F4(v64, v65, v80, v24, &v89);

LABEL_52:
  v59 = v89;
LABEL_53:
  sub_1000128F8(v59);
  return a2;
}

void *sub_10061162C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v6 = a1;
  v73 = 0;
  v7 = *(a1 + 56);
  v85 = a1 + 56;
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v78 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v79 = (63 - v9) >> 6;
  v83 = 0x80000001013480F0;
  v84 = 0x8000000101348120;
  v82 = 0x8000000101348010;
  v81 = 0x8000000101347FF0;
  v87 = a2 + 7;

  v13 = 0;
  do
  {
LABEL_6:
    if (!v11)
    {
      v14 = v13;
      do
      {
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_194;
        }

        if (v15 >= v79)
        {
          v37 = v6;
          goto LABEL_191;
        }

        v11 = *(v85 + 8 * v15);
        ++v14;
      }

      while (!v11);
      v13 = v15;
    }

    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = *(*(v6 + 48) + (v16 | (v13 << 6)));
    Hasher.init(_seed:)();
    String.hash(into:)();

    v18 = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v2 = v18 & ~v19;
    v3 = v2 >> 6;
    v4 = 1 << v2;
  }

  while (((1 << v2) & v87[v2 >> 6]) == 0);
  v86 = v13;
  v80 = v6;
  v20 = ~v19;
  while (2)
  {
    v21 = 0xE700000000000000;
    v22 = 0x6E776F6E6B6E75;
    switch(*(v5[6] + v2))
    {
      case 1:
        v22 = 0xD000000000000015;
        v21 = v81;
        break;
      case 2:
        v22 = 0xD000000000000016;
        v21 = v82;
        break;
      case 3:
        v21 = 0xE600000000000000;
        v22 = 0x657461636F6CLL;
        break;
      case 4:
        v21 = 0xEC000000676E6972;
        v22 = 0x6168537472617473;
        break;
      case 5:
        v22 = 0x72616853706F7473;
        goto LABEL_29;
      case 6:
        v24 = 2036427888;
        goto LABEL_33;
      case 7:
        v24 = 1886352499;
LABEL_33:
        v22 = v24 | 0x6E756F5300000000;
        v21 = 0xE900000000000064;
        break;
      case 8:
        v22 = 0x61654C6E69676562;
        v21 = 0xED0000676E696873;
        break;
      case 9:
        v22 = 0x687361654C646E65;
LABEL_29:
        v21 = 0xEB00000000676E69;
        break;
      case 0xA:
        v22 = 0x4654426E69676562;
        v21 = 0xEE00676E69646E69;
        break;
      case 0xB:
        v22 = 0x6E69465442646E65;
        v23 = 1735289188;
        goto LABEL_40;
      case 0xC:
        v21 = 0xEC000000676E6967;
        v22 = 0x6E61526E69676562;
        break;
      case 0xD:
        v22 = 0x69676E6152646E65;
        v21 = 0xEA0000000000676ELL;
        break;
      case 0xE:
        v22 = 0x6F4C656C62616E65;
        v21 = 0xEE0065646F4D7473;
        break;
      case 0xF:
        v22 = 0x4C656C6261736964;
        v21 = 0xEF65646F4D74736FLL;
        break;
      case 0x10:
        v21 = 0xE600000000000000;
        v22 = 0x656D616E6572;
        break;
      case 0x11:
        v22 = 0x7463656E6E6F63;
        break;
      case 0x12:
        v21 = 0xEA00000000007463;
        v22 = 0x656E6E6F63736964;
        break;
      case 0x13:
        v22 = 0xD000000000000017;
        v21 = v83;
        break;
      case 0x14:
        v21 = 0xE600000000000000;
        v22 = 0x726961706E75;
        break;
      case 0x15:
        v22 = 0x65746167656C6564;
        v21 = 0xEE00657261685364;
        break;
      case 0x16:
        v22 = 0xD000000000000013;
        v21 = v84;
        break;
      case 0x17:
        v22 = 0x6F69736963657270;
        v23 = 1481004654;
LABEL_40:
        v21 = v23 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      default:
        break;
    }

    v25 = 0xE700000000000000;
    v26 = 0x6E776F6E6B6E75;
    switch(v17)
    {
      case 1:
        v27 = 0xD000000000000015;
        v28 = &v94;
        goto LABEL_53;
      case 2:
        v27 = 0xD000000000000016;
        v28 = &v95;
LABEL_53:
        v25 = *(v28 - 32);
        if (v22 != v27)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 3:
        v25 = 0xE600000000000000;
        if (v22 != 0x657461636F6CLL)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 4:
        v25 = 0xEC000000676E6972;
        if (v22 != 0x6168537472617473)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 5:
        v33 = 0x72616853706F7473;
        goto LABEL_65;
      case 6:
        v34 = 2036427888;
        goto LABEL_71;
      case 7:
        v34 = 1886352499;
LABEL_71:
        v25 = 0xE900000000000064;
        if (v22 != (v34 | 0x6E756F5300000000))
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 8:
        v25 = 0xED0000676E696873;
        if (v22 != 0x61654C6E69676562)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 9:
        v33 = 0x687361654C646E65;
LABEL_65:
        v25 = 0xEB00000000676E69;
        if (v22 != v33)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 10:
        v29 = 0x4654426E69676562;
        v30 = 0x676E69646E69;
        goto LABEL_76;
      case 11:
        v31 = 0x6E69465442646E65;
        v32 = 1735289188;
        goto LABEL_89;
      case 12:
        v25 = 0xEC000000676E6967;
        if (v22 != 0x6E61526E69676562)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 13:
        v25 = 0xEA0000000000676ELL;
        if (v22 != 0x69676E6152646E65)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 14:
        v29 = 0x6F4C656C62616E65;
        v30 = 0x65646F4D7473;
        goto LABEL_76;
      case 15:
        v25 = 0xEF65646F4D74736FLL;
        if (v22 != 0x4C656C6261736964)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 16:
        v25 = 0xE600000000000000;
        if (v22 != 0x656D616E6572)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 17:
        if (v22 != 0x7463656E6E6F63)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 18:
        v25 = 0xEA00000000007463;
        if (v22 != 0x656E6E6F63736964)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 19:
        v26 = 0xD000000000000017;
        v25 = v83;
        goto LABEL_83;
      case 20:
        v25 = 0xE600000000000000;
        if (v22 != 0x726961706E75)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 21:
        v29 = 0x65746167656C6564;
        v30 = 0x657261685364;
LABEL_76:
        v25 = v30 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v22 != v29)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 22:
        v25 = v84;
        if (v22 != 0xD000000000000013)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 23:
        v31 = 0x6F69736963657270;
        v32 = 1481004654;
LABEL_89:
        v25 = v32 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v22 != v31)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      default:
LABEL_83:
        if (v22 != v26)
        {
          goto LABEL_85;
        }

LABEL_84:
        if (v21 != v25)
        {
LABEL_85:
          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v35)
          {
            v91 = v78;
            v92 = v86;
            v93 = v11;
            v8 = v80;
            v89 = v80;
            v90 = v85;
            goto LABEL_95;
          }

          v2 = (v2 + 1) & v20;
          v3 = v2 >> 6;
          v4 = 1 << v2;
          if ((v87[v2 >> 6] & (1 << v2)) == 0)
          {
            v6 = v80;
            v13 = v86;
            v8 = -1;
            goto LABEL_6;
          }

          continue;
        }

        v91 = v78;
        v92 = v86;
        v93 = v11;
        v8 = v80;
        v89 = v80;
        v90 = v85;

LABEL_95:
        v38 = *(v5 + 32);
        v74 = ((1 << v38) + 63) >> 6;
        v12 = 8 * v74;
        if ((v38 & 0x3Fu) > 0xD)
        {
          goto LABEL_195;
        }

        while (2)
        {
          v75 = &v73;
          __chkstk_darwin(v36);
          v2 = &v73 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
          memcpy(v2, v87, v39);
          v40 = *(v2 + 8 * v3) & ~v4;
          v41 = v5[2];
          v77 = v2;
          *(v2 + 8 * v3) = v40;
          v42 = v41 - 1;
LABEL_97:
          v76 = v42;
LABEL_98:
          if (v11)
          {
            v43 = v86;
            goto LABEL_105;
          }

          v44 = v86;
          while (1)
          {
            v45 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              break;
            }

            if (v45 >= v79)
            {
              v5 = sub_10060BB4C(v77, v74, v76, v5);
              goto LABEL_190;
            }

            v11 = *(v85 + 8 * v45);
            ++v44;
            if (v11)
            {
              v43 = v45;
LABEL_105:
              v46 = __clz(__rbit64(v11));
              v11 &= v11 - 1;
              v47 = *(*(v8 + 48) + (v46 | (v43 << 6)));
              Hasher.init(_seed:)();
              v86 = v43;
              String.hash(into:)();

              v2 = v88;
              v48 = Hasher._finalize()();
              v49 = -1 << *(v5 + 32);
              v50 = v48 & ~v49;
              v3 = v50 >> 6;
              v4 = 1 << v50;
              if (((1 << v50) & v87[v50 >> 6]) == 0)
              {
                goto LABEL_98;
              }

              v51 = ~v49;
              v2 = v47;
              while (1)
              {
                v52 = 0xE700000000000000;
                v53 = 0x6E776F6E6B6E75;
                switch(*(v5[6] + v50))
                {
                  case 1:
                    v53 = 0xD000000000000015;
                    v52 = v81;
                    break;
                  case 2:
                    v53 = 0xD000000000000016;
                    v52 = v82;
                    break;
                  case 3:
                    v52 = 0xE600000000000000;
                    v53 = 0x657461636F6CLL;
                    break;
                  case 4:
                    v52 = 0xEC000000676E6972;
                    v53 = 0x6168537472617473;
                    break;
                  case 5:
                    v53 = 0x72616853706F7473;
                    goto LABEL_122;
                  case 6:
                    v55 = 2036427888;
                    goto LABEL_126;
                  case 7:
                    v55 = 1886352499;
LABEL_126:
                    v53 = v55 | 0x6E756F5300000000;
                    v52 = 0xE900000000000064;
                    break;
                  case 8:
                    v53 = 0x61654C6E69676562;
                    v52 = 0xED0000676E696873;
                    break;
                  case 9:
                    v53 = 0x687361654C646E65;
LABEL_122:
                    v52 = 0xEB00000000676E69;
                    break;
                  case 0xA:
                    v53 = 0x4654426E69676562;
                    v52 = 0xEE00676E69646E69;
                    break;
                  case 0xB:
                    v53 = 0x6E69465442646E65;
                    v54 = 1735289188;
                    goto LABEL_133;
                  case 0xC:
                    v52 = 0xEC000000676E6967;
                    v53 = 0x6E61526E69676562;
                    break;
                  case 0xD:
                    v53 = 0x69676E6152646E65;
                    v52 = 0xEA0000000000676ELL;
                    break;
                  case 0xE:
                    v53 = 0x6F4C656C62616E65;
                    v52 = 0xEE0065646F4D7473;
                    break;
                  case 0xF:
                    v53 = 0x4C656C6261736964;
                    v52 = 0xEF65646F4D74736FLL;
                    break;
                  case 0x10:
                    v52 = 0xE600000000000000;
                    v53 = 0x656D616E6572;
                    break;
                  case 0x11:
                    v53 = 0x7463656E6E6F63;
                    break;
                  case 0x12:
                    v52 = 0xEA00000000007463;
                    v53 = 0x656E6E6F63736964;
                    break;
                  case 0x13:
                    v53 = 0xD000000000000017;
                    v52 = v83;
                    break;
                  case 0x14:
                    v52 = 0xE600000000000000;
                    v53 = 0x726961706E75;
                    break;
                  case 0x15:
                    v53 = 0x65746167656C6564;
                    v52 = 0xEE00657261685364;
                    break;
                  case 0x16:
                    v53 = 0xD000000000000013;
                    v52 = v84;
                    break;
                  case 0x17:
                    v53 = 0x6F69736963657270;
                    v54 = 1481004654;
LABEL_133:
                    v52 = v54 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                    break;
                  default:
                    break;
                }

                v56 = 0xE700000000000000;
                v57 = 0x6E776F6E6B6E75;
                switch(v2)
                {
                  case 1uLL:
                    v58 = 0xD000000000000015;
                    v59 = &v94;
                    goto LABEL_146;
                  case 2uLL:
                    v58 = 0xD000000000000016;
                    v59 = &v95;
LABEL_146:
                    v56 = *(v59 - 32);
                    if (v53 != v58)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 3uLL:
                    v56 = 0xE600000000000000;
                    if (v53 != 0x657461636F6CLL)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 4uLL:
                    v56 = 0xEC000000676E6972;
                    if (v53 != 0x6168537472617473)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 5uLL:
                    v64 = 0x72616853706F7473;
                    goto LABEL_158;
                  case 6uLL:
                    v65 = 2036427888;
                    goto LABEL_164;
                  case 7uLL:
                    v65 = 1886352499;
LABEL_164:
                    v56 = 0xE900000000000064;
                    if (v53 != (v65 | 0x6E756F5300000000))
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 8uLL:
                    v56 = 0xED0000676E696873;
                    if (v53 != 0x61654C6E69676562)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 9uLL:
                    v64 = 0x687361654C646E65;
LABEL_158:
                    v56 = 0xEB00000000676E69;
                    if (v53 != v64)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 0xAuLL:
                    v60 = 0x4654426E69676562;
                    v61 = 0x676E69646E69;
                    goto LABEL_169;
                  case 0xBuLL:
                    v62 = 0x6E69465442646E65;
                    v63 = 1735289188;
                    goto LABEL_182;
                  case 0xCuLL:
                    v56 = 0xEC000000676E6967;
                    if (v53 != 0x6E61526E69676562)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 0xDuLL:
                    v56 = 0xEA0000000000676ELL;
                    if (v53 != 0x69676E6152646E65)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 0xEuLL:
                    v60 = 0x6F4C656C62616E65;
                    v61 = 0x65646F4D7473;
                    goto LABEL_169;
                  case 0xFuLL:
                    v56 = 0xEF65646F4D74736FLL;
                    if (v53 != 0x4C656C6261736964)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 0x10uLL:
                    v56 = 0xE600000000000000;
                    if (v53 != 0x656D616E6572)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 0x11uLL:
                    if (v53 != 0x7463656E6E6F63)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 0x12uLL:
                    v56 = 0xEA00000000007463;
                    if (v53 != 0x656E6E6F63736964)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 0x13uLL:
                    v57 = 0xD000000000000017;
                    v56 = v83;
                    goto LABEL_176;
                  case 0x14uLL:
                    v56 = 0xE600000000000000;
                    if (v53 != 0x726961706E75)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 0x15uLL:
                    v60 = 0x65746167656C6564;
                    v61 = 0x657261685364;
LABEL_169:
                    v56 = v61 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
                    if (v53 != v60)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 0x16uLL:
                    v56 = v84;
                    if (v53 != 0xD000000000000013)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 0x17uLL:
                    v62 = 0x6F69736963657270;
                    v63 = 1481004654;
LABEL_182:
                    v56 = v63 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                    if (v53 != v62)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  default:
LABEL_176:
                    if (v53 != v57)
                    {
                      goto LABEL_178;
                    }

LABEL_177:
                    if (v52 == v56)
                    {

LABEL_185:
                      v67 = v77[v3];
                      v77[v3] = v67 & ~v4;
                      v8 = v80;
                      if ((v67 & v4) != 0)
                      {
                        v42 = v76 - 1;
                        if (__OFSUB__(v76, 1))
                        {
                          __break(1u);
                        }

                        if (v76 == 1)
                        {

                          v5 = &_swiftEmptySetSingleton;
                          goto LABEL_190;
                        }

                        goto LABEL_97;
                      }

                      goto LABEL_98;
                    }

LABEL_178:
                    v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v66)
                    {
                      goto LABEL_185;
                    }

                    v50 = (v50 + 1) & v51;
                    v3 = v50 >> 6;
                    v4 = 1 << v50;
                    if ((v87[v50 >> 6] & (1 << v50)) == 0)
                    {
                      v8 = v80;
                      goto LABEL_98;
                    }

                    break;
                }
              }
            }
          }

          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          v69 = v12;

          if (swift_stdlib_isStackAllocationSafe())
          {

            continue;
          }

          break;
        }

        v70 = swift_slowAlloc();
        memcpy(v70, v87, v69);
        v71 = v73;
        v72 = sub_1006189C8(v70, v74, v5, v2, &v89);

        if (v71)
        {

          __break(1u);
        }

        else
        {

          v8 = v89;
          v78 = v91;
          v5 = v72;
LABEL_190:
          v37 = v8;
LABEL_191:
          sub_1000128F8(v37);
          return v5;
        }

        return result;
    }
  }
}

void *sub_100612D48(uint64_t a1, uint64_t a2)
{
  v226 = type metadata accessor for UUID();
  v218 = *(v226 - 8);
  __chkstk_darwin(v226);
  v225 = &v185 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&unk_1016BC360, &qword_10139CBE0);
  v6 = __chkstk_darwin(v5 - 8);
  v197 = &v185 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v185 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v185 - v12;
  __chkstk_darwin(v11);
  v220 = &v185 - v14;
  v212 = type metadata accessor for OwnerSharingCircle(0);
  v15 = *(v212 - 8);
  v16 = __chkstk_darwin(v212);
  v188 = (&v185 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v19 = __chkstk_darwin(v18);
  v213 = (&v185 - v20);
  __chkstk_darwin(v19);
  v23 = &v185 - v22;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v24 = a2;
  v190 = v21;
  v195 = v10;
  v237[0] = a1;
  v25 = *(a1 + 16);
  v189 = a1;

  v191 = v25;
  if (!v25)
  {
LABEL_99:

    return v24;
  }

  v26 = 0;
  v206 = 0;
  v192 = v189 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v215 = *(v15 + 72);
  v217 = v218 + 16;
  v224 = (v218 + 32);
  v221 = (v218 + 8);
  v214 = (v24 + 56);
  v216 = v13;
  v204 = v24;
  v210 = v23;
LABEL_5:
  v196 = (v26 + 1);
  v237[1] = v26 + 1;
  sub_10062CD24(v192 + v215 * v26, v23, type metadata accessor for OwnerSharingCircle);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v27 = v212;
  v28 = *(v212 + 20);
  v29 = sub_100009774(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v209 = v28;
  dispatch thunk of Hashable.hash(into:)();
  v205 = v27[6];
  v222 = v29;
  dispatch thunk of Hashable.hash(into:)();
  v30 = &v232;
  v200 = v23[v27[7]];
  Hasher._combine(_:)(v200);
  v31 = *&v23[v27[8]];
  v32 = *(v31 + 64);
  v211 = v31 + 64;
  v33 = 1 << *(v31 + 32);
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  else
  {
    v34 = -1;
  }

  v35 = v34 & v32;
  v36 = (v33 + 63) >> 6;
  v219 = v31;

  v37 = 0;
  v38 = 0;
  if (v35)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v36 <= v38 + 1)
  {
    v40 = v38 + 1;
  }

  else
  {
    v40 = v36;
  }

  v41 = (v40 - 1);
  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v39 >= v36)
    {
      v54 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
      (*(*(v54 - 8) + 56))(v13, 1, 1, v54);
      v35 = 0;
      goto LABEL_19;
    }

    v35 = *(v211 + 8 * v39);
    v38 = (v38 + 1);
    if (v35)
    {
      v223 = v37;
      while (2)
      {
        v42 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        v43 = v42 | (v39 << 6);
        v44 = v219;
        v45 = v218;
        (*(v218 + 16))(v225, *(v219 + 48) + *(v218 + 72) * v43, v226);
        LOBYTE(v44) = *(*(v44 + 56) + v43);
        v46 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
        v47 = *(v46 + 48);
        v13 = v216;
        (*(v45 + 32))();
        *(v13 + v47) = v44;
        (*(*(v46 - 8) + 56))(v13, 0, 1, v46);
        v41 = v39;
        v37 = v223;
LABEL_19:
        v48 = v220;
        sub_1000D2AD8(v13, v220, &unk_1016BC360, &qword_10139CBE0);
        v49 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
        v24 = *(v49 - 8);
        v50 = *(v24 + 48);
        if (v50(v48, 1, v49) != 1)
        {
          v51 = *(v49 + 48);
          v24 = v225;
          v52 = v226;
          (*v224)(v225, v48, v226);
          v53 = v48[v51];
          v229 = v234;
          v230 = v235;
          v231 = v236;
          v228 = v233;
          v227 = v232;
          dispatch thunk of Hashable.hash(into:)();
          (*v221)(v24, v52);
          v30 = &v227;
          Hasher._combine(_:)(v53);
          v37 ^= Hasher._finalize()();
          v38 = v41;
          if (!v35)
          {
            goto LABEL_10;
          }

LABEL_9:
          v223 = v37;
          v39 = v38;
          continue;
        }

        break;
      }

      v198 = v49;
      v199 = v50;

      Hasher._combine(_:)(v37);
      v55 = v210;
      v56 = *(v210 + *(v212 + 36));
      v193 = v56;
      Hasher._combine(_:)(v56);
      v57 = Hasher._finalize()();
      v30 = v204;
      v58 = -1 << *(v204 + 32);
      v13 = v57 & ~v58;
      v59 = v13 >> 6;
      v36 = 1 << v13;
      if (((1 << v13) & v214[v13 >> 6]) != 0)
      {
        v60 = ~v58;
        v61 = *v55;
        v62 = v55[1];
        if (*v55)
        {
          v63 = 0;
        }

        else
        {
          v63 = v62 == 0xC000000000000000;
        }

        v64 = !v63;
        LODWORD(v211) = v64;
        v65 = v62 >> 62;
        v207 = v61;
        v66 = HIDWORD(v61) - v61;
        v67 = __OFSUB__(HIDWORD(v61), v61);
        LODWORD(v203) = v67;
        v202 = v66;
        v201 = v62;
        v208 = BYTE6(v62);
        v41 = v213;
        v223 = v62 >> 62;
        while (1)
        {
          sub_10062CD24(*(v30 + 6) + v13 * v215, v41, type metadata accessor for OwnerSharingCircle);
          v68 = *v41;
          v69 = v41[1];
          v70 = v69 >> 62;
          if (v69 >> 62 == 3)
          {
            break;
          }

          if (v70 > 1)
          {
            if (v70 != 2)
            {
              goto LABEL_58;
            }

            v76 = *(v68 + 16);
            v75 = *(v68 + 24);
            v77 = __OFSUB__(v75, v76);
            v74 = v75 - v76;
            if (v77)
            {
              goto LABEL_207;
            }

            if (v65 <= 1)
            {
              goto LABEL_55;
            }
          }

          else if (v70)
          {
            LODWORD(v74) = HIDWORD(v68) - v68;
            if (__OFSUB__(HIDWORD(v68), v68))
            {
              goto LABEL_206;
            }

            v74 = v74;
            if (v65 <= 1)
            {
LABEL_55:
              v78 = v208;
              if (v65)
              {
                v78 = v202;
                if (v203)
                {
                  goto LABEL_205;
                }
              }

              goto LABEL_61;
            }
          }

          else
          {
            v74 = BYTE6(v69);
            if (v65 <= 1)
            {
              goto LABEL_55;
            }
          }

LABEL_59:
          if (v65 != 2)
          {
            v41 = v213;
            if (v74)
            {
              goto LABEL_35;
            }

            goto LABEL_67;
          }

          v80 = *(v207 + 16);
          v79 = *(v207 + 24);
          v77 = __OFSUB__(v79, v80);
          v78 = v79 - v80;
          if (v77)
          {
            goto LABEL_204;
          }

LABEL_61:
          if (v74 != v78)
          {
            v41 = v213;
            goto LABEL_35;
          }

          if (v74 < 1)
          {
LABEL_66:
            v41 = v213;
            goto LABEL_67;
          }

          if (v70 > 1)
          {
            if (v70 != 2)
            {
              *(&v232 + 6) = 0;
              *&v232 = 0;
LABEL_90:
              v97 = v206;
              sub_100771A28(&v232, v207, v201, &v227);
              v206 = v97;
              v41 = v213;
              if ((v227 & 1) == 0)
              {
                goto LABEL_35;
              }

              goto LABEL_67;
            }

            v84 = *(v68 + 16);
            v85 = *(v68 + 24);
            v86 = __DataStorage._bytes.getter();
            if (v86)
            {
              v194 = v84;
              v87 = v85;
              v88 = v86;
              v89 = __DataStorage._offset.getter();
              if (__OFSUB__(v194, v89))
              {
                goto LABEL_210;
              }

              v90 = v194 + v88 - v89;
              if (__OFSUB__(v87, v194))
              {
                goto LABEL_209;
              }
            }

            else
            {
              v90 = 0;
              if (__OFSUB__(v85, v84))
              {
                goto LABEL_209;
              }
            }

            v98 = v90;
            __DataStorage._length.getter();
            v99 = v98;
          }

          else
          {
            if (!v70)
            {
              *&v232 = v68;
              WORD4(v232) = v69;
              BYTE10(v232) = BYTE2(v69);
              BYTE11(v232) = BYTE3(v69);
              BYTE12(v232) = BYTE4(v69);
              BYTE13(v232) = BYTE5(v69);
              goto LABEL_90;
            }

            v91 = v68;
            v92 = v68 >> 32;
            if (v92 < v91)
            {
              goto LABEL_208;
            }

            v194 = (v92 - v91);
            v93 = __DataStorage._bytes.getter();
            if (v93)
            {
              v94 = v93;
              v95 = __DataStorage._offset.getter();
              if (__OFSUB__(v91, v95))
              {
                goto LABEL_211;
              }

              v96 = v91 - v95 + v94;
            }

            else
            {
              v96 = 0;
            }

            __DataStorage._length.getter();
            v99 = v96;
          }

          v100 = v206;
          sub_100771A28(v99, v207, v201, &v232);
          v206 = v100;
          v30 = v204;
          v41 = v213;
          v65 = v223;
          if ((v232 & 1) == 0)
          {
            goto LABEL_35;
          }

LABEL_67:
          v39 = v59;
          v81 = v60;
          v82 = v212;
          if ((static UUID.== infix(_:_:)() & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && *(v41 + v82[7]) == v200)
          {
            v83 = sub_100DE7CB4(*(v41 + v82[8]), v219);
            v65 = v223;
            if ((v83 & 1) != 0 && *(v41 + v82[9]) == v193)
            {
              goto LABEL_102;
            }

            v60 = v81;
          }

          else
          {
            v60 = v81;
            v65 = v223;
          }

LABEL_35:
          sub_10062CBB8(v41, type metadata accessor for OwnerSharingCircle);
          v13 = (v13 + 1) & v60;
          v59 = v13 >> 6;
          v36 = 1 << v13;
          if ((v214[v13 >> 6] & (1 << v13)) == 0)
          {
            goto LABEL_4;
          }
        }

        if (v68)
        {
          v71 = 0;
        }

        else
        {
          v71 = v69 == 0xC000000000000000;
        }

        v73 = !v71 || v65 < 3;
        if (((v73 | v211) & 1) == 0)
        {
          goto LABEL_66;
        }

LABEL_58:
        v74 = 0;
        if (v65 <= 1)
        {
          goto LABEL_55;
        }

        goto LABEL_59;
      }

LABEL_4:
      v24 = v30;
      v23 = v210;
      sub_10062CBB8(v210, type metadata accessor for OwnerSharingCircle);
      v26 = v196;
      v13 = v216;
      if (v196 == v191)
      {
        goto LABEL_99;
      }

      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_102:
  sub_10062CBB8(v41, type metadata accessor for OwnerSharingCircle);
  v103 = sub_10062CBB8(v210, type metadata accessor for OwnerSharingCircle);
  v104 = *(v30 + 32);
  v186 = ((1 << v104) + 63) >> 6;
  v105 = 8 * v186;
  if ((v104 & 0x3Fu) <= 0xD)
  {
LABEL_103:
    v187 = &v185;
    __chkstk_darwin(v103);
    v107 = &v185 - ((v106 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v107, v214, v106);
    v108 = *(v30 + 2);
    v109 = *&v107[8 * v39] & ~v36;
    v191 = v107;
    *&v107[8 * v39] = v109;
    v193 = v108 - 1;
    v110 = v189;
    v111 = v196;
    v194 = *(v189 + 16);
    if (v196 == v194)
    {
      goto LABEL_104;
    }

    v220 = (v24 + 56);
    v113 = v195;
LABEL_107:
    if (v111 < *(v110 + 16))
    {
      v196 = (v111 + 1);
      v114 = v190;
      sub_10062CD24(v192 + v111 * v215, v190, type metadata accessor for OwnerSharingCircle);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      v115 = v212;
      v213 = *(v212 + 20);
      dispatch thunk of Hashable.hash(into:)();
      v209 = v115[6];
      dispatch thunk of Hashable.hash(into:)();
      v116 = *(v114 + v115[7]);
      v203 = v116;
      Hasher._combine(_:)(v116);
      v117 = *(v114 + v115[8]);
      v118 = *(v117 + 64);
      v216 = v117 + 64;
      v119 = 1 << *(v117 + 32);
      if (v119 < 64)
      {
        v120 = ~(-1 << v119);
      }

      else
      {
        v120 = -1;
      }

      v121 = v120 & v118;
      v122 = (v119 + 63) >> 6;
      v219 = v117;

      v123 = 0;
      for (i = 0; ; i = v127)
      {
        v223 = v123;
        if (!v121)
        {
          break;
        }

        v125 = i;
LABEL_121:
        v129 = __clz(__rbit64(v121));
        v121 &= v121 - 1;
        v130 = v129 | (v125 << 6);
        v131 = v219;
        v132 = v218;
        v133 = v225;
        v134 = v226;
        (*(v218 + 16))(v225, *(v219 + 48) + *(v218 + 72) * v130, v226);
        LOBYTE(v130) = *(*(v131 + 56) + v130);
        v135 = v198;
        v136 = *(v198 + 48);
        v137 = *(v132 + 32);
        v128 = v197;
        v137(v197, v133, v134);
        v138 = 0;
        *(v128 + v136) = v130;
        v127 = v125;
        v113 = v195;
LABEL_122:
        (*v220)(v128, v138, 1, v135);
        sub_1000D2AD8(v128, v113, &unk_1016BC360, &qword_10139CBE0);
        if (v199(v113, 1, v135) == 1)
        {

          Hasher._combine(_:)(v223);
          v143 = v190;
          v144 = *(v190 + *(v212 + 36));
          v200 = v144;
          Hasher._combine(_:)(v144);
          v145 = Hasher._finalize()();
          v146 = -1 << *(v204 + 32);
          v147 = v145 & ~v146;
          v13 = v147 >> 6;
          v24 = 1 << v147;
          if (((1 << v147) & v214[v147 >> 6]) == 0)
          {
            v156 = v206;
LABEL_199:
            v206 = v156;
            sub_10062CBB8(v190, type metadata accessor for OwnerSharingCircle);
LABEL_200:
            v30 = v204;
            v110 = v189;
            v113 = v195;
            v111 = v196;
            goto LABEL_201;
          }

          v223 = ~v146;
          v148 = *v143;
          v149 = v143[1];
          if (*v143)
          {
            v150 = 0;
          }

          else
          {
            v150 = v149 == 0xC000000000000000;
          }

          v151 = !v150;
          LODWORD(v216) = v151;
          v152 = v149 >> 62;
          v210 = v148;
          v153 = HIDWORD(v148) - v148;
          v154 = __OFSUB__(HIDWORD(v148), v148);
          LODWORD(v208) = v154;
          v207 = v153;
          v205 = v149;
          v211 = BYTE6(v149);
          v155 = v188;
          v156 = v206;
          while (2)
          {
            sub_10062CD24(*(v204 + 6) + v147 * v215, v155, type metadata accessor for OwnerSharingCircle);
            v157 = *v155;
            v36 = v155[1];
            v158 = v36 >> 62;
            if (v36 >> 62 == 3)
            {
              if (v157)
              {
                v159 = 0;
              }

              else
              {
                v159 = v36 == 0xC000000000000000;
              }

              v161 = !v159 || v152 < 3;
              if (((v161 | v216) & 1) == 0)
              {
                goto LABEL_189;
              }

LABEL_159:
              v162 = 0;
              if (v152 > 1)
              {
                goto LABEL_160;
              }

LABEL_156:
              v165 = v211;
              if (v152)
              {
                v165 = v207;
                if (v208)
                {
                  goto LABEL_213;
                }
              }

LABEL_162:
              if (v162 == v165)
              {
                if (v162 < 1)
                {
                  goto LABEL_189;
                }

                if (v158 > 1)
                {
                  if (v158 == 2)
                  {
                    v206 = v156;
                    v168 = *(v157 + 16);
                    v202 = *(v157 + 24);
                    v169 = __DataStorage._bytes.getter();
                    if (v169)
                    {
                      v39 = v169;
                      v170 = __DataStorage._offset.getter();
                      if (__OFSUB__(v168, v170))
                      {
                        __break(1u);
LABEL_221:
                        __break(1u);
                        goto LABEL_222;
                      }

                      v201 = v168 - v170 + v39;
                    }

                    else
                    {
                      v201 = 0;
                    }

                    if (__OFSUB__(v202, v168))
                    {
                      goto LABEL_218;
                    }

                    __DataStorage._length.getter();
                    v176 = v201;
                    goto LABEL_188;
                  }

                  *(&v232 + 6) = 0;
                  *&v232 = 0;
LABEL_181:
                  sub_100771A28(&v232, v210, v205, &v227);
                  if (v227)
                  {
LABEL_189:
                    v177 = v212;
                    if ((static UUID.== infix(_:_:)() & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && *(v155 + v177[7]) == v203 && (sub_100DE7CB4(*(v155 + v177[8]), v219) & 1) != 0 && *(v155 + v177[9]) == v200)
                    {
                      sub_10062CBB8(v155, type metadata accessor for OwnerSharingCircle);
                      sub_10062CBB8(v190, type metadata accessor for OwnerSharingCircle);
                      v178 = v191[v13];
                      v191[v13] = v178 & ~v24;
                      v206 = v156;
                      if ((v178 & v24) == 0)
                      {
                        goto LABEL_200;
                      }

                      v179 = v193 - 1;
                      v30 = v204;
                      v110 = v189;
                      v113 = v195;
                      v111 = v196;
                      if (__OFSUB__(v193, 1))
                      {
                        __break(1u);
                      }

                      --v193;
                      if (!v179)
                      {
LABEL_219:

                        v101 = &_swiftEmptySetSingleton;
                        goto LABEL_105;
                      }

LABEL_201:
                      if (v111 == v194)
                      {
LABEL_104:
                        sub_10060C04C(v191, v186, v193, v30);
                        v101 = v112;
                        goto LABEL_105;
                      }

                      goto LABEL_107;
                    }
                  }
                }

                else
                {
                  if (!v158)
                  {
                    *&v232 = *v155;
                    WORD4(v232) = v36;
                    BYTE10(v232) = BYTE2(v36);
                    BYTE11(v232) = BYTE3(v36);
                    BYTE12(v232) = BYTE4(v36);
                    BYTE13(v232) = BYTE5(v36);
                    goto LABEL_181;
                  }

                  v206 = v156;
                  v39 = v157;
                  v171 = v157 >> 32;
                  v202 = v171 - v39;
                  if (v171 < v39)
                  {
                    goto LABEL_217;
                  }

                  v172 = __DataStorage._bytes.getter();
                  if (v172)
                  {
                    v173 = v172;
                    v174 = __DataStorage._offset.getter();
                    if (__OFSUB__(v39, v174))
                    {
                      goto LABEL_221;
                    }

                    v175 = v39 - v174 + v173;
                  }

                  else
                  {
                    v175 = 0;
                  }

                  __DataStorage._length.getter();
                  v176 = v175;
LABEL_188:
                  v156 = v206;
                  sub_100771A28(v176, v210, v205, &v232);
                  if (v232)
                  {
                    goto LABEL_189;
                  }
                }
              }
            }

            else
            {
              if (v158 > 1)
              {
                if (v158 != 2)
                {
                  goto LABEL_159;
                }

                v164 = *(v157 + 16);
                v163 = *(v157 + 24);
                v77 = __OFSUB__(v163, v164);
                v162 = v163 - v164;
                if (v77)
                {
                  goto LABEL_215;
                }

                if (v152 <= 1)
                {
                  goto LABEL_156;
                }
              }

              else if (v158)
              {
                LODWORD(v162) = HIDWORD(v157) - v157;
                if (__OFSUB__(HIDWORD(v157), v157))
                {
                  goto LABEL_214;
                }

                v162 = v162;
                if (v152 <= 1)
                {
                  goto LABEL_156;
                }
              }

              else
              {
                v162 = BYTE6(v36);
                if (v152 <= 1)
                {
                  goto LABEL_156;
                }
              }

LABEL_160:
              if (v152 == 2)
              {
                v167 = v210[2];
                v166 = v210[3];
                v77 = __OFSUB__(v166, v167);
                v165 = v166 - v167;
                if (v77)
                {
                  goto LABEL_212;
                }

                goto LABEL_162;
              }

              if (!v162)
              {
                goto LABEL_189;
              }
            }

            sub_10062CBB8(v155, type metadata accessor for OwnerSharingCircle);
            v147 = (v147 + 1) & v223;
            v13 = v147 >> 6;
            v24 = 1 << v147;
            if ((v214[v147 >> 6] & (1 << v147)) == 0)
            {
              goto LABEL_199;
            }

            continue;
          }
        }

        v139 = *(v135 + 48);
        v140 = v225;
        v141 = v226;
        (*v224)(v225, v113, v226);
        v142 = *(v113 + v139);
        v229 = v234;
        v230 = v235;
        v231 = v236;
        v228 = v233;
        v227 = v232;
        dispatch thunk of Hashable.hash(into:)();
        (*v221)(v140, v141);
        Hasher._combine(_:)(v142);
        v123 = Hasher._finalize()() ^ v223;
      }

      if (v122 <= i + 1)
      {
        v126 = i + 1;
      }

      else
      {
        v126 = v122;
      }

      v127 = v126 - 1;
      v128 = v197;
      while (1)
      {
        v125 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v125 >= v122)
        {
          v121 = 0;
          v138 = 1;
          v135 = v198;
          goto LABEL_122;
        }

        v121 = *(v216 + 8 * v125);
        ++i;
        if (v121)
        {
          goto LABEL_121;
        }
      }

      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
    }

    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
    goto LABEL_219;
  }

LABEL_222:
  v180 = v206;
  v181 = v105;

  v182 = v181;
  if (swift_stdlib_isStackAllocationSafe())
  {
    v30 = v204;

    goto LABEL_103;
  }

  v183 = swift_slowAlloc();
  memcpy(v183, v214, v182);
  sub_100619494(v183, v186, v204, v13, v237);
  v101 = v184;

  if (!v180)
  {

LABEL_105:

    return v101;
  }

  __break(1u);
  return result;
}

void *sub_1006146AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
    sub_100009CC8(&qword_101698E28, &qword_101698D00, SPHandle_ptr);
    Set.Iterator.init(_cocoa:)();
    v4 = v79;
    v6 = v80;
    v7 = v81;
    v8 = v82;
    v9 = v83;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v74 = v4;
  v75 = v6;
  v76 = v7;
  v77 = v8;
  v65 = v7;
  v13 = (v7 + 64) >> 6;
  v71 = v3 + 7;
  v78 = v9;
  v68 = v6;
  v69 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = __CocoaSet.Iterator.next()();
      if (!v21)
      {
        goto LABEL_65;
      }

      v72 = v21;
      sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
      swift_dynamicCast();
      v19 = v73;
      v17 = v8;
      v2 = v9;
      if (!v73)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        if (v13 <= (v8 + 1))
        {
          v16 = v8 + 1;
        }

        else
        {
          v16 = v13;
        }

        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_67;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v74 = v4;
      v75 = v6;
      v76 = v65;
      v77 = v17;
      v78 = v2;
      if (!v19)
      {
LABEL_65:
        v54 = v4;
        goto LABEL_63;
      }
    }

    v22 = v19;
    v23 = NSObject._rawHashValue(seed:)(v3[5]);
    v24 = -1 << *(v3 + 32);
    v8 = v23 & ~v24;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v71[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v68;
    v4 = v69;
  }

  v25 = ~v24;
  v26 = sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
  v27 = *(v3[6] + 8 * v8);
  v70 = v26;
  while (1)
  {
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      break;
    }

    v8 = (v8 + 1) & v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v71[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v3[6] + 8 * v8);
  }

  v30 = *(v3 + 32);
  v62 = ((1 << v30) + 63) >> 6;
  v5 = 8 * v62;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v63 = &v61;
    __chkstk_darwin(v29);
    v32 = &v61 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v71, v31);
    v33 = *&v32[8 * v4] & ~v15;
    v34 = v3[2];
    v64 = v32;
    *&v32[8 * v4] = v33;
    v4 = v34 - 1;
    v36 = v68;
    v35 = v69;
    v37 = i;
LABEL_33:
    v66 = v4;
    while (v35 < 0)
    {
      v38 = __CocoaSet.Iterator.next()();
      if (!v38)
      {
        goto LABEL_61;
      }

      v72 = v38;
      swift_dynamicCast();
      v39 = v73;
      if (!v73)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = NSObject._rawHashValue(seed:)(v3[5]);
      v45 = v3;
      v46 = -1 << *(v3 + 32);
      v47 = v44 & ~v46;
      v48 = v47 >> 6;
      v49 = 1 << v47;
      if (((1 << v47) & v71[v47 >> 6]) != 0)
      {
        v50 = ~v46;
        while (1)
        {
          v8 = *(v45[6] + 8 * v47);
          v51 = static NSObject.== infix(_:_:)();

          if (v51)
          {
            break;
          }

          v47 = (v47 + 1) & v50;
          v48 = v47 >> 6;
          v49 = 1 << v47;
          if (((1 << v47) & v71[v47 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v52 = v64[v48];
        v64[v48] = v52 & ~v49;
        v53 = (v52 & v49) == 0;
        v3 = v45;
        v36 = v68;
        v35 = v69;
        v4 = v66;
        v37 = i;
        if (!v53)
        {
          v4 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            v3 = &_swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v45;
        v36 = v68;
        v35 = v69;
        v4 = v66;
        v37 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v35 + 48) + ((v15 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v15;
LABEL_49:
      v74 = v35;
      v75 = v36;
      v76 = v65;
      v77 = v41;
      v17 = v41;
      v78 = v2;
      if (!v39)
      {
LABEL_61:
        v3 = sub_10060D058(v64, v62, v4, v3, &unk_1016BBFF0, &unk_1013B35C0);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v37 <= (v17 + 1))
    {
      v40 = v17 + 1;
    }

    else
    {
      v40 = v37;
    }

    v41 = v40 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v37)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v56 = v5;

    v57 = v56;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v58 = swift_slowAlloc();
  memcpy(v58, v71, v57);
  sub_10061A1FC(v58, v62, v3, v8, &v74);
  v60 = v59;

  v3 = v60;
LABEL_62:
  v54 = v74;
LABEL_63:
  sub_1000128F8(v54);
  return v3;
}

void *sub_100614D54(uint64_t a1, unint64_t *a2)
{
  v6 = a2;
  if (a2[2])
  {
    v52 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v57 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;

    v16 = 0;
    v58 = v12;
    v59 = v8;
    v60 = v14;
    v61 = v6;
    while (1)
    {
      if (!v11)
      {
        v17 = v16;
        while (1)
        {
          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_51;
          }

          if (v18 >= v12)
          {
            goto LABEL_48;
          }

          v11 = *(v8 + 8 * v18);
          ++v17;
          if (v11)
          {
            v16 = v18;
            break;
          }
        }
      }

      v19 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v62 = v16;
      v20 = (*(v14 + 48) + 24 * (v19 | (v16 << 6)));
      v2 = *v20;
      v4 = *(v20 + 1);
      v21 = *(v20 + 2);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v2);

      String.hash(into:)();
      v22 = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v8 = v22 & ~v23;
      v6 = v8 >> 6;
      v5 = 1 << v8;
      if (((1 << v8) & v13[v8 >> 6]) != 0)
      {
        break;
      }

LABEL_6:

      v14 = v60;
      v6 = v61;
      v12 = v58;
      v8 = v59;
      v16 = v62;
    }

    v24 = ~v23;
    v3 = v61[6];
    while (1)
    {
      v25 = (v3 + 24 * v8);
      if (*v25 == v2)
      {
        v26 = *(v25 + 1) == v4 && *(v25 + 2) == v21;
        if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v24;
      v6 = v8 >> 6;
      v5 = 1 << v8;
      if ((v13[v8 >> 6] & (1 << v8)) == 0)
      {
        goto LABEL_6;
      }
    }

    v27 = v62;
    v64 = v57;
    v65 = v62;
    v66 = v11;
    v4 = v59;
    v2 = v60;
    v63[0] = v60;
    v63[1] = v59;

    v3 = v61;
    v29 = *(v61 + 32);
    v53 = ((1 << v29) + 63) >> 6;
    v15 = 8 * v53;
    if ((v29 & 0x3Fu) > 0xD)
    {
      goto LABEL_52;
    }

    while (1)
    {
      v54 = &v52;
      __chkstk_darwin(v28);
      v8 = &v52 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v8, v13, v30);
      v31 = *(v8 + 8 * v6) & ~v5;
      v56 = v8;
      *(v8 + 8 * v6) = v31;
      v32 = *(v3 + 16) - 1;
      v33 = v58;
LABEL_24:
      v55 = v32;
      while (v11)
      {
LABEL_32:
        v36 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v62 = v27;
        v37 = (*(v2 + 48) + 24 * (v36 | (v27 << 6)));
        v5 = *v37;
        v39 = *(v37 + 1);
        v38 = *(v37 + 2);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v5);

        String.hash(into:)();
        v40 = Hasher._finalize()();
        v41 = -1 << *(v3 + 32);
        v6 = v40 & ~v41;
        v8 = v6 >> 6;
        v42 = 1 << v6;
        if (((1 << v6) & v13[v6 >> 6]) != 0)
        {
          v43 = ~v41;
          v44 = *(v3 + 48);
          while (1)
          {
            v45 = (v44 + 24 * v6);
            if (*v45 == v5)
            {
              v46 = *(v45 + 1) == v39 && *(v45 + 2) == v38;
              if (v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }
            }

            v6 = (v6 + 1) & v43;
            v8 = v6 >> 6;
            v42 = 1 << v6;
            if ((v13[v6 >> 6] & (1 << v6)) == 0)
            {
              goto LABEL_25;
            }
          }

          v47 = v56[v8];
          v56[v8] = v47 & ~v42;
          v26 = (v47 & v42) == 0;
          v2 = v60;
          v3 = v61;
          v33 = v58;
          v4 = v59;
          v27 = v62;
          if (!v26)
          {
            v32 = v55 - 1;
            if (__OFSUB__(v55, 1))
            {
              __break(1u);
            }

            if (v55 == 1)
            {

              v6 = &_swiftEmptySetSingleton;
              goto LABEL_47;
            }

            goto LABEL_24;
          }
        }

        else
        {
LABEL_25:

          v2 = v60;
          v3 = v61;
          v33 = v58;
          v4 = v59;
          v27 = v62;
        }
      }

      v34 = v27;
      while (1)
      {
        v35 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v35 >= v33)
        {
          v6 = sub_10060C86C(v56, v53, v55, v3);
          goto LABEL_47;
        }

        v11 = *(v4 + 8 * v35);
        ++v34;
        if (v11)
        {
          v27 = v35;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      v49 = v15;

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }

      v27 = v62;
    }

    v50 = swift_slowAlloc();
    memcpy(v50, v13, v49);
    v51 = v52;
    v6 = sub_10061A4A8(v50, v53, v3, v8, v63);

    if (!v51)
    {

      v2 = v63[0];
      v57 = v64;
LABEL_47:
      v14 = v2;
LABEL_48:
      sub_1000128F8(v14);
      return v6;
    }

    __break(1u);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_100615308(uint64_t a1, void *a2)
{
  v5 = sub_1000BC4D4(&qword_1016A5A40, &qword_1013B3568);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v65 - v9);
  v11 = type metadata accessor for CorrelationIdentifier();
  v12 = __chkstk_darwin(v11);
  v85 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = (&v65 - v15);
  __chkstk_darwin(v14);
  v80 = (&v65 - v18);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v66 = v10;
  v68 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = a2 + 7;
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_10000B3A8(v30, &qword_1016A5A40, &qword_1013B3568);
      v59 = a1;
      goto LABEL_53;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_100009774(&unk_1016C7F30, &type metadata accessor for CorrelationIdentifier, &protocol conformance descriptor for CorrelationIdentifier);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v16, a2[6] + v84 * v24, v11);
    v35 = sub_100009774(&qword_1016A5A48, &type metadata accessor for CorrelationIdentifier, &protocol conformance descriptor for CorrelationIdentifier);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v87 = *v88;
    v87(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v66 = &v65;
    __chkstk_darwin(v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_10000B3A8(v24, &qword_1016A5A40, &qword_1013B3568);
        a2 = sub_10060CABC(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v16, v52[6] + v54 * v84, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v87(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v16, v52[6] + v54 * v84, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v87(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v80 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v80;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v82, v62);
  a2 = sub_10061A6EC(v64, v65, v80, v24, &v89);

LABEL_52:
  v59 = v89;
LABEL_53:
  sub_1000128F8(v59);
  return a2;
}

void *sub_100615D6C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v56 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = v48 - v9;
  __chkstk_darwin(v8);
  i = v48 - v11;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v62[0] = a1;
  v12 = *(a1 + 16);

  v50 = v12;
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = 0;
  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v16 = *(v14 + 64);
  v52 = a1;
  v53 = a1 + ((v16 + 32) & ~v16);
  v59 = *(v14 + 56);
  v60 = v15;
  v57 = a2 + 7;
  v58 = a2;
  v61 = v14;
  v17 = (v14 - 8);
  v49 = ((v14 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v54 = v13 + 1;
    v62[1] = v13 + 1;
    v60(i, v53 + v59 * v13, v4);
    v51 = sub_100009774(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v57[v20 >> 6]) != 0)
    {
      break;
    }

    v25 = *v17;
LABEL_10:
    v25(i, v4);
    v13 = v54;
    if (v54 == v50)
    {
      goto LABEL_30;
    }
  }

  v23 = ~v19;
  while (1)
  {
    v60(v10, v58[6] + v20 * v59, v4);
    sub_100009774(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    v25 = *v17;
    (*v17)(v10, v4);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v23;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v57[v20 >> 6]) == 0)
    {
      a2 = v58;
      goto LABEL_10;
    }
  }

  v26 = (v25)(i, v4);
  v27 = v58;
  v28 = *(v58 + 32);
  v48[0] = ((1 << v28) + 63) >> 6;
  v29 = 8 * v48[0];
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v48[1] = v48;
    __chkstk_darwin(v26);
    v31 = v48 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v31, v57, v30);
    v32 = v27[2];
    *&v31[8 * v21] &= ~v22;
    v49 = v31;
    v50 = (v32 - 1);
    v33 = *(v52 + 16);
    v34 = v54;
    for (i = v33; ; v33 = i)
    {
      if (v34 == v33)
      {
        a2 = sub_10060AF64(v49, v48[0], v50, v27);
        goto LABEL_30;
      }

      if (v34 >= *(v52 + 16))
      {
        break;
      }

      v54 = v34;
      v60(v56, v53 + v34 * v59, v4);
      v36 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v27 + 32);
      v20 = v36 & ~v37;
      v22 = v20 >> 6;
      v21 = 1 << v20;
      if (((1 << v20) & v57[v20 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v60(v10, v58[6] + v20 * v59, v4);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25(v10, v4);
      if ((v38 & 1) == 0)
      {
        v39 = ~v37;
        while (1)
        {
          v20 = (v20 + 1) & v39;
          v22 = v20 >> 6;
          v21 = 1 << v20;
          if (((1 << v20) & v57[v20 >> 6]) == 0)
          {
            break;
          }

          v60(v10, v58[6] + v20 * v59, v4);
          v40 = dispatch thunk of static Equatable.== infix(_:_:)();
          v25(v10, v4);
          if (v40)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v25(v56, v4);
        v27 = v58;
LABEL_16:
        v35 = v54;
        goto LABEL_17;
      }

LABEL_25:
      v25(v56, v4);
      v41 = v49[v22];
      v49[v22] = v41 & ~v21;
      v27 = v58;
      if ((v41 & v21) == 0)
      {
        goto LABEL_16;
      }

      v42 = v50 - 1;
      v35 = v54;
      if (__OFSUB__(v50, 1))
      {
        goto LABEL_33;
      }

      --v50;
      if (!v42)
      {

        a2 = &_swiftEmptySetSingleton;
        goto LABEL_30;
      }

LABEL_17:
      v34 = v35 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v44 = v29;

    v45 = v44;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v46 = v58;

      v27 = v46;
      continue;
    }

    break;
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v57, v45);
  a2 = sub_10061ABC0(v47, v48[0], v58, v20, v62);

LABEL_30:

  return a2;
}