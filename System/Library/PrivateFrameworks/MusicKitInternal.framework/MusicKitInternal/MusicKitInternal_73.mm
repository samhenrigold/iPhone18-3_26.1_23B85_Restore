uint64_t sub_1D552EC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D552EC24, a4, 0);
}

uint64_t sub_1D552EC24()
{
  sub_1D552EC88(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

void sub_1D552EC88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8128, &unk_1D56713D8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = type metadata accessor for ActorQueue.TaskState(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v34 - v15);
  if (*(v3 + 112) != 1 || (*(v3 + 152) & 1) == 0 && *(v3 + 144) == a2)
  {
    return;
  }

  v34 = v14;
  v35 = v8;
  v36 = v6;
  v37 = a1;
  swift_beginAccess();
  v17 = *(v3 + 160);

  for (i = 0; ; ++i)
  {
    v19 = v17[3];
    if (i == v19)
    {

      return;
    }

    if (i >= v19)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v20 = v17[4];
    v21 = i + v20 >= v17[2] ? v17[2] : 0;
    v22 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v23 = *(v10 + 72);
    sub_1D552F9B4(v17 + v22 + (i + v20 - v21) * v23, v16);
    v24 = *v16;
    sub_1D552FA18(v16);
    if (v24 == a2)
    {
      break;
    }
  }

  swift_beginAccess();
  if (i >= *(*(v3 + 160) + 24))
  {
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D5531578();
  }

  v27 = *(v3 + 160);
  v28 = *(v27 + 32);
  if (v28 + i >= *(v27 + 16))
  {
    v29 = *(v27 + 16);
  }

  else
  {
    v29 = 0;
  }

  v30 = *(v36 + 48);
  v31 = (v28 - v29 + i) * v23;
  sub_1D5531670(v27 + v22 + v31, &v26[v30]);
  sub_1D5531670(&v26[v30], v13);
  v32 = *(v34 + 20);
  v33 = sub_1D5615458();
  (*(*(v33 - 8) + 24))(&v13[v32], v37, v33);
  sub_1D552F9B4(v13, *(v3 + 160) + v22 + v31);
  sub_1D552FA18(v13);
  swift_endAccess();
  sub_1D552E9A0();
}

uint64_t sub_1D552EF80()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8118, &qword_1D5671310);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8138, &qword_1D56713F8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v24 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - v15;
  swift_beginAccess();
  if (*(*(v0 + 160) + 24) < 1)
  {
    v18 = type metadata accessor for ActorQueue.TaskState(0);
    v19 = v16;
    v20 = 1;
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D5531578();
    }

    v17 = *(v0 + 160);
    v18 = type metadata accessor for ActorQueue.TaskState(0);
    sub_1D55316D4((v17 + 16), v17 + ((*(*(v18 - 8) + 80) + 40) & ~*(*(v18 - 8) + 80)), v16);
    v19 = v16;
    v20 = 0;
  }

  __swift_storeEnumTagSinglePayload(v19, v20, 1, v18);
  swift_endAccess();
  sub_1D5531A30(v16, v14);
  type metadata accessor for ActorQueue.TaskState(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v18);
  if (EnumTagSinglePayload == 1)
  {
    sub_1D5531AA0(v14);
    v22 = 0;
  }

  else
  {
    v22 = *v14;
    sub_1D552FA18(v14);
  }

  *(v1 + 144) = v22;
  *(v1 + 152) = EnumTagSinglePayload == 1;
  sub_1D5531A30(v16, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v18) == 1)
  {
    sub_1D5531AA0(v16);
    v16 = v11;
  }

  else
  {
    (*(v4 + 16))(v7, &v11[*(v18 + 24)], v2);
    sub_1D552FA18(v11);
    sub_1D5615358();
    (*(v4 + 8))(v7, v2);
  }

  return sub_1D5531AA0(v16);
}

