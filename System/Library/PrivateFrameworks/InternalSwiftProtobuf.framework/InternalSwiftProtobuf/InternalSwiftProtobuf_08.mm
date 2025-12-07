uint64_t sub_1AC4D7100(uint64_t a1, unint64_t a2)
{
  v2 = sub_1AC4D716C(sub_1AC4D7168, 0, a1, a2);
  v6 = sub_1AC4D71A0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1AC4D71A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1AC51F238();
    if (!v9 || (v10 = v9, v11 = sub_1AC4D7300(v9, 0), v12 = sub_1AC4D7370(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1AC51EEA8();

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
      return sub_1AC51EEA8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1AC51F308();
LABEL_4:

  return sub_1AC51EEA8();
}

void *sub_1AC4D7300(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5582A0, &qword_1AC520A58);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_1AC4D7370(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1AC488FF0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1AC51EF88();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1AC51F308();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1AC488FF0(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1AC51EF58();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1AC4D7588(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 4 * v4;
  v6 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  v14 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v9 = 15;
  while (1)
  {
    v10 = v9 >> 14;
    if (v9 >> 14 == v5)
    {
      return v10 == v5;
    }

    result = v9;
    if ((v9 & 0xC) == v7)
    {
      result = sub_1AC488FF0(v9, a1, a2);
    }

    v12 = result >> 16;
    if (result >> 16 >= v4)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1AC51EF88();
      v13 = result;
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v15[0] = a1;
      v15[1] = v14;
      v13 = *(v15 + v12);
    }

    else
    {
      result = v8;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = sub_1AC51F308();
      }

      v13 = *(result + v12);
    }

    if ((v9 & 0xC) == v7)
    {
      result = sub_1AC488FF0(v9, a1, a2);
      v9 = result;
      if ((a2 & 0x1000000000000000) != 0)
      {
LABEL_22:
        if (v4 <= v9 >> 16)
        {
          goto LABEL_27;
        }

        v9 = sub_1AC51EF58();
        goto LABEL_24;
      }
    }

    else if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_22;
    }

    v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_24:
    if ((v13 - 33) >= 0x5Eu)
    {
      return v10 == v5;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1AC4D7710(unint64_t a1, unint64_t a2)
{
  if ((sub_1AC4D7588(a1, a2) & 1) == 0)
  {
    return 0;
  }

  while (1)
  {
    while (1)
    {
      v2 = sub_1AC51EF38();
      if (!v3)
      {

        return 0;
      }

      v4 = v2;
      v5 = v3;
      v6 = v2 == 95 && v3 == 0xE100000000000000;
      if (v6 || (sub_1AC51F3D8() & 1) != 0)
      {
        break;
      }

      result = sub_1AC51F3D8();
      if (result)
      {
        goto LABEL_91;
      }

      if (v4 != 65 || v5 != 0xE100000000000000)
      {
        if (sub_1AC51F3D8())
        {
          goto LABEL_33;
        }

        if (v4 == 90 && v5 == 0xE100000000000000)
        {
          goto LABEL_86;
        }
      }

      if ((sub_1AC51F3D8() & 1) == 0)
      {
        goto LABEL_86;
      }

LABEL_33:
      result = sub_1AC51F3D8();
      if (result)
      {
        goto LABEL_92;
      }

      if (v4 != 97 || v5 != 0xE100000000000000)
      {
        if (sub_1AC51F3D8())
        {
          goto LABEL_44;
        }

        if (v4 == 122 && v5 == 0xE100000000000000)
        {
          goto LABEL_85;
        }
      }

      if ((sub_1AC51F3D8() & 1) == 0)
      {
        goto LABEL_85;
      }

LABEL_44:
      result = sub_1AC51F3D8();
      if (result)
      {
        goto LABEL_93;
      }

      if (v4 == 48 && v5 == 0xE100000000000000)
      {
        goto LABEL_60;
      }

      if ((sub_1AC51F3D8() & 1) == 0)
      {
        if (v4 == 57 && v5 == 0xE100000000000000)
        {
          goto LABEL_85;
        }

LABEL_60:
        v24 = sub_1AC51F3D8();
        v26 = v4 == 46 && v5 == 0xE100000000000000;
        if ((v24 & 1) == 0 || v26)
        {
          goto LABEL_85;
        }

        goto LABEL_68;
      }

      if (v4 == 46 && v5 == 0xE100000000000000)
      {
        goto LABEL_85;
      }

LABEL_68:
      v27 = sub_1AC51F3D8();
      v29 = v4 == 40 && v5 == 0xE100000000000000;
      if ((v27 & 1) == 0 && !v29)
      {
        v30 = sub_1AC51F3D8();
        v31 = v4 == 41 && v5 == 0xE100000000000000;
        v32 = v31;
        if ((v30 & 1) == 0 && !v32)
        {
          sub_1AC51F3D8();
        }
      }

LABEL_85:
      MEMORY[0x1AC5B4330](v4, v5);
    }

    v7 = sub_1AC51EF38();
    if (!v8)
    {
      goto LABEL_87;
    }

    v9 = v7;
    v10 = v8;
    result = sub_1AC51F3D8();
    if (result)
    {
      break;
    }

    if (v9 == 97 && v10 == 0xE100000000000000)
    {
      goto LABEL_20;
    }

    if (sub_1AC51F3D8())
    {
      goto LABEL_86;
    }

    if (v9 != 122 || v10 != 0xE100000000000000)
    {
LABEL_20:
      if (sub_1AC51F3D8())
      {
LABEL_86:

LABEL_87:

        return 0;
      }
    }

    v14 = sub_1AC51EE58();
    v16 = v15;

    MEMORY[0x1AC5B4340](v14, v16);
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
  return result;
}

uint64_t sub_1AC4D7AAC(unint64_t a1, unint64_t a2)
{
  if ((sub_1AC4D7588(a1, a2) & 1) == 0)
  {
    return 0;
  }

  while (1)
  {
    v2 = sub_1AC51EF38();
    if (!v3)
    {

      return 0;
    }

    v4 = v2;
    v5 = v3;
    v6 = v2 == 95 && v3 == 0xE100000000000000;
    if (v6 || (sub_1AC51F3D8() & 1) != 0)
    {

      return 0;
    }

    result = sub_1AC51F3D8();
    if (result)
    {
      break;
    }

    if (v4 != 65 || v5 != 0xE100000000000000)
    {
      if (sub_1AC51F3D8())
      {
        goto LABEL_20;
      }

      if (v4 == 90 && v5 == 0xE100000000000000)
      {
        goto LABEL_43;
      }
    }

    if (sub_1AC51F3D8())
    {
LABEL_20:
      result = sub_1AC51F3D8();
      if (result)
      {
        goto LABEL_78;
      }

      if (v4 != 97 || v5 != 0xE100000000000000)
      {
        if (sub_1AC51F3D8())
        {
          goto LABEL_31;
        }

        if (v4 == 122 && v5 == 0xE100000000000000)
        {
          goto LABEL_73;
        }
      }

      if ((sub_1AC51F3D8() & 1) == 0)
      {
        goto LABEL_73;
      }

LABEL_31:
      result = sub_1AC51F3D8();
      if (result)
      {
        goto LABEL_79;
      }

      if (v4 == 48 && v5 == 0xE100000000000000)
      {
        goto LABEL_48;
      }

      if ((sub_1AC51F3D8() & 1) == 0)
      {
        if (v4 == 57 && v5 == 0xE100000000000000)
        {
          goto LABEL_73;
        }

LABEL_48:
        v18 = sub_1AC51F3D8();
        v20 = v4 == 46 && v5 == 0xE100000000000000;
        if ((v18 & 1) == 0 || v20)
        {
          goto LABEL_73;
        }

        goto LABEL_56;
      }

      if (v4 == 46 && v5 == 0xE100000000000000)
      {
        goto LABEL_73;
      }

LABEL_56:
      v21 = sub_1AC51F3D8();
      v23 = v4 == 40 && v5 == 0xE100000000000000;
      if ((v21 & 1) == 0 && !v23)
      {
        v24 = sub_1AC51F3D8();
        v26 = v4 == 41 && v5 == 0xE100000000000000;
        if ((v24 & 1) == 0 && !v26)
        {
          sub_1AC51F3D8();
        }
      }

LABEL_73:
      MEMORY[0x1AC5B4330](v4, v5);
    }

    else
    {
LABEL_43:
      MEMORY[0x1AC5B4330](95, 0xE100000000000000);
      v14 = sub_1AC51EE38();
      v16 = v15;

      MEMORY[0x1AC5B4340](v14, v16);
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
  return result;
}

uint64_t sub_1AC4D7DCC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v25 = 0;
  v26 = 0xE000000000000000;

  v3 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v4 = 0;
  while (1)
  {
    v5 = sub_1AC51EF38();
    if (!v6)
    {
      break;
    }

    v7 = v5;
    v8 = v6;
    v9 = v5 == 44 && v6 == 0xE100000000000000;
    if (v9 || (sub_1AC51F3D8() & 1) != 0)
    {

      if (!v4)
      {

LABEL_31:

        goto LABEL_32;
      }

      v12 = sub_1AC4D7AAC(v25, v26);
      v14 = v13;

      if (!v14)
      {
        goto LABEL_31;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC4525C0();
        v3 = v17;
      }

      v15 = *(v3 + 16);
      if (v15 >= *(v3 + 24) >> 1)
      {
        sub_1AC4525C0();
        v3 = v18;
      }

      *(v3 + 16) = v15 + 1;
      v16 = v3 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v14;
      v25 = 0;
      v26 = 0xE000000000000000;
      goto LABEL_5;
    }

    v10 = &v25;
    MEMORY[0x1AC5B4330](v7, v8);

    if (__OFADD__(v4++, 1))
    {
      __break(1u);
LABEL_35:
      sub_1AC4525C0();
      v3 = v23;
      goto LABEL_25;
    }
  }

  if (!v4)
  {
    goto LABEL_31;
  }

  v10 = sub_1AC4D7AAC(v25, v26);
  v8 = v19;

  if (!v8)
  {
LABEL_32:

    return 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_25:
  v20 = *(v3 + 16);
  if (v20 >= *(v3 + 24) >> 1)
  {
    sub_1AC4525C0();
    v3 = v24;
  }

  *(v3 + 16) = v20 + 1;
  v21 = v3 + 16 * v20;
  *(v21 + 32) = v10;
  *(v21 + 40) = v8;
  return v3;
}

double Google_Protobuf_FieldMask.init(protoPaths:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  result = 0.0;
  *(a2 + 8) = xmmword_1AC51F990;
  *a2 = a1;
  return result;
}

{

  *a2 = a1;
  result = 0.0;
  *(a2 + 8) = xmmword_1AC51F990;
  return result;
}

void Google_Protobuf_FieldMask.init(jsonPaths:)(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  v5 = *(result + 16);
  v6 = result + 40;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = (v6 + 16 * v4);
  while (1)
  {
    if (v5 == v4)
    {

      *a2 = v7;
      *(a2 + 8) = xmmword_1AC51F990;
      return;
    }

    if (v4 >= *(result + 16))
    {
      break;
    }

    ++v4;
    v9 = v8 + 2;
    v10 = *(v8 - 1);
    v11 = *v8;

    v12 = sub_1AC4D7AAC(v10, v11);
    v14 = v13;

    v8 = v9;
    if (v14)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_11_8();
        sub_1AC4525C0();
        v7 = v17;
      }

      v15 = *(v7 + 16);
      if (v15 >= *(v7 + 24) >> 1)
      {
        OUTLINED_FUNCTION_11_8();
        sub_1AC4525C0();
        v7 = v18;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v14;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_1AC4D81D4()
{
  result = sub_1AC45993C();
  if (!v1)
  {
    v4 = sub_1AC4D7DCC(result, v3);

    if (v4)
    {

      *v0 = v4;
    }

    else
    {
      v5 = sub_1AC477660();
      OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v5);
      *v6 = xmmword_1AC528120;
      return swift_willThrow();
    }
  }

  return result;
}

void sub_1AC4D8264()
{
  v1 = 0;
  v2 = *v0;
  v3 = *(*v0 + 16);
  v4 = (*v0 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v3 == v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559730, &qword_1AC528220);
      sub_1AC4DAA08();
      v15 = sub_1AC51EDC8();
      v17 = v16;

      MEMORY[0x1AC5B4340](v15, v17);

      MEMORY[0x1AC5B4340](34, 0xE100000000000000);

      return;
    }

    if (v1 >= *(v2 + 16))
    {
      break;
    }

    v6 = *(v4 - 1);
    v7 = *v4;

    v8 = sub_1AC4D7710(v6, v7);
    v10 = v9;

    if (!v10)
    {

      v18 = sub_1AC4777D8();
      OUTLINED_FUNCTION_11(&type metadata for JSONEncodingError, v18);
      *v19 = 3;
      swift_willThrow();
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_14();
      sub_1AC4525C0();
      v5 = v13;
    }

    v11 = *(v5 + 16);
    if (v11 >= *(v5 + 24) >> 1)
    {
      sub_1AC4525C0();
      v5 = v14;
    }

    *(v5 + 16) = v11 + 1;
    v12 = v5 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v10;
    v4 += 2;
    ++v1;
  }

  __break(1u);
}

__n128 Google_Protobuf_FieldMask.init<A>(allFieldsOf:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = MEMORY[0x1E69E7CC0];
  v7 = xmmword_1AC51F990;
  sub_1AC4D8510(&v6, a2, a3, a4);

  sub_1AC4513F8(0, 0xC000000000000000);
  result = v7;
  *a1 = v6;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC4D8510(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1AC4D8564(a2, a3, a4);

  *a1 = v5;
  return result;
}

uint64_t sub_1AC4D8564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(v15);
  v3 = sub_1AC4D9754(v15[1]);

  v4 = *(v3 + 16);
  if (v4)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1AC4D0AD0(0, v4, 0);
    v5 = v14;
    v6 = (v3 + 65);
    do
    {
      v7 = *(v6 - 17);
      v8 = *(v6 - 9);
      if (*v6)
      {
        v7 = sub_1AC51F2E8();
        v8 = v9;
      }

      else
      {
      }

      v11 = *(v14 + 16);
      v10 = *(v14 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1AC4D0AD0(v10 > 1, v11 + 1, 1);
      }

      *(v14 + 16) = v11 + 1;
      v12 = v14 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v8;
      v6 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

void Google_Protobuf_FieldMask.init<A>(fieldNumbers:of:)(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = 0;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v8 == v7)
    {

      sub_1AC4513F8(0, 0xC000000000000000);
      *a5 = v9;
      *(a5 + 8) = xmmword_1AC51F990;
      return;
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    v10 = sub_1AC4D8858(*(a1 + 8 * v7 + 32), a2, a3, a4);
    if (!v11)
    {

      v18 = sub_1AC4D9B2C();
      OUTLINED_FUNCTION_11(&type metadata for FieldMaskError, v18);
      *v19 = 1;
      swift_willThrow();

      sub_1AC4513F8(0, 0xC000000000000000);

      return;
    }

    v12 = v10;
    v13 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_14();
      sub_1AC4525C0();
      v9 = v16;
    }

    v14 = *(v9 + 16);
    if (v14 >= *(v9 + 24) >> 1)
    {
      sub_1AC4525C0();
      v9 = v17;
    }

    *(v9 + 16) = v14 + 1;
    v15 = v9 + 16 * v14;
    *(v15 + 32) = v12;
    *(v15 + 40) = v13;
    ++v7;
  }

  __break(1u);
}

uint64_t sub_1AC4D8858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 8))(&v19, a2, a4, a3);
  v5 = v20;
  if (*(v20 + 16) && (v6 = sub_1AC45AA38(a1), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 80 * v6;
    v17 = *(v8 + 8);
    v18 = *v8;
    v9 = *(v8 + 16);
    v16 = *(v8 + 24);
    v10 = *(v8 + 56);
    v11 = *(v8 + 64);
    v12 = *(v8 + 72);
    v13 = *(v8 + 73);
    v14 = *(v8 + 32);
    sub_1AC4DB1E4(*v8, v17, v9, v16, v14);
    sub_1AC45AC88(v10, v11, v12, v13);

    sub_1AC45AC88(v10, v11, v12, v13);
    sub_1AC4DB20C(v18, v17, v9, v16, v14);
    sub_1AC45AE94(v10, v11, v12, v13);
    if (v13 == 1)
    {
      return sub_1AC51F2E8();
    }
  }

  else
  {

    return 0;
  }

  return v10;
}

uint64_t Google_Protobuf_FieldMask.addPath<A>(_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (static Message.isPathValid(_:)(a1, a2, a4, a5))
  {

    sub_1AC45604C(sub_1AC4525C0);
    v8 = *(*v5 + 16);
    result = sub_1AC455C34(v8, sub_1AC4525C0);
    v10 = *v5;
    *(v10 + 16) = v8 + 1;
    v11 = v10 + 16 * v8;
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;
    *v5 = v10;
  }

  else
  {
    v12 = sub_1AC4D9B2C();
    OUTLINED_FUNCTION_11(&type metadata for FieldMaskError, v12);
    *v13 = 0;
    return swift_willThrow();
  }

  return result;
}

double Google_Protobuf_FieldMask.canonical.getter@<D0>(uint64_t a1@<X8>)
{
  v17[0] = *v1;

  sub_1AC4D9B80(v17);
  v3 = *(v17[0] + 16);
  if (v3)
  {
    v4 = (v17[0] + 40);
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v6 = *(v5 + 16);
      if (!v6)
      {
        break;
      }

      v7 = (v5 + 16 + 16 * v6);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v4 - 1) == *v7 && *v4 == v8;
      if (!v10 && (sub_1AC51F3D8() & 1) == 0)
      {
        v17[0] = v9;
        v17[1] = v8;

        MEMORY[0x1AC5B4340](46, 0xE100000000000000);
        v11 = sub_1AC51EFA8();

        if ((v11 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
LABEL_18:
            sub_1AC4525C0();
            v5 = v15;
          }

LABEL_12:
          OUTLINED_FUNCTION_5_8();
          if (v13)
          {
            OUTLINED_FUNCTION_2_0(v12);
            sub_1AC4525C0();
            v5 = v14;
          }

          OUTLINED_FUNCTION_4_9();
          goto LABEL_15;
        }
      }

LABEL_15:
      v4 += 2;
      if (!--v3)
      {
        goto LABEL_20;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_20:

  *a1 = v5;
  result = 0.0;
  *(a1 + 8) = xmmword_1AC51F990;
  return result;
}

void Google_Protobuf_FieldMask.union(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v28 = MEMORY[0x1E69E7CD0];
  v27 = *v2;

  sub_1AC4865D0(v4);
  v5 = *(v27 + 16);
  if (v5)
  {
    v6 = 0;
    v26 = a2;
    v7 = MEMORY[0x1E69E7CC0];
    while (v6 < *(v27 + 16))
    {
      v8 = (v27 + 32 + 16 * v6);
      v10 = *v8;
      v9 = v8[1];
      if (*(v28 + 16))
      {
        sub_1AC51F468();

        OUTLINED_FUNCTION_84();
        sub_1AC51EEB8();
        v11 = sub_1AC51F4C8();
        v12 = ~(-1 << *(v28 + 32));
        while (1)
        {
          v13 = v11 & v12;
          if (((*(v28 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
          {
            break;
          }

          v14 = OUTLINED_FUNCTION_8_9(*(v28 + 48) + 16 * v13);
          v16 = v16 && v15 == v9;
          if (!v16)
          {
            v17 = OUTLINED_FUNCTION_3_11(v14, v15);
            v11 = v13 + 1;
            if ((v17 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_19;
        }
      }

      else
      {
      }

      OUTLINED_FUNCTION_84();
      sub_1AC4DA74C(v18, v19, v20);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_11_8();
        sub_1AC4525C0();
        v7 = v24;
      }

      v22 = *(v7 + 16);
      v21 = *(v7 + 24);
      if (v22 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_2_0(v21);
        sub_1AC4525C0();
        v7 = v25;
      }

      *(v7 + 16) = v22 + 1;
      v23 = v7 + 16 * v22;
      *(v23 + 32) = v10;
      *(v23 + 40) = v9;
LABEL_19:
      if (++v6 == v5)
      {

        a2 = v26;
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
LABEL_22:
    *a2 = v7;
    *(a2 + 8) = xmmword_1AC51F990;
  }
}

void Google_Protobuf_FieldMask.intersect(_:)(uint64_t a1@<X8>)
{
  v5 = *v1;

  v7 = sub_1AC4D90D4(v6);
  v29 = MEMORY[0x1E69E7CD0];
  v28 = *(v5 + 16);
  if (v28)
  {
    OUTLINED_FUNCTION_10_9();
    v8 = MEMORY[0x1E69E7CC0];
    v26 = v5;
    while (v3 < *(v5 + 16))
    {
      if (*(v7 + 16))
      {
        v9 = *(v27 + 16 * v3 + 8);
        sub_1AC51F468();

        OUTLINED_FUNCTION_84();
        sub_1AC51EEB8();
        sub_1AC51F4C8();
        OUTLINED_FUNCTION_12_9();
        do
        {
          OUTLINED_FUNCTION_9_9();
          if ((v10 & 1) == 0)
          {

            goto LABEL_27;
          }

          v11 = OUTLINED_FUNCTION_8_9(*(v7 + 48) + 16 * v2);
          v13 = v13 && v12 == v9;
        }

        while (!v13 && (OUTLINED_FUNCTION_3_11(v11, v12) & 1) == 0);
        if (*(v29 + 16))
        {
          sub_1AC51F468();
          OUTLINED_FUNCTION_84();
          sub_1AC51EEB8();
          sub_1AC51F4C8();
          OUTLINED_FUNCTION_7_7();
          while (1)
          {
            OUTLINED_FUNCTION_6_9();
            if ((v14 & 1) == 0)
            {
              break;
            }

            v15 = OUTLINED_FUNCTION_8_9(*(v29 + 48) + 16 * v5);
            v17 = v13 && v16 == v9;
            if (v17 || (OUTLINED_FUNCTION_3_11(v15, v16) & 1) != 0)
            {

              v5 = v26;
              goto LABEL_27;
            }
          }
        }

        OUTLINED_FUNCTION_84();
        sub_1AC4DA74C(v18, v19, v20);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_0_14();
          sub_1AC4525C0();
          v8 = v23;
        }

        v5 = v26;
        OUTLINED_FUNCTION_5_8();
        if (v22)
        {
          OUTLINED_FUNCTION_2_0(v21);
          sub_1AC4525C0();
          v8 = v24;
        }

        OUTLINED_FUNCTION_4_9();
      }

LABEL_27:
      if (++v3 == v28)
      {

        a1 = v25;
        goto LABEL_30;
      }
    }

    __break(1u);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
LABEL_30:
    *a1 = v8;
    *(a1 + 8) = xmmword_1AC51F990;
  }
}

uint64_t sub_1AC4D90D4(uint64_t a1)
{
  result = MEMORY[0x1AC5B45E0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1AC4DA74C(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void Google_Protobuf_FieldMask.subtract(_:)(uint64_t a1@<X8>)
{
  v5 = *v1;

  v7 = sub_1AC4D90D4(v6);
  v29 = MEMORY[0x1E69E7CD0];
  v28 = *(v5 + 16);
  if (v28)
  {
    OUTLINED_FUNCTION_10_9();
    v8 = MEMORY[0x1E69E7CC0];
    v26 = v5;
    while (v3 < *(v5 + 16))
    {
      v9 = *(v27 + 16 * v3 + 8);
      if (*(v7 + 16))
      {
        sub_1AC51F468();

        OUTLINED_FUNCTION_84();
        sub_1AC51EEB8();
        sub_1AC51F4C8();
        OUTLINED_FUNCTION_12_9();
        while (1)
        {
          OUTLINED_FUNCTION_9_9();
          if ((v10 & 1) == 0)
          {
            break;
          }

          v11 = OUTLINED_FUNCTION_8_9(*(v7 + 48) + 16 * v2);
          v13 = v13 && v12 == v9;
          if (v13 || (OUTLINED_FUNCTION_3_11(v11, v12) & 1) != 0)
          {

            goto LABEL_28;
          }
        }
      }

      else
      {
      }

      if (*(v29 + 16))
      {
        sub_1AC51F468();
        OUTLINED_FUNCTION_84();
        sub_1AC51EEB8();
        sub_1AC51F4C8();
        OUTLINED_FUNCTION_7_7();
        while (1)
        {
          OUTLINED_FUNCTION_6_9();
          if ((v14 & 1) == 0)
          {
            break;
          }

          v15 = OUTLINED_FUNCTION_8_9(*(v29 + 48) + 16 * v5);
          v17 = v13 && v16 == v9;
          if (v17 || (OUTLINED_FUNCTION_3_11(v15, v16) & 1) != 0)
          {

            v5 = v26;
            goto LABEL_28;
          }
        }
      }

      OUTLINED_FUNCTION_84();
      sub_1AC4DA74C(v18, v19, v20);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_0_14();
        sub_1AC4525C0();
        v8 = v23;
      }

      v5 = v26;
      OUTLINED_FUNCTION_5_8();
      if (v22)
      {
        OUTLINED_FUNCTION_2_0(v21);
        sub_1AC4525C0();
        v8 = v24;
      }

      OUTLINED_FUNCTION_4_9();
LABEL_28:
      if (++v3 == v28)
      {

        a1 = v25;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
LABEL_31:
    *a1 = v8;
    *(a1 + 8) = xmmword_1AC51F990;
  }
}

Swift::Bool __swiftcall Google_Protobuf_FieldMask.contains(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *v1;
  v5 = (*v1 + 40);
  v14 = -*(*v1 + 16);
  v6 = -1;
  while (1)
  {
    v7 = v14 + v6;
    if (v14 + v6 == -1)
    {
      goto LABEL_12;
    }

    if (++v6 >= *(v4 + 16))
    {
      break;
    }

    v9 = *(v5 - 1);
    v8 = *v5;
    swift_bridgeObjectRetain_n();
    MEMORY[0x1AC5B4340](46, 0xE100000000000000);
    v10 = sub_1AC51EFA8();

    if ((v10 & 1) != 0 || (v9 == countAndFlagsBits ? (v11 = v8 == object) : (v11 = 0), v11))
    {

LABEL_12:
      LOBYTE(a1._countAndFlagsBits) = v7 != -1;
      return a1._countAndFlagsBits;
    }

    v5 += 2;
    v12 = sub_1AC51F3D8();

    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return a1._countAndFlagsBits;
}

uint64_t Google_Protobuf_FieldMask.isValid<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *v4;
  (*(v12 + 16))(v13, v12);
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = v10;
  LOBYTE(a4) = sub_1AC4D9618(sub_1AC4DA898, v15, v11);
  (*(v8 + 8))(v10, a2);
  return a4 & 1;
}

BOOL sub_1AC4D9618(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v10[0] = *(v5 - 1);
    v10[1] = v7;

    v8 = a1(v10);

    if (v3)
    {
      break;
    }

    v5 += 2;
  }

  while ((v8 & 1) != 0);
  return v6 == 0;
}

uint64_t FieldMaskError.hashValue.getter()
{
  v1 = *v0;
  sub_1AC51F468();
  MEMORY[0x1AC5B48A0](v1);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4D9754(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v42 = MEMORY[0x1E69E7CC0];
  sub_1AC4D0AB0(0, v1, 0);
  v2 = v42;
  result = sub_1AC4DB234(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 64;
  v29 = v5;
  v30 = v1;
  v28 = v3 + 72;
  v31 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (*(v3 + 36) != v5)
    {
      goto LABEL_23;
    }

    v33 = v8;
    v34 = v5;
    v32 = v6;
    v11 = *(v3 + 56);
    v12 = v3;
    v13 = *(*(v3 + 48) + 8 * v7);
    v14 = (v11 + 80 * v7);
    memcpy(__dst, v14, 0x4AuLL);
    memcpy(__src, v14, sizeof(__src));
    v40 = v13;
    memcpy(v41, __src, 0x4AuLL);
    v35 = *&v41[5];
    v36 = *&v41[7];
    v15 = LOBYTE(v41[9]);
    v16 = BYTE1(v41[9]);
    sub_1AC4DB274(__dst, v37);
    sub_1AC45AC88(v36, *(&v36 + 1), v15, v16);
    result = sub_1AC4DB2D0(&v40);
    v42 = v2;
    v18 = *(v2 + 16);
    v17 = *(v2 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_1AC4D0AB0(v17 > 1, v18 + 1, 1);
      v2 = v42;
    }

    *(v2 + 16) = v18 + 1;
    v19 = v2 + 40 * v18;
    *(v19 + 32) = v35;
    *(v19 + 48) = v36;
    *(v19 + 64) = v15;
    *(v19 + 65) = v16;
    v20 = 1 << *(v12 + 32);
    if (v7 >= v20)
    {
      goto LABEL_24;
    }

    v3 = v12;
    v9 = v31;
    v21 = *(v31 + 8 * v10);
    if ((v21 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (*(v3 + 36) != v34)
    {
      goto LABEL_26;
    }

    v22 = v21 & (-2 << (v7 & 0x3F));
    if (v22)
    {
      v20 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v10 << 6;
      v24 = v10 + 1;
      v25 = (v28 + 8 * v10);
      while (v24 < (v20 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1AC4DB338(v7, v34, v32 & 1);
          v20 = __clz(__rbit64(v26)) + v23;
          goto LABEL_19;
        }
      }

      result = sub_1AC4DB338(v7, v34, v32 & 1);
    }

LABEL_19:
    v6 = 0;
    v8 = v33 + 1;
    v7 = v20;
    v5 = v29;
    if (v33 + 1 == v30)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1AC4D9B2C()
{
  result = qword_1EB559720;
  if (!qword_1EB559720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559720);
  }

  return result;
}

uint64_t sub_1AC4D9B80(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AC4DB1D0(v2);
  }

  v3 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_1AC4D9BEC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AC4D9BEC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AC51F3A8();
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
        v6 = sub_1AC51F098();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1AC4D9DA8(v7, v8, a1, v4);
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
    return sub_1AC4D9CE0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1AC4D9CE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1AC51F3D8();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1AC4D9DA8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1AC51F3D8();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1AC51F3D8()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1AC51F3D8() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC48EF10();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1AC48EF10();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1AC4DA3DC((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1AC4DA2B0(&v91, *a1, a3);
LABEL_102:
}

uint64_t sub_1AC4DA2B0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1AC4DA60C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1AC4DA3DC((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1AC4DA3DC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1AC48F564(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1AC51F3D8() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1AC48F564(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1AC51F3D8() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_1AC4DA580(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AC4DA60C(v3);
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
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    memmove((v8 + 32), (v8 + 48), 16 * v7);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

char *sub_1AC4DA620(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1AC4DA64C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558290, &qword_1AC528230);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

BOOL sub_1AC4DA74C(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_1AC51F468();
  sub_1AC51EEB8();
  v8 = sub_1AC51F4C8();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_1AC51F3D8() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_1AC4DACC8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

unint64_t sub_1AC4DA8D8()
{
  result = qword_1EB559728;
  if (!qword_1EB559728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559728);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FieldMaskError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1AC4DAA08()
{
  result = qword_1EB559738;
  if (!qword_1EB559738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB559730, &qword_1AC528220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559738);
  }

  return result;
}

uint64_t sub_1AC4DAA6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559740, &qword_1AC528228);
  result = sub_1AC51F2A8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1AC4F3BDC(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1AC51F468();
    sub_1AC51EEB8();
    result = sub_1AC51F4C8();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1AC4DACC8(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1AC4DAA6C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1AC4DAF88(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1AC51F468();
      sub_1AC51EEB8();
      result = sub_1AC51F4C8();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1AC51F3D8() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1AC4DAE30();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1AC51F3F8();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_1AC4DAE30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559740, &qword_1AC528228);
  v2 = *v0;
  v3 = sub_1AC51F298();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

uint64_t sub_1AC4DAF88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559740, &qword_1AC528228);
  result = sub_1AC51F2A8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_1AC51F468();

        sub_1AC51EEB8();
        result = sub_1AC51F4C8();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1AC4DB1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    return sub_1AC45AC88(a3, a4, a5, BYTE1(a5) & 1);
  }

  return result;
}

uint64_t sub_1AC4DB20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    return sub_1AC45AE94(a3, a4, a5, BYTE1(a5) & 1);
  }

  return result;
}

uint64_t sub_1AC4DB2D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559748, &qword_1AC528238);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AC4DB338(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

double Google_Protobuf_ListValue.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  *a2 = a1;
  result = 0.0;
  *(a2 + 8) = xmmword_1AC51F990;
  return result;
}

double Google_Protobuf_ListValue.init(values:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  result = 0.0;
  *(a2 + 8) = xmmword_1AC51F990;
  *a2 = a1;
  return result;
}

void sub_1AC4DB3C8(unsigned __int8 *a1)
{
  v3 = sub_1AC51EE28();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v83 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = *a1;
  v5 = a1[1];
  v85 = a1[2];
  v86 = v5;
  v84 = a1[3];
  v6 = *v1;
  v98 = MEMORY[0x1E69E7CC0];
  v99 = 256;
  sub_1AC45FA3C(91, 0xE100000000000000);
  v7 = 0;
  v8 = *(v6 + 16);
  v88 = v6;
  v89 = v8;
  v9 = v6 + 40;
  v10 = "";
  while (1)
  {
    if (v89 == v7)
    {
      sub_1AC45FA3C(93, 0xE100000000000000);
      v93 = v98;

      sub_1AC51EE18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
      sub_1AC45A8C0();
      sub_1AC51EE08();
      v66 = v65;

      if (v66)
      {

        return;
      }

      goto LABEL_30;
    }

    if (v7 >= *(v88 + 16))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    v90 = v7;
    v11 = *(v9 - 8);
    v12 = *v9;
    v13 = *(v9 + 8);
    v14 = *(v9 + 16);
    v16 = *(v9 + 24);
    v15 = *(v9 + 32);
    v17 = OUTLINED_FUNCTION_0_15();
    sub_1AC48541C(v17, v18, v19, v20);
    v91 = v16;
    v92 = v15;
    sub_1AC4578F4(v16, v15);
    sub_1AC45FD18(v10);
    if ((~v13 & 0x3000000000000000) == 0 && v14 == 255)
    {
      break;
    }

    switch((v13 >> 60) & 3 | (4 * (v14 & 1u)))
    {
      case 1uLL:
        if ((~v11 & 0x7FF0000000000000) != 0)
        {
          v41 = sub_1AC51F188();
          sub_1AC45FA3C(v41, v42);
          goto LABEL_21;
        }

        v81 = sub_1AC4777D8();
        OUTLINED_FUNCTION_11(&type metadata for JSONEncodingError, v81);
        *v82 = 6;
        swift_willThrow();
        v69 = OUTLINED_FUNCTION_0_15();
        goto LABEL_26;
      case 2uLL:
        v33 = OUTLINED_FUNCTION_1_15();
        sub_1AC485440(v33, v34, v35, v36);
        sub_1AC45AEA4(v11, v12);
        v37 = OUTLINED_FUNCTION_0_15();
        sub_1AC4854E8(v37, v38, v39, v40);
        sub_1AC4513F8(v91, v92);
        goto LABEL_18;
      case 3uLL:
        if (v11)
        {
          v21 = "true";
        }

        else
        {
          v21 = "false";
        }

        goto LABEL_20;
      case 4uLL:
        v97 = &off_1F211D2A8;
        v93 = v11;
        v94 = v12;
        v95 = v13;
        v96 = &type metadata for Google_Protobuf_Struct;
        __swift_project_boxed_opaque_existential_1(&v93, &type metadata for Google_Protobuf_Struct);
        v101 = v100;
        v102 = v86;
        v103 = v85;
        v104 = v84;
        v22 = OUTLINED_FUNCTION_0_15();
        sub_1AC48541C(v22, v23, v24, v25);
        v26 = OUTLINED_FUNCTION_1_15();
        sub_1AC485440(v26, v27, v28, v29);
        v30 = v87;
        v31 = sub_1AC4DC260(&v101);
        goto LABEL_16;
      case 5uLL:
        v97 = &off_1F2121388;
        v93 = v11;
        v94 = v12;
        v95 = v13 & 0xCFFFFFFFFFFFFFFFLL;
        v96 = &type metadata for Google_Protobuf_ListValue;
        __swift_project_boxed_opaque_existential_1(&v93, &type metadata for Google_Protobuf_ListValue);
        v101 = v100;
        v102 = v86;
        v103 = v85;
        v104 = v84;
        v43 = OUTLINED_FUNCTION_0_15();
        sub_1AC48541C(v43, v44, v45, v46);
        v47 = OUTLINED_FUNCTION_1_15();
        sub_1AC485440(v47, v48, v49, v50);
        v30 = v87;
        sub_1AC4DB3C8(&v101);
LABEL_16:
        v87 = v30;
        if (v30)
        {
          v73 = OUTLINED_FUNCTION_0_15();
          sub_1AC4854E8(v73, v74, v75, v76);
          v77 = OUTLINED_FUNCTION_0_15();
          sub_1AC4854E8(v77, v78, v79, v80);
          sub_1AC4513F8(v91, v92);

          __swift_destroy_boxed_opaque_existential_1(&v93);
          return;
        }

        v51 = v31;
        v52 = v32;
        __swift_destroy_boxed_opaque_existential_1(&v93);

        sub_1AC45FA3C(v51, v52);
        v53 = OUTLINED_FUNCTION_0_15();
        sub_1AC4854E8(v53, v54, v55, v56);
        sub_1AC4513F8(v91, v92);

LABEL_18:
        v57 = OUTLINED_FUNCTION_0_15();
        sub_1AC4854E8(v57, v58, v59, v60);
LABEL_22:
        v9 += 48;
        v7 = v90 + 1;
        v10 = ",";
        break;
      default:
        v21 = "null";
LABEL_20:
        sub_1AC45FD18(v21);
LABEL_21:
        v61 = OUTLINED_FUNCTION_0_15();
        sub_1AC4854E8(v61, v62, v63, v64);
        sub_1AC4513F8(v91, v92);
        goto LABEL_22;
    }
  }

  v67 = sub_1AC4777D8();
  OUTLINED_FUNCTION_11(&type metadata for JSONEncodingError, v67);
  *v68 = 5;
  swift_willThrow();
  v69 = OUTLINED_FUNCTION_1_15();
  v72 = -1;
LABEL_26:
  sub_1AC4854E8(v69, v70, v71, v72);
  sub_1AC4513F8(v91, v92);
}

void sub_1AC4DB858(uint64_t *a1)
{
  if ((sub_1AC457638() & 1) == 0)
  {
    v3 = sub_1AC458E74(0x5Bu);
    if (!v1)
    {
      sub_1AC458FC0(v3);
      if (sub_1AC459020(0x5Du))
      {
        sub_1AC45A9B0();
      }

      else
      {
        while (1)
        {
          sub_1AC4DE11C();
          v4 = OUTLINED_FUNCTION_3_12();
          sub_1AC48541C(v4, v5, v6, v7);
          sub_1AC4578F4(0, 0xC000000000000000);
          sub_1AC4D9A9C();
          v8 = *(*v18 + 16);
          sub_1AC4D9A0C(v8);
          v9 = *v18;
          *(v9 + 16) = v8 + 1;
          v10 = v9 + 48 * v8;
          *(v10 + 32) = 0;
          *(v10 + 40) = 0;
          *(v10 + 48) = 0x3000000000000000;
          *(v10 + 56) = -1;
          *(v10 + 64) = xmmword_1AC51F990;
          *v18 = v9;
          sub_1AC458F28();
          if (sub_1AC45E184())
          {
            v11 = a1[2];
            if (*(*a1 + v11) == 93)
            {
              break;
            }
          }

          sub_1AC458F28();
          if (!sub_1AC45E184())
          {
            v14 = sub_1AC477660();
            OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v14);
            *v15 = xmmword_1AC51FB60;
LABEL_12:
            swift_willThrow();
            sub_1AC4854E8(0, 0, 0x3000000000000000uLL, 255);
            goto LABEL_14;
          }

          v12 = a1[2];
          if (*(*a1 + v12) != 44)
          {
            v16 = sub_1AC477660();
            OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v16);
            *v17 = 0;
            v17[1] = 0;
            goto LABEL_12;
          }

          v13 = sub_1AC458F9C(v12, *a1, a1[1]);
          sub_1AC4854E8(0, 0, 0x3000000000000000uLL, 255);
          sub_1AC4513F8(0, 0xC000000000000000);
          a1[2] = v13;
        }

        a1[2] = sub_1AC458F9C(v11, *a1, a1[1]);
        sub_1AC45A9B0();
        sub_1AC4854E8(0, 0, 0x3000000000000000uLL, 255);
LABEL_14:
        sub_1AC4513F8(0, 0xC000000000000000);
      }
    }
  }
}

unint64_t Google_Protobuf_ListValue.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = *v2 + 48 * result;
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v9 = *(v3 + 56);
  *(a2 + 24) = v9;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  sub_1AC48541C(v4, v5, v6, v9);

  return sub_1AC4578F4(v7, v8);
}

double sub_1AC4DBB8C@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v12 = *a1;
  v13 = *(a1 + 1);
  Google_Protobuf_ListValue.subscript.getter(v4, &v8);
  v5 = v9;
  v6 = v10;
  *a3 = v8;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  result = v11[0];
  *(a3 + 32) = *v11;
  return result;
}

void sub_1AC4DBBF8(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 24);
  v9[0] = *a1;
  v9[1] = v4;
  v9[2] = v5;
  v10 = v8;
  v11 = v6;
  v12 = v7;
  sub_1AC48541C(v9[0], v4, v5, v8);
  sub_1AC4578F4(v6, v7);
  Google_Protobuf_ListValue.subscript.setter(v9, v3);
}

void Google_Protobuf_ListValue.subscript.setter(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = a1[4];
  v9 = a1[5];
  v10 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1AC488FC8(v10);
  v10 = v18;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v10 + 16) > a2)
  {
    v11 = v10 + 48 * a2;
    v12 = *(v11 + 32);
    v13 = *(v11 + 40);
    v14 = *(v11 + 48);
    v15 = *(v11 + 64);
    v16 = *(v11 + 72);
    *(v11 + 32) = v4;
    *(v11 + 40) = v5;
    *(v11 + 48) = v6;
    v17 = *(v11 + 56);
    *(v11 + 56) = v7;
    *(v11 + 64) = v8;
    *(v11 + 72) = v9;
    sub_1AC4854E8(v12, v13, v14, v17);
    sub_1AC4513F8(v15, v16);
    *v2 = v10;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t (*Google_Protobuf_ListValue.subscript.modify(uint64_t (**a1)(), unint64_t a2))()
{
  result = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = result;
  *(result + 6) = a2;
  *(result + 7) = v2;
  v6 = *v2;
  *(result + 8) = *v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v6 + 16) > a2)
  {
    v7 = result;
    v8 = v6 + 48 * a2;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v11 = *(v8 + 48);
    v12 = *(v8 + 64);
    v13 = *(v8 + 72);
    v14 = *(v8 + 56);
    *v7 = v9;
    *(v7 + 1) = v10;
    *(v7 + 2) = v11;
    *(v7 + 24) = v14;
    *(v7 + 4) = v12;
    *(v7 + 5) = v13;
    sub_1AC48541C(v9, v10, v11, v14);
    sub_1AC4578F4(v12, v13);
    return sub_1AC4DBDE8;
  }

  __break(1u);
  return result;
}

void sub_1AC4DBDE8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  if (a2)
  {
    sub_1AC48541C(**a1, (*a1)[1], (*a1)[2], *(*a1 + 24));
    sub_1AC4578F4(v4, v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v2[8];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AC488FC8(v2[8]);
      v6 = v12;
    }

    v7 = v2[6];
    if (*(v6 + 16) > v7)
    {
      OUTLINED_FUNCTION_2_9(v7);
      *v14 = v6;
      v8 = v2[4];
      v9 = v2[5];
      sub_1AC4854E8(*v2, v2[1], v2[2], *(v2 + 24));
      sub_1AC4513F8(v8, v9);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

  v10 = swift_isUniquelyReferenced_nonNull_native();
  v6 = v2[8];
  if ((v10 & 1) == 0)
  {
LABEL_13:
    sub_1AC488FC8(v6);
    v6 = v13;
  }

  v11 = v2[6];
  if (*(v6 + 16) <= v11)
  {
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_2_9(v11);
  *v14 = v6;
LABEL_9:

  free(v2);
}

uint64_t Google_Protobuf_Struct.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1AC51ED58();
  v49 = *(a1 + 16);
  if (v49)
  {
    v4 = 0;
    v5 = (a1 + 48);
    v48 = a1;
    while (v4 < *(a1 + 16))
    {
      v50 = v4;
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v9 = v5[1];
      v10 = v5[2];
      v11 = *(v5 + 24);
      v13 = v5[4];
      v12 = v5[5];

      v14 = OUTLINED_FUNCTION_54();
      sub_1AC48541C(v14, v15, v10, v11);
      sub_1AC4578F4(v13, v12);
      v16 = OUTLINED_FUNCTION_54();
      sub_1AC48541C(v16, v17, v10, v11);
      v51 = v13;
      v52 = v12;
      sub_1AC4578F4(v13, v12);
      swift_isUniquelyReferenced_nonNull_native();
      v18 = sub_1AC4EFE58(v7, v6);
      if (__OFADD__(*(v3 + 16), (v19 & 1) == 0))
      {
        goto LABEL_15;
      }

      v20 = v18;
      v21 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559750, &qword_1AC5294F0);
      if (sub_1AC51F338())
      {
        v22 = sub_1AC4EFE58(v7, v6);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_17;
        }

        v20 = v22;
      }

      if (v21)
      {

        OUTLINED_FUNCTION_2_10();
        v26 = v24 + v20 * v25;
        v27 = *v26;
        v28 = *(v26 + 8);
        v29 = *(v26 + 16);
        v30 = *(v26 + 32);
        v31 = *(v26 + 40);
        *v26 = v8;
        *(v26 + 8) = v9;
        *(v26 + 16) = v10;
        v32 = *(v26 + 24);
        *(v26 + 24) = v11;
        *(v26 + 32) = v51;
        *(v26 + 40) = v52;
        sub_1AC4854E8(v27, v28, v29, v32);
        sub_1AC4513F8(v30, v31);
        v33 = OUTLINED_FUNCTION_54();
        sub_1AC4854E8(v33, v34, v10, v11);
        sub_1AC4513F8(v51, v52);
      }

      else
      {
        *(v3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
        v35 = (*(v3 + 48) + 16 * v20);
        *v35 = v7;
        v35[1] = v6;
        OUTLINED_FUNCTION_2_10();
        v38 = v36 + v20 * v37;
        *v38 = v8;
        *(v38 + 8) = v9;
        *(v38 + 16) = v10;
        *(v38 + 24) = v11;
        *(v38 + 32) = v51;
        *(v38 + 40) = v52;
        v39 = OUTLINED_FUNCTION_54();
        sub_1AC4854E8(v39, v40, v41, v42);
        sub_1AC4513F8(v51, v52);
        v43 = *(v3 + 16);
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_16;
        }

        *(v3 + 16) = v45;
      }

      v4 = v50 + 1;
      v5 += 8;
      a1 = v48;
      if (v49 == v50 + 1)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1AC51F408();
    __break(1u);
  }

  else
  {
LABEL_13:

    *a2 = v3;
    *(a2 + 8) = xmmword_1AC51F990;
  }

  return result;
}

_BYTE *sub_1AC4DC260(_BYTE *a1)
{
  v3 = sub_1AC51EE28();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v6) = *a1;
  LOBYTE(v7) = a1[1];
  LOBYTE(v8) = a1[2];
  LOBYTE(a1) = a1[3];
  v49 = *v1;

  sub_1AC45A78C();
  v11 = v10;
  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  v14 = (v13 + 1);
  v40 = v5;
  if (v13 >= v12 >> 1)
  {
LABEL_33:
    sub_1AC45A78C();
    v11 = v37;
  }

  v15 = 0;
  v42 = 0;
  v41 = 0;
  v43 = 0;
  *(v11 + 16) = v14;
  *(v11 + v13 + 32) = 123;
  v46 = 0uLL;
  *&v47[8] = v11;
  v13 = v49 + 64;
  v16 = *(v49 + 64);
  v17 = 1 << *(v49 + 32);
  v18 = -1;
  *v47 = 256;
  *&v47[16] = 256;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v47[18] = v6;
  v47[19] = v7;
  v47[20] = v8;
  v47[21] = a1;
  v21 = 1;
  if (v19)
  {
    while (1)
    {
      v6 = v15;
LABEL_9:
      v22 = __clz(__rbit64(v19)) | (v6 << 6);
      v23 = *(v49 + 48) + 16 * v22;
      a1 = *v23;
      v7 = *(v23 + 8);
      v24 = (*(v49 + 56) + 48 * v22);
      v26 = v24[1];
      v25 = v24[2];
      v48[0] = *v24;
      v48[1] = v26;
      v48[2] = v25;
      if (v21)
      {
        *&v46 = ",";
        *(&v46 + 1) = 1;
        v43 = 2;
        *v47 = 2;

        sub_1AC4DD110(v48, &v44);
        v42 = ",";
        v41 = 1;
        v8 = &v46;
      }

      else
      {

        sub_1AC4DD110(v48, &v44);
        v8 = &v46;
        sub_1AC45FE50(v42, v41, v43);
      }

      sub_1AC45AEA4(a1, v7);

      sub_1AC45FE50(":", 1, 2);
      v27 = v47[21] ? 0x1000000 : 0;
      v28 = v47[20] ? 0x10000 : 0;
      v29 = v47[19] ? 256 : 0;
      v30 = sub_1AC4DE928(v29 | v47[18] | v28 | v27);
      if (v2)
      {
        break;
      }

      v19 &= v19 - 1;
      v14 = &v47[8];
      sub_1AC45FA3C(v30, v31);
      sub_1AC4DD16C(v48);
      v21 = 0;
      v15 = v6;
      if (!v19)
      {
        goto LABEL_6;
      }
    }

    sub_1AC4DD16C(v48);

    v44 = v46;
    v45[0] = *v47;
    *(v45 + 14) = *&v47[14];
    sub_1AC4DD1C0(&v44);
    return a1;
  }

  else
  {
    while (1)
    {
LABEL_6:
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v20)
      {
        break;
      }

      v19 = *(v13 + 8 * v6);
      ++v15;
      if (v19)
      {
        goto LABEL_9;
      }
    }

    v32 = *&v47[8];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AC45A78C();
      v32 = v38;
    }

    v33 = *(v32 + 16);
    if (v33 >= *(v32 + 24) >> 1)
    {
      sub_1AC45A78C();
      v32 = v39;
    }

    *(v32 + 16) = v33 + 1;
    *(v32 + v33 + 32) = 125;
    *&v44 = v32;

    sub_1AC51EE18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
    sub_1AC45A8C0();
    a1 = sub_1AC51EE08();
    v35 = v34;

    if (v35)
    {

      return a1;
    }

    __break(1u);
  }

  return result;
}

void sub_1AC4DC688(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1AC458E74(0x7Bu);
  if (!v2)
  {
    sub_1AC458FC0(v5);
    if (sub_1AC459020(0x7Du))
    {
      sub_1AC45A9B0();
      return;
    }

    while (1)
    {
      v6 = sub_1AC45993C();
      v8 = v7;
      sub_1AC458F28();
      if (!sub_1AC45E184())
      {
        break;
      }

      v9 = OUTLINED_FUNCTION_1_16();
      if (v11 != 58)
      {

        v22 = sub_1AC477660();
        OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v22);
        *v23 = 0;
        v23[1] = 0;
        goto LABEL_13;
      }

      a1[2] = sub_1AC458F9C(v9, v10, a1[1]);
      v42 = 0uLL;
      *&v43 = 0x3000000000000000;
      BYTE8(v43) = -1;
      v44 = xmmword_1AC51F990;
      sub_1AC4DE11C();
      v45[0] = v42;
      v45[1] = v43;
      v45[2] = v44;
      sub_1AC4DD110(v45, v41);
      swift_isUniquelyReferenced_nonNull_native();
      v41[0] = *v3;
      sub_1AC4F00B4(v45, v6, v8);

      *v3 = v41[0];
      sub_1AC458F28();
      if (sub_1AC45E184())
      {
        v12 = OUTLINED_FUNCTION_1_16();
        if (v14 == 125)
        {
          v28 = sub_1AC458F9C(v12, v13, a1[1]);
          a1[2] = v28;
          v36 = a1[11];
          v37 = __OFADD__(v36, 1);
          v38 = v36 + 1;
          if (v37)
          {
            __break(1u);
          }

          else
          {
            a1[11] = v38;
            if (a1[4] >= v38)
            {
LABEL_19:
              OUTLINED_FUNCTION_5_9(v28, v29, v30, v31, v32, v33, v34, v35, v39, v40, 0, 0xC000000000000000, v41[0], v41[1], v41[2], v41[3], v41[4], v41[5], v42, *(&v42 + 1), v43, SBYTE8(v43), v44, *(&v44 + 1));
              return;
            }
          }

          sub_1AC51F388();
          __break(1u);
          return;
        }
      }

      sub_1AC458F28();
      if (!sub_1AC45E184())
      {
        v24 = sub_1AC477660();
        OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v24);
        *v25 = xmmword_1AC51FB60;
LABEL_16:
        v28 = swift_willThrow();
        goto LABEL_19;
      }

      v15 = OUTLINED_FUNCTION_1_16();
      if (v17 != 44)
      {
        v26 = sub_1AC477660();
        OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v26);
        *v27 = 0;
        v27[1] = 0;
        goto LABEL_16;
      }

      v18 = sub_1AC458F9C(v15, v16, a1[1]);
      v19 = v44;
      sub_1AC4854E8(v42, *(&v42 + 1), v43, SBYTE8(v43));
      sub_1AC4513F8(v19, *(&v19 + 1));
      a1[2] = v18;
    }

    v20 = sub_1AC477660();
    OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v20);
    *v21 = xmmword_1AC51FB60;
LABEL_13:
    swift_willThrow();
  }
}

double Google_Protobuf_Struct.init(fields:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AC51ED58();

  result = 0.0;
  *(a2 + 8) = xmmword_1AC51F990;
  *a2 = a1;
  return result;
}

double Google_Protobuf_Struct.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(*v3 + 16) && (sub_1AC4EFE58(a1, a2), (v5 & 1) != 0))
  {
    OUTLINED_FUNCTION_2_10();
    v9 = v7 + v6 * v8;
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = *(v9 + 32);
    v14 = *(v9 + 40);
    *a3 = *v9;
    *(a3 + 8) = v11;
    *(a3 + 16) = v12;
    v15 = *(v9 + 24);
    *(a3 + 24) = v15;
    *(a3 + 32) = v13;
    *(a3 + 40) = v14;
    sub_1AC48541C(v10, v11, v12, v15);

    sub_1AC4578F4(v13, v14);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    result = 1.49166815e-154;
    *(a3 + 16) = xmmword_1AC528290;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
  }

  return result;
}

double sub_1AC4DCAC4@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  v10 = *a1;
  v11 = *(a1 + 1);
  Google_Protobuf_Struct.subscript.getter(v5, v4, v8);
  v6 = v8[1];
  *a3 = v8[0];
  a3[1] = v6;
  result = v9[0];
  a3[2] = *v9;
  return result;
}

void sub_1AC4DCB20(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  *&v10 = *a1;
  *(&v10 + 1) = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v9;

  sub_1AC4DD08C(v10, v5, v6, v7, v8, v9, sub_1AC48541C, sub_1AC4578F4);
  Google_Protobuf_Struct.subscript.setter(&v10, v3, v4);
}

void Google_Protobuf_Struct.subscript.setter(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 2);
  v7 = *(a1 + 24);
  if ((v6 & 0x3000000000000000) == 0x2000000000000000 && v7 == 255)
  {
    sub_1AC4DCF40(a2, a3, &v16);

    OUTLINED_FUNCTION_0_16();
    sub_1AC4DD08C(v8, v9, v10, v11, v12, v13, v14, sub_1AC4513F8);
  }

  else
  {
    v16 = *a1;
    v17 = v6;
    LOBYTE(v18) = v7;
    v19 = a1[2];
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1AC4F00B4(&v16, a2, a3);

    *v3 = v15;
  }
}

void (*Google_Protobuf_Struct.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0xD8uLL);
  *a1 = v7;
  v7[25] = a3;
  v7[26] = v3;
  v7[24] = a2;
  if (*(*v3 + 16) && (sub_1AC4EFE58(a2, a3), (v8 & 1) != 0))
  {
    OUTLINED_FUNCTION_2_10();
    v12 = v10 + v9 * v11;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 32);
    v17 = *(v12 + 40);
    v18 = *(v12 + 24);
    v7[12] = *v12;
    v7[13] = v14;
    v7[14] = v15;
    *(v7 + 120) = v18;
    v7[16] = v16;
    v7[17] = v17;
    sub_1AC48541C(v13, v14, v15, v18);
    sub_1AC4578F4(v16, v17);
  }

  else
  {
    v7[12] = 0;
    v7[13] = 0;
    *(v7 + 7) = xmmword_1AC528290;
    v7[16] = 0;
    v7[17] = 0;
  }

  return sub_1AC4DCDAC;
}

void sub_1AC4DCDAC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 200);
  v4 = *(*a1 + 192);
  v5 = *(*a1 + 112);
  if (a2)
  {
    *v2 = v2[6];
    v2[1] = v5;
    v2[2] = v2[8];

    sub_1AC4DD01C(v2, (v2 + 9));
    sub_1AC4C96CC(v2, v4, v3);
    OUTLINED_FUNCTION_0_16();
    sub_1AC4DD08C(v6, v7, v8, v9, v10, v11, v12, sub_1AC4513F8);
  }

  else
  {
    v2[3] = v2[6];
    v2[4] = v5;
    v2[5] = v2[8];

    sub_1AC4C96CC((v2 + 3), v4, v3);
  }

  free(v2);
}

