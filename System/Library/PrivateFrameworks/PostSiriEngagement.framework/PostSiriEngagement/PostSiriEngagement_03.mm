uint64_t PostSiriEngagementMetricsCollector.fetchDonatedEvents(biomeFetcherConfiguration:completion:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(type metadata accessor for PSEBiomeFetchConfiguration(0) + 20);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  specialized static PSEBiomeEventsSourceFetcher.fetchDonatedEvents(startDate:endDate:completion:)(a1, &a1[v6], partial apply for closure #1 in PostSiriEngagementMetricsCollector.fetchDonatedEvents(biomeFetcherConfiguration:completion:), v7);
}

uint64_t PostSiriEngagementMetricsCollector.fetchSiriExecutionEvents(biomeFetcherConfiguration:)(uint64_t a1)
{
  v2 = a1 + *(type metadata accessor for PSEBiomeFetchConfiguration(0) + 20);

  return specialized static PSEBiomeEventsSourceFetcher.fetchSiriExecutionEvents(startDate:endDate:)(a1, v2);
}

uint64_t PostSiriEngagementMetricsCollector.__ivar_destroyer()
{
}

void *PostSiriEngagementMetricsCollector.deinit()
{

  return v0;
}

uint64_t PostSiriEngagementMetricsCollector.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, a2, a3);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *(type metadata accessor for SiriUISession(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SiriExecutionTask(0);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v98 = a1;
  v110 = type metadata accessor for SiriUISession(0);
  v106 = *(v110 - 8);
  v9 = MEMORY[0x28223BE20](v110);
  v100 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v109 = &v95 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v95 - v14;
  result = MEMORY[0x28223BE20](v13);
  v18 = &v95 - v17;
  v108 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v98;
    if (!*v98)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v111 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v108)
      {
        v91 = *(result + 16 * a4);
        v92 = result;
        v93 = *(result + 16 * (a4 - 1) + 40);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v108 + *(v106 + 72) * v91, *v108 + *(v106 + 72) * *(result + 16 * (a4 - 1) + 32), *v108 + *(v106 + 72) * v93, v5);
        if (v6)
        {
        }

        if (v93 < v91)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = specialized _ArrayBuffer._consumeAndCreateNew()(v92);
        }

        if (a4 - 2 >= *(v92 + 2))
        {
          goto LABEL_123;
        }

        v94 = &v92[16 * a4];
        *v94 = v91;
        *(v94 + 1) = v93;
        v111 = v92;
        specialized Array.remove(at:)(a4 - 1);
        result = v111;
        a4 = *(v111 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v97 = a4;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v101 = v21;
    if (v23 >= v19)
    {
      v29 = v23;
    }

    else
    {
      v24 = *v108;
      v104 = v24;
      v25 = *(v106 + 72);
      v5 = v24 + v25 * v23;
      outlined init with copy of SiriUISession(v5, v18);
      outlined init with copy of SiriUISession(v24 + v25 * v22, v15);
      LODWORD(v105) = static Date.< infix(_:_:)();
      outlined destroy of SiriUISession(v15, type metadata accessor for SiriUISession);
      result = outlined destroy of SiriUISession(v18, type metadata accessor for SiriUISession);
      v96 = v22;
      v26 = v22 + 2;
      v107 = v25;
      v27 = v104 + v25 * (v22 + 2);
      while (v19 != v26)
      {
        outlined init with copy of SiriUISession(v27, v18);
        outlined init with copy of SiriUISession(v5, v15);
        v28 = static Date.< infix(_:_:)() & 1;
        outlined destroy of SiriUISession(v15, type metadata accessor for SiriUISession);
        result = outlined destroy of SiriUISession(v18, type metadata accessor for SiriUISession);
        ++v26;
        v27 += v107;
        v5 += v107;
        if ((v105 & 1) != v28)
        {
          v29 = v26 - 1;
          goto LABEL_11;
        }
      }

      v29 = v19;
LABEL_11:
      v22 = v96;
      a4 = v97;
      if (v105)
      {
        if (v29 < v96)
        {
          goto LABEL_126;
        }

        if (v96 < v29)
        {
          v95 = v6;
          v30 = v107 * (v29 - 1);
          v31 = v29 * v107;
          v105 = v29;
          v32 = v29;
          v33 = v96;
          v34 = v96 * v107;
          do
          {
            if (v33 != --v32)
            {
              v35 = *v108;
              if (!*v108)
              {
                goto LABEL_132;
              }

              v5 = v35 + v34;
              outlined init with take of SiriUISession(v35 + v34, v100);
              if (v34 < v30 || v5 >= v35 + v31)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v34 != v30)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = outlined init with take of SiriUISession(v100, v35 + v30);
            }

            ++v33;
            v30 -= v107;
            v31 -= v107;
            v34 += v107;
          }

          while (v33 < v32);
          v6 = v95;
          v22 = v96;
          a4 = v97;
          v29 = v105;
        }
      }
    }

    v36 = v108[1];
    if (v29 < v36)
    {
      if (__OFSUB__(v29, v22))
      {
        goto LABEL_125;
      }

      if (v29 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_127;
        }

        if ((v22 + a4) >= v36)
        {
          v37 = v108[1];
        }

        else
        {
          v37 = v22 + a4;
        }

        if (v37 < v22)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v29 != v37)
        {
          break;
        }
      }
    }

    v38 = v29;
    if (v29 < v22)
    {
      goto LABEL_124;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v101;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v101 + 2) + 1, 1, v101);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v39 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v39 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v40 = &v21[16 * a4];
    *(v40 + 4) = v22;
    *(v40 + 5) = v38;
    v41 = *v98;
    if (!*v98)
    {
      goto LABEL_134;
    }

    v102 = v38;
    if (a4)
    {
      while (1)
      {
        v42 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v43 = *(v21 + 4);
          v44 = *(v21 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_54:
          if (v46)
          {
            goto LABEL_113;
          }

          v59 = &v21[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_116;
          }

          v65 = &v21[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_120;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v69 = &v21[16 * v5];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_68:
        if (v64)
        {
          goto LABEL_115;
        }

        v72 = &v21[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_118;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v42 - 1;
        if (v42 - 1 >= v5)
        {
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
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v108)
        {
          goto LABEL_131;
        }

        v80 = v21;
        v81 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v42 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v108 + *(v106 + 72) * v81, *v108 + *(v106 + 72) * *&v21[16 * v42 + 32], *v108 + *(v106 + 72) * v5, v41);
        if (v6)
        {
        }

        if (v5 < v81)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = specialized _ArrayBuffer._consumeAndCreateNew()(v80);
        }

        if (a4 >= *(v80 + 2))
        {
          goto LABEL_110;
        }

        v82 = &v80[16 * a4];
        *(v82 + 4) = v81;
        *(v82 + 5) = v5;
        v111 = v80;
        result = specialized Array.remove(at:)(v42);
        v21 = v111;
        v5 = *(v111 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v21[16 * v5 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_111;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_112;
      }

      v54 = &v21[16 * v5];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_114;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_117;
      }

      if (v58 >= v50)
      {
        v76 = &v21[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_121;
        }

        if (v45 < v79)
        {
          v42 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v19 = v108[1];
    v20 = v102;
    a4 = v97;
    if (v102 >= v19)
    {
      goto LABEL_96;
    }
  }

  v95 = v6;
  v96 = v22;
  v83 = *v108;
  v84 = *(v106 + 72);
  v85 = *v108 + v84 * (v29 - 1);
  v86 = -v84;
  v87 = v22 - v29;
  v99 = v84;
  v5 = v83 + v29 * v84;
  v102 = v37;
LABEL_86:
  v104 = v87;
  v105 = v29;
  v103 = v5;
  v88 = v87;
  v107 = v85;
  v89 = v85;
  while (1)
  {
    outlined init with copy of SiriUISession(v5, v18);
    outlined init with copy of SiriUISession(v89, v15);
    a4 = static Date.< infix(_:_:)();
    outlined destroy of SiriUISession(v15, type metadata accessor for SiriUISession);
    result = outlined destroy of SiriUISession(v18, type metadata accessor for SiriUISession);
    if ((a4 & 1) == 0)
    {
LABEL_85:
      v29 = v105 + 1;
      v85 = v107 + v99;
      v87 = v104 - 1;
      v38 = v102;
      v5 = v103 + v99;
      if (v105 + 1 != v102)
      {
        goto LABEL_86;
      }

      v6 = v95;
      v22 = v96;
      if (v102 < v96)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!v83)
    {
      break;
    }

    a4 = v109;
    outlined init with take of SiriUISession(v5, v109);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of SiriUISession(a4, v89);
    v89 += v86;
    v5 += v86;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v42 = type metadata accessor for SiriUISession(0);
  v8 = MEMORY[0x28223BE20](v42);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v43 = &v36 - v11;
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
  v47 = a1;
  v46 = a4;
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
      v22 = -v13;
      v23 = a4 + v17;
      v24 = v42;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = v22;
      do
      {
        v36 = v25;
        v26 = a2 + v22;
        v41 = a2;
        v42 = a2 + v22;
        while (1)
        {
          if (a2 <= a1)
          {
            v47 = a2;
            v45 = v36;
            goto LABEL_59;
          }

          v37 = v25;
          v28 = v24;
          v29 = a3 + v22;
          v30 = v23 + v22;
          v31 = v43;
          outlined init with copy of SiriUISession(v30, v43);
          v32 = v26;
          v33 = v44;
          outlined init with copy of SiriUISession(v32, v44);
          v34 = static Date.< infix(_:_:)();
          outlined destroy of SiriUISession(v33, type metadata accessor for SiriUISession);
          outlined destroy of SiriUISession(v31, type metadata accessor for SiriUISession);
          if (v34)
          {
            break;
          }

          v25 = v30;
          if (a3 < v23 || v29 >= v23)
          {
            a3 = v29;
            v24 = v28;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v35 = a3 == v23;
            a3 = v29;
            v24 = v28;
            a1 = v39;
            if (!v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v23 = v30;
          a2 = v41;
          v27 = v30 > v40;
          v26 = v42;
          v22 = v38;
          if (!v27)
          {
            goto LABEL_57;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          v24 = v28;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v22 = v38;
          a1 = v39;
          v25 = v37;
        }

        else
        {
          v35 = a3 == v41;
          a3 = v29;
          v24 = v28;
          a2 = v42;
          v22 = v38;
          a1 = v39;
          v25 = v37;
          if (!v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v23 > v40);
    }

LABEL_57:
    v47 = a2;
    v45 = v25;
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

    v41 = a4 + v16;
    v45 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = v43;
        outlined init with copy of SiriUISession(a2, v43);
        v20 = v44;
        outlined init with copy of SiriUISession(a4, v44);
        v21 = static Date.< infix(_:_:)();
        outlined destroy of SiriUISession(v20, type metadata accessor for SiriUISession);
        outlined destroy of SiriUISession(v19, type metadata accessor for SiriUISession);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v47 = a1;
      }

      while (a4 < v41 && a2 < a3);
    }
  }

LABEL_59:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v47, &v46, &v45, type metadata accessor for SiriUISession);
  return 1;
}

{
  v62 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v8 = *(v62 - 8);
  v9 = MEMORY[0x28223BE20](v62);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v58 = &v48 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v65 = a1;
  v64 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = a4 + v18;
    if (v18 >= 1)
    {
      v33 = -v14;
      v52 = a4;
      v53 = (v8 + 16);
      v51 = (v8 + 8);
      v34 = v32;
      v61 = a1;
      v54 = v33;
      do
      {
        v49 = v32;
        v35 = a2;
        v36 = a2 + v33;
        v37 = a3;
        v55 = v35;
        v56 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v65 = v35;
            v63 = v49;
            goto LABEL_58;
          }

          v38 = v37;
          v50 = v32;
          v60 = v37 + v33;
          v39 = v34 + v33;
          v40 = *v53;
          v41 = v58;
          v42 = v34 + v33;
          v43 = v34;
          v44 = v62;
          (*v53)(v58, v42, v62);
          v45 = v59;
          (v40)(v59, v36, v44);
          v57 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
          v46 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
          v47 = *v51;
          (*v51)(v45, v44);
          v47(v41, v44);
          if (v57 < v46)
          {
            break;
          }

          v32 = v39;
          v37 = v60;
          if (v38 < v43 || v60 >= v43)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v56;
            a1 = v61;
          }

          else
          {
            v36 = v56;
            a1 = v61;
            if (v38 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v34 = v39;
          v33 = v54;
          v35 = v55;
          if (v39 <= v52)
          {
            a2 = v55;
            goto LABEL_57;
          }
        }

        v34 = v43;
        if (v38 < v55 || v60 >= v55)
        {
          a3 = v60;
          a2 = v56;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v61;
          v32 = v50;
          v33 = v54;
        }

        else
        {
          a3 = v60;
          a2 = v56;
          a1 = v61;
          v32 = v50;
          v33 = v54;
          if (v38 != v55)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v34 > v52);
    }

LABEL_57:
    v65 = a2;
    v63 = v32;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = a4 + v17;
    v63 = a4 + v17;
    v60 = a3;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = *(v8 + 16);
      v55 = v14;
      v56 = v8 + 16;
      v53 = (v8 + 8);
      v54 = v20;
      do
      {
        v61 = a1;
        v21 = v58;
        v22 = v62;
        v23 = v54;
        v54(v58, a2, v62);
        v24 = v59;
        v23(v59, a4, v22);
        v25 = a2;
        v26 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
        v27 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
        v28 = *v53;
        (*v53)(v24, v22);
        v28(v21, v22);
        if (v26 >= v27)
        {
          v29 = v55;
          v31 = a4 + v55;
          v30 = v61;
          if (v61 < a4 || v61 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v25;
          }

          else
          {
            a2 = v25;
            if (v61 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v64 = v31;
          a4 += v29;
        }

        else
        {
          v29 = v55;
          a2 = v25 + v55;
          v30 = v61;
          if (v61 < v25 || v61 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v61 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v30 + v29;
        v65 = a1;
      }

      while (a4 < v57 && a2 < v60);
    }
  }

LABEL_58:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v65, &v64, &v63);
  return 1;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

uint64_t specialized PostSiriEngagementMetricsCollector.fetchSignalsAndTaskFeatureSets(for:nextUiSession:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, NSObject *a5)
{
  v196 = a5;
  v195 = a4;
  v197 = a3;
  v218 = type metadata accessor for Date();
  v7 = *(v218 - 8);
  v8 = MEMORY[0x28223BE20](v218);
  v217 = &v194 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v219 = &v194 - v10;
  v11 = swift_allocObject();
  v208 = v11;
  *(v11 + 16) = MEMORY[0x277D84F90];
  v194 = v11 + 16;
  v224 = (*(*a1 + 248))(a2);
  v228 = v224;
  v12 = *(*a1 + 272);
  v209 = a1;
  v13 = v12(a2);
  object = v13;
  if (v13 >> 62)
  {
    goto LABEL_212;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_216:

    v17 = 0;
LABEL_217:

    v225._countAndFlagsBits = specialized Array._copyToContiguousArray()(v181);
    specialized MutableCollection<>.sort(by:)(&v225._countAndFlagsBits, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
    if (v17)
    {
      goto LABEL_235;
    }

    v225._countAndFlagsBits = specialized Array._copyToContiguousArray()(v182);
    specialized MutableCollection<>.sort(by:)(&v225._countAndFlagsBits, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));

    countAndFlagsBits = v225._countAndFlagsBits;
    v183 = *(*v209 + 144);

    v183(v184);
    if (countAndFlagsBits < 0 || (countAndFlagsBits & 0x4000000000000000) != 0)
    {
      goto LABEL_232;
    }

    v185 = *(countAndFlagsBits + 16);
    if (!v185)
    {
LABEL_233:

      swift_beginAccess();

      specialized closure #1 in closure #2 in PostSiriEngagementMetricsCollector.runPSECollection(for:completion:)(v192, v197, v195, v196);
    }

LABEL_221:
    v186 = 0;
    v224 = countAndFlagsBits & 0xC000000000000001;
    while (1)
    {
      if (v224)
      {
        v187 = MEMORY[0x25F8CE460](v186, countAndFlagsBits);
        v188 = v186 + 1;
        if (__OFADD__(v186, 1))
        {
          goto LABEL_229;
        }
      }

      else
      {
        if (v186 >= *(countAndFlagsBits + 16))
        {
          goto LABEL_230;
        }

        v187 = *(countAndFlagsBits + 8 * v186 + 32);

        v188 = v186 + 1;
        if (__OFADD__(v186, 1))
        {
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          v185 = MEMORY[0x25F8CE500](countAndFlagsBits);
          if (!v185)
          {
            goto LABEL_233;
          }

          goto LABEL_221;
        }
      }

      v189 = swift_allocObject();
      v190 = v208;
      *(v189 + 16) = v187;
      *(v189 + 24) = v190;
      v191 = *(*v209 + 232);

      v191(v186, partial apply for closure #9 in PostSiriEngagementMetricsCollector.fetchSignalsAndTaskFeatureSets(for:nextUiSession:completion:), v189);

      ++v186;
      if (v188 == v185)
      {
        goto LABEL_233;
      }
    }
  }

  while (2)
  {
    v16 = 0;
    v17 = 0;
    v207 = object & 0xC000000000000001;
    v201 = object & 0xFFFFFFFFFFFFFF8;
    v200 = object + 32;
    v199 = 0x800000025ED7FA70;
    v198 = (v7 + 32);
    v214 = (v7 + 8);
    v204 = xmmword_25ED7C750;
    v206 = object;
    v205 = v15;
    while (2)
    {
      if (v207)
      {
        v18 = MEMORY[0x25F8CE460](v16, object);
        v19 = __OFADD__(v16++, 1);
        if (v19)
        {
          goto LABEL_205;
        }
      }

      else
      {
        if (v16 >= *(v201 + 16))
        {
          goto LABEL_210;
        }

        v19 = __OFADD__(v16++, 1);
        if (v19)
        {
          goto LABEL_205;
        }
      }

      v222 = v17;
      v20 = *(*v18 + 200);
      v21 = *v18 + 200;
      v223 = v18;
      v216 = v20;
      v215 = v21;
      v22 = v20();
      v23 = v22;
      v7 = *(v22 + 16);
      v213 = v16;
      if (!v7)
      {
        v26 = MEMORY[0x277D84F90];
        goto LABEL_27;
      }

      v24 = 0;
      v25 = v22 + 40;
      v212 = v7 - 1;
      v26 = MEMORY[0x277D84F90];
      v220 = v22 + 40;
      do
      {
        v221 = v26;
        v27 = (v25 + 16 * v24);
        v28 = v24;
        while (1)
        {
          if (v28 >= *(v23 + 16))
          {
            __break(1u);
LABEL_199:
            __break(1u);
LABEL_200:
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
            goto LABEL_206;
          }

          v30 = *(v27 - 1);
          v29 = *v27;
          v24 = v28 + 1;
          v31 = String.lowercased()();
          object = v31._object;
          v225 = v31;
          strcpy(v226, "externalagent");
          HIWORD(v226[1]) = -4864;
          lazy protocol witness table accessor for type String and conformance String();

          v32 = StringProtocol.contains<A>(_:)();

          if (v32)
          {
            break;
          }

          v27 += 2;
          ++v28;
          if (v7 == v24)
          {
            v16 = v213;
            v26 = v221;
            goto LABEL_27;
          }
        }

        v26 = v221;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v227 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1);
          v26 = v227;
        }

        v16 = v213;
        v35 = *(v26 + 2);
        v34 = *(v26 + 3);
        object = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
          v26 = v227;
        }

        *(v26 + 2) = object;
        v36 = v26 + 16 * v35;
        *(v36 + 4) = v30;
        *(v36 + 5) = v29;
        v25 = v220;
      }

      while (v212 != v28);
LABEL_27:

      v37 = *(v26 + 2);

      if (v37)
      {
        if (one-time initialization token for engagement != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        __swift_project_value_buffer(v39, static Logger.engagement);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.info.getter();
        v42 = os_log_type_enabled(v40, v41);
        v17 = v222;
        if (v42)
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_25ECEC000, v40, v41, "This is a SiriX task, Fall back to Flow.", v43, 2u);
          MEMORY[0x25F8CEE50](v43, -1, -1);
        }

LABEL_5:

LABEL_6:
        object = v206;
        if (v16 == v205)
        {

          goto LABEL_217;
        }

        continue;
      }

      break;
    }

    v44 = v223;
    v45 = (*(*v223 + 128))(v38);
    v212 = v46;
    v47 = (*(*v44 + 152))();
    v203 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v49 = swift_allocObject();
    *(v49 + 16) = v204;
    v50 = *(*v44 + 176);
    v51 = *v44 + 176;
    *(v49 + 32) = v50();
    *(v49 + 40) = v52;
    v53 = swift_allocObject();
    *(v53 + 16) = v204;
    v220 = v51;
    v221 = v50;
    *(v53 + 32) = v50();
    *(v53 + 40) = v54;
    v55 = v216();
    type metadata accessor for EngagementUnderstandingFeatures();
    v56 = swift_allocObject();
    *(v56 + 16) = 2;
    *(v56 + 17) = 0;
    *(v56 + 21) = 0;
    v57 = (*v44 + 224);
    v7 = v219;
    v216 = *v57;
    v215 = v57;
    v58 = v216();
    v59 = (*v44 + 248);
    v60 = v217;
    v211 = *v59;
    v210 = v59;
    v211(v58);
    type metadata accessor for SiriExecutionTask(0);
    v61 = swift_allocObject();
    v62 = v212;
    v61[2] = v45;
    v61[3] = v62;
    v63 = v203;
    v61[4] = v47;
    v61[5] = v63;
    v61[6] = v49;
    v61[7] = v53;
    v64 = MEMORY[0x277D84F90];
    v61[8] = MEMORY[0x277D84F90];
    v61[9] = 0xD000000000000014;
    v61[10] = v199;
    v61[11] = v55;
    v61[12] = v56;
    object = *v198;
    v65 = v218;
    (*v198)(v61 + OBJC_IVAR____TtC18PostSiriEngagement17SiriExecutionTask_startTime, v7, v218);
    v203 = v61;
    (object)(v61 + OBJC_IVAR____TtC18PostSiriEngagement17SiriExecutionTask_endTime, v60, v65);
    v226[0] = v64;
    v66 = v224;
    v202 = v224 >> 62;
    if (v224 >> 62)
    {
      if (v224 < 0)
      {
        v73 = v224;
      }

      else
      {
        v73 = v224 & 0xFFFFFFFFFFFFFF8;
      }

      v67 = MEMORY[0x25F8CE500](v73);
      v17 = v222;
      if (v67)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v67 = *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = v222;
      if (v67)
      {
LABEL_34:
        v68 = 0;
        v222 = v66 & 0xC000000000000001;
        v7 = v66 & 0xFFFFFFFFFFFFFF8;
        do
        {
          if (v222)
          {
            v69 = MEMORY[0x25F8CE460](v68, v66);
            v70 = v68 + 1;
            if (__OFADD__(v68, 1))
            {
              goto LABEL_199;
            }
          }

          else
          {
            if (v68 >= *(v7 + 16))
            {
              goto LABEL_200;
            }

            v69 = *(v66 + 8 * v68 + 32);

            v70 = v68 + 1;
            if (__OFADD__(v68, 1))
            {
              goto LABEL_199;
            }
          }

          object = (*(*v69 + 208))();
          v225._countAndFlagsBits = v221();
          v225._object = v71;
          MEMORY[0x28223BE20](v225._countAndFlagsBits);
          *(&v194 - 2) = &v225;
          v72 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v194 - 4), object);

          if (v72)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            object = *(v226[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          v66 = v224;
          ++v68;
        }

        while (v70 != v67);
      }
    }

    object = v226[0];
    if ((v226[0] & 0x8000000000000000) != 0 || (v226[0] & 0x4000000000000000) != 0)
    {
      v74 = MEMORY[0x25F8CE500](v226[0]);
    }

    else
    {
      v74 = *(v226[0] + 16);
    }

    v16 = v213;
    if (v74)
    {
      if ((object & 0xC000000000000001) == 0)
      {
        if (*(object + 16))
        {
          v75 = *(object + 32);

          goto LABEL_56;
        }

LABEL_211:
        __break(1u);
LABEL_212:
        if (object < 0)
        {
          v180 = object;
        }

        else
        {
          v180 = object & 0xFFFFFFFFFFFFFF8;
        }

        v15 = MEMORY[0x25F8CE500](v180);
        if (!v15)
        {
          goto LABEL_216;
        }

        continue;
      }

      v75 = MEMORY[0x25F8CE460](0, object);
LABEL_56:

      v77 = (*(*v75 + 280))(v76);
      v79 = v78;

      v80 = HIBYTE(v79) & 0xF;
      if ((v79 & 0x2000000000000000) == 0)
      {
        v80 = v77 & 0xFFFFFFFFFFFFLL;
      }

      if (v80)
      {
        if (one-time initialization token for engagement != -1)
        {
          swift_once();
        }

        v81 = type metadata accessor for Logger();
        __swift_project_value_buffer(v81, static Logger.engagement);
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&dword_25ECEC000, v82, v83, "This is a SiriX task, Fall back to Flow.", v84, 2u);
          MEMORY[0x25F8CEE50](v84, -1, -1);
        }

LABEL_101:

        goto LABEL_5;
      }

      v225._countAndFlagsBits = MEMORY[0x277D84F90];
      object = v224;
      if (!v202)
      {
        v85 = *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v222 = v17;
        if (!v85)
        {
          goto LABEL_125;
        }

LABEL_109:
        v118 = 0;
        v119 = object & 0xC000000000000001;
        v7 = object & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v119)
          {
            v120 = MEMORY[0x25F8CE460](v118, object);
            v121 = v118 + 1;
            if (__OFADD__(v118, 1))
            {
              goto LABEL_203;
            }
          }

          else
          {
            if (v118 >= *(v7 + 16))
            {
              goto LABEL_204;
            }

            v120 = *(object + 8 * v118 + 32);

            v121 = v118 + 1;
            if (__OFADD__(v118, 1))
            {
              goto LABEL_203;
            }
          }

          v122 = (*(*v120 + 184))();
          v124 = v123;
          if (v122 == (*(*v75 + 184))() && v124 == v125)
          {
          }

          else
          {
            v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v127)
            {
            }

            else
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }
          }

          object = v224;
          ++v118;
          if (v121 == v85)
          {
            goto LABEL_125;
          }
        }
      }

      if (v224 < 0)
      {
        v117 = v224;
      }

      else
      {
        v117 = v224 & 0xFFFFFFFFFFFFFF8;
      }

      v85 = MEMORY[0x25F8CE500](v117);
      v222 = v17;
      if (v85)
      {
        goto LABEL_109;
      }

