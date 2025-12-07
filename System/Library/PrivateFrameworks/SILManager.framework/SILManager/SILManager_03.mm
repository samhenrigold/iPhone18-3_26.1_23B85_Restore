void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_104:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_106:
      v105 = v5;
      v129 = v8;
      v106 = *(v8 + 2);
      if (v106 >= 2)
      {
        while (*a3)
        {
          v107 = *&v8[16 * v106];
          v5 = *&v8[16 * v106 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 40 * v107), (*a3 + 40 * *&v8[16 * v106 + 16]), *a3 + 40 * v5, v6);
          if (v105)
          {
            goto LABEL_114;
          }

          if (v5 < v107)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
          }

          if (v106 - 2 >= *(v8 + 2))
          {
            goto LABEL_131;
          }

          v108 = &v8[16 * v106];
          *v108 = v107;
          *(v108 + 1) = v5;
          v129 = v8;
          specialized Array.remove(at:)(v106 - 1);
          v8 = v129;
          v106 = *(v129 + 2);
          if (v106 <= 1)
          {
            goto LABEL_114;
          }
        }

        goto LABEL_141;
      }

LABEL_114:

      return;
    }

LABEL_137:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    goto LABEL_106;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    v121 = v8;
    if (v7 < v6)
    {
      v10 = *a3;
      outlined init with copy of SILFileHandle(*a3 + 40 * v7, v126);
      v113 = v9;
      outlined init with copy of SILFileHandle(v10 + 40 * v9, v123);
      v11 = v127;
      v12 = v128;
      __swift_project_boxed_opaque_existential_1(v126, v127);
      v13 = (*(v12 + 24))(v11, v12);
      v15 = v14;
      v16 = v124;
      v17 = v125;
      __swift_project_boxed_opaque_existential_1(v123, v124);
      v19 = v13 == (*(v17 + 24))(v16, v17) && v15 == v18;
      v110 = v5;
      if (v19)
      {
        v119 = 0;
      }

      else
      {
        v119 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v123);
      __swift_destroy_boxed_opaque_existential_1Tm(v126);
      v20 = v113 + 2;
      v21 = v10 + 40 * v113 + 80;
      v117 = v6;
      v22 = 40 * v113 + 40;
      v8 = v121;
      do
      {
        v24 = v20;
        v25 = v7;
        v5 = v22;
        if (v20 >= v6)
        {
          break;
        }

        outlined init with copy of SILFileHandle(v21, v126);
        outlined init with copy of SILFileHandle(v21 - 40, v123);
        v26 = v127;
        v27 = v128;
        __swift_project_boxed_opaque_existential_1(v126, v127);
        v28 = (*(v27 + 24))(v26, v27);
        v30 = v29;
        v32 = v124;
        v31 = v125;
        __swift_project_boxed_opaque_existential_1(v123, v124);
        v34 = v28 == (*(v31 + 24))(v32, v31) && v30 == v33;
        v23 = v34 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

        __swift_destroy_boxed_opaque_existential_1Tm(v123);
        __swift_destroy_boxed_opaque_existential_1Tm(v126);
        v20 = v24 + 1;
        v21 += 40;
        v7 = v25 + 1;
        v22 = v5 + 40;
        v8 = v121;
        v6 = v117;
      }

      while (((v119 ^ v23) & 1) == 0);
      if (v119)
      {
        v9 = v113;
        if (v24 < v113)
        {
          goto LABEL_134;
        }

        if (v113 < v24)
        {
          v6 = v113;
          v35 = 40 * v113;
          do
          {
            if (v6 != v25)
            {
              v37 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v38 = v37 + v35;
              v39 = v37 + v5;
              outlined init with take of SILFileHandle((v37 + v35), v126);
              v40 = *(v39 + 32);
              v41 = *(v39 + 16);
              *v38 = *v39;
              *(v38 + 16) = v41;
              *(v38 + 32) = v40;
              outlined init with take of SILFileHandle(v126, v39);
            }

            ++v6;
            v5 -= 40;
            v35 += 40;
          }

          while (v6 < v25--);
        }

        v7 = v24;
        v5 = v110;
      }

      else
      {
        v7 = v24;
        v5 = v110;
        v9 = v113;
      }
    }

    v42 = a3[1];
    if (v7 < v42)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v59 = *(v8 + 2);
    v58 = *(v8 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v8);
    }

    *(v8 + 2) = v60;
    v61 = &v8[16 * v59];
    *(v61 + 4) = v9;
    *(v61 + 5) = v7;
    v62 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if (v59)
    {
      while (1)
      {
        v63 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v64 = *(v8 + 4);
          v65 = *(v8 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_73:
          if (v67)
          {
            goto LABEL_121;
          }

          v80 = &v8[16 * v60];
          v82 = *v80;
          v81 = *(v80 + 1);
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_124;
          }

          v86 = &v8[16 * v63 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_128;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v63 = v60 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v90 = &v8[16 * v60];
        v92 = *v90;
        v91 = *(v90 + 1);
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_87:
        if (v85)
        {
          goto LABEL_123;
        }

        v93 = &v8[16 * v63];
        v95 = *(v93 + 4);
        v94 = *(v93 + 5);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_126;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_94:
        v101 = v63 - 1;
        if (v63 - 1 >= v60)
        {
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
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v6 = v7;
        v102 = *&v8[16 * v101 + 32];
        v103 = *&v8[16 * v63 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 40 * v102), (*a3 + 40 * *&v8[16 * v63 + 32]), *a3 + 40 * v103, v62);
        if (v5)
        {
          goto LABEL_114;
        }

        if (v103 < v102)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v101 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v104 = &v8[16 * v101];
        *(v104 + 4) = v102;
        *(v104 + 5) = v103;
        v129 = v8;
        specialized Array.remove(at:)(v63);
        v8 = v129;
        v60 = *(v129 + 2);
        v7 = v6;
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = &v8[16 * v60 + 32];
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_119;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_120;
      }

      v75 = &v8[16 * v60];
      v77 = *v75;
      v76 = *(v75 + 1);
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_122;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_125;
      }

      if (v79 >= v71)
      {
        v97 = &v8[16 * v63 + 32];
        v99 = *v97;
        v98 = *(v97 + 1);
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_129;
        }

        if (v66 < v100)
        {
          v63 = v60 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v43 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_135;
  }

  if (v43 >= v42)
  {
    v43 = a3[1];
  }

  if (v43 < v9)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v7 == v43)
  {
    goto LABEL_53;
  }

  v111 = v5;
  v44 = *a3;
  v45 = *a3 + 40 * v7;
  v114 = v9;
  v115 = v43;
  v46 = v9 - v7;
LABEL_42:
  v118 = v45;
  v120 = v7;
  v116 = v46;
  while (1)
  {
    outlined init with copy of SILFileHandle(v45, v126);
    outlined init with copy of SILFileHandle(v45 - 40, v123);
    v47 = v127;
    v48 = v128;
    __swift_project_boxed_opaque_existential_1(v126, v127);
    v49 = (*(v48 + 24))(v47, v48);
    v51 = v50;
    v52 = v124;
    v6 = v125;
    __swift_project_boxed_opaque_existential_1(v123, v124);
    if (v49 == (*(v6 + 24))(v52, v6) && v51 == v53)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v123);
      __swift_destroy_boxed_opaque_existential_1Tm(v126);
LABEL_41:
      v7 = v120 + 1;
      v45 = v118 + 40;
      v46 = v116 - 1;
      if (v120 + 1 == v115)
      {
        v7 = v115;
        v5 = v111;
        v8 = v121;
        v9 = v114;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

    __swift_destroy_boxed_opaque_existential_1Tm(v123);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    if ((v55 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v44)
    {
      break;
    }

    outlined init with take of SILFileHandle(v45, v126);
    v56 = *(v45 - 24);
    *v45 = *(v45 - 40);
    *(v45 + 16) = v56;
    *(v45 + 32) = *(v45 - 8);
    outlined init with take of SILFileHandle(v126, v45 - 40);
    v45 -= 40;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
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
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 8;
      v5 -= 8;
      v18 = v14;
      do
      {
        v19 = v5 + 8;
        v21 = *(v18 - 8);
        v18 -= 8;
        v20 = v21;
        if (*(v21 + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame) < *(*v17 + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame))
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (v6 -= 8, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_36;
          }

          goto LABEL_25;
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
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = *v6;
        if (*(*v6 + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame) >= *(*v4 + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame))
        {
          break;
        }

        v16 = v7 == v6;
        v6 += 8;
        if (!v16)
        {
          goto LABEL_16;
        }

LABEL_17:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_19;
        }
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (v16)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v7 = v15;
      goto LABEL_17;
    }

LABEL_19:
    v6 = v7;
  }

LABEL_36:
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
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_29:
      v21 = v6 - 8;
      v5 -= 8;
      v22 = v14;
      do
      {
        v23 = *(v22 - 1);
        v22 -= 8;
        v24 = *(v23 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name + 8);
        v25 = (*v21 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name);
        v26 = *(v23 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name) == *v25 && v24 == v25[1];
        if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (v5 + 8 != v6)
          {
            *v5 = *v21;
          }

          if (v14 <= v4 || (v6 -= 8, v21 <= v7))
          {
            v6 = v21;
            goto LABEL_44;
          }

          goto LABEL_29;
        }

        if (v5 + 8 != v14)
        {
          *v5 = *v22;
        }

        v5 -= 8;
        v14 = v22;
      }

      while (v22 > v4);
      v14 = v22;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = (*v6 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name);
        v16 = *v15;
        v17 = v15[1];
        v18 = (*v4 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name);
        v19 = v16 == *v18 && v17 == v18[1];
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }

        v20 = v6;
        v19 = v7 == v6;
        v6 += 8;
        if (!v19)
        {
          goto LABEL_20;
        }

LABEL_21:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_23;
        }
      }

      v20 = v4;
      v19 = v7 == v4;
      v4 += 8;
      if (v19)
      {
        goto LABEL_21;
      }

LABEL_20:
      *v7 = *v20;
      goto LABEL_21;
    }

LABEL_23:
    v6 = v7;
  }

LABEL_44:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