double sub_1AC4DCE84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1AC4EFE58(a1, a2);
  if (v8)
  {
    v9 = v7;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_13();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559760, &unk_1AC5294E0);
    v11 = OUTLINED_FUNCTION_7_8(v10);
    OUTLINED_FUNCTION_6_10(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
    sub_1AC4CA7D4((*(v6 + 56) + 32 * v9), a3);
    sub_1AC51F358();
    *v4 = v6;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1AC4DCF40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1AC4EFE58(a1, a2);
  if (v8)
  {
    v9 = v7;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_13();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559750, &qword_1AC5294F0);
    v11 = OUTLINED_FUNCTION_7_8(v10);
    OUTLINED_FUNCTION_6_10(v11, v12, v13, v14, v15, v16, v17, v18, v25, v26);
    OUTLINED_FUNCTION_2_10();
    v21 = v19 + v9 * v20;
    v22 = *(v21 + 16);
    v23 = *(v21 + 24);
    *a3 = *v21;
    *(a3 + 16) = v22;
    *(a3 + 24) = v23;
    *(a3 + 32) = *(v21 + 32);
    sub_1AC51F358();
    *v4 = v6;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    result = 1.49166815e-154;
    *(a3 + 16) = xmmword_1AC528290;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
  }

  return result;
}

