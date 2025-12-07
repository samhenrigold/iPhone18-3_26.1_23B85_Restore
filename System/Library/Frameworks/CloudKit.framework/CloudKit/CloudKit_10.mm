uint64_t sub_1884DB620()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1884DB734()
{
  v182 = v0;
  v3 = *(v0 + 600);
  v4 = *(v0 + 608);
  v5 = *(v0 + 616);
  v6 = *(v0 + 624);
  v7 = *(v0 + 632);
  v8 = *(v0 + 640);
  v9 = *(v0 + 648);
  v10 = *(v0 + 656);
  v168 = *(v0 + 592);
  *(v0 + 664) = v168;
  LODWORD(v172) = v3;
  *(v0 + 672) = v3;
  *(v0 + 680) = v4;
  *(v0 + 688) = v5;
  *(v0 + 696) = v6;
  HIDWORD(v165) = v7;
  *(v0 + 704) = v7;
  v160 = v8;
  *(v0 + 712) = v8;
  *(v0 + 720) = v9;
  *(v0 + 728) = v10;
  if (qword_1EA90C9F0 != -1)
  {
    goto LABEL_145;
  }

LABEL_2:
  v11 = type metadata accessor for Logger();
  sub_1883F85F4(v11, qword_1EA90C9F8);
  sub_1883FAB38(v0 + 112, v0 + 272);

  sub_1883F697C(v0 + 664, v0 + 736);
  v12 = Logger.logObject.getter();
  LOBYTE(v13) = static os_log_type_t.info.getter();

  sub_1883FB300(v0 + 112);
  sub_1883F7768(v0 + 664);
  v163 = v6;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = sub_1883FE540();
    v180 = swift_slowAlloc();
    *v14 = 136315650;
    v15 = sub_1883FE43C();
    sub_1883FE340(v15, v16, &v180);
    sub_1883FE2FC();
    *(v14 + 4) = v1;
    v6 = 2080;
    *(v14 + 12) = 2080;
    memcpy(__dst, (v0 + 112), sizeof(__dst));
    sub_1883FAB38(v0 + 112, v0 + 432);
    CKSyncEngine.FetchChangesContext.description.getter();
    sub_188404258();
    memcpy((v0 + 352), __dst, 0x50uLL);
    v17 = sub_1883FB300(v0 + 352);
    sub_18840C150(v17, v18, &v180);
    sub_188404FC8();

    *(v14 + 14) = __dst;
    *(v14 + 22) = 2080;
    memcpy(__dst, (v0 + 664), 0x48uLL);
    sub_1883F697C(v0 + 664, v0 + 880);
    CKSyncEngine.FetchChangesOptions.description.getter();
    sub_188404258();
    memcpy((v0 + 808), __dst, 0x48uLL);
    v19 = sub_1883F7768(v0 + 808);
    sub_18840C150(v19, v20, &v180);
    sub_188404FC8();

    *(v14 + 24) = __dst;
    sub_1883F6560(&dword_1883EA000, v21, v13, "%s next fetch changes options for context %s: %s");
    swift_arrayDestroy();
    sub_1883FD784();
    sub_1883F82B8();
  }

  v22 = (v0 + 952);
  v158 = *(*(v0 + 1208) + 128);
  v23 = CKSyncEngine.State.zoneIDsWithUnfetchedServerChanges.getter();
  v161 = MEMORY[0x1E69E7CC0];
  __dst[0].n128_u64[0] = MEMORY[0x1E69E7CC0];
  v24 = sub_1883F4C9C(v23);
  v32.n128_f64[0] = sub_1884E00C4(v24, v25, v26, v27, v28, v29, v30, v31, v157, v158, v160, v161, v163, v165, v0 + 1176, v0 + 1168, v168, v0 + 1064, v0 + 1184, v172, v174, v0, v0 + 1008, v5);
  v33 = 0;
  v178 = 0;
  while (1)
  {
    if (isUniquelyReferenced_nonNull_native == v33)
    {

      v6 = __dst[0].n128_u64[0];
      __dst[0].n128_u64[0] = MEMORY[0x1E69E7CC0];
      v55 = v177;
      isUniquelyReferenced_nonNull_native = sub_1883F4C9C(v177);
      v56 = 0;
      v0 = v175;
      while (isUniquelyReferenced_nonNull_native != v56)
      {
        sub_1884E01E8();
        if ((v177 & 0xC000000000000001) != 0)
        {
          v57 = MEMORY[0x18CFD59D0](v56, v55);
        }

        else
        {
          v57 = *(v55 + 8 * v56 + 32);
        }

        v58 = v57;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_135;
        }

        *v170 = v57;
        v59 = swift_task_alloc();
        sub_1883FC7AC(v59);
        sub_1883FF670();

        if (v13)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v13 = *(__dst[0].n128_u64[0] + 16);
          sub_18840C6A8();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          sub_18840C6A8();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v56;
        v55 = v177;
      }

      sub_188472318(v6);
      v1 = sub_1884DD690(__dst[0].n128_u64[0]);
      v179 = v60;
      if (!*(v60 + 16))
      {
        v155 = v175[149];

        sub_1883F7768((v175 + 83));

        *(v155 + 73) = 0u;
        v155[3] = 0u;
        v155[4] = 0u;
        v155[1] = 0u;
        v155[2] = 0u;
        *v155 = 0u;
        goto LABEL_127;
      }

      v167 = sub_1884DE588(0, v60);
      v61 = HIDWORD(v165);
      if (*(v164 + 16))
      {
        sub_188486310();
        v61 = HIDWORD(v165);
        if (v63)
        {
          v61 = *(*(v164 + 56) + 16 * v62);
        }
      }

      LODWORD(v166) = v61;
      v5 = MEMORY[0x1E69E7CC8];
      v180 = MEMORY[0x1E69E7CC0];
      v64 = v1;
LABEL_33:
      v65 = v5 & 0xFFFFFFFFFFFFFF8;
      v168 = v5;
      if (v5 < 0)
      {
        v65 = v5;
      }

      v171 = v65;
      v172 = v5 & 0xC000000000000001;
      while (1)
      {
        if (v172)
        {
          v6 = __CocoaSet.count.getter();
        }

        else
        {
          v6 = *(v168 + 16);
        }

        v66 = *(v0 + 1208);
        if (v6 >= sub_1884C6868() || (v67 = v179, !*(v179 + 16)))
        {

          goto LABEL_125;
        }

        if (!v64)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = sub_1885143C8();
            v179 = v67;
          }

          v116 = *(v67 + 16);
          if (!v116)
          {
            goto LABEL_142;
          }

          sub_1883FF1E0(v116);
          *(v67 - 16) = v66;
          specialized ContiguousArray._endMutation()();
          goto LABEL_93;
        }

        v174 = v1;
        sub_18841105C();
        v68 = v66;
        NSObject._rawHashValue(seed:)(v0);
        sub_18840767C();
        if (v69)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = sub_188410B90();
        v71 = v70;
        v73 = v72;

        __dst[0].n128_u64[0] = v1;
        __dst[0].n128_u64[1] = v0;
        __dst[1].n128_u64[0] = v6;
        __dst[1].n128_u64[1] = isUniquelyReferenced_nonNull_native;
        __dst[2].n128_u64[0] = v71;
        __dst[2].n128_u64[1] = v73;
        __dst[3].n128_u8[0] = 0;
        if (!isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_146;
        }

        while (1)
        {
          v74 = __dst[1];
          *v22 = __dst[0];
          v22[1] = v74;
          v22[2] = __dst[2];
          v22[3].n128_u8[0] = __dst[3].n128_u8[0];
          v75 = _HashTable.BucketIterator.currentValue.getter();
          if ((v76 & 1) == 0 && !v75)
          {
            break;
          }

          _HashTable.BucketIterator.advance()();
          if (!__dst[1].n128_u64[1])
          {
            goto LABEL_146;
          }
        }

        if (!v175[122])
        {
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          return;
        }

        v6 = __dst[1].n128_i64[0];

        v78 = *(v179 + 16);
        v0 = v175;
        sub_1883FE844(v77, (v175 + 143));
        v79 = sub_188413F40();
        if (!v80)
        {
          if (v78 <= MEMORY[0x18CFD4CC0](v79))
          {
            goto LABEL_87;
          }

LABEL_52:
          if ((swift_isUniquelyReferenced_native() & 1) == 0)
          {
            if (!v1)
            {
              goto LABEL_152;
            }

            _HashTable.copy()();
            sub_188404FC8();

            v1 = v78;
          }

          if (!v1)
          {
            goto LABEL_151;
          }

          isUniquelyReferenced_nonNull_native = v1 + 32;
          sub_1883FE1E0();
          v81 = _HashTable.UnsafeHandle._startIterator(bucket:)();
          __dst[0].n128_u64[0] = v1 + 16;
          __dst[0].n128_u64[1] = v1 + 32;
          __dst[1].n128_u64[0] = v6;
          __dst[1].n128_u64[1] = v81;
          __dst[2].n128_u64[0] = v82;
          __dst[2].n128_u64[1] = v83;
          __dst[3].n128_u8[0] = 0;
          _HashTable.BucketIterator.advance()();
          if (!__dst[1].n128_u64[1])
          {
            sub_1884038D4();

LABEL_99:

            sub_1883FF02C();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v67 = sub_1885143C8();
              v179 = v67;
            }

            v0 = v175;
            v123 = *(v67 + 16);
            if (!v123)
            {
              goto LABEL_143;
            }

            sub_1883FF1E0(v123);
            *(v67 - 16) = __dst;
            specialized ContiguousArray._endMutation()();
            goto LABEL_103;
          }

          sub_1883FE1E0();
          v84 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
          v85 = v1;
          v86 = v84;
          v174 = v85;

          while (2)
          {
            v95 = sub_1883FF44C(__dst[0], __dst[1], v87, v88, v89, v90, v91, v92, v93, v94, v157, v159, v160, v162, v164, v165, v166, v167, v168, v169, v171, v172, v174, v175, v176, v177, v178, v179, v180, __dst[0].n128_i64[0], __dst[0].n128_i64[1], __dst[1].n128_i64[0], __dst[1].n128_i64[1], *&__dst[2], __dst[3].n128_i8[0]);
            if (v96)
            {
              goto LABEL_150;
            }

            if ((v95 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_131:
              __break(1u);
LABEL_132:
              __break(1u);
              goto LABEL_133;
            }

            if (v95 >= *(v67 + 16))
            {
              goto LABEL_131;
            }

            v97 = *(v177 + 8 * v95);
            v98 = sub_188402E5C();
            v99 = NSObject._rawHashValue(seed:)(v98);

            sub_188410C10();
            if (v69)
            {
              goto LABEL_132;
            }

            v108 = v5 & v99;
            if (v6 >= v86)
            {
              if (v108 >= v86 && v6 >= v108)
              {
LABEL_73:
                sub_1883FF44C(__dst[0], __dst[1], v100, v101, v102, v103, v104, v105, v106, v107, v157, v159, v160, v162, v164, v165, v166, v167, v168, v169, v171, v172, v174, v175, v176, v177, v178, v179, v180, __dst[0].n128_i64[0], __dst[0].n128_i64[1], __dst[1].n128_i64[0], __dst[1].n128_i64[1], *&__dst[2], __dst[3].n128_i8[0]);
                if (v111)
                {
                  v112 = 0;
                }

                else
                {
                  sub_188404C1C();
                }

                sub_1883F7F50(v112);
                if (!v115)
                {
                  if (__OFADD__(v114 << v114, 64))
                  {
                    __break(1u);
                    goto LABEL_138;
                  }

                  sub_18840AD78(v113);
                }

                v6 = v175[135];
              }
            }

            else if (v108 >= v86 || v6 >= v108)
            {
              goto LABEL_73;
            }

            _HashTable.BucketIterator.advance()();
            if (!__dst[1].n128_u64[1])
            {
              sub_1884038D4();
              v1 = v174;
              goto LABEL_99;
            }

            continue;
          }
        }

        if (v78)
        {
          goto LABEL_52;
        }

LABEL_87:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_1885143C8();
          v179 = v67;
        }

        v117 = *(v67 + 16);
        if (!v117)
        {
          goto LABEL_144;
        }

        sub_1883FF1E0(v117);
        *(v67 - 16) = v78;
        v118 = specialized ContiguousArray._endMutation()();
        sub_1883FE844(v118, (v175 + 140));
        v119 = *(v179 + 16);
        v120 = *(v5 + 24) & 0x3FLL;
        if (!v120 && v119 < 0x10)
        {

          v1 = 0;
LABEL_93:
          v64 = 0;
          goto LABEL_104;
        }

        v121 = MEMORY[0x18CFD4CE0](v119);
        if (v120 <= v121)
        {
          v122 = v121;
        }

        else
        {
          v122 = v120;
        }

        v1 = sub_1884DE9B0(v179, v122, 0, v120, sub_1884DEBA8);

LABEL_103:
        v64 = v1;
LABEL_104:
        v124 = sub_1884D4574();
        if (!v124)
        {
          v126 = HIDWORD(v165);
          v127 = v160;
          if (*(v164 + 16))
          {
            sub_188486310();
            v126 = HIDWORD(v165);
            v127 = v160;
            if (v129)
            {
              v130 = (*(v164 + 56) + 16 * v128);
              v126 = *v130;
              v127 = *(v130 + 1);
            }
          }

          if (v166 != v126)
          {
            goto LABEL_136;
          }

          v174 = v1;
          v131 = [*(v159 + 16) fetchChangesZoneConfigurationForZoneID_];
          [v131 setResultsLimit_];
          v132 = v6;
          v133 = v131;
          v134 = v168;
          if (v172)
          {
            v135 = __CocoaSet.count.getter();
            if (__OFADD__(v135, 1))
            {
              goto LABEL_148;
            }

            v134 = sub_1885112B4(v171, v135 + 1);
          }

          v177 = v133;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          __dst[0].n128_u64[0] = v134;
          v136 = v132;
          sub_188486310();
          sub_1883FE314();
          v141 = v139 + v140;
          if (__OFADD__(v139, v140))
          {
            goto LABEL_147;
          }

          v142 = v137;
          v143 = v138;
          sub_18844E6FC(&unk_1EA90E4F0, &qword_1886FB488);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v141))
          {
            v144 = v136;
            v5 = __dst[0].n128_u64[0];
            sub_188486310();
            v0 = v175;
            if ((v143 & 1) != (v146 & 1))
            {
LABEL_138:
              sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              return;
            }

            v142 = v145;
            if (v143)
            {
LABEL_120:
              v150 = *(v5 + 56);
              v151 = *(v150 + 8 * v142);
              *(v150 + 8 * v142) = v177;
              v149 = v177;

              goto LABEL_121;
            }
          }

          else
          {
            v5 = __dst[0].n128_u64[0];
            v0 = v175;
            v144 = v136;
            if (v143)
            {
              goto LABEL_120;
            }
          }

          *(v5 + 8 * (v142 >> 6) + 64) |= 1 << v142;
          *(*(v5 + 48) + 8 * v142) = v144;
          *(*(v5 + 56) + 8 * v142) = v177;
          v147 = *(v5 + 16);
          v69 = __OFADD__(v147, 1);
          v148 = v147 + 1;
          if (v69)
          {
            goto LABEL_149;
          }

          v149 = v177;
          *(v5 + 16) = v148;
