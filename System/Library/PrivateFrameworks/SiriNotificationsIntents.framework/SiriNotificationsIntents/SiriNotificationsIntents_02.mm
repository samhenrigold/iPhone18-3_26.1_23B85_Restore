uint64_t storeEnumTagSinglePayload for NotificationMetricsSummary(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2684F4028);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t sub_2684F4060()
{
  OUTLINED_FUNCTION_14_2();

  sub_2684F4658(v1);
  OUTLINED_FUNCTION_4_5();

  return v0;
}

uint64_t sub_2684F4094()
{
  OUTLINED_FUNCTION_14_2();

  sub_2684F659C(v3);
  OUTLINED_FUNCTION_4_5();

  sub_26853DC20();
  OUTLINED_FUNCTION_13_6();
  if ((v2 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_2685691E0();
  swift_unknownObjectRetain_n();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    swift_unknownObjectRelease();
    v5 = MEMORY[0x277D84F90];
  }

  v6 = *(v5 + 16);

  if (__OFSUB__(v2 >> 1, v1))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v6 != (v2 >> 1) - v1)
  {
LABEL_12:
    swift_unknownObjectRelease();
LABEL_2:
    OUTLINED_FUNCTION_16_4();
    v0 = v4;
LABEL_9:
    swift_unknownObjectRelease();
    return v0;
  }

  swift_dynamicCastClass();
  OUTLINED_FUNCTION_4_5();
  swift_unknownObjectRelease();
  if (!v0)
  {
    v0 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  return v0;
}

uint64_t sub_2684F41AC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v4 = *(v1 + 16);

  a1(v5, v1);

  sub_26853DC20();
  OUTLINED_FUNCTION_13_6();
  if ((v2 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_2685691E0();
  swift_unknownObjectRetain_n();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v7 + 16);

  if (__OFSUB__(v2 >> 1, v4))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v8 != (v2 >> 1) - v4)
  {
LABEL_12:
    swift_unknownObjectRelease();
LABEL_2:
    OUTLINED_FUNCTION_16_4();
    v1 = v6;
LABEL_9:
    swift_unknownObjectRelease();
    return v1;
  }

  swift_dynamicCastClass();
  OUTLINED_FUNCTION_4_5();
  swift_unknownObjectRelease();
  if (!v1)
  {
    v1 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  return v1;
}

void sub_2684F42A8()
{
  v0 = sub_2684F4060();
  v1 = 0;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v2 == v1)
    {

      return;
    }

    if (v1 >= *(v0 + 16))
    {
      break;
    }

    v4 = *(v0 + 8 * v1 + 32);
    if (v4 >> 62)
    {
      v5 = sub_2685690A0();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v1;
    if (v5)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {

        v12 = MEMORY[0x26D61C170](0, v4);

        v8 = *(v12 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_type);
        v7 = *(v12 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_type + 8);

        swift_unknownObjectRelease();
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v6 = (*(v4 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_type);
        v8 = *v6;
        v7 = v6[1];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_1_6();
        sub_26854BB3C();
        v3 = v13;
      }

      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        OUTLINED_FUNCTION_0_7(v9);
        sub_26854BB3C();
        v3 = v14;
      }

      *(v3 + 16) = v10 + 1;
      v11 = v3 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_2684F4424()
{
  v1 = sub_2684F4060();
  sub_26855D208(*(v0 + 40), v1);
  OUTLINED_FUNCTION_4_5();

  return v0;
}

unint64_t sub_2684F4460()
{
  result = sub_2684F4424();
  if (result)
  {
    sub_26855D244(*(v0 + 32), result);
    OUTLINED_FUNCTION_4_5();

    return v0;
  }

  return result;
}

uint64_t sub_2684F44A0()
{
  v4 = OUTLINED_FUNCTION_14_2();
  sub_2684DEAF0(v4);
  result = OUTLINED_FUNCTION_15_3();
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v1 == v6)
    {
LABEL_10:

      return v1 != v7;
    }

    if (v2)
    {
      result = MEMORY[0x26D61C170](v6, v0);
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(v7, 1))
    {
      break;
    }

    v8 = *(result + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight);

    v6 = v7 + 1;
    if (v8 == 1)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2684F4564()
{
  v4 = OUTLINED_FUNCTION_14_2();
  sub_2684DEAF0(v4);
  result = OUTLINED_FUNCTION_15_3();
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v1 == v6)
    {
LABEL_10:

      return v1 != v7;
    }

    if (v2)
    {
      result = MEMORY[0x26D61C170](v6, v0);
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(v7, 1))
    {
      break;
    }

    v8 = *(result + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight);

    v6 = v7 + 1;
    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2684F4624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = 0;
  *(v5 + 72) = 0xD000000000000013;
  *(v5 + 80) = 0x8000000268571190;
  *(v5 + 16) = a1;
  *(v5 + 24) = 0;
  *(v5 + 32) = a3;
  *(v5 + 40) = a2;
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return v5;
}

void sub_2684F4658(uint64_t a1)
{
  i = a1;
  v146 = sub_2684DEAF0(a1);
  if (!v146)
  {
    v4 = MEMORY[0x277D84F90];
    goto LABEL_90;
  }

  v3 = 0;
  v144 = i & 0xC000000000000001;
  v142 = i + 32;
  v4 = MEMORY[0x277D84F90];
  do
  {
    sub_2684DEAFC();
    if (v144)
    {
      v5 = MEMORY[0x26D61C170](v3, i);
    }

    else
    {
      v5 = *(v142 + 8 * v3);
    }

    if (__OFADD__(v3, 1))
    {
      goto LABEL_189;
    }

    v3 = 0;
    v6 = v4[2];
    for (i = 32; ; i += 8)
    {
      if (v6 == v3)
      {
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C80, &qword_26856AD40);
        v14 = OUTLINED_FUNCTION_5_8(v13);
        *(v14 + 16) = xmmword_26856A540;
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
        v16 = OUTLINED_FUNCTION_5_8(v15);
        *(v16 + 16) = xmmword_26856B420;
        *(v16 + 32) = v5;
        *(v14 + 32) = v16;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = OUTLINED_FUNCTION_1_6();
          sub_26854BF10(v44, v45, v46, v4);
          v4 = v47;
        }

        OUTLINED_FUNCTION_6_5();
        v17 = v4[2];
        OUTLINED_FUNCTION_11_5();
        if (v19)
        {
          v48 = OUTLINED_FUNCTION_0_7(v18);
          sub_26854BF10(v48, v49, v50, v4);
          v4 = v51;
        }

        v4[2] = v1;
        v4[v17 + 4] = v14;
        goto LABEL_87;
      }

      if (v3 >= v4[2])
      {
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
        goto LABEL_192;
      }

      v7 = *(v4 + i);
      if (!*(v7 + 16))
      {
        goto LABEL_185;
      }

      v8 = *(v7 + 32);
      if ((v8 & 0xC000000000000001) != 0)
      {

        v9 = MEMORY[0x26D61C170](0, v8);
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_186;
        }

        v9 = *(v8 + 32);
      }

      v10 = *(v9 + 16);
      v1 = *(v9 + 24);

      if (v10 == v5[2] && v1 == v5[3])
      {
        break;
      }

      v12 = sub_2685691C0();

      if (v12)
      {
        goto LABEL_27;
      }

      ++v3;
    }

LABEL_27:
    if (v3 >= v4[2])
    {
      goto LABEL_190;
    }

    v20 = *(v4 + i);
    v153 = *(v20 + 16);
    if (!v153)
    {
      goto LABEL_52;
    }

    v149 = v4;

    v21 = 0;
    v22 = 4;
    v151 = i;
    while (2)
    {
      OUTLINED_FUNCTION_12_6();
      if (v19)
      {
        goto LABEL_187;
      }

      v23 = *(v20 + v22 * 8);
      if ((v23 & 0xC000000000000001) == 0)
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_188;
        }

        v24 = *(v23 + 32);
        v25 = *(v24 + 56);
        v26 = v5[7];
        if (v25)
        {
          v27 = v5;
          v28 = v5[6];
          v29 = *(v24 + 48);

          goto LABEL_35;
        }

LABEL_43:
        if (!v26)
        {
LABEL_56:

          goto LABEL_58;
        }

LABEL_46:

LABEL_47:
        ++v21;
        ++v22;
        if (v153 != v21)
        {
          continue;
        }

        v4 = v149;
LABEL_52:
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
        v36 = OUTLINED_FUNCTION_5_8(v35);
        *(v36 + 16) = xmmword_26856B420;
        *(v36 + 32) = v5;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_268524284(v4);
          v4 = v43;
        }

        if (v3 < v4[2])
        {
          sub_26852412C();
          v1 = *(*(v4 + i) + 16);
          sub_2685241B8(v1);

          v37 = *(v4 + i);
          *(v37 + 16) = v1 + 1;
          *(v37 + 8 * v1 + 32) = v36;
          OUTLINED_FUNCTION_6_5();
          goto LABEL_87;
        }

LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
        goto LABEL_194;
      }

      break;
    }

    v32 = MEMORY[0x26D61C170](0, v23);
    v33 = v5;
    v29 = *(v32 + 48);
    v25 = *(v32 + 56);

    v34 = v33;
    swift_unknownObjectRelease();
    v26 = v33[7];
    if (!v25)
    {

      v5 = v34;
      goto LABEL_43;
    }

    v27 = v34;
    v28 = v34[6];
LABEL_35:

    if (!v26)
    {

      v5 = v27;
      i = v151;
      goto LABEL_46;
    }

    if (v29 != v28 || v25 != v26)
    {
      v31 = sub_2685691C0();

      v5 = v27;
      i = v151;
      if (v31)
      {
        goto LABEL_56;
      }

      goto LABEL_47;
    }

    v5 = v27;
    i = v151;
LABEL_58:
    if (v3 >= v149[2])
    {
      goto LABEL_193;
    }

    v38 = *(v149 + i);
    if (v21 >= *(v38 + 16))
    {
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
      goto LABEL_198;
    }

    v39 = *(v38 + v22 * 8);
    OUTLINED_FUNCTION_3_7();
    if ((v39 & 0xC000000000000001) != 0)
    {

      OUTLINED_FUNCTION_10_2();
      v53 = v52;

      v54 = *(v53 + 56);

      swift_unknownObjectRelease();
      if (!v54)
      {
        goto LABEL_79;
      }

LABEL_62:
      if (!sub_268554FB4())
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_268524284(v149);
          v149 = v59;
        }

        if (v3 < v149[2])
        {
          v1 = *(v149 + i);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v149 + i) = v1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_268524270(v1);
            v1 = v61;
            *(v149 + i) = v61;
          }

          OUTLINED_FUNCTION_6_5();
          if (v21 < *(v1 + 16))
          {
            goto LABEL_85;
          }

          goto LABEL_200;
        }

LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
        goto LABEL_201;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268524284(v149);
        v149 = v58;
      }

      v1 = v149;
      if (v3 < v149[2])
      {
        v40 = *(v149 + i);
        v41 = swift_isUniquelyReferenced_nonNull_native();
        *(v149 + i) = v40;
        if ((v41 & 1) == 0)
        {
          sub_268524270(v40);
          v40 = v60;
          *(v149 + i) = v60;
        }

        OUTLINED_FUNCTION_6_5();
        OUTLINED_FUNCTION_12_6();
        if (!v19)
        {
          sub_2684F7A08(0, v40[v22]);
          sub_2684D1B64(0, 0, v5);

          goto LABEL_86;
        }

LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
        return;
      }

LABEL_198:
      __break(1u);
      goto LABEL_199;
    }

    if (*(*(v39 + 32) + 56))
    {
      goto LABEL_62;
    }

LABEL_79:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_268524284(v149);
      v149 = v56;
    }

    if (v3 >= v149[2])
    {
      goto LABEL_196;
    }

    v1 = *(v149 + i);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    *(v149 + i) = v1;
    if ((v55 & 1) == 0)
    {
      sub_268524270(v1);
      v1 = v57;
      *(v149 + i) = v57;
    }

    OUTLINED_FUNCTION_6_5();
    if (v21 >= *(v1 + 16))
    {
      goto LABEL_197;
    }

LABEL_85:
    MEMORY[0x26D61BE40]();
    sub_2685248B4();
    sub_268568D20();
LABEL_86:
    v4 = v149;
LABEL_87:
    ;
  }

  while (v3 != v146);
LABEL_90:
  v62 = v4[2];
  v63 = MEMORY[0x277D84F90];
  if (!v62)
  {
    v66 = MEMORY[0x277D84F90];
LABEL_171:
    v125 = v66[2];
    if (v125)
    {
      v126 = v66 + 4;
      v127 = MEMORY[0x277D84F90];
      do
      {

        v129 = sub_2685636F0(v128);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v132 = OUTLINED_FUNCTION_1_6();
          sub_26854BF34(v132, v133, v134, v127);
          v127 = v135;
        }

        v131 = v127[2];
        v130 = v127[3];
        if (v131 >= v130 >> 1)
        {
          v136 = OUTLINED_FUNCTION_2_8(v130);
          sub_26854BF34(v136, v131 + 1, 1, v127);
          v127 = v137;
        }

        v127[2] = v131 + 1;
        v127[v131 + 4] = v129;
        ++v126;
        --v125;
      }

      while (v125);
    }

    goto LABEL_181;
  }

  v64 = 0;
  v65 = v4 + 4;
  v66 = MEMORY[0x277D84F90];
  v150 = v4;
  v138 = v4 + 4;
  v139 = v4[2];
  while (1)
  {
    if (v64 >= v4[2])
    {
      goto LABEL_195;
    }

    v67 = v65[v64];
    v147 = *(v67 + 16);
    if (v147)
    {
      break;
    }

LABEL_168:
    if (++v64 == v62)
    {
      goto LABEL_171;
    }
  }

  v140 = v64;
  v148 = v67 + 32;

  v141 = 0;
  v68 = 0;
  v145 = v67;
LABEL_95:
  if (v68 >= *(v67 + 16))
  {
    goto LABEL_191;
  }

  v154 = v63;
  v69 = *(v148 + 8 * v68);
  v152 = v68 + 1;
  v70 = sub_2684DEAF0(v69);
  v71 = v69 & 0xC000000000000001;

  for (j = 0; ; ++j)
  {
    if (v70 == j)
    {
      v74 = sub_2684DEAF0(v154);
      v75 = v74 != 0;
      if (v74)
      {
        v1 = v154 & 0xC000000000000001;
        OUTLINED_FUNCTION_3_7();
        v143 = v75;
        if ((v154 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_10_2();
          v76 = v103;
        }

        else
        {
          v76 = *(v154 + 32);
        }

        v77 = 0;
        v155 = MEMORY[0x277D84F90];
        while (v70 != v77)
        {
          if (v71)
          {
            v1 = MEMORY[0x26D61C170](v77, v69);
          }

          else
          {
            if (v77 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_183;
            }

            v1 = *(v69 + 8 * v77 + 32);
          }

          if (__OFADD__(v77, 1))
          {
            __break(1u);
LABEL_183:
            __break(1u);
            goto LABEL_184;
          }

          v78 = *(v1 + 32) == *(v76 + 32) && *(v1 + 40) == *(v76 + 40);
          if (v78 || (sub_2685691C0() & 1) != 0)
          {
          }

          else
          {
            sub_268569020();
            sub_268569050();
            sub_268569060();
            sub_268569030();
          }

          ++v77;
        }

        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C80, &qword_26856AD40);
        v80 = OUTLINED_FUNCTION_5_8(v79);
        *(v80 + 16) = xmmword_26856A540;
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
        v82 = OUTLINED_FUNCTION_5_8(v81);
        *(v82 + 16) = xmmword_26856B420;
        *(v82 + 32) = v76;
        *(v80 + 32) = v82;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = OUTLINED_FUNCTION_1_6();
          sub_26854BF10(v104, v105, v106, v66);
          v66 = v107;
        }

        v4 = v150;
        v83 = v66[2];
        OUTLINED_FUNCTION_11_5();
        if (v19)
        {
          v108 = OUTLINED_FUNCTION_0_7(v84);
          sub_26854BF10(v108, v109, v110, v66);
          v66 = v111;
        }

        v66[2] = v1;
        v66[v83 + 4] = v80;
        if (*(v76 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight))
        {

          goto LABEL_132;
        }

        v1 = OUTLINED_FUNCTION_5_8(v79);
        *(v1 + 16) = xmmword_26856A540;
        *(v1 + 32) = v155;
        v97 = v66[2];
        v96 = v66[3];
        v67 = v145;
        if (v97 >= v96 >> 1)
        {
          v112 = OUTLINED_FUNCTION_2_8(v96);
          sub_26854BF10(v112, v97 + 1, 1, v66);
          v66 = v113;
        }

        v66[2] = v97 + 1;
        v66[v97 + 4] = v1;
        v141 = v143;
        v98 = v147;
        v68 = v152;
LABEL_158:
        v63 = MEMORY[0x277D84F90];
        if (v68 != v98)
        {
          goto LABEL_95;
        }

LABEL_167:

        v62 = v139;
        v64 = v140;
        v65 = v138;
        goto LABEL_168;
      }

      v85 = sub_268540688(v66);
      if (!v85)
      {
        goto LABEL_153;
      }

      v1 = v85;
      if (!*(v85 + 16) || (v86 = *(v85 + 32), , , !sub_2684DEAF0(v86)))
      {
LABEL_152:

LABEL_153:
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C80, &qword_26856AD40);
        v100 = OUTLINED_FUNCTION_5_8(v99);
        *(v100 + 16) = xmmword_26856A540;
        *(v100 + 32) = v69;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = OUTLINED_FUNCTION_1_6();
          sub_26854BF10(v114, v115, v116, v66);
          v66 = v117;
        }

        v4 = v150;
        v67 = v145;
        v101 = v66[2];
        OUTLINED_FUNCTION_11_5();
        v68 = v152;
        if (v19)
        {
          v118 = OUTLINED_FUNCTION_0_7(v102);
          sub_26854BF10(v118, v119, v120, v66);
          v68 = v152;
          v66 = v121;
        }

        v66[2] = v1;
        v66[v101 + 4] = v100;
        v141 = v75;
        v98 = v147;
        goto LABEL_158;
      }

      OUTLINED_FUNCTION_3_7();
      if ((v86 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_10_2();
        v1 = v122;

        v88 = *(v1 + 16);
        v87 = *(v1 + 24);

        swift_unknownObjectRelease();
        if (!v70)
        {
          goto LABEL_152;
        }
      }

      else
      {
        v1 = *(v86 + 32);

        v88 = *(v1 + 16);
        v87 = *(v1 + 24);

        if (!v70)
        {
          goto LABEL_152;
        }
      }

      v89 = v75;
      sub_2684DEAFC();
      if (v71)
      {
        v123 = MEMORY[0x26D61C170](0, v69);
        v91 = *(v123 + 16);
        v1 = *(v123 + 24);

        swift_unknownObjectRelease();
      }

      else
      {
        v90 = *(v69 + 32);
        v91 = *(v90 + 16);
        v1 = *(v90 + 24);
      }

      if (v88 == v91 && v87 == v1)
      {

        v75 = v89;
        if (v141)
        {
          goto LABEL_153;
        }
      }

      else
      {
        v92 = sub_2685691C0();

        v75 = v89;
        if (v141 || (v92 & 1) == 0)
        {
          goto LABEL_153;
        }
      }

      v93 = v66[2];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268524284(v66);
        v66 = v124;
      }

      v4 = v150;
      if (!v93)
      {
        goto LABEL_202;
      }

      if (v93 > v66[2])
      {
        goto LABEL_203;
      }

      v94 = &v66[v93];
      sub_26852412C();
      v1 = *(v94[3] + 16);
      sub_2685241B8(v1);
      v95 = v94[3];
      *(v95 + 16) = v1 + 1;
      *(v95 + 8 * v1 + 32) = v69;
      v141 = v75;
LABEL_132:
      v67 = v145;
      v68 = v152;
      v63 = MEMORY[0x277D84F90];
      if (v152 == v147)
      {
        goto LABEL_167;
      }

      goto LABEL_95;
    }

    if (v71)
    {
      v1 = MEMORY[0x26D61C170](j, v69);
    }

    else
    {
      if (j >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_180;
      }

      v1 = *(v69 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (*(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_stackSummary + 8) && (OUTLINED_FUNCTION_9_6(), v73))
    {
      sub_268569020();
      sub_268569050();
      sub_268569060();
      sub_268569030();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
}

void sub_2684F550C(unint64_t a1)
{
  sub_2684F57AC(a1);
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v2 + 32;
    v32 = *(v2 + 16);
    v33 = v2;
    v31 = v2 + 32;
    while (v5 < *(v3 + 16))
    {
      v1 = *(v6 + 8 * v5);
      v35 = *(v1 + 16);
      if (v35)
      {
        v34 = v5;

        v7 = 0;
LABEL_6:
        if (v7 >= *(v1 + 16))
        {
LABEL_42:
          __break(1u);
          break;
        }

        v8 = *(v1 + 32 + 8 * v7);
        if (v8 >> 62)
        {
          v9 = sub_2685690A0();
        }

        else
        {
          v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v7;
        v10 = v8 & 0xC000000000000001;

        v11 = 0;
        while (v9 != v11)
        {
          if (v10)
          {
            v12 = MEMORY[0x26D61C170](v11, v8);
          }

          else
          {
            if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }
          }

          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          v13 = *(v12 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight);

          ++v11;
          if (v13 == 1)
          {
            for (i = 0; v9 != i; ++i)
            {
              if (v10)
              {
                v15 = MEMORY[0x26D61C170](i, v8);
              }

              else
              {
                if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_42;
                }
              }

              if (__OFADD__(i, 1))
              {
                goto LABEL_39;
              }

              *(v15 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight) = 1;
            }

            break;
          }
        }

        if (v7 != v35)
        {
          goto LABEL_6;
        }

        v4 = v32;
        v3 = v33;
        v5 = v34;
        v6 = v31;
      }

      if (++v5 == v4)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_29:
    sub_2684F5F04(v3);
    OUTLINED_FUNCTION_4_5();

    v16 = *(v1 + 16);
    if (v16)
    {
      v17 = v1 + 32;
      v18 = MEMORY[0x277D84F90];
      do
      {

        v20 = sub_2685636F0(v19);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = OUTLINED_FUNCTION_1_6();
          sub_26854BF34(v23, v24, v25, v18);
          v18 = v26;
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          v27 = OUTLINED_FUNCTION_0_7(v21);
          sub_26854BF34(v27, v28, v29, v18);
          v18 = v30;
        }

        v18[2] = v22 + 1;
        v18[v22 + 4] = v20;
        v17 += 8;
        --v16;
      }

      while (v16);
    }

LABEL_40:
  }
}

