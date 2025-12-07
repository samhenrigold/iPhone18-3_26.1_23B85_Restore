uint64_t sub_25209497C@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  if (v8)
  {
    sub_25214248C();
    swift_unknownObjectRetain_n();
    v10 = swift_dynamicCastClass();
    if (!v10)
    {
      swift_unknownObjectRelease();
      v10 = MEMORY[0x277D84F90];
    }

    v11 = *(v10 + 16);

    if (__OFSUB__(v8 >> 1, v7))
    {
      goto LABEL_22;
    }

    if (v11 != (v8 >> 1) - v7)
    {
      goto LABEL_23;
    }

    v9 = swift_dynamicCastClass();
    if (!v9)
    {
      swift_unknownObjectRelease();
      v9 = MEMORY[0x277D84F90];
    }

    goto LABEL_9;
  }

  while (1)
  {
    sub_252098E44(v5, v6, v7, v8);
LABEL_9:
    v12 = *(v9 + 16);
    if (!v12)
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v12 == 1)
    {
      goto LABEL_17;
    }

    if (v12 < 3)
    {
      goto LABEL_18;
    }

    v13 = *(v9 + 32);
    v14 = *(v9 + 40);
    v15 = *(v9 + 48);
    v5 = *&v15;

    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_19;
    }

    if (v15 <= -9.22337204e18)
    {
      goto LABEL_20;
    }

    if (v15 < 9.22337204e18)
    {
      break;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_unknownObjectRelease();
  }

  *a3 = v13;
  *(a3 + 8) = v14;
  *(a3 + 16) = a2 & 1;
  *(a3 + 24) = 0x3FF0000000000000;
  *(a3 + 32) = v15;
  return result;
}

uint64_t sub_252094B04()
{
  isEscapingClosureAtFileLocation = v0;
  v5 = *(v0 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBA8, &qword_252143D60);
  v6 = 0;
  sub_25214200C();
  if (!*(aBlock + 16))
  {

    goto LABEL_5;
  }

  v2 = *(aBlock + 32);

  MEMORY[0x28223BE20](v7);
  sub_25214200C();
  if (aBlock)
  {
LABEL_5:
    v9 = swift_allocObject();
    *(v9 + 16) = isEscapingClosureAtFileLocation;
    *(v9 + 24) = 1;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_2520A3758;
    *(v6 + 24) = v9;
    v106 = sub_2520A3768;
    v107 = v6;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v104 = sub_252083924;
    v105 = &block_descriptor_1265;
    v10 = _Block_copy(&aBlock);
    v11 = isEscapingClosureAtFileLocation;

    dispatch_sync(v5, v10);
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v13 = 0;
      return v13 & 1;
    }

LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v8 = sub_25209C858(&unk_28644BE00);
  MEMORY[0x28223BE20](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  sub_25214200C();
  v14 = sub_2520EEE44(0, aBlock, *(&aBlock + 1), v104);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252143AC0;
  *(inited + 32) = v2;
  v16 = sub_25209D600(inited);
  swift_setDeallocating();
  v12 = *(v16 + 16);
  if (v12)
  {
    v17 = *(v16 + 32);

    v1 = round(v17);
    if (*(v8 + 16) && (v18 = sub_25213E6C0(v1), (v19 & 1) != 0))
    {
      v20 = 0;
      v21 = *(*(v8 + 56) + 8 * v18);
    }

    else
    {
      v21 = 0;
      v20 = 1;
    }

    v22 = *(v14 + 16);
    v23 = 32;
    while (v22)
    {
      v24 = *(v14 + v23);
      v23 += 8;
      --v22;
      if (v24 == v2)
      {
        v102 = v21;

        MEMORY[0x28223BE20](v25);
        sub_25214200C();
        v26 = *(aBlock + 16);
        v27 = 32;
        while (v26)
        {
          v28 = *(aBlock + v27);
          v27 += 8;
          --v26;
          if (v28 == v2)
          {
            v101 = v20;

            MEMORY[0x28223BE20](v29);
            sub_25214200C();
            v100 = 0;
            v6 = 0;
            v30 = aBlock;
            v31 = aBlock + 24;
            v32 = *(v14 + 16);
            v33 = MEMORY[0x277D84F90];
            v3 = 0.01;
            v34 = MEMORY[0x277D84F90];
            while (v32 != v6)
            {
              v12 = *(v14 + 16);
              if (v6 >= v12)
              {
                __break(1u);
LABEL_98:
                __break(1u);
                goto LABEL_99;
              }

              v12 = *(v30 + 16);
              if (v6 == v12)
              {
                break;
              }

              if (v6 >= v12)
              {
                goto LABEL_98;
              }

              v35 = *(v14 + 32 + 8 * v6++);
              if (vabdd_f64(v35, v2) < 0.01)
              {
                v99 = v31;
                v36 = *(v31 + 8 * v6);
                *&aBlock = v34;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_25209B214(0, *(v34 + 16) + 1, 1);
                  v34 = aBlock;
                }

                v38 = *(v34 + 16);
                v37 = *(v34 + 24);
                v39 = v38 + 1;
                if (v38 >= v37 >> 1)
                {
                  v41 = v38 + 1;
                  v98 = v38;
                  sub_25209B214((v37 > 1), v38 + 1, 1);
                  v38 = v98;
                  v33 = MEMORY[0x277D84F90];
                  v39 = v41;
                  v34 = aBlock;
                }

                *(v34 + 16) = v39;
                v40 = v34 + 16 * v38;
                *(v40 + 32) = v35;
                *(v40 + 40) = v36;
                v31 = v99;
              }
            }

            v65 = *(v34 + 16);
            if (v65)
            {
              *&aBlock = v33;
              sub_25209B1F4(0, v65, 0);
              v66 = *(v33 + 16);
              v67 = 40;
              do
              {
                v2 = *(v34 + v67);
                *&aBlock = v33;
                v68 = *(v33 + 24);
                if (v66 >= v68 >> 1)
                {
                  sub_25209B1F4((v68 > 1), v66 + 1, 1);
                  v33 = aBlock;
                }

                *(v33 + 16) = v66 + 1;
                *(v33 + 8 * v66 + 32) = v2;
                v67 += 16;
                ++v66;
                --v65;
              }

              while (v65);
            }

            else
            {

              v33 = MEMORY[0x277D84F90];
            }

            v69 = 0;
            v70 = *(v33 + 16);
            v71 = v101;
            v72 = v102;
            do
            {
              v73 = v69;
              if (v70 == v69)
              {
                break;
              }

              ++v69;
            }

            while (*(v33 + 8 * v73 + 32) != 0.0);
            v74 = 0;
            while (v70 != v74)
            {
              v75 = v33 + 8 * v74++;
              if (*(v75 + 32) == 1.0)
              {
                if (v70 != v73)
                {

                  MEMORY[0x28223BE20](v86);
                  sub_25214200C();
                  v62 = aBlock;
                  v64 = *(aBlock + 16);
                  if (v64)
                  {
                    goto LABEL_104;
                  }

                  goto LABEL_87;
                }

                break;
              }
            }

            v2 = 10.0;
            if (v70 <= 1)
            {
              v2 = 20.0;
              if (!v70)
              {
                goto LABEL_89;
              }
            }

            v76 = *(v33 + 8 * v70 + 24);

            if (v76 != 1.0)
            {
              goto LABEL_90;
            }

            if (v102 == -1)
            {
              v78 = v101;
            }

            else
            {
              v78 = 1;
            }

            v79 = 1;
            v80 = 1;
            if (v78)
            {
              goto LABEL_74;
            }

            goto LABEL_73;
          }
        }

        goto LABEL_48;
      }
    }

    swift_bridgeObjectRelease_n();
    v42 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_previousAudiogram;
    swift_beginAccess();
    v43 = *(isEscapingClosureAtFileLocation + v42);
    v3 = 0.0;
    if (*(v43 + 16))
    {
      v44 = sub_25213E6C0(v1);
      if (v45)
      {
        v3 = *(*(v43 + 56) + 8 * v44);
      }
    }

    v46 = swift_endAccess();
    if (v20)
    {
      v47 = 0;
    }

    else
    {
      v47 = v21;
    }

    v48 = (v47 * 10) >> 64;
    v12 = 10 * v47;
    if (v48 != v12 >> 63)
    {
      goto LABEL_101;
    }

    v49 = v3 + v12;
    if (v49 <= *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel))
    {
      v49 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel);
    }

    if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel) >= v49)
    {
      v3 = v49;
    }

    else
    {
      v3 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel);
    }

    MEMORY[0x28223BE20](v46);
    sub_25214200C();
    v50 = *(aBlock + 16);
    v51 = 32;
    while (v50)
    {
      v52 = *(aBlock + v51);
      v51 += 8;
      --v50;
      if (v52 == v2)
      {

        goto LABEL_84;
      }
    }

    MEMORY[0x28223BE20](v53);
    sub_25214200C();
    v6 = aBlock;
    v12 = *(aBlock + 16);
    if (!v12)
    {
      goto LABEL_46;
    }

    goto LABEL_102;
  }

LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  sub_252098E44(v6, v6 + 32, 1, (2 * v12) | 1);
  v93 = v92;

  v6 = v93;
LABEL_46:
  v54 = swift_allocObject();
  *(v54 + 16) = isEscapingClosureAtFileLocation;
  *(v54 + 24) = v6;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_2520A3620;
  *(v55 + 24) = v54;
  v106 = sub_2520A3768;
  v107 = v55;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v104 = sub_252083924;
  v105 = &block_descriptor_1254;
  v56 = _Block_copy(&aBlock);
  v57 = isEscapingClosureAtFileLocation;

  dispatch_sync(v5, v56);
  _Block_release(v56);
  v5 = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
LABEL_84:
    v84 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_channel);
    *&aBlock = v1;
    *(&aBlock + 1) = v3;
    v104 = v84;
    v105 = 0x3FF0000000000000;
    sub_252084B80(&aBlock);
    v13 = 1;
    return v13 & 1;
  }

  __break(1u);
LABEL_48:

  MEMORY[0x28223BE20](v58);
  sub_25214200C();
  v59 = aBlock;
  v60 = *(aBlock + 16);
  if (v60)
  {
    sub_252098E44(aBlock, aBlock + 32, 1, (2 * v60) | 1);
    v95 = v94;

    v59 = v95;
  }

  v61 = swift_allocObject();
  *(v61 + 16) = isEscapingClosureAtFileLocation;
  *(v61 + 24) = v59;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_2520A3620;
  *(v62 + 24) = v61;
  v106 = sub_2520A3768;
  v107 = v62;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v104 = sub_252083924;
  v105 = &block_descriptor_1241;
  v63 = _Block_copy(&aBlock);
  isEscapingClosureAtFileLocation = isEscapingClosureAtFileLocation;

  dispatch_sync(v5, v63);
  _Block_release(v63);
  v5 = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
LABEL_104:
    sub_252098E44(v62, v62 + 32, 1, (2 * v64) | 1);
    v97 = v96;

    v62 = v97;
LABEL_87:
    v87 = swift_allocObject();
    *(v87 + 16) = isEscapingClosureAtFileLocation;
    *(v87 + 24) = v62;
    v88 = swift_allocObject();
    v71 = v88;
    *(v88 + 16) = sub_2520A3620;
    *(v88 + 24) = v87;
    v106 = sub_2520A3768;
    v107 = v88;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v104 = sub_252083924;
    v105 = &block_descriptor_1229;
    v89 = _Block_copy(&aBlock);
    v72 = v107;
    isEscapingClosureAtFileLocation = isEscapingClosureAtFileLocation;

    dispatch_sync(v5, v89);
    _Block_release(v89);
    v90 = swift_isEscapingClosureAtFileLocation();

    if (v90)
    {
      __break(1u);
LABEL_89:

LABEL_90:
      v79 = 0;
      v80 = 0;
      if (v72 == 1)
      {
        v91 = v71;
      }

      else
      {
        v91 = 1;
      }

      if ((v91 & 1) == 0)
      {
LABEL_73:
        v2 = 10.0;
        v80 = v79;
      }

LABEL_74:
      MEMORY[0x28223BE20](v77);
      sub_25214200C();
      v81 = sub_2520EEE44(1, aBlock, *(&aBlock + 1), v104);

      if (v100)
      {

        v82 = 0.0;
        if (v80)
        {
          goto LABEL_76;
        }

LABEL_81:
        if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel) >= v2 + v82)
        {
          v3 = v2 + v82;
        }

        else
        {
          v3 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel);
        }

        goto LABEL_84;
      }

      v83 = *(v81 + 16);
      if (v83)
      {
        v82 = *(v81 + 8 * v83 + 24);

        if ((v80 & 1) == 0)
        {
          goto LABEL_81;
        }
      }

      else
      {

        v82 = 0.0;
        if ((v80 & 1) == 0)
        {
          goto LABEL_81;
        }
      }

LABEL_76:
      if (v82 - v2 > *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel))
      {
        v3 = v82 - v2;
      }

      else
      {
        v3 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel);
      }

      goto LABEL_84;
    }
  }

  v13 = sub_252094B04();
  return v13 & 1;
}

BOOL sub_2520959A0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  sub_2520EF19C(4, a1, a2, a3);
  v8 = v7;

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v9 = v8 / a2;
  v10 = sub_25214198C();
  __swift_project_value_buffer(v10, qword_27F4CDE68);
  v11 = v3;
  v12 = sub_25214196C();
  v13 = sub_252141FBC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136446466;
    v16 = sub_2521425DC();
    v18 = sub_2520A5448(v16, v17, &v25);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    MEMORY[0x28223BE20](v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
    sub_25214200C();
    v20 = *(v26 + 16);

    *(v14 + 14) = v20;

    _os_log_impl(&dword_25207E000, v12, v13, "[%{public}s] Samples: %ld", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x253099FD0](v15, -1, -1);
    MEMORY[0x253099FD0](v14, -1, -1);
  }

  else
  {
  }

  MEMORY[0x28223BE20](v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  sub_25214200C();
  v22 = *(v26 + 16);

  return v9 >= 1.0 || v22 >= *&v11[OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxSampleCount];
}

