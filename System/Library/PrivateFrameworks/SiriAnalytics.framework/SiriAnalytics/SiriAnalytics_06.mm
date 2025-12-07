BOOL sub_1D98E7298(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IdentifiableTag(0);
  sub_1D992AE84();
  sub_1D9882D14(&qword_1ED8BF058, MEMORY[0x1EEE78930]);
  return (sub_1D992B5F4() & 1) == 0;
}

void sub_1D98E7320(void *a1, uint64_t a2)
{
  v10 = MEMORY[0x1E69E7CC0];
  v3 = *(a2 + 16);
  for (i = (a2 + 40); v3; --v3)
  {
    v5 = *i;
    v6 = *(i - 2);
    v9 = *i;
    sub_1D98907D8(*i);
    sub_1D98907D8(v5);
    sub_1D98F23C4(v6);
    v7 = sub_1D9890810(v9);
    MEMORY[0x1DA739CE0](v7);
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D992B7D4();
    }

    sub_1D992B7F4();
    sub_1D9890810(v5);
    i += 2;
  }

  if (sub_1D98682F0())
  {
    sub_1D98E81FC();
    v8 = sub_1D992B7A4();
    [a1 setRedactionSignals_];
  }

  else
  {
  }
}

char *sub_1D98E7494(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D992B1E4();
  OUTLINED_FUNCTION_6();
  v125 = v8;
  v126 = v7;
  MEMORY[0x1EEE9AC00](*(v9 + 64));
  OUTLINED_FUNCTION_13();
  v122 = v11 - v10;
  v12 = sub_1D992B274();
  OUTLINED_FUNCTION_6();
  v14 = v13;
  MEMORY[0x1EEE9AC00](*(v15 + 64));
  OUTLINED_FUNCTION_13();
  v18 = v17 - v16;
  v19 = sub_1D992AE84();
  OUTLINED_FUNCTION_6();
  v21 = v20;
  MEMORY[0x1EEE9AC00](*(v22 + 64));
  OUTLINED_FUNCTION_13();
  v132 = v24 - v23;
  v128 = a2;
  sub_1D992B134();
  v121 = a3;
  v129 = [a3 unwrap];
  if (!v129)
  {
    if (qword_1ED8BD6E0 != -1)
    {
LABEL_59:
      OUTLINED_FUNCTION_0_43();
      swift_once();
    }

    OUTLINED_FUNCTION_6_19("ics18PluginStateService");
    sub_1D98E8150();
    OUTLINED_FUNCTION_12_12();
    swift_allocError();
    swift_willThrow();
    (*(v21 + 8))(v132, v19);
    return v19;
  }

  v127 = v18;
  v119 = v14;
  v120 = v12;
  v123 = v21;
  v124 = v19;
  v118 = v3;
  v25 = *(a1 + 16);
  v117 = a1;
  if (!v25)
  {
    v26 = MEMORY[0x1E69E7CC8];
LABEL_25:

    sub_1D98D4680(v45);
    sub_1D992B244();
    if (sub_1D992B254())
    {
      v46 = [v121 unwrap];
      if (v46)
      {
        v121 = v46;
        sub_1D992B1B4();
        v47 = sub_1D992B264();
        v48 = *(v125 + 8);
        v125 += 8;
        v115 = v48;
        v48(v122, v126);
        v49 = *(v47 + 16);
        if (v49)
        {
          v50 = MEMORY[0x1E69E7CC0];
          v51 = 32;
          do
          {
            if (v26[2])
            {
              v52 = sub_1D988B5F0();
              if (v53)
              {
                v54 = *(v26[7] + 8 * v52);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v57 = OUTLINED_FUNCTION_1();
                  sub_1D98BDCD0(v57, v58, v59, v50);
                  v50 = v60;
                }

                v56 = v50[2];
                v55 = v50[3];
                if (v56 >= v55 >> 1)
                {
                  sub_1D98BDCD0(v55 > 1, v56 + 1, 1, v50);
                  v50 = v61;
                }

                v50[2] = v56 + 1;
                v50[v56 + 4] = v54;
              }
            }

            v51 += 4;
            --v49;
          }

          while (v49);
        }

        else
        {

          v50 = MEMORY[0x1E69E7CC0];
        }

        v71 = sub_1D992B154();
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
        OUTLINED_FUNCTION_9(v72);
        OUTLINED_FUNCTION_20_0();
        v114[1] = v73;
        MEMORY[0x1EEE9AC00](v74);
        v76 = v114 - v75;
        v77 = v124;
        v114[0] = *(v123 + 16);
        (v114[0])(v114 - v75, v132, v124);
        __swift_storeEnumTagSinglePayload(v76, 0, 1, v77);
        v117 = sub_1D98B59C8(v71, 0, v76, v129, v50);
        v116 = v78;

        sub_1D986B804(v76, &qword_1ECB481D0, &qword_1D992F9F0);
        v79 = v122;
        sub_1D992B1D4();
        v80 = sub_1D992B264();
        v115(v79, v126);
        v81 = *(v80 + 16);
        if (v81)
        {
          v82 = MEMORY[0x1E69E7CC0];
          v83 = 32;
          do
          {
            if (v26[2])
            {
              v84 = sub_1D988B5F0();
              if (v85)
              {
                v86 = *(v26[7] + 8 * v84);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v89 = OUTLINED_FUNCTION_1();
                  sub_1D98BDCD0(v89, v90, v91, v82);
                  v82 = v92;
                }

                v88 = v82[2];
                v87 = v82[3];
                if (v88 >= v87 >> 1)
                {
                  sub_1D98BDCD0(v87 > 1, v88 + 1, 1, v82);
                  v82 = v93;
                }

                v82[2] = v88 + 1;
                v82[v88 + 4] = v86;
              }
            }

            v83 += 4;
            --v81;
          }

          while (v81);
        }

        else
        {

          v82 = MEMORY[0x1E69E7CC0];
        }

        v94 = sub_1D992B154();
        MEMORY[0x1EEE9AC00](&v133);
        v96 = v114 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
        v97 = v124;
        (v114[0])(v96, v132, v124);
        __swift_storeEnumTagSinglePayload(v96, 0, 1, v97);
        v98 = v121;
        v99 = sub_1D98B59C8(v94, 0, v96, v121, v82);
        v101 = v100;

        sub_1D986B804(v96, &qword_1ECB481D0, &qword_1D992F9F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48EC0, &qword_1D9934C00);
        v102 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48EC8, &qword_1D9934C08) - 8);
        v103 = *(*v102 + 72);
        v104 = (*(*v102 + 80) + 32) & ~*(*v102 + 80);
        v105 = swift_allocObject();
        *(v105 + 16) = xmmword_1D9933A20;
        v106 = v105 + v104;
        v107 = v106 + v102[14];
        sub_1D992B1B4();
        v108 = v129;
        v109 = v117;
        *v107 = v129;
        *(v107 + 8) = v109;
        *(v107 + 16) = v116 & 1;
        v110 = v106 + v103 + v102[14];
        v111 = v108;
        sub_1D992B1D4();
        *v110 = v98;
        *(v110 + 8) = v99;
        *(v110 + 16) = v101 & 1;
        v112 = v98;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48ED0, &unk_1D9934C10);
        sub_1D98E81A4();
        v19 = sub_1D992B5B4();

        (*(v119 + 8))(v127, v120);
        (*(v123 + 8))(v132, v97);
      }

      else
      {

        if (qword_1ED8BD6E0 != -1)
        {
          OUTLINED_FUNCTION_0_43();
          swift_once();
        }

        OUTLINED_FUNCTION_6_19("ics18PluginStateService");
        sub_1D98E8150();
        OUTLINED_FUNCTION_12_12();
        swift_allocError();
        swift_willThrow();

        v19 = (v119 + 8);
        (*(v119 + 8))(v127, v120);
        (*(v123 + 8))(v132, v124);
      }
    }

    else
    {

      v62 = sub_1D992B154();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      OUTLINED_FUNCTION_9(v63);
      OUTLINED_FUNCTION_20_0();
      MEMORY[0x1EEE9AC00](v64);
      v66 = v114 - v65;
      v68 = v123;
      v67 = v124;
      v69 = v132;
      v70 = v127;
      (*(v123 + 16))(v114 - v65, v132, v124);
      __swift_storeEnumTagSinglePayload(v66, 0, 1, v67);
      v19 = v129;
      sub_1D98B59F4(v62, 0, v66, v129, v117);
      sub_1D986B804(v66, &qword_1ECB481D0, &qword_1D992F9F0);
      (*(v119 + 8))(v70, v120);
      (*(v68 + 8))(v69, v67);
    }

    return v19;
  }

  v19 = (a1 + 32);
  v26 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    sub_1D98BA058(v19, v131);
    v21 = v131[0];
    if (v26[2] && (v27 = sub_1D988B5F0(), (v28 & 1) != 0))
    {
      v29 = *(v26[7] + 8 * v27);
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    sub_1D98BA058(v131, v130);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_1();
      sub_1D98BDCF4();
      v29 = v43;
    }

    v30 = *(v29 + 16);
    if (v30 >= *(v29 + 24) >> 1)
    {
      sub_1D98BDCF4();
      v29 = v44;
    }

    *(v29 + 16) = v30 + 1;
    v31 = (v29 + 48 * v30);
    v32 = v130[0];
    v33 = v130[2];
    v31[3] = v130[1];
    v31[4] = v33;
    v31[2] = v32;
    swift_isUniquelyReferenced_nonNull_native();
    *&v130[0] = v26;
    v34 = sub_1D988B5F0();
    if (__OFADD__(v26[2], (v35 & 1) == 0))
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v36 = v34;
    v37 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48EB8, &unk_1D9934BF0);
    if (sub_1D992BE34())
    {
      break;
    }

LABEL_16:
    v26 = *&v130[0];
    if (v37)
    {
      *(*(*&v130[0] + 56) + 8 * v36) = v29;
    }

    else
    {
      *(*&v130[0] + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v26[6] + 4 * v36) = v21;
      *(v26[7] + 8 * v36) = v29;
      v40 = v26[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_58;
      }

      v26[2] = v42;
    }

    sub_1D98BA0B4(v131);
    v19 += 48;
    if (!--v25)
    {
      goto LABEL_25;
    }
  }

  v38 = sub_1D988B5F0();
  if ((v37 & 1) == (v39 & 1))
  {
    v36 = v38;
    goto LABEL_16;
  }

  type metadata accessor for SISchemaDeviceSensitivityState(0);
  result = sub_1D992BFC4();
  __break(1u);
  return result;
}

id sub_1D98E806C(id result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
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
    v7 = result;
    v8 = *(a5 + 48);
    v9 = sub_1D992B1E4();
    (*(*(v9 - 8) + 16))(v7, v8 + *(*(v9 - 8) + 72) * a2, v9);
    v10 = *(*(a5 + 56) + 24 * a2);
    v11 = v10;

    return v10;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_1D98E8150()
{
  result = qword_1ECB48EB0;
  if (!qword_1ECB48EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48EB0);
  }

  return result;
}

unint64_t sub_1D98E81A4()
{
  result = qword_1ECB479F8;
  if (!qword_1ECB479F8)
  {
    sub_1D992B1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB479F8);
  }

  return result;
}

unint64_t sub_1D98E81FC()
{
  result = qword_1ECB47920;
  if (!qword_1ECB47920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB47920);
  }

  return result;
}

uint64_t sub_1D98E8260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentifiableTag(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ProcessingError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1D98E8384(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 9))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D98E83D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1D98E8440()
{
  result = qword_1ECB48ED8;
  if (!qword_1ECB48ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48ED8);
  }

  return result;
}

void sub_1D98E8494()
{
  OUTLINED_FUNCTION_6_2();
  if (*(v1 + 16))
  {
    v2 = v1;
    v3 = v0;
    v4 = sub_1D992AE84();
    sub_1D9882D14(&qword_1ED8BF060, MEMORY[0x1EEE78928]);
    v14 = v3;
    sub_1D992B5C4();
    v15 = v2 + 56;
    OUTLINED_FUNCTION_26_5();
    v7 = ~v6;
    do
    {
      v8 = v5 & v7;
      if (((1 << (v5 & v7)) & *(v15 + (((v5 & v7) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      v9 = *(v4 - 8);
      MEMORY[0x1EEE9AC00](v9);
      v11 = &v14 - v10;
      (*(v9 + 16))(&v14 - v10, *(v2 + 48) + *(v12 + 72) * v8, v4);
      sub_1D9882D14(&qword_1ED8BF058, MEMORY[0x1EEE78930]);
      v13 = sub_1D992B5F4();
      (*(v9 + 8))(v11, v4);
      v5 = v8 + 1;
    }

    while ((v13 & 1) == 0);
  }

  OUTLINED_FUNCTION_7();
}

uint64_t sub_1D98E8654(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    sub_1D992C074();
    sub_1D992C0A4();
    v5 = sub_1D992C0C4();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 4 * v7) != v4);
  }

  return v2;
}

void sub_1D98E8704()
{
  OUTLINED_FUNCTION_6_2();
  v2 = v1;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = v0;
    sub_1D992BCC4();
  }

  else if (*(v1 + 16))
  {
    sub_1D992B1A4();
    sub_1D992BBC4();
    OUTLINED_FUNCTION_26_5();
    v6 = ~v5;
    do
    {
      v7 = v4 & v6;
      if (((1 << (v4 & v6)) & *(v2 + 56 + (((v4 & v6) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      v8 = *(*(v2 + 48) + 8 * v7);
      v9 = sub_1D992BBD4();

      v4 = v7 + 1;
    }

    while ((v9 & 1) == 0);
  }

  OUTLINED_FUNCTION_7();
}

void sub_1D98E87F8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v33 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D992BC84();
    sub_1D992B1A4();
    sub_1D98EB74C();
    sub_1D992B934();
    v2 = v28;
    v3 = v29;
    v4 = v30;
    v5 = v31;
    v6 = v32;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v24[2] = v4;
  v10 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v25 = v10;
  v11 = 0x1E69CF000;
  while (v2 < 0)
  {
    v15 = sub_1D992BCB4();
    if (!v15 || (v26 = v15, sub_1D992B1A4(), swift_dynamicCast(), v14 = v27, v11 = 0x1E69CF000uLL, !v27))
    {
LABEL_23:
      sub_1D9873850(v2);
      return;
    }

LABEL_18:
    v16 = [objc_allocWithZone(*(v11 + 1152)) init];
    if (v16)
    {
      v17 = v16;
      sub_1D992B174();
      v18 = sub_1D992BAF4();
      sub_1D98EC11C(v18, v19, v17);
      v25 = sub_1D986E35C(0, qword_1ED8BD948, 0x1E69CF640);
      v20 = sub_1D992AE84();
      v24[1] = v24;
      MEMORY[0x1EEE9AC00](*(*(v20 - 8) + 64));
      v22 = v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1D992B194();
      v23 = sub_1D98B5B94(v22);
      [v17 setUuid_];

      MEMORY[0x1DA739CE0]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D992B7D4();
      }

      sub_1D992B7F4();
      v10 = v33;
      goto LABEL_8;
    }
  }

  v12 = v5;
  v13 = v6;
  if (v6)
  {
LABEL_14:
    v6 = (v13 - 1) & v13;
    v14 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v13 = *(v3 + 8 * v5);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void *MetadataExtractor.__allocating_init(metastore:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC8];
  result[2] = a1;
  result[3] = v3;
  v4 = MEMORY[0x1E69E7CD0];
  result[4] = v3;
  result[5] = v4;
  return result;
}

uint64_t sub_1D98E8B3C(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v6 = 0;
  v56 = a1 & 0xC000000000000001;
  v57 = sub_1D98682F0();
  v54 = a1 & 0xFFFFFFFFFFFFFF8;
  v55 = a1;
  v52 = a2;
  while (1)
  {
    if (v57 == v6)
    {
    }

    if (v56)
    {
      v7 = MEMORY[0x1DA73A2C0](v6, v55);
    }

    else
    {
      if (v6 >= *(v54 + 16))
      {
        goto LABEL_42;
      }

      v7 = *(v55 + 8 * v6 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    v9 = *a2;
    if (*(*a2 + 16) && (v10 = sub_1D9889858(), (v11 & 1) != 0))
    {
      v12 = (*(v9 + 56) + 16 * v10);
      v13 = *v12;
      v14 = v12[1];
      v15 = *a3;
      if (*v12 >= *a3)
      {
        v16 = *a3;
      }

      else
      {
        v16 = *v12;
      }

      v51 = v16;
      if (v15 <= v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = *a3;
      }

      v49 = v13;
      v50 = v17;
      swift_isUniquelyReferenced_nonNull_native();
      v18 = *a2;
      v58 = *a2;
      v19 = sub_1D9889858();
      if (__OFADD__(*(v18 + 16), (v20 & 1) == 0))
      {
        goto LABEL_45;
      }

      v21 = v19;
      v22 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48F08, &qword_1D9934DC0);
      if (sub_1D992BE34())
      {
        v23 = sub_1D9889858();
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_47;
        }

        v21 = v23;
      }

      if (v22)
      {
        v25 = (v58[7] + 16 * v21);
        *v25 = v51;
        v25[1] = v50;
      }

      else
      {
        v58[(v21 >> 6) + 8] |= 1 << v21;
        *(v58[6] + 8 * v21) = v8;
        v41 = (v58[7] + 16 * v21);
        *v41 = v51;
        v41[1] = v50;
        v42 = v58[2];
        v38 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v38)
        {
          goto LABEL_46;
        }

        v58[2] = v43;
        v44 = v8;
      }

      a2 = v52;
      *v52 = v58;
      if (v49 <= v15 && v14 >= v15)
      {
      }

      else
      {
        swift_beginAccess();
        v46 = v8;
        sub_1D98B6C74(&v60, v46);
        v47 = v60;
        swift_endAccess();
      }
    }

    else
    {
      swift_beginAccess();
      v26 = v8;
      sub_1D98B6C74(&v60, v26);
      v27 = v60;
      swift_endAccess();

      v28 = *a3;
      swift_isUniquelyReferenced_nonNull_native();
      v29 = *a2;
      v59 = *a2;
      v30 = sub_1D9889858();
      if (__OFADD__(*(v29 + 16), (v31 & 1) == 0))
      {
        goto LABEL_43;
      }

      v32 = v30;
      v33 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48F08, &qword_1D9934DC0);
      if (sub_1D992BE34())
      {
        v34 = sub_1D9889858();
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_47;
        }

        v32 = v34;
      }

      v36 = vdupq_n_s64(v28);
      if (v33)
      {
        *(v59[7] + 16 * v32) = v36;
      }

      else
      {
        v59[(v32 >> 6) + 8] |= 1 << v32;
        *(v59[6] + 8 * v32) = v26;
        *(v59[7] + 16 * v32) = v36;
        v37 = v59[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_44;
        }

        v59[2] = v39;
        v40 = v26;
      }

      a2 = v52;
      *v52 = v59;
    }

    ++v6;
  }

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
LABEL_47:
  sub_1D992B1A4();
  result = sub_1D992BFC4();
  __break(1u);
  return result;
}

void *MetadataExtractor.init(metastore:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v1[2] = a1;
  v1[3] = v2;
  v3 = MEMORY[0x1E69E7CD0];
  v1[4] = v2;
  v1[5] = v3;
  return v1;
}

void sub_1D98E8F24()
{
  OUTLINED_FUNCTION_6_2();
  v17[1] = v1;
  OUTLINED_FUNCTION_5_0(v0 + 32, &v18);
  v2 = *(v0 + 32);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48F20, qword_1D9934DE0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17 - v8;
  v10 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  while (v5)
  {
    v12 = v11;
LABEL_9:
    v13 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v14 = v13 | (v12 << 6);
    v15 = *(v2 + 48);
    sub_1D992AE84();
    OUTLINED_FUNCTION_5();
    (*(v16 + 16))(v9, v15 + *(v16 + 72) * v14);
    *&v9[*(v6 + 48)] = *(*(v2 + 56) + 8 * v14);

    sub_1D98E90D0();
    sub_1D986B804(v9, &qword_1ECB48F20, qword_1D9934DE0);
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      OUTLINED_FUNCTION_7();
      return;
    }

    v5 = *(v2 + 64 + 8 * v12);
    ++v11;
    if (v5)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1D98E90D0()
{
  OUTLINED_FUNCTION_6_2();
  v2 = v0;
  v61 = v3;
  v5 = v4;
  if (v1)
  {
    v6 = v1;
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_5_0(v0 + 32, &v74);
  v46 = *(v0 + 32);
  if (!*(v46 + 16))
  {
LABEL_36:
    OUTLINED_FUNCTION_7();
    return;
  }

  v47 = sub_1D9889568();
  if ((v48 & 1) == 0)
  {
LABEL_35:

    goto LABEL_36;
  }

  v6 = *(*(v46 + 56) + 8 * v47);

LABEL_3:
  OUTLINED_FUNCTION_5_0(v2 + 24, &v73);
  v7 = *(v2 + 24);

  v8 = sub_1D98B0F68(v5, v7);

  v9 = v6 + 64;
  v10 = 1 << *(v6 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v6 + 64);

  OUTLINED_FUNCTION_5_0(v2 + 40, &v72);
  v13 = 0;
  v14 = (v10 + 63) >> 6;
  v55 = "nanosecondsSinceBoot:message:)";
  v54 = "Saving component: ";
  v53 = ", component Id: ";
  v52 = ", clusterIdentifier: ";
  v51 = ", substituting with: ";
  v50 = ", timestampRange: ";
  v57 = v6;
  v64 = v6 + 64;
  v56 = v14;
  v59 = v2;
  v58 = v5;
  v60 = v8;
  while (v12)
  {
LABEL_11:
    v16 = __clz(__rbit64(v12)) | (v13 << 6);
    v17 = *(*(v6 + 48) + 8 * v16);
    v18 = (*(v6 + 56) + 16 * v16);
    v19 = *v18;
    v65 = v18[1];
    v66 = v19;
    v20 = *(v2 + 40);
    v67 = v17;
    if ((v20 & 0xC000000000000001) != 0)
    {
      v21 = v17;

      v22 = sub_1D992BCC4();

      if (v22 & 1) != 0 || (v61)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (*(v20 + 16))
      {
        sub_1D992B1A4();
        v17;

        sub_1D992BBC4();
        v2 = v20 + 56;
        OUTLINED_FUNCTION_26_5();
        v8 = ~v24;
        while (1)
        {
          v14 = v23 & v8;
          if (((*(v2 + (((v23 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v8)) & 1) == 0)
          {
            break;
          }

          v25 = *(*(v20 + 48) + 8 * v14);
          v26 = sub_1D992BBD4();

          v23 = v14 + 1;
          if (v26)
          {

            OUTLINED_FUNCTION_19_5();
            v8 = v60;
            goto LABEL_23;
          }
        }

        OUTLINED_FUNCTION_19_5();
        v6 = v57;
        OUTLINED_FUNCTION_18_8();
      }

      else
      {
        v27 = v17;
      }

      if (v61)
      {
LABEL_23:
        if (v8)
        {
          v70 = v67;
          sub_1D992B014();
          v28 = v68;
        }

        else
        {
          v28 = 0;
        }

        Metastore.saveComponentId(componentId:clusterIdentifier:timestampRange:onClock:)();
        if (qword_1ED8BD6D0 != -1)
        {
          swift_once();
        }

        v63 = qword_1ECB49610;
        v68 = 0;
        v69 = 0xE000000000000000;
        sub_1D992BD64();
        OUTLINED_FUNCTION_14_11();
        MEMORY[0x1DA739C30](0xD000000000000012);
        sub_1D992B174();
        v29 = sub_1D992BAF4();
        MEMORY[0x1DA739C30](v29);

        v8 = 0xD000000000000012;
        OUTLINED_FUNCTION_14_11();
        MEMORY[0x1DA739C30]();
        v30 = sub_1D992AE84();
        OUTLINED_FUNCTION_6();
        v32 = v31;
        MEMORY[0x1EEE9AC00](*(v33 + 64));
        OUTLINED_FUNCTION_13();
        v36 = v35 - v34;
        sub_1D992B194();
        v62 = sub_1D9882D14(&qword_1ED8BD8D0, MEMORY[0x1EEE78948]);
        v37 = sub_1D992BF34();
        MEMORY[0x1DA739C30](v37);

        v38 = *(v32 + 8);
        v14 = v32 + 8;
        v38(v36, v30);
        OUTLINED_FUNCTION_14_11();
        MEMORY[0x1DA739C30]();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_20_0();
        MEMORY[0x1EEE9AC00](v39);
        v41 = &v49 - v40;
        if (v28)
        {
          v28 = v28;
          sub_1D992B194();
        }

        OUTLINED_FUNCTION_18_8();
        __swift_storeEnumTagSinglePayload(v41, v42, 1, v30);
        v43 = sub_1D992B6A4();
        MEMORY[0x1DA739C30](v43);

        OUTLINED_FUNCTION_14_11();
        MEMORY[0x1DA739C30](0xD000000000000012);
        v70 = v66;
        v71 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D70, &qword_1D99340B8);
        sub_1D992BE24();
        MEMORY[0x1DA739C30](0x636F6C436E6F202CLL, 0xEB00000000203A6BLL);
        v44 = sub_1D992BF34();
        MEMORY[0x1DA739C30](v44);

        sub_1D986A454(v68, v69, 0xD000000000000067, v51 | 0x8000000000000000, 0xD000000000000031, v50 | 0x8000000000000000);

        v2 = v59;
        OUTLINED_FUNCTION_97(v59 + 40, &v68);
        v45 = v67;
        v21 = sub_1D98EB07C(v67);
        swift_endAccess();

        v6 = v57;
        goto LABEL_31;
      }

      v21 = v67;
    }

LABEL_31:
    v12 &= v12 - 1;

    v9 = v64;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v14)
    {

      goto LABEL_35;
    }

    v12 = *(v9 + 8 * v15);
    ++v13;
    if (v12)
    {
      v13 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1D98E97BC(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_5_0(v1 + 24, v11);
  v4 = *(v1 + 24);
  if (!*(v4 + 16))
  {
    goto LABEL_5;
  }

  v5 = sub_1D9889568();
  if ((v6 & 1) == 0)
  {

LABEL_5:
    sub_1D992B214();
    swift_allocObject();
    v7 = sub_1D992B204();
    OUTLINED_FUNCTION_97(v2 + 24, v10);

    swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 24);
    sub_1D989DDBC(v7, a1);
    *(v2 + 24) = v9;
    swift_endAccess();
    return v7;
  }

  v7 = *(*(v4 + 56) + 8 * v5);

  return v7;
}

id sub_1D98E98AC(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69CF488]) init];
  if (v3)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69CF480]) init];
    if (v4)
    {
      v5 = v4;
      sub_1D992B174();
      v6 = sub_1D992BAF4();
      sub_1D98EC11C(v6, v7, v5);
      sub_1D986E35C(0, qword_1ED8BD948, 0x1E69CF640);
      v8 = sub_1D992AE84();
      OUTLINED_FUNCTION_9(v8);
      MEMORY[0x1EEE9AC00](*(v9 + 64));
      OUTLINED_FUNCTION_13();
      v12 = v11 - v10;
      sub_1D992B194();
      v13 = sub_1D98B5B94(v12);
      [v5 setUuid_];

      [v3 setRepresentativeId_];
      sub_1D98E87F8(a2, v14);
      sub_1D98EC180(v15, v3, &qword_1ECB478D0, 0x1E69CF480, &selRef_setComponentIds_);
    }

    else
    {

      return 0;
    }
  }

  return v3;
}

