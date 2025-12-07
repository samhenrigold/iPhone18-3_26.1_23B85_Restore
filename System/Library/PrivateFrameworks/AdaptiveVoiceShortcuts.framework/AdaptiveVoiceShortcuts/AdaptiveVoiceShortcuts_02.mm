uint64_t sub_23E825EEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_23E82EF0C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23E825FBC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_23E82684C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_23E826598((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_23E82EF0C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_23E82EF0C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23E8033B4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_23E8033B4((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_23E826598((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_23E82684C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_23E8267C0(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_23E82EF0C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_23E826598(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_23E82EF0C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_23E82EF0C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_23E8267C0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23E82684C(v3);
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

uint64_t sub_23E826888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdaptiveVoiceShortcut(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8268EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_23E826954(uint64_t a1)
{
  v2 = type metadata accessor for AvailableShortcutAction(0);
  if (*(a1 + *(v2 + 24) + 16))
  {
    if (*(a1 + *(v2 + 24) + 16) == 1)
    {
      v6 = sub_23E82EA5C();
      AXPIBridgePerformActionForSystemAction(v6);
    }

    else
    {
      v5 = [objc_allocWithZone(MEMORY[0x277CEF3A8]) init];
      v6 = sub_23E82EA5C();
      [v5 startUIRequest_];
    }
  }

  else
  {
    v3 = objc_allocWithZone(MEMORY[0x277D79DA0]);
    v4 = sub_23E82EA5C();
    v6 = [v3 initWithWorkflowIdentifier_];

    [v6 start];
  }
}

uint64_t sub_23E826A78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSo20AVSTriggerControllerC22AdaptiveVoiceShortcutsE29keywordSpotterDidUpdateScores10verboseLogySS_tF_0()
{
  v0 = sub_23E82E00C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E35A1C0 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27E35A958);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_23E82DFEC();
  v6 = sub_23E82EBEC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23E7EF000, v5, v6, "Keyword spotter did update scores", v7, 2u);
    MEMORY[0x23EF15860](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t objectdestroy_5Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E826CC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E801B00;

  return sub_23E822D60(a1, v4, v5, v6);
}

uint64_t sub_23E826D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v8[0] = a1;
  v8[1] = a2;
  v7[0] = a3;
  v7[1] = a4;
  return v5(v8, v7);
}

uint64_t sub_23E826DFC(uint64_t a1)
{
  sub_23E82E05C();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E801C00;

  return sub_23E825740(a1);
}

unint64_t sub_23E826F1C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000011;
  if (v1 != 2)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23E826F94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23E827B00(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23E826FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23E827298(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23E826FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23E827298(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t AdaptiveVoiceShortcut.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AD60, &unk_23E8317C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E827298(v7, v8, v9);
  sub_23E82EF6C();
  v11[15] = 0;
  sub_23E82DDDC();
  sub_23E827804(&qword_27E35A758, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_23E82EEDC();
  if (!v1)
  {
    type metadata accessor for AdaptiveVoiceShortcut(0);
    v11[14] = 1;
    sub_23E82EE9C();
    v11[13] = 2;
    sub_23E82EE9C();
    v11[12] = 3;
    type metadata accessor for AvailableShortcutAction(0);
    sub_23E827804(&qword_27E35AD70, type metadata accessor for AvailableShortcutAction, &protocol conformance descriptor for AvailableShortcutAction);
    sub_23E82EEAC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23E827298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E35AD68;
  if (!qword_27E35AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AD68);
  }

  return result;
}

uint64_t type metadata accessor for AdaptiveVoiceShortcut(uint64_t a1)
{
  result = qword_2810C2520;
  if (!qword_2810C2520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AdaptiveVoiceShortcut.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A210, &unk_23E82FFD0);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v37 - v4;
  v5 = sub_23E82DDDC();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AD78, &qword_23E8317D0);
  v41 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v8 = &v37 - v7;
  v9 = type metadata accessor for AdaptiveVoiceShortcut(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E82DDCC();
  v13 = &v12[v10[7]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v12[v10[8]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = v10[9];
  v16 = type metadata accessor for AvailableShortcutAction(0);
  v17 = *(*(v16 - 8) + 56);
  v46 = v12;
  v17(&v12[v15], 1, 1, v16);
  v18 = a1[3];
  v48 = a1;
  v19 = __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_23E827298(v19, v20, v21);
  v22 = v8;
  v23 = v47;
  sub_23E82EF5C();
  if (v23)
  {
    v24 = v46;
  }

  else
  {
    v47 = v13;
    v37 = v15;
    v38 = v14;
    v26 = v41;
    v25 = v42;
    v52 = 0;
    sub_23E827804(&qword_27E35A778, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v27 = v43;
    sub_23E82EE6C();
    v24 = v46;
    (*(v25 + 40))(v46, v44, v27);
    v51 = 1;
    v28 = sub_23E82EE2C();
    v29 = v47;
    *v47 = v28;
    v29[1] = v30;
    v50 = 2;
    v31 = sub_23E82EE2C();
    v33 = v38;
    *v38 = v31;
    v33[1] = v34;
    v49 = 3;
    sub_23E827804(&qword_27E35AD80, type metadata accessor for AvailableShortcutAction, &protocol conformance descriptor for AvailableShortcutAction);
    v35 = v40;
    v36 = v45;
    sub_23E82EE3C();
    (*(v26 + 8))(v22, v36);
    sub_23E800310(v35, v24 + v37);
    sub_23E826888(v24, v39);
  }

  __swift_destroy_boxed_opaque_existential_0(v48);
  return sub_23E8277A8(v24);
}

uint64_t sub_23E8277A8(uint64_t a1)
{
  v2 = type metadata accessor for AdaptiveVoiceShortcut(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E827804(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23E8278A4(uint64_t a1)
{
  sub_23E82DDDC();
  if (v1 <= 0x3F)
  {
    sub_23E827940();
    if (v2 <= 0x3F)
    {
      sub_23E827990(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23E827940()
{
  if (!qword_2810C23F0)
  {
    v0 = sub_23E82EC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_2810C23F0);
    }
  }
}

void sub_23E827990(uint64_t a1)
{
  if (!qword_2810C2450)
  {
    type metadata accessor for AvailableShortcutAction(255);
    v1 = sub_23E82EC4C();
    if (!v2)
    {
      atomic_store(v1, &qword_2810C2450);
    }
  }
}

unint64_t sub_23E8279FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E35AD88;
  if (!qword_27E35AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AD88);
  }

  return result;
}

unint64_t sub_23E827A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E35AD90;
  if (!qword_27E35AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AD90);
  }

  return result;
}

unint64_t sub_23E827AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E35AD98;
  if (!qword_27E35AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AD98);
  }

  return result;
}

uint64_t sub_23E827B00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_23E82EF0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_23E82EF0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023E833120 == a2 || (sub_23E82EF0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023E833140 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_23E82EF0C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23E827CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a1;
  v54 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ADA8, &qword_23E831A00);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ADB0, &qword_23E831A08);
  MEMORY[0x28223BE20](v46);
  v10 = &v43 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ADB8, &qword_23E831A10);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v47 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ADC0, &qword_23E831A18);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v48 = &v43 - v14;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ADC8, &qword_23E831A20) - 8;
  MEMORY[0x28223BE20](v45);
  v49 = &v43 - v15;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ADD0, &qword_23E831A28);
  MEMORY[0x28223BE20](v51);
  v50 = &v43 - v16;
  *v8 = sub_23E82E48C();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ADD8, &qword_23E831A30);
  sub_23E8283AC(a1, a2, &v8[*(v17 + 44)]);
  sub_23E82E94C();
  sub_23E82E93C();

  v18 = sub_23E82E92C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  v19 = v57;
  v20 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ADE0, &unk_23E831A80) + 36)];
  *v20 = v18;
  v20[1] = v19;
  LOBYTE(v19) = sub_23E82E5DC();
  sub_23E82E10C();
  v21 = &v8[*(v6 + 44)];
  *v21 = v19;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  sub_23E82E91C();
  sub_23E82E2FC();
  sub_23E7F8764(v8, v10, &qword_27E35ADA8, &qword_23E831A00);
  v26 = &v10[*(v46 + 36)];
  v27 = v62;
  *(v26 + 4) = v61;
  *(v26 + 5) = v27;
  *(v26 + 6) = v63;
  v28 = v58;
  *v26 = v57;
  *(v26 + 1) = v28;
  v29 = v60;
  *(v26 + 2) = v59;
  *(v26 + 3) = v29;
  v30 = v44;
  v55 = v44;
  v56 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A268, &qword_23E830350);
  sub_23E829AB4();
  sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350, MEMORY[0x277CDF028]);
  v31 = v47;
  sub_23E82E7BC();
  sub_23E7F55E0(v10, &qword_27E35ADB0, &qword_23E831A08);
  LOBYTE(v10) = sub_23E82E5CC();
  v32 = v48;
  (*(v52 + 32))(v48, v31, v53);
  v33 = v32 + *(v13 + 44);
  *v33 = v10;
  *(v33 + 8) = 0u;
  *(v33 + 24) = 0u;
  *(v33 + 40) = 1;
  v34 = swift_allocObject();
  *(v34 + 16) = v30;
  *(v34 + 24) = a2;
  v35 = v49;
  sub_23E7F8764(v32, v49, &qword_27E35ADC0, &qword_23E831A18);
  v36 = (v35 + *(v45 + 44));
  *v36 = sub_23E829CB0;
  v36[1] = v34;
  v36[2] = 0;
  v36[3] = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = v30;
  *(v37 + 24) = a2;
  v38 = v35;
  v39 = v50;
  sub_23E7F8764(v38, v50, &qword_27E35ADC8, &qword_23E831A20);
  v40 = (v39 + *(v51 + 36));
  *v40 = 0;
  v40[1] = 0;
  v40[2] = sub_23E829CD4;
  v40[3] = v37;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_23E82E0CC();

  v41 = swift_allocObject();
  *(v41 + 16) = v30;
  *(v41 + 24) = a2;
  sub_23E829CE4();

  sub_23E82E7CC();

  return sub_23E7F55E0(v39, &qword_27E35ADD0, &qword_23E831A28);
}

