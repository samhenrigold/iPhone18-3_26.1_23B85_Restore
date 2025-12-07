_DWORD *sub_24868CADC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_24868CB08()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24868CB70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11DeepThought38SiriPenetrationRateJsonLoggingReporter_jsonResult;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_24868CC14@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t _s11DeepThought19AggregationIntervalVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24868CCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2486B4DAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24868CDB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2486B4DAC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24868CED4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_24868D00C(uint64_t a1, uint64_t (*a2)(void), char a3, uint64_t a4, uint64_t *a5)
{
  v8 = a2(0);
  type metadata accessor for PenetrationRateCalculationTask();
  result = swift_allocObject();
  *(result + 16) = a3;
  *(result + 24) = v8;
  *(result + 32) = a4;
  *a5 = result;
  return result;
}

uint64_t sub_24868D08C(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t SiriPenetrationRateResult.countsByAggregationInterval.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

BOOL sub_24868D27C(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t *__return_ptr, uint64_t))
{
  a2(0);
  v6 = a3();
  a4(&v9, v6);

  v7 = v10;
  if (v10)
  {
  }

  return v7 != 0;
}

unint64_t _s11DeepThought24SiriPenetrationRateUtilsO07alignToC15ExecutionEvents04siriiJ00K8UIEvents0K13Conversations12timeDurationSay0aB15BiomeFoundation15FeaturizedEventCGAL_ALSayAI0R12ConversationCGSdtFZ_0(unint64_t a1, unint64_t a2, unint64_t a3, double a4)
{
  v121 = a3;
  v143 = sub_2486B4FCC();
  v139 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v142 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_2486B4DAC();
  *&v127 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v132 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_2486B53BC();
  v118 = *(v144 - 8);
  v9 = MEMORY[0x28223BE20](v144);
  v11 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v130 = &v117 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v117 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v117 - v17;
  v141 = sub_2486B535C();
  swift_allocObject();
  result = sub_2486B530C();
  v134 = result;
  v117 = v11;
  if (a1 >> 62)
  {
    goto LABEL_129;
  }

  v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v145 = a2;
  v140 = v16;
  if (!v21)
  {
LABEL_16:
    swift_allocObject();
    v124 = sub_2486B530C();
    if (a2 >> 62)
    {
      v32 = sub_2486B56BC();
    }

    else
    {
      v32 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = v134;
    if (v32)
    {
      result = sub_2486B506C();
      v147 = result;
      if (v32 >= 1)
      {
        v18 = 0;
        v146 = (a2 & 0xC000000000000001);
        v138 = (v118 + 8);
        v129 = (v127 + 8);
        v35 = *MEMORY[0x277D04490];
        v136 = (v139 + 104);
        v135 = (v139 + 8);
        *&v34 = 136315650;
        v128 = v34;
        LODWORD(v131) = v35;
        *&v137 = v32;
        while (1)
        {
          if (v146)
          {
            a1 = MEMORY[0x24C1D5E60](v18, a2);
          }

          else
          {
            a1 = *(a2 + 8 * v18 + 32);
          }

          sub_2486B505C();
          sub_2486B50FC();

          if (v150)
          {

            sub_2486B50EC();
            swift_retain_n();
            v36 = sub_2486B539C();
            v37 = sub_2486B55AC();
            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              v39 = swift_slowAlloc();
              v148 = v39;
              *v38 = v128;
              sub_2486B512C();
              v40 = v132;
              sub_2486B4D5C();
              sub_24868EAC0();
              a2 = v133;
              v16 = sub_2486B57CC();
              v42 = v41;
              (*v129)(v40, a2);
              v43 = sub_2486965C0(v16, v42, &v148);

              *(v38 + 4) = v43;
              *(v38 + 12) = 2048;
              sub_2486B512C();
              v45 = v44;

              v46 = v45 / a4;
              if (COERCE__INT64(fabs(v45 / a4)) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_121;
              }

              if (v46 <= -9.22337204e18)
              {
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
                result = sub_2486B56BC();
                v21 = result;
                goto LABEL_3;
              }

              if (v46 >= 9.22337204e18)
              {
                goto LABEL_123;
              }

              *(v38 + 14) = v46;

              *(v38 + 22) = 2080;
              sub_2486B505C();
              sub_2486B50FC();

              if (v150)
              {
                v47 = v149;
              }

              else
              {
                v47 = 0;
              }

              if (v150)
              {
                v48 = v150;
              }

              else
              {
                v48 = 0xE000000000000000;
              }

              v49 = sub_2486965C0(v47, v48, &v148);

              *(v38 + 24) = v49;
              _os_log_impl(&dword_24868B000, v36, v37, "marker: trying to add the event to the siriUIEventsByBucketizedTimestamp at time %s with bucket %ld with %s", v38, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C1D6650](v39, -1, -1);
              MEMORY[0x24C1D6650](v38, -1, -1);

              v16 = v140;
              (*v138)(v140, v144);
              v33 = v134;
              a2 = v145;
            }

            else
            {

              (*v138)(v16, v144);
            }

            v50 = v142;
            v151 = v141;
            v152 = MEMORY[0x277D04568];
            v149 = v33;
            v35 = v131;
            v51 = v143;
            (*v136)(v142, v131, v143);

            sub_2486B532C();

            (*v135)(v50, v51);
            __swift_destroy_boxed_opaque_existential_1Tm(&v149);
            v32 = v137;
          }

          else
          {
          }

          if (v32 == ++v18)
          {
            goto LABEL_41;
          }
        }
      }

      goto LABEL_133;
    }

    v35 = *MEMORY[0x277D04490];
LABEL_41:
    v52 = v139;
    v53 = *(v139 + 104);
    v55 = v142;
    v54 = v143;
    v138 = (v139 + 104);
    *&v137 = v53;
    v53(v142, v35, v143);
    sub_2486B52EC();
    v56 = *(v52 + 8);
    v139 = v52 + 8;
    v136 = v56;
    v56(v55, v54);
    sub_2486B52DC();
    swift_allocObject();
    v18 = sub_2486B52AC();
    if (v121 >> 62)
    {
      a1 = sub_2486B56BC();
    }

    else
    {
      a1 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v58 = v130;
    v129 = v18;
    if (a1)
    {
      v59 = 0;
      v123 = v121 & 0xC000000000000001;
      v120 = v121 & 0xFFFFFFFFFFFFFF8;
      v119 = v121 + 32;
      v135 = (v118 + 8);
      *&v128 = v127 + 8;
      a2 = MEMORY[0x277D837D0];
      *&v57 = 136315394;
      v127 = v57;
      LODWORD(v131) = v35;
      v122 = a1;
      do
      {
        if (v123)
        {
          v60 = MEMORY[0x24C1D5E60](v59, v121);
          v61 = __OFADD__(v59, 1);
          v62 = v59 + 1;
          if (v61)
          {
            goto LABEL_116;
          }
        }

        else
        {
          if (v59 >= *(v120 + 16))
          {
            goto LABEL_124;
          }

          v61 = __OFADD__(v59, 1);
          v62 = v59 + 1;
          if (v61)
          {
            goto LABEL_116;
          }
        }

        v126 = v62;
        v125 = v60;
        v63 = sub_2486B51EC();
        v16 = v63;
        if (v63 >> 62)
        {
          v64 = sub_2486B56BC();
          if (v64)
          {
LABEL_54:
            v147 = sub_2486B4FEC();
            if (v64 >= 1)
            {
              a1 = 0;
              v145 = v64;
              v146 = (v16 & 0xC000000000000001);
              v140 = v16;
              while (1)
              {
                if (v146)
                {
                  MEMORY[0x24C1D5E60](a1, v16);
                }

                else
                {
                }

                sub_2486B4FDC();
                sub_2486B523C();

                if (v150 || (sub_2486B500C(), sub_2486B4FFC(), sub_2486B523C(), , v150))
                {

                  sub_2486B50EC();
                  swift_retain_n();
                  a2 = sub_2486B539C();
                  v16 = sub_2486B55AC();
                  if (os_log_type_enabled(a2, v16))
                  {
                    v67 = swift_slowAlloc();
                    v68 = swift_slowAlloc();
                    v149 = v68;
                    *v67 = v127;
                    sub_2486B524C();
                    v69 = v132;
                    sub_2486B4D5C();
                    sub_24868EAC0();
                    v18 = v133;
                    v70 = sub_2486B57CC();
                    v72 = v71;
                    (*v128)(v69, v18);
                    v73 = sub_2486965C0(v70, v72, &v149);

                    *(v67 + 4) = v73;
                    *(v67 + 12) = 2048;
                    sub_2486B524C();
                    v75 = v74;

                    v76 = v75 / a4;
                    if (COERCE__INT64(fabs(v75 / a4)) > 0x7FEFFFFFFFFFFFFFLL)
                    {
                      __break(1u);
LABEL_113:
                      __break(1u);
LABEL_114:
                      __break(1u);
                      goto LABEL_115;
                    }

                    if (v76 <= -9.22337204e18)
                    {
                      goto LABEL_113;
                    }

                    if (v76 >= 9.22337204e18)
                    {
                      goto LABEL_114;
                    }

                    *(v67 + 14) = v76;

                    _os_log_impl(&dword_24868B000, a2, v16, "marker: trying to add the turn to the turnsByBucketizedTimestamp at time %s with bucket %ld", v67, 0x16u);
                    __swift_destroy_boxed_opaque_existential_1Tm(v68);
                    MEMORY[0x24C1D6650](v68, -1, -1);
                    MEMORY[0x24C1D6650](v67, -1, -1);

                    v58 = v130;
                    (*v135)(v130, v144);
                    v33 = v134;
                    v18 = v129;
                    v35 = v131;
                  }

                  else
                  {

                    (*v135)(v58, v144);
                  }

                  v65 = v142;
                  v151 = v141;
                  v152 = MEMORY[0x277D04568];
                  v149 = v33;
                  v66 = v143;
                  (v137)(v142, v35, v143);

                  sub_2486B52BC();

                  v136(v65, v66);
                  __swift_destroy_boxed_opaque_existential_1Tm(&v149);
                  a2 = MEMORY[0x277D837D0];
                  v16 = v140;
                }

                else
                {
                }

                if (v145 == ++a1)
                {
                  goto LABEL_45;
                }
              }
            }

LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
            goto LABEL_122;
          }
        }

        else
        {
          v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v64)
          {
            goto LABEL_54;
          }
        }

LABEL_45:

        a1 = v122;
        v59 = v126;
      }

      while (v126 != v122);
    }

    v78 = v142;
    v77 = v143;
    (v137)(v142, v35, v143);
    sub_2486B534C();
    v136(v78, v77);
    v79 = v117;
    sub_2486B50EC();

    v16 = v124;

    a1 = sub_2486B539C();
    v80 = sub_2486B55AC();

    if (os_log_type_enabled(a1, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v149 = v82;
      *v81 = 136315650;
      v83 = sub_2486B533C();
      v85 = sub_2486965C0(v83, v84, &v149);

      *(v81 + 4) = v85;
      *(v81 + 12) = 2080;
      v86 = sub_2486B533C();
      v88 = sub_2486965C0(v86, v87, &v149);

      *(v81 + 14) = v88;
      *(v81 + 22) = 2080;
      v89 = sub_2486B52CC();
      v91 = sub_2486965C0(v89, v90, &v149);

      *(v81 + 24) = v91;
      _os_log_impl(&dword_24868B000, a1, v80, "    marker: The detail of siriExecutionEventsByBucketizedTimestamp is %s,\n\n            The detail of siriUIEventsByBucketizedTimestamp is %s,\n\n            The detail of turnsByBucketizedTimestamp is %s,\n", v81, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1D6650](v82, -1, -1);
      MEMORY[0x24C1D6650](v81, -1, -1);
    }

    (*(v118 + 8))(v79, v144);
    v92 = sub_2486B531C();
    a2 = 0;
    v94 = v92 + 64;
    v93 = *(v92 + 64);
    v147 = v92;
    v95 = 1 << *(v92 + 32);
    v96 = -1;
    if (v95 < 64)
    {
      v96 = ~(-1 << v95);
    }

    v18 = v96 & v93;
    v97 = MEMORY[0x277D84F90];
    v142 = ((v95 + 63) >> 6);
    v143 = v92 + 64;
    while (1)
    {
      if (!v18)
      {
        while (1)
        {
          v98 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            break;
          }

          if (v98 >= v142)
          {
            goto LABEL_111;
          }

          v18 = *(v94 + 8 * v98);
          ++a2;
          if (v18)
          {
            a2 = v98;
            goto LABEL_83;
          }
        }

LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

LABEL_83:
      v99 = *(*(v147 + 56) + ((a2 << 9) | (8 * __clz(__rbit64(v18)))));
      v100 = v99 >> 62 ? sub_2486B56BC() : *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v101 = v97 >> 62;
      if (v97 >> 62)
      {
        v116 = sub_2486B56BC();
        v103 = v116 + v100;
        if (__OFADD__(v116, v100))
        {
LABEL_110:
          __break(1u);
LABEL_111:

          return v97;
        }
      }

      else
      {
        v102 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v103 = v102 + v100;
        if (__OFADD__(v102, v100))
        {
          goto LABEL_110;
        }
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v101)
      {
        goto LABEL_92;
      }

      v104 = v97 & 0xFFFFFFFFFFFFFF8;
      if (v103 > *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_93;
      }

LABEL_94:
      v105 = *(v104 + 16);
      v16 = *(v104 + 24);
      v106 = v99 >> 62;
      a1 = v99;
      if (v99 >> 62)
      {
        v108 = v104;
        v109 = sub_2486B56BC();
        v104 = v108;
        v107 = v109;
      }

      else
      {
        v107 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 &= v18 - 1;
      if (v107)
      {
        if (((v16 >> 1) - v105) < v100)
        {
          goto LABEL_126;
        }

        v16 = v104 + 8 * v105 + 32;
        v145 = v100;
        v146 = v97;
        v144 = v104;
        if (v106)
        {
          if (v107 < 1)
          {
            goto LABEL_128;
          }

          sub_24868EA14();
          v110 = 0;
          v111 = a1;
          do
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14E0, &unk_2486B6230);
            v112 = sub_2486A2BE4(&v149, v110, v111);
            a1 = *v113;

            (v112)(&v149, 0);
            *(v16 + 8 * v110++) = a1;
          }

          while (v107 != v110);
        }

        else
        {
          a1 &= 0xFFFFFFFFFFFFFF8uLL;
          sub_2486B513C();
          swift_arrayInitWithCopy();
        }

        v97 = v146;
        v94 = v143;
        if (v145 > 0)
        {
          v114 = *(v144 + 16);
          v61 = __OFADD__(v114, v145);
          v115 = v114 + v145;
          if (v61)
          {
            goto LABEL_127;
          }

          *(v144 + 16) = v115;
        }
      }

      else
      {

        if (v100 > 0)
        {
          goto LABEL_125;
        }
      }
    }

    if (v101)
    {
LABEL_92:
      sub_2486B56BC();
    }

LABEL_93:
    v97 = sub_2486B565C();
    v104 = v97 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_94;
  }

  if (v21 >= 1)
  {
    v22 = 0;
    v147 = a1 & 0xC000000000000001;
    v146 = (v118 + 8);
    v138 = (v127 + 8);
    *&v20 = 136315394;
    v137 = v20;
    v136 = a1;
    v135 = v18;
    v131 = v21;
    while (1)
    {
      if (v147)
      {
        MEMORY[0x24C1D5E60](v22, a1);
      }

      else
      {
      }

      sub_2486B50EC();
      swift_retain_n();
      v23 = sub_2486B539C();
      v24 = sub_2486B55AC();
      if (os_log_type_enabled(v23, v24))
      {
        a2 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v149 = v16;
        *a2 = v137;
        sub_2486B512C();
        v25 = v132;
        sub_2486B4D5C();
        sub_24868EAC0();
        v18 = v133;
        a1 = sub_2486B57CC();
        v27 = v26;
        (*v138)(v25, v18);
        v28 = sub_2486965C0(a1, v27, &v149);

        *(a2 + 4) = v28;
        *(a2 + 12) = 2048;
        sub_2486B512C();
        v30 = v29;

        v31 = v30 / a4;
        if (COERCE__INT64(fabs(v30 / a4)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_117;
        }

        if (v31 <= -9.22337204e18)
        {
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v31 >= 9.22337204e18)
        {
          goto LABEL_119;
        }

        *(a2 + 14) = v31;

        _os_log_impl(&dword_24868B000, v23, v24, "marker: adding the event to the siriExecutionEventsByBucketizedTimestamp at time %s with bucket %ld", a2, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x24C1D6650](v16, -1, -1);
        MEMORY[0x24C1D6650](a2, -1, -1);

        v18 = v135;
        (*v146)(v135, v144);
        a2 = v145;
        v16 = v140;
        a1 = v136;
        v21 = v131;
      }

      else
      {

        (*v146)(v18, v144);
      }

      ++v22;
      sub_2486B512C();
      sub_2486B52FC();

      if (v21 == v22)
      {
        goto LABEL_16;
      }
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

unint64_t sub_24868E7B8(uint64_t a1)
{
  result = sub_24868E7E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24868E7E0()
{
  result = qword_27EEA14D8;
  if (!qword_27EEA14D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA14D8);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24868E848(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24868E890(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriPenetrationRateUtils(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SiriPenetrationRateUtils(_WORD *result, int a2, int a3)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_24868EA14()
{
  result = qword_27EEA14E8;
  if (!qword_27EEA14E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEA14E0, &unk_2486B6230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA14E8);
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

unint64_t sub_24868EAC0()
{
  result = qword_280DCC718;
  if (!qword_280DCC718)
  {
    sub_2486B4DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DCC718);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t Date.getPreviousDate(calendar:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2486B4EFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  (*(v3 + 104))(v5, *MEMORY[0x277CC9968], v2);
  sub_2486B4ECC();
  (*(v3 + 8))(v5, v2);
  v9 = sub_2486B4DAC();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v8, 1, v9);
  if (result != 1)
  {
    return (*(v10 + 32))(a1, v8, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_24868ED58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v26 = a1;
  v22 = a4;
  v4 = sub_2486B4E9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2486B4EAC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2486B4E7C();
  v23 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v22 - v17;
  (*(v13 + 104))(v15, *MEMORY[0x277CC9878], v12);
  (*(v9 + 104))(v11, *MEMORY[0x277CC9900], v8);
  (*(v5 + 104))(v7, *MEMORY[0x277CC98E8], v4);
  sub_2486B4EBC();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v23);
  v19 = sub_2486B4DAC();
  v20 = *(v19 - 8);
  result = (*(v20 + 48))(v18, 1, v19);
  if (result != 1)
  {
    return (*(v20 + 32))(v22, v18, v19);
  }

  __break(1u);
  return result;
}

uint64_t Date.getOffsetDateByDays(calendar:numOfDays:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_2486B4EFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  (*(v4 + 104))(v6, *MEMORY[0x277CC9968], v3);
  sub_2486B4ECC();
  (*(v4 + 8))(v6, v3);
  v10 = sub_2486B4DAC();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v9, 1, v10);
  if (result != 1)
  {
    return (*(v11 + 32))(a2, v9, v10);
  }

  __break(1u);
  return result;
}

uint64_t static Calendar.currentUTC.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F8, &qword_2486B68D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_2486B4EDC();
  sub_2486B4F1C();
  v3 = sub_2486B4F2C();
  result = (*(*(v3 - 8) + 48))(v2, 1, v3);
  if (result != 1)
  {
    return sub_2486B4EEC();
  }

  __break(1u);
  return result;
}

uint64_t Calendar.numberOfDaysBetween(start:end:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_2486B4D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1500, &qword_2486B6330);
  v6 = sub_2486B4EFC();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2486B6240;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x277CC9968], v6);
  sub_24868FAEC(v9);
  swift_setDeallocating();
  (*(v7 + 8))(v9 + v8, v6);
  swift_deallocClassInstance();
  sub_2486B4E8C();

  result = sub_2486B4D1C();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    (*(v3 + 8))(v5, v2);
    return v12;
  }

  return result;
}

uint64_t sub_24868F590()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  __swift_allocate_value_buffer(v0, qword_280DCC700);
  v1 = __swift_project_value_buffer(v0, qword_280DCC700);
  v2 = sub_2486B4DAC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t static CustomDate.dateOverride.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280DCC6F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  v3 = __swift_project_value_buffer(v2, qword_280DCC700);
  swift_beginAccess();
  return sub_24868FE44(v3, a1);
}

uint64_t static CustomDate.dateOverride.setter(uint64_t a1)
{
  if (qword_280DCC6F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  v3 = __swift_project_value_buffer(v2, qword_280DCC700);
  swift_beginAccess();
  sub_24868FEB4(a1, v3);
  swift_endAccess();
  return sub_24868FF24(a1);
}

uint64_t (*static CustomDate.dateOverride.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280DCC6F8 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  __swift_project_value_buffer(v1, qword_280DCC700);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_24868F814@<X0>(uint64_t a1@<X8>)
{
  if (qword_280DCC6F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  v3 = __swift_project_value_buffer(v2, qword_280DCC700);
  swift_beginAccess();
  return sub_24868FE44(v3, a1);
}

uint64_t sub_24868F8AC(uint64_t a1)
{
  if (qword_280DCC6F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  v3 = __swift_project_value_buffer(v2, qword_280DCC700);
  swift_beginAccess();
  sub_24868FEB4(a1, v3);
  return swift_endAccess();
}

uint64_t static CustomDate.current()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v12 - v4;
  if (qword_280DCC6F8 != -1)
  {
    v11 = v3;
    swift_once();
    v3 = v11;
  }

  v6 = __swift_project_value_buffer(v3, qword_280DCC700);
  swift_beginAccess();
  sub_24868FE44(v6, v5);
  v7 = sub_2486B4DAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_2486B4D9C();
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_24868FF24(v5);
  }

  return result;
}

uint64_t sub_24868FAEC(uint64_t a1)
{
  v2 = sub_2486B4EFC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1510, "n'");
    v9 = sub_2486B560C();
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
      sub_2486907FC(&unk_280DCC830, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_2486B53FC();
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
          sub_2486907FC(&qword_27EEA1518, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_2486B542C();
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

  return MEMORY[0x277D84FA0];
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24868FE44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24868FEB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24868FF24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *_s11DeepThought10CustomDateO15isTodayOrFuture4date8calendarSb10Foundation0D0V_AG8CalendarVtFZ_0(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v75 = a1;
  v82 = sub_2486B4E9C();
  v87 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v3 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2486B4EAC();
  v86 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2486B4E7C();
  v88 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v79 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  v9 = MEMORY[0x28223BE20](v8);
  v74 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v76 = &v57 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - v13;
  v15 = sub_2486B4DAC();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v57 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v57 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v57 - v22;
  if (qword_280DCC6F8 != -1)
  {
    swift_once();
  }

  v77 = v23;
  v24 = __swift_project_value_buffer(v8, qword_280DCC700);
  swift_beginAccess();
  sub_24868FE44(v24, v14);
  v25 = *(v16 + 48);
  v26 = v25(v14, 1, v15);
  v73 = v16;
  v80 = v25;
  v81 = v16 + 48;
  v78 = v15;
  v84 = v21;
  if (v26 == 1)
  {
    sub_2486B4D9C();
    if (v25(v14, 1, v15) != 1)
    {
      sub_24868FF24(v14);
    }
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
  }

  v27 = v88;
  v28 = *(v88 + 104);
  v29 = v79;
  v70 = *MEMORY[0x277CC9878];
  v71 = v88 + 104;
  v69 = v28;
  v28(v79);
  v30 = v86;
  v31 = *(v86 + 104);
  v67 = *MEMORY[0x277CC9900];
  v68 = v86 + 104;
  v66 = v31;
  v31(v6);
  v32 = v4;
  v33 = v87;
  v34 = *(v87 + 104);
  v64 = *MEMORY[0x277CC98E8];
  v35 = v82;
  v65 = v87 + 104;
  v63 = v34;
  v34(v3);
  v36 = v76;
  sub_2486B4EBC();
  v37 = *(v33 + 8);
  v87 = v33 + 8;
  v58 = v3;
  v62 = v37;
  v37(v3, v35);
  v38 = *(v30 + 8);
  v59 = v6;
  v72 = v32;
  v86 = v30 + 8;
  v61 = v38;
  v38(v6, v32);
  v39 = *(v27 + 8);
  v40 = v29;
  v41 = v85;
  v88 = v27 + 8;
  v60 = v39;
  v39(v40, v85);
  v42 = v78;
  v43 = v80(v36, 1, v78) == 1;
  result = v84;
  if (v43)
  {
    __break(1u);
  }

  else
  {
    v45 = v73;
    v84 = *(v73 + 8);
    (v84)(result, v42);
    v76 = *(v45 + 32);
    (v76)(v77, v36, v42);
    v46 = v79;
    v69(v79, v70, v41);
    v47 = v59;
    v48 = v72;
    v66(v59, v67, v72);
    v49 = v58;
    v50 = v82;
    v63(v58, v64, v82);
    v51 = v74;
    sub_2486B4EBC();
    v62(v49, v50);
    v52 = v78;
    v61(v47, v48);
    v60(v46, v41);
    result = (v80)(v51, 1, v52);
    if (result != 1)
    {
      v53 = v57;
      (v76)(v57, v51, v52);
      sub_2486907FC(&qword_27EEA1508, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v54 = v77;
      v55 = sub_2486B541C();
      v56 = v84;
      (v84)(v53, v52);
      (v56)(v54, v52);
      return ((v55 & 1) == 0);
    }
  }

  __break(1u);
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2486907FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SiriPenetrationRateSELFReporter.odmId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_odmId;
  v4 = sub_2486B4DFC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SiriPenetrationRateSELFReporter.__allocating_init(_:odmId:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_logger;
  v6 = sub_2486B53BC();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  v7 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_odmId;
  v8 = sub_2486B4DFC();
  (*(*(v8 - 8) + 32))(v4 + v7, a2, v8);
  return v4;
}

uint64_t SiriPenetrationRateSELFReporter.init(_:odmId:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_logger;
  v6 = sub_2486B53BC();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  v7 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_odmId;
  v8 = sub_2486B4DFC();
  (*(*(v8 - 8) + 32))(v2 + v7, a2, v8);
  return v2;
}

uint64_t sub_248690A40(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;

  return MEMORY[0x2822009F8](sub_248690AB0, 0, 0);
}

void sub_248690AB0()
{
  v17 = v0;
  v1 = 0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v15 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_odmId;
  v7 = (63 - v5) >> 6;
  while (v6)
  {
LABEL_9:
    v9 = __clz(__rbit64(v6)) | (v1 << 6);
    v10 = *(v2 + 48) + 16 * v9;
    v11 = *(v10 + 8);
    v12 = *(*(v2 + 56) + 8 * v9);
    v6 &= v6 - 1;
    LODWORD(v16[0]) = *v10;
    v16[1] = v11;

    v13 = _s11DeepThought20SELFMessageConverterO27convertToODMSiriClientEvent19aggregationInterval6counts5odmId6loggerSo0g6SchemaghI0CSgAA011AggregationK0V_SayAA14CountsReportedVG10Foundation4UUIDV2os6LoggerVtFZ_0(v16, v12, v3 + v15);

    if (v13)
    {
      sub_248690C20(v13);
    }
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v2 + 64 + 8 * v8);
    ++v1;
    if (v6)
    {
      v1 = v8;
      goto LABEL_9;
    }
  }

  v14 = v0[1];

  v14();
}

uint64_t sub_248690C20(void *a1)
{
  v2 = sub_2486B4DFC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  v9 = [objc_opt_self() sharedAnalytics];
  v10 = [v9 defaultMessageStream];

  sub_2486B4DEC();
  v11 = *(v3 + 16);
  v36 = v2;
  v11(v6, v8, v2);
  v12 = a1;
  v13 = sub_2486B539C();
  v14 = sub_2486B55AC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = v10;
    v16 = v15;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37 = v33;
    *v16 = 136315394;
    v17 = sub_2486B4DCC();
    v19 = v18;
    v34 = v8;
    v20 = *(v3 + 8);
    v21 = v6;
    v22 = v36;
    v20(v21, v36);
    v23 = sub_2486965C0(v17, v19, &v37);

    *(v16 + 4) = v23;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v12;
    v24 = v32;
    *v32 = v12;
    v25 = v12;
    _os_log_impl(&dword_24868B000, v13, v14, "SELF reporter: reported task with stats, isolatedStreamUUID = %s, message = %@", v16, 0x16u);
    sub_248694A50(v24, &qword_27EEA1540, &qword_2486B6DC0);
    MEMORY[0x24C1D6650](v24, -1, -1);
    v26 = v33;
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x24C1D6650](v26, -1, -1);
    v27 = v16;
    v10 = v35;
    MEMORY[0x24C1D6650](v27, -1, -1);

    v28 = v20;
    v8 = v34;
  }

  else
  {

    v28 = *(v3 + 8);
    v29 = v6;
    v22 = v36;
    v28(v29, v36);
  }

  v30 = sub_2486B4DDC();
  [v10 emitMessage:v12 isolatedStreamUUID:v30];

  return (v28)(v8, v22);
}

uint64_t sub_248690F44()
{
  v1 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_odmId;
  v2 = sub_2486B4DFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_logger;
  v4 = sub_2486B53BC();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t SiriPenetrationRateSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_odmId;
  v2 = sub_2486B4DFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_logger;
  v4 = sub_2486B53BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t SiriPenetrationRateSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_odmId;
  v2 = sub_2486B4DFC();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_logger;
  v5 = sub_2486B53BC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t sub_248691190(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_2486B54BC();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t sub_24869122C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_2486B57BC() & 1;
  }
}

id _s11DeepThought20SELFMessageConverterO30convertLocaleStringToISOLocale6localeSo08SISchemaI0CSgSSSg_tFZ_0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {

    v5 = sub_248691190(6, a1, v2, v4);
    v7 = v6;
    v9 = v8;
    v11 = v10;

    LOBYTE(v5) = sub_24869122C(v5, v7, v9, v11, 0x454C41434F4CLL, 0xE600000000000000);

    if (v5)
    {
      v24 = v2;
      sub_2486949FC();
      v12 = sub_2486B55EC();
      if (*(v12 + 16) == 3)
      {
        v13 = v12;

        v14 = sub_2486B543C();

        v15 = v14;
        if ([v15 isEqualToString:{@"ISOLANGUAGECODE_UNKNOWN", 95, 0xE100000000000000, a1, v24}])
        {
          v16 = 0;
        }

        else if ([v15 isEqualToString:@"AB"])
        {
          v16 = 1;
        }

        else if ([v15 isEqualToString:@"AA"])
        {
          v16 = 2;
        }

        else if ([v15 isEqualToString:@"AF"])
        {
          v16 = 3;
        }

        else if ([v15 isEqualToString:@"AK"])
        {
          v16 = 4;
        }

        else if ([v15 isEqualToString:@"SQ"])
        {
          v16 = 5;
        }

        else if ([v15 isEqualToString:@"AM"])
        {
          v16 = 6;
        }

        else if ([v15 isEqualToString:@"AR"])
        {
          v16 = 7;
        }

        else if ([v15 isEqualToString:@"AN"])
        {
          v16 = 8;
        }

        else if ([v15 isEqualToString:@"HY"])
        {
          v16 = 9;
        }

        else if ([v15 isEqualToString:@"AS"])
        {
          v16 = 10;
        }

        else if ([v15 isEqualToString:@"AV"])
        {
          v16 = 11;
        }

        else if ([v15 isEqualToString:@"AE"])
        {
          v16 = 12;
        }

        else if ([v15 isEqualToString:@"AY"])
        {
          v16 = 13;
        }

        else if ([v15 isEqualToString:@"AZ"])
        {
          v16 = 14;
        }

        else if ([v15 isEqualToString:@"BM"])
        {
          v16 = 15;
        }

        else if ([v15 isEqualToString:@"BA"])
        {
          v16 = 16;
        }

        else if ([v15 isEqualToString:@"EU"])
        {
          v16 = 17;
        }

        else if ([v15 isEqualToString:@"BE"])
        {
          v16 = 18;
        }

        else if ([v15 isEqualToString:@"BN"])
        {
          v16 = 19;
        }

        else if ([v15 isEqualToString:@"BI"])
        {
          v16 = 20;
        }

        else if ([v15 isEqualToString:@"BS"])
        {
          v16 = 21;
        }

        else if ([v15 isEqualToString:@"BR"])
        {
          v16 = 22;
        }

        else if ([v15 isEqualToString:@"BG"])
        {
          v16 = 23;
        }

        else if ([v15 isEqualToString:@"MY"])
        {
          v16 = 24;
        }

        else if ([v15 isEqualToString:@"CA"])
        {
          v16 = 25;
        }

        else if ([v15 isEqualToString:@"CH"])
        {
          v16 = 26;
        }

        else if ([v15 isEqualToString:@"CE"])
        {
          v16 = 27;
        }

        else if ([v15 isEqualToString:@"NY"])
        {
          v16 = 28;
        }

        else if ([v15 isEqualToString:@"ZH"])
        {
          v16 = 29;
        }

        else if ([v15 isEqualToString:@"CV"])
        {
          v16 = 30;
        }

        else if ([v15 isEqualToString:@"KW"])
        {
          v16 = 31;
        }

        else if ([v15 isEqualToString:@"CO"])
        {
          v16 = 32;
        }

        else if ([v15 isEqualToString:@"CR"])
        {
          v16 = 33;
        }

        else if ([v15 isEqualToString:@"HR"])
        {
          v16 = 34;
        }

        else if ([v15 isEqualToString:@"CS"])
        {
          v16 = 35;
        }

        else if ([v15 isEqualToString:@"DA"])
        {
          v16 = 36;
        }

        else if ([v15 isEqualToString:@"DV"])
        {
          v16 = 37;
        }

        else if ([v15 isEqualToString:@"NL"])
        {
          v16 = 38;
        }

        else if ([v15 isEqualToString:@"DZ"])
        {
          v16 = 39;
        }

        else if ([v15 isEqualToString:@"EN"])
        {
          v16 = 40;
        }

        else if ([v15 isEqualToString:@"EO"])
        {
          v16 = 41;
        }

        else if ([v15 isEqualToString:@"ET"])
        {
          v16 = 42;
        }

        else if ([v15 isEqualToString:@"EE"])
        {
          v16 = 43;
        }

        else if ([v15 isEqualToString:@"FO"])
        {
          v16 = 44;
        }

        else if ([v15 isEqualToString:@"FJ"])
        {
          v16 = 45;
        }

        else if ([v15 isEqualToString:@"FI"])
        {
          v16 = 46;
        }

        else if ([v15 isEqualToString:@"FR"])
        {
          v16 = 47;
        }

        else if ([v15 isEqualToString:@"FF"])
        {
          v16 = 48;
        }

        else if ([v15 isEqualToString:@"GL"])
        {
          v16 = 49;
        }

        else if ([v15 isEqualToString:@"KA"])
        {
          v16 = 50;
        }

        else if ([v15 isEqualToString:@"DE"])
        {
          v16 = 51;
        }

        else if ([v15 isEqualToString:@"EL"])
        {
          v16 = 52;
        }

        else if ([v15 isEqualToString:@"GN"])
        {
          v16 = 53;
        }

        else if ([v15 isEqualToString:@"GU"])
        {
          v16 = 54;
        }

        else if ([v15 isEqualToString:@"HT"])
        {
          v16 = 55;
        }

        else if ([v15 isEqualToString:@"HA"])
        {
          v16 = 56;
        }

        else if ([v15 isEqualToString:@"HE"])
        {
          v16 = 57;
        }

        else if ([v15 isEqualToString:@"HZ"])
        {
          v16 = 58;
        }

        else if ([v15 isEqualToString:@"HI"])
        {
          v16 = 59;
        }

        else if ([v15 isEqualToString:@"HO"])
        {
          v16 = 60;
        }

        else if ([v15 isEqualToString:@"HU"])
        {
          v16 = 61;
        }

        else if ([v15 isEqualToString:@"IA"])
        {
          v16 = 62;
        }

        else if ([v15 isEqualToString:@"ID"])
        {
          v16 = 63;
        }

        else if ([v15 isEqualToString:@"IE"])
        {
          v16 = 64;
        }

        else if ([v15 isEqualToString:@"GA"])
        {
          v16 = 65;
        }

        else if ([v15 isEqualToString:@"IG"])
        {
          v16 = 66;
        }

        else if ([v15 isEqualToString:@"IK"])
        {
          v16 = 67;
        }

        else if ([v15 isEqualToString:@"IO"])
        {
          v16 = 68;
        }

        else if ([v15 isEqualToString:@"IS"])
        {
          v16 = 69;
        }

        else if ([v15 isEqualToString:@"IT"])
        {
          v16 = 70;
        }

        else if ([v15 isEqualToString:@"IU"])
        {
          v16 = 71;
        }

        else if ([v15 isEqualToString:@"JA"])
        {
          v16 = 72;
        }

        else if ([v15 isEqualToString:@"JV"])
        {
          v16 = 73;
        }

        else if ([v15 isEqualToString:@"KL"])
        {
          v16 = 74;
        }

        else if ([v15 isEqualToString:@"KN"])
        {
          v16 = 75;
        }

        else if ([v15 isEqualToString:@"KR"])
        {
          v16 = 76;
        }

        else if ([v15 isEqualToString:@"KS"])
        {
          v16 = 77;
        }

        else if ([v15 isEqualToString:@"KK"])
        {
          v16 = 78;
        }

        else if ([v15 isEqualToString:@"KM"])
        {
          v16 = 79;
        }

        else if ([v15 isEqualToString:@"KI"])
        {
          v16 = 80;
        }

        else if ([v15 isEqualToString:@"RW"])
        {
          v16 = 81;
        }

        else if ([v15 isEqualToString:@"KY"])
        {
          v16 = 82;
        }

        else if ([v15 isEqualToString:@"KV"])
        {
          v16 = 83;
        }

        else if ([v15 isEqualToString:@"KG"])
        {
          v16 = 84;
        }

        else if ([v15 isEqualToString:@"KO"])
        {
          v16 = 85;
        }

        else if ([v15 isEqualToString:@"KU"])
        {
          v16 = 86;
        }

        else if ([v15 isEqualToString:@"KJ"])
        {
          v16 = 87;
        }

        else if ([v15 isEqualToString:@"LA"])
        {
          v16 = 88;
        }

        else if ([v15 isEqualToString:@"LB"])
        {
          v16 = 89;
        }

        else if ([v15 isEqualToString:@"LG"])
        {
          v16 = 90;
        }

        else if ([v15 isEqualToString:@"LI"])
        {
          v16 = 91;
        }

        else if ([v15 isEqualToString:@"LN"])
        {
          v16 = 92;
        }

        else if ([v15 isEqualToString:@"LO"])
        {
          v16 = 93;
        }

        else if ([v15 isEqualToString:@"LT"])
        {
          v16 = 94;
        }

        else if ([v15 isEqualToString:@"LU"])
        {
          v16 = 95;
        }

        else if ([v15 isEqualToString:@"LV"])
        {
          v16 = 96;
        }

        else if ([v15 isEqualToString:@"GV"])
        {
          v16 = 97;
        }

        else if ([v15 isEqualToString:@"MK"])
        {
          v16 = 98;
        }

        else if ([v15 isEqualToString:@"MG"])
        {
          v16 = 99;
        }

        else if ([v15 isEqualToString:@"MS"])
        {
          v16 = 100;
        }

        else if ([v15 isEqualToString:@"ML"])
        {
          v16 = 101;
        }

        else if ([v15 isEqualToString:@"MT"])
        {
          v16 = 102;
        }

        else if ([v15 isEqualToString:@"MI"])
        {
          v16 = 103;
        }

        else if ([v15 isEqualToString:@"MR"])
        {
          v16 = 104;
        }

        else if ([v15 isEqualToString:@"MH"])
        {
          v16 = 105;
        }

        else if ([v15 isEqualToString:@"MN"])
        {
          v16 = 106;
        }

        else if ([v15 isEqualToString:@"NA"])
        {
          v16 = 107;
        }

        else if ([v15 isEqualToString:@"NV"])
        {
          v16 = 108;
        }

        else if ([v15 isEqualToString:@"ND"])
        {
          v16 = 109;
        }

        else if ([v15 isEqualToString:@"NE"])
        {
          v16 = 110;
        }

        else if ([v15 isEqualToString:@"NG"])
        {
          v16 = 111;
        }

        else if ([v15 isEqualToString:@"NB"])
        {
          v16 = 112;
        }

        else if ([v15 isEqualToString:@"NN"])
        {
          v16 = 113;
        }

        else if ([v15 isEqualToString:@"NO"])
        {
          v16 = 114;
        }

        else if ([v15 isEqualToString:@"II"])
        {
          v16 = 115;
        }

        else if ([v15 isEqualToString:@"NR"])
        {
          v16 = 116;
        }

        else if ([v15 isEqualToString:@"OC"])
        {
          v16 = 117;
        }

        else if ([v15 isEqualToString:@"OJ"])
        {
          v16 = 118;
        }

        else if ([v15 isEqualToString:@"CU"])
        {
          v16 = 119;
        }

        else if ([v15 isEqualToString:@"OM"])
        {
          v16 = 120;
        }

        else if ([v15 isEqualToString:@"OR"])
        {
          v16 = 121;
        }

        else if ([v15 isEqualToString:@"OS"])
        {
          v16 = 122;
        }

        else if ([v15 isEqualToString:@"PA"])
        {
          v16 = 123;
        }

        else if ([v15 isEqualToString:@"PI"])
        {
          v16 = 124;
        }

        else if ([v15 isEqualToString:@"FA"])
        {
          v16 = 125;
        }

        else if ([v15 isEqualToString:@"PL"])
        {
          v16 = 126;
        }

        else if ([v15 isEqualToString:@"PS"])
        {
          v16 = 127;
        }

        else if ([v15 isEqualToString:@"PT"])
        {
          v16 = 128;
        }

        else if ([v15 isEqualToString:@"QU"])
        {
          v16 = 129;
        }

        else if ([v15 isEqualToString:@"RM"])
        {
          v16 = 130;
        }

        else if ([v15 isEqualToString:@"RN"])
        {
          v16 = 131;
        }

        else if ([v15 isEqualToString:@"RO"])
        {
          v16 = 132;
        }

        else if ([v15 isEqualToString:@"RU"])
        {
          v16 = 133;
        }

        else if ([v15 isEqualToString:@"SA"])
        {
          v16 = 134;
        }

        else if ([v15 isEqualToString:@"SC"])
        {
          v16 = 135;
        }

        else if ([v15 isEqualToString:@"SD"])
        {
          v16 = 136;
        }

        else if ([v15 isEqualToString:@"SE"])
        {
          v16 = 137;
        }

        else if ([v15 isEqualToString:@"SM"])
        {
          v16 = 138;
        }

        else if ([v15 isEqualToString:@"SG"])
        {
          v16 = 139;
        }

        else if ([v15 isEqualToString:@"SR"])
        {
          v16 = 140;
        }

        else if ([v15 isEqualToString:@"GD"])
        {
          v16 = 141;
        }

        else if ([v15 isEqualToString:@"SN"])
        {
          v16 = 142;
        }

        else if ([v15 isEqualToString:@"SI"])
        {
          v16 = 143;
        }

        else if ([v15 isEqualToString:@"SK"])
        {
          v16 = 144;
        }

        else if ([v15 isEqualToString:@"SL"])
        {
          v16 = 145;
        }

        else if ([v15 isEqualToString:@"SO"])
        {
          v16 = 146;
        }

        else if ([v15 isEqualToString:@"ST"])
        {
          v16 = 147;
        }

        else if ([v15 isEqualToString:@"ES"])
        {
          v16 = 148;
        }

        else if ([v15 isEqualToString:@"SU"])
        {
          v16 = 149;
        }

        else if ([v15 isEqualToString:@"SW"])
        {
          v16 = 150;
        }

        else if ([v15 isEqualToString:@"SS"])
        {
          v16 = 151;
        }

        else if ([v15 isEqualToString:@"SV"])
        {
          v16 = 152;
        }

        else if ([v15 isEqualToString:@"TA"])
        {
          v16 = 153;
        }

        else if ([v15 isEqualToString:@"TE"])
        {
          v16 = 154;
        }

        else if ([v15 isEqualToString:@"TG"])
        {
          v16 = 155;
        }

        else if ([v15 isEqualToString:@"TH"])
        {
          v16 = 156;
        }

        else if ([v15 isEqualToString:@"TI"])
        {
          v16 = 157;
        }

        else if ([v15 isEqualToString:@"BO"])
        {
          v16 = 158;
        }

        else if ([v15 isEqualToString:@"TK"])
        {
          v16 = 159;
        }

        else if ([v15 isEqualToString:@"TL"])
        {
          v16 = 160;
        }

        else if ([v15 isEqualToString:@"TN"])
        {
          v16 = 161;
        }

        else if ([v15 isEqualToString:@"TO"])
        {
          v16 = 162;
        }

        else if ([v15 isEqualToString:@"TR"])
        {
          v16 = 163;
        }

        else if ([v15 isEqualToString:@"TS"])
        {
          v16 = 164;
        }

        else if ([v15 isEqualToString:@"TT"])
        {
          v16 = 165;
        }

        else if ([v15 isEqualToString:@"TW"])
        {
          v16 = 166;
        }

        else if ([v15 isEqualToString:@"TY"])
        {
          v16 = 167;
        }

        else if ([v15 isEqualToString:@"UG"])
        {
          v16 = 168;
        }

        else if ([v15 isEqualToString:@"UK"])
        {
          v16 = 169;
        }

        else if ([v15 isEqualToString:@"UR"])
        {
          v16 = 170;
        }

        else if ([v15 isEqualToString:@"UZ"])
        {
          v16 = 171;
        }

        else if ([v15 isEqualToString:@"VE"])
        {
          v16 = 172;
        }

        else if ([v15 isEqualToString:@"VI"])
        {
          v16 = 173;
        }

        else if ([v15 isEqualToString:@"VO"])
        {
          v16 = 174;
        }

        else if ([v15 isEqualToString:@"WA"])
        {
          v16 = 175;
        }

        else if ([v15 isEqualToString:@"CY"])
        {
          v16 = 176;
        }

        else if ([v15 isEqualToString:@"WO"])
        {
          v16 = 177;
        }

        else if ([v15 isEqualToString:@"FY"])
        {
          v16 = 178;
        }

        else if ([v15 isEqualToString:@"XH"])
        {
          v16 = 179;
        }

        else if ([v15 isEqualToString:@"YI"])
        {
          v16 = 180;
        }

        else if ([v15 isEqualToString:@"YO"])
        {
          v16 = 181;
        }

        else if ([v15 isEqualToString:@"ZA"])
        {
          v16 = 182;
        }

        else if ([v15 isEqualToString:@"ZU"])
        {
          v16 = 183;
        }

        else if ([v15 isEqualToString:@"WUU"])
        {
          v16 = 184;
        }

        else if ([v15 isEqualToString:@"YUE"])
        {
          v16 = 185;
        }

        else
        {
          v16 = 0;
        }

        v18 = objc_opt_self();
        if (*(v13 + 16) >= 3uLL)
        {
          v19 = v18;

          v20 = sub_2486B543C();

          v2 = [v19 convertCountryCodeToSchemaCountryCode_];

          goto LABEL_758;
        }

        __break(1u);
        goto LABEL_754;
      }
    }

    else if (sub_2486B54AC() == 2)
    {
      sub_2486B548C();
      v17 = sub_2486B543C();

      v15 = v17;
      if ([v15 isEqualToString:@"ISOLANGUAGECODE_UNKNOWN"])
      {
        v16 = 0;
      }

      else if ([v15 isEqualToString:@"AB"])
      {
        v16 = 1;
      }

      else if ([v15 isEqualToString:@"AA"])
      {
        v16 = 2;
      }

      else if ([v15 isEqualToString:@"AF"])
      {
        v16 = 3;
      }

      else if ([v15 isEqualToString:@"AK"])
      {
        v16 = 4;
      }

      else if ([v15 isEqualToString:@"SQ"])
      {
        v16 = 5;
      }

      else if ([v15 isEqualToString:@"AM"])
      {
        v16 = 6;
      }

      else if ([v15 isEqualToString:@"AR"])
      {
        v16 = 7;
      }

      else if ([v15 isEqualToString:@"AN"])
      {
        v16 = 8;
      }

      else if ([v15 isEqualToString:@"HY"])
      {
        v16 = 9;
      }

      else if ([v15 isEqualToString:@"AS"])
      {
        v16 = 10;
      }

      else if ([v15 isEqualToString:@"AV"])
      {
        v16 = 11;
      }

      else if ([v15 isEqualToString:@"AE"])
      {
        v16 = 12;
      }

      else if ([v15 isEqualToString:@"AY"])
      {
        v16 = 13;
      }

      else if ([v15 isEqualToString:@"AZ"])
      {
        v16 = 14;
      }

      else if ([v15 isEqualToString:@"BM"])
      {
        v16 = 15;
      }

      else if ([v15 isEqualToString:@"BA"])
      {
        v16 = 16;
      }

      else if ([v15 isEqualToString:@"EU"])
      {
        v16 = 17;
      }

      else if ([v15 isEqualToString:@"BE"])
      {
        v16 = 18;
      }

      else if ([v15 isEqualToString:@"BN"])
      {
        v16 = 19;
      }

      else if ([v15 isEqualToString:@"BI"])
      {
        v16 = 20;
      }

      else if ([v15 isEqualToString:@"BS"])
      {
        v16 = 21;
      }

      else if ([v15 isEqualToString:@"BR"])
      {
        v16 = 22;
      }

      else if ([v15 isEqualToString:@"BG"])
      {
        v16 = 23;
      }

      else if ([v15 isEqualToString:@"MY"])
      {
        v16 = 24;
      }

      else if ([v15 isEqualToString:@"CA"])
      {
        v16 = 25;
      }

      else if ([v15 isEqualToString:@"CH"])
      {
        v16 = 26;
      }

      else if ([v15 isEqualToString:@"CE"])
      {
        v16 = 27;
      }

      else if ([v15 isEqualToString:@"NY"])
      {
        v16 = 28;
      }

      else if ([v15 isEqualToString:@"ZH"])
      {
        v16 = 29;
      }

      else if ([v15 isEqualToString:@"CV"])
      {
        v16 = 30;
      }

      else if ([v15 isEqualToString:@"KW"])
      {
        v16 = 31;
      }

      else if ([v15 isEqualToString:@"CO"])
      {
        v16 = 32;
      }

      else if ([v15 isEqualToString:@"CR"])
      {
        v16 = 33;
      }

      else if ([v15 isEqualToString:@"HR"])
      {
        v16 = 34;
      }

      else if ([v15 isEqualToString:@"CS"])
      {
        v16 = 35;
      }

      else if ([v15 isEqualToString:@"DA"])
      {
        v16 = 36;
      }

      else if ([v15 isEqualToString:@"DV"])
      {
        v16 = 37;
      }

      else if ([v15 isEqualToString:@"NL"])
      {
        v16 = 38;
      }

      else if ([v15 isEqualToString:@"DZ"])
      {
        v16 = 39;
      }

      else if ([v15 isEqualToString:@"EN"])
      {
        v16 = 40;
      }

      else if ([v15 isEqualToString:@"EO"])
      {
        v16 = 41;
      }

      else if ([v15 isEqualToString:@"ET"])
      {
        v16 = 42;
      }

      else if ([v15 isEqualToString:@"EE"])
      {
        v16 = 43;
      }

      else if ([v15 isEqualToString:@"FO"])
      {
        v16 = 44;
      }

      else if ([v15 isEqualToString:@"FJ"])
      {
        v16 = 45;
      }

      else if ([v15 isEqualToString:@"FI"])
      {
        v16 = 46;
      }

      else if ([v15 isEqualToString:@"FR"])
      {
        v16 = 47;
      }

      else if ([v15 isEqualToString:@"FF"])
      {
        v16 = 48;
      }

      else if ([v15 isEqualToString:@"GL"])
      {
        v16 = 49;
      }

      else if ([v15 isEqualToString:@"KA"])
      {
        v16 = 50;
      }

      else if ([v15 isEqualToString:@"DE"])
      {
        v16 = 51;
      }

      else if ([v15 isEqualToString:@"EL"])
      {
        v16 = 52;
      }

      else if ([v15 isEqualToString:@"GN"])
      {
        v16 = 53;
      }

      else if ([v15 isEqualToString:@"GU"])
      {
        v16 = 54;
      }

      else if ([v15 isEqualToString:@"HT"])
      {
        v16 = 55;
      }

      else if ([v15 isEqualToString:@"HA"])
      {
        v16 = 56;
      }

      else if ([v15 isEqualToString:@"HE"])
      {
        v16 = 57;
      }

      else if ([v15 isEqualToString:@"HZ"])
      {
        v16 = 58;
      }

      else if ([v15 isEqualToString:@"HI"])
      {
        v16 = 59;
      }

      else if ([v15 isEqualToString:@"HO"])
      {
        v16 = 60;
      }

      else if ([v15 isEqualToString:@"HU"])
      {
        v16 = 61;
      }

      else if ([v15 isEqualToString:@"IA"])
      {
        v16 = 62;
      }

      else if ([v15 isEqualToString:@"ID"])
      {
        v16 = 63;
      }

      else if ([v15 isEqualToString:@"IE"])
      {
        v16 = 64;
      }

      else if ([v15 isEqualToString:@"GA"])
      {
        v16 = 65;
      }

      else if ([v15 isEqualToString:@"IG"])
      {
        v16 = 66;
      }

      else if ([v15 isEqualToString:@"IK"])
      {
        v16 = 67;
      }

      else if ([v15 isEqualToString:@"IO"])
      {
        v16 = 68;
      }

      else if ([v15 isEqualToString:@"IS"])
      {
        v16 = 69;
      }

      else if ([v15 isEqualToString:@"IT"])
      {
        v16 = 70;
      }

      else if ([v15 isEqualToString:@"IU"])
      {
        v16 = 71;
      }

      else if ([v15 isEqualToString:@"JA"])
      {
        v16 = 72;
      }

      else if ([v15 isEqualToString:@"JV"])
      {
        v16 = 73;
      }

      else if ([v15 isEqualToString:@"KL"])
      {
        v16 = 74;
      }

      else if ([v15 isEqualToString:@"KN"])
      {
        v16 = 75;
      }

      else if ([v15 isEqualToString:@"KR"])
      {
        v16 = 76;
      }

      else if ([v15 isEqualToString:@"KS"])
      {
        v16 = 77;
      }

      else if ([v15 isEqualToString:@"KK"])
      {
        v16 = 78;
      }

      else if ([v15 isEqualToString:@"KM"])
      {
        v16 = 79;
      }

      else if ([v15 isEqualToString:@"KI"])
      {
        v16 = 80;
      }

      else if ([v15 isEqualToString:@"RW"])
      {
        v16 = 81;
      }

      else if ([v15 isEqualToString:@"KY"])
      {
        v16 = 82;
      }

      else if ([v15 isEqualToString:@"KV"])
      {
        v16 = 83;
      }

      else if ([v15 isEqualToString:@"KG"])
      {
        v16 = 84;
      }

      else if ([v15 isEqualToString:@"KO"])
      {
        v16 = 85;
      }

      else if ([v15 isEqualToString:@"KU"])
      {
        v16 = 86;
      }

      else if ([v15 isEqualToString:@"KJ"])
      {
        v16 = 87;
      }

      else if ([v15 isEqualToString:@"LA"])
      {
        v16 = 88;
      }

      else if ([v15 isEqualToString:@"LB"])
      {
        v16 = 89;
      }

      else if ([v15 isEqualToString:@"LG"])
      {
        v16 = 90;
      }

      else if ([v15 isEqualToString:@"LI"])
      {
        v16 = 91;
      }

      else if ([v15 isEqualToString:@"LN"])
      {
        v16 = 92;
      }

      else if ([v15 isEqualToString:@"LO"])
      {
        v16 = 93;
      }

      else if ([v15 isEqualToString:@"LT"])
      {
        v16 = 94;
      }

      else if ([v15 isEqualToString:@"LU"])
      {
        v16 = 95;
      }

      else if ([v15 isEqualToString:@"LV"])
      {
        v16 = 96;
      }

      else if ([v15 isEqualToString:@"GV"])
      {
        v16 = 97;
      }

      else if ([v15 isEqualToString:@"MK"])
      {
        v16 = 98;
      }

      else if ([v15 isEqualToString:@"MG"])
      {
        v16 = 99;
      }

      else if ([v15 isEqualToString:@"MS"])
      {
        v16 = 100;
      }

      else if ([v15 isEqualToString:@"ML"])
      {
        v16 = 101;
      }

      else if ([v15 isEqualToString:@"MT"])
      {
        v16 = 102;
      }

      else if ([v15 isEqualToString:@"MI"])
      {
        v16 = 103;
      }

      else if ([v15 isEqualToString:@"MR"])
      {
        v16 = 104;
      }

      else if ([v15 isEqualToString:@"MH"])
      {
        v16 = 105;
      }

      else if ([v15 isEqualToString:@"MN"])
      {
        v16 = 106;
      }

      else if ([v15 isEqualToString:@"NA"])
      {
        v16 = 107;
      }

      else if ([v15 isEqualToString:@"NV"])
      {
        v16 = 108;
      }

      else if ([v15 isEqualToString:@"ND"])
      {
        v16 = 109;
      }

      else if ([v15 isEqualToString:@"NE"])
      {
        v16 = 110;
      }

      else if ([v15 isEqualToString:@"NG"])
      {
        v16 = 111;
      }

      else if ([v15 isEqualToString:@"NB"])
      {
        v16 = 112;
      }

      else if ([v15 isEqualToString:@"NN"])
      {
        v16 = 113;
      }

      else if ([v15 isEqualToString:@"NO"])
      {
        v16 = 114;
      }

      else if ([v15 isEqualToString:@"II"])
      {
        v16 = 115;
      }

      else if ([v15 isEqualToString:@"NR"])
      {
        v16 = 116;
      }

      else if ([v15 isEqualToString:@"OC"])
      {
        v16 = 117;
      }

      else if ([v15 isEqualToString:@"OJ"])
      {
        v16 = 118;
      }

      else if ([v15 isEqualToString:@"CU"])
      {
        v16 = 119;
      }

      else if ([v15 isEqualToString:@"OM"])
      {
        v16 = 120;
      }

      else if ([v15 isEqualToString:@"OR"])
      {
        v16 = 121;
      }

      else if ([v15 isEqualToString:@"OS"])
      {
        v16 = 122;
      }

      else if ([v15 isEqualToString:@"PA"])
      {
        v16 = 123;
      }

      else if ([v15 isEqualToString:@"PI"])
      {
        v16 = 124;
      }

      else if ([v15 isEqualToString:@"FA"])
      {
        v16 = 125;
      }

      else if ([v15 isEqualToString:@"PL"])
      {
        v16 = 126;
      }

      else if ([v15 isEqualToString:@"PS"])
      {
        v16 = 127;
      }

      else if ([v15 isEqualToString:@"PT"])
      {
        v16 = 128;
      }

      else if ([v15 isEqualToString:@"QU"])
      {
        v16 = 129;
      }

      else if ([v15 isEqualToString:@"RM"])
      {
        v16 = 130;
      }

      else if ([v15 isEqualToString:@"RN"])
      {
        v16 = 131;
      }

      else if ([v15 isEqualToString:@"RO"])
      {
        v16 = 132;
      }

      else if ([v15 isEqualToString:@"RU"])
      {
        v16 = 133;
      }

      else if ([v15 isEqualToString:@"SA"])
      {
        v16 = 134;
      }

      else if ([v15 isEqualToString:@"SC"])
      {
        v16 = 135;
      }

      else if ([v15 isEqualToString:@"SD"])
      {
        v16 = 136;
      }

      else if ([v15 isEqualToString:@"SE"])
      {
        v16 = 137;
      }

      else if ([v15 isEqualToString:@"SM"])
      {
        v16 = 138;
      }

      else if ([v15 isEqualToString:@"SG"])
      {
        v16 = 139;
      }

      else if ([v15 isEqualToString:@"SR"])
      {
        v16 = 140;
      }

      else if ([v15 isEqualToString:@"GD"])
      {
        v16 = 141;
      }

      else if ([v15 isEqualToString:@"SN"])
      {
        v16 = 142;
      }

      else if ([v15 isEqualToString:@"SI"])
      {
        v16 = 143;
      }

      else if ([v15 isEqualToString:@"SK"])
      {
        v16 = 144;
      }

      else if ([v15 isEqualToString:@"SL"])
      {
        v16 = 145;
      }

      else if ([v15 isEqualToString:@"SO"])
      {
        v16 = 146;
      }

      else if ([v15 isEqualToString:@"ST"])
      {
        v16 = 147;
      }

      else if ([v15 isEqualToString:@"ES"])
      {
        v16 = 148;
      }

      else if ([v15 isEqualToString:@"SU"])
      {
        v16 = 149;
      }

      else if ([v15 isEqualToString:@"SW"])
      {
        v16 = 150;
      }

      else if ([v15 isEqualToString:@"SS"])
      {
        v16 = 151;
      }

      else if ([v15 isEqualToString:@"SV"])
      {
        v16 = 152;
      }

      else if ([v15 isEqualToString:@"TA"])
      {
        v16 = 153;
      }

      else if ([v15 isEqualToString:@"TE"])
      {
        v16 = 154;
      }

      else if ([v15 isEqualToString:@"TG"])
      {
        v16 = 155;
      }

      else if ([v15 isEqualToString:@"TH"])
      {
        v16 = 156;
      }

      else if ([v15 isEqualToString:@"TI"])
      {
        v16 = 157;
      }

      else if ([v15 isEqualToString:@"BO"])
      {
        v16 = 158;
      }

      else if ([v15 isEqualToString:@"TK"])
      {
        v16 = 159;
      }

      else if ([v15 isEqualToString:@"TL"])
      {
        v16 = 160;
      }

      else if ([v15 isEqualToString:@"TN"])
      {
        v16 = 161;
      }

      else if ([v15 isEqualToString:@"TO"])
      {
        v16 = 162;
      }

      else if ([v15 isEqualToString:@"TR"])
      {
        v16 = 163;
      }

      else if ([v15 isEqualToString:@"TS"])
      {
        v16 = 164;
      }

      else if ([v15 isEqualToString:@"TT"])
      {
        v16 = 165;
      }

      else if ([v15 isEqualToString:@"TW"])
      {
        v16 = 166;
      }

      else if ([v15 isEqualToString:@"TY"])
      {
        v16 = 167;
      }

      else if ([v15 isEqualToString:@"UG"])
      {
        v16 = 168;
      }

      else if ([v15 isEqualToString:@"UK"])
      {
        v16 = 169;
      }

      else if ([v15 isEqualToString:@"UR"])
      {
        v16 = 170;
      }

      else if ([v15 isEqualToString:@"UZ"])
      {
        v16 = 171;
      }

      else if ([v15 isEqualToString:@"VE"])
      {
        v16 = 172;
      }

      else if ([v15 isEqualToString:@"VI"])
      {
        v16 = 173;
      }

      else if ([v15 isEqualToString:@"VO"])
      {
        v16 = 174;
      }

      else if ([v15 isEqualToString:@"WA"])
      {
        v16 = 175;
      }

      else if ([v15 isEqualToString:@"CY"])
      {
        v16 = 176;
      }

      else if ([v15 isEqualToString:@"WO"])
      {
        v16 = 177;
      }

      else if ([v15 isEqualToString:@"FY"])
      {
        v16 = 178;
      }

      else if ([v15 isEqualToString:@"XH"])
      {
        v16 = 179;
      }

      else if ([v15 isEqualToString:@"YI"])
      {
        v16 = 180;
      }

      else if ([v15 isEqualToString:@"YO"])
      {
        v16 = 181;
      }

      else if ([v15 isEqualToString:@"ZA"])
      {
        v16 = 182;
      }

      else if ([v15 isEqualToString:@"ZU"])
      {
        v16 = 183;
      }

      else
      {
        if (([v15 isEqualToString:@"WUU"] & 1) == 0)
        {
LABEL_754:
          if ([v15 isEqualToString:@"YUE"])
          {
            v16 = 185;
          }

          else
          {
            v16 = 0;
          }

          goto LABEL_757;
        }

        v16 = 184;
      }

LABEL_757:

      v2 = 0;
      goto LABEL_758;
    }

    v2 = 0;
    v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_758:
  v21 = [objc_allocWithZone(MEMORY[0x277D5A900]) init];
  v22 = v21;
  [v22 setLanguageCode_];
  [v22 setCountryCode_];

  return v21;
}

void *sub_248693D84(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(a1 + 64);
  v20 = *(a1 + 68);
  v4 = *(a1 + 80);
  v5 = [objc_allocWithZone(MEMORY[0x277D594D0]) init];
  if (v5)
  {
    v6 = v5;
    v19 = v4;
    v7 = [objc_allocWithZone(MEMORY[0x277D59500]) init];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(MEMORY[0x277D594A8]) init];
      if (v9)
      {
        v10 = v9;
        v11 = _s11DeepThought20SELFMessageConverterO30convertLocaleStringToISOLocale6localeSo08SISchemaI0CSgSSSg_tFZ_0(v1, v2);
        [v10 setSiriInputLocale:v11];

        [v10 setTaskType:dword_2486B62FC[v3]];
        v12 = sub_2486B543C();
        if ([v12 isEqualToString:@"ODMSIRIUIVIEWMODE_UNKNOWN"])
        {
          v13 = 0;
        }

        else if ([v12 isEqualToString:@"ODMSIRIUIVIEWMODE_COMPACT"])
        {
          v13 = 1;
        }

        else if ([v12 isEqualToString:@"ODMSIRIUIVIEWMODE_TV"])
        {
          v13 = 2;
        }

        else if ([v12 isEqualToString:@"ODMSIRIUIVIEWMODE_BLUETOOTH_CAR"])
        {
          v13 = 3;
        }

        else if ([v12 isEqualToString:@"ODMSIRIUIVIEWMODE_EYES_FREE"])
        {
          v13 = 4;
        }

        else if ([v12 isEqualToString:@"ODMSIRIUIVIEWMODE_CARPLAY"])
        {
          v13 = 5;
        }

        else if ([v12 isEqualToString:@"ODMSIRIUIVIEWMODE_VOX"])
        {
          v13 = 6;
        }

        else if ([v12 isEqualToString:@"ODMSIRIUIVIEWMODE_NOT_APPLICABLE"])
        {
          v13 = 7;
        }

        else
        {
          v13 = 0;
        }

        [v10 setViewMode:v13];
        v16 = sub_2486B543C();
        if ([v16 isEqualToString:@"AUDIOINPUTROUTE_UNKNOWN"])
        {
          v17 = 0;
        }

        else if ([v16 isEqualToString:@"AUDIOINPUTROUTE_DEVICE"])
        {
          v17 = 1;
        }

        else if ([v16 isEqualToString:@"AUDIOINPUTROUTE_APPLE_BLUETOOTH"])
        {
          v17 = 3;
        }

        else if ([v16 isEqualToString:@"AUDIOINPUTROUTE_THIRD_PARTY_BLUETOOTH"])
        {
          v17 = 4;
        }

        else if ([v16 isEqualToString:@"AUDIOINPUTROUTE_APPLE_WIRED"])
        {
          v17 = 5;
        }

        else if ([v16 isEqualToString:@"AUDIOINPUTROUTE_THIRD_PARTY_WIRED"])
        {
          v17 = 6;
        }

        else if ([v16 isEqualToString:@"AUDIOINPUTROUTE_CARPLAY"])
        {
          v17 = 7;
        }

        else if ([v16 isEqualToString:@"AUDIOINPUTROUTE_APPLE_BLUETOOTH_DO_AP_DEVICE"])
        {
          v17 = 8;
        }

        else if ([v16 isEqualToString:@"AUDIOINPUTROUTE_THIRD_PARTY_BLUETOOTH_DO_AP_DEVICE"])
        {
          v17 = 9;
        }

        else if ([v16 isEqualToString:@"AUDIOINPUTROUTE_APPLE_BLUETOOTH_HANDS_FREE_DEVICE"])
        {
          v17 = 10;
        }

        else if ([v16 isEqualToString:@"AUDIOINPUTROUTE_THIRD_PARTY_BLUETOOTH_HANDS_FREE_DEVICE"])
        {
          v17 = 11;
        }

        else if ([v16 isEqualToString:@"AUDIOINPUTROUTE_USB_AUDIO"])
        {
          v17 = 12;
        }

        else if ([v16 isEqualToString:@"AUDIOINPUTROUTE_SIRI_ACCESSORY"])
        {
          v17 = 13;
        }

        else if ([v16 isEqualToString:@"AUDIOINPUTROUTE_AUDIO_INJECTION"])
        {
          v17 = 14;
        }

        else if ([v16 isEqualToString:@"AUDIOINPUTROUTE_DARWIN"])
        {
          v17 = 15;
        }

        else
        {
          v17 = 0;
        }

        [v10 setAudioInterface:v17];
        [v8 setCompletedSiriTaskCount_];
        [v8 setCompletedUITaskCount_];
        [v6 setTaskCounts_];
        [v6 setDimensions_];

        goto LABEL_59;
      }
    }

    else
    {
      v8 = v6;
    }
  }

  v10 = sub_2486B539C();
  v14 = sub_2486B55BC();
  if (os_log_type_enabled(v10, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24868B000, v10, v14, "Unable to create ODMSiriSchemaODMSiriCounts SELF message", v15, 2u);
    MEMORY[0x24C1D6650](v15, -1, -1);
  }

  v6 = 0;
LABEL_59:

  return v6;
}

id _s11DeepThought20SELFMessageConverterO27convertToODMSiriClientEvent19aggregationInterval6counts5odmId6loggerSo0g6SchemaghI0CSgAA011AggregationK0V_SayAA14CountsReportedVG10Foundation4UUIDV2os6LoggerVtFZ_0(double *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1548, "*'");
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - v7;
  v9 = sub_2486B4DFC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  if (!v13)
  {
    v26 = sub_2486B539C();
    v27 = sub_2486B559C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "no aggregations to report";
LABEL_24:
      _os_log_impl(&dword_24868B000, v26, v27, v29, v28, 2u);
      MEMORY[0x24C1D6650](v28, -1, -1);
    }

LABEL_25:

    return 0;
  }

  v14 = *a1;
  v15 = a1[1];
  v16 = [objc_allocWithZone(MEMORY[0x277D594C8]) init];
  if (!v16)
  {
LABEL_22:
    v26 = sub_2486B539C();
    v27 = sub_2486B55BC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "Unable to create ODMSiriSchemaODMSiriClientEvent SELF message";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v56 = v16;
  v17 = [objc_allocWithZone(MEMORY[0x277D594F0]) init];
  if (!v17)
  {
    v30 = v56;
LABEL_21:

    goto LABEL_22;
  }

  v53 = a3;
  v55 = v17;
  v18 = [objc_allocWithZone(MEMORY[0x277D594E0]) init];
  if (!v18)
  {
    v31 = v55;
    v19 = v56;
LABEL_20:

    v30 = v31;
    goto LABEL_21;
  }

  v19 = v18;
  v54 = [objc_allocWithZone(MEMORY[0x277D594C0]) init];
  if (!v54)
  {
    v31 = v19;
    v19 = v55;
    v34 = v56;
LABEL_19:

    goto LABEL_20;
  }

  v52 = [objc_allocWithZone(MEMORY[0x277D59520]) init];
  if (!v52)
  {

    v31 = v54;
    v34 = v55;
    goto LABEL_19;
  }

  v20 = v54;
  [v54 setAggregationIntervalInDays_];
  [v20 setAggregationIntervalStartTimestampInSecondsSince2001_];
  [v19 setAggregationInterval_];
  v21 = a2 + 32;
  do
  {
    v22 = *(v21 + 48);
    v57[2] = *(v21 + 32);
    v57[3] = v22;
    v57[4] = *(v21 + 64);
    v58 = *(v21 + 80);
    v23 = *(v21 + 16);
    v57[0] = *v21;
    v57[1] = v23;
    v24 = sub_248693D84(v57);
    if (v24)
    {
      v25 = v24;
      [v19 addSiriCounts_];
    }

    v21 += 88;
    --v13;
  }

  while (v13);
  v32 = sub_2486B543C();
  v33 = v52;
  [v52 setExperimentId_];

  sub_2486B4DBC();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_248694A50(v8, &qword_27EEA1548, "*'");
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v36 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v37 = sub_2486B4DDC();
    v38 = [v36 initWithNSUUID_];

    [v33 setTreatmentId_];
    (*(v10 + 8))(v12, v9);
  }

  [v33 setDeploymentId_];
  v39 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v40 = sub_2486B4DDC();
  v41 = [v39 initWithNSUUID_];

  v42 = v55;
  [v55 setOdmId_];

  [v42 setTrialExperimentIdentifiers_];
  v43 = [objc_opt_self() mainBundle];
  v44 = [v43 infoDictionary];

  if (!v44)
  {
    goto LABEL_33;
  }

  v45 = sub_2486B53DC();

  if (!*(v45 + 16) || (v46 = sub_2486A10B4(0xD00000000000001DLL, 0x80000002486BB540), (v47 & 1) == 0))
  {

    goto LABEL_33;
  }

  sub_248694AB0(*(v45 + 56) + 32 * v46, v57);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:
    v48 = 0;
    goto LABEL_34;
  }

  v48 = sub_2486B543C();

LABEL_34:
  v49 = v55;
  [v55 setPluginVersion_];

  v50 = v56;
  [v56 setEventMetadata_];
  [v50 setCountsReported_];

  return v50;
}

uint64_t type metadata accessor for SiriPenetrationRateSELFReporter(uint64_t a1)
{
  result = qword_27EEA1528;
  if (!qword_27EEA1528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2486948F4(uint64_t a1)
{
  result = sub_2486B4DFC();
  if (v2 <= 0x3F)
  {
    result = sub_2486B53BC();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2486949FC()
{
  result = qword_27EEA1538;
  if (!qword_27EEA1538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1538);
  }

  return result;
}

uint64_t sub_248694A50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_248694AB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t StreamBookmarkService.__allocating_init(bookmarkName:bookmarkFilename:bookmarkPath:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a2;
  v21 = a4;
  v22 = a6;
  v23 = a1;
  v7 = sub_2486B53BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2486B4D4C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2486B528C();
  v16 = *(v12 + 16);
  v26 = a5;
  v16(v14, a5, v11);
  v17 = v22;
  v18 = sub_2486B527C();
  v25[3] = v15;
  v25[4] = MEMORY[0x277D04560];
  v25[0] = v18;
  (*(v8 + 16))(v10, v17, v7);
  type metadata accessor for StreamBookmarkService(0);
  v19 = swift_allocObject();
  StreamBookmarkService.init(bookmarkStore:bookmarkName:logger:)(v25, v23, v24, v10);
  (*(v8 + 8))(v17, v7);
  (*(v12 + 8))(v26, v11);
  return v19;
}

uint64_t StreamBookmarkService.__allocating_init(bookmarkStore:bookmarkName:logger:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  StreamBookmarkService.init(bookmarkStore:bookmarkName:logger:)(a1, a2, a3, a4);
  return v8;
}

uint64_t type metadata accessor for StreamBookmarkService(uint64_t a1)
{
  result = qword_280DCC720;
  if (!qword_280DCC720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StreamBookmarkService.init(bookmarkStore:bookmarkName:logger:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_24869510C(a1, v5 + 24);
  *(v5 + 64) = a2;
  *(v5 + 72) = a3;
  v10 = OBJC_IVAR____TtC11DeepThought21StreamBookmarkService_logger;
  v11 = sub_2486B53BC();
  v12 = *(v11 - 8);
  v35 = a4;
  (*(v12 + 16))(v5 + v10, a4, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  v13 = sub_2486B51CC();
  if (v33)
  {

    v14 = *(v12 + 8);
    v14(a4, v11);
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + 24));

    v14(v5 + v10, v11);
    type metadata accessor for StreamBookmarkService(0);
    swift_deallocPartialClassInstance();
    v15 = a1;
  }

  else
  {
    v32 = v12;
    v34 = v11;
    if (v13)
    {
      v16 = v13;

      v17 = v16;
    }

    else
    {
      sub_2486B518C();
      v17 = sub_2486B517C();
    }

    v18 = a1;
    *(v5 + 16) = v17;

    v19 = sub_2486B539C();
    v20 = sub_2486B55AC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36 = v31;
      *v21 = 136315138;
      v22 = [*(v5 + 16) debugDescription];
      v23 = v18;
      v24 = v20;
      v25 = sub_2486B544C();
      v27 = v26;

      v28 = sub_2486965C0(v25, v27, &v36);

      *(v21 + 4) = v28;
      v29 = v24;
      v18 = v23;
      _os_log_impl(&dword_24868B000, v19, v29, "marker: fetched bookmark: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x24C1D6650](v31, -1, -1);
      MEMORY[0x24C1D6650](v21, -1, -1);

      (*(v32 + 8))(v35, v34);
    }

    else
    {

      (*(v32 + 8))(v35, v34);
    }

    v15 = v18;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  return v5;
}

uint64_t sub_24869510C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_2486951B4(char a1)
{
  if ((a1 & 1) == 0)
  {
    return *(v1 + 16);
  }

  sub_24869510C(v1 + 24, v9);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v3 = v1;
  v4 = sub_2486B51CC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  if (!v4)
  {
    sub_2486B518C();

    v4 = sub_2486B517C();
  }

  v6 = v4;
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  v7 = *(v3 + 16);
  *(v3 + 16) = v6;
  v8 = v6;

  return v8;
}

uint64_t sub_2486952C4()
{
  v1 = v0[12];
  sub_24869510C(v1 + 24, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = *(v1 + 16);
  sub_2486B51DC();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_24869510C(v1 + 24, (v0 + 7));
  v3 = v0[10];
  v4 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v3);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_248695430;

  return MEMORY[0x28215A030](0, 0, v3, v4);
}

uint64_t sub_248695430()
{

  return MEMORY[0x2822009F8](sub_24869552C, 0, 0);
}

uint64_t sub_24869552C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248695590(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_2486B516C();

  return v4 & 1;
}

uint64_t sub_2486955E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_2486B514C();

  return v3;
}

uint64_t sub_248695630(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_2486B515C();

  return v4 & 1;
}

uint64_t sub_248695760(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), void (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t), uint64_t (*a7)(uint64_t), const char *a8, const char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  v103 = a8;
  v106 = a7;
  v108 = a6;
  v141 = a4;
  v139 = a3;
  v21 = sub_2486B4D2C();
  v123 = *(v21 - 8);
  v124 = v21;
  MEMORY[0x28223BE20](v21);
  v126 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2486B4E9C();
  v134 = *(v23 - 8);
  v135 = v23;
  MEMORY[0x28223BE20](v23);
  v133 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2486B4EAC();
  v131 = *(v25 - 8);
  v132 = v25;
  MEMORY[0x28223BE20](v25);
  v130 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_2486B4E7C();
  v129 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v128 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2486B4EFC();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v107 = &v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v127 = &v103 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v103 - v37;
  v142 = sub_2486B4DAC();
  v39 = *(v142 - 8);
  v40 = MEMORY[0x28223BE20](v142);
  v105 = &v103 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v104 = &v103 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v137 = &v103 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v140 = &v103 - v47;
  MEMORY[0x28223BE20](v46);
  v49 = &v103 - v48;
  v125 = v17;
  v50 = *(v17 + 16);
  v110 = a1;
  a5(a1);

  v136 = v49;
  result = sub_2486B4D5C();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v109 = a2;
  v52 = *(v29 + 104);
  v117 = *MEMORY[0x277CC9968];
  v118 = v29 + 104;
  v116 = v52;
  v52(v31);
  sub_2486B4ECC();
  v119 = v29;
  v53 = *(v29 + 8);
  v120 = v28;
  v115 = v29 + 8;
  v114 = v53;
  v53(v31, v28);
  v54 = *(v39 + 48);
  v122 = v39 + 48;
  v121 = v54;
  result = v54(v38, 1, v142);
  if (result == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v111 = v39;
  v55 = *(v39 + 32);
  v113 = v39 + 32;
  v112 = v55;
  v55(v137, v38, v142);
  v56 = v128;
  v57 = v129;
  (*(v129 + 104))(v128, *MEMORY[0x277CC9878], v138);
  v59 = v130;
  v58 = v131;
  v60 = v132;
  (*(v131 + 104))(v130, *MEMORY[0x277CC9900], v132);
  v62 = v133;
  v61 = v134;
  v63 = v135;
  (*(v134 + 104))(v133, *MEMORY[0x277CC98E8], v135);
  v64 = v127;
  sub_2486B4EBC();
  (*(v61 + 8))(v62, v63);
  (*(v58 + 8))(v59, v60);
  (*(v57 + 8))(v56, v138);
  result = v121(v64, 1, v142);
  if (result == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v65 = v111;
  v66 = *(v111 + 8);
  v67 = v142;
  v66(v137, v142);
  v112(v140, v64, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1500, &qword_2486B6330);
  v68 = (*(v119 + 80) + 32) & ~*(v119 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_2486B6240;
  v70 = v120;
  v116(v69 + v68, v117, v120);
  sub_24868FAEC(v69);
  swift_setDeallocating();
  v114(v69 + v68, v70);
  swift_deallocClassInstance();
  v71 = v126;
  v72 = v136;
  sub_2486B4E8C();

  result = sub_2486B4D1C();
  if (v73)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v74 = result;
  (*(v123 + 8))(v71, v124);
  v75 = v125;
  if (v74 < 1 || v74 <= v109)
  {
    v66(v140, v67);
    return (v66)(v72, v67);
  }

  v141 = v66;
  v76 = v65;
  v77 = *(v65 + 16);
  v78 = v107;
  v79 = v140;
  v77(v107, v140, v67);
  (*(v76 + 56))(v78, 0, 1, v67);
  v80 = *(v75 + 16);
  LOBYTE(v76) = v108(v110, v78);

  sub_24868FF24(v78);
  if ((v76 & 1) == 0)
  {
    v99 = sub_2486B539C();
    v100 = sub_2486B55BC();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 134217984;
      *(v101 + 4) = v106(v110);
      _os_log_impl(&dword_24868B000, v99, v100, a9, v101, 0xCu);
      MEMORY[0x24C1D6650](v101, -1, -1);
    }

    v92 = v141;
    v141(v79, v67);
    v98 = v72;
    return (v92)(v98, v67);
  }

  v81 = v104;
  v77(v104, v72, v67);
  v82 = v105;
  v77(v105, v79, v67);
  v83 = sub_2486B539C();
  v84 = sub_2486B55AC();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v143 = v86;
    *v85 = 134218498;
    *(v85 + 4) = v106(v110);
    *(v85 + 12) = 2080;
    sub_24868EAC0();
    v87 = v82;
    LODWORD(v139) = v84;
    v88 = sub_2486B57CC();
    v90 = v89;
    v91 = v81;
    v92 = v141;
    v141(v91, v67);
    v93 = sub_2486965C0(v88, v90, &v143);

    *(v85 + 14) = v93;
    *(v85 + 22) = 2080;
    v94 = sub_2486B57CC();
    v96 = v95;
    v92(v87, v67);
    v97 = sub_2486965C0(v94, v96, &v143);

    *(v85 + 24) = v97;
    _os_log_impl(&dword_24868B000, v83, v139, v103, v85, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1D6650](v86, -1, -1);
    MEMORY[0x24C1D6650](v85, -1, -1);

    v92(v140, v67);
    v98 = v136;
    return (v92)(v98, v67);
  }

  v102 = v141;
  v141(v82, v67);
  v102(v81, v67);
  v102(v79, v67);
  return (v102)(v72, v67);
}

uint64_t StreamBookmarkService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  v1 = OBJC_IVAR____TtC11DeepThought21StreamBookmarkService_logger;
  v2 = sub_2486B53BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t StreamBookmarkService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  v1 = OBJC_IVAR____TtC11DeepThought21StreamBookmarkService_logger;
  v2 = sub_2486B53BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2486964F0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_248696564(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2486965C0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_2486965C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24869668C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_248694AB0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_24869668C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_248696798(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2486B568C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_248696798(uint64_t a1, unint64_t a2)
{
  v3 = sub_2486967E4(a1, a2);
  sub_248696914(&unk_285B1E568);
  return v3;
}

void *sub_2486967E4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_248696A00(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2486B568C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2486B54DC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_248696A00(v10, 0);
        result = sub_2486B561C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_248696914(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_248696A74(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_248696A00(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1550, &unk_2486B63C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_248696A74(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1550, &unk_2486B63C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_248696B68(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_248696B78(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_248696B98@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_248696BD0(uint64_t a1)
{
  result = sub_2486B53BC();
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

uint64_t dispatch thunk of StreamBookmarkService.storePluginBookmark()()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_248696E0C;

  return v4();
}

uint64_t sub_248696E0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t BiomeDonator.__allocating_init(biomeSource:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t BiomeDonator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24869719C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1568, &qword_2486B6468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2486B6400;
  sub_2486B50DC();
  *(inited + 32) = sub_2486B50CC();
  v1 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x80000002486BBA80;
  *(inited + 80) = sub_2486B507C();
  *(inited + 88) = v3;
  *(inited + 120) = v1;
  *(inited + 96) = 0x736B736154646441;
  *(inited + 104) = 0xE800000000000000;
  *(inited + 128) = sub_2486B508C();
  *(inited + 136) = v4;
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = 0;
  v5 = sub_24869A6D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1570, &unk_2486B6470);
  result = swift_arrayDestroy();
  off_27EEA1558 = v5;
  return result;
}

uint64_t sub_2486972D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1568, &qword_2486B6468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2486B6400;
  sub_2486B504C();
  *(inited + 32) = sub_2486B502C();
  v1 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x80000002486BBA80;
  *(inited + 80) = sub_2486B501C();
  *(inited + 88) = v3;
  *(inited + 120) = v1;
  *(inited + 96) = 0xD000000000000023;
  *(inited + 104) = 0x80000002486BBAA0;
  *(inited + 128) = sub_2486B503C();
  *(inited + 136) = v4;
  type metadata accessor for BMSiriExecutionTaskStep(0);
  *(inited + 168) = v5;
  *(inited + 144) = 7;
  v6 = sub_24869A6D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1570, &unk_2486B6470);
  result = swift_arrayDestroy();
  off_27EEA1560 = v6;
  return result;
}

uint64_t sub_248697420(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t _s11DeepThought33SetReminderPenetrationEventFilterC12isAppUIEvent9appIntentSb0aB15BiomeFoundation010FeaturizedF0C_tFZ_0()
{
  sub_2486B50DC();
  sub_2486B50CC();
  sub_2486B50FC();

  v0 = v36;
  v32 = v35;
  if (qword_27EEA1478 != -1)
  {
    swift_once();
  }

  v1 = off_27EEA1558;
  v2 = sub_2486B50CC();
  if (!v1[2])
  {

    goto LABEL_12;
  }

  v4 = sub_2486A10B4(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_12:
    v8 = 0;
    v9 = 0;
    goto LABEL_13;
  }

  sub_248694AB0(v1[7] + 32 * v4, &v35);
  v7 = swift_dynamicCast();
  if (v7)
  {
    v8 = v33;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v34;
  }

  else
  {
    v9 = 0;
  }

LABEL_13:
  sub_2486B507C();
  sub_2486B50FC();

  v10 = v36;
  v31 = v35;
  v11 = sub_2486B507C();
  if (!v1[2])
  {

    goto LABEL_21;
  }

  v13 = sub_2486A10B4(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_21:
    v30 = 0;
    v18 = 0;
    goto LABEL_22;
  }

  sub_248694AB0(v1[7] + 32 * v13, &v35);
  v16 = swift_dynamicCast();
  v17 = v33;
  if (!v16)
  {
    v17 = 0;
  }

  v30 = v17;
  if (v16)
  {
    v18 = v34;
  }

  else
  {
    v18 = 0;
  }

LABEL_22:
  sub_2486B508C();
  sub_2486B50FC();

  v19 = v35;
  v20 = sub_2486B508C();
  if (!v1[2])
  {

    v25 = 2;
    if (v0)
    {
      goto LABEL_28;
    }

LABEL_33:
    if (v9)
    {

      goto LABEL_43;
    }

    goto LABEL_37;
  }

  v22 = sub_2486A10B4(v20, v21);
  v24 = v23;

  v25 = 2;
  if (v24)
  {
    sub_248694AB0(v1[7] + 32 * v22, &v35);
    if (swift_dynamicCast())
    {
      v25 = v33;
    }

    else
    {
      v25 = 2;
    }
  }

  if (!v0)
  {
    goto LABEL_33;
  }

LABEL_28:
  if (!v9)
  {

    goto LABEL_42;
  }

  if (v32 == v8 && v0 == v9)
  {

    goto LABEL_37;
  }

  v26 = sub_2486B57DC();

  if ((v26 & 1) == 0)
  {
LABEL_42:

    goto LABEL_43;
  }

LABEL_37:
  if (v10)
  {
    if (v18)
    {
      if (v31 == v30 && v10 == v18)
      {
      }

      else
      {
        v29 = sub_2486B57DC();

        v27 = 0;
        if ((v29 & 1) == 0)
        {
          return v27 & 1;
        }
      }

      goto LABEL_48;
    }

LABEL_43:

    v27 = 0;
    return v27 & 1;
  }

  if (v18)
  {
    goto LABEL_43;
  }

LABEL_48:
  v27 = v19 == 2;
  if (v25 != 2)
  {
    v27 = 0;
  }

  if (v19 != 2 && v25 != 2)
  {
    v27 = v25 ^ v19 ^ 1;
  }

  return v27 & 1;
}

uint64_t _s11DeepThought33SetReminderPenetrationEventFilterC06isSiriF013siriExecutionSb0aB15BiomeFoundation010FeaturizedF0C_tFZ_0()
{
  sub_2486B504C();
  sub_2486B502C();
  sub_2486B50FC();

  v0 = v39;
  v35 = v38;
  if (qword_27EEA1480 != -1)
  {
    swift_once();
  }

  v1 = off_27EEA1560;
  v2 = sub_2486B502C();
  if (!v1[2])
  {

    goto LABEL_11;
  }

  v4 = sub_2486A10B4(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_11:
    v34 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  sub_248694AB0(v1[7] + 32 * v4, &v38);
  v7 = swift_dynamicCast();
  v8 = v36;
  if (!v7)
  {
    v8 = 0;
  }

  v34 = v8;
  if (v7)
  {
    v9 = v37;
  }

  else
  {
    v9 = 0;
  }

LABEL_12:
  sub_2486B501C();
  sub_2486B50FC();

  v10 = v39;
  v33 = v38;
  v11 = sub_2486B501C();
  if (!v1[2])
  {

    goto LABEL_20;
  }

  v13 = sub_2486A10B4(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_20:
    v32 = 0;
    v18 = 0;
    goto LABEL_21;
  }

  sub_248694AB0(v1[7] + 32 * v13, &v38);
  v16 = swift_dynamicCast();
  v17 = v36;
  if (!v16)
  {
    v17 = 0;
  }

  v32 = v17;
  if (v16)
  {
    v18 = v37;
  }

  else
  {
    v18 = 0;
  }

LABEL_21:
  sub_2486B503C();
  type metadata accessor for BMSiriExecutionTaskStep(0);
  sub_2486B50FC();

  v31 = v38;
  v19 = BYTE4(v38);
  v20 = sub_2486B503C();
  if (!v1[2])
  {

LABEL_30:
    v26 = 0;
    v27 = 1;
    if (!v0)
    {
      goto LABEL_27;
    }

LABEL_31:
    if (v9)
    {
      if (v35 == v34 && v0 == v9)
      {

        goto LABEL_37;
      }

      v28 = sub_2486B57DC();

      if (v28)
      {
LABEL_37:
        if (v10)
        {
          if (!v18)
          {
            goto LABEL_43;
          }

          if (v33 != v32 || v10 != v18)
          {
            v30 = sub_2486B57DC();

            if (v19 & 1 | ((v30 & 1) == 0))
            {
              v27 &= v30;
              return v27 & 1;
            }

            goto LABEL_50;
          }
        }

        else if (v18)
        {
          goto LABEL_43;
        }

        if (v19)
        {
          return v27 & 1;
        }

LABEL_50:
        v27 = (v31 == v26) & ~v27;
        return v27 & 1;
      }
    }

    else
    {
    }

    goto LABEL_43;
  }

  v22 = sub_2486A10B4(v20, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_248694AB0(v1[7] + 32 * v22, &v38);
  v25 = swift_dynamicCast();
  if (v25)
  {
    v26 = v36;
  }

  else
  {
    v26 = 0;
  }

  v27 = v25 ^ 1;
  if (v0)
  {
    goto LABEL_31;
  }

LABEL_27:
  if (!v9)
  {
    goto LABEL_37;
  }

LABEL_43:

  v27 = 0;
  return v27 & 1;
}

uint64_t SiriPenetrationRateMetrics.__allocating_init(bookmarkLocation:)(unint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  SiriPenetrationRateMetrics.init(bookmarkLocation:)(a1, a2);
  return v4;
}

uint64_t SiriPenetrationRateMetrics.init(bookmarkLocation:)(unint64_t a1, unint64_t a2)
{
  v150 = a1;
  v140 = sub_2486B4DFC();
  v142 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v131 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_2486B4D4C();
  v5 = *(v146 - 8);
  v6 = MEMORY[0x28223BE20](v146);
  v136 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v144 = &v122 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v122 - v10;
  v12 = sub_2486B53BC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v143 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v135 = &v122 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v137 = &v122 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v122 - v20;
  v141 = OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_odmId;
  sub_2486B4DEC();
  v22 = OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_logger;
  sub_2486B53AC();
  v23 = 0xD00000000000003FLL;
  if (a2)
  {
    v23 = v150;
  }

  v139 = v23;
  if (!a2)
  {
    a2 = 0x80000002486BBAD0;
  }

  v24 = *(v13 + 16);
  v153 = v2;
  v150 = v12;
  v151 = v22;
  v147 = v13 + 16;
  v149 = v24;
  v24(v21, v2 + v22, v12);

  v25 = sub_2486B539C();
  v26 = sub_2486B55AC();

  v27 = os_log_type_enabled(v25, v26);
  v145 = v5;
  v148 = v13;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = v11;
    v30 = swift_slowAlloc();
    v152[0] = v30;
    *v28 = 136315138;
    *(v28 + 4) = sub_2486965C0(v139, a2, v152);
    _os_log_impl(&dword_24868B000, v25, v26, "marker: streams bookmark path=%s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v31 = v30;
    v11 = v29;
    MEMORY[0x24C1D6650](v31, -1, -1);
    v32 = v28;
    v5 = v145;
    MEMORY[0x24C1D6650](v32, -1, -1);
  }

  v134 = *(v13 + 8);
  v134(v21, v150);
  sub_2486B4D3C();

  v133 = "PenetrationRateMetrics";
  v33 = v11;
  v132 = "lugin.deepthought";
  v34 = *(v5 + 16);
  v35 = v144;
  v139 = v33;
  v36 = v146;
  v34(v144);
  v37 = v137;
  v38 = v149;
  v149(v137, v153 + v151, v150);
  v39 = sub_2486B528C();
  (v34)(v136, v35, v36);
  v40 = sub_2486B527C();
  v152[3] = v39;
  v152[4] = MEMORY[0x277D04560];
  v152[0] = v40;
  v41 = v135;
  v42 = v150;
  v43 = v38;
  v38(v135, v37, v150);
  type metadata accessor for StreamBookmarkService(0);
  swift_allocObject();
  v44 = v138;
  v45 = StreamBookmarkService.init(bookmarkStore:bookmarkName:logger:)(v152, 0xD000000000000021, v133 | 0x8000000000000000, v41);
  if (v44)
  {
    v46 = v134;
    v134(v37, v42);
    v47 = *(v145 + 8);
    v48 = v146;
    v47(v144, v146);
    v47(v139, v48);
    v49 = v153;
    (*(v142 + 8))(v153 + v141, v140);
    v46(v49 + v151, v42);
    type metadata accessor for SiriPenetrationRateMetrics(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v133 = 0;
    v50 = v148;
    v51 = v45;
    v134(v37, v42);
    v52 = *(v145 + 8);
    v145 += 8;
    v132 = v52;
    (v52)(v144, v146);
    v136 = [objc_allocWithZone(sub_2486B520C()) init];
    v53 = v143;
    v43(v143, v153 + v151, v42);
    type metadata accessor for FeaturizedBiomeDataProvider(0);
    v54 = swift_allocObject();
    v137 = v54;
    *(v54 + 4) = v51;
    v55 = v42;
    v57 = v50 + 32;
    v56 = *(v50 + 32);
    v56(&v54[OBJC_IVAR____TtC11DeepThought27FeaturizedBiomeDataProvider_logger], v53, v55);
    *(v54 + 2) = 13;
    *(v54 + 3) = v136;
    v58 = objc_allocWithZone(sub_2486B529C());

    v135 = [v58 init];
    v59 = v153;
    v60 = v151;
    v61 = v143;
    v149(v143, v153 + v151, v55);
    v62 = swift_allocObject();
    v136 = v62;
    *(v62 + 4) = v51;
    v144 = v56;
    v56(&v62[OBJC_IVAR____TtC11DeepThought27FeaturizedBiomeDataProvider_logger], v61, v55);
    v148 = v57;
    *(v62 + 2) = 6;
    *(v62 + 3) = v135;
    v63 = objc_allocWithZone(sub_2486B51FC());

    v64 = [v63 init];
    v65 = v59 + v60;
    v66 = v143;
    v149(v143, v65, v55);
    v67 = swift_allocObject();
    v135 = v67;
    *(v67 + 4) = v51;
    v56(&v67[OBJC_IVAR____TtC11DeepThought27FeaturizedBiomeDataProvider_logger], v66, v55);
    v68 = v55;
    *(v67 + 2) = 1;
    *(v67 + 3) = v64;
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1578, &qword_2486B64A0);
    v69 = swift_allocObject();
    v130 = xmmword_2486B6480;
    *(v69 + 16) = xmmword_2486B6480;
    v70 = objc_allocWithZone(sub_2486B51AC());
    v138 = v51;

    *(v69 + 32) = [v70 init];
    *(v69 + 40) = [objc_allocWithZone(sub_2486B526C()) init];
    *(v69 + 48) = [objc_allocWithZone(sub_2486B519C()) init];
    v71 = v151;
    v72 = v153;
    v73 = v143;
    v74 = v149;
    v149(v143, v153 + v151, v68);
    type metadata accessor for FeaturizedConversationDataProvider(0);
    v75 = swift_allocObject();
    v75[4] = v51;
    (v144)(v75 + OBJC_IVAR____TtC11DeepThought34FeaturizedConversationDataProvider_logger, v73, v68);
    v75[2] = 0;
    v75[3] = v69;
    v74(v73, v72 + v71, v68);
    type metadata accessor for SiriPenetrationRateDataProvider(0);
    v76 = swift_allocObject();
    v77 = v136;
    *(v76 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedAppIntentProivder) = v137;
    *(v76 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedSiriExecutionProvider) = v77;
    *(v76 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedSiriUIProvider) = v135;
    *(v76 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedConversationProvider) = v75;
    (v144)(v76 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_logger, v73, v68);
    *(v76 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_bookmarkService) = v138;
    *(v72 + OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_siriPenetrationRateDataProvider) = v76;
    v78 = v72;
    v79 = swift_allocObject();
    *(v79 + 16) = v130;
    v80 = qword_27EEA1460;
    swift_retain_n();

    *&v130 = v75;

    v81 = v78;
    v82 = v151;
    v83 = v149;
    if (v80 != -1)
    {
      swift_once();
    }

    *(v79 + 32) = qword_27EEA14C0;
    v84 = qword_27EEA1468;

    if (v84 != -1)
    {
      swift_once();
    }

    *(v79 + 40) = qword_27EEA14C8;
    v85 = qword_27EEA1470;

    if (v85 != -1)
    {
      swift_once();
    }

    *(v79 + 48) = qword_27EEA14D0;
    v86 = v143;
    v87 = v150;
    v83(v143, v78 + v82, v150);
    type metadata accessor for SiriPenetrationRateCalculator(0);
    swift_allocObject();

    *(v78 + OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_siriPenetrationRateWorker) = SiriPenetrationRateCalculator.init(calculationTasks:logger:)(v79, v86);
    v88 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v89 = [v88 TaskAggregation];
    swift_unknownObjectRelease();
    v90 = v83;
    v91 = [v89 source];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1580, &qword_2486B64A8);
    v92 = swift_allocObject();
    *(v92 + 16) = v91;
    v93 = v92;
    v90(v86, v81 + v82, v87);
    v94 = v142;
    v125 = *(v142 + 16);
    v126 = v142 + 16;
    v95 = v131;
    v96 = v140;
    v125();
    type metadata accessor for SiriPenetrationRateBiomeReporter(0);
    v97 = swift_allocObject();
    *(v97 + OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_biomeDonator) = v93;
    v128 = v93;
    v129 = v97;
    (v144)(v97 + OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_logger, v86, v87);
    v98 = *(v94 + 32);
    v142 = v94 + 32;
    v124 = v98;
    v98(v97 + OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_odmId, v95, v96);
    v99 = v82;
    v100 = v86;
    v101 = v86;
    v102 = v149;
    v149(v101, v153 + v82, v87);
    type metadata accessor for SiriPenetrationRateJsonLoggingReporter(0);
    v103 = swift_allocObject();
    v104 = OBJC_IVAR____TtC11DeepThought38SiriPenetrationRateJsonLoggingReporter_jsonResult;

    v105 = sub_24869A6D4(MEMORY[0x277D84F90]);
    v127 = v103;
    *(v103 + v104) = v105;
    v106 = v144;
    (v144)(v103 + OBJC_IVAR____TtC11DeepThought38SiriPenetrationRateJsonLoggingReporter_logger, v100, v87);
    v107 = v153 + v99;
    v108 = v100;
    v102(v100, v107, v87);
    v109 = v95;
    v110 = v140;
    v111 = v125;
    (v125)(v109, v153 + v141, v140);
    type metadata accessor for SiriPenetrationRateCoreAnalyticsReporter(0);
    v112 = swift_allocObject();
    v123 = v112;
    v106(v112 + OBJC_IVAR____TtC11DeepThought40SiriPenetrationRateCoreAnalyticsReporter_logger, v100, v87);
    v113 = v131;
    v114 = v124;
    v124(v112 + OBJC_IVAR____TtC11DeepThought40SiriPenetrationRateCoreAnalyticsReporter_odmId, v131, v110);
    v149(v100, v153 + v151, v87);
    (v111)(v113, v153 + v141, v110);
    type metadata accessor for SiriPenetrationRateSELFReporter(0);
    v115 = swift_allocObject();
    v106(v115 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_logger, v108, v87);
    v114(v115 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_odmId, v113, v110);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_2486B6490;
    v49 = v153;
    v117 = v127;
    *(v116 + 32) = v129;
    *(v116 + 40) = v117;
    *(v116 + 48) = v123;
    *(v116 + 56) = v115;

    (v132)(v139, v146);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1588, &qword_2486B64B0);
    v118 = swift_allocObject();
    *(v118 + 16) = v116;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1590, qword_2486B64B8);
    v119 = swift_allocObject();
    v120 = v138;
    *(v119 + 16) = v118;
    *(v119 + 24) = v120;
    *(v49 + OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_siriPenetrationRateReporter) = v119;
  }

  return v49;
}

uint64_t type metadata accessor for SiriPenetrationRateMetrics(uint64_t a1)
{
  result = qword_27EEA15B8;
  if (!qword_27EEA15B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248698E44(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_248698E64, 0, 0);
}

uint64_t sub_248698E64()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_24869B5F4;
  v2 = *(v0 + 16);

  return sub_2486A9834(v2);
}

uint64_t sub_248698F08(uint64_t a1, _OWORD *a2)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = v2;
  v4 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  v5 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v5;
  return MEMORY[0x2822009F8](sub_248698F38, 0, 0);
}

uint64_t sub_248698F38()
{
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_248698FE0;
  v2 = v0[10];

  return sub_24869DD40(v2, v0 + 2);
}

uint64_t sub_248698FE0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2486990D8(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *a1;
  *(v2 + 40) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_248699108, 0, 0);
}

uint64_t sub_248699108()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_24869B5F8;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  return sub_248699DC4(v4, v2, v3);
}

uint64_t SiriPenetrationRateMetrics.deinit()
{
  v1 = OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_odmId;
  v2 = sub_2486B4DFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_logger;
  v4 = sub_2486B53BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t SiriPenetrationRateMetrics.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_odmId;
  v2 = sub_2486B4DFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_logger;
  v4 = sub_2486B53BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_2486993A0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2486993C4, 0, 0);
}

uint64_t sub_2486993C4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_248699468;
  v2 = *(v0 + 16);

  return sub_2486A9834(v2);
}

uint64_t sub_248699468()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24869955C(uint64_t a1, uint64_t a2)
{
  v3[10] = a1;
  v3[11] = a2;
  v3[12] = *v2;
  return MEMORY[0x2822009F8](sub_248699584, 0, 0);
}

uint64_t sub_248699584()
{
  v1 = *(v0 + 88);
  v2 = v1[3];
  v4 = *v1;
  v3 = v1[1];
  *(v0 + 48) = v1[2];
  *(v0 + 64) = v2;
  *(v0 + 16) = v4;
  *(v0 + 32) = v3;
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_24869963C;
  v6 = *(v0 + 80);

  return sub_24869DD40(v6, (v0 + 16));
}

uint64_t sub_24869963C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_248699734(uint64_t a1)
{
  *(v2 + 16) = *v1;
  *(v2 + 24) = *a1;
  *(v2 + 40) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_248699768, 0, 0);
}

uint64_t sub_248699768()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_248699824;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  return sub_248699DC4(v4, v2, v3);
}

uint64_t sub_248699824()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_248699918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;
  return MEMORY[0x2822009F8](sub_24869993C, 0, 0);
}

uint64_t sub_24869993C()
{
  v1 = *(v0[5] + 16);
  v0[6] = v1;
  if (v1 >> 62)
  {
    result = sub_2486B56BC();
    v0[7] = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v6 = v0[1];

    return v6();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[7] = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  v3 = v0[6];
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1D5E60](0);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v3 + 32);
  }

  v0[8] = v4;
  v0[9] = 1;
  v7 = (*(*v4 + 80) + **(*v4 + 80));
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_248699B04;

  return v7(v0 + 2);
}

uint64_t sub_248699B04()
{

  return MEMORY[0x2822009F8](sub_248699C00, 0, 0);
}

uint64_t sub_248699C00()
{
  v1 = v0[9];
  v2 = v0[7];

  if (v1 == v2)
  {
    v4 = v0[1];

    return v4();
  }

  v5 = v0[9];
  v6 = v0[6];
  if ((v6 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x24C1D5E60](v0[9]);
    v7 = result;
  }

  else
  {
    if (v5 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v7 = *(v6 + 8 * v5 + 32);
  }

  v0[8] = v7;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v0[9] = v5 + 1;
  v9 = (*(*v7 + 80) + **(*v7 + 80));
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_248699B04;

  return v9(v0 + 2);
}

uint64_t sub_248699DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for conversationStreamMetadata(0);
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  v4[14] = swift_task_alloc();
  v6 = type metadata accessor for eventStreamMetadata(0);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248699F1C, 0, 0);
}

uint64_t sub_248699F1C()
{
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_248699FD0;
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  return sub_248699918(v4, v2, v3);
}

uint64_t sub_248699FD0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24869A128, 0, 0);
  }
}