unint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t __dst, char *a2, char *a3, uint64_t *__src, uint64_t *a5)
{
  v5 = a3;
  v6 = __dst;
  v7 = &a2[-__dst];
  v8 = &a2[-__dst + 15];
  if (&a2[-__dst] >= 0)
  {
    v8 = &a2[-__dst];
  }

  v9 = v8 >> 4;
  v10 = a3 - a2;
  v11 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 4;
  if (v9 < v11 >> 4)
  {
    if (__src != __dst || __dst + 16 * v9 <= __src)
    {
      v13 = a2;
      v14 = __src;
      __dst = memmove(__src, __dst, 16 * v9);
      __src = v14;
      a2 = v13;
    }

    v15 = &__src[2 * v9];
    if (v7 >= 16 && a2 < v5)
    {
      v16 = &SILTelemetry::timer;
      v60 = &__src[2 * v9];
      v64 = v5;
      while (1)
      {
        v17 = v16;
        v18 = *a5;
        if (!*(*a5 + 16))
        {
          __break(1u);
          goto LABEL_52;
        }

        v62 = v6;
        v19 = *__src;
        v20 = __src[1];
        v21 = __src;
        v22 = *a2;
        v23 = *(a2 + 1);
        v24 = a2;

        __dst = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23);
        if ((v25 & 1) == 0)
        {
          goto LABEL_53;
        }

        v26 = *a5;
        if (!*(*a5 + 16))
        {
          goto LABEL_55;
        }

        v27 = *(*(v18 + 56) + 8 * __dst);
        v16 = v17;
        v28 = *(*(v27 + v17[123]) + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame);
        __dst = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
        if ((v29 & 1) == 0)
        {
          goto LABEL_57;
        }

        v30 = *(*(*(*(v26 + 56) + 8 * __dst) + v16[123]) + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame);

        if (v28 >= v30)
        {
          break;
        }

        v31 = v24;
        a2 = (v24 + 2);
        v33 = v62;
        v32 = v64;
        __src = v21;
        if (v62 != v24)
        {
          goto LABEL_20;
        }

LABEL_21:
        v6 = v33 + 2;
        v15 = v60;
        if (__src >= v60 || a2 >= v32)
        {
          goto LABEL_23;
        }
      }

      v31 = v21;
      __src = v21 + 2;
      v33 = v62;
      v32 = v64;
      a2 = v24;
      if (v62 == v21)
      {
        goto LABEL_21;
      }

LABEL_20:
      *v33 = *v31;
      goto LABEL_21;
    }

LABEL_23:
    a2 = v6;
    goto LABEL_45;
  }

  if (__src != a2 || &a2[16 * v12] <= __src)
  {
    v34 = a2;
    v35 = __src;
    __dst = memmove(__src, a2, 16 * v12);
    a2 = v34;
    __src = v35;
  }

  v15 = &__src[2 * v12];
  if (v10 < 16 || a2 <= v6)
  {
LABEL_45:
    v55 = v15 - __src;
    v56 = v15 - __src + 15;
    if (v55 < 0)
    {
      v55 = v56;
    }

    if (a2 != __src || a2 >= __src + (v55 & 0xFFFFFFFFFFFFFFF0))
    {
      memmove(a2, __src, 16 * (v55 >> 4));
    }

    return 1;
  }

  v36 = &SILTelemetry::timer;
  v37 = &SILTelemetry::timer;
  v63 = v6;
LABEL_30:
  v57 = (a2 - 16);
  v38 = v5 - 16;
  v58 = a2;
  while (1)
  {
    v39 = *a5;
    if (!*(*a5 + 16))
    {
      break;
    }

    v40 = __src;
    v65 = v38;
    v41 = v15;
    v42 = *(v15 - 1);
    v43 = *(a2 - 1);
    v59 = v15 - 2;
    v61 = *(a2 - 2);
    v44 = *(v15 - 2);

    __dst = specialized __RawDictionaryStorage.find<A>(_:)(v44, v42);
    if ((v45 & 1) == 0)
    {
      goto LABEL_54;
    }

    v46 = v37;
    v47 = *a5;
    if (!*(*a5 + 16))
    {
      goto LABEL_56;
    }

    v48 = v40;
    v49 = v36;
    v50 = v46;
    v51 = *(*(*(*(v39 + 56) + 8 * __dst) + v36[123]) + v46[118]);
    __dst = specialized __RawDictionaryStorage.find<A>(_:)(v61, v43);
    if ((v52 & 1) == 0)
    {
      goto LABEL_58;
    }

    v53 = v49;
    v54 = *(*(*(*(v47 + 56) + 8 * __dst) + v49[123]) + v50[118]);

    v37 = v50;
    if (v51 < v54)
    {
      v5 = v65;
      v15 = v41;
      if (v65 + 16 != v58)
      {
        *v65 = *v57;
      }

      __src = v48;
      if (v41 <= v48 || (v36 = v53, a2 = v57, v57 <= v63))
      {
        a2 = v57;
        goto LABEL_45;
      }

      goto LABEL_30;
    }

    __src = v48;
    if (v65 + 16 != v41)
    {
      *v65 = *v59;
    }

    v38 = v65 - 16;
    v15 = v59;
    a2 = v58;
    v36 = v53;
    if (v59 <= v48)
    {
      v15 = v59;
      goto LABEL_45;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return __dst;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = *(v17 - 24);
      v19 = *(v17 - 16);
      v17 -= 24;
      v20 = v18 == *(v6 - 3) && v19 == *(v6 - 2);
      if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v22 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v12)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v21;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v23 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
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
    if (a4 != __src || &__src[v12] <= a4)
    {
      v22 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v22;
    }

    v39 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v35 = v6;
LABEL_27:
      v23 = v5 - 1;
      v24 = v4 - 1;
      v25 = v39;
      v36 = v5 - 1;
      do
      {
        v26 = v24;
        v27 = v24 + 1;
        v28 = *--v25;
        v29 = *v23;
        v38 = *((*MEMORY[0x277D85000] & *v28) + 0xA8);
        v30 = v28;
        v31 = v29;
        v32 = v38();
        v33 = (*((*MEMORY[0x277D85000] & *v31) + 0xA8))();

        if (v32 < v33)
        {
          v4 = v26;
          if (v27 != v5)
          {
            *v26 = *v36;
          }

          if (v39 <= v13 || (--v5, v36 <= v35))
          {
            v5 = v36;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v27 != v39)
        {
          *v26 = *v25;
        }

        v24 = v26 - 1;
        v39 = v25;
        v23 = v5 - 1;
      }

      while (v25 > v13);
      v39 = v25;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v39 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v37 = v4;
      while (1)
      {
        v14 = *v13;
        v15 = *((*MEMORY[0x277D85000] & **v5) + 0xA8);
        v16 = *v5;
        v17 = v14;
        v18 = v15();
        v19 = (*((*MEMORY[0x277D85000] & *v17) + 0xA8))();

        if (v18 >= v19)
        {
          break;
        }

        v20 = v5;
        v21 = v6 == v5++;
        if (!v21)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++v6;
        if (v13 >= v39 || v5 >= v37)
        {
          goto LABEL_20;
        }
      }

      v20 = v13;
      v21 = v6 == v13++;
      if (v21)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v6 = *v20;
      goto LABEL_18;
    }

LABEL_20:
    v5 = v6;
  }

LABEL_38:
  if (v5 != v13 || v5 >= (v13 + ((v39 - v13 + (v39 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * (v39 - v13));
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a2;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[40 * v11] <= a4)
    {
      memmove(a4, a2, 40 * v11);
      v7 = a2;
    }

    v58 = &v4[40 * v11];
    if (v10 >= 40 && v7 > __src)
    {
      v28 = v7;
      v51 = v4;
      do
      {
        __dst = v28;
        v29 = (v28 - 40);
        v30 = (v58 - 40);
        v5 -= 40;
        while (1)
        {
          outlined init with copy of SILFileHandle(v30, v55);
          v33 = v29;
          outlined init with copy of SILFileHandle(v29, v52);
          v34 = v56;
          v35 = v57;
          __swift_project_boxed_opaque_existential_1(v55, v56);
          v36 = (*(v35 + 24))(v34, v35);
          v38 = v37;
          v40 = v53;
          v39 = v54;
          __swift_project_boxed_opaque_existential_1(v52, v53);
          v42 = v36 == (*(v39 + 24))(v40, v39) && v38 == v41;
          v43 = v42 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

          __swift_destroy_boxed_opaque_existential_1Tm(v52);
          __swift_destroy_boxed_opaque_existential_1Tm(v55);
          if (v43)
          {
            break;
          }

          if (v5 + 40 != v30 + 40)
          {
            v44 = *v30;
            v45 = *(v30 + 16);
            *(v5 + 32) = *(v30 + 32);
            *v5 = v44;
            *(v5 + 16) = v45;
          }

          v31 = v30 - 40;
          v5 -= 40;
          v32 = v30 > v51;
          v30 -= 40;
          v29 = v33;
          if (!v32)
          {
            v58 = (v31 + 40);
            v7 = __dst;
            v4 = v51;
            goto LABEL_43;
          }
        }

        v7 = v33;
        if ((v5 + 40) != __dst)
        {
          v46 = *v33;
          v47 = *(v33 + 16);
          *(v5 + 32) = *(v33 + 32);
          *v5 = v46;
          *(v5 + 16) = v47;
        }

        v58 = (v30 + 40);
        v4 = v51;
        if (v30 + 40 <= v51)
        {
          break;
        }

        v28 = v7;
      }

      while (v7 > __src);
      v58 = (v30 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
      v7 = a2;
    }

    v58 = &v4[40 * v9];
    if (v8 >= 40 && v7 < v5)
    {
      while (1)
      {
        v13 = v7;
        outlined init with copy of SILFileHandle(v7, v55);
        outlined init with copy of SILFileHandle(v4, v52);
        v14 = v56;
        v15 = v57;
        __swift_project_boxed_opaque_existential_1(v55, v56);
        v16 = (*(v15 + 24))(v14, v15);
        v18 = v17;
        v19 = v53;
        v20 = v54;
        __swift_project_boxed_opaque_existential_1(v52, v53);
        v22 = v16 == (*(v20 + 24))(v19, v20) && v18 == v21;
        if (v22)
        {
          break;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        if ((v23 & 1) == 0)
        {
          goto LABEL_15;
        }

        v24 = v13;
        v7 = v13 + 40;
        if (__src != v13)
        {
          goto LABEL_16;
        }

LABEL_17:
        __src += 40;
        if (v4 >= v58 || v7 >= v5)
        {
          goto LABEL_19;
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
LABEL_15:
      v24 = v4;
      v22 = __src == v4;
      v4 += 40;
      v7 = v13;
      if (v22)
      {
        goto LABEL_17;
      }

LABEL_16:
      v25 = *v24;
      v26 = *(v24 + 1);
      *(__src + 4) = *(v24 + 4);
      *__src = v25;
      *(__src + 1) = v26;
      goto LABEL_17;
    }

LABEL_19:
    v7 = __src;
  }

LABEL_43:
  v48 = (v58 - v4) / 40;
  if (v7 != v4 || v7 >= &v4[40 * v48])
  {
    memmove(v7, v4, 40 * v48);
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26672FCF0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSay10SILManager26SILFlipBookTransitionPointCGGMd, &_ss18_DictionaryStorageCySSSay10SILManager26SILFlipBookTransitionPointCGGMR);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v34 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        outlined init with take of Any(v24, v35);
      }

      else
      {
        outlined init with copy of Any(v24, v35);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      outlined init with take of Any(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v38 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10SILManager13SILCursorDescCGMd, &_ss18_DictionaryStorageCySi10SILManager13SILCursorDescCGMR);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v21;
      }

      v23 = MEMORY[0x266730350](*(v7 + 40), v20);
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSo20SILManagerCursorInfoVGMd, &_ss18_DictionaryStorageCySiSo20SILManagerCursorInfoVGMR);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v4;
    v34 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 20 * v20;
      v23 = *(v22 + 16);
      v35 = *v22;
      v24 = MEMORY[0x266730350](*(v7 + 40), v21);
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 20 * v15;
      *v16 = v35;
      *(v16 + 16) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v33)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v38 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v37 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v38 & 1) == 0)
      {

        v27 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v4;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      v24 = MEMORY[0x266730350](*(v9 + 40), v22);
      v25 = -1 << *(v9 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x266730350](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a4 & 1, a5, a6);
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v23 = v15;
      specialized _NativeDictionary.copy()(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v12 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1, a4, a5);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      specialized _NativeDictionary.copy()(a4, a5);
      result = v21;
    }
  }

  v23 = *v8;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 8 * result) = a2;
    *(v23[7] + 8 * result) = a1;
    v24 = v23[2];
    v17 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v17)
    {
      v23[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  *(v23[7] + 8 * result) = a1;
}

void specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSay10SILManager26SILFlipBookTransitionPointCGGMd, &_ss18_DictionaryStorageCySSSay10SILManager26SILFlipBookTransitionPointCGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10SILManager13SILCursorDescCGMd, &_ss18_DictionaryStorageCySi10SILManager13SILCursorDescCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSo20SILManagerCursorInfoVGMd, &_ss18_DictionaryStorageCySiSo20SILManagerCursorInfoVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 16) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 20 * v14;
      v18 = *(v17 + 16);
      v19 = *v17;
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v20 = *(v4 + 56) + 20 * v14;
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        v24 = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v4 & 1);
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  v23 = (v21[7] + 16 * v10);
  *v23 = v7;
  v23[1] = v8;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x26672FCC0](0xD00000000000001BLL, 0x8000000262A9F0C0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26672FCC0](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v21[2] = v25;
  if (v39 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v26 = *(v4 - 1);
      v8 = *v4;
      v27 = *a3;

      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, 1);
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v6;
      v35[1] = v5;
      v36 = (v34[7] + 16 * v28);
      *v36 = v26;
      v36[1] = v8;
      v37 = v34[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v34[2] = v38;
      v4 += 4;
      if (v39 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_8:
    if (v4 < 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x2667300B0](v6);
  }

LABEL_12:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x266730000](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    MEMORY[0x2667300B0](a1);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x2667300B0](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x2667300B0](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [SILIndicatorDesc] and conformance [A]();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10SILManager16SILIndicatorDescCGMd, &_sSay10SILManager16SILIndicatorDescCGMR);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;
            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SILIndicatorDesc();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        v24 = v20;
        goto LABEL_23;
      }

      v11 += 3;

      v21 = v20;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