uint64_t sub_23E8283AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v87 = a3;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AE38, &qword_23E831AE8);
  v5 = MEMORY[0x28223BE20](v85);
  v88 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v86 = (&v82 - v7);
  v8 = sub_23E82E47C();
  v97 = *(v8 - 8);
  v98 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AE40, &qword_23E831AF0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v82 - v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AE48, &qword_23E831AF8);
  MEMORY[0x28223BE20](v94);
  v95 = &v82 - v14;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AE50, &qword_23E831B00);
  MEMORY[0x28223BE20](v96);
  v16 = &v82 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AE58, &qword_23E831B08);
  v100 = *(v17 - 8);
  v101 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v99 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v102 = &v82 - v20;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  v83 = a1;
  v84 = a2;
  sub_23E82ACF8(a1, a2);
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v21 = qword_27E35D0B8;
  if (!qword_27E35D0B8)
  {
    v22 = [objc_opt_self() mainBundle];
  }

  v93 = v21;
  v23 = sub_23E82E68C();
  v25 = v24;
  *&v126 = v23;
  *(&v126 + 1) = v24;
  v27 = v26 & 1;
  v127[0] = v26 & 1;
  *&v127[8] = v28;
  sub_23E82E46C();
  sub_23E82E75C();
  (*(v97 + 8))(v10, v98);
  sub_23E7FFB78(v23, v25, v27);

  KeyPath = swift_getKeyPath();
  v30 = v95;
  sub_23E7F8764(v13, v95, &qword_27E35AE40, &qword_23E831AF0);
  v31 = v30 + *(v94 + 36);
  *v31 = KeyPath;
  *(v31 + 8) = 1;
  v32 = sub_23E82E62C();
  v33 = swift_getKeyPath();
  sub_23E7F8764(v30, v16, &qword_27E35AE48, &qword_23E831AF8);
  v34 = &v16[*(v96 + 36)];
  *v34 = v33;
  v34[1] = v32;
  sub_23E82AFE8();
  sub_23E82E77C();
  sub_23E7F55E0(v16, &qword_27E35AE50, &qword_23E831B00);
  sub_23E81E284(0xD000000000000026, 0x800000023E833180);
  if (v21)
  {
    v35 = v93;
  }

  else
  {
    v35 = [objc_opt_self() mainBundle];
  }

  sub_23E82DCDC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A218, &qword_23E831780);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_23E830030;
  v37 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  sub_23E82B214();
  v38 = sub_23E82EC3C();
  v39 = [v37 stringFromNumber_];

  if (v39)
  {
    v40 = sub_23E82EA6C();
    v42 = v41;
  }

  else
  {

    v40 = 0;
    v42 = 0xE000000000000000;
  }

  *(v36 + 56) = MEMORY[0x277D837D0];
  *(v36 + 64) = sub_23E7F5328(v43, v44, v45);
  *(v36 + 32) = v40;
  *(v36 + 40) = v42;
  v46 = sub_23E82EA7C();
  v48 = v47;

  *&v126 = v46;
  *(&v126 + 1) = v48;
  sub_23E7F84B0(v49, v50, v51);
  v52 = sub_23E82E69C();
  v94 = v53;
  v95 = v52;
  LOBYTE(v46) = v54;
  v97 = v55;
  v93 = swift_getKeyPath();
  LODWORD(v96) = sub_23E82E5CC();
  v92 = v46 & 1;
  v156 = v46 & 1;
  v152 = 1;
  LODWORD(v98) = sub_23E82E51C();
  v91 = sub_23E82E3EC();
  LOBYTE(v137[0]) = 1;
  v57 = v83;
  v56 = v84;
  sub_23E82924C(&v126);
  v115 = *&v127[144];
  v116 = *&v127[160];
  v111 = *&v127[80];
  v112 = *&v127[96];
  v113 = *&v127[112];
  v114 = *&v127[128];
  v107 = *&v127[16];
  v108 = *&v127[32];
  v109 = *&v127[48];
  v110 = *&v127[64];
  v105 = v126;
  v106 = *v127;
  v118[10] = *&v127[144];
  v118[11] = *&v127[160];
  v118[6] = *&v127[80];
  v118[7] = *&v127[96];
  v118[8] = *&v127[112];
  v118[9] = *&v127[128];
  v118[2] = *&v127[16];
  v118[3] = *&v127[32];
  v118[4] = *&v127[48];
  v118[5] = *&v127[64];
  v117 = v127[176];
  v119 = v127[176];
  v118[0] = v126;
  v118[1] = *v127;
  sub_23E8001E0(&v105, v125, &qword_27E35AE88, &qword_23E831B88);
  sub_23E7F55E0(v118, &qword_27E35AE88, &qword_23E831B88);
  *&v103[151] = v114;
  *&v103[167] = v115;
  *&v103[183] = v116;
  *&v103[87] = v110;
  *&v103[103] = v111;
  *&v103[119] = v112;
  *&v103[135] = v113;
  *&v103[23] = v106;
  *&v103[39] = v107;
  *&v103[55] = v108;
  *&v103[71] = v109;
  v103[199] = v117;
  *&v103[7] = v105;
  v89 = LOBYTE(v137[0]);
  sub_23E82E91C();
  sub_23E82E1FC();
  *&v104[7] = v159;
  *&v104[23] = v160;
  *&v104[39] = v161;
  v90 = sub_23E82E5CC();
  LOBYTE(v126) = 1;
  v58 = sub_23E82E3EC();
  v59 = v86;
  *v86 = v58;
  *(v59 + 8) = 0x4000000000000000;
  *(v59 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AE90, &qword_23E831B90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  swift_getKeyPath();
  v60 = swift_allocObject();
  *(v60 + 16) = v57;
  *(v60 + 24) = v56;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AA10, &qword_23E830AB0);
  v61 = sub_23E7F5640(&qword_27E35AE98, &qword_27E35AA10, &qword_23E830AB0, MEMORY[0x277D83980]);
  sub_23E82B2C4(v61, v62, v63);
  sub_23E82E8FC();
  sub_23E82E91C();
  sub_23E82E1FC();
  v64 = (v59 + *(v85 + 36));
  v65 = v163;
  *v64 = v162;
  v64[1] = v65;
  v64[2] = v164;
  v66 = v99;
  v67 = *(v100 + 16);
  v68 = v101;
  v67(v99, v102, v101);
  v69 = v88;
  sub_23E8001E0(v59, v88, &qword_27E35AE38, &qword_23E831AE8);
  v70 = v87;
  v67(v87, v66, v68);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AEA8, &qword_23E831C08);
  v72 = &v70[v71[12]];
  *&v121 = v95;
  *(&v121 + 1) = v94;
  LOBYTE(v122) = v92;
  *(&v122 + 1) = *v155;
  DWORD1(v122) = *&v155[3];
  *(&v122 + 1) = v97;
  *&v123 = v93;
  BYTE8(v123) = 1;
  *(&v123 + 9) = *v154;
  HIDWORD(v123) = *&v154[3];
  LOBYTE(v124[0]) = v96;
  *(v124 + 1) = *v153;
  DWORD1(v124[0]) = *&v153[3];
  *(v124 + 8) = 0u;
  *(&v124[1] + 8) = 0u;
  BYTE8(v124[2]) = 1;
  *(&v124[2] + 9) = v157;
  BYTE11(v124[2]) = v158;
  HIDWORD(v124[2]) = v98;
  v73 = v122;
  *v72 = v121;
  *(v72 + 1) = v73;
  v74 = v124[0];
  *(v72 + 2) = v123;
  *(v72 + 3) = v74;
  v75 = v124[2];
  *(v72 + 4) = v124[1];
  *(v72 + 5) = v75;
  v76 = v71[16];
  *(&v125[10] + 1) = *&v103[64];
  *(&v125[8] + 1) = *&v103[48];
  *(&v125[6] + 1) = *&v103[32];
  *(&v125[18] + 1) = *&v103[128];
  *(&v125[16] + 1) = *&v103[112];
  *(&v125[14] + 1) = *&v103[96];
  *(&v125[12] + 1) = *&v103[80];
  *(&v125[24] + 1) = *&v103[176];
  *(&v125[22] + 1) = *&v103[160];
  *(&v125[20] + 1) = *&v103[144];
  *(&v125[2] + 1) = *v103;
  v125[0] = v91;
  v125[1] = 0;
  LOBYTE(v125[2]) = v89;
  *(&v125[26] + 1) = *&v103[192];
  *(&v125[4] + 1) = *&v103[16];
  *(&v125[27] + 1) = *v104;
  *(&v125[29] + 1) = *&v104[16];
  *(&v125[31] + 1) = *&v104[32];
  v125[33] = *&v104[47];
  LOBYTE(v125[34]) = v90;
  *(&v125[34] + 1) = *v120;
  HIDWORD(v125[34]) = *&v120[3];
  memset(&v125[35], 0, 32);
  LOBYTE(v125[39]) = 1;
  memcpy(&v70[v76], v125, 0x139uLL);
  v77 = &v70[v71[20]];
  *v77 = 0;
  v77[8] = 1;
  sub_23E8001E0(v69, &v70[v71[24]], &qword_27E35AE38, &qword_23E831AE8);
  v78 = &v70[v71[28]];
  *v78 = 0;
  v78[8] = 1;
  sub_23E8001E0(&v121, &v126, &qword_27E35AEB0, &qword_23E831C10);
  sub_23E8001E0(v125, &v126, &qword_27E35AEB8, &qword_23E831C18);
  sub_23E7F55E0(v59, &qword_27E35AE38, &qword_23E831AE8);
  v79 = v101;
  v80 = *(v100 + 8);
  v80(v102, v101);
  sub_23E7F55E0(v69, &qword_27E35AE38, &qword_23E831AE8);
  *&v127[145] = *&v103[144];
  *&v127[161] = *&v103[160];
  *&v127[177] = *&v103[176];
  *&v127[81] = *&v103[80];
  *&v127[97] = *&v103[96];
  *&v127[113] = *&v103[112];
  *&v127[129] = *&v103[128];
  *&v127[17] = *&v103[16];
  *&v127[33] = *&v103[32];
  *&v127[49] = *&v103[48];
  *&v127[65] = *&v103[64];
  v126 = v91;
  v127[0] = v89;
  v128 = *&v103[192];
  *&v127[1] = *v103;
  v129 = *v104;
  v130 = *&v104[16];
  *v131 = *&v104[32];
  *&v131[15] = *&v104[47];
  v132 = v90;
  *v133 = *v120;
  *&v133[3] = *&v120[3];
  v134 = 0u;
  v135 = 0u;
  v136 = 1;
  sub_23E7F55E0(&v126, &qword_27E35AEB8, &qword_23E831C18);
  v137[0] = v95;
  v137[1] = v94;
  v138 = v92;
  *v139 = *v155;
  *&v139[3] = *&v155[3];
  v140 = v97;
  v141 = v93;
  v142 = 1;
  *v143 = *v154;
  *&v143[3] = *&v154[3];
  v144 = v96;
  *v145 = *v153;
  *&v145[3] = *&v153[3];
  v147 = 0u;
  v146 = 0u;
  v148 = 1;
  v149 = v157;
  v150 = v158;
  v151 = v98;
  sub_23E7F55E0(v137, &qword_27E35AEB0, &qword_23E831C10);
  return (v80)(v99, v79);
}