uint64_t sub_1AC4DD01C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559758, &qword_1AC5282A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AC4DD08C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t), void (*a8)(uint64_t, uint64_t))
{
  if ((a3 & 0x3000000000000000) != 0x2000000000000000 || a4 != 255)
  {
    a7(a1, a2);

    a8(a5, a6);
  }
}

uint64_t sub_1AC4DD214(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_36;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  while (1)
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!v5)
    {
      return v6;
    }

    v23 = MEMORY[0x1E69E7CC0];
    result = sub_1AC4D0918(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      break;
    }

    v8 = 0;
    v6 = v23;
    v9 = (v3 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 4 << v9;
    v11 = v3 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = v4;
    }

    v20 = v3;
    v21 = v11;
    v12 = 15;
    v19 = v10;
    while (1)
    {
      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v13 = v12;
      if ((v12 & 0xC) == v10)
      {
        v13 = sub_1AC488FF0(v12, v3, a2);
      }

      v14 = v13 >> 16;
      if (v13 >> 16 >= v21)
      {
        goto LABEL_34;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v16 = sub_1AC51EF88();
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v22[0] = v3;
        v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v16 = *(v22 + v14);
      }

      else
      {
        v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v3 & 0x1000000000000000) == 0)
        {
          v15 = sub_1AC51F308();
        }

        v16 = *(v15 + v14);
      }

      v23 = v6;
      v18 = *(v6 + 16);
      v17 = *(v6 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1AC4D0918(v17 > 1, v18 + 1, 1);
        v6 = v23;
      }

      *(v6 + 16) = v18 + 1;
      *(v6 + 8 * v18 + 32) = v16;
      v10 = v19;
      v3 = v20;
      if ((v12 & 0xC) == v19)
      {
        v12 = sub_1AC488FF0(v12, v20, a2);
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        if (v21 <= v12 >> 16)
        {
          goto LABEL_35;
        }

        v12 = sub_1AC51EF58();
      }

      else
      {
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      }

      ++v8;
      if (v4 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v5 = sub_1AC51EF48();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4DD45C(unint64_t a1, unint64_t a2)
{
  v6 = sub_1AC4DD214(a1, a2);
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8 <= 0x13)
  {
    goto LABEL_3;
  }

  v11 = *(v6 + 32);
  v10 = *(v6 + 48);
  v9 = v6 + 32;
  v12 = vdupq_n_s64(0xFFFFFFFFFFFFFFC6);
  v13 = vdupq_n_s64(0xFFFFFFFFFFFFFFF6);
  if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_u64(v13, vaddq_s64(v11, v12)), vcgtq_u64(v13, vaddq_s64(v10, v12))))))
  {
    goto LABEL_3;
  }

  if (*(v6 + 64) != 45)
  {
    goto LABEL_3;
  }

  v16 = 1000 * v11.i64[0] + 100 * v11.i64[1] + 10 * v10.i64[0] + v10.i64[1];
  v17 = v16 - 53328;
  if (v16 == 53328)
  {
    goto LABEL_3;
  }

  result = sub_1AC4DDAE8(*(v6 + 72), *(v6 + 80), 48, 57);
  if (v2)
  {

    return v4;
  }

  v18 = v7[2];
  if (v18 < 8)
  {
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v3 = result;
  if (v7[11] != 45 || (result - 13) <= 0xFFFFFFFFFFFFFFF3)
  {
    goto LABEL_3;
  }

  if (v18 == 8)
  {
    goto LABEL_43;
  }

  if (v18 < 0xA)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  result = sub_1AC4DDAE8(v7[12], v7[13], 48, 57);
  v21 = v7[2];
  if (v21 < 0xB)
  {
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v7[14] != 84)
  {
    goto LABEL_3;
  }

  v4 = result;
  LOBYTE(v20) = result - 32;
  if ((result - 32) <= 0xFFFFFFFFFFFFFFE0)
  {
    goto LABEL_3;
  }

  if (v21 == 11)
  {
    goto LABEL_95;
  }

  if (v21 < 0xD)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  result = sub_1AC4DDAE8(v7[15], v7[16], 48, 57);
  v21 = v7[2];
  if (v21 < 0xE)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v5 = result;
  v20 = v7[17];
  if (v20 != 58 || result >= 24)
  {
    goto LABEL_3;
  }

  if (v21 == 14)
  {
    goto LABEL_98;
  }

  if (v21 < 0x10)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  result = sub_1AC4DDAE8(v7[18], v7[19], 48, 57);
  v21 = v7[2];
  if (v21 < 0x11)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (v7[20] != 58 || result >= 60)
  {
    goto LABEL_3;
  }

  v52 = v8;
  if (v21 == 17)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v21 < 0x13)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v8 = result;
  result = sub_1AC4DDAE8(v7[21], v7[22], 48, 57);
  if (result >= 62)
  {
LABEL_3:

LABEL_4:
    sub_1AC477660();
    swift_allocError();
    *v14 = xmmword_1AC5282F0;
    swift_willThrow();
    return v4;
  }

  v18 = qword_1F2127780[v3 + 3];
  if ((v16 + 12208) % 0x190u)
  {
    if ((v16 & 3) != 0 || !((v16 + 12208) % 0x64u) || v3 <= 2)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_45:
  if (v3 < 3)
  {
    goto LABEL_47;
  }

LABEL_46:
  v23 = __OFADD__(v18++, 1);
  if (v23)
  {
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

LABEL_47:
  v23 = __OFADD__(v18, v4 - 1);
  v24 = v18 + v4 - 1;
  if (v23)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v25 = 365 * v17 - 719527;
  v23 = __OFADD__(v24, v25);
  v26 = v24 + v25;
  if (v23)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v23 = __OFADD__(v26, (v16 - 53329) >> 2);
  v27 = v26 + ((v16 - 53329) >> 2);
  if (v23)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v28 = (v16 + 12207);
  v29 = v28 / 0x64;
  v23 = __OFSUB__(v27, v29);
  v30 = v27 - v29;
  if (v23)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v31 = v28 / 0x190;
  v23 = __OFADD__(v30, v31);
  v32 = v30 + v31;
  if (v23)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v33 = 60 * v5;
  if ((v5 * 60) >> 64 != (60 * v5) >> 63)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v23 = __OFADD__(v33, v8);
  v34 = v33 + v8;
  if (v23)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v35 = 60 * v34;
  if ((v34 * 60) >> 64 != (60 * v34) >> 63)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v36 = v35 + result;
  if (__OFADD__(v35, result))
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v37 = 86400 * v32;
  if ((v32 * 86400) >> 64 != (86400 * v32) >> 63)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v4 = v37 + v36;
  if (__OFADD__(v37, v36))
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v38 = v7[2];
  if (v38 < 0x14)
  {
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v7[23] == 46)
  {
    v39 = 0;
    v40 = 100000000;
    for (i = 24; ; ++i)
    {
      v42 = i - 4;
      if (i - 4 >= v52)
      {
        break;
      }

      if (20 - v38 + i == 24)
      {
        goto LABEL_107;
      }

      v43 = v7[i];
      if ((v43 - 58) < 0xFFFFFFFFFFFFFFF6)
      {
        goto LABEL_69;
      }

      v44 = (v43 - 48) * v40;
      if (v44 < 0xFFFFFFFF80000000)
      {
        goto LABEL_108;
      }

      if (v44 > 0x7FFFFFFF)
      {
        goto LABEL_109;
      }

      v23 = __OFADD__(v39, v44);
      v39 += v44;
      if (v23)
      {
        goto LABEL_110;
      }

      v40 /= 10;
    }

    goto LABEL_3;
  }

  v42 = 19;
LABEL_69:
  if (v42 >= v38)
  {
    goto LABEL_125;
  }

  v45 = *(v9 + 8 * v42);
  if (v45 != 45 && v45 != 43)
  {
LABEL_89:

    if (v45 != 90)
    {
      goto LABEL_4;
    }

    v17 = v42 + 1;
    if (!__OFADD__(v42, 1))
    {
LABEL_91:
      if (v17 == v52 && (v4 - 0x3AFFF44180) >= 0xFFFFFFB68879C780)
      {
        return v4;
      }

      goto LABEL_4;
    }

    goto LABEL_130;
  }

  v17 = v42 + 6;
  if (__OFADD__(v42, 6))
  {
    goto LABEL_127;
  }

  if (v52 < v17)
  {
    goto LABEL_3;
  }

  if (v42 + 1 >= v38)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v42 + 2 >= v38)
  {
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  result = sub_1AC4DDAE8(*(v9 + 8 * (v42 + 1)), *(v9 + 8 * (v42 + 2)), 48, 57);
  v46 = v7[2];
  if (v42 + 4 >= v46)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (v42 + 5 >= v46)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v45 = result;
  result = sub_1AC4DDAE8(*(v9 + 8 * (v42 + 4)), *(v9 + 8 * (v42 + 5)), 48, 57);
  if (v45 > 13)
  {
    goto LABEL_3;
  }

  v8 = result;
  if (result > 59)
  {
    goto LABEL_3;
  }

  if (v42 + 3 >= v7[2])
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (*(v9 + 8 * (v42 + 3)) != 58)
  {
    goto LABEL_3;
  }

  v47 = *(v9 + 8 * v42);

  v21 = 3600 * v45;
  LOBYTE(v20) = (v45 * 3600) >> 64 != (3600 * v45) >> 63;
  if (v47 == 43)
  {
    if ((v45 * 3600) >> 64 != (3600 * v45) >> 63)
    {
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    v23 = __OFSUB__(v4, v21);
    v48 = v4 - v21;
    if (v23)
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    v49 = 60 * v8;
    if ((v8 * 60) >> 64 != (60 * v8) >> 63)
    {
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    v4 = v48 - v49;
    if (!__OFSUB__(v48, v49))
    {
      goto LABEL_91;
    }

    __break(1u);
    goto LABEL_89;
  }

LABEL_101:
  if (v20)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v23 = __OFADD__(v4, v21);
  v50 = v4 + v21;
  if (v23)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v51 = 60 * v8;
  if ((v8 * 60) >> 64 == (60 * v8) >> 63)
  {
    v4 = v50 + v51;
    if (!__OFADD__(v50, v51))
    {
      goto LABEL_91;
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_1AC4DDAE8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < result || a2 < a3 || a4 < a2)
  {
    sub_1AC477660();
    swift_allocError();
    *v7 = xmmword_1AC5282F0;
    return swift_willThrow();
  }

  v8 = 10 * result;
  if ((result * 10) >> 64 != (10 * result) >> 63)
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = __OFADD__(v8, a2);
  v10 = v8 + a2;
  if (v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = v10 - 528;
  if (__OFSUB__(v10, 528))
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

double Google_Protobuf_Timestamp.init(seconds:nanos:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *(a3 + 16) = xmmword_1AC51F990;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

unint64_t sub_1AC4DDBA4()
{
  result = sub_1AC45993C();
  if (!v1)
  {
    v4 = sub_1AC4DD45C(result, v3);
    v6 = v5;

    *v0 = v4;
    *(v0 + 8) = v6;
  }

  return result;
}

void Google_Protobuf_Timestamp.init(timeIntervalSince1970:)(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_17();
  if (!(v6 ^ v7 | v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v4 <= -9.22337204e18)
  {
    goto LABEL_10;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = round((v3 - v4) * 1000000000.0);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFLL) > v2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v8 <= -2147483650.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 >= 2147483650.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = OUTLINED_FUNCTION_1_17(v8);
  if (!__OFADD__(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_5_10(v9);
    OUTLINED_FUNCTION_4_10(v12);
    *(a1 + 16) = xmmword_1AC51F990;
    return;
  }

LABEL_15:
  __break(1u);
}

void Google_Protobuf_Timestamp.timeIntervalSinceReferenceDate.getter()
{
  v1 = *v0;
  sub_1AC51ECE8();
  OUTLINED_FUNCTION_0_17();
  if (!(v4 ^ v5 | v3))
  {
    __break(1u);
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 <= -9.22337204e18)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_3_14();
  if (!v4)
  {
    goto LABEL_9;
  }

  if (__OFSUB__(v1, v6))
  {
LABEL_10:
    __break(1u);
  }
}

void sub_1AC4DDDBC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (__OFADD__(*a1, *a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFADD__(*(a1 + 8), *(a2 + 8)))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_11();
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = ~v6;
  }

  if (!__OFADD__(v5, v9))
  {
    v10 = OUTLINED_FUNCTION_5_10(v4);
    *(a3 + 16) = xmmword_1AC51F990;
    OUTLINED_FUNCTION_4_10(v10);
    return;
  }

LABEL_10:
  __break(1u);
}

void - infix(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (__OFSUB__(*a1, *a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(*(a1 + 8), *(a2 + 8)))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_11();
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = ~v6;
  }

  if (!__OFADD__(v5, v9))
  {
    v10 = OUTLINED_FUNCTION_5_10(v4);
    *(a3 + 16) = xmmword_1AC51F990;
    OUTLINED_FUNCTION_4_10(v10);
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_1AC4DDEA0()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  if ((~v4 & 0x3000000000000000) != 0 || v5 != 255)
  {
    switch((v4 >> 60) & 3 | (4 * (v5 & 1u)))
    {
      case 1uLL:
        if ((~*&v2 & 0x7FF0000000000000) == 0)
        {
          sub_1AC4777D8();
          swift_allocError();
          v7 = 6;
          goto LABEL_4;
        }

        sub_1AC45F9B0(*v0);
        return;
      case 2uLL:
        v24 = OUTLINED_FUNCTION_4_11();
        sub_1AC485440(v24, v25, v26, v27);
        sub_1AC45AEA4(*&v2, v3);
        goto LABEL_16;
      case 3uLL:
        if (LOBYTE(v2))
        {
          v8 = "true";
          v9 = 4;
        }

        else
        {
          v8 = "false";
          v9 = 5;
        }

        goto LABEL_18;
      case 4uLL:
        v10 = OUTLINED_FUNCTION_4_11();
        v11 = v1;
        sub_1AC485440(v10, v12, v13, v14);
        OUTLINED_FUNCTION_2_12();
        v20 = v19 | v18;
        v21 = *&v2;
        v22 = v3;
        v23 = v4;
        goto LABEL_14;
      case 5uLL:
        v28 = OUTLINED_FUNCTION_4_11();
        v11 = v1;
        sub_1AC485440(v28, v29, v30, v31);
        OUTLINED_FUNCTION_3_15();
        v20 = v33 | v32;
        v23 = v4 & 0xCFFFFFFFFFFFFFFFLL;
        v21 = *&v2;
        v22 = v3;
LABEL_14:
        v34 = sub_1AC4DEB2C(v20, v21, v22, v23, v15, v16, v17);
        if (!v11)
        {
          sub_1AC45FA3C(v34, v35);
        }

LABEL_16:
        v36 = OUTLINED_FUNCTION_4_11();
        sub_1AC4854E8(v36, v37, v38, v5);
        break;
      default:
        v8 = "null";
        v9 = 4;
LABEL_18:
        sub_1AC45FE50(v8, v9, 2);
        break;
    }
  }

  else
  {
    sub_1AC4777D8();
    swift_allocError();
    v7 = 5;
LABEL_4:
    *v6 = v7;
    swift_willThrow();
  }
}

void sub_1AC4DE11C()
{
  v2 = v0;
  v3 = sub_1AC45DF14();
  if (v1)
  {
    return;
  }

  v5 = v3;
  v6 = v4;
  v7 = v3 == 110 && v4 == 0xE100000000000000;
  if (!v7 && (OUTLINED_FUNCTION_1_18(110) & 1) == 0)
  {
    v9 = v5 == 91 && v6 == 0xE100000000000000;
    if (v9 || (OUTLINED_FUNCTION_1_18(91) & 1) != 0)
    {

      v24 = MEMORY[0x1E69E7CC0];
      v10 = OUTLINED_FUNCTION_6_11();
      sub_1AC4DB858(v10);
      OUTLINED_FUNCTION_5_11();
      *v2 = v24;
      *(v2 + 8) = v26;
      *(v2 + 16) = v27 | 0x1000000000000000;
LABEL_17:
      *(v2 + 24) = 1;
      return;
    }

    v11 = v5 == 123 && v6 == 0xE100000000000000;
    if (v11 || (OUTLINED_FUNCTION_1_18(123) & 1) != 0)
    {

      v25 = sub_1AC51ED58();
      v12 = OUTLINED_FUNCTION_6_11();
      sub_1AC4DC688(v12);
      OUTLINED_FUNCTION_5_11();
      *v2 = v25;
      *(v2 + 8) = v26;
      *(v2 + 16) = v27;
      goto LABEL_17;
    }

    v13 = v5 == 116 && v6 == 0xE100000000000000;
    if (v13 || (OUTLINED_FUNCTION_1_18(116) & 1) != 0 || (v5 == 102 ? (v14 = v6 == 0xE100000000000000) : (v14 = 0), v14 || (OUTLINED_FUNCTION_1_18(102) & 1) != 0))
    {

      v15 = sub_1AC45D3B4() & 1;
      OUTLINED_FUNCTION_5_11();
      *v2 = v15;
      v16 = xmmword_1AC528330;
LABEL_35:
      *(v2 + 8) = v16;
      goto LABEL_9;
    }

    if (v5 == 34 && v6 == 0xE100000000000000)
    {
    }

    else
    {
      v18 = OUTLINED_FUNCTION_1_18(34);

      if ((v18 & 1) == 0)
      {
        sub_1AC45CC3C();
        v20 = v19;
        OUTLINED_FUNCTION_5_11();
        *v2 = v20;
        v16 = xmmword_1AC528320;
        goto LABEL_35;
      }
    }

    v21 = sub_1AC45993C();
    v23 = v22;
    OUTLINED_FUNCTION_5_11();
    *v2 = v21;
    *(v2 + 8) = v23;
    *(v2 + 16) = 0x2000000000000000;
    goto LABEL_9;
  }

  if (sub_1AC457638())
  {
    OUTLINED_FUNCTION_5_11();
    *v2 = xmmword_1AC528340;
    *(v2 + 16) = 0;
LABEL_9:
    *(v2 + 24) = 0;
    return;
  }

  sub_1AC477660();
  swift_allocError();
  *v8 = 0;
  v8[1] = 0;
  swift_willThrow();
}

double Google_Protobuf_Value.init(integerLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  OUTLINED_FUNCTION_0_18();
  *a2 = v3;
  *(a2 + 8) = xmmword_1AC528320;
  *(a2 + 24) = 0;
  result = 0.0;
  *(a2 + 32) = xmmword_1AC51F990;
  return result;
}

double Google_Protobuf_Value.init(nilLiteral:)@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_18();
  *a1 = xmmword_1AC528340;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = xmmword_1AC51F990;
  return result;
}

_BYTE *sub_1AC4DE4A8(_BYTE *a1)
{
  v4 = sub_1AC51EE28();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v5) = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = *(v1 + 2);
  v11 = *(v1 + 24);
  v20 = MEMORY[0x1E69E7CC0];
  v21 = 256;
  v16 = *v1;
  v17 = v10;
  v18 = v11;
  v19 = v1[2];
  v15[12] = v5;
  v15[13] = v7;
  v15[14] = v8;
  v15[15] = v9;
  sub_1AC4DDEA0();
  if (v2 || (*&v16 = v20, , sub_1AC51EE18(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0), sub_1AC45A8C0(), v6 = sub_1AC51EE08(), v13 = v12, result = , v13))
  {

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1AC4DE610@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_18();
  result = 0.0;
  *a1 = xmmword_1AC528340;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xC000000000000000;
  return result;
}

double Google_Protobuf_Value.init(numberValue:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  OUTLINED_FUNCTION_0_18();
  *a1 = a2;
  *(a1 + 8) = xmmword_1AC528320;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = xmmword_1AC51F990;
  return result;
}

double sub_1AC4DE6F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_0_18();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0x2000000000000000;
  *(a3 + 24) = 0;
  result = 0.0;
  *(a3 + 32) = xmmword_1AC51F990;
  return result;
}

double Google_Protobuf_Value.init(BOOLValue:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = a1 & 1;
  OUTLINED_FUNCTION_0_18();
  *a2 = v3;
  *(a2 + 8) = xmmword_1AC528330;
  *(a2 + 24) = 0;
  result = 0.0;
  *(a2 + 32) = xmmword_1AC51F990;
  return result;
}

double Google_Protobuf_Value.init(structValue:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v3 = *(a1 + 2);
  OUTLINED_FUNCTION_0_18();
  *a2 = v5;
  *(a2 + 16) = v3;
  *(a2 + 24) = 1;
  result = 0.0;
  *(a2 + 32) = xmmword_1AC51F990;
  return result;
}

double Google_Protobuf_Value.init(listValue:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2] | 0x1000000000000000;
  OUTLINED_FUNCTION_0_18();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = 1;
  result = 0.0;
  *(a2 + 32) = xmmword_1AC51F990;
  return result;
}

unint64_t sub_1AC4DE858()
{
  result = qword_1EB559768;
  if (!qword_1EB559768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559768);
  }

  return result;
}

unint64_t sub_1AC4DE8BC()
{
  result = qword_1EB559770;
  if (!qword_1EB559770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559770);
  }

  return result;
}

_BYTE *sub_1AC4DE928(int a1)
{
  v16 = a1;
  v3 = sub_1AC51EE28();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v23[3] = &type metadata for Google_Protobuf_Value;
  v23[4] = &off_1F211D618;
  v6 = swift_allocObject();
  v23[0] = v6;
  v7 = v1[1];
  v6[1] = *v1;
  v6[2] = v7;
  v6[3] = v1[2];
  v8 = __swift_project_boxed_opaque_existential_1(v23, &type metadata for Google_Protobuf_Value);
  v9 = v8[2];
  v10 = *(v8 + 24);
  v21 = MEMORY[0x1E69E7CC0];
  v22 = 256;
  v17 = *v8;
  v18 = v9;
  v19 = v10;
  v20 = *(v8 + 2);
  sub_1AC4DD110(v1, v15);
  sub_1AC4DDEA0();
  if (v2 || (*&v17 = v21, , sub_1AC51EE18(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0), sub_1AC45A8C0(), v5 = sub_1AC51EE08(), v12 = v11, result = , v12))
  {

    __swift_destroy_boxed_opaque_existential_1(v23);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC4DEB2C(int a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(int *))
{
  v12 = a1;
  v13[3] = a5;
  v13[4] = a6;
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  __swift_project_boxed_opaque_existential_1(v13, a5);

  sub_1AC4578F4(a3, a4);
  v10 = a7(&v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

uint64_t sub_1AC4DEBF4(uint64_t a1)
{
  v3 = v1;
  if (sub_1AC457638())
  {
    result = 0;
LABEL_7:
    *v3 = result & 1;
    return result;
  }

  if (*(a1 + 120) == 1)
  {
    result = sub_1AC4E5D54();
  }

  else
  {
    result = sub_1AC45D3B4();
  }

  if (!v2)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1AC4DEC64()
{
  v2 = v0;
  if (sub_1AC457638())
  {
    v3 = 0;
    v4 = 0xC000000000000000;
  }

  else
  {
    sub_1AC469AA4();
    if (v1)
    {
      return;
    }

    v3 = v5;
    v4 = v6;
  }

  sub_1AC4513F8(*v2, *(v2 + 8));
  *v2 = v3;
  *(v2 + 8) = v4;
}

void sub_1AC4DECD0()
{
  v2 = sub_1AC457638();
  v3 = 0;
  if ((v2 & 1) != 0 || (sub_1AC4E59E4(), !v1))
  {
    *v0 = v3;
  }
}

uint64_t *sub_1AC4DED24()
{
  if (sub_1AC457638())
  {
    result = 0;
LABEL_3:
    *v0 = result;
    return result;
  }

  result = sub_1AC457AA8();
  if (!v1)
  {
    if (result == result)
    {
      goto LABEL_3;
    }

    sub_1AC477660();
    swift_allocError();
    *v3 = xmmword_1AC5284F0;
    return swift_willThrow();
  }

  return result;
}

void sub_1AC4DEDB8()
{
  v2 = sub_1AC457638();
  v3 = 0;
  if ((v2 & 1) != 0 || (sub_1AC45CC3C(), !v1))
  {
    *v0 = v3;
  }
}

uint64_t sub_1AC4DEE0C()
{
  v2 = v0;
  if (sub_1AC457638())
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    result = sub_1AC45993C();
    if (v1)
    {
      return result;
    }

    v3 = result;
    v4 = v6;
  }

  *v2 = v3;
  v2[1] = v4;
  return result;
}

unint64_t sub_1AC4DEE78()
{
  if (sub_1AC457638())
  {
    result = 0;
LABEL_3:
    *v0 = result;
    return result;
  }

  result = sub_1AC45E964();
  if (!v1)
  {
    if (!HIDWORD(result))
    {
      goto LABEL_3;
    }

    sub_1AC477660();
    swift_allocError();
    *v3 = xmmword_1AC5284F0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AC4DEF0C(uint64_t a1, uint64_t (*a2)(void))
{
  if (sub_1AC457638())
  {
    result = 0;
  }

  else
  {
    result = a2();
    if (v3)
    {
      return result;
    }
  }

  *v2 = result;
  return result;
}

uint64_t sub_1AC4DEF90()
{
  v1 = sub_1AC51EE28();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_12_8();
  if ((*v0 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    sub_1AC51F178();
    OUTLINED_FUNCTION_5_12();
    return OUTLINED_FUNCTION_1_19();
  }

  OUTLINED_FUNCTION_0_19(MEMORY[0x1E69E7CC0]);
  sub_1AC45F9B0(v2);
  OUTLINED_FUNCTION_6_12();
  sub_1AC51EE18();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
  v4 = sub_1AC45A8C0();
  OUTLINED_FUNCTION_9_10(v4);
  OUTLINED_FUNCTION_5_12();

  if (v3)
  {

    return OUTLINED_FUNCTION_1_19();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4DF0D4()
{
  v1 = sub_1AC51EE28();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_12_8();
  if ((*v0 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    sub_1AC51F198();
    OUTLINED_FUNCTION_5_12();
    return OUTLINED_FUNCTION_1_19();
  }

  OUTLINED_FUNCTION_0_19(MEMORY[0x1E69E7CC0]);
  sub_1AC4E2E10(v2);
  OUTLINED_FUNCTION_6_12();
  sub_1AC51EE18();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
  v4 = sub_1AC45A8C0();
  OUTLINED_FUNCTION_9_10(v4);
  OUTLINED_FUNCTION_5_12();

  if (v3)
  {

    return OUTLINED_FUNCTION_1_19();
  }

  __break(1u);
  return result;
}

double Google_Protobuf_Int64Value.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 8) = xmmword_1AC51F990;
  *a2 = a1;
  return result;
}

uint64_t sub_1AC4DF218()
{
  OUTLINED_FUNCTION_8_10();
  sub_1AC4DF8C8();
  result = sub_1AC51F278();
  if ((v0 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_9();

    MEMORY[0x1AC5B4340](34, 0xE100000000000000);

    return v2;
  }

  return result;
}

uint64_t sub_1AC4DF2EC()
{
  OUTLINED_FUNCTION_8_10();
  result = sub_1AC51F3B8();
  if ((v0 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_9();

    MEMORY[0x1AC5B4340](34, 0xE100000000000000);

    return v2;
  }

  return result;
}

double Google_Protobuf_Int32Value.init(_:)@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 8) = xmmword_1AC51F990;
  *a2 = a1;
  return result;
}

double Google_Protobuf_BoolValue.init(_:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 8) = xmmword_1AC51F990;
  *a2 = a1;
  return result;
}

uint64_t sub_1AC4DF48C()
{
  if (*v0)
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

double Google_Protobuf_StringValue.init(_:)()
{
  OUTLINED_FUNCTION_3_16();

  result = 0.0;
  *(v2 + 16) = xmmword_1AC51F990;
  *v2 = v1;
  *(v2 + 8) = v0;
  return result;
}

double Google_Protobuf_StringValue.init(stringLiteral:)()
{
  OUTLINED_FUNCTION_3_16();

  *v2 = v1;
  *(v2 + 8) = v0;
  result = 0.0;
  *(v2 + 16) = xmmword_1AC51F990;
  return result;
}

void Google_Protobuf_BytesValue.init(_:)()
{
  OUTLINED_FUNCTION_3_16();
  *(v2 + 16) = xmmword_1AC51F990;
  sub_1AC4513F8(0, 0xC000000000000000);
  *v2 = v1;
  *(v2 + 8) = v0;
}

unint64_t sub_1AC4DF690()
{
  result = qword_1EB559778;
  if (!qword_1EB559778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559778);
  }

  return result;
}

unint64_t sub_1AC4DF6E8()
{
  result = qword_1EB559780;
  if (!qword_1EB559780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559780);
  }

  return result;
}

uint64_t sub_1AC4DF76C(uint64_t a1, void (*a2)(void))
{
  v3 = sub_1AC51EE28();
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_12_8();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_0_19(MEMORY[0x1E69E7CC0]);
  a2();
  OUTLINED_FUNCTION_6_12();
  sub_1AC51EE18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
  sub_1AC45A8C0();
  sub_1AC51EE08();
  OUTLINED_FUNCTION_5_12();

  if (v6)
  {

    return OUTLINED_FUNCTION_1_19();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1AC4DF8C8()
{
  result = qword_1EB557CA8;
  if (!qword_1EB557CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557CA8);
  }

  return result;
}

uint64_t sub_1AC4DF93C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC4DF95C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
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

  *(result + 72) = v3;
  return result;
}

uint64_t sub_1AC4DF9DC(double a1)
{
  MEMORY[0x1AC5B48A0]();
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  return MEMORY[0x1AC5B48D0](*&v2);
}

void sub_1AC4DFB10()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_261();
  sub_1AC51AA2C();
}

void sub_1AC4DFB3C()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_261();
  sub_1AC51A9D4();
}

uint64_t sub_1AC4DFB68()
{
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_261();
  return sub_1AC51ACF0(v0, v1);
}

uint64_t sub_1AC4DFB94()
{
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_261();
  return sub_1AC51ACEC(v0, v1);
}

void sub_1AC4DFBC0()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_261();
  sub_1AC51AA84();
}

void sub_1AC4DFBEC()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_261();
  sub_1AC51AAC4();
}

void sub_1AC4DFC18()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_261();
  sub_1AC51A964();
}

uint64_t sub_1AC4DFC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v8;
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4;
  MEMORY[0x1AC5B48A0](v10);
  OUTLINED_FUNCTION_53();
  v11 = sub_1AC51F038();
  v19 = v11;
  OUTLINED_FUNCTION_53();
  result = sub_1AC51F0B8();
  if (v11 != result)
  {
    v15 = *(v17 + 80);
    do
    {
      OUTLINED_FUNCTION_53();
      v13 = sub_1AC51F0A8();
      sub_1AC51F048();
      if (v13)
      {
        (*(v7 + 16))(v9, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, a3);
      }

      else
      {
        result = sub_1AC51F2F8();
        if (v14 != 8)
        {
          __break(1u);
          return result;
        }

        v18 = result;
        (*(v7 + 16))(v9, &v18, a3);
        swift_unknownObjectRelease();
      }

      sub_1AC51F0F8();
      v15(v16, a3, v17);
      (*(v7 + 8))(v9, a3);
      OUTLINED_FUNCTION_53();
      result = sub_1AC51F0B8();
      v11 = v19;
    }

    while (v19 != result);
  }

  return result;
}

uint64_t sub_1AC4DFEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x1AC5B48A0](v6);
  OUTLINED_FUNCTION_2_14();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1AC51ED98();
}

uint64_t sub_1AC4DFF90()
{
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x1AC5B48A0](v0);
  OUTLINED_FUNCTION_2_14();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_5_13();
  return sub_1AC51ED98();
}

uint64_t sub_1AC4E001C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x1AC5B48A0](v7);
  OUTLINED_FUNCTION_2_14();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_5_13();
  return sub_1AC51ED98();
}

