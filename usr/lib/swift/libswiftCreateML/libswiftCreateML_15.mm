id @nonobjc AVAudioFile.init(forReading:)(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [v1 initForReading:v2 error:&v12];

  v5 = v12;
  v11 = v4;
  if (v4)
  {
    v6 = type metadata accessor for URL(0);
    v7 = *(*(v6 - 8) + 8);
    v5;
    v7(a1, v6);
  }

  else
  {
    v8 = v12;
    _convertNSErrorToError(_:)(v5);

    swift_willThrow();
    v9 = type metadata accessor for URL(0);
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v11;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for TrainingTablePrinter(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 24);
  v5 = v4 + *(v2 + 64);

  v6 = v0 + v4;
  v7 = type metadata accessor for Date(0);
  (*(*(v7 - 8) + 8))(v6, v7);

  *(*(v1 + 24) + v6);
  return swift_deallocObject(v0, v5, v3 | 7);
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(Swift::Int **a1)
{
  v144 = type metadata accessor for URL(0);
  v139 = *(v144 - 8);
  v2 = *(v139 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v145 = &v135;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v141 = &v135;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v138 = &v135;
  v12 = alloca(v7);
  v13 = alloca(v7);
  v161 = &v135;
  v14 = alloca(v7);
  v15 = alloca(v7);
  v160 = &v135;
  v150 = a1;
  v16 = a1[1];
  result = _minimumMergeRunLength(_:)(v16);
  if (result >= v16)
  {
    if (v16 < 0)
    {
      BUG();
    }

    if (v16)
    {
      return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v16, 1uLL, v150);
    }
  }

  else
  {
    v166 = v5;
    if (v16 < -1)
    {
      BUG();
    }

    v153 = v16;
    v137 = result;
    if (v16 <= 1)
    {
      v19 = _swiftEmptyArrayStorage;
    }

    else
    {
      v18 = v16 / 2;
      v19 = static Array._allocateBufferUninitialized(minimumCapacity:)(v16 / 2, v166);
      v16 = v153;
      v19[2] = v18;
    }

    v152 = v1;
    v20 = *(v6 + 80);
    v142 = v19;
    v140 = v19 + ((v20 + 32) & ~v20);
    v162 = v6;
    if (v16 > 0)
    {
      v158 = *v150;
      v21 = v16;
      v22 = _swiftEmptyArrayStorage;
      v23 = 0;
      v24 = v166;
      while (1)
      {
        v25 = (v23 + 1);
        v164 = v22;
        v154 = v23;
        if ((v23 + 1) >= v21)
        {
          v50 = v23;
        }

        else
        {
          v26 = *(v6 + 16);
          v157 = *(v6 + 72);
          v27 = v158;
          v165 = v158 + v157 * v25;
          v28 = v23;
          v26(v160, v165, v24);
          v151 = v28 * v157;
          v146 = v26;
          v26(v161, v27 + v28 * v157, v24);
          v29 = v145;
          AnnotatedFeature.feature.getter(v166);
          v30 = URL.path(percentEncoded:)(1);
          countAndFlagsBits = v30._countAndFlagsBits;
          object = v30._object;
          v31 = *(v139 + 8);
          v32 = v144;
          v31(v29, v144);
          AnnotatedFeature.feature.getter(v166);
          v33 = URL.path(percentEncoded:)(1);
          v156 = v33._countAndFlagsBits;
          v34 = v33._object;
          v35 = v29;
          v36 = v166;
          v147 = v31;
          v31(v35, v32);
          v6 = v162;
          LOBYTE(v32) = object;
          LOBYTE(v149) = specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(v156, v34, countAndFlagsBits, object);
          v32;
          v34;
          v37 = *(v6 + 8);
          (v37)(v161, v36);
          v148 = v37;
          (v37)(v160, v36);
          v38 = v157;
          v25 = (v154 + 2);
          if ((v154 + 2) < v153)
          {
            v39 = v158 + v25 * v157;
            v40 = v165;
            while (1)
            {
              v165 = v40;
              v163 = v25;
              v143 = v39;
              v41 = v146;
              (v146)(v160, v39, v36, v38);
              v41(v161, v40, v36);
              v42 = v145;
              AnnotatedFeature.feature.getter(v166);
              v43 = URL.path(percentEncoded:)(1);
              countAndFlagsBits = v43._countAndFlagsBits;
              object = v43._object;
              v44 = v144;
              v45 = v147;
              (v147)(v42, v144);
              AnnotatedFeature.feature.getter(v166);
              v46 = URL.path(percentEncoded:)(1);
              v156 = v46._countAndFlagsBits;
              v47 = v46._object;
              v48 = v42;
              v36 = v166;
              v45(v48, v44);
              LOBYTE(v45) = v47;
              LOBYTE(v44) = object;
              LOBYTE(v47) = specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(v156, v47, countAndFlagsBits, object);
              v44;
              v45;
              v49 = v148;
              (v148)(v161, v36);
              v49(v160, v36);
              if ((v149 ^ v47))
              {
                break;
              }

              v25 = v163 + 1;
              v38 = v157;
              v40 = v157 + v165;
              v39 = v157 + v143;
              if (v163 + 1 >= v153)
              {
                v25 = v153;
                v6 = v162;
                goto LABEL_19;
              }
            }

            v6 = v162;
            v25 = v163;
            v38 = v157;
          }

LABEL_19:
          v22 = v164;
          v50 = v154;
          v51 = v151;
          if (v149)
          {
            if (v25 < v154)
            {
              BUG();
            }

            if (v25 > v154)
            {
              v163 = v25;
              v52 = v25;
              v53 = v38 * (v25 - 1);
              v54 = v38 * v52;
              v55 = 0;
              v56 = v154;
              while (1)
              {
                v57 = (v55 + v163 - 1);
                if (v56 != v57)
                {
                  break;
                }

LABEL_32:
                ++v56;
                --v55;
                v53 -= v38;
                v54 -= v38;
                v51 += v38;
                if (v56 >= v57)
                {
                  v6 = v162;
                  v25 = v163;
                  v50 = v154;
                  goto LABEL_34;
                }
              }

              countAndFlagsBits = (v55 + v163 - 1);
              if (!v158)
              {
                BUG();
              }

              v156 = v158 + v51;
              v165 = v158 + v53;
              v58 = *(v162 + 32);
              v151 = v51;
              object = v58;
              (v58)(v141, v158 + v51, v166, v158, v22);
              if (v151 < v53 || v156 >= v54 + v158)
              {
                swift_arrayInitWithTakeFrontToBack(v156, v165, 1, v166);
LABEL_30:
                v60 = v165;
                v59 = v166;
              }

              else
              {
                v59 = v166;
                v60 = v165;
                if (v151 != v53)
                {
                  swift_arrayInitWithTakeBackToFront(v156, v165, 1, v166);
                  goto LABEL_30;
                }
              }

              (object)(v60, v141, v59);
              v22 = v164;
              v38 = v157;
              v51 = v151;
              v57 = countAndFlagsBits;
              goto LABEL_32;
            }
          }
        }

LABEL_34:
        if (v25 < v153)
        {
          if (__OFSUB__(v25, v50))
          {
            BUG();
          }

          if (v25 - v50 < v137)
          {
            v61 = &v50[v137];
            if (__OFADD__(v137, v50))
            {
              BUG();
            }

            if (v61 >= v153)
            {
              v61 = v153;
            }

            if (v61 < v50)
            {
              BUG();
            }

            if (v25 != v61)
            {
              v149 = *(v6 + 16);
              v62 = *(v6 + 72);
              v63 = (v158 + v62 * (v25 - 1));
              v146 = -v62;
              v136 = v62;
              v64 = (v158 + v62 * v25);
              v135 = v61;
              do
              {
                v148 = v64;
                v65 = v50;
                v66 = v64;
                v147 = v63;
                v67 = v166;
                v163 = v25;
                while (1)
                {
                  v143 = v65;
                  v68 = v63;
                  v157 = v66;
                  v69 = v149;
                  v149(v160, v66, v67);
                  v151 = v68;
                  v69(v161, v68, v67);
                  v70 = v145;
                  AnnotatedFeature.feature.getter(v67);
                  v71 = URL.path(percentEncoded:)(1);
                  v165 = v71._countAndFlagsBits;
                  countAndFlagsBits = v71._object;
                  object = *(v139 + 8);
                  v72 = v144;
                  (object)(v70, v144);
                  AnnotatedFeature.feature.getter(v166);
                  v73 = URL.path(percentEncoded:)(1);
                  v156 = v73._countAndFlagsBits;
                  v74 = v73._object;
                  v75 = v166;
                  (object)(v70, v72);
                  LOBYTE(v72) = countAndFlagsBits;
                  LOBYTE(v165) = specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(v156, v74, v165, countAndFlagsBits);
                  v72;
                  v76 = v162;
                  v74;
                  v77 = *(v76 + 8);
                  v77(v161, v75);
                  v77(v160, v75);
                  if ((v165 & 1) == 0)
                  {
                    break;
                  }

                  v78 = v143;
                  if (!v158)
                  {
                    BUG();
                  }

                  v165 = *(v76 + 32);
                  v79 = v157;
                  v67 = v166;
                  (v165)(v138, v157, v166);
                  v80 = v151;
                  swift_arrayInitWithTakeFrontToBack(v79, v151, 1, v67);
                  (v165)(v80, v138, v67);
                  v63 = (v146 + v80);
                  v65 = v78 + 1;
                  v66 = (v146 + v79);
                  v81 = v163;
                  if (v163 == v65)
                  {
                    goto LABEL_49;
                  }
                }

                v81 = v163;
LABEL_49:
                v6 = v162;
                v25 = v81 + 1;
                v63 = &v147[v136];
                v64 = &v148[v136];
                v50 = v154;
              }

              while (v25 != v135);
              v25 = v135;
              v22 = v164;
            }
          }
        }

        if (v25 < v50)
        {
          BUG();
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v22);
        v163 = v25;
        if (isUniquelyReferenced_nonNull_native)
        {
          v22 = v164;
        }

        else
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v164 + 2) + 1, 1, v164);
        }

        v83 = *(v22 + 2);
        v84 = v83 + 1;
        v85 = v154;
        if (*(v22 + 3) >> 1 <= v83)
        {
          v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v22 + 3) >= 2uLL, v83 + 1, 1, v22);
          v85 = v154;
          v22 = v120;
        }

        *(v22 + 2) = v84;
        v86 = 16 * v83;
        *&v22[v86 + 32] = v85;
        *&v22[v86 + 40] = v163;
        if (v83)
        {
          break;
        }

        v84 = 1;
        v24 = v166;
LABEL_91:
        v21 = v153;
        v23 = v163;
        if (v163 >= v153)
        {
          goto LABEL_95;
        }
      }

      v87 = (v22 + 32);
      v24 = v166;
      v164 = v22;
      v165 = (v22 + 32);
      while (1)
      {
        v88 = v84 - 1;
        if (v84 >= 4)
        {
          v93 = 16 * v84;
          v94 = *(v87 + 16 * v84 - 56);
          v90 = __OFSUB__(v94, *(v87 + 16 * v84 - 64));
          v95 = v94 - *(v87 + 16 * v84 - 64);
          if (v90)
          {
            BUG();
          }

          v96 = *(v87 + v93 - 40);
          v90 = __OFSUB__(v96, *(v87 + v93 - 48));
          v91 = v96 - *(v87 + v93 - 48);
          v92 = v90;
          if (v90)
          {
            BUG();
          }

          v97 = *&v22[v93 + 8];
          v90 = __OFSUB__(v97, *&v22[16 * v84]);
          v98 = v97 - *&v22[16 * v84];
          if (v90)
          {
            BUG();
          }

          v90 = __OFADD__(v91, v98);
          v99 = v91 + v98;
          if (v90)
          {
            BUG();
          }

          if (v99 >= v95)
          {
            v108 = *(v87 + 16 * v88 + 8);
            v90 = __OFSUB__(v108, *(v87 + 16 * v88));
            v109 = v108 - *(v87 + 16 * v88);
            if (v90)
            {
              BUG();
            }

            if (v91 < v109)
            {
LABEL_81:
              v88 = v84 - 2;
              goto LABEL_82;
            }

            goto LABEL_82;
          }
        }

        else
        {
          if (v84 != 3)
          {
            if (v84 < 2)
            {
              BUG();
            }

            v105 = *&v22[16 * v84 + 8];
            v90 = __OFSUB__(v105, *&v22[16 * v84]);
            v101 = v105 - *&v22[16 * v84];
            v102 = v90;
LABEL_75:
            if (v102)
            {
              BUG();
            }

            v106 = *(v87 + 16 * v88 + 8);
            v90 = __OFSUB__(v106, *(v87 + 16 * v88));
            v107 = v106 - *(v87 + 16 * v88);
            if (v90)
            {
              BUG();
            }

            if (v107 < v101)
            {
              v6 = v162;
              goto LABEL_91;
            }

            goto LABEL_82;
          }

          v89 = *(v22 + 5);
          v90 = __OFSUB__(v89, *(v22 + 4));
          v91 = v89 - *(v22 + 4);
          v92 = v90;
        }

        if (v92)
        {
          BUG();
        }

        v100 = *&v22[16 * v84 + 8];
        v90 = __OFSUB__(v100, *&v22[16 * v84]);
        v101 = v100 - *&v22[16 * v84];
        v102 = v90;
        if (v90)
        {
          BUG();
        }

        v103 = *(v87 + 16 * v88 + 8);
        v90 = __OFSUB__(v103, *(v87 + 16 * v88));
        v104 = v103 - *(v87 + 16 * v88);
        if (v90)
        {
          BUG();
        }

        if (__OFADD__(v104, v101))
        {
          BUG();
        }

        if (v104 + v101 < v91)
        {
          goto LABEL_75;
        }

        if (v91 < v104)
        {
          goto LABEL_81;
        }

LABEL_82:
        if (v88 - 1 >= v84)
        {
          BUG();
        }

        if (!v158)
        {
          BUG();
        }

        v110 = 16 * (v88 - 1);
        countAndFlagsBits = v88;
        v111 = (v87 + 16 * v88);
        v112 = *(v87 + v110);
        v113 = v111[1];
        v114 = v152;
        specialized _merge<A>(low:mid:high:buffer:by:)(v158 + v112 * *(v162 + 72), v158 + *(v162 + 72) * *v111, (v158 + v113 * *(v162 + 72)), v140);
        v152 = v114;
        if (v114)
        {
          goto LABEL_107;
        }

        if (v113 < v112)
        {
          BUG();
        }

        v115 = v111;
        v116 = (v165 + v110);
        v117 = *(v164 + 2);
        v118 = countAndFlagsBits;
        v119 = countAndFlagsBits < v117;
        if (countAndFlagsBits > v117)
        {
          BUG();
        }

        *v116 = v112;
        v116[1] = v113;
        if (!v119)
        {
          BUG();
        }

        v84 = v117 - 1;
        memmove(v115, v115 + 2, 16 * (v117 - 1 - v118));
        v87 = v165;
        v22 = v164;
        *(v164 + 2) = v117 - 1;
        v119 = v117 <= 2;
        v6 = v162;
        v24 = v166;
        if (v119)
        {
          goto LABEL_91;
        }
      }
    }

    v22 = _swiftEmptyArrayStorage;
    v84 = _swiftEmptyArrayStorage[2];
LABEL_95:
    if (v84 < 2)
    {
LABEL_108:
      v133 = v22;
    }

    else
    {
      v121 = *v150;
      v160 = *v150;
      while (1)
      {
        if (!v121)
        {
          BUG();
        }

        v122 = 16 * (v84 - 1);
        v123 = *&v22[16 * v84];
        v164 = v22;
        v124 = *(v162 + 72);
        v125 = v121 + v124 * *&v22[v122 + 32];
        v166 = *&v22[v122 + 40];
        v126 = v152;
        specialized _merge<A>(low:mid:high:buffer:by:)(v121 + v123 * v124, v125, (v121 + v166 * v124), v140);
        v152 = v126;
        if (v126)
        {
          break;
        }

        if (v166 < v123)
        {
          BUG();
        }

        v161 = v123;
        if (swift_isUniquelyReferenced_nonNull_native(v164))
        {
          v127 = v164;
        }

        else
        {
          v127 = specialized _ArrayBuffer._consumeAndCreateNew()(v164);
        }

        v128 = *(v127 + 2);
        if (v84 - 2 >= v128)
        {
          BUG();
        }

        *&v127[16 * v84] = v161;
        *&v127[16 * v84 + 8] = v166;
        v129 = v128 - v84;
        if (v128 < v84)
        {
          BUG();
        }

        v84 = v128 - 1;
        v130 = &v127[v122 + 32];
        v131 = &v127[v122 + 48];
        v132 = v127;
        memmove(v130, v131, 16 * v129);
        v22 = v132;
        *(v132 + 2) = v128 - 1;
        v121 = v160;
        if (v128 <= 2)
        {
          goto LABEL_108;
        }
      }

LABEL_107:
      v133 = v164;
    }

    v133;
    v134 = v142;
    v142[2] = 0;
    return v134;
  }

  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v174 = type metadata accessor for URL(0);
  v155 = *(v174 - 8);
  v2 = *(v155 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v160 = &v152;
  v184 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v180 = *(v184 - 8);
  v5 = *(v180 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v158 = &v152;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v154 = &v152;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v168 = &v152;
  v12 = alloca(v5);
  v13 = alloca(v5);
  v14 = alloca(v5);
  v15 = alloca(v5);
  v161 = &v152;
  v16 = alloca(v5);
  v17 = alloca(v5);
  v157 = &v152;
  v18 = alloca(v5);
  v19 = alloca(v5);
  v166 = &v152;
  v20 = alloca(v5);
  v21 = alloca(v5);
  v167 = &v152;
  v22 = a1[1];
  result = _minimumMergeRunLength(_:)(v22);
  if (result >= v22)
  {
    if (v22 < 0)
    {
      BUG();
    }

    if (v22)
    {
      return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v22, 1uLL, a1);
    }
  }

  else
  {
    v177 = &v152;
    if (v22 < -1)
    {
      BUG();
    }

    v173 = v22;
    v165 = result;
    if (v22 <= 1)
    {
      v24 = _swiftEmptyArrayStorage;
    }

    else
    {
      v24 = static Array._allocateBufferUninitialized(minimumCapacity:)(v22 / 2, v184);
      v24[2] = v22 / 2;
    }

    v172 = v1;
    v25 = (*(v180 + 80) + 32) & ~*(v180 + 80);
    v159 = v24;
    v156 = v24 + v25;
    v26 = v173;
    v153 = a1;
    if (v173 > 0)
    {
      v27 = *a1;
      v28 = _swiftEmptyArrayStorage;
      v29 = 0;
      v181 = *a1;
      while (1)
      {
        v30 = v29 + 1;
        v179 = v29;
        if (v29 + 1 >= v26)
        {
          v45 = v165;
        }

        else
        {
          v31 = v29;
          v182 = v28;
          v32 = *(v180 + 16);
          v33 = *(v180 + 72);
          v185 = v27 + v33 * v30;
          v34 = v184;
          v32(v167, v185, v184);
          __dst = v33;
          v171 = v31 * v33;
          v162 = v32;
          v32(v166, v181 + v31 * v33, v34);
          v35 = v160;
          AnnotatedFeature.feature.getter(v34);
          v36 = URL.path(percentEncoded:)(1);
          countAndFlagsBits = v36._countAndFlagsBits;
          object = v36._object;
          v37 = *(v155 + 8);
          v38 = v34;
          v39 = v174;
          v37(v35, v174);
          AnnotatedFeature.feature.getter(v38);
          v40 = URL.path(percentEncoded:)(1);
          v41 = v40._countAndFlagsBits;
          v42 = v35;
          v43 = v40._object;
          v163 = v37;
          v37(v42, v39);
          v44 = object;
          if (v41 ^ countAndFlagsBits | v43 ^ object)
          {
            LODWORD(v170) = _stringCompareWithSmolCheck(_:_:expecting:)(countAndFlagsBits, object, v41, v43, 1);
          }

          else
          {
            LODWORD(v170) = 0;
          }

          v44;
          v43;
          v46 = *(v180 + 8);
          v47 = v184;
          v46(v166, v184);
          v164 = v46;
          v46(v167, v47);
          v30 = v179 + 2;
          v48 = v185;
          if (v179 + 2 >= v173)
          {
LABEL_24:
            v27 = v181;
          }

          else
          {
            v49 = (v181 + v30 * __dst);
            while (1)
            {
              v183 = v30;
              v169 = v49;
              v50 = v184;
              v51 = v162;
              (v162)(v157, v49, v184);
              v185 = v48;
              v51(v161, v48, v50);
              v52 = v160;
              AnnotatedFeature.feature.getter(v50);
              v53 = URL.path(percentEncoded:)(1);
              countAndFlagsBits = v53._countAndFlagsBits;
              object = v53._object;
              v54 = v50;
              v55 = v174;
              v56 = v163;
              v163(v52, v174);
              AnnotatedFeature.feature.getter(v54);
              v57 = URL.path(percentEncoded:)(1);
              v58 = v57._countAndFlagsBits;
              v59 = v52;
              v60 = v57._object;
              v56(v59, v55);
              v61 = object;
              v62 = v58 ^ countAndFlagsBits | v60 ^ object ? _stringCompareWithSmolCheck(_:_:expecting:)(countAndFlagsBits, object, v58, v60, 1) : 0;
              v61;
              v60;
              v63 = v184;
              v64 = v164;
              v164(v161, v184);
              v64(v157, v63);
              if ((v170 ^ v62))
              {
                break;
              }

              v30 = v183 + 1;
              v48 = __dst + v185;
              v49 = __dst + v169;
              if (v183 + 1 >= v173)
              {
                v30 = v173;
                goto LABEL_24;
              }
            }

            v27 = v181;
            v30 = v183;
          }

          v28 = v182;
          v45 = v165;
          v65 = v171;
          if (v170)
          {
            if (v30 < v179)
            {
              BUG();
            }

            if (v30 > v179)
            {
              v66 = __dst * (v30 - 1);
              v67 = __dst * v30;
              v68 = 0;
              v69 = v179;
              v183 = v30;
              while (1)
              {
                v70 = v30 + v68 - 1;
                if (v69 != v70)
                {
                  break;
                }

LABEL_39:
                ++v69;
                --v68;
                v66 -= __dst;
                v67 -= __dst;
                v65 = &v65[__dst];
                if (v69 >= v70)
                {
                  v28 = v182;
                  goto LABEL_41;
                }
              }

              countAndFlagsBits = v30 + v68 - 1;
              if (!v27)
              {
                BUG();
              }

              v169 = &v65[v27];
              v185 = v27 + v66;
              v71 = *(v180 + 32);
              v171 = v65;
              object = v71;
              v71(v158, &v65[v27], v184, v45);
              if (v171 < v66 || v169 >= v67 + v181)
              {
                swift_arrayInitWithTakeFrontToBack(v169, v185, 1, v184);
LABEL_37:
                v73 = v185;
                v72 = v184;
              }

              else
              {
                v72 = v184;
                v73 = v185;
                if (v171 != v66)
                {
                  swift_arrayInitWithTakeBackToFront(v169, v185, 1, v184);
                  goto LABEL_37;
                }
              }

              (object)(v73, v158, v72);
              v45 = v165;
              v27 = v181;
              v30 = v183;
              v65 = v171;
              v70 = countAndFlagsBits;
              goto LABEL_39;
            }
          }
        }

LABEL_41:
        if (v30 >= v173)
        {
          goto LABEL_61;
        }

        if (__OFSUB__(v30, v179))
        {
          BUG();
        }

        if (v30 - v179 >= v45)
        {
LABEL_61:
          v74 = v179;
        }

        else
        {
          v74 = v179;
          v75 = (v45 + v179);
          if (__OFADD__(v45, v179))
          {
            BUG();
          }

          if (v75 >= v173)
          {
            v75 = v173;
          }

          if (v75 < v179)
          {
            BUG();
          }

          if (v30 != v75)
          {
            v182 = v28;
            v171 = *(v180 + 16);
            v76 = *(v180 + 72);
            v77 = (v27 + v76 * (v30 - 1));
            v170 = -v76;
            v152 = v76;
            v78 = v27 + v76 * v30;
            v79 = v177;
            v164 = v75;
            do
            {
              v163 = v78;
              v162 = v77;
              v80 = v184;
              v183 = v30;
              while (1)
              {
                countAndFlagsBits = v74;
                object = v78;
                v81 = v77;
                v82 = v171;
                (v171)(v79, v78, v80);
                v169 = v81;
                v82(v168, v81, v80);
                v83 = v160;
                AnnotatedFeature.feature.getter(v80);
                v84 = URL.path(percentEncoded:)(1);
                v185 = v84._countAndFlagsBits;
                v85 = v84._object;
                __dst = *(v155 + 8);
                (__dst)(v83, v174);
                v86 = v80;
                v87 = v85;
                AnnotatedFeature.feature.getter(v86);
                v88 = URL.path(percentEncoded:)(1);
                v89 = v88._countAndFlagsBits;
                v90 = v88._object;
                (__dst)(v83, v174);
                if (!(v89 ^ v185 | v90 ^ v87))
                {
                  v87;
                  v90;
                  v98 = *(v180 + 8);
                  v99 = v184;
                  v98(v168, v184);
                  v100 = v177;
                  v98(v177, v99);
                  v79 = v100;
                  goto LABEL_58;
                }

                v91 = _stringCompareWithSmolCheck(_:_:expecting:)(v185, v87, v89, v90, 1);
                v87;
                v90;
                v92 = *(v180 + 8);
                v93 = v184;
                v92(v168, v184);
                v92(v177, v93);
                if ((v91 & 1) == 0)
                {
                  break;
                }

                v94 = countAndFlagsBits;
                if (!v181)
                {
                  BUG();
                }

                v80 = v93;
                v185 = *(v180 + 32);
                v95 = object;
                (v185)(v154, object, v80);
                v96 = v169;
                swift_arrayInitWithTakeFrontToBack(v95, v169, 1, v80);
                (v185)(v96, v154, v80);
                v77 = (v170 + v96);
                v74 = v94 + 1;
                v78 = v170 + v95;
                v97 = v183;
                v79 = v177;
                if (v183 == v74)
                {
                  goto LABEL_59;
                }
              }

              v79 = v177;
LABEL_58:
              v97 = v183;
LABEL_59:
              v30 = v97 + 1;
              v77 = &v162[v152];
              v78 = v163 + v152;
              v74 = v179;
            }

            while (v30 != v164);
            v30 = v164;
            v28 = v182;
          }
        }

        if (v30 < v74)
        {
          BUG();
        }

        v183 = v30;
        if (!swift_isUniquelyReferenced_nonNull_native(v28))
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
        }

        v101 = v28;
        v102 = *(v28 + 2);
        v182 = v101;
        v103 = *(v101 + 3);
        v104 = v102 + 1;
        v27 = v181;
        v29 = v183;
        if (v103 >> 1 <= v102)
        {
          v140 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v103 >= 2, v102 + 1, 1, v182);
          v29 = v183;
          v27 = v181;
          v182 = v140;
        }

        v105 = v182;
        *(v182 + 2) = v104;
        v106 = 16 * v102;
        *&v105[v106 + 32] = v179;
        *&v105[v106 + 40] = v29;
        if (v102)
        {
          break;
        }

        v104 = 1;
        v28 = v105;
LABEL_102:
        v26 = v173;
        if (v29 >= v173)
        {
          goto LABEL_106;
        }
      }

      v107 = (v105 + 32);
      v28 = v105;
      countAndFlagsBits = (v105 + 32);
      while (1)
      {
        v108 = v104 - 1;
        if (v104 >= 4)
        {
          v113 = 16 * v104;
          v114 = *(v107 + 16 * v104 - 56);
          v110 = __OFSUB__(v114, *(v107 + 16 * v104 - 64));
          v115 = v114 - *(v107 + 16 * v104 - 64);
          if (v110)
          {
            BUG();
          }

          v116 = *(v107 + v113 - 40);
          v110 = __OFSUB__(v116, *(v107 + v113 - 48));
          v111 = v116 - *(v107 + v113 - 48);
          v112 = v110;
          if (v110)
          {
            BUG();
          }

          v117 = *&v28[v113 + 8];
          v110 = __OFSUB__(v117, *&v28[16 * v104]);
          v118 = v117 - *&v28[16 * v104];
          if (v110)
          {
            BUG();
          }

          v110 = __OFADD__(v111, v118);
          v119 = v111 + v118;
          if (v110)
          {
            BUG();
          }

          if (v119 >= v115)
          {
            v128 = *(v107 + 16 * v108 + 8);
            v110 = __OFSUB__(v128, *(v107 + 16 * v108));
            v129 = v128 - *(v107 + 16 * v108);
            if (v110)
            {
              BUG();
            }

            if (v111 < v129)
            {
LABEL_92:
              v108 = v104 - 2;
              goto LABEL_93;
            }

            goto LABEL_93;
          }
        }

        else
        {
          if (v104 != 3)
          {
            if (v104 < 2)
            {
              BUG();
            }

            v125 = *&v28[16 * v104 + 8];
            v110 = __OFSUB__(v125, *&v28[16 * v104]);
            v121 = v125 - *&v28[16 * v104];
            v122 = v110;
LABEL_86:
            if (v122)
            {
              BUG();
            }

            v126 = *(v107 + 16 * v108 + 8);
            v110 = __OFSUB__(v126, *(v107 + 16 * v108));
            v127 = v126 - *(v107 + 16 * v108);
            if (v110)
            {
              BUG();
            }

            if (v127 < v121)
            {
              goto LABEL_102;
            }

            goto LABEL_93;
          }

          v109 = *(v28 + 5);
          v110 = __OFSUB__(v109, *(v28 + 4));
          v111 = v109 - *(v28 + 4);
          v112 = v110;
        }

        if (v112)
        {
          BUG();
        }

        v120 = *&v28[16 * v104 + 8];
        v110 = __OFSUB__(v120, *&v28[16 * v104]);
        v121 = v120 - *&v28[16 * v104];
        v122 = v110;
        if (v110)
        {
          BUG();
        }

        v123 = *(v107 + 16 * v108 + 8);
        v110 = __OFSUB__(v123, *(v107 + 16 * v108));
        v124 = v123 - *(v107 + 16 * v108);
        if (v110)
        {
          BUG();
        }

        if (__OFADD__(v124, v121))
        {
          BUG();
        }

        if (v124 + v121 < v111)
        {
          goto LABEL_86;
        }

        if (v111 < v124)
        {
          goto LABEL_92;
        }

LABEL_93:
        if (v108 - 1 >= v104)
        {
          BUG();
        }

        if (!v27)
        {
          BUG();
        }

        v130 = 16 * (v108 - 1);
        v185 = v108;
        v131 = (v107 + 16 * v108);
        v132 = *(v107 + v130);
        v133 = v131[1];
        v134 = *(v180 + 72);
        __dst = v131;
        v135 = v172;
        specialized _merge<A>(low:mid:high:buffer:by:)(v27 + v132 * v134, (v27 + v134 * *v131), (v27 + v133 * v134), v156);
        v172 = v135;
        if (v135)
        {
          LOBYTE(v28) = v182;
          goto LABEL_116;
        }

        if (v133 < v132)
        {
          BUG();
        }

        v136 = (v107 + v130);
        v137 = *(v182 + 2);
        v138 = v185;
        v139 = v185 < v137;
        if (v185 > v137)
        {
          BUG();
        }

        *v136 = v132;
        v136[1] = v133;
        if (!v139)
        {
          BUG();
        }

        v104 = v137 - 1;
        memmove(__dst, __dst + 16, 16 * (v137 - 1 - v138));
        v28 = v182;
        *(v182 + 2) = v137 - 1;
        v139 = v137 <= 2;
        v27 = v181;
        v29 = v183;
        v107 = countAndFlagsBits;
        if (v139)
        {
          goto LABEL_102;
        }
      }
    }

    v28 = _swiftEmptyArrayStorage;
    v104 = _swiftEmptyArrayStorage[2];