LABEL_121:
          v152 = v144;
          MEMORY[0x18CFD52F0]();
          v153 = *((v180 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v180 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v153 >> 1)
          {
            sub_1883F8DD4(v153);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v162 = v180;
          v1 = v174;
          goto LABEL_33;
        }

        v125 = v124;
      }

      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      sub_1883F7480(&qword_1EA90C9F0);
      goto LABEL_2;
    }

    if (v174)
    {
      v34 = MEMORY[0x18CFD59D0](v33, v23, v32);
    }

    else
    {
      if (v33 >= *(v6 + 16))
      {
        goto LABEL_134;
      }

      v34 = *(v23 + 8 * v33 + 32);
    }

    v0 = v34;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v173)
    {
      if (v173 != 1 || (v35 = sub_1884E0298(), sub_188402ED8(v35, v36, v37, v38, v39, v40, v41, v42, v157, v159, v160, v162, v164, v165, v166, v167, v168), v43 = sub_1883FDBF4(), sub_1884E0268(v43, v44), sub_1883FF670(), , , (v13 & 1) != 0))
      {
LABEL_13:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v13 = *(__dst[0].n128_u64[0] + 16);
        sub_18840C6A8();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        sub_18840C6A8();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_16;
      }
    }

    else
    {
      v45 = sub_1884E0298();
      sub_188402ED8(v45, v46, v47, v48, v49, v50, v51, v52, v157, v159, v160, v162, v164, v165, v166, v167, v168);
      v53 = sub_1883FDBF4();
      sub_1884E0268(v53, v54);
      sub_1883FF670();

      if ((v13 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    ++v33;
  }

LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:

LABEL_125:
  v154 = *(v0 + 1192);

  memcpy(v154, (v0 + 664), 0x48uLL);
  *(v154 + 72) = v162;
  *(v154 + 80) = v168;
  *(v154 + 88) = v166;

LABEL_127:
  sub_1883F816C();

  v156();
}

void sub_1884DC3C0(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
LABEL_4:
  while (v5)
  {
LABEL_9:
    sub_1883FE0AC();
    v10 = (*(a1 + 48) + ((v7 << 10) | (16 * v9)));
    v12 = *v10;
    v11 = v10[1];
    v13 = *v1;
    v14 = v1[1];
    v15 = *(v14 + 16);
    if (!*v1)
    {
      v20 = (v14 + 40);
      v21 = v15 + 1;
      while (--v21)
      {
        v22 = v20 + 2;
        if (*(v20 - 1) != v12 || *v20 != v11)
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v20 = v22;
          if ((v24 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      v19 = 0;
LABEL_21:
      sub_1884DE5AC(v12, v11, v19);
      goto LABEL_22;
    }

    sub_1884DED58(v12, v11, v14 + 32, v15, (v13 + 16), v13 + 32);
    v17 = v16;
    v19 = v18;

    if (v17)
    {
      goto LABEL_21;
    }

LABEL_22:
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }
}

void sub_1884DC550(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v31 = a4 >> 1;
LABEL_2:
  while (a3 != v31)
  {
    if (a3 >= v31)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    v7 = *(a2 + 8 * a3++);
    v9 = *v5;
    v8 = v5[1];
    v10 = (v8 + 32);
    v11 = *(v8 + 16);
    if (!*v5)
    {
      v20 = v7;
      while (v11)
      {
        sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
        v21 = *v10++;
        v22 = v21;
        v23 = static NSObject.== infix(_:_:)();

        --v11;
        if (v23)
        {

          goto LABEL_2;
        }
      }

      goto LABEL_7;
    }

    v12 = v7;

    sub_1884DEE84(v12, v10, v11, (v9 + 16), v9 + 32);
    v14 = v13;

    if (v14)
    {
LABEL_7:
      v15 = v7;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v16 = v5[1];
      v17 = *(v16 + 16);
      if (v9)
      {
        swift_beginAccess();
        if (MEMORY[0x18CFD4CB0](*(v9 + 16) & 0x3FLL) >= v17)
        {
          isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
          v28 = *v5;
          if ((isUniquelyReferenced_native & 1) == 0)
          {
            if (!v28)
            {
              goto LABEL_34;
            }

            v29 = _HashTable.copy()();

            *v5 = v29;
            v28 = v29;
          }

          if (!v28)
          {
            goto LABEL_33;
          }

          _HashTable.UnsafeHandle.subscript.setter();
          goto LABEL_31;
        }

        v18 = *(v9 + 24) & 0x3FLL;
        if (v17 <= 0xF && v18 == 0)
        {

          *v5 = 0;
        }

        else
        {
LABEL_22:
          v24 = MEMORY[0x18CFD4CE0](v17);
          if (v18 <= v24)
          {
            v25 = v24;
          }

          else
          {
            v25 = v18;
          }

          v26 = sub_1884DE9B0(v16, v25, 0, v18, sub_1884DEBA8);

          *v5 = v26;
        }
      }

      else
      {
        if (v17 > 0xF)
        {
          v18 = 0;
          goto LABEL_22;
        }

LABEL_31:
      }
    }

    else
    {
    }
  }
}

void sub_1884DC7DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1883F4C9C(a1);
  v5 = 0;
  v31 = a1 & 0xFFFFFFFFFFFFFF8;
  v32 = a1 & 0xC000000000000001;
  v28 = a1;
  v29 = v4;
  v30 = a1 + 32;
LABEL_2:
  while (v5 != v4)
  {
    if (v32)
    {
      v6 = MEMORY[0x18CFD59D0](v5, v28);
    }

    else
    {
      if (v5 >= *(v31 + 16))
      {
        goto LABEL_37;
      }

      v6 = *(v30 + 8 * v5);
    }

    v7 = v6;
    if (__OFADD__(v5++, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

    v10 = *v2;
    v9 = v2[1];
    v11 = (v9 + 32);
    v12 = *(v9 + 16);
    if (*v2)
    {

      sub_1884DEE84(v7, v11, v12, (v10 + 16), v10 + 32);
      v14 = v13;

      if ((v14 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      while (v12)
      {
        sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
        v15 = *v11++;
        v16 = v15;
        v17 = static NSObject.== infix(_:_:)();

        --v12;
        if (v17)
        {

          v4 = v29;
          goto LABEL_2;
        }
      }

      v4 = v29;
    }

    v7 = v7;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v18 = v2[1];
    v19 = *(v18 + 16);
    if (v10)
    {
      swift_beginAccess();
      if (MEMORY[0x18CFD4CB0](*(v10 + 16) & 0x3FLL) >= v19)
      {
        isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
        v26 = *v2;
        if ((isUniquelyReferenced_native & 1) == 0)
        {
          if (!v26)
          {
            goto LABEL_39;
          }

          v27 = _HashTable.copy()();

          *v2 = v27;
          v26 = v27;
          v4 = v29;
        }

        if (!v26)
        {
          goto LABEL_38;
        }

        _HashTable.UnsafeHandle.subscript.setter();
LABEL_33:
      }

      else
      {
        v20 = *(v10 + 24) & 0x3FLL;
        if (v19 > 0xF || v20 != 0)
        {
          goto LABEL_24;
        }

        *v2 = 0;
      }
    }

    else
    {
      if (v19 <= 0xF)
      {
        goto LABEL_33;
      }

      v20 = 0;
LABEL_24:
      v22 = MEMORY[0x18CFD4CE0](v19);
      if (v20 <= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v20;
      }

      v24 = sub_1884DE9B0(v18, v23, 0, v20, sub_1884DEBA8);

      *v2 = v24;
    }
  }
}

void sub_1884DCAB4(void *a1)
{
  if (!swift_weakLoadStrong())
  {
    goto LABEL_15;
  }

  sub_1883FA550();
  sub_1884C7AD8(__src);

  if (!__src[1])
  {
    memcpy(v67, __src, sizeof(v67));
    sub_188442B84(v67, &unk_1EA90E4D0, &unk_1886FB460);
LABEL_15:

    goto LABEL_16;
  }

  memcpy(__dst, __src, sizeof(__dst));
  v2 = __dst[5];
  v1 = __dst[6];
  v3 = __dst[9];
  memcpy(v67, __src, sizeof(v67));
  v4 = __dst[11];

  v5 = v4;
  sub_188442B84(v67, &unk_1EA90E4D0, &unk_1886FB460);
  v6 = [a1 recordID];
  v7 = [v6 zoneID];

  if (*(v3 + 16) && (sub_188486310(), (v9 & 1) != 0))
  {
    v10 = *(v3 + 56) + 56 * v8;
    v2 = *(v10 + 40);
    v1 = *(v10 + 48);
  }

  else
  {
  }

  sub_188442B84(__dst, &unk_1EA90E4D0, &unk_1886FB460);

  if (!v1)
  {
    goto LABEL_15;
  }

  if (v2 == 0xD000000000000021 && 0x8000000188702330 == v1)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  v13 = [a1 valueStore];
  v14 = [v13 allKeys];

  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  __src[0] = MEMORY[0x1E69E7CC0];
  v18 = *(v15 + 16);
  v19 = v15 + 40;
  v63 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v20 = (v19 + 16 * v16);
  while (v18 != v16)
  {
    if (v16 >= *(v15 + 16))
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      return;
    }

    v22 = *(v20 - 1);
    v21 = *v20;

    v23 = [a1 values];
    sub_18844E6FC(&qword_1EA90DC68, &unk_1886F9460);
    v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v24 + 16) && (sub_188420F2C(v22, v21), (v25 & 1) != 0))
    {
      swift_unknownObjectRetain();

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        MEMORY[0x18CFD52F0]();
        if (*((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v16;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v17 = __src[0];
        v19 = v15 + 40;
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v20 += 2;
    ++v16;
  }

  v26 = sub_1883F4C9C(v17);
  for (i = 0; v26 != i; ++i)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x18CFD59D0](i, v17);
    }

    else
    {
      if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_73;
      }

      v28 = *(v17 + 8 * i + 32);
    }

    v29 = v28;
    if (__OFADD__(i, 1))
    {
      goto LABEL_72;
    }

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (swift_weakLoadStrong())
    {
      sub_1883FA550();

      sub_18844E6FC(&unk_1EA90E4E0, &qword_1886F86B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1886F7400;
      *(inited + 32) = v29;
      v31 = v29;
      CKSyncEngine.State.add(pendingAssetSyncs:)(inited);

      swift_setDeallocating();
      sub_1884E3A78();
    }

    else
    {
    }
  }

  v32 = [a1 encryptedValueStore];
  v33 = [v32 allKeys];

  v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = 0;
  __src[0] = MEMORY[0x1E69E7CC0];
  v36 = *(v34 + 16);
  v37 = v34 + 40;
LABEL_46:
  v38 = (v37 + 16 * v35);
  while (v36 != v35)
  {
    if (v35 >= *(v34 + 16))
    {
      goto LABEL_74;
    }

    v39 = *(v38 - 1);
    v40 = *v38;

    v41 = [a1 encryptedValues];
    v42 = MEMORY[0x18CFD5010](v39, v40);
    v43 = [v41 objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v43)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        MEMORY[0x18CFD52F0]();
        if (*((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v35;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v63 = __src[0];
        v37 = v34 + 40;
        goto LABEL_46;
      }

      swift_unknownObjectRelease();
    }

    v38 += 2;
    ++v35;
  }

  v44 = v63;
  v45 = sub_1883F4C9C(v63);
  v46 = 0;
  v47 = v63 & 0xC000000000000001;
  v64 = v45;
  while (v45 != v46)
  {
    if (v47)
    {
      v48 = MEMORY[0x18CFD59D0](v46, v44);
    }

    else
    {
      if (v46 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_76;
      }

      v48 = *(v44 + 8 * v46 + 32);
    }

    v49 = v48;
    if (__OFADD__(v46, 1))
    {
      goto LABEL_75;
    }

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (qword_1EA90C9F0 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_1883FDE5C(v50, qword_1EA90C9F8);

    v51 = v49;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      __src[0] = v56;
      *v54 = 136315394;
      v57 = sub_1883FE43C();
      v59 = sub_1883FE340(v57, v58, __src);

      *(v54 + 4) = v59;
      v44 = v63;
      *(v54 + 12) = 2112;
      *(v54 + 14) = v51;
      *v55 = v51;
      v60 = v51;
      _os_log_impl(&dword_1883EA000, v52, v53, "%s found CKAsset in encryptedValueStore, but we're not attempting to fetch it. %@", v54, 0x16u);
      sub_188442B84(v55, &qword_1EA90DC70, &unk_1886FA190);
      v61 = v55;
      v45 = v64;
      MEMORY[0x18CFD7E80](v61, -1, -1);
      sub_1883FE944(v56);
      MEMORY[0x18CFD7E80](v56, -1, -1);
      v62 = v54;
      v47 = v63 & 0xC000000000000001;
      MEMORY[0x18CFD7E80](v62, -1, -1);
    }

    else
    {
    }

    ++v46;
  }

LABEL_16:
}

void *sub_1884DD410(void *a1)
{
  v6 = sub_1884DE34C();
  v7 = sub_1884DE354(&v30, a1, 0, 1, v6);
  v8 = a1[2];
  v9 = v30;
  if (v30 != v8)
  {
    if ((v30 & 0x8000000000000000) != 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v1 = sub_18842A7A4(0, v30, a1);
    v2 = v10;
    v3 = v11;
    v4 = v12;
    if (v12)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
        swift_unknownObjectRelease();
        v14 = MEMORY[0x1E69E7CC0];
      }

      v15 = *(v14 + 16);

      if (__OFSUB__(v4 >> 1, v3))
      {
        goto LABEL_35;
      }

      if (v15 != (v4 >> 1) - v3)
      {
        goto LABEL_36;
      }

      v2 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v2)
      {
        goto LABEL_12;
      }

      v2 = MEMORY[0x1E69E7CC0];
      goto LABEL_11;
    }

    while (1)
    {
      sub_18851087C(v1, v2, v3, v4);
      v2 = v13;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      v31 = v7;
      v32 = v2;
      if (v8 >= v9)
      {
        break;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      swift_unknownObjectRelease();
    }

    v8 = sub_18842A7A4(v9, v8, a1);
    v9 = v16;
    v1 = v17;
    v2 = v18;

    v19 = v2 >> 1;
    while (1)
    {
LABEL_14:
      if (v1 == v19)
      {
        swift_unknownObjectRelease();

        return v31;
      }

      if (v1 >= v19)
      {
        __break(1u);
        goto LABEL_33;
      }

      v20 = (v9 + 16 * v1);
      v3 = *v20;
      v2 = v20[1];
      ++v1;
      a1 = v31;
      v21 = v32;
      v22 = *(v32 + 16);
      if (!v31)
      {
        break;
      }

      sub_1884DED58(v3, v2, v21 + 32, v22, a1 + 2, (a1 + 4));
      v24 = v23;
      v4 = v25;

      if (v24)
      {
        goto LABEL_29;
      }

LABEL_30:
    }

    v26 = (v32 + 40);
    a1 = (v22 + 1);
    while (1)
    {
      a1 = (a1 - 1);
      if (!a1)
      {
        break;
      }

      v4 = (v26 + 2);
      if (*(v26 - 1) != v3 || *v26 != v2)
      {
        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v26 = v4;
        if ((v28 & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    v4 = 0;
LABEL_29:
    a1 = &v31;
    sub_1884DE5AC(v3, v2, v4);
    goto LABEL_30;
  }

  return v7;
}

uint64_t sub_1884DD690(unint64_t a1)
{
  v5 = sub_1884DE34C();
  v6 = sub_1884DE41C(&v32, a1, 0, 1, v5);
  v7 = sub_1883F4C9C(a1);
  v8 = v32;
  if (v32 == v7)
  {
    sub_18844C2F0(a1);
    return v6;
  }

  if (v32 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v1 = v7;
  sub_1884DFCA0(0, a1);
  sub_1884DFCA0(v8, a1);
  v3 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0 && v8)
  {
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);

    v9 = 0;
    do
    {
      v10 = v9 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v9);
      v9 = v10;
    }

    while (v8 != v10);
  }

  else
  {
  }

  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_14:

    v12 = _CocoaArrayWrapper.subscript.getter();
    v13 = v16;
    i = v17;
    v14 = v18;
    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  i = 0;
  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  v13 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v14 = (2 * v8) | 1;
LABEL_15:
  v30 = v3;
  v31 = v2;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(v19 + 16);

  if (__OFSUB__(v14 >> 1, i))
  {
    goto LABEL_36;
  }

  if (v20 != (v14 >> 1) - i)
  {
    goto LABEL_37;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v3 = v30;
  if (i)
  {
    goto LABEL_22;
  }

  for (i = MEMORY[0x1E69E7CC0]; ; i = v15)
  {
    swift_unknownObjectRelease();
LABEL_22:
    v33 = v6;
    v34 = i;
    if (v1 < v8)
    {
      __break(1u);
      goto LABEL_35;
    }

    sub_1884DFCA0(v1, a1);
    if (!v3)
    {

      goto LABEL_29;
    }

    if (v8 < v1)
    {
      break;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_unknownObjectRelease();
    v3 = v30;
    v2 = v31;
LABEL_12:
    sub_18851092C(v12, v13, i, v14);
  }

  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);

  v21 = v8;
  do
  {
    v22 = v21 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v21);
    v21 = v22;
  }

  while (v1 != v22);
LABEL_29:

  if (v2)
  {
    v23 = _CocoaArrayWrapper.subscript.getter();
    v24 = v26;
    v8 = v27;
    v25 = v28;
  }

  else
  {
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v25 = (2 * v1) | 1;
  }

  sub_1884DC550(v23, v24, v8, v25);
  swift_unknownObjectRelease();

  return v33;
}

uint64_t sub_1884DD9AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v34 = v6;
    v7 = a4[2];
    if (!v7)
    {
      break;
    }

    v29 = 0;
    v6 = 0;
    v8 = 0;
    v31 = a4 + 4;
    v30 = a4;
    while (v6 < v7)
    {
      v9 = *(a2 + 16);
      v10 = v31[v6];
      if (!a1)
      {
        v13 = (a2 + 32);
        while (v9)
        {
          sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
          v14 = *v13++;
          v15 = v14;
          v16 = static NSObject.== infix(_:_:)();

          --v9;
          if (v16)
          {
            goto LABEL_11;
          }
        }

LABEL_7:

        goto LABEL_32;
      }

      sub_1884DEE84(v10, a2 + 32, v9, (a1 + 16), a1 + 32);
      v12 = v11;

      if (v12)
      {
        goto LABEL_7;
      }

LABEL_11:
      a4 = v10;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v17 = *(v34 + 16);
      if (!v8)
      {
        if (v17 > 0xF)
        {
          v18 = 0;
LABEL_18:
          v19 = MEMORY[0x18CFD4CE0](v17);
          if (v18 <= v19)
          {
            v20 = v19;
          }

          else
          {
            v20 = v18;
          }

          v21 = sub_1884DE9B0(v34, v20, 0, v18, sub_1884DEBA8);

          v29 = v21;
          v8 = v21;
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      swift_beginAccess();
      if (MEMORY[0x18CFD4CB0](*(v8 + 16) & 0x3FLL) < v17)
      {
        v18 = *(v8 + 24) & 0x3FLL;
        if (v17 > 0xF || v18)
        {
          goto LABEL_18;
        }

        v29 = 0;
LABEL_31:
        v8 = 0;
        goto LABEL_32;
      }

      v8 = v29;
      result = swift_isUniquelyReferenced_native();
      if ((result & 1) == 0)
      {
        if (!v29)
        {
          goto LABEL_42;
        }

        v23 = _HashTable.copy()();

        v8 = v23;
      }

      if (!v8)
      {
        goto LABEL_41;
      }

      v24 = *(v8 + 16);

      NSObject._rawHashValue(seed:)(v24);
      if (__OFSUB__(1 << *(v8 + 16), 1))
      {
        goto LABEL_37;
      }

      if (_HashTable.UnsafeHandle._startIterator(bucket:)())
      {
        while (1)
        {
          _HashTable.BucketIterator.advance()();
        }
      }

      _HashTable.BucketIterator.currentValue.setter();

      v29 = v8;
LABEL_32:
      ++v6;
      a4 = v30;
      v7 = v30[2];
      if (v6 == v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v25 = __CocoaSet.count.getter();
    if (v25)
    {
      v26 = v25;
      v6 = sub_1883F5E14();
      sub_188426A14(v6 + 32, v26, MEMORY[0x1E69E7CC0]);
      v28 = v27;

      if (v28 != v26)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_1884DDD40(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 328) = a3;
  *(v4 + 336) = a4;
  *(v4 + 320) = a1;
  *(v4 + 344) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1884DDD70, 0, 0);
}

uint64_t sub_1884DDD70()
{
  sub_1883FB4AC();
  if (*(v0 + 344))
  {
    v1 = *(v0 + 352);
    v2 = *(v0 + 328);
    ObjectType = swift_getObjectType();
    memcpy((v0 + 96), v2, 0x50uLL);
    v10 = (*(v1 + 24) + **(v1 + 24));
    swift_task_alloc();
    sub_1883FF2B8();
    *(v0 + 360) = v4;
    *v4 = v5;
    v4[1] = sub_1884DDF0C;
    v6 = *(v0 + 336);

    return v10(v0 + 248, v0 + 96, v6, ObjectType, v1);
  }

  else
  {
    v8 = *(v0 + 328);
    memcpy(*(v0 + 320), (v8 + 8), 0x48uLL);
    sub_1883FAB38(v8, v0 + 16);
    sub_1883F816C();

    return v9();
  }
}

uint64_t sub_1884DDF0C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1884DDFF4()
{
  sub_1883F7120();
  v1 = v0[40];
  memcpy(v0 + 22, v0 + 31, 0x48uLL);
  memcpy(v1, v0 + 22, 0x48uLL);
  sub_1883F816C();

  return v2();
}

uint64_t sub_1884DE068()
{
  sub_1883F78E0();
  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_1883FAED8(v1);

  return sub_1884D59D0(v3, v4, v5);
}

uint64_t sub_1884DE0FC()
{
  sub_1883FB4AC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1883F78EC();
  v9 = *v0;
  sub_1883F7110();
  *v10 = v9;

  v11 = *(v9 + 8);

  return v11(v8, v6, v4, v2);
}

uint64_t sub_1884DE258()
{
  v1 = v0;
  sub_188486310();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v0;
  v6 = *(*v0 + 24);
  sub_18844E6FC(&qword_1EA90E268, &qword_1886FB470);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v6);

  v7 = *(*(v9 + 56) + 8 * v4);
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  type metadata accessor for CKError(0);
  sub_18841A9C8();
  _NativeDictionary._delete(at:)();
  *v1 = v9;
  return v7;
}

uint64_t sub_1884DE354(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x18CFD4CE0](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v13 = MEMORY[0x18CFD4CF0]();
    sub_1884DF300(a2 + 32, v8, (v13 + 16), v13 + 32);
    *a1 = v14;
  }

  else if (v8 >= 2)
  {
    sub_1884DEFC0(a2 + 32, v8);
    v13 = 0;
    *a1 = v15;
  }

  else
  {
    v13 = 0;
    *a1 = v8;
  }

  return v13;
}

uint64_t sub_1884DE41C(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = sub_1883F4C9C(a2);
  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  v12 = MEMORY[0x18CFD4CE0](v10);
  if (v12 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = v13;
  }

  if (v14 > 4)
  {
    v16 = MEMORY[0x18CFD4CF0]();
    sub_1884DF280(&v18, a2, (v16 + 16), v16 + 32);
    *a1 = v18;
  }

  else
  {
    if (sub_1883F4C9C(a2) >= 2)
    {
      if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
      {
        v15 = sub_1884DFAF8(a2, sub_1884DFEA4);
      }

      else
      {
        v15 = sub_1884DF0FC((a2 & 0xFFFFFFFFFFFFFF8) + 32, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
      }
    }

    else
    {
      v15 = sub_1883F4C9C(a2);
    }

    v16 = 0;
    *a1 = v15;
  }

  return v16;
}

uint64_t sub_1884DE528(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
  }

  __break(1u);
  return result;
}

unint64_t sub_1884DE588(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    return *(a2 + 8 * result + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_1884DE5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v10 = v3[1];
  v8 = v3 + 1;
  v9 = v10;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v10;
  if ((result & 1) == 0)
  {
    result = sub_18840489C(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  if (v13 >= v12 >> 1)
  {
    result = sub_18840489C((v12 > 1), v13 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v13 + 1;
  v14 = v9 + 16 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v4[1] = v9;
  v15 = *v4;
  if (!*v4)
  {
    if (v13 <= 0xE)
    {
      return result;
    }

    v16 = 0;
    goto LABEL_15;
  }

  swift_beginAccess();
  if (MEMORY[0x18CFD4CB0](*(v15 + 16) & 0x3FLL) <= v13)
  {
    v16 = *(v15 + 24) & 0x3FLL;
    if (v13 <= 0xE && v16 == 0)
    {

      *v4 = 0;
      return result;
    }

LABEL_15:
    v18 = MEMORY[0x18CFD4CE0](v13 + 1);
    return sub_1884DE964(v18, v16, sub_1884DEA80);
  }

  result = sub_1884DE8A8();
  if (*v4)
  {
    return sub_1884DE8FC((*v4 + 16), *v4 + 32, a3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1884DE724(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = specialized ContiguousArray._endMutation()();
  v7 = *v2;
  v8 = *(v2[1] + 16);
  if (*v3)
  {
    swift_beginAccess();
    if (MEMORY[0x18CFD4CB0](*(v7 + 16) & 0x3FLL) < v8)
    {
      v9 = *(v7 + 24) & 0x3FLL;
      if (v8 <= 0xF && v9 == 0)
      {

        *v3 = 0;
        return result;
      }

      goto LABEL_11;
    }

    result = sub_1884DE8A8();
    if (*v3)
    {
      return sub_1884DE8FC((*v3 + 16), *v3 + 32, a2, v3);
    }

    else
    {
      __break(1u);
    }
  }

  else if (v8 > 0xF)
  {
    v9 = 0;
LABEL_11:
    v11 = MEMORY[0x18CFD4CE0](v8);
    return sub_1884DE964(v11, v9, sub_1884DEBA8);
  }

  return result;
}

void *sub_1884DE858(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3)
{
  result = a1(&v5, a3 + 32, *(a3 + 16));
  if (!v3)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1884DE8A8()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        _HashTable.copy()();
        sub_18842D4B4();

        *v0 = v1;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1884DE964(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v4 = a2;
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v5 = sub_1884DE9B0(v3[1], a2, 0, v4, a3);

  *v3 = v5;
  return result;
}

uint64_t sub_1884DE9B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v8 = *(a1 + 16);
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = MEMORY[0x18CFD4CE0](v8, a2);
  v11 = 0;
  if (v10 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  if (v12 <= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = v12;
  }

  if (v13 >= 5)
  {
    v11 = MEMORY[0x18CFD4CF0]();
    sub_1884DEA38(a1, v11 + 16, v11 + 32, a5);
  }

  return v11;
}

Swift::Int sub_1884DEA80(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v7 = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v8)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        v7 = _HashTable.BucketIterator.currentValue.setter();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

Swift::Int sub_1884DEBA8(Swift::Int result, uint64_t a2, Swift::Int *a3, uint64_t a4)
{
  v10 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        v7 = *a3;
        v8 = *(v10 + 8 * v6);
        result = NSObject._rawHashValue(seed:)(v7);
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v9 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v9)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v6 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1884DECAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; ; ++i)
  {
    if (a3 == i)
    {
      return 0;
    }

    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    v6 = *(a2 + 8 * i);
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      break;
    }
  }

  return i;
}

Swift::Int sub_1884DED58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle.startFind(_:)();
    v11 = v15;
    if ((v16 & 1) == 0)
    {
      do
      {
        v12 = (a3 + 16 * v11);
        if (*v12 == a1 && v12[1] == a2)
        {
          break;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v11 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v14 & 1) == 0);
    }

    return v11;
  }

  return result;
}

Swift::Int sub_1884DEE84(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int *a4, uint64_t a5)
{
  result = NSObject._rawHashValue(seed:)(*a4);
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle.startFind(_:)();
    v8 = v12;
    if ((v13 & 1) == 0)
    {
      do
      {
        sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
        v9 = *(a2 + 8 * v8);
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v8 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v11 & 1) == 0);
    }

    return v8;
  }

  return result;
}

void sub_1884DEFC0(uint64_t a1, uint64_t a2)
{
  v14 = MEMORY[0x1E69E7CC0];
  sub_18840489C(0, a2 & ~(a2 >> 63), 0);
  for (i = 0; ; ++i)
  {
    if (i == a2)
    {
LABEL_15:

      return;
    }

    if (a2 < 0)
    {
      break;
    }

    v5 = (a1 + 16 * i);
    v6 = *v5;
    v7 = v5[1];
    v8 = v14 + 5;
    v9 = v14[2] + 1;
    while (--v9)
    {
      if (v6 != *(v8 - 1) || v7 != *v8)
      {
        v8 += 2;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v11 = v14[2];
    v12 = v14[3];

    if (v11 >= v12 >> 1)
    {
      sub_18840489C((v12 > 1), v11 + 1, 1);
    }

    v14[2] = v11 + 1;
    v13 = &v14[2 * v11];
    v13[4] = v6;
    v13[5] = v7;
  }

  __break(1u);
}

uint64_t sub_1884DF0FC(uint64_t a1, uint64_t a2)
{
  v7 = sub_18844C2F0(MEMORY[0x1E69E7CC0]);
  result = specialized ContiguousArray.reserveCapacity(_:)();
  v5 = 0;
  while (1)
  {
    if (a2 == v5)
    {
      goto LABEL_8;
    }

    if (a2 < 0)
    {
      break;
    }

    v6 = *(a1 + 8 * v5);
    if (sub_1884DF1E4(v6, v7))
    {

      a2 = v5;
LABEL_8:

      return a2;
    }

    ++v5;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
  }

  __break(1u);
  return result;
}

BOOL sub_1884DF1E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    v6 = *v3++;
    v7 = v6;
    v8 = static NSObject.== infix(_:_:)();
  }

  while ((v8 & 1) == 0);
  return v4 != 0;
}

uint64_t sub_1884DF280(void *a1, uint64_t a2, Swift::Int *a3, uint64_t a4)
{
  if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
  {
    v5 = sub_1884DFB64(a2, sub_1884DFF04);
  }

  else
  {
    v5 = sub_1884DF4B4((a2 & 0xFFFFFFFFFFFFFF8) + 32, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), a3, a4);
  }

  *a1 = v6;
  return v5 & 1;
}

Swift::Int sub_1884DF300(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_20;
  }

  v4 = a3;
  v5 = result;
  v6 = 0;
  while (2)
  {
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v14 = v6 + 1;
    v7 = (v5 + 16 * v6);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    if (__OFSUB__(1 << *v4, 1))
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    _HashTable.UnsafeHandle._startIterator(bucket:)();

    while (1)
    {
      v8 = _HashTable.BucketIterator.currentValue.getter();
      if (v9)
      {
        break;
      }

      v10 = (v5 + 16 * v8);
      v11 = *v10 == *v7 && v10[1] == v7[1];
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 0;
      }

      _HashTable.BucketIterator.advance()();
    }

    _HashTable.BucketIterator.currentValue.setter();
    result = 1;
    ++v6;
    v4 = a3;
    if (v14 != a2)
    {
      continue;
    }

    return result;
  }
}

Swift::Int sub_1884DF4B4(Swift::Int result, uint64_t a2, Swift::Int *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_16;
  }

  v4 = a3;
  v5 = result;
  v6 = 0;
  while (2)
  {
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    v7 = *v4;
    v8 = *(v5 + 8 * v6);
    result = NSObject._rawHashValue(seed:)(v7);
    if (__OFSUB__(1 << *v4, 1))
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v18 = v6 + 1;
    _HashTable.UnsafeHandle._startIterator(bucket:)();

    while (1)
    {
      v9 = _HashTable.BucketIterator.currentValue.getter();
      if (v10)
      {
        break;
      }

      v11 = *(v5 + 8 * v9);
      v12 = *(v5 + 8 * v6);
      sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
      v13 = v11;
      v14 = v12;
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        return 0;
      }

      _HashTable.BucketIterator.advance()();
    }

    result = _HashTable.BucketIterator.currentValue.setter();
    ++v6;
    v4 = a3;
    if (v18 != v17)
    {
      continue;
    }

    return 1;
  }
}

void sub_1884DF66C(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int *a4, uint64_t a5)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_57;
  }

  if (v5 >= 1)
  {
    v9 = *(a3 + 16);
    if ((v9 - v5) / 2 <= a1)
    {
      v15 = a2;
      v16 = __OFSUB__(v9, a2);
      v17 = v9 - a2;
      if (v16)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v17 >= MEMORY[0x18CFD4CB0](*a4 & 0x3F) / 3)
      {
        _HashTable.UnsafeHandle._startIterator(bucket:)();
        v30 = _HashTable.BucketIterator.currentValue.getter();
        if ((v31 & 1) == 0 && v30 >= v15)
        {
          if (__OFSUB__(v30, v5))
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          _HashTable.BucketIterator.currentValue.setter();
        }

        _HashTable.BucketIterator.advance()();
        return;
      }

      sub_1884DE528(v15, a3);
      v19 = v18;
      v21 = v20;
      v23 = v22 >> 1;
      while (v21 != v23)
      {
        if (v21 >= v23)
        {
          goto LABEL_51;
        }

        v24 = *a4;
        v25 = *(v19 + 8 * v21);
        NSObject._rawHashValue(seed:)(v24);
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_52;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            v26 = _HashTable.BucketIterator.currentValue.getter();
            if ((v27 & 1) == 0 && v26 == v15)
            {
              break;
            }

            _HashTable.BucketIterator.advance()();
          }
        }

        if (__OFSUB__(v15, v5))
        {
          goto LABEL_53;
        }

        _HashTable.BucketIterator.currentValue.setter();

        v16 = __OFADD__(v15++, 1);
        if (v16)
        {
          goto LABEL_54;
        }

        ++v21;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (MEMORY[0x18CFD4CB0](*a4 & 0x3F) / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v9 < a1)
        {
LABEL_62:
          __break(1u);
          return;
        }

        for (i = 0; ; ++i)
        {
          if (i == a1)
          {

            goto LABEL_40;
          }

          v11 = *a4;
          v12 = *(a3 + 32 + 8 * i);
          NSObject._rawHashValue(seed:)(v11);
          if (__OFSUB__(1 << *a4, 1))
          {
            break;
          }

          if (_HashTable.UnsafeHandle._startIterator(bucket:)())
          {
            while (1)
            {
              v13 = _HashTable.BucketIterator.currentValue.getter();
              if ((v14 & 1) == 0 && v13 == i)
              {
                break;
              }

              _HashTable.BucketIterator.advance()();
            }
          }

          if (__OFADD__(i, v5))
          {
            goto LABEL_50;
          }

          _HashTable.BucketIterator.currentValue.setter();
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v28 = _HashTable.BucketIterator.currentValue.getter();
      if ((v29 & 1) == 0 && v28 < a1)
      {
        if (__OFADD__(v28, v5))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      _HashTable.BucketIterator.advance()();
LABEL_40:
      v32 = a4[1];
      if (__OFSUB__(v32 >> 6, v5))
      {
        goto LABEL_59;
      }

      v33 = 1 << *a4;
      v16 = __OFSUB__(v33, 1);
      v34 = v33 - 1;
      if (v16)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v35 = (v34 & (((v32 >> 6) - v5) >> 63)) + (v32 >> 6) - v5;
      if (v35 < v34)
      {
        v34 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v35 - v34) << 6);
    }
  }
}

void sub_1884DFA94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x18CFD5010](a1);

  [a3 setApplicationBundleIdentifierOverrideForNetworkAttribution_];
}