uint64_t sub_1D552F270(void *a1)
{
  v3 = type metadata accessor for ActorQueue.TaskState(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D5531578();
  }

  v7 = *a1;
  v8 = *(v4 + 80);
  v9 = (v8 + 40) & ~v8;
  result = sub_1D5531770((*a1 + 16), *a1 + v9);
  if (!v1 && (result & 1) != 0)
  {
    v11 = *(v7 + 24);
    if ((v11 & 0x8000000000000000) == 0)
    {

      if (v11)
      {
        v12 = sub_1D56151D8();
        *(v12 + 16) = v11;
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      v13 = (v8 + 32) & ~v8;
      v25[1] = v11;
      v26 = 0;
      v25[0] = v12 + v13;
      result = sub_1D5531830((v7 + 16), v7 + v9, v25, &v26);
      if (v11 < v26)
      {
        goto LABEL_30;
      }

      *(v12 + 16) = v26;

      v27 = v12;
      result = sub_1D552F4E0(&v27);
      v14 = v27;
      v24 = *(v7 + 24);
      if (v24 < 0)
      {
        goto LABEL_31;
      }

      v15 = v13;
      v16 = 0;
      v17 = *(v27 + 16);
      v22 = v27 + v15;
      v23 = v17;
      while (1)
      {
        if (v24 == v16 || v23 == v16)
        {
        }

        if (v16 >= *(v14 + 16))
        {
          break;
        }

        v19 = *(v4 + 72);
        result = sub_1D552F9B4(v22 + v19 * v16, v6);
        if (v16 >= *(v7 + 24))
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D5531578();
        }

        v7 = *a1;
        v20 = *(*a1 + 32);
        if ((v16 + v20) >= *(*a1 + 16))
        {
          v21 = *(*a1 + 16);
        }

        else
        {
          v21 = 0;
        }

        sub_1D5531970(v6, v7 + v9 + (v16 + v20 - v21) * v19);
        result = sub_1D552FA18(v6);
        ++v16;
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D552F4E0(uint64_t *a1)
{
  v2 = *(type metadata accessor for ActorQueue.TaskState(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D54FBDAC();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1D552FA74(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1D552F588()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for ActorQueue.TaskState(uint64_t a1)
{
  result = qword_1EDD58BD0;
  if (!qword_1EDD58BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D552F658(uint64_t a1)
{
  sub_1D5615458();
  if (v1 <= 0x3F)
  {
    sub_1D552F6EC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D552F6EC()
{
  if (!qword_1EDD52740)
  {
    v0 = sub_1D5615368();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD52740);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ActorQueue.TaskOrder(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D552F830()
{
  result = qword_1EC7F8120;
  if (!qword_1EC7F8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F8120);
  }

  return result;
}

uint64_t sub_1D552F884(uint64_t a1)
{
  v4 = *(sub_1D5615458() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D4ECF3E8;

  return sub_1D552EC00(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1D552F9B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActorQueue.TaskState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D552FA18(uint64_t a1)
{
  v2 = type metadata accessor for ActorQueue.TaskState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D552FA74(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D56160E8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ActorQueue.TaskState(0);
        v6 = sub_1D56151D8();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ActorQueue.TaskState(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D552FDC0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D552FBA4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D552FBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ActorQueue.TaskState(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v27 - v13);
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = (&v27 - v17);
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v34 = v19;
    v28 = v20;
    v24 = v19 + v20 * a3;
    while (2)
    {
      v32 = v21;
      v33 = a3;
      v30 = v24;
      v31 = v23;
      do
      {
        sub_1D552F9B4(v24, v18);
        sub_1D552F9B4(v21, v14);
        if (sub_1D5615408())
        {
          v25 = sub_1D56153E8();
        }

        else
        {
          v25 = *v18 < *v14;
        }

        sub_1D552FA18(v14);
        result = sub_1D552FA18(v18);
        if ((v25 & 1) == 0)
        {
          break;
        }

        if (!v34)
        {
          __break(1u);
          return result;
        }

        sub_1D5531670(v24, v11);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1D5531670(v11, v21);
        v21 += v22;
        v24 += v22;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v33 + 1;
      v21 = v32 + v28;
      v23 = v31 - 1;
      v24 = v30 + v28;
      if (v33 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1D552FDC0(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v118 = a1;
  v6 = type metadata accessor for ActorQueue.TaskState(0);
  v126 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v121 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v132 = &v112 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v112 - v12);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v112 - v15);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v123 = (&v112 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = (&v112 - v21);
  MEMORY[0x1EEE9AC00](v20);
  v25 = (&v112 - v23);
  v128 = a3;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x1E69E7CC0];
LABEL_105:
    a4 = *v118;
    if (!*v118)
    {
      goto LABEL_145;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_107:
      v104 = (v28 + 16);
      for (i = *(v28 + 16); i >= 2; *v104 = i)
      {
        if (!*v128)
        {
          goto LABEL_142;
        }

        v106 = (v28 + 16 * i);
        v107 = *v106;
        v108 = &v104[2 * i];
        v109 = v108[1];
        v110 = v131;
        sub_1D5530708(*v128 + *(v126 + 72) * *v106, *v128 + *(v126 + 72) * *v108, *v128 + *(v126 + 72) * v109, a4);
        v131 = v110;
        if (v110)
        {
          break;
        }

        if (v109 < v107)
        {
          goto LABEL_130;
        }

        if (i - 2 >= *v104)
        {
          goto LABEL_131;
        }

        *v106 = v107;
        v106[1] = v109;
        v111 = *v104 - i;
        if (*v104 < i)
        {
          goto LABEL_132;
        }

        i = *v104 - 1;
        memmove(v108, v108 + 2, 16 * v111);
      }

LABEL_103:

      return;
    }

LABEL_139:
    v28 = sub_1D5530B8C(v28);
    goto LABEL_107;
  }

  v113 = a4;
  v114 = v24;
  v27 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  v133 = v6;
  v115 = &v112 - v23;
  v116 = v22;
  v122 = v16;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    v119 = v27;
    if (v27 + 1 < v26)
    {
      v124 = v26;
      v31 = *v128;
      v32 = *(v126 + 72);
      v130 = v27 + 1;
      sub_1D552F9B4(v31 + v32 * v30, v25);
      v127 = v32;
      sub_1D552F9B4(v31 + v32 * v29, v22);
      v33 = sub_1D5615408();
      v117 = v28;
      if (v33)
      {
        LODWORD(v125) = sub_1D56153E8();
      }

      else
      {
        LODWORD(v125) = *v25 < *v22;
      }

      sub_1D552FA18(v22);
      sub_1D552FA18(v25);
      v34 = v29 + 2;
      v35 = v127 * (v29 + 2);
      v36 = v31 + v35;
      v37 = v130;
      v38 = v127 * v130;
      v39 = v31 + v127 * v130;
      v40 = v114;
      do
      {
        v28 = v34;
        v41 = v37;
        a4 = v38;
        v42 = v35;
        if (v34 >= v124)
        {
          break;
        }

        v129 = v34;
        v130 = v37;
        sub_1D552F9B4(v36, v40);
        v43 = v123;
        sub_1D552F9B4(v39, v123);
        v44 = (sub_1D5615408() & 1) != 0 ? sub_1D56153E8() : *v40 < *v43;
        sub_1D552FA18(v43);
        sub_1D552FA18(v40);
        v28 = v129;
        v41 = v130;
        v34 = v129 + 1;
        v36 += v127;
        v39 += v127;
        v37 = v130 + 1;
        v38 = a4 + v127;
        v35 = v42 + v127;
      }

      while ((v125 & 1) == (v44 & 1));
      if (v125)
      {
        v29 = v119;
        if (v28 < v119)
        {
          goto LABEL_136;
        }

        if (v119 >= v28)
        {
          v30 = v28;
          v28 = v117;
          goto LABEL_33;
        }

        v45 = v119 * v127;
        do
        {
          if (v29 != v41)
          {
            v130 = v41;
            v46 = *v128;
            if (!*v128)
            {
              goto LABEL_143;
            }

            sub_1D5531670(v46 + v45, v121);
            v47 = v45 < a4 || v46 + v45 >= (v46 + v42);
            if (v47)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v45 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1D5531670(v121, v46 + a4);
            v41 = v130;
          }

          ++v29;
          a4 -= v127;
          v42 -= v127;
          v45 += v127;
        }

        while (v29 < v41--);
        v30 = v28;
        v28 = v117;
      }

      else
      {
        v30 = v28;
        v28 = v117;
      }

      v29 = v119;
    }

LABEL_33:
    v49 = v128[1];
    if (v30 < v49)
    {
      if (__OFSUB__(v30, v29))
      {
        goto LABEL_135;
      }

      if (v30 - v29 < v113)
      {
        break;
      }
    }

LABEL_52:
    if (v30 < v29)
    {
      goto LABEL_134;
    }

    v130 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D4F01D2C(0, *(v28 + 16) + 1, 1, v28);
      v28 = v102;
    }

    v59 = *(v28 + 16);
    v58 = *(v28 + 24);
    v60 = v59 + 1;
    v27 = v130;
    if (v59 >= v58 >> 1)
    {
      sub_1D4F01D2C(v58 > 1, v59 + 1, 1, v28);
      v27 = v130;
      v28 = v103;
    }

    *(v28 + 16) = v60;
    v61 = v28 + 32;
    v62 = (v28 + 32 + 16 * v59);
    *v62 = v119;
    v62[1] = v27;
    v129 = *v118;
    if (!v129)
    {
      goto LABEL_144;
    }

    if (v59)
    {
      while (1)
      {
        v63 = v60 - 1;
        v64 = (v61 + 16 * (v60 - 1));
        v65 = (v28 + 16 * v60);
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v66 = *(v28 + 32);
          v67 = *(v28 + 40);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_72:
          if (v69)
          {
            goto LABEL_121;
          }

          v81 = *v65;
          v80 = v65[1];
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_124;
          }

          v85 = v64[1];
          v86 = v85 - *v64;
          if (__OFSUB__(v85, *v64))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v83, v86))
          {
            goto LABEL_129;
          }

          if (v83 + v86 >= v68)
          {
            if (v68 < v86)
            {
              v63 = v60 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v60 < 2)
        {
          goto LABEL_123;
        }

        v88 = *v65;
        v87 = v65[1];
        v76 = __OFSUB__(v87, v88);
        v83 = v87 - v88;
        v84 = v76;
LABEL_87:
        if (v84)
        {
          goto LABEL_126;
        }

        v90 = *v64;
        v89 = v64[1];
        v76 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v76)
        {
          goto LABEL_128;
        }

        if (v91 < v83)
        {
          goto LABEL_101;
        }

LABEL_94:
        if (v63 - 1 >= v60)
        {
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
          goto LABEL_138;
        }

        if (!*v128)
        {
          goto LABEL_141;
        }

        v95 = v13;
        v96 = v28;
        v97 = (v61 + 16 * (v63 - 1));
        v98 = *v97;
        v99 = v63;
        v100 = (v61 + 16 * v63);
        v28 = v100[1];
        v101 = v131;
        sub_1D5530708(*v128 + *(v126 + 72) * *v97, *v128 + *(v126 + 72) * *v100, *v128 + *(v126 + 72) * v28, v129);
        v131 = v101;
        if (v101)
        {
          goto LABEL_103;
        }

        if (v28 < v98)
        {
          goto LABEL_116;
        }

        a4 = *(v96 + 16);
        if (v99 > a4)
        {
          goto LABEL_117;
        }

        *v97 = v98;
        v97[1] = v28;
        if (v99 >= a4)
        {
          goto LABEL_118;
        }

        v60 = a4 - 1;
        memmove(v100, v100 + 2, 16 * (a4 - 1 - v99));
        v28 = v96;
        *(v96 + 16) = a4 - 1;
        v27 = v130;
        v13 = v95;
        v16 = v122;
        if (a4 <= 2)
        {
          goto LABEL_101;
        }
      }

      v70 = v61 + 16 * v60;
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_119;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_120;
      }

      v77 = v65[1];
      v78 = v77 - *v65;
      if (__OFSUB__(v77, *v65))
      {
        goto LABEL_122;
      }

      v76 = __OFADD__(v68, v78);
      v79 = v68 + v78;
      if (v76)
      {
        goto LABEL_125;
      }

      if (v79 >= v73)
      {
        v93 = *v64;
        v92 = v64[1];
        v76 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v76)
        {
          goto LABEL_133;
        }

        if (v68 < v94)
        {
          v63 = v60 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

LABEL_101:
    v26 = v128[1];
    v25 = v115;
    v22 = v116;
    if (v27 >= v26)
    {
      goto LABEL_105;
    }
  }

  v50 = v29 + v113;
  if (__OFADD__(v29, v113))
  {
    goto LABEL_137;
  }

  if (v50 >= v49)
  {
    v50 = v128[1];
  }

  if (v50 < v29)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v30 == v50)
  {
    goto LABEL_52;
  }

  v117 = v28;
  v51 = *v128;
  v52 = *(v126 + 72);
  v53 = *v128 + v52 * (v30 - 1);
  v54 = -v52;
  v55 = v29 - v30;
  v120 = v52;
  a4 = v51 + v30 * v52;
  v124 = v50;
LABEL_42:
  v129 = v53;
  v130 = v30;
  v125 = a4;
  v127 = v55;
  while (1)
  {
    sub_1D552F9B4(a4, v16);
    sub_1D552F9B4(v53, v13);
    if (sub_1D5615408())
    {
      v56 = sub_1D56153E8();
    }

    else
    {
      v56 = *v16 < *v13;
    }

    sub_1D552FA18(v13);
    sub_1D552FA18(v16);
    if ((v56 & 1) == 0)
    {
LABEL_50:
      v30 = v130 + 1;
      v53 = v129 + v120;
      v55 = v127 - 1;
      a4 = v125 + v120;
      if (v130 + 1 == v124)
      {
        v30 = v124;
        v28 = v117;
        v29 = v119;
        goto LABEL_52;
      }

      goto LABEL_42;
    }

    if (!v51)
    {
      break;
    }

    v57 = v132;
    sub_1D5531670(a4, v132);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D5531670(v57, v53);
    v53 += v54;
    a4 += v54;
    v47 = __CFADD__(v55++, 1);
    if (v47)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_1D5530708(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v50 = type metadata accessor for ActorQueue.TaskState(0);
  v8 = MEMORY[0x1EEE9AC00](v50);
  v48 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v44 - v12);
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = (&v44 - v16);
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return result;
  }

  v20 = a2 - a1;
  v21 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v21)
  {
    goto LABEL_67;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_68;
  }

  v24 = v20 / v19;
  v53 = a1;
  v52 = a4;
  v25 = v22 / v19;
  if (v20 / v19 >= v22 / v19)
  {
    v46 = v15;
    sub_1D4F038AC(a2, v22 / v19, a4);
    v31 = a4 + v25 * v19;
    v32 = -v19;
    v33 = v31;
    v49 = -v19;
LABEL_40:
    v47 = a2 + v32;
    v34 = a3;
    v44 = v33;
    while (1)
    {
      if (v31 <= a4)
      {
        v53 = a2;
        v51 = v33;
        goto LABEL_65;
      }

      if (a2 <= a1)
      {
        break;
      }

      v45 = v33;
      v35 = v31 + v32;
      v36 = v46;
      sub_1D552F9B4(v31 + v32, v46);
      v37 = v48;
      sub_1D552F9B4(v47, v48);
      if (sub_1D5615408())
      {
        v38 = sub_1D56153E8();
      }

      else
      {
        v38 = *v36 < *v37;
      }

      v39 = v37;
      a3 = v34 + v49;
      sub_1D552FA18(v39);
      sub_1D552FA18(v36);
      if (v38)
      {
        if (v34 < a2 || a3 >= a2)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v45;
          v32 = v49;
        }

        else
        {
          v33 = v45;
          v21 = v34 == a2;
          v42 = v47;
          a2 = v47;
          v32 = v49;
          if (!v21)
          {
            v43 = v45;
            swift_arrayInitWithTakeBackToFront();
            a2 = v42;
            v33 = v43;
          }
        }

        goto LABEL_40;
      }

      if (v34 < v31 || a3 >= v31)
      {
        swift_arrayInitWithTakeFrontToBack();
        v34 = a3;
        v31 = v35;
        v33 = v35;
        v32 = v49;
      }

      else
      {
        v33 = v35;
        v21 = v31 == v34;
        v34 = a3;
        v31 = v35;
        v32 = v49;
        if (!v21)
        {
          swift_arrayInitWithTakeBackToFront();
          v34 = a3;
          v31 = v35;
          v33 = v35;
        }
      }
    }

    v53 = a2;
    v51 = v44;
  }

  else
  {
    sub_1D4F038AC(a1, v20 / v19, a4);
    v26 = a4 + v24 * v19;
    v51 = v26;
    while (a4 < v26 && a2 < a3)
    {
      sub_1D552F9B4(a2, v17);
      sub_1D552F9B4(a4, v13);
      if (sub_1D5615408())
      {
        v28 = sub_1D56153E8();
      }

      else
      {
        v28 = *v17 < *v13;
      }

      sub_1D552FA18(v13);
      sub_1D552FA18(v17);
      if (v28)
      {
        if (a1 < a2 || a1 >= a2 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v19;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v52 = a4 + v19;
        a4 += v19;
      }

      a1 += v19;
      v53 = a1;
    }
  }

LABEL_65:
  sub_1D5530BD0(&v53, &v52, &v51, type metadata accessor for ActorQueue.TaskState);
  return 1;
}

uint64_t sub_1D5530BD0(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  v10 = v5 + (v6 - v5) / v8 * v8;
  if (v4 < v5 || v4 >= v10)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1D5530CB4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1D5530CE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAD08, &qword_1D561DAF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_3(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1D5530DE0(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = (*v3 + 16);
  v9 = *v8;
  v10 = type metadata accessor for ActorQueue.TaskState(0);
  v11 = v10;
  if (v9 >= a2)
  {
    v15 = *(*(v10 - 8) + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8130, &qword_1D56713E8);
    v14 = swift_allocObject();
    v16 = *(v7 + 24);
    *(v14 + 16) = v9;
    *(v14 + 24) = v16;
    if (v16 >= 1)
    {
      sub_1D5531468(v14 + 16, v14 + ((v15 + 40) & ~v15), v8, v7 + ((v15 + 40) & ~v15));
    }
  }

  else
  {
    sub_1D560C6B8();
    v12 = *(*(v11 - 8) + 80);
    if (a1)
    {
      v13 = *(v7 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8130, &qword_1D56713E8);
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1D55311E8();
      *(v14 + 24) = v13;
      *(v14 + 32) = 0;
      if (v13 >= 1)
      {
        sub_1D55310C8(v14 + 16, v14 + ((v12 + 40) & ~v12), v8, v7 + ((v12 + 40) & ~v12));
        *(v7 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8130, &qword_1D56713E8);
      v14 = swift_allocObject();
      v17 = sub_1D55311E8();
      v18 = *(v7 + 24);
      *(v14 + 16) = v17;
      *(v14 + 24) = v18;
      *(v14 + 32) = 0;
      if (v18 >= 1)
      {
        sub_1D5531344(v14 + 16, v14 + ((v12 + 40) & ~v12), v8, v7 + ((v12 + 40) & ~v12));
      }
    }
  }

  *v4 = v14;
  return result;
}

void *sub_1D553100C(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = type metadata accessor for ActorQueue.TaskState(0);
        result = sub_1D552F9B4(a3, a2 + *(*(v10 - 8) + 72) * v5);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_1D55310C8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for ActorQueue.TaskState(0) - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = v5;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = 0;
  v9 = 0;
  v10 = v7;
LABEL_6:
  if (v9)
  {
    v12 = v5 < v7;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v8 + 72);
  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (v10 >= 1)
  {
    if (a4)
    {
      v15 = a4 + v13 * v4;
      v16 = a2;
      sub_1D4F038AC(v15, v10, a2);
      goto LABEL_16;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = 0;
  v16 = a2;
LABEL_16:
  if (v5 < v7 && v9 >= 1)
  {
    if (v14)
    {
      sub_1D4F038AC(v14, v9, v16 + v13 * v10);
      return;
    }

LABEL_26:
    __break(1u);
  }
}

uint64_t sub_1D55311E8()
{
  v1 = _swift_stdlib_malloc_size_3(v0);
  v2 = type metadata accessor for ActorQueue.TaskState(0);
  v4 = *(v2 - 8);
  result = v2 - 8;
  v5 = *(v4 + 80);
  v6 = *(v4 + 72);
  if (v6)
  {
    v7 = v1 - ((v5 + 40) & ~v5);
    if (v6 != -1 || v7 != 0x8000000000000000)
    {
      return v7 / v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D5531284@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[2];
  v5 = *result - v4;
  if (__OFSUB__(*result, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = result[1];
    v8 = type metadata accessor for ActorQueue.TaskState(0);
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    if (v5 >= v7)
    {
      v11 = 0;
      v12 = 0;
      v13 = v7;
LABEL_6:
      *a3 = a2 + *(v9 + 72) * v4;
      *(a3 + 8) = v13;
      *(a3 + 16) = v11;
      *(a3 + 24) = v12;
      *(a3 + 32) = v5 >= v7;
      return result;
    }

    v12 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v13 = v5;
      v11 = a2;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_1D5531344(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  type metadata accessor for ActorQueue.TaskState(0);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = v5;
      v10 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = 0;
  v8 = 0;
  v9 = v7;
LABEL_6:
  if (v9 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_1D5531468(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  type metadata accessor for ActorQueue.TaskState(0);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = v5;
      v10 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = 0;
  v8 = 0;
  v9 = v7;
LABEL_6:
  if (v9 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_1D5531578()
{
  v1 = *v0;
  v2 = type metadata accessor for ActorQueue.TaskState(0);
  v3 = *(v1 + 16);
  v4 = *(*(v2 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8130, &qword_1D56713E8);
  v5 = swift_allocObject();
  v6 = *(v1 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v6;
  if (v6 >= 1)
  {
    sub_1D5531468(v5 + 16, v5 + ((v4 + 40) & ~v4), (v1 + 16), v1 + ((v4 + 40) & ~v4));
  }

  *v0 = v5;
  return result;
}

uint64_t sub_1D5531670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActorQueue.TaskState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D55316D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[2];
  v7 = type metadata accessor for ActorQueue.TaskState(0);
  result = sub_1D5531670(a2 + *(*(v7 - 8) + 72) * v6, a3);
  v9 = a1[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = a1[1];
    if (v11 >= *a1)
    {
      v11 = 0;
    }

    a1[2] = v11;
    if (!__OFSUB__(v12, 1))
    {
      a1[1] = v12 - 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1D5531770(uint64_t *result, uint64_t a2)
{
  v3 = result[2];
  v4 = *result;
  v5 = result[1] + v3;
  if (*result >= v5)
  {
    if (v5 < v3)
    {
      __break(1u);
    }

    else
    {
      v7 = type metadata accessor for ActorQueue.TaskState(0);
      v9 = *(v7 - 8);
      result = (v7 - 8);
      v8 = v9;
      if (!__OFSUB__(v5, v3))
      {
        v10[0] = a2 + *(v8 + 72) * v3;
        v10[1] = v5 - v3;
        result = sub_1D552FA74(v10);
        if (v2)
        {
          return result;
        }

        return (v4 < v5);
      }
    }

    __break(1u);
    return result;
  }

  return (v4 < v5);
}

void *sub_1D5531830(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = sub_1D5531284(a1, a2, &v12);
  v7 = v13;
  if (v13 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    if (v13)
    {
      type metadata accessor for ActorQueue.TaskState(0);
      result = swift_arrayInitWithCopy();
    }
  }

  v8 = *a4 + v7;
  if (__OFADD__(*a4, v7))
  {
    goto LABEL_20;
  }

  *a4 = v8;
  if (v16)
  {
    return result;
  }

  v9 = v15;
  if (__OFADD__(v7, v15))
  {
    goto LABEL_21;
  }

  v10 = v15;
  if (v7 + v15 < v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = v14;
  if (*a3)
  {
    result = (type metadata accessor for ActorQueue.TaskState(0) - 8);
    if (!v11)
    {
      goto LABEL_16;
    }
  }

  else if (!v14)
  {
    goto LABEL_16;
  }

  if (v9)
  {
    if (v10 < v9)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    type metadata accessor for ActorQueue.TaskState(0);
    result = swift_arrayInitWithCopy();
    v8 = *a4;
  }

LABEL_16:
  if (__OFADD__(v8, v9))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *a4 = v8 + v9;
  return result;
}

uint64_t sub_1D5531970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActorQueue.TaskState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D55319D4()
{
  result = qword_1EDD58B70[0];
  if (!qword_1EDD58B70[0])
  {
    type metadata accessor for ActorQueue();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD58B70);
  }

  return result;
}

uint64_t sub_1D5531A30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8138, &qword_1D56713F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5531AA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8138, &qword_1D56713F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5531B0C(uint64_t a1)
{
  v1 = sub_1D5615EF8();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D5531B58(char a1)
{
  if (a1)
  {
    return 0x436D756D6978616DLL;
  }

  else
  {
    return 0x656761726F7473;
  }
}

uint64_t sub_1D5531BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D5531C34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D5531CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D5531D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_1D5531D80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D5531B0C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D5531DB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5531B58(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D5531DE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5531B08();
  *a1 = result;
  return result;
}

uint64_t sub_1D5531E18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D5531E6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void sub_1D5531EC0()
{
  OUTLINED_FUNCTION_25_1();
  v24 = v1;
  v2 = v0;
  v21 = v4;
  v22 = v3;
  v6 = v5;
  v8 = v7[3];
  v19 = v7[2];
  v9 = v7[4];
  _s10CodingKeysOMa_0(255, v19, v8, v9);
  OUTLINED_FUNCTION_1_199();
  swift_getWitnessTable();
  v20 = sub_1D56160D8();
  OUTLINED_FUNCTION_4();
  v23 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1D56163D8();
  v32 = *(v2 + 16);
  v33 = *(v2 + 32);
  v28 = v19;
  v29 = v8;
  v30 = v8;
  v31 = v9;
  type metadata accessor for LRUDictionary.Container(255, &v28);
  sub_1D560C688();
  v27 = v21;
  v14 = v20;
  WitnessTable = swift_getWitnessTable();
  v25 = v22;
  v26 = WitnessTable;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_143();
  v16 = v24;
  sub_1D56160C8();
  if (v16)
  {
    (*(v23 + 8))(v13, v14);
  }

  else
  {
    v17 = v23;
    v28 = *(v2 + 56);
    LOBYTE(v29) = *(v2 + 64);
    LOBYTE(v32) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3CE8, &unk_1D56611E0);
    sub_1D5532DF8();
    OUTLINED_FUNCTION_4_156();
    v28 = *(v2 + 40);
    LOBYTE(v29) = *(v2 + 48);
    LOBYTE(v32) = 2;
    OUTLINED_FUNCTION_4_156();
    (*(v17 + 8))(v13, v14);
  }

  OUTLINED_FUNCTION_26();
}

void sub_1D5532158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_25_1();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v43 = v32;
  _s10CodingKeysOMa_0(255, v28, v26, v24);
  OUTLINED_FUNCTION_1_199();
  swift_getWitnessTable();
  v44 = sub_1D5616008();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  v47 = v29;
  v48 = v27;
  v49 = v27;
  v50 = v25;
  type metadata accessor for LRUDictionary.Container(255, &v47);
  swift_getTupleTypeMetadata2();
  sub_1D56151C8();
  sub_1D560C618();
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_1D5616398();
  if (v23)
  {

    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_1D560C688();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1D5615FD8();

    v34 = v47;
    v35 = v48;
    v46 = v49;
    LOBYTE(v47) = 1;
    v36 = sub_1D5615F68();
    v38 = v37;
    v45 = v35;
    v39 = sub_1D5615F68();
    LOBYTE(v35) = v40;
    v41 = OUTLINED_FUNCTION_3_202();
    v42(v41, v44);
    __swift_destroy_boxed_opaque_existential_1(0);
    *v43 = 0;
    *(v43 + 8) = 0;
    *(v43 + 16) = v34;
    *(v43 + 24) = v45;
    *(v43 + 32) = v46;
    *(v43 + 40) = v39;
    *(v43 + 48) = v35 & 1;
    *(v43 + 49) = v47;
    *(v43 + 52) = *(&v47 + 3);
    *(v43 + 56) = v36;
    *(v43 + 64) = v38 & 1;
  }

  OUTLINED_FUNCTION_26();
}

void sub_1D55324C8(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, uint64_t a5@<X7>, void *a6@<X8>)
{
  sub_1D5532158(a1, a2[2], a2[3], *(a3 - 8), a2[4], *(a3 - 16), a4, a5, v8, __src[0], SWORD2(__src[0]), SBYTE6(__src[0]), SHIBYTE(__src[0]), __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10]);
  if (!v6)
  {
    memcpy(a6, __src, 0x41uLL);
  }
}

uint64_t sub_1D5532528(uint64_t a1)
{
  v1 = sub_1D5615EF8();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D553257C(char a1)
{
  if (a1)
  {
    return 1953722211;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1D55325A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D553261C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D5532688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D55326F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D5532768@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D5532528(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D5532798@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D553257C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D55327CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5532524();
  *a1 = result;
  return result;
}

uint64_t sub_1D5532800(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D5532854(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void sub_1D55328A8()
{
  OUTLINED_FUNCTION_25_1();
  v20 = v2;
  v21 = v1;
  v19 = v0;
  v4 = v3;
  v6 = v5;
  v7 = *(v3 + 16);
  v18 = *(v3 + 32);
  v22[0] = v7;
  v22[1] = v18;
  _s10CodingKeysOMa(255, v22);
  OUTLINED_FUNCTION_2_195();
  v8 = sub_1D56160D8();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v14 = v19;
  sub_1D56163D8();
  LOBYTE(v22[0]) = 0;
  v15 = v21;
  sub_1D56160C8();
  if (!v15)
  {
    v16 = (v14 + *(v4 + 52));
    v17 = *v16;
    LOBYTE(v16) = *(v16 + 8);
    *&v22[0] = v17;
    BYTE8(v22[0]) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3CE8, &unk_1D56611E0);
    sub_1D5532DF8();
    OUTLINED_FUNCTION_7_143();
    sub_1D56160C8();
  }

  (*(v10 + 8))(v13, v8);
  OUTLINED_FUNCTION_26();
}

void sub_1D5532A64()
{
  OUTLINED_FUNCTION_25_1();
  v42 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v37 = v12;
  v39 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v14;
  v45 = v15;
  v46 = v16;
  v47 = v17;
  _s10CodingKeysOMa(255, &v44);
  OUTLINED_FUNCTION_2_195();
  v43 = sub_1D5616008();
  OUTLINED_FUNCTION_4();
  v38 = v18;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v44 = v9;
  v45 = v7;
  v40 = v5;
  v46 = v5;
  v47 = v3;
  v20 = type metadata accessor for LRUDictionary.Container(0, &v44);
  OUTLINED_FUNCTION_4();
  v36 = v21;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v36 - v23;
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v25 = v24;
    v26 = v39;
    LOBYTE(v44) = 0;
    v27 = v40;
    v28 = v41;
    sub_1D5615FD8();
    (*(v26 + 32))(v25, v28, v27);
    LOBYTE(v44) = 1;
    v29 = sub_1D5615F68();
    LOBYTE(v28) = v30;
    v31 = &v25[*(v20 + 52)];
    v42 = v25;
    v32 = OUTLINED_FUNCTION_3_202();
    v33(v32, v43);
    *v31 = v29;
    v31[8] = v28 & 1;
    v34 = v36;
    v35 = v42;
    (*(v36 + 16))(v37, v42, v20);
    __swift_destroy_boxed_opaque_existential_1(v11);
    (*(v34 + 8))(v35, v20);
  }

  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D5532DF8()
{
  result = qword_1EC7F8148[0];
  if (!qword_1EC7F8148[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F3CE8, &unk_1D56611E0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7F8148);
  }

  return result;
}

_BYTE *sub_1D5532E8C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D5532F58(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void *sub_1D55330CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v12 = a1;
  swift_getTupleTypeMetadata2();
  v9 = sub_1D56152D8();
  WitnessTable = swift_getWitnessTable();
  sub_1D552B5BC(&v12, a2, a3, v9, a4, WitnessTable, __src);
  return memcpy(a5, __src, 0x41uLL);
}

uint64_t sub_1D55331E8(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  v6 = v1[4];
  v16 = v1[2];
  v14 = v6;
  v15 = v5;
  sub_1D4EA73A4(v3, v4);
  sub_1D5533848(&v16, v12);
  v7 = *(a1 + 16);
  sub_1D5615D18();
  OUTLINED_FUNCTION_14();
  (*(v8 + 16))(v12, &v15);
  v12[0] = v7;
  v9 = *(a1 + 24);
  v12[1] = *(a1 + 24);
  v13 = v9;
  type metadata accessor for LRUDictionary.Container(255, v12);
  sub_1D5615D18();
  OUTLINED_FUNCTION_14();
  (*(v10 + 16))(v12, &v14);
  return sub_1D5533674(v1);
}

uint64_t sub_1D55332D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v45[0] = v2;
  v45[1] = v3;
  v45[2] = v3;
  v45[3] = v4;
  v5 = type metadata accessor for LRUDictionary.Container(255, v45);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1D56158D8();
  OUTLINED_FUNCTION_1_0();
  v40 = v8;
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - v9;
  OUTLINED_FUNCTION_84();
  v11 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  OUTLINED_FUNCTION_1_0();
  v39 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v42 = &v37 - v17;
  OUTLINED_FUNCTION_1_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_84();
  sub_1D560C658();
  sub_1D560C648();
  if (__swift_getEnumTagSinglePayload(v10, 1, TupleTypeMetadata2) == 1)
  {
    (*(v40 + 8))(v10, v41);
    OUTLINED_FUNCTION_84();
    v23 = swift_getTupleTypeMetadata2();
    v24 = v43;
    v25 = 1;
  }

  else
  {
    v26 = *(TupleTypeMetadata2 + 48);
    v27 = *(v11 + 48);
    v44 = v3;
    v40 = *(v19 + 32);
    v41 = v26;
    (v40)(v14, v10, v2);
    v38 = v22;
    v28 = *(v39 + 32);
    v28(&v14[v27], &v10[v41], v5);
    v29 = *(v11 + 48);
    v30 = v40;
    (v40)(v22, v14, v2);
    v31 = v42;
    v28(v42, &v14[v29], v5);
    OUTLINED_FUNCTION_84();
    v32 = v44;
    v33 = swift_getTupleTypeMetadata2();
    v34 = *(v33 + 48);
    v35 = v43;
    v30(v43, v38, v2);
    (*(*(v32 - 8) + 32))(v35 + v34, v31, v32);
    v24 = v35;
    v25 = 0;
    v23 = v33;
  }

  return __swift_storeEnumTagSinglePayload(v24, v25, 1, v23);
}

uint64_t sub_1D5533674(uint64_t *a1)
{
  v1 = a1[2];
  sub_1D4EA7420(*a1, a1[1]);
  return v1;
}

uint64_t sub_1D55336C0(uint64_t a1)
{
  v3[0] = *(a1 + 16);
  v1 = *(a1 + 24);
  v3[1] = *(a1 + 24);
  v4 = v1;
  type metadata accessor for LRUDictionary.Container(0, v3);
  return sub_1D5615CE8();
}

uint64_t sub_1D5533714@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = sub_1D55331E8(a1);
  v12 = v11;
  v14 = v13;
  sub_1D4EA7420(v5, v6);
  v24 = v7;
  sub_1D55338B8(&v24);
  v23 = v8;
  v15 = *(a1 + 16);
  v16 = sub_1D5615D18();
  (*(*(v16 - 8) + 8))(&v23, v16);
  v22 = v9;
  v20[0] = v15;
  v17 = *(a1 + 24);
  v20[1] = *(a1 + 24);
  v21 = v17;
  type metadata accessor for LRUDictionary.Container(255, v20);
  v18 = sub_1D5615D18();
  result = (*(*(v18 - 8) + 8))(&v22, v18);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v14;
  a2[3] = 0;
  return result;
}

uint64_t sub_1D5533848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7F8250, &qword_1D5671870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D55338B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7F8250, &qword_1D5671870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5533920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D5533974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v58 = a4;
  v57 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v46 = &v44 - v9;
  v10 = sub_1D56131C8();
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v50 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_1D5613838();
  v48 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v47 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v44 - v20;
  v62 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8368, &qword_1D5671AA0);
  v22 = v21[20];
  v23 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryImportChangeRequest) init];
  *(a5 + v22) = v23;
  *a5 = a1;
  sub_1D4FB8150();
  *(a5 + v21[18]) = a3;
  *(a5 + v21[19]) = v58;
  v24 = v23;

  v56 = a3;

  v55 = a1;
  v53 = a5;
  sub_1D55366EC(a1, sub_1D555A6A4, &qword_1EC7F8368, &qword_1D5671AA0);
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1D554B9B4(v16, &qword_1EC7EA978);
  }

  else
  {
    v25 = v48;
    v26 = v54;
    (*(v48 + 32))(v54, v16, v17);
    v60 = v17;
    v61 = MEMORY[0x1E6976BE0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v59);
    v28 = *(v25 + 16);
    v28(boxed_opaque_existential_0, v26, v17);
    v29 = __swift_project_boxed_opaque_existential_1(v59, v60);
    v30 = *MEMORY[0x1E6976988];
    v32 = v51;
    v31 = v52;
    v33 = *(v51 + 104);
    v45 = v24;
    v34 = v49;
    v33(v49, v30, v52);
    v35 = v50;
    (*(v32 + 16))(v50, v34, v31);
    v36 = v47;
    v28(v47, v29, v17);
    sub_1D4ECB9C0(v36, v35);
    v38 = v37;
    (*(v32 + 8))(v34, v31);
    v24 = v45;
    [v45 setReferralObject_];

    __swift_destroy_boxed_opaque_existential_1(v59);
    (*(v25 + 8))(v54, v17);
  }

  sub_1D526EBEC(v56);
  v40 = v39;

  if (*(v40 + 16))
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC88, &qword_1D5634788);
    sub_1D4E62A60(&qword_1EC7EFC90, &qword_1EC7EFC88, &qword_1D5634788, MEMORY[0x1E69E6328]);
    v41 = v46;
    sub_1D5615018();

    v42 = type metadata accessor for TVSeason(0);
    __swift_getEnumTagSinglePayload(v41, 1, v42);
    sub_1D554B9B4(v41, &qword_1EC7EA878);
  }

  sub_1D5536938(v40, &qword_1EC7F8368, &qword_1D5671AA0);

  [v24 setShouldLibraryAdd_];

  return sub_1D554B9B4(v57, &qword_1EC7EA978);
}

uint64_t sub_1D5533F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v58 = a4;
  v57 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v46 = &v44 - v9;
  v10 = sub_1D56131C8();
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v50 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_1D5613838();
  v48 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v47 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v44 - v20;
  v62 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8360, &qword_1D5671A80);
  v22 = v21[20];
  v23 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryImportChangeRequest) init];
  *(a5 + v22) = v23;
  *a5 = a1;
  sub_1D4FB8150();
  *(a5 + v21[18]) = a3;
  *(a5 + v21[19]) = v58;
  v24 = v23;

  v56 = a3;

  v55 = a1;
  v53 = a5;
  sub_1D55366EC(a1, sub_1D555A800, &qword_1EC7F8360, &qword_1D5671A80);
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1D554B9B4(v16, &qword_1EC7EA978);
  }

  else
  {
    v25 = v48;
    v26 = v54;
    (*(v48 + 32))(v54, v16, v17);
    v60 = v17;
    v61 = MEMORY[0x1E6976BE0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v59);
    v28 = *(v25 + 16);
    v28(boxed_opaque_existential_0, v26, v17);
    v29 = __swift_project_boxed_opaque_existential_1(v59, v60);
    v30 = *MEMORY[0x1E6976988];
    v32 = v51;
    v31 = v52;
    v33 = *(v51 + 104);
    v45 = v24;
    v34 = v49;
    v33(v49, v30, v52);
    v35 = v50;
    (*(v32 + 16))(v50, v34, v31);
    v36 = v47;
    v28(v47, v29, v17);
    sub_1D4ECB9C0(v36, v35);
    v38 = v37;
    (*(v32 + 8))(v34, v31);
    v24 = v45;
    [v45 setReferralObject_];

    __swift_destroy_boxed_opaque_existential_1(v59);
    (*(v25 + 8))(v54, v17);
  }

  sub_1D526EBEC(v56);
  v40 = v39;

  if (*(v40 + 16))
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC80, &unk_1D5634770);
    sub_1D4E62A60(&qword_1EDD527F8, &qword_1EC7EFC80, &unk_1D5634770, MEMORY[0x1E69E6328]);
    v41 = v46;
    sub_1D5615018();

    v42 = type metadata accessor for TVEpisode(0);
    __swift_getEnumTagSinglePayload(v41, 1, v42);
    sub_1D554B9B4(v41, &qword_1EC7EA880);
  }

  sub_1D5536938(v40, &qword_1EC7F8360, &qword_1D5671A80);

  [v24 setShouldLibraryAdd_];

  return sub_1D554B9B4(v57, &qword_1EC7EA978);
}

uint64_t sub_1D55344BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v56 = a4;
  v55 = a2;
  v8 = sub_1D56131C8();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - v15;
  v17 = sub_1D5613838();
  v46 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v45 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v51 = &v42 - v20;
  v60 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8358, &qword_1D5671A60);
  v22 = v21[20];
  v23 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryImportChangeRequest) init];
  *(a5 + v22) = v23;
  *a5 = a1;
  sub_1D4FB8150();
  *(a5 + v21[18]) = a3;
  *(a5 + v21[19]) = v56;
  v54 = v23;

  v52 = a3;

  v53 = a1;
  v24 = a1;
  v25 = v17;
  sub_1D55366EC(v24, sub_1D555A95C, &qword_1EC7F8358, &qword_1D5671A60);
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1D554B9B4(v16, &qword_1EC7EA978);
  }

  else
  {
    v26 = v46;
    v27 = v51;
    (*(v46 + 32))(v51, v16, v17);
    v58 = v17;
    v59 = MEMORY[0x1E6976BE0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v57);
    v43 = *(v26 + 16);
    v43(boxed_opaque_existential_0, v27, v17);
    v42 = __swift_project_boxed_opaque_existential_1(v57, v58);
    v30 = v49;
    v29 = v50;
    v31 = v47;
    (*(v49 + 104))(v47, *MEMORY[0x1E6976988], v50);
    v32 = v48;
    (*(v30 + 16))(v48, v31, v29);
    v33 = v45;
    v43(v45, v42, v25);
    v34 = v54;
    sub_1D4ECB9C0(v33, v32);
    v36 = v35;
    (*(v30 + 8))(v31, v29);
    [v34 setReferralObject_];

    __swift_destroy_boxed_opaque_existential_1(v57);
    (*(v26 + 8))(v51, v25);
  }

  sub_1D526EBEC(v52);
  v38 = v37;

  if (*(v38 + 16))
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6EC0, &qword_1D5667838);
    sub_1D4E62A60(&qword_1EC7F71B8, &qword_1EC7F6EC0, &qword_1D5667838, MEMORY[0x1E69E6328]);
    v39 = v44;
    sub_1D5615018();

    __swift_getEnumTagSinglePayload(v39, 1, v25);
    sub_1D554B9B4(v39, &qword_1EC7EA978);
  }

  sub_1D5536938(v38, &qword_1EC7F8358, &qword_1D5671A60);

  v40 = v54;
  [v54 setShouldLibraryAdd_];

  return sub_1D554B9B4(v55, &qword_1EC7EA978);
}

uint64_t sub_1D5534A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v82 = a4;
  v81 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v65 = &v60 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  v64 = *(v66 - 8);
  v10 = MEMORY[0x1EEE9AC00](v66);
  v62 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v67 = &v60 - v14;
  v68 = sub_1D5614898();
  v80 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v79 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D56131C8();
  v73 = *(v16 - 8);
  v74 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v72 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v71 = &v60 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v60 - v21;
  v23 = sub_1D5613838();
  v70 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v69 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v75 = &v60 - v26;
  v86 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8350, &qword_1D5671A40);
  v28 = v27[20];
  v29 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryImportChangeRequest) init];
  *(a5 + v28) = v29;
  *a5 = a1;
  sub_1D4FB8150();
  *(a5 + v27[18]) = v81;
  *(a5 + v27[19]) = v82;
  v30 = v29;

  v76 = a1;
  v78 = a5;
  sub_1D55366EC(a1, sub_1D555A97C, &qword_1EC7F8350, &qword_1D5671A40);
  v77 = a2;
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    sub_1D554B9B4(v22, &qword_1EC7EA978);
  }

  else
  {
    v61 = v30;
    v31 = v70;
    v32 = v75;
    (*(v70 + 32))(v75, v22, v23);
    v84 = v23;
    v85 = MEMORY[0x1E6976BE0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v83);
    v34 = *(v31 + 16);
    v34(boxed_opaque_existential_0, v32, v23);
    v35 = __swift_project_boxed_opaque_existential_1(v83, v84);
    v37 = v73;
    v36 = v74;
    v38 = v71;
    (*(v73 + 104))(v71, *MEMORY[0x1E6976988], v74);
    v39 = v72;
    (*(v37 + 16))(v72, v38, v36);
    v40 = v69;
    v34(v69, v35, v23);
    sub_1D4ECB9C0(v40, v39);
    v42 = v41;
    (*(v37 + 8))(v38, v36);
    v43 = v61;
    [v61 setReferralObject_];

    __swift_destroy_boxed_opaque_existential_1(v83);
    (*(v31 + 8))(v75, v23);
    v30 = v43;
  }

  sub_1D526EBEC(v81);
  v45 = v44;

  v46 = v79;
  v47 = v80;
  if (*(v45 + 16))
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8300, &qword_1D5671938);
    sub_1D4E62A60(&qword_1EC7F8308, &qword_1EC7F8300, &qword_1D5671938, MEMORY[0x1E69E6328]);
    v48 = v67;
    sub_1D5615018();

    v49 = v68;
    if (__swift_getEnumTagSinglePayload(v48, 1, v68) == 1)
    {
      v50 = &unk_1EC7F1990;
      v51 = v48;
    }

    else
    {
      (*(v47 + 32))(v46, v48, v49);
      v52 = v65;
      sub_1D5614858();
      v53 = v66;
      if (__swift_getEnumTagSinglePayload(v52, 1, v66) != 1)
      {

        v54 = v52;
        v55 = v64;
        v56 = v63;
        (*(v64 + 32))(v63, v54, v53);
        (*(v55 + 16))(v62, v56, v53);
        sub_1D4E62A60(&qword_1EDD53B90, &unk_1EC7F6A30, &qword_1D561C4C0, MEMORY[0x1E6975008]);
        v57 = sub_1D5614FB8();
        sub_1D526EC0C(v57);
        v45 = v58;

        (*(v55 + 8))(v56, v53);
        (*(v47 + 8))(v46, v49);
        goto LABEL_12;
      }

      (*(v47 + 8))(v46, v49);
      v50 = &qword_1EC7EC450;
      v51 = v52;
    }

    sub_1D554B9B4(v51, v50);
  }

LABEL_12:
  sub_1D5536938(v45, &qword_1EC7F8350, &qword_1D5671A40);

  [v30 setShouldLibraryAdd_];

  return sub_1D554B9B4(v77, &qword_1EC7EA978);
}

uint64_t sub_1D55352EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v58 = a4;
  v57 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v46 = &v44 - v9;
  v10 = sub_1D56131C8();
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v50 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_1D5613838();
  v48 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v47 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v44 - v20;
  v62 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8348, &qword_1D5671A20);
  v22 = v21[20];
  v23 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryImportChangeRequest) init];
  *(a5 + v22) = v23;
  *a5 = a1;
  sub_1D4FB8150();
  *(a5 + v21[18]) = a3;
  *(a5 + v21[19]) = v58;
  v24 = v23;

  v56 = a3;

  v55 = a1;
  v53 = a5;
  sub_1D55366EC(a1, sub_1D555A99C, &qword_1EC7F8348, &qword_1D5671A20);
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1D554B9B4(v16, &qword_1EC7EA978);
  }

  else
  {
    v25 = v48;
    v26 = v54;
    (*(v48 + 32))(v54, v16, v17);
    v60 = v17;
    v61 = MEMORY[0x1E6976BE0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v59);
    v28 = *(v25 + 16);
    v28(boxed_opaque_existential_0, v26, v17);
    v29 = __swift_project_boxed_opaque_existential_1(v59, v60);
    v30 = *MEMORY[0x1E6976988];
    v32 = v51;
    v31 = v52;
    v33 = *(v51 + 104);
    v45 = v24;
    v34 = v49;
    v33(v49, v30, v52);
    v35 = v50;
    (*(v32 + 16))(v50, v34, v31);
    v36 = v47;
    v28(v47, v29, v17);
    sub_1D4ECB9C0(v36, v35);
    v38 = v37;
    (*(v32 + 8))(v34, v31);
    v24 = v45;
    [v45 setReferralObject_];

    __swift_destroy_boxed_opaque_existential_1(v59);
    (*(v25 + 8))(v54, v17);
  }

  sub_1D526EBEC(v56);
  v40 = v39;

  if (*(v40 + 16))
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8310, &qword_1D5671940);
    sub_1D4E62A60(&qword_1EC7F8318, &qword_1EC7F8310, &qword_1D5671940, MEMORY[0x1E69E6328]);
    v41 = v46;
    sub_1D5615018();

    v42 = sub_1D560EEA8();
    __swift_getEnumTagSinglePayload(v41, 1, v42);
    sub_1D554B9B4(v41, &qword_1EC7EA990);
  }

  sub_1D5536938(v40, &qword_1EC7F8348, &qword_1D5671A20);

  [v24 setShouldLibraryAdd_];

  return sub_1D554B9B4(v57, &qword_1EC7EA978);
}

