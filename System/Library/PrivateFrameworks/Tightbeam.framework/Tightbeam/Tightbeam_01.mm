uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_26F0583F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26F058458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_26F073C10();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_26F073F60();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_26F073F60();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_26F058578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_26F073F60();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_26F073F60();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  sub_26F057CBC(result, 1);

  return sub_26F058458(v7, v6, 1, v4);
}

unint64_t sub_26F058668()
{
  result = qword_2806D1298;
  if (!qword_2806D1298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806D1298);
  }

  return result;
}

unint64_t sub_26F0586B4()
{
  result = qword_2806D12A0;
  if (!qword_2806D12A0)
  {
    sub_26F073E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D12A0);
  }

  return result;
}

unint64_t sub_26F05870C()
{
  result = qword_2806D12B0;
  if (!qword_2806D12B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D12A8, &unk_26F0757D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D12B0);
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

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26F058850(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26F058864(a1, a2);
  }

  return a1;
}

uint64_t sub_26F058864(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_26F0588B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

const char *_StaticString.init(nullTerminated:)@<X0>(const char *a1@<X0>, const char **a2@<X8>)
{
  result = strlen(a1);
  *a2 = a1;
  a2[1] = result;
  return result;
}

uint64_t *_StaticString.isEqual(to:)(uint64_t *result)
{
  v2 = result[1];
  if (v1[1] != v2)
  {
    return 0;
  }

  if (v2 < 0)
  {
LABEL_10:
    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = *result;
    do
    {
      result = (v2 == v3);
      if (v2 == v3)
      {
        break;
      }

      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_10;
      }

      v5 = *(*v1 + v3);
      v6 = *(v4 + v3++);
    }

    while (v5 == v6);
  }

  return result;
}

uint64_t ComponentInitDataReader.Component.dataBuffer()()
{
  v1 = *v0;
  if (!*v0)
  {
    goto LABEL_15;
  }

  v2 = v0[1];
  if (v2 - v1 <= 47)
  {
    goto LABEL_15;
  }

  v3 = *(v1 + 16);
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = __OFADD__(v3, 48);
  v5 = v3 + 48;
  if (v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v1 + 24);
  if (v6 < 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(v5, v6))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    result = sub_26F073F50();
    __break(1u);
    return result;
  }

  v7 = sub_26F053C10(v5 + v6, v1, v2);
  if (v8)
  {
    return v8 + v7;
  }

  else
  {
    return 0;
  }
}

uint64_t ComponentInitDataReader.Client.badge()@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (*v1 && v1[1] - v2 > 36)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 17);
    *a1 = 257;
    *(a1 + 2) = v3;
    *(a1 + 4) = v4;
    *(a1 + 8) = 0;
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t ComponentInitDataReader.Client.types.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*v1 && v1[1] - v3 >= 37)
  {
    v4 = *(v3 + 29);
    if ((v4 & 0x8000000000000000) == 0)
    {
      result = sub_26F05AEA4();
      *a1 = result;
      a1[1] = v6;
      a1[2] = v4;
      return result;
    }

    __break(1u);
  }

  result = sub_26F073F50();
  __break(1u);
  return result;
}

void *ComponentInitDataReader.TypeBuffer.subscript.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = sub_26F053C10(0, v4, v5);
  if (v6 < 1)
  {
LABEL_37:
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_26F073F00();

    v27 = 0xD00000000000001FLL;
    v28 = 0x800000026F078770;
    sub_26F057088();
    v25 = sub_26F073EC0();
    MEMORY[0x274386C80](v25);
  }

  else
  {
    v11 = v7;
    v12 = v8;
    v13 = v9;
    if (v9)
    {
      v14 = v10 - v9;
    }

    else
    {
      v14 = 0;
    }

    v16 = v8 < 0 || v14 < v8;
    v17 = a1;
    while (1)
    {
      v18 = __OFSUB__(v12, v11);
      if (v13)
      {
        v19 = v13 + v12;
      }

      else
      {
        v19 = 0;
      }

      if (v13)
      {
        v20 = (v13 + v11);
      }

      else
      {
        v20 = 0;
      }

      result = sub_26F05A6FC(v20, v19, &v27);
      v22 = v28;
      if (!v17)
      {
        *a2 = v27;
        a2[1] = v22;
        return result;
      }

      if (!v27 || (v28 - v27) < 16)
      {
        goto LABEL_47;
      }

      v23 = *(v27 + 8);
      if ((v23 & 0x8000000000000000) != 0)
      {
        break;
      }

      if ((v11 & 0x8000000000000000) != 0 || v14 < v11)
      {
        goto LABEL_40;
      }

      if (v16)
      {
        goto LABEL_41;
      }

      if (v18)
      {
        goto LABEL_42;
      }

      if (!v23 || (v24 = v12, v12 - v11 >= v23))
      {
        v24 = v11 + v23;
        if (__OFADD__(v11, v23))
        {
          goto LABEL_45;
        }

        if ((v24 & 0x8000000000000000) != 0 || v14 < v24)
        {
          goto LABEL_46;
        }

        if (v12 < v24)
        {
          goto LABEL_44;
        }
      }

      if (v24 < v11)
      {
        goto LABEL_43;
      }

      --v17;
      v11 = v24;
      if (!--v6)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
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
  }

LABEL_47:
  result = sub_26F073F50();
  __break(1u);
  return result;
}

