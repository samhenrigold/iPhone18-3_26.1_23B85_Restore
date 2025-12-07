unint64_t sub_192CB8E7C()
{
  result = qword_1EAE151F0;
  if (!qword_1EAE151F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE151F0);
  }

  return result;
}

id sub_192CB8F08(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_192F9679C();

  v8 = [v4 initWithIdentifier:v7 account:a3 bag:a4];

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_192CB8FA0()
{
  if (*v0 >> 62)
  {
    return sub_192F971FC();
  }

  else
  {
    return *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_192CB8FE4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v7 = a6;
  sub_192CB9314(a1, a2, a3 & 1, a4, a5, a6 & 1, *v6, *(v6 + 8));
  v13 = sub_192CB9C10(a1, a2, a3 & 1, a4, a5, v7 & 1);
  if (v13)
  {
    v14 = a4;
  }

  else
  {
    v14 = a1;
  }

  if (v13)
  {
    v15 = a5;
  }

  else
  {
    v15 = a2;
  }

  if (v13)
  {
    v16 = v7;
  }

  else
  {
    v16 = a3;
  }

  if (v13)
  {
    v17 = -1;
  }

  else
  {
    v17 = 1;
  }

  if (v13)
  {
    v18 = a1;
  }

  else
  {
    v18 = a4;
  }

  if (v13)
  {
    v19 = a2;
  }

  else
  {
    v19 = a5;
  }

  if (v13)
  {
    v7 = a3;
  }

  v21 = v14;
  v22 = v15;
  v23 = v16 & 1;
  if (a1 != a4 || (v16 & 1) != 0)
  {
    if (((a1 == a4) & v7) == 1)
    {
      return;
    }
  }

  else if (!(v7 & 1 | (a2 != a5)))
  {
    return;
  }

  for (i = 0; !__OFADD__(i, v17); i += v17)
  {
    sub_192CB9140(&v21);
    if (v21 != v18 || (v23 & 1) != 0)
    {
      if (((v21 == v18) & v7) != 0)
      {
        return;
      }
    }

    else if (!(v7 & 1 | (v22 != v19)))
    {
      return;
    }
  }

  __break(1u);
}

void sub_192CB9140(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v5 == sub_19295466C(*v1) && (v7 & 1) != 0)
  {
    goto LABEL_27;
  }

  v19 = v1[3];
  while (1)
  {
    v5 = sub_192CB96C8(v5, v6, v7 & 1, v2, v3, v4);
    v6 = v8;
    v10 = v9;
    if (v2 >> 62)
    {
      v11 = sub_192F971FC();
    }

    else
    {
      v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = (v5 == v11) & v10;
    if (v12)
    {
LABEL_21:
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = v12;
      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x193B116C0](v5, v2);
      goto LABEL_12;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v13 = *(v2 + 32 + 8 * v5);
LABEL_12:
    v14 = v13;
    v20 = v13;
    (v3)(&v21, &v20);

    if (v10)
    {
      goto LABEL_26;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x193B116C0](v6, v21);
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      if (v6 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v15 = v21[v6 + 4];
    }

    v16 = v15;

    v21 = v16;
    v17 = v19(&v21);

    v7 = 0;
    if (v17)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_192CB9314(int64_t a1, int64_t a2, unint64_t a3, int64_t a4, int64_t a5, char a6, unint64_t a7, void (*a8)(unint64_t *__return_ptr, id *))
{
  v8 = a7;
  LOBYTE(v9) = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 < a1;
  if (a4 != a1)
  {
    goto LABEL_7;
  }

  if ((a6 & 1) == 0)
  {
    if (a3)
    {
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      return;
    }

    v15 = a5 < a2;
LABEL_7:
    LODWORD(v16) = v15;
    if (v16 && a7 >> 62)
    {
      goto LABEL_55;
    }

    goto LABEL_12;
  }

  if (a3)
  {
    return;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  v18 = MEMORY[0x193B116C0](v11, v8);
LABEL_23:
  v19 = v18;
  v34 = v18;
  a8(&v35, &v34);

  v20 = sub_19295466C(v35);
  if (v9)
  {
    goto LABEL_66;
  }

  v16 = v20;

  v21 = v10 - v16;
  if (__OFSUB__(v10, v16))
  {
    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {
    v16 = -1;
    v10 = v14;
    while (1)
    {
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_57;
      }

      v31 = v13;
      if ((v11 + 1) >= v10)
      {
        break;
      }

      v13 = v11 + 5;
      while (1)
      {
        v11 = v13 - 4;
        if (v12)
        {
          v26 = MEMORY[0x193B116C0](v13 - 4, v8);
        }

        else
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_53;
          }

          if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

          v26 = *(v8 + 8 * v13);
        }

        v27 = v26;
        v34 = v26;
        a8(&v35, &v34);

        v14 = v35;
        v9 = v35 >> 62 ? sub_192F971FC() : *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);

        v25 = __OFADD__(v21, v9 * v16);
        v21 += v9 * v16;
        if (v25)
        {
          break;
        }

        v28 = v13 - 3;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_52;
        }

        ++v13;
        if (v28 >= v10)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      sub_192F971FC();
LABEL_12:
      if (v11 == v14)
      {
        if (v12 & 1) != 0 || (v9)
        {
          return;
        }

        LOBYTE(v16) = v8 & 1;
        sub_192CD452C();
        v17 = (v8 & 0xC000000000000001) != 0 ? MEMORY[0x193B116C0](v11, v8) : *(v8 + 8 * v11 + 32);
        v8 = v17;
        v34 = v17;
        a8(&v35, &v34);

        if (!__OFSUB__(v10, v13))
        {
          return;
        }

        __break(1u);
      }

      v32 = v12;
      v12 = v8 & 0xC000000000000001;
      if (v16)
      {
        sub_192CD452C();
        if (v12)
        {
          goto LABEL_58;
        }

        v18 = *(v8 + 8 * v11 + 32);
        goto LABEL_23;
      }

      sub_192CD452C();
      if (v12)
      {
        v22 = MEMORY[0x193B116C0](v14, v8);
      }

      else
      {
        v22 = *(v8 + 8 * v14 + 32);
      }

      v23 = v22;
      v34 = v22;
      a8(&v35, &v34);

      if (v32)
      {
        goto LABEL_67;
      }

      v16 = v35;
      v24 = sub_19295466C(v35);

      v25 = __OFSUB__(v24, v13);
      v21 = v24 - v13;
      if (v25)
      {
        goto LABEL_62;
      }

      v16 = 1;
      v13 = v10;
      v32 = v9;
      v10 = v11;
      v11 = v14;
    }

LABEL_46:
    v13 = v31;
    if (v32)
    {
      return;
    }

    sub_192CD452C();
    if (!v12)
    {
      v29 = *(v8 + 8 * v10 + 32);
      goto LABEL_49;
    }
  }

  v29 = MEMORY[0x193B116C0](v10, v8);
LABEL_49:
  v30 = v29;
  v34 = v29;
  a8(&v35, &v34);

  if (__OFADD__(v21, v13 * v16))
  {
    __break(1u);
    goto LABEL_65;
  }
}

uint64_t sub_192CB96C8(uint64_t a1, uint64_t a2, char a3, unint64_t a4, void (*a5)(id *), uint64_t a6)
{
  v11 = a4 & 0xC000000000000001;
  sub_192CD452C();
  if (v11)
  {
    v12 = MEMORY[0x193B116C0](a1, a4);
  }

  else
  {
    v12 = *(a4 + 8 * a1 + 32);
  }

  v13 = v12;
  v25 = v12;
  (a5)(v24, &v25);

  if (a3)
  {
    goto LABEL_24;
  }

  v14 = __OFADD__(a2, 1);
  v15 = a2 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = sub_19295466C(v24[0]);

    if (v15 != v16)
    {
      return a1;
    }
  }

  v14 = __OFADD__(a1++, 1);
  if (v14)
  {
    goto LABEL_25;
  }

  v23 = a4 >> 62;
  if (a4 >> 62)
  {
    goto LABEL_26;
  }

  v18 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (a1 != v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15210, &qword_192FCC158);
    sub_192CB9B60();
    v19 = sub_192CB98E0(v24, a1, a4, a5);
    v21 = *v20;

    (v19)(v24, 0);
    if (v21 >> 62)
    {
      v22 = sub_192F971FC();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v22)
    {
      return a1;
    }

    v14 = __OFADD__(a1++, 1);
    if (v14)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v18 = sub_192F971FC();
    }
  }

  if (v23)
  {
    return sub_192F971FC();
  }

  else
  {
    return *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t (*sub_192CB98E0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id *)))()
{
  v8 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v8;
  v8[4] = sub_192CB99AC(v8, a2, a3, a4);
  return sub_192CB9964;
}

void sub_192CB9964(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_192CB99AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id *)))()
{
  v7 = a3 & 0xC000000000000001;
  sub_192CD452C();
  if (v7)
  {
    v8 = MEMORY[0x193B116C0](a2, a3);
  }

  else
  {
    v8 = *(a3 + 8 * a2 + 32);
  }

  v9 = v8;
  v11 = v8;
  a4(&v11);

  return sub_192CB9A5C;
}

uint64_t objectdestroy_8Tm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t objectdestroy_48Tm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

unint64_t sub_192CB9B60()
{
  result = qword_1EAE15218;
  if (!qword_1EAE15218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE15210, &qword_192FCC158);
    sub_19287AD94(&qword_1EAE15220, &qword_1EAE15228, &qword_192FCC160, MEMORY[0x1E69E6340]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15218);
  }

  return result;
}

BOOL sub_192CB9C10(_BOOL8 result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = a4 < result;
  if (a4 == result)
  {
    if (a6)
    {
      if (a3)
      {
        return 0;
      }

      __break(1u);
      goto LABEL_11;
    }

    if (a3)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    return a5 < a2;
  }

  return v6;
}

_BYTE *storeEnumTagSinglePayload for GranularNotificationAction.PerformError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_192CB9D34()
{
  result = qword_1EAE15238;
  if (!qword_1EAE15238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15238);
  }

  return result;
}