uint64_t sub_1D5535890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v58 = a4;
  v57 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v46 = &v44 - v9;
  v10 = sub_1D56131C8();
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v50 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_1D5613838();
  v48 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v47 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v44 - v20;
  v62 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8340, &qword_1D5671A00);
  v22 = v21[20];
  v23 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryImportChangeRequest) init];
  *(a5 + v22) = v23;
  *a5 = a1;
  sub_1D4FB8150();
  *(a5 + v21[18]) = a3;
  *(a5 + v21[19]) = v58;
  v24 = v23;

  v56 = a3;

  v55 = a1;
  v53 = a5;
  sub_1D55366EC(a1, sub_1D555A9BC, &qword_1EC7F8340, &qword_1D5671A00);
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1D554B9B4(v16, &qword_1EC7EA978);
  }

  else
  {
    v25 = v48;
    v26 = v54;
    (*(v48 + 32))(v54, v16, v17);
    v60 = v17;
    v61 = MEMORY[0x1E6976BE0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v59);
    v28 = *(v25 + 16);
    v28(boxed_opaque_existential_0, v26, v17);
    v29 = __swift_project_boxed_opaque_existential_1(v59, v60);
    v30 = *MEMORY[0x1E6976988];
    v32 = v51;
    v31 = v52;
    v33 = *(v51 + 104);
    v45 = v24;
    v34 = v49;
    v33(v49, v30, v52);
    v35 = v50;
    (*(v32 + 16))(v50, v34, v31);
    v36 = v47;
    v28(v47, v29, v17);
    sub_1D4ECB9C0(v36, v35);
    v38 = v37;
    (*(v32 + 8))(v34, v31);
    v24 = v45;
    [v45 setReferralObject_];

    __swift_destroy_boxed_opaque_existential_1(v59);
    (*(v25 + 8))(v54, v17);
  }

  sub_1D526EBEC(v56);
  v40 = v39;

  if (*(v40 + 16))
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4420, &qword_1D5653280);
    sub_1D4E62A60(&qword_1EDD52880, &qword_1EC7F4420, &qword_1D5653280, MEMORY[0x1E69E6328]);
    v41 = v46;
    sub_1D5615018();

    v42 = type metadata accessor for MusicMovie(0);
    __swift_getEnumTagSinglePayload(v41, 1, v42);
    sub_1D554B9B4(v41, &qword_1EC7EA890);
  }

  sub_1D5536938(v40, &qword_1EC7F8340, &qword_1D5671A00);

  [v24 setShouldLibraryAdd_];

  return sub_1D554B9B4(v57, &qword_1EC7EA978);
}

uint64_t sub_1D5535E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v82 = a4;
  v81 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC458, &unk_1D5620CD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v65 = &v60 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  v64 = *(v66 - 8);
  v10 = MEMORY[0x1EEE9AC00](v66);
  v62 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v67 = &v60 - v14;
  v68 = sub_1D5613AF8();
  v80 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v79 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D56131C8();
  v73 = *(v16 - 8);
  v74 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v72 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v71 = &v60 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v60 - v21;
  v23 = sub_1D5613838();
  v70 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v69 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v75 = &v60 - v26;
  v86 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8338, &qword_1D56719E0);
  v28 = v27[20];
  v29 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryImportChangeRequest) init];
  *(a5 + v28) = v29;
  *a5 = a1;
  sub_1D4FB8150();
  *(a5 + v27[18]) = v81;
  *(a5 + v27[19]) = v82;
  v30 = v29;

  v76 = a1;
  v78 = a5;
  sub_1D55366EC(a1, sub_1D555AB18, &qword_1EC7F8338, &qword_1D56719E0);
  v77 = a2;
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    sub_1D554B9B4(v22, &qword_1EC7EA978);
  }

  else
  {
    v61 = v30;
    v31 = v70;
    v32 = v75;
    (*(v70 + 32))(v75, v22, v23);
    v84 = v23;
    v85 = MEMORY[0x1E6976BE0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v83);
    v34 = *(v31 + 16);
    v34(boxed_opaque_existential_0, v32, v23);
    v35 = __swift_project_boxed_opaque_existential_1(v83, v84);
    v37 = v73;
    v36 = v74;
    v38 = v71;
    (*(v73 + 104))(v71, *MEMORY[0x1E6976988], v74);
    v39 = v72;
    (*(v37 + 16))(v72, v38, v36);
    v40 = v69;
    v34(v69, v35, v23);
    sub_1D4ECB9C0(v40, v39);
    v42 = v41;
    (*(v37 + 8))(v38, v36);
    v43 = v61;
    [v61 setReferralObject_];

    __swift_destroy_boxed_opaque_existential_1(v83);
    (*(v31 + 8))(v75, v23);
    v30 = v43;
  }

  sub_1D526EBEC(v81);
  v45 = v44;

  v46 = v79;
  v47 = v80;
  if (*(v45 + 16))
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8328, &qword_1D5671948);
    sub_1D4E62A60(&qword_1EC7F8330, &qword_1EC7F8328, &qword_1D5671948, MEMORY[0x1E69E6328]);
    v48 = v67;
    sub_1D5615018();

    v49 = v68;
    if (__swift_getEnumTagSinglePayload(v48, 1, v68) == 1)
    {
      v50 = &qword_1EC7EEC30;
      v51 = v48;
    }

    else
    {
      (*(v47 + 32))(v46, v48, v49);
      v52 = v65;
      sub_1D5613AC8();
      v53 = v66;
      if (__swift_getEnumTagSinglePayload(v52, 1, v66) != 1)
      {

        v54 = v52;
        v55 = v64;
        v56 = v63;
        (*(v64 + 32))(v63, v54, v53);
        (*(v55 + 16))(v62, v56, v53);
        sub_1D4E62A60(&qword_1EC7EC460, &qword_1EC7EA4E8, &unk_1D561C470, MEMORY[0x1E6975008]);
        v57 = sub_1D5614FB8();
        sub_1D526EBEC(v57);
        v45 = v58;

        (*(v55 + 8))(v56, v53);
        (*(v47 + 8))(v46, v49);
        goto LABEL_12;
      }

      (*(v47 + 8))(v46, v49);
      v50 = &qword_1EC7EC458;
      v51 = v52;
    }

    sub_1D554B9B4(v51, v50);
  }

LABEL_12:
  sub_1D5536938(v45, &qword_1EC7F8338, &qword_1D56719E0);

  [v30 setShouldLibraryAdd_];

  return sub_1D554B9B4(v77, &qword_1EC7EA978);
}

void sub_1D55366EC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4)
{
  sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v10 = a2(a1);
  if (v10)
  {
    v11 = v10;
    v12 = *(v10 + 16);
    if (v12)
    {
      v22 = a3;
      v24 = MEMORY[0x1E69E7CC0];
      sub_1D5615CB8();
      v13 = v11 + 32;
      do
      {
        sub_1D4E628D4(v13, v23);
        __swift_project_boxed_opaque_existential_1(v23, v23[3]);
        v14 = OUTLINED_FUNCTION_178_6();
        v15(v14);
        v16 = OUTLINED_FUNCTION_64_35();
        sub_1D5159364(v16, v17, v18);
        v19 = OUTLINED_FUNCTION_192_4();
        v20(v19);
        __swift_destroy_boxed_opaque_existential_1(v23);
        sub_1D5615C88();
        v11 = *(v24 + 16);
        sub_1D5615CC8();
        sub_1D5615CD8();
        sub_1D5615C98();
        v13 += 40;
        --v12;
      }

      while (v12);

      a3 = v22;
    }

    else
    {
    }

    v21 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) + 80));
    sub_1D4F688F0();
    OUTLINED_FUNCTION_69_4();
    sub_1D5615158();
    OUTLINED_FUNCTION_30_44();
    [v21 setModelObjects_];
  }

  else
  {
    sub_1D5615E08();
    __break(1u);
  }
}

void sub_1D5536938(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  sub_1D555A4A8();
  if (v7)
  {
    v8 = v7;
    v9 = v7[2];
    if (v9)
    {
      v20 = MEMORY[0x1E69E7CC0];
      sub_1D5615CB8();
      v10 = v8 + 32;
      do
      {
        sub_1D4E628D4(v10, v19);
        __swift_project_boxed_opaque_existential_1(v19, v19[3]);
        v11 = OUTLINED_FUNCTION_178_6();
        v12(v11);
        v13 = OUTLINED_FUNCTION_64_35();
        sub_1D5159364(v13, v14, v15);
        v16 = OUTLINED_FUNCTION_192_4();
        v17(v16);
        __swift_destroy_boxed_opaque_existential_1(v19);
        sub_1D5615C88();
        v8 = *(v20 + 16);
        sub_1D5615CC8();
        sub_1D5615CD8();
        sub_1D5615C98();
        v10 += 40;
        --v9;
      }

      while (v9);
    }

    else
    {
    }

    v18 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) + 80));
    sub_1D4F688F0();
    OUTLINED_FUNCTION_69_4();
    sub_1D5615158();
    OUTLINED_FUNCTION_30_44();
    [v18 setRelatedModelObjects_];
  }

  else
  {
    sub_1D5615E08();
    __break(1u);
  }
}

uint64_t sub_1D5536B7C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8338, &qword_1D56719E0);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_1D560C368();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5536CB8, 0, 0);
}