uint64_t sub_24869A128()
{
  v1 = *(v0 + 72);
  *(v0 + 40) = &type metadata for SiriPenetrationRateResult;
  v2 = sub_24869B460();
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 48) = v2;
  *(v0 + 32) = v1;
  v3 = __swift_project_boxed_opaque_existential_1((v0 + 16), &type metadata for SiriPenetrationRateResult)[1];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v0 + 128);
    v29 = *(v0 + 136);
    v25 = *(*(v0 + 80) + 24);
    v27 = *(*(v0 + 120) + 20);
    v6 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);

    do
    {
      v8 = *(v0 + 136);
      v9 = *(v0 + 112);
      sub_24869B4B4(v6, v8, type metadata accessor for eventStreamMetadata);
      v10 = sub_2486B4DAC();
      v11 = *(v10 - 8);
      (*(v11 + 16))(v9, v29 + v27, v10);
      sub_24869B51C(v8, type metadata accessor for eventStreamMetadata);
      (*(v11 + 56))(v9, 0, 1, v10);
      v12 = *(v25 + 16);
      sub_2486B516C();

      sub_24868FF24(v9);
      v6 += v7;
      --v4;
    }

    while (v4);
  }

  else
  {
  }

  v13 = *(v0 + 32);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = *(v0 + 96);
    v30 = *(v0 + 104);
    v26 = *(*(v0 + 80) + 24);
    v28 = *(*(v0 + 88) + 20);
    v16 = v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v17 = *(v15 + 72);

    do
    {
      v18 = *(v0 + 104);
      v19 = *(v0 + 112);
      sub_24869B4B4(v16, v18, type metadata accessor for conversationStreamMetadata);
      v20 = sub_2486B4DAC();
      v21 = *(v20 - 8);
      (*(v21 + 16))(v19, v30 + v28, v20);
      sub_24869B51C(v18, type metadata accessor for conversationStreamMetadata);
      (*(v21 + 56))(v19, 0, 1, v20);
      v22 = *(v26 + 16);
      sub_2486B515C();

      sub_24868FF24(v19);
      v16 += v17;
      --v14;
    }

    while (v14);
  }

  v23 = swift_task_alloc();
  *(v0 + 152) = v23;
  *v23 = v0;
  v23[1] = sub_24869A4AC;

  return sub_2486952A4();
}