id sub_192CB9DA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_192C168FC(a1, a2, a3, a4 & 1);
  OUTLINED_FUNCTION_5_35(v4);

  sub_192878268(&v18, &v16);
  if (!*(&v17 + 1))
  {
    v9 = sub_1928FC07C(&v16, &unk_1EAE131B0, &qword_192FBD860);
LABEL_5:
    v16 = v18;
    v17 = v19;
    if (*(&v19 + 1))
    {
      if (OUTLINED_FUNCTION_45(v9, v10, v11, MEMORY[0x1E69E6530], v12))
      {
        return v15;
      }
    }

    else
    {
      sub_1928FC07C(&v16, &unk_1EAE131B0, &qword_192FBD860);
    }

    return 0;
  }

  v5 = sub_192874CD0(0, &qword_1ED6DDBB0, 0x1E696AD98);
  v9 = OUTLINED_FUNCTION_45(v5, v6, v7, v5, v8);
  if ((v9 & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = [v15 integerValue];

  sub_1928FC07C(&v18, &unk_1EAE131B0, &qword_192FBD860);
  return v13;
}

id sub_192CB9EC8(uint64_t (*a1)(void))
{
  v1 = a1();
  OUTLINED_FUNCTION_5_35(v1);

  sub_192878268(&v15, &v13);
  if (!*(&v14 + 1))
  {
    v6 = sub_1928FC07C(&v13, &unk_1EAE131B0, &qword_192FBD860);
LABEL_5:
    v13 = v15;
    v14 = v16;
    if (*(&v16 + 1))
    {
      if (OUTLINED_FUNCTION_45(v6, v7, v8, MEMORY[0x1E69E6530], v9))
      {
        return v12;
      }
    }

    else
    {
      sub_1928FC07C(&v13, &unk_1EAE131B0, &qword_192FBD860);
    }

    return 0;
  }

  v2 = sub_192874CD0(0, &qword_1ED6DDBB0, 0x1E696AD98);
  v6 = OUTLINED_FUNCTION_45(v2, v3, v4, v2, v5);
  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = [v12 integerValue];

  sub_1928FC07C(&v15, &unk_1EAE131B0, &qword_192FBD860);
  return v10;
}

uint64_t static HTTPHelpers.Errors.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_192F95CFC();
  OUTLINED_FUNCTION_4_0();
  v62 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v11 = type metadata accessor for HTTPHelpers.Errors(0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = (&v61 - v18);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = (&v61 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15240, &qword_192FCC2B0);
  OUTLINED_FUNCTION_142_0(v23);
  OUTLINED_FUNCTION_62();
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v61 - v27;
  v29 = (&v61 + *(v26 + 56) - v27);
  sub_192CBB100(a1, &v61 - v27);
  sub_192CBB100(a2, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_192CBB100(v28, v22);
    v43 = *v22;
    v42 = v22[1];
    v44 = v22[2];
    OUTLINED_FUNCTION_15_24();
    if (!swift_getEnumCaseMultiPayload())
    {
      v45 = *v29;
      v46 = v29[1];
      v47 = v29[2];
      if (v43 == v45 && v42 == v46)
      {
      }

      else
      {
        v49 = sub_192F9775C();

        if ((v49 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v56 = v44 == v47;
      goto LABEL_36;
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_192CBB100(v28, v15);
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15248, &qword_192FCC2B8) + 48);
    v51 = *&v15[v50];
    OUTLINED_FUNCTION_15_24();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v52 = *(v29 + v50);
      v53 = v62;
      (*(v62 + 32))(v10, v29, v4);
      v54 = sub_192F95C9C();
      v55 = *(v53 + 8);
      v55(v10, v4);
      v55(v15, v4);
      if ((v54 & 1) == 0)
      {
        goto LABEL_30;
      }

      v56 = v51 == v52;
      goto LABEL_36;
    }

    (*(v62 + 8))(v15, v4);
LABEL_23:
    sub_1928FC07C(v28, &qword_1EAE15240, &qword_192FCC2B0);
    return 0;
  }

  sub_192CBB100(v28, v19);
  v32 = *v19;
  v31 = v19[1];
  v34 = v19[2];
  v33 = v19[3];
  v35 = v19[4];
  OUTLINED_FUNCTION_15_24();
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_21:

    goto LABEL_23;
  }

  v36 = *v29;
  v37 = v29[1];
  v39 = v29[2];
  v38 = v29[3];
  v62 = v29[4];
  if (v32 == v36 && v31 == v37)
  {
  }

  else
  {
    v41 = sub_192F9775C();

    if ((v41 & 1) == 0)
    {

LABEL_30:
      sub_192CBB164(v28);
      return 0;
    }
  }

  if (v34 == v39 && v33 == v38)
  {
  }

  else
  {
    v58 = sub_192F9775C();

    if ((v58 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v56 = v35 == v62;
LABEL_36:
  v59 = v56;
  sub_192CBB164(v28);
  return v59;
}

uint64_t sub_192CBA464(uint64_t a1)
{
  v2 = sub_192CBB990(&qword_1EAE15260, &protocol conformance descriptor for HTTPHelpers.Errors);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_192CBA4BC(uint64_t a1)
{
  v2 = sub_192CBB990(&qword_1EAE15260, &protocol conformance descriptor for HTTPHelpers.Errors);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t static HTTPHelpers.specificHeader(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = (*(a3 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      sub_192873B04();

      if (!sub_192F9711C())
      {
        break;
      }

      v7 &= v7 - 1;

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v15 = sub_192BD2C8C(v14, v13, a3);

    return v15;
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

      if (v11 >= v8)
      {

        return 0;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t static HTTPHelpers.parseMaxAge(_:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15250, &qword_192FCC2C0);
  OUTLINED_FUNCTION_142_0(v4);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v34 - v7;
  v34 = a1;
  v35 = a2;
  v38 = 0x3D6567612D78616DLL;
  v39 = 0xE800000000000000;
  v9 = sub_192F95D6C();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  sub_192873B04();
  v10 = sub_192F9713C();
  v12 = v11;
  sub_1928FC07C(v8, &qword_1EAE15250, &qword_192FCC2C0);
  if ((v12 & 1) == 0)
  {
    v13 = sub_192CBA914(v10, a1, a2);
    v15 = v14;
    v17 = v16;
    v34 = v13;
    v35 = v14;
    v36 = v18;
    v37 = v16;
    OUTLINED_FUNCTION_7_36();
    if (sub_192CBB740(v19, v20, v21, v22, v23, v17))
    {
      *&result = COERCE_DOUBLE(sub_192F968CC());
      if (*&result == 0.0)
      {
        goto LABEL_8;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        OUTLINED_FUNCTION_10_28();
        *&result = COERCE_DOUBLE(sub_192F9707C());
        if (v25)
        {
LABEL_15:
          __break(1u);
          return result;
        }

        if (v15 >> 14 >= result >> 14)
        {
          OUTLINED_FUNCTION_7_36();
          v26 = sub_192F970BC();
          v28 = v27;
          v30 = v29;
          v32 = v31;

          v34 = v26;
          v35 = v28;
          v36 = v30;
          v37 = v32;
LABEL_8:
          v33 = off_1EE56C858;

          v33(&v34, &v38);

          if ((v39 & 1) == 0)
          {
            *&result = v38;
            return result;
          }

          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_15;
    }
  }

LABEL_11:
  *&result = 0.0;
  return result;
}

unint64_t sub_192CBA914(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_192F969EC();
  }

  __break(1u);
  return result;
}

unint64_t static HTTPHelpers.timestamp(fromSecondsHeader:headers:now:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = static HTTPHelpers.specificHeader(_:from:)(a1, a2, a3);
  if (!v7)
  {
    goto LABEL_74;
  }

  v8 = v7;
  v9 = HIBYTE(v7) & 0xF;
  v10 = result & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    goto LABEL_74;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    sub_192BC8688();
    v21 = v24;
LABEL_73:

    if ((v21 & 1) == 0)
    {
      sub_192F95C3C();
      v22 = 0;
      goto LABEL_76;
    }

LABEL_74:
    v22 = 1;
LABEL_76:
    v23 = sub_192F95CFC();
    return __swift_storeEnumTagSinglePayload(a4, v22, 1, v23);
  }

  if ((v8 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v8 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_192F9731C();
    }

    v12 = *result;
    if (v12 == 43)
    {
      if (v10 >= 1)
      {
        if (v10 != 1)
        {
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_2_1();
              if (!v15 && v14)
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_9_32();
              if (!v15)
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_6_40();
              if (v14)
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_5_3();
              if (v15)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_62;
        }

        goto LABEL_71;
      }

      goto LABEL_82;
    }

    if (v12 != 45)
    {
      if (v10)
      {
        v19 = 0;
        if (result)
        {
          while (1)
          {
            v20 = *result - 48;
            if (v20 > 9)
            {
              goto LABEL_71;
            }

            if (!is_mul_ok(v19, 0xAuLL))
            {
              goto LABEL_71;
            }

            v14 = __CFADD__(10 * v19, v20);
            v19 = 10 * v19 + v20;
            if (v14)
            {
              goto LABEL_71;
            }

            ++result;
            if (!--v10)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_71:
      v17 = 1;
      goto LABEL_72;
    }

    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        v13 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_2_1();
            if (!v15 && v14)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_9_32();
            if (!v15)
            {
              goto LABEL_71;
            }

            v14 = 10 * v13 >= v16;
            v13 = 10 * v13 - v16;
            if (!v14)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_5_3();
            if (v15)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_62:
        v17 = 0;
LABEL_72:
        v21 = v17;
        goto LABEL_73;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v9)
      {
        while (1)
        {
          OUTLINED_FUNCTION_2_1();
          if (!v15 && v14)
          {
            break;
          }

          OUTLINED_FUNCTION_9_32();
          if (!v15)
          {
            break;
          }

          OUTLINED_FUNCTION_6_40();
          if (v14)
          {
            break;
          }

          OUTLINED_FUNCTION_5_3();
          if (v15)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v9)
    {
      if (v9 != 1)
      {
        OUTLINED_FUNCTION_14_24();
        while (1)
        {
          OUTLINED_FUNCTION_2_1();
          if (!v15 && v14)
          {
            break;
          }

          OUTLINED_FUNCTION_9_32();
          if (!v15)
          {
            break;
          }

          v14 = 10 * v4 >= v18;
          v4 = 10 * v4 - v18;
          if (!v14)
          {
            break;
          }

          OUTLINED_FUNCTION_5_3();
          if (v15)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_81;
  }

  if (v9)
  {
    if (v9 != 1)
    {
      OUTLINED_FUNCTION_14_24();
      while (1)
      {
        OUTLINED_FUNCTION_2_1();
        if (!v15 && v14)
        {
          break;
        }

        OUTLINED_FUNCTION_9_32();
        if (!v15)
        {
          break;
        }

        OUTLINED_FUNCTION_6_40();
        if (v14)
        {
          break;
        }

        OUTLINED_FUNCTION_5_3();
        if (v15)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_83:
  __break(1u);
  return result;
}

void static HTTPHelpers.timestamp(fromRFC1123Header:headers:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53[1] = a4;
  v59 = sub_192F95D7C();
  OUTLINED_FUNCTION_4_0();
  v58 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  sub_192F95DFC();
  OUTLINED_FUNCTION_4_0();
  v54 = v14;
  v55 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  OUTLINED_FUNCTION_15();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE131D0, &qword_192FBF430);
  OUTLINED_FUNCTION_142_0(v19);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v53 - v22;
  v24 = sub_192F95D6C();
  OUTLINED_FUNCTION_4_0();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_15();
  v31 = v30 - v29;
  v56 = static HTTPHelpers.specificHeader(_:from:)(a1, a2, a3);
  v57 = v32;
  if (v32)
  {
    v53[0] = a2;
    v33 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_192F95D4C();
    v34 = sub_192F95D5C();
    (*(v26 + 8))(v31, v24);
    [v33 setLocale_];

    sub_192F95E1C();
    v35 = sub_192F95E3C();
    v36 = 0;
    if (__swift_getEnumTagSinglePayload(v23, 1, v35) != 1)
    {
      v36 = sub_192F95E2C();
      (*(*(v35 - 8) + 8))(v23, v35);
    }

    [v33 setTimeZone_];

    sub_192CBB8A0(0xD00000000000001BLL, 0x8000000193021BF0, v33);
    v37 = v58;
    v38 = v59;
    (*(v58 + 104))(v12, *MEMORY[0x1E6969868], v59);
    sub_192F95D8C();
    (*(v37 + 8))(v12, v38);
    v39 = sub_192F95DAC();
    (*(v54 + 8))(v18, v55);
    [v33 setCalendar_];

    v41 = v56;
    v40 = v57;
    v42 = sub_192F9679C();
    v43 = [v33 dateFromString_];

    v44 = v53[0];
    if (v43)
    {

      sub_192F95CAC();
    }

    else
    {
      type metadata accessor for HTTPHelpers.Errors(0);
      OUTLINED_FUNCTION_0_42();
      v51 = sub_192CBB990(v49, v50);
      OUTLINED_FUNCTION_16_25(v51);
      *v52 = a1;
      v52[1] = v44;
      v52[2] = v41;
      v52[3] = v40;
      v52[4] = 2;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for HTTPHelpers.Errors(0);
    OUTLINED_FUNCTION_0_42();
    v47 = sub_192CBB990(v45, v46);
    OUTLINED_FUNCTION_16_25(v47);
    *v48 = a1;
    v48[1] = a2;
    v48[2] = 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t type metadata accessor for HTTPHelpers.Errors(uint64_t a1)
{
  result = qword_1EAE15278;
  if (!qword_1EAE15278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_192CBB100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HTTPHelpers.Errors(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_192CBB164(uint64_t a1)
{
  v2 = type metadata accessor for HTTPHelpers.Errors(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static HTTPHelpers.throwForRetryAfter(statusCode:headers:now:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10, &qword_192FBCDA0);
  OUTLINED_FUNCTION_142_0(v4);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v26 - v7;
  v9 = sub_192F95CFC();
  OUTLINED_FUNCTION_4_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  if (a1 == 429)
  {
    v17 = OUTLINED_FUNCTION_11_33();
    static HTTPHelpers.timestamp(fromSecondsHeader:headers:now:)(v17, v18, a2, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1928FC07C(v8, &qword_1EAE12E10, &qword_192FBCDA0);
    }

    else
    {
      (*(v11 + 32))(v16, v8, v9);
      type metadata accessor for HTTPHelpers.Errors(0);
      OUTLINED_FUNCTION_0_42();
      sub_192CBB990(v19, v20);
      swift_allocError();
      v22 = v21;
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15248, &qword_192FCC2B8) + 48);
      v24 = OUTLINED_FUNCTION_15_24();
      v25(v24);
      *(v22 + v23) = 3;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v11 + 8))(v16, v9);
    }
  }
}

uint64_t static HTTPHelpers.statusCodeString(error:)(void *a1)
{
  if (!a1 || (*&v13 = a1, v1 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0, &unk_192FC6200), sub_192874CD0(0, &qword_1ED6DE280, 0x1E696ABC0), (swift_dynamicCast() & 1) == 0) || !v12)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_8:
    sub_1928FC07C(&v13, &unk_1EAE131B0, &qword_192FBD860);
    return 0;
  }

  v2 = [v12 userInfo];
  v3 = sub_192F9669C();

  v4 = sub_192F967CC();
  sub_192952700(v4, v5, v3);

  if (!*(&v14 + 1))
  {

    goto LABEL_8;
  }

  if (OUTLINED_FUNCTION_17_26(v6, v7, v8, MEMORY[0x1E69E6530], v9))
  {
    sub_192F972BC();

    *(&v13 + 1) = 0xEF3A65646F437375;
    v10 = sub_192F9771C();
    MEMORY[0x193B10CE0](v10);

    return 0x7461745370747468;
  }

  return 0;
}

uint64_t static HTTPHelpers.isAuthError(error:)()
{
  v0 = sub_192F958CC();
  v1 = [v0 userInfo];
  v2 = sub_192F9669C();

  v3 = sub_192F967CC();
  sub_192952700(v3, v4, v2);

  if (v12)
  {
    if ((OUTLINED_FUNCTION_17_26(v5, v6, v7, MEMORY[0x1E69E6530], v8) & 1) != 0 && v10 == 401)
    {
      return 1;
    }
  }

  else
  {
    sub_1928FC07C(v11, &unk_1EAE131B0, &qword_192FBD860);
  }

  return 0;
}

unint64_t sub_192CBB6A8(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = v1[1];
      OUTLINED_FUNCTION_10_28();
      result = sub_192F9707C();
      if (v3)
      {
LABEL_9:
        __break(1u);
        return result;
      }

      if (v2 >> 14 >= result >> 14)
      {
        OUTLINED_FUNCTION_7_36();
        v4 = sub_192F970BC();
        v6 = v5;
        v8 = v7;
        v10 = v9;

        *v1 = v4;
        v1[1] = v6;
        v1[2] = v8;
        v1[3] = v10;
        return result;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_192CBB740(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{

  v8 = a3;
  while ((v8 ^ a4) >= 0x4000)
  {
    v9 = sub_192F970AC();
    v11 = v10;
    v8 = sub_192F9706C();
    v12 = sub_192F9690C();
    if (!v13)
    {

      return 1;
    }

    if (v9 == v12 && v13 == v11)
    {
    }

    else
    {
      v15 = sub_192F9775C();

      if ((v15 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  sub_192F9690C();
  v17 = v16;

  if (!v17)
  {
    return 1;
  }

LABEL_15:

  return 0;
}

void sub_192CBB8A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_192F9679C();

  [a3 setDateFormat_];
}

uint64_t sub_192CBB904(void *a1)
{
  a1[1] = sub_192CBB990(&qword_1EAE15260, &protocol conformance descriptor for HTTPHelpers.Errors);
  a1[2] = sub_192CBB990(&qword_1EAE15268, &protocol conformance descriptor for HTTPHelpers.Errors);
  result = sub_192CBB990(&qword_1EAE15270, &protocol conformance descriptor for HTTPHelpers.Errors);
  a1[3] = result;
  return result;
}

uint64_t sub_192CBB990(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HTTPHelpers.Errors(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HTTPHelpers(_BYTE *result, int a2, int a3)
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

void sub_192CBBA80(uint64_t a1)
{
  sub_192CBBB08();
  if (v1 <= 0x3F)
  {
    sub_192CBBB6C();
    if (v2 <= 0x3F)
    {
      sub_192CBBBD4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_192CBBB08()
{
  if (!qword_1EAE15288)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EAE15288);
    }
  }
}

void sub_192CBBB6C()
{
  if (!qword_1EAE15290)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EAE15290);
    }
  }
}

void sub_192CBBBD4(uint64_t a1)
{
  if (!qword_1EAE15298)
  {
    sub_192F95CFC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EAE15298);
    }
  }
}

uint64_t sub_192CBBC58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_192CBBD34()
{
  v0 = OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_0_43(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_192F968BC();
  return sub_192F978DC();
}

uint64_t sub_192CBBD7C(uint64_t a1)
{
  sub_192F9789C();
  sub_192C1329C();
  sub_192F966FC();
  return sub_192F978DC();
}

uint64_t sub_192CBBDD4(char a1)
{
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x193B11C90]((a1 & 1u) + 3);
  return sub_192F978DC();
}

uint64_t sub_192CBBE24()
{
  v0 = OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_0_43(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_192F968BC();
  return sub_192F978DC();
}

uint64_t sub_192CBBFC0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_24_0();
  sub_192F968BC();
  return sub_192F978DC();
}

uint64_t sub_192CBC008(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x193B11C90](a1);
  return sub_192F978DC();
}

uint64_t sub_192CBC060(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_24_0();
  a2(v5, a1);
  return sub_192F978DC();
}

uint64_t sub_192CBC0A8()
{
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x193B11C90](0);
  return sub_192F978DC();
}

uint64_t sub_192CBC0FC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_24_0();
  v4 = a2(a1);
  OUTLINED_FUNCTION_6_41(v4, v5, v6);

  return sub_192F978DC();
}

uint64_t sub_192CBC158()
{
  v0 = OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_0_43(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_192F968BC();
  return sub_192F978DC();
}

uint64_t sub_192CBC1B8(uint64_t a1)
{
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x193B11C90](a1);
  return sub_192F978DC();
}

uint64_t sub_192CBC228(uint64_t a1)
{
  v1 = sub_192F9789C();
  OUTLINED_FUNCTION_0_43(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_192F968BC();
  return sub_192F978DC();
}

uint64_t sub_192CBC274()
{
  v1 = OUTLINED_FUNCTION_2_46();
  if (v0)
  {
    OUTLINED_FUNCTION_70_0();
    OUTLINED_FUNCTION_69_0();
  }

  else
  {
    v3 = 0x702D6C72752D3276;
  }

  OUTLINED_FUNCTION_3_50(v1, v3, v2);

  return sub_192F978DC();
}

uint64_t sub_192CBC314()
{
  v1 = OUTLINED_FUNCTION_2_46();
  if (v0)
  {
    v3 = 0xD000000000000021;
  }

  else
  {
    v3 = 0x4464657473757274;
  }

  OUTLINED_FUNCTION_3_50(v1, v3, v2);

  return sub_192F978DC();
}

uint64_t sub_192CBC3AC()
{
  v1 = OUTLINED_FUNCTION_2_46();
  if (v0)
  {
    v3 = 0x7469746E45746F6ELL;
  }

  else
  {
    v3 = 0x7078456568636163;
  }

  OUTLINED_FUNCTION_3_50(v1, v3, v2);

  return sub_192F978DC();
}

uint64_t sub_192CBC448(uint64_t a1, unsigned __int8 a2)
{
  sub_192F9789C();
  MEMORY[0x193B11C90](a2);
  return sub_192F978DC();
}

uint64_t sub_192CBC4EC()
{
  OUTLINED_FUNCTION_2_46();
  sub_192F968BC();

  return sub_192F978DC();
}

uint64_t sub_192CBC560()
{
  v1 = OUTLINED_FUNCTION_2_46();
  if (v0)
  {
    OUTLINED_FUNCTION_70_0();
    OUTLINED_FUNCTION_69_0();
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  OUTLINED_FUNCTION_3_50(v1, v3, v2);

  return sub_192F978DC();
}

uint64_t sub_192CBC600()
{
  OUTLINED_FUNCTION_2_46();
  sub_192F968BC();

  return sub_192F978DC();
}

uint64_t sub_192CBC674(uint64_t a1, uint64_t a2)
{
  sub_192F9789C();
  sub_192C1329C();
  sub_192F966FC();
  return sub_192F978DC();
}

uint64_t sub_192CBC6C8()
{
  v1 = OUTLINED_FUNCTION_2_46();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x696E692D69647066;
    }

    else
    {
      v3 = 0x6E6F632D69647066;
    }
  }

  else
  {
    v3 = 0x7465732D69647066;
  }

  OUTLINED_FUNCTION_3_50(v1, v3, v2);

  return sub_192F978DC();
}

uint64_t sub_192CBC780()
{
  OUTLINED_FUNCTION_2_46();
  sub_192F968BC();

  return sub_192F978DC();
}

uint64_t sub_192CBC7EC()
{
  v1 = OUTLINED_FUNCTION_2_46();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x6169726574697263;
    }

    else
    {
      v3 = 0x736E6F69746361;
    }
  }

  else
  {
    v3 = 1701080941;
  }

  OUTLINED_FUNCTION_3_50(v1, v3, v2);

  return sub_192F978DC();
}

uint64_t sub_192CBC874()
{
  v1 = OUTLINED_FUNCTION_2_46();
  if (v0)
  {
    v3 = 1819047270;
  }

  else
  {
    v3 = 0x6369736162;
  }

  OUTLINED_FUNCTION_3_50(v1, v3, v2);

  return sub_192F978DC();
}

uint64_t sub_192CBC920(uint64_t a1)
{
  v1 = sub_192F9789C();
  OUTLINED_FUNCTION_0_43(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_192F968BC();
  return sub_192F978DC();
}

uint64_t sub_192CBC96C(uint64_t a1)
{
  v1 = sub_192F9789C();
  OUTLINED_FUNCTION_0_43(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_192F968BC();
  return sub_192F978DC();
}

uint64_t sub_192CBC9D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_192F9789C();
  v5 = a3(a2);
  OUTLINED_FUNCTION_6_41(v5, v6, v7);

  return sub_192F978DC();
}

uint64_t sub_192CBCA24(uint64_t a1, char a2)
{
  sub_192F9789C();
  MEMORY[0x193B11C90](a2 & 1);
  return sub_192F978DC();
}

uint64_t sub_192CBCA68()
{
  OUTLINED_FUNCTION_2_46();
  MEMORY[0x193B11C90]((v0 & 1u) + 3);
  return sub_192F978DC();
}

uint64_t sub_192CBCAA8(uint64_t a1, char a2)
{
  sub_192F9789C();
  sub_192F968BC();

  return sub_192F978DC();
}

uint64_t sub_192CBCB40()
{
  v1 = OUTLINED_FUNCTION_2_46();
  if (v0)
  {
    v3 = 0x747865746E6F63;
  }

  else
  {
    v3 = 0x655265676150746DLL;
  }

  OUTLINED_FUNCTION_3_50(v1, v3, v2);

  return sub_192F978DC();
}

uint64_t sub_192CBCBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_192F9789C();
  sub_192F968BC();
  return sub_192F978DC();
}

uint64_t sub_192CBCC28()
{
  v1 = OUTLINED_FUNCTION_2_46();
  if (v0)
  {
    OUTLINED_FUNCTION_70_0();
    OUTLINED_FUNCTION_69_0();
  }

  else
  {
    v3 = 0x6F4E657461746F72;
  }

  OUTLINED_FUNCTION_3_50(v1, v3, v2);

  return sub_192F978DC();
}

uint64_t sub_192CBCCC0()
{
  v1 = OUTLINED_FUNCTION_2_46();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 7889261;
    }

    else
    {
      v3 = 0x6E6F697463617266;
    }
  }

  else
  {
    v3 = 7235949;
  }

  OUTLINED_FUNCTION_3_50(v1, v3, v2);

  return sub_192F978DC();
}

uint64_t sub_192CBCD40()
{
  v1 = OUTLINED_FUNCTION_2_46();
  if (v0)
  {
    OUTLINED_FUNCTION_70_0();
    OUTLINED_FUNCTION_69_0();
  }

  else
  {
    v3 = 7827310;
  }

  OUTLINED_FUNCTION_3_50(v1, v3, v2);

  return sub_192F978DC();
}

uint64_t sub_192CBCDD0()
{
  v1 = OUTLINED_FUNCTION_2_46();
  if (v0)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 1701667182;
  }

  OUTLINED_FUNCTION_3_50(v1, v3, v2);

  return sub_192F978DC();
}

uint64_t sub_192CBCE54(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t))
{
  sub_192F9789C();
  a3(v6, a2);
  return sub_192F978DC();
}

uint64_t sub_192CBCEA0(uint64_t a1, uint64_t a2)
{
  sub_192F9789C();
  MEMORY[0x193B11C90](a2);
  return sub_192F978DC();
}

uint64_t sub_192CBCEF0@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_1_7();
  *a1 = result;
  return result;
}

uint64_t sub_192CBCF18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_192CBCF48(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_192CBCF50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_192BAC788(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_192CBCF80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_192CBCFB0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_192CBCFC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_192CBCFF4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_192CBCFF4(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_192CBD018@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_192CBD04C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_192CBD04C(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_192CBD08C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_192CBD0BC(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_192CBD138@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_192CBD148@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_192CBBC58(a1);
  *a2 = result;
  return result;
}

uint64_t sub_192CBD178(void *a1)
{
  v2 = v1;
  if (qword_1ED6DF160 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED6DF140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_192FBCD90;
  v6 = *(v1 + OBJC_IVAR____TtCV18AppleMediaServices9KeepAliveP33_8D5EA5EE57B6E86A66C300315FB9941621RBSAssertionComponent_logKey + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_192FBCD50;

  sub_1928FB8BC(v6, v7 + 32);
  *(v5 + 32) = v7;
  sub_19287AEE0();
  v42 = v8;
  v9._object = 0x8000000193021FB0;
  v9._countAndFlagsBits = 0xD000000000000019;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
  v10 = [a1 explanation];
  v11 = sub_192F967CC();
  v13 = v12;

  v14 = MEMORY[0x1E69E6158];
  v41[3] = MEMORY[0x1E69E6158];
  v41[0] = v11;
  v41[1] = v13;
  sub_1928F94C8(v41, v37, &unk_1EAE131B0, &qword_192FBD860);
  v38 = 0u;
  v39 = 0u;
  sub_1928FDBFC(v37, &v38, &unk_1EAE131B0, &qword_192FBD860);
  v40 = 0;
  v15 = v42;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_19287AEE0();
    v15 = v35;
    v42 = v35;
  }

  v16 = *(v15 + 16);
  if (v16 >= *(v15 + 24) >> 1)
  {
    sub_19287AEE0();
    v15 = v36;
  }

  *(v15 + 16) = v16 + 1;
  v17 = v15 + 40 * v16;
  v18 = v38;
  v19 = v39;
  *(v17 + 64) = v40;
  *(v17 + 32) = v18;
  *(v17 + 48) = v19;
  v42 = v15;
  sub_1928FB988(v41, &unk_1EAE131B0, &qword_192FBD860);
  v20._countAndFlagsBits = 0xD000000000000020;
  v20._object = 0x8000000193022290;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
  *(v5 + 40) = v42;
  v21 = sub_192F96E5C();
  if (os_log_type_enabled(v4, v21))
  {
    v22 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      swift_once();
    }

    v23 = byte_1ED6DE5D8;
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *&v38 = v5;
    *(&v38 + 1) = sub_192BB97CC;
    *&v39 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    v25 = sub_192F9674C();
    v27 = v26;

    objc_autoreleasePoolPop(v22);
    v28 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_192FBCD50;
    *(v29 + 56) = v14;
    *(v29 + 64) = sub_1928FDB30();
    *(v29 + 32) = v25;
    *(v29 + 40) = v27;
    sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v4, v21, v29);

    objc_autoreleasePoolPop(v28);
  }

  v31 = v2 + OBJC_IVAR____TtCV18AppleMediaServices9KeepAliveP33_8D5EA5EE57B6E86A66C300315FB9941621RBSAssertionComponent_invalidationHandler;
  v32 = *(v2 + OBJC_IVAR____TtCV18AppleMediaServices9KeepAliveP33_8D5EA5EE57B6E86A66C300315FB9941621RBSAssertionComponent_invalidationHandler);
  if (v32)
  {
    v33 = *(v31 + 8);

    v32(v34);
    return sub_1928FB8AC(v32, v33);
  }

  return result;
}

uint64_t sub_192CBD618(void *a1, uint64_t a2)
{
  if (qword_1ED6DF160 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED6DF140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_192FBCD90;
  v7 = *(v2 + OBJC_IVAR____TtCV18AppleMediaServices9KeepAliveP33_8D5EA5EE57B6E86A66C300315FB9941621RBSAssertionComponent_logKey + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_192FBCD50;

  sub_1928FB8BC(v7, v8 + 32);
  *(v6 + 32) = v8;
  sub_19287AEE0();
  v50 = v9;
  v10._object = 0x8000000193021FB0;
  v10._countAndFlagsBits = 0xD000000000000019;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  v11 = [a1 explanation];
  v12 = sub_192F967CC();
  v14 = v13;

  v15 = MEMORY[0x1E69E6158];
  *(&v49 + 1) = MEMORY[0x1E69E6158];
  *&v48 = v12;
  *(&v48 + 1) = v14;
  sub_1928F94C8(&v48, v44, &unk_1EAE131B0, &qword_192FBD860);
  v45 = 0u;
  v46 = 0u;
  sub_1928FDBFC(v44, &v45, &unk_1EAE131B0, &qword_192FBD860);
  v47 = 0;
  v16 = v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_19287AEE0();
    v16 = v39;
    v50 = v39;
  }

  v17 = *(v16 + 16);
  if (v17 >= *(v16 + 24) >> 1)
  {
    sub_19287AEE0();
    v16 = v40;
  }

  *(v16 + 16) = v17 + 1;
  v18 = v16 + 40 * v17;
  v19 = v45;
  v20 = v46;
  *(v18 + 64) = v47;
  *(v18 + 32) = v19;
  *(v18 + 48) = v20;
  v50 = v16;
  sub_1928FB988(&v48, &unk_1EAE131B0, &qword_192FBD860);
  v21._countAndFlagsBits = 0xD00000000000001DLL;
  v21._object = 0x8000000193022270;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  if (a2)
  {
    swift_getErrorValue();
    *(&v49 + 1) = v43;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v48);
    (*(*(v43 - 8) + 16))(boxed_opaque_existential_0);
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  sub_1928F94C8(&v48, v44, &unk_1EAE131B0, &qword_192FBD860);
  v45 = 0u;
  v46 = 0u;
  sub_1928FDBFC(v44, &v45, &unk_1EAE131B0, &qword_192FBD860);
  v47 = 0;
  v23 = v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_19287AEE0();
    v23 = v41;
  }

  v24 = *(v23 + 16);
  if (v24 >= *(v23 + 24) >> 1)
  {
    sub_19287AEE0();
    v23 = v42;
  }

  *(v23 + 16) = v24 + 1;
  v25 = v23 + 40 * v24;
  v26 = v45;
  v27 = v46;
  *(v25 + 64) = v47;
  *(v25 + 32) = v26;
  *(v25 + 48) = v27;
  v50 = v23;
  sub_1928FB988(&v48, &unk_1EAE131B0, &qword_192FBD860);
  v28._countAndFlagsBits = 46;
  v28._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
  *(v6 + 40) = v50;
  v29 = sub_192F96E5C();
  if (os_log_type_enabled(v5, v29))
  {
    v30 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      swift_once();
    }

    v31 = byte_1ED6DE5D8;
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *&v45 = v6;
    *(&v45 + 1) = sub_192BB97CC;
    *&v46 = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    v33 = sub_192F9674C();
    v35 = v34;

    objc_autoreleasePoolPop(v30);
    v36 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_192FBCD50;
    *(v37 + 56) = v15;
    *(v37 + 64) = sub_1928FDB30();
    *(v37 + 32) = v33;
    *(v37 + 40) = v35;
    sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v5, v29, v37);

    objc_autoreleasePoolPop(v36);
  }
}

uint64_t sub_192CBDBDC()
{
  v21 = sub_192F9629C();
  v1 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15370, &qword_192FCC6D0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v21 - v7;
  v9 = sub_192F9625C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18AppleMediaServices9KeepAliveP33_8D5EA5EE57B6E86A66C300315FB9941619OSSignpostComponent_signpostID;
  swift_beginAccess();
  sub_1928F94C8(v0 + v14, v8, &qword_1EAE15370, &qword_192FCC6D0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_1928FB988(v8, &qword_1EAE15370, &qword_192FCC6D0);
  }

  (*(v10 + 32))(v13, v8, v9);
  if (qword_1ED6DEF20 != -1)
  {
    swift_once();
  }

  v16 = qword_1ED6DEF30;
  sub_192F9627C();
  v17 = sub_192F9628C();
  v18 = sub_192F96F6C();
  if (sub_192F9701C())
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = sub_192F9624C();
    _os_signpost_emit_with_name_impl(&dword_192869000, v17, v18, v20, "KeepAlive invalidation warning", "", v19, 2u);
    MEMORY[0x193B13ED0](v19, -1, -1);
  }

  (*(v1 + 8))(v4, v21);
  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_192CBDEE4(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_192CBDF2C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_192CBDEE4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_192CBDFAC()
{
  v1 = *(v0 + OBJC_IVAR___AMSRBSKeepAlive_name);

  return v1;
}

id sub_192CBE01C(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);

  return sub_1928FB7CC(a1, a2, 0);
}

void sub_192CBE0E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (**a5)(void))
{
  v9 = sub_192F9644C();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v24[-v16];
  v25 = a5;
  if (a3 < 4)
  {
    v18 = qword_192FCC890[a3];
    sub_192F9641C();

    v19 = sub_19287B724(a1, a2, v18);
    if (!v19 || *(v19 + 56) != 1)
    {
      goto LABEL_6;
    }

    sub_192F9641C();
    sub_192912C1C(&qword_1ED6DDE00, MEMORY[0x1E69E7FB0], MEMORY[0x1E69E7FB8]);
    v20 = sub_192F9677C();
    a3 = v10 + 8;
    v21 = *(v10 + 8);
    v21(v14, v9);
    if (v20)
    {

LABEL_6:
      a5[2](a5);
      (*(v10 + 8))(v17, v9);
LABEL_7:

      _Block_release(a5);
      return;
    }

    v22 = swift_allocObject();
    *(v22 + 16) = sub_19291AB38;
    *(v22 + 24) = v24;
    sub_1929519E8(sub_192CBF1E8, v22, v17);

    v21(v17, v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  _Block_release(a5);
  v26 = a3;
  sub_192F9779C();
  __break(1u);
}

uint64_t sub_192CBE4E4()
{
  type metadata accessor for ShutdownState();
  v0 = swift_allocObject();
  result = sub_192CBE520();
  qword_1ED6E3388 = v0;
  return result;
}

uint64_t sub_192CBE520()
{
  v1 = v0;
  v2 = sub_192F963EC();
  OUTLINED_FUNCTION_4_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_192F9644C();
  OUTLINED_FUNCTION_4_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 24) = 0;
  sub_192874CD0(0, &qword_1ED6DE6E0, 0x1E69E9630);
  sub_192874CD0(0, &qword_1ED6DEFE0, 0x1E69E9610);
  v16 = sub_192F96EBC();
  v17 = sub_192F96F0C();

  *(v1 + 16) = v17;
  swift_getObjectType();
  aBlock[4] = sub_192CBF03C;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_192910FD8;
  aBlock[3] = &block_descriptor_64;
  v18 = _Block_copy(aBlock);

  sub_192F9641C();
  sub_192CBEA08();
  sub_192F96F1C();
  _Block_release(v18);
  (*(v4 + 8))(v8, v2);
  (*(v11 + 8))(v15, v9);

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_192F96F3C();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_192CBE7AC(uint64_t a1)
{
  if (qword_1ED6DF160 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED6DF140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  *(swift_allocObject() + 16) = xmmword_192FBCD50;
  v3._object = 0x8000000193022100;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  LogInterpolation.init(stringLiteral:)(v3);
  v4 = sub_192F96E7C();
  if (os_log_type_enabled(v2, v4))
  {
    v5 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      swift_once();
    }

    v6 = byte_1ED6DE5D8;
    *(swift_allocObject() + 16) = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    v7 = sub_192F9674C();
    v9 = v8;

    objc_autoreleasePoolPop(v5);
    v10 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_192FBCD50;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1928FDB30();
    *(v11 + 32) = v7;
    *(v11 + 40) = v9;
    sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v2, v4, v11);

    objc_autoreleasePoolPop(v10);
  }

  swift_getObjectType();
  result = sub_192F96F2C();
  atomic_store(1u, (a1 + 24));
  return result;
}

uint64_t sub_192CBEA08()
{
  sub_192F963EC();
  sub_192912C1C(&unk_1ED6DF020, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13A28, &unk_192FC8620);
  sub_19287AD94(&unk_1ED6DF010, &qword_1EAE13A28, &unk_192FC8620, MEMORY[0x1E69E6328]);
  return sub_192F9719C();
}

uint64_t sub_192CBEAF4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 25, 7);
}

uint64_t sub_192CBEB60(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_192CBEBB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_192CBEC18()
{
  result = qword_1EAE15350;
  if (!qword_1EAE15350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15350);
  }

  return result;
}

void *sub_192CBEC6C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15378, &qword_192FCC6D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void *sub_192CBECDC(uint64_t a1, unint64_t a2)
{
  v3 = sub_192CBED28(a1, a2);
  sub_192CBEE40(&unk_1F06F0340);
  return v3;
}

void *sub_192CBED28(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_192F9691C())
  {
    result = sub_192CBEC6C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_192F972AC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_192F9731C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_192CBEE40(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_192CBEF24(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_192CBEF24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15378, &qword_192FCC6D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_192CBF058()
{
  result = qword_1EAE15388;
  if (!qword_1EAE15388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15388);
  }

  return result;
}

unint64_t sub_192CBF0B0()
{
  result = qword_1EAE15390;
  if (!qword_1EAE15390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15390);
  }

  return result;
}

unint64_t sub_192CBF108()
{
  result = qword_1EAE15398;
  if (!qword_1EAE15398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15398);
  }

  return result;
}

unint64_t sub_192CBF160()
{
  result = qword_1EAE153A0;
  if (!qword_1EAE153A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE153A0);
  }

  return result;
}

id LiveFileStore.init()@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() defaultManager];
  *a1 = result;
  return result;
}

uint64_t LiveFileStore.contents(at:)(uint64_t a1)
{
  v3 = *v1;
  sub_192F958FC();
  v4 = sub_192F9679C();
  v5 = [v3 contentsAtPath_];

  if (v5)
  {

    v6 = sub_192F95B7C();

    return v6;
  }

  else
  {
    v8 = sub_192F9679C();

    v9 = [v3 fileExistsAtPath_];

    if (v9)
    {
      v10 = static DeviceDetails.deviceUnlockedSinceBoot()();
      if (v10 == 2)
      {
        type metadata accessor for FileStoreError(0);
        v11 = sub_192CBF4E0();
        OUTLINED_FUNCTION_4_49(v11);
        v13 = v12;
        v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE151C0, &qword_192FCC8B0) + 48);
        sub_192F95A8C();
        OUTLINED_FUNCTION_0_44();
        (*(v15 + 16))(v13, a1);
        *(v13 + v14) = 2;
      }

      else
      {
        v21 = v10;
        type metadata accessor for FileStoreError(0);
        sub_192CBF4E0();
        swift_allocError();
        v23 = v22;
        v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE151C0, &qword_192FCC8B0) + 48);
        sub_192F95A8C();
        OUTLINED_FUNCTION_0_44();
        (*(v25 + 16))(v23, a1);
        if (v21)
        {
          *(v23 + v24) = 2;
        }

        else
        {
          *(v23 + v24) = 3;
        }
      }
    }

    else
    {
      type metadata accessor for FileStoreError(0);
      v16 = sub_192CBF4E0();
      OUTLINED_FUNCTION_4_49(v16);
      v18 = v17;
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE151C0, &qword_192FCC8B0) + 48);
      sub_192F95A8C();
      OUTLINED_FUNCTION_0_44();
      (*(v20 + 16))(v18, a1);
      *(v18 + v19) = 1;
    }

    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

unint64_t sub_192CBF4E0()
{
  result = qword_1EAE11A60;
  if (!qword_1EAE11A60)
  {
    type metadata accessor for FileStoreError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11A60);
  }

  return result;
}

void LiveFileStore.createFolder(at:createIntermediateFolders:)(uint64_t a1, char a2)
{
  v55[4] = *MEMORY[0x1E69E9840];
  sub_192F957BC();
  OUTLINED_FUNCTION_4_0();
  v50 = v6;
  v51 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_192F95A8C();
  OUTLINED_FUNCTION_4_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v2;
  sub_192F958FC();
  v18 = sub_192F9679C();

  v55[0] = 0;
  v19 = [v17 createDirectoryAtPath:v18 withIntermediateDirectories:a2 & 1 attributes:0 error:v55];

  v20 = v55[0];
  if (v19)
  {
    (*(v12 + 16))(v16, a1, v10);
    v21 = v20;
    sub_192F957AC();
    sub_192F9579C();
    v22 = v49[1];
    sub_192F9595C();
    if (!v22)
    {
      (*(v50 + 8))(v9, v51);
      (*(v12 + 8))(v16, v10);
      return;
    }

    (*(v50 + 8))(v9, v51);
    (*(v12 + 8))(v16, v10);
    v23 = v22;
  }

  else
  {
    v24 = v55[0];
    v23 = sub_192F958DC();

    swift_willThrow();
  }

  v54 = v23;
  v25 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0, &unk_192FC6200);
  sub_1929333B4();
  if (!swift_dynamicCast())
  {
    goto LABEL_25;
  }

  v26 = v53;
  v27 = [v53 userInfo];
  v28 = sub_192F9669C();

  v29 = sub_192F967CC();
  sub_192952700(v29, v30, v28);

  if (v55[3])
  {
    if (swift_dynamicCast())
    {
      v31 = v52;
      v32 = [v26 domain];
      v33 = sub_192F967CC();
      v35 = v34;

      v36 = sub_192F967CC();
      if (v33 == v36 && v35 == v37)
      {
      }

      else
      {
        v39 = OUTLINED_FUNCTION_1_52(v36);

        if ((v39 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      if ([v26 code] == 516)
      {
        v40 = [v31 domain];
        v41 = sub_192F967CC();
        v43 = v42;

        v44 = sub_192F967CC();
        if (v41 == v44 && v43 == v45)
        {
        }

        else
        {
          v47 = OUTLINED_FUNCTION_1_52(v44);

          if ((v47 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v48 = [v31 code];

        if (v48 == 17)
        {

          return;
        }

        goto LABEL_24;
      }

LABEL_23:
    }
  }

  else
  {
    sub_192907DE8(v55);
  }

LABEL_24:
  swift_willThrow();
LABEL_25:
}

void *LiveFileStore.items(within:)()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_192F9596C();
  v7[0] = 0;
  v2 = [v0 contentsOfDirectoryAtURL:v1 includingPropertiesForKeys:0 options:4 error:v7];

  v3 = v7[0];
  if (v2)
  {
    sub_192F95A8C();
    v1 = sub_192F96B0C();
    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    sub_192F958DC();

    swift_willThrow();
  }

  return v1;
}

void LiveFileStore.removeItem(at:)(uint64_t a1)
{
  v31[4] = *MEMORY[0x1E69E9840];
  v2 = *v1;
  sub_192F958FC();
  v3 = sub_192F9679C();

  v31[0] = 0;
  LODWORD(v2) = [v2 removeItemAtPath:v3 error:v31];

  if (v2)
  {
    v4 = v31[0];
    return;
  }

  v5 = v31[0];
  v6 = sub_192F958DC();

  swift_willThrow();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0, &unk_192FC6200);
  sub_1929333B4();
  if (!swift_dynamicCast())
  {
    goto LABEL_22;
  }

  v8 = [v30 userInfo];
  v9 = sub_192F9669C();

  v10 = sub_192F967CC();
  sub_192952700(v10, v11, v9);

  if (!v31[3])
  {
    sub_192907DE8(v31);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    swift_willThrow();
LABEL_22:

    return;
  }

  v12 = [v30 domain];
  v13 = sub_192F967CC();
  v15 = v14;

  v16 = sub_192F967CC();
  if (v13 == v16 && v15 == v17)
  {
  }

  else
  {
    v19 = OUTLINED_FUNCTION_2_47(v16);

    if ((v19 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if ([v30 code] != 4)
  {
LABEL_20:

    goto LABEL_21;
  }

  v20 = [v29 domain];
  v21 = sub_192F967CC();
  v23 = v22;

  v24 = sub_192F967CC();
  if (v21 == v24 && v23 == v25)
  {
  }

  else
  {
    v27 = OUTLINED_FUNCTION_2_47(v24);

    if ((v27 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v28 = [v29 code];

  if (v28 != 2)
  {
    goto LABEL_21;
  }
}

uint64_t sub_192CBFF1C(uint64_t a1, char a2)
{
  if (qword_1EAE124B8 != -1)
  {
    OUTLINED_FUNCTION_10_29(&qword_1EAE124B8);
  }

  v4 = qword_1EAE15430;
  v549 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_192FBCD40;
  *(&v565 + 1) = &type metadata for LocalAuthAction;
  LOBYTE(v564) = a2;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    v8 = sub_192F967CC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  static LogInterpolation.prefix(_:_:)(&v564, v8, v10, (v5 + 32));

  __swift_destroy_boxed_opaque_existential_0(&v564);
  v11._countAndFlagsBits = 0xD000000000000031;
  v11._object = 0x80000001930222F0;
  LogInterpolation.init(stringLiteral:)(v11);
  sub_192C7A6B4(a2);
  v12 = MEMORY[0x1E69E6158];
  *(&v565 + 1) = MEMORY[0x1E69E6158];
  *&v564 = v13;
  *(&v564 + 1) = v14;
  static LogInterpolation.safe(_:)(&v564, (v5 + 48));
  sub_192907DE8(&v564);
  v15 = sub_192F96E7C();
  if (os_log_type_enabled(v4, v15))
  {
    v16 = a2;
    v17 = v4;
    v18 = v12;
    v19 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    v20 = OUTLINED_FUNCTION_19(&unk_1F06FCC40);
    *(v20 + 16) = v12;
    *&v564 = v5;
    *(&v564 + 1) = sub_192BB97CC;
    *&v565 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_8_38();
    v21 = sub_192F9674C();
    v23 = v22;

    objc_autoreleasePoolPop(v19);
    v24 = objc_autoreleasePoolPush();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v26 = OUTLINED_FUNCTION_90(v25);
    *(v26 + 16) = xmmword_192FBCD50;
    *(v26 + 56) = v18;
    *(v26 + 64) = sub_1928FDB30();
    *(v26 + 32) = v21;
    *(v26 + 40) = v23;
    v12 = v18;
    v4 = v17;
    sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v17, v15, v26);

    objc_autoreleasePoolPop(v24);
    a2 = v16;
  }

  switch(a2)
  {
    case 1:
      v92 = sub_192CBFF1C(a1, 0);
      if (v92)
      {
        v100 = OUTLINED_FUNCTION_6_42();
        v107 = OUTLINED_FUNCTION_17_27(v100 | 0x6E6F6B6300000000, 0xED00006E7462632ELL, v101, v102, v103, v104, v105, v106, v516, v527, v538, v549, v560, v561, v562, v563, v564);
        if (*(&v565 + 1))
        {
          OUTLINED_FUNCTION_1_53(v107, v108, v109, MEMORY[0x1E69E6370], v110, v111, v112, v113, v520, v531, v542, v553, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
          if (swift_dynamicCast())
          {
            v114 = LOBYTE(v567[0]);
            goto LABEL_197;
          }
        }

        else
        {
          sub_192907DE8(&v564);
        }

        v114 = 0;
LABEL_197:
        OUTLINED_FUNCTION_26_19();
        v421 = sub_192CC1770(0xD000000000000013, v419 | 0x8000000000000000, a1, v420);
        if (*(&v565 + 1))
        {
          OUTLINED_FUNCTION_1_53(v421, v422, v423, MEMORY[0x1E69E6530], v424, v425, v426, v427, v520, v531, v542, v553, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
          if (swift_dynamicCast())
          {
            OUTLINED_FUNCTION_13_22();
            v428 = v222;
LABEL_212:
            v437 = OUTLINED_FUNCTION_3_51();
            v444 = OUTLINED_FUNCTION_17_27(v437 & 0xFFFFFFFFFFFFLL | 0x6F6B000000000000, 0xEE006E7462632E6ELL, v438, v439, v440, v441, v442, v443, v520, v531, v542, v553, v560, v561, v562, v563, v564);
            if (*(&v565 + 1))
            {
              OUTLINED_FUNCTION_1_53(v444, v445, v446, MEMORY[0x1E69E6370], v447, v448, v449, v450, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
              if (swift_dynamicCast())
              {
                v198 = v567[0];
                goto LABEL_217;
              }
            }

            else
            {
              sub_192907DE8(&v564);
            }

            v198 = 0;
LABEL_217:
            OUTLINED_FUNCTION_26_19();
            v453 = sub_192CC1770(0xD000000000000014, v451 | 0x8000000000000000, a1, v452);
            if (!*(&v565 + 1))
            {
              goto LABEL_224;
            }

            v90 = v4;
            OUTLINED_FUNCTION_1_53(v453, v454, v455, MEMORY[0x1E69E6530], v456, v457, v458, v459, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
            v213 = swift_dynamicCast();
            v221 = a2;
            if ((v213 & 1) != 0 && (v114 & v428) == 1)
            {
              OUTLINED_FUNCTION_13_22();
              goto LABEL_221;
            }

            goto LABEL_226;
          }
        }

        else
        {
          sub_192907DE8(&v564);
        }

        v428 = 0;
        goto LABEL_212;
      }

      v159 = v12;
      v169 = OUTLINED_FUNCTION_18_24(v92, v93, v94, v95, v96, v97, v98, v99, v516, v527, v538, v549);
      *(v169 + 16) = xmmword_192FBCD90;
      *(&v565 + 1) = &type metadata for LocalAuthAction;
      LOBYTE(v564) = 1;
      v170 = AMSLogKey();
      if (v170)
      {
        v171 = v170;
        v172 = sub_192F967CC();
        v163 = v173;
      }

      else
      {
        v172 = 0;
        v163 = 0;
      }

      static LogInterpolation.prefix(_:_:)(&v564, v172, v163, (v169 + 32));

      __swift_destroy_boxed_opaque_existential_0(&v564);
      v429._countAndFlagsBits = 0xD000000000000038;
      v429._object = 0x80000001930223F0;
      LogInterpolation.init(stringLiteral:)(v429);
      v430 = sub_192F96E5C();
      if (!OUTLINED_FUNCTION_8_25(v430))
      {
        goto LABEL_208;
      }

      v166 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      v431 = OUTLINED_FUNCTION_19(&unk_1F06FCC18);
      v168 = OUTLINED_FUNCTION_27_1(v431);
      *&v564 = v169;
      goto LABEL_207;
    case 2:
      v59 = OUTLINED_FUNCTION_6_42();
      v67 = OUTLINED_FUNCTION_21_20(v59, v60, v61, v62, v63, v64, v65, v66, v516, v527, v538, v549, v560, v561, v562, v563, v564);
      if (*(&v565 + 1))
      {
        OUTLINED_FUNCTION_1_53(v67, v68, v69, MEMORY[0x1E69E6370], v70, v71, v72, v73, v518, v529, v540, v551, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
        if (swift_dynamicCast())
        {
          v74 = LOBYTE(v567[0]);
          goto LABEL_64;
        }
      }

      else
      {
        sub_192907DE8(&v564);
      }

      v74 = 0;
LABEL_64:
      v174 = OUTLINED_FUNCTION_6_42();
      v181 = OUTLINED_FUNCTION_17_27(v174 | 0x6F69626300000000, 0xEE00746F6962702ELL, v175, v176, v177, v178, v179, v180, v518, v529, v540, v551, v560, v561, v562, v563, v564);
      if (*(&v565 + 1))
      {
        OUTLINED_FUNCTION_1_53(v181, v182, v183, MEMORY[0x1E69E6530], v184, v185, v186, v187, v521, v532, v543, v554, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
        if (swift_dynamicCast())
        {
          v188 = v567[0] == 3;
          goto LABEL_69;
        }
      }

      else
      {
        sub_192907DE8(&v564);
      }

      v188 = 0;
LABEL_69:
      v189 = OUTLINED_FUNCTION_3_51();
      v191 = sub_192CC1770(v189 & 0xFFFFFFFFFFFFLL | 0x7462000000000000, v190 + 11, a1, &v564);
      if (*(&v565 + 1))
      {
        OUTLINED_FUNCTION_1_53(v191, v192, v193, MEMORY[0x1E69E6370], v194, v195, v196, v197, v521, v532, v543, v554, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
        if (swift_dynamicCast())
        {
          v198 = v567[0];
          goto LABEL_74;
        }
      }

      else
      {
        sub_192907DE8(&v564);
      }

      v198 = 0;
LABEL_74:
      v199 = OUTLINED_FUNCTION_3_51();
      v206 = OUTLINED_FUNCTION_17_27(v199 & 0xFFFFFFFFFFFFLL | 0x6962000000000000, 0xEF746F6962702E6FLL, v200, v201, v202, v203, v204, v205, v521, v532, v543, v554, v560, v561, v562, v563, v564);
      if (!*(&v565 + 1))
      {
        goto LABEL_224;
      }

      v90 = v4;
      OUTLINED_FUNCTION_1_53(v206, v207, v208, MEMORY[0x1E69E6530], v209, v210, v211, v212, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
      v213 = swift_dynamicCast();
      v221 = a2;
      if ((v213 & 1) == 0 || (v74 & v188) != 1)
      {
        goto LABEL_226;
      }

      v222 = v567[0] == 3;
LABEL_221:
      if (!v222)
      {
        v198 = 0;
      }

      goto LABEL_227;
    case 3:
      v75 = OUTLINED_FUNCTION_5_36(v27, v28, v29, v30, v31, v32, v33, v34, v516, v527, v538, v549, v560, v561, v562, v563, v564);
      if (*(&v565 + 1))
      {
        OUTLINED_FUNCTION_1_53(v75, v76, v77, MEMORY[0x1E69E6530], v78, v79, v80, v81, v519, v530, v541, v552, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_9_33();
          v42 = v222;
LABEL_80:
          v223 = OUTLINED_FUNCTION_6_42();
          v231 = OUTLINED_FUNCTION_11_34(v223, v224, v225, v226, v227, v228, v229, v230, v519, v530, v541, v552, v560, v561, v562, v563, v564);
          if (*(&v565 + 1))
          {
            OUTLINED_FUNCTION_1_53(v231, v232, v233, MEMORY[0x1E69E6530], v234, v235, v236, v237, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
            if (swift_dynamicCast())
            {
              OUTLINED_FUNCTION_9_33();
              v147 = v222;
LABEL_87:
              v238 = OUTLINED_FUNCTION_2_48();
              v241 = sub_192CC1770(v238, v239, a1, v240);
              if (*(&v565 + 1))
              {
                OUTLINED_FUNCTION_1_53(v241, v242, v243, MEMORY[0x1E69E6530], v244, v245, v246, v247, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
                if (swift_dynamicCast())
                {
                  OUTLINED_FUNCTION_9_33();
                  v155 = v222;
                  goto LABEL_94;
                }
              }

              else
              {
                sub_192907DE8(&v564);
              }

              v155 = 0;
LABEL_94:
              v248 = OUTLINED_FUNCTION_3_51();
              v156 = OUTLINED_FUNCTION_12_25(v248);
              goto LABEL_95;
            }
          }

          else
          {
            sub_192907DE8(&v564);
          }

          v147 = 0;
          goto LABEL_87;
        }
      }

      else
      {
        sub_192907DE8(&v564);
      }

      v42 = 0;
      goto LABEL_80;
    case 4:
      v43 = sub_192CBFF1C(a1, 1);
      if (v43)
      {
        v51 = OUTLINED_FUNCTION_5_36(v43, v44, v45, v46, v47, v48, v49, v50, v516, v527, v538, v549, v560, v561, v562, v563, v564);
        if (*(&v565 + 1))
        {
          OUTLINED_FUNCTION_1_53(v51, v52, v53, MEMORY[0x1E69E6530], v54, v55, v56, v57, v517, v528, v539, v550, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
          if (swift_dynamicCast())
          {
            OUTLINED_FUNCTION_13_22();
            v58 = v222;
LABEL_166:
            v373 = OUTLINED_FUNCTION_6_42();
            v381 = OUTLINED_FUNCTION_11_34(v373, v374, v375, v376, v377, v378, v379, v380, v517, v528, v539, v550, v560, v561, v562, v563, v564);
            if (*(&v565 + 1))
            {
              OUTLINED_FUNCTION_1_53(v381, v382, v383, MEMORY[0x1E69E6530], v384, v385, v386, v387, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
              if (swift_dynamicCast())
              {
                OUTLINED_FUNCTION_13_22();
                v388 = v222;
LABEL_173:
                v389 = sub_192CC1770(0x6F6D702E6E67736FLL, 0xE900000000000063, a1, &v564);
                if (*(&v565 + 1))
                {
                  OUTLINED_FUNCTION_1_53(v389, v390, v391, MEMORY[0x1E69E6530], v392, v393, v394, v395, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
                  if (swift_dynamicCast())
                  {
                    OUTLINED_FUNCTION_9_33();
                    v396 = v222;
LABEL_180:
                    v397 = OUTLINED_FUNCTION_2_48();
                    v400 = sub_192CC1770(v397, v398, a1, v399);
                    if (*(&v565 + 1))
                    {
                      OUTLINED_FUNCTION_1_53(v400, v401, v402, MEMORY[0x1E69E6530], v403, v404, v405, v406, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
                      if (swift_dynamicCast())
                      {
                        OUTLINED_FUNCTION_13_22();
                        v407 = v222;
LABEL_187:
                        v408 = OUTLINED_FUNCTION_3_51();
                        v409 = OUTLINED_FUNCTION_12_25(v408);
                        v412 = sub_192CC1770(v409, v410, a1, v411);
                        if (*(&v565 + 1))
                        {
                          v90 = v4;
                          OUTLINED_FUNCTION_1_53(v412, v413, v414, MEMORY[0x1E69E6530], v415, v416, v417, v418, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
                          v213 = swift_dynamicCast();
                          v221 = a2;
                          if ((v213 & 1) != 0 && (v58 & v388 & v396 & v407) == 1)
                          {
                            OUTLINED_FUNCTION_13_22();
                            v198 = v222;
                            goto LABEL_227;
                          }
                        }

                        else
                        {
                          v90 = v4;
                          v221 = a2;
                          v213 = sub_192907DE8(&v564);
                        }

                        v198 = 0;
                        goto LABEL_227;
                      }
                    }

                    else
                    {
                      sub_192907DE8(&v564);
                    }

                    v407 = 0;
                    goto LABEL_187;
                  }
                }

                else
                {
                  sub_192907DE8(&v564);
                }

                v396 = 0;
                goto LABEL_180;
              }
            }

            else
            {
              sub_192907DE8(&v564);
            }

            v388 = 0;
            goto LABEL_173;
          }
        }

        else
        {
          sub_192907DE8(&v564);
        }

        v58 = 0;
        goto LABEL_166;
      }

      v159 = v12;
      v160 = OUTLINED_FUNCTION_18_24(v43, v44, v45, v46, v47, v48, v49, v50, v516, v527, v538, v549);
      *(v160 + 16) = xmmword_192FBCD90;
      *(&v565 + 1) = &type metadata for LocalAuthAction;
      LOBYTE(v564) = 4;
      v161 = sub_192BBE1E8();
      v163 = v162;
      static LogInterpolation.prefix(_:_:)(&v564, v161, v162, (v160 + 32));

      __swift_destroy_boxed_opaque_existential_0(&v564);
      v164._countAndFlagsBits = 0xD000000000000037;
      v164._object = 0x80000001930223B0;
      LogInterpolation.init(stringLiteral:)(v164);
      v165 = sub_192F96E5C();
      if (!OUTLINED_FUNCTION_8_25(v165))
      {
        goto LABEL_208;
      }

      v166 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      v167 = OUTLINED_FUNCTION_19(&unk_1F06FCBF0);
      v168 = OUTLINED_FUNCTION_27_1(v167);
      *&v564 = v160;
LABEL_207:
      *(&v564 + 1) = sub_192BB97CC;
      *&v565 = v168;

      v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      OUTLINED_FUNCTION_8_38();
      sub_192F9674C();
      OUTLINED_FUNCTION_19_21();

      objc_autoreleasePoolPop(v166);
      v433 = objc_autoreleasePoolPush();
      v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v435 = OUTLINED_FUNCTION_90(v434);
      *(v435 + 16) = xmmword_192FBCD50;
      *(v435 + 56) = v159;
      *(v435 + 64) = sub_1928FDB30();
      *(v435 + 32) = v163;
      *(v435 + 40) = v432;
      OUTLINED_FUNCTION_52();
      sub_192F9622C(v436);

      objc_autoreleasePoolPop(v433);
LABEL_208:

LABEL_209:
      v198 = 0;
      return v198 & 1;
    case 5:
      v115 = OUTLINED_FUNCTION_7_37();
      if (*(&v565 + 1))
      {
        OUTLINED_FUNCTION_1_53(v115, v116, v117, MEMORY[0x1E69E6370], v118, v119, v120, v121, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
        if (swift_dynamicCast())
        {
          HIDWORD(v538) = LOBYTE(v567[0]);
          goto LABEL_120;
        }
      }

      else
      {
        sub_192907DE8(&v564);
      }

      HIDWORD(v538) = 0;
LABEL_120:
      v292 = OUTLINED_FUNCTION_4_50();
      v294 = sub_192952700(v292, v293, a1);
      if (*(&v565 + 1))
      {
        OUTLINED_FUNCTION_1_53(v294, v295, v296, MEMORY[0x1E69E6370], v297, v298, v299, v300, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
        if (swift_dynamicCast())
        {
          LODWORD(v538) = LOBYTE(v567[0]);
          goto LABEL_125;
        }
      }

      else
      {
        sub_192907DE8(&v564);
      }

      LODWORD(v538) = 0;
LABEL_125:
      v301 = OUTLINED_FUNCTION_6_42();
      v309 = OUTLINED_FUNCTION_21_20(v301, v302, v303, v304, v305, v306, v307, v308, v516, v527, v538, v549, v560, v561, v562, v563, v564);
      if (*(&v565 + 1))
      {
        v316 = a1;
        OUTLINED_FUNCTION_1_53(v309, v310, v311, MEMORY[0x1E69E6370], v312, v313, v314, v315, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
        v90 = v4;
        if (swift_dynamicCast())
        {
          HIDWORD(v527) = LOBYTE(v567[0]);
          goto LABEL_130;
        }
      }

      else
      {
        v316 = a1;
        v90 = v4;
        sub_192907DE8(&v564);
      }

      HIDWORD(v527) = 0;
LABEL_130:
      v221 = a2;
      OUTLINED_FUNCTION_26_19();
      v319 = sub_192CC1770(0xD000000000000011, v317 | 0x8000000000000000, v316, v318);
      if (*(&v565 + 1))
      {
        OUTLINED_FUNCTION_1_53(v319, v320, v321, MEMORY[0x1E69E6370], v322, v323, v324, v325, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
        if (swift_dynamicCast())
        {
          v326 = v567[0];
          goto LABEL_135;
        }
      }

      else
      {
        sub_192907DE8(&v564);
      }

      v326 = 0;
LABEL_135:
      v327 = OUTLINED_FUNCTION_3_51();
      v329 = sub_192CC1770(v327 & 0xFFFFFFFFFFFFLL | 0x7462000000000000, v328 + 11, v316, &v564);
      if (*(&v565 + 1))
      {
        OUTLINED_FUNCTION_1_53(v329, v330, v331, MEMORY[0x1E69E6370], v332, v333, v334, v335, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
        if (swift_dynamicCast())
        {
          v336 = v567[0];
          goto LABEL_140;
        }
      }

      else
      {
        sub_192907DE8(&v564);
      }

      v336 = 0;
LABEL_140:
      v337 = OUTLINED_FUNCTION_2_48();
      v340 = sub_192CC1770(v337, v338, v316, v339);
      if (*(&v565 + 1))
      {
        OUTLINED_FUNCTION_1_53(v340, v341, v342, MEMORY[0x1E69E6530], v343, v344, v345, v346, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_9_33();
          v347 = v222;
LABEL_147:
          OUTLINED_FUNCTION_26_19();
          v350 = sub_192CC1770(0xD000000000000012, v348 | 0x8000000000000000, v316, v349);
          if (*(&v565 + 1))
          {
            OUTLINED_FUNCTION_1_53(v350, v351, v352, MEMORY[0x1E69E6370], v353, v354, v355, v356, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
            v213 = swift_dynamicCast();
            if (v213)
            {
              v357 = v567[0];
LABEL_152:
              v198 = BYTE4(v538) & v538 & BYTE4(v527) & v326 & v336 & v347 & v357;
              goto LABEL_227;
            }
          }

          else
          {
            v213 = sub_192907DE8(&v564);
          }

          v357 = 0;
          goto LABEL_152;
        }
      }

      else
      {
        sub_192907DE8(&v564);
      }

      v347 = 0;
      goto LABEL_147;
    case 6:
      v122 = OUTLINED_FUNCTION_7_37();
      if (*(&v565 + 1))
      {
        OUTLINED_FUNCTION_1_53(v122, v123, v124, MEMORY[0x1E69E6370], v125, v126, v127, v128, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
        if (swift_dynamicCast())
        {
          v129 = v567[0];
          goto LABEL_155;
        }
      }

      else
      {
        sub_192907DE8(&v564);
      }

      v129 = 0;
LABEL_155:
      v358 = OUTLINED_FUNCTION_4_50();
      v360 = sub_192952700(v358, v359, a1);
      if (*(&v565 + 1))
      {
        v367 = a1;
        OUTLINED_FUNCTION_1_53(v360, v361, v362, MEMORY[0x1E69E6370], v363, v364, v365, v366, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
        v90 = v4;
        if (swift_dynamicCast())
        {
          v368 = v567[0];
          goto LABEL_160;
        }
      }

      else
      {
        v367 = a1;
        v90 = v4;
        sub_192907DE8(&v564);
      }

      v368 = 0;
LABEL_160:
      v221 = a2;
      v369 = OUTLINED_FUNCTION_6_42();
      sub_192CC1770(v369 | 0x6F69626300000000, 0xE800000000000000, v367, &v564);
      v370 = *(&v565 + 1);
      sub_192907DE8(&v564);
      v371 = OUTLINED_FUNCTION_3_51();
      sub_192CC1770(v371 & 0xFFFFFFFFFFFFLL | 0x6962000000000000, v372 | 0xC, v367, &v564);
      if (!*(&v565 + 1))
      {
        goto LABEL_225;
      }

      v213 = sub_192907DE8(&v564);
      if (v370)
      {
        v198 = v129 & v368;
      }

      else
      {
        v198 = 0;
      }

      goto LABEL_227;
    case 7:
    case 8:
      v35 = OUTLINED_FUNCTION_7_37();
      if (*(&v565 + 1))
      {
        OUTLINED_FUNCTION_1_53(v35, v36, v37, MEMORY[0x1E69E6370], v38, v39, v40, v41, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
        if (swift_dynamicCast())
        {
          v42 = LOBYTE(v567[0]);
          goto LABEL_43;
        }
      }

      else
      {
        sub_192907DE8(&v564);
      }

      v42 = 0;
LABEL_43:
      v130 = OUTLINED_FUNCTION_4_50();
      v132 = sub_192952700(v130, v131, a1);
      if (*(&v565 + 1))
      {
        OUTLINED_FUNCTION_1_53(v132, v133, v134, MEMORY[0x1E69E6370], v135, v136, v137, v138, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
        v139 = swift_dynamicCast();
        if (v139)
        {
          v147 = LOBYTE(v567[0]);
          goto LABEL_48;
        }
      }

      else
      {
        v139 = sub_192907DE8(&v564);
      }

      v147 = 0;
LABEL_48:
      v148 = OUTLINED_FUNCTION_5_36(v139, v140, v141, v142, v143, v144, v145, v146, v516, v527, v538, v549, v560, v561, v562, v563, v564);
      if (*(&v565 + 1))
      {
        OUTLINED_FUNCTION_1_53(v148, v149, v150, MEMORY[0x1E69E6530], v151, v152, v153, v154, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_9_33();
          v155 = v222;
LABEL_55:
          v156 = OUTLINED_FUNCTION_2_48();
LABEL_95:
          v249 = sub_192CC1770(v156, v157, a1, v158);
          if (*(&v565 + 1))
          {
            v90 = v4;
            OUTLINED_FUNCTION_1_53(v249, v250, v251, MEMORY[0x1E69E6530], v252, v253, v254, v255, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
            v213 = swift_dynamicCast();
            v221 = a2;
            if ((v213 & 1) != 0 && (v42 & v147 & v155) == 1)
            {
              OUTLINED_FUNCTION_9_33();
              v198 = v222;
              goto LABEL_227;
            }
          }

          else
          {
LABEL_224:
            v90 = v4;
            v221 = a2;
LABEL_225:
            v213 = sub_192907DE8(&v564);
          }

LABEL_226:
          v198 = 0;
          goto LABEL_227;
        }
      }

      else
      {
        sub_192907DE8(&v564);
      }

      v155 = 0;
      goto LABEL_55;
    default:
      v82 = OUTLINED_FUNCTION_7_37();
      if (*(&v565 + 1))
      {
        v89 = a1;
        OUTLINED_FUNCTION_1_53(v82, v83, v84, MEMORY[0x1E69E6370], v85, v86, v87, v88, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
        v90 = v4;
        if (swift_dynamicCast())
        {
          v91 = LOBYTE(v567[0]);
          goto LABEL_103;
        }
      }

      else
      {
        v89 = a1;
        v90 = v4;
        sub_192907DE8(&v564);
      }

      v91 = 0;
LABEL_103:
      v221 = a2;
      v256 = OUTLINED_FUNCTION_4_50();
      v258 = sub_192952700(v256, v257, v89);
      if (*(&v565 + 1))
      {
        OUTLINED_FUNCTION_1_53(v258, v259, v260, MEMORY[0x1E69E6370], v261, v262, v263, v264, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
        if (swift_dynamicCast())
        {
          v265 = LOBYTE(v567[0]);
          goto LABEL_108;
        }
      }

      else
      {
        sub_192907DE8(&v564);
      }

      v265 = 0;
LABEL_108:
      sub_192CC1770(0x6F6962632E6B636FLL, 0xE800000000000000, v89, &v564);
      if (!*(&v565 + 1))
      {
        goto LABEL_117;
      }

      v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE131E0, &unk_192FBEF80);
      OUTLINED_FUNCTION_1_53(v266, v267, v268, v269, v270, v271, v272, v273, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_209;
      }

      v274 = OUTLINED_FUNCTION_3_51();
      v276 = sub_192CC1770(v274 & 0xFFFFFFFFFFFFLL | 0x6962000000000000, v275 | 0xC, v89, &v564);
      if (!*(&v565 + 1))
      {
LABEL_117:
        sub_192907DE8(&v564);
        goto LABEL_209;
      }

      OUTLINED_FUNCTION_1_53(v276, v277, v278, v279, v280, v281, v282, v283, v522, v533, v544, v555, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_209;
      }

      v284 = sub_192CC1770(0x6F6962632E6B636FLL, 0xEE00746F6962702ELL, v89, &v564);
      if (*(&v565 + 1))
      {
        OUTLINED_FUNCTION_1_53(v284, v285, v286, MEMORY[0x1E69E6530], v287, v288, v289, v290, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_9_33();
          v291 = v222;
LABEL_246:
          v504 = OUTLINED_FUNCTION_6_42();
          v505 = sub_192CC1770(v504 | 0x6E67736F00000000, 0xEE00746F6962702ELL, v89, &v564);
          if (*(&v565 + 1))
          {
            OUTLINED_FUNCTION_1_53(v505, v506, v507, MEMORY[0x1E69E6530], v508, v509, v510, v511, v516, v527, v538, v549, v560, v561, v562, v563, v564, *(&v564 + 1), v565, *(&v565 + 1), v566, v567[0]);
            v213 = swift_dynamicCast();
            if (v213)
            {
              if ((v91 & v265) != 1)
              {
                goto LABEL_226;
              }

              OUTLINED_FUNCTION_9_33();
              if (v222)
              {
                v198 = v291;
              }

              else
              {
                v198 = 0;
              }

LABEL_227:
              v460 = OUTLINED_FUNCTION_18_24(v213, v214, v215, v216, v217, v218, v219, v220, v516, v527, v538, v549);
              *(v460 + 16) = xmmword_192FBCD90;
              *(&v565 + 1) = &type metadata for LocalAuthAction;
              LOBYTE(v564) = v221;
              v461 = AMSLogKey();
              if (v461)
              {
                v462 = v461;
                v463 = sub_192F967CC();
                v465 = v464;
              }

              else
              {
                v463 = 0;
                v465 = 0;
              }

              static LogInterpolation.prefix(_:_:)(&v564, v463, v465, (v460 + 32));

              __swift_destroy_boxed_opaque_existential_0(&v564);
              sub_19287AEE0();
              v569 = v466;
              v467._countAndFlagsBits = 0xD00000000000003BLL;
              v467._object = 0x8000000193022330;
              LogInterpolation.StringInterpolation.appendLiteral(_:)(v467);
              sub_192C7A6B4(v221);
              v568 = MEMORY[0x1E69E6158];
              v567[0] = v468;
              v567[1] = v469;
              v470 = sub_192878268(v567, &v560);
              OUTLINED_FUNCTION_28_19(v470, v471, v472, v473, v474, v475, v476, v477, v523, v534, v545, v556, v560, v561, v562, v563, v564, v565);
              LOBYTE(v566) = 0;
              v478 = v569;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_7_0();
                v478 = v512;
                v569 = v512;
              }

              v479 = v90;
              v480 = MEMORY[0x1E69E6370];
              v481 = *(v478 + 16);
              if (v481 >= *(v478 + 24) >> 1)
              {
                OUTLINED_FUNCTION_20_23();
                v478 = v513;
              }

              *(v478 + 16) = v481 + 1;
              OUTLINED_FUNCTION_15_25(v478 + 40 * v481, v524, v535, v546, v557, v560, v561, v562, v563, v564, v565, v566);
              v482._countAndFlagsBits = 0x746C75736572202CLL;
              v482._object = 0xEA0000000000203ALL;
              LogInterpolation.StringInterpolation.appendLiteral(_:)(v482);
              v568 = v480;
              LOBYTE(v567[0]) = v198 & 1;
              v483 = sub_192878268(v567, &v560);
              OUTLINED_FUNCTION_28_19(v483, v484, v485, v486, v487, v488, v489, v490, v525, v536, v547, v558, v560, v561, v562, v563, v564, v565);
              LOBYTE(v566) = 0;
              v491 = v569;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_7_0();
                v491 = v514;
                v569 = v514;
              }

              v492 = *(v491 + 16);
              if (v492 >= *(v491 + 24) >> 1)
              {
                OUTLINED_FUNCTION_20_23();
                v491 = v515;
              }

              *(v491 + 16) = v492 + 1;
              OUTLINED_FUNCTION_15_25(v491 + 40 * v492, v526, v537, v548, v559, v560, v561, v562, v563, v564, v565, v566);
              v493._countAndFlagsBits = 0;
              v493._object = 0xE000000000000000;
              LogInterpolation.StringInterpolation.appendLiteral(_:)(v493);
              *(v460 + 40) = v569;
              v494 = sub_192F96E7C();
              if (os_log_type_enabled(v479, v494))
              {
                v495 = objc_autoreleasePoolPush();
                if (qword_1ED6DF1A0 != -1)
                {
                  OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
                }

                OUTLINED_FUNCTION_72();
                v496 = OUTLINED_FUNCTION_19(&unk_1F06FCBC8);
                v497 = OUTLINED_FUNCTION_27_1(v496);
                *&v564 = v460;
                *(&v564 + 1) = sub_192BB97CC;
                *&v565 = v497;

                v498 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
                sub_1928FD924();
                OUTLINED_FUNCTION_8_38();
                sub_192F9674C();
                OUTLINED_FUNCTION_19_21();

                objc_autoreleasePoolPop(v495);
                v499 = objc_autoreleasePoolPush();
                v500 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
                v501 = OUTLINED_FUNCTION_90(v500);
                *(v501 + 16) = xmmword_192FBCD50;
                *(v501 + 56) = MEMORY[0x1E69E6158];
                *(v501 + 64) = sub_1928FDB30();
                *(v501 + 32) = &v569;
                *(v501 + 40) = v498;
                OUTLINED_FUNCTION_52();
                sub_192F9622C(v502);

                objc_autoreleasePoolPop(v499);
              }

              return v198 & 1;
            }
          }

          else
          {
            v213 = sub_192907DE8(&v564);
          }

          v198 = v91 & v265 & v291;
          goto LABEL_227;
        }
      }

      else
      {
        sub_192907DE8(&v564);
      }

      v291 = 1;
      goto LABEL_246;
  }
}

uint64_t sub_192CC1314(uint64_t a1, char a2)
{
  Constraints = SecAccessControlGetConstraints();
  if (Constraints)
  {
    v4 = Constraints;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v26[0] = 0;
      sub_192F9668C();
    }
  }

  if (qword_1EAE124B8 != -1)
  {
    OUTLINED_FUNCTION_10_29(&qword_1EAE124B8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_192FBCD90;
  v26[3] = &type metadata for LocalAuthAction;
  LOBYTE(v26[0]) = a2;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    v8 = sub_192F967CC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v12 = OUTLINED_FUNCTION_90(v11);
  *(v12 + 16) = xmmword_192FBCD50;
  sub_19286C588(v26, v25);
  sub_19286CFC8(v25, v8, v10, v12 + 32);
  *(v5 + 32) = v12;
  __swift_destroy_boxed_opaque_existential_0(v26);
  v13._object = 0x80000001930222C0;
  v13._countAndFlagsBits = 0xD000000000000022;
  LogInterpolation.init(stringLiteral:)(v13);
  v14 = sub_192F96E5C();
  if (OUTLINED_FUNCTION_8_25(v14))
  {
    v15 = MEMORY[0x1E69E6158];
    v16 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    v17 = OUTLINED_FUNCTION_19(&unk_1F06FCBA0);
    v18 = OUTLINED_FUNCTION_27_1(v17);
    v26[0] = v5;
    v26[1] = sub_1928FA5C4;
    v26[2] = v18;

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    sub_192F9674C();
    OUTLINED_FUNCTION_19_21();

    objc_autoreleasePoolPop(v16);
    v20 = objc_autoreleasePoolPush();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v22 = OUTLINED_FUNCTION_90(v21);
    *(v22 + 16) = xmmword_192FBCD50;
    *(v22 + 56) = v15;
    *(v22 + 64) = sub_1928FDB30();
    *(v22 + 32) = v26;
    *(v22 + 40) = v19;
    OUTLINED_FUNCTION_52();
    sub_192F9622C(v23);

    objc_autoreleasePoolPop(v20);
  }

  return 0;
}

unint64_t sub_192CC1618(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t sub_192CC1628@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_192CC1618(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_192CC1664(char a1)
{
  result = 0x44496863756F74;
  switch(a1)
  {
    case 1:
      result = 0x444965636166;
      break;
    case 2:
      result = 0x4449636974706FLL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x697463416C617564;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
    case 7:
    case 8:
      result = 0x6465646E65747865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_192CC1770@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v27[0] = 46;
  v27[1] = 0xE100000000000000;
  v26 = v27;

  v8 = sub_192CF9420(0x7FFFFFFFFFFFFFFFLL, 1, sub_1929250EC, v25, a1, a2);
  v9 = *(v8 + 16);
  if (v9)
  {
    v24 = a3;
    v27[0] = MEMORY[0x1E69E7CC0];
    result = sub_19290BCE0(0, v9, 0);
    v11 = 0;
    v12 = v27[0];
    v13 = (v8 + 56);
    while (v11 < *(v8 + 16))
    {
      v14 = *(v13 - 3);
      v15 = *(v13 - 2);
      v16 = *(v13 - 1);
      v17 = *v13;

      v18 = MEMORY[0x193B10C70](v14, v15, v16, v17);
      v20 = v19;

      v27[0] = v12;
      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_19290BCE0((v21 > 1), v22 + 1, 1);
        v12 = v27[0];
      }

      ++v11;
      *(v12 + 16) = v22 + 1;
      v23 = v12 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v13 += 4;
      if (v9 == v11)
      {

        a3 = v24;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_192CC191C(v12, a3, a4);
  }

  return result;
}

uint64_t sub_192CC191C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE131E0, &unk_192FBEF80);
  v18[0] = a2;
  v5 = *(a1 + 16);
  if (v5)
  {

    v6 = (a1 + 40);
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      sub_192878268(v18, &v16);
      if (*(&v17 + 1))
      {

        if (swift_dynamicCast())
        {
          v9 = v15;
          goto LABEL_8;
        }
      }

      else
      {

        sub_192907DE8(&v16);
      }

      v9 = sub_192F966CC();
LABEL_8:
      if (!*(v9 + 16))
      {

LABEL_12:

        v16 = 0u;
        v17 = 0u;
        goto LABEL_13;
      }

      v10 = sub_1929225DC(v7, v8);
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_12;
      }

      sub_19286C588(*(v9 + 56) + 32 * v10, &v16);

LABEL_13:
      sub_19286D180(&v16, v18);
      v6 += 2;
      if (!--v5)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_16:
  sub_192878268(v18, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131B0, &qword_192FBD860);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *a3 = 0u;
    a3[1] = 0u;
  }

  return sub_192907DE8(v18);
}

uint64_t getEnumTagSinglePayload for LocalAuthAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LocalAuthAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_192CC1CB0()
{
  result = qword_1EAE153C0;
  if (!qword_1EAE153C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE153C0);
  }

  return result;
}

uint64_t Log.init(subsystem:category:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = sub_19286D900(a1, a2, a3, a4);

  *a5 = v6;
  return result;
}

unint64_t LogCategory.init(rawValue:)(unint64_t result)
{
  if (result > 0x38)
  {
    return 0;
  }

  return result;
}

unint64_t sub_192CC1DCC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = LogCategory.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_192CC1E24()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0xD00000000000001FLL, 0x8000000193022700);
  qword_1EAE153C8 = result;
  return result;
}

id sub_192CC1E9C()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0xD000000000000010, 0x80000001930226E0);
  qword_1EAE153D0 = result;
  return result;
}

id sub_192CC1F14()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0x73746E756F636361, 0xEF6E6F6D6561642ELL);
  qword_1EAE118E0 = result;
  return result;
}

id sub_192CC1F6C()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0xD000000000000012, 0x80000001930226C0);
  qword_1EAE118C8 = result;
  return result;
}

id sub_192CC1FC0()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0x73746E756F636361, 0xEF74756F676F6C2ELL);
  qword_1EAE153D8 = result;
  return result;
}

id sub_192CC203C()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0xD000000000000012, 0x80000001930226A0);
  qword_1EAE153E0 = result;
  return result;
}

id sub_192CC20B4()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0xD00000000000001BLL, 0x8000000193022680);
  qword_1EAE153E8 = result;
  return result;
}

id sub_192CC212C()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0xD000000000000012, 0x8000000193022660);
  qword_1EAE153F0 = result;
  return result;
}

id sub_192CC21A4()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0xD00000000000001DLL, 0x8000000193022640);
  qword_1EAE153F8 = result;
  return result;
}

id sub_192CC221C()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0xD000000000000011, 0x8000000193022620);
  qword_1EAE15400 = result;
  return result;
}

id sub_192CC22B8()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0xD000000000000015, 0x80000001930225E0);
  qword_1EAE15408 = result;
  return result;
}

id sub_192CC2330()
{
  OUTLINED_FUNCTION_4_51();
  v0 = OUTLINED_FUNCTION_0_45();
  result = sub_19286D900(v0, v1, v2, 0xE600000000000000);
  qword_1EAE15410 = result;
  return result;
}

id sub_192CC2388()
{
  OUTLINED_FUNCTION_4_51();
  v0 = OUTLINED_FUNCTION_0_45();
  result = sub_19286D900(v0, v1, v2, v3);
  qword_1EAE118F8 = result;
  return result;
}

id sub_192CC23F0()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0xD000000000000011, 0x80000001930225C0);
  qword_1EAE15418 = result;
  return result;
}

id sub_192CC2468()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0xD000000000000014, 0x80000001930225A0);
  qword_1EAE15420 = result;
  return result;
}

id sub_192CC2504()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0x686361632E676162, 0xE900000000000065);
  qword_1EAE15428 = result;
  return result;
}

id sub_192CC2578()
{
  v0 = OUTLINED_FUNCTION_0_45();
  result = sub_19286D900(v0, v1, v2, 0xEA00000000007363);
  qword_1EAE15430 = result;
  return result;
}

id sub_192CC25E4()
{
  result = OUTLINED_FUNCTION_1_54("a");
  qword_1EAE11BD8 = result;
  return result;
}

id sub_192CC263C()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0x7669746341736164, 0xEB00000000797469);
  qword_1EAE11910 = result;
  return result;
}

id sub_192CC26B4()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0x7267696D61746164, 0xED00006E6F697461);
  qword_1EAE15438 = result;
  return result;
}

id sub_192CC2730()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0x6E654D6775626564, 0xE900000000000075);
  qword_1EAE15440 = result;
  return result;
}

id sub_192CC27A4()
{
  v0 = OUTLINED_FUNCTION_0_45();
  result = sub_19286D900(v0, v1, v2, v3);
  qword_1EAE15448 = result;
  return result;
}

id sub_192CC2814()
{
  v0 = OUTLINED_FUNCTION_0_45();
  result = sub_19286D900(v0, v1, v2, 0xEA0000000000746ELL);
  qword_1EAE12210 = result;
  return result;
}

id sub_192CC2880()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0x7075776F6C6C6F66, 0xE800000000000000);
  qword_1EAE15450 = result;
  return result;
}