void sub_2684F57AC(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_99;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return;
  }

  while (1)
  {
    v3 = 0;
    v127 = v1 & 0xC000000000000001;
    v118 = v1 + 32;
    v4 = MEMORY[0x277D84F90];
    v115 = xmmword_26856A540;
    v126 = xmmword_26856B420;
    v120 = v2;
    v122 = v1;
LABEL_4:
    sub_2684DEAFC();
    if (v127)
    {
      v130 = MEMORY[0x26D61C170](v3, v1);
    }

    else
    {
      v130 = *(v118 + 8 * v3);
    }

    if (__OFADD__(v3++, 1))
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v6 = 0;
    v7 = *(v4 + 16);
    v8 = 32;
    for (i = v4; ; v4 = i)
    {
      if (v7 == v6)
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C80, &qword_26856AD40);
        v18 = OUTLINED_FUNCTION_5_8(v17);
        *(v18 + 16) = v115;
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
        v20 = OUTLINED_FUNCTION_5_8(v19);
        OUTLINED_FUNCTION_8_5(v20, v21, v22, v23, v24, v25, v26, v27, v28, v115, *(&v115 + 1), v118, v120, v122, v124, v29);
        *(v30 + 32) = v130;
        *(v18 + 32) = v30;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = OUTLINED_FUNCTION_1_6();
          sub_26854BF10(v98, v99, v100, v101);
          i = v102;
        }

        v32 = i[2];
        v31 = i[3];
        if (v32 >= v31 >> 1)
        {
          v103 = OUTLINED_FUNCTION_2_8(v31);
          sub_26854BF10(v103, v32 + 1, 1, i);
          i = v104;
        }

        i[2] = v32 + 1;
        i[v32 + 4] = v18;
        v4 = i;
LABEL_87:
        if (v3 == v2)
        {
          return;
        }

        goto LABEL_4;
      }

      OUTLINED_FUNCTION_7_8();
      if (v9)
      {
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      v10 = *(v4 + v8);
      if (!*(v10 + 16))
      {
        goto LABEL_90;
      }

      v11 = *(v10 + 32);
      if ((v11 & 0xC000000000000001) != 0)
      {

        v12 = MEMORY[0x26D61C170](0, v11);
      }

      else
      {
        if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_91;
        }

        v12 = *(v11 + 32);
      }

      v14 = *(v12 + 16);
      v13 = *(v12 + 24);

      if (v14 == *(v130 + 16) && v13 == *(v130 + 24))
      {
        break;
      }

      v16 = sub_2685691C0();

      if (v16)
      {
        goto LABEL_28;
      }

      ++v6;
      v8 += 8;
    }

LABEL_28:
    if (v6 >= i[2])
    {
      goto LABEL_95;
    }

    v4 = i[v8 / 8];
    v128 = *(v4 + 16);
    if (!v128)
    {
LABEL_53:
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
      v47 = OUTLINED_FUNCTION_5_8(v46);
      OUTLINED_FUNCTION_8_5(v47, v48, v49, v50, v51, v52, v53, v54, v55, v115, *(&v115 + 1), v118, v120, v122, v124, v56);
      v47[2].n128_u64[0] = v130;

      if ((OUTLINED_FUNCTION_17_4(v57, v58, v59, v60, v61, v62, v63, v64, v116, v117, v119, v121, v123, v125, v126, *(&v126 + 1), v127, v128, i) & 1) == 0)
      {
        sub_268524284(v4);
        v4 = v97;
      }

      OUTLINED_FUNCTION_7_8();
      if (v9)
      {
        goto LABEL_96;
      }

      sub_26852412C();
      v65 = *(*(v4 + v8) + 16);
      sub_2685241B8(v65);

      v66 = *(v4 + v8);
      *(v66 + 16) = v65 + 1;
      *(v66 + 8 * v65 + 32) = v47;
      goto LABEL_87;
    }

    v124 = v3;

    v33 = 0;
    v34 = 4;
    v35 = v130;
    while (1)
    {
      OUTLINED_FUNCTION_12_6();
      if (v9)
      {
        goto LABEL_92;
      }

      v36 = *(v4 + v34 * 8);
      if ((v36 & 0xC000000000000001) != 0)
      {

        v43 = MEMORY[0x26D61C170](0, v36);
        v44 = v35;
        v40 = *(v43 + 48);
        v38 = *(v43 + 56);

        v45 = v44;
        swift_unknownObjectRelease();
        v1 = v44[7];
        if (!v38)
        {

          v35 = v45;
          goto LABEL_44;
        }

        v39 = v45[6];
      }

      else
      {
        if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_93;
        }

        v37 = *(v36 + 32);
        v38 = *(v37 + 56);
        v1 = v35[7];
        if (!v38)
        {

LABEL_44:
          if (!v1)
          {
LABEL_57:

            goto LABEL_59;
          }

LABEL_47:

          goto LABEL_48;
        }

        v39 = v35[6];
        v40 = *(v37 + 48);
      }

      if (!v1)
      {

        v35 = v130;
        goto LABEL_47;
      }

      if (v40 == v39 && v38 == v1)
      {
        break;
      }

      v42 = sub_2685691C0();

      v35 = v130;
      if (v42)
      {
        goto LABEL_57;
      }

LABEL_48:
      ++v33;
      ++v34;
      if (v128 == v33)
      {

        v2 = v120;
        v1 = v122;
        v3 = v124;
        goto LABEL_53;
      }
    }

    v35 = v130;
LABEL_59:
    if (v6 >= i[2])
    {
      goto LABEL_97;
    }

    v67 = i[v8 / 8];
    if (v33 < *(v67 + 16))
    {
      break;
    }

LABEL_98:
    __break(1u);
LABEL_99:
    v2 = sub_2685690A0();
    if (!v2)
    {
      return;
    }
  }

  v4 = *(v67 + v34 * 8);
  v68 = OUTLINED_FUNCTION_3_7();
  if ((v4 & 0xC000000000000001) == 0)
  {
    if (*(*(v4 + 32) + 56))
    {
      goto LABEL_63;
    }

LABEL_80:
    if ((OUTLINED_FUNCTION_17_4(v68, v69, v70, v71, v72, v73, v74, v75, v115, *(&v115 + 1), v118, v120, v122, v124, v126, *(&v126 + 1), v127, v128, i) & 1) == 0)
    {
      sub_268524284(v4);
      v4 = v109;
    }

    OUTLINED_FUNCTION_7_8();
    if (v9)
    {
      __break(1u);
    }

    else
    {
      v107 = *(v4 + v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + v8) = v107;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_268524270(v107);
        v107 = v110;
        *(v4 + v8) = v110;
      }

      if (v33 < v107[2])
      {
        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  OUTLINED_FUNCTION_10_2();
  v106 = v105;

  v4 = *(v106 + 56);

  v68 = swift_unknownObjectRelease();
  if (!v4)
  {
    goto LABEL_80;
  }

LABEL_63:
  v4 = v35;
  v76 = sub_268554FB4();
  if (v76)
  {

    if ((OUTLINED_FUNCTION_17_4(v84, v85, v86, v87, v88, v89, v90, v91, v115, *(&v115 + 1), v118, v120, v122, v124, v126, *(&v126 + 1), v127, v128, i) & 1) == 0)
    {
      sub_268524284(v35);
      v4 = v111;
    }

    OUTLINED_FUNCTION_7_8();
    if (v9)
    {
      goto LABEL_103;
    }

    v92 = v4;
    v93 = *(v4 + v8);
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v92[v8 / 8] = v93;
    if ((v94 & 1) == 0)
    {
      sub_268524270(v93);
      v93 = v113;
      v92[v8 / 8] = v113;
    }

    OUTLINED_FUNCTION_12_6();
    if (!v9)
    {
      sub_2684F7A08(0, v93[v34]);
      sub_2684D1B64(0, 0, v35);

      v2 = v120;
      v1 = v122;
      v3 = v124;
      v4 = v92;
      goto LABEL_87;
    }
  }

  else
  {
    if ((OUTLINED_FUNCTION_17_4(v76, v77, v78, v79, v80, v81, v82, v83, v115, *(&v115 + 1), v118, v120, v122, v124, v126, *(&v126 + 1), v127, v128, i) & 1) == 0)
    {
      sub_268524284(v35);
      v4 = v112;
    }

    OUTLINED_FUNCTION_7_8();
    if (v9)
    {
      goto LABEL_104;
    }

    v95 = *(v4 + v8);
    v96 = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v8) = v95;
    if ((v96 & 1) == 0)
    {
      sub_268524270(v95);
      v95 = v114;
      *(v4 + v8) = v114;
    }

    if (v33 < v95[2])
    {
LABEL_86:
      MEMORY[0x26D61BE40]();
      sub_2685248B4();
      sub_268568D20();
      v2 = v120;
      v1 = v122;
      v3 = v124;
      goto LABEL_87;
    }

LABEL_105:
    __break(1u);
  }

  __break(1u);
}

void sub_2684F5F04(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return;
  }

  v3 = 0;
  v4 = a1 + 32;
  v101 = xmmword_26856B420;
  v5 = MEMORY[0x277D84F90];
  v97 = a1 + 32;
  v98 = *(a1 + 16);
  while (1)
  {
    v6 = *(v4 + 8 * v3);
    v103 = *(v6 + 16);
    if (v103)
    {
      break;
    }

LABEL_78:
    if (++v3 == v1)
    {
      return;
    }
  }

  v99 = v3;
  v104 = v6 + 32;

  LODWORD(v100) = 0;
  v8 = 0;
  v102 = v7;
  while (2)
  {
    if (v8 < *(v7 + 16))
    {
      v9 = *(v104 + 8 * v8);
      v105 = v8 + 1;
      v10 = sub_2684DEAF0(v9);
      v11 = v9 & 0xC000000000000001;

      for (i = 0; v10 != i; ++i)
      {
        if (v11)
        {
          v13 = MEMORY[0x26D61C170](i, v9);
        }

        else
        {
          if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_82;
          }

          v13 = *(v9 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        if (*(v13 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_stackSummary + 8) && (OUTLINED_FUNCTION_9_6(), v14))
        {
          sub_268569020();
          sub_268569050();
          sub_268569060();
          sub_268569030();
        }

        else
        {
        }
      }

      v15 = sub_2684DEAF0(v2);
      v16 = v15 != 0;
      if (v15)
      {
        HIDWORD(v100) = 1;
        OUTLINED_FUNCTION_3_7();
        if ((v2 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_10_2();
          v17 = v76;
        }

        else
        {
          v17 = *(v2 + 32);
        }

        v18 = 0;
        v106 = MEMORY[0x277D84F90];
        while (v10 != v18)
        {
          if (v11)
          {
            v19 = MEMORY[0x26D61C170](v18, v9);
          }

          else
          {
            if (v18 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_84;
            }

            v19 = *(v9 + 8 * v18 + 32);
          }

          if (__OFADD__(v18, 1))
          {
            goto LABEL_83;
          }

          v20 = *(v19 + 32) == *(v17 + 32) && *(v19 + 40) == *(v17 + 40);
          if (v20 || (sub_2685691C0() & 1) != 0)
          {
          }

          else
          {
            sub_268569020();
            sub_268569050();
            sub_268569060();
            sub_268569030();
          }

          ++v18;
        }

        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C80, &qword_26856AD40);
        v22 = OUTLINED_FUNCTION_5_8(v21);
        OUTLINED_FUNCTION_8_5(v22, v23, v24, v25, v26, v27, v28, v29, v30, v97, v98, v99, v100, v101, *(&v101 + 1), v31);
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
        v33 = OUTLINED_FUNCTION_5_8(v32);
        *(v33 + 16) = v101;
        *(v33 + 32) = v17;
        v22[2].n128_u64[0] = v33;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = OUTLINED_FUNCTION_1_6();
          sub_26854BF10(v77, v78, v79, v5);
          v5 = v80;
        }

        v35 = v5[2];
        v34 = v5[3];
        if (v35 >= v34 >> 1)
        {
          v81 = OUTLINED_FUNCTION_2_8(v34);
          sub_26854BF10(v81, v35 + 1, 1, v5);
          v5 = v82;
        }

        v5[2] = v35 + 1;
        v5[v35 + 4] = v22;
        if ((*(v17 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight) & 1) == 0 && sub_2684DEAF0(v106))
        {
          v48 = OUTLINED_FUNCTION_5_8(v21);
          OUTLINED_FUNCTION_8_5(v48, v49, v50, v51, v52, v53, v54, v55, v56, v97, v98, v99, v100, v101, *(&v101 + 1), v57);
          *(v58 + 32) = v106;
          v60 = v5[2];
          v59 = v5[3];
          if (v60 >= v59 >> 1)
          {
            v91 = OUTLINED_FUNCTION_2_8(v59);
            sub_26854BF10(v91, v60 + 1, 1, v5);
            v5 = v92;
          }

          v5[2] = v60 + 1;
          v5[v60 + 4] = v48;
          LODWORD(v100) = HIDWORD(v100);
        }

        else
        {
        }

        goto LABEL_43;
      }

      v36 = sub_268540688(v5);
      if (!v36)
      {
        goto LABEL_63;
      }

      i = v36;
      if (*(v36 + 16))
      {
        v37 = *(v36 + 32);

        if (sub_2684DEAF0(v37))
        {
          OUTLINED_FUNCTION_3_7();
          if ((v37 & 0xC000000000000001) != 0)
          {
            OUTLINED_FUNCTION_10_2();
            v94 = v93;

            i = *(v94 + 16);
            v39 = *(v94 + 24);

            swift_unknownObjectRelease();
            if (v10)
            {
LABEL_50:
              sub_2684DEAFC();
              if (v11)
              {
                v95 = MEMORY[0x26D61C170](0, v9);
                v42 = *(v95 + 16);
                v41 = *(v95 + 24);

                swift_unknownObjectRelease();
              }

              else
              {
                v40 = *(v9 + 32);
                v42 = *(v40 + 16);
                v41 = *(v40 + 24);
              }

              if (i == v42 && v39 == v41)
              {

                if ((v100 & 1) == 0)
                {
                  goto LABEL_55;
                }
              }

              else
              {
                v43 = sub_2685691C0();

                if (!(v100 & 1 | ((v43 & 1) == 0)))
                {
LABEL_55:
                  v44 = v5[2];
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    if (!v44)
                    {
                      goto LABEL_86;
                    }
                  }

                  else
                  {
                    sub_268524284(v5);
                    v5 = v96;
                    if (!v44)
                    {
                      goto LABEL_86;
                    }
                  }

                  if (v44 > v5[2])
                  {
                    goto LABEL_87;
                  }

                  v45 = &v5[v44];
                  sub_26852412C();
                  v46 = *(v45[3] + 16);
                  sub_2685241B8(v46);
                  v47 = v45[3];
                  *(v47 + 16) = v46 + 1;
                  *(v47 + 8 * v46 + 32) = v9;
                  goto LABEL_68;
                }
              }

LABEL_63:
              v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C80, &qword_26856AD40);
              v62 = OUTLINED_FUNCTION_5_8(v61);
              OUTLINED_FUNCTION_8_5(v62, v63, v64, v65, v66, v67, v68, v69, v70, v97, v98, v99, v100, v101, *(&v101 + 1), v71);
              *(v72 + 32) = v9;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v83 = OUTLINED_FUNCTION_1_6();
                sub_26854BF10(v83, v84, v85, v5);
                v5 = v86;
              }

              v73 = v5[2];
              OUTLINED_FUNCTION_11_5();
              if (v75)
              {
                v87 = OUTLINED_FUNCTION_0_7(v74);
                sub_26854BF10(v87, v88, v89, v5);
                v5 = v90;
              }

              v5[2] = i;
              v5[v73 + 4] = v62;
LABEL_68:
              LODWORD(v100) = v16;
LABEL_43:
              v7 = v102;
              v8 = v105;
              v2 = MEMORY[0x277D84F90];
              if (v105 != v103)
              {
                continue;
              }

              v1 = v98;
              v3 = v99;
              v4 = v97;
              goto LABEL_78;
            }
          }

          else
          {
            v38 = *(v37 + 32);

            i = *(v38 + 16);
            v39 = *(v38 + 24);

            if (v10)
            {
              goto LABEL_50;
            }
          }
        }
      }

      goto LABEL_63;
    }

    break;
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
}

uint64_t *sub_2684F659C(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  result = sub_2684DEAF0(a1);
  v4 = result;
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      sub_2684F4658(v7);
      OUTLINED_FUNCTION_4_5();

      return v1;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D61C170](i, a1);
      v6 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v6 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight))
    {
    }

    else
    {
      sub_268569020();
      sub_268569050();
      sub_268569060();
      v1 = &v7;
      result = sub_268569030();
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void *sub_2684F66C4(unint64_t a1, unint64_t a2)
{
  v4 = sub_2685689F0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v60 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = (&v60 - v12);
  if (qword_280282960 != -1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v14 = __swift_project_value_buffer(v4, qword_28028B348);
    v15 = *(v5 + 16);
    v64 = v14;
    v65 = v15;
    v66 = (v5 + 16);
    (v15)(v13);

    v16 = sub_2685689E0();
    v17 = sub_268568DD0();

    v18 = os_log_type_enabled(v16, v17);
    v67 = v8;
    v68 = v5;
    v69 = v4;
    if (v18)
    {
      LODWORD(v72) = v17;
      v19 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v74[0] = v70;
      v71 = v19;
      LODWORD(v19->isa) = 136315138;
      v20 = sub_2684DEAF0(a1);
      v21 = MEMORY[0x277D84F90];
      if (v20)
      {
        v22 = v20;
        v76 = MEMORY[0x277D84F90];
        result = sub_2684DCF68(0, v20 & ~(v20 >> 63), 0);
        if (v22 < 0)
        {
          __break(1u);
          return result;
        }

        v60 = v16;
        v61 = v13;
        v62 = a2;
        v63 = v11;
        v24 = 0;
        v21 = v76;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26D61C170](v24, a1);
          }

          else
          {
          }

          v25 = sub_268554CE0();
          v27 = v26;

          v76 = v21;
          v29 = *(v21 + 16);
          v28 = *(v21 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_2684DCF68((v28 > 1), v29 + 1, 1);
            v21 = v76;
          }

          ++v24;
          *(v21 + 16) = v29 + 1;
          v30 = v21 + 16 * v29;
          *(v30 + 32) = v25;
          *(v30 + 40) = v27;
        }

        while (v22 != v24);
        v5 = v68;
        v4 = v69;
        a2 = v62;
        v11 = v63;
        v16 = v60;
        v13 = v61;
      }

      v76 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282ED0, &qword_26856EB00);
      sub_2684F7A60();
      v31 = sub_268568AF0();
      v33 = v32;

      v34 = sub_2684EABEC(v31, v33, v74);

      v35 = v71;
      *(&v71->isa + 4) = v34;
      _os_log_impl(&dword_2684CA000, v16, v72, "#RNStateManager.groupStacks with filter unmodified input: \n %s", v35, 0xCu);
      v8 = v70;
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x26D61CB30](v8, -1, -1);
      MEMORY[0x26D61CB30](v35, -1, -1);
    }

    v36 = *(v5 + 8);
    v36(v13, v4);
    v13 = *(a2 + 24);
    if (!v13)
    {
      sub_2684F550C(a1);
      *(a2 + 24) = v37;

      v13 = *(a2 + 24);
      if (!v13)
      {
        break;
      }
    }

    v63 = v36;
    isa = v13[2].isa;
    v71 = v13 + 4;
    v72 = isa;

    v11 = 0;
    v70 = 0;
    v39 = MEMORY[0x277D84F90];