LABEL_106:
    if (v104 >= 2)
    {
      v141 = *v153;
      v185 = *v153;
      do
      {
        if (!v141)
        {
          BUG();
        }

        v142 = 16 * (v104 - 1);
        v143 = *&v28[v142 + 40];
        v144 = *(v180 + 72);
        v174 = *&v28[16 * v104];
        v145 = (v141 + v144 * *&v28[v142 + 32]);
        v177 = v143;
        v146 = v172;
        specialized _merge<A>(low:mid:high:buffer:by:)(v141 + v174 * v144, v145, (v141 + v143 * v144), v156);
        v172 = v146;
        if (v146)
        {
          break;
        }

        if (v177 < v174)
        {
          BUG();
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v28);
        v168 = (16 * (v104 - 1));
        if (!isUniquelyReferenced_nonNull_native)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
        }

        v148 = *(v28 + 2);
        v149 = v177;
        if (v104 - 2 >= v148)
        {
          BUG();
        }

        *&v28[16 * v104] = v174;
        *&v28[16 * v104 + 8] = v149;
        v150 = v148 - v104;
        if (v148 < v104)
        {
          BUG();
        }

        v104 = v148 - 1;
        memmove(v168 + v28 + 32, v168 + v28 + 48, 16 * v150);
        *(v28 + 2) = v148 - 1;
        v141 = v185;
      }

      while (v148 > 2);
    }

LABEL_116:
    v28;
    v151 = v159;
    v159[2] = 0;
    return v151;
  }

  return result;
}

unint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v46 = a1;
  v36 = type metadata accessor for URL(0);
  v37 = *(v36 - 8);
  v6 = *(v37 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v38 = &v34;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v53 = *(v9 - 8);
  v10 = v53[8];
  v11 = alloca(v10);
  v12 = alloca(v10);
  v41 = &v34;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v52 = &v34;
  v15 = alloca(v10);
  result = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = alloca(v10);
  v49 = &v34;
  v55 = a3;
  v47 = a2;
  if (a3 != a2)
  {
    v18 = v9;
    v19 = *a4;
    v40 = v53[2];
    v20 = v53[9];
    v21 = v19 + v20 * (v55 - 1);
    v43 = -v20;
    v48 = v20;
    v42 = v19;
    v22 = v19 + v55 * v20;
    v39 = v18;
    do
    {
      v45 = v22;
      v50 = v46;
      v44 = v21;
      do
      {
        v51 = v21;
        v54 = v22;
        v23 = v40;
        v40(v49, v22, v18);
        v23(v52, v21, v18);
        v24 = v38;
        AnnotatedFeature.feature.getter(v18);
        v34 = URL.path(percentEncoded:)(1);
        v35 = *(v37 + 8);
        v25 = v36;
        v35(v24, v36);
        AnnotatedFeature.feature.getter(v18);
        v26 = URL.path(percentEncoded:)(1);
        countAndFlagsBits = v26._countAndFlagsBits;
        object = v26._object;
        v35(v24, v25);
        LOBYTE(v24) = v34._object;
        LOBYTE(countAndFlagsBits) = specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(countAndFlagsBits, object, v34._countAndFlagsBits, v34._object);
        v24;
        v29 = object;
        v18 = v39;
        v29;
        v30 = v53[1];
        v30(v52, v18);
        v30(v49, v18);
        if ((countAndFlagsBits & 1) == 0)
        {
          break;
        }

        if (!v42)
        {
          BUG();
        }

        v31 = v53[4];
        v32 = v41;
        v31(v41, v54, v18);
        swift_arrayInitWithTakeFrontToBack(v54, v51, 1, v18);
        v33 = v51;
        v31(v51, v32, v18);
        v21 = v43 + v33;
        v54 += v43;
        v22 = v54;
        ++v50;
      }

      while (v55 != v50);
      result = v55 + 1;
      v21 = v48 + v44;
      v22 = v48 + v45;
      v55 = result;
    }

    while (result != v47);
  }

  return result;
}

{
  v50 = a1;
  v53 = type metadata accessor for URL(0);
  v43 = *(v53 - 8);
  v6 = *(v43 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v44 = &v40;
  v60 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v61 = *(v60 - 8);
  v9 = v61[8];
  v10 = alloca(v9);
  v11 = alloca(v9);
  v54 = &v40;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v59 = &v40;
  v14 = alloca(v9);
  result = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = alloca(v9);
  v57 = &v40;
  v62 = a3;
  v51 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v45 = v61[2];
    v18 = v61[9];
    v19 = v17 + v18 * (v62 - 1);
    v47 = -v18;
    v52 = v18;
    v46 = v17;
    v20 = v17 + v62 * v18;
    do
    {
      v49 = v20;
      v55 = v20;
      v21 = v50;
      v48 = v19;
      v56 = v19;
      while (1)
      {
        v42 = v21;
        v22 = v60;
        v23 = v45;
        v45(v57, v55, v60);
        v23(v59, v56, v22);
        v24 = v44;
        AnnotatedFeature.feature.getter(v22);
        v25 = URL.path(percentEncoded:)(1);
        countAndFlagsBits = v25._countAndFlagsBits;
        object = v25._object;
        v41 = *(v43 + 8);
        v41(v24, v53);
        AnnotatedFeature.feature.getter(v22);
        v27 = URL.path(percentEncoded:)(1);
        v28 = v27._countAndFlagsBits;
        v29 = v27._object;
        v41(v24, v53);
        if (!(v28 ^ countAndFlagsBits | v29 ^ object))
        {
          break;
        }

        v30 = _stringCompareWithSmolCheck(_:_:expecting:)(countAndFlagsBits, object, v28, v29, 1);
        object;
        v29;
        v31 = v61[1];
        v32 = v60;
        v31(v59, v60);
        v31(v57, v32);
        v33 = (v30 & 1) == 0;
        v34 = v42;
        if (!v33)
        {
          if (!v46)
          {
            BUG();
          }

          countAndFlagsBits = v61[4];
          v35 = v55;
          v36 = v60;
          (countAndFlagsBits)(v54, v55, v60);
          v37 = v56;
          swift_arrayInitWithTakeFrontToBack(v35, v56, 1, v36);
          (countAndFlagsBits)(v37, v54, v36);
          v56 = v47 + v37;
          v21 = v34 + 1;
          v55 = v47 + v35;
          if (v62 != v21)
          {
            continue;
          }
        }

        goto LABEL_10;
      }

      object;
      v29;
      v38 = v61[1];
      v39 = v60;
      v38(v59, v60);
      v38(v57, v39);
LABEL_10:
      result = v62 + 1;
      v19 = v52 + v48;
      v20 = v52 + v49;
      v62 = result;
    }

    while (result != v51);
  }

  return result;
}

char specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v82 = a3;
  v6 = a1;
  v68 = type metadata accessor for URL(0);
  v69 = *(v68 - 8);
  v7 = *(v69 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v70 = &v64;
  v86 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v10 = *(v86 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v80 = &v64;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v76 = &v64;
  v78 = v10;
  v16 = *(v10 + 72);
  if (!v16)
  {
    BUG();
  }

  v17 = a2;
  if (__OFSUB__(a1 - a2, 1) && v16 == -1)
  {
    BUG();
  }

  v18 = &v82[-a2];
  if (&v82[-a2] == 0x8000000000000000 && v16 == -1)
  {
    BUG();
  }

  v19 = (a2 - a1) / v16;
  v87 = *(v10 + 72);
  v79 = a1;
  v66 = a4;
  if (v19 >= v18 / v16)
  {
    v36 = v18 / v16;
    v37 = v17;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v17, v18 / v16, a4);
    v38 = v37;
    v39 = v87 * v36;
    v40 = (v39 + a4);
    v72 = (v39 + a4);
    v79 = v37;
    v41 = v82;
    if (v39 > 0 && a1 < v37)
    {
      v42 = -v87;
      v65 = *(v78 + 16);
      v83 = a1;
      v84 = a4;
      v87 = -v87;
      do
      {
        v77 = v40;
        v82 = v41;
        v85 = &v41[v42];
        v67 = &v40[v42];
        v43 = v38;
        v44 = v65;
        v65(v76, &v40[v42], v86);
        v81 = v43;
        v45 = v43 + v42;
        v71 = v43 + v42;
        v46 = v86;
        v44(v80, v45, v86);
        v47 = v70;
        AnnotatedFeature.feature.getter(v46);
        v73 = URL.path(percentEncoded:)(1);
        v74 = *(v69 + 8);
        v48 = v68;
        v74(v47, v68);
        v49 = v46;
        v50 = v80;
        AnnotatedFeature.feature.getter(v49);
        v51 = URL.path(percentEncoded:)(1);
        countAndFlagsBits = v51._countAndFlagsBits;
        object = v51._object;
        v74(v47, v48);
        LOBYTE(v48) = v73._object;
        LOBYTE(v47) = specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(countAndFlagsBits, object, v73._countAndFlagsBits, v73._object);
        v48;
        object;
        v53 = *(v78 + 8);
        v54 = v50;
        v55 = v86;
        v53(v54, v86);
        v53(v76, v55);
        if (v47)
        {
          v56 = v85;
          if (v85 < v81 && v82 >= v81)
          {
            v57 = v83;
            v58 = v84;
            v42 = v87;
            v59 = v71;
            if (v82 != v81)
            {
              swift_arrayInitWithTakeBackToFront(v85, v71, 1, v86);
              v56 = v85;
            }
          }

          else
          {
            v62 = v85;
            v59 = v71;
            swift_arrayInitWithTakeFrontToBack(v85, v71, 1, v86);
            v56 = v62;
            v57 = v83;
            v58 = v84;
            v42 = v87;
          }

          v79 = v59;
          v40 = v77;
        }

        else
        {
          v59 = v81;
          v40 = v67;
          v72 = v67;
          v56 = v85;
          if (v82 < v77 || v85 >= v77)
          {
            v60 = v85;
            v61 = v67;
            swift_arrayInitWithTakeFrontToBack(v85, v67, 1, v86);
            v56 = v60;
            v40 = v61;
            v57 = v83;
            v58 = v84;
            v42 = v87;
          }

          else
          {
            v57 = v83;
            v58 = v84;
            v42 = v87;
            if (v82 != v77)
            {
              swift_arrayInitWithTakeBackToFront(v85, v67, 1, v86);
              v56 = v85;
              v40 = v67;
            }
          }
        }

        if (v40 <= v58)
        {
          break;
        }

        v38 = v59;
        v41 = v56;
      }

      while (v59 > v57);
    }
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / v16, a4);
    v20 = a2;
    v21 = v87 * v19;
    v74 = (v21 + a4);
    v72 = (v21 + a4);
    if (v21 > 0 && a2 < v82)
    {
      countAndFlagsBits = *(v78 + 16);
      while (1)
      {
        v84 = a4;
        v81 = v20;
        v83 = v6;
        v22 = v86;
        v23 = countAndFlagsBits;
        countAndFlagsBits(v76, v20, v86);
        v23(v80, a4, v22);
        v24 = v70;
        AnnotatedFeature.feature.getter(v22);
        v25 = URL.path(percentEncoded:)(1);
        v85 = v25._countAndFlagsBits;
        v77 = v25._object;
        v73._countAndFlagsBits = *(v69 + 8);
        v26 = v68;
        (v73._countAndFlagsBits)(v24, v68);
        AnnotatedFeature.feature.getter(v22);
        v27 = URL.path(percentEncoded:)(1);
        v73._object = v27._countAndFlagsBits;
        v28 = v27._object;
        (v73._countAndFlagsBits)(v24, v26);
        LOBYTE(v26) = v77;
        LOBYTE(v24) = specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(v73._object, v28, v85, v77);
        v26;
        v28;
        v29 = *(v78 + 8);
        v29(v80, v22);
        v29(v76, v22);
        if (v24)
        {
          v30 = v84;
          v31 = v83;
          v32 = v81 + v87;
          if (v83 < v81 + v87 && v83 >= v81)
          {
            if (v83 != v81)
            {
              swift_arrayInitWithTakeBackToFront(v83, v81, 1, v86);
            }
          }

          else
          {
            swift_arrayInitWithTakeFrontToBack(v83, v81, 1, v86);
          }

          v20 = v32;
          v35 = v30;
          v34 = v87;
        }

        else
        {
          v33 = v81;
          v31 = v83;
          v34 = v87;
          v35 = v84 + v87;
          if (v83 < v84 + v87 && v83 >= v84)
          {
            if (v83 != v84)
            {
              swift_arrayInitWithTakeBackToFront(v83, v84, 1, v86);
            }
          }

          else
          {
            swift_arrayInitWithTakeFrontToBack(v83, v84, 1, v86);
          }

          v66 = v35;
          v20 = v33;
        }

        if (v35 >= v74)
        {
          break;
        }

        v6 = v34 + v31;
        a4 = v35;
        if (v20 >= v82)
        {
          goto LABEL_40;
        }
      }

      v6 = v34 + v31;
LABEL_40:
      v79 = v6;
    }
  }

  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v79, &v66, &v72);
  return 1;
}

char specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, char *a2, char *a3, unint64_t a4)
{
  v93 = a4;
  v96 = a3;
  v5 = a1;
  v83 = type metadata accessor for URL(0);
  v84 = *(v83 - 8);
  v6 = *(v84 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v85 = &v80;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v99 = &v80;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v92 = &v80;
  v16 = alloca(v11);
  v17 = alloca(v11);
  v18 = alloca(v11);
  v19 = alloca(v11);
  v95 = v10;
  v102 = *(v10 + 72);
  if (!v102)
  {
    BUG();
  }

  v20 = a2;
  if (__OFSUB__(a1 - a2, 1) && v102 == -1)
  {
    BUG();
  }

  v21 = v96 - a2;
  if (v96 - a2 == 0x8000000000000000 && v102 == -1)
  {
    BUG();
  }

  v97 = &v80;
  v100 = v9;
  v22 = v102;
  v23 = &a2[-a1] / v102;
  v91 = a1;
  v82 = v93;
  v101 = a2;
  if (v23 >= v21 / v102)
  {
    v50 = v21 / v102;
    v51 = v93;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v20, v21 / v102, v93);
    v52 = v101;
    v53 = v22 * v50;
    v54 = (v51 + v53);
    v87 = (v51 + v53);
    v91 = v101;
    if (v53 <= 0 || a1 >= v101)
    {
      goto LABEL_48;
    }

    v102 = -v102;
    v81 = *(v95 + 16);
    v94 = a1;
    while (1)
    {
      v55 = v102;
      v97 = v54;
      v90 = (v54 + v102);
      v56 = v100;
      v57 = v52;
      v58 = v81;
      v81(v92, v54 + v102, v100);
      v101 = v57;
      v86 = &v57[v55];
      v58(v99, &v57[v55], v56);
      v59 = v85;
      AnnotatedFeature.feature.getter(v56);
      v60 = URL.path(percentEncoded:)(1);
      countAndFlagsBits = v60._countAndFlagsBits;
      object = v60._object;
      v89 = *(v84 + 8);
      v61 = v83;
      v89(v59, v83);
      AnnotatedFeature.feature.getter(v56);
      v62 = URL.path(percentEncoded:)(1);
      v63 = v62._countAndFlagsBits;
      v64 = v59;
      v65 = object;
      v66 = v61;
      v67 = v62._object;
      v89(v64, v66);
      if (v63 ^ countAndFlagsBits | v67 ^ v65)
      {
        LODWORD(countAndFlagsBits) = _stringCompareWithSmolCheck(_:_:expecting:)(countAndFlagsBits, v65, v63, v67, 1);
      }

      else
      {
        LODWORD(countAndFlagsBits) = 0;
      }

      v68 = v96;
      v65;
      v67;
      v69 = v102 + v68;
      v70 = *(v95 + 8);
      v71 = v100;
      v70(v99, v100);
      v70(v92, v71);
      if (countAndFlagsBits)
      {
        v72 = v94;
        v73 = v69;
        if (v69 < v101 && v68 >= v101)
        {
          v74 = v86;
          if (v68 != v101)
          {
            swift_arrayInitWithTakeBackToFront(v73, v86, 1, v100);
          }
        }

        else
        {
          v78 = v69;
          v74 = v86;
          swift_arrayInitWithTakeFrontToBack(v78, v86, 1, v100);
        }

        v91 = v74;
        v54 = v97;
        goto LABEL_42;
      }

      v75 = v69;
      v76 = v90;
      v87 = v90;
      v72 = v94;
      if (v68 < v97 || v69 >= v97)
      {
        break;
      }

      if (v68 != v97)
      {
        v77 = v69;
        swift_arrayInitWithTakeBackToFront(v69, v90, 1, v100);
LABEL_39:
        v74 = v101;
        v54 = v76;
        v73 = v77;
        goto LABEL_42;
      }

      v74 = v101;
      v54 = v90;
      v73 = v75;
LABEL_42:
      if (v54 > v93)
      {
        v52 = v74;
        v96 = v73;
        if (v74 > v72)
        {
          continue;
        }
      }

      goto LABEL_48;
    }

    v77 = v69;
    swift_arrayInitWithTakeFrontToBack(v69, v90, 1, v100);
    goto LABEL_39;
  }

  v99 = &v80;
  v24 = &a2[-a1] / v102;
  v25 = v93;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v24, v93);
  v26 = v101;
  v27 = v22 * v23;
  v28 = v25;
  v89 = (v25 + v27);
  v87 = (v25 + v27);
  v29 = v100;
  if (v27 <= 0 || v101 >= v96)
  {
    goto LABEL_48;
  }

  v90 = *(v95 + 16);
  v30 = v28;
  while (1)
  {
    v94 = v5;
    v101 = v26;
    v31 = v90;
    (v90)(v97, v26, v29);
    v93 = v30;
    (v31)(v99, v30, v29);
    v32 = v85;
    AnnotatedFeature.feature.getter(v29);
    v33 = URL.path(percentEncoded:)(1);
    v92 = v33._countAndFlagsBits;
    countAndFlagsBits = v33._object;
    object = *(v84 + 8);
    v34 = v83;
    (object)(v32, v83);
    AnnotatedFeature.feature.getter(v29);
    v35 = URL.path(percentEncoded:)(1);
    v36 = v35._countAndFlagsBits;
    v37 = v35._object;
    v38 = v34;
    v39 = countAndFlagsBits;
    (object)(v32, v38);
    if (!(v36 ^ v92 | v37 ^ v39))
    {
      v39;
      v37;
      v40 = *(v95 + 8);
      v29 = v100;
      v40(v99, v100);
      v40(v97, v29);
LABEL_15:
      v46 = v94;
      v49 = v102;
      v30 = v93 + v102;
      if (v94 < v93 + v102 && v94 >= v93)
      {
        if (v94 != v93)
        {
          swift_arrayInitWithTakeBackToFront(v94, v93, 1, v29);
        }
      }

      else
      {
        swift_arrayInitWithTakeFrontToBack(v94, v93, 1, v29);
      }

      v82 = v30;
      v26 = v101;
      goto LABEL_22;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)(v92, v39, v36, v37, 1);
    v42 = v100;
    v43 = v41;
    v39;
    v37;
    v44 = *(v95 + 8);
    v44(v99, v42);
    v44(v97, v42);
    v45 = (v43 & 1) == 0;
    v29 = v42;
    if (v45)
    {
      goto LABEL_15;
    }

    v46 = v94;
    v47 = &v101[v102];
    v48 = v93;
    if (v94 < &v101[v102] && v94 >= v101)
    {
      if (v94 != v101)
      {
        swift_arrayInitWithTakeBackToFront(v94, v101, 1, v29);
      }
    }

    else
    {
      swift_arrayInitWithTakeFrontToBack(v94, v101, 1, v29);
    }

    v26 = v47;
    v30 = v48;
    v49 = v102;
LABEL_22:
    if (v30 >= v89)
    {
      break;
    }

    v5 = v49 + v46;
    if (v26 >= v96)
    {
      goto LABEL_47;
    }
  }

  v5 = v49 + v46;
LABEL_47:
  v91 = v5;
LABEL_48:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v91, &v82, &v87);
  return 1;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v7 = *(*(v6 - 8) + 72);
  if (!v7)
  {
    BUG();
  }

  v8 = v5 - v4;
  if (__OFSUB__(-v8, 1) && v7 == -1)
  {
    BUG();
  }

  result = v8 / v7;
  if (v3 < v4 || v3 >= v4 + v7 * result)
  {
    return swift_arrayInitWithTakeFrontToBack(v3, v4, result, v6);
  }

  if (v3 != v4)
  {
    return swift_arrayInitWithTakeBackToFront(v3, v4, result, v6);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Float] and conformance <A> [A](uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [Float]);
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Int, &type metadata for Int);
    lazy protocol witness table cache variable for type Int and conformance Int = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Int, &type metadata for Int);
    lazy protocol witness table cache variable for type Int and conformance Int = result;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLActivityClassifier.LSTMBlock(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = *(a2 + 17);
    v5 = *(a3 + 32);
    v6 = a1 + v5;
    v7 = a2 + v5;
    v8 = type metadata accessor for LSTM(0);
    (*(*(v8 - 8) + 16))(v6, v7, v8);
  }

  return v3;
}

uint64_t destroy for MLActivityClassifier.LSTMBlock(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32) + a1;
  v3 = type metadata accessor for LSTM(0);
  return (*(*(v3 - 8) + 8))(v2, v3);
}

uint64_t initializeWithCopy for MLActivityClassifier.LSTMBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v3 = *(a3 + 32);
  v4 = a1 + v3;
  v5 = v3 + a2;
  v6 = type metadata accessor for LSTM(0);
  (*(*(v6 - 8) + 16))(v4, v5, v6);
  return a1;
}

uint64_t assignWithCopy for MLActivityClassifier.LSTMBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v3 = *(a3 + 32);
  v4 = a1 + v3;
  v5 = v3 + a2;
  v6 = type metadata accessor for LSTM(0);
  (*(*(v6 - 8) + 24))(v4, v5, v6);
  return a1;
}

uint64_t initializeWithTake for MLActivityClassifier.LSTMBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v3 = *(a3 + 32);
  v4 = a1 + v3;
  v5 = v3 + a2;
  v6 = type metadata accessor for LSTM(0);
  (*(*(v6 - 8) + 32))(v4, v5, v6);
  return a1;
}

uint64_t assignWithTake for MLActivityClassifier.LSTMBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v3 = *(a3 + 32);
  v4 = a1 + v3;
  v5 = v3 + a2;
  v6 = type metadata accessor for LSTM(0);
  (*(*(v6 - 8) + 40))(v4, v5, v6);
  return a1;
}

uint64_t sub_F4C6A(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 16);
    result = 0;
    if (v3 >= 2u)
    {
      return ((v3 + 2147483646) & 0x7FFFFFFFu) + 1;
    }
  }

  else
  {
    v6 = type metadata accessor for LSTM(0);
    return __swift_getEnumTagSinglePayload(*(a3 + 32) + a1, a2, v6);
  }

  return result;
}

uint64_t sub_F4CEE(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *(a1 + 16) = a2 + 1;
  }

  else
  {
    v5 = type metadata accessor for LSTM(0);
    return __swift_storeEnumTagSinglePayload(*(a4 + 32) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata completion function for MLActivityClassifier.LSTMBlock(uint64_t a1)
{
  v3[0] = &value witness table for Builtin.Int64 + 64;
  v3[1] = &value witness table for Builtin.Int64 + 64;
  v3[2] = &unk_340CA0;
  v3[3] = &unk_340CA0;
  result = type metadata accessor for LSTM(319);
  if (v2 <= 0x3F)
  {
    v3[4] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 5, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLActivityClassifier.InputBlock(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 24);
    v6 = a1 + v5;
    v7 = a2 + v5;
    v8 = type metadata accessor for LearningPhase(0);
    (*(*(v8 - 8) + 16))(v6, v7, v8);
  }

  return v3;
}

uint64_t destroy for MLActivityClassifier.InputBlock(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24) + a1;
  v3 = type metadata accessor for LearningPhase(0);
  return (*(*(v3 - 8) + 8))(v2, v3);
}

_OWORD *initializeWithCopy for MLActivityClassifier.InputBlock(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 24);
  v4 = a1 + v3;
  v5 = a2 + v3;
  v6 = type metadata accessor for LearningPhase(0);
  (*(*(v6 - 8) + 16))(v4, v5, v6);
  return a1;
}

void *assignWithCopy for MLActivityClassifier.InputBlock(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v3 = *(a3 + 24);
  v4 = a1 + v3;
  v5 = a2 + v3;
  v6 = type metadata accessor for LearningPhase(0);
  (*(*(v6 - 8) + 24))(v4, v5, v6);
  return a1;
}

_OWORD *initializeWithTake for MLActivityClassifier.InputBlock(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 24);
  v4 = a1 + v3;
  v5 = a2 + v3;
  v6 = type metadata accessor for LearningPhase(0);
  (*(*(v6 - 8) + 32))(v4, v5, v6);
  return a1;
}

_OWORD *assignWithTake for MLActivityClassifier.InputBlock(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 24);
  v4 = a1 + v3;
  v5 = a2 + v3;
  v6 = type metadata accessor for LearningPhase(0);
  (*(*(v6 - 8) + 40))(v4, v5, v6);
  return a1;
}

uint64_t sub_F4FA0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 24) + a1;
  v4 = type metadata accessor for LearningPhase(0);
  return __swift_getEnumTagSinglePayload(v3, a2, v4);
}

uint64_t sub_F4FDC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24) + a1;
  v5 = type metadata accessor for LearningPhase(0);
  return __swift_storeEnumTagSinglePayload(v4, a2, a2, v5);
}

uint64_t type metadata completion function for MLActivityClassifier.InputBlock(uint64_t a1)
{
  v3[0] = &value witness table for Builtin.Int64 + 64;
  v3[1] = &value witness table for Builtin.Int64 + 64;
  result = type metadata accessor for LearningPhase(319);
  if (v2 <= 0x3F)
  {
    v3[2] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 3, v3, a1 + 16);
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLActivityClassifier.Model(_OWORD *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v28 = *a2;
    *v3 = *a2;
    v3 = (v28 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v6 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
    v7 = type metadata accessor for LearningPhase(0);
    (*(*(v7 - 8) + 16))(a1 + v6, &a2[v6], v7);
    v8 = a3[5];
    v47 = type metadata accessor for Conv2D(0);
    v49 = *(*(v47 - 8) + 16);
    v49(a1 + v8, &a2[v8], v47);
    v9 = a3[6];
    v41 = type metadata accessor for ReLU(0);
    v43 = *(*(v41 - 8) + 16);
    v43(a1 + v9, &a2[v9], v41);
    v10 = a3[7];
    v45 = type metadata accessor for Dropout(0);
    v46 = *(*(v45 - 8) + 16);
    v46(a1 + v10, &a2[v10], v45);
    v11 = a3[8];
    v12 = a1 + v11;
    v13 = &a2[v11];
    *(a1 + v11) = *&a2[v11];
    *(a1 + v11 + 16) = a2[v11 + 16];
    *(a1 + v11 + 17) = a2[v11 + 17];
    v14 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
    v15 = &v12[v14];
    v16 = &v13[v14];
    v17 = type metadata accessor for LSTM(0);
    (*(*(v17 - 8) + 16))(v15, v16, v17);
    v49(a1 + a3[9], &a2[a3[9]], v47);
    v18 = a3[10];
    v19 = type metadata accessor for BatchNorm(0);
    (*(*(v19 - 8) + 16))(a1 + v18, &a2[v18], v19);
    v43(a1 + a3[11], &a2[a3[11]], v41);
    v46(a1 + a3[12], &a2[a3[12]], v45);
    v49(a1 + a3[13], &a2[a3[13]], v47);
    *(a1 + a3[14]) = *&a2[a3[14]];
    *(a1 + a3[15]) = *&a2[a3[15]];
    v48 = a3;
    v20 = a3[16];
    v21 = a1 + v20;
    v22 = &a2[v20];
    *(a1 + v20) = *&a2[v20];
    *(a1 + v20 + 8) = *&a2[v20 + 8];
    *(a1 + v20 + 16) = a2[v20 + 16];
    *(a1 + v20 + 24) = *&a2[v20 + 24];
    *(a1 + v20 + 40) = *&a2[v20 + 40];
    *(a1 + v20 + 48) = *&a2[v20 + 48];
    *(a1 + v20 + 56) = *&a2[v20 + 56];
    *(a1 + v20 + 64) = *&a2[v20 + 64];
    *(a1 + v20 + 72) = *&a2[v20 + 72];
    v44 = type metadata accessor for MLActivityClassifier.Configuration(0);
    v23 = *(v44 + 44);
    v50 = v21;
    v24 = &v21[v23];
    v42 = v22;
    v25 = &v22[v23];
    v26 = type metadata accessor for DataFrame(0);

    if (__swift_getEnumTagSinglePayload(v25, 1, v26))
    {
      v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(v24, v25, *(*(v27 - 8) + 64));
    }

    else
    {
      (*(*(v26 - 8) + 16))(v24, v25, v26);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v26);
    }

    v29 = v26;
    v30 = *(v44 + 48);
    v31 = &v50[v30];
    v32 = &v42[v30];
    if (__swift_getEnumTagSinglePayload(&v42[v30], 1, v29))
    {
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(v31, v32, *(*(v33 - 8) + 64));
    }

    else
    {
      (*(*(v29 - 8) + 16))(v31, v32, v29);
      __swift_storeEnumTagSinglePayload(v31, 0, 1, v29);
    }

    v34 = v48[17];
    v35 = *&a2[v34];
    *(v3 + v34) = v35;
    v36 = v48[18];
    v37 = (v3 + v36);
    v38 = &a2[v36];
    v39 = *&a2[v36];
    v35;
    if (v39)
    {
      *v37 = v39;
      v37[1] = *(v38 + 1);
      v37[2] = *(v38 + 2);
    }

    else
    {
      v37[2] = *(v38 + 2);
      *v37 = *v38;
    }
  }

  return v3;
}