void sub_1D98E9A1C()
{
  OUTLINED_FUNCTION_6_2();
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69CF498]) init];
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E69CF490]) init];
  if (!v3)
  {

LABEL_17:
    OUTLINED_FUNCTION_7();
    return;
  }

  v45 = v3;
  sub_1D986E35C(0, qword_1ED8BD948, 0x1E69CF640);
  sub_1D992AE84();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v1;
  v43 = v7;
  v8 = *(v7 + 16);
  v44 = v9;
  v41 = v7 + 16;
  v39 = v5;
  v40 = v8;
  (v8)(v6, v1);
  v10 = sub_1D98B5B94(v6);
  [v2 setClockIdentifier_];

  v11 = sub_1D992B024();
  v12 = v11;
  v13 = MEMORY[0x1E69E7CC0];
  v46 = MEMORY[0x1E69E7CC0];
  v14 = v11 + 64;
  v15 = 1 << *(v11 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v11 + 64);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  while (v17)
  {
LABEL_11:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = (v19 << 9) | (8 * v21);
    v23 = *(*(v12 + 56) + v22);
    v24 = *(*(v12 + 48) + v22);

    v25 = sub_1D98E98AC(v24, v23);

    if (v25)
    {
      MEMORY[0x1DA739CE0]();
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D992B7D4();
      }

      sub_1D992B7F4();
      v13 = v46;
    }
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v18)
    {

      v26 = v45;
      sub_1D98EC180(v13, v45, &qword_1ECB478D8, 0x1E69CF488, &selRef_setConnectedComponents_);
      [v2 setMsg_];
      v27 = v39;
      MEMORY[0x1EEE9AC00](v28);
      v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
      v30 = v44;
      v31 = v40;
      v40(&v39 - v29, v42, v44);
      v32 = mach_absolute_time();
      SiriAnalyticsMachAbsoluteTimeGetNanoseconds(v32);
      v33 = objc_allocWithZone(sub_1D992B164());
      sub_1D992B144();
      MEMORY[0x1EEE9AC00](v34);
      sub_1D992AE74();
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      OUTLINED_FUNCTION_9(v35);
      OUTLINED_FUNCTION_20_0();
      MEMORY[0x1EEE9AC00](v36);
      v38 = &v39 - v37;
      v31(&v39 - v37, &v39 - v29, v30);
      __swift_storeEnumTagSinglePayload(v38, 0, 1, v30);
      objc_allocWithZone(sub_1D992B104());
      sub_1D992B0A4();

      (*(v43 + 8))(&v39 - v29, v30);
      goto LABEL_17;
    }

    v17 = *(v14 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1D98E9E5C()
{
  OUTLINED_FUNCTION_6_2();
  v1 = sub_1D992AE84();
  sub_1D992B104();
  sub_1D9882D14(&qword_1ED8BF060, MEMORY[0x1EEE78928]);
  v2 = sub_1D992B5B4();
  OUTLINED_FUNCTION_5_0(v0 + 24, &v55);
  v3 = *(v0 + 24);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48F10, &qword_1D9934DC8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20_0();
  v46 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v42 - v9;
  v10 = v4 + 63;
  v11 = v3 + 64;
  v12 = v10 >> 6;
  v44 = v1 - 8;

  v13 = 0;
  v42 = v3 + 64;
  v43 = v12;
  while (v6)
  {
    v53 = v2;
LABEL_9:
    v15 = __clz(__rbit64(v6)) | (v13 << 6);
    v16 = *(v3 + 48);
    v17 = *(v1 - 8);
    v18 = v17;
    v49 = *(v17 + 72);
    v20 = v17 + 16;
    v19 = *(v17 + 16);
    v21 = v3;
    v22 = v45;
    v50 = v20;
    v51 = v19;
    v19(v45, v16 + v49 * v15, v1);
    v52 = &v42;
    v23 = *(v21 + 56);
    v24 = v23[v15];
    MEMORY[0x1EEE9AC00](v23);
    OUTLINED_FUNCTION_8();
    v27 = v25 - v26;
    v28 = *(v47 + 48);
    (*(v18 + 32))(v25 - v26, v22, v1);
    *(v27 + v28) = v24;

    sub_1D98E9A1C();
    if (v29)
    {
      v48 = v29;
      v30 = v53;
      swift_isUniquelyReferenced_nonNull_native();
      v54 = v30;
      v31 = sub_1D9889568();
      if (__OFADD__(v30[2], (v32 & 1) == 0))
      {
        goto LABEL_24;
      }

      v33 = v31;
      v34 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48F18, &unk_1D9934DD0);
      if (sub_1D992BE34())
      {
        v35 = sub_1D9889568();
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_26;
        }

        v33 = v35;
      }

      v3 = v21;
      v2 = v54;
      v11 = v42;
      if (v34)
      {
        v37 = v54[7];
        v38 = *(v37 + 8 * v33);
        *(v37 + 8 * v33) = v48;
      }

      else
      {
        v54[(v33 >> 6) + 8] |= 1 << v33;
        v51(v2[6] + v33 * v49, v27, v1);
        *(v2[7] + 8 * v33) = v48;
        v39 = v2[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_25;
        }

        v2[2] = v41;
      }

      v12 = v43;
    }

    else
    {
      v12 = v43;
      v3 = v21;
      v2 = v53;
    }

    v6 &= v6 - 1;
    sub_1D986B804(v27, &qword_1ECB48F10, &qword_1D9934DC8);
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      OUTLINED_FUNCTION_7();
      return;
    }

    v6 = *(v11 + 8 * v14);
    ++v13;
    if (v6)
    {
      v53 = v2;
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1D992BFC4();
  __break(1u);
}

void sub_1D98EA244()
{
  OUTLINED_FUNCTION_6_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v73 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_9(v73);
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  v68 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v67 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v67 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48EE0, &qword_1D9934D98);
  OUTLINED_FUNCTION_6();
  v14 = v13;
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v67 - v16;
  v74 = v4;
  v95[0] = v4;
  v18 = MEMORY[0x1E69E7CC0];
  v94 = MEMORY[0x1E69E7CC0];
  v69 = v6;
  v86 = v0;
  v19 = sub_1D98E97BC(v6);
  v70 = v2;
  v20 = v19;
  v21 = sub_1D992B1F4();
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v18;
  }

  v85 = *(v22 + 2);
  if (v85)
  {
    v23 = 0;
    v84 = &v22[(*(v14 + 80) + 32) & ~*(v14 + 80)];
    v83 = v14 + 16;
    v82 = (v14 + 8);
    v78 = v12;
    v77 = v14;
    v79 = v19;
    v76 = v17;
    v75 = v22;
    do
    {
      if (v23 >= *(v22 + 2))
      {
        goto LABEL_54;
      }

      (*(v14 + 16))(v17, &v84[*(v14 + 72) * v23], v12);
      v24 = sub_1D992B294();
      MEMORY[0x1DA739CE0](v24);
      OUTLINED_FUNCTION_21_5();
      if (v25)
      {
        OUTLINED_FUNCTION_22_7();
      }

      sub_1D992B7F4();
      v26 = sub_1D992B284();
      MEMORY[0x1DA739CE0](v26);
      OUTLINED_FUNCTION_21_5();
      if (v25)
      {
        OUTLINED_FUNCTION_22_7();
      }

      sub_1D992B7F4();

      sub_1D992B294();
      (*v82)(v17, v12);
      v18 = *&v88[0];
      v93 = *&v88[0];
      v20 = v19;
      sub_1D992B014();

      v27 = v90;
      if (v90)
      {
        v20 = sub_1D992B024();

        if (*(v20 + 16))
        {
          v28 = sub_1D9889858();
          if (v29)
          {
            v17 = *(*(v20 + 56) + 8 * v28);

            v81 = v17;
            if ((v17 & 0xC000000000000001) != 0)
            {
              swift_unknownObjectRetain();
              sub_1D992BC84();
              sub_1D992B1A4();
              sub_1D98EB74C();
              sub_1D992B934();
              v17 = v95[1];
              v30 = v95[2];
              v20 = v95[3];
              v22 = v95[4];
              v18 = v95[5];
            }

            else
            {
              v31 = -1 << *(v17 + 32);
              v30 = v17 + 56;
              v20 = ~v31;
              v32 = -v31;
              if (v32 < 64)
              {
                v33 = ~(-1 << v32);
              }

              else
              {
                v33 = -1;
              }

              v18 = (v33 & *(v17 + 56));

              v22 = 0;
            }

            v80 = v20;
            v34 = (v20 + 64) >> 6;
            if (v17 < 0)
            {
              goto LABEL_29;
            }

            while (1)
            {
              v35 = v22;
              v36 = v18;
              v37 = v22;
              if (!v18)
              {
                break;
              }

LABEL_27:
              v14 = (v36 - 1) & v36;
              v20 = *(*(v17 + 48) + ((v37 << 9) | (8 * __clz(__rbit64(v36)))));
              if (!v20)
              {
                goto LABEL_34;
              }

              while (1)
              {
                OUTLINED_FUNCTION_97(v86 + 40, &v90);
                v39 = v20;
                sub_1D98B6C74(v88, v39);
                v20 = *&v88[0];
                swift_endAccess();

                v22 = v37;
                v18 = v14;
                if ((v17 & 0x8000000000000000) == 0)
                {
                  break;
                }

LABEL_29:
                v20 = v17 & 0x7FFFFFFFFFFFFFFFLL;
                v38 = sub_1D992BCB4();
                if (v38)
                {
                  *&v88[0] = v38;
                  sub_1D992B1A4();
                  swift_dynamicCast();
                  v20 = v90;
                  v37 = v22;
                  v14 = v18;
                  if (v90)
                  {
                    continue;
                  }
                }

                goto LABEL_34;
              }
            }

            while (1)
            {
              v37 = (v35 + 1);
              if (__OFADD__(v35, 1))
              {
                __break(1u);
LABEL_54:
                __break(1u);
LABEL_55:
                swift_once();
LABEL_41:
                v50 = __swift_project_value_buffer(v18, qword_1ECB496F0);
                (*(v14 + 16))(v20, v50, v18);
                sub_1D986B804(v23, &qword_1ECB481D0, &qword_1D992F9F0);
                if (__swift_getEnumTagSinglePayload(v22, 1, v18) != 1)
                {
                  sub_1D986B804(v22, &qword_1ECB481D0, &qword_1D992F9F0);
                }

                goto LABEL_44;
              }

              if (v37 >= v34)
              {
                break;
              }

              v36 = *(v30 + 8 * v37);
              ++v35;
              if (v36)
              {
                goto LABEL_27;
              }
            }

            v18 = 0;
LABEL_34:

            sub_1D9873850(v17);

            v19 = v79;
            v12 = v78;
            v14 = v77;
            v17 = v76;
            v22 = v75;
            goto LABEL_35;
          }
        }
      }

      else
      {
      }

LABEL_35:
      ++v23;
    }

    while (v23 != v85);
  }

  v40 = v70;
  v93 = v70;
  sub_1D986E35C(0, &qword_1ED8BD940, 0x1E69CF600);
  v41 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48EE8, &qword_1D9934DA0);
  if (swift_dynamicCast())
  {
    sub_1D986D53C(v88, &v90);
    __swift_project_boxed_opaque_existential_1(&v90, v92);
    v42 = sub_1D992B224();
    sub_1D98EB6A0(v42);
    __swift_destroy_boxed_opaque_existential_1(&v90);
  }

  else
  {
    v89 = 0;
    memset(v88, 0, sizeof(v88));
    sub_1D986B804(v88, &qword_1ECB48EF0, &unk_1D9934DA8);
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v43);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v47 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = &v67 - v47;
  v18 = sub_1D992AE84();
  __swift_storeEnumTagSinglePayload(&v67 - v47, 1, 1, v18);
  v14 = *(v18 - 1);
  MEMORY[0x1EEE9AC00](*(v14 + 64));
  OUTLINED_FUNCTION_13();
  v20 = v49 - v48;
  MEMORY[0x1EEE9AC00](v48);
  v22 = &v67 - v47;
  sub_1D9879FF8(&v67 - v47, &v67 - v47);
  if (__swift_getEnumTagSinglePayload(&v67 - v47, 1, v18) == 1)
  {
    v17 = v73;
    if (qword_1ECB47FB0 != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_41;
  }

  sub_1D986B804(&v67 - v47, &qword_1ECB481D0, &qword_1D992F9F0);
  (*(v14 + 32))(v20, &v67 - v47, v18);
  v17 = v73;
LABEL_44:
  v51 = v71;
  (*(v14 + 32))(v71, v20, v18);
  v52 = v74;
  *(v51 + *(v17 + 20)) = v74;
  *(v51 + *(v17 + 24)) = 0;
  v53 = v72;
  sub_1D98ACCA0(v51, v72);
  v54 = sub_1D9908488(5000000000000000000, 0);
  sub_1D98C7A84(v53);
  if (!v54)
  {
    v55 = mach_absolute_time();
    LOBYTE(v90) = 0;
    v56 = v68;
    MonotonicTimestamp.init(cpuTicks:clockType:)(v55, &v90);
    v57 = *(v56 + *(v17 + 20));
    sub_1D98C7A84(v56);
    if (qword_1ED8BD6F0 != -1)
    {
      swift_once();
    }

    v90 = 0;
    v91 = 0xE000000000000000;
    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD00000000000001FLL, 0x80000001D993BF20);
    *&v88[0] = v52;
    v58 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v58);

    MEMORY[0x1DA739C30](0xD000000000000015, 0x80000001D993BF40);
    *&v88[0] = v57;
    v59 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v59);

    sub_1D986A454(v90, v91, 0xD000000000000067, 0x80000001D993BF60, 0xD00000000000002ELL, 0x80000001D993BFD0);

    v95[0] = v57;
  }

  v60 = v94;
  if (sub_1D98682F0())
  {
    v61 = v86;
    OUTLINED_FUNCTION_5_0(v86 + 32, &v90);

    v62 = v69;
    v63 = sub_1D98B3974();

    v64 = MEMORY[0x1E69E7CC8];
    if (v63)
    {
      v64 = v63;
    }

    v93 = v64;

    sub_1D98E8B3C(v60, &v93, v95, v61);

    v65 = v93;
    OUTLINED_FUNCTION_97(v61 + 32, v88);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = *(v61 + 32);
    sub_1D989DEF4(v65, v62, isUniquelyReferenced_nonNull_native);
    *(v61 + 32) = v87;
    swift_endAccess();
  }

  OUTLINED_FUNCTION_7();
}

uint64_t MetadataExtractor.deinit()
{

  return v0;
}

uint64_t MetadataExtractor.__deallocating_deinit()
{
  MetadataExtractor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D98EAE44(uint64_t a1, char a2)
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

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1D992BC94();
LABEL_9:
  result = sub_1D992BD84();
  *v2 = result;
  return result;
}

uint64_t sub_1D98EAEF0(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = v3;
  v8 = *v3;
  sub_1D992C074();
  sub_1D992B6D4();
  sub_1D992C0C4();
  v9 = v8 + 56;
  OUTLINED_FUNCTION_26_5();
  v12 = v11 & ~v10;
  if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v23 = v4;
  v13 = ~v10;
  v14 = *(v8 + 48);
  while (1)
  {
    v15 = v14 + 24 * v12;
    v16 = *(v15 + 16);
    v17 = *(v15 + 17);
    v18 = *v15 == a1 && *(v15 + 8) == a2;
    if (v18 || (sub_1D992BF64()) && v16 == a3 && ((v17 ^ ((a3 & 0x100) >> 8)) & 1) == 0)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v9 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v23;
  v24 = *v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D98B71B0();
    v21 = v24;
  }

  v19 = *(*(v21 + 48) + 24 * v12);
  sub_1D98EB330(v12);
  *v23 = v24;
  return v19;
}