uint64_t sub_1D5536E60()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D55370BC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_45_47();
  sub_1D554B9B4(v1, &qword_1EC7F8338);
  sub_1D554B9B4(v0, &qword_1EC7EA978);

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D553716C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8340, &qword_1D5671A00);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_1D560C368();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D55372A8, 0, 0);
}

uint64_t sub_1D5537450()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D55376AC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_45_47();
  sub_1D554B9B4(v1, &qword_1EC7F8340);
  sub_1D554B9B4(v0, &qword_1EC7EA978);

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D553775C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8348, &qword_1D5671A20);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_1D560C368();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5537898, 0, 0);
}

uint64_t sub_1D5537A40()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5537C9C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_45_47();
  sub_1D554B9B4(v1, &qword_1EC7F8348);
  sub_1D554B9B4(v0, &qword_1EC7EA978);

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D5537D4C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8350, &qword_1D5671A40);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_1D560C368();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5537E88, 0, 0);
}

uint64_t sub_1D5538030()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D553828C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_45_47();
  sub_1D554B9B4(v1, &qword_1EC7F8350);
  sub_1D554B9B4(v0, &qword_1EC7EA978);

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D553833C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8358, &qword_1D5671A60);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_1D560C368();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5538478, 0, 0);
}

uint64_t sub_1D5538620()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D553887C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_45_47();
  sub_1D554B9B4(v1, &qword_1EC7F8358);
  sub_1D554B9B4(v0, &qword_1EC7EA978);

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D553892C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8360, &qword_1D5671A80);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_1D560C368();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5538A68, 0, 0);
}

uint64_t sub_1D5538C10()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5538E6C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_45_47();
  sub_1D554B9B4(v1, &qword_1EC7F8360);
  sub_1D554B9B4(v0, &qword_1EC7EA978);

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D5538F1C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8368, &qword_1D5671AA0);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_1D560C368();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5539058, 0, 0);
}

uint64_t sub_1D5539200()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D553945C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_45_47();
  sub_1D554B9B4(v1, &qword_1EC7F8368);
  sub_1D554B9B4(v0, &qword_1EC7EA978);

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D553950C(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8368, &qword_1D5671AA0);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v2[23] = *(v4 + 64);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D55395E0, 0, 0);
}

uint64_t sub_1D55395E0()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v1 = OUTLINED_FUNCTION_52_39();
  OUTLINED_FUNCTION_134_10(v1);
  OUTLINED_FUNCTION_181_7();
  OUTLINED_FUNCTION_152_10();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_151_9();
  OUTLINED_FUNCTION_132_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4548, &qword_1D5653F60);
  OUTLINED_FUNCTION_16_98(v3);
  OUTLINED_FUNCTION_150_12(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_15_96();
  OUTLINED_FUNCTION_133_10(v4, sel_performLibraryImportChangeWithRequest_completionHandler_);
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DEC8](v5);
}

uint64_t sub_1D55396B0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D55397AC()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_131_7();

  OUTLINED_FUNCTION_76_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_86_25();
  OUTLINED_FUNCTION_180_6(&unk_1F50C3768);
  OUTLINED_FUNCTION_71_27();
  OUTLINED_FUNCTION_179_9();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_376();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D5539860(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8360, &qword_1D5671A80);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v2[23] = *(v4 + 64);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5539934, 0, 0);
}

uint64_t sub_1D5539934()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v1 = OUTLINED_FUNCTION_52_39();
  OUTLINED_FUNCTION_134_10(v1);
  OUTLINED_FUNCTION_181_7();
  OUTLINED_FUNCTION_152_10();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_151_9();
  OUTLINED_FUNCTION_132_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4548, &qword_1D5653F60);
  OUTLINED_FUNCTION_16_98(v3);
  OUTLINED_FUNCTION_150_12(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_15_96();
  OUTLINED_FUNCTION_133_10(v4, sel_performLibraryImportChangeWithRequest_completionHandler_);
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DEC8](v5);
}

uint64_t sub_1D5539A04()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5539B00()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_131_7();

  OUTLINED_FUNCTION_76_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_86_25();
  OUTLINED_FUNCTION_180_6(&unk_1F50C3718);
  OUTLINED_FUNCTION_71_27();
  OUTLINED_FUNCTION_179_9();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_376();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D5539BB4(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8358, &qword_1D5671A60);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v2[23] = *(v4 + 64);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5539C88, 0, 0);
}

uint64_t sub_1D5539C88()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v1 = OUTLINED_FUNCTION_52_39();
  OUTLINED_FUNCTION_134_10(v1);
  OUTLINED_FUNCTION_181_7();
  OUTLINED_FUNCTION_152_10();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_151_9();
  OUTLINED_FUNCTION_132_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4548, &qword_1D5653F60);
  OUTLINED_FUNCTION_16_98(v3);
  OUTLINED_FUNCTION_150_12(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_15_96();
  OUTLINED_FUNCTION_133_10(v4, sel_performLibraryImportChangeWithRequest_completionHandler_);
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DEC8](v5);
}

uint64_t sub_1D5539D58()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5539E54()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_131_7();

  OUTLINED_FUNCTION_76_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_86_25();
  OUTLINED_FUNCTION_180_6(&unk_1F50C36C8);
  OUTLINED_FUNCTION_71_27();
  OUTLINED_FUNCTION_179_9();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_376();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D5539F08(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8350, &qword_1D5671A40);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v2[23] = *(v4 + 64);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5539FDC, 0, 0);
}

uint64_t sub_1D5539FDC()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v1 = OUTLINED_FUNCTION_52_39();
  OUTLINED_FUNCTION_134_10(v1);
  OUTLINED_FUNCTION_181_7();
  OUTLINED_FUNCTION_152_10();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_151_9();
  OUTLINED_FUNCTION_132_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4548, &qword_1D5653F60);
  OUTLINED_FUNCTION_16_98(v3);
  OUTLINED_FUNCTION_150_12(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_15_96();
  OUTLINED_FUNCTION_133_10(v4, sel_performLibraryImportChangeWithRequest_completionHandler_);
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DEC8](v5);
}

uint64_t sub_1D553A0AC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D553A1A8()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_131_7();

  OUTLINED_FUNCTION_76_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_86_25();
  OUTLINED_FUNCTION_180_6(&unk_1F50C3678);
  OUTLINED_FUNCTION_71_27();
  OUTLINED_FUNCTION_179_9();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_376();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D553A25C(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8348, &qword_1D5671A20);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v2[23] = *(v4 + 64);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D553A330, 0, 0);
}

uint64_t sub_1D553A330()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v1 = OUTLINED_FUNCTION_52_39();
  OUTLINED_FUNCTION_134_10(v1);
  OUTLINED_FUNCTION_181_7();
  OUTLINED_FUNCTION_152_10();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_151_9();
  OUTLINED_FUNCTION_132_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4548, &qword_1D5653F60);
  OUTLINED_FUNCTION_16_98(v3);
  OUTLINED_FUNCTION_150_12(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_15_96();
  OUTLINED_FUNCTION_133_10(v4, sel_performLibraryImportChangeWithRequest_completionHandler_);
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DEC8](v5);
}

uint64_t sub_1D553A400()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D553A4FC()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_131_7();

  OUTLINED_FUNCTION_76_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_86_25();
  OUTLINED_FUNCTION_180_6(&unk_1F50C3628);
  OUTLINED_FUNCTION_71_27();
  OUTLINED_FUNCTION_179_9();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_376();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D553A5B0()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 200);
  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D553A624(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8340, &qword_1D5671A00);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v2[23] = *(v4 + 64);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D553A6F8, 0, 0);
}

uint64_t sub_1D553A6F8()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v1 = OUTLINED_FUNCTION_52_39();
  OUTLINED_FUNCTION_134_10(v1);
  OUTLINED_FUNCTION_181_7();
  OUTLINED_FUNCTION_152_10();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_151_9();
  OUTLINED_FUNCTION_132_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4548, &qword_1D5653F60);
  OUTLINED_FUNCTION_16_98(v3);
  OUTLINED_FUNCTION_150_12(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_15_96();
  OUTLINED_FUNCTION_133_10(v4, sel_performLibraryImportChangeWithRequest_completionHandler_);
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DEC8](v5);
}

uint64_t sub_1D553A7C8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D553A8C4()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_131_7();

  OUTLINED_FUNCTION_76_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_86_25();
  OUTLINED_FUNCTION_180_6(&unk_1F50C35D8);
  OUTLINED_FUNCTION_71_27();
  OUTLINED_FUNCTION_179_9();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_376();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D553A978(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8338, &qword_1D56719E0);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v2[23] = *(v4 + 64);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D553AA4C, 0, 0);
}

uint64_t sub_1D553AA4C()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v1 = OUTLINED_FUNCTION_52_39();
  OUTLINED_FUNCTION_134_10(v1);
  OUTLINED_FUNCTION_181_7();
  OUTLINED_FUNCTION_152_10();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_151_9();
  OUTLINED_FUNCTION_132_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4548, &qword_1D5653F60);
  OUTLINED_FUNCTION_16_98(v3);
  OUTLINED_FUNCTION_150_12(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_15_96();
  OUTLINED_FUNCTION_133_10(v4, sel_performLibraryImportChangeWithRequest_completionHandler_);
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DEC8](v5);
}

uint64_t sub_1D553AB1C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D553AC18()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_131_7();

  OUTLINED_FUNCTION_76_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_86_25();
  OUTLINED_FUNCTION_180_6(&unk_1F50C3588);
  OUTLINED_FUNCTION_71_27();
  OUTLINED_FUNCTION_179_9();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_376();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D553ACCC(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8338, &qword_1D56719E0);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_1D560C368();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D553AE08, 0, 0);
}

uint64_t sub_1D553AFB0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D553B20C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8340, &qword_1D5671A00);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_1D560C368();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D553B348, 0, 0);
}

uint64_t sub_1D553B4F0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D553B74C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8348, &qword_1D5671A20);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_1D560C368();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D553B888, 0, 0);
}

uint64_t sub_1D553BA30()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D553BC8C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8350, &qword_1D5671A40);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_1D560C368();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D553BDC8, 0, 0);
}

uint64_t sub_1D553BF70()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D553C1CC(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8358, &qword_1D5671A60);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_1D560C368();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D553C308, 0, 0);
}

uint64_t sub_1D553C4B0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D553C70C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8360, &qword_1D5671A80);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_1D560C368();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D553C848, 0, 0);
}

uint64_t sub_1D553C9F0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D553CC4C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8368, &qword_1D5671AA0);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_1D560C368();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D553CD88, 0, 0);
}

uint64_t sub_1D553CF30()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D553D18C(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    OUTLINED_FUNCTION_69_4();

    return sub_1D4F23514();
  }

  else
  {
    sub_1D5615168();
    OUTLINED_FUNCTION_69_4();

    return sub_1D4F23510();
  }
}

uint64_t sub_1D553D21C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D553D23C, 0, 0);
}

uint64_t sub_1D553D23C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_148_10();
  sub_1D526F8A8();
  OUTLINED_FUNCTION_153_6(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_85_24(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_53_37(v2);

  return sub_1D542C85C();
}

uint64_t sub_1D553D2C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D553D2E8, 0, 0);
}

uint64_t sub_1D553D2E8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_148_10();
  sub_1D526FA14();
  OUTLINED_FUNCTION_153_6(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_85_24(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_53_37(v2);

  return sub_1D542C85C();
}

uint64_t sub_1D553D374(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D553D394, 0, 0);
}

uint64_t sub_1D553D394()
{
  OUTLINED_FUNCTION_60();
  v0 = OUTLINED_FUNCTION_148_10();
  sub_1D526FB80(v0);
  OUTLINED_FUNCTION_153_6(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_85_24(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_53_37(v3);

  return sub_1D542C85C();
}

uint64_t sub_1D553D420(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D553D440, 0, 0);
}

uint64_t sub_1D553D440()
{
  OUTLINED_FUNCTION_60();
  v0 = OUTLINED_FUNCTION_148_10();
  sub_1D526F59C(v0);
  OUTLINED_FUNCTION_153_6(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_85_24(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_53_37(v3);

  return sub_1D542C85C();
}

uint64_t sub_1D553D4CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D553D4EC, 0, 0);
}

uint64_t sub_1D553D4EC()
{
  OUTLINED_FUNCTION_60();
  v0 = OUTLINED_FUNCTION_148_10();
  sub_1D526FBA0(v0);
  OUTLINED_FUNCTION_153_6(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_85_24(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_53_37(v3);

  return sub_1D542C85C();
}

uint64_t sub_1D553D578()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D553D674(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D553D694, 0, 0);
}

uint64_t sub_1D553D694()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_148_10();
  sub_1D526FBC0();
  OUTLINED_FUNCTION_153_6(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_85_24(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_53_37(v2);

  return sub_1D542C85C();
}

uint64_t sub_1D553D720(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D553D740, 0, 0);
}

uint64_t sub_1D553D740()
{
  OUTLINED_FUNCTION_60();
  v0 = OUTLINED_FUNCTION_148_10();
  sub_1D526FD2C(v0);
  OUTLINED_FUNCTION_153_6(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_85_24(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_53_37(v3);

  return sub_1D542C85C();
}

uint64_t MusicLibrary.add(_:)()
{
  OUTLINED_FUNCTION_60();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  OUTLINED_FUNCTION_22(v4);
  v1[5] = OUTLINED_FUNCTION_127();
  v5 = type metadata accessor for TVSeason(0);
  v1[6] = v5;
  OUTLINED_FUNCTION_69(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_167();
  v1[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  OUTLINED_FUNCTION_22(v7);
  v8 = OUTLINED_FUNCTION_127();
  v9 = OUTLINED_FUNCTION_176_5(v8);
  v10 = type metadata accessor for TVEpisode(v9);
  v1[11] = v10;
  OUTLINED_FUNCTION_69(v10);
  v1[12] = v11;
  v1[13] = OUTLINED_FUNCTION_167();
  v1[14] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_22(v12);
  v1[15] = OUTLINED_FUNCTION_127();
  v13 = sub_1D5613838();
  v1[16] = v13;
  OUTLINED_FUNCTION_69(v13);
  v1[17] = v14;
  v1[18] = OUTLINED_FUNCTION_167();
  v1[19] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v15);
  v1[20] = OUTLINED_FUNCTION_127();
  v16 = sub_1D5614898();
  v1[21] = v16;
  OUTLINED_FUNCTION_69(v16);
  v1[22] = v17;
  v1[23] = OUTLINED_FUNCTION_167();
  v1[24] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220);
  OUTLINED_FUNCTION_22(v18);
  v1[25] = OUTLINED_FUNCTION_127();
  v19 = sub_1D560EEA8();
  v1[26] = v19;
  OUTLINED_FUNCTION_69(v19);
  v1[27] = v20;
  v1[28] = OUTLINED_FUNCTION_167();
  v1[29] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  OUTLINED_FUNCTION_22(v21);
  v1[30] = OUTLINED_FUNCTION_127();
  v22 = type metadata accessor for MusicMovie(0);
  v1[31] = v22;
  OUTLINED_FUNCTION_69(v22);
  v1[32] = v23;
  v1[33] = OUTLINED_FUNCTION_167();
  v1[34] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v24);
  v1[35] = OUTLINED_FUNCTION_127();
  v25 = sub_1D5613AF8();
  v1[36] = v25;
  OUTLINED_FUNCTION_69(v25);
  v1[37] = v26;
  v1[38] = OUTLINED_FUNCTION_167();
  v1[39] = swift_task_alloc();
  v27 = type metadata accessor for GenericMusicItem(0);
  v1[40] = v27;
  OUTLINED_FUNCTION_22(v27);
  v1[41] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v28, v29, v30);
}

void sub_1D553DBE8()
{
  v1 = v0[40];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_5_151();
  OUTLINED_FUNCTION_196_5();
  OUTLINED_FUNCTION_159();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[41];
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 18:
    case 19:
    case 20:
      v7 = v0[2];
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      v10 = sub_1D554B4BC(v8, v9, MEMORY[0x1E6975588]);
      OUTLINED_FUNCTION_79_25(v10);
      OUTLINED_FUNCTION_56_0();
      (*(v11 + 104))();
      swift_willThrow();
      sub_1D554B9B4(v7, &qword_1EC7EA608);
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v6, v12);
      goto LABEL_3;
    case 7:
      OUTLINED_FUNCTION_4_157();
      OUTLINED_FUNCTION_159();
      sub_1D553FFD8();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAEF8, &qword_1D561DCC8);
      v34 = OUTLINED_FUNCTION_58_39(v33);
      v0[48] = v34;
      v35 = OUTLINED_FUNCTION_33_59(v34, xmmword_1D561C050);
      OUTLINED_FUNCTION_183_7(v35);
      OUTLINED_FUNCTION_27_0(&unk_1D5671918);
      v23 = swift_task_alloc();
      v0[49] = v23;
      *v23 = v0;
      v24 = sub_1D553E5F4;
      goto LABEL_15;
    case 8:
      OUTLINED_FUNCTION_62_40();
      v0[52] = v15;
      v0[53] = v16;
      v17 = OUTLINED_FUNCTION_76_1();
      v18(v17);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82E0, &qword_1D5671908);
      v20 = OUTLINED_FUNCTION_48_43(v19);
      v0[54] = v20;
      v21 = OUTLINED_FUNCTION_30_71(v20, xmmword_1D561C050);
      v22(v21);
      OUTLINED_FUNCTION_27_0(&unk_1D5671910);
      v23 = swift_task_alloc();
      v0[55] = v23;
      *v23 = v0;
      v24 = sub_1D553E8E0;
      goto LABEL_15;
    case 9:
      OUTLINED_FUNCTION_62_40();
      v0[58] = v36;
      v0[59] = v37;
      v38 = OUTLINED_FUNCTION_76_1();
      v39(v38);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82D8, &qword_1D56718F8);
      v41 = OUTLINED_FUNCTION_48_43(v40);
      v0[60] = v41;
      v42 = OUTLINED_FUNCTION_30_71(v41, xmmword_1D561C050);
      v43(v42);
      OUTLINED_FUNCTION_27_0(&unk_1D5671900);
      v23 = swift_task_alloc();
      v0[61] = v23;
      *v23 = v0;
      v24 = sub_1D553EBC4;
      goto LABEL_15;
    case 14:
      v0[64] = *(v0[17] + 32);
      OUTLINED_FUNCTION_114_10();
      v0[65] = v55;
      v56 = OUTLINED_FUNCTION_76_1();
      v57(v56);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACE0, &qword_1D561DAC0);
      v59 = OUTLINED_FUNCTION_48_43(v58);
      v0[66] = v59;
      v60 = OUTLINED_FUNCTION_30_71(v59, xmmword_1D561C050);
      v61(v60);
      OUTLINED_FUNCTION_27_0(&unk_1D56718F0);
      v23 = swift_task_alloc();
      v0[67] = v23;
      *v23 = v0;
      v24 = sub_1D553EEA8;
      goto LABEL_15;
    case 16:
      OUTLINED_FUNCTION_2_196();
      OUTLINED_FUNCTION_159();
      sub_1D553FFD8();
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF08, &qword_1D561DCD8);
      v63 = OUTLINED_FUNCTION_58_39(v62);
      v0[70] = v63;
      v64 = OUTLINED_FUNCTION_31_58(v63, xmmword_1D561C050);
      OUTLINED_FUNCTION_183_7(v64);
      OUTLINED_FUNCTION_27_0(&unk_1D56718E8);
      v23 = swift_task_alloc();
      v0[71] = v23;
      *v23 = v0;
      v24 = sub_1D553F190;
      goto LABEL_15;
    case 17:
      OUTLINED_FUNCTION_3_203();
      OUTLINED_FUNCTION_159();
      sub_1D553FFD8();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAD90, &qword_1D561DB78);
      v45 = OUTLINED_FUNCTION_58_39(v44);
      v0[74] = v45;
      v46 = OUTLINED_FUNCTION_32_64(v45, xmmword_1D561C050);
      OUTLINED_FUNCTION_183_7(v46);
      OUTLINED_FUNCTION_27_0(&unk_1D56718E0);
      v23 = swift_task_alloc();
      v0[75] = v23;
      *v23 = v0;
      v24 = sub_1D553F47C;
      goto LABEL_15;
    case 21:
      v47 = v0[2];
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v6, v48);
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      v51 = sub_1D554B4BC(v49, v50, MEMORY[0x1E6975588]);
      v52 = OUTLINED_FUNCTION_12_57(v51);
      OUTLINED_FUNCTION_194_9(v52, v53);
      OUTLINED_FUNCTION_43_8();
      (*(v54 + 104))();
      swift_willThrow();
      sub_1D554B9B4(v47, &qword_1EC7EA608);