uint64_t sub_23E82924C@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  v3 = v28 > 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  v4 = v28;
  *&v40 = 0x4040000000000000;
  sub_23E82E86C();
  v5 = v28;
  v6 = sub_23E82E5FC();
  LOBYTE(v28) = 1;
  sub_23E82953C(&v28);
  v7 = v28;
  v15 = BYTE1(v29);
  v16 = v29;
  sub_23E82969C(&v28);
  v8 = v28;
  v9 = v29;
  v10 = BYTE1(v29);
  v11 = sub_23E82E60C();
  v18 = v5;
  LOBYTE(v19) = v3;
  BYTE1(v19) = v4;
  BYTE8(v19) = v6;
  v20 = 0u;
  v21 = 0u;
  v22 = 1;
  LOBYTE(v32) = 1;
  v30 = 0u;
  v31 = 0u;
  v28 = v5;
  v29 = v19;
  v23 = v8;
  LOBYTE(v24) = v9;
  BYTE1(v24) = v10;
  BYTE8(v24) = v11;
  v25 = 0u;
  v26 = 0u;
  v27 = 1;
  *&v17[7] = v8;
  v17[71] = 1;
  memset(&v17[39], 0, 32);
  *&v17[23] = v24;
  v12 = v19;
  v13 = v32;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = v5;
  *(a2 + 16) = v12;
  *(a2 + 64) = v13;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  *(a2 + 88) = v7;
  *(a2 + 104) = v16;
  *(a2 + 105) = v15;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  *(a2 + 121) = *v17;
  *(a2 + 185) = *&v17[64];
  *(a2 + 169) = *&v17[48];
  *(a2 + 153) = *&v17[32];
  *(a2 + 137) = *&v17[16];
  v33 = v8;
  v34 = v9;
  v35 = v10;
  v36 = v11;
  v37 = 0u;
  v38 = 0u;
  v39 = 1;
  sub_23E8001E0(&v18, &v40, &qword_27E35AEC0, &qword_23E831C20);

  sub_23E8001E0(&v23, &v40, &qword_27E35AEC0, &qword_23E831C20);
  sub_23E7F55E0(&v33, &qword_27E35AEC0, &qword_23E831C20);

  v40 = v5;
  v41 = v3;
  v42 = v4;
  v43 = v6;
  v44 = 0u;
  v45 = 0u;
  v46 = 1;
  return sub_23E7F55E0(&v40, &qword_27E35AEC0, &qword_23E831C20);
}