id sub_192CC28F0()
{
  v0 = OUTLINED_FUNCTION_0_45();
  result = sub_19286D900(v0, v1, 1768190054, 0xE400000000000000);
  qword_1EAE15458 = result;
  return result;
}

id sub_192CC2974()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0x67676F6C2D726168, 0xEB00000000676E69);
  qword_1EAE15460 = result;
  return result;
}

id sub_192CC29EC()
{
  v0 = OUTLINED_FUNCTION_0_45();
  result = sub_19286D900(v0, v1, v2, 0xE800000000000000);
  qword_1EAE15468 = result;
  return result;
}

id sub_192CC2A54()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0x6E6974656B72616DLL, 0xED00006D65746967);
  qword_1EAE15470 = result;
  return result;
}

id sub_192CC2AD0()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0x616964656DLL, 0xE500000000000000);
  qword_1EAE15478 = result;
  return result;
}

id sub_192CC2B3C()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0x63612E616964656DLL, 0xE900000000000069);
  qword_1EAE15480 = result;
  return result;
}

id sub_192CC2BB0()
{
  v0 = OUTLINED_FUNCTION_0_45();
  result = sub_19286D900(v0, v1, v2, 0xE700000000000000);
  qword_1EAE12200 = result;
  return result;
}

id sub_192CC2C18()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0x6E6967617373656DLL, 0xEC00000069752D67);
  qword_1EAE15488 = result;
  return result;
}