const void *sub_26F058DF0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if ((a4 & 0x1000000000000000) != 0)
  {
    v7 = sub_26F073D40();

    v5 = sub_26F06C058(v5, v4);
    v12 = v11;

    v4 = v12;
    if ((v12 & 0x2000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    v14[0] = v5;
    v14[1] = v4 & 0xFFFFFFFFFFFFFFLL;
    if ((v7 & 0x8000000000000000) == 0)
    {
      if (a1)
      {
        memcpy(a1, v14, HIBYTE(v4) & 0xF);
      }

      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v7 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((v5 & 0x1000000000000000) != 0)
  {
    v9 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v10 = v5 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  result = sub_26F073F30();
  v10 = v13;
  v9 = result;
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_8:
  if (!a1 || !v9)
  {
    goto LABEL_16;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    memmove(a1, v9, v10);
LABEL_16:

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t _StaticString.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ComponentInitDataBuilder.Error.hashValue.getter()
{
  v1 = *v0;
  sub_26F074050();
  MEMORY[0x274386FB0](v1);
  return sub_26F074080();
}

uint64_t _s9Tightbeam23ComponentInitDataReaderV0B0V5ErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_26F074050();
  MEMORY[0x274386FB0](v1);
  return sub_26F074080();
}

uint64_t sub_26F059060(uint64_t a1)
{
  v2 = *v1;
  sub_26F074050();
  MEMORY[0x274386FB0](v2);
  return sub_26F074080();
}

uint64_t ComponentInitDataBuilder.TypeData.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _s9Tightbeam24ComponentInitDataBuilderV04TypeD0V4typeAESS_tAC5ErrorOYKcfC@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    *a4 = result;
    a4[1] = a2;
  }

  else
  {

    *a3 = 1;
    sub_26F05C440();
    return swift_willThrowTypedImpl();
  }

  return result;
}

void *sub_26F059144(void *result, uint64_t a2, _BYTE *a3)
{
  v5 = *v3;
  v6 = v3[1];
  if ((v6 & 0x1000000000000000) != 0)
  {
    v9 = result;
    v10 = a2;
    v11 = v5;
    v12 = v6;
    v13 = sub_26F073D40();
    a2 = v10;
    v6 = v12;
    v5 = v11;
    v14 = v13;
    result = v9;
    v8 = v14 + 16;
    if (!__OFADD__(v14, 16))
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  v8 = v7 + 16;
  if (__OFADD__(v7, 16))
  {
    goto LABEL_15;
  }

LABEL_5:
  if (!result)
  {
    if (v8 <= 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    *a3 = 0;
    sub_26F05C440();
    swift_willThrowTypedImpl();
    return v8;
  }

  if (a2 - result < v8)
  {
    goto LABEL_11;
  }

  if (v8 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *result = 0x5459504544415441;
  result[1] = v8;
  if (a2 - result >= 16)
  {
    sub_26F058DF0(result + 2, a2, v5, v6);
    return v8;
  }

LABEL_17:
  __break(1u);
  return result;
}

void ComponentInitDataBuilder.Client.badge.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *(v1 + 4);
  v5 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 4) = v4;
  *(a1 + 8) = v5;
}

uint64_t ComponentInitDataBuilder.Client.property.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ComponentInitDataBuilder.Client.init(identifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = HIBYTE(result);
  *(a2 + 1) = 0;
  *(a2 + 2) = BYTE6(result);
  *(a2 + 4) = WORD2(result);
  *(a2 + 6) = WORD1(result);
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = MEMORY[0x277D84F90];
  return result;
}

uint64_t ComponentInitDataBuilder.Client.init(badge:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 1);
  v3 = *(result + 2);
  v4 = *(result + 4);
  v5 = *(result + 8);
  *a2 = *result;
  *(a2 + 1) = v2;
  *(a2 + 2) = v3;
  *(a2 + 4) = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = MEMORY[0x277D84F90];
  return result;
}

uint64_t ComponentInitDataBuilder.Client.init(badge:property:types:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(result + 1);
  v6 = *(result + 2);
  v7 = *(result + 4);
  v8 = *(result + 8);
  *a5 = *result;
  *(a5 + 1) = v5;
  *(a5 + 2) = v6;
  *(a5 + 4) = v7;
  *(a5 + 8) = v8;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

uint64_t sub_26F05937C()
{
  v1 = v0[3];
  v2 = v0[4];
  if (v1)
  {
    if ((v1 & 0x1000000000000000) != 0)
    {
      goto LABEL_29;
    }

    if ((v1 & 0x2000000000000000) != 0)
    {
      result = HIBYTE(v1) & 0xF;
    }

    else
    {
      result = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    v4 = result + 37;
    if (__OFADD__(result, 37))
    {
      goto LABEL_31;
    }
  }

  else
  {
    v4 = 37;
  }

  do
  {
    v5 = 0;
    v6 = (v2 + 40);
    v7 = -*(v2 + 16);
    v8 = -1;
    while (v7 + v8 != -1)
    {
      if (++v8 >= *(v2 + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v9 = *v6;
      if ((*v6 & 0x1000000000000000) != 0)
      {
        v13 = sub_26F073D40();
        v11 = v13 + 16;
        if (__OFADD__(v13, 16))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if ((v9 & 0x2000000000000000) != 0)
        {
          v10 = HIBYTE(v9) & 0xF;
        }

        else
        {
          v10 = *(v6 - 1) & 0xFFFFFFFFFFFFLL;
        }

        v11 = v10 + 16;
        if (__OFADD__(v10, 16))
        {
LABEL_23:
          __break(1u);
          break;
        }
      }

      v6 += 2;
      v12 = __OFADD__(v5, v11);
      v5 += v11;
      if (v12)
      {
        goto LABEL_27;
      }
    }

    result = v4 + v5;
    if (!__OFADD__(v4, v5))
    {
      return result;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    result = sub_26F073D40();
    v4 = result + 37;
  }

  while (!__OFADD__(result, 37));
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26F059474(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = v4;
  LOBYTE(v8) = *(v3 + 2);
  LOWORD(v9) = *(v3 + 4);
  LOWORD(v10) = *(v3 + 6);
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v27 = *(v3 + 32);
  v13 = sub_26F05937C();
  v25 = v13;
  if (a1)
  {
    if (a2 - a1 >= v13)
    {
      goto LABEL_3;
    }

LABEL_9:
    *a3 = 0;
    sub_26F05C440();
    swift_willThrowTypedImpl();
    return v25;
  }

  if (v13 > 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v12)
  {
    v14 = v27;
    if ((v12 & 0x1000000000000000) != 0)
    {
      goto LABEL_60;
    }

    if ((v12 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(v12) & 0xF;
    }

    else
    {
      v15 = v11 & 0xFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v15 = 0;
    v14 = v27;
  }

  while ((v15 | v25) < 0)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    v15 = sub_26F073D40();
    v4 = v5;
  }

  v16 = *(v14 + 16);
  *a1 = 0x434C4E5444415441;
  *(a1 + 8) = v25;
  *(a1 + 16) = v8;
  *(a1 + 17) = v9;
  *(a1 + 19) = v10;
  *(a1 + 21) = v15;
  *(a1 + 29) = v16;
  if (a1)
  {
    v10 = a2 - a1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 < 37)
  {
    goto LABEL_59;
  }

  if (!v12)
  {
    v12 = 37;
    v9 = *(v14 + 16);
    if (!v9)
    {
      return v25;
    }

LABEL_32:
    v8 = 0;
    v21 = a1 + v10;
    if (!a1)
    {
      v21 = 0;
    }

    v26 = v21;
    v5 = (v14 + 40);
    while (v8 < *(v14 + 16))
    {
      a2 = *v5;
      if (a1)
      {
        v22 = (a1 + v12);
      }

      else
      {
        v22 = 0;
      }

      v14 = sub_26F059144(v22, v26, &v28);
      v11 = v4;

      if (v4)
      {
        *a3 = v28;
        return v25;
      }

      if (v14 < 0)
      {
        goto LABEL_53;
      }

      if (v10 < v12)
      {
        goto LABEL_54;
      }

      if (!v14 || v10 - v12 < 0 || (v23 = v10, v10 - v12 >= v14))
      {
        v23 = (v12 + v14);
        if (__OFADD__(v12, v14))
        {
          goto LABEL_56;
        }

        if (v23 > v10)
        {
          goto LABEL_57;
        }
      }

      if (v23 < v12)
      {
        goto LABEL_55;
      }

      ++v8;
      v5 += 2;
      v12 = v23;
      v14 = v27;
      if (v9 == v8)
      {
        return v25;
      }
    }

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
    goto LABEL_58;
  }

  if (a1)
  {
    v17 = a1 + v10;
  }

  else
  {
    v17 = 0;
  }

  if (a1)
  {
    v18 = (a1 + 37);
  }

  else
  {
    v18 = 0;
  }

  result = sub_26F058DF0(v18, v17, v11, v12);
  if ((result & 0x8000000000000000) == 0)
  {
    result = sub_26F056EA4(37, result, v10, 37, v10, a1, a2);
    if (v20)
    {
      v12 = v10;
    }

    else
    {
      v12 = result;
    }

    if (v10 < v12)
    {
      goto LABEL_62;
    }

    v4 = v5;
    if (v12 < 37)
    {
      goto LABEL_63;
    }

    v9 = *(v14 + 16);
    if (!v9)
    {
      return v25;
    }

    goto LABEL_32;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t ComponentInitDataBuilder.Component.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void ComponentInitDataBuilder.Component.init(identifier:dataSize:clients:)(uint64_t a1@<X0>, uint64_t a2@<X1>, size_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[2] = a4;
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (a3)
    {
      v9 = sub_26F073DD0();
      *(v9 + 16) = a3;
      bzero((v9 + 32), a3);
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    a5[3] = v9;
    *a5 = a1;
    a5[1] = a2;
  }
}

uint64_t _s9Tightbeam24ComponentInitDataBuilderV0B0V18withMutableMessageyyyAA0aH0VnxYKXExYKs5ErrorRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v24 = a5;
  v10 = *(a3 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = *(v5 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 24) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_26F05C2AC(v16);
    *(v5 + 24) = v16;
  }

  v18 = *(v16 + 2);
  v19 = v16 + 32;
  v25 = v19;
  v26 = v18;
  v20 = v27;
  result = sub_26F059A18(&v25, a1, a2, a3, a4, v13);
  if (v20)
  {
    v22 = *(v10 + 32);
    result = v22(v15, v13, a3);
    if (!v25)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v19 == v25)
    {
      if (v26 == v18)
      {
        sub_26F073DF0();
        return v22(v24, v15, a3);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

  if (v25)
  {
    if (v19 == v25)
    {
      if (v26 == v18)
      {
        return sub_26F073DF0();
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_26F059A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = 0;
  v13 = *v10;
  v14 = v10[1];
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  result = _s9Tightbeam0A7MessageV17withBufferPointer3for__xAC0D5UsageO_Srys5UInt8VGxACnq_YKXEtq_YKs5ErrorR_r0_lFZ(&v26, v13, v14, sub_26F05CCD0, v21, MEMORY[0x277D84F78] + 8, a4, v19, v12);
  if (v6)
  {
    return (*(v9 + 32))(a6, v12, a4);
  }

  return result;
}

uint64_t sub_26F059B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v13(v10, v12);
  if (v6)
  {
    return (*(v9 + 32))(a6, v12, a4);
  }

  return result;
}

void sub_26F059C0C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_26F05C2C0(0, v2, 0);
    v3 = v14;
    v4 = v1 + 32;
    do
    {
      v5 = sub_26F05937C();
      v15 = v3;
      v7 = v3[2];
      v6 = v3[3];
      if (v7 >= v6 >> 1)
      {
        v8 = v5;
        sub_26F05C2C0((v6 > 1), v7 + 1, 1);
        v5 = v8;
        v3 = v15;
      }

      v3[2] = v7 + 1;
      v3[v7 + 4] = v5;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v9 = v3[2];
  if (v9)
  {
    v10 = 0;
    v11 = v3 + 4;
    while (1)
    {
      v12 = *v11++;
      v13 = __OFADD__(v10, v12);
      v10 += v12;
      if (v13)
      {
        break;
      }

      if (!--v9)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
  }
}

void sub_26F059D24()
{
  v1 = v0[3];
  v2 = v0[1];
  if ((v2 & 0x1000000000000000) != 0)
  {
    v6 = sub_26F073D40();
    v4 = v6 + 48;
    if (!__OFADD__(v6, 48))
    {
      goto LABEL_6;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  v4 = v3 + 48;
  if (__OFADD__(v3, 48))
  {
    goto LABEL_11;
  }

LABEL_6:
  sub_26F059C0C();
  if (__OFADD__(v4, v5))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v4 + v5, *(v1 + 16)))
  {
LABEL_13:
    __break(1u);
  }
}

void sub_26F059DC8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v8 = *v3;
  v9 = v3[1];
  v11 = v3[2];
  v10 = v3[3];
  *&v35 = *v3;
  *(&v35 + 1) = v9;
  *&v36 = v11;
  *(&v36 + 1) = v10;
  v30 = v10;
  sub_26F059D24();
  v13 = v12;
  if (a1)
  {
    if (a2 - a1 >= v12)
    {
      v29 = a3;
      v14 = a1;
      goto LABEL_7;
    }

LABEL_5:
    *a3 = 0;
    LOBYTE(v35) = 0;
    sub_26F05C440();
    swift_willThrowTypedImpl();
    return;
  }

  if (v12 > 0)
  {
    goto LABEL_5;
  }

  v29 = a3;
  v14 = 0;
LABEL_7:
  *&v35 = v8;
  *(&v35 + 1) = v9;
  *&v36 = v11;
  *(&v36 + 1) = v30;
  sub_26F059C0C();
  if ((v9 & 0x1000000000000000) != 0)
  {
    goto LABEL_41;
  }

  v16 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v9) & 0xF;
  }

  while (((v15 | v13 | v16) & 0x8000000000000000) == 0)
  {
    v17 = *(v11 + 16);
    v18 = *(v30 + 16);
    *v14 = 0x434F4D5044415441;
    v14[1] = v13;
    v14[2] = v16;
    v14[3] = v15;
    v14[4] = v17;
    v14[5] = v18;
    if (!a1)
    {
      goto LABEL_47;
    }

    v13 = a2 - a1;
    if (a2 - a1 < 48)
    {
      goto LABEL_43;
    }

    v19 = sub_26F058DF0((a1 + 48), a2, v8, v9);
    if (v19 < 0)
    {
      goto LABEL_44;
    }

    v20 = sub_26F056EA4(48, v19, a2 - a1, 48, a2 - a1, a1, a2);
    if (v21)
    {
      a2 -= a1;
    }

    else
    {
      a2 = v20;
    }

    if (v13 < a2)
    {
      goto LABEL_45;
    }

    if (a2 < 48)
    {
      goto LABEL_46;
    }

    v22 = *(v11 + 16);
    if (!v22)
    {
LABEL_35:
      memmove((a1 + a2), (v30 + 32), *(v30 + 16));
      return;
    }

    v8 = 0;
    v9 = v11 + 32;
    v14 = (v22 - 1);
    while (1)
    {
      v23 = *v9;
      v24 = *(v9 + 16);
      v37 = *(v9 + 32);
      v35 = v23;
      v36 = v24;
      v25 = *(v9 + 16);
      v32 = *v9;
      v33 = v25;
      v34 = *(v9 + 32);
      sub_26F05CC64(&v35, v31);
      v26 = sub_26F059474(a1 + a2, a1 + v13, &v38);
      v15 = sub_26F05CC9C(&v35);
      if (v4)
      {
        goto LABEL_33;
      }

      if (v26 < 0)
      {
        break;
      }

      if (v13 < a2)
      {
        goto LABEL_37;
      }

      if (!v26 || v13 - a2 < 0 || (v27 = v13, v13 - a2 >= v26))
      {
        v27 = a2 + v26;
        if (__OFADD__(a2, v26))
        {
          goto LABEL_39;
        }

        if (v27 > v13)
        {
          goto LABEL_40;
        }
      }

      if (v27 < a2)
      {
        goto LABEL_38;
      }

      if (v14 == v8)
      {
        a2 = v27;
        goto LABEL_35;
      }

      ++v8;
      v9 += 40;
      a2 = v27;
      if (v8 >= *(v11 + 16))
      {
        __break(1u);
LABEL_33:
        *v29 = v38;
        return;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    v28 = v15;
    v16 = sub_26F073D40();
    v15 = v28;
  }

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
  __break(1u);
}

uint64_t ComponentInitDataBuilder.Endpoint.init(identifier:numHandlers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

Tightbeam::ComponentInitDataBuilder __swiftcall ComponentInitDataBuilder.init(components:endpoints:)(Swift::OpaquePointer components, Swift::OpaquePointer endpoints)
{
  v2->_rawValue = components._rawValue;
  v2[1]._rawValue = endpoints._rawValue;
  result.endpoints = endpoints;
  result.components = components;
  return result;
}

uint64_t ComponentInitDataBuilder.encodedByteSize.getter()
{
  v1 = *v0;
  v2 = *(v0[1] + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v45 = MEMORY[0x277D84F90];
    sub_26F05C2C0(0, v2, 0);
    result = v45;
    v5 = *(v45 + 16);
    do
    {
      v46 = result;
      v6 = *(result + 24);
      v7 = v5 + 1;
      if (v5 >= v6 >> 1)
      {
        sub_26F05C2C0((v6 > 1), v5 + 1, 1);
        result = v46;
      }

      *(result + 16) = v7;
      *(result + 8 * v5++ + 32) = 24;
      --v2;
    }

    while (v2);
  }

  else
  {
    v7 = *(MEMORY[0x277D84F90] + 16);
    if (!v7)
    {
      goto LABEL_49;
    }

    result = MEMORY[0x277D84F90];
  }

  v8 = 0;
  v9 = 32;
  while (1)
  {
    v10 = *(result + v9);
    v11 = __OFADD__(v8, v10);
    v8 += v10;
    if (v11)
    {
      break;
    }

    v9 += 8;
    if (!--v7)
    {
      while (1)
      {

        v12 = v8 + 32;
        if (__OFADD__(v8, 32))
        {
          goto LABEL_56;
        }

        v13 = *(v1 + 16);
        if (!v13)
        {
          v37 = v3[2];
          if (v37)
          {
            v15 = v3;
LABEL_43:
            v38 = 0;
            v39 = 4;
            while (1)
            {
              v40 = v15[v39];
              v11 = __OFADD__(v38, v40);
              v38 += v40;
              if (v11)
              {
                goto LABEL_52;
              }

              ++v39;
              if (!--v37)
              {
                goto LABEL_46;
              }
            }
          }

          v38 = 0;
LABEL_46:

          result = v12 + v38;
          if (__OFADD__(v12, v38))
          {
            goto LABEL_57;
          }

          return result;
        }

        v41 = v8 + 32;
        sub_26F05C2C0(0, v13, 0);
        v14 = 0;
        v15 = v3;
        v42 = v13;
        v43 = v1 + 32;
        while (1)
        {
          v16 = (v43 + 32 * v14);
          v17 = v16[1];
          v18 = v16[2];
          v19 = v16[3];
          if ((v17 & 0x1000000000000000) != 0)
          {
            result = sub_26F073D40();
            v20 = result + 48;
            if (__OFADD__(result, 48))
            {
              goto LABEL_53;
            }
          }

          else
          {
            if ((v17 & 0x2000000000000000) != 0)
            {
              result = HIBYTE(v17) & 0xF;
            }

            else
            {
              result = *v16 & 0xFFFFFFFFFFFFLL;
            }

            v20 = result + 48;
            if (__OFADD__(result, 48))
            {
              goto LABEL_53;
            }
          }

          v1 = *(v18 + 16);
          if (v1)
          {
            break;
          }

          v22 = v3;
          v28 = v3[2];
          if (v28)
          {
            goto LABEL_26;
          }

LABEL_31:
          v29 = 0;
LABEL_32:

          v32 = v20 + v29;
          if (__OFADD__(v20, v29))
          {
            goto LABEL_54;
          }

          v33 = *(v19 + 16);
          v34 = v32 + v33;
          if (__OFADD__(v32, v33))
          {
            goto LABEL_55;
          }

          v36 = v15[2];
          v35 = v15[3];
          v37 = v36 + 1;
          if (v36 >= v35 >> 1)
          {
            result = sub_26F05C2C0((v35 > 1), v36 + 1, 1);
          }

          ++v14;
          v15[2] = v37;
          v15[v36 + 4] = v34;
          if (v14 == v13)
          {
            v12 = v41;
            goto LABEL_43;
          }
        }

        v44 = v19;
        v21 = v3;
        sub_26F05C2C0(0, v1, 0);
        v22 = v3;
        v23 = v18 + 32;
        do
        {
          v24 = sub_26F05937C();
          v47 = v22;
          v26 = v22[2];
          v25 = v22[3];
          if (v26 >= v25 >> 1)
          {
            v27 = v24;
            sub_26F05C2C0((v25 > 1), v26 + 1, 1);
            v24 = v27;
            v22 = v47;
          }

          v22[2] = v26 + 1;
          v22[v26 + 4] = v24;
          v23 += 40;
          --v1;
        }

        while (v1);
        v3 = v21;
        v13 = v42;
        v19 = v44;
        v28 = v22[2];
        if (!v28)
        {
          goto LABEL_31;
        }

LABEL_26:
        v29 = 0;
        v30 = v22 + 4;
        while (1)
        {
          v31 = *v30++;
          v11 = __OFADD__(v29, v31);
          v29 += v31;
          if (v11)
          {
            break;
          }

          if (!--v28)
          {
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_49:
        v8 = 0;
      }
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
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t _s9Tightbeam24ComponentInitDataBuilderV6encode4intoySw_tAC5ErrorOYKF(void *a1, uint64_t a2, _BYTE *a3)
{
  v6 = v4;
  v10 = *v3;
  v9 = v3[1];
  result = ComponentInitDataBuilder.encodedByteSize.getter();
  if (!a1)
  {
LABEL_23:
    if (result <= 0)
    {
      v12 = 0;
      if ((result & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      *v37 = v44;
      return result;
    }

LABEL_24:
    *a3 = 0;
    sub_26F05C440();
    return swift_willThrowTypedImpl();
  }

  if (a2 - a1 < result)
  {
    goto LABEL_24;
  }

  v12 = a1;
  if (result < 0)
  {
    goto LABEL_52;
  }

LABEL_4:
  v13 = *(v9 + 16);
  v14 = *(v10 + 16);
  *v12 = 0x494E495444415441;
  v12[1] = result;
  v12[2] = v13;
  v12[3] = v14;
  v15 = a2 - a1;
  if (a1)
  {
    v16 = a2 - a1;
  }

  else
  {
    v16 = 0;
  }

  if (v16 >= 32)
  {
    v17 = v6;
    v18 = 0;
    v19 = *(v9 + 16);
    v20 = 56;
    while (1)
    {
      v21 = v20 - 24;
      if (v19 == v18)
      {
        break;
      }

      if (v18 >= *(v9 + 16))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      if (!a1 || (!__OFSUB__(v15, v21) ? (v22 = 0) : (v22 = 1), v15 - v21 < 24))
      {
        sub_26F05C440();
        result = swift_willThrowTypedImpl();
        *a3 = 0;
        return result;
      }

      v23 = *(v9 + 32 + 16 * v18);
      v24 = &a1[v20 / 8];
      *(v24 - 3) = 0x454E445044415441;
      *(v24 - 1) = v23;
      if (v15 < v21)
      {
        goto LABEL_55;
      }

      if (v22)
      {
        goto LABEL_56;
      }

      if (v20 == 0x8000000000000000)
      {
        goto LABEL_57;
      }

      if ((v20 & 0x8000000000000000) == 0)
      {
        ++v18;
        v25 = v15 < v20;
        v20 += 24;
        if (!v25)
        {
          continue;
        }
      }

      __break(1u);
      goto LABEL_23;
    }

    v40 = *(v10 + 16);
    if (!v40)
    {
      return result;
    }

    v37 = a3;
    v38 = v10;
    v26 = 0;
    v27 = v10 + 56;
    v39 = a1;
    while (v26 < *(v10 + 16))
    {
      v41 = v26;
      v28 = v16;
      v29 = v16 - v21;
      v30 = __OFSUB__(v16, v21);
      v43 = v30;
      v42 = v17;
      if (a1)
      {
        v31 = a1 + v16;
      }

      else
      {
        v31 = 0;
      }

      if (a1)
      {
        v32 = a1 + v21;
      }

      else
      {
        v32 = 0;
      }

      v33 = v31;
      v17 = v42;
      sub_26F059DC8(v32, v33, &v44);
      v35 = v34;

      if (v42)
      {
        goto LABEL_53;
      }

      if (v35 < 0)
      {
        goto LABEL_59;
      }

      if (v21 > v28)
      {
        goto LABEL_60;
      }

      if (v43)
      {
        goto LABEL_61;
      }

      v16 = v28;
      a1 = v39;
      if (!v35 || v29 < 0 || (v36 = v28, v29 >= v35))
      {
        v36 = v21 + v35;
        if (__OFADD__(v21, v35))
        {
          goto LABEL_63;
        }

        if (v36 > v28)
        {
          goto LABEL_64;
        }
      }

      if (v36 < v21)
      {
        goto LABEL_62;
      }

      v26 = v41 + 1;
      v27 += 32;
      v21 = v36;
      v10 = v38;
      if (v40 == v41 + 1)
      {
        return result;
      }
    }

LABEL_58:
    __break(1u);
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
  }

  __break(1u);
  return result;
}

void *sub_26F05A6FC@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result && a2 - result >= 16)
  {
    if (*result == 0x5459504544415441)
    {
      v3 = result[1];
      if ((v3 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        if (a2 - result >= v3)
        {
          *a3 = result;
          a3[1] = result + v3;
          return result;
        }

        sub_26F073F00();
        MEMORY[0x274386C80](0xD000000000000023, 0x800000026F078890);
        sub_26F05C53C();
        v6 = sub_26F073EC0();
        MEMORY[0x274386C80](v6);

        MEMORY[0x274386C80](0x202C736574796220, 0xE800000000000000);
        sub_26F057088();
        v7 = sub_26F073EC0();
        MEMORY[0x274386C80](v7);

        MEMORY[0x274386C80](0xD000000000000010, 0x800000026F0788C0);
      }
    }

    else
    {
      sub_26F073F00();

      sub_26F05C53C();
      v4 = sub_26F073EC0();
      MEMORY[0x274386C80](v4);

      MEMORY[0x274386C80](0x746365707865202CLL, 0xEC000000203A6465);
      v5 = sub_26F073EC0();
      MEMORY[0x274386C80](v5);
    }
  }

  result = sub_26F073F50();
  __break(1u);
  return result;
}

uint64_t ComponentInitDataReader.TypeData.type()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_26F053C10(0x10uLL, *v0, v2);
  if (v1)
  {
    v7 = v2 - v1 < 16;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_19;
  }

  v8 = *(v1 + 8);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = v4;
  if (v8 < 0x10)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v3;
  v11 = v5;
  v12 = sub_26F056F2C(v3, v8 - 16, v4, v3, v4, v5, v6);
  if (v13)
  {
    v14 = v9;
  }

  else
  {
    v14 = v12;
  }

  if (v14 < v10)
  {
    goto LABEL_17;
  }

  if (v9 < v14)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    result = sub_26F073F50();
    __break(1u);
    return result;
  }

  if (v11)
  {
    return v11 + v10;
  }

  else
  {
    return 0;
  }
}

void *sub_26F05AAC4@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result && a2 - result >= 37)
  {
    if (*result == 0x434C4E5444415441)
    {
      v3 = result[1];
      if ((v3 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        if (a2 - result >= v3)
        {
          *a3 = result;
          a3[1] = result + v3;
          return result;
        }

        sub_26F073F00();
        MEMORY[0x274386C80](0xD000000000000023, 0x800000026F078890);
        sub_26F05C53C();
        v6 = sub_26F073EC0();
        MEMORY[0x274386C80](v6);

        MEMORY[0x274386C80](0x202C736574796220, 0xE800000000000000);
        sub_26F057088();
        v7 = sub_26F073EC0();
        MEMORY[0x274386C80](v7);

        MEMORY[0x274386C80](0xD000000000000010, 0x800000026F0788C0);
      }
    }

    else
    {
      sub_26F073F00();

      sub_26F05C53C();
      v4 = sub_26F073EC0();
      MEMORY[0x274386C80](v4);

      MEMORY[0x274386C80](0x746365707865202CLL, 0xEC000000203A6465);
      v5 = sub_26F073EC0();
      MEMORY[0x274386C80](v5);
    }
  }

  result = sub_26F073F50();
  __break(1u);
  return result;
}

uint64_t ComponentInitDataReader.Client.propertyName()()
{
  v1 = *v0;
  if (!*v0)
  {
    goto LABEL_19;
  }

  v2 = v0[1];
  if (v2 - v1 < 37)
  {
    goto LABEL_19;
  }

  v3 = *(v1 + 21);
  if (v3 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = sub_26F053C10(0x25uLL, *v0, v2);
  v8 = v7;
  v9 = *(v1 + 21);
  if (v9 < 0)
  {
    goto LABEL_16;
  }

  v10 = v4;
  v11 = v5;
  v12 = sub_26F056F2C(v4, v9, v8, v4, v8, v5, v6);
  if (v13)
  {
    v14 = v8;
  }

  else
  {
    v14 = v12;
  }

  if (v14 < v10)
  {
    goto LABEL_17;
  }

  if (v8 < v14)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    result = sub_26F073F50();
    __break(1u);
    return result;
  }

  if (v11)
  {
    return v11 + v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F05AEA4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_26F053C10(0x25uLL, *v0, v2);
  if (!v1 || v2 - v1 < 37)
  {
    goto LABEL_15;
  }

  v7 = v4;
  v8 = *(v1 + 21);
  if (v8 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v3;
  v10 = v5;
  v11 = sub_26F056F2C(v3, v8, v7, v3, v7, v5, v6);
  if (v12)
  {
    v13 = v7;
  }

  else
  {
    v13 = v11;
  }

  if (v7 < v13)
  {
    goto LABEL_13;
  }

  if (v13 < v9)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    result = sub_26F073F50();
    __break(1u);
    return result;
  }

  v14 = v10 + v13;
  if (v10)
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

void *ComponentInitDataReader.ClientBuffer.subscript.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = sub_26F053C10(0, v4, v5);
  if (v6 < 1)
  {
LABEL_37:
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_26F073F00();

    v27 = 0xD00000000000001CLL;
    v28 = 0x800000026F078790;
    sub_26F057088();
    v25 = sub_26F073EC0();
    MEMORY[0x274386C80](v25);
  }

  else
  {
    v11 = v7;
    v12 = v8;
    v13 = v9;
    if (v9)
    {
      v14 = v10 - v9;
    }

    else
    {
      v14 = 0;
    }

    v16 = v8 < 0 || v14 < v8;
    v17 = a1;
    while (1)
    {
      v18 = __OFSUB__(v12, v11);
      if (v13)
      {
        v19 = v13 + v12;
      }

      else
      {
        v19 = 0;
      }

      if (v13)
      {
        v20 = (v13 + v11);
      }

      else
      {
        v20 = 0;
      }

      result = sub_26F05AAC4(v20, v19, &v27);
      v22 = v28;
      if (!v17)
      {
        *a2 = v27;
        a2[1] = v22;
        return result;
      }

      if (!v27 || (v28 - v27) < 37)
      {
        goto LABEL_47;
      }

      v23 = *(v27 + 8);
      if ((v23 & 0x8000000000000000) != 0)
      {
        break;
      }

      if ((v11 & 0x8000000000000000) != 0 || v14 < v11)
      {
        goto LABEL_40;
      }

      if (v16)
      {
        goto LABEL_41;
      }

      if (v18)
      {
        goto LABEL_42;
      }

      if (!v23 || (v24 = v12, v12 - v11 >= v23))
      {
        v24 = v11 + v23;
        if (__OFADD__(v11, v23))
        {
          goto LABEL_45;
        }

        if ((v24 & 0x8000000000000000) != 0 || v14 < v24)
        {
          goto LABEL_46;
        }

        if (v12 < v24)
        {
          goto LABEL_44;
        }
      }

      if (v24 < v11)
      {
        goto LABEL_43;
      }

      --v17;
      v11 = v24;
      if (!--v6)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
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
  }

LABEL_47:
  result = sub_26F073F50();
  __break(1u);
  return result;
}

uint64_t ComponentInitDataReader.Component.identifier()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_26F053C10(0x30uLL, *v0, v2);
  if (!v1 || v2 - v1 < 48)
  {
    goto LABEL_15;
  }

  v7 = v4;
  v8 = *(v1 + 16);
  if (v8 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v3;
  v10 = v5;
  v11 = sub_26F056F2C(v3, v8, v7, v3, v7, v5, v6);
  if (v12)
  {
    v13 = v7;
  }

  else
  {
    v13 = v11;
  }

  if (v13 < v9)
  {
    goto LABEL_13;
  }

  if (v7 < v13)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    result = sub_26F073F50();
    __break(1u);
    return result;
  }

  if (v10)
  {
    return v10 + v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F05B320()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_26F053C10(0x30uLL, *v0, v2);
  if (!v1 || v2 - v1 < 48)
  {
    goto LABEL_24;
  }

  v7 = v4;
  v8 = *(v1 + 16);
  if (v8 < 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = v3;
  v10 = v5;
  v11 = v6;
  v12 = sub_26F056F2C(v3, v8, v7, v3, v7, v5, v6);
  if (v13)
  {
    v14 = v7;
  }

  else
  {
    v14 = v12;
  }

  if (v7 < v14)
  {
    goto LABEL_19;
  }

  if (v14 < v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = *(v1 + 24);
  if (v15 < 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v16 = sub_26F056F2C(v14, v15, v7, v14, v7, v10, v11);
  if (v17)
  {
    v18 = v7;
  }

  else
  {
    v18 = v16;
  }

  if (v18 < v14)
  {
    goto LABEL_22;
  }

  if (v7 < v18)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    result = sub_26F073F50();
    __break(1u);
    return result;
  }

  if (v10)
  {
    return v10 + v14;
  }

  else
  {
    return 0;
  }
}

uint64_t ComponentInitDataReader.Component.clients.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*v1 && v1[1] - v3 >= 48)
  {
    v4 = *(v3 + 32);
    if ((v4 & 0x8000000000000000) == 0)
    {
      result = sub_26F05B320();
      *a1 = result;
      a1[1] = v6;
      a1[2] = v4;
      return result;
    }

    __break(1u);
  }

  result = sub_26F073F50();
  __break(1u);
  return result;
}

int64_t ComponentInitDataReader.ComponentBuffer.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  result = sub_26F053C10(0, v5, v6);
  if (v7 < 1)
  {
LABEL_24:
    sub_26F073F00();
    sub_26F057088();
    sub_26F073EC0();

    MEMORY[0x274386C80](0xD000000000000011, 0x800000026F0787B0);
    while (1)
    {
LABEL_37:
      sub_26F073F50();
      __break(1u);
    }
  }

  if (!v10)
  {
LABEL_36:
    sub_26F05C494();
    swift_willThrowTypedImpl();
    sub_26F073F00();
    MEMORY[0x274386C80](0xD000000000000013, 0x800000026F0787D0);
    sub_26F073F40();
    goto LABEL_37;
  }

  v12 = v11 - v10;
  v13 = a1;
  while (1)
  {
    v14 = v9 - result;
    v15 = __OFSUB__(v9, result);
    if (v14 < 48)
    {
      goto LABEL_36;
    }

    v16 = v10 + result;
    if (*(v10 + result) != 0x434F4D5044415441)
    {
      goto LABEL_36;
    }

    v17 = *(v16 + 8);
    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v14 < v17)
    {
      goto LABEL_36;
    }

    if (!v13)
    {
      break;
    }

    if (v17 < 0x30)
    {
      goto LABEL_37;
    }

    if (result < 0)
    {
      goto LABEL_27;
    }

    if (v12 < result)
    {
      goto LABEL_28;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    if (v12 < v9)
    {
      goto LABEL_30;
    }

    if (v15)
    {
      goto LABEL_31;
    }

    v18 = result + v17;
    if (__OFADD__(result, v17))
    {
      goto LABEL_32;
    }

    if ((v18 & 0x8000000000000000) != 0 || v12 < v18)
    {
      goto LABEL_33;
    }

    if (v9 < v18)
    {
      goto LABEL_34;
    }

    if (v18 < result)
    {
      goto LABEL_35;
    }

    --v13;
    result += v17;
    if (!--v7)
    {
      goto LABEL_24;
    }
  }

  *a2 = v16;
  a2[1] = v16 + v17;
  return result;
}

unint64_t ComponentInitDataReader.Error.description.getter()
{
  v1 = 0x64696C61766E692ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696146646E69622ELL;
  }
}

unint64_t sub_26F05B868()
{
  v1 = 0x64696C61766E692ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696146646E69622ELL;
  }
}

void *_s9Tightbeam23ComponentInitDataReaderV5start5countACSV_SitAC5ErrorOYKcfC@<X0>(void *result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (a2 > 31)
  {
    if (*result == 0x494E495444415441)
    {
      if (result[1] == a2)
      {
        *a4 = result;
        a4[1] = result + a2;
        return result;
      }

      v5 = 2;
      sub_26F05C4E8();
    }

    else
    {
      v5 = 1;
      sub_26F05C4E8();
    }

    result = swift_willThrowTypedImpl();
  }

  else
  {
    sub_26F05C4E8();
    result = swift_willThrowTypedImpl();
    v5 = 0;
  }

  *a3 = v5;
  return result;
}

uint64_t sub_26F05B9AC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_26F053C10(0x20uLL, *v0, v2);
  if (!v1 || v2 - v1 < 32)
  {
    goto LABEL_19;
  }

  v7 = *(v1 + 16);
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = v4;
  v9 = 24 * v7;
  if ((v7 * 24) >> 64 != (24 * v7) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v9 < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v3;
  v11 = v5;
  v12 = sub_26F056F2C(v3, v9, v8, v3, v8, v5, v6);
  if (v13)
  {
    v14 = v8;
  }

  else
  {
    v14 = v12;
  }

  if (v14 < v10)
  {
    goto LABEL_17;
  }

  if (v8 < v14)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    result = sub_26F073F50();
    __break(1u);
    return result;
  }

  if (v11)
  {
    return v11 + v10;
  }

  else
  {
    return 0;
  }
}

uint64_t ComponentInitDataReader.endpointCount.getter()
{
  v1 = *v0;
  if (*v0 && v0[1] - v1 >= 32)
  {
    result = *(v1 + 16);
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

    __break(1u);
  }

  result = sub_26F073F50();
  __break(1u);
  return result;
}

uint64_t ComponentInitDataReader.totalClientCount.getter()
{
  v1 = *v0;
  if (!*v0 || (v2 = v0[1], v2 - v1 < 32))
  {
    while (1)
    {
LABEL_19:
      sub_26F073F50();
      __break(1u);
    }
  }

  v3 = *(v1 + 24);
  if (v3 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = *v0;
  v13 = v2;
  sub_26F05C14C();
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = *(v1 + 24);
      if (v6 < 0)
      {
        break;
      }

      v12 = v1;
      v13 = v2;
      v12 = sub_26F05C14C();
      v13 = v7;
      v14 = v6;
      ComponentInitDataReader.ComponentBuffer.subscript.getter(v4, v11);
      if (!v11[0] || (v11[1] - v11[0]) < 48)
      {
        goto LABEL_19;
      }

      v8 = *(v11[0] + 32);
      if (v8 < 0)
      {
        goto LABEL_16;
      }

      sub_26F05B320();
      v9 = __OFADD__(v5, v8);
      v5 += v8;
      if (v9)
      {
        goto LABEL_17;
      }

      if (v3 == ++v4)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  return 0;
}

uint64_t ComponentInitDataReader.components.getter@<X0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (*v2 && v2[1] - v4 >= 32)
  {
    v5 = *(v4 + 24);
    if ((v5 & 0x8000000000000000) == 0)
    {
      result = sub_26F05C14C();
      *a2 = result;
      a2[1] = v7;
      a2[2] = v5;
      return result;
    }

    __break(1u);
  }

  result = sub_26F073F50();
  __break(1u);
  return result;
}

uint64_t ComponentInitDataReader.totalTypesCount.getter(uint64_t a1)
{
  v2 = *v1;
  if (!*v1 || (v3 = v1[1], v3 - v2 < 32))
  {
    while (1)
    {
LABEL_32:
      sub_26F073F50();
      __break(1u);
    }
  }

  v4 = *(v2 + 24);
  if (v4 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v25 = *v1;
  v26 = v3;
  sub_26F05C14C();
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = *(v2 + 24);
      if (v8 < 0)
      {
        goto LABEL_29;
      }

      v25 = v2;
      v26 = v3;
      v25 = sub_26F05C14C();
      v26 = v9;
      v27 = v8;
      ComponentInitDataReader.ComponentBuffer.subscript.getter(v5, &v20);
      if (!v20 || v21 - v20 < 48)
      {
        goto LABEL_32;
      }

      v10 = *(v20 + 32);
      if (v10 < 0)
      {
        goto LABEL_30;
      }

      v23 = v20;
      v24 = v21;
      sub_26F05B320();
      if (v10)
      {
        break;
      }

LABEL_6:
      if (++v5 == v4)
      {
        return v7;
      }
    }

    v11 = 0;
    v7 = v6;
    while (1)
    {
      v12 = *(v2 + 24);
      if (v12 < 0)
      {
        break;
      }

      v25 = v2;
      v26 = v3;
      v25 = sub_26F05C14C();
      v26 = v13;
      v27 = v12;
      ComponentInitDataReader.ComponentBuffer.subscript.getter(v5, &v23);
      if (!v23 || v24 - v23 < 48)
      {
        goto LABEL_32;
      }

      v14 = *(v23 + 32);
      if (v14 < 0)
      {
        goto LABEL_26;
      }

      v20 = v23;
      v21 = v24;
      v20 = sub_26F05B320();
      v21 = v15;
      v22 = v14;
      ComponentInitDataReader.ClientBuffer.subscript.getter(v11, v19);
      if (!v19[0] || (v19[1] - v19[0]) < 37)
      {
        goto LABEL_32;
      }

      v16 = *(v19[0] + 29);
      if (v16 < 0)
      {
        goto LABEL_27;
      }

      sub_26F05AEA4();
      v17 = __OFADD__(v7, v16);
      v7 += v16;
      if (v17)
      {
        goto LABEL_28;
      }

      ++v11;
      v6 = v7;
      if (v10 == v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  return 0;
}

uint64_t ComponentInitDataReader.endpoint(at:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(sub_26F05B9AC() + 24 * a1) == 0x454E445044415441)
  {
    v4 = 24 * a1;
    v5 = *(sub_26F05B9AC() + v4 + 8);
    result = sub_26F05B9AC();
    v7 = *(result + v4 + 16);
    *a2 = v5;
    a2[1] = v7;
  }

  else
  {
    sub_26F073F00();

    sub_26F05C53C();
    v8 = sub_26F073EC0();
    MEMORY[0x274386C80](v8);

    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t sub_26F05C14C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_26F053C10(0x20uLL, *v0, v2);
  if (!v1 || v2 - v1 < 32)
  {
    goto LABEL_19;
  }

  v7 = *(v1 + 16);
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = v4;
  v9 = 24 * v7;
  if ((v7 * 24) >> 64 != (24 * v7) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v9 < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v3;
  v11 = v5;
  v12 = sub_26F056F2C(v3, v9, v8, v3, v8, v5, v6);
  if (v13)
  {
    v14 = v8;
  }

  else
  {
    v14 = v12;
  }

  if (v8 < v14)
  {
    goto LABEL_17;
  }

  if (v14 < v10)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    result = sub_26F073F50();
    __break(1u);
    return result;
  }

  v15 = v11 + v14;
  if (v11)
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F05C278(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

char *sub_26F05C2C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26F05C2E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26F05C2E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D12F0, &unk_26F075640);
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

unint64_t _s9Tightbeam13_StaticStringV2eeoiySbAC_ACtFZ_0(unint64_t result, void *a2)
{
  v2 = *(result + 8);
  if (v2 != a2[1])
  {
    return 0;
  }

  if (v2 < 0)
  {
LABEL_10:
    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = *result;
    do
    {
      result = v2 == v3;
      if (v2 == v3)
      {
        break;
      }

      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_10;
      }

      v5 = *(v4 + v3);
      v6 = *(*a2 + v3++);
    }

    while (v5 == v6);
  }

  return result;
}

unint64_t sub_26F05C440()
{
  result = qword_2806D12B8;
  if (!qword_2806D12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D12B8);
  }

  return result;
}

unint64_t sub_26F05C494()
{
  result = qword_2806D12C0;
  if (!qword_2806D12C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D12C0);
  }

  return result;
}

unint64_t sub_26F05C4E8()
{
  result = qword_2806D12C8;
  if (!qword_2806D12C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D12C8);
  }

  return result;
}

unint64_t sub_26F05C53C()
{
  result = qword_2806D12D0;
  if (!qword_2806D12D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D12D0);
  }

  return result;
}

unint64_t sub_26F05C594()
{
  result = qword_2806D12D8;
  if (!qword_2806D12D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D12D8);
  }

  return result;
}

unint64_t sub_26F05C5EC()
{
  result = qword_2806D12E0;
  if (!qword_2806D12E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D12E0);
  }

  return result;
}

unint64_t sub_26F05C644()
{
  result = qword_2806D12E8;
  if (!qword_2806D12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D12E8);
  }

  return result;
}

uint64_t sub_26F05C6B8(uint64_t *a1, int a2)
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

uint64_t sub_26F05C700(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ComponentInitDataBuilder.Error(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ComponentInitDataBuilder.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26F05C8B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26F05C900(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_26F05C94C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26F05C994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26F05C9EC(uint64_t a1, int a2)
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

uint64_t sub_26F05CA34(uint64_t result, int a2, int a3)
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

uint64_t sub_26F05CB14(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26F05CBA4(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26F05CD78()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26F074050();
  MEMORY[0x274386FC0](v1);
  MEMORY[0x274386FC0](v2);
  return sub_26F074080();
}

uint64_t sub_26F05CDD4()
{
  v1 = v0[1];
  MEMORY[0x274386FC0](*v0);
  return MEMORY[0x274386FC0](v1);
}

uint64_t sub_26F05CE10(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_26F074050();
  MEMORY[0x274386FC0](v2);
  MEMORY[0x274386FC0](v3);
  return sub_26F074080();
}

unint64_t sub_26F05CE98()
{
  result = qword_2806D12F8;
  if (!qword_2806D12F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D12F8);
  }

  return result;
}

uint64_t sub_26F05CEEC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 < 0x18)
  {
    return 0;
  }

  v3 = v1[4];
  if (v2 < v3)
  {
    return 0;
  }

  v5 = v3 - 24;
  if (v3 < 0x18)
  {
    __break(1u);
    goto LABEL_18;
  }

  v17 = v1[5];
  v6 = sub_26F053C98(v3, v1);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ((v11 & 1) == 0)
  {
    swift_bridgeObjectRetain_n();
LABEL_7:
    sub_26F05D0B0(v6, v8, v10, v12);
    v14 = v13;

    goto LABEL_14;
  }

  sub_26F073FD0();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v15 + 16);

  if (__OFSUB__(v12 >> 1, v10))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v16 != (v12 >> 1) - v10)
  {
LABEL_20:
    swift_unknownObjectRelease();
    v5 = v3 - 24;
    goto LABEL_7;
  }

  v14 = swift_dynamicCastClass();

  swift_unknownObjectRelease();
  v5 = v3 - 24;
  if (v14)
  {
    goto LABEL_15;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_14:
  swift_unknownObjectRelease();
LABEL_15:
  *v0 = v14;
  if (v1[2] != v5)
  {
LABEL_18:
    sub_26F05D0B0(v1, (v1 + 4), 24, (2 * v3) | 1);
  }

  return v17;
}

void sub_26F05D0B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D1300, &unk_26F075750);
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

uint64_t sub_26F05D170()
{
  v0 = sub_26F073E30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26F073E20();
  MEMORY[0x28223BE20](v4);
  v5 = sub_26F073C50();
  MEMORY[0x28223BE20](v5 - 8);
  sub_26F058668();
  sub_26F073C40();
  v7[1] = MEMORY[0x277D84F90];
  sub_26F0586B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D12A8, &unk_26F0757D0);
  sub_26F05870C();
  sub_26F073ED0();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  result = sub_26F073E50();
  qword_2806D1308 = result;
  return result;
}

void *sub_26F05D378(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = v5;
  v7 = v4;
  v41[5] = *MEMORY[0x277D85DE8];
  v12 = sub_26F0739A0();
  MEMORY[0x28223BE20](v12 - 8);
  v36[1] = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2806D1310, &qword_26F0757C8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (v36 - v15);
  v17 = MEMORY[0x277D84F90];
  v7[14] = a2;
  v7[15] = v17;
  v7[13] = a1;
  v39 = a3;
  sub_26F0583F4(a3, (v7 + 7));
  v38 = a4;
  sub_26F0583F4(a4, (v7 + 2));
  v18 = objc_opt_self();

  v19 = [v18 defaultManager];
  v36[0] = a1;
  v20 = sub_26F073CA0();
  v41[0] = 0;
  v21 = [v19 removeItemAtPath:v20 error:v41];

  if (v21)
  {
    v22 = v41[0];
  }

  else
  {
    v23 = v41[0];
    v24 = sub_26F073880();

    swift_willThrow();
    MEMORY[0x274387630](v24);
    v6 = 0;
  }

  v37 = v6;
  sub_26F073B50();
  sub_26F073B40();
  if (qword_2806D11A0 != -1)
  {
    swift_once();
  }

  sub_26F073BC0();
  swift_allocObject();

  v25 = sub_26F073BB0();
  sub_26F073B20();

  v26 = sub_26F073B10();
  if (*v27 >> 62 && sub_26F073F60() < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_26F058578(0, 0, v25);

  v26(v41, 0);

  *v16 = v36[0];
  v16[1] = a2;
  v28 = *MEMORY[0x277CD8AF0];
  v29 = sub_26F0739B0();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v16, v28, v29);
  (*(v30 + 56))(v16, 0, 1, v29);
  sub_26F073B30();

  sub_26F073990();
  sub_26F073A10();
  swift_allocObject();
  v31 = v37;
  v32 = sub_26F073A00();
  if (!v31)
  {
    v7[12] = v32;
    v33 = *__swift_project_boxed_opaque_existential_1(v7 + 7, v7[10]);
    v41[3] = type metadata accessor for UnixTransportService(0);
    v41[4] = &off_287F0BF88;
    v41[0] = v33;
    sub_26F0583F4(v41, v40);
    v34 = swift_allocObject();
    sub_26F05DD90(v40, v34 + 16);

    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_26F04B810(sub_26F05DDA8, v34);
    sub_26F0739C0();

    sub_26F04B810(sub_26F05DDB0, v7);
    sub_26F0739D0();

    if (qword_2806D1188 == -1)
    {
LABEL_10:
      sub_26F0739F0();

      __swift_destroy_boxed_opaque_existential_1(v38);
      __swift_destroy_boxed_opaque_existential_1(v39);
      return v7;
    }

LABEL_14:
    swift_once();
    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(v39);
  __swift_destroy_boxed_opaque_existential_1(v7 + 2);
  __swift_destroy_boxed_opaque_existential_1(v7 + 7);

  type metadata accessor for UnixListener();
  swift_deallocPartialClassInstance();
  return v7;
}

uint64_t sub_26F05D910(uint64_t a1)
{
  v2 = sub_26F0739E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CD8B38])
  {
    (*(v3 + 8))(v5, v2);
LABEL_4:
    v8 = 0;
    v9 = 0xE000000000000000;
    sub_26F073F00();
    MEMORY[0x274386C80](0xD000000000000023, 0x800000026F0789D0);
    sub_26F073F40();
    sub_26F057394(v8, v9);
  }

  if (v6 == *MEMORY[0x277CD8B48])
  {
    goto LABEL_4;
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26F05DAC0(uint64_t a1)
{
  v2 = v1;
  v4 = v2[13];
  v5 = v2[14];
  sub_26F0583F4((v2 + 2), v16);
  type metadata accessor for UnixProtocolConnection();
  v6 = swift_allocObject();
  v7 = v17;
  v8 = v18;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  MEMORY[0x28223BE20](v9);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);

  sub_26F057D5C(v4, v5, v11, a1, v6, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v16);
  v13 = swift_beginAccess();
  MEMORY[0x274386D00](v13);
  if (*((v2[15] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[15] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_26F073DC0();
  }

  sub_26F073DE0();
  return swift_endAccess();
}

void *UnixListener.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return v0;
}

uint64_t UnixListener.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 128, 7);
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

uint64_t sub_26F05DD90(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26F05DDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for ComponentRuntimeLock(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ComponentRuntimeLock(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26F05DEC4(uint64_t a1, unint64_t a2)
{
  v5 = sub_26F073930();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v11 = 0;
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_36;
  }

  v11 = HIDWORD(a1) - a1;
LABEL_10:
  v14 = *v2;
  v15 = *(*v2 + 2);
  v16 = v15 + v11;
  if (__OFADD__(v15, v11))
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v25 = v2;
    v26 = *(v14 + 2);
    sub_26F063ECC(&qword_2806D13D0, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
    sub_26F073EA0();
    if (v31)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v27 = *(v14 + 3);
      v28 = v27 >> 1;
      if ((v27 >> 1) >= v26 + 1)
      {
        break;
      }

      v14 = sub_26F061794((v27 > 1), v26 + 1, 1, v14);
      v29 = v31;
      v28 = *(v14 + 3) >> 1;
      if ((v31 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_27:
      *(v14 + 2) = v26;
      v2 = v25;
      if (v29)
      {
        goto LABEL_22;
      }
    }

    v29 = 0;
    do
    {
LABEL_30:
      if (v26 >= v28)
      {
        break;
      }

      v14[v26++ + 32] = v30[14];
      sub_26F073EA0();
      v29 = v31;
    }

    while ((v31 & 1) == 0);
    goto LABEL_27;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v18 = *(v14 + 3) >> 1, v18 < v16))
  {
    if (v15 <= v16)
    {
      v19 = v15 + v11;
    }

    else
    {
      v19 = v15;
    }

    v14 = sub_26F061794(isUniquelyReferenced_nonNull_native, v19, 1, v14);
    v18 = *(v14 + 3) >> 1;
  }

  v20 = v18 - *(v14 + 2);
  v21 = sub_26F073900();
  result = sub_26F0588B8(a1, a2);
  if (v21 < v11)
  {
    goto LABEL_24;
  }

  if (v21 < 1)
  {
    goto LABEL_21;
  }

  v22 = *(v14 + 2);
  v23 = __OFADD__(v22, v21);
  v24 = v22 + v21;
  if (!v23)
  {
    *(v14 + 2) = v24;
LABEL_21:
    if (v21 != v20)
    {
LABEL_22:
      result = (*(v6 + 8))(v9, v5);
      *v2 = v14;
      return result;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_26F05E190()
{
  sub_26F06172C(v0 + OBJC_IVAR____TtC9Tightbeam15EveEndpointData_baseURL);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26F05E1F4()
{
  type metadata accessor for EveTransportCoordinator();
  v0 = swift_allocObject();
  v1 = sub_26F0633AC(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D1420, &qword_26F0759E8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v1;
  *(v0 + 16) = result;
  qword_2806D2660 = v0;
  return result;
}

uint64_t sub_26F05E268@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_26F0738E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (*(*a1 + 16) && (v11 = sub_26F061888(a2), (v12 & 1) != 0))
  {
    *a3 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    (*(v7 + 16))(v9, a2, v6);
    type metadata accessor for EveTransportManager(0);
    v14 = swift_allocObject();
    sub_26F05F708(v9);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *a1;
    result = sub_26F062938(v14, a2, isUniquelyReferenced_nonNull_native);
    *a1 = v17;
    *a3 = v14;
  }

  return result;
}

uint64_t sub_26F05E3D4()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26F05E40C()
{
  v0 = sub_26F073970();
  __swift_allocate_value_buffer(v0, qword_2806D1398);
  __swift_project_value_buffer(v0, qword_2806D1398);
  return sub_26F073960();
}

uint64_t *sub_26F05E48C()
{
  v1 = v0;

  v2 = *(v0 + 72);
  v12 = *(v0 + 56);
  v13 = v2;
  *v14 = *(v0 + 88);
  *&v14[9] = *(v0 + 97);
  v3 = *(v0 + 40);
  v11[0] = *(v0 + 24);
  v11[1] = v3;
  v4 = *(&v2 + 1);
  if (!*(&v2 + 1) || (v11[0] & 1) != 0)
  {
    goto LABEL_15;
  }

  if (v13 > 1u)
  {
    if (v13 == 2)
    {
      goto LABEL_14;
    }

    v5 = v14[24];
    if (v14[24] != 255)
    {
      v4 = *&v14[8];
      v1 = *v14;
      if (!v14[24])
      {

        (*&v14[8])(*v14);
        MEMORY[0x2743877B0](*v14, -1, -1);
        sub_26F063E10(*v14, *&v14[8], *&v14[16], 0);
        v5 = 0;
      }

      sub_26F063E10(*v14, *&v14[8], *&v14[16], v5);
    }

    sub_26F073F50();
    __break(1u);
LABEL_12:
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v11 + 1, v12);
    result = (*(*(&v6 + 1) + 8))(v6, *(&v6 + 1));
    if (!result)
    {
      __break(1u);
      return result;
    }

    tb_service_connection_message_destruct(result, v4);
    goto LABEL_14;
  }

  if (v13)
  {
    goto LABEL_12;
  }

  tb_client_connection_message_destruct(*(*(&v11[0] + 1) + 16), *(&v13 + 1));
LABEL_14:
  tb_message_destruct(v4);
  MEMORY[0x2743877B0](v4, -1, -1);
LABEL_15:
  if (v13 <= 2u)
  {
    sub_26F063DBC(v11 + 8);
  }

  v8 = v14[24];
  if (v14[24] != 255)
  {
    v9 = *v14;
    v10 = *&v14[16];
    if (!v14[24])
    {

      (*(&v9 + 1))(v9);
      MEMORY[0x2743877B0](v9, -1, -1);
      sub_26F063E10(v9, *(&v9 + 1), v10, 0);
      v8 = 0;
    }

    sub_26F063E10(v9, *(&v9 + 1), v10, v8);
  }

  return v1;
}

uint64_t sub_26F05E6BC()
{
  sub_26F05E48C();

  return MEMORY[0x2821FE8D8](v0, 121, 7);
}

uint64_t sub_26F05E6F0()
{
  sub_26F073AD0();
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  for (i = 0; v4; result = )
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = *(*(v1 + 56) + ((v8 << 9) | (8 * v9)));
    *(v10 + 116) = 4;
    *(v10 + 120) = 0;

    sub_26F073E70();
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      *(v0 + 24) = sub_26F06369C(MEMORY[0x277D84F90]);
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26F05E834()
{
  v0 = sub_26F073AA0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_26F073AC0();
  (*(v1 + 104))(v4, *MEMORY[0x277CD8DD0], v0);
  v7 = MEMORY[0x2743869E0](v6, v4);
  v8 = *(v1 + 8);
  v8(v4, v0);
  result = (v8)(v6, v0);
  if (v7)
  {
    swift_allocObject();
    swift_weakInit();

    sub_26F073AE0();
  }

  return result;
}

uint64_t sub_26F05E9D8(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_26F05EF4C(a1, a2, a4 & 1);
  }

  return result;
}

uint64_t sub_26F05EA64(uint64_t a1, uint64_t a2)
{
  v5 = sub_26F073A40();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 40);
  if (v9 == -1)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v2 + 40) = v9 + 1;
  if (a1 < 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    result = sub_26F073F50();
    __break(1u);
    return result;
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v2 + 24);
  *(v2 + 24) = 0x8000000000000000;
  sub_26F062B04(a2, a1, v9, isUniquelyReferenced_nonNull_native);
  *(v2 + 24) = v27;
  swift_endAccess();
  swift_beginAccess();
  if (*(a2 + 112) > 1u)
  {
    goto LABEL_15;
  }

  v11 = *(a2 + 88);
  v12 = *(v11 + 16);
  if (*(v11 + 24) < v12)
  {
    goto LABEL_15;
  }

  if (*(v11 + 32) < 24)
  {
    goto LABEL_14;
  }

  v13 = *v11;
  *v13 = v12;
  v13[1] = a1;
  v13[2] = v9;
  if (*(a2 + 112) >= 2u)
  {
    goto LABEL_15;
  }

  v14 = *(a2 + 88);
  v15 = v14[2];
  if (v14[3] < v15)
  {
    goto LABEL_15;
  }

  v16 = *v14;
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v2;
  *v8 = sub_26F063DAC;
  v8[1] = v17;
  (*(v6 + 104))(v8, *MEMORY[0x277CD8DB0], v5);
  sub_26F073A30();

  sub_26F073A20();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D13D8, &unk_26F0759B0);
  v26[3] = v18;
  v26[4] = sub_26F063E84(&qword_2806D13E0, &qword_2806D13D8, &unk_26F0759B0, MEMORY[0x277CC9BC0]);
  v26[0] = v16;
  v26[1] = v15;
  v19 = __swift_project_boxed_opaque_existential_1(v26, v18);
  if (*v19)
  {
    v20 = (v19[1] + *v19);
  }

  else
  {
    v20 = 0;
  }

  sub_26F06D394(*v19, v20, v25);
  v21 = v25[0];
  v22 = v25[1];
  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_26F073A80();
  sub_26F0588B8(v21, v22);

  (*(v6 + 8))(v8, v5);
  return swift_endAccess();
}

uint64_t sub_26F05EE50(uint64_t a1, uint64_t a2)
{
  if (qword_2806D1198 != -1)
  {
    swift_once();
  }

  v3 = sub_26F073970();
  __swift_project_value_buffer(v3, qword_2806D1398);
  v4 = sub_26F073950();
  v5 = sub_26F073E10();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = a2;
    _os_log_impl(&dword_26F04A000, v4, v5, "| message sent, %ld bytes", v6, 0xCu);
    MEMORY[0x2743877B0](v6, -1, -1);
  }

  return sub_26F05E834();
}

uint64_t sub_26F05EF4C(uint64_t result, unint64_t a2, char a3)
{
  if (a2 >> 60 != 15)
  {
    v5 = result;
    sub_26F058864(result, a2);
    if (qword_2806D1198 != -1)
    {
      swift_once();
    }

    v6 = sub_26F073970();
    __swift_project_value_buffer(v6, qword_2806D1398);
    sub_26F058864(v5, a2);
    v7 = sub_26F073950();
    v8 = sub_26F073E10();
    if (!os_log_type_enabled(v7, v8))
    {
      sub_26F063D98(v5, a2);
LABEL_17:

      swift_beginAccess();
      sub_26F058864(v5, a2);
      sub_26F05DEC4(v5, a2);
      swift_endAccess();
      sub_26F05F1E8();
      result = sub_26F063D98(v5, a2);
      goto LABEL_18;
    }

    result = swift_slowAlloc();
    *result = 134217984;
    v9 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v9 != 2)
      {
        v10 = 0;
        goto LABEL_16;
      }

      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      v13 = __OFSUB__(v11, v12);
      v10 = v11 - v12;
      if (!v13)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    else if (!v9)
    {
      v10 = BYTE6(a2);
LABEL_16:
      *(result + 4) = v10;
      v14 = result;
      sub_26F063D98(v5, a2);
      _os_log_impl(&dword_26F04A000, v7, v8, "| received: %ld", v14, 0xCu);
      MEMORY[0x2743877B0](v14, -1, -1);
      goto LABEL_17;
    }

    LODWORD(v10) = HIDWORD(v5) - v5;
    if (__OFSUB__(HIDWORD(v5), v5))
    {
      __break(1u);
      return result;
    }

    v10 = v10;
    goto LABEL_16;
  }

LABEL_18:
  if (a3)
  {
    if (qword_2806D1198 != -1)
    {
      swift_once();
    }

    v15 = sub_26F073970();
    __swift_project_value_buffer(v15, qword_2806D1398);
    v16 = sub_26F073950();
    v17 = sub_26F073E10();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26F04A000, v16, v17, "| disconnected", v18, 2u);
      MEMORY[0x2743877B0](v18, -1, -1);
    }

    return sub_26F05E6F0();
  }

  return result;
}

void sub_26F05F1E8()
{
  swift_beginAccess();
  v0 = sub_26F05CEEC();
  v2 = v1;
  v4 = v3;
  swift_endAccess();
  if (v4)
  {
    swift_beginAccess();
    v5 = sub_26F061E20(v0, v2);
    swift_endAccess();
    if (v5)
    {
      if (qword_2806D1198 != -1)
      {
        swift_once();
      }

      v6 = sub_26F073970();
      __swift_project_value_buffer(v6, qword_2806D1398);

      v7 = sub_26F073950();
      v8 = sub_26F073E10();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 134217984;
        *(v9 + 4) = *(v4 + 16);

        _os_log_impl(&dword_26F04A000, v7, v8, "| copying out payload of %ld bytes", v9, 0xCu);
        MEMORY[0x2743877B0](v9, -1, -1);
      }

      else
      {
      }

      swift_beginAccess();
      if (*(v5 + 112) == 255 || (sub_26F05F57C((v5 + 88), v4), swift_endAccess(), , swift_beginAccess(), (v14 = *(v5 + 80)) == 0))
      {
        sub_26F073F50();
        __break(1u);
      }

      else
      {
        swift_endAccess();
        tb_message_configure_received(v14, 2);
        sub_26F073E70();
      }
    }

    else
    {

      if (qword_2806D1198 != -1)
      {
        swift_once();
      }

      v10 = sub_26F073970();
      __swift_project_value_buffer(v10, qword_2806D1398);
      v11 = sub_26F073950();
      v12 = sub_26F073E00();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134218240;
        *(v13 + 4) = v0;
        *(v13 + 12) = 2048;
        *(v13 + 14) = v2;
        _os_log_impl(&dword_26F04A000, v11, v12, "| reply message buffer for id %llu:%llu has already vanished!", v13, 0x16u);
        MEMORY[0x2743877B0](v13, -1, -1);
      }
    }
  }
}

uint64_t sub_26F05F57C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_26F05CD70();
  if (*(a1 + 24) >= 2u || (v5 = v4, v4 >= *(*a1 + 24)) || (*(*a1 + 16) = v4, v7 = *a1, v6 = a1[1], v8 = a1[2], v9 = *(a1 + 24), result = sub_26F068058(a2, *(a2 + 16), v7, v6, v8, v9), v9 >= 2) || v5 >= v7[3])
  {
    result = sub_26F073F50();
    __break(1u);
  }

  else
  {
    v7[2] = v5;
  }

  return result;
}

uint64_t sub_26F05F6C0()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_26F05F708(uint64_t a1)
{
  v2 = v1;
  v18 = a1;
  v17 = sub_26F073E30();
  v3 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26F073E20();
  MEMORY[0x28223BE20](v6);
  v7 = sub_26F073C50();
  MEMORY[0x28223BE20](v7 - 8);
  v16 = sub_26F058668();
  sub_26F073C40();
  v19 = MEMORY[0x277D84F90];
  sub_26F063ECC(&qword_2806D12A0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D12A8, &unk_26F0757D0);
  sub_26F063E84(&qword_2806D12B0, &qword_2806D12A8, &unk_26F0757D0, MEMORY[0x277D83970]);
  sub_26F073ED0();
  (*(v3 + 104))(v5, *MEMORY[0x277D85260], v17);
  *(v1 + 16) = sub_26F073E50();
  v8 = OBJC_IVAR____TtC9Tightbeam19EveTransportManager_url;
  v9 = sub_26F0738E0();
  v10 = *(v9 - 8);
  v11 = v18;
  (*(v10 + 16))(v2 + v8, v18, v9);
  v12 = sub_26F063594(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D1410, &qword_26F0759E0);
  v13 = swift_allocObject();
  *(v13 + 40) = 0;
  v14 = *(v10 + 8);

  v14(v11, v9);
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v12;

  *(v2 + OBJC_IVAR____TtC9Tightbeam19EveTransportManager_listener) = v13;
  return v2;
}

uint64_t sub_26F05FA4C(uint64_t *a1, uint64_t a2)
{
  v79[1] = *MEMORY[0x277D85DE8];
  v5 = sub_26F0739A0();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2806D1310, &qword_26F0757C8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v67 - v9);
  v11 = sub_26F0738E0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v18 = &v67 - v17;
  if (!*a1)
  {
    v71 = v10;
    v72 = v7;
    v69 = a1;
    v77 = *(v12 + 16);
    v78 = a2;
    v75 = v2;
    v76 = OBJC_IVAR____TtC9Tightbeam19EveTransportManager_url;
    v73 = v12 + 16;
    v77(v15, a2 + OBJC_IVAR____TtC9Tightbeam19EveTransportManager_url, v11);
    sub_26F0738C0();
    v21 = *(v12 + 8);
    v20 = v12 + 8;
    v19 = v21;
    v21(v15, v11);
    v22 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
    v23 = sub_26F0738A0();
    sub_26F0637B8(MEMORY[0x277D84F90]);
    type metadata accessor for FileAttributeKey(0);
    sub_26F063ECC(&qword_2806D1250, type metadata accessor for FileAttributeKey, &unk_26F074ED8);
    v24 = sub_26F073C60();

    v79[0] = 0;
    v25 = [v22 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:v24 error:v79];

    if (v25)
    {
      v70 = v19;
      v74 = v20;
      v68 = v18;
      v26 = qword_2806D1198;
      v27 = v79[0];
      if (v26 != -1)
      {
        swift_once();
      }

      v28 = sub_26F073970();
      v67 = __swift_project_value_buffer(v28, qword_2806D1398);
      v29 = sub_26F073950();
      v30 = sub_26F073E10();
      v31 = os_log_type_enabled(v29, v30);
      v32 = v70;
      v33 = v76;
      if (v31)
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_26F04A000, v29, v30, "| creating new tightbeam listener socket", v34, 2u);
        MEMORY[0x2743877B0](v34, -1, -1);
      }

      v35 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
      v77(v15, v78 + v33, v11);
      v36 = sub_26F0738A0();
      v32(v15, v11);
      v79[0] = 0;
      v37 = [v35 removeItemAtURL:v36 error:v79];

      v38 = v11;
      if (v37)
      {
        v39 = v79[0];
      }

      else
      {
        v41 = v79[0];
        v42 = sub_26F073880();

        swift_willThrow();
        MEMORY[0x274387630](v42);
        v75 = 0;
      }

      sub_26F073B50();
      v43 = sub_26F073B40();
      v77(v15, v78 + v76, v11);
      v44 = sub_26F0738D0();
      v46 = v45;
      v32(v15, v11);
      v47 = v71;
      *v71 = v44;
      v47[1] = v46;
      v48 = *MEMORY[0x277CD8AF0];
      v49 = sub_26F0739B0();
      v50 = *(v49 - 8);
      (*(v50 + 104))(v47, v48, v49);
      (*(v50 + 56))(v47, 0, 1, v49);
      sub_26F073B30();

      sub_26F073990();
      sub_26F073A10();
      swift_allocObject();
      v51 = v75;
      v52 = sub_26F073A00();
      if (v51)
      {
        v32(v68, v38);
      }

      else
      {
        v53 = v38;
        v75 = v43;
        *v69 = v52;
        v54 = v78;

        sub_26F0739C0();
        swift_allocObject();
        swift_weakInit();

        sub_26F0739D0();

        v55 = sub_26F073950();
        v56 = sub_26F073E10();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v79[0] = v72;
          *v57 = 136315138;
          v77(v15, v54 + v76, v53);
          sub_26F063ECC(&qword_2806D13E8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          LODWORD(v77) = v56;
          v58 = sub_26F073FB0();
          v60 = v59;
          v61 = v15;
          v62 = v53;
          v63 = v53;
          v64 = v70;
          v70(v61, v62);
          v65 = sub_26F06F6F4(v58, v60, v79);

          *(v57 + 4) = v65;
          _os_log_impl(&dword_26F04A000, v55, v77, "| opening new listener at: %s", v57, 0xCu);
          v66 = v72;
          __swift_destroy_boxed_opaque_existential_1(v72);
          MEMORY[0x2743877B0](v66, -1, -1);
          MEMORY[0x2743877B0](v57, -1, -1);
        }

        else
        {

          v63 = v38;
          v64 = v70;
        }

        sub_26F0739F0();

        return v64(v68, v63);
      }
    }

    else
    {
      v40 = v79[0];
      sub_26F073880();

      swift_willThrow();
      return (v19)(v18, v11);
    }
  }

  return result;
}

void sub_26F0602B4(uint64_t a1)
{
  v2 = sub_26F0739E0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  if (qword_2806D1198 != -1)
  {
    swift_once();
  }

  v9 = sub_26F073970();
  __swift_project_value_buffer(v9, qword_2806D1398);
  v10 = *(v3 + 16);
  v10(v8, a1, v2);
  v11 = sub_26F073950();
  v12 = sub_26F073E10();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    v10(v6, v8, v2);
    v15 = sub_26F073CE0();
    v17 = v16;
    (*(v3 + 8))(v8, v2);
    v18 = sub_26F06F6F4(v15, v17, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_26F04A000, v11, v12, "| listener did change state, new state: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x2743877B0](v14, -1, -1);
    MEMORY[0x2743877B0](v13, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }
}

uint64_t sub_26F060524(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_26F060584(a1);
  }

  return result;
}

uint64_t sub_26F060584(uint64_t a1)
{
  v2 = v1;
  if (qword_2806D1198 != -1)
  {
    swift_once();
  }

  v3 = sub_26F073970();
  __swift_project_value_buffer(v3, qword_2806D1398);

  v4 = sub_26F073950();
  v5 = sub_26F073E10();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    sub_26F073B00();

    v8 = sub_26F073CE0();
    v10 = sub_26F06F6F4(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_26F04A000, v4, v5, "| got new connection: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2743877B0](v7, -1, -1);
    MEMORY[0x2743877B0](v6, -1, -1);
  }

  v11 = *(v2 + OBJC_IVAR____TtC9Tightbeam19EveTransportManager_listener);
  MEMORY[0x28223BE20](v12);

  os_unfair_lock_lock(v11 + 10);
  sub_26F063E40(&v11[4]);
  os_unfair_lock_unlock(v11 + 10);
}

uint64_t sub_26F060760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for EveTransportManager.Connection();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D84F90];
  v7 = sub_26F06369C(MEMORY[0x277D84F90]);
  v5[4] = v6;
  v5[5] = 0;
  v5[2] = a2;
  v5[3] = v7;
  if (*(a1 + 8))
  {

    sub_26F05E6F0();
  }

  else
  {
  }

  *(a1 + 8) = v5;
  swift_allocObject();
  swift_weakInit();

  sub_26F073A60();

  return sub_26F073AB0();
}