double sub_23E82953C@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  if (*&v5 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23E82E0CC();

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  sub_23E82E86C();
  result = v5;
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = *&v5 > 1;
  *(a2 + 17) = v3;
  return result;
}

double sub_23E82969C@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  if (*&v5 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23E82E0CC();

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  sub_23E82E86C();
  result = v5;
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = *&v5 == 3;
  *(a2 + 17) = v3;
  return result;
}

uint64_t sub_23E8297FC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return sub_23E82E8BC();
}

uint64_t sub_23E8298A4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23E82E0DC();
  v3 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_allSuccessfulEnrollments;
  swift_beginAccess();
  v4 = MEMORY[0x277D84F90];
  *(a2 + v3) = MEMORY[0x277D84F90];

  v5 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_allCollectedEnrollments;
  swift_beginAccess();
  *(a2 + v5) = v4;

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23E82E0DC();
  return sub_23E81B214();
}

uint64_t sub_23E8299C0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  if (v3 == 3)
  {
    sub_23E810118();
    return sub_23E810ECC();
  }

  return result;
}

uint64_t sub_23E829A48@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_23E82E3EC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ADA0, &qword_23E8319F8);
  return sub_23E827CA4(v4, v3, a1 + *(v5 + 44));
}

unint64_t sub_23E829AB4()
{
  result = qword_27E35ADE8;
  if (!qword_27E35ADE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35ADB0, &qword_23E831A08);
    sub_23E829B40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ADE8);
  }

  return result;
}