uint64_t sub_24869A4AC()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_24869A64C;
  }

  else
  {
    v2 = sub_24869A5C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24869A5C0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24869A64C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_24869A6D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1608, &qword_2486B6690);
    v3 = sub_2486B56EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_24869B57C(v4, &v13, &qword_27EEA1570, &unk_2486B6470);
      v5 = v13;
      v6 = v14;
      result = sub_2486A10B4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24869B5E4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_24869A8A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriPenetrationRateMetrics(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24869A8E4()
{
  result = qword_27EEA15B0;
  if (!qword_27EEA15B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA15B0);
  }

  return result;
}

uint64_t sub_24869A940(uint64_t a1)
{
  result = sub_2486B4DFC();
  if (v2 <= 0x3F)
  {
    result = sub_2486B53BC();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of SiriPenetrationRateMetrics.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24869B5FC;

  return v6(a1);
}

uint64_t dispatch thunk of SiriPenetrationRateMetrics.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_248696E0C;

  return v8(a1, a2);
}

uint64_t dispatch thunk of SiriPenetrationRateMetrics.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 144) + **(*v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24869B5FC;

  return v6(a1);
}

unint64_t sub_24869ADCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA15C8, &qword_2486B6FD0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA15D0, &qword_2486B6650);
    v7 = sub_2486B56EC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24869B57C(v9, v5, &qword_27EEA15C8, &qword_2486B6FD0);
      v11 = *v5;
      result = sub_2486A112C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_2486B4F4C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void *sub_24869AFB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA15F8, &qword_2486B6678);
  v3 = sub_2486B56EC();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_2486A1220(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = v3[6] + 16 * v9;
    *v12 = v4;
    *(v12 + 8) = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 4);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_2486A1220(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24869B0E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA15E8, &qword_2486B6668);
    v3 = sub_2486B56EC();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 32);
      v7 = *(v4 + 64);
      v19 = *(v4 + 48);
      *v20 = v7;
      *&v20[16] = *(v4 + 80);
      v8 = *(v4 + 16);
      v18[0] = *v4;
      v18[1] = v8;
      v18[2] = v6;
      v25 = *(v4 + 64);
      v23 = v6;
      v24 = v19;
      v21 = v18[0];
      v22 = v8;
      sub_24869B57C(v18, v17, &qword_27EEA15F0, &qword_2486B6670);
      result = sub_2486A119C(&v21);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 72 * result;
      v12 = v24;
      *(v11 + 32) = v23;
      *(v11 + 48) = v12;
      *(v11 + 64) = v25;
      v13 = v22;
      *v11 = v21;
      *(v11 + 16) = v13;
      *(v3[7] + 16 * result) = *&v20[4];
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_11;
      }

      v3[2] = v16;
      if (!i)
      {

        return v3;
      }

      v4 += 88;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24869B258(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA15D8, &qword_2486B6658);
    v3 = sub_2486B56EC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2486A10B4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_24869B35C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA15E0, &qword_2486B6660);
    v3 = sub_2486B56EC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2486A10B4(v5, v6);
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