LABEL_125:

      v228 = v225._countAndFlagsBits;
      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v128 = type metadata accessor for Logger();
      __swift_project_value_buffer(v128, static Logger.engagement);
      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.info.getter();
      v131 = os_log_type_enabled(v129, v130);
      v17 = v222;
      v16 = v213;
      if (v131)
      {
        v132 = swift_slowAlloc();
        *v132 = 0;
        _os_log_impl(&dword_25ECEC000, v129, v130, "This is a Intelligence Flow task.", v132, 2u);
        MEMORY[0x25F8CEE50](v132, -1, -1);
      }

      MEMORY[0x25F8CE160](v133);
      if (*((v228 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v228 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_190:

      v224 = v228;
      goto LABEL_6;
    }

    break;
  }

  v225._countAndFlagsBits = MEMORY[0x277D84F90];
  if (v202)
  {
    if (v66 < 0)
    {
      v86 = v66;
    }

    else
    {
      v86 = v66 & 0xFFFFFFFFFFFFFF8;
    }

    object = MEMORY[0x25F8CE500](v86);
    if (!object)
    {
      goto LABEL_90;
    }

LABEL_74:
    v87 = 0;
    v220 = v66 & 0xFFFFFFFFFFFFFF8;
    v221 = (v66 & 0xC000000000000001);
    v212 = object;
    while (1)
    {
      if (v221)
      {
        v88 = MEMORY[0x25F8CE460](v87, v66);
        v89 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          goto LABEL_201;
        }
      }

      else
      {
        if (v87 >= *(v220 + 16))
        {
          goto LABEL_202;
        }

        v88 = *(v66 + 8 * v87 + 32);

        v89 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          goto LABEL_201;
        }
      }

      v222 = v17;
      v90 = v219;
      (*(*v88 + 352))();
      Date.timeIntervalSinceReferenceDate.getter();
      v92 = v91;
      v7 = v214;
      v93 = *v214;
      v94 = v218;
      v95 = (*v214)(v90, v218);
      v96 = v217;
      (v216)(v95);
      Date.timeIntervalSinceReferenceDate.getter();
      v98 = v97;
      v99 = v93(v96, v94);
      if (vabdd_f64(v92, v98) >= 2.0 || ((*(*v88 + 376))(v99), Date.timeIntervalSinceReferenceDate.getter(), v101 = v100, v102 = v93(v90, v94), v211(v102), Date.timeIntervalSinceReferenceDate.getter(), v104 = v103, v105 = v93(v96, v94), vabdd_f64(v101, v104) >= 2.0))
      {

        v17 = v222;
      }

      else
      {
        v106 = (*(*v88 + 280))(v105);
        v108 = v107;

        v109 = HIBYTE(v108) & 0xF;
        if ((v108 & 0x2000000000000000) == 0)
        {
          v109 = v106 & 0xFFFFFFFFFFFFLL;
        }

        v17 = v222;
        if (v109)
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

      ++v87;
      object = v212;
      v66 = v224;
      if (v89 == v212)
      {
        goto LABEL_90;
      }
    }
  }

  object = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (object)
  {
    goto LABEL_74;
  }

LABEL_90:
  v110 = v225._countAndFlagsBits;
  if (v225._countAndFlagsBits < 0 || (v225._countAndFlagsBits & 0x4000000000000000) != 0)
  {
    object = v225._countAndFlagsBits;
    v111 = MEMORY[0x25F8CE500]();
    v110 = object;
  }

  else
  {
    v111 = *(v225._countAndFlagsBits + 16);
  }

  v16 = v213;
  if (v111)
  {
    if ((v110 & 0xC000000000000001) != 0)
    {
      MEMORY[0x25F8CE460](0, v110);

      swift_unknownObjectRelease();
    }

    else
    {
      countAndFlagsBits = *(v110 + 16);

      if (!countAndFlagsBits)
      {
        goto LABEL_231;
      }
    }

    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v113 = type metadata accessor for Logger();
    __swift_project_value_buffer(v113, static Logger.engagement);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_25ECEC000, v114, v115, "This is a SiriX task, Fall back to Flow.", v116, 2u);
      MEMORY[0x25F8CEE50](v116, -1, -1);
    }

    goto LABEL_101;
  }

  v225._countAndFlagsBits = MEMORY[0x277D84F90];
  if (v202)
  {
    if (v66 < 0)
    {
      v134 = v66;
    }

    else
    {
      v134 = v66 & 0xFFFFFFFFFFFFFF8;
    }

    v7 = MEMORY[0x25F8CE500](v134);
    if (!v7)
    {
      goto LABEL_151;
    }

    goto LABEL_136;
  }

  v7 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
LABEL_136:
    v135 = 0;
    v220 = v66 & 0xC000000000000001;
    v212 = v66 & 0xFFFFFFFFFFFFFF8;
    v211 = v7;
    while (1)
    {
      if (v220)
      {
        v138 = MEMORY[0x25F8CE460](v135, v66);
        v137 = v138;
      }

      else
      {
        if (v135 >= *(v212 + 16))
        {
          goto LABEL_207;
        }

        v137 = *(v66 + 8 * v135 + 32);
      }

      v139 = v219;
      if (__OFADD__(v135, 1))
      {
        break;
      }

      v221 = (v135 + 1);
      v222 = v17;
      v140 = (*v137 + 352);
      v141 = *v140;
      (*v140)(v138);
      Date.timeIntervalSinceReferenceDate.getter();
      v143 = v142;
      object = *v214;
      v144 = v218;
      v145 = (*v214)(v139, v218);
      v146 = v217;
      (v216)(v145);
      Date.timeIntervalSinceReferenceDate.getter();
      v148 = v147;
      v149 = (object)(v146, v144);
      if (vabdd_f64(v143, v148) >= 2.0 || (v141(v149), Date.timeIntervalSinceReferenceDate.getter(), v151 = v150, v152 = (object)(v139, v144), (*(*v137 + 376))(v152), Date.timeIntervalSinceReferenceDate.getter(), v154 = v153, v155 = (object)(v146, v144), vabdd_f64(v151, v154) >= 2.0))
      {

        v136 = v221;
        v17 = v222;
        v7 = v211;
      }

      else
      {
        object = (*(*v137 + 280))(v155);
        v157 = v156;

        v158 = HIBYTE(v157) & 0xF;
        if ((v157 & 0x2000000000000000) == 0)
        {
          v158 = object & 0xFFFFFFFFFFFFLL;
        }

        v136 = v221;
        v17 = v222;
        v7 = v211;
        if (v158)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          object = *(v225._countAndFlagsBits + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }
      }

      ++v135;
      v66 = v224;
      if (v136 == v7)
      {
        goto LABEL_151;
      }
    }

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
    goto LABEL_211;
  }

LABEL_151:
  object = v225._countAndFlagsBits;
  if (v225._countAndFlagsBits < 0 || (v225._countAndFlagsBits & 0x4000000000000000) != 0)
  {
    v159 = MEMORY[0x25F8CE500](v225._countAndFlagsBits);
  }

  else
  {
    v159 = *(v225._countAndFlagsBits + 16);
  }

  v16 = v213;
  if (!v159)
  {

LABEL_183:
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v175 = type metadata accessor for Logger();
    __swift_project_value_buffer(v175, static Logger.engagement);
    v176 = Logger.logObject.getter();
    v177 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v176, v177))
    {
      v178 = swift_slowAlloc();
      *v178 = 0;
      _os_log_impl(&dword_25ECEC000, v176, v177, "This is a Intelligence Flow task.", v178, 2u);
      MEMORY[0x25F8CEE50](v178, -1, -1);
    }

    MEMORY[0x25F8CE160](v179);
    if (*((v228 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v228 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_190;
  }

  if ((object & 0xC000000000000001) != 0)
  {
    v160 = MEMORY[0x25F8CE460](0, object);
LABEL_158:

    v225._countAndFlagsBits = MEMORY[0x277D84F90];
    if (v202)
    {
      if (v66 < 0)
      {
        v162 = v66;
      }

      else
      {
        v162 = v66 & 0xFFFFFFFFFFFFFF8;
      }

      v161 = MEMORY[0x25F8CE500](v162);
      v222 = v17;
      if (!v161)
      {
        goto LABEL_182;
      }
    }

    else
    {
      v161 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v222 = v17;
      if (!v161)
      {
LABEL_182:

        v228 = v225._countAndFlagsBits;
        v17 = v222;
        v16 = v213;
        goto LABEL_183;
      }
    }

    v163 = 0;
    v164 = v66 & 0xC000000000000001;
    v7 = v66 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v164)
      {
        v165 = MEMORY[0x25F8CE460](v163, v66);
        v166 = v163 + 1;
        if (__OFADD__(v163, 1))
        {
          goto LABEL_208;
        }
      }

      else
      {
        if (v163 >= *(v7 + 16))
        {
          goto LABEL_209;
        }

        v165 = *(v66 + 8 * v163 + 32);

        v166 = v163 + 1;
        if (__OFADD__(v163, 1))
        {
          goto LABEL_208;
        }
      }

      v167 = (*(*v165 + 184))();
      v169 = v168;
      v171 = (*(*v160 + 184))();
      v172 = v167;
      object = v170;
      if (v172 == v171 && v169 == v170)
      {
      }

      else
      {
        v174 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v174)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          object = *(v225._countAndFlagsBits + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }
      }

      v66 = v224;
      ++v163;
      if (v166 == v161)
      {
        goto LABEL_182;
      }
    }
  }

  if (*(object + 16))
  {
    v160 = *(object + 32);

    goto LABEL_158;
  }

  __break(1u);
LABEL_235:

  __break(1u);
  return result;
}

uint64_t specialized PostSiriEngagementMetricsCollector.runPSECollection(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (**a5)(uint64_t, uint64_t, uint64_t, uint64_t), unint64_t a6)
{
  v104 = a5;
  v106 = a2;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v94 = *(v10 - 8);
  v95 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v93 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for DispatchQoS.QoSClass();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v102 = &v86 - v21;
  v105 = type metadata accessor for SiriUISession(0);
  v96 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v101 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_18PostSiriEngagement0C9UISessionV7elementtMd, &_sSi6offset_18PostSiriEngagement0C9UISessionV7elementtMR);
  v23 = MEMORY[0x28223BE20](v100);
  v25 = (&v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v99 = &v86 - v26;
  v27 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = swift_allocObject();
  v31 = v104;
  v32 = a3;
  v30[2] = a3;
  v30[3] = a4;
  v30[4] = v31;
  v30[5] = a6;
  v103 = *(a1 + 16);
  if (v103)
  {
    v33 = a1;
    v97 = v20;
    v86 = v15;
    v87 = v12;
    v88 = v13;
    v89 = v30;
    v34 = MEMORY[0x277D84F90];
    v109 = MEMORY[0x277D84F90];

    specialized ContiguousArray.reserveCapacity(_:)();
    v35 = 0;
    v36 = v33 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
    v98 = *(v96 + 72);
    v104 = (v96 + 56);
    do
    {
      v38 = v99;
      v37 = v100;
      v39 = *(v100 + 48);
      v40 = v35 + 1;
      outlined init with copy of SiriUISession(v36, &v99[v39]);
      *v25 = v35;
      v41 = *(v37 + 48);
      outlined init with take of SiriUISession(&v38[v39], v25 + v41);
      v42 = v25 + v41;
      v43 = v25;
      v44 = v101;
      outlined init with copy of SiriUISession(v42, v101);
      type metadata accessor for UISessionSignalBuilder(0);
      v45 = swift_allocObject();
      v46 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession;
      v47 = v105;
      v48 = *v104;
      (*v104)(v45 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession, 1, 1, v105);
      *(v45 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriExecutionTasks) = v34;
      v49 = v45 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream;
      *(v49 + 112) = 0;
      *(v49 + 80) = 0u;
      *(v49 + 96) = 0u;
      *(v49 + 48) = 0u;
      *(v49 + 64) = 0u;
      *(v49 + 16) = 0u;
      *(v49 + 32) = 0u;
      *v49 = 0u;
      v50 = v44;
      v25 = v43;
      v51 = v102;
      outlined init with take of SiriUISession(v50, v102);
      v48(v51, 0, 1, v47);
      swift_beginAccess();
      outlined assign with take of SiriUISession?(v51, v45 + v46);
      swift_endAccess();
      *(v45 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector) = v106;

      outlined destroy of Date?(v43, &_sSi6offset_18PostSiriEngagement0C9UISessionV7elementtMd, &_sSi6offset_18PostSiriEngagement0C9UISessionV7elementtMR);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v34 = MEMORY[0x277D84F90];
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v36 += v98;
      v35 = v40;
    }

    while (v103 != v40);
    v29 = v109;
    v109 = 0;
    v52 = dispatch_group_create();
    v53 = (v29 >> 62) & 1;
    if (v29 < 0)
    {
      LODWORD(v53) = 1;
    }

    LODWORD(v103) = v53;
    if (v53 == 1)
    {
      goto LABEL_38;
    }

    v54 = *(v29 + 16);
    if (v54)
    {
      while (1)
      {
        v55 = 0;
        v56 = v29 & 0xC000000000000001;
        v101 = v29 + 32;
        v102 = v54;
        while (v56)
        {
          v59 = MEMORY[0x25F8CE460](v55, v29);
          v60 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_14:
          v61 = MEMORY[0x25F8CE7F0]();
          dispatch_group_enter(v52);
          if (v103)
          {
            v62 = MEMORY[0x25F8CE500](v29);
          }

          else
          {
            v62 = *(v29 + 16);
          }

          if (v60 >= v62)
          {
            v57 = v97;
            v48(v97, 1, 1, v105);
          }

          else
          {
            if (v56)
            {
              v63 = MEMORY[0x25F8CE460](v60, v29);
            }

            else
            {
              if (v60 < 0)
              {
                goto LABEL_36;
              }

              if (v60 >= *(v29 + 16))
              {
                goto LABEL_37;
              }

              v63 = *(v101 + 8 * v60);
            }

            v57 = v97;
            (*(*v63 + 112))();
          }

          v58 = v52;
          specialized PostSiriEngagementMetricsCollector.fetchSignalsAndTaskFeatureSets(for:nextUiSession:completion:)(v59, v57, v106, &v109, v58);

          outlined destroy of Date?(v57, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
          objc_autoreleasePoolPop(v61);

          ++v55;
          if (v60 == v102)
          {
            goto LABEL_39;
          }
        }

        if (v55 < *(v29 + 16))
        {
          break;
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v54 = MEMORY[0x25F8CE500](v29);
        if (!v54)
        {
          goto LABEL_39;
        }
      }

      v59 = *(v29 + 8 * v55 + 32);

      v60 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        goto LABEL_26;
      }

      goto LABEL_14;
    }

LABEL_39:

    type metadata accessor for OS_dispatch_queue();
    v75 = v91;
    v76 = v90;
    v77 = v92;
    (*(v91 + 104))(v90, *MEMORY[0x277D851C8], v92);
    v78 = static OS_dispatch_queue.global(qos:)();
    (*(v75 + 8))(v76, v77);
    v79 = swift_allocObject();
    v80 = v89;
    *(v79 + 16) = partial apply for closure #1 in PostSiriEngagementMetricsCollector.collect(callback:);
    *(v79 + 24) = v80;
    aBlock[4] = closure #3 in PostSiriEngagementMetricsCollector.runPSECollection(for:completion:)partial apply;
    aBlock[5] = v79;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_39;
    v81 = _Block_copy(aBlock);

    v82 = v86;
    static DispatchQoS.unspecified.getter();
    v107 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v83 = v87;
    v84 = v95;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v81);

    (*(v94 + 8))(v83, v84);
    (*(v93 + 8))(v82, v88);
  }

  else
  {
LABEL_27:
    v64 = v31;
    v65 = one-time initialization token for engagement;
    v66 = v32;

    v67 = v66;
    if (v65 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    __swift_project_value_buffer(v68, static Logger.engagement);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_25ECEC000, v69, v70, "There are no Siri UI events in Biome stream to submit.", v71, 2u);
      MEMORY[0x25F8CEE50](v71, -1, -1);
    }

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 134217984;
      *(v74 + 4) = *(v67 + 16);

      _os_log_impl(&dword_25ECEC000, v72, v73, "Successfully completed collection of %ld activities.", v74, 0xCu);
      MEMORY[0x25F8CEE50](v74, -1, -1);
    }

    else
    {
    }

    Date.init()();
    UserDefaultsDomainProvider.lastCollectionDate.setter(v29);
    (v64)(0);
  }
}