unint64_t sub_23E829B40()
{
  result = qword_27E35ADF0;
  if (!qword_27E35ADF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35ADA8, &qword_23E831A00);
    sub_23E829BCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ADF0);
  }

  return result;
}

unint64_t sub_23E829BCC()
{
  result = qword_27E35ADF8;
  if (!qword_27E35ADF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35ADE0, &unk_23E831A80);
    sub_23E7F5640(&qword_27E35AE00, &qword_27E35AE08, &qword_23E831A90, MEMORY[0x277CE1198]);
    sub_23E7F5640(&qword_27E35AE10, &qword_27E35AE18, &qword_23E831A98, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ADF8);
  }

  return result;
}

unint64_t sub_23E829CE4()
{
  result = qword_27E35AE20;
  if (!qword_27E35AE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35ADD0, &qword_23E831A28);
    sub_23E829D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AE20);
  }

  return result;
}

unint64_t sub_23E829D70()
{
  result = qword_27E35AE28;
  if (!qword_27E35AE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35ADC8, &qword_23E831A20);
    sub_23E829DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AE28);
  }

  return result;
}

unint64_t sub_23E829DFC()
{
  result = qword_27E35AE30;
  if (!qword_27E35AE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35ADC0, &qword_23E831A18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35ADB0, &qword_23E831A08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A268, &qword_23E830350);
    sub_23E829AB4();
    sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AE30);
  }

  return result;
}

uint64_t sub_23E829F24@<X0>(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AEF8, &qword_23E831D90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AF00, &qword_23E831D98);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  *&v87 = a4;
  *(&v87 + 1) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AF08, &qword_23E831DA0);
  sub_23E82E87C();
  if ((v72 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    if (a2)
    {
      v17 = sub_23E82E82C();
    }

    else if ((a2 & 0x100) != 0)
    {
      v17 = sub_23E82E7FC();
    }

    else
    {
      v18 = [objc_opt_self() secondarySystemFillColor];
      v17 = sub_23E82E7EC();
    }

    v56 = v17;
    sub_23E82E1BC();
    v19 = v82;
    v20 = v83;
    v21 = v84;
    v53 = v85;
    v22 = v86;
    v23 = sub_23E82E91C();
    v54 = v24;
    v55 = v23;
    v59 = v11;
    v60 = v14;
    v58 = v10;
    v57 = a2;
    v25 = a1;
    if (a2)
    {
      v26 = sub_23E82E82C();
    }

    else if ((a2 & 0x100) != 0)
    {
      v26 = sub_23E82E7FC();
    }

    else
    {
      v27 = [objc_opt_self() secondarySystemFillColor];
      v26 = sub_23E82E7EC();
    }

    v52 = v26;
    KeyPath = swift_getKeyPath();
    v29 = sub_23E82E91C();
    v31 = v30;
    *&v87 = a4;
    *(&v87 + 1) = v25;
    sub_23E82E87C();
    *&v87 = a4;
    *(&v87 + 1) = v25;
    sub_23E82E87C();
    sub_23E82E91C();
    sub_23E82E1FC();
    *&v72 = v19 * 0.5;
    *(&v72 + 1) = v19;
    *&v73 = v20;
    *(&v73 + 1) = v21;
    *&v74 = v53;
    *(&v74 + 1) = v22;
    *&v75 = v56;
    WORD4(v75) = 256;
    *&v76 = v55;
    *(&v76 + 1) = v54;
    *&v77 = KeyPath;
    *(&v77 + 1) = v52;
    *&v78 = v29;
    *(&v78 + 1) = v31;
    nullsub_1();
    v93 = v78;
    v94 = v79;
    v95 = v80;
    v96 = v81;
    v89 = v74;
    v90 = v75;
    v91 = v76;
    v92 = v77;
    v87 = v72;
    v88 = v73;
    v11 = v59;
    v14 = v60;
    v10 = v58;
    LOWORD(a2) = v57;
  }

  else
  {
    sub_23E82B4D0(&v87);
  }

  sub_23E82A4C0(a2 & 0x101, v16);
  v32 = sub_23E82E63C();
  (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
  v33 = sub_23E82E65C();
  sub_23E7F55E0(v10, &qword_27E35AEF8, &qword_23E831D90);
  v34 = swift_getKeyPath();
  v35 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AF10, &qword_23E831DA8) + 36)];
  *v35 = v34;
  v35[1] = v33;
  LOBYTE(v33) = sub_23E82E5CC();
  v36 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AF18, &qword_23E831DB0) + 36)];
  *v36 = v33;
  *(v36 + 8) = 0u;
  *(v36 + 24) = 0u;
  v36[40] = 1;
  v37 = sub_23E82E91C();
  v38 = &v16[*(v11 + 36)];
  *v38 = sub_23E82A970;
  v38[1] = 0;
  v38[2] = v37;
  v38[3] = v39;
  v67 = v93;
  v68 = v94;
  v69 = v95;
  v70 = v96;
  v63 = v89;
  v64 = v90;
  v65 = v91;
  v66 = v92;
  v61 = v87;
  v62 = v88;
  sub_23E8001E0(v16, v14, &qword_27E35AF00, &qword_23E831D98);
  v40 = v68;
  v71[6] = v67;
  v71[7] = v68;
  v41 = v69;
  v42 = v70;
  v71[8] = v69;
  v71[9] = v70;
  v43 = v63;
  v44 = v64;
  v71[2] = v63;
  v71[3] = v64;
  v45 = v65;
  v46 = v66;
  v71[4] = v65;
  v71[5] = v66;
  v47 = v61;
  v48 = v62;
  v71[0] = v61;
  v71[1] = v62;
  a3[6] = v67;
  a3[7] = v40;
  a3[8] = v41;
  a3[9] = v42;
  a3[2] = v43;
  a3[3] = v44;
  a3[4] = v45;
  a3[5] = v46;
  *a3 = v47;
  a3[1] = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AF20, &qword_23E831DB8);
  sub_23E8001E0(v14, a3 + *(v49 + 48), &qword_27E35AF00, &qword_23E831D98);
  sub_23E8001E0(v71, &v72, &qword_27E35AF28, &unk_23E831DC0);
  sub_23E7F55E0(v16, &qword_27E35AF00, &qword_23E831D98);
  sub_23E7F55E0(v14, &qword_27E35AF00, &qword_23E831D98);
  v78 = v67;
  v79 = v68;
  v80 = v69;
  v81 = v70;
  v74 = v63;
  v75 = v64;
  v76 = v65;
  v77 = v66;
  v72 = v61;
  v73 = v62;
  return sub_23E7F55E0(&v72, &qword_27E35AF28, &unk_23E831DC0);
}