void destroy for MLActivityClassifier.Model(uint64_t a1, int *a2)
{
  v2 = a1 + *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v3 = type metadata accessor for LearningPhase(0);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = a1 + a2[5];
  v20 = type metadata accessor for Conv2D(0);
  v21 = *(*(v20 - 8) + 8);
  v21(v4, v20);
  v5 = a1 + a2[6];
  v22 = type metadata accessor for ReLU(0);
  v17 = *(*(v22 - 8) + 8);
  v17(v5, v22);
  v6 = a1 + a2[7];
  v18 = type metadata accessor for Dropout(0);
  v19 = *(*(v18 - 8) + 8);
  v19(v6, v18);
  v7 = a1 + a2[8];
  v8 = v7 + *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v9 = type metadata accessor for LSTM(0);
  (*(*(v9 - 8) + 8))(v8, v9);
  v21(a1 + a2[9], v20);
  v10 = a1 + a2[10];
  v11 = type metadata accessor for BatchNorm(0);
  (*(*(v11 - 8) + 8))(v10, v11);
  v17(a1 + a2[11], v22);
  v19(a1 + a2[12], v18);
  v21(a1 + a2[13], v20);
  *(a1 + a2[15]);
  v12 = (a1 + a2[16]);
  v12[5];
  v12[7];
  v12[9];
  v23 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v13 = v12 + *(v23 + 44);
  v14 = type metadata accessor for DataFrame(0);
  if (!__swift_getEnumTagSinglePayload(v13, 1, v14))
  {
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v15 = v12 + *(v23 + 48);
  if (!__swift_getEnumTagSinglePayload(v15, 1, v14))
  {
    (*(*(v14 - 8) + 8))(v15, v14);
  }

  v16 = a2[18];
  if (*(a1 + v16))
  {

    *(a1 + v16 + 16);
  }
}

char *initializeWithCopy for MLActivityClassifier.Model(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v5 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v6 = type metadata accessor for LearningPhase(0);
  (*(*(v6 - 8) + 16))(&a1[v5], &a2[v5], v6);
  v7 = a3[5];
  v43 = type metadata accessor for Conv2D(0);
  v45 = *(*(v43 - 8) + 16);
  v45(&a1[v7], &a2[v7], v43);
  v8 = a3[6];
  v38 = type metadata accessor for ReLU(0);
  v40 = *(*(v38 - 8) + 16);
  v40(&a1[v8], &a2[v8], v38);
  v9 = a3[7];
  __dsta = type metadata accessor for Dropout(0);
  v42 = *(*(__dsta - 1) + 16);
  v42(&a1[v9], &a2[v9], __dsta);
  v10 = a3[8];
  v11 = &a1[v10];
  v12 = &a2[v10];
  *&a1[v10] = *&a2[v10];
  a1[v10 + 16] = a2[v10 + 16];
  a1[v10 + 17] = a2[v10 + 17];
  v13 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v14 = &v11[v13];
  v15 = &v12[v13];
  v16 = type metadata accessor for LSTM(0);
  (*(*(v16 - 8) + 16))(v14, v15, v16);
  v45(&a1[a3[9]], &a2[a3[9]], v43);
  v17 = a3[10];
  v18 = type metadata accessor for BatchNorm(0);
  (*(*(v18 - 8) + 16))(&a1[v17], &a2[v17], v18);
  v40(&a1[a3[11]], &a2[a3[11]], v38);
  v42(&a1[a3[12]], &a2[a3[12]], __dsta);
  v45(&a1[a3[13]], &a2[a3[13]], v43);
  *&a1[a3[14]] = *&a2[a3[14]];
  *&a1[a3[15]] = *&a2[a3[15]];
  v44 = a3;
  v19 = a3[16];
  v20 = &a1[v19];
  v21 = &a2[v19];
  *&a1[v19] = *&a2[v19];
  *&a1[v19 + 8] = *&a2[v19 + 8];
  a1[v19 + 16] = a2[v19 + 16];
  *&a1[v19 + 24] = *&a2[v19 + 24];
  *&a1[v19 + 40] = *&a2[v19 + 40];
  *&a1[v19 + 48] = *&a2[v19 + 48];
  *&a1[v19 + 56] = *&a2[v19 + 56];
  *&a1[v19 + 64] = *&a2[v19 + 64];
  *&a1[v19 + 72] = *&a2[v19 + 72];
  v41 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v22 = *(v41 + 44);
  v46 = v20;
  __dst = &v20[v22];
  v39 = v21;
  v23 = &v21[v22];
  v24 = type metadata accessor for DataFrame(0);

  if (__swift_getEnumTagSinglePayload(v23, 1, v24))
  {
    v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v23, *(*(v25 - 8) + 64));
  }

  else
  {
    (*(*(v24 - 8) + 16))(__dst, v23, v24);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v24);
  }

  v26 = v24;
  v27 = *(v41 + 48);
  v28 = &v46[v27];
  v29 = &v21[v27];
  if (__swift_getEnumTagSinglePayload(&v39[v27], 1, v26))
  {
    v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v28, v29, *(*(v30 - 8) + 64));
  }

  else
  {
    (*(*(v26 - 8) + 16))(v28, v29, v26);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v26);
  }

  v31 = v44[17];
  v32 = *&a2[v31];
  *&a1[v31] = v32;
  v33 = v44[18];
  v34 = &a1[v33];
  v35 = &a2[v33];
  v36 = *&a2[v33];
  v32;
  if (v36)
  {
    *v34 = v36;
    *(v34 + 1) = *(v35 + 1);
    *(v34 + 2) = *(v35 + 2);
  }

  else
  {
    *(v34 + 2) = *(v35 + 2);
    *v34 = *v35;
  }

  return a1;
}

char *assignWithCopy for MLActivityClassifier.Model(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v5 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v6 = type metadata accessor for LearningPhase(0);
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  v7 = a3[5];
  __srca = type metadata accessor for Conv2D(0);
  v59 = *(*(__srca - 1) + 24);
  v59(&a1[v7], &a2[v7], __srca);
  v8 = a3[6];
  v53 = type metadata accessor for ReLU(0);
  v55 = *(*(v53 - 8) + 24);
  v55(&a1[v8], &a2[v8], v53);
  v9 = a3;
  v10 = a3[7];
  __dsta = type metadata accessor for Dropout(0);
  v52 = *(*(__dsta - 1) + 24);
  v52(&a1[v10], &a2[v10], __dsta);
  v11 = a3[8];
  v12 = &a1[v11];
  v13 = &a2[v11];
  *&a1[v11] = *&a2[v11];
  *&a1[v11 + 8] = *&a2[v11 + 8];
  a1[v11 + 16] = a2[v11 + 16];
  a1[v11 + 17] = a2[v11 + 17];
  v14 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v15 = &v12[v14];
  v16 = &v13[v14];
  v17 = type metadata accessor for LSTM(0);
  (*(*(v17 - 8) + 24))(v15, v16, v17);
  v59(&a1[v9[9]], &a2[v9[9]], __srca);
  v18 = v9[10];
  v19 = type metadata accessor for BatchNorm(0);
  (*(*(v19 - 8) + 24))(&a1[v18], &a2[v18], v19);
  v55(&a1[v9[11]], &a2[v9[11]], v53);
  v52(&a1[v9[12]], &a2[v9[12]], __dsta);
  v59(&a1[v9[13]], &a2[v9[13]], __srca);
  *&a1[v9[14]] = *&a2[v9[14]];
  v20 = v9[15];
  v21 = v9;
  v22 = *&a1[v20];
  *&a1[v20] = *&a2[v20];

  v22;
  v54 = v21;
  v23 = v21[16];
  v24 = &a1[v23];
  __src = &a2[v23];
  *&a1[v23] = *&a2[v23];
  *&a1[v23 + 8] = *&a2[v23 + 8];
  a1[v23 + 16] = a2[v23 + 16];
  *&a1[v23 + 24] = *&a2[v23 + 24];
  *&a1[v23 + 32] = *&a2[v23 + 32];
  v25 = *&a1[v23 + 40];
  *&a1[v23 + 40] = *&a2[v23 + 40];

  v25;
  *&a1[v23 + 48] = *&a2[v23 + 48];
  v26 = *&a1[v23 + 56];
  *&a1[v23 + 56] = *&a2[v23 + 56];

  v26;
  *&a1[v23 + 64] = *&a2[v23 + 64];
  v27 = *&a1[v23 + 72];
  *&a1[v23 + 72] = *&a2[v23 + 72];

  v27;
  v56 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v28 = *(v56 + 44);
  v60 = v24;
  v29 = &v24[v28];
  v30 = &__src[v28];
  v31 = type metadata accessor for DataFrame(0);
  __dst = v29;
  LODWORD(v29) = __swift_getEnumTagSinglePayload(v29, 1, v31);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v31);
  if (v29)
  {
    if (EnumTagSinglePayload)
    {
      v33 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v34 = __dst;
LABEL_6:
      memcpy(v34, v30, v33);
      goto LABEL_9;
    }

    (*(*(v31 - 8) + 16))(__dst, v30, v31);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v31);
  }

  else
  {
    v35 = *(v31 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v35 + 8))(__dst, v31);
      v33 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v34 = __dst;
      goto LABEL_6;
    }

    (*(v35 + 24))(__dst, v30, v31);
  }

LABEL_9:
  v36 = *(v56 + 48);
  v37 = &__src[v36];
  v61 = &v60[v36];
  v38 = __swift_getEnumTagSinglePayload(v61, 1, v31);
  v39 = __swift_getEnumTagSinglePayload(v37, 1, v31);
  if (v38)
  {
    if (v39)
    {
      v40 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v41 = v61;
LABEL_14:
      memcpy(v41, v37, v40);
      goto LABEL_17;
    }

    (*(*(v31 - 8) + 16))(v61, v37, v31);
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v31);
  }

  else
  {
    v42 = *(v31 - 8);
    if (v39)
    {
      (*(v42 + 8))(v61, v31);
      v40 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v41 = v61;
      goto LABEL_14;
    }

    (*(v42 + 24))(v61, v37, v31);
  }

LABEL_17:
  v43 = v54[17];
  v44 = *&a1[v43];
  v45 = *&a2[v43];
  *&a1[v43] = v45;
  v45;

  v46 = v54[18];
  v47 = &a1[v46];
  v48 = &a2[v46];
  v49 = *&a2[v46];
  if (*&a1[v46])
  {
    if (v49)
    {
      *v47 = v49;

      *(v47 + 1) = *(v48 + 1);

      v50 = *(v47 + 2);
      *(v47 + 2) = *(v48 + 2);

      v50;
    }

    else
    {
      outlined destroy of ClassificationMetricsContainer(&a1[v46]);
      *v47 = *v48;
      *(v47 + 2) = *(v48 + 2);
    }
  }

  else if (v49)
  {
    *v47 = v49;
    *(v47 + 1) = *(v48 + 1);
    *(v47 + 2) = *(v48 + 2);
  }

  else
  {
    *(v47 + 2) = *(v48 + 2);
    *v47 = *v48;
  }

  return a1;
}

char *initializeWithTake for MLActivityClassifier.Model(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v5 = type metadata accessor for LearningPhase(0);
  (*(*(v5 - 8) + 32))(&a1[v4], &a2[v4], v5);
  v6 = a3[5];
  v36 = type metadata accessor for Conv2D(0);
  v38 = *(*(v36 - 8) + 32);
  v38(&a1[v6], &a2[v6], v36);
  v7 = a3[6];
  v32 = type metadata accessor for ReLU(0);
  v34 = *(*(v32 - 8) + 32);
  v34(&a1[v7], &a2[v7], v32);
  v8 = a3[7];
  __dsta = type metadata accessor for Dropout(0);
  v31 = *(*(__dsta - 1) + 32);
  v31(&a1[v8], &a2[v8], __dsta);
  v9 = a3[8];
  v10 = &a1[v9];
  v11 = &a2[v9];
  *&a1[v9] = *&a2[v9];
  a1[v9 + 16] = a2[v9 + 16];
  a1[v9 + 17] = a2[v9 + 17];
  v12 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v13 = &v10[v12];
  v14 = &v11[v12];
  v15 = type metadata accessor for LSTM(0);
  (*(*(v15 - 8) + 32))(v13, v14, v15);
  v38(&a1[a3[9]], &a2[a3[9]], v36);
  v16 = a3[10];
  v17 = type metadata accessor for BatchNorm(0);
  (*(*(v17 - 8) + 32))(&a1[v16], &a2[v16], v17);
  v34(&a1[a3[11]], &a2[a3[11]], v32);
  v31(&a1[a3[12]], &a2[a3[12]], __dsta);
  v38(&a1[a3[13]], &a2[a3[13]], v36);
  *&a1[a3[14]] = *&a2[a3[14]];
  *&a1[a3[15]] = *&a2[a3[15]];
  v39 = a3;
  v18 = a3[16];
  v19 = &a1[v18];
  v20 = &a2[v18];
  *&a1[v18] = *&a2[v18];
  *&a1[v18 + 8] = *&a2[v18 + 8];
  a1[v18 + 16] = a2[v18 + 16];
  *&a1[v18 + 24] = *&a2[v18 + 24];
  *&a1[v18 + 40] = *&a2[v18 + 40];
  *&a1[v18 + 48] = *&a2[v18 + 48];
  *&a1[v18 + 64] = *&a2[v18 + 64];
  v35 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v21 = *(v35 + 44);
  v37 = v19;
  __dst = &v19[v21];
  v33 = v20;
  v22 = &v20[v21];
  v23 = type metadata accessor for DataFrame(0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23))
  {
    v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v22, *(*(v24 - 8) + 64));
  }

  else
  {
    (*(*(v23 - 8) + 32))(__dst, v22, v23);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v23);
  }

  v25 = *(v35 + 48);
  v26 = &v37[v25];
  v27 = &v20[v25];
  if (__swift_getEnumTagSinglePayload(&v33[v25], 1, v23))
  {
    v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v26, v27, *(*(v28 - 8) + 64));
  }

  else
  {
    (*(*(v23 - 8) + 32))(v26, v27, v23);
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v23);
  }

  *&a1[v39[17]] = *&a2[v39[17]];
  v29 = v39[18];
  *&a1[v29 + 16] = *&a2[v29 + 16];
  *&a1[v29] = *&a2[v29];
  return a1;
}

char *assignWithTake for MLActivityClassifier.Model(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v5 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v6 = type metadata accessor for LearningPhase(0);
  (*(*(v6 - 8) + 40))(&a1[v5], &a2[v5], v6);
  v7 = a3[5];
  v57 = type metadata accessor for Conv2D(0);
  __srca = *(*(v57 - 1) + 40);
  __srca(&a1[v7], &a2[v7], v57);
  v8 = a3[6];
  v51 = type metadata accessor for ReLU(0);
  v53 = *(*(v51 - 8) + 40);
  v53(&a1[v8], &a2[v8], v51);
  v9 = a3[7];
  __dsta = type metadata accessor for Dropout(0);
  v50 = *(*(__dsta - 1) + 40);
  v50(&a1[v9], &a2[v9], __dsta);
  v10 = a3[8];
  v11 = &a1[v10];
  v12 = &a2[v10];
  *&a1[v10] = *&a2[v10];
  a1[v10 + 16] = a2[v10 + 16];
  a1[v10 + 17] = a2[v10 + 17];
  v13 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v14 = &v11[v13];
  v15 = &v12[v13];
  v16 = type metadata accessor for LSTM(0);
  (*(*(v16 - 8) + 40))(v14, v15, v16);
  __srca(&a1[a3[9]], &a2[a3[9]], v57);
  v17 = a3[10];
  v18 = type metadata accessor for BatchNorm(0);
  (*(*(v18 - 8) + 40))(&a1[v17], &a2[v17], v18);
  v53(&a1[a3[11]], &a2[a3[11]], v51);
  v50(&a1[a3[12]], &a2[a3[12]], __dsta);
  __srca(&a1[a3[13]], &a2[a3[13]], v57);
  *&a1[a3[14]] = *&a2[a3[14]];
  v19 = a3[15];
  v20 = *&a1[v19];
  *&a1[v19] = *&a2[v19];
  v20;
  v52 = a3;
  v21 = a3[16];
  v22 = &a1[v21];
  v23 = &a2[v21];
  *&a1[v21] = *&a2[v21];
  *&a1[v21 + 8] = *&a2[v21 + 8];
  a1[v21 + 16] = a2[v21 + 16];
  *&a1[v21 + 24] = *&a2[v21 + 24];
  v24 = *&a1[v21 + 40];
  *&a1[v21 + 40] = *&a2[v21 + 40];
  v24;
  *&a1[v21 + 48] = *&a2[v21 + 48];
  v25 = *&a1[v21 + 56];
  *&a1[v21 + 56] = *&a2[v21 + 56];
  v25;
  *&a1[v21 + 64] = *&a2[v21 + 64];
  v26 = *&a1[v21 + 72];
  *&a1[v21 + 72] = *&a2[v21 + 72];
  v26;
  v54 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v27 = *(v54 + 44);
  v58 = v22;
  v28 = &v22[v27];
  __src = v23;
  v29 = &v23[v27];
  v30 = type metadata accessor for DataFrame(0);
  __dst = v28;
  LODWORD(v28) = __swift_getEnumTagSinglePayload(v28, 1, v30);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v30);
  if (v28)
  {
    if (EnumTagSinglePayload)
    {
      v32 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v33 = __dst;
LABEL_6:
      memcpy(v33, v29, v32);
      goto LABEL_9;
    }

    (*(*(v30 - 8) + 32))(__dst, v29, v30);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v30);
  }

  else
  {
    v34 = *(v30 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v34 + 8))(__dst, v30);
      v32 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v33 = __dst;
      goto LABEL_6;
    }

    (*(v34 + 40))(__dst, v29, v30);
  }

LABEL_9:
  v35 = *(v54 + 48);
  v36 = &__src[v35];
  v59 = &v58[v35];
  v37 = __swift_getEnumTagSinglePayload(v59, 1, v30);
  v38 = __swift_getEnumTagSinglePayload(v36, 1, v30);
  if (v37)
  {
    if (v38)
    {
      v39 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v40 = v59;
LABEL_14:
      memcpy(v40, v36, v39);
      goto LABEL_17;
    }

    (*(*(v30 - 8) + 32))(v59, v36, v30);
    __swift_storeEnumTagSinglePayload(v59, 0, 1, v30);
  }

  else
  {
    v41 = *(v30 - 8);
    if (v38)
    {
      (*(v41 + 8))(v59, v30);
      v39 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v40 = v59;
      goto LABEL_14;
    }

    (*(v41 + 40))(v59, v36, v30);
  }

LABEL_17:
  v42 = v52[17];
  v43 = *&a1[v42];
  *&a1[v42] = *&a2[v42];

  v44 = v52[18];
  v45 = &a1[v44];
  v46 = &a2[v44];
  if (*&a1[v44])
  {
    v47 = *&a2[v44];
    if (v47)
    {
      *v45 = v47;

      *(v45 + 1) = *(v46 + 1);

      v48 = *(v45 + 2);
      *(v45 + 2) = *(v46 + 2);
      v48;
    }

    else
    {
      outlined destroy of ClassificationMetricsContainer(v45);
      *v45 = *v46;
      *(v45 + 2) = *(v46 + 2);
    }
  }

  else
  {
    *(v45 + 2) = *(v46 + 2);
    *v45 = *v46;
  }

  return a1;
}