void *sub_1884DFAF8(uint64_t a1, void *(*a2)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  v4 = sub_1884DFBE0(a1);
  v5 = v4[2];

  result = a2(&v7, (v4 + 4), v5);
  if (!v2)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1884DFB64(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  v4 = sub_1884DFBE0(a1);
  v5 = v4[2];

  a2(&v8, (v4 + 4), v5);
  if (!v2)
  {
    v6 = v8;
  }

  return v6 & 1;
}

void *sub_1884DFBE0(uint64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_1885109F8(a1);

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_1884DFCA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

Swift::Int sub_1884DFCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *a4;
  if (a3)
  {

    v10 = sub_1884DEE84(v8, a1, a2, (a3 + 16), a3 + 32);
    v12 = v11;
    v14 = v13;
  }

  else
  {
    result = sub_1884DECAC(*a4, a1, a2);
    v10 = result;
    v12 = v16;
    v14 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v12 & 1;
  *(a5 + 16) = v14;
  return result;
}

id sub_1884DFDA8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {

    a1 = a4;
  }

  return a1;
}

void sub_1884DFE14(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {

    a1 = a4;
  }
}

uint64_t sub_1884DFEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1884DF0FC(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

Swift::Int sub_1884DFED0@<X0>(Swift::Int a1@<X0>, uint64_t a2@<X1>, Swift::Int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_1884DF4B4(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
    *(a5 + 8) = v8;
  }

  return result;
}

uint64_t sub_1884DFF20()
{
  sub_1883F78E0();
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 96);
  swift_task_alloc();
  sub_1883FF2B8();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1884061E0;

  return sub_1884DDD40(v5, v3, v0 + 16, v6);
}

void sub_1884E0020()
{

  _os_log_impl(v1, v0, v3, v2, v4, 0xCu);
}

uint64_t sub_1884E0068(uint64_t a1, void *a2)
{
  v6 = v2[149];
  v2[197] = v6;
  v7 = v2[150];
  v2[198] = v7;

  return sub_1884DD9AC(v6, v7, a1, a2);
}

uint64_t sub_1884E00A8()
{
}

double sub_1884E00C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{

  return result;
}

void sub_1884E0168(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t sub_1884E0188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return _assertionFailure(_:_:file:line:flags:)(a1, 11, 2, a4, a5, a6, 22, 2, a9);
}

void *sub_1884E01A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, (v9 + 24), 0x48uLL);
}

void *sub_1884E01C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, (v9 + 24), 0x48uLL);
}

uint64_t sub_1884E01E8()
{

  return sub_188426C84(v2, v1 == 0, v0);
}

void sub_1884E0208()
{
  *(v0 - 104) = 0;
  *(v0 - 96) = 0xE000000000000000;

  _StringGuts.grow(_:)(38);
}

void *sub_1884E0228(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return memcpy(va, (v10 + 16), 0x50uLL);
}

double sub_1884E0248()
{

  return result;
}

uint64_t sub_1884E0268(uint64_t a1, uint64_t a2)
{

  return sub_18850DE28();
}

unint64_t sub_1884E0280(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return sub_1883FE340(a1, a2, va);
}

uint64_t sub_1884E0298()
{
  *v0 = v1;

  return swift_task_alloc();
}

void sub_1884E02B0()
{

  sub_18850BFF4(0, v0);
}

double sub_1884E02C8()
{

  return result;
}

uint64_t sub_1884E02E0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1884E02F8()
{
  type metadata accessor for SyncEngine(0);
  v0 = sub_1883F8A48();
  sub_18844E6FC(&qword_1EA90D5A8, &unk_1886FE110);
  inited = swift_initStackObject();
  v2 = sub_1883F7504(inited, xmmword_1886F8960);
  v2[2].n128_u64[0] = v3;
  v2[2].n128_u64[1] = v4;
  v2[3].n128_u64[0] = 0x7373416863746546;
  v2[3].n128_u64[1] = 0xEA00000000007465;
  v5 = !v0;
  if (v0)
  {
    v6 = 0x6974616D6F747541;
  }

  else
  {
    v6 = 0x6C61756E614DLL;
  }

  if (v5)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE900000000000063;
  }

  sub_1883F93D4();
  sub_1883F8CAC();
  v8[2] = 3;
  v8[8] = v6;
  v8[9] = v7;
  sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
  sub_1883F94A4();
  v9 = BidirectionalCollection<>.joined(separator:)();

  return v9;
}

uint64_t sub_1884E04B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v10 = sub_1883F8AE4(v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  sub_1884C2128(a3, v24 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_1883F9014();
  v16 = sub_1883F971C(v14, v15, v13);

  if (v16 == 1)
  {
    sub_188442B84(v12, &qword_1EA90E6A0, &qword_1886F7030);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      String.utf8CString.getter();

      if (v20 | v18)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v18;
        v25[3] = v20;
      }

      else
      {
        v21 = 0;
      }

      sub_18840ADB4(v21);
      v22 = swift_task_create();

      sub_188442B84(a3, &qword_1EA90E6A0, &qword_1886F7030);

      return v22;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_188442B84(a3, &qword_1EA90E6A0, &qword_1886F7030);
  if (v20 | v18)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v18;
    v25[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1884E0724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v9 = sub_1883F8AE4(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v23 - v10;
  sub_1884C2128(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_1883F9014();
  v15 = sub_1883F971C(v13, v14, v12);

  if (v15 == 1)
  {
    sub_188442B84(v11, &qword_1EA90E6A0, &qword_1886F7030);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a3;
      String.utf8CString.getter();
      sub_1883F4C5C(0, &qword_1EA90C690, off_1E70B9FD0);

      if (v19 | v17)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v17;
        v24[3] = v19;
      }

      else
      {
        v20 = 0;
      }

      sub_18840ADB4(v20);
      v21 = swift_task_create();

      sub_188442B84(v23[0], &qword_1EA90E6A0, &qword_1886F7030);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_188442B84(a3, &qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F4C5C(0, &qword_1EA90C690, off_1E70B9FD0);
  if (v19 | v17)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v17;
    v24[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1884E0B38()
{
  sub_1883FE320();
  v0 = sub_18844E6FC(&qword_1EA90D380, &qword_1886F7800);
  sub_1883FF784(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1884E0C2C()
{
  sub_1883FE320();
  v0 = sub_18844E6FC(&qword_1EA90E368, &qword_1886FAB68);
  sub_1883FF784(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1884E0CD4()
{
  sub_1883FE320();
  v2 = sub_18844E6FC(v0, v1);
  sub_1883FF784(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1884E0D10(uint64_t a1)
{
  result = sub_1884E482C(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1884E486C(result, v3, 0, a1);
  }
}

unint64_t sub_1884E0DBC()
{
  if (*(v0 + 384))
  {
    v1 = *(v0 + 376);
  }

  else
  {
    v1 = sub_188420248();
  }

  return v1;
}

void sub_1884E0E08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = type metadata accessor for TaskPriority();
      sub_1883F90F4(v7, 1, 1, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = v9;
      v13[5] = v11;
      v14 = a1;
      sub_188453610();
    }

    else
    {
      if (qword_1EA90C9F0 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_1883FDE5C(v15, qword_1EA90C9F8);
      v16 = a1;

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v17, v18))
      {

        return;
      }

      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v19 = 136315394;

      v22 = sub_1883FE43C();
      v24 = v23;

      v25 = sub_1883FE340(v22, v24, &v27);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v16;
      *v20 = v16;
      v26 = v16;
      _os_log_impl(&dword_1883EA000, v17, v18, "%s received notification in sync engine that is not a database notification: %@", v19, 0x16u);
      sub_188442B84(v20, &qword_1EA90DC70, &unk_1886FA190);
      MEMORY[0x18CFD7E80](v20, -1, -1);
      sub_1883FE944(v21);
      MEMORY[0x18CFD7E80](v21, -1, -1);
      MEMORY[0x18CFD7E80](v19, -1, -1);
    }
  }
}

uint64_t sub_1884E10FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_1884061E0;

  return sub_1884E1198();
}

uint64_t sub_1884E1198()
{
  sub_1883F7120();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  sub_1883F8AE4(v3);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1884E122C, v0, 0);
}

uint64_t sub_1884E122C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1883F98A8();
  sub_1884008A8();
  if (swift_weakLoadStrong())
  {
    v16 = v14[2];

    v17 = [v16 recordZoneID];
    v14[5] = v17;
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v18 = v14[3];
    v19 = type metadata accessor for Logger();
    v14[6] = sub_1883FDE5C(v19, qword_1EA90C9F8);

    v20 = v17;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      swift_slowAlloc();
      v23 = sub_1883FDDF4();
      v70 = sub_1883FE540();
      *v18 = 136315394;
      v24 = sub_1883FE43C();
      v30 = sub_1883FB598(v24, v25, v26, v27, v28, v29);

      *(v18 + 4) = v30;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v20;
      *v23 = v17;
      v31 = v20;
      _os_log_impl(&dword_1883EA000, v21, v22, "%s received database notification (zone=%@", v18, 0x16u);
      sub_188442B84(v23, &qword_1EA90DC70, &unk_1886FA190);
      sub_1883F7B60();
      sub_1883FE944(v70);
      sub_1883F7B60();
      sub_1883FD784();
    }

    v32 = v14[3];
    [*(*(v32 + 128) + 16) setNeedsToFetchDatabaseChanges_];
    if (*(v32 + 392) == 1)
    {
      v33 = v14[3];

      v34 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      sub_1883FF744();
      if (sub_1883F9084())
      {
        sub_1883F9984();
        sub_1883F8C00();
        sub_18840531C();
        *v33 = 136315138;
        v35 = sub_1883FE43C();
        sub_1883FB598(v35, v36, v37, v38, v39, v40);
        sub_1883FE2FC();
        *(v33 + 4) = v20;
        sub_1883F7A44(&dword_1883EA000, v41, v42, "%s sync after push notification");
        sub_1883F8EAC();
        sub_1883F82B8();
      }

      v43 = swift_task_alloc();
      v14[7] = v43;
      *v43 = v14;
      v43[1] = sub_1884E1614;
      sub_1883FEB30();

      return sub_1884E1AA0();
    }

    else
    {
      type metadata accessor for Date();
      v65 = sub_1883F9014();
      sub_1883F90F4(v65, v66, 1, v67);
      v68 = swift_task_alloc();
      v14[9] = v68;
      *v68 = v14;
      sub_1883FE6E4(v68);
      sub_1883FEB30();

      return sub_18840EDE4();
    }
  }

  else
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v46 = v14[3];
    v47 = type metadata accessor for Logger();
    sub_1883FDE5C(v47, qword_1EA90C9F8);

    v48 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_1883FF744();
    if (sub_1883F9084())
    {
      sub_1883F9984();
      sub_1883F8C00();
      sub_18840531C();
      *v46 = 136315138;
      v49 = sub_1883FE43C();
      sub_1883FB598(v49, v50, v51, v52, v53, v54);
      sub_1883FE2FC();
      *(v46 + 4) = v15;
      sub_1883F7A44(&dword_1883EA000, v55, v56, "%s not processing database notification for deallocated engine");
      sub_1883F8EAC();
      sub_1883F82B8();
    }

    sub_1883F816C();
    sub_1883FEB30();

    return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1884E1614()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F7B78();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 64) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1884E18C0;
  }

  else
  {
    v6 = sub_1884E48F4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1884E1734()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  sub_188442B84(v2, &unk_1EA90D7B0, &dword_1886F8780);

  return MEMORY[0x1EEE6DFA0](sub_1884E1860, v3, 0);
}

uint64_t sub_1884E1860()
{
  sub_1883F7120();

  sub_1883F816C();

  return v1();
}

uint64_t sub_1884E18C0()
{
  v1 = *(v0 + 64);

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 64);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = sub_1883FE540();
    *v7 = 136315394;
    v9 = sub_1883FE43C();
    v13 = sub_1883FC788(v9, v10, v11, v12);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&dword_1883EA000, v3, v4, "%s push sync failed with error: %@", v7, 0x16u);
    sub_188442B84(v8, &qword_1EA90DC70, &unk_1886FA190);
    sub_1884037D8();
    sub_1883FE944(v21);
    sub_1883F7B60();
    sub_1883F82B8();
  }

  else
  {
  }

  type metadata accessor for Date();
  v16 = sub_1883F9014();
  sub_1883F90F4(v16, v17, 1, v18);
  v19 = swift_task_alloc();
  *(v0 + 72) = v19;
  *v19 = v0;
  sub_1883FE6E4(v19);

  return sub_18840EDE4();
}

uint64_t sub_1884E1AA0()
{
  sub_1883F7120();
  v1[8] = v0;
  v1[9] = *v0;
  v2 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8AE4(v2);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1884E1B5C, v0, 0);
}

uint64_t sub_1884E1B5C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_1883F4C5C(0, &qword_1EA90E528, off_1E70BA028);
  v4 = sub_1884E5E90();
  v6 = sub_1884E1FC0(v4, v5, &selRef_initWithIdentifier_);
  v0[11] = v6;
  [v6 start];
  v7 = type metadata accessor for TaskPriority();
  sub_1883F90F4(v1, 1, 1, v7);
  v8 = sub_18840F920();
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = v8;
  v9[4] = v3;
  v9[5] = v6;
  v9[6] = v2;
  swift_retain_n();
  v10 = v6;
  v11 = MEMORY[0x1E69E7CA8];
  v12 = sub_1884E04B8(0, 0, v1, &unk_1886FB4F0, v9, MEMORY[0x1E69E7CA8] + 8);
  v0[12] = v12;
  v0[6] = sub_1884E3C78;
  v0[7] = v12;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1884C4F80;
  v0[5] = &unk_1EFA2C0E0;
  v13 = _Block_copy(v0 + 2);

  [v10 setExpirationHandler_];
  _Block_release(v13);
  v14 = swift_task_alloc();
  v0[13] = v14;
  v15 = sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  *v14 = v0;
  v14[1] = sub_1884E1DAC;
  v16 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v15, v12, v11 + 8, v15, v16);
}

uint64_t sub_1884E1DAC()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F7B78();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 112) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_1884E1F50;
  }

  else
  {
    v6 = sub_1884E1ECC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1884E1ECC()
{
  sub_1883F78E0();
  v1 = *(v0 + 88);
  [v1 complete];

  sub_1883FDB48();

  return v2();
}

uint64_t sub_1884E1F50()
{
  sub_1883F7120();

  sub_1883F816C();

  return v1();
}

id sub_1884E1FC0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = MEMORY[0x18CFD5010](a1, a2);

  v8 = [v6 *a3];

  return v8;
}

uint64_t sub_1884E2034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a1;
  v6[5] = a4;

  return MEMORY[0x1EEE6DFA0](sub_1884E20C8, 0, 0);
}

uint64_t sub_1884E20C8()
{
  sub_1883F7120();
  v1 = v0;
  v0[1].opaque[1] = 0;
  v0[1].opaque[0] = 0;
  v2 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v3 = _os_activity_create(&dword_1883EA000, "engine/fetch-on-push", v2, OS_ACTIVITY_FLAG_DEFAULT);
  v0[4].opaque[0] = v3;
  os_activity_scope_enter(v3, v0 + 1);
  v4 = swift_task_alloc();
  v1[4].opaque[1] = v4;
  *v4 = v1;
  v4[1] = sub_1884E21C8;
  v5 = v1[3].opaque[0];
  v6 = v1[3].opaque[1];
  v7 = v1[2].opaque[0];
  v8 = v1[2].opaque[1];

  return sub_1884E241C(v7, v8, v5, v6);
}