id sub_192CC2C90()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0x7265766F2E736D61, 0xEC000000657A6973);
  qword_1EAE15490 = result;
  return result;
}

id sub_192CC2D08()
{
  v0 = OUTLINED_FUNCTION_0_45();
  result = sub_19286D900(v0, v1, v2, 0xE700000000000000);
  qword_1EAE15498 = result;
  return result;
}

id sub_192CC2D70()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0x6573696D6F7270, 0xE700000000000000);
  qword_1EAE154A0 = result;
  return result;
}

id sub_192CC2DE0()
{
  v0 = OUTLINED_FUNCTION_0_45();
  result = sub_19286D900(v0, v1, v2, 0xE800000000000000);
  qword_1EAE11D38 = result;
  return result;
}

id sub_192CC2E48()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0xD000000000000011, 0x8000000193022530);
  qword_1EAE154A8 = result;
  return result;
}

id sub_192CC2EC0()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0xD000000000000010, 0x8000000193022510);
  qword_1EAE154B0 = result;
  return result;
}

id sub_192CC2F38()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0x7073676E69746172, 0xEF72656469766F72);
  qword_1EAE154B8 = result;
  return result;
}

id sub_192CC2FB4()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0xD000000000000015, 0x80000001930224F0);
  qword_1EAE154C0 = result;
  return result;
}