uint64_t sub_26F060858(uint64_t a1, uint64_t a2)
{
  v3 = sub_26F073AA0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    (*(v4 + 16))(v6, a1, v3);
    v9 = (*(v4 + 88))(v6, v3);
    if (v9 == *MEMORY[0x277CD8DE0])
    {
      (*(v4 + 8))(v6, v3);
    }

    else
    {
      if (v9 == *MEMORY[0x277CD8DD0])
      {
        sub_26F060A30();
      }

      if (v9 != *MEMORY[0x277CD8DF0])
      {

        return (*(v4 + 8))(v6, v3);
      }
    }

    v10 = *(v8 + OBJC_IVAR____TtC9Tightbeam19EveTransportManager_listener);

    os_unfair_lock_lock((v10 + 40));
    if (*(v10 + 24))
    {
      sub_26F05E6F0();
    }

    os_unfair_lock_unlock((v10 + 40));
  }

  return result;
}

uint64_t sub_26F060A30()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Tightbeam19EveTransportManager_listener);

  os_unfair_lock_lock(v1 + 10);
  sub_26F063E24(&v1[4]);
  os_unfair_lock_unlock(v1 + 10);
}

uint64_t sub_26F060AC0(uint64_t a1, uint64_t a2)
{
  v5 = sub_26F073AA0();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 8))
  {
    return result;
  }

  sub_26F073AC0();
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == *MEMORY[0x277CD8DE0])
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    if (v10 == *MEMORY[0x277CD8DD0])
    {
      v27[1] = v2;
      a2 = *(a1 + 16);
      v16 = 1 << *(a2 + 32);
      v17 = -1;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      v18 = v17 & *(a2 + 64);
      v19 = (v16 + 63) >> 6;

      v20 = 0;
      while (v18)
      {
        v21 = v20;
LABEL_19:
        v22 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v23 = (v21 << 9) | (8 * v22);
        v24 = *(*(a2 + 48) + v23);
        v25 = *(*(a2 + 56) + v23);

        sub_26F05EA64(v24, v25);
      }

      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v21 >= v19)
        {

          v26 = sub_26F063594(MEMORY[0x277D84F90]);

          *(a1 + 16) = v26;
          sub_26F05E834();
        }

        v18 = *(a2 + 64 + 8 * v21);
        ++v20;
        if (v18)
        {
          v20 = v21;
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_26;
    }

    if (v10 != *MEMORY[0x277CD8DF0])
    {

      return (*(v6 + 8))(v9, v5);
    }
  }

  if (qword_2806D1198 != -1)
  {
LABEL_26:
    swift_once();
  }

  v11 = sub_26F073970();
  __swift_project_value_buffer(v11, qword_2806D1398);
  v12 = sub_26F073950();
  v13 = sub_26F073E10();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26F04A000, v12, v13, "| listener disconnected", v14, 2u);
    MEMORY[0x2743877B0](v14, -1, -1);
  }

  v15 = *(a2 + OBJC_IVAR____TtC9Tightbeam19EveTransportManager_listener);

  os_unfair_lock_lock((v15 + 40));
  if (*(v15 + 24))
  {
    sub_26F05E6F0();
  }

  *(v15 + 16) = 0;

  os_unfair_lock_unlock((v15 + 40));
}