LABEL_3:
      OUTLINED_FUNCTION_24_73();
      OUTLINED_FUNCTION_7_144();

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_97();

      __asm { BRAA            X1, X16 }

      return;
    default:
      OUTLINED_FUNCTION_62_40();
      v0[42] = v25;
      v0[43] = v26;
      v27 = OUTLINED_FUNCTION_76_1();
      v28(v27);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82E8, &qword_1D5671920);
      v30 = OUTLINED_FUNCTION_48_43(v29);
      v0[44] = v30;
      v31 = OUTLINED_FUNCTION_30_71(v30, xmmword_1D561C050);
      v32(v31);
      OUTLINED_FUNCTION_27_0(&unk_1D5671928);
      v23 = swift_task_alloc();
      v0[45] = v23;
      *v23 = v0;
      v24 = sub_1D553E310;
LABEL_15:
      v23[1] = v24;
      OUTLINED_FUNCTION_189_7();
      OUTLINED_FUNCTION_97();

      __asm { BR              X1 }

      return;
  }
}

uint64_t sub_1D553E310()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 368) = v0;

  if (!v0)
  {
    *(v4 + 376) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D553E430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA708(v25);

  v26 = OUTLINED_FUNCTION_75_27();
  v27(v26);
  OUTLINED_FUNCTION_39_7();
  if (v28)
  {
    sub_1D554B9B4(v24[35], &qword_1EC7EEC30);
  }

  else
  {
    v29 = v24[42];
    sub_1D554B9B4(v24[2], &qword_1EC7EA608);
    v30 = OUTLINED_FUNCTION_15_82();
    v29(v30);
    v31 = OUTLINED_FUNCTION_64_35();
    v29(v31);
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_90_22();
  }

  OUTLINED_FUNCTION_7_144();
  OUTLINED_FUNCTION_96_17(v32);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553E5F4()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 400) = v0;

  if (!v0)
  {
    *(v4 + 408) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D553E714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[34];
  v26 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA720(v26);

  OUTLINED_FUNCTION_6_157();
  sub_1D5540088(v25, v27);
  OUTLINED_FUNCTION_39_7();
  if (v28)
  {
    sub_1D554B9B4(v24[30], &qword_1EC7EA890);
  }

  else
  {
    v29 = v24[2];
    sub_1D554B9B4(v29, &qword_1EC7EA608);
    OUTLINED_FUNCTION_130_15();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_81_0();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_109();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_99_17(v29);
  }

  OUTLINED_FUNCTION_7_144();
  OUTLINED_FUNCTION_96_17(v30);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553E8E0()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 448) = v0;

  if (!v0)
  {
    *(v4 + 456) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D553EA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA74C(v25);

  v26 = OUTLINED_FUNCTION_75_27();
  v27(v26);
  OUTLINED_FUNCTION_39_7();
  if (v28)
  {
    sub_1D554B9B4(v24[25], &qword_1EC7EA990);
  }

  else
  {
    v29 = v24[52];
    sub_1D554B9B4(v24[2], &qword_1EC7EA608);
    v30 = OUTLINED_FUNCTION_15_82();
    v29(v30);
    v31 = OUTLINED_FUNCTION_64_35();
    v29(v31);
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_90_22();
  }

  OUTLINED_FUNCTION_7_144();
  OUTLINED_FUNCTION_96_17(v32);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553EBC4()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 496) = v0;

  if (!v0)
  {
    *(v4 + 504) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D553ECE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA764(v25);

  v26 = OUTLINED_FUNCTION_75_27();
  v27(v26);
  OUTLINED_FUNCTION_39_7();
  if (v28)
  {
    sub_1D554B9B4(v24[20], &unk_1EC7F1990);
  }

  else
  {
    v29 = v24[58];
    sub_1D554B9B4(v24[2], &qword_1EC7EA608);
    v30 = OUTLINED_FUNCTION_15_82();
    v29(v30);
    v31 = OUTLINED_FUNCTION_64_35();
    v29(v31);
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_90_22();
  }

  OUTLINED_FUNCTION_7_144();
  OUTLINED_FUNCTION_96_17(v32);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553EEA8()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 544) = v0;

  if (!v0)
  {
    *(v4 + 552) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D553EFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA4A0(v25);

  v26 = OUTLINED_FUNCTION_75_27();
  v27(v26);
  OUTLINED_FUNCTION_39_7();
  if (v28)
  {
    sub_1D554B9B4(v24[15], &qword_1EC7EA978);
  }

  else
  {
    v29 = v24[64];
    sub_1D554B9B4(v24[2], &qword_1EC7EA608);
    v30 = OUTLINED_FUNCTION_15_82();
    v29(v30);
    v31 = OUTLINED_FUNCTION_64_35();
    v29(v31);
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_90_22();
  }

  OUTLINED_FUNCTION_7_144();
  OUTLINED_FUNCTION_96_17(v32);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553F190()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 576) = v0;

  if (!v0)
  {
    *(v4 + 584) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D553F2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[14];
  v26 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA80C(v26);

  OUTLINED_FUNCTION_9_131();
  sub_1D5540088(v25, v27);
  OUTLINED_FUNCTION_39_7();
  if (v28)
  {
    sub_1D554B9B4(v24[10], &qword_1EC7EA880);
  }

  else
  {
    v29 = v24[2];
    sub_1D554B9B4(v29, &qword_1EC7EA608);
    OUTLINED_FUNCTION_128_12();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_81_0();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_109();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_99_17(v29);
  }

  OUTLINED_FUNCTION_7_144();
  OUTLINED_FUNCTION_96_17(v30);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553F47C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 608) = v0;

  if (!v0)
  {
    *(v4 + 616) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D553F59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[9];
  v26 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA838(v26);

  OUTLINED_FUNCTION_10_129();
  sub_1D5540088(v25, v27);
  OUTLINED_FUNCTION_39_7();
  if (v28)
  {
    sub_1D554B9B4(v24[5], &qword_1EC7EA878);
  }

  else
  {
    v29 = v24[2];
    sub_1D554B9B4(v29, &qword_1EC7EA608);
    OUTLINED_FUNCTION_129_9();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_81_0();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_109();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_99_17(v29);
  }

  OUTLINED_FUNCTION_7_144();
  OUTLINED_FUNCTION_96_17(v30);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553F768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  OUTLINED_FUNCTION_188_8();
  v26();
  sub_1D554B9B4(v24, &qword_1EC7EA608);
  OUTLINED_FUNCTION_11_125(*(v25 + 368));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553F8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = *(v24 + 16);
  OUTLINED_FUNCTION_6_157();
  sub_1D5540088(v26, v27);
  sub_1D554B9B4(v25, &qword_1EC7EA608);
  OUTLINED_FUNCTION_11_125(*(v24 + 400));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553F9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  OUTLINED_FUNCTION_188_8();
  v26();
  sub_1D554B9B4(v24, &qword_1EC7EA608);
  OUTLINED_FUNCTION_11_125(*(v25 + 448));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553FB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  OUTLINED_FUNCTION_188_8();
  v26();
  sub_1D554B9B4(v24, &qword_1EC7EA608);
  OUTLINED_FUNCTION_11_125(*(v25 + 496));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553FC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  OUTLINED_FUNCTION_188_8();
  v26();
  sub_1D554B9B4(v24, &qword_1EC7EA608);
  OUTLINED_FUNCTION_11_125(*(v25 + 544));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553FD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = *(v24 + 16);
  OUTLINED_FUNCTION_9_131();
  sub_1D5540088(v26, v27);
  sub_1D554B9B4(v25, &qword_1EC7EA608);
  OUTLINED_FUNCTION_11_125(*(v24 + 576));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553FEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = *(v24 + 16);
  OUTLINED_FUNCTION_10_129();
  sub_1D5540088(v26, v27);
  sub_1D554B9B4(v25, &qword_1EC7EA608);
  OUTLINED_FUNCTION_11_125(*(v24 + 608));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553FFD8()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

uint64_t sub_1D5540030()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

uint64_t sub_1D5540088(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t MusicLibrary.add<A, B>(_:referralItem:relatedItems:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_177_8(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  OUTLINED_FUNCTION_22(v9);
  v0[18] = OUTLINED_FUNCTION_127();
  v10 = type metadata accessor for TVSeason(0);
  v0[19] = v10;
  OUTLINED_FUNCTION_69(v10);
  v0[20] = v11;
  v0[21] = OUTLINED_FUNCTION_167();
  v0[22] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  OUTLINED_FUNCTION_22(v12);
  v0[23] = OUTLINED_FUNCTION_127();
  v13 = type metadata accessor for TVEpisode(0);
  v0[24] = v13;
  OUTLINED_FUNCTION_69(v13);
  v0[25] = v14;
  v0[26] = OUTLINED_FUNCTION_167();
  v0[27] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_22(v15);
  v0[28] = OUTLINED_FUNCTION_127();
  v16 = sub_1D5613838();
  v0[29] = v16;
  OUTLINED_FUNCTION_69(v16);
  v0[30] = v17;
  v0[31] = OUTLINED_FUNCTION_167();
  v0[32] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v18);
  v0[33] = OUTLINED_FUNCTION_127();
  v19 = sub_1D5614898();
  v0[34] = v19;
  OUTLINED_FUNCTION_69(v19);
  v0[35] = v20;
  v0[36] = OUTLINED_FUNCTION_167();
  v0[37] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220);
  OUTLINED_FUNCTION_22(v21);
  v0[38] = OUTLINED_FUNCTION_127();
  v22 = sub_1D560EEA8();
  v0[39] = v22;
  OUTLINED_FUNCTION_69(v22);
  v0[40] = v23;
  v0[41] = OUTLINED_FUNCTION_167();
  v0[42] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  OUTLINED_FUNCTION_22(v24);
  v0[43] = OUTLINED_FUNCTION_127();
  v25 = type metadata accessor for MusicMovie(0);
  v0[44] = v25;
  OUTLINED_FUNCTION_69(v25);
  v0[45] = v26;
  v0[46] = OUTLINED_FUNCTION_167();
  v0[47] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v27);
  v0[48] = OUTLINED_FUNCTION_127();
  v28 = sub_1D5613AF8();
  v0[49] = v28;
  OUTLINED_FUNCTION_69(v28);
  v0[50] = v29;
  v0[51] = OUTLINED_FUNCTION_167();
  v0[52] = swift_task_alloc();
  v30 = type metadata accessor for GenericMusicItem(0);
  v0[53] = v30;
  OUTLINED_FUNCTION_22(v30);
  v0[54] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v31, v32, v33);
}

uint64_t sub_1D55404FC()
{
  OUTLINED_FUNCTION_98_15();
  v1 = v0[53];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_5_151();
  OUTLINED_FUNCTION_196_5();
  OUTLINED_FUNCTION_159();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xFu:
    case 0x12u:
    case 0x13u:
    case 0x14u:
      v5 = v0[54];
      v6 = v0[9];
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      v9 = sub_1D554B4BC(v7, v8, MEMORY[0x1E6975588]);
      OUTLINED_FUNCTION_79_25(v9);
      OUTLINED_FUNCTION_56_0();
      (*(v10 + 104))();
      swift_willThrow();
      sub_1D554B9B4(v6, &qword_1EC7EA608);
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v5, v11);
      goto LABEL_3;
    case 7u:
      OUTLINED_FUNCTION_4_157();
      sub_1D553FFD8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAEF8, &qword_1D561DCC8);
      OUTLINED_FUNCTION_51_37();
      v35 = OUTLINED_FUNCTION_135_11(v34);
      v0[61] = v35;
      OUTLINED_FUNCTION_33_59(v35, xmmword_1D561C050);
      OUTLINED_FUNCTION_182_5();
      v0[7] = v35;
      v36 = swift_task_alloc();
      v0[62] = v36;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EDD52880);
      OUTLINED_FUNCTION_21_82();
      sub_1D554B4BC(v37, v38, &protocol conformance descriptor for MusicMovie);
      OUTLINED_FUNCTION_118_15();
      *v36 = v39;
      v36[1] = sub_1D554112C;
      goto LABEL_15;
    case 8u:
      OUTLINED_FUNCTION_81();
      v0[65] = v14;
      OUTLINED_FUNCTION_114_10();
      v0[66] = v15;
      v16 = OUTLINED_FUNCTION_96_2();
      v17(v16);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82E0, &qword_1D5671908);
      v19 = OUTLINED_FUNCTION_47_49(v18);
      v0[67] = v19;
      v20 = OUTLINED_FUNCTION_29_63(v19, xmmword_1D561C050);
      v21(v20);
      v0[6] = v19;
      v22 = swift_task_alloc();
      v0[68] = v22;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EC7F8318);
      OUTLINED_FUNCTION_73_26();
      *v22 = v23;
      v22[1] = sub_1D55413EC;
      OUTLINED_FUNCTION_28_71();
      goto LABEL_13;
    case 9u:
      OUTLINED_FUNCTION_81();
      v0[71] = v40;
      OUTLINED_FUNCTION_114_10();
      v0[72] = v41;
      v42 = OUTLINED_FUNCTION_96_2();
      v43(v42);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82D8, &qword_1D56718F8);
      v45 = OUTLINED_FUNCTION_47_49(v44);
      v0[73] = v45;
      v46 = OUTLINED_FUNCTION_29_63(v45, xmmword_1D561C050);
      v47(v46);
      v0[5] = v45;
      v48 = swift_task_alloc();
      v0[74] = v48;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EC7F8308);
      OUTLINED_FUNCTION_73_26();
      *v48 = v49;
      v48[1] = sub_1D55416A8;
      OUTLINED_FUNCTION_28_71();
      goto LABEL_13;
    case 0xEu:
      OUTLINED_FUNCTION_81();
      v0[77] = v65;
      OUTLINED_FUNCTION_114_10();
      v0[78] = v66;
      v67 = OUTLINED_FUNCTION_96_2();
      v68(v67);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACE0, &qword_1D561DAC0);
      v70 = OUTLINED_FUNCTION_47_49(v69);
      v0[79] = v70;
      v71 = OUTLINED_FUNCTION_29_63(v70, xmmword_1D561C050);
      v72(v71);
      v0[4] = v70;
      v73 = swift_task_alloc();
      v0[80] = v73;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EC7F71B8);
      OUTLINED_FUNCTION_73_26();
      *v73 = v74;
      v73[1] = sub_1D5541964;
      OUTLINED_FUNCTION_28_71();
      goto LABEL_13;
    case 0x10u:
      OUTLINED_FUNCTION_2_196();
      sub_1D553FFD8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF08, &qword_1D561DCD8);
      OUTLINED_FUNCTION_51_37();
      v76 = OUTLINED_FUNCTION_135_11(v75);
      v0[83] = v76;
      OUTLINED_FUNCTION_31_58(v76, xmmword_1D561C050);
      OUTLINED_FUNCTION_182_5();
      v0[3] = v76;
      v77 = swift_task_alloc();
      v0[84] = v77;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EDD527F8);
      OUTLINED_FUNCTION_19_88();
      sub_1D554B4BC(v78, v79, &protocol conformance descriptor for TVEpisode);
      OUTLINED_FUNCTION_118_15();
      *v77 = v80;
      v77[1] = sub_1D5541C20;
      goto LABEL_15;
    case 0x11u:
      OUTLINED_FUNCTION_3_203();
      sub_1D553FFD8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAD90, &qword_1D561DB78);
      OUTLINED_FUNCTION_51_37();
      v51 = OUTLINED_FUNCTION_135_11(v50);
      v0[87] = v51;
      OUTLINED_FUNCTION_32_64(v51, xmmword_1D561C050);
      OUTLINED_FUNCTION_182_5();
      v0[2] = v51;
      v52 = swift_task_alloc();
      v0[88] = v52;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EC7EFC90);
      OUTLINED_FUNCTION_20_97();
      sub_1D554B4BC(v53, v54, &protocol conformance descriptor for TVSeason);
      OUTLINED_FUNCTION_118_15();
      *v52 = v55;
      v52[1] = sub_1D5541EE0;
LABEL_15:
      OUTLINED_FUNCTION_41_55();
      OUTLINED_FUNCTION_137_15();
      goto LABEL_16;
    case 0x15u:
      v56 = v0[9];
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v57, v58);
      v59 = sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      sub_1D554B4BC(v60, v61, MEMORY[0x1E6975588]);
      OUTLINED_FUNCTION_69_4();
      v62 = swift_allocError();
      v64 = OUTLINED_FUNCTION_194_9(v62, v63);
      (*(*(v59 - 8) + 104))(v64, *MEMORY[0x1E6975570], v59);
      swift_willThrow();
      sub_1D554B9B4(v56, &qword_1EC7EA608);
LABEL_3:
      OUTLINED_FUNCTION_14_96(v0[54]);

      OUTLINED_FUNCTION_49();

      return v12();
    default:
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_114_10();
      v0[55] = v24;
      v0[56] = v25;
      v26 = OUTLINED_FUNCTION_96_2();
      v27(v26);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82E8, &qword_1D5671920);
      v29 = OUTLINED_FUNCTION_47_49(v28);
      v0[57] = v29;
      v30 = OUTLINED_FUNCTION_29_63(v29, xmmword_1D561C050);
      v31(v30);
      v0[8] = v29;
      v32 = swift_task_alloc();
      v0[58] = v32;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EC7F8330);
      OUTLINED_FUNCTION_73_26();
      *v32 = v33;
      v32[1] = sub_1D5540E74;
      OUTLINED_FUNCTION_28_71();
LABEL_13:
      OUTLINED_FUNCTION_137_15();
LABEL_16:
      OUTLINED_FUNCTION_42_21();

      return MusicLibrary.add<A, B, C, D>(_:referralItem:relatedItems:)();
  }
}