uint64_t sub_F670A(uint64_t a1, unsigned int a2, int *a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLActivityClassifier.InputBlock(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v5 = type metadata accessor for Conv2D(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = a3[5];
LABEL_17:
    v4 = v6 + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v5 = type metadata accessor for ReLU(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = a3[6];
    goto LABEL_17;
  }

  v5 = type metadata accessor for Dropout(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = a3[7];
    goto LABEL_17;
  }

  v5 = type metadata accessor for MLActivityClassifier.LSTMBlock(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = a3[8];
    goto LABEL_17;
  }

  v5 = type metadata accessor for BatchNorm(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = a3[10];
    goto LABEL_17;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v5 = type metadata accessor for MLActivityClassifier.Configuration(0);
    v6 = a3[16];
    goto LABEL_17;
  }

  result = 0;
  if ((*(a1 + a3[15]) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + a3[15]) >> 1) + 1;
  }

  return result;
}

uint64_t sub_F680F(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLActivityClassifier.InputBlock(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    v7 = type metadata accessor for Conv2D(0);
    if (*(*(v7 - 8) + 84) == a3)
    {
      v8 = a4[5];
    }

    else
    {
      v7 = type metadata accessor for ReLU(0);
      if (*(*(v7 - 8) + 84) == a3)
      {
        v8 = a4[6];
      }

      else
      {
        v7 = type metadata accessor for Dropout(0);
        if (*(*(v7 - 8) + 84) == a3)
        {
          v8 = a4[7];
        }

        else
        {
          v7 = type metadata accessor for MLActivityClassifier.LSTMBlock(0);
          if (*(*(v7 - 8) + 84) == a3)
          {
            v8 = a4[8];
          }

          else
          {
            v7 = type metadata accessor for BatchNorm(0);
            if (*(*(v7 - 8) + 84) == a3)
            {
              v8 = a4[10];
            }

            else
            {
              if (a3 == 0x7FFFFFFF)
              {
                result = a4[15];
                *(a1 + result) = 2 * (a2 - 1);
                return result;
              }

              v7 = type metadata accessor for MLActivityClassifier.Configuration(0);
              v8 = a4[16];
            }
          }
        }
      }
    }

    v6 = v8 + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata completion function for MLActivityClassifier.Model(uint64_t a1)
{
  result = type metadata accessor for MLActivityClassifier.InputBlock(319);
  if (v2 <= 0x3F)
  {
    v12[0] = *(result - 8) + 64;
    result = type metadata accessor for Conv2D(319);
    if (v3 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      v12[1] = v4;
      result = type metadata accessor for ReLU(319);
      if (v5 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        v12[2] = v6;
        result = type metadata accessor for Dropout(319);
        if (v7 <= 0x3F)
        {
          v8 = *(result - 8) + 64;
          v12[3] = v8;
          result = type metadata accessor for MLActivityClassifier.LSTMBlock(319);
          if (v9 <= 0x3F)
          {
            v12[4] = *(result - 8) + 64;
            v12[5] = v4;
            result = type metadata accessor for BatchNorm(319);
            if (v10 <= 0x3F)
            {
              v12[6] = *(result - 8) + 64;
              v12[7] = v6;
              v12[8] = v8;
              v12[9] = v4;
              v12[10] = &value witness table for Builtin.Int64 + 64;
              v12[11] = &value witness table for Builtin.BridgeObject + 64;
              result = type metadata accessor for MLActivityClassifier.Configuration(319);
              if (v11 <= 0x3F)
              {
                v12[12] = *(result - 8) + 64;
                v12[13] = "\b";
                v12[14] = &unk_340CE8;
                swift_initStructMetadata(a1, 256, 15, v12, a1 + 16);
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg5077_s8CreateML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(*(type metadata accessor for FeatureType(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v46 = &v39;
  v7 = type metadata accessor for FeatureDescription(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v47 = &v39;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v14 = *(a1 + 16);
  if (v14)
  {
    v54 = _swiftEmptyArrayStorage;
    v57 = v14;
    v51 = v8;
    v52 = &v39;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v55 = v54;
    v15 = specialized Dictionary.startIndex.getter(a1);
    v17 = a1 + 64;
    v18 = v57 - 1;
    v53 = v2;
    v48 = a1;
    v50 = a1 + 64;
    v49 = v7;
    while (1)
    {
      if (v15 < 0 || v15 >= 1 << *(v3 + 32))
      {
        BUG();
      }

      v19 = *(v17 + 8 * (v15 >> 6));
      if (!_bittest64(&v19, v15))
      {
        BUG();
      }

      if (v16 != *(v3 + 36))
      {
        BUG();
      }

      if (!*(v2 + 16))
      {
        BUG();
      }

      v42 = 1 << v15;
      v41 = v15 >> 6;
      v45 = v16;
      v57 = v18;
      v39 = v15;
      v20 = 16 * v15;
      v21 = *(v3 + 48);
      v22 = *(v3 + 56);
      v40 = *(v21 + v20);
      v23 = *(v21 + v20 + 8);
      v24 = v2;
      v25 = *(v22 + v20 + 8);
      v56 = *(v22 + v20);
      swift_bridgeObjectRetain_n(v23, 2);

      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v56, v25);
      if ((v27 & 1) == 0)
      {
        BUG();
      }

      v43 = v23;
      v28 = v51;
      v56 = *(v51 + 72);
      v29 = *(v24 + 56) + v56 * v26;
      v30 = v47;
      (*(v51 + 16))(v47, v29, v7);
      v44 = v25;
      v31 = v46;
      FeatureDescription.type.getter();
      (*(v28 + 8))(v30, v7);
      v32 = v52;
      v33 = v43;
      FeatureDescription.init(name:type:description:)(v40, v43, v31, 0, 0xE000000000000000);
      v44;
      v33;
      v34 = v55;
      v54 = v55;
      v35 = v55[2];
      if (v55[3] >> 1 <= v35)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v55[3] >= 2uLL, v35 + 1, 1);
        v32 = v52;
        v28 = v51;
        v34 = v54;
      }

      v34[2] = v35 + 1;
      v36 = *(v28 + 80);
      v55 = v34;
      v7 = v49;
      (*(v28 + 32))(v34 + ((v36 + 32) & ~v36) + v56 * v35, v32, v49);
      v3 = v48;
      v37 = -1 << *(v48 + 32);
      if (v39 >= -v37)
      {
        BUG();
      }

      v17 = v50;
      if ((v42 & *(v50 + 8 * v41)) == 0)
      {
        BUG();
      }

      if (v45 != *(v48 + 36))
      {
        BUG();
      }

      v15 = _HashTable.occupiedBucket(after:)(v39, v50, ~v37);
      v18 = v57 - 1;
      if (!v57)
      {
        break;
      }

      v16 = *(v3 + 36);
      v2 = v53;
    }

    v53;
    return v55;
  }

  else
  {
    a2;
    return _swiftEmptyArrayStorage;
  }
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVyS2S_G_20MLModelSpecification18FeatureDescriptionVs5NeverOTg5077_s8CreateML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20ef17ADV5model_SayAI18gH41VG13renamedInputstAN_SDyS2SGtKFAMSSXEfU0_SDySSAKGTf1cn_n(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureDescription?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v40 = &v31;
  v6 = type metadata accessor for FeatureDescription(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *(a1 + 16);
  if (v11)
  {
    v39 = &v31;
    v42 = v7;
    v44 = v6;
    v41 = _swiftEmptyArrayStorage;
    v45 = a2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v45;
    v43 = v41;
    v13 = specialized Dictionary.startIndex.getter(a1);
    v15 = a1 + 64;
    v16 = v11 - 1;
    v37 = a1;
    v38 = a1 + 64;
    while (1)
    {
      if (v13 < 0 || v13 >= 1 << *(v2 + 32))
      {
        BUG();
      }

      v17 = *(v15 + 8 * (v13 >> 6));
      if (!_bittest64(&v17, v13))
      {
        BUG();
      }

      if (v14 != *(v2 + 36))
      {
        BUG();
      }

      v34 = 1 << v13;
      v33 = v13 >> 6;
      v35 = v14;
      v18 = *(v2 + 56);
      v31 = v13;
      v19 = *(v18 + 16 * v13 + 8);
      if (!*(v12 + 16))
      {
        __swift_storeEnumTagSinglePayload(v40, 1, 1, v44);

LABEL_27:
        BUG();
      }

      v36 = v16;
      v20 = *(16 * v13 + v18);
      swift_bridgeObjectRetain_n(v19, 2);
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v19);
      v23 = 1;
      v24 = v40;
      if (v22)
      {
        (*(v42 + 16))(v40, *(v45 + 56) + *(v42 + 72) * v21, v44);
        v23 = 0;
      }

      v25 = v44;
      __swift_storeEnumTagSinglePayload(v24, v23, 1, v44);
      v19;
      if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
      {
        goto LABEL_27;
      }

      v32 = *(v42 + 32);
      v32(v39, v24, v25);
      v19;
      v26 = v43;
      v41 = v43;
      v27 = v43[2];
      v12 = v45;
      if (v43[3] >> 1 <= v27)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v43[3] >= 2uLL, v27 + 1, 1);
        v12 = v45;
        v26 = v41;
      }

      v26[2] = v27 + 1;
      v28 = *(v42 + 80);
      v43 = v26;
      v32((v26 + ((v28 + 32) & ~v28) + *(v42 + 72) * v27), v39, v25);
      v2 = v37;
      v29 = -1 << *(v37 + 32);
      if (v31 >= -v29)
      {
        BUG();
      }

      v15 = v38;
      if ((v34 & *(v38 + 8 * v33)) == 0)
      {
        BUG();
      }

      if (v35 != *(v37 + 36))
      {
        BUG();
      }

      v13 = _HashTable.occupiedBucket(after:)(v31, v38, ~v29);
      v16 = v36 - 1;
      if (!v36)
      {
        break;
      }

      v14 = *(v2 + 36);
    }

    v12;
    return v43;
  }

  else
  {
    a2;
    return _swiftEmptyArrayStorage;
  }
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_20MLModelSpecification13NeuralNetworkV5LayerVs5NeverOTg5077_s8CreateML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de70ADV5model_SayAI18FeatureDescriptionVG13renamedInputstAN_SDyS2SGtKFAI13fgoH25VSS3key_SS5valuet_tXEfU1_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v30 = type metadata accessor for NeuralNetwork.Layer(0);
  v31 = *(v30 - 8);
  v2 = *(v31 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v35 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v37 = _swiftEmptyArrayStorage;
  v6 = specialized Dictionary.startIndex.getter(a1);
  v8 = v7;
  v36 = v1 + 64;
  v9 = v5 - 1;
  v34 = &v24;
  v32 = v1;
  while (1)
  {
    if (v6 < 0 || v6 >= 1 << *(v1 + 32))
    {
      BUG();
    }

    v27 = v9;
    v10 = v6 >> 6;
    v11 = *(v36 + 8 * (v6 >> 6));
    if (!_bittest64(&v11, v6))
    {
      BUG();
    }

    if (v8 != *(v1 + 36))
    {
      BUG();
    }

    v28 = 1 << v6;
    v29 = v8;
    v12 = *(v1 + 48);
    v13 = *(v1 + 56);
    v25 = *(v12 + 16 * v6);
    v14 = *(v12 + 16 * v6 + 8);
    v26 = *(v13 + 16 * v6);
    v15 = v26;
    v16 = *(v13 + 16 * v6 + 8);
    strcpy(v33, "__activation_");
    HIWORD(v33[1]) = -4864;
    v24 = v6;

    v17._countAndFlagsBits = v15;
    v17._object = v16;
    String.append(_:)(v17);
    LOBYTE(v15) = v33[1];
    static NeuralNetwork.Layer.linearActivation(name:inputName:outputName:scale:offset:)(v33[0], v33[1], v25, v14, v26, v16, 1.0, 0.0);
    v16;
    v14;
    v18 = v37;
    v15;
    v35 = v18;
    v19 = v18[2];
    v37 = v18;
    if (v18[3] >> 1 <= v19)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18[3] >= 2uLL, v19 + 1, 1);
      v37 = v35;
    }

    v20 = v37;
    v37[2] = v19 + 1;
    (*(v31 + 32))(&v20[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v19], v34, v30);
    v1 = v32;
    v21 = -1 << *(v32 + 32);
    if (v24 >= -v21)
    {
      BUG();
    }

    if ((v28 & *(v36 + 8 * v10)) == 0)
    {
      BUG();
    }

    if (v29 != *(v32 + 36))
    {
      BUG();
    }

    v22 = _HashTable.occupiedBucket(after:)(v24, v36, ~v21);
    v9 = v27 - 1;
    if (!v27)
    {
      break;
    }

    v6 = v22;
    v8 = *(v1 + 36);
  }

  return v37;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay20MLModelSpecification18FeatureDescriptionVG_AHs5NeverOTg5077_s8CreateML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG40VG13renamedInputstAN_SDyS2SGtKFA2MXEfU2_SDyS2SGSDySSAHGTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureDescription?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v39 = &v35;
  v8 = type metadata accessor for FeatureDescription(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v46 = &v35;
  v13 = *(a1 + 16);
  if (v13)
  {
    v47 = v8;
    v40 = v3;
    v44 = _swiftEmptyArrayStorage;
    v37 = v13;
    v48 = v9;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v45 = v44;
    v38 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v14 = v38 + a1;
    v41 = *(v48 + 72);
    v36 = a2;
    do
    {
      v15 = FeatureDescription.name.getter();
      v17 = v16;
      if (*(a2 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16), (v19 & 1) != 0))
      {
        v20 = *(a2 + 56);
        v21 = 16 * v18;
        v22 = *(v20 + v21);
        v42 = *(v20 + v21 + 8);

        v17;
        v23 = v43;
        v24 = 1;
        v25 = v39;
        if (*(v43 + 16))
        {
          v26 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v42);
          v24 = 1;
          if (v27)
          {
            (*(v48 + 16))(v25, *(v23 + 56) + v41 * v26, v47);
            v24 = 0;
          }
        }

        v28 = v47;
        __swift_storeEnumTagSinglePayload(v25, v24, 1, v47);
        v42;
        if (__swift_getEnumTagSinglePayload(v25, 1, v28) == 1)
        {
          BUG();
        }

        (*(v48 + 32))(v46, v25, v28);
      }

      else
      {
        v17;
        v28 = v47;
        (*(v48 + 16))(v46, v14, v47);
      }

      v29 = v45;
      v44 = v45;
      v30 = v45[2];
      if (v45[3] >> 1 <= v30)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v45[3] >= 2uLL, v30 + 1, 1);
        v28 = v47;
        v29 = v44;
      }

      v29[2] = v30 + 1;
      v45 = v29;
      v31 = v41;
      (*(v48 + 32))(v29 + v38 + v41 * v30, v46, v28);
      v14 += v31;
      v32 = v37-- == 1;
      a2 = v36;
    }

    while (!v32);
    v36;
    v33 = v45;
  }

  else
  {
    a2;
    v33 = _swiftEmptyArrayStorage;
  }

  v43;
  return v33;
}

char specialized Sequence.allSatisfy(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, char *), uint64_t a3)
{
  v29 = a3;
  v30 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: String, value: Tensor));
  v3 = *(*(v31 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v32 = v25;
  specialized _NativeDictionary.makeIterator()(a1);
  v36 = v25[1];
  v35 = v25[2];
  v6 = v25[4];
  v7 = v25[5];
  v34 = (v25[3] + 64) >> 6;

  while (1)
  {
    if (v7)
    {
LABEL_3:
      v8 = v6;
      goto LABEL_20;
    }

    v9 = v6 + 1;
    if (__OFADD__(1, v6))
    {
      BUG();
    }

    if (v9 >= v34)
    {
      goto LABEL_26;
    }

    v7 = *(v35 + 8 * v9);
    if (v7)
    {
      v8 = v6 + 1;
      goto LABEL_20;
    }

    v8 = v6 + 2;
    if (v6 + 2 >= v34)
    {
      goto LABEL_26;
    }

    v7 = *(v35 + 8 * v9 + 8);
    if (!v7)
    {
      v8 = v6 + 3;
      if (v6 + 3 >= v34)
      {
        goto LABEL_26;
      }

      v7 = *(v35 + 8 * v9 + 16);
      if (!v7)
      {
        v8 = v6 + 4;
        if (v6 + 4 >= v34)
        {
          goto LABEL_26;
        }

        v7 = *(v35 + 8 * v9 + 24);
        if (!v7)
        {
          v8 = v6 + 5;
          if (v6 + 5 >= v34)
          {
            goto LABEL_26;
          }

          v7 = *(v35 + 8 * v9 + 32);
          if (!v7)
          {
            v8 = v6 + 6;
            if (v6 + 6 >= v34)
            {
              goto LABEL_26;
            }

            v7 = *(v35 + 8 * v9 + 40);
            if (!v7)
            {
              v8 = v6 + 7;
              if (v6 + 7 >= v34)
              {
                goto LABEL_26;
              }

              v7 = *(v35 + 8 * v9 + 48);
              if (!v7)
              {
                break;
              }
            }
          }
        }
      }
    }

LABEL_20:
    _BitScanForward64(&v10, v7);
    v26 = (v7 - 1) & v7;
    v27 = v8;
    v11 = v10 | (v8 << 6);
    v12 = v36;
    v13 = *(v36 + 48);
    v14 = *(v13 + 16 * v11);
    v15 = *(v13 + 16 * v11 + 8);
    v28 = v15;
    v16 = v32;
    *v32 = v14;
    v16[1] = v15;
    v17 = v31;
    v18 = v16 + *(v31 + 48);
    v33 = *(v12 + 56);
    v19 = type metadata accessor for Tensor(0);
    (*(*(v19 - 8) + 16))(v18, v33 + *(*(v19 - 8) + 72) * v11, v19);
    v33 = *v16;
    v20 = v16[1];
    v21 = v16 + *(v17 + 48);

    LOBYTE(v21) = v30(v33, v20, v21);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v16, &demangling cache variable for type metadata for (key: String, value: Tensor));
    v6 = v27;
    v22 = (v21 & 1) == 0;
    v7 = v26;
    if (v22)
    {

      return 0;
    }
  }

  v23 = v6 + 8;
  while (v23 < v34)
  {
    v7 = *(v35 + 8 * v23++);
    if (v7)
    {
      v6 = v23 - 1;
      goto LABEL_3;
    }
  }

LABEL_26:

  return 1;
}

uint64_t specialized Sequence.first(where:)(uint64_t a1)
{
  v33 = v1;
  v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: String, value: Tensor));
  v2 = *(*(v34 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v30 = v27;
  v5 = alloca(v2);
  v6 = alloca(v2);
  v31 = v27;
  specialized _NativeDictionary.makeIterator()(a1);
  v35 = v27[0];
  v37 = v27[1];
  v7 = v27[3];
  v8 = v27[4];
  v36 = (v27[2] + 64) >> 6;

  while (1)
  {
    if (v8)
    {
LABEL_3:
      v9 = v7;
    }

    else
    {
      v10 = v7 + 1;
      if (__OFADD__(1, v7))
      {
        BUG();
      }

      if (v10 >= v36)
      {
        goto LABEL_27;
      }

      v8 = *(v37 + 8 * v10);
      if (v8)
      {
        v9 = v7 + 1;
      }

      else
      {
        v9 = v7 + 2;
        if (v7 + 2 >= v36)
        {
          goto LABEL_27;
        }

        v8 = *(v37 + 8 * v10 + 8);
        if (!v8)
        {
          v9 = v7 + 3;
          if (v7 + 3 >= v36)
          {
            goto LABEL_27;
          }

          v8 = *(v37 + 8 * v10 + 16);
          if (!v8)
          {
            v9 = v7 + 4;
            if (v7 + 4 >= v36)
            {
              goto LABEL_27;
            }

            v8 = *(v37 + 8 * v10 + 24);
            if (!v8)
            {
              v9 = v7 + 5;
              if (v7 + 5 >= v36)
              {
                goto LABEL_27;
              }

              v8 = *(v37 + 8 * v10 + 32);
              if (!v8)
              {
                v9 = v7 + 6;
                if (v7 + 6 >= v36)
                {
                  goto LABEL_27;
                }

                v8 = *(v37 + 8 * v10 + 40);
                if (!v8)
                {
                  v9 = v7 + 7;
                  if (v7 + 7 >= v36)
                  {
                    goto LABEL_27;
                  }

                  v8 = *(v37 + 8 * v10 + 48);
                  if (!v8)
                  {
                    v22 = v7 + 8;
                    while (v22 < v36)
                    {
                      v8 = *(v37 + 8 * v22++);
                      if (v8)
                      {
                        v7 = v22 - 1;
                        goto LABEL_3;
                      }
                    }

LABEL_27:

                    v23 = v33;
                    v24 = 1;
                    return __swift_storeEnumTagSinglePayload(v23, v24, 1, v34);
                  }
                }
              }
            }
          }
        }
      }
    }

    v28 = v8;
    _BitScanForward64(&v11, v8);
    v29 = v9;
    v12 = v11 | (v9 << 6);
    v13 = v35;
    v14 = *(v35 + 48);
    v15 = *(v14 + 16 * v12);
    v16 = *(v14 + 16 * v12 + 8);
    v17 = v31;
    *v31 = v15;
    v32 = v16;
    *(v17 + 8) = v16;
    v18 = v17 + *(v34 + 48);
    v19 = *(v13 + 56);
    v20 = type metadata accessor for Tensor(0);
    (*(*(v20 - 8) + 16))(v18, v19 + *(*(v20 - 8) + 72) * v12, v20);
    v21 = v30;
    outlined init with take of DataFrame?(v17, v30, &demangling cache variable for type metadata for (key: String, value: Tensor));
    if (*v21 ^ 0x6E496574617473 | v21[1] ^ 0xE700000000000000)
    {
      if ((_stringCompareWithSmolCheck(_:_:expecting:)(*v21, v21[1], 0x6E496574617473, 0xE700000000000000, 0) & 1) == 0)
      {
        break;
      }
    }

    v8 = (v28 - 1) & v28;

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for (key: String, value: Tensor));
    v7 = v29;
  }

  v25 = v33;
  outlined init with take of DataFrame?(v21, v33, &demangling cache variable for type metadata for (key: String, value: Tensor));
  v23 = v25;
  v24 = 0;
  return __swift_storeEnumTagSinglePayload(v23, v24, 1, v34);
}

uint64_t specialized Sequence.contains(where:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v13 = a3;

  for (i = a1; ; v3 = i)
  {
    if (__OFADD__(1, i++))
    {
      BUG();
    }

    v14 = v3;
    v6 = String.Iterator.next()();
    object = v6.value._object;
    if (!v6.value._object)
    {
      break;
    }

    countAndFlagsBits = v6.value._countAndFlagsBits;
    if (v6.value._countAndFlagsBits ^ 0xA0D | v6.value._object ^ 0xE200000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(v6.value._countAndFlagsBits, v6.value._object, 2573, 0xE200000000000000, 0) & 1) == 0)
    {
      if ((Character._isSingleScalar.getter(countAndFlagsBits, object) & 1) == 0)
      {
        goto LABEL_19;
      }

      v9 = specialized Collection.first.getter(countAndFlagsBits, object);
      if ((v9 & 0x100000000) != 0)
      {
        BUG();
      }

      if ((v9 & 0xFFFFFF80) != 0)
      {
LABEL_19:
        object;
        break;
      }

      v10 = specialized Collection.first.getter(countAndFlagsBits, object);
      if ((v10 & 0x100000000) != 0)
      {
        BUG();
      }

      if ((v10 & 0xFFFFFF00) != 0)
      {
        BUG();
      }
    }

    if ((Character.isLetter.getter(countAndFlagsBits, object) & 1) != 0 || v14 > 0 && (Character.isNumber.getter(countAndFlagsBits, object) & 1) != 0 || !(countAndFlagsBits ^ 0x5F | object ^ 0xE100000000000000))
    {
      object;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)(countAndFlagsBits, object, 95, 0xE100000000000000, 0);
      object;
      if ((v11 & 1) == 0)
      {
        break;
      }
    }
  }

  LOBYTE(object) = object != 0;
  v13;
  return object;
}

uint64_t MLActivityClassifier.InputBlock.forward(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v24[1] = v2;
  v5 = type metadata accessor for TensorShape(0);
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = alloca(v6);
  v10 = alloca(v6);
  v24[0] = a1;
  Tensor.shape.getter(0, a2, v11);
  v12 = TensorShape.dimensions.getter();
  v13 = *(v12 + 16);
  v12;
  if (v13 == 1 && (type metadata accessor for MLActivityClassifier.InputBlock(0), (LearningPhase.isTraining.getter() & 1) == 0))
  {
    v17 = TensorShape.subscript.getter(0);
    v18 = v4[1];
    v19 = v18 * *v4;
    if (!is_mul_ok(v18, *v4))
    {
      BUG();
    }

    if (!v19)
    {
      BUG();
    }

    v27 = *v4;
    v26 = v18;
    if (!(v17 ^ 0x8000000000000000 | ~v19))
    {
      BUG();
    }

    v20 = v17 / v19;
    v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v15 = swift_allocObject(v21, 64, 7);
    v15[2] = 4;
    v15[3] = 8;
    v15[4] = v20;
    v15[5] = v27;
    v15[6] = 1;
    v16 = v26;
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v15 = swift_allocObject(v14, 64, 7);
    v15[2] = 4;
    v15[3] = 8;
    v15[4] = TensorShape.subscript.getter(0);
    v15[5] = TensorShape.subscript.getter(1);
    v15[6] = 1;
    v16 = TensorShape.subscript.getter(2);
  }

  v15[7] = v16;
  TensorShape.init(_:)(v15);
  Tensor.reshaped(to:)(v24);
  v22 = *(v25 + 8);
  v22(v24, v5);
  return (v22)(v24, v5);
}

uint64_t protocol witness for LearningPhaseSensitive.learningPhase.getter in conformance MLActivityClassifier.InputBlock(uint64_t a1)
{
  v3 = v1;
  v4 = v2 + *(a1 + 24);
  v5 = type metadata accessor for LearningPhase(0);
  return (*(*(v5 - 8) + 16))(v3, v4, v5);
}

uint64_t protocol witness for LearningPhaseSensitive.learningPhase.setter in conformance MLActivityClassifier.InputBlock(uint64_t a1, uint64_t a2)
{
  v3 = v2 + *(a2 + 24);
  v4 = type metadata accessor for LearningPhase(0);
  return (*(*(v4 - 8) + 40))(v3, a1, v4);
}

uint64_t MLActivityClassifier.LSTMBlock.forward(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = v4;
  v41 = a4;
  v31 = a2;
  v32 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RecurrentLayerInput<LSTM.State>);
  v35 = *(v34 - 8);
  v6 = *(v35 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v38 = v30;
  v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RecurrentLayerOutput<LSTM.State>);
  v33 = *(v36 - 8);
  v9 = *(v33 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v37 = v30;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v40 = v30;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v18 = alloca(v13);
  v19 = alloca(v13);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a3, v30, &demangling cache variable for type metadata for LSTM.State?);
  v20 = &v30[*(v12 + 48)];
  v42 = type metadata accessor for Tensor(0);
  v43 = *(v42 - 8);
  (*(v43 + 16))(v20, v41, v42);
  v44 += *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v39 = v30;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, v30, &demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v21 = &v30[*(v12 + 48)];
  v22 = v40;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, v40, &demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v23 = v22 + *(v12 + 48);
  v24 = type metadata accessor for LSTM.State(0);
  v25 = v38;
  RecurrentLayerInput.init(input:state:)(v21, v22, v24);
  (*(v43 + 8))(v23, v42);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for LSTM.State?);
  v26 = type metadata accessor for LSTM(0);
  v27 = v37;
  Layer.callAsFunction(_:)(v25, v26, &protocol witness table for LSTM);
  (*(v35 + 8))(v25, v34);
  v28 = v36;
  RecurrentLayerOutput.state.getter(v36);
  RecurrentLayerOutput.output.getter(v28);
  (*(v33 + 8))(v27, v28);
  return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v39, &demangling cache variable for type metadata for (LSTM.State?, Tensor));
}

uint64_t MLActivityClassifier.Model.init(windowSize:features:target:classLabels:randomSeed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v18 = a4;
  v19 = a3;
  v15 = v7;
  v20 = a2;
  v16 = a6;
  v17 = a5;
  v21 = a1;
  v8 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = &v15 + *(v8 + 44);
  v13 = type metadata accessor for DataFrame(0);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  __swift_storeEnumTagSinglePayload(&v15 + *(v8 + 48), 1, 1, v13);
  v15 = 10;
  v16 = 0;
  LOBYTE(v17) = 0;
  v18 = 32;
  v19 = v21;
  v22 = 32;
  v23 = 0x5F6E6F6973736573;
  v24 = 0xEA00000000006469;
  return MLActivityClassifier.Model.init(classLabels:randomSeed:trainingConfiguration:)(v17, 0, a7 & 1, &v15);
}

uint64_t MLActivityClassifier.Model.init(classLabels:randomSeed:trainingConfiguration:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v52 = a3;
  v49 = a2;
  v45 = a1;
  v6 = v4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v50 = &v40;
  v10 = type metadata accessor for MLActivityClassifier.Model(0);
  v48 = v10;
  *(v6 + v10[17]) = 0;
  v11 = v10[18];
  *(v6 + v11) = 0;
  *(v6 + v11 + 16) = 0;
  *(v6 + v10[15]) = a1;
  v41 = a4;
  v12 = *(a4 + 32);
  v13 = *(*(a4 + 40) + 16);
  v14 = v6 + *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v15 = enum case for LearningPhase.automatic(_:);
  v16 = type metadata accessor for LearningPhase(0);
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  *v6 = v13;
  v6[1] = v12;
  v17 = type metadata accessor for ParameterInitializer(0);
  v47 = type metadata accessor for ComputeDevice(0);
  v18 = v50;
  __swift_storeEnumTagSinglePayload(v50, 1, 1, v47);
  LOBYTE(v15) = v52 & 1;

  v52 = v15;
  v46 = v17;
  v19 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(v49, v15, &type metadata for Float, &protocol witness table for Float, v18);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for ComputeDevice?);
  v20 = static ParameterInitializer.zeros.getter(v18);
  v21 = v48;
  Conv2D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)(64, 1, v12, 1, v12, 0, 0, 1, 1, 1, v19, v20);
  ReLU.init()();
  v22 = v49;
  LODWORD(v12) = v52;
  Dropout.init(probability:seed:)(v49, v52, 0.2);
  v23 = v21[8];
  v42 = v6;
  v51 = v6 + v23;
  *(v6 + v23) = 200;
  *(v6 + v23 + 8) = 64;
  *(v6 + v23 + 16) = 256;
  v24 = v50;
  v25 = v47;
  __swift_storeEnumTagSinglePayload(v50, 1, 1, v47);
  v26 = v12;
  v27 = v24;
  v43 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(v22, v26, &type metadata for Float, &protocol witness table for Float, v24);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v24, &demangling cache variable for type metadata for ComputeDevice?);
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
  LODWORD(v24) = v52;
  v44 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(v22, v52, &type metadata for Float, &protocol witness table for Float, v27);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, &demangling cache variable for type metadata for ComputeDevice?);
  v28 = static ParameterInitializer.zeros.getter(v27);
  type metadata accessor for MLActivityClassifier.LSTMBlock(0);
  LSTM.init(unitCount:recurrentWeightInitializer:inputWeightInitializer:biasInitializer:isBidirectional:)(200, v43, v44, v28, 0);
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v47);
  v29 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(v22, v24, &type metadata for Float, &protocol witness table for Float, v27);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, &demangling cache variable for type metadata for ComputeDevice?);
  v30 = static ParameterInitializer.zeros.getter(v27);
  v31 = v42;
  Conv2D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)(128, 1, 1, 1, 1, 0, 0, 1, 1, 1, v29, v30);
  v32 = static ParameterInitializer.zeros.getter(128);
  v33 = static ParameterInitializer.ones.getter();
  BatchNorm.init(offsetInitializer:scaleInitializer:momentum:epsilon:)(v32, v33, 0.89999998, 0.001);
  ReLU.init()();
  v34 = v49;
  LODWORD(v21) = v52;
  Dropout.init(probability:seed:)(v49, v52, 0.5);
  v51 = *(v45 + 16);
  v45;
  v35 = v50;
  __swift_storeEnumTagSinglePayload(v50, 1, 1, v47);
  v36 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(v34, v21, &type metadata for Float, &protocol witness table for Float, v35);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for ComputeDevice?);
  v37 = static ParameterInitializer.zeros.getter(v35);
  v38 = v48;
  Conv2D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)(v51, 1, 1, 1, 1, 0, 0, 1, 1, 1, v36, v37);
  *(v31 + v38[14]) = Softmax.init(axis:)(1);
  return outlined init with take of MLActivityClassifier.Configuration(v41, v31 + v38[16]);
}

uint64_t MLActivityClassifier.Model.forward(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v92 = v4;
  v95 = a4;
  v94 = a3;
  v77 = a2;
  v75 = a1;
  v84 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State, Tensor));
  v5 = *(*(v84 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v76 = v73;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v86 = v73;
  v10 = type metadata accessor for Tensor(0);
  v11 = *(v10 - 8);
  v91 = v10;
  v12 = *(v11 + 64);
  v93 = v11;
  v13 = alloca(v12);
  v14 = alloca(v12);
  v87 = v73;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v90 = v73;
  v17 = alloca(v12);
  v18 = alloca(v12);
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v20 = *(v19 - 8);
  v21 = v19;
  v89 = v19;
  v22 = *(v20 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v80 = v73;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v81 = v73;
  v27 = alloca(v22);
  v28 = alloca(v22);
  v83 = v73;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v94, v73, &demangling cache variable for type metadata for LSTM.State?);
  v29 = &v73[*(v21 + 48)];
  v82 = *(v11 + 16);
  v82(v29, v95, v10);
  v30 = type metadata accessor for MLActivityClassifier.InputBlock(0);
  v31 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.InputBlock and conformance MLActivityClassifier.InputBlock, type metadata accessor for MLActivityClassifier.InputBlock, &protocol conformance descriptor for MLActivityClassifier.InputBlock);
  Layer.callAsFunction(_:)(v29, v30, v31);
  v94 = type metadata accessor for MLActivityClassifier.Model(0);
  v85 = type metadata accessor for Conv2D(0);
  v32 = v90;
  Layer.callAsFunction(_:)(v73, v85, &protocol witness table for Conv2D);
  v33 = v93;
  v95 = *(v93 + 8);
  v34 = v91;
  v95(v73, v91);
  v93 = *(v33 + 32);
  (v93)(v73, v32, v34);
  v78 = type metadata accessor for ReLU(0);
  Layer.callAsFunction(_:)(v73, v78, &protocol witness table for ReLU);
  v35 = v95;
  v95(v73, v34);
  (v93)(v73, v32, v34);
  v79 = type metadata accessor for Dropout(0);
  Layer.callAsFunction(_:)(v73, v79, &protocol witness table for Dropout);
  v36 = v91;
  v35(v73, v91);
  v88 = v73;
  v37 = v32;
  v38 = v93;
  (v93)(v73, v32, v36);
  v39 = v87;
  Tensor.squeezingShape(at:)(&outlined read-only object #0 of MLActivityClassifier.Model.forward(_:));
  Tensor.transposed(permutation:)(&outlined read-only object #1 of MLActivityClassifier.Model.forward(_:));
  v40 = v39;
  v41 = v91;
  v42 = v95;
  v95(v40, v91);
  v43 = v88;
  v42(v88, v41);
  v38(v43, v37, v41);
  v44 = v81;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v83, v81, &demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v45 = *(v89 + 48);
  v89 = v44 + v45;
  v46 = v80;
  v47 = &v80[v45];
  outlined init with take of DataFrame?(v44, v80, &demangling cache variable for type metadata for LSTM.State?);
  v82(v47, v88, v41);
  v48 = type metadata accessor for MLActivityClassifier.LSTMBlock(0);
  v49 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.LSTMBlock and conformance MLActivityClassifier.LSTMBlock, type metadata accessor for MLActivityClassifier.LSTMBlock, &protocol conformance descriptor for MLActivityClassifier.LSTMBlock);
  Layer.callAsFunction(_:)(v46, v48, v49);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v46, &demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v50 = v95;
  v95(v89, v41);
  v51 = v87;
  Tensor.transposed(permutation:)(&outlined read-only object #2 of MLActivityClassifier.Model.forward(_:));
  v52 = v90;
  Tensor.expandingShape(at:)(&outlined read-only object #3 of MLActivityClassifier.Model.forward(_:));
  v53 = v51;
  v54 = v50;
  v50(v53, v41);
  v55 = v88;
  v54(v88, v41);
  (v93)(v55, v52, v41);
  Layer.callAsFunction(_:)(v55, v85, &protocol witness table for Conv2D);
  v56 = v91;
  v95(v55, v91);
  (v93)(v55, v90, v56);
  v57 = type metadata accessor for BatchNorm(0);
  v58 = v90;
  Layer.callAsFunction(_:)(v55, v57, &protocol witness table for BatchNorm);
  v59 = v91;
  v95(v55, v91);
  v60 = v93;
  (v93)(v55, v58, v59);
  Layer.callAsFunction(_:)(v55, v78, &protocol witness table for ReLU);
  v61 = v95;
  v95(v55, v59);
  v60(v55, v90, v59);
  Layer.callAsFunction(_:)(v55, v79, &protocol witness table for Dropout);
  v62 = v91;
  v61(v55, v91);
  v63 = v90;
  v64 = v62;
  v65 = v93;
  (v93)(v55, v90, v64);
  Layer.callAsFunction(_:)(v55, v85, &protocol witness table for Conv2D);
  v66 = v91;
  v95(v55, v91);
  v65(v55, v63, v66);
  v74 = *(v92 + *(v94 + 56));
  Layer.callAsFunction(_:)(v55, &type metadata for Softmax, &protocol witness table for Softmax);
  v67 = v55;
  v68 = v95;
  v95(v67, v66);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v83, &demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v69 = v76;
  outlined init with take of DataFrame?(v86, v76, &demangling cache variable for type metadata for (LSTM.State, Tensor));
  v70 = v69 + *(v84 + 48);
  v71 = type metadata accessor for LSTM.State(0);
  (*(*(v71 - 8) + 32))(v75, v69, v71);
  return v68(v70, v66);
}

uint64_t protocol witness for Layer.forward(_:) in conformance MLActivityClassifier.LSTMBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = v4;
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State?, Tensor)) + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State, Tensor));
  return a4(v6, v6 + *(v8 + 48), a1, v7);
}

uint64_t MLActivityClassifier.Model.MLPackageRepresentation.forward(_:)(uint64_t a1)
{
  v161 = v1;
  v155 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v2 = *(*(v155 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v154 = v134;
  v145 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State, Tensor));
  v5 = *(*(v145 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v136 = v134;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v146 = v134;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v149 = v134;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ScalarType?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v147 = v134;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v157 = v134;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v167 = v134;
  v165 = type metadata accessor for Tensor(0);
  v164 = *(v165 - 8);
  v20 = *(v164 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v158 = v134;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v153 = v134;
  v25 = alloca(v20);
  v26 = alloca(v20);
  v160 = v134;
  v27 = alloca(v20);
  v28 = alloca(v20);
  v163 = v134;
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LSTM.State?) - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v137 = v134;
  v32 = alloca(v29);
  v33 = alloca(v29);
  v159 = v134;
  v162 = type metadata accessor for TensorShape(0);
  v150 = *(v162 - 8);
  v34 = *(v150 + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v168 = v134;
  v37 = alloca(v34);
  v38 = alloca(v34);
  v144 = v134;
  v39 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: String, value: Tensor)?) - 8) + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v42 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v43 = alloca(v42);
  v44 = alloca(v42);
  v45 = alloca(v42);
  v46 = alloca(v42);
  v152 = v134;
  v148 = a1;

  v166 = a1;
  specialized Sequence.first(where:)(a1);
  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: String, value: Tensor));
  if (__swift_getEnumTagSinglePayload(v134, 1, v47) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v134, &demangling cache variable for type metadata for (key: String, value: Tensor)?);
    v48 = 1;
    v49 = v152;
  }

  else
  {
    v50 = v135;
    v135;
    v51 = &v134[*(v47 + 48)];
    v49 = v152;
    Tensor.shape.getter(v50, 1, v52);
    (*(v164 + 8))(v51, v165);
    v48 = 0;
  }

  v53 = v162;
  __swift_storeEnumTagSinglePayload(v49, v48, 1, v162);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v49, v134, &demangling cache variable for type metadata for TensorShape?);
  if (__swift_getEnumTagSinglePayload(v134, 1, v53) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v134, &demangling cache variable for type metadata for TensorShape?);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0x7369207475706E49, 0xEE007974706D6520, "CreateML/MLActivityClassifier.Model.swift", 41, 2, 294, 0);
    goto LABEL_23;
  }

  v54 = v144;
  (*(v150 + 32))(v144, v134, v53);
  v55 = TensorShape.dimensions.getter();
  v56 = *(v55 + 16);
  v55;
  if (v56 != 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000018, ("ActivityClassifer" + 0x8000000000000000), "CreateML/MLActivityClassifier.Model.swift", 41, 2, 297, 0);
    goto LABEL_23;
  }

  v57 = alloca(24);
  v58 = alloca(32);
  v136 = v54;
  v59 = v166;

  v60 = specialized Sequence.allSatisfy(_:)(v59, partial apply for closure #2 in MLActivityClassifier.Model.MLPackageRepresentation.forward(_:), v134);
  v156 = 0;
  v59;
  if ((v60 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000027, ("Inputs should be vectors" + 0x8000000000000000), "CreateML/MLActivityClassifier.Model.swift", 41, 2, 302, 0);
    goto LABEL_23;
  }

  v61 = type metadata accessor for LSTM.State(0);
  __swift_storeEnumTagSinglePayload(v159, 1, 1, v61);
  v62 = v167;
  specialized Dictionary.subscript.getter(0x6E496574617473, 0xE700000000000000, v59);
  v63 = v165;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v62, 1, v165);
  v151 = v61;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v62, &demangling cache variable for type metadata for Tensor?);
    goto LABEL_15;
  }

  (*(v164 + 32))(v163, v62, v63);
  v65 = *&v161[*(type metadata accessor for MLActivityClassifier.Model(0) + 32)];
  Tensor.shape.getter(0, v62, v66);
  v67 = TensorShape.dimensions.getter();
  v68 = *(v67 + 16);
  v67;
  v69 = *(v150 + 8);
  v70 = v168;
  v71 = v162;
  v69(v168, v162);
  if (v68 != 1)
  {
    goto LABEL_22;
  }

  Tensor.shape.getter(v70, v71, v72);
  v73 = TensorShape.subscript.getter(0);
  v74 = v168;
  v75 = v73;
  v69(v168, v162);
  if (v65 + 0x4000000000000000 < 0)
  {
    BUG();
  }

  if (v75 != 2 * v65)
  {
LABEL_22:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000027, (" all have the same size" + 0x8000000000000000), "CreateML/MLActivityClassifier.Model.swift", 41, 2, 311, 0);
LABEL_23:
    BUG();
  }

  v167 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>);
  v76 = swift_allocObject(v167, 48, 7);
  v77 = v65;
  v76[2] = 1;
  v76[3] = 2;
  if (v65 < 0)
  {
    BUG();
  }

  v78 = v76;
  v76[4] = 0;
  v166 = v69;
  v139 = v77;
  v76[5] = v77;
  v138 = v75;
  v143 = v76;
  v79 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Range<Int>]);
  v80 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Range<Int>] and conformance [A], &demangling cache variable for type metadata for [Range<Int>], &protocol conformance descriptor for [A]);
  v81 = v153;
  v140 = v79;
  v141 = v80;
  Tensor.slice<A>(at:)(&v143, v79);
  v82 = v78;
  v83 = v139;
  v82;
  v142 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v84 = swift_allocObject(v142, 48, 7);
  v84[2] = 2;
  v84[3] = 4;
  v84[4] = 1;
  v84[5] = v83;
  TensorShape.init(_:)(v84);
  Tensor.reshaped(to:)(v74);
  v85 = v162;
  (v166)(v74, v162);
  v86 = *(v164 + 8);
  (v86)(v81, v165);
  v87 = swift_allocObject(v167, 48, 7);
  v88 = v138;
  v87[2] = 1;
  v87[3] = 2;
  if (v88 < v83)
  {
    BUG();
  }

  v87[4] = v83;
  v87[5] = v88;
  v143 = v87;
  v89 = v158;
  v167 = v86;
  Tensor.slice<A>(at:)(&v143, v140);
  v87;
  v90 = swift_allocObject(v142, 48, 7);
  v90[2] = 2;
  v90[3] = 4;
  v90[4] = 1;
  v90[5] = v83;
  v91 = v168;
  TensorShape.init(_:)(v90);
  v92 = v153;
  Tensor.reshaped(to:)(v91);
  (v166)(v91, v85);
  v93 = v165;
  (v167)(v89, v165);
  v94 = v137;
  LSTM.State.init(hidden:cell:)(v160, v92);
  v95 = v159;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v159, &demangling cache variable for type metadata for LSTM.State?);
  __swift_storeEnumTagSinglePayload(v94, 0, 1, v151);
  outlined init with take of DataFrame?(v94, v95, &demangling cache variable for type metadata for LSTM.State?);
  v96 = v157;
  specialized Dictionary._Variant.removeValue(forKey:)(0x6E496574617473, 0xE700000000000000);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v96, &demangling cache variable for type metadata for Tensor?);
  (v167)(v163, v93);