id sub_192CC302C()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0x73776569766572, 0xE700000000000000);
  qword_1EAE154C8 = result;
  return result;
}

id sub_192CC309C()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0xD000000000000011, 0x80000001930224D0);
  qword_1EAE154D0 = result;
  return result;
}

id sub_192CC3138()
{
  v0 = OUTLINED_FUNCTION_0_45();
  result = sub_19286D900(v0, v1, v2, 0xE700000000000000);
  qword_1EAE154D8 = result;
  return result;
}

id sub_192CC31A0()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0x6E656D7461657274, 0xEA00000000007374);
  qword_1EAE154E0 = result;
  return result;
}

id sub_192CC3214()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0x73617461642D7374, 0xEB00000000636E79);
  qword_1EAE11928 = result;
  return result;
}

id sub_192CC328C()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0x64616F6C2D6C7275, 0xEB00000000676E69);
  qword_1EAE154E8 = result;
  return result;
}

id sub_192CC3304()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0xD000000000000010, 0x8000000193022490);
  qword_1EAE154F0 = result;
  return result;
}

id sub_192CC337C()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0x69752D626577, 0xE600000000000000);
  qword_1EAE154F8 = result;
  return result;
}

id sub_192CC33E8()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0x702E69752D626577, 0xEB00000000656761);
  qword_1EAE15500 = result;
  return result;
}

id sub_192CC3460()
{
  result = sub_19286D900(0xD00000000000001CLL, 0x80000001930177D0, 0x65722D6475617266, 0xEC00000074726F70);
  qword_1EAE15508 = result;
  return result;
}

id sub_192CC34D8()
{
  result = OUTLINED_FUNCTION_1_54("a");
  qword_1ED6DE1F8 = result;
  return result;
}

unint64_t sub_192CC3560()
{
  result = qword_1EAE15510;
  if (!qword_1EAE15510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15510);
  }

  return result;
}

id AMSLogBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AMSLogBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMSLogBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AMSLogBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMSLogBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LogInterpolation.ValueTreatment.hashValue.getter()
{
  v1 = *v0;
  sub_192F9789C();
  MEMORY[0x193B11C90](v1);
  return sub_192F978DC();
}

uint64_t sub_192CC374C@<X0>(uint64_t a2@<X8>)
{
  sub_192F9676C();
  sub_192CC48C0();
  v3 = sub_192F969BC();
  v5 = v4;
  swift_getObjectType();
  v8[0] = sub_192F979EC();
  v8[1] = v6;
  MEMORY[0x193B10CE0](7876666, 0xE300000000000000);
  MEMORY[0x193B10CE0](v3, v5);

  v8[3] = MEMORY[0x1E69E6158];
  swift_unknownObjectRelease();
  *a2 = 0u;
  *(a2 + 16) = 0u;
  result = sub_19286D180(v8, a2);
  *(a2 + 32) = 0;
  return result;
}

uint64_t static LogInterpolation.identity(_:)@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v4 = OUTLINED_FUNCTION_90(v3);
  *(v4 + 16) = xmmword_192FBCD50;
  swift_unknownObjectRetain();
  result = sub_192CC374C(v4 + 32);
  *a2 = v4;
  return result;
}

uint64_t static LogInterpolation.values(of:withRedaction:)(void *a1, int a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v4 = sub_192F9665C();
  OUTLINED_FUNCTION_4_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5_37(v9);
  v75 = sub_192F9651C();
  OUTLINED_FUNCTION_4_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5_37(v14);
  v79 = sub_192F9681C();
  OUTLINED_FUNCTION_4_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5_37(v19);
  v78 = sub_192F95A8C();
  OUTLINED_FUNCTION_4_0();
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v71 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v77 = (&v65 - v25);
  v26 = 0;
  v27 = a1 + 4;
  v28 = a1[2];
  v76 = v16 + 8;
  v73 = (v6 + 8);
  v72 = v11 + 8;
  v29 = a2;
  v70 = (v30 + 32);
  v31 = MEMORY[0x1E69E7CC0];
  v69 = v30 + 8;
  v82 = a2;
  v85 = v4;
LABEL_2:
  while (2)
  {
    if (v28 != v26)
    {
      if (v26 >= v28)
      {
        __break(1u);
      }

      else
      {
        v32 = v26 + 1;
        if (!__OFADD__(v26, 1))
        {
          v33 = v27[v26];
          v34 = *(v33 + 16);
          ++v26;
          if (!v34)
          {
            continue;
          }

          v67 = v28;
          v68 = v27;
          v26 = v32;
          v35 = v33 + 32;

          while (1)
          {
            sub_192CC4858(v35, v92);
            sub_192878268(v92, v91);
            if (v91[3])
            {
              sub_1928FA5CC(v91);
              if ((v29 & 1) == 0 || !v93)
              {
                sub_19286C588(&v88, v91);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_8_39();
                  v31 = v62;
                }

                v39 = *(v31 + 16);
                a1 = (v39 + 1);
                if (v39 >= *(v31 + 24) >> 1)
                {
                  OUTLINED_FUNCTION_7_38();
                  v31 = v63;
                }

                __swift_destroy_boxed_opaque_existential_0(&v88);
                sub_192CC4890(v92);
                *(v31 + 16) = a1;
                v40 = v91;
                goto LABEL_51;
              }

              __swift_destroy_boxed_opaque_existential_0(&v88);
            }

            else
            {
              sub_1928FC07C(v91, &unk_1EAE131B0, &qword_192FBD860);
            }

            sub_192878268(v92, &v88);
            if (v90)
            {
              sub_1928FA5CC(&v88);
              LOBYTE(v88) = 1;
              BYTE1(v88) = v93;
              sub_19286C588(v91, v89);
              switch(BYTE1(v88))
              {
                case 1:
                  __swift_destroy_boxed_opaque_existential_0(v91);
                  __swift_destroy_boxed_opaque_existential_0(v89);
                  a1 = 0xE90000000000005DLL;
                  v4 = 0x657461766972705BLL;
                  break;
                case 2:
                  sub_1928FA5CC(v89);
                  sub_19286C588(v87, v86);
                  sub_192F9682C();
                  sub_192F9680C();
                  v41 = sub_192F967DC();
                  v43 = v42;
                  v44 = v80;

                  v45 = OUTLINED_FUNCTION_4_52();
                  v46(v45, v79);
                  if (v43 >> 60 == 15)
                  {
                    v47 = 0;
                  }

                  else
                  {
                    v47 = v41;
                  }

                  v84 = v47;
                  if (v43 >> 60 == 15)
                  {
                    v43 = 0xC000000000000000;
                  }

                  v81 = sub_192CC4C58(&qword_1EAE15100, MEMORY[0x1E6966640], MEMORY[0x1E6966638]);
                  sub_192F964FC();
                  v83 = v43;
                  switch(v43 >> 62)
                  {
                    case 1uLL:
                      if (v84 >> 32 < v84)
                      {
                        goto LABEL_56;
                      }

                      v54 = v84;

                      if (!sub_192F955EC() || !__OFSUB__(v54, sub_192F9561C()))
                      {
                        goto LABEL_43;
                      }

                      goto LABEL_59;
                    case 2uLL:
                      v53 = *(v84 + 16);
                      v66 = *(v84 + 24);

                      if (sub_192F955EC() && __OFSUB__(v53, sub_192F9561C()))
                      {
                        goto LABEL_58;
                      }

                      if (__OFSUB__(v66, v53))
                      {
                        goto LABEL_57;
                      }

LABEL_43:
                      sub_192F9560C();
                      v44 = v80;
                      v4 = v85;
LABEL_44:
                      sub_192F964DC();
                      v49 = v84;
                      v50 = v43;
LABEL_45:
                      sub_19290CA6C(v49, v50);
                      v55 = v74;
                      sub_192F964EC();
                      (*v73)(v44, v4);
                      sub_192CC4C58(&qword_1EAE15520, MEMORY[0x1E6966420], MEMORY[0x1E6966438]);
                      a1 = v55;
                      v56 = v75;
                      sub_192F9771C();
                      OUTLINED_FUNCTION_11_35();
                      sub_19290CA6C(v84, v83);
                      v57 = OUTLINED_FUNCTION_4_52();
                      v58(v57, v56);
                      __swift_destroy_boxed_opaque_existential_0(v87);
                      __swift_destroy_boxed_opaque_existential_0(v91);
                      v29 = v82;
                      break;
                    case 3uLL:
                      memset(v86, 0, 14);
                      goto LABEL_44;
                    default:
                      v48 = v84;
                      v86[0] = v84;
                      LOWORD(v86[1]) = v43;
                      BYTE2(v86[1]) = BYTE2(v43);
                      BYTE3(v86[1]) = BYTE3(v43);
                      BYTE4(v86[1]) = BYTE4(v43);
                      BYTE5(v86[1]) = BYTE5(v43);
                      sub_192F964DC();
                      v49 = v48;
                      v50 = v83;
                      goto LABEL_45;
                  }

                  break;
                case 3:
                  goto LABEL_33;
                default:
                  a1 = v77;
                  v4 = v78;
                  if (swift_dynamicCast())
                  {
                    (*v70)(v71, a1, v4);
                    a1 = sub_192F9596C();
                    v36 = AMSLogableURL(a1);

                    sub_192F967CC();
                    OUTLINED_FUNCTION_11_35();

                    v37 = OUTLINED_FUNCTION_4_52();
                    v29 = v82;
                    v38(v37, v4);
LABEL_32:
                    __swift_destroy_boxed_opaque_existential_0(v91);
                    __swift_destroy_boxed_opaque_existential_0(v89);
                    break;
                  }

                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0, &unk_192FC6200);
                  if (swift_dynamicCast())
                  {
                    v51 = v87[0];
                    a1 = sub_192F958CC();
                    v52 = AMSLogableError(a1);

                    sub_192F967CC();
                    OUTLINED_FUNCTION_11_35();

                    v29 = v82;
                    goto LABEL_32;
                  }

LABEL_33:
                  sub_19286C588(v91, v87);
                  sub_192F9682C();
                  OUTLINED_FUNCTION_11_35();
                  __swift_destroy_boxed_opaque_existential_0(v91);
                  sub_1928FC07C(&v88, &qword_1EAE15518, &unk_192FCCBE0);
                  break;
              }
            }

            else
            {
              sub_1928FC07C(&v88, &unk_1EAE131B0, &qword_192FBD860);
              a1 = 0xE600000000000000;
              v4 = 0x296C6C756E28;
            }

            v90 = MEMORY[0x1E69E6158];
            v88 = v4;
            v89[0] = a1;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_8_39();
              v31 = v60;
            }

            v4 = v85;
            v59 = *(v31 + 16);
            a1 = (v59 + 1);
            if (v59 >= *(v31 + 24) >> 1)
            {
              OUTLINED_FUNCTION_7_38();
              v31 = v61;
            }

            sub_192CC4890(v92);
            *(v31 + 16) = a1;
            v40 = &v88;
LABEL_51:
            sub_1928FA5CC(v40);
            v35 += 40;
            if (!--v34)
            {

              v27 = v68;
              v28 = v67;
              goto LABEL_2;
            }
          }
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
    }

    return v31;
  }
}