BOOL static Internal.areAllInitialized(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  v3 = v1 + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v2 + 5;
    v5 = v2[3];
    v6 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v5);
    v7 = (*(v6 + 32))(v5, v6);
    v2 = v4;
  }

  while ((v7 & 1) != 0);
  return v3 == 0;
}

uint64_t static Internal.areAllInitialized<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB557FB8, qword_1AC5279F0);
  v45 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = sub_1AC51F228();
  v7 = MEMORY[0x1EEE9AC00](v43);
  v44 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v36 - v10;
  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  v36[0] = v4 + 32;
  v36[1] = v4 + 16;
  v39 = v4;
  v40 = a1;
  v41 = v4 + 8;
  v42 = (v9 + 32);

  v18 = 0;
  v37 = TupleTypeMetadata2;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_10:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v21 | (v19 << 6);
      v24 = v39;
      v23 = v40;
      v25 = v38;
      v26 = v45;
      (*(v39 + 16))(v38, *(v40 + 48) + *(v39 + 72) * v22, v45);
      sub_1AC47782C(*(v23 + 56) + 40 * v22, &v46);
      v27 = *(v37 + 48);
      v20 = v44;
      v28 = v25;
      TupleTypeMetadata2 = v37;
      (*(v24 + 32))(v44, v28, v26);
      sub_1AC465B44(&v46, v20 + v27);
      __swift_storeEnumTagSinglePayload(v20, 0, 1, TupleTypeMetadata2);