uint64_t sub_1D5540E74()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 472) = v0;

  if (!v0)
  {
    *(v4 + 480) = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5540F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA708(v25);

  v26 = OUTLINED_FUNCTION_75_27();
  v27(v26);
  OUTLINED_FUNCTION_39_7();
  if (v28)
  {
    sub_1D554B9B4(v24[48], &qword_1EC7EEC30);
  }

  else
  {
    v29 = v24[55];
    sub_1D554B9B4(v24[9], &qword_1EC7EA608);
    v30 = OUTLINED_FUNCTION_15_82();
    v29(v30);
    v31 = OUTLINED_FUNCTION_64_35();
    v29(v31);
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_90_22();
  }

  OUTLINED_FUNCTION_13_100();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D554112C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 504) = v0;

  if (!v0)
  {
    *(v4 + 512) = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5541240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[47];
  v26 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA720(v26);

  OUTLINED_FUNCTION_6_157();
  sub_1D5540088(v25, v27);
  OUTLINED_FUNCTION_39_7();
  if (v28)
  {
    sub_1D554B9B4(v24[43], &qword_1EC7EA890);
  }

  else
  {
    v29 = v24[9];
    sub_1D554B9B4(v29, &qword_1EC7EA608);
    OUTLINED_FUNCTION_130_15();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_81_0();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_109();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_99_17(v29);
  }

  OUTLINED_FUNCTION_13_100();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D55413EC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 552) = v0;

  if (!v0)
  {
    *(v4 + 560) = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5541500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA74C(v25);

  v26 = OUTLINED_FUNCTION_75_27();
  v27(v26);
  OUTLINED_FUNCTION_39_7();
  if (v28)
  {
    sub_1D554B9B4(v24[38], &qword_1EC7EA990);
  }

  else
  {
    v29 = v24[65];
    sub_1D554B9B4(v24[9], &qword_1EC7EA608);
    v30 = OUTLINED_FUNCTION_15_82();
    v29(v30);
    v31 = OUTLINED_FUNCTION_64_35();
    v29(v31);
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_90_22();
  }

  OUTLINED_FUNCTION_13_100();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D55416A8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 600) = v0;

  if (!v0)
  {
    *(v4 + 608) = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D55417BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA764(v25);

  v26 = OUTLINED_FUNCTION_75_27();
  v27(v26);
  OUTLINED_FUNCTION_39_7();
  if (v28)
  {
    sub_1D554B9B4(v24[33], &unk_1EC7F1990);
  }

  else
  {
    v29 = v24[71];
    sub_1D554B9B4(v24[9], &qword_1EC7EA608);
    v30 = OUTLINED_FUNCTION_15_82();
    v29(v30);
    v31 = OUTLINED_FUNCTION_64_35();
    v29(v31);
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_90_22();
  }

  OUTLINED_FUNCTION_13_100();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D5541964()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 648) = v0;

  if (!v0)
  {
    *(v4 + 656) = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5541A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA4A0(v25);

  v26 = OUTLINED_FUNCTION_75_27();
  v27(v26);
  OUTLINED_FUNCTION_39_7();
  if (v28)
  {
    sub_1D554B9B4(v24[28], &qword_1EC7EA978);
  }

  else
  {
    v29 = v24[77];
    sub_1D554B9B4(v24[9], &qword_1EC7EA608);
    v30 = OUTLINED_FUNCTION_15_82();
    v29(v30);
    v31 = OUTLINED_FUNCTION_64_35();
    v29(v31);
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_90_22();
  }

  OUTLINED_FUNCTION_13_100();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D5541C20()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 680) = v0;

  if (!v0)
  {
    *(v4 + 688) = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5541D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[27];
  v26 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA80C(v26);

  OUTLINED_FUNCTION_9_131();
  sub_1D5540088(v25, v27);
  OUTLINED_FUNCTION_39_7();
  if (v28)
  {
    sub_1D554B9B4(v24[23], &qword_1EC7EA880);
  }

  else
  {
    v29 = v24[9];
    sub_1D554B9B4(v29, &qword_1EC7EA608);
    OUTLINED_FUNCTION_128_12();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_81_0();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_109();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_99_17(v29);
  }

  OUTLINED_FUNCTION_13_100();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D5541EE0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 712) = v0;

  if (!v0)
  {
    *(v4 + 720) = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5541FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[22];
  v26 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA838(v26);

  OUTLINED_FUNCTION_10_129();
  sub_1D5540088(v25, v27);
  OUTLINED_FUNCTION_39_7();
  if (v28)
  {
    sub_1D554B9B4(v24[18], &qword_1EC7EA878);
  }

  else
  {
    v29 = v24[9];
    sub_1D554B9B4(v29, &qword_1EC7EA608);
    OUTLINED_FUNCTION_129_9();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_81_0();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_109();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_99_17(v29);
  }

  OUTLINED_FUNCTION_13_100();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D55421A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  OUTLINED_FUNCTION_191_6();
  v26();
  sub_1D554B9B4(v24, &qword_1EC7EA608);
  OUTLINED_FUNCTION_12_106(*(v25 + 472));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D55422D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = *(v24 + 72);
  OUTLINED_FUNCTION_6_157();
  sub_1D5540088(v26, v27);
  sub_1D554B9B4(v25, &qword_1EC7EA608);
  OUTLINED_FUNCTION_12_106(*(v24 + 504));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D5542408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  OUTLINED_FUNCTION_191_6();
  v26();
  sub_1D554B9B4(v24, &qword_1EC7EA608);
  OUTLINED_FUNCTION_12_106(*(v25 + 552));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D5542540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  OUTLINED_FUNCTION_191_6();
  v26();
  sub_1D554B9B4(v24, &qword_1EC7EA608);
  OUTLINED_FUNCTION_12_106(*(v25 + 600));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D5542678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  OUTLINED_FUNCTION_191_6();
  v26();
  sub_1D554B9B4(v24, &qword_1EC7EA608);
  OUTLINED_FUNCTION_12_106(*(v25 + 648));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D55427B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = *(v24 + 72);
  OUTLINED_FUNCTION_9_131();
  sub_1D5540088(v26, v27);
  sub_1D554B9B4(v25, &qword_1EC7EA608);
  OUTLINED_FUNCTION_12_106(*(v24 + 680));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D55428E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = *(v24 + 72);
  OUTLINED_FUNCTION_10_129();
  sub_1D5540088(v26, v27);
  sub_1D554B9B4(v25, &qword_1EC7EA608);
  OUTLINED_FUNCTION_12_106(*(v24 + 712));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t MusicLibrary.import(_:)()
{
  OUTLINED_FUNCTION_60();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  OUTLINED_FUNCTION_22(v4);
  v1[5] = OUTLINED_FUNCTION_127();
  v5 = type metadata accessor for TVSeason(0);
  v1[6] = v5;
  OUTLINED_FUNCTION_69(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_167();
  v1[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  OUTLINED_FUNCTION_22(v7);
  v8 = OUTLINED_FUNCTION_127();
  v9 = OUTLINED_FUNCTION_176_5(v8);
  v10 = type metadata accessor for TVEpisode(v9);
  v1[11] = v10;
  OUTLINED_FUNCTION_69(v10);
  v1[12] = v11;
  v1[13] = OUTLINED_FUNCTION_167();
  v1[14] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_22(v12);
  v1[15] = OUTLINED_FUNCTION_127();
  v13 = sub_1D5613838();
  v1[16] = v13;
  OUTLINED_FUNCTION_69(v13);
  v1[17] = v14;
  v1[18] = OUTLINED_FUNCTION_167();
  v1[19] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v15);
  v1[20] = OUTLINED_FUNCTION_127();
  v16 = sub_1D5614898();
  v1[21] = v16;
  OUTLINED_FUNCTION_69(v16);
  v1[22] = v17;
  v1[23] = OUTLINED_FUNCTION_167();
  v1[24] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220);
  OUTLINED_FUNCTION_22(v18);
  v1[25] = OUTLINED_FUNCTION_127();
  v19 = sub_1D560EEA8();
  v1[26] = v19;
  OUTLINED_FUNCTION_69(v19);
  v1[27] = v20;
  v1[28] = OUTLINED_FUNCTION_167();
  v1[29] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  OUTLINED_FUNCTION_22(v21);
  v1[30] = OUTLINED_FUNCTION_127();
  v22 = type metadata accessor for MusicMovie(0);
  v1[31] = v22;
  OUTLINED_FUNCTION_69(v22);
  v1[32] = v23;
  v1[33] = OUTLINED_FUNCTION_167();
  v1[34] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v24);
  v1[35] = OUTLINED_FUNCTION_127();
  v25 = sub_1D5613AF8();
  v1[36] = v25;
  OUTLINED_FUNCTION_69(v25);
  v1[37] = v26;
  v1[38] = OUTLINED_FUNCTION_167();
  v1[39] = swift_task_alloc();
  v27 = type metadata accessor for GenericMusicItem(0);
  v1[40] = v27;
  OUTLINED_FUNCTION_22(v27);
  v1[41] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v28, v29, v30);
}

void sub_1D5542E2C()
{
  v1 = v0[40];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_5_151();
  OUTLINED_FUNCTION_196_5();
  OUTLINED_FUNCTION_159();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[41];
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 18:
    case 19:
    case 20:
      v7 = v0[2];
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      v10 = sub_1D554B4BC(v8, v9, MEMORY[0x1E6975588]);
      OUTLINED_FUNCTION_79_25(v10);
      OUTLINED_FUNCTION_56_0();
      (*(v11 + 104))();
      swift_willThrow();
      sub_1D554B9B4(v7, &qword_1EC7EA608);
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v6, v12);
      goto LABEL_3;
    case 7:
      OUTLINED_FUNCTION_4_157();
      OUTLINED_FUNCTION_159();
      sub_1D553FFD8();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAEF8, &qword_1D561DCC8);
      v34 = OUTLINED_FUNCTION_58_39(v33);
      v0[48] = v34;
      v35 = OUTLINED_FUNCTION_33_59(v34, xmmword_1D561C050);
      OUTLINED_FUNCTION_183_7(v35);
      OUTLINED_FUNCTION_27_0(&unk_1D5671980);
      v23 = swift_task_alloc();
      v0[49] = v23;
      *v23 = v0;
      v24 = sub_1D5543674;
      goto LABEL_15;
    case 8:
      OUTLINED_FUNCTION_62_40();
      v0[52] = v15;
      v0[53] = v16;
      v17 = OUTLINED_FUNCTION_76_1();
      v18(v17);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82E0, &qword_1D5671908);
      v20 = OUTLINED_FUNCTION_48_43(v19);
      v0[54] = v20;
      v21 = OUTLINED_FUNCTION_30_71(v20, xmmword_1D561C050);
      v22(v21);
      OUTLINED_FUNCTION_27_0(&unk_1D5671978);
      v23 = swift_task_alloc();
      v0[55] = v23;
      *v23 = v0;
      v24 = sub_1D5543794;
      goto LABEL_15;
    case 9:
      OUTLINED_FUNCTION_62_40();
      v0[58] = v36;
      v0[59] = v37;
      v38 = OUTLINED_FUNCTION_76_1();
      v39(v38);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82D8, &qword_1D56718F8);
      v41 = OUTLINED_FUNCTION_48_43(v40);
      v0[60] = v41;
      v42 = OUTLINED_FUNCTION_30_71(v41, xmmword_1D561C050);
      v43(v42);
      OUTLINED_FUNCTION_27_0(&unk_1D5671970);
      v23 = swift_task_alloc();
      v0[61] = v23;
      *v23 = v0;
      v24 = sub_1D55438B4;
      goto LABEL_15;
    case 14:
      v0[64] = *(v0[17] + 32);
      OUTLINED_FUNCTION_114_10();
      v0[65] = v55;
      v56 = OUTLINED_FUNCTION_76_1();
      v57(v56);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACE0, &qword_1D561DAC0);
      v59 = OUTLINED_FUNCTION_48_43(v58);
      v0[66] = v59;
      v60 = OUTLINED_FUNCTION_30_71(v59, xmmword_1D561C050);
      v61(v60);
      OUTLINED_FUNCTION_27_0(&unk_1D5671968);
      v23 = swift_task_alloc();
      v0[67] = v23;
      *v23 = v0;
      v24 = sub_1D55439D4;
      goto LABEL_15;
    case 16:
      OUTLINED_FUNCTION_2_196();
      OUTLINED_FUNCTION_159();
      sub_1D553FFD8();
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF08, &qword_1D561DCD8);
      v63 = OUTLINED_FUNCTION_58_39(v62);
      v0[70] = v63;
      v64 = OUTLINED_FUNCTION_31_58(v63, xmmword_1D561C050);
      OUTLINED_FUNCTION_183_7(v64);
      OUTLINED_FUNCTION_27_0(&unk_1D5671960);
      v23 = swift_task_alloc();
      v0[71] = v23;
      *v23 = v0;
      v24 = sub_1D5543AF4;
      goto LABEL_15;
    case 17:
      OUTLINED_FUNCTION_3_203();
      OUTLINED_FUNCTION_159();
      sub_1D553FFD8();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAD90, &qword_1D561DB78);
      v45 = OUTLINED_FUNCTION_58_39(v44);
      v0[74] = v45;
      v46 = OUTLINED_FUNCTION_32_64(v45, xmmword_1D561C050);
      OUTLINED_FUNCTION_183_7(v46);
      OUTLINED_FUNCTION_27_0(&unk_1D5671958);
      v23 = swift_task_alloc();
      v0[75] = v23;
      *v23 = v0;
      v24 = sub_1D5543C14;
      goto LABEL_15;
    case 21:
      v47 = v0[2];
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v6, v48);
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      v51 = sub_1D554B4BC(v49, v50, MEMORY[0x1E6975588]);
      v52 = OUTLINED_FUNCTION_12_57(v51);
      OUTLINED_FUNCTION_194_9(v52, v53);
      OUTLINED_FUNCTION_43_8();
      (*(v54 + 104))();
      swift_willThrow();
      sub_1D554B9B4(v47, &qword_1EC7EA608);
LABEL_3:
      OUTLINED_FUNCTION_24_73();
      OUTLINED_FUNCTION_7_144();

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_97();

      __asm { BRAA            X1, X16 }

      return;
    default:
      OUTLINED_FUNCTION_62_40();
      v0[42] = v25;
      v0[43] = v26;
      v27 = OUTLINED_FUNCTION_76_1();
      v28(v27);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82E8, &qword_1D5671920);
      v30 = OUTLINED_FUNCTION_48_43(v29);
      v0[44] = v30;
      v31 = OUTLINED_FUNCTION_30_71(v30, xmmword_1D561C050);
      v32(v31);
      OUTLINED_FUNCTION_27_0(&unk_1D5671988);
      v23 = swift_task_alloc();
      v0[45] = v23;
      *v23 = v0;
      v24 = sub_1D5543554;
LABEL_15:
      v23[1] = v24;
      OUTLINED_FUNCTION_189_7();
      OUTLINED_FUNCTION_97();

      __asm { BR              X1 }

      return;
  }
}

uint64_t sub_1D5543554()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 368) = v0;

  if (!v0)
  {
    *(v4 + 376) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5543674()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 400) = v0;

  if (!v0)
  {
    *(v4 + 408) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5543794()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 448) = v0;

  if (!v0)
  {
    *(v4 + 456) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D55438B4()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 496) = v0;

  if (!v0)
  {
    *(v4 + 504) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D55439D4()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 544) = v0;

  if (!v0)
  {
    *(v4 + 552) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5543AF4()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 576) = v0;

  if (!v0)
  {
    *(v4 + 584) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5543C14()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 608) = v0;

  if (!v0)
  {
    *(v4 + 616) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t MusicLibrary.import<A, B>(_:referralItem:relatedItems:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_177_8(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  OUTLINED_FUNCTION_22(v9);
  v0[18] = OUTLINED_FUNCTION_127();
  v10 = type metadata accessor for TVSeason(0);
  v0[19] = v10;
  OUTLINED_FUNCTION_69(v10);
  v0[20] = v11;
  v0[21] = OUTLINED_FUNCTION_167();
  v0[22] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  OUTLINED_FUNCTION_22(v12);
  v0[23] = OUTLINED_FUNCTION_127();
  v13 = type metadata accessor for TVEpisode(0);
  v0[24] = v13;
  OUTLINED_FUNCTION_69(v13);
  v0[25] = v14;
  v0[26] = OUTLINED_FUNCTION_167();
  v0[27] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_22(v15);
  v0[28] = OUTLINED_FUNCTION_127();
  v16 = sub_1D5613838();
  v0[29] = v16;
  OUTLINED_FUNCTION_69(v16);
  v0[30] = v17;
  v0[31] = OUTLINED_FUNCTION_167();
  v0[32] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v18);
  v0[33] = OUTLINED_FUNCTION_127();
  v19 = sub_1D5614898();
  v0[34] = v19;
  OUTLINED_FUNCTION_69(v19);
  v0[35] = v20;
  v0[36] = OUTLINED_FUNCTION_167();
  v0[37] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220);
  OUTLINED_FUNCTION_22(v21);
  v0[38] = OUTLINED_FUNCTION_127();
  v22 = sub_1D560EEA8();
  v0[39] = v22;
  OUTLINED_FUNCTION_69(v22);
  v0[40] = v23;
  v0[41] = OUTLINED_FUNCTION_167();
  v0[42] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  OUTLINED_FUNCTION_22(v24);
  v0[43] = OUTLINED_FUNCTION_127();
  v25 = type metadata accessor for MusicMovie(0);
  v0[44] = v25;
  OUTLINED_FUNCTION_69(v25);
  v0[45] = v26;
  v0[46] = OUTLINED_FUNCTION_167();
  v0[47] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v27);
  v0[48] = OUTLINED_FUNCTION_127();
  v28 = sub_1D5613AF8();
  v0[49] = v28;
  OUTLINED_FUNCTION_69(v28);
  v0[50] = v29;
  v0[51] = OUTLINED_FUNCTION_167();
  v0[52] = swift_task_alloc();
  v30 = type metadata accessor for GenericMusicItem(0);
  v0[53] = v30;
  OUTLINED_FUNCTION_22(v30);
  v0[54] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v31, v32, v33);
}

uint64_t sub_1D5544150()
{
  OUTLINED_FUNCTION_98_15();
  v1 = v0[53];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_5_151();
  OUTLINED_FUNCTION_196_5();
  OUTLINED_FUNCTION_159();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xFu:
    case 0x12u:
    case 0x13u:
    case 0x14u:
      v5 = v0[54];
      v6 = v0[9];
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      v9 = sub_1D554B4BC(v7, v8, MEMORY[0x1E6975588]);
      OUTLINED_FUNCTION_79_25(v9);
      OUTLINED_FUNCTION_56_0();
      (*(v10 + 104))();
      swift_willThrow();
      sub_1D554B9B4(v6, &qword_1EC7EA608);
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v5, v11);
      goto LABEL_3;
    case 7u:
      OUTLINED_FUNCTION_4_157();
      sub_1D553FFD8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAEF8, &qword_1D561DCC8);
      OUTLINED_FUNCTION_51_37();
      v35 = OUTLINED_FUNCTION_135_11(v34);
      v0[61] = v35;
      OUTLINED_FUNCTION_33_59(v35, xmmword_1D561C050);
      OUTLINED_FUNCTION_182_5();
      v0[7] = v35;
      v36 = swift_task_alloc();
      v0[62] = v36;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EDD52880);
      OUTLINED_FUNCTION_21_82();
      sub_1D554B4BC(v37, v38, &protocol conformance descriptor for MusicMovie);
      OUTLINED_FUNCTION_118_15();
      *v36 = v39;
      v36[1] = sub_1D5544BDC;
      goto LABEL_15;
    case 8u:
      OUTLINED_FUNCTION_81();
      v0[65] = v14;
      OUTLINED_FUNCTION_114_10();
      v0[66] = v15;
      v16 = OUTLINED_FUNCTION_96_2();
      v17(v16);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82E0, &qword_1D5671908);
      v19 = OUTLINED_FUNCTION_47_49(v18);
      v0[67] = v19;
      v20 = OUTLINED_FUNCTION_29_63(v19, xmmword_1D561C050);
      v21(v20);
      v0[6] = v19;
      v22 = swift_task_alloc();
      v0[68] = v22;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EC7F8318);
      OUTLINED_FUNCTION_73_26();
      *v22 = v23;
      v22[1] = sub_1D5544CF0;
      OUTLINED_FUNCTION_28_71();
      goto LABEL_13;
    case 9u:
      OUTLINED_FUNCTION_81();
      v0[71] = v40;
      OUTLINED_FUNCTION_114_10();
      v0[72] = v41;
      v42 = OUTLINED_FUNCTION_96_2();
      v43(v42);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82D8, &qword_1D56718F8);
      v45 = OUTLINED_FUNCTION_47_49(v44);
      v0[73] = v45;
      v46 = OUTLINED_FUNCTION_29_63(v45, xmmword_1D561C050);
      v47(v46);
      v0[5] = v45;
      v48 = swift_task_alloc();
      v0[74] = v48;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EC7F8308);
      OUTLINED_FUNCTION_73_26();
      *v48 = v49;
      v48[1] = sub_1D5544E04;
      OUTLINED_FUNCTION_28_71();
      goto LABEL_13;
    case 0xEu:
      OUTLINED_FUNCTION_81();
      v0[77] = v65;
      OUTLINED_FUNCTION_114_10();
      v0[78] = v66;
      v67 = OUTLINED_FUNCTION_96_2();
      v68(v67);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACE0, &qword_1D561DAC0);
      v70 = OUTLINED_FUNCTION_47_49(v69);
      v0[79] = v70;
      v71 = OUTLINED_FUNCTION_29_63(v70, xmmword_1D561C050);
      v72(v71);
      v0[4] = v70;
      v73 = swift_task_alloc();
      v0[80] = v73;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EC7F71B8);
      OUTLINED_FUNCTION_73_26();
      *v73 = v74;
      v73[1] = sub_1D5544F18;
      OUTLINED_FUNCTION_28_71();
      goto LABEL_13;
    case 0x10u:
      OUTLINED_FUNCTION_2_196();
      sub_1D553FFD8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF08, &qword_1D561DCD8);
      OUTLINED_FUNCTION_51_37();
      v76 = OUTLINED_FUNCTION_135_11(v75);
      v0[83] = v76;
      OUTLINED_FUNCTION_31_58(v76, xmmword_1D561C050);
      OUTLINED_FUNCTION_182_5();
      v0[3] = v76;
      v77 = swift_task_alloc();
      v0[84] = v77;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EDD527F8);
      OUTLINED_FUNCTION_19_88();
      sub_1D554B4BC(v78, v79, &protocol conformance descriptor for TVEpisode);
      OUTLINED_FUNCTION_118_15();
      *v77 = v80;
      v77[1] = sub_1D554502C;
      goto LABEL_15;
    case 0x11u:
      OUTLINED_FUNCTION_3_203();
      sub_1D553FFD8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAD90, &qword_1D561DB78);
      OUTLINED_FUNCTION_51_37();
      v51 = OUTLINED_FUNCTION_135_11(v50);
      v0[87] = v51;
      OUTLINED_FUNCTION_32_64(v51, xmmword_1D561C050);
      OUTLINED_FUNCTION_182_5();
      v0[2] = v51;
      v52 = swift_task_alloc();
      v0[88] = v52;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EC7EFC90);
      OUTLINED_FUNCTION_20_97();
      sub_1D554B4BC(v53, v54, &protocol conformance descriptor for TVSeason);
      OUTLINED_FUNCTION_118_15();
      *v52 = v55;
      v52[1] = sub_1D5545140;
LABEL_15:
      OUTLINED_FUNCTION_41_55();
      OUTLINED_FUNCTION_137_15();
      goto LABEL_16;
    case 0x15u:
      v56 = v0[9];
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v57, v58);
      v59 = sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      sub_1D554B4BC(v60, v61, MEMORY[0x1E6975588]);
      OUTLINED_FUNCTION_69_4();
      v62 = swift_allocError();
      v64 = OUTLINED_FUNCTION_194_9(v62, v63);
      (*(*(v59 - 8) + 104))(v64, *MEMORY[0x1E6975570], v59);
      swift_willThrow();
      sub_1D554B9B4(v56, &qword_1EC7EA608);
LABEL_3:
      OUTLINED_FUNCTION_14_96(v0[54]);

      OUTLINED_FUNCTION_49();

      return v12();
    default:
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_114_10();
      v0[55] = v24;
      v0[56] = v25;
      v26 = OUTLINED_FUNCTION_96_2();
      v27(v26);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82E8, &qword_1D5671920);
      v29 = OUTLINED_FUNCTION_47_49(v28);
      v0[57] = v29;
      v30 = OUTLINED_FUNCTION_29_63(v29, xmmword_1D561C050);
      v31(v30);
      v0[8] = v29;
      v32 = swift_task_alloc();
      v0[58] = v32;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EC7F8330);
      OUTLINED_FUNCTION_73_26();
      *v32 = v33;
      v32[1] = sub_1D5544AC8;
      OUTLINED_FUNCTION_28_71();