uint64_t outlined init with copy of SiriUISession(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriUISession(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SiriUISession(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriUISession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in PostSiriEngagementMetricsCollector.collect(startDate:timeWindowInSeconds:numSiriUISessions:completion:)()
{
  v1 = *(type metadata accessor for SiriUISession(0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #2 in PostSiriEngagementMetricsCollector.collect(startDate:timeWindowInSeconds:numSiriUISessions:completion:)(v3, v4, v5, v6, v0 + v2, v7);
}

uint64_t outlined destroy of SiriUISession(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of SiriUISession?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in PostSiriEngagementMetricsCollector.fetchDonatedEvents(biomeFetcherConfiguration:completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(a2 + 80);
  v8[4] = *(a2 + 64);
  v8[5] = v4;
  v8[6] = *(a2 + 96);
  v9 = *(a2 + 112);
  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  v6 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v6;
  return v3(a1, v8);
}

uint64_t outlined assign with take of SiriUISession?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t objectdestroy_25Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t CallsIntentSignalFactory.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t CallsIntentSignalFactory.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

void CallsIntentSignalFactory.convertBmEventToSignal(bmEvent:siriUISession:)(void *a1, char *a2)
{
  v278 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v285 = &v267 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v284 = &v267 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v283 = &v267 - v9;
  MEMORY[0x28223BE20](v8);
  v286 = &v267 - v10;
  v279 = type metadata accessor for Date();
  v288 = *(v279 - 1);
  v11 = MEMORY[0x28223BE20](v279);
  v276 = &v267 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v277 = &v267 - v14;
  MEMORY[0x28223BE20](v13);
  v287 = &v267 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v280 = &v267 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v281 = &v267 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v267 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v267 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &v267 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v267 - v30;
  v32 = type metadata accessor for ReliabilityCategory();
  v33 = *(v32 - 8);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v267 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x25F8CE7F0](v34);
  v38 = v290;
  closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(a1, &v292, &v294);
  if (v38)
  {
    objc_autoreleasePoolPop(v37);
    return;
  }

  v270 = v23;
  v271 = v25;
  v272 = v29;
  v268 = v36;
  v269 = v33;
  v273 = v31;
  v39 = v287;
  v275 = a1;
  v274 = 0;
  objc_autoreleasePoolPop(v37);
  v282 = v294;
  v290 = [v294 intent];
  v40 = [v290 domain];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  if (v41 == 0x736C6C6143 && v43 == 0xE500000000000000)
  {

    v44 = v288;
  }

  else
  {
    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v44 = v288;
    if ((v45 & 1) == 0)
    {
      if (one-time initialization token for engagement == -1)
      {
LABEL_13:
        v54 = type metadata accessor for Logger();
        __swift_project_value_buffer(v54, static Logger.engagement);
        *&v294 = 0;
        *(&v294 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(55);
        MEMORY[0x25F8CE090](0xD000000000000012, 0x800000025ED7F2D0);
        v55 = [v290 domain];
        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;

        MEMORY[0x25F8CE090](v56, v58);

        MEMORY[0x25F8CE090](0xD000000000000023, 0x800000025ED7F2F0);
        v59 = v294;
        v60 = *MEMORY[0x277D616E0];
        v61 = type metadata accessor for AppIntentEventDataIssues();
        v62 = v268;
        (*(*(v61 - 8) + 104))(v268, v60, v61);
        v63 = v269;
        (*(v269 + 104))(v62, *MEMORY[0x277D61678], v32);

        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *&v294 = v67;
          *v66 = 136315138;
          *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, *(&v59 + 1), &v294);
          _os_log_impl(&dword_25ECEC000, v64, v65, "%s", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v67);
          MEMORY[0x25F8CEE50](v67, -1, -1);
          MEMORY[0x25F8CEE50](v66, -1, -1);
        }

        type metadata accessor for SiriTaskEngagementUtils();
        v68 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
        MEMORY[0x25F8CDB30](v62, v68, v69);

        (*(v63 + 8))(v62, v32);
        return;
      }

LABEL_123:
      swift_once();
      goto LABEL_13;
    }
  }

  v46 = v275;
  if ([v275 donatedBySiri])
  {
    v47 = (*(*v289 + 144))(&v294);
    if (!__OFADD__(*v48, 1))
    {
      ++*v48;
      v47(&v294, 0);

      return;
    }

    __break(1u);
    goto LABEL_123;
  }

  v296 = MEMORY[0x277D84F98];
  v49 = [v46 absoluteTimestamp];
  if (v49)
  {
    v50 = v273;
    v51 = v49;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = 0;
    v53 = v279;
  }

  else
  {
    v52 = 1;
    v53 = v279;
    v50 = v273;
  }

  v70 = 1;
  (*(v44 + 7))(v50, v52, 1, v53);
  v71 = [v282 dateInterval];
  v72 = v270;
  if (v71)
  {
    v73 = v71;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v70 = 0;
  }

  v74 = type metadata accessor for DateInterval();
  v75 = *(v74 - 8);
  v76 = *(v75 + 56);
  v287 = (v75 + 56);
  v288 = v76;
  (v76)(v72, v70, 1, v74);
  v77 = v72;
  v78 = v271;
  outlined init with take of DateInterval?(v77, v271, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v279 = *(v75 + 48);
  v79 = 0;
  if (!(v279)(v78, 1, v74))
  {
    DateInterval.duration.getter();
    v79 = v80;
  }

  outlined destroy of Date?(v78, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v81 = *(v44 + 2);
  v82 = v278;
  v81(v39, v278, v53);
  v83 = &v82[*(type metadata accessor for SiriUISession(0) + 20)];
  v84 = v277;
  v81(v277, v83, v53);
  v85 = v273;
  v86 = v272;
  outlined init with copy of Date?(v273, v272);
  LODWORD(v271) = (*(v44 + 6))(v86, 1, v53);
  if (v271 == 1)
  {
    v100 = *(v44 + 1);
    v100(v84, v53);
    v100(v39, v53);
    outlined destroy of Date?(v85, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of Date?(v86, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v272 = 0x3FF0000000000000;
    v89 = 0;
    v93 = 0.0;
    v99 = 0.0;
    v79 = 0;
  }

  else
  {
    v87 = v276;
    (*(v44 + 4))(v276, v86, v53);
    Date.timeIntervalSinceReferenceDate.getter();
    v89 = v88;
    Date.timeIntervalSinceReferenceDate.getter();
    v91 = v90;
    Date.timeIntervalSinceReferenceDate.getter();
    v93 = v91 - v92;
    Date.timeIntervalSinceReferenceDate.getter();
    v95 = v94;
    Date.timeIntervalSinceReferenceDate.getter();
    v97 = v96;
    v98 = *(v44 + 1);
    v98(v87, v53);
    v98(v84, v53);
    v98(v39, v53);
    outlined destroy of Date?(v85, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v272 = 0;
    v99 = v95 - v97;
  }

  v101 = [v282 dateInterval];
  v102 = v280;
  if (v101)
  {
    v103 = v101;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v104 = 0;
  }

  else
  {
    v104 = 1;
  }

  (v288)(v102, v104, 1, v74);
  v105 = v102;
  v106 = v281;
  outlined init with take of DateInterval?(v105, v281, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  if ((v279)(v106, 1, v74))
  {
    outlined destroy of Date?(v106, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v295 = MEMORY[0x277D83B88];
    *&v294 = -1;
  }

  else
  {
    DateInterval.duration.getter();
    v293 = MEMORY[0x277D839F8];
    *&v292 = v107;
    outlined destroy of Date?(v106, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    outlined init with take of Any(&v292, &v294);
  }

  outlined init with take of Any(&v294, &v292);
  v108 = v296;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v291 = v108;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v292, 0x617275446C6C6163, 0xEC0000006E6F6974, isUniquelyReferenced_nonNull_native);
  v110 = v291;
  v296 = v291;
  v111 = [v290 parametersByName];
  v112 = MEMORY[0x277D837D0];
  if (v111)
  {
    v113 = v111;
    v114 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v114 + 16))
    {
      v115 = specialized __RawDictionaryStorage.find<A>(_:)(0x756F526F69647561, 0xEA00000000006574);
      if (v116)
      {
        outlined init with copy of Any(*(v114 + 56) + 32 * v115, &v292);

        outlined init with take of Any(&v292, &v294);
        goto LABEL_36;
      }
    }
  }

  v295 = v112;
  *&v294 = 0;
  *(&v294 + 1) = 0xE000000000000000;
LABEL_36:
  outlined init with take of Any(&v294, &v292);
  v117 = swift_isUniquelyReferenced_nonNull_native();
  v291 = v110;
  v118 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v292, 0x756F526F69647561, 0xEA00000000006574, v117);
  v119 = v291;
  v120 = (*(*v289 + 128))(v118);
  v121 = MEMORY[0x277D839B0];
  v295 = MEMORY[0x277D839B0];
  LOBYTE(v294) = v120 != 0;
  outlined init with take of Any(&v294, &v292);
  v122 = swift_isUniquelyReferenced_nonNull_native();
  v291 = v119;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v292, 0x42646574616E6F64, 0xED00006972695379, v122);
  v123 = v291;
  v124 = [v290 typeName];
  v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v127 = v126;

  v295 = v112;
  *&v294 = v125;
  *(&v294 + 1) = v127;
  outlined init with take of Any(&v294, &v292);
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v291 = v123;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v292, 0x7954746E65746E69, 0xEE00656D614E6570, v128);
  v296 = v291;
  v129 = [v275 bundleID];
  if (v129)
  {
    v130 = v129;
    v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v133 = v132;
  }

  else
  {
    v131 = 0;
    v133 = 0xE000000000000000;
  }

  *&v294 = v131;
  *(&v294 + 1) = v133;
  *&v292 = 0x6C7070612E6D6F63;
  *(&v292 + 1) = 0xEA00000000002E65;
  lazy protocol witness table accessor for type String and conformance String();
  v134 = StringProtocol.contains<A>(_:)();

  v295 = v121;
  LOBYTE(v294) = v134 & 1;
  outlined init with take of Any(&v294, &v292);
  v135 = v296;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v291 = v135;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v292, 0xD000000000000016, 0x800000025ED7E770, v136);
  v137 = v291;
  v296 = v291;
  (*(*v289 + 136))(0);
  v138 = [v290 donationMetadata];
  if (v138)
  {
    v139 = v138;
    objc_opt_self();
    v140 = swift_dynamicCastObjCClass();
    if (v140)
    {
      v141 = v140;
      [v140 callDuration];
      v142 = MEMORY[0x277D839F8];
      v295 = MEMORY[0x277D839F8];
      *&v294 = v143;
      outlined init with take of Any(&v294, &v292);
      v144 = swift_isUniquelyReferenced_nonNull_native();
      v291 = v137;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v292, 0x617275446C6C6163, 0xEC0000006E6F6974, v144);
      v145 = v291;
      [v141 timeToEstablish];
      v295 = v142;
      *&v294 = v146;
      outlined init with take of Any(&v294, &v292);
      v147 = swift_isUniquelyReferenced_nonNull_native();
      v291 = v145;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v292, 0xD000000000000018, 0x800000025ED7F380, v147);
      v148 = v291;
      v296 = v291;
      v149 = [v141 recentCallStatus];
      if (v149)
      {
        v150 = v149;
        v293 = type metadata accessor for NSNumber();
        *&v292 = v150;
        outlined init with take of Any(&v292, &v294);
      }

      else
      {
        v295 = MEMORY[0x277D83B88];
        *&v294 = 0;
      }

      outlined init with take of Any(&v294, &v292);
      v151 = swift_isUniquelyReferenced_nonNull_native();
      v291 = v148;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v292, 0xD000000000000010, 0x800000025ED7F3A0, v151);
      v152 = v291;
      v153 = [v141 disconnectedReason];
      if (v153)
      {
        v154 = v153;
        v293 = type metadata accessor for NSNumber();
        *&v292 = v154;
        outlined init with take of Any(&v292, &v294);
      }

      else
      {
        v295 = MEMORY[0x277D83B88];
        *&v294 = 0;
      }

      outlined init with take of Any(&v294, &v292);
      v155 = swift_isUniquelyReferenced_nonNull_native();
      v291 = v152;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v292, 0xD000000000000012, 0x800000025ED7F3C0, v155);

      v137 = v291;
      v296 = v291;
    }

    else
    {
    }
  }

  v156 = [v290 parametersByName];
  if (!v156)
  {
    goto LABEL_105;
  }

  v157 = v156;
  v158 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v158 + 16))
  {
    goto LABEL_104;
  }

  v159 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746361746E6F63, 0xE800000000000000);
  if ((v160 & 1) == 0)
  {
    goto LABEL_104;
  }

  outlined init with copy of Any(*(v158 + 56) + 32 * v159, &v294);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  if (swift_dynamicCast())
  {
    v161 = v292;
    if (v292 >> 62)
    {
      if (v292 < 0)
      {
        v266 = v292;
      }

      else
      {
        v266 = v292 & 0xFFFFFFFFFFFFFF8;
      }

      v162 = MEMORY[0x25F8CE500](v266);
      if (v162)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v162 = *((v292 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v162)
      {
LABEL_55:
        if (v162 < 1)
        {
          __break(1u);
          return;
        }

        v163 = 0;
        v273 = v161 & 0xC000000000000001;
        v164 = MEMORY[0x277D84F90];
        v288 = MEMORY[0x277D84F90];
        v165 = MEMORY[0x277D84F90];
        v166 = MEMORY[0x277D84F90];
        v167 = MEMORY[0x277D84F90];
        v276 = v161;
        v275 = v162;
        while (1)
        {
          if (v273)
          {
            v168 = MEMORY[0x25F8CE460](v163, v161);
          }

          else
          {
            v168 = *&v161[8 * v163 + 32];
          }

          v169 = v168;
          v170 = [v168 personHandle];
          if (v170 && (v171 = v170, v172 = [v170 value], v171, v172))
          {
            v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v175 = v174;
          }

          else
          {
            v173 = 0;
            v175 = 0xE000000000000000;
          }

          v176 = swift_isUniquelyReferenced_nonNull_native();
          *&v289 = v169;
          if ((v176 & 1) == 0)
          {
            v166 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v166 + 2) + 1, 1, v166);
          }

          v178 = *(v166 + 2);
          v177 = *(v166 + 3);
          v278 = v163;
          if (v178 >= v177 >> 1)
          {
            v166 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v177 > 1), v178 + 1, 1, v166);
          }

          *(v166 + 2) = v178 + 1;
          v179 = &v166[16 * v178];
          *(v179 + 4) = v173;
          *(v179 + 5) = v175;
          v180 = v289;
          v181 = [v289 displayName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v182 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
          v184 = v183;

          v185 = swift_isUniquelyReferenced_nonNull_native();
          v279 = v166;
          if ((v185 & 1) == 0)
          {
            v165 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v165 + 2) + 1, 1, v165);
          }

          v186 = v286;
          v188 = *(v165 + 2);
          v187 = *(v165 + 3);
          if (v188 >= v187 >> 1)
          {
            v165 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v187 > 1), v188 + 1, 1, v165);
          }

          *(v165 + 2) = v188 + 1;
          v189 = &v165[16 * v188];
          *(v189 + 4) = v182;
          *(v189 + 5) = v184;
          v190 = [v180 nameComponents];
          v287 = v165;
          v281 = v167;
          v280 = v164;
          if (v190)
          {
            v191 = v283;
            v192 = v190;
            static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

            v193 = 0;
          }

          else
          {
            v193 = 1;
            v191 = v283;
          }

          v194 = type metadata accessor for PersonNameComponents();
          v195 = *(v194 - 8);
          v277 = *(v195 + 56);
          (v277)(v191, v193, 1, v194);
          outlined init with take of DateInterval?(v191, v186, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
          v196 = *(v195 + 48);
          if (v196(v186, 1, v194))
          {
            break;
          }

          PersonNameComponents.givenName.getter();
          v198 = v197;
          outlined destroy of Date?(v186, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
          if (!v198)
          {
            goto LABEL_77;
          }

LABEL_79:
          v199 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
          v201 = v200;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v288 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v288 + 2) + 1, 1, v288);
          }

          v203 = *(v288 + 2);
          v202 = *(v288 + 3);
          if (v203 >= v202 >> 1)
          {
            v288 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v202 > 1), v203 + 1, 1, v288);
          }

          v205 = v288;
          v204 = v289;
          *(v288 + 2) = v203 + 1;
          v206 = &v205[16 * v203];
          *(v206 + 4) = v199;
          *(v206 + 5) = v201;
          v207 = [v204 nameComponents];
          if (v207)
          {
            v208 = v285;
            v209 = v207;
            static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

            v210 = 0;
          }

          else
          {
            v210 = 1;
            v208 = v285;
          }

          v211 = v284;
          (v277)(v208, v210, 1, v194);
          outlined init with take of DateInterval?(v208, v211, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
          if (v196(v211, 1, v194))
          {
            outlined destroy of Date?(v211, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
            v165 = v287;
            v167 = v281;
            v164 = v280;
          }

          else
          {
            PersonNameComponents.familyName.getter();
            v213 = v212;
            outlined destroy of Date?(v211, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
            v165 = v287;
            v167 = v281;
            v164 = v280;
            if (v213)
            {
              goto LABEL_90;
            }
          }

LABEL_90:
          v214 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
          v216 = v215;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v164 + 2) + 1, 1, v164);
          }

          v218 = *(v164 + 2);
          v217 = *(v164 + 3);
          if (v218 >= v217 >> 1)
          {
            v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v217 > 1), v218 + 1, 1, v164);
          }

          *(v164 + 2) = v218 + 1;
          v219 = &v164[16 * v218];
          *(v219 + 4) = v214;
          *(v219 + 5) = v216;
          v220 = [v289 personHandle];
          if (v220)
          {
            v221 = v220;
            v222 = [v220 label];

            v161 = v276;
            if (v222)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
            }
          }

          else
          {
            v161 = v276;
          }

          v223 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
          v225 = v224;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v167 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v167 + 2) + 1, 1, v167);
          }

          v226 = v278;
          v228 = *(v167 + 2);
          v227 = *(v167 + 3);
          if (v228 >= v227 >> 1)
          {
            v167 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v227 > 1), v228 + 1, 1, v167);
          }

          v163 = v226 + 1;

          *(v167 + 2) = v228 + 1;
          v229 = &v167[16 * v228];
          *(v229 + 4) = v223;
          *(v229 + 5) = v225;
          v166 = v279;
          if (v275 == v163)
          {
            v265 = v164;

            v137 = v296;
            goto LABEL_106;
          }
        }

        outlined destroy of Date?(v186, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
LABEL_77:

        goto LABEL_79;
      }
    }

LABEL_104:
  }

LABEL_105:
  v167 = MEMORY[0x277D84F90];
  v288 = MEMORY[0x277D84F90];
  v165 = MEMORY[0x277D84F90];
  v166 = MEMORY[0x277D84F90];
  v265 = MEMORY[0x277D84F90];
LABEL_106:
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v295 = v230;
  *&v294 = v166;
  outlined init with take of Any(&v294, &v292);
  v231 = swift_isUniquelyReferenced_nonNull_native();
  v291 = v137;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v292, 0x73746361746E6F63, 0xED000065756C6156, v231);
  v232 = v291;
  v295 = v230;
  v296 = v291;
  *&v294 = v165;
  outlined init with take of Any(&v294, &v292);

  v233 = swift_isUniquelyReferenced_nonNull_native();
  v291 = v232;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v292, 0xD000000000000013, 0x800000025ED7F320, v233);
  v234 = v291;
  if (!*(v165 + 2))
  {
    v295 = MEMORY[0x277D837D0];
LABEL_110:
    v235 = 0;
    v236 = 0xE000000000000000;
    goto LABEL_111;
  }

  v235 = *(v165 + 4);
  v295 = MEMORY[0x277D837D0];

  if (!v236)
  {
    goto LABEL_110;
  }