LABEL_11:
      (*v42)(v11, v20, v43);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, TupleTypeMetadata2);
      if (EnumTagSinglePayload == 1)
      {

        return EnumTagSinglePayload == 1;
      }

      sub_1AC465B44(&v11[*(TupleTypeMetadata2 + 48)], &v46);
      v31 = v47;
      v30 = v48;
      __swift_project_boxed_opaque_existential_1(&v46, v47);
      if (((*(v30 + 32))(v31, v30) & 1) == 0)
      {
        break;
      }

      v32 = OUTLINED_FUNCTION_0_20();
      v33(v32);
      result = __swift_destroy_boxed_opaque_existential_1(&v46);
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v34 = OUTLINED_FUNCTION_0_20();
    v35(v34);
    __swift_destroy_boxed_opaque_existential_1(&v46);
    return EnumTagSinglePayload == 1;
  }

  else
  {
LABEL_5:
    v20 = v44;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        __swift_storeEnumTagSinglePayload(v44, 1, 1, TupleTypeMetadata2);
        v15 = 0;
        goto LABEL_11;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        v18 = v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Internal(_BYTE *result, int a2, int a3)
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

uint64_t sub_1AC4E0760()
{
  v0 = sub_1AC477660();
  v1 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v0);
  return OUTLINED_FUNCTION_36(xmmword_1AC528930, v1, v2);
}

void sub_1AC4E07A4()
{
  v2 = OUTLINED_FUNCTION_34_3();
  v3 = 0;
  if ((v2 & 1) != 0 || (sub_1AC4E59E4(), !v0))
  {
    *v1 = v3;
  }
}

void sub_1AC4E07E4()
{
  v2 = OUTLINED_FUNCTION_34_3();
  v3 = 0;
  if ((v2 & 1) != 0 || (sub_1AC4E59E4(), !v0))
  {
    *v1 = v3;
    *(v1 + 4) = v2 & 1;
  }
}