unint64_t sub_24869B460()
{
  result = qword_27EEA1600;
  if (!qword_27EEA1600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1600);
  }

  return result;
}

uint64_t sub_24869B4B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24869B51C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24869B57C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_24869B5E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t BiomeEvent.init(biomeEvent:timestamp:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

uint64_t BiomeDataProvider.__allocating_init(logger:biomeSource:bookmark:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = qword_27EEA1610;
  v8 = sub_2486B53BC();
  (*(*(v8 - 8) + 32))(v6 + v7, a1, v8);
  return v6;
}

uint64_t BiomeDataProvider.init(logger:biomeSource:bookmark:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  v5 = qword_27EEA1610;
  v6 = sub_2486B53BC();
  (*(*(v6 - 8) + 32))(v3 + v5, a1, v6);
  return v3;
}

uint64_t sub_24869B740(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = *v1;
  return MEMORY[0x2822009F8](sub_24869B788, 0, 0);
}

uint64_t sub_24869B788()
{
  v23 = v0;
  v1 = *(*(v0 + 48) + 80);
  sub_24869BA40(v1);
  v2 = sub_2486B4F9C();
  type metadata accessor for BiomeEvent(0, v1, v3, v4);
  result = sub_2486B551C();
  v21 = result;
  if (v2 >> 62)
  {
    result = sub_2486B56BC();
    v6 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return result;
  }

  v7 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1D5E60](v7, v2);
    }

    else
    {
      v8 = *(v2 + 8 * v7 + 32);
    }

    v9 = v8;
    ++v7;
    sub_2486B536C();
    v10 = swift_dynamicCastUnknownClassUnconditional();
    sub_2486B537C();
    *(v0 + 16) = v10;
    *(v0 + 24) = v11;
    sub_2486B555C();
    sub_2486B553C();
  }

  while (v6 != v7);