LABEL_15:
  v168 = type metadata accessor for MLActivityClassifier.Model(0);
  v97 = *&v161[*(v168 + 16) + 40];
  v98 = alloca(32);
  v99 = alloca(32);
  v136 = &v148;
  v137 = v161;

  v100 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_14NeuralNetworks6TensorVs5NeverOTg5(partial apply for closure #3 in MLActivityClassifier.Model.MLPackageRepresentation.forward(_:), v134, v97);
  v97;
  v163 = type metadata accessor for ScalarType(0);
  v101 = v147;
  __swift_storeEnumTagSinglePayload(v147, 1, 1, v163);
  v102 = v160;
  Tensor.init(concatenating:alongAxis:scalarType:)(v100, 0, v101);
  v103 = v154;
  v104 = &v154[*(v155 + 48)];
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v159, v154, &demangling cache variable for type metadata for LSTM.State?);
  v105 = v164;
  (*(v164 + 16))(v104, v102, v165);
  v106 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
  Layer.callAsFunction(_:)(v103, v168, v106);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v103, &demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v107 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Tensor)>);
  v108 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, Tensor));
  v109 = *(v108 - 8);
  v110 = v108;
  v154 = v108;
  v166 = *(v109 + 72);
  v111 = *(v109 + 80);
  v112 = (v111 + 32) & ~*(v109 + 80);
  v113 = swift_allocObject(v107, v112 + 2 * v166, v111 | 7);
  v161 = v113;
  *(v113 + 16) = 2;
  *(v113 + 24) = 4;
  v167 = (v113 + v112);
  v155 = v113 + v112 + *(v110 + 48);
  *(v113 + v112) = 0x74754F6574617473;
  *(v113 + v112 + 8) = 0xE800000000000000;
  v114 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Tensor>);
  v158 = *(v105 + 72);
  v115 = swift_allocObject(v114, ((*(v105 + 80) + 32) & ~*(v105 + 80)) + 2 * v158, *(v105 + 80) | 7);
  v156 = v115;
  *(v115 + 16) = 2;
  *(v115 + 24) = 4;
  v116 = v149;
  v117 = v146;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v149, v146, &demangling cache variable for type metadata for (LSTM.State, Tensor));
  v118 = v145;
  v157 = (v117 + *(v145 + 48));
  LSTM.State.hidden.getter();
  v119 = v151;
  v168 = *(*(v151 - 8) + 8);
  v168(v117, v151);
  v120 = v136;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v116, v136, &demangling cache variable for type metadata for (LSTM.State, Tensor));
  v121 = v120 + *(v118 + 48);
  LSTM.State.cell.getter();
  v168(v120, v119);
  v122 = *(v164 + 8);
  v123 = v121;
  v124 = v165;
  v122(v123, v165);
  v122(v157, v124);
  v125 = v147;
  __swift_storeEnumTagSinglePayload(v147, 1, 1, v163);
  v126 = v153;
  Tensor.init(concatenating:alongAxis:scalarType:)(v156, 1, v125);
  Tensor.flattened()();
  v122(v126, v124);
  v127 = v166;
  v128 = v167;
  v129 = &v167[v166 + *(v154 + 12)];
  *&v167[v166] = 0xD000000000000013;
  *(v127 + v128 + 8) = " inverted index." + 0x8000000000000000;
  v130 = v149;
  v131 = v146;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v149, v146, &demangling cache variable for type metadata for (LSTM.State, Tensor));
  (*(v164 + 32))(v129, v131 + *(v145 + 48), v124);
  v168(v131, v151);
  v132 = Dictionary.init(dictionaryLiteral:)(v161, &type metadata for String, v124, &protocol witness table for String);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v130, &demangling cache variable for type metadata for (LSTM.State, Tensor));
  v122(v160, v124);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v159, &demangling cache variable for type metadata for LSTM.State?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v152, &demangling cache variable for type metadata for TensorShape?);
  (*(v150 + 8))(v144, v162);
  v148;
  return v132;
}

uint64_t closure #2 in MLActivityClassifier.Model.MLPackageRepresentation.forward(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[0] = a4;
  v15[1] = a3;
  v5 = type metadata accessor for TensorShape(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  LOBYTE(v4) = 1;
  if (a1 ^ 0x6E496574617473 | a2 ^ 0xE700000000000000)
  {
    v16 = v15;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)(a1, a2, 0x6E496574617473, 0xE700000000000000, 0) & 1) == 0)
    {
      Tensor.shape.getter(a1, a2, v10);
      v11 = TensorShape.dimensions.getter();
      v12 = TensorShape.dimensions.getter();
      LOBYTE(v13) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1gq5(v11, v12);
      v4 = v13;
      v11;
      v12;
      (*(v6 + 8))(v16, v5);
    }
  }

  return v4;
}

uint64_t closure #3 in MLActivityClassifier.Model.MLPackageRepresentation.forward(_:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v20 = a2;
  v21 = v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v22 = &v20;
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a3 + *(type metadata accessor for MLActivityClassifier.Model.MLPackageRepresentation(0) + 20));
  v11 = *(v10 + 16);

  if (v11)
  {
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
    if (v13)
    {
      v14 = *(v10 + 56);
      v15 = 16 * v12;
      v8 = *(v14 + v15);
      v16 = *(v14 + v15 + 8);

      v9;
      v9 = v16;
    }
  }

  v17 = v22;
  specialized Dictionary.subscript.getter(v8, v9, *v20);
  v9;
  v18 = type metadata accessor for Tensor(0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    BUG();
  }

  return (*(*(v18 - 8) + 32))(v21, v17, v18);
}

uint64_t protocol witness for Layer.forward(_:) in conformance MLActivityClassifier.Model.MLPackageRepresentation(uint64_t *a1)
{
  v2 = v1;
  result = MLActivityClassifier.Model.MLPackageRepresentation.forward(_:)(*a1);
  *v2 = result;
  return result;
}

uint64_t MLActivityClassifier.Model.makeClassifier(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v88 = a3;
  v114 = a2;
  v102 = type metadata accessor for URL(0);
  v101 = *(v102 - 8);
  v7 = *(v101 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v89 = &v86;
  v92 = type metadata accessor for ModelKind(0);
  v91 = *(v92 - 8);
  v10 = *(v91 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v93 = &v86;
  v95 = type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);
  v94 = *(v95 - 8);
  v13 = *(v94 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v97 = &v86;
  v104 = type metadata accessor for FeatureType(0);
  v100 = *(v104 - 8);
  v16 = *(v100 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v96 = &v86;
  v118 = type metadata accessor for FeatureDescription(0);
  v116 = *(v118 - 8);
  v19 = *(v116 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v106 = &v86;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v105 = &v86;
  v24 = alloca(v19);
  v25 = alloca(v19);
  v108 = &v86;
  v26 = alloca(v19);
  v27 = alloca(v19);
  v112 = &v86;
  v28 = alloca(v19);
  v29 = alloca(v19);
  v113 = &v86;
  v30._rawValue = *(v5 + *(type metadata accessor for MLActivityClassifier.Model(0) + 60));
  v103 = (" inverted index." + 0x8000000000000000);
  v122._countAndFlagsBits = 0x6C6562616CLL;
  v90 = a1;
  v122._object = 0xE500000000000000;
  MLProgram.addClassifierSpecification(classLabels:probabilityTensorName:outputProbabilityName:outputLabelName:)(v30, __PAIR128__((" inverted index." + 0x8000000000000000), 0xD000000000000013), __PAIR128__(("labelProbabilityRaw" + 0x8000000000000000), 0xD000000000000010), v122);
  Model.modelDescription.setter(0xD000000000000011, ("labelProbability" + 0x8000000000000000));
  Model.predictedFeatureName.setter(0x6C6562616CLL, 0xE500000000000000);
  v99 = 0xD000000000000010;
  v98 = "labelProbabilityRaw" + 0x8000000000000000;
  Model.predictedProbabilitiesName.setter(0xD000000000000010, ("labelProbabilityRaw" + 0x8000000000000000));
  v31 = 0;
  v32 = Model.outputs.modify(v87);
  v34 = v33;
  v35 = *v33;
  v36 = *(*v33 + 16);
  v37 = 0;
  v111 = v36;
  if (!v36)
  {
    goto LABEL_11;
  }

  v117 = v34;
  v109 = v32;
  v38 = (*(v116 + 80) + 32) & ~*(v116 + 80);
  v39 = v38 + v35;
  v40 = *(v116 + 16);
  v41 = *(v116 + 72);
  v107 = v38;
  v110 = v41;
  v119 = (v41 + v38);
  v120 = 0;
  v42 = v118;
  v115 = v40;
  v43 = v113;
  while (1)
  {
    v40(v43, v39, v42);
    v44 = FeatureDescription.name.getter();
    v46 = v45;
    if (!(v44 ^ 0xD000000000000013 | v103 ^ v45))
    {
      break;
    }

    LOBYTE(v121) = _stringCompareWithSmolCheck(_:_:expecting:)(v44, v45, 0xD000000000000013, v103, 0);
    v46;
    v47 = *(v116 + 8);
    v47(v43, v42);
    if (v121)
    {
      goto LABEL_8;
    }

    v119 += v110;
    v39 += v110;
    ++v120;
    v40 = v115;
    if (v111 == v120)
    {
      v31 = *(*v117 + 16);
      v37 = v31;
      v32 = v109;
      goto LABEL_11;
    }
  }

  v45;
  v47 = *(v116 + 8);
  v47(v43, v42);
LABEL_8:
  v113 = v47;
  v37 = v120 + 1;
  v48 = v108;
  if (__OFADD__(1, v120))
  {
    BUG();
  }

  v49 = *v117;
  v50 = *(*v117 + 16);
  if (v37 != v50)
  {
    v68 = v119;
    do
    {
      if (v37 >= v50)
      {
        BUG();
      }

      v121 = v37;
      v119 = v68;
      v115(v48, &v68[v49], v42);
      v69 = v42;
      v70 = FeatureDescription.name.getter();
      v72 = v48;
      v73 = v71;
      if (v70 ^ 0xD000000000000013 | v103 ^ v71)
      {
        v74 = _stringCompareWithSmolCheck(_:_:expecting:)(v70, v71, 0xD000000000000013, v103, 0);
        v73;
        (v113)(v72, v69);
        v75 = (v74 & 1) == 0;
        v42 = v69;
        v48 = v72;
        if (v75)
        {
          v78 = v120;
          v77 = v121;
          v76 = v117;
          if (v121 != v120)
          {
            if (v120 < 0)
            {
              BUG();
            }

            v79 = *v117;
            if (v120 >= *(*v117 + 16))
            {
              BUG();
            }

            v111 = *(*v117 + 16);
            v80 = v110 * v120;
            v81 = v115;
            v115(v105, v110 * v120 + v107 + v79, v118);
            if (v121 >= v111)
            {
              BUG();
            }

            v81(v106, &v119[v79], v118);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v79);
            *v76 = v79;
            v42 = v118;
            if (isUniquelyReferenced_nonNull_native)
            {
              v83 = v79;
            }

            else
            {
              v83 = specialized _ArrayBuffer._consumeAndCreateNew()(v79);
              *v76 = v83;
            }

            v84 = *(v116 + 40);
            v84(&v83[v107 + v80], v106, v42);
            if (v121 >= *(*v76 + 16))
            {
              BUG();
            }

            v84(&v119[*v76], v105, v42);
            v77 = v121;
            v78 = v120;
            v48 = v108;
          }

          v120 = v78 + 1;
          goto LABEL_29;
        }
      }

      else
      {
        v71;
        (v113)(v48, v69);
        v42 = v69;
      }

      v76 = v117;
      v77 = v121;
LABEL_29:
      v85 = __OFADD__(1, v77);
      v37 = v77 + 1;
      if (v85)
      {
        BUG();
      }

      v49 = *v76;
      v50 = *(*v76 + 16);
      v68 = &v119[v110];
    }

    while (v37 != v50);
  }

  v31 = v120;
  v32 = v109;
  if (v37 < v120)
  {
    BUG();
  }

LABEL_11:
  specialized Array.replaceSubrange<A>(_:with:)(v31, v37);
  v32(v87, 0);
  v51 = v96;
  FeatureType.StringParameters.init(optional:)(0);
  v119 = *(v100 + 104);
  (v119)(v51, enum case for FeatureType.string(_:), v104);
  FeatureDescription.init(name:type:description:)(0x6C6562616CLL, 0xE500000000000000, v51, 0, 0xE000000000000000);
  v115 = Model.outputs.modify(v87);
  v53 = v52;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v54 = *(*v53 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v54);
  v55 = *v53;
  *(v55 + 16) = v54 + 1;
  v56 = (*(v116 + 80) + 32) & ~*(v116 + 80);
  v120 = *(v116 + 32);
  v121 = *(v116 + 72);
  (v120)(v56 + v55 + v121 * v54, v112, v118);
  (v115)(v87, 0);
  v57 = v97;
  FeatureType.StringParameters.init(optional:)(0);
  (*(v94 + 104))(v57, enum case for FeatureType.DictionaryParameters.KeyType.string(_:), v95);
  FeatureType.DictionaryParameters.init(keyType:optional:)(v57, 0);
  (v119)(v51, enum case for FeatureType.dictionary(_:), v104);
  FeatureDescription.init(name:type:description:)(v99, v98, v51, 0, 0xE000000000000000);
  v58 = Model.outputs.modify(v87);
  v60 = v59;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v61 = *(*v60 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v61);
  v62 = *v60;
  *(v62 + 16) = v61 + 1;
  (v120)(v56 + v62 + v121 * v61, v112, v118);
  v58(v87, 0);
  v63 = type metadata accessor for MLProgram(0);
  v64 = v93;
  (*(*(v63 - 8) + 16))(v93, v90, v63);
  (*(v91 + 104))(v64, enum case for ModelKind.mlProgram(_:), v92);
  v65 = v114;
  Model.kind.setter(v64);
  v66 = v89;
  result = Package.setRootModel(_:)(v65);
  if (!v3)
  {
    return (*(v101 + 8))(v66, v102);
  }

  return result;
}

void *MLActivityClassifier.Model.addMetadata(model:_:)(uint64_t a1, _OWORD *a2)
{
  v50 = a1;
  qmemcpy(v36, a2, sizeof(v36));
  v2 = v36[1];
  if (v36[1])
  {
    v3 = v36[0];
    v4 = v36[8];
    v5 = a2[2];
    v6 = a2[3];
    v47 = a2[1];
    v48 = v5;
    v49 = v6;
  }

  else
  {
    v7 = NSFullUserName();
    v8 = v7;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(v8);
    v2 = v9;

    v30 = v3;
    v31 = v2;
    *&v32 = 0xD000000000000033;
    *(&v32 + 1) = "RandomForestRegressor" + 0x8000000000000000;
    v33 = 0;
    *&v34 = 49;
    *(&v34 + 1) = 0xE100000000000000;
    v35 = 0;
    v48 = 0;
    v47 = v32;
    *&v49 = 49;
    *(&v49 + 1) = 0xE100000000000000;
    v37 = v3;
    v38 = v2;
    *&v39 = 0xD000000000000033;
    *(&v39 + 1) = "RandomForestRegressor" + 0x8000000000000000;
    v40 = 0;
    *&v41 = 49;
    *(&v41 + 1) = 0xE100000000000000;
    v42 = 0;
    outlined retain of MLModelMetadata(&v30);
    outlined release of MLModelMetadata(&v37);
    v4 = 0;
  }

  v10 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v10 = v3 & 0xFFFFFFFFFFFFLL;
  }

  outlined release of MLModelMetadata?(v36, outlined copy of MLModelMetadata?);
  if (!v10)
  {
    v11 = NSFullUserName();
    v12 = v11;
    v13 = v2;
    v53 = v4;
    v14 = v12;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(v12);
    v2 = v15;
    v13;
    v16 = v14;
    v4 = v53;
  }

  v53 = v3;
  v51 = v2;
  if (!v4)
  {
    v4 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
  }

  v17 = getOSVersion()();
  countAndFlagsBits = v17._countAndFlagsBits;
  object = v17._object;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v4);
  v37 = v4;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(countAndFlagsBits, object, 0xD00000000000001ALL, ("Recommender Model" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
  v20 = v37;
  v37 = v53;
  v38 = v51;
  v39 = v47;
  v40 = v48;
  v41 = v49;
  countAndFlagsBits = v20;
  v42 = v20;
  v21 = *(&v47 + 1);
  v46 = v47;
  v45 = v49;
  v22 = v48;
  if (!*(&v48 + 1))
  {
    v22 = 0;
  }

  v43 = v22;
  v23 = *(&v41 + 1);
  v24 = 0xE000000000000000;
  if (*(&v48 + 1))
  {
    v24 = *(&v48 + 1);
  }

  v44 = v24;

  outlined retain of MLModelMetadata(&v37);
  Model.modelDescription.setter(v46, v21);

  v25 = v23;
  v26 = v51;
  Model.versionString.setter(v45, v25);

  Model.author.setter(v53, v26);
  v27 = v42;

  Model.license.setter(v43, v44);
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
  }

  Model.metadata.setter(v28);
  outlined release of MLModelMetadata(&v37);
  v30 = v53;
  v31 = v26;
  v32 = v47;
  v33 = v48;
  v34 = v49;
  v35 = countAndFlagsBits;
  return outlined release of MLModelMetadata(&v30);
}

void *MLActivityClassifier.Model.renameInputsAsNeeded(inputs:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {

    v13 = a1;
    v2 = (a1 + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;

      if (specialized Sequence.contains(where:)(0, v3, v4))
      {
        v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v12 = v1;
        object = v5._object;
        String.append(_:)(v5);
        object;
        v7._countAndFlagsBits = 95;
        v7._object = 0xE100000000000000;
        String.append(_:)(v7);
        v8 = String.asSanitizedMILIdentifier()();
        v9 = v8._object;
        String.append(_:)(v8);
        v9;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
        v1 = v12;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0x656D616E65725F5FLL, 0xEA00000000005F64, v3, v4, isUniquelyReferenced_nonNull_native);
      }

      v4;
      v2 += 2;
      --v1;
    }

    while (v1);
    v13;
  }

  return _swiftEmptyDictionarySingleton;
}

Swift::String __swiftcall String.asSanitizedMILIdentifier()()
{
  v2 = String.count.getter();
  if (v2 <= 0)
  {
    v2 = 0;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, _swiftEmptyArrayStorage);
  v4 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = v0 & 0xFFFFFFFFFFFFLL;
  }

  v5 = v3;
  v19 = v0;
  v20 = v1;
  v21 = 0;
  v22 = v4;

  while (1)
  {
    v6 = String.Iterator.next()();
    if (!v6.value._object)
    {
      break;
    }

    countAndFlagsBits = v6.value._countAndFlagsBits;
    object = v6.value._object;
    if (v6.value._countAndFlagsBits ^ 0xA0D | v6.value._object ^ 0xE200000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(v6.value._countAndFlagsBits, v6.value._object, 2573, 0xE200000000000000, 0) & 1) == 0)
    {
      if ((Character._isSingleScalar.getter(countAndFlagsBits, object) & 1) == 0)
      {
        goto LABEL_20;
      }

      v9 = specialized Collection.first.getter(countAndFlagsBits, object);
      if ((v9 & 0x100000000) != 0)
      {
        BUG();
      }

      if ((v9 & 0xFFFFFF80) != 0)
      {
        goto LABEL_20;
      }

      v10 = specialized Collection.first.getter(countAndFlagsBits, object);
      if ((v10 & 0x100000000) != 0)
      {
        BUG();
      }

      if ((v10 & 0xFFFFFF00) != 0)
      {
        BUG();
      }
    }

    if (Character.isLetter.getter(countAndFlagsBits, object) & 1) != 0 || (Character.isNumber.getter(countAndFlagsBits, object))
    {
      v11 = v5[2];
      if (v11)
      {
        goto LABEL_19;
      }

      if (Character.isLetter.getter(countAndFlagsBits, object))
      {
        v11 = v5[2];
LABEL_19:
        v12 = v5[3];
        v13 = v12 >> 1;
        v14 = v11 + 1;
        goto LABEL_21;
      }
    }

LABEL_20:
    object;
    v11 = v5[2];
    v12 = v5[3];
    v13 = v12 >> 1;
    v14 = v11 + 1;
    countAndFlagsBits = 95;
    object = 0xE100000000000000;
LABEL_21:
    if (v13 <= v11)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v12 >= 2, v14, 1, v5);
    }

    v5[2] = v14;
    v15 = 2 * v11;
    v5[v15 + 4] = countAndFlagsBits;
    v5[v15 + 5] = object;
  }

  v20;
  v19 = v5;
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Character]);
  v17 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Character] and conformance [A], &demangling cache variable for type metadata for [Character], &protocol conformance descriptor for [A]);
  result._countAndFlagsBits = String.init<A>(_:)(&v19, v16, v17);
  return result;
}

uint64_t specialized Sequence.makeDictionary(uniquelyIndexedBy:)(uint64_t a1)
{
  v1 = type metadata accessor for FeatureDescription(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v52 = &v41;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v53 = &v41;
  result = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v1, &protocol witness table for String);
  v9 = *(a1 + 16);
  if (v9)
  {
    v51 = result;
    v42 = v9;
    v10 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v44 = *(v2 + 16);
    v47 = *(v2 + 72);
    v43 = a1;

    v11 = v10;
    v12 = v53;
    v45 = v1;
    v46 = v2;
    do
    {
      v41 = v11;
      v44(v12, v11, v1);
      v13 = FeatureDescription.name.getter();
      v15 = v14;
      v16 = v51;
      if (*(v51 + 16))
      {

        specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
        v18 = v17;
        v16;
        v19 = (v18 & 1) == 0;
        v12 = v53;
        if (!v19)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000017, ("ActivityClassifierPipeline" + 0x8000000000000000), "CreateML/MLActivityClassifier.Model.swift", 41, 2, 556, 0);
          BUG();
        }
      }

      v44(v52, v12, v1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v16);
      v48 = v16;
      v50 = v13;
      v49 = v15;
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(*(v16 + 16), v23);
      v25 = *(v16 + 16) + v23;
      if (v24)
      {
        BUG();
      }

      v26 = v21;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, FeatureDescription>);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25))
      {
        v27 = v49;
        v22 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v49);
        LOBYTE(v29) = v29 & 1;
        v12 = v53;
        v30 = v47;
        if ((v26 & 1) != v29)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v27, v29, v28);
          BUG();
        }
      }

      else
      {
        v12 = v53;
        v30 = v47;
      }

      v31 = v50;
      v32 = v48;
      v51 = v48;
      if (v26)
      {
        v33 = v30;
        v34 = v48[7] + v30 * v22;
        v1 = v45;
        v35 = v46;
        (*(v46 + 40))(v34, v52, v45);
        v49;
      }

      else
      {
        v48[(v22 >> 6) + 8] |= 1 << v22;
        v36 = v32[6];
        v37 = 16 * v22;
        *(v36 + v37) = v31;
        *(v36 + v37 + 8) = v49;
        v33 = v30;
        v38 = v32[7] + v30 * v22;
        v1 = v45;
        v35 = v46;
        (*(v46 + 32))(v38, v52, v45);
        v39 = v32[2];
        v24 = __OFADD__(1, v39);
        v40 = v39 + 1;
        if (v24)
        {
          BUG();
        }

        v32[2] = v40;
      }

      (*(v35 + 8))(v12, v1);
      v11 = v33 + v41;
      --v42;
    }

    while (v42);
    v43;
    return v51;
  }

  return result;
}

void *specialized Dictionary<>.inverted()(uint64_t a1)
{
  v1 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
  v2 = -1 << *(a1 + 32);
  v3 = v1;
  v4 = ~(-1 << -v2);
  if (-v2 >= 64)
  {
    v4 = -1;
  }

  v5 = *(a1 + 64) & v4;
  v47 = a1 + 64;
  v46 = (63 - v2) >> 6;

  for (i = 0; ; i = v7)
  {
    if (v5)
    {
      v7 = i;
      goto LABEL_24;
    }

    v8 = i + 1;
    if (__OFADD__(1, i))
    {
      BUG();
    }

    if (v8 >= v46)
    {
      goto LABEL_36;
    }

    v5 = *(v47 + 8 * v8);
    if (v5)
    {
      v7 = i + 1;
      goto LABEL_24;
    }

    v7 = i + 2;
    if (i + 2 >= v46)
    {
      goto LABEL_36;
    }

    v5 = *(v47 + 8 * v8 + 8);
    if (!v5)
    {
      v7 = i + 3;
      if (i + 3 >= v46)
      {
        goto LABEL_36;
      }

      v5 = *(v47 + 8 * v8 + 16);
      if (!v5)
      {
        v7 = i + 4;
        if (i + 4 >= v46)
        {
          goto LABEL_36;
        }

        v5 = *(v47 + 8 * v8 + 24);
        if (!v5)
        {
          v7 = i + 5;
          if (i + 5 >= v46)
          {
            goto LABEL_36;
          }

          v5 = *(v47 + 8 * v8 + 32);
          if (!v5)
          {
            v7 = i + 6;
            if (i + 6 >= v46)
            {
              goto LABEL_36;
            }

            v5 = *(v47 + 8 * v8 + 40);
            if (!v5)
            {
              break;
            }
          }
        }
      }
    }

LABEL_24:
    v39 = v5;
    _BitScanForward64(&v10, v5);
    v11 = (v7 << 10) | (16 * v10);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v41 = *(v12 + v11);
    v14 = *(v12 + v11 + 8);
    v45 = *(v13 + v11);
    v15 = *(v13 + v11 + 8);
    v16 = *(v3 + 16);

    if (v16)
    {

      specialized __RawDictionaryStorage.find<A>(_:)(v45, v15);
      v18 = v17;
      v3;
      if (v18)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000020, ("Duplicate key in index." + 0x8000000000000000), "CreateML/MLActivityClassifier.Model.swift", 41, 2, 571, 0);
        BUG();
      }
    }

    v43 = v14;

    v19 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v3);
    v42 = v3;
    v40 = v15;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v15);
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(*(v19 + 16), v23);
    v25 = *(v19 + 16) + v23;
    if (v24)
    {
      BUG();
    }

    v48 = v21;
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, String>);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25))
    {
      v26 = v45;
      v27 = v40;
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v40);
      LOBYTE(v28) = v28 & 1;
      LOBYTE(v29) = v48;
      if ((v48 & 1) != v28)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v40, v28, v29);
        BUG();
      }
    }

    else
    {
      v27 = v40;
      v26 = v45;
      LOBYTE(v29) = v48;
    }

    v3 = v42;
    if (v29)
    {
      v30 = v42[7];
      v31 = 16 * v22;
      *(v30 + v31 + 8);
      *(v30 + v31) = v41;
      *(v30 + v31 + 8) = v43;
      v43;
      v32 = v27;
    }

    else
    {
      v42[(v22 >> 6) + 8] |= 1 << v22;
      v33 = v42[6];
      v34 = 16 * v22;
      *(v33 + v34) = v26;
      *(v33 + v34 + 8) = v27;
      v35 = v42[7];
      *(v35 + v34) = v41;
      *(v35 + v34 + 8) = v43;
      v36 = v42[2];
      v24 = __OFADD__(1, v36);
      v37 = v36 + 1;
      if (v24)
      {
        BUG();
      }

      v42[2] = v37;
      v32 = v43;
    }

    v5 = (v39 - 1) & v39;
    v32;
    v27;
  }

  v9 = i + 7;
  while (v9 < v46)
  {
    v5 = *(a1 + 8 * v9++ + 64);
    if (v5)
    {
      v7 = v9 - 1;
      goto LABEL_24;
    }
  }

LABEL_36:
  outlined consume of [String : [Double]].Iterator._Variant(a1);
  return v3;
}