__n128 LogInterpolation.StringInterpolation.appendInterpolation(identity:)(uint64_t a1)
{
  swift_unknownObjectRetain();
  sub_192F9676C();
  sub_192CC48C0();
  v2 = sub_192F969BC();
  v4 = v3;
  swift_getObjectType();
  *&v20 = sub_192F979EC();
  *(&v20 + 1) = v5;
  MEMORY[0x193B10CE0](7876666, 0xE300000000000000);
  MEMORY[0x193B10CE0](v2, v4);

  v19 = MEMORY[0x1E69E6158];
  v6 = swift_unknownObjectRelease();
  OUTLINED_FUNCTION_12_26(v6, v7, v8, v9, v10, v11, v12, v13, v20, *(&v20 + 1), v18, v19, v20, v22);
  sub_1928F9D40();
  v14 = *(*v1 + 16);
  sub_1928F9D58(v14);
  v15 = *v1;
  *(v15 + 16) = v14 + 1;
  v16 = v15 + 40 * v14;
  result = v21;
  *(v16 + 64) = 0;
  *(v16 + 32) = v21;
  *(v16 + 48) = v23;
  *v1 = v15;
  return result;
}

uint64_t LogInterpolation.description.getter()
{
  if (qword_1ED6DF1A0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
  }

  v0 = byte_1ED6DE5D8;
  *(swift_allocObject() + 16) = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15528, &qword_192FCCBF0);
  sub_192CC4914();
  OUTLINED_FUNCTION_10_30();
  v1 = sub_192F9674C();

  return v1;
}

void sub_192CC45E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v17 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v15 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v16 = v17;
      goto LABEL_9;
    case 2uLL:
      v14 = *(a1 + 24);
      v15 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v16 = v14;
LABEL_9:
      sub_192CC4778(a1, v16, v15, a3, a4, a5, a6, a7);
      if (v7)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      a1 = 0;
      v13 = 0;
      goto LABEL_5;
    default:
      v13 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_192CC46A4(a1, v13, a3, a4, a5, a6, a7);
      if (v7)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

uint64_t sub_192CC46A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  a4(0);
  sub_192CC4C58(a5, a6, a7);
  return sub_192F964DC();
}

uint64_t sub_192CC4778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  result = sub_192F955EC();
  if (!result || (result = sub_192F9561C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_192F9560C();
      a5(0);
      sub_192CC4C58(a6, a7, a8);
      return sub_192F964DC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_192CC48C0()
{
  result = qword_1EAE11B70;
  if (!qword_1EAE11B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11B70);
  }

  return result;
}

unint64_t sub_192CC4914()
{
  result = qword_1ED6DF178;
  if (!qword_1ED6DF178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE15528, &qword_192FCCBF0);
    sub_1928FDA98(&qword_1ED6DF188, &qword_1EAE15530, &qword_192FCCBF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6DF178);
  }

  return result;
}

unint64_t sub_192CC49B4()
{
  result = qword_1EAE15538;
  if (!qword_1EAE15538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15538);
  }

  return result;
}

unint64_t sub_192CC4A18()
{
  result = qword_1EAE15540;
  if (!qword_1EAE15540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15540);
  }

  return result;
}

unint64_t sub_192CC4A70()
{
  result = qword_1EAE15548;
  if (!qword_1EAE15548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15548);
  }

  return result;
}

unint64_t sub_192CC4AC8()
{
  result = qword_1EAE15550;
  if (!qword_1EAE15550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15550);
  }

  return result;
}

unint64_t sub_192CC4B20()
{
  result = qword_1EAE15558;
  if (!qword_1EAE15558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15558);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LogInterpolation.ValueTreatment(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_192CC4C58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static AMSMediaArtwork.url(URLTemplate:size:cropStyle:format:quality:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  if (a2)
  {
    if (a6)
    {
      v12 = a5;
    }

    else
    {
      v12 = 6778986;
    }

    if (a6)
    {
      v13 = a6;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    if (a4)
    {
      v14 = a3;
    }

    else
    {
      v14 = 25186;
    }

    if (a4)
    {
      v15 = a4;
    }

    else
    {
      v15 = 0xE200000000000000;
    }

    if (a8)
    {
      v16 = a7;
    }

    else
    {
      v16 = 12343;
    }

    if (a8)
    {
      v17 = a8;
    }

    else
    {
      v17 = 0xE200000000000000;
    }

    if ((*&a11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (a11 <= -1.0)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if (a11 >= 1.84467441e19)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v35 = v15;

      result = sub_192F9771C();
      if ((*&a10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (a10 <= -1.0)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (a10 >= 1.84467441e19)
      {
LABEL_46:
        __break(1u);
        return result;
      }

      v20 = result;
      v21 = v19;
      v22 = sub_192F9771C();
      v34 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12F38, &unk_192FC2590);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_192FBED40;
      *(inited + 32) = 8217467;
      *(inited + 40) = 0xE300000000000000;
      *(inited + 48) = v14;
      *(inited + 56) = v35;
      *(inited + 64) = 8218235;
      *(inited + 72) = 0xE300000000000000;
      *(inited + 80) = v12;
      *(inited + 88) = v13;
      *(inited + 96) = 8218747;
      *(inited + 104) = 0xE300000000000000;
      *(inited + 112) = v20;
      *(inited + 120) = v21;
      *(inited + 128) = 8221051;
      *(inited + 136) = 0xE300000000000000;
      *(inited + 144) = v16;
      *(inited + 152) = v17;
      *(inited + 160) = 8222587;
      *(inited + 168) = 0xE300000000000000;
      *(inited + 176) = v22;
      *(inited + 184) = v34;
      v25 = sub_192F966CC();
      v26 = v25 + 64;
      v27 = 1 << *(v25 + 32);
      v28 = -1;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      v29 = v28 & *(v25 + 64);
      v30 = (v27 + 63) >> 6;

      v31 = 0;
      if (v29)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v32 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v32 >= v30)
        {

          sub_192F95A3C();
        }

        v29 = *(v26 + 8 * v32);
        ++v31;
        if (v29)
        {
          v31 = v32;
          do
          {
LABEL_34:
            v29 &= v29 - 1;
            sub_192873B04();

            sub_192F970FC();
          }

          while (v29);
          continue;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_42;
  }

  v33 = sub_192F95A8C();

  return __swift_storeEnumTagSinglePayload(a9, 1, 1, v33);
}

id MescalFairplaySession.__allocating_init(mescalType:cachedCertificateProvider:certificateCacher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_allocWithZone(v5);
  v10 = OUTLINED_FUNCTION_13_2();
  return MescalFairplaySession.init(mescalType:cachedCertificateProvider:certificateCacher:)(v10, v11, a3, a4, a5);
}

void sub_192CC5438(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_192F95B5C();
  }

  v7 = v6;
  (*(a3 + 16))(a3, a4);
}

uint64_t sub_192CC54B4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (v0)
  {
    v7 = *(v3 + 48);
    v8 = sub_192CC5784;
  }

  else
  {
    v9 = *(v3 + 48);

    v8 = sub_192CC55CC;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

void sub_192CC55CC()
{
  if (*(v0[6] + 176) == 1)
  {
    OUTLINED_FUNCTION_3();
    sub_192907D90(v0[13], v0[14]);
    swift_task_alloc();
    OUTLINED_FUNCTION_42_0();
    v0[23] = v2;
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_5_38(v2);

    sub_192907D5C(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_192CC5670()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CC5784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_178();

  OUTLINED_FUNCTION_22_22();

  swift_unknownObjectRelease();

  v13 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v13, v14);
  v15 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v15, v16);
  v17 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v17, v18);

  v19 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v19, v20);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_183();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_192CC584C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_178();
  OUTLINED_FUNCTION_22_22();

  swift_unknownObjectRelease();

  v13 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v13, v14);
  v15 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v15, v16);
  v17 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v17, v18);

  v19 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v19, v20);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_183();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_192CC5904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_178();
  OUTLINED_FUNCTION_22_22();

  swift_unknownObjectRelease();

  v13 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v13, v14);
  v15 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v15, v16);
  v17 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v17, v18);

  v19 = OUTLINED_FUNCTION_13_2();
  sub_19290CA6C(v19, v20);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_183();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_192CC59BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v13;
  v8[14] = v14;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  v10 = swift_task_alloc();
  v8[15] = v10;
  *(v10 + 16) = v13;
  *(v10 + 24) = v14;
  sub_192907D90(v13, v14);

  return MEMORY[0x1EEE6DFA0](sub_192CC5A60, a2, 0);
}