LABEL_17:
    while (v11 != v72)
    {
      if (v11 >= v13[2].isa)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v4 = v71[v11++].isa;
      v8 = sub_2684DEAF0(v4);
      a1 = v4 & 0xC000000000000001;
      a2 = v4 & 0xFFFFFFFFFFFFFF8;

      v40 = 0;
      while (v8 != v40)
      {
        if (a1)
        {
          v41 = MEMORY[0x26D61C170](v40, v4);
        }

        else
        {
          if (v40 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }
        }

        if (__OFADD__(v40, 1))
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v5 = *(v41 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight);

        ++v40;
        if (v5)
        {

          goto LABEL_17;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74[0] = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2684DCF88(0, v39[2] + 1, 1);
        v39 = v74[0];
      }

      a2 = v39[2];
      v43 = v39[3];
      v8 = (a2 + 1);
      if (a2 >= v43 >> 1)
      {
        sub_2684DCF88((v43 > 1), a2 + 1, 1);
        v39 = v74[0];
      }

      v39[2] = v8;
      v39[a2 + 4] = v4;
    }

    v5 = v67;
    v4 = v69;
    v65(v67, v64, v69);

    v13 = sub_2685689E0();
    v44 = sub_268568DD0();

    if (!os_log_type_enabled(v13, v44))
    {
      goto LABEL_42;
    }

    v11 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = v45;
    v76 = v45;
    *v11 = 136315138;
    v8 = v39[2];
    v47 = MEMORY[0x277D84F90];
    if (!v8)
    {
LABEL_41:
      v52 = MEMORY[0x26D61BE70](v47, MEMORY[0x277D837D0]);
      v54 = v53;

      v55 = sub_2684EABEC(v52, v54, &v76);

      *(v11 + 4) = v55;
      _os_log_impl(&dword_2684CA000, v13, v44, "#RNStateManager.groupStacks apps after filter: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x26D61CB30](v46, -1, -1);
      MEMORY[0x26D61CB30](v11, -1, -1);
LABEL_42:

      v63(v5, v4);
      return v39;
    }

    v66 = v45;
    v71 = v11;
    LODWORD(v72) = v44;
    v75 = MEMORY[0x277D84F90];
    sub_2684DCF68(0, v8, 0);
    v48 = 0;
    v47 = v75;
    a1 = (v39 + 4);
    while (v48 < v39[2])
    {
      v73 = *(a1 + 8 * v48);
      v49 = v70;
      sub_2684F7704(&v73, v74);
      v70 = v49;
      a2 = v74[0];
      v4 = v74[1];
      v75 = v47;
      v5 = *(v47 + 16);
      v50 = *(v47 + 24);
      v11 = v5 + 1;
      if (v5 >= v50 >> 1)
      {
        sub_2684DCF68((v50 > 1), v5 + 1, 1);
        v47 = v75;
      }

      ++v48;
      *(v47 + 16) = v11;
      v51 = v47 + 16 * v5;
      *(v51 + 32) = a2;
      *(v51 + 40) = v4;
      if (v8 == v48)
      {
        v4 = v69;
        v46 = v66;
        v5 = v67;
        LOBYTE(v44) = v72;
        v11 = v71;
        goto LABEL_41;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
  }

  v56 = MEMORY[0x277D84F90];
  v65(v11, v64, v4);
  v57 = sub_2685689E0();
  v58 = sub_268568DC0();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_2684CA000, v57, v58, "#RNStateManager.groupStacks No notifications provided, returning [[]]", v59, 2u);
    MEMORY[0x26D61CB30](v59, -1, -1);
  }

  v36(v11, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C80, &qword_26856AD40);
  v39 = swift_allocObject();
  *(v39 + 1) = xmmword_26856A540;
  v39[4] = v56;
  return v39;
}

void *sub_2684F6ED8(unint64_t a1, uint64_t a2)
{
  v4 = sub_2685689F0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v72 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v65 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = (&v65 - v11);
  if (qword_280282960 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v13 = __swift_project_value_buffer(v4, qword_28028B348);
    v14 = *(v5 + 16);
    v69 = v13;
    v70 = v14;
    v71 = (v5 + 16);
    (v14)(v12);

    v15 = sub_2685689E0();
    v16 = sub_268568DD0();

    v17 = os_log_type_enabled(v15, v16);
    v73 = v5;
    v74 = v4;
    if (v17)
    {
      LODWORD(v77) = v16;
      v18 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v79[0] = v75;
      v76 = v18;
      *v18 = 136315138;
      v19 = sub_2684DEAF0(a1);
      v20 = MEMORY[0x277D84F90];
      if (v19)
      {
        v21 = v19;
        v81 = MEMORY[0x277D84F90];
        result = sub_2684DCF68(0, v19 & ~(v19 >> 63), 0);
        if (v21 < 0)
        {
          __break(1u);
          return result;
        }

        v65 = v15;
        v66 = v12;
        v67 = a2;
        v68 = v10;
        v23 = 0;
        v20 = v81;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26D61C170](v23, a1);
          }

          else
          {
          }

          v24 = sub_268554CE0();
          v26 = v25;

          v81 = v20;
          v28 = *(v20 + 16);
          v27 = *(v20 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_2684DCF68((v27 > 1), v28 + 1, 1);
            v20 = v81;
          }

          ++v23;
          *(v20 + 16) = v28 + 1;
          v29 = v20 + 16 * v28;
          *(v29 + 32) = v24;
          *(v29 + 40) = v26;
        }

        while (v21 != v23);
        v5 = v73;
        v4 = v74;
        a2 = v67;
        v10 = v68;
        v15 = v65;
        v12 = v66;
      }

      v81 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282ED0, &qword_26856EB00);
      sub_2684F7A60();
      v30 = sub_268568AF0();
      v32 = v31;

      v33 = sub_2684EABEC(v30, v32, v79);

      v34 = v76;
      *(v76 + 4) = v33;
      _os_log_impl(&dword_2684CA000, v15, v77, "#RNStateManager.groupStacks with filter unmodified input: \n %s", v34, 0xCu);
      v35 = v75;
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x26D61CB30](v35, -1, -1);
      MEMORY[0x26D61CB30](v34, -1, -1);
    }

    v37 = *(v5 + 8);
    v5 += 8;
    v36 = v37;
    v37(v12, v4);
    v38 = *(a2 + 24);
    if (!v38)
    {
      sub_2684F550C(a1);
      *(a2 + 24) = v39;

      v38 = *(a2 + 24);
      if (!v38)
      {
        break;
      }
    }

    v68 = v36;
    v40 = *(v38 + 16);
    v76 = (v38 + 32);
    v77 = v40;

    a1 = 0;
    v75 = 0;
    v41 = MEMORY[0x277D84F90];
    v12 = &OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight;
LABEL_17:
    while (a1 != v77)
    {
      if (a1 >= *(v38 + 16))
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v5 = v76[a1];
      v10 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v5 >> 62)
      {
        v42 = sub_2685690A0();
      }

      else
      {
        v42 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++a1;
      v4 = v5 & 0xC000000000000001;

      v43 = 0;
      do
      {
        if (v42 == v43)
        {

          goto LABEL_17;
        }

        if (v4)
        {
          v44 = MEMORY[0x26D61C170](v43, v5);
        }

        else
        {
          if (v43 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }
        }

        if (__OFADD__(v43, 1))
        {
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        a2 = *(v44 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isHighlight);

        ++v43;
      }

      while ((a2 & 1) == 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79[0] = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2684DCF88(0, v41[2] + 1, 1);
        v41 = v79[0];
      }

      v4 = v41[2];
      v46 = v41[3];
      if (v4 >= v46 >> 1)
      {
        sub_2684DCF88((v46 > 1), v4 + 1, 1);
        v41 = v79[0];
      }

      v41[2] = v4 + 1;
      v41[v4 + 4] = v5;
    }

    v10 = v72;
    a2 = v74;
    v70(v72, v69, v74);

    v5 = sub_2685689E0();
    v47 = sub_268568DD0();

    if (!os_log_type_enabled(v5, v47))
    {
      goto LABEL_46;
    }

    v12 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    p_isa = v48;
    v81 = v48;
    *v12 = 136315138;
    v50 = v41[2];
    v51 = MEMORY[0x277D84F90];
    if (!v50)
    {
LABEL_45:
      v56 = MEMORY[0x26D61BE70](v51, MEMORY[0x277D837D0]);
      v58 = v57;

      v59 = sub_2684EABEC(v56, v58, &v81);

      *(v12 + 4) = v59;
      _os_log_impl(&dword_2684CA000, v5, v47, "#RNStateManager.groupStacks apps after filter: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(p_isa);
      MEMORY[0x26D61CB30](p_isa, -1, -1);
      MEMORY[0x26D61CB30](v12, -1, -1);
LABEL_46:

      v68(v10, a2);
      return v41;
    }

    v71 = v48;
    v76 = v12;
    LODWORD(v77) = v47;
    v80 = MEMORY[0x277D84F90];
    sub_2684DCF68(0, v50, 0);
    v52 = 0;
    v51 = v80;
    a1 = (v41 + 4);
    while (v52 < v41[2])
    {
      v78 = *(a1 + 8 * v52);
      v53 = v75;
      sub_2684F7704(&v78, v79);
      v75 = v53;
      v4 = v79[0];
      a2 = v79[1];
      v80 = v51;
      v10 = *(v51 + 16);
      v54 = *(v51 + 24);
      v12 = (v10 + 1);
      if (v10 >= v54 >> 1)
      {
        sub_2684DCF68((v54 > 1), v10 + 1, 1);
        v51 = v80;
      }

      ++v52;
      *(v51 + 16) = v12;
      v55 = v51 + 16 * v10;
      *(v55 + 32) = v4;
      *(v55 + 40) = a2;
      if (v50 == v52)
      {
        a2 = v74;
        p_isa = &v71->isa;
        v10 = v72;
        LOBYTE(v47) = v77;
        v12 = v76;
        goto LABEL_45;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    swift_once();
  }

  v60 = MEMORY[0x277D84F90];
  v61 = v74;
  v70(v10, v69, v74);
  v62 = sub_2685689E0();
  v63 = sub_268568DC0();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_2684CA000, v62, v63, "#RNStateManager.groupStacks No notifications provided, returning [[]]", v64, 2u);
    MEMORY[0x26D61CB30](v64, -1, -1);
  }

  v36(v10, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C80, &qword_26856AD40);
  v41 = swift_allocObject();
  *(v41 + 1) = xmmword_26856A540;
  v41[4] = v60;
  return v41;
}