uint64_t sub_1D98EB07C(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_1D992B1A4();
    v9 = sub_1D992BBC4();
    v10 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v11 = v9 & v10;
      if (((*(v4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
      {
        break;
      }

      v12 = *(*(v4 + 48) + 8 * v11);
      v13 = sub_1D992BBD4();

      if (v13)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *v2;
        v17 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D98B7400();
          v15 = v17;
        }

        v8 = *(*(v15 + 48) + 8 * v11);
        sub_1D98EB50C(v11);
        *v2 = v17;
        return v8;
      }

      v9 = v11 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = a1;
  v7 = sub_1D992BCC4();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = sub_1D98EB1EC(v5, v6);

  return v8;
}

uint64_t sub_1D98EB1EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_1D992BC94();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1D98B8C80(v5, v4);
  v14 = v6;

  v7 = sub_1D992BBC4();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      break;
    }

    sub_1D992B1A4();
    v10 = *(*(v6 + 48) + 8 * v9);
    v11 = sub_1D992BBD4();

    if (v11)
    {

      v12 = *(*(v6 + 48) + 8 * v9);
      sub_1D98EB50C(v9);
      if (sub_1D992BBD4())
      {
        *v3 = v14;
        return v12;
      }

      __break(1u);
      break;
    }

    v7 = v9 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D98EB330(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D992BC64();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D992C074();

        sub_1D992B6D4();
        v10 = sub_1D992C0C4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = v14 + 24 * v2;
            v16 = (v14 + 24 * v6);
            if (24 * v2 < (24 * v6) || v15 >= v16 + 24 || v2 != v6)
            {
              v19 = *v16;
              *(v15 + 16) = *(v16 + 2);
              *v15 = v19;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1D98EB50C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D992BC64();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1D992BBC4();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1D98EB6A0(unint64_t a1)
{
  v3 = sub_1D9866E40();
  v4 = sub_1D9866E40();
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1D98EAE44(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1D98EC204(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_1D98EB74C()
{
  result = qword_1ECB47A00;
  if (!qword_1ECB47A00)
  {
    sub_1D992B1A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47A00);
  }

  return result;
}

void sub_1D98EB7A4(uint64_t a1)
{
  v6 = a1;
  v7 = *(a1 + 16);
  v8 = sub_1D9866E40();
  v9 = __OFADD__(v8, v7);
  v10 = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1D98EAE44(v10, 1);
  v3 = *v1;
  v2 = *v1 & 0xFFFFFFFFFFFFFF8;
  v11 = (*(v2 + 0x18) >> 1) - *(v2 + 0x10);
  sub_1D987B4E4();
  if (v12 < v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v12)
  {
    v13 = *(v2 + 16);
    v9 = __OFADD__(v13, v12);
    v14 = v13 + v12;
    if (v9)
    {
      __break(1u);
LABEL_13:
      v17 = (v2 + 64) >> 6;
      while (1)
      {
        v18 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_33;
        }

        if (v18 >= v17)
        {
          goto LABEL_7;
        }

        ++v7;
        if (*(v11 + 8 * v18))
        {
          OUTLINED_FUNCTION_11_15();
          v7 = v19;
          goto LABEL_18;
        }
      }
    }

    *(v2 + 16) = v14;
  }

  v6 = v28;
  if (v12 != v11)
  {
LABEL_7:
    sub_1D9873850(v6);
    *v1 = v3;
    return;
  }

LABEL_10:
  v4 = *(v2 + 16);
  v11 = v29;
  v2 = v30;
  v7 = v31;
  if (!v32)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_20_5();
  v16 = v15 | (v31 << 6);
  v17 = (v30 + 64) >> 6;
LABEL_18:
  v20 = *(*(v6 + 48) + 8 * v16);
  v21 = v20;
LABEL_19:
  if (v4 + 1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D992B7D4();
  }

  v3 = *v1;
  v26 = *v1 & 0xFFFFFFFFFFFFFF8;
  v27 = *(v26 + 0x18) >> 1;
  while (1)
  {
    if (v4 >= v27)
    {
      *(v26 + 16) = v4;
      goto LABEL_19;
    }

    *(v26 + 32 + 8 * v4++) = v20;
    if (!v5)
    {
      break;
    }

LABEL_28:
    OUTLINED_FUNCTION_16_8();
    v20 = *(*(v6 + 48) + ((v23 << 9) | (8 * v24)));
    v25 = v20;
  }

  while (1)
  {
    v22 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v22 >= v17)
    {
      *(v26 + 16) = v4;
      goto LABEL_7;
    }

    v5 = *(v11 + 8 * v22);
    ++v7;
    if (v5)
    {
      v7 = v22;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_1D98EB9B4()
{
  OUTLINED_FUNCTION_6_2();
  v7 = v6;
  v8 = *(v6 + 2);
  v9 = *(*v1 + 16);
  if (__OFADD__(v9, v8))
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1D986FE38(v9 + v8, 1, sub_1D98BE160);
  v0 = *v1;
  v10 = *(*v1 + 16);
  v2 = sub_1D992AE84();
  OUTLINED_FUNCTION_6();
  v4 = v11;
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v3 = *(v12 + 72);
  v13 = (*(v0 + 24) >> 1) - v10;
  sub_1D987B090();
  if (v14 < v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v14)
  {
    v17 = *(v0 + 16);
    v18 = __OFADD__(v17, v14);
    v19 = v17 + v14;
    if (v18)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v0 + 16) = v19;
  }

  if (v14 != v13)
  {
    sub_1D9873850(v68);
LABEL_8:
    *v1 = v0;
    OUTLINED_FUNCTION_7();
    return;
  }

LABEL_11:
  v54 = v5;
  v8 = *(v0 + 16);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v20);
  OUTLINED_FUNCTION_20_0();
  v63 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v7 = v51 - v23;
  v15 = v69;
  v58 = v68;
  v16 = v70;
  v5 = v71;
  v56 = v69;
  v64 = v51 - v23;
  v51[1] = v24;
  v51[0] = v70;
  if (v72)
  {
    v25 = v4;
    OUTLINED_FUNCTION_20_5();
    v27 = v26 | (v5 << 6);
    v55 = (v28 + 64) >> 6;
LABEL_19:
    v7 = v64;
    (*(v25 + 16))(v64, *(v58 + 48) + v27 * v3, v2);
    v31 = 0;
LABEL_20:
    __swift_storeEnumTagSinglePayload(v7, v31, 1, v2);
    v59 = (v25 + 32);
    v57 = (v25 + 16);
    v32 = (v25 + 8);
    v52 = (v25 + 8);
    v53 = v25;
    v33 = v7;
    while (2)
    {
      MEMORY[0x1EEE9AC00](v32);
      OUTLINED_FUNCTION_8();
      v36 = v34 - v35;
      sub_1D9879FF8(v33, v34 - v35);
      if (__swift_getEnumTagSinglePayload(v36, 1, v2) != 1)
      {
        sub_1D986B804(v36, &qword_1ECB481D0, &qword_1D992F9F0);
        v37 = *(v0 + 24);
        v61 = v37 >> 1;
        if ((v37 >> 1) < v8 + 1)
        {
          sub_1D98BE160(v37 > 1);
          v0 = v50;
          v61 = *(v50 + 24) >> 1;
        }

        v66 = v8;
        v60 = v0 + v54;
        v38 = *(v53 + 64);
        v62 = v38;
        while (1)
        {
          MEMORY[0x1EEE9AC00](v38);
          OUTLINED_FUNCTION_8();
          v41 = v39 - v40;
          v67 = v51;
          MEMORY[0x1EEE9AC00](v51);
          OUTLINED_FUNCTION_8();
          v44 = v42 - v43;
          sub_1D9879FF8(v33, v42 - v43);
          if (__swift_getEnumTagSinglePayload(v44, 1, v2) == 1)
          {
            break;
          }

          v65 = v51;
          v45 = *v59;
          (*v59)(v41, v44, v2);
          v8 = v66;
          if (v66 >= v61)
          {
            (*v52)(v41, v2);
            v33 = v64;
            goto LABEL_39;
          }

          sub_1D986B804(v64, &qword_1ECB481D0, &qword_1D992F9F0);
          v45(v60 + v8 * v3, v41, v2);
          if (!v4)
          {
            v33 = v64;
            v36 = v65;
            while (1)
            {
              v46 = v5 + 1;
              if (__OFADD__(v5, 1))
              {
                break;
              }

              if (v46 >= v55)
              {
                v4 = 0;
                v49 = 1;
                goto LABEL_35;
              }

              v4 = *(v56 + 8 * v46);
              ++v5;
              if (v4)
              {
                v5 = v46;
                goto LABEL_34;
              }
            }

            __break(1u);
            goto LABEL_41;
          }

          v33 = v64;
LABEL_34:
          OUTLINED_FUNCTION_16_8();
          (*v57)(v33, *(v58 + 48) + (v48 | (v47 << 6)) * v3, v2);
          v49 = 0;
LABEL_35:
          v66 = v8 + 1;
          __swift_storeEnumTagSinglePayload(v33, v49, 1, v2);
        }

        sub_1D986B804(v44, &qword_1ECB481D0, &qword_1D992F9F0);
        v8 = v66;
        v32 = v67;
LABEL_39:
        *(v0 + 16) = v8;
        continue;
      }

      break;
    }

LABEL_41:
    sub_1D986B804(v33, &qword_1ECB481D0, &qword_1D992F9F0);
    sub_1D9873850(v58);
    sub_1D986B804(v36, &qword_1ECB481D0, &qword_1D992F9F0);
    goto LABEL_8;
  }

LABEL_14:
  v55 = (v16 + 64) >> 6;
  while (1)
  {
    v29 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v29 >= ((v16 + 64) >> 6))
    {
      v25 = v4;
      v4 = 0;
      v31 = 1;
      goto LABEL_20;
    }

    ++v5;
    if (*(v15 + 8 * v29))
    {
      v25 = v4;
      OUTLINED_FUNCTION_11_15();
      v5 = v30;
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_1D98EBF2C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_44(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D986FE38(v4, 1, sub_1D98BDB08);
  OUTLINED_FUNCTION_15_6();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_28();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_5_19();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_13_10();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1D98EBFD0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_44(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D986FE38(v4, 1, sub_1D98BE018);
  OUTLINED_FUNCTION_15_6();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_28();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_5_19();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_13_10();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1D98EC074(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_44(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D986FE38(v4, 1, sub_1D98BDCF4);
  OUTLINED_FUNCTION_15_6();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_28();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_5_19();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_13_10();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1D98EC11C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D992B614();

  [a3 setComponent_];
}

void sub_1D98EC180(uint64_t a1, void *a2, unint64_t *a3, void *a4, SEL *a5)
{
  sub_1D986E35C(0, a3, a4);
  v7 = sub_1D992B7A4();

  [a2 *a5];
}

uint64_t sub_1D98EC204(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1D992BC94();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1D9866E40();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1D992B1A4();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1D98EC3FC();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48EF8, &qword_1D9934DB8);
          v9 = sub_1D98EC368(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1D98EC368(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1D98EAEE4(a3);
  sub_1D98BF364();
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1DA73A2C0](a2, a3);
  }

  *a1 = v7;
  return sub_1D98EC3F4;
}

unint64_t sub_1D98EC3FC()
{
  result = qword_1ECB48F00;
  if (!qword_1ECB48F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB48EF8, &qword_1D9934DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48F00);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_7()
{

  return sub_1D992B7D4();
}

uint64_t sub_1D98EC4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48968, &qword_1D9932380);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_22_8();
  sub_1D9866D34(a2, v3, &qword_1ECB48968, &qword_1D9932380);
  v9 = type metadata accessor for TagsTable.Predicate(0);
  OUTLINED_FUNCTION_19_1(v3, 1, v9);
  if (v10)
  {

    sub_1D986B804(v3, &qword_1ECB48968, &qword_1D9932380);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
  }

  else
  {
    *(&v18 + 1) = v9;
    v19 = &off_1F5516A58;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
    sub_1D986C22C(v3, boxed_opaque_existential_1);
  }

  a3[3] = &type metadata for SQLUpdate;
  a3[4] = &off_1F5516B88;
  v12 = swift_allocObject();
  *a3 = v12;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0;
  *(v12 + 64) = 0u;
  *(v12 + 16) = 1936154996;
  *(v12 + 24) = 0xE400000000000000;
  sub_1D986C284(0x5F726574746573, 0xE700000000000000, a1);
  *(v12 + 32) = 0x5F726574746573;
  *(v12 + 40) = v13;
  *(v12 + 48) = v14;
  *(v12 + 56) = v15;
  return sub_1D986D144(&v17, v12 + 64);
}

uint64_t sub_1D98EC648()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48978, &qword_1D99323A8);
  OUTLINED_FUNCTION_9(v2);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_21_6();
  sub_1D9866D34(v1, v0, &qword_1ECB48978, &qword_1D99323A8);
  v4 = sub_1D992AE84();
  OUTLINED_FUNCTION_19_1(v0, 1, v4);
  if (!v5)
  {
    OUTLINED_FUNCTION_0();
    v7 = v6;
    MEMORY[0x1EEE9AC00](*(v8 + 64));
    OUTLINED_FUNCTION_13();
    v11 = v10 - v9;
    (*(v7 + 32))(v10 - v9, v0, v4);
    sub_1D992AE24();
    (*(v7 + 8))(v11, v4);
  }

  return OUTLINED_FUNCTION_27();
}

uint64_t sub_1D98EC7B4(uint64_t a1)
{
  v2 = *(type metadata accessor for LogicalClocksTable.Record(0) - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7CC0];
  v69 = MEMORY[0x1E69E7CC0];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v58 = *(v4 + 72);
    v56 = v6 + 8;
    v10 = MEMORY[0x1E69E7CC8];
    v57 = v3;
    v11 = v3;
    v61 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      v60 = v7;
      v65 = v8;
      v66 = v10;
      v64 = v9;
      sub_1D986BC08(v9, v6);
      v12 = sub_1D992AE84();
      v63 = &v56;
      v13 = *(v12 - 8);
      v14 = v13;
      v15 = v13[8];
      MEMORY[0x1EEE9AC00](v13);
      v59 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
      v16 = &v56 - v59;
      v17 = v11[6];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      v62 = &v56;
      MEMORY[0x1EEE9AC00](((*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
      v20 = &v56 - v19;
      v21 = v12;
      sub_1D9866D34(&v6[v17], &v56 - v19, &qword_1ECB481D0, &qword_1D992F9F0);
      if (__swift_getEnumTagSinglePayload(v20, 1, v12) == 1)
      {
        sub_1D986B804(v20, &qword_1ECB481D0, &qword_1D992F9F0);
        v63 = &v56;
        MEMORY[0x1EEE9AC00](&v56);
        v22 = v59;
        v23 = &v56 - v59;
        v24 = v14[2];
        v25 = v61;
        v24(&v56 - v59, v61, v21);
        v62 = &v56;
        MEMORY[0x1EEE9AC00](v11[5]);
        v26 = &v56 - v22;
        v24(&v56 - v22, (v25 + v27), v21);
        v28 = v11[8];
        v29 = v25 + v11[7];
        v30 = *v29;
        v31 = *(v29 + 8);
        v32 = *(v29 + 16);
        v33 = *(v29 + 24);
        v34 = *(v29 + 25);
        if (v34)
        {
          v35 = 0;
        }

        else
        {
          v35 = v32;
        }

        v36 = v34 | v33;
        if ((v34 | v31))
        {
          v37 = 0;
        }

        else
        {
          v37 = v30;
        }

        v38 = *(v25 + v28);
        v39 = *(v25 + v28 + 8);
        v40 = v56[v11[9]];
        type metadata accessor for LogicalClockRecord(0);
        swift_allocObject();
        sub_1D98C5504(v23, v26, v37, v35, v36 & 1, v38, v39, 0, v40);
        MEMORY[0x1DA739CE0]();
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D992B7D4();
        }

        sub_1D992B7F4();
        v6 = v61;
        sub_1D9870FB8(v61, type metadata accessor for LogicalClocksTable.Record);
        v7 = v69;
        v10 = v66;
      }

      else
      {
        v41 = v61;
        (v14[4])(v16, v20, v12);
        v42 = v66;
        if (*(v66 + 16) && (v43 = sub_1D9889568(), (v44 & 1) != 0))
        {
          v68 = *(*(v42 + 56) + 8 * v43);
        }

        else
        {
          v68 = MEMORY[0x1E69E7CD0];
        }

        v62 = &v56;
        MEMORY[0x1EEE9AC00](&v56);
        MEMORY[0x1EEE9AC00](&v56);
        v6 = v41;
        (v14[2])(&v56 - v45, v41, v12);
        sub_1D98B6650();
        v46 = v14[1];
        v46(&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
        v47 = v68;
        v48 = v66;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = v48;
        sub_1D989DF08(v47, v16, isUniquelyReferenced_nonNull_native);
        v46(v16, v21);
        sub_1D9870FB8(v41, type metadata accessor for LogicalClocksTable.Record);
        v10 = v67;
        v11 = v57;
        v7 = v60;
      }

      v9 = v64 + v58;
      v8 = v65 - 1;
    }

    while (v65 != 1);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1D98682F0();
  if (!result)
  {
    goto LABEL_32;
  }

  v51 = result;
  if (result >= 1)
  {
    for (i = 0; i != v51; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x1DA73A2C0](i, v7);
      }

      else
      {
        v53 = *(v7 + 8 * i + 32);
      }

      if (*(v10 + 16) && (v54 = sub_1D9889568(), (v55 & 1) != 0))
      {
        *(v53 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_derivativeClockIDs) = *(*(v10 + 56) + 8 * v54);
      }

      else
      {
      }
    }

LABEL_32:

    return v7;
  }

  __break(1u);
  return result;
}

void sub_1D98ECE2C()
{
  OUTLINED_FUNCTION_6_2();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48E00, &qword_1D9934AB8);
  OUTLINED_FUNCTION_9(v8);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v9);
  v98 = &v86 - v10;
  v97 = type metadata accessor for LogicalClocksTable.Predicate(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v11 + 64));
  OUTLINED_FUNCTION_13();
  v96 = v13 - v12;
  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
  }

  v14 = qword_1ECB49610;
  v99 = 0;
  v100 = 0xE000000000000000;
  sub_1D992BD64();
  v15 = sub_1D992AE84();
  sub_1D9882D14(&qword_1ED8BD8D0, MEMORY[0x1EEE78948]);
  v16 = sub_1D992BF34();
  v18 = v17;

  v99 = v16;
  v100 = v18;
  MEMORY[0x1DA739C30](0x203A6E6F20, 0xE500000000000000);
  v102 = v5;
  v19 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v19);

  MEMORY[0x1DA739C30](0x3A6E6F7361657220, 0xE900000000000020);
  v102 = v3;
  v20 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v20);

  v94 = "pulseClock(_:lastEventOn:)";
  v95 = v14;
  sub_1D986A454(v99, v100, 0xD00000000000007BLL, 0x80000001D993C0E0, 0xD000000000000020, 0x80000001D993BBE0);

  if (sub_1D986AC54(0))
  {
    v21 = *(v1 + OBJC_IVAR___SiriAnalyticsMetastore_db);
    if (v21)
    {
      v87 = "No clock records found.";
      v91 = v3;
      v22 = v96;
      (*(*(v15 - 8) + 16))(v96, v7, v15);
      OUTLINED_FUNCTION_76();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v15);
      v26 = v21;
      v27 = v97;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
      OUTLINED_FUNCTION_10_4();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
      *(v22 + *(v27 + 20)) = 0;
      *(v22 + *(v27 + 28)) = 2;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48970, &qword_1D99323A0);
      v92 = &v86;
      OUTLINED_FUNCTION_9(v32);
      v34 = *(v33 + 64);
      MEMORY[0x1EEE9AC00](v35);
      v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48978, &qword_1D99323A8);
      OUTLINED_FUNCTION_10_4();
      __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
      v89 = &v86;
      MEMORY[0x1EEE9AC00](&v86);
      v41 = &v86 - v36;
      OUTLINED_FUNCTION_10_4();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v37);
      v93 = v26;

      Nanoseconds = SiriAnalyticsMachAbsoluteTimeGetNanoseconds(v5);
      MEMORY[0x1EEE9AC00](v45);
      v46 = &v86 - v36;
      v90 = &v86 - v36;
      v47 = OUTLINED_FUNCTION_24_6();
      sub_1D9866D34(v47, v48, &qword_1ECB48970, &qword_1D99323A0);
      OUTLINED_FUNCTION_19_1(&v86 - v36, 1, v37);
      if (v49)
      {
        sub_1D986B804(&v86 - v36, &qword_1ECB48970, &qword_1D99323A0);
        v50 = MEMORY[0x1E69E7CC8];
      }

      else
      {
        v51 = sub_1D98EC648();
        v86 = v52;
        v54 = v53;
        v36 = ~v53;
        sub_1D986B804(v46, &qword_1ECB48978, &qword_1D99323A8);
        v50 = MEMORY[0x1E69E7CC8];
        if (v36)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v99 = v50;
          OUTLINED_FUNCTION_14_12();
          v36 = &v99;
          sub_1D986B85C(v51, v86, v54, v56, 0xE800000000000000, 0, v57);
          v50 = v99;
        }
      }

      MEMORY[0x1EEE9AC00](v55);
      OUTLINED_FUNCTION_25_6();
      sub_1D9866D34(v41, v36, &qword_1ECB48970, &qword_1D99323A0);
      v58 = OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_19_1(v58, v59, v37);
      if (v49)
      {
        sub_1D986B804(v36, &qword_1ECB48970, &qword_1D99323A0);
      }

      else
      {
        v60 = sub_1D98EC648();
        v62 = v61;
        v64 = v63;
        v65 = ~v63;
        sub_1D986B804(v36, &qword_1ECB48978, &qword_1D99323A8);
        if (v65)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v99 = v50;
          sub_1D986B85C(v60, v62, v64, 0xD000000000000011, 0x80000001D9936910, 0, isUniquelyReferenced_nonNull_native);
          v50 = v99;
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      v99 = v50;
      OUTLINED_FUNCTION_30_6();
      sub_1D986B85C(v67, v68, v69, v70, 0xE800000000000000, 258, v71);
      v72 = v99;
      swift_isUniquelyReferenced_nonNull_native();
      v99 = v72;
      OUTLINED_FUNCTION_16_9();
      OUTLINED_FUNCTION_30_6();
      sub_1D986B85C(v73, v74, v75, v76, v77, 258, v78);
      v79 = v99;
      sub_1D986B804(v41, &qword_1ECB48970, &qword_1D99323A0);
      sub_1D986B804(v90, &qword_1ECB48970, &qword_1D99323A0);
      OUTLINED_FUNCTION_2_29();
      v80 = v98;
      sub_1D986BC08(v22, v98);
      OUTLINED_FUNCTION_76();
      __swift_storeEnumTagSinglePayload(v81, v82, v83, v27);
      sub_1D986BD4C(v79, v80, &v99);

      sub_1D986B804(v80, &qword_1ECB48E00, &qword_1D9934AB8);
      __swift_project_boxed_opaque_existential_1(&v99, v101);
      OUTLINED_FUNCTION_32_7();
      LOBYTE(v79) = sub_1D986D1D0();
      __swift_destroy_boxed_opaque_existential_1(&v99);
      if (v79)
      {
        OUTLINED_FUNCTION_0_45();
        sub_1D9870FB8(v22, v84);
      }

      else
      {
        sub_1D98DCEB4(0xD00000000000001BLL, 0x80000001D993C230, 0xD00000000000007BLL, v87 | 0x8000000000000000, 0xD000000000000020, v94 | 0x8000000000000000);

        OUTLINED_FUNCTION_0_45();
        sub_1D9870FB8(v22, v85);
      }
    }
  }

  OUTLINED_FUNCTION_7();
}

void sub_1D98ED558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6_2();
  a19 = v21;
  a20 = v22;
  v224 = v23;
  v219 = type metadata accessor for LogicalClocksTable.Record(0);
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](*(v26 + 64));
  OUTLINED_FUNCTION_13();
  v220 = v28 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48E00, &qword_1D9934AB8);
  OUTLINED_FUNCTION_9(v29);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v30);
  v212 = &v201 - v31;
  v214 = type metadata accessor for LogicalClocksTable.Predicate(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v32 + 64));
  OUTLINED_FUNCTION_23_1();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v201 - v37;
  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
  }

  v39 = qword_1ECB49610;
  OUTLINED_FUNCTION_20_6();
  sub_1D986A454(v40, v41, v42, v43, v44, v45);
  if (sub_1D986AC54(0))
  {
    v46 = *(v20 + OBJC_IVAR___SiriAnalyticsMetastore_db);
    if (v46)
    {
      sub_1D992AE84();
      OUTLINED_FUNCTION_10_4();
      v228 = v47;
      __swift_storeEnumTagSinglePayload(v48, v49, v50, v47);
      v51 = v214;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
      OUTLINED_FUNCTION_10_4();
      v203 = v52;
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v52);
      *&v38[*(v51 + 20)] = 0;
      v38[*(v51 + 28)] = 0;
      OUTLINED_FUNCTION_2_29();
      v56 = v212;
      sub_1D986BC08(v38, v212);
      OUTLINED_FUNCTION_76();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v51);

      sub_1D98FD528(v233);
      sub_1D986B804(v56, &qword_1ECB48E00, &qword_1D9934AB8);
      __swift_project_boxed_opaque_existential_1(v233, v233[3]);
      OUTLINED_FUNCTION_32_7();
      v64 = sub_1D990C140(v60, v61, v62, v63);
      if (v64)
      {
        v65 = v64;
        v207 = v46;
        v201 = v35;
        v202 = v38;
        v229 = 0;
        v230 = 0xE000000000000000;
        sub_1D992BD64();

        v229 = 0x20646E756F46;
        v230 = 0xE600000000000000;
        v232[1] = *(v65 + 16);
        v66 = sub_1D992BF34();
        v208 = v65;
        MEMORY[0x1DA739C30](v66);

        MEMORY[0x1DA739C30](0xD000000000000014, 0x80000001D9936E30);
        v67 = v230;
        v204 = "No clock records found.";
        v205 = "ClockStream.swift";
        OUTLINED_FUNCTION_20_6();
        v206 = v39;
        sub_1D986A454(v68, v69, v70, v71, v72, v73);
        v74 = v208;

        v75 = *(v74 + 16);
        if (v75)
        {
          v76 = v74 + ((v25[80] + 32) & ~v25[80]);
          v77 = MEMORY[0x1E69E7CC0];
          v78 = v228;
          v222 = *(v25 + 9);
          v223 = v228 - 1;
          v79 = v220;
          while (1)
          {
            v228 = v75;
            v226 = v76;
            sub_1D986BC08(v76, v79);
            v227 = &v201;
            v80 = *(v78 - 8);
            OUTLINED_FUNCTION_20_0();
            v225 = v81;
            MEMORY[0x1EEE9AC00](v82);
            OUTLINED_FUNCTION_22_8();
            v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
            OUTLINED_FUNCTION_9(v83);
            v85 = *(v84 + 64);
            MEMORY[0x1EEE9AC00](((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
            OUTLINED_FUNCTION_21_6();
            sub_1D9866D34(v224, v25, &qword_1ECB481D0, &qword_1D992F9F0);
            OUTLINED_FUNCTION_19_1(v25, 1, v78);
            if (v113)
            {
              break;
            }

            v221 = v77;
            v92 = v78;
            v93 = *(v80 + 32);
            v93(v67, v25, v92);
            v94 = sub_1D992AE54();
            if (v94)
            {
              v95 = OUTLINED_FUNCTION_24_6();
              v96(v95);
              v78 = v92;
              v77 = v221;
            }

            else
            {
              v210 = v80 + 32;
              v211 = v93;
              v218 = &v201;
              v98 = *(v219 + 6);
              MEMORY[0x1EEE9AC00](v219);
              v213 = ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
              v99 = (&v201 - v213);
              v215 = *(v80 + 16);
              v215(&v201 - v213, v67, v92);
              OUTLINED_FUNCTION_76();
              __swift_storeEnumTagSinglePayload(v100, v101, v102, v92);
              v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48378, &qword_1D992F9F8);
              v217 = &v201;
              OUTLINED_FUNCTION_9(v103);
              OUTLINED_FUNCTION_20_0();
              MEMORY[0x1EEE9AC00](v104);
              OUTLINED_FUNCTION_21_6();
              v106 = *(v105 + 56);
              sub_1D9866D34(v79 + v98, v25, &qword_1ECB481D0, &qword_1D992F9F0);
              v216 = v106;
              sub_1D9866D34(v99, &v25[v106], &qword_1ECB481D0, &qword_1D992F9F0);
              OUTLINED_FUNCTION_19_1(v25, 1, v92);
              if (v113)
              {
                sub_1D986B804(v99, &qword_1ECB481D0, &qword_1D992F9F0);
                v107 = OUTLINED_FUNCTION_24_6();
                v108(v107);
                OUTLINED_FUNCTION_19_1(&v25[v216], 1, v92);
                v78 = v92;
                v77 = v221;
                if (!v113)
                {
                  goto LABEL_29;
                }

                sub_1D986B804(v25, &qword_1ECB481D0, &qword_1D992F9F0);
                OUTLINED_FUNCTION_7_18();
                v79 = v220;
              }

              else
              {
                v209 = &v201;
                MEMORY[0x1EEE9AC00](&v201);
                v109 = (&v201 - v213);
                v110 = OUTLINED_FUNCTION_27();
                sub_1D9866D34(v110, v111, &qword_1ECB481D0, &qword_1D992F9F0);
                v112 = v216;
                OUTLINED_FUNCTION_19_1(&v25[v216], 1, v92);
                if (v113)
                {
                  sub_1D986B804(v99, &qword_1ECB481D0, &qword_1D992F9F0);
                  v114 = v109;
                  v115 = *(v80 + 8);
                  v116 = OUTLINED_FUNCTION_24_6();
                  v115(v116);
                  (v115)(v114, v92);
                  OUTLINED_FUNCTION_12_1();
                  v78 = v92;
                  v77 = v221;
LABEL_29:
                  sub_1D986B804(v25, &qword_1ECB48378, &qword_1D992F9F8);
                  OUTLINED_FUNCTION_7_18();
                  v79 = v220;
                  v86 = &a15;
LABEL_11:
                  MEMORY[0x1EEE9AC00](v86);
                  v25 = &v201 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
                  v88(v25, v79, v78);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1D98BE160(0);
                    v77 = v121;
                  }

                  v90 = *(v77 + 16);
                  v89 = *(v77 + 24);
                  if (v90 >= v89 >> 1)
                  {
                    sub_1D98BE160(v89 > 1);
                    v77 = v122;
                  }

                  OUTLINED_FUNCTION_3_17();
                  sub_1D9870FB8(v79, v91);
                  *(v77 + 16) = v90 + 1;
                  (*(v80 + 32))(v77 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v90, v25, v78);
                  goto LABEL_19;
                }

                v213 = &v201;
                MEMORY[0x1EEE9AC00](&v201);
                v118 = &v201 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
                v211(v118, &v25[v112], v92);
                sub_1D9882D14(&qword_1ED8BF058, MEMORY[0x1EEE78930]);
                v211 = v109;
                LODWORD(v216) = sub_1D992B5F4();
                v119 = *(v80 + 8);
                v119(v118, v92);
                sub_1D986B804(v99, &qword_1ECB481D0, &qword_1D992F9F0);
                v120 = OUTLINED_FUNCTION_24_6();
                (v119)(v120);
                v119(v211, v92);
                OUTLINED_FUNCTION_12_1();
                OUTLINED_FUNCTION_12_1();
                sub_1D986B804(v25, &qword_1ECB481D0, &qword_1D992F9F0);
                OUTLINED_FUNCTION_7_18();
                v79 = v220;
                v77 = v221;
                v78 = v92;
                v86 = v216;
                if ((v216 & 1) == 0)
                {
                  goto LABEL_11;
                }
              }
            }

            OUTLINED_FUNCTION_3_17();
            sub_1D9870FB8(v79, v97);
LABEL_19:
            v76 = v226 + v222;
            v75 = (v228 - 1);
            if (v228 == 1)
            {
              goto LABEL_34;
            }
          }

          sub_1D986B804(v25, &qword_1ECB481D0, &qword_1D992F9F0);
          goto LABEL_11;
        }

        v77 = MEMORY[0x1E69E7CC0];
        v78 = v228;
LABEL_34:

        if (*(v77 + 16))
        {
          v229 = 0;
          v230 = 0xE000000000000000;
          sub_1D992BD64();

          v229 = 0xD000000000000029;
          v230 = 0x80000001D993C1B0;

          v132 = MEMORY[0x1DA739D10](v131, v78);
          MEMORY[0x1DA739C30](v132);

          OUTLINED_FUNCTION_6_20();
          OUTLINED_FUNCTION_20_6();
          sub_1D98DCECC(v133, v134, v135, v136, v137, v138);

          v139 = v201;
          OUTLINED_FUNCTION_10_4();
          __swift_storeEnumTagSinglePayload(v140, v141, v142, v78);

          v143 = v214;
          OUTLINED_FUNCTION_10_4();
          __swift_storeEnumTagSinglePayload(v144, v145, v146, v203);
          *(v139 + *(v143 + 20)) = v77;
          *(v139 + *(v143 + 28)) = 2;
          v147 = &qword_1ECB48970;
          v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48970, &qword_1D99323A0);
          v228 = &v201;
          OUTLINED_FUNCTION_9(v148);
          v150 = *(v149 + 64);
          MEMORY[0x1EEE9AC00](v151);
          v152 = &v201 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
          v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48978, &qword_1D99323A8);
          OUTLINED_FUNCTION_10_4();
          __swift_storeEnumTagSinglePayload(v154, v155, v156, v153);
          v227 = &v201;
          MEMORY[0x1EEE9AC00](&v201);
          OUTLINED_FUNCTION_10_4();
          __swift_storeEnumTagSinglePayload(v157, v158, v159, v153);
          MEMORY[0x1EEE9AC00](v160);
          sub_1D9866D34(v152, v152, &qword_1ECB48970, &qword_1D99323A0);
          OUTLINED_FUNCTION_19_1(v152, 1, v153);
          if (v113)
          {
            sub_1D986B804(v152, &qword_1ECB48970, &qword_1D99323A0);
            v162 = MEMORY[0x1E69E7CC8];
          }

          else
          {
            v226 = sub_1D98EC648();
            v170 = v169;
            v172 = v171;
            v147 = ~v171;
            sub_1D986B804(v152, &qword_1ECB48978, &qword_1D99323A8);
            v162 = MEMORY[0x1E69E7CC8];
            if (v147)
            {
              swift_isUniquelyReferenced_nonNull_native();
              v229 = v162;
              OUTLINED_FUNCTION_14_12();
              v147 = &v229;
              sub_1D986B85C(v226, v170, v172, v173, 0xE800000000000000, 0, v174);
              v162 = v229;
            }

            v161 = v232;
            v139 = v201;
          }

          MEMORY[0x1EEE9AC00](v161);
          OUTLINED_FUNCTION_25_6();
          sub_1D9866D34(v152, v147, &qword_1ECB48970, &qword_1D99323A0);
          v175 = OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_19_1(v175, v176, v153);
          if (v113)
          {
            sub_1D986B804(v147, &qword_1ECB48970, &qword_1D99323A0);
          }

          else
          {
            v177 = sub_1D98EC648();
            v179 = v178;
            v181 = v180;
            v182 = ~v180;
            sub_1D986B804(v147, &qword_1ECB48978, &qword_1D99323A8);
            if (v182)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v229 = v162;
              sub_1D986B85C(v177, v179, v181, 0xD000000000000011, 0x80000001D9936910, 0, isUniquelyReferenced_nonNull_native);
              v162 = v229;
            }
          }

          swift_isUniquelyReferenced_nonNull_native();
          v229 = v162;
          OUTLINED_FUNCTION_16_9();
          OUTLINED_FUNCTION_30_6();
          sub_1D986B85C(v184, v185, v186, v187, v188, 258, v189);
          v190 = v229;
          OUTLINED_FUNCTION_34_3(v152);
          OUTLINED_FUNCTION_34_3(v152);
          OUTLINED_FUNCTION_2_29();
          v191 = v212;
          sub_1D986BC08(v139, v212);
          OUTLINED_FUNCTION_76();
          __swift_storeEnumTagSinglePayload(v192, v193, v194, v214);
          sub_1D986BD4C(v190, v191, &v229);

          sub_1D986B804(v191, &qword_1ECB48E00, &qword_1D9934AB8);
          __swift_project_boxed_opaque_existential_1(&v229, v231);
          if ((sub_1D986D1D0() & 1) == 0)
          {
            OUTLINED_FUNCTION_6_20();
            OUTLINED_FUNCTION_20_6();
            sub_1D98DCEB4(v195, v196, v197, v198, v199, v200);
          }

          sub_1D9870FB8(v139, type metadata accessor for LogicalClocksTable.Predicate);
          __swift_destroy_boxed_opaque_existential_1(v233);
          sub_1D9870FB8(v202, type metadata accessor for LogicalClocksTable.Predicate);
          __swift_destroy_boxed_opaque_existential_1(&v229);
          goto LABEL_51;
        }

        OUTLINED_FUNCTION_6_20();
        OUTLINED_FUNCTION_20_6();
        sub_1D986A454(v163, v164, v165, v166, v167, v168);

        __swift_destroy_boxed_opaque_existential_1(v233);
        OUTLINED_FUNCTION_0_45();
        v130 = v202;
      }

      else
      {
        OUTLINED_FUNCTION_20_6();
        sub_1D986A454(v123, v124, v125, v126, v127, v128);

        __swift_destroy_boxed_opaque_existential_1(v233);
        OUTLINED_FUNCTION_0_45();
        v130 = v38;
      }

      sub_1D9870FB8(v130, v129);
    }
  }