uint64_t MLActivityClassifier.Model.makePipeline(_:_:_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v66 = a3;
  v67 = type metadata accessor for URL(0);
  v68 = *(v67 - 8);
  v6 = *(v68 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v63 = &v62;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v62 = &v62;
  v64 = type metadata accessor for ModelKind(0);
  v72 = *(v64 - 8);
  v11 = v72[8];
  v12 = alloca(v11);
  v13 = alloca(v11);
  v65 = &v62;
  v73 = type metadata accessor for Model(0);
  v74 = *(v73 - 8);
  v14 = *(v74 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v76 = &v62;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v19 = alloca(v14);
  v20 = alloca(v14);
  v75 = &v62;
  v69 = a2;
  v71 = Model.inputs.getter();
  v21 = specialized Sequence.makeDictionary(uniquelyIndexedBy:)(v71);

  ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg5077_s8CreateML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n(a4, v21);

  ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20ef17ADV5model_SayAI18gH41VG13renamedInputstAN_SDyS2SGtKFAMSSXEfU0_SDySSAKGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVyS2S_G_20MLModelSpecification18FeatureDescriptionVs5NeverOTg5077_s8CreateML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20ef17ADV5model_SayAI18gH41VG13renamedInputstAN_SDyS2SGtKFAMSSXEfU0_SDySSAKGTf1cn_n(a4, v21);
  v70 = v4;
  v21;
  a4;
  Model.init()();
  Model.specificationVersion.setter(1);
  Model.modelDescription.setter(0xD00000000000001BLL, ("ccessfully saved at " + 0x8000000000000000));
  v23 = ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n;

  Model.inputs.setter(v23);
  Model.outputs.setter(ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20ef17ADV5model_SayAI18gH41VG13renamedInputstAN_SDyS2SGtKFAMSSXEfU0_SDySSAKGTf1cn_n);
  v24 = v70;
  ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de70ADV5model_SayAI18FeatureDescriptionVG13renamedInputstAN_SDyS2SGtKFAI13fgoH25VSS3key_SS5valuet_tXEfU1_Tf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_20MLModelSpecification13NeuralNetworkV5LayerVs5NeverOTg5077_s8CreateML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de70ADV5model_SayAI18FeatureDescriptionVG13renamedInputstAN_SDyS2SGtKFAI13fgoH25VSS3key_SS5valuet_tXEfU1_Tf1cn_n(a4);
  v26 = v65;
  NeuralNetwork.init(layers:preprocessors:)(ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de70ADV5model_SayAI18FeatureDescriptionVG13renamedInputstAN_SDyS2SGtKFAI13fgoH25VSS3key_SS5valuet_tXEfU1_Tf1cn_n, _swiftEmptyArrayStorage);
  v70 = v72[13];
  v70(v26, enum case for ModelKind.neuralNetwork(_:), v64);
  v72 = &v62;
  Model.kind.setter(v26);
  v27 = specialized Dictionary<>.inverted()(a4);
  if (v24)
  {
    (*(v74 + 8))(v72, v73);
    v71;
    return ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n;
  }

  else
  {
    v29 = ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n;
    v30 = v27;
    v31 = specialized Sequence.makeDictionary(uniquelyIndexedBy:)(ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n);
    v29;

    v32 = v71;
    ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG40VG13renamedInputstAN_SDyS2SGtKFA2MXEfU2_SDyS2SGSDySSAHGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay20MLModelSpecification18FeatureDescriptionVG_AHs5NeverOTg5077_s8CreateML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG40VG13renamedInputstAN_SDyS2SGtKFA2MXEfU2_SDyS2SGSDySSAHGTf1cn_n(v71, v30, v31);
    ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n = 0;
    v32;
    v31;
    v30;
    v34 = v74;
    (*(v74 + 32))(v75, v72, v73);
    Model.init()();
    Model.modelDescription.setter(0xD00000000000001ALL, ("__coreml_name_compatibility" + 0x8000000000000000));
    Model.inputs.setter(ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG40VG13renamedInputstAN_SDyS2SGtKFA2MXEfU2_SDyS2SGSDySSAHGTf1cn_n);
    v35 = Model.outputs.getter();
    Model.outputs.setter(v35);
    v36 = Model.predictedFeatureName.getter();
    Model.predictedFeatureName.setter(v36, v37);
    v38 = Model.predictedProbabilitiesName.getter();
    Model.predictedProbabilitiesName.setter(v38, v39);
    Model.specificationVersion.setter(6);
    v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Model>);
    v71 = *(v34 + 72);
    v41 = *(v34 + 80);
    v42 = (v41 + 32) & ~*(v34 + 80);
    v43 = swift_allocObject(v40, v42 + 2 * v71, v41 | 7);
    *(v43 + 16) = 2;
    *(v43 + 24) = 4;
    v44 = v43 + v42;
    v45 = *(v34 + 16);
    v46 = v73;
    v45(v44, v75, v73);
    v45(v71 + v44, v69, v46);
    v47 = v65;
    PipelineClassifierConfiguration.init(models:names:)(v43, _swiftEmptyArrayStorage);
    v70(v47, enum case for ModelKind.pipelineClassifier(_:), v64);
    Model.kind.setter(v47);
    v48 = Model.author.getter();
    Model.author.setter(v48, v49);
    v50 = Model.modelDescription.getter();
    Model.modelDescription.setter(v50, v51);
    v52 = Model.versionString.getter();
    Model.versionString.setter(v52, v53);
    v54 = Model.license.getter();
    Model.license.setter(v54, v55);
    v56 = Model.metadata.getter();
    Model.metadata.setter(v56);
    v57 = v62;
    Package.rootModelURL.getter();
    v58 = ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n;
    Model.write(to:)(v57);
    if (v58)
    {
      (*(v68 + 8))(v57, v67);
      v59 = *(v74 + 8);
      v59(v76, v46);
    }

    else
    {
      v60 = v67;
      ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n = *(v68 + 8);
      (ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n)(v57, v67);
      v61 = v63;
      Package.setRootModel(_:)(v76);
      (ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n)(v61, v60);
      v59 = *(v74 + 8);
      v46 = v73;
      v59(v76, v73);
    }

    return (v59)(v75, v46);
  }
}

uint64_t MLActivityClassifier.Model.writeMLPackage(to:metadata:)(uint64_t a1, const void *a2)
{
  v142 = v2;
  v165 = v3;
  v159 = a1;
  v148 = type metadata accessor for ModelKind(0);
  v147 = *(v148 - 8);
  v4 = *(v147 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v149 = &v128;
  v167 = type metadata accessor for MLProgram(0);
  v168 = *(v167 - 8);
  v7 = *(v168 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v173 = &v128;
  v170 = type metadata accessor for Model(0);
  v169 = *(v170 - 8);
  v10 = *(v169 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v177 = &v128;
  v161 = type metadata accessor for URL(0);
  v160 = *(v161 - 8);
  v13 = *(v160 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v150 = &v128;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v146 = &v128;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v145 = &v128;
  v172 = type metadata accessor for Package(0);
  v171 = *(v172 - 8);
  v20 = *(v171 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v174 = &v128;
  v154 = type metadata accessor for MLPackageWritingOptions(0);
  v153 = *(v154 - 8);
  v23 = *(v153 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v143 = &v128;
  v144 = type metadata accessor for MLActivityClassifier.Model.MLPackageRepresentation(0);
  v26 = *(*(v144 - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v164 = &v128;
  v162 = type metadata accessor for Tensor(0);
  v156 = *(v162 - 8);
  v29 = *(v156 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v157 = &v128;
  v32 = alloca(v29);
  v33 = alloca(v29);
  v136 = &v128;
  v158 = type metadata accessor for ScalarType(0);
  v179 = *(v158 - 8);
  v34 = *(v179 + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v151 = &v128;
  v37 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v38 = alloca(v37);
  v39 = alloca(v37);
  v152 = &v128;
  v40 = *(*(type metadata accessor for TensorShape(0) - 8) + 64);
  v41 = alloca(v40);
  v42 = alloca(v40);
  v163 = &v128;
  qmemcpy(v129, a2, sizeof(v129));
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Tensor)>);
  v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, Tensor));
  v45 = *(v44 - 8);
  v46 = *(v45 + 80);
  v47 = (v46 + 32) & ~*(v45 + 80);
  v48 = swift_allocObject(v43, v47 + *(v45 + 72), v46 | 7);
  *(v48 + 16) = 1;
  *(v48 + 24) = 2;
  v178 = *(v44 + 48);
  *(v48 + v47) = 0x6E496574617473;
  *(v48 + v47 + 8) = 0xE700000000000000;
  v137 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v49 = swift_allocObject(v137, 40, 7);
  v49[2] = 1;
  v49[3] = 2;
  v50 = type metadata accessor for MLActivityClassifier.Model(0);
  v51 = *(v165 + *(v50 + 32));
  if (v51 + 0x4000000000000000 < 0)
  {
    BUG();
  }

  v49[4] = 2 * v51;
  v178 = v50;
  TensorShape.init(_:)(v49);
  v52 = type metadata accessor for ComputeDevice(0);
  v53 = v152;
  v138 = v52;
  __swift_storeEnumTagSinglePayload(v152, 1, 1, v52);
  v54 = *(v179 + 104);
  v55 = v151;
  v155 = enum case for ScalarType.float32(_:);
  v139 = v54;
  v54(v151, enum case for ScalarType.float32(_:), v158);
  Tensor.init(zeros:scalarType:on:)(v163, v55, v53);
  v175 = Dictionary.init(dictionaryLiteral:)(v48, &type metadata for String, v162, &protocol witness table for String);
  v56 = *(v178 + 64);
  v57 = v165;
  v58 = *(v165 + v56 + 40);

  v59 = MLActivityClassifier.Model.renameInputsAsNeeded(inputs:)(v58);
  v58;
  v60 = *(v58 + 16);
  v176 = v59;
  v166 = v58;
  if (v60)
  {
    v141 = v60;
    v140 = *(v57 + v56 + 32);

    v61 = (v58 + 40);
    do
    {
      v62 = *(v61 - 1);
      v134 = v61;
      v63 = *v61;
      v64 = v59[2];

      v178 = v62;
      if (v64)
      {

        v65 = specialized __RawDictionaryStorage.find<A>(_:)(v62, v63);
        v66 = v63;
        v68 = v163;
        if (v67)
        {
          v69 = v59[7];
          v70 = 16 * v65;
          v178 = *(v69 + v70);
          v66 = *(v69 + v70 + 8);

          v63;
        }

        v63;
        v179 = v66;
        v71 = v158;
      }

      else
      {
        v71 = v158;
        v68 = v163;
        v179 = v63;
      }

      v72 = swift_allocObject(v137, 40, 7);
      v72[2] = 1;
      v72[3] = 2;
      v72[4] = v140;
      TensorShape.init(_:)(v72);
      v73 = v68;
      v74 = v152;
      __swift_storeEnumTagSinglePayload(v152, 1, 1, v138);
      v75 = v151;
      v139(v151, v155, v71);
      v76 = v136;
      Tensor.init(zeros:scalarType:on:)(v73, v75, v74);
      v135 = *(v156 + 32);
      v135(v157, v76, v162);
      v77 = v175;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v175);
      *v131 = v77;
      v80 = specialized __RawDictionaryStorage.find<A>(_:)(v178, v179);
      v81 = (v79 & 1) == 0;
      v82 = __OFADD__(*(v77 + 16), v81);
      v83 = *(v77 + 16) + v81;
      if (v82)
      {
        BUG();
      }

      LOBYTE(v175) = v79;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Tensor>);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v83))
      {
        v84 = v178;
        v85 = v179;
        v80 = specialized __RawDictionaryStorage.find<A>(_:)(v178, v179);
        LOBYTE(v86) = v86 & 1;
        LOBYTE(v87) = v175;
        if ((v175 & 1) != v86)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v85, v86, v87);
          BUG();
        }
      }

      else
      {
        v84 = v178;
        LOBYTE(v87) = v175;
      }

      v88 = *v131;
      v175 = *v131;
      if (v87)
      {
        (*(v156 + 40))(*(*v131 + 56) + v80 * *(v156 + 72), v157, v162);
        v179;
        v89 = v167;
      }

      else
      {
        *(*v131 + 8 * (v80 >> 6) + 64) |= 1 << v80;
        v90 = v88[6];
        v91 = 16 * v80;
        *(v90 + v91) = v84;
        *(v90 + v91 + 8) = v179;
        v135((v88[7] + v80 * *(v156 + 72)), v157, v162);
        v92 = v88[2];
        v82 = __OFADD__(1, v92);
        v93 = v92 + 1;
        v89 = v167;
        if (v82)
        {
          BUG();
        }

        v88[2] = v93;
      }

      v61 = v134 + 2;
      v94 = v141-- == 1;
      v59 = v176;
      v95 = v164;
    }

    while (!v94);
    v166;
  }

  else
  {
    v89 = v167;
    v95 = v164;
  }

  outlined init with copy of MLActivityClassifier.Model(v165, v95);
  v96 = v144;
  v97 = v176;
  *(v95 + *(v144 + 20)) = v176;

  v98 = v143;
  static MLPackageWritingOptions.default.getter(v97);
  v99 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model.MLPackageRepresentation and conformance MLActivityClassifier.Model.MLPackageRepresentation, type metadata accessor for MLActivityClassifier.Model.MLPackageRepresentation, &protocol conformance descriptor for MLActivityClassifier.Model.MLPackageRepresentation);
  v100 = v142;
  Layer<>.writeMLPackage(withInput:output:to:options:)(v175, 0, v159, v98, v96, v99);
  if (v100)
  {
    v176;
    (*(v153 + 8))(v98, v154);
    outlined destroy of MLActivityClassifier.Model.MLPackageRepresentation(v164);
    return v175;
  }

  (*(v153 + 8))(v98, v154);
  outlined destroy of MLActivityClassifier.Model.MLPackageRepresentation(v164);
  v102 = v145;
  (*(v160 + 16))(v145, v159, v161);
  Package.init(url:)(v102);
  v103 = v146;
  Package.rootModelURL.getter();
  Model.init(contentsOf:)(v103);
  v179 = 0;
  v104 = v149;
  Model.kind.getter();
  v105 = v148;
  v106 = v147;
  if ((*(v147 + 88))(v104, v148) != enum case for ModelKind.mlProgram(_:))
  {
    (*(v106 + 8))(v104, v105);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000026, ("ityClassifier.Model.swift" + 0x8000000000000000), "CreateML/MLActivityClassifier.Model.swift", 41, 2, 477, 0);
    BUG();
  }

  (*(v106 + 96))(v104, v105);
  v107 = v173;
  v108 = v168;
  (*(v168 + 32))(v173, v104, v89);
  v175;
  v109 = v179;
  MLActivityClassifier.Model.makeClassifier(_:_:_:)(v107, v177, v174);
  if (v109)
  {
    v176;
    (*(v108 + 8))(v173, v89);
    (*(v169 + 8))(v177, v170);
    return (*(v171 + 8))(v174, v172);
  }

  qmemcpy(v131, v129, sizeof(v131));
  outlined retain of MLModelMetadata(v129);
  MLActivityClassifier.Model.addMetadata(model:_:)(v177, v131);
  qmemcpy(v130, v131, sizeof(v130));
  outlined release of MLModelMetadata?(v130, outlined consume of MLModelMetadata?);
  v110 = v150;
  Package.rootModelURL.getter();
  Model.write(to:)(v110);
  v179 = 0;
  (*(v160 + 8))(v110, v161);
  v111 = v166;
  v112 = *(v166 + 16);
  if (v112)
  {

    v113 = (v111 + 40);
    v114 = v176;
    while (1)
    {
      v178 = *(v113 - 1);
      v115 = *v113;

      v116 = v179;
      LOBYTE(v178) = specialized Sequence.contains(where:)(0, v178, v115);
      v179 = v116;
      v115;
      if (v178)
      {
        break;
      }

      v113 += 2;
      if (!--v112)
      {
        v114;
        v117 = v166;
        goto LABEL_39;
      }
    }

    v118 = v166;
    v166;
    v119 = v177;
    v120 = v174;
    v121 = v179;
    MLActivityClassifier.Model.makePipeline(_:_:_:_:)(v118, v177, v174, v114);
    if (v121)
    {
      v114;
      (*(v168 + 8))(v173, v167);
      (*(v169 + 8))(v119, v170);
      return (*(v171 + 8))(v120, v172);
    }

    v179 = 0;
    v117 = v114;
  }

  else
  {
    v117 = v176;
  }

LABEL_39:
  v117;
  v132 = 0;
  v133 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);
  v133;
  v132 = 0xD000000000000024;
  v133 = "del to be an MLProgram" + 0x8000000000000000;
  v122 = URL.path(percentEncoded:)(1);
  object = v122._object;
  String.append(_:)(v122);
  object;
  v124._countAndFlagsBits = 46;
  v124._object = 0xE100000000000000;
  String.append(_:)(v124);
  v125 = v132;
  v126 = v133;
  v127 = static os_log_type_t.info.getter(46);
  v124._countAndFlagsBits = v125;
  v124._object = v126;
  log(_:type:)(v124, v127);
  v126;
  (*(v168 + 8))(v173, v167);
  (*(v169 + 8))(v177, v170);
  return (*(v171 + 8))(v174, v172);
}

MLModel __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLActivityClassifier.Model.makeMLModel()()
{
  v55 = v0;
  v48 = v1;
  v58 = type metadata accessor for UUID(0);
  v49 = *(v58 - 1);
  v2 = *(v49 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v50 = v40;
  v59 = type metadata accessor for URL(0);
  v53 = *(v59 - 8);
  v5 = v53[8];
  v6 = alloca(v5);
  v7 = alloca(v5);
  v52 = v40;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v56 = v40;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v54 = v40;
  v51 = v5;
  v12 = alloca(v5);
  v13 = alloca(v5);
  v57 = v40;
  v14 = objc_opt_self(NSFileManager);
  v15 = [v14 defaultManager];
  v16 = v15;
  v17 = [v16 temporaryDirectory];
  v18 = v17;

  static URL._unconditionallyBridgeFromObjectiveC(_:)(v18);
  v19 = v50;
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v49 + 8))(v19, v58);
  v47[0] = v20;
  v47[1] = v22;
  v23._countAndFlagsBits = 0x616B6361706C6D2ELL;
  v23._object = 0xEA00000000006567;
  String.append(_:)(v23);
  LOBYTE(v20) = v47[1];
  v24 = v54;
  URL.appendingPathComponent(_:)(v47[0], v47[1]);
  v20;
  v58 = v53[1];
  (v58)(v24, v59);
  v25 = NSFullUserName();
  v26 = v25;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)(v26);
  v29 = v28;

  *v45 = v27;
  *&v45[8] = v29;
  *&v45[16] = 0xD000000000000033;
  *&v45[24] = "RandomForestRegressor" + 0x8000000000000000;
  *&v45[32] = 0;
  *&v45[48] = 49;
  *&v45[56] = 0xE100000000000000;
  *&v45[64] = 0;
  v40[0] = v27;
  v30 = v57;
  v40[1] = v29;
  v40[2] = 0xD000000000000033;
  v40[3] = "RandomForestRegressor" + 0x8000000000000000;
  v41 = 0;
  v42 = 49;
  v43 = 0xE100000000000000;
  v44 = 0;
  outlined retain of MLModelMetadata(v45);
  outlined release of MLModelMetadata(v40);
  qmemcpy(v47, v45, sizeof(v47));
  v31 = v55;
  MLActivityClassifier.Model.writeMLPackage(to:metadata:)(v30, v47);
  qmemcpy(v46, v47, sizeof(v46));
  outlined release of MLModelMetadata(v46);
  if (v31)
  {
    (v58)(v30, v59);
  }

  else
  {
    v32 = v53;
    v55 = v53[2];
    v55(v54, v30, v59);
    v33 = *(v32 + 80);
    v34 = ~*(v32 + 80) & (v33 + 16);
    v35 = swift_allocObject(&unk_390FC0, v34 + v51, v33 | 7);
    (v32[4])(v35 + v34, v54, v59);
    specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLActivityClassifier.Model.makeMLModel(), v35);

    type metadata accessor for MLModel();
    v36 = v52;
    v55(v52, v56, v59);
    v30 = @nonobjc MLModel.__allocating_init(contentsOf:)(v36);
    v38 = v59;
    v39 = v58;
    (v58)(v56, v59);
    v39(v57, v38);
  }

  return v30;
}

uint64_t closure #1 in MLActivityClassifier.Model.makeMLModel()(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  *(v2 + 24) = a1;
  return swift_task_switch(closure #1 in MLActivityClassifier.Model.makeMLModel(), 0, 0);
}

uint64_t closure #1 in MLActivityClassifier.Model.makeMLModel()()
{
  v1 = objc_opt_self(MLModel);
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  *(v0 + 16) = 0;
  v4 = [(NSURL *)v1 compileModelAtURL:v2 error:v0 + 16];
  v5 = v4;

  v6 = *(v0 + 16);
  if (v5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v5);
    v6;
    v7 = v5;
  }

  else
  {
    v9 = *(v0 + 16);
    _convertNSErrorToError(_:)(v6);
    v7 = v9;

    swift_willThrow();
  }

  return (*(v0 + 8))(v7, "compileModelAtURL:error:", v8, __stack_chk_guard);
}

uint64_t outlined init with take of MLActivityClassifier.Configuration(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLActivityClassifier.Configuration(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of MLActivityClassifier.Model.MLPackageRepresentation(uint64_t a1)
{
  v1 = type metadata accessor for MLActivityClassifier.Model.MLPackageRepresentation(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t outlined consume of MLModelMetadata?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v9 = a6;
    v10 = a4;
    a2;
    v10;
    a8;
    v9;
    return a9;
  }

  return result;
}

unint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFLL;
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v5 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)(v5 & 0xFFFFFFFFFFFF0000, a1, a2);
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v8 = v14;
        v14[0] = a1;
        v14[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v9 = HIBYTE(a2) & 0xF;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v12 = v5 >> 16;
          v7 = _StringObject.sharedUTF8.getter(a1, a2);
          v2 = v13;
          v6 = v12;
        }

        v8 = v7;
        v9 = v2;
      }

      v10 = _decodeScalar(_:startingAt:)(v8, v9, v6);
    }
  }

  else
  {
    v10 = 0;
  }

  return ((v3 == 0) << 32) | v10;
}

unint64_t _StringGuts.validateScalarIndex(_:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a1;
  if ((a1 & 1) == 0 || (a1 & 0xC) == (4 << (((a3 & 0x1000000000000000) == 0) | ((a2 & 0x800000000000000) != 0))))
  {
    v6 = _StringGuts.validateSubscalarIndex(_:)(a1, a2, a3);
    v4 = v6;
    if ((v6 & 1) == 0)
    {
      return (_StringGuts.scalarAlignSlow(_:)(v6, a2, a3) & 0xFFFFFFFFFFFFFFF2) + (v6 & 0xC) + 1;
    }
  }

  else
  {
    v5 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v5 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (a1 >> 16 >= v5)
    {
      BUG();
    }
  }

  return v4;
}

unint64_t _StringGuts.validateSubscalarIndex(_:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a1 & 0xC) == 4 << ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0))
  {
    a1 = _StringGuts._slowEnsureMatchingEncoding(_:)(a1, a2, a3);
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 >> 16 >= v4)
  {
    BUG();
  }

  return a1;
}

uint64_t _StringGuts.scalarAlignSlow(_:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a1 & 0xC000) != 0 || a1 < &loc_10000)
  {
    a1 &= 0xFFFFFFFFFFFF0000;
    return a1;
  }

  v3 = a1 >> 16;
  if ((a3 & 0x1000000000000000) == 0)
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v12[0] = a2;
      v12[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      if (v3 != (HIBYTE(a3) & 0xF))
      {
          ;
        }
      }
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v4 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v5 = a2 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = _StringObject.sharedUTF8.getter(a2, a3);
        v5 = v10;
      }

      if (v3 != v5)
      {
          ;
        }
      }
    }

    return v3 << 16;
  }

  v9 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v9 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3 == v9)
  {
    return a1;
  }

  return _StringGuts.foreignScalarAlign(_:)(a1, a2, a3);
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = (a3 >> 60) & ((a2 & 0x800000000000000) == 0);
  v7 = a1 >> 16;
  v8 = a1 >> 14;
  if (v6 == 1)
  {
    v9 = String.UTF8View._foreignIndex(_:offsetBy:)(15, v7, a2);
    if (a1 >> 14)
    {
      v10 = ((v8 << 16) + v9) & 0xFFFFFFFFFFFF0000;
    }

    else
    {
      v10 = a1 & 3 | v9 & 0xFFFFFFFFFFFFFFFCLL;
    }

    return v10 | 8;
  }

  else
  {
    v11 = String.UTF16View.index(_:offsetBy:)(15, v7, a2);
    if (a1 >> 14)
    {
      v12 = ((v8 << 16) + v11) & 0xFFFFFFFFFFFF0000;
    }

    else
    {
      v12 = a1 & 3 | v11 & 0xFFFFFFFFFFFFFFFCLL;
    }

    return v12 | 4;
  }
}

void *outlined release of MLModelMetadata(void *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v3 = a1[5];
  v4 = a1[8];
  a1[7];
  v2;
  v1;
  v3;
  v4;
  return a1;
}

uint64_t sub_FD239()
{
  v1 = type metadata accessor for URL(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 16);
  v5 = v4 + v0;
  v6 = *(v2 + 64) + v4;
  (*(v2 + 8))(v5, v1);
  return swift_deallocObject(v0, v6, v3 | 7);
}

uint64_t partial apply for closure #1 in MLActivityClassifier.Model.makeMLModel()(uint64_t a1)
{
  v3 = type metadata accessor for URL(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLActivityClassifier.Model.makeMLModel()(a1, v4);
}

void *initializeBufferWithCopyOfBuffer for MLActivityClassifier.Model.MLPackageRepresentation(_OWORD *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v28 = *a2;
    *v3 = *a2;
    v3 = (v28 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
    v6 = type metadata accessor for LearningPhase(0);
    (*(*(v6 - 8) + 16))(a1 + v5, &a2[v5], v6);
    v7 = type metadata accessor for MLActivityClassifier.Model(0);
    v8 = v7[5];
    __dsta = type metadata accessor for Conv2D(0);
    v47 = *(*(__dsta - 1) + 16);
    v47(a1 + v8, &a2[v8], __dsta);
    v9 = v7[6];
    v41 = type metadata accessor for ReLU(0);
    v43 = *(*(v41 - 8) + 16);
    v43(a1 + v9, &a2[v9], v41);
    v10 = v7[7];
    v45 = type metadata accessor for Dropout(0);
    v46 = *(*(v45 - 8) + 16);
    v46(a1 + v10, &a2[v10], v45);
    v11 = v7[8];
    v12 = a1 + v11;
    v13 = &a2[v11];
    *(a1 + v11) = *&a2[v11];
    *(a1 + v11 + 16) = a2[v11 + 16];
    *(a1 + v11 + 17) = a2[v11 + 17];
    v14 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
    v15 = &v12[v14];
    v16 = &v13[v14];
    v17 = type metadata accessor for LSTM(0);
    (*(*(v17 - 8) + 16))(v15, v16, v17);
    v47(a1 + v7[9], &a2[v7[9]], __dsta);
    v18 = v7[10];
    v19 = type metadata accessor for BatchNorm(0);
    (*(*(v19 - 8) + 16))(a1 + v18, &a2[v18], v19);
    v43(a1 + v7[11], &a2[v7[11]], v41);
    v46(a1 + v7[12], &a2[v7[12]], v45);
    v47(a1 + v7[13], &a2[v7[13]], __dsta);
    *(a1 + v7[14]) = *&a2[v7[14]];
    *(a1 + v7[15]) = *&a2[v7[15]];
    v48 = v7;
    v20 = v7[16];
    v21 = a1 + v20;
    v22 = &a2[v20];
    *(a1 + v20) = *&a2[v20];
    *(a1 + v20 + 8) = *&a2[v20 + 8];
    *(a1 + v20 + 16) = a2[v20 + 16];
    *(a1 + v20 + 24) = *&a2[v20 + 24];
    *(a1 + v20 + 40) = *&a2[v20 + 40];
    *(a1 + v20 + 48) = *&a2[v20 + 48];
    *(a1 + v20 + 56) = *&a2[v20 + 56];
    *(a1 + v20 + 64) = *&a2[v20 + 64];
    *(a1 + v20 + 72) = *&a2[v20 + 72];
    v44 = type metadata accessor for MLActivityClassifier.Configuration(0);
    v23 = *(v44 + 44);
    v42 = v21;
    __dst = &v21[v23];
    v24 = v22;
    v25 = &v22[v23];
    v26 = type metadata accessor for DataFrame(0);

    if (__swift_getEnumTagSinglePayload(v25, 1, v26))
    {
      v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(__dst, v25, *(*(v27 - 8) + 64));
    }

    else
    {
      (*(*(v26 - 8) + 16))(__dst, v25, v26);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v26);
    }

    v29 = *(v44 + 48);
    v30 = &v42[v29];
    v31 = &v24[v29];
    if (__swift_getEnumTagSinglePayload(v31, 1, v26))
    {
      v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(v30, v31, *(*(v32 - 8) + 64));
    }

    else
    {
      (*(*(v26 - 8) + 16))(v30, v31, v26);
      __swift_storeEnumTagSinglePayload(v30, 0, 1, v26);
    }

    v33 = v48[17];
    v34 = *&a2[v33];
    *(v3 + v33) = v34;
    v35 = v48[18];
    v36 = (v3 + v35);
    v37 = &a2[v35];
    v38 = *&a2[v35];
    v34;
    if (v38)
    {
      *v36 = v38;
      v36[1] = *(v37 + 1);
      v36[2] = *(v37 + 2);
    }

    else
    {
      v36[2] = *(v37 + 2);
      *v36 = *v37;
    }

    *(v3 + *(a3 + 20)) = *&a2[*(a3 + 20)];
  }

  return v3;
}

uint64_t destroy for MLActivityClassifier.Model.MLPackageRepresentation(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v3 = type metadata accessor for LearningPhase(0);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = type metadata accessor for MLActivityClassifier.Model(0);
  v5 = a1 + v4[5];
  v22 = type metadata accessor for Conv2D(0);
  v23 = *(*(v22 - 8) + 8);
  v23(v5, v22);
  v6 = a1 + v4[6];
  v24 = type metadata accessor for ReLU(0);
  v19 = *(*(v24 - 8) + 8);
  v19(v6, v24);
  v7 = a1 + v4[7];
  v20 = type metadata accessor for Dropout(0);
  v21 = *(*(v20 - 8) + 8);
  v21(v7, v20);
  v8 = a1 + v4[8];
  v9 = v8 + *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v10 = type metadata accessor for LSTM(0);
  (*(*(v10 - 8) + 8))(v9, v10);
  v23(a1 + v4[9], v22);
  v11 = a1 + v4[10];
  v12 = type metadata accessor for BatchNorm(0);
  (*(*(v12 - 8) + 8))(v11, v12);
  v19(a1 + v4[11], v24);
  v21(a1 + v4[12], v20);
  v23(a1 + v4[13], v22);
  *(a1 + v4[15]);
  v13 = (a1 + v4[16]);
  v13[5];
  v13[7];
  v13[9];
  v25 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v14 = v13 + *(v25 + 44);
  v15 = type metadata accessor for DataFrame(0);
  if (!__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  v16 = v13 + *(v25 + 48);
  if (!__swift_getEnumTagSinglePayload(v16, 1, v15))
  {
    (*(*(v15 - 8) + 8))(v16, v15);
  }

  v17 = v4[18];
  if (*(a1 + v17))
  {

    *(a1 + v17 + 16);
  }

  return *(a1 + *(a2 + 20));
}

char *initializeWithCopy for MLActivityClassifier.Model.MLPackageRepresentation(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v5 = type metadata accessor for LearningPhase(0);
  (*(*(v5 - 8) + 16))(&a1[v4], &a2[v4], v5);
  v6 = type metadata accessor for MLActivityClassifier.Model(0);
  v7 = v6[5];
  __dsta = type metadata accessor for Conv2D(0);
  v45 = *(*(__dsta - 1) + 16);
  v45(&a1[v7], &a2[v7], __dsta);
  v8 = v6[6];
  v39 = type metadata accessor for ReLU(0);
  v41 = *(*(v39 - 8) + 16);
  v41(&a1[v8], &a2[v8], v39);
  v9 = v6[7];
  v43 = type metadata accessor for Dropout(0);
  v44 = *(*(v43 - 8) + 16);
  v44(&a1[v9], &a2[v9], v43);
  v10 = v6[8];
  v11 = &a1[v10];
  v12 = &a2[v10];
  *&a1[v10] = *&a2[v10];
  a1[v10 + 16] = a2[v10 + 16];
  a1[v10 + 17] = a2[v10 + 17];
  v13 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v14 = &v11[v13];
  v15 = &v12[v13];
  v16 = type metadata accessor for LSTM(0);
  (*(*(v16 - 8) + 16))(v14, v15, v16);
  v45(&a1[v6[9]], &a2[v6[9]], __dsta);
  v17 = v6[10];
  v18 = type metadata accessor for BatchNorm(0);
  (*(*(v18 - 8) + 16))(&a1[v17], &a2[v17], v18);
  v41(&a1[v6[11]], &a2[v6[11]], v39);
  v44(&a1[v6[12]], &a2[v6[12]], v43);
  v45(&a1[v6[13]], &a2[v6[13]], __dsta);
  *&a1[v6[14]] = *&a2[v6[14]];
  *&a1[v6[15]] = *&a2[v6[15]];
  v19 = v6[16];
  v20 = &a1[v19];
  v21 = &a2[v19];
  *&a1[v19] = *&a2[v19];
  *&a1[v19 + 8] = *&a2[v19 + 8];
  a1[v19 + 16] = a2[v19 + 16];
  *&a1[v19 + 24] = *&a2[v19 + 24];
  *&a1[v19 + 40] = *&a2[v19 + 40];
  *&a1[v19 + 48] = *&a2[v19 + 48];
  *&a1[v19 + 56] = *&a2[v19 + 56];
  *&a1[v19 + 64] = *&a2[v19 + 64];
  *&a1[v19 + 72] = *&a2[v19 + 72];
  v42 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v22 = *(v42 + 44);
  v40 = v20;
  __dst = &v20[v22];
  v23 = v21;
  v24 = &v21[v22];
  v25 = type metadata accessor for DataFrame(0);

  if (__swift_getEnumTagSinglePayload(v24, 1, v25))
  {
    v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v24, *(*(v26 - 8) + 64));
  }

  else
  {
    (*(*(v25 - 8) + 16))(__dst, v24, v25);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v25);
  }

  v27 = *(v42 + 48);
  v28 = &v40[v27];
  v29 = &v23[v27];
  if (__swift_getEnumTagSinglePayload(v29, 1, v25))
  {
    v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v28, v29, *(*(v30 - 8) + 64));
  }

  else
  {
    (*(*(v25 - 8) + 16))(v28, v29, v25);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v25);
  }

  v31 = v6[17];
  v32 = *&a2[v31];
  *&a1[v31] = v32;
  v33 = v6[18];
  v34 = &a1[v33];
  v35 = &a2[v33];
  v36 = *&a2[v33];
  v32;
  if (v36)
  {
    *v34 = v36;
    *(v34 + 1) = *(v35 + 1);
    *(v34 + 2) = *(v35 + 2);
  }

  else
  {
    *(v34 + 2) = *(v35 + 2);
    *v34 = *v35;
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

char *assignWithCopy for MLActivityClassifier.Model.MLPackageRepresentation(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v4 = type metadata accessor for LearningPhase(0);
  (*(*(v4 - 8) + 24))(&a1[v3], &a2[v3], v4);
  v5 = type metadata accessor for MLActivityClassifier.Model(0);
  v6 = v5[5];
  __src = type metadata accessor for Conv2D(0);
  v61 = *(*(__src - 1) + 24);
  v61(&a1[v6], &a2[v6], __src);
  v7 = v5[6];
  v58 = type metadata accessor for ReLU(0);
  v53 = *(*(v58 - 8) + 24);
  v53(&a1[v7], &a2[v7], v58);
  v8 = v5[7];
  v55 = type metadata accessor for Dropout(0);
  v57 = *(*(v55 - 8) + 24);
  v57(&a1[v8], &a2[v8], v55);
  v9 = v5[8];
  v10 = &a1[v9];
  v11 = &a2[v9];
  *&a1[v9] = *&a2[v9];
  *&a1[v9 + 8] = *&a2[v9 + 8];
  a1[v9 + 16] = a2[v9 + 16];
  a1[v9 + 17] = a2[v9 + 17];
  v12 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v13 = &v10[v12];
  v14 = &v11[v12];
  v15 = type metadata accessor for LSTM(0);
  (*(*(v15 - 8) + 24))(v13, v14, v15);
  v61(&a1[v5[9]], &a2[v5[9]], __src);
  v16 = v5[10];
  v17 = type metadata accessor for BatchNorm(0);
  (*(*(v17 - 8) + 24))(&a1[v16], &a2[v16], v17);
  v53(&a1[v5[11]], &a2[v5[11]], v58);
  v57(&a1[v5[12]], &a2[v5[12]], v55);
  v61(&a1[v5[13]], &a2[v5[13]], __src);
  *&a1[v5[14]] = *&a2[v5[14]];
  v18 = v5[15];
  v19 = *&a1[v18];
  *&a1[v18] = *&a2[v18];

  v19;
  v54 = v5;
  v20 = v5[16];
  *&a1[v20] = *&a2[v20];
  *&a1[v20 + 8] = *&a2[v20 + 8];
  a1[v20 + 16] = a2[v20 + 16];
  *&a1[v20 + 24] = *&a2[v20 + 24];
  *&a1[v20 + 32] = *&a2[v20 + 32];
  v21 = *&a1[v20 + 40];
  *&a1[v20 + 40] = *&a2[v20 + 40];

  v21;
  *&a1[v20 + 48] = *&a2[v20 + 48];
  v22 = *&a1[v20 + 56];
  *&a1[v20 + 56] = *&a2[v20 + 56];

  v22;
  *&a1[v20 + 64] = *&a2[v20 + 64];
  v23 = &a2[v20];
  v24 = &a1[v20];
  v25 = *&a1[v20 + 72];
  *&a1[v20 + 72] = *&a2[v20 + 72];

  v25;
  v56 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v26 = *(v56 + 44);
  v27 = &v24[v26];
  v28 = &v23[v26];
  v29 = type metadata accessor for DataFrame(0);
  __dst = v27;
  LODWORD(v27) = __swift_getEnumTagSinglePayload(v27, 1, v29);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v29);
  if (v27)
  {
    if (EnumTagSinglePayload)
    {
      v31 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v32 = __dst;
LABEL_6:
      memcpy(v32, v28, v31);
      goto LABEL_9;
    }

    (*(*(v29 - 8) + 16))(__dst, v28, v29);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v29);
  }

  else
  {
    v33 = *(v29 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v33 + 8))(__dst, v29);
      v31 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v32 = __dst;
      goto LABEL_6;
    }

    (*(v33 + 24))(__dst, v28, v29);
  }