void sub_1AC4E0838()
{
  if ((OUTLINED_FUNCTION_18_6() & 1) == 0)
  {
    OUTLINED_FUNCTION_17_0();
    sub_1AC458E74(v3);
    if (!v0 && (OUTLINED_FUNCTION_37_3() & 1) == 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_17_0();
        sub_1AC4E59E4();
        v5 = v4;
        sub_1AC4D9ACC();
        v6 = *(*v2 + 16);
        sub_1AC4D9A3C(v6);
        OUTLINED_FUNCTION_32_0(v6 + 1);
        *(v7 + 4 * v6 + 32) = v5;
        OUTLINED_FUNCTION_46_3();
        if (sub_1AC45E184())
        {
          v8 = OUTLINED_FUNCTION_1_16();
          if (v10 == 93)
          {
            break;
          }
        }

        sub_1AC458F28();
        if (!sub_1AC45E184())
        {
          v14 = sub_1AC477660();
          OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v14);
          *v15 = xmmword_1AC51FB60;
LABEL_11:
          swift_willThrow();
          return;
        }

        v11 = OUTLINED_FUNCTION_1_16();
        if (v13 != 44)
        {
          v16 = sub_1AC477660();
          v17 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v16);
          OUTLINED_FUNCTION_16_6(v17, v18);
          goto LABEL_11;
        }

        *(v1 + 16) = sub_1AC458F9C(v11, v12, *(v1 + 8));
      }

      *(v1 + 16) = sub_1AC458F9C(v8, v9, *(v1 + 8));
    }
  }
}

void sub_1AC4E096C()
{
  v2 = OUTLINED_FUNCTION_34_3();
  v3 = 0;
  if ((v2 & 1) != 0 || (sub_1AC45CC3C(), !v0))
  {
    *v1 = v3;
    *(v1 + 8) = v2 & 1;
  }
}

void sub_1AC4E09C0()
{
  if ((OUTLINED_FUNCTION_18_6() & 1) == 0)
  {
    OUTLINED_FUNCTION_17_0();
    sub_1AC458E74(v3);
    if (!v0 && (OUTLINED_FUNCTION_37_3() & 1) == 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_17_0();
        sub_1AC45CC3C();
        v5 = v4;
        sub_1AC4D9AE4();
        v6 = *(*v2 + 16);
        sub_1AC4D9A54(v6);
        OUTLINED_FUNCTION_32_0(v6 + 1);
        *(v7 + 8 * v6 + 32) = v5;
        OUTLINED_FUNCTION_46_3();
        if (sub_1AC45E184())
        {
          v8 = OUTLINED_FUNCTION_1_16();
          if (v10 == 93)
          {
            break;
          }
        }

        sub_1AC458F28();
        if (!sub_1AC45E184())
        {
          v14 = sub_1AC477660();
          OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v14);
          *v15 = xmmword_1AC51FB60;
LABEL_11:
          swift_willThrow();
          return;
        }

        v11 = OUTLINED_FUNCTION_1_16();
        if (v13 != 44)
        {
          v16 = sub_1AC477660();
          v17 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v16);
          OUTLINED_FUNCTION_16_6(v17, v18);
          goto LABEL_11;
        }

        *(v1 + 16) = sub_1AC458F9C(v11, v12, *(v1 + 8));
      }

      *(v1 + 16) = sub_1AC458F9C(v8, v9, *(v1 + 8));
    }
  }
}

uint64_t sub_1AC4E0AF4()
{
  result = OUTLINED_FUNCTION_18_6();
  if ((result & 1) == 0)
  {
    OUTLINED_FUNCTION_17_0();
    result = sub_1AC458E74(v4);
    if (!v0)
    {
      result = OUTLINED_FUNCTION_37_3();
      if ((result & 1) == 0)
      {
        while (1)
        {
          OUTLINED_FUNCTION_17_0();
          v5 = sub_1AC457AA8();
          v6 = v5;
          if (v5 != v5)
          {
            v15 = sub_1AC477660();
            OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v15);
            v17 = xmmword_1AC5284F0;
            goto LABEL_12;
          }

          sub_1AC4D9AB4();
          v7 = OUTLINED_FUNCTION_19_2();
          sub_1AC4D9A24(v7);
          OUTLINED_FUNCTION_32_0(v2 + 1);
          *(v8 + 4 * v2 + 32) = v6;
          OUTLINED_FUNCTION_46_3();
          if (sub_1AC45E184())
          {
            v9 = OUTLINED_FUNCTION_1_16();
            if (v11 == 93)
            {
              result = sub_1AC458F9C(v9, v10, *(v1 + 8));
              *(v1 + 16) = result;
              return result;
            }
          }

          sub_1AC458F28();
          if (!sub_1AC45E184())
          {
            break;
          }

          v12 = OUTLINED_FUNCTION_1_16();
          if (v14 != 44)
          {
            v19 = sub_1AC477660();
            v20 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v19);
            OUTLINED_FUNCTION_16_6(v20, v21);
            return swift_willThrow();
          }

          *(v1 + 16) = sub_1AC458F9C(v12, v13, *(v1 + 8));
        }

        v18 = sub_1AC477660();
        OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v18);
        v17 = xmmword_1AC51FB60;
LABEL_12:
        *v16 = v17;
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_1AC4E0CC0(uint64_t a1, uint64_t (*a2)(void))
{
  if (OUTLINED_FUNCTION_34_3())
  {
    result = 0;
  }

  else
  {
    result = a2();
    if (v2)
    {
      return result;
    }
  }

  *v3 = result;
  return result;
}

uint64_t sub_1AC4E0DC4(uint64_t a1, uint64_t (*a2)(void))
{
  if (OUTLINED_FUNCTION_34_3())
  {
    result = 0;
  }

  else
  {
    result = a2();
    if (v2)
    {
      return result;
    }
  }

  *v3 = result;
  return result;
}

uint64_t sub_1AC4E0E18(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = OUTLINED_FUNCTION_34_3();
  if (v5)
  {
    result = 0;
  }

  else
  {
    result = a2();
    if (v2)
    {
      return result;
    }
  }

  *v3 = result;
  *(v3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1AC4E0E78()
{
  result = OUTLINED_FUNCTION_18_6();
  if ((result & 1) == 0)
  {
    OUTLINED_FUNCTION_17_0();
    result = sub_1AC458E74(v4);
    if (!v0)
    {
      result = OUTLINED_FUNCTION_37_3();
      if ((result & 1) == 0)
      {
        while (1)
        {
          OUTLINED_FUNCTION_17_0();
          v5 = sub_1AC45D3B4();
          sub_1AC4D9B14();
          v6 = OUTLINED_FUNCTION_19_2();
          sub_1AC4D9A84(v6);
          OUTLINED_FUNCTION_32_0(v2 + 1);
          *(v7 + v2 + 32) = v5 & 1;
          OUTLINED_FUNCTION_46_3();
          if (sub_1AC45E184())
          {
            v8 = OUTLINED_FUNCTION_1_16();
            if (v10 == 93)
            {
              break;
            }
          }

          sub_1AC458F28();
          if (!sub_1AC45E184())
          {
            v14 = sub_1AC477660();
            OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v14);
            *v15 = xmmword_1AC51FB60;
            return swift_willThrow();
          }

          v11 = OUTLINED_FUNCTION_1_16();
          if (v13 != 44)
          {
            v16 = sub_1AC477660();
            v17 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v16);
            OUTLINED_FUNCTION_16_6(v17, v18);
            return swift_willThrow();
          }

          *(v1 + 16) = sub_1AC458F9C(v11, v12, *(v1 + 8));
        }

        result = sub_1AC458F9C(v8, v9, *(v1 + 8));
        *(v1 + 16) = result;
      }
    }
  }

  return result;
}

void sub_1AC4E0FA0()
{
  OUTLINED_FUNCTION_60();
  if ((OUTLINED_FUNCTION_18_6() & 1) == 0)
  {
    OUTLINED_FUNCTION_17_0();
    sub_1AC458E74(v3);
    if (!v0 && (OUTLINED_FUNCTION_37_3() & 1) == 0)
    {
      sub_1AC458F28();
      if (sub_1AC45E184())
      {
        v4 = *v1;
        v5 = v1[1];
        v6 = v5 - *v1;
        if (!*v1)
        {
          v6 = 0;
        }

        v22 = v6;
        while (1)
        {
          sub_1AC469B3C(v4, v5, v1 + 2, v22);
          v9 = v7;
          v10 = v8;
          sub_1AC4578F4(v7, v8);
          sub_1AC45846C();
          v11 = *(*v2 + 16);
          sub_1AC458484(v11);
          OUTLINED_FUNCTION_32_0(v11 + 1);
          v13 = v12 + 16 * v11;
          *(v13 + 32) = v9;
          *(v13 + 40) = v10;
          *v2 = v12;
          if (OUTLINED_FUNCTION_37_3())
          {
            break;
          }

          OUTLINED_FUNCTION_17_0();
          sub_1AC458E74(v14);
          v15 = OUTLINED_FUNCTION_47_3();
          sub_1AC4513F8(v15, v16);
          sub_1AC458F28();
          if (!sub_1AC45E184())
          {
            goto LABEL_12;
          }
        }

        v20 = OUTLINED_FUNCTION_47_3();
        sub_1AC4513F8(v20, v21);
      }

      else
      {
LABEL_12:
        v17 = sub_1AC477660();
        v18 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v17);
        OUTLINED_FUNCTION_36(xmmword_1AC51FB60, v18, v19);
      }
    }
  }

  OUTLINED_FUNCTION_61();
}

void sub_1AC4E10D4()
{
  OUTLINED_FUNCTION_60();
  v3 = v0;
  v56 = v5;
  v57 = v4;
  v7 = v6;
  v59 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  OUTLINED_FUNCTION_5();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_39_2();
  v17 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_26_2();
  v55 = v18;
  if ((sub_1AC457638() & 1) == 0)
  {
    OUTLINED_FUNCTION_17_0();
    sub_1AC458E74(v19);
    if (!v1 && (OUTLINED_FUNCTION_37_3() & 1) == 0)
    {
      v54 = v14 + 16;
      v52 = v14 + 32;
      v53 = (v14 + 8);
      v51 = (v9 + 8);
      v20 = v56;
      while (1)
      {
        sub_1AC458F28();
        if (sub_1AC45E184() && *(*v3 + v3[2]) == 110 && (sub_1AC459FB0(&unk_1F2127850) & 1) != 0)
        {
          v21 = dynamic_cast_existential_1_conditional(v7, v7, &protocol descriptor for _CustomJSONCodable);
          if (!v21)
          {
            v43 = sub_1AC477660();
            v44 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v43);
            OUTLINED_FUNCTION_36(xmmword_1AC528940, v44, v45);
            break;
          }

          v23 = v21;
          v24 = *(v22 + 24);
          v48 = v22 + 24;
          v49 = v24;
          v25 = v22;
          sub_1AC51F228();
          v50 = &v46;
          OUTLINED_FUNCTION_3_0();
          v46 = v27;
          v47 = v26;
          OUTLINED_FUNCTION_65();
          MEMORY[0x1EEE9AC00](v28);
          v29 = OUTLINED_FUNCTION_39_3();
          v49(v29, v25);
          OUTLINED_FUNCTION_19_5(v20);
          if (v30)
          {
            (*(v46 + 8))(v20, v47);
            OUTLINED_FUNCTION_20_6();
          }

          else
          {
            v58[3] = v23;
            v58[4] = v25;
            __swift_allocate_boxed_opaque_existential_1(v58);
            OUTLINED_FUNCTION_13_7();
            (*(v39 + 32))();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC8, &unk_1AC528980);
          v40 = v55;
          swift_dynamicCast();
          v41 = OUTLINED_FUNCTION_26_5();
          v42(v41, v40, v7);
          sub_1AC51F108();
          sub_1AC51F0D8();
          (*v53)(v40, v7);
          v20 = v56;
        }

        else
        {
          OUTLINED_FUNCTION_17_0();
          sub_1AC46A6E0(v31, v32, v33);
          OUTLINED_FUNCTION_42_0(v12, 1, v7);
          if (v30)
          {
            (*v51)(v12, v59);
          }

          else
          {
            v34 = OUTLINED_FUNCTION_47_3();
            v35(v34);
            v36 = OUTLINED_FUNCTION_26_5();
            v37(v36, v2, v7);
            sub_1AC51F108();
            sub_1AC51F0D8();
            (*v53)(v2, v7);
          }
        }

        if (OUTLINED_FUNCTION_37_3())
        {
          break;
        }

        OUTLINED_FUNCTION_17_0();
        sub_1AC458E74(v38);
      }
    }
  }

  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_61();
}

void sub_1AC4E153C()
{
  OUTLINED_FUNCTION_60();
  v2 = v0;
  v114 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v112 = v10;
  OUTLINED_FUNCTION_5();
  v108 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12_8();
  v111 = v14 - v13;
  OUTLINED_FUNCTION_38_3();
  v118 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  v110 = v18 - v19;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v20);
  v113 = v99 - v21;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_26_2();
  v117 = v23;
  v24 = *(v5 + 8);
  v115 = v9;
  v116 = v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_6();
  v109 = v29 - v30;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_26_2();
  v121 = v32;
  OUTLINED_FUNCTION_38_3();
  v120 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_6();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_26_2();
  v119 = v40;
  if (sub_1AC457638())
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_53_0();
  sub_1AC458E74(v41);
  if (v1)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_53_0();
  sub_1AC458FC0(v42);
  if (sub_1AC459020(0x7Du))
  {
    sub_1AC45A9B0();
LABEL_32:
    OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_61();
    return;
  }

  v107 = v116 + 32;
  v104 = (v27 + 32);
  v105 = (v34 + 16);
  v102 = (v16 + 16);
  v100 = (v108 + 32);
  v99[3] = v27 + 16;
  v99[2] = v108 + 16;
  v99[1] = v108 + 8;
  v43 = (v16 + 8);
  v103 = v27 + 8;
  v106 = (v34 + 8);
  v101 = v43;
  while (1)
  {
    OUTLINED_FUNCTION_53_0();
    v44 = sub_1AC45DF14();
    v46 = v44 == 34 && v45 == 0xE100000000000000;
    if (v46)
    {
    }

    else
    {
      v47 = OUTLINED_FUNCTION_35_3(v44);

      if ((v47 & 1) == 0)
      {
        v90 = sub_1AC477660();
        v91 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v90);
        OUTLINED_FUNCTION_36(xmmword_1AC528960, v91, v92);
        goto LABEL_32;
      }
    }

    *(v2 + 120) = 1;
    v48 = v119;
    __swift_storeEnumTagSinglePayload(v119, 1, 1, AssociatedTypeWitness);
    OUTLINED_FUNCTION_49_2();
    v49();
    (*v105)(v38, v48, v120);
    OUTLINED_FUNCTION_42_0(v38, 1, AssociatedTypeWitness);
    if (v46)
    {
      v69 = *v106;
      (*v106)(v38, v120);
      v70 = sub_1AC477660();
      v71 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v70);
      OUTLINED_FUNCTION_36(xmmword_1AC528970, v71, v72);
      v73 = OUTLINED_FUNCTION_98();
      (v69)(v73);
      goto LABEL_32;
    }

    (*v104)(v121, v38, AssociatedTypeWitness);
    *(v2 + 120) = 0;
    sub_1AC458F28();
    if (!sub_1AC45E184())
    {
      v74 = sub_1AC477660();
      OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v74);
      *v75 = xmmword_1AC51FB60;
LABEL_27:
      swift_willThrow();
      v79 = OUTLINED_FUNCTION_9_11();
      v80(v79);
      OUTLINED_FUNCTION_44_3();
      v82 = v48;
LABEL_31:
      v81(v82, v120);
      goto LABEL_32;
    }

    v50 = *v2;
    v51 = *(v2 + 16);
    if (*(*v2 + v51) != 58)
    {
      v76 = sub_1AC477660();
      v77 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v76);
      OUTLINED_FUNCTION_16_6(v77, v78);
      v48 = v119;
      goto LABEL_27;
    }

    v52 = *v2;
    v108 = *(v2 + 8);
    *(v2 + 16) = sub_1AC458F9C(v51, v52, v108);
    __swift_storeEnumTagSinglePayload(v117, 1, 1, v7);
    OUTLINED_FUNCTION_53_0();
    sub_1AC46A334();
    v53 = v113;
    v54 = v118;
    (*v102)();
    OUTLINED_FUNCTION_42_0(v53, 1, v7);
    if (v46)
    {
      (*v43)(v53, v54);
    }

    else
    {
      v55 = v53;
      v56 = v111;
      (*v100)(v111, v55, v7);
      OUTLINED_FUNCTION_14_8();
      v57(v109, v121, AssociatedTypeWitness);
      OUTLINED_FUNCTION_14_8();
      v58(v110, v56, v7);
      OUTLINED_FUNCTION_43_4();
      __swift_storeEnumTagSinglePayload(v59, v60, v61, v7);
      swift_getAssociatedConformanceWitness();
      sub_1AC51ED88();
      v43 = v101;
      sub_1AC51EDA8();
      OUTLINED_FUNCTION_14_8();
      v62(v56, v7);
    }

    sub_1AC458F28();
    if (sub_1AC45E184())
    {
      v63 = *(v2 + 16);
      if (*(v50 + v63) == 125)
      {
        break;
      }
    }

    sub_1AC458F28();
    if (!sub_1AC45E184())
    {
      v83 = sub_1AC477660();
      OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v83);
      *v84 = xmmword_1AC51FB60;
LABEL_30:
      swift_willThrow();
      (*v43)(v117, v118);
      v88 = OUTLINED_FUNCTION_9_11();
      v89(v88);
      OUTLINED_FUNCTION_44_3();
      v82 = v119;
      goto LABEL_31;
    }

    v64 = *(v2 + 16);
    if (*(v50 + v64) != 44)
    {
      v85 = sub_1AC477660();
      v86 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v85);
      OUTLINED_FUNCTION_16_6(v86, v87);
      goto LABEL_30;
    }

    v65 = sub_1AC458F9C(v64, v50, v108);
    (*v43)(v117, v118);
    v66 = OUTLINED_FUNCTION_9_11();
    v67(v66);
    OUTLINED_FUNCTION_44_3();
    v68(v119, v120);
    *(v2 + 16) = v65;
  }

  *(v2 + 16) = sub_1AC458F9C(v63, v50, v108);
  v93 = *(v2 + 88);
  v94 = __OFADD__(v93, 1);
  v95 = v93 + 1;
  if (v94)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 88) = v95;
    v96 = v119;
    if (*(v2 + 32) >= v95)
    {
      (*v43)(v117, v118);
      v97 = OUTLINED_FUNCTION_9_11();
      v98(v97);
      OUTLINED_FUNCTION_44_3();
      v82 = v96;
      goto LABEL_31;
    }
  }

  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_11_9();
  __break(1u);
}