uint64_t sub_26F060E34()
{
  v1 = OBJC_IVAR____TtC9Tightbeam19EveTransportManager_url;
  v2 = sub_26F0738E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_26F060EE8(uint64_t a1)
{
  v3 = v1;
  v5 = *(v1 + 16);
  v6 = OBJC_IVAR____TtC9Tightbeam19EveTransportManager_listener;
  v7 = *(v5 + OBJC_IVAR____TtC9Tightbeam19EveTransportManager_listener);

  os_unfair_lock_lock((v7 + 40));
  sub_26F063F7C((v7 + 16));
  os_unfair_lock_unlock((v7 + 40));

  if (v2)
  {
    return v5;
  }

  type metadata accessor for EveTransportManager.PendingMessage();
  v8 = swift_allocObject();
  *(v8 + 116) = 0;
  *(v8 + 120) = 1;
  *(v8 + 16) = dispatch_semaphore_create(0);
  TightbeamMessage.init(wrapping:)(a1, v16);
  swift_beginAccess();
  v9 = v16[3];
  *(v8 + 56) = v16[2];
  *(v8 + 72) = v9;
  *(v8 + 88) = v17[0];
  *(v8 + 97) = *(v17 + 9);
  v10 = v16[1];
  *(v8 + 24) = v16[0];
  *(v8 + 40) = v10;
  *(v8 + 116) = 0;
  *(v8 + 120) = 1;
  v11 = *(v3 + 24);
  v12 = *(v5 + v6);

  os_unfair_lock_lock((v12 + 40));
  if (*(v12 + 24))
  {

    sub_26F05EA64(v11, v8);
  }

  else
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v16[0] = *(v12 + 32);
    *(v12 + 32) = 0x8000000000000000;
    sub_26F062C6C(v8, v11, isUniquelyReferenced_nonNull_native);
    *(v12 + 32) = *&v16[0];
  }

  os_unfair_lock_unlock((v12 + 40));

  sub_26F073E60();
  if ((*(v8 + 120) & 1) == 0)
  {
    v5 = *(v8 + 116);
    type metadata accessor for TransportError(0);
    sub_26F063ECC(&qword_2806D11B0, type metadata accessor for TransportError, &protocol conformance descriptor for tb_error_t);
    swift_allocError();
    *v14 = v5;
    swift_willThrow();

    return v5;
  }

  swift_beginAccess();
  v5 = *(v8 + 80);
  if (v5)
  {
    swift_endAccess();

    return v5;
  }

  result = sub_26F073F50();
  __break(1u);
  return result;
}

