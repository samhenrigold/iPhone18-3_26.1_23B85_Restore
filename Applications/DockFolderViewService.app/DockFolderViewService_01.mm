uint64_t (*sub_100010EB0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_100010F30;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100010F38(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_100010FB8;
  }

  __break(1u);
  return result;
}

double sub_100011068(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  type metadata accessor for FolderCellAnimationItemContext();
  v22 = swift_allocObject();
  result = 0.0;
  *(v22 + 96) = xmmword_100090450;
  *(v22 + 112) = 0x3FF0000000000000;
  *(v22 + 120) = 0;
  *(v22 + 128) = 0;
  *(v22 + 136) = 0x3FF0000000000000;
  *(v22 + 144) = 0;
  *(v22 + 152) = 0;
  *(v22 + 160) = 0x3FF0000000000000;
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;
  *(v22 + 184) = 0x3FF0000000000000;
  *(v22 + 192) = 0;
  *(v22 + 200) = 0;
  *(v22 + 208) = 0;
  *(v22 + 216) = 0;
  *(v22 + 224) = 0;
  *(v22 + 16) = a1;
  *(v22 + 24) = a12;
  *(v22 + 64) = a2;
  *(v22 + 72) = a3;
  *(v22 + 80) = a4;
  *(v22 + 88) = a5;
  *(v22 + 32) = a6;
  *(v22 + 40) = a7;
  *(v22 + 48) = a8;
  *(v22 + 56) = a9;
  return result;
}

uint64_t sub_100011120(void **a1, void **a2, void **a3, void **a4, void *a5)
{
  v91 = a5;
  v89 = type metadata accessor for IndexPath();
  __chkstk_darwin(v89);
  v84 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v83 = &v79 - v11;
  __chkstk_darwin(v12);
  v85 = &v79 - v13;
  __chkstk_darwin(v14);
  v16 = &v79 - v15;
  __chkstk_darwin(v17);
  v82 = (&v79 - v18);
  __chkstk_darwin(v19);
  v81 = &v79 - v20;
  __chkstk_darwin(v21);
  v86 = (&v79 - v22);
  __chkstk_darwin(v23);
  v26 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v26 = a2 - a1;
  }

  v27 = v26 >> 3;
  v28 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v28 = a3 - a2;
  }

  v29 = v28 >> 3;
  if (v27 >= v28 >> 3)
  {
    v90 = a1;
    if (a4 != a2 || &a2[v29] <= a4)
    {
      v55 = v25;
      memmove(a4, a2, 8 * v29);
      v25 = v55;
    }

    v94 = &a4[v29];
    if (a3 - a2 >= 8 && a2 > v90)
    {
      v56 = (v25 + 32);
      v80 = v16;
      v81 = (v25 + 8);
      p_type = (&stru_1000B6FF0 + 16);
      v93 = a4;
LABEL_28:
      v88 = a2;
      v58 = a2 - 1;
      v59 = (a3 - 1);
      v60 = v94;
      v82 = a2 - 1;
      while (1)
      {
        v92 = v59;
        v61 = *(v60 - 1);
        v86 = v60 - 1;
        v62 = *v58;
        v63 = v61;
        v64 = v62;
        v65 = p_type[424];
        v66 = v91;
        v87 = v63;
        result = [v91 v65];
        if (!result)
        {
          goto LABEL_47;
        }

        v67 = result;
        v68 = v85;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v69 = *v56;
        v70 = v80;
        v71 = v89;
        (*v56)(v80, v68, v89);
        result = [v66 p_type[424]];
        if (!result)
        {
          goto LABEL_48;
        }

        v72 = result;
        v73 = v84;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v74 = v83;
        v69(v83, v73, v71);
        v75 = IndexPath.compare(_:)();
        v76 = *v81;
        (*v81)(v74, v71);
        v76(v70, v71);

        if (v75 == -1)
        {
          a3 = v92;
          p_type = (&stru_1000B6FF0 + 16);
          v78 = v82;
          if (v92 + 8 != v88)
          {
            *v92 = *v82;
          }

          a4 = v93;
          if (v94 <= v93 || (a2 = v78, v78 <= v90))
          {
            a2 = v78;
            break;
          }

          goto LABEL_28;
        }

        v77 = v92;
        p_type = &stru_1000B6FF0.type;
        v60 = v86;
        if (v92 + 8 != v94)
        {
          *v92 = *v86;
        }

        v59 = v77 - 8;
        v94 = v60;
        v58 = v82;
        if (v60 <= v93)
        {
          v94 = v60;
          a4 = v93;
          a2 = v88;
          break;
        }
      }
    }

LABEL_41:
    if (a2 != a4 || a2 >= (a4 + ((v94 - a4 + (v94 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, a4, 8 * (v94 - a4));
    }

    return 1;
  }

  v85 = &v79 - v24;
  if (a4 != a1 || &a1[v27] <= a4)
  {
    v30 = v25;
    memmove(a4, a1, 8 * v27);
    v25 = v30;
  }

  v94 = &a4[v27];
  v31 = v91;
  if (a2 - a1 < 8 || a2 >= a3)
  {
LABEL_21:
    a2 = a1;
    goto LABEL_41;
  }

  v32 = a2;
  v33 = (v25 + 32);
  v84 = (v25 + 8);
  v34 = &stru_1000B6FF0.type;
  v92 = a3;
  v35 = v85;
  while (1)
  {
    v90 = a1;
    v88 = v32;
    v36 = *v32;
    v93 = a4;
    v37 = *a4;
    v38 = v36;
    v39 = v37;
    v40 = v34[424];
    v87 = v38;
    result = [v31 v40];
    if (!result)
    {
      break;
    }

    v42 = result;
    v43 = v86;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = *v33;
    v45 = v89;
    (*v33)(v35, v43, v89);
    result = [v31 v34[424]];
    if (!result)
    {
      goto LABEL_46;
    }

    v46 = result;
    v47 = v82;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = v81;
    v44(v81, v47, v45);
    v49 = IndexPath.compare(_:)();
    v50 = *v84;
    (*v84)(v48, v45);
    v50(v35, v45);

    if (v49 == -1)
    {
      v51 = v88;
      v32 = v88 + 1;
      v52 = v90;
      v53 = v90 == v88;
      a4 = v93;
    }

    else
    {
      v51 = v93;
      a4 = v93 + 1;
      v52 = v90;
      v53 = v90 == v93;
      v32 = v88;
    }

    v31 = v91;
    v54 = v92;
    v34 = (&stru_1000B6FF0 + 16);
    if (!v53)
    {
      *v52 = *v51;
    }

    a1 = v52 + 1;
    if (a4 >= v94 || v32 >= v54)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

void sub_100011788(char **a1, void **a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_10000F704(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      v24 = (v9 + 8 * *v10);
      v23 = (v9 + 8 * *v13);
      v14 = (v9 + 8 * v5);
      v15 = v21;
      sub_100011120(v24, v23, v14, a2, v15);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_100011928(void ***a1, uint64_t a2, void ***a3, uint64_t a4, char **p_type)
{
  v7 = v6;
  v147 = a4;
  v148 = a1;
  v10 = type metadata accessor for IndexPath();
  __chkstk_darwin(v10);
  v159 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v158 = &v143 - v13;
  __chkstk_darwin(v14);
  v160 = &v143 - v15;
  __chkstk_darwin(v16);
  v18 = (&v143 - v17);
  __chkstk_darwin(v19);
  v152 = &v143 - v20;
  __chkstk_darwin(v21);
  v151 = &v143 - v22;
  __chkstk_darwin(v23);
  v153 = &v143 - v24;
  __chkstk_darwin(v25);
  v143 = (&v143 - v28);
  v170 = _swiftEmptyArrayStorage;
  v156 = a3;
  v29 = a3[1];
  if (v29 >= 1)
  {
    v163 = (v27 + 32);
    v164 = v26;
    v162 = (v27 + 8);
    v30 = p_type;
    v31 = v29;
    v165 = v30;
    v32 = 0;
    v33 = _swiftEmptyArrayStorage;
    v167 = v18;
    v154 = p_type;
    while (1)
    {
      if (v32 + 1 >= v31)
      {
        v42 = (v32 + 1);
        v55 = v147;
      }

      else
      {
        v157 = v31;
        v34 = *v156;
        v35 = (*v156)[v32 + 1];
        v168 = (*v156)[v32];
        v36 = v168;
        v169 = v35;
        v37 = v35;
        v38 = v36;
        LODWORD(v155) = sub_100064928(&v169, &v168, v165);
        if (v7)
        {

          goto LABEL_101;
        }

        v145 = v33;
        v146 = 0;

        v39 = (v32 + 2);
        v144 = v32;
        v150 = 8 * v32;
        v40 = &v34[v32 + 2];
        v41 = v143;
        while (1)
        {
          v42 = v157;
          v5 = v165;
          if (v157 == v39)
          {
            break;
          }

          v43 = *(v40 - 1);
          v44 = *v40;
          v166 = v43;
          p_type = &stru_1000B6FF0.type;
          v161 = v44;
          v45 = [v5 indexPathForCell:v44];
          if (!v45)
          {
            goto LABEL_129;
          }

          p_type = v5;
          v5 = v45;
          v46 = v153;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v47 = v164;
          v48 = *v163;
          (*v163)(v41, v46, v164);
          v49 = [p_type indexPathForCell:v166];
          if (!v49)
          {
            goto LABEL_128;
          }

          v50 = v49;
          p_type = v41;
          v51 = v152;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v52 = v151;
          v48(v151, v51, v47);
          v53 = IndexPath.compare(_:)();
          v54 = *v162;
          (*v162)(v52, v47);
          v54(p_type, v47);

          v39 = (v39 + 1);
          ++v40;
          v41 = p_type;
          if (((v155 ^ (v53 != -1)) & 1) == 0)
          {
            v42 = (v39 - 1);
            v5 = v165;
            break;
          }
        }

        v7 = v146;
        v55 = v147;
        v33 = v145;
        v32 = v144;
        v56 = v150;
        if ((v155 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v42 < v144)
        {
          goto LABEL_124;
        }

        if (v144 < v42)
        {
          v57 = 8 * v42 - 8;
          v58 = v42;
          v59 = v144;
          do
          {
            v42 = (v42 - 1);
            if (v59 != v42)
            {
              v60 = *v156;
              if (!*v156)
              {
                goto LABEL_131;
              }

              v61 = *(v60 + v56);
              *(v60 + v56) = *(v60 + v57);
              *(v60 + v57) = v61;
            }

            v59 = (v59 + 1);
            v57 -= 8;
            v56 += 8;
          }

          while (v59 < v42);
          p_type = v154;
          v42 = v58;
        }

        else
        {
LABEL_22:
          p_type = v154;
        }
      }

      v62 = v156[1];
      if (v42 >= v62)
      {
        break;
      }

      v63 = v42;
      v104 = __OFSUB__(v42, v32);
      v64 = v42 - v32;
      if (v104)
      {
        goto LABEL_121;
      }

      if (v64 >= v55)
      {
        v65 = v63;
        if (v63 < v32)
        {
          goto LABEL_120;
        }
      }

      else
      {
        if (__OFADD__(v32, v55))
        {
          goto LABEL_122;
        }

        if (v32 + v55 < v62)
        {
          v62 = v32 + v55;
        }

        if (v62 < v32)
        {
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          v140 = v165;

          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          v141 = v165;

          __break(1u);
LABEL_131:

          __break(1u);
LABEL_132:
          v142 = v165;

          __break(1u);
LABEL_133:

          __break(1u);
          return;
        }

        v42 = v63;
        if (v63 == v62)
        {
          break;
        }

        v149 = v62;
        v145 = v33;
        v146 = v7;
        v161 = *v156;
        v66 = &v161[v63 - 1];
        v144 = v32;
        v67 = (v32 - v63);
        v68 = (&stru_1000B6FF0 + 16);
        do
        {
          v157 = v42;
          v69 = v161[v42];
          v150 = v67;
          v70 = v67;
          v155 = v66;
          do
          {
            v5 = *v66;
            v71 = v69;
            p_type = v5;
            v72 = v165;
            v73 = [v165 v68[424]];
            if (!v73)
            {
              goto LABEL_126;
            }

            v74 = v73;
            v166 = v70;
            v75 = v160;
            static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

            v76 = *v163;
            v5 = v68;
            v77 = v164;
            (*v163)(v167, v75, v164);
            v78 = [v72 *(v5 + 3392)];
            if (!v78)
            {
              goto LABEL_125;
            }

            v79 = v78;
            v80 = v159;
            static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

            v81 = v158;
            v82 = v80;
            v83 = v167;
            v76(v158, v82, v77);
            v5 = IndexPath.compare(_:)();
            v84 = *v162;
            (*v162)(v81, v77);
            v84(v83, v77);

            v68 = &stru_1000B6FF0.type;
            if (v5 != -1)
            {
              break;
            }

            v85 = v166;
            if (!v161)
            {
              goto LABEL_127;
            }

            v86 = *v66;
            v69 = v66[1];
            *v66 = v69;
            v66[1] = v86;
            --v66;
            v87 = __CFADD__(v85, 1);
            v70 = (v85 + 1);
          }

          while (!v87);
          v42 = (v157 + 1);
          v66 = v155 + 1;
          v67 = (v150 - 1);
        }

        while ((v157 + 1) != v149);
        v7 = v146;
        p_type = v154;
        v33 = v145;
        v32 = v144;
        v65 = v149;
        if (v149 < v144)
        {
          goto LABEL_120;
        }
      }

LABEL_47:
      v149 = v65;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_10000D8A0(0, *(v33 + 2) + 1, 1, v33);
      }

      v5 = *(v33 + 2);
      v88 = *(v33 + 3);
      v89 = v5 + 1;
      if (v5 >= v88 >> 1)
      {
        v33 = sub_10000D8A0((v88 > 1), v5 + 1, 1, v33);
      }

      *(v33 + 2) = v89;
      v90 = v33 + 32;
      v91 = &v33[16 * v5 + 32];
      v92 = v149;
      *v91 = v32;
      *(v91 + 1) = v92;
      v170 = v33;
      v157 = *v148;
      if (!v157)
      {
        goto LABEL_132;
      }

      if (v5)
      {
        v155 = (v33 + 32);
        while (1)
        {
          v93 = v89 - 1;
          if (v89 >= 4)
          {
            break;
          }

          if (v89 == 3)
          {
            v94 = *(v33 + 4);
            v95 = *(v33 + 5);
            v104 = __OFSUB__(v95, v94);
            v96 = v95 - v94;
            v97 = v104;
LABEL_67:
            if (v97)
            {
              goto LABEL_111;
            }

            v110 = &v33[16 * v89];
            v112 = *v110;
            v111 = *(v110 + 1);
            v113 = __OFSUB__(v111, v112);
            v114 = v111 - v112;
            v115 = v113;
            if (v113)
            {
              goto LABEL_114;
            }

            v116 = &v90[16 * v93];
            v118 = *v116;
            v117 = *(v116 + 1);
            v104 = __OFSUB__(v117, v118);
            v119 = v117 - v118;
            if (v104)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v114, v119))
            {
              goto LABEL_118;
            }

            if (v114 + v119 >= v96)
            {
              if (v96 < v119)
              {
                v93 = v89 - 2;
              }

              goto LABEL_88;
            }

            goto LABEL_81;
          }

          v120 = &v33[16 * v89];
          v122 = *v120;
          v121 = *(v120 + 1);
          v104 = __OFSUB__(v121, v122);
          v114 = v121 - v122;
          v115 = v104;
LABEL_81:
          if (v115)
          {
            goto LABEL_113;
          }

          v123 = &v90[16 * v93];
          v125 = *v123;
          v124 = *(v123 + 1);
          v104 = __OFSUB__(v124, v125);
          v126 = v124 - v125;
          if (v104)
          {
            goto LABEL_116;
          }

          if (v126 < v114)
          {
            goto LABEL_3;
          }

LABEL_88:
          if (v93 - 1 >= v89)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          v131 = *v156;
          if (!*v156)
          {
            goto LABEL_130;
          }

          v132 = &v90[16 * v93 - 16];
          v133 = *v132;
          v134 = v93;
          p_type = &v90[16 * v93];
          v135 = p_type[1];
          v5 = &v131[*v132];
          v166 = &v131[*p_type];
          v161 = &v131[v135];
          v136 = v165;
          sub_100011120(v5, v166, v161, v157, v136);
          if (v7)
          {

            v170 = v33;
            p_type = v154;
            goto LABEL_101;
          }

          if (v135 < v133)
          {
            goto LABEL_106;
          }

          v5 = *(v33 + 2);
          if (v134 > v5)
          {
            goto LABEL_107;
          }

          *v132 = v133;
          v132[1] = v135;
          if (v134 >= v5)
          {
            goto LABEL_108;
          }

          v89 = v5 - 1;
          memmove(p_type, p_type + 2, 16 * (v5 - 1 - v134));
          *(v33 + 2) = v5 - 1;
          p_type = v154;
          v90 = v155;
          if (v5 <= 2)
          {
LABEL_3:
            v170 = v33;
            goto LABEL_4;
          }
        }

        v98 = &v90[16 * v89];
        v99 = *(v98 - 8);
        v100 = *(v98 - 7);
        v104 = __OFSUB__(v100, v99);
        v101 = v100 - v99;
        if (v104)
        {
          goto LABEL_109;
        }

        v103 = *(v98 - 6);
        v102 = *(v98 - 5);
        v104 = __OFSUB__(v102, v103);
        v96 = v102 - v103;
        v97 = v104;
        if (v104)
        {
          goto LABEL_110;
        }

        v105 = &v33[16 * v89];
        v107 = *v105;
        v106 = *(v105 + 1);
        v104 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v104)
        {
          goto LABEL_112;
        }

        v104 = __OFADD__(v96, v108);
        v109 = v96 + v108;
        if (v104)
        {
          goto LABEL_115;
        }

        if (v109 >= v101)
        {
          v127 = &v90[16 * v93];
          v129 = *v127;
          v128 = *(v127 + 1);
          v104 = __OFSUB__(v128, v129);
          v130 = v128 - v129;
          if (v104)
          {
            goto LABEL_119;
          }

          if (v96 < v130)
          {
            v93 = v89 - 2;
          }

          goto LABEL_88;
        }

        goto LABEL_67;
      }

LABEL_4:
      v31 = v156[1];
      v32 = v149;
      if (v149 >= v31)
      {
        goto LABEL_98;
      }
    }

    v65 = v42;
    if (v42 < v32)
    {
      goto LABEL_120;
    }

    goto LABEL_47;
  }

  v137 = p_type;
LABEL_98:
  v138 = *v148;
  if (!*v148)
  {
    goto LABEL_133;
  }

  v139 = p_type;
  sub_100011788(&v170, v138, v156, v139);
  if (v7)
  {

LABEL_101:
  }

  else
  {
  }
}

void sub_1000123B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v10 = type metadata accessor for IndexPath();
  __chkstk_darwin(v10);
  v55 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v54 = &v48 - v13;
  __chkstk_darwin(v14);
  v56 = &v48 - v15;
  __chkstk_darwin(v16);
  v19 = &v48 - v18;
  v49 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = (v17 + 32);
    v53 = (v17 + 8);
    v57 = v20;
    v22 = v20 + 8 * a3 - 8;
    v23 = a1 - a3;
    p_type = &stru_1000B6FF0.type;
LABEL_5:
    v51 = v22;
    v52 = a3;
    v25 = *(v57 + 8 * a3);
    v50 = v23;
    v26 = v23;
    while (1)
    {
      v27 = *v22;
      v28 = v25;
      v61 = v27;
      v29 = p_type[424];
      v60 = v28;
      v30 = [a5 v29];
      if (!v30)
      {
        break;
      }

      v31 = a5;
      v32 = v30;
      v59 = v26;
      v33 = v56;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = *v21;
      (*v21)(v19, v33, v10);
      v35 = v31;
      v36 = [v31 p_type[424]];
      if (!v36)
      {
        goto LABEL_14;
      }

      v37 = v36;
      v38 = v55;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v39 = p_type;
      v40 = v19;
      v41 = v10;
      v42 = v54;
      v34(v54, v38, v41);
      v58 = IndexPath.compare(_:)();
      v43 = *v53;
      v44 = v42;
      v10 = v41;
      v19 = v40;
      p_type = v39;
      (*v53)(v44, v10);
      v43(v19, v10);

      a5 = v35;
      v45 = v59;
      if (v58 == -1)
      {
        if (!v57)
        {
          goto LABEL_15;
        }

        v46 = *v22;
        v25 = *(v22 + 8);
        *v22 = v25;
        *(v22 + 8) = v46;
        v22 -= 8;
        v47 = __CFADD__(v45, 1);
        v26 = v45 + 1;
        if (!v47)
        {
          continue;
        }
      }

      a3 = v52 + 1;
      v22 = v51 + 8;
      v23 = v50 - 1;
      if (v52 + 1 == v49)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_1000126B8(void ***a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = _minimumMergeRunLength(_:)(v3);
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10001A2A8(0, &qword_1000BBD08, UICollectionViewCell_ptr);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      v9 = v4;
      sub_100011928(v10, v11, a1, v6, v9);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_1000123B0(0, v3, 1, a1, v4);
  }
}

void sub_10001280C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_100010FC0(v3);
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = (v3 + 32);
  v8[1] = v6;
  v7 = v4;
  sub_1000126B8(v8, v7);

  specialized ContiguousArray._endMutation()();
}

id sub_1000128AC()
{
  v1 = v0;
  if (!*(v0 + 216))
  {
    v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, *(v0 + 48), *(v0 + 56)}];
    [v2 setClipsToBounds:0];
    v3 = v1[27];
    v1[27] = v2;
  }

  v4 = v1[3];
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 8))(ObjectType, v4);
  v7 = v1[28];
  v1[28] = v6;
  v8 = v6;

  result = v1[27];
  if (result)
  {
    if (!v1[28])
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    result = [result addSubview:?];
  }

  v10 = v1[28];
  if (!v10)
  {
LABEL_9:

    result = v1[27];
    if (result)
    {
      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  v11 = v1[27];
  if (v11)
  {
    v12 = v10;
    [v11 bounds];
    [v12 setFrame:?];

    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1000129E8(int a1, int a2, uint64_t a3, unint64_t a4, void *a5, void *a6, void *a7, double a8, double a9, double a10, double a11)
{
  LODWORD(v183) = a2;
  v184 = a1;
  v187 = type metadata accessor for Logger();
  v186 = *(v187 - 1);
  __chkstk_darwin(v187);
  v178 = &v160 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v177 = &v160 - v22;
  __chkstk_darwin(v23);
  v25 = &v160 - v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = a6;
  *(v27 + 24) = sub_10001433C;
  *(v27 + 32) = v26;
  v28 = a7;
  v29 = a6;

  static Logger.UI.getter();
  v30 = a5;

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v179 = v29;
    v34 = v33;
    v35 = swift_slowAlloc();
    v176 = v27;
    Strong = v35;
    v195 = v35;
    *v34 = 136316674;
    *(v34 + 4) = sub_100037B98(0xD000000000000053, 0x8000000100091DD0, &v195);
    v180 = v28;
    *(v34 + 12) = 2080;
    v36 = (v30 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
    v181 = v26;
    v37 = v30;
    v38 = a4;
    v39 = *v36;
    v40 = v36[1];

    v41 = sub_100037B98(v39, v40, &v195);

    *(v34 + 14) = v41;
    *(v34 + 22) = 2080;
    v189 = a8;
    v190 = a9;
    v191 = a10;
    v192 = a11;
    type metadata accessor for CGRect(0);
    v42 = String.init<A>(describing:)();
    v44 = sub_100037B98(v42, v43, &v195);

    *(v34 + 24) = v44;
    *(v34 + 32) = 1024;
    *(v34 + 34) = v184 & 1;
    *(v34 + 38) = 1024;
    *(v34 + 40) = v183 & 1;
    *(v34 + 44) = 2080;
    *(v34 + 46) = sub_100037B98(a3, v38, &v195);
    *(v34 + 54) = 2080;
    v28 = v180;
    v45 = *(v37 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8);
    v189 = *(v37 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier);
    v190 = v45;

    sub_10000589C(&qword_1000BBCF0, "0T");
    v46 = String.init<A>(describing:)();
    v48 = sub_100037B98(v46, v47, &v195);
    v26 = v181;

    *(v34 + 56) = v48;
    a4 = v38;
    v30 = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "%s identifier: %s to: %s isExpanding: %{BOOL}d retargetExistingAnimation: %{BOOL}d animationID: %s mostRecentlyRequestedAnimationIdentifier: %s", v34, 0x40u);
    swift_arrayDestroy();
    v27 = v176;

    v29 = v179;
  }

  v49 = *(v186 + 1);
  v49(v25, v187);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v50 = (v30 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame);
    if ((*(v30 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32) & 1) != 0 || (v166 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer, (v51 = *(v30 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer)) == 0))
    {
LABEL_40:
      v85 = v28;
      sub_10003AA04(0, v29, v85);
    }

    else
    {
      v182 = v30;
      v52 = v50[2];
      v170 = v50[3];
      v54 = *v50;
      v53 = v50[1];
      v55 = v51;
      LOBYTE(v30) = v184;
      if (v184)
      {
        goto LABEL_9;
      }

      v56 = v55;
      v57 = [v55 superview];
      if (v57)
      {

        v51 = *&v182[v166];
        v55 = v56;
        if (!v51)
        {
          goto LABEL_124;
        }

LABEL_9:
        v185 = v55;
        v181 = v26;
        v58 = v51;
        sub_100062FF4();

        v59 = *&v182[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
        if (v59)
        {
          v169 = v49;
          v165 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
          [v59 layoutSubviews];
          v60 = 0.5;
          if (v30)
          {
            v60 = 1.0;
          }

          v164 = v60;
          v61 = 0.0;
          if (v30)
          {
            v62 = 0.0;
          }

          else
          {
            v62 = 1.0;
          }

          if ((v30 & 1) == 0)
          {
            a11 = v170;
            a10 = v52;
            a9 = v53;
            a8 = v54;
          }

          p_type = &stru_1000B6FF0.type;
          if (v30)
          {
            v61 = 1.0;
          }

          v163 = v61;
          if ((v183 & 1) == 0)
          {
            [v185 setAlpha:v62];
          }

          v64 = swift_allocObject();
          v173 = v64;
          *(v64 + 16) = 0;
          v167 = v64 + 16;
          v65 = swift_allocObject();
          v172 = v65;
          *(v65 + 16) = _swiftEmptyArrayStorage;
          v66 = (v65 + 16);
          v67 = swift_allocObject();
          v171 = v67;
          *(v67 + 16) = _swiftEmptyArrayStorage;
          v174 = (v67 + 16);
          v68 = *&v182[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
          if (v68)
          {
            [v68 setAlpha:v62];
          }

          v69 = v182;
          [*&v182[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] setAlpha:1.0];
          v70 = *&v69[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
          v71 = v183;
          if (v70)
          {
            [v70 setAlpha:0.0];
          }

          v180 = v28;
          v175 = v66;
          v179 = v29;
          v168 = a3;
          if ((v71 & 1) == 0)
          {
            v86 = sub_100008104(v182, Strong, v30 & 1, a3, a4, v185, v54, v53, v52, v170);
            v88 = v87;
            *v66 = v86;

            *v174 = v88;

            v90 = sub_1000099DC(v89);
            v91 = v90;
            v176 = v27;
            v161 = a4;
            if (v90 >> 62)
            {
              goto LABEL_110;
            }

            v29 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_46;
          }

          v72 = v182;
          v73 = *&v182[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
          if (v73)
          {
            *v175 = v73;

            v74 = *&v72[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts];
            if (v74)
            {
              *v174 = v74;

              v75 = v172;

              v77 = v173;
              sub_100009470(v76, v72, v75, v173, a3, a4);

              sub_100009470(v78, v72, v75, v77, a3, a4);

              swift_beginAccess();

              v80 = sub_1000099DC(v79);
              v81 = v80;
              if (v80 >> 62)
              {
                v29 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v29 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              p_type = v186;
              if (v29)
              {
                v161 = a4;
                v82 = 0;
                p_type = v81 & 0xC000000000000001;
                v28 = (v81 & 0xFFFFFFFFFFFFFF8);
                a4 = &stru_1000B6FF0.type;
                v30 = &stru_1000B6FF0.type;
                do
                {
                  if (p_type)
                  {
                    v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    v84 = v82 + 1;
                    if (__OFADD__(v82, 1))
                    {
                      goto LABEL_39;
                    }
                  }

                  else
                  {
                    if (v82 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
LABEL_104:
                      __break(1u);
LABEL_105:
                      __break(1u);
                      goto LABEL_106;
                    }

                    v83 = *(v81 + 8 * v82 + 32);

                    v84 = v82 + 1;
                    if (__OFADD__(v82, 1))
                    {
LABEL_39:
                      __break(1u);
                      goto LABEL_40;
                    }
                  }

                  [sub_1000128AC() setFrame:{v83[4], v83[5], v83[6], v83[7]}];
                  [Strong addSubview:sub_1000128AC()];

                  ++v82;
                }

                while (v84 != v29);
                a4 = v161;
                LOBYTE(v30) = v184;
                p_type = v186;
              }

              v99 = v175;
              while (1)
              {

                swift_beginAccess();
                if (*v99 >> 62)
                {
LABEL_106:
                  v101 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v101 = *((*v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v183 = v101;
                v102 = v101 == 0;
                swift_beginAccess();
                *(v173 + 16) = v102;
                v103 = v177;
                static Logger.UI.getter();
                v104 = v182;

                v105 = Logger.logObject.getter();
                v106 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v105, v106))
                {
                  v107 = p_type;
                  v30 = a4;
                  v108 = v27;
                  v109 = swift_slowAlloc();
                  v193 = swift_slowAlloc();
                  *v109 = 136316162;
                  *(v109 + 4) = sub_100037B98(0xD000000000000053, 0x8000000100091DD0, &v193);
                  *(v109 + 12) = 2080;
                  v110 = *&v104[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
                  v111 = *&v104[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

                  v112 = sub_100037B98(v110, v111, &v193);

                  *(v109 + 14) = v112;
                  *(v109 + 22) = 2048;
                  if (*v175 >> 62)
                  {
                    v113 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v113 = *((*v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  a4 = v30;
                  v114 = v183 == 0;
                  *(v109 + 24) = v113;

                  *(v109 + 32) = 1024;
                  *(v109 + 34) = v114;

                  *(v109 + 38) = 2080;
                  *(v109 + 40) = sub_100037B98(v168, v30, &v193);
                  _os_log_impl(&_mh_execute_header, v105, v106, "%s identifier: %s animating from dock: %ld folderIsEmpty: %{BOOL}d animationID: %s", v109, 0x30u);
                  swift_arrayDestroy();

                  p_type = v107;
                  v115 = v187;
                  v169(v177, v187);
                  v27 = v108;
                  LOBYTE(v30) = v184;
                }

                else
                {

                  v115 = v187;
                  v169(v103, v187);
                }

                v28 = v178;
                static Logger.UI.getter();
                v116 = v104;

                v117 = Logger.logObject.getter();
                v88 = static os_log_type_t.debug.getter();

                v118 = os_log_type_enabled(v117, v88);
                v183 = v116;
                if (v118)
                {
                  v30 = a4;
                  v28 = v27;
                  v119 = swift_slowAlloc();
                  v194 = swift_slowAlloc();
                  *v119 = 136315906;
                  *(v119 + 4) = sub_100037B98(0xD000000000000053, 0x8000000100091DD0, &v194);
                  *(v119 + 12) = 2080;
                  v120 = *&v116[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
                  v121 = *&v116[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

                  v122 = sub_100037B98(v120, v121, &v194);

                  *(v119 + 14) = v122;
                  *(v119 + 22) = 2048;
                  v123 = v174;
                  swift_beginAccess();
                  if (*v123 >> 62)
                  {
                    v124 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v124 = *((*v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  a4 = v30;
                  p_type = v178;
                  *(v119 + 24) = v124;

                  *(v119 + 32) = 2080;
                  *(v119 + 34) = sub_100037B98(v168, v30, &v194);
                  _os_log_impl(&_mh_execute_header, v117, v88, "%s identifier: %s animating from within cv: %ld animationID: %s", v119, 0x2Au);
                  swift_arrayDestroy();

                  v169(p_type, v187);
                  LOBYTE(v30) = v184;
                }

                else
                {

                  v169(v28, v115);
                }

                v29 = v165;
                if (v30)
                {
                  v125 = *&v182[v166];
                  if (!v125)
                  {
                    goto LABEL_123;
                  }

                  [v125 setFrame:{v54, v53, v52, v170}];
                  [Strong layoutSubviews];
                }

                v126 = *&v182[v29];
                if (!v126)
                {
                  goto LABEL_120;
                }

                v127 = v126;
                v91 = sub_100009E04();

                v162 = a8;
                v128 = v91 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
                a8 = v62;
                v62 = a9;
                if (!v128)
                {
                  break;
                }

                v160 = a8;
                if ((v91 & 0xC000000000000001) != 0)
                {
                  v129 = a10;
                  v130 = a11;
                  v131 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_96:
                  v132 = v131;

                  if (v132)
                  {
                    v133 = v132;
                    [v133 frame];
                    v136 = *&v182[v29];
                    if (!v136)
                    {
                      goto LABEL_125;
                    }

                    v137 = v134;
                    v138 = v135;
                    [v136 frame];
                    [v133 setFrame:{v137, v138}];
                    [v133 layoutIfNeeded];
                  }

                  v139 = v30;
                  a8 = v160;
LABEL_101:
                  v187 = v132;
                  v140 = sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
                  v186 = &v160;
                  __chkstk_darwin(v140);
                  v141 = v183;
                  *(&v160 - 12) = v183;
                  *(&v160 - 11) = v162;
                  *(&v160 - 10) = v62;
                  *(&v160 - 9) = v129;
                  *(&v160 - 8) = v130;
                  *(&v160 - 7) = v132;
                  v142 = v139 & 1;
                  *(&v160 - 48) = v142;
                  v143 = v163;
                  *(&v160 - 5) = v163;
                  *(&v160 - 4) = v175;
                  *(&v160 - 3) = 1.0;
                  v144 = v174;
                  *(&v160 - 2) = v174;
                  v145 = swift_allocObject();
                  *(v145 + 16) = v168;
                  *(v145 + 24) = a4;
                  *(v145 + 32) = v141;
                  *(v145 + 40) = sub_100014344;
                  v146 = v172;
                  *(v145 + 48) = v27;
                  *(v145 + 56) = v146;
                  *(v145 + 64) = v171;
                  *(v145 + 72) = v142;
                  v147 = v141;

                  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();

                  __chkstk_darwin(v148);
                  *(&v160 - 4) = v175;
                  *(&v160 - 3) = v143;
                  *(&v160 - 2) = v144;
                  v149 = static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
                  __chkstk_darwin(v149);
                  *(&v160 - 6) = v147;
                  v150 = v164;
                  *(&v160 - 5) = v143;
                  *(&v160 - 4) = v150;
                  *(&v160 - 3) = v167;
                  *(&v160 - 2) = a8;
                  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
                  v151 = v180;

                  v28 = v151;

                  goto LABEL_43;
                }

                if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v129 = a10;
                  v130 = a11;
                  v131 = *(v91 + 32);
                  goto LABEL_96;
                }

                __break(1u);
LABEL_110:
                v29 = _CocoaArrayWrapper.endIndex.getter();
LABEL_46:
                if (v29)
                {
                  v27 = 0;
                  v30 = v91 & 0xC000000000000001;
                  a4 = v91 & 0xFFFFFFFFFFFFFF8;
                  while (1)
                  {
                    if (v30)
                    {
                      v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      v28 = (v27 + 1);
                      if (__OFADD__(v27, 1))
                      {
                        goto LABEL_57;
                      }
                    }

                    else
                    {
                      if (v27 >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_104;
                      }

                      v92 = *(v91 + 8 * v27 + 32);

                      v28 = (v27 + 1);
                      if (__OFADD__(v27, 1))
                      {
LABEL_57:
                        __break(1u);
                        goto LABEL_58;
                      }
                    }

                    [sub_1000128AC() setFrame:{*(v92 + 32), *(v92 + 40), *(v92 + 48), *(v92 + 56)}];
                    [Strong addSubview:sub_1000128AC()];
                    [sub_1000128AC() *(p_type + 3304)];
                    v93 = *(v92 + 224);
                    if (!v93)
                    {
                      break;
                    }

                    v94 = *(v93 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label);
                    if (!v94)
                    {
                      goto LABEL_116;
                    }

                    [v94 *(p_type + 3304)];

                    ++v27;
                    if (v28 == v29)
                    {
                      goto LABEL_58;
                    }
                  }

                  v152 = v180;

                  __break(1u);
LABEL_116:
                  v153 = v180;

                  __break(1u);
LABEL_117:
                  v154 = v180;

                  __break(1u);
LABEL_118:
                  v155 = v180;

                  __break(1u);
                  goto LABEL_119;
                }

LABEL_58:

                if (v88 >> 62)
                {
                  v95 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v95 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v27 = v176;
                if (v95)
                {
                  v29 = 0;
                  a4 = v88 & 0xC000000000000001;
                  LOBYTE(v30) = v88 & 0xF8;
                  do
                  {
                    if (a4)
                    {
                      v96 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      v28 = (v29 + 1);
                      if (__OFADD__(v29, 1))
                      {
                        goto LABEL_71;
                      }
                    }

                    else
                    {
                      if (v29 >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_105;
                      }

                      v96 = *(v88 + 8 * v29 + 32);

                      v28 = (v29 + 1);
                      if (__OFADD__(v29, 1))
                      {
LABEL_71:
                        __break(1u);
                        break;
                      }
                    }

                    [sub_1000128AC() setFrame:{*(v96 + 32), *(v96 + 40), *(v96 + 48), *(v96 + 56)}];
                    [v185 addSubview:sub_1000128AC()];
                    [sub_1000128AC() *(p_type + 3304)];
                    v97 = *(v96 + 224);
                    if (!v97)
                    {
                      goto LABEL_117;
                    }

                    v98 = *(v97 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label);
                    if (!v98)
                    {
                      goto LABEL_118;
                    }

                    [v98 *(p_type + 3304)];

                    ++v29;
                  }

                  while (v28 != v95);
                }

                v99 = v175;
                v100 = v182;
                *&v182[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = *v175;

                *&v100[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = *v174;

                a4 = v161;
                LOBYTE(v30) = v184;
                p_type = v186;
              }

              v129 = a10;
              v130 = a11;

              v132 = 0;
              v139 = v30;
              goto LABEL_101;
            }

            goto LABEL_122;
          }
        }

        else
        {
LABEL_119:

          __break(1u);
LABEL_120:
          v156 = v180;

          __break(1u);
        }

        __break(1u);
LABEL_122:
        v157 = v180;

        __break(1u);
LABEL_123:
        v158 = v180;

        __break(1u);
LABEL_124:

        __break(1u);
LABEL_125:
        v159 = v180;

        __break(1u);
        return;
      }

      v85 = v28;
      sub_10003AA04(0, v29, v85);
    }
  }

  else
  {
    v85 = v28;
    sub_10003AA04(0, v29, v85);
  }

LABEL_43:
}

uint64_t sub_100014304()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014360()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000143B0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

double sub_100014438(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_10001447C(int a1, int a2, uint64_t a3, unint64_t a4, void *a5, void *a6, void *a7, double a8, double a9, double a10, double a11)
{
  v116 = a3;
  v117 = a2;
  v119 = a1;
  v121 = type metadata accessor for Logger();
  v19 = *(v121 - 1);
  __chkstk_darwin(v121);
  v112 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v105 - v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a7;
  v25 = swift_allocObject();
  v25[2] = a6;
  v25[3] = sub_10001A434;
  v25[4] = v24;
  v26 = a7;
  v27 = a6;
  v118 = v24;

  static Logger.UI.getter();
  v28 = a5;

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  v31 = os_log_type_enabled(v29, v30);
  v115 = v19;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v120 = a4;
    v33 = v32;
    v34 = swift_slowAlloc();
    v113 = v26;
    v128[0] = v34;
    *v33 = 136316674;
    *(v33 + 4) = sub_100037B98(0xD000000000000052, 0x8000000100091EA0, v128);
    *(v33 + 12) = 2080;
    v114 = v27;
    v36 = *&v28[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v35 = *&v28[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v37 = sub_100037B98(v36, v35, v128);

    *(v33 + 14) = v37;
    *(v33 + 22) = 2080;
    aBlock = *&a8;
    v123 = *&a9;
    v124 = *&a10;
    v125 = a11;
    type metadata accessor for CGRect(0);
    v38 = String.init<A>(describing:)();
    v40 = sub_100037B98(v38, v39, v128);

    *(v33 + 24) = v40;
    *(v33 + 32) = 1024;
    *(v33 + 34) = v119 & 1;
    *(v33 + 38) = 1024;
    *(v33 + 40) = v117 & 1;
    *(v33 + 44) = 2080;
    *(v33 + 46) = sub_100037B98(v116, v120, v128);
    *(v33 + 54) = 2080;
    v41 = *&v28[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8];
    aBlock = *&v28[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    v123 = v41;

    sub_10000589C(&qword_1000BBCF0, "0T");
    v42 = String.init<A>(describing:)();
    v44 = sub_100037B98(v42, v43, v128);
    v27 = v114;

    *(v33 + 56) = v44;
    _os_log_impl(&_mh_execute_header, v29, v30, "%s identifier: %s to: %s isExpanding: %{BOOL}d retargetExistingAnimation: %{BOOL}d animationID: %s mostRecentlyRequestedAnimationIdentifier: %s", v33, 0x40u);
    swift_arrayDestroy();
    v26 = v113;

    a4 = v120;

    v45 = v115;
  }

  else
  {

    v45 = v19;
  }

  v46 = *(v45 + 8);
  v46(v23, v121);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v50 = v26;
    sub_10003AA04(0, v27, v50);

    goto LABEL_8;
  }

  v48 = Strong;
  v49 = &v28[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
  if (v28[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32])
  {
LABEL_6:
    v50 = v26;
    sub_10003AA04(0, v27, v50);

LABEL_8:

    return;
  }

  v52 = v49[2];
  v51 = v49[3];
  v54 = *v49;
  v53 = v49[1];
  v55 = v119;
  if ((v119 & 1) == 0)
  {
    v56 = *&v28[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
    if (!v56)
    {
      goto LABEL_6;
    }

    v57 = [v56 superview];
    if (!v57)
    {
      goto LABEL_6;
    }
  }

  v109 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer;
  v58 = *&v28[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
  if (!v58)
  {

    __break(1u);
    goto LABEL_49;
  }

  v59 = v58;
  sub_100062FF4();

  v60 = *&v28[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
  if (!v60)
  {
LABEL_49:

    __break(1u);
    goto LABEL_50;
  }

  [v60 layoutSubviews];
  if (v55)
  {
    v61 = 0.0;
  }

  else
  {
    v61 = 1.0;
  }

  if (v55)
  {
    v62 = 1.0;
  }

  else
  {
    v62 = 0.0;
  }

  if (v55)
  {
    v63 = 1.0;
  }

  else
  {
    v63 = 0.5;
  }

  v129[0] = 0;
  v64 = *&v28[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
  if (v64)
  {
    [v64 setAlpha:v61];
  }

  [*&v28[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] setAlpha:1.0];
  v65 = *&v28[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
  if (v65)
  {
    [v65 setAlpha:0.0];
  }

  v110 = v48;
  if (v117)
  {
    v66 = *&v28[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
    if (v66)
    {
      swift_bridgeObjectRetain_n();
      sub_10000C7C0(v66, v28, v66, v129, v116, a4);
      goto LABEL_32;
    }

LABEL_50:

    __break(1u);
    goto LABEL_51;
  }

  sub_10000B7A4(v28, v48, v55 & 1, v54, v53, v52, v51);
  v67 = v48;
  v66 = v68;
  swift_bridgeObjectRetain_n();
  sub_10000C58C(v66, v55 & 1, v67, v28, v61);
  *&v28[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = v66;

  *&v28[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = _swiftEmptyArrayStorage;

LABEL_32:
  v69 = v112;
  v107 = v66 >> 62;
  v111 = v46;
  if (v66 >> 62)
  {
    v70 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v70 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v108 = v70;
  v71 = v70 == 1;
  swift_beginAccess();
  v129[0] = v71;

  static Logger.UI.getter();
  v72 = v28;

  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.debug.getter();

  v106 = v74;
  v75 = v74;
  v76 = v73;
  v77 = os_log_type_enabled(v73, v75);
  v114 = v27;
  v113 = v26;
  v120 = a4;
  if (v77)
  {
    v78 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    aBlock = v105;
    *v78 = 136316162;
    *(v78 + 4) = sub_100037B98(0xD000000000000052, 0x8000000100091EA0, &aBlock);
    *(v78 + 12) = 2080;
    v79 = *&v72[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v80 = *&v72[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v81 = sub_100037B98(v79, v80, &aBlock);

    *(v78 + 14) = v81;
    *(v78 + 22) = 2048;
    v82 = v72;
    if (v107)
    {
      v83 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v83 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v84 = v111;
    v85 = v108 == 1;

    *(v78 + 24) = v83;

    *(v78 + 32) = 1024;
    *(v78 + 34) = v85;
    *(v78 + 38) = 2080;
    *(v78 + 40) = sub_100037B98(v116, v120, &aBlock);
    _os_log_impl(&_mh_execute_header, v76, v106, "%s identifier: %s animating from dock: %ld folderIsEmpty: %{BOOL}d animationID: %s", v78, 0x30u);
    swift_arrayDestroy();

    v84(v112, v121);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v111(v69, v121);
    v82 = v72;
  }

  v86 = v25;
  v87 = v116;
  if (v117)
  {
    goto LABEL_43;
  }

  v88 = *&v28[v109];
  if (!v88)
  {
LABEL_51:
    v104 = v113;

    __break(1u);
    return;
  }

  [v88 setAlpha:v61];
LABEL_43:
  v89 = sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
  __chkstk_darwin(v89);
  v91 = v119 & 1;
  v90 = (v119 & 1) == 0;
  *(&v105 - 4) = v82;
  *(&v105 - 3) = v62;
  *(&v105 - 2) = v66;
  *(&v105 - 8) = v91;
  v92 = &selRef__dimmingViewColor;
  if (v90)
  {
    v92 = &selRef_clearColor;
  }

  v121 = v92;
  v93 = swift_allocObject();
  v94 = v120;
  *(v93 + 16) = v87;
  *(v93 + 24) = v94;
  *(v93 + 32) = v82;
  *(v93 + 40) = sub_10001A42C;
  *(v93 + 48) = v86;
  *(v93 + 56) = v91;
  *(v93 + 64) = v66;
  v95 = v82;

  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();

  __chkstk_darwin(v96);
  *(&v105 - 6) = v95;
  *(&v105 - 5) = v62;
  *(&v105 - 4) = v63;
  *(&v105 - 3) = v129;
  *(&v105 - 2) = v61;
  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
  v97 = [objc_opt_self() *v121];
  v98 = objc_opt_self();
  v99 = swift_allocObject();
  *(v99 + 16) = v95;
  *(v99 + 24) = v97;
  v126 = sub_1000151E0;
  v127 = v99;
  aBlock = _NSConcreteStackBlock;
  v123 = 1107296256;
  v124 = sub_10000D508;
  v125 = COERCE_DOUBLE(&unk_1000AE3B0);
  v100 = _Block_copy(&aBlock);
  v101 = v95;
  v102 = v97;

  [v98 animateWithDuration:65542 delay:v100 options:0 animations:0.25 completion:0.0];

  _Block_release(v100);
  v103 = v113;
}

void sub_1000151E4(unsigned int a1, int a2, uint64_t a3, unint64_t a4, void *a5, void *a6, void *a7, unint64_t p_type, double a9, double a10, double a11, double a12)
{
  v177 = a3;
  v174 = a2;
  v176 = a1;
  v179 = type metadata accessor for Logger();
  v178 = *(v179 - 1);
  __chkstk_darwin(v179);
  v168 = &v153 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v167 = &v153 - v23;
  __chkstk_darwin(v24);
  v26 = &v153 - v25;
  v27 = swift_allocObject();
  v175 = a7;
  *(v27 + 16) = a7;
  *(v27 + 24) = p_type;
  v28 = swift_allocObject();
  v28[2] = a6;
  v28[3] = sub_10001A120;
  v28[4] = v27;
  swift_bridgeObjectRetain_n();
  v29 = a6;

  static Logger.UI.getter();
  v30 = a5;

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  v33 = os_log_type_enabled(v31, v32);
  v169 = a4;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v180 = v30;
    v35 = v34;
    Strong = swift_slowAlloc();
    v188 = Strong;
    *v35 = 136316674;
    *(v35 + 4) = sub_100037B98(0xD000000000000053, 0x8000000100091DD0, &v188);
    v172 = v27;
    *(v35 + 12) = 2080;
    v170 = v29;
    v171 = p_type;
    v173 = v28;
    v37 = *&v180[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v36 = *&v180[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v38 = sub_100037B98(v37, v36, &v188);

    *(v35 + 14) = v38;
    *(v35 + 22) = 2080;
    v182 = a9;
    v183 = a10;
    v184 = a11;
    v185 = a12;
    type metadata accessor for CGRect(0);
    v39 = String.init<A>(describing:)();
    v41 = sub_100037B98(v39, v40, &v188);

    *(v35 + 24) = v41;
    *(v35 + 32) = 1024;
    *(v35 + 34) = v176 & 1;
    *(v35 + 38) = 1024;
    *(v35 + 40) = v174 & 1;
    *(v35 + 44) = 2080;
    *(v35 + 46) = sub_100037B98(v177, a4, &v188);
    *(v35 + 54) = 2080;
    v27 = v172;
    v42 = *&v180[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8];
    v182 = *&v180[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    v183 = v42;

    sub_10000589C(&qword_1000BBCF0, "0T");
    v43 = String.init<A>(describing:)();
    v45 = sub_100037B98(v43, v44, &v188);
    v28 = v173;

    *(v35 + 56) = v45;
    p_type = v171;
    v29 = v170;
    _os_log_impl(&_mh_execute_header, v31, v32, "%s identifier: %s to: %s isExpanding: %{BOOL}d retargetExistingAnimation: %{BOOL}d animationID: %s mostRecentlyRequestedAnimationIdentifier: %s", v35, 0x40u);
    swift_arrayDestroy();

    v30 = v180;
  }

  v46 = *(v178 + 8);
  v46(v26, v179);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v47 = &v30[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
    if ((v30[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32] & 1) != 0 || (v173 = v28, (v48 = *&v30[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer]) == 0))
    {
LABEL_41:

      sub_10003BDA8(0, v29, v175, p_type);
    }

    else
    {
      v172 = v27;
      v49 = v29;
      v158 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer;
      v180 = v30;
      v50 = v47[2];
      v161 = v47[3];
      v52 = *v47;
      v51 = v47[1];
      v53 = v48;
      v54 = v53;
      v55 = v177;
      v56 = v176;
      v57 = v174;
      if (v176)
      {
        goto LABEL_11;
      }

      v58 = [v53 superview];
      if (v58)
      {

        v48 = *&v180[v158];
        if (!v48)
        {
          goto LABEL_125;
        }

LABEL_11:
        v159 = v46;
        v171 = p_type;
        v59 = v48;
        sub_100062FF4();

        v60 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
        v61 = *&v180[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
        if (v61)
        {
          [v61 layoutSubviews];
          v62 = 0.5;
          if (v56)
          {
            v62 = 1.0;
          }

          v156 = v62;
          v63 = 0.0;
          if (v56)
          {
            v64 = 0.0;
          }

          else
          {
            v64 = 1.0;
          }

          if ((v56 & 1) == 0)
          {
            a12 = v161;
            a11 = v50;
            a10 = v51;
            a9 = v52;
          }

          p_type = &stru_1000B6FF0.type;
          if (v56)
          {
            v63 = 1.0;
          }

          v155 = v63;
          if ((v57 & 1) == 0)
          {
            [v54 setAlpha:v64];
          }

          v65 = swift_allocObject();
          v164 = v65;
          *(v65 + 16) = 0;
          v160 = v65 + 16;
          v66 = swift_allocObject();
          v163 = v66;
          *(v66 + 16) = _swiftEmptyArrayStorage;
          v166 = (v66 + 16);
          v67 = swift_allocObject();
          *(v67 + 16) = _swiftEmptyArrayStorage;
          v165 = (v67 + 16);
          v68 = *&v180[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
          if (v68)
          {
            [v68 setAlpha:v64];
          }

          v69 = v180;
          [*&v180[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] setAlpha:1.0];
          v70 = *&v69[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
          if (v70)
          {
            [v70 setAlpha:0.0];
          }

          v175 = v54;
          v162 = v67;
          v170 = v49;
          v157 = v60;
          if ((v57 & 1) == 0)
          {
            v84 = sub_100008104(v180, Strong, v56 & 1, v55, v169, v54, v52, v51, v50, v161);
            v86 = v85;
            *v166 = v84;

            *v165 = v86;

            v88 = sub_1000099DC(v87);
            v89 = v88;
            if (v88 >> 62)
            {
              goto LABEL_110;
            }

            v71 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_46;
          }

          v71 = v180;
          v72 = *&v180[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
          if (v72)
          {
            *v166 = v72;

            v73 = *(v71 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts);
            p_type = v169;
            v74 = v164;
            if (v73)
            {
              *v165 = v73;

              v75 = v163;

              sub_100009470(v76, v71, v75, v74, v55, p_type);

              sub_100009470(v77, v71, v75, v74, v55, p_type);

              swift_beginAccess();

              v79 = sub_1000099DC(v78);
              v80 = v79;
              v49 = v172;
              if (v79 >> 62)
              {
                v81 = _CocoaArrayWrapper.endIndex.getter();
                if (!v81)
                {
                  goto LABEL_73;
                }
              }

              else
              {
                v81 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v81)
                {
                  goto LABEL_73;
                }
              }

              v29 = v49;
              v71 = 0;
              p_type = v80 & 0xFFFFFFFFFFFFFF8;
              v49 = &stru_1000B6FF0.type;
              do
              {
                if ((v80 & 0xC000000000000001) != 0)
                {
                  v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  v83 = v71 + 1;
                  if (__OFADD__(v71, 1))
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                  if (v71 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
LABEL_104:
                    __break(1u);
LABEL_105:
                    __break(1u);
                    goto LABEL_106;
                  }

                  v82 = *(v80 + 8 * v71 + 32);

                  v83 = v71 + 1;
                  if (__OFADD__(v71, 1))
                  {
LABEL_40:
                    __break(1u);
                    goto LABEL_41;
                  }
                }

                [sub_1000128AC() setFrame:{v82[4], v82[5], v82[6], v82[7]}];
                [Strong addSubview:sub_1000128AC()];

                ++v71;
              }

              while (v83 != v81);
              v49 = v29;
              p_type = v169;
              v71 = v180;
LABEL_73:
              v100 = v166;
              while (1)
              {

                swift_beginAccess();
                if (*v100 >> 62)
                {
LABEL_106:
                  v101 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v101 = *((*v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v102 = v167;
                swift_beginAccess();
                *(v164 + 16) = v101 == 0;
                static Logger.UI.getter();
                v103 = v71;

                v104 = Logger.logObject.getter();
                v105 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v104, v105))
                {
                  v106 = p_type;
                  v107 = swift_slowAlloc();
                  v186 = swift_slowAlloc();
                  *v107 = 136316162;
                  *(v107 + 4) = sub_100037B98(0xD000000000000053, 0x8000000100091DD0, &v186);
                  *(v107 + 12) = 2080;
                  v108 = *&v103[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
                  v109 = *&v103[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

                  v110 = sub_100037B98(v108, v109, &v186);

                  *(v107 + 14) = v110;
                  *(v107 + 22) = 2048;
                  if (*v166 >> 62)
                  {
                    v111 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v111 = *((*v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  p_type = v106;
                  *(v107 + 24) = v111;

                  *(v107 + 32) = 1024;
                  *(v107 + 34) = v101 == 0;

                  *(v107 + 38) = 2080;
                  *(v107 + 40) = sub_100037B98(v177, v106, &v186);
                  _os_log_impl(&_mh_execute_header, v104, v105, "%s identifier: %s animating from dock: %ld folderIsEmpty: %{BOOL}d animationID: %s", v107, 0x30u);
                  swift_arrayDestroy();

                  v112 = v167;
                }

                else
                {

                  v112 = v102;
                }

                v113 = v159;
                v159(v112, v179);
                v114 = v168;
                static Logger.UI.getter();
                v115 = v103;

                v116 = Logger.logObject.getter();
                v117 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v116, v117))
                {
                  v118 = p_type;
                  v119 = swift_slowAlloc();
                  v187 = swift_slowAlloc();
                  *v119 = 136315906;
                  *(v119 + 4) = sub_100037B98(0xD000000000000053, 0x8000000100091DD0, &v187);
                  *(v119 + 12) = 2080;
                  v120 = *&v115[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
                  v121 = *&v115[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

                  v122 = sub_100037B98(v120, v121, &v187);

                  *(v119 + 14) = v122;
                  *(v119 + 22) = 2048;
                  v123 = v165;
                  swift_beginAccess();
                  if (*v123 >> 62)
                  {
                    v124 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v124 = *((*v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  p_type = v118;
                  v125 = v168;
                  *(v119 + 24) = v124;

                  *(v119 + 32) = 2080;
                  *(v119 + 34) = sub_100037B98(v177, v118, &v187);
                  _os_log_impl(&_mh_execute_header, v116, v117, "%s identifier: %s animating from within cv: %ld animationID: %s", v119, 0x2Au);
                  swift_arrayDestroy();

                  v159(v125, v179);
                }

                else
                {

                  v113(v114, v179);
                }

                v89 = v176;
                v86 = v157;
                v126 = v180;
                if (v176)
                {
                  v127 = *&v180[v158];
                  if (!v127)
                  {
                    goto LABEL_124;
                  }

                  [v127 setFrame:{v52, v51, v50, v161}];
                  [Strong layoutSubviews];
                }

                v128 = *&v126[v86];
                if (!v128)
                {
                  goto LABEL_121;
                }

                v129 = v128;
                v130 = sub_100009E04();

                v154 = a9;
                v131 = v130 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
                a9 = v64;
                v64 = a10;
                if (!v131)
                {
                  break;
                }

                v153 = a9;
                if ((v130 & 0xC000000000000001) != 0)
                {
                  v132 = a11;
                  v133 = a12;
                  v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_96:
                  v135 = v134;

                  if (v135)
                  {
                    v136 = v135;
                    [v136 frame];
                    v139 = *&v126[v86];
                    if (!v139)
                    {
                      goto LABEL_126;
                    }

                    v140 = v137;
                    v141 = v138;
                    [v139 frame];
                    [v136 setFrame:{v140, v141}];
                    [v136 layoutIfNeeded];
                  }

                  v142 = v89;
                  a9 = v153;
LABEL_101:
                  v180 = v135;
                  v143 = sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
                  v179 = &v153;
                  __chkstk_darwin(v143);
                  *(&v153 - 12) = v115;
                  *(&v153 - 11) = v154;
                  *(&v153 - 10) = v64;
                  *(&v153 - 9) = v132;
                  *(&v153 - 8) = v133;
                  *(&v153 - 7) = v135;
                  *(&v153 - 48) = v142 & 1;
                  v144 = v155;
                  *(&v153 - 5) = v155;
                  v145 = v166;
                  *(&v153 - 4) = v166;
                  *(&v153 - 3) = 1.0;
                  v146 = v165;
                  *(&v153 - 2) = v165;
                  v147 = swift_allocObject();
                  *(v147 + 16) = v177;
                  *(v147 + 24) = p_type;
                  *(v147 + 32) = v115;
                  *(v147 + 40) = sub_10001A42C;
                  v148 = v163;
                  *(v147 + 48) = v173;
                  *(v147 + 56) = v148;
                  *(v147 + 64) = v162;
                  *(v147 + 72) = v142 & 1;
                  v149 = v115;

                  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();

                  __chkstk_darwin(v150);
                  *(&v153 - 4) = v145;
                  *(&v153 - 3) = v144;
                  *(&v153 - 2) = v146;
                  v151 = static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
                  __chkstk_darwin(v151);
                  *(&v153 - 6) = v149;
                  v152 = v156;
                  *(&v153 - 5) = v144;
                  *(&v153 - 4) = v152;
                  *(&v153 - 3) = v160;
                  *(&v153 - 2) = a9;
                  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();

                  goto LABEL_43;
                }

                if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v132 = a11;
                  v133 = a12;
                  v134 = *(v130 + 32);
                  goto LABEL_96;
                }

                __break(1u);
LABEL_110:
                v71 = _CocoaArrayWrapper.endIndex.getter();
LABEL_46:
                if (v71)
                {
                  v90 = 0;
                  v49 = (v89 & 0xC000000000000001);
                  while (1)
                  {
                    if (v49)
                    {
                      v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      v92 = v90 + 1;
                      if (__OFADD__(v90, 1))
                      {
                        goto LABEL_57;
                      }
                    }

                    else
                    {
                      if (v90 >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_104;
                      }

                      v91 = *(v89 + 8 * v90 + 32);

                      v92 = v90 + 1;
                      if (__OFADD__(v90, 1))
                      {
LABEL_57:
                        __break(1u);
                        goto LABEL_58;
                      }
                    }

                    [sub_1000128AC() setFrame:{*(v91 + 32), *(v91 + 40), *(v91 + 48), *(v91 + 56)}];
                    [Strong addSubview:sub_1000128AC()];
                    [sub_1000128AC() *(p_type + 3304)];
                    v93 = *(v91 + 224);
                    if (!v93)
                    {
                      break;
                    }

                    v94 = *(v93 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label);
                    if (!v94)
                    {
                      goto LABEL_117;
                    }

                    [v94 *(p_type + 3304)];

                    ++v90;
                    if (v92 == v71)
                    {
                      goto LABEL_58;
                    }
                  }

                  swift_bridgeObjectRelease_n();

                  __break(1u);
LABEL_117:
                  swift_bridgeObjectRelease_n();

                  __break(1u);
LABEL_118:
                  swift_bridgeObjectRelease_n();

                  __break(1u);
LABEL_119:
                  swift_bridgeObjectRelease_n();

                  __break(1u);
                  goto LABEL_120;
                }

LABEL_58:

                if (v86 >> 62)
                {
                  v95 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v95 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                if (v95)
                {
                  v71 = 0;
                  v49 = (v86 & 0xFFFFFFFFFFFFFF8);
                  do
                  {
                    if ((v86 & 0xC000000000000001) != 0)
                    {
                      v96 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      v97 = v71 + 1;
                      if (__OFADD__(v71, 1))
                      {
                        goto LABEL_71;
                      }
                    }

                    else
                    {
                      if (v71 >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_105;
                      }

                      v96 = *(v86 + 8 * v71 + 32);

                      v97 = v71 + 1;
                      if (__OFADD__(v71, 1))
                      {
LABEL_71:
                        __break(1u);
                        break;
                      }
                    }

                    [sub_1000128AC() setFrame:{*(v96 + 32), *(v96 + 40), *(v96 + 48), *(v96 + 56)}];
                    [v175 addSubview:sub_1000128AC()];
                    [sub_1000128AC() *(p_type + 3304)];
                    v98 = *(v96 + 224);
                    if (!v98)
                    {
                      goto LABEL_118;
                    }

                    v99 = *(v98 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label);
                    if (!v99)
                    {
                      goto LABEL_119;
                    }

                    [v99 *(p_type + 3304)];

                    ++v71;
                  }

                  while (v97 != v95);
                }

                v100 = v166;
                v71 = v180;
                *&v180[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = *v166;

                *(v71 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts) = *v165;

                v49 = v172;
                p_type = v169;
              }

              v132 = a11;
              v133 = a12;

              v135 = 0;
              v142 = v89;
              goto LABEL_101;
            }

            goto LABEL_123;
          }
        }

        else
        {
LABEL_120:
          swift_bridgeObjectRelease_n();

          __break(1u);
LABEL_121:
          swift_bridgeObjectRelease_n();

          __break(1u);
        }

        swift_bridgeObjectRelease_n();

        __break(1u);
LABEL_123:
        swift_bridgeObjectRelease_n();

        __break(1u);
LABEL_124:
        swift_bridgeObjectRelease_n();

        __break(1u);
LABEL_125:
        swift_bridgeObjectRelease_n();

        __break(1u);
LABEL_126:
        swift_bridgeObjectRelease_n();

        __break(1u);
        return;
      }

      sub_10003BDA8(0, v49, v175, p_type);
    }
  }

  else
  {

    sub_10003BDA8(0, v29, v175, p_type);
  }

  swift_bridgeObjectRelease_n();
LABEL_43:
  swift_bridgeObjectRelease_n();
}

void sub_100016AD0(unsigned int a1, int a2, uint64_t *a3, unint64_t a4, void *a5, void *a6, char *a7, char *a8, double a9, double a10, double a11, double a12)
{
  v195 = a3;
  LODWORD(v193) = a2;
  v198 = a1;
  v200 = type metadata accessor for Logger();
  v199 = *(v200 - 1);
  __chkstk_darwin(v200);
  v187 = &v171 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v188 = &v171 - v23;
  __chkstk_darwin(v24);
  v26 = &v171 - v25;
  v27 = swift_allocObject();
  *(v27 + 16) = a7;
  *(v27 + 24) = a8;
  v28 = swift_allocObject();
  v28[2] = a6;
  v28[3] = sub_100018530;
  v196 = v28;
  v28[4] = v27;
  v29 = a7;
  v30 = a8;
  v31 = v29;
  v32 = v30;
  v33 = v31;
  v34 = v32;
  v35 = v33;
  v36 = v34;
  v37 = a6;

  static Logger.UI.getter();
  v38 = a5;

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();

  v41 = os_log_type_enabled(v39, v40);
  v197 = v35;
  v189 = a4;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v190 = v36;
    v43 = v42;
    v44 = swift_slowAlloc();
    v191 = v37;
    Strong = v44;
    v208 = v44;
    *v43 = 136316674;
    *(v43 + 4) = sub_100037B98(0xD000000000000053, 0x8000000100091DD0, &v208);
    *(v43 + 12) = 2080;
    v192 = v27;
    v46 = *&v38[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v45 = *&v38[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v47 = sub_100037B98(v46, v45, &v208);

    *(v43 + 14) = v47;
    *(v43 + 22) = 2080;
    v202 = a9;
    v203 = a10;
    v204 = a11;
    v205 = a12;
    type metadata accessor for CGRect(0);
    v48 = String.init<A>(describing:)();
    v50 = sub_100037B98(v48, v49, &v208);

    *(v43 + 24) = v50;
    *(v43 + 32) = 1024;
    *(v43 + 34) = v198 & 1;
    *(v43 + 38) = 1024;
    *(v43 + 40) = v193 & 1;
    *(v43 + 44) = 2080;
    *(v43 + 46) = sub_100037B98(v195, a4, &v208);
    *(v43 + 54) = 2080;
    v51 = *&v38[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8];
    v202 = *&v38[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    v203 = v51;

    sub_10000589C(&qword_1000BBCF0, "0T");
    v52 = String.init<A>(describing:)();
    v54 = sub_100037B98(v52, v53, &v208);
    v27 = v192;

    *(v43 + 56) = v54;
    _os_log_impl(&_mh_execute_header, v39, v40, "%s identifier: %s to: %s isExpanding: %{BOOL}d retargetExistingAnimation: %{BOOL}d animationID: %s mostRecentlyRequestedAnimationIdentifier: %s", v43, 0x40u);
    swift_arrayDestroy();
    v37 = v191;

    v36 = v190;
  }

  v55 = v199[1];
  v55(v26, v200);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v56 = &v38[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
    if ((v38[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32] & 1) != 0 || (v57 = *&v38[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer]) == 0)
    {
LABEL_39:
      v88 = v197;
      v89 = v197;
      v90 = v36;
      sub_10003C0DC(0, v37, v89, v90);
    }

    else
    {
      v177 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer;
      v58 = v56[2];
      v180 = v56[3];
      v60 = *v56;
      v59 = v56[1];
      v61 = v57;
      v62 = v61;
      v63 = v195;
      v64 = v193;
      if (v198)
      {
        goto LABEL_9;
      }

      v65 = [v61 superview];
      if (v65)
      {

        v57 = *&v38[v177];
        if (!v57)
        {
          goto LABEL_124;
        }

LABEL_9:
        v192 = v27;
        v66 = v57;
        sub_100062FF4();

        v67 = *&v38[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
        if (v67)
        {
          v179 = v55;
          v176 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
          v183 = v38;
          [v67 layoutSubviews];
          v68 = 0.5;
          if (v198)
          {
            v68 = 1.0;
          }

          v175 = v68;
          v69 = 0.0;
          if (v198)
          {
            v70 = 0.0;
          }

          else
          {
            v70 = 1.0;
          }

          if ((v198 & 1) == 0)
          {
            a12 = v180;
            a11 = v58;
            a10 = v59;
            a9 = v60;
          }

          p_type = &stru_1000B6FF0.type;
          if (v198)
          {
            v69 = 1.0;
          }

          v174 = v69;
          if ((v64 & 1) == 0)
          {
            [v62 setAlpha:v70];
          }

          v72 = swift_allocObject();
          v184 = v72;
          *(v72 + 16) = 0;
          v178 = v72 + 16;
          v73 = swift_allocObject();
          *(v73 + 16) = _swiftEmptyArrayStorage;
          v186 = (v73 + 16);
          v74 = swift_allocObject();
          v182 = v74;
          *(v74 + 16) = _swiftEmptyArrayStorage;
          v185 = (v74 + 16);
          v75 = v183;
          v76 = *&v183[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
          if (v76)
          {
            [v76 setAlpha:v70];
          }

          [*&v75[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] setAlpha:1.0];
          v77 = *&v75[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
          if (v77)
          {
            [v77 setAlpha:0.0];
          }

          v181 = v73;
          v191 = v37;
          v190 = v36;
          v194 = v62;
          if ((v64 & 1) == 0)
          {
            v91 = sub_100008104(v75, Strong, v198 & 1, v63, v189, v62, v60, v59, v58, v180);
            v93 = v92;
            *v186 = v91;

            *v185 = v93;

            v95 = sub_1000099DC(v94);
            v37 = v95;
            if (v95 >> 62)
            {
              goto LABEL_109;
            }

            v73 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_45;
          }

          v78 = *&v75[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
          if (v78)
          {
            *v186 = v78;

            v79 = *&v75[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts];
            p_type = v189;
            if (v79)
            {
              *v185 = v79;

              v81 = v184;
              sub_100009470(v80, v75, v73, v184, v63, p_type);

              sub_100009470(v82, v75, v73, v81, v63, p_type);

              swift_beginAccess();

              v84 = sub_1000099DC(v83);
              v85 = v84;
              if (v84 >> 62)
              {
                v37 = _CocoaArrayWrapper.endIndex.getter();
                if (!v37)
                {
                  goto LABEL_72;
                }
              }

              else
              {
                v37 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v37)
                {
                  goto LABEL_72;
                }
              }

              v73 = 0;
              v75 = (v85 & 0xC000000000000001);
              v64 = v85 & 0xFFFFFFFFFFFFFF8;
              p_type = &stru_1000B6FF0.type;
              v36 = &stru_1000B6FF0.type;
              do
              {
                if (v75)
                {
                  v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  v87 = v73 + 1;
                  if (__OFADD__(v73, 1))
                  {
                    goto LABEL_38;
                  }
                }

                else
                {
                  if (v73 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
LABEL_103:
                    __break(1u);
LABEL_104:
                    __break(1u);
                    goto LABEL_105;
                  }

                  v86 = *(v85 + 8 * v73 + 32);

                  v87 = v73 + 1;
                  if (__OFADD__(v73, 1))
                  {
LABEL_38:
                    __break(1u);
                    goto LABEL_39;
                  }
                }

                [sub_1000128AC() setFrame:{v86[4], v86[5], v86[6], v86[7]}];
                [Strong addSubview:sub_1000128AC()];

                ++v73;
              }

              while (v87 != v37);
              p_type = v189;
              v63 = v195;
              v75 = v183;
              v73 = v181;
LABEL_72:
              v103 = v186;
              while (1)
              {

                swift_beginAccess();
                v64 = v184;
                if (*v103 >> 62)
                {
LABEL_105:
                  v104 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v104 = *((*v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                swift_beginAccess();
                *(v64 + 16) = v104 == 0;
                v105 = v188;
                static Logger.UI.getter();
                v106 = v75;

                v107 = Logger.logObject.getter();
                v37 = v73;
                v108 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v107, v108))
                {
                  v109 = v104;
                  v110 = p_type;
                  v111 = swift_slowAlloc();
                  v37 = swift_slowAlloc();
                  v206 = v37;
                  *v111 = 136316162;
                  *(v111 + 4) = sub_100037B98(0xD000000000000053, 0x8000000100091DD0, &v206);
                  *(v111 + 12) = 2080;
                  v112 = *&v106[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
                  v113 = *&v106[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

                  v114 = sub_100037B98(v112, v113, &v206);

                  *(v111 + 14) = v114;
                  *(v111 + 22) = 2048;
                  if (*v186 >> 62)
                  {
                    v115 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v115 = *((*v186 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  p_type = v110;
                  v64 = v187;
                  *(v111 + 24) = v115;

                  *(v111 + 32) = 1024;
                  *(v111 + 34) = v109 == 0;

                  *(v111 + 38) = 2080;
                  v63 = v195;
                  *(v111 + 40) = sub_100037B98(v195, v110, &v206);
                  _os_log_impl(&_mh_execute_header, v107, v108, "%s identifier: %s animating from dock: %ld folderIsEmpty: %{BOOL}d animationID: %s", v111, 0x30u);
                  swift_arrayDestroy();

                  v179(v188, v200);
                  v75 = v183;
                }

                else
                {

                  v179(v105, v200);
                  v64 = v187;
                }

                static Logger.UI.getter();
                v116 = v106;

                v117 = Logger.logObject.getter();
                v118 = static os_log_type_t.debug.getter();

                v119 = os_log_type_enabled(v117, v118);
                v193 = v116;
                if (v119)
                {
                  v120 = p_type;
                  v37 = swift_slowAlloc();
                  v207 = swift_slowAlloc();
                  *v37 = 136315906;
                  *(v37 + 4) = sub_100037B98(0xD000000000000053, 0x8000000100091DD0, &v207);
                  *(v37 + 12) = 2080;
                  v121 = *&v116[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
                  v122 = *&v116[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

                  v123 = sub_100037B98(v121, v122, &v207);

                  *(v37 + 14) = v123;
                  *(v37 + 22) = 2048;
                  v64 = v185;
                  swift_beginAccess();
                  if (*v64 >> 62)
                  {
                    v124 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v124 = *((*v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  p_type = v120;
                  v36 = v198;
                  *(v37 + 24) = v124;

                  *(v37 + 32) = 2080;
                  *(v37 + 34) = sub_100037B98(v63, v120, &v207);
                  _os_log_impl(&_mh_execute_header, v117, v118, "%s identifier: %s animating from within cv: %ld animationID: %s", v37, 0x2Au);
                  swift_arrayDestroy();

                  v179(v187, v200);
                  v75 = v183;
                }

                else
                {

                  v179(v64, v200);
                  v36 = v198;
                }

                v93 = v176;
                if (v36)
                {
                  v125 = *&v75[v177];
                  if (!v125)
                  {
                    goto LABEL_123;
                  }

                  [v125 setFrame:{v60, v59, v58, v180}];
                  [Strong layoutSubviews];
                }

                v126 = *&v75[v93];
                if (!v126)
                {
                  goto LABEL_120;
                }

                v127 = v126;
                v128 = sub_100009E04();

                v173 = a9;
                v129 = v128 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
                a9 = v70;
                v37 = &off_10008F000;
                v70 = a10;
                if (!v129)
                {
                  break;
                }

                v172 = a9;
                if ((v128 & 0xC000000000000001) != 0)
                {
                  v130 = a11;
                  v131 = a12;
                  v132 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_95:
                  v133 = v132;

                  if (v133)
                  {
                    v134 = v133;
                    [v134 frame];
                    v137 = *&v75[v93];
                    if (!v137)
                    {
                      goto LABEL_125;
                    }

                    v138 = v135;
                    v139 = v136;
                    [v137 frame];
                    [v134 setFrame:{v138, v139}];
                    [v134 layoutIfNeeded];
                  }

                  a9 = v172;
LABEL_100:
                  v140 = v193;
                  v200 = v133;
                  v141 = sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
                  v199 = &v171;
                  __chkstk_darwin(v141);
                  *(&v171 - 12) = v140;
                  *(&v171 - 11) = v173;
                  *(&v171 - 10) = v70;
                  *(&v171 - 9) = v130;
                  *(&v171 - 8) = v131;
                  *(&v171 - 7) = v133;
                  v142 = v36 & 1;
                  *(&v171 - 48) = v142;
                  v143 = v174;
                  *(&v171 - 5) = v174;
                  *(&v171 - 4) = v186;
                  *(&v171 - 3) = 0x3FF0000000000000;
                  v144 = v185;
                  *(&v171 - 2) = v185;
                  v145 = swift_allocObject();
                  *(v145 + 16) = v63;
                  *(v145 + 24) = p_type;
                  *(v145 + 32) = v140;
                  *(v145 + 40) = sub_10001A42C;
                  v146 = v181;
                  *(v145 + 48) = v196;
                  *(v145 + 56) = v146;
                  *(v145 + 64) = v182;
                  *(v145 + 72) = v142;
                  v147 = v140;

                  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();

                  __chkstk_darwin(v148);
                  *(&v171 - 4) = v186;
                  *(&v171 - 3) = v143;
                  *(&v171 - 2) = v144;
                  v149 = static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
                  __chkstk_darwin(v149);
                  *(&v171 - 6) = v147;
                  v150 = v175;
                  *(&v171 - 5) = v143;
                  *(&v171 - 4) = v150;
                  *(&v171 - 3) = v178;
                  *(&v171 - 2) = a9;
                  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
                  v151 = v197;

                  v88 = v151;

                  v36 = v190;
                  goto LABEL_42;
                }

                if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v130 = a11;
                  v131 = a12;
                  v132 = *(v128 + 32);
                  goto LABEL_95;
                }

                __break(1u);
LABEL_109:
                v73 = _CocoaArrayWrapper.endIndex.getter();
LABEL_45:
                v63 = &OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label;
                if (v73)
                {
                  v96 = 0;
                  v75 = (v37 & 0xC000000000000001);
                  v36 = v37 & 0xFFFFFFFFFFFFFF8;
                  while (1)
                  {
                    if (v75)
                    {
                      v97 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      v64 = v96 + 1;
                      if (__OFADD__(v96, 1))
                      {
                        goto LABEL_56;
                      }
                    }

                    else
                    {
                      if (v96 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_103;
                      }

                      v97 = *(v37 + 8 * v96 + 32);

                      v64 = v96 + 1;
                      if (__OFADD__(v96, 1))
                      {
LABEL_56:
                        __break(1u);
                        goto LABEL_57;
                      }
                    }

                    [sub_1000128AC() setFrame:{*(v97 + 32), *(v97 + 40), *(v97 + 48), *(v97 + 56)}];
                    [Strong addSubview:sub_1000128AC()];
                    [sub_1000128AC() p_type[413]];
                    v98 = *(v97 + 224);
                    if (!v98)
                    {
                      break;
                    }

                    v99 = *(v98 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label);
                    if (!v99)
                    {
                      goto LABEL_116;
                    }

                    [v99 p_type[413]];

                    ++v96;
                    if (v64 == v73)
                    {
                      goto LABEL_57;
                    }
                  }

                  v153 = v190;

                  v154 = v197;

                  __break(1u);
LABEL_116:
                  v155 = v190;

                  v156 = v197;

                  __break(1u);
LABEL_117:
                  v157 = v190;

                  v158 = v197;

                  __break(1u);
LABEL_118:
                  v159 = v190;

                  v160 = v197;

                  __break(1u);
                  goto LABEL_119;
                }

LABEL_57:

                if (v93 >> 62)
                {
                  v37 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v37 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                if (v37)
                {
                  v73 = 0;
                  v75 = (v93 & 0xC000000000000001);
                  v36 = v93 & 0xFFFFFFFFFFFFFF8;
                  do
                  {
                    if (v75)
                    {
                      v100 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      v64 = v73 + 1;
                      if (__OFADD__(v73, 1))
                      {
                        goto LABEL_70;
                      }
                    }

                    else
                    {
                      if (v73 >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_104;
                      }

                      v100 = *(v93 + 8 * v73 + 32);

                      v64 = v73 + 1;
                      if (__OFADD__(v73, 1))
                      {
LABEL_70:
                        __break(1u);
                        break;
                      }
                    }

                    [sub_1000128AC() setFrame:{*(v100 + 32), *(v100 + 40), *(v100 + 48), *(v100 + 56)}];
                    [v194 addSubview:sub_1000128AC()];
                    [sub_1000128AC() p_type[413]];
                    v101 = *(v100 + 224);
                    if (!v101)
                    {
                      goto LABEL_117;
                    }

                    v102 = *(v101 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label);
                    if (!v102)
                    {
                      goto LABEL_118;
                    }

                    [v102 p_type[413]];

                    ++v73;
                  }

                  while (v64 != v37);
                }

                v103 = v186;
                v75 = v183;
                *&v183[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = *v186;

                *&v75[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = *v185;

                p_type = v189;
                v63 = v195;
                v73 = v181;
              }

              v130 = a11;
              v131 = a12;

              v133 = 0;
              goto LABEL_100;
            }

            goto LABEL_122;
          }
        }

        else
        {
LABEL_119:

          v161 = v197;

          __break(1u);
LABEL_120:
          v162 = v190;

          v163 = v197;

          __break(1u);
        }

        v164 = v197;

        __break(1u);
LABEL_122:

        v165 = v197;

        __break(1u);
LABEL_123:
        v166 = v190;

        v167 = v197;

        __break(1u);
LABEL_124:

        v168 = v197;

        __break(1u);
LABEL_125:
        v169 = v190;

        v170 = v197;

        __break(1u);
        return;
      }

      v88 = v197;
      v152 = v62;
      v89 = v197;
      v90 = v36;
      sub_10003C0DC(0, v37, v89, v90);
    }
  }

  else
  {
    v88 = v197;
    v89 = v197;
    v90 = v36;
    sub_10003C0DC(0, v37, v89, v90);
  }

LABEL_42:
}

void sub_10001853C(int a1, int a2, uint64_t a3, unint64_t a4, void *a5, void *a6, char *a7, unint64_t a8, double a9, double a10, double a11, double a12)
{
  v112 = a3;
  v113 = a2;
  v114 = a1;
  v115 = type metadata accessor for Logger();
  v21 = *(v115 - 8);
  __chkstk_darwin(v115);
  v106 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v98 - v24;
  v26 = swift_allocObject();
  v111 = a7;
  *(v26 + 16) = a7;
  *(v26 + 24) = a8;
  v27 = swift_allocObject();
  v27[2] = a6;
  v27[3] = sub_10001A424;
  v27[4] = v26;
  swift_bridgeObjectRetain_n();
  v28 = a6;

  static Logger.UI.getter();
  v29 = a5;

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  v32 = os_log_type_enabled(v30, v31);
  v110 = v21;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v109 = v28;
    v108 = v26;
    v34 = v33;
    v105 = swift_slowAlloc();
    v122[0] = v105;
    *v34 = 136316674;
    *(v34 + 4) = sub_100037B98(0xD000000000000052, 0x8000000100091EA0, v122);
    v107 = v27;
    *(v34 + 12) = 2080;
    v35 = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v36 = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v37 = sub_100037B98(v35, v36, v122);

    *(v34 + 14) = v37;
    *(v34 + 22) = 2080;
    aBlock = *&a9;
    v117 = *&a10;
    v118 = *&a11;
    v119 = a12;
    type metadata accessor for CGRect(0);
    v38 = String.init<A>(describing:)();
    v40 = sub_100037B98(v38, v39, v122);

    *(v34 + 24) = v40;
    *(v34 + 32) = 1024;
    *(v34 + 34) = v114 & 1;
    *(v34 + 38) = 1024;
    *(v34 + 40) = v113 & 1;
    *(v34 + 44) = 2080;
    *(v34 + 46) = sub_100037B98(v112, a4, v122);
    *(v34 + 54) = 2080;
    v27 = v107;
    v41 = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8];
    aBlock = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    v117 = v41;

    sub_10000589C(&qword_1000BBCF0, "0T");
    v42 = String.init<A>(describing:)();
    v44 = sub_100037B98(v42, v43, v122);

    *(v34 + 56) = v44;
    _os_log_impl(&_mh_execute_header, v30, v31, "%s identifier: %s to: %s isExpanding: %{BOOL}d retargetExistingAnimation: %{BOOL}d animationID: %s mostRecentlyRequestedAnimationIdentifier: %s", v34, 0x40u);
    swift_arrayDestroy();

    v26 = v108;
    v28 = v109;

    v45 = v110;
  }

  else
  {

    v45 = v21;
  }

  v46 = *(v45 + 8);
  v46(v25, v115);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    sub_10003BDA8(0, v28, v111, a8);

    goto LABEL_38;
  }

  v48 = &v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
  if (v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32])
  {
    v49 = Strong;

    sub_10003BDA8(0, v28, v111, a8);

LABEL_38:
    swift_bridgeObjectRelease_n();
    return;
  }

  v105 = Strong;
  v51 = v48[2];
  v50 = v48[3];
  v53 = *v48;
  v52 = v48[1];
  v54 = v114;
  if ((v114 & 1) == 0)
  {
    v55 = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
    if (!v55 || (v56 = [v55 superview]) == 0)
    {

      sub_10003BDA8(0, v28, v111, a8);

      goto LABEL_38;
    }
  }

  v103 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer;
  v57 = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
  if (!v57)
  {
    swift_bridgeObjectRelease_n();

    __break(1u);
    goto LABEL_50;
  }

  v58 = v57;
  sub_100062FF4();

  v59 = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
  if (!v59)
  {
LABEL_50:
    swift_bridgeObjectRelease_n();

    __break(1u);
    goto LABEL_51;
  }

  v60 = v29;
  [v59 layoutSubviews];
  if (v54)
  {
    v61 = 0.0;
  }

  else
  {
    v61 = 1.0;
  }

  if (v54)
  {
    v62 = 1.0;
  }

  else
  {
    v62 = 0.0;
  }

  if (v54)
  {
    v63 = 1.0;
  }

  else
  {
    v63 = 0.5;
  }

  v123[0] = 0;
  v64 = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
  if (v64)
  {
    [v64 setAlpha:v61];
  }

  [*&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] setAlpha:1.0];
  v65 = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
  if (v65)
  {
    [v65 setAlpha:0.0];
  }

  v107 = v27;
  if (v113)
  {
    v66 = *&v29[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
    if (v66)
    {
      swift_bridgeObjectRetain_n();
      sub_10000C7C0(v66, v29, v66, v123, v112, a4);
      goto LABEL_31;
    }

LABEL_51:
    swift_bridgeObjectRelease_n();

    __break(1u);
    goto LABEL_52;
  }

  v67 = v105;
  sub_10000B7A4(v60, v105, v54 & 1, v53, v52, v51, v50);
  v66 = v68;
  swift_bridgeObjectRetain_n();
  sub_10000C58C(v66, v54 & 1, v67, v60, v61);
  *&v60[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = v66;

  *&v60[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = _swiftEmptyArrayStorage;

LABEL_31:
  v102 = v66 >> 62;
  if (v66 >> 62)
  {
    v69 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v69 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v101 = v69;
  v70 = v69 == 1;
  swift_beginAccess();
  v123[0] = v70;

  v71 = v106;
  static Logger.UI.getter();
  v111 = v60;
  v72 = v60;

  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.debug.getter();

  v100 = v74;
  v75 = os_log_type_enabled(v73, v74);
  v104 = a8;
  v109 = v28;
  v108 = v26;
  if (v75)
  {
    v76 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    aBlock = v99;
    *v76 = 136316162;
    *(v76 + 4) = sub_100037B98(0xD000000000000052, 0x8000000100091EA0, &aBlock);
    *(v76 + 12) = 2080;
    v77 = *&v72[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v78 = *&v72[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v79 = sub_100037B98(v77, v78, &aBlock);

    *(v76 + 14) = v79;
    *(v76 + 22) = 2048;
    if (v102)
    {
      v80 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v80 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v82 = v112;
    v83 = v101 == 1;

    *(v76 + 24) = v80;

    *(v76 + 32) = 1024;
    *(v76 + 34) = v83;
    *(v76 + 38) = 2080;
    *(v76 + 40) = sub_100037B98(v82, a4, &aBlock);
    _os_log_impl(&_mh_execute_header, v73, v100, "%s identifier: %s animating from dock: %ld folderIsEmpty: %{BOOL}d animationID: %s", v76, 0x30u);
    swift_arrayDestroy();

    v81 = v106;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v81 = v71;
  }

  v46(v81, v115);
  if (v113)
  {
    goto LABEL_44;
  }

  v84 = *&v111[v103];
  if (!v84)
  {
LABEL_52:
    swift_bridgeObjectRelease_n();

    __break(1u);
    return;
  }

  [v84 setAlpha:v61];
LABEL_44:
  v85 = sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
  __chkstk_darwin(v85);
  v87 = v114 & 1;
  v86 = (v114 & 1) == 0;
  *(&v98 - 4) = v72;
  *(&v98 - 3) = v62;
  *(&v98 - 2) = v66;
  *(&v98 - 8) = v87;
  if (v86)
  {
    v88 = &selRef_clearColor;
  }

  else
  {
    v88 = &selRef__dimmingViewColor;
  }

  v89 = swift_allocObject();
  *(v89 + 16) = v112;
  *(v89 + 24) = a4;
  *(v89 + 32) = v72;
  *(v89 + 40) = sub_10001A42C;
  *(v89 + 48) = v107;
  *(v89 + 56) = v87;
  *(v89 + 64) = v66;
  v90 = v72;

  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();

  __chkstk_darwin(v91);
  *(&v98 - 6) = v90;
  *(&v98 - 5) = v62;
  *(&v98 - 4) = v63;
  *(&v98 - 3) = v123;
  *(&v98 - 2) = v61;
  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
  v92 = [objc_opt_self() *v88];
  v93 = objc_opt_self();
  v94 = swift_allocObject();
  *(v94 + 16) = v90;
  *(v94 + 24) = v92;
  v120 = sub_10001A3FC;
  v121 = v94;
  aBlock = _NSConcreteStackBlock;
  v117 = 1107296256;
  v118 = sub_10000D508;
  v119 = COERCE_DOUBLE(&unk_1000AE6A8);
  v95 = _Block_copy(&aBlock);
  v96 = v90;
  v97 = v92;

  [v93 animateWithDuration:65542 delay:v95 options:0 animations:0.25 completion:0.0];

  _Block_release(v95);
  swift_bridgeObjectRelease_n();
}

void sub_1000192A4(int a1, int a2, uint64_t a3, unint64_t a4, void *a5, void *a6, void *a7, void *a8, double a9, double a10, double a11, double a12)
{
  v125 = a3;
  v126 = a2;
  v124 = a1;
  v129 = type metadata accessor for Logger();
  v21 = *(v129 - 1);
  __chkstk_darwin(v129);
  v128 = &v114[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v25 = &v114[-v24];
  v26 = swift_allocObject();
  *(v26 + 16) = a7;
  *(v26 + 24) = a8;
  v27 = swift_allocObject();
  v27[2] = a6;
  v27[3] = sub_10001A420;
  v27[4] = v26;
  v28 = a7;
  v29 = a8;
  v30 = v28;
  v31 = v29;
  v131 = v30;
  v130 = v31;
  v32 = a6;

  static Logger.UI.getter();
  v33 = a5;

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  v36 = os_log_type_enabled(v34, v35);
  v127 = v32;
  v122 = a4;
  v123 = v21;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v120 = v27;
    v38 = v37;
    v138[0] = swift_slowAlloc();
    *v38 = 136316674;
    *(v38 + 4) = sub_100037B98(0xD000000000000052, 0x8000000100091EA0, v138);
    *(v38 + 12) = 2080;
    v121 = v26;
    v40 = *&v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v39 = *&v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v41 = sub_100037B98(v40, v39, v138);

    *(v38 + 14) = v41;
    *(v38 + 22) = 2080;
    aBlock = *&a9;
    v133 = *&a10;
    v134 = *&a11;
    v135 = a12;
    type metadata accessor for CGRect(0);
    v42 = String.init<A>(describing:)();
    v44 = sub_100037B98(v42, v43, v138);

    *(v38 + 24) = v44;
    *(v38 + 32) = 1024;
    *(v38 + 34) = v124 & 1;
    *(v38 + 38) = 1024;
    *(v38 + 40) = v126 & 1;
    *(v38 + 44) = 2080;
    *(v38 + 46) = sub_100037B98(v125, a4, v138);
    *(v38 + 54) = 2080;
    v45 = *&v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8];
    aBlock = *&v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    v133 = v45;

    sub_10000589C(&qword_1000BBCF0, "0T");
    v46 = String.init<A>(describing:)();
    v48 = sub_100037B98(v46, v47, v138);
    v26 = v121;

    *(v38 + 56) = v48;
    _os_log_impl(&_mh_execute_header, v34, v35, "%s identifier: %s to: %s isExpanding: %{BOOL}d retargetExistingAnimation: %{BOOL}d animationID: %s mostRecentlyRequestedAnimationIdentifier: %s", v38, 0x40u);
    swift_arrayDestroy();

    v27 = v120;

    v49 = v123;
  }

  else
  {

    v49 = v21;
  }

  v50 = *(v49 + 8);
  v50(v25, v129);
  Strong = swift_unknownObjectWeakLoadStrong();
  v52 = v128;
  if (!Strong)
  {
    v55 = v131;
    v56 = v130;
    v58 = v127;
    sub_10003C0DC(0, v127, v55, v56);

    goto LABEL_8;
  }

  v53 = Strong;
  v54 = &v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
  if (v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32])
  {
LABEL_6:
    v55 = v131;
    v56 = v130;
    v57 = v127;
    sub_10003C0DC(0, v127, v55, v56);

LABEL_8:

LABEL_46:
    return;
  }

  v60 = v54[2];
  v59 = v54[3];
  v62 = *v54;
  v61 = v54[1];
  v63 = v124;
  if ((v124 & 1) == 0)
  {
    v64 = *&v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
    if (!v64)
    {
      goto LABEL_6;
    }

    v65 = [v64 superview];
    if (!v65)
    {
      goto LABEL_6;
    }
  }

  v118 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer;
  v66 = *&v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
  if (!v66)
  {
    v106 = v130;

    v107 = v131;

    __break(1u);
    goto LABEL_49;
  }

  v119 = v53;
  v67 = v66;
  sub_100062FF4();

  v68 = *&v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
  if (!v68)
  {
LABEL_49:
    v108 = v130;

    v109 = v131;

    __break(1u);
    goto LABEL_50;
  }

  [v68 layoutSubviews];
  if (v63)
  {
    v69 = 0.0;
  }

  else
  {
    v69 = 1.0;
  }

  if (v63)
  {
    v70 = 1.0;
  }

  else
  {
    v70 = 0.0;
  }

  if (v63)
  {
    v71 = 1.0;
  }

  else
  {
    v71 = 0.5;
  }

  v139[0] = 0;
  v72 = *&v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
  v73 = v122;
  if (v72)
  {
    [v72 setAlpha:v69];
  }

  [*&v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] setAlpha:1.0];
  v74 = *&v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
  if (v74)
  {
    [v74 setAlpha:0.0];
  }

  v120 = v27;
  if ((v126 & 1) == 0)
  {
    v76 = v119;
    sub_10000B7A4(v33, v119, v63 & 1, v62, v61, v60, v59);
    v75 = v77;
    swift_bridgeObjectRetain_n();
    sub_10000C58C(v75, v63 & 1, v76, v33, v69);
    *&v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = v75;

    *&v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = _swiftEmptyArrayStorage;

    goto LABEL_32;
  }

  v75 = *&v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
  if (!v75)
  {
LABEL_50:
    v110 = v130;

    v111 = v131;

    __break(1u);
    goto LABEL_51;
  }

  swift_bridgeObjectRetain_n();
  sub_10000C7C0(v75, v33, v75, v139, v125, v73);
LABEL_32:
  v117 = v75 >> 62;
  if (v75 >> 62)
  {
    v78 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v78 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v116 = v78;
  v79 = v78 == 1;
  swift_beginAccess();
  v139[0] = v79;

  static Logger.UI.getter();
  v80 = v52;
  v81 = v33;

  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.debug.getter();

  v115 = v83;
  v84 = os_log_type_enabled(v82, v83);
  v121 = v26;
  if (v84)
  {
    v85 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v85 = 136316162;
    *(v85 + 4) = sub_100037B98(0xD000000000000052, 0x8000000100091EA0, &aBlock);
    *(v85 + 12) = 2080;
    v86 = *&v81[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v87 = *&v81[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v88 = sub_100037B98(v86, v87, &aBlock);

    *(v85 + 14) = v88;
    *(v85 + 22) = 2048;
    if (v117)
    {
      v89 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v89 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v90 = v116 == 1;

    *(v85 + 24) = v89;

    *(v85 + 32) = 1024;
    *(v85 + 34) = v90;
    *(v85 + 38) = 2080;
    *(v85 + 40) = sub_100037B98(v125, v122, &aBlock);
    _os_log_impl(&_mh_execute_header, v82, v115, "%s identifier: %s animating from dock: %ld folderIsEmpty: %{BOOL}d animationID: %s", v85, 0x30u);
    swift_arrayDestroy();

    v50(v128, v129);
    v63 = v124;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v50(v80, v129);
  }

  v91 = v119;
  if (v126)
  {
    goto LABEL_43;
  }

  v92 = *&v33[v118];
  if (v92)
  {
    [v92 setAlpha:v69];
LABEL_43:
    v93 = sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
    __chkstk_darwin(v93);
    v94 = v63 & 1;
    *&v114[-32] = v81;
    *&v114[-24] = v70;
    *&v114[-16] = v75;
    v114[-8] = v94;
    v95 = &selRef__dimmingViewColor;
    if (!v94)
    {
      v95 = &selRef_clearColor;
    }

    v129 = v95;
    v96 = swift_allocObject();
    v97 = v122;
    *(v96 + 16) = v125;
    *(v96 + 24) = v97;
    *(v96 + 32) = v81;
    *(v96 + 40) = sub_10001A42C;
    *(v96 + 48) = v120;
    *(v96 + 56) = v94;
    *(v96 + 64) = v75;
    v98 = v81;

    static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();

    __chkstk_darwin(v99);
    *&v114[-48] = v98;
    *&v114[-40] = v70;
    *&v114[-32] = v71;
    *&v114[-24] = v139;
    *&v114[-16] = v69;
    static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
    v100 = [objc_opt_self() *v129];
    v101 = objc_opt_self();
    v102 = swift_allocObject();
    *(v102 + 16) = v98;
    *(v102 + 24) = v100;
    v136 = sub_10001A3FC;
    v137 = v102;
    aBlock = _NSConcreteStackBlock;
    v133 = 1107296256;
    v134 = sub_10000D508;
    v135 = COERCE_DOUBLE(&unk_1000AE568);
    v103 = _Block_copy(&aBlock);
    v104 = v98;
    v105 = v100;

    [v101 animateWithDuration:65542 delay:v103 options:0 animations:0.25 completion:0.0];

    _Block_release(v103);

    goto LABEL_46;
  }

LABEL_51:
  v112 = v130;

  v113 = v131;

  __break(1u);
}

uint64_t sub_10001A0A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001A0E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001A150()
{

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10001A1E0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001A220()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001A2A8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10001A2F0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000143B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_10001A344(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

__n128 sub_10001A354(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001A368(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001A388(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

void *sub_10001A46C(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = _swiftEmptyArrayStorage;
    if (!i)
    {
      return v7;
    }

    v19 = _swiftEmptyArrayStorage;
    sub_10000F778(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v7 = v19;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a3 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      v17 = v10;
      a1(&v18, &v17);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;
      swift_unknownObjectRelease();
      v11 = v18;
      v19 = v7;
      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        v15 = v18;
        sub_10000F778((v12 > 1), v13 + 1, 1);
        v11 = v15;
        v7 = v19;
      }

      v7[2] = v13 + 1;
      *&v7[2 * v13 + 4] = v11;
      ++v8;
      if (v9 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t sub_10001A620(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064656966;
  v3 = 0x69646F4D65746164;
  v4 = a1;
  v5 = 0x646573557473616CLL;
  v6 = 0xEC00000065746144;
  v7 = 1701667182;
  if (a1 != 4)
  {
    v7 = 1684957547;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = 0xE400000000000000;
  }

  v8 = 0x6165724365746164;
  v9 = 0xEB00000000646574;
  if (a1 != 1)
  {
    v8 = 0x6564644165746164;
    v9 = 0xE900000000000064;
  }

  if (!a1)
  {
    v8 = 0x69646F4D65746164;
    v9 = 0xEC00000064656966;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEC00000065746144;
      if (v10 != 0x646573557473616CLL)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE400000000000000;
      if (a2 == 4)
      {
        if (v10 != 1701667182)
        {
          goto LABEL_31;
        }
      }

      else if (v10 != 1684957547)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEB00000000646574;
        if (v10 != 0x6165724365746164)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x6564644165746164;
      v2 = 0xE900000000000064;
    }

    if (v10 != v3)
    {
LABEL_31:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v11 != v2)
  {
    goto LABEL_31;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

Swift::Int sub_10001A808(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10001A91C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_10001AA20(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10001AB30@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003C434(*a1);
  *a2 = result;
  return result;
}

void sub_10001AB60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000064656966;
  v4 = 0x69646F4D65746164;
  v5 = 0xEC00000065746144;
  v6 = 0x646573557473616CLL;
  v7 = 1701667182;
  if (v2 != 4)
  {
    v7 = 1684957547;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  v8 = 0xEB00000000646574;
  v9 = 0x6165724365746164;
  if (v2 != 1)
  {
    v9 = 0x6564644165746164;
    v8 = 0xE900000000000064;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_10001AC2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7233894;
  }

  else
  {
    v3 = 1684632167;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7233894;
  }

  else
  {
    v5 = 1684632167;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10001ACC4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10001AD38(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_10001AD98(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10001AE08(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1000ADBB8, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_10001AE68(uint64_t *a1@<X8>)
{
  v2 = 1684632167;
  if (*v1)
  {
    v2 = 7233894;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_10001AEAC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10001AF20(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_10001AF64@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003C480(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10001AF9C(unsigned int a1, char a2, double a3, double a4)
{
  _StringGuts.grow(_:)(55);
  v5._countAndFlagsBits = 0x4D79616C70736964;
  v5._object = 0xEC0000003D65646FLL;
  String.append(_:)(v5);
  _print_unlocked<A, B>(_:_:)();
  v6._countAndFlagsBits = 0x64724F74726F7320;
  v6._object = 0xEB000000003D7265;
  String.append(_:)(v6);
  _print_unlocked<A, B>(_:_:)();
  v7._countAndFlagsBits = 0x6E65637341736920;
  v7._object = 0xED00003D676E6964;
  String.append(_:)(v7);
  if (a2)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (a2)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v10 = v9;
  String.append(_:)(*&v8);

  v11._countAndFlagsBits = 0x7A69536E6F636920;
  v11._object = 0xEB00000000203A65;
  String.append(_:)(v11);
  type metadata accessor for CGSize(0);
  v12._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v12);

  return 0;
}

uint64_t sub_10001B1A4(__int16 a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration;
  if (*(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration))
  {
    v6 = 7233894;
  }

  else
  {
    v6 = 1684632167;
  }

  if (*(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration))
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (a1)
  {
    v8 = 7233894;
  }

  else
  {
    v8 = 1684632167;
  }

  if (a1)
  {
    v9 = 0xE300000000000000;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v6 == v8 && v7 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      sub_10001E168();
    }
  }

  result = sub_10001A620(*(v5 + 1), HIBYTE(a1));
  if ((result & 1) == 0 || *(v5 + 24) != (a2 & 1))
  {

    return sub_10001E2D8();
  }

  return result;
}

void sub_10001B2B4(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v7 = a1;
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v11 = &unk_1000BF000;
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35 = v32;
    *v12 = 136315906;
    *(v12 + 4) = sub_100037B98(0xD000000000000018, 0x8000000100092010, &v35);
    *(v12 + 12) = 2080;
    v33 = a1;
    v13 = v7;
    v14 = *&v8[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v15 = *&v8[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v16 = sub_100037B98(v14, v15, &v35);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2080;
    v34 = *&v8[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
    v17 = v34;
    sub_10000589C(&qword_1000BCA90, &qword_100090B70);
    v18 = String.init<A>(describing:)();
    v20 = sub_100037B98(v18, v19, &v35);
    v31 = v3;
    v21 = v20;
    v7 = v13;
    a1 = v33;

    *(v12 + 24) = v21;
    *(v12 + 32) = 2080;
    v34 = a1;
    v22 = v7;
    v23 = String.init<A>(describing:)();
    v25 = sub_100037B98(v23, v24, &v35);

    *(v12 + 34) = v25;
    v11 = &unk_1000BF000;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s identifier: %s expandedStateChevronView: %s oldValue: %s", v12, 0x2Au);
    swift_arrayDestroy();

    (*(v4 + 8))(v6, v31);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v26 = *&v8[v11[11]];
  if (!a1)
  {
    if (!v26)
    {
      return;
    }

    goto LABEL_9;
  }

  if (!v26 || (sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr), v27 = v7, v28 = v26, v29 = static NSObject.== infix(_:_:)(), v27, v28, (v29 & 1) == 0))
  {
LABEL_9:
    [v7 removeFromSuperview];
  }
}

void sub_10001B5FC(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v7 = a1;
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v11 = &unk_1000BF000;
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35 = v32;
    *v12 = 136315906;
    *(v12 + 4) = sub_100037B98(0xD000000000000014, 0x8000000100092030, &v35);
    *(v12 + 12) = 2080;
    v33 = a1;
    v13 = v7;
    v14 = *&v8[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v15 = *&v8[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v16 = sub_100037B98(v14, v15, &v35);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2080;
    v34 = *&v8[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
    v17 = v34;
    sub_10000589C(&qword_1000BCA90, &qword_100090B70);
    v18 = String.init<A>(describing:)();
    v20 = sub_100037B98(v18, v19, &v35);
    v31 = v3;
    v21 = v20;
    v7 = v13;
    a1 = v33;

    *(v12 + 24) = v21;
    *(v12 + 32) = 2080;
    v34 = a1;
    v22 = v7;
    v23 = String.init<A>(describing:)();
    v25 = sub_100037B98(v23, v24, &v35);

    *(v12 + 34) = v25;
    v11 = &unk_1000BF000;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s identifier: %s hostIconSnapshotView: %s oldValue: %s", v12, 0x2Au);
    swift_arrayDestroy();

    (*(v4 + 8))(v6, v31);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v26 = *&v8[v11[12]];
  if (!a1)
  {
    if (!v26)
    {
      return;
    }

    goto LABEL_9;
  }

  if (!v26 || (sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr), v27 = v7, v28 = v26, v29 = static NSObject.== infix(_:_:)(), v27, v28, (v29 & 1) == 0))
  {
LABEL_9:
    [v7 removeFromSuperview];
  }
}

uint64_t sub_10001B944(int a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    HIDWORD(v22) = a1;
    v11 = v10;
    v26 = swift_slowAlloc();
    *v11 = 136315906;
    *(v11 + 4) = sub_100037B98(0x697469736E617274, 0xEF65746174536E6FLL, &v26);
    v23 = v3;
    *(v11 + 12) = 2080;
    v12 = *&v7[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v13 = *&v7[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v14 = sub_100037B98(v12, v13, &v26);

    *(v11 + 14) = v14;
    *(v11 + 22) = 2080;
    v25 = v7[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    v15 = String.init<A>(describing:)();
    v17 = sub_100037B98(v15, v16, &v26);

    *(v11 + 24) = v17;
    *(v11 + 32) = 2080;
    v24 = BYTE4(v22);
    v18 = String.init<A>(describing:)();
    v20 = sub_100037B98(v18, v19, &v26);

    *(v11 + 34) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s identifier: %s transitionState: %s oldValue: %s", v11, 0x2Au);
    swift_arrayDestroy();

    return (*(v4 + 8))(v6, v23);
  }

  else
  {

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_10001BBE4@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewFINodeDataSource);
  if (v3)
  {
    v9 = sub_10000589C(&qword_1000BC528, &qword_100090CF8);
    v10 = sub_100043240(&qword_1000BC570, &qword_1000BC528, &qword_100090CF8, &protocol conformance descriptor for DOCNodeDiffableDataSource<A>);
    *&v8 = v3;
    sub_1000427E4(&v8, a1);
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewFPNodeDataSource);
    if (v4)
    {
      v5 = sub_10000589C(&qword_1000BC520, &qword_100090CF0);
      v6 = sub_100043240(&qword_1000BC568, &qword_1000BC520, &qword_100090CF0, &protocol conformance descriptor for DOCNodeDiffableDataSource<A>);
    }

    else
    {
      v5 = 0;
      v6 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = v4;
    a1[3] = v5;
    a1[4] = v6;
  }

  return result;
}

uint64_t sub_10001BD78()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v30[0] = 0;
  *(&v30[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(113);
  v33 = v30[0];
  v6 = type metadata accessor for DOCSBFolderPresentationController(0);
  v32.receiver = v0;
  v32.super_class = v6;
  v7 = objc_msgSendSuper2(&v32, "description");
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x6669746E65646920;
  v12._object = 0xEC0000003D726569;
  String.append(_:)(v12);
  v13 = *&v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
  v14 = *&v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

  v15._countAndFlagsBits = v13;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x6F74636572696420;
  v16._object = 0xEE003D4C52557972;
  String.append(_:)(v16);
  v17 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_directoryURL;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v17], v2);
  sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  (*(v3 + 8))(v5, v2);
  v19._countAndFlagsBits = 0x756769666E6F6320;
  v19._object = 0xEF3D6E6F69746172;
  String.append(_:)(v19);
  v20._countAndFlagsBits = sub_10001AF9C(v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration] | (v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 1] << 8), v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 24], *&v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 8], *&v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 16]);
  String.append(_:)(v20);

  v21._object = 0x8000000100092D30;
  v21._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v21);
  LOBYTE(v30[0]) = v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
  v22._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 0xD000000000000015;
  v23._object = 0x8000000100092D50;
  String.append(_:)(v23);
  v24 = v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32];
  v25 = *&v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 16];
  v30[0] = *&v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
  v30[1] = v25;
  v31 = v24;
  sub_10000589C(&qword_1000BC4F0, qword_100090BF0);
  v26._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0xD000000000000013;
  v27._object = 0x8000000100092D70;
  String.append(_:)(v27);
  *&v30[0] = swift_unknownObjectWeakLoadStrong();
  sub_10000589C(&qword_1000BCA90, &qword_100090B70);
  v28._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v28);

  return v33;
}

void sub_10001C128()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
  if (*(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView))
  {
    return;
  }

  v2 = v0;
  v3 = (v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame);
  v4 = 0.0;
  v116 = 0.0;
  v117 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if ((*(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32) & 1) == 0)
  {
    v5 = v3[2];
    v6 = v3[3];
    v116 = *v3;
    v117 = v3[1];
  }

  v7 = (v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockFrame);
  v113 = 0.0;
  v114 = 0.0;
  rect = 0.0;
  if ((*(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockFrame + 32) & 1) == 0)
  {
    v114 = v7[2];
    rect = v7[3];
    v4 = *v7;
    v113 = v7[1];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong frame];
    v11 = v10;
    v107 = v13;
    v108 = v12;
    v15 = v14;
  }

  else
  {
    v11 = 0.0;
    v107 = 0.0;
    v108 = 0.0;
    v15 = 0.0;
  }

  v16 = v5 + 12.0;
  v17 = v6 + 24.0;
  v18 = v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration;
  if (*(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration))
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      v16 = v5;
    }

    v20 = v6;
    if ((v19 & 1) == 0)
    {
      v17 = v6;
    }
  }

  else
  {
    v20 = v6;
  }

  v111 = v4;
  v112 = v5;
  v109 = v17;
  v110 = v16;
  if (*v18 == 1)
  {
    sub_10001E4F0();
    v118.origin.x = v116;
    v118.origin.y = v117;
    v118.size.width = v5;
    v21 = v20;
    v118.size.height = v20;
    CGRectGetMaxY(v118);
    v22 = *(v18 + 8);
    v119.origin.x = v116;
    v119.origin.y = v117;
    v119.size.width = v5;
    v119.size.height = v20;
    MidX = CGRectGetMidX(v119);
    MinX = sub_1000429DC(MidX + v22 * -0.5);
    v26 = v25;
    v28 = v27;
    v30 = v29;
  }

  else
  {
    v31 = v17 * 4.0 + 54.0 + 36.0 + 26.0;
    v120.origin.x = v4;
    v120.origin.y = v113;
    v120.size.width = v114;
    v120.size.height = rect;
    v26 = CGRectGetMinY(v120) - v31 + -15.0;
    v121.origin.x = v116;
    v121.origin.y = v117;
    v121.size.width = v5;
    v121.size.height = v20;
    MinX = CGRectGetMinX(v121);
    v122.origin.x = v11;
    v122.origin.y = v108;
    v122.size.width = v107;
    v122.size.height = v15;
    v131.origin.x = MinX;
    v131.origin.y = v26;
    v106 = v16 * 5.0 + 156.0 + 25.0 + 25.0;
    v131.size.width = v106;
    v32 = v31;
    v131.size.height = v31;
    v123 = CGRectUnion(v122, v131);
    Width = CGRectGetWidth(v123);
    v124.origin.x = v11;
    v124.origin.y = v108;
    v124.size.width = v107;
    v124.size.height = v15;
    if (CGRectGetWidth(v124) >= Width)
    {
      goto LABEL_22;
    }

    if (MinX < 60.0)
    {
      MinX = 60.0;
    }

    v125.origin.x = MinX;
    v125.origin.y = v26;
    v125.size.width = v16 * 5.0 + 156.0 + 25.0 + 25.0;
    v125.size.height = v32;
    MaxX = CGRectGetMaxX(v125);
    v126.origin.x = v11;
    v126.origin.y = v108;
    v126.size.width = v107;
    v126.size.height = v15;
    if (CGRectGetMaxX(v126) + -60.0 >= MaxX)
    {
LABEL_22:
      v21 = v20;
      v28 = v16 * 5.0 + 156.0 + 25.0 + 25.0;
      v30 = v32;
    }

    else
    {
      v127.origin.x = MinX;
      v127.origin.y = v26;
      v127.size.width = v16 * 5.0 + 156.0 + 25.0 + 25.0;
      v127.size.height = v32;
      v105 = CGRectGetMaxX(v127);
      v128.origin.x = v11;
      v128.origin.y = v108;
      v128.size.width = v107;
      v128.size.height = v15;
      v21 = v20;
      MinX = MinX + CGRectGetMaxX(v128) + -60.0 - v105;
      v30 = v32;
      v28 = v106;
    }
  }

  v35 = [objc_allocWithZone(type metadata accessor for FolderCollectionViewContainerView()) initWithFrame:{MinX, v26, v28, v30}];
  v36 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer;
  v37 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer);
  *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer) = v35;
  v38 = v35;

  if (!v38)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (*v18)
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v39 = 1;
  }

  v40 = OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_roundCorners;
  v38[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_roundCorners] = v39 & 1;
  v41 = [v38 layer];
  v42 = v41;
  v43 = 0.0;
  if (v38[v40])
  {
    v43 = *&v38[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView__cornerRadiusSpec];
  }

  [v41 setCornerRadius:{v43, *&v105}];

  v44 = [v38 layer];
  [v44 setMasksToBounds:v38[v40]];

  v45 = *(v2 + v36);
  if (!v45)
  {
    goto LABEL_66;
  }

  if (!*(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewBackgroundTapRecognizer))
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  [v45 addGestureRecognizer:?];
  if (*v18 == 1)
  {

LABEL_34:
    v47 = *(v18 + 16);
    goto LABEL_36;
  }

  v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v46)
  {
    goto LABEL_34;
  }

  v47 = 54.0;
LABEL_36:
  y = CGPointZero.y;
  if (*v18 == 1)
  {
    v49 = type metadata accessor for DOCSBFolderFanCollectionViewLayout();
  }

  else
  {
    v49 = type metadata accessor for DOCSBFolderGridCollectionViewLayout();
  }

  v50 = [objc_allocWithZone(v49) init];
  [v50 setItemSize:{v110, v109}];
  [v50 setHeaderReferenceSize:{0.0, v47}];
  v51 = [objc_allocWithZone(type metadata accessor for FolderCollectionView()) initWithFrame:v50 collectionViewLayout:{CGPointZero.x, y, v28, v30}];
  v52 = *(v2 + v1);
  *(v2 + v1) = v51;
  v53 = v51;

  if (!v53)
  {
    goto LABEL_68;
  }

  [v53 setDelegate:v2];

  v54 = *(v2 + v1);
  if (!v54)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  [v54 setDragDelegate:v2];
  v55 = *(v2 + v1);
  if (!v55)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  [v55 setAutoresizingMask:18];
  p_type = &stru_1000B6FF0.type;
  if ((*v18 & 1) == 0)
  {

LABEL_51:
    v86 = *(v2 + v36);
    if (v86)
    {
      v87 = v86[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_usesMaterialBackgroundView];
      v86[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_usesMaterialBackgroundView] = 1;
      if (v87 != 1)
      {
        v88 = objc_opt_self();
        v89 = v86;
        v90 = [v88 effectWithStyle:8];
        v91 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v90];

        v92 = v91;
        [v92 setAutoresizingMask:18];
        [v89 bounds];
        [v92 setFrame:?];

        [v89 addSubview:v92];
        v93 = *&v89[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_materialBackgroundView];
        *&v89[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_materialBackgroundView] = v92;
      }

      v94 = *(v2 + v36);
      if (v94)
      {
        v95 = *(v2 + v1);
        v96 = *&v94[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_collectionView];
        *&v94[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_collectionView] = v95;
        v97 = v95;
        v98 = v94;
        sub_100063F30(v96);

        goto LABEL_56;
      }

LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v57)
  {
    goto LABEL_51;
  }

  v129.origin.x = v111;
  v129.origin.y = v113;
  v129.size.width = v114;
  v129.size.height = rect;
  Height = CGRectGetHeight(v129);
  v130.origin.x = v116;
  v130.origin.y = v117;
  v130.size.width = v112;
  v130.size.height = v21;
  v59 = CGRectGetHeight(v130);
  sub_10001E614();
  v61 = *(v2 + v36);
  if (!v61)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v62 = v60;
  v63 = *(v2 + v1);
  v64 = *&v61[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_collectionView];
  *&v61[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_collectionView] = v63;
  v65 = v63;
  v66 = v61;
  sub_100063F30(v64);

  v67 = *(v2 + v1);
  if (!v67)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  [v67 setClipsToBounds:0];
  v68 = *(v2 + v1);
  if (!v68)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  [v68 setContentInset:{v62, 50.0, Height + v59 * -0.5 + 10.0, 50.0}];
  type metadata accessor for DOCSBFolderFanCollectionViewLayout();
  v69 = swift_dynamicCastClass();
  if (v69)
  {
    v70 = v69;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v71 = v50;
    v72 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v73 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_indexPathsOfItemsPinnedToBottomObserver);
    *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_indexPathsOfItemsPinnedToBottomObserver) = v72;

    swift_getKeyPath();
    v74 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v75 = swift_allocObject();
    *(v75 + 16) = v74;
    *(v75 + 24) = v70;
    v76 = v71;
    v77 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v78 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_bottomItemPositionProgressObserver);
    *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_bottomItemPositionProgressObserver) = v77;

    v79 = *(v2 + v1);
    if (!v79)
    {
LABEL_77:
      __break(1u);
      return;
    }

    swift_getKeyPath();
    v80 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v81 = swift_allocObject();
    *(v81 + 16) = v80;
    *(v81 + 24) = v70;
    v82 = v76;
    v83 = v79;
    v84 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v85 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_contentOffsetObserver);
    *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_contentOffsetObserver) = v84;

    p_type = (&stru_1000B6FF0 + 16);
  }

LABEL_56:
  v99 = swift_unknownObjectWeakLoadStrong();
  if (v99)
  {
    v100 = v99;
    [v99 p_type[356]];
  }

  v101 = swift_unknownObjectWeakLoadStrong();
  if (!v101)
  {
    goto LABEL_61;
  }

  if (!*(v2 + v36))
  {
    goto LABEL_73;
  }

  v102 = v101;
  [v101 p_type[356]];

LABEL_61:
  v103 = swift_unknownObjectWeakLoadStrong();
  if (v103)
  {
    v104 = v103;
    [v103 p_type[356]];
  }

  sub_10001D724();
}

void sub_10001CCA0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 indexPathsOfItemsPinnedToBottom];
  type metadata accessor for IndexPath();
  sub_1000422FC(&qword_1000BC4F8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

void sub_10001CD40(uint64_t a1, void **a2)
{
  v2 = *a2;
  type metadata accessor for IndexPath();
  sub_1000422FC(&qword_1000BC4F8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  isa = Set._bridgeToObjectiveC()().super.isa;
  [v2 setIndexPathsOfItemsPinnedToBottom:isa];
}

double sub_10001CDF0(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    static Logger.UI.getter();
    v12 = v8;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v15 = 136315394;
      *(v15 + 4) = sub_100037B98(0xD000000000000016, 0x8000000100092CD0, &v21);
      *(v15 + 12) = 2112;
      *(v15 + 14) = v12;
      *v16 = v12;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s contentOffset KVO changed indexPathsOfItemsPinnedToBottom: %@", v15, 0x16u);
      sub_100006390(v16, &qword_1000BC328, &qword_100090AD0);

      sub_1000064E0(v17);
    }

    (*(v5 + 8))(v7, v4);
    v19 = [v12 indexPathsOfItemsPinnedToBottom];
    type metadata accessor for IndexPath();
    sub_1000422FC(&qword_1000BC4F8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10001F960(v20);
  }

  return result;
}

void sub_10001D0A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState) | 2) != 3)
    {
      static Logger.UI.getter();
      v11 = a4;
      v12 = v10;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v24 = v14;
        v16 = v15;
        v25 = swift_slowAlloc();
        v27 = v25;
        *v16 = 136315650;
        *(v16 + 4) = sub_100037B98(0xD000000000000016, 0x8000000100092CD0, &v27);
        *(v16 + 12) = 2048;
        [v11 progressOfBottomItemIconInDock];
        *(v16 + 14) = v17;
        *(v16 + 22) = 2080;
        v26 = *&v12[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
        v18 = v26;
        sub_10000589C(&qword_1000BC440, &qword_100090B90);
        v19 = String.init<A>(describing:)();
        v21 = sub_100037B98(v19, v20, &v27);

        *(v16 + 24) = v21;
        _os_log_impl(&_mh_execute_header, v13, v24, "%s progressOfBottomItemIconInDock: %f changed in collectionView: %s", v16, 0x20u);
        swift_arrayDestroy();
      }

      (*(v6 + 8))(v8, v5);
      [v11 progressOfBottomItemIconInDock];
      sub_100020674(v22);
    }
  }
}

void sub_10001D35C(double *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = type metadata accessor for FolderCollectionView();
  v12.receiver = v4;
  v12.super_class = v5;
  objc_msgSendSuper2(&v12, "setContentOffset:", v2, v3);
  v6 = [v4 collectionViewLayout];
  type metadata accessor for DOCSBFolderCollectionViewLayout();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v11.receiver = v4;
    v11.super_class = v5;
    v9 = objc_msgSendSuper2(&v11, "contentOffset");
    (*((swift_isaMask & *v8) + 0x80))(v9, v10);
  }
}

void sub_10001D44C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    static Logger.UI.getter();
    v11 = v10;
    v12 = a4;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30 = v27;
      *v15 = 136315906;
      *(v15 + 4) = sub_100037B98(0xD000000000000016, 0x8000000100092CD0, &v30);
      *(v15 + 12) = 2048;
      v16 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
      v17 = *&v11[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
      if (!v17)
      {

        __break(1u);
        return;
      }

      v18 = v17;

      v19 = type metadata accessor for FolderCollectionView();
      v29.receiver = v18;
      v29.super_class = v19;
      objc_msgSendSuper2(&v29, "contentOffset");
      v21 = v20;

      *(v15 + 14) = v21;
      *(v15 + 22) = 2048;
      [v12 progressOfBottomItemIconInDock];
      *(v15 + 24) = v22;
      *(v15 + 32) = 2080;
      v28 = *&v11[v16];
      v23 = v28;
      sub_10000589C(&qword_1000BC440, &qword_100090B90);
      v24 = String.init<A>(describing:)();
      v26 = sub_100037B98(v24, v25, &v30);

      *(v15 + 34) = v26;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s contentOffset: %f progressOfBottomItemIconInDock: %f changed in collectionView: %s", v15, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
  }
}

void sub_10001D724()
{
  v1 = v0;
  v2 = sub_10000589C(&qword_1000BC500, &qword_100090CD0);
  v74 = *(v2 - 8);
  v75 = v2;
  __chkstk_darwin(v2);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v3;
  __chkstk_darwin(v5);
  v7 = &v62 - v6;
  v8 = sub_10000589C(&qword_1000BC508, &qword_100090CD8);
  v72 = *(v8 - 8);
  v73 = v8;
  __chkstk_darwin(v8);
  v65 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v9;
  __chkstk_darwin(v10);
  v78 = &v62 - v11;
  v12 = sub_10000589C(&qword_1000BC510, &qword_100090CE0);
  v82 = *(v12 - 8);
  v83 = v12;
  v13 = *(v82 + 64);
  __chkstk_darwin(v12);
  v70 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v62 - v15;
  v17 = sub_10000589C(&qword_1000BC518, &qword_100090CE8);
  v80 = *(v17 - 8);
  v81 = v17;
  __chkstk_darwin(v17);
  v76 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v18;
  __chkstk_darwin(v19);
  v21 = &v62 - v20;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for DOCSBCollectionViewCellGrid(0);
  sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
  v79 = v21;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for DOCSBCollectionViewCellFan(0);
  UICollectionView.CellRegistration.init(handler:)();
  v68 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration);
  v22 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource);
  v77 = v7;
  v67 = v4;
  v71 = v16;
  if (!v22 || (v23 = *(*(v22 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection)) == 0 || (v24 = v23, v25 = dispatch thunk of DOCNodeCollection.isDesktopServicesBacked.getter(), v24, (v25 & 1) == 0))
  {
    v63 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView);
    if (v63)
    {
      v37 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v38 = v82;
      v39 = *(v82 + 16);
      v62 = v1;
      v40 = v70;
      v41 = v83;
      v39(v70, v16, v83);
      v42 = v80;
      v43 = v76;
      v44 = v81;
      (*(v80 + 16))(v76, v79, v81);
      v45 = (*(v38 + 80) + 25) & ~*(v38 + 80);
      v46 = (v13 + *(v42 + 80) + v45) & ~*(v42 + 80);
      v47 = swift_allocObject();
      *(v47 + 16) = v37;
      *(v47 + 24) = v68;
      (*(v38 + 32))(v47 + v45, v40, v41);
      v48 = v43;
      v1 = v62;
      (*(v42 + 32))(v47 + v46, v48, v44);
      sub_10000589C(&qword_1000BC520, &qword_100090CF0);
      swift_allocObject();
      v49 = v63;
      v35 = DOCNodeDiffableDataSource.init(collectionView:cellProvider:)();
      v36 = &OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewFPNodeDataSource;
      v7 = v77;
      goto LABEL_8;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v63 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView);
  if (!v63)
  {
    goto LABEL_13;
  }

  v62 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = v82;
  v27 = v83;
  v28 = v70;
  (*(v82 + 16))(v70, v16, v83);
  v29 = v80;
  v30 = v81;
  (*(v80 + 16))(v76, v79, v81);
  v31 = (*(v26 + 80) + 25) & ~*(v26 + 80);
  v32 = (v13 + *(v29 + 80) + v31) & ~*(v29 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v62;
  *(v33 + 24) = v68;
  (*(v26 + 32))(v33 + v31, v28, v27);
  (*(v29 + 32))(v33 + v32, v76, v30);
  sub_10000589C(&qword_1000BC528, &qword_100090CF8);
  swift_allocObject();
  v34 = v63;
  v35 = DOCNodeDiffableDataSource.init(collectionView:cellProvider:)();
  v36 = &OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewFINodeDataSource;
LABEL_8:
  *(v1 + *v36) = v35;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for DOCSBFolderCollectionHeaderViewIconStyle();
  v50 = v78;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for DOCSBFolderCollectionHeaderViewBannerStyle();
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v51 = sub_10001BBE4(v84);
  if (v85)
  {
    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v54 = v72;
    v53 = v73;
    v55 = v65;
    (*(v72 + 16))(v65, v50, v73);
    v57 = v74;
    v56 = v75;
    v58 = v67;
    (*(v74 + 16))(v67, v7, v75);
    v59 = (*(v54 + 80) + 24) & ~*(v54 + 80);
    v60 = (v64 + *(v57 + 80) + v59) & ~*(v57 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = v52;
    (*(v54 + 32))(v61 + v59, v55, v53);
    (*(v57 + 32))(v61 + v60, v58, v56);
    sub_100042EC8(v84, v85);

    dispatch thunk of DOCNodeDiffableDataSourceProtocol.supplementaryViewProvider.setter();
    (*(v57 + 8))(v77, v56);
    (*(v54 + 8))(v78, v53);
    (*(v82 + 8))(v71, v83);
    (*(v80 + 8))(v79, v81);
  }

  else
  {
    (*(v74 + 8))(v7, v75, v51);
    (*(v72 + 8))(v50, v73);
    (*(v82 + 8))(v71, v83);
    (*(v80 + 8))(v79, v81);
  }

  sub_100006390(v84, &qword_1000BC450, &unk_100090BA0);
}

void sub_10001E168()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer;
  v2 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
    if (v3)
    {
      v4 = [v3 subviews];
      sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v5 >> 62)
      {
        goto LABEL_15;
      }

      for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v7 = 0;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_14;
            }

            v8 = *(v5 + 8 * v7 + 32);
          }

          v9 = v8;
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          [v8 removeFromSuperview];

          ++v7;
          if (v10 == i)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        ;
      }

LABEL_16:
    }
  }

  v11 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView);
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView) = 0;

  v12 = *(v0 + v1);
  *(v0 + v1) = 0;
}

uint64_t sub_10001E2D8()
{
  v1 = type metadata accessor for DOCItemSortDescriptor();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v17[-v6];
  __chkstk_darwin(v8);
  v10 = &v17[-v9];
  sub_100024298(&v17[-v9]);
  v11 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource);
  if (!v11)
  {
    return (*(v2 + 8))(v10, v1);
  }

  v12 = *(v2 + 16);
  v12(v7, v10, v1);
  v13 = OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_sortDescriptor;
  swift_beginAccess();
  v12(v4, (v11 + v13), v1);
  swift_beginAccess();
  v14 = *(v2 + 24);

  v14(v11 + v13, v7, v1);
  swift_endAccess();
  sub_10002DB00(v4);

  v15 = *(v2 + 8);
  v15(v4, v1);
  v15(v7, v1);
  return (v15)(v10, v1);
}

double sub_10001E4F0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = 0.0;
  if (Strong)
  {
    v3 = Strong;
    v4 = (v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame);
    if ((*(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32) & 1) != 0 || (v6 = v4[2], v5 = v4[3], v8 = *v4, v7 = v4[1], [Strong frame], v20.origin.x = 0.0, v20.origin.y = 0.0, v20.size.width = 0.0, v20.size.height = 0.0, CGRectEqualToRect(v15, v20)))
    {
    }

    else
    {
      [v3 frame];
      Width = CGRectGetWidth(v16);
      [v3 frame];
      Height = CGRectGetHeight(v17);
      if (Height >= Width)
      {
        Height = Width;
      }

      v11 = Height * 0.85;
      [v3 frame];
      v12 = CGRectGetHeight(v18);
      v19.origin.x = v8;
      v19.origin.y = v7;
      v19.size.width = v6;
      v19.size.height = v5;
      MaxY = CGRectGetMaxY(v19);

      return fmin(v11 - (v12 - MaxY), 715.0);
    }
  }

  return v2;
}

void sub_10001E614()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (*(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32) == 1)
  {

    return;
  }

  v2 = Strong;
  [Strong frame];
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = 0.0;
  v18.size.height = 0.0;
  if (CGRectEqualToRect(v17, v18))
  {
    goto LABEL_16;
  }

  if (*(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration) != 1)
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v3)
    {
      goto LABEL_8;
    }

LABEL_16:

    return;
  }

LABEL_8:
  v4 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
  v5 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView);
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = [v5 collectionViewLayout];
  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = v6;
  type metadata accessor for DOCSBFolderFanCollectionViewLayout();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {

    return;
  }

  v9 = v8;
  v10 = *(v0 + v4);
  if (!v10)
  {
    __break(1u);
    goto LABEL_25;
  }

  [v10 frame];
  v11 = *(v0 + v4);
  if (!v11)
  {
LABEL_25:
    __break(1u);
    return;
  }

  [v11 contentSize];
  v12 = v7;
  [v9 minimumInteritemSpacing];
  [v9 itemSize];

  v13 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource);
  if (v13)
  {
    v14 = *(*(v13 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    if (v14)
    {

      v15 = v14;
      v16 = dispatch thunk of DOCNodeCollection.nodes.getter();
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
    }

    if (v16 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }
  }
}

BOOL sub_10001E8B0(int a1, uint64_t a2, double a3, double a4)
{
  v5 = a2;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = &v4[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
  v17 = sub_10003AD30(v4[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration] | (v4[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 1] << 8), v4[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 24], a1 & 0xFF01, v5, *&v4[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 8], *&v4[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 16], a3, a4);
  v18 = v17;
  if (v17)
  {
    static Logger.UI.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_100037B98(0xD000000000000023, 0x8000000100092CA0, &v44);
      _os_log_impl(&_mh_execute_header, v19, v20, "%s configurations are the same. No update", v21, 0xCu);
      sub_1000064E0(v22);
    }

    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v41 = a1 & 1;
    v42 = v5 & 1;
    v43 = v17;
    static Logger.UI.getter();
    v23 = v4;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    v40 = v23;

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = v9;
      v27 = v26;
      v38 = swift_slowAlloc();
      v44 = v38;
      *v27 = 136315650;
      *(v27 + 4) = sub_100037B98(0xD000000000000023, 0x8000000100092CA0, &v44);
      *(v27 + 12) = 2080;
      v28 = sub_10001AF9C(*v16 | (*(v16 + 1) << 8), *(v16 + 24), v16[1], v16[2]);
      v30 = sub_100037B98(v28, v29, &v44);

      *(v27 + 14) = v30;
      *(v27 + 22) = 2080;
      v31 = sub_10001AF9C(a1 & 0xFFFFFF01, v5 & 1, a3, a4);
      v33 = sub_100037B98(v31, v32, &v44);

      *(v27 + 24) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s configurations are different, updating. old config: %s new config: %s", v27, 0x20u);
      swift_arrayDestroy();

      (*(v10 + 8))(v15, v39);
    }

    else
    {

      (*(v10 + 8))(v15, v9);
    }

    v34 = *v16;
    v35 = *(v16 + 24);
    *v16 = v41;
    v36 = *(v16 + 1);
    *(v16 + 1) = BYTE1(a1);
    v16[1] = a3;
    v16[2] = a4;
    *(v16 + 24) = v42;
    sub_10001B1A4(v34 | (v36 << 8), v35);
    v18 = v43;
  }

  return (v18 & 1) == 0;
}

id sub_10001ECB8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, CGFloat a7, CGFloat a8)
{
  *&v17 = COERCE_DOUBLE(type metadata accessor for Logger());
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v21 = v8;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  v24 = &unk_1000BF000;
  if (os_log_type_enabled(v22, v23))
  {
    LODWORD(v103) = v23;
    v104 = *&v17;
    v25 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v108[0] = v102;
    *v25 = 136316674;
    *(v25 + 4) = sub_100037B98(0xD000000000000023, 0x8000000100092C70, v108);
    *(v25 + 12) = 2080;
    v26 = *&v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v27 = *&v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v28 = sub_100037B98(v26, v27, v108);

    *(v25 + 14) = v28;
    *(v25 + 22) = 2080;
    v29 = v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32];
    v105 = *&v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
    v106 = *&v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 16];
    v107 = v29;
    sub_10000589C(&qword_1000BC4F0, qword_100090BF0);
    v30 = String.init<A>(describing:)();
    v32 = sub_100037B98(v30, v31, v108);

    *(v25 + 24) = v32;
    *(v25 + 32) = 2080;
    *&v105 = a1;
    *(&v105 + 1) = a2;
    *&v106 = a3;
    *(&v106 + 1) = a4;
    type metadata accessor for CGRect(0);
    v33 = String.init<A>(describing:)();
    v35 = sub_100037B98(v33, v34, v108);

    *(v25 + 34) = v35;
    *(v25 + 42) = 2080;
    v36 = v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockFrame + 32];
    v105 = *&v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockFrame];
    v106 = *&v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockFrame + 16];
    v107 = v36;
    v37 = String.init<A>(describing:)();
    v39 = sub_100037B98(v37, v38, v108);

    *(v25 + 44) = v39;
    *(v25 + 52) = 2080;
    *&v105 = a5;
    *(&v105 + 1) = a6;
    *&v106 = a7;
    *(&v106 + 1) = a8;
    v40 = String.init<A>(describing:)();
    v42 = sub_100037B98(v40, v41, v108);

    *(v25 + 54) = v42;
    *(v25 + 62) = 2080;
    v43 = *&v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
    if (v43)
    {
      v44 = *(*(v43 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
      if (v44)
      {

        v45 = v44;
        v46 = dispatch thunk of DOCNodeCollection.nodes.getter();
      }

      else
      {
        v46 = _swiftEmptyArrayStorage;
      }

      v48 = LOBYTE(v103);
      if (v46 >> 62)
      {
        v47 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v47 = 0;
      v48 = LOBYTE(v103);
    }

    *&v105 = v47;
    BYTE8(v105) = v43 == 0;
    sub_10000589C(&qword_1000BC4C8, &qword_100090BD8);
    v49 = String.init<A>(describing:)();
    v51 = sub_100037B98(v49, v50, v108);

    *(v25 + 64) = v51;
    _os_log_impl(&_mh_execute_header, v22, v48, "%s identifier: %s old anchorFrame: %s new anchorFrame: %s old dockFrame: %s new dockFrame: %s nodes count: %s", v25, 0x48u);
    swift_arrayDestroy();

    (*(v18 + 8))(v20, COERCE_CGFLOAT(*&v104));
    v24 = &unk_1000BF000;
  }

  else
  {

    (*(v18 + 8))(v20, v17);
  }

  v52 = &v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
  *v52 = a1;
  v52[1] = a2;
  v52[2] = a3;
  v52[3] = a4;
  *(v52 + 32) = 0;
  [*&v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] setFrame:{a1, a2, a3, a4}];
  v53 = &v21[v24[15]];
  v102 = *&a5;
  v103 = a6;
  *v53 = a5;
  v53[1] = a6;
  v53[2] = a7;
  v53[3] = a8;
  *(v53 + 32) = 0;
  [*&v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView] setFrame:{a1, a2, a3, a4}];
  v54 = *&v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
  v104 = a2;
  [v54 setFrame:{a1, a2, a3, a4}];
  v55 = &v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
  v56 = v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
  v57 = v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 24];
  *v55 = v56;
  v55[1] = a3;
  v55[2] = a4;
  *(v55 + 24) = v57;
  sub_10001B1A4(v56 | (*(v55 + 1) << 8), v57);
  v58 = a3 + 12.0;
  v59 = a4 + 24.0;
  if (*v55)
  {
    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v60 & 1) == 0)
    {
      v58 = a3;
      v59 = a4;
    }
  }

  else
  {
  }

  v61 = *&v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
  if (v61)
  {
    v62 = v61;
    v63 = [v62 collectionViewLayout];
    type metadata accessor for DOCSBFolderCollectionViewLayout();
    v64 = swift_dynamicCastClass();
    if (v64)
    {
      v65 = v64;
      v66 = v63;
      [v65 itemSize];
      v69 = v68 == v59 && v67 == v58;
      [v65 setItemSize:{v58, v59}];
      [v65 setHeaderReferenceSize:{0.0, v59}];

      if (*v55 == 1)
      {

        goto LABEL_25;
      }

      v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v70)
      {
LABEL_25:
        *&v109.origin.x = v102;
        v109.origin.y = v103;
        v109.size.width = a7;
        v109.size.height = a8;
        CGRectGetHeight(v109);
        sub_10001E614();
        [v62 setContentInset:?];
        if (!v69)
        {
          [v65 invalidateLayout];
          sub_10001F67C();
        }
      }
    }

    else
    {
      v66 = v62;
      v62 = v63;
    }
  }

  v100 = a7;
  v101 = a8;
  v71 = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v73 = Strong;
    [Strong bounds];
    v99 = v74;
    v76 = v75;
    v78 = v77;
    v98 = v79;
  }

  else
  {
    v99 = 0.0;
    v76 = 0.0;
    v78 = 0.0;
    v98 = 0.0;
  }

  if (*v55 == 1)
  {
    sub_10001E4F0();
    v80 = a1;
    v110.origin.x = a1;
    v81 = v104;
    v110.origin.y = v104;
    v110.size.width = a3;
    v110.size.height = a4;
    CGRectGetMaxY(v110);
    v82 = v55[1];
    v111.origin.x = v80;
    v111.origin.y = v81;
    v111.size.width = a3;
    v111.size.height = a4;
    MidX = CGRectGetMidX(v111);
    MinX = sub_1000429DC(MidX + v82 * -0.5);
    v87 = v86;
    v89 = v88;
  }

  else
  {
    v89 = v59 * 4.0 + 54.0 + 36.0 + 26.0;
    *&v112.origin.x = v102;
    v112.origin.y = v103;
    v112.size.width = v100;
    v112.size.height = v101;
    v90 = CGRectGetMinY(v112) - v89 + -15.0;
    v113.origin.x = a1;
    v113.origin.y = v104;
    v113.size.width = a3;
    v113.size.height = v71;
    MinX = CGRectGetMinX(v113);
    v91 = v99;
    v114.origin.x = v99;
    v114.origin.y = v76;
    v114.size.width = v78;
    v92 = v98;
    v114.size.height = v98;
    v121.origin.x = MinX;
    v104 = v90;
    v121.origin.y = v90;
    v87 = v58 * 5.0 + 156.0 + 25.0 + 25.0;
    v121.size.width = v87;
    v121.size.height = v89;
    v115 = CGRectUnion(v114, v121);
    Width = CGRectGetWidth(v115);
    v116.origin.x = v91;
    v116.origin.y = v76;
    v116.size.width = v78;
    v116.size.height = v92;
    if (CGRectGetWidth(v116) >= Width)
    {
      goto LABEL_38;
    }

    if (MinX < 60.0)
    {
      MinX = 60.0;
    }

    v117.origin.x = MinX;
    v117.origin.y = v104;
    v117.size.width = v87;
    v117.size.height = v89;
    MaxX = CGRectGetMaxX(v117);
    v118.origin.x = v91;
    v118.origin.y = v76;
    v118.size.width = v78;
    v118.size.height = v92;
    if (CGRectGetMaxX(v118) + -60.0 >= MaxX)
    {
LABEL_38:
      v84 = v104;
    }

    else
    {
      v119.origin.x = MinX;
      v95 = v104;
      v119.origin.y = v104;
      v119.size.width = v87;
      v119.size.height = v89;
      v103 = CGRectGetMaxX(v119);
      v120.origin.x = v91;
      v120.origin.y = v76;
      v120.size.width = v78;
      v120.size.height = v92;
      MinX = MinX + CGRectGetMaxX(v120) + -60.0 - v103;
      v84 = v95;
    }
  }

  result = *&v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
  if (result)
  {
    return [result setFrame:{MinX, v84, v87, v89}];
  }

  return result;
}

void sub_10001F67C()
{
  v1 = *&v0[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
  if (!v1)
  {
    return;
  }

  v2 = [v1 visibleSupplementaryViewsOfKind:UICollectionElementKindSectionHeader];
  sub_10001A2A8(0, &unk_1000BBD10, UICollectionReusableView_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
LABEL_21:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_22:

    return;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_4:
  v5 = 0;
  v24 = &v0[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
  v6 = v3 & 0xC000000000000001;
  v25 = v3 & 0xFFFFFFFFFFFFFF8;
  v22 = v3 & 0xC000000000000001;
  v23 = v3;
  while (1)
  {
    if (v6)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v25 + 16))
      {
        goto LABEL_20;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    type metadata accessor for DOCSBFolderCollectionHeaderViewIconStyle();
    v10 = swift_dynamicCastClass();
    if (!v10)
    {
      goto LABEL_6;
    }

    v11 = v10;
    v12 = v24[1];
    v0 = OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_iconSize;
    *(v10 + OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_iconSize) = v12;
    *(v10 + OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_openInImageSize) = v12 * 0.87;
    v13 = *(v10 + OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_widthConstraint);
    if (!v13)
    {
      break;
    }

    [v13 setConstant:?];
    v14 = *(v11 + OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_buttonPlatterView);
    if (!v14)
    {
      goto LABEL_26;
    }

    v15 = *&v0[v11];
    *&v14[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_iconSize] = v15;
    v16 = OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_openInImageSize;
    *&v14[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_openInImageSize] = v15 * 0.87;
    v17 = *&v14[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_visualEffectView];
    if (v17)
    {
      v18 = v4;
      v0 = v17;
      v19 = v14;
      v20 = [v0 layer];
      [v20 setCornerRadius:*&v14[v16] * 0.5];

      v21 = *&v19[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_widthConstraint];
      if (!v21)
      {
        goto LABEL_27;
      }

      [v21 setConstant:*&v14[v16]];
      [v19 setNeedsUpdateConstraints];

      v4 = v18;
      v6 = v22;
      v3 = v23;
    }

    [v11 setNeedsUpdateConstraints];
LABEL_6:

    ++v5;
    if (v9 == v4)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_10001F960(uint64_t a1)
{
  v2 = v1;
  v72 = type metadata accessor for Logger();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IndexPath();
  v85 = *(v6 - 8);
  v86 = v6;
  __chkstk_darwin(v6);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v70 - v11;
  v73 = v2;
  v81 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView;
  v13 = [*&v2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] subviews];
  v80 = sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v74 = v14;
  v70 = v5;
  if (v14 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v16 = 0;
    v78 = v74 & 0xFFFFFFFFFFFFFF8;
    v79 = v74 & 0xC000000000000001;
    v76 = v8;
    v77 = v74 + 32;
    v17 = a1 + 56;
    v83 = v85 + 8;
    v84 = v85 + 16;
    v75 = i;
    while (v79)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v20 = __OFADD__(v16, 1);
      v21 = v16 + 1;
      if (v20)
      {
        goto LABEL_24;
      }

LABEL_9:
      v87 = v19;
      v82 = v21;
      v22 = 1 << *(a1 + 32);
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v24 = v23 & *(a1 + 56);
      v25 = (v22 + 63) >> 6;
      v26 = a1;

      v8 = 0;
      do
      {
        if (!v24)
        {
          a1 = v26;
          while (1)
          {
            v27 = (v8 + 1);
            if (__OFADD__(v8, 1))
            {
              goto LABEL_25;
            }

            if (v27 >= v25)
            {

              v18 = v87;
              [v87 removeFromSuperview];
              goto LABEL_5;
            }

            v24 = *(v17 + 8 * v27);
            ++v8;
            if (v24)
            {
              v8 = v27;
              goto LABEL_20;
            }
          }
        }

        v27 = v8;
        a1 = v26;
LABEL_20:
        v28 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v29 = v28 | (v27 << 6);
        v30 = *(a1 + 48);
        v31 = v85;
        v32 = v86;
        (*(v85 + 16))(v12, v30 + *(v85 + 72) * v29, v86);
        v33 = IndexPath.item.getter();
        v34 = [v87 tag];
        (*(v31 + 8))(v12, v32);
      }

      while (v33 != v34);
      a1 = v26;

      v18 = v87;
LABEL_5:

      v8 = v76;
      v16 = v82;
      if (v82 == v75)
      {
        goto LABEL_28;
      }
    }

    if (v16 >= *(v78 + 16))
    {
      goto LABEL_26;
    }

    v19 = *(v77 + 8 * v16);
    v20 = __OFADD__(v16, 1);
    v21 = v16 + 1;
    if (!v20)
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_28:

  v35 = *(a1 + 16);
  if (v35)
  {
    v36 = sub_10000DC0C(*(a1 + 16), 0);
    sub_10003A558(&v89, &v36[(*(v85 + 80) + 32) & ~*(v85 + 80)], v35, a1);
    v38 = v37;
    v39 = v89;

    sub_100042A9C(v39);
    v40 = v86;
    if (v38 == v35)
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  v36 = _swiftEmptyArrayStorage;
  v40 = v86;
LABEL_32:
  v89 = v36;
  sub_100038140(&v89);
  v41 = v73;
  v84 = v89;
  v42 = v89[2];
  if (v42)
  {
    v43 = v85 + 16;
    v87 = *(v85 + 16);
    v44 = v84 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v85 = *(v85 + 72);
    v45 = (v43 - 8);
    (v87)(v8, v44, v40);
    while (1)
    {
      v48 = v41;
      v49 = [*&v41[v81] subviews];
      v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      __chkstk_darwin(v51);
      *(&v70 - 2) = v8;
      v52 = sub_100020560(sub_100042AA4, (&v70 - 4), v50);

      if (v52)
      {
      }

      else
      {
        v46 = IndexPath.item.getter();
        sub_100020188(v8, v46, v48);
      }

      v41 = v48;
      v47 = v86;
      (*v45)(v8, v86);
      v44 += v85;
      if (!--v42)
      {
        break;
      }

      (v87)(v8, v44, v47);
    }
  }

  v53 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView;
  v54 = *&v41[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
  if (v54)
  {
    v55 = *(v84 + 16);
    v56 = v54;

    [v56 setHidden:v55 != 0];

    v41 = v73;
  }

  else
  {
  }

  v57 = v72;
  v58 = v71;
  v59 = v70;
  static Logger.UI.getter();
  v60 = v41;
  v61 = v41;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *v64 = 136315394;
    *(v64 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092C40, &v89);
    *(v64 + 12) = 2080;
    v88[0] = *&v61[v53];
    v65 = v88[0];
    sub_10000589C(&qword_1000BCA90, &qword_100090B70);
    v66 = String.init<A>(describing:)();
    v68 = sub_100037B98(v66, v67, &v89);

    *(v64 + 14) = v68;
    _os_log_impl(&_mh_execute_header, v62, v63, "%s expandedStateChevronView: %s", v64, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v58 + 8))(v59, v57);
}

uint64_t sub_1000200DC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void sub_100020188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView);
  if (!v3)
  {
    __break(1u);
    return;
  }

  v6 = v3;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  rect_8 = [v6 cellForItemAtIndexPath:isa];

  if (rect_8)
  {
    type metadata accessor for DOCSBCollectionViewCellFan(0);
    if (swift_dynamicCastClass())
    {
      v8 = rect_8;
      v9 = DOCItemCollectionCell.thumbnailView.getter();
      v10 = [v9 snapshotViewAfterScreenUpdates:1];

      if (!v10)
      {
        return;
      }

      v11 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView;
      [*(a3 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView) frame];
      v13 = v12;
      rect = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [v10 frame];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v44.origin.x = v13;
      v44.origin.y = v15;
      v44.size.width = v17;
      v44.size.height = v19;
      Width = CGRectGetWidth(v44);
      v45.origin.x = v21;
      v45.origin.y = v23;
      v45.size.width = v25;
      v45.size.height = v27;
      rect_8a = (Width - CGRectGetWidth(v45)) * 0.5;
      v46.origin.x = rect;
      v46.origin.y = v15;
      v46.size.width = v17;
      v46.size.height = v19;
      Height = CGRectGetHeight(v46);
      v47.origin.x = v21;
      v47.origin.y = v23;
      v47.size.width = v25;
      v47.size.height = v27;
      v30 = (Height - CGRectGetHeight(v47)) * 0.5;
      v48.origin.x = v21;
      v48.origin.y = v23;
      v48.size.width = v25;
      v48.size.height = v27;
      v31 = CGRectGetWidth(v48);
      v49.origin.x = v21;
      v49.origin.y = v23;
      v49.size.width = v25;
      v49.size.height = v27;
      [v10 setFrame:{rect_8a, v30, v31, CGRectGetHeight(v49)}];
      [v10 setTag:a2];
      [*(a3 + v11) insertSubview:v10 atIndex:0];
      v32 = objc_opt_self();
      sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_10008F960;
      v34 = [v10 centerXAnchor];
      v35 = [*(a3 + v11) centerXAnchor];
      v36 = [v34 constraintEqualToAnchor:v35];

      *(v33 + 32) = v36;
      v37 = [v10 centerYAnchor];
      v38 = [*(a3 + v11) centerYAnchor];
      v39 = [v37 constraintEqualToAnchor:v38];

      *(v33 + 40) = v39;
      sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
      rect_8 = Array._bridgeToObjectiveC()().super.isa;

      [v32 activateConstraints:rect_8];
    }
  }
}

void *sub_100020560(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

id sub_100020674(double a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *&v21.a = swift_slowAlloc();
    *v10 = 136316162;
    *(v10 + 4) = sub_100037B98(0xD000000000000025, 0x8000000100092C10, &v21);
    *(v10 + 12) = 2048;
    *(v10 + 14) = a1;
    *(v10 + 22) = 2048;
    *(v10 + 24) = a1 * 0.1 + 0.9;
    *(v10 + 32) = 2048;
    *(v10 + 34) = a1 * 0.5 + 0.5;
    *(v10 + 42) = 2080;
    v20.a = *&v7[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
    v11 = *&v20.a;
    sub_10000589C(&qword_1000BCA90, &qword_100090B70);
    v12 = String.init<A>(describing:)();
    v19 = v3;
    v14 = sub_100037B98(v12, v13, &v21);

    *(v10 + 44) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s progress: %f alpha: %f scale: %f expandedStateChevronView: %s", v10, 0x34u);
    swift_arrayDestroy();

    (*(v4 + 8))(v6, v19);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v15 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView;
  result = [*&v7[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView] setAlpha:a1 * 0.1 + 0.9];
  v17 = *&v7[v15];
  if (v17)
  {
    v21.a = 1.0;
    v21.b = 0.0;
    v21.c = 0.0;
    v21.d = 1.0;
    v21.tx = 0.0;
    v21.ty = 0.0;
    CGAffineTransformScale(&v20, &v21, a1 * 0.5 + 0.5, a1 * 0.5 + 0.5);
    v21 = v20;
    return [v17 setTransform:&v21];
  }

  return result;
}

void sub_100020968()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_100037B98(0xD000000000000019, 0x8000000100092BF0, v18);
    *(v8 + 12) = 2080;
    v17 = *&v5[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
    v9 = v17;
    sub_10000589C(&qword_1000BCA90, &qword_100090B70);
    v10 = String.init<A>(describing:)();
    v12 = sub_100037B98(v10, v11, v18);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s expandedStateChevronView: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  (*(v2 + 8))(v4, v1);
  v13 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView;
  v14 = *&v5[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
  if (v14)
  {
    [v14 setAlpha:1.0];
    v14 = *&v5[v13];
    if (v14)
    {
      v18[0] = 0x3FF0000000000000;
      v18[1] = 0;
      v18[2] = 0;
      v18[3] = 0x3FF0000000000000;
      v18[4] = 0;
      v18[5] = 0;
      [v14 setTransform:v18];
      v14 = *&v5[v13];
    }
  }

  [v14 removeFromSuperview];
  v15 = *&v5[v13];
  *&v5[v13] = 0;
  sub_10001B2B4(v15);
}

void sub_100020BF0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_100037B98(0xD00000000000001ALL, 0x8000000100092BD0, v18);
    *(v8 + 12) = 2080;
    v17 = *&v5[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
    v9 = v17;
    sub_10000589C(&qword_1000BCA90, &qword_100090B70);
    v10 = String.init<A>(describing:)();
    v12 = sub_100037B98(v10, v11, v18);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s hostIconSnapshotView: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  (*(v2 + 8))(v4, v1);
  v13 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView;
  v14 = *&v5[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
  if (v14)
  {
    [v14 setAlpha:1.0];
    v14 = *&v5[v13];
    if (v14)
    {
      v18[0] = 0x3FF0000000000000;
      v18[1] = 0;
      v18[2] = 0;
      v18[3] = 0x3FF0000000000000;
      v18[4] = 0;
      v18[5] = 0;
      [v14 setTransform:v18];
      v14 = *&v5[v13];
    }
  }

  [v14 removeFromSuperview];
  v15 = *&v5[v13];
  *&v5[v13] = 0;
  sub_10001B5FC(v15);
}

void sub_100020E78(int a1, void *a2, void (*a3)(char *, uint64_t), CGFloat a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v245 = a2;
  v226 = type metadata accessor for DispatchWorkItemFlags();
  v225 = *(v226 - 8);
  __chkstk_darwin(v226);
  v223 = &v214 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for DispatchQoS();
  v222 = *(v224 - 8);
  __chkstk_darwin(v224);
  v221 = &v214 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = type metadata accessor for DispatchTime();
  v220 = *(v233 - 8);
  __chkstk_darwin(v233);
  v218 = &v214 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v219 = &v214 - v26;
  v27 = type metadata accessor for URL();
  v241 = *(v27 - 8);
  __chkstk_darwin(v27);
  v244 = &v214 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = COERCE_DOUBLE(type metadata accessor for UUID());
  v239 = *(*&v240 - 8);
  __chkstk_darwin(*&v240);
  *&v238 = &v214 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Logger();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v229 = &v214 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v227 = &v214 - v34;
  __chkstk_darwin(v35);
  v228 = &v214 - v36;
  __chkstk_darwin(v37);
  *&v247 = &v214 - v38;
  __chkstk_darwin(v39);
  *&v246 = &v214 - v40;
  __chkstk_darwin(v41);
  v43 = &v214 - v42;
  v44 = &v11[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
  *v44 = a4;
  v44[1] = a5;
  v44[2] = a6;
  v44[3] = a7;
  *(v44 + 32) = 0;
  v234 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView;
  [*&v11[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] setFrame:{a4, a5, a6, a7}];
  v45 = &v11[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockFrame];
  *v45 = a8;
  v45[1] = a9;
  v45[2] = a10;
  v45[3] = a11;
  *(v45 + 32) = 0;
  static Logger.UI.getter();
  v235 = v11;
  v46 = v11;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();

  v49 = os_log_type_enabled(v47, v48);
  v50 = &unk_1000BF000;
  v236 = a1;
  v248 = v30;
  v237 = v27;
  if (v49)
  {
    v51 = swift_slowAlloc();
    v230 = COERCE_DOUBLE(swift_slowAlloc());
    v256 = v230;
    *v51 = 136316674;
    *(v51 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092B70, &v256);
    LODWORD(v217) = v48;
    *(v51 + 12) = 2080;
    v243 = a3;
    v52 = a1;
    v54 = *&v46[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v53 = *&v46[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v55 = sub_100037B98(v54, v53, &v256);

    *(v51 + 14) = v55;
    *(v51 + 22) = 2080;
    LOBYTE(aBlock) = v46[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    v56 = String.init<A>(describing:)();
    v58 = sub_100037B98(v56, v57, &v256);

    *(v51 + 24) = v58;
    *(v51 + 32) = 2080;
    aBlock = a4;
    v250 = a5;
    v251 = a6;
    v252 = a7;
    type metadata accessor for CGRect(0);
    v59 = String.init<A>(describing:)();
    v61 = v31;
    v62 = sub_100037B98(v59, v60, &v256);

    *(v51 + 34) = v62;
    *(v51 + 42) = 2080;
    aBlock = a8;
    v250 = a9;
    v251 = a10;
    v252 = a11;
    v63 = String.init<A>(describing:)();
    v65 = sub_100037B98(v63, v64, &v256);

    *(v51 + 44) = v65;
    *(v51 + 52) = 1024;
    *(v51 + 54) = v52 & 1;
    *(v51 + 58) = 2080;
    v66 = v46;
    v67 = [v66 description];
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    v31 = v61;
    v50 = &unk_1000BF000;
    v71 = v68;
    a3 = v243;
    v72 = sub_100037B98(v71, v70, &v256);

    *(v51 + 60) = v72;
    _os_log_impl(&_mh_execute_header, v47, v217, "%s identifier: %s transitionState: %s iconFrame: %s dockFrame: %s animated: %{BOOL}d nodes count:%s", v51, 0x44u);
    swift_arrayDestroy();

    v73 = *(v31 + 8);
    v30 = v248;
    v73(v43, v248);
  }

  else
  {

    v73 = *(v31 + 8);
    v73(v43, v30);
  }

  v74 = swift_allocObject();
  v75 = v245;
  v74[2] = v46;
  v74[3] = v75;
  v245 = v74;
  v74[4] = a3;
  v76 = v50[13];
  v77 = v46[v76];
  v79 = v246;
  v78 = v247;
  if ((v77 - 1) >= 2)
  {
    v242 = v31;
    v243 = v73;
    if (v77 == 3)
    {
      v92 = v30;
      v93 = v46;

      static Logger.UI.getter();
      v94 = v93;
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        aBlock = COERCE_DOUBLE(swift_slowAlloc());
        *v97 = 136315650;
        *(v97 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092B70, &aBlock);
        v98 = v46;
        v99 = v92;
        *(v97 + 12) = 2080;
        v100 = *&v94[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
        v101 = *&v94[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

        v102 = sub_100037B98(v100, v101, &aBlock);

        *(v97 + 14) = v102;
        *(v97 + 22) = 2080;
        v103 = v99;
        v46 = v98;
        LOBYTE(v256) = v98[v76];
        v104 = String.init<A>(describing:)();
        v106 = sub_100037B98(v104, v105, &aBlock);

        *(v97 + 24) = v106;
        _os_log_impl(&_mh_execute_header, v95, v96, "%s identifier: %s transitionState: %s is in the middle of a collapse animation. Retargeting animation", v97, 0x20u);
        swift_arrayDestroy();

        v107 = v247;
        v108 = v103;
      }

      else
      {

        v107 = v78;
        v108 = v92;
      }

      v243(*&v107, v108);
    }

    else
    {
      v109 = v46;
    }

    v110 = v238;
    UUID.init()();
    v111 = UUID.uuidString.getter();
    v113 = v112;
    (*(*&v239 + 8))(COERCE_CGFLOAT(*&v110), COERCE_DOUBLE(*&v240));
    v114 = &v46[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    v216 = v111;
    *v114 = v111;
    v114[1] = v113;

    sub_10008AED8();
    v115 = *&v46[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
    if (v115)
    {
      v116 = v115;
      [v116 setFrame:{a4, a5, a6, a7}];
      [v116 setAlpha:1.0];
      Strong = swift_unknownObjectWeakLoadStrong();
      [Strong addSubview:v116];
    }

    v230 = a8;
    v238 = a9;
    v239 = a10;
    v240 = a11;
    v118 = *&v46[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
    if (v118)
    {
      v119 = v118;
      [v119 setFrame:{a4, a5, a6, a7}];
      [v119 setAlpha:0.0];
      v120 = swift_unknownObjectWeakLoadStrong();
      [v120 addSubview:v119];
    }

    v247 = a4;
    v121 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
    v122 = *&v46[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
    v123 = a6 + 12.0;
    v124 = a7 + 24.0;
    v125 = &v46[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
    v126 = v46[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
    v232 = a6;
    v217 = v113;
    v231 = a7;
    if (v126)
    {
      v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v127 & 1) == 0)
      {
        v123 = a6;
        v124 = a7;
      }
    }

    else
    {
    }

    v246 = a5;
    sub_10001C128();
    sub_100022BB4();
    v128 = swift_unknownObjectWeakLoadStrong();
    if (v128)
    {
      v129 = v128;
      [v128 bounds];
      v131 = v130;
      v133 = v132;
      v135 = v134;
      v137 = v136;
    }

    else
    {
      v131 = 0.0;
      v133 = 0.0;
      v135 = 0.0;
      v137 = 0.0;
    }

    if (*v125 == 1)
    {
      sub_10001E4F0();
      v139 = v246;
      v138 = v247;
      v257.origin.x = v247;
      v257.origin.y = v246;
      v140 = v232;
      v257.size.width = v232;
      v141 = v231;
      v257.size.height = v231;
      CGRectGetMaxY(v257);
      v142 = v125[1];
      v258.origin.x = v138;
      v258.origin.y = v139;
      v258.size.width = v140;
      v258.size.height = v141;
      MidX = CGRectGetMidX(v258);
      MinX = sub_1000429DC(MidX + v142 * -0.5);
      v146 = v145;
      v148 = v147;
      v150 = v149;
      v151 = v241;
      goto LABEL_36;
    }

    v150 = v124 * 4.0 + 54.0 + 36.0 + 26.0;
    v259.origin.x = v230;
    v259.origin.y = v238;
    v259.size.width = v239;
    v259.size.height = v240;
    v152 = CGRectGetMinY(v259) - v150 + -15.0;
    v260.origin.y = v246;
    v260.origin.x = v247;
    v260.size.width = v232;
    v260.size.height = v231;
    MinX = CGRectGetMinX(v260);
    v261.origin.x = v131;
    v261.origin.y = v133;
    v261.size.width = v135;
    v261.size.height = v137;
    v268.origin.x = MinX;
    v268.origin.y = v152;
    v215 = v123 * 5.0 + 156.0 + 25.0 + 25.0;
    v268.size.width = v215;
    v268.size.height = v150;
    v262 = CGRectUnion(v261, v268);
    Width = CGRectGetWidth(v262);
    v263.origin.x = v131;
    v263.origin.y = v133;
    v263.size.width = v135;
    v263.size.height = v137;
    if (CGRectGetWidth(v263) >= Width)
    {
      v139 = v246;
      v138 = v247;
      v141 = v231;
      v157 = v232;
      v151 = v241;
    }

    else
    {
      if (MinX < 60.0)
      {
        MinX = 60.0;
      }

      v264.origin.x = MinX;
      v264.origin.y = v152;
      v264.size.width = v215;
      v264.size.height = v150;
      MaxX = CGRectGetMaxX(v264);
      v265.origin.x = v131;
      v265.origin.y = v133;
      v265.size.width = v135;
      v265.size.height = v137;
      v155 = CGRectGetMaxX(v265);
      v151 = v241;
      if (v155 + -60.0 < MaxX)
      {
        v266.origin.x = MinX;
        v266.origin.y = v152;
        v156 = v215;
        v266.size.width = v215;
        v266.size.height = v150;
        v214 = CGRectGetMaxX(v266);
        v267.origin.x = v131;
        v267.origin.y = v133;
        v267.size.width = v135;
        v267.size.height = v137;
        MinX = MinX + CGRectGetMaxX(v267) + -60.0 - v214;
        v139 = v246;
        v138 = v247;
        v157 = v232;
        v148 = v156;
        v141 = v231;
LABEL_35:
        v146 = v152;
        v140 = v157;
LABEL_36:
        v158 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer;
        v159 = *&v46[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
        if (v159)
        {
          [v159 setFrame:{MinX, v146, v148, v150}];
          v160 = swift_unknownObjectWeakLoadStrong();
          if (!v160)
          {
            goto LABEL_40;
          }

          if (*&v46[v158])
          {
            v161 = v160;
            [v160 addSubview:?];

LABEL_40:
            v162 = swift_unknownObjectWeakLoadStrong();
            if (v162)
            {
              v163 = v162;
              [v162 addSubview:*&v235[v234]];
            }

            v164 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_directoryURL;
            swift_beginAccess();
            v165 = v237;
            (*(v151 + 16))(v244, &v46[v164], v237);
            v166 = URL.path(percentEncoded:)(1);
            if (v166._countAndFlagsBits == static String._unconditionallyBridgeFromObjectiveC(_:)() && v166._object == v167)
            {

              (*(v151 + 8))(v244, v165);
            }

            else
            {
              v168 = _stringCompareWithSmolCheck(_:_:expecting:)();

              (*(v151 + 8))(v244, v165);
              if ((v168 & 1) == 0)
              {
LABEL_47:
                if (v122)
                {
                  v169 = v229;
                  static Logger.UI.getter();
                  v170 = v46;
                  v171 = Logger.logObject.getter();
                  v172 = static os_log_type_t.debug.getter();

                  if (os_log_type_enabled(v171, v172))
                  {
                    v173 = swift_slowAlloc();
                    aBlock = COERCE_DOUBLE(swift_slowAlloc());
                    *v173 = 136315394;
                    *(v173 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092B70, &aBlock);
                    *(v173 + 12) = 2080;
                    v255 = *&v46[v121];
                    v174 = v255;
                    sub_10000589C(&qword_1000BC440, &qword_100090B90);
                    v175 = String.init<A>(describing:)();
                    v177 = sub_100037B98(v175, v176, &aBlock);

                    *(v173 + 14) = v177;
                    _os_log_impl(&_mh_execute_header, v171, v172, "%s collectionView was %s already exists, opening immediately", v173, 0x16u);
                    swift_arrayDestroy();
                  }

                  v243(v169, v248);
                  *&v213 = v148;
                  *(&v213 + 1) = v150;
                  *&v212 = MinX;
                  *(&v212 + 1) = v146;
                  sub_10003C9EC(v170, v216, v217, v236 & 1, sub_10004297C, v245, v138, v139, v140, v141, v230, v238, v239, v240, v178, v179, v212, v213);

LABEL_54:

                  return;
                }

                v193 = v227;
                static Logger.UI.getter();
                v194 = Logger.logObject.getter();
                v195 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v194, v195))
                {
                  v196 = swift_slowAlloc();
                  v197 = swift_slowAlloc();
                  aBlock = *&v197;
                  *v196 = 136315138;
                  *(v196 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092B70, &aBlock);
                  _os_log_impl(&_mh_execute_header, v194, v195, "%s collectionView was nil, creating it and then waiting", v196, 0xCu);
                  sub_1000064E0(v197);
                }

                v243(v193, v248);
                v198 = *&v46[v158];
                if (v198)
                {
                  [v198 setAlpha:0.0];
                  sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
                  v247 = COERCE_DOUBLE(static OS_dispatch_queue.main.getter());
                  v199 = v218;
                  static DispatchTime.now()();
                  v200 = v219;
                  + infix(_:_:)();
                  v248 = *(v220 + 8);
                  v248(v199, v233);
                  v201 = swift_allocObject();
                  *(v201 + 16) = v46;
                  *(v201 + 24) = MinX;
                  *(v201 + 32) = v146;
                  *(v201 + 40) = v148;
                  *(v201 + 48) = v150;
                  v202 = v217;
                  *(v201 + 56) = v216;
                  *(v201 + 64) = v202;
                  *(v201 + 72) = v236 & 1;
                  v203 = v245;
                  *(v201 + 80) = sub_10004297C;
                  *(v201 + 88) = v203;
                  *(v201 + 96) = v138;
                  *(v201 + 104) = v139;
                  *(v201 + 112) = v140;
                  *(v201 + 120) = v141;
                  v204 = v238;
                  *(v201 + 128) = v230;
                  *(v201 + 136) = v204;
                  v205 = v240;
                  *(v201 + 144) = v239;
                  *(v201 + 152) = v205;
                  v253 = sub_100043468;
                  v254 = v201;
                  aBlock = COERCE_DOUBLE(_NSConcreteStackBlock);
                  *&v250 = 1107296256;
                  v251 = COERCE_DOUBLE(sub_10000D508);
                  v252 = COERCE_DOUBLE(&unk_1000AEDF0);
                  v206 = _Block_copy(&aBlock);
                  v207 = v46;

                  v208 = v221;
                  static DispatchQoS.unspecified.getter();
                  aBlock = COERCE_DOUBLE(_swiftEmptyArrayStorage);
                  sub_1000422FC(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
                  sub_10000589C(&unk_1000BCE30, &unk_100090E70);
                  sub_100043240(&qword_1000BC410, &unk_1000BCE30, &unk_100090E70, &protocol conformance descriptor for [A]);
                  v209 = v223;
                  v210 = v226;
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  v211 = v247;
                  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
                  _Block_release(v206);

                  (*(v225 + 8))(v209, v210);
                  (*(v222 + 8))(v208, v224);
                  v248(v200, v233);
                  return;
                }

LABEL_61:
                __break(1u);
                return;
              }
            }

            if (!*&v46[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource])
            {
              v180 = v228;
              static Logger.UI.getter();
              v181 = Logger.logObject.getter();
              v182 = static os_log_type_t.debug.getter();
              v183 = os_log_type_enabled(v181, v182);
              v184 = v217;
              if (v183)
              {
                v185 = swift_slowAlloc();
                v186 = swift_slowAlloc();
                aBlock = *&v186;
                *v185 = 136315138;
                *(v185 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092B70, &aBlock);
                _os_log_impl(&_mh_execute_header, v181, v182, "%s trying to present Downloads folder but placeholder URL hasn't resolved yet. Force resolution and creation of Downloads folder now ", v185, 0xCu);
                sub_1000064E0(v186);
              }

              v243(v180, v248);
              v187 = v236;
              v188 = swift_allocObject();
              *(v188 + 16) = v46;
              *(v188 + 24) = MinX;
              *(v188 + 32) = v146;
              *(v188 + 40) = v148;
              *(v188 + 48) = v150;
              *(v188 + 56) = v216;
              *(v188 + 64) = v184;
              *(v188 + 72) = v187 & 1;
              v189 = v245;
              *(v188 + 80) = sub_10004297C;
              *(v188 + 88) = v189;
              *(v188 + 96) = v138;
              *(v188 + 104) = v139;
              *(v188 + 112) = v140;
              *(v188 + 120) = v141;
              v190 = v238;
              *(v188 + 128) = v230;
              *(v188 + 136) = v190;
              v191 = v240;
              *(v188 + 144) = v239;
              *(v188 + 152) = v191;
              v192 = v46;

              sub_100028CBC(1, sub_10004298C, v188);

              goto LABEL_54;
            }

            goto LABEL_47;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_61;
      }

      v139 = v246;
      v138 = v247;
      v141 = v231;
      v157 = v232;
    }

    v148 = v215;
    goto LABEL_35;
  }

  v80 = v46;

  static Logger.UI.getter();
  v81 = v80;
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v242 = v31;
    aBlock = *&v85;
    *v84 = 136315650;
    *(v84 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092B70, &aBlock);
    *(v84 + 12) = 2080;
    v243 = v73;
    v86 = *&v81[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v87 = *&v81[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v88 = sub_100037B98(v86, v87, &aBlock);

    *(v84 + 14) = v88;
    *(v84 + 22) = 2080;
    LOBYTE(v256) = v46[v76];
    v89 = String.init<A>(describing:)();
    v91 = sub_100037B98(v89, v90, &aBlock);

    *(v84 + 24) = v91;
    _os_log_impl(&_mh_execute_header, v82, v83, "%s identifier: %s transitionState: %s is expanded. Ignoring request to Open", v84, 0x20u);
    swift_arrayDestroy();

    v243(*&v79, v248);
  }

  else
  {

    v73(*&v79, v30);
  }
}

uint64_t sub_1000228C0(int a1, _BYTE *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState] = 2;
    sub_10001B944(v12);
    v13 = &a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    *v13 = 0;
    v13[1] = 0;

    *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = 0;

    *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = 0;
  }

  static Logger.UI.getter();
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    HIDWORD(v27) = a1;
    v18 = v17;
    v32 = swift_slowAlloc();
    *v18 = 136315906;
    *(v18 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092B70, &v32);
    v28 = v8;
    v29 = a4;
    *(v18 + 12) = 2080;
    v30 = a3;
    v19 = *&v14[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v20 = *&v14[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v21 = sub_100037B98(v19, v20, &v32);

    *(v18 + 14) = v21;
    *(v18 + 22) = 2080;
    v31 = v14[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    v22 = String.init<A>(describing:)();
    v24 = sub_100037B98(v22, v23, &v32);
    a3 = v30;

    *(v18 + 24) = v24;
    *(v18 + 32) = 1024;
    *(v18 + 34) = BYTE4(v27) & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s animationCompletion identifier: %s transitionState: %s finished: %{BOOL}d", v18, 0x26u);
    swift_arrayDestroy();

    v25 = (*(v9 + 8))(v11, v28);
  }

  else
  {

    v25 = (*(v9 + 8))(v11, v8);
  }

  return a3(v25);
}

void sub_100022BB4()
{
  v126 = type metadata accessor for DOCItemCollectionViewController.DiffableReloadType();
  v125 = *(v126 - 1);
  __chkstk_darwin(v126);
  v124 = &v113[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2 = type metadata accessor for DOCCollectionSection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v113[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v119 = &v113[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v120 = &v113[-v10];
  __chkstk_darwin(v11);
  v121 = &v113[-v12];
  __chkstk_darwin(v13);
  v15 = &v113[-v14];
  static Logger.UI.getter();
  v16 = v0;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  v19 = os_log_type_enabled(v17, v18);
  v129 = v6;
  v130 = v5;
  v128 = v7;
  if (v19)
  {
    v127 = v2;
    v123 = v3;
    v20 = swift_slowAlloc();
    *&v132 = swift_slowAlloc();
    *v20 = 136315906;
    *(v20 + 4) = sub_100037B98(0xD000000000000020, 0x8000000100092AD0, &v132);
    *(v20 + 12) = 2080;
    v21 = *&v16[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v22 = *&v16[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v23 = sub_100037B98(v21, v22, &v132);

    *(v20 + 14) = v23;
    *(v20 + 22) = 2080;
    v24 = *&v16[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
    if (v24)
    {
      v25 = *(*(v24 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
      v26 = v25;
    }

    else
    {
      v25 = 0;
    }

    v135[0] = v25;
    sub_10000589C(&qword_1000BC3E8, &qword_100090B78);
    v27 = String.init<A>(describing:)();
    v29 = sub_100037B98(v27, v28, &v132);

    *(v20 + 24) = v29;
    *(v20 + 32) = 2080;
    sub_10001BBE4(v135);
    sub_10000589C(&qword_1000BC450, &unk_100090BA0);
    v30 = String.init<A>(describing:)();
    v32 = sub_100037B98(v30, v31, &v132);

    *(v20 + 34) = v32;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s identifier: %s nodeCollection: %s collectionViewDatasource: %s", v20, 0x2Au);
    swift_arrayDestroy();

    v122 = *(v128 + 8);
    v122(v15, v129);
    v3 = v123;
    v2 = v127;
  }

  else
  {

    v122 = *(v7 + 8);
    v122(v15, v6);
  }

  v33 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource;
  v34 = *&v16[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
  if (v34)
  {
    v35 = *(*(v34 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    if (v35)
    {

      v36 = v35;
      dispatch thunk of DOCNodeCollection.nodes.getter();
    }
  }

  type metadata accessor for DOCCollectionNodes();
  swift_allocObject();
  v37 = DOCCollectionNodes.init(nodes:isExpanded:)();

  v38 = v130;
  DOCCollectionSection.init(identifier:localizedTitle:contents:)();
  v39 = *&v16[v33];
  if (!v39)
  {

    (*(v3 + 8))(v38, v2);
    return;
  }

  v40 = *(*(v39 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
  if (!v40)
  {
    (*(v3 + 8))(v38, v2);

    return;
  }

  v41 = v40;
  v42 = sub_10001BBE4(&v132);
  if (!v133)
  {
    (*(v3 + 8))(v38, v2, v42);

    sub_100006390(&v132, &qword_1000BC450, &unk_100090BA0);
    return;
  }

  sub_1000427E4(&v132, v135);
  v123 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
  v43 = *&v16[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
  v118 = v37;
  if (v43 && (v44 = *&v16[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer]) != 0)
  {
    v45 = v44;
    v46 = v43;
    if (([v45 isHidden] & 1) != 0 || (v47 = objc_msgSend(v45, "superview")) == 0)
    {

      v114 = 0;
      v50 = v45;
    }

    else
    {

      [v45 alpha];
      v49 = v48;

      if (v49 <= 0.0)
      {
        v114 = 0;
        v50 = v46;
      }

      else
      {
        v114 = sub_100063B3C();
        v50 = v45;
        v45 = v46;
      }
    }

    v51 = v41;
    v52 = v2;
  }

  else
  {
    v51 = v41;
    v52 = v2;
    v114 = 0;
  }

  v117 = v136;
  v115 = v137;
  v116 = sub_100042398(v135, v136);
  sub_10000589C(&qword_1000BC4D0, &qword_100090BE0);
  v53 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_10008F930;
  v55 = *(v3 + 16);
  v56 = v54 + v53;
  v57 = v130;
  v127 = v52;
  v55(v56, v130, v52);
  v58 = v124;
  *v124 = 0;
  v59 = v125;
  v60 = v126;
  (*(v125 + 104))(v58, enum case for DOCItemCollectionViewController.DiffableReloadType.diff(_:), v126);
  v133 = type metadata accessor for DOCNodeCollection();
  v134 = &protocol witness table for DOCNodeCollection;
  *&v132 = v51;
  v131[3] = type metadata accessor for DOCSBFolderPresentationController(0);
  v131[4] = sub_1000422FC(&qword_1000BC4D8, type metadata accessor for DOCSBFolderPresentationController, &unk_100090A88);
  v131[0] = v16;
  v61 = v16;
  v62 = v51;
  dispatch thunk of DOCNodeDiffableDataSourceProtocol.updateSnapshot(for:using:disclosureProvider:sectionLimiter:animated:completion:)();

  (*(v59 + 8))(v58, v60);
  sub_1000064E0(v131);
  sub_1000064E0(&v132);
  v63 = *&v16[v123];
  if (!v63)
  {
    (*(v3 + 8))(v57, v127);

    goto LABEL_41;
  }

  v126 = v62;
  v64 = v127;
  if ((v61[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration] & 1) == 0)
  {
    v68 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v69 = v63;

    v66 = v64;
    v67 = v121;
    if (v68)
    {
      goto LABEL_30;
    }

    (*(v3 + 8))(v130, v64);

LABEL_41:

    goto LABEL_46;
  }

  v65 = v63;

  v66 = v64;
  v67 = v121;
LABEL_30:
  v123 = v3;
  v70 = v63;
  [v70 contentInset];
  v72 = v71;
  v74 = v73;
  v76 = v75;
  sub_10001E614();
  v78 = v77;
  [v70 contentInset];
  if (v78 == v79)
  {

    v80 = v120;
  }

  else
  {
    static Logger.UI.getter();
    v81 = v70;
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *&v132 = v85;
      *v84 = 136315650;
      *(v84 + 4) = sub_100037B98(0xD000000000000020, 0x8000000100092AD0, &v132);
      *(v84 + 12) = 2048;
      *(v84 + 14) = v78;
      *(v84 + 22) = 2048;
      [v81 contentInset];
      *(v84 + 24) = v86;
      _os_log_impl(&_mh_execute_header, v82, v83, "%s _topContentInset: %f different than CV's top inset: %f", v84, 0x20u);
      sub_1000064E0(v85);
    }

    v122(v67, v129);
    v80 = v120;
    [v81 setContentInset:{v78, v72, v74, v76}];

    v87 = [v81 collectionViewLayout];
    [v87 invalidateLayout];

    [v81 layoutIfNeeded];
  }

  if (v114)
  {
    static Logger.UI.getter();
    v88 = v70;
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *&v132 = swift_slowAlloc();
      *v91 = 136315650;
      *(v91 + 4) = sub_100037B98(0xD000000000000020, 0x8000000100092AD0, &v132);
      *(v91 + 12) = 1024;
      *(v91 + 14) = 1;
      *(v91 + 18) = 2080;
      v92 = v88;
      v93 = [v92 description];
      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v95;

      v97 = v94;
      v66 = v64;
      v98 = sub_100037B98(v97, v96, &v132);

      *(v91 + 20) = v98;
      _os_log_impl(&_mh_execute_header, v89, v90, "%s wasPinnedToBottom: %{BOOL}d collectionView: %s pinning to bottom after layout", v91, 0x1Cu);
      swift_arrayDestroy();

      v99 = v120;
    }

    else
    {

      v99 = v80;
    }

    v122(v99, v129);
    v112 = v126;
    sub_100063768(0);

    goto LABEL_45;
  }

  v100 = v119;
  static Logger.UI.getter();
  v101 = v70;
  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v102, v103))
  {

    v122(v100, v129);
LABEL_45:
    (*(v123 + 8))(v130, v66);
    goto LABEL_46;
  }

  v104 = swift_slowAlloc();
  *&v132 = swift_slowAlloc();
  *v104 = 136315650;
  *(v104 + 4) = sub_100037B98(0xD000000000000020, 0x8000000100092AD0, &v132);
  *(v104 + 12) = 1024;
  *(v104 + 14) = 0;
  *(v104 + 18) = 2080;
  v105 = v101;
  v106 = [v105 description];
  v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v108 = v66;
  v110 = v109;

  v111 = sub_100037B98(v107, v110, &v132);

  *(v104 + 20) = v111;
  _os_log_impl(&_mh_execute_header, v102, v103, "%s wasPinnedToBottom: %{BOOL}d collectionView: %s NOT pinning to bottom after layout", v104, 0x1Cu);
  swift_arrayDestroy();

  v122(v119, v129);
  (*(v123 + 8))(v130, v108);
LABEL_46:
  sub_1000064E0(v135);
}

void sub_100023B94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v55 = a6;
  v53 = a5;
  v57 = a4;
  v49 = a3;
  v50 = a2;
  v56 = a15;
  v54 = a14;
  v51 = a12;
  v52 = a13;
  v26 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  __chkstk_darwin(v26);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v48 - v30;
  v48 = type metadata accessor for Logger();
  v32 = *(v48 - 8);
  __chkstk_darwin(v48);
  v34 = &v48 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  sub_100042774(a1, v31, &unk_1000BCA20, &qword_100090BC0);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v37 = 136315394;
    *(v37 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092B70, v58);
    *(v37 + 12) = 2080;
    sub_100042774(v31, v28, &unk_1000BCA20, &qword_100090BC0);
    v38 = String.init<A>(describing:)();
    v40 = v39;
    sub_100006390(v31, &unk_1000BCA20, &qword_100090BC0);
    v41 = sub_100037B98(v38, v40, v58);

    *(v37 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v35, v36, "%s resolving completed with url: %s. Starting observation and continue expanding folder", v37, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100006390(v31, &unk_1000BCA20, &qword_100090BC0);
  }

  (*(v32 + 8))(v34, v48);
  v42 = v50;
  sub_1000246B0();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = a8;
  *(v43 + 32) = a9;
  *(v43 + 40) = a10;
  *(v43 + 48) = a11;
  v44 = v57;
  *(v43 + 56) = v49;
  *(v43 + 64) = v44;
  *(v43 + 72) = v53 & 1;
  *(v43 + 80) = v55;
  *(v43 + 88) = a7;
  v45 = v52;
  *(v43 + 96) = v51;
  *(v43 + 104) = v45;
  v46 = v56;
  *(v43 + 112) = v54;
  *(v43 + 120) = v46;
  *(v43 + 128) = a17;
  *(v43 + 136) = a18;
  *(v43 + 144) = a19;
  *(v43 + 152) = a20;
  v47 = v42;

  DOCRunInMainThread(_:)();
}

uint64_t sub_100023F64(int a1, _BYTE *a2, uint64_t (*a3)(uint64_t))
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
    if (v11)
    {
      [v11 removeFromSuperview];
    }

    [*&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] removeFromSuperview];
    sub_100020968();
    sub_100020BF0();
    v12 = a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState] = 0;
    sub_10001B944(v12);
    v13 = &a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    *v13 = 0;
    v13[1] = 0;

    *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = 0;

    *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = 0;
  }

  static Logger.UI.getter();
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = v7;
    v18 = v17;
    v19 = swift_slowAlloc();
    HIDWORD(v30) = a1;
    v35 = v19;
    *v18 = 136315906;
    *(v18 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v35);
    v31 = v6;
    *(v18 + 12) = 2080;
    v33 = a3;
    v20 = *&v14[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v21 = *&v14[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v22 = sub_100037B98(v20, v21, &v35);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2080;
    v34 = v14[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    v23 = String.init<A>(describing:)();
    v25 = sub_100037B98(v23, v24, &v35);

    *(v18 + 24) = v25;
    v26 = v33;
    *(v18 + 32) = 1024;
    *(v18 + 34) = BYTE4(v30) & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s animationCompletion identifier: %s transitionState: %s finished: %{BOOL}d", v18, 0x26u);
    swift_arrayDestroy();

    v27 = (*(v32 + 8))(v10, v31);
    return v26(v27);
  }

  else
  {

    v29 = (*(v7 + 8))(v10, v6);
    return a3(v29);
  }
}

uint64_t sub_100024298@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DOCItemSortDescriptor();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v33 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v30[-v7];
  v9 = type metadata accessor for Logger();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for DOCItemSortMode();
  v13 = __chkstk_darwin(v12);
  v15 = &v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
  (*(v16 + 104))(&v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], **(&off_1000AEFC0 + v1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 1]), v13);
  DOCItemSortDescriptor.init(type:isReversed:)();
  static Logger.UI.getter();
  v17 = *(v4 + 16);
  v17(v8, a1, v3);
  v18 = v1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37 = v32;
    *v21 = 136315650;
    *(v21 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100092B50, &v37);
    *(v21 + 12) = 2080;
    v31 = v20;
    v17(v33, v8, v3);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    (*(v4 + 8))(v8, v3);
    v25 = sub_100037B98(v22, v24, &v37);

    *(v21 + 14) = v25;
    *(v21 + 22) = 2080;
    v36 = v15[1];
    v26 = String.init<A>(describing:)();
    v28 = sub_100037B98(v26, v27, &v37);

    *(v21 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v19, v31, "%s created sort descriptor: %s from config: %s", v21, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v4 + 8))(v8, v3);
  }

  return (*(v34 + 8))(v11, v35);
}

void sub_1000246B0()
{
  v1 = type metadata accessor for URL();
  v49 = *(v1 - 8);
  __chkstk_darwin(v1);
  v46 = &v42[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v48 = &v42[-v4];
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v47 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v42[-v9];
  static Logger.UI.getter();
  v11 = v0;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v45 = v5;
    v15 = v14;
    v44 = swift_slowAlloc();
    v51[0] = v44;
    *v15 = 136315650;
    *(v15 + 4) = sub_100037B98(0xD000000000000010, 0x8000000100092700, v51);
    *(v15 + 12) = 2080;
    v50 = *&v11[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];

    sub_10000589C(&qword_1000BC4E0, &qword_100090BE8);
    v16 = String.init<A>(describing:)();
    v18 = sub_100037B98(v16, v17, v51);
    v43 = v13;
    v19 = v1;
    v20 = v6;
    v21 = v18;

    *(v15 + 14) = v21;
    *(v15 + 22) = 2080;
    v22 = v11;
    v23 = [v22 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v6 = v20;
    v1 = v19;
    v27 = sub_100037B98(v24, v26, v51);

    *(v15 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v12, v43, "%s dataSource: %s %s ", v15, 0x20u);
    swift_arrayDestroy();

    v5 = v45;
  }

  v28 = *(v6 + 8);
  v28(v10, v5);
  if (*&v11[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource])
  {

    sub_10002E9C0();
  }

  else
  {
    v45 = v6;
    v29 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_directoryURL;
    swift_beginAccess();
    v44 = *(v49 + 16);
    v44(v48, &v11[v29], v1);
    v30 = 1;
    v31 = URL.path(percentEncoded:)(1);
    if (v31._countAndFlagsBits != static String._unconditionallyBridgeFromObjectiveC(_:)() || v31._object != v32)
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v33 = *(v49 + 8);
    v33(v48, v1);
    if ((v30 & 1) == 0)
    {
      v41 = v46;
      v44(v46, &v11[v29], v1);
      sub_100024C78(v41, v11);
      v33(v41, v1);
      return;
    }

    v34 = v47;
    static Logger.UI.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v50 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_100037B98(0xD000000000000010, 0x8000000100092700, &v50);
      _os_log_impl(&_mh_execute_header, v35, v36, "%s url is placeholder for Downloads folder. Attempting to fetch existing Downloads folder URL", v37, 0xCu);
      sub_1000064E0(v38);
    }

    v28(v34, v5);
    v39 = swift_allocObject();
    *(v39 + 16) = v11;
    v40 = v11;
    sub_100028CBC(0, sub_1000427FC, v39);
  }
}

uint64_t sub_100024C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCItemSortDescriptor();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v51 = &v41 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  v16 = type metadata accessor for Logger();
  v46 = *(v16 - 8);
  v47 = v16;
  __chkstk_darwin(v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v19 = *(v11 + 16);
  v50 = a1;
  v45 = v19;
  v19(v15, a1, v10);
  v20 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  v21 = os_log_type_enabled(v20, v44);
  v48 = v10;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v43 = v4;
    v23 = v22;
    v42 = swift_slowAlloc();
    v52 = v42;
    *v23 = 136315394;
    *(v23 + 4) = sub_100037B98(0xD000000000000015, 0x8000000100092B00, &v52);
    *(v23 + 12) = 2080;
    sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v41 = v20;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v10;
    v26 = v7;
    v27 = a2;
    v28 = v5;
    v30 = v29;
    (*(v11 + 8))(v15, v25);
    v31 = sub_100037B98(v24, v30, &v52);
    v5 = v28;
    a2 = v27;
    v7 = v26;

    *(v23 + 14) = v31;
    v32 = v41;
    _os_log_impl(&_mh_execute_header, v41, v44, "%s start observing url: %s", v23, 0x16u);
    swift_arrayDestroy();

    v4 = v43;
  }

  else
  {

    (*(v11 + 8))(v15, v10);
  }

  (*(v46 + 8))(v18, v47);
  v33 = v51;
  sub_100024298(v51);
  v34 = v49;
  v45(v49, v50, v48);
  (*(v5 + 16))(v7, v33, v4);
  type metadata accessor for DockFolderDataSource(0);
  v35 = swift_allocObject();
  sub_10002E5B8(v34, v7);
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = (v35 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_changeHandler);
  v38 = *(v35 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_changeHandler);
  v39 = *(v35 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_changeHandler + 8);
  *v37 = sub_100042804;
  v37[1] = v36;

  sub_1000414DC(v38, v39);

  *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource) = v35;
  swift_retain_n();

  sub_10002E9C0();

  return (*(v5 + 8))(v33, v4);
}

void sub_100025194(uint64_t a1, __n128 a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000258B4();
  }
}

uint64_t sub_1000251E8(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  __chkstk_darwin(v6);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v32 = type metadata accessor for Logger();
  v14 = *(v32 - 8);
  __chkstk_darwin(v32);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v34 = a1;
  sub_100042774(a1, v13, &unk_1000BCA20, &qword_100090BC0);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = v3;
    v20 = v19;
    v28 = swift_slowAlloc();
    v35 = v28;
    *v20 = 136315394;
    *(v20 + 4) = sub_100037B98(0xD000000000000010, 0x8000000100092700, &v35);
    *(v20 + 12) = 2080;
    sub_100042774(v13, v10, &unk_1000BCA20, &qword_100090BC0);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    sub_100006390(v13, &unk_1000BCA20, &qword_100090BC0);
    v24 = sub_100037B98(v21, v23, &v35);

    *(v20 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s got url: %s", v20, 0x16u);
    swift_arrayDestroy();

    v3 = v29;
  }

  else
  {

    sub_100006390(v13, &unk_1000BCA20, &qword_100090BC0);
  }

  (*(v14 + 8))(v16, v32);
  v25 = v33;
  sub_100042774(v34, v33, &unk_1000BCA20, &qword_100090BC0);
  if ((*(v4 + 48))(v25, 1, v3) == 1)
  {
    return sub_100006390(v25, &unk_1000BCA20, &qword_100090BC0);
  }

  v27 = v31;
  (*(v4 + 32))(v31, v25, v3);
  sub_100024C78(v27, v30);
  return (*(v4 + 8))(v27, v3);
}

double sub_10002561C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v8 = 136315394;
    *(v8 + 4) = sub_100037B98(0x6573624F706F7473, 0xEF2928676E697672, &v22);
    *(v8 + 12) = 2080;
    v9 = v5;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v1;
    v13 = v12;

    v14 = sub_100037B98(v11, v13, &v22);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s %s", v8, 0x16u);
    swift_arrayDestroy();

    (*(v2 + 8))(v4, v20);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  v16 = *&v5[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
  if (v16)
  {
    v17 = *(*(v16 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    if (v17)
    {

      v18 = v17;
      dispatch thunk of DOCNodeCollection.stopObserving()();
    }
  }

  return result;
}