void *specialized Dictionary.subscript.getter(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t specialized FrameDesc.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FrameDesc.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized FallbackInfo.init(values:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (!*(result + 16))
    {
      goto LABEL_17;
    }

    v2 = specialized __RawDictionaryStorage.find<A>(_:)(120, 0xE100000000000000);
    v4 = v3;
    v5 = 0.0;
    if (v3)
    {
      v5 = *(*(v1 + 56) + 8 * v2);
    }

    if (*(v1 + 16) && (, specialized __RawDictionaryStorage.find<A>(_:)(121, 0xE100000000000000), v7 = v6, , *(v1 + 16)) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(0x656D617266, 0xE500000000000000), (v9 & 1) != 0))
    {
      v10 = *(*(v1 + 56) + 8 * v8);

      if (v4 & 1) != 0 && (v7)
      {
        if (v5 <= 0.0)
        {
          v11 = 0.5;
        }

        else
        {
          v11 = v5;
        }

        if ((~*&v10 & 0x7FF0000000000000) != 0)
        {
          if (v10 > -1.0)
          {
            if (v10 < 65536.0)
            {
              return *&v11;
            }

            goto LABEL_22;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }
    }

    else
    {
LABEL_17:
    }

    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [[String : Double]] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [[String : Double]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[String : Double]] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySDySSSdGGMd, &_sSaySDySSSdGGMR);
    lazy protocol witness table accessor for type [String : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Double] and conformance <> [A : B], &_sSDySSSdGMd, &_sSDySSSdGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [[String : Double]] and conformance <A> [A]);
  }

  return result;
}

unint64_t specialized SILConstraints.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SILConstraints.CodingKeys.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined init with copy of SILFileHandle?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager13SILFileHandle_pSgMd, &_s10SILManager13SILFileHandle_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of SILFileHandle?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager13SILFileHandle_pSgMd, &_s10SILManager13SILFileHandle_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t specialized SILAssetDesc.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SILAssetDesc.CodingKeys.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of SILFileHandle?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager13SILFileHandle_pSgMd, &_s10SILManager13SILFileHandle_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [FrameDesc] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [FrameDesc] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [FrameDesc] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10SILManager9FrameDescCGMd, &_sSay10SILManager9FrameDescCGMR);
    lazy protocol witness table accessor for type FrameDesc and conformance FrameDesc(&lazy protocol witness table cache variable for type FrameDesc and conformance FrameDesc, type metadata accessor for FrameDesc, &protocol conformance descriptor for FrameDesc);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [FrameDesc] and conformance <A> [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void specialized static SILFlipBookTransitionPoint.parseTransitionPoints(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = MEMORY[0x277D84F90];
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
LABEL_9:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(a2 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(*(a2 + 56) + 8 * v12);
      v17 = HIBYTE(v14) & 0xF;
      v18 = *v13 & 0xFFFFFFFFFFFFLL;
      if ((v14 & 0x2000000000000000) != 0)
      {
        v19 = HIBYTE(v14) & 0xF;
      }

      else
      {
        v19 = *v13 & 0xFFFFFFFFFFFFLL;
      }

      if (!v19)
      {
        goto LABEL_82;
      }

      if ((v14 & 0x1000000000000000) == 0)
      {
        break;
      }

      swift_bridgeObjectRetain_n();

      v22 = specialized _parseInteger<A, B>(ascii:radix:)(v15, v14, 10);

      if ((v22 & 0x10000) != 0)
      {
        goto LABEL_87;
      }

LABEL_71:

      objc_allocWithZone(type metadata accessor for SILFlipBookTransitionPoint());

      SILFlipBookTransitionPoint.init(_:_:_:)(v35, v22, v16);
      if (v3)
      {

        return;
      }

      MEMORY[0x26672FDA0]();
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v8 &= v8 - 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    if ((v14 & 0x2000000000000000) != 0)
    {
      v36[0] = v15;
      v36[1] = v14 & 0xFFFFFFFFFFFFFFLL;
      if (v15 == 43)
      {
        if (!v17)
        {
          goto LABEL_83;
        }

        if (--v17)
        {
          LOWORD(v22) = 0;
          v29 = v36 + 1;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              break;
            }

            if (((10 * v22) & 0xF0000) != 0)
            {
              break;
            }

            v22 = (10 * v22) + v30;
            if ((v22 & 0x10000) != 0)
            {
              break;
            }

            ++v29;
            if (!--v17)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else if (v15 == 45)
      {
        if (!v17)
        {
          goto LABEL_84;
        }

        if (--v17)
        {
          LOWORD(v22) = 0;
          v25 = v36 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            if (((10 * v22) & 0xF0000) != 0)
            {
              break;
            }

            v22 = (10 * v22) - v26;
            if ((v22 & 0xFFFF0000) != 0)
            {
              break;
            }

            ++v25;
            if (!--v17)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else if (v17)
      {
        LOWORD(v22) = 0;
        v32 = v36;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          if (((10 * v22) & 0xF0000) != 0)
          {
            break;
          }

          v22 = (10 * v22) + v33;
          if ((v22 & 0x10000) != 0)
          {
            break;
          }

          ++v32;
          if (!--v17)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_69;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v20 = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v20 = _StringObject.sharedUTF8.getter();
    }

    v21 = *v20;
    if (v21 == 43)
    {
      if (v18 < 1)
      {
        goto LABEL_86;
      }

      v17 = v18 - 1;
      if (v18 == 1)
      {
        goto LABEL_69;
      }

      v22 = 0;
      if (v20)
      {
        v27 = v20 + 1;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            goto LABEL_69;
          }

          if (((10 * v22) & 0xF0000) != 0)
          {
            goto LABEL_69;
          }

          v22 = (10 * v22) + v28;
          if ((v22 & 0x10000) != 0)
          {
            goto LABEL_69;
          }

          ++v27;
          if (!--v17)
          {
            goto LABEL_70;
          }
        }
      }
    }

    else if (v21 == 45)
    {
      if (v18 < 1)
      {
        goto LABEL_85;
      }

      v17 = v18 - 1;
      if (v18 == 1)
      {
        goto LABEL_69;
      }

      v22 = 0;
      if (v20)
      {
        v23 = v20 + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            goto LABEL_69;
          }

          if (((10 * v22) & 0xF0000) != 0)
          {
            goto LABEL_69;
          }

          v22 = (10 * v22) - v24;
          if ((v22 & 0xFFFF0000) != 0)
          {
            goto LABEL_69;
          }

          ++v23;
          if (!--v17)
          {
            goto LABEL_70;
          }
        }
      }
    }

    else
    {
      if (!v18)
      {
LABEL_69:
        v22 = 0;
        LOBYTE(v17) = 1;
LABEL_70:
        v37 = v17;
        v34 = v17;

        if (v34)
        {
          goto LABEL_87;
        }

        goto LABEL_71;
      }

      v22 = 0;
      if (v20)
      {
        do
        {
          v31 = *v20 - 48;
          if (v31 > 9)
          {
            goto LABEL_69;
          }

          if (((10 * v22) & 0xF0000) != 0)
          {
            goto LABEL_69;
          }

          v22 = (10 * v22) + v31;
          if ((v22 & 0x10000) != 0)
          {
            goto LABEL_69;
          }

          ++v20;
        }

        while (--v18);
      }
    }

    LOBYTE(v17) = 0;
    goto LABEL_70;
  }

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

      specialized MutableCollection<>.sort(by:)(&v38, type metadata accessor for SILFlipBookTransitionPoint, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
      return;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_82:

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
}

uint64_t specialized SILCursorDesc.getPixelFormatSize(from:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616D726F4649436BLL && a2 == 0xEE00384247524174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0x616D726F4649436BLL && a2 == 0xEB00000000384174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  _StringGuts.grow(_:)(44);

  MEMORY[0x26672FCC0](a1, a2);
  MEMORY[0x26672FCC0](0xD000000000000011, 0x8000000262A9F130);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t specialized SILCursorDesc.CursorCodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SILCursorDesc.CursorCodingKeys.init(rawValue:), v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

id specialized static SILCursorDesc.createFromData(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for CursorsPlist();
  lazy protocol witness table accessor for type FrameDesc and conformance FrameDesc(&lazy protocol witness table cache variable for type CursorsPlist and conformance CursorsPlist, type metadata accessor for CursorsPlist, &protocol conformance descriptor for CursorsPlist);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v2 = *(*v9 + 88);

  v4 = v2(v3);

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    return 0;
  }

  if (v4 < 0)
  {
    v8 = v4;
  }

  else
  {
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x2667300B0](v8);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x266730000](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 + 32);
  }

  v7 = v6;

  return v7;
}