uint64_t sub_26F061180()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_26F0611BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D13B0, &unk_26F075850);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - v3;
  v5 = sub_26F0738E0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v31 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  data = tb_endpoint_get_data(a1);
  LODWORD(a1) = tb_endpoint_get_options(a1);
  sub_26F073890();
  if (a1 == 1)
  {
    v19 = *(data + 16);
    v31 = v9;
    v32 = v19;
    v20 = OBJC_IVAR____TtC9Tightbeam15EveEndpointData_baseURL;

    sub_26F063F14(data + v20, v4, &qword_2806D13B0, &unk_26F075850);

    v21 = *(v6 + 48);
    if (v21(v4, 1, v5) == 1)
    {
      v22 = *(v6 + 32);
      v22(v15, v17, v5);
      if (v21(v4, 1, v5) != 1)
      {
        sub_26F06172C(v4);
      }
    }

    else
    {
      (*(v6 + 8))(v17, v5);
      v22 = *(v6 + 32);
      v22(v15, v4, v5);
    }

    v9 = v31;
    v22(v17, v15, v5);
  }

  else
  {
    v32 = data;
  }

  (*(v6 + 16))(v12, v17, v5);
  type metadata accessor for EveTransportClient();
  v23 = swift_allocObject();
  if (qword_2806D1190 != -1)
  {
    swift_once();
  }

  v24 = qword_2806D2660;
  v25 = sub_26F0738B0();
  v26 = *(v24 + 16);
  MEMORY[0x28223BE20](v25);
  *(&v31 - 2) = v9;

  os_unfair_lock_lock((v26 + 24));
  sub_26F061710((v26 + 16), &v33);
  os_unfair_lock_unlock((v26 + 24));
  v27 = v33;
  v28 = *(v6 + 8);
  v28(v12, v5);

  v28(v9, v5);
  v29 = v32;
  *(v23 + 16) = v27;
  *(v23 + 24) = v29;
  v28(v17, v5);
  return v23;
}