uint64_t sub_2684F7704@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = 0xE000000000000000;
  sub_268568FD0();

  if (sub_2684DEAF0(v3))
  {
    sub_2684DEAFC();
    if ((v3 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x26D61C170](0, v3);
      v6 = *(v21 + 16);
      v4 = *(v21 + 24);

      swift_unknownObjectRelease();
    }

    else
    {
      v5 = *(v3 + 32);
      v6 = *(v5 + 16);
      v4 = *(v5 + 24);
    }
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x26D61BDA0](v6, v4);

  MEMORY[0x26D61BDA0](0xD000000000000013, 0x8000000268572070);
  v7 = sub_2684DEAF0(v3);
  if (!v7)
  {
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282ED0, &qword_26856EB00);
    sub_2684F7A60();
    v18 = sub_268568AF0();
    v20 = v19;

    MEMORY[0x26D61BDA0](v18, v20);

    *a2 = 0x203A707061;
    a2[1] = 0xE500000000000000;
    return result;
  }

  v8 = v7;
  v24 = MEMORY[0x277D84F90];
  result = sub_2684DCF68(0, v7 & ~(v7 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v22 = a2;
    v10 = 0;
    v23 = v3 & 0xC000000000000001;
    v11 = v3;
    do
    {
      if (v23)
      {
        MEMORY[0x26D61C170](v10, v3);
      }

      else
      {
      }

      v12 = sub_268554CE0();
      v14 = v13;

      v16 = *(v24 + 16);
      v15 = *(v24 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2684DCF68((v15 > 1), v16 + 1, 1);
      }

      ++v10;
      *(v24 + 16) = v16 + 1;
      v17 = v24 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v3 = v11;
    }

    while (v8 != v10);
    a2 = v22;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t RNStateManager.deinit()
{

  return v0;
}

uint64_t RNStateManager.__deallocating_deinit()
{
  RNStateManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_2684F7A08(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_2685690A0();
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

unint64_t sub_2684F7A60()
{
  result = qword_280282ED8;
  if (!qword_280282ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280282ED0, &qword_26856EB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282ED8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_7()
{

  return sub_2684DEAFC();
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1)
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_8_5(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a16)
{
  result = a16;
  a1[1] = a16;
  return result;
}

void OUTLINED_FUNCTION_10_2()
{

  JUMPOUT(0x26D61C170);
}

uint64_t OUTLINED_FUNCTION_15_3()
{
}

void OUTLINED_FUNCTION_16_4()
{

  sub_26853D764(v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_17_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_2684F7C18()
{
  sub_2684F7D74();
  result = sub_268568E90();
  qword_28028B340 = result;
  return result;
}

uint64_t sub_2684F7C80()
{
  v0 = sub_2685689F0();
  __swift_allocate_value_buffer(v0, qword_28028B348);
  __swift_project_value_buffer(v0, qword_28028B348);
  if (qword_280282958 != -1)
  {
    swift_once();
  }

  v1 = qword_28028B340;
  return sub_268568A00();
}

uint64_t sub_2684F7D0C()
{
  sub_2684F7D74();
  result = sub_268568E90();
  qword_28028B360 = result;
  return result;
}

unint64_t sub_2684F7D74()
{
  result = qword_280282EE0;
  if (!qword_280282EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280282EE0);
  }

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

uint64_t sub_2684F7E80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v6 = OBJC_IVAR____TtC24SiriNotificationsIntents26RNReplyFollowupActionGroup_transition;
  v7 = sub_268567E80();
  __swift_storeEnumTagSinglePayload(v3 + v6, 1, 1, v7);
  sub_2684CC878(a1, v3 + OBJC_IVAR____TtC24SiriNotificationsIntents26RNReplyFollowupActionGroup_sharedObjects);
  sub_2684CC878(a1, v11);
  type metadata accessor for RNReplyFollowupAction();
  swift_allocObject();
  v8 = sub_2684FBC80(v11, v4);
  sub_2684CC8D4(a1);
  v9 = sub_2684F818C(&qword_280282F08, type metadata accessor for RNReplyFollowupAction, &unk_26856C070);
  *(v3 + 16) = v8;
  *(v3 + 24) = v9;
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_2684F7F7C()
{
  swift_unknownObjectRelease();
  sub_2684DBF00(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents26RNReplyFollowupActionGroup_transition);
  sub_2684CC8D4(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents26RNReplyFollowupActionGroup_sharedObjects);
  return v0;
}

uint64_t sub_2684F7FBC()
{
  sub_2684F7F7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for RNReplyFollowupActionGroup(uint64_t a1)
{
  result = qword_280282EF0;
  if (!qword_280282EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2684F8068(uint64_t a1)
{
  sub_2684DBD70(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2684F818C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_2684F8238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = a1;
  sub_2684CC878(a2, (v3 + 5));
  sub_2684CC878(a2, v19);
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v6 = qword_280282970;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *(qword_28028B398 + 16);
  v8 = v7;
  sub_268567990();
  type metadata accessor for ANReadSpokenHintAction();
  swift_allocObject();
  sub_2684E1430(a1, v19, v7, 0, 0, 0, 0, 0, &v15, v14, v13, v14[0], v14[1], v14[2], v14[3], v14[4], v15, *(&v15 + 1), v16, *(&v16 + 1), v17, v18);
  v10 = v9;
  sub_2684CC8D4(a2);
  v11 = sub_2684F8648(&qword_280282D18, 255, type metadata accessor for ANReadSpokenHintAction, &unk_26856B2A8);
  v3[2] = v10;
  v3[3] = v11;
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_2684F8398@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  sub_2684CC878(v1 + 40, __src);
  type metadata accessor for ANFollowupReturnGroup();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  memcpy((v4 + 24), __src, 0x80uLL);
  sub_2684CC878(v1 + 40, __src);
  type metadata accessor for ANFollowupFlow(0);
  swift_allocObject();
  __src[0] = ANFollowupFlow.init(notificationManager:sharedObjects:)();
  sub_2685677B0();
  swift_allocObject();
  sub_2684F8648(&qword_280282A10, 255, type metadata accessor for ANFollowupFlow, &protocol conformance descriptor for ANFollowupFlow);
  sub_2684F8648(&qword_280282A18, 255, type metadata accessor for ANFollowupReturnGroup, &unk_26856F2C8);
  swift_retain_n();
  *a1 = sub_2685677A0();
  v5 = *MEMORY[0x277D5B898];
  v6 = sub_268567960();
  (*(*(v6 - 8) + 104))(a1, v5, v6);
  v7 = *MEMORY[0x277D5BF50];
  v8 = sub_268567E80();
  (*(*(v8 - 8) + 104))(a1, v7, v8);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
}

uint64_t sub_2684F8648(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2684F8690(uint64_t a1, const void *a2)
{
  v3 = v2;
  v6 = sub_2685689F0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v32[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D58, &qword_26856BDF0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v32[-v14];
  v16 = type metadata accessor for ReadingRecord(0);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  v17 = sub_2685051E0(0, v15);
  sub_2684F8A9C(v15);
  if (v17)
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v18 = __swift_project_value_buffer(v6, qword_28028B348);
    (*(v7 + 16))(v10, v18, v6);
    v19 = sub_2685689E0();
    v20 = sub_268568DC0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2684CA000, v19, v20, "AnnounceNotificationsFlowSource's initial group is ReadNotificationActionGroup", v21, 2u);
      MEMORY[0x26D61CB30](v21, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    sub_2684CC878(a2, v32);
    type metadata accessor for ANReadNotificationsActionGroup();
    swift_allocObject();
    v22 = sub_2684D4E64(a1, v32);
    sub_2684CC8D4(a2);
    v23 = &unk_280282B70;
    v24 = type metadata accessor for ANReadNotificationsActionGroup;
    v25 = &unk_26856A4E8;
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v26 = __swift_project_value_buffer(v6, qword_28028B348);
    (*(v7 + 16))(v12, v26, v6);
    v27 = sub_2685689E0();
    v28 = sub_268568DC0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2684CA000, v27, v28, "AnnounceNotificationsFlowSource's initial group is PlayNotificationSoundActionGroup", v29, 2u);
      MEMORY[0x26D61CB30](v29, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    type metadata accessor for ANPlayNotificationSoundActionGroup();
    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    memcpy((v22 + 24), a2, 0x80uLL);
    v23 = &unk_280282F28;
    v24 = type metadata accessor for ANPlayNotificationSoundActionGroup;
    v25 = &unk_26856ABBC;
  }

  v30 = sub_2684F8B04(v23, v24, v25);
  *(v3 + 16) = v22;
  *(v3 + 24) = v30;
  return v3;
}

uint64_t sub_2684F8A9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D58, &qword_26856BDF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2684F8B04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2684F8B4C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_2685688F0();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_5_5();
  *(v2 + 16) = a1;
  sub_2684D57FC(a2, v2 + 24);
  type metadata accessor for ReadNotificationsCATs(0);

  sub_2685688E0();
  sub_2685686F0();
  sub_2685685F0();
  v7 = sub_2685685D0();
  sub_268516318(a2, v7);

  v8 = sub_268568710();

  __swift_destroy_boxed_opaque_existential_0(a2);
  *(v3 + 64) = v8;
  return v3;
}

uint64_t sub_2684F8C60()
{
  v0 = sub_2684FA604();
  if (v0 == 5)
  {

    return sub_268567B90();
  }

  else if (v0 == 1)
  {

    return sub_268567B70();
  }

  else
  {

    return sub_268567B80();
  }
}

uint64_t sub_2684F8CEC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_7();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2684F8D14()
{
  OUTLINED_FUNCTION_5();
  v1 = sub_2684FA604();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2684F8D74()
{
  OUTLINED_FUNCTION_5();
  v1[24] = v2;
  v1[25] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0);
  v1[26] = OUTLINED_FUNCTION_39();
  v3 = sub_2685679B0();
  v1[27] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v1[28] = v4;
  v1[29] = OUTLINED_FUNCTION_39();
  v5 = sub_268567B60();
  v1[30] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v1[31] = v6;
  v1[32] = OUTLINED_FUNCTION_39();
  v7 = sub_268567CE0();
  v1[33] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[34] = v8;
  v1[35] = OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v1[36] = OUTLINED_FUNCTION_39();
  v9 = sub_268567D90();
  v1[37] = v9;
  OUTLINED_FUNCTION_2_4(v9);
  v1[38] = v10;
  v1[39] = OUTLINED_FUNCTION_39();
  v11 = sub_2685689F0();
  v1[40] = v11;
  OUTLINED_FUNCTION_2_4(v11);
  v1[41] = v12;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2684F8FD4()
{
  v71 = v1;
  v4 = *(v1[25] + 16);
  v5 = sub_2684F417C();
  v6 = v4[5];
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = sub_26855D208(v6 + 1, v5);

    if (!v2)
    {
      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_280282960);
      }

      v33 = v1[43];
      v34 = v1[40];
      v35 = v1[41];
      v36 = __swift_project_value_buffer(v34, qword_28028B348);
      (*(v35 + 16))(v33, v36, v34);
      v37 = sub_2685689E0();
      v38 = sub_268568DE0();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_2684CA000, v37, v38, "RNPromptStrategy makePromptForValue | no next app to read)", v39, 2u);
        OUTLINED_FUNCTION_2();
      }

      v40 = v1[43];
      v41 = v1[40];
      v42 = v1[41];
      v44 = v1[31];
      v43 = v1[32];
      v45 = v1[29];
      v46 = v1[30];
      v47 = v1[28];
      v69 = v1[27];

      (*(v42 + 8))(v40, v41);
      sub_268567990();
      __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
      sub_268567A20();
      (*(v44 + 104))(v43, *MEMORY[0x277D5BB20], v46);
      (*(v47 + 104))(v45, *MEMORY[0x277D5B8D8], v69);
      sub_268568B70();
      v48 = OUTLINED_FUNCTION_7_9();
      sub_2684EBB74(v48, v49, v43, v45, 8, v50, v51, 0, v64, v65);
      sub_2685679A0();

      __swift_destroy_boxed_opaque_existential_0(v1 + 2);
      sub_2684FB8E4();
      swift_allocError();
      OUTLINED_FUNCTION_19_2();
      swift_willThrow();

      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_31_2();

      __asm { BRAA            X1, X16 }
    }

    v3 = v4[7];
    v5 = v4[6];
    v0 = v5 / 4;
    sub_2684DEAFC();
    if ((v2 & 0xC000000000000001) == 0)
    {
      v7 = *(v2 + 32);

      goto LABEL_5;
    }
  }

  v7 = MEMORY[0x26D61C170](0, v2);
LABEL_5:
  v8 = v5 - 4 * v0;
  v9 = v7 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_type;
  v68 = *(v7 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_type);
  v1[46] = v68;
  v10 = *(v9 + 8);
  v1[47] = v10;

  v11 = sub_2684DEAF0(v2);

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v12 = v8;
  v13 = v3;
  v14 = v11;
  v15 = v1[45];
  v16 = v1[40];
  v17 = v1[41];
  v18 = __swift_project_value_buffer(v16, qword_28028B348);
  v1[48] = v18;
  v19 = *(v17 + 16);
  v1[49] = v19;
  v1[50] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v15, v18, v16);

  v20 = sub_2685689E0();
  v21 = sub_268568DD0();

  v22 = os_log_type_enabled(v20, v21);
  v23 = v1[45];
  v25 = v1[40];
  v24 = v1[41];
  if (v22)
  {
    v67 = v1[45];
    v26 = swift_slowAlloc();
    v66 = v25;
    v27 = swift_slowAlloc();
    v70 = v27;
    *v26 = 134218754;
    *(v26 + 4) = v13;
    *(v26 + 12) = 2048;
    *(v26 + 14) = v12;
    *(v26 + 22) = 2080;

    v28 = sub_2684EABEC(v68, v10, &v70);
    v29 = v19;
    v30 = v18;
    v31 = v28;

    *(v26 + 24) = v31;
    v18 = v30;
    v19 = v29;
    *(v26 + 32) = 2048;
    *(v26 + 34) = v14;
    _os_log_impl(&dword_2684CA000, v20, v21, "RNPromptStrategy makePromptForValue | consecutiveSkippedGroup: %f, readGroupsModuloFour: %f, appName: %s, notificationCountForApp: %f", v26, 0x2Au);
    __swift_destroy_boxed_opaque_existential_0(v27);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v32 = *(v24 + 8);
    v32(v67, v66);
  }

  else
  {

    v32 = *(v24 + 8);
    v32(v23, v25);
  }

  v1[51] = v32;
  v19(v1[44], v18, v1[40]);
  v54 = sub_2685689E0();
  v55 = sub_268568DC0();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_2684CA000, v54, v55, "RNPromptStrategy: In makePromptForValue", v56, 2u);
    OUTLINED_FUNCTION_2();
  }

  v57 = v1[44];
  v58 = v1[40];
  v59 = v1[36];

  v32(v57, v58);
  sub_268568BB0();
  v60 = sub_268568810();
  __swift_storeEnumTagSinglePayload(v59, 0, 1, v60);
  v61 = swift_task_alloc();
  v1[52] = v61;
  *v61 = v1;
  v61[1] = sub_2684F9664;
  OUTLINED_FUNCTION_31_2();

  return sub_26850DD28();
}

uint64_t sub_2684F9664()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v3 + 424) = v0;

  sub_2684EB7C8(*(v3 + 288), &qword_280282AF0, &qword_26856A1E0);
  if (v0)
  {

    v6 = sub_2684F9AC0;
  }

  else
  {
    v6 = sub_2684F97A4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2684F97A4()
{
  v21 = *(v0 + 312);
  v22 = *(v0 + 304);
  v23 = *(v0 + 296);
  v1 = *(v0 + 256);
  v18 = *(v0 + 272);
  v19 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  v15 = *(v0 + 216);
  v16 = *(v0 + 280);
  v17 = *(v0 + 208);
  v6 = *(v0 + 200);
  v20 = *(v0 + 192);
  sub_268516DA4(*(v0 + 368), *(v0 + 376), MEMORY[0x277D84F90], v16);

  sub_268567990();
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  sub_268567A20();
  (*(v3 + 104))(v1, *MEMORY[0x277D5BB20], v2);
  (*(v4 + 104))(v5, *MEMORY[0x277D5B950], v15);
  v7 = OUTLINED_FUNCTION_7_9();
  sub_2684EBB74(v7, v8, v1, v5, 8, 0, 0, 0, v13, v14);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  sub_268567A90();
  (*(v18 + 16))(v17, v16, v19);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v19);
  v9 = sub_2685680C0();
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  v10 = MEMORY[0x277D5C1D8];
  v20[3] = v9;
  v20[4] = v10;
  __swift_allocate_boxed_opaque_existential_0(v20);
  sub_268567BD0();
  sub_2684EB7C8(v0 + 136, &qword_280282F30, &qword_26856DAD0);
  sub_2684EB7C8(v17, &qword_280282C00, &unk_26856A9A0);
  (*(v18 + 8))(v16, v19);
  (*(v22 + 8))(v21, v23);

  OUTLINED_FUNCTION_9_1();

  return v11();
}

uint64_t sub_2684F9AC0()
{
  v35 = v0;
  v2 = *(v0 + 424);
  (*(v0 + 392))(*(v0 + 336), *(v0 + 384), *(v0 + 320));
  v3 = v2;
  v4 = sub_2685689E0();
  v5 = sub_268568DE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 424);
    v33 = *(v0 + 408);
    OUTLINED_FUNCTION_4();
    v7 = OUTLINED_FUNCTION_7_1();
    v34 = v7;
    *v1 = 136315138;
    *(v0 + 184) = v6;
    v8 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v9 = sub_268568B70();
    v11 = sub_2684EABEC(v9, v10, &v34);

    *(v1 + 4) = v11;
    OUTLINED_FUNCTION_17_5(&dword_2684CA000, v12, v13, "RNPromptStrategy makePromptForValue | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v14 = OUTLINED_FUNCTION_34();
    v33(v14);
  }

  else
  {
    v15 = *(v0 + 408);

    v16 = OUTLINED_FUNCTION_34();
    v15(v16);
  }

  v17 = *(v0 + 424);
  v19 = *(v0 + 248);
  v18 = *(v0 + 256);
  v20 = *(v0 + 232);
  v21 = *(v0 + 240);
  v23 = *(v0 + 216);
  v22 = *(v0 + 224);
  sub_268567990();
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_268567A20();
  (*(v19 + 104))(v18, *MEMORY[0x277D5BB20], v21);
  (*(v22 + 104))(v20, *MEMORY[0x277D5B8D8], v23);
  *(v0 + 176) = v17;
  v24 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
  sub_268568B70();
  v25 = OUTLINED_FUNCTION_7_9();
  sub_2684EBB74(v25, v26, v18, v20, 8, v27, v28, 0, v31, v32);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  OUTLINED_FUNCTION_19_2();
  swift_willThrow();

  OUTLINED_FUNCTION_9_1();

  return v29();
}

uint64_t sub_2684F9DD0()
{
  OUTLINED_FUNCTION_5();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_2685689F0();
  v1[10] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v1[11] = v4;
  v1[12] = OUTLINED_FUNCTION_39();
  v5 = sub_268567D90();
  v1[13] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v1[14] = v6;
  v1[15] = OUTLINED_FUNCTION_39();
  v7 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2684F9EC0()
{
  OUTLINED_FUNCTION_5();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_2684F9F58;

  return sub_26850D6EC();
}

uint64_t sub_2684F9F58()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  *(v4 + 136) = v0;

  if (v0)
  {
    v5 = sub_2684FA198;
  }

  else
  {
    v5 = sub_2684FA05C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2684FA05C()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1((*(v0 + 72) + 24), *(*(v0 + 72) + 48));
  sub_268567A90();
  v5 = sub_2685680C0();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v6 = MEMORY[0x277D5C1D8];
  v4[3] = v5;
  v4[4] = v6;
  __swift_allocate_boxed_opaque_existential_0(v4);
  sub_268567BC0();
  sub_2684EB7C8(v0 + 16, &qword_280282F30, &qword_26856DAD0);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_9_1();

  return v7();
}

uint64_t sub_2684FA198()
{
  v24 = v0;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v2 = v0[17];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = __swift_project_value_buffer(v5, qword_28028B348);
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_2685689E0();
  LOBYTE(v4) = sub_268568DE0();

  if (os_log_type_enabled(v8, v4))
  {
    v9 = v0[17];
    OUTLINED_FUNCTION_4();
    v10 = OUTLINED_FUNCTION_7_1();
    v23 = v10;
    *v1 = 136315138;
    v0[7] = v9;
    v11 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v12 = sub_268568B70();
    v14 = sub_2684EABEC(v12, v13, &v23);

    *(v1 + 4) = v14;
    OUTLINED_FUNCTION_17_5(&dword_2684CA000, v15, v16, "RNPromptStrategy makeFlowCancelledResponse | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v17 = OUTLINED_FUNCTION_34();
    v18(v17);
  }

  else
  {

    v19 = OUTLINED_FUNCTION_34();
    v20(v19);
  }

  swift_willThrow();

  OUTLINED_FUNCTION_9_1();

  return v21();
}

uint64_t sub_2684FA390()
{
  OUTLINED_FUNCTION_5();
  v0[3] = v1;
  v2 = sub_2685689F0();
  v0[4] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v0[5] = v3;
  v0[6] = OUTLINED_FUNCTION_39();
  v4 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2684FA434()
{
  v24 = v0;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = __swift_project_value_buffer(v4, qword_28028B348);
  (*(v3 + 16))(v2, v6, v4);
  v7 = v5;
  v8 = sub_2685689E0();
  LOBYTE(v3) = sub_268568DE0();

  if (os_log_type_enabled(v8, v3))
  {
    v9 = v0[3];
    OUTLINED_FUNCTION_4();
    v10 = OUTLINED_FUNCTION_7_1();
    v23 = v10;
    *v1 = 136315138;
    v0[2] = v9;
    v11 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v12 = sub_268568B70();
    v14 = sub_2684EABEC(v12, v13, &v23);

    *(v1 + 4) = v14;
    OUTLINED_FUNCTION_17_5(&dword_2684CA000, v15, v16, "RNPromptStrategy makeErrorResponse | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  v17 = OUTLINED_FUNCTION_34();
  v18(v17);
  v19 = v0[3];
  swift_willThrow();
  v20 = v19;

  OUTLINED_FUNCTION_9_1();

  return v21();
}

uint64_t sub_2684FA604()
{
  sub_2685680B0();
  OUTLINED_FUNCTION_1();
  v96 = v1;
  v97 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7_5();
  v93 = (v2 - v3);
  v5 = MEMORY[0x28223BE20](v4);
  v95 = (&v93 - v6);
  MEMORY[0x28223BE20](v5);
  v99 = &v93 - v7;
  sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v100 = v9;
  v101 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_5();
  v98 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v93 - v13;
  v94 = type metadata accessor for NotificationNLv3Intent(0);
  OUTLINED_FUNCTION_17_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_5();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v93 - v20;
  v22 = sub_268568560();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5_5();
  v28 = v27 - v26;
  sub_268568080();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_5();
  v32 = v31 - v30;
  sub_268568030();
  v33 = OUTLINED_FUNCTION_29_2();
  v35 = v34(v33);
  if (v35 == *MEMORY[0x277D5C128])
  {
    v36 = OUTLINED_FUNCTION_29_2();
    v37(v36);
    (*(v24 + 32))(v28, v32, v22);
    v98 = v24;
    v99 = v22;
    (*(v24 + 16))(v21, v28, v22);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v38 = v101;
    v39 = __swift_project_value_buffer(v101, qword_28028B348);
    v40 = v100;
    (*(v100 + 16))(v14, v39, v38);
    sub_2684EB87C(v21, v18);
    v41 = sub_2685689E0();
    v42 = sub_268568DD0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_4();
      v97 = v28;
      v44 = v40;
      v45 = v43;
      v46 = swift_slowAlloc();
      v102 = v46;
      *v45 = 136315138;
      sub_2684FB88C();
      v47 = sub_268568310();
      v49 = v48;
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v18, v50);
      v51 = sub_2684EABEC(v47, v49, &v102);

      *(v45 + 4) = v51;
      _os_log_impl(&dword_2684CA000, v41, v42, "RNPromptStrategy parseInput | nlv3 parsed intent: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v44 + 8))(v14, v101);
    }

    else
    {

      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v18, v71);
      (*(v40 + 8))(v14, v38);
    }

    if (sub_26852BA90() || (sub_26852B6A4() & 1) != 0)
    {
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v21, v72);
      v73 = OUTLINED_FUNCTION_13_7();
      v74(v73);
      return 0;
    }

    else if (sub_26852BAB4() & 1) != 0 || (sub_26852B998())
    {
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v21, v79);
      v80 = OUTLINED_FUNCTION_13_7();
      v81(v80);
      return 2;
    }

    else if (sub_26852B5A8())
    {
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v21, v83);
      v84 = OUTLINED_FUNCTION_13_7();
      v85(v84);
      return 3;
    }

    else if (sub_26852B7A4())
    {
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v21, v86);
      v87 = OUTLINED_FUNCTION_13_7();
      v88(v87);
      return 4;
    }

    else
    {
      v89 = sub_26852B8AC();
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v21, v90);
      v91 = OUTLINED_FUNCTION_13_7();
      v92(v91);
      if (v89)
      {
        return 1;
      }

      else
      {
        return 5;
      }
    }
  }

  else if (v35 == *MEMORY[0x277D5C160])
  {
    v52 = OUTLINED_FUNCTION_29_2();
    v53(v52);
    v54 = v96;
    v55 = v97;
    v56 = v99;
    (*(v96 + 32))(v99, v32, v97);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v57 = v101;
    v58 = __swift_project_value_buffer(v101, qword_28028B348);
    v59 = v100;
    v60 = v98;
    (*(v100 + 16))(v98, v58, v57);
    v61 = *(v54 + 16);
    v62 = v95;
    v61(v95, v56, v55);
    v63 = sub_2685689E0();
    v64 = sub_268568DD0();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = OUTLINED_FUNCTION_4();
      v94 = swift_slowAlloc();
      v102 = v94;
      *v65 = 136315138;
      v61(v93, v62, v55);
      v66 = sub_268568B70();
      v68 = v67;
      v69 = OUTLINED_FUNCTION_23_2();
      v62(v69);
      v70 = sub_2684EABEC(v66, v68, &v102);
      v56 = v99;

      *(v65 + 4) = v70;
      _os_log_impl(&dword_2684CA000, v63, v64, "RNPromptStrategy parseInput | uso parse: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v94);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v59 + 8))(v98, v101);
    }

    else
    {

      v78 = OUTLINED_FUNCTION_23_2();
      v62(v78);
      (*(v59 + 8))(v60, v101);
    }

    v75 = sub_2684FADF8(v56);
    (v62)(v56, v55);
  }

  else
  {
    v76 = OUTLINED_FUNCTION_29_2();
    v77(v76);
    return 5;
  }

  return v75;
}

uint64_t sub_2684FADF8(uint64_t a1)
{
  sub_2685679B0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_5();
  sub_268567B60();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_5();
  v4 = sub_2685680B0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_5();
  v10 = v9 - v8;
  v11 = type metadata accessor for NotificationNLv4Intent(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_5();
  v15 = v14 - v13;
  v16 = *(v6 + 16);
  v16(v10, a1, v4);
  v16(v15, v10, v4);
  sub_268568550();
  v17 = sub_26850CCFC();
  (*(v6 + 8))(v10, v4);
  *(v15 + *(v12 + 28)) = v17;
  sub_2685683B0();
  if (v77)
  {
    v18 = sub_268568430();
    if (OUTLINED_FUNCTION_25_1(v18))
    {

LABEL_6:
      sub_268567990();
      OUTLINED_FUNCTION_11_6();
      v19 = OUTLINED_FUNCTION_8_6();
      v20(v19);
      v21 = OUTLINED_FUNCTION_4_6();
      v22(v21);
      OUTLINED_FUNCTION_9_7();
      v30 = OUTLINED_FUNCTION_6_6(1u, v23, v24, v25, v26, v27, v28, v29, v74, v75);
      OUTLINED_FUNCTION_12_7(v30);

      OUTLINED_FUNCTION_2_9();
      __swift_destroy_boxed_opaque_existential_0(v76);
      return 0;
    }
  }

  else
  {
    sub_2684EB7C8(v76, &qword_280282BE0, &unk_26856D8C0);
  }

  if (sub_268565808())
  {
    goto LABEL_6;
  }

  if (sub_26856596C() & 1) != 0 || (sub_268565954())
  {
    sub_268567990();
    OUTLINED_FUNCTION_11_6();
    v32 = OUTLINED_FUNCTION_8_6();
    v33(v32);
    v34 = OUTLINED_FUNCTION_4_6();
    v35(v34);
    v31 = 2;
    v75 = 2;
    v74 = 0;
  }

  else
  {
    if (sub_26856563C())
    {
      sub_268567990();
      OUTLINED_FUNCTION_11_6();
      v45 = OUTLINED_FUNCTION_8_6();
      v46(v45);
      v47 = OUTLINED_FUNCTION_4_6();
      v48(v47);
      OUTLINED_FUNCTION_9_7();
      v56 = OUTLINED_FUNCTION_6_6(4u, v49, v50, v51, v52, v53, v54, v55, v74, v75);
      OUTLINED_FUNCTION_12_7(v56);

      OUTLINED_FUNCTION_2_9();
      __swift_destroy_boxed_opaque_existential_0(v76);
      return 3;
    }

    sub_2685683B0();
    if (v77)
    {
      v57 = sub_268568440();
      if (OUTLINED_FUNCTION_25_1(v57))
      {

        sub_268567990();
        OUTLINED_FUNCTION_11_6();
        v58 = OUTLINED_FUNCTION_8_6();
        v59(v58);
        v60 = OUTLINED_FUNCTION_4_6();
        v61(v60);
        OUTLINED_FUNCTION_9_7();
        v69 = OUTLINED_FUNCTION_6_6(5u, v62, v63, v64, v65, v66, v67, v68, v74, v75);
        OUTLINED_FUNCTION_12_7(v69);

        OUTLINED_FUNCTION_2_9();
        __swift_destroy_boxed_opaque_existential_0(v76);
        return 4;
      }
    }

    else
    {
      sub_2684EB7C8(v76, &qword_280282BE0, &unk_26856D8C0);
    }

    if ((sub_268565820() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_9();
      return 5;
    }

    sub_268567990();
    OUTLINED_FUNCTION_11_6();
    v70 = OUTLINED_FUNCTION_8_6();
    v71(v70);
    v72 = OUTLINED_FUNCTION_4_6();
    v73(v72);
    OUTLINED_FUNCTION_9_7();
    v31 = 1;
  }

  v43 = OUTLINED_FUNCTION_6_6(1u, v36, v37, v38, v39, v40, v41, v42, v74, v75);
  OUTLINED_FUNCTION_12_7(v43);

  OUTLINED_FUNCTION_2_9();
  __swift_destroy_boxed_opaque_existential_0(v76);
  return v31;
}

uint64_t sub_2684FB338()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return v0;
}

uint64_t sub_2684FB368()
{
  sub_2684FB338();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_2684FB3C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2684FB45C;

  return sub_2684F8CEC(a2);
}

uint64_t sub_2684FB45C(char a1)
{
  OUTLINED_FUNCTION_9();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_2684FB560()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DB458;

  return sub_2684F8D74();
}

uint64_t sub_2684FB5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2684DB458;

  return MEMORY[0x2821B9D48](a1, a2, a3);
}

uint64_t sub_2684FB6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2684DB458;

  return MEMORY[0x2821B9D50](a1, a2, a3);
}

uint64_t sub_2684FB760()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DB128;

  return sub_2684F9DD0();
}

uint64_t sub_2684FB7F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DB458;

  return sub_2684FA390();
}

unint64_t sub_2684FB88C()
{
  result = qword_280282DF8;
  if (!qword_280282DF8)
  {
    type metadata accessor for NotificationNLv3Intent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282DF8);
  }

  return result;
}