unint64_t lazy protocol witness table accessor for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys()
{
  result = lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys;
  if (!lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys;
  if (!lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys;
  if (!lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys;
  if (!lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of SILFileHandle(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id specialized static SILIndicatorDesc.createFromData(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for IndicatorsPlist();
  lazy protocol witness table accessor for type FrameDesc and conformance FrameDesc(&lazy protocol witness table cache variable for type IndicatorsPlist and conformance IndicatorsPlist, type metadata accessor for IndicatorsPlist, &protocol conformance descriptor for IndicatorsPlist);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v2 = *(*v9 + 96);

  v4 = v2(v3);

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    return 0;
  }

  if (v4 < 0)
  {
    v8 = v4;
  }

  else
  {
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x2667300B0](v8);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x266730000](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 + 32);
  }

  v7 = v6;

  return v7;
}

unint64_t lazy protocol witness table accessor for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys()
{
  result = lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys;
  if (!lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys;
  if (!lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys;
  if (!lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys;
  if (!lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys);
  }

  return result;
}

double outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

double outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys;
  if (!lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys;
  if (!lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys;
  if (!lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys;
  if (!lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SILIndicatorDesc] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SILIndicatorDesc] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SILIndicatorDesc] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10SILManager16SILIndicatorDescCGMd, &_sSay10SILManager16SILIndicatorDescCGMR);
    lazy protocol witness table accessor for type FrameDesc and conformance FrameDesc(&lazy protocol witness table cache variable for type SILIndicatorDesc and conformance SILAssetDesc, type metadata accessor for SILIndicatorDesc, &protocol conformance descriptor for SILAssetDesc);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SILIndicatorDesc] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys;
  if (!lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys;
  if (!lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys;
  if (!lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys;
  if (!lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SILCursorDesc] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SILCursorDesc] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SILCursorDesc] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10SILManager13SILCursorDescCGMd, &_sSay10SILManager13SILCursorDescCGMR);
    lazy protocol witness table accessor for type FrameDesc and conformance FrameDesc(&lazy protocol witness table cache variable for type SILCursorDesc and conformance SILAssetDesc, type metadata accessor for SILCursorDesc, &protocol conformance descriptor for SILAssetDesc);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SILCursorDesc] and conformance <A> [A]);
  }

  return result;
}

NSObject *specialized static SILManifest.constraintFileFromIndicatorFile(deviceType:indicatorFileName:constraintFiles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v91 = *MEMORY[0x277D85DE8];
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v74 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a3;
  v73 = a4;
  v14 = MEMORY[0x26672FC40](a3, a4);
  v15 = [v14 lastPathComponent];
  if (!v15)
  {
LABEL_47:
    __break(1u);
  }

  v16 = v15;
  v76 = a2;
  v71 = v12;
  v72 = v11;
  v82 = v5;

  v17 = [v16 stringByDeletingPathExtension];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v19;

  v20 = *(a5 + 16);
  if (v20)
  {
    v21 = a5 + 32;
    v22 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of SILFileHandle(v21, &v88);
      v24 = v89;
      v23 = v90;
      __swift_project_boxed_opaque_existential_1(&v88, v89);
      *&__dst[0] = (*(v23 + 24))(v24, v23);
      *(&__dst[0] + 1) = v25;
      v84 = v18;
      v85 = v83;
      lazy protocol witness table accessor for type String and conformance String();
      v26 = StringProtocol.contains<A>(_:)();

      if (v26)
      {
        outlined init with take of SILFileHandle(&v88, __dst);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1);
          v22 = v86;
        }

        v29 = *(v22 + 16);
        v28 = *(v22 + 24);
        if (v29 >= v28 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
          v22 = v86;
        }

        *(v22 + 16) = v29 + 1;
        outlined init with take of SILFileHandle(__dst, v22 + 40 * v29 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v88);
      }

      v21 += 40;
      --v20;
    }

    while (v20);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v81 = PropertyListDecoder.init()();
  v79 = *(v22 + 16);
  if (!v79)
  {
LABEL_42:

    v58 = SILLogger.unsafeMutableAddressor();
    v59 = v71;
    v60 = v74;
    v61 = v72;
    (*(v71 + 16))(v74, v58, v72);
    v62 = v73;

    v31 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v88 = v65;
      *v64 = 136315138;
      *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v62, &v88);
      _os_log_impl(&dword_262A43000, v31, v63, "Failed to find constraint file for %s", v64, 0xCu);
      v66 = __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x266730D70](v65, -1, -1, v66);
      MEMORY[0x266730D70](v64, -1, -1);
    }

    (*(v59 + 8))(v60, v61);
    lazy protocol witness table accessor for type SILError and conformance SILError();
    swift_allocError();
    *v67 = 12;
    swift_willThrow();

    return v31;
  }

  v30 = 0;
  v77 = 0;
  v78 = 0;
  v80 = v22 + 32;
  do
  {
    if (v30 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_47;
    }

    outlined init with copy of SILFileHandle(v80 + 40 * v30, &v88);
    v31 = v89;
    v32 = v90;
    __swift_project_boxed_opaque_existential_1(&v88, v89);
    v33 = v89;
    v34 = v90;
    __swift_project_boxed_opaque_existential_1(&v88, v89);
    v35 = (*(v34 + 16))(v33, v34);
    v36 = v82;
    v37 = (*(v32 + 8))(0, v35, v31, v32);
    if (v36)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v88);
      return v31;
    }

    v38 = *(v37 + 16);
    if (v38)
    {
      if (v38 <= 0xE)
      {
        *(__dst + 6) = 0;
        *&__dst[0] = 0;
        BYTE14(__dst[0]) = v38;
        memcpy(__dst, (v37 + 32), v38);
        v40 = *&__dst[0];
        v42 = DWORD2(__dst[0]) | ((WORD6(__dst[0]) | (BYTE14(__dst[0]) << 16)) << 32);

        v41 = v75 & 0xF00000000000000 | v42;
        v75 = v41;
      }

      else
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v39 = __DataStorage.init(bytes:length:)();
        if (v38 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v40 = swift_allocObject();
          *(v40 + 16) = 0;
          *(v40 + 24) = v38;

          v41 = v39 | 0x8000000000000000;
        }

        else
        {

          v40 = v38 << 32;
          v41 = v39 | 0x4000000000000000;
        }
      }
    }

    else
    {

      v40 = 0;
      v41 = 0xC000000000000000;
    }

    type metadata accessor for SILConstraints();
    lazy protocol witness table accessor for type FrameDesc and conformance FrameDesc(&lazy protocol witness table cache variable for type SILConstraints and conformance SILConstraints, type metadata accessor for SILConstraints, &protocol conformance descriptor for SILConstraints);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v82 = 0;
    v43 = *&__dst[0];
    v44 = v89;
    v45 = v90;
    __swift_project_boxed_opaque_existential_1(&v88, v89);
    v46 = (*(v45 + 24))(v44, v45);
    v47 = MEMORY[0x26672FC40](v46);

    v48 = [v47 lastPathComponent];

    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    (*((*MEMORY[0x277D85000] & v43->isa) + 0xA8))(v49, v51);
    v52 = *(&v43->isa + OBJC_IVAR____TtC10SILManager14SILConstraints_devices);
    v53 = *(v52 + 16);
    if (v53)
    {
      v54 = (v52 + 40);
      v55 = v53 + 1;
      v56 = v76;
      while (--v55)
      {
        if (*(v54 - 1) != a1 || *v54 != v56)
        {
          v54 += 2;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        outlined consume of Data._Representation(v40, v41);

        v78 = v43;
        goto LABEL_16;
      }

      outlined consume of Data._Representation(v40, v41);
    }

    else
    {

      outlined consume of Data._Representation(v40, v41);
      v77 = v43;
    }

LABEL_16:
    ++v30;
    __swift_destroy_boxed_opaque_existential_1Tm(&v88);
  }

  while (v30 != v79);
  v31 = v78;
  if (v78)
  {

    goto LABEL_41;
  }

  v31 = v77;
  if (!v77)
  {
    goto LABEL_42;
  }

LABEL_41:

  return v31;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SDySS10SILManager13SILCursorDescCGTt0g5Tf4g_nTm(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = static _DictionaryStorage.allocate(capacity:)();
  v6 = a1[4];
  v7 = a1[5];
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 7;
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10SILManager13SILCursorDescCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10SILManager13SILCursorDescCGMd, &_ss18_DictionaryStorageCySS10SILManager13SILCursorDescCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_10SILManager13SILCursorDescCTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10SILManager13SILCursorDescCGMd, &_ss18_DictionaryStorageCySi10SILManager13SILCursorDescCGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized SILManifest.findBlob(from:)(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  countAndFlagsBits = getManifestDirectory()()._countAndFlagsBits;
  v7 = getFilesMatching(directoryName:predicate:)(countAndFlagsBits);

  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x2667300B0](v22))
  {
    v34 = v5;
    v35 = v3;
    v36 = v2;
    v2 = 0;
    v9 = *(v7 + 16);
    v38 = a1 & 0xFFFFFFFFFFFFFF8;
    v39 = a1;
    v37 = a1 + 32;
    v41 = v7 + 32;
    v42 = a1 & 0xC000000000000001;
    v40 = i;
    while (v42)
    {
      v11 = MEMORY[0x266730000](v2, v39);
      v12 = __OFADD__(v2++, 1);
      if (v12)
      {
        goto LABEL_25;
      }

LABEL_12:
      v43 = v11;
      v44 = v2;
      v14 = *(v11 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_blobName);
      v13 = *(v11 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_blobName + 8);

      if (!v9)
      {
LABEL_34:
        v24 = SILLogger.unsafeMutableAddressor();
        v26 = v34;
        v25 = v35;
        v27 = v36;
        (*(v35 + 16))(v34, v24, v36);

        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v48[0] = v31;
          *v30 = 136315138;
          v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, v48);

          *(v30 + 4) = v32;
          _os_log_impl(&dword_262A43000, v28, v29, "Failed to find blob %s", v30, 0xCu);
          v33 = __swift_destroy_boxed_opaque_existential_1Tm(v31);
          MEMORY[0x266730D70](v31, -1, -1, v33);
          MEMORY[0x266730D70](v30, -1, -1);
        }

        else
        {
        }

        (*(v25 + 8))(v26, v27);
        abort();
      }

      a1 = 0;
      v15 = v41;
      while (1)
      {
        if (a1 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        outlined init with copy of SILFileHandle(v15, v45);
        v16 = v46;
        v17 = v47;
        __swift_project_boxed_opaque_existential_1(v45, v46);
        v18 = (*(v17 + 24))(v16, v17);
        v19 = MEMORY[0x26672FC40](v18);

        v5 = [v19 lastPathComponent];

        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v2 = v20;

        if (v3 == v14 && v2 == v13)
        {
          break;
        }

        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v3)
        {
          goto LABEL_5;
        }

        ++a1;
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        v15 += 40;
        if (v9 == a1)
        {
          goto LABEL_34;
        }
      }