uint64_t sub_192CC5A60()
{
  OUTLINED_FUNCTION_47_0();
  v5 = OUTLINED_FUNCTION_83_6();
  v2[16] = v5;
  *(v5 + 16) = v0;
  *(v5 + 24) = v1;
  v6 = OUTLINED_FUNCTION_88();
  sub_192907D90(v6, v7);
  v8 = OUTLINED_FUNCTION_88();
  sub_192907D90(v8, v9);

  v10 = v4;
  swift_unknownObjectRetain();

  OUTLINED_FUNCTION_63_9(v3 + 184);
  v11 = v2[6];
  if (*(*(v3 + 184) + 24) || (*(v11 + 176) & 1) != 0)
  {
    v12 = *(v11 + 168);
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }

    else
    {
      *(v11 + 168) = v12 + 1;
      v13 = swift_task_alloc();
      v14 = OUTLINED_FUNCTION_106_4(v13);
      v2[20] = v14;
      *(v14 + 16) = v11;
      *(v14 + 24) = v12;
      OUTLINED_FUNCTION_10_31(&qword_1EAE123D0, &qword_1EAE143E0, &qword_192FCCEB0);
      v15 = swift_task_alloc();
      v2[21] = v15;
      *v15 = v2;
      v15[1] = sub_192CC5D68;
      OUTLINED_FUNCTION_13_24();
    }

    return MEMORY[0x1EEE6DE18]();
  }

  else
  {
    v16 = v2[13];
    v17 = v2[14];
    *(v11 + 176) = 1;
    sub_192907D90(v16, v17);
    swift_task_alloc();
    OUTLINED_FUNCTION_42_0();
    v2[17] = v18;
    *v18 = v19;
    OUTLINED_FUNCTION_5_38(v18);
    OUTLINED_FUNCTION_100_6();

    return sub_192CC8884(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_192CC5C54()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 144) = v0;

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CC5D68()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (v0)
  {
    v7 = *(v3 + 48);
    v8 = sub_192CCB9C4;
  }

  else
  {
    v9 = *(v3 + 48);

    v8 = sub_192CC5E80;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

void sub_192CC5E80()
{
  if (*(v0[6] + 176) == 1)
  {
    OUTLINED_FUNCTION_3();
    sub_192907D90(v0[13], v0[14]);
    swift_task_alloc();
    OUTLINED_FUNCTION_42_0();
    v0[23] = v2;
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_5_38(v2);

    sub_192CC8884(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_192CC5F24()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CC6038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = v15;
  v8[20] = v16;
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a3;
  v8[14] = a4;
  v8[11] = a1;
  v8[12] = a2;
  v11 = swift_task_alloc();
  v8[21] = v11;
  v11[2] = a8;
  v11[3] = v15;
  v11[4] = v16;
  sub_192907D90(a8, v15);
  v12 = v16;

  return MEMORY[0x1EEE6DFA0](sub_192CC60EC, a1, 0);
}

uint64_t sub_192CC60EC()
{
  OUTLINED_FUNCTION_47_0();
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[11];
  v6 = swift_task_alloc();
  v0[22] = v6;
  v6[2] = v3;
  v6[3] = v1;
  v6[4] = v2;
  v7 = OUTLINED_FUNCTION_91();
  sub_192907D90(v7, v8);
  v9 = v2;
  v10 = OUTLINED_FUNCTION_91();
  sub_192907D90(v10, v11);
  v12 = v9;

  v13 = v4;
  swift_unknownObjectRetain();

  OUTLINED_FUNCTION_63_9(v5 + 184);
  v14 = *(*(v5 + 184) + 24);
  v15 = v0[11];
  if (v14 || (*(v15 + 176) & 1) != 0)
  {
    v16 = *(v15 + 168);
    if (__OFADD__(v16, 1))
    {
      __break(1u);
    }

    else
    {
      *(v15 + 168) = v16 + 1;
      v17 = swift_task_alloc();
      v0[25] = v17;
      *(v17 + 16) = v15;
      *(v17 + 24) = v16;
      v18 = swift_task_alloc();
      v0[26] = v18;
      *(v18 + 16) = v15;
      *(v18 + 24) = v16;
      OUTLINED_FUNCTION_10_31(&qword_1EAE123D0, &qword_1EAE143E0, &qword_192FCCEB0);
      v19 = swift_task_alloc();
      v0[27] = v19;
      *v19 = v0;
      v19[1] = sub_192CC6468;
      OUTLINED_FUNCTION_13_24();
    }

    return MEMORY[0x1EEE6DE18]();
  }

  else
  {
    v20 = v0[19];
    v21 = v0[20];
    v22 = v0[18];
    *(v15 + 176) = 1;
    sub_192907D90(v22, v20);
    v23 = v21;
    v24 = swift_task_alloc();
    v0[23] = v24;
    *v24 = v0;
    v24[1] = sub_192CC634C;
    v25 = OUTLINED_FUNCTION_51(v0[11]);

    return sub_192CC942C(v25, v26, v27, v28, v29, v30, v31, v32);
  }
}

uint64_t sub_192CC634C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  *(v2 + 56) = v0;
  *(v2 + 48) = v4;
  *(v2 + 40) = v1;
  OUTLINED_FUNCTION_29_2();
  *v5 = *v1;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192CC6468()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (v0)
  {
    v7 = *(v3 + 88);
    v8 = sub_192CC6768;
  }

  else
  {
    v9 = *(v3 + 88);

    v8 = sub_192CC6580;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

void sub_192CC6580()
{
  if (*(v0[11] + 176) == 1)
  {
    OUTLINED_FUNCTION_3();
    v2 = v0[20];
    sub_192907D90(v0[18], v0[19]);
    v3 = v2;
    v4 = swift_task_alloc();
    v0[29] = v4;
    *v4 = v0;
    v4[1] = sub_192CC664C;
    v5 = OUTLINED_FUNCTION_51(v0[11]);

    sub_192CC942C(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_192CC664C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  *(v2 + 80) = v0;
  *(v2 + 72) = v4;
  *(v2 + 64) = v1;
  OUTLINED_FUNCTION_29_2();
  *v5 = *v1;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192CC6768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_120();
  v16 = *(v15 + 200);

  OUTLINED_FUNCTION_15_26();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_94();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_192CC6834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_120();
  HIDWORD(a11) = *(v14 + 72);
  v26 = *(v14 + 168);
  v15 = *(v14 + 160);
  v16 = *(v14 + 136);
  OUTLINED_FUNCTION_26_20();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_94();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26, a11, a12, a13, a14);
}

uint64_t sub_192CC6904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_15_26();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_94();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_192CC69C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_120();
  HIDWORD(a11) = *(v14 + 48);
  v26 = *(v14 + 168);
  v15 = *(v14 + 160);
  v16 = *(v14 + 136);
  OUTLINED_FUNCTION_26_20();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_94();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26, a11, a12, a13, a14);
}

uint64_t sub_192CC6A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_15_26();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_58_9();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_94();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t MescalFairplaySession.primeSignature(forData:bag:logKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_192CC6B68()
{
  OUTLINED_FUNCTION_47_0();
  v1 = type metadata accessor for SendableBag();
  ObjectType = swift_getObjectType();
  v3 = swift_unknownObjectRetain();
  *(v0 + 80) = sub_192908290(v3, v1, ObjectType);
  v4 = OUTLINED_FUNCTION_13_2();
  sub_192907D90(v4, v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  *(v0 + 88) = v6;
  *v6 = v7;
  v6[1] = sub_192CC6C8C;
  OUTLINED_FUNCTION_100_6();

  return sub_192CC59BC(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_192CC6C8C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    v7 = sub_192CC6D90;
  }

  else
  {

    v7 = sub_192954F5C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_192CC6D90()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_192CC6E94(void *a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a2;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v10 = a1;
  swift_unknownObjectRetain();
  v11 = a3;
  a5;
  v12 = sub_192F95B7C();
  v14 = v13;

  v5[5] = v12;
  v5[6] = v14;
  v15 = sub_192F967CC();
  v17 = v16;

  v5[7] = v17;
  v18 = swift_task_alloc();
  v5[8] = v18;
  *v18 = v5;
  v18[1] = sub_192CC6FC0;

  return MescalFairplaySession.primeSignature(forData:bag:logKey:)(v12, v14, a2, v15, v17);
}

uint64_t sub_192CC6FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_178();
  OUTLINED_FUNCTION_2_44();
  OUTLINED_FUNCTION_6();
  *v15 = v14;
  v16 = v14[3];
  *v15 = *v13;

  swift_unknownObjectRelease();

  sub_19290CA6C(v14[5], v14[6]);
  if (v12)
  {
    v17 = sub_192F958CC();

    v18 = v17;
  }

  else
  {
    OUTLINED_FUNCTION_7_35();
    v19 = sub_192F95B5C();
    v20 = OUTLINED_FUNCTION_7_35();
    sub_19290CA6C(v20, v21);
    v18 = v19;
  }

  v22 = OUTLINED_FUNCTION_64_6();
  v23(v22);

  _Block_release(v14);
  OUTLINED_FUNCTION_183();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t MescalFairplaySession.verifyData(_:signature:bag:logKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_192CC719C()
{
  OUTLINED_FUNCTION_47_0();
  v1 = v0[7];
  v2 = v0[2];
  v3 = type metadata accessor for SendableBag();
  ObjectType = swift_getObjectType();
  v5 = v2;
  v6 = swift_unknownObjectRetain();
  v0[9] = sub_192908290(v6, v3, ObjectType);
  v7 = v5;
  v8 = OUTLINED_FUNCTION_13_2();
  sub_192907D90(v8, v9);
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_192CC72D0;
  v11 = OUTLINED_FUNCTION_30_3();

  return sub_192CC6038(v11, v12, 0xD000000000000011, v13, v14, v1, v15, v16);
}

uint64_t sub_192CC72D0()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 88) = v0;

  if (!v0)
  {

    *(v5 + 96) = v3 & 1;
  }

  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192CC73E4()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_40();
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_192CC7444()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_40();

  return v2(0);
}

uint64_t sub_192CC7564(void *a1, void *a2, uint64_t a3, void *a4, void *aBlock, void *a6)
{
  v6[3] = a3;
  v6[4] = a6;
  v6[2] = a1;
  v6[5] = _Block_copy(aBlock);
  v12 = a1;
  v13 = a2;
  swift_unknownObjectRetain();
  v14 = a4;
  a6;
  v15 = sub_192F95B7C();
  v17 = v16;

  v6[6] = v15;
  v6[7] = v17;
  v18 = sub_192F967CC();
  v20 = v19;

  v6[8] = v20;
  v21 = swift_task_alloc();
  v6[9] = v21;
  *v21 = v6;
  v21[1] = sub_192CC76A4;

  return MescalFairplaySession.verifyData(_:signature:bag:logKey:)(v12, v15, v17, a3, v18, v20);
}

uint64_t sub_192CC76A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_178();
  OUTLINED_FUNCTION_98_3();
  OUTLINED_FUNCTION_6();
  *v15 = v14;
  v16 = *(v14 + 32);
  v17 = *(v14 + 16);
  *v15 = *v13;

  swift_unknownObjectRelease();

  sub_19290CA6C(*(v14 + 48), *(v14 + 56));
  if (v12)
  {
    v18 = sub_192F958CC();

    v19 = OUTLINED_FUNCTION_75_7();
    v20(v19);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_76_7();
    v22(v21);
  }

  _Block_release(*(v14 + 40));
  OUTLINED_FUNCTION_183();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t MescalFairplaySession.verifyPrimeSignature(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_192CC7888()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR___AMSMescalFairplaySession_queue);
  *(v0 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_192CC78B4, v1, 0);
}

uint64_t sub_192CC78B4()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[4];

  v2 = v1;
  v3 = OUTLINED_FUNCTION_88();
  sub_192907D90(v3, v4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_192CC797C;
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return sub_192C4C4A8(v6, v6, v7, v8, v9);
}

uint64_t sub_192CC797C()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  OUTLINED_FUNCTION_40();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_192CC7A70()
{
  OUTLINED_FUNCTION_3();
  v0[11] = v2;
  v0[12] = v3;
  v0[9] = v1;
  v0[10] = v4;
  v0[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_192CC7B00, v1, 0);
}

uint64_t sub_192CC7B00()
{
  OUTLINED_FUNCTION_178();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_63_9(v1 + 120);
  v2 = *(v1 + 128);
  if (v2)
  {
    v3 = v2;
    OUTLINED_FUNCTION_91();
    v4 = sub_192F95B5C();
    *(v0 + 40) = 0;
    v5 = OUTLINED_FUNCTION_99_4();
    v7 = [v5 v6];

    v8 = *(v0 + 40);
    if (v8)
    {
      swift_willThrow();
      v8;

      OUTLINED_FUNCTION_43();
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_1ED6DF160 != -1)
    {
      OUTLINED_FUNCTION_1_2(&qword_1ED6DF160);
    }

    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = qword_1ED6DF140;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_53_11(v13, xmmword_192FBCD90);
    sub_192CC7DE4(v11, v14);
    v15._object = 0x8000000193022A10;
    v15._countAndFlagsBits = 0xD000000000000045;
    LogInterpolation.init(stringLiteral:)(v15);
    sub_192F96E5C();
    OUTLINED_FUNCTION_165();
    if (os_log_type_enabled(v12, v16))
    {
      v17 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v18 = swift_allocObject();
      *(v18 + 16) = v10;
      *(v0 + 40) = v13;
      *(v0 + 48) = sub_1928FA5C4;
      *(v0 + 56) = v18;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      v19 = sub_1928FD924();
      OUTLINED_FUNCTION_106(v19, v20, v21, v19);
      OUTLINED_FUNCTION_30_0();

      objc_autoreleasePoolPop(v17);
      v22 = objc_autoreleasePoolPush();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v24 = OUTLINED_FUNCTION_90(v23);
      *(v24 + 16) = xmmword_192FBCD50;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      v25 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v25);
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_29_12(v26, v27, v28, v29);

      objc_autoreleasePoolPop(v22);
    }

    v7 = 0;
  }

  **(v0 + 64) = v7;
  OUTLINED_FUNCTION_43();
LABEL_13:

  return v9();
}

uint64_t sub_192CC7DE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11[3] = swift_getObjectType();
  v11[0] = v2;
  swift_beginAccess();
  v6 = *(a1 + 152);
  v5 = *(a1 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_192FBCD50;
  sub_19286C588(v11, v10);

  v8 = v2;
  sub_19286CFC8(v10, v6, v5, v7 + 32);
  *a2 = v7;
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_192CC7F38(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = sub_192F95B7C();
  v9 = v8;

  v3[4] = v7;
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_192CC8014;

  return MescalFairplaySession.verifyPrimeSignature(_:)(v7, v9);
}

uint64_t sub_192CC8014()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_98_3();
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v4 = *(v2 + 16);
  v5 = *v1;
  *v3 = *v1;

  sub_19290CA6C(*(v2 + 32), *(v2 + 40));
  if (v0)
  {
    v6 = sub_192F958CC();

    v7 = OUTLINED_FUNCTION_75_7();
    v8(v7);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_76_7();
    v10(v9);
  }

  _Block_release(*(v2 + 24));
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_192CC8474()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_0();
  *v5 = v4;
  *(v7 + 368) = v6;
  *(v7 + 376) = v0;

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_192CC8588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_178();
  v15 = *(v13 + 376);
  OUTLINED_FUNCTION_94_3();
  sub_1929530C8(v16, &selRef_signData_error_, v17);
  if (v15)
  {
    v18 = *(v13 + 344);
    OUTLINED_FUNCTION_93_5();
    OUTLINED_FUNCTION_45_11();
    v19 = swift_allocObject();
    OUTLINED_FUNCTION_53_11(v19, xmmword_192FBED20);
    sub_192CC7DE4(v14, v20);
    OUTLINED_FUNCTION_79_7();
    static LogInterpolation.safe(_:)(v12, &v19[2].n128_i64[1]);
    sub_192907DE8(v12);
    OUTLINED_FUNCTION_9_34();
    v21._countAndFlagsBits = 0xD00000000000003ALL;
    LogInterpolation.init(stringLiteral:)(v21);
    v22 = sub_192F958CC();
    v23 = AMSLogableError(v22);

    v24 = sub_192F967CC();
    OUTLINED_FUNCTION_69_9();
    sub_192907DE8(v23);
    sub_192F96E5C();
    OUTLINED_FUNCTION_165();
    if (os_log_type_enabled(v18, v25))
    {
      v26 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v27 = swift_allocObject();
      *(v27 + 16) = v24;
      OUTLINED_FUNCTION_92_3(v27);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      v29 = sub_1928FD924();
      OUTLINED_FUNCTION_86_3(v29);
      OUTLINED_FUNCTION_21_5();

      objc_autoreleasePoolPop(v26);
      v30 = objc_autoreleasePoolPush();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v32 = OUTLINED_FUNCTION_90(v31);
      v32[4].n128_u64[0] = OUTLINED_FUNCTION_78_9(v32, xmmword_192FBCD50);
      v32[2].n128_u64[0] = v24;
      v32[2].n128_u64[1] = v28;
      OUTLINED_FUNCTION_60();
      sub_192F9622C(v33);

      objc_autoreleasePoolPop(v30);
    }

    v34 = *(v13 + 368);
    v35 = *(v13 + 336);

    swift_willThrow();

    OUTLINED_FUNCTION_108_3();
    OUTLINED_FUNCTION_77_9();
    OUTLINED_FUNCTION_43();
  }

  else
  {
    v36 = *(v13 + 336);

    v37 = OUTLINED_FUNCTION_88();
    sub_19290CA6C(v37, v38);
    OUTLINED_FUNCTION_43();
  }

  OUTLINED_FUNCTION_183();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t sub_192CC880C()
{
  OUTLINED_FUNCTION_5();

  v1 = OUTLINED_FUNCTION_91();
  sub_19290CA6C(v1, v2);
  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_192CC8884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[37] = v10;
  v8[38] = v11;
  v8[35] = a7;
  v8[36] = a8;
  v8[33] = a5;
  v8[34] = a6;
  v8[31] = a3;
  v8[32] = a4;
  v8[29] = a1;
  v8[30] = a2;
  return MEMORY[0x1EEE6DFA0](sub_192CC88B8, a2, 0);
}

uint64_t sub_192CC88B8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_84_3();

  v1 = swift_task_alloc();
  *(v0 + 312) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_4_53(v1);

  return sub_192908C2C(v2, v3);
}

uint64_t sub_192CC895C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_0();
  *v5 = v4;
  *(v7 + 320) = v6;
  *(v7 + 328) = v0;

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_192CC8A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_178();
  v15 = *(v12 + 328);
  OUTLINED_FUNCTION_94_3();
  sub_1929530C8(v16, &selRef_primingSignatureForData_error_, v17);
  v18 = *(v12 + 320);
  if (v15)
  {

    *(v12 + 216) = v15;
    v19 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0, &unk_192FC6200);
    OUTLINED_FUNCTION_65_7();
    v20 = sub_1929333B4();
    if (OUTLINED_FUNCTION_85_5(v20))
    {
      if (OUTLINED_FUNCTION_104_2())
      {

        if (qword_1ED6DF160 != -1)
        {
          OUTLINED_FUNCTION_1_2(&qword_1ED6DF160);
        }

        v22 = *(v12 + 280);
        v21 = *(v12 + 288);
        OUTLINED_FUNCTION_93_5();
        v23 = qword_1ED6DF140;
        *(v12 + 344) = qword_1ED6DF140;
        *(v12 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
        OUTLINED_FUNCTION_45_11();
        v24 = swift_allocObject();
        OUTLINED_FUNCTION_53_11(v24, xmmword_192FBED20);
        sub_192CC7DE4(v14, v25);
        v26 = MEMORY[0x1E69E6158];
        *(v12 + 40) = MEMORY[0x1E69E6158];
        *(v12 + 16) = v22;
        *(v12 + 24) = v21;

        static LogInterpolation.safe(_:)(v12 + 16, &v24[2].n128_i64[1]);
        sub_192907DE8(v12 + 16);
        OUTLINED_FUNCTION_9_34();
        OUTLINED_FUNCTION_82_5(v27, v28);
        v29 = v13;
        v30 = sub_192F958CC();

        v31 = AMSLogableError(v30);
        sub_192F967CC();

        OUTLINED_FUNCTION_103_5();
        sub_192907DE8(v12 + 48);
        sub_192F96E5C();
        OUTLINED_FUNCTION_165();
        if (os_log_type_enabled(v23, v32))
        {
          v33 = objc_autoreleasePoolPush();
          if (qword_1ED6DF1A0 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
          }

          OUTLINED_FUNCTION_72();
          OUTLINED_FUNCTION_71();
          v34 = swift_allocObject();
          *(v34 + 16) = v31;
          OUTLINED_FUNCTION_40_0(v34);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
          v35 = sub_1928FD924();
          OUTLINED_FUNCTION_106(v35, v36, v37, v35);
          OUTLINED_FUNCTION_30_0();

          objc_autoreleasePoolPop(v33);
          v38 = objc_autoreleasePoolPush();
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
          v40 = OUTLINED_FUNCTION_90(v39);
          *(v40 + 16) = xmmword_192FBCD50;
          *(v40 + 56) = v26;
          v41 = sub_1928FDB30();
          OUTLINED_FUNCTION_137(v41);
          OUTLINED_FUNCTION_60();
          OUTLINED_FUNCTION_29_12(v42, v43, v44, v45);

          objc_autoreleasePoolPop(v38);
        }

        OUTLINED_FUNCTION_109_2();
        OUTLINED_FUNCTION_89_5();
        v46 = swift_task_alloc();
        v47 = OUTLINED_FUNCTION_95_3(v46);
        *v47 = v48;
        OUTLINED_FUNCTION_4_53(v47);
        OUTLINED_FUNCTION_31();

        return sub_192908C2C(v49, v50);
      }
    }

    v55 = OUTLINED_FUNCTION_88();
    sub_19290CA6C(v55, v56);
    OUTLINED_FUNCTION_43();
  }

  else
  {

    v53 = OUTLINED_FUNCTION_88();
    sub_19290CA6C(v53, v54);
    OUTLINED_FUNCTION_43();
  }

  OUTLINED_FUNCTION_31();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12);
}

uint64_t sub_192CC9094()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_0();
  *v5 = v4;
  *(v7 + 368) = v6;
  *(v7 + 376) = v0;

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_192CC91A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_178();
  v15 = *(v13 + 376);
  OUTLINED_FUNCTION_94_3();
  sub_1929530C8(v16, &selRef_primingSignatureForData_error_, v17);
  if (v15)
  {
    v18 = *(v13 + 344);
    OUTLINED_FUNCTION_93_5();
    OUTLINED_FUNCTION_45_11();
    v19 = swift_allocObject();
    OUTLINED_FUNCTION_53_11(v19, xmmword_192FBED20);
    sub_192CC7DE4(v14, v20);
    OUTLINED_FUNCTION_79_7();
    static LogInterpolation.safe(_:)(v12, &v19[2].n128_i64[1]);
    sub_192907DE8(v12);
    OUTLINED_FUNCTION_9_34();
    v21._countAndFlagsBits = 0xD00000000000003ALL;
    LogInterpolation.init(stringLiteral:)(v21);
    v22 = sub_192F958CC();
    v23 = AMSLogableError(v22);

    v24 = sub_192F967CC();
    OUTLINED_FUNCTION_69_9();
    sub_192907DE8(v23);
    sub_192F96E5C();
    OUTLINED_FUNCTION_165();
    if (os_log_type_enabled(v18, v25))
    {
      v26 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v27 = swift_allocObject();
      *(v27 + 16) = v24;
      OUTLINED_FUNCTION_92_3(v27);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      v29 = sub_1928FD924();
      OUTLINED_FUNCTION_86_3(v29);
      OUTLINED_FUNCTION_21_5();

      objc_autoreleasePoolPop(v26);
      v30 = objc_autoreleasePoolPush();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v32 = OUTLINED_FUNCTION_90(v31);
      v32[4].n128_u64[0] = OUTLINED_FUNCTION_78_9(v32, xmmword_192FBCD50);
      v32[2].n128_u64[0] = v24;
      v32[2].n128_u64[1] = v28;
      OUTLINED_FUNCTION_60();
      sub_192F9622C(v33);

      objc_autoreleasePoolPop(v30);
    }

    v34 = *(v13 + 368);
    v35 = *(v13 + 336);

    swift_willThrow();

    OUTLINED_FUNCTION_108_3();
    OUTLINED_FUNCTION_77_9();
    OUTLINED_FUNCTION_43();
  }

  else
  {
    v36 = *(v13 + 336);

    v37 = OUTLINED_FUNCTION_88();
    sub_19290CA6C(v37, v38);
    OUTLINED_FUNCTION_43();
  }

  OUTLINED_FUNCTION_183();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t sub_192CC942C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[39] = v11;
  v8[40] = v12;
  v8[37] = a7;
  v8[38] = a8;
  v8[35] = a5;
  v8[36] = a6;
  v8[33] = a3;
  v8[34] = a4;
  v8[31] = a1;
  v8[32] = a2;

  return MEMORY[0x1EEE6DFA0](sub_192CC94D8, a1, 0);
}

uint64_t sub_192CC94D8()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_84_3();

  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  *v1 = v0;
  v1[1] = sub_192CC95BC;
  v2 = OUTLINED_FUNCTION_51(*(v0 + 248));

  return sub_192908C2C(v2, v3);
}

uint64_t sub_192CC95BC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_0();
  *v5 = v4;
  *(v7 + 336) = v6;
  *(v7 + 344) = v0;

  OUTLINED_FUNCTION_29_2();
  v9 = *(v8 + 248);
  if (v0)
  {
    v10 = sub_192CC9AE0;
  }

  else
  {
    v10 = sub_192CC9704;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_192CC9704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_120();
  v57 = *MEMORY[0x1E69E9840];
  v15 = sub_192F95B5C();
  *(v14 + 240) = 0;
  v16 = OUTLINED_FUNCTION_99_4();
  [v16 v17];

  v18 = *(v14 + 240);
  v19 = *(v14 + 336);
  if (v18)
  {
    swift_willThrow();
    v20 = v18;

    *(v14 + 216) = v20;
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0, &unk_192FC6200);
    sub_1929333B4();
    if (swift_dynamicCast())
    {
      if (OUTLINED_FUNCTION_107_4())
      {
        v56 = v14 + 48;

        if (qword_1ED6DF160 != -1)
        {
          OUTLINED_FUNCTION_1_2(&qword_1ED6DF160);
        }

        v22 = *(v14 + 248);
        *(v14 + 360) = qword_1ED6DF140;
        *(v14 + 368) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
        OUTLINED_FUNCTION_45_11();
        v23 = swift_allocObject();
        OUTLINED_FUNCTION_53_11(v23, xmmword_192FBED20);
        sub_192CC7DE4(v22, v24);
        OUTLINED_FUNCTION_62_8();
        OUTLINED_FUNCTION_110_3();
        sub_192907DE8(v14 + 16);
        OUTLINED_FUNCTION_9_34();
        OUTLINED_FUNCTION_82_5(v25, v26);
        v27 = v19;
        v28 = sub_192F958CC();

        v29 = AMSLogableError(v28);
        sub_192F967CC();
        OUTLINED_FUNCTION_134();
        OUTLINED_FUNCTION_50_9();
        static LogInterpolation.safe(_:)(v56, v30);
        sub_192907DE8(v56);
        v31 = sub_192F96E5C();
        if (OUTLINED_FUNCTION_61_10(v31))
        {
          v32 = objc_autoreleasePoolPush();
          if (qword_1ED6DF1A0 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
          }

          OUTLINED_FUNCTION_97_4();
          OUTLINED_FUNCTION_71();
          v33 = swift_allocObject();
          OUTLINED_FUNCTION_37_13(v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
          sub_1928FD924();
          OUTLINED_FUNCTION_1_41();
          sub_192F9674C();
          OUTLINED_FUNCTION_30_0();

          objc_autoreleasePoolPop(v32);
          v34 = objc_autoreleasePoolPush();
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
          v36 = OUTLINED_FUNCTION_90(v35);
          v37 = OUTLINED_FUNCTION_78_9(v36, xmmword_192FBCD50);
          OUTLINED_FUNCTION_137(v37);
          OUTLINED_FUNCTION_20_24("%{public}@", v38, v39, &dword_192869000);

          objc_autoreleasePoolPop(v34);
        }

        OUTLINED_FUNCTION_89_5();
        v40 = swift_task_alloc();
        *(v14 + 376) = v40;
        *v40 = v14;
        OUTLINED_FUNCTION_25_19(v40);
        OUTLINED_FUNCTION_51(v41);
        OUTLINED_FUNCTION_94();

        return sub_192908C2C(v42, v43);
      }
    }

    OUTLINED_FUNCTION_88_5();
    OUTLINED_FUNCTION_77_9();

    OUTLINED_FUNCTION_14_25();
  }

  else
  {

    v46 = OUTLINED_FUNCTION_91();
    sub_19290CA6C(v46, v47);

    OUTLINED_FUNCTION_14_25();
  }

  OUTLINED_FUNCTION_94();

  return v50(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, v57, a12, a13, a14);
}

uint64_t sub_192CC9AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_120();
  v52 = *MEMORY[0x1E69E9840];
  v17 = v14[43];
  OUTLINED_FUNCTION_80_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0, &unk_192FC6200);
  OUTLINED_FUNCTION_65_7();
  v18 = sub_1929333B4();
  if (OUTLINED_FUNCTION_52_10(v18))
  {
    if (OUTLINED_FUNCTION_107_4())
    {
      v51 = v15 - 168;

      if (qword_1ED6DF160 != -1)
      {
        OUTLINED_FUNCTION_1_2(&qword_1ED6DF160);
      }

      v19 = v14[31];
      v14[45] = qword_1ED6DF140;
      v14[46] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
      OUTLINED_FUNCTION_45_11();
      v20 = swift_allocObject();
      OUTLINED_FUNCTION_53_11(v20, xmmword_192FBED20);
      sub_192CC7DE4(v19, v21);
      OUTLINED_FUNCTION_62_8();
      OUTLINED_FUNCTION_110_3();
      sub_192907DE8(v15 - 200);
      OUTLINED_FUNCTION_9_34();
      OUTLINED_FUNCTION_82_5(v22, v23);
      v24 = v16;
      v25 = sub_192F958CC();

      v26 = AMSLogableError(v25);
      sub_192F967CC();
      OUTLINED_FUNCTION_134();
      OUTLINED_FUNCTION_50_9();
      static LogInterpolation.safe(_:)(v51, v27);
      sub_192907DE8(v51);
      v28 = sub_192F96E5C();
      if (OUTLINED_FUNCTION_61_10(v28))
      {
        v29 = objc_autoreleasePoolPush();
        if (qword_1ED6DF1A0 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
        }

        OUTLINED_FUNCTION_97_4();
        OUTLINED_FUNCTION_71();
        v30 = swift_allocObject();
        OUTLINED_FUNCTION_37_13(v30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
        sub_1928FD924();
        OUTLINED_FUNCTION_1_41();
        sub_192F9674C();
        OUTLINED_FUNCTION_30_0();

        objc_autoreleasePoolPop(v29);
        v31 = objc_autoreleasePoolPush();
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
        v33 = OUTLINED_FUNCTION_90(v32);
        v34 = OUTLINED_FUNCTION_78_9(v33, xmmword_192FBCD50);
        OUTLINED_FUNCTION_137(v34);
        OUTLINED_FUNCTION_20_24("%{public}@", v35, v36, &dword_192869000);

        objc_autoreleasePoolPop(v31);
      }

      OUTLINED_FUNCTION_89_5();
      v37 = swift_task_alloc();
      v14[47] = v37;
      *v37 = v14;
      OUTLINED_FUNCTION_25_19(v37);
      OUTLINED_FUNCTION_51(v38);
      OUTLINED_FUNCTION_94();

      return sub_192908C2C(v39, v40);
    }
  }

  OUTLINED_FUNCTION_88_5();
  OUTLINED_FUNCTION_77_9();

  OUTLINED_FUNCTION_14_25();
  OUTLINED_FUNCTION_94();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, v52, a12, a13, a14);
}