uint64_t sub_1884E21C8()
{
  sub_1883F7120();
  sub_1883F8D80();
  *v3 = v2;
  v4 = *v1;
  sub_1883F7110();
  *v5 = v4;
  *(v6 + 80) = v0;

  if (v0)
  {
    v7 = sub_1884E2388;
  }

  else
  {
    v7 = sub_1884E22F4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1884E22F4()
{
  sub_1883F7120();
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  sub_1883F816C();

  return v1();
}

uint64_t sub_1884E2388()
{
  sub_1883F7120();
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  sub_1883F816C();

  return v1();
}

uint64_t sub_1884E241C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[59] = a3;
  v4[60] = a4;
  v4[58] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1884E2440, 0, 0);
}

id sub_1884E2440()
{
  v32 = v0;
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480(&qword_1EA90C9F0);
  }

  v2 = v0[58];
  v3 = type metadata accessor for Logger();
  sub_1883FDE5C(v3, qword_1EA90C9F8);

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1883FF744();
  if (sub_1883F9084())
  {
    sub_1883F9984();
    __src[0] = sub_1883F8C00();
    *v2 = 136315138;
    v5 = sub_1883FE43C();
    sub_1883FC788(v5, v6, v7, v8);
    sub_1883FE2FC();
    *(v2 + 4) = v1;
    sub_1883F7A44(&dword_1883EA000, v9, v10, "%s performing immediate push fetch");
    sub_1883F8EAC();
    sub_1883F82B8();
  }

  v11 = sub_1883F57B8();
  v0[61] = v11;
  sub_1883F60E8(0xD000000000000020, 0x80000001887023D0, v11);
  result = [v11 defaultConfiguration];
  if (result)
  {
    v13 = result;
    v14 = v0 + 64;
    v15 = (v0 + 519);
    v16 = (v0 + 526);
    [result setBackgroundTask_];

    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    sub_18841A9C8();
    v17 = v11;
    v18 = MEMORY[0x1E69E7CC0];
    v19 = Dictionary.init(dictionaryLiteral:)();

    v0[22] = 0;
    *(v0 + 184) = 2;
    v0[24] = v17;
    v0[25] = v18;
    v0[26] = v19;
    *(v0 + 216) = 1;
    v0[28] = 0;
    *(v0 + 232) = 0;
    v0[30] = 3;
    v20 = v17;
    sub_1883F697C((v0 + 22), (v0 + 31));
    v22 = sub_1883F69F4(v20);
    if (v21 && (sub_1883F7624(0x6E45636E79534B43, 0xEC000000656E6967, v22, v21) & 1) == 0)
    {
    }

    else
    {
      v23 = v0[22];
      v24 = *(v0 + 184);
      type metadata accessor for SyncEngine(0);
      __src[0] = v23;
      LOBYTE(__src[1]) = v24;
      v18 = MEMORY[0x1E69E7CC0];

      v15 = (v0 + 519);
      v14 = v0 + 64;
      v25 = sub_1883F6734(__src);
      v27 = v26;

      v28 = v27;
      v16 = (v0 + 526);
      sub_1883F60E8(v25, v28, v20);
    }

    sub_1883F7768((v0 + 22));
    v0[40] = 0;
    *(v0 + 328) = 2;
    *(v0 + 329) = *v14;
    *(v0 + 83) = *(v14 + 3);
    v0[42] = v20;
    v0[43] = v18;
    v0[44] = v19;
    *(v0 + 360) = 1;
    *(v0 + 361) = *v15;
    *(v0 + 91) = *(v15 + 3);
    v0[46] = 0;
    *(v0 + 376) = 0;
    v29 = *v16;
    *(v0 + 95) = *(v16 + 3);
    *(v0 + 377) = v29;
    v0[48] = 3;
    memcpy(__src + 7, v0 + 40, 0x48uLL);
    *(v0 + 16) = 0;
    memcpy(v0 + 17, __src, 0x4FuLL);
    memcpy(v0 + 12, v0 + 2, 0x50uLL);
    sub_1883F697C((v0 + 40), (v0 + 49));
    v30 = swift_task_alloc();
    v0[62] = v30;
    *v30 = v0;
    v30[1] = sub_1884E2838;

    return sub_1883FA8A4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1884E2838()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v3 = v2;
  v4 = *v1;
  sub_1883F7110();
  *v5 = v4;
  *(v6 + 504) = v0;

  if (v0)
  {
    v7 = sub_1884E299C;
  }

  else
  {
    v7 = sub_1884E2934;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1884E2934()
{
  sub_1883F7120();
  v1 = *(v0 + 488);
  sub_1883FB300(v0 + 16);
  sub_1883F7768(v0 + 320);

  sub_1883FDB48();

  return v2();
}

uint64_t sub_1884E299C()
{
  sub_1883F7120();

  sub_1883F7768(v0 + 320);
  sub_1883FB300(v0 + 16);
  sub_1883F816C();

  return v1();
}

void sub_1884E2A08()
{
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);

  JUMPOUT(0x18CFD54D0);
}

uint64_t sub_1884E2A68()
{
  sub_1883F78E0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);

  sub_1883F816C();

  return v3();
}

uint64_t sub_1884E2AE4()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 456) = v4;
  v5 = *(v3 + 360);
  if (v4)
  {
    v6 = sub_1884E35C0;
  }

  else
  {
    v6 = sub_1884E2BF4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1884E2BF4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1883F98A8();
  sub_1884008A8();
  v24 = *(v22 + 360);

  v25 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1883FF744();
  if (sub_1883F9084())
  {
    sub_1883F9984();
    sub_1883F8C00();
    sub_18840531C();
    *v24 = 136315138;
    v26 = sub_1883FE43C();
    sub_1883FB598(v26, v27, v28, v29, v30, v31);
    sub_1883FE2FC();
    *(v24 + 4) = v23;
    sub_1883F7A44(&dword_1883EA000, v32, v33, "%s saved subscription");
    sub_1883F8EAC();
    sub_1883F82B8();
  }

  v34 = *(v22 + 416);
  [*(v34 + 16) setNeedsToSaveDatabaseSubscription_];
  if (([*(v34 + 16) needsToFetchDatabaseChanges] & 1) == 0)
  {
    v35 = *(v22 + 360);

    v36 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1883FF744();
    if (sub_1883F9084())
    {
      sub_1883F9984();
      sub_1883F8C00();
      sub_18840531C();
      *v35 = 136315138;
      v37 = sub_1883FE43C();
      sub_1883FB598(v37, v38, v39, v40, v41, v42);
      sub_1883FE2FC();
      *(v35 + 4) = v23;
      sub_1883F7A44(&dword_1883EA000, v43, v44, "%s scheduling fetch changes after saving subscription");
      sub_1883F8EAC();
      sub_1883F82B8();
    }

    [*(*(v22 + 416) + 16) setNeedsToFetchDatabaseChanges_];
    sub_1884E5EAC();
  }

  v46 = *(v22 + 376);
  v45 = *(v22 + 384);
  v47 = *(v22 + 368);
  v58 = *(v22 + 352);
  *(v22 + 80) = v22;
  *(v22 + 120) = v22 + 344;
  *(v22 + 88) = sub_1884E2EC4;
  swift_continuation_init();
  *(v22 + 264) = v47;
  v48 = sub_188403664((v22 + 240));
  sub_18844E6FC(&qword_1EA90E538, &qword_1886FB528);
  CheckedContinuation.init(continuation:function:)();
  (*(v46 + 32))(v48, v45, v47);
  *(v22 + 208) = MEMORY[0x1E69E9820];
  *(v22 + 216) = 1107296256;
  *(v22 + 224) = sub_1884E38F0;
  *(v22 + 232) = &unk_1EFA2C130;
  [v58 fetchAllSubscriptionsWithCompletionHandler_];
  (*(v46 + 8))(v48, v47);
  sub_1883FEB30();

  return MEMORY[0x1EEE6DEC8](v49, v50, v51, v52, v53, v54, v55, v56, a9, v58, a11, a12, a13, a14);
}

uint64_t sub_1884E2EC4()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 464) = v4;
  v5 = *(v3 + 360);
  if (v4)
  {
    v6 = sub_1884E3758;
  }

  else
  {
    v6 = sub_1884E2FD4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

void sub_1884E2FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1883F98A8();
  a21 = v23;
  a22 = v24;
  sub_1884008A8();
  a20 = v22;
  v101 = v22;
  v25 = *(v22 + 344);
  v26 = MEMORY[0x1E69E7CC0];
  a11 = MEMORY[0x1E69E7CC0];
  v27 = sub_1883F4C9C(v25);
  for (i = 0; v27 != i; ++i)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x18CFD59D0](i, v25);
    }

    else
    {
      if (i >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v29 = *(v25 + 8 * i + 32);
    }

    v30 = v29;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return;
    }

    if ([v29 subscriptionType] == 3)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  v31 = a11;
  v32 = sub_1883F4C9C(a11);
  if (v32)
  {
    v33 = v32;
    a11 = v26;
    sub_18840489C(0, v32 & ~(v32 >> 63), 0);
    if (v33 < 0)
    {
      goto LABEL_47;
    }

    v34 = 0;
    v35 = a11;
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x18CFD59D0](v34, v31);
      }

      else
      {
        v36 = *(v31 + 8 * v34 + 32);
      }

      v37 = v36;
      v38 = [v36 subscriptionID];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      a11 = v35;
      v43 = *(v35 + 16);
      v42 = *(v35 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_18840489C((v42 > 1), v43 + 1, 1);
        v35 = a11;
      }

      ++v34;
      *(v35 + 16) = v43 + 1;
      v44 = v35 + 16 * v43;
      *(v44 + 32) = v39;
      *(v44 + 40) = v41;
    }

    while (v33 != v34);
  }

  else
  {

    v35 = MEMORY[0x1E69E7CC0];
  }

  v45 = v101;
  v46 = *(v101 + 360);
  sub_18844E6FC(&qword_1EA90E520, &qword_1886FB4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1886F8960;
  *(inited + 32) = sub_188420248();
  *(inited + 40) = v48;
  v49 = *(v46 + 384);
  *(inited + 48) = *(v46 + 376);
  *(inited + 56) = v49;

  v50 = 0;
  v51 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v52 = (inited + 40 + 16 * v50);
  while (++v50 != 3)
  {
    v53 = v52 + 2;
    v54 = *v52;
    v52 += 2;
    if (v54)
    {
      v55 = *(v53 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1883F8CAC();
        v51 = v58;
      }

      v56 = *(v51 + 16);
      if (v56 >= *(v51 + 24) >> 1)
      {
        sub_1883F8CAC();
        v51 = v59;
      }

      *(v51 + 16) = v56 + 1;
      v57 = v51 + 16 * v56;
      *(v57 + 32) = v55;
      *(v57 + 40) = v54;
      goto LABEL_24;
    }
  }

  swift_setDeallocating();
  sub_18841F82C();
  sub_18841F88C(v35);
  v61 = v60;
  sub_18841F88C(v51);
  v63 = sub_1884E39DC(v62, v61);

  v64 = sub_1884E0D10(v63);
  if (v65)
  {
    v66 = v64;
    v67 = v65;
    if (*(v63 + 16) > 1uLL)
    {

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = sub_1883FA47C();
        a11 = swift_slowAlloc();
        *v70 = 136315394;
        v71 = sub_1883FE43C();
        v77 = sub_1883FB598(v71, v72, v73, v74, v75, v76);

        *(v70 + 4) = v77;
        *(v70 + 12) = 2080;
        v78 = Set.description.getter();
        v80 = v79;

        v81 = sub_1883FE340(v78, v80, &a11);
        v45 = v101;

        *(v70 + 14) = v81;
        _os_log_impl(&dword_1883EA000, v68, v69, "%s found more than one existing database subscription: %s", v70, 0x16u);
        swift_arrayDestroy();
        sub_1883F7B60();
        sub_1884037D8();

LABEL_39:

        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v82, v83))
        {
          v84 = sub_1883FA47C();
          a11 = swift_slowAlloc();
          *v84 = 136315394;
          v85 = sub_1883FE43C();
          v91 = sub_1883FB598(v85, v86, v87, v88, v89, v90);

          *(v84 + 4) = v91;
          *(v84 + 12) = 2080;
          *(v84 + 14) = sub_1883FE340(v66, v67, &a11);
          _os_log_impl(&dword_1883EA000, v82, v83, "%s found an untracked existing database subscription: %s", v84, 0x16u);
          swift_arrayDestroy();
          sub_1884037D8();
          sub_1883F7B60();
        }

        sub_18850C0D8(v66, v67);
        sub_18841FD50();
        goto LABEL_42;
      }
    }

    goto LABEL_39;
  }

LABEL_42:
  v92 = *(v45 + 424);

  sub_1883FDB48();
  sub_1883FEB30();

  v94(v93, v94, v95, v96, v97, v98, v99, v100, a9, v101, a11, a12, a13, a14);
}

uint64_t sub_1884E35C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1883F98A8();
  sub_1884008A8();
  swift_willThrow();
  v17 = *(v14 + 456);
  v18 = *(v14 + 360);
  v19 = v17;
  v20 = sub_18840EFC4(v17);

  v21 = v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    sub_1883FA47C();
    v16 = sub_1883FDDF4();
    v15 = sub_1883FE540();
    a10 = v15;
    *v18 = 136315394;
    v24 = sub_1883FE43C();
    v28 = sub_1883FC788(v24, v25, v26, v27);

    *(v18 + 4) = v28;
    *(v18 + 12) = 2112;
    v29 = v21;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v30;
    *v16 = v30;
    sub_188404264(&dword_1883EA000, v31, v32, "%s error saving subscriptions: %@");
    sub_188442B84(v16, &qword_1EA90DC70, &unk_1886FA190);
    sub_1883F7B60();
    sub_1883FE944(v15);
    sub_1884037D8();
    sub_1883FD784();
  }

  v33 = sub_188405D78();
  sub_18840F1E8(v21);

  swift_willThrow();

  sub_1883F816C();
  sub_1883FEB30();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1884E3758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1883F98A8();
  sub_1884008A8();
  swift_willThrow();
  v17 = *(v14 + 464);
  v18 = *(v14 + 360);
  v19 = v17;
  v20 = sub_18840EFC4(v17);

  v21 = v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    sub_1883FA47C();
    v16 = sub_1883FDDF4();
    v15 = sub_1883FE540();
    a10 = v15;
    *v18 = 136315394;
    v24 = sub_1883FE43C();
    v28 = sub_1883FC788(v24, v25, v26, v27);

    *(v18 + 4) = v28;
    *(v18 + 12) = 2112;
    v29 = v21;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v30;
    *v16 = v30;
    sub_188404264(&dword_1883EA000, v31, v32, "%s error saving subscriptions: %@");
    sub_188442B84(v16, &qword_1EA90DC70, &unk_1886FA190);
    sub_1883F7B60();
    sub_1883FE944(v15);
    sub_1884037D8();
    sub_1883FD784();
  }

  v33 = sub_188405D78();
  sub_18840F1E8(v21);

  swift_willThrow();

  sub_1883F816C();
  sub_1883FEB30();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
}

void sub_1884E38F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_188400B68((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_18840AC9C(v4, v5, &unk_1EA90E530, &unk_1886FB520, MEMORY[0x1E69E8538]);
  }

  else
  {
    sub_1883F4C5C(0, &qword_1EA90CA90, off_1E70BA7C8);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1884E0CD4();
  }
}

Swift::Int sub_1884E39DC(uint64_t a1, Swift::Int a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_188504600();
    return a2;
  }

  else
  {

    return sub_1884E3C80(a1, a2);
  }
}

uint64_t sub_1884E3A30()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1884E3A78()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1884E3AC4()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = sub_1883F7E38(v4);
  *v5 = v6;
  v7 = sub_1883F7A30(v5);

  return sub_1884E10FC(v7, v8, v1, v3, v2);
}

uint64_t sub_1884E3B70(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1884E3BC4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  v6 = sub_1883F7E38(v5);
  *v6 = v7;
  v8 = sub_1883F7A30(v6);

  return sub_1884E2034(v8, v9, v1, v2, v3, v4);
}

Swift::Int sub_1884E3C80(uint64_t a1, Swift::Int a2)
{
  v5 = a2;
  v56 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v49 = v12;
    v50 = v7;
    v51 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v22 = (*(v5 + 48) + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v53 = v47;
            v54 = v16;
            v55 = v11;
            v3 = v50;
            v12 = v51;
            v52[0] = v51;
            v52[1] = v50;

            v25 = *(v5 + 32);
            v44 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v44;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v45 = &v43;
              MEMORY[0x1EEE9AC00](v24);
              v7 = &v43 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = *(v5 + 16);
              v48 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v49;
              while (1)
              {
                v46 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                Hasher.init(_seed:)();

                String.hash(into:)();
                v34 = Hasher._finalize()();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v50;
                    v12 = v51;
                    v29 = v49;
                    goto LABEL_24;
                  }

                  v36 = (*(v5 + 48) + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v48[v7];
                v48[v7] = v39 & ~v8;
                v3 = v50;
                v12 = v51;
                v29 = v49;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  __break(1u);
                }

                if (v46 == 1)
                {

                  v5 = MEMORY[0x1E69E7CD0];
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = sub_1884E43CC(v48, v44, v46, v5);
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v41 = swift_slowAlloc();
            v42 = sub_1884E4344(v41, v44, (v5 + 56), v44, v5, v7, v52);

            MEMORY[0x18CFD7E80](v41, -1, -1);
            v12 = v52[0];
            v47 = v53;
            v5 = v42;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v50;
        v14 = v51;
        v12 = v49;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    sub_1883F70C4(v14);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v5;
}

Swift::Int sub_1884E4158(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_1884E43CC(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

Swift::Int sub_1884E4344(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1884E4158(a1, a2, a5, a6, a7);

  return v12;
}

Swift::Int sub_1884E43CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_18844E6FC(&qword_1EA90E6C0, &unk_1886FBD20);
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

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

Swift::Int sub_1884E45E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_18844E6FC(&qword_1EA90E540, &qword_1886FB530);
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
    v16 = *(v4 + 48) + 16 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    Hasher.init(_seed:)();
    MEMORY[0x18CFD5EB0](v18);
    v19 = v17;
    NSObject.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v9 + 48) + 16 * v23;
    *v28 = v17;
    *(v28 + 8) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1884E486C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1884E48FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
    Set.Iterator.init(_cocoa:)();
    v4 = v32;
    v5 = v33;
    v7 = v34;
    v6 = v35;
    v8 = v36;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v6 = 0;
  }

  v12 = (v7 + 64) >> 6;
  v13 = MEMORY[0x1E69E7CC0];
  v30 = v4;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v6;
  v15 = v8;
  v16 = v6;
  if (v8)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v4 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_34:
      sub_1883F70C4(v30);

      return;
    }

    while (1)
    {
      if (*(a4 + 16))
      {
        sub_188486310();
        if (v20)
        {
          v21 = (*(a4 + 56) + 16 * v19);
          v22 = *v21;
          v23 = v21[1];

          goto LABEL_22;
        }

        v22 = 0xD000000000000012;
      }

      else
      {
        v22 = 0xD000000000000012;
      }

      v23 = 0x8000000188702670;
LABEL_22:
      if (v22 == 0xD000000000000012 && 0x8000000188702670 == v23)
      {
        v25 = 1;
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1884774A8();
        v13 = v28;
      }

      v26 = *(v13 + 16);
      if (v26 >= *(v13 + 24) >> 1)
      {
        sub_1884774A8();
        v13 = v29;
      }

      *(v13 + 16) = v26 + 1;
      v27 = v13 + 24 * v26;
      *(v27 + 32) = v18;
      *(v27 + 40) = v25 & 1;
      *(v27 + 48) = 0;
      v6 = v16;
      v8 = v17;
      v4 = v30;
      if ((v30 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
        swift_dynamicCast();
        v18 = v37;
        v16 = v6;
        v17 = v8;
        if (v37)
        {
          continue;
        }
      }

      goto LABEL_34;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
      goto LABEL_34;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t (*sub_1884E4C40(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_188470D2C(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1884F2D94(v6, a2, a3);
  return sub_1884E4CB4;
}

void sub_1884E4CB4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_1884E4D00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
    Set.Iterator.init(_cocoa:)();
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
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

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v7;
  v13 = v8;
  v14 = v7;
  if (v8)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16)
    {
      do
      {
        v23 = v16;
        sub_1884F2304(&v23, a2);

        if (v3)
        {
          break;
        }

        v7 = v14;
        v8 = v15;
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
        swift_dynamicCast();
        v16 = v23;
        v14 = v7;
        v15 = v8;
      }

      while (v23);
    }

LABEL_19:
    sub_1883F70C4(v4);
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= ((v6 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v13 = *(v5 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_1884E4F1C(uint64_t a1, void *a2)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v14 = *(*(a1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v8)))));
      v12 = v14;
      sub_1884F2660(&v14, a2);
      v13 = v14;
      if (v2)
      {
        break;
      }

      v8 &= v8 - 1;

      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        return;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1884E50C0()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  sub_188404D5C();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1884E523C()
{
  sub_1883F7120();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  sub_1883F8AE4(v3);
  v1[9] = sub_188403038();
  v4 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884E52C0()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v1 = v0[8];
  v2 = sub_188403050();
  v3 = *(v1 + 128);
  if (v2)
  {
    v4 = v0[7];
    sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1886F79A0;
    v6 = [v4 recordID];
    v7 = [v6 zoneID];

    *(inited + 32) = v7;
    sub_18850BFF4(1, inited);
    swift_setDeallocating();
    sub_1884E3A30();
    type metadata accessor for Date();
    sub_18844334C();
    sub_1883F90F4(v8, v9, v10, v11);
    v12 = swift_task_alloc();
    v0[10] = v12;
    *v12 = v0;
    v12[1] = sub_1884E5454;
    sub_1883FF484(v0[9]);
    sub_188404D5C();

    return sub_18840EDE4();
  }

  else
  {
    [*(v3 + 16) setNeedsToFetchDatabaseChanges_];

    sub_1883F816C();
    sub_188404D5C();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_1884E5454()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v0;
  sub_1883F7110();
  *v7 = v6;

  sub_1883F9FEC(v5, &unk_1EA90D7B0, &dword_1886F8780);

  sub_1883F816C();

  return v8();
}

uint64_t sub_1884E5560()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;
  *(v6 + 120) = v5;

  v7 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884E5658()
{
  sub_1883F78E0();
  sub_18841FC48();
  sub_1884E6148();
  *(v0 + 128) = v1;
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_1884E5728;
  sub_1883FE860();

  return sub_1884F0054();
}

uint64_t sub_1884E5728()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v2 = *(v1 + 48);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1884E5868, v2, 0);
}

uint64_t sub_1884E5868()
{
  sub_1883F78E0();
  sub_1883F9FEC(*(v0 + 104), &unk_1EA90D7B0, &dword_1886F8780);

  sub_1883F816C();

  return v1();
}

uint64_t sub_1884E5908()
{
  sub_1883F7120();
  *(v1 + 16) = v0;
  v2 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  sub_1883F8AE4(v2);
  *(v1 + 24) = sub_188403038();
  v3 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1884E5BC0()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v0;
  sub_1883F7110();
  *v7 = v6;

  sub_1883F9FEC(v5, &unk_1EA90D7B0, &dword_1886F8780);

  sub_1883F816C();

  return v8();
}

uint64_t sub_1884E5CF0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1883F7F40();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884E5D1C()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;
  *(v6 + 64) = v5;

  sub_1884022BC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884E5E34()
{
  sub_1883F7120();

  sub_1883F7910();

  return v0();
}

void sub_1884E5EAC()
{
  sub_1883F8AF0();
  v3 = v0;
  v4 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v5 = sub_1883F8AE4(v4);
  MEMORY[0x1EEE9AC00](v5);
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480(&qword_1EA90C9F0);
  }

  v6 = type metadata accessor for Logger();
  sub_1883FDE5C(v6, qword_1EA90C9F8);
  sub_1883FE860();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (sub_1884F4970())
  {
    v9 = sub_1883F9984();
    v1 = sub_1883FE540();
    v26 = v1;
    *v9 = 136315138;
    v10 = sub_1883FE43C();
    sub_1883FE340(v10, v11, &v26);
    sub_1884F44C0();
    *(v9 + 4) = v2;
    sub_1883FE8BC(&dword_1883EA000, v12, v13, "%s will schedule sync");
    sub_1883FE944(v1);
    sub_1884037D8();
    sub_1883FC7E4();
  }

  v14 = OBJC_IVAR____TtC8CloudKit10SyncEngine_scheduleSyncTask;
  if (!*(v0 + OBJC_IVAR____TtC8CloudKit10SyncEngine_scheduleSyncTask))
  {

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      sub_1883F9984();
      v26 = sub_1884061C4();
      *v8 = 136315138;
      v17 = sub_1883FE43C();
      sub_1883FE340(v17, v18, &v26);
      sub_1883F9B0C();
      *(v8 + 4) = v1;
      _os_log_impl(&dword_1883EA000, v15, v16, "%s self.scheduleSyncTask is nil. Creating a new Task", v8, 0xCu);
      sub_188404FD4();
      sub_1883FD784();
    }

    type metadata accessor for TaskPriority();
    sub_18844334C();
    sub_1883F90F4(v19, v20, v21, v22);
    v23 = sub_1883FE8FC(&qword_1EA90C840, type metadata accessor for SyncEngine, &unk_1886FAED8);
    sub_1883F7E80();
    v24 = swift_allocObject();
    v24[2] = v3;
    v24[3] = v23;
    v24[4] = v3;
    swift_retain_n();
    sub_1883FF490();
    sub_188453610();
    *(v3 + v14) = v25;
  }

  sub_1883F8178();
}

uint64_t sub_1884E6148()
{
  sub_1883F877C();
  sub_18844E6FC(&qword_1EA90D5A8, &unk_1886FE110);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1886F8960;
  *(v2 + 32) = sub_18841EE98();
  *(v2 + 40) = v3;
  *(v2 + 48) = v1;
  *(v2 + 56) = v0;
  sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
  sub_1883F94A4();
  sub_1884F47FC();
  BidirectionalCollection<>.joined(separator:)();

  return sub_1883F7EE0();
}

uint64_t sub_1884E61F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1884E6214, 0, 0);
}