LABEL_9:
  v34 = *(v56 + 48);
  v35 = &v24[v34];
  v36 = &v23[v34];
  v37 = __swift_getEnumTagSinglePayload(v35, 1, v29);
  v38 = __swift_getEnumTagSinglePayload(v36, 1, v29);
  if (v37)
  {
    if (!v38)
    {
      (*(*(v29 - 8) + 16))(v35, v36, v29);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v29);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v39 = *(v29 - 8);
  if (v38)
  {
    (*(v39 + 8))(v35, v29);
LABEL_14:
    v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v35, v36, *(*(v40 - 8) + 64));
    goto LABEL_15;
  }

  (*(v39 + 24))(v35, v36, v29);
LABEL_15:
  v41 = v54[17];
  v42 = *&a1[v41];
  v43 = *&a2[v41];
  *&a1[v41] = v43;
  v43;

  v44 = v54[18];
  v45 = &a1[v44];
  v46 = &a2[v44];
  v47 = *&a2[v44];
  if (*&a1[v44])
  {
    if (v47)
    {
      *v45 = v47;

      *(v45 + 1) = *(v46 + 1);

      v48 = *(v45 + 2);
      *(v45 + 2) = *(v46 + 2);

      v48;
    }

    else
    {
      outlined destroy of ClassificationMetricsContainer(v45);
      *v45 = *v46;
      *(v45 + 2) = *(v46 + 2);
    }
  }

  else if (v47)
  {
    *v45 = v47;
    *(v45 + 1) = *(v46 + 1);
    *(v45 + 2) = *(v46 + 2);
  }

  else
  {
    *(v45 + 2) = *(v46 + 2);
    *v45 = *v46;
  }

  v49 = *(a3 + 20);
  v50 = *&a1[v49];
  *&a1[v49] = *&a2[v49];

  v50;
  return a1;
}

char *initializeWithTake for MLActivityClassifier.Model.MLPackageRepresentation(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v4 = type metadata accessor for LearningPhase(0);
  (*(*(v4 - 8) + 32))(&a1[v3], &a2[v3], v4);
  v5 = type metadata accessor for MLActivityClassifier.Model(0);
  v6 = *(v5 + 20);
  v38 = type metadata accessor for Conv2D(0);
  v40 = *(*(v38 - 8) + 32);
  v40(&a1[v6], &a2[v6], v38);
  v7 = v5;
  v8 = *(v5 + 24);
  v34 = type metadata accessor for ReLU(0);
  v36 = *(*(v34 - 8) + 32);
  v36(&a1[v8], &a2[v8], v34);
  v9 = v7[7];
  __dsta = type metadata accessor for Dropout(0);
  v33 = *(*(__dsta - 1) + 32);
  v33(&a1[v9], &a2[v9], __dsta);
  v10 = v7[8];
  v11 = &a1[v10];
  v12 = &a2[v10];
  *&a1[v10] = *&a2[v10];
  a1[v10 + 16] = a2[v10 + 16];
  a1[v10 + 17] = a2[v10 + 17];
  v13 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v14 = &v11[v13];
  v15 = &v12[v13];
  v16 = type metadata accessor for LSTM(0);
  (*(*(v16 - 8) + 32))(v14, v15, v16);
  v40(&a1[v7[9]], &a2[v7[9]], v38);
  v17 = v7[10];
  v18 = type metadata accessor for BatchNorm(0);
  (*(*(v18 - 8) + 32))(&a1[v17], &a2[v17], v18);
  v36(&a1[v7[11]], &a2[v7[11]], v34);
  v33(&a1[v7[12]], &a2[v7[12]], __dsta);
  v40(&a1[v7[13]], &a2[v7[13]], v38);
  *&a1[v7[14]] = *&a2[v7[14]];
  *&a1[v7[15]] = *&a2[v7[15]];
  v41 = v7;
  v19 = v7[16];
  v20 = &a1[v19];
  v21 = &a2[v19];
  *&a1[v19] = *&a2[v19];
  *&a1[v19 + 8] = *&a2[v19 + 8];
  a1[v19 + 16] = a2[v19 + 16];
  *&a1[v19 + 24] = *&a2[v19 + 24];
  *&a1[v19 + 40] = *&a2[v19 + 40];
  *&a1[v19 + 48] = *&a2[v19 + 48];
  *&a1[v19 + 64] = *&a2[v19 + 64];
  v37 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v22 = *(v37 + 44);
  v39 = v20;
  __dst = &v20[v22];
  v35 = v21;
  v23 = &v21[v22];
  v24 = type metadata accessor for DataFrame(0);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24))
  {
    v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v23, *(*(v25 - 8) + 64));
  }

  else
  {
    (*(*(v24 - 8) + 32))(__dst, v23, v24);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v24);
  }

  v26 = *(v37 + 48);
  v27 = &v39[v26];
  v28 = &v21[v26];
  if (__swift_getEnumTagSinglePayload(&v35[v26], 1, v24))
  {
    v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v27, v28, *(*(v29 - 8) + 64));
  }

  else
  {
    (*(*(v24 - 8) + 32))(v27, v28, v24);
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v24);
  }

  *&a1[v41[17]] = *&a2[v41[17]];
  v30 = v41[18];
  *&a1[v30 + 16] = *&a2[v30 + 16];
  *&a1[v30] = *&a2[v30];
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *assignWithTake for MLActivityClassifier.Model.MLPackageRepresentation(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v5 = type metadata accessor for LearningPhase(0);
  (*(*(v5 - 8) + 40))(&a1[v4], &a2[v4], v5);
  v6 = type metadata accessor for MLActivityClassifier.Model(0);
  v7 = *(v6 + 20);
  v8 = v6;
  v58 = type metadata accessor for Conv2D(0);
  v62 = *(*(v58 - 8) + 40);
  v62(&a1[v7], &a2[v7], v58);
  v9 = v8[6];
  v60 = type metadata accessor for ReLU(0);
  __srcb = *(*(v60 - 8) + 40);
  __srcb(&a1[v9], &a2[v9], v60);
  v10 = v8;
  v11 = v8[7];
  __dsta = type metadata accessor for Dropout(0);
  v56 = *(*(__dsta - 1) + 40);
  v56(&a1[v11], &a2[v11], __dsta);
  v12 = v8[8];
  v13 = &a1[v12];
  v14 = &a2[v12];
  *&a1[v12] = *&a2[v12];
  a1[v12 + 16] = a2[v12 + 16];
  a1[v12 + 17] = a2[v12 + 17];
  v15 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v16 = &v13[v15];
  v17 = &v14[v15];
  v18 = type metadata accessor for LSTM(0);
  (*(*(v18 - 8) + 40))(v16, v17, v18);
  v62(&a1[v10[9]], &a2[v10[9]], v58);
  v19 = v10[10];
  v20 = type metadata accessor for BatchNorm(0);
  (*(*(v20 - 8) + 40))(&a1[v19], &a2[v19], v20);
  __srcb(&a1[v10[11]], &a2[v10[11]], v60);
  v56(&a1[v10[12]], &a2[v10[12]], __dsta);
  v62(&a1[v10[13]], &a2[v10[13]], v58);
  *&a1[v10[14]] = *&a2[v10[14]];
  v21 = v10[15];
  v22 = *&a1[v21];
  *&a1[v21] = *&a2[v21];
  v22;
  v59 = v10;
  v23 = v10[16];
  *&a1[v23] = *&a2[v23];
  *&a1[v23 + 8] = *&a2[v23 + 8];
  a1[v23 + 16] = a2[v23 + 16];
  *&a1[v23 + 24] = *&a2[v23 + 24];
  v24 = *&a1[v23 + 40];
  *&a1[v23 + 40] = *&a2[v23 + 40];
  v24;
  *&a1[v23 + 48] = *&a2[v23 + 48];
  v25 = *&a1[v23 + 56];
  *&a1[v23 + 56] = *&a2[v23 + 56];
  v25;
  *&a1[v23 + 64] = *&a2[v23 + 64];
  v26 = &a2[v23];
  v27 = *&a1[v23 + 72];
  v61 = a1;
  *&a1[v23 + 72] = *&a2[v23 + 72];
  v27;
  __src = type metadata accessor for MLActivityClassifier.Configuration(0);
  v28 = __src[11];
  v57 = &a1[v23];
  v29 = &a1[v23 + v28];
  v30 = &a2[v23 + v28];
  v31 = type metadata accessor for DataFrame(0);
  __dst = v29;
  LODWORD(v29) = __swift_getEnumTagSinglePayload(v29, 1, v31);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v31);
  if (v29)
  {
    if (EnumTagSinglePayload)
    {
      v33 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v34 = __dst;
LABEL_6:
      memcpy(v34, v30, v33);
      goto LABEL_9;
    }

    (*(*(v31 - 8) + 32))(__dst, v30, v31);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v31);
  }

  else
  {
    v35 = *(v31 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v35 + 8))(__dst, v31);
      v33 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v34 = __dst;
      goto LABEL_6;
    }

    (*(v35 + 40))(__dst, v30, v31);
  }

LABEL_9:
  v36 = __src[12];
  v37 = &v26[v36];
  v38 = &v57[v36];
  v39 = __swift_getEnumTagSinglePayload(&v57[v36], 1, v31);
  __srca = v37;
  v40 = __swift_getEnumTagSinglePayload(v37, 1, v31);
  if (v39)
  {
    v41 = a2;
    v42 = v61;
    if (!v40)
    {
      (*(*(v31 - 8) + 32))(v38, __srca, v31);
      __swift_storeEnumTagSinglePayload(v38, 0, 1, v31);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v43 = *(v31 - 8);
  v41 = a2;
  v42 = v61;
  if (v40)
  {
    (*(v43 + 8))(v38, v31);
LABEL_14:
    v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v38, __srca, *(*(v44 - 8) + 64));
    goto LABEL_15;
  }

  (*(v43 + 40))(v38, __srca, v31);
LABEL_15:
  v45 = v59[17];
  v46 = *&v42[v45];
  *&v42[v45] = *&v41[v45];

  v47 = v59[18];
  v48 = &v42[v47];
  v49 = &v41[v47];
  if (*&v42[v47])
  {
    v50 = *&v41[v47];
    if (v50)
    {
      *v48 = v50;

      *(v48 + 1) = *(v49 + 1);

      v51 = *(v48 + 2);
      *(v48 + 2) = *(v49 + 2);
      v51;
    }

    else
    {
      outlined destroy of ClassificationMetricsContainer(v48);
      *v48 = *v49;
      *(v48 + 2) = *(v49 + 2);
    }
  }

  else
  {
    *(v48 + 2) = *(v49 + 2);
    *v48 = *v49;
  }

  v52 = *(a3 + 20);
  v53 = *&v42[v52];
  *&v42[v52] = *&v41[v52];
  v53;
  return v42;
}

uint64_t sub_FEA0B(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = type metadata accessor for MLActivityClassifier.Model(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(a1, a2, v5);
  }

  if ((*(a1 + *(a3 + 20)) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 20)) >> 1) + 1;
  }

  return v4;
}

uint64_t sub_FEA85(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = type metadata accessor for MLActivityClassifier.Model(0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
  }

  result = *(a4 + 20);
  *(a1 + result) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata completion function for MLActivityClassifier.Model.MLPackageRepresentation(uint64_t a1)
{
  result = type metadata accessor for MLActivityClassifier.Model(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.BridgeObject + 64;
    swift_initStructMetadata(a1, 256, 2, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions()
{
  result = lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLImageClassifier.ImageAugmentationOptions, &type metadata for MLImageClassifier.ImageAugmentationOptions);
    lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLImageClassifier.ImageAugmentationOptions, &type metadata for MLImageClassifier.ImageAugmentationOptions);
    lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLImageClassifier.ImageAugmentationOptions, &type metadata for MLImageClassifier.ImageAugmentationOptions);
    lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLImageClassifier.ImageAugmentationOptions, &type metadata for MLImageClassifier.ImageAugmentationOptions);
    lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions = result;
  }

  return result;
}

BOOL specialized SetAlgebra.isSubset(of:)(uint64_t a1, uint64_t a2)
{
  return (~a1 & a2) == 0;
}

{
  return specialized SetAlgebra.isSubset(of:)(a1, a2);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MLImageClassifier.ImageAugmentationOptions(uint64_t *a1)
{
  v2 = v1;
  MLImageClassifier.ImageAugmentationOptions.init(rawValue:)(*a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MLImageClassifier.ImageAugmentationOptions(uint64_t a1)
{
  v2 = v1;
  result = MLImageClassifier.ImageAugmentationOptions.rawValue.getter();
  *v2 = result;
  return result;
}

uint64_t closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:)(char a1)
{
  v92 = v1;
  v90 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0);
  v91 = *(v90 - 8);
  v2 = *(v91 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v106 = v86;
  v105 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0);
  v93 = *(v105 - 8);
  v5 = *(v93 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v125 = v86;
  v107 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0);
  v94 = *(v107 - 8);
  v8 = *(v94 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v126 = v86;
  v108 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0);
  v95 = *(v108 - 8);
  v11 = *(v95 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v127 = v86;
  v109 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0);
  v96 = *(v109 - 8);
  v14 = *(v96 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v128 = v86;
  v110 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0);
  v97 = *(v110 - 8);
  v17 = *(v97 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v129 = v86;
  v98 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  v99 = *(v98 - 8);
  v20 = *(v99 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v113 = v86;
  v111 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  v100 = *(v111 - 8);
  v23 = *(v100 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v130 = v86;
  v112 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  v101 = *(v112 - 8);
  v26 = *(v101 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v131 = v86;
  v114 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  v102 = *(v114 - 8);
  v29 = *(v102 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v132 = v86;
  v115 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  v103 = *(v115 - 8);
  v32 = *(v103 + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v133 = v86;
  v35 = alloca(v32);
  v36 = alloca(v32);
  v134 = v86;
  v116 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  v104 = *(v116 - 8);
  v37 = *(v104 + 64);
  v38 = alloca(v37);
  v39 = alloca(v37);
  v40 = 0;
  v119 = 0.0;
  if (a1)
  {
    v40 = 0x3FF0000000000000;
  }

  v135 = *&v40;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0);
  v42 = type metadata accessor for CIImage();
  v43 = type metadata accessor for ImageBlur(255);
  v120 = v42;
  v121 = v43;
  v122 = &protocol witness table for ImageBlur;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>, 1);
  v117 = v86;
  ApplyRandomly.init<A>(probability:_:)(partial apply for closure #1 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:), v86, v41, v42, OpaqueTypeConformance2, v135);
  v45 = 0;
  if ((a1 & 2) != 0)
  {
    v45 = 0x3FE0000000000000;
  }

  v135 = *&v45;
  v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0);
  v47 = type metadata accessor for ImageFlipper(255);
  v120 = v42;
  v121 = v47;
  v122 = &protocol witness table for ImageFlipper;
  v48 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>, 1);
  ApplyRandomly.init<A>(probability:_:)(closure #2 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:), 0, v46, v42, v48, v135);
  ApplyRandomly.init<A>(probability:_:)(closure #3 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:), 0, v46, v42, v48, v135);
  v49 = 0;
  if ((a1 & 4) != 0)
  {
    v49 = 0x3FF0000000000000;
  }

  v135 = *&v49;
  v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0);
  v51 = type metadata accessor for ImageExposureAdjuster(255);
  v120 = v42;
  v121 = v51;
  v122 = &protocol witness table for ImageExposureAdjuster;
  v52 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>, 1);
  ApplyRandomly.init<A>(probability:_:)(partial apply for closure #4 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:), v87, v50, v42, v52, v135);
  v53 = 0;
  if ((a1 & 8) != 0)
  {
    v53 = 0x3FF0000000000000;
  }

  v135 = *&v53;
  v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0);
  v55 = type metadata accessor for RandomImageNoiseGenerator(255);
  v120 = v42;
  v121 = v55;
  v122 = &protocol witness table for RandomImageNoiseGenerator;
  v56 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>, 1);
  ApplyRandomly.init<A>(probability:_:)(partial apply for closure #5 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:), v88, v54, v42, v56, v135);
  v57 = 0;
  if ((a1 & 0x10) != 0)
  {
    v57 = 0x3FF0000000000000;
  }

  v135 = *&v57;
  v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0);
  v59 = type metadata accessor for ImageRotator(255);
  v120 = v42;
  v121 = v59;
  v122 = &protocol witness table for ImageRotator;
  v60 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>, 1);
  ApplyRandomly.init<A>(probability:_:)(partial apply for closure #6 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:), v89, v58, v42, v60, v135);
  if ((a1 & 0x20) != 0)
  {
    v119 = 1.0;
  }

  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0);
  type metadata accessor for RandomImageCropper(255);
  v62 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>, 1);
  ApplyRandomly.init<A>(probability:_:)(closure #7 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:), 0, v61, v42, v62, v119);
  v63 = lazy protocol witness table accessor for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>(&lazy protocol witness table cache variable for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>, &demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  static AugmentationBuilder.buildPartialBlock<A>(first:)(v117, v42, v116, v63);
  v64 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>, 1);
  v65 = lazy protocol witness table accessor for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>(&lazy protocol witness table cache variable for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>, &demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  v66 = v115;
  static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)(v129, v134, v42, v110, v115, v64, v65);
  v67 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)>>, 1);
  v118 = v42;
  static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)(v128, v133, v42, v109, v66, v67, v65);
  v68 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)>>, 1);
  v69 = lazy protocol witness table accessor for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>(&lazy protocol witness table cache variable for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>, &demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  v70 = v118;
  static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)(v127, v132, v118, v108, v114, v68, v69);
  v71 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)>>, 1);
  v72 = lazy protocol witness table accessor for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>(&lazy protocol witness table cache variable for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>, &demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)(v126, v131, v70, v107, v112, v71, v72);
  v73 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)>>, 1);
  v74 = lazy protocol witness table accessor for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>(&lazy protocol witness table cache variable for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>, &demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  v75 = v105;
  v76 = v111;
  static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)(v125, v130, v70, v105, v111, v73, v74);
  v120 = v70;
  v121 = v75;
  v122 = v76;
  v123 = v73;
  v124 = v74;
  v77 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)>>, 1);
  v78 = lazy protocol witness table accessor for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>(&lazy protocol witness table cache variable for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>, &demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  v79 = v106;
  v80 = v113;
  v81 = v90;
  v82 = v98;
  static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)(v106, v113, v118, v90, v98, v77, v78);
  (*(v91 + 8))(v79, v81);
  (*(v93 + 8))(v125, v105);
  (*(v94 + 8))(v126, v107);
  (*(v95 + 8))(v127, v108);
  (*(v96 + 8))(v128, v109);
  (*(v97 + 8))(v129, v110);
  (*(v99 + 8))(v80, v82);
  (*(v100 + 8))(v130, v111);
  (*(v101 + 8))(v131, v112);
  (*(v102 + 8))(v132, v114);
  v83 = *(v103 + 8);
  v84 = v115;
  v83(v133, v115);
  v83(v134, v84);
  return (*(v104 + 8))(v117, v116);
}

uint64_t closure #1 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:)(uint64_t a1, uint64_t a2)
{
  v12[0] = v2;
  v3 = type metadata accessor for ImageBlur(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v9 = specialized RandomNumberGenerator.next<A>(upperBound:)(0x20uLL, a2, v8);
  ImageBlur.init(radius:)((v9 + 1));
  v10 = type metadata accessor for CIImage();
  static AugmentationBuilder.buildPartialBlock<A>(first:)(v12, v10, v3, &protocol witness table for ImageBlur);
  return (*(v4 + 8))(v12, v3);
}

uint64_t type metadata accessor for CIImage()
{
  result = lazy cache variable for type metadata for CIImage;
  if (!lazy cache variable for type metadata for CIImage)
  {
    v1 = objc_opt_self(CIImage);
    result = swift_getObjCClassMetadata(v1);
    lazy cache variable for type metadata for CIImage = result;
  }

  return result;
}

uint64_t closure #2 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:)(unsigned int *a1)
{
  v15 = a1;
  v13 = v1;
  v2 = type metadata accessor for ImageFlipper.Orientation(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for ImageFlipper(0);
  v14 = *(v7 - 8);
  v8 = *(v14 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  (*(v3 + 104))(&v13, *v15, v2);
  ImageFlipper.init(orientation:)(&v13);
  v11 = type metadata accessor for CIImage();
  static AugmentationBuilder.buildPartialBlock<A>(first:)(&v13, v11, v7, &protocol witness table for ImageFlipper);
  return (*(v14 + 8))(&v13, v7);
}

uint64_t closure #4 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:)(uint64_t a1, uint64_t a2)
{
  v12[0] = v2;
  v3 = type metadata accessor for ImageExposureAdjuster(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v9 = specialized RandomNumberGenerator.next<A>(upperBound:)(0xBuLL, a2, v8);
  ImageExposureAdjuster.init(amount:)((v9 - 5) / 5.0);
  v10 = type metadata accessor for CIImage();
  static AugmentationBuilder.buildPartialBlock<A>(first:)(v12, v10, v3, &protocol witness table for ImageExposureAdjuster);
  return (*(v4 + 8))(v12, v3);
}

uint64_t closure #5 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:)(uint64_t a1, uint64_t a2)
{
  v12[0] = v2;
  v3 = type metadata accessor for RandomImageNoiseGenerator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v9 = specialized RandomNumberGenerator.next<A>(upperBound:)(0xBuLL, a2, v8);
  RandomImageNoiseGenerator.init(intensity:)(v9 / 10.0);
  v10 = type metadata accessor for CIImage();
  static AugmentationBuilder.buildPartialBlock<A>(first:)(v12, v10, v3, &protocol witness table for RandomImageNoiseGenerator);
  return (*(v4 + 8))(v12, v3);
}

uint64_t closure #6 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:)(uint64_t a1, uint64_t a2)
{
  v12[0] = v2;
  v3 = type metadata accessor for ImageRotator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v9 = specialized RandomNumberGenerator.next<A>(upperBound:)(0xBuLL, a2, v8);
  ImageRotator.init(angle:)((v9 - 5) + (v9 - 5));
  v10 = type metadata accessor for CIImage();
  static AugmentationBuilder.buildPartialBlock<A>(first:)(v12, v10, v3, &protocol witness table for ImageRotator);
  return (*(v4 + 8))(v12, v3);
}

uint64_t closure #7 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:)()
{
  v0 = type metadata accessor for RandomImageCropper(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  RandomImageCropper.init(scale:aspectRatio:)(0x3FF0000000000000, 0, 0.8, 1.0);
  v5 = type metadata accessor for CIImage();
  static AugmentationBuilder.buildPartialBlock<A>(first:)(v7, v5, v0, &protocol witness table for RandomImageCropper);
  return (*(v1 + 8))(v7, v0);
}

uint64_t lazy protocol witness table accessor for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(a2);
    result = swift_getWitnessTable(&protocol conformance descriptor for ApplyRandomly<A>, v3);
    *a1 = result;
  }

  return result;
}

uint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t a1)
{
  if (!a1)
  {
    BUG();
  }

  v1 = a1 * MersenneTwisterGenerator.next()();
  v2 = *(&v1 + 1);
  if (v1 < a1 && -a1 % a1 > v1)
  {
    do
    {
      v3 = a1 * MersenneTwisterGenerator.next()();
    }

    while (-a1 % a1 > v3);
    return *(&v3 + 1);
  }

  return v2;
}

uint64_t static MLObjectDetector.validateInput(trainingData:imageColumn:annotationColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = v5;
  v21 = a5;
  v22 = a4;
  v20 = a3;
  v6 = *a1;
  v7 = *(a1 + 8);
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v24, v13);
  inited[2] = 1;
  inited[3] = 2;
  v17 = a2;
  inited[4] = a2;
  inited[5] = v20;
  v23 = v6;
  v18 = v6;
  v27 = v7;
  v19 = v7;

  v9 = v16;
  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v18, 0x4C52556567616D49, 0xE800000000000000, inited);
  if (v9)
  {
    swift_setDeallocating(inited);
  }

  else
  {
    v18 = v23;
    v19 = v27;
    v11 = swift_initStackObject(v24, v14);
    v11[2] = 1;
    v11[3] = 2;
    v11[4] = v22;
    v11[5] = v21;

    static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v18, 0x697461746F6E6E41, 0xEA00000000006E6FLL, v11);
    swift_setDeallocating(v11);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v18 = v23;
    v19 = v27;
    v12 = swift_initStackObject(v24, v15);
    v12[2] = 1;
    v12[3] = 2;
    v12[4] = v17;
    v12[5] = v20;
    v25 = 2;
    v26 = 3;

    static _ValidationUtilities.validateTableTypes(table:featureColumns:featureType:labelColumn:labelType:)(&v18, v12, &v25, v22, v21, &v26);
    swift_setDeallocating(v12);
  }

  return specialized _ContiguousArrayStorage.__deallocating_deinit();
}

uint64_t static MLObjectDetector.validateAndConvertParameters(_:annotationType:imageColumn:annotationColumn:table:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, __m128 a7, uint64_t *a8)
{
  v9 = a2[1];
  v10 = a2[2];
  v11 = *a8;
  v12 = *(a8 + 8);
  LOBYTE(v24) = *a2;
  BYTE1(v24) = v9;
  BYTE2(v24) = v10;
  result = static MLObjectDetector.validateAndConvertParameters(_:annotationType:imageColumn:annotationColumn:)(a1, &v24, a3, a4, a5, a6);
  if (!v8)
  {
    v27 = result;
    v19 = v11;
    v20 = v12 & 1;
    MLObjectDetector.ModelParameters.ValidationData.generateTables(trainingData:)(&v24, &v21, &v19, a7);
    v14 = v25;
    v23 = v21;
    v15 = v22;
    v26 = v24;
    CMLParameters.setTraining(table:)(&v24);
    v29 = v14;
    if (v15 == 0xFF)
    {
      outlined consume of Result<_DataTable, Error>(v26, v29);
      return v27;
    }

    else
    {
      v24 = v23;
      v16 = v15;
      v25 = v15 & 1;
      v17 = v23;
      outlined copy of Result<_DataTable, Error>(v23, v16);
      v18 = v27;
      CMLParameters.setValidation(table:)(&v24);
      v28 = v16;
      outlined consume of MLDataTable?(v17, v16);
      outlined consume of Result<_DataTable, Error>(v26, v29);
      outlined consume of MLDataTable?(v17, v28);
      return v18;
    }
  }

  return result;
}