LABEL_111:
  *&v294 = v235;
  *(&v294 + 1) = v236;
  outlined init with take of Any(&v294, &v292);
  v237 = swift_isUniquelyReferenced_nonNull_native();
  v291 = v234;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v292, 0x4E79616C70736964, 0xEB00000000656D61, v237);
  v238 = v291;
  v295 = v230;
  *&v294 = v288;
  outlined init with take of Any(&v294, &v292);
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v291 = v238;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v292, 0xD000000000000011, 0x800000025ED7F340, v239);
  v240 = v291;
  v295 = v230;
  *&v294 = v265;
  outlined init with take of Any(&v294, &v292);
  v241 = swift_isUniquelyReferenced_nonNull_native();
  v291 = v240;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v292, 0xD000000000000010, 0x800000025ED7F360, v241);
  v296 = v291;
  if (*(v167 + 2))
  {
    v242 = *(v167 + 4);
    v243 = *(v167 + 5);

    *&v294 = 46;
    *(&v294 + 1) = 0xE100000000000000;
    MEMORY[0x28223BE20](v244);
    *(&v267 - 2) = &v294;
    v245 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v267 - 4), v242, v243, &v267);
    v246 = *(v245 + 16);
    if (v246)
    {
      v247 = v245 + 32 * v246;
      v289 = *v247;
      v249 = *(v247 + 16);
      v248 = *(v247 + 24);

      v293 = MEMORY[0x277D83E40];
      v250 = swift_allocObject();
      *&v292 = v250;
      *(v250 + 16) = v289;
      *(v250 + 32) = v249;
      *(v250 + 40) = v248;
      outlined init with take of Any(&v292, &v294);
    }

    else
    {

      v295 = MEMORY[0x277D837D0];
      *&v294 = 0;
      *(&v294 + 1) = 0xE000000000000000;
    }

    if (v295)
    {
      outlined init with take of Any(&v294, &v292);
      v251 = v296;
      v252 = swift_isUniquelyReferenced_nonNull_native();
      v291 = v251;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v292, 0x6C6562616CLL, 0xE500000000000000, v252);
      v296 = v291;
    }

    else
    {
      outlined destroy of Date?(&v294, &_sypSgMd, &_sypSgMR);
      specialized Dictionary._Variant.removeValue(forKey:)(0x6C6562616CLL, 0xE500000000000000, &v292);
      outlined destroy of Date?(&v292, &_sypSgMd, &_sypSgMR);
    }
  }

  else
  {
  }

  v253 = [v290 verb];
  v254 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v256 = v255;

  if ([v282 direction] == 2)
  {

    v256 = 0xEA00000000006C6CLL;
    v254 = 0x6143726577736E41;
  }

  v257 = v271 != 1;
  v258 = v290;
  v259 = [v290 domain];
  v260 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v262 = v261;

  v263 = v296;
  type metadata accessor for Signal();
  v264 = swift_allocObject();
  *(v264 + 16) = v89;
  *(v264 + 24) = v93;
  *(v264 + 32) = v99;
  *(v264 + 40) = v79;
  *(v264 + 48) = v272;
  *(v264 + 56) = v257;
  *(v264 + 64) = v260;
  *(v264 + 72) = v262;
  *(v264 + 80) = v254;
  *(v264 + 88) = v256;
  *(v264 + 96) = 1;
  *(v264 + 104) = v263;
}

unint64_t specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of Any((*(v10 + 56) + 32 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for Date();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for Date();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t PSEBiomeDonator.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v2 = [v1 PostSiriEngagement];
  swift_unknownObjectRelease();
  v3 = [v2 source];

  *(v0 + 16) = v3;
  return v0;
}

uint64_t PSEBiomeDonator.init()()
{
  v1 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v2 = [v1 PostSiriEngagement];
  swift_unknownObjectRelease();
  v3 = [v2 source];

  *(v0 + 16) = v3;
  return v0;
}

void PSEBiomeDonator.donatePSESignals(signals:siriTask:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = v2[2];
    if (v5)
    {
      v6 = a1;
      v7 = *(*a2 + 304);
      v78 = v5;
      v82[0] = v7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v8 = BidirectionalCollection<>.joined(separator:)();
      v10 = v9;

      v82[0] = (*(*a2 + 256))(v11);
      v12 = BidirectionalCollection<>.joined(separator:)();
      v14 = v13;

      v16 = (*(*a2 + 328))(v15);
LABEL_8:
      v79 = (*(*v3 + 104))(v16);

      (*(*v3 + 112))(v6);
      if (a2)
      {
        v72 = (*(*a2 + 160))();
        v19 = v18;
        v71 = (*(*a2 + 184))();
        v69 = v20;
        v70 = (*(*a2 + 280))();
        if (v10)
        {
          v22 = v8;
        }

        else
        {
          v22 = 0;
        }

        v23 = 0xE000000000000000;
        if (v10)
        {
          v24 = v10;
        }

        else
        {
          v24 = 0xE000000000000000;
        }

        if (v14)
        {
          v25 = v12;
        }

        else
        {
          v25 = 0;
        }

        v76 = v25;
        if (v14)
        {
          v23 = v14;
        }

        v67 = v21;
        v68 = v23;
        (*(*a2 + 232))();
        v26 = ((*(*a2 + 208))() + 16);
        v74 = v22;
        if (*v26)
        {
          v27 = &v26[2 * *v26];
          v73 = *v27;
          v75 = v27[1];
        }

        else
        {

          v73 = 0;
          v75 = 0;
        }

        v38 = v71;
        v39 = v72;
        v41 = v69;
        v35 = v70;
        v42 = v67;
        v40 = v68;
      }

      else
      {
        v35 = 0;
        if (v10)
        {
          v36 = v8;
        }

        else
        {
          v36 = 0;
        }

        v73 = 0;
        v74 = v36;
        v19 = 0xE000000000000000;
        if (v10)
        {
          v24 = v10;
        }

        else
        {
          v24 = 0xE000000000000000;
        }

        if (v14)
        {
          v37 = v12;
        }

        else
        {
          v37 = 0;
        }

        v75 = 0;
        v76 = v37;
        v38 = 0;
        v39 = 0;
        if (v14)
        {
          v40 = v14;
        }

        else
        {
          v40 = 0xE000000000000000;
        }

        v41 = 0xE000000000000000;
        v42 = 0xE000000000000000;
      }

      v81 = v79;
      v43 = MEMORY[0x25F8CDFC0](v39, v19);

      v44 = MEMORY[0x25F8CDFC0](v38, v41);

      v45 = MEMORY[0x25F8CDFC0](v35, v42);

      v46 = MEMORY[0x25F8CDFC0](v74, v24);

      v47 = MEMORY[0x25F8CDFC0](v76, v40);

      v48.super.isa = Array._bridgeToObjectiveC()().super.isa;

      type metadata accessor for BMSiriPostSiriEngagementSignal(0, &lazy cache variable for type metadata for BMSiriPostSiriEngagementSignal, 0x277CF1550);
      v49.super.isa = Array._bridgeToObjectiveC()().super.isa;

      if (v75)
      {
        v50 = MEMORY[0x25F8CDFC0](v73, v75);
      }

      else
      {
        v50 = 0;
      }

      v77 = [objc_allocWithZone(MEMORY[0x277CF1540]) initWithUISessionID:v43 taskID:v44 taskType:v45 conversationPath:v46 appPattern:v47 requestIds:v48.super.isa engagementUnderstandingFeatures:v81 pseEvents:v49.super.isa clientSessionId:0 lastRequestId:v50 executionUUID:0];

      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Logger.engagement);

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v82[0] = v55;
        *v54 = 136315138;
        if (a2)
        {
          v56 = (*(*a2 + 160))();
          v58 = v57;
        }

        else
        {
          v56 = 0;
          v58 = 0xE000000000000000;
        }

        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v82);

        *(v54 + 4) = v59;
        _os_log_impl(&dword_25ECEC000, v52, v53, "Biome donation of PSE signals with SiriExecutionTask within a UISession: %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x25F8CEE50](v55, -1, -1);
        MEMORY[0x25F8CEE50](v54, -1, -1);
      }

      [v78 sendEvent_];
      return;
    }

LABEL_22:
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.engagement);

    v80 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v80, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v82[0] = v31;
      *v30 = 136315138;
      if (a2)
      {
        v32 = (*(*a2 + 160))();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0xE000000000000000;
      }

      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, v82);

      *(v30 + 4) = v60;
      _os_log_impl(&dword_25ECEC000, v80, v29, "nil biomePSESource, unable to donate PSE signals with SiriExecutionTask within a UISession:  %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x25F8CEE50](v31, -1, -1);
      MEMORY[0x25F8CEE50](v30, -1, -1);

      return;
    }

    goto LABEL_62;
  }

  if (a1 >> 62)
  {
    v61 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v61 = a1;
    }

    v62 = a1;
    v63 = MEMORY[0x25F8CE500](v61);
    a1 = v62;
    if (v63 >= 1)
    {
LABEL_6:
      v17 = v3[2];
      if (v17)
      {
        v6 = a1;
        v78 = v17;
        v16 = 0;
        v12 = 0;
        v14 = 0;
        v8 = 0;
        v10 = 0;
        goto LABEL_8;
      }

      goto LABEL_22;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  __swift_project_value_buffer(v64, static Logger.engagement);
  v80 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v80, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_25ECEC000, v80, v65, "both SiriExecutionTask and PSE signals are nil, nothing to donate to Biome", v66, 2u);
    MEMORY[0x25F8CEE50](v66, -1, -1);
  }

LABEL_62:
}

id PSEBiomeDonator.createEngagementUnderstandingFeatures(engagementFeatures:)(uint64_t a1)
{
  if (a1)
  {
    v3 = (*(*a1 + 104))(a1);
  }

  else
  {
    v3 = 5;
  }

  v4 = (*(*v1 + 120))(v3);
  if (a1)
  {
    (*(*a1 + 184))();
    v5.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
    (*(*a1 + 192))();
    v6.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
    (*(*a1 + 200))();
    v7.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
    (*(*a1 + 208))();
    v8.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
    (*(*a1 + 216))();
    v9.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
    (*(*a1 + 224))();
    v10.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
    (*(*a1 + 232))();
    v11.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  else
  {
    v11.super.super.isa = 0;
    v10.super.super.isa = 0;
    v9.super.super.isa = 0;
    v8.super.super.isa = 0;
    v7.super.super.isa = 0;
    v6.super.super.isa = 0;
    v5.super.super.isa = 0;
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CF1548]) initWithTaskSuccess:v4 isUserAbandoned:v5.super.super.isa isUserCancelled:v6.super.super.isa isSiriCompleted:v7.super.super.isa isPromptInteraction:v8.super.super.isa isConfirmInteraction:v9.super.super.isa isDisambiguateInteraction:v10.super.super.isa isUnsupportedPromptInteraction:v11.super.super.isa];

  return v12;
}

uint64_t PSEBiomeDonator.createBiomePSESignal(signals:)(unint64_t a1)
{
  v73 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_70;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v60 = a1 + 32;
    v61 = a1 & 0xFFFFFFFFFFFFFF8;
    v65 = a1 & 0xC000000000000001;
    v62 = a1;
    v64 = v1;
    while (1)
    {
      if (v65)
      {
        a1 = MEMORY[0x25F8CE460](v3, v62);
        v4 = a1;
        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (v3 >= *(v61 + 16))
        {
          goto LABEL_69;
        }

        v4 = *(v60 + 8 * v3);

        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          v58 = a1;
          if ((a1 & 0x8000000000000000) == 0)
          {
            a1 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v1 = MEMORY[0x25F8CE500](a1);
          a1 = v58;
          goto LABEL_3;
        }
      }

      v6 = *(*v4 + 120);
      v7 = v6(&v71);
      v8 = MEMORY[0x25F8CE240](v7, v72);
      v9 = v6(v70);
      v10 = MEMORY[0x25F8CE240](v9, *(v70 + 1));
      v67 = v6;
      v11 = v6(v69);
      v12 = MEMORY[0x25F8CE240](v11, *&v69[2]);
      v66 = [objc_allocWithZone(MEMORY[0x277CF1560]) initWithDuration:v8 sinceUIEnd:v10 sinceUIStart:v12];

      v69[0] = v2;
      v63 = *(*v4 + 216);
      a1 = v63();
      v13 = a1;
      v14 = 0;
      v15 = a1 + 64;
      v16 = 1 << *(a1 + 32);
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v18 = v17 & *(a1 + 64);
      v19 = (v16 + 63) >> 6;
      while (v18)
      {
LABEL_20:
        v21 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v22 = (*(v13 + 48) + ((v14 << 10) | (16 * v21)));
        v23 = *v22;
        v24 = v22[1];
        if (*v22 != 0x73746361746E6F63 || v24 != 0xED000065756C6156)
        {
          a1 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((a1 & 1) == 0 && (v23 != 0xD000000000000013 || 0x800000025ED7F320 != v24))
          {
            a1 = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((a1 & 1) == 0 && (v23 != 0xD000000000000011 || 0x800000025ED7F340 != v24))
            {
              a1 = _stringCompareWithSmolCheck(_:_:expecting:)();
              if ((a1 & 1) == 0 && (v23 != 0xD000000000000010 || 0x800000025ED7F360 != v24))
              {
                a1 = _stringCompareWithSmolCheck(_:_:expecting:)();
                if ((a1 & 1) == 0 && (v23 != 0xD000000000000018 || 0x800000025ED7FAD0 != v24))
                {
                  a1 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v28 = v23 == 0xD000000000000018 && 0x800000025ED7FAF0 == v24;
                  v29 = v28;
                  if ((a1 & 1) == 0 && !v29)
                  {
                    a1 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    if ((a1 & 1) == 0 && (v23 != 0x7265755172657375 || v24 != 0xE900000000000079))
                    {
                      a1 = _stringCompareWithSmolCheck(_:_:expecting:)();
                      if ((a1 & 1) == 0 && (v23 != 0x6169726574697263 || v24 != 0xE800000000000000))
                      {
                        a1 = _stringCompareWithSmolCheck(_:_:expecting:)();
                        if ((a1 & 1) == 0)
                        {

                          v31 = (v63)(v30);
                          if (*(v31 + 16) && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24), (v33 & 1) != 0))
                          {
                            outlined init with copy of Any(*(v31 + 56) + 32 * v32, v70);

                            outlined init with take of Any(v70, &v71);
                          }

                          else
                          {

                            v72 = MEMORY[0x277D837D0];
                            *&v71 = 0;
                            *(&v71 + 1) = 0xE000000000000000;
                          }

                          outlined init with copy of Any(&v71, v70);
                          v59 = String.init<A>(describing:)();
                          v35 = v34;
                          v68 = objc_allocWithZone(MEMORY[0x277CF1558]);
                          v36 = MEMORY[0x25F8CDFC0](v23, v24);

                          v37 = MEMORY[0x25F8CDFC0](v59, v35);

                          v38 = [v68 initWithKey:v36 value:v37];

                          v39 = v38;
                          MEMORY[0x25F8CE160]();
                          if (*((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                          {
                            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                          }

                          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                          a1 = __swift_destroy_boxed_opaque_existential_0(&v71);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      while (1)
      {
        v20 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
          goto LABEL_68;
        }

        if (v20 >= v19)
        {
          break;
        }

        v18 = *(v15 + 8 * v20);
        ++v14;
        if (v18)
        {
          v14 = v20;
          goto LABEL_20;
        }
      }

      v41 = (*(*v4 + 144))(v40);
      v43 = v42;
      v44 = (*(*v4 + 168))();
      v46 = v45;
      (*(*v4 + 192))();
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v48 = v66;
      v49 = v67(&v71);
      v50 = MEMORY[0x25F8CE240](v49, *&v71);
      v51 = objc_allocWithZone(MEMORY[0x277CF1550]);
      v52 = MEMORY[0x25F8CDFC0](v41, v43);

      v53 = MEMORY[0x25F8CDFC0](v44, v46);

      type metadata accessor for BMSiriPostSiriEngagementSignal(0, &lazy cache variable for type metadata for BMSiriPostSiriEngagementSignalContent, 0x277CF1558);
      v54 = Array._bridgeToObjectiveC()().super.isa;

      v55 = [v51 initWithDomain:v52 action:v53 isPostSiriEngagement:isa pseDelta:v48 pseContents:v54 donatedTimestamp:v50];

      v56 = v55;
      MEMORY[0x25F8CE160]();
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v2 = MEMORY[0x277D84F90];
      if (v3 == v64)
      {
        return v73;
      }
    }
  }

  return v2;
}

uint64_t PSEBiomeDonator.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t type metadata accessor for BMSiriPostSiriEngagementSignal(uint64_t a1, unint64_t *a2, void *a3)
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

void MessagesIntentSignalFactory.convertBmEventToSignal(bmEvent:siriUISession:)(void *a1, uint64_t a2)
{
  v272 = a2;
  v269 = type metadata accessor for Date();
  v267 = *(v269 - 8);
  v3 = MEMORY[0x28223BE20](v269);
  v270 = &v246 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v265 = &v246 - v6;
  MEMORY[0x28223BE20](v5);
  v266 = &v246 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v262 = &v246 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v263 = &v246 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v264 = &v246 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v268 = &v246 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v246 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v246 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v246 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v246 - v26;
  v28 = type metadata accessor for ReliabilityCategory();
  v29 = *(v28 - 1);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v246 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x25F8CE7F0](v30);
  v34 = v271;
  closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(a1, v274, &v275);
  if (v34)
  {
    objc_autoreleasePoolPop(v33);
    return;
  }

  v251 = v32;
  v257 = v29;
  v258 = v28;
  v252 = v27;
  v253 = v25;
  v254 = v22;
  v255 = v19;
  v260 = a1;
  v256 = 0;
  objc_autoreleasePoolPop(v33);
  v259 = v275;
  v271 = [v275 intent];
  v35 = [v271 domain];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  if (v36 == 0x736567617373654DLL && v38 == 0xE800000000000000)
  {

    v39 = v260;
  }

  else
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v39 = v260;
    if ((v40 & 1) == 0)
    {
      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      __swift_project_value_buffer(v60, static Logger.engagement);
      *&v275 = 0;
      *(&v275 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      MEMORY[0x25F8CE090](0xD000000000000012, 0x800000025ED7F2D0);
      v61 = [v271 domain];
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      MEMORY[0x25F8CE090](v62, v64);

      MEMORY[0x25F8CE090](0xD000000000000027, 0x800000025ED7FB50);
      v65 = v275;
      v66 = *MEMORY[0x277D616E0];
      v67 = type metadata accessor for AppIntentEventDataIssues();
      v68 = v251;
      (*(*(v67 - 8) + 104))(v251, v66, v67);
      v69 = v257;
      v70 = v258;
      (v257)[13](v68, *MEMORY[0x277D61678], v258);

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *&v275 = v74;
        *v73 = 136315138;
        *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, *(&v65 + 1), &v275);
        _os_log_impl(&dword_25ECEC000, v71, v72, "%s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v74);
        MEMORY[0x25F8CEE50](v74, -1, -1);
        MEMORY[0x25F8CEE50](v73, -1, -1);
      }

      type metadata accessor for SiriTaskEngagementUtils();
      v75 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
      MEMORY[0x25F8CDB30](v68, v75, v76);

      (v69[1])(v68, v70);
      return;
    }
  }

  if ([v39 interactionDirection] != 2)
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logger.engagement);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_25ECEC000, v57, v58, "Drop received Messages Intents.", v59, 2u);
      MEMORY[0x25F8CEE50](v59, -1, -1);
    }

    return;
  }

  v41 = [v39 donatedBySiri];
  v42 = MEMORY[0x277D839B0];
  v276 = MEMORY[0x277D839B0];
  LOBYTE(v275) = v41;
  outlined init with take of Any(&v275, v274);
  v43 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v277 = v43;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v274, 0x42646574616E6F64, 0xED00006972695379, isUniquelyReferenced_nonNull_native);
  v45 = v277;
  v46 = [v271 typeName];
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  v276 = MEMORY[0x277D837D0];
  *&v275 = v47;
  *(&v275 + 1) = v49;
  outlined init with take of Any(&v275, v274);
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v273 = v45;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v274, 0x7954746E65746E69, 0xEE00656D614E6570, v50);
  v277 = v273;
  v51 = [v39 bundleID];
  if (v51)
  {
    v52 = v51;
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0xE000000000000000;
  }

  *&v275 = v53;
  *(&v275 + 1) = v55;
  *&v274[0] = 0x6C7070612E6D6F63;
  *(&v274[0] + 1) = 0xEA00000000002E65;
  lazy protocol witness table accessor for type String and conformance String();
  v77 = MEMORY[0x277D837D0];
  v78 = StringProtocol.contains<A>(_:)();

  v276 = v42;
  LOBYTE(v275) = v78 & 1;
  outlined init with take of Any(&v275, v274);
  v79 = v277;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v273 = v79;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v274, 0xD000000000000016, 0x800000025ED7E770, v80);
  v81 = v273;
  v82 = [v260 interactionDirection];
  type metadata accessor for BMAppIntentInteractionDirection(0);
  v276 = v83;
  LODWORD(v275) = v82;
  outlined init with take of Any(&v275, v274);
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v273 = v81;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v274, 0xD000000000000014, 0x800000025ED7FB80, v84);
  v85 = v273;
  v277 = v273;
  v86 = [v259 intentResponse];
  v87 = v272;
  if (!v86)
  {
    goto LABEL_44;
  }

  v88 = v86;
  v89 = [v86 _intentResponseCode];
  v90 = (*(*v261 + 104))(v89);
  v276 = v77;
  *&v275 = v90;
  *(&v275 + 1) = v91;
  outlined init with take of Any(&v275, v274);
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v273 = v85;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v274, 0xD000000000000012, 0x800000025ED7FBC0, v92);
  v277 = v273;
  objc_opt_self();
  v93 = swift_dynamicCastObjCClass();
  if (v93)
  {
    v94 = [v93 sentMessages];
    if (v94)
    {
      v95 = v94;
      type metadata accessor for INMessage();
      v96 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v96 >> 62)
      {
        if (v96 < 0)
        {
          v115 = v96;
        }

        else
        {
          v115 = v96 & 0xFFFFFFFFFFFFFF8;
        }

        if (MEMORY[0x25F8CE500](v115))
        {
          v261 = MEMORY[0x25F8CE500](v115);
          if (!v261)
          {
            v258 = v88;

            v100 = MEMORY[0x277D84F90];
LABEL_36:
            v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            *&v275 = v100;
            outlined init with take of Any(&v275, v274);
            v113 = v277;
            v114 = swift_isUniquelyReferenced_nonNull_native();
            v273 = v113;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v274, 0xD000000000000018, 0x800000025ED7FAD0, v114);

            v277 = v273;
            goto LABEL_44;
          }

LABEL_26:
          v258 = v88;
          *&v274[0] = MEMORY[0x277D84F90];
          v97 = v261;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v97 & ~(v97 >> 63), 0);
          if (v97 < 0)
          {
            __break(1u);
            goto LABEL_115;
          }

          v99 = 0;
          v100 = *&v274[0];
          v101 = v96;
          v102 = v96 & 0xC000000000000001;
          v103 = v101;
          do
          {
            if (v102)
            {
              v104 = MEMORY[0x25F8CE460](v99);
            }

            else
            {
              v104 = *(v101 + 8 * v99 + 32);
            }

            v105 = v104;
            v106 = [v104 identifier];
            v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v109 = v108;

            *&v274[0] = v100;
            v111 = *(v100 + 16);
            v110 = *(v100 + 24);
            if (v111 >= v110 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1);
              v100 = *&v274[0];
            }

            ++v99;
            *(v100 + 16) = v111 + 1;
            v112 = v100 + 16 * v111;
            *(v112 + 32) = v107;
            *(v112 + 40) = v109;
            v87 = v272;
            v101 = v103;
          }

          while (v261 != v99);

          goto LABEL_36;
        }
      }

      else
      {
        v261 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v261)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_44;
    }
  }