uint64_t sub_1884E6214()
{
  sub_1883F7120();
  sub_1883FF050();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = sub_188403070(v2);
    *v3 = v4;
    v3[1] = sub_1884E62F4;
    sub_1883FE860();

    return sub_1884E63DC();
  }

  else
  {
    sub_1883F7910();

    return v6(1);
  }
}

uint64_t sub_1884E62F4()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;

  v4 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884E63DC()
{
  sub_1883F7120();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v3 = type metadata accessor for ContinuousClock();
  v1[5] = v3;
  sub_1883F8620(v3);
  v1[6] = v4;
  v1[7] = sub_188403038();
  v5 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

id sub_1884E64A8()
{
  sub_1883F78E0();
  v1 = sub_1883F57B8();
  v0[8] = v1;
  sub_1883FEB90();
  sub_1883F60E8(0xD00000000000001BLL, v2, v1);
  result = [v1 defaultConfiguration];
  if (result)
  {
    v4 = result;
    [result setSchedulerActivity_];

    sub_1883FB6F8(v1);
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_1884E65A8;
    v6 = sub_1883FE860();

    return sub_1884E7590(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1884E65A8()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;
  *(v6 + 80) = v5;

  v7 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884E66A0()
{
  sub_1883FB4AC();
  v1 = *(*(v0 + 80) + 16);
  *(v0 + 88) = v1;
  if (v1)
  {
    static Clock<>.continuous.getter();
    sub_1883F7B10(&dword_1886FB5C0);
    v12 = v2;
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_1884E687C;
    sub_1883FF484(100000000000000000);
    sub_1883F7FD8();

    return v12();
  }

  else
  {
    *(v0 + 128) = 1;
    v5 = *(v0 + 16);

    if (v5 && *(*(v0 + 24) + 168))
    {
      v6 = *(v0 + 16);
      sub_1883F7B88();
      v7 = swift_allocObject();
      *(v0 + 136) = v7;
      *(v7 + 16) = v6;
      v13 = sub_188442F84(&unk_1886FB1F0);
      v8 = v6;
      v9 = swift_task_alloc();
      *(v0 + 144) = v9;
      *v9 = v0;
      sub_188443368(v9);

      return (v13)(&unk_1886FB680, v7);
    }

    else
    {

      sub_1883F7910();
      v11 = *(v0 + 128);

      return v10(v11);
    }
  }
}

uint64_t sub_1884E687C()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  v2 = *v1;
  sub_1883F7110();
  *v3 = v2;

  if (v0)
  {
  }

  v4 = sub_1883FB5D4();
  v5(v4);
  sub_1884022BC();
  sub_1883FB5FC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1884E6A08()
{
  v1 = v0[10];
  v0[13] = 0;
  if (*(v1 + 16))
  {
    sub_1883F78E0();
    v3 = *(v2 + 32);
    v0[14] = v3;
    v4 = v3;
    v5 = swift_task_alloc();
    v6 = sub_18840526C(v5);
    *v6 = v7;
    sub_18840C168(v6);

    sub_1884115F4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1884E6A9C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1884E6B94()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  if (v1 + 1 == v2)
  {
    v3 = 0;
    v4 = 1;
    while (v3 != *(v0 + 88))
    {
      v5 = *(v0 + 80);
      if (v3 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      v6 = v3 + 1;
      v7 = *(v5 + 8 * v3 + 32);
      v8 = _convertErrorToNSError(_:)();
      ShouldDefer = CKErrorShouldDefer(v8);

      v3 = v6;
      if (ShouldDefer)
      {
        v4 = 2;
        break;
      }
    }

    *(v0 + 128) = v4;
    v10 = *(v0 + 16);

    if (v10 && *(*(v0 + 24) + 168))
    {
      v11 = *(v0 + 16);
      sub_1883F7B88();
      v12 = swift_allocObject();
      *(v0 + 136) = v12;
      *(v12 + 16) = v11;
      sub_188442F84(&unk_1886FB1F0);
      v13 = v11;
      v14 = swift_task_alloc();
      *(v0 + 144) = v14;
      *v14 = v0;
      sub_188443368(v14);
      sub_188404D5C();
    }

    else
    {

      sub_1883F7910();
      sub_188404D5C();
    }

    v17(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  else
  {
    v23 = *(v0 + 104) + 1;
    *(v0 + 104) = v23;
    v24 = *(v0 + 80);
    if (v23 >= *(v24 + 16))
    {
LABEL_20:
      __break(1u);
    }

    else
    {
      v25 = *(v24 + 8 * v23 + 32);
      *(v0 + 112) = v25;
      v26 = v25;
      v27 = swift_task_alloc();
      v28 = sub_18840526C(v27);
      *v28 = v29;
      sub_18840C168(v28);
      sub_188404D5C();

      sub_1884115F4();
    }
  }
}

uint64_t sub_1884E6DB4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  sub_1884022BC();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1884E6ECC()
{
  sub_1883F7120();
  v1 = *(v0 + 16);

  sub_1883F7910();
  v3 = *(v0 + 128);

  return v2(v3);
}

uint64_t sub_1884E6F38(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1884E6F58, 0, 0);
}

uint64_t sub_1884E6F58()
{
  sub_1883F7120();
  sub_1883FF050();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = sub_188403070(v2);
    *v3 = v4;
    v3[1] = sub_1884E7038;
    v5 = sub_1883FF484(*(v0 + 40));

    return sub_1884E717C(v5);
  }

  else
  {
    sub_1883F7910();

    return v7(1);
  }
}

uint64_t sub_1884E7038()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;

  v4 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884E7120()
{
  sub_1883F7120();

  sub_1883F7910();

  return v0();
}

uint64_t sub_1884E717C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;

  return MEMORY[0x1EEE6DFA0](sub_1884E7234, 0, 0);
}

uint64_t sub_1884E7234()
{
  sub_1883F78E0();
  v0[1].opaque[1] = 0;
  v0[1].opaque[0] = 0;
  v1 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v2 = _os_activity_create(&dword_1883EA000, "engine/user-requested-backup", v1, OS_ACTIVITY_FLAG_DEFAULT);
  v0[4].opaque[0] = v2;
  os_activity_scope_enter(v2, v0 + 1);
  v3 = swift_task_alloc();
  v0[4].opaque[1] = v3;
  *v3 = v0;
  v3[1] = sub_1884E7348;
  v5 = v0[2].opaque[1];
  v4 = v0[3].opaque[0];

  return sub_1884EF1CC(&v0[2], v4, v5);
}

uint64_t sub_1884E7348()
{
  sub_1883F7120();
  v2 = *v1;
  sub_1883F7110();
  *v3 = v2;

  if (v0)
  {
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884E747C()
{
  sub_1883F7120();
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  sub_1883F7910();

  return v1();
}

uint64_t sub_1884E7510()
{
  sub_1883F7120();
  os_activity_scope_leave(v0 + 1);

  return swift_unknownObjectRelease();
}

uint64_t sub_1884E7590(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1884E7620, 0, 0);
}

uint64_t sub_1884E7620()
{
  sub_1883F7120();
  v0[1].opaque[1] = 0;
  v0[1].opaque[0] = 0;
  v1 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v2 = _os_activity_create(&dword_1883EA000, "engine/sync", v1, OS_ACTIVITY_FLAG_DEFAULT);
  v0[3].opaque[1] = v2;
  os_activity_scope_enter(v2, v0 + 1);
  v3 = swift_task_alloc();
  v4 = sub_188403070(v3);
  *v4 = v5;
  v4[1] = sub_1884E7720;
  v7 = v0[2].opaque[1];
  v6 = v0[3].opaque[0];

  return sub_1884E7A74(&v0[2], v6, v7);
}

uint64_t sub_1884E7720()
{
  sub_1883F7120();
  v2 = *v1;
  sub_1883F7110();
  *v3 = v2;

  if (v0)
  {
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884E7854()
{
  sub_1883F7120();
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  sub_1883F7910();

  return v1();
}

uint64_t sub_1884E78E8()
{
  sub_1883F7120();
  os_activity_scope_leave(v0 + 1);

  return swift_unknownObjectRelease();
}

uint64_t sub_1884E7968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884E798C, 0, 0);
}

uint64_t sub_1884E798C()
{
  sub_1883F78E0();
  sub_18841D168(*(v0 + 64), v0 + 16, &qword_1EA90E740, &qword_1886FB170);
  v1 = *(v0 + 40);
  if (v1)
  {
    sub_188400B68((v0 + 16), *(v0 + 40));
    sub_1883F7FE4();
    v2();
    sub_1883FE944((v0 + 16));
  }

  else
  {
    sub_1883F9FEC(v0 + 16, &qword_1EA90E740, &qword_1886FB170);
  }

  **(v0 + 56) = v1 == 0;
  sub_1883F816C();

  return v3();
}

uint64_t sub_1884E7A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a2;
  v3[28] = a3;
  v3[26] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884E7A98, 0, 0);
}

uint64_t sub_1884E7A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  sub_188404C04();
  a17 = v20;
  a18 = v21;
  sub_1883F653C();
  a16 = v18;
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480(&qword_1EA90C9F0);
  }

  v22 = type metadata accessor for Logger();
  v18[29] = sub_1883FDE5C(v22, qword_1EA90C9F8);
  swift_retain_n();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    swift_slowAlloc();
    sub_1883F8C00();
    sub_1883FD914();
    *v19 = 136315394;
    v25 = sub_1883FE43C();
    v27 = sub_1883FE340(v25, v26, &a9);

    *(v19 + 4) = v27;
    *(v19 + 12) = 1024;
    sub_1884C7AD8(v18 + 14);
    if (v18[15])
    {
      sub_1883F9FEC((v18 + 14), &unk_1EA90E4D0, &unk_1886FB460);
      v28 = 1;
    }

    else
    {
      v28 = 0;
    }

    *(v19 + 14) = v28;

    sub_1883F831C();
    _os_log_impl(v29, v30, v31, v32, v33, 0x12u);
    sub_1883F8EAC();
    sub_1883F82B8();
  }

  else
  {
  }

  v34 = *(v18[27] + 128);
  v18[30] = v34;
  [*(v34 + 16) setScheduledSyncInProgress_];
  sub_1884C7AD8(v18 + 2);
  if (v18[3] && (sub_1883F9FEC((v18 + 2), &unk_1EA90E4D0, &unk_1886FB460), ![*(v34 + 16) hasPendingUntrackedChanges]))
  {
    v39 = swift_task_alloc();
    v18[33] = v39;
    *v39 = v18;
    v39[1] = sub_1884E7F50;
    sub_1883FF484(v18[28]);
    sub_1883F6548();

    return sub_1884E9AA4(v40);
  }

  else
  {
    v35 = swift_task_alloc();
    v18[31] = v35;
    *v35 = v18;
    v35[1] = sub_1884E7D34;
    sub_1883FF484(v18[28]);
    sub_1883F6548();

    return sub_1884E812C(v36);
  }
}

uint64_t sub_1884E7D34()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 256) = v3;

  v4 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884E7F50()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = v3;

  v4 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884E812C(uint64_t a1)
{
  *(v2 + 2264) = v1;
  *(v2 + 2216) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884E8150, v1, 0);
}

uint64_t sub_1884E8150(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 __src, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31)
{
  sub_188417250();
  a30 = v32;
  a31 = v33;
  a29 = v31;
  [*(v31 + 2216) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v103 = sub_1883F4C5C(0, &qword_1EA90C778, off_1E70BA4E0);
  swift_dynamicCast();
  v34 = *(v31 + 2168);
  v35 = sub_1883FF67C();
  sub_1883F4C5C(v35, v36, off_1E70BA650);
  sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
  v37 = MEMORY[0x1E69E7CC0];
  sub_1883F712C();
  v38 = Dictionary.init(dictionaryLiteral:)();

  *(v31 + 1576) = 0;
  *(v31 + 1584) = 2;
  sub_1883FA5AC((v31 + 1585));
  *(v31 + 1588) = v39;
  *(v31 + 1592) = v34;
  *(v31 + 1600) = v37;
  *(v31 + 1608) = v38;
  *(v31 + 1616) = 1;
  *(v31 + 1617) = *(v31 + 2359);
  *(v31 + 1620) = *(v31 + 2362);
  *(v31 + 1624) = 0;
  *(v31 + 1632) = 0;
  *(v31 + 1633) = *(v31 + 2352);
  v102 = (v31 + 2352);
  *(v31 + 1636) = *(v31 + 2355);
  *(v31 + 1640) = 3;
  v40 = v34;
  sub_1883F697C(v31 + 1576, v31 + 1688);
  v41 = sub_1883F69F4(v40);
  v43 = v42;
  if (v42 && (v44 = sub_18840B034(), (sub_1883F7624(v44, 0xEC000000656E6967, v41, v43) & 1) == 0))
  {
  }

  else
  {
    v45 = *(v31 + 1576);
    v46 = *(v31 + 1584);
    type metadata accessor for SyncEngine(0);
    *&__src = v45;
    BYTE8(__src) = v46;
    v37 = MEMORY[0x1E69E7CC0];

    v47 = sub_1883F6734(&__src);
    v49 = v48;

    sub_1883F60E8(v47, v49, v40);
  }

  v50 = *(v31 + 2216);
  sub_1883F7768(v31 + 1576);
  *(v31 + 1800) = 0;
  *(v31 + 1808) = 2;
  sub_1883FA5AC((v31 + 1809));
  *(v31 + 1812) = v51;
  *(v31 + 1816) = v40;
  *(v31 + 1824) = v37;
  *(v31 + 1832) = v38;
  *(v31 + 1840) = 1;
  *(v31 + 1841) = *(v31 + 2359);
  *(v31 + 1844) = *(v31 + 2362);
  *(v31 + 1848) = 0;
  *(v31 + 1856) = 0;
  v52 = *v102;
  *(v31 + 1860) = *(v31 + 2355);
  *(v31 + 1857) = v52;
  *(v31 + 1864) = 3;
  memcpy(&__src + 7, (v31 + 1800), 0x48uLL);
  *(v31 + 1416) = 0;
  memcpy((v31 + 1417), &__src, 0x4FuLL);
  sub_1883F697C(v31 + 1800, v31 + 1912);
  [v50 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v53 = *(v31 + 2120);
  *(v31 + 2272) = v53;
  v54 = v53;
  sub_1883F69F4(v54);
  sub_1883F90D4();
  sub_18840B034();
  if (v55 && (sub_1884F483C(), (sub_1883F7624(v56, v57, v58, v59) & 1) == 0))
  {
  }

  else
  {
    type metadata accessor for SyncEngine(0);
    *&__src = 0;
    BYTE8(__src) = 3;
    v60 = sub_188413094(&__src);
    v62 = v61;

    sub_1883F60E8(v60, v62, v54);
  }

  v63 = v54;
  if (sub_1884C7D30())
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v64 = *(v31 + 2264);
    v65 = type metadata accessor for Logger();
    sub_1883F85F4(v65, qword_1EA90C9F8);

    v66 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1883FB3A4();
    if (sub_1884F45BC())
    {
      sub_1883FE248();
      *&__src = sub_1884061C4();
      *v64 = 136315138;
      v67 = sub_1883FE43C();
      sub_1883FE340(v67, v68, &__src);
      sub_1883F9B0C();
      *(v64 + 4) = v40;
      sub_1883FDDA4();
      _os_log_impl(v69, v70, v71, v72, v73, 0xCu);
      sub_188404FD4();
      sub_1883FD784();
    }

    v74 = *(v31 + 2264);
    v75 = swift_allocObject();
    *(v75 + 16) = v74;
    memcpy((v75 + 24), (v31 + 1416), 0x50uLL);
    v76 = swift_allocObject();
    *(v31 + 2280) = v76;
    *(v76 + 16) = &unk_1886FB750;
    *(v76 + 24) = v75;

    sub_1883FAB38(v31 + 1416, v31 + 1496);
    swift_asyncLet_begin();
    v77 = swift_allocObject();
    *(v77 + 16) = v74;
    *(v77 + 24) = 0;
    *(v77 + 32) = 0;
    *(v77 + 40) = 3;
    *(v77 + 48) = v63;
    v78 = swift_allocObject();
    *(v31 + 2288) = v78;
    *(v78 + 16) = &unk_1886FB770;
    *(v78 + 24) = v77;

    v79 = v63;
    swift_asyncLet_begin();
    sub_18840562C();

    return MEMORY[0x1EEE6DEC0](v80, v81, v82, v83, v84, v85, v86, v87, a9, v102, v103, __src, *(&__src + 1), a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
  }

  else
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v88 = *(v31 + 2264);
    v89 = type metadata accessor for Logger();
    *(v31 + 2312) = sub_1883F85F4(v89, qword_1EA90C9F8);

    v90 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1883FF744();
    if (sub_1883F9084())
    {
      sub_1883FE248();
      *&__src = sub_1883F8C00();
      *v88 = 136315138;
      v91 = sub_1883FE43C();
      sub_1883FE340(v91, v92, &__src);
      sub_1883FE2FC();
      *(v88 + 4) = v38;
      sub_1883F831C();
      _os_log_impl(v93, v94, v95, v96, v97, 0xCu);
      sub_1883F8EAC();
      sub_1883F82B8();
    }

    memcpy((v31 + 1336), (v31 + 1416), 0x50uLL);
    swift_task_alloc();
    sub_1883FF2B8();
    *(v31 + 2320) = v98;
    *v98 = v99;
    v98[1] = sub_1884E8AA0;
    sub_18840562C();

    return sub_1883FA8A4();
  }
}

uint64_t sub_1884E886C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(v25 + 2296) = v24;
  if (v24)
  {
    return MEMORY[0x1EEE6DEB0](v25 + 16, a2, sub_1884E8F04, v25 + 1648);
  }

  else
  {
    return MEMORY[0x1EEE6DEC0](v25 + 16, a2, sub_1884E88AC, v25 + 1872, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }
}

uint64_t sub_1884E88AC(uint64_t a1, uint64_t a2)
{
  *(v3 + 2304) = v2;
  if (v2)
  {
    v4 = sub_1884E9274;
    v5 = v3 + 16;
    v6 = v3 + 1984;
  }

  else
  {
    v4 = sub_1884E88EC;
    v5 = v3 + 16;
    v6 = v3 + 2176;
  }

  return MEMORY[0x1EEE6DEB0](v5, a2, v4, v6);
}

uint64_t sub_1884E8AA0()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 2328) = v0;

  v7 = *(v3 + 2264);
  if (v0)
  {
    v8 = sub_1884E95E4;
  }

  else
  {
    v8 = sub_1884E8BA0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1884E8BA0()
{
  sub_1883FB4E4();
  sub_1883F653C();
  v2 = *(v0 + 2264);

  v3 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1883FF744();
  if (sub_1883F9084())
  {
    sub_1883FE248();
    sub_1883F8C00();
    sub_1883FF2D4();
    *v2 = 136315138;
    v4 = sub_1883FE43C();
    sub_1883FC788(v4, v5, v6, v7);
    sub_1883FE2FC();
    *(v2 + 4) = v1;
    sub_1883F831C();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_1883F8EAC();
    sub_1883F82B8();
  }

  v13 = *(v0 + 2272);
  *(v0 + 2056) = 0;
  *(v0 + 2064) = 0;
  *(v0 + 2072) = 3;
  *(v0 + 2080) = v13;
  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 2336) = v14;
  *v14 = v15;
  v14[1] = sub_1884E8CC8;
  sub_1883F614C();

  return sub_188413944(v16);
}