LABEL_5:

      outlined init with take of SILFileHandle(v45, v48);
      outlined init with copy of SILFileHandle(v48, v45);
      v10 = v43;
      (*((*MEMORY[0x277D85000] & *v43) + 0xC8))(v45);

      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      v2 = v44;
      if (v44 == v40)
      {
      }
    }

    if (v2 >= *(v38 + 16))
    {
      goto LABEL_26;
    }

    v11 = *(v37 + 8 * v2);
    v12 = __OFADD__(v2++, 1);
    if (!v12)
    {
      goto LABEL_12;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    if ((a1 & 0x8000000000000000) != 0)
    {
      v22 = a1;
    }

    else
    {
      v22 = a1 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void specialized static SILManifest.manifestFromPlists(plists:)(uint64_t a1)
{
  v186 = *MEMORY[0x277D85DE8];
  v165 = type metadata accessor for Logger();
  v171 = *(v165 - 8);
  v2 = MEMORY[0x28223BE20](v165);
  v152 = &v144 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v151 = &v144 - v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1 + 32;
    v173 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of SILFileHandle(v6, &v183);
      v7 = v184;
      v8 = v185;
      __swift_project_boxed_opaque_existential_1(&v183, v184);
      *&__dst = (*(v8 + 24))(v7, v8);
      *(&__dst + 1) = v9;
      v176 = 0x69617274736E6F63;
      v177 = 0xEB0000000073746ELL;
      lazy protocol witness table accessor for type String and conformance String();
      v10 = StringProtocol.contains<A>(_:)();

      if (v10)
      {
        outlined init with take of SILFileHandle(&v183, &__dst);
        v11 = v173;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v178 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1);
          v11 = v178;
        }

        v14 = *(v11 + 16);
        v13 = *(v11 + 24);
        if (v14 >= v13 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
          v11 = v178;
        }

        *(v11 + 16) = v14 + 1;
        v173 = v11;
        outlined init with take of SILFileHandle(&__dst, v11 + 40 * v14 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v183);
      }

      v6 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {
    v173 = MEMORY[0x277D84F90];
  }

  *&v183 = a1;

  v15 = specialized MutableCollection<>.sort(by:)(&v183);
  v174 = 0;
  v16 = v183;
  v17 = *(v183 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v19 = 0;
    v20 = v183 + 32;
    while (v19 < *(v16 + 16))
    {
      outlined init with copy of SILFileHandle(v20, &v183);
      v21 = v184;
      v22 = v185;
      __swift_project_boxed_opaque_existential_1(&v183, v184);
      *&__dst = (*(v22 + 24))(v21, v22);
      *(&__dst + 1) = v23;
      v176 = 0x69617274736E6F63;
      v177 = 0xEB0000000073746ELL;
      lazy protocol witness table accessor for type String and conformance String();
      v24 = StringProtocol.contains<A>(_:)();

      if (v24)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v183);
      }

      else
      {
        outlined init with take of SILFileHandle(&v183, &__dst);
        v25 = swift_isUniquelyReferenced_nonNull_native();
        v178 = v18;
        if ((v25 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1);
          v18 = v178;
        }

        v27 = v18[2];
        v26 = v18[3];
        if (v27 >= v26 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
          v18 = v178;
        }

        v18[2] = v27 + 1;
        v15 = outlined init with take of SILFileHandle(&__dst, &v18[5 * v27 + 4]);
      }

      ++v19;
      v20 += 40;
      if (v17 == v19)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

LABEL_23:
  v172 = v18;

  v28 = MobileGestalt_get_current_device();
  if (!v28)
  {
    goto LABEL_107;
  }

  v29 = v28;
  v30 = MobileGestalt_copy_productType_obj();

  if (v30)
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = v172;
  v153 = v34;
  v176 = MEMORY[0x277D84F90];
  v178 = MEMORY[0x277D84F98];
  v36 = v172[2];
  v154 = (v171 + 16);
  v155 = (v171 + 8);
  if (!v36)
  {
LABEL_86:

    v15 = v176;
    if (!(v176 >> 62))
    {
      v134 = *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_88:
      v135 = v165;
      v136 = v151;
      if (v134)
      {
        specialized MutableCollection<>.sort(by:)(&v176, type metadata accessor for SILIndicatorDesc, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
        v137 = v176;
        v138 = objc_allocWithZone(type metadata accessor for SILManifest());
        SILManifest.init(indicators:cursors:)(v137, MEMORY[0x277D84F90]);
      }

      else
      {

        v139 = SILLogger.unsafeMutableAddressor();
        (*v154)(v136, v139, v135);
        v140 = Logger.logObject.getter();
        v141 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          *v142 = 0;
          _os_log_impl(&dword_262A43000, v140, v141, "No valid manifest files provided", v142, 2u);
          MEMORY[0x266730D70](v142, -1, -1);
        }

        (*v155)(v136, v135);
      }

      return;
    }

LABEL_102:
    v143 = v15 & 0xFFFFFFFFFFFFFF8;
    if (v15 < 0)
    {
      v143 = v15;
    }

    v134 = MEMORY[0x2667300B0](v143);
    goto LABEL_88;
  }

  v147 = v32;
  v37 = 0;
  v156 = v172 + 4;
  v171 = v36;
  v150 = v36 - 1;
  v157 = 3;
  *&v31 = 136315394;
  v148 = v31;
  while (1)
  {
    v38 = &v156[5 * v37];
    v39 = v37;
    while (1)
    {
      if (v39 >= v35[2])
      {
        goto LABEL_95;
      }

      outlined init with copy of SILFileHandle(v38, &v183);
      v40 = v184;
      v41 = v185;
      __swift_project_boxed_opaque_existential_1(&v183, v184);
      v42 = (*(v41 + 24))(v40, v41);
      v43 = MEMORY[0x26672FC40](v42);
      v44 = [v43 lastPathComponent];
      if (!v44)
      {
        goto LABEL_106;
      }

      v45 = v44;

      v46 = v184;
      v47 = v185;
      __swift_project_boxed_opaque_existential_1(&v183, v184);
      v48 = v184;
      v49 = v185;
      __swift_project_boxed_opaque_existential_1(&v183, v184);
      v50 = (*(v49 + 16))(v48, v49);
      v51 = v174;
      v52 = (*(v47 + 8))(0, v50, v46, v47);
      if (v51)
      {

        goto LABEL_76;
      }

      v174 = 0;
      v53 = *(v52 + 16);
      if (v53)
      {
        if (v53 <= 0xE)
        {
          *(&__dst + 6) = 0;
          *&__dst = 0;
          BYTE14(__dst) = v53;
          memcpy(&__dst, (v52 + 32), v53);
          v54 = __dst;
          v55 = v170 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
          v170 = v55;
        }

        else
        {
          type metadata accessor for __DataStorage();
          swift_allocObject();
          if (v53 >= 0x7FFFFFFF)
          {

            v56 = __DataStorage.init(bytes:length:)();
            type metadata accessor for Data.RangeReference();
            v54 = swift_allocObject();
            *(v54 + 16) = 0;
            *(v54 + 24) = v53;

            v55 = v56 | 0x8000000000000000;
          }

          else
          {
            v54 = v53 << 32;
            v55 = __DataStorage.init(bytes:length:)() | 0x4000000000000000;
          }
        }
      }

      else
      {
        v54 = 0;
        v55 = 0xC000000000000000;
      }

      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      v57 = PropertyListDecoder.init()();
      type metadata accessor for NSString();
      v58 = NSString.init(stringLiteral:)();
      v59 = static NSObject.== infix(_:_:)();

      if ((v59 & 1) == 0)
      {
        break;
      }

      ++v39;

      outlined consume of Data._Representation(v54, v55);

      __swift_destroy_boxed_opaque_existential_1Tm(&v183);
      v38 += 40;
      v35 = v172;
      if (v171 == v39)
      {
        goto LABEL_86;
      }
    }

    type metadata accessor for IndicatorsPlist();
    lazy protocol witness table accessor for type FrameDesc and conformance FrameDesc(&lazy protocol witness table cache variable for type IndicatorsPlist and conformance IndicatorsPlist, type metadata accessor for IndicatorsPlist, &protocol conformance descriptor for IndicatorsPlist);
    v51 = v174;
    v60 = dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v51)
    {

      outlined consume of Data._Representation(v54, v55);

LABEL_76:
      v174 = 0;
      v114 = SILLogger.unsafeMutableAddressor();
      v115 = v152;
      v116 = v165;
      (*v154)(v152, v114, v165);
      outlined init with copy of SILFileHandle(&v183, &__dst);
      v117 = v51;
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v179 = v121;
        *v120 = v148;
        v122 = v51;
        v123 = v181;
        v124 = v182;
        __swift_project_boxed_opaque_existential_1(&__dst, v181);
        v125 = (*(v124 + 24))(v123, v124);
        v127 = v126;
        __swift_destroy_boxed_opaque_existential_1Tm(&__dst);
        v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, &v179);

        *(v120 + 4) = v128;
        *(v120 + 12) = 2080;
        v175 = v122;
        v129 = v122;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v130 = String.init<A>(describing:)();
        v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v131, &v179);

        *(v120 + 14) = v132;
        _os_log_impl(&dword_262A43000, v118, v119, " Failed to parse SIL Manifest file %s : %s", v120, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266730D70](v121, -1, -1);
        MEMORY[0x266730D70](v120, -1, -1);

        (*v155)(v115, v165);
      }

      else
      {

        (*v155)(v115, v116);
        __swift_destroy_boxed_opaque_existential_1Tm(&__dst);
      }

      goto LABEL_85;
    }

    v61 = __dst;
    v62 = *(*__dst + 96);
    v63 = *__dst + 96;
    v64 = v62(v60);
    v174 = &v144;
    MEMORY[0x28223BE20](v64);
    *(&v144 - 2) = &v178;
    *(&v144 - 1) = &v183;
    v66 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #4 in static SILManifest.manifestFromPlists(plists:), (&v144 - 4), v65);
    v67 = (*(*v61 + 104))(v66);
    v146 = v61;
    v145 = v62;
    v144 = v63;
    v68 = v62(v67);
    v69 = MEMORY[0x277D85000];
    if ((v68 & 0xC000000000000001) == 0)
    {
      if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v70 = *(v68 + 32);
        goto LABEL_48;
      }

      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
    }

    v70 = MEMORY[0x266730000](0, v68);