LABEL_44:
  v116 = [v271 parametersByName];
  v88 = v270;
  if (!v116)
  {
    goto LABEL_93;
  }

  v117 = v116;
  v118 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v118 + 16))
  {
    goto LABEL_92;
  }

  v119 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E65697069636572, 0xEA00000000007374);
  if ((v120 & 1) == 0)
  {
    goto LABEL_92;
  }

  outlined init with copy of Any(*(v118 + 56) + 32 * v119, &v275);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_93:
    v123 = MEMORY[0x277D84F90];
    v243 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
    v242 = MEMORY[0x277D84F90];
LABEL_94:
    v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v276 = v177;
    *&v275 = v242;
    outlined init with take of Any(&v275, v274);
    v178 = v277;
    v179 = swift_isUniquelyReferenced_nonNull_native();
    v273 = v178;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v274, 0x73746361746E6F63, 0xED000065756C6156, v179);
    v180 = v273;
    v276 = v177;
    *&v275 = v124;
    outlined init with take of Any(&v275, v274);
    v181 = swift_isUniquelyReferenced_nonNull_native();
    v273 = v180;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v274, 0xD000000000000013, 0x800000025ED7F320, v181);
    v182 = v273;
    v276 = v177;
    *&v275 = v243;
    outlined init with take of Any(&v275, v274);
    v183 = swift_isUniquelyReferenced_nonNull_native();
    v273 = v182;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v274, 0xD000000000000011, 0x800000025ED7F340, v183);
    v184 = v273;
    v276 = v177;
    *&v275 = v123;
    outlined init with take of Any(&v275, v274);
    v185 = swift_isUniquelyReferenced_nonNull_native();
    v273 = v184;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v274, 0xD000000000000010, 0x800000025ED7F360, v185);
    v186 = v273;
    v277 = v273;
    objc_opt_self();
    v187 = swift_dynamicCastObjCClass();
    v188 = v265;
    v189 = v267;
    if (!v187)
    {
      goto LABEL_103;
    }

    v190 = [v271 parametersByName];
    if (v190)
    {
      v191 = v190;
      v192 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v192 + 16) && (v193 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x800000025ED7FBA0), (v194 & 1) != 0))
      {
        outlined init with copy of Any(*(v192 + 56) + 32 * v193, &v275);

        if (swift_dynamicCast())
        {
          v276 = v177;
          *&v275 = *&v274[0];
          outlined init with take of Any(&v275, v274);
          v195 = swift_isUniquelyReferenced_nonNull_native();
          v273 = v186;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v274, 0xD000000000000018, 0x800000025ED7FAF0, v195);
          v277 = v273;
LABEL_102:
          v88 = v270;
LABEL_103:
          v196 = [v260 absoluteTimestamp];
          if (v196)
          {
            v197 = v268;
            v198 = v196;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v199 = 0;
          }

          else
          {
            v199 = 1;
            v197 = v268;
          }

          v200 = v262;
          v201 = 1;
          (*(v189 + 56))(v197, v199, 1, v269);
          v202 = [v259 dateInterval];
          if (v202)
          {
            v203 = v202;
            static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

            v201 = 0;
          }

          v204 = type metadata accessor for DateInterval();
          v205 = *(v204 - 8);
          (*(v205 + 56))(v200, v201, 1, v204);
          v206 = v263;
          outlined init with take of DateInterval?(v200, v263, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
          v207 = 0;
          if (!(*(v205 + 48))(v206, 1, v204))
          {
            DateInterval.duration.getter();
            v207 = v208;
          }

          outlined destroy of Date?(v206, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
          v209 = *(v189 + 16);
          v210 = v266;
          v211 = v269;
          v209(v266, v87, v269);
          v212 = type metadata accessor for SiriUISession(0);
          v209(v188, v87 + *(v212 + 20), v211);
          v213 = v268;
          v214 = v264;
          outlined init with copy of Date?(v268, v264);
          v215 = (*(v189 + 48))(v214, 1, v211);
          if (v215 == 1)
          {
            v229 = *(v189 + 8);
            v229(v188, v211);
            v229(v210, v211);
            outlined destroy of Date?(v213, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            outlined destroy of Date?(v214, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            v227 = 0x3FF0000000000000;
            v217 = 0;
            v221 = 0.0;
            v228 = 0.0;
            v207 = 0;
          }

          else
          {
            (*(v189 + 32))(v88, v214, v211);
            Date.timeIntervalSinceReferenceDate.getter();
            v217 = v216;
            Date.timeIntervalSinceReferenceDate.getter();
            v219 = v218;
            Date.timeIntervalSinceReferenceDate.getter();
            v221 = v219 - v220;
            Date.timeIntervalSinceReferenceDate.getter();
            v223 = v222;
            Date.timeIntervalSinceReferenceDate.getter();
            v225 = v224;
            v226 = *(v189 + 8);
            v226(v88, v211);
            v226(v188, v211);
            v226(v210, v211);
            outlined destroy of Date?(v213, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            v227 = 0;
            v228 = v223 - v225;
          }

          v230 = v215 != 1;
          v231 = v271;
          v232 = [v271 domain];
          v233 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v235 = v234;

          v236 = [v231 verb];
          v237 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v239 = v238;

          v240 = v277;
          type metadata accessor for Signal();
          v241 = swift_allocObject();
          *(v241 + 16) = v217;
          *(v241 + 24) = v221;
          *(v241 + 32) = v228;
          *(v241 + 40) = v207;
          *(v241 + 48) = v227;
          *(v241 + 56) = v230;
          *(v241 + 64) = v233;
          *(v241 + 72) = v235;
          *(v241 + 80) = v237;
          *(v241 + 88) = v239;
          *(v241 + 96) = 1;
          *(v241 + 104) = v240;
          return;
        }
      }

      else
      {
      }
    }

    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000018, 0x800000025ED7FAF0, &v275);
    outlined destroy of Date?(&v275, &_sypSgMd, &_sypSgMR);
    goto LABEL_102;
  }

  v98 = *&v274[0];
  if (*&v274[0] >> 62)
  {
LABEL_115:
    if (v98 < 0)
    {
      v244 = v98;
    }

    else
    {
      v244 = v98 & 0xFFFFFFFFFFFFFF8;
    }

    v245 = v98;
    v121 = MEMORY[0x25F8CE500](v244);
    v98 = v245;
    if (v121)
    {
      goto LABEL_50;
    }

    goto LABEL_92;
  }

  v121 = *((*&v274[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v121)
  {
LABEL_92:

    goto LABEL_93;
  }

LABEL_50:
  if (v121 >= 1)
  {
    v122 = 0;
    v123 = MEMORY[0x277D84F90];
    v246 = v98 & 0xC000000000000001;
    v258 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
    v261 = MEMORY[0x277D84F90];
    v248 = v98;
    v247 = v121;
    while (1)
    {
      if (v246)
      {
        v125 = MEMORY[0x25F8CE460](v122);
      }

      else
      {
        v125 = *(v98 + 8 * v122 + 32);
      }

      v126 = v125;
      v127 = v253;
      v128 = v252;
      v129 = [v125 personHandle];
      if (v129 && (v130 = v129, v131 = [v129 value], v130, v131))
      {
        v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v134 = v133;
      }

      else
      {
        v132 = 0;
        v134 = 0xE000000000000000;
      }

      v135 = swift_isUniquelyReferenced_nonNull_native();
      v249 = v122;
      if ((v135 & 1) == 0)
      {
        v261 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v261 + 2) + 1, 1, v261);
      }

      v137 = *(v261 + 2);
      v136 = *(v261 + 3);
      if (v137 >= v136 >> 1)
      {
        v261 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v136 > 1), v137 + 1, 1, v261);
      }

      v138 = v261;
      *(v261 + 2) = v137 + 1;
      v139 = &v138[16 * v137];
      *(v139 + 4) = v132;
      *(v139 + 5) = v134;
      v140 = [v126 displayName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v141 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
      v143 = v142;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v124 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v124 + 2) + 1, 1, v124);
      }

      v145 = *(v124 + 2);
      v144 = *(v124 + 3);
      if (v145 >= v144 >> 1)
      {
        v124 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v144 > 1), v145 + 1, 1, v124);
      }

      *(v124 + 2) = v145 + 1;
      v146 = &v124[16 * v145];
      *(v146 + 4) = v141;
      *(v146 + 5) = v143;
      v147 = [v126 nameComponents];
      v251 = v123;
      v250 = v124;
      v257 = v126;
      if (v147)
      {
        v148 = v147;
        static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v149 = 0;
      }

      else
      {
        v149 = 1;
      }

      v150 = type metadata accessor for PersonNameComponents();
      v151 = *(v150 - 8);
      v152 = *(v151 + 56);
      v152(v127, v149, 1, v150);
      outlined init with take of DateInterval?(v127, v128, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
      v153 = *(v151 + 48);
      if (v153(v128, 1, v150))
      {
        break;
      }

      PersonNameComponents.givenName.getter();
      v155 = v154;
      outlined destroy of Date?(v128, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
      if (!v155)
      {
        goto LABEL_72;
      }

LABEL_74:
      v156 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
      v158 = v157;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v159 = v258;
      }

      else
      {
        v159 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v258 + 2) + 1, 1, v258);
      }

      v161 = *(v159 + 2);
      v160 = *(v159 + 3);
      if (v161 >= v160 >> 1)
      {
        v159 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v160 > 1), v161 + 1, 1, v159);
      }

      *(v159 + 2) = v161 + 1;
      v258 = v159;
      v162 = &v159[16 * v161];
      *(v162 + 4) = v156;
      *(v162 + 5) = v158;
      v163 = [v257 nameComponents];
      if (v163)
      {
        v164 = v255;
        v165 = v163;
        static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v166 = 0;
      }

      else
      {
        v166 = 1;
        v164 = v255;
      }

      v152(v164, v166, 1, v150);
      v167 = v254;
      outlined init with take of DateInterval?(v164, v254, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
      if (v153(v167, 1, v150))
      {
        outlined destroy of Date?(v167, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
        v168 = v272;
        v123 = v251;
      }

      else
      {
        PersonNameComponents.familyName.getter();
        v170 = v169;
        outlined destroy of Date?(v167, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
        v168 = v272;
        v123 = v251;
        if (v170)
        {
          goto LABEL_85;
        }
      }

LABEL_85:
      v124 = v250;
      v171 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
      v173 = v172;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v123 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v123 + 2) + 1, 1, v123);
      }

      v175 = *(v123 + 2);
      v174 = *(v123 + 3);
      if (v175 >= v174 >> 1)
      {
        v123 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v174 > 1), v175 + 1, 1, v123);
      }

      v122 = v249 + 1;

      *(v123 + 2) = v175 + 1;
      v176 = &v123[16 * v175];
      *(v176 + 4) = v171;
      *(v176 + 5) = v173;
      v88 = v270;
      v98 = v248;
      if (v247 == v122)
      {

        v242 = v261;
        v243 = v258;
        v87 = v168;
        goto LABEL_94;
      }
    }

    outlined destroy of Date?(v128, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
LABEL_72:

    goto LABEL_74;
  }

  __break(1u);
}

void MessagesIntentSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v76 = a2;
  v54 = a3;
  v78 = type metadata accessor for ReliabilityCategory();
  v6 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v50 - v9;
  v11 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v57 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v56 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v55 = v50 - v16;
  v83 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_53;
  }

  v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17)
  {
LABEL_3:
    v61 = v14;
    v59 = v10;
    v18 = 0;
    v19 = (*v4 + 88);
    v74 = *v19;
    v73 = v19;
    v75 = a1 & 0xC000000000000001;
    v65 = a1 & 0xFFFFFFFFFFFFFF8;
    v64 = a1 + 32;
    v71 = "intentResponseCode";
    v70 = *MEMORY[0x277D615C0];
    v69 = *MEMORY[0x277D616A8];
    v68 = v6 + 104;
    v67 = v6 + 8;
    v58 = v57 + 56;
    v52 = (v57 + 48);
    v53 = (v57 + 32);
    v51 = (v57 + 16);
    v50[1] = v57 + 8;
    *&v15 = 136315138;
    v63 = v15;
    v60 = MEMORY[0x277D84F90];
    v79 = MEMORY[0x277D84F90];
    v66 = v4;
    v72 = v17;
    v62 = a1;
    while (1)
    {
      if (v75)
      {
        v14 = MEMORY[0x25F8CE460](v18, a1);
      }

      else
      {
        if (v18 >= *(v65 + 16))
        {
          goto LABEL_52;
        }

        v14 = *(v64 + 8 * v18);
      }

      v20 = v14;
      if (__OFADD__(v18++, 1))
      {
        goto LABEL_51;
      }

      v10 = v4;
      v14 = v74(v14, v76);
      v22 = v14;
      if (v14)
      {
        break;
      }

LABEL_4:
      if (v18 == v17)
      {
        goto LABEL_58;
      }
    }

    v6 = v79;
    if (v79 >> 62)
    {
      if (v79 < 0)
      {
        v37 = v79;
      }

      else
      {
        v37 = v79 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = MEMORY[0x25F8CE500](v37);
      v10 = v14;
      if (v14)
      {
LABEL_13:
        v23 = 0;
        v24 = v6 & 0xC000000000000001;
        v4 = (v6 & 0xFFFFFFFFFFFFFF8);
        do
        {
          if (v24)
          {
            v14 = MEMORY[0x25F8CE460](v23, v79);
            v6 = v14;
            a1 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              goto LABEL_49;
            }
          }

          else
          {
            if (v23 >= v4[2])
            {
              goto LABEL_50;
            }

            v6 = *(v79 + 8 * v23 + 32);

            a1 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              v46 = v14;
              if ((a1 & 0x8000000000000000) != 0)
              {
                v47 = a1;
              }

              else
              {
                v47 = a1 & 0xFFFFFFFFFFFFFF8;
              }

              v17 = MEMORY[0x25F8CE500](v47);
              v14 = v46;
              if (!v17)
              {
                goto LABEL_57;
              }

              goto LABEL_3;
            }
          }

          *&v81 = v6;
          if (closure #1 in MessagesIntentSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(&v81, v22))
          {
            v25 = (*(*v6 + 216))();
            if (*(v25 + 16) && (v26 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v27 & 1) != 0))
            {
              outlined init with copy of Any(*(v25 + 56) + 32 * v26, &v81);

              v28 = swift_dynamicCast();
              v4 = v66;
              a1 = v62;
              if (v28 && (v80[0] & 1) == 0)
              {
                *(&v82 + 1) = MEMORY[0x277D839B0];
                LOBYTE(v81) = 1;
                v29 = (*(*v6 + 232))(v80);
                v10 = v30;
                v31 = 0x42646574616E6F64;
                v32 = 0x6972695379;
LABEL_35:
                specialized Dictionary.subscript.setter(&v81, v31, v32 & 0xFFFFFFFFFFFFLL | 0xED00000000000000);
                v29(v80, 0);

                v17 = v72;
                goto LABEL_4;
              }
            }

            else
            {

              v4 = v66;
              a1 = v62;
            }

            v33 = (*(*v22 + 216))();
            if (*(v33 + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746361746E6F63, 0xED000065756C6156), (v35 & 1) != 0))
            {
              outlined init with copy of Any(*(v33 + 56) + 32 * v34, &v81);
            }

            else
            {

              v81 = 0u;
              v82 = 0u;
            }

            v29 = (*(*v6 + 232))(v80);
            v10 = v36;
            v31 = 0x73746361746E6F63;
            v32 = 0x65756C6156;
            goto LABEL_35;
          }

          ++v23;
        }

        while (a1 != v10);
      }
    }

    else
    {
      v10 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_13;
      }
    }

    MEMORY[0x25F8CE160](v38);
    a1 = v62;
    if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v79 = v83;
    v4 = v66;
    v6 = v59;
    v10 = v66;
    (*(*v66 + 80))(v20);
    v17 = v72;
    v39 = v61;
    if ((*v52)(v6, 1, v61) == 1)
    {

      v14 = outlined destroy of Date?(v6, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMR);
    }

    else
    {
      v10 = *v53;
      v40 = v55;
      (*v53)(v55, v6, v39);
      (*v51)(v56, v40, v39);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
      }

      v42 = v60[2];
      v41 = v60[3];
      v6 = v42 + 1;
      v17 = v72;
      if (v42 >= v41 >> 1)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v60);
      }

      v43 = v57;
      v44 = v61;
      (*(v57 + 8))(v55, v61);
      v45 = v60;
      v60[2] = v6;
      v14 = (v10)(v45 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v42, v56, v44);
    }

    goto LABEL_4;
  }

LABEL_57:
  v60 = MEMORY[0x277D84F90];
  v79 = MEMORY[0x277D84F90];
LABEL_58:
  v48 = v54;
  v49 = v60;
  *v54 = v79;
  v48[1] = v49;
}

BOOL closure #1 in MessagesIntentSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*(*a2 + 168))();
  v6 = v5;
  if (v4 == (*(*v3 + 168))() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = (*(*a2 + 216))(v10);
  if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x800000025ED7FB80), (v13 & 1) != 0))
  {
    outlined init with copy of Any(*(v11 + 56) + 32 * v12, v28);

    type metadata accessor for BMAppIntentInteractionDirection(0);
    v14 = swift_dynamicCast();
    if (v14)
    {
      v15 = LODWORD(v27[0]);
    }

    else
    {
      v15 = 0;
    }

    v16 = v14 ^ 1;
  }

  else
  {

    v15 = 0;
    v16 = 1;
  }

  v17 = (*(*v3 + 216))();
  if (*(v17 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x800000025ED7FB80), (v19 & 1) != 0))
  {
    outlined init with copy of Any(*(v17 + 56) + 32 * v18, v28);

    type metadata accessor for BMAppIntentInteractionDirection(0);
    v20 = swift_dynamicCast();
    v21 = LODWORD(v27[0]);
    if (!v20)
    {
      v21 = 0;
    }

    v22 = v20 ^ 1;
    if ((v16 & 1) == 0)
    {
LABEL_20:
      if (v15 == v21)
      {
        v23 = v22;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        return 0;
      }

LABEL_24:
      v24 = (*(*a2 + 120))(v28);
      v25 = *v28;
      (*(*v3 + 120))(v27, v24);
      return vabdd_f64(v25, v27[0]) < 2.0;
    }
  }

  else
  {

    v21 = 0;
    v22 = 1;
    if ((v16 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (v22)
  {
    goto LABEL_24;
  }

  return 0;
}

unint64_t type metadata accessor for INMessage()
{
  result = lazy cache variable for type metadata for INMessage;
  if (!lazy cache variable for type metadata for INMessage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INMessage);
  }

  return result;
}

uint64_t static TaskSuccessCalculator.calculateTaskSuccess(signals:task:)(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v78[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_52;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v76 = a2;
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x25F8CE460](v5, v2);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v11 = v78[0];
          v4 = MEMORY[0x277D84F90];
          goto LABEL_22;
        }
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          if (v2 < 0)
          {
            v23 = v2;
          }

          else
          {
            v23 = v2 & 0xFFFFFFFFFFFFFF8;
          }

          v24 = a2;
          v25 = MEMORY[0x25F8CE500](v23);
          a2 = v24;
          v3 = v25;
          goto LABEL_3;
        }

        v6 = *(v2 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_19;
        }
      }

      if ((*(*v6 + 144))() == 0x636E75614C707041 && v8 == 0xE900000000000068)
      {
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v10)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }
      }

      ++v5;
      if (v7 == v3)
      {
        goto LABEL_20;
      }
    }
  }

  v11 = MEMORY[0x277D84F90];