uint64_t sub_1884E8CC8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 2344) = v0;

  v7 = *(v3 + 2264);
  if (v0)
  {
    v8 = sub_1884E9844;
  }

  else
  {
    v8 = sub_1884E8DC8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1884E8F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1883F98A8();
  sub_1884008A8();
  v16 = v15[287];
  v17 = v15[286];
  v18 = v16;
  v19 = sub_18840EFC4(v16);
  v20 = _convertErrorToNSError(_:)();
  ShouldDefer = CKErrorShouldDefer(v20);

  if (ShouldDefer)
  {
    a10 = v19;
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v22 = type metadata accessor for Logger();
    sub_1883F85F4(v22, qword_1EA90C9F8);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v15[284];
    if (v25)
    {
      v27 = sub_1883FE248();
      a9 = v17;
      a11 = sub_1883FE540();
      *v27 = 136315138;
      v28 = sub_1883FE43C();
      sub_1883FB598(v28, v29, v30, v31, v32, v33);
      sub_1883FDE10();
      *(v27 + 4) = v14;
      sub_1884F48B8(&dword_1883EA000, v34, v35, "%s finished performing an automatically scheduled sync for an adopter tracking their own changes due to a deferral");
      sub_1883FE944(a11);
      sub_1883F7B60();
      sub_1884F4470();
    }

    sub_1883F7768((v15 + 225));

    sub_1883FB300((v15 + 177));

    v36 = sub_1883F7528();
    sub_1883F5BA0(v36, v17);
  }

  else
  {

    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v37 = type metadata accessor for Logger();
    sub_1883F85F4(v37, qword_1EA90C9F8);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    v40 = os_log_type_enabled(v38, v39);
    v41 = v15[284];
    if (v40)
    {
      v42 = sub_1883FE248();
      a11 = sub_1883FE540();
      *v42 = 136315138;
      v43 = sub_1883FE43C();
      sub_1883FB598(v43, v44, v45, v46, v47, v48);
      a9 = v17;
      sub_1883F8020();

      *(v42 + 4) = v17;
      sub_188443C7C(&dword_1883EA000, v49, v50, "%s finished performing an automatically scheduled sync for an adopter tracking their own changes");
      sub_1883FE944(a11);
      sub_1884F4470();
      sub_1884037D8();
    }

    sub_1883F7768((v15 + 225));

    sub_1883FB300((v15 + 177));

    v51 = sub_1883F7528();
    sub_1883F5BA0(v51, v17);
  }

  sub_1883F7910();
  sub_1883FEB30();

  return v54(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1884E92B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1883F98A8();
  sub_1884008A8();
  v16 = v15[288];
  v17 = v15[286];
  v18 = v16;
  v19 = sub_18840EFC4(v16);
  v20 = _convertErrorToNSError(_:)();
  ShouldDefer = CKErrorShouldDefer(v20);

  if (ShouldDefer)
  {
    a10 = v19;
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v22 = type metadata accessor for Logger();
    sub_1883F85F4(v22, qword_1EA90C9F8);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v15[284];
    if (v25)
    {
      v27 = sub_1883FE248();
      a9 = v17;
      a11 = sub_1883FE540();
      *v27 = 136315138;
      v28 = sub_1883FE43C();
      sub_1883FB598(v28, v29, v30, v31, v32, v33);
      sub_1883FDE10();
      *(v27 + 4) = v14;
      sub_1884F48B8(&dword_1883EA000, v34, v35, "%s finished performing an automatically scheduled sync for an adopter tracking their own changes due to a deferral");
      sub_1883FE944(a11);
      sub_1883F7B60();
      sub_1884F4470();
    }

    sub_1883F7768((v15 + 225));

    sub_1883FB300((v15 + 177));

    v36 = sub_1883F7528();
    sub_1883F5BA0(v36, v17);
  }

  else
  {

    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v37 = type metadata accessor for Logger();
    sub_1883F85F4(v37, qword_1EA90C9F8);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    v40 = os_log_type_enabled(v38, v39);
    v41 = v15[284];
    if (v40)
    {
      v42 = sub_1883FE248();
      a11 = sub_1883FE540();
      *v42 = 136315138;
      v43 = sub_1883FE43C();
      sub_1883FB598(v43, v44, v45, v46, v47, v48);
      a9 = v17;
      sub_1883F8020();

      *(v42 + 4) = v17;
      sub_188443C7C(&dword_1883EA000, v49, v50, "%s finished performing an automatically scheduled sync for an adopter tracking their own changes");
      sub_1883FE944(a11);
      sub_1884F4470();
      sub_1884037D8();
    }

    sub_1883F7768((v15 + 225));

    sub_1883FB300((v15 + 177));

    v51 = sub_1883F7528();
    sub_1883F5BA0(v51, v17);
  }

  sub_1883F7910();
  sub_1883FEB30();

  return v54(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1884E9AA4(uint64_t a1)
{
  *(v2 + 6336) = v1;
  *(v2 + 6328) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884E9AC8, v1, 0);
}

uint64_t sub_1884EA0D4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 6360) = v0;

  v7 = *(v3 + 6336);
  if (v0)
  {
    v8 = sub_1884EB9A8;
  }

  else
  {
    v8 = sub_1884EA1D4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1884EA52C()
{
  sub_1883F7120();
  v1 = *(v0 + 6544);
  v2 = *(v0 + 6296);
  v3 = *(v0 + 6304);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = v2;

  return MEMORY[0x1EEE6DEB8](v0 + 1296, v0 + 6280, sub_1884EA5AC, v0 + 2768);
}

uint64_t sub_1884EA5C0()
{
  sub_1883F7120();
  v1 = *(v0 + 6544);
  v2 = *(v0 + 6280);
  v3 = *(v0 + 6288);
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  v4 = v2;

  return MEMORY[0x1EEE6DEB8](v0 + 656, v0 + 6264, sub_1884EA640, v0 + 2608);
}

uint64_t sub_1884EA654()
{
  sub_1883FD7A0();
  sub_1883FC738();
  v1 = *(v0 + 6544);
  v2 = *(v0 + 6272);
  v3 = *(v0 + 6264);
  *(v1 + 64) = v3;
  *(v1 + 72) = v2;
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + 6320) = MEMORY[0x1E69E7CC0];
  v5 = v3;
  v9 = 0;
LABEL_2:
  v10 = v9 - 1;
  v11 = 16 * v9 + 32;
  while (v10 != 2)
  {
    if (++v10 > 2)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEB0](v5, v6, v7, v8);
    }

    v12 = *(*(v0 + 6544) + v11);
    v11 += 16;
    if (v12)
    {
      v13 = v12;
      MEMORY[0x18CFD52F0]();
      v14 = *(v0 + 6320);
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_188426CD0(v15);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v9 = v10 + 1;
      sub_1883F7E8C();
      v5 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = *(v0 + 6320);
      goto LABEL_2;
    }
  }

  v17 = *(v0 + 6544);
  sub_18847253C(v4);
  v18 = *(v0 + 6544);
  v19 = (*(v17 + 40) & 1) != 0 && *(v18 + 56) == 1 && (*(v18 + 72) & 1) != 0;
  *(v0 + 6600) = v19;

  sub_1883F9968();

  return MEMORY[0x1EEE6DEB0](v5, v6, v7, v8);
}

uint64_t sub_1884EA7D0()
{
  sub_1883F7120();

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 6280, sub_1884EA848, v0 + 2288);
}

uint64_t sub_1884EA85C()
{
  sub_1883F7120();

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 6296, sub_1884EA8D4, v0 + 1936);
}

uint64_t sub_1884EA8E8()
{
  v237 = v0;
  v6 = *(v0 + 6600);

  if ((v6 & 1) == 0)
  {
    sub_1883FE424((v0 + 3208));
    sub_1884F3A5C(v0 + 3208);
    sub_18840FB4C();
    goto LABEL_35;
  }

  v7 = sub_18850C33C();
  sub_1883F4C9C(v7);
  v8 = sub_1883FDE10();
  if (v6 || (sub_18850C3A4(v8, v9, v10, v11, v12, v13, v14, v15, v165, v169, v174, v179, v184, v189, v195, *(&v195 + 1), v201, *(&v201 + 1), v206, *(&v206 + 1), v211, *(&v211 + 1)), v17 = *(v16 + 16), , v17))
  {
    v18 = *(v0 + 6368);
    v19 = *(v0 + 6344);
    v20 = sub_18850C33C();
    v6 = sub_1884043A8(v20);
    sub_18850C3A4(v6, v21, v22, v23, v24, v25, v26, v27, v165, v169, v174, v179, v184, v189, v195, *(&v195 + 1), v201, *(&v201 + 1), v206, *(&v206 + 1), v211, *(&v211 + 1));
    sub_1884FB89C(v28);
    v30 = v29;
    sub_1884E4D00(v6, v0 + 2488);
    sub_1884E4F1C(v30, (v0 + 2488));
    v190 = v18;

    [*(v19 + 16) purgePendingAutomaticSyncZoneIDs];
    [*(v19 + 16) purgePendingAutomaticSyncAssetSyncs];
  }

  else
  {
    v190 = *(v0 + 6368);
  }

  sub_188413F54();
  sub_1883FEBAC();
  sub_1884ECF68();
  LODWORD(v226) = v31;
  sub_1883FE424((v0 + 3448));
  v32 = sub_1884F3A5C(v0 + 3448);
  sub_1883FF2E0(v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v165, v169, v174, v179, v184, v190, v42, v195, v43, v201, v206, v211, v216, v218, v220, v222, v224);
  v44 = sub_1883F9FEC(v0 + 3328, &qword_1EA90E558, &qword_1886FB6A8);
  if (v226)
  {
    sub_1884F4510();
LABEL_34:
    v52 = v235;
LABEL_35:
    sub_18840F6E4(v52);
    sub_1883F9FEC(v0 + 2648, &qword_1EA90E558, &qword_1886FB6A8);
    sub_1884F4454();
    sub_1883F9700();

    __asm { BRAA            X2, X16 }
  }

  sub_188410BB8(v44, v45, v46, v47, v48, v49, v50, v51, v166, v170, v175, v180, v185, v191);
  if (!v61)
  {
    goto LABEL_18;
  }

  sub_1883FC684(v53, v54, v55, v56, v57, v58, v59, v60, v167, v171, v176, v181, v186, v192, v196, v199, v202, v204, v207, v209, v212, v214, v217, v219, v221, v223, v225, v226, v227, v228, v229, v230, v231, v232, v233);
  memcpy((v0 + v5), (v0 + v6), 0x60uLL);
  v62 = *(v0 + 5176);
  v63 = *(v0 + 5184);
  sub_1884F455C((v0 + v1));
  v2 = *(v0 + 5080);
  v64 = *(v0 + 5088);
  if (!v63)
  {
    if (!v64)
    {
      v82 = 5560;
      *(v0 + 5560) = v62;
      *(v0 + 5568) = 0;
      sub_18841726C(5576);
      sub_18840AB8C();
      sub_1884F4898();
      sub_1884F477C();
      goto LABEL_22;
    }

    v83 = sub_1883F5A84();
    sub_18841D168(v83, v84, v85, v86);
    goto LABEL_17;
  }

  *(v0 + 4984) = v62;
  *(v0 + 4992) = v63;
  sub_18841726C(5000);
  sub_188404D94();
  if (!v64)
  {
    v5 = 4792;
    sub_1883F5A84();
    sub_1884F4464();
    sub_18841D168(v87, v88, v89, v90);
    sub_1884F4770();
    sub_1884F4464();
    sub_18841D168(v91, v92, v93, v94);

LABEL_17:
    sub_1883FE518();
    *(v0 + 2072) = v2;
    *(v0 + 2080) = v64;
    sub_1884F455C((v0 + 2088));
    sub_1883F9FEC(v0 + 1976, &qword_1EA90E578, &qword_1886FB720);
    goto LABEL_18;
  }

  sub_18841E62C();
  v65 = *(v0 + 4672);
  sub_1884F4464();
  sub_18841D168(v66, v67, v68, v69);
  sub_1884F4464();
  sub_18841D168(v70, v71, v72, v73);
  sub_1884F4770();
  sub_1884F4464();
  sub_18841D168(v74, v75, v76, v77);
  v78 = sub_188410C24();
  sub_18850EF70(v78, v79);
  sub_1884F4878();
  sub_18841008C(4600);

  sub_1884F4594();
  sub_18841008C(4696);
  if (v65)
  {
    sub_1884F477C();
    v82 = v226;
    v3 = v207;
    v4 = v202;
LABEL_22:
    v2 = v212;
    v121 = v221;
    v122 = v231;
    v5 = v232;
    v123 = v227;
    v120 = v228;
    v124 = v230;
    v125 = v217;
    goto LABEL_23;
  }

LABEL_18:
  v95 = *(v0 + 6336);
  v96 = sub_18850C174();
  CKSyncEngine.State.pendingAssetSyncs.getter(v96, v97, v98, v99, v100, v101, v102, v103, v167, v171, v176, v181, v186, v192, v196, v199, v202, v204, v207, v209, v212, v214);
  sub_1884FB89C(v104);
  v106 = v105;
  type metadata accessor for SyncEngine(0);
  v107 = v95;
  sub_1884C7AD8(v236);
  v108 = sub_1883FB5D4();
  sub_1884EBF38(v110, v108, v109, v111);

  memcpy((v0 + 4312), v236, 0x60uLL);
  v112 = sub_1883F9FEC(v0 + 4312, &unk_1EA90E4D0, &unk_1886FB460);
  sub_1883FE0C0(v112, v113, v114, v115, v116, v117, v118, v119, v168, v172, v177, v182, v187, v193, v197, v200, v203, v205, v208, v210, v213, v215, v217, v219, v221, v223, v225, v226, v227, v228, v229, v230, v231, v232, v233);
  sub_1883F9FEC(v0 + 2168, &qword_1EA90E558, &qword_1886FB6A8);
  if (!v95)
  {
    sub_188419BC0();
    goto LABEL_35;
  }

  v234 = v4;
  v233 = v3;
  v81 = 4312;
  v82 = v106;
  v3 = v96;
  v4 = v95;
  v121 = v173;
  v120 = v178;
  v122 = v183;
  v123 = v188;
  v124 = v194;
  v125 = v198;
  v80 = v107;
LABEL_23:
  *(v0 + 6488) = v80;
  *(v0 + 6480) = v125;
  *(v0 + 6472) = v124;
  *(v0 + 6464) = v123;
  *(v0 + 6456) = v122;
  *(v0 + 6448) = v120;
  *(v0 + 6440) = v5;
  *(v0 + 6432) = v121;
  *(v0 + 6424) = v2;
  *(v0 + 6416) = v4;
  *(v0 + 6408) = v3;
  *(v0 + 6400) = v82;
  *(v0 + 6392) = v81;
  *(v0 + 6384) = v233;
  *(v0 + 6376) = v234;
  *(v0 + 2488) = v80;
  *(v0 + 2496) = v125;
  *(v0 + 2504) = v124;
  *(v0 + 2512) = v123;
  *(v0 + 2520) = v122;
  *(v0 + 2528) = v120;
  *(v0 + 2536) = v5;
  *(v0 + 2544) = v121;
  *(v0 + 2552) = v2;
  *(v0 + 2560) = v4;
  *(v0 + 2568) = v3;
  *(v0 + 2576) = v82;
  *(v0 + 2584) = v81;
  *(v0 + 2592) = v233;
  *(v0 + 2600) = v234;
  v235 = v80;
  *(v0 + 2808) = v80;
  *(v0 + 2816) = v125;
  *(v0 + 2824) = v124;
  *(v0 + 2832) = v123;
  *(v0 + 2840) = v122;
  *(v0 + 2848) = v120;
  *(v0 + 2856) = v5;
  *(v0 + 2864) = v121;
  *(v0 + 2872) = v2;
  *(v0 + 2880) = v4;
  *(v0 + 2888) = v3;
  *(v0 + 2896) = v82;
  *(v0 + 2904) = v81;
  sub_1884F4938();
  if (sub_1884C7D30())
  {
    v126 = v0 + 2488;
    sub_1884EBFD0((v0 + 5464));
    v127 = *(v0 + 5472);
    if (v127 == 1)
    {
      sub_1883FE424((v0 + 3808));
      sub_1884F3A5C(v0 + 3808);
      sub_1883F7B20();
      sub_188405058();
      goto LABEL_34;
    }

    sub_1883FAA68();
    sub_1883FA718();
    v142 = swift_allocObject();
    sub_188413FA4(v142);
    *(v121 + 120) = v82;
    v143 = swift_task_alloc();
    sub_1883F7D58(v143);
    v144 = v82;
    sub_1884F44B4();

    sub_18841D168(v0 + 5464, v0 + 4024, &qword_1EA90E560, &qword_1886FB6D8);
    v145 = sub_18844E6FC(&qword_1EA90E568, &qword_1886FB6E0);
    sub_1883F8F38(v145);
    sub_1883FA718();
    v146 = swift_allocObject();
    v147 = sub_1884F4604(v146);
    v147[2] = v126;
    v147[3] = v4;
    v147[4] = v127;
    v148 = sub_18840ADC8(v147);
    memcpy(v148, v149, 0x50uLL);
    v150 = sub_1883FEF14();
    sub_1883FF204(v150);
    sub_1884F44B4();

    sub_18841D168(v0 + 5464, v0 + 4216, &qword_1EA90E560, &qword_1886FB6D8);
    sub_1883FED5C();
    sub_1883FA718();
    v151 = swift_allocObject();
    v152 = sub_1883FE890(v151);
    v152[2] = v126;
    v152[3] = v4;
    v152[4] = v127;
    v153 = sub_18840ADC8(v152);
    memcpy(v153, v154, 0x50uLL);
    v155 = sub_1884F4758();
    sub_1883F9648(v155);

    sub_1883FE710();
    v156 = sub_18844E6FC(&qword_1EA90E570, &qword_1886FB718);
    v157 = sub_1884062C0(v156);
    *(v0 + 6544) = v157;
    sub_1883F93FC(v157, xmmword_1886FAC20);
    sub_1883F9700();

    return MEMORY[0x1EEE6DEB8](v158, v159, v160, v161);
  }

  else
  {
    v128 = sub_1884ECC8C();
    *(v0 + 6552) = v129;
    if (!v129)
    {
      sub_1883FE424((v0 + 3088));
      sub_1884F3A5C(v0 + 3088);
      sub_1883F7B20();
      sub_1884F4848();
      goto LABEL_34;
    }

    sub_18840F8D4(v128, v129, v130, v131);
    v132 = swift_task_alloc();
    v133 = sub_1884F4610(v132);
    *v133 = v134;
    sub_1883FA1D4(v133);
    sub_1884F47DC();
    sub_1883F9700();

    return sub_1884EC5D4(v135, v136, v137, v138, v139);
  }
}