LABEL_48:
    v71 = v70;

    v73 = (*((*v69 & *v71) + 0x150))(v72);

    v162 = v54;
    v161 = v55;
    v163 = v57;
    v164 = v73;
    if (v73)
    {
      goto LABEL_49;
    }

    v109 = v153;
    if (!v153)
    {
      break;
    }

    v110 = v184;
    v111 = v185;
    __swift_project_boxed_opaque_existential_1(&v183, v184);
    v174 = *(v111 + 24);

    v112 = (v174)(v110, v111);
    v164 = specialized static SILManifest.constraintFileFromIndicatorFile(deviceType:indicatorFileName:constraintFiles:)(v147, v109, v112, v113, v173);

    v54 = v162;
    v55 = v161;
LABEL_49:
    v74 = (*(*v146 + 112))(&__dst);
    specialized MutableCollection<>.sort(by:)(v75, type metadata accessor for SILIndicatorDesc, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
    v174 = 0;
    v76 = v74(&__dst, 0);
    v15 = v145(v76);
    v77 = v15;
    if (v15 >> 62)
    {
      if (v15 >= 0)
      {
        v15 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v15 = MEMORY[0x2667300B0](v15);
      v78 = v15;
      if (v15)
      {
LABEL_51:
        v79 = 0;
        v160 = v77 & 0xC000000000000001;
        v149 = v77 & 0xFFFFFFFFFFFFFF8;
        v159 = v77;
        v158 = v78;
        do
        {
          if (v160)
          {
            v80 = v79;
            v15 = MEMORY[0x266730000](v79, v77);
            v81 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              goto LABEL_96;
            }
          }

          else
          {
            if (v79 >= *(v149 + 16))
            {
              goto LABEL_100;
            }

            v80 = v79;
            v15 = *(v77 + 8 * v79 + 32);
            v81 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              goto LABEL_96;
            }
          }

          v168 = v80;
          v82 = *((*v69 & *v15) + 0xA8);
          v83 = v15;
          v84 = v15;
          v85 = v82();
          v167 = v81;
          v166 = v83;
          if (v85 == -1)
          {
            v86 = v157;
            v15 = (*((*v69 & *v84) + 0xB0))(v157);
            v157 = v86 + 1;
            if (__OFADD__(v86, 1))
            {
              goto LABEL_101;
            }
          }

          v88 = *(v84 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name);
          v87 = *(v84 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name + 8);

          v169 = (v82)(v89);
          v90 = swift_isUniquelyReferenced_nonNull_native();
          v91 = v178;
          *&__dst = v178;
          v93 = specialized __RawDictionaryStorage.find<A>(_:)(v88, v87);
          v94 = v91[2];
          v95 = (v92 & 1) == 0;
          v15 = v94 + v95;
          if (__OFADD__(v94, v95))
          {
            goto LABEL_97;
          }

          v51 = v92;
          if (v91[3] >= v15)
          {
            if ((v90 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v90);
            v15 = specialized __RawDictionaryStorage.find<A>(_:)(v88, v87);
            if ((v51 & 1) != (v96 & 1))
            {
              goto LABEL_109;
            }

            v93 = v15;
          }

          if (v51)
          {

            v97 = __dst;
            *(*(__dst + 56) + 8 * v93) = v169;
          }

          else
          {
            v97 = __dst;
            *(__dst + 8 * (v93 >> 6) + 64) |= 1 << v93;
            v98 = (v97[6] + 16 * v93);
            *v98 = v88;
            v98[1] = v87;
            *(v97[7] + 8 * v93) = v169;
            v99 = v97[2];
            v100 = __OFADD__(v99, 1);
            v101 = v99 + 1;
            if (v100)
            {
              goto LABEL_99;
            }

            v97[2] = v101;
          }

          v178 = v97;
          v15 = type metadata accessor for SILIndicatorValidator();
          v102 = *(v84 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesCount);
          v69 = MEMORY[0x277D85000];
          if (HIWORD(v102))
          {
            goto LABEL_98;
          }

          v103 = *(v84 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_flipbook);
          v104 = v103;
          v105 = v164;

          v106 = SILIndicatorValidator.__allocating_init(framesCount:constraints:flipbook:)(v102, v105, v103);
          (*((*v69 & *v84) + 0x140))(v106);

          v79 = v168 + 1;
          v54 = v162;
          v55 = v161;
          v77 = v159;
        }

        while (v167 != v158);

        v108 = v105;
        goto LABEL_84;
      }
    }

    else
    {
      v78 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v78)
      {
        goto LABEL_51;
      }
    }

    v108 = v164;
LABEL_84:
    v133 = v145(v107);
    specialized Array.append<A>(contentsOf:)(v133);

    outlined consume of Data._Representation(v54, v55);

LABEL_85:
    v35 = v172;
    __swift_destroy_boxed_opaque_existential_1Tm(&v183);
    v37 = v39 + 1;
    if (v150 == v39)
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_109:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
}

void *_sSa9repeating5countSayxGx_SitcfC10SILManager9FrameDescC_Tt1g5Tf4gn_n(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    type metadata accessor for FrameDesc();
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    *(v5 + 16) = a2;
    *(v5 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v5 + 40);
      do
      {
        *v7++ = v3;
        v8 = v3;
        --v6;
      }

      while (v6);
    }

    v9 = v3;
    return v4;
  }

  return result;
}

void specialized static SILManifest.validateFlipBookStates(_:)(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v78 = v6;
  v79 = v2;
  v80 = v7;
  while (v5)
  {
    v10 = v9;
LABEL_11:
    v81 = v10;
    v11 = *(*(v1 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v5)))));
    v82 = (v5 - 1) & v5;
    v12 = v11 + 64;
    v13 = 1 << *(v11 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v11 + 64);
    v16 = (v13 + 63) >> 6;
    v85 = v11;
    swift_bridgeObjectRetain_n();
    v17 = 0;
    v83 = v16;
    v84 = v12;