LABEL_51:
  OUTLINED_FUNCTION_7();
}

uint64_t sub_1D98EE548(uint64_t a1)
{
  if ((sub_1D986AC54(0) & 1) == 0 || !*(v1 + OBJC_IVAR___SiriAnalyticsMetastore_db))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48AC0, &qword_1D9932730);
  OUTLINED_FUNCTION_31_7();
  v3 = sub_1D992AE84();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D992FCB0;
  (*(v5 + 16))(v7 + v6, a1, v3);

  sub_1D98B399C();
  v8 = OUTLINED_FUNCTION_31_7();
  v9 = sub_1D98EF6FC(v8, v7);

  if (!v9)
  {
    if (qword_1ED8BD6D0 != -1)
    {
      OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
    }

    sub_1D986A454(0xD000000000000017, 0x80000001D993C0C0, 0xD00000000000007BLL, 0x80000001D993C0E0, 0x636F6C43746F6F72, 0xEE00293A7962286BLL);
    goto LABEL_12;
  }

  v10 = sub_1D98EC7B4(v9);

  if (!sub_1D98682F0())
  {

LABEL_12:

    return 0;
  }

  sub_1D98BF364();
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1DA73A2C0](0, v10);
  }

  else
  {
    v11 = *(v10 + 32);
  }

  return v11;
}

void sub_1D98EE774()
{
  OUTLINED_FUNCTION_6_2();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for SelectRootClockId(0);
  OUTLINED_FUNCTION_9(v5);
  MEMORY[0x1EEE9AC00](*(v6 + 64));
  OUTLINED_FUNCTION_23_1();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v61 - v11;
  if ((sub_1D986AC54(0) & 1) != 0 && *(v0 + OBJC_IVAR___SiriAnalyticsMetastore_db))
  {
    v13 = sub_1D992AE84();
    OUTLINED_FUNCTION_5();
    (*(v14 + 16))(v12, v2, v13);
    sub_1D986BC08(v12, v9);

    v16 = sub_1D9893D00(v15);
    v18 = v17;
    v20 = v19;
    sub_1D9870FB8(v9, type metadata accessor for SelectRootClockId);
    v21 = sub_1D990B8D4(v16, v18, v20);

    if (!v21)
    {
      OUTLINED_FUNCTION_4_20();

      OUTLINED_FUNCTION_10_4();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v13);
LABEL_22:
      OUTLINED_FUNCTION_7();
      return;
    }

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
    OUTLINED_FUNCTION_5();
    MEMORY[0x1EEE9AC00](((*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = v61 - v24;
    if (v21[2])
    {
      v26 = v21[4];

      if (*(v26 + 16))
      {
        v27 = sub_1D9889410(0x6F6C635F746F6F72, 0xED000064695F6B63);
        if (v28)
        {
          v61[0] = v22;
          v61[1] = v61;
          v29 = *(v26 + 56) + 24 * v27;
          v30 = *v29;
          v31 = *(v29 + 8);
          v32 = *(v29 + 16);
          sub_1D986C8B8(*v29, v31, *(v29 + 16));

          v33 = (v31 | v30);
          if (v32 == 4 && v33 == 0)
          {
            OUTLINED_FUNCTION_10_4();
            __swift_storeEnumTagSinglePayload(v48, v49, v50, v13);
          }

          else
          {
            MEMORY[0x1EEE9AC00](v33);
            OUTLINED_FUNCTION_8_5();
            if (v35 == 3)
            {
              v36 = 3;
              v51 = OUTLINED_FUNCTION_33_6();
              sub_1D987BA38(v51, v52);
              OUTLINED_FUNCTION_29_6();
              sub_1D992AD64();
              v53 = OUTLINED_FUNCTION_29_6();
              sub_1D986C908(v53, v54, 3);
            }

            else
            {
              v36 = v35;
              if (v35)
              {
                OUTLINED_FUNCTION_10_4();
                __swift_storeEnumTagSinglePayload(v55, v56, v57, v13);
              }

              else
              {
                OUTLINED_FUNCTION_33_6();
                sub_1D992AE14();
              }
            }

            v58 = swift_dynamicCast();
            __swift_storeEnumTagSinglePayload(v25, v58 ^ 1u, 1, v13);

            v59 = OUTLINED_FUNCTION_29_6();
            sub_1D986C908(v59, v60, v36);
          }

          OUTLINED_FUNCTION_4_20();
          goto LABEL_21;
        }
      }

      OUTLINED_FUNCTION_4_20();
    }

    else
    {
      OUTLINED_FUNCTION_4_20();
    }

    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v13);
LABEL_21:
    sub_1D98EF68C(v25, v4);
    goto LABEL_22;
  }

  sub_1D992AE84();
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_7();

  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
}

void sub_1D98EEB5C()
{
  OUTLINED_FUNCTION_6_2();
  v94 = v0;
  v96 = v1;
  v87 = v2;
  v4 = v3;
  v6 = v5;
  v92 = type metadata accessor for LogicalClocksTable.Record(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  OUTLINED_FUNCTION_23_1();
  v93 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v80 - v11;
  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
  }

  v95 = qword_1ECB49610;
  *&v98 = 0;
  *(&v98 + 1) = 0xE000000000000000;
  sub_1D992BD64();
  v12 = sub_1D992AE84();
  sub_1D9882D14(&qword_1ED8BD8D0, MEMORY[0x1EEE78948]);
  v86 = v6;
  v13 = sub_1D992BF34();
  v15 = v14;

  *&v98 = v13;
  *(&v98 + 1) = v15;
  MEMORY[0x1DA739C30](0x203A746F6F7220, 0xE700000000000000);
  v16 = OUTLINED_FUNCTION_27();
  __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](((*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = v4;
  sub_1D9866D34(v4, &v80 - v19, &qword_1ECB481D0, &qword_1D992F9F0);
  v20 = sub_1D992B6A4();
  MEMORY[0x1DA739C30](v20);

  MEMORY[0x1DA739C30](0xD000000000000011, 0x80000001D9936EE0);
  if (qword_1ECB47FB0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1ECB496F0);
  OUTLINED_FUNCTION_0();
  v22 = v21;
  v24 = v23[8];
  MEMORY[0x1EEE9AC00](v23);
  v25 = *(v22 + 16);
  Nanoseconds = v26;
  v91 = v25;
  (v25)(&v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v27);

  v88 = *(v22 + 8);
  v88(&v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  MEMORY[0x1DA739C30](0x203A6E6F20, 0xE500000000000000);
  v97 = v96;
  v28 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v28);

  v85 = "Failed to end stored clock.";
  sub_1D986A454(v98, *(&v98 + 1), 0xD00000000000007BLL, 0x80000001D993C0E0, 0xD00000000000003DLL, 0x80000001D993C250);

  v29 = v94;
  if (sub_1D986AC54(0))
  {
    if (*&v29[OBJC_IVAR___SiriAnalyticsMetastore_db])
    {
      v80 = &v80;
      MEMORY[0x1EEE9AC00](&v80);
      v30 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
      v82 = &v80 - v30;
      v31 = v91;
      v91();
      v86 = &v80;
      MEMORY[0x1EEE9AC00](&v80);
      v94 = &v80 - v30;
      MEMORY[0x1EEE9AC00]((&v80 - v30));
      OUTLINED_FUNCTION_8_5();
      v34 = v32 - v33;
      sub_1D9866D34(v87, v32 - v33, &qword_1ECB481D0, &qword_1D992F9F0);
      v35 = OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_19_1(v35, v36, v12);
      v81 = "No clock records found.";
      if (v37)
      {
        (v31)(v94, Nanoseconds, v12);
        v38 = OUTLINED_FUNCTION_10();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, v39, v12);

        if (EnumTagSinglePayload != 1)
        {
          sub_1D986B804(v34, &qword_1ECB481D0, &qword_1D992F9F0);
        }
      }

      else
      {
        (*(v22 + 32))(v94, v34, v12);
      }

      v87 = &v80;
      MEMORY[0x1EEE9AC00](&v80);
      OUTLINED_FUNCTION_8_5();
      v43 = v41 - v42;
      sub_1D9866D34(v89, v41 - v42, &qword_1ECB481D0, &qword_1D992F9F0);
      Nanoseconds = SiriAnalyticsMachAbsoluteTimeGetNanoseconds(v96);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
      v96 = &v80;
      OUTLINED_FUNCTION_9(v44);
      v46 = *(v45 + 64);
      MEMORY[0x1EEE9AC00](v47);
      v89 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
      v48 = &v80 - v89;
      v49 = sub_1D992AE04();
      OUTLINED_FUNCTION_10_4();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v49);
      v53 = v93;
      v54 = v91;
      (v91)(v93, v82, v12);
      v55 = v92;
      (v54)(v53 + *(v92 + 20), v94, v12);
      v56 = v43;
      sub_1D9866D34(v43, v53 + v55[6], &qword_1ECB481D0, &qword_1D992F9F0);
      v91 = &v80;
      v57 = v53 + v55[7];
      *(v57 + 8) = 0;
      *(v57 + 16) = 0;
      *v57 = Nanoseconds;
      *(v57 + 24) = 1;
      v58 = v53 + v55[8];
      *v58 = 0;
      *(v58 + 8) = 1;
      v59 = v53 + v55[9];
      *v59 = 0;
      *(v59 + 8) = 1;
      OUTLINED_FUNCTION_0();
      v61 = v60;
      MEMORY[0x1EEE9AC00](*(v62 + 64));
      OUTLINED_FUNCTION_13();
      v65 = v64 - v63;
      MEMORY[0x1EEE9AC00](v63);
      v66 = &v80 - v89;
      sub_1D9866D34(v48, &v80 - v89, &qword_1ECB48710, &qword_1D9931340);
      OUTLINED_FUNCTION_19_1(v66, 1, v49);
      if (v37)
      {
        sub_1D992ADF4();
        sub_1D986B804(v48, &qword_1ECB48710, &qword_1D9931340);
        sub_1D986B804(v56, &qword_1ECB481D0, &qword_1D992F9F0);
        v67 = v88;
        v88(v94, v12);
        v67(v82, v12);
        OUTLINED_FUNCTION_19_1(v66, 1, v49);
        if (!v37)
        {
          sub_1D986B804(v66, &qword_1ECB48710, &qword_1D9931340);
        }
      }

      else
      {
        sub_1D986B804(v48, &qword_1ECB48710, &qword_1D9931340);
        sub_1D986B804(v56, &qword_1ECB481D0, &qword_1D992F9F0);
        v68 = v88;
        v88(v94, v12);
        v68(v82, v12);
        (*(v61 + 32))(v65, v66, v49);
      }

      v69 = v93;
      (*(v61 + 32))(v93 + *(v92 + 40), v65, v49);
      v70 = v90;
      sub_1D986C22C(v69, v90);
      OUTLINED_FUNCTION_12_1();
      v71 = sub_1D9893494();
      v72 = sub_1D98B3B0C(&unk_1F55180D0);
      *&v98 = sub_1D98B3B0C(&unk_1F55181B0);
      sub_1D98D81B4(v72);
      v73 = sub_1D98D4538(v98);
      strcpy(&v98, "logical_clocks");
      HIBYTE(v98) = -18;
      v99 = v71;
      v100 = &unk_1F55181B0;
      v101 = v73;
      v74 = sub_1D990C31C();
      v77 = sub_1D987005C(v74, v75, v76);

      if (v77)
      {
        OUTLINED_FUNCTION_3_17();
        sub_1D9870FB8(v70, v78);
      }

      else
      {
        sub_1D98DCEB4(0xD00000000000001ELL, 0x80000001D993C290, 0xD00000000000007BLL, v81 | 0x8000000000000000, 0xD00000000000003DLL, v85 | 0x8000000000000000);

        OUTLINED_FUNCTION_3_17();
        sub_1D9870FB8(v70, v79);
      }
    }
  }

  OUTLINED_FUNCTION_7();
}

uint64_t sub_1D98EF554(uint64_t a1)
{
  if ((sub_1D986AC54(0) & 1) == 0 || !*(v1 + OBJC_IVAR___SiriAnalyticsMetastore_db))
  {
    return 0;
  }

  sub_1D98FD528(v9);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  OUTLINED_FUNCTION_32_7();
  v6 = sub_1D990C140(v2, v3, v4, v5);
  if (!v6)
  {
    if (qword_1ED8BD6D0 != -1)
    {
      OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
    }

    sub_1D986A454(0xD000000000000021, 0x80000001D993C2B0, 0xD00000000000007BLL, 0x80000001D993C0E0, 0xD00000000000001DLL, 0x80000001D993C2E0);

    __swift_destroy_boxed_opaque_existential_1(v9);
    return 0;
  }

  v7 = sub_1D98EC7B4(v6);

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

uint64_t sub_1D98EF68C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98EF6FC(uint64_t a1, uint64_t a2)
{
  v6[3] = &type metadata for SelectRootAndDerivativeClocks;
  v6[4] = &off_1F5518F78;
  v6[0] = a1;
  v6[1] = a2;

  v2 = objc_autoreleasePoolPush();
  sub_1D987F16C();
  v4 = v3;
  objc_autoreleasePoolPop(v2);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_1D98EF7C4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_1D98EF830(uint64_t a1, uint64_t a2)
{
  sub_1D98F1BC8(a2, *(*(a1 + 64) + 40), &qword_1ECB48440, &qword_1D9930058);

  return MEMORY[0x1EEE6DEE0](a1);
}

uint64_t sub_1D98EF898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x1EEE6DEE0](a1);
}

uint64_t sub_1D98EF8DC(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  *(v3 + 8) = a3;
  return MEMORY[0x1EEE6DEE0](a1);
}

uint64_t sub_1D98EF900(uint64_t a1)
{
  v55 = type metadata accessor for IdentifiableTag(0);
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](*(v54 + 64));
  v3 = v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E69E7CC8];
  v78 = MEMORY[0x1E69E7CC8];
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48F40, &qword_1D9934EA0);
  v52[0] = v52;
  v66 = v9;
  v10 = ((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v58 = v52 - v11;
  v12 = (v6 + 63) >> 6;

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  v57 = v12;
  v56 = a1;
  v53 = a1 + 64;
  if (v8)
  {
    while (1)
    {
      v65 = v4;
LABEL_10:
      v63 = v14;
      v64 = v8;
      v17 = __clz(__rbit64(v8)) | (v14 << 6);
      v18 = *(a1 + 48);
      v19 = sub_1D992AE84();
      v62 = *(v19 - 8);
      v60 = *(v62 + 72);
      v20 = v58;
      v72 = *(v62 + 16);
      v73 = v19;
      v71 = v62 + 16;
      v72(v58, v18 + v60 * v17);
      v61 = v52;
      v21 = *(*(a1 + 56) + 8 * v17);
      v22 = v66;
      v23 = *(v66 + 48);
      *(v23 + v20) = v21;
      MEMORY[0x1EEE9AC00](v23);
      v25 = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1D98F1BC8(v20, v25, &qword_1ECB48F40, &qword_1D9934EA0);
      v26 = *&v25[*(v22 + 48)];
      v77 = v15;
      v27 = *(v26 + 16);
      if (v27)
      {
        v59 = v25;
        v70 = type metadata accessor for TagShim(0);
        v69 = *(v55 + 24);
        v28 = v54;
        v29 = v26 + ((*(v54 + 80) + 32) & ~*(v54 + 80));

        v68 = *(v28 + 72);
        do
        {
          sub_1D98BA908(v29, v3);
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
          MEMORY[0x1EEE9AC00](((*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
          v32 = v52 - v31;
          v33 = v73;
          (v72)(v52 - v31, v3, v73);
          __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
          sub_1D98B37DC(&v3[v69], v74);
          v34 = v75;
          v35 = v76;
          __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
          MEMORY[0x1EEE9AC00](*(*(v34 - 8) + 64));
          v37 = v52 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v38 + 16))(v37);
          sub_1D9910918(v32, v37, v70, v34, v35);
          sub_1D98BA96C(v3);
          v39 = __swift_destroy_boxed_opaque_existential_1(v74);
          MEMORY[0x1DA739CE0](v39);
          if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D992B7D4();
          }

          sub_1D992B7F4();
          v29 += v68;
          --v27;
        }

        while (v27);
        v15 = v77;
        a1 = v56;
        v5 = v53;
        v25 = v59;
      }

      else
      {
      }

      v72 = v52;
      MEMORY[0x1EEE9AC00](v52);
      v41 = v52 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1D98F1BC8(v25, v41, &qword_1ECB48F40, &qword_1D9934EA0);
      v42 = *(v65 + 16);
      if (*(v65 + 24) <= v42)
      {
        sub_1D98F1558(v42 + 1, 1);
      }

      v4 = v78;
      sub_1D98B3748();
      result = sub_1D992B5C4();
      v43 = v4 + 64;
      v44 = -1 << *(v4 + 32);
      v45 = result & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v4 + 64 + 8 * (v45 >> 6))) == 0)
      {
        break;
      }

      v47 = __clz(__rbit64((-1 << v45) & ~*(v4 + 64 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
      v8 = (v64 - 1) & v64;
      *(v43 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      (*(v62 + 32))(*(v4 + 48) + v47 * v60, v41, v73);
      *(*(v4 + 56) + 8 * v47) = v15;
      ++*(v4 + 16);

      v12 = v57;
      v15 = MEMORY[0x1E69E7CC0];
      v14 = v63;
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v48 = 0;
    v49 = (63 - v44) >> 6;
    while (++v46 != v49 || (v48 & 1) == 0)
    {
      v50 = v46 == v49;
      if (v46 == v49)
      {
        v46 = 0;
      }

      v48 |= v50;
      v51 = *(v43 + 8 * v46);
      if (v51 != -1)
      {
        v47 = __clz(__rbit64(~v51)) + (v46 << 6);
        goto LABEL_28;
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v12)
      {

        return v4;
      }

      v8 = *(v5 + 8 * v16);
      ++v14;
      if (v8)
      {
        v65 = v4;
        v14 = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t TaggingService.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t TaggingService.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_1D98F0040(uint64_t a1)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98F0054()
{
  v1 = v0[26];
  v2 = type metadata accessor for TagShim(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v3 = swift_task_alloc();
  v4 = sub_1D992AE84();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  sub_1D98B37DC(v1, (v0 + 18));
  v5 = v0[21];
  v6 = v0[22];
  v7 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 18), v5);
  v8 = *(v5 - 8);
  v9 = swift_task_alloc();
  (*(v8 + 16))(v9, v7, v5);
  v10 = sub_1D9910918(v3, v9, v2, v5, v6);
  v0[28] = v10;
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);

  v11 = sub_1D988CFCC();
  v0[29] = v11;
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_1D98F02C4;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D48, qword_1D9934E00);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D98D3734;
  v0[13] = &block_descriptor_13;
  v0[14] = v12;
  [v11 createTag:v10 completion:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D98F02C4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 240) = v4;
  if (v4)
  {
    v5 = sub_1D98F0430;
  }

  else
  {
    v5 = sub_1D98F03C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D98F03C8()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 232);

  OUTLINED_FUNCTION_29_0();
  v3 = *(v0 + 240) == 0;

  return v2(v3);
}

uint64_t sub_1D98F0430(uint64_t a1)
{
  v2 = v1[29];
  v3 = v1[28];
  swift_willThrow();

  if (qword_1ECB480B0 != -1)
  {
    OUTLINED_FUNCTION_1_26(&qword_1ECB480B0);
  }

  v4 = v1[30];
  v1[23] = 0;
  v1[24] = 0xE000000000000000;
  v1[25] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  OUTLINED_FUNCTION_34_4();
  sub_1D98DCEB4(v5, v6, v7, v8, v9, 0xEA0000000000293ALL);

  OUTLINED_FUNCTION_29_0();
  v11 = v1[30] == 0;

  return v10(v11);
}

uint64_t sub_1D98F0584()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_1D988CFCC();
  v0[21] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D98F06A8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48F28, &qword_1D9934E18);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D98F093C;
  v0[13] = &block_descriptor_3_2;
  v0[14] = v2;
  [v1 fetchTags_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D98F06A8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    v5 = sub_1D98F0824;
  }

  else
  {
    v5 = sub_1D98F07AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D98F07AC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  if (v1 != 1)
  {

    v2 = 0;
  }

  OUTLINED_FUNCTION_29_0();

  return v3(v2);
}

uint64_t sub_1D98F0824()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[21];
  swift_willThrow();

  if (qword_1ECB480B0 != -1)
  {
    OUTLINED_FUNCTION_1_26(&qword_1ECB480B0);
  }

  v2 = v0[22];
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v0[18] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  OUTLINED_FUNCTION_34_4();
  sub_1D98DCEB4(v3, v4, v5, v6, v7, 0xE500000000000000);

  OUTLINED_FUNCTION_29_0();

  return v8(0);
}

uint64_t sub_1D98F093C(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    return sub_1D98EF7C4(v6, a4);
  }

  sub_1D992AE84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48F38, &qword_1D9934E98);
  sub_1D98B3748();
  v8 = sub_1D992B5A4();
  return sub_1D98EF8DC(v6, a2, v8);
}