LABEL_22:
  v12 = v11 < 0 || (v11 & 0x4000000000000000) != 0;
  if (v12)
  {
    if (MEMORY[0x25F8CE500](v11) > 0 && MEMORY[0x25F8CE500](v11))
    {
LABEL_27:
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x25F8CE460](0, v11);
        v78[0] = v4;
        if (v12)
        {
LABEL_30:
          v13 = MEMORY[0x25F8CE500](v11);
          if (v13)
          {
LABEL_31:
            v14 = 0;
            while (1)
            {
              if ((v11 & 0xC000000000000001) != 0)
              {
                v15 = MEMORY[0x25F8CE460](v14, v11);
                v16 = v14 + 1;
                if (__OFADD__(v14, 1))
                {
                  goto LABEL_50;
                }
              }

              else
              {
                if (v14 >= *(v11 + 16))
                {
                  goto LABEL_51;
                }

                v15 = *(v11 + 8 * v14 + 32);

                v16 = v14 + 1;
                if (__OFADD__(v14, 1))
                {
                  goto LABEL_50;
                }
              }

              v17 = (*(*v15 + 144))();
              v19 = v18;
              if (v17 == (*(*v2 + 144))() && v19 == v20)
              {
                break;
              }

              v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v22)
              {
                goto LABEL_47;
              }

LABEL_33:
              ++v14;
              if (v16 == v13)
              {
                v3 = v78[0];
                goto LABEL_72;
              }
            }

LABEL_47:
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            goto LABEL_33;
          }

LABEL_71:
          v3 = MEMORY[0x277D84F90];
LABEL_72:

          v12 = v3 < 0 || (v3 & 0x4000000000000000) != 0;
          if (!v12)
          {
            v43 = *(v3 + 16);
            if (!v43)
            {
              goto LABEL_85;
            }

            goto LABEL_77;
          }

LABEL_130:
          v43 = MEMORY[0x25F8CE500](v3);
          if (!v43)
          {
LABEL_85:
            if (v12)
            {
              result = MEMORY[0x25F8CE500](v3);
              if (result != 1)
              {
                goto LABEL_87;
              }
            }

            else
            {
              result = *(v3 + 16);
              if (result != 1)
              {
LABEL_87:
                if (result < 2)
                {
                  goto LABEL_95;
                }

                v54 = (*(*v2 + 144))();
                v55 = v53;
                if (v54 == 0x736567617373654DLL && v53 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  v57 = (*(*v76 + 328))(v56);
                  v58 = v75[12](v3);
LABEL_94:
                  v59 = v58;

                  (*(*v57 + 112))(v59);
LABEL_95:

                  goto LABEL_96;
                }

                if (v54 == 1936744781 && v55 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  v57 = (*(*v76 + 328))(v68);
                  v58 = v75[13](v3);
                  goto LABEL_94;
                }

                if (v54 == 0x6D72616C41 && v55 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  v57 = (*(*v76 + 328))(v69);
                  v58 = v75[14](v3);
                  goto LABEL_94;
                }

                if (v54 == 0x636973754DLL && v55 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  v57 = (*(*v76 + 328))(v70);
                  v58 = v75[15](v3);
                  goto LABEL_94;
                }

                if (v54 == 0x6E65746E49707041 && v55 == 0xE900000000000074)
                {

LABEL_135:
                  v57 = (*(*v76 + 328))(v71);
                  v58 = v75[16](v3);
                  goto LABEL_94;
                }

LABEL_134:
                v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v72 & 1) == 0)
                {

                  v74 = (*(*v76 + 328))(v73);
                  (*(*v74 + 112))(2);
                  goto LABEL_95;
                }

                goto LABEL_135;
              }
            }

            if (v43)
            {
              if ((v3 & 0xC000000000000001) != 0)
              {
                v60 = MEMORY[0x25F8CE460](0, v3);
              }

              else
              {
                if (!*(v3 + 16))
                {
                  __break(1u);
                  return result;
                }

                v60 = *(v3 + 32);
              }

              v62 = v76;
              v63 = (*(*v60 + 216))(v61);

              if (*(v63 + 16) && (v64 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v65 & 1) != 0))
              {
                outlined init with copy of Any(*(v63 + 56) + 32 * v64, v78);

                if ((swift_dynamicCast() & 1) != 0 && (v77 & 1) == 0)
                {
                  v66 = *(*(*(*v76 + 328))() + 112);
                  v66(4);
LABEL_113:
                }
              }

              else
              {
              }
            }

            else
            {

              v62 = v76;
            }

            v67 = *(*(*(*v62 + 328))() + 112);
            v67(3);
            goto LABEL_113;
          }

LABEL_77:
          if ((v3 & 0xC000000000000001) != 0)
          {
            v45 = MEMORY[0x25F8CE460](0, v3);
            v44 = v45;
          }

          else
          {
            if (!*(v3 + 16))
            {
              __break(1u);
              goto LABEL_134;
            }

            v44 = *(v3 + 32);
          }

          v46 = (*(*v44 + 144))(v45);
          v48 = v47;

          if (v46 == 0x736C6C6143 && v48 == 0xE500000000000000)
          {
          }

          else
          {
            v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v50 & 1) == 0)
            {
              goto LABEL_85;
            }
          }

          v57 = (*(*v76 + 328))(v51);
          v58 = v75[11](v3);
          goto LABEL_94;
        }
      }

      else
      {
        if (!*(v11 + 16))
        {
          __break(1u);
          goto LABEL_130;
        }

        v2 = *(v11 + 32);

        v78[0] = v4;
        if (v12)
        {
          goto LABEL_30;
        }
      }

      v13 = *(v11 + 16);
      if (v13)
      {
        goto LABEL_31;
      }

      goto LABEL_71;
    }
  }

  else if (*(v11 + 16))
  {
    goto LABEL_27;
  }

  v27 = (*v76 + 328);
  v28 = *v27;
  v29 = (*v27)(v26);
  v30 = (*(*v29 + 200))(v29);

  v32 = *v28(v31);
  if (v30)
  {
    (*(v32 + 112))(3);
  }

  else
  {
    v33 = (*(v32 + 240))();

    if ((v33 & 1) == 0)
    {
      v35 = v28(v34);
      v36 = (*(*v35 + 192))(v35);

      if ((v36 & 1) == 0)
      {
        v37 = v28(v34);
        v38 = (*(*v37 + 184))(v37);

        if ((v38 & 1) == 0)
        {
          if ((*(*v76 + 280))(v34) == 0xD000000000000014 && 0x800000025ED7FA70 == v39)
          {
          }

          else
          {
            v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v40 & 1) == 0)
            {
              v42 = *(*v28(v34) + 112);
              v42(1);
              goto LABEL_96;
            }
          }
        }
      }
    }

    v41 = *(*v28(v34) + 112);
    v41(4);
  }

LABEL_96:
}

unint64_t static TaskSuccessCalculator.calculateCallsTaskSuccess(callSignals:)(unint64_t result)
{
  if (result >> 62)
  {
    v13 = result & 0xFFFFFFFFFFFFFF8;
    if ((result & 0x8000000000000000) != 0)
    {
      v13 = result;
    }

    v14 = result;
    v15 = MEMORY[0x25F8CE500](v13);
    result = v14;
    if (!v15)
    {
      return 4;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 4;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x25F8CE460](0, result);
    v1 = v2;
LABEL_6:
    v3 = *(*v1 + 216);
    v4 = (v3)(v2);
    if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v6 & 1) != 0))
    {
      outlined init with copy of Any(*(v4 + 56) + 32 * v5, v17);

      if ((swift_dynamicCast() & 1) != 0 && LOBYTE(v16) == 1)
      {
        v7 = v3();
        if (*(v7 + 16))
        {
          v8 = specialized __RawDictionaryStorage.find<A>(_:)(0x617275446C6C6163, 0xEC0000006E6F6974);
          if (v9)
          {
            outlined init with copy of Any(*(v7 + 56) + 32 * v8, v17);

            if ((swift_dynamicCast() & 1) == 0 || v16 != 0.0)
            {
              goto LABEL_24;
            }

            v10 = v3();
            if (*(v10 + 16))
            {
              v11 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x800000025ED7F380);
              if (v12)
              {
                outlined init with copy of Any(*(v10 + 56) + 32 * v11, v17);

                if ((swift_dynamicCast() & 1) == 0 || v16 < 0.0 || v16 >= 2.0)
                {
                  return 3;
                }

                return 4;
              }
            }
          }
        }

LABEL_24:

        return 3;
      }
    }

    else
    {
    }

    return 4;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t static TaskSuccessCalculator.calculateMessagesTaskSuccess(messageSignals:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v20 = a1;
    }

    v21 = a1;
    v22 = MEMORY[0x25F8CE500](v20);
    a1 = v21;
    if (!v22)
    {
      return 4;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 4;
  }

  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = a1;
    v6 = MEMORY[0x25F8CE460](0);
    v5 = v6;
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_34;
    }

    v1 = a1;
    v5 = *(a1 + 32);
  }

  v3 = *(*v5 + 216);
  v7 = (v3)(v6);
  if (!*(v7 + 16) || (v8 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v9 & 1) == 0))
  {

    goto LABEL_13;
  }

  outlined init with copy of Any(*(v7 + 56) + 32 * v8, v36);

  result = swift_dynamicCast();
  if ((result & 1) == 0 || v35 != 1)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v11 = MEMORY[0x25F8CE460](1, v1);
LABEL_17:
    v12 = (*(*v11 + 216))();

    if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v14 & 1) != 0))
    {
      outlined init with copy of Any(*(v12 + 56) + 32 * v13, v36);

      if ((swift_dynamicCast() & 1) != 0 && (v35 & 1) == 0)
      {
        v15 = v3();
        if (!*(v15 + 16) || (v16 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x800000025ED7FAD0), (v17 & 1) == 0))
        {
LABEL_45:

          goto LABEL_46;
        }

        outlined init with copy of Any(*(v15 + 56) + 32 * v16, v36);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        v18 = swift_dynamicCast();
        if ((v18 & 1) == 0)
        {
LABEL_46:
          v27 = (v3)(v18);
          if (*(v27 + 16))
          {
            v28 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746361746E6F63, 0xED000065756C6156);
            if (v29)
            {
              outlined init with copy of Any(*(v27 + 56) + 32 * v28, v36);

              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
              if ((swift_dynamicCast() & 1) == 0)
              {
LABEL_62:

                return 3;
              }

              if (v4)
              {
                v30 = MEMORY[0x25F8CE460](1, v1);
              }

              else
              {
                v30 = *(v1 + 40);
              }

              v31 = (*(*v30 + 216))();

              if (!*(v31 + 16) || (v32 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746361746E6F63, 0xED000065756C6156), (v33 & 1) == 0))
              {

                return 3;
              }

              outlined init with copy of Any(*(v31 + 56) + 32 * v32, v36);

              if (swift_dynamicCast())
              {
                if (*(v35 + 16))
                {
                  v34 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v35, v35);

                  if ((v34 & 1) == 0)
                  {
                    return 3;
                  }

                  return 4;
                }
              }
            }
          }

          goto LABEL_62;
        }

        v2 = v35;
        if (v4)
        {
          v19 = MEMORY[0x25F8CE460](1, v1);
LABEL_35:
          v23 = (*(*v19 + 216))();

          if (*(v23 + 16) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x800000025ED7FAF0), (v25 & 1) != 0))
          {
            outlined init with copy of Any(*(v23 + 56) + 32 * v24, v36);

            if (swift_dynamicCast())
            {
              if (*(v2 + 16) && *(v35 + 16))
              {
                v26 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v2, v35);

                if ((v26 & 1) == 0)
                {
                  goto LABEL_46;
                }

LABEL_13:

                return 4;
              }
            }
          }

          else
          {
          }

          goto LABEL_45;
        }

LABEL_34:
        v19 = *(v1 + 40);

        goto LABEL_35;
      }
    }

    else
    {
    }

    return 3;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v11 = *(v1 + 40);

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t static TaskSuccessCalculator.calculateMapsTaskSuccess(geoSignals:)(unint64_t a1)
{
  v49 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_57;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_61:
    v24 = MEMORY[0x277D84F90];
    v23 = MEMORY[0x277D84F90];
    v22 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_79;
    }

    goto LABEL_62;
  }

LABEL_3:
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  while (!v4)
  {
    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      if ((a1 & 0x8000000000000000) != 0)
      {
        v25 = a1;
      }

      else
      {
        v25 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v2 = MEMORY[0x25F8CE500](v25);
      if (!v2)
      {
        goto LABEL_61;
      }

      goto LABEL_3;
    }

    v5 = *(a1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_18;
    }

LABEL_10:
    if ((*(*v5 + 168))() == 2003789907 && v7 == 0xE400000000000000)
    {
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {

        goto LABEL_6;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_6:
    ++v3;
    if (v6 == v2)
    {
      goto LABEL_19;
    }
  }

  v5 = MEMORY[0x25F8CE460](v3, a1);
  v6 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    goto LABEL_10;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  v10 = 0;
  v45 = v49;
  v49 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v4)
    {
      v11 = MEMORY[0x25F8CE460](v10, a1);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_35;
      }

LABEL_25:
      if ((*(*v11 + 168))() == 0x7261436563616C50 && v13 == 0xEC00000070615464)
      {
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v15 & 1) == 0)
        {

          goto LABEL_21;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_21:
      ++v10;
      if (v12 == v2)
      {
        goto LABEL_36;
      }

      continue;
    }

    break;
  }

  if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_55;
  }

  v11 = *(a1 + 8 * v10 + 32);

  v12 = v10 + 1;
  if (!__OFADD__(v10, 1))
  {
    goto LABEL_25;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v16 = 0;
  v44 = v49;
  v49 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v4)
    {
      v17 = MEMORY[0x25F8CE460](v16, a1);
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_51;
      }

LABEL_43:
      if ((*(*v17 + 168))() == 0x697461676976614ELL && v19 == 0xEA00000000006E6FLL)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {

LABEL_39:
          ++v16;
          if (v18 == v2)
          {
            goto LABEL_52;
          }

          continue;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_39;
    }

    break;
  }

  if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_56;
  }

  v17 = *(a1 + 8 * v16 + 32);

  v18 = v16 + 1;
  if (!__OFADD__(v16, 1))
  {
    goto LABEL_43;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  v22 = v49;
  v24 = v44;
  v23 = v45;
  if (v45 < 0)
  {
LABEL_79:
    if (!MEMORY[0x25F8CE500](v23))
    {
      goto LABEL_80;
    }

LABEL_64:
    if ((v23 & 0xC000000000000001) != 0)
    {
      goto LABEL_106;
    }

    if (*(v23 + 16))
    {
      v26 = *(v23 + 32);

      goto LABEL_67;
    }

    __break(1u);
    goto LABEL_108;
  }

LABEL_62:
  if ((v23 & 0x4000000000000000) != 0)
  {
    goto LABEL_79;
  }

  if (*(v23 + 16))
  {
    goto LABEL_64;
  }

LABEL_80:

  v31 = v22 & 0x4000000000000000;
  while (2)
  {
    v48 = MEMORY[0x277D84F90];
    if (v22 < 0 || v31)
    {
LABEL_108:
      v23 = MEMORY[0x25F8CE500](v22);
      if (!v23)
      {
LABEL_109:
        v43 = MEMORY[0x277D84F90];
LABEL_110:

        if (v43 < 0 || (v43 & 0x4000000000000000) != 0)
        {
          MEMORY[0x25F8CE500](v43);
        }

        goto LABEL_112;
      }
    }

    else
    {
      v23 = *(v22 + 16);
      if (!v23)
      {
        goto LABEL_109;
      }
    }

    v24 = 0;
    v33 = 0x697461676976614ELL;
    v34 = MEMORY[0x277D84F70];
    while (2)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x25F8CE460](v24, v22);
        v36 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_103:
          __break(1u);
LABEL_104:
          v43 = v48;
          goto LABEL_110;
        }

LABEL_90:
        v37 = (*(*v35 + 216))();
        if (!*(v37 + 16) || (v38 = specialized __RawDictionaryStorage.find<A>(_:)(v33 + 32, 0xEE00657079546E6FLL), (v39 & 1) == 0))
        {

          goto LABEL_86;
        }

        outlined init with copy of Any(*(v37 + 56) + 32 * v38, &v49);

        if ((swift_dynamicCast() & 1) == 0)
        {

          goto LABEL_86;
        }

        v40 = v33;
        v41 = v34;
        if (v46 == 0x65756E69746E6F43 && v47 == 0xE800000000000000)
        {
        }

        else
        {
          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v42 & 1) == 0)
          {

            goto LABEL_100;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_100:
        v34 = v41;
        v33 = v40;
LABEL_86:
        ++v24;
        if (v36 == v23)
        {
          goto LABEL_104;
        }

        continue;
      }

      break;
    }

    if (v24 < *(v22 + 16))
    {
      v35 = *(v22 + 8 * v24 + 32);

      v36 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_103;
      }

      goto LABEL_90;
    }

    __break(1u);
LABEL_106:
    v26 = MEMORY[0x25F8CE460](0, v23);
LABEL_67:

    (*(*v26 + 120))(&v49, v27);
    v28.n128_f64[0] = v50;
    if (v50 > 3.0)
    {

      return 4;
    }

    if ((v24 & 0x8000000000000000) != 0 || (v24 & 0x4000000000000000) != 0)
    {
      v30 = MEMORY[0x25F8CE500](v24, v28);
    }

    else
    {
      v30 = *(v24 + 16);
    }

    if (v30 < 1)
    {
      v31 = v22 & 0x4000000000000000;
      if (v22 < 0 || v31)
      {
        v32 = MEMORY[0x25F8CE500](v22);
      }

      else
      {
        v32 = *(v22 + 16);
      }

      if (v32 >= 1)
      {
        goto LABEL_112;
      }

      continue;
    }

    break;
  }

LABEL_112:

  return 3;
}

uint64_t static TaskSuccessCalculator.calculateAlarmsTaskSuccess(alarmSignals:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v23 = a1;
    }

    v24 = a1;
    v25 = MEMORY[0x25F8CE500](v23);
    a1 = v24;
    if (!v25)
    {
      return 3;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 3;
  }

  v1 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v4 = MEMORY[0x25F8CE460](0);
    v3 = v4;
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_47;
    }

    v2 = a1;
    v3 = *(a1 + 32);
  }

  v5 = *(*v3 + 216);
  v6 = (v5)(v4);
  if (!*(v6 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v8 & 1) == 0))
  {
LABEL_20:

LABEL_21:

    return 3;
  }

  outlined init with copy of Any(*(v6 + 56) + 32 * v7, v28);

  result = swift_dynamicCast();
  if ((result & 1) == 0 || v26[0] != 1)
  {
    goto LABEL_21;
  }

  if (v1)
  {
    v10 = MEMORY[0x25F8CE460](1, v2);
LABEL_14:
    v11 = (*(*v10 + 216))();

    if (*(v11 + 16))
    {
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379);
      if (v13)
      {
        outlined init with copy of Any(*(v11 + 56) + 32 * v12, v28);

        if (swift_dynamicCast() & 1) == 0 || (v26[0])
        {
          goto LABEL_21;
        }

        if (v1)
        {
          v14 = MEMORY[0x25F8CE460](1, v2);
        }

        else
        {
          v14 = *(v2 + 40);
        }

        v15 = (*(*v14 + 216))();
        if (!*(v15 + 16) || (v16 = specialized __RawDictionaryStorage.find<A>(_:)(0x6564496D72616C61, 0xEF7265696669746ELL), (v17 & 1) == 0))
        {

          return 3;
        }

        outlined init with copy of Any(*(v15 + 56) + 32 * v16, v28);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_48;
        }

        v18 = v5();
        if (!*(v18 + 16) || (v19 = specialized __RawDictionaryStorage.find<A>(_:)(0x6564496D72616C61, 0xEF7265696669746ELL), (v20 & 1) == 0))
        {

          return 3;
        }

        outlined init with copy of Any(*(v18 + 56) + 32 * v19, v28);

        if (swift_dynamicCast())
        {
          v21 = HIBYTE(v27) & 0xF;
          if ((v27 & 0x2000000000000000) == 0)
          {
            v21 = *v26 & 0xFFFFFFFFFFFFLL;
          }

          if (v21)
          {
            v22 = HIBYTE(v27) & 0xF;
            if ((v27 & 0x2000000000000000) == 0)
            {
              v22 = *v26 & 0xFFFFFFFFFFFFLL;
            }

            if (v22)
            {

              return 4;
            }
          }
        }

LABEL_47:

LABEL_48:

        goto LABEL_21;
      }
    }

    goto LABEL_20;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v10 = *(v2 + 40);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