uint64_t sub_23E82A4C0@<X0>(__int16 a1@<W1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A560, &unk_23E8303E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = sub_23E82E9AC();
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_23E82E98C();
  v11 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 & 0x100) != 0 || (a1)
  {
    v19 = sub_23E82E85C();
    v20 = sub_23E82E83C();
    v27 = v5;
    v30 = v19;
    v31 = v20;
    sub_23E82E64C();
    v26 = v4;
    v21 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A580, &unk_23E830400);
    v25 = v8;
    sub_23E800258();
    sub_23E82E6CC();

    sub_23E82E97C();
    sub_23E82E99C();
    v22 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AF30, &qword_23E831DD0) + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AF38, &qword_23E831DD8);
    sub_23E82B718(&qword_27E35AF40, MEMORY[0x277CE1598], MEMORY[0x277CE1590]);
    v23 = v28;
    sub_23E82E30C();
    (*(v29 + 8))(v10, v25);
    (*(v11 + 8))(v13, v23);
    *v22 = swift_getKeyPath();
    return (*(v27 + 32))(v21, v7, v26);
  }

  else
  {
    v14 = sub_23E82E85C();
    v15 = sub_23E82E81C();
    v30 = v14;
    v31 = v15;
    sub_23E82E64C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A580, &unk_23E830400);
    sub_23E800258();
    sub_23E82E6CC();

    sub_23E82E97C();
    sub_23E82E99C();
    v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AF30, &qword_23E831DD0) + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AF38, &qword_23E831DD8);
    sub_23E82B718(&qword_27E35AF40, MEMORY[0x277CE1598], MEMORY[0x277CE1590]);
    v17 = v28;
    sub_23E82E30C();
    (*(v29 + 8))(v10, v8);
    (*(v11 + 8))(v13, v17);
    result = swift_getKeyPath();
    *v16 = result;
  }

  return result;
}

uint64_t sub_23E82A970@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23E82E81C();
  *a1 = result;
  return result;
}

uint64_t sub_23E82A998@<X0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 17);
  *a2 = sub_23E82E91C();
  a2[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AEF0, &qword_23E831D88);
  if (v7)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return sub_23E829F24(v5, v10 | v6, (a2 + *(v9 + 44)), v4);
}

uint64_t sub_23E82AA18@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(sub_23E82E2EC() + 20);
  v6 = *MEMORY[0x277CE0118];
  v7 = sub_23E82E45C();
  (*(*(v7 - 8) + 104))(&a1[v5], v6, v7);
  __asm { FMOV            V0.2D, #3.0 }

  *a1 = _Q0;
  KeyPath = swift_getKeyPath();
  v14 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AED8, &qword_23E831D70) + 36)];
  *v14 = KeyPath;
  *(v14 + 1) = v4;

  sub_23E82E91C();
  sub_23E82E1FC();
  v15 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AEE0, &qword_23E831D78) + 36)];
  *v15 = v19;
  *(v15 + 1) = v20;
  *(v15 + 2) = v21;
  v16 = sub_23E82E95C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AEE8, &qword_23E831D80);
  v18 = &a1[*(result + 36)];
  *v18 = v16;
  *(v18 + 1) = v3;
  return result;
}

uint64_t sub_23E82AB84(uint64_t a1)
{
  v2 = sub_23E82E31C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23E82E35C();
}

uint64_t sub_23E82AC4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23E82E36C();
  *a1 = result;
  return result;
}

uint64_t sub_23E82ACA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23E82E38C();
  *a1 = result;
  return result;
}

uint64_t sub_23E82ACF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_23E82E42C();
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  sub_23E82E41C();
  sub_23E82E40C();
  swift_beginAccess();
  type metadata accessor for AdaptiveVoiceShortcut(0);

  sub_23E82E3FC();

  sub_23E82E40C();
  return sub_23E82E44C();
}

unint64_t sub_23E82AFE8()
{
  result = qword_27E35AE60;
  if (!qword_27E35AE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AE50, &qword_23E831B00);
    sub_23E82B0A0();
    sub_23E7F5640(&qword_27E35AE78, &qword_27E35AE80, &unk_23E831B78, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AE60);
  }

  return result;
}

unint64_t sub_23E82B0A0()
{
  result = qword_27E35AE68;
  if (!qword_27E35AE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AE48, &qword_23E831AF8);
    sub_23E82B158();
    sub_23E7F5640(&qword_27E35A6D0, &qword_27E35A6D8, &qword_23E831B70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AE68);
  }

  return result;
}

unint64_t sub_23E82B158()
{
  result = qword_27E35AE70;
  if (!qword_27E35AE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AE40, &qword_23E831AF0);
    sub_23E82B718(&qword_27E35A5F8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AE70);
  }

  return result;
}

unint64_t sub_23E82B214()
{
  result = qword_27E35AB78;
  if (!qword_27E35AB78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E35AB78);
  }

  return result;
}

uint64_t sub_23E82B260@<X0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = fminf((*a1 * 80.0) + 4.4444, 80.0);
  result = sub_23E82E80C();
  *a2 = 0x4008000000000000;
  *(a2 + 8) = v3;
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_23E82B2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E35AEA0;
  if (!qword_27E35AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AEA0);
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