uint64_t TaggingService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id TaggingXPCHandler.__allocating_init(metastore:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___SiriAnalyticsTaggingXPCHandler_metastore] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id TaggingXPCHandler.init(metastore:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SiriAnalyticsTaggingXPCHandler_metastore] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TaggingXPCHandler();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1D98F0AF8()
{
  v3 = 2;
  v0 = sub_1D98FEE2C(&v3);
  if (!v0)
  {
    return 0;
  }

  v1 = sub_1D98EF900(v0);

  return v1;
}

id TaggingXPCHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TaggingXPCHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TaggingXPCHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D98F0CC0()
{
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_2_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D60, &qword_1D99340A8);
  v8 = OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_40_2(v8, v9);
  OUTLINED_FUNCTION_23_7();
  if (!v10)
  {
LABEL_29:

    *v0 = v3;
    OUTLINED_FUNCTION_38_1();
    return;
  }

  v11 = 0;
  OUTLINED_FUNCTION_0_46();
  OUTLINED_FUNCTION_33_7();
  if (!v7)
  {
LABEL_4:
    v12 = v11;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v6)
      {
        break;
      }

      ++v12;
      if (*(v5 + 8 * v11))
      {
        OUTLINED_FUNCTION_9_1();
        v7 = v14 & v13;
        goto LABEL_9;
      }
    }

    if (v4)
    {
      OUTLINED_FUNCTION_3_18();
      if (v29 != v30)
      {
        OUTLINED_FUNCTION_9_14(v28);
      }

      else
      {
        OUTLINED_FUNCTION_13_11(v28);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_32_8();
LABEL_9:
    OUTLINED_FUNCTION_29_7();
    v17 = *(v16 + 8 * v15);
    if ((v4 & 1) == 0)
    {
      v18 = v1;
    }

    sub_1D992BBC4();
    OUTLINED_FUNCTION_1_31();
    OUTLINED_FUNCTION_24_7();
    if (v19)
    {
      break;
    }

    OUTLINED_FUNCTION_6_21();
LABEL_21:
    OUTLINED_FUNCTION_12_13();
    *(v0 + v23) |= v24;
    OUTLINED_FUNCTION_17_9(v25);
    *(v27 + 8 * v26) = v17;
    OUTLINED_FUNCTION_10_12();
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_41();
  while (1)
  {
    OUTLINED_FUNCTION_22_9();
    if (v19)
    {
      if (v21)
      {
        break;
      }
    }

    if (v20 == v22)
    {
      v20 = 0;
    }

    if (v0[v20] != -1)
    {
      OUTLINED_FUNCTION_11_16();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1D98F0E34()
{
  OUTLINED_FUNCTION_2_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48F68, &qword_1D9934EC8);
  v7 = OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_40_2(v7, v8);
  OUTLINED_FUNCTION_23_7();
  if (!v9)
  {

LABEL_30:
    *v0 = v3;
    return;
  }

  v30 = v0;
  v10 = 0;
  OUTLINED_FUNCTION_26_8();
  if (!v0)
  {
LABEL_4:
    v11 = v10;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v10 >= v6)
      {
        break;
      }

      ++v11;
      if (*(v2 + 64 + 8 * v10))
      {
        OUTLINED_FUNCTION_9_1();
        v0 = (v13 & v12);
        goto LABEL_9;
      }
    }

    if (v4)
    {
      OUTLINED_FUNCTION_3_18();
      if (v28 != v29)
      {
        OUTLINED_FUNCTION_9_14(v27);
      }

      else
      {
        OUTLINED_FUNCTION_13_11(v27);
      }

      *(v2 + 16) = 0;
    }

    v0 = v30;
    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_44_0();
LABEL_9:
    OUTLINED_FUNCTION_29_7();
    v31 = *(v15 + 16 * v14);
    if ((v4 & 1) == 0)
    {
      v16 = v1;
    }

    v17 = sub_1D992BBC4() & ~(-1 << *(v3 + 32));
    if (((-1 << v17) & ~*(v5 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_6_21();
LABEL_21:
    OUTLINED_FUNCTION_12_13();
    *(v5 + v22) |= v23;
    OUTLINED_FUNCTION_17_9(v24);
    *(v26 + 16 * v25) = v31;
    OUTLINED_FUNCTION_10_12();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_41();
  while (1)
  {
    OUTLINED_FUNCTION_22_9();
    if (v21)
    {
      if (v19)
      {
        break;
      }
    }

    if (v18 == v20)
    {
      v18 = 0;
    }

    if (*(v5 + 8 * v18) != -1)
    {
      OUTLINED_FUNCTION_11_16();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1D98F0FEC()
{
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_2_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48F70, &qword_1D9934ED0);
  v8 = OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_40_2(v8, v9);
  OUTLINED_FUNCTION_23_7();
  if (!v10)
  {
LABEL_29:

    *v0 = v3;
    OUTLINED_FUNCTION_38_1();
    return;
  }

  v11 = 0;
  OUTLINED_FUNCTION_0_46();
  OUTLINED_FUNCTION_33_7();
  if (!v7)
  {
LABEL_4:
    v12 = v11;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v6)
      {
        break;
      }

      ++v12;
      if (*(v5 + 8 * v11))
      {
        OUTLINED_FUNCTION_9_1();
        v7 = v14 & v13;
        goto LABEL_9;
      }
    }

    if (v4)
    {
      OUTLINED_FUNCTION_3_18();
      if (v29 != v30)
      {
        OUTLINED_FUNCTION_9_14(v28);
      }

      else
      {
        OUTLINED_FUNCTION_13_11(v28);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_32_8();
LABEL_9:
    OUTLINED_FUNCTION_29_7();
    v17 = *(v16 + 8 * v15);
    if ((v4 & 1) == 0)
    {
      v18 = v1;
    }

    sub_1D992BBC4();
    OUTLINED_FUNCTION_1_31();
    OUTLINED_FUNCTION_24_7();
    if (v19)
    {
      break;
    }

    OUTLINED_FUNCTION_6_21();
LABEL_21:
    OUTLINED_FUNCTION_12_13();
    *(v0 + v23) |= v24;
    OUTLINED_FUNCTION_17_9(v25);
    *(v27 + 8 * v26) = v17;
    OUTLINED_FUNCTION_10_12();
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_41();
  while (1)
  {
    OUTLINED_FUNCTION_22_9();
    if (v19)
    {
      if (v21)
      {
        break;
      }
    }

    if (v20 == v22)
    {
      v20 = 0;
    }

    if (v0[v20] != -1)
    {
      OUTLINED_FUNCTION_11_16();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1D98F1160()
{
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_2_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D80, &qword_1D99340D0);
  v8 = OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_40_2(v8, v9);
  OUTLINED_FUNCTION_23_7();
  if (!v10)
  {

LABEL_30:
    *v0 = v3;
    OUTLINED_FUNCTION_38_1();
    return;
  }

  v32 = v0;
  v11 = 0;
  OUTLINED_FUNCTION_0_46();
  OUTLINED_FUNCTION_26_8();
  if (!v0)
  {
LABEL_4:
    v12 = v11;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v7)
      {
        break;
      }

      ++v12;
      if (*(v5 + 8 * v11))
      {
        OUTLINED_FUNCTION_9_1();
        v0 = (v14 & v13);
        goto LABEL_9;
      }
    }

    if (v4)
    {
      OUTLINED_FUNCTION_3_18();
      if (v30 != v31)
      {
        OUTLINED_FUNCTION_9_14(v29);
      }

      else
      {
        OUTLINED_FUNCTION_13_11(v29);
      }

      *(v2 + 16) = 0;
    }

    v0 = v32;
    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_44_0();
LABEL_9:
    OUTLINED_FUNCTION_29_7();
    v17 = *(v16 + 8 * v15);
    if ((v4 & 1) == 0)
    {
      v18 = v1;
      v19 = v17;
    }

    sub_1D992BBC4();
    OUTLINED_FUNCTION_1_31();
    OUTLINED_FUNCTION_24_7();
    if (v20)
    {
      break;
    }

    OUTLINED_FUNCTION_6_21();
LABEL_21:
    OUTLINED_FUNCTION_12_13();
    *(v6 + v24) |= v25;
    OUTLINED_FUNCTION_17_9(v26);
    *(v28 + 8 * v27) = v17;
    OUTLINED_FUNCTION_10_12();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_41();
  while (1)
  {
    OUTLINED_FUNCTION_22_9();
    if (v20)
    {
      if (v22)
      {
        break;
      }
    }

    if (v21 == v23)
    {
      v21 = 0;
    }

    if (*(v6 + 8 * v21) != -1)
    {
      OUTLINED_FUNCTION_11_16();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1D98F12CC(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  OUTLINED_FUNCTION_4_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48F58, &qword_1D9934EB8);
  OUTLINED_FUNCTION_8_13();
  sub_1D992BEC4();
  OUTLINED_FUNCTION_23_7();
  if (!v8)
  {
LABEL_29:

LABEL_30:
    *v6 = a2;
    return;
  }

  v39 = v2;
  v40 = v3;
  v9 = 0;
  OUTLINED_FUNCTION_0_46();
  OUTLINED_FUNCTION_30_7();
  if (!v10)
  {
LABEL_4:
    v11 = v9;
    while (1)
    {
      v9 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v2)
      {
        break;
      }

      ++v11;
      if (*(v5 + 8 * v9))
      {
        OUTLINED_FUNCTION_9_1();
        v41 = v13 & v12;
        goto LABEL_9;
      }
    }

    if ((a2 & 1) == 0)
    {

      v6 = v39;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_3_18();
    v6 = v39;
    if (v37 != v38)
    {
      OUTLINED_FUNCTION_9_14(v36);
    }

    else
    {
      OUTLINED_FUNCTION_13_11(v36);
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_25_7();
LABEL_9:
    v14 = sub_1D992AE84();
    OUTLINED_FUNCTION_19_6(v14, v15, v16, v17, v18, v19, v20, v21, v39);
    MEMORY[0x1EEE9AC00](v22);
    OUTLINED_FUNCTION_18_9();
    v23 = OUTLINED_FUNCTION_35_5();
    v24(v23);
    OUTLINED_FUNCTION_36_5();
    if ((a2 & 1) == 0)
    {
    }

    sub_1D98B3748();
    sub_1D992B5C4();
    OUTLINED_FUNCTION_1_31();
    OUTLINED_FUNCTION_24_7();
    if (v25)
    {
      break;
    }

    OUTLINED_FUNCTION_6_21();
    v28 = v26 | v27;
LABEL_21:
    v34 = OUTLINED_FUNCTION_14_13();
    v35(v34);
    *(*(a2 + 56) + 8 * v28) = v3;
    OUTLINED_FUNCTION_10_12();
    v3 = v40;
    if (!v41)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_41();
  while (1)
  {
    OUTLINED_FUNCTION_22_9();
    if (v25)
    {
      if (v30)
      {
        break;
      }
    }

    if (v29 == v31)
    {
      v29 = 0;
    }

    if (*(v4 + 8 * v29) != -1)
    {
      OUTLINED_FUNCTION_11_16();
      v28 = v33 + (v32 << 6);
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1D98F1558(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  OUTLINED_FUNCTION_4_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_8_13();
  sub_1D992BEC4();
  OUTLINED_FUNCTION_23_7();
  if (!v10)
  {
LABEL_29:

LABEL_30:
    *v6 = a2;
    return;
  }

  v41 = v2;
  v42 = v3;
  v11 = 0;
  OUTLINED_FUNCTION_0_46();
  OUTLINED_FUNCTION_30_7();
  if (!v12)
  {
LABEL_4:
    v13 = v11;
    while (1)
    {
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v2)
      {
        break;
      }

      ++v13;
      if (*(v5 + 8 * v11))
      {
        OUTLINED_FUNCTION_9_1();
        v43 = v15 & v14;
        goto LABEL_9;
      }
    }

    if ((a2 & 1) == 0)
    {

      v6 = v41;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_3_18();
    v6 = v41;
    if (v39 != v40)
    {
      OUTLINED_FUNCTION_9_14(v38);
    }

    else
    {
      OUTLINED_FUNCTION_13_11(v38);
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_25_7();
LABEL_9:
    v16 = sub_1D992AE84();
    OUTLINED_FUNCTION_19_6(v16, v17, v18, v19, v20, v21, v22, v23, v41);
    MEMORY[0x1EEE9AC00](v24);
    OUTLINED_FUNCTION_18_9();
    v25 = OUTLINED_FUNCTION_35_5();
    v26(v25);
    OUTLINED_FUNCTION_36_5();
    if ((a2 & 1) == 0)
    {
    }

    sub_1D98B3748();
    sub_1D992B5C4();
    OUTLINED_FUNCTION_1_31();
    OUTLINED_FUNCTION_24_7();
    if (v27)
    {
      break;
    }

    OUTLINED_FUNCTION_6_21();
    v30 = v28 | v29;
LABEL_21:
    v36 = OUTLINED_FUNCTION_14_13();
    v37(v36);
    *(*(a2 + 56) + 8 * v30) = v3;
    OUTLINED_FUNCTION_10_12();
    v3 = v42;
    if (!v43)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_41();
  while (1)
  {
    OUTLINED_FUNCTION_22_9();
    if (v27)
    {
      if (v32)
      {
        break;
      }
    }

    if (v31 == v33)
    {
      v31 = 0;
    }

    if (*(v4 + 8 * v31) != -1)
    {
      OUTLINED_FUNCTION_11_16();
      v30 = v35 + (v34 << 6);
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t dispatch thunk of TaggingService.save(tag:)()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v6 = (*(*v0 + 120) + **(*v0 + 120));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D98F1970;

  return v6(v3);
}

uint64_t sub_1D98F1970()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_29();
  v3 = *v0;
  OUTLINED_FUNCTION_16();
  *v4 = v3;

  OUTLINED_FUNCTION_29_0();

  return v5(v2);
}

uint64_t dispatch thunk of TaggingService.all()()
{
  OUTLINED_FUNCTION_26();
  v4 = (*(*v0 + 128) + **(*v0 + 128));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D98F1970;

  return v4();
}

uint64_t sub_1D98F1BC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t OUTLINED_FUNCTION_13_11@<X0>(uint64_t a1@<X8>)
{

  return sub_1D98B9718(0, (a1 + 63) >> 6, v1);
}

uint64_t SensitiveConditionTag.write(to:)(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1D98907D8(v4);
  [a1 writeInt32:v3 forTag:1];
  v6[3] = &type metadata for TagPredicate;
  v6[4] = sub_1D9891570();
  v6[0] = v4;
  sub_1D992B9D4();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

unint64_t static SensitiveConditionTag.read(from:)()
{
  sub_1D98F1F8C();
  sub_1D992B964();
  if (!v2)
  {
    v3 = sub_1D992B484();
    sub_1D98847C8();
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x1E6999BA8], v3);
    swift_willThrow();
  }

  return sub_1D9890E8C(0xF000000000000007);
}

id sub_1D98F1EC4(unsigned __int8 *a1, uint64_t a2, id a3)
{
  v3 = *a1;
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    return sub_1D992B974();
  }

  else
  {
    result = [a3 readInt32];
    *a2 = result;
    *(a2 + 4) = 0;
  }

  return result;
}

unint64_t sub_1D98F1F8C()
{
  result = qword_1ECB47CF8;
  if (!qword_1ECB47CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47CF8);
  }

  return result;
}

unint64_t sub_1D98F1FE4()
{
  result = qword_1ECB47CF0;
  if (!qword_1ECB47CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47CF0);
  }

  return result;
}

unint64_t sub_1D98F2038(unint64_t *a1, uint64_t a2)
{
  sub_1D9890E38();
  sub_1D992B964();
  if (!v2)
  {
    v3 = sub_1D992B484();
    sub_1D98847C8();
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x1E6999BA8], v3);
    swift_willThrow();
  }

  return sub_1D9890E8C(0xF000000000000007);
}

_BYTE *_s6FieldsOwst_2(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D98F2300()
{
  result = qword_1ECB48F78;
  if (!qword_1ECB48F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48F78);
  }

  return result;
}

unint64_t sub_1D98F2354()
{
  result = qword_1ECB48F80;
  if (!qword_1ECB48F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48F80);
  }

  return result;
}

id sub_1D98F23C4(uint64_t a1)
{
  v3 = type metadata accessor for ComponentId(0);
  MEMORY[0x1EEE9AC00](*(*(v3 - 8) + 64));
  v5 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for MessageGroupIdentifier(0);
  MEMORY[0x1EEE9AC00](*(*(v6 - 8) + 64));
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - v9;
  v11 = *v1;
  result = [objc_allocWithZone(MEMORY[0x1E69CED40]) init];
  if (result)
  {
    v13 = result;
    [result setSensitivityState_];
    switch(v11 >> 61)
    {
      case 1uLL:
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
        v35 = swift_projectBox();
        v36 = *(v35 + *(v34 + 48));
        sub_1D988EE2C(v35, v10);
        sub_1D988EE2C(v10, v8);
        sub_1D98C5154(v8, v5);
        result = [objc_allocWithZone(MEMORY[0x1E69CED30]) &selRef_handler_fetchStateForPluginName_completion_];
        if (!result)
        {
          goto LABEL_53;
        }

        v37 = result;
        v38 = [objc_allocWithZone(MEMORY[0x1E69CF5F8]) &selRef_handler_fetchStateForPluginName_completion_];
        [v37 setComponentId_];

        v39 = [v37 componentId];
        if (v39)
        {
          v40 = v39;
          [v39 setComponent_];
        }

        v41 = [v37 componentId];
        if (v41)
        {
          v42 = v41;
          sub_1D98F2C18();
          v43 = *(v3 + 20);
          v44 = *(sub_1D992AE84() - 8);
          MEMORY[0x1EEE9AC00](*(v44 + 64));
          v46 = &v49 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v47 + 16))(v46, v5 + v43);
          v48 = sub_1D98B5B94(v46);
          [v42 setUuid_];
        }

        [v37 setRedactConnectedEvents_];
        [v13 setComponentId_];

        sub_1D98F2C5C(v5, type metadata accessor for ComponentId);
        sub_1D98F2C5C(v10, type metadata accessor for MessageGroupIdentifier);
        break;
      case 2uLL:
      case 3uLL:
      case 4uLL:
        if (qword_1ED8BD6E0 != -1)
        {
LABEL_50:
          swift_once();
        }

        v51 = 0;
        v52 = 0xE000000000000000;
        sub_1D992BD64();
        MEMORY[0x1DA739C30](0xD000000000000020, 0x80000001D993C420);
        v14 = sub_1D992BB54();
        MEMORY[0x1DA739C30](v14);

        MEMORY[0x1DA739C30](0xD000000000000043, 0x80000001D993C450);
        sub_1D986A454(v51, v52, 0xD000000000000060, 0x80000001D993C4A0, 0xD00000000000001CLL, 0x80000001D993C510);

        v51 = v11;
        sub_1D98F2A0C();
        v16 = v15;
        v17 = 0;
        v18 = *(v15 + 16);
        v19 = MEMORY[0x1E69E7CC0];
        while (v18 != v17)
        {
          if (v17 >= *(v16 + 16))
          {
            __break(1u);
            goto LABEL_50;
          }

          v20 = *(v16 + 8 * v17 + 32);
          v49 = v20;
          sub_1D98907D8(v20);
          if (sub_1D98C500C())
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v50 = v19;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D98B9CEC(0, v19[2] + 1, 1);
              v19 = v50;
            }

            v23 = v19[2];
            v22 = v19[3];
            v11 = v23 + 1;
            if (v23 >= v22 >> 1)
            {
              sub_1D98B9CEC((v22 > 1), v23 + 1, 1);
              v19 = v50;
            }

            ++v17;
            v19[2] = v11;
            v19[v23 + 4] = v20;
          }

          else
          {
            sub_1D9890810(v20);
            ++v17;
          }
        }

        if (v19[2])
        {
          v24 = v19[4];
          sub_1D98907D8(v24);

          v51 = v24;
          v25 = sub_1D98F23C4(a1);

          sub_1D9890810(v24);
          v13 = v25;
        }

        else
        {
        }

        break;
      case 5uLL:
        [v13 setIsEntireClockAffected_];
        break;
      default:
        v26 = *(v11 + 32);
        if (v26 == 1)
        {
          v27 = *(v11 + 16);
        }

        else
        {
          v27 = 0;
        }

        if (v26 == 1)
        {
          v28 = 0;
        }

        else
        {
          v28 = *(v11 + 16);
        }

        if (*(v11 + 32))
        {
          v29 = v27;
        }

        else
        {
          v29 = *(v11 + 16);
        }

        if (*(v11 + 32))
        {
          v30 = v26 != 1;
        }

        else
        {
          v30 = 0;
        }

        if (*(v11 + 32))
        {
          v31 = v28;
        }

        else
        {
          v31 = *(v11 + 24);
        }

        if (*(v11 + 32))
        {
          v32 = v26 == 1;
        }

        else
        {
          v32 = 0;
        }

        result = [objc_allocWithZone(MEMORY[0x1E69CED50]) &selRef_handler_fetchStateForPluginName_completion_];
        if (!result)
        {
          goto LABEL_52;
        }

        v33 = result;
        if (!v30)
        {
          [result setStartTimeInNs_];
        }

        if (!v32)
        {
          [v33 setEndTimeInNs_];
        }

        [v13 setTimeSpan_];

        break;
    }

    return v13;
  }

  else
  {
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  return result;
}

void sub_1D98F2A0C()
{
  v1 = *v0;
  if ((v1 >> 61) - 2 >= 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489F0, &unk_1D9932530);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D992FCB0;
    *(v16 + 32) = v1;
    sub_1D98907D8(v1);
  }

  else if (((v1 >> 61) & 6) == 2)
  {
    v2 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v3 = *(v2 + 16);
    if (v3)
    {

      v4 = MEMORY[0x1E69E7CC0];
      for (i = 32; ; i += 8)
      {
        v6 = *(v2 + i);
        sub_1D98907D8(v6);
        sub_1D98F2A0C();
        v8 = *(v7 + 16);
        v9 = *(v4 + 16);
        if (__OFADD__(v9, v8))
        {
          break;
        }

        v10 = v7;
        if (!swift_isUniquelyReferenced_nonNull_native() || (v11 = *(v4 + 24) >> 1, v11 < v9 + v8))
        {
          sub_1D98BDB08();
          v4 = v12;
          v11 = *(v12 + 24) >> 1;
        }

        if (*(v10 + 16))
        {
          if (v11 - *(v4 + 16) < v8)
          {
            goto LABEL_22;
          }

          swift_arrayInitWithCopy();

          if (v8)
          {
            v13 = *(v4 + 16);
            v14 = __OFADD__(v13, v8);
            v15 = v13 + v8;
            if (v14)
            {
              goto LABEL_23;
            }

            *(v4 + 16) = v15;
          }
        }

        else
        {

          if (v8)
          {
            goto LABEL_21;
          }
        }

        sub_1D9890810(v6);
        if (!--v3)
        {

          return;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
    }
  }

  else
  {
    v18 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1D98907D8(v18);
    sub_1D98F2A0C();
    sub_1D98EBF2C(v17);
    sub_1D9890810(v18);
  }
}

unint64_t sub_1D98F2C18()
{
  result = qword_1ED8BD948[0];
  if (!qword_1ED8BD948[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ED8BD948);
  }

  return result;
}

uint64_t sub_1D98F2C5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id BiomeSELFStreamProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BiomeSELFStreamProvider.init()()
{
  v1 = OBJC_IVAR____TtC13SiriAnalytics23BiomeSELFStreamProvider_excludedAnyEventTypes;
  *&v0[v1] = sub_1D98F375C(&unk_1F55182C8);
  v2 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v3 = [v2 SELFProcessedEvent];
  swift_unknownObjectRelease();
  v4 = [v3 source];

  *&v0[OBJC_IVAR____TtC13SiriAnalytics23BiomeSELFStreamProvider_biomeSource] = v4;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for BiomeSELFStreamProvider();
  return objc_msgSendSuper2(&v6, sel_init);
}

void sub_1D98F2DF0(void *a1)
{
  v2 = sub_1D98F2E70(a1);
  if (v2)
  {
    v3 = v2;
    v4 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics23BiomeSELFStreamProvider_biomeSource);
    v5 = sub_1D98F30D0(v2);
    [v4 sendEvent_];
  }
}

id sub_1D98F2E70(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC13SiriAnalytics23BiomeSELFStreamProvider_excludedAnyEventTypes);
  result = sub_1D992B054();
  if (!result)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  v7 = [result getAnyEventType];

  if (sub_1D98E8654(v7, v4))
  {
    return 0;
  }

  result = sub_1D992B054();
  if (!result)
  {
    goto LABEL_20;
  }

  v9 = result;
  v10 = [result getAnyEventType];

  if (v10 != 1)
  {
    return a1;
  }

  v11 = sub_1D992B074();
  if (!v11)
  {
    return a1;
  }

  v12 = v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();

  if (!v13)
  {
    return a1;
  }

  [a1 copy];
  sub_1D992BC24();
  swift_unknownObjectRelease();
  sub_1D992B104();
  swift_dynamicCast();
  v8 = v29;
  v14 = sub_1D992B074();

  if (!v14)
  {
    return v8;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15 || (v16 = [v15 location]) == 0)
  {
LABEL_16:

    return v8;
  }

  result = OUTLINED_FUNCTION_3_19();
  if (!result)
  {
    goto LABEL_21;
  }

  v17 = result;
  [result latitude];
  v19 = v18;

  result = OUTLINED_FUNCTION_3_19();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v20 = result;
  [result longitude];
  v22 = v21;

  result = OUTLINED_FUNCTION_3_19();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v23 = result;
  *&v24 = OUTLINED_FUNCTION_1_32(v19);
  [v25 setLatitude_];

  result = OUTLINED_FUNCTION_3_19();
  if (result)
  {
    v26 = result;
    *&v27 = OUTLINED_FUNCTION_1_32(v22);
    [v28 setLongitude_];

    goto LABEL_16;
  }

LABEL_24:
  __break(1u);
  return result;
}

id sub_1D98F30D0(uint64_t a1)
{
  result = sub_1D992B0B4();
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = result;
  sub_1D992B154();

  v3 = sub_1D992C0D4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  MEMORY[0x1EEE9AC00](((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = &v41 - v5;
  result = sub_1D992B0B4();
  if (!result)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = result;
  sub_1D992B134();

  v8 = sub_1D992AE84();
  OUTLINED_FUNCTION_2_31();
  v9 = objc_allocWithZone(MEMORY[0x1E698EF40]);
  v10 = sub_1D98F3490(v3, v6);
  v11 = sub_1D992B0E4();
  if (v11)
  {
    v13 = v11;
    MEMORY[0x1EEE9AC00](v12);
    OUTLINED_FUNCTION_0_47();
    v16 = v14 - v15;
    sub_1D992B194();
    OUTLINED_FUNCTION_2_31();
    sub_1D992B174();
    v17 = sub_1D992C064();
    v18 = objc_allocWithZone(MEMORY[0x1E698EF38]);
    v19 = sub_1D98F3550(v16, v17);
  }

  else
  {
    v19 = 0;
  }

  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_0_47();
  v22 = v20 - v21;
  result = sub_1D992B054();
  if (!result)
  {
    goto LABEL_19;
  }

  v23 = result;
  v24 = [result getComponentId];

  if (v24)
  {
    sub_1D992BA04();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v8);
  }

  result = sub_1D992B054();
  if (!result)
  {
    goto LABEL_20;
  }

  v25 = result;
  [result getComponentName];

  v26 = sub_1D992C064();
  v27 = objc_allocWithZone(MEMORY[0x1E698EF38]);
  v28 = sub_1D98F3550(v22, v26);
  result = sub_1D992B054();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v29 = result;
  [result getAnyEventType];

  v30 = sub_1D992C064();
  sub_1D992B064();
  if (v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = sub_1D992B954();
  }

  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_0_47();
  v36 = v34 - v35;
  sub_1D992B084();
  result = sub_1D992B054();
  if (result)
  {
    v37 = sub_1D98F3918(result);
    v39 = v38;
    v40 = objc_allocWithZone(MEMORY[0x1E698EF30]);
    return sub_1D98F3610(v10, v19, v28, v30, v33, v36, v37, v39);
  }

LABEL_22:
  __break(1u);
  return result;
}

id BiomeSELFStreamProvider.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BiomeSELFStreamProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1D98F3490(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D992AE84();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v6) != 1)
  {
    v7 = sub_1D992AE44();
    (*(*(v6 - 8) + 8))(a2, v6);
  }

  v8 = [v3 initWithTimestampInNanoseconds:a1 clockIdentifier:v7];

  return v8;
}

id sub_1D98F3550(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D992AE84();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v6) != 1)
  {
    v7 = sub_1D992AE44();
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  v8 = [v3 initWithUuid:v7 componentName:a2];

  return v8;
}

id sub_1D98F3610(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v16 = sub_1D992AE84();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a6, 1, v16) != 1)
  {
    v17 = sub_1D992AE44();
    (*(*(v16 - 8) + 8))(a6, v16);
  }

  if (a8 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    v18 = sub_1D992AD74();
    sub_1D9866358(a7, a8);
  }

  v19 = [v21 initWithLogicalTimestamp:a1 clusterRepresentativeId:a2 componentId:a3 anyEventType:a4 innerType:a5 messageUuid:v17 eventData:v18];

  return v19;
}

uint64_t sub_1D98F375C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A18, &qword_1D9932570);
  result = sub_1D992BD34();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + 4 * v5++);
    sub_1D992C074();
    sub_1D992C0A4();
    result = sub_1D992C0C4();
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v6 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 4 * v9) == v7)
      {
        goto LABEL_11;
      }

      result = v9 + 1;
    }

    *(v6 + 8 * v10) = v12 | v11;
    *(*(v3 + 48) + 4 * v9) = v7;
    v13 = *(v3 + 16);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v15;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D98F3918(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D992AD84();

  return v3;
}