uint64_t sub_192CC9E00()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_0();
  *v5 = v4;
  *(v7 + 384) = v6;
  *(v7 + 392) = v0;

  OUTLINED_FUNCTION_29_2();
  v9 = *(v8 + 248);
  if (v0)
  {
    v10 = sub_192CCA2A4;
  }

  else
  {
    v10 = sub_192CC9F48;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_192CC9F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_120();
  v53 = *MEMORY[0x1E69E9840];
  v15 = sub_192F95B5C();
  *(v14 + 232) = 0;
  v16 = OUTLINED_FUNCTION_99_4();
  [v16 v17];

  v18 = *(v14 + 232);
  if (v18)
  {
    v19 = *(v14 + 360);
    v21 = *(v14 + 288);
    v20 = *(v14 + 296);
    v22 = *(v14 + 248);
    swift_willThrow();
    OUTLINED_FUNCTION_45_11();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_192FBED20;
    v18;
    sub_192CC7DE4(v22, (v23 + 32));
    v24 = MEMORY[0x1E69E6158];
    *(v14 + 104) = MEMORY[0x1E69E6158];
    *(v14 + 80) = v21;
    *(v14 + 88) = v20;

    static LogInterpolation.safe(_:)(v14 + 80, (v23 + 40));
    sub_192907DE8(v14 + 80);
    OUTLINED_FUNCTION_9_34();
    v25._countAndFlagsBits = 0xD00000000000003ALL;
    LogInterpolation.init(stringLiteral:)(v25);
    v26 = sub_192F958CC();
    v27 = AMSLogableError(v26);

    v28 = sub_192F967CC();
    v30 = v29;

    *(v14 + 112) = v28;
    *(v14 + 136) = v24;
    *(v14 + 120) = v30;
    static LogInterpolation.safe(_:)(v14 + 112, (v23 + 56));
    sub_192907DE8(v14 + 112);
    LOBYTE(v27) = sub_192F96E5C();
    if (os_log_type_enabled(v19, v27))
    {
      v31 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      v32 = byte_1ED6DE5D8;
      OUTLINED_FUNCTION_71();
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      OUTLINED_FUNCTION_92_3(v33);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      OUTLINED_FUNCTION_1_41();
      sub_192F9674C();
      OUTLINED_FUNCTION_21_5();

      objc_autoreleasePoolPop(v31);
      v35 = objc_autoreleasePoolPush();
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v37 = OUTLINED_FUNCTION_90(v36);
      v37[4].n128_u64[0] = OUTLINED_FUNCTION_78_9(v37, xmmword_192FBCD50);
      v37[2].n128_u64[0] = v14 + 168;
      v37[2].n128_u64[1] = v34;
      OUTLINED_FUNCTION_60();
      sub_192F9622C(v38);

      objc_autoreleasePoolPop(v35);
    }

    v39 = *(v14 + 384);
    v40 = *(v14 + 352);

    swift_willThrow();

    OUTLINED_FUNCTION_88_5();
    OUTLINED_FUNCTION_77_9();

    OUTLINED_FUNCTION_14_25();
  }

  else
  {
    v41 = *(v14 + 352);

    v42 = OUTLINED_FUNCTION_91();
    sub_19290CA6C(v42, v43);

    OUTLINED_FUNCTION_14_25();
  }

  OUTLINED_FUNCTION_94();

  return v46(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, v53, a12, a13, a14);
}

uint64_t sub_192CCA2A4()
{
  OUTLINED_FUNCTION_65();

  v1 = *(v0 + 320);
  v2 = OUTLINED_FUNCTION_91();
  sub_19290CA6C(v2, v3);

  OUTLINED_FUNCTION_40();

  return v4(0);
}

uint64_t sub_192CCA35C()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_192CCA3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_120();
  v34 = *MEMORY[0x1E69E9840];
  v16 = v14[20];
  v17 = v14[15];
  v33 = v14[16];
  v19 = v14[12];
  v18 = v14[13];
  v20 = v14[10];
  v21 = OUTLINED_FUNCTION_70_5();
  v22 = sub_192F9679C();
  v23 = sub_192F958CC();
  OUTLINED_FUNCTION_81_8(v23);

  swift_willThrow();
  sub_19290CA6C(v19, v18);

  sub_19290CA6C(v33, v17);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v33, a10, v34, a12, a13, a14);
}

uint64_t sub_192CCA4FC()
{
  v0 = sub_192F958CC();
  IsEqual = AMSErrorIsEqual(v0, @"AMSErrorDomain", 0x12E);

  return IsEqual;
}

uint64_t sub_192CCA540()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 336) = v4;
  v5 = *(v3 + 288);
  if (v4)
  {
    v6 = sub_192CCAB74;
  }

  else
  {
    v6 = sub_192CCA650;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_192CCA650()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[41];
  v2 = v0[37];
  v0[43] = v0[34];

  v0[44] = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag_];
  swift_beginAccess();
  v3 = sub_19292C460();
  v0[45] = v3;
  swift_endAccess();
  v4 = swift_task_alloc();
  v0[46] = v4;
  *v4 = v0;
  v4[1] = sub_192CCA74C;
  v5 = OUTLINED_FUNCTION_91();

  return sub_192CCAD24(v5, v6, v3);
}

uint64_t sub_192CCA74C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_0();
  *v5 = v4;
  *(v7 + 376) = v6;
  *(v7 + 384) = v0;

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_192CCA860()
{
  if ([*(v0 + 376) object])
  {
    sub_192F9715C();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  *(v0 + 144) = v33;
  *(v0 + 160) = v34;
  if (*(v0 + 168))
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE131E0, &unk_192FBEF80);
    if (OUTLINED_FUNCTION_112_3(v0 + 280, v0 + 144, v2, v1))
    {
      sub_192952700(0xD000000000000013, 0x8000000193022C10, *(v0 + 280));

      if (*(v0 + 200))
      {
        if (OUTLINED_FUNCTION_112_3(v0 + 256, v0 + 176, v3, MEMORY[0x1E6969080]))
        {
          v4 = *(v0 + 376);
          v5 = *(v0 + 288);
          v6 = *(v0 + 264);
          v7 = *(v5 + 136);
          v8 = *(v5 + 144);
          *(v5 + 136) = *(v0 + 256);
          *(v5 + 144) = v6;
          v9 = OUTLINED_FUNCTION_102();
          sub_192907D90(v9, v10);
          v11 = OUTLINED_FUNCTION_102();
          sub_192907D90(v11, v12);
          sub_192915F68(v7, v8);
          v13 = [v4 response];
          if (v13)
          {
            v14 = v13;
            [v13 ams_expirationInterval];
          }

          v23 = *(v0 + 376);
          v25 = *(v0 + 352);
          v24 = *(v0 + 360);
          v26 = *(v0 + 344);
          v27 = OUTLINED_FUNCTION_102();
          v28(v27);

          v29 = OUTLINED_FUNCTION_102();
          sub_19290CA6C(v29, v30);
          sub_192915F80(*(v0 + 312), *(v0 + 320));
          v31 = OUTLINED_FUNCTION_102();

          return v32(v31);
        }
      }

      else
      {
        sub_192907DE8(v0 + 176);
      }
    }
  }

  else
  {
    sub_192907DE8(v0 + 144);
  }

  v15 = *(v0 + 376);
  v16 = *(v0 + 352);
  v17 = *(v0 + 360);
  v18 = *(v0 + 344);
  v19 = sub_192F9679C();
  v20 = sub_192F9679C();
  AMSError(8, v19, v20, 0);

  swift_willThrow();
  OUTLINED_FUNCTION_43();

  return v21();
}

uint64_t sub_192CCAB74()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 328);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_192CCABDC()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 352);
  v2 = *(v0 + 344);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_192CCAC44()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 360);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_192CCACAC()
{
  OUTLINED_FUNCTION_5();
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_192CCAD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = sub_192F95A8C();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192CCADE8, 0, 0);
}

uint64_t sub_192CCADE8()
{
  OUTLINED_FUNCTION_3();
  sub_192F959AC();
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_192CCAE8C;
  v2 = *(v0 + 192);

  return sub_19292C6E4(2, v2, 0);
}

uint64_t sub_192CCAE8C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_6_0();
  *v6 = v5;
  *(v8 + 208) = v7;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_29_2();
  (*(*(v1 + 184) + 8))(*(v9 + 192), *(v1 + 176));
  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_192CCAFD8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_0();
  v3 = [*(v0 + 168) dataTaskPromiseWithRequest_];
  *(v0 + 224) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  OUTLINED_FUNCTION_39_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13AE0, &unk_192FC2320);
  OUTLINED_FUNCTION_4_4(v4);
  *(v0 + 88) = 1107296256;
  OUTLINED_FUNCTION_36();
  [v3 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_192CCB0D4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 232) = v4;
  if (v4)
  {
    v5 = sub_192CCB2B0;
  }

  else
  {
    v5 = sub_192CCB1D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192CCB1D4()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 224);

  v2 = *(v0 + 144);

  OUTLINED_FUNCTION_40();

  return v3(v2);
}

uint64_t sub_192CCB254()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_192CCB2B0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_192CCB328()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_192CCB384()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v3();
}

id MescalFairplaySession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MescalFairplaySession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_192CCB5A0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_192CCB5F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_192CCB654()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v1[1] = sub_192919C40;
  v3 = OUTLINED_FUNCTION_30_3();

  return v4(v3);
}

uint64_t sub_192CCB6F8()
{
  OUTLINED_FUNCTION_47_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v1[1] = sub_192919C44;
  v3 = OUTLINED_FUNCTION_30_3();

  return v4(v3);
}

uint64_t sub_192CCB7BC()
{
  OUTLINED_FUNCTION_65();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v1[1] = sub_192919C40;
  v3 = OUTLINED_FUNCTION_30_3();

  return v4(v3);
}

uint64_t sub_192CCB884()
{
  OUTLINED_FUNCTION_5();
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_27_19(v1);

  return sub_192C4CCA0(v3, v4, v5);
}

uint64_t sub_192CCB920()
{
  OUTLINED_FUNCTION_5();
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_27_19(v1);

  return sub_192C4CCA0(v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_77_9()
{

  return sub_19290CA6C(v1, v0);
}

unint64_t OUTLINED_FUNCTION_78_9(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[3].n128_u64[1] = v2;

  return sub_1928FDB30();
}

void OUTLINED_FUNCTION_88_5()
{
  v2 = *(v0 + 216);
}

uint64_t OUTLINED_FUNCTION_92_3(uint64_t a1)
{
  v3[21] = v2;
  v3[22] = v1;
  v3[23] = a1;
}

uint64_t OUTLINED_FUNCTION_103_5()
{
  v1[9] = v4;
  v1[6] = v2;
  v1[7] = v3;

  return static LogInterpolation.safe(_:)((v1 + 6), (v0 + 56));
}

uint64_t OUTLINED_FUNCTION_107_4()
{
  *(v0 + 352) = *(v0 + 224);

  return sub_192CCA4FC();
}

uint64_t sub_192CCBA90()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 184);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t static AMSMescal.signature(fromRequest:type:bag:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_192CCBB14()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = objc_opt_self();
  v4 = sub_192F9539C();
  v5 = [v3 signaturePromiseFromRequest:v4 type:v2 bag:v1];
  v0[22] = v5;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_192CCBC74;
  v6 = swift_continuation_init();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15590, &qword_192FCD098);
  OUTLINED_FUNCTION_1_56(v7);
  v0[11] = 1107296256;
  v0[12] = sub_1929550A8;
  v0[13] = &block_descriptor_4_0;
  v0[14] = v6;
  [v5 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_192CCBC74()
{
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = sub_192CCBE30;
  }

  else
  {
    v5 = sub_192CCBD7C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192CCBD7C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 144);

  v2 = [v1 value];
  if (v2)
  {
    v3 = v2;
    sub_192F95B7C();
  }

  else
  {
  }

  v4 = OUTLINED_FUNCTION_4_54();

  return v5(v4);
}

uint64_t sub_192CCBE30()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 176);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t static AMSMescal.verifyResponse(inTask:data:type:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_192CCBEB8()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  sub_192CCC250();
  sub_192907D90(v4, v3);
  v6 = sub_192CCC294(v4, v3);
  v0[23] = v6;
  v7 = [objc_opt_self() verificationPromiseForTask:v5 data:v6 type:v2 bag:v1];
  v0[24] = v7;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_192CCC044;
  v8 = swift_continuation_init();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DD0, &qword_192FBDF40);
  OUTLINED_FUNCTION_1_56(v9);
  v0[11] = 1107296256;
  v0[12] = sub_19294E224;
  v0[13] = &block_descriptor_8;
  v0[14] = v8;
  [v7 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_192CCC044()
{
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 200) = v4;
  if (v4)
  {
    v5 = sub_192CCC1DC;
  }

  else
  {
    v5 = sub_192CCC14C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192CCC14C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 184);

  v2 = v1;
  v3 = sub_192F95B7C();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_192CCC1DC()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[24];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

unint64_t sub_192CCC250()
{
  result = qword_1EAE15598;
  if (!qword_1EAE15598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAE15598);
  }

  return result;
}

id sub_192CCC294(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_192F95B5C();
  v6 = [v4 initWithData_];

  sub_19290CA6C(a1, a2);
  return v6;
}

uint64_t sub_192CCC31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3)
  {
    return sub_192F95E4C();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_192CCC338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x193B11C90](a2);

  return sub_192F95E5C();
}

uint64_t sub_192CCC37C(uint64_t a1, uint64_t a2)
{
  sub_192F9789C();
  MEMORY[0x193B11C90](a1);
  sub_192F95E5C();
  return sub_192F978DC();
}

id static MethodImplementationCache.implementation(of:forInstancesOf:)(uint64_t a1, uint64_t a2)
{
  if (qword_1ED6DED98 != -1)
  {
    OUTLINED_FUNCTION_0_46(&qword_1ED6DED98);
  }

  v4 = off_1ED6DEDA0;
  os_unfair_lock_lock(off_1ED6DEDA0 + 6);
  v5 = *(v4 + 2);
  if (*(v5 + 16) && (v6 = OUTLINED_FUNCTION_91(), v8 = sub_1929113AC(v6, v7), (v9 & 1) != 0))
  {
    v10 = *(*(v5 + 56) + 8 * v8);
  }

  else
  {
    v10 = [swift_getObjCClassFromMetadata() instanceMethodForSelector_];
    if (v10)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_57();
      sub_192910974(v10, a2, a1, v11, v12, v13, v14, v15, v17, v18);
      *(v4 + 2) = v19;
    }

    else
    {
      OUTLINED_FUNCTION_91();
      sub_192C026AC();
    }
  }

  os_unfair_lock_unlock(v4 + 6);
  return v10;
}

id MethodImplementationCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MethodImplementationCache.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MethodImplementationCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void static MethodImplementationCache.clear()()
{
  if (qword_1ED6DED98 != -1)
  {
    OUTLINED_FUNCTION_0_46(&qword_1ED6DED98);
  }

  v0 = off_1ED6DEDA0;
  os_unfair_lock_lock(off_1ED6DEDA0 + 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE155A0, &unk_192FCD0B0);
  sub_192F966DC();

  os_unfair_lock_unlock(v0 + 6);
}

uint64_t getEnumTagSinglePayload for MethodImplementationCache.Key(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 16))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MethodImplementationCache.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

id MetricsEventAnomaliesDetector.__allocating_init(anomalyDetectors:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___AMSMetricsEventAnomaliesDetector_anomalyDetectors] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MetricsEventAnomaliesDetector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MetricsEventAnomaliesDetector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_192CCC900()
{
  v1 = objc_opt_self();
  v6 = sub_192F9679C();
  v2 = [v0 description];
  v3 = sub_192F967CC();
  v5 = v4;

  sub_192CCDBD8(v6, v3, v5, 5, 4, 0, v1);
}

id sub_192CCCAF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  v3 = sub_192F9679C();

  return v3;
}

id sub_192CCCB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = &v7[OBJC_IVAR____TtC18AppleMediaServices33AutoBugCaptureMetricsEventAnomaly_identifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC18AppleMediaServices33AutoBugCaptureMetricsEventAnomaly_metricsEvent] = a3;
  v9 = &v7[OBJC_IVAR____TtC18AppleMediaServices33AutoBugCaptureMetricsEventAnomaly_subtype];
  *v9 = a4;
  *(v9 + 1) = a5;
  v10 = &v7[OBJC_IVAR____TtC18AppleMediaServices33AutoBugCaptureMetricsEventAnomaly_subtypeContext];
  *v10 = a6;
  *(v10 + 1) = a7;
  v12.receiver = v7;
  v12.super_class = type metadata accessor for AutoBugCaptureMetricsEventAnomaly();
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_192CCCBE0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DE0, &qword_192FBD930);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v22 - v4;
  v6 = [objc_opt_self() currentProcess];
  v7 = sub_19287A8E4(v6);
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v11 = v0 + OBJC_IVAR____TtC18AppleMediaServices33AutoBugCaptureMetricsEventAnomaly_subtype;
  v12 = *(v0 + OBJC_IVAR____TtC18AppleMediaServices33AutoBugCaptureMetricsEventAnomaly_subtype);
  v13 = *(v11 + 8);
  v14 = *(v1 + OBJC_IVAR____TtC18AppleMediaServices33AutoBugCaptureMetricsEventAnomaly_subtypeContext);
  v15 = *(v1 + OBJC_IVAR____TtC18AppleMediaServices33AutoBugCaptureMetricsEventAnomaly_subtypeContext + 8);
  objc_allocWithZone(type metadata accessor for AutoBugCaptureReport());

  v16 = AutoBugCaptureReport.init(domain:type:subtype:subtypeContext:process:thresholdValues:)(0xD000000000000012, 0x8000000192FCD1B0, 0x7363697274654DLL, 0xE700000000000000, v12, v13, v14, v15, v9, v10, 0);
  v17 = [*(v1 + OBJC_IVAR____TtC18AppleMediaServices33AutoBugCaptureMetricsEventAnomaly_metricsEvent) dictionaryForPosting];
  v18 = sub_192F9669C();

  v19 = sub_192F96C6C();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v9;
  v20[5] = v10;
  v20[6] = v16;
  v20[7] = v18;
  sub_192C68270();
}

uint64_t sub_192CCCDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[56] = a6;
  v7[57] = a7;
  v7[54] = a4;
  v7[55] = a5;
  return MEMORY[0x1EEE6DFA0](sub_192CCCE1C, 0, 0);
}

uint64_t sub_192CCCE1C()
{
  if (qword_1EAE121F8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = qword_1EAE12200;
  *(v0 + 464) = qword_1EAE12200;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  *(v0 + 472) = v4;
  v5 = OUTLINED_FUNCTION_47(v4);
  *(v5 + 16) = xmmword_192FBCD50;
  sub_19287AEE0();
  v51 = v6;
  v7._object = 0x8000000193022E00;
  v7._countAndFlagsBits = 0xD000000000000027;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v7);
  v8 = MEMORY[0x1E69E6158];
  *(v0 + 160) = MEMORY[0x1E69E6158];
  *(v0 + 136) = v2;
  *(v0 + 144) = v1;
  sub_192878268(v0 + 136, v0 + 168);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;

  sub_19286D180(v0 + 168, v0 + 16);
  *(v0 + 48) = 3;
  v9 = v51;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v9 = v49;
  }

  v10 = *(v9 + 16);
  if (v10 >= *(v9 + 24) >> 1)
  {
    OUTLINED_FUNCTION_142();
    v9 = v50;
  }

  *(v9 + 16) = v10 + 1;
  v11 = v9 + 40 * v10;
  v12 = *(v0 + 16);
  v13 = *(v0 + 32);
  *(v11 + 64) = *(v0 + 48);
  *(v11 + 32) = v12;
  *(v11 + 48) = v13;
  sub_192907DE8(v0 + 136);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  *(v5 + 32) = v9;
  v15 = sub_192F96E7C();
  if (os_log_type_enabled(v3, v15))
  {
    v16 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    v17 = byte_1ED6DE5D8;
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v0 + 400) = v5;
    *(v0 + 408) = sub_192BB97CC;
    *(v0 + 416) = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    v19 = sub_192F9674C();
    v21 = v20;

    objc_autoreleasePoolPop(v16);
    v22 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v23 = swift_allocObject();
    OUTLINED_FUNCTION_29_0(v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
    *(v33 + 56) = v8;
    v23[4].n128_u64[0] = sub_1928FDB30();
    v23[2].n128_u64[0] = v19;
    v23[2].n128_u64[1] = v21;
    sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v3, v15, v23, 1, 2);

    objc_autoreleasePoolPop(v22);
  }

  v34 = *(v0 + 456);

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15600, &unk_192FCD250);
  v36 = OUTLINED_FUNCTION_47(v35);
  *(v0 + 480) = v36;
  OUTLINED_FUNCTION_29_0(v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
  *(v46 + 32) = v34;

  v47 = swift_task_alloc();
  *(v0 + 488) = v47;
  *v47 = v0;
  v47[1] = sub_192CCD1D8;

  return _s18AppleMediaServices20AutoBugCaptureReportC7capture5delay6events7payload7actionsAC8ResponseCSd_SaySDys11AnyHashableVypGGSgAMSgAA23DiagnosticActionOptionsCSgtYaAA0defG5ErrorOYKF();
}

uint64_t sub_192CCD1D8(uint64_t a1)
{
  *(*v2 + 496) = a1;

  if (v1)
  {
    v3 = sub_192CCD610;
  }

  else
  {
    v3 = sub_192CCD30C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_192CCD30C()
{
  v1 = *(v0 + 496);
  v2 = OUTLINED_FUNCTION_47(*(v0 + 472));
  *(v2 + 16) = xmmword_192FBCD50;
  sub_19287AEE0();
  v38 = v3;
  v4._object = 0x8000000193022E50;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v4);
  *(v0 + 288) = type metadata accessor for AutoBugCaptureReport.Response();
  *(v0 + 264) = v1;
  sub_192878268(v0 + 264, v0 + 296);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  v5 = v1;
  sub_19286D180(v0 + 296, v0 + 96);
  *(v0 + 128) = 3;
  v6 = v38;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v6 = v36;
  }

  v7 = *(v6 + 16);
  if (v7 >= *(v6 + 24) >> 1)
  {
    OUTLINED_FUNCTION_142();
    v6 = v37;
  }

  v8 = *(v0 + 464);
  *(v6 + 16) = v7 + 1;
  v9 = v6 + 40 * v7;
  v10 = *(v0 + 96);
  v11 = *(v0 + 112);
  *(v9 + 64) = *(v0 + 128);
  *(v9 + 32) = v10;
  *(v9 + 48) = v11;
  sub_192907DE8(v0 + 264);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  *(v2 + 32) = v6;
  v13 = sub_192F96E7C();
  if (os_log_type_enabled(v8, v13))
  {
    v14 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    v15 = *(v0 + 496);
    v16 = *(v0 + 464);
    v17 = byte_1ED6DE5D8;
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v0 + 376) = v2;
    *(v0 + 384) = sub_192BB97CC;
    *(v0 + 392) = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    v19 = sub_192F9674C();
    v21 = v20;

    objc_autoreleasePoolPop(v14);
    v22 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v23 = swift_allocObject();
    OUTLINED_FUNCTION_29_0(v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
    *(v33 + 56) = MEMORY[0x1E69E6158];
    v23[4].n128_u64[0] = sub_1928FDB30();
    v23[2].n128_u64[0] = v19;
    v23[2].n128_u64[1] = v21;
    sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v16, v13, v23, 1, 2);

    objc_autoreleasePoolPop(v22);
  }

  else
  {
    v15 = *(v0 + 496);
  }

  v34 = *(v0 + 8);

  return v34();
}