LABEL_13:
      OUTLINED_FUNCTION_137_15();
LABEL_16:
      OUTLINED_FUNCTION_42_21();

      return MusicLibrary.import<A, B, C, D>(_:referralItem:relatedItems:)();
  }
}

uint64_t sub_1D5544AC8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 472) = v0;

  if (!v0)
  {
    *(v4 + 480) = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5544BDC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 504) = v0;

  if (!v0)
  {
    *(v4 + 512) = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5544CF0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 552) = v0;

  if (!v0)
  {
    *(v4 + 560) = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5544E04()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 600) = v0;

  if (!v0)
  {
    *(v4 + 608) = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5544F18()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 648) = v0;

  if (!v0)
  {
    *(v4 + 656) = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D554502C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 680) = v0;

  if (!v0)
  {
    *(v4 + 688) = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5545140()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v4 + 712) = v0;

  if (!v0)
  {
    *(v4 + 720) = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t MusicLibrary.download(_:)()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_27_0(&unk_1D56719A0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;
  v2 = OUTLINED_FUNCTION_174_7();

  return v3(v2);
}

uint64_t sub_1D55452F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for TVSeason(0);
  v3[5] = swift_task_alloc();
  type metadata accessor for TVEpisode(0);
  v3[6] = swift_task_alloc();
  v4 = sub_1D5613838();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_1D5614898();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_1D560EEA8();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  type metadata accessor for MusicMovie(0);
  v3[16] = swift_task_alloc();
  v7 = sub_1D5613AF8();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = type metadata accessor for GenericMusicItem(0);
  v3[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5545580, 0, 0);
}

uint64_t sub_1D5545580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_5_151();
  sub_1D5540030();
  OUTLINED_FUNCTION_159();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = v12[21];
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 18:
    case 19:
    case 20:
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      v17 = sub_1D554B4BC(v15, v16, MEMORY[0x1E6975588]);
      v18 = OUTLINED_FUNCTION_79_25(v17);
      OUTLINED_FUNCTION_125_15(v18, v19);
      OUTLINED_FUNCTION_56_0();
      (*(v20 + 104))();
      swift_willThrow();
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v14, v21);
      goto LABEL_3;
    case 7:
      OUTLINED_FUNCTION_4_157();
      sub_1D553FFD8();
      OUTLINED_FUNCTION_27_0(&unk_1D5672C60);
      v65 = v39;
      v40 = swift_task_alloc();
      v12[24] = v40;
      *v40 = v12;
      OUTLINED_FUNCTION_170_8(v40);
      goto LABEL_14;
    case 8:
      OUTLINED_FUNCTION_100_16();
      v31();
      OUTLINED_FUNCTION_27_0(&unk_1D5672A20);
      v65 = v32;
      v33 = swift_task_alloc();
      v12[26] = v33;
      *v33 = v12;
      v33[1] = sub_1D5545C3C;
      v34 = v12[15];
      goto LABEL_14;
    case 9:
      OUTLINED_FUNCTION_100_16();
      v41();
      OUTLINED_FUNCTION_27_0(&unk_1D5672930);
      v65 = v42;
      v43 = swift_task_alloc();
      v12[28] = v43;
      *v43 = v12;
      v43[1] = sub_1D5545D34;
      v34 = v12[12];
      goto LABEL_14;
    case 14:
      OUTLINED_FUNCTION_100_16();
      v52();
      OUTLINED_FUNCTION_27_0(&unk_1D5672B10);
      v65 = v53;
      v54 = swift_task_alloc();
      v12[30] = v54;
      *v54 = v12;
      v54[1] = sub_1D5545E2C;
      v34 = v12[9];
      goto LABEL_14;
    case 16:
      OUTLINED_FUNCTION_2_196();
      sub_1D553FFD8();
      OUTLINED_FUNCTION_27_0(&unk_1D5672C68);
      v65 = v55;
      v56 = swift_task_alloc();
      v12[32] = v56;
      *v56 = v12;
      v56[1] = sub_1D5545F24;
      v34 = v12[6];
      goto LABEL_14;
    case 17:
      OUTLINED_FUNCTION_3_203();
      sub_1D553FFD8();
      OUTLINED_FUNCTION_27_0(&unk_1D5672C70);
      v65 = v44;
      v45 = swift_task_alloc();
      v12[34] = v45;
      *v45 = v12;
      v45[1] = sub_1D554601C;
      v34 = v12[5];
      goto LABEL_14;
    case 21:
      sub_1D5540088(v12[21], type metadata accessor for GenericMusicItem);
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      v48 = sub_1D554B4BC(v46, v47, MEMORY[0x1E6975588]);
      v49 = OUTLINED_FUNCTION_12_57(v48);
      OUTLINED_FUNCTION_125_15(v49, v50);
      OUTLINED_FUNCTION_43_8();
      (*(v51 + 104))();
      swift_willThrow();
LABEL_3:
      OUTLINED_FUNCTION_74_30();

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_134();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
    default:
      v35 = OUTLINED_FUNCTION_61_37();
      v36(v35);
      OUTLINED_FUNCTION_27_0(&unk_1D5672C00);
      v65 = v37;
      v38 = swift_task_alloc();
      v12[22] = v38;
      *v38 = v12;
      OUTLINED_FUNCTION_169_5(v38);
LABEL_14:
      OUTLINED_FUNCTION_93_0(v34);
      OUTLINED_FUNCTION_134();

      return v59(v57, v58, v59, v60, v61, v62, v63, v64, v65, a10, a11, a12);
  }
}

uint64_t sub_1D5545A4C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5545B44()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5545C3C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5545D34()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5545E2C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5545F24()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D554601C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t MusicLibrary.download<A>(_:relatedItems:)()
{
  OUTLINED_FUNCTION_60();
  v5 = OUTLINED_FUNCTION_155_6(v1, v2, v3, v4);
  v0[7] = v5;
  OUTLINED_FUNCTION_22(v5);
  v0[8] = OUTLINED_FUNCTION_127();
  v6 = type metadata accessor for TVEpisode(0);
  v0[9] = v6;
  OUTLINED_FUNCTION_22(v6);
  v7 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_176_5(v7);
  v8 = sub_1D5613838();
  v0[11] = v8;
  OUTLINED_FUNCTION_69(v8);
  v0[12] = v9;
  v0[13] = OUTLINED_FUNCTION_127();
  v10 = sub_1D5614898();
  v0[14] = v10;
  OUTLINED_FUNCTION_69(v10);
  v0[15] = v11;
  v0[16] = OUTLINED_FUNCTION_127();
  v12 = sub_1D560EEA8();
  v0[17] = v12;
  OUTLINED_FUNCTION_69(v12);
  v0[18] = v13;
  v0[19] = OUTLINED_FUNCTION_127();
  v14 = type metadata accessor for MusicMovie(0);
  v0[20] = v14;
  OUTLINED_FUNCTION_22(v14);
  v0[21] = OUTLINED_FUNCTION_127();
  v15 = sub_1D5613AF8();
  v0[22] = v15;
  OUTLINED_FUNCTION_69(v15);
  v0[23] = v16;
  v0[24] = OUTLINED_FUNCTION_127();
  v17 = type metadata accessor for GenericMusicItem(0);
  v0[25] = v17;
  OUTLINED_FUNCTION_22(v17);
  v0[26] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1D5546324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_5_151();
  sub_1D5540030();
  OUTLINED_FUNCTION_159();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = v12[26];
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 18:
    case 19:
    case 20:
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      v17 = sub_1D554B4BC(v15, v16, MEMORY[0x1E6975588]);
      v18 = OUTLINED_FUNCTION_79_25(v17);
      OUTLINED_FUNCTION_125_15(v18, v19);
      OUTLINED_FUNCTION_56_0();
      (*(v20 + 104))();
      swift_willThrow();
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v14, v21);
      goto LABEL_3;
    case 7:
      OUTLINED_FUNCTION_4_157();
      sub_1D553FFD8();
      v37 = swift_task_alloc();
      v12[29] = v37;
      OUTLINED_FUNCTION_21_82();
      sub_1D554B4BC(v38, v39, &protocol conformance descriptor for MusicMovie);
      OUTLINED_FUNCTION_72_31();
      *v37 = v40;
      v37[1] = sub_1D5546978;
      goto LABEL_15;
    case 8:
      v31 = OUTLINED_FUNCTION_61_37();
      v32(v31);
      v33 = swift_task_alloc();
      v12[31] = v33;
      *v33 = v12;
      OUTLINED_FUNCTION_169_5(v33);
      OUTLINED_FUNCTION_117_15();
      goto LABEL_13;
    case 9:
      OUTLINED_FUNCTION_100_16();
      v41();
      v42 = swift_task_alloc();
      v12[33] = v42;
      *v42 = v12;
      OUTLINED_FUNCTION_170_8(v42);
      OUTLINED_FUNCTION_117_15();
      goto LABEL_13;
    case 14:
      OUTLINED_FUNCTION_100_16();
      v53();
      v54 = swift_task_alloc();
      v12[35] = v54;
      *v54 = v12;
      v54[1] = sub_1D5546C60;
      OUTLINED_FUNCTION_117_15();
      goto LABEL_13;
    case 16:
      OUTLINED_FUNCTION_2_196();
      sub_1D553FFD8();
      v55 = swift_task_alloc();
      v12[37] = v55;
      OUTLINED_FUNCTION_19_88();
      sub_1D554B4BC(v56, v57, &protocol conformance descriptor for TVEpisode);
      OUTLINED_FUNCTION_72_31();
      *v55 = v58;
      v55[1] = sub_1D5546D58;
      goto LABEL_15;
    case 17:
      OUTLINED_FUNCTION_3_203();
      sub_1D553FFD8();
      v43 = swift_task_alloc();
      v12[39] = v43;
      OUTLINED_FUNCTION_20_97();
      sub_1D554B4BC(v44, v45, &protocol conformance descriptor for TVSeason);
      OUTLINED_FUNCTION_72_31();
      *v43 = v46;
      v43[1] = sub_1D5546E50;
LABEL_15:
      OUTLINED_FUNCTION_117_15();
      goto LABEL_16;
    case 21:
      sub_1D5540088(v12[26], type metadata accessor for GenericMusicItem);
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      v49 = sub_1D554B4BC(v47, v48, MEMORY[0x1E6975588]);
      v50 = OUTLINED_FUNCTION_12_57(v49);
      OUTLINED_FUNCTION_125_15(v50, v51);
      OUTLINED_FUNCTION_43_8();
      (*(v52 + 104))();
      swift_willThrow();
LABEL_3:
      OUTLINED_FUNCTION_44_44(v12[26]);

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_134();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
    default:
      OUTLINED_FUNCTION_100_16();
      v35();
      v36 = swift_task_alloc();
      v12[27] = v36;
      *v36 = v12;
      v36[1] = sub_1D5546880;
      OUTLINED_FUNCTION_117_15();
LABEL_13:
      OUTLINED_FUNCTION_93_0(v34);
LABEL_16:
      OUTLINED_FUNCTION_134();

      return MusicLibrary.download<A, B>(_:relatedItems:)();
  }
}

uint64_t sub_1D5546880()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5546978()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5546A70()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5546B68()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5546C60()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 288) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5546D58()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 304) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5546E50()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5546FE8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for TVSeason(0);
  v3[5] = swift_task_alloc();
  type metadata accessor for TVEpisode(0);
  v3[6] = swift_task_alloc();
  v4 = sub_1D5613838();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_1D5614898();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_1D560EEA8();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  type metadata accessor for MusicMovie(0);
  v3[16] = swift_task_alloc();
  v7 = sub_1D5613AF8();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = type metadata accessor for GenericMusicItem(0);
  v3[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5547274, 0, 0);
}

uint64_t sub_1D5547274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_5_151();
  sub_1D5540030();
  OUTLINED_FUNCTION_159();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = v12[21];
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 18:
    case 19:
    case 20:
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      v17 = sub_1D554B4BC(v15, v16, MEMORY[0x1E6975588]);
      v18 = OUTLINED_FUNCTION_79_25(v17);
      OUTLINED_FUNCTION_125_15(v18, v19);
      OUTLINED_FUNCTION_56_0();
      (*(v20 + 104))();
      swift_willThrow();
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v14, v21);
      goto LABEL_3;
    case 7:
      OUTLINED_FUNCTION_4_157();
      sub_1D553FFD8();
      OUTLINED_FUNCTION_27_0(&unk_1D5672C48);
      v65 = v39;
      v40 = swift_task_alloc();
      v12[24] = v40;
      *v40 = v12;
      OUTLINED_FUNCTION_170_8(v40);
      goto LABEL_14;
    case 8:
      OUTLINED_FUNCTION_100_16();
      v31();
      OUTLINED_FUNCTION_27_0(&unk_1D5672A30);
      v65 = v32;
      v33 = swift_task_alloc();
      v12[26] = v33;
      *v33 = v12;
      v33[1] = sub_1D5545C3C;
      v34 = v12[15];
      goto LABEL_14;
    case 9:
      OUTLINED_FUNCTION_100_16();
      v41();
      OUTLINED_FUNCTION_27_0(&unk_1D5672940);
      v65 = v42;
      v43 = swift_task_alloc();
      v12[28] = v43;
      *v43 = v12;
      v43[1] = sub_1D5545D34;
      v34 = v12[12];
      goto LABEL_14;
    case 14:
      OUTLINED_FUNCTION_100_16();
      v52();
      OUTLINED_FUNCTION_27_0(&unk_1D5672B20);
      v65 = v53;
      v54 = swift_task_alloc();
      v12[30] = v54;
      *v54 = v12;
      v54[1] = sub_1D5545E2C;
      v34 = v12[9];
      goto LABEL_14;
    case 16:
      OUTLINED_FUNCTION_2_196();
      sub_1D553FFD8();
      OUTLINED_FUNCTION_27_0(&unk_1D5672C50);
      v65 = v55;
      v56 = swift_task_alloc();
      v12[32] = v56;
      *v56 = v12;
      v56[1] = sub_1D5545F24;
      v34 = v12[6];
      goto LABEL_14;
    case 17:
      OUTLINED_FUNCTION_3_203();
      sub_1D553FFD8();
      OUTLINED_FUNCTION_27_0(&unk_1D5672C58);
      v65 = v44;
      v45 = swift_task_alloc();
      v12[34] = v45;
      *v45 = v12;
      v45[1] = sub_1D554601C;
      v34 = v12[5];
      goto LABEL_14;
    case 21:
      sub_1D5540088(v12[21], type metadata accessor for GenericMusicItem);
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      v48 = sub_1D554B4BC(v46, v47, MEMORY[0x1E6975588]);
      v49 = OUTLINED_FUNCTION_12_57(v48);
      OUTLINED_FUNCTION_125_15(v49, v50);
      OUTLINED_FUNCTION_43_8();
      (*(v51 + 104))();
      swift_willThrow();
LABEL_3:
      OUTLINED_FUNCTION_74_30();

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_134();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
    default:
      v35 = OUTLINED_FUNCTION_61_37();
      v36(v35);
      OUTLINED_FUNCTION_27_0(&unk_1D5672C10);
      v65 = v37;
      v38 = swift_task_alloc();
      v12[22] = v38;
      *v38 = v12;
      OUTLINED_FUNCTION_169_5(v38);
LABEL_14:
      OUTLINED_FUNCTION_93_0(v34);
      OUTLINED_FUNCTION_134();

      return v59(v57, v58, v59, v60, v61, v62, v63, v64, v65, a10, a11, a12);
  }
}

uint64_t MusicLibrary.remove<A>(_:relatedItems:)()
{
  OUTLINED_FUNCTION_60();
  v5 = OUTLINED_FUNCTION_155_6(v1, v2, v3, v4);
  v0[7] = v5;
  OUTLINED_FUNCTION_22(v5);
  v0[8] = OUTLINED_FUNCTION_127();
  v6 = type metadata accessor for TVEpisode(0);
  v0[9] = v6;
  OUTLINED_FUNCTION_22(v6);
  v7 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_176_5(v7);
  v8 = sub_1D5613838();
  v0[11] = v8;
  OUTLINED_FUNCTION_69(v8);
  v0[12] = v9;
  v0[13] = OUTLINED_FUNCTION_127();
  v10 = sub_1D5614898();
  v0[14] = v10;
  OUTLINED_FUNCTION_69(v10);
  v0[15] = v11;
  v0[16] = OUTLINED_FUNCTION_127();
  v12 = sub_1D560EEA8();
  v0[17] = v12;
  OUTLINED_FUNCTION_69(v12);
  v0[18] = v13;
  v0[19] = OUTLINED_FUNCTION_127();
  v14 = type metadata accessor for MusicMovie(0);
  v0[20] = v14;
  OUTLINED_FUNCTION_22(v14);
  v0[21] = OUTLINED_FUNCTION_127();
  v15 = sub_1D5613AF8();
  v0[22] = v15;
  OUTLINED_FUNCTION_69(v15);
  v0[23] = v16;
  v0[24] = OUTLINED_FUNCTION_127();
  v17 = type metadata accessor for GenericMusicItem(0);
  v0[25] = v17;
  OUTLINED_FUNCTION_22(v17);
  v0[26] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1D5547950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_5_151();
  sub_1D5540030();
  OUTLINED_FUNCTION_159();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = v12[26];
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 18:
    case 19:
    case 20:
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      v17 = sub_1D554B4BC(v15, v16, MEMORY[0x1E6975588]);
      v18 = OUTLINED_FUNCTION_79_25(v17);
      OUTLINED_FUNCTION_125_15(v18, v19);
      OUTLINED_FUNCTION_56_0();
      (*(v20 + 104))();
      swift_willThrow();
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v14, v21);
      goto LABEL_3;
    case 7:
      OUTLINED_FUNCTION_4_157();
      sub_1D553FFD8();
      v37 = swift_task_alloc();
      v12[29] = v37;
      OUTLINED_FUNCTION_21_82();
      sub_1D554B4BC(v38, v39, &protocol conformance descriptor for MusicMovie);
      OUTLINED_FUNCTION_72_31();
      *v37 = v40;
      v37[1] = sub_1D5546978;
      goto LABEL_15;
    case 8:
      v31 = OUTLINED_FUNCTION_61_37();
      v32(v31);
      v33 = swift_task_alloc();
      v12[31] = v33;
      *v33 = v12;
      OUTLINED_FUNCTION_169_5(v33);
      OUTLINED_FUNCTION_117_15();
      goto LABEL_13;
    case 9:
      OUTLINED_FUNCTION_100_16();
      v41();
      v42 = swift_task_alloc();
      v12[33] = v42;
      *v42 = v12;
      OUTLINED_FUNCTION_170_8(v42);
      OUTLINED_FUNCTION_117_15();
      goto LABEL_13;
    case 14:
      OUTLINED_FUNCTION_100_16();
      v53();
      v54 = swift_task_alloc();
      v12[35] = v54;
      *v54 = v12;
      v54[1] = sub_1D5546C60;
      OUTLINED_FUNCTION_117_15();
      goto LABEL_13;
    case 16:
      OUTLINED_FUNCTION_2_196();
      sub_1D553FFD8();
      v55 = swift_task_alloc();
      v12[37] = v55;
      OUTLINED_FUNCTION_19_88();
      sub_1D554B4BC(v56, v57, &protocol conformance descriptor for TVEpisode);
      OUTLINED_FUNCTION_72_31();
      *v55 = v58;
      v55[1] = sub_1D5546D58;
      goto LABEL_15;
    case 17:
      OUTLINED_FUNCTION_3_203();
      sub_1D553FFD8();
      v43 = swift_task_alloc();
      v12[39] = v43;
      OUTLINED_FUNCTION_20_97();
      sub_1D554B4BC(v44, v45, &protocol conformance descriptor for TVSeason);
      OUTLINED_FUNCTION_72_31();
      *v43 = v46;
      v43[1] = sub_1D5546E50;
LABEL_15:
      OUTLINED_FUNCTION_117_15();
      goto LABEL_16;
    case 21:
      sub_1D5540088(v12[26], type metadata accessor for GenericMusicItem);
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      v49 = sub_1D554B4BC(v47, v48, MEMORY[0x1E6975588]);
      v50 = OUTLINED_FUNCTION_12_57(v49);
      OUTLINED_FUNCTION_125_15(v50, v51);
      OUTLINED_FUNCTION_43_8();
      (*(v52 + 104))();
      swift_willThrow();
LABEL_3:
      OUTLINED_FUNCTION_44_44(v12[26]);

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_134();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
    default:
      OUTLINED_FUNCTION_100_16();
      v35();
      v36 = swift_task_alloc();
      v12[27] = v36;
      *v36 = v12;
      v36[1] = sub_1D5546880;
      OUTLINED_FUNCTION_117_15();
LABEL_13:
      OUTLINED_FUNCTION_93_0(v34);