uint64_t sub_1884EB074()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;
  *(v6 + 6592) = v5;
  *(v6 + 6601) = v7;

  sub_1883F84DC();
  sub_1884F47DC();
  sub_1884F3A8C(v8, v9);
  sub_188404D5C();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1884EB1E0(uint64_t a1)
{
  v242 = v1;
  v7 = *(v1 + 6592);
  if (!v7)
  {
    if (*(v1 + 6601) == 1)
    {
      goto LABEL_5;
    }

LABEL_11:
    sub_1883FE424((v1 + 3208));
    sub_1884F3A5C(v1 + 3208);
    sub_18840FB4C();
    goto LABEL_39;
  }

  v2 = 6312;
  MEMORY[0x18CFD52F0](a1);
  v8 = *(v1 + 6312);
  v10 = *(v8 + 16);
  v9 = *(v8 + 24);
  if (v10 >= v9 >> 1)
  {
    sub_188426CD0(v9);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v11 = *(v1 + 6601);
  sub_1883F7E8C();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v12 = sub_18850C33C();
  sub_1883F4C9C(v12);
  v13 = sub_1883FDE10();
  if (v7 || (sub_18850C3A4(v13, v14, v15, v16, v17, v18, v19, v20, v170, v174, v179, v184, v189, v194, v200, *(&v200 + 1), v206, *(&v206 + 1), v211, *(&v211 + 1), v216, *(&v216 + 1)), v22 = *(v21 + 16), , v22))
  {
    v23 = *(v1 + 6368);
    v24 = *(v1 + 6344);
    v25 = sub_18850C33C();
    v7 = sub_1884043A8(v25);
    sub_18850C3A4(v7, v26, v27, v28, v29, v30, v31, v32, v170, v174, v179, v184, v189, v194, v200, *(&v200 + 1), v206, *(&v206 + 1), v211, *(&v211 + 1), v216, *(&v216 + 1));
    sub_1884FB89C(v33);
    v35 = v34;
    sub_1884E4D00(v7, v1 + 2488);
    sub_1884E4F1C(v35, (v1 + 2488));
    v195 = v23;

    [*(v24 + 16) purgePendingAutomaticSyncZoneIDs];
    [*(v24 + 16) purgePendingAutomaticSyncAssetSyncs];
  }

  else
  {
    v195 = *(v1 + 6368);
  }

  sub_188413F54();
  sub_1883FEBAC();
  sub_1884ECF68();
  LODWORD(v231) = v36;
  sub_1883FE424((v1 + 3448));
  v37 = sub_1884F3A5C(v1 + 3448);
  sub_1883FF2E0(v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v170, v174, v179, v184, v189, v195, v47, v200, v48, v206, v211, v216, v221, v223, v225, v227, v229);
  v49 = sub_1883F9FEC(v1 + 3328, &qword_1EA90E558, &qword_1886FB6A8);
  if (v231)
  {
    sub_1884F4510();
LABEL_38:
    v57 = v240;
LABEL_39:
    sub_18840F6E4(v57);
    sub_1883F9FEC(v1 + 2648, &qword_1EA90E558, &qword_1886FB6A8);
    sub_1884F4454();
    sub_1883F9700();

    __asm { BRAA            X2, X16 }
  }

  sub_188410BB8(v49, v50, v51, v52, v53, v54, v55, v56, v171, v175, v180, v185, v190, v196);
  if (!v66)
  {
    goto LABEL_22;
  }

  sub_1883FC684(v58, v59, v60, v61, v62, v63, v64, v65, v172, v176, v181, v186, v191, v197, v201, v204, v207, v209, v212, v214, v217, v219, v222, v224, v226, v228, v230, v231, v232, v233, v234, v235, v236, v237, v238);
  memcpy((v1 + v6), (v1 + v7), 0x60uLL);
  v67 = *(v1 + 5176);
  v68 = *(v1 + 5184);
  sub_1884F455C((v1 + v2));
  v3 = *(v1 + 5080);
  v69 = *(v1 + 5088);
  if (!v68)
  {
    if (!v69)
    {
      v87 = 5560;
      *(v1 + 5560) = v67;
      *(v1 + 5568) = 0;
      sub_18841726C(5576);
      sub_18840AB8C();
      sub_1884F4898();
      sub_1884F477C();
      goto LABEL_26;
    }

    v88 = sub_1883F5A84();
    sub_18841D168(v88, v89, v90, v91);
    goto LABEL_21;
  }

  *(v1 + 4984) = v67;
  *(v1 + 4992) = v68;
  sub_18841726C(5000);
  sub_188404D94();
  if (!v69)
  {
    v6 = 4792;
    sub_1883F5A84();
    sub_1884F4464();
    sub_18841D168(v92, v93, v94, v95);
    sub_1884F4770();
    sub_1884F4464();
    sub_18841D168(v96, v97, v98, v99);

LABEL_21:
    sub_1883FE518();
    *(v1 + 2072) = v3;
    *(v1 + 2080) = v69;
    sub_1884F455C((v1 + 2088));
    sub_1883F9FEC(v1 + 1976, &qword_1EA90E578, &qword_1886FB720);
    goto LABEL_22;
  }

  sub_18841E62C();
  v70 = *(v1 + 4672);
  sub_1884F4464();
  sub_18841D168(v71, v72, v73, v74);
  sub_1884F4464();
  sub_18841D168(v75, v76, v77, v78);
  sub_1884F4770();
  sub_1884F4464();
  sub_18841D168(v79, v80, v81, v82);
  v83 = sub_188410C24();
  sub_18850EF70(v83, v84);
  sub_1884F4878();
  sub_18841008C(4600);

  sub_1884F4594();
  sub_18841008C(4696);
  if (v70)
  {
    sub_1884F477C();
    v87 = v231;
    v4 = v212;
    v5 = v207;
LABEL_26:
    v3 = v217;
    v126 = v226;
    v127 = v236;
    v6 = v237;
    v128 = v232;
    v125 = v233;
    v129 = v235;
    v130 = v222;
    goto LABEL_27;
  }

LABEL_22:
  v100 = *(v1 + 6336);
  v101 = sub_18850C174();
  CKSyncEngine.State.pendingAssetSyncs.getter(v101, v102, v103, v104, v105, v106, v107, v108, v172, v176, v181, v186, v191, v197, v201, v204, v207, v209, v212, v214, v217, v219);
  sub_1884FB89C(v109);
  v111 = v110;
  type metadata accessor for SyncEngine(0);
  v112 = v100;
  sub_1884C7AD8(v241);
  v113 = sub_1883FB5D4();
  sub_1884EBF38(v115, v113, v114, v116);

  memcpy((v1 + 4312), v241, 0x60uLL);
  v117 = sub_1883F9FEC(v1 + 4312, &unk_1EA90E4D0, &unk_1886FB460);
  sub_1883FE0C0(v117, v118, v119, v120, v121, v122, v123, v124, v173, v177, v182, v187, v192, v198, v202, v205, v208, v210, v213, v215, v218, v220, v222, v224, v226, v228, v230, v231, v232, v233, v234, v235, v236, v237, v238);
  sub_1883F9FEC(v1 + 2168, &qword_1EA90E558, &qword_1886FB6A8);
  if (!v100)
  {
    sub_188419BC0();
    goto LABEL_39;
  }

  v239 = v5;
  v238 = v4;
  v86 = 4312;
  v87 = v111;
  v4 = v101;
  v5 = v100;
  v126 = v178;
  v125 = v183;
  v127 = v188;
  v128 = v193;
  v129 = v199;
  v130 = v203;
  v85 = v112;
LABEL_27:
  *(v1 + 6488) = v85;
  *(v1 + 6480) = v130;
  *(v1 + 6472) = v129;
  *(v1 + 6464) = v128;
  *(v1 + 6456) = v127;
  *(v1 + 6448) = v125;
  *(v1 + 6440) = v6;
  *(v1 + 6432) = v126;
  *(v1 + 6424) = v3;
  *(v1 + 6416) = v5;
  *(v1 + 6408) = v4;
  *(v1 + 6400) = v87;
  *(v1 + 6392) = v86;
  *(v1 + 6384) = v238;
  *(v1 + 6376) = v239;
  *(v1 + 2488) = v85;
  *(v1 + 2496) = v130;
  *(v1 + 2504) = v129;
  *(v1 + 2512) = v128;
  *(v1 + 2520) = v127;
  *(v1 + 2528) = v125;
  *(v1 + 2536) = v6;
  *(v1 + 2544) = v126;
  *(v1 + 2552) = v3;
  *(v1 + 2560) = v5;
  *(v1 + 2568) = v4;
  *(v1 + 2576) = v87;
  *(v1 + 2584) = v86;
  *(v1 + 2592) = v238;
  *(v1 + 2600) = v239;
  v240 = v85;
  *(v1 + 2808) = v85;
  *(v1 + 2816) = v130;
  *(v1 + 2824) = v129;
  *(v1 + 2832) = v128;
  *(v1 + 2840) = v127;
  *(v1 + 2848) = v125;
  *(v1 + 2856) = v6;
  *(v1 + 2864) = v126;
  *(v1 + 2872) = v3;
  *(v1 + 2880) = v5;
  *(v1 + 2888) = v4;
  *(v1 + 2896) = v87;
  *(v1 + 2904) = v86;
  sub_1884F4938();
  if (sub_1884C7D30())
  {
    v131 = v1 + 2488;
    sub_1884EBFD0((v1 + 5464));
    v132 = *(v1 + 5472);
    if (v132 == 1)
    {
      sub_1883FE424((v1 + 3808));
      sub_1884F3A5C(v1 + 3808);
      sub_1883F7B20();
      sub_188405058();
      goto LABEL_38;
    }

    sub_1883FAA68();
    sub_1883FA718();
    v147 = swift_allocObject();
    sub_188413FA4(v147);
    *(v126 + 120) = v87;
    v148 = swift_task_alloc();
    sub_1883F7D58(v148);
    v149 = v87;
    sub_1884F44B4();

    sub_18841D168(v1 + 5464, v1 + 4024, &qword_1EA90E560, &qword_1886FB6D8);
    v150 = sub_18844E6FC(&qword_1EA90E568, &qword_1886FB6E0);
    sub_1883F8F38(v150);
    sub_1883FA718();
    v151 = swift_allocObject();
    v152 = sub_1884F4604(v151);
    v152[2] = v131;
    v152[3] = v5;
    v152[4] = v132;
    v153 = sub_18840ADC8(v152);
    memcpy(v153, v154, 0x50uLL);
    v155 = sub_1883FEF14();
    sub_1883FF204(v155);
    sub_1884F44B4();

    sub_18841D168(v1 + 5464, v1 + 4216, &qword_1EA90E560, &qword_1886FB6D8);
    sub_1883FED5C();
    sub_1883FA718();
    v156 = swift_allocObject();
    v157 = sub_1883FE890(v156);
    v157[2] = v131;
    v157[3] = v5;
    v157[4] = v132;
    v158 = sub_18840ADC8(v157);
    memcpy(v158, v159, 0x50uLL);
    v160 = sub_1884F4758();
    sub_1883F9648(v160);

    sub_1883FE710();
    v161 = sub_18844E6FC(&qword_1EA90E570, &qword_1886FB718);
    v162 = sub_1884062C0(v161);
    *(v1 + 6544) = v162;
    sub_1883F93FC(v162, xmmword_1886FAC20);
    sub_1883F9700();

    return MEMORY[0x1EEE6DEB8](v163, v164, v165, v166);
  }

  else
  {
    v133 = sub_1884ECC8C();
    *(v1 + 6552) = v134;
    if (!v134)
    {
      sub_1883FE424((v1 + 3088));
      sub_1884F3A5C(v1 + 3088);
      sub_1883F7B20();
      sub_1884F4848();
      goto LABEL_38;
    }

    sub_18840F8D4(v133, v134, v135, v136);
    v137 = swift_task_alloc();
    v138 = sub_1884F4610(v137);
    *v138 = v139;
    sub_1883FA1D4(v138);
    sub_1884F47DC();
    sub_1883F9700();

    return sub_1884EC5D4(v140, v141, v142, v143, v144);
  }
}

void sub_1884EBF38(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_18841D168(__dst, v9, &unk_1EA90E4D0, &unk_1886FB460);
  sub_1884F19E4();
  sub_1884E4D00(a2, a4);
  if (a3)
  {
    v7 = sub_1883F7EE0();
    sub_1884E4F1C(v7, v8);
  }
}

void sub_1884EBFD0(uint64_t *a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v3 = 5;
  v4 = &unk_1EFA25A58;
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v7 = *v2;
    v8 = *(*v2 + 16);

    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = sub_1883F712C();
    v11 = sub_188420F2C(v9, v10);
    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }

    v13 = (*(v7 + 56) + 32 * v11);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = v13[3];
    if ((v15 & 0xC000000000000001) != 0)
    {

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_10;
      }
    }

    else
    {
      v28 = *(v15 + 16);

      if (!v28)
      {
LABEL_10:

LABEL_11:
        v14 = 0;
        v78 = 0;
        v16 = 0;
        v17 = 0;
        goto LABEL_12;
      }
    }

    v25 = sub_1884E4C40(v79, v5, v6);
    v26 = *(v18 + 8);
    if (v26)
    {
      *(v18 + 8) = MEMORY[0x1E69E7CD0];
    }

    v27 = sub_1884F4584(v26, v18, v19, v20, v21, v22, v23, v24, v67, v68, v69, v70, v71, v72, v73, v74, v77, v15, v79[0]);
    (v25)(v27);
LABEL_12:
    v29 = *(v2 + 8);
    v30 = *(v29 + 16);
    v71 = v16;
    v72 = v14;
    v77 = v5;
    if (!v30)
    {
      v36 = 0;
      v37 = 0;
      goto LABEL_24;
    }

    v31 = sub_1883F712C();
    v33 = sub_188420F2C(v31, v32);
    if ((v34 & 1) == 0)
    {
      goto LABEL_23;
    }

    v35 = (*(v29 + 56) + 32 * v33);
    v36 = *v35;
    v37 = v35[1];
    v38 = v35[3];
    v75 = v35[2];
    if ((v37 & 0xC000000000000001) != 0)
    {

      v39 = __CocoaSet.count.getter();
    }

    else
    {
      v39 = *(v37 + 16);
    }

    v40 = v38;
    if (!v39)
    {

LABEL_23:
      v36 = 0;
      v37 = 0;
      v30 = 0;
LABEL_24:
      v40 = 0;
      goto LABEL_25;
    }

    v48 = sub_1884E4C40(v79, v77, v6);
    v49 = *(v41 + 8);
    if (v49)
    {
      *(v41 + 8) = MEMORY[0x1E69E7CD0];
    }

    v50 = sub_1884F4584(v49, v41, v42, v43, v44, v45, v46, v47, v67, v68, v69, v70, v71, v72, v73, v75, v77, v78, v79[0]);
    (v48)(v50);
    v30 = v76;
LABEL_25:
    v74 = v30;
    v51 = *(v2 + 16);
    v69 = v36;
    v70 = v17;
    v68 = v40;
    if (!*(v51 + 16))
    {
      goto LABEL_34;
    }

    v52 = sub_188420F2C(v77, v6);
    if ((v53 & 1) == 0)
    {
      goto LABEL_34;
    }

    v54 = (*(v51 + 56) + 32 * v52);
    v36 = *v54;
    v2 = v54[1];
    v40 = v54[2];
    v17 = v54[3];
    if ((v17 & 0xC000000000000001) != 0)
    {

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_33;
      }
    }

    else
    {
      v65 = *(v17 + 16);

      if (!v65)
      {
LABEL_33:

LABEL_34:

        sub_1884F47E8();
        goto LABEL_35;
      }
    }

    v55 = sub_1884E4C40(v79, v77, v6);
    v63 = v55;
    if (*(v56 + 8))
    {
      *(v56 + 24) = MEMORY[0x1E69E7CD0];
    }

    v64 = sub_1884F4584(v55, v56, v57, v58, v59, v60, v61, v62, v67, v68, v69, v70, v71, v72, v73, v74, v77, v78, v79[0]);
    v63(v64);

LABEL_35:
    v66 = v78;
    if (v37 | v78 | v2)
    {
      goto LABEL_38;
    }

    v4 += 2;
    --v3;
    v2 = v73;
  }

  while (v3);
  v71 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  v37 = 0;
  v74 = 0;
  v68 = 0;
  sub_1884F47E8();
  v66 = 1;
LABEL_38:
  *v67 = v72;
  v67[1] = v66;
  v67[2] = v71;
  v67[3] = v70;
  v67[4] = v69;
  v67[5] = v37;
  v67[6] = v74;
  v67[7] = v68;
  v67[8] = v36;
  v67[9] = v2;
  v67[10] = v40;
  v67[11] = v17;
}

uint64_t sub_1884EC3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884EC3E8, 0, 0);
}

uint64_t sub_1884EC3E8()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  [*(v0 + 72) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1883F4C5C(0, &qword_1EA90C778, off_1E70BA4E0);
  sub_18840765C();
  *(v0 + 80) = *(v0 + 48);
  v1 = swift_task_alloc();
  v2 = sub_1884F461C(v1);
  *v2 = v3;
  sub_18840AED4(v2);
  sub_1883FB5FC();

  return sub_1884EC5D4(v4, v5, v6, v7, v8);
}

uint64_t sub_1884EC4CC()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v2 = *(v1 + 80);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  v5 = sub_1884F47C8();

  return v6(v5);
}

uint64_t sub_1884EC5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = v5;
  if (a2)
  {
    v11 = a1;
    v12 = swift_task_alloc();
    v6[3] = v12;
    *v12 = v6;
    v12[1] = sub_1884EC6E0;

    return sub_1884ED270(v11, a2, a3, a4, a5);
  }

  else
  {
    v14 = v6[1];

    return v14(0, 1);
  }
}

uint64_t sub_1884EC6E0()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;
  *(v6 + 32) = v5;

  v7 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884EC7D8()
{
  sub_1883F78E0();
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = v1;
    v3 = sub_18840EFC4(v2);
    v4 = _convertErrorToNSError(_:)();

    LODWORD(v3) = CKErrorShouldDefer(v4);
    v5 = v3 ^ 1;
    v6 = *(v0 + 32);
  }

  else
  {
    v6 = 0;
    v5 = 1;
  }

  v7 = *(v0 + 8);

  return v7(v6, v5);
}

uint64_t sub_1884EC884(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1884EC970;

  return v5();
}

uint64_t sub_1884EC970()
{
  sub_1883F78E0();
  v2 = v1;
  v4 = v3;
  sub_1883F78EC();
  v6 = *(v5 + 16);
  v7 = *v0;
  sub_1883F7110();
  *v8 = v7;

  *v6 = v4;
  *(v6 + 8) = v2;
  sub_1883FDB48();

  return v9();
}

uint64_t sub_1884ECA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884ECAA0, 0, 0);
}

uint64_t sub_1884ECAA0()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  [*(v0 + 72) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1883F4C5C(0, &qword_1EA90C778, off_1E70BA4E0);
  sub_18840765C();
  *(v0 + 80) = *(v0 + 48);
  v1 = swift_task_alloc();
  v2 = sub_1884F461C(v1);
  *v2 = v3;
  sub_18840AED4(v2);
  sub_1883FB5FC();

  return sub_1884EC5D4(v4, v5, v6, v7, v8);
}

uint64_t sub_1884ECB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884ECBA8, 0, 0);
}

uint64_t sub_1884ECBA8()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  [*(v0 + 72) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1883F4C5C(0, &qword_1EA90C778, off_1E70BA4E0);
  sub_18840765C();
  *(v0 + 80) = *(v0 + 48);
  v1 = swift_task_alloc();
  v2 = sub_1884F461C(v1);
  *v2 = v3;
  sub_18840AED4(v2);
  sub_1883FB5FC();

  return sub_1884EC5D4(v4, v5, v6, v7, v8);
}

uint64_t sub_1884ECC8C()
{
  v3 = v0 + 2;
  v4 = *v0;
  v5 = &unk_1EFA25A58;
  v6 = 5;
  while (1)
  {
    v8 = *(v5 - 1);
    v7 = *v5;
    v9 = *(v4 + 16);

    if (v9)
    {
      v10 = sub_188410C24();
      sub_188420F2C(v10, v11);
      if (v12)
      {
        sub_18840BE2C();
        if ((v1 & 0xC000000000000001) != 0)
        {
          sub_188442E80();

          if (__CocoaSet.count.getter())
          {
            goto LABEL_25;
          }
        }

        else
        {
          v13 = *(v1 + 16);

          if (v13)
          {
LABEL_25:
            sub_1884F47A8();
            goto LABEL_27;
          }
        }
      }
    }

    if (*(*(v34 + 8) + 16))
    {
      v14 = sub_188410C24();
      sub_188420F2C(v14, v15);
      if (v16)
      {
        sub_18840BE2C();
        if ((v1 & 0xC000000000000001) != 0)
        {
          sub_188442E80();

          if (__CocoaSet.count.getter())
          {
            goto LABEL_26;
          }

          goto LABEL_15;
        }

        v17 = *(v1 + 16);

        if (!v17)
        {
LABEL_15:

          goto LABEL_16;
        }

LABEL_26:
        v23 = v35;
        v24 = v8;
        v25 = v7;
LABEL_27:
        v27 = sub_1884E4C40(v23, v24, v25);
        if (!*(v26 + 8))
        {
          goto LABEL_32;
        }

        *(v26 + 8) = MEMORY[0x1E69E7CD0];
        goto LABEL_31;
      }
    }

LABEL_16:
    if (!*(*v3 + 16))
    {
      goto LABEL_23;
    }

    v18 = sub_188410C24();
    sub_188420F2C(v18, v19);
    if ((v20 & 1) == 0)
    {
      goto LABEL_23;
    }

    sub_18840BE2C();
    if ((v2 & 0xC000000000000001) != 0)
    {

      if (__CocoaSet.count.getter())
      {
        break;
      }

      goto LABEL_22;
    }

    v21 = *(v2 + 16);

    if (v21)
    {
      break;
    }

LABEL_22:

LABEL_23:

    v5 += 2;
    if (!--v6)
    {
      return 0;
    }
  }

  sub_1884F47A8();
  v27 = sub_1884E4C40(v28, v29, v30);
  if (!*(v31 + 8))
  {
    goto LABEL_32;
  }

  *(v31 + 24) = MEMORY[0x1E69E7CD0];
LABEL_31:

LABEL_32:
  (v27)(v35, 0);
  v22 = v33;

  return v22;
}

void sub_1884ECF68()
{
  v1 = *v0;
  v2 = v0[1];
  v33 = v0[2];
  sub_1883F8578();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  while (v5)
  {
LABEL_7:
    sub_1884F4574();
    v11 = *(v10 + 8);
    if ((v11 & 0xC000000000000001) != 0)
    {

      v12 = __CocoaSet.count.getter();
    }

    else
    {
      v12 = *(v11 + 16);
    }

    v5 &= v5 - 1;
    if (v12)
    {

      return;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v9 >= v7)
    {
      break;
    }

    v5 = *(v1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_7;
    }
  }

  sub_1883F8578();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;

  v18 = 0;
  while (v15)
  {
LABEL_18:
    sub_1884F4574();
    v21 = *(v20 + 8);
    if ((v21 & 0xC000000000000001) != 0)
    {

      v22 = __CocoaSet.count.getter();
    }

    else
    {
      v22 = *(v21 + 16);
    }

    v15 &= v15 - 1;
    if (v22)
    {
LABEL_36:

      return;
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      sub_1883F8578();
      v25 = v24 & v23;
      v27 = (v26 + 63) >> 6;

      v28 = 0;
      while (v25)
      {
LABEL_29:
        sub_1884F4574();
        v31 = *(v30 + 24);
        if ((v31 & 0xC000000000000001) != 0)
        {
          if (v31 < 0)
          {
            v32 = *(v30 + 24);
          }

          else
          {
            v32 = v31 & 0xFFFFFFFFFFFFFF8;
          }

          __CocoaSet.count.getter();
          sub_1884F481C();
        }

        else
        {
          v32 = *(v31 + 16);
        }

        v25 &= v25 - 1;
        if (v32)
        {
          goto LABEL_36;
        }
      }

      while (1)
      {
        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_40;
        }

        if (v29 >= v27)
        {
          goto LABEL_36;
        }

        v25 = *(v33 + 64 + 8 * v29);
        ++v28;
        if (v25)
        {
          v28 = v29;
          goto LABEL_29;
        }
      }
    }

    v15 = *(v2 + 64 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_18;
    }
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_1884ED270(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 760) = v5;
  *(v6 + 752) = a5;
  *(v6 + 744) = a4;
  *(v6 + 736) = a3;
  *(v6 + 728) = a2;
  *(v6 + 957) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884ED2A4, v5, 0);
}