unint64_t sub_2684FB8E4()
{
  result = qword_280282F38;
  if (!qword_280282F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282F38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RNPromptStrategyErrors(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2684FB9D4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2684FBA10()
{
  result = qword_280282F40;
  if (!qword_280282F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282F40);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_9()
{

  return sub_2684EB8E0(v0, type metadata accessor for NotificationNLv4Intent);
}

uint64_t OUTLINED_FUNCTION_6_6(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10)
{

  return sub_2684EBB74(a1, 9, v11, v10, 8, 0, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_11_6()
{
  __swift_project_boxed_opaque_existential_1((v0 - 120), *(v0 - 96));

  return sub_268567A20();
}

uint64_t OUTLINED_FUNCTION_12_7(uint64_t a1)
{

  return sub_2685679A0();
}

void OUTLINED_FUNCTION_17_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_25_1(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_2684FBC80(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_2685688F0();
  MEMORY[0x28223BE20](v6 - 8);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_2684D57FC(a1, v2 + 32);
  sub_2684D57FC(a1 + 40, v2 + 72);
  type metadata accessor for UnsupportedNotificationsCATs(0);
  sub_2685688E0();
  sub_2685686F0();
  sub_2684D57FC(v2 + 72, v10);
  sub_2685685F0();
  v7 = sub_2685685D0();
  sub_268516318(v10, v7);

  __swift_destroy_boxed_opaque_existential_0(v10);
  v8 = sub_268568710();
  sub_2684CC8D4(a1);
  *(v3 + 112) = v8;
  *(v3 + 120) = a2;
  return v3;
}

uint64_t sub_2684FBDB4()
{
  OUTLINED_FUNCTION_5();
  v1[14] = v0;
  v2 = sub_2685679B0();
  v1[15] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[16] = v3;
  v1[17] = swift_task_alloc();
  v4 = sub_268567B60();
  v1[18] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[19] = v5;
  v1[20] = swift_task_alloc();
  v6 = sub_268567D90();
  v1[21] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[22] = v7;
  v1[23] = swift_task_alloc();
  v8 = sub_2685689F0();
  v1[24] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[25] = v9;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2684FBF70, 0, 0);
}

uint64_t sub_2684FBF70()
{
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v4 = __swift_project_value_buffer(v2, qword_28028B348);
  v0[28] = v4;
  v5 = *(v3 + 16);
  v0[29] = v5;
  v0[30] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = sub_2685689E0();
  v7 = sub_268568DC0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = *(v9 + 120);

    _os_log_impl(&dword_2684CA000, v6, v7, "RNReplyFollowupAction run | presented unsupported dialog for isWatchSupported: %{BOOL}d when user attempted to reply to a notification", v10, 8u);
    OUTLINED_FUNCTION_2();
  }

  else
  {
  }

  v11 = v0[27];
  v12 = v0[24];
  v13 = v0[25];
  v14 = v0[14];
  v15 = *(v13 + 8);
  v0[31] = v15;
  v0[32] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v11, v12);
  v16 = *(v14 + 120);
  v17 = swift_task_alloc();
  v0[33] = v17;
  *v17 = v0;
  v17[1] = sub_2684FC14C;
  v18 = v0[23];

  return sub_268532D40(v18, v16);
}

uint64_t sub_2684FC14C()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  *(v4 + 272) = v0;

  if (v0)
  {
    v5 = sub_2684FC5DC;
  }

  else
  {
    v5 = sub_2684FC254;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2684FC254()
{
  v1 = v0[14];
  v2 = sub_26851C004(v0[23], v1 + 9, 0);
  v0[35] = v2;
  v3 = v1[7];
  v4 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
  v5 = swift_task_alloc();
  v0[36] = v5;
  v6 = sub_2684E0120();
  *v5 = v0;
  v5[1] = sub_2684FC344;

  return MEMORY[0x2821BB6A0](v2, v3, v6, v4);
}

uint64_t sub_2684FC344()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 296) = v0;

  if (v0)
  {
    v7 = sub_2684FC818;
  }

  else
  {

    v7 = sub_2684FC454;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void *sub_2684FCA7C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  return v0;
}

uint64_t sub_2684FCAB4()
{
  sub_2684FCA7C();

  return MEMORY[0x2821FE8D8](v0, 121, 7);
}

uint64_t sub_2684FCB0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DFF1C;

  return sub_2684FBDB4();
}

uint64_t sub_2684FCC24(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RNReplyFollowupAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_10(uint64_t a1)
{

  return sub_268567990();
}

uint64_t OUTLINED_FUNCTION_4_7()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_6_7(unsigned int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10)
{

  return sub_2684EBB74(a1, a2, v11, v10, 8, a6, a7, 0, a9, a10);
}

id OUTLINED_FUNCTION_15_4(float a1)
{
  *v3 = a1;
  *(v2 + 104) = v1;

  return v1;
}

void *sub_2684FCDCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2685688F0();
  MEMORY[0x28223BE20](v6 - 8);
  v2[3] = 0;
  v2[2] = 0;
  v7 = v2 + 2;
  sub_2684D57FC(a2, (v2 + 4));
  sub_2684D57FC(a2 + 40, (v2 + 9));
  type metadata accessor for ReadNotificationsCATs(0);
  sub_2685688E0();
  sub_2685686F0();
  sub_2684D57FC((v2 + 9), v13);
  sub_2685685F0();
  v8 = sub_2685685D0();
  sub_268516318(v13, v8);

  __swift_destroy_boxed_opaque_existential_0(v13);
  v2[14] = sub_268568710();
  v2[15] = a1;
  sub_2684CC878(a2, (v2 + 16));
  sub_2684CC878(a2, v13);
  type metadata accessor for RNReadNotificationAction();
  swift_allocObject();

  v10 = sub_26851C2B8(v9, v13);
  sub_2684CC8D4(a2);
  v11 = sub_2684FDFA0(&qword_280282F68, 255, type metadata accessor for RNReadNotificationAction, &unk_26856DA50);
  swift_beginAccess();
  *v7 = v10;
  v3[3] = v11;
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_2684FCFAC()
{
  v1[3] = v0;
  v2 = sub_268568810();
  v1[4] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[5] = v3;
  v1[6] = swift_task_alloc();
  v4 = sub_268567D90();
  v1[7] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[8] = v5;
  v1[9] = swift_task_alloc();
  v6 = sub_2685689F0();
  v1[10] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[11] = v7;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2684FD124, 0, 0);
}

uint64_t sub_2684FD124()
{
  v40 = v0;
  v1 = *(v0[3] + 120);
  sub_2684F42A8();
  v3 = v2;
  v4 = sub_2684F4060();
  if (*(v4 + 16))
  {
    v5 = *(v4 + 32);

    v1 = sub_2684DEAF0(v5);

    if (qword_280282960 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v6 = v1;
  v7 = v0[14];
  v8 = v0[10];
  v9 = v0[11];
  v10 = __swift_project_value_buffer(v8, qword_28028B348);
  v0[15] = v10;
  v11 = *(v9 + 16);
  v0[16] = v11;
  v0[17] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v7, v10, v8);

  v12 = sub_2685689E0();
  v13 = sub_268568DC0();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[14];
  v17 = v0[10];
  v16 = v0[11];
  if (v14)
  {
    swift_slowAlloc();
    v39 = OUTLINED_FUNCTION_6_8();
    *v15 = 136315394;
    v18 = MEMORY[0x26D61BE70](v3, MEMORY[0x277D837D0]);
    v20 = sub_2684EABEC(v18, v19, &v39);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v6;
    OUTLINED_FUNCTION_21_0();
    _os_log_impl(v21, v22, v23, v24, v25, 0x16u);
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_2();

    v26 = *(v16 + 8);
    v26(v15, v17);
  }

  else
  {

    v26 = *(v16 + 8);
    v26(v15, v17);
  }

  v0[18] = v26;
  v27 = *(v3 + 16);
  if (v27)
  {
    v28 = v0[5];
    v39 = MEMORY[0x277D84F90];
    sub_2684DD000(0, v27, 0);
    v29 = v3;
    v30 = v39;
    v31 = v29 + 40;
    do
    {

      sub_268568BB0();

      v39 = v30;
      v33 = *(v30 + 16);
      v32 = *(v30 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2684DD000((v32 > 1), v33 + 1, 1);
        v30 = v39;
      }

      v34 = v0[6];
      v35 = v0[4];
      *(v30 + 16) = v33 + 1;
      (*(v28 + 32))(v30 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v33, v34, v35);
      v31 += 16;
      --v27;
    }

    while (v27);
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  v0[19] = v30;
  v36 = swift_task_alloc();
  v0[20] = v36;
  *v36 = v0;
  v36[1] = sub_2684FD4B4;
  v37 = v0[9];

  return sub_26850DA30(v37, v30, *&v6, 0);
}

uint64_t sub_2684FD4B4()
{
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {
    v4 = sub_2684FD95C;
  }

  else
  {
    v4 = sub_2684FD5E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2684FD5E4()
{
  v1 = v0[3];
  v2 = sub_26851C004(v0[9], v1 + 9, 0);
  v0[22] = v2;
  v3 = v1[7];
  v4 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
  v5 = swift_task_alloc();
  v0[23] = v5;
  v6 = sub_2684E0120();
  *v5 = v0;
  v5[1] = sub_2684FD6D4;

  return MEMORY[0x2821BB6A0](v2, v3, v6, v4);
}

uint64_t sub_2684FD6D4(void *a1)
{
  OUTLINED_FUNCTION_9_8();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_9_8();
  *v7 = v6;
  *(v8 + 192) = v1;

  if (v1)
  {
    v9 = sub_2684FDB04;
  }

  else
  {

    v9 = sub_2684FD7E8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2684FD7E8()
{
  (*(v0 + 128))(*(v0 + 104), *(v0 + 120), *(v0 + 80));
  v1 = sub_2685689E0();
  v2 = sub_268568DC0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2684CA000, v1, v2, "RNReadAppDescriptionAction run | read app description", v3, 2u);
    OUTLINED_FUNCTION_2();
  }

  v4 = *(v0 + 176);
  v5 = *(v0 + 144);
  v6 = *(v0 + 104);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);

  v5(v6, v7);
  (*(v9 + 8))(v8, v10);

  OUTLINED_FUNCTION_9_1();

  return v11();
}

uint64_t sub_2684FD95C()
{
  v26 = v0;
  v3 = v0[21];
  v4 = OUTLINED_FUNCTION_4_8();
  v5(v4);
  v6 = v3;
  v7 = sub_2685689E0();
  v8 = sub_268568DE0();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_3_8();
    v25 = OUTLINED_FUNCTION_6_8();
    OUTLINED_FUNCTION_10_3(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v9 = sub_268568B70();
    v11 = sub_2684EABEC(v9, v10, &v25);

    *(v2 + 4) = v11;
    OUTLINED_FUNCTION_21_0();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_2();

    v17 = v24(v23, v1);
  }

  else
  {
    v18 = v0[18];
    v19 = v0[12];
    v20 = v0[10];

    v17 = v18(v19, v20);
  }

  OUTLINED_FUNCTION_7_10(v17);

  OUTLINED_FUNCTION_9_1();

  return v21();
}

uint64_t sub_2684FDB04()
{
  v29 = v0;
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 192);
  v7 = OUTLINED_FUNCTION_4_8();
  v8(v7);
  v9 = v6;
  v10 = sub_2685689E0();
  v11 = sub_268568DE0();

  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_3_8();
    v28 = OUTLINED_FUNCTION_6_8();
    OUTLINED_FUNCTION_10_3(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v12 = sub_268568B70();
    v14 = sub_2684EABEC(v12, v13, &v28);

    *(v2 + 4) = v14;
    OUTLINED_FUNCTION_21_0();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_2();

    v20 = v27(v26, v1);
  }

  else
  {
    v21 = *(v0 + 144);
    v22 = *(v0 + 96);
    v23 = *(v0 + 80);

    v20 = v21(v22, v23);
  }

  OUTLINED_FUNCTION_7_10(v20);

  OUTLINED_FUNCTION_9_1();

  return v24();
}

void *sub_2684FDCD4()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  sub_2684CC8D4(v0 + 128);
  return v0;
}

uint64_t sub_2684FDD1C()
{
  sub_2684FDCD4();

  return MEMORY[0x2821FE8D8](v0, 256, 7);
}

uint64_t sub_2684FDD74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684FDE00;

  return sub_2684FCFAC();
}

uint64_t sub_2684FDE00()
{
  v1 = *v0;
  OUTLINED_FUNCTION_9_8();
  *v2 = v1;

  OUTLINED_FUNCTION_9_1();

  return v3();
}

uint64_t sub_2684FDFA0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_1_7()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D61CB30);
}

uint64_t OUTLINED_FUNCTION_3_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_6_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_7_10(uint64_t a1)
{

  return swift_willThrow();
}

id OUTLINED_FUNCTION_10_3(float a1)
{
  *v3 = a1;
  *(v2 + 16) = v1;

  return v1;
}

uint64_t sub_2684FE12C()
{
  OUTLINED_FUNCTION_5();
  v1[24] = v0;
  v2 = sub_2685679B0();
  v1[25] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[26] = v3;
  v1[27] = swift_task_alloc();
  v4 = sub_268567B60();
  v1[28] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[29] = v5;
  v1[30] = swift_task_alloc();
  v6 = sub_2685689F0();
  v1[31] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[32] = v7;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2684FE2AC, 0, 0);
}

uint64_t sub_2684FE2AC(uint64_t a1)
{
  v2 = sub_268503B1C(a1);
  *(v1 + 296) = v2;
  if (!v2)
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    __swift_project_value_buffer(*(v1 + 248), qword_28028B348);
    v6 = OUTLINED_FUNCTION_12_2();
    v7(v6);
    v8 = sub_2685689E0();
    v9 = sub_268568DE0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2684CA000, v8, v9, "ANPlayNotificationSoundAction run | missing the next notification, not playing notification sound", v10, 2u);
      OUTLINED_FUNCTION_2();
    }

    v11 = *(v1 + 272);
    v12 = *(v1 + 248);
    v13 = *(v1 + 256);
    v15 = *(v1 + 232);
    v14 = *(v1 + 240);
    v16 = *(v1 + 216);
    v17 = *(v1 + 224);
    v18 = *(v1 + 208);
    v28 = *(v1 + 200);

    (*(v13 + 8))(v11, v12);
    sub_268567990();
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    sub_268567A20();
    (*(v15 + 104))(v14, *MEMORY[0x277D5BC00], v17);
    (*(v18 + 104))(v16, *MEMORY[0x277D5B8D0], v28);
    *(v1 + 336) = 1;
    sub_268568B70();
    v19 = OUTLINED_FUNCTION_1_8();
    sub_2684EBB74(v19, v20, v14, v16, 8, v21, v22, 0, v26, v27);
    sub_2685679A0();

    __swift_destroy_boxed_opaque_existential_0((v1 + 16));
    sub_2684FF3E4();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_3_9();

    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_59();

    __asm { BRAA            X1, X16 }
  }

  v3 = swift_task_alloc();
  *(v1 + 304) = v3;
  *v3 = v1;
  v3[1] = sub_2684FE59C;
  OUTLINED_FUNCTION_59();

  return sub_268503EE0();
}

uint64_t sub_2684FE59C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 338) = v3;

  return MEMORY[0x2822009F8](sub_2684FE694, 0, 0);
}

uint64_t sub_2684FE694()
{
  if (*(v0 + 338) == 1)
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    __swift_project_value_buffer(*(v0 + 248), qword_28028B348);
    v1 = OUTLINED_FUNCTION_12_2();
    v2(v1);
    v3 = sub_2685689E0();
    v4 = sub_268568DE0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2684CA000, v3, v4, "ANPlayNotificationSoundAction run | duplicate notification, not playing notification sound", v5, 2u);
      OUTLINED_FUNCTION_2();
    }

    v6 = *(v0 + 288);
    v7 = *(v0 + 248);
    v8 = *(v0 + 256);
    v9 = *(v0 + 232);
    v10 = *(v0 + 240);
    v11 = *(v0 + 216);
    v12 = *(v0 + 224);
    v13 = *(v0 + 208);
    v35 = *(v0 + 200);

    (*(v8 + 8))(v6, v7);
    sub_268567990();
    __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    sub_268567A20();
    (*(v9 + 104))(v10, *MEMORY[0x277D5BC00], v12);
    (*(v13 + 104))(v11, *MEMORY[0x277D5B8D0], v35);
    *(v0 + 337) = 0;
    sub_268568B70();
    v14 = OUTLINED_FUNCTION_1_8();
    sub_2684EBB74(v14, v15, v10, v11, 8, v16, v17, 0, v33, v34);
    sub_2685679A0();

    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    sub_2684FF3E4();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_3_9();

    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_59();

    __asm { BRAA            X1, X16 }
  }

  v21 = *(v0 + 192);
  v22 = [objc_allocWithZone(MEMORY[0x277D47AE8]) init];
  *(v0 + 312) = v22;

  v23 = sub_268568B10();

  [v22 setNotificationId_];

  v24 = sub_268568B20();
  sub_2684FF438(v24, v25, v22);
  __swift_project_boxed_opaque_existential_1((v21 + 40), *(v21 + 64));
  v26 = swift_task_alloc();
  *(v0 + 320) = v26;
  sub_2684E0120();
  *v26 = v0;
  v26[1] = sub_2684FEA2C;
  OUTLINED_FUNCTION_59();

  return MEMORY[0x2821BB6A0](v27, v28, v29, v30);
}

uint64_t sub_2684FEA2C()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_9_8();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v7 = v6;
  *(v8 + 328) = v0;

  if (v0)
  {
    v9 = sub_2684FED9C;
  }

  else
  {

    v9 = sub_2684FEB3C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2684FEB3C()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(v0[31], qword_28028B348);
  v1 = OUTLINED_FUNCTION_12_2();
  v2(v1);
  v3 = sub_2685689E0();
  v4 = sub_268568DC0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2684CA000, v3, v4, "PlayNotificationSoundAction run | played notification sound", v5, 2u);
    OUTLINED_FUNCTION_2();
  }

  v21 = v0[39];
  v6 = v0[35];
  v7 = v0[32];
  v8 = v0[30];
  v9 = v0[31];
  v10 = v0[28];
  v11 = v0[29];
  v13 = v0[26];
  v12 = v0[27];
  v20 = v0[25];

  (*(v7 + 8))(v6, v9);
  sub_268567990();
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  sub_268567A20();
  (*(v11 + 104))(v8, *MEMORY[0x277D5BC10], v10);
  (*(v13 + 104))(v12, *MEMORY[0x277D5B950], v20);
  v14 = OUTLINED_FUNCTION_1_8();
  sub_2684EBB74(v14, v15, v8, v12, 8, 0, 0, 0, v18, v19);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  OUTLINED_FUNCTION_9_1();

  return v16();
}

uint64_t sub_2684FED9C()
{
  v40 = v0;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v1 = v0[41];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];
  v5 = __swift_project_value_buffer(v4, qword_28028B348);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2685689E0();
  v8 = sub_268568DE0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[41];
    v11 = v0[32];
    v10 = v0[33];
    v12 = v0[31];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v14;
    *v13 = 136315138;
    v0[23] = v9;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v16 = sub_268568B70();
    v18 = sub_2684EABEC(v16, v17, &v39);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2684CA000, v7, v8, "ANPlayNotificationSoundAction run | error: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v20 = v0[32];
    v19 = v0[33];
    v21 = v0[31];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[41];
  v38 = v0[39];
  v24 = v0[29];
  v23 = v0[30];
  v25 = v0[27];
  v26 = v0[28];
  v28 = v0[25];
  v27 = v0[26];
  sub_268567990();
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_268567A20();
  (*(v24 + 104))(v23, *MEMORY[0x277D5BC00], v26);
  (*(v27 + 104))(v25, *MEMORY[0x277D5B8D0], v28);
  v0[22] = v22;
  v29 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
  sub_268568B70();
  v30 = OUTLINED_FUNCTION_1_8();
  sub_2684EBB74(v30, v31, v23, v25, 8, v32, v33, 0, v36, v37);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  swift_willThrow();

  OUTLINED_FUNCTION_3_9();

  OUTLINED_FUNCTION_9_1();

  return v34();
}

uint64_t sub_2684FF11C(char a1)
{
  sub_268569260();
  MEMORY[0x26D61C3F0](a1 & 1);
  return sub_268569280();
}

uint64_t sub_2684FF1A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684FF230;

  return sub_2684FE12C();
}

uint64_t sub_2684FF230()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_9_8();
  *v2 = v1;

  OUTLINED_FUNCTION_9_1();

  return v3();
}

uint64_t sub_2684FF3A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ANPlayNotificationSoundAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2684FF3E4()
{
  result = qword_280282F80;
  if (!qword_280282F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282F80);
  }

  return result;
}

void sub_2684FF438(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268568B10();

  [a3 setNotificationType_];
}

uint64_t getEnumTagSinglePayload for ANPlayNotificationSoundAction.ANPlayNotificationSoundActionErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ANPlayNotificationSoundAction.ANPlayNotificationSoundActionErrors(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2684FF5F0);
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