unint64_t sub_1D98F3988()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connectionLock);
  os_unfair_lock_lock(v1 + 4);
  v2 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connection);
  if (v2 && (v3 = [v2 processIdentifier], v3 >= 1))
  {
    v4 = v3;
    os_unfair_lock_unlock(v1 + 4);
    v5 = 0;
    v6 = v4;
  }

  else
  {
    os_unfair_lock_unlock(v1 + 4);
    v6 = 0;
    v5 = 1;
  }

  return v6 | (v5 << 32);
}

uint64_t sub_1D98F3A20()
{
  OUTLINED_FUNCTION_18();
  v1[17] = v2;
  v1[18] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48FB0, &unk_1D9935068);
  v1[19] = swift_task_alloc();
  v3 = sub_1D992AFE4();
  v1[20] = v3;
  OUTLINED_FUNCTION_23(v3);
  v1[21] = v4;
  v1[22] = swift_task_alloc();
  v5 = sub_1D992B004();
  v1[23] = v5;
  OUTLINED_FUNCTION_23(v5);
  v1[24] = v6;
  v1[25] = swift_task_alloc();
  v7 = sub_1D992AFB4();
  v1[26] = v7;
  OUTLINED_FUNCTION_23(v7);
  v1[27] = v8;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D98F3BC0, 0, 0);
}

uint64_t sub_1D98F3BC0()
{
  v1 = v0[29];
  v2 = v0[27];
  v20 = v0[26];
  v21 = v0[28];
  v3 = v0[24];
  v4 = v0[25];
  v19 = v0[23];
  v6 = v0[17];
  v5 = v0[18];
  v7 = OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connection;
  v0[30] = OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connection;
  *(v5 + v7) = 0;
  v8 = OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_proxy;
  v0[31] = OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_proxy;
  *(v5 + v8) = 0;
  v9 = OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connectionLock;
  v0[32] = OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connectionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB488E0, &unk_1D9931D50);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v5 + v9) = v10;
  v11 = OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_continuationsLock;
  v0[33] = OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_continuationsLock;
  sub_1D992AE84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
  sub_1D98B3748();
  v12 = sub_1D992B5B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48FB8, &qword_1D9935078);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = v12;
  *(v5 + v11) = v13;
  v14 = *(v3 + 16);
  v0[34] = v14;
  v0[35] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v4, v6, v19);
  sub_1D992AFA4();
  (*(v2 + 16))(v21, v1, v20);
  v15 = swift_task_alloc();
  v0[36] = v15;
  *v15 = v0;
  v15[1] = sub_1D98F3DCC;
  v16 = v0[28];
  v17 = v0[19];

  return MEMORY[0x1EEDC0A48](v17, v16);
}

uint64_t sub_1D98F3DCC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_16();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_16();
  *v5 = v4;
  *(v6 + 296) = v0;

  if (v0)
  {

    v7 = sub_1D98F3EDC;
  }

  else
  {
    v7 = sub_1D98F411C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D98F3EDC()
{
  v1 = v0[19];
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v0[20]);
  sub_1D98E3DA0(v1, &qword_1ECB48FB0, &unk_1D9935068);
  if (qword_1ED8BF430 != -1)
  {
    OUTLINED_FUNCTION_2_14(&qword_1ED8BF430);
  }

  v17 = v0[30];
  v2 = v0[27];
  v15 = v0[26];
  v16 = v0[29];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[17];
  v5 = v0[18];
  sub_1D992BD64();

  OUTLINED_FUNCTION_38();
  v18 = v7;
  v8 = sub_1D992AFF4();
  MEMORY[0x1DA739C30](v8);

  OUTLINED_FUNCTION_1_33();
  sub_1D98DCEB4(v10, v18, 0xD000000000000072, v9 | 0x8000000000000000, v11, v12);

  (*(v3 + 8))(v6, v4);
  (*(v2 + 8))(v16, v15);

  swift_unknownObjectRelease();

  type metadata accessor for ExtensionConnection(0);
  swift_deallocPartialClassInstance();

  v13 = v0[1];

  return v13(0);
}

void sub_1D98F411C()
{
  v55 = v0[37];
  v1 = v0[34];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v4);
  (*(v5 + 32))(v2, v6, v4);
  v1(v7 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_identity, v8, v3);
  (*(v5 + 16))(v7 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_process, v2, v4);
  v9 = sub_1D992AFD4();
  if (v55)
  {

    if (qword_1ED8BF430 != -1)
    {
      OUTLINED_FUNCTION_2_14(&qword_1ED8BF430);
    }

    v10 = v0[27];
    v52 = v0[26];
    v56 = v0[29];
    v12 = v0[23];
    v11 = v0[24];
    v13 = v0[21];
    v49 = v0[22];
    v14 = v0[20];
    v15 = v0[17];
    sub_1D992BD64();

    OUTLINED_FUNCTION_38();
    v59 = v16;
    v17 = sub_1D992AFF4();
    MEMORY[0x1DA739C30](v17);

    OUTLINED_FUNCTION_1_33();
    sub_1D98DCEB4(v19, v59, 0xD000000000000072, v18 | 0x8000000000000000, v20, v21);

    (*(v11 + 8))(v15, v12);
    (*(v13 + 8))(v49, v14);
    (*(v10 + 8))(v56, v52);
  }

  else
  {
    v22 = v9;
    v23 = v0[18];
    v24 = [objc_opt_self() interfaceWithProtocol_];
    [v22 setRemoteObjectInterface_];

    [v22 resume];
    v25 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_1D98F604C;
    v0[7] = v25;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1D989FD64;
    v0[5] = &block_descriptor_14;
    v26 = _Block_copy(v0 + 2);

    v27 = [v22 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v26);
    sub_1D992BC24();
    swift_unknownObjectRelease();
    sub_1D986A8BC((v0 + 8), (v0 + 12));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48FC0, &unk_1D9935080);
    if (swift_dynamicCast())
    {
      v28 = v0[18];
      v29 = v0[16];
      v30 = *(v28 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connectionLock);
      os_unfair_lock_lock(v30 + 4);
      sub_1D98F4754(v28, v22, v29);
      os_unfair_lock_unlock(v30 + 4);
      v42 = v0[27];
      v54 = v0[26];
      v58 = v0[29];
      v44 = v0[23];
      v43 = v0[24];
      v45 = v0[21];
      v51 = v0[22];
      v46 = v0[20];
      v47 = v0[17];
      swift_unknownObjectRelease();

      (*(v43 + 8))(v47, v44);
      __swift_destroy_boxed_opaque_existential_1(v0 + 8);
      (*(v45 + 8))(v51, v46);
      (*(v42 + 8))(v58, v54);
      goto LABEL_11;
    }

    if (qword_1ED8BF430 != -1)
    {
      OUTLINED_FUNCTION_2_14(&qword_1ED8BF430);
    }

    v31 = v0[27];
    v53 = v0[26];
    v57 = v0[29];
    v33 = v0[23];
    v32 = v0[24];
    v34 = v0[21];
    v48 = v0[20];
    v50 = v0[22];
    v35 = v0[17];
    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD000000000000031, 0x80000001D993C7C0);
    v36 = sub_1D992AFF4();
    MEMORY[0x1DA739C30](v36);

    OUTLINED_FUNCTION_1_33();
    sub_1D98DCEB4(v38, 0xE000000000000000, 0xD000000000000072, v37 | 0x8000000000000000, v39, v40);

    (*(v32 + 8))(v35, v33);
    __swift_destroy_boxed_opaque_existential_1(v0 + 8);
    (*(v34 + 8))(v50, v48);
    (*(v31 + 8))(v57, v53);
  }

  v23 = 0;
LABEL_11:

  v41 = v0[1];

  v41(v23);
}

uint64_t sub_1D98F46F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D98F47C0(a1);
  }

  return result;
}

uint64_t sub_1D98F4754(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connection);
  *(a1 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connection) = a2;
  v6 = a2;

  *(a1 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_proxy) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1D98F47C0(uint64_t a1)
{
  v2 = v1;
  if (qword_1ED8BF430 != -1)
  {
    OUTLINED_FUNCTION_2_14(&qword_1ED8BF430);
  }

  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD000000000000014, 0x80000001D993C730);
  v3 = sub_1D992AFF4();
  MEMORY[0x1DA739C30](v3);

  MEMORY[0x1DA739C30](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  sub_1D98DCEB4(0, 0xE000000000000000, 0xD000000000000072, 0x80000001D993C640, 0xD000000000000019, 0x80000001D993C750);

  v4 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connectionLock);
  os_unfair_lock_lock(v4 + 4);
  *(v2 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_proxy) = 0;
  swift_unknownObjectRelease();
  v5 = *(v2 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connection);
  *(v2 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connection) = 0;

  os_unfair_lock_unlock(v4 + 4);
  v6 = *(v2 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_continuationsLock);
  MEMORY[0x1EEE9AC00](OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_continuationsLock);
  os_unfair_lock_lock((v6 + 24));
  sub_1D98F6030((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));
}

uint64_t sub_1D98F499C(uint64_t *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](((*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v20 - v6;
  v20[0] = a1;
  v8 = *a1;
  v9 = *a1 + 64;
  v10 = 1 << *(*a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(*a1 + 64);
  v13 = (v10 + 63) >> 6;
  v20[2] = v5 + 8;
  v20[3] = v5 + 16;

  for (i = 0; v12; result = (*(v5 + 8))(v7, v4))
  {
    v16 = i;
LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    (*(v5 + 16))(v7, *(v8 + 56) + *(v5 + 72) * (v17 | (v16 << 6)), v4);
    v20[5] = a2;
    v18 = a2;
    sub_1D992B824();
  }

  while (1)
  {
    v16 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      sub_1D992AE84();
      sub_1D98B3748();
      v19 = sub_1D992B5B4();

      *v20[0] = v19;
      return result;
    }

    v12 = *(v9 + 8 * v16);
    ++i;
    if (v12)
    {
      i = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1D98F4BA8(uint64_t a1)
{
  sub_1D992AE74();
  v2 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_continuationsLock);
  os_unfair_lock_lock(v2 + 6);
  sub_1D98F6014(&v2[4]);
  os_unfair_lock_unlock(v2 + 6);
}

uint64_t sub_1D98F4C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48958, &unk_1D9932360);
  MEMORY[0x1EEE9AC00](((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = &v14 - v6;
  v8 = *(sub_1D992AE84() - 8);
  MEMORY[0x1EEE9AC00](*(v8 + 64));
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
  (*(*(v12 - 8) + 16))(v7, a3, v12);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
  return sub_1D98B152C(v7, v10);
}

void sub_1D98F4D9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_continuationsLock);
  os_unfair_lock_lock((v1 + 24));
  sub_1D98F5FF4((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1D98F4DFC(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48958, &unk_1D9932360);
  MEMORY[0x1EEE9AC00](((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v21 - v7;
  v9 = sub_1D9889568();
  if (v10)
  {
    v11 = v9;
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E0, &qword_1D9931B08);
    sub_1D992BE34();
    v12 = v22;
    v13 = *(v22 + 48);
    v14 = sub_1D992AE84();
    (*(*(v14 - 8) + 8))(v13 + *(*(v14 - 8) + 72) * v11, v14);
    v21[1] = v3;
    v15 = a3;
    v16 = *(v12 + 56);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
    (*(*(v17 - 8) + 32))(v8, v16 + *(*(v17 - 8) + 72) * v11, v17);
    sub_1D98B3748();
    sub_1D992BE44();
    *a1 = v12;
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v17);
    v18 = sub_1D98E3DA0(v8, &qword_1ECB48958, &unk_1D9932360);
    return v15(v18);
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v20);
    return sub_1D98E3DA0(v8, &qword_1ECB48958, &unk_1D9932360);
  }
}

uint64_t sub_1D98F503C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D98F5060, 0, 0);
}

uint64_t sub_1D98F5060()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_proxy);
  *(v0 + 48) = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    v4 = *(v0 + 24);
    *(v3 + 16) = v1;
    *(v3 + 24) = v4;
    *(v3 + 40) = v2;
    swift_unknownObjectRetain();
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    v6 = type metadata accessor for StagingReport();
    *v5 = v0;
    v5[1] = sub_1D98F51F0;

    return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x786F725068746977, 0xED0000293A5F2879, sub_1D98F5EF0, v3, v6);
  }

  else
  {
    sub_1D98F5E9C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1D98F51F0()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_16();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_16();
  *v5 = v4;
  *(v2 + 72) = v0;

  if (v0)
  {
    v6 = sub_1D98F5364;
  }

  else
  {

    v6 = sub_1D98F5300;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D98F5300()
{
  OUTLINED_FUNCTION_18();
  swift_unknownObjectRelease();
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D98F5364()
{
  OUTLINED_FUNCTION_18();
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D98F53CC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v20 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
  v6 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = &v19 - v7;
  v9 = sub_1D992AE84();
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = v10[8];
  MEMORY[0x1EEE9AC00](v10);
  sub_1D98F4BA8(a1);
  MEMORY[0x1EEE9AC00](v13);
  v14 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v11[2])(v14, v14, v9);
  (*(v6 + 16))(v8, a1, v24);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = (v12 + *(v6 + 80) + v15) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v20;
  (v11[4])(v17 + v15, v14, v9);
  (*(v6 + 32))(v17 + v16, v8, v24);

  v23(v21, sub_1D98F5EFC, v17);

  return (v11[1])(v14, v9);
}

uint64_t sub_1D98F56A8(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = a1;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
    return sub_1D992B824();
  }

  if (!a3)
  {
    sub_1D98F5E9C();
    swift_allocError();
    *v6 = 1;
    goto LABEL_3;
  }

  v5 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
  return sub_1D992B834();
}

void sub_1D98F5758(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = sub_1D98F3988();
  if ((v4 & 0x100000000) != 0 || (v5 = [objc_opt_self() identifierWithPid_]) == 0)
  {
    if (qword_1ED8BF430 != -1)
    {
      OUTLINED_FUNCTION_2_14(&qword_1ED8BF430);
    }

    OUTLINED_FUNCTION_5_20();
    sub_1D992BD64();

    OUTLINED_FUNCTION_38();
    v33 = v21;
    v22 = sub_1D992AFF4();
    MEMORY[0x1DA739C30](v22);

    sub_1D98DCEB4(0xD000000000000027, v33, 0xD000000000000072, 0x80000001D993C640, 0xD000000000000012, 0x80000001D993C6C0);
  }

  else
  {
    v6 = v5;
    sub_1D986E35C(0, &qword_1ECB48F98, 0x1E69C7650);

    v7 = sub_1D98F5B70(a1, a2);
    [v7 setReportType_];
    [v7 setMaximumTerminationResistance_];
    v8 = [objc_opt_self() predicateMatchingIdentifier_];
    sub_1D986E35C(0, &qword_1ECB48FA0, 0x1E69C7660);
    v9 = v8;
    v10 = v7;
    v11 = sub_1D98F5BE4(v9, v10);
    if (qword_1ED8BF430 != -1)
    {
      OUTLINED_FUNCTION_2_14(&qword_1ED8BF430);
    }

    OUTLINED_FUNCTION_5_20();
    sub_1D992BD64();

    OUTLINED_FUNCTION_38();
    v33 = v12;
    v13 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v13);

    OUTLINED_FUNCTION_4_22();
    sub_1D98DCECC(v14, v15, v16, v17, v18, v19);

    v32 = 0;
    if ([v11 execute_])
    {
      v20 = v32;
    }

    else
    {
      v23 = v32;
      v31 = v9;
      v24 = sub_1D992AC94();

      swift_willThrow();
      OUTLINED_FUNCTION_5_20();
      sub_1D992BD64();
      MEMORY[0x1DA739C30](0xD000000000000014, 0x80000001D993C710);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
      sub_1D992BE24();
      OUTLINED_FUNCTION_4_22();
      sub_1D98DCEB4(v25, v26, v27, v28, v29, v30);
    }
  }
}

id sub_1D98F5B70(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1D992B614();

  v4 = [v2 initWithExplanation_];

  return v4;
}

id sub_1D98F5BE4(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPredicate:a1 context:a2];

  return v4;
}