void sub_1884ED2A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__src, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_188417250();
  a31 = v36;
  a32 = v37;
  a30 = v32;
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480(&qword_1EA90C9F0);
  }

  sub_1883FDF6C();
  v38 = type metadata accessor for Logger();
  *(v32 + 768) = sub_1883FDE5C(v38, qword_1EA90C9F8);

  v39 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1883FB3A4();

  if (sub_1884F45BC())
  {
    a10 = *(v32 + 744);
    v40 = *(v32 + 728);
    v41 = *(v32 + 957);
    sub_18840FB34();
    v35 = sub_18842D4DC();
    __src = v35;
    *v34 = 136315394;
    v42 = sub_1883FE43C();
    sub_1883FB598(v42, v43, v44, v45, v46, v47);
    sub_1883F9B0C();
    *(v34 + 4) = &unk_1886FA000;
    sub_1884F452C();
    v49 = sub_1884F2934(v41, v40, v48, a10);
    sub_1883FB598(v49, v50, v51, v52, v53, v54);
    sub_1883F9B0C();
    *(v34 + 14) = &unk_1886FA000;
    sub_1883FDDA4();
    _os_log_impl(v55, v56, v57, v58, v59, 0x16u);
    swift_arrayDestroy();
    sub_1883FC7E4();
    sub_1883FD784();
  }

  v60 = *(v32 + 957);
  if (v60 == 2)
  {
    sub_1884008B4();

    v135 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1883FF744();

    if (sub_1883F9084())
    {
      v35 = *(v32 + 744);
      sub_18840FB34();
      sub_1883FEEE0();
      sub_18840531C();
      *v33 = 136315394;
      v136 = sub_1883FE43C();
      sub_1883FB598(v136, v137, v138, v139, v140, v141);
      sub_1883F9B0C();
      sub_1883FD7D8();
      v142 = sub_1883FF67C();
      sub_1883F4C5C(v142, v143, off_1E70B9FD0);
      sub_1884F448C();
      v147 = sub_1883F66E4(v144, v145, v146);
      v148 = sub_1884F4498(v147);
      sub_1883FB598(v148, v149, v150, v151, v152, v153);
      sub_1883FE2FC();
      *(v33 + 14) = v35;
      sub_1883F831C();
      _os_log_impl(v154, v155, v156, v157, v158, 0x16u);
      sub_18840E7C8();
      sub_1883FD784();
      sub_1883F82B8();
    }

    v159 = *(v32 + 744);
    if ((v159 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      sub_1883F7FE4();
      sub_1883F4C5C(v160, v161, v162);
      sub_1883F7FE4();
      sub_1883F66E4(v163, v164, v165);
      sub_1883F84DC();
      Set.Iterator.init(_cocoa:)();
      v166 = *(v32 + 608);
      v167 = *(v32 + 616);
      v168 = *(v32 + 624);
      v169 = *(v32 + 632);
      v170 = *(v32 + 640);
    }

    else
    {
      v171 = -1 << *(v159 + 32);
      v167 = v159 + 56;
      v168 = ~v171;
      v172 = -v171;
      if (v172 < 64)
      {
        v173 = ~(-1 << v172);
      }

      else
      {
        v173 = -1;
      }

      v170 = v173 & *(v159 + 56);

      v169 = 0;
    }

    *(v32 + 864) = v168;
    *(v32 + 856) = v167;
    *(v32 + 848) = v166;
    *(v32 + 880) = v170;
    *(v32 + 872) = v169;
    if (v166 < 0)
    {
      v179 = __CocoaSet.Iterator.next()();
      if (!v179)
      {
        goto LABEL_52;
      }

      v168 = v32 + 720;
      *(v32 + 720) = v179;
      sub_1883F4C5C(0, &qword_1EA90C690, off_1E70B9FD0);
      sub_1883F84DC();
      swift_dynamicCast();
      v178 = *(v32 + 712);
      v175 = v169;
      v177 = v170;
    }

    else
    {
      v174 = v170;
      v175 = v169;
      if (!v170)
      {
        v176 = v169;
        while (1)
        {
          v175 = v176 + 1;
          if (__OFADD__(v176, 1))
          {
            break;
          }

          if (v175 >= ((v168 + 64) >> 6))
          {
            goto LABEL_52;
          }

          v174 = *(v167 + 8 * v175);
          ++v176;
          if (v174)
          {
            goto LABEL_32;
          }
        }

        __break(1u);
        goto LABEL_59;
      }

LABEL_32:
      v177 = (v174 - 1) & v174;
      v178 = *(*(v166 + 48) + ((v175 << 9) | (8 * __clz(__rbit64(v174)))));
    }

    *(v32 + 904) = v177;
    *(v32 + 896) = v175;
    *(v32 + 888) = v178;
    if (v178)
    {
      v180 = v178;
      v181 = [v180 size];
      if ((v181 & 0x8000000000000000) == 0)
      {
        v182 = *(v32 + 752);
        v183 = [objc_opt_self() progressWithTotalUnitCount_];
        *(v32 + 912) = v183;
        v184 = v182;
        v185 = v180;
        v186 = v183;
        sub_1883F69F4(v184);
        sub_18840FC80();
        if (v187 && (v188 = sub_1883F7574(), (sub_1883F7624(v188, v189, v180, v184) & 1) == 0))
        {
          v190 = *(v32 + 752);
        }

        else
        {
          v190 = *(v32 + 752);
          type metadata accessor for SyncEngine(0);
          sub_1883F84DC();
          v192 = v191;
          sub_1884E02F8();
          sub_188404258();

          sub_1883F60E8(v192, v35, v190);
        }

        sub_188412260();
        v209 = v208;
        v210 = v185;
        v211 = v186;
        swift_task_alloc();
        sub_1883FF2B8();
        *(v32 + 920) = v212;
        *v212 = v213;
        sub_18840DED4(v212);
        sub_18840562C();

        sub_1884D1C14(v214);
        return;
      }

LABEL_59:
      __break(1u);
      return;
    }

LABEL_52:
    sub_1883F70C4(*(v32 + 848));
    sub_1884008B4();

    v216 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1883FF744();

    if (sub_1883F9084())
    {
      v217 = *(v32 + 744);
      sub_18840FB34();
      sub_1883FEEE0();
      sub_18840531C();
      *v168 = 136315394;
      v218 = sub_1883FE43C();
      sub_1883FB598(v218, v219, v220, v221, v222, v223);
      sub_1883F9B0C();
      sub_1883FD7D8();
      v224 = sub_1883FF67C();
      sub_1883F4C5C(v224, v225, off_1E70B9FD0);
      sub_1884F448C();
      v229 = sub_1883F66E4(v226, v227, v228);
      v230 = sub_1884F4498(v229);
      sub_1883FB598(v230, v231, v232, v233, v234, v235);
      sub_1883FE2FC();
      *(v168 + 14) = v217;
      sub_1883F831C();
      _os_log_impl(v236, v237, v238, v239, v240, 0x16u);
      sub_18840E7C8();
      sub_1883FD784();
      sub_1883F82B8();
    }

LABEL_55:
    sub_1883F90C4();
    sub_18840562C();

    v243(v241, v242, v243, v244, v245, v246, v247, v248, a9, a10, __src, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
    return;
  }

  if (v60 != 1)
  {
    if (!*(v32 + 957))
    {
      sub_1884008B4();

      v61 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      sub_1883FF744();

      if (sub_1883F9084())
      {
        v35 = *(v32 + 728);
        sub_18840FB34();
        sub_1883FEEE0();
        sub_18840531C();
        *v33 = 136315394;
        v62 = sub_1883FE43C();
        sub_1883FB598(v62, v63, v64, v65, v66, v67);
        sub_1883F9B0C();
        sub_1883FD7D8();
        v68 = sub_1883FF67C();
        sub_1883F4C5C(v68, v69, off_1E70BA650);
        sub_1884F448C();
        v73 = sub_1883F66E4(v70, v71, v72);
        v74 = sub_1884F4498(v73);
        sub_1883FB598(v74, v75, v76, v77, v78, v79);
        sub_1883FE2FC();
        *(v33 + 14) = v35;
        sub_1883F831C();
        _os_log_impl(v80, v81, v82, v83, v84, 0x16u);
        sub_18840E7C8();
        sub_1883FD784();
        sub_1883F82B8();
      }

      v85 = *(v32 + 752);
      v86 = sub_1883F5DF8(*(v32 + 728));
      *(v32 + 776) = v86;
      v87 = sub_1883FF67C();
      v89 = sub_1883F4C5C(v87, v88, off_1E70BA650);
      *(v32 + 784) = v89;
      *(v32 + 792) = sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
      v90 = v85;
      v91 = MEMORY[0x1E69E7CC0];
      sub_1883FF6E8();
      Dictionary.init(dictionaryLiteral:)();
      sub_1884F4810();

      *(v32 + 176) = v86;
      *(v32 + 184) = 1;
      *(v32 + 192) = v90;
      *(v32 + 200) = v91;
      *(v32 + 208) = v89;
      *(v32 + 216) = 1;
      *(v32 + 224) = 0;
      *(v32 + 232) = 0;
      *(v32 + 240) = 3;
      v92 = v90;
      sub_1883F697C(v32 + 176, v32 + 248);
      sub_1883F69F4(v92);
      sub_188404258();
      if (v93 && (v94 = sub_1883F7574(), (sub_1883F7624(v94, v95, v92, v35) & 1) == 0))
      {
        v96 = *(v32 + 752);
      }

      else
      {
        v96 = *(v32 + 752);
        v97 = *(v32 + 176);
        v98 = *(v32 + 184);
        type metadata accessor for SyncEngine(0);
        __src = v97;
        LOBYTE(a12) = v98;

        v99 = sub_1883F6734(&__src);
        v101 = v100;

        sub_1883F60E8(v99, v101, v96);
      }

      v199 = *(v32 + 752);
      v200 = *(v32 + 736);
      v201 = *(v32 + 728);
      sub_1883F7768(v32 + 176);

      sub_1884E48FC(v201, 0, v201, v200);
      v203 = sub_1884F49B8(v202);
      *(v32 + 800) = v203;

      *(v32 + 320) = v86;
      *(v32 + 328) = 1;
      *(v32 + 329) = *(v32 + 936);
      *(v32 + 332) = *(v32 + 939);
      *(v32 + 336) = v199;
      *(v32 + 344) = MEMORY[0x1E69E7CC0];
      *(v32 + 352) = v203;
      sub_1883F6188(1);
      *v204 = *(v32 + 950);
      *(v32 + 380) = *(v32 + 953);
      sub_1884F4918(3);
      *(v32 + 16) = 0;
      memcpy((v32 + 17), &__src, 0x4FuLL);
      memcpy((v32 + 96), (v32 + 16), 0x50uLL);
      sub_1883F697C(v32 + 320, v32 + 392);
      swift_task_alloc();
      sub_1883FF2B8();
      *(v32 + 808) = v205;
      *v205 = v206;
      v205[1] = sub_1884EDF04;
      sub_18840562C();

      sub_1883FA8A4();
      return;
    }

    goto LABEL_55;
  }

  sub_1884008B4();

  v102 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1883FF744();

  if (sub_1883F9084())
  {
    v103 = *(v32 + 728);
    sub_18840FB34();
    sub_1883FEEE0();
    sub_18840531C();
    *v33 = 136315394;
    v104 = sub_1883FE43C();
    sub_1883FB598(v104, v105, v106, v107, v108, v109);
    sub_1883F9B0C();
    sub_1883FD7D8();
    v110 = sub_1883FF67C();
    sub_1883F4C5C(v110, v111, off_1E70BA650);
    sub_1884F448C();
    v115 = sub_1883F66E4(v112, v113, v114);
    v116 = sub_1884F4498(v115);
    sub_1883FB598(v116, v117, v118, v119, v120, v121);
    sub_1883FE2FC();
    *(v33 + 14) = v103;
    sub_1883F831C();
    _os_log_impl(v122, v123, v124, v125, v126, 0x16u);
    sub_18840E7C8();
    sub_1883FD784();
    sub_1883F82B8();
  }

  v127 = *(v32 + 752);
  v128 = sub_1883F5DF8(*(v32 + 728));
  *(v32 + 824) = v128;
  v129 = v127;
  sub_1883FEFE0();

  sub_1883F69F4(v127);
  sub_18840FC80();
  if (v130 && (v131 = sub_1883F7574(), (sub_1883F7624(v131, v132, v127, v33) & 1) == 0))
  {
    v133 = *(v32 + 752);
  }

  else
  {
    v133 = *(v32 + 752);
    v134 = type metadata accessor for SyncEngine(0);
    __src = v128;
    LOBYTE(a12) = 1;

    sub_188413094(&__src);
    sub_1883F90D4();

    sub_1883F60E8(v134, v134, v133);
  }

  v193 = *(v32 + 752);
  *(v32 + 680) = 0;
  *(v32 + 688) = v128;
  *(v32 + 696) = 1;
  *(v32 + 704) = v193;

  v194 = v193;
  swift_task_alloc();
  sub_1883FF2B8();
  *(v32 + 832) = v195;
  *v195 = v196;
  v195[1] = sub_1884EE1F8;
  sub_18840562C();

  sub_188413944(v197);
}

uint64_t sub_1884EDF04()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F7B78();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 816) = v0;

  v5 = *(v2 + 760);
  if (v0)
  {
    v6 = sub_1884EE934;
  }

  else
  {
    v6 = sub_1884EE024;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1884EE1F8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 840) = v0;

  v7 = *(v3 + 760);
  if (v0)
  {
    v8 = sub_1884EEB20;
  }

  else
  {
    v8 = sub_1884EE2F8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1884EE2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883F8680();
  sub_1883FC738();
  v14 = *(v12 + 752);
  swift_bridgeObjectRelease_n();

  sub_1884008B4();

  v15 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1883FF744();

  if (sub_1883F9084())
  {
    v16 = *(v12 + 728);
    sub_18840FB34();
    sub_1883FEEE0();
    sub_1883FF2D4();
    *v13 = 136315394;
    v17 = sub_1883FE43C();
    sub_1883FC788(v17, v18, v19, v20);
    sub_1883F9B0C();
    sub_1883FD7D8();
    v21 = sub_1883FF67C();
    sub_1883F4C5C(v21, v22, off_1E70BA650);
    sub_1884F448C();
    v26 = sub_1883F66E4(v23, v24, v25);
    v27 = sub_1884F4498(v26);
    sub_1883FC788(v27, v28, v29, v30);
    sub_1883FE2FC();
    *(v13 + 14) = v16;
    sub_1883F831C();
    _os_log_impl(v31, v32, v33, v34, v35, 0x16u);
    sub_1884022C8();
    sub_1883FD784();
    sub_1883F82B8();
  }

  sub_1883F90C4();
  sub_1883F7E58();

  return v38(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

uint64_t sub_1884EE45C()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v5 + 928) = v0;

  if (v0)
  {
    v9 = *(v5 + 760);
    v10 = sub_1884EECB4;
  }

  else
  {
    v11 = *(v5 + 760);

    v10 = sub_1884EE57C;
    v9 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

void sub_1884EE57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883F8680();
  sub_1883FC738();
  v15 = v12[114];
  v16 = v12[111];
  v17 = v12[94];

  v18 = v12[113];
  v19 = v12[112];
  v12[110] = v18;
  v12[109] = v19;
  v20 = v12[106];
  if (v20 < 0)
  {
    v25 = __CocoaSet.Iterator.next()();
    if (!v25)
    {
LABEL_19:
      sub_1883F70C4(v12[106]);
      sub_1884008B4();

      v47 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      sub_1883FF744();

      if (sub_1883F9084())
      {
        v48 = v12[93];
        sub_18840FB34();
        sub_1883FEEE0();
        sub_1883FF2D4();
        *v13 = 136315394;
        v49 = sub_1883FE43C();
        sub_1883FC788(v49, v50, v51, v52);
        sub_1883F9B0C();
        sub_1883FD7D8();
        v53 = sub_1883FF67C();
        sub_1883F4C5C(v53, v54, off_1E70B9FD0);
        sub_1884F448C();
        v58 = sub_1883F66E4(v55, v56, v57);
        v59 = sub_1884F4498(v58);
        sub_1883FC788(v59, v60, v61, v62);
        sub_1883FE2FC();
        *(v13 + 14) = v48;
        sub_1883F831C();
        _os_log_impl(v63, v64, v65, v66, v67, 0x16u);
        sub_1884022C8();
        sub_1883FD784();
        sub_1883F82B8();
      }

      sub_1883F90C4();
      sub_1883F7E58();

      v70(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12);
      return;
    }

    v12[90] = v25;
    sub_1883F4C5C(0, &qword_1EA90C690, off_1E70B9FD0);
    sub_1883F84DC();
    swift_dynamicCast();
    v24 = v12[89];
    v22 = v19;
    v13 = v18;
  }

  else
  {
    v21 = v18;
    v22 = v19;
    if (!v18)
    {
      v23 = v19;
      while (1)
      {
        v22 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v22 >= ((v12[108] + 64) >> 6))
        {
          goto LABEL_19;
        }

        v21 = *(v12[107] + 8 * v22);
        ++v23;
        if (v21)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_7:
    v13 = (v21 - 1) & v21;
    v24 = *(*(v20 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
  }

  v12[113] = v13;
  v12[112] = v22;
  v12[111] = v24;
  if (!v24)
  {
    goto LABEL_19;
  }

  v26 = v24;
  v27 = [v26 size];
  if ((v27 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v28 = v12[94];
  v29 = [objc_opt_self() progressWithTotalUnitCount_];
  v12[114] = v29;
  v30 = v28;
  v31 = v26;
  v32 = v29;
  sub_1883F69F4(v30);
  sub_18840FC80();
  if (v33 && (v34 = sub_1883F7574(), (sub_1883F7624(v34, v35, v26, v30) & 1) == 0))
  {
    v36 = v12[94];
  }

  else
  {
    v36 = v12[94];
    type metadata accessor for SyncEngine(0);
    sub_1883F84DC();
    v38 = v37;
    sub_1884E02F8();
    sub_188404258();

    sub_1883F60E8(v38, v14, v36);
  }

  sub_188412260();
  v40 = v39;
  v41 = v31;
  v42 = v32;
  swift_task_alloc();
  sub_1883FF2B8();
  v12[115] = v43;
  *v43 = v44;
  sub_18840DED4(v43);
  sub_1883F7E58();

  sub_1884D1C14(v45);
}

uint64_t sub_1884EE934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1883F98A8();
  sub_1884008A8();
  v15 = *(v14 + 816);
  v16 = *(v14 + 800);
  v17 = *(v14 + 776);
  v18 = *(v14 + 752);
  sub_1883FB300(v14 + 16);
  *(v14 + 464) = v17;
  *(v14 + 472) = 1;
  *(v14 + 473) = *(v14 + 936);
  *(v14 + 476) = *(v14 + 939);
  v19 = MEMORY[0x1E69E7CC0];
  *(v14 + 480) = v18;
  *(v14 + 488) = v19;
  *(v14 + 496) = v16;
  *(v14 + 504) = 1;
  sub_1883FA5AC((v14 + 505));
  *(v14 + 508) = v20;
  *(v14 + 512) = 0;
  *(v14 + 520) = 0;
  v21 = *(v14 + 950);
  *(v14 + 524) = *(v14 + 953);
  *(v14 + 521) = v21;
  *(v14 + 528) = 3;
  sub_1883F7768(v14 + 464);
  v22 = sub_18840EFC4(v15);
  sub_1883FDF6C();

  v23 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1883FB3A4();

  if (sub_1884F45BC())
  {
    a10 = *(v14 + 792);
    sub_18840FB34();
    a11 = sub_18842D4DC();
    *v16 = 136315394;
    v24 = sub_1883FE43C();
    sub_1883FB598(v24, v25, v26, v27, v28, v29);
    sub_1883FDE10();
    *(v16 + 4) = v22;
    sub_1884F452C();
    v30 = Set.description.getter();
    sub_1883FB598(v30, v31, v32, v33, v34, v35);
    sub_1883FDE10();
    *(v16 + 14) = v22;
    sub_1883FDDA4();
    _os_log_impl(v36, v37, v38, v39, v40, 0x16u);
    sub_1884038F4();
    sub_1883FC7E4();
    sub_1883FD784();
  }

  sub_1883F7910();
  sub_1883FEB30();

  return v43(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1884EEE84(uint64_t a1, const void *a2)
{
  memcpy((v2 + 16), a2, 0x50uLL);
  v3 = swift_task_alloc();
  *(v2 + 96) = v3;
  *v3 = v2;
  v3[1] = sub_1884EEF28;

  return sub_1883FA8A4();
}

uint64_t sub_1884EEF28()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v3 = v2;
  v4 = *v1;
  sub_1883F7110();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1883F816C();

    return v10();
  }
}

uint64_t sub_1884EF03C(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1884061E0;

  return v5();
}

uint64_t sub_1884EF124(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  v6 = swift_task_alloc();
  *(v5 + 48) = v6;
  *v6 = v5;
  v6[1] = sub_188414BB4;

  return sub_188413944(v5 + 16);
}