uint64_t sub_252095DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>, double a8@<D0>)
{
  v10 = v8;
  v157 = *MEMORY[0x277D85DE8];
  v152 = v10;
  swift_getObjectType();
  if (a3 < 5 || a2 < 1)
  {
    sub_2520A2090();
    swift_allocError();
    *v21 = 0xD000000000000022;
    v21[1] = 0x8000000252148EF0;
    return swift_willThrow();
  }

  v146 = a7;
  result = sub_2520EEE44(0, a1, a2, a3);
  if (v9)
  {
    return result;
  }

  v20 = result;
  v141 = sub_2520EEE44(3, a1, a2, a3);
  MEMORY[0x28223BE20](v141);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  sub_25214200C();

  if (v155 < 0)
  {
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v139 = v20;
  if (v155)
  {
    v23 = 0;
    v143 = MEMORY[0x277D84F90];
    v150 = v155;
    while (1)
    {
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      sub_25214200C();

      if (v23 >= v155)
      {
        goto LABEL_10;
      }

      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      sub_25214200C();

      MEMORY[0x28223BE20](v24);
      sub_25214200C();
      v25 = sub_2520F0530(v23, __B, v155, v156);
      v147 = v26;
      v27 = v25;
      v145 = v28;

      MEMORY[0x28223BE20](v29);
      sub_25214200C();
      if (v155 < v23 || v156 < 1)
      {
        goto LABEL_125;
      }

      v30 = v23 * v156;
      if ((v23 * v156) >> 64 != (v23 * v156) >> 63)
      {
        goto LABEL_126;
      }

      if ((v30 & 0x8000000000000000) != 0)
      {
        goto LABEL_127;
      }

      if (v30 >= *(__B + 16))
      {
        goto LABEL_128;
      }

      v31 = *(__B + 8 * v30 + 32);

      if (a5 < 0)
      {
        goto LABEL_129;
      }

      if (a5)
      {
        v32 = 0;
        while (1)
        {
          v33 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            break;
          }

          v34 = v33 + a6;
          if (__OFADD__(v33, a6))
          {
            goto LABEL_112;
          }

          if (v34 < v33)
          {
            goto LABEL_113;
          }

          if (v33 < 0)
          {
            goto LABEL_114;
          }

          v35 = *(a4 + 16);
          if (v35 < v33 || v35 < v34)
          {
            goto LABEL_115;
          }

          if (v35 == a6)
          {

            v36 = a4;
          }

          else
          {
            sub_252098E44(a4, a4 + 32, v33, (2 * v34) | 1);
            v36 = v38;
          }

          v37 = sub_2520F11FC(v27, v36, 1.0);

          if (v37)
          {

            goto LABEL_10;
          }

          if (a5 == ++v32)
          {
            goto LABEL_32;
          }
        }

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
        goto LABEL_117;
      }

LABEL_32:
      if (v145 < 0 || v147 < 1)
      {
        goto LABEL_130;
      }

      v39 = *(v27 + 16);
      if (!v39)
      {
        goto LABEL_131;
      }

      _s11HearingTest13InterpolatorsC8interp1d7xValues01yE06xPointSdSaySdG_AHSdtFZ_0(v139, v141, *(v27 + 32));
      v41 = v40;
      if (v31 == 1.0)
      {
        break;
      }

      if (v147 < 2)
      {
        goto LABEL_135;
      }

      if (v39 == 1)
      {
        goto LABEL_136;
      }

      v42 = *(v27 + 40);

      if (v41 < v42)
      {
        goto LABEL_44;
      }

LABEL_10:
      if (++v23 == v150)
      {
        goto LABEL_51;
      }
    }

    if (v147 < 2)
    {
      goto LABEL_132;
    }

    if (v39 == 1)
    {
      goto LABEL_133;
    }

    v42 = *(v27 + 40);

    if (v42 >= v41)
    {
      goto LABEL_10;
    }

LABEL_44:
    if (vabdd_f64(v42, v41) > a8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_25209939C(0, *(v143 + 16) + 1, 1, v143);
        v143 = isUniquelyReferenced_nonNull_native;
      }

      v43 = v143;
      v45 = *(v143 + 16);
      v44 = *(v143 + 24);
      if (v45 >= v44 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_25209939C((v44 > 1), v45 + 1, 1, v143);
        v43 = isUniquelyReferenced_nonNull_native;
      }

      *(v43 + 16) = v45 + 1;
      v143 = v43;
      *(v43 + 8 * v45 + 32) = v23;
    }

    goto LABEL_10;
  }

  v143 = MEMORY[0x277D84F90];
LABEL_51:

  MEMORY[0x28223BE20](v46);
  sub_25214200C();

  sub_2520F0704(v47, __B, v155, v156);
  v138 = v48;
  v137 = v49;
  v136 = v50;

  MEMORY[0x28223BE20](v51);
  sub_25214200C();
  sub_2520F0704(v143, __B, v155, v156);
  v135 = v52;
  v134 = v53;
  v133 = v54;

  MEMORY[0x28223BE20](v55);
  sub_25214200C();
  sub_2520F0704(v143, __B, v155, v156);
  v132 = v56;
  v131 = v57;
  v130 = v58;

  MEMORY[0x28223BE20](v59);
  sub_25214200C();
  sub_2520F0894(v143, __B, v155, v156);
  v61 = v60;
  v63 = v62;
  v65 = v64;

  v66 = *(v143 + 16);
  v140 = v63;
  if (v66)
  {
    __B = MEMORY[0x277D84F90];
    sub_25209B1F4(0, v66, 0);
    v67 = v143;
    v68 = __B;
    v69 = *(a4 + 16);
    v70 = 32;
    do
    {
      v71 = *(v67 + v70);
      v72 = v71 + v69;
      if (__OFADD__(v71, v69))
      {
        goto LABEL_116;
      }

      __B = v68;
      v74 = v68[2];
      v73 = v68[3];
      if (v74 >= v73 >> 1)
      {
        sub_25209B1F4((v73 > 1), v74 + 1, 1);
        v67 = v143;
        v68 = __B;
      }

      v68[2] = v74 + 1;
      *&v68[v74 + 4] = v72;
      v70 += 8;
      --v66;
    }

    while (v66);

    v63 = v140;
  }

  else
  {

    v68 = MEMORY[0x277D84F90];
  }

  if (v63 != v68[2])
  {
    goto LABEL_137;
  }

  v75 = v65 + 1;
  if (__OFADD__(v65, 1))
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v76 = v63 * v75;
  if ((v63 * v75) >> 64 != (v63 * v75) >> 63)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v76 < 0)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v129 = v65 + 1;
  if (v76)
  {
    v142 = sub_252141D3C();
    *(v142 + 16) = v76;
    if (!v63)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v142 = MEMORY[0x277D84F90];
    if (!v63)
    {
      goto LABEL_69;
    }
  }

  v77 = (v142 + 32);
  v78 = (v61 + 32);
  v79 = v68 + 4;
  v80 = 8 * v65;
  v81 = v140;
  do
  {
    memcpy(v77, v78, v80);
    v82 = *v79++;
    *&v77[v80] = v82;
    v78 += v80;
    v77 += v80 + 8;
    --v81;
  }

  while (v81);
LABEL_69:
  *(v142 + 16) = v76;

  if (*(v142 + 16) != v76)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  MEMORY[0x28223BE20](v83);
  sub_25214200C();
  sub_2520F0894(v143, __B, v155, v156);
  v148 = v84;
  v86 = v85;
  v88 = v87;

  MEMORY[0x28223BE20](v89);
  sub_25214200C();
  sub_2520F0894(v143, __B, v155, v156);
  v91 = v90;

  if (v86 != *(v91 + 16))
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  v92 = v88 + 1;
  if (__OFADD__(v88, 1))
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  v93 = v86 * v92;
  if ((v86 * v92) >> 64 != (v86 * v92) >> 63)
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  if (v93 < 0)
  {
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
  }

  v151 = v88 + 1;
  if (v93)
  {
    v94 = sub_252141D3C();
    *(v94 + 16) = v93;
    v144 = v86;
    if (!v86)
    {
      goto LABEL_80;
    }

LABEL_78:
    v95 = (v94 + 32);
    v96 = (v148 + 32);
    v97 = (v91 + 32);
    v98 = 8 * v88;
    v99 = v144;
    do
    {
      memcpy(v95, v96, v98);
      v100 = *v97++;
      *&v95[v98] = v100;
      v96 += v98;
      v95 += v98 + 8;
      --v99;
    }

    while (v99);
    goto LABEL_80;
  }

  v94 = MEMORY[0x277D84F90];
  v144 = v86;
  if (v86)
  {
    goto LABEL_78;
  }

LABEL_80:
  *(v94 + 16) = v93;

  if (*(v94 + 16) != v93)
  {
    goto LABEL_146;
  }

  v101 = v144;
  v102 = v151;
  if (v144)
  {
    v103 = 0;
    v149 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_channel;
    while (1)
    {
      v104 = v103 * v102;
      if ((v103 * v102) >> 64 != (v103 * v102) >> 63)
      {
        break;
      }

      v105 = v104 + v102;
      if (__OFADD__(v104, v102))
      {
        goto LABEL_118;
      }

      if (v105 < v104)
      {
        goto LABEL_119;
      }

      if (v104 < 0)
      {
        goto LABEL_120;
      }

      v106 = *(v94 + 16);
      if (v106 < v104 || v106 < v105)
      {
        goto LABEL_121;
      }

      if (v106 == v102)
      {
        swift_bridgeObjectRetain_n();
        v107 = v94;
      }

      else if (v105 == v104)
      {

        v107 = MEMORY[0x277D84F90];
      }

      else
      {
        if (v102 < 1)
        {
          v107 = MEMORY[0x277D84F90];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
          v107 = swift_allocObject();
          v127 = _swift_stdlib_malloc_size(v107);
          v128 = v127 - 32;
          if (v127 < 32)
          {
            v128 = v127 - 25;
          }

          *(v107 + 16) = v102;
          *(v107 + 24) = 2 * (v128 >> 3);
        }

        memcpy((v107 + 32), (v94 + 32 + 8 * v104), 8 * v102);
      }

      if (*(v107 + 16) < 3uLL)
      {
      }

      else
      {
        v153 = *(v107 + 32);
        v108 = sub_252141D3C();
        *(v108 + 16) = 1;
        __B = 0x4018000000000000;
        vDSP_vsdivD(&v153, 1, &__B, (v108 + 32), 1, 1uLL);
        *(v108 + 16) = 1;
        __B = v108;
        MEMORY[0x28223BE20](v109);
        v110 = sub_2520AABEC(1, sub_2520A3344);

        __B = v110;
        MEMORY[0x28223BE20](v110[2]);
        v112 = sub_2520AABEC(v111, sub_2520A3B48);

        if (!*(v112 + 16))
        {
          goto LABEL_122;
        }

        v113 = *(v112 + 32);

        v114 = *(v107 + 16);
        if (v114 < 2)
        {
          goto LABEL_123;
        }

        if (v114 == 2)
        {
          goto LABEL_124;
        }

        v115 = *(v107 + 40);
        v116 = *(v107 + 48);

        v117 = *(v152 + v149);
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v118 = sub_25214198C();
        __swift_project_value_buffer(v118, qword_27F4CDE68);
        v119 = sub_25214196C();
        v120 = sub_252141FBC();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          __B = v122;
          *v121 = 136447234;
          v123 = sub_2521425DC();
          v125 = sub_2520A5448(v123, v124, &__B);

          *(v121 + 4) = v125;
          *(v121 + 12) = 2048;
          *(v121 + 14) = v113;
          *(v121 + 22) = 2048;
          *(v121 + 24) = v115;
          *(v121 + 32) = 1024;
          *(v121 + 34) = v116 != 0.0;
          *(v121 + 38) = 2048;
          *(v121 + 40) = v117;
          _os_log_impl(&dword_25207E000, v119, v120, "[%{public}s] Deleted tone freq %f, level %f, response %{BOOL}d, ch %ld", v121, 0x30u);
          __swift_destroy_boxed_opaque_existential_0(v122);
          v126 = v122;
          v101 = v144;
          MEMORY[0x253099FD0](v126, -1, -1);
          MEMORY[0x253099FD0](v121, -1, -1);
        }

        v102 = v151;
      }

      if (v101 == ++v103)
      {
        goto LABEL_110;
      }
    }

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
    goto LABEL_134;
  }

LABEL_110:

  *v146 = v138;
  v146[1] = v137;
  v146[2] = v136;
  v146[3] = v135;
  v146[4] = v134;
  v146[5] = v133;
  v146[6] = v132;
  v146[7] = v131;
  v146[8] = v130;
  v146[9] = v142;
  v146[10] = v140;
  v146[11] = v129;
  return result;
}