uint64_t sub_26F0615C4(uint64_t a1)
{
  v1 = *(*(tb_transport_get_context(a1) + 16) + OBJC_IVAR____TtC9Tightbeam19EveTransportManager_listener);

  os_unfair_lock_lock((v1 + 40));
  sub_26F0639B0((v1 + 16));
  os_unfair_lock_unlock((v1 + 40));

  return 0;
}

uint64_t _tb_eve_transport_destruct(uint64_t a1)
{
  tb_transport_get_context(a1);
}

uint64_t sub_26F06172C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D13B0, &unk_26F075850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_26F061794(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D1300, &unk_26F075750);
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

unint64_t sub_26F061888(uint64_t a1)
{
  sub_26F0738E0();
  sub_26F063ECC(&qword_2806D1408, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v2 = sub_26F073C70();

  return sub_26F061A78(a1, v2);
}

unint64_t sub_26F061920(uint64_t a1)
{
  v2 = sub_26F074040();

  return sub_26F061C38(a1, v2);
}

unint64_t sub_26F061964(uint64_t a1, uint64_t a2)
{
  sub_26F074050();
  MEMORY[0x274386FC0](a1);
  MEMORY[0x274386FC0](a2);
  v4 = sub_26F074080();

  return sub_26F061CA4(a1, a2, v4);
}

unint64_t sub_26F0619E4(uint64_t a1)
{
  sub_26F073CD0();
  sub_26F074050();
  sub_26F073D20();
  v2 = sub_26F074080();

  return sub_26F061D1C(a1, v2);
}

unint64_t sub_26F061A78(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_26F0738E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_26F063ECC(&qword_2806D1418, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v15 = sub_26F073C90();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_26F061C38(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_26F061CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_26F061D1C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_26F073CD0();
      v8 = v7;
      if (v6 == sub_26F073CD0() && v8 == v9)
      {
        break;
      }

      v11 = sub_26F073FC0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_26F061E20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_26F061964(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v12 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_26F0630F0();
    v8 = v12;
  }

  v9 = v6;
  v10 = *(*(v8 + 56) + 8 * v6);
  sub_26F062794(v9, v8);
  *v3 = v8;
  return v10;
}

uint64_t sub_26F061EA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26F0738E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D1400, &unk_26F0759D0);
  v39 = v4;
  result = sub_26F073F80();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_26F063ECC(&qword_2806D1408, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      result = sub_26F073C70();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_26F062284(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D13C8, &unk_26F0759A0);
  result = sub_26F073F80();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v29 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_26F074050();
      MEMORY[0x274386FC0](v29);
      MEMORY[0x274386FC0](*(&v29 + 1));
      result = sub_26F074080();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v29;
      *(*(v7 + 56) + 8 * v15) = v20;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26F062524(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D13C0, &qword_26F075998);
  result = sub_26F073F80();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
    v14 = result + 64;
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
      }

      result = sub_26F074040();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26F062794(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26F073EE0() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      sub_26F074050();
      MEMORY[0x274386FC0](v10);
      MEMORY[0x274386FC0](v11);
      result = sub_26F074080();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26F062938(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26F0738E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_26F061888(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_26F062E70();
      goto LABEL_7;
    }

    sub_26F061EA8(v17, a3 & 1);
    v22 = sub_26F061888(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_26F062DB8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_26F073FE0();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

unint64_t sub_26F062B04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_26F061964(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26F062284(v16, a4 & 1);
      result = sub_26F061964(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_26F073FE0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_26F0630F0();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * result) = a1;
}

unint64_t sub_26F062C6C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_26F061920(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_26F062524(v14, a3 & 1);
      result = sub_26F061920(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_26F073FE0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_26F063250();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_26F062DB8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26F0738E0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_26F062E70()
{
  v1 = v0;
  v33 = sub_26F0738E0();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D1400, &unk_26F0759D0);
  v3 = *v0;
  v4 = sub_26F073F70();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_26F0630F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D13C8, &unk_26F0759A0);
  v2 = *v0;
  v3 = sub_26F073F70();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

  return result;
}

void *sub_26F063250()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D13C0, &qword_26F075998);
  v2 = *v0;
  v3 = sub_26F073F70();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

  return result;
}

unint64_t sub_26F0633AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D1428, &qword_26F0759F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D1400, &unk_26F0759D0);
    v7 = sub_26F073F90();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26F063F14(v9, v5, &qword_2806D1428, &qword_26F0759F0);
      result = sub_26F061888(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_26F0738E0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

void *sub_26F063594(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D13C0, &qword_26F075998);
  v3 = sub_26F073F90();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_26F061920(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_26F061920(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_26F06369C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D13C8, &unk_26F0759A0);
  v3 = sub_26F073F90();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_26F061964(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = v5;
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
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_26F061964(v4, v5);
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

unint64_t sub_26F0637B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D13F0, &qword_26F0759C0);
    v3 = sub_26F073F90();
    v4 = a1 + 32;

    while (1)
    {
      sub_26F063F14(v4, &v11, &qword_2806D13F8, &qword_26F0759C8);
      v5 = v11;
      result = sub_26F0619E4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_26F063E74(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t _tb_eve_transport_send_message_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  tb_transport_get_context(a1);

  v5 = sub_26F060EE8(a2);

  result = 0;
  *a3 = v5;
  return result;
}

void sub_26F0639F4(uint64_t a1)
{
  sub_26F063A94(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26F063A94(uint64_t a1)
{
  if (!qword_281066EB0)
  {
    sub_26F0738E0();
    v1 = sub_26F073E80();
    if (!v2)
    {
      atomic_store(v1, &qword_281066EB0);
    }
  }
}

uint64_t sub_26F063B38(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F063B70(uint64_t a1)
{
  result = sub_26F0738E0();
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

uint64_t sub_26F063C64(uint64_t a1, int a2)
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

uint64_t sub_26F063CAC(uint64_t result, int a2, int a3)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_26F063D98(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26F0588B8(result, a2);
  }

  return result;
}

uint64_t sub_26F063E10(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }

  return result;
}

_OWORD *sub_26F063E74(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26F063E84(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_26F063ECC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F063F14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t TransportBuffer.rawData.getter()
{
  if (v0[24] < 2u && *(*v0 + 24) >= *(*v0 + 16))
  {
    return **v0;
  }

  result = sub_26F073F50();
  __break(1u);
  return result;
}

uint64_t _s9Tightbeam15TransportBufferV23withReservedDataRebound2to7closureq_xm_q_xzq0_YKXEtq0_YKs5ErrorR0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a6 - 8);
  v13 = MEMORY[0x28223BE20](a4);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8[24] >= 2u)
  {
    goto LABEL_7;
  }

  if (*(*v8 + 32) < *(*(v13 - 8) + 64))
  {
    __break(1u);
LABEL_7:
    result = sub_26F073F50();
    __break(1u);
    return result;
  }

  v16 = MEMORY[0x28223BE20](v13);
  v23[-6] = v16;
  v23[-5] = v17;
  v22 = v18;
  result = sub_26F064838(v16, 1, sub_26F064810, &v23[-8], v20, MEMORY[0x277D84B78], v16, a6, v17, v19, v15);
  if (v9)
  {
    return (*(v12 + 32))(a8, v15, a6);
  }

  return result;
}

Swift::Void __swiftcall TransportBuffer.setPosition(pos:)(Swift::Int pos)
{
  if (v1[24] >= 2u || *(*v1 + 24) <= pos)
  {
    sub_26F073F50();
    __break(1u);
  }

  else
  {
    *(*v1 + 16) = pos;
  }
}

uint64_t TransportBuffer.copyBytes<A>(from:size:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 24) >= 2u)
  {
    goto LABEL_8;
  }

  v6 = *v4;
  v7 = *(v6 + 16);
  if (__OFADD__(v7, a2))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(v6 + 24) >= v7 + a2)
  {
    result = sub_26F073EB0();
    v9 = *(v6 + 16);
    v10 = __OFADD__(v9, a2);
    v11 = v9 + a2;
    if (!v10)
    {
      *(v6 + 16) = v11;
      return result;
    }

    goto LABEL_7;
  }

LABEL_8:
  result = sub_26F073F50();
  __break(1u);
  return result;
}

uint64_t sub_26F064414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x277D85DE8];
  v11 = *(a6 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12)
  {
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v20 = v12;
    v21 = 1;
    v22 = 0;
    v23 = v13;
    v26 = 0;
    v24 = 0;
    v25 = 0;
    v18[1] = 0;
    v18[2] = 0;
    v18[0] = &v20;
    v19 = 1;
    result = v14(v18, v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v8)
    {
      return (*(v11 + 32))(a8, v16, a6);
    }
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t TransportBuffer.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = swift_slowAlloc();
  result = tb_transport_initialize_message_buffer(v2);
  *a1 = v2;
  *(a1 + 8) = nullsub_1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t _s9Tightbeam15TransportBufferV9construct4with10destructor4size12capabilitiesySo10tb_error_taSi_SiSpySo0I27_transport_message_buffer_sVGtXE_yAMcS2itAJYKF(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(v6 + 24))
  {
    result = sub_26F073F50();
    __break(1u);
  }

  else
  {
    v9 = *v6;
    v10 = *(v6 + 8);
    v11 = *(v6 + 16);
    v12 = a1(a5, a6, *v6);
    if (v12)
    {
      type metadata accessor for TransportError(0);
      sub_26F064B50();
      swift_willThrowTypedImpl();
    }

    else
    {

      sub_26F063E10(v9, v10, v11, 0);
      *v6 = v9;
      *(v6 + 8) = a3;
      *(v6 + 16) = a4;
      *(v6 + 24) = 0;
    }

    return v12;
  }

  return result;
}

uint64_t sub_26F064734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a6);
  }

  return result;
}