uint64_t sub_23E82B32C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23E82B374(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_23E82B3D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_23E82B434(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_23E82B4D0(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_23E82B4EC()
{
  result = qword_27E35AF48;
  if (!qword_27E35AF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AEE8, &qword_23E831D80);
    sub_23E82B5A4();
    sub_23E7F5640(&qword_27E35AF78, &qword_27E35AF80, &qword_23E831E18, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AF48);
  }

  return result;
}

unint64_t sub_23E82B5A4()
{
  result = qword_27E35AF50;
  if (!qword_27E35AF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AEE0, &qword_23E831D78);
    sub_23E82B630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AF50);
  }

  return result;
}

unint64_t sub_23E82B630()
{
  result = qword_27E35AF58;
  if (!qword_27E35AF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AED8, &qword_23E831D70);
    sub_23E82B718(&qword_27E35AF60, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    sub_23E7F5640(&qword_27E35AF68, &qword_27E35AF70, &qword_23E831E10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AF58);
  }

  return result;
}

uint64_t sub_23E82B718(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23E82B76C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23E82B7B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23E82B820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a2;
  v47 = a4;
  LODWORD(v43) = a3;
  v52 = a5;
  v6 = sub_23E82DF7C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A208, &qword_23E830130);
  MEMORY[0x28223BE20](v10 - 8);
  v51 = v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AF98, &unk_23E831ED0);
  v49 = *(v12 - 8);
  v50 = v12;
  MEMORY[0x28223BE20](v12);
  v48 = v42 - v13;
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v14 = qword_27E35D0B8;
  if (qword_27E35D0B8)
  {
    v15 = qword_27E35D0B8;
    v16 = qword_27E35D0B8;
  }

  else
  {
    v16 = [objc_opt_self() mainBundle];
    v15 = 0;
  }

  v17 = v15;
  v40 = 0x800000023E833290;
  v18 = sub_23E82DCDC();
  v44 = v19;
  v45 = v18;

  if (!v14)
  {
    v17 = [objc_opt_self() mainBundle];
  }

  v40 = 0x800000023E833290;
  v20 = sub_23E82DCDC();
  v42[1] = v21;
  v42[2] = v20;

  v42[3] = v42;
  v23 = MEMORY[0x28223BE20](v22);
  v42[0] = v37;
  MEMORY[0x28223BE20](v23);
  v43 = v37;
  v38 = a1;
  v39 = v24;
  LOBYTE(v40) = v25;
  v41 = v26;
  v53 = MEMORY[0x277D84F90];
  sub_23E82D1F0(&qword_27E35A228, MEMORY[0x277CE7670], MEMORY[0x277CE7680]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A230, &qword_23E82FFE0);
  sub_23E7F5640(&qword_27E35A238, &qword_27E35A230, &qword_23E82FFE0, MEMORY[0x277D83970]);
  sub_23E82ECAC();
  sub_23E82E8EC();
  (*(v7 + 8))(v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AFA0, &qword_23E831EE0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AFA8, &qword_23E831EE8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AFB0, &qword_23E831EF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AFB8, &qword_23E831EF8);
  v30 = sub_23E82D114();
  v31 = sub_23E7F5640(&qword_27E35AFD0, &qword_27E35AFB8, &qword_23E831EF8, MEMORY[0x277CDD978]);
  v53 = v28;
  v54 = v29;
  v55 = v30;
  v56 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = sub_23E7F5640(&qword_27E35AFD8, &qword_27E35AFA8, &qword_23E831EE8, MEMORY[0x277CE1198]);
  v40 = MEMORY[0x277CE1410];
  v38 = OpaqueTypeConformance2;
  v37[0] = v27;
  v37[1] = MEMORY[0x277CE1428];
  v33 = v48;
  sub_23E82DF5C();
  v34 = v52;
  (*(v49 + 32))(v52, v33, v50);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AFE0, &qword_23E831F00);
  v36 = (v34 + *(result + 36));
  *v36 = 0;
  v36[1] = 0;
  v36[2] = sub_23E82D0A8;
  v36[3] = 0;
  return result;
}

uint64_t sub_23E82BE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a4;
  v30 = a2;
  v31 = a1;
  v32 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35B000, &unk_23E831F20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v27 = sub_23E82DF8C();
  v9 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AFB0, &qword_23E831EF0);
  MEMORY[0x28223BE20](v33);
  v28 = &v27 - v12;
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v13 = qword_27E35D0B8;
  if (qword_27E35D0B8)
  {
    v14 = qword_27E35D0B8;
  }

  else
  {
    v14 = [objc_opt_self() mainBundle];
    v13 = 0;
  }

  v15 = v13;
  sub_23E82DCDC();

  v16 = sub_23E82E0FC();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  v17 = swift_allocObject();
  v18 = v30;
  v19 = v31;
  *(v17 + 16) = v31;
  *(v17 + 24) = v18;
  v20 = a3 & 1;
  *(v17 + 32) = a3 & 1;
  v21 = v29;
  *(v17 + 40) = v29;

  sub_23E82DF9C();
  v22 = sub_23E82E5CC();
  v23 = v28;
  (*(v9 + 32))(v28, v11, v27);
  v24 = v23 + *(v33 + 36);
  *v24 = v22;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  *(v24 + 40) = 1;
  v35 = v20;
  v36 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3B0, &qword_23E8301D0);
  sub_23E82E89C();
  LODWORD(v27) = v34;
  v25 = swift_allocObject();
  *(v25 + 16) = v19;
  *(v25 + 24) = v18;
  *(v25 + 32) = v20;
  *(v25 + 40) = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AFB8, &qword_23E831EF8);
  sub_23E82D114();
  sub_23E7F5640(&qword_27E35AFD0, &qword_27E35AFB8, &qword_23E831EF8, MEMORY[0x277CDD978]);
  sub_23E82E78C();

  return sub_23E82D250(v23);
}

uint64_t sub_23E82C298(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35B008, &qword_23E831F30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A268, &qword_23E830350);
  sub_23E82D2C8(v7, v4, v5);
  sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350, MEMORY[0x277CDF028]);
  swift_getOpaqueTypeConformance2();
  return sub_23E82E23C();
}