unint64_t static TaskSuccessCalculator.calculateMusicTaskSuccess(musicSignals:)(unint64_t result)
{
  if (result >> 62)
  {
    v9 = result & 0xFFFFFFFFFFFFFF8;
    if ((result & 0x8000000000000000) != 0)
    {
      v9 = result;
    }

    v10 = result;
    v11 = MEMORY[0x25F8CE500](v9);
    result = v10;
    if (!v11)
    {
      return 3;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 3;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x25F8CE460](0, result);
    v1 = v2;
LABEL_6:
    v12[0] = (*(*v1 + 168))(v2);
    v12[1] = v3;
    v13 = 2036427856;
    v14 = 0xE400000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v4 = StringProtocol.contains<A>(_:)();

    if (v4)
    {
      v6 = (*(*v1 + 216))(v5);
      if (!*(v6 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(0x6172754479616C70, 0xEC0000006E6F6974), (v8 & 1) == 0))
      {

        return 4;
      }

      outlined init with copy of Any(*(v6 + 56) + 32 * v7, v12);

      if ((swift_dynamicCast() & 1) == 0 || *&v13 < 10.0)
      {
        return 4;
      }
    }

    else
    {
    }

    return 3;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t static TaskSuccessCalculator.calculateTranscriptTaskSuccess(appIntentSignals:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    result = MEMORY[0x25F8CE500](a1);
    if (!result)
    {
      return 3;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return 3;
    }
  }

  v3 = v1 & 0xC000000000000001;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x25F8CE460](0, v1);
    v4 = v5;
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_38;
    }

    v4 = *(v1 + 32);
  }

  result = (*(*v4 + 168))(v5);
  v6 = result;
  v8 = v7;
  if (v3)
  {
    v9 = MEMORY[0x25F8CE460](1, v1);
    goto LABEL_10;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v9 = *(v1 + 40);

LABEL_10:
    v10 = (*(*v9 + 168))();
    v12 = v11;

    if (v6 == v10 && v8 == v12)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v16 = (*(*v4 + 216))(v15);
    if (*(v16 + 16))
    {
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379);
      if (v18)
      {
        outlined init with copy of Any(*(v16 + 56) + 32 * v17, v24);

        if ((swift_dynamicCast() & 1) == 0 || v23 != 1)
        {
          goto LABEL_30;
        }

        if (v3)
        {
          v19 = MEMORY[0x25F8CE460](1, v1);
        }

        else
        {
          v19 = *(v1 + 40);
        }

        v20 = (*(*v19 + 216))();

        if (*(v20 + 16))
        {
          v21 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379);
          if (v22)
          {
            outlined init with copy of Any(*(v20 + 56) + 32 * v21, v24);

            if ((swift_dynamicCast() & 1) != 0 && (v23 & 1) == 0)
            {
              return 4;
            }

            return 3;
          }
        }
      }
    }

LABEL_30:

    return 3;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t ExtendedAlarmSignalFactory.convertBmEventToSignal(bmEvent:siriUISession:)(void *a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v54 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  if ([a1 eventType] == 6)
  {
    v55 = a1;
    v60 = MEMORY[0x277D84F98];
    Date.init(timeIntervalSinceReferenceDate:)();
    (*(v6 + 56))(v20, 0, 1, v5);
    v21 = *(v6 + 16);
    v21(v14, a2, v5);
    v22 = type metadata accessor for SiriUISession(0);
    v21(v12, a2 + *(v22 + 20), v5);
    outlined init with copy of Date?(v20, v18);
    v23 = (*(v6 + 48))(v18, 1, v5);
    if (v23 == 1)
    {
      v43 = *(v6 + 8);
      v43(v12, v5);
      v43(v14, v5);
      outlined destroy of Date?(v20, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of Date?(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v35 = 0x3FF0000000000000;
      v25 = 0;
      v29 = 0.0;
      v36 = 0.0;
    }

    else
    {
      (*(v6 + 32))(v9, v18, v5);
      Date.timeIntervalSinceReferenceDate.getter();
      v25 = v24;
      Date.timeIntervalSinceReferenceDate.getter();
      v27 = v26;
      Date.timeIntervalSinceReferenceDate.getter();
      v29 = v27 - v28;
      Date.timeIntervalSinceReferenceDate.getter();
      v31 = v30;
      Date.timeIntervalSinceReferenceDate.getter();
      v33 = v32;
      v34 = *(v6 + 8);
      v34(v9, v5);
      v34(v12, v5);
      v34(v14, v5);
      outlined destroy of Date?(v20, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v35 = 0;
      v36 = v31 - v33;
    }

    v59 = MEMORY[0x277D839B0];
    LOBYTE(v58) = v29 < 0.0;
    outlined init with take of Any(&v58, v57);
    v44 = v60;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v44;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v57, 0x42646574616E6F64, 0xED00006972695379, isUniquelyReferenced_nonNull_native);
    v46 = v56;
    v60 = v56;
    v47 = [v55 alarmID];
    if (v47)
    {
      v48 = v47;
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v59 = MEMORY[0x277D837D0];
      *&v58 = v49;
      *(&v58 + 1) = v51;
      outlined init with take of Any(&v58, v57);
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v56 = v46;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v57, 0x6564496D72616C61, 0xEF7265696669746ELL, v52);
      v53 = v56;
    }

    else
    {
      specialized Dictionary._Variant.removeValue(forKey:)(0x6564496D72616C61, 0xEF7265696669746ELL, &v58);
      outlined destroy of Date?(&v58, &_sypSgMd, &_sypSgMR);
      v53 = v60;
    }

    type metadata accessor for Signal();
    result = swift_allocObject();
    *(result + 16) = v25;
    *(result + 24) = v29;
    *(result + 32) = v36;
    *(result + 40) = 0;
    *(result + 48) = v35;
    *(result + 56) = v23 != 1;
    *(result + 64) = 0x6D72616C41;
    *(result + 72) = 0xE500000000000000;
    *(result + 80) = 0xD000000000000011;
    *(result + 88) = 0x800000025ED7FC80;
    *(result + 96) = 1;
    *(result + 104) = v53;
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.engagement);
    v38 = a1;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 67109120;
      *(v41 + 4) = [v38 0x279A52678];

      _os_log_impl(&dword_25ECEC000, v39, v40, "This eventType: %d is not for deletion", v41, 8u);
      MEMORY[0x25F8CEE50](v41, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t ExtendedAlarmSignalFactory.convertBmEventToEngagementFeatureSet(bmEvent:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v8 = type metadata accessor for ProtoAlarmTaskFeatureSet();
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v56 - v12;
  v14 = type metadata accessor for ProtoTaskFeatureSet();
  v57 = *(v14 - 8);
  v58 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v56 - v18;
  v20 = type metadata accessor for ProtoTaskEngagementType();
  MEMORY[0x28223BE20](v20 - 8);
  v21 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v63 = *(v21 - 8);
  v64 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ReliabilityCategory();
  v61 = *(v24 - 8);
  v62 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 eventType] != 6)
  {
    v33 = a2;
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.engagement);
    v66 = 0;
    v67 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v66 = 0xD000000000000010;
    v67 = 0x800000025ED7FCE0;
    v65 = [a1 eventType];
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x25F8CE090](v35);

    MEMORY[0x25F8CE090](0xD000000000000014, 0x800000025ED7FD00);
    v37 = v66;
    v36 = v67;
    v38 = *MEMORY[0x277D616C0];
    v39 = type metadata accessor for AlarmEventDataIssues();
    (*(*(v39 - 8) + 104))(v26, v38, v39);
    v41 = v61;
    v40 = v62;
    (*(v61 + 104))(v26, *MEMORY[0x277D61668], v62);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v66 = v45;
      *v44 = 136315138;
      *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, &v66);
      _os_log_impl(&dword_25ECEC000, v42, v43, "%s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x25F8CEE50](v45, -1, -1);
      MEMORY[0x25F8CEE50](v44, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v46 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v26, v46, v47);

    (*(v41 + 8))(v26, v40);
    v48 = 1;
    v49 = v33;
    v51 = v63;
    v50 = v64;
    return (*(v51 + 56))(v49, v48, 1, v50);
  }

  result = ProtoTaskEngagementFeatureSet.init()();
  v28 = round(a3 * 1000.0);
  v29 = 0.0;
  if (v28 < 0.0)
  {
LABEL_10:
    v30 = a2;
    ProtoTaskEngagementFeatureSet.startTimestampMs.setter();
    (*(*v4 + 104))([a1 eventType]);
    ProtoTaskEngagementFeatureSet.engagementType.setter();
    ProtoTaskFeatureSet.init()();
    ProtoAlarmTaskFeatureSet.init()();
    v31 = [a1 alarmID];
    if (v31)
    {
      v32 = v31;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    ProtoAlarmTaskFeatureSet.alarmIdentifier.setter();
    v53 = v59;
    v52 = v60;
    (*(v59 + 16))(v11, v13, v60);
    ProtoTaskFeatureSet.alarmFeatureSet.setter();
    v55 = v57;
    v54 = v58;
    (*(v57 + 16))(v17, v19, v58);
    ProtoTaskEngagementFeatureSet.featureSet.setter();
    (*(v53 + 8))(v13, v52);
    (*(v55 + 8))(v19, v54);
    v51 = v63;
    v50 = v64;
    v49 = v30;
    (*(v63 + 32))(v30, v23, v64);
    v48 = 0;
    return (*(v51 + 56))(v49, v48, 1, v50);
  }

  if ((*&v28 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v29 = v28;
  }

  if ((~*&v28 & 0x7FF0000000000000) != 0)
  {
    v29 = v28;
  }

  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v29 <= -1.0)
    {
      __break(1u);
    }

    else if (v29 < 1.84467441e19)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void ExtendedAlarmSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v27[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v27 - v6;
  v8 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v9 = MEMORY[0x28223BE20](v8);
  v35 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v34 = v27 - v12;
  v13 = MEMORY[0x277D84F90];
  v39 = MEMORY[0x277D84F90];
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = *(*v3 + 80);
    v36 = *v3 + 80;
    v37 = v15;
    v32 = (v11 + 32);
    v33 = (v11 + 48);
    v28 = (v11 + 16);
    v29 = v11;
    v27[1] = v11 + 8;
    v16 = (a1 + 40);
    v17 = MEMORY[0x277D84F90];
    v30 = v3;
    do
    {
      v18 = *v16;
      v19 = *(v16 - 1);
      if (v37(v18))
      {

        MEMORY[0x25F8CE160](v20);
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v17 = v39;
        ExtendedAlarmSignalFactory.convertBmEventToEngagementFeatureSet(bmEvent:)(v19, v7, v18);
        if ((*v33)(v7, 1, v8) == 1)
        {

          outlined destroy of Date?(v7, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMR);
        }

        else
        {
          v31 = v17;
          v21 = *v32;
          v22 = v34;
          (*v32)(v34, v7, v8);
          (*v28)(v35, v22, v8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
          }

          v24 = *(v13 + 2);
          v23 = *(v13 + 3);
          if (v24 >= v23 >> 1)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v13);
          }

          v25 = v29;
          (*(v29 + 8))(v34, v8);
          *(v13 + 2) = v24 + 1;
          v21(&v13[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v24], v35, v8);
          v17 = v31;
        }
      }

      else
      {
      }

      v16 += 2;
      --v14;
    }

    while (v14);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v26 = v27[0];
  *v27[0] = v17;
  *(v26 + 8) = v13;
}

uint64_t ExtendedAlarmSignalFactory.getTaskEngagementType(eventType:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ProtoTaskEngagementType();
  v5 = *(*(v4 - 8) + 104);
  if (a1 > 6)
  {
    v6 = MEMORY[0x277D61528];
  }

  else
  {
    v6 = qword_279A51778[a1];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t PSEPhoneticEmbedder.__allocating_init()()
{
  v0 = type metadata accessor for PhoneticEmbedder.LoadingOption();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PhoneticEmbedder.InputFormat();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = swift_allocObject();
  Locale.init(identifier:)();
  (*(v5 + 104))(v7, *MEMORY[0x277CDCC88], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277CDCC90], v0);
  type metadata accessor for PhoneticEmbedder();
  swift_allocObject();
  *(v9 + 16) = PhoneticEmbedder.init(locale:clientID:inputFormat:loadingOption:)();
  return v9;
}

uint64_t PSEPhoneticEmbedder.init()()
{
  v1 = v0;
  v2 = type metadata accessor for PhoneticEmbedder.LoadingOption();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PhoneticEmbedder.InputFormat();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v10 - 8);
  Locale.init(identifier:)();
  (*(v7 + 104))(v9, *MEMORY[0x277CDCC88], v6);
  (*(v3 + 104))(v5, *MEMORY[0x277CDCC90], v2);
  type metadata accessor for PhoneticEmbedder();
  swift_allocObject();
  *(v1 + 16) = PhoneticEmbedder.init(locale:clientID:inputFormat:loadingOption:)();
  return v1;
}

Swift::Double_optional __swiftcall PSEPhoneticEmbedder.distanceBetween(siriContact:userContact:)(Swift::String siriContact, Swift::String userContact)
{
  object = userContact._object;
  countAndFlagsBits = userContact._countAndFlagsBits;
  v5 = siriContact._object;
  v6 = siriContact._countAndFlagsBits;
  v7 = type metadata accessor for ReliabilityCategory();
  MEMORY[0x28223BE20](v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25ED7C970;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = countAndFlagsBits;
  *(v8 + 56) = object;
  v9 = *(*v2 + 104);

  v10 = v9(v8);

  if (v10[2] < 2uLL)
  {

    v15 = 0;
  }

  else
  {
    v11 = v10[4];
    v12 = v10[5];

    v13 = COERCE_UNSIGNED_INT64((*(*v2 + 112))(v11, v12));

    v15 = v13;
  }

  result.value = v14;
  result.is_nil = v15;
  return result;
}

uint64_t PSEPhoneticEmbedder.embedding(queries:)(uint64_t a1)
{
  v2 = v1;
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySdGGMd, &_ss23_ContiguousArrayStorageCySaySdGGMR);
  v4 = swift_allocObject();
  *(v3 + 16) = v4;
  *(v4 + 16) = xmmword_25ED7C750;
  *(v4 + 32) = MEMORY[0x277D84F90];
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;

  PhoneticEmbedder.embeddings(of:completion:)();
  if (v1)
  {
  }

  else
  {

    swift_beginAccess();
    v7 = *(v5 + 16);
    if (v7)
    {
      swift_willThrow();
      v8 = v7;
    }

    else
    {
      swift_beginAccess();
      v2 = *(v3 + 16);
    }
  }

  return v2;
}

void closure #1 in PSEPhoneticEmbedder.embedding(queries:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a2;
  v9 = a2;

  if (a1)
  {
    swift_beginAccess();
    *(a4 + 16) = a1;
  }
}

Swift::Double __swiftcall PSEPhoneticEmbedder.distanceBetween(sourceVector:targetVector:)(Swift::OpaquePointer sourceVector, Swift::OpaquePointer targetVector)
{
  v2 = *(sourceVector._rawValue + 2);
  if (v2 == *(targetVector._rawValue + 2))
  {
    if (!v2)
    {
      v4 = 0.0;
      goto LABEL_16;
    }

    if (v2 >= 4)
    {
      v3 = v2 & 0x7FFFFFFFFFFFFFFCLL;
      v10 = (sourceVector._rawValue + 48);
      v11 = (targetVector._rawValue + 48);
      v4 = 0.0;
      v12 = v2 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v13 = vsubq_f64(v10[-1], v11[-1]);
        v14 = vsubq_f64(*v10, *v11);
        v15 = vmulq_f64(v13, v13);
        v16 = vmulq_f64(v14, v14);
        v4 = v4 + v15.f64[0] + v15.f64[1] + v16.f64[0] + v16.f64[1];
        v10 += 2;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v2 == v3)
      {
LABEL_16:

        return sqrt(v4);
      }
    }

    else
    {
      v3 = 0;
      v4 = 0.0;
    }

    v17 = v2 - v3;
    v18 = 8 * v3 + 32;
    v19 = (targetVector._rawValue + v18);
    v20 = (sourceVector._rawValue + v18);
    do
    {
      v21 = *v20++;
      v22 = v21;
      v23 = *v19++;
      v4 = v4 + (v22 - v23) * (v22 - v23);
      --v17;
    }

    while (v17);
    goto LABEL_16;
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.engagement);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_25ECEC000, v6, v7, "Vector sizes are different", v8, 2u);
    MEMORY[0x25F8CEE50](v8, -1, -1);
  }

  return 0.0;
}

uint64_t PSEPhoneticEmbedder.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t specialized static PSEPhoneticEmbedder.normalizedString(from:)()
{
  String.lowercased()();
  v0 = String.Iterator.next()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    object = v0.value._object;
    do
    {
      if ((Character.isSymbol.getter() & 1) == 0)
      {
        MEMORY[0x25F8CE080](countAndFlagsBits, object);
      }

      v3 = String.Iterator.next()();
      countAndFlagsBits = v3.value._countAndFlagsBits;
      object = v3.value._object;
    }

    while (v3.value._object);
  }

  return 0;
}

uint64_t TranscriptStep.clientGroupIdentifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t TranscriptStep.clientGroupIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t TranscriptStep.eventType.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);

  return v1;
}

uint64_t TranscriptStep.eventType.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t key path setter for TranscriptStep.eventTime : TranscriptStep(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 256))(v6);
}

uint64_t TranscriptStep.__allocating_init(sessionId:clientRequestId:clientApplicationId:eventType:eventTime:clientGroupIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = swift_allocObject();
  *(v18 + 64) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  *(v18 + 56) = a6;
  swift_beginAccess();
  *(v18 + 80) = a7;
  *(v18 + 88) = a8;
  v19 = OBJC_IVAR____TtC18PostSiriEngagement14TranscriptStep_eventTime;
  v20 = type metadata accessor for Date();
  (*(*(v20 - 8) + 32))(v18 + v19, a9, v20);
  swift_beginAccess();
  *(v18 + 64) = a10;
  *(v18 + 72) = a11;
  return v18;
}

uint64_t TranscriptStep.init(sessionId:clientRequestId:clientApplicationId:eventType:eventTime:clientGroupIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  *(v11 + 56) = a6;
  swift_beginAccess();
  *(v11 + 80) = a7;
  *(v11 + 88) = a8;
  v14 = OBJC_IVAR____TtC18PostSiriEngagement14TranscriptStep_eventTime;
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 32))(v11 + v14, a9, v15);
  swift_beginAccess();
  *(v11 + 64) = a10;
  *(v11 + 72) = a11;
  return v11;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance TranscriptStep.CodingKeys()
{
  v1 = *v0;
  v2 = 0x496E6F6973736573;
  v3 = 0xD000000000000015;
  v4 = 0x707954746E657665;
  if (v1 != 4)
  {
    v4 = 0x6D6954746E657665;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6552746E65696C63;
  if (v1 != 1)
  {
    v5 = 0xD000000000000013;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TranscriptStep.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized TranscriptStep.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TranscriptStep.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TranscriptStep.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

char *TranscriptStep.deinit()
{

  v1 = OBJC_IVAR____TtC18PostSiriEngagement14TranscriptStep_eventTime;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TranscriptStep.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18PostSiriEngagement14TranscriptStep_eventTime;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t TranscriptStep.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement14TranscriptStepC10CodingKeys33_402B16CC62EEDA558AAEA73AC4ED505FLLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement14TranscriptStepC10CodingKeys33_402B16CC62EEDA558AAEA73AC4ED505FLLOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys();
  v11 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(*v2 + 128))(v11);
  v27 = 0;
  v12 = v21;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v12)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v21 = v6;

    (*(*v2 + 152))(v13);
    v26 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v2 + 176))(v15);
    v25 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v2 + 200))(v16);
    v24 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    (*(*v2 + 224))(v17);
    v23 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    v19 = v21;
    (*(*v2 + 248))(v18);
    v22 = 5;
    lazy protocol witness table accessor for type Date and conformance Date();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v20 + 8))(v19, v4);
    return (*(v8 + 8))(v10, v7);
  }
}

unint64_t lazy protocol witness table accessor for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

uint64_t TranscriptStep.sessionId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TranscriptStep.sessionId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t TranscriptStep.clientRequestId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TranscriptStep.clientRequestId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t TranscriptStep.clientApplicationId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TranscriptStep.clientApplicationId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t TranscriptTask.eventTypes.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t key path setter for TranscriptTask.startTime : TranscriptTask(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 232))(v6);
}

uint64_t key path setter for TranscriptTask.endTime : TranscriptTask(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 256))(v6);
}

char *TranscriptTask.__allocating_init(uiSessionId:sessionId:clientRequestId:eventTypes:startTime:endTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  *(v17 + 2) = a1;
  *(v17 + 3) = a2;
  *(v17 + 4) = a3;
  *(v17 + 5) = a4;
  *(v17 + 6) = a5;
  *(v17 + 7) = a6;
  *(v17 + 8) = a7;
  v18 = OBJC_IVAR____TtC18PostSiriEngagement14TranscriptTask_startTime;
  v19 = type metadata accessor for Date();
  v20 = *(*(v19 - 8) + 32);
  v20(&v17[v18], a8, v19);
  v20(&v17[OBJC_IVAR____TtC18PostSiriEngagement14TranscriptTask_endTime], a9, v19);
  return v17;
}