LABEL_16:
    if (v15)
    {
      v18 = v17;
LABEL_21:
      v19 = *(*(v85 + 56) + ((v18 << 9) | (8 * __clz(__rbit64(v15)))));
      v15 &= v15 - 1;
      v20 = v19 + 64;
      v21 = 1 << *(v19 + 32);
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v23 = v22 & *(v19 + 64);
      v24 = (v21 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v25 = 0;
      v86 = v19;
      if (!v23)
      {
LABEL_25:
        while (1)
        {
          v26 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v26 >= v24)
          {

            v17 = v18;
            v16 = v83;
            v12 = v84;
            goto LABEL_16;
          }

          v23 = *(v20 + 8 * v26);
          ++v25;
          if (v23)
          {
            v25 = v26;
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:

LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

LABEL_29:
      while (2)
      {
        v27 = __clz(__rbit64(v23)) | (v25 << 6);
        v28 = *(*(v19 + 56) + 8 * v27);
        v29 = *(v28 + 16);
        if (!v29)
        {
          goto LABEL_117;
        }

        v30 = *(v28 + 32);
        v31 = v29 - 1;
        if (v29 != 1)
        {
          if (v29 > 4)
          {
            v32 = v31 & 0xFFFFFFFFFFFFFFFCLL | 1;
            v33 = vdupq_n_s64(v30);
            v34 = (v28 + 56);
            v35 = v31 & 0xFFFFFFFFFFFFFFFCLL;
            v36 = v33;
            do
            {
              v33 = vbslq_s8(vcgtq_s64(v33, v34[-1]), v33, v34[-1]);
              v36 = vbslq_s8(vcgtq_s64(v36, *v34), v36, *v34);
              v34 += 2;
              v35 -= 4;
            }

            while (v35);
            v37 = vbslq_s8(vcgtq_s64(v33, v36), v33, v36);
            v38 = vextq_s8(v37, v37, 8uLL).u64[0];
            v30 = vbsl_s8(vcgtd_s64(v37.i64[0], v38), *v37.i8, v38);
            if (v31 != (v31 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_36;
            }
          }

          else
          {
            v32 = 1;
LABEL_36:
            v39 = v29 - v32;
            v40 = (v28 + 8 * v32 + 32);
            do
            {
              v42 = *v40++;
              v41 = v42;
              if (v30 <= v42)
              {
                v30 = v41;
              }

              --v39;
            }

            while (v39);
          }
        }

        v43 = (*(v19 + 48) + 16 * v27);
        v45 = *v43;
        v44 = v43[1];
        if (v30 <= v8)
        {
          v46 = v8;
        }

        else
        {
          v46 = v30;
        }

        v47 = HIBYTE(v44) & 0xF;
        v48 = v45 & 0xFFFFFFFFFFFFLL;
        if ((v44 & 0x2000000000000000) != 0)
        {
          v49 = HIBYTE(v44) & 0xF;
        }

        else
        {
          v49 = v45 & 0xFFFFFFFFFFFFLL;
        }

        if (!v49)
        {
          goto LABEL_118;
        }

        v87 = v46;
        if ((v44 & 0x1000000000000000) == 0)
        {
          if ((v44 & 0x2000000000000000) != 0)
          {
            v88[0] = v45;
            v88[1] = v44 & 0xFFFFFFFFFFFFFFLL;
            if (v45 == 43)
            {
              if (!v47)
              {
                goto LABEL_124;
              }

              if (--v47)
              {
                v52 = 0;
                v62 = v88 + 1;
                while (1)
                {
                  v63 = *v62 - 48;
                  if (v63 > 9)
                  {
                    break;
                  }

                  v64 = 10 * v52;
                  if ((v52 * 10) >> 64 != (10 * v52) >> 63)
                  {
                    break;
                  }

                  v52 = v64 + v63;
                  if (__OFADD__(v64, v63))
                  {
                    break;
                  }

                  ++v62;
                  if (!--v47)
                  {
                    goto LABEL_104;
                  }
                }
              }
            }

            else if (v45 == 45)
            {
              if (!v47)
              {
                goto LABEL_122;
              }

              if (--v47)
              {
                v52 = 0;
                v56 = v88 + 1;
                while (1)
                {
                  v57 = *v56 - 48;
                  if (v57 > 9)
                  {
                    break;
                  }

                  v58 = 10 * v52;
                  if ((v52 * 10) >> 64 != (10 * v52) >> 63)
                  {
                    break;
                  }

                  v52 = v58 - v57;
                  if (__OFSUB__(v58, v57))
                  {
                    break;
                  }

                  ++v56;
                  if (!--v47)
                  {
                    goto LABEL_104;
                  }
                }
              }
            }

            else if (v47)
            {
              v52 = 0;
              v67 = v88;
              while (1)
              {
                v68 = *v67 - 48;
                if (v68 > 9)
                {
                  break;
                }

                v69 = 10 * v52;
                if ((v52 * 10) >> 64 != (10 * v52) >> 63)
                {
                  break;
                }

                v52 = v69 + v68;
                if (__OFADD__(v69, v68))
                {
                  break;
                }

                ++v67;
                if (!--v47)
                {
                  goto LABEL_104;
                }
              }
            }
          }

          else
          {
            if ((v45 & 0x1000000000000000) != 0)
            {
              v50 = ((v44 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v50 = _StringObject.sharedUTF8.getter();
            }

            v51 = *v50;
            if (v51 == 43)
            {
              if (v48 < 1)
              {
                goto LABEL_121;
              }

              v47 = v48 - 1;
              if (v48 != 1)
              {
                v52 = 0;
                if (!v50)
                {
                  goto LABEL_95;
                }

                v59 = v50 + 1;
                while (1)
                {
                  v60 = *v59 - 48;
                  if (v60 > 9)
                  {
                    break;
                  }

                  v61 = 10 * v52;
                  if ((v52 * 10) >> 64 != (10 * v52) >> 63)
                  {
                    break;
                  }

                  v52 = v61 + v60;
                  if (__OFADD__(v61, v60))
                  {
                    break;
                  }

                  ++v59;
                  if (!--v47)
                  {
                    goto LABEL_104;
                  }
                }
              }
            }

            else if (v51 == 45)
            {
              if (v48 < 1)
              {
                goto LABEL_123;
              }

              v47 = v48 - 1;
              if (v48 != 1)
              {
                v52 = 0;
                if (v50)
                {
                  v53 = v50 + 1;
                  while (1)
                  {
                    v54 = *v53 - 48;
                    if (v54 > 9)
                    {
                      goto LABEL_103;
                    }

                    v55 = 10 * v52;
                    if ((v52 * 10) >> 64 != (10 * v52) >> 63)
                    {
                      goto LABEL_103;
                    }

                    v52 = v55 - v54;
                    if (__OFSUB__(v55, v54))
                    {
                      goto LABEL_103;
                    }

                    ++v53;
                    if (!--v47)
                    {
                      goto LABEL_104;
                    }
                  }
                }

LABEL_95:
                LOBYTE(v47) = 0;
LABEL_104:
                v89 = v47;
                v70 = v47;

                if (v70)
                {
                  goto LABEL_119;
                }

LABEL_105:
                v23 &= v23 - 1;

                v19 = v86;
                if (v52 <= v87)
                {
                  v8 = v87;
                }

                else
                {
                  v8 = v52;
                }

                if (!v23)
                {
                  goto LABEL_25;
                }

                continue;
              }
            }

            else
            {
              if (!v48)
              {
                goto LABEL_103;
              }

              v52 = 0;
              if (!v50)
              {
                goto LABEL_95;
              }

              while (1)
              {
                v65 = *v50 - 48;
                if (v65 > 9)
                {
                  break;
                }

                v66 = 10 * v52;
                if ((v52 * 10) >> 64 != (10 * v52) >> 63)
                {
                  break;
                }

                v52 = v66 + v65;
                if (__OFADD__(v66, v65))
                {
                  break;
                }

                ++v50;
                if (!--v48)
                {
                  goto LABEL_95;
                }
              }
            }
          }

LABEL_103:
          v52 = 0;
          LOBYTE(v47) = 1;
          goto LABEL_104;
        }

        break;
      }

      swift_bridgeObjectRetain_n();

      v52 = specialized _parseInteger<A, B>(ascii:radix:)(v45, v44, 10);
      v72 = v71;

      if (v72)
      {
        goto LABEL_119;
      }

      goto LABEL_105;
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_116;
      }

      if (v18 >= v16)
      {
        break;
      }

      v15 = *(v12 + 8 * v18);
      ++v17;
      if (v15)
      {
        goto LABEL_21;
      }
    }

    v1 = v80;
    v9 = v81;
    v6 = v78;
    v2 = v79;
    v5 = v82;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      v73 = [objc_allocWithZone(type metadata accessor for FrameDesc()) init];
      if (__OFADD__(v8, 1))
      {
        goto LABEL_125;
      }

      v74 = v73;
      v75 = _sSa9repeating5countSayxGx_SitcfC10SILManager9FrameDescC_Tt1g5Tf4gn_n(v73, (v8 + 1));

      v76 = objc_allocWithZone(type metadata accessor for SILFlipBookDesc());

      SILFlipBookDesc.init(_:_:)(v75, v1);

      return;
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      goto LABEL_11;
    }
  }

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
}

unint64_t lazy protocol witness table accessor for type PlistCodingKeys and conformance PlistCodingKeys()
{
  result = lazy protocol witness table cache variable for type PlistCodingKeys and conformance PlistCodingKeys;
  if (!lazy protocol witness table cache variable for type PlistCodingKeys and conformance PlistCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlistCodingKeys and conformance PlistCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlistCodingKeys and conformance PlistCodingKeys;
  if (!lazy protocol witness table cache variable for type PlistCodingKeys and conformance PlistCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlistCodingKeys and conformance PlistCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlistCodingKeys and conformance PlistCodingKeys;
  if (!lazy protocol witness table cache variable for type PlistCodingKeys and conformance PlistCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlistCodingKeys and conformance PlistCodingKeys);
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t lazy protocol witness table accessor for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FrameDesc.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FrameDesc.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FallbackInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FallbackInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 18) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SILConstraints.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SILConstraints.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SILAssetDesc.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SILAssetDesc.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SILCursorDesc.CursorCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SILCursorDesc.CursorCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PlistCodingKeys(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for PlistCodingKeys(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy28_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SILFrameDesc(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 28))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SILFrameDesc(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CursorsPlist.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CursorsPlist.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SILIndicatorDesc.IndicatorCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SILIndicatorDesc.IndicatorCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined init with take of SILFileHandle(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSString);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SILIndicatorDesc] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SILIndicatorDesc] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SILIndicatorDesc] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10SILManager16SILIndicatorDescCGMd, &_sSay10SILManager16SILIndicatorDescCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SILIndicatorDesc] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type FrameDesc and conformance FrameDesc(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
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

unint64_t resolvedManifestDirectory()()
{
  v0 = 0xD000000000000073;
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = specialized static SimulatorFileHandle.getFilesMatching(directoryName:predicate:)(0xD000000000000073, 0x8000000262A9F190)[2];

  v9 = SILLogger.unsafeMutableAddressor();
  v10 = *(v2 + 16);
  if (v8)
  {
    v10(v7, v9, v1);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000073, 0x8000000262A9F190, &v23);
      _os_log_impl(&dword_262A43000, v11, v12, "Loading assets from default path : %s", v13, 0xCu);
      v15 = __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x266730D70](v14, -1, -1, v15);
      MEMORY[0x266730D70](v13, -1, -1);
    }

    (*(v2 + 8))(v7, v1);
  }

  else
  {
    v10(v5, v9, v1);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23 = v19;
      *v18 = 136315138;
      v0 = 0xD000000000000085;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x8000000262A9F210, &v23);
      _os_log_impl(&dword_262A43000, v16, v17, "Loading assets from fallback path : %s", v18, 0xCu);
      v20 = __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x266730D70](v19, -1, -1, v20);
      MEMORY[0x266730D70](v18, -1, -1);

      (*(v2 + 8))(v5, v1);
    }

    else
    {

      (*(v2 + 8))(v5, v1);
      return 0xD000000000000085;
    }
  }

  return v0;
}

Swift::String __swiftcall getManifestDirectory()()
{
  if (one-time initialization token for manifestDirectory != -1)
  {
    swift_once();
  }

  v0 = static manifestDirectory in UselessSwiftSyntax #1 in getManifestDirectory();
  v1 = static manifestDirectory in UselessSwiftSyntax #1 in getManifestDirectory();

  v2 = v0;
  v3 = v1;
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

char **SimulatorFileHandle.init(directoryName:fileName:)(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v47 = *v5;
  v10 = type metadata accessor for Logger();
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x28223BE20](v10);
  v50 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v47 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v47 - v20;
  v54 = a1;
  v55 = a2;

  MEMORY[0x26672FCC0](a3, a4);

  v22 = v54;
  v23 = v55;
  (*(v16 + 56))(v14, 1, 1, v15);
  String.utf8CString.getter();
  URL.init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:)();
  outlined destroy of URL?(v14);

  type metadata accessor for NSFileHandle();
  v48 = v16;
  v49 = v15;
  (*(v16 + 16))(v19, v21, v15);
  v24 = @nonobjc NSFileHandle.__allocating_init(forReadingFrom:)(v19);
  v5[2] = v24;
  v25 = v24;
  NSFileHandle.seekToEnd()();
  v27 = v26;
  if (v26)
  {

LABEL_5:

    v31 = SILLogger.unsafeMutableAddressor();
    v33 = v50;
    v32 = v51;
    (*(v51 + 16))(v50, v31, v52);
    v34 = v27;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v54 = v38;
      *v37 = 136315138;
      v53 = v27;
      v39 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v40 = String.init<A>(describing:)();
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v54);
      v47 = v21;
      v43 = v42;

      *(v37 + 4) = v43;
      _os_log_impl(&dword_262A43000, v35, v36, "Failed to parse manifest: %s", v37, 0xCu);
      v44 = __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x266730D70](v38, -1, -1, v44);
      MEMORY[0x266730D70](v37, -1, -1);

      (*(v51 + 8))(v50, v52);
      (*(v48 + 8))(v47, v49);
    }

    else
    {

      (*(v32 + 8))(v33, v52);
      (*(v48 + 8))(v21, v49);
    }

    swift_deallocPartialClassInstance();
    return 0;
  }

  v28 = v5[2];
  v29 = NSFileHandle.offset()();
  if (v30)
  {
    v27 = v30;

    goto LABEL_5;
  }

  v46 = v29;

  result = (*(v48 + 8))(v21, v49);
  if ((v46 & 0x8000000000000000) == 0)
  {
    v5[3] = v46;
    v5[4] = v22;
    v5[5] = v23;
    return v5;
  }

  __break(1u);
  return result;
}

id @nonobjc NSFileHandle.__allocating_init(forReadingFrom:)(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  URL._bridgeToObjectiveC()(v13);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

uint64_t SimulatorFileHandle.read(offset:size:)(uint64_t a1, size_t a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v10 = *(v2 + 16);
  v23[0] = 0;
  if (![v10 seekToOffset:a1 error:v23])
  {
    v19 = v23[0];
    _convertNSErrorToError(_:)();

LABEL_9:
    swift_willThrow();
    return v6;
  }

  v11 = v23[0];
  v12 = NSFileHandle.read(upToCount:)();
  if (!v3)
  {
    if (v13 >> 60 == 15)
    {
      v14 = SILLogger.unsafeMutableAddressor();
      (*(v7 + 16))(v9, v14, v6);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134218240;
        *(v17 + 4) = a1;
        *(v17 + 12) = 2048;
        *(v17 + 14) = a2;
        _os_log_impl(&dword_262A43000, v15, v16, "Reading return from offset %ld and size %ld returned nil", v17, 0x16u);
        MEMORY[0x266730D70](v17, -1, -1);
      }

      (*(v7 + 8))(v9, v6);
      lazy protocol witness table accessor for type SILError and conformance SILError();
      swift_allocError();
      *v18 = 22;
      goto LABEL_9;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      v21 = v13;
      v22 = v12;
      if (a2)
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = a2;
        bzero((v6 + 32), a2);
      }

      else
      {
        v6 = MEMORY[0x277D84F90];
      }

      Data.copyBytes(to:count:)();
      outlined consume of Data?(v22, v21);

      return v6;
    }

LABEL_17:
    __break(1u);
  }

  return v6;
}