void sub_1AC4E1DA0()
{
  OUTLINED_FUNCTION_60();
  v2 = v0;
  v131 = v3;
  v5 = v4;
  v129 = v6;
  OUTLINED_FUNCTION_5();
  v125 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_8();
  v128 = v10 - v9;
  v136 = *(v11 + 8);
  v134 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  v127 = v17 - v18;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_26_2();
  v132 = v20;
  OUTLINED_FUNCTION_38_3();
  v133 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_6();
  v126 = v24 - v25;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v26);
  v130 = &v115 - v27;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_26_2();
  v137 = v29;
  OUTLINED_FUNCTION_38_3();
  v135 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_6();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_26_2();
  v138 = v37;
  if ((sub_1AC457638() & 1) != 0 || (OUTLINED_FUNCTION_32_4(), sub_1AC458E74(v38), v1))
  {
LABEL_32:
    OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_61();
    return;
  }

  OUTLINED_FUNCTION_32_4();
  sub_1AC458FC0(v39);
  if (sub_1AC459020(0x7Du))
  {
    sub_1AC45A9B0();
    goto LABEL_32;
  }

  v123 = v31 + 16;
  v124 = v136 + 32;
  v121 = (v22 + 16);
  v122 = v15 + 32;
  v117 = (v15 + 16);
  v118 = (v125 + 4);
  v116 = v125 + 2;
  v115 = v125 + 1;
  v125 = (v22 + 8);
  v40 = (v31 + 8);
  v119 = v40;
  v120 = v15 + 8;
  while (1)
  {
    OUTLINED_FUNCTION_32_4();
    v41 = sub_1AC45DF14();
    v43 = v132;
    v44 = v41 == 34 && v42 == 0xE100000000000000;
    if (v44)
    {
    }

    else
    {
      v45 = OUTLINED_FUNCTION_35_3(v41);

      if ((v45 & 1) == 0)
      {
        v107 = sub_1AC477660();
        v108 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v107);
        OUTLINED_FUNCTION_36(xmmword_1AC528960, v108, v109);
        goto LABEL_32;
      }
    }

    *(v2 + 120) = 1;
    v46 = OUTLINED_FUNCTION_7_11();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, AssociatedTypeWitness);
    OUTLINED_FUNCTION_42_2();
    OUTLINED_FUNCTION_49_2();
    v49();
    *(v2 + 120) = 0;
    sub_1AC458F28();
    v50 = sub_1AC45E184();
    v51 = v135;
    if (!v50)
    {
      v89 = sub_1AC477660();
      OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v89);
      *v90 = xmmword_1AC51FB60;
LABEL_24:
      swift_willThrow();
LABEL_31:
      (*v40)(v138, v51);
      goto LABEL_32;
    }

    v52 = OUTLINED_FUNCTION_8_12();
    if (v54 != 58)
    {
      v91 = sub_1AC477660();
      v92 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v91);
      OUTLINED_FUNCTION_16_6(v92, v93);
      goto LABEL_24;
    }

    *(v2 + 16) = sub_1AC458F9C(v52, v53, *(v2 + 8));
    v55 = OUTLINED_FUNCTION_7_11();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v5);
    OUTLINED_FUNCTION_32_4();
    sub_1AC45B744(v58, v59, v60, v61, v62, v63, v64, v65, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
    OUTLINED_FUNCTION_44_3();
    v66(v35, v138, v51);
    OUTLINED_FUNCTION_42_0(v35, 1, AssociatedTypeWitness);
    v67 = v133;
    if (v44)
    {
      (*v40)(v35, v51);
      v94 = v125;
LABEL_27:
      v97 = sub_1AC477660();
      v98 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v97);
      OUTLINED_FUNCTION_36(xmmword_1AC528970, v98, v99);
      (*v94)(v137, v67);
      goto LABEL_31;
    }

    v68 = OUTLINED_FUNCTION_26_5();
    v69(v68, v35, AssociatedTypeWitness);
    v70 = v130;
    (*v121)(v130, v137, v67);
    OUTLINED_FUNCTION_42_0(v70, 1, v5);
    if (v44)
    {
      v95 = OUTLINED_FUNCTION_26_5();
      v96(v95, AssociatedTypeWitness);
      v94 = v125;
      (*v125)(v70, v67);
      v51 = v135;
      goto LABEL_27;
    }

    v71 = v128;
    (*v118)(v128, v70, v5);
    (*v117)(v127, v43, AssociatedTypeWitness);
    OUTLINED_FUNCTION_14_8();
    v72(v126, v71, v5);
    OUTLINED_FUNCTION_43_4();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v5);
    swift_getAssociatedConformanceWitness();
    sub_1AC51ED88();
    sub_1AC51EDA8();
    OUTLINED_FUNCTION_14_8();
    v76(v71, v5);
    v77 = OUTLINED_FUNCTION_26_5();
    v78(v77, AssociatedTypeWitness);
    sub_1AC458F28();
    if (sub_1AC45E184())
    {
      v79 = OUTLINED_FUNCTION_8_12();
      if (v81 == 125)
      {
        break;
      }
    }

    sub_1AC458F28();
    v82 = sub_1AC45E184();
    v40 = v119;
    v51 = v135;
    if (!v82)
    {
      v100 = sub_1AC477660();
      OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v100);
      *v101 = xmmword_1AC51FB60;
LABEL_30:
      swift_willThrow();
      v105 = OUTLINED_FUNCTION_22_7();
      v106(v105);
      goto LABEL_31;
    }

    v83 = OUTLINED_FUNCTION_8_12();
    if (v85 != 44)
    {
      v102 = sub_1AC477660();
      v103 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v102);
      OUTLINED_FUNCTION_16_6(v103, v104);
      goto LABEL_30;
    }

    v86 = sub_1AC458F9C(v83, v84, *(v2 + 8));
    v87 = OUTLINED_FUNCTION_22_7();
    v88(v87);
    (*v40)(v138, v51);
    *(v2 + 16) = v86;
  }

  *(v2 + 16) = sub_1AC458F9C(v79, v80, *(v2 + 8));
  v110 = *(v2 + 88);
  v111 = __OFADD__(v110, 1);
  v112 = v110 + 1;
  v113 = v119;
  v114 = v135;
  if (v111)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 88) = v112;
    if (*(v2 + 32) >= v112)
    {
      (*v125)(v137, v133);
      (*v113)(v138, v114);
      goto LABEL_32;
    }
  }

  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_11_9();
  __break(1u);
}

void *sub_1AC4E25CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = v5[9];
  v10 = v5[10];
  __swift_project_boxed_opaque_existential_1(v5 + 6, v9);
  result = (*(v10 + 8))(&v14, a2, a3, a4, v9, v10);
  if (v15)
  {
    sub_1AC458DF0(&v14, v16);
    v12 = sub_1AC48DCB4(&v14, a4);
    sub_1AC4E26CC(v13, v5, v16);
    (v12)(&v14, 0);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1AC4E26CC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1AC4C9AEC(a1, v13);
  v7 = v13[3];
  result = sub_1AC4575D8(v13, &qword_1EB558200, &unk_1AC520780);
  if (v7)
  {
    v9 = *(a1 + 24);
    if (v9)
    {
      v10 = *(a1 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      return (*(v10 + 40))(a2, &type metadata for JSONDecoder, &off_1F211C6C8, v9, v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v11 = a3[3];
    v12 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v11);
    result = (*(v12 + 32))(v13, a2, &type metadata for JSONDecoder, &off_1F211C6C8, v11, v12);
    if (!v3)
    {
      return sub_1AC4E2B84(v13, a1);
    }
  }

  return result;
}

uint64_t dynamic_cast_existential_1_unconditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4E2ACC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AC4E2B0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC4E2B84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558200, &unk_1AC520780);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_54_2()
{

  return sub_1AC51F228();
}

uint64_t get_enum_tag_for_layout_string_21InternalSwiftProtobuf17JSONDecodingErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AC4E2CC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFEB && *(a1 + 16))
  {
    return (*a1 + 2147483628);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 19;
  if (v4 >= 0x15)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC4E2D20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFEC)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483628;
    if (a3 >= 0x7FFFFFEC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFEC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 19;
    }
  }

  return result;
}

void *sub_1AC4E2D70(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

InternalSwiftProtobuf::JSONDecodingOptions __swiftcall JSONDecodingOptions.init()()
{
  *v0 = 100;
  *(v0 + 8) = 0;
  return result;
}

char *sub_1AC4E2E10(float a1)
{
  if ((~LODWORD(a1) & 0x7F800000) != 0)
  {
    v2 = sub_1AC51F1A8();

    return sub_1AC45FA3C(v2, v3);
  }

  else
  {
    if ((LODWORD(a1) & 0x7FFFFF) != 0)
    {
      v1 = "NaN";
    }

    else if (a1 >= 0.0)
    {
      v1 = "Infinity";
    }

    else
    {
      v1 = "-Infinity";
    }

    return sub_1AC45FD18(v1);
  }
}

uint64_t sub_1AC4E2E9C()
{
  result = sub_1AC4E2EBC();
  qword_1ED6E3420 = result;
  return result;
}

uint64_t sub_1AC4E2EBC()
{
  v9 = MEMORY[0x1E69E7CC0];
  sub_1AC486360(23105);
  sub_1AC486360(31329);
  sub_1AC486360(14640);
  v0 = v9;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1AC45A78C();
    v0 = v6;
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  v3 = v1 + 1;
  if (v2 <= v1)
  {
    sub_1AC45A78C();
    v0 = v7;
    v2 = *(v7 + 24) >> 1;
  }

  *(v0 + 16) = v3;
  *(v0 + v1 + 32) = 43;
  v4 = v1 + 2;
  if (v2 < v4)
  {
    sub_1AC45A78C();
    v0 = v8;
  }

  *(v0 + 16) = v4;
  *(v0 + v3 + 32) = 47;
  return v0;
}

void sub_1AC4E2FD4()
{
  v0 = MEMORY[0x1E69E7CC0];
  sub_1AC486360(14640);
  sub_1AC486360(17985);
  off_1EB557C20 = v0;
}

char *sub_1AC4E3028(uint64_t a1, unint64_t a2)
{
  if ((*(v2 + 9) & 1) == 0)
  {
    v5 = *(v2 + 8);
    sub_1AC45A774();
    v6 = OUTLINED_FUNCTION_5_14();
    sub_1AC45A85C(v6);
    OUTLINED_FUNCTION_1();
    *(v7 + 32) = v5;
    *v2 = v8;
  }

  sub_1AC45FD18("[");

  sub_1AC45FA3C(a1, a2);
  result = sub_1AC45FD18("]:");
  *(v2 + 8) = 44;
  return result;
}

void sub_1AC4E30C0(int a1)
{
  sub_1AC45A774();
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_3_19();
  sub_1AC45FC4C(a1);
  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_0_22();
}

void sub_1AC4E3108(int a1)
{
  v1 = a1;
  if (a1 < 0)
  {
    sub_1AC45A774();
    OUTLINED_FUNCTION_12_11();
    OUTLINED_FUNCTION_4_12();
    OUTLINED_FUNCTION_13_8(v2);
    v1 = -v1;
  }

  sub_1AC45FBF4(v1);
}

void sub_1AC4E3160(unsigned int a1)
{
  sub_1AC45A774();
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_3_19();
  sub_1AC45FBF4(a1);
  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_0_22();
}

void sub_1AC4E31A8(char a1)
{
  sub_1AC45A774();
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_13_8(v2);
  if (a1)
  {
    v3 = "true";
  }

  else
  {
    v3 = "false";
  }

  sub_1AC45FD18(v3);
  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_13_8(v4);
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1AC4E3230(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 10))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AC4E3270(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t JSONEncodingError.hashValue.getter()
{
  v1 = *v0;
  sub_1AC51F468();
  MEMORY[0x1AC5B48A0](v1);
  return sub_1AC51F4C8();
}

unint64_t sub_1AC4E335C()
{
  result = qword_1EB559788;
  if (!qword_1EB559788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559788);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JSONEncodingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONEncodingOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[4])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for JSONEncodingOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy60_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1AC4E3618(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 60))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AC4E3658(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 60) = 1;
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

    *(result + 60) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1AC4E36B8(uint64_t a1, float a2)
{
  result = sub_1AC459C7C(a1);
  if (!v2)
  {
    return sub_1AC4E2E10(a2);
  }

  return result;
}

void sub_1AC4E36F8(int a1, uint64_t a2)
{
  sub_1AC459C7C(a2);
  if (!v2)
  {
    sub_1AC4E3108(a1);
  }
}

uint64_t sub_1AC4E3734(uint64_t a1, uint64_t a2, void (*a3)(_WORD *, char *), uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v36 = a3;
  v37 = a4;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - v14;
  result = sub_1AC459C7C(v16);
  if (!v6)
  {
    v35 = v15;
    v31 = v11;
    sub_1AC45A774();
    v18 = *(*v5 + 16);
    sub_1AC45A85C(v18);
    v19 = *v5;
    *(v19 + 16) = v18 + 1;
    *(v19 + v18 + 32) = 91;
    *v5 = v19;
    v5[4] = 256;
    v20 = sub_1AC51F038();
    v39 = v20;
    if (v20 != sub_1AC51F0B8())
    {
      v23 = 0;
      v33 = (v10 + 32);
      v34 = (v10 + 16);
      v32 = (v10 + 8);
      do
      {
        v24 = sub_1AC51F0A8();
        sub_1AC51F048();
        if (v24)
        {
          v25 = v35;
          (*(v10 + 16))(v35, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v20, a5);
        }

        else
        {
          result = sub_1AC51F2F8();
          if (v31 != 8)
          {
            __break(1u);
            return result;
          }

          v38 = result;
          v25 = v35;
          (*v34)(v35, &v38, a5);
          swift_unknownObjectRelease();
        }

        sub_1AC51F0F8();
        (*v33)(v13, v25, a5);
        if (v23)
        {
          v26 = *v7;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AC45A78C();
            v26 = v29;
          }

          v27 = *(v26 + 16);
          if (v27 >= *(v26 + 24) >> 1)
          {
            sub_1AC45A78C();
            v26 = v30;
          }

          *(v26 + 16) = v27 + 1;
          *(v26 + v27 + 32) = 44;
          *v7 = v26;
        }

        v36(v7, v13);
        (*v32)(v13, a5);
        v28 = sub_1AC51F0B8();
        v20 = v39;
        v23 = 1;
      }

      while (v39 != v28);
    }

    sub_1AC45A774();
    v21 = *(*v7 + 16);
    result = sub_1AC45A85C(v21);
    v22 = *v7;
    *(v22 + 16) = v21 + 1;
    *(v22 + v21 + 32) = 93;
    *v7 = v22;
    v7[4] = 44;
  }

  return result;
}

void sub_1AC4E3A9C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_5(a1, a2);
  if (!v3)
  {
    sub_1AC45A774();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_21();
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = (v4 + 32);
      do
      {
        v8 = *v7;
        if (v6)
        {
          v9 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_6_0();
            sub_1AC45A78C();
            v9 = v14;
          }

          v10 = *(v9 + 24);
          if (*(v9 + 16) >= v10 >> 1)
          {
            OUTLINED_FUNCTION_57_0(v10);
            sub_1AC45A78C();
          }

          OUTLINED_FUNCTION_46_4();
        }

        if ((~LODWORD(v8) & 0x7F800000) != 0)
        {
          v12 = sub_1AC51F1A8();
          sub_1AC45FA3C(v12, v13);
        }

        else
        {
          if ((LODWORD(v8) & 0x7FFFFF) != 0)
          {
            v11 = "NaN";
          }

          else if (v8 >= 0.0)
          {
            v11 = "Infinity";
          }

          else
          {
            v11 = "-Infinity";
          }

          sub_1AC45FD18(v11);
        }

        ++v7;
        v6 = 1;
        --v5;
      }

      while (v5);
    }

    sub_1AC45A774();
    v15 = OUTLINED_FUNCTION_5_14();
    sub_1AC45A85C(v15);
    OUTLINED_FUNCTION_0_23();
  }
}

void sub_1AC4E3BEC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_5(a1, a2);
  if (!v3)
  {
    sub_1AC45A774();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_21();
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = (v4 + 32);
      do
      {
        v8 = *v7;
        if (v6)
        {
          v9 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_6_0();
            sub_1AC45A78C();
            v9 = v14;
          }

          v10 = *(v9 + 24);
          if (*(v9 + 16) >= v10 >> 1)
          {
            OUTLINED_FUNCTION_57_0(v10);
            sub_1AC45A78C();
          }

          OUTLINED_FUNCTION_46_4();
        }

        if ((~*&v8 & 0x7FF0000000000000) != 0)
        {
          v12 = sub_1AC51F188();
          sub_1AC45FA3C(v12, v13);
        }

        else
        {
          if ((*&v8 & 0xFFFFFFFFFFFFFLL) != 0)
          {
            v11 = "NaN";
          }

          else if (v8 >= 0.0)
          {
            v11 = "Infinity";
          }

          else
          {
            v11 = "-Infinity";
          }

          sub_1AC45FD18(v11);
        }

        ++v7;
        v6 = 1;
        --v5;
      }

      while (v5);
    }

    sub_1AC45A774();
    v15 = OUTLINED_FUNCTION_5_14();
    sub_1AC45A85C(v15);
    OUTLINED_FUNCTION_0_23();
  }
}

void sub_1AC4E3D3C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_5(a1, a2);
  if (!v2)
  {
    sub_1AC45A774();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_21();
    if (*(v3 + 16))
    {
      v4 = 0;
      v5 = (v3 + 32);
      do
      {
        v7 = *v5++;
        v6 = v7;
        if (v4)
        {
          if ((OUTLINED_FUNCTION_35_4() & 1) == 0)
          {
            OUTLINED_FUNCTION_6_0();
            sub_1AC45A78C();
          }

          OUTLINED_FUNCTION_6_14();
          if (v8)
          {
            OUTLINED_FUNCTION_17_9();
            sub_1AC45A78C();
          }

          OUTLINED_FUNCTION_7_13();
        }

        sub_1AC45FBF4(v6);
        OUTLINED_FUNCTION_45_3();
      }

      while (!v9);
    }

    sub_1AC45A774();
    v10 = OUTLINED_FUNCTION_5_14();
    sub_1AC45A85C(v10);
    OUTLINED_FUNCTION_0_23();
  }
}

void sub_1AC4E3E14(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  sub_1AC459C7C(a2);
  if (v6 == 1)
  {
    if (v3)
    {
      return;
    }

    sub_1AC45A774();
    v7 = OUTLINED_FUNCTION_5_14();
    sub_1AC45A85C(v7);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2_16(v8);
    if (*(a1 + 16))
    {
      v9 = 0;
      v10 = (a1 + 32);
      do
      {
        v12 = *v10++;
        v11 = v12;
        if (v9)
        {
          if ((OUTLINED_FUNCTION_35_4() & 1) == 0)
          {
            OUTLINED_FUNCTION_6_0();
            sub_1AC45A78C();
          }

          OUTLINED_FUNCTION_6_14();
          if (v13)
          {
            OUTLINED_FUNCTION_17_9();
            sub_1AC45A78C();
          }

          OUTLINED_FUNCTION_7_13();
        }

        sub_1AC45FBF4(v11);
        OUTLINED_FUNCTION_45_3();
      }

      while (!v14);
    }
  }

  else
  {
    if (v3)
    {
      return;
    }

    sub_1AC45A774();
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_12_12();
    if (v4)
    {
      v15 = 0;
      v16 = (a1 + 32);
      do
      {
        v18 = *v16++;
        v17 = v18;
        v19 = *(v6 + 16);
        if (v15)
        {
          v20 = v19 + 1;
          if (v19 >= *(v6 + 24) >> 1)
          {
            OUTLINED_FUNCTION_17_9();
            sub_1AC45A78C();
            v6 = v27;
          }

          OUTLINED_FUNCTION_41_3();
        }

        else
        {
          v20 = *(v6 + 16);
        }

        v21 = *(v6 + 24);
        if (v20 >= v21 >> 1)
        {
          OUTLINED_FUNCTION_26_6(v21 > 1, v20 + 1);
          v6 = v24;
        }

        *(v6 + 16) = v20 + 1;
        OUTLINED_FUNCTION_13_9();
        sub_1AC45FBF4(v17);
        v6 = *v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_6_0();
          sub_1AC45A78C();
          v6 = v25;
        }

        v23 = *(v6 + 16);
        v22 = *(v6 + 24);
        if (v23 >= v22 >> 1)
        {
          OUTLINED_FUNCTION_26_6(v22 > 1, v23 + 1);
          v6 = v26;
        }

        *(v6 + 16) = v23 + 1;
        OUTLINED_FUNCTION_13_9();
        v15 = 1;
        --v4;
      }

      while (v4);
    }
  }

  sub_1AC45A774();
  v28 = OUTLINED_FUNCTION_5_14();
  sub_1AC45A85C(v28);
  OUTLINED_FUNCTION_0_23();
}