char *TranscriptTask.init(uiSessionId:sessionId:clientRequestId:eventTypes:startTime:endTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 2) = a1;
  *(v9 + 3) = a2;
  *(v9 + 4) = a3;
  *(v9 + 5) = a4;
  *(v9 + 6) = a5;
  *(v9 + 7) = a6;
  *(v9 + 8) = a7;
  v11 = OBJC_IVAR____TtC18PostSiriEngagement14TranscriptTask_startTime;
  v12 = type metadata accessor for Date();
  v13 = *(*(v12 - 8) + 32);
  v13(&v9[v11], a8, v12);
  v13(&v9[OBJC_IVAR____TtC18PostSiriEngagement14TranscriptTask_endTime], a9, v12);
  return v9;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TranscriptTask.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6F69737365536975;
  v3 = 0x707954746E657665;
  v4 = 0x6D69547472617473;
  if (v1 != 4)
  {
    v4 = 0x656D6954646E65;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x496E6F6973736573;
  if (v1 != 1)
  {
    v5 = 0x6552746E65696C63;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TranscriptTask.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized TranscriptTask.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TranscriptTask.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TranscriptTask.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

char *TranscriptTask.deinit()
{

  v1 = OBJC_IVAR____TtC18PostSiriEngagement14TranscriptTask_startTime;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC18PostSiriEngagement14TranscriptTask_endTime, v2);
  return v0;
}

uint64_t TranscriptTask.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18PostSiriEngagement14TranscriptTask_startTime;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC18PostSiriEngagement14TranscriptTask_endTime, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t TranscriptTask.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement14TranscriptTaskC10CodingKeys33_402B16CC62EEDA558AAEA73AC4ED505FLLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement14TranscriptTaskC10CodingKeys33_402B16CC62EEDA558AAEA73AC4ED505FLLOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys();
  v14 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(*v2 + 128))(v14);
  v39 = 0;
  v15 = v32;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v15)
  {
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v32 = v9;
    v29 = v7;
    v16 = v31;

    (*(*v2 + 152))(v17);
    v38 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v2 + 176))(v18);
    v37 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();

    v33 = (*(*v2 + 200))(v19);
    v36 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v22 = v32;
    (*(*v2 + 224))(v20);
    v35 = 4;
    v28[2] = lazy protocol witness table accessor for type Date and conformance Date();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v28[1] = v10;
    v23 = v22;
    v24 = *(v30 + 8);
    v25 = v24(v23, v16);
    v26 = *(*v2 + 248);
    v27 = v29;
    v26(v25);
    v34 = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24(v27, v16);
    return (*(v11 + 8))(0, v10);
  }
}

unint64_t lazy protocol witness table accessor for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys;
  if (!lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys;
  if (!lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys;
  if (!lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys;
  if (!lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys);
  }

  return result;
}

uint64_t Sequence<>.dedupe()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = static Array._allocateUninitialized(_:)();
  if (MEMORY[0x25F8CE210](v12, AssociatedTypeWitness))
  {
    v13 = specialized Set.init(_nonEmptyArrayLiteral:)(v12, AssociatedTypeWitness, a3);
  }

  else
  {
    v13 = MEMORY[0x277D84FA0];
  }

  v18 = v13;
  v14 = (*(v8 + 16))(v10, v4, a1);
  MEMORY[0x28223BE20](v14);
  *(&v17 - 4) = a1;
  *(&v17 - 3) = a2;
  *(&v17 - 2) = a3;
  *(&v17 - 1) = &v18;
  v15 = Sequence.filter(_:)();

  return v15;
}

uint64_t closure #1 in Sequence<>.dedupe()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  (*(v7 + 16))(v10, a1, AssociatedTypeWitness);
  type metadata accessor for Set();
  v13 = Set.insert(_:)();
  (*(v7 + 8))(v12, AssociatedTypeWitness);
  return v13 & 1;
}

void *_sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say18PostSiriEngagement14TranscriptStepCGTt1g504_s18de12Engagement23g71SignalFactoryC05buildD5Tasks15siriUISessionId8bmEventsSayAA0D4TaskCGSS_s50So018BMIntelligenceFlowD15DatastreamEventCGtFSSAA0uH7CXEfU0_Tf1nc_nTf4g_n(unint64_t a1)
{
  v28 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_24:
    if ((a1 & 0x8000000000000000) != 0)
    {
      v25 = a1;
    }

    else
    {
      v25 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v2 = MEMORY[0x25F8CE500](v25);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x277D84F98];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x25F8CE460](v3, a1);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v7 = *(a1 + 8 * v3 + 32);

          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }
        }

        v27 = v8;
        v9 = (*(*v7 + 152))();
        v11 = v10;
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
        v14 = v4[2];
        v15 = (v12 & 1) == 0;
        v16 = v14 + v15;
        if (__OFADD__(v14, v15))
        {
          goto LABEL_22;
        }

        v17 = v12;
        if (v4[3] < v16)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, 1);
          v4 = v28;
          v18 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
          if ((v17 & 1) != (v19 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v13 = v18;
        }

        if (v17)
        {

          v6 = (v4[7] + 8 * v13);
          MEMORY[0x25F8CE160](v5);
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_25ED7ACC0;
          *(v20 + 32) = v7;
          v4[(v13 >> 6) + 8] |= 1 << v13;
          v21 = (v4[6] + 16 * v13);
          *v21 = v9;
          v21[1] = v11;
          *(v4[7] + 8 * v13) = v20;
          v22 = v4[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_23;
          }

          v4[2] = v24;
        }

        ++v3;
        if (v27 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t specialized TranscriptSignalFactory.convertBiomeEventToTranscriptStep(bmEvent:)(void *a1)
{
  v2 = type metadata accessor for ReliabilityCategory();
  v126 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v117 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v117 - v10;
  MEMORY[0x28223BE20](v9);
  v123 = &v117 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v117 - v17;
  v19 = type metadata accessor for Date();
  v125 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v117 - v23;
  v25 = [a1 absoluteTimestamp];
  if (!v25)
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.engagement);
    v32 = *MEMORY[0x277D61730];
    v33 = type metadata accessor for TranscriptEventDataIssues();
    (*(*(v33 - 8) + 104))(v5, v32, v33);
    v34 = v126;
    (*(v126 + 104))(v5, *MEMORY[0x277D61690], v2);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = v2;
      v39 = swift_slowAlloc();
      v127[0] = v39;
      *v37 = 136315138;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x800000025ED7FEE0, v127);
      _os_log_impl(&dword_25ECEC000, v35, v36, "%s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      v40 = v39;
      v2 = v38;
      v34 = v126;
      MEMORY[0x25F8CEE50](v40, -1, -1);
      MEMORY[0x25F8CEE50](v37, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v41 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v5, v41, v42);

    (*(v34 + 8))(v5, v2);
    return 0;
  }

  v124 = v19;
  v26 = v25;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = [a1 identifiers];
  if (!v27)
  {
    goto LABEL_13;
  }

  v121 = v24;
  v28 = v27;
  v29 = [v27 sessionId];

  v122 = v2;
  if (v29)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v43 = type metadata accessor for UUID();
  v44 = *(v43 - 8);
  (*(v44 + 56))(v16, v30, 1, v43);
  outlined init with take of UUID?(v16, v18);
  if ((*(v44 + 48))(v18, 1, v43) == 1)
  {
    outlined destroy of UUID?(v18);
    v24 = v121;
    v2 = v122;
LABEL_13:
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.engagement);
    v46 = *MEMORY[0x277D61728];
    v47 = type metadata accessor for TranscriptEventDataIssues();
    (*(*(v47 - 8) + 104))(v8, v46, v47);
    v48 = v126;
    (*(v126 + 104))(v8, *MEMORY[0x277D61690], v2);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = v2;
      v53 = swift_slowAlloc();
      v127[0] = v53;
      *v51 = 136315138;
      *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x800000025ED7FF10, v127);
      _os_log_impl(&dword_25ECEC000, v49, v50, "%s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      v54 = v53;
      v2 = v52;
      MEMORY[0x25F8CEE50](v54, -1, -1);
      MEMORY[0x25F8CEE50](v51, -1, -1);
    }

    v55 = v124;
    type metadata accessor for SiriTaskEngagementUtils();
    v56 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v8, v56, v57);

    (*(v48 + 8))(v8, v2);
LABEL_29:
    (*(v125 + 8))(v24, v55);
    return 0;
  }

  v58 = UUID.uuidString.getter();
  v60 = v59;
  (*(v44 + 8))(v18, v43);
  v61 = [a1 identifiers];
  if (!v61 || (v62 = v61, v63 = [v61 clientApplicationId], v62, !v63))
  {

    v78 = v122;
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    __swift_project_value_buffer(v79, static Logger.engagement);
    v80 = *MEMORY[0x277D61738];
    v81 = type metadata accessor for TranscriptEventDataIssues();
    (*(*(v81 - 8) + 104))(v11, v80, v81);
    (*(v126 + 104))(v11, *MEMORY[0x277D61690], v78);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    v84 = os_log_type_enabled(v82, v83);
    v24 = v121;
    if (v84)
    {
      v85 = swift_slowAlloc();
      v86 = v78;
      v87 = swift_slowAlloc();
      v127[0] = v87;
      *v85 = 136315138;
      *(v85 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x800000025ED7FF30, v127);
      _os_log_impl(&dword_25ECEC000, v82, v83, "%s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v87);
      v88 = v87;
      v78 = v86;
      MEMORY[0x25F8CEE50](v88, -1, -1);
      MEMORY[0x25F8CEE50](v85, -1, -1);
    }

    v55 = v124;
    type metadata accessor for SiriTaskEngagementUtils();
    v89 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v11, v89, v90);

    (*(v126 + 8))(v11, v78);
    goto LABEL_29;
  }

  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;

  v67 = [a1 eventType];
  v68 = v122;
  if (!v67)
  {

    v92 = v121;
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    __swift_project_value_buffer(v93, static Logger.engagement);
    v94 = *MEMORY[0x277D61718];
    v95 = type metadata accessor for TranscriptEventDataIssues();
    v96 = v123;
    (*(*(v95 - 8) + 104))(v123, v94, v95);
    (*(v126 + 104))(v96, *MEMORY[0x277D61690], v68);
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v127[0] = v100;
      *v99 = 136315138;
      *(v99 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x800000025ED7FF50, v127);
      _os_log_impl(&dword_25ECEC000, v97, v98, "%s", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v100);
      MEMORY[0x25F8CEE50](v100, -1, -1);
      MEMORY[0x25F8CEE50](v99, -1, -1);
    }

    v101 = v124;
    type metadata accessor for SiriTaskEngagementUtils();
    v102 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v96, v102, v103);

    (*(v126 + 8))(v96, v68);
    (*(v125 + 8))(v92, v101);
    return 0;
  }

  v126 = v66;
  v69 = v67;
  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v122 = v71;
  v123 = v70;

  v72 = [a1 0x279A52978];
  v73 = v121;
  if (v72)
  {
    v74 = v72;
    v75 = [v72 clientRequestId];

    if (v75)
    {
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v119 = v77;
      v120 = v76;
    }

    else
    {
      v119 = 0xE000000000000000;
      v120 = 0;
    }
  }

  else
  {
    v119 = 0xE000000000000000;
    v120 = 0;
  }

  v104 = v124;
  (*(v125 + 16))(v22, v73, v124);
  v105 = [a1 0x279A52978];
  v106 = v58;
  if (v105)
  {
    v107 = v105;
    v108 = [v105 clientGroupIdentifier];

    v109 = v64;
    if (v108)
    {
      v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v111 = v110;
    }

    else
    {
      v118 = 0;
      v111 = 0;
    }

    v104 = v124;
  }

  else
  {
    v109 = v64;
    v118 = 0;
    v111 = 0;
  }

  v112 = v125;
  (*(v125 + 8))(v73, v104);
  type metadata accessor for TranscriptStep(0);
  v113 = swift_allocObject();
  *(v113 + 64) = 0u;
  *(v113 + 80) = 0u;
  *(v113 + 16) = v106;
  *(v113 + 24) = v60;
  v114 = v119;
  *(v113 + 32) = v120;
  *(v113 + 40) = v114;
  v115 = v126;
  *(v113 + 48) = v109;
  *(v113 + 56) = v115;
  swift_beginAccess();
  v116 = v122;
  *(v113 + 80) = v123;
  *(v113 + 88) = v116;
  (*(v112 + 32))(v113 + OBJC_IVAR____TtC18PostSiriEngagement14TranscriptStep_eventTime, v22, v104);
  swift_beginAccess();
  result = v113;
  *(v113 + 64) = v118;
  *(v113 + 72) = v111;
  return result;
}

uint64_t specialized TranscriptSignalFactory.buildTranscriptTasks(siriUISessionId:bmEvents:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v82 = a1;
  v83 = a2;
  v84 = type metadata accessor for Date();
  v89 = *(v84 - 8);
  v4 = MEMORY[0x28223BE20](v84);
  v86 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v85 = &v70 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v87 = &v70 - v9;
  MEMORY[0x28223BE20](v8);
  v88 = &v70 - v10;
  v90 = MEMORY[0x277D84F90];
  v91 = MEMORY[0x277D84F90];
  v11 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
    goto LABEL_71;
  }

  v12 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v13 = 0;
  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  while (v12 != v13)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x25F8CE460](v13, a3);
    }

    else
    {
      if (v13 >= *(v11 + 16))
      {
        goto LABEL_69;
      }

      v16 = *(a3 + 8 * v13 + 32);
    }

    v17 = v16;
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v19 = specialized TranscriptSignalFactory.convertBiomeEventToTranscriptStep(bmEvent:)(v16);

    ++v13;
    if (v19)
    {
      MEMORY[0x25F8CE160]();
      if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v15 = v90;
      v13 = v18;
    }
  }

  if (v15 >> 62)
  {
    if (v15 < 0)
    {
      v65 = v15;
    }

    else
    {
      v65 = v15 & 0xFFFFFFFFFFFFFF8;
    }

    if (MEMORY[0x25F8CE500](v65))
    {
      goto LABEL_16;
    }
  }

  else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    v20 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say18PostSiriEngagement14TranscriptStepCGTt1g504_s18de12Engagement23g71SignalFactoryC05buildD5Tasks15siriUISessionId8bmEventsSayAA0D4TaskCGSS_s50So018BMIntelligenceFlowD15DatastreamEventCGtFSSAA0uH7CXEfU0_Tf1nc_nTf4g_n(v15);

    v21 = 1 << *(v20 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v20[8];
    v11 = (v21 + 63) >> 6;
    v24 = (v89 + 32);
    v79 = (v89 + 8);
    v80 = (v89 + 16);

    v25 = 0;
    while (1)
    {
      do
      {
        if (!v23)
        {
          while (1)
          {
            v26 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v26 >= v11)
            {

              v90 = specialized Array._copyToContiguousArray()(v62);
              specialized MutableCollection<>.sort(by:)(&v90);
              if (v14)
              {
                goto LABEL_90;
              }

              return v90;
            }

            v23 = v20[v26 + 8];
            ++v25;
            if (v23)
            {
              v25 = v26;
              goto LABEL_25;
            }
          }

LABEL_70:
          __break(1u);
LABEL_71:
          if ((a3 & 0x8000000000000000) != 0)
          {
            v64 = a3;
          }

          else
          {
            v64 = v11;
          }

          v12 = MEMORY[0x25F8CE500](v64);
          goto LABEL_3;
        }

LABEL_25:
        v27 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v28 = (v20[6] + ((v25 << 10) | (16 * v27)));
        v29 = *v28;
        a3 = v28[1];
        v30 = HIBYTE(a3) & 0xF;
        if ((a3 & 0x2000000000000000) == 0)
        {
          v30 = v29 & 0xFFFFFFFFFFFFLL;
        }
      }

      while (!v30 || !v20[2]);

      v81 = v29;
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29, a3);
      if ((v32 & 1) == 0)
      {
        goto LABEL_19;
      }

      v33 = *(v20[7] + 8 * v31);
      v89 = v33;
      if (v33 >> 62)
      {
        if (v33 >= 0)
        {
          v33 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v34 = MEMORY[0x25F8CE500](v33);
        v33 = v89;
        if (!v34)
        {
          goto LABEL_19;
        }

LABEL_32:
        v77 = v34;
        v78 = v33 & 0xC000000000000001;
        if ((v33 & 0xC000000000000001) != 0)
        {
          v61 = v33;

          v36 = MEMORY[0x25F8CE460](0, v61);
          v35 = v36;
        }

        else
        {
          if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_87;
          }

          v35 = *(v33 + 32);
        }

        v72 = (*(*v35 + 128))(v36);
        v71 = v37;

        if (v78)
        {
          v38 = MEMORY[0x25F8CE460](0, v89);
        }

        else
        {
          v38 = *(v89 + 32);
        }

        (*(*v38 + 248))();

        v39 = v77 - 1;
        if (__OFSUB__(v77, 1))
        {
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:

          __break(1u);
          return result;
        }

        v70 = v14;
        v73 = v24;
        if (v78)
        {
          v14 = v89;
          v40 = MEMORY[0x25F8CE460](v39, v89);
          v75 = v14 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
          if ((v39 & 0x8000000000000000) != 0)
          {
            goto LABEL_88;
          }

          v75 = v89 & 0xFFFFFFFFFFFFFF8;
          if (v39 >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_89;
          }

          v40 = *(v89 + 8 * v39 + 32);
        }

        (*(*v40 + 248))();

        v41 = 0;
        v74 = MEMORY[0x277D84F90];
        v42 = v89;
        while (v77 != v41)
        {
          if (v78)
          {
            v43 = MEMORY[0x25F8CE460](v41, v42);
            v44 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              goto LABEL_83;
            }
          }

          else
          {
            if (v41 >= *(v75 + 16))
            {
              __break(1u);
              goto LABEL_86;
            }

            v43 = *(v42 + 8 * v41 + 32);

            v44 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
LABEL_83:
              __break(1u);
              goto LABEL_84;
            }
          }

          v76 = v44;
          v14 = (*(*v43 + 224))();
          v46 = v45;

          ++v41;
          v42 = v89;
          if (v46)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v74 + 2) + 1, 1, v74);
            }

            v48 = *(v74 + 2);
            v47 = *(v74 + 3);
            v42 = v89;
            if (v48 >= v47 >> 1)
            {
              v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v74);
              v42 = v89;
              v74 = v51;
            }

            v49 = v74;
            *(v74 + 2) = v48 + 1;
            v50 = &v49[16 * v48];
            *(v50 + 4) = v14;
            *(v50 + 5) = v46;
            v41 = v76;
          }
        }

        v52 = *v80;
        v53 = v84;
        (*v80)(v85, v88, v84);
        v52(v86, v87, v53);
        type metadata accessor for TranscriptTask(0);
        v54 = swift_allocObject();
        v55 = v83;
        v54[2] = v82;
        v54[3] = v55;
        v56 = v71;
        v54[4] = v72;
        v54[5] = v56;
        v54[6] = v81;
        v54[7] = a3;
        a3 = v53;
        v57 = v73;
        v54[8] = v74;
        v58 = *v57;
        (*v57)(v54 + OBJC_IVAR____TtC18PostSiriEngagement14TranscriptTask_startTime, v85, a3);
        v58(v54 + OBJC_IVAR____TtC18PostSiriEngagement14TranscriptTask_endTime, v86, a3);

        MEMORY[0x25F8CE160](v59);
        if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          a3 = v84;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v60 = *v79;
        (*v79)(v87, a3);
        v60(v88, a3);
        v14 = v70;
        v24 = v73;
      }

      else
      {
        v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v34)
        {
          goto LABEL_32;
        }

LABEL_19:
      }
    }
  }

  if (one-time initialization token for engagement != -1)
  {
LABEL_84:
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  __swift_project_value_buffer(v66, static Logger.engagement);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_25ECEC000, v67, v68, "No Intelligence Flow Transcript to construct session boundary", v69, 2u);
    MEMORY[0x25F8CEE50](v69, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized TranscriptStep.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6552746E65696C63 && a2 == 0xEF64497473657571 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025ED7FDF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025ED7FE10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x707954746E657665 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6954746E657665 && a2 == 0xE900000000000065)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t specialized TranscriptTask.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69737365536975 && a2 == 0xEB0000000064496ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6552746E65696C63 && a2 == 0xEF64497473657571 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x707954746E657665 && a2 == 0xEA00000000007365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t specialized Set.init(_nonEmptyArrayLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v51 = &v39 - v11;
  v40 = v12;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v39 - v14;
  if (MEMORY[0x25F8CE200](v13))
  {
    type metadata accessor for _SetStorage();
    v16 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  v44 = MEMORY[0x25F8CE210](v5, a2);
  if (!v44)
  {
    return v16;
  }

  v17 = 0;
  v49 = (v6 + 16);
  v50 = v16 + 56;
  v46 = v6 + 32;
  v48 = (v6 + 8);
  v41 = v6;
  v42 = v5;
  v43 = v15;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v40 != 8)
      {
        goto LABEL_23;
      }

      v52 = result;
      v19 = *v49;
      (*v49)(v15, &v52, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v47 = v21;
    v45 = *(v6 + 32);
    v45(v51, v15, a2);
    v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v23 = v16;
    v24 = -1 << *(v16 + 32);
    v25 = v22 & ~v24;
    v26 = v25 >> 6;
    v27 = *(v50 + 8 * (v25 >> 6));
    v28 = 1 << v25;
    v29 = *(v6 + 72);
    if (((1 << v25) & v27) != 0)
    {
      v30 = ~v24;
      do
      {
        v19(v9, (*(v23 + 48) + v29 * v25), a2);
        v31 = a3;
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();
        v33 = *v48;
        (*v48)(v9, a2);
        if (v32)
        {
          v33(v51, a2);
          a3 = v31;
          v6 = v41;
          v5 = v42;
          v16 = v23;
          goto LABEL_7;
        }

        v25 = (v25 + 1) & v30;
        v26 = v25 >> 6;
        v27 = *(v50 + 8 * (v25 >> 6));
        v28 = 1 << v25;
        a3 = v31;
      }

      while (((1 << v25) & v27) != 0);
      v6 = v41;
      v5 = v42;
    }

    v34 = v51;
    *(v50 + 8 * v26) = v28 | v27;
    v35 = *(v23 + 48) + v29 * v25;
    v16 = v23;
    result = (v45)(v35, v34, a2);
    v37 = *(v23 + 16);
    v20 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v20)
    {
      break;
    }

    *(v23 + 16) = v38;
LABEL_7:
    v15 = v43;
    v17 = v47;
    if (v47 == v44)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}