uint64_t sub_252096F0C(void *a1, uint64_t a2, uint64_t a3)
{
  __C[1] = *MEMORY[0x277D85DE8];
  v9 = sub_2520982A0(a1, a2, a3);
  if (v5)
  {
    return v3;
  }

  v12 = v9;
  v13 = v10;
  v14 = v11;
  v15 = sub_2520EEE44(2, v9, v10, v11);
  v16 = *(v15 + 16);
  __I = 0;
  __C[0] = NAN;
  vDSP_maxviD((v15 + 32), 1, __C, &__I, v16);
  v17 = __I;

  if (v17 < 0)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v17 >= v13)
  {

    sub_2520A2090();
    v3 = swift_allocError();
    *v23 = 0xD000000000000022;
    v23[1] = 0x8000000252148E80;
    swift_willThrow();
    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_252143AB0;
  if (v14 < 1)
  {
    goto LABEL_39;
  }

  v19 = v17 * v14;
  if ((v17 * v14) >> 64 != (v17 * v14) >> 63)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v20 = *(v12 + 2);
  if (v19 >= v20)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v3 = v18;
  *(v18 + 32) = *&v12[8 * v19 + 32];
  if (v14 == 1)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  v21 = v19 + 1;
  if (v21 >= v20)
  {
    goto LABEL_44;
  }

  v22 = *&v12[8 * v21 + 32];

  *(v3 + 40) = v22;
  *&__C[0] = v3;
  v24 = sub_2520F1D74(4, a1, a2, a3);
  v26 = v25;
  v28 = v27;
  v29 = sub_2520F1D5C(0, v24, v25, v27, __C);
  v32 = v31;
  v34 = v33;
  v35 = v29;
  v36 = sub_2520F1D5C(0, v24, v26, v28, __C);
  v38 = v37;
  v40 = v39;
  v41 = v36;

  if (v32 < 1 || v38 < 1)
  {

    sub_2520A2090();
    swift_allocError();
    *v44 = 0xD000000000000032;
    v44[1] = 0x8000000252148EB0;
    swift_willThrow();

    return v3;
  }

  if (v34 < 2)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (*(v35 + 2) < 2uLL)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v22 = *(v35 + 5);

  if (v40 < 3)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (*(v41 + 2) < 3uLL)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v42 = *(v41 + 6);

  if (v22 + v42 < 3.0)
  {
    goto LABEL_29;
  }

  v43 = vabdd_f64(v22, v42);
  if (v42 >= v22)
  {
    if (v22 >= v42)
    {
      goto LABEL_29;
    }

    if (*(v3 + 16) >= 2uLL)
    {
      v22 = v43 * 1.5 + *(v3 + 40);
LABEL_27:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_52;
      }

      while (1)
      {
        *(v3 + 40) = v22;
        *&__C[0] = v3;
LABEL_29:
        if (*(v3 + 16) < 2uLL)
        {
          break;
        }

        v45 = *(v3 + 40);
        if (*(v4 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel) < v45)
        {
          v45 = *(v4 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel);
        }

        if (*(v4 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel) > v45)
        {
          v22 = *(v4 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel);
        }

        else
        {
          v22 = v45;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_50;
        }

LABEL_36:
        if (*(v3 + 16) >= 2uLL)
        {
          *(v3 + 40) = v22;
          return v3;
        }

        __break(1u);
LABEL_52:
        v3 = sub_2520A598C(v3);
      }

LABEL_49:
      __break(1u);
LABEL_50:
      v3 = sub_2520A598C(v3);
      goto LABEL_36;
    }
  }

  else
  {
    if (*(v3 + 16) >= 2uLL)
    {
      v22 = *(v3 + 40) + v43 * -1.5;
      goto LABEL_27;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252097390@<X0>(uint64_t *a1@<X8>)
{
  v101 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  sub_25214200C();
  v4 = sub_2520EEE44(1, __C, v96, v97);

  if (!v2)
  {
    v6 = *(v4 + 16);
    __C = 0x7FF8000000000000;
    vDSP_minvD((v4 + 32), 1, &__C, v6);
    v7 = *&__C;

    MEMORY[0x28223BE20](v8);
    sub_25214200C();
    v9 = sub_2520EEE44(1, __C, v96, v97);

    v10 = *(v9 + 16);
    __C = 0x7FF8000000000000;
    vDSP_maxvD((v9 + 32), 1, &__C, v10);
    v11 = *&__C;

    v12 = *(v1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_allFrequencies);
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = *(v12 + 32);
      v15 = v13 - 1;
      if (v15)
      {
        v17 = (v12 + 40);
        v18 = v15;
        v16 = *(v12 + 32);
        do
        {
          v19 = *v17++;
          v20 = v19;
          if (v19 < v16)
          {
            v16 = v20;
          }

          --v18;
        }

        while (v18);
        v21 = (v12 + 40);
        do
        {
          v22 = *v21++;
          v23 = v22;
          if (v14 < v22)
          {
            v14 = v23;
          }

          --v15;
        }

        while (v15);
      }

      else
      {
        v16 = *(v12 + 32);
      }
    }

    else
    {
      v16 = 250.0;
      v14 = 8000.0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
    inited = swift_initStackObject();
    v93 = xmmword_252143AC0;
    *(inited + 16) = xmmword_252143AC0;
    *(inited + 32) = v16;
    v25 = sub_25209D6D8(inited);
    swift_setDeallocating();
    if (*(v25 + 16))
    {
      v26 = *(v25 + 32);

      v27 = swift_initStackObject();
      *(v27 + 16) = v93;
      *(v27 + 32) = v14;
      v28 = sub_25209D6D8(v27);
      swift_setDeallocating();
      if (*(v28 + 16))
      {
        v83 = a1;
        v29 = v7 + -5.0;
        v30 = v11 + 5.0;
        v31 = *(v28 + 32);

        if (v29 <= v30 && v26 <= v31)
        {
          sub_2520F1250(85, 100, &__C, v26, v31, v29, v30);
          v88 = __C;
          v87 = v96;
          v86 = v97;
          v89 = v98;
          v85 = v99;
          v84 = v100;
          sub_2520F1620(__C, v96, v97, v98, v99, v100);
          sub_2520F1A00(v32);
          v91 = v33;
          *&v93 = v34;
          v92 = v35;

          MEMORY[0x28223BE20](v36);
          v37 = sub_25214200C();
          v38 = __C;
          v39 = v96;
          v90 = v97;
          MEMORY[0x28223BE20](v37);
          v40 = sub_25214200C();
          v41 = __C;
          MEMORY[0x28223BE20](v40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBA8, &qword_252143D60);
          sub_25214200C();
          sub_25209EA3C(v91, v93, v92, v38, v39, v90, v41, __C, &__C);
          v92 = __C;
          v42 = v96;
          v90 = v97;
          *&v93 = v98;
          v82 = v99;
          v81 = v100;

          if (v42 < 1 || v90 <= 0)
          {

            v64 = 0x8000000252148C70;
            sub_2520A2090();
            swift_allocError();
            v66 = 0xD00000000000001DLL;
          }

          else
          {
            v43 = v82;
            v44 = v81;
            if (v82 >= 1 && v81 >= 1)
            {
              __C = v93;
              v96 = v82;
              v97 = v81;
              MEMORY[0x28223BE20](*(v93 + 16));
              v46 = sub_2520AABEC(v45, sub_2520A2144);
              if ((v82 * v81) >> 64 == (v82 * v81) >> 63)
              {
                v47 = v46[2];
                if (v47 == v82 * v81)
                {
                  v91 = &v81;
                  __C = v46;
                  v96 = v82;
                  v97 = v81;
                  MEMORY[0x28223BE20](v46);
                  v48 = sub_2520AABEC(v47, sub_2520A2178);

                  if (v48[2] == v47)
                  {
                    __C = v48;
                    v96 = v43;
                    v97 = v44;
                    MEMORY[0x28223BE20](v49);
                    v50 = sub_2520AABEC(v47, sub_2520A2198);
                    v91 = 0;

                    if (v50[2] == v47)
                    {
                      __C = v50;
                      v96 = v43;
                      v97 = v44;
                      MEMORY[0x28223BE20](v51);
                      v52 = v91;
                      v53 = sub_2520AABEC(v47, sub_2520A21CC);

                      __C = v53;
                      MEMORY[0x28223BE20](v53[2]);
                      v55 = sub_2520AABEC(v54, sub_2520A222C);

                      __C = v55;
                      v94 = v92;
                      MEMORY[0x28223BE20](v55[2]);
                      v57 = sub_2520AABEC(v56, sub_2520A338C);

                      v58 = sub_25209E75C(v57);

                      v59 = v87;
                      v60 = v86;
                      v61 = sub_25209DBDC(v87, v86, v58, *(v58 + 16), 1);
                      if (!v52)
                      {
                        *&v93 = v61;
                        v67 = v62;
                        v91 = v62;
                        v68 = v63;

                        v69 = v60;
                        v70 = v88;
                        v71 = v89;
                        v92 = sub_252098060(v88, v59, v69, v89, v85, v84, v93, v67, v72, v68);
                        v90 = v73;
                        MEMORY[0x28223BE20](v92);
                        sub_25214200C();
                        v74 = sub_25209F7E8(v70, v87, v86, v71, v85, v84, v93, v91, 12.5, v68, __C, v96, v97);
                        v76 = v75;
                        v78 = v77;

                        v79 = v83;
                        v80 = v90;
                        *v83 = v92;
                        v79[1] = v80;
                        v79[2] = 2;
                        v79[3] = v74;
                        v79[4] = v76;
                        v79[5] = v78;
                        return result;
                      }

                      return swift_willThrow();
                    }

LABEL_40:
                    __break(1u);
                  }

LABEL_39:
                  __break(1u);
                  goto LABEL_40;
                }

LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

            v64 = 0x8000000252148C90;
            sub_2520A2090();
            swift_allocError();
            v66 = 0xD00000000000001ELL;
          }

          *v65 = v66;
          v65[1] = v64;
          swift_willThrow();
          return swift_willThrow();
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_36;
  }

  return result;
}

const double *sub_252098060(uint64_t a1, vDSP_Length a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10)
{
  v33 = *MEMORY[0x277D85DE8];
  v32 = MEMORY[0x277D84F90];
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = a2;
  if (a2)
  {
    if (a3 < 1)
    {
      __break(1u);
    }

    v15 = 0;
    v16 = a1 + 32;
    v17 = *(a1 + 16);
    while (1)
    {
      v20 = v15 * a3;
      if ((v15 * a3) >> 64 != (v15 * a3) >> 63)
      {
        break;
      }

      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_14;
      }

      if (v20 >= v17)
      {
        goto LABEL_15;
      }

      v13 = *(v16 + 8 * v20);
      v21 = sub_2520F0530(v15, a7, a8, a10);
      v22 = sub_2520F0530(v15, a4, a5, a6);
      _s11HearingTest13InterpolatorsC8interp1d7xValues01yE06xPointSdSaySdG_AHSdtFZ_0(v21, v22, 0.5);
      v12 = v18;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252143AB0;
      *(inited + 32) = v13;
      *(inited + 40) = v12;
      ++v15;
      v10 = &v32;
      sub_2520806CC(inited);
      if (v11 == v15)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  v12 = *(v24 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel);
  v13 = *(v24 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel);
  if (v12 > v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_18:
    v10 = sub_2520A598C(v10);
  }

  __C = v13;
  __B[0] = v12;
  vDSP_vclipD(v10 + 5, 2, __B, &__C, v10 + 5, 2, v11);
  return v10;
}

char *sub_2520982A0(void *a1, uint64_t a2, uint64_t a3)
{
  v85[2] = *MEMORY[0x277D85DE8];
  result = sub_2520F1D74(4, a1, a2, a3);
  if (v3)
  {
    return result;
  }

  v7 = v5;
  if (v5 < 0)
  {
    goto LABEL_83;
  }

  v8 = result;
  if (!v5)
  {

    v70 = 0;
    v14 = MEMORY[0x277D84F90];
    goto LABEL_47;
  }

  v9 = v6;
  v10 = 0;
  v11 = 0;
  v12 = *(v71 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel);
  v13 = *(v71 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel);
  v69 = result + 32;
  v14 = MEMORY[0x277D84F90];
  v74 = result;
  v72 = v6;
  v73 = v5;
  while (2)
  {
    v15 = v10 * v9;
    if ((v10 * v9) >> 64 != (v10 * v9) >> 63)
    {
      goto LABEL_68;
    }

    v16 = v15 + v9;
    if (__OFADD__(v15, v9))
    {
      goto LABEL_69;
    }

    if (v16 < v15)
    {
      goto LABEL_70;
    }

    if (v15 < 0)
    {
      goto LABEL_71;
    }

    v17 = *(v8 + 16);
    if (v17 < v15 || v17 < v16)
    {
      goto LABEL_72;
    }

    v76 = v10;
    if (v17 == v9)
    {

      v18 = v8;
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
      if (v16 != v15)
      {
        if (v9 < 1)
        {
          v39 = 8 * v9;
          v18 = MEMORY[0x277D84F90];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
          v18 = swift_allocObject();
          v38 = _swift_stdlib_malloc_size(v18);
          v39 = 8 * v9;
          v40 = v38 - 32;
          if (v38 < 32)
          {
            v40 = v38 - 25;
          }

          v18[2] = v9;
          v18[3] = 2 * (v40 >> 3);
        }

        memcpy(v18 + 4, &v69[8 * v15], v39);
      }
    }

    v85[0] = v12;
    v85[1] = v13;
    v84[0] = 0.0;
    v84[1] = (v13 - v12) / 2.5;
    v83[0] = 0x7FF8000000000000;
    vDSP_maxvD(v84, 1, v83, 2uLL);
    if ((v83[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_73;
    }

    if (*v83 <= -9.22337204e18)
    {
      goto LABEL_74;
    }

    if (*v83 >= 9.22337204e18)
    {
      goto LABEL_75;
    }

    v19 = *v83 + 1;
    if (__OFADD__(*v83, 1))
    {
      goto LABEL_76;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_77;
    }

    if (*v83 == -1)
    {
      v20 = MEMORY[0x277D84F90];
    }

    else
    {
      v20 = sub_252141D3C();
      *(v20 + 16) = v19;
    }

    vDSP_vgenpD(v85, 1, v84, 1, (v20 + 32), 1, v19, 2uLL);
    *(v20 + 16) = v19;
    v21 = v19;
    if (!v19)
    {

      goto LABEL_6;
    }

    if (!v18[2])
    {
      goto LABEL_78;
    }

    v75 = v11 + v19;
    v22 = v11 - 0x7FFFFFFFFFFFFFFFLL;
    v23 = 32;
    v24 = v14;
    v77 = v20;
    do
    {
      v80 = v21;
      v25 = *(v20 + v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252143AB0;
      v27 = v18;
      *(inited + 32) = v18[4];
      v28 = (inited + 32);
      *(inited + 40) = v25;
      v29 = *(v24 + 2);
      v30 = v29 + 2;
      if (__OFADD__(v29, 2))
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
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
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v32 = *(v24 + 3) >> 1, v32 < v30))
      {
        if (v29 <= v30)
        {
          v33 = v29 + 2;
        }

        else
        {
          v33 = v29;
        }

        v24 = sub_252099194(isUniquelyReferenced_nonNull_native, v33, 1, v24);
        v32 = *(v24 + 3) >> 1;
      }

      v18 = v27;
      v20 = v77;
      v34 = *(v24 + 2);
      if (v32 - v34 < 2)
      {
        goto LABEL_65;
      }

      *&v24[8 * v34 + 32] = *v28;

      v35 = *(v24 + 2);
      v36 = __OFADD__(v35, 2);
      v37 = v35 + 2;
      if (v36)
      {
        goto LABEL_66;
      }

      *(v24 + 2) = v37;
      if (!v22)
      {
        goto LABEL_67;
      }

      ++v22;
      v23 += 8;
      v21 = v80 - 1;
    }

    while (v80 != 1);
    v14 = v24;

    v8 = v74;

    v11 = v75;
    v9 = v72;
    v7 = v73;
LABEL_6:
    v10 = v76 + 1;
    if (v76 + 1 != v7)
    {
      continue;
    }

    break;
  }

  v70 = v11;
LABEL_47:
  MEMORY[0x28223BE20](v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  v42 = sub_25214200C();
  v43 = v83[0];
  v78 = v83[2];
  v81 = v83[1];
  MEMORY[0x28223BE20](v42);
  v44 = sub_25214200C();
  v45 = v83[0];
  MEMORY[0x28223BE20](v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBA8, &qword_252143D60);
  sub_25214200C();
  sub_25209EA3C(v14, v70, 2, v43, v81, v78, v45, v83[0], v83);
  v46 = v83[0];
  v47 = v83[3];

  v83[0] = MEMORY[0x277D84F90];
  if ((v70 & 0x8000000000000000) != 0)
  {
    goto LABEL_84;
  }

  if (v70)
  {
    if (v70 <= *(v46 + 16))
    {
      if (v70 <= *(v47 + 16))
      {
        v48 = v47;
        v49 = 0;
        v50 = 0;
        v79 = v48 + 32;
        v82 = v46 + 32;
        v51 = (v14 + 40);
        v52 = 1.0;
        while (1)
        {
          v53 = *(v82 + 8 * v50);
          v54 = *(v79 + 8 * v50);
          v55 = v52 / sqrt(v54 * 3.14159265 * 0.125 + v52);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
          v56 = swift_initStackObject();
          *(v56 + 16) = xmmword_252143AC0;
          *(v56 + 32) = v53 * v55;
          v57 = sub_25209E75C(v56);
          swift_setDeallocating();
          if (!*(v57 + 16))
          {
            goto LABEL_79;
          }

          v58 = *(v57 + 32);

          if (v58 <= 0.99999)
          {
            v59 = v58;
          }

          else
          {
            v59 = 0.99999;
          }

          if (v58 >= 0.00001)
          {
            v60 = v59;
          }

          else
          {
            v60 = 0.00001;
          }

          v61 = log2(v60);
          v62 = log2(1.0 - v60);
          v63 = v54 + 1.08879305;
          v64 = exp(-(v53 * v53) / (v63 + v63));
          v65 = sqrt(v63);
          v66 = swift_initStackObject();
          *(v66 + 16) = xmmword_252143AD0;
          if (v70 + 1 == v50)
          {
            goto LABEL_80;
          }

          v67 = *(v14 + 16);
          if (v49 >= v67)
          {
            goto LABEL_81;
          }

          *(v66 + 32) = *(v51 - 1);
          if (v49 + 1 >= v67)
          {
            goto LABEL_82;
          }

          v68 = *v51;
          v51 += 2;
          *(v66 + 40) = v68;
          *(v66 + 48) = -(v60 * v61) - (1.0 - v60) * v62 + v64 * -1.04345246 / v65;
          ++v50;
          sub_2520806CC(v66);
          v49 += 2;
          v52 = 1.0;
          if (v70 == v50)
          {
            goto LABEL_63;
          }
        }
      }

LABEL_86:
      __break(1u);
    }

LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

LABEL_63:

  return v83[0];
}

uint64_t sub_252098B74(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  MEMORY[0x28223BE20](result);
  result = sub_2520AABEC(v2, sub_2520A33A4);
  if (v2 != *(result + 16))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_252098C1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != a5 || a3 != a6)
  {
    __break(1u);
    goto LABEL_7;
  }

  MEMORY[0x28223BE20](*(result + 16));
  result = sub_2520AABEC(v8, v9);
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(result + 16) != a2 * a3)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_252098CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_25:
    __break(1u);
  }

  else if (a2)
  {
    v6 = 0;
    v7 = a1 + 32;
    if (a3 < 0)
    {
      v8 = -1;
    }

    else
    {
      v8 = a3;
    }

    v9 = v8 + 1;
    v10 = a3 & ~(a3 >> 63);
    v11 = MEMORY[0x277D84F90];
    while (v9 != v6)
    {
      if (v10 == v6)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v12 = v6 * a3;
      if ((v6 * a3) >> 64 != (v6 * a3) >> 63)
      {
        goto LABEL_21;
      }

      v13 = __OFADD__(v12, v6);
      v14 = v12 + v6;
      if (v13)
      {
        goto LABEL_22;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      if (v14 >= *(a1 + 16))
      {
        goto LABEL_24;
      }

      v15 = *(v7 + 8 * v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_252099194(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_252099194((v16 > 1), v17 + 1, 1, v11);
      }

      ++v6;
      *(v11 + 2) = v17 + 1;
      *&v11[8 * v17 + 32] = v15;
      if (a2 == v6)
      {
        return;
      }
    }
  }
}

void sub_252098E44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_252098F14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB28, &qword_252143CD8);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_252098FD4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB88, &qword_252143D38);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 72);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_2520990C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB20, &qword_252143CD0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_252099194(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_252099298(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB50, &qword_252143D00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_25209939C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB20, &qword_252143CD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2520994A0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBC0, &qword_252143D78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2520995E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB28, &qword_252143CD8);
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

char *sub_2520996DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB88, &qword_252143D38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_252099804(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB30, &qword_252143CE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_25209992C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAF0, &qword_252143C98);
  v10 = *(type metadata accessor for ContinuationItem(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ContinuationItem(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_252099B04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBB0, &qword_252143D68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_252099C2C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_252099D60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAD8, &qword_252143C80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_252099E94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *sub_252099F10(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB30, &qword_252143CE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

uint64_t sub_252099F94(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2520DE2A0(v2);
  }

  v3 = *(v2 + 16);
  v19[0] = v2 + 32;
  v19[1] = v3;
  result = sub_25214243C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = (v2 + 32);
      do
      {
        v12 = *(v2 + 32 + 8 * v10);
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          if (v12 >= *v14)
          {
            break;
          }

          *v14 = v12;
          v14[1] = v15;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v3);
    }
  }

  else
  {
    v6 = result;
    v7 = (v3 >> 1);
    if (v3 >= 2)
    {
      v8 = sub_252141D3C();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v17[0] = (v8 + 32);
    v17[1] = v7;
    sub_25209A24C(v17, v5, v18, v19, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_25209A0C8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2520DE2B4(v2);
  }

  v3 = *(v2 + 2);
  v26[0] = (v2 + 32);
  v26[1] = v3;
  result = sub_25214243C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = v2 + 72;
      v10 = -1;
      for (i = 1; i != v3; ++i)
      {
        v12 = v10;
        v13 = v9;
        do
        {
          v14 = v13 + 16;
          v15 = *(v13 + 2);
          if (v15 >= *(v13 - 5))
          {
            break;
          }

          v16 = *(v13 + 3);
          v17 = v13[32];
          v18 = *(v13 + 5);
          v19 = v13[48];
          v20 = *(v13 + 7);
          result = v13[64];
          v21 = *(v13 - 24);
          *v14 = *(v13 - 40);
          *(v13 + 2) = v21;
          *(v13 + 3) = *(v13 - 8);
          v22 = *(v13 + 1);
          *(v13 - 5) = v15;
          *(v13 - 4) = v16;
          *(v13 - 24) = v17;
          *(v13 - 2) = v18;
          *(v13 - 8) = v19;
          *v13 = v20;
          v13[8] = result;
          v13 -= 56;
          *(v14 + 6) = v22;
        }

        while (!__CFADD__(v12++, 1));
        v9 += 56;
        --v10;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = (v3 >> 1);
    if (v3 >= 2)
    {
      v8 = sub_252141D3C();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v24[0] = (v8 + 32);
    v24[1] = v7;
    sub_25209A7A8(v24, v5, v25, v26, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_25209A24C(double **a1, __n128 a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = a4[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v9 = sub_2520DE28C(v9);
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a4)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_25209ADB4((*a4 + 8 * *v79), (*a4 + 8 * *v81), (*a4 + 8 * v82), v6);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v82 < v80)
        {
          goto LABEL_114;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_115;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_116;
        }

        v78 = *v77 - 1;
        memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v84 = a5;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *(*a4 + 8 * v8);
      v12 = *(*a4 + 8 * v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v7 != v13)
      {
        v15 = *(*a4 + 8 * v13);
        v16 = v15 >= v14;
        ++v13;
        v14 = v15;
        if ((((v11 < v12) ^ v16) & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v7;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_119;
      }

      if (v10 < v8)
      {
        v17 = 8 * v8 - 8;
        v18 = 8 * v10;
        v19 = v8;
        v20 = v10;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a4;
            if (!*a4)
            {
              goto LABEL_125;
            }

            v21 = *(v22 + v18);
            *(v22 + v18) = *(v22 + v17);
            *(v22 + v17) = v21;
          }

          ++v20;
          v17 -= 8;
          v18 += 8;
        }

        while (v20 < v19);
        v7 = a4[1];
      }
    }

LABEL_20:
    if (v8 < v7)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_118;
      }

      if (v8 - v10 < a5)
      {
        if (__OFADD__(v10, a5))
        {
          goto LABEL_120;
        }

        if (v10 + a5 < v7)
        {
          v7 = v10 + a5;
        }

        if (v7 < v10)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v8 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_252099298(0, *(v9 + 2) + 1, 1, v9);
    }

    v6 = *(v9 + 2);
    v31 = *(v9 + 3);
    v32 = v6 + 1;
    if (v6 >= v31 >> 1)
    {
      v9 = sub_252099298((v31 > 1), v6 + 1, 1, v9);
    }

    *(v9 + 2) = v32;
    v33 = v9 + 32;
    v34 = &v9[16 * v6 + 32];
    *v34 = v10;
    *(v34 + 1) = v8;
    v86 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v6)
    {
      while (1)
      {
        v6 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v35 = *(v9 + 4);
          v36 = *(v9 + 5);
          v45 = __OFSUB__(v36, v35);
          v37 = v36 - v35;
          v38 = v45;
LABEL_57:
          if (v38)
          {
            goto LABEL_104;
          }

          v51 = &v9[16 * v32];
          v53 = *v51;
          v52 = *(v51 + 1);
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_106;
          }

          v57 = &v33[16 * v6];
          v59 = *v57;
          v58 = *(v57 + 1);
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v55, v60))
          {
            goto LABEL_111;
          }

          if (v55 + v60 >= v37)
          {
            if (v37 < v60)
            {
              v6 = v32 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v32 < 2)
        {
          goto LABEL_112;
        }

        v61 = &v9[16 * v32];
        v63 = *v61;
        v62 = *(v61 + 1);
        v45 = __OFSUB__(v62, v63);
        v55 = v62 - v63;
        v56 = v45;
LABEL_72:
        if (v56)
        {
          goto LABEL_108;
        }

        v64 = &v33[16 * v6];
        v66 = *v64;
        v65 = *(v64 + 1);
        v45 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v45)
        {
          goto LABEL_110;
        }

        if (v67 < v55)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v6 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_121;
        }

        if (!*a4)
        {
          goto LABEL_124;
        }

        v72 = &v33[16 * v6 - 16];
        v73 = *v72;
        v74 = &v33[16 * v6];
        v75 = *(v74 + 1);
        sub_25209ADB4((*a4 + 8 * *v72), (*a4 + 8 * *v74), (*a4 + 8 * v75), v86);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v75 < v73)
        {
          goto LABEL_99;
        }

        if (v6 > *(v9 + 2))
        {
          goto LABEL_100;
        }

        *v72 = v73;
        *(v72 + 1) = v75;
        v76 = *(v9 + 2);
        if (v6 >= v76)
        {
          goto LABEL_101;
        }

        v32 = v76 - 1;
        memmove(&v33[16 * v6], v74 + 16, 16 * (v76 - 1 - v6));
        *(v9 + 2) = v76 - 1;
        if (v76 <= 2)
        {
          goto LABEL_3;
        }
      }

      v39 = &v33[16 * v32];
      v40 = *(v39 - 8);
      v41 = *(v39 - 7);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_102;
      }

      v44 = *(v39 - 6);
      v43 = *(v39 - 5);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_103;
      }

      v46 = &v9[16 * v32];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_105;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_107;
      }

      if (v50 >= v42)
      {
        v68 = &v33[16 * v6];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_113;
        }

        if (v37 < v71)
        {
          v6 = v32 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a4[1];
    a5 = v84;
    if (v8 >= v7)
    {
      goto LABEL_88;
    }
  }

  v23 = *a4;
  v24 = *a4 + 8 * v8 - 8;
  v25 = v10 - v8;
LABEL_30:
  v26 = *(v23 + 8 * v8);
  v27 = v25;
  v28 = v24;
  while (1)
  {
    v29 = *v28;
    if (v26 >= *v28)
    {
LABEL_29:
      ++v8;
      v24 += 8;
      --v25;
      if (v8 != v7)
      {
        goto LABEL_30;
      }

      v8 = v7;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    *v28 = v26;
    v28[1] = v29;
    --v28;
    if (__CFADD__(v27++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

void sub_25209A7A8(double **a1, __n128 a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v7 = a4[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v108 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v9 = sub_2520DE28C(v9);
    }

    v99 = v9 + 16;
    v100 = *(v9 + 2);
    if (v100 >= 2)
    {
      while (*a4)
      {
        v101 = &v9[16 * v100];
        v102 = *v101;
        v103 = &v99[2 * v100];
        v104 = v103[1];
        sub_25209AFA8((*a4 + 56 * *v101), (*a4 + 56 * *v103), *a4 + 56 * v104, v108);
        if (v6)
        {
          goto LABEL_97;
        }

        if (v104 < v102)
        {
          goto LABEL_114;
        }

        if (v100 - 2 >= *v99)
        {
          goto LABEL_115;
        }

        *v101 = v102;
        *(v101 + 1) = v104;
        v105 = *v99 - v100;
        if (*v99 < v100)
        {
          goto LABEL_116;
        }

        v100 = *v99 - 1;
        memmove(v103, v103 + 2, 16 * v105);
        *v99 = v100;
        if (v100 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v106 = a5;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *(*a4 + 56 * v8);
      v12 = 56 * v10;
      v13 = (*a4 + 56 * v10);
      v15 = *v13;
      v14 = v13 + 7;
      v16 = v15;
      v17 = v10 + 2;
      while (v7 != v17)
      {
        v18 = *v14;
        v19 = v14[7];
        v14 += 7;
        ++v17;
        if (v11 < v16 == v19 >= v18)
        {
          v8 = v17 - 1;
          if (v11 >= v16)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v7;
      if (v11 >= v16)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_119;
      }

      if (v10 < v8)
      {
        v20 = 56 * v8 - 56;
        v21 = v8;
        v22 = v10;
        do
        {
          if (v22 != --v21)
          {
            v34 = *a4;
            if (!*a4)
            {
              goto LABEL_125;
            }

            v23 = (v34 + v12);
            v24 = *(v34 + v12 + 16);
            v25 = (v34 + v20);
            v26 = *(v23 + 3);
            v27 = *(v23 + 32);
            v28 = *(v23 + 5);
            v29 = *(v23 + 48);
            v30 = *v23;
            v32 = v25[1];
            v31 = v25[2];
            v33 = *v25;
            *(v23 + 6) = *(v25 + 6);
            v23[1] = v32;
            v23[2] = v31;
            *v23 = v33;
            *v25 = v30;
            *(v25 + 16) = v24;
            *(v25 + 3) = v26;
            *(v25 + 32) = v27;
            *(v25 + 5) = v28;
            *(v25 + 48) = v29;
          }

          ++v22;
          v20 -= 56;
          v12 += 56;
        }

        while (v22 < v21);
        v7 = a4[1];
      }
    }

LABEL_20:
    if (v8 < v7)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_118;
      }

      if (v8 - v10 < a5)
      {
        if (__OFADD__(v10, a5))
        {
          goto LABEL_120;
        }

        if (v10 + a5 < v7)
        {
          v7 = v10 + a5;
        }

        if (v7 < v10)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v8 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_252099298(0, *(v9 + 2) + 1, 1, v9);
    }

    v52 = *(v9 + 2);
    v51 = *(v9 + 3);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      v9 = sub_252099298((v51 > 1), v52 + 1, 1, v9);
    }

    *(v9 + 2) = v53;
    v54 = v9 + 32;
    v55 = &v9[16 * v52 + 32];
    *v55 = v10;
    *(v55 + 1) = v8;
    v108 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v52)
    {
      while (1)
      {
        v56 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v57 = *(v9 + 4);
          v58 = *(v9 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_57:
          if (v60)
          {
            goto LABEL_104;
          }

          v73 = &v9[16 * v53];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_106;
          }

          v79 = &v54[16 * v56];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_111;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v53 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v53 < 2)
        {
          goto LABEL_112;
        }

        v83 = &v9[16 * v53];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_72:
        if (v78)
        {
          goto LABEL_108;
        }

        v86 = &v54[16 * v56];
        v88 = *v86;
        v87 = *(v86 + 1);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_110;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v56 - 1 >= v53)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_121;
        }

        if (!*a4)
        {
          goto LABEL_124;
        }

        v94 = &v54[16 * v56 - 16];
        v95 = *v94;
        v96 = &v54[16 * v56];
        v97 = *(v96 + 1);
        sub_25209AFA8((*a4 + 56 * *v94), (*a4 + 56 * *v96), *a4 + 56 * v97, v108);
        if (v6)
        {
          goto LABEL_97;
        }

        if (v97 < v95)
        {
          goto LABEL_99;
        }

        if (v56 > *(v9 + 2))
        {
          goto LABEL_100;
        }

        *v94 = v95;
        *(v94 + 1) = v97;
        v98 = *(v9 + 2);
        if (v56 >= v98)
        {
          goto LABEL_101;
        }

        v53 = v98 - 1;
        memmove(&v54[16 * v56], v96 + 16, 16 * (v98 - 1 - v56));
        *(v9 + 2) = v98 - 1;
        if (v98 <= 2)
        {
          goto LABEL_3;
        }
      }

      v61 = &v54[16 * v53];
      v62 = *(v61 - 8);
      v63 = *(v61 - 7);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_102;
      }

      v66 = *(v61 - 6);
      v65 = *(v61 - 5);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_103;
      }

      v68 = &v9[16 * v53];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_105;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_107;
      }

      if (v72 >= v64)
      {
        v90 = &v54[16 * v56];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_113;
        }

        if (v59 < v93)
        {
          v56 = v53 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a4[1];
    a5 = v106;
    if (v8 >= v7)
    {
      goto LABEL_88;
    }
  }

  v35 = *a4;
  v36 = *a4 + 56 * v8 - 56;
  v37 = v10 - v8;
LABEL_30:
  v38 = v37;
  v39 = v36;
  while (1)
  {
    v40 = v39 + 56;
    v41 = *(v39 + 56);
    if (v41 >= *v39)
    {
LABEL_29:
      ++v8;
      v36 += 56;
      --v37;
      if (v8 != v7)
      {
        goto LABEL_30;
      }

      v8 = v7;
      goto LABEL_37;
    }

    if (!v35)
    {
      break;
    }

    v42 = *(v39 + 64);
    v43 = *(v39 + 72);
    v44 = *(v39 + 80);
    v45 = *(v39 + 88);
    v46 = *(v39 + 96);
    v47 = *(v39 + 104);
    v48 = *(v39 + 16);
    *v40 = *v39;
    *(v39 + 72) = v48;
    *(v39 + 88) = *(v39 + 32);
    v49 = *(v39 + 48);
    *v39 = v41;
    *(v39 + 8) = v42;
    *(v39 + 16) = v43;
    *(v39 + 24) = v44;
    *(v39 + 32) = v45;
    *(v39 + 40) = v46;
    *(v39 + 48) = v47;
    v39 -= 56;
    *(v40 + 48) = v49;
    if (__CFADD__(v38++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_25209ADB4(double *__dst, double *__src, double *a3, double *a4)
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
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
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
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_25209AFA8(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 < v11)
  {
    v12 = 7 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 8);
    }

    v13 = &v4[v12];
    if (v8 < 56)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 7;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 7;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 7;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    v17 = *(v14 + 1);
    v18 = *(v14 + 2);
    v7[6] = v14[6];
    *(v7 + 1) = v17;
    *(v7 + 2) = v18;
    *v7 = v16;
    goto LABEL_9;
  }

  v19 = 7 * v11;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 56 * v11);
  }

  v13 = &v4[v19];
  if (v10 >= 56 && v6 > v7)
  {
LABEL_20:
    v20 = v6 - 7;
    v5 -= 56;
    v21 = v13;
    do
    {
      v22 = (v5 + 56);
      v23 = *(v21 - 56);
      v21 -= 56;
      if (v23 < *v20)
      {
        if (v22 != v6)
        {
          v27 = *v20;
          v28 = *(v6 - 5);
          v29 = *(v6 - 3);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v28;
          *(v5 + 32) = v29;
          *v5 = v27;
        }

        if (v13 <= v4 || (v6 -= 7, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v22 != v13)
      {
        v24 = *v21;
        v25 = *(v21 + 16);
        v26 = *(v21 + 32);
        *(v5 + 48) = *(v21 + 48);
        *(v5 + 16) = v25;
        *(v5 + 32) = v26;
        *v5 = v24;
      }

      v5 -= 56;
      v13 = v21;
    }

    while (v21 > v4);
    v13 = v21;
  }

LABEL_31:
  v30 = 7 * ((v13 - v4) / 56);
  if (v6 != v4 || v6 >= &v4[v30])
  {
    memmove(v6, v4, v30 * 8);
  }

  return 1;
}

char *sub_25209B1F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25209BB2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25209B214(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25209B3B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25209B234(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25209B4BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25209B254(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25209B5B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25209B274(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25209B6CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25209B294(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25209B7DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25209B2B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25209B910(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25209B2D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25209BE90(a1, a2, a3, *v3, &qword_27F4CDAF8, &qword_252143CA0, &qword_27F4CDB00, &qword_252143CA8);
  *v3 = result;
  return result;
}

char *sub_25209B314(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25209BA14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25209B334(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25209BC30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25209B354(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25209BD84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25209B374(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25209BE90(a1, a2, a3, *v3, &qword_27F4CDB08, &unk_252143CB0, &qword_27F4CE6E0, &qword_252144530);
  *v3 = result;
  return result;
}

char *sub_25209B3B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB58, &qword_252143D08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_25209B4BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB28, &qword_252143CD8);
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

char *sub_25209B5B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDC18, &qword_252143DB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

char *sub_25209B6CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDC30, &qword_252143DD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_25209B7DC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBB8, &qword_252143D70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBA8, &qword_252143D60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25209B910(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB20, &qword_252143CD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25209BA14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDC08, &qword_252143DA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 56 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_25209BB2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_25209BC30(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB40, &qword_252143CF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 248);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[31 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 248 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB48, &qword_252143CF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25209BD84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAD8, &qword_252143C80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25209BE90(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void sub_25209BFC4(double *a1, char a2, void *a3)
{
  v4 = *(a1 + 2);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = a1[4];
  v8 = *(a1 + 5);
  v9 = *a3;
  v10 = sub_25213E6C0(v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_2520A7768(v15, v6 & 1);
    v10 = sub_25213E6C0(v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_2521424CC();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_2520A6D14();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE720, &unk_252143D40);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + 8 * v10) = v7;
  *(v21[7] + 8 * v10) = v8;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (!v14)
  {
    v21[2] = v23;
    if (v4 != 1)
    {
      v6 = a1 + 7;
      v24 = 1;
      while (v24 < *(a1 + 2))
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v25 = *a3;
        v26 = sub_25213E6C0(v7);
        v28 = v25[2];
        v29 = (v27 & 1) == 0;
        v14 = __OFADD__(v28, v29);
        v30 = v28 + v29;
        if (v14)
        {
          goto LABEL_22;
        }

        v16 = v27;
        if (v25[3] < v30)
        {
          sub_2520A7768(v30, 1);
          v26 = sub_25213E6C0(v7);
          if ((v16 & 1) != (v31 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v16)
        {
          goto LABEL_8;
        }

        v32 = *a3;
        *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        *(v32[6] + 8 * v26) = v7;
        *(v32[7] + 8 * v26) = v8;
        v33 = v32[2];
        v14 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v14)
        {
          goto LABEL_23;
        }

        ++v24;
        v32[2] = v34;
        v6 += 2;
        if (v4 == v24)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_25214222C();
  MEMORY[0x253098DA0](0xD00000000000001BLL, 0x8000000252148C50);
  sub_25214230C();
  MEMORY[0x253098DA0](39, 0xE100000000000000);
  sub_25214231C();
  __break(1u);
}

void *sub_25209C308(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_25209C468(uint64_t a1, void *a2, uint64_t *a3, double a4)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v5 = *(a1 + 8);
  if (*(*a3 + 16) != v5)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v7[0] = a4;
  if (!*a1)
  {
    goto LABEL_5;
  }

  vDSP_vsdivD((v4 + 32), 1, v7, *a1, 1, v5);
  *a2 = *(v4 + 16);
}

uint64_t *sub_25209C510@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v4 = *result * a3;
  if ((*result * a3) >> 64 != v4 >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4 + a3;
  if (__OFADD__(v4, a3))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 < v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = *(a2 + 16);
  if (v6 >= v4)
  {
    v8 = __OFSUB__(v6, v5);
    v7 = (v6 - v5) < 0;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  if (v7 == v8)
  {
    *a4 = a2;
    a4[1] = a2 + 32;
    a4[2] = v4;
    a4[3] = (2 * v5) | 1;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_25209C578(void *a1, void *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, void *, void, uint64_t), double a5)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v5 = *a3;
  if (*(*a3 + 16) != a1[1])
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  *v8 = a5;
  if (!*a1)
  {
    goto LABEL_5;
  }

  result = a4(v5 + 32, 1, v8, *a1, 1);
  *a2 = *(v5 + 16);
  return result;
}

void sub_25209C628(uint64_t a1, void *a2, uint64_t *a3, double a4)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v5 = *(a1 + 8);
  if (*(*a3 + 16) != v5)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v7[0] = a4;
  if (!*a1)
  {
    goto LABEL_5;
  }

  vDSP_svdivD(v7, (v4 + 32), 1, *a1, 1, v5);
  *a2 = *(v4 + 16);
}

uint64_t sub_25209C6D0(void *a1, void *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, void *, void, uint64_t), double a5)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v5 = *a3;
  if (*(*a3 + 16) != a1[1])
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  *v8 = a5;
  if (!*a1)
  {
    goto LABEL_5;
  }

  result = a4(v5 + 32, 1, v8, *a1, 1);
  *a2 = *(v5 + 16);
  return result;
}

void sub_25209C780(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  if (*(*a3 + 16) == v4)
  {
    if (*a1)
    {
      vDSP_vnegD((v3 + 32), 1, *a1, 1, v4);
      *a2 = *(v3 + 16);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_25209C7EC(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  if (*(*a3 + 16) == v4)
  {
    if (*a1)
    {
      vDSP_vabsD((v3 + 32), 1, *a1, 1, v4);
      *a2 = *(v3 + 16);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_25209C858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDC38, &qword_252143DD8);
    v3 = sub_25214235C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_25213E6C0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_25209C938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDC10, &qword_252143DB0);
    v3 = sub_25214235C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25213E648(v5, v6);
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

unint64_t sub_25209CA3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB8, &qword_252147FA0);
    v3 = sub_25214235C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_25213E6C0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_25209CB18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBA0, &qword_252143D58);
    v3 = sub_25214235C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_25213E6C0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_25209CBF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB70, &qword_252143D20);
    v3 = sub_25214235C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_25213E648(v5, v6);
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

unint64_t sub_25209CCFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB38, &qword_252143CE8);
    v3 = sub_25214235C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25213E648(v5, v6);
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

void *sub_25209CDF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB10, &qword_252143CC0);
  v3 = sub_25214235C();
  LODWORD(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_25213E70C(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 4 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
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
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_25213E70C(v4);
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

unint64_t sub_25209CF0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB60, &qword_252143D10);
    v3 = sub_25214235C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2520A2D9C(v4, v13, &qword_27F4CDB68, &qword_252143D18);
      result = sub_25213E754(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2520A1F80(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_25209D048(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAE0, &qword_252143C88);
    v3 = sub_25214235C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2520A2D9C(v4, &v13, &qword_27F4CDAE8, &qword_252143C90);
      v5 = v13;
      v6 = v14;
      result = sub_25213E648(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2520A1F80(&v15, (v3[7] + 32 * result));
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

unint64_t sub_25209D178(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB18, &qword_252143CC8);
    v3 = sub_25214235C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25213E648(v5, v6);
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

uint64_t sub_25209D27C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (*(a2 + 16))
  {
    v7 = *(v5 + 8 * v4);
    v8 = sub_25214254C();
    v9 = -1 << *(a2 + 32);
    v10 = v8 & ~v9;
    if (((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      break;
    }

    ++v4;
    v11 = ~v9;
    while (*(*(a2 + 48) + 8 * v10) != v7)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return 0;
      }
    }

    if (v4 == v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_25209D424()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

unint64_t sub_25209D56C()
{
  result = qword_27F4CDC50;
  if (!qword_27F4CDC50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4CDC50);
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

uint64_t sub_25209D600(uint64_t a1)
{
  v4 = sub_2520AABEC(*(a1 + 16), sub_2520A2178);
  v1 = sub_2520AABEC(*(v4 + 16), sub_2520A25E4);

  v2 = sub_2520AABEC(*(v1 + 16), sub_2520A2644);

  return v2;
}

uint64_t sub_25209D6D8(uint64_t a1)
{
  v4 = sub_2520AABEC(*(a1 + 16), sub_2520A3B60);
  v1 = sub_2520AABEC(*(v4 + 16), sub_2520A3374);

  v2 = sub_2520AABEC(*(v1 + 16), sub_2520A3B48);

  return v2;
}

float sub_25209D7C8@<S0>(float *a1@<X8>)
{
  result = *(*(v1 + 16) + OBJC_IVAR____TtC11HearingTest12HTAudiometry__lastProgress);
  *a1 = result;
  return result;
}

__n128 sub_25209D818@<Q0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 16) + OBJC_IVAR____TtC11HearingTest12HTAudiometry__stimulus;
  result = *v2;
  v4 = *(v2 + 16);
  *a1 = *v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_25209DB4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25209DBDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v6 = (a4 * a5) >> 64;
  if (result != -1)
  {
    v7 = result;
    if (v5 == -1)
    {
      if (v6 != (a4 * a5) >> 63)
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (!result)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v5 = a4 * a5 / result;
    }

LABEL_10:
    if ((v7 * v5) >> 64 == (v7 * v5) >> 63)
    {
      v8 = a4 * a5;
      if (v6 == (a4 * a5) >> 63)
      {
        if (v7 * v5 == v8)
        {
          if (*(a3 + 16) == v8)
          {
            return a3;
          }

          __break(1u);
        }

        sub_25214222C();
        MEMORY[0x253098DA0](0xD000000000000021, 0x8000000252148CB0);
        v9 = sub_25214244C();
        MEMORY[0x253098DA0](v9);

        MEMORY[0x253098DA0](0xD000000000000016, 0x8000000252148CE0);
        v10 = sub_25214244C();
        MEMORY[0x253098DA0](v10);

        MEMORY[0x253098DA0](41, 0xE100000000000000);
        v12 = 0;
        v11 = 0xE000000000000000;
        sub_2520A2090();
        swift_allocError();
LABEL_17:
        *v13 = v12;
        v13[1] = v11;
        swift_willThrow();
        return a3;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  if (a2 == -1)
  {
    v11 = 0x8000000252148D00;
    sub_2520A2090();
    swift_allocError();
    v12 = 0xD00000000000002ELL;
    goto LABEL_17;
  }

  if (v6 != (a4 * a5) >> 63)
  {
    goto LABEL_22;
  }

  if (a2)
  {
    v7 = a4 * a5 / a2;
    goto LABEL_10;
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_25209DDF4(int64_t a1, uint64_t a2, vDSP_Length a3, vDSP_Length a4)
{
  if (a1 < 0)
  {
    goto LABEL_9;
  }

  if (a1)
  {
    v8 = sub_252141D3C();
    *(v8 + 16) = a1;
    if (((a4 | a3) & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v8 = MEMORY[0x277D84F90];
  if (((a4 | a3) & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

LABEL_4:
  vDSP_mtransD((a2 + 32), 1, (v8 + 32), 1, a4, a3);
  v9 = a3 * a4;
  if ((a3 * a4) >> 64 != (a3 * a4) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9 <= a1)
  {
    *(v8 + 16) = v9;
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_25209DEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 < 1)
  {
    v11 = "x1 must have at least 1 column.";
LABEL_7:
    v7 = (v11 - 32) | 0x8000000000000000;
    sub_2520A2090();
    swift_allocError();
    v10 = 0xD00000000000001FLL;
    goto LABEL_8;
  }

  if (a6 < 1)
  {
    v11 = "x2 must have at least 1 column.";
    goto LABEL_7;
  }

  if (*(a7 + 16) < 2uLL)
  {
    v7 = 0x8000000252148E10;
    sub_2520A2090();
    swift_allocError();
    v10 = 0xD000000000000024;
LABEL_8:
    *v9 = v10;
    v9[1] = v7;
    swift_willThrow();
    return v7;
  }

  v110 = a7;
  v111 = a5;
  v115 = a6;
  v17 = sub_2520EEE44(0, a1, a2, a3);
  if (v8)
  {
    return v7;
  }

  v20 = sub_2520F0D68(v17, v18, v19, 2.0);
  v22 = v21;
  v24 = v23;

  v25 = sub_25209DBDC(-1, 1, v20, v22, v24);
  v108 = v26;
  v109 = v27;
  v28 = v25;

  v29 = sub_2520EEE44(0, a4, v111, v115);
  v32 = sub_2520F0D68(v29, v30, v31, 2.0);

  v33 = sub_2520EEE44(0, a1, a2, a3);
  v36 = sub_25209DBDC(-1, 1, v33, v34, v35);
  v106 = v38;
  v107 = v37;
  v39 = v36;

  v40 = sub_2520EEE44(0, a4, v111, v115);
  v105 = v40;
  v43 = sub_25209DBDC(-1, 1, v40, v41, v42);
  v45 = v44;
  v103 = v39;
  v104 = v46;
  v47 = v43;

  if ((v104 * v45) >> 64 != (v104 * v45) >> 63)
  {
    __break(1u);
    goto LABEL_28;
  }

  v105 = v104 * v45;
  sub_25209DDF4(v104 * v45, v47, v104, v45);
  v49 = v48;
  v102 = 0;

  if (*(v49 + 16) != v105)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_252112780(v103, v107, v106, v49, v104);
  v51 = v50;
  v106 = v53;
  v107 = v52;

  v104 = sub_2520F0F90(v28, v108, v109, v32);
  v105 = v54;
  v108 = v55;

  v109 = &v101;
  v56 = v106;
  v57 = v107;
  v112 = v51;
  v113 = v107;
  v114 = v106;
  MEMORY[0x28223BE20](*(v51 + 16));
  v58 = v102;
  v60 = sub_2520AABEC(v59, sub_2520A3B00);

  if ((v57 * v56) >> 64 != (v57 * v56) >> 63)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v109 = v58;
  if (*(v60 + 16) != v57 * v56)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v61 = sub_252098C1C(v104, v108, v105, v60, v57, v56);
  v63 = v62;
  v65 = v64;

  v112 = v61;
  v113 = v63;
  v114 = v65;
  MEMORY[0x28223BE20](*(v61 + 16));
  v66 = v109;
  v68 = sub_2520AABEC(v67, sub_2520A3B00);
  v109 = v66;

  if ((v63 * v65) >> 64 != (v63 * v65) >> 63)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v69 = v68;
  v70 = *(v68 + 16);
  if (v70 != v63 * v65)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v108 = &v101;
  v112 = v69;
  v113 = v63;
  v114 = v65;
  MEMORY[0x28223BE20](result);
  v71 = v109;
  v72 = sub_2520AABEC(v70, sub_2520A24F8);
  v109 = v71;

  if (*(v72 + 16) != v70)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v107 = v63;
  v108 = &v101;
  v112 = v72;
  v113 = v63;
  v106 = v65;
  v114 = v65;
  MEMORY[0x28223BE20](result);
  v73 = v109;
  v7 = sub_2520AABEC(v70, sub_2520A3B00);

  if (*(v7 + 16) != v70)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v74 = sub_2520EEE44(1, a1, a2, a3);
  if (v73)
  {

    return v7;
  }

  v77 = sub_25209DBDC(-1, 1, v74, v75, v76);
  v79 = v78;
  v81 = v80;
  v82 = v7;

  v83 = sub_2520EEE44(1, a4, v111, v115);
  v86 = sub_25209DBDC(-1, 1, v83, v84, v85);
  v88 = v87;
  v90 = v89;

  if ((v88 * v90) >> 64 != (v88 * v90) >> 63)
  {
    goto LABEL_35;
  }

  sub_25209DDF4(v88 * v90, v86, v88, v90);
  v92 = v91;

  if (*(v92 + 16) != v88 * v90)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_252112780(v77, v79, v81, v92, v88);
  v94 = v93;
  v96 = v95;
  v98 = v97;

  v112 = v94;
  v113 = v96;
  v114 = v98;
  MEMORY[0x28223BE20](*(v94 + 16));
  v100 = sub_2520AABEC(v99, sub_2520A3B30);

  if ((v96 * v98) >> 64 != (v96 * v98) >> 63)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (*(v100 + 16) == v96 * v98)
  {
    v7 = sub_252098C1C(v82, v107, v106, v100, v96, v98);

    return v7;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_25209E75C(uint64_t a1)
{
  v5 = sub_2520AABEC(*(a1 + 16), sub_2520A224C);
  v1 = sub_2520AABEC(*(v5 + 16), sub_2520A332C);

  v2 = sub_2520AABEC(*(v1 + 16), sub_2520A3B18);

  v3 = sub_2520AABEC(*(v2 + 16), sub_2520A3AE8);

  return v3;
}

char *sub_25209E868(uint64_t a1)
{
  v1 = sub_25209E75C(a1);
  v11 = sub_2520AABEC(*(v1 + 16), sub_2520A3718);
  sub_2520AABEC(*(v11 + 16), sub_2520A3B18);

  v2 = sub_2520AABEC(*(v1 + 16), sub_2520A338C);

  v3 = *(v2 + 16);
  if (v3)
  {
    v12 = MEMORY[0x277D84F90];
    sub_25209B1F4(0, v3, 0);
    v4 = v12;
    v5 = *(v12 + 16);
    v6 = 32;
    do
    {
      if (*(v2 + v6) >= 0.00001)
      {
        v7 = *(v2 + v6);
      }

      else
      {
        v7 = 0.00001;
      }

      v8 = *(v12 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_25209B1F4((v8 > 1), v5 + 1, 1);
      }

      *(v12 + 16) = v5 + 1;
      *(v12 + 8 * v5 + 32) = v7;
      v6 += 8;
      ++v5;
      --v3;
    }

    while (v3);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v9 = sub_2520805A0(v4);

  return v9;
}

void sub_25209EA3C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v200 = *MEMORY[0x277D85DE8];
  if (a2 < 1 || a3 < 1)
  {
    v11 = 0x8000000252148D30;
    sub_2520A2090();
    swift_allocError();
    v13 = 0xD000000000000019;
    goto LABEL_12;
  }

  if (a5 < 1 || a6 < 1)
  {
    v14 = "x must not be empty.";
LABEL_11:
    v11 = (v14 - 32) | 0x8000000000000000;
    sub_2520A2090();
    swift_allocError();
    v13 = 0xD000000000000014;
    goto LABEL_12;
  }

  v10 = *(a7 + 16);
  if (!v10)
  {
    v14 = "t must not be empty.";
    goto LABEL_11;
  }

  if (*(a8 + 16) < 2uLL)
  {
    v11 = 0x8000000252148E10;
    sub_2520A2090();
    swift_allocError();
    v13 = 0xD000000000000024;
LABEL_12:
    *v12 = v13;
    v12[1] = v11;
    swift_willThrow();
    return;
  }

  v186 = a9;
  v187 = a7;
  v192 = a1;
  v193 = a2;
  v194 = a3;
  v19 = sub_252141D3C();
  *(v19 + 16) = a5;
  memset_pattern16((v19 + 32), &unk_252143B30, 8 * a5);
  *&v20 = COERCE_DOUBLE(sub_2520805A0(v19));
  v190 = v22;
  v191 = v21;

  v188 = a4;
  v189 = a6;
  v195 = a8;
  v196 = a5;
  v23 = sub_25209DEBC(a4, a5, a6, a4, a5, a6, a8);
  if (v9)
  {
    goto LABEL_14;
  }

  v26 = v23;
  v27 = v24;
  v28 = v25;
  v184 = 8 * a5;
  v29 = &v176;
  v30 = v190;
  v31 = v191;
  __C = *&v20;
  v198 = v191;
  v199 = v190;
  MEMORY[0x28223BE20](*(v20 + 2));
  v33 = sub_2520AABEC(v32, sub_2520A3B00);
  v185 = 0;

  if ((v31 * v30) >> 64 != (v31 * v30) >> 63)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (*(v33 + 16) != v31 * v30)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v34 = sub_252098C1C(v26, v27, v28, v33, v31, v30);
  v36 = v35;
  v38 = v37;

  v39 = v185;
  v40 = sub_25209DEBC(v188, v196, v189, v192, v193, v194, v195);
  if (v39)
  {
    goto LABEL_14;
  }

  v43 = v196;
  if (v10 != v196)
  {

    v100 = 0x8000000252148D90;
    sub_2520A2090();
    swift_allocError();
    v102 = 0xD00000000000002ALL;
LABEL_28:
    *v101 = v102;
    v101[1] = v100;
    swift_willThrow();
    goto LABEL_14;
  }

  if (v36 != v196)
  {

    v100 = 0x8000000252148DC0;
    sub_2520A2090();
    swift_allocError();
    v102 = 0xD00000000000002CLL;
    goto LABEL_28;
  }

  if (v38 <= 0)
  {

    v100 = 0x8000000252148DF0;
    sub_2520A2090();
    swift_allocError();
    v102 = 0xD000000000000016;
    goto LABEL_28;
  }

  v176 = v42;
  v177 = v41;
  v178 = v40;
  v44 = sub_252141D3C();
  *(v44 + 16) = v43;
  v45 = v184;
  bzero((v44 + 32), v184);
  v46 = sub_252141D3C();
  *(v46 + 16) = v43;
  memset_pattern16((v46 + 32), &unk_252143B30, v45);
  v181 = sub_2520805A0(v46);
  v180 = v47;
  v179 = v48;

  v49 = 16;
  v190 = v38;
  v191 = v34;
  while (1)
  {
    v50 = v49 - 1;
    if (!v50)
    {
      break;
    }

    v189 = v50;
    v51 = sub_25209E868(v44);
    v53 = v52;
    v55 = v54;
    sub_252112780(v51, v52, v54, v34, v38);
    v59 = sub_252098C1C(v181, v180, v179, v56, v57, v58);
    v61 = v60;
    v63 = v62;

    v64 = sub_2520F0B6C(v59, v61, v63);
    v66 = v65;

    v67 = sub_25209E75C(v44);
    v182 = *(v67 + 16);

    sub_252112780(v51, v53, v55, v44, 1);
    v69 = v68;
    v188 = v70;
    v185 = v71;

    v72 = v196;
    sub_252112780(v191, v196, v190, v64, v66);
    v74 = v73;
    v183 = v76;
    v184 = v75;

    v77 = sub_252098C1C(v187, v72, 1, v67, v182, 1);
    v79 = v78;
    v81 = v80;

    v82 = sub_252098C1C(v77, v79, v81, v69, v188, v185);
    v84 = v83;

    sub_252112780(v74, v184, v183, v82, v84);
    v86 = v85;
    v88 = v87;
    v90 = v89;

    *&v91 = COERCE_DOUBLE(sub_252098C1C(v86, v88, v90, v44, *(v44 + 16), 1));
    v93 = v92;
    v95 = v94;

    __C = *&v91;
    v198 = v93;
    v199 = v95;
    MEMORY[0x28223BE20](*(v91 + 16));
    v97 = sub_2520AABEC(v96, sub_2520A2268);

    v98 = *(v97 + 16);
    __C = NAN;
    vDSP_maxvD((v97 + 32), 1, &__C, v98);
    v99 = __C;

    v44 = v86;
    v38 = v190;
    v34 = v191;
    v49 = v189;
    if (v99 <= 0.000000001)
    {
      goto LABEL_31;
    }
  }

  v86 = v44;
LABEL_31:

  v103 = sub_25209E868(v86);
  v106 = sub_2520F0B6C(v103, v104, v105);
  v108 = v107;
  v110 = v109;

  v111 = sub_252098C1C(v106, v108, v110, v34, v196, v38);
  v113 = v112;
  v115 = v114;

  v116 = sub_2520F0B6C(v111, v113, v115);
  v118 = v117;
  v120 = v119;
  v121 = v116;

  v122 = v177 * v176;
  if ((v177 * v176) >> 64 != (v177 * v176) >> 63)
  {
    goto LABEL_62;
  }

  v123 = v178;

  sub_25209DDF4(v122, v123, v177, v176);
  v125 = v124;

  if (*(v125 + 16) != v122)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v126 = sub_25209E75C(v86);

  v127 = sub_252098B74(v187, v126);

  v128 = v176;
  v129 = v177;
  sub_252112780(v125, v176, v177, v127, 1);
  v27 = v130;
  v196 = v131;
  v191 = v132;

  v133 = v178;
  sub_252112780(v121, v120, v118, v178, v128);
  v135 = v134;
  v137 = v136;
  v139 = v138;

  v140 = sub_252098C1C(v135, v137, v139, v133, v129, v128);
  v142 = v141;
  v144 = v143;

  if (v144 < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v144)
  {
    v145 = sub_252141D3C();
    *(v145 + 16) = v144;
    if ((v142 & 0x8000000000000000) != 0)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v31 = v145;
    v146 = (v140 + 32);
    v147 = (v145 + 32);
    v148 = v144;
    do
    {
      vDSP_sveD(v146++, v144, v147++, v142);
      --v148;
    }

    while (v148);
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  *(v31 + 16) = v144;

  v33 = 0;
  v149 = sub_2520EEE44(1, v192, v193, v194);
  sub_25209DBDC(-1, 1, v149, v150, v151);
  v29 = v152;
  v26 = v153;

  v10 = v29 * v29;
  if ((v29 * v29) >> 64 != (v29 * v29) >> 63)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v10 < 0)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v10)
  {
    v154 = sub_252141D3C();
    *(v154 + 16) = v10;
    goto LABEL_49;
  }

LABEL_48:
  v154 = MEMORY[0x277D84F90];
LABEL_49:
  if (v29 > 0x7FFFFFFF)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v29 < 0xFFFFFFFF80000000 || v26 < 0xFFFFFFFF80000000)
  {
    goto LABEL_69;
  }

  if (v26 > 0x7FFFFFFF)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  cblas_dgemm_NEWLAPACK();
  *(v154 + 16) = v10;

  if (v29 < 0)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v29)
  {
    v155 = 0;
    v156 = *(v195 + 40) * *(v195 + 40);
    while (1)
    {
      v157 = v155 * v29;
      if ((v155 * v29) >> 64 != (v155 * v29) >> 63)
      {
        break;
      }

      ++v155;
      __C = v156;
      vDSP_vsaddD((v154 + 32 + 8 * v157), 1, &__C, (v154 + 32 + 8 * v157), 1, v29);
      if (v29 == v155)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_58:
  sub_252098CE4(v154, v29, v29);
  v159 = v158;

  __C = v159;
  MEMORY[0x28223BE20](*(*&v159 + 16));
  v161 = sub_2520AABEC(v160, sub_2520A2284);
  v162 = *(*&v159 + 16);

  if (v162 == *(v161 + 16))
  {
    v163 = sub_25209DBDC(-1, 1, v161, 1, v162);
    if (!v33)
    {
      v166 = v163;
      v167 = v164;
      v168 = v165;

      v169 = sub_252098C1C(v166, v167, v168, v31, *(v31 + 16), 1);
      v171 = v170;
      v173 = v172;

      v174 = v186;
      v175 = v196;
      *v186 = v27;
      v174[1] = v175;
      v174[2] = v191;
      v174[3] = v169;
      v174[4] = v171;
      v174[5] = v173;
      return;
    }

LABEL_14:

    return;
  }

LABEL_72:
  __break(1u);
}

uint64_t sub_25209F7E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, void *a11, unint64_t a12, uint64_t a13)
{
  v15 = v14;
  v16 = v13;
  v183 = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  if ((a2 + 0x4000000000000000) < 0)
  {
LABEL_221:
    __break(1u);
    goto LABEL_222;
  }

  v22 = 2 * a2;
  if (((2 * a2) & 0x8000000000000000) != 0)
  {
LABEL_222:
    __break(1u);
    goto LABEL_223;
  }

  if (v22)
  {
    v23 = sub_252141D3C();
    *(v23 + 16) = v22;
    v157 = (v23 + 16);
    v159 = v23;
    bzero((v23 + 32), 16 * a2);
  }

  else
  {
    v159 = MEMORY[0x277D84F90];
    v157 = (MEMORY[0x277D84F90] + 16);
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
      goto LABEL_236;
    }
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_224;
  }

  if (a2)
  {
    v24 = 0;
    v164 = 0;
    v163 = a7 + 32;
    v25 = a10;
    v156 = v159 + 4;
    v162 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel;
    v161 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel;
    v174 = v16;
    v160 = a8;
    v165 = a7;
    v169 = a3;
    v158 = a2;
    while (1)
    {
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_199;
      }

      if (a3 < 1)
      {
        goto LABEL_200;
      }

      v28 = v24 * a3;
      if ((v24 * a3) >> 64 != (v24 * a3) >> 63)
      {
        goto LABEL_201;
      }

      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_202;
      }

      if (v28 >= *(a1 + 16))
      {
        goto LABEL_203;
      }

      v29 = *(a1 + 32 + 8 * v28);
      v177 = v24;
      v30 = sub_2520F0530(v24, a7, a8, v25);
      if (v15)
      {

        return a3;
      }

      v178 = v27;
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = 0;
        while (*(v30 + 32 + 8 * v32) <= 0.5)
        {
          if (v31 == ++v32)
          {
            goto LABEL_21;
          }
        }

        if (!v32)
        {
          v33 = v30;
          if (qword_27F4CD708 != -1)
          {
            swift_once();
          }

          v34 = sub_25214198C();
          __swift_project_value_buffer(v34, qword_27F4CDE68);
          v35 = sub_25214196C();
          v36 = sub_252141FBC();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            __C = v38;
            *v37 = 136446210;
            v39 = sub_2521425DC();
            v41 = sub_2520A5448(v39, v40, &__C);
            a8 = v160;

            *(v37 + 4) = v41;
            v15 = 0;
            _os_log_impl(&dword_25207E000, v35, v36, "[%{public}s] getBoundedPoints using idx 1", v37, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v38);
            MEMORY[0x253099FD0](v38, -1, -1);
            v42 = v37;
            v16 = v174;
            MEMORY[0x253099FD0](v42, -1, -1);
          }

          v32 = 1;
          v30 = v33;
          a7 = v165;
        }
      }

      else
      {
LABEL_21:
        v32 = 1;
      }

      v43 = *(v30 + 16);

      if (v32 >= v43)
      {
        a3 = v169;
        v25 = a10;
        v26 = v178;
        if (v178 == a2)
        {
          break;
        }

        goto LABEL_10;
      }

      if (v177 > a8 || v32 >= a10)
      {
        goto LABEL_205;
      }

      v45 = v177 * a10;
      if ((v177 * a10) >> 64 != (v177 * a10) >> 63)
      {
        goto LABEL_206;
      }

      v46 = v45 + v32;
      if (__OFADD__(v45, v32))
      {
        goto LABEL_207;
      }

      if ((v46 & 0x8000000000000000) != 0)
      {
        goto LABEL_208;
      }

      v47 = *(a7 + 16);
      if (v46 >= v47)
      {
        goto LABEL_209;
      }

      v48 = v32 - 1;
      v49 = __OFADD__(v45, v32 - 1);
      v50 = v45 + v32 - 1;
      if (v49)
      {
        goto LABEL_210;
      }

      if ((v50 & 0x8000000000000000) != 0)
      {
        goto LABEL_211;
      }

      if (v50 >= v47)
      {
        goto LABEL_212;
      }

      if (v177 > a5 || v32 >= a6)
      {
        goto LABEL_213;
      }

      v51 = v177 * a6;
      if ((v177 * a6) >> 64 != (v177 * a6) >> 63)
      {
        goto LABEL_214;
      }

      v52 = v51 + v32;
      if (__OFADD__(v51, v32))
      {
        goto LABEL_215;
      }

      if ((v52 & 0x8000000000000000) != 0)
      {
        goto LABEL_216;
      }

      v53 = *(a4 + 16);
      if (v52 >= v53)
      {
        goto LABEL_217;
      }

      v49 = __OFADD__(v51, v48);
      v54 = v51 + v48;
      if (v49)
      {
        goto LABEL_218;
      }

      if ((v54 & 0x8000000000000000) != 0)
      {
        goto LABEL_219;
      }

      if (v54 >= v53)
      {
        goto LABEL_220;
      }

      v55 = *(a4 + 32 + 8 * v54) + (0.5 - *(v163 + 8 * v50)) / (*(v163 + 8 * v46) - *(v163 + 8 * v50)) * (*(a4 + 32 + 8 * v52) - *(a4 + 32 + 8 * v54));
      if (v55 <= *(v16 + v162))
      {
        v55 = *(v16 + v162);
      }

      if (*(v16 + v161) >= v55)
      {
        v56 = v55;
      }

      else
      {
        v56 = *(v16 + v161);
      }

      MEMORY[0x28223BE20](v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
      sub_25214200C();
      v57 = sub_2520EEE44(0, __C, v181, v182);

      v58 = *(v57 + 16);
      if (v58)
      {
        v59 = 0;
        v60 = v29 * -0.07256762 + 2.530248;
        v61 = v29 - v60;
        v62 = v29 + v60;
        v63 = MEMORY[0x277D84F90];
        do
        {
          v66 = *(v57 + 32 + 8 * v59);
          if (v61 <= v66 && v66 <= v62)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            __C = v63;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_25209B2B4(0, v63[2] + 1, 1);
              v63 = __C;
            }

            v65 = v63[2];
            v64 = v63[3];
            if (v65 >= v64 >> 1)
            {
              sub_25209B2B4((v64 > 1), v65 + 1, 1);
              v63 = __C;
            }

            v63[2] = v65 + 1;
            v63[v65 + 4] = v59;
          }

          ++v59;
        }

        while (v58 != v59);
      }

      else
      {
        v63 = MEMORY[0x277D84F90];
      }

      MEMORY[0x28223BE20](v69);
      sub_25214200C();
      v70 = sub_2520EEE44(1, __C, v181, v182);

      v71 = *(v70 + 16);
      if (v71)
      {
        v72 = 0;
        v73 = MEMORY[0x277D84F90];
        do
        {
          v76 = *(v70 + 32 + 8 * v72);
          if (v56 - a9 <= v76 && v76 <= v56 + a9)
          {
            v78 = swift_isUniquelyReferenced_nonNull_native();
            __C = v73;
            if ((v78 & 1) == 0)
            {
              sub_25209B2B4(0, v73[2] + 1, 1);
              v73 = __C;
            }

            v75 = v73[2];
            v74 = v73[3];
            if (v75 >= v74 >> 1)
            {
              sub_25209B2B4((v74 > 1), v75 + 1, 1);
              v73 = __C;
            }

            v73[2] = v75 + 1;
            v73[v75 + 4] = v72;
          }

          ++v72;
        }

        while (v71 != v72);
      }

      else
      {
        v73 = MEMORY[0x277D84F90];
      }

      v79 = v63[2];
      if (v79)
      {
        v80 = 0;
        v81 = MEMORY[0x277D84F90];
        do
        {
          v84 = v63[v80 + 4];
          v85 = v73[2];
          v86 = 4;
          while (v85)
          {
            v87 = v73[v86++];
            --v85;
            if (v87 == v84)
            {
              v88 = swift_isUniquelyReferenced_nonNull_native();
              __C = v81;
              if ((v88 & 1) == 0)
              {
                sub_25209B2B4(0, v81[2] + 1, 1);
                v81 = __C;
              }

              v83 = v81[2];
              v82 = v81[3];
              if (v83 >= v82 >> 1)
              {
                sub_25209B2B4((v82 > 1), v83 + 1, 1);
                v81 = __C;
              }

              v81[2] = v83 + 1;
              v81[v83 + 4] = v84;
              break;
            }
          }

          ++v80;
        }

        while (v80 != v79);
      }

      else
      {

        v81 = MEMORY[0x277D84F90];
      }

      MEMORY[0x28223BE20](v89);
      sub_25214200C();
      sub_2520F01BC(v81, __C, v181, v182);
      v91 = v90;

      MEMORY[0x28223BE20](v92);
      sub_25214200C();
      sub_2520F01BC(v81, __C, v181, v182);
      v94 = v93;

      sub_2520F01BC(v81, a11, a12, a13);
      v96 = v95;

      v97 = *(v94 + 16);
      if (v97)
      {

        v98 = 32;
        v99 = MEMORY[0x277D84F90];
        do
        {
          if (*(v94 + v98) == 1.0)
          {
            v102 = swift_isUniquelyReferenced_nonNull_native();
            __C = v99;
            if ((v102 & 1) == 0)
            {
              sub_25209B1F4(0, v99[2] + 1, 1);
              v99 = __C;
            }

            v101 = v99[2];
            v100 = v99[3];
            if (v101 >= v100 >> 1)
            {
              sub_25209B1F4((v100 > 1), v101 + 1, 1);
              v99 = __C;
            }

            v99[2] = v101 + 1;
            v99[v101 + 4] = 0x3FF0000000000000;
          }

          v98 += 8;
          --v97;
        }

        while (v97);
      }

      else
      {
        v99 = MEMORY[0x277D84F90];
      }

      v171 = v99[2];

      v103 = *(v94 + 16);
      if (v103)
      {
        v104 = (v94 + 32);
        v105 = MEMORY[0x277D84F90];
        do
        {
          v108 = *v104;
          if (*v104 == 0.0)
          {
            v109 = swift_isUniquelyReferenced_nonNull_native();
            __C = v105;
            if ((v109 & 1) == 0)
            {
              sub_25209B1F4(0, v105[2] + 1, 1);
              v105 = __C;
            }

            v107 = v105[2];
            v106 = v105[3];
            if (v107 >= v106 >> 1)
            {
              sub_25209B1F4((v106 > 1), v107 + 1, 1);
              v105 = __C;
            }

            v105[2] = v107 + 1;
            *&v105[v107 + 4] = v108;
          }

          ++v104;
          --v103;
        }

        while (v103);
      }

      else
      {
        v105 = MEMORY[0x277D84F90];
      }

      v110 = v105[2];

      if (v91)
      {
        v111 = *(v96 + 16);
        *&__C = NAN;
        vDSP_sveD((v96 + 32), 1, &__C, v111);
        v112 = *&__C;

        a2 = v158;
        a8 = v160;
        v26 = v178;
        if (v112 > 0.0)
        {
          v25 = a10;
          if (v177 + 0x4000000000000000 < 0)
          {
            goto LABEL_227;
          }

          v113 = 2 * v177;
          if (2 * v177 < 0)
          {
            goto LABEL_228;
          }

          v114 = *v157;
          if (v113 >= *v157)
          {
            goto LABEL_229;
          }

          *&v156[2 * v177] = v29;
          v115 = v113 | 1;
          if (v115 >= v114)
          {
            goto LABEL_230;
          }

          v15 = 0;
          *&v156[v115] = v56;
          if (v178 == v158)
          {
            break;
          }

          v164 = 1;
          v16 = v174;
          a7 = v165;
          goto LABEL_132;
        }

        v15 = 0;
        v25 = a10;
        if (v91 < 4)
        {
          v16 = v174;
          a7 = v165;
        }

        else
        {
          v16 = v174;
          a7 = v165;
          if (v171 && v110)
          {
            if (v178 == v158)
            {
              break;
            }

            v164 = 0;
LABEL_132:
            a3 = v169;
            goto LABEL_10;
          }
        }

        a3 = v169;
        if (v178 == v158)
        {
          break;
        }
      }

      else
      {

        a2 = v158;
        a8 = v160;
        v26 = v178;
        if (v164)
        {
          v25 = a10;
          a7 = v165;
          a3 = v169;
          if (v177 + 0x4000000000000000 < 0)
          {
            goto LABEL_232;
          }

          v116 = 2 * v177;
          if (2 * v177 < 0)
          {
            goto LABEL_233;
          }

          v117 = *v157;
          if (v116 >= *v157)
          {
            goto LABEL_234;
          }

          *&v156[2 * v177] = v29;
          v118 = v116 | 1;
          if (v118 >= v117)
          {
            goto LABEL_235;
          }

          v15 = 0;
          *&v156[v118] = v56;
          if (v178 == v158)
          {
            break;
          }

          v164 = 1;
          v16 = v174;
        }

        else
        {
          v15 = 0;
          a7 = v165;
          a3 = v169;
          v25 = a10;
          if (v178 == v158)
          {
            break;
          }

          v164 = 0;
          v16 = v174;
        }
      }

LABEL_10:
      v24 = v26;
      if (v26 >= a2)
      {
        goto LABEL_204;
      }
    }
  }

  a3 = v159;
  v119 = sub_2520EFDE8(0, v159, a2, 2);
  v121 = v120;
  v123 = v122;

  if (!v15)
  {
    v179 = v119;
    if ((v121 & 0x8000000000000000) != 0)
    {
LABEL_236:
      __break(1u);
      goto LABEL_237;
    }

    v124 = 0;
    v125 = 0;
    v176 = v119 + 32;
    v172 = MEMORY[0x277D84F90];
    v173 = (MEMORY[0x277D84F90] + 32);
    v175 = v119 + 24;
LABEL_143:
    if (v125 == v121)
    {
LABEL_183:

      a3 = v172;
      v152 = *(v172 + 24);
      if (v152 >= 2)
      {
        v153 = v152 >> 1;
        v49 = __OFSUB__(v153, v124);
        v154 = v153 - v124;
        if (v49)
        {
          goto LABEL_239;
        }

        *(v172 + 16) = v154;
      }

      if ((v121 + 0x4000000000000000) >= 0)
      {
        if (*(v172 + 16) == 2 * v121)
        {
          return a3;
        }

        goto LABEL_238;
      }

LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
LABEL_239:
      __break(1u);
    }

    if (v125 >= v121)
    {
LABEL_191:
      __break(1u);
    }

    else
    {
      v128 = v125 + 1;
      if (!__OFADD__(v125, 1))
      {
        v129 = v125 * v123;
        if ((v125 * v123) >> 64 == (v125 * v123) >> 63)
        {
          v130 = v129 + v123;
          if (!__OFADD__(v129, v123))
          {
            if (v130 >= v129)
            {
              if ((v129 & 0x8000000000000000) == 0)
              {
                v131 = *(v179 + 2);
                if (v131 >= v129 && v131 >= v130)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
                  v132 = swift_allocObject();
                  *(v132 + 16) = xmmword_252143AB0;
                  if (v129 < v130)
                  {
                    v127 = v132;
                    *(v132 + 32) = *&v176[8 * v129];
                    *(v132 + 40) = *&v175[8 * v130];

                    if (!*(v127 + 16))
                    {
                      do
                      {
                        if (v121 == v128)
                        {
                          goto LABEL_183;
                        }

                        if (v128 >= v121)
                        {
                          goto LABEL_191;
                        }

                        v133 = v128 + 1;
                        if (__OFADD__(v128, 1))
                        {
                          goto LABEL_192;
                        }

                        v134 = v128 * v123;
                        if ((v128 * v123) >> 64 != (v128 * v123) >> 63)
                        {
                          goto LABEL_193;
                        }

                        v135 = v134 + v123;
                        if (__OFADD__(v134, v123))
                        {
                          goto LABEL_194;
                        }

                        if (v135 < v134)
                        {
                          goto LABEL_195;
                        }

                        if ((v134 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_196;
                        }

                        v136 = *(v179 + 2);
                        if (v136 < v134 || v136 < v135)
                        {
                          goto LABEL_197;
                        }

                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
                        v137 = swift_allocObject();
                        *(v137 + 16) = xmmword_252143AB0;
                        if (v134 >= v135)
                        {
                          goto LABEL_198;
                        }

                        v127 = v137;
                        *(v137 + 32) = *&v176[8 * v134];
                        *(v137 + 40) = *&v175[8 * v135];

                        ++v128;
                      }

                      while (!*(v127 + 16));
                      v128 = v133;
                    }

                    v138 = 0;
                    v139 = v127;
                    v125 = v128;
                    while (1)
                    {
                      v140 = *(v127 + 8 * v138 + 32);
                      if (!v124)
                      {
                        v141 = *(v172 + 24);
                        if (((v141 >> 1) + 0x4000000000000000) < 0)
                        {
                          goto LABEL_231;
                        }

                        v142 = v141 & 0xFFFFFFFFFFFFFFFELL;
                        if (v142 <= 1)
                        {
                          v143 = 1;
                        }

                        else
                        {
                          v143 = v142;
                        }

                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
                        v144 = swift_allocObject();
                        v145 = _swift_stdlib_malloc_size(v144);
                        v146 = v145 - 32;
                        if (v145 < 32)
                        {
                          v146 = v145 - 25;
                        }

                        v147 = v146 >> 3;
                        v144[2] = v143;
                        v144[3] = 2 * (v146 >> 3);
                        v148 = (v144 + 4);
                        v149 = *(v172 + 24) >> 1;
                        if (*(v172 + 16))
                        {
                          v150 = (v172 + 32);
                          if (v144 != v172 || v148 >= v150 + 8 * v149)
                          {
                            v151 = v146 >> 3;
                            memmove(v144 + 4, v150, 8 * v149);
                            v147 = v151;
                          }

                          *(v172 + 16) = 0;
                        }

                        v173 = (v148 + 8 * v149);
                        v124 = (v147 & 0x7FFFFFFFFFFFFFFFLL) - v149;

                        v172 = v144;
                      }

                      v49 = __OFSUB__(v124--, 1);
                      if (v49)
                      {
                        goto LABEL_226;
                      }

                      ++v138;
                      *v173++ = v140;
                      if (!v139)
                      {
                        goto LABEL_143;
                      }

                      v126 = *(v139 + 16);
                      if (v138 == v126)
                      {
                        goto LABEL_143;
                      }

                      v127 = v139;
                      if (v138 >= v126)
                      {
                        goto LABEL_225;
                      }
                    }
                  }

                  goto LABEL_198;
                }

LABEL_197:
                __break(1u);
LABEL_198:
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
LABEL_216:
                __break(1u);
LABEL_217:
                __break(1u);
LABEL_218:
                __break(1u);
LABEL_219:
                __break(1u);
LABEL_220:
                __break(1u);
                goto LABEL_221;
              }

LABEL_196:
              __break(1u);
              goto LABEL_197;
            }

LABEL_195:
            __break(1u);
            goto LABEL_196;
          }

LABEL_194:
          __break(1u);
          goto LABEL_195;
        }

LABEL_193:
        __break(1u);
        goto LABEL_194;
      }
    }

LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  return a3;
}

uint64_t sub_2520A0A6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x253099040](v2, MEMORY[0x277D839F8], MEMORY[0x277D83A18]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_25213EA8C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

float sub_2520A0AE0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC11HearingTest12HTAudiometry__lastProgress) = result;
  return result;
}

void *sub_2520A0AF8(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *&a1[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v8 = swift_allocObject();
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2520A34A4;
  *(v9 + 24) = v8;
  v47[4] = sub_2520A3768;
  v47[5] = v9;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 1107296256;
  v47[2] = sub_252083924;
  v47[3] = &block_descriptor_1283;
  v10 = _Block_copy(v47);

  v11 = a1;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
    return result;
  }

  v13 = v46;
  v14 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  v15 = swift_beginAccess();
  if (v11[v14] == 1)
  {
    HTAudiometry.resultSamples.getter(v47);
    v16 = v47[0];
    HTAudiometry.resultSamples.getter(v46);
    v17 = BYTE8(v46[0]);

    sub_252086B9C();
    *(&v45[12] + 7) = v41;
    *(&v45[13] + 7) = v42;
    *(&v45[14] + 7) = v43;
    *(&v45[15] + 7) = v44;
    *(&v45[8] + 7) = v37;
    *(&v45[9] + 7) = v38;
    *(&v45[10] + 7) = v39;
    *(&v45[11] + 7) = v40;
    *(&v45[4] + 7) = v33;
    *(&v45[5] + 7) = v34;
    *(&v45[6] + 7) = v35;
    *(&v45[7] + 7) = v36;
    *(v45 + 7) = v29;
    *(&v45[1] + 7) = v30;
    *(&v45[2] + 7) = v31;
    *(&v45[3] + 7) = v32;
    *(&v46[13] + 1) = v45[12];
    *(&v46[14] + 1) = v45[13];
    *(&v46[15] + 1) = v45[14];
    v46[16] = *(&v45[14] + 15);
    *(&v46[9] + 1) = v45[8];
    *(&v46[10] + 1) = v45[9];
    *(&v46[11] + 1) = v45[10];
    *(&v46[12] + 1) = v45[11];
    *(&v46[5] + 1) = v45[4];
    *(&v46[6] + 1) = v45[5];
    *(&v46[7] + 1) = v45[6];
    *(&v46[8] + 1) = v45[7];
    *(&v46[1] + 1) = v45[0];
    *(&v46[2] + 1) = v45[1];
    *(&v46[3] + 1) = v45[2];
    *&v46[0] = 0;
    *(&v46[0] + 1) = v16;
    LOBYTE(v46[1]) = v17;
    *(&v46[4] + 1) = v45[3];
    sub_25209D844(v46);
    memcpy(v28, v46, sizeof(v28));
    (a2)(v28);
    memcpy(v47, v28, 0x110uLL);
    sub_25209D858(v47);
  }

  else
  {
    MEMORY[0x28223BE20](v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA10, &qword_252143B58);
    result = sub_25214200C();
    v18 = v47[2];
    if (LOBYTE(v47[2]) == 2)
    {
      v19 = swift_allocObject();
      v19[2] = v11;
      v19[3] = sub_2520A2FB8;
      v19[4] = v6;
      a2 = swift_allocObject();
      *(a2 + 16) = sub_2520A34A4;
      *(a2 + 24) = v19;
      v47[4] = sub_2520A3768;
      v47[5] = a2;
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 1107296256;
      v47[2] = sub_252083924;
      v47[3] = &block_descriptor_1295;
      v20 = _Block_copy(v47);
      v13 = v47[5];
      swift_retain_n();
      v21 = v11;

      dispatch_sync(v7, v20);

      _Block_release(v20);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    v23 = v47[3];
    v24 = v13[17];
    v25 = 1.0;
    if ((v11[v14] & 1) == 0)
    {
      MEMORY[0x28223BE20](result);
      v27 = v26;
      sub_25214200C();
      v24 = v27;
      v25 = *v47;
    }

    v13[17] = v24;
    LOBYTE(v47[2]) = v18 & 1;
    v47[3] = v23;
    *&v47[4] = v25;
    sub_25209D834(v47);
    memcpy(v46, v47, sizeof(v46));
    (a2)(v46);
  }
}

void *sub_2520A10E0(char *a1, void (*a2)(__int128 *), uint64_t a3)
{
  v6 = swift_allocObject();
  v28 = a2;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *&a1[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v8 = swift_allocObject();
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2520A34B8;
  *(v9 + 24) = v8;
  *&v63 = sub_2520A3768;
  *(&v63 + 1) = v9;
  *&v61 = MEMORY[0x277D85DD0];
  *(&v61 + 1) = 1107296256;
  *&v62 = sub_252083924;
  *(&v62 + 1) = &block_descriptor_1317;
  v10 = _Block_copy(&v61);

  v11 = a1;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
    return result;
  }

  v13 = v60;
  v14 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  v15 = swift_beginAccess();
  if (v11[v14] == 1)
  {
    HTAudiometry.resultSamples.getter(&v43);
    v16 = v43;
    v17 = v44;
    sub_2520883BC();
    *&v59[167] = v55;
    *&v59[183] = v56;
    *&v59[199] = v57;
    *&v59[215] = v58;
    *&v59[103] = v51;
    *&v59[119] = v52;
    *&v59[135] = v53;
    *&v59[151] = v54;
    *&v59[39] = v47;
    *&v59[55] = v48;
    *&v59[71] = v49;
    *&v59[87] = v50;
    *&v59[7] = v45;
    *&v59[23] = v46;
    *&v60[169] = *&v59[160];
    *&v60[185] = *&v59[176];
    *&v60[201] = *&v59[192];
    *&v60[216] = *&v59[207];
    *&v60[105] = *&v59[96];
    *&v60[121] = *&v59[112];
    *&v60[137] = *&v59[128];
    *&v60[153] = *&v59[144];
    *&v60[41] = *&v59[32];
    *&v60[57] = *&v59[48];
    *&v60[73] = *&v59[64];
    *&v60[89] = *&v59[80];
    *&v60[9] = *v59;
    *v60 = v16;
    v60[8] = v17;
    *&v60[25] = *&v59[16];
    sub_25209D9B0(v60);
    v41 = *&v60[192];
    v42[0] = *&v60[208];
    *(v42 + 9) = *&v60[217];
    v37 = *&v60[128];
    v38 = *&v60[144];
    v39 = *&v60[160];
    v40 = *&v60[176];
    v33 = *&v60[64];
    v34 = *&v60[80];
    v35 = *&v60[96];
    v36 = *&v60[112];
    v29 = *v60;
    v30 = *&v60[16];
    v31 = *&v60[32];
    v32 = *&v60[48];
    v28(&v29);
    v73 = v41;
    v74[0] = v42[0];
    *(v74 + 9) = *(v42 + 9);
    v69 = v37;
    v70 = v38;
    v72 = v40;
    v71 = v39;
    v65 = v33;
    v66 = v34;
    v68 = v36;
    v67 = v35;
    v61 = v29;
    v62 = v30;
    v63 = v31;
    v64 = v32;
    sub_25209D9BC(&v61);
  }

  else
  {
    MEMORY[0x28223BE20](v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA10, &qword_252143B58);
    result = sub_25214200C();
    v18 = v62;
    if (v62 == 2)
    {
      v19 = swift_allocObject();
      v19[2] = v11;
      v19[3] = sub_2520A2FB8;
      v19[4] = v6;
      v13 = swift_allocObject();
      *(v13 + 2) = sub_2520A34B8;
      *(v13 + 3) = v19;
      *&v63 = sub_2520A3768;
      *(&v63 + 1) = v13;
      *&v61 = MEMORY[0x277D85DD0];
      *(&v61 + 1) = 1107296256;
      *&v62 = sub_252083924;
      *(&v62 + 1) = &block_descriptor_1329;
      v20 = _Block_copy(&v61);
      v14 = *(&v63 + 1);
      swift_retain_n();
      v21 = v11;

      dispatch_sync(v7, v20);

      _Block_release(v20);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    v23 = *(&v62 + 1);
    v24 = v61;
    v25 = 1.0;
    if ((v11[v14] & 1) == 0)
    {
      MEMORY[0x28223BE20](result);
      v27 = v26;
      sub_25214200C();
      v24 = v27;
      v25 = *&v61;
    }

    v61 = v24;
    LOBYTE(v62) = v18 & 1;
    *(&v62 + 1) = v23;
    *&v63 = v25;
    sub_25209D9A8(&v61);
    *&v60[192] = v73;
    *&v60[208] = v74[0];
    *(v13 + 217) = *(v74 + 9);
    *&v60[128] = v69;
    *&v60[144] = v70;
    *&v60[160] = v71;
    *&v60[176] = v72;
    *&v60[64] = v65;
    *&v60[80] = v66;
    *&v60[96] = v67;
    *&v60[112] = v68;
    *v60 = v61;
    *&v60[16] = v62;
    *&v60[32] = v63;
    *&v60[48] = v64;
    v28(v60);
  }
}

uint64_t sub_2520A1718(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v31 = MEMORY[0x277D84F90];
  v30 = *(a1 + 16);
  sub_25209B214(0, v4, 0);
  v5 = v31;
  v8 = a1 + 56;
  result = sub_25214219C();
  v10 = v30;
  v11 = 0;
  v12 = *(a2 + *a3);
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v14 = result >> 6;
    v15 = 1 << result;
    if ((*(v8 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v16 = *(*(a1 + 48) + 8 * result);
    v17 = *(a1 + 36);
    v19 = *(v31 + 16);
    v18 = *(v31 + 24);
    if (v19 >= v18 >> 1)
    {
      v28 = *(a1 + 36);
      v29 = result;
      sub_25209B214((v18 > 1), v19 + 1, 1);
      v10 = v30;
      v17 = v28;
      result = v29;
    }

    *(v31 + 16) = v19 + 1;
    v20 = v31 + 16 * v19;
    *(v20 + 32) = v16;
    *(v20 + 40) = v12;
    v13 = 1 << *(a1 + 32);
    if (result >= v13)
    {
      goto LABEL_22;
    }

    v21 = *(v8 + 8 * v14);
    if ((v21 & v15) == 0)
    {
      goto LABEL_23;
    }

    if (v17 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (result & 0x3F));
    if (v22)
    {
      v13 = __clz(__rbit64(v22)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v14 << 6;
      v24 = v14 + 1;
      v25 = (a1 + 64 + 8 * v14);
      while (v24 < (v13 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          sub_2520A1FF4(result, v17, 0);
          v10 = v30;
          v13 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      sub_2520A1FF4(result, v17, 0);
      v10 = v30;
    }

LABEL_4:
    ++v11;
    result = v13;
    if (v11 == v10)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

__n128 sub_2520A1964@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16) + OBJC_IVAR____TtC11HearingTest12HTAudiometry__metrics;
  v3 = *(v2 + 176);
  *(a1 + 160) = *(v2 + 160);
  *(a1 + 176) = v3;
  *(a1 + 192) = *(v2 + 192);
  *(a1 + 208) = *(v2 + 208);
  v4 = *(v2 + 112);
  *(a1 + 96) = *(v2 + 96);
  *(a1 + 112) = v4;
  v5 = *(v2 + 144);
  *(a1 + 128) = *(v2 + 128);
  *(a1 + 144) = v5;
  v6 = *(v2 + 48);
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 48) = v6;
  v7 = *(v2 + 80);
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = v7;
  result = *v2;
  v9 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v9;
  return result;
}

uint64_t sub_2520A19B8()
{

  return MEMORY[0x2821FE8E8](v0, 240, 7);
}

__n128 sub_2520A19F0()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC11HearingTest12HTAudiometry__metrics;
  v2 = *(v0 + 40);
  *v1 = *(v0 + 24);
  *(v1 + 16) = v2;
  v3 = *(v0 + 72);
  v4 = *(v0 + 104);
  v5 = *(v0 + 56);
  *(v1 + 64) = *(v0 + 88);
  *(v1 + 80) = v4;
  *(v1 + 32) = v5;
  *(v1 + 48) = v3;
  v6 = *(v0 + 136);
  v7 = *(v0 + 168);
  v8 = *(v0 + 120);
  *(v1 + 128) = *(v0 + 152);
  *(v1 + 144) = v7;
  *(v1 + 96) = v8;
  *(v1 + 112) = v6;
  result = *(v0 + 200);
  v10 = *(v0 + 216);
  v11 = *(v0 + 184);
  *(v1 + 208) = *(v0 + 232);
  *(v1 + 176) = result;
  *(v1 + 192) = v10;
  *(v1 + 160) = v11;
  return result;
}

uint64_t sub_2520A1A88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2520A1AE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_previousAudiogram;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

__n128 sub_2520A1B6C@<Q0>(uint64_t a1@<X8>)
{
  _s11HearingTest12HTAudiometryC5stateAA09HTHearingB5StateVvg_0(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

void *sub_2520A1BE4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_25214200C();
  *a2 = v4;
  return result;
}

uint64_t type metadata accessor for HTAudiometry(uint64_t a1)
{
  result = qword_27F4CDAC0;
  if (!qword_27F4CDAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2520A1D14(uint64_t a1)
{
  sub_2520A1E80(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2520A1E80(uint64_t a1)
{
  if (!qword_27F4CDAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CDA10, &qword_252143B58);
    v1 = sub_2521419DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4CDAD0);
    }
  }
}

uint64_t sub_2520A1EE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x253099040](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_25213ECFC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

_OWORD *sub_2520A1F80(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2520A1FE4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2520A1FF4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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