uint64_t sub_1D98F5C40()
{
  v1 = OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_identity;
  sub_1D992B004();
  OUTLINED_FUNCTION_0_4();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_process;
  sub_1D992AFE4();
  OUTLINED_FUNCTION_0_4();
  (*(v4 + 8))(v0 + v3);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1D98F5D08()
{
  sub_1D98F5C40();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExtensionConnection(uint64_t a1)
{
  result = qword_1ECB47D58;
  if (!qword_1ECB47D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D98F5DB4(uint64_t a1)
{
  result = sub_1D992B004();
  if (v2 <= 0x3F)
  {
    result = sub_1D992AFE4();
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

unint64_t sub_1D98F5E9C()
{
  result = qword_1ECB48FA8;
  if (!qword_1ECB48FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48FA8);
  }

  return result;
}

void sub_1D98F5EFC()
{
  v0 = sub_1D992AE84();
  OUTLINED_FUNCTION_23(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);

  sub_1D98F5658();
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *storeEnumTagSinglePayload for ExtensionConnectionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D98F614C()
{
  result = qword_1ECB48FC8;
  if (!qword_1ECB48FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48FC8);
  }

  return result;
}

uint64_t sub_1D98F61A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48FD0, &qword_1D9935180);
  v6 = sub_1D992AD44();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  (*(v7 + 16))(&v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v9 = *MEMORY[0x1E696A388];
  v13[12] = 0;
  v10 = sub_1D992B324();
  (*(v7 + 8))(a1, v6);
  v11 = *(v3 + 24);
  *(v3 + 16) = v10;
  *(v3 + 24) = a2;

  return v3;
}

uint64_t sub_1D98F62F4()
{
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD00000000000001ELL, 0x80000001D993A240);
  sub_1D992AE84();
  sub_1D98A19C4();
  v0 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v0);

  MEMORY[0x1DA739C30](0xD000000000000019, 0x80000001D993C920);
  return 0;
}

uint64_t sub_1D98F64F4()
{

  return v0;
}

uint64_t sub_1D98F651C()
{
  sub_1D98F64F4();

  return swift_deallocClassInstance();
}

uint64_t TimestampRange.init(_:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (a2)
  {
    if (a4)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      v5 = -1;
    }

    else
    {
      *a5 = a3;
      *(a5 + 8) = 0;
      v5 = 2;
    }

    goto LABEL_7;
  }

  *a5 = result;
  if (a4)
  {
    *(a5 + 8) = 0;
    v5 = 1;
LABEL_7:
    *(a5 + 16) = v5;
    return result;
  }

  *(a5 + 8) = a3;
  *(a5 + 16) = 0;
  return result;
}

uint64_t TimestampRange.init(start:end:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  *a4 = result;
  *(a4 + 8) = v4;
  *(a4 + 16) = a3 & 1;
  return result;
}

Swift::Bool __swiftcall TimestampRange.contains(timestamp:)(Swift::UInt64 timestamp)
{
  v2 = *v1;
  if (*(v1 + 16))
  {
    v6 = v2 >= timestamp;
    v3 = v2 <= timestamp;
    v4 = v6;
    if (*(v1 + 16) == 1)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    return v2 <= timestamp && *(v1 + 8) >= timestamp;
  }
}

BOOL static TimestampRange.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) > 1u)
  {
    return 1;
  }

  return *(a2 + 16) < 2u && *a1 < *a2;
}

BOOL static TimestampRange.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    v6 = v4 == 1 && v2 == v3;
    v8 = v4 == 2 && v2 == v3;
    if (*(a1 + 16) == 1)
    {
      return v6;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      v10 = 0;
    }

    else
    {
      v10 = v2 == v3;
    }

    return v10 && a1[1] == a2[1];
  }
}

unint64_t sub_1D98F66E0()
{
  result = qword_1ECB48FD8;
  if (!qword_1ECB48FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48FD8);
  }

  return result;
}

uint64_t sub_1D98F67D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TagsTable.Record(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v6 + 64));
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  v10 = sub_1D992AE84();
  OUTLINED_FUNCTION_6();
  v12 = v11;
  v14 = v13[8];
  MEMORY[0x1EEE9AC00](v13);
  v142 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](((*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_40_3();
  if (!v16 || (sub_1D9889410(0x64695F6B636F6C63, 0xE800000000000000), (v17 & 1) == 0))
  {

    OUTLINED_FUNCTION_7_19(v2);
LABEL_17:
    sub_1D986B804(v2, &qword_1ECB481D0, &qword_1D992F9F0);
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v5);
  }

  v139 = v9;
  v140 = v12;
  v141 = a2;
  OUTLINED_FUNCTION_1_13();
  v19 = *(v18 + 16);
  v20 = *(v18 + 8) | *v18;
  if (v19 == 4 && v20 == 0)
  {
    OUTLINED_FUNCTION_7_19(v2);

LABEL_16:
    a2 = v141;
    goto LABEL_17;
  }

  v137 = &v131;
  v138 = v5;
  MEMORY[0x1EEE9AC00](&v131);
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_41_2();
  if (v19 == 3)
  {
    v22 = OUTLINED_FUNCTION_9_0();
    sub_1D987BA38(v22, v23);
    OUTLINED_FUNCTION_9_0();
    sub_1D992AD64();
  }

  else if (v19)
  {
    OUTLINED_FUNCTION_7_19(v5);
    v24 = OUTLINED_FUNCTION_9_15();
    sub_1D986C8B8(v24, v25, v26);
  }

  else
  {

    OUTLINED_FUNCTION_9_0();
    sub_1D992AE14();
  }

  v27 = OUTLINED_FUNCTION_25_8(v2);
  __swift_storeEnumTagSinglePayload(v2, v27 ^ 1u, 1, v10);
  v28 = OUTLINED_FUNCTION_9_15();
  sub_1D986C908(v28, v29, v30);
  if (__swift_getEnumTagSinglePayload(v2, 1, v10) == 1)
  {

    v5 = v138;
    goto LABEL_16;
  }

  v32 = v140;
  v33 = v140 + 32;
  v34 = v142;
  v137 = *(v140 + 32);
  (v137)(v142, v2, v10);
  v36 = v32 + 16;
  v35 = *(v32 + 16);
  v37 = v139;
  v35(v139, v34, v10);
  if (!*(a1 + 16) || (sub_1D9889410(0x636170735F676174, 0xE900000000000065), (v38 & 1) == 0))
  {

    v61 = *(v140 + 8);
    (v61)(v34, v10);
    v62 = 0;
    v63 = 0;
LABEL_28:
    (v61)(v37, v10);
    if (v62)
    {
      (v61)(v37 + v138[6], v10);
    }

    v5 = v138;
    a2 = v141;
    if (v63)
    {
      sub_1D987106C(*(v37 + v138[7]), *(v37 + v138[7] + 8));
    }

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v5);
  }

  v135 = v35;
  v136 = v33;
  OUTLINED_FUNCTION_1_13();
  v39 = OUTLINED_FUNCTION_9_15();
  sub_1D986C8B8(v39, v40, v41);
  v42 = OUTLINED_FUNCTION_9_15();
  v45 = sub_1D9892880(v42, v43, v44);
  v46 = OUTLINED_FUNCTION_9_15();
  sub_1D986C908(v46, v47, v48);
  if ((v45 & 0x100000000) != 0)
  {
    v61 = *(v140 + 8);
    v64 = OUTLINED_FUNCTION_22_10();
    (v61)(v64);

    v62 = 0;
    v63 = 0;
    v37 = v139;
    goto LABEL_28;
  }

  v37 = v139;
  v49 = v138[5];
  *(v49 + v139) = v45;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_41_2();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_8_14();
  v53 = v51 - v52;
  if (!*(a1 + 16) || (v54 = OUTLINED_FUNCTION_21_7(), sub_1D9889410(v54, v55), (v56 & 1) == 0))
  {

    v61 = *(v140 + 8);
    v65 = OUTLINED_FUNCTION_22_10();
    (v61)(v65);
    OUTLINED_FUNCTION_7_19(v53);
LABEL_41:
    sub_1D986B804(v53, &qword_1ECB481D0, &qword_1D992F9F0);
    v62 = 0;
    v63 = 0;
    goto LABEL_28;
  }

  v134 = &v131;
  OUTLINED_FUNCTION_1_13();
  v58 = *v57;
  v59 = *(v57 + 8);
  v60 = *(v57 + 16);
  if (v60 == 4)
  {
    v57 = v59 | v58;
    if (!(v59 | v58))
    {
      OUTLINED_FUNCTION_7_19(v53);
LABEL_40:
      v61 = *(v140 + 8);
      v73 = OUTLINED_FUNCTION_22_10();
      (v61)(v73);

      v37 = v139;
      goto LABEL_41;
    }
  }

  v132 = v45;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_41_2();
  v133 = v66;
  v131 = v67;
  if (v60 == 3)
  {
    sub_1D987BA38(v66, v59);
    OUTLINED_FUNCTION_36_6();
    sub_1D992AD64();
  }

  else if (v60)
  {
    OUTLINED_FUNCTION_7_19(v45);
    v68 = OUTLINED_FUNCTION_36_6();
    sub_1D986C8B8(v68, v69, v60);
  }

  else
  {

    OUTLINED_FUNCTION_36_6();
    sub_1D992AE14();
  }

  v70 = OUTLINED_FUNCTION_25_8(v53);
  OUTLINED_FUNCTION_42_1(v70);
  v71 = OUTLINED_FUNCTION_36_6();
  sub_1D986C908(v71, v72, v60);
  if (__swift_getEnumTagSinglePayload(v53, 1, v10) == 1)
  {
    goto LABEL_40;
  }

  v61 = v132;
  (v137)(v132, v53, v10);
  v37 = v139;
  v135(v139 + v138[6], v61, v10);
  if (!*(a1 + 16))
  {
    goto LABEL_51;
  }

  sub_1D9889410(0x617461645F676174, 0xE800000000000000);
  if ((v74 & 1) == 0)
  {
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_1_13();
  v61 = *v75;
  v76 = *(v75 + 8);
  v77 = *(v75 + 16);
  if (v77 == 4 && !(v76 | v61))
  {
    goto LABEL_51;
  }

  if (v77 == 3)
  {
    sub_1D987BA38(v61, v76);
  }

  else
  {
    v61 = 0;
    v76 = 0xF000000000000000;
  }

  v143 = v61;
  v144 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48930, &unk_1D9932130);
  if ((swift_dynamicCast() & 1) == 0 || (v78 = v146, v146 >> 60 == 15))
  {
LABEL_51:

    v79 = OUTLINED_FUNCTION_3_20();
    (v61)(v79);
    v80 = OUTLINED_FUNCTION_22_10();
    (v61)(v80);
    v63 = 0;
    v62 = 1;
    goto LABEL_28;
  }

  v81 = (v37 + v138[7]);
  *v81 = v145;
  v81[1] = v78;
  v82 = sub_1D992AE04();
  v137 = &v131;
  v83 = v82;
  OUTLINED_FUNCTION_6();
  v136 = v84;
  MEMORY[0x1EEE9AC00](*(v85 + 64));
  OUTLINED_FUNCTION_13();
  v135 = (v87 - v86);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
  OUTLINED_FUNCTION_9(v88);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_40_3();
  if (!v90 || (sub_1D9889410(0x5F64657461657263, 0xEA00000000006E6FLL), (v91 & 1) == 0))
  {

    v105 = OUTLINED_FUNCTION_3_20();
    (v61)(v105);
    v106 = OUTLINED_FUNCTION_22_10();
    (v61)(v106);
    __swift_storeEnumTagSinglePayload(v36, 1, 1, v83);
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_1_13();
  v61 = *v92;
  v93 = OUTLINED_FUNCTION_0_19();
  sub_1D986C8B8(v93, v94, v95);
  v96 = OUTLINED_FUNCTION_0_19();
  sub_1D9892670(v96, v97, v98, v99);
  v100 = OUTLINED_FUNCTION_0_19();
  sub_1D986C908(v100, v101, v102);
  if (__swift_getEnumTagSinglePayload(v36, 1, v83) == 1)
  {

    v103 = OUTLINED_FUNCTION_3_20();
    (v61)(v103);
    v104 = OUTLINED_FUNCTION_22_10();
    (v61)(v104);
LABEL_57:
    sub_1D986B804(v36, &qword_1ECB48710, &qword_1D9931340);
    v62 = 1;
    v63 = 1;
    v37 = v139;
    goto LABEL_28;
  }

  v108 = v135;
  v107 = v136;
  (*(v136 + 32))(v135, v36, v83);
  (*(v107 + 16))(v139 + v138[8], v108, v83);
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_8_14();
  v112 = v110 - v111;
  if (*(a1 + 16) && (v113 = OUTLINED_FUNCTION_23_8(), sub_1D9889410(v113, v114), (v115 & 1) != 0))
  {
    OUTLINED_FUNCTION_1_13();
    v117 = *v116;
    v118 = *(v116 + 16);
    v119 = *v116;
    v133 = *(v116 + 8);
    sub_1D986C8B8(v119, v133, v118);

    if (v118 != 4 || (v120 = (v133 | v117)) != 0)
    {
      MEMORY[0x1EEE9AC00](v120);
      OUTLINED_FUNCTION_8_14();
      OUTLINED_FUNCTION_41_2();
      if (v118 == 3)
      {
        sub_1D987BA38(v117, v133);
        OUTLINED_FUNCTION_28_6();
        sub_1D992AD64();
        v123 = OUTLINED_FUNCTION_28_6();
        sub_1D986C908(v123, v124, 3);
      }

      else if (v118)
      {
        OUTLINED_FUNCTION_7_19(v61);
      }

      else
      {
        sub_1D992AE14();
      }

      v125 = OUTLINED_FUNCTION_25_8(v112);
      OUTLINED_FUNCTION_42_1(v125);
      sub_1D986C908(v117, v133, v118);
    }

    else
    {
      OUTLINED_FUNCTION_7_19(v112);
    }

    (*(v136 + 8))(v135, v83);
    v126 = OUTLINED_FUNCTION_3_20();
    (v61)(v126);
    v127 = OUTLINED_FUNCTION_22_10();
    (v61)(v127);
  }

  else
  {

    (*(v136 + 8))(v135, v83);
    v121 = OUTLINED_FUNCTION_3_20();
    (v61)(v121);
    v122 = OUTLINED_FUNCTION_22_10();
    (v61)(v122);
    OUTLINED_FUNCTION_7_19(v112);
  }

  v128 = v138;
  v129 = v139;
  sub_1D989437C(v112, v139 + v138[9], &qword_1ECB481D0, &qword_1D992F9F0);
  v130 = v141;
  sub_1D98F8978(v129, v141);
  __swift_storeEnumTagSinglePayload(v130, 0, 1, v128);
  return sub_1D98F89DC(v129);
}

uint64_t sub_1D98F72EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48738, &qword_1D9932140);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9935220;
  *(v2 + 32) = 0x64695F6B636F6C63;
  *(v2 + 40) = 0xE800000000000000;
  *(v2 + 48) = 0;
  v3 = sub_1D992AE84();
  OUTLINED_FUNCTION_6();
  v5 = v4;
  v56 = v6[8];
  MEMORY[0x1EEE9AC00](v6);
  v55 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = v5 + 16;
  v9 = *(v5 + 16);
  v9(&v50 - v55, v0, v3);
  v10 = sub_1D992AE24();
  v12 = v11;
  v50 = v5;
  v13 = v5 + 8;
  v14 = *(v5 + 8);
  v15 = OUTLINED_FUNCTION_18_10();
  v14(v15);
  *(v2 + 56) = xmmword_1D9931230;
  *(v2 + 72) = v10;
  *(v2 + 80) = v12;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0x636170735F676174;
  *(v2 + 104) = 0xE900000000000065;
  *(v2 + 112) = 2;
  v16 = type metadata accessor for TagsTable.Record(0);
  v17 = *(v0 + v16[5]);
  *(v2 + 120) = xmmword_1D9935230;
  *(v2 + 136) = v17;
  *(v2 + 144) = 0;
  *(v2 + 152) = 1;
  *(v2 + 160) = 0x64695F676174;
  *(v2 + 168) = 0xE600000000000000;
  *(v2 + 176) = 0;
  MEMORY[0x1EEE9AC00](v16[6]);
  v51 = v9;
  v52 = v8;
  v9(&v50 - v55, v0 + v18, v3);
  v19 = sub_1D992AE24();
  v21 = v20;
  v22 = OUTLINED_FUNCTION_18_10();
  v53 = v14;
  v54 = v13;
  v14(v22);
  *(v2 + 184) = xmmword_1D9935240;
  *(v2 + 200) = v19;
  *(v2 + 208) = v21;
  *(v2 + 216) = 0;
  *(v2 + 224) = 0x617461645F676174;
  *(v2 + 232) = 0xE800000000000000;
  *(v2 + 240) = 4;
  v23 = (v0 + v16[7]);
  v24 = *v23;
  v25 = v23[1];
  *(v2 + 248) = xmmword_1D9935250;
  *(v2 + 264) = v24;
  *(v2 + 272) = v25;
  *(v2 + 280) = 3;
  *(v2 + 288) = 0x5F64657461657263;
  *(v2 + 296) = 0xEA00000000006E6FLL;
  *(v2 + 304) = 3;
  v26 = v16[8];
  v27 = sub_1D992AE04();
  OUTLINED_FUNCTION_6();
  v29 = v28;
  MEMORY[0x1EEE9AC00](*(v30 + 64));
  OUTLINED_FUNCTION_13();
  v33 = v32 - v31;
  (*(v29 + 16))(v32 - v31, v1 + v26, v27);
  sub_1D987BA38(v24, v25);
  sub_1D992ADC4();
  v35 = v34;
  (*(v29 + 8))(v33, v27);
  v36 = v55;
  *(v2 + 312) = 0x5F64657461657263;
  *(v2 + 320) = 0xEA00000000006E6FLL;
  *(v2 + 328) = v35;
  *(v2 + 336) = 0;
  *(v2 + 344) = 2;
  MEMORY[0x1EEE9AC00](2);
  v37 = v16[9];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v38);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_19_0();
  v40 = v1 + v37;
  v41 = v3;
  sub_1D9866D90(v40, v33, &qword_1ECB481D0, &qword_1D992F9F0);
  if (__swift_getEnumTagSinglePayload(v33, 1, v3) == 1)
  {
    sub_1D986B804(v33, &qword_1ECB481D0, &qword_1D992F9F0);
  }

  else
  {
    (*(v50 + 32))(&v50 - v36, v33, v3);
    MEMORY[0x1EEE9AC00](v42);
    v43 = OUTLINED_FUNCTION_15_7();
    v51(v43);
    v44 = sub_1D992AE24();
    v46 = v45;
    v47 = v53;
    (v53)(&v50 - v36, v41);
    sub_1D98BD920();
    v2 = v48;
    v47(&v50 - v36, v41);
    *(v2 + 16) = 6;
    strcpy((v2 + 352), "component_uuid");
    *(v2 + 367) = -18;
    *(v2 + 368) = 256;
    *(v2 + 370) = v57;
    *(v2 + 374) = v58;
    strcpy((v2 + 376), "component_uuid");
    *(v2 + 391) = -18;
    *(v2 + 392) = v44;
    *(v2 + 400) = v46;
    *(v2 + 408) = 0;
  }

  return v2;
}

uint64_t sub_1D98F7848(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48970, &qword_1D99323A0);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_0();
  sub_1D9866D90(a1, v4, &qword_1ECB48970, &qword_1D99323A0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48978, &qword_1D99323A8);
  if (__swift_getEnumTagSinglePayload(v4, 1, v11) == 1)
  {
    sub_1D986B804(v4, &qword_1ECB48970, &qword_1D99323A0);
    v12 = MEMORY[0x1E69E7CC8];
  }

  else
  {
    v13 = sub_1D98EC648();
    v15 = v14;
    v17 = v16;
    v18 = ~v16;
    sub_1D986B804(v4, &qword_1ECB48978, &qword_1D99323A8);
    v12 = MEMORY[0x1E69E7CC8];
    if (v18)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D986B85C(v13, v15, v17, 0x64695F6B636F6C63, 0xE800000000000000, 0, isUniquelyReferenced_nonNull_native);
    }
  }

  if ((a2 & 0x10000000000) == 0)
  {
    v20 = swift_isUniquelyReferenced_nonNull_native();
    if ((a2 & 0x100000000) != 0)
    {
      v21 = 0;
    }

    else
    {
      v21 = a2;
    }

    if ((a2 & 0x100000000) != 0)
    {
      v22 = 4;
    }

    else
    {
      v22 = 1;
    }

    sub_1D986B85C(v21, 0, v22, 0x636170735F676174, 0xE900000000000065, 2, v20);
  }

  if (a4 >> 60 != 11)
  {
    sub_1D98F8A38(a3, a4);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    if (a4 >> 60 == 15)
    {
      v24 = 0;
    }

    else
    {
      v24 = a3;
    }

    if (a4 >> 60 == 15)
    {
      v25 = 0;
    }

    else
    {
      v25 = a4;
    }

    if (a4 >> 60 == 15)
    {
      v26 = 4;
    }

    else
    {
      v26 = 3;
    }

    sub_1D986B85C(v24, v25, v26, 0x617461645F676174, 0xE800000000000000, 4, v23);
    sub_1D98F8A60(a3, a4);
  }

  sub_1D986B804(a1, &qword_1ECB48970, &qword_1D99323A0);
  return v12;
}