unint64_t sub_2684FF638()
{
  result = qword_280282F90;
  if (!qword_280282F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282F90);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_9()
{
}

uint64_t sub_2684FF6C4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = v40 - v6;
  v7 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (v40 - v14);
  sub_268568910();

  v40[3] = a1;
  sub_268568900();
  v16 = sub_268567D70();

  if (!v16)
  {
LABEL_14:

    if (qword_280282960 != -1)
    {
LABEL_33:
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v28 = __swift_project_value_buffer(v7, qword_28028B348);
    (*(v9 + 16))(v15, v28, v7);
    v29 = sub_2685689E0();
    v30 = sub_268568DC0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2684CA000, v29, v30, "SirikitApp unsuccessfully instantiated, since SAAppInfoFactory was unable to create the app info", v31, 2u);
      MEMORY[0x26D61CB30](v31, -1, -1);
    }

    (*(v9 + 8))(v15, v7);
    return 0;
  }

  v40[1] = v2;
  v40[2] = a2;
  v17 = sub_268500310(v16);
  if (!v17)
  {

    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v32 = __swift_project_value_buffer(v7, qword_28028B348);
    (*(v9 + 16))(v13, v32, v7);
    v33 = sub_2685689E0();
    v34 = sub_268568DC0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2684CA000, v33, v34, "SirikitApp unsuccessfully instantiated, since appInfo does not contain app name map", v35, 2u);
      MEMORY[0x26D61CB30](v35, -1, -1);
    }

    (*(v9 + 8))(v13, v7);
    return 0;
  }

  v18 = v17;
  v19 = *(v17 + 16);
  if (v19)
  {
    v40[0] = v16;
    v48 = MEMORY[0x277D84F90];
    sub_268569040();
    v21 = sub_268500374(v18);
    v22 = v18 + 64;
    v23 = v19 - 1;
    v41 = v18 + 64;
    v24 = v42;
    if ((v21 & 0x8000000000000000) == 0)
    {
      while (v21 < 1 << *(v18 + 32))
      {
        if ((*(v22 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if (v20 != *(v18 + 36))
        {
          goto LABEL_29;
        }

        v45 = 1 << v21;
        v46 = v21 >> 6;
        v43 = v23;
        v44 = v20;
        v25 = (*(v18 + 56) + 16 * v21);
        v9 = v25[1];
        v47 = *v25;
        sub_268568890();
        swift_allocObject();

        sub_268568880();
        sub_268568BB0();
        v26 = sub_268568810();
        __swift_storeEnumTagSinglePayload(v24, 0, 1, v26);
        v7 = sub_268568860();

        v15 = &qword_280282AF0;
        sub_2684D199C(v24, &qword_280282AF0, &qword_26856A1E0);
        sub_268568BB0();
        __swift_storeEnumTagSinglePayload(v24, 0, 1, v26);
        sub_268568850();

        sub_2684D199C(v24, &qword_280282AF0, &qword_26856A1E0);
        sub_268568870();

        sub_268569020();
        sub_268569050();
        sub_268569060();
        sub_268569030();
        if (v21 >= -(-1 << *(v18 + 32)))
        {
          goto LABEL_30;
        }

        v22 = v41;
        if ((*(v41 + 8 * v46) & v45) == 0)
        {
          goto LABEL_31;
        }

        if (v44 != *(v18 + 36))
        {
          goto LABEL_32;
        }

        v27 = sub_268568F50();
        if (!v43)
        {

          v16 = v40[0];
          goto LABEL_26;
        }

        v21 = v27;
        v20 = *(v18 + 36);
        v23 = v43 - 1;
        if (v27 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_26:
  sub_268568780();
  swift_allocObject();
  sub_268568770();
  v37 = v42;
  sub_268568BB0();

  v38 = sub_268568810();
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
  sub_268568760();

  sub_2684D199C(v37, &qword_280282AF0, &qword_26856A1E0);
  sub_268568750();

  v36 = sub_268568790();

  return v36;
}

uint64_t static SirikitApp.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_268568810();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282F98, qword_26856C420);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v31 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v31 - v21;
  v31[0] = a1;
  sub_268568740();
  v31[1] = a2;
  sub_268568740();
  v23 = *(v11 + 56);
  sub_2684D4298(v22, v13);
  sub_2684D4298(v20, &v13[v23]);
  OUTLINED_FUNCTION_2_11(v13);
  if (v24)
  {
    sub_2684D199C(v20, &qword_280282AF0, &qword_26856A1E0);
    sub_2684D199C(v22, &qword_280282AF0, &qword_26856A1E0);
    OUTLINED_FUNCTION_2_11(&v13[v23]);
    if (v24)
    {
      sub_2684D199C(v13, &qword_280282AF0, &qword_26856A1E0);
LABEL_12:
      v28 = sub_268568730();
      v29 = sub_268568730();
      v25 = sub_2685000C0(v28, v29);

      return v25 & 1;
    }

    goto LABEL_9;
  }

  sub_2684D4298(v13, v17);
  OUTLINED_FUNCTION_2_11(&v13[v23]);
  if (v24)
  {
    sub_2684D199C(v20, &qword_280282AF0, &qword_26856A1E0);
    sub_2684D199C(v22, &qword_280282AF0, &qword_26856A1E0);
    (*(v6 + 8))(v17, v4);
LABEL_9:
    sub_2684D199C(v13, &qword_280282F98, qword_26856C420);
    goto LABEL_10;
  }

  (*(v6 + 32))(v9, &v13[v23], v4);
  sub_268500294();
  v26 = sub_268568B00();
  v27 = *(v6 + 8);
  v27(v9, v4);
  sub_2684D199C(v20, &qword_280282AF0, &qword_26856A1E0);
  sub_2684D199C(v22, &qword_280282AF0, &qword_26856A1E0);
  v27(v17, v4);
  sub_2684D199C(v13, &qword_280282AF0, &qword_26856A1E0);
  if (v26)
  {
    goto LABEL_12;
  }

LABEL_10:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_2685000C0(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_2685690A0();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != result)
  {
    v19 = 0;
    return v19 & 1;
  }

  if (!v5)
  {
    goto LABEL_30;
  }

  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
  v21 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 < 0)
  {
    v7 = v3;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v20 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_30:
    v19 = 1;
    return v19 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = sub_2685688A0();
    v22 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = v5;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v5 = sub_2685690A0();
        goto LABEL_3;
      }

      if (v11)
      {
        v17 = MEMORY[0x26D61C170](v13 - 4, v22);
        if (v12)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v15 >= *(v21 + 16))
        {
          goto LABEL_33;
        }

        v17 = *(v22 + 8 * v13);

        if (v12)
        {
LABEL_21:
          v18 = MEMORY[0x26D61C170](v13 - 4, a2);
          goto LABEL_26;
        }
      }

      if (v15 >= *(v20 + 16))
      {
        goto LABEL_34;
      }

      v18 = *(a2 + 8 * v13);

LABEL_26:
      v19 = static SirikitLocalizedAppName.== infix(_:_:)(v17, v18);

      if (v19)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v19 & 1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_268500294()
{
  result = qword_280282FA0;
  if (!qword_280282FA0)
  {
    sub_268568810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282FA0);
  }

  return result;
}

uint64_t sub_268500310(void *a1)
{
  v1 = [a1 appNameMap];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268568AB0();

  return v3;
}

uint64_t sub_2685003D8(uint64_t a1)
{
  result = sub_268567E60();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for AppPromptFlow.State(319, *(a1 + 80), *(a1 + 88), v3);
    if (v5 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2685004B8(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = *v1;
  v3 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_5();
  v9 = v8 - v7;
  v10 = *(v2 + 80);
  v36 = *(v2 + 88);
  v12 = type metadata accessor for AppPromptFlow.State(0, v10, v36, v11);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_5();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v33 - v20;
  sub_268500BBC(&v33 - v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802830E0, &unk_26856C5A0);
    OUTLINED_FUNCTION_17_2();
    (*(v22 + 32))(v37, v21);
  }

  else
  {
    v35 = v10;
    (*(v14 + 8))(v21, v12);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v23 = __swift_project_value_buffer(v3, qword_28028B348);
    (*(v5 + 16))(v9, v23, v3);

    v24 = sub_2685689E0();
    v25 = sub_268568DE0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38 = v34;
      *v26 = 136315138;
      sub_268500BBC(v18);
      swift_getWitnessTable();
      v27 = sub_268568B80();
      v29 = sub_2684EABEC(v27, v28, &v38);

      *(v26 + 4) = v29;
      _os_log_impl(&dword_2684CA000, v24, v25, "SkipPromptFlow exitValue | SkipPromptFlow is in an invalid state: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();
    }

    (*(v5 + 8))(v9, v3);
    type metadata accessor for AppPromptFlow.ContinuationPromptFlowError(0, v35, v36, v30);
    swift_getWitnessTable();
    v31 = swift_allocError();
    sub_268500BBC(v32);
    sub_268567D30();
  }
}

uint64_t sub_268500874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for AppPromptFlow.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v10 = sub_2685689F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_28028B348);
  (*(v11 + 16))(v13, v14, v10);

  v15 = sub_2685689E0();
  v16 = sub_268568DC0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v17;
    v32 = swift_slowAlloc();
    v33 = v32;
    *v17 = 136315138;
    v18 = *v5;
    v31 = v16;
    v19 = *(v18 + 120);
    swift_beginAccess();
    (*(v7 + 16))(v9, &v5[v19], v6);
    v20 = sub_2685019C0(v6);
    v21 = v6;
    v23 = v22;

    (*(v7 + 8))(v9, v21);
    v24 = sub_2684EABEC(v20, v23, &v33);

    v25 = v30;
    *(v30 + 1) = v24;
    v26 = v25;
    _os_log_impl(&dword_2684CA000, v15, v31, "SkipPromptFlow state | SkipPromptFlow transitioned to state %s", v25, 0xCu);
    v27 = v32;
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x26D61CB30](v27, -1, -1);
    MEMORY[0x26D61CB30](v26, -1, -1);
  }

  else
  {
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_268500BBC@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_10();
  v4 = *(v3 + 120);
  swift_beginAccess();
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_3_10();
  type metadata accessor for AppPromptFlow.State(0, v6, *(v5 + 88), v7);
  OUTLINED_FUNCTION_17_2();
  return (*(v8 + 16))(a1, v1 + v4);
}

uint64_t sub_268500C68(uint64_t a1)
{
  OUTLINED_FUNCTION_3_10();
  v4 = *(v3 + 120);
  swift_beginAccess();
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_3_10();
  v8 = type metadata accessor for AppPromptFlow.State(0, v6, *(v5 + 88), v7);
  v9 = *(v8 - 8);
  (*(v9 + 24))(v1 + v4, a1, v8);
  v10 = swift_endAccess();
  sub_268500874(v10, v11, v12, v13);
  return (*(v9 + 8))(a1, v8);
}

uint64_t sub_268500D60(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_4_9();
  type metadata accessor for AppPromptFlow(0, v3, *(v2 + 88), v4);
  swift_getWitnessTable();
  return sub_268567900();
}

uint64_t sub_268500DFC(uint64_t a1, uint64_t a2)
{
  v3[7] = a1;
  v3[8] = v2;
  OUTLINED_FUNCTION_4_9();
  v3[9] = *(v4 + 80);
  OUTLINED_FUNCTION_4_9();
  v6 = *(v5 + 88);
  v3[10] = v6;
  v9 = type metadata accessor for AppPromptFlow.State(0, v7, v6, v8);
  v3[11] = v9;
  v3[12] = *(v9 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268500EE8, 0, 0);
}

uint64_t sub_268500EE8()
{
  sub_268500BBC(v0[13]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = v0[12];
    v1 = v0[13];
    v3 = v0[11];
    sub_268567C40();
    (*(v2 + 8))(v1, v3);
  }

  else
  {
    v4 = v0[8];
    sub_2684D8314((v0[13] + 8), (v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_268567860();
    sub_268501044(v4);
    sub_268567C10();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_268501084(char *a1, uint64_t a2)
{
  v3 = v2;
  v90 = a1;
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_4_9();
  v94 = type metadata accessor for AppPromptFlow.State(0, v5, *(v4 + 88), v6);
  OUTLINED_FUNCTION_17_2();
  MEMORY[0x28223BE20](v7);
  v93 = &v80 - v8;
  sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v91 = v10;
  v92 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_5();
  v88 = v11 - v12;
  v14 = MEMORY[0x28223BE20](v13);
  v85 = &v80 - v15;
  MEMORY[0x28223BE20](v14);
  v83 = &v80 - v16;
  v89 = sub_268567E60();
  OUTLINED_FUNCTION_1();
  v87 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_5();
  v82 = v20 - v19;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802830C0, &qword_26856C588);
  OUTLINED_FUNCTION_17_2();
  MEMORY[0x28223BE20](v21);
  v23 = &v80 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802830C8, &qword_26856C590);
  MEMORY[0x28223BE20](v24 - 8);
  OUTLINED_FUNCTION_7_5();
  v84 = v25 - v26;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v80 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v80 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802830D0, &qword_26856C598);
  OUTLINED_FUNCTION_1();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v80 - v37;
  v39 = sub_268568010();
  OUTLINED_FUNCTION_1();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_5_5();
  v45 = v44 - v43;
  (*(v35 + 16))(v38, v90, v33);
  if ((*(v35 + 88))(v38, v33) == *MEMORY[0x277D5BC38])
  {
    (*(v35 + 96))(v38, v33);
    (*(v41 + 32))(v45, v38, v39);
    sub_268568000();
    v46 = v87;
    v47 = v89;
    (*(v87 + 16))(v30, v3 + qword_280282FA8, v89);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v47);
    v48 = *(v86 + 48);
    sub_268501E60(v32, v23);
    sub_268501E60(v30, &v23[v48]);
    OUTLINED_FUNCTION_8_7(v23);
    v88 = v3;
    v90 = v32;
    v49 = v41;
    v80 = v39;
    v81 = v45;
    if (v61)
    {
      sub_2684EB7C8(v30, &qword_2802830C8, &qword_26856C590);
      OUTLINED_FUNCTION_8_7(&v23[v48]);
      v50 = v92;
      if (v61)
      {
        sub_2684EB7C8(v23, &qword_2802830C8, &qword_26856C590);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = v84;
      sub_268501E60(v23, v84);
      OUTLINED_FUNCTION_8_7(&v23[v48]);
      if (!v61)
      {
        v70 = v82;
        (*(v46 + 32))(v82, &v23[v48], v47);
        sub_268501ED0();
        v71 = sub_268568B00();
        v72 = *(v46 + 8);
        v72(v70, v47);
        sub_2684EB7C8(v30, &qword_2802830C8, &qword_26856C590);
        v72(v60, v47);
        sub_2684EB7C8(v23, &qword_2802830C8, &qword_26856C590);
        v50 = v92;
        if (v71)
        {
LABEL_22:
          v62 = v91;
          if (qword_280282960 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_280282960);
          }

          v73 = __swift_project_value_buffer(v50, qword_28028B348);
          v64 = v83;
          (*(v62 + 16))(v83, v73, v50);
          v65 = sub_2685689E0();
          v74 = sub_268568DC0();
          if (!os_log_type_enabled(v65, v74))
          {
            v69 = 0;
            goto LABEL_28;
          }

          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_7_11(&dword_2684CA000, v75, v76, "SkipPromptFlow onResponse | User indicated that they want to read the next window.");
          v69 = 0;
          goto LABEL_26;
        }

LABEL_16:
        v62 = v91;
        if (qword_280282960 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_280282960);
        }

        v63 = __swift_project_value_buffer(v50, qword_28028B348);
        v64 = v85;
        (*(v62 + 16))(v85, v63, v50);
        v65 = sub_2685689E0();
        v66 = sub_268568DC0();
        if (!os_log_type_enabled(v65, v66))
        {
          v69 = 1;
LABEL_28:

          (*(v62 + 8))(v64, v50);
          v77 = v88;
          v78 = (*(v88 + qword_28028B370))(v69);
          (*(v77 + qword_28028B378))(v78);
          v79 = v93;
          sub_268567D20();
          swift_storeEnumTagMultiPayload();
          sub_268500C68(v79);
          sub_2684EB7C8(v90, &qword_2802830C8, &qword_26856C590);
          return (*(v49 + 8))(v81, v80);
        }

        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_7_11(&dword_2684CA000, v67, v68, "SkipPromptFlow onResponse | User indicated that they want to skip the next window.");
        v69 = 1;
LABEL_26:
        OUTLINED_FUNCTION_2();
        goto LABEL_28;
      }

      sub_2684EB7C8(v30, &qword_2802830C8, &qword_26856C590);
      (*(v46 + 8))(v60, v47);
      v50 = v92;
    }

    sub_2684EB7C8(v23, &qword_2802830C0, &qword_26856C588);
    goto LABEL_16;
  }

  (*(v35 + 8))(v38, v33);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v51 = v92;
  v52 = __swift_project_value_buffer(v92, qword_28028B348);
  v53 = v91;
  v54 = v88;
  (*(v91 + 16))(v88, v52, v51);
  v55 = sub_2685689E0();
  v56 = sub_268568DC0();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_2684CA000, v55, v56, "SkipPromptFlow onResponse | Received a response from the prompt flow but it did not contain a successful confirmation response. Will indicate to stop windowing.", v57, 2u);
    OUTLINED_FUNCTION_2();
  }

  (*(v53 + 8))(v54, v51);
  v95 = 1;
  v58 = v93;
  sub_268567D40();
  swift_storeEnumTagMultiPayload();
  return sub_268500C68(v58);
}

uint64_t sub_2685019C0(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 8))(v4, a1);
    return 0x6574656C706D6F63;
  }

  else
  {
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v4 + 1);
    return 0x6D6F7250646E6573;
  }
}

uint64_t *sub_268501AF8()
{
  v1 = *v0;
  v2 = qword_280282FA8;
  sub_268567E60();
  OUTLINED_FUNCTION_17_2();
  (*(v3 + 8))(v0 + v2);

  v4 = *(*v0 + 120);
  type metadata accessor for AppPromptFlow.State(0, *(v1 + 80), *(v1 + 88), v5);
  OUTLINED_FUNCTION_17_2();
  (*(v6 + 8))(v0 + v4);
  return v0;
}

uint64_t sub_268501BF0()
{
  sub_268501AF8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_268501C80(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802830B0, qword_26856C4E0);
  swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    sub_268501D28();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_268501D28()
{
  if (!qword_2802830B8)
  {
    v0 = sub_268567D60();
    if (!v1)
    {
      atomic_store(v0, &qword_2802830B8);
    }
  }
}

uint64_t sub_268501DA0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2684CEB80;

  return sub_268500DFC(a1, v3);
}

uint64_t sub_268501E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802830C8, &qword_26856C590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_268501ED0()
{
  result = qword_2802830D8;
  if (!qword_2802830D8)
  {
    sub_268567E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802830D8);
  }

  return result;
}

uint64_t sub_268501F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AppPromptFlow.State(319, *(a1 + 16), *(a1 + 24), a4);
  if (v6 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
    return 0;
  }

  return v5;
}

uint64_t sub_268502028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AppPromptFlow.State(0, *(a3 + 16), *(a3 + 24), a4);

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_268502074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AppPromptFlow.State(0, *(a4 + 16), *(a4 + 24), a4);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v7);
}

void OUTLINED_FUNCTION_7_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

id ANDirectInvocation.init(directInvocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v157 = a2;
  v3 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v154 = &v129 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v129 - v12);
  v14 = sub_2685675E0();
  OUTLINED_FUNCTION_1();
  v155 = v15;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v156 = &v129 - v20;
  v21 = type metadata accessor for ANDirectInvocation(0);
  MEMORY[0x28223BE20](v21);
  v153 = (&v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_268568050() == 0xD000000000000042 && 0x8000000268572340 == v23;
  if (v24)
  {
  }

  else
  {
    v25 = sub_2685691C0();

    if ((v25 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v26 = sub_268568060();
  if (!v26)
  {
LABEL_21:
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v41 = __swift_project_value_buffer(v3, qword_28028B348);
    (*(v5 + 16))(v9, v41, v3);
    v42 = sub_2685689E0();
    v43 = sub_268568DC0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2684CA000, v42, v43, "ANDirectInvocation unsuccessfully instantiated, missing non-optional values", v44, 2u);
      MEMORY[0x26D61CB30](v44, -1, -1);
    }

    sub_268568070();
    OUTLINED_FUNCTION_0_9();
    (*(v45 + 8))(a1);
    (*(v5 + 8))(v9, v3);
    v46 = 1;
    v47 = v157;
    return __swift_storeEnumTagSinglePayload(v47, v46, 1, v21);
  }

  v27 = v26;
  v28 = sub_268568B20();
  OUTLINED_FUNCTION_6_9(v28, v29);

  if (!v161)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_3_11();
  if ((OUTLINED_FUNCTION_7_12() & 1) == 0)
  {
LABEL_20:

    goto LABEL_21;
  }

  v152 = v14;
  v30 = v159;
  v150 = v158;
  v31 = sub_268568B20();
  OUTLINED_FUNCTION_6_9(v31, v32);

  if (!v161)
  {
LABEL_16:

LABEL_17:

    v38 = &qword_280282BE0;
    v39 = &unk_26856D8C0;
    v40 = v160;
LABEL_18:
    sub_26850341C(v40, v38, v39);
    goto LABEL_21;
  }

  v151 = v30;
  OUTLINED_FUNCTION_3_11();
  if ((OUTLINED_FUNCTION_7_12() & 1) == 0)
  {
LABEL_19:

    goto LABEL_20;
  }

  v33 = v159;
  v148 = v158;
  v34 = sub_268568B20();
  OUTLINED_FUNCTION_6_9(v34, v35);

  if (!v161)
  {

    sub_26850341C(v160, &qword_280282BE0, &unk_26856D8C0);
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v152);
    goto LABEL_28;
  }

  v149 = v33;
  v36 = v152;
  v37 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v13, v37 ^ 1u, 1, v36);
  if (__swift_getEnumTagSinglePayload(v13, 1, v36) == 1)
  {

LABEL_28:
    v38 = &qword_280282D40;
    v39 = &qword_26856B330;
    v40 = v13;
    goto LABEL_18;
  }

  v49 = v155;
  v146 = *(v155 + 32);
  v147 = v155 + 32;
  v146(v156, v13, v36);
  v50 = sub_268568B20();
  OUTLINED_FUNCTION_6_9(v50, v51);

  if (!v161)
  {
    (*(v49 + 8))(v156, v36);
LABEL_41:

    goto LABEL_16;
  }

  v52 = v36;
  v53 = sub_2684D16C0(0, &qword_280282BA8, 0x277CCABB0);
  OUTLINED_FUNCTION_3_11();
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v155 + 8))(v156, v36);
LABEL_43:

    goto LABEL_19;
  }

  v142 = v53;
  v54 = v158;
  v55 = [v158 integerValue];

  v56 = sub_268568B20();
  OUTLINED_FUNCTION_6_9(v56, v57);

  if (!v161)
  {
    (*(v155 + 8))(v156, v52);
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_3_11();
  if ((OUTLINED_FUNCTION_7_12() & 1) == 0)
  {
    (*(v155 + 8))(v156, v52);
    goto LABEL_43;
  }

  v140 = v158;
  v58 = sub_268568B20();
  OUTLINED_FUNCTION_5_10(v58, v59);

  if (v161)
  {
    OUTLINED_FUNCTION_3_11();
    OUTLINED_FUNCTION_7_12();
    OUTLINED_FUNCTION_2_12();
    v139 = v61;
    if (v24)
    {
      v62 = 0;
    }

    else
    {
      v62 = v60;
    }

    v145 = v62;
  }

  else
  {
    sub_26850341C(v160, &qword_280282BE0, &unk_26856D8C0);
    v139 = 0;
    v145 = 0;
  }

  v63 = sub_268568B20();
  OUTLINED_FUNCTION_5_10(v63, v64);

  if (v161)
  {
    OUTLINED_FUNCTION_3_11();
    OUTLINED_FUNCTION_7_12();
    OUTLINED_FUNCTION_2_12();
    v138 = v66;
    if (v24)
    {
      v67 = 0;
    }

    else
    {
      v67 = v65;
    }

    v144 = v67;
  }

  else
  {
    sub_26850341C(v160, &qword_280282BE0, &unk_26856D8C0);
    v138 = 0;
    v144 = 0;
  }

  v68 = sub_268568B20();
  OUTLINED_FUNCTION_5_10(v68, v69);

  if (v161)
  {
    OUTLINED_FUNCTION_3_11();
    OUTLINED_FUNCTION_7_12();
    OUTLINED_FUNCTION_2_12();
    v137 = v71;
    if (v24)
    {
      v72 = 0;
    }

    else
    {
      v72 = v70;
    }

    v143 = v72;
  }

  else
  {
    sub_26850341C(v160, &qword_280282BE0, &unk_26856D8C0);
    v137 = 0;
    v143 = 0;
  }

  v73 = sub_268568B20();
  OUTLINED_FUNCTION_5_10(v73, v74);

  if (v161)
  {
    OUTLINED_FUNCTION_3_11();
    OUTLINED_FUNCTION_7_12();
    OUTLINED_FUNCTION_2_12();
    v136 = v76;
    if (v24)
    {
      v77 = 0;
    }

    else
    {
      v77 = v75;
    }

    v141 = v77;
  }

  else
  {
    sub_26850341C(v160, &qword_280282BE0, &unk_26856D8C0);
    v136 = 0;
    v141 = 0;
  }

  v78 = sub_268568B20();
  OUTLINED_FUNCTION_5_10(v78, v79);

  if (v161)
  {
    OUTLINED_FUNCTION_3_11();
    if (swift_dynamicCast())
    {
      v80 = v158;
      v142 = [v158 integerValue];

      goto LABEL_68;
    }
  }

  else
  {
    sub_26850341C(v160, &qword_280282BE0, &unk_26856D8C0);
  }

  v142 = 0;
LABEL_68:
  v133 = v55;
  v81 = objc_opt_self();
  v82 = sub_26850310C(v27);

  v83 = sub_2685035CC(v82, v81);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v84 = __swift_project_value_buffer(v3, qword_28028B348);
  (*(v5 + 16))(v154, v84, v3);
  (*(v155 + 16))(v19, v156, v52);
  v132 = v83;
  v134 = v83;

  v85 = v145;

  v86 = v144;

  v87 = v143;

  v88 = v141;

  v135 = sub_2685689E0();
  v89 = sub_268568DD0();

  v143 = v87;
  v90 = v149;

  v144 = v86;

  v145 = v85;
  v91 = v151;

  v131 = v89;
  v92 = v89;
  v93 = v135;
  if (!os_log_type_enabled(v135, v92))
  {

    sub_268568070();
    OUTLINED_FUNCTION_0_9();
    (*(v116 + 8))(a1);
    v102 = v152;
    (*(v155 + 8))(v19, v152);
    (*(v5 + 8))(v154, v3);
    v47 = v157;
    v101 = v133;
    v108 = v132;
    goto LABEL_86;
  }

  v94 = swift_slowAlloc();
  v130 = swift_slowAlloc();
  v160[0] = v130;
  *v94 = 136317698;
  *(v94 + 4) = sub_2684EABEC(v150, v91, v160);
  *(v94 + 12) = 2080;
  *(v94 + 14) = sub_2684EABEC(v148, v90, v160);
  *(v94 + 22) = 2080;
  sub_2685036B0();
  v95 = v152;
  v96 = sub_2685691A0();
  (*(v155 + 8))(v19, v95);
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_8_8();
  *(v94 + 24) = v96;
  *(v94 + 32) = 2080;
  if (v145)
  {
    v97 = v139;
  }

  else
  {
    v97 = 0;
  }

  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_8_8();
  *(v94 + 34) = v97;
  *(v94 + 42) = 2080;
  if (v144)
  {
    v98 = v138;
  }

  else
  {
    v98 = 0;
  }

  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_8_8();
  *(v94 + 44) = v98;
  *(v94 + 52) = 2080;
  if (v143)
  {
    v99 = v137;
  }

  else
  {
    v99 = 0;
  }

  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_8_8();
  *(v94 + 54) = v99;
  *(v94 + 62) = 2080;
  if (v88)
  {
    v100 = v136;
  }

  else
  {
    v100 = 0;
  }

  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_8_8();
  *(v94 + 64) = v100;
  *(v94 + 72) = 2048;
  v101 = v133;
  *(v94 + 74) = v133;
  *(v94 + 82) = 1024;
  *(v94 + 84) = v140;
  *(v94 + 88) = 2080;
  result = AFSiriAnnouncementPlatformGetName();
  v102 = v152;
  if (result)
  {
    v103 = result;
    v104 = sub_268568B20();
    v106 = v105;

    v107 = sub_2684EABEC(v104, v106, v160);

    *(v94 + 90) = v107;
    *(v94 + 98) = 2080;
    v108 = v132;
    v158 = v132;
    v109 = v134;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283170, qword_26856C670);
    v110 = sub_268568B70();
    v112 = sub_2684EABEC(v110, v111, v160);

    *(v94 + 100) = v112;
    v113 = v135;
    _os_log_impl(&dword_2684CA000, v135, v131, "ANDirectInvocation instantiated with appBundleID: %s, notificationId: %s, notificationDate: %s, notificationTitle: %s, notificationSubtitle: %s, notificationBody: %s, notificationThreadId: %s), burstIndex: %ld, isSameTypeAsLastAnnouncement: %{BOOL}d, announcePlatform: %s, announcePayload: %s", v94, 0x6Cu);
    v114 = v130;
    swift_arrayDestroy();
    MEMORY[0x26D61CB30](v114, -1, -1);
    MEMORY[0x26D61CB30](v94, -1, -1);

    sub_268568070();
    OUTLINED_FUNCTION_0_9();
    (*(v115 + 8))(a1);
    (*(v5 + 8))(v154, v3);
    v47 = v157;
LABEL_86:
    v117 = v156;
    v118 = v153;
    v119 = v151;
    *v153 = v150;
    v118[1] = v119;
    v120 = v149;
    v118[2] = v148;
    v118[3] = v120;
    v146(v118 + v21[6], v117, v102);
    v121 = (v118 + v21[7]);
    v122 = v145;
    *v121 = v139;
    v121[1] = v122;
    v123 = (v118 + v21[8]);
    v124 = v144;
    *v123 = v138;
    v123[1] = v124;
    v125 = (v118 + v21[9]);
    v126 = v143;
    *v125 = v137;
    v125[1] = v126;
    v127 = (v118 + v21[10]);
    v128 = v141;
    *v127 = v136;
    v127[1] = v128;
    *(v118 + v21[11]) = v101;
    *(v118 + v21[12]) = v140;
    *(v118 + v21[13]) = v142;
    *(v118 + v21[14]) = v108;
    sub_26850364C(v118, v47);
    v46 = 0;
    return __swift_storeEnumTagSinglePayload(v47, v46, 1, v21);
  }

  __break(1u);
  return result;
}