LABEL_16:
      OUTLINED_FUNCTION_134();

      return MusicLibrary.remove<A, B>(_:relatedItems:)();
  }
}

uint64_t MusicLibrary.removeDownload(_:)()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_27_0(&unk_1D56719D0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E6ED20;
  v2 = OUTLINED_FUNCTION_174_7();

  return v3(v2);
}

uint64_t sub_1D5547F4C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for TVSeason(0);
  v3[5] = swift_task_alloc();
  type metadata accessor for TVEpisode(0);
  v3[6] = swift_task_alloc();
  v4 = sub_1D5613838();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_1D5614898();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_1D560EEA8();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  type metadata accessor for MusicMovie(0);
  v3[16] = swift_task_alloc();
  v7 = sub_1D5613AF8();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = type metadata accessor for GenericMusicItem(0);
  v3[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D55481D8, 0, 0);
}

uint64_t sub_1D55481D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_5_151();
  sub_1D5540030();
  OUTLINED_FUNCTION_159();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = v12[21];
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 18:
    case 19:
    case 20:
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      v17 = sub_1D554B4BC(v15, v16, MEMORY[0x1E6975588]);
      v18 = OUTLINED_FUNCTION_79_25(v17);
      OUTLINED_FUNCTION_125_15(v18, v19);
      OUTLINED_FUNCTION_56_0();
      (*(v20 + 104))();
      swift_willThrow();
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v14, v21);
      goto LABEL_3;
    case 7:
      OUTLINED_FUNCTION_4_157();
      sub_1D553FFD8();
      OUTLINED_FUNCTION_27_0(&unk_1D5672C18);
      v65 = v39;
      v40 = swift_task_alloc();
      v12[24] = v40;
      *v40 = v12;
      OUTLINED_FUNCTION_170_8(v40);
      goto LABEL_14;
    case 8:
      OUTLINED_FUNCTION_100_16();
      v31();
      OUTLINED_FUNCTION_27_0(&unk_1D5672A10);
      v65 = v32;
      v33 = swift_task_alloc();
      v12[26] = v33;
      *v33 = v12;
      v33[1] = sub_1D5548894;
      v34 = v12[15];
      goto LABEL_14;
    case 9:
      OUTLINED_FUNCTION_100_16();
      v41();
      OUTLINED_FUNCTION_27_0(&unk_1D5672920);
      v65 = v42;
      v43 = swift_task_alloc();
      v12[28] = v43;
      *v43 = v12;
      v43[1] = sub_1D554898C;
      v34 = v12[12];
      goto LABEL_14;
    case 14:
      OUTLINED_FUNCTION_100_16();
      v52();
      OUTLINED_FUNCTION_27_0(&unk_1D5672B00);
      v65 = v53;
      v54 = swift_task_alloc();
      v12[30] = v54;
      *v54 = v12;
      v54[1] = sub_1D5548A84;
      v34 = v12[9];
      goto LABEL_14;
    case 16:
      OUTLINED_FUNCTION_2_196();
      sub_1D553FFD8();
      OUTLINED_FUNCTION_27_0(&unk_1D5672C28);
      v65 = v55;
      v56 = swift_task_alloc();
      v12[32] = v56;
      *v56 = v12;
      v56[1] = sub_1D5548B7C;
      v34 = v12[6];
      goto LABEL_14;
    case 17:
      OUTLINED_FUNCTION_3_203();
      sub_1D553FFD8();
      OUTLINED_FUNCTION_27_0(&unk_1D5672C38);
      v65 = v44;
      v45 = swift_task_alloc();
      v12[34] = v45;
      *v45 = v12;
      v45[1] = sub_1D5548C74;
      v34 = v12[5];
      goto LABEL_14;
    case 21:
      sub_1D5540088(v12[21], type metadata accessor for GenericMusicItem);
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      v48 = sub_1D554B4BC(v46, v47, MEMORY[0x1E6975588]);
      v49 = OUTLINED_FUNCTION_12_57(v48);
      OUTLINED_FUNCTION_125_15(v49, v50);
      OUTLINED_FUNCTION_43_8();
      (*(v51 + 104))();
      swift_willThrow();
LABEL_3:
      OUTLINED_FUNCTION_74_30();

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_134();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
    default:
      v35 = OUTLINED_FUNCTION_61_37();
      v36(v35);
      OUTLINED_FUNCTION_27_0(&unk_1D5672BF0);
      v65 = v37;
      v38 = swift_task_alloc();
      v12[22] = v38;
      *v38 = v12;
      OUTLINED_FUNCTION_169_5(v38);
LABEL_14:
      OUTLINED_FUNCTION_93_0(v34);
      OUTLINED_FUNCTION_134();

      return v59(v57, v58, v59, v60, v61, v62, v63, v64, v65, a10, a11, a12);
  }
}

uint64_t sub_1D55486A4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D554879C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5548894()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D554898C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5548A84()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5548B7C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5548C74()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5548D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v10 = OUTLINED_FUNCTION_136_13();
  v11(v10);
  OUTLINED_FUNCTION_55_37();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D5548E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  v10 = OUTLINED_FUNCTION_136_13();
  v11(v10);
  OUTLINED_FUNCTION_56_39();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D5548EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_6_157();
  sub_1D5540088(v10, v11);
  OUTLINED_FUNCTION_55_37();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D5548F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_6_157();
  sub_1D5540088(v10, v11);
  OUTLINED_FUNCTION_56_39();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D5548FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  (*(v10[14] + 8))(v10[15], v10[13]);
  OUTLINED_FUNCTION_55_37();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D55490A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  (*(v10[14] + 8))(v10[15], v10[13]);
  OUTLINED_FUNCTION_56_39();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D5549158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  (*(v10[11] + 8))(v10[12], v10[10]);
  OUTLINED_FUNCTION_55_37();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D5549204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  (*(v10[11] + 8))(v10[12], v10[10]);
  OUTLINED_FUNCTION_56_39();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D55492B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  (*(v10[8] + 8))(v10[9], v10[7]);
  OUTLINED_FUNCTION_55_37();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D5549360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  (*(v10[8] + 8))(v10[9], v10[7]);
  OUTLINED_FUNCTION_56_39();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D5549410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_9_131();
  sub_1D5540088(v10, v11);
  OUTLINED_FUNCTION_55_37();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D55494B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_9_131();
  sub_1D5540088(v10, v11);
  OUTLINED_FUNCTION_56_39();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D5549554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_10_129();
  sub_1D5540088(v10, v11);
  OUTLINED_FUNCTION_55_37();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D55495F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_10_129();
  sub_1D5540088(v10, v11);
  OUTLINED_FUNCTION_56_39();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t MusicLibrary.removeDownload<A>(_:relatedItems:)()
{
  OUTLINED_FUNCTION_60();
  v5 = OUTLINED_FUNCTION_155_6(v1, v2, v3, v4);
  v0[7] = v5;
  OUTLINED_FUNCTION_22(v5);
  v0[8] = OUTLINED_FUNCTION_127();
  v6 = type metadata accessor for TVEpisode(0);
  v0[9] = v6;
  OUTLINED_FUNCTION_22(v6);
  v7 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_176_5(v7);
  v8 = sub_1D5613838();
  v0[11] = v8;
  OUTLINED_FUNCTION_69(v8);
  v0[12] = v9;
  v0[13] = OUTLINED_FUNCTION_127();
  v10 = sub_1D5614898();
  v0[14] = v10;
  OUTLINED_FUNCTION_69(v10);
  v0[15] = v11;
  v0[16] = OUTLINED_FUNCTION_127();
  v12 = sub_1D560EEA8();
  v0[17] = v12;
  OUTLINED_FUNCTION_69(v12);
  v0[18] = v13;
  v0[19] = OUTLINED_FUNCTION_127();
  v14 = type metadata accessor for MusicMovie(0);
  v0[20] = v14;
  OUTLINED_FUNCTION_22(v14);
  v0[21] = OUTLINED_FUNCTION_127();
  v15 = sub_1D5613AF8();
  v0[22] = v15;
  OUTLINED_FUNCTION_69(v15);
  v0[23] = v16;
  v0[24] = OUTLINED_FUNCTION_127();
  v17 = type metadata accessor for GenericMusicItem(0);
  v0[25] = v17;
  OUTLINED_FUNCTION_22(v17);
  v0[26] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1D55498A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_5_151();
  sub_1D5540030();
  OUTLINED_FUNCTION_159();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = v12[26];
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 18:
    case 19:
    case 20:
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      v17 = sub_1D554B4BC(v15, v16, MEMORY[0x1E6975588]);
      v18 = OUTLINED_FUNCTION_79_25(v17);
      OUTLINED_FUNCTION_125_15(v18, v19);
      OUTLINED_FUNCTION_56_0();
      (*(v20 + 104))();
      swift_willThrow();
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v14, v21);
      goto LABEL_3;
    case 7:
      OUTLINED_FUNCTION_4_157();
      sub_1D553FFD8();
      v37 = swift_task_alloc();
      v12[29] = v37;
      OUTLINED_FUNCTION_21_82();
      sub_1D554B4BC(v38, v39, &protocol conformance descriptor for MusicMovie);
      OUTLINED_FUNCTION_72_31();
      *v37 = v40;
      v37[1] = sub_1D5549FA8;
      goto LABEL_15;
    case 8:
      v31 = OUTLINED_FUNCTION_61_37();
      v32(v31);
      v33 = swift_task_alloc();
      v12[31] = v33;
      *v33 = v12;
      OUTLINED_FUNCTION_169_5(v33);
      OUTLINED_FUNCTION_117_15();
      goto LABEL_13;
    case 9:
      OUTLINED_FUNCTION_100_16();
      v41();
      v42 = swift_task_alloc();
      v12[33] = v42;
      *v42 = v12;
      OUTLINED_FUNCTION_170_8(v42);
      OUTLINED_FUNCTION_117_15();
      goto LABEL_13;
    case 14:
      OUTLINED_FUNCTION_100_16();
      v53();
      v54 = swift_task_alloc();
      v12[35] = v54;
      *v54 = v12;
      v54[1] = sub_1D554A480;
      OUTLINED_FUNCTION_117_15();
      goto LABEL_13;
    case 16:
      OUTLINED_FUNCTION_2_196();
      sub_1D553FFD8();
      v55 = swift_task_alloc();
      v12[37] = v55;
      OUTLINED_FUNCTION_19_88();
      sub_1D554B4BC(v56, v57, &protocol conformance descriptor for TVEpisode);
      OUTLINED_FUNCTION_72_31();
      *v55 = v58;
      v55[1] = sub_1D554A624;
      goto LABEL_15;
    case 17:
      OUTLINED_FUNCTION_3_203();
      sub_1D553FFD8();
      v43 = swift_task_alloc();
      v12[39] = v43;
      OUTLINED_FUNCTION_20_97();
      sub_1D554B4BC(v44, v45, &protocol conformance descriptor for TVSeason);
      OUTLINED_FUNCTION_72_31();
      *v43 = v46;
      v43[1] = sub_1D554A7BC;
LABEL_15:
      OUTLINED_FUNCTION_117_15();
      goto LABEL_16;
    case 21:
      sub_1D5540088(v12[26], type metadata accessor for GenericMusicItem);
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      v49 = sub_1D554B4BC(v47, v48, MEMORY[0x1E6975588]);
      v50 = OUTLINED_FUNCTION_12_57(v49);
      OUTLINED_FUNCTION_125_15(v50, v51);
      OUTLINED_FUNCTION_43_8();
      (*(v52 + 104))();
      swift_willThrow();
LABEL_3:
      OUTLINED_FUNCTION_44_44(v12[26]);

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_134();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
    default:
      OUTLINED_FUNCTION_100_16();
      v35();
      v36 = swift_task_alloc();
      v12[27] = v36;
      *v36 = v12;
      v36[1] = sub_1D5549E04;
      OUTLINED_FUNCTION_117_15();
LABEL_13:
      OUTLINED_FUNCTION_93_0(v34);
LABEL_16:
      OUTLINED_FUNCTION_134();

      return MusicLibrary.removeDownload<A, B>(_:relatedItems:)();
  }
}

uint64_t sub_1D5549E04()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5549EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  (*(v10[23] + 8))(v10[24], v10[22]);
  OUTLINED_FUNCTION_37_52();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D5549FA8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D554A0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_6_157();
  sub_1D5540088(v10, v11);
  OUTLINED_FUNCTION_37_52();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D554A140()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D554A238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v10 = OUTLINED_FUNCTION_136_13();
  v11(v10);
  OUTLINED_FUNCTION_37_52();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D554A2DC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D554A3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  (*(v10[15] + 8))(v10[16], v10[14]);
  OUTLINED_FUNCTION_37_52();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D554A480()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 288) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D554A578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  (*(v10[12] + 8))(v10[13], v10[11]);
  OUTLINED_FUNCTION_37_52();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D554A624()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 304) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D554A71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_9_131();
  sub_1D5540088(v10, v11);
  OUTLINED_FUNCTION_37_52();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D554A7BC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D554A8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_10_129();
  sub_1D5540088(v10, v11);
  OUTLINED_FUNCTION_37_52();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D554A954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  (*(v10[23] + 8))(v10[24], v10[22]);
  OUTLINED_FUNCTION_36_64();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D554AA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_6_157();
  sub_1D5540088(v10, v11);
  OUTLINED_FUNCTION_36_64();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D554AAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  v10 = OUTLINED_FUNCTION_136_13();
  v11(v10);
  OUTLINED_FUNCTION_36_64();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D554AB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  (*(v10[15] + 8))(v10[16], v10[14]);
  OUTLINED_FUNCTION_36_64();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D554AC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  (*(v10[12] + 8))(v10[13], v10[11]);
  OUTLINED_FUNCTION_36_64();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D554ACB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_9_131();
  sub_1D5540088(v10, v11);
  OUTLINED_FUNCTION_36_64();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D554AD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_10_129();
  sub_1D5540088(v10, v11);
  OUTLINED_FUNCTION_36_64();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t MusicLibrary.supportedStatus<A>(for:action:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, NSObject *a4@<X8>)
{
  v102 = type metadata accessor for TVSeason(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v101 = (v6 - v5);
  v7 = OUTLINED_FUNCTION_70_0();
  v100 = type metadata accessor for TVEpisode(v7);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v99 = (v10 - v9);
  OUTLINED_FUNCTION_70_0();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v97 = v12;
  v98 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v96 = (v14 - v13);
  OUTLINED_FUNCTION_70_0();
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v94 = v16;
  v95 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v93 = (v18 - v17);
  OUTLINED_FUNCTION_70_0();
  v90 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v92 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = (v22 - v21);
  v24 = type metadata accessor for MusicMovie(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = (v27 - v26);
  v29 = sub_1D5613EF8();
  OUTLINED_FUNCTION_4();
  v91 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v34 = (v33 - v32);
  v35 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v41 = (v40 - v39);
  type metadata accessor for GenericMusicItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5();
  v45 = v44 - v43;
  OUTLINED_FUNCTION_5_151();
  sub_1D5540030();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_33_1();
      v63(v34, v45, v29);
      MusicLibrary.supportedStatus<A, B>(for:action:)(v34, a1, v29, a2, &protocol witness table for Artist, a3, a4);
      v64 = *(v91 + 8);
      v65 = v34;
      return v64(v65, v29);
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 18:
    case 19:
    case 20:
      v50 = OUTLINED_FUNCTION_184_5(EnumCaseMultiPayload, v47, v48, v49, &associated type descriptor for MusicLibraryAction.UnsupportedReasonType);
      OUTLINED_FUNCTION_195_6(v50, v51, v52, v53, &associated conformance descriptor for MusicLibraryAction.MusicLibraryAction.UnsupportedReasonType: MusicLibraryActionUnsupportedReason);
      v54 = OUTLINED_FUNCTION_173_6();
      v55(v54);
      OUTLINED_FUNCTION_99_17(&protocol requirements base descriptor for MusicLibraryAction);
      OUTLINED_FUNCTION_1_200();
      v57 = v45;
      goto LABEL_3;
    case 7:
      OUTLINED_FUNCTION_4_157();
      sub_1D553FFD8();
      OUTLINED_FUNCTION_21_82();
      v61 = sub_1D554B4BC(v59, v60, &protocol conformance descriptor for MusicMovie);
      MusicLibrary.supportedStatus<A, B>(for:action:)(v28, a1, v24, a2, v61, a3, a4);
      OUTLINED_FUNCTION_6_157();
      v57 = v28;
      goto LABEL_3;
    case 8:
      (*(v92 + 32))(v23, v45, v90);
      MusicLibrary.supportedStatus<A, B>(for:action:)(v23, a1, v90, a2, &protocol witness table for MusicVideo, a3, a4);
      return (*(v92 + 8))(v23, v90);
    case 9:
      v67 = v93;
      v66 = v94;
      OUTLINED_FUNCTION_33_1();
      v29 = v95;
      v68(v93, v45, v95);
      v69 = &protocol witness table for Playlist;
      goto LABEL_13;
    case 14:
      v67 = v96;
      v66 = v97;
      OUTLINED_FUNCTION_33_1();
      v29 = v98;
      v86(v96, v45, v98);
      v69 = &protocol witness table for Song;
LABEL_13:
      MusicLibrary.supportedStatus<A, B>(for:action:)(v67, a1, v29, a2, v69, a3, a4);
      v64 = *(v66 + 8);
      v65 = v67;
      return v64(v65, v29);
    case 16:
      OUTLINED_FUNCTION_2_196();
      v70 = v99;
      sub_1D553FFD8();
      OUTLINED_FUNCTION_19_88();
      v89 = sub_1D554B4BC(v87, v88, &protocol conformance descriptor for TVEpisode);
      MusicLibrary.supportedStatus<A, B>(for:action:)(v99, a1, v100, a2, v89, a3, a4);
      v74 = type metadata accessor for TVEpisode;
      goto LABEL_17;
    case 17:
      OUTLINED_FUNCTION_3_203();
      v70 = v101;
      sub_1D553FFD8();
      OUTLINED_FUNCTION_20_97();
      v73 = sub_1D554B4BC(v71, v72, &protocol conformance descriptor for TVSeason);
      MusicLibrary.supportedStatus<A, B>(for:action:)(v101, a1, v102, a2, v73, a3, a4);
      v74 = type metadata accessor for TVSeason;
LABEL_17:
      v56 = v74;
      v57 = v70;
LABEL_3:
      result = sub_1D5540088(v57, v56);
      break;
    case 21:
      OUTLINED_FUNCTION_1_200();
      v76 = sub_1D5540088(v45, v75);
      v80 = OUTLINED_FUNCTION_184_5(v76, v77, v78, v79, &associated type descriptor for MusicLibraryAction.UnsupportedReasonType);
      OUTLINED_FUNCTION_195_6(v80, v81, v82, v83, &associated conformance descriptor for MusicLibraryAction.MusicLibraryAction.UnsupportedReasonType: MusicLibraryActionUnsupportedReason);
      v84 = OUTLINED_FUNCTION_173_6();
      v85(v84);
      result = OUTLINED_FUNCTION_99_17(&protocol requirements base descriptor for MusicLibraryAction);
      break;
    default:
      OUTLINED_FUNCTION_33_1();
      v62(v41, v45, v35);
      MusicLibrary.supportedStatus<A, B>(for:action:)(v41, a1, v35, a2, &protocol witness table for Album, a3, a4);
      result = (*(v37 + 8))(v41, v35);
      break;
  }

  return result;
}

uint64_t sub_1D554B4BC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D554B504()
{
  OUTLINED_FUNCTION_80();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8338, &qword_1D56719E0);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_149_6();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_54_41(v2);

  return sub_1D553D720(v4, v5);
}

uint64_t sub_1D554B5CC()
{
  OUTLINED_FUNCTION_80();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8340, &qword_1D5671A00);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_149_6();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_54_41(v2);

  return sub_1D553D674(v4, v5);
}

uint64_t sub_1D554B694()
{
  OUTLINED_FUNCTION_80();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8348, &qword_1D5671A20);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_149_6();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_54_41(v2);

  return sub_1D553D4CC(v4, v5);
}

uint64_t sub_1D554B75C()
{
  OUTLINED_FUNCTION_80();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8350, &qword_1D5671A40);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_149_6();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_54_41(v2);

  return sub_1D553D420(v4, v5);
}

uint64_t sub_1D554B824()
{
  OUTLINED_FUNCTION_80();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8358, &qword_1D5671A60);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_149_6();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_54_41(v2);

  return sub_1D553D374(v4, v5);
}

uint64_t sub_1D554B8EC()
{
  OUTLINED_FUNCTION_80();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8360, &qword_1D5671A80);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_149_6();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_54_41(v2);

  return sub_1D553D2C8(v4, v5);
}

uint64_t sub_1D554B9B4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_125_15(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_14();
  (*(v5 + 8))(v2);
  return v2;
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  v5 = *(v3 + 68);
  v6 = sub_1D5613838();
  if (!__swift_getEnumTagSinglePayload(v4 + v5, 1, v6))
  {
    OUTLINED_FUNCTION_56_0();
    (*(v7 + 8))(v4 + v5, v6);
  }

  return swift_deallocObject();
}