uint64_t sub_1D98F7A9C()
{
  v3 = v0;
  OUTLINED_FUNCTION_22_3();
  v197 = v4;
  v198 = 0;
  v199 = v4;
  v5 = sub_1D992AE84();
  OUTLINED_FUNCTION_6();
  v7 = v6;
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_30_8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v10);
  OUTLINED_FUNCTION_20_0();
  v187[1] = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_19_0();
  sub_1D9866D90(v0, v0, &qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_13_12(v0);
  v188 = v0;
  if (v13)
  {
    sub_1D986B804(v0, &qword_1ECB481D0, &qword_1D992F9F0);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_6_22();
    v15(v14);
    v1 = v187;
    v17 = MEMORY[0x1EEE9AC00](v16);
    v25 = OUTLINED_FUNCTION_1_34(v17, v18, v19, v20, v21, v22, v23, v24, v187[0]);
    v26(v25);
    v27 = sub_1D992AE24();
    v29 = v28;
    v30 = *(v7 + 8);
    v31 = OUTLINED_FUNCTION_33_8();
    v30(v31);
    OUTLINED_FUNCTION_22_3();
    v0 = &v197;
    OUTLINED_FUNCTION_37_3();
    sub_1D986F118(v32, v33, v34, v35, v27, v29, 0);

    v36 = OUTLINED_FUNCTION_28_6();
    v30(v36);
    v3 = v188;
  }

  v189 = type metadata accessor for TagsTable.Predicate(0);
  v37 = v189[5];
  v38 = *(v37 + v3);
  v194 = v9;
  v195 = v5;
  v187[0] = v7;
  if (v38)
  {
    v39 = MEMORY[0x1E69E7CC0];
    if (*(v38 + 16))
    {
      OUTLINED_FUNCTION_35_6();
      OUTLINED_FUNCTION_10_13();
      do
      {
        v193 = v187;
        v40 = MEMORY[0x1EEE9AC00](v187);
        v48 = OUTLINED_FUNCTION_11_17(v40, v41, v42, v43, v44, v45, v46, v47, v187[0]);
        (v7)(v48);
        MEMORY[0x1EEE9AC00](v49);
        v0 = (v187 - v0);
        v50 = OUTLINED_FUNCTION_15_7();
        (v7)(v50);
        v51 = sub_1D992AE24();
        v52 = OUTLINED_FUNCTION_27_5(v51);
        (v38)(v52);
        (v38)(v3, v1);
        OUTLINED_FUNCTION_24_8();
        if (v54)
        {
          OUTLINED_FUNCTION_34_5(v53);
          v39 = v196;
        }

        OUTLINED_FUNCTION_12_14();
      }

      while (!v13);
      v7 = v187[0];
      v3 = v188;
      OUTLINED_FUNCTION_22_3();
    }

    sub_1D987B5CC(v1, 0xE800000000000000, 0, v39);
  }

  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_30_8();
  MEMORY[0x1EEE9AC00](v189[6]);
  v56 = (v187 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D9866D90(v3 + v57, v56, &qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_13_12(v56);
  if (v13)
  {
    sub_1D986B804(v56, &qword_1ECB481D0, &qword_1D992F9F0);
  }

  else
  {
    v58 = OUTLINED_FUNCTION_6_22();
    v59(v58);
    v61 = MEMORY[0x1EEE9AC00](v60);
    v69 = OUTLINED_FUNCTION_1_34(v61, v62, v63, v64, v65, v66, v67, v68, v187[0]);
    v70(v69);
    v71 = sub_1D992AE24();
    v73 = v72;
    v74 = *(v7 + 8);
    v74(v56, v195);
    v56 = &v197;
    OUTLINED_FUNCTION_21_7();
    OUTLINED_FUNCTION_37_3();
    sub_1D986F118(v75, v76, v77, v78, v71, v73, 0);
    v3 = v188;

    v74(v2, v195);
  }

  v79 = *(v3 + v189[7]);
  if (v79)
  {
    v80 = MEMORY[0x1E69E7CC0];
    if (*(v79 + 16))
    {
      OUTLINED_FUNCTION_35_6();
      OUTLINED_FUNCTION_10_13();
      do
      {
        v193 = v187;
        v81 = MEMORY[0x1EEE9AC00](v187);
        v89 = OUTLINED_FUNCTION_11_17(v81, v82, v83, v84, v85, v86, v87, v88, v187[0]);
        (v7)(v89);
        MEMORY[0x1EEE9AC00](v90);
        v56 = (v187 - v56);
        v91 = OUTLINED_FUNCTION_15_7();
        (v7)(v91);
        v92 = sub_1D992AE24();
        v93 = OUTLINED_FUNCTION_27_5(v92);
        (v79)(v93);
        (v79)(v3, v187);
        OUTLINED_FUNCTION_24_8();
        if (v54)
        {
          OUTLINED_FUNCTION_34_5(v94);
          v80 = v196;
        }

        OUTLINED_FUNCTION_12_14();
      }

      while (!v13);
      v3 = v188;
    }

    v56 = &v197;
    v95 = OUTLINED_FUNCTION_21_7();
    sub_1D987B5CC(v95, v96, 0, v80);
  }

  if ((*(v3 + v189[8] + 4) & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_37_3();
    sub_1D986F118(v97, v98, v99, v100, v101, 0, 1);
  }

  v102 = *(v3 + v189[9]);
  if (v102)
  {
    v103 = *(v102 + 16);
    v104 = MEMORY[0x1E69E7CC0];
    if (v103)
    {
      v196 = MEMORY[0x1E69E7CC0];
      v56 = &v196;
      sub_1D98B9860(0, v103, 0);
      v104 = v196;
      v105 = (v102 + 32);
      v106 = *(v196 + 16);
      v107 = 24 * v106;
      do
      {
        v109 = *v105++;
        v108 = v109;
        v196 = v104;
        v110 = *(v104 + 24);
        v111 = v106 + 1;
        if (v106 >= v110 >> 1)
        {
          v56 = &v196;
          sub_1D98B9860(v110 > 1, v106 + 1, 1);
          v104 = v196;
        }

        *(v104 + 16) = v111;
        v112 = v104 + v107;
        *(v112 + 32) = v108;
        *(v112 + 40) = 0;
        *(v112 + 48) = 1;
        v107 += 24;
        v106 = v111;
        --v103;
      }

      while (v103);
    }

    v113 = OUTLINED_FUNCTION_38_2();
    sub_1D987B5CC(v113, v114, 0, v104);
  }

  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  v193 = v187;
  OUTLINED_FUNCTION_5();
  v117 = *(v116 + 64);
  v118 = (v117 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]((v117 + 15));
  v119 = v189[10];
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48708, &qword_1D9931338);
  OUTLINED_FUNCTION_9(v120);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_19_0();
  sub_1D9866D90(v188 + v119, v56, &qword_1ECB48708, &qword_1D9931338);
  if (__swift_getEnumTagSinglePayload(v56, 1, v115) == 1)
  {
    sub_1D986B804(v56, &qword_1ECB48708, &qword_1D9931338);
    v122 = v187[0];
    v123 = v193;
  }

  else
  {
    sub_1D989437C(v56, v187 - v118, &qword_1ECB48700, &qword_1D9931330);
    v124 = sub_1D992AE04();
    v191 = v187;
    OUTLINED_FUNCTION_6();
    v126 = v125;
    v128 = v127[8];
    MEMORY[0x1EEE9AC00](v127);
    v129 = v187 - v118;
    v192 = MEMORY[0x1EEE9AC00](v187);
    sub_1D9866D90(v192, v187 - v118, &qword_1ECB48700, &qword_1D9931330);
    v130 = *(v115 + 48);
    OUTLINED_FUNCTION_13_12(v129);
    v190 = v126;
    if (v13)
    {
      sub_1D986B804(&v129[v130], &qword_1ECB48710, &qword_1D9931340);
      v131 = OUTLINED_FUNCTION_18_10();
      sub_1D986B804(v131, v132, &qword_1D9931340);
    }

    else
    {
      v133 = OUTLINED_FUNCTION_6_22();
      v134(v133);
      sub_1D986B804(&v129[v130], &qword_1ECB48710, &qword_1D9931340);
      MEMORY[0x1EEE9AC00](v135);
      v136 = OUTLINED_FUNCTION_2_32();
      v137(v136);
      sub_1D992ADC4();
      v138 = *(v126 + 8);
      v139 = OUTLINED_FUNCTION_33_8();
      v138(v139);
      v140 = OUTLINED_FUNCTION_7_8();
      sub_1D986F118(v140, v141, 15678, 0xE200000000000000, v142, 0, 2);
      v143 = OUTLINED_FUNCTION_28_6();
      v138(v143);
    }

    MEMORY[0x1EEE9AC00](v191);
    MEMORY[0x1EEE9AC00](v187);
    v144 = v187 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
    v145 = v192;
    sub_1D9866D90(v192, v144, &qword_1ECB48700, &qword_1D9931330);
    v146 = *(v115 + 48);
    OUTLINED_FUNCTION_13_12(&v144[v146]);
    if (v13)
    {
      sub_1D986B804(v145, &qword_1ECB48700, &qword_1D9931330);
      sub_1D986B804(&v144[v146], &qword_1ECB48710, &qword_1D9931340);
      v147 = OUTLINED_FUNCTION_18_10();
      sub_1D986B804(v147, v148, &qword_1D9931340);
    }

    else
    {
      v149 = v190;
      (*(v190 + 32))(v187 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0), &v144[v146], v124);
      sub_1D986B804(v144, &qword_1ECB48710, &qword_1D9931340);
      MEMORY[0x1EEE9AC00](v150);
      v151 = OUTLINED_FUNCTION_2_32();
      v152(v151);
      sub_1D992ADC4();
      v153 = *(v149 + 8);
      v154 = OUTLINED_FUNCTION_33_8();
      v153(v154);
      v155 = OUTLINED_FUNCTION_7_8();
      sub_1D986F118(v155, v156, 15676, 0xE200000000000000, v157, 0, 2);
      v158 = OUTLINED_FUNCTION_28_6();
      v153(v158);
      sub_1D986B804(v145, &qword_1ECB48700, &qword_1D9931330);
    }

    v122 = v187[0];
    v123 = v193;
  }

  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_30_8();
  MEMORY[0x1EEE9AC00](v189[11]);
  v160 = v187 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9866D90(v162 + v161, v160, &qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_13_12(v160);
  if (v13)
  {
    sub_1D986B804(v160, &qword_1ECB481D0, &qword_1D992F9F0);
  }

  else
  {
    v163 = OUTLINED_FUNCTION_6_22();
    v164(v163);
    v166 = MEMORY[0x1EEE9AC00](v165);
    v174 = OUTLINED_FUNCTION_1_34(v166, v167, v168, v169, v170, v171, v172, v173, v187[0]);
    v175(v174);
    v176 = sub_1D992AE24();
    v178 = v177;
    v179 = *(v122 + 8);
    v180 = OUTLINED_FUNCTION_33_8();
    v179(v180);
    OUTLINED_FUNCTION_23_8();
    OUTLINED_FUNCTION_37_3();
    sub_1D986F118(v181, v182, v183, v184, v176, v178, 0);

    v185 = OUTLINED_FUNCTION_28_6();
    v179(v185);
  }

  sub_1D986FC08(v197, v198, v199);

  return OUTLINED_FUNCTION_9_0();
}

uint64_t sub_1D98F86F8@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for SQLDelete;
  a1[4] = &off_1F5516CC0;
  v2 = swift_allocObject();
  *a1 = v2;
  v3 = type metadata accessor for TagsTable.Predicate(0);
  v2[7] = v3;
  v2[8] = &off_1F5516A58;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 4);
  sub_1D992AE84();
  OUTLINED_FUNCTION_7_19(boxed_opaque_existential_1);
  OUTLINED_FUNCTION_7_19(boxed_opaque_existential_1 + v3[6]);
  v5 = boxed_opaque_existential_1 + v3[10];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  v7 = *(v6 + 48);
  v8 = sub_1D992AE04();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
  MEMORY[0x1EEE9AC00](*(*(v8 - 8) + 64));
  OUTLINED_FUNCTION_13();
  sub_1D992ADF4();
  sub_1D992AD94();
  v9 = OUTLINED_FUNCTION_33_8();
  v10(v9);
  __swift_storeEnumTagSinglePayload(v5 + v7, 0, 1, v8);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  result = OUTLINED_FUNCTION_7_19(boxed_opaque_existential_1 + v3[11]);
  *(boxed_opaque_existential_1 + v3[5]) = 0;
  *(boxed_opaque_existential_1 + v3[7]) = 0;
  v12 = boxed_opaque_existential_1 + v3[8];
  *v12 = 0;
  v12[4] = 1;
  *(boxed_opaque_existential_1 + v3[9]) = 0;
  v2[2] = 1936154996;
  v2[3] = 0xE400000000000000;
  return result;
}

uint64_t sub_1D98F8978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagsTable.Record(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98F89DC(uint64_t a1)
{
  v2 = type metadata accessor for TagsTable.Record(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D98F8A38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1D98F8A4C(a1, a2);
  }

  return a1;
}

uint64_t sub_1D98F8A4C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D987BA38(result, a2);
  }

  return result;
}

uint64_t sub_1D98F8A60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1D9866358(a1, a2);
  }

  return a1;
}

uint64_t sub_1D98F8A9C(uint64_t a1)
{
  sub_1D98946B4(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D9894860(319, &qword_1ECB479B0, &qword_1ECB48740, &qword_1D99313F0);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1D98F8BCC();
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_1D9894860(319, &qword_1ECB47988, &qword_1ECB48FE0, &qword_1D99352F0);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_1D9894860(319, &qword_1ED8BD8E0, &qword_1ECB48700, &qword_1D9931330);
    if (v8 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_1D98F8BCC()
{
  if (!qword_1ECB478A0)
  {
    v0 = sub_1D992BC04();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECB478A0);
    }
  }
}

void sub_1D98F8C54(uint64_t a1)
{
  sub_1D992AE84();
  if (v1 <= 0x3F)
  {
    sub_1D992AE04();
    if (v2 <= 0x3F)
    {
      sub_1D98946B4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_42_1(int a1)
{

  return __swift_storeEnumTagSinglePayload(v2, a1 ^ 1u, 1, v1);
}

id static PersistentStorage.dataVault.getter()
{
  v0 = sub_1D992AD44();
  OUTLINED_FUNCTION_6();
  v2 = v1;
  MEMORY[0x1EEE9AC00](*(v3 + 64));
  OUTLINED_FUNCTION_13();
  v6 = v5 - v4;
  sub_1D98F97F8();
  v7 = type metadata accessor for DataVault(0);
  v8 = objc_allocWithZone(v7);
  (*(v2 + 16))(v8 + OBJC_IVAR___SiriAnalyticsDataVault_containingDirectory, v6, v0);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v2 + 8))(v6, v0);
  return v9;
}

uint64_t sub_1D98F8F10(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ((sub_1D98F900C() & 1) == 0)
  {
    v1 = [objc_opt_self() defaultManager];
    v2 = sub_1D992ACD4();
    v7[0] = 0;
    v3 = [v1 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:v7];

    if (v3)
    {
      v4 = v7[0];
    }

    else
    {
      v5 = v7[0];
      sub_1D992AC94();

      swift_willThrow();
    }
  }

  return 1;
}

uint64_t sub_1D98F900C()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v0 = [objc_opt_self() defaultManager];
  sub_1D992AD34();
  v1 = sub_1D992B614();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v4];

  return (v2 & v4);
}

void sub_1D98F90D4()
{
  v37 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  sub_1D992AD34();
  v2 = sub_1D992B614();

  v3 = [v1 fileExistsAtPath_];

  if (v3)
  {
    if (qword_1ED8BF428 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_9_13();
    sub_1D992BD64();

    v36 = 0xE700000000000000;
    sub_1D992AD44();
    sub_1D9887904();
    v4 = OUTLINED_FUNCTION_4_23();
    MEMORY[0x1DA739C30](v4);

    MEMORY[0x1DA739C30](544175136, 0xE400000000000000);
    v5 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v5);

    MEMORY[0x1DA739C30](3026478, 0xE300000000000000);
    sub_1D986A454(0x20676E69766F4DLL, 0xE700000000000000, 0xD000000000000061, 0x80000001D993C9A0, 0x6F72662865766F6DLL, 0xEE00293A6F743A6DLL);

    v6 = [v0 defaultManager];
    v7 = sub_1D992ACD4();
    v8 = sub_1D992ACD4();
    v35 = 0;
    v9 = [v6 moveItemAtURL:v7 toURL:v8 error:&v35];

    v10 = v35;
    if (v9)
    {

      v11 = v10;
    }

    else
    {
      v12 = v35;
      v13 = sub_1D992AC94();

      swift_willThrow();
      OUTLINED_FUNCTION_9_13();
      sub_1D992BD64();
      v14 = OUTLINED_FUNCTION_4_23();
      v16 = v15;

      v35 = v14;
      v36 = v16;
      MEMORY[0x1DA739C30](0x2073747369786520, 0xEB00000000207461);
      v17 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v17);

      MEMORY[0x1DA739C30](0x69766F6D6572202CLL, 0xED00002E2E2E676ELL);
      OUTLINED_FUNCTION_2_33();
      sub_1D986A454(v18, v19, v20, v21, v22, 0xEE00293A6F743A6DLL);

      v23 = [v0 defaultManager];
      v24 = sub_1D992ACD4();
      v35 = 0;
      LODWORD(v16) = [v23 removeItemAtURL:v24 error:&v35];

      if (v16)
      {
        v25 = v35;
        v26 = v13;
      }

      else
      {
        v27 = v35;
        v28 = sub_1D992AC94();

        swift_willThrow();
        OUTLINED_FUNCTION_9_13();
        sub_1D992BD64();

        v35 = 0xD000000000000011;
        v36 = 0x80000001D993CA10;
        v29 = OUTLINED_FUNCTION_4_23();
        MEMORY[0x1DA739C30](v29);

        OUTLINED_FUNCTION_2_33();
        sub_1D98DCEB4(v30, v31, v32, v33, v34, 0xEE00293A6F743A6DLL);

        v26 = v28;
      }
    }
  }
}

uint64_t sub_1D98F9590()
{
  v14[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D992AD44();
  OUTLINED_FUNCTION_6();
  v2 = v1;
  MEMORY[0x1EEE9AC00](*(v3 + 64));
  OUTLINED_FUNCTION_13();
  v6 = v5 - v4;
  sub_1D992AD04();
  if (sub_1D98F900C())
  {
    v7 = [objc_opt_self() defaultManager];
    v8 = sub_1D992ACD4();
    v14[0] = 0;
    v9 = [v7 removeItemAtURL:v8 error:v14];

    if (v9)
    {
      v10 = *(v2 + 8);
      v11 = v14[0];
      return v10(v6, v0);
    }

    v13 = v14[0];
    sub_1D992AC94();

    swift_willThrow();
  }

  return (*(v2 + 8))(v6, v0);
}

void *sub_1D98F9734()
{
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v1 = result;
    v2 = sub_1D992B624();
    v4 = v3;

    MEMORY[0x1DA739C30](v2, v4);

    MEMORY[0x1DA739C30](0x7972617262694C2FLL, 0xE800000000000000);
    sub_1D992ACB4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D98F97F8()
{
  v0 = sub_1D992AD44();
  OUTLINED_FUNCTION_6();
  v2 = v1;
  MEMORY[0x1EEE9AC00](*(v3 + 64));
  OUTLINED_FUNCTION_13();
  v6 = v5 - v4;
  sub_1D98F9734();
  sub_1D992ACF4();
  return (*(v2 + 8))(v6, v0);
}

uint64_t sub_1D98F9900()
{
  v0 = sub_1D992AD44();
  OUTLINED_FUNCTION_6();
  v2 = v1;
  MEMORY[0x1EEE9AC00](*(v3 + 64));
  OUTLINED_FUNCTION_13();
  v6 = v5 - v4;
  sub_1D992AD04();
  sub_1D98F8F10(v6);
  (*(v2 + 8))(v6, v0);
  return 1;
}

id PersistentStorage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PersistentStorage.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PersistentStorage();
  return objc_msgSendSuper2(&v3, sel_init);
}

id PersistentStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersistentStorage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D98F9AC0(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1D992B614();

  v4 = [v2 initWithServiceName_];

  return v4;
}

uint64_t sub_1D98F9B34(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1D98F9B78(uint64_t (*result)(_OWORD *), uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    sub_1D98BA058(v8, v19);
    v10 = v5(v19);
    if (v3)
    {
      sub_1D98BA0B4(v19);

LABEL_14:

      return;
    }

    if (v10)
    {
      v16 = v19[0];
      v17 = v19[1];
      v18 = v19[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_13_13(*(v9 + 16));
        v9 = v20;
      }

      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D98B9918(v12 > 1, v13 + 1, 1);
        v9 = v20;
      }

      *(v9 + 16) = v13 + 1;
      v14 = (v9 + 48 * v13);
      v14[3] = v17;
      v14[4] = v18;
      v14[2] = v16;
      v5 = result;
    }

    else
    {
      sub_1D98BA0B4(v19);
    }

    v8 += 48;
    ++v6;
  }

  __break(1u);
}

void sub_1D98F9CD8(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    while (1)
    {
      if (!v6)
      {
        goto LABEL_5;
      }

      v8 = *(v6 + 16);
      if (v5 == v8)
      {
        break;
      }

      if (v5 >= v8)
      {
        goto LABEL_24;
      }

      sub_1D98BA058(v6 + 48 * v5 + 32, &v22);
      v26 = v23;
      v27 = v24;
      v25 = v22;
      if (!v24)
      {

        goto LABEL_20;
      }

      v28 = v25;
      v29 = v26;
      v30 = v27;
      v11 = result(&v28);
      if (v3)
      {
        sub_1D98BA0B4(&v28);

        return;
      }

      if (v11)
      {
        v25 = v28;
        v26 = v29;
        v27 = v30;
        v12 = v21;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_13_13(*(v21 + 16));
          v12 = v31;
        }

        v15 = *(v12 + 16);
        v14 = *(v12 + 24);
        v16 = v15 + 1;
        if (v15 >= v14 >> 1)
        {
          sub_1D98B9918(v14 > 1, v15 + 1, 1);
          v16 = v15 + 1;
          v12 = v31;
        }

        *(v12 + 16) = v16;
        v21 = v12;
        v17 = (v12 + 48 * v15);
        v18 = v25;
        v19 = v27;
        v17[3] = v26;
        v17[4] = v19;
        v17[2] = v18;
      }

      else
      {
        sub_1D98BA0B4(&v28);
      }

      ++v5;
    }

    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    sub_1D986B804(&v22, &qword_1ECB49018, &qword_1D9935448);
LABEL_5:
    v9 = *(a3 + 16);
    if (v7 == v9)
    {

      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
LABEL_20:

      sub_1D986B804(&v25, &qword_1ECB49018, &qword_1D9935448);
      return;
    }

    if (v7 >= v9)
    {
      break;
    }

    v10 = *(a3 + 8 * v7 + 32);

    v5 = 0;
    v6 = v10;
    ++v7;
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_1D98F9F28(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1D98682F0();
  v7 = result;
  v8 = 0;
  v9 = a3 & 0xC000000000000001;
  v12 = a3;
  v13 = a3 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v7 == v8)
    {

      return v15;
    }

    if (v9)
    {
      result = MEMORY[0x1DA73A2C0](v8, a3);
      v10 = result;
    }

    else
    {
      if (v8 >= *(v13 + 16))
      {
        goto LABEL_16;
      }

      v10 = *(a3 + 8 * v8 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    v14 = v10;
    v11 = a1(&v14);
    if (v3)
    {
    }

    if (v11)
    {
      sub_1D992BDA4();
      sub_1D992BDD4();
      a3 = v12;
      sub_1D992BDE4();
      result = sub_1D992BDB4();
    }

    else
    {
    }

    ++v8;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D98FA0B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonotonicTimestamp(0);
  v5 = *(a1 + *(v4 + 24));
  if (v5)
  {
    if (qword_1ED8BD6F0 != -1)
    {
      swift_once();
    }

    sub_1D986A454(0xD000000000000036, 0x80000001D993CBD0, 0xD00000000000007DLL, 0x80000001D993CC10, 0x2874694674736562, 0xED0000293A726F66);
    return 0;
  }

  else
  {
    v53 = v4;
    MEMORY[0x1EEE9AC00](v5);
    v41 = a1;
    v42 = 1;

    v58 = sub_1D98F9F28(sub_1D98FC574, v40, a2);
    v59 = v58;
    v54 = 0;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48FE8, &qword_1D99353F0);
    v8 = a2;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48FF0, &qword_1D99353F8);
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v49 = *(v10 + 80);
    v50 = v11;
    v52 = v7;
    v13 = swift_allocObject();
    v47 = xmmword_1D992FCB0;
    *(v13 + 16) = xmmword_1D992FCB0;
    swift_getKeyPath();
    v51 = v12;
    sub_1D992AC04();
    v61 = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48FF8, &qword_1D9935420);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49000, &qword_1D9935428);
    v16 = sub_1D98FC598(&qword_1ECB479A0, &qword_1ECB48FF8, &qword_1D9935420);
    v17 = sub_1D98FC598(&qword_1ECB479B8, &qword_1ECB49000, &qword_1D9935428);
    v18 = sub_1D98FC5EC();
    v48 = v14;
    v46 = v15;
    v19 = v9;
    v20 = v8;
    v21 = sub_1D992B734();

    v58 = sub_1D98878D8(v21);
    if (v58 > 1)
    {
      v43[1] = v18;
      v43[2] = v17;
      v43[3] = v16;
      v43[4] = v19;
      v44 = a1;
      v45 = v8;
      if (qword_1ECB47AD0 != -1)
      {
        swift_once();
      }

      v43[0] = qword_1ECB49628;
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1D992BD64();

      v59 = 0xD000000000000018;
      v60 = 0x80000001D993CC90;
      v61 = MEMORY[0x1E69E7CC0];
      sub_1D98B977C(0, v58, 0);
      v22 = v61;
      v56 = v21 & 0xC000000000000001;
      v57 = v21;
      v23 = sub_1D992AE84();
      v24 = 0;
      v25 = *(v23 - 8);
      v26 = *(v25 + 64);
      v27 = (v25 + 16);
      v28 = (v25 + 32);
      v55 = v25 + 32;
      do
      {
        MEMORY[0x1EEE9AC00](v28);
        if (v56)
        {
          v29 = MEMORY[0x1DA73A2C0](v24, v57);
          (*v27)(v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_clockIdentifier, v23);
          swift_unknownObjectRelease();
        }

        else
        {
          (*v27)(v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), *(v57 + 8 * v24 + 32) + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_clockIdentifier, v23);
        }

        v61 = v22;
        v31 = *(v22 + 16);
        v30 = *(v22 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1D98B977C(v30 > 1, v31 + 1, 1);
          v22 = v61;
        }

        ++v24;
        *(v22 + 16) = v31 + 1;
        (*(v25 + 32))(v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v31, v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
        v28 = v58;
      }

      while (v58 != v24);
      v32 = MEMORY[0x1DA739D10](v22, v23);
      v34 = v33;

      MEMORY[0x1DA739C30](v32, v34);

      MEMORY[0x1DA739C30](0xD000000000000014, 0x80000001D993CCB0);
      a1 = v44;
      v61 = *(v44 + *(v53 + 20));
      v35 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v35);

      sub_1D98DCEB4(v59, v60, 0xD00000000000007DLL, 0x80000001D993CC10, 0x2874694674736562, 0xED0000293A726F66);

      v20 = v45;
      v21 = v57;
    }

    if (sub_1D98682F0())
    {
      sub_1D98BF364();
      if ((v21 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA73A2C0](0, v21);
      }

      else
      {
        v6 = *(v21 + 32);
      }
    }

    else
    {

      MEMORY[0x1EEE9AC00](v36);
      v41 = a1;
      v42 = 0;

      v59 = sub_1D98F9F28(sub_1D98FC9D0, v40, v20);
      v37 = swift_allocObject();
      *(v37 + 16) = v47;
      swift_getKeyPath();
      sub_1D992AC04();
      v61 = v37;
      v38 = sub_1D992B734();

      v6 = sub_1D98FA874(v38);
    }
  }

  return v6;
}

uint64_t sub_1D98FA874(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1D98BF364();
      if ((a1 & 0xC000000000000001) == 0)
      {
      }
    }

    return MEMORY[0x1DA73A2C0](v3, a1);
  }

  result = sub_1D992BC94();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}