uint64_t sub_26F064838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(a8 - 8);
  v14 = MEMORY[0x28223BE20](a5);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v14, v16);
  if (v11)
  {
    return (*(v13 + 32))(a11, v16, a8);
  }

  return result;
}

uint64_t TransportBuffer.reserved.getter()
{
  if (v0[24] < 2u && *(*v0 + 24) >= *(*v0 + 32))
  {
    return **v0;
  }

  result = sub_26F073F50();
  __break(1u);
  return result;
}

uint64_t TransportBuffer.data.getter()
{
  if (v0[24] < 2u)
  {
    v1 = *v0;
    v2 = *(*v0 + 16);
    v3 = *(*v0 + 32);
    if (v2 >= v3)
    {
      v4 = v1[3];
      if (v4 >= v2)
      {
        if (!__OFSUB__(v4, v3))
        {
          return *v1 + v3;
        }

        __break(1u);
      }
    }
  }

  result = sub_26F073F50();
  __break(1u);
  return result;
}

uint64_t TransportBuffer.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (!v4)
  {

    v2(v1);
    MEMORY[0x2743877B0](v1, -1, -1);
    sub_26F063E10(v1, v2, v3, 0);
    v4 = 0;
  }

  return sub_26F063E10(v1, v2, v3, v4);
}