void sub_23E82C39C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a3;
  v27 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A268, &qword_23E830350);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  v30 = v12;
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v13 = qword_27E35D0B8;
  if (qword_27E35D0B8)
  {
    v14 = qword_27E35D0B8;
  }

  else
  {
    v14 = [objc_opt_self() mainBundle];
    v13 = 0;
  }

  v15 = v13;
  v16 = sub_23E82DCDC();
  v18 = v17;

  v28 = v16;
  v29 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = v26 & 1;
  *(v19 + 40) = a4;
  sub_23E7F84B0(v19, v20, v21);

  v22 = sub_23E82E8CC();
  sub_23E82D2C8(v22, v23, v24);
  sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350, MEMORY[0x277CDF028]);
  sub_23E82E73C();
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_23E82C644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AFA8, &qword_23E831EE8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  *v13 = sub_23E82E48C();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AFE8, &qword_23E831F08);
  sub_23E82C77C(a1, a2, v6, a4, &v13[*(v14 + 44)]);
  sub_23E7F3284(v13, a5);
  return (*(v11 + 56))(a5, 0, 1, v10);
}

uint64_t sub_23E82C77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v48 = a2;
  v49 = a4;
  v5 = a3;
  v47 = a3;
  v46 = a1;
  v58 = a5;
  v55 = sub_23E82DFBC();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AFF0, &qword_23E831F10);
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v54 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v45 - v11;
  v12 = sub_23E82DFAC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A268, &qword_23E830350);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - v18;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A270, &qword_23E830010);
  v59 = *(v51 - 8);
  v20 = MEMORY[0x28223BE20](v51);
  v50 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v45 - v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  v25 = v48;
  *(v24 + 24) = v48;
  *(v24 + 32) = v5;
  v26 = v49;
  *(v24 + 40) = v49;

  sub_23E82E8BC();
  sub_23E82E15C();
  sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350, MEMORY[0x277CDF028]);
  sub_23E82D1F0(&qword_27E35A280, MEMORY[0x277CE76F0], MEMORY[0x277CE76E0]);
  v45 = v23;
  sub_23E82E6EC();
  (*(v13 + 8))(v15, v12);
  v27 = *(v17 + 8);
  v27(v19, v16);
  v28 = swift_allocObject();
  *(v28 + 16) = v46;
  *(v28 + 24) = v25;
  *(v28 + 32) = v47;
  *(v28 + 40) = v26;

  sub_23E82E8BC();
  v29 = v52;
  sub_23E82E16C();
  sub_23E82D1F0(&qword_27E35A290, MEMORY[0x277CE7708], MEMORY[0x277CE76F8]);
  v30 = v60;
  v31 = v55;
  sub_23E82E6EC();
  (*(v53 + 8))(v29, v31);
  v27(v19, v16);
  v32 = *(v59 + 16);
  v33 = v50;
  v34 = v23;
  v35 = v51;
  v32(v50, v34, v51);
  v36 = v56;
  v37 = v57;
  v38 = *(v56 + 16);
  v39 = v54;
  v38(v54, v30, v57);
  v40 = v58;
  v32(v58, v33, v35);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AFF8, &qword_23E831F18);
  v38(&v40[*(v41 + 48)], v39, v37);
  v42 = *(v36 + 8);
  v42(v60, v37);
  v43 = *(v59 + 8);
  v43(v45, v35);
  v42(v39, v37);
  return (v43)(v33, v35);
}

uint64_t sub_23E82CDF8(uint64_t a1, uint64_t a2)
{
  _AXSSetAudioDonationSiriImprovementEnabled();
  v3 = (a2 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_dismissEnrollmentFlow);
  swift_beginAccess();
  v4 = *v3;

  v4(v5);
}

uint64_t sub_23E82CE70@<X0>(uint64_t a1@<X8>)
{
  sub_23E82E43C();
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v2 = qword_27E35D0B8;
  if (!qword_27E35D0B8)
  {
    v3 = [objc_opt_self() mainBundle];
  }

  v4 = v2;
  result = sub_23E82E68C();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_23E82CF8C@<X0>(uint64_t a1@<X8>)
{
  sub_23E82E43C();
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v2 = qword_27E35D0B8;
  if (!qword_27E35D0B8)
  {
    v3 = [objc_opt_self() mainBundle];
  }

  v4 = v2;
  result = sub_23E82E68C();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

id sub_23E82D0A8()
{
  v0 = objc_opt_self();

  return [v0 setShouldHideAudioDonationPrompt_];
}

unint64_t sub_23E82D114()
{
  result = qword_27E35AFC0;
  if (!qword_27E35AFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AFB0, &qword_23E831EF0);
    sub_23E82D1F0(&qword_27E35AFC8, MEMORY[0x277CE7690], MEMORY[0x277CE7688]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AFC0);
  }

  return result;
}

uint64_t sub_23E82D1F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23E82D250(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AFB0, &qword_23E831EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23E82D2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E35B010;
  if (!qword_27E35B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35B010);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_23E82D3D0()
{
  result = qword_27E35B018;
  if (!qword_27E35B018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AFE0, &qword_23E831F00);
    sub_23E7F5640(&qword_27E35B020, &qword_27E35AF98, &unk_23E831ED0, MEMORY[0x277CE7668]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35B018);
  }

  return result;
}

id sub_23E82D48C()
{
  v5 = *v0;
  v1 = sub_23E82EA5C();
  v2 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v2)
  {
    result = [v2 splashController];
    if (result)
    {
      v4 = result;

      return v4;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    return v5;
  }

  return result;
}

uint64_t sub_23E82D5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E82D69C(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23E82D610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E82D69C(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23E82D674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23E82D69C(a1, a2, a3);
  sub_23E82E58C();
  __break(1u);
}

unint64_t sub_23E82D69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E35B028;
  if (!qword_27E35B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35B028);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27E35D088 == -1)
  {
    if (qword_27E35D090)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27E35D090)
    {
      return _availability_version_check();
    }
  }

  if (qword_27E35D080 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27E35D074 > a3)
      {
        return 1;
      }

      if (dword_27E35D074 >= a3)
      {
        return dword_27E35D078 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27E35D090;
  if (qword_27E35D090)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27E35D090 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x23EF15250](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27E35D074, &dword_27E35D078);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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