uint64_t SimulatorFileHandle.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t protocol witness for SILFileHandle.name.getter in conformance SimulatorFileHandle()
{
  v1 = *(*v0 + 32);

  return v1;
}

unint64_t one-time initialization function for manifestDirectory()
{
  result = resolvedManifestDirectory()();
  static manifestDirectory in UselessSwiftSyntax #1 in getManifestDirectory() = result;
  static manifestDirectory in UselessSwiftSyntax #1 in getManifestDirectory() = v1;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized static SimulatorFileHandle.getFilesMatching(directoryName:predicate:)(void *a1, char *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  v58 = a1;
  v9 = MEMORY[0x26672FC40](a1, a2);
  *&v60 = 0;
  v57 = v8;
  v10 = [v8 contentsOfDirectoryAtPath:v9 error:&v60];

  v11 = v60;
  if (v10)
  {
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v11;

    v14 = *(v12 + 16);
    if (v14)
    {
      v15 = 0;
      v56 = (v14 - 1);
      v16 = MEMORY[0x277D84F90];
      do
      {
        v17 = (v12 + 40 + 16 * v15);
        v18 = v15;
        while (1)
        {
          if (v18 >= *(v12 + 16))
          {
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
          }

          v20 = *(v17 - 1);
          v19 = *v17;
          v15 = v18 + 1;

          v21._countAndFlagsBits = 1852400174;
          v21._object = 0xE400000000000000;
          if (String.hasSuffix(_:)(v21))
          {
            break;
          }

          v17 += 2;
          v18 = (v18 + 1);
          if (v14 == v15)
          {
            goto LABEL_19;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v60 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1);
          v16 = v60;
        }

        v23 = v16;
        v24 = *(v16 + 16);
        v25 = *(v23 + 24);
        v26 = v24 + 1;
        if (v24 >= v25 >> 1)
        {
          v55 = v24 + 1;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v24 + 1, 1);
          v26 = v55;
          v23 = v60;
        }

        *(v23 + 16) = v26;
        v27 = v23 + 16 * v24;
        *(v27 + 32) = v20;
        *(v27 + 40) = v19;
        v16 = v23;
      }

      while (v56 != v18);
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

LABEL_19:

    v42 = *(v16 + 16);

    if (v42)
    {
      v43 = 0;
      v44 = v16 + 40;
      v41 = MEMORY[0x277D84F90];
      v55 = v16;
      do
      {
        v56 = v41;
        v45 = (v44 + 16 * v43);
        v46 = v43;
        while (1)
        {
          if (v46 >= v42)
          {
            goto LABEL_37;
          }

          v43 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_38;
          }

          v47 = *(v45 - 1);
          v48 = *v45;
          v49 = type metadata accessor for SimulatorFileHandle();
          swift_allocObject();
          swift_bridgeObjectRetain_n();

          v50 = SimulatorFileHandle.init(directoryName:fileName:)(v58, a2, v47, v48);
          if (v50)
          {
            break;
          }

          ++v46;
          v45 += 2;
          if (v43 == v42)
          {
            v41 = v56;
            goto LABEL_34;
          }
        }

        v51 = v50;
        v41 = v56;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41[2] + 1, 1, v41);
        }

        v53 = v41[2];
        v52 = v41[3];
        if (v53 >= v52 >> 1)
        {
          v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v41);
        }

        v61 = v49;
        v62 = &protocol witness table for SimulatorFileHandle;
        *&v60 = v51;
        v41[2] = v53 + 1;
        outlined init with take of SILFileHandle(&v60, &v41[5 * v53 + 4]);
      }

      while (v43 != v42);
    }

    else
    {
      v41 = MEMORY[0x277D84F90];
    }

LABEL_34:
  }

  else
  {
    v28 = v60;
    v29 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v30 = SILLogger.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v30, v4);
    v31 = v29;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v60 = v35;
      *v34 = 136315138;
      v59 = v29;
      v36 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v37 = String.init<A>(describing:)();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v60);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_262A43000, v32, v33, "Cannot read directory: %s", v34, 0xCu);
      v40 = __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x266730D70](v35, -1, -1, v40);
      MEMORY[0x266730D70](v34, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return MEMORY[0x277D84F90];
  }

  return v41;
}

void *specialized static SimulatorFileHandle.getFilesMatching(directoryName:predicate:)(void *a1, char *a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t a4)
{
  v62 = a4;
  v67 = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  v61 = a1;
  v12 = MEMORY[0x26672FC40](a1, a2);
  *&v64 = 0;
  v59 = v11;
  v13 = [v11 contentsOfDirectoryAtPath:v12 error:&v64];

  v14 = v64;
  if (v13)
  {
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v14;

    v17 = *(v15 + 16);
    if (v17)
    {
      v18 = 0;
      v19 = v15 + 40;
      v57 = v17 - 1;
      v20 = MEMORY[0x277D84F90];
      v58 = v15 + 40;
      do
      {
        v60 = v20;
        v21 = (v19 + 16 * v18);
        v22 = v18;
        while (1)
        {
          if (v22 >= *(v15 + 16))
          {
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
          }

          v24 = *(v21 - 1);
          v23 = *v21;
          v18 = v22 + 1;

          if (a3(v24, v23))
          {
            break;
          }

          v21 += 2;
          ++v22;
          if (v17 == v18)
          {
            v20 = v60;
            goto LABEL_19;
          }
        }

        v20 = v60;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v64 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1);
          v20 = v64;
        }

        v27 = *(v20 + 16);
        v26 = *(v20 + 24);
        v28 = v27 + 1;
        if (v27 >= v26 >> 1)
        {
          v60 = v27 + 1;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
          v28 = v60;
          v20 = v64;
        }

        *(v20 + 16) = v28;
        v29 = v20 + 16 * v27;
        *(v29 + 32) = v24;
        *(v29 + 40) = v23;
        v19 = v58;
      }

      while (v57 != v22);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

LABEL_19:

    v44 = *(v20 + 16);

    v60 = v20;
    if (v44)
    {
      v45 = 0;
      v46 = v20 + 40;
      v43 = MEMORY[0x277D84F90];
      v62 = v20 + 40;
      do
      {
        v47 = (v46 + 16 * v45);
        v48 = v45;
        while (1)
        {
          if (v48 >= v44)
          {
            goto LABEL_37;
          }

          v45 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_38;
          }

          v49 = *(v47 - 1);
          v50 = *v47;
          v51 = type metadata accessor for SimulatorFileHandle();
          swift_allocObject();
          swift_bridgeObjectRetain_n();

          v52 = SimulatorFileHandle.init(directoryName:fileName:)(v61, a2, v49, v50);
          if (v52)
          {
            break;
          }

          ++v48;
          v47 += 2;
          if (v45 == v44)
          {
            goto LABEL_34;
          }
        }

        v53 = v52;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43[2] + 1, 1, v43);
        }

        v46 = v62;
        v55 = v43[2];
        v54 = v43[3];
        if (v55 >= v54 >> 1)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v43);
        }

        v65 = v51;
        v66 = &protocol witness table for SimulatorFileHandle;
        *&v64 = v53;
        v43[2] = v55 + 1;
        outlined init with take of SILFileHandle(&v64, &v43[5 * v55 + 4]);
      }

      while (v45 != v44);
    }

    else
    {
      v43 = MEMORY[0x277D84F90];
    }

LABEL_34:
  }

  else
  {
    v30 = v64;
    v31 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v32 = SILLogger.unsafeMutableAddressor();
    (*(v8 + 16))(v10, v32, v7);
    v33 = v31;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v64 = v37;
      *v36 = 136315138;
      v63 = v31;
      v38 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v39 = String.init<A>(describing:)();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v64);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_262A43000, v34, v35, "Cannot read directory: %s", v36, 0xCu);
      v42 = __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x266730D70](v37, -1, -1, v42);
      MEMORY[0x266730D70](v36, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    return MEMORY[0x277D84F90];
  }

  return v43;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for NSFileHandle()
{
  result = lazy cache variable for type metadata for NSFileHandle;
  if (!lazy cache variable for type metadata for NSFileHandle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSFileHandle);
  }

  return result;
}

double outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LogType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LogType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 + 1);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LogType@<X0>(Swift::UInt8 *a1@<X0>, SILManager::LogType_optional *a2@<X8>)
{
  result = specialized LogType.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t LogModule.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6165627468676954;
  v2 = 0x6E6F6D6D6F43;
  if (a1 != 6)
  {
    v2 = 0x69746164696C6156;
  }

  v3 = 0x65646E65524C4953;
  if (a1 != 4)
  {
    v3 = 0x646E656B636142;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x6361667275535845;
  if (a1 != 2)
  {
    v4 = 0x6F4C617461445845;
  }

  if (a1)
  {
    v1 = 0x616C707369445845;
  }

  if (a1 <= 1u)
  {
    v5 = v1;
  }

  else
  {
    v5 = v4;
  }

  if (a1 <= 3u)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LogModule@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized LogModule.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LogModule@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6165627468676954;
  v4 = 0xE600000000000000;
  v5 = 0x6E6F6D6D6F43;
  if (v2 != 6)
  {
    v5 = 0x69746164696C6156;
    v4 = 0xEA00000000006E6FLL;
  }

  v6 = 0xEB00000000726572;
  v7 = 0x65646E65524C4953;
  result = 0x646E656B636142;
  if (v2 != 4)
  {
    v7 = 0x646E656B636142;
    v6 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v9 = 0x6361667275535845;
  v10 = 0xEC00000072656461;
  if (v2 == 2)
  {
    v10 = 0xE900000000000065;
  }

  else
  {
    v9 = 0x6F4C617461445845;
  }

  v11 = 0xE900000000000079;
  if (*v1)
  {
    v3 = 0x616C707369445845;
  }

  else
  {
    v11 = 0xE90000000000006DLL;
  }

  if (*v1 <= 1u)
  {
    v12 = v3;
  }

  else
  {
    v12 = v9;
  }

  if (*v1 <= 1u)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  if (*v1 <= 3u)
  {
    v14 = v12;
  }

  else
  {
    v14 = v5;
  }

  if (*v1 <= 3u)
  {
    v15 = v13;
  }

  else
  {
    v15 = v4;
  }

  *a1 = v14;
  a1[1] = v15;
  return result;
}