unint64_t sub_26F064B50()
{
  result = qword_2806D11B0;
  if (!qword_2806D11B0)
  {
    type metadata accessor for TransportError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D11B0);
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

uint64_t assignWithTake for TransportBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v8 = *(a1 + 24);
  *(a1 + 24) = v4;
  sub_26F063E10(v5, v7, v6, v8);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_9Tightbeam15TransportBufferV0C033_1E77B77916A4F2E4D777F6523CB1B1F4LLO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_26F064C60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26F064CA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_26F064CF0(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_26F064D24()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_26F064D5C(uint64_t a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v3 + 16))(a1, ObjectType, v3) & 1;
}

uint64_t sub_26F064DF4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_26F064E54(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_26F064EE8;
}

void sub_26F064EE8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t ForwardingConnection.__allocating_init(service_endpoint:client_endpoint:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ForwardingConnection.init(service_endpoint:client_endpoint:)(a1, a2);
  return v4;
}

uint64_t ForwardingConnection.init(service_endpoint:client_endpoint:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for AnyForwardingConnection();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = &off_287F0BF98;

  v7 = TightbeamEndpoint.constructEndpoint()();
  v8 = TightbeamEndpoint.constructEndpoint()();
  v12[4] = sub_26F0659C0;
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_26F065130;
  v12[3] = &block_descriptor;
  v9 = _Block_copy(v12);

  v10 = tb_forwarding_connection_create_with_endpoint(v7, v8, v9);
  _Block_release(v9);

  sub_26F0651B4(a2);
  sub_26F0651B4(a1);
  *(v3 + 16) = v10;
  return v3;
}

uint64_t sub_26F065130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  LOBYTE(a4) = v7(a2, a3, a4);

  return a4 & 1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F0651B4(uint64_t a1)
{
  v2 = type metadata accessor for TightbeamEndpoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ForwardingConnection.__allocating_init(service_transport:client_transport:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 32) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for AnyForwardingConnection();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = &off_287F0BF98;
  v9[4] = sub_26F0659C0;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_26F065130;
  v9[3] = &block_descriptor_3;
  v6 = _Block_copy(v9);

  v7 = tb_forwarding_connection_create(a1, a2, v6);

  _Block_release(v6);
  *(v4 + 16) = v7;
  return v4;
}

uint64_t ForwardingConnection.init(service_transport:client_transport:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for AnyForwardingConnection();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = &off_287F0BF98;
  v9[4] = sub_26F0659C0;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_26F065130;
  v9[3] = &block_descriptor_7;
  v6 = _Block_copy(v9);

  v7 = tb_forwarding_connection_create(a1, a2, v6);

  _Block_release(v6);
  *(v2 + 16) = v7;
  return v2;
}

uint64_t ForwardingConnection.__allocating_init(serviceEndpoint:clientEndpoint:rawConnectionType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ForwardingConnection.init(serviceEndpoint:clientEndpoint:rawConnectionType:)(a1, a2, a3);
  return v6;
}

uint64_t ForwardingConnection.init(serviceEndpoint:clientEndpoint:rawConnectionType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = 0;
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for AnyForwardingConnection();
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = &off_287F0BF98;

  v9 = TightbeamEndpoint.constructEndpoint()();
  v10 = TightbeamEndpoint.constructEndpoint()();
  v14[4] = sub_26F065618;
  v14[5] = v8;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_26F065130;
  v14[3] = &block_descriptor_10;
  v11 = _Block_copy(v14);

  v12 = tb_forwarding_connection_create_with_endpoint_options(v9, v10, a3, v11);
  _Block_release(v11);

  sub_26F0651B4(a2);
  sub_26F0651B4(a1);
  *(v4 + 16) = v12;
  return v4;
}

uint64_t sub_26F06561C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  return (*(v4 + 16))(a2, ObjectType, v4) & 1;
}

uint64_t sub_26F065678(uint64_t a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 32);
    type metadata accessor for AnyForwardingConnection();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = &off_287F0BF98;

    TightbeamMessage.init(wrapping:)(a1, v8);
    if (v9 <= 2u)
    {
      sub_26F063DBC(v8 + 8);
    }

    *(&v8[0] + 1) = v4;
    LOBYTE(v9) = 2;
    v11[3] = v9;
    v12[0] = v10[0];
    *(v12 + 9) = *(v10 + 9);
    v11[1] = v8[1];
    v11[2] = v8[2];
    v11[0] = v8[0];
    ObjectType = swift_getObjectType();
    v6 = (*(v3 + 8))(v1, v11, ObjectType, v3);
    swift_unknownObjectRelease();
    return v6 & 1;
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t sub_26F0657E4()
{
  result = *(v0 + 16);
  if (result)
  {
    return tb_forwarding_connection_activate(result);
  }

  __break(1u);
  return result;
}

uint64_t ForwardingConnection.deinit()
{
  result = *(v0 + 16);
  if (result)
  {
    tb_forwarding_connection_destruct(result);
    sub_26F065824(v0 + 24);
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ForwardingConnection.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  if (v4)
  {
    tb_forwarding_connection_destruct(v4);
    sub_26F065824(v3 + 24);
    v4 = v3;
    a2 = 40;
    a3 = 7;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2821FE8D8](v4, a2, a3);
}

uint64_t tb_error_t.description.getter(int a1)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        return 0xD000000000000011;
      }

      if (a1 == 7)
      {
        return 0xD000000000000015;
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          return 0x6961662072657355;
        case 9:
          return 0x2064726177726F46;
        case 15:
          return 0xD00000000000001ELL;
      }
    }

    return 0x206E776F6E6B6E55;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x73736563637553;
    }

    if (a1 == 1)
    {
      return 0x6F6E20646C756F43;
    }

    return 0x206E776F6E6B6E55;
  }

  if (a1 == 2)
  {
    return 0xD000000000000015;
  }

  if (a1 == 3)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_26F065B90(uint64_t a1)
{
  v2 = sub_26F066164(&qword_2806D11F8, &protocol conformance descriptor for tb_error_t);

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_26F065BE8(uint64_t a1)
{
  v2 = sub_26F066164(&qword_2806D11F8, &protocol conformance descriptor for tb_error_t);

  return MEMORY[0x28211C018](a1, v2);
}

unint64_t sub_26F065CE8()
{
  result = qword_2806D1448[0];
  if (!qword_2806D1448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2806D1448);
  }

  return result;
}

uint64_t sub_26F065D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26F066164(&qword_2806D11F8, &protocol conformance descriptor for tb_error_t);

  return MEMORY[0x28211C008](a1, a2, v4);
}

void sub_26F065E04(uint64_t a1)
{
  type metadata accessor for TransportError(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_26F065E7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 4;
  if (*(v3 + 64) > 4uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_26F065F94(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 4)
  {
    v5 = 4;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_26F066164(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TransportError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26F0661A8()
{
  type metadata accessor for UnixTransportProtocol();
  sub_26F066820();
  sub_26F073B70();
  swift_allocObject();
  result = sub_26F073B60();
  qword_2806D2668 = result;
  return result;
}

uint64_t sub_26F066204(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    return 0;
  }

  v6 = a5;
  if (!a1)
  {
    if (a5 <= 0)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (a2 - a1 < a5)
  {
    return 0;
  }

LABEL_4:
  *a6 = sub_26F06648C(a1, a2);
  *(a6 + 8) = 0;
  return v6;
}

uint64_t sub_26F066318(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_26F06634C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CD8EB8];
  v3 = sub_26F073B80();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_26F0663D4(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_26F06648C(uint64_t *a1, uint64_t a2)
{
  if (!a1)
  {
    v2 = 0;
    goto LABEL_6;
  }

  v2 = a2 - a1;
  if (a2 - a1 < 16)
  {
LABEL_6:
    v5 = 1;
    v3 = 16;
    goto LABEL_7;
  }

  v3 = 0x12345678AABBCCDDLL;
  v2 = *a1;
  if (*a1 == 0x12345678AABBCCDDLL)
  {
    return a1[1];
  }

  v5 = 0;
LABEL_7:
  sub_26F066874();
  swift_allocError();
  *v6 = v3;
  *(v6 + 8) = v2;
  *(v6 + 16) = v5;
  return swift_willThrow();
}

uint64_t sub_26F066530(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 < 0)
  {
    __break(1u);
  }

  v13 = xmmword_26F075CC0;
  __src = 0x12345678AABBCCDDLL;
  v3 = sub_26F0663D4(&__src, &v13);
  v5 = v4;
  sub_26F073920();
  sub_26F0588B8(v3, v5 & 0xFFFFFFFFFFFFFFLL);
  v11 = a2;
  v6 = sub_26F0663D4(&v11, &__src);
  v8 = v7;
  sub_26F073920();
  sub_26F0588B8(v6, v8 & 0xFFFFFFFFFFFFFFLL);
  v9 = v13;
  sub_26F073BE0();
  sub_26F0588B8(v9, *(&v9 + 1));
  return sub_26F073BF0();
}

unint64_t sub_26F066820()
{
  result = qword_2806D14D0;
  if (!qword_2806D14D0)
  {
    type metadata accessor for UnixTransportProtocol();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D14D0);
  }

  return result;
}

unint64_t sub_26F066874()
{
  result = qword_2806D14D8;
  if (!qword_2806D14D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D14D8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UnixProtocolHeader.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for UnixProtocolHeader.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t TightbeamBadge.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = HIBYTE(result);
  *(a2 + 1) = 0;
  *(a2 + 2) = BYTE6(result);
  *(a2 + 4) = WORD2(result);
  *(a2 + 6) = WORD1(result);
  *(a2 + 8) = result;
  return result;
}

_BYTE *TightbeamBadge.init(usage:variant:component:client:metadata:)@<X0>(_BYTE *result@<X0>, __int16 a2@<W1>, __int16 a3@<W2>, __int16 a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v6 = result[1];
  if ((a2 & 0x100) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  *a6 = *result;
  *(a6 + 1) = v6;
  *(a6 + 2) = v7;
  if ((a5 & 0x10000) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = a5;
  }

  *(a6 + 4) = a3;
  *(a6 + 6) = a4;
  *(a6 + 8) = v8;
  return result;
}

void TightbeamBadge.usage.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t TightbeamBadge.Usage.init(_:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t __swift_memcpy10_2(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TightbeamBadge(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TightbeamBadge(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TightbeamBadge.Usage(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for TightbeamBadge.Usage(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_26F066BCC(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_26F066BEC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

__n128 TightbeamDecoder.init(message:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v2;
  a2[4] = *(a1 + 64);
  *(a2 + 73) = *(a1 + 73);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v4;
  return result;
}

uint64_t TightbeamDecoder.count.getter()
{
  v1 = *(v0 + 56);
  if (v1)
  {

    return tb_message_get_size(v1);
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

void *TightbeamDecoder.decode(into:)(char *__dst, uint64_t a2)
{
  if (__dst && (v4 = *(v2 + 56)) != 0)
  {

    return tb_message_decode_buffer(v4, __dst, a2 - __dst);
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t _s9Tightbeam0A7DecoderV8subrangeyySnySiG_yACzSo10tb_error_taYKXEtAGYKF(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26F066E10(v4, a1, a2, a3, a4);
  if (result)
  {
    v6 = result;
    type metadata accessor for TransportError(0);
    sub_26F064B50();
    swift_willThrowTypedImpl();
    return v6;
  }

  return result;
}

uint64_t sub_26F066E10(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 56);
  if (!v5)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3 - a2;
    if (!__OFSUB__(a3, a2))
    {
      v10 = swift_allocObject();
      *(v10 + 16) = a4;
      *(v10 + 24) = a5;
      v11 = swift_allocObject();
      *(v11 + 16) = sub_26F067D30;
      *(v11 + 24) = v10;
      aBlock[4] = sub_26F067D38;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26F069A8C;
      aBlock[3] = &block_descriptor_0;
      v12 = _Block_copy(aBlock);

      v13 = tb_message_subrange(v5, a2, v7, v12);
      _Block_release(v12);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return v13;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  __break(1u);
LABEL_9:
  result = sub_26F073F50();
  __break(1u);
  return result;
}

uint64_t sub_26F066FE0(uint64_t a1, void (*a2)(void *))
{
  TightbeamMessage.init(wrapping:)(a1, v4);
  a2(v4);
  TightbeamMessage.deinit();
  return 0;
}

uint64_t TightbeamDecoder.decode(as:)()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v1 = *(v0 + 56);
  if (v1)
  {
    tb_message_decode_BOOL(v1, &v3);
    return v3;
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

{

  return sub_26F067308(tb_message_decode_u8);
}

{

  return sub_26F067428(tb_message_decode_u16);
}

{

  return sub_26F067548(tb_message_decode_u32);
}

{

  return sub_26F067668(tb_message_decode_u64);
}

{

  return sub_26F067308(tb_message_decode_s8);
}

{

  return sub_26F067428(tb_message_decode_s16);
}

{

  return sub_26F067548(tb_message_decode_s32);
}

{

  return sub_26F067668(tb_message_decode_s64);
}

{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v1 = *(v0 + 56);
  if (v1)
  {
    return tb_message_decode_f32(v1, &v3);
  }

  result = sub_26F073F50();
  __break(1u);
  return result;
}

{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  v1 = *(v0 + 56);
  if (v1)
  {
    return tb_message_decode_f64(v1, v3);
  }

  result = sub_26F073F50();
  __break(1u);
  return result;
}

uint64_t sub_26F067308(void (*a1)(uint64_t, unsigned __int8 *))
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v3 = *(v1 + 56);
  if (v3)
  {
    a1(v3, &v5);
    return v5;
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}