LABEL_10:

  v12 = sub_2486B539C();
  v13 = sub_2486B55AC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 134218242;
    if (v2 >> 62)
    {
      v16 = sub_2486B56BC();
    }

    else
    {
      v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 4) = v16;

    *(v14 + 12) = 2080;
    v17 = sub_2486B58AC();
    v19 = sub_2486965C0(v17, v18, &v22);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_24868B000, v12, v13, "marker: read %ld events of type %s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x24C1D6650](v15, -1, -1);
    MEMORY[0x24C1D6650](v14, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  **(v0 + 32) = v21;
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_24869BA40(uint64_t a1)
{
  sub_24869C374(0, &qword_27EEA1798, 0x277CF0FD8);
  v1 = swift_dynamicCastMetatype();
  result = 0;
  if (!v1)
  {
    sub_24869C374(0, &qword_27EEA17A0, 0x277CF1600);
    if (swift_dynamicCastMetatype())
    {
      return 1;
    }

    else
    {
      sub_24869C374(0, &qword_27EEA17A8, 0x277CF1320);
      if (swift_dynamicCastMetatype())
      {
        return 2;
      }

      else
      {
        sub_24869C374(0, &qword_27EEA17B0, 0x277CF1700);
        if (swift_dynamicCastMetatype())
        {
          return 3;
        }

        else
        {
          sub_24869C374(0, &qword_27EEA17B8, 0x277CF16F8);
          if (swift_dynamicCastMetatype())
          {
            return 4;
          }

          else
          {
            sub_24869C374(0, &qword_27EEA17C0, 0x277CF1488);
            if (swift_dynamicCastMetatype())
            {
              return 6;
            }

            else
            {
              sub_24869C374(0, &qword_27EEA17C8, 0x277CF12C0);
              if (swift_dynamicCastMetatype())
              {
                return 7;
              }

              else
              {
                sub_24869C374(0, &qword_27EEA17D0, 0x277CF1658);
                if (swift_dynamicCastMetatype())
                {
                  return 8;
                }

                else
                {
                  sub_24869C374(0, &qword_27EEA17D8, 0x277CF12C8);
                  if (swift_dynamicCastMetatype())
                  {
                    return 9;
                  }

                  else
                  {
                    sub_24869C374(0, &qword_27EEA17E0, 0x277CF1348);
                    if (swift_dynamicCastMetatype())
                    {
                      return 10;
                    }

                    else
                    {
                      sub_24869C374(0, &qword_27EEA17E8, 0x277CF1388);
                      if (swift_dynamicCastMetatype())
                      {
                        return 11;
                      }

                      else
                      {
                        sub_24869C374(0, &qword_27EEA17F0, 0x277CF1030);
                        if (swift_dynamicCastMetatype())
                        {
                          return 12;
                        }

                        else
                        {
                          sub_24869C374(0, &qword_27EEA17F8, 0x277CF0FE8);
                          if (swift_dynamicCastMetatype())
                          {
                            return 13;
                          }

                          else
                          {
                            sub_24869C374(0, &qword_27EEA1800, 0x277CF1610);
                            if (swift_dynamicCastMetatype())
                            {
                              return 16;
                            }

                            else
                            {
                              sub_24869C374(0, &qword_27EEA1808, 0x277CF1118);
                              if (swift_dynamicCastMetatype())
                              {
                                return 15;
                              }

                              else
                              {
                                sub_24869C374(0, &qword_27EEA1810, 0x277CF1540);
                                if (swift_dynamicCastMetatype())
                                {
                                  return 14;
                                }

                                else
                                {
                                  sub_24869C374(0, &qword_27EEA1818, 0x277CF1590);
                                  if (swift_dynamicCastMetatype())
                                  {
                                    return 18;
                                  }

                                  else
                                  {
                                    sub_24869C374(0, &qword_27EEA1820, 0x277CF15A8);
                                    if (swift_dynamicCastMetatype())
                                    {
                                      return 19;
                                    }

                                    else
                                    {
                                      return 5;
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
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t BiomeDataProvider.deinit()
{
  v1 = qword_27EEA1610;
  v2 = sub_2486B53BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t BiomeDataProvider.__deallocating_deinit()
{
  BiomeDataProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24869BE4C(uint64_t a1)
{
  v6 = (*(**v1 + 120) + **(**v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_248696E0C;

  return v6(a1);
}

uint64_t sub_24869BFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24869BFFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24869C044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24869C080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24869C0C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24869C110(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24869C164(uint64_t a1)
{
  result = sub_2486B53BC();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of BiomeDataProvider.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_248696E0C;

  return v6(a1);
}

uint64_t sub_24869C374(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t static BookmarkUtils.getBookmarkEndTime(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v50 = a2;
  v2 = sub_2486B4E9C();
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x28223BE20](v2);
  v56 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2486B4EAC();
  v55 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v54 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_2486B4E7C();
  v51 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v53 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2486B4EFC();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  v10 = MEMORY[0x28223BE20](v9);
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  v17 = sub_2486B4DAC();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v62 = &v46 - v22;
  if (qword_280DCC6F8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v9, qword_280DCC700);
  swift_beginAccess();
  sub_24868FE44(v23, v16);
  v24 = *(v18 + 48);
  v25 = v24(v16, 1, v17);
  v26 = v17;
  v65 = v24;
  if (v25 == 1)
  {
    sub_2486B4D9C();
    v27 = v18 + 48;
    v28 = v24(v16, 1, v17);
    v29 = v18;
    v30 = v62;
    if (v28 != 1)
    {
      sub_24868FF24(v16);
    }
  }

  else
  {
    v27 = v18 + 48;
    (*(v18 + 32))(v21, v16, v17);
    v29 = v18;
    v30 = v62;
  }

  v31 = v59;
  v32 = v60;
  (*(v59 + 104))(v8, *MEMORY[0x277CC9968], v60);
  sub_2486B4ECC();
  (*(v31 + 8))(v8, v32);
  v60 = v27;
  result = v65(v14, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v48 = *(v29 + 8);
    v49 = v29 + 8;
    v48(v21, v26);
    v34 = *(v29 + 32);
    v46 = v29 + 32;
    v47 = v34;
    v34(v30, v14, v26);
    v35 = v51;
    v36 = v53;
    (*(v51 + 104))(v53, *MEMORY[0x277CC9878], v63);
    v37 = *MEMORY[0x277CC9900];
    v38 = v55;
    v39 = *(v55 + 104);
    v59 = v26;
    v40 = v54;
    v39(v54, v37, v64);
    v41 = v56;
    v42 = v57;
    v43 = v58;
    (*(v57 + 104))(v56, *MEMORY[0x277CC98E8], v58);
    v44 = v52;
    sub_2486B4EBC();
    (*(v42 + 8))(v41, v43);
    v45 = v59;
    (*(v38 + 8))(v40, v64);
    (*(v35 + 8))(v36, v63);
    result = v65(v44, 1, v45);
    if (result != 1)
    {
      v48(v62, v45);
      return v47(v50, v44, v45);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24869CA84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1568, &qword_2486B6468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2486B6840;
  sub_2486B50DC();
  *(inited + 32) = sub_2486B50CC();
  v1 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000017;
  *(inited + 56) = 0x80000002486BBC70;
  *(inited + 80) = sub_2486B507C();
  *(inited + 88) = v3;
  *(inited + 120) = v1;
  *(inited + 96) = 0x6C61437472617453;
  *(inited + 104) = 0xE90000000000006CLL;
  *(inited + 128) = sub_2486B509C();
  *(inited + 136) = v4;
  type metadata accessor for BMAppIntentHandlingStatus(0);
  *(inited + 168) = v5;
  *(inited + 144) = 4;
  *(inited + 176) = sub_2486B508C();
  *(inited + 184) = v6;
  *(inited + 216) = MEMORY[0x277D839B0];
  *(inited + 192) = 0;
  *(inited + 224) = sub_2486B50BC();
  *(inited + 232) = v7;
  *(inited + 264) = v1;
  *(inited + 240) = 0x676E696F6774754FLL;
  *(inited + 248) = 0xE800000000000000;
  v8 = sub_24869A6D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1570, &unk_2486B6470);
  result = swift_arrayDestroy();
  off_27EEA1828 = v8;
  return result;
}

uint64_t sub_24869CC0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1568, &qword_2486B6468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2486B6400;
  sub_2486B504C();
  *(inited + 32) = sub_2486B502C();
  v1 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000017;
  *(inited + 56) = 0x80000002486BBC70;
  *(inited + 80) = sub_2486B501C();
  *(inited + 88) = v3;
  *(inited + 120) = v1;
  *(inited + 96) = 0xD000000000000023;
  *(inited + 104) = 0x80000002486BBC90;
  *(inited + 128) = sub_2486B503C();
  *(inited + 136) = v4;
  type metadata accessor for BMSiriExecutionTaskStep(0);
  *(inited + 168) = v5;
  *(inited + 144) = 7;
  v6 = sub_24869A6D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1570, &unk_2486B6470);
  result = swift_arrayDestroy();
  off_27EEA1830 = v6;
  return result;
}

uint64_t _s11DeepThought35StartCallPenetrationRateEventFilterC06isSiriG013siriExecutionSb0aB15BiomeFoundation010FeaturizedG0C_tFZ_0()
{
  sub_2486B504C();
  sub_2486B502C();
  sub_2486B50FC();

  v0 = v39;
  v35 = v38;
  if (qword_27EEA1490 != -1)
  {
    swift_once();
  }

  v1 = off_27EEA1830;
  v2 = sub_2486B502C();
  if (!v1[2])
  {

    goto LABEL_11;
  }

  v4 = sub_2486A10B4(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_11:
    v34 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  sub_248694AB0(v1[7] + 32 * v4, &v38);
  v7 = swift_dynamicCast();
  v8 = v36;
  if (!v7)
  {
    v8 = 0;
  }

  v34 = v8;
  if (v7)
  {
    v9 = v37;
  }

  else
  {
    v9 = 0;
  }

LABEL_12:
  sub_2486B501C();
  sub_2486B50FC();

  v10 = v39;
  v33 = v38;
  v11 = sub_2486B501C();
  if (!v1[2])
  {

    goto LABEL_20;
  }

  v13 = sub_2486A10B4(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_20:
    v32 = 0;
    v18 = 0;
    goto LABEL_21;
  }

  sub_248694AB0(v1[7] + 32 * v13, &v38);
  v16 = swift_dynamicCast();
  v17 = v36;
  if (!v16)
  {
    v17 = 0;
  }

  v32 = v17;
  if (v16)
  {
    v18 = v37;
  }

  else
  {
    v18 = 0;
  }

LABEL_21:
  sub_2486B503C();
  type metadata accessor for BMSiriExecutionTaskStep(0);
  sub_2486B50FC();

  v31 = v38;
  v19 = BYTE4(v38);
  v20 = sub_2486B503C();
  if (!v1[2])
  {

LABEL_30:
    v26 = 0;
    v27 = 1;
    if (!v0)
    {
      goto LABEL_27;
    }

LABEL_31:
    if (v9)
    {
      if (v35 == v34 && v0 == v9)
      {

        goto LABEL_37;
      }

      v28 = sub_2486B57DC();

      if (v28)
      {
LABEL_37:
        if (v10)
        {
          if (!v18)
          {
            goto LABEL_43;
          }

          if (v33 != v32 || v10 != v18)
          {
            v30 = sub_2486B57DC();

            if (v19 & 1 | ((v30 & 1) == 0))
            {
              v27 &= v30;
              return v27 & 1;
            }

            goto LABEL_50;
          }
        }

        else if (v18)
        {
          goto LABEL_43;
        }

        if (v19)
        {
          return v27 & 1;
        }

LABEL_50:
        v27 = (v31 == v26) & ~v27;
        return v27 & 1;
      }
    }

    else
    {
    }

    goto LABEL_43;
  }

  v22 = sub_2486A10B4(v20, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_248694AB0(v1[7] + 32 * v22, &v38);
  v25 = swift_dynamicCast();
  if (v25)
  {
    v26 = v36;
  }

  else
  {
    v26 = 0;
  }

  v27 = v25 ^ 1;
  if (v0)
  {
    goto LABEL_31;
  }

LABEL_27:
  if (!v9)
  {
    goto LABEL_37;
  }

LABEL_43:

  v27 = 0;
  return v27 & 1;
}

uint64_t _s11DeepThought35StartCallPenetrationRateEventFilterC12isAppUIEvent9appIntentSb0aB15BiomeFoundation010FeaturizedG0C_tFZ_0()
{
  sub_2486B50DC();
  sub_2486B50CC();
  sub_2486B50FC();

  v0 = v59;
  v54 = v58;
  if (qword_27EEA1488 != -1)
  {
    swift_once();
  }

  v1 = off_27EEA1828;
  v2 = sub_2486B50CC();
  if (!v1[2])
  {

    goto LABEL_11;
  }

  v4 = sub_2486A10B4(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_11:
    v53 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  sub_248694AB0(v1[7] + 32 * v4, &v58);
  v7 = swift_dynamicCast();
  v8 = v56;
  if (!v7)
  {
    v8 = 0;
  }

  v53 = v8;
  if (v7)
  {
    v9 = v57;
  }

  else
  {
    v9 = 0;
  }

LABEL_12:
  sub_2486B507C();
  sub_2486B50FC();

  v50 = v58;
  v55 = v59;
  v10 = sub_2486B507C();
  if (!v1[2])
  {

    goto LABEL_20;
  }

  v12 = sub_2486A10B4(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_20:
    v49 = 0;
    v17 = 0;
    goto LABEL_21;
  }

  sub_248694AB0(v1[7] + 32 * v12, &v58);
  v15 = swift_dynamicCast();
  v16 = v56;
  if (!v15)
  {
    v16 = 0;
  }

  v49 = v16;
  if (v15)
  {
    v17 = v57;
  }

  else
  {
    v17 = 0;
  }

LABEL_21:
  sub_2486B509C();
  type metadata accessor for BMAppIntentHandlingStatus(0);
  sub_2486B50FC();

  v47 = v58;
  v52 = BYTE4(v58);
  v18 = sub_2486B509C();
  if (!v1[2])
  {

    goto LABEL_27;
  }

  v20 = sub_2486A10B4(v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_27:
    v46 = 0;
    v25 = 1;
    goto LABEL_28;
  }

  sub_248694AB0(v1[7] + 32 * v20, &v58);
  v23 = swift_dynamicCast();
  v24 = v56;
  if (!v23)
  {
    v24 = 0;
  }

  v46 = v24;
  v25 = v23 ^ 1;
LABEL_28:
  v51 = v25;
  sub_2486B508C();
  sub_2486B50FC();

  v48 = v58;
  v26 = sub_2486B508C();
  if (v1[2])
  {
    v28 = sub_2486A10B4(v26, v27);
    v30 = v29;

    v31 = 2;
    if (v30)
    {
      sub_248694AB0(v1[7] + 32 * v28, &v58);
      if (swift_dynamicCast())
      {
        v31 = v56;
      }

      else
      {
        v31 = 2;
      }
    }
  }

  else
  {

    v31 = 2;
  }

  sub_2486B50BC();
  sub_2486B50FC();

  v32 = v58;
  v33 = v59;
  v34 = sub_2486B50BC();
  if (!v1[2])
  {

LABEL_46:
    v40 = 0;
    v41 = 0;
    if (!v0)
    {
      goto LABEL_43;
    }

    goto LABEL_47;
  }

  v36 = sub_2486A10B4(v34, v35);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
    goto LABEL_46;
  }

  sub_248694AB0(v1[7] + 32 * v36, &v58);
  v39 = swift_dynamicCast();
  if (v39)
  {
    v40 = v56;
  }

  else
  {
    v40 = 0;
  }

  if (v39)
  {
    v41 = v57;
  }

  else
  {
    v41 = 0;
  }

  if (!v0)
  {
LABEL_43:
    if (v9)
    {

      goto LABEL_74;
    }

    goto LABEL_53;
  }

LABEL_47:
  if (!v9)
  {

    goto LABEL_58;
  }

  if (v54 == v53 && v0 == v9)
  {

    goto LABEL_53;
  }

  v42 = sub_2486B57DC();

  if ((v42 & 1) == 0)
  {
LABEL_58:

    goto LABEL_74;
  }

LABEL_53:
  if (v55)
  {
    if (!v17)
    {

      goto LABEL_73;
    }

    if (v50 == v49 && v55 == v17)
    {
    }

    else
    {
      v43 = sub_2486B57DC();

      if ((v43 & 1) == 0)
      {
        goto LABEL_73;
      }
    }
  }

  else if (v17)
  {

    goto LABEL_74;
  }

  if (v52)
  {
    if ((v51 & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if ((v51 & 1) != 0 || v47 != v46)
  {
    goto LABEL_73;
  }

  if (v48 == 2)
  {
    if (v31 == 2)
    {
      goto LABEL_76;
    }

LABEL_73:

    goto LABEL_74;
  }

  if (v31 == 2 || ((v31 ^ v48) & 1) != 0)
  {
    goto LABEL_73;
  }

LABEL_76:
  if (!v33)
  {
    if (!v41)
    {
      v44 = 1;
      return v44 & 1;
    }

    goto LABEL_74;
  }

  if (!v41)
  {
LABEL_74:

    v44 = 0;
    return v44 & 1;
  }

  if (v32 == v40 && v33 == v41)
  {

    v44 = 1;
  }

  else
  {
    v44 = sub_2486B57DC();
  }

  return v44 & 1;
}

uint64_t SiriPenetrationRateCalculator.__allocating_init(calculationTasks:logger:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SiriPenetrationRateCalculator.init(calculationTasks:logger:)(a1, a2);
  return v4;
}

uint64_t SiriPenetrationRateCalculator.defaultLocale.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_defaultLocale);

  return v1;
}

uint64_t SiriPenetrationRateCalculator.init(calculationTasks:logger:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a1;
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F8, &qword_2486B68D0);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v34 - v5;
  v6 = sub_2486B4F0C();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1838, &qword_2486B68D8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  v12 = sub_2486B4E4C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2486B4E6C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_timeBucketInSec) = 0x404E000000000000;
  v20 = [objc_opt_self() autoupdatingCurrentLocale];
  sub_2486B4E2C();
  sub_2486B4E5C();
  (*(v17 + 8))(v19, v16);
  sub_2486B4E3C();
  (*(v13 + 8))(v15, v12);
  v21 = sub_2486B4E1C();
  v22 = *(v21 - 8);
  result = (*(v22 + 48))(v11, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v24 = (v3 + OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_defaultLocale);
    v25 = sub_2486B4E0C();
    v27 = v26;
    (*(v22 + 8))(v11, v21);
    *v24 = v25;
    v24[1] = v27;
    v28 = OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_conversationStream;
    sub_2486B522C();
    *(v3 + v28) = sub_2486B521C();
    sub_2486B4EDC();
    v29 = v39;
    sub_2486B4F1C();
    v30 = sub_2486B4F2C();
    result = (*(*(v30 - 8) + 48))(v29, 1, v30);
    if (result != 1)
    {
      v31 = OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_calendar;
      sub_2486B4EEC();
      (*(v35 + 32))(v3 + v31, v8, v36);
      *(v3 + OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_calculationTasks) = v37;
      v32 = OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_logger;
      v33 = sub_2486B53BC();
      (*(*(v33 - 8) + 32))(v3 + v32, v38, v33);
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24869DD40(uint64_t a1, uint64_t *a2)
{
  *(v3 + 168) = a1;
  *(v3 + 176) = v2;
  v5 = sub_2486B4DAC();
  *(v3 + 184) = v5;
  *(v3 + 192) = *(v5 - 8);
  *(v3 + 200) = swift_task_alloc();
  v6 = sub_2486B53BC();
  *(v3 + 208) = v6;
  *(v3 + 216) = *(v6 - 8);
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  v9 = a2[1];
  *(v3 + 248) = v7;
  *(v3 + 256) = v8;
  *(v3 + 264) = v9;
  *(v3 + 272) = *(a2 + 1);
  *(v3 + 288) = a2[4];
  *(v3 + 296) = *(a2 + 5);
  *(v3 + 312) = a2[7];

  return MEMORY[0x2822009F8](sub_24869DEB0, 0, 0);
}

uint64_t sub_24869DEB0()
{
  v82 = v0;
  v1 = v0[38];
  v9 = v0[36];
  v2 = v0[34];
  v3 = MEMORY[0x277D84F90];
  v4 = sub_24869AFB4(MEMORY[0x277D84F90]);
  v0[20] = sub_24869B0E4(v3);
  v5 = (v0 + 20);
  v6 = _s11DeepThought24LocaleChangingPointUtilsO03getcD6Points23featurizedConversationsSayAA07DateAndC4PairVGSay0aB15BiomeFoundation22FeaturizedConversationCG_tFZ_0(v1);
  v7 = _s11DeepThought24SiriPenetrationRateUtilsO07alignToC15ExecutionEvents04siriiJ00K8UIEvents0K13Conversations12timeDurationSay0aB15BiomeFoundation15FeaturizedEventCGAL_ALSayAI0R12ConversationCGSdtFZ_0(v2, v9, v1, 60.0);
  sub_2486B50EC();

  v8 = sub_2486B539C();
  LOBYTE(v9) = sub_2486B55AC();
  v63 = v7;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    if (v7 >> 62)
    {
LABEL_46:
      v11 = sub_2486B56BC();
      v7 = v63;
    }

    else
    {
      v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v10 + 4) = v11;

    _os_log_impl(&dword_24868B000, v8, v9, "marker: The size of siriExecutionEvents is %ld", v10, 0xCu);
    MEMORY[0x24C1D6650](v10, -1, -1);
  }

  else
  {
  }

  v64 = *(v0[27] + 8);
  v64(v0[31], v0[26]);
  sub_24869E75C(v7, v6, v5);
  sub_2486B50EC();
  v12 = sub_2486B539C();
  v13 = sub_2486B55AC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    swift_beginAccess();
    *(v14 + 4) = *(*v5 + 16);
    _os_log_impl(&dword_24868B000, v12, v13, "marker: Counts are updated with SiriEvents. The size of counts is %ld", v14, 0xCu);
    MEMORY[0x24C1D6650](v14, -1, -1);
  }

  v10 = v0[32];
  v64(v0[30], v0[26]);
  swift_beginAccess();
  sub_24869F9F4(v10, v6, v5);
  swift_endAccess();
  sub_2486B50EC();
  v15 = v0[20];

  v8 = sub_2486B539C();
  v16 = sub_2486B55AC();
  if (os_log_type_enabled(v8, v16))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = *(v15 + 16);

    _os_log_impl(&dword_24868B000, v8, v16, "marker: Counts are updated with UIEvents. The size of counts is %ld", v10, 0xCu);
    MEMORY[0x24C1D6650](v10, -1, -1);
  }

  else
  {
  }

  v62 = v0;
  v64(v0[29], v0[26]);
  v17 = v15 + 64;
  v18 = -1;
  v19 = -1 << *(v15 + 32);
  if (-v19 < 64)
  {
    v18 = ~(-1 << -v19);
  }

  v9 = v18 & *(v15 + 64);
  v0 = ((63 - v19) >> 6);

  v5 = 0;
  v6 = 0;
  v65 = v15;
  if (v9)
  {
    while (1)
    {
LABEL_18:
      v21 = __clz(__rbit64(v9)) | (v6 << 6);
      v22 = (*(v15 + 48) + 72 * v21);
      v10 = *v22;
      v23 = v22[1];
      v75 = *(v22 + 3);
      v76 = *(v22 + 2);
      v24 = *(v22 + 5);
      v74 = *(v22 + 4);
      v25 = *(v22 + 7);
      v70 = *(v22 + 6);
      v66 = *(v22 + 64);
      v26 = (*(v15 + 56) + 16 * v21);
      v27 = *v26;
      v28 = v26[1];

      v72 = v24;

      v68 = v25;

      sub_2486A2CEC(v5, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v81 = v4;
      v8 = v4;
      v5 = sub_2486A1220(v10, v23);
      isa = v4[2].isa;
      v32 = (v30 & 1) == 0;
      v33 = isa + v32;
      if (__OFADD__(isa, v32))
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v34 = v30;
      if (v4[3].isa >= v33)
      {
        break;
      }

      sub_2486A19FC(v33, isUniquelyReferenced_nonNull_native);
      v4 = v81;
      v8 = v81;
      v35 = sub_2486A1220(v10, v23);
      if ((v34 & 1) != (v36 & 1))
      {

        return sub_2486B57EC();
      }

      v5 = v35;
      if ((v34 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_27:
      v41 = v4[7].isa;
      v8 = *(v41 + v5);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      *(v41 + v5) = v8;
      v77 = v4;
      if ((v42 & 1) == 0)
      {
        v8 = sub_2486A0F08(0, v8[2].isa + 1, 1, v8);
        *(v41 + v5) = v8;
      }

      v44 = v8[2].isa;
      v43 = v8[3].isa;
      if (v44 >= v43 >> 1)
      {
        v8 = sub_2486A0F08((v43 > 1), v44 + 1, 1, v8);
        *(v41 + v5) = v8;
      }

      v15 = v65;
      v8[2].isa = (v44 + 1);
      v45 = &v8[11 * v44];
      LODWORD(v45[4].isa) = v10;
      v9 &= v9 - 1;
      *&v45[5].isa = v23;
      v45[6].isa = v76;
      v45[7].isa = v75;
      v45[8].isa = v74;
      v45[9].isa = v72;
      v45[10].isa = v70;
      v45[11].isa = v68;
      LOBYTE(v45[12].isa) = v66;
      *(&v45[12].isa + 1) = v79;
      BYTE3(v45[12].isa) = v80;
      *(&v45[12].isa + 4) = v27;
      *(&v45[13].isa + 4) = v28;
      v5 = sub_24869E74C;
      v4 = v77;
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v30)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v8 = &v81;
      sub_2486A2114();
      v4 = v81;
      if (v34)
      {
        goto LABEL_27;
      }
    }

LABEL_25:
    v4[(v5 >> 6) + 8].isa = (v4[(v5 >> 6) + 8].isa | (1 << v5));
    v37 = v4[6].isa + 16 * v5;
    *v37 = v10;
    *(v37 + 8) = v23;
    *(v4[7].isa + v5) = MEMORY[0x277D84F90];
    v38 = v4[2].isa;
    v39 = __OFADD__(v38, 1);
    v40 = (v38 + 1);
    if (v39)
    {
      goto LABEL_45;
    }

    v4[2].isa = v40;
    goto LABEL_27;
  }

  while (1)
  {
LABEL_14:
    v20 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v20 >= v0)
    {
      break;
    }

    v9 = *(v17 + 8 * v20);
    ++v6;
    if (v9)
    {
      v6 = v20;
      goto LABEL_18;
    }
  }

  sub_2486B50EC();
  v46 = sub_2486B539C();
  v47 = sub_2486B55AC();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 134217984;
    *(v48 + 4) = v4[2];
    _os_log_impl(&dword_24868B000, v46, v47, "marker: The size of countsToReport is %ld", v48, 0xCu);
    MEMORY[0x24C1D6650](v48, -1, -1);
  }

  v69 = v62[37];
  v71 = v62[39];
  v67 = v62[35];
  v49 = v62[33];
  v78 = v4;
  v50 = v62[28];
  v51 = v62[25];
  v52 = v62[26];
  v53 = v62[24];
  v73 = v62[23];
  v55 = v62[21];
  v54 = v62[22];

  v64(v50, v52);
  static BookmarkUtils.getBookmarkEndTime(calendar:)(v54 + OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_calendar, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1860, &qword_2486B68E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2486B6400;
  *(inited + 32) = v49;
  *(inited + 40) = v67;
  *(inited + 48) = v69;
  v57 = sub_2486A7268(inited, v51);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1868, &unk_2486B68F0);
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_2486B6240;
  *(v58 + 32) = v71;
  v59 = sub_2486A72A8(v58, v51);
  swift_setDeallocating();
  (*(v53 + 8))(v51, v73);

  sub_2486A2CEC(v5, 0);
  *v55 = v78;
  v55[1] = v57;
  v55[2] = v59;

  v60 = v62[1];

  return v60();
}

uint64_t sub_24869E75C(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v95 = a2;
  v115 = sub_2486B53BC();
  v7 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_2486B4E9C();
  v9 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v121 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_2486B4EAC();
  v11 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v119 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_2486B4E7C();
  isUniquelyReferenced_nonNull_native = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v117 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  MEMORY[0x28223BE20](v15 - 8);
  v116 = &v81 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1898, &unk_2486B69E0);
  MEMORY[0x28223BE20](v17 - 8);
  v94 = &v81 - v18;
  v93 = type metadata accessor for DateAndLocalePair(0);
  v89 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v86 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_2486B4DAC();
  v20 = *(v134 - 8);
  v21 = MEMORY[0x28223BE20](v134);
  v113 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v81 - v24;
  if (a1 >> 62)
  {
LABEL_67:
    result = sub_2486B56BC();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v27 = 0;
  v127 = OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_calendar;
  v85 = OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_calculationTasks;
  v81 = (v4 + OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_defaultLocale);
  v88 = a1 & 0xC000000000000001;
  v83 = a1 & 0xFFFFFFFFFFFFFF8;
  v82 = a1 + 32;
  v92 = (v89 + 56);
  v112 = *MEMORY[0x277CC9878];
  v111 = (isUniquelyReferenced_nonNull_native + 104);
  v110 = *MEMORY[0x277CC9900];
  v109 = (v11 + 104);
  v108 = *MEMORY[0x277CC98E8];
  v107 = (v9 + 13);
  v106 = (v9 + 1);
  v105 = (v11 + 8);
  v104 = (isUniquelyReferenced_nonNull_native + 8);
  v103 = (v20 + 48);
  v101 = (v20 + 32);
  v126 = (v20 + 8);
  v100 = (v7 + 8);
  *&v23 = 136315138;
  v97 = v23;
  v91 = xmmword_2486B68B0;
  v84 = a1;
  v135 = v25;
  v87 = result;
  v125 = v4;
  v102 = a3;
  while (1)
  {
    if (v88)
    {
      v28 = v27;
      v9 = MEMORY[0x24C1D5E60](v27, a1);
      v29 = __OFADD__(v28, 1);
      v7 = v28 + 1;
      if (v29)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (v27 >= *(v83 + 16))
      {
        goto LABEL_65;
      }

      v9 = *(v82 + 8 * v27);
      v30 = v27;

      v29 = __OFADD__(v30, 1);
      v7 = v30 + 1;
      if (v29)
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

    v96 = v7;
    sub_2486B512C();
    sub_2486B4D5C();
    if ((_s11DeepThought10CustomDateO15isTodayOrFuture4date8calendarSb10Foundation0D0V_AG8CalendarVtFZ_0(v25, v4 + v127) & 1) == 0)
    {
      break;
    }

    (*v126)(v25, v134);

LABEL_5:
    v27 = v96;
    if (v96 == v87)
    {
      return result;
    }
  }

  v133 = v9;
  v31 = *(v4 + v85);
  if (v31 >> 62)
  {
    v20 = sub_2486B56BC();
  }

  else
  {
    v20 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1 = v134;
  if (!v20)
  {
LABEL_58:

    v25 = v135;
    result = (*v126)(v135, a1);
    a1 = v84;
    v4 = v125;
    goto LABEL_5;
  }

  v7 = 0;
  v32 = v81[1];
  v90 = *v81;
  v137 = v32;
  v132 = v31 & 0xC000000000000001;
  v99 = v31 & 0xFFFFFFFFFFFFFF8;
  v98 = v31 + 32;
  v124 = v31;
  v123 = v20;
  while (1)
  {
    if (v132)
    {
      v33 = MEMORY[0x24C1D5E60](v7, v31);
      v29 = __OFADD__(v7++, 1);
      if (v29)
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (v7 >= *(v99 + 16))
      {
        goto LABEL_61;
      }

      v29 = __OFADD__(v7++, 1);
      if (v29)
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }
    }

    v138 = v7;
    v9 = *(v33 + 24);
    v34 = *(v33 + 32);
    v136 = *(v33 + 16);
    v4 = v33;
    v11 = v34 + 16;
    isUniquelyReferenced_nonNull_native = *(v34 + 16);

    v25 = v133;
    if (((isUniquelyReferenced_nonNull_native)(v133, v9, v34) & 1) == 0)
    {

      a1 = v134;
      goto LABEL_18;
    }

    v131 = v4;
    v35 = sub_2486B510C();
    v36 = sub_24869F714(v35, sub_2486A28C4);
    v130 = sub_2486A2CFC(v36);
    v129 = v37;

    v38 = sub_2486B511C();
    v39 = sub_24869F714(v38, sub_2486A2A54);
    a1 = sub_2486A3398(v39);
    *(&v128 + 1) = v40;

    v41 = sub_2486B511C();
    v42 = sub_24869F714(v41, sub_2486A2A54);
    v25 = sub_2486A3728(v42);
    v44 = v43;

    *&v128 = a1;
    if (v44)
    {
    }

    else
    {
      v45 = v95;
      v11 = *(v95 + 16);
      v4 = v137;
      if (v11 && (v46 = (*(v89 + 80) + 32) & ~*(v89 + 80), v20 = v95 + v46, (sub_2486B4D7C() & 1) == 0))
      {
        if (v11 != 1)
        {
          v48 = *(v89 + 72);
          a3 = sub_2486A3D30();
          v7 = v45 + v48 + v46;
          isUniquelyReferenced_nonNull_native = 1;
          v9 = v134;
          while ((sub_2486B541C() & 1) == 0)
          {
            ++isUniquelyReferenced_nonNull_native;
            v7 += v48;
            if (v11 == isUniquelyReferenced_nonNull_native)
            {
              isUniquelyReferenced_nonNull_native = v11;
              break;
            }
          }

          if (isUniquelyReferenced_nonNull_native - 1 >= v11)
          {
            goto LABEL_66;
          }

          v20 += v48 * (isUniquelyReferenced_nonNull_native - 1);
        }

        v49 = v94;
        sub_2486A3BB8(v20, v94);
        v50 = v93;
        (*v92)(v49, 0, 1, v93);

        v51 = v49;
        v52 = v86;
        sub_2486A3C1C(v51, v86);
        v53 = (v52 + *(v50 + 20));
        v25 = *v53;
        v44 = v53[1];

        sub_2486A3C80(v52);
      }

      else
      {
        v47 = v94;
        (*v92)(v94, 1, 1, v93);
        sub_2486A3D88(v47);
        v25 = v90;
        v44 = v4;
      }
    }

    v54 = v117;
    v4 = v118;
    (*v111)(v117, v112, v118);
    v55 = v119;
    v56 = v120;
    (*v109)(v119, v110, v120);
    v57 = v121;
    v58 = v122;
    (*v107)(v121, v108, v122);
    v59 = v116;
    sub_2486B4EBC();
    (*v106)(v57, v58);
    (*v105)(v55, v56);
    (*v104)(v54, v4);
    a1 = v134;
    if ((*v103)(v59, 1, v134) == 1)
    {
      break;
    }

    v60 = v113;
    (*v101)(v113, v59, a1);
    sub_2486B4D6C();
    v62 = v61;
    (*v126)(v60, a1);
    LODWORD(v142) = 1;
    *(&v142 + 1) = v62;
    *&v143 = v25;
    *(&v143 + 1) = v44;
    *&v144 = v130;
    *(&v144 + 1) = v129;
    v145 = v128;
    v146 = v136;
    v63 = v114;
    sub_2486B50EC();
    sub_2486A3DF0(&v142, v140);
    v7 = sub_2486B539C();
    isUniquelyReferenced_nonNull_native = sub_2486B55AC();
    sub_2486A3CDC(&v142);
    if (os_log_type_enabled(v7, isUniquelyReferenced_nonNull_native))
    {
      v64 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v139 = v4;
      *v64 = v97;
      v140[2] = v144;
      v140[3] = v145;
      v141 = v146;
      v140[0] = v142;
      v140[1] = v143;
      v65 = AggregationKeys.description.getter();
      v67 = sub_2486965C0(v65, v66, &v139);

      *(v64 + 4) = v67;
      _os_log_impl(&dword_24868B000, v7, isUniquelyReferenced_nonNull_native, "Updating key for %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      MEMORY[0x24C1D6650](v4, -1, -1);
      MEMORY[0x24C1D6650](v64, -1, -1);
    }

    (*v100)(v63, v115);
    a3 = v102;
    v31 = v124;
    v20 = v123;
    v68 = *v102;
    v11 = v131;
    if (*(*v102 + 16) && (v69 = sub_2486A119C(&v142), (v70 & 1) != 0))
    {
      v7 = *(*(v68 + 56) + 16 * v69);
      v9 = a3;
      v72 = sub_24869F930(v140, &v142);
      if ((*(v71 + 16) & 1) == 0)
      {
        if (v7 == -1)
        {
          goto LABEL_64;
        }

        *v71 = v7 + 1;
      }

      (v72)(v140, 0);

      sub_2486A3CDC(&v142);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v139 = *a3;
      v9 = v139;
      v73 = sub_2486A119C(&v142);
      v75 = v9[2];
      v76 = (v74 & 1) == 0;
      v29 = __OFADD__(v75, v76);
      v77 = v75 + v76;
      if (v29)
      {
        goto LABEL_62;
      }

      v78 = v74;
      if (v9[3] >= v77)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v80 = v73;
          sub_2486A1F60();
          v73 = v80;
          v11 = v131;
        }
      }

      else
      {
        sub_2486A162C(v77, isUniquelyReferenced_nonNull_native);
        v73 = sub_2486A119C(&v142);
        if ((v78 & 1) != (v79 & 1))
        {
          goto LABEL_70;
        }
      }

      v9 = v139;
      if (v78)
      {
        *(v139[7] + 16 * v73) = v91;
      }

      else
      {
        sub_2486A51E4(v73, &v142, 1, 0, v139);
        sub_2486A3DF0(&v142, v140);
      }

      sub_2486A3CDC(&v142);
      *a3 = v9;
    }

LABEL_18:
    v7 = v138;
    if (v138 == v20)
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_70:
  result = sub_2486B57EC();
  __break(1u);
  return result;
}

unint64_t sub_24869F714(uint64_t a1, uint64_t (*a2)(unint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v14 = a2;
    v15 = a1;
    v16 = sub_2486B56BC();
    if (v16)
    {
      v17 = v16;
      v2 = sub_2486A102C(v16, 0);
      v14(v2 + 32, v17, v15);
      v19 = v18;

      if (v19 != v17)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v2 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
        v3 = *(v2 + 16);
        v4 = v3 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_2486B56BC();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v3 = a1;
    v4 = a1 / 2;
LABEL_6:
    if (v3 + 1 < 3)
    {
      return v2;
    }

    v6 = -v4;
    v7 = 4;
    while (1)
    {
      v8 = v3 - (v7 - 3);
      if (__OFSUB__(v3, v7 - 3))
      {
        break;
      }

      a1 = v7 - 4;
      if (v7 - 4 != v8)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x24C1D5E60]();
          v11 = MEMORY[0x24C1D5E60](v3 - (v7 - 3), v2);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v9)
          {
            goto LABEL_32;
          }

          if (v8 >= v9)
          {
            goto LABEL_33;
          }

          v10 = *(v2 + 8 * v7);
          v11 = *(v2 + 8 * v8 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
        {
          v2 = sub_2486A2734(v2);
          v12 = (v2 >> 62) & 1;
        }

        else
        {
          LODWORD(v12) = 0;
        }

        v13 = v2 & 0xFFFFFFFFFFFFFF8;
        *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v7) = v11;

        if ((v2 & 0x8000000000000000) != 0 || v12)
        {
          a1 = sub_2486A2734(v2);
          v2 = a1;
          v13 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v8 >= *(v13 + 16))
        {
          goto LABEL_34;
        }

        *(v13 + 8 * v8 + 32) = v10;
      }

      ++v7;
      if (v6 + v7 == 4)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t (*sub_24869F930(uint64_t **a1, __int128 *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2486A23F0(v4, a2);
  return sub_24869F9A8;
}

void sub_24869F9A8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_24869F9F4(unint64_t a1, uint64_t **a2, uint64_t **a3)
{
  v4 = v3;
  v118 = a3;
  v112 = sub_2486B4E9C();
  v7 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v111 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_2486B4EAC();
  v9 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v109 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_2486B4E7C();
  v11 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  MEMORY[0x28223BE20](v13 - 8);
  v106 = &v73 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1898, &unk_2486B69E0);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v73 - v16;
  v104 = type metadata accessor for DateAndLocalePair(0);
  v84 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v81 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_2486B4DAC();
  isUniquelyReferenced_nonNull_native = *(v119 - 8);
  v19 = MEMORY[0x28223BE20](v119);
  v103 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v73 - v22;
  MEMORY[0x28223BE20](v21);
  v80 = &v73 - v24;
  if (a1 >> 62)
  {
    goto LABEL_67;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
LABEL_3:
    v117 = OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_calendar;
    v77 = OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_calculationTasks;
    v102 = (v4 + OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_defaultLocale);
    v79 = a1 & 0xC000000000000001;
    v76 = a1 & 0xFFFFFFFFFFFFFF8;
    v75 = a1 + 32;
    v26 = (isUniquelyReferenced_nonNull_native + 8);
    v89 = 0x80000002486BBD60;
    v88 = 0x80000002486BBD80;
    v101 = (v84 + 56);
    v100 = *MEMORY[0x277CC9878];
    v99 = (v11 + 104);
    v98 = *MEMORY[0x277CC9900];
    v97 = (v9 + 104);
    v96 = *MEMORY[0x277CC98E8];
    v95 = (v7 + 104);
    v94 = (v7 + 8);
    v93 = (v9 + 8);
    v7 = 0;
    v92 = (v11 + 8);
    v91 = (isUniquelyReferenced_nonNull_native + 48);
    v87 = (isUniquelyReferenced_nonNull_native + 32);
    v83 = xmmword_2486B68C0;
    v115 = a2;
    v125 = v23;
    v78 = result;
    v90 = (isUniquelyReferenced_nonNull_native + 8);
    v114 = v4;
    v74 = a1;
    while (1)
    {
      if (v79)
      {
        v11 = MEMORY[0x24C1D5E60](v7, a1);
      }

      else
      {
        if (v7 >= *(v76 + 16))
        {
          goto LABEL_66;
        }

        v11 = *(v75 + 8 * v7);
      }

      isUniquelyReferenced_nonNull_native = v119;
      v27 = __OFADD__(v7++, 1);
      v82 = v7;
      v9 = v80;
      if (v27)
      {
        goto LABEL_63;
      }

      sub_2486B512C();
      sub_2486B4D5C();
      if ((_s11DeepThought10CustomDateO15isTodayOrFuture4date8calendarSb10Foundation0D0V_AG8CalendarVtFZ_0(v9, v4 + v117) & 1) == 0)
      {
        break;
      }

      (*v26)(v9, isUniquelyReferenced_nonNull_native);

LABEL_5:
      v7 = v82;
      if (v82 == v78)
      {
        return result;
      }
    }

    v116 = *(v4 + v77);
    if (!(v116 >> 62))
    {
      v7 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_14;
      }

      goto LABEL_57;
    }

    v7 = sub_2486B56BC();
    if (!v7)
    {
LABEL_57:

      v9 = *v26;
LABEL_58:
      result = (v9)(v80, isUniquelyReferenced_nonNull_native);
      goto LABEL_5;
    }

LABEL_14:
    v4 = 0;
    a1 = v116;
    v123 = v116 & 0xC000000000000001;
    v86 = v116 & 0xFFFFFFFFFFFFFF8;
    v85 = v116 + 32;
    v113 = v11;
    v122 = v7;
    while (1)
    {
      while (1)
      {
        if (v123)
        {
          v28 = MEMORY[0x24C1D5E60](v4, a1);
          v27 = __OFADD__(v4++, 1);
          if (v27)
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v4 >= *(v86 + 16))
          {
            goto LABEL_60;
          }

          v28 = *(v85 + 8 * v4);

          v27 = __OFADD__(v4++, 1);
          if (v27)
          {
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            result = sub_2486B56BC();
            if (!result)
            {
              return result;
            }

            goto LABEL_3;
          }
        }

        sub_2486B512C();
        sub_2486B4D5C();
        v29 = *(v28 + 16);
        if ((*(*(v28 + 32) + 8))(v11))
        {
          break;
        }

        v9 = *v26;
        (*v26)(v23, isUniquelyReferenced_nonNull_native);

LABEL_51:
        v7 = v122;
        if (v4 == v122)
        {
          goto LABEL_55;
        }
      }

      v31 = *v102;
      v30 = v102[1];
      a1 = a2[2];
      v121 = v29;
      if (!a1)
      {
        break;
      }

      v32 = (*(v84 + 80) + 32) & ~*(v84 + 80);
      a2 = (a2 + v32);

      if (sub_2486B4D7C())
      {
        goto LABEL_34;
      }

      if (a1 != 1)
      {
        v124 = v30;
        v11 = *(v84 + 72);
        v23 = sub_2486A3D30();
        v9 = v115 + v11 + v32;
        v33 = 1;
        while (1)
        {
          v7 = isUniquelyReferenced_nonNull_native;
          if (sub_2486B541C())
          {
            break;
          }

          ++v33;
          v9 += v11;
          if (a1 == v33)
          {
            v33 = a1;
            break;
          }
        }

        if (v33 - 1 >= a1)
        {
          goto LABEL_64;
        }

        a2 = (a2 + v11 * (v33 - 1));
      }

      v34 = a2;
      v35 = v105;
      sub_2486A3BB8(v34, v105);
      v36 = v104;
      (*v101)(v35, 0, 1, v104);

      v37 = v35;
      v38 = v81;
      sub_2486A3C1C(v37, v81);
      v39 = (v38 + *(v36 + 20));
      v40 = v39[1];
      v120 = *v39;
      v124 = v40;

      sub_2486A3C80(v38);
LABEL_35:
      v42 = v107;
      v43 = v108;
      (*v99)(v107, v100, v108);
      v44 = v109;
      v45 = v110;
      (*v97)(v109, v98, v110);
      v46 = v111;
      v47 = v112;
      (*v95)(v111, v96, v112);
      v48 = v106;
      sub_2486B4EBC();
      (*v94)(v46, v47);
      (*v93)(v44, v45);
      (*v92)(v42, v43);
      isUniquelyReferenced_nonNull_native = v119;
      if ((*v91)(v48, 1, v119) == 1)
      {
        __break(1u);
LABEL_70:
        result = sub_2486B57EC();
        __break(1u);
        return result;
      }

      v49 = v103;
      (*v87)(v103, v48, isUniquelyReferenced_nonNull_native);
      sub_2486B4D6C();
      v51 = v50;
      v26 = v90;
      v9 = *v90;
      (*v90)(v49, isUniquelyReferenced_nonNull_native);
      LODWORD(v127) = 1;
      *(&v127 + 1) = v51;
      v23 = v125;
      *&v128 = v120;
      *(&v128 + 1) = v124;
      *&v129 = 0xD000000000000019;
      *(&v129 + 1) = v89;
      *&v130 = 0xD000000000000017;
      *(&v130 + 1) = v88;
      v131 = v121;
      a2 = v118;
      v52 = *v118;
      v11 = v113;
      a1 = v116;
      if (!(*v118)[2] || (v53 = sub_2486A119C(&v127), (v54 & 1) == 0))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v126 = *a2;
        v7 = v126;
        v57 = sub_2486A119C(&v127);
        v59 = *(v7 + 16);
        v60 = (v58 & 1) == 0;
        v27 = __OFADD__(v59, v60);
        v61 = v59 + v60;
        if (v27)
        {
          goto LABEL_61;
        }

        v62 = v58;
        if (*(v7 + 24) >= v61)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v7 = &v126;
            v72 = v57;
            sub_2486A1F60();
            v57 = v72;
            v11 = v113;
          }
        }

        else
        {
          sub_2486A162C(v61, isUniquelyReferenced_nonNull_native);
          v7 = v126;
          v57 = sub_2486A119C(&v127);
          if ((v62 & 1) != (v63 & 1))
          {
            goto LABEL_70;
          }
        }

        isUniquelyReferenced_nonNull_native = v119;
        if (v62)
        {
          v64 = v57;
          sub_2486A3CDC(&v127);
          v65 = v126;
          *(v126[7] + 16 * v64) = v83;

          (v9)(v23, isUniquelyReferenced_nonNull_native);
          *v118 = v65;
        }

        else
        {
          a2 = v126;
          v126[(v57 >> 6) + 8] |= 1 << v57;
          v66 = &a2[6][9 * v57];
          *v66 = v127;
          v67 = v128;
          v68 = v129;
          v69 = v130;
          *(v66 + 64) = v131;
          *(v66 + 32) = v68;
          *(v66 + 48) = v69;
          *(v66 + 16) = v67;
          *&a2[7][2 * v57] = v83;

          (v9)(v23, isUniquelyReferenced_nonNull_native);
          v70 = a2[2];
          v27 = __OFADD__(v70, 1);
          v71 = (v70 + 1);
          if (v27)
          {
            goto LABEL_62;
          }

          a2[2] = v71;
          *v118 = a2;
        }

        goto LABEL_50;
      }

      a2 = *(v52[7] + 16 * v53 + 12);
      v56 = sub_24869F930(&v126, &v127);
      if (*(v55 + 16))
      {
        (v56)(&v126, 0);
        sub_2486A3CDC(&v127);

        (v9)(v23, isUniquelyReferenced_nonNull_native);
LABEL_50:
        a2 = v115;
        goto LABEL_51;
      }

      v7 = v122;
      if (a2 == -1)
      {
        goto LABEL_65;
      }

      *(v55 + 12) = a2 + 1;
      (v56)(&v126, 0);
      sub_2486A3CDC(&v127);

      (v9)(v23, isUniquelyReferenced_nonNull_native);
      a2 = v115;
      if (v4 == v7)
      {
LABEL_55:

        a1 = v74;
        v4 = v114;
        goto LABEL_58;
      }
    }

LABEL_34:
    v120 = v31;
    v124 = v30;
    v41 = v105;
    (*v101)(v105, 1, 1, v104);
    sub_2486A3D88(v41);
    goto LABEL_35;
  }

  return result;
}