void sub_1AC4E400C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_5(a1, a2);
  if (!v2)
  {
    sub_1AC45A774();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_21();
    if (*(v3 + 16))
    {
      v4 = 0;
      v5 = (v3 + 32);
      do
      {
        v7 = *v5++;
        v6 = v7;
        if (v4)
        {
          if ((OUTLINED_FUNCTION_35_4() & 1) == 0)
          {
            OUTLINED_FUNCTION_6_0();
            sub_1AC45A78C();
          }

          OUTLINED_FUNCTION_6_14();
          if (v8)
          {
            OUTLINED_FUNCTION_17_9();
            sub_1AC45A78C();
          }

          OUTLINED_FUNCTION_7_13();
        }

        if ((v6 & 0x80000000) != 0)
        {
          if ((OUTLINED_FUNCTION_35_4() & 1) == 0)
          {
            OUTLINED_FUNCTION_6_0();
            sub_1AC45A78C();
          }

          OUTLINED_FUNCTION_6_14();
          if (v8)
          {
            OUTLINED_FUNCTION_17_9();
            sub_1AC45A78C();
          }

          OUTLINED_FUNCTION_23_7();
        }

        sub_1AC45FBF4(v6);
        OUTLINED_FUNCTION_45_3();
      }

      while (!v9);
    }

    sub_1AC45A774();
    v10 = OUTLINED_FUNCTION_5_14();
    sub_1AC45A85C(v10);
    OUTLINED_FUNCTION_0_23();
  }
}

void sub_1AC4E4130(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  sub_1AC459C7C(a2);
  if (v6 == 1)
  {
    if (v3)
    {
      return;
    }

    sub_1AC45A774();
    v7 = OUTLINED_FUNCTION_5_14();
    sub_1AC45A85C(v7);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2_16(v8);
    if (*(a1 + 16))
    {
      v9 = 0;
      v10 = (a1 + 32);
      do
      {
        v12 = *v10++;
        v11 = v12;
        if (v9)
        {
          if ((OUTLINED_FUNCTION_35_4() & 1) == 0)
          {
            OUTLINED_FUNCTION_6_0();
            sub_1AC45A78C();
          }

          OUTLINED_FUNCTION_6_14();
          if (v13)
          {
            OUTLINED_FUNCTION_17_9();
            sub_1AC45A78C();
          }

          OUTLINED_FUNCTION_7_13();
        }

        if ((v11 & 0x8000000000000000) != 0)
        {
          if ((OUTLINED_FUNCTION_35_4() & 1) == 0)
          {
            OUTLINED_FUNCTION_6_0();
            sub_1AC45A78C();
          }

          OUTLINED_FUNCTION_6_14();
          if (v13)
          {
            OUTLINED_FUNCTION_17_9();
            sub_1AC45A78C();
          }

          OUTLINED_FUNCTION_23_7();
        }

        sub_1AC45FBF4(v11);
        OUTLINED_FUNCTION_45_3();
      }

      while (!v14);
    }
  }

  else
  {
    if (v3)
    {
      return;
    }

    sub_1AC45A774();
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_12_12();
    if (v4)
    {
      v15 = 0;
      v16 = (a1 + 32);
      do
      {
        v18 = *v16++;
        v17 = v18;
        v19 = *(v6 + 16);
        if (v15)
        {
          v20 = v19 + 1;
          if (v19 >= *(v6 + 24) >> 1)
          {
            OUTLINED_FUNCTION_17_9();
            sub_1AC45A78C();
            v6 = v29;
          }

          OUTLINED_FUNCTION_41_3();
        }

        else
        {
          v20 = *(v6 + 16);
        }

        v21 = *(v6 + 24);
        v22 = v20 + 1;
        if (v20 >= v21 >> 1)
        {
          OUTLINED_FUNCTION_26_6(v21 > 1, v20 + 1);
          v6 = v26;
        }

        *(v6 + 16) = v22;
        OUTLINED_FUNCTION_13_9();
        if ((v17 & 0x8000000000000000) != 0)
        {
          v23 = v20 + 2;
          if (v23 > *(v6 + 24) >> 1)
          {
            OUTLINED_FUNCTION_17_9();
            sub_1AC45A78C();
            v6 = v30;
          }

          *(v6 + 16) = v23;
          *(v6 + v22 + 32) = 45;
          *v2 = v6;
          v17 = -v17;
        }

        sub_1AC45FBF4(v17);
        v6 = *v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_6_0();
          sub_1AC45A78C();
          v6 = v27;
        }

        v25 = *(v6 + 16);
        v24 = *(v6 + 24);
        if (v25 >= v24 >> 1)
        {
          OUTLINED_FUNCTION_26_6(v24 > 1, v25 + 1);
          v6 = v28;
        }

        *(v6 + 16) = v25 + 1;
        OUTLINED_FUNCTION_13_9();
        v15 = 1;
        --v4;
      }

      while (v4);
    }
  }

  sub_1AC45A774();
  v31 = OUTLINED_FUNCTION_5_14();
  sub_1AC45A85C(v31);
  OUTLINED_FUNCTION_0_23();
}

void sub_1AC4E43BC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_5(a1, a2);
  if (!v3)
  {
    sub_1AC45A774();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_21();
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = (v4 + 32);
      do
      {
        v8 = *v7;
        if (v6)
        {
          v9 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_6_0();
            sub_1AC45A78C();
            v9 = v13;
          }

          v11 = *(v9 + 16);
          v10 = *(v9 + 24);
          if (v11 >= v10 >> 1)
          {
            OUTLINED_FUNCTION_8_14(v10);
            sub_1AC45A78C();
            v9 = v14;
          }

          *(v9 + 16) = v11 + 1;
          *(v9 + v11 + 32) = 44;
          *v2 = v9;
        }

        if (v8)
        {
          v12 = "true";
        }

        else
        {
          v12 = "false";
        }

        sub_1AC45FD18(v12);
        ++v7;
        v6 = 1;
        --v5;
      }

      while (v5);
    }

    sub_1AC45A774();
    v15 = OUTLINED_FUNCTION_5_14();
    sub_1AC45A85C(v15);
    OUTLINED_FUNCTION_0_23();
  }
}

void sub_1AC4E44D0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v50 = *MEMORY[0x1E69E9840];
  sub_1AC459C7C(a2);
  if (!v3)
  {
    sub_1AC45A774();
    v6 = *(*v2 + 16);
    sub_1AC45A85C(v6);
    v7 = 0;
    v8 = *v2;
    *(v8 + 16) = v6 + 1;
    OUTLINED_FUNCTION_22(v8 + v6);
    *(v4 + 4) = 256;
    v9 = *(a1 + 16);
    v10 = (a1 + 40);
    if (v9)
    {
      while (1)
      {
        v11 = *(v10 - 1);
        v12 = *v10;
        v13 = OUTLINED_FUNCTION_19();
        sub_1AC4578F4(v13, v14);
        if (v7)
        {
          v16 = *(v8 + 16);
          v15 = *(v8 + 24);
          if (v16 >= v15 >> 1)
          {
            OUTLINED_FUNCTION_8_14(v15);
            sub_1AC45A78C();
            v8 = v42;
          }

          *(v8 + 16) = v16 + 1;
          OUTLINED_FUNCTION_22(v8 + v16);
        }

        v18 = *(v8 + 16);
        v17 = *(v8 + 24);
        if (v18 >= v17 >> 1)
        {
          OUTLINED_FUNCTION_8_14(v17);
          sub_1AC45A78C();
          v8 = v39;
        }

        *(v8 + 16) = v18 + 1;
        OUTLINED_FUNCTION_22(v8 + v18);
        v19 = v12 >> 62;
        switch(v12 >> 62)
        {
          case 1uLL:
            LODWORD(v20) = HIDWORD(v11) - v11;
            if (__OFSUB__(HIDWORD(v11), v11))
            {
              goto LABEL_43;
            }

            v20 = v20;
LABEL_14:
            if (v20 < 1)
            {
              goto LABEL_35;
            }

            if (v19 == 2)
            {
              v28 = *(v11 + 16);
              v27 = *(v11 + 24);
              v24 = sub_1AC51EB78();
              if (v24)
              {
                v29 = sub_1AC51EBA8();
                if (__OFSUB__(v28, v29))
                {
                  goto LABEL_46;
                }

                v24 += v28 - v29;
              }

              v23 = __OFSUB__(v27, v28);
              v26 = v27 - v28;
              if (v23)
              {
                goto LABEL_45;
              }
            }

            else
            {
              if (v19 != 1)
              {
                v44 = v11;
                v45 = v12;
                v46 = BYTE2(v12);
                v47 = BYTE3(v12);
                v48 = BYTE4(v12);
                v49 = BYTE5(v12);
                v33 = &v44 + BYTE6(v12);
                v34 = &v44;
                goto LABEL_34;
              }

              if (v11 >> 32 < v11)
              {
LABEL_44:
                __break(1u);
LABEL_45:
                __break(1u);
LABEL_46:
                __break(1u);
LABEL_47:
                __break(1u);
              }

              v24 = sub_1AC51EB78();
              if (v24)
              {
                v25 = sub_1AC51EBA8();
                if (__OFSUB__(v11, v25))
                {
                  goto LABEL_47;
                }

                v24 += v11 - v25;
              }

              v26 = (v11 >> 32) - v11;
            }

            v30 = sub_1AC51EB98();
            if (v30 >= v26)
            {
              v31 = v26;
            }

            else
            {
              v31 = v30;
            }

            v32 = (v31 + v24);
            if (v24)
            {
              v33 = v32;
            }

            else
            {
              v33 = 0;
            }

            v34 = v24;
LABEL_34:
            sub_1AC4680FC(v34, v33, v4);
LABEL_35:
            v8 = *v4;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_6_0();
              sub_1AC45A78C();
              v8 = v40;
            }

            v36 = *(v8 + 16);
            v35 = *(v8 + 24);
            if (v36 >= v35 >> 1)
            {
              OUTLINED_FUNCTION_8_14(v35);
              sub_1AC45A78C();
              v8 = v41;
            }

            v37 = OUTLINED_FUNCTION_19();
            sub_1AC4513F8(v37, v38);
            *(v8 + 16) = v36 + 1;
            OUTLINED_FUNCTION_22(v8 + v36);
            v10 += 2;
            --v9;
            v7 = 1;
            if (!v9)
            {
              goto LABEL_40;
            }

            break;
          case 2uLL:
            v22 = *(v11 + 16);
            v21 = *(v11 + 24);
            v23 = __OFSUB__(v21, v22);
            v20 = v21 - v22;
            if (!v23)
            {
              goto LABEL_14;
            }

            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          case 3uLL:
            goto LABEL_35;
          default:
            v20 = BYTE6(v12);
            goto LABEL_14;
        }
      }
    }

LABEL_40:
    sub_1AC45A774();
    OUTLINED_FUNCTION_34_4();
    OUTLINED_FUNCTION_15_8();
    OUTLINED_FUNCTION_14_10(v43);
  }
}

uint64_t sub_1AC4E4850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dynamic_cast_existential_1_conditional(a3, a3, &protocol descriptor for _CustomJSONCodable);
  if (v6)
  {
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_28_4();
    *(v8 - 15) = v9;
    *(v8 - 14) = v10;
    *(v8 - 13) = v11;
    v12 = sub_1AC4E5028;
  }

  else
  {
    MEMORY[0x1EEE9AC00](0);
    OUTLINED_FUNCTION_28_4();
    v12 = sub_1AC4E5008;
  }

  return sub_1AC4E3734(a1, a2, v12, v7, a3);
}

uint64_t sub_1AC4E4940(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v16 = a3;
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC0, &unk_1AC51FCE0);
  swift_dynamicCast();
  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v9 = (*(v8 + 8))(&v16, v7, v8);
  if (!v4)
  {
    sub_1AC45FA3C(v9, v10);
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

void sub_1AC4E4A88(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 1) != 0 || (sub_1AC469654(a4, a5, v8), HIBYTE(v9) > 0xFEu))
  {
    v7 = (*(a5 + 40))(a4, a5);
    sub_1AC4E30BC(v7);
  }

  else
  {
    v10[0] = v8[0];
    v10[1] = v8[1];
    v11 = v9;
    sub_1AC45ABA8(v10);
    sub_1AC45A718(v8, &qword_1EB559790, "6V");
  }
}

uint64_t sub_1AC4E4B54()
{
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_29_0();
  swift_getAssociatedTypeWitness();
  v0 = OUTLINED_FUNCTION_48_0();
  return OUTLINED_FUNCTION_27_5(v0, v1, sub_1AC4929E8, v6, sub_1AC4E4FE8, v2, v3, v4, v0);
}

void sub_1AC4E4C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for JSONMapEncodingVisitor, &off_1F211AE90, a4);
  if (!v7)
  {
    sub_1AC4E51B8();
  }
}

uint64_t sub_1AC4E4C94()
{
  OUTLINED_FUNCTION_30_4();
  v11[2] = v0;
  v11[3] = v1;
  v11[4] = v2;
  v11[5] = v3;
  v11[6] = v4;
  v11[7] = v0;
  swift_getAssociatedTypeWitness();
  v5 = OUTLINED_FUNCTION_48_0();
  return OUTLINED_FUNCTION_27_5(v5, v6, sub_1AC4927E8, v11, sub_1AC4E4ED8, v7, v8, v9, v5);
}

uint64_t sub_1AC4E4D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for JSONMapEncodingVisitor, &off_1F211AE90, a4);
  if (!v7)
  {
    return sub_1AC4E5110();
  }

  return result;
}

void sub_1AC4E4EFC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v5 = WORD2(a2);
  v4 = a2;
  sub_1AC4680FC(&v3, &v3 + BYTE6(a2), a3);
}

uint64_t sub_1AC4E4F68(uint64_t (*a1)(uint64_t *, char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v7 = WORD2(a4);
  v6 = a4;
  return a1(&v5, &v5 + BYTE6(a4));
}

uint64_t sub_1AC4E5028(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 35))
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v2 + 34))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (*(v2 + 33))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_1AC4E4940(a1, a2, v5 | *(v2 + 32) | v4 | v3, *(v2 + 16));
}

uint64_t sub_1AC4E5110()
{
  OUTLINED_FUNCTION_0_24();
  sub_1AC45FE50(v1, v2, v3);
  v4 = v0[35];
  v5 = v0[36];
  v6 = v0[37];
  v11[0] = v0[34];
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v7 = v11;
  v9 = Message.jsonString(options:)(v7);
  result = v9._countAndFlagsBits;
  if (!v10)
  {
    return sub_1AC45FA3C(v9._countAndFlagsBits, v9._object);
  }

  return result;
}

void sub_1AC4E51B8()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_0_24();
  sub_1AC45FE50(v5, v6, v7);
  if ((*(v0 + 35) & 1) != 0 || (sub_1AC469654(v4, v2, v12), HIBYTE(v15) > 0xFEu))
  {
    v8 = (*(v2 + 40))(v4, v2);
    sub_1AC4E30BC(v8);
  }

  else
  {
    v9 = v13;
    v10 = v14;
    if ((v15 & 0x100) != 0)
    {
      v9 = sub_1AC51F2E8();
      v10 = v11;
    }

    sub_1AC45AEA4(v9, v10);
  }
}

char *sub_1AC4E5294()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  OUTLINED_FUNCTION_0_24();
  sub_1AC45FE50(v2, v3, v4);
  return sub_1AC4E2E10(v1);
}

char *sub_1AC4E52EC()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  OUTLINED_FUNCTION_0_24();
  sub_1AC45FE50(v2, v3, v4);
  return sub_1AC45F9B0(v1);
}

void sub_1AC4E5344(int a1, uint64_t a2)
{
  if (a2 == 1)
  {
    if (*(v2 + 17))
    {
      OUTLINED_FUNCTION_5_15(",");
    }

    else
    {
      sub_1AC45FE50(*v2, *(v2 + 8), *(v2 + 16));
    }

    sub_1AC4E30C0(a1);
  }

  else
  {
    OUTLINED_FUNCTION_0_24();
    sub_1AC45FE50(v4, v5, v6);
    sub_1AC4E3108(a1);
  }
}

void sub_1AC4E5418()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  if (v3 == 1)
  {
    if (*(v0 + 17))
    {
      OUTLINED_FUNCTION_7_14(",");
    }

    else
    {
      sub_1AC45FE50(*v0, *(v0 + 8), *(v0 + 16));
    }

    sub_1AC4E3160(v2);
  }

  else
  {
    OUTLINED_FUNCTION_0_24();
    sub_1AC45FE50(v4, v5, v6);
    sub_1AC45FBF4(v2);
  }
}

uint64_t sub_1AC4E54E8()
{
  OUTLINED_FUNCTION_3_20();
  if (v3)
  {
    if (*(v1 + 17))
    {
      OUTLINED_FUNCTION_6_15(",");
    }

    else
    {
      sub_1AC45FE50(*v1, *(v1 + 8), *(v1 + 16));
    }
  }

  else
  {
    v4 = v2;
    OUTLINED_FUNCTION_0_24();
    sub_1AC45FE50(v5, v6, v7);
    if (*(v1 + 34))
    {
      v8 = OUTLINED_FUNCTION_4_13();
      return v4(v8);
    }
  }

  v10 = OUTLINED_FUNCTION_4_13();
  return v0(v10);
}

void sub_1AC4E5584()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  if (v3 == 1)
  {
    if (*(v0 + 17))
    {
      OUTLINED_FUNCTION_7_14(",");
    }

    else
    {
      sub_1AC45FE50(*v0, *(v0 + 8), *(v0 + 16));
    }

    sub_1AC4E31A8(v2 & 1);
  }

  else
  {
    OUTLINED_FUNCTION_0_24();
    sub_1AC45FE50(v4, v5, v6);
    if (v2)
    {
      v7 = "true";
      v8 = 4;
    }

    else
    {
      v7 = "false";
      v8 = 5;
    }

    sub_1AC45FE50(v7, v8, 2);
  }
}

uint64_t sub_1AC4E5638()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_0_24();
  sub_1AC45FE50(v4, v5, v6);
  return sub_1AC467E68(v3, v1);
}

__n128 __swift_memcpy38_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AC4E573C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 38))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AC4E577C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 38) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 38) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}