uint64_t static MLObjectDetector.validateAndConvertParameters(_:annotationType:imageColumn:annotationColumn:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  inited = v6;
  v77 = a6;
  v73 = a5;
  v74 = a1;
  v76 = type metadata accessor for _Model.Parameters(0);
  v9 = *(*(v76 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v68 = &v62;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v69 = &v62;
  v14 = alloca(v9);
  v15 = alloca(v9);
  v70 = &v62;
  v16 = alloca(v9);
  v17 = alloca(v9);
  v75 = &v62;
  v80 = *a2;
  v79 = a2[1];
  v72 = a2[2];
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v19 = empty;
  v20 = type metadata accessor for CMLParameters();
  v21 = swift_allocObject(v20, 24, 7);
  *(v21 + 16) = v19;
  type metadata accessor for CMLFeatureValue();

  v22 = inited;
  v23 = CMLFeatureValue.__allocating_init(_:)(a3, a4);
  if (v22)
  {
    swift_unexpectedError(v22, "CreateML/MLDataValueConvertible.swift", 37, 1, 170);
    BUG();
  }

  CMLParameters.add(key:featureValue:)(1, v23);

  v24 = v77;

  v25 = CMLFeatureValue.__allocating_init(_:)(v73, v24);
  CMLParameters.add(key:featureValue:)(56, v25);

  v27 = tc_v1_flex_dict_create(0);
  if (!v27)
  {
    BUG();
  }

  v28 = v27;
  v29 = type metadata accessor for CMLDictionary();
  inited = swift_initStackObject(v29, v63);
  *(inited + 16) = v28;
  v30 = type metadata accessor for MLObjectDetector.ModelParameters(0);
  v31 = v30[6];
  v32 = v74;
  v33 = *(v74 + v31 + 8) == 0;
  v77 = v30;
  if (v33)
  {
    v34 = v75;
    *v75 = *(v74 + v31);
    swift_storeEnumTagMultiPayload(v34, v76, 0);
    CMLDictionary.add(_:)(v34);
    v32 = v74;
    outlined destroy of _Model.Parameters(v34);
    v30 = v77;
  }

  v35 = v30[5];
  if (!*(v32 + v35 + 8))
  {
    v36 = v75;
    *v75 = *(v32 + v35);
    swift_storeEnumTagMultiPayload(v36, v76, 1);
    CMLDictionary.add(_:)(v36);
    v32 = v74;
    outlined destroy of _Model.Parameters(v36);
    v30 = v77;
  }

  v37 = *(v32 + v30[7]);
  if (v37 <= 0 || (v38 = *(v32 + v30[8]), v38 <= 0))
  {
    v45 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v45, 0, 0);
    *v46 = 0xD000000000000035;
    *(v46 + 8) = "or is of the wrong size" + 0x8000000000000000;
    *(v46 + 16) = 0;
    *(v46 + 32) = 0;
    *(v46 + 48) = 0;
    swift_willThrow();
    v47 = inited;
    goto LABEL_42;
  }

  v39 = v37;
  if (v37 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v39 >= 9.223372036854776e18)
  {
    BUG();
  }

  v40 = v38;
  if (v38 <= -9.223372036854778e18)
  {
    BUG();
  }

  v73 = 0;
  v71 = v21;
  if (v40 >= 9.223372036854776e18)
  {
    BUG();
  }

  v41 = 0x2D74656E6B726164;
  v42 = v75;
  *v75 = v39;
  *(v42 + 8) = v40;
  swift_storeEnumTagMultiPayload(v42, v76, 13);
  CMLDictionary.add(_:)(v42);
  outlined destroy of _Model.Parameters(v42);
  outlined init with copy of Any?(v32 + v77[10], v64);
  if (!v65)
  {
    outlined destroy of Any?(v64);
    goto LABEL_25;
  }

  if (!swift_dynamicCast(v66, v64, &type metadata for Any + 8, &type metadata for MLObjectDetector.ModelParameters.ModelAlgorithmType, 6))
  {
LABEL_25:
    v44 = 0xEC0000006F6C6F79;
    goto LABEL_26;
  }

  if (!v67)
  {
    v41 = 0x74656E656E656373;
  }

  v43 = 0xEC0000006F6C6F79;
  if (!v67)
  {
    v43 = 0xE800000000000000;
  }

  v44 = v43;
LABEL_26:
  v48 = 0x7466656C5F706F74;
  v49 = v75;
  *v75 = v41;
  v49[1] = v44;
  v50 = v76;
  swift_storeEnumTagMultiPayload(v49, v76, 5);
  CMLDictionary.add(_:)(v49);
  outlined destroy of _Model.Parameters(v49);
  v51 = *(v74 + v77[9]);
  v52 = 1869903201;
  if (*(v74 + v77[9]))
  {
    v52 = 7696483;
  }

  *v49 = v52;
  v49[1] = ((v51 ^ 1u) << 56) - 0x1D00000000000000;
  swift_storeEnumTagMultiPayload(v49, v50, 9);
  CMLDictionary.add(_:)(v49);
  outlined destroy of _Model.Parameters(v49);
  v53 = 0x6C65786970;
  if (v80)
  {
    v53 = 0x7A696C616D726F6ELL;
  }

  v54 = 0xE500000000000000;
  if (v80)
  {
    v54 = 0xEA00000000006465;
  }

  v55 = v70;
  *v70 = v53;
  *(v55 + 8) = v54;
  swift_storeEnumTagMultiPayload(v55, v50, 10);
  CMLDictionary.add(_:)(v55);
  outlined destroy of _Model.Parameters(v55);
  v56 = 0x7466656C5F706F74;
  if (v79)
  {
    v56 = 0x6C5F6D6F74746F62;
  }

  v57 = 0xE800000000000000;
  if (v79)
  {
    v57 = 0xEB00000000746665;
  }

  v58 = v69;
  *v69 = v56;
  *(v58 + 8) = v57;
  swift_storeEnumTagMultiPayload(v58, v50, 11);
  CMLDictionary.add(_:)(v58);
  outlined destroy of _Model.Parameters(v58);
  if (v72)
  {
    v21 = v71;
    if (v72 == 1)
    {
      v59 = 0xE800000000000000;
    }

    else
    {
      v48 = 0x6C5F6D6F74746F62;
      v59 = 0xEB00000000746665;
    }
  }

  else
  {
    v59 = 0xE600000000000000;
    v48 = 0x7265746E6563;
    v21 = v71;
  }

  v60 = v68;
  *v68 = v48;
  *(v60 + 8) = v59;
  swift_storeEnumTagMultiPayload(v60, v76, 12);
  v47 = inited;
  CMLDictionary.add(_:)(v60);
  outlined destroy of _Model.Parameters(v60);
  v61 = v73;
  CMLParameters.setOptions(dictionary:)(v47);
  if (!v61)
  {
    swift_setDeallocating(v47);
    tc_v1_release(*(v47 + 16));
    return v21;
  }

LABEL_42:
  swift_setDeallocating(v47);
  tc_v1_release(*(v47 + 16));

  return v21;
}

uint64_t outlined destroy of _Model.Parameters(uint64_t a1)
{
  v1 = type metadata accessor for _Model.Parameters(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

NSURL *static _FileUtilities.prepareForWriting(to:isDirectory:)(uint64_t a1, char a2)
{
  v3 = type metadata accessor for URL(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v18 = v2;
  v19 = v3;
  v20 = v4;
  if (a2)
  {
    (*(v4 + 16))(&v18, a1, v3);
  }

  else
  {
    URL.deletingLastPathComponent()(0);
  }

  v8 = objc_opt_self(NSFileManager);
  v9 = [v8 defaultManager];
  v10 = v9;
  v21 = &v18;
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v22 = 0;
  v13 = [(NSURL *)v10 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v22];

  v14 = v22;
  if (v13)
  {
    v15 = *(v20 + 8);
    v22;
    v15(v21, v19);
  }

  else
  {
    v16 = v22;
    _convertNSErrorToError(_:)(v14);

    swift_willThrow();
    (*(v20 + 8))(v21, v19);
  }

  return __stack_chk_guard;
}

void *specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v31 = v3;
  v26 = a2;
  v27 = a1;
  v33 = 0;
  v36 = type metadata accessor for URL(0);
  v34 = *(v36 - 8);
  v5 = *(v34 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v30 = &v24;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v35 = &v24;
  v25 = *(a3 + 16);
  v37 = _swiftEmptyArrayStorage;
LABEL_2:
  for (i = v33; ; i = v33 + 1)
  {
    if (v25 == i)
    {
      a3;
      return v37;
    }

    if (i >= *(a3 + 16))
    {
      BUG();
    }

    v11 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v12 = *(v34 + 72);
    v13 = a3;
    v33 = i;
    v14 = v35;
    (*(v34 + 16))(v35, v11 + a3 + i * v12, v36);
    v15 = v31;
    v16 = v27(v14);
    v31 = v15;
    if (v15)
    {
      break;
    }

    if (v16)
    {
      v28 = *(v34 + 32);
      v28(v30, v35, v36);
      v17 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v37);
      v32 = v17;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1);
        v17 = v32;
      }

      v19 = v17[2];
      v20 = v17[3];
      v21 = (v19 + 1);
      if (v20 >> 1 <= v19)
      {
        v29 = v17[2];
        v37 = (v19 + 1);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 >= 2, v21, 1);
        v21 = v37;
        v19 = v29;
        v17 = v32;
      }

      ++v33;
      v17[2] = v21;
      v37 = v17;
      v28((v17 + v11 + v12 * v19), v30, v36);
      a3 = v13;
      goto LABEL_2;
    }

    (*(v34 + 8))(v35, v36);
  }

  (*(v34 + 8))(v35, v36);
  v22 = v37;

  a3;
  return v22;
}

BOOL static _FileUtilities.isReadableFile(at:of:)(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for UTType?) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for UTType(0);
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = alloca(v6);
  v10 = alloca(v6);
  v26 = &v22;
  v24 = a1;
  v11 = URL.pathExtension.getter();
  v13 = v12;
  static UTType.data.getter();
  UTType.init(filenameExtension:conformingTo:)(v11, v13);
  if (__swift_getEnumTagSinglePayload(&v22, 1, v5) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v22, &demangling cache variable for type metadata for UTType?);
  }

  else
  {
    (*(v25 + 32))(v26, &v22, v5);
    if (UTType.conforms(to:)(v23))
    {
      v14 = objc_opt_self(NSFileManager);
      v15 = [v14 defaultManager];
      v16 = v15;
      URL.path.getter(v15);
      v18 = v17;
      v19 = String._bridgeToObjectiveC()();
      v18;
      v20 = [v16 isReadableFileAtPath:v19];

      (*(v25 + 8))(v26, v5);
      return v20 != 0;
    }

    (*(v25 + 8))(v26, v5);
  }

  return 0;
}

uint64_t static _FileUtilities.getReadableJsonFilesInDirectory(at:)(uint64_t a1)
{
  v21 = v1;
  v2 = type metadata accessor for UTType(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v23 = &v20;
  v7 = alloca(v4);
  v8 = alloca(v4);
  static UTType.json.getter();
  v22 = a1;
  v9 = static _FileUtilities.isReadableFile(at:of:)(a1, &v20);
  v10 = *(v3 + 8);
  v10(&v20, v2);
  if (v9)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<URL>);
    v12 = type metadata accessor for URL(0);
    v13 = *(v12 - 8);
    v14 = *(v13 + 80);
    v15 = (v14 + 32) & ~*(v13 + 80);
    v16 = swift_allocObject(v11, v15 + *(v13 + 72), v14 | 7);
    *(v16 + 16) = 1;
    *(v16 + 24) = 2;
    (*(v13 + 16))(v16 + v15, v22, v12);
  }

  else
  {
    v16 = v23;
    static UTType.json.getter();
    v17 = v21;
    v18 = static _FileUtilities.readableFiles(at:type:)(v22, v16);
    if (!v17)
    {
      v16 = v18;
    }

    v10(v23, v2);
  }

  return v16;
}

void *static _FileUtilities.getReadableSubdirectoriesOfDirectory(at:)()
{
  v70 = v0;
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URLResourceValues?) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v64 = &v55;
  v4 = alloca(v1);
  v5 = alloca(v1);
  v61 = &v55;
  v6 = alloca(v1);
  v7 = alloca(v1);
  v71 = type metadata accessor for URL(0);
  v66 = *(v71 - 8);
  v8 = *(v66 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v65 = &v55;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v69 = &v55;
  v13 = objc_opt_self(NSFileManager);
  v14 = [v13 defaultManager];
  v72 = v14;
  URL._bridgeToObjectiveC()(v72);
  v73 = v15;
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<NSURLResourceKey>);
  v16 = swift_allocObject(v56, 48, 7);
  v16[2] = 2;
  v16[3] = 4;
  v16[4] = NSURLIsDirectoryKey;
  v16[5] = NSURLIsReadableKey;
  v77 = 0;
  v57 = NSURLIsDirectoryKey;
  v58 = NSURLIsReadableKey;
  v17 = v73;
  v18 = v72;
  v67 = outlined bridged method (mnbnnnn) of @objc NSFileManager.contentsOfDirectory(at:includingPropertiesForKeys:options:)(v73, v16, 0, &v77, v72);

  v19 = v67;
  v20 = v77;
  if (v67)
  {
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v67, v71);
    v20;

    v67 = *(v21 + 16);
    v68 = _swiftEmptyArrayStorage;
    v22 = 0;
    v23 = v71;
    v62 = &v55;
    v63 = v21;
    while (1)
    {
      if (v67 == v22)
      {
        v21;
        return v68;
      }

      if (v22 >= *(v21 + 16))
      {
        BUG();
      }

      v24 = *(v66 + 72);
      v59 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v60 = v24;
      v72 = v22;
      (*(v66 + 16))(v69, v59 + v21 + v22 * v24, v23);
      inited = swift_initStackObject(v56, v78);
      *(inited + 16) = 2;
      *(inited + 24) = 4;
      v26 = v57;
      *(inited + 32) = v57;
      v27 = v58;
      *(inited + 40) = v58;
      v73 = type metadata accessor for NSURLResourceKey(0);
      v28 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey();
      v26;
      v27;
      v29 = v28;
      v30 = v62;
      v76 = Set.init(minimumCapacity:)(2, v73, v29);
      v31 = *(inited + 32);
      specialized Set._Variant.insert(_:)(&v75, v31);

      v32 = *(inited + 40);
      specialized Set._Variant.insert(_:)(&v75, v32);

      swift_setDeallocating(inited);
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      v33 = v76;
      v34 = v70;
      URL.resourceValues(forKeys:)(v76);
      if (v34)
      {
        v34;
        v35 = 1;
        v70 = 0;
      }

      else
      {
        v70 = 0;
        v35 = 0;
      }

      v33;
      v36 = type metadata accessor for URLResourceValues(0);
      __swift_storeEnumTagSinglePayload(v30, v35, 1, v36);
      v37 = v30;
      v38 = v30;
      v39 = v61;
      outlined init with copy of URLResourceValues?(v37, v61);
      v40 = v39;
      v41 = v38;
      if (__swift_getEnumTagSinglePayload(v39, 1, v36) == 1)
      {
        break;
      }

      v42 = v61;
      v43 = URLResourceValues.isDirectory.getter(v39);
      v73 = *(*(v36 - 8) + 8);
      (v73)(v42, v36);
      v41 = v38;
      if (v43 == 2)
      {
        goto LABEL_11;
      }

      v44 = v62;
      v41 = v64;
      outlined init with copy of URLResourceValues?(v62, v64);
      v40 = v44;
      if (__swift_getEnumTagSinglePayload(v41, 1, v36) == 1)
      {
        break;
      }

      v45 = v64;
      v74 = URLResourceValues.isReadable.getter(v44);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v44, &demangling cache variable for type metadata for URLResourceValues?);
      (v73)(v45, v36);
      if (((v74 != 2) & (v74 & v43)) == 1)
      {
        v46 = *(v66 + 32);
        v46(v65, v69, v71);
        v47 = v68;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v68);
        v77 = v47;
        v73 = v46;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1);
          v47 = v77;
        }

        v49 = v72;
        v50 = v47[2];
        if (v47[3] >> 1 <= v50)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v47[3] >= 2uLL, v50 + 1, 1);
          v49 = v72;
          v47 = v77;
        }

        v22 = (v49 + 1);
        v47[2] = v50 + 1;
        v68 = v47;
        v51 = v47 + v59 + v60 * v50;
        v23 = v71;
        (v73)(v51, v65, v71);
        v21 = v63;
      }

      else
      {
LABEL_12:
        v23 = v71;
        (*(v66 + 8))(v69, v71);
        v22 = v72 + 1;
        v21 = v63;
      }
    }

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v40, &demangling cache variable for type metadata for URLResourceValues?);
LABEL_11:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v41, &demangling cache variable for type metadata for URLResourceValues?);
    goto LABEL_12;
  }

  v53 = v77;
  v54 = _convertNSErrorToError(_:)(v20);

  v70 = v54;
  return swift_willThrow();
}

void (__cdecl **static _FileUtilities.getNonHiddenFilesInDirectory(at:)())(id)
{
  v0 = objc_opt_self(NSFileManager);
  v1 = [v0 defaultManager];
  v2 = v1;
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v12 = 0;
  v5 = [(NSURL *)v2 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:4 error:&v12];
  v6 = v5;
  v7 = &objc_release;

  v8 = v12;
  if (v6)
  {
    v9 = type metadata accessor for URL(0);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v6, v9);
    v8;
  }

  else
  {
    v10 = v12;
    _convertNSErrorToError(_:)(v8);

    swift_willThrow();
  }

  return v7;
}

void *static _FileUtilities.collectFilesLabeledByDirectoryName(at:type:)(uint64_t a1, uint64_t a2)
{
  v121 = v2;
  v100 = a2;
  v114 = type metadata accessor for URL(0);
  v3 = *(v114 - 8);
  v4 = v3[8];
  v5 = alloca(v4);
  v6 = alloca(v4);
  v103 = &v98;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v111 = &v98;
  v9 = alloca(v4);
  v10 = alloca(v4);
  v106 = &v98;
  v11 = alloca(v4);
  v12 = alloca(v4);
  v14 = static _FileUtilities.getReadableSubdirectoriesOfDirectory(at:)();
  v15 = v2;
  if (v2)
  {
    return v3;
  }

  v17 = v14;
  v121 = a1;
  v109 = &v98;
  v119 = v3;
  v104 = v14[2];
  if (v104)
  {
    v18 = v114;
    v19 = v119;
LABEL_7:
    v112 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v101 = v17 + v112;
    v117 = _swiftEmptyDictionarySingleton;
    v118 = 0;
    v26 = 0;
    v105 = v17;
    while (1)
    {
      if (v26 >= v17[2])
      {
        BUG();
      }

      v27 = v19[2];
      v102 = v19[9];
      v99 = v26;
      v28 = v109;
      v3 = v18;
      v113 = v27;
      (v27)(v109, &v101[v26 * v102]);
      v116 = URL.lastPathComponent.getter();
      v121 = v29;
      v30 = static _FileUtilities.getNonHiddenFilesInDirectory(at:)();
      if (v15)
      {
        v121;
        (v119[1])(v28, v3);
        v117;
        v105;
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v118, 0);
        return v3;
      }

      v31 = v30[2];
      if (v31)
      {
        v115 = 0;
        v32 = v30;
        v120 = _swiftEmptyArrayStorage;
        v108 = v31;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
        v33 = v120;
        v110 = v32;
        v34 = v112 + v32;
        v35 = v119;
        v36 = v111;
        do
        {
          v107 = v34;
          v113(v36, v34, v3);
          URL.resolvingSymlinksInPath()();
          (v35[1])(v111, v3);
          v120 = v33;
          v37 = v3;
          v38 = v33[2];
          v39 = v38 + 1;
          if (v33[3] >> 1 <= v38)
          {
            v43 = v37;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v33[3] >= 2uLL, v39, 1);
            v37 = v43;
            v35 = v119;
            v33 = v120;
          }

          v33[2] = v39;
          v40 = v102;
          v41 = v33 + v112 + v102 * v38;
          v3 = v37;
          (v35[4])(v41, v106);
          v34 = v40 + v107;
          v42 = v108-- == 1;
          v36 = v111;
        }

        while (!v42);
        v110;
        v15 = v115;
        v44 = v33;
      }

      else
      {
        v30;
        v44 = _swiftEmptyArrayStorage;
      }

      v45 = alloca(24);
      v46 = alloca(32);
      v47 = specialized _ArrayProtocol.filter(_:)(closure #2 in static _FileUtilities.readableFiles(at:type:)partial apply, &v98, v44);
      v48 = v47[2];
      if (v48)
      {
        v115 = v15;
        v49 = v47 + v112;
        v110 = v47;

        v50 = v49;
        v51 = v114;
        v52 = v103;
        v53 = v121;
        v54 = v118;
        do
        {
          v107 = v48;
          v108 = v50;
          v113(v52, v50, v51);

          _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v54, 0);
          v55 = v117;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v117);
          v120 = v55;
          v118 = specialized __RawDictionaryStorage.find<A>(_:)(v116, v53);
          v58 = (v57 & 1) == 0;
          v59 = __OFADD__(v55[2], v58);
          v60 = v55[2] + v58;
          if (v59)
          {
            BUG();
          }

          v61 = v57;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [URL]>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v60))
          {
            v62 = v121;
            v64 = specialized __RawDictionaryStorage.find<A>(_:)(v116, v121);
            LOBYTE(v65) = v65 & 1;
            if ((v61 & 1) != v65)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v64 = v118;
          }

          v66 = v120;
          if ((v61 & 1) == 0)
          {
            v120[(v64 >> 6) + 8] |= 1 << v64;
            v67 = v66[6];
            v68 = 16 * v64;
            *(v67 + v68) = v116;
            *(v67 + v68 + 8) = v121;
            *(v66[7] + 8 * v64) = _swiftEmptyArrayStorage;
            v69 = v66[2];

            v59 = __OFADD__(1, v69);
            v70 = v69 + 1;
            if (v59)
            {
              BUG();
            }

            v66[2] = v70;
          }

          v71 = v66[7];

          v72 = *(v71 + 8 * v64);
          v73 = swift_isUniquelyReferenced_nonNull_native(v72);
          *(v71 + 8 * v64) = v72;
          v117 = v66;
          v118 = v71;
          if (!v73)
          {
            v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72[2] + 1, 1, v72);
            *(v71 + 8 * v64) = v72;
          }

          v74 = v72[2];
          if (v72[3] >> 1 <= v74)
          {
            v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v72[3] >= 2uLL, v74 + 1, 1, v72);
            *(v118 + v64) = v72;
          }

          v72[2] = v74 + 1;
          v75 = v102;
          v76 = v72 + v112 + v102 * v74;
          v52 = v103;
          v77 = v114;
          (v119[4])(v76, v103, v114);
          v53 = v121;
          v121;
          v51 = v77;
          v50 = (v75 + v108);
          v54 = specialized thunk for @callee_guaranteed () -> (@owned [Double]);
          v48 = v107 - 1;
        }

        while (v107 != 1);
        v78 = v51;
        swift_bridgeObjectRelease_n(v110, 2);
        v118 = specialized thunk for @callee_guaranteed () -> (@owned [Double]);
        v15 = v115;
        v79 = v78;
      }

      else
      {
        v47;
        v81 = v117;
        if (!v117[2] || (v82 = v121, , specialized __RawDictionaryStorage.find<A>(_:)(v116, v82), v81 = v117, v84 = v83, v82, (v84 & 1) == 0))
        {
          v115 = v15;
          v85 = swift_isUniquelyReferenced_nonNull_native(v81);
          v120 = v81;
          v86 = v81;
          v88 = specialized __RawDictionaryStorage.find<A>(_:)(v116, v121);
          v89 = (v87 & 1) == 0;
          v59 = __OFADD__(v86[2], v89);
          v90 = v86[2] + v89;
          if (v59)
          {
            BUG();
          }

          LOBYTE(v113) = v87;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [URL]>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v85, v90))
          {
            v62 = v121;
            v88 = specialized __RawDictionaryStorage.find<A>(_:)(v116, v121);
            LOBYTE(v65) = v65 & 1;
            LOBYTE(v63) = v113;
            v15 = v115;
            if ((v113 & 1) != v65)
            {
LABEL_57:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v62, v65, v63);
              BUG();
            }

            v19 = v119;
          }

          else
          {
            v15 = v115;
            v19 = v119;
            LOBYTE(v63) = v113;
          }

          v91 = v120;
          v117 = v120;
          if (v63)
          {
            v92 = v120[7];
            *(v92 + 8 * v88);
            *(v92 + 8 * v88) = _swiftEmptyArrayStorage;
            v121;
          }

          else
          {
            v120[(v88 >> 6) + 8] |= 1 << v88;
            v93 = v91[6];
            v94 = 16 * v88;
            *(v93 + v94) = v116;
            *(v93 + v94 + 8) = v121;
            *(v91[7] + 8 * v88) = _swiftEmptyArrayStorage;
            v95 = v91[2];
            v59 = __OFADD__(1, v95);
            v96 = v95 + 1;
            if (v59)
            {
              BUG();
            }

            v91[2] = v96;
          }

          v80 = v114;
          (v19[1])(v109);
          goto LABEL_47;
        }

        v79 = v114;
      }

      v19 = v119;
      v80 = v79;
      (v119[1])(v109);
      v121;
LABEL_47:
      v26 = v99 + 1;
      v17 = v105;
      v18 = v80;
      if (v99 + 1 == v104)
      {
        v105;
        v3 = v117;
        v97 = v118;
        goto LABEL_51;
      }
    }
  }

  v14;
  v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<URL>);
  v19 = v119;
  v21 = *(v119 + 80);
  v22 = (v21 + 32) & ~*(v119 + 80);
  v23 = swift_allocObject(v20, v22 + v119[9], v21 | 7);
  *(v23 + 16) = 1;
  *(v23 + 24) = 2;
  v24 = v23 + v22;
  v25 = v114;
  (v19[2])(v24, v121);
  v17 = v23;
  v104 = *(v23 + 16);
  if (v104)
  {
    v18 = v25;
    goto LABEL_7;
  }

  v23;
  v3 = _swiftEmptyDictionarySingleton;
  v97 = 0;
LABEL_51:
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v97, 0);
  return v3;
}

void (__cdecl **static _FileUtilities.readableFiles(at:type:)(uint64_t a1, void (__cdecl *a2)(id)))(id)
{
  v39 = a2;
  v3 = type metadata accessor for URL(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v31 = &v30;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v38 = &v30;
  result = static _FileUtilities.getNonHiddenFilesInDirectory(at:)();
  if (!v2)
  {
    v11 = v39;
    v41 = v4;
    v12 = result[2];
    if (v12)
    {
      v36 = 0;
      v13 = result;
      v40 = _swiftEmptyArrayStorage;
      v32 = v12;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
      v14 = v40;
      v15 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v37 = v13;
      v33 = v15;
      v16 = v13 + v15;
      v34 = *(v41 + 16);
      v35 = *(v41 + 72);
      do
      {
        v17 = v31;
        v30 = v16;
        v34(v31, v16, v3);
        URL.resolvingSymlinksInPath()();
        v18 = v41;
        (*(v41 + 8))(v17, v3);
        v40 = v14;
        v19 = v3;
        v20 = v14[2];
        v21 = v14[3];
        v22 = v20 + 1;
        if (v21 >> 1 <= v20)
        {
          v25 = v19;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 >= 2, v22, 1);
          v19 = v25;
          v18 = v41;
          v14 = v40;
        }

        v14[2] = v22;
        v23 = v35;
        v24 = v14 + v33 + v35 * v20;
        v3 = v19;
        (*(v18 + 32))(v24, v38);
        v16 = &v30[v23];
        v32 = (v32 - 1);
      }

      while (v32);
      v37;
      v26 = v39;
      v27 = v14;
    }

    else
    {
      result;
      v27 = _swiftEmptyArrayStorage;
      v26 = v11;
    }

    v28 = alloca(24);
    v29 = alloca(32);
    v32 = v26;
    return specialized _ArrayProtocol.filter(_:)(partial apply for closure #2 in static _FileUtilities.readableFiles(at:type:), &v30, v27);
  }

  return result;
}

void *static _FileUtilities.collectFilesLabeledByFileName(at:type:)(uint64_t a1, void (__cdecl *a2)(id))
{
  v60 = v2;
  v3 = type metadata accessor for URL(0);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = alloca(v5);
  v7 = alloca(v5);
  v56 = &v51;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v58 = &v51;
  v10 = static _FileUtilities.readableFiles(at:type:)(a1, a2);
  if (!v2)
  {
    v61 = v4;
    v63 = v3;
    v11 = v10[2];
    if (v11)
    {
      v53 = 0;
      v12 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v54 = v10;
      v52 = v12;
      v13 = v10 + v12;
      v14 = v61[2];
      v15 = v61[9];
      v62 = _swiftEmptyDictionarySingleton;
      v66 = 0;
      v16 = v63;
      v17 = v58;
      v55 = v14;
      v57 = v15;
      do
      {
        v60 = v11;
        v51 = v13;
        v14(v17, v13, v16);
        v18 = URL.lastPathComponent.getter();
        v20 = v19;
        *&v21 = 46;
        *(&v21 + 1) = 0xE100000000000000;
        v22 = specialized Collection<>.firstIndex(of:)(v21, v18, v19);
        if (v23 & 1 | (v22 < 0x4000))
        {
          v16 = v63;
          (v61[1])(v17, v63);
          v20;
          v24 = v57;
        }

        else
        {
          v65 = String.subscript.getter(15, v22, v18, v20);
          v26 = v25;
          v64 = v27;
          v29 = v28;
          v20;
          v65 = static String._fromSubstring(_:)(v65, v26, v64, v29);
          v31 = v30;
          v29;
          v55(v56, v17, v63);
          _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v66, 0);
          v32 = v62;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v62);
          v59 = v32;
          v66 = v31;
          v34 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v31);
          LOBYTE(v64) = v35;
          v36 = (v35 & 1) == 0;
          v37 = __OFADD__(v32[2], v36);
          v38 = v32[2] + v36;
          if (v37)
          {
            BUG();
          }

          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [URL]>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v38))
          {
            v39 = v66;
            v34 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v66);
            LOBYTE(v41) = v41 & 1;
            v42 = v64;
            if ((v64 & 1) != v41)
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v39, v41, v40);
              BUG();
            }
          }

          else
          {
            v42 = v64;
          }

          v43 = v59;

          if ((v42 & 1) == 0)
          {
            specialized _NativeDictionary._insert(at:key:value:)(v34, v65, v66, _swiftEmptyArrayStorage, v43);
          }

          v44 = v43[7];
          v62 = v43;

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v45 = *(*(v44 + 8 * v34) + 16);
          specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v45);
          v46 = *(v44 + 8 * v34);
          *(v46 + 16) = v45 + 1;
          v24 = v57;
          v47 = v52 + v46 + v57 * v45;
          v16 = v63;
          v48 = v61;
          (v61[4])(v47, v56, v63);
          v66;
          v17 = v58;
          (v48[1])(v58, v16);
          v66 = specialized thunk for @callee_guaranteed () -> (@owned [Double]);
        }

        v13 = &v51[v24];
        v11 = (v60 - 1);
        v14 = v55;
      }

      while (v60 != (&dword_0 + 1));
      v54;
      v4 = v62;
      v49 = v66;
    }

    else
    {
      v10;
      v4 = _swiftEmptyDictionarySingleton;
      v49 = 0;
    }

    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v49, 0);
  }

  return v4;
}

id outlined bridged method (mnbnnnn) of @objc NSFileManager.contentsOfDirectory(at:includingPropertiesForKeys:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for NSURLResourceKey(0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  a2;
  v8 = [a5 contentsOfDirectoryAtURL:a1 includingPropertiesForKeys:isa options:a3 error:a4];
  v9 = v8;

  return v9;
}

uint64_t lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey()
{
  result = lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey;
  if (!lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey)
  {
    v1 = type metadata accessor for NSURLResourceKey(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSURLResourceKey, v1);
    lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey = result;
  }

  return result;
}

uint64_t outlined init with copy of URLResourceValues?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URLResourceValues?);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

void *initializeBufferWithCopyOfBuffer for AnyTreeClassifierModel(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *v3 = *a2;
    v3 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    a1[1] = a2[1];
    v6 = a2[2];

    if (v6)
    {
      a1[2] = v6;
      a1[3] = a2[3];
      a1[4] = a2[4];
    }

    else
    {
      a1[4] = a2[4];
      *(a1 + 1) = *(a2 + 1);
    }

    v8 = *(a3 + 24);
    v9 = type metadata accessor for BaseTreeClassifierModel(0);
    (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
    v10 = *(a3 + 28);
    v11 = *(a2 + v10 + 8);
    *(a1 + v10) = *(a2 + v10);
    *(a1 + v10 + 8) = v11;
  }

  return v3;
}