double sub_2685030A0@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_2685034A0(a3, a4), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 32 * v6;

    sub_2684EB820(v8, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_26850310C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802831A0, &qword_26856C6B8);
    v2 = sub_2685690C0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

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
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_2684EB820(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2685039D0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2685039D0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2685039D0(v31, v32);
    result = sub_268568F60();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_2685039D0(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ANDirectInvocation(uint64_t a1)
{
  result = qword_280283178;
  if (!qword_280283178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26850341C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_9();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_268503470@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_2685034A0(uint64_t a1, uint64_t a2)
{
  sub_268569260();
  sub_268568C00();
  v4 = sub_268569280();

  return sub_268503518(a1, a2, v4);
}

unint64_t sub_268503518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2685691C0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

id sub_2685035CC(uint64_t a1, void *a2)
{
  v3 = sub_268568AA0();

  v4 = [a2 announcePayloadFromUserData_];

  return v4;
}

uint64_t sub_26850364C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ANDirectInvocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2685036B0()
{
  result = qword_280283168;
  if (!qword_280283168)
  {
    sub_2685675E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283168);
  }

  return result;
}

uint64_t sub_26850371C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2685675E0();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2685037B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2685675E0();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_268503838(uint64_t a1)
{
  sub_2685675E0();
  if (v1 <= 0x3F)
  {
    sub_268503918();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AFSiriAnnouncementPlatform(319);
      if (v3 <= 0x3F)
      {
        sub_268503968(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_268503918()
{
  if (!qword_280283188)
  {
    v0 = sub_268568EB0();
    if (!v1)
    {
      atomic_store(v0, &qword_280283188);
    }
  }
}

void sub_268503968(uint64_t a1)
{
  if (!qword_280283190)
  {
    sub_2684D16C0(255, &qword_280283198, 0x277D5C208);
    v1 = sub_268568EB0();
    if (!v2)
    {
      atomic_store(v1, &qword_280283190);
    }
  }
}

_OWORD *sub_2685039D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_10()
{

  return sub_2684EABEC(v1, v0, (v2 - 120));
}

double OUTLINED_FUNCTION_5_10(uint64_t a1, uint64_t a2)
{

  return sub_2685030A0(v2, (v3 - 120), a1, a2);
}

double OUTLINED_FUNCTION_6_9(uint64_t a1, uint64_t a2)
{

  return sub_2685030A0(v2, (v3 - 120), a1, a2);
}

uint64_t OUTLINED_FUNCTION_7_12()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_8()
{
}

void *sub_268503A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = 1;
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = a1;
  return v3;
}

uint64_t sub_268503AA4(uint64_t a1)
{
  OUTLINED_FUNCTION_1_9(a1);
  v2 = *(v1 + 40);
  sub_2684DEAFC();
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = MEMORY[0x26D61C170](0, v2);
  }

  else
  {
    v3 = *(v2 + 32);
  }

  return v3;
}

uint64_t sub_268503B1C(uint64_t a1)
{
  OUTLINED_FUNCTION_1_9(a1);
  v2 = *(v1 + 40);
  v3 = sub_2684DEAF0(v2);

  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return 0;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D61C170](i, v2);
      v6 = result;
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(v2 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if ((sub_268541460() & 1) == 0)
    {

      return v6;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_268503BF8(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_1_9(a1);
  v3 = *(v1 + 40);
  v4 = sub_2684DEAF0(v3);

  do
  {
    if (!v4)
    {
      goto LABEL_11;
    }

    if (__OFSUB__(v4--, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x26D61C170](v4, v3);
    }

    else
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v1 = *(v3 + 32 + 8 * v4);
    }

    v6 = sub_268541460();
  }

  while ((v6 & 1) == 0);

  v1 = *(v2 + 40);
  sub_2684DEAFC();
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_18:

    v4 = MEMORY[0x26D61C170](v4, v1);
LABEL_11:

    return v4;
  }

  v4 = *(v1 + 8 * v4 + 32);

  return v4;
}

void *sub_268503D28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = sub_2684DEAF0(v5);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_11:
    v21[0] = a1;
    v21[1] = a2;
    MEMORY[0x28223BE20](v6);
    v19[2] = v21;
    v18 = sub_26855B7B0(sub_2684F3570, v19, v7);

    return !v18;
  }

  v8 = v6;
  v21[0] = MEMORY[0x277D84F90];
  v9 = v6 & ~(v6 >> 63);

  result = sub_2684DCF68(0, v9, 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v20 = a2;
    v11 = 0;
    v7 = v21[0];
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26D61C170](v11, v5);
      }

      else
      {
        v12 = *(v5 + 8 * v11 + 32);
      }

      v14 = *(v12 + 32);
      v13 = *(v12 + 40);

      v21[0] = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2684DCF68((v15 > 1), v16 + 1, 1);
        v7 = v21[0];
      }

      ++v11;
      *(v7 + 16) = v16 + 1;
      v17 = v7 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
    }

    while (v8 != v11);

    a2 = v20;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_268503EE0()
{
  OUTLINED_FUNCTION_5();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_2685689F0();
  v1[5] = v3;
  v1[6] = *(v3 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v4 = type metadata accessor for ReadingRecord(0);
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_268504038()
{
  OUTLINED_FUNCTION_5();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_2685040D0;

  return sub_268559770(120.0);
}

uint64_t sub_2685040D0()
{
  OUTLINED_FUNCTION_5();
  *(*v0 + 144) = v1;

  v2 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2685041C4()
{
  v93 = v0;
  v1 = 0;
  v2 = v0[18];
  v3 = v0[15];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[3];
  v91 = *(v2 + 16);
  v7 = (v6 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title);
  v8 = (v6 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle);
  v88 = (v6 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body);
  while (v91 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_55;
    }

    v9 = v0[15];
    sub_2684E6980(v0[18] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v1, v9);
    v10 = *v9 == *(v6 + 16) && *(v3 + 8) == *(v6 + 24);
    if (!v10 && (sub_2685691C0() & 1) == 0)
    {
      v11 = v0[15];
      goto LABEL_37;
    }

    v11 = v0[15];
    v12 = (v11 + v5[6]);
    v13 = v12[1];
    v14 = v7[1];
    if (v13)
    {
      if (!v14)
      {
        goto LABEL_37;
      }

      if (*v12 != *v7 || v13 != v14)
      {
        v16 = sub_2685691C0();
        v11 = v0[15];
        if ((v16 & 1) == 0)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v14)
    {
      goto LABEL_37;
    }

    v17 = (v11 + v5[7]);
    v18 = v17[1];
    v19 = v8[1];
    if (v18)
    {
      if (!v19)
      {
        goto LABEL_37;
      }

      if (*v17 != *v8 || v18 != v19)
      {
        v21 = sub_2685691C0();
        v11 = v0[15];
        if ((v21 & 1) == 0)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v19)
    {
      goto LABEL_37;
    }

    v22 = (v11 + v5[8]);
    v23 = v22[1];
    v24 = v88[1];
    if (v23)
    {
      if (v24)
      {
        v25 = *v22 == *v88 && v23 == v24;
        if (v25 || (v26 = sub_2685691C0(), v11 = v0[15], (v26 & 1) != 0))
        {
LABEL_45:
          v40 = v0[16];

          sub_2684E6D48(v11, v40);
          if (qword_280282960 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_280282960);
          }

          v41 = v0[16];
          v42 = v0[14];
          v43 = v0[9];
          v44 = v0[5];
          v45 = v0[6];
          v46 = __swift_project_value_buffer(v44, qword_28028B348);
          v89 = *(v45 + 16);
          v89(v43, v46, v44);
          sub_2684E6980(v41, v42);

          v47 = sub_2685689E0();
          v48 = sub_268568DD0();

          v49 = os_log_type_enabled(v47, v48);
          v50 = v0[14];
          if (v49)
          {
            v81 = v0[13];
            v86 = v0[9];
            v83 = v0[6];
            v84 = v0[5];
            v51 = v0[3];
            v52 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            *v52 = 136315394;
            v0[2] = v51;
            type metadata accessor for AnnounceNotification(0);

            v53 = sub_268568B70();
            v55 = sub_2684EABEC(v53, v54, &v92);

            *(v52 + 4) = v55;
            *(v52 + 12) = 2080;
            sub_2684E6980(v50, v81);
            v56 = sub_268568B70();
            v58 = v57;
            sub_2684E69E4(v50);
            v59 = sub_2684EABEC(v56, v58, &v92);

            *(v52 + 14) = v59;
            _os_log_impl(&dword_2684CA000, v47, v48, "NotificationStateManager isDuplicateNotificationContent | new notification: %s, last notification record: %s", v52, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_2();

            v60 = v86;
            v87 = *(v83 + 8);
            v87(v60, v84);
          }

          else
          {
            v61 = v0[9];
            v62 = v0[5];
            v63 = v0[6];

            sub_2684E69E4(v50);
            v87 = *(v63 + 8);
            v87(v61, v62);
          }

          v64 = v0[16];
          v65 = v0[12];
          v89(v0[8], v46, v0[5]);
          sub_2684E6980(v64, v65);

          v66 = sub_2685689E0();
          v67 = sub_268568DC0();

          v68 = os_log_type_enabled(v66, v67);
          v69 = v0[16];
          v70 = v0[12];
          if (v68)
          {
            v90 = v0[8];
            v85 = v0[5];
            v82 = v67;
            v71 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            *v71 = 136315394;
            sub_2685675E0();
            sub_2685036B0();
            v72 = sub_2685691A0();
            v74 = sub_2684EABEC(v72, v73, &v92);

            *(v71 + 4) = v74;
            *(v71 + 12) = 2080;
            v75 = sub_2685691A0();
            v77 = v76;
            sub_2684E69E4(v70);
            v78 = sub_2684EABEC(v75, v77, &v92);

            *(v71 + 14) = v78;
            _os_log_impl(&dword_2684CA000, v66, v82, "NotificationStateManager isDuplicateNotificationContent | new notification timestamp: %s is a duplicate of last notification record timestamp: %s", v71, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_2();

            v87(v90, v85);
          }

          else
          {
            v79 = v0[8];
            v80 = v0[5];

            sub_2684E69E4(v70);
            v87(v79, v80);
          }

          sub_2684E69E4(v69);
          goto LABEL_42;
        }
      }
    }

    else if (!v24)
    {
      goto LABEL_45;
    }

LABEL_37:
    sub_2684E69E4(v11);
    ++v1;
  }

  if (qword_280282960 == -1)
  {
    goto LABEL_39;
  }

LABEL_55:
  OUTLINED_FUNCTION_0_0(&qword_280282960);
LABEL_39:
  v28 = v0[6];
  v27 = v0[7];
  v29 = v0[5];
  v30 = __swift_project_value_buffer(v29, qword_28028B348);
  (*(v28 + 16))(v27, v30, v29);
  v31 = sub_2685689E0();
  v32 = sub_268568DC0();
  v33 = OUTLINED_FUNCTION_13_0(v32);
  v35 = v0[6];
  v34 = v0[7];
  v36 = v0[5];
  if (v33)
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2684CA000, v31, v32, "NotificationStateManager isDuplicateNotificationContent | no matching record, not a duplicate notification", v37, 2u);
    OUTLINED_FUNCTION_2();
  }

  (*(v35 + 8))(v34, v36);
LABEL_42:

  v38 = v0[1];

  return v38(v91 != v1);
}

uint64_t sub_26850497C(uint64_t a1)
{
  OUTLINED_FUNCTION_1_9(a1);
  v3 = *(v1 + 40);
  v4 = sub_2684DEAF0(v3);
  v5 = (a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title);
  v6 = (a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle);
  v7 = (a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body);

  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      goto LABEL_37;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D61C170](i, v3);
      v10 = result;
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v10 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = *(v10 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title + 8);
    v12 = v5[1];
    if (v11)
    {
      if (!v12)
      {
        goto LABEL_34;
      }

      v13 = *(v10 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title) == *v5 && v11 == v12;
      if (!v13 && (sub_2685691C0() & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (v12)
    {
      goto LABEL_34;
    }

    v14 = *(v10 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle + 8);
    v15 = v6[1];
    if (v14)
    {
      if (!v15)
      {
        goto LABEL_34;
      }

      v16 = *(v10 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle) == *v6 && v14 == v15;
      if (!v16 && (sub_2685691C0() & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (v15)
    {
      goto LABEL_34;
    }

    v17 = *(v10 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body + 8);
    v18 = v7[1];
    if (v17)
    {
      if (v18)
      {
        v19 = *(v10 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body) == *v7 && v17 == v18;
        if (v19 || (sub_2685691C0() & 1) != 0)
        {
LABEL_36:

LABEL_37:

          return v4 != i;
        }
      }
    }

    else if (!v18)
    {
      goto LABEL_36;
    }

LABEL_34:
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void sub_268504B64()
{
  v1 = *(v0 + 24);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 24) = v3;
  }
}

uint64_t sub_268504B7C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26856B420;
  *(inited + 32) = a1;
  swift_beginAccess();

  sub_268509654(inited);
  return swift_endAccess();
}

unint64_t sub_268504C0C(uint64_t a1)
{
  result = sub_268503BF8(a1);
  if (result)
  {
    *(result + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullyRead) = 0;
    *(result + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSummarized) = 0;
    *(result + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_origin) = 1;
  }

  return result;
}

uint64_t sub_268504C5C()
{
  v0 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_5();
  v6 = v5 - v4;
  v8 = sub_268504C0C(v7);
  if (v8)
  {
    *(v8 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullContentReadRequired) = 1;
    v9 = OUTLINED_FUNCTION_11_7();
    MEMORY[0x26D61BE40](v9);
    OUTLINED_FUNCTION_8_9();
    sub_268568D20();
    return swift_endAccess();
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    __swift_project_value_buffer(v0, qword_28028B348);
    v11 = OUTLINED_FUNCTION_6_10();
    v12(v11);
    v13 = sub_2685689E0();
    v14 = sub_268568DC0();
    if (OUTLINED_FUNCTION_13_0(v14))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_10_4(&dword_2684CA000, v15, v16, "NotificationStateManager readFullNotification | no followup notification to read fully");
      OUTLINED_FUNCTION_2();
    }

    return (*(v2 + 8))(v6, v0);
  }
}

uint64_t sub_268504DEC()
{
  v0 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_5();
  v6 = v5 - v4;
  v8 = sub_268504C0C(v7);
  if (v8)
  {
    v9 = v8;
    sub_2685199D0();
    if (v10)
    {
      v12 = v10;
      v13 = v11;
      sub_26851B738();
    }

    *(v9 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullContentReadRequired) = 1;
    v14 = OUTLINED_FUNCTION_11_7();
    MEMORY[0x26D61BE40](v14);
    OUTLINED_FUNCTION_8_9();
    sub_268568D20();
    return swift_endAccess();
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    __swift_project_value_buffer(v0, qword_28028B348);
    v16 = OUTLINED_FUNCTION_6_10();
    v17(v16);
    v18 = sub_2685689E0();
    v19 = sub_268568DC0();
    if (OUTLINED_FUNCTION_13_0(v19))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_10_4(&dword_2684CA000, v20, v21, "NotificationStateManager repeatNotification | no followup notification to repeat");
      OUTLINED_FUNCTION_2();
    }

    return (*(v2 + 8))(v6, v0);
  }
}

uint64_t sub_268504FBC(uint64_t a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 24) = a2;
  *(v3 + 16) = a1;
  v4 = OUTLINED_FUNCTION_7();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_268504FEC()
{
  OUTLINED_FUNCTION_5();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_268505080;
  v2 = *(v0 + 24);

  return sub_268559770(v2);
}

uint64_t sub_268505080()
{
  OUTLINED_FUNCTION_5();
  *(*v0 + 48) = v1;

  v2 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_268505174()
{
  OUTLINED_FUNCTION_5();
  sub_2685406BC(v0[6], v0[2]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2685051E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v39[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D58, &qword_26856BDF0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v39[-v16];
  v18 = type metadata accessor for ReadingRecord(0);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_5();
  v21 = (v20 - v19);
  if (!a1)
  {
    return *(v3 + 24);
  }

  sub_2685056B4(a2, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_2684F8A9C(v17);
    return *(v3 + 24);
  }

  sub_2684E6D48(v17, v21);
  v23 = *(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSameTypeAsLastAnnouncement);
  v46 = v8;
  if (v23 == 1)
  {
    if (*(a1 + 16) == *v21 && *(a1 + 24) == v21[1])
    {
      v45 = 1;
    }

    else
    {
      v45 = sub_2685691C0();
    }
  }

  else
  {
    v45 = 0;
  }

  sub_268567560();
  v26 = v25;
  v41 = v3;
  v44 = *(v3 + 24);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v27 = __swift_project_value_buffer(v6, qword_28028B348);
  v28 = *(v46 + 16);
  v42 = v27;
  v43 = v28;
  v28(v14);
  v29 = sub_2685689E0();
  v30 = sub_268568DD0();
  if (OUTLINED_FUNCTION_13_0(v30))
  {
    v31 = v44 == 0;
    v40 = v26 <= 60.0;
    v32 = swift_slowAlloc();
    *v32 = 67109632;
    *(v32 + 4) = v45 & 1;
    *(v32 + 8) = 1024;
    *(v32 + 10) = v40;
    *(v32 + 14) = 1024;
    *(v32 + 16) = v31;
    _os_log_impl(&dword_2684CA000, v29, v30, "NotificationStateManager isExtendedBurst | is same type as last announcememnt: %{BOOL}d, is received within threshold: %{BOOL}d, is new session: %{BOOL}d", v32, 0x14u);
    OUTLINED_FUNCTION_2();
  }

  v33 = *(v46 + 8);
  v46 += 8;
  v33(v14, v6);
  if (v44)
  {
    v34 = 0;
  }

  else
  {
    v34 = v45 & (v26 <= 60.0);
  }

  v43(v12, v42, v6);
  v35 = sub_2685689E0();
  v36 = sub_268568DD0();
  if (OUTLINED_FUNCTION_13_0(v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 67109120;
    *(v37 + 4) = v34;
    _os_log_impl(&dword_2684CA000, v35, v36, "NotificationStateManager isExtendedBurst | is extended burst: %{BOOL}d", v37, 8u);
    OUTLINED_FUNCTION_2();
  }

  else
  {
  }

  v33(v12, v6);
  if (v34)
  {
    v22 = 1;
  }

  else
  {
    v22 = *(v41 + 24);
  }

  sub_2684E69E4(v21);
  return v22;
}

uint64_t ANStateManager.deinit()
{

  return v0;
}

uint64_t ANStateManager.__deallocating_deinit()
{
  ANStateManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2685056B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D58, &qword_26856BDF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_9(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_9()
{

  return sub_2685248B4();
}

void OUTLINED_FUNCTION_10_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_11_7()
{

  return swift_beginAccess();
}

uint64_t static SirikitLocalizedAppName.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_268568810();
  v63 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v59 = &v56[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282F98, qword_26856C420);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v62 = v6;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v7);
  v9 = &v56[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_27();
  v58 = v11;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v12);
  v60 = &v56[-v13];
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v14);
  v61 = &v56[-v15];
  OUTLINED_FUNCTION_17();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v56[-v18];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v56[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v56[-v23];
  v25 = sub_268568830();
  v64 = a2;
  v26 = sub_268568830();
  v27 = v26;
  if (!v25)
  {
    if (!v26)
    {
      goto LABEL_7;
    }

LABEL_28:
    v46 = 0;
    return v46 & 1;
  }

  if (!v26)
  {

    goto LABEL_28;
  }

  sub_2685686F0();
  v28 = sub_268568E70();

  if ((v28 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_7:
  sub_268568840();
  sub_268568840();
  v29 = *(v5 + 48);
  sub_2684D4298(v24, v9);
  sub_2684D4298(v22, &v9[v29]);
  OUTLINED_FUNCTION_2_1(v9);
  if (v32)
  {
    v30 = OUTLINED_FUNCTION_1_10();
    sub_2684D199C(v30, v31, &qword_26856A1E0);
    sub_2684D199C(v24, &qword_280282AF0, &qword_26856A1E0);
    OUTLINED_FUNCTION_2_1(&v9[v29]);
    if (v32)
    {
      sub_2684D199C(v9, &qword_280282AF0, &qword_26856A1E0);
      goto LABEL_18;
    }

LABEL_16:
    v35 = v9;
LABEL_27:
    sub_2684D199C(v35, &qword_280282F98, qword_26856C420);
    goto LABEL_28;
  }

  sub_2684D4298(v9, v19);
  OUTLINED_FUNCTION_2_1(&v9[v29]);
  if (v32)
  {
    v33 = OUTLINED_FUNCTION_1_10();
    sub_2684D199C(v33, v34, &qword_26856A1E0);
    sub_2684D199C(v24, &qword_280282AF0, &qword_26856A1E0);
    (*(v63 + 8))(v19, v3);
    goto LABEL_16;
  }

  v36 = v63;
  v37 = &v9[v29];
  v38 = v59;
  (*(v63 + 32))(v59, v37, v3);
  sub_268500294();
  v57 = sub_268568B00();
  v39 = *(v36 + 8);
  v39(v38, v3);
  sub_2684D199C(v22, &qword_280282AF0, &qword_26856A1E0);
  sub_2684D199C(v24, &qword_280282AF0, &qword_26856A1E0);
  v39(v19, v3);
  sub_2684D199C(v9, &qword_280282AF0, &qword_26856A1E0);
  if ((v57 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_18:
  v40 = v61;
  sub_268568820();
  v41 = v60;
  sub_268568820();
  v42 = *(v5 + 48);
  v43 = v62;
  sub_2684D4298(v40, v62);
  sub_2684D4298(v41, v43 + v42);
  OUTLINED_FUNCTION_2_1(v43);
  if (!v32)
  {
    v47 = v58;
    sub_2684D4298(v43, v58);
    OUTLINED_FUNCTION_2_1(v43 + v42);
    if (!v48)
    {
      v52 = v41;
      v53 = v63;
      v54 = v59;
      (*(v63 + 32))(v59, v43 + v42, v3);
      sub_268500294();
      v46 = sub_268568B00();
      v55 = *(v53 + 8);
      v55(v54, v3);
      sub_2684D199C(v52, &qword_280282AF0, &qword_26856A1E0);
      sub_2684D199C(v40, &qword_280282AF0, &qword_26856A1E0);
      v55(v47, v3);
      sub_2684D199C(v43, &qword_280282AF0, &qword_26856A1E0);
      return v46 & 1;
    }

    v49 = OUTLINED_FUNCTION_1_10();
    sub_2684D199C(v49, v50, &qword_26856A1E0);
    sub_2684D199C(v40, &qword_280282AF0, &qword_26856A1E0);
    (*(v63 + 8))(v47, v3);
    goto LABEL_26;
  }

  v44 = OUTLINED_FUNCTION_1_10();
  sub_2684D199C(v44, v45, &qword_26856A1E0);
  sub_2684D199C(v40, &qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_2_1(v43 + v42);
  if (!v32)
  {
LABEL_26:
    v35 = v43;
    goto LABEL_27;
  }

  sub_2684D199C(v43, &qword_280282AF0, &qword_26856A1E0);
  v46 = 1;
  return v46 & 1;
}

uint64_t sub_268505E88()
{
  swift_unknownObjectRelease();
  sub_2684DBF00(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents35RNReadLatestNotificationActionGroup_transition);

  sub_2684CC8D4(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents35RNReadLatestNotificationActionGroup_sharedObjects);
  return v0;
}

uint64_t sub_268505ED8()
{
  sub_268505E88();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for RNReadLatestNotificationActionGroup(uint64_t a1)
{
  result = qword_2802831B8;
  if (!qword_2802831B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_268505F84(uint64_t a1)
{
  sub_2684DBD70(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_268506074()
{
  result = qword_2802831C8;
  if (!qword_2802831C8)
  {
    type metadata accessor for RNReadLatestNotificationActionGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802831C8);
  }

  return result;
}

uint64_t sub_268506130()
{
  v1[19] = v0;
  v2 = sub_2685679B0();
  v1[20] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[21] = v3;
  v1[22] = OUTLINED_FUNCTION_39();
  v4 = sub_268567B60();
  v1[23] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[24] = v5;
  v1[25] = OUTLINED_FUNCTION_39();
  v6 = sub_268567D90();
  v1[26] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[27] = v7;
  v1[28] = OUTLINED_FUNCTION_39();
  v8 = sub_2685689F0();
  v1[29] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[30] = v9;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v10 = sub_268568810();
  v1[35] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[36] = v11;
  v1[37] = OUTLINED_FUNCTION_39();
  v1[38] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2685063CC, 0, 0);
}

uint64_t sub_268506C48()
{
  v2 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 424) = v0;

  v5 = *(v2 + 320);
  sub_2684D4378(*(v2 + 312));
  sub_2684D4378(v5);
  if (v0)
  {
    v6 = sub_2685072CC;
  }

  else
  {
    v6 = sub_268506D94;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_268506D94()
{
  v1 = v0[19];
  v2 = sub_26851C004(v0[28], v1 + 25, 0);
  v0[54] = v2;
  v3 = v1[23];
  v4 = v1[24];
  __swift_project_boxed_opaque_existential_1(v1 + 20, v3);
  v5 = swift_task_alloc();
  v0[55] = v5;
  v6 = sub_2684E0120();
  *v5 = v0;
  v5[1] = sub_268506E84;

  return MEMORY[0x2821BB6A0](v2, v3, v6, v4);
}

uint64_t sub_268506E84(void *a1)
{
  OUTLINED_FUNCTION_9_8();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_9_8();
  *v7 = v6;
  *(v8 + 448) = v1;

  if (v1)
  {
    v9 = sub_2685075B4;
  }

  else
  {

    v9 = sub_268506F98;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_268506F98()
{
  (*(v0 + 392))(*(v0 + 264), *(v0 + 384), *(v0 + 232));
  v1 = sub_2685689E0();
  v2 = sub_268568DF0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2684CA000, v1, v2, "RNReadLatestNotificationAction run | read latest notification", v3, 2u);
    OUTLINED_FUNCTION_2();
  }

  v22 = *(v0 + 432);
  v4 = *(v0 + 408);
  v27 = *(v0 + 360);
  v28 = *(v0 + 368);
  v26 = *(v0 + 352);
  v23 = *(v0 + 288);
  v24 = *(v0 + 280);
  v25 = *(v0 + 296);
  v5 = *(v0 + 264);
  v6 = *(v0 + 232);
  v7 = *(v0 + 216);
  v20 = *(v0 + 208);
  v21 = *(v0 + 224);
  v8 = *(v0 + 192);
  v9 = *(v0 + 200);
  v17 = *(v0 + 184);
  v18 = *(v0 + 176);
  v10 = *(v0 + 168);
  v19 = *(v0 + 160);

  v4(v5, v6);
  sub_268567990();
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_268567A20();
  (*(v8 + 104))(v9, *MEMORY[0x277D5BC10], v17);
  (*(v10 + 104))(v18, *MEMORY[0x277D5B958], v19);

  v11 = OUTLINED_FUNCTION_1_11();
  sub_2684EBB74(v11, v12, v9, v18, 8, 0, 0, 0, v15, v16);
  sub_2685679A0();

  (*(v7 + 8))(v21, v20);
  (*(v23 + 8))(v25, v24);
  sub_2684D4378(v26);
  sub_2684D4378(v27);
  sub_2684D4378(v28);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  v13 = *(v0 + 8);

  return v13();
}

void *sub_2685078C4()
{
  swift_unknownObjectRelease();
  sub_2684CC8D4(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  __swift_destroy_boxed_opaque_existential_0((v0 + 200));

  return v0;
}

uint64_t sub_26850790C()
{
  sub_2685078C4();

  return MEMORY[0x2821FE8D8](v0, 256, 7);
}

uint64_t sub_268507964()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2685079F0;

  return sub_268506130();
}

uint64_t sub_2685079F0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_9_8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_268507B6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RNReadLatestNotificationAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_268507BAC()
{
  result = qword_2802831E8;
  if (!qword_2802831E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802831E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_10(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_6_11(unsigned int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10)
{

  return sub_2684EBB74(a1, a2, v10, v12, 8, v11, v13, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_8_10()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_12_9(uint64_t a1)
{

  return sub_268567990();
}

uint64_t OUTLINED_FUNCTION_14_3()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));

  return sub_268567A20();
}

id OUTLINED_FUNCTION_16_5(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  *(v17 + 136) = a17;

  return a17;
}

id OUTLINED_FUNCTION_18_3(float a1)
{
  *v2 = a1;
  *(v1 + 144) = v3;

  return v3;
}

void *sub_268507DBC(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = sub_268567CE0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802831F8, &qword_26856C9A8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v37 = sub_268568A70();
  v10 = *(v37 - 8);
  v11 = MEMORY[0x28223BE20](v37);
  v31 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v30 = &v26 - v13;
  result = sub_2684DEAF0(a1);
  v15 = result;
  v16 = 0;
  v35 = a1;
  v36 = a1 & 0xC000000000000001;
  v34 = a1 & 0xFFFFFFFFFFFFFF8;
  v17 = (v4 + 16);
  v18 = (v4 + 8);
  v28 = v10;
  v29 = (v10 + 32);
  v32 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v15 == v16)
    {
      return v32;
    }

    if (v36)
    {
      result = MEMORY[0x26D61C170](v16, v35);
    }

    else
    {
      if (v16 >= *(v34 + 16))
      {
        goto LABEL_17;
      }

      result = *(v35 + 8 * v16 + 32);
    }

    v19 = result;
    v20 = (v16 + 1);
    if (__OFADD__(v16, 1))
    {
      break;
    }

    (*v17)(v6, v33, v3);
    sub_26850893C(v19, v9);
    (*v18)(v6, v3);

    if (__swift_getEnumTagSinglePayload(v9, 1, v37) == 1)
    {
      result = sub_268508EB4(v9);
      ++v16;
    }

    else
    {
      v21 = *v29;
      (*v29)(v30, v9, v37);
      v27 = v21;
      v21(v31, v30, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_26854BDFC(0, v32[2] + 1, 1, v32);
      }

      v23 = v32[2];
      v22 = v32[3];
      if (v23 >= v22 >> 1)
      {
        v32 = sub_26854BDFC((v22 > 1), v23 + 1, 1, v32);
      }

      v24 = v31;
      v25 = v32;
      v32[2] = v23 + 1;
      result = (v27)(v25 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23, v24, v37);
      v16 = v20;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void *sub_268508150(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v38 = sub_268567CE0();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802831F8, &qword_26856C9A8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v40 = sub_268568A70();
  v9 = MEMORY[0x28223BE20](v40);
  v34 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v33 = &v30 - v12;
  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  v36 = (v3 + 8);
  v37 = (v3 + 16);
  v31 = v11;
  v32 = (v11 + 32);
  v41 = a1;

  v19 = 0;
  v35 = MEMORY[0x277D84F90];
  while (1)
  {
    v20 = v19;
    if (!v16)
    {
      break;
    }

LABEL_8:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = *(*(v41 + 48) + ((v19 << 10) | (16 * v21)));
    v23 = v38;
    (*v37)(v5, v39, v38);

    sub_268508F1C(v22, v8);
    (*v36)(v5, v23);

    if (__swift_getEnumTagSinglePayload(v8, 1, v40) == 1)
    {
      result = sub_268508EB4(v8);
    }

    else
    {
      v24 = *v32;
      v25 = v40;
      (*v32)(v33, v8, v40);
      v24(v34, v33, v25);
      v26 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_26854BDFC(0, v35[2] + 1, 1, v35);
      }

      v28 = v35[2];
      v27 = v35[3];
      if (v28 >= v27 >> 1)
      {
        v35 = sub_26854BDFC((v27 > 1), v28 + 1, 1, v35);
      }

      v29 = v35;
      v35[2] = v28 + 1;
      result = (v26)(v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v28, v34, v40);
    }
  }

  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      return v35;
    }

    v16 = *(v13 + 8 * v19);
    ++v20;
    if (v16)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268508520@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_268567CE0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802831F8, &qword_26856C9A8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v16 = sub_268568A70();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  v20 = MEMORY[0x28223BE20](v19);
  v36 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v35 - v22;
  v39 = v2;
  v40 = MEMORY[0x277D84F90];
  v38 = a1;
  sub_26850893C(a1, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_268508EB4(v15);
  }

  else
  {
    (*(v18 + 32))(v23, v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283200, &unk_26856FFB0);
    v24 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_26856A540;
    (*(v18 + 16))(v25 + v24, v23, v16);
    OUTLINED_FUNCTION_0_11();
    sub_2685097C8(v25, v26, MEMORY[0x277D5FEB0]);
    (*(v18 + 8))(v23, v16);
  }

  v27 = *(v6 + 16);
  v27(v9, v39, v4);
  result = sub_268565330(v38);
  if (v29)
  {
    sub_268508F1C(result, v13);

    (*(v6 + 8))(v9, v4);
    if (__swift_getEnumTagSinglePayload(v13, 1, v16) == 1)
    {
      sub_268508EB4(v13);
    }

    else
    {
      v30 = v36;
      (*(v18 + 32))(v36, v13, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283200, &unk_26856FFB0);
      v31 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_26856A540;
      (*(v18 + 16))(v32 + v31, v30, v16);
      OUTLINED_FUNCTION_0_11();
      sub_2685097C8(v32, v33, MEMORY[0x277D5FEB0]);
      (*(v18 + 8))(v30, v16);
    }

    v34 = v39;
    sub_268567C60();
    return (v27)(v37, v34, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26850893C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v45[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2685689F0();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283208, &qword_26856C9B0);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v36 - v7;
  v8 = sub_268568A70();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x28223BE20](v8);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2685682F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_268565324(a1);
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  sub_268565330(a1);
  sub_268568500();
  swift_allocObject();
  v17 = sub_2685684F0();

  v39 = v16;
  sub_2685682C0();
  sub_2685682A0();
  (*(v11 + 8))(v13, v10);
  if (MEMORY[0x26D61B540](v17))
  {
    v18 = objc_opt_self();
    v45[0] = 0;
    v19 = [v18 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v45];
    v20 = v45[0];
    if (v19)
    {
      sub_268567540();
    }

    else
    {
      v30 = v20;
      v31 = sub_2685674D0();

      swift_willThrow();
    }

    v21 = sub_268568A30();
    __swift_storeEnumTagSinglePayload(v40, 1, 1, v21);
    v22 = v41;
    sub_268568A50();

    v32 = v43;
    v33 = v44;
    (*(v42 + 32))(v44, v22, v43);
    v34 = 0;
  }

  else
  {
    v23 = v37;
    v24 = v38;

    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v24, qword_28028B348);
    v26 = v23;
    (*(v23 + 16))(v5, v25, v24);
    v27 = sub_2685689E0();
    v28 = sub_268568DC0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2684CA000, v27, v28, "NotificationContext makeSRRDonationContext | unable to convert notification entity builder to entity", v29, 2u);
      MEMORY[0x26D61CB30](v29, -1, -1);
    }

    else
    {
    }

    v32 = v43;
    (*(v26 + 8))(v5, v24);
    v34 = 1;
    v33 = v44;
  }

  return __swift_storeEnumTagSinglePayload(v33, v34, 1, v32);
}

uint64_t sub_268508EB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802831F8, &qword_26856C9A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268508F1C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v34 = a3;
  v4 = sub_2685689F0();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4);
  v29 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283208, &qword_26856C9B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v32 = sub_268567610();
  v9 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2685682F0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268568420();
  swift_allocObject();
  v16 = sub_268568410();
  swift_bridgeObjectRetain_n();
  v33 = a1;
  sub_2685682C0();
  sub_2685682A0();
  (*(v13 + 8))(v15, v12);
  if (MEMORY[0x26D61B540](v16))
  {
    sub_268567600();
    sub_2685675F0();
    (*(v9 + 8))(v11, v32);
    v17 = sub_268568A30();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v17);

    v18 = v34;
    sub_268568A50();

    v19 = 0;
  }

  else
  {
    v21 = v29;
    v20 = v30;
    v22 = v31;
    v18 = v34;
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v22, qword_28028B348);
    (*(v20 + 16))(v21, v23, v22);
    v24 = sub_2685689E0();
    v25 = sub_268568DC0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2684CA000, v24, v25, "NotificationContext makeSRRDonationContext | unable to convert app entity builder to entity", v26, 2u);
      MEMORY[0x26D61CB30](v26, -1, -1);
    }

    else
    {
    }

    (*(v20 + 8))(v21, v22);
    v19 = 1;
  }

  v27 = sub_268568A70();
  return __swift_storeEnumTagSinglePayload(v18, v19, 1, v27);
}

uint64_t sub_268509368@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2685690A0())
  {
    v24 = a2;
    v25 = v3;
    sub_268507DBC(a1, v3);
    v7 = 0;
    v3 = a1 & 0xFFFFFFFFFFFFFF8;
    a2 = MEMORY[0x277D84F90];
    while (1)
    {
      if (i == v7)
      {
        v18 = sub_26855BB84(a2);
        v3 = v25;
        v19 = sub_268508150(v18, v25);

        OUTLINED_FUNCTION_0_11();
        sub_2685097C8(v19, v20, MEMORY[0x277D5FEB0]);
        sub_268567C60();
        a2 = v24;
        goto LABEL_17;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D61C170](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = sub_268565330(v8);
      v13 = v12;

      ++v7;
      if (v13)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26854BB3C();
          a2 = v16;
        }

        v14 = *(a2 + 16);
        if (v14 >= *(a2 + 24) >> 1)
        {
          sub_26854BB3C();
          a2 = v17;
        }

        *(a2 + 16) = v14 + 1;
        v15 = a2 + 16 * v14;
        *(v15 + 32) = v11;
        *(v15 + 40) = v13;
        v7 = v10;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_17:
  v21 = sub_268567CE0();
  v22 = *(*(v21 - 8) + 16);

  return v22(a2, v3, v21);
}