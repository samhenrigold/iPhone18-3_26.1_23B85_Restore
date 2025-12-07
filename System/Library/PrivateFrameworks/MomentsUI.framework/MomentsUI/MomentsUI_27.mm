void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_109:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_111:
      v110 = *(v9 + 2);
      if (v110 >= 2)
      {
        while (*v6)
        {
          v111 = v9;
          v9 = (v110 - 1);
          v112 = *&v111[16 * v110];
          v113 = *&v111[16 * v110 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v112), (*v6 + 8 * *&v111[16 * v110 + 16]), (*v6 + 8 * v113), v8);
          if (v5)
          {
            goto LABEL_119;
          }

          if (v113 < v112)
          {
            goto LABEL_134;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v111 = specialized _ArrayBuffer._consumeAndCreateNew()(v111);
          }

          if (v110 - 2 >= *(v111 + 2))
          {
            goto LABEL_135;
          }

          v114 = &v111[16 * v110];
          *v114 = v112;
          *(v114 + 1) = v113;
          specialized Array.remove(at:)(v110 - 1);
          v9 = v111;
          v110 = *(v111 + 2);
          if (v110 <= 1)
          {
            goto LABEL_119;
          }
        }

        goto LABEL_145;
      }

LABEL_119:

      return;
    }

LABEL_141:
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    goto LABEL_111;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v8 = (v8 + 1);
    v122 = v9;
    if (v8 >= v7)
    {
      goto LABEL_36;
    }

    v123 = v7;
    v11 = *v6;
    v12 = *(v11 + 8 * v8);
    v13 = *(v11 + 8 * v10);
    v14 = *((*MEMORY[0x277D85000] & *v12) + 0xA8);
    v15 = v12;
    v16 = v13;
    v17 = v14();
    if (v17)
    {
      v18 = *&v17[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore];
      v19 = v17[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8];

      if ((v19 & 1) != 0 || (v20 = (*((*MEMORY[0x277D85000] & *v16) + 0xA8))()) == 0)
      {
      }

      else
      {
        v21 = *(v20 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore);
        v22 = *(v20 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8);
        v23 = v20;

        if ((v22 & 1) == 0)
        {
          v125 = v21 < v18;
          goto LABEL_13;
        }
      }

      v125 = 0;
    }

    else
    {

      v125 = 0;
    }

LABEL_13:
    v8 = (v10 + 2);
    if (v10 + 2 < v123)
    {
      v116 = v10;
      v24 = (v11 + 8 * v10 + 16);
      while (1)
      {
        v25 = v8;
        v26 = *(v24 - 1);
        v27 = *((*MEMORY[0x277D85000] & **v24) + 0xA8);
        v28 = *v24;
        v29 = v26;
        v30 = v27();
        if (v30 && (v31 = *&v30[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore], v32 = v30[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8], v30, (v32 & 1) == 0) && (v33 = (*((*MEMORY[0x277D85000] & *v29) + 0xA8))()) != 0)
        {
          v34 = *(v33 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore);
          v35 = *(v33 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8);
          v36 = v33;

          v9 = v122;
          if ((v35 & 1) == 0)
          {
            v8 = v25;
            if (((v125 ^ (v34 >= v31)) & 1) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_23;
          }
        }

        else
        {

          v9 = v122;
        }

        v8 = v25;
        if (v125)
        {
          v6 = a3;
          v10 = v116;
          if (v8 < v116)
          {
            goto LABEL_138;
          }

LABEL_30:
          if (v10 < v8)
          {
            v37 = 8 * v8 - 8;
            v38 = 8 * v10;
            v39 = v8;
            v40 = v10;
            do
            {
              v39 = (v39 - 1);
              if (v40 != v39)
              {
                v41 = *v6;
                if (!*v6)
                {
                  goto LABEL_144;
                }

                v42 = *(v41 + v38);
                *(v41 + v38) = *(v41 + v37);
                *(v41 + v37) = v42;
              }

              v40 = (v40 + 1);
              v37 -= 8;
              v38 += 8;
            }

            while (v40 < v39);
          }

          goto LABEL_36;
        }

LABEL_23:
        v8 = (v8 + 1);
        ++v24;
        if (v123 == v8)
        {
          v8 = v123;
LABEL_25:
          v10 = v116;
          break;
        }
      }
    }

    v6 = a3;
    if (v125)
    {
      if (v8 < v10)
      {
        goto LABEL_138;
      }

      goto LABEL_30;
    }

LABEL_36:
    v43 = v6[1];
    if (v8 < v43)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_137;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_58:
    if (v8 < v10)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v64 = *(v9 + 2);
    v63 = *(v9 + 3);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v9);
    }

    *(v9 + 2) = v65;
    v66 = &v9[16 * v64];
    *(v66 + 4) = v10;
    *(v66 + 5) = v8;
    v67 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if (v64)
    {
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v9 + 4);
          v70 = *(v9 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_78:
          if (v72)
          {
            goto LABEL_125;
          }

          v85 = &v9[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_128;
          }

          v91 = &v9[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_132;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        v95 = &v9[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_92:
        if (v90)
        {
          goto LABEL_127;
        }

        v98 = &v9[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_130;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_99:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
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
          goto LABEL_140;
        }

        if (!*v6)
        {
          goto LABEL_143;
        }

        v107 = *&v9[16 * v106 + 32];
        v108 = *&v9[16 * v68 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v107), (*v6 + 8 * *&v9[16 * v68 + 32]), (*v6 + 8 * v108), v67);
        if (v5)
        {
          goto LABEL_119;
        }

        if (v108 < v107)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v106 >= *(v9 + 2))
        {
          goto LABEL_122;
        }

        v109 = &v9[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        specialized Array.remove(at:)(v68);
        v65 = *(v9 + 2);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v9[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_123;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_124;
      }

      v80 = &v9[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_126;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_129;
      }

      if (v84 >= v76)
      {
        v102 = &v9[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_133;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_78;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_109;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_139;
  }

  if (v10 + a4 < v43)
  {
    v43 = (v10 + a4);
  }

  if (v43 < v10)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v8 == v43)
  {
    goto LABEL_58;
  }

  v121 = v43;
  v115 = v5;
  v117 = v10;
  v126 = *v6;
  v44 = v8;
  v45 = *v6 + 8 * v8 - 8;
  v46 = v10 - v44;
LABEL_47:
  v124 = v44;
  v47 = *(v126 + 8 * v44);
  v48 = v46;
  v49 = v45;
  while (1)
  {
    v50 = *v49;
    v51 = *((*MEMORY[0x277D85000] & *v47) + 0xA8);
    v52 = v47;
    v53 = v50;
    v54 = v51();
    if (!v54 || (v55 = *&v54[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore], v56 = v54[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8], v54, (v56 & 1) != 0) || (v57 = (*((*MEMORY[0x277D85000] & *v53) + 0xA8))()) == 0)
    {

LABEL_46:
      v44 = (v124 + 1);
      v45 += 8;
      --v46;
      if ((v124 + 1) == v121)
      {
        v8 = v121;
        v9 = v122;
        v5 = v115;
        v10 = v117;
        v6 = a3;
        goto LABEL_58;
      }

      goto LABEL_47;
    }

    v58 = v57;
    v59 = *(v57 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore);
    v60 = *(v57 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8);

    if ((v60 & 1) != 0 || v59 >= v55)
    {
      goto LABEL_46;
    }

    if (!v126)
    {
      break;
    }

    v61 = *v49;
    v47 = *(v49 + 8);
    *v49 = v47;
    *(v49 + 8) = v61;
    v49 -= 8;
    if (__CFADD__(v48++, 1))
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v78 = a6;
  v79 = a5;
  v77 = type metadata accessor for DateComponents();
  v11 = *(v77 - 8);
  v12 = MEMORY[0x28223BE20](v77);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v69 - v17;
  result = MEMORY[0x28223BE20](v16);
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v24 = &v69 - v20;
  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_67;
  }

  v25 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v23 != -1)
  {
    v26 = (a2 - a1) / v23;
    v85 = a1;
    v84 = a4;
    v80 = v23;
    if (v26 < v25 / v23)
    {
      v27 = v26 * v23;
      if (a4 < a1 || &a1[v27] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v76 = &a4[v27];
      v83 = &a4[v27];
      if (v27 >= 1 && a2 < a3)
      {
        v53 = *(v11 + 16);
        v74 = v18;
        v75 = v11 + 16;
        v72 = v53;
        v73 = (v11 + 8);
        v54 = v24;
        v55 = v77;
        v56 = v6;
        v71 = a3;
        while (1)
        {
          v81 = a1;
          v57 = v72;
          v72(v54, a2, v55);
          v58 = a2;
          v59 = v54;
          v60 = v74;
          v57(v74, a4, v55);
          v61 = v79(v59, v60);
          if (v56)
          {
            break;
          }

          v62 = v61;
          v82 = 0;
          v63 = *v73;
          (*v73)(v60, v55);
          v63(v59, v55);
          v54 = v59;
          if (v62)
          {
            v64 = v80;
            v65 = v81;
            a2 = &v58[v80];
            if (v81 < v58 || v81 >= a2)
            {
              v55 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v64 = v80;
              v56 = v82;
            }

            else
            {
              v56 = v82;
              v55 = v77;
              if (v81 != v58)
              {
                swift_arrayInitWithTakeBackToFront();
                v64 = v80;
              }
            }
          }

          else
          {
            v64 = v80;
            v65 = v81;
            v66 = &a4[v80];
            a2 = v58;
            if (v81 < a4 || v81 >= v66)
            {
              v55 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v64 = v80;
              v56 = v82;
            }

            else
            {
              v56 = v82;
              v55 = v77;
              if (v81 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v64 = v80;
              }
            }

            v84 = v66;
            a4 = v66;
          }

          a1 = &v65[v64];
          v85 = a1;
          if (a4 >= v76 || a2 >= v71)
          {
            goto LABEL_65;
          }
        }

        v67 = *v73;
        (*v73)(v60, v55);
        v67(v59, v55);
      }

LABEL_65:
      specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v85, &v84, &v83);
      return 1;
    }

    v76 = v21;
    v28 = a3;
    v29 = a2;
    v30 = v25 / v23 * v23;
    if (a4 < v29 || &v29[v30] <= a4)
    {
      v31 = v29;
      v32 = v77;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v31 = v29;
      v32 = v77;
      if (a4 == v29)
      {
LABEL_24:
        v82 = v6;
        v34 = &a4[v30];
        if (v30 >= 1)
        {
          v35 = -v23;
          v69 = a4;
          v70 = (v11 + 16);
          v72 = (v11 + 8);
          v36 = &a4[v30];
          v37 = v28;
          v38 = v76;
          v81 = a1;
          v74 = -v23;
          do
          {
            v75 = v34;
            v71 = v34;
            v39 = v31;
            v77 = v31 + v35;
            v73 = v31;
            while (1)
            {
              if (v39 <= a1)
              {
                v85 = v39;
                v34 = v71;
                goto LABEL_64;
              }

              v40 = v37;
              v41 = v74;
              v80 = v36;
              v42 = &v36[v74];
              v43 = *v70;
              (*v70)(v38, &v36[v74], v32);
              v43(v14, v77, v32);
              v44 = v38;
              v45 = v82;
              v46 = v79(v38, v14);
              v82 = v45;
              if (v45)
              {
                v68 = *v72;
                (*v72)(v14, v32);
                v68(v44, v32);
                v85 = v73;
                v34 = v75;
                goto LABEL_64;
              }

              v47 = v46;
              v48 = &v40[v41];
              v49 = v14;
              v50 = *v72;
              v51 = v49;
              (*v72)();
              v50(v44, v32);
              if (v47)
              {
                break;
              }

              v37 = &v40[v41];
              if (v40 < v80 || v48 >= v80)
              {
                swift_arrayInitWithTakeFrontToBack();
                v14 = v51;
                v38 = v76;
              }

              else
              {
                v14 = v51;
                v38 = v76;
                if (v40 != v80)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v75 = v42;
              v36 = v42;
              a1 = v81;
              v39 = v73;
              if (v42 <= v69)
              {
                v31 = v73;
                v34 = v75;
                goto LABEL_63;
              }
            }

            v37 = &v40[v41];
            if (v40 < v73 || v48 >= v73)
            {
              v31 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v52 = v69;
              v14 = v51;
              v38 = v76;
            }

            else
            {
              v38 = v76;
              v31 = v77;
              v52 = v69;
              v14 = v51;
              if (v40 != v73)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v36 = v80;
            a1 = v81;
            v35 = v74;
            v34 = v75;
          }

          while (v80 > v52);
        }

LABEL_63:
        v85 = v31;
LABEL_64:
        v83 = v34;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v23 = v80;
    goto LABEL_24;
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v4 + 2) < *(v6 + 2))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 32;
    do
    {
      v18 = v5 + 32;
      if (*(v6 - 2) < *(v14 - 2))
      {
        v21 = v6 - 32;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 32, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 32;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 32;
      v14 -= 32;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v23 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v28 = __src;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v46 = &v4[v12];
    if (v10 >= 8 && v28 > v6)
    {
LABEL_31:
      v44 = v28;
      v29 = v28 - 1;
      --v5;
      v30 = v46;
      v45 = v28 - 1;
      do
      {
        v31 = *--v30;
        v32 = *v29;
        v33 = *((*MEMORY[0x277D85000] & *v31) + 0xA8);
        v34 = v31;
        v35 = v32;
        v36 = v33();
        if (v36 && (v37 = *&v36[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore], v38 = v36[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8], v36, (v38 & 1) == 0) && (v39 = (*((*MEMORY[0x277D85000] & *v35) + 0xA8))()) != 0)
        {
          v40 = *(v39 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore);
          v41 = *(v39 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8);
          v42 = v39;

          if ((v41 & 1) == 0 && v40 < v37)
          {
            if (v5 + 1 != v44)
            {
              *v5 = *v45;
            }

            if (v46 <= v4 || (v28 = v45, v45 <= v6))
            {
              v28 = v45;
              goto LABEL_48;
            }

            goto LABEL_31;
          }
        }

        else
        {
        }

        if (v5 + 1 != v46)
        {
          *v5 = *v30;
        }

        --v5;
        v46 = v30;
        v29 = v45;
      }

      while (v30 > v4);
      v46 = v30;
      v28 = v44;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v46 = &v4[v9];
    if (v7 >= 8 && __src < v5)
    {
      v14 = __src;
      while (1)
      {
        v15 = *v4;
        v16 = *((*MEMORY[0x277D85000] & **v14) + 0xA8);
        v17 = *v14;
        v18 = v15;
        v19 = v16();
        if (!v19)
        {
          break;
        }

        v20 = *&v19[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore];
        v21 = v19[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8];

        if (v21)
        {
          break;
        }

        v22 = (*((*MEMORY[0x277D85000] & *v18) + 0xA8))();
        if (!v22)
        {
          break;
        }

        v23 = *(v22 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore);
        v24 = *(v22 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8);
        v25 = v22;

        if ((v24 & 1) != 0 || v23 >= v20)
        {
          goto LABEL_21;
        }

        v26 = v14;
        v27 = v6 == v14++;
        if (!v27)
        {
          goto LABEL_22;
        }

LABEL_23:
        ++v6;
        if (v4 >= v46 || v14 >= v5)
        {
          goto LABEL_25;
        }
      }

LABEL_21:
      v26 = v4;
      v27 = v6 == v4++;
      if (v27)
      {
        goto LABEL_23;
      }

LABEL_22:
      *v6 = *v26;
      goto LABEL_23;
    }

LABEL_25:
    v28 = v6;
  }

LABEL_48:
  if (v28 != v4 || v28 >= (v4 + ((v46 - v4 + (v46 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v28, v4, 8 * (v46 - v4));
  }

  return 1;
}

uint64_t specialized NotificationHandlingManager.getScheduleType()()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v1 = MEMORY[0x21CE91FC0](0xD000000000000018, 0x800000021657AE90);
    v2 = [v0 objectForKey_];

    if (v2)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25 = v23;
    v26 = v24;
    if (*(&v24 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_13;
      }

      result = v23;
      if ((v23 & 0x8000000000000000) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  outlined destroy of UTType?(&v25, &_sypSgMd, &_sypSgMR);
LABEL_13:
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {
    if (one-time initialization token for notification != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static CommonLogger.notification);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21607C000, v7, v8, "[NotificationHandlingManager] No found schedule for non-iphone device", v9, 2u);
      MEMORY[0x21CE94770](v9, -1, -1);
    }

    return 0;
  }

  else
  {
    v10 = specialized static MOAngelDefaultsManager.arrayValueFor(_:)(0xD000000000000026, 0x800000021657AEB0);
    if (v10 && (v11 = specialized _arrayConditionalCast<A, B>(_:)(v10), , v11))
    {
      if (*(v11 + 16))
      {
        if (one-time initialization token for notification != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static CommonLogger.notification);

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *&v25 = v16;
          *v15 = 136315138;
          v17 = MEMORY[0x21CE922B0](v11, MEMORY[0x277D83B88]);
          v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v25);

          *(v15 + 4) = v19;
          _os_log_impl(&dword_21607C000, v13, v14, "[NotificationHandlingManager] Legacy user schedule: %s", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v16);
          MEMORY[0x21CE94770](v16, -1, -1);
          MEMORY[0x21CE94770](v15, -1, -1);
        }

        v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_n(v11);

        v21 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_n(&outlined read-only object #0 of NotificationHandlingManager.getScheduleType());
        v22 = _sSh2eeoiySbShyxG_ABtFZSi_Tt1g5(v20, v21);

        if (v22)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      else
      {

        return 1;
      }
    }

    else
    {
      return 1;
    }
  }
}

uint64_t specialized NotificationHandlingManager.weeklyCountCleanup()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v38 - v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v38 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  Date.init()();
  static DefaultsManager.MomentsUIDomain.dateValueFor(_:)(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    outlined destroy of UTType?(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v13 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      v15 = MEMORY[0x21CE91FC0](0xD00000000000001BLL, 0x8000000216580A30);
      [v13 setValue:isa forKey:v15];

      v16 = Int._bridgeToObjectiveC()().super.super.isa;
      v17 = MEMORY[0x21CE91FC0](0xD00000000000001ELL, 0x8000000216580A80);
      [v13 setValue:v16 forKey:v17];

      v18 = Int._bridgeToObjectiveC()().super.super.isa;
      v19 = MEMORY[0x21CE91FC0](0xD000000000000021, 0x8000000216580A50);
      [v13 setValue:v18 forKey:v19];

      v20 = MEMORY[0x21CE91FC0](0xD000000000000017, 0x8000000216582D80);
      [v13 removeObjectForKey_];
    }

    return (*(v4 + 8))(v12, v3);
  }

  else
  {
    v39 = "LastSuggestionNotificationDate";
    (*(v4 + 32))(v10, v2, v3);
    v22 = specialized static DefaultsManager.Notifications.weeklyResetDayThreshold.getter();
    if (one-time initialization token for notification != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static CommonLogger.notification);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v22;
      _os_log_impl(&dword_21607C000, v24, v25, "[NotificationHandlingManager] weeklyResetDayRequirement: %ld", v26, 0xCu);
      MEMORY[0x21CE94770](v26, -1, -1);
    }

    Date.addingTimeInterval(_:)();
    if (static Date.< infix(_:_:)())
    {
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_21607C000, v27, v28, "[NotificationHandlingManager] Resetting weekly count", v29, 2u);
        MEMORY[0x21CE94770](v29, -1, -1);
      }

      if (one-time initialization token for momentsUI != -1)
      {
        swift_once();
      }

      v30 = static DefaultsManager.momentsUI;
      if (static DefaultsManager.momentsUI)
      {
        v31 = Date._bridgeToObjectiveC()().super.isa;
        v32 = MEMORY[0x21CE91FC0](0xD00000000000001BLL, v39 | 0x8000000000000000);
        [v30 setValue:v31 forKey:v32];

        v33 = Int._bridgeToObjectiveC()().super.super.isa;
        v34 = MEMORY[0x21CE91FC0](0xD00000000000001ELL, 0x8000000216580A80);
        [v30 setValue:v33 forKey:v34];

        v35 = Int._bridgeToObjectiveC()().super.super.isa;
        v36 = MEMORY[0x21CE91FC0](0xD000000000000021, 0x8000000216580A50);
        [v30 setValue:v35 forKey:v36];
      }
    }

    v37 = *(v4 + 8);
    v37(v7, v3);
    v37(v10, v3);
    return (v37)(v12, v3);
  }
}

void specialized NotificationHandlingManager.getMomentsUIScheduleDateComponents()()
{
  v0 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v125 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v99 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Calendar.SearchDirection();
  v124 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v133 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for Calendar.MatchingPolicy();
  v123 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v132 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v131 = &v99 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v99 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v99 - v12;
  v14 = type metadata accessor for DateComponents();
  v140 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v130 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v99 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v99 - v20;
  v134 = type metadata accessor for Date();
  v22 = *(v134 - 8);
  v23 = MEMORY[0x28223BE20](v134);
  v128 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v137 = &v99 - v26;
  MEMORY[0x28223BE20](v25);
  v136 = &v99 - v27;
  v139 = type metadata accessor for Calendar();
  v127 = *(v139 - 8);
  v28 = MEMORY[0x28223BE20](v139);
  v129 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v99 - v30;
  if (one-time initialization token for momentsUI != -1)
  {
    v94 = &v99 - v30;
    swift_once();
    v31 = v94;
  }

  v32 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v143 = 0u;
    v144 = 0u;
LABEL_14:
    outlined destroy of UTType?(&v143, &_sypSgMd, &_sypSgMR);
    return;
  }

  v122 = v31;
  v126 = v22;
  v135 = v14;
  v33 = MEMORY[0x21CE91FC0](0xD00000000000001CLL, 0x800000021657AEE0);
  v34 = [v32 objectForKey_];

  if (v34)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v141 = 0u;
    v142 = 0u;
  }

  v143 = v141;
  v144 = v142;
  if (!*(&v142 + 1))
  {
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayyXlGMd, &_sSayyXlGMR);
  if (swift_dynamicCast())
  {
    v35 = specialized _arrayConditionalCast<A, B>(_:)(v141);

    v100 = v35;
    if (v35)
    {
      v121 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
      if (v36 & 1) != 0 || (v120 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)(), (v37) || (v38 = v100, !*(v100 + 16)))
      {

        return;
      }

      static Calendar.current.getter();
      Date.init()();
      *&v143 = v38;

      specialized MutableCollection<>.sort(by:)(&v143);
      v117 = v3;
      v118 = v2;
      v119 = v0;
      v39 = *(v143 + 16);
      v109 = 0;
      v108 = v143;
      if (v39)
      {
        v40 = v143 + 32;
        v113 = *(v127 + 56);
        v114 = v127 + 56;
        v112 = (v140 + 16);
        v111 = v140 + 8;
        v110 = v140 + 32;
        v41 = MEMORY[0x277D84F90];
        v42 = v135;
        v116 = v10;
        v115 = v13;
        do
        {
          v43 = v41;
          v113(v13, 1, 1, v139);
          v44 = type metadata accessor for TimeZone();
          (*(*(v44 - 8) + 56))(v10, 1, 1, v44);
          LOBYTE(v98) = 1;
          v97 = 0;
          LOBYTE(v96) = 1;
          v95 = 0;
          DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
          DateComponents.weekday.setter();
          DateComponents.hour.setter();
          DateComponents.minute.setter();
          (*v112)(v19, v21, v42);
          v45 = v40 + 8;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41[2] + 1, 1, v41);
          }

          v47 = v43[2];
          v46 = v43[3];
          v48 = v43;
          if (v47 >= v46 >> 1)
          {
            v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v43);
          }

          v49 = v140;
          v42 = v135;
          (*(v140 + 8))(v21, v135);
          v48[2] = v47 + 1;
          v41 = v48;
          (*(v49 + 32))(v48 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v47, v19, v42);
          --v39;
          v10 = v116;
          v40 = v45;
          v13 = v115;
        }

        while (v39);
      }

      else
      {
        v41 = MEMORY[0x277D84F90];
      }

      MEMORY[0x28223BE20](v50);
      v97 = v122;
      *&v143 = v41;

      v51 = v109;
      specialized MutableCollection<>.sort(by:)(partial apply for closure #1 in NotificationHandlingManager.getMomentsUIScheduleDateComponents(), &v95);
      if (v51)
      {
        goto LABEL_45;
      }

      v121 = v41;
      v52 = v143;
      if (one-time initialization token for notification != -1)
      {
LABEL_43:
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      v54 = __swift_project_value_buffer(v53, static CommonLogger.notification);
      v120 = v52;

      v116 = v54;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.info.getter();

      v57 = os_log_type_enabled(v55, v56);
      v58 = v135;
      if (v57)
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *&v143 = v60;
        *v59 = 136315138;
        v61 = MEMORY[0x21CE922B0](v52, v58);
        v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v143);
        v52 = v120;

        *(v59 + 4) = v63;
        _os_log_impl(&dword_21607C000, v55, v56, "[NotificationHandlingManager] sorted scheduled date components: %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v60);
        MEMORY[0x21CE94770](v60, -1, -1);
        MEMORY[0x21CE94770](v59, -1, -1);
      }

      v65 = v134;
      v115 = v52[2];
      if (v115)
      {
        v66 = v52;
        v67 = 0;
        v114 = v140 + 16;
        v113 = (v123 + 13);
        v112 = (v124 + 13);
        LODWORD(v111) = *MEMORY[0x277CC9878];
        LODWORD(v110) = *MEMORY[0x277CC98E8];
        LODWORD(v109) = *MEMORY[0x277CC9900];
        v108 = (v125 + 104);
        v107 = v140 + 8;
        v106 = (v125 + 8);
        ++v124;
        ++v123;
        v105 = (v127 + 8);
        v104 = (v126 + 48);
        v103 = (v126 + 32);
        v102 = "on body text for Sunday";
        v101 = (v126 + 16);
        *&v64 = 136315138;
        v99 = v64;
        v126 += 8;
        while (1)
        {
          if (v67 >= v66[2])
          {
            __break(1u);
            goto LABEL_43;
          }

          v51 = v140;
          v69 = v66 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
          v70 = *(v140 + 72);
          v125 = v67;
          v71 = v130;
          v72 = v135;
          (*(v140 + 16))(v130, &v69[v70 * v67], v135);
          v73 = v129;
          static Calendar.current.getter();
          v74 = v132;
          (*v113)(v132, v111, v138);
          v75 = v133;
          v76 = v117;
          (*v112)(v133, v110, v117);
          v77 = v118;
          v52 = v119;
          (*v108)(v118, v109, v119);
          v78 = v131;
          Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
          v79 = v71;
          v65 = v134;
          (*(v51 + 8))(v79, v72);
          (*v106)(v77, v52);
          (*v124)(v75, v76);
          (*v123)(v74, v138);
          (*v105)(v73, v139);
          if ((*v104)(v78, 1, v65) == 1)
          {
            break;
          }

          v80 = v137;
          (*v103)(v137, v78, v65);
          v81 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v82 = MEMORY[0x21CE91FC0](0xD000000000000016, v102 | 0x8000000000000000);
          [v81 setDateFormat_];

          v83 = v128;
          (*v101)(v128, v80, v65);
          v84 = v81;
          v85 = Logger.logObject.getter();
          v86 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            *&v143 = v52;
            *v87 = v99;
            isa = Date._bridgeToObjectiveC()().super.isa;
            v89 = [v84 stringFromDate_];

            v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v92 = v91;

            v68 = *v126;
            (*v126)(v83, v65);
            v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, &v143);

            *(v87 + 4) = v93;
            _os_log_impl(&dword_21607C000, v85, v86, "[NotificationHandlingManager] Next scheduled dates: %s", v87, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v52);
            MEMORY[0x21CE94770](v52, -1, -1);
            MEMORY[0x21CE94770](v87, -1, -1);

            v68(v137, v65);
          }

          else
          {

            v68 = *v126;
            (*v126)(v83, v65);
            v68(v80, v65);
          }

          v66 = v120;
          v67 = v125 + 1;
          if (v115 == (v125 + 1))
          {
            goto LABEL_41;
          }
        }

        __break(1u);
LABEL_45:

        __break(1u);
        return;
      }

      v68 = *(v126 + 8);
LABEL_41:
      v68(v136, v65);

      (*(v127 + 8))(v122, v139);
    }
  }
}

void *specialized NotificationHandlingManager.getLegacyScheduleDateComponents()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v33 = v27 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = v27 - v3;
  v34 = type metadata accessor for DateComponents();
  v4 = *(v34 - 8);
  v5 = MEMORY[0x28223BE20](v34);
  v35 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - v7;
  if (one-time initialization token for defaults != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v9 = static MOAngelDefaultsManager.defaults;
    if (!static MOAngelDefaultsManager.defaults)
    {
      v38 = 0u;
      v39 = 0u;
LABEL_25:
      outlined destroy of UTType?(&v38, &_sypSgMd, &_sypSgMR);
      return 0;
    }

    v10 = MEMORY[0x21CE91FC0](0xD000000000000026, 0x800000021657AEB0);
    v11 = [v9 objectForKey_];

    if (v11)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
    }

    v38 = v36;
    v39 = v37;
    if (!*(&v37 + 1))
    {
      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayyXlGMd, &_sSayyXlGMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v12 = specialized _arrayConditionalCast<A, B>(_:)(v36);

    if (!v12)
    {
      return 0;
    }

    v13 = *(v12 + 16);
    if (!v13)
    {
      break;
    }

    v31 = type metadata accessor for Calendar();
    v14 = *(v31 - 8);
    v15 = *(v14 + 56);
    v29 = v14 + 56;
    v30 = v15;
    v27[1] = v4 + 8;
    v28 = (v4 + 16);
    v27[0] = v4 + 32;
    v16 = MEMORY[0x277D84F90];
    v17 = 32;
    while (1)
    {
      v18 = v12;
      v19 = *(v12 + v17);
      v30(v32, 1, 1, v31);
      v20 = type metadata accessor for TimeZone();
      (*(*(v20 - 8) + 56))(v33, 1, 1, v20);
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      v21 = floor(v19 / 1440.0);
      if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v21 <= -9.22337204e18)
      {
        goto LABEL_30;
      }

      if (v21 >= 9.22337204e18)
      {
        goto LABEL_31;
      }

      if (__OFADD__(v21, 1))
      {
        goto LABEL_32;
      }

      DateComponents.weekday.setter();
      v22 = floor((v19 % 1440) / 60.0);
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_33;
      }

      if (v22 <= -9.22337204e18)
      {
        goto LABEL_34;
      }

      if (v22 >= 9.22337204e18)
      {
        goto LABEL_35;
      }

      DateComponents.hour.setter();
      DateComponents.minute.setter();
      (*v28)(v35, v8, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
      }

      v24 = v16[2];
      v23 = v16[3];
      if (v24 >= v23 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v16);
      }

      v25 = v34;
      (*(v4 + 8))(v8, v34);
      v16[2] = v24 + 1;
      (*(v4 + 32))(v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24, v35, v25);
      v17 += 8;
      --v13;
      v12 = v18;
      if (!v13)
      {

        return v16;
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
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

  return 0;
}

id specialized NotificationHandlingManager.getScheduledNotificationTrigger()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v20 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for DateComponents();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for Calendar();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = type metadata accessor for TimeZone();
  (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  specialized NotificationHandlingManager.getMomentsUIScheduleDateComponents()();
  if (v15 || (v15 = specialized NotificationHandlingManager.getLegacyScheduleDateComponents()()) != 0)
  {
    if (v15[2])
    {
      (*(v7 + 16))(v10, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

      v16 = *(v7 + 8);
      v16(v12, v6);
      (*(v7 + 32))(v12, v10, v6);
      isa = DateComponents._bridgeToObjectiveC()().super.isa;
      v18 = [objc_opt_self() triggerWithDateMatchingComponents:isa repeats:0];

      v16(v12, v6);
      return v18;
    }

    (*(v7 + 8))(v12, v6);
  }

  else
  {
    (*(v7 + 8))(v12, v6);
  }

  return 0;
}

BOOL specialized NotificationHandlingManager.isEligibleForSmartNotification()()
{
  v0 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  v3 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = v2 + v5;
  if (__OFADD__(v2, v5))
  {
    __break(1u);
  }

  else if (one-time initialization token for notification == -1)
  {
    goto LABEL_9;
  }

  swift_once();
LABEL_9:
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static CommonLogger.notification);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = v6;
    _os_log_impl(&dword_21607C000, v8, v9, "[NotificationHandlingManager] smart notification weekly count: %ld", v10, 0xCu);
    MEMORY[0x21CE94770](v10, -1, -1);
  }

  v11 = specialized static DefaultsManager.Notifications.smartNotificationWeeklyMax.getter();
  if (v6 >= v11)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134218240;
      *(v14 + 4) = v6;
      *(v14 + 12) = 2048;
      *(v14 + 14) = specialized static DefaultsManager.Notifications.smartNotificationWeeklyMax.getter();
      _os_log_impl(&dword_21607C000, v12, v13, "[NotificationHandlingManager] Already %ld notifications in the last week (max = %ld). Ineligible for new smart notification", v14, 0x16u);
      MEMORY[0x21CE94770](v14, -1, -1);
    }
  }

  return v6 < v11;
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
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
      v6 = MEMORY[0x21CE93180](v5, a1);
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

    v7 = v6;
    v8 = static UUID.== infix(_:_:)();

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

unint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    if (v4 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v4 >> 62)
    {
      if (v8 == __CocoaSet.count.getter())
      {
        return v7;
      }
    }

    else if (v8 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v7;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x21CE93180](v8, v4);
      goto LABEL_15;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_39;
    }

    v10 = *(v4 + 8 * v8 + 32);
LABEL_15:
    v11 = v10;
    v12 = static UUID.== infix(_:_:)();

    if ((v12 & 1) == 0)
    {
      if (v7 != v8)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x21CE93180](v7, v4);
          v14 = MEMORY[0x21CE93180](v8, v4);
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= v15)
          {
            goto LABEL_45;
          }

          if (v8 >= v15)
          {
            goto LABEL_46;
          }

          v16 = *(v4 + 32 + 8 * v8);
          v13 = *(v4 + 32 + 8 * v7);
          v14 = v16;
        }

        v17 = v14;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v18 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v19 = v4 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v17;

        if ((v4 & 0x8000000000000000) != 0 || v18)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v19 = v4 & 0xFFFFFFFFFFFFFF8;
        }

        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_42;
        }

        if (v8 >= *(v19 + 16))
        {
          goto LABEL_43;
        }

        v21 = v19 + 8 * v8;
        v22 = *(v21 + 32);
        *(v21 + 32) = v13;

        *a1 = v4;
      }

      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        goto LABEL_41;
      }
    }

    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
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
  return __CocoaSet.count.getter();
}

uint64_t specialized NotificationHandlingManager.dateSuffixWeekdayComponent(for:postingDate:)(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = type metadata accessor for Calendar.Component();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - v7;
  v9 = type metadata accessor for Calendar();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v57 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v54 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v21 = *(a1 + OBJC_IVAR____TtC9MomentsUI10Suggestion_dateRange);
  if (!v21)
  {
    if (one-time initialization token for notification != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static CommonLogger.notification);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_21607C000, v24, v25, "[NotificationHandlingManager] Top suggestion has no defined start date", v26, 2u);
      MEMORY[0x21CE94770](v26, -1, -1);
    }

    return 0;
  }

  v52 = v10;
  v53 = v9;
  v55 = v4;
  v22 = *(v13 + 16);
  v22(v18, v21 + OBJC_IVAR____TtC9MomentsUI9DateRange_startDate, v12);
  v51 = *(v13 + 32);
  v51(v20, v18, v12);
  if (*(a1 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionType) == 10)
  {
    (*(v13 + 8))(v20, v12);
    return 0;
  }

  v49 = v22;
  static Calendar.current.getter();
  v27 = *MEMORY[0x277CC9968];
  v29 = v55;
  v28 = v56;
  v47 = *(v55 + 104);
  v48 = v55 + 104;
  v47(v56, v27, v3);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v30 = *(v29 + 8);
  v50 = v3;
  v55 = v29 + 8;
  v46 = v30;
  v30(v28, v3);
  v31 = *(v13 + 48);
  if (v31(v8, 1, v12) == 1)
  {
    v32 = v54;
    v49(v54, v58, v12);
    v33 = v31(v8, 1, v12);
    v34 = v52;
    if (v33 != 1)
    {
      outlined destroy of UTType?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    v32 = v54;
    v51(v54, v8, v12);
    v34 = v52;
  }

  v35 = v57;
  v36 = Calendar.isDate(_:inSameDayAs:)();
  v37 = v50;
  if (v36 & 1) != 0 || (Calendar.isDate(_:inSameDayAs:)())
  {
    v38 = *(v13 + 8);
    v38(v32, v12);
    (*(v34 + 8))(v35, v53);
    v38(v20, v12);
    return 0;
  }

  v40 = v34;
  v41 = v56;
  v47(v56, *MEMORY[0x277CC99B8], v37);
  v42 = v32;
  v43 = Calendar.component(_:from:)();
  v46(v41, v37);
  v44 = *(v13 + 8);
  v44(v42, v12);
  (*(v40 + 8))(v35, v53);
  v44(v20, v12);
  return v43;
}

uint64_t specialized NotificationHandlingManager.createNotificationBodyText(for:postingDate:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC9MomentsUI10Suggestion_title);
  if (v2)
  {
    v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x58))();
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      if (one-time initialization token for notification != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static CommonLogger.notification);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v38 = v13;
        *v12 = 136315138;
        *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v38);
        _os_log_impl(&dword_21607C000, v10, v11, "[NotificationHandlingManager] Generating notification content for suggestion label: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x21CE94770](v13, -1, -1);
        MEMORY[0x21CE94770](v12, -1, -1);
      }

      v14 = specialized NotificationHandlingManager.dateSuffixWeekdayComponent(for:postingDate:)(a1, a2);
      if (v15)
      {
        type metadata accessor for NotificationHandlingManager();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v17 = [objc_opt_self() bundleForClass_];
        v18 = 0x1000000000000022;
        v19 = 0xD00000000000002CLL;
        v37 = 0x8000000216582A20;
        v20 = 0x80000002165829F0;
LABEL_9:
        v21.super.isa = v17;
        v22 = 0;
        v23 = 0xE000000000000000;
LABEL_10:
        NSLocalizedString(_:tableName:bundle:value:comment:)(*&v18, 0, v21, *&v22, *&v19);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_21658CA50;
        *(v24 + 56) = MEMORY[0x277D837D0];
        *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v24 + 32) = v7;
        *(v24 + 40) = v8;
        v25 = static String.localizedStringWithFormat(_:_:)();

        return v25;
      }

      v31 = v14;
      type metadata accessor for NotificationHandlingManager();
      v32 = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass_];
      if (v31 <= 3)
      {
        switch(v31)
        {
          case 1:
            v35 = "on body text for Monday";
            v36 = "Journaling suggestion notification body text for Sunday";
            break;
          case 2:
            v35 = "on body text for Tuesday";
            v36 = "Journaling suggestion notification body text for Monday";
            break;
          case 3:
            v37 = 0x8000000216582C40;
            v18 = 0x100000000000002DLL;
            v20 = 0x8000000216582C10;
            v19 = 0xD000000000000038;
            goto LABEL_9;
          default:
            goto LABEL_29;
        }
      }

      else
      {
        if (v31 <= 5)
        {
          if (v31 == 4)
          {
            v37 = 0x8000000216582BD0;
            v18 = 0x100000000000002FLL;
            v20 = 0x8000000216582BA0;
            v19 = 0xD00000000000003ALL;
            goto LABEL_9;
          }

          v33 = "on body text for Friday";
          v34 = "Journaling suggestion notification body text for Thursday";
          goto LABEL_27;
        }

        if (v31 != 6)
        {
          if (v31 == 7)
          {
            v33 = "stion notification body text";
            v34 = "Journaling suggestion notification body text for Saturday";
LABEL_27:
            v37 = (v34 - 32) | 0x8000000000000000;
            v18 = 0x100000000000002ELL;
            v20 = v33 | 0x8000000000000000;
            v19 = 0xD000000000000039;
            goto LABEL_9;
          }

LABEL_29:
          v18 = 0x1000000000000022;
          v19 = 0xD00000000000002CLL;
          v37 = 0x8000000216582A20;
          v20 = 0x80000002165829F0;
          goto LABEL_9;
        }

        v35 = "on body text for Saturday";
        v36 = "Journaling suggestion notification body text for Friday";
      }

      v37 = (v36 - 32) | 0x8000000000000000;
      v20 = v35 | 0x8000000000000000;
      v18 = 0x100000000000002CLL;
      v21.super.isa = v17;
      v22 = 0;
      v23 = 0xE000000000000000;
      v19 = 0xD000000000000037;
      goto LABEL_10;
    }
  }

  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static CommonLogger.notification);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_21607C000, v28, v29, "[NotificationHandlingManager] Missing localized suggestion title", v30, 2u);
    MEMORY[0x21CE94770](v30, -1, -1);
  }

  return 0;
}

uint64_t specialized NotificationHandlingManager.getNotificationInterruptionLevel(with:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  if (a1 != 1)
  {
    return 1;
  }

  static MOAngelDefaultsManager.dateValueFor(_:)(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of UTType?(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    return 1;
  }

  (*(v6 + 32))(v11, v4, v5);
  static Date.now.getter();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v12 = dispatch thunk of static Comparable.< infix(_:_:)();
  v13 = *(v6 + 8);
  v13(v9, v5);
  if (v12)
  {
    v13(v11, v5);
    return 1;
  }

  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static CommonLogger.notification);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_21607C000, v16, v17, "[NotificationHandlingManager] Using passive interruption level since this is posting at the end of the availability window", v18, 2u);
    MEMORY[0x21CE94770](v18, -1, -1);
  }

  v13(v11, v5);
  return 0;
}

uint64_t specialized NotificationHandlingManager.generateUserInfoDictForAnalytics(with:)(void *a1)
{
  v2 = type metadata accessor for DateComponents();
  v66 = *(v2 - 8);
  v67 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x28223BE20](v5);
  v68 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for Date();
  v7 = *(v69 - 8);
  v8 = MEMORY[0x28223BE20](v69);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v61 - v11;
  v13 = UUID.uuidString.getter();
  v73 = MEMORY[0x277D837D0];
  *&v72 = v13;
  *(&v72 + 1) = v14;
  outlined init with take of Any(&v72, v71);
  v15 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = v15;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0x6974736567677573, 0xEC00000044496E6FLL, isUniquelyReferenced_nonNull_native);
  v17 = v74;
  v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v19 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v73 = v19;
  *&v72 = v18;
  outlined init with take of Any(&v72, v71);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v70 = v17;
  v21 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0x6361667265746E69, 0xED00006570795465, v20);
  v22 = v70;
  v74 = v70;
  v23 = *(a1 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionSubType);
  if (v23 != 65)
  {
    v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v73 = v19;
    *&v72 = v24;
    outlined init with take of Any(&v72, v71);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v22;
    v21 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0x65707954627573, 0xE700000000000000, v25);
    v22 = v70;
    v74 = v70;
  }

  v26 = (*((*MEMORY[0x277D85000] & *a1) + 0xA8))(v21);
  v63 = v4;
  if (v26)
  {
    v27 = *&v26[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore];
    v28 = v26[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8];

    if ((v28 & 1) == 0)
    {
      v73 = MEMORY[0x277D839F8];
      *&v72 = v27;
      outlined init with take of Any(&v72, v71);
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v22;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0x7373656E646F6F67, 0xED000065726F6353, v29);
      v22 = v70;
      v74 = v70;
    }
  }

  v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v73 = v19;
  *&v72 = v30;
  outlined init with take of Any(&v72, v71);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v70 = v22;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0xD000000000000016, 0x800000021657AD50, v31);
  result = v70;
  v74 = v70;
  v33 = *(a1 + OBJC_IVAR____TtC9MomentsUI10Suggestion_dateRange);
  if (v33)
  {
    v34 = v69;
    (*(v7 + 16))(v10, v33 + OBJC_IVAR____TtC9MomentsUI9DateRange_endDate, v69);
    v62 = v7;
    (*(v7 + 32))(v12, v10, v34);
    static Calendar.current.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMR);
    v35 = type metadata accessor for Calendar.Component();
    v36 = *(v35 - 8);
    v37 = *(v36 + 72);
    v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_2165965F0;
    v40 = v39 + v38;
    v41 = *(v36 + 104);
    v41(v40, *MEMORY[0x277CC9988], v35);
    v41(v40 + v37, *MEMORY[0x277CC9998], v35);
    v41(v40 + 2 * v37, *MEMORY[0x277CC9968], v35);
    v41(v40 + 3 * v37, *MEMORY[0x277CC9980], v35);
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v39);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v42 = v63;
    Calendar.dateComponents(_:from:)();

    v43 = DateComponents.year.getter();
    v44 = MEMORY[0x277D83B88];
    if (v45)
    {
      specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000015, 0x800000021657ADD0, &v72);
      outlined destroy of UTType?(&v72, &_sypSgMd, &_sypSgMR);
    }

    else
    {
      v73 = MEMORY[0x277D83B88];
      *&v72 = v43;
      outlined init with take of Any(&v72, v71);
      v46 = v74;
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v46;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0xD000000000000015, 0x800000021657ADD0, v47);
      v74 = v70;
    }

    v48 = DateComponents.month.getter();
    v49 = v62;
    if (v50)
    {
      specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000016, 0x800000021657ADB0, &v72);
      outlined destroy of UTType?(&v72, &_sypSgMd, &_sypSgMR);
    }

    else
    {
      v73 = v44;
      *&v72 = v48;
      outlined init with take of Any(&v72, v71);
      v51 = v74;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v51;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0xD000000000000016, 0x800000021657ADB0, v52);
      v74 = v70;
    }

    v53 = DateComponents.day.getter();
    if (v54)
    {
      specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000014, 0x800000021657AD90, &v72);
      outlined destroy of UTType?(&v72, &_sypSgMd, &_sypSgMR);
    }

    else
    {
      v73 = v44;
      *&v72 = v53;
      outlined init with take of Any(&v72, v71);
      v55 = v74;
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v55;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0xD000000000000014, 0x800000021657AD90, v56);
      v74 = v70;
    }

    v57 = DateComponents.hour.getter();
    if (v58)
    {
      specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000015, 0x800000021657AD70, &v72);
      outlined destroy of UTType?(&v72, &_sypSgMd, &_sypSgMR);
      (*(v66 + 8))(v42, v67);
      (*(v64 + 8))(v68, v65);
      (*(v49 + 8))(v12, v69);
      return v74;
    }

    else
    {
      v73 = v44;
      *&v72 = v57;
      outlined init with take of Any(&v72, v71);
      v59 = v74;
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v59;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0xD000000000000015, 0x800000021657AD70, v60);
      (*(v66 + 8))(v42, v67);
      (*(v64 + 8))(v68, v65);
      (*(v49 + 8))(v12, v69);
      return v70;
    }
  }

  return result;
}

uint64_t specialized NotificationHandlingManager.updateNotificationScheduleDefaults(with:)(void *a1)
{
  v2 = [a1 scheduleType];
  v3 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v14 = v3;
  v11 = v2;
  specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)(&v11, 0xD000000000000018, 0x800000021657AE90);
  outlined destroy of UTType?(&v11, &_sypSgMd, &_sypSgMR);
  v4 = [a1 weekdays];
  if (v4)
  {
    v5 = v4;
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
  }

  else
  {
    v6 = 0;
    v12 = 0;
    v13 = 0;
  }

  v11 = v6;
  v14 = v4;
  specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)(&v11, 0xD00000000000001CLL, 0x800000021657AEE0);
  outlined destroy of UTType?(&v11, &_sypSgMd, &_sypSgMR);
  v7 = [a1 hour];
  v8 = v3;
  if (!v7)
  {
    v8 = 0;
    v12 = 0;
    v13 = 0;
  }

  v11 = v7;
  v14 = v8;
  specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)(&v11, 0xD000000000000018, 0x8000000216580970);
  outlined destroy of UTType?(&v11, &_sypSgMd, &_sypSgMR);
  v9 = [a1 minute];
  if (!v9)
  {
    v3 = 0;
    v12 = 0;
    v13 = 0;
  }

  v11 = v9;
  v14 = v3;
  specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)(&v11, 0xD00000000000001ALL, 0x8000000216580990);
  return outlined destroy of UTType?(&v11, &_sypSgMd, &_sypSgMR);
}

uint64_t specialized NotificationHandlingManager.setNotificationSchedulePostPhoneOnboarding(authorized:)(char a1)
{
  v2[3] = MEMORY[0x277D83E88];
  v2[0] = (a1 & 1) != 0;
  specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)(v2, 0xD000000000000018, 0x800000021657AE90);
  return outlined destroy of UTType?(v2, &_sypSgMd, &_sypSgMR);
}

unint64_t lazy protocol witness table accessor for type UNNotificationCategory and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UNNotificationCategory and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UNNotificationCategory and conformance NSObject)
  {
    type metadata accessor for NSAttributedString(255, &lazy cache variable for type metadata for UNNotificationCategory, 0x277CE1F98);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UNNotificationCategory and conformance NSObject);
  }

  return result;
}

uint64_t specialized NotificationHandlingManager.didReceiveNotificationDelegateResponse(response:)(void *a1)
{
  v2 = type metadata accessor for NotificationAnalyticsManager.NotificationEvent(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v56 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v55 - v8;
  v9 = a1;
  v10 = [a1 notification];
  v11 = [v10 request];

  v12 = [v11 content];
  v13 = [v12 userInfo];

  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = __swift_project_value_buffer(v15, static CommonLogger.notification);

  v55 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v2;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v60[0] = v21;
    *v20 = 136315138;
    v22 = Dictionary.description.getter();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v60);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_21607C000, v17, v18, "[NotificationHandlingManager] didReceiveNotificationResponse triggered with info: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x21CE94770](v21, -1, -1);
    v25 = v20;
    v2 = v19;
    MEMORY[0x21CE94770](v25, -1, -1);
  }

  v26 = v9;
  v58 = 0x44676E6974736F70;
  v59 = 0xEB00000000657461;
  AnyHashable.init<A>(_:)();
  v27 = v57;
  if (*(v14 + 16) && (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v60), (v29 & 1) != 0))
  {
    outlined init with copy of Any(*(v14 + 56) + 32 * v28, v61);
    outlined destroy of AnyHashable(v60);
    v30 = type metadata accessor for Date();
    v31 = swift_dynamicCast();
    (*(*(v30 - 8) + 56))(v27, v31 ^ 1u, 1, v30);
  }

  else
  {
    outlined destroy of AnyHashable(v60);
    v32 = type metadata accessor for Date();
    (*(*(v32 - 8) + 56))(v27, 1, 1, v32);
  }

  v33 = [v26 actionIdentifier];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
  {
  }

  else
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v38 & 1) == 0)
    {
      v48 = [v26 actionIdentifier];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      if (v49 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v51 == v52)
      {
      }

      else
      {
        v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v53 & 1) == 0)
        {

          return outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        }
      }

      v39 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v39, v54))
      {
        v42 = 6;
        goto LABEL_17;
      }

      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_21607C000, v39, v54, "[NotificationHandlingManager] didReceiveNotificationDelegateResponse: tap", v41, 2u);
      v42 = 6;
      goto LABEL_15;
    }
  }

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v39, v40))
  {
    v42 = 5;
    goto LABEL_17;
  }

  v41 = swift_slowAlloc();
  *v41 = 0;
  _os_log_impl(&dword_21607C000, v39, v40, "[NotificationHandlingManager] didReceiveNotificationDelegateResponse: Dismissed", v41, 2u);
  v42 = 5;
LABEL_15:
  MEMORY[0x21CE94770](v41, -1, -1);
LABEL_17:

  v43 = v56;
  outlined init with copy of DateInterval?(v27, v56, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v44 = *(v2 + 24);
  v45 = type metadata accessor for Date();
  (*(*(v45 - 8) + 56))(&v4[v44], 1, 1, v45);
  v46 = *(v2 + 28);
  *v4 = v42;
  *(v4 + 1) = 0;
  outlined assign with take of Date?(v43, &v4[v44]);
  *&v4[v46] = v14;
  NotificationAnalyticsManager.NotificationEvent.submitNotificationEvent()();
  outlined destroy of NotificationAnalyticsManager.NotificationEvent(v4);
  return outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

unint64_t lazy protocol witness table accessor for type NotificationHandlingManager.NotificationError and conformance NotificationHandlingManager.NotificationError()
{
  result = lazy protocol witness table cache variable for type NotificationHandlingManager.NotificationError and conformance NotificationHandlingManager.NotificationError;
  if (!lazy protocol witness table cache variable for type NotificationHandlingManager.NotificationError and conformance NotificationHandlingManager.NotificationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationHandlingManager.NotificationError and conformance NotificationHandlingManager.NotificationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NotificationHandlingManager.NotificationError and conformance NotificationHandlingManager.NotificationError;
  if (!lazy protocol witness table cache variable for type NotificationHandlingManager.NotificationError and conformance NotificationHandlingManager.NotificationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationHandlingManager.NotificationError and conformance NotificationHandlingManager.NotificationError);
  }

  return result;
}

uint64_t outlined destroy of NotificationAnalyticsManager.NotificationEvent(uint64_t a1)
{
  v2 = type metadata accessor for NotificationAnalyticsManager.NotificationEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized NotificationHandlingManager.notificationRetryCountThreshold.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v7, &_sypSgMd, &_sypSgMR);
    goto LABEL_12;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001FLL, 0x8000000216580AF0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

LABEL_12:
  result = specialized static DefaultsManager.getTrialIntValue(for:)(0xD00000000000001FLL, 0x8000000216580AF0);
  if (v4)
  {
    return 3;
  }

  return result;
}

uint64_t specialized NotificationHandlingManager.passRealtimeCheck(significantLocationEnabled:)(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for Date();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized NotificationHandlingManager.passRealtimeCheck(significantLocationEnabled:), 0, 0);
}

{
  v5 = *v1;

  swift_unknownObjectRelease();

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t specialized NotificationHandlingManager.passRealtimeCheck(significantLocationEnabled:)()
{
  v86 = v0;
  if (specialized NotificationHandlingManager.getScheduleType()() != 1)
  {
    goto LABEL_38;
  }

  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CommonLogger.notification);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21607C000, v2, v3, "User is using smart schedule, continue", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];

  static MOAngelDefaultsManager.dateValueFor(_:)(v7);
  if ((*(v6 + 48))(v7, 1, v5) != 1)
  {
    v16 = v0[5];
    (*(v16 + 32))(v0[11], v0[3], v0[4]);
    static Date.now.getter();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v17 = dispatch thunk of static Comparable.< infix(_:_:)();
    v18 = *(v16 + 16);
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[4];
    if (v17)
    {
      v22 = v0[6];
      v18(v0[7], v19, v0[4]);
      v18(v22, v20, v21);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      v25 = os_log_type_enabled(v23, v24);
      v27 = v0[10];
      v26 = v0[11];
      v29 = v0[6];
      v28 = v0[7];
      v30 = v0[4];
      v31 = v0[5];
      if (v25)
      {
        v78 = v24;
        v32 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v85 = v80;
        *v32 = 136315394;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        log = v23;
        v82 = v26;
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v34;
        v36 = *(v31 + 8);
        v36(v28, v30);
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v85);

        *(v32 + 4) = v37;
        *(v32 + 12) = 2080;
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v40 = v39;
        v36(v29, v30);
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v85);

        *(v32 + 14) = v41;
        _os_log_impl(&dword_21607C000, log, v78, "Current time %s is still within optimal window (ends at %s), proceed with RTC", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v80, -1, -1);
        MEMORY[0x21CE94770](v32, -1, -1);

        v36(v27, v30);
        v36(v82, v30);
      }

      else
      {

        v63 = *(v31 + 8);
        v63(v29, v30);
        v63(v28, v30);
        v63(v27, v30);
        v63(v26, v30);
      }

      goto LABEL_26;
    }

    v45 = v0[8];
    v18(v0[9], v19, v0[4]);
    v18(v45, v20, v21);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();
    v48 = os_log_type_enabled(v46, v47);
    v50 = v0[8];
    v49 = v0[9];
    v52 = v0[4];
    v51 = v0[5];
    if (v48)
    {
      v81 = v47;
      v53 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v85 = v83;
      *v53 = 136315394;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      v79 = v46;
      v57 = *(v51 + 8);
      v57(v49, v52);
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v85);

      *(v53 + 4) = v58;
      *(v53 + 12) = 2080;
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      v57(v50, v52);
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v85);

      *(v53 + 14) = v62;
      _os_log_impl(&dword_21607C000, v79, v81, "Current time %s has reached optimal end date %s, skip checking RTC and post notification now", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v83, -1, -1);
      MEMORY[0x21CE94770](v53, -1, -1);
    }

    else
    {

      v57 = *(v51 + 8);
      v57(v50, v52);
      v57(v49, v52);
    }

    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v72 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      v73 = MEMORY[0x21CE91FC0](0xD000000000000016, 0x8000000216580B10);
      [v72 setInteger:0 forKey:v73];
    }

    v74 = v0[11];
    v75 = v0[4];
    v57(v0[10], v75);
    v57(v74, v75);
LABEL_38:
    v65 = 1;
    goto LABEL_39;
  }

  outlined destroy of UTType?(v0[3], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = specialized static DefaultsManager.Notifications.notificationRetryCount.getter();
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  v11 = specialized NotificationHandlingManager.notificationRetryCountThreshold.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  v14 = os_log_type_enabled(v12, v13);
  if (v10 >= v11)
  {
    if (v14)
    {
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      *(v42 + 4) = v10;
      _os_log_impl(&dword_21607C000, v12, v13, "No optimal end date available, falling back to retry count. Already retried: %ld times, skip checking and post notification now.", v42, 0xCu);
      MEMORY[0x21CE94770](v42, -1, -1);
    }

    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v43 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      v44 = MEMORY[0x21CE91FC0](0xD000000000000016, 0x8000000216580B10);
      [v43 setInteger:0 forKey:v44];
    }

    goto LABEL_38;
  }

  if (v14)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_21607C000, v12, v13, "No optimal end date available, using retry count fallback. Real-time reschedule threshold not reached, continue to realtime check", v15, 2u);
    MEMORY[0x21CE94770](v15, -1, -1);
  }

LABEL_26:
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v65 = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x60))();
  v0[12] = v65;
  if (v65)
  {
    v66 = v64;
    v67 = v0[2];
    ObjectType = swift_getObjectType();
    v69 = [v67 BOOLValue];
    v84 = (*(v66 + 80) + **(v66 + 80));
    v70 = swift_task_alloc();
    v0[13] = v70;
    *v70 = v0;
    v70[1] = specialized NotificationHandlingManager.passRealtimeCheck(significantLocationEnabled:);

    return v84(v69, ObjectType, v66);
  }

LABEL_39:

  v76 = v0[1];

  return v76(v65);
}

uint64_t specialized NotificationHandlingManager.notificationRetryDelayMinutes.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v7, &_sypSgMd, &_sypSgMR);
    goto LABEL_12;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001DLL, 0x8000000216580B80);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

LABEL_12:
  result = specialized static DefaultsManager.getTrialIntValue(for:)(0xD00000000000001DLL, 0x8000000216580B80);
  if (v4)
  {
    return 20;
  }

  return result;
}

uint64_t dispatch thunk of NotificationHandling.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 16) + **(a9 + 16));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = static Exif.filterImage(imageSource:outputURL:);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t dispatch thunk of NotificationHandling.didReceiveScheduleChange(with:shouldUpdateDefaults:for:customURLFormat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 24) + **(a8 + 24));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

id Asset.representativeViewModel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI5Asset_representations);
  if (!v1)
  {
    return 0;
  }

  if (v1 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x21CE93180](0, v1);
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v1 + 32);
  }

  __break(1u);
  return result;
}

char *Asset.assetViewModelFor(style:)(unsigned __int8 *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI5Asset_representations);
  if (v2)
  {
    v3 = *a1;
    if (v2 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v5 = 0;
      while ((v2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x21CE93180](v5, v2);
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_16;
        }

LABEL_9:
        v8 = *&result[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles];
        if (v8)
        {
          v9 = *(v8 + 16);
          v10 = (v8 + 32);
          while (v9)
          {
            v11 = *v10++;
            --v9;
            if (v11 == v3)
            {
              return result;
            }
          }
        }

        if (v5 == i)
        {
          return 0;
        }
      }

      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      result = *(v2 + 32 + 8 * v5);
      v7 = __OFADD__(v5++, 1);
      if (!v7)
      {
        goto LABEL_9;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }
  }

  return 0;
}

id Asset.__allocating_init(universalUUID:representations:priorityScore:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR____TtC9MomentsUI5Asset_styleDict;
  *&v9[v10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI14AssetViewModelC5StyleO_AETt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v11 = &v9[OBJC_IVAR____TtC9MomentsUI5Asset_priorityScore];
  *v11 = 0;
  v11[8] = 1;
  v12 = OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v9[v12], a1, v13);
  *&v9[OBJC_IVAR____TtC9MomentsUI5Asset_representations] = a2;
  swift_beginAccess();
  *v11 = a3;
  v11[8] = a4 & 1;
  v17.receiver = v9;
  v17.super_class = v4;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v14 + 8))(a1, v13);
  return v15;
}

uint64_t Asset.universalUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Asset.priorityScore.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI5Asset_priorityScore;
  swift_beginAccess();
  return *v1;
}

uint64_t Asset.priorityScore.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC9MomentsUI5Asset_priorityScore;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

id Asset.init(universalUUID:representations:priorityScore:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = OBJC_IVAR____TtC9MomentsUI5Asset_styleDict;
  *&v4[v9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI14AssetViewModelC5StyleO_AETt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v10 = &v4[OBJC_IVAR____TtC9MomentsUI5Asset_priorityScore];
  *v10 = 0;
  v10[8] = 1;
  v11 = OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v4[v11], a1, v12);
  *&v4[OBJC_IVAR____TtC9MomentsUI5Asset_representations] = a2;
  swift_beginAccess();
  *v10 = a3;
  v10[8] = a4 & 1;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for Asset(0);
  v14 = objc_msgSendSuper2(&v16, sel_init);
  (*(v13 + 8))(a1, v12);
  return v14;
}

MomentsUI::Asset::CodingKeys_optional __swiftcall Asset.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Asset.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MomentsUI_Asset_CodingKeys_representations;
  }

  else
  {
    v4.value = MomentsUI_Asset_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

MomentsUI::Asset::CodingKeys_optional __swiftcall Asset.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Asset.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MomentsUI_Asset_CodingKeys_representations;
  }

  else
  {
    v4.value = MomentsUI_Asset_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t Asset.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E65736572706572;
  }

  else
  {
    return 0x6173726576696E75;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Asset.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E65736572706572;
  }

  else
  {
    v3 = 0x6173726576696E75;
  }

  if (v2)
  {
    v4 = 0xED0000444955556CLL;
  }

  else
  {
    v4 = 0xEF736E6F69746174;
  }

  if (*a2)
  {
    v5 = 0x6E65736572706572;
  }

  else
  {
    v5 = 0x6173726576696E75;
  }

  if (*a2)
  {
    v6 = 0xEF736E6F69746174;
  }

  else
  {
    v6 = 0xED0000444955556CLL;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Asset.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance Asset.CodingKeys(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Asset.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance Asset.CodingKeys(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Asset.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance Asset.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x6173726576696E75;
  if (*v1)
  {
    v2 = 0x6E65736572706572;
  }

  v3 = 0xED0000444955556CLL;
  if (*v1)
  {
    v3 = 0xEF736E6F69746174;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Asset.CodingKeys()
{
  if (*v0)
  {
    return 0x6E65736572706572;
  }

  else
  {
    return 0x6173726576696E75;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance Asset.CodingKeys(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Asset.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Asset.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Asset.CodingKeys and conformance Asset.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Asset.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Asset.CodingKeys and conformance Asset.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Void __swiftcall Asset.encode(with:)(NSCoder with)
{
  v2 = v1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v5 = MEMORY[0x21CE91FC0](0x6173726576696E75, 0xED0000444955556CLL);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v5];

  v6 = *(v2 + OBJC_IVAR____TtC9MomentsUI5Asset_representations);
  if (v6)
  {
    type metadata accessor for AssetViewModel(0);
    v6 = Array._bridgeToObjectiveC()().super.isa;
  }

  v7 = MEMORY[0x21CE91FC0](0x6E65736572706572, 0xEF736E6F69746174);
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
  swift_unknownObjectRelease();
}

id Asset.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9MomentsUI5Asset_styleDict;
  *&v2[v8] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI14AssetViewModelC5StyleO_AETt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v9 = &v2[OBJC_IVAR____TtC9MomentsUI5Asset_priorityScore];
  *v9 = 0;
  v9[8] = 1;
  type metadata accessor for NSUUID();
  v10 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v10)
  {
    v11 = v10;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v5 + 32))(&v2[OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID], v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_21658CA50;
    *(v12 + 32) = type metadata accessor for AssetViewModel(0);
    v13._countAndFlagsBits = 0x6E65736572706572;
    v13._object = 0xEF736E6F69746174;
    v14 = NSCoder.decodeArrayOfObjects(ofClasses:forKey:)(v12, v13);

    if (v14)
    {
      v15 = specialized _arrayConditionalCast<A, B>(_:)(v14);
    }

    else
    {
      v15 = 0;
    }

    *&v2[OBJC_IVAR____TtC9MomentsUI5Asset_representations] = v15;
    v17 = type metadata accessor for Asset(0);
    v19.receiver = v2;
    v19.super_class = v17;
    v16 = objc_msgSendSuper2(&v19, sel_init);
  }

  else
  {

    type metadata accessor for Asset(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v16;
}

id Asset.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Asset.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Asset(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for Asset(uint64_t a1)
{
  result = type metadata singleton initialization cache for Asset;
  if (!type metadata singleton initialization cache for Asset)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Asset.CodingKeys and conformance Asset.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys;
  if (!lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys;
  if (!lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys;
  if (!lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys;
  if (!lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys);
  }

  return result;
}

uint64_t type metadata completion function for Asset(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t static CloudSyncSnapshot.Class.setter(char *a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  static CloudSyncSnapshot.Class = a1;
  unk_27CA92028 = a2;
  byte_27CA92030 = a3;
  return result;
}

uint64_t CloudSyncSnapshot.Log.unsafeMutableAddressor()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static CloudSyncSnapshot.Log);
}

uint64_t static CloudSyncSnapshot.Log.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudSyncSnapshot.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CloudSyncSnapshot.Log.setter(uint64_t a1)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudSyncSnapshot.Log);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CloudSyncSnapshot.Log.modify(uint64_t a1))()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CloudSyncSnapshot.Log);
  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t protocol witness for static CloudLog.Log.getter in conformance CloudSyncSnapshot@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudSyncSnapshot.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

double static CloudSyncSnapshot.productionSchema.getter()
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static CloudSyncSnapshot.productionSchema.setter(void *a1)
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CloudSyncSnapshot.productionSchema = a1;

  return result;
}

uint64_t (*static CloudSyncSnapshot.productionSchema.modify(uint64_t a1))()
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return MutableVideoViewModel.videoDurationSeconds.modify;
}

void static CloudSyncSnapshot.zoneName.getter()
{
  _StringGuts.grow(_:)(24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI17CloudSyncSnapshotCmMd, &_s9MomentsUI17CloudSyncSnapshotCmMR);
  String.init<A>(describing:)();

  MEMORY[0x21CE92100](0xD000000000000016, 0x8000000216578720);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

CKRecordZoneID CloudSyncSnapshot.zoneID.getter()
{
  v1 = [v0 zoneName];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID, 0x277CBC5F8);
  v6._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6._object = v7;
  v8._countAndFlagsBits = v3;
  v8._object = v5;
  return CKRecordZoneID.init(zoneName:ownerName:)(v8, v6);
}

id static CloudSyncSnapshot.create(id:expiry:generation:sequence:suggestionTabsData:zoneName:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for CloudSyncSnapshot();
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v18 = MEMORY[0x21CE91FC0](a1, a2);
  [v17 setId_];

  v19 = MEMORY[0x21CE91FC0](a9, a10);
  [v17 setZoneName_];

  isa = Date._bridgeToObjectiveC()().super.isa;
  [v17 setExpiry_];

  v21 = MEMORY[0x21CE91FC0](a4, a5);
  [v17 setGeneration_];

  [v17 setSequence_];
  v22 = 0;
  if (a8 >> 60 != 15)
  {
    v22 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v17 setSuggestionTabsData_];

  return v17;
}

id static CloudSyncSnapshot.create(id:expiry:generation:sequence:suggestionTabs:zoneName:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  type metadata accessor for CloudSyncSnapshot();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v17 = MEMORY[0x21CE91FC0](a1, a2);
  [v16 setId_];

  v18 = MEMORY[0x21CE91FC0](a8, a9);
  [v16 setZoneName_];

  isa = Date._bridgeToObjectiveC()().super.isa;
  [v16 setExpiry_];

  if (a5)
  {
    v20 = MEMORY[0x21CE91FC0](a4, a5);
  }

  else
  {
    v20 = 0;
  }

  [v16 setGeneration_];

  [v16 setSequence_];

  CloudSyncSnapshot.suggestionTabs.setter(v21);
  return v16;
}

uint64_t CloudSyncSnapshot.lastKnownCKRecord.setter(void *a1)
{
  v2 = v1;
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSg_AA4DateVSgtMd, &_s10Foundation4DataVSg_AA4DateVSgtMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v39 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSg_AA4DateVSgtSgMd, &_s10Foundation4DataVSg_AA4DateVSgtSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = (&v38 - v16);
  v18 = [v1 lastKnownCKRecordData];
  if (v18)
  {
    v19 = v18;
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xF000000000000000;
  }

  v23 = [v2 lastKnownCKRecordSync];
  v40 = v2;
  if (v23)
  {
    v24 = v23;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = type metadata accessor for Date();
    (*(*(v25 - 8) + 56))(v11, 0, 1, v25);
  }

  else
  {
    v26 = type metadata accessor for Date();
    (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
  }

  type metadata accessor for CloudSyncDB(0);
  v27 = v41;
  static CloudSyncDB.setCKRecord(oldData:oldDate:newValue:)(v20, v22, v41, v17);
  outlined consume of Data?(v20, v22);
  outlined destroy of UTType?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of DateInterval?(v17, v15, &_s10Foundation4DataVSg_AA4DateVSgtSgMd, &_s10Foundation4DataVSg_AA4DateVSgtSgMR);
  if ((*(v4 + 48))(v15, 1, v3) == 1)
  {
    outlined destroy of UTType?(v17, &_s10Foundation4DataVSg_AA4DateVSgtSgMd, &_s10Foundation4DataVSg_AA4DateVSgtSgMR);

    v17 = v15;
  }

  else
  {
    v28 = v39;
    outlined init with take of URL?(v15, v39, &_s10Foundation4DataVSg_AA4DateVSgtMd, &_s10Foundation4DataVSg_AA4DateVSgtMR);
    outlined init with copy of DateInterval?(v28, v7, &_s10Foundation4DataVSg_AA4DateVSgtMd, &_s10Foundation4DataVSg_AA4DateVSgtMR);
    v29 = v7[1];
    if (v29 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      v31 = *v7;
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data?(v31, v29);
    }

    v32 = v41;
    v33 = *(v3 + 48);
    [v40 setLastKnownCKRecordData_];

    v34 = type metadata accessor for Date();
    v35 = *(v34 - 8);
    v36 = 0;
    if ((*(v35 + 48))(v7 + v33, 1, v34) != 1)
    {
      v36 = Date._bridgeToObjectiveC()().super.isa;
      (*(v35 + 8))(v7 + v33, v34);
    }

    [v40 setLastKnownCKRecordSync_];

    outlined destroy of UTType?(v28, &_s10Foundation4DataVSg_AA4DateVSgtMd, &_s10Foundation4DataVSg_AA4DateVSgtMR);
  }

  return outlined destroy of UTType?(v17, &_s10Foundation4DataVSg_AA4DateVSgtSgMd, &_s10Foundation4DataVSg_AA4DateVSgtSgMR);
}

uint64_t closure #1 in CloudSyncSnapshot.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](closure #1 in CloudSyncSnapshot.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:), 0, 0);
}

uint64_t closure #1 in CloudSyncSnapshot.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)()
{
  v1 = v0[4];
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMd, &_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMR);
  v3 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[5] = v6;
  *(v6 + 16) = xmmword_21658CA50;
  (*(v4 + 16))(v6 + v5, v1, v3);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = closure #1 in CloudSyncAssetData.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:);
  v8 = v0[3];

  return CloudManagerProtocol.add(pendingRecordZoneChanges:_:_:)(v6, 0xD00000000000004CLL, 0x8000000216578810, 187, ObjectType, v8);
}

Swift::Void __swiftcall CloudSyncSnapshot.populateRecord(_:)(CKRecord a1)
{
  v3 = type metadata accessor for Logger();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v56 - v13;
  v15 = [v1 generation];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = MEMORY[0x277CBBE08];
    v21 = MEMORY[0x277D837D0];
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v21 = 0;
    v20 = 0;
    *&v61 = 0;
  }

  *&v60 = v17;
  *(&v60 + 1) = v19;
  *(&v61 + 1) = v21;
  v62 = v20;
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C12SyncSnapshotC_Tt2g5(a1.super.isa, 0x69746172656E6567, 0xEA00000000006E6FLL, &v60);
  outlined destroy of UTType?(&v60, &_s8CloudKit21CKRecordValueProtocol_pSgMd, &_s8CloudKit21CKRecordValueProtocol_pSgMR);
  v22 = [v1 sequence];
  *(&v61 + 1) = MEMORY[0x277D84A28];
  v62 = MEMORY[0x277CBBEF0];
  *&v60 = v22;
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C12SyncSnapshotC_Tt2g5(a1.super.isa, 0x65636E6575716573, 0xE800000000000000, &v60);
  outlined destroy of UTType?(&v60, &_s8CloudKit21CKRecordValueProtocol_pSgMd, &_s8CloudKit21CKRecordValueProtocol_pSgMR);
  v23 = [v1 expiry];
  if (v23)
  {
    v24 = v23;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v6 + 56))(v12, v25, 1, v5);
  outlined init with take of URL?(v12, v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    outlined destroy of UTType?(v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v60 = 0u;
    v61 = 0u;
    v62 = 0;
  }

  else
  {
    *(&v61 + 1) = v5;
    v62 = MEMORY[0x277CBBBE8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
    (*(v6 + 32))(boxed_opaque_existential_1, v14, v5);
  }

  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C12SyncSnapshotC_Tt2g5(a1.super.isa, 0x797269707865, 0xE600000000000000, &v60);
  outlined destroy of UTType?(&v60, &_s8CloudKit21CKRecordValueProtocol_pSgMd, &_s8CloudKit21CKRecordValueProtocol_pSgMR);
  v27 = [v1 suggestionTabsData];
  if (v27)
  {
    v28 = v27;
    v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = MEMORY[0x277CBBBE0];
    v33 = MEMORY[0x277CC9318];
  }

  else
  {
    v29 = 0;
    v31 = 0;
    v33 = 0;
    v32 = 0;
    *&v61 = 0;
  }

  *&v60 = v29;
  *(&v60 + 1) = v31;
  *(&v61 + 1) = v33;
  v62 = v32;
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C12SyncSnapshotC_Tt2g5(a1.super.isa, 0x6974736567677573, 0xEE00736261546E6FLL, &v60);
  outlined destroy of UTType?(&v60, &_s8CloudKit21CKRecordValueProtocol_pSgMd, &_s8CloudKit21CKRecordValueProtocol_pSgMR);
  v34 = [v1 expiry];
  if (v34)
  {
    v35 = v34;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceNow.getter();
    v37 = v36;
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v38 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
    if (v39)
    {
      v37 = 2419200.0;
    }

    else
    {
      v37 = v38;
    }
  }

  v41 = v56;
  v40 = v57;
  v42 = v58;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v43 = __swift_project_value_buffer(v40, static CloudSyncSnapshot.Log);
  swift_beginAccess();
  (*(v41 + 16))(v42, v43, v40);
  v44 = a1.super.isa;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v59 = v48;
    *v47 = 136446722;
    *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000002165787D0, &v59);
    *(v47 + 12) = 2080;
    v49 = [(objc_class *)v44 recordID];
    v50 = [v49 recordName];

    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v59);

    *(v47 + 14) = v54;
    *(v47 + 22) = 2048;
    *(v47 + 24) = v37;
    _os_log_impl(&dword_21607C000, v45, v46, "CloudSyncSnapshot.%{public}s Setting TTL for record %s to %f seconds", v47, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v48, -1, -1);
    MEMORY[0x21CE94770](v47, -1, -1);

    (*(v41 + 8))(v58, v40);
  }

  else
  {

    (*(v41 + 8))(v42, v40);
  }

  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [(objc_class *)v44 setExpirationAfterTimeInterval:isa];
}

uint64_t static CloudSyncSnapshot.dumpRecord(_:)()
{
  v0 = [swift_getObjCClassFromMetadata() description];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

id CloudSyncSnapshot.lastKnownCKRecord.getter()
{
  v1 = [v0 lastKnownCKRecordData];
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xF000000000000000;
  }

  v6 = specialized static CloudSyncDB.getCKRecord(_:)(v3, v5);
  outlined consume of Data?(v3, v5);
  return v6;
}

void (*CloudSyncSnapshot.lastKnownCKRecord.modify(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 lastKnownCKRecordData];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  v8 = specialized static CloudSyncDB.getCKRecord(_:)(v5, v7);
  outlined consume of Data?(v5, v7);
  *a1 = v8;
  return CloudSyncSnapshot.lastKnownCKRecord.modify;
}

void CloudSyncSnapshot.lastKnownCKRecord.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    CloudSyncSnapshot.lastKnownCKRecord.setter(v2);
  }

  else
  {
    CloudSyncSnapshot.lastKnownCKRecord.setter(*a1);
  }
}

double protocol witness for static CloudRecord.productionSchema.getter in conformance CloudSyncSnapshot()
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

void (*protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudSyncSnapshot(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = CloudSyncSnapshot.lastKnownCKRecord.modify(v2);
  return protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudSyncAssetData;
}

BOOL specialized static CloudSyncSnapshot.< infix(_:_:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v7 = [a1 id];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v18[2] = v8;
  v18[3] = v10;
  v11 = [a2 id];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v18[0] = v12;
  v18[1] = v14;
  v15 = type metadata accessor for Locale();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  lazy protocol witness table accessor for type String and conformance String();
  v16 = StringProtocol.compare<A>(_:options:range:locale:)();
  outlined destroy of UTType?(v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

  return v16 == -1;
}

id specialized static CloudSyncSnapshot.create(_:primaryID:context:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v41 = a4;
  v42 = a2;
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v40 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 recordID];
  v12 = [v11 recordName];

  if (!v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = MEMORY[0x21CE91FC0](v13);
  }

  v14 = [a1 recordID];
  v15 = [v14 zoneID];

  v16 = [v15 zoneName];
  if (!v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = MEMORY[0x21CE91FC0](v17);
  }

  v18 = [a1 encryptedValues];
  v19 = MEMORY[0x21CE91FC0](0x69746172656E6567, 0xEA00000000006E6FLL);
  v20 = [v18 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v20 && (v47 = v20, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), (swift_dynamicCast() & 1) != 0))
  {
    v42 = v45;
    v43 = v46;
  }

  else
  {
  }

  v21 = [a1 encryptedValues];
  v22 = MEMORY[0x21CE91FC0](0x65636E6575716573, 0xE800000000000000);
  v23 = [v21 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v23 && (v45 = v23, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), (swift_dynamicCast() & 1) != 0))
  {
    v40 = v47;
  }

  else
  {
    v40 = 0;
  }

  v24 = [a1 encryptedValues];
  v25 = MEMORY[0x21CE91FC0](0x797269707865, 0xE600000000000000);
  v26 = [v24 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v26)
  {
    v45 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    v27 = swift_dynamicCast();
    (*(v9 + 56))(v7, v27 ^ 1u, 1, v8);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v44, v7, v8);
      goto LABEL_19;
    }
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  static Date.distantPast.getter();
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    outlined destroy of UTType?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_19:
  v28 = [a1 encryptedValues];
  v29 = MEMORY[0x21CE91FC0](0x6974736567677573, 0xEE00736261546E6FLL);
  v30 = [v28 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v30 && (v47 = v30, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), (swift_dynamicCast() & 1) != 0))
  {
    v32 = v45;
    v31 = v46;
  }

  else
  {
    v32 = 0;
    v31 = 0xF000000000000000;
  }

  type metadata accessor for CloudSyncSnapshot();
  v33 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v34 = [v33 initWithContext_];
  [v34 setId_];

  [v34 setZoneName_];
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v34 setExpiry_];

  v36 = MEMORY[0x21CE91FC0](v42, v43);

  [v34 setGeneration_];

  [v34 setSequence_];
  v37 = 0;
  if (v31 >> 60 != 15)
  {
    v37 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v34 setSuggestionTabsData_];

  v38 = a1;
  CloudSyncSnapshot.lastKnownCKRecord.setter(a1);
  outlined consume of Data?(v32, v31);
  (*(v9 + 8))(v44, v8);
  return v34;
}

uint64_t specialized CloudSyncSnapshot.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(void *a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v146 = a7;
  v153 = a3;
  v154 = a6;
  LODWORD(v155) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v145 = &v132 - v10;
  v11 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v147 = *(v11 - 8);
  v148 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v143 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = v13;
  MEMORY[0x28223BE20](v12);
  v144 = (&v132 - v14);
  v152 = type metadata accessor for Logger();
  v141 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v151 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  MEMORY[0x28223BE20](v136);
  v149 = &v132 - v16;
  v140 = type metadata accessor for POSIXError();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v135 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v132 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v150 = &v132 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v132 - v26;
  v157 = type metadata accessor for Date();
  v28 = *(v157 - 8);
  v29 = MEMORY[0x28223BE20](v157);
  v134 = &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v159 = &v132 - v31;
  v32 = [a1 encryptedValues];
  v33 = MEMORY[0x21CE91FC0](0x69746172656E6567, 0xEA00000000006E6FLL);
  v34 = [v32 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v34 && (v160[0] = v34, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), (swift_dynamicCast() & 1) != 0))
  {
    a4 = v162;
    v153 = v161;
  }

  else
  {
  }

  v35 = [a1 encryptedValues];
  v36 = MEMORY[0x21CE91FC0](0x65636E6575716573, 0xE800000000000000);
  v37 = [v35 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  v137 = v23;
  if (v37)
  {
    v161 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    if (swift_dynamicCast())
    {
      v37 = v160[0];
    }

    else
    {
      v37 = 0;
    }
  }

  v158 = a1;
  v38 = [a1 encryptedValues];
  v39 = MEMORY[0x21CE91FC0](0x797269707865, 0xE600000000000000);
  v40 = [v38 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v40)
  {
    v161 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    v41 = v157;
    v42 = swift_dynamicCast();
    v43 = *(v28 + 56);
    v43(v27, v42 ^ 1u, 1, v41);
    v44 = *(v28 + 48);
    if (v44(v27, 1, v41) != 1)
    {
      (*(v28 + 32))(v159, v27, v41);
      goto LABEL_15;
    }
  }

  else
  {
    v43 = *(v28 + 56);
    v41 = v157;
    v43(v27, 1, 1, v157);
  }

  static Date.distantPast.getter();
  v44 = *(v28 + 48);
  if (v44(v27, 1, v41) != 1)
  {
    outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_15:
  v45 = [v158 encryptedValues];
  v46 = MEMORY[0x21CE91FC0](0x6974736567677573, 0xEE00736261546E6FLL);
  v47 = [v45 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  v48 = 0xF000000000000000;
  if (v47)
  {
    v160[0] = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    v49 = swift_dynamicCast();
    if (v49)
    {
      v50 = v161;
    }

    else
    {
      v50 = 0;
    }

    if (v49)
    {
      v48 = v162;
    }
  }

  else
  {
    v50 = 0;
  }

  v51 = v156;
  v52 = v157;
  if ((v155 & 1) == 0)
  {
    if (a4)
    {
      v56 = MEMORY[0x21CE91FC0](v153, a4);
    }

    else
    {
      v56 = 0;
    }

    [v51 setGeneration_];

    [v51 setSequence_];
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v51 setExpiry_];

    if (v48 >> 60 == 15)
    {
      v58 = 0;
    }

    else
    {
      outlined copy of Data._Representation(v50, v48);
      v58 = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data?(v50, v48);
    }

    [v51 setSuggestionTabsData_];

    goto LABEL_74;
  }

  if (!v154)
  {
    goto LABEL_74;
  }

  v53 = one-time initialization token for productionSchema;
  swift_unknownObjectRetain();
  if (v53 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static CloudSyncSnapshot.productionSchema + 2))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0x65636E6575716573, 0xE800000000000000);
    v55 = v54;
    swift_endAccess();
    if ((v55 & 1) != 0 && [v51 sequence] != v37)
    {
      goto LABEL_65;
    }
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  if (!*(static CloudSyncSnapshot.productionSchema + 2))
  {
    swift_endAccess();
    goto LABEL_44;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(0x797269707865, 0xE600000000000000);
  v60 = v59;
  swift_endAccess();
  if ((v60 & 1) == 0)
  {
    goto LABEL_44;
  }

  v61 = [v51 expiry];
  v133 = v50;
  if (v61)
  {
    v62 = v150;
    v63 = v61;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = 0;
  }

  else
  {
    v64 = 1;
    v62 = v150;
  }

  v43(v62, v64, 1, v52);
  v73 = v137;
  (*(v28 + 16))(v137, v159, v52);
  v43(v73, 0, 1, v52);
  v74 = *(v136 + 48);
  v75 = v149;
  outlined init with copy of DateInterval?(v62, v149, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v155 = v74;
  outlined init with copy of DateInterval?(v73, &v74[v75], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v44(v75, 1, v52) == 1)
  {
    outlined destroy of UTType?(v73, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v76 = v149;
    outlined destroy of UTType?(v150, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v77 = v44(&v155[v76], 1, v52);
    v50 = v133;
    if (v77 == 1)
    {
      outlined destroy of UTType?(v76, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_44;
    }
  }

  else
  {
    v78 = v135;
    outlined init with copy of DateInterval?(v75, v135, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v79 = v155;
    if (v44(&v155[v75], 1, v52) != 1)
    {
      v80 = v134;
      (*(v28 + 32))(v134, &v79[v75], v52);
      lazy protocol witness table accessor for type CloudSyncSnapshot and conformance CloudSyncSnapshot(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v81 = v78;
      v82 = v75;
      v83 = dispatch thunk of static Equatable.== infix(_:_:)();
      v84 = *(v28 + 8);
      v84(v80, v52);
      outlined destroy of UTType?(v137, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of UTType?(v150, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v84(v81, v52);
      v51 = v156;
      outlined destroy of UTType?(v82, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v50 = v133;
      if ((v83 & 1) == 0)
      {
        goto LABEL_65;
      }

LABEL_44:
      swift_beginAccess();
      if (!*(static CloudSyncSnapshot.productionSchema + 2))
      {
        swift_endAccess();
        goto LABEL_52;
      }

      specialized __RawDictionaryStorage.find<A>(_:)(0x6974736567677573, 0xEE00736261546E6FLL);
      v66 = v65;
      swift_endAccess();
      if ((v66 & 1) == 0)
      {
LABEL_52:
        swift_unknownObjectRelease();
        goto LABEL_74;
      }

      v67 = [v51 suggestionTabsData];
      if (v67)
      {
        v68 = v67;
        v69 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;

        if (v71 >> 60 != 15)
        {
          if (v48 >> 60 != 15)
          {
            outlined copy of Data?(v50, v48);
            outlined copy of Data?(v69, v71);
            v72 = specialized static Data.== infix(_:_:)(v69, v71, v50, v48);
            outlined consume of Data?(v50, v48);
            outlined consume of Data?(v69, v71);
            outlined consume of Data?(v69, v71);
            if (!v72)
            {
              goto LABEL_65;
            }

            goto LABEL_52;
          }

          goto LABEL_63;
        }
      }

      else
      {
        v69 = 0;
        v71 = 0xF000000000000000;
      }

      if (v48 >> 60 == 15)
      {
        outlined copy of Data?(v50, v48);
        swift_unknownObjectRelease();
        outlined consume of Data?(v69, v71);
        goto LABEL_74;
      }

LABEL_63:
      outlined copy of Data?(v50, v48);
      outlined consume of Data?(v69, v71);
      outlined consume of Data?(v50, v48);
      goto LABEL_65;
    }

    outlined destroy of UTType?(v137, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v76 = v149;
    outlined destroy of UTType?(v150, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v28 + 8))(v78, v52);
    v50 = v133;
  }

  outlined destroy of UTType?(v76, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
LABEL_65:
  v156 = v48;
  LODWORD(v161) = 22;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  lazy protocol witness table accessor for type CloudSyncSnapshot and conformance CloudSyncSnapshot(&lazy protocol witness table cache variable for type POSIXError and conformance POSIXError, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
  v85 = v138;
  v86 = v140;
  _BridgedStoredNSError.init(_:userInfo:)();
  v87 = POSIXError._nsError.getter();
  (*(v139 + 8))(v85, v86);
  v155 = v87;
  swift_willThrow();
  v133 = v50;
  v88 = v158;
  v89 = v151;
  v90 = v152;
  v91 = v141;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v92 = __swift_project_value_buffer(v90, static CloudSyncSnapshot.Log);
  swift_beginAccess();
  (*(v91 + 16))(v89, v92, v90);
  v93 = v88;
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = v91;
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v160[0] = v98;
    *v97 = 136446466;
    *(v97 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004CLL, 0x8000000216578810, v160);
    *(v97 + 12) = 2080;
    v99 = [v93 recordID];
    v100 = [v99 recordName];

    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;

    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v103, v160);

    *(v97 + 14) = v104;
    _os_log_impl(&dword_21607C000, v94, v95, "CloudSyncSnapshot.%{public}s: iCloud tried to clobber our snapshot record %s. Re-uploading...", v97, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v98, -1, -1);
    MEMORY[0x21CE94770](v97, -1, -1);

    (*(v96 + 8))(v151, v152);
  }

  else
  {

    (*(v91 + 8))(v89, v90);
  }

  v105 = [v51 id];
  v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v108 = v107;

  v109 = [v51 zoneName];
  if (v109)
  {
    v110 = v109;
    v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v113 = v112;
  }

  else
  {
    v111 = 0;
    v113 = 0xE000000000000000;
  }

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID, 0x277CBC5D0);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID, 0x277CBC5F8);
  v114._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v114._object = v115;
  v116._countAndFlagsBits = v111;
  v116._object = v113;
  v117 = CKRecordZoneID.init(zoneName:ownerName:)(v116, v114).super.isa;
  v118._countAndFlagsBits = v106;
  v118._object = v108;
  v119.super.isa = CKRecordID.init(recordName:zoneID:)(v118, v117).super.isa;
  v120 = v144;
  v144->super.isa = v119.super.isa;
  v122 = v147;
  v121 = v148;
  (*(v147 + 104))(v120, *MEMORY[0x277CBBC68], v148);
  v123 = type metadata accessor for TaskPriority();
  v124 = v145;
  (*(*(v123 - 8) + 56))(v145, 1, 1, v123);
  v125 = v143;
  (*(v122 + 16))(v143, v120, v121);
  v126 = (*(v122 + 80) + 48) & ~*(v122 + 80);
  v127 = swift_allocObject();
  *(v127 + 2) = 0;
  *(v127 + 3) = 0;
  v128 = v146;
  *(v127 + 4) = v154;
  *(v127 + 5) = v128;
  (*(v122 + 32))(&v127[v126], v125, v121);
  swift_unknownObjectRetain();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v124, &async function pointer to partial apply for closure #1 in CloudSyncSnapshot.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:), v127);

  swift_unknownObjectRelease();
  (*(v122 + 8))(v120, v121);
  v48 = v156;
  v52 = v157;
  v50 = v133;
LABEL_74:
  v129 = v158;
  v130 = v158;
  CloudSyncSnapshot.lastKnownCKRecord.setter(v129);
  outlined consume of Data?(v50, v48);
  return (*(v28 + 8))(v159, v52);
}

uint64_t instantiation function for generic protocol witness table for CloudSyncSnapshot(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CloudSyncSnapshot and conformance CloudSyncSnapshot(&lazy protocol witness table cache variable for type CloudSyncSnapshot and conformance CloudSyncSnapshot, type metadata accessor for CloudSyncSnapshot, &protocol conformance descriptor for CloudSyncSnapshot);
  a1[2] = lazy protocol witness table accessor for type CloudSyncSnapshot and conformance CloudSyncSnapshot(&lazy protocol witness table cache variable for type CloudSyncSnapshot and conformance NSObject, type metadata accessor for CloudSyncSnapshot, MEMORY[0x277D85378]);
  result = lazy protocol witness table accessor for type CloudSyncSnapshot and conformance CloudSyncSnapshot(&lazy protocol witness table cache variable for type CloudSyncSnapshot and conformance CloudSyncSnapshot, type metadata accessor for CloudSyncSnapshot, &protocol conformance descriptor for CloudSyncSnapshot);
  a1[3] = result;
  return result;
}

uint64_t partial apply for closure #1 in CloudSyncSnapshot.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(uint64_t a1)
{
  v4 = *(type metadata accessor for CKSyncEngine.PendingRecordZoneChange() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in CloudSyncSnapshot.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t lazy protocol witness table accessor for type CloudSyncSnapshot and conformance CloudSyncSnapshot(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t one-time initialization function for configuration(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for NotificationBiome()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static CommonLogger.NotificationBiome);
  __swift_project_value_buffer(v0, static CommonLogger.NotificationBiome);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for uiRendering(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, a4);
  (*(v9 + 16))(v11, v13, v8);
  return OSSignposter.init(logger:)();
}

uint64_t static CommonLogger.configuration.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

char *InterstitialListViewController.__allocating_init(presenter:assetGroupViewModels:isSingleDaySuggestion:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = objc_allocWithZone(v3);
  return InterstitialListViewController.init(presenter:assetGroupViewModels:isSingleDaySuggestion:)(a1, a2, v4);
}

char *InterstitialListViewController.init(presenter:assetGroupViewModels:isSingleDaySuggestion:)(uint64_t *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC9MomentsUI30InterstitialListViewController_assetUUIDToIndexPathMap] = MEMORY[0x277D84F98];
  v3[OBJC_IVAR____TtC9MomentsUI30InterstitialListViewController_isSingleDaySuggestion] = a3;
  *&v3[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_collectionView] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_dataSource] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections] = MEMORY[0x277D84F90];
  v5 = *a1;
  v6 = a1[1];
  *&v3[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_presenter];
  *v7 = v5;
  v7[1] = v6;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for InterstitialCollectionViewController();
  v8 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  specialized InterstitialListViewController.createSections(assetGroupViewModels:assetSummaryAssetTypeMap:)(a2);
  v10 = v9;

  v11 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections;
  swift_beginAccess();
  *(v8 + v11) = v10;

  InterstitialCollectionViewController.reloadData()();

  return v8;
}

Swift::Void __swiftcall InterstitialListViewController.updateSections(assetGroupViewModels:)(Swift::OpaquePointer assetGroupViewModels)
{
  specialized InterstitialListViewController.createSections(assetGroupViewModels:assetSummaryAssetTypeMap:)(assetGroupViewModels._rawValue);
  v3 = v2;
  v4 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections;
  swift_beginAccess();
  *(v1 + v4) = v3;

  InterstitialCollectionViewController.reloadData()();
}

id InterstitialListViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InterstitialListViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI30InterstitialListViewController_assetUUIDToIndexPathMap) = MEMORY[0x277D84F98];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void InterstitialListViewController.buttonAction(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v85 = a1;
  v7 = IndexPath.section.getter();
  v8 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections;
  swift_beginAccess();
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = *(v2 + v8);
  if (v7 >= *(v9 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v10 = v9 + 16 * v7;
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);
  swift_bridgeObjectRetain_n();
  v13 = IndexPath.item.getter();
  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v13 >= *(v12 + 16))
  {
LABEL_25:
    __break(1u);
    return;
  }

  v81 = v11;
  v82 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = v5;
  v84 = v4;
  v14 = v2;
  v15 = (v12 + 56 * v13);
  v16 = v15[4];
  v17 = v15[5];
  v19 = v15[6];
  v18 = v15[7];
  v21 = v15[8];
  v20 = v15[9];
  v22 = v15[10];
  outlined copy of Interstitial.Item(v16, v17, v19, v18, v21, v20, v22);

  if (v22 < 0)
  {
    outlined consume of Interstitial.Item(v16, v17, v19, v18, v21, v20, v22);

    return;
  }

  v75 = v16;
  v76 = v17;
  v77 = v19;
  v78 = v18;
  v70 = v21;
  v71 = v20;
  v72 = v22;
  v23 = swift_allocObject();
  v79 = v12;
  swift_unknownObjectWeakInit();
  v24 = v82;
  v25 = ObjectType;
  v80 = *(ObjectType + 16);
  v26 = v84;
  v80(v82, v85, v84);
  v27 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v74 = v27;
  v28 = (v6 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = v23;
  ObjectType = *(v25 + 32);
  (ObjectType)(v29 + v27, v24, v26);
  v30 = (v29 + v28);
  v31 = v81;
  v32 = v79;
  *v30 = v81;
  v30[1] = v32;
  v33 = swift_allocObject();
  v69 = v14;
  swift_unknownObjectWeakInit();
  v80(v24, v85, v26);
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  (ObjectType)(v34 + v74, v24, v26);
  v35 = (v34 + v28);
  *v35 = v31;
  v36 = v79;
  v35[1] = v79;
  v37 = *(v36 + 16);
  if (v37)
  {
    v68[0] = v34;
    v68[1] = v29;
    v38 = v69 + OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking;
    swift_bridgeObjectRetain_n();
    v74 = v38;
    swift_beginAccess();
    v39 = 0;
    v40 = (v36 + 40);
    v42 = v77;
    v41 = v78;
    v44 = v75;
    v43 = v76;
    v73 = v37;
    while (v39 < *(v36 + 16))
    {
      v45 = v40[5];
      if (v45 < 0)
      {
        v46 = *v40;
        v85 = *(v40 - 1);
        v48 = v40[1];
        v47 = v40[2];
        v49 = v40[3];
        v50 = v40[4];
        v51 = v74;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          outlined copy of Interstitial.AssetMetadata?(v46, v48, v47, v49);
          v66 = v50;
          v67 = (v45 & 0x7FFFFFFFFFFFFFFFLL);

          outlined consume of Interstitial.Item(v75, v76, v77, v78, v70, v71, v72);
          v59 = v85;
          v60 = v46;
          v61 = v48;
          v62 = v47;
          v63 = v49;
          v64 = v50;
          v65 = v45;
          goto LABEL_19;
        }

        v52 = *(v51 + 8);
        ObjectType = swift_getObjectType();
        v53 = v49;
        v84 = v49;
        v54 = v47;
        v55 = *(v52 + 24);
        v81 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid;
        v82 = v55;
        v80 = (v45 & 0x7FFFFFFFFFFFFFFFLL);
        outlined copy of Interstitial.AssetMetadata?(v46, v48, v47, v53);
        v56 = v50;
        v57 = v80;
        v58 = (v82)(&v50[v81], ObjectType, v52);
        outlined consume of Interstitial.Item(v85, v46, v48, v54, v84, v50, v45);
        swift_unknownObjectRelease();
        v42 = v77;
        v41 = v78;
        v44 = v75;
        v43 = v76;
        v36 = v79;
        v37 = v73;
        if ((v58 & 1) == 0)
        {

          v59 = v44;
          v60 = v43;
          v61 = v42;
          v62 = v41;
          v63 = v70;
          v64 = v71;
          v65 = v72;
LABEL_19:
          outlined consume of Interstitial.Item(v59, v60, v61, v62, v63, v64, v65);
          return;
        }
      }

      ++v39;
      v40 += 7;
      if (v37 == v39)
      {

        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  v42 = v77;
  v41 = v78;
  v44 = v75;
  v43 = v76;
LABEL_17:
  outlined consume of Interstitial.Item(v44, v43, v42, v41, v70, v71, v72);
}

void closure #1 in InterstitialListViewController.buttonAction(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for IndexPath();
  v6 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = IndexPath.item.getter();
    v12 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      v13 = *(a4 + 16);
      if (v13 < v12)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (v12 == v13)
      {
LABEL_5:

        return;
      }

      if (v12 >= v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      v14 = &v10[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking];
      v34 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections;
      swift_beginAccess();
      swift_beginAccess();
      v31 = (v6 + 8);
      v32 = v13;
      v33 = a2;
      v36 = v8;
      v37 = v10;
      v30 = v14;
      while (1)
      {
        v15 = IndexPath.section.getter();
        MEMORY[0x21CE90B80](v12, v15);
        v16 = IndexPath.section.getter();
        if ((v16 & 0x8000000000000000) != 0)
        {
          break;
        }

        v17 = *&v10[v34];
        if (v16 >= *(v17 + 16))
        {
          goto LABEL_19;
        }

        v18 = *(v17 + 16 * v16 + 40);

        v19 = IndexPath.item.getter();
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v19 >= *(v18 + 16))
        {
          goto LABEL_21;
        }

        v20 = (v18 + 56 * v19);
        v21 = v20[4];
        v22 = v20[5];
        v24 = v20[6];
        v23 = v20[7];
        v25 = v20[8];
        v26 = v20[9];
        v27 = v20[10];
        outlined copy of Interstitial.Item(v21, v22, v24, v23, v25, v26, v27);

        if (v27 < 0)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            v29 = *(v30 + 1);
            ObjectType = swift_getObjectType();
            (*(v29 + 16))(v37, v26 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, ObjectType);
            swift_unknownObjectRelease();
          }

          InterstitialListViewController.updateSelectionView(at:)();
        }

        ++v12;
        outlined consume of Interstitial.Item(v21, v22, v24, v23, v25, v26, v27);
        (*v31)(v36, v35);
        v10 = v37;
        if (v32 == v12)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }
}

void closure #2 in InterstitialListViewController.buttonAction(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for IndexPath();
  v6 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = IndexPath.item.getter();
    v12 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      v13 = *(a4 + 16);
      if (v13 < v12)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (v12 == v13)
      {
LABEL_5:

        return;
      }

      if (v12 >= v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      v14 = &v10[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking];
      v34 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections;
      swift_beginAccess();
      swift_beginAccess();
      v31 = (v6 + 8);
      v32 = v13;
      v33 = a2;
      v36 = v8;
      v37 = v10;
      v30 = v14;
      while (1)
      {
        v15 = IndexPath.section.getter();
        MEMORY[0x21CE90B80](v12, v15);
        v16 = IndexPath.section.getter();
        if ((v16 & 0x8000000000000000) != 0)
        {
          break;
        }

        v17 = *&v10[v34];
        if (v16 >= *(v17 + 16))
        {
          goto LABEL_19;
        }

        v18 = *(v17 + 16 * v16 + 40);

        v19 = IndexPath.item.getter();
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v19 >= *(v18 + 16))
        {
          goto LABEL_21;
        }

        v20 = (v18 + 56 * v19);
        v21 = v20[4];
        v22 = v20[5];
        v24 = v20[6];
        v23 = v20[7];
        v25 = v20[8];
        v26 = v20[9];
        v27 = v20[10];
        outlined copy of Interstitial.Item(v21, v22, v24, v23, v25, v26, v27);

        if (v27 < 0)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            v29 = *(v30 + 1);
            ObjectType = swift_getObjectType();
            (*(v29 + 8))(v37, v26 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, ObjectType);
            swift_unknownObjectRelease();
          }

          InterstitialListViewController.updateSelectionView(at:)();
        }

        ++v12;
        outlined consume of Interstitial.Item(v21, v22, v24, v23, v25, v26, v27);
        (*v31)(v36, v35);
        v10 = v37;
        if (v32 == v12)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }
}

uint64_t InterstitialListViewController.createDataSource()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016InterstitialListbD0CSSGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016InterstitialListbD0CSSGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for InterstitialListViewCell();
  UICollectionView.CellRegistration.init(handler:)();
  v9 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_collectionView;
  result = swift_beginAccess();
  v11 = *(v1 + v9);
  if (v11)
  {
    (*(v3 + 16))(v6, v8, v2);
    v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v13 = swift_allocObject();
    (*(v3 + 32))(v13 + v12, v6, v2);
    v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCySiSSGMd, _s5UIKit34UICollectionViewDiffableDataSourceCySiSSGMR));
    v15 = v11;
    v16 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    (*(v3 + 8))(v8, v2);
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in InterstitialListViewController.createDataSource()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v83 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v83 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v93 = v10;
  v17 = Strong;
  v18 = IndexPath.section.getter();
  v19 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections;
  swift_beginAccess();
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v20 = *&v17[v19];
  if (v18 >= *(v20 + 16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = *(v20 + 16 * v18 + 40);
  swift_bridgeObjectRetain_n();
  v22 = IndexPath.item.getter();
  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v22 >= *(v21 + 16))
  {
LABEL_29:
    __break(1u);
    return;
  }

  v89 = v15;
  v94 = v17;
  v90 = v9;
  v91 = v12;
  v92 = v8;
  v23 = (v21 + 56 * v22);
  v24 = v23[4];
  v25 = v23[5];
  v26 = v23[6];
  v27 = v23[7];
  v28 = v23[8];
  v29 = v23[9];
  v30 = v23[10];
  outlined copy of Interstitial.Item(v24, v25, v26, v27, v28, v29, v30);

  v97 = v24;
  v99 = v25;
  v100 = v26;
  v98 = v27;
  v96 = v28;
  v95 = v30;
  if ((v30 & 0x8000000000000000) == 0)
  {
    v31 = MEMORY[0x277D85000];
    v32 = *((*MEMORY[0x277D85000] & *a1) + 0xD8);

    v32(v24, v25);
    v33 = v94;
    v34 = *&v94[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_presenter + 8];

    v35 = objc_opt_self();
    v36 = a2;
    if (v34)
    {
      v37 = [v35 systemBlueColor];
    }

    else
    {
      v37 = [v35 systemIndigoColor];
    }

    [a1 setTintColor_];

    v63 = *(v21 + 16);

    (*((*v31 & *a1) + 0xF0))(v63 > 2);
    InterstitialListViewController.buttonAction(at:)(v36);
    (*((*v31 & *a1) + 0x108))();

    outlined consume of Interstitial.Item(v97, v99, v100, v98, v96, v29, v95);
    return;
  }

  v88 = a2;

  v38 = *((*MEMORY[0x277D85000] & *(v30 & 0x7FFFFFFFFFFFFFFFLL)) + 0x70);
  v85 = v30 & 0x7FFFFFFFFFFFFFFFLL;
  v39 = (v30 & 0x7FFFFFFFFFFFFFFFLL);
  v40 = v24;
  v41 = v39;
  outlined copy of Interstitial.Item(v40, v25, v26, v27, v28, v29, v30);
  v42 = v41;
  v43 = v29;
  v44 = v29;
  v45 = v38();
  if (v45)
  {
    v46 = v45;
    LOBYTE(v101[0]) = 7;
    (*((*MEMORY[0x277D85000] & *v45) + 0x108))(v101);
  }

  v47 = type metadata accessor for TaskPriority();
  v48 = v89;
  (*(*(v47 - 8) + 56))(v89, 1, 1, v47);
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = v49;
  *(v50 + 40) = 9;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v48, &async function pointer to partial apply for closure #1 in AssetView.performViewModelUpdate(style:), v50);

  outlined destroy of UTType?(v48, &_sScPSgMd, &_sScPSgMR);
  v89 = specialized Interstitial.AssetMetadata.init(assetViewModel:)(v44);
  v52 = v51;
  v54 = v53;
  v84 = v55;
  v56 = outlined consume of Interstitial.AssetMetadata?(v99, v100, v98, v28);
  v57 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *a1) + 0x60))(v85, v56);
  v58 = v94;
  v59 = *&v94[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_presenter + 8];

  v60 = objc_opt_self();
  v87 = v42;
  v86 = v44;
  v83 = v43;
  if (v59)
  {
    v61 = [v60 systemBlueColor];

    v62 = v61;
    v57 = MEMORY[0x277D85000];
  }

  else
  {
    v62 = [v60 systemIndigoColor];
  }

  (*((*v57 & *a1) + 0x140))(v62);
  InterstitialCollectionViewController.asset(at:)(v101);
  v64 = v102;
  v85 = v54;
  if (!v102)
  {
    goto LABEL_20;
  }

  v65 = &v58[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking];
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    outlined destroy of UTType?(v101, &_s9MomentsUI12InterstitialV5AssetVSgMd, &_s9MomentsUI12InterstitialV5AssetVSgMR);
LABEL_20:
    v70 = 0;
    goto LABEL_21;
  }

  v66 = *(v65 + 1);
  ObjectType = swift_getObjectType();
  v68 = *(v66 + 24);
  v69 = v66;
  v57 = MEMORY[0x277D85000];
  v70 = v68(v64 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, ObjectType, v69);
  outlined destroy of UTType?(v101, &_s9MomentsUI12InterstitialV5AssetVSgMd, &_s9MomentsUI12InterstitialV5AssetVSgMR);
  swift_unknownObjectRelease();
LABEL_21:
  (*((*v57 & *a1) + 0x150))(v70 & 1);
  v71 = v84;
  if (v52)
  {
    v72 = *((*v57 & *a1) + 0x160);

    v73 = v89;
    v74 = v52;
    v72(v89, v52);
    v57 = MEMORY[0x277D85000];

    v75 = v85;
    v76 = v85;
    v77 = v71;
  }

  else
  {
    v74 = 0;
    (*((*v57 & *a1) + 0x160))(0, 0);
    v76 = 0;
    v77 = 0;
    v73 = v89;
    v75 = v85;
  }

  (*((*v57 & *a1) + 0x178))(v76, v77);
  v78 = v86;
  v79 = v91;
  (*(v93 + 16))(v91, v86 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, v90);
  v80 = type metadata accessor for IndexPath();
  v81 = *(v80 - 8);
  v82 = v92;
  (*(v81 + 16))(v92, v88, v80);
  (*(v81 + 56))(v82, 0, 1, v80);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v82, v79);
  swift_endAccess();

  outlined consume of Interstitial.Item(v97, v99, v100, v98, v96, v83, v95);
  outlined consume of Interstitial.AssetMetadata?(v73, v74, v75, v71);
}

uint64_t closure #2 in InterstitialListViewController.createDataSource()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  type metadata accessor for InterstitialListViewCell();

  v4 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

  return v4;
}

void __swiftcall InterstitialListViewController.createLayout()(UICollectionViewLayout *__return_ptr retstr)
{
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = objc_allocWithZone(MEMORY[0x277D752C0]);
  v4 = v1;
  v5 = [v3 init];
  [v5 setInterSectionSpacing_];
  [v5 setScrollDirection_];
  v6 = objc_allocWithZone(MEMORY[0x277D752B8]);
  v8[4] = partial apply for closure #1 in InterstitialListViewController.createLayout();
  v8[5] = v2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?);
  v8[3] = &block_descriptor_26;
  v7 = _Block_copy(v8);
  [v6 initWithSectionProvider:v7 configuration:v5];

  _Block_release(v7);
}

void *closure #1 in InterstitialListViewController.createLayout()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICollectionLayoutListConfiguration();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D74D50], v4);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v12 = [objc_opt_self() secondarySystemBackgroundColor];
  UICollectionLayoutListConfiguration.backgroundColor.setter();
  UICollectionLayoutListConfiguration.showsSeparators.setter();
  UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutSection, 0x277CFB868);
  v13 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  v14 = [a3 traitCollection];
  v15 = [v14 horizontalSizeClass];

  v16 = 16.0;
  if (v15 != 1)
  {
    v16 = 40.0;
  }

  [v13 setContentInsets_];
  (*(v9 + 8))(v11, v8);
  return v13;
}

uint64_t closure #1 in closure #1 in InterstitialListViewController.createLayout()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UIListSeparatorConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  IndexPath.item.getter();
  return UIListSeparatorConfiguration.bottomSeparatorInsets.setter();
}

void InterstitialListViewController.updateSelectionView(at:)()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_collectionView;
  swift_beginAccess();
  v9 = *&v0[v8];
  if (!v9)
  {
    __break(1u);
    goto LABEL_23;
  }

  v10 = v9;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v12 = [v10 cellForItemAtIndexPath_];

  if (!v12)
  {
    return;
  }

  v42 = v3;
  v13 = type metadata accessor for InterstitialListViewCell();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = v14;
  v41 = v13;
  if ((*((*MEMORY[0x277D85000] & *v14) + 0x130))())
  {
    v40 = v2;
    InterstitialCollectionViewController.asset(at:)(v45);
    v16 = v46;
    if (v46)
    {
      v17 = &v1[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 1);
        ObjectType = swift_getObjectType();
        v20 = (*(v18 + 24))(v16 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, ObjectType, v18);
        outlined destroy of UTType?(v45, &_s9MomentsUI12InterstitialV5AssetVSgMd, &_s9MomentsUI12InterstitialV5AssetVSgMR);
        swift_unknownObjectRelease();
LABEL_10:
        v2 = v40;
        (*((*MEMORY[0x277D85000] & *v15) + 0x150))(v20 & 1);
        goto LABEL_11;
      }

      outlined destroy of UTType?(v45, &_s9MomentsUI12InterstitialV5AssetVSgMd, &_s9MomentsUI12InterstitialV5AssetVSgMR);
    }

    v20 = 0;
    goto LABEL_10;
  }

LABEL_11:
  v21 = IndexPath.section.getter();
  MEMORY[0x21CE90B80](0, v21);
  v22 = *&v1[v8];
  if (!v22)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = IndexPath._bridgeToObjectiveC()().super.isa;
  v25 = [v23 cellForItemAtIndexPath_];

  if (!v25)
  {
LABEL_17:
    (*(v42 + 8))(v7, v2);
LABEL_18:

    return;
  }

  v26 = swift_dynamicCastClass();
  if (!v26)
  {

    (*(v42 + 8))(v7, v2);
    return;
  }

  v27 = v26;
  if (((*((*MEMORY[0x277D85000] & *v26) + 0xE8))() & 1) == 0)
  {
    (*(v42 + 8))(v7, v2);

    return;
  }

  v28 = objc_opt_self();
  v29 = v2;
  v40 = v2;
  v41 = v28;
  v31 = v42;
  v30 = v43;
  (*(v42 + 16))(v43, v7, v29);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v27;
  *(v33 + 24) = v1;
  v34 = v40;
  (*(v31 + 32))(v33 + v32, v30, v40);
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for closure #1 in InterstitialListViewController.updateSelectionView(at:);
  *(v35 + 24) = v33;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_15_3;
  v36 = _Block_copy(aBlock);
  v37 = v25;
  v38 = v1;

  [v41 performWithoutAnimation_];

  _Block_release(v36);
  v39 = *(v31 + 8);
  v2 = v31 + 8;
  v39(v7, v34);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
    goto LABEL_17;
  }
}

void InterstitialListViewController.updateSelectionView(for:at:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  isEscapingClosureAtFileLocation = *(v4 - 8);
  v6 = *(isEscapingClosureAtFileLocation + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  type metadata accessor for InterstitialListViewCell();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v37 = v4;
  v12 = *((*MEMORY[0x277D85000] & *v10) + 0x130);
  v36 = a1;
  if (v12())
  {
    InterstitialCollectionViewController.asset(at:)(v39);
    v13 = v40;
    if (v40)
    {
      v14 = &v2[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v14 + 1);
        ObjectType = swift_getObjectType();
        v17 = (*(v15 + 24))(v13 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, ObjectType, v15);
        outlined destroy of UTType?(v39, &_s9MomentsUI12InterstitialV5AssetVSgMd, &_s9MomentsUI12InterstitialV5AssetVSgMR);
        swift_unknownObjectRelease();
LABEL_8:
        (*((*MEMORY[0x277D85000] & *v11) + 0x150))(v17 & 1);
        goto LABEL_9;
      }

      outlined destroy of UTType?(v39, &_s9MomentsUI12InterstitialV5AssetVSgMd, &_s9MomentsUI12InterstitialV5AssetVSgMR);
    }

    v17 = 0;
    goto LABEL_8;
  }

LABEL_9:
  v18 = IndexPath.section.getter();
  MEMORY[0x21CE90B80](0, v18);
  v19 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_collectionView;
  swift_beginAccess();
  v20 = *&v2[v19];
  if (v20)
  {
    v21 = v20;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v23 = [v21 cellForItemAtIndexPath_];

    if (!v23)
    {
LABEL_15:
      (*(isEscapingClosureAtFileLocation + 8))(v9, v37);

      return;
    }

    v24 = swift_dynamicCastClass();
    v25 = v37;
    if (v24)
    {
      v26 = v24;
      if ((*((*MEMORY[0x277D85000] & *v24) + 0xE8))())
      {
        v34 = objc_opt_self();
        v27 = v35;
        (*(isEscapingClosureAtFileLocation + 16))(v35, v9, v25);
        v28 = (*(isEscapingClosureAtFileLocation + 80) + 32) & ~*(isEscapingClosureAtFileLocation + 80);
        v29 = swift_allocObject();
        *(v29 + 16) = v26;
        *(v29 + 24) = v2;
        (*(isEscapingClosureAtFileLocation + 32))(v29 + v28, v27, v25);
        v30 = swift_allocObject();
        *(v30 + 16) = partial apply for closure #1 in InterstitialListViewController.updateSelectionView(for:at:);
        *(v30 + 24) = v29;
        aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
        aBlock[5] = v30;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_25;
        v31 = _Block_copy(aBlock);
        v32 = v23;
        v33 = v2;

        [v34 performWithoutAnimation_];

        _Block_release(v31);
        (*(isEscapingClosureAtFileLocation + 8))(v9, v25);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
          goto LABEL_15;
        }
      }

      else
      {
        (*(isEscapingClosureAtFileLocation + 8))(v9, v25);
      }
    }

    else
    {

      (*(isEscapingClosureAtFileLocation + 8))(v9, v25);
    }
  }

  else
  {
    __break(1u);
  }
}

id closure #1 in InterstitialListViewController.updateSelectionView(at:)(void *a1, uint64_t a2, uint64_t a3)
{
  InterstitialListViewController.buttonAction(at:)(a3);
  (*((*MEMORY[0x277D85000] & *a1) + 0x108))();

  return [a1 layoutIfNeeded];
}

id InterstitialListViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t InterstitialListViewController.didFinishRendering(uuid:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  v15 = v19;
  *(v14 + 16) = v19;
  (*(v9 + 32))(v14 + v13, v11, v8);
  aBlock[4] = partial apply for closure #1 in InterstitialListViewController.didFinishRendering(uuid:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_31_1;
  v16 = _Block_copy(aBlock);
  v17 = v15;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x21CE92A50](0, v7, v4, v16);
  _Block_release(v16);

  (*(v22 + 8))(v4, v2);
  return (*(v20 + 8))(v7, v21);
}

void closure #1 in InterstitialListViewController.didFinishRendering(uuid:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v11 = OBJC_IVAR____TtC9MomentsUI30InterstitialListViewController_assetUUIDToIndexPathMap;
  swift_beginAccess();
  v12 = *(a1 + v11);
  if (!*(v12 + 16) || (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v14 & 1) == 0))
  {
    swift_endAccess();
    return;
  }

  (*(v5 + 16))(v8, *(v12 + 56) + *(v5 + 72) * v13, v4);
  (*(v5 + 32))(v10, v8, v4);
  swift_endAccess();
  v15 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_collectionView;
  swift_beginAccess();
  v16 = *(a1 + v15);
  if (!v16)
  {
    __break(1u);
    return;
  }

  v17 = v16;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v19 = [v17 cellForItemAtIndexPath_];

  if (!v19)
  {
LABEL_11:
    (*(v5 + 8))(v10, v4);
    return;
  }

  type metadata accessor for InterstitialListViewCell();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {

    goto LABEL_11;
  }

  v21 = v20;
  InterstitialCollectionViewController.asset(at:)(&v37);
  if (v40)
  {
    v36 = v41;
    v42[0] = v38;
    v42[1] = v39;
    v35 = v40;
    v22 = specialized Interstitial.AssetMetadata.init(assetViewModel:)(v35);
    v24 = v23;
    v26 = v25;
    v28 = v27;
    outlined destroy of UTType?(v42, &_s9MomentsUI12InterstitialV13AssetMetadataVSgMd, &_s9MomentsUI12InterstitialV13AssetMetadataVSgMR);
    v34 = v22;
    if (v24)
    {

      v29 = v22;
    }

    else
    {
      v29 = 0;
    }

    v30 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v21) + 0x160))(v29, v24);
    if (v24)
    {

      v31 = v26;
      v32 = v28;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    (*((*v30 & *v21) + 0x178))(v31, v32);

    (*(v5 + 8))(v10, v4);
    outlined consume of Interstitial.AssetMetadata?(v34, v24, v26, v28);
  }

  else
  {
    (*(v5 + 8))(v10, v4);
  }
}

void specialized InterstitialListViewController.createSections(assetGroupViewModels:assetSummaryAssetTypeMap:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = 0;
  v3 = a1 + 32;
  v74 = MEMORY[0x277D84F90];
  v69 = a1 + 32;
  v70 = *(a1 + 16);
  while (1)
  {
    v4 = *(v3 + 16 * v2 + 8);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_4;
      }
    }

    else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {

      v7 = MEMORY[0x21CE93180](0, v4);
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_51;
      }

      v6 = *(v4 + 32);

      v7 = v6;
    }

    v8 = v7;
    v9 = specialized AssetType.init(_:)(v8);
    if (v9 != 20)
    {
      break;
    }

LABEL_4:
    if (++v2 == v1)
    {
      return;
    }
  }

  v10 = v9;
  v76 = v4 & 0xC000000000000001;
  v71 = v8;
  v72 = v2;
  if (v5)
  {
    v12 = v9;
    v11 = __CocoaSet.count.getter();
    v10 = v12;
  }

  else
  {
    v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v73 = v10;
  v14 = AssetType.assetTypeAsPluralString(count:includeCount:)(v13, 0);
  v15 = StaticString.description.getter();
  v17 = v16;
  v18 = [objc_opt_self() mainBundle];
  v81._object = v17;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v81._countAndFlagsBits = v15;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v18, v19, v81);

  if (!v5)
  {
    v21 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v4 & 0xC000000000000001;
    if (v21)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

  v21 = __CocoaSet.count.getter();
  v22 = v4 & 0xC000000000000001;
  if (!v21)
  {
LABEL_40:
    v79 = MEMORY[0x277D84F90];
LABEL_41:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI12InterstitialV4ItemOGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI12InterstitialV4ItemOGMR);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_21658CA50;
    *(v61 + 32) = v20;
    *(v61 + 48) = 0u;
    *(v61 + 64) = 0u;
    *(v61 + 80) = 0;
    v80[0] = v61;

    specialized Array.append<A>(contentsOf:)(v79);
    v62 = v80[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v74 + 2) + 1, 1, v74);
    }

    v63 = v73;
    v65 = *(v74 + 2);
    v64 = *(v74 + 3);
    if (v65 >= v64 >> 1)
    {
      v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v74);
      v63 = v73;
      v74 = v68;
    }

    v66 = v63;

    *(v74 + 2) = v65 + 1;
    v67 = &v74[16 * v65];
    *(v67 + 4) = v66;
    *(v67 + 5) = v62;
    v3 = v69;
    v1 = v70;
    v2 = v72;
    goto LABEL_4;
  }

LABEL_19:
  if (v21 >= 1)
  {
    v23 = 0;
    v79 = MEMORY[0x277D84F90];
    v75 = v4;
    v78 = v21;
    while (1)
    {
      if (v22)
      {
        v33 = MEMORY[0x21CE93180](v23, v4);
      }

      else
      {
        v33 = *(v4 + 8 * v23 + 32);
      }

      v34 = v33;
      LOBYTE(v80[0]) = 7;
      v35 = *((*MEMORY[0x277D85000] & *v33) + 0x1E0);
      v36 = v33;
      v37 = v35(v80);
      if (v37)
      {
        v38 = v37;
        v39 = v36;
        v40 = specialized AssetType.init(_:)(v39);
        if (v40 == 20)
        {

          goto LABEL_23;
        }

        v45 = v40;
        v46 = v39;
        v47 = specialized Interstitial.AssetMetadata.init(assetViewModel:)(v46);
        v49 = v48;
        v51 = v50;
        v53 = v52;
        outlined copy of Interstitial.AssetMetadata?(v47, v48, v50, v52);
        v54 = v46;
        v55 = v38;
        v77 = v49;
        outlined consume of Interstitial.AssetMetadata?(v47, v49, v51, v53);

        v56 = *((*MEMORY[0x277D85000] & *v54) + 0x138);
        v57 = swift_unknownObjectRetain();
        v56(v57, &protocol witness table for InterstitialListViewController);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v79 + 2) + 1, 1, v79);
        }

        v59 = *(v79 + 2);
        v58 = *(v79 + 3);
        if (v59 >= v58 >> 1)
        {
          v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v79);
        }

        *(v79 + 2) = v59 + 1;
        v60 = &v79[56 * v59];
        *(v60 + 4) = v45;
        *(v60 + 5) = v47;
        *(v60 + 6) = v77;
        *(v60 + 7) = v51;
        *(v60 + 8) = v53;
        *(v60 + 9) = v34;
        *(v60 + 10) = v38 | 0x8000000000000000;
        v4 = v75;
        v22 = v76;
      }

      else
      {

        if (one-time initialization token for interstitial != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        __swift_project_value_buffer(v41, static CommonLogger.interstitial);
        v42 = v36;
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v80[0] = v25;
          *v24 = 136315138;
          v26 = v42;
          v27 = [v26 description];
          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;

          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v80);
          v4 = v75;

          *(v24 + 4) = v31;
          _os_log_impl(&dword_21607C000, v43, v44, "Unable to create view for asset view model=%s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v25);
          v32 = v25;
          v22 = v76;
          MEMORY[0x21CE94770](v32, -1, -1);
          MEMORY[0x21CE94770](v24, -1, -1);
        }

        else
        {
        }
      }

      v21 = v78;
LABEL_23:
      if (v21 == ++v23)
      {
        goto LABEL_41;
      }
    }
  }

LABEL_51:
  __break(1u);
}

uint64_t partial apply for closure #2 in InterstitialListViewController.createDataSource()(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016InterstitialListbD0CSSGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016InterstitialListbD0CSSGMR) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return closure #2 in InterstitialListViewController.createDataSource()(a1, a2, a3, v8);
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_8Tm()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void partial apply for closure #1 in InterstitialListViewController.didFinishRendering(uuid:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  closure #1 in InterstitialListViewController.didFinishRendering(uuid:)(v2, v3);
}

uint64_t objectdestroy_37Tm()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in InterstitialListViewController.buttonAction(at:)(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a1(v4, v1 + v3, v6, v7);
}

uint64_t Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = v6;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 72) = swift_getObjectType();
  *(v7 + 112) = *a1;

  return MEMORY[0x2822009F8](Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:), 0, 0);
}

uint64_t Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)()
{
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = type metadata accessor for Logger();
  *(v0 + 80) = __swift_project_value_buffer(v2, static CommonLogger.views);
  v3 = v1;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 56);
    v7 = *(v0 + 48);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446466;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v23);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v23);
    _os_log_impl(&dword_21607C000, v4, v5, "[preparedForDisplayOffMainThread] %{public}s FROM %{public}s BEGIN", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v9, -1, -1);
    MEMORY[0x21CE94770](v8, -1, -1);
  }

  v13 = *(v0 + 112);
  v14 = *(v0 + 72);
  v21 = *(v0 + 32);
  v15 = *(v0 + 24);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIImageCSgMd, &_sSo7UIImageCSgMR);
  v17 = swift_allocObject();
  *(v0 + 88) = v17;
  swift_unknownObjectWeakInit();
  v18 = swift_task_alloc();
  *(v0 + 96) = v18;
  *(v18 + 16) = v17;
  *(v18 + 24) = v15;
  *(v18 + 32) = v13;
  *(v18 + 40) = v21;
  *(v18 + 56) = v14;
  v19 = swift_task_alloc();
  *(v0 + 104) = v19;
  *v19 = v0;
  v19[1] = Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:);

  return MEMORY[0x282200600](v0 + 16, v16, v16, 0, 0, &async function pointer to partial apply for closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:), v18, v16);
}

{

  return MEMORY[0x2822009F8](Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:), 0, 0);
}

{
  v22 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 64);

  v3 = Logger.logObject.getter();
  v4 = *(v0 + 64);
  if (v1)
  {
    v5 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v3, v5))
    {
      goto LABEL_7;
    }

    v19 = *(v0 + 56);
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136446466;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v21);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v19, &v21);
    v12 = "[preparedForDisplayOffMainThread] %{public}s FROM %{public}s END";
  }

  else
  {
    v5 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v3, v5))
    {
      goto LABEL_7;
    }

    v20 = *(v0 + 56);
    v13 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136446466;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v21);

    *(v7 + 4) = v16;
    *(v7 + 12) = 2082;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v20, &v21);
    v12 = "[preparedForDisplayOffMainThread] %{public}s FROM %{public}s uiImage = nil END";
  }

  _os_log_impl(&dword_21607C000, v3, v5, v12, v7, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x21CE94770](v8, -1, -1);
  MEMORY[0x21CE94770](v7, -1, -1);
LABEL_7:

  v17 = *(v0 + 8);

  return v17(v1);
}

uint64_t closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a4;
  *(v8 + 56) = a6;
  *(v8 + 128) = a5;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 24) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySo7UIImageCSg_GMd, &_sScG8IteratorVySo7UIImageCSg_GMR);
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v8 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:), 0, 0);
}

uint64_t closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 128);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v7;
  *(v9 + 40) = v5;
  *(v9 + 48) = v4;
  *(v9 + 56) = v6;
  *(v9 + 64) = v3;
  *(v9 + 72) = v2;
  v10 = v3;

  _sScG7addTask8priority9operationyScPSg_xyYaYAcntFSo7UIImageCSg_Tg5(v1, &async function pointer to partial apply for closure #1 in closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:), v9);
  outlined destroy of TaskPriority?(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIImageCSgMd, &_sSo7UIImageCSgMR);
  TaskGroup.makeAsyncIterator()();
  *(v0 + 112) = 0;
  v11 = lazy protocol witness table accessor for type TaskGroup<UIImage?>.Iterator and conformance TaskGroup<A>.Iterator();
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:);
  v13 = *(v0 + 80);

  return MEMORY[0x282200308](v0 + 16, v13, v11);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[14];
    v5 = v2[11];
    v4 = v2[12];
    v6 = v2[10];

    (*(v5 + 8))(v4, v6);
    v7 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  }

  else
  {
    v7 = closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v1 = v0[2];
  v2 = v0[14];
  if (v1 == 1)
  {
    v3 = v0[3];
    (*(v0[11] + 8))(v0[12], v0[10]);
    *v3 = v2;

    v4 = v0[1];

    return v4();
  }

  else
  {

    v0[14] = v1;
    v6 = lazy protocol witness table accessor for type TaskGroup<UIImage?>.Iterator and conformance TaskGroup<A>.Iterator();
    v7 = swift_task_alloc();
    v0[15] = v7;
    *v7 = v0;
    v7[1] = closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:);
    v8 = v0[10];

    return MEMORY[0x282200308](v0 + 2, v8, v6);
  }
}

uint64_t partial apply for closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *(v2 + 32);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)(a1, a2, v6, v7, v11, v8, v9, v10);
}

uint64_t closure #1 in closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 264) = a7;
  *(v8 + 272) = a8;
  *(v8 + 288) = a6;
  *(v8 + 248) = a4;
  *(v8 + 256) = a5;
  *(v8 + 240) = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:), 0, 0);
}

uint64_t closure #1 in closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)()
{
  v26 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0 + 232;
    v3 = *(v0 + 256);
    v4 = Strong;
    v5 = Image.uiImage.getter();

    if (v3 != 1 && v5 != 0)
    {
      v7 = [v5 imageAsset];
      if (v7)
      {
        v8 = v7;
        v9 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        v10 = [v8 imageWithTraitCollection_];

        if (v10)
        {

          v5 = v10;
        }
      }
    }

    *(v0 + 280) = v5;
    v11 = *(v0 + 264);
    v12 = *(v0 + 272);
    v25 = *(v0 + 288);
    *&v13 = COERCE_DOUBLE(specialized static Image.targetViewSize(viewStyle:sizeClass:maximumSupportedViewport:)(&v25, v11, v12));
    if (v15)
    {
      if (v5)
      {
        v16 = v0 + 16;
        *(v0 + 16) = v0;
        *(v0 + 56) = v2;
        *(v0 + 24) = closure #1 in closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:);
        v17 = swift_continuation_init();
        *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCSgs5NeverOGMd, &_sSccySo7UIImageCSgs5NeverOGMR);
        *(v0 + 144) = MEMORY[0x277D85DD0];
        *(v0 + 152) = 1107296256;
        *(v0 + 160) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
        *(v0 + 168) = &block_descriptor_27;
        *(v0 + 176) = v17;
        [v5 prepareForDisplayWithCompletionHandler_];
LABEL_15:

        return MEMORY[0x282200938](v16);
      }
    }

    else if (v5)
    {
      v20 = v14;
      v16 = v0 + 80;
      v21 = *&v13;
      *(v0 + 80) = v0;
      *(v0 + 120) = v2;
      *(v0 + 88) = closure #1 in closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:);
      v22 = swift_continuation_init();
      *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCSgs5NeverOGMd, &_sSccySo7UIImageCSgs5NeverOGMR);
      *(v0 + 144) = MEMORY[0x277D85DD0];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
      *(v0 + 168) = &block_descriptor_10;
      *(v0 + 176) = v22;
      [v5 prepareThumbnailOfSize:v0 + 144 completionHandler:{v21, v20}];
      goto LABEL_15;
    }
  }

  else
  {
    v18 = *(v0 + 264);
    v19 = *(v0 + 272);
    v25 = *(v0 + 288);
    specialized static Image.targetViewSize(viewStyle:sizeClass:maximumSupportedViewport:)(&v25, v18, v19);
  }

  **(v0 + 240) = 0;
  v23 = *(v0 + 8);

  return v23();
}

{

  return MEMORY[0x2822009F8](closure #1 in closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:), 0, 0);
}

{
  v1 = *(v0 + 280);
  **(v0 + 240) = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

{

  return MEMORY[0x2822009F8](closure #1 in closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:), 0, 0);
}

uint64_t specialized static Image.targetViewSize(viewStyle:sizeClass:maximumSupportedViewport:)(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = *a1;
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *a3) + 0x60);
  v7 = a3;
  v8 = v6();
  (*((*v5 & *v7) + 0x78))();
  if (v4 - 2 < 2)
  {
    if (a2 != 2)
    {
      v17 = objc_opt_self();
      v18 = [v17 mainScreen];
      [v18 scale];
      v20 = v19;

      v13 = v20 * v8;
      v16 = [v17 mainScreen];
      goto LABEL_11;
    }

LABEL_8:

    return 0;
  }

  if (v4 > 1)
  {
    goto LABEL_8;
  }

  v9 = objc_opt_self();
  v10 = [v9 mainScreen];
  [v10 scale];
  v12 = v11;

  v13 = v12 * v8;
  if (a2 != 2)
  {
    v16 = [v9 mainScreen];
LABEL_11:
    v21 = v16;
    [v21 scale];

    return *&v13;
  }

  v13 = v13 / 2.5;
  v14 = [v9 mainScreen];
  [v14 scale];

  return *&v13;
}

uint64_t partial apply for closure #1 in closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)(a1, v4, v5, v6, v7, v10, v8, v9);
}

unint64_t lazy protocol witness table accessor for type TaskGroup<UIImage?>.Iterator and conformance TaskGroup<A>.Iterator()
{
  result = lazy protocol witness table cache variable for type TaskGroup<UIImage?>.Iterator and conformance TaskGroup<A>.Iterator;
  if (!lazy protocol witness table cache variable for type TaskGroup<UIImage?>.Iterator and conformance TaskGroup<A>.Iterator)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScG8IteratorVySo7UIImageCSg_GMd, &_sScG8IteratorVySo7UIImageCSg_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskGroup<UIImage?>.Iterator and conformance TaskGroup<A>.Iterator);
  }

  return result;
}

void **MutablePosterViewModel.build()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v57 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v57 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v71 = &v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v57 - v17;
  v19 = type metadata accessor for DateInterval();
  v72 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v23 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  if (!v23)
  {
    return 0;
  }

  v68 = v14;
  v70 = v9;
  v24 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
  if (!v24)
  {
    return 0;
  }

  v67 = v22;
  v69 = &v57 - v21;
  v25 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v0 + v25, v18, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v26 = v72;
  if ((*(v72 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of DateInterval?(v18);
    return 0;
  }

  (*(v26 + 32))(v69, v18, v19);
  (*(v11 + 16))(v71, v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, v10);
  v28 = *(v24 + 16);
  if (v28)
  {
    v64 = v7;
    v65 = v3;
    v66 = v0;
    v74 = MEMORY[0x277D84F90];
    v29 = v23;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
    v30 = v74;
    v31 = (v24 + 32);
    v32 = *(v74 + 16);
    v33 = v67;
    do
    {
      v35 = *v31++;
      v34 = v35;
      v74 = v30;
      v36 = *(v30 + 24);
      if (v32 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v32 + 1, 1);
        v33 = v67;
        v30 = v74;
      }

      *(v30 + 16) = v32 + 1;
      *(v30 + v32++ + 32) = v34;
      --v28;
    }

    while (v28);
    v0 = v66;
    v3 = v65;
    v7 = v64;
    v26 = v72;
  }

  else
  {
    v37 = v23;
    v30 = MEMORY[0x277D84F90];
    v33 = v67;
  }

  (*(v26 + 16))(v33, v69, v19);
  v38 = v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle;
  swift_beginAccess();
  v39 = *(v38 + 8);
  v63 = *v38;
  v66 = v39;
  v40 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v41 = *(v0 + v40);
  v42 = *(v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_spotlightIdentifier + 8);
  v62 = *(v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_spotlightIdentifier);
  v65 = v42;
  v43 = *(v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_bundleID + 8);
  v61 = *(v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_bundleID);
  v64 = v43;
  v44 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_startDate;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v0 + v44, v70, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v45 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_endDate;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v0 + v45, v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v46 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_isHost;
  swift_beginAccess();
  v60 = *(v0 + v46);
  v47 = (v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_locationDisplayName);
  swift_beginAccess();
  v48 = v47[1];
  v59 = *v47;
  v49 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_attributedTitle;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v0 + v49, v3, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v58 = v41;
  if (v41)
  {
    v50 = v48;

    v51 = v41;

    v41 = v51;
    v52 = Image.uiImage.getter();
    if (v52)
    {

      v53 = 1;
    }

    else
    {
      v53 = 0;
    }
  }

  else
  {

    v53 = 0;
    v50 = v48;
  }

  v54 = v72;
  v73 = v53;
  v55 = v68;
  UUID.init()();
  type metadata accessor for DBPosterModel(0);
  swift_allocObject();
  v56 = specialized DBPosterModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseDateInterval:baseTitle:posterImage:spotlightIdentifier:bundleID:startDate:endDate:isHost:locationDisplayName:attributedTitle:renderState:)(v55, v71, v23, v30, v67, v63, v66, v58, v62, v65, v61, v64, v70, v7, v60, v59, v50, v3, &v73);

  (*(v54 + 8))(v69, v19);
  return v56;
}

uint64_t static StateOfMindCollectionViewCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021StateOfMindCollectionbD0CAF06ClienthijB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021StateOfMindCollectionbD0CAF06ClienthijB5ModelCGMR);
  v3 = __swift_project_value_buffer(v2, static StateOfMindCollectionViewCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *StateOfMindCollectionViewCell.stateOfMindView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI29StateOfMindCollectionViewCell_stateOfMindView);
  v2 = v1;
  return v1;
}

id StateOfMindCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t static StateOfMindCollectionViewSmallCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021StateOfMindCollectionb5SmallD0CAF06ClienthijB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021StateOfMindCollectionb5SmallD0CAF06ClienthijB5ModelCGMR);
  v3 = __swift_project_value_buffer(v2, static StateOfMindCollectionViewSmallCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *StateOfMindCollectionViewSmallCell.stateOfMindView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI34StateOfMindCollectionViewSmallCell_stateOfMindView);
  v2 = v1;
  return v1;
}

void StateOfMindCollectionViewCell.init(coder:)(uint64_t a1, uint64_t *a2, char a3, uint64_t a4)
{
  v6 = *a2;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v7 = static MutableStateOfMindViewModel.empty;
  v9 = a3;
  v8 = objc_allocWithZone(type metadata accessor for StateOfMindView(0));
  *(v4 + v6) = StateOfMindView.init(viewModel:style:)(v7, &v9);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void @objc StateOfMindCollectionViewCell.init(coder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5, uint64_t a6)
{
  v8 = *a4;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v9 = static MutableStateOfMindViewModel.empty;
  v11 = a5;
  v10 = objc_allocWithZone(type metadata accessor for StateOfMindView(0));
  *(a1 + v8) = StateOfMindView.init(viewModel:style:)(v9, &v11);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void StateOfMindCollectionViewCell.releaseResources()(const char *a1, void *a2)
{
  v5 = v2;
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static CommonLogger.views);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21607C000, v7, v8, a1, v9, 2u);
    MEMORY[0x21CE94770](v9, -1, -1);
  }

  v10 = *(v5 + *a2);
  if (v10)
  {
    v11 = *(*(v10 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_imageView) + OBJC_IVAR____TtC9MomentsUI14RoundImageView_imageView);

    [v11 setImage_];
  }
}

id StateOfMindCollectionViewCell.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *specialized StateOfMindCollectionViewCell.init(frame:)(uint64_t *a1, char a2)
{
  v3 = v2;
  v4 = *a1;
  if (one-time initialization token for empty != -1)
  {
    v15 = a2;
    swift_once();
    a2 = v15;
  }

  v5 = static MutableStateOfMindViewModel.empty;
  v16 = a2;
  v6 = objc_allocWithZone(type metadata accessor for StateOfMindView(0));
  v7 = StateOfMindView.init(viewModel:style:)(v5, &v16);
  *(v3 + v4) = v7;
  if (v7)
  {
    v8 = v7;
    v9 = CollectionViewAssetCell.init(assetView:)(v8);
    v10 = *((*MEMORY[0x277D85000] & *v9) + 0x90);
    v11 = v9;
    v12 = v10();
    [v12 addSubview_];

    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    return v11;
  }

  else
  {
    v14 = [objc_allocWithZone(type metadata accessor for AssetView(0)) init];

    return CollectionViewAssetCell.init(assetView:)(v14);
  }
}

unint64_t NotificationAnalyticsAddress.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000039;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

MomentsUI::NotificationPromptType_optional __swiftcall NotificationPromptType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

MomentsUI::SmartNotificationTimerSource_optional __swiftcall SmartNotificationTimerSource.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

MomentsUI::NotificationEventTrigger_optional __swiftcall NotificationEventTrigger.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

MomentsUI::NotificationActivityTrigger_optional __swiftcall NotificationActivityTrigger.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

MomentsUI::NotificationAnalyticsAddress_optional __swiftcall NotificationAnalyticsAddress.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NotificationAnalyticsAddress.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type NotificationEventTrigger and conformance NotificationEventTrigger()
{
  result = lazy protocol witness table cache variable for type NotificationEventTrigger and conformance NotificationEventTrigger;
  if (!lazy protocol witness table cache variable for type NotificationEventTrigger and conformance NotificationEventTrigger)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationEventTrigger and conformance NotificationEventTrigger);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NotificationActivityTrigger and conformance NotificationActivityTrigger()
{
  result = lazy protocol witness table cache variable for type NotificationActivityTrigger and conformance NotificationActivityTrigger;
  if (!lazy protocol witness table cache variable for type NotificationActivityTrigger and conformance NotificationActivityTrigger)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationActivityTrigger and conformance NotificationActivityTrigger);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NotificationPromptType and conformance NotificationPromptType()
{
  result = lazy protocol witness table cache variable for type NotificationPromptType and conformance NotificationPromptType;
  if (!lazy protocol witness table cache variable for type NotificationPromptType and conformance NotificationPromptType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationPromptType and conformance NotificationPromptType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SmartNotificationTimerSource and conformance SmartNotificationTimerSource()
{
  result = lazy protocol witness table cache variable for type SmartNotificationTimerSource and conformance SmartNotificationTimerSource;
  if (!lazy protocol witness table cache variable for type SmartNotificationTimerSource and conformance SmartNotificationTimerSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SmartNotificationTimerSource and conformance SmartNotificationTimerSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NotificationScheduledDeliverySetting and conformance NotificationScheduledDeliverySetting()
{
  result = lazy protocol witness table cache variable for type NotificationScheduledDeliverySetting and conformance NotificationScheduledDeliverySetting;
  if (!lazy protocol witness table cache variable for type NotificationScheduledDeliverySetting and conformance NotificationScheduledDeliverySetting)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationScheduledDeliverySetting and conformance NotificationScheduledDeliverySetting);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NotificationAnalyticsAddress(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000039;
  }

  else
  {
    v3 = 0xD00000000000001FLL;
  }

  if (v2)
  {
    v4 = "";
  }

  else
  {
    v4 = "com.apple.Moments.Notifications";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000039;
  }

  else
  {
    v6 = 0xD00000000000001FLL;
  }

  if (*a2)
  {
    v7 = "com.apple.Moments.Notifications";
  }

  else
  {
    v7 = "";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

unint64_t lazy protocol witness table accessor for type NotificationAnalyticsAddress and conformance NotificationAnalyticsAddress()
{
  result = lazy protocol witness table cache variable for type NotificationAnalyticsAddress and conformance NotificationAnalyticsAddress;
  if (!lazy protocol witness table cache variable for type NotificationAnalyticsAddress and conformance NotificationAnalyticsAddress)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationAnalyticsAddress and conformance NotificationAnalyticsAddress);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NotificationAnalyticsAddress()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance NotificationAnalyticsAddress(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NotificationAnalyticsAddress(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance NotificationAnalyticsAddress(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NotificationAnalyticsAddress.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance NotificationAnalyticsAddress(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000039;
  }

  else
  {
    v2 = 0xD00000000000001FLL;
  }

  if (*v1)
  {
    v3 = "com.apple.Moments.Notifications";
  }

  else
  {
    v3 = "";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

id closure #1 in variable initialization expression of MediaThirdPartyView.iconView()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v0 _setCornerRadius_];
  v1 = [v0 layer];
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  [v1 setShadowColor_];
  v4 = [v0 layer];
  LODWORD(v5) = 1036831949;
  [v4 setShadowOpacity_];

  v6 = [v0 layer];
  [v6 setShadowRadius_];

  v7 = [v0 layer];
  [v7 setShadowOffset_];

  return v0;
}

void closure #1 in variable initialization expression of MediaThirdPartyView.titleLabel()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle_];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    [v0 setFont_];
    v6 = [objc_opt_self() whiteColor];
    v7 = [v6 colorWithAlphaComponent_];

    [v0 setTextColor_];
    [v0 setMaximumContentSizeCategory_];
    [v0 setLineBreakMode_];
    [v0 setTextAlignment_];
    [v0 setAdjustsFontForContentSizeCategory_];
  }

  else
  {
    __break(1u);
  }
}

id closure #1 in variable initialization expression of MediaThirdPartyView.subtitleLabel()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v2 = [objc_opt_self() whiteColor];
  v3 = [v2 colorWithAlphaComponent_];

  [v0 setTextColor_];
  [v0 setMaximumContentSizeCategory_];
  [v0 setLineBreakMode_];
  [v0 setTextAlignment_];
  [v0 setAdjustsFontForContentSizeCategory_];
  return v0;
}

void closure #1 in variable initialization expression of MediaThirdPartyView.categoryLabel()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle_];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    [v0 setFont_];
    v6 = v0;
    [v6 setAlpha_];
    v7 = [objc_opt_self() whiteColor];
    v8 = [v7 colorWithAlphaComponent_];

    [v6 setTextColor_];
    [v6 setMaximumContentSizeCategory_];

    [v6 setLineBreakMode_];
    [v6 setTextAlignment_];
    [v6 setAdjustsFontForContentSizeCategory_];
  }

  else
  {
    __break(1u);
  }
}

void *MediaThirdPartyView.leadingConstraint.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_leadingConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MediaThirdPartyView.leadingConstraint.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_leadingConstraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MediaThirdPartyView.trailingConstraint.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_trailingConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MediaThirdPartyView.trailingConstraint.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_trailingConstraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MediaThirdPartyView.topConstraint.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_topConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MediaThirdPartyView.topConstraint.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_topConstraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MediaThirdPartyView.bottomConstraint.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_bottomConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MediaThirdPartyView.bottomConstraint.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_bottomConstraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MediaThirdPartyView.init(viewModel:style:)(void *a1, char *a2)
{
  v37 = *a2;
  v4 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_colorView;
  type metadata accessor for MediaThirdPartyEffectBackgroundView();
  v36 = v4;
  *&v2[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v35 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_iconView;
  *&v2[v35] = closure #1 in variable initialization expression of MediaThirdPartyView.iconView();
  v5 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_titleLabel;
  closure #1 in variable initialization expression of MediaThirdPartyView.titleLabel();
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_subtitleLabel;
  *&v2[v7] = closure #1 in variable initialization expression of MediaThirdPartyView.subtitleLabel();
  v8 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_categoryLabel;
  closure #1 in variable initialization expression of MediaThirdPartyView.categoryLabel();
  *&v2[v8] = v9;
  v10 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_stackView;
  v11 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v11 setAxis_];
  [v11 setSpacing_];
  *&v2[v10] = v11;
  v12 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_leadingConstraint;
  *&v2[OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_leadingConstraint] = 0;
  v13 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_trailingConstraint;
  *&v2[OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_trailingConstraint] = 0;
  v14 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_topConstraint;
  *&v2[OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_topConstraint] = 0;
  v15 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_bottomConstraint;
  *&v2[OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_bottomConstraint] = 0;
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    v16 = *MEMORY[0x277D76560];
    if (one-time initialization token for accessibilityString != -1)
    {
      swift_once();
    }

    v17 = static MediaThirdPartyView.Constants.accessibilityString;
    v18 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
    v19 = objc_allocWithZone(MEMORY[0x277D755E8]);
    v20 = a1;
    *&v2[v18] = [v19 init];
    swift_unknownObjectWeakInit();
    v21 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
    v22 = type metadata accessor for UUID();
    (*(*(v22 - 8) + 56))(&v2[v21], 1, 1, v22);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v2[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v37;
    v38.receiver = v2;
    v38.super_class = type metadata accessor for AssetView(0);
    v23 = objc_msgSendSuper2(&v38, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v24 = *((*MEMORY[0x277D85000] & *v23) + 0xE8);
    v25 = v23;
    v24();
    AssetView.setFallBackView()();
    [v25 setIsAccessibilityElement_];
    v26 = [v25 accessibilityTraits];
    if ((v16 & ~v26) != 0)
    {
      v27 = v16;
    }

    else
    {
      v27 = 0;
    }

    [v25 setAccessibilityTraits_];
    v28 = MEMORY[0x21CE91FC0](v17, *(&v17 + 1));
    [v25 setAccessibilityLabel_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_21658CA50;
    v30 = type metadata accessor for UITraitUserInterfaceStyle();
    v31 = MEMORY[0x277D74BF0];
    *(v29 + 32) = v30;
    *(v29 + 40) = v31;
    v32 = v25;
    MEMORY[0x21CE92C30](v29, sel_handleTraitChange);
    swift_unknownObjectRelease();

    [v32 handleTraitChange];
    [v32 setTranslatesAutoresizingMaskIntoConstraints_];

    [v32 setClipsToBounds_];
    v33 = v32;
    MediaThirdPartyView.addSubViews()();
    MediaThirdPartyView.addConstraints()();

    return v23;
  }

  else
  {

    type metadata accessor for MediaThirdPartyView(0);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t type metadata accessor for MediaThirdPartyView(uint64_t a1)
{
  result = type metadata singleton initialization cache for MediaThirdPartyView;
  if (!type metadata singleton initialization cache for MediaThirdPartyView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall MediaThirdPartyView.addSubViews()()
{
  [v0 addSubview_];
  [v0 addSubview_];
  v1 = *&v0[OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_stackView];
  [v0 addSubview_];
  [v1 addArrangedSubview_];
  [v1 addArrangedSubview_];
  v2 = *&v0[OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_categoryLabel];

  [v1 addArrangedSubview_];
}

Swift::Void __swiftcall MediaThirdPartyView.addConstraints()()
{
  [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_stackView) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_colorView) setTranslatesAutoresizingMaskIntoConstraints_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_titleLabel);
  v2 = [v1 superview];
  if (v2)
  {
    v3 = v2;
    [v1 setTranslatesAutoresizingMaskIntoConstraints_];
    v4 = [v1 leadingAnchor];
    v5 = [v3 leadingAnchor];
    v6 = [v4 constraintEqualToAnchor_];

    [v6 setConstant_];
    if (v6)
    {
      [v6 setActive_];
    }
  }

  v7 = [v1 superview];
  if (v7)
  {
    v8 = v7;
    [v1 setTranslatesAutoresizingMaskIntoConstraints_];
    v9 = [v1 trailingAnchor];
    v10 = [v8 trailingAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    [v11 setConstant_];
    if (v11)
    {
      [v11 setActive_];
    }
  }

  v12 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_subtitleLabel);
  v13 = [v12 superview];
  if (v13)
  {
    v14 = v13;
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    v15 = [v12 leadingAnchor];
    v16 = [v14 leadingAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    [v17 setConstant_];
    if (v17)
    {
      [v17 setActive_];
    }
  }

  v18 = [v12 superview];
  if (v18)
  {
    v19 = v18;
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    v20 = [v12 trailingAnchor];
    v21 = [v19 trailingAnchor];
    v22 = [v20 constraintEqualToAnchor_];

    [v22 setConstant_];
    if (v22)
    {
      [v22 setActive_];
    }
  }

  v23 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_categoryLabel);
  v24 = [v23 superview];
  if (v24)
  {
    v25 = v24;
    [v23 setTranslatesAutoresizingMaskIntoConstraints_];
    v26 = [v23 leadingAnchor];
    v27 = [v25 leadingAnchor];
    v28 = [v26 constraintEqualToAnchor_];

    [v28 setConstant_];
    if (v28)
    {
      [v28 setActive_];
    }
  }

  v29 = [v23 superview];
  if (v29)
  {
    v30 = v29;
    [v23 setTranslatesAutoresizingMaskIntoConstraints_];
    v31 = [v23 trailingAnchor];
    v32 = [v30 trailingAnchor];
    v33 = [v31 constraintEqualToAnchor_];

    [v33 setConstant_];
    if (v33)
    {
      [v33 setActive_];
    }
  }

  MediaThirdPartyView.adjustStackViewConstraints()();
}

id MediaThirdPartyView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall MediaThirdPartyView.hideViews()()
{
  [*(v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView) setHidden_];
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_colorView);

  [v1 setHidden_];
}

Swift::Void __swiftcall MediaThirdPartyView.showViews()()
{
  AssetView.showViews()();
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_colorView);

  [v1 setHidden_];
}

uint64_t MediaThirdPartyView.updateAndShowViews()()
{
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MediaThirdPartyView.updateAndShowViews(), v3, v2);
}

{
  v1 = *(v0 + 16);

  MediaThirdPartyView.updateData()();
  MediaThirdPartyView.adjustIconConstraints()();
  MediaThirdPartyView.adjustStackViewConstraints()();
  MediaThirdPartyView.adjustLabels()();
  (*((*MEMORY[0x277D85000] & *v1) + 0xF0))();
  v2 = *(v0 + 8);

  return v2();
}

Swift::Void __swiftcall MediaThirdPartyView.updateData()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (v3)
  {
    v21 = v3;
    ObjectType = swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    v6 = v21;
    if (v5)
    {
      v7 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_colorView);
      (*(v5 + 24))(v23, ObjectType, v5);
      if (v24)
      {
        v8 = 0;
      }

      else
      {
        v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v23[0] green:v23[1] blue:v23[2] alpha:v23[3]];
      }

      (*(v5 + 32))(v23, ObjectType, v5);
      (*((*v2 & *v7) + 0xA8))(v8, v23);

      v9 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_iconView);
      v10 = (*(v5 + 56))(ObjectType, v5);
      if (v10)
      {
        v11 = v10;
        v12 = Image.uiImage.getter();
      }

      else
      {
        v12 = 0;
      }

      [v9 setImage_];

      v13 = *(v1 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_titleLabel);
      v14 = (*(v5 + 48))(ObjectType, v5);
      if (v15)
      {
        v16 = MEMORY[0x21CE91FC0](v14);
      }

      else
      {
        v16 = 0;
      }

      [v13 setText_];

      v17 = *(v1 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_subtitleLabel);
      v18 = (*(v5 + 40))(ObjectType, v5);
      if (v19)
      {
        v20 = MEMORY[0x21CE91FC0](v18);
      }

      else
      {
        v20 = 0;
      }

      [v17 setText_];

      MediaThirdPartyView.setCategoryLabelText()();
      v6 = v22;
    }
  }
}

Swift::Void __swiftcall MediaThirdPartyView.adjustIconConstraints()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_iconView);
  UIView.removeAllConstraints()();
  (*((*MEMORY[0x277D85000] & *v0) + 0x88))(&v30);
  if (v30)
  {
    v2 = v30 == 7;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);
  }

  else
  {
    if (v30 == 6)
    {
      v3 = [v1 superview];
      if (v3)
      {
        v4 = v3;
        [v1 setTranslatesAutoresizingMaskIntoConstraints_];
        v5 = [v1 topAnchor];
        v6 = [v4 topAnchor];
        v7 = [v5 constraintEqualToAnchor_];

        [v7 setConstant_];
        if (v7)
        {
          [v7 setActive_];
        }
      }

      v8 = [v1 superview];
      if (v8)
      {
        v9 = v8;
        [v1 setTranslatesAutoresizingMaskIntoConstraints_];
        v10 = [v1 leadingAnchor];
        v11 = [v9 leadingAnchor];
        v12 = [v10 constraintEqualToAnchor_];

        [v12 setConstant_];
        if (v12)
        {
          [v12 setActive_];
        }
      }

      [v1 setTranslatesAutoresizingMaskIntoConstraints_];
      v13 = [v1 widthAnchor];
      v14 = [v13 constraintEqualToConstant_];

      [v14 setActive_];
      [v1 setTranslatesAutoresizingMaskIntoConstraints_];
      v15 = [v1 heightAnchor];
      v16 = [v15 constraintEqualToConstant_];
    }

    else
    {
      v17 = [v1 superview];
      if (v17)
      {
        v18 = v17;
        [v1 setTranslatesAutoresizingMaskIntoConstraints_];
        v19 = [v1 bottomAnchor];
        v20 = [v18 bottomAnchor];
        v21 = [v19 constraintEqualToAnchor_];

        if (v21)
        {
          [v21 setConstant_];
          [v21 setActive_];
        }
      }

      v22 = [v1 superview];
      if (v22)
      {
        v23 = v22;
        [v1 setTranslatesAutoresizingMaskIntoConstraints_];
        v24 = [v1 leadingAnchor];
        v25 = [v23 leadingAnchor];
        v26 = [v24 constraintEqualToAnchor_];

        [v26 setConstant_];
        if (v26)
        {
          [v26 setActive_];
        }
      }

      [v1 setTranslatesAutoresizingMaskIntoConstraints_];
      v27 = [v1 widthAnchor];
      v28 = [v27 constraintEqualToConstant_];

      [v28 setActive_];
      [v1 setTranslatesAutoresizingMaskIntoConstraints_];
      v15 = [v1 heightAnchor];
      v16 = [v15 constraintEqualToConstant_];
    }

    v29 = v16;

    [v29 setActive_];
  }
}

Swift::Void __swiftcall MediaThirdPartyView.adjustStackViewConstraints()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x158))();
  if (v2)
  {
    v3 = v2;
    [v2 setActive_];
    [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_stackView) removeConstraint_];
  }

  v4 = (*((*v1 & *v0) + 0x170))();
  if (v4)
  {
    v5 = v4;
    [v4 setActive_];
    [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_stackView) removeConstraint_];
  }

  v6 = (*((*v1 & *v0) + 0x188))();
  if (v6)
  {
    v7 = v6;
    [v6 setActive_];
    [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_stackView) removeConstraint_];
  }

  v8 = (*((*v1 & *v0) + 0x1A0))();
  if (v8)
  {
    v9 = v8;
    [v8 setActive_];
    [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_stackView) removeConstraint_];
  }

  (*((*v1 & *v0) + 0x88))(&v58);
  if (v58 - 3 < 3)
  {
    v10 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_stackView);
    v16 = [v10 superview];
    if (v16)
    {
      v17 = v16;
      [v10 setTranslatesAutoresizingMaskIntoConstraints_];
      v18 = [v10 topAnchor];
      v19 = [v17 topAnchor];
      v20 = [v18 constraintEqualToAnchor_];

      [v20 setConstant_];
      if (v20)
      {
        [v20 setActive_];
      }
    }

    else
    {
      v20 = 0;
    }

    (*((*v1 & *v0) + 0x190))(v20);
    v29 = [v10 superview];
    if (v29)
    {
      v30 = v29;
      [v10 setTranslatesAutoresizingMaskIntoConstraints_];
      v31 = [v10 leadingAnchor];
      v32 = [v30 leadingAnchor];
      v33 = [v31 constraintEqualToAnchor_];

      [v33 setConstant_];
      if (v33)
      {
        [v33 setActive_];
      }
    }

    else
    {
      v33 = 0;
    }

    (*((*v1 & *v0) + 0x160))(v33);
    v34 = [v10 superview];
    if (v34)
    {
      v35 = v34;
      [v10 setTranslatesAutoresizingMaskIntoConstraints_];
      v36 = [v10 trailingAnchor];
      v37 = [v35 trailingAnchor];
      v38 = [v36 constraintEqualToAnchor_];

      [v38 setConstant_];
LABEL_40:
      if (v38)
      {
        [v38 setActive_];
      }

      goto LABEL_44;
    }

LABEL_43:
    v38 = 0;
LABEL_44:
    (*((*v1 & *v0) + 0x178))(v38);
    [v10 setAlignment_];
    [v10 setCustomSpacing:*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_titleLabel) afterView:3.0];
    v47 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_subtitleLabel);

    [v10 setCustomSpacing:v47 afterView:8.0];
    return;
  }

  if (v58 - 1 < 2)
  {
    v10 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_stackView);
    v11 = [v10 superview];
    if (v11)
    {
      v12 = v11;
      [v10 setTranslatesAutoresizingMaskIntoConstraints_];
      v13 = [v10 topAnchor];
      v14 = [v12 topAnchor];
      v15 = [v13 constraintEqualToAnchor_];

      [v15 setConstant_];
      if (v15)
      {
        [v15 setActive_];
      }
    }

    else
    {
      v15 = 0;
    }

    (*((*v1 & *v0) + 0x190))(v15);
    v39 = [v10 superview];
    if (v39)
    {
      v40 = v39;
      [v10 setTranslatesAutoresizingMaskIntoConstraints_];
      v41 = [v10 leadingAnchor];
      v42 = [v40 leadingAnchor];
      v43 = [v41 constraintEqualToAnchor_];

      [v43 setConstant_];
      if (v43)
      {
        [v43 setActive_];
      }
    }

    else
    {
      v43 = 0;
    }

    (*((*v1 & *v0) + 0x160))(v43);
    v44 = [v10 superview];
    if (v44)
    {
      v35 = v44;
      [v10 setTranslatesAutoresizingMaskIntoConstraints_];
      v45 = [v10 trailingAnchor];
      v46 = [v35 trailingAnchor];
      v38 = [v45 constraintEqualToAnchor_];

      [v38 setConstant_];
      goto LABEL_40;
    }

    goto LABEL_43;
  }

  if (v58 == 6)
  {
    v21 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_stackView);
    v22 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    v23 = [v21 superview];
    v24 = &unk_27821E000;
    if (v23)
    {
      v25 = v23;
      [v21 setTranslatesAutoresizingMaskIntoConstraints_];
      v26 = [v21 leadingAnchor];
      v27 = [v25 leadingAnchor];
      v28 = [v26 constraintEqualToAnchor_];

      [v28 setConstant_];
      if (v28)
      {
        [v28 setActive_];
      }

      v24 = &unk_27821E000;
    }

    else
    {
      v28 = 0;
    }

    (*((*v1 & *v0) + 0x160))(v28);
    v48 = [v21 superview];
    if (v48)
    {
      v49 = v48;
      [v21 v24[440]];
      v50 = [v21 trailingAnchor];
      v51 = [v49 trailingAnchor];
      v52 = [v50 constraintEqualToAnchor_];

      [v52 setConstant_];
      if (v52)
      {
        [v52 setActive_];
      }

      v24 = &unk_27821E000;
      v22 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    }

    else
    {
      v52 = 0;
    }

    (*((*v1 & *v0) + 0x178))(v52);
    v53 = [v21 v22[5]];
    if (v53)
    {
      v54 = v53;
      [v21 v24[440]];
      v55 = [v21 bottomAnchor];
      v56 = [v54 bottomAnchor];
      v57 = [v55 constraintEqualToAnchor_];

      if (v57)
      {
        [v57 setConstant_];
        [v57 setActive_];
      }
    }

    else
    {
      v57 = 0;
    }

    (*((*v1 & *v0) + 0x1A8))(v57);
    [v21 setAlignment_];
    [v21 setCustomSpacing:*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_titleLabel) afterView:3.0];
    [v21 setCustomSpacing:*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_subtitleLabel) afterView:8.0];
  }
}

Swift::Void __swiftcall MediaThirdPartyView.adjustLabels()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x88))(&v9);
  if (v9 > 4u)
  {
    if (v9 > 6u)
    {
      if (v9 != 7)
      {
        return;
      }

LABEL_11:
      [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_titleLabel) setHidden_];
      [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_subtitleLabel) setHidden_];
      v7 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_categoryLabel);
      v8 = 1;
      goto LABEL_12;
    }

    if (v9 == 5)
    {
      v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_titleLabel);
      [v3 setNumberOfLines_];
      v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_subtitleLabel);
      [v4 setNumberOfLines_];
      [v4 setAlpha_];
LABEL_16:
      [v3 setHidden_];
      [v4 setHidden_];
      [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_categoryLabel) setHidden_];
      return;
    }
  }

  else if (v9 <= 2u)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_titleLabel);
        [v1 setNumberOfLines_];
        v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_subtitleLabel);
        [v2 setNumberOfLines_];
        [v1 setHidden_];
        [v2 setHidden_];
        [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_categoryLabel) setHidden_];
        return;
      }

      v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_titleLabel);
      [v3 setNumberOfLines_];
      v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_subtitleLabel);
      [v4 setNumberOfLines_];
      [v4 setAlpha_];
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v5 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_titleLabel);
  [v5 setNumberOfLines_];
  v6 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_subtitleLabel);
  [v6 setNumberOfLines_];
  [v6 setAlpha_];
  [v5 setHidden_];
  [v6 setHidden_];
  v7 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_categoryLabel);
  v8 = 0;
LABEL_12:

  [v7 setHidden_];
}

id MediaThirdPartyView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void MediaThirdPartyView.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_bottomConstraint);
}

id MediaThirdPartyView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaThirdPartyView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for AssetViewBase.init(viewModel:style:) in conformance MediaThirdPartyView@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  result = (*(v3 + 440))(a1, &v6);
  *a3 = result;
  return result;
}

Swift::Void __swiftcall MediaThirdPartyView.setCategoryLabelText()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (v1)
  {
    v18 = v1;
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      (*(v3 + 16))(&v19, ObjectType, v3);
      if (v19 > 1u)
      {
        if (v19 == 2)
        {
          v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_categoryLabel);
          type metadata accessor for MediaThirdPartyView(0);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v6 = [objc_opt_self() bundleForClass_];
          v17 = 0x8000000216583200;
          v7 = 0x747369747241;
          v9 = 0xD000000000000015;
          v10 = 0xE600000000000000;
          v11.super.isa = v6;
          v12 = 0;
          v13 = 0xE000000000000000;
LABEL_13:
          v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, 0, v11, *&v12, *(&v17 - 1));

          v16 = MEMORY[0x21CE91FC0](v15._countAndFlagsBits, v15._object);

          [v4 setText_];

          return;
        }
      }

      else if (v19)
      {
        v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_categoryLabel);
        type metadata accessor for MediaThirdPartyView(0);
        v5 = swift_getObjCClassFromMetadata();
        v6 = [objc_opt_self() bundleForClass_];
        v17 = 0x8000000216583220;
        v7 = 0x6D75626C41;
LABEL_12:
        v10 = 0xE500000000000000;
        v11.super.isa = v6;
        v12 = 0;
        v13 = 0xE000000000000000;
        v9 = 0xD000000000000014;
        goto LABEL_13;
      }

      v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_categoryLabel);
      type metadata accessor for MediaThirdPartyView(0);
      v14 = swift_getObjCClassFromMetadata();
      v6 = [objc_opt_self() bundleForClass_];
      v17 = 0x80000002165831E0;
      v7 = 0x616964654DLL;
      goto LABEL_12;
    }
  }
}

void specialized MediaThirdPartyView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_colorView;
  type metadata accessor for MediaThirdPartyEffectBackgroundView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_iconView;
  *(v0 + v2) = closure #1 in variable initialization expression of MediaThirdPartyView.iconView();
  v3 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_titleLabel;
  closure #1 in variable initialization expression of MediaThirdPartyView.titleLabel();
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_subtitleLabel;
  *(v0 + v5) = closure #1 in variable initialization expression of MediaThirdPartyView.subtitleLabel();
  v6 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_categoryLabel;
  closure #1 in variable initialization expression of MediaThirdPartyView.categoryLabel();
  *(v0 + v6) = v7;
  v8 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_stackView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v9 setAxis_];
  [v9 setSpacing_];
  *(v0 + v8) = v9;
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_leadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_trailingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_topConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_bottomConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t AssetType.pluralLocalizedString.getter(int a1, Swift::Int count)
{
  v2 = AssetType.assetTypeAsPluralString(count:includeCount:)(count, 0);
  v3 = StaticString.description.getter();
  v5 = v4;
  v6 = [objc_opt_self() mainBundle];
  v10._object = v5;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = v3;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v6, v7, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

Swift::String __swiftcall AssetType.assetTypeAsPluralString(count:includeCount:)(Swift::Int count, Swift::Bool includeCount)
{
  v3 = v2;
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  MEMORY[0x28223BE20](v8 - 8);
  type metadata accessor for InterstitialListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  switch(v3)
  {
    case 1:
    case 2:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v11._countAndFlagsBits = 0;
        v11._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x6F697461636F4C20;
        v13 = 0xEA0000000000736ELL;
        goto LABEL_46;
      }

      v16 = 0x6E6F697461636F4CLL;
      if (count >= 2)
      {
        v52 = 0x800000021657B360;
        v17 = 0xE900000000000073;
        goto LABEL_106;
      }

      v52 = 0x800000021657B360;
      goto LABEL_75;
    case 3:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v29._countAndFlagsBits = 0;
        v29._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x74756F6B726F5720;
        goto LABEL_32;
      }

      if (count >= 2)
      {
        v52 = 0x800000021657B360;
        v38 = 0x756F6B726F57;
        goto LABEL_74;
      }

      v52 = 0x800000021657B360;
      v42 = 0x756F6B726F57;
      goto LABEL_98;
    case 4:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v27._countAndFlagsBits = 0;
        v27._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v28._object = 0x8000000216583380;
        v28._countAndFlagsBits = 0xD000000000000012;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
        String.LocalizationValue.init(stringInterpolation:)();
        static Locale.current.getter();
        goto LABEL_47;
      }

      if (count < 2)
      {
        v52 = 0x800000021657B360;
        v16 = 0x2074756F6B726F57;
        v17 = 0xEF7972616D6D7553;
      }

      else
      {
        v16 = 0xD000000000000011;
        v52 = 0x800000021657B360;
        v17 = 0x8000000216583360;
      }

      goto LABEL_106;
    case 5:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v22._countAndFlagsBits = 0;
        v22._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x74756F6B726F5720;
        v13 = 0xEF736574756F5220;
        goto LABEL_46;
      }

      v16 = 0x2074756F6B726F57;
      v52 = 0x800000021657B360;
      if (count < 2)
      {
        v17 = 0xED00006574756F52;
      }

      else
      {
        v17 = 0xEE00736574756F52;
      }

      goto LABEL_106;
    case 6:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v23._countAndFlagsBits = 0;
        v23._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x6F20657461745320;
        v13 = 0xEF73646E694D2066;
        goto LABEL_46;
      }

      v52 = 0x800000021657B360;
      v16 = 0x666F206574617453;
      if (count < 2)
      {
        v17 = 0xED0000646E694D20;
      }

      else
      {
        v17 = 0xEE0073646E694D20;
      }

      goto LABEL_106;
    case 7:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v20._countAndFlagsBits = 0;
        v20._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x736E755220;
        v13 = 0xE500000000000000;
        goto LABEL_46;
      }

      v52 = 0x800000021657B360;
      if (count < 2)
      {
        v16 = 7238994;
        v17 = 0xE300000000000000;
      }

      else
      {
        v16 = 1936618834;
        v17 = 0xE400000000000000;
      }

      goto LABEL_106;
    case 8:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v26._countAndFlagsBits = 0;
        v26._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x736B6C615720;
        goto LABEL_39;
      }

      if (count >= 2)
      {
        v52 = 0x800000021657B360;
        v39 = 1802264919;
        goto LABEL_69;
      }

      v52 = 0x800000021657B360;
      v16 = 1802264919;
      v17 = 0xE400000000000000;
      goto LABEL_106;
    case 9:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v18._countAndFlagsBits = 0;
        v18._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x572026206E755220;
        v13 = 0xEC000000736B6C61;
        goto LABEL_46;
      }

      v52 = 0x800000021657B360;
      v16 = 0x61572026206E7552;
      if (count < 2)
      {
        v17 = 0xEA00000000006B6CLL;
      }

      else
      {
        v17 = 0xEB00000000736B6CLL;
      }

      goto LABEL_106;
    case 10:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v25._countAndFlagsBits = 0;
        v25._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x73676E6F5320;
        v13 = 0xE600000000000000;
        goto LABEL_46;
      }

      if (count < 2)
      {
        v52 = 0x800000021657B360;
        v16 = 1735290707;
        v17 = 0xE400000000000000;
        goto LABEL_106;
      }

      v52 = 0x800000021657B360;
      v39 = 1735290707;
LABEL_69:
      v16 = v39 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      goto LABEL_105;
    case 11:
    case 14:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v14._countAndFlagsBits = 0;
        v14._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v15 = 0x6D75626C4120;
        goto LABEL_44;
      }

      if (count >= 2)
      {
        v52 = 0x800000021657B360;
        v16 = 0x736D75626C41;
        v17 = 0xE600000000000000;
        goto LABEL_106;
      }

      v52 = 0x800000021657B360;
      v16 = 0x6D75626C41;
      goto LABEL_105;
    case 12:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v21._countAndFlagsBits = 0;
        v21._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x74736163646F5020;
LABEL_32:
        v13 = 0xE900000000000073;
        goto LABEL_46;
      }

      if (count < 2)
      {
        v52 = 0x800000021657B360;
        v42 = 0x736163646F50;
LABEL_98:
        v16 = v42 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
        v17 = 0xE700000000000000;
      }

      else
      {
        v52 = 0x800000021657B360;
        v38 = 0x736163646F50;
LABEL_74:
        v16 = v38 & 0xFFFFFFFFFFFFLL | 0x7374000000000000;
LABEL_75:
        v17 = 0xE800000000000000;
      }

      goto LABEL_106;
    case 13:
      if (!includeCount)
      {
        v52 = 0x800000021657B360;
        v16 = 0x616964654DLL;
        goto LABEL_105;
      }

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v32);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v12 = 0x616964654D20;
LABEL_39:
      v13 = 0xE600000000000000;
      goto LABEL_46;
    case 15:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v19._countAndFlagsBits = 0;
        v19._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x7374736974724120;
        v13 = 0xE800000000000000;
        goto LABEL_46;
      }

      if (count >= 2)
      {
        v52 = 0x800000021657B360;
        v37 = 0x747369747241;
        goto LABEL_64;
      }

      v52 = 0x800000021657B360;
      v16 = 0x747369747241;
      v17 = 0xE600000000000000;
      goto LABEL_106;
    case 16:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v34._countAndFlagsBits = 0;
        v34._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v34);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v15 = 0x6F746F685020;
        goto LABEL_44;
      }

      if (count >= 2)
      {
        v52 = 0x800000021657B360;
        v41 = 1953458256;
        goto LABEL_86;
      }

      v52 = 0x800000021657B360;
      v43 = 1953458256;
      goto LABEL_104;
    case 17:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v24._countAndFlagsBits = 0;
        v24._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v24);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x73726574736F5020;
        v13 = 0xE800000000000000;
        goto LABEL_46;
      }

      if (count < 2)
      {
        v52 = 0x800000021657B360;
        v16 = 0x726574736F50;
        v17 = 0xE600000000000000;
      }

      else
      {
        v52 = 0x800000021657B360;
        v37 = 0x726574736F50;
LABEL_64:
        v16 = v37 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
        v17 = 0xE700000000000000;
      }

      goto LABEL_106;
    case 18:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v30._countAndFlagsBits = 0;
        v30._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x6850206576694C20;
        v13 = 0xEC000000736F746FLL;
        goto LABEL_46;
      }

      v16 = 0x6F6850206576694CLL;
      if (count < 2)
      {
        v40 = 0xEA00000000006B6CLL;
      }

      else
      {
        v40 = 0xEB00000000736B6CLL;
      }

      v52 = 0x800000021657B360;
      v17 = v40 + 1032;
      goto LABEL_106;
    case 19:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v33._countAndFlagsBits = 0;
        v33._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v33);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v15 = 0x6F6564695620;
LABEL_44:
        v12 = v15 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
        goto LABEL_45;
      }

      if (count < 2)
      {
        v52 = 0x800000021657B360;
        v43 = 1701079382;
LABEL_104:
        v16 = v43 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
LABEL_105:
        v17 = 0xE500000000000000;
      }

      else
      {
        v52 = 0x800000021657B360;
        v41 = 1701079382;
LABEL_86:
        v16 = v41 & 0xFFFF0000FFFFFFFFLL | 0x736F00000000;
        v17 = 0xE600000000000000;
      }

      goto LABEL_106;
    default:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v31._countAndFlagsBits = 0;
        v31._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v31);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x656C706F655020;
LABEL_45:
        v13 = 0xE700000000000000;
LABEL_46:
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v12);
        String.LocalizationValue.init(stringInterpolation:)();
        static Locale.current.getter();
LABEL_47:
        countAndFlagsBits = String.init(localized:table:bundle:locale:comment:)();
      }

      else
      {
        v52 = 0x800000021657B360;
        if (count < 2)
        {
          v16 = 0x6E6F73726550;
        }

        else
        {
          v16 = 0x656C706F6550;
        }

        v17 = 0xE600000000000000;
LABEL_106:
        v44._countAndFlagsBits = 0;
        v44._object = 0xE000000000000000;
        v45 = 0xD00000000000001ALL;
        v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v16, 0, v10, v44, *(&v52 - 1));
        object = v46._object;
        countAndFlagsBits = v46._countAndFlagsBits;
      }

      v47 = countAndFlagsBits;
      v48 = object;

      v49 = v47;
      v50 = v48;
      result._object = v50;
      result._countAndFlagsBits = v49;
      return result;
  }
}