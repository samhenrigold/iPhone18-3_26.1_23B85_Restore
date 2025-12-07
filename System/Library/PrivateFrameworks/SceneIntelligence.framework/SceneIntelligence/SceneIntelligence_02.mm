unint64_t SanitizationError.errorDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v8 = 0;
    if (*(v0 + 24) == 1)
    {
      sub_21DEC72F0();
      MEMORY[0x223D4B2A0](v2, v1);
      v4 = " be found in input OCR: ";
      v5 = 0xD000000000000045;
    }

    else
    {
      sub_21DEC72F0();
      MEMORY[0x223D4B2A0](v2, v1);
      v4 = "lBufferCopyTemplate.h";
      v5 = 0xD000000000000048;
    }

    MEMORY[0x223D4B2A0](v5, v4 | 0x8000000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
    sub_21DE53288();
    v6 = sub_21DEC6D60();
    MEMORY[0x223D4B2A0](v6);
  }

  else
  {

    sub_21DEC72F0();

    v8 = 0xD00000000000002CLL;
    if (!v1)
    {
      sub_21DE53334(v2, 0, v3, 0);
      v1 = 0xED0000726F727245;
      v2 = 0x206E776F6E6B6E55;
    }

    MEMORY[0x223D4B2A0](v2, v1);
  }

  return v8;
}

void *sub_21DE513A0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  v6[3] = a3;
  v7 = MEMORY[0x277D84FA0];
  v15 = MEMORY[0x277D84FA0];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a3;
    v10 = (a1 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;

      v13 = sub_21DE53398(v11, v12, v9);

      sub_21DE53580(v13);

      v10 += 2;
      --v8;
    }

    while (v8);

    v7 = v15;
  }

  v6[2] = v7;
  v6[4] = a2;

  return v6;
}

void sub_21DE51490(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E98, &qword_21DECCA48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DECCA20;
  v8 = *MEMORY[0x277D23168];
  *(inited + 32) = *MEMORY[0x277D23168];
  v9 = *(v4 + 24);
  *(inited + 40) = v9;
  v10 = v8;
  v11 = v9;
  sub_21DE535F0(inited);
  swift_setDeallocating();
  sub_21DE536E4(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93EA8, &qword_21DECCA58);
  type metadata accessor for CFString(0);
  sub_21DE53760();
  v12 = sub_21DEC6D30();

  v13 = LXCreateWordModerationLexicon();
  if (!v13)
  {
    if (v36)
    {
      aBlock[0] = v36;
      type metadata accessor for CFError(0);
      sub_21DE53828(&qword_27CE93EC0, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
      v25 = sub_21DEC7710();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    sub_21DE53870();
    swift_allocError();
    *v30 = v25;
    *(v30 + 8) = v27;
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    swift_willThrow();
    goto LABEL_13;
  }

  v31 = v12;
  v12 = v13;
  v14 = sub_21DE53398(a3, a4, v11);
  v15 = swift_allocObject();
  *(v15 + 16) = MEMORY[0x277D84F90];
  v34 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = (v14 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;

      v20 = sub_21DEC6D80();
      v21 = swift_allocObject();
      *(v21 + 16) = 25165824;
      *(v21 + 24) = v4;
      *(v21 + 32) = v18;
      *(v21 + 40) = v19;
      *(v21 + 48) = v15;
      aBlock[4] = sub_21DE538C4;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21DE519FC;
      aBlock[3] = &block_descriptor;
      v22 = _Block_copy(aBlock);

      LXLexiconEnumerateEntriesForString();
      _Block_release(v22);

      v17 += 2;
      --v16;
    }

    while (v16);
  }

  swift_beginAccess();
  v23 = *(v15 + 16);

  if (*(v23 + 16))
  {

    sub_21DE53870();
    swift_allocError();
    *v24 = a1;
    *(v24 + 8) = a2;
    *(v24 + 16) = v23;
    *(v24 + 24) = 1;
    swift_willThrow();

LABEL_13:
    return;
  }

  v28 = sub_21DE51A74(v34);

  if (*(v28 + 16))
  {
    sub_21DE53870();
    swift_allocError();
    *v29 = a1;
    *(v29 + 8) = a2;
    *(v29 + 16) = v28;
    *(v29 + 24) = 2;
    swift_willThrow();

    goto LABEL_13;
  }
}

uint64_t sub_21DE51904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_21DEC7770();
  sub_21DEC6E90();
  v6 = sub_21DEC77B0();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_21DEC7610() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_21DE519FC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

uint64_t sub_21DE51A74(uint64_t isUniquelyReferenced_nonNull_native)
{
  v2 = *(isUniquelyReferenced_nonNull_native + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = 0;
  v4 = *(v1 + 32);
  v23 = isUniquelyReferenced_nonNull_native + 32;
  v5 = MEMORY[0x277D84F90];
  v21 = v4;
  v22 = v2;
  do
  {
    v6 = (v23 + 16 * v3);
    v8 = *v6;
    v7 = v6[1];
    v24[0] = *v6;
    v24[1] = v7;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    v20[2] = v24;

    if (sub_21DE53140(sub_21DE53E58, v20, v4))
    {
      v9 = *(v1 + 16);
      if (*(v9 + 16) && (sub_21DEC7770(), sub_21DEC6E90(), v10 = sub_21DEC77B0(), v11 = -1 << *(v9 + 32), v12 = v10 & ~v11, ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
      {
        v13 = ~v11;
        while (1)
        {
          v14 = (*(v9 + 48) + 16 * v12);
          v15 = *v14 == v8 && v14[1] == v7;
          if (v15 || (sub_21DEC7610() & 1) != 0)
          {
            break;
          }

          v12 = (v12 + 1) & v13;
          if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v4 = v21;
        v2 = v22;
      }

      else
      {
LABEL_15:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_21DE52454(0, *(v5 + 16) + 1, 1, v5);
          v5 = isUniquelyReferenced_nonNull_native;
        }

        v17 = *(v5 + 16);
        v16 = *(v5 + 24);
        if (v17 >= v16 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_21DE52454((v16 > 1), v17 + 1, 1, v5);
          v5 = isUniquelyReferenced_nonNull_native;
        }

        v4 = v21;
        v2 = v22;
        *(v5 + 16) = v17 + 1;
        v18 = v5 + 16 * v17;
        *(v18 + 32) = v8;
        *(v18 + 40) = v7;
      }
    }

    else
    {
    }

    ++v3;
  }

  while (v3 != v2);
  return v5;
}

uint64_t sub_21DE51CA0()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_21DE51CF0(uint64_t a1, id *a2)
{
  result = sub_21DEC6D90();
  *a2 = 0;
  return result;
}

uint64_t sub_21DE51D68(uint64_t a1, id *a2)
{
  v3 = sub_21DEC6DA0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21DE51DE8@<X0>(uint64_t *a1@<X8>)
{
  sub_21DEC6DB0();
  v2 = sub_21DEC6D80();

  *a1 = v2;
  return result;
}

uint64_t sub_21DE51ED0(uint64_t a1, uint64_t a2)
{
  sub_21DEC7770();
  swift_getWitnessTable();
  sub_21DEC6A60();
  return sub_21DEC77B0();
}

BOOL sub_21DE51F88(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_21DE51FB8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_21DE51FE4@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_21DE520BC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_21DEC6A50();
}

_DWORD *sub_21DE52128@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_21DE52158@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_21DE53E20(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_21DE52198@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21DEC6D80();

  *a2 = v3;
  return result;
}

uint64_t sub_21DE521E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21DEC6DB0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21DE5220C(uint64_t a1)
{
  v2 = sub_21DE53828(&qword_27CE93F20, type metadata accessor for NLLanguage, &unk_21DECCF6C);
  v3 = sub_21DE53828(&qword_27CE93F28, type metadata accessor for NLLanguage, &unk_21DECCF0C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21DE522C8()
{
  v0 = sub_21DEC6DB0();
  v1 = MEMORY[0x223D4B370](v0);

  return v1;
}

uint64_t sub_21DE52304(uint64_t a1)
{
  sub_21DEC6DB0();
  sub_21DEC6E90();
}

uint64_t sub_21DE52358(uint64_t a1)
{
  sub_21DEC6DB0();
  sub_21DEC7770();
  sub_21DEC6E90();
  v1 = sub_21DEC77B0();

  return v1;
}

uint64_t sub_21DE523CC(void *a1, uint64_t *a2)
{
  v2 = sub_21DEC6DB0();
  v4 = v3;
  if (v2 == sub_21DEC6DB0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21DEC7610();
  }

  return v7 & 1;
}

char *sub_21DE52454(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F30, &qword_21DECD040);
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

char *sub_21DE52560(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DE52580(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21DE52580(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F30, &qword_21DECD040);
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

uint64_t sub_21DE5268C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21DEC7770();
  sub_21DEC6E90();
  v8 = sub_21DEC77B0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_21DEC7610() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_21DE52A3C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21DE527DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F48, &qword_21DECD050);
  result = sub_21DEC72B0();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_21DEC7770();
      sub_21DEC6E90();
      result = sub_21DEC77B0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21DE52A3C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21DE527DC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21DE52BBC();
      goto LABEL_16;
    }

    sub_21DE52D18(v8 + 1);
  }

  v10 = *v4;
  sub_21DEC7770();
  sub_21DEC6E90();
  result = sub_21DEC77B0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_21DEC7610();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_21DEC76F0();
  __break(1u);
  return result;
}

void *sub_21DE52BBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F48, &qword_21DECD050);
  v2 = *v0;
  v3 = sub_21DEC72A0();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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

uint64_t sub_21DE52D18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F48, &qword_21DECD050);
  result = sub_21DEC72B0();
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_21DEC7770();

      sub_21DEC6E90();
      result = sub_21DEC77B0();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_21DE52F50(uint64_t a1)
{
  sub_21DEC7770();
  sub_21DEC7790();
  if (a1)
  {
    type metadata accessor for CFString(0);
    sub_21DE53828(&qword_27CE93F40, type metadata accessor for CFString, &unk_21DECCCD8);
    sub_21DEC6A60();
  }

  v2 = sub_21DEC77B0();

  return sub_21DE53020(a1, v2);
}

unint64_t sub_21DE53020(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          type metadata accessor for CFString(0);
          sub_21DE53828(&qword_27CE93F40, type metadata accessor for CFString, &unk_21DECCCD8);
          v10 = v9;
          v11 = sub_21DEC6A50();

          if (v11)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_21DE53140(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_21DE531EC()
{
  result = qword_27CE93E88;
  if (!qword_27CE93E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE93E88);
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

unint64_t sub_21DE53288()
{
  result = qword_280F7A6D8;
  if (!qword_280F7A6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE93E90, &qword_21DECCA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7A6D8);
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

uint64_t sub_21DE53334(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  result = a2;
  if (a4 - 1 < 2)
  {
  }

  if (!a4)
  {
  }

  return result;
}

unint64_t sub_21DE53398(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  v5 = sub_21DEC6D80();
  [v4 setString_];

  [v4 setLanguage_];
  v6 = sub_21DEC7180();
  v7 = *(v6 + 16);
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_21DE52560(0, v7, 0);
    v8 = v18;
    v9 = (v6 + 40);
    while (1)
    {
      result = *(v9 - 1);
      if (*v9 >> 14 < result >> 14)
      {
        break;
      }

      v11 = sub_21DEC7010();
      MEMORY[0x223D4B1D0](v11);

      v12 = sub_21DEC6E20();
      v14 = v13;

      v16 = *(v18 + 16);
      v15 = *(v18 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_21DE52560((v15 > 1), v16 + 1, 1);
      }

      v9 += 2;
      *(v18 + 16) = v16 + 1;
      v17 = v18 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_21DE53580(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_21DE5268C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t sub_21DE535F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F38, &qword_21DECD048);
    v3 = sub_21DEC7430();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = v5;
      v8 = v6;
      result = sub_21DE52F50(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v8;
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

uint64_t sub_21DE536E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93EA0, &qword_21DECCA50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DE53760()
{
  result = qword_27CE93EB0;
  if (!qword_27CE93EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE93EA8, &qword_21DECCA58);
    sub_21DE53828(&qword_27CE93EB8, type metadata accessor for CFString, &unk_21DECCFFC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE93EB0);
  }

  return result;
}

uint64_t sub_21DE53828(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21DE53870()
{
  result = qword_27CE93EC8;
  if (!qword_27CE93EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE93EC8);
  }

  return result;
}

void sub_21DE538C4(void *a1, _BYTE *a2)
{
  if (a1)
  {
    v4 = *(v2 + 24);
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    v7 = *(v2 + 48);
    v8 = *(v2 + 16);
    v18 = a1;
    if ((LXEntryGetMetaFlags() & v8) != 0 && (sub_21DE51904(v5, v6, *(v4 + 16)) & 1) == 0)
    {
      swift_beginAccess();
      v9 = *(v7 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + 16) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_21DE52454(0, *(v9 + 2) + 1, 1, v9);
        *(v7 + 16) = v9;
      }

      v11 = *(v9 + 2);
      v12 = *(v9 + 3);
      v13 = v11 + 1;
      if (v11 >= v12 >> 1)
      {
        v15 = v9;
        v16 = *(v9 + 2);
        v17 = sub_21DE52454((v12 > 1), v11 + 1, 1, v15);
        v11 = v16;
        v9 = v17;
      }

      *(v9 + 2) = v13;
      v14 = &v9[16 * v11];
      *(v14 + 4) = v5;
      *(v14 + 5) = v6;
      *(v7 + 16) = v9;
      swift_endAccess();
      if (a2)
      {
        *a2 = 1;
      }
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_21DE53A54(uint64_t a1, unsigned int a2)
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

uint64_t sub_21DE53A9C(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_21DE53B4C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_21DE53E20(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_21DE53E58(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21DEC7610() & 1;
  }
}

void sub_21DE53EB8()
{
  type metadata accessor for StructuredTextTGProcessorBuilder();
  v0 = swift_allocObject();
  sub_21DE53FD4();
  qword_280F7B928 = v0;
}

uint64_t sub_21DE53EF4()
{
  v0 = swift_allocObject();
  sub_21DE53FD4();
  return v0;
}

uint64_t *sub_21DE53F2C()
{
  if (qword_280F7B850 != -1)
  {
    swift_once();
  }

  return &qword_280F7B928;
}

uint64_t sub_21DE53F7C()
{

  return MEMORY[0x2821FE8D8](v0, 177, 7);
}

int64x2_t sub_21DE53FD4()
{
  *(v0 + 16) = 0xD000000000000037;
  *(v0 + 24) = 0x800000021DED92C0;
  *(v0 + 32) = 0xD000000000000021;
  *(v0 + 40) = 0x800000021DED9300;
  *(v0 + 48) = 0xD000000000000031;
  *(v0 + 56) = 0x800000021DED9330;
  *(v0 + 64) = "{{ specialToken.chat.role.system.default }}{{ specialToken.chat.component.turnEnd }}{{ specialToken.chat.role.user }}{{ images }}{{ task }}{{ specialToken.chat.component.turnEnd }}{{ specialToken.chat.role.assistant }}";
  *(v0 + 72) = 218;
  *(v0 + 80) = 2;
  *(v0 + 88) = 0xD000000000000010;
  *(v0 + 96) = 0x800000021DED9450;
  *(v0 + 104) = 1;
  *(v0 + 112) = 0xD000000000000036;
  *(v0 + 120) = 0x800000021DED9470;
  *(v0 + 128) = 1;
  *(v0 + 136) = 1;
  result = vdupq_n_s64(0x4095000000000000uLL);
  *(v0 + 144) = result;
  *(v0 + 160) = xmmword_21DECD070;
  *(v0 + 176) = 0;
  return result;
}

uint64_t sub_21DE540A4()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_21DE540D8()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_21DE5410C()
{
  v1 = *(*v0 + 48);

  return v1;
}

uint64_t sub_21DE54150()
{
  v1 = *(*v0 + 88);

  return v1;
}

uint64_t sub_21DE54190()
{
  v1 = *(*v0 + 112);

  return v1;
}

void sub_21DE541C4(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 136);
  *a1 = *(*v1 + 128);
  *(a1 + 8) = v2;
}

__n128 sub_21DE541EC@<Q0>(__n128 *a1@<X8>)
{
  v2 = (*v1)[11].n128_u8[0];
  result = (*v1)[10];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_280F7A6C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280F7A6C0);
    }
  }
}

uint64_t sub_21DE542A0()
{
  v0 = sub_21DEC6830();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F60, qword_21DECD138);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_21DEC6880();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
  return sub_21DEC6860();
}

uint64_t sub_21DE54430()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F58, &qword_21DECD130);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DECCA20;
  sub_21DE61D00(0, 0xE000000000000000, (v0 + 32));
  return v0;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21DE544C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_21DE54508(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21DE54580(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_21DE545C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
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

uint64_t sub_21DE54644(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21DE54664(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_21DE546C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 123 && a2 == 0xE100000000000000 || (sub_21DEC7610() & 1) != 0)
  {
    return 125;
  }

  if (a1 == 125 && a2 == 0xE100000000000000 || (sub_21DEC7610() & 1) != 0)
  {
    return 123;
  }

  if (a1 == 91 && a2 == 0xE100000000000000 || (sub_21DEC7610() & 1) != 0)
  {
    return 93;
  }

  if (a1 == 93 && a2 == 0xE100000000000000 || (sub_21DEC7610() & 1) != 0)
  {
    return 91;
  }

  if (a1 == 34 && a2 == 0xE100000000000000 || (sub_21DEC7610() & 1) != 0)
  {
    return 34;
  }

  return 0;
}

uint64_t sub_21DE54808()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_21DE54854(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_21DE548E0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t sub_21DE549AC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_21DE54A3C(void *a1)
{
  v2 = swift_allocObject();
  sub_21DE54A7C(a1);
  return v2;
}

uint64_t sub_21DE54A7C(void *a1)
{
  v3 = v1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = MEMORY[0x277D84F90];
  *(v1 + 56) = 0;
  *(v1 + 16) = a1;
  if (!a1)
  {
    *(v1 + 24) = 0;
    return v3;
  }

  v4 = a1[3];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v1 + 24) = v6;
  v7 = *(*a1 + 160);
  swift_retain_n();

  v2 = v7(v11);
  v9 = v8;
  MEMORY[0x223D4B3E0]();
  if (*((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_8:
    sub_21DEC7080();
  }

  sub_21DEC70A0();
  v2(v11, 0);

  return v3;
}

uint64_t sub_21DE54BA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  MEMORY[0x223D4B290](a1, a2);
  result = swift_endAccess();
  v6 = *(v2 + 16);
  if (v6)
  {
    return (*(*v6 + 200))(a1, a2);
  }

  return result;
}

uint64_t sub_21DE54C40@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21DEC6E00();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v4 + 120))(v10);
  if (a1)
  {
    String.repairedJSON()();
  }

  sub_21DEC6DF0();
  v13 = sub_21DEC6DC0();
  v15 = v14;

  (*(v9 + 8))(v12, v8);
  if (v15 >> 60 == 15)
  {
    v16 = 1;
  }

  else
  {
    sub_21DEC66C0();
    swift_allocObject();
    sub_21DEC66B0();
    v16 = 0;
    sub_21DEC6690();
    sub_21DE56358(v13, v15);
  }

  return (*(*(a2 - 8) + 56))(a4, v16, 1, a2);
}

void *sub_21DE54E50()
{

  v1 = *(v0 + 16);
  *(v0 + 16) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 16);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t sub_21DE54ED8()
{
  sub_21DE54E50();

  return MEMORY[0x2821FE8D8](v0, 57, 7);
}

unint64_t sub_21DE54F0C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21DEC72F0();

  MEMORY[0x223D4B2A0](v1, v2);
  return 0xD000000000000010;
}

uint64_t sub_21DE54FC0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t sub_21DE55090(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_21DE55128()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_21DE55174(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_21DE55250(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t sub_21DE552D0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t sub_21DE5536C()
{
  v0 = swift_allocObject();
  sub_21DE553A4();
  return v0;
}

void *sub_21DE553A4()
{
  v0[3] = 0;
  v1 = MEMORY[0x277D84F90];
  v0[4] = MEMORY[0x277D84F90];
  v0[5] = 32;
  v0[6] = 0xE100000000000000;
  type metadata accessor for JSONNode();
  v0[7] = 0;
  v0[8] = 0;
  v2 = swift_allocObject();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  *(v2 + 48) = v1;
  *(v2 + 56) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v0[2] = v2;
  swift_beginAccess();
  v0[3] = v2;

  return v0;
}

uint64_t sub_21DE55444(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = v2;
  v6 = sub_21DEC6D20();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 123 && a2 == 0xE100000000000000 || ((v17 = sub_21DEC7610(), a1 == 91) ? (v18 = a2 == 0xE100000000000000) : (v18 = 0), !v18 ? (v19 = 0) : (v19 = 1), (v17 & 1) != 0 || (v19 & 1) != 0 || (sub_21DEC7610() & 1) != 0))
  {
    v10 = ((*(*v2 + 152))() + 16);
    if (*v10)
    {
      v11 = &v10[2 * *v10];
      v13 = *v11;
      v12 = v11[1];

      if (v13 == 34 && v12 == 0xE100000000000000)
      {

LABEL_32:
        v32 = *(*v3 + 128);
        v33 = v32(v16);
        if (v33)
        {
          (*(*v33 + 200))(a1, a2);
        }

        v31 = a1;
        v134 = v32(v33);
LABEL_35:
        v34 = *(*v3 + 168);
        v35 = v3;
        v36 = a2;

        v37 = v35;
        v38 = v34(v135);
        v40 = v39;
        v41 = *v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v40 = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v41 = sub_21DE56438(0, *(v41 + 2) + 1, 1, v41);
          *v40 = v41;
        }

        v44 = *(v41 + 2);
        v43 = *(v41 + 3);
        if (v44 >= v43 >> 1)
        {
          v41 = sub_21DE56438((v43 > 1), v44 + 1, 1, v41);
          *v40 = v41;
        }

        *(v41 + 2) = v44 + 1;
        v45 = &v41[16 * v44];
        *(v45 + 4) = v31;
        *(v45 + 5) = v36;
        v38(v135, 0);
        v46 = *(*v37 + 184);

        v46(v31, v36);
        return v134;
      }

      v15 = sub_21DEC7610();

      if (v15)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }

    v26 = *(*v3 + 128);
    v27 = v26(v16);
    type metadata accessor for JSONNode();
    v28 = swift_allocObject();
    sub_21DE54A7C(v27);
    v29 = (*(*v3 + 136))(v28);
    v30 = v26(v29);
    if (v30)
    {
      (*(*v30 + 200))(a1, a2);
    }

    v31 = a1;
    v134 = v26(v30);
    goto LABEL_35;
  }

  if (a1 == 34 && a2 == 0xE100000000000000 || (sub_21DEC7610() & 1) != 0)
  {
    v20 = a2;
    v21 = *(*v2 + 128);
    v22 = v2;
    v23 = v21();
    if (v23)
    {
      (*(*v23 + 200))(a1, v20);
    }

    if ((*(*v2 + 176))(v23) == 92 && v24 == 0xE100000000000000)
    {

LABEL_41:
      v49 = (v21)(v25);
      v50 = *(*v2 + 184);

      v51 = a1;
      v52 = v20;
LABEL_42:
      v50(v51, v52);
      return v49;
    }

    v48 = sub_21DEC7610();

    if (v48)
    {
      goto LABEL_41;
    }

    v64 = ((*(*v2 + 152))(v25) + 16);
    v65 = *v64;
    v132 = a1;
    if (v65)
    {
      v66 = &v64[2 * v65];
      v68 = *v66;
      v67 = v66[1];

      if (v68 == 34 && v67 == 0xE100000000000000)
      {

        goto LABEL_91;
      }

      v70 = sub_21DEC7610();

      if (v70)
      {
LABEL_91:
        v98 = v22;
        v99 = (*(*v22 + 168))(v135);
        v101 = *v100;
        if (*(*v100 + 2))
        {
          v98 = v99;
          v6 = v100;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v102 = *(v101 + 2);
            if (v102)
            {
LABEL_94:
              *(v101 + 2) = v102 - 1;
              *v6 = v101;

              v95 = v98(v135, 0);
LABEL_95:
              v103 = v22;
              v76 = (v21)(v95);
              v77 = *(*v103 + 184);

              v78 = v132;
              v79 = v20;
LABEL_96:
              v77(v78, v79);
              return v76;
            }

            goto LABEL_113;
          }
        }

        else
        {
          __break(1u);
        }

        v101 = sub_21DE56B38(v101);
        v102 = *(v101 + 2);
        if (v102)
        {
          goto LABEL_94;
        }

LABEL_113:
        __break(1u);
        goto LABEL_114;
      }
    }

    else
    {
    }

    v134 = (*(*v22 + 168))(v135);
    v89 = v88;
    v90 = *v88;
    v91 = swift_isUniquelyReferenced_nonNull_native();
    *v89 = v90;
    if ((v91 & 1) == 0)
    {
      v90 = sub_21DE56438(0, *(v90 + 2) + 1, 1, v90);
      *v89 = v90;
    }

    v93 = *(v90 + 2);
    v92 = *(v90 + 3);
    if (v93 >= v92 >> 1)
    {
      v90 = sub_21DE56438((v92 > 1), v93 + 1, 1, v90);
      *v89 = v90;
    }

    *(v90 + 2) = v93 + 1;
    v94 = &v90[16 * v93];
    *(v94 + 4) = 34;
    *(v94 + 5) = 0xE100000000000000;
    v95 = v134(v135, 0);
    goto LABEL_95;
  }

  if (a1 != 125 || a2 != 0xE100000000000000)
  {
    v71 = sub_21DEC7610();
    v72 = a1 == 93 && a2 == 0xE100000000000000;
    v73 = v72;
    if ((v71 & 1) == 0 && !v73 && (sub_21DEC7610() & 1) == 0)
    {
      v74 = *(*v2 + 128);
      v75 = v74();
      if (v75)
      {
        (*(*v75 + 200))(a1, a2);
      }

      v76 = (v74)(v75);
      v77 = *(*v2 + 184);

      v78 = a1;
      v79 = a2;
      goto LABEL_96;
    }
  }

  v53 = *(*v2 + 128);
  v54 = *v2 + 128;
  v134 = v2;
  v130[1] = v54;
  v131 = v53;
  v55 = v53();
  if (v55)
  {
    (*(*v55 + 200))(a1, a2);
  }

  v133 = a2;
  v56 = *(*v134 + 152);
  v57 = ((v56)(v55) + 16);
  if (*v57)
  {
    v58 = &v57[2 * *v57];
    v60 = *v58;
    v59 = v58[1];

    if (v60 == 34 && v59 == 0xE100000000000000)
    {

LABEL_89:
      v96 = v134;
      v49 = (v131)(v63);
      v50 = *(*v96 + 184);
      v97 = v133;

      v51 = a1;
      v52 = v97;
      goto LABEL_42;
    }

    v62 = sub_21DEC7610();

    if (v62)
    {
      goto LABEL_89;
    }
  }

  else
  {
  }

  result = sub_21DE546C0(a1, v133);
  v130[0] = result;
  if (!v80)
  {
LABEL_117:
    __break(1u);
    return result;
  }

  v81 = v80;
  v82 = (v56() + 16);
  if (*v82)
  {
    v83 = &v82[2 * *v82];
    v85 = *v83;
    v84 = v83[1];

    v86 = v85 == v130[0] && v81 == v84;
    v21 = v133;
    if (v86)
    {

      goto LABEL_102;
    }

    v87 = sub_21DEC7610();

    if (v87)
    {
LABEL_102:
      v22 = v134;
      v98 = v134;
      v120 = (*(*v134 + 168))(v135);
      v101 = *v121;
      if (*(*v121 + 2))
      {
        v98 = v120;
        v6 = v121;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v122 = *(v101 + 2);
          if (!v122)
          {
LABEL_116:
            __break(1u);
            goto LABEL_117;
          }

          goto LABEL_105;
        }

LABEL_115:
        result = sub_21DE56B38(v101);
        v101 = result;
        v122 = *(result + 16);
        if (!v122)
        {
          goto LABEL_116;
        }

LABEL_105:
        *(v101 + 2) = v122 - 1;
        *v6 = v101;

        v123 = v98(v135, 0);
        v124 = v131;
        v125 = (v131)(v123);
        if (v125)
        {
          (*(*v125 + 176))(1);
        }

        v126 = (v124)(v125);
        v127 = v124();
        if (v127)
        {
          v128 = *(v127 + 16);
        }

        else
        {
          v128 = 0;
        }

        (*(*v22 + 136))(v128);
        v129 = *(*v22 + 184);

        v129(a1, v21);
        return v126;
      }

LABEL_114:
      __break(1u);
      goto LABEL_115;
    }
  }

  else
  {

    v21 = v133;
  }

  v104 = sub_21DEBD248();
  (*(v7 + 16))(v9, v104, v6);
  v105 = v134;

  v106 = sub_21DEC6D00();
  v107 = sub_21DEC71B0();

  v108 = os_log_type_enabled(v106, v107);
  v132 = a1;
  if (v108)
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v135[0] = v110;
    *v109 = 136315138;
    v136 = v106;
    v111 = (*(*v105[2] + 120))();
    v113 = sub_21DE56544(v111, v112, v135);

    *(v109 + 4) = v113;
    v21 = v133;
    v106 = v136;
    _os_log_impl(&dword_21DE0D000, v136, v107, "Malformed JSON %s", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v110);
    MEMORY[0x223D4D340](v110, -1, -1);
    MEMORY[0x223D4D340](v109, -1, -1);
  }

  v114 = (*(v7 + 8))(v9, v6);
  v115 = (*(*v105[2] + 120))(v114);
  v117 = v116;
  sub_21DE563E4();
  swift_allocError();
  *v118 = v115;
  v118[1] = v117;
  swift_willThrow();
  v119 = (*v105)[23];

  return v119(v132, v21);
}

uint64_t sub_21DE562F8()
{

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_21DE56358(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21DE5636C(a1, a2);
  }

  return a1;
}

uint64_t sub_21DE5636C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_21DE563E4()
{
  result = qword_27CE93F78;
  if (!qword_27CE93F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE93F78);
  }

  return result;
}

char *sub_21DE56438(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F50, &qword_21DECD058);
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

unint64_t sub_21DE56544(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21DE56610(v11, 0, 0, 1, a1, a2);
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
    sub_21DE56CD4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21DE56610(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21DE5671C(a5, a6);
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
    result = sub_21DEC7370();
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

void *sub_21DE5671C(uint64_t a1, unint64_t a2)
{
  v3 = sub_21DE56768(a1, a2);
  sub_21DE56898(&unk_282F25C98);
  return v3;
}

void *sub_21DE56768(uint64_t a1, unint64_t a2)
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

  v6 = sub_21DE56984(v5, 0);
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

  result = sub_21DEC7370();
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
        v10 = sub_21DEC6F50();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21DE56984(v10, 0);
        result = sub_21DEC72D0();
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

uint64_t sub_21DE56898(uint64_t result)
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

  result = sub_21DE569F8(result, v11, 1, v3);
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

void *sub_21DE56984(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F80, &unk_21DECD4A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21DE569F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F80, &unk_21DECD4A0);
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

uint64_t sub_21DE56B74(uint64_t a1, int a2)
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

uint64_t sub_21DE56BBC(uint64_t result, int a2, int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_21DE56C30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_21DE56C78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_21DE56CD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21DE56D34()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_21DE56D70(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F88, &qword_21DECD4B0);
  MEMORY[0x28223BE20](v11);
  v16 = v5;
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4 & 1;
  v21 = a5;
  (*(v13 + 104))(&v15[-v12], *MEMORY[0x277D858A0]);
  return sub_21DEC7130();
}

uint64_t sub_21DE56EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v42 = a6;
  v43 = a7;
  v40 = a4;
  v41 = a5;
  v39 = a3;
  v36 = a2;
  v37 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500);
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508);
  v34 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v35 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA0, &qword_21DECD510);
  v33 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA8, &qword_21DECD518);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v32 - v21;
  v23 = sub_21DEC70F0();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  (*(v16 + 16))(v19, v36, v15);
  (*(v11 + 16))(v14, v37, v10);
  sub_21DE5C6E4(v39, v44, &qword_27CE93F90, &qword_21DECD500);
  v24 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v25 = (v17 + *(v11 + 80) + v24) & ~*(v11 + 80);
  v26 = (v12 + *(v38 + 80) + v25) & ~*(v38 + 80);
  v27 = (v8 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  (*(v16 + 32))(v28 + v24, v19, v33);
  (*(v11 + 32))(v28 + v25, v35, v34);
  sub_21DE5754C(v44, v28 + v26);
  v29 = v41;
  *(v28 + v27) = v40;
  v30 = v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v30 = v29;
  *(v30 + 8) = v42 & 1;
  *(v30 + 9) = v43;

  sub_21DE5C3E4(0, 0, v22, &unk_21DECD528, v28);
}

uint64_t sub_21DE572AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 24) = a5;
  v13 = swift_task_alloc();
  *(v8 + 32) = v13;
  *v13 = v8;
  v13[1] = sub_21DE57390;

  return sub_21DE578C4(a5, a6, a7, a8, v16 & 1, v17);
}

uint64_t sub_21DE57390()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21DE574C4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21DE574C4()
{
  v0[2] = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508);
  sub_21DEC7120();
  v1 = v0[1];

  return v1();
}

uint64_t sub_21DE5754C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DE575BC()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA0, &qword_21DECD510) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v10);
  v12 = *(v0 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_21DE577D0;

  return sub_21DE572AC(v13, v14, v15, v0 + v3, v0 + v6, v0 + v9, v11, v12);
}

uint64_t sub_21DE577D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21DE578C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 656) = v6;
  *(v7 + 211) = a6;
  *(v7 + 210) = a5;
  *(v7 + 648) = a4;
  *(v7 + 640) = a3;
  *(v7 + 632) = a2;
  *(v7 + 624) = a1;
  v8 = sub_21DEC6E00();
  *(v7 + 664) = v8;
  *(v7 + 672) = *(v8 - 8);
  *(v7 + 680) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FB0, &qword_21DECD550);
  *(v7 + 688) = v9;
  *(v7 + 696) = *(v9 - 8);
  *(v7 + 704) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500);
  *(v7 + 712) = swift_task_alloc();
  *(v7 + 720) = swift_task_alloc();
  *(v7 + 728) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FB8, &qword_21DECD558);
  *(v7 + 736) = swift_task_alloc();
  v10 = sub_21DEC6C00();
  *(v7 + 744) = v10;
  *(v7 + 752) = *(v10 - 8);
  *(v7 + 760) = swift_task_alloc();
  v11 = sub_21DEC6D20();
  *(v7 + 768) = v11;
  *(v7 + 776) = *(v11 - 8);
  *(v7 + 784) = swift_task_alloc();
  v12 = sub_21DEC6B30();
  *(v7 + 792) = v12;
  *(v7 + 800) = *(v12 - 8);
  *(v7 + 808) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FC0, &qword_21DECD560);
  *(v7 + 816) = swift_task_alloc();
  v13 = sub_21DEC6BE0();
  *(v7 + 824) = v13;
  *(v7 + 832) = *(v13 - 8);
  *(v7 + 840) = swift_task_alloc();
  v14 = sub_21DEC6BC0();
  *(v7 + 848) = v14;
  *(v7 + 856) = *(v14 - 8);
  *(v7 + 864) = swift_task_alloc();
  v15 = sub_21DEC6BA0();
  *(v7 + 872) = v15;
  *(v7 + 880) = *(v15 - 8);
  *(v7 + 888) = swift_task_alloc();
  v16 = sub_21DEC6910();
  *(v7 + 896) = v16;
  *(v7 + 904) = *(v16 - 8);
  *(v7 + 912) = swift_task_alloc();
  *(v7 + 920) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DE57D54, 0, 0);
}

uint64_t sub_21DE57D54()
{
  v1 = v0[80];
  type metadata accessor for CancellationActor();
  v2 = swift_allocObject();
  v0[116] = v2;
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;

  v0[117] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508);
  sub_21DEC7100();
  if (*(v1 + 16))
  {
  }

  else
  {
    v3 = static AFMChunkType.allCases.getter();
  }

  v0[118] = v3;
  v4 = v0[108];
  v5 = v0[107];
  v6 = v0[106];
  type metadata accessor for JSONStructure();
  v0[119] = sub_21DE5536C();
  sub_21DEC68F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA0, &qword_21DECD510);
  sub_21DEC6A80();
  sub_21DEC6BB0();
  (*(v5 + 8))(v4, v6);
  v7 = sub_21DE5CD60(&qword_280F7AB58, MEMORY[0x277D71CD8], MEMORY[0x277D71CE0]);
  v8 = swift_task_alloc();
  v0[120] = v8;
  *v8 = v0;
  v8[1] = sub_21DE57F44;
  v9 = v0[109];

  return MEMORY[0x282200308](v0 + 7, v9, v7);
}

uint64_t sub_21DE57F44()
{
  *(*v1 + 968) = v0;

  if (v0)
  {

    v2 = sub_21DE585C4;
  }

  else
  {
    v2 = sub_21DE58060;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21DE58060()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 928);
    sub_21DE5CC84((v0 + 56), v0 + 16);

    return MEMORY[0x2822009F8](sub_21DE587EC, v1, 0);
  }

  v2 = *(v0 + 944);
  (*(*(v0 + 880) + 8))(*(v0 + 888), *(v0 + 872));
  v3 = sub_21DE5C898(0, v2);

  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
  v6 = *(v0 + 664);
  v7 = *(**(*(v0 + 952) + 16) + 120);

  v9 = v7(v8);
  v11 = v10;

  sub_21DEC6DF0();
  v12 = sub_21DEC6DC0();
  v14 = v13;
  (*(v5 + 8))(v4, v6);
  if (v14 >> 60 == 15)
  {
    v15 = *(v0 + 920);
    v16 = *(v0 + 904);
    v17 = *(v0 + 896);

    *(v0 + 536) = 0;
    sub_21DEC7120();

    (*(v16 + 8))(v15, v17);
LABEL_15:

    v19 = *(v0 + 8);
    goto LABEL_16;
  }

  v18 = *(v0 + 968);
  sub_21DEC66C0();
  swift_allocObject();
  sub_21DEC66B0();
  type metadata accessor for StructuredText();
  sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
  sub_21DEC6690();
  if (!v18)
  {
    v20 = *(v0 + 211);

    v21 = *(v0 + 528);
    v22 = *(v0 + 704);
    v23 = *(v0 + 696);
    v28 = *(v0 + 688);
    if (v20 == 1)
    {
      *(v0 + 256) = v9;
      *(v0 + 264) = v11;
      *(v0 + 272) = v21;
      *(v0 + 280) = 0;
      *(v0 + 288) = 0x8000;
    }

    else
    {

      *(v0 + 216) = v21;
      *(v0 + 224) = 0;
      *(v0 + 232) = 0;
      *(v0 + 240) = 0;
      *(v0 + 248) = 0;
    }

    sub_21DEC7110();
    sub_21DE56358(v12, v14);

    (*(v23 + 8))(v22, v28);
LABEL_14:
    v24 = *(v0 + 920);
    v25 = *(v0 + 904);
    v26 = *(v0 + 896);
    *(v0 + 544) = 0;
    sub_21DEC7120();

    (*(v25 + 8))(v24, v26);
    goto LABEL_15;
  }

  (*(*(v0 + 904) + 8))(*(v0 + 920), *(v0 + 896));

  sub_21DE56358(v12, v14);

  v19 = *(v0 + 8);
LABEL_16:

  return v19();
}

uint64_t sub_21DE585C4()
{
  *(v0 + 560) = *(v0 + 968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FC8, &qword_21DECD568);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_21DE58654, 0, 0);
}

uint64_t sub_21DE58654()
{
  v1 = v0[115];
  v2 = v0[113];
  v3 = v0[112];
  v4 = v0[111];
  v5 = v0[110];
  v6 = v0[109];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_21DE58814()
{
  if (*(v0 + 212))
  {
    v117 = *(v0 + 920);
    v1 = *(v0 + 904);
    v2 = *(v0 + 896);
    v3 = *(v0 + 888);
    v4 = *(v0 + 880);
    v5 = *(v0 + 872);

    *(v0 + 616) = 0;
    sub_21DEC7120();

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    (*(v4 + 8))(v3, v5);
    (*(v1 + 8))(v117, v2);

    v6 = *(v0 + 8);

    return v6();
  }

  v8 = *(v0 + 832);
  sub_21DE5CC9C(v0 + 16, v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FD8, &qword_21DECD570);
  v9 = swift_dynamicCast();
  v10 = *(v8 + 56);
  if (v9)
  {
    v11 = *(v0 + 840);
    v12 = *(v0 + 832);
    v13 = *(v0 + 824);
    v14 = *(v0 + 816);
    v15 = *(v0 + 808);
    v16 = *(v0 + 800);
    v17 = *(v0 + 784);
    v18 = *(v0 + 776);
    v114 = *(v0 + 768);
    v118 = *(v0 + 792);
    v10(v14, 0, 1, v13);
    (*(v12 + 32))(v11, v14, v13);
    sub_21DEC6BD0();
    v19 = sub_21DEBD114();
    (*(v18 + 16))(v17, v19, v114);
    ModelInformation.log(logger:)();
    (*(v18 + 8))(v17, v114);
    (*(v16 + 8))(v15, v118);
    (*(v12 + 8))(v11, v13);
    goto LABEL_43;
  }

  v20 = *(v0 + 816);
  v10(v20, 1, 1, *(v0 + 824));
  sub_21DE5CD00(v20, &qword_27CE93FC0, &qword_21DECD560);
  sub_21DE5CC9C(v0 + 16, v0 + 96);
  if (!swift_dynamicCast())
  {
    v72 = *(v0 + 752);
    v73 = *(v0 + 744);
    v74 = *(v0 + 736);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    (*(v72 + 56))(v74, 1, 1, v73);
    sub_21DE5CD00(v74, &qword_27CE93FB8, &qword_21DECD558);
LABEL_44:
    v96 = sub_21DE5CD60(&qword_280F7AB58, MEMORY[0x277D71CD8], MEMORY[0x277D71CE0]);
    v97 = swift_task_alloc();
    *(v0 + 960) = v97;
    *v97 = v0;
    v97[1] = sub_21DE57F44;
    v98 = *(v0 + 872);

    return MEMORY[0x282200308](v0 + 56, v98, v96);
  }

  v21 = *(v0 + 760);
  v22 = *(v0 + 752);
  v23 = *(v0 + 744);
  v24 = *(v0 + 736);
  (*(v22 + 56))(v24, 0, 1, v23);
  (*(v22 + 32))(v21, v24, v23);
  v25 = sub_21DEC6BF0();
  v27 = HIBYTE(v26) & 0xF;
  *(v0 + 496) = v25;
  *(v0 + 504) = v26;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v25 & 0xFFFFFFFFFFFFLL;
  }

  *(v0 + 512) = 0;
  *(v0 + 520) = v27;
  v28 = sub_21DEC6F40();
  if (v29)
  {
    v30 = v29;
    v31 = 0;
    v32 = *(v0 + 968);
    while (1)
    {
      *(v0 + 213) = v31 & 1;
      v34 = (*(**(v0 + 952) + 256))(v28, v30);
      *(v0 + 976) = v34;
      *(v0 + 214) = v35;
      if (v32)
      {

        *(v0 + 576) = v32;
        sub_21DEC7120();
      }

      else
      {
        v36 = v35;
        v37 = v34;
        v38 = *(v0 + 944);

        if (sub_21DE5C898(1, v38))
        {
          v39 = sub_21DEC4ADC(v37, v36);
          *(v0 + 984) = v39;
          if (v39)
          {
            v40 = v39;
            v41 = *(v0 + 728);
            sub_21DE5C6E4(*(v0 + 632), v41, &qword_27CE93F90, &qword_21DECD500);
            v42 = type metadata accessor for SanitizerResource(0);
            if ((*(*(v42 - 8) + 48))(v41, 1, v42) != 1)
            {
              *(v0 + 608) = v40;
              v99 = swift_task_alloc();
              *(v0 + 992) = v99;
              v100 = type metadata accessor for StructuredText();
              v101 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
              v102 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
              *v99 = v0;
              v99[1] = sub_21DE596AC;
              v103 = v0 + 600;
              v104 = v0 + 608;
              goto LABEL_50;
            }

            sub_21DE5CD00(*(v0 + 728), &qword_27CE93F90, &qword_21DECD500);

            if (*(v0 + 211))
            {
              v43 = *(v0 + 704);
              v44 = *(v0 + 696);
              v119 = *(v0 + 688);
              v45 = *(**(*(v0 + 952) + 16) + 120);

              v47 = v45(v46);
              v49 = v48;

              *(v0 + 456) = v47;
              *(v0 + 464) = v49;
              *(v0 + 472) = v40;
              *(v0 + 480) = 0;
              *(v0 + 488) = -24576;
              sub_21DEC7110();

              (*(v44 + 8))(v43, v119);
            }

            else
            {
              v50 = *(v0 + 704);
              v51 = *(v0 + 696);
              v52 = *(v0 + 688);
              *(v0 + 416) = v40;
              *(v0 + 424) = 0;
              *(v0 + 432) = 0;
              *(v0 + 440) = 0;
              *(v0 + 448) = 0x2000;
              sub_21DEC7110();

              (*(v51 + 8))(v50, v52);
            }

            v31 = 1;
          }
        }

        *(v0 + 215) = v31 & 1;
        v53 = sub_21DE5C898(2, *(v0 + 944));
        v54 = *(v0 + 214);
        v55 = *(v0 + 976);
        if (!v53)
        {
          goto LABEL_29;
        }

        v56 = sub_21DEC4E28(v55, v54);
        *(v0 + 1008) = v56;
        if (!v56)
        {
          v55 = *(v0 + 976);
          v54 = *(v0 + 214);
LABEL_29:
          sub_21DE5CE04(v55, v54);
          goto LABEL_14;
        }

        v57 = v56;
        v58 = *(v0 + 720);
        sub_21DE5C6E4(*(v0 + 632), v58, &qword_27CE93F90, &qword_21DECD500);
        v59 = type metadata accessor for SanitizerResource(0);
        if ((*(*(v59 - 8) + 48))(v58, 1, v59) != 1)
        {
          *(v0 + 592) = v57;
          v105 = swift_task_alloc();
          *(v0 + 1016) = v105;
          v100 = type metadata accessor for StructuredText();
          v101 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
          v102 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
          *v105 = v0;
          v105[1] = sub_21DE59FE0;
          v103 = v0 + 584;
          v104 = v0 + 592;
          goto LABEL_50;
        }

        sub_21DE5CD00(*(v0 + 720), &qword_27CE93F90, &qword_21DECD500);

        v60 = *(v0 + 214);
        v61 = *(v0 + 976);
        if (*(v0 + 211))
        {
          v62 = *(v0 + 704);
          v63 = *(v0 + 696);
          v115 = *(v0 + 688);
          v64 = *(**(*(v0 + 952) + 16) + 120);

          v66 = v64(v65);
          v68 = v67;

          *(v0 + 376) = v66;
          *(v0 + 384) = v68;
          *(v0 + 392) = v57;
          *(v0 + 400) = 0;
          *(v0 + 408) = -16384;

          sub_21DEC7110();
          sub_21DE5CE04(v61, v60);

          (*(v63 + 8))(v62, v115);
        }

        else
        {
          v69 = *(v0 + 704);
          v70 = *(v0 + 696);
          v71 = *(v0 + 688);
          *(v0 + 336) = v57;
          *(v0 + 344) = 0;
          *(v0 + 352) = 0;
          *(v0 + 360) = 0;
          *(v0 + 368) = 0x4000;

          sub_21DEC7110();
          sub_21DE5CE04(v61, v60);

          (*(v70 + 8))(v69, v71);
        }

        v31 = 1;
      }

LABEL_14:
      v28 = sub_21DEC6F40();
      v30 = v33;
      v32 = 0;
      if (!v33)
      {
        goto LABEL_34;
      }
    }
  }

  v31 = 0;
LABEL_34:
  v75 = *(v0 + 210);

  if ((v75 & 1) != 0 || (v76 = *(v0 + 912), v77 = *(v0 + 904), v78 = *(v0 + 896), v79 = *(v0 + 648), sub_21DEC68F0(), sub_21DEC68E0(), v81 = v80, v82 = *(v77 + 8), *(v0 + 1032) = v82, *(v0 + 1040) = (v77 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000, v82(v76, v78), v81 <= v79) || (v31 & 1) != 0 || !sub_21DE5C898(2, *(v0 + 944)) || (v83 = sub_21DEC58A0(), (*(v0 + 1048) = v83) == 0))
  {
    (*(*(v0 + 752) + 8))(*(v0 + 760), *(v0 + 744));
LABEL_43:
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    goto LABEL_44;
  }

  v84 = v83;
  v85 = *(v0 + 712);
  sub_21DE5C6E4(*(v0 + 632), v85, &qword_27CE93F90, &qword_21DECD500);
  v86 = type metadata accessor for SanitizerResource(0);
  if ((*(*(v86 - 8) + 48))(v85, 1, v86) == 1)
  {
    sub_21DE5CD00(*(v0 + 712), &qword_27CE93F90, &qword_21DECD500);
    v87 = *(v0 + 211);

    if (v87)
    {
      v88 = *(v0 + 752);
      v116 = *(v0 + 744);
      v120 = *(v0 + 760);
      v89 = *(v0 + 704);
      v90 = *(v0 + 696);
      v113 = *(v0 + 688);
      v91 = *(**(*(v0 + 952) + 16) + 120);

      v93 = v91(v92);
      v95 = v94;

      *(v0 + 296) = v93;
      *(v0 + 304) = v95;
      *(v0 + 312) = v84;
      *(v0 + 320) = 0;
      *(v0 + 328) = -16384;
      sub_21DEC7110();

      (*(v90 + 8))(v89, v113);
      (*(v88 + 8))(v120, v116);
    }

    else
    {
      v107 = *(v0 + 760);
      v108 = *(v0 + 752);
      v109 = *(v0 + 744);
      v110 = *(v0 + 704);
      v111 = *(v0 + 696);
      v112 = *(v0 + 688);
      *(v0 + 176) = v84;
      *(v0 + 184) = 0;
      *(v0 + 192) = 0;
      *(v0 + 200) = 0;
      *(v0 + 208) = 0x4000;
      sub_21DEC7110();

      (*(v111 + 8))(v110, v112);
      (*(v108 + 8))(v107, v109);
    }

    goto LABEL_43;
  }

  *(v0 + 568) = v84;
  v106 = swift_task_alloc();
  *(v0 + 1056) = v106;
  v100 = type metadata accessor for StructuredText();
  v101 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
  v102 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
  *v106 = v0;
  v106[1] = sub_21DE5A8B8;
  v103 = v0 + 552;
  v104 = v0 + 568;
LABEL_50:

  return sub_21DE62978(v103, v104, v100, v101, v102);
}

uint64_t sub_21DE596AC()
{
  v2 = *v1;
  *(*v1 + 1000) = v0;

  if (v0)
  {
    v3 = sub_21DE5AC34;
  }

  else
  {
    sub_21DE5CDA8(*(v2 + 728));
    v3 = sub_21DE597C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21DE597C8()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 1000);
  v3 = &qword_27CE93F90;
LABEL_2:
  if (*(v0 + 211) == 1)
  {
    v60 = *(v0 + 704);
    v4 = *(v0 + 696);
    v62 = *(v0 + 688);
    v5 = *(**(*(v0 + 952) + 16) + 120);
    v6 = v3;

    v8 = v5(v7);
    v10 = v9;

    *(v0 + 456) = v8;
    *(v0 + 464) = v10;
    v3 = v6;
    *(v0 + 472) = v1;
    *(v0 + 480) = 0;
    *(v0 + 488) = -24576;
    sub_21DEC7110();

    (*(v4 + 8))(v60, v62);
  }

  else
  {
    v11 = *(v0 + 704);
    v12 = *(v0 + 696);
    v13 = *(v0 + 688);
    *(v0 + 416) = v1;
    *(v0 + 424) = 0;
    *(v0 + 432) = 0;
    *(v0 + 440) = 0;
    *(v0 + 448) = 0x2000;
    sub_21DEC7110();

    (*(v12 + 8))(v11, v13);
  }

  while (1)
  {
    *(v0 + 215) = 1;
    v14 = sub_21DE5C898(2, *(v0 + 944));
    v15 = *(v0 + 214);
    v16 = *(v0 + 976);
    if (!v14)
    {
      goto LABEL_11;
    }

    v17 = sub_21DEC4E28(v16, v15);
    *(v0 + 1008) = v17;
    if (!v17)
    {
      v16 = *(v0 + 976);
      v15 = *(v0 + 214);
LABEL_11:
      sub_21DE5CE04(v16, v15);
      goto LABEL_14;
    }

    v18 = v17;
    v19 = *(v0 + 720);
    sub_21DE5C6E4(*(v0 + 632), v19, v3, &qword_21DECD500);
    v20 = type metadata accessor for SanitizerResource(0);
    if ((*(*(v20 - 8) + 48))(v19, 1, v20) != 1)
    {
      *(v0 + 592) = v18;
      v51 = swift_task_alloc();
      *(v0 + 1016) = v51;
      v52 = type metadata accessor for StructuredText();
      v53 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
      v54 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
      *v51 = v0;
      v51[1] = sub_21DE59FE0;
      v55 = v0 + 584;
      v56 = v0 + 592;
LABEL_28:

      return sub_21DE62978(v55, v56, v52, v53, v54);
    }

    sub_21DE5CD00(*(v0 + 720), v3, &qword_21DECD500);

    v21 = *(v0 + 214);
    v22 = *(v0 + 976);
    if (*(v0 + 211))
    {
      v59 = *(v0 + 704);
      v23 = *(v0 + 696);
      v61 = *(v0 + 688);
      v24 = *(**(*(v0 + 952) + 16) + 120);

      v26 = v24(v25);
      v28 = v27;

      *(v0 + 376) = v26;
      *(v0 + 384) = v28;
      *(v0 + 392) = v18;
      *(v0 + 400) = 0;
      *(v0 + 408) = -16384;

      v29 = v59;
    }

    else
    {
      v29 = *(v0 + 704);
      v23 = *(v0 + 696);
      v61 = *(v0 + 688);
      *(v0 + 336) = v18;
      *(v0 + 344) = 0;
      *(v0 + 352) = 0;
      *(v0 + 360) = 0;
      *(v0 + 368) = 0x4000;
    }

    sub_21DEC7110();
    sub_21DE5CE04(v22, v21);

    (*(v23 + 8))(v29, v61);
    v3 = &qword_27CE93F90;
LABEL_14:
    v30 = sub_21DEC6F40();
    if (!v31)
    {
      break;
    }

    *(v0 + 213) = 1;
    v32 = (*(**(v0 + 952) + 256))(v30);
    *(v0 + 976) = v32;
    *(v0 + 214) = v33;
    if (!v2)
    {
      goto LABEL_18;
    }

    *(v0 + 576) = v2;
    sub_21DEC7120();
    v34 = sub_21DEC6F40();
    if (!v35)
    {
      break;
    }

    *(v0 + 213) = 1;
    v32 = (*(**(v0 + 952) + 256))(v34, v35);
    *(v0 + 976) = v32;
    *(v0 + 214) = v33;
LABEL_18:
    v36 = v33;
    v37 = v32;
    v38 = *(v0 + 944);

    v39 = sub_21DE5C898(1, v38);
    v2 = 0;
    if (v39)
    {
      v40 = sub_21DEC4ADC(v37, v36);
      v2 = 0;
      *(v0 + 984) = v40;
      if (v40)
      {
        v1 = v40;
        v41 = *(v0 + 728);
        sub_21DE5C6E4(*(v0 + 632), v41, v3, &qword_21DECD500);
        v42 = type metadata accessor for SanitizerResource(0);
        if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
        {
          sub_21DE5CD00(*(v0 + 728), v3, &qword_21DECD500);

          v2 = 0;
          goto LABEL_2;
        }

        *(v0 + 608) = v1;
        v57 = swift_task_alloc();
        *(v0 + 992) = v57;
        v52 = type metadata accessor for StructuredText();
        v53 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
        v54 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
        *v57 = v0;
        v57[1] = sub_21DE596AC;
        v55 = v0 + 600;
        v56 = v0 + 608;
        goto LABEL_28;
      }
    }
  }

  v43 = *(v0 + 210);

  if ((v43 & 1) == 0)
  {
    v44 = *(v0 + 912);
    v45 = *(v0 + 904);
    v46 = *(v0 + 896);
    sub_21DEC68F0();
    sub_21DEC68E0();
    v47 = *(v45 + 8);
    *(v0 + 1032) = v47;
    *(v0 + 1040) = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v47(v44, v46);
  }

  (*(*(v0 + 752) + 8))(*(v0 + 760), *(v0 + 744));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v48 = sub_21DE5CD60(&qword_280F7AB58, MEMORY[0x277D71CD8], MEMORY[0x277D71CE0]);
  v49 = swift_task_alloc();
  *(v0 + 960) = v49;
  *v49 = v0;
  v49[1] = sub_21DE57F44;
  v50 = *(v0 + 872);

  return MEMORY[0x282200308](v0 + 56, v50, v48);
}

uint64_t sub_21DE59FE0()
{
  v2 = *v1;
  *(*v1 + 1024) = v0;

  if (v0)
  {
    v3 = sub_21DE5B71C;
  }

  else
  {
    sub_21DE5CDA8(*(v2 + 720));
    v3 = sub_21DE5A0FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21DE5A0FC()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 1024);
  while (2)
  {
    v3 = *(v0 + 214);
    v4 = *(v0 + 976);
    if (*(v0 + 211) == 1)
    {
      v5 = *(v0 + 704);
      v6 = *(v0 + 696);
      v61 = *(v0 + 688);
      v7 = *(**(*(v0 + 952) + 16) + 120);

      v9 = v7(v8);
      v11 = v10;

      *(v0 + 376) = v9;
      *(v0 + 384) = v11;
      *(v0 + 392) = v1;
      *(v0 + 400) = 0;
      *(v0 + 408) = -16384;

      sub_21DEC7110();
      sub_21DE5CE04(v4, v3);

      (*(v6 + 8))(v5, v61);
    }

    else
    {
      v12 = *(v0 + 704);
      v13 = *(v0 + 696);
      v14 = *(v0 + 688);
      *(v0 + 336) = v1;
      *(v0 + 344) = 0;
      *(v0 + 352) = 0;
      *(v0 + 360) = 0;
      *(v0 + 368) = 0x4000;

      sub_21DEC7110();
      sub_21DE5CE04(v4, v3);

      (*(v13 + 8))(v12, v14);
    }

    v15 = sub_21DEC6F40();
    if (!v16)
    {
LABEL_22:
      v45 = *(v0 + 210);

      if ((v45 & 1) == 0)
      {
        v46 = *(v0 + 912);
        v47 = *(v0 + 904);
        v48 = *(v0 + 896);
        sub_21DEC68F0();
        sub_21DEC68E0();
        v49 = *(v47 + 8);
        *(v0 + 1032) = v49;
        *(v0 + 1040) = (v47 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v49(v46, v48);
      }

      (*(*(v0 + 752) + 8))(*(v0 + 760), *(v0 + 744));
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v50 = sub_21DE5CD60(&qword_280F7AB58, MEMORY[0x277D71CD8], MEMORY[0x277D71CE0]);
      v51 = swift_task_alloc();
      *(v0 + 960) = v51;
      *v51 = v0;
      v51[1] = sub_21DE57F44;
      v52 = *(v0 + 872);

      return MEMORY[0x282200308](v0 + 56, v52, v50);
    }

    v17 = v16;
    while (1)
    {
      *(v0 + 213) = 1;
      v19 = (*(**(v0 + 952) + 256))(v15, v17);
      *(v0 + 976) = v19;
      *(v0 + 214) = v20;
      if (!v2)
      {
        break;
      }

      *(v0 + 576) = v2;
      sub_21DEC7120();
LABEL_8:
      v15 = sub_21DEC6F40();
      v17 = v18;
      v2 = 0;
      if (!v18)
      {
        goto LABEL_22;
      }
    }

    v21 = v20;
    v22 = v19;
    v23 = *(v0 + 944);

    if (sub_21DE5C898(1, v23))
    {
      v24 = sub_21DEC4ADC(v22, v21);
      *(v0 + 984) = v24;
      if (v24)
      {
        v25 = v24;
        v26 = *(v0 + 728);
        sub_21DE5C6E4(*(v0 + 632), v26, &qword_27CE93F90, &qword_21DECD500);
        v27 = type metadata accessor for SanitizerResource(0);
        if ((*(*(v27 - 8) + 48))(v26, 1, v27) != 1)
        {
          *(v0 + 608) = v25;
          v53 = swift_task_alloc();
          *(v0 + 992) = v53;
          v54 = type metadata accessor for StructuredText();
          v55 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
          v56 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
          *v53 = v0;
          v53[1] = sub_21DE596AC;
          v57 = v0 + 600;
          v58 = v0 + 608;
          goto LABEL_28;
        }

        sub_21DE5CD00(*(v0 + 728), &qword_27CE93F90, &qword_21DECD500);

        if (*(v0 + 211))
        {
          v28 = *(v0 + 704);
          v29 = *(v0 + 696);
          v62 = *(v0 + 688);
          v30 = *(**(*(v0 + 952) + 16) + 120);

          v32 = v30(v31);
          v34 = v33;

          *(v0 + 456) = v32;
          *(v0 + 464) = v34;
          *(v0 + 472) = v25;
          *(v0 + 480) = 0;
          *(v0 + 488) = -24576;
          sub_21DEC7110();

          (*(v29 + 8))(v28, v62);
        }

        else
        {
          v35 = *(v0 + 704);
          v36 = *(v0 + 696);
          v37 = *(v0 + 688);
          *(v0 + 416) = v25;
          *(v0 + 424) = 0;
          *(v0 + 432) = 0;
          *(v0 + 440) = 0;
          *(v0 + 448) = 0x2000;
          sub_21DEC7110();

          (*(v36 + 8))(v35, v37);
        }
      }
    }

    *(v0 + 215) = 1;
    v38 = sub_21DE5C898(2, *(v0 + 944));
    v39 = *(v0 + 214);
    v40 = *(v0 + 976);
    if (!v38)
    {
LABEL_19:
      sub_21DE5CE04(v40, v39);
      goto LABEL_8;
    }

    v41 = sub_21DEC4E28(v40, v39);
    *(v0 + 1008) = v41;
    if (!v41)
    {
      v40 = *(v0 + 976);
      v39 = *(v0 + 214);
      goto LABEL_19;
    }

    v42 = v41;
    v43 = *(v0 + 720);
    sub_21DE5C6E4(*(v0 + 632), v43, &qword_27CE93F90, &qword_21DECD500);
    v44 = type metadata accessor for SanitizerResource(0);
    if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
    {
      sub_21DE5CD00(*(v0 + 720), &qword_27CE93F90, &qword_21DECD500);
      v1 = v42;

      v2 = 0;
      continue;
    }

    break;
  }

  *(v0 + 592) = v42;
  v59 = swift_task_alloc();
  *(v0 + 1016) = v59;
  v54 = type metadata accessor for StructuredText();
  v55 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
  v56 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
  *v59 = v0;
  v59[1] = sub_21DE59FE0;
  v57 = v0 + 584;
  v58 = v0 + 592;
LABEL_28:

  return sub_21DE62978(v57, v58, v54, v55, v56);
}

uint64_t sub_21DE5A8B8()
{
  v2 = *v1;
  *(*v1 + 1064) = v0;

  if (v0)
  {

    v3 = sub_21DE5C204;
  }

  else
  {
    sub_21DE5CDA8(*(v2 + 712));
    v3 = sub_21DE5A9DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21DE5A9DC()
{
  v1 = *(v0 + 552);
  if (*(v0 + 211) == 1)
  {
    v2 = *(v0 + 752);
    v21 = *(v0 + 744);
    v22 = *(v0 + 760);
    v3 = *(v0 + 704);
    v4 = *(v0 + 696);
    v20 = *(v0 + 688);
    v5 = *(**(*(v0 + 952) + 16) + 120);

    v7 = v5(v6);
    v9 = v8;

    *(v0 + 296) = v7;
    *(v0 + 304) = v9;
    *(v0 + 312) = v1;
    *(v0 + 320) = 0;
    *(v0 + 328) = -16384;
    sub_21DEC7110();

    (*(v4 + 8))(v3, v20);
    (*(v2 + 8))(v22, v21);
  }

  else
  {
    *(v0 + 176) = v1;
    v10 = *(v0 + 760);
    v11 = *(v0 + 752);
    v12 = *(v0 + 744);
    v13 = *(v0 + 704);
    v14 = *(v0 + 696);
    v15 = *(v0 + 688);
    *(v0 + 192) = 0;
    *(v0 + 200) = 0;
    *(v0 + 184) = 0;
    *(v0 + 208) = 0x4000;
    sub_21DEC7110();

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v16 = sub_21DE5CD60(&qword_280F7AB58, MEMORY[0x277D71CD8], MEMORY[0x277D71CE0]);
  v17 = swift_task_alloc();
  *(v0 + 960) = v17;
  *v17 = v0;
  v17[1] = sub_21DE57F44;
  v18 = *(v0 + 872);

  return MEMORY[0x282200308](v0 + 56, v18, v16);
}

uint64_t sub_21DE5AC34()
{
  v1 = *(v0 + 728);
  sub_21DE5CE04(*(v0 + 976), *(v0 + 214));

  sub_21DE5CDA8(v1);
  v2 = *(v0 + 213);
  *(v0 + 576) = *(v0 + 1000);
  sub_21DEC7120();
  v3 = sub_21DEC6F40();
  if (v4)
  {
    v5 = v4;
    while (1)
    {
      *(v0 + 213) = v2 & 1;
      v6 = (*(**(v0 + 952) + 256))(v3, v5);
      *(v0 + 976) = v6;
      *(v0 + 214) = v7;
      v9 = v7;
      v10 = v6;
      v11 = *(v0 + 944);

      if (sub_21DE5C898(1, v11))
      {
        v12 = sub_21DEC4ADC(v10, v9);
        *(v0 + 984) = v12;
        if (v12)
        {
          v13 = v12;
          v14 = *(v0 + 728);
          sub_21DE5C6E4(*(v0 + 632), v14, &qword_27CE93F90, &qword_21DECD500);
          v15 = type metadata accessor for SanitizerResource(0);
          if ((*(*(v15 - 8) + 48))(v14, 1, v15) != 1)
          {
            *(v0 + 608) = v13;
            v81 = swift_task_alloc();
            *(v0 + 992) = v81;
            v70 = type metadata accessor for StructuredText();
            v71 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
            v72 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
            *v81 = v0;
            v81[1] = sub_21DE596AC;
            v73 = v0 + 600;
            v74 = v0 + 608;
            goto LABEL_38;
          }

          sub_21DE5CD00(*(v0 + 728), &qword_27CE93F90, &qword_21DECD500);

          if (*(v0 + 211))
          {
            v16 = *(v0 + 704);
            v17 = *(v0 + 696);
            v87 = *(v0 + 688);
            v18 = *(**(*(v0 + 952) + 16) + 120);

            v20 = v18(v19);
            v22 = v21;

            *(v0 + 456) = v20;
            *(v0 + 464) = v22;
            *(v0 + 472) = v13;
            *(v0 + 480) = 0;
            *(v0 + 488) = -24576;
            sub_21DEC7110();

            (*(v17 + 8))(v16, v87);
          }

          else
          {
            v23 = *(v0 + 704);
            v24 = *(v0 + 696);
            v25 = *(v0 + 688);
            *(v0 + 416) = v13;
            *(v0 + 424) = 0;
            *(v0 + 432) = 0;
            *(v0 + 440) = 0;
            *(v0 + 448) = 0x2000;
            sub_21DEC7110();

            (*(v24 + 8))(v23, v25);
          }

          v2 = 1;
        }
      }

      *(v0 + 215) = v2 & 1;
      v26 = sub_21DE5C898(2, *(v0 + 944));
      v27 = *(v0 + 214);
      v28 = *(v0 + 976);
      if (!v26)
      {
        goto LABEL_19;
      }

      v29 = sub_21DEC4E28(v28, v27);
      *(v0 + 1008) = v29;
      if (!v29)
      {
        break;
      }

      v30 = v29;
      v31 = *(v0 + 720);
      sub_21DE5C6E4(*(v0 + 632), v31, &qword_27CE93F90, &qword_21DECD500);
      v32 = type metadata accessor for SanitizerResource(0);
      if ((*(*(v32 - 8) + 48))(v31, 1, v32) != 1)
      {
        *(v0 + 592) = v30;
        v82 = swift_task_alloc();
        *(v0 + 1016) = v82;
        v70 = type metadata accessor for StructuredText();
        v71 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
        v72 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
        *v82 = v0;
        v82[1] = sub_21DE59FE0;
        v73 = v0 + 584;
        v74 = v0 + 592;
LABEL_38:

        return sub_21DE62978(v73, v74, v70, v71, v72);
      }

      sub_21DE5CD00(*(v0 + 720), &qword_27CE93F90, &qword_21DECD500);

      v33 = *(v0 + 214);
      v34 = *(v0 + 976);
      if (*(v0 + 211))
      {
        v35 = *(v0 + 704);
        v36 = *(v0 + 696);
        v85 = *(v0 + 688);
        v37 = *(**(*(v0 + 952) + 16) + 120);

        v39 = v37(v38);
        v41 = v40;

        *(v0 + 376) = v39;
        *(v0 + 384) = v41;
        *(v0 + 392) = v30;
        *(v0 + 400) = 0;
        *(v0 + 408) = -16384;

        sub_21DEC7110();
        sub_21DE5CE04(v34, v33);

        (*(v36 + 8))(v35, v85);
      }

      else
      {
        v42 = *(v0 + 704);
        v43 = *(v0 + 696);
        v44 = *(v0 + 688);
        *(v0 + 336) = v30;
        *(v0 + 344) = 0;
        *(v0 + 352) = 0;
        *(v0 + 360) = 0;
        *(v0 + 368) = 0x4000;

        sub_21DEC7110();
        sub_21DE5CE04(v34, v33);

        (*(v43 + 8))(v42, v44);
      }

      v2 = 1;
LABEL_4:
      v3 = sub_21DEC6F40();
      v5 = v8;
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v28 = *(v0 + 976);
    v27 = *(v0 + 214);
LABEL_19:
    sub_21DE5CE04(v28, v27);
    goto LABEL_4;
  }

LABEL_22:
  v45 = *(v0 + 210);

  if ((v45 & 1) != 0 || (v46 = *(v0 + 912), v47 = *(v0 + 904), v48 = *(v0 + 896), v49 = *(v0 + 648), sub_21DEC68F0(), sub_21DEC68E0(), v51 = v50, v52 = *(v47 + 8), *(v0 + 1032) = v52, *(v0 + 1040) = (v47 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000, v52(v46, v48), v51 <= v49) || (v2 & 1) != 0 || !sub_21DE5C898(2, *(v0 + 944)) || (v53 = sub_21DEC58A0(), (*(v0 + 1048) = v53) == 0))
  {
    (*(*(v0 + 752) + 8))(*(v0 + 760), *(v0 + 744));
  }

  else
  {
    v54 = v53;
    v55 = *(v0 + 712);
    sub_21DE5C6E4(*(v0 + 632), v55, &qword_27CE93F90, &qword_21DECD500);
    v56 = type metadata accessor for SanitizerResource(0);
    if ((*(*(v56 - 8) + 48))(v55, 1, v56) != 1)
    {
      *(v0 + 568) = v54;
      v69 = swift_task_alloc();
      *(v0 + 1056) = v69;
      v70 = type metadata accessor for StructuredText();
      v71 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
      v72 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
      *v69 = v0;
      v69[1] = sub_21DE5A8B8;
      v73 = v0 + 552;
      v74 = v0 + 568;
      goto LABEL_38;
    }

    sub_21DE5CD00(*(v0 + 712), &qword_27CE93F90, &qword_21DECD500);
    v57 = *(v0 + 211);

    if (v57)
    {
      v58 = *(v0 + 752);
      v86 = *(v0 + 744);
      v88 = *(v0 + 760);
      v59 = *(v0 + 704);
      v60 = *(v0 + 696);
      v84 = *(v0 + 688);
      v61 = *(**(*(v0 + 952) + 16) + 120);

      v63 = v61(v62);
      v65 = v64;

      *(v0 + 296) = v63;
      *(v0 + 304) = v65;
      *(v0 + 312) = v54;
      *(v0 + 320) = 0;
      *(v0 + 328) = -16384;
      sub_21DEC7110();

      (*(v60 + 8))(v59, v84);
      (*(v58 + 8))(v88, v86);
    }

    else
    {
      v75 = *(v0 + 760);
      v76 = *(v0 + 752);
      v77 = *(v0 + 744);
      v78 = *(v0 + 704);
      v79 = *(v0 + 696);
      v80 = *(v0 + 688);
      *(v0 + 176) = v54;
      *(v0 + 184) = 0;
      *(v0 + 192) = 0;
      *(v0 + 200) = 0;
      *(v0 + 208) = 0x4000;
      sub_21DEC7110();

      (*(v79 + 8))(v78, v80);
      (*(v76 + 8))(v75, v77);
    }
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v66 = sub_21DE5CD60(&qword_280F7AB58, MEMORY[0x277D71CD8], MEMORY[0x277D71CE0]);
  v67 = swift_task_alloc();
  *(v0 + 960) = v67;
  *v67 = v0;
  v67[1] = sub_21DE57F44;
  v68 = *(v0 + 872);

  return MEMORY[0x282200308](v0 + 56, v68, v66);
}

uint64_t sub_21DE5B71C()
{
  v1 = *(v0 + 720);
  sub_21DE5CE04(*(v0 + 976), *(v0 + 214));

  sub_21DE5CDA8(v1);
  v2 = *(v0 + 215);
  *(v0 + 576) = *(v0 + 1024);
  sub_21DEC7120();
  v3 = sub_21DEC6F40();
  if (v4)
  {
    v5 = v4;
    while (1)
    {
      *(v0 + 213) = v2 & 1;
      v6 = (*(**(v0 + 952) + 256))(v3, v5);
      *(v0 + 976) = v6;
      *(v0 + 214) = v7;
      v9 = v7;
      v10 = v6;
      v11 = *(v0 + 944);

      if (sub_21DE5C898(1, v11))
      {
        v12 = sub_21DEC4ADC(v10, v9);
        *(v0 + 984) = v12;
        if (v12)
        {
          v13 = v12;
          v14 = *(v0 + 728);
          sub_21DE5C6E4(*(v0 + 632), v14, &qword_27CE93F90, &qword_21DECD500);
          v15 = type metadata accessor for SanitizerResource(0);
          if ((*(*(v15 - 8) + 48))(v14, 1, v15) != 1)
          {
            *(v0 + 608) = v13;
            v81 = swift_task_alloc();
            *(v0 + 992) = v81;
            v70 = type metadata accessor for StructuredText();
            v71 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
            v72 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
            *v81 = v0;
            v81[1] = sub_21DE596AC;
            v73 = v0 + 600;
            v74 = v0 + 608;
            goto LABEL_38;
          }

          sub_21DE5CD00(*(v0 + 728), &qword_27CE93F90, &qword_21DECD500);

          if (*(v0 + 211))
          {
            v16 = *(v0 + 704);
            v17 = *(v0 + 696);
            v87 = *(v0 + 688);
            v18 = *(**(*(v0 + 952) + 16) + 120);

            v20 = v18(v19);
            v22 = v21;

            *(v0 + 456) = v20;
            *(v0 + 464) = v22;
            *(v0 + 472) = v13;
            *(v0 + 480) = 0;
            *(v0 + 488) = -24576;
            sub_21DEC7110();

            (*(v17 + 8))(v16, v87);
          }

          else
          {
            v23 = *(v0 + 704);
            v24 = *(v0 + 696);
            v25 = *(v0 + 688);
            *(v0 + 416) = v13;
            *(v0 + 424) = 0;
            *(v0 + 432) = 0;
            *(v0 + 440) = 0;
            *(v0 + 448) = 0x2000;
            sub_21DEC7110();

            (*(v24 + 8))(v23, v25);
          }

          v2 = 1;
        }
      }

      *(v0 + 215) = v2 & 1;
      v26 = sub_21DE5C898(2, *(v0 + 944));
      v27 = *(v0 + 214);
      v28 = *(v0 + 976);
      if (!v26)
      {
        goto LABEL_19;
      }

      v29 = sub_21DEC4E28(v28, v27);
      *(v0 + 1008) = v29;
      if (!v29)
      {
        break;
      }

      v30 = v29;
      v31 = *(v0 + 720);
      sub_21DE5C6E4(*(v0 + 632), v31, &qword_27CE93F90, &qword_21DECD500);
      v32 = type metadata accessor for SanitizerResource(0);
      if ((*(*(v32 - 8) + 48))(v31, 1, v32) != 1)
      {
        *(v0 + 592) = v30;
        v82 = swift_task_alloc();
        *(v0 + 1016) = v82;
        v70 = type metadata accessor for StructuredText();
        v71 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
        v72 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
        *v82 = v0;
        v82[1] = sub_21DE59FE0;
        v73 = v0 + 584;
        v74 = v0 + 592;
LABEL_38:

        return sub_21DE62978(v73, v74, v70, v71, v72);
      }

      sub_21DE5CD00(*(v0 + 720), &qword_27CE93F90, &qword_21DECD500);

      v33 = *(v0 + 214);
      v34 = *(v0 + 976);
      if (*(v0 + 211))
      {
        v35 = *(v0 + 704);
        v36 = *(v0 + 696);
        v85 = *(v0 + 688);
        v37 = *(**(*(v0 + 952) + 16) + 120);

        v39 = v37(v38);
        v41 = v40;

        *(v0 + 376) = v39;
        *(v0 + 384) = v41;
        *(v0 + 392) = v30;
        *(v0 + 400) = 0;
        *(v0 + 408) = -16384;

        sub_21DEC7110();
        sub_21DE5CE04(v34, v33);

        (*(v36 + 8))(v35, v85);
      }

      else
      {
        v42 = *(v0 + 704);
        v43 = *(v0 + 696);
        v44 = *(v0 + 688);
        *(v0 + 336) = v30;
        *(v0 + 344) = 0;
        *(v0 + 352) = 0;
        *(v0 + 360) = 0;
        *(v0 + 368) = 0x4000;

        sub_21DEC7110();
        sub_21DE5CE04(v34, v33);

        (*(v43 + 8))(v42, v44);
      }

      v2 = 1;
LABEL_4:
      v3 = sub_21DEC6F40();
      v5 = v8;
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v28 = *(v0 + 976);
    v27 = *(v0 + 214);
LABEL_19:
    sub_21DE5CE04(v28, v27);
    goto LABEL_4;
  }

LABEL_22:
  v45 = *(v0 + 210);

  if ((v45 & 1) != 0 || (v46 = *(v0 + 912), v47 = *(v0 + 904), v48 = *(v0 + 896), v49 = *(v0 + 648), sub_21DEC68F0(), sub_21DEC68E0(), v51 = v50, v52 = *(v47 + 8), *(v0 + 1032) = v52, *(v0 + 1040) = (v47 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000, v52(v46, v48), v51 <= v49) || (v2 & 1) != 0 || !sub_21DE5C898(2, *(v0 + 944)) || (v53 = sub_21DEC58A0(), (*(v0 + 1048) = v53) == 0))
  {
    (*(*(v0 + 752) + 8))(*(v0 + 760), *(v0 + 744));
  }

  else
  {
    v54 = v53;
    v55 = *(v0 + 712);
    sub_21DE5C6E4(*(v0 + 632), v55, &qword_27CE93F90, &qword_21DECD500);
    v56 = type metadata accessor for SanitizerResource(0);
    if ((*(*(v56 - 8) + 48))(v55, 1, v56) != 1)
    {
      *(v0 + 568) = v54;
      v69 = swift_task_alloc();
      *(v0 + 1056) = v69;
      v70 = type metadata accessor for StructuredText();
      v71 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
      v72 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
      *v69 = v0;
      v69[1] = sub_21DE5A8B8;
      v73 = v0 + 552;
      v74 = v0 + 568;
      goto LABEL_38;
    }

    sub_21DE5CD00(*(v0 + 712), &qword_27CE93F90, &qword_21DECD500);
    v57 = *(v0 + 211);

    if (v57)
    {
      v58 = *(v0 + 752);
      v86 = *(v0 + 744);
      v88 = *(v0 + 760);
      v59 = *(v0 + 704);
      v60 = *(v0 + 696);
      v84 = *(v0 + 688);
      v61 = *(**(*(v0 + 952) + 16) + 120);

      v63 = v61(v62);
      v65 = v64;

      *(v0 + 296) = v63;
      *(v0 + 304) = v65;
      *(v0 + 312) = v54;
      *(v0 + 320) = 0;
      *(v0 + 328) = -16384;
      sub_21DEC7110();

      (*(v60 + 8))(v59, v84);
      (*(v58 + 8))(v88, v86);
    }

    else
    {
      v75 = *(v0 + 760);
      v76 = *(v0 + 752);
      v77 = *(v0 + 744);
      v78 = *(v0 + 704);
      v79 = *(v0 + 696);
      v80 = *(v0 + 688);
      *(v0 + 176) = v54;
      *(v0 + 184) = 0;
      *(v0 + 192) = 0;
      *(v0 + 200) = 0;
      *(v0 + 208) = 0x4000;
      sub_21DEC7110();

      (*(v79 + 8))(v78, v80);
      (*(v76 + 8))(v75, v77);
    }
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v66 = sub_21DE5CD60(&qword_280F7AB58, MEMORY[0x277D71CD8], MEMORY[0x277D71CE0]);
  v67 = swift_task_alloc();
  *(v0 + 960) = v67;
  *v67 = v0;
  v67[1] = sub_21DE57F44;
  v68 = *(v0 + 872);

  return MEMORY[0x282200308](v0 + 56, v68, v66);
}

uint64_t sub_21DE5C204()
{
  v1 = v0[115];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[110];
  v5 = v0[109];
  v6 = v0[95];
  v7 = v0[94];
  v8 = v0[93];
  v11 = v0[89];
  v12 = v0[129];

  (*(v7 + 8))(v6, v8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v4 + 8))(v3, v5);
  v12(v1, v2);

  sub_21DE5CDA8(v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21DE5C3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA8, &qword_21DECD518);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21DE5C6E4(a3, v25 - v10, &qword_27CE93FA8, &qword_21DECD518);
  v12 = sub_21DEC70F0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21DE5CD00(v11, &qword_27CE93FA8, &qword_21DECD518);
  }

  else
  {
    sub_21DEC70E0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21DEC70C0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21DEC6E30() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_21DE5CD00(a3, &qword_27CE93FA8, &qword_21DECD518);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21DE5CD00(a3, &qword_27CE93FA8, &qword_21DECD518);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21DE5C6E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21DE5C74C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA8, &qword_21DECD518);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_21DEC70F0();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_21DE5C3E4(0, 0, v4, &unk_21DECD580, v6);
}

BOOL sub_21DE5C898(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    ++v3;
    sub_21DE5CE18();
  }

  while ((sub_21DEC6D70() & 1) == 0);
  return v4 != 0;
}

uint64_t sub_21DE5C91C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21DE5CA14;

  return v6(a1);
}

uint64_t sub_21DE5CA14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21DE5CB0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21DE5CF00;

  return sub_21DE5C91C(a1, v4);
}

uint64_t sub_21DE5CBC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21DE577D0;

  return sub_21DE5C91C(a1, v4);
}

uint64_t sub_21DE5CC84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21DE5CC9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21DE5CD00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21DE5CD60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21DE5CDA8(uint64_t a1)
{
  v2 = type metadata accessor for SanitizerResource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DE5CE04(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return v2;
}

unint64_t sub_21DE5CE18()
{
  result = qword_280F7AAA0[0];
  if (!qword_280F7AAA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F7AAA0);
  }

  return result;
}

uint64_t sub_21DE5CE6C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21DE5CF00;

  return sub_21DE5C858(v3, v4, v5, v2);
}

uint64_t AFMData.hashValue.getter()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_21DEC7770();
  AFMData.hash(into:)(v3);
  return sub_21DEC77B0();
}

uint64_t AFMData.hash(into:)(uint64_t a1)
{
  v16 = a1;
  v2 = sub_21DEC6E00();
  MEMORY[0x28223BE20](v2 - 8);
  v14[1] = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DEC66F0();
  MEMORY[0x28223BE20](v4);
  v5 = *(v1 + 8);
  v15 = *v1;
  v6 = *(v1 + 16);
  sub_21DEC6730();
  swift_allocObject();
  sub_21DEC6720();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FE8, &unk_21DECD590);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21DECCA20;
  sub_21DEC66D0();
  v17 = v7;
  sub_21DE67A5C(&unk_280F7AB60, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FF0, &qword_21DED0190);
  sub_21DE6884C(&qword_280F7A6E0, &qword_27CE93FF0, &qword_21DED0190, MEMORY[0x277D83970]);
  sub_21DEC7280();
  sub_21DEC6700();
  swift_allocObject();
  sub_21DEC6720();
  v17 = v15;
  v18 = v5;
  v19 = v6;
  sub_21DE677CC();
  v8 = sub_21DEC6710();
  v10 = v9;

  sub_21DEC6DF0();
  sub_21DEC6DD0();
  v12 = v11;
  sub_21DE5636C(v8, v10);
  sub_21DEC7790();
  if (v12)
  {
    sub_21DEC6E90();
  }
}

uint64_t AFMData.schema.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16) >> 14;
  if (v4)
  {
    if (v4 != 1)
    {
      v11 = type metadata accessor for JSONSchema(0);
      return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
    }

    v5 = *sub_21DEA9718();
    v13 = 1;
    v6 = *(*v5 + 112);

    v7 = &v13;
  }

  else
  {
    v8 = *sub_21DEA9718();
    v12 = 0;
    v6 = *(*v8 + 112);

    v7 = &v12;
  }

  v6(v7);

  if (!v2)
  {
    v10 = type metadata accessor for JSONSchema(0);
    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }

  return result;
}

unint64_t sub_21DE5D3F0()
{
  v1 = 0xD000000000000024;
  if (*v0 != 1)
  {
    v1 = 0x676E69727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7275746375727473;
  }
}

uint64_t sub_21DE5D458@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DE67AA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DE5D48C(uint64_t a1)
{
  v2 = sub_21DE67864();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5D4C8(uint64_t a1)
{
  v2 = sub_21DE67864();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE5D514(uint64_t a1)
{
  v2 = sub_21DE678B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5D550(uint64_t a1)
{
  v2 = sub_21DE678B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE5D58C(uint64_t a1)
{
  v2 = sub_21DE679B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5D5C8(uint64_t a1)
{
  v2 = sub_21DE679B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE5D604(uint64_t a1)
{
  v2 = sub_21DE6790C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5D640(uint64_t a1)
{
  v2 = sub_21DE6790C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AFMData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FF8, &qword_21DECD5A0);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94000, &qword_21DECD5A8);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94008, &qword_21DECD5B0);
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94010, &qword_21DECD5B8);
  v32 = *(v12 - 8);
  v33 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = *v1;
  v30 = v1[1];
  v31 = v15;
  v16 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE67864();
  sub_21DEC7810();
  if (v16 >> 14)
  {
    if (v16 >> 14 == 1)
    {
      LOBYTE(v34) = 1;
      sub_21DE6790C();
      v17 = v33;
      sub_21DEC7530();
      v34 = v31;
      v35 = v30;
      v36 = v16 & 0x1FF;
      sub_21DE67960();
      v18 = v27;
      sub_21DEC75D0();
      (*(v26 + 8))(v8, v18);
    }

    else
    {
      LOBYTE(v34) = 2;
      sub_21DE678B8();
      v17 = v33;
      sub_21DEC7530();
      v22 = v29;
      sub_21DEC7590();
      (*(v28 + 8))(v5, v22);
    }

    return (*(v32 + 8))(v14, v17);
  }

  else
  {
    LOBYTE(v34) = 0;
    sub_21DE679B4();
    v19 = v33;
    sub_21DEC7530();
    v34 = v31;
    type metadata accessor for StructuredText();
    sub_21DE67A5C(&qword_27CE93FE0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
    v20 = v25;
    sub_21DEC75D0();
    (*(v24 + 8))(v11, v20);
    return (*(v32 + 8))(v14, v19);
  }
}

uint64_t AFMData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94018, &qword_21DECD5C0);
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v39 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94020, &qword_21DECD5C8);
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v5 = &v39 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94028, &qword_21DECD5D0);
  v43 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94030, &qword_21DECD5D8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  v13 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_21DE67864();
  v14 = v49;
  sub_21DEC77E0();
  if (!v14)
  {
    v40 = v6;
    v41 = v10;
    v15 = v46;
    v16 = v47;
    v17 = v48;
    v49 = v12;
    v18 = sub_21DEC7520();
    v19 = *(v18 + 16);
    if (!v19 || ((v20 = *(v18 + 32), v19 == 1) ? (v21 = v20 == 3) : (v21 = 1), v21))
    {
      v22 = sub_21DEC7340();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94038, &qword_21DECD5E0);
      *v24 = &type metadata for AFMData;
      v25 = v49;
      sub_21DEC7490();
      sub_21DEC7330();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v41 + 8))(v25, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = v18;
      if (v20)
      {
        if (v20 == 1)
        {
          LOBYTE(v50) = 1;
          sub_21DE6790C();
          v26 = v49;
          sub_21DEC7480();
          v27 = v41;
          sub_21DE67A08();
          v28 = v42;
          sub_21DEC7510();
          (*(v44 + 8))(v5, v28);
          (*(v27 + 8))(v26, v9);
          swift_unknownObjectRelease();
          v35 = v50;
          v33 = v51;
          if (v53)
          {
            v37 = 256;
          }

          else
          {
            v37 = 0;
          }

          v34 = v37 | v52 | 0x4000;
        }

        else
        {
          LOBYTE(v50) = 2;
          sub_21DE678B8();
          sub_21DEC7480();
          v30 = v41;
          v36 = v16;
          v35 = sub_21DEC74F0();
          v33 = v38;
          (*(v45 + 8))(v15, v36);
          (*(v30 + 8))(v49, v9);
          swift_unknownObjectRelease();
          v34 = 0x8000;
        }
      }

      else
      {
        LOBYTE(v50) = 0;
        sub_21DE679B4();
        v29 = v49;
        sub_21DEC7480();
        type metadata accessor for StructuredText();
        sub_21DE67A5C(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
        v32 = v40;
        sub_21DEC7510();
        (*(v43 + 8))(v8, v32);
        (*(v41 + 8))(v29, v9);
        swift_unknownObjectRelease();
        v33 = 0;
        v34 = 0;
        v35 = v50;
      }

      *v17 = v35;
      *(v17 + 8) = v33;
      *(v17 + 16) = v34;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v54);
}

uint64_t sub_21DE5E220()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_21DEC7770();
  AFMData.hash(into:)(v3);
  return sub_21DEC77B0();
}

uint64_t sub_21DE5E278(uint64_t a1)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  v6 = v2;
  sub_21DEC7770();
  AFMData.hash(into:)(v4);
  return sub_21DEC77B0();
}

uint64_t AFMChunk.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_21DEC7770();
  AFMChunk.hash(into:)(v4);
  return sub_21DEC77B0();
}

uint64_t AFMChunk.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v18 = a1;
  v3 = sub_21DEC6E00();
  MEMORY[0x28223BE20](v3 - 8);
  v15[1] = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DEC66F0();
  MEMORY[0x28223BE20](v5);
  v6 = *(v1 + 32);
  sub_21DEC6730();
  swift_allocObject();
  sub_21DEC6720();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FE8, &unk_21DECD590);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21DECCA20;
  sub_21DEC66D0();
  *&v19 = v7;
  sub_21DE67A5C(&unk_280F7AB60, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FF0, &qword_21DED0190);
  sub_21DE6884C(&qword_280F7A6E0, &qword_27CE93FF0, &qword_21DED0190, MEMORY[0x277D83970]);
  v8 = *v2;
  v16 = v2[1];
  v17 = v8;
  sub_21DEC7280();
  sub_21DEC6700();
  swift_allocObject();
  sub_21DEC6720();
  v20 = v16;
  v19 = v17;
  v21 = v6;
  sub_21DE67CF0();
  v9 = sub_21DEC6710();
  v11 = v10;

  sub_21DEC6DF0();
  sub_21DEC6DD0();
  v13 = v12;
  sub_21DE5636C(v9, v11);
  sub_21DEC7790();
  if (v13)
  {
    sub_21DEC6E90();
  }
}

uint64_t sub_21DE5E650()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x747845746E657665;
    if (v1 != 6)
    {
      v5 = 0xD000000000000027;
    }

    v6 = 0xD000000000000011;
    if (v1 != 4)
    {
      v6 = 0xD000000000000012;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x7275746375727473;
    v3 = 0x746E657665;
    if (v1 != 2)
    {
      v3 = 0xD000000000000024;
    }

    if (*v0)
    {
      v2 = 0x746E6F4374786574;
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
}

uint64_t sub_21DE5E770@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DE6BBC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DE5E7A4(uint64_t a1)
{
  v2 = sub_21DE67D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5E7E0(uint64_t a1)
{
  v2 = sub_21DE67D44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE5E81C(uint64_t a1)
{
  v2 = sub_21DE67F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5E858(uint64_t a1)
{
  v2 = sub_21DE67F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE5E894()
{
  if (*v0)
  {
    return 7894131;
  }

  else
  {
    return 0x6E656B6F54776172;
  }
}

uint64_t sub_21DE5E8D0(uint64_t a1)
{
  v2 = sub_21DE67DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5E90C(uint64_t a1)
{
  v2 = sub_21DE67DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE5E948(uint64_t a1)
{
  v2 = sub_21DE67FE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5E984(uint64_t a1)
{
  v2 = sub_21DE67FE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE5E9C0(uint64_t a1)
{
  v2 = sub_21DE67E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5E9FC(uint64_t a1)
{
  v2 = sub_21DE67E94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE5EA38(uint64_t a1)
{
  v2 = sub_21DE67F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5EA74(uint64_t a1)
{
  v2 = sub_21DE67F90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE5EAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656B6F54776172 && a2 == 0xE900000000000073;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7894131 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21DE5EB94(uint64_t a1)
{
  v2 = sub_21DE67E40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5EBD0(uint64_t a1)
{
  v2 = sub_21DE67E40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE5EC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21DEC7610();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21DE5EC8C(uint64_t a1)
{
  v2 = sub_21DE67EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5ECC8(uint64_t a1)
{
  v2 = sub_21DE67EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE5ED04()
{
  if (*v0)
  {
    return 1667459446;
  }

  else
  {
    return 0x6E656B6F54776172;
  }
}

uint64_t sub_21DE5ED3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656B6F54776172 && a2 == 0xE900000000000073;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1667459446 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21DE5EE20(uint64_t a1)
{
  v2 = sub_21DE67D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5EE5C(uint64_t a1)
{
  v2 = sub_21DE67D98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AFMChunk.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94048, &qword_21DECD5E8);
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x28223BE20](v3);
  v65 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94050, &qword_21DECD5F0);
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x28223BE20](v5);
  v64 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94058, &qword_21DECD5F8);
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x28223BE20](v7);
  v61 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94060, &qword_21DECD600);
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v58 = &v47 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94068, &qword_21DECD608);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v47 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94070, &qword_21DECD610);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v47 - v12;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94078, &qword_21DECD618);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94080, &qword_21DECD620);
  v48 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94088, &qword_21DECD628);
  v74 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  v20 = *v1;
  v71 = v1[1];
  v72 = v20;
  v21 = v1[3];
  v70 = v1[2];
  v47 = v21;
  v22 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE67D44();
  sub_21DEC7810();
  v23 = v22 >> 13;
  if (v22 >> 13 <= 3)
  {
    if (v22 >> 13 <= 1)
    {
      if (v23)
      {
        LOBYTE(v75) = 1;
        sub_21DE67F90();
        v35 = v49;
        v24 = v19;
        sub_21DEC7530();
        v75 = v72;
        type metadata accessor for StructuredText();
        sub_21DE67A5C(&qword_27CE93FE0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
        v36 = v51;
        sub_21DEC75D0();
        (*(v50 + 8))(v35, v36);
LABEL_22:
        v38 = *(v74 + 8);
        v39 = v24;
LABEL_23:
        v40 = v17;
        return v38(v39, v40);
      }

      LOBYTE(v75) = 0;
      sub_21DE67FE4();
      v24 = v19;
      sub_21DEC7530();
      v75 = v72;
      type metadata accessor for StructuredText();
      sub_21DE67A5C(&qword_27CE93FE0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
      sub_21DEC75D0();
      v25 = *(v48 + 8);
      v26 = v16;
LABEL_21:
      v25(v26, v14);
      goto LABEL_22;
    }

    if (v23 != 2)
    {
      LOBYTE(v75) = 3;
      sub_21DE67EE8();
      v41 = v54;
      sub_21DEC7530();
      v75 = v72;
      v76 = v71;
      v77 = v70 & 0x1FF;
      sub_21DE67960();
      v42 = v57;
      sub_21DEC75D0();
      (*(v56 + 8))(v41, v42);
      v38 = *(v74 + 8);
      v39 = v19;
      goto LABEL_23;
    }

    LOBYTE(v75) = 2;
    sub_21DE67F3C();
    v27 = v52;
    v24 = v19;
    sub_21DEC7530();
    v75 = v72;
    type metadata accessor for StructuredText();
    sub_21DE67A5C(&qword_27CE93FE0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
    v14 = v55;
    sub_21DEC75D0();
    v29 = v53;
LABEL_20:
    v25 = *(v29 + 8);
    v26 = v27;
    goto LABEL_21;
  }

  if (v22 >> 13 <= 5)
  {
    v24 = v19;
    if (v23 == 4)
    {
      LOBYTE(v75) = 4;
      sub_21DE67E94();
      v27 = v58;
      sub_21DEC7530();
      LOBYTE(v75) = 0;
      v14 = v60;
      v28 = v73;
      sub_21DEC7590();
      if (!v28)
      {
        v75 = v70;
        v78 = 1;
        type metadata accessor for StructuredText();
        sub_21DE67A5C(&qword_27CE93FE0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
        sub_21DEC75D0();
      }

      v29 = v59;
    }

    else
    {
      LOBYTE(v75) = 5;
      sub_21DE67E40();
      v27 = v61;
      sub_21DEC7530();
      LOBYTE(v75) = 0;
      v14 = v63;
      v37 = v73;
      sub_21DEC7590();
      if (!v37)
      {
        v75 = v70;
        v78 = 1;
        type metadata accessor for StructuredText();
        sub_21DE67A5C(&qword_27CE93FE0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
        sub_21DEC75D0();
      }

      v29 = v62;
    }

    goto LABEL_20;
  }

  v30 = v17;
  v31 = v19;
  if (v23 == 6)
  {
    LOBYTE(v75) = 6;
    sub_21DE67DEC();
    v32 = v64;
    sub_21DEC7530();
    LOBYTE(v75) = 0;
    v33 = v67;
    v34 = v73;
    sub_21DEC7590();
    if (!v34)
    {
      v75 = v70;
      v78 = 1;
      type metadata accessor for StructuredText();
      sub_21DE67A5C(&qword_27CE93FE0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
      sub_21DEC75D0();
    }

    (*(v66 + 8))(v32, v33);
  }

  else
  {
    LOBYTE(v75) = 7;
    sub_21DE67D98();
    v43 = v65;
    sub_21DEC7530();
    LOBYTE(v75) = 0;
    v44 = v69;
    v45 = v73;
    sub_21DEC7590();
    if (!v45)
    {
      v75 = v70;
      v76 = v47;
      v77 = v22 & 0x1FF;
      v78 = 1;
      sub_21DE67960();
      sub_21DEC75D0();
    }

    (*(v68 + 8))(v43, v44);
  }

  v38 = *(v74 + 8);
  v39 = v31;
  v40 = v30;
  return v38(v39, v40);
}

uint64_t AFMChunk.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94090, &qword_21DECD630);
  v111 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v113 = &v91 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94098, &qword_21DECD638);
  v5 = *(v4 - 8);
  v109 = v4;
  v110 = v5;
  MEMORY[0x28223BE20](v4);
  v118 = &v91 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940A0, &qword_21DECD640);
  v8 = *(v7 - 8);
  v107 = v7;
  v108 = v8;
  MEMORY[0x28223BE20](v7);
  v117 = &v91 - v9;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940A8, &qword_21DECD648);
  v105 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v116 = &v91 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940B0, &qword_21DECD650);
  v103 = *(v11 - 8);
  v104 = v11;
  MEMORY[0x28223BE20](v11);
  v112 = &v91 - v12;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940B8, &qword_21DECD658);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v115 = &v91 - v13;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940C0, &qword_21DECD660);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v15 = &v91 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940C8, &qword_21DECD668);
  v97 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v91 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940D0, &qword_21DECD670);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v91 - v21;
  v23 = a1[3];
  v120 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_21DE67D44();
  v24 = v119;
  sub_21DEC77E0();
  if (!v24)
  {
    v25 = v18;
    v92 = v16;
    v93 = v15;
    v26 = v115;
    v27 = v116;
    v29 = v117;
    v28 = v118;
    v94 = 0;
    v96 = v20;
    v119 = v19;
    v95 = v22;
    v30 = sub_21DEC7520();
    if (*(v30 + 16) != 1 || (v31 = *(v30 + 32), v31 == 8))
    {
      v36 = sub_21DEC7340();
      swift_allocError();
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94038, &qword_21DECD5E0);
      *v38 = &type metadata for AFMChunk;
      v39 = v119;
      v40 = v95;
      sub_21DEC7490();
      sub_21DEC7330();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
      swift_willThrow();
      (*(v96 + 8))(v40, v39);
      goto LABEL_10;
    }

    if (*(v30 + 32) <= 3u)
    {
      if (*(v30 + 32) > 1u)
      {
        if (v31 == 2)
        {
          LOBYTE(v121) = 2;
          sub_21DE67F3C();
          v48 = v26;
          v49 = v119;
          v50 = v95;
          v51 = v94;
          sub_21DEC7480();
          if (v51)
          {
            (*(v96 + 8))(v50, v49);
            goto LABEL_10;
          }

          type metadata accessor for StructuredText();
          sub_21DE67A5C(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
          v73 = v102;
          sub_21DEC7510();
          (*(v101 + 8))(v48, v73);
          (*(v96 + 8))(v50, v119);
          swift_unknownObjectRelease();
          v79 = 0;
          v83 = 0;
          v82 = 0;
          v81 = v121;
          v84 = 0x4000;
        }

        else
        {
          LOBYTE(v121) = 3;
          sub_21DE67EE8();
          v64 = v112;
          v65 = v119;
          v66 = v95;
          v67 = v94;
          sub_21DEC7480();
          if (v67)
          {
            (*(v96 + 8))(v66, v65);
            goto LABEL_10;
          }

          sub_21DE67A08();
          v68 = v104;
          sub_21DEC7510();
          (*(v103 + 8))(v64, v68);
          (*(v96 + 8))(v66, v65);
          swift_unknownObjectRelease();
          v82 = 0;
          v81 = v121;
          v79 = v122;
          v89 = 256;
          if (!v124)
          {
            v89 = 0;
          }

          v83 = v89 | v123;
          v84 = 24576;
        }
      }

      else if (*(v30 + 32))
      {
        LOBYTE(v121) = 1;
        sub_21DE67F90();
        v56 = v93;
        v57 = v119;
        v58 = v95;
        v59 = v94;
        sub_21DEC7480();
        if (v59)
        {
          (*(v96 + 8))(v58, v57);
          goto LABEL_10;
        }

        type metadata accessor for StructuredText();
        sub_21DE67A5C(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
        v60 = v99;
        sub_21DEC7510();
        (*(v98 + 8))(v56, v60);
        (*(v96 + 8))(v58, v57);
        swift_unknownObjectRelease();
        v79 = 0;
        v83 = 0;
        v82 = 0;
        v81 = v121;
        v84 = 0x2000;
      }

      else
      {
        LOBYTE(v121) = 0;
        sub_21DE67FE4();
        v32 = v25;
        v33 = v119;
        v34 = v95;
        v35 = v94;
        sub_21DEC7480();
        if (v35)
        {
          (*(v96 + 8))(v34, v33);
LABEL_10:
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_0(v120);
        }

        type metadata accessor for StructuredText();
        sub_21DE67A5C(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
        v72 = v92;
        sub_21DEC7510();
        (*(v97 + 8))(v32, v72);
        (*(v96 + 8))(v34, v33);
        swift_unknownObjectRelease();
        v79 = 0;
        v83 = 0;
        v82 = 0;
        v84 = 0;
        v81 = v121;
      }

      goto LABEL_44;
    }

    v42 = v119;
    v43 = v95;
    if (*(v30 + 32) > 5u)
    {
      v52 = v114;
      if (v31 != 6)
      {
        LOBYTE(v121) = 7;
        sub_21DE67D98();
        v69 = v42;
        v70 = v113;
        v71 = v94;
        sub_21DEC7480();
        if (v71)
        {
          (*(v96 + 8))(v43, v69);
          goto LABEL_10;
        }

        LOBYTE(v121) = 0;
        v74 = v106;
        v75 = sub_21DEC74F0();
        v76 = v96;
        v79 = v77;
        v118 = v75;
        v125 = 1;
        sub_21DE67A08();
        sub_21DEC7510();
        (*(v111 + 8))(v70, v74);
        (*(v76 + 8))(v43, v69);
        swift_unknownObjectRelease();
        v83 = v121;
        v82 = v122;
        if (v124)
        {
          v90 = 256;
        }

        else
        {
          v90 = 0;
        }

        v84 = v90 | v123 | 0xE000;
        v81 = v118;
LABEL_45:
        *v52 = v81;
        *(v52 + 8) = v79;
        *(v52 + 16) = v83;
        *(v52 + 24) = v82;
        *(v52 + 32) = v84;
        return __swift_destroy_boxed_opaque_existential_0(v120);
      }

      LOBYTE(v121) = 6;
      sub_21DE67DEC();
      v53 = v94;
      sub_21DEC7480();
      if (!v53)
      {
        LOBYTE(v121) = 0;
        v54 = v109;
        v55 = sub_21DEC74F0();
        v79 = v85;
        v86 = v42;
        v81 = v55;
        type metadata accessor for StructuredText();
        v125 = 1;
        sub_21DE67A5C(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
        sub_21DEC7510();
        (*(v110 + 8))(v28, v54);
        (*(v96 + 8))(v43, v86);
        swift_unknownObjectRelease();
        v82 = 0;
        v83 = v121;
        v84 = -16384;
        goto LABEL_44;
      }
    }

    else if (v31 == 4)
    {
      LOBYTE(v121) = 4;
      sub_21DE67E94();
      v44 = v27;
      v45 = v94;
      sub_21DEC7480();
      if (!v45)
      {
        LOBYTE(v121) = 0;
        v46 = v100;
        v47 = sub_21DEC74F0();
        v79 = v78;
        v80 = v42;
        v81 = v47;
        type metadata accessor for StructuredText();
        v125 = 1;
        sub_21DE67A5C(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
        sub_21DEC7510();
        (*(v105 + 8))(v44, v46);
        (*(v96 + 8))(v43, v80);
        swift_unknownObjectRelease();
        v82 = 0;
        v83 = v121;
        v84 = 0x8000;
LABEL_44:
        v52 = v114;
        goto LABEL_45;
      }
    }

    else
    {
      LOBYTE(v121) = 5;
      sub_21DE67E40();
      v61 = v94;
      sub_21DEC7480();
      if (!v61)
      {
        LOBYTE(v121) = 0;
        v62 = v107;
        v63 = sub_21DEC74F0();
        v79 = v87;
        v88 = v42;
        v81 = v63;
        type metadata accessor for StructuredText();
        v125 = 1;
        sub_21DE67A5C(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
        sub_21DEC7510();
        (*(v108 + 8))(v29, v62);
        (*(v96 + 8))(v43, v88);
        swift_unknownObjectRelease();
        v82 = 0;
        v83 = v121;
        v84 = -24576;
        goto LABEL_44;
      }
    }

    (*(v96 + 8))(v43, v42);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v120);
}

uint64_t sub_21DE60D18()
{
  v1 = *(v0 + 16);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_21DEC7770();
  AFMChunk.hash(into:)(v4);
  return sub_21DEC77B0();
}

uint64_t sub_21DE60D70(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_21DEC7770();
  AFMChunk.hash(into:)(v5);
  return sub_21DEC77B0();
}

unint64_t sub_21DE60DD8()
{
  v1 = 0x7275746375727473;
  v2 = 0x746E657665;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000024;
  }

  if (*v0)
  {
    v1 = 0x746E6F4374786574;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21DE60E6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DE6BE68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DE60EA0(uint64_t a1)
{
  v2 = sub_21DE68038();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE60EDC(uint64_t a1)
{
  v2 = sub_21DE68038();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE60F24(uint64_t a1)
{
  v2 = sub_21DE680E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE60F60(uint64_t a1)
{
  v2 = sub_21DE680E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE60F9C(uint64_t a1)
{
  v2 = sub_21DE68188();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE60FD8(uint64_t a1)
{
  v2 = sub_21DE68188();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE61014(uint64_t a1)
{
  v2 = sub_21DE68134();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE61050(uint64_t a1)
{
  v2 = sub_21DE68134();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE6108C(uint64_t a1)
{
  v2 = sub_21DE6808C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE610C8(uint64_t a1)
{
  v2 = sub_21DE6808C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AFMChunkType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940D8, &qword_21DECD678);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940E0, &qword_21DECD680);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940E8, &qword_21DECD688);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940F0, &qword_21DECD690);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940F8, &qword_21DECD698);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE68038();
  sub_21DEC7810();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_21DE680E0();
      v18 = v27;
      sub_21DEC7530();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_21DE6808C();
      v18 = v30;
      sub_21DEC7530();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_21DE68134();
    v18 = v24;
    sub_21DEC7530();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_21DE68188();
  sub_21DEC7530();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t AFMChunkType.hashValue.getter()
{
  v1 = *v0;
  sub_21DEC7770();
  MEMORY[0x223D4BB10](v1);
  return sub_21DEC77B0();
}

uint64_t AFMChunkType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94100, &qword_21DECD6A0);
  v40 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94108, &qword_21DECD6A8);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  MEMORY[0x28223BE20](v4);
  v46 = v35 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94110, &qword_21DECD6B0);
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94118, &qword_21DECD6B8);
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94120, &qword_21DECD6C0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v35 - v14;
  v16 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_21DE68038();
  v17 = v48;
  sub_21DEC77E0();
  if (!v17)
  {
    v36 = v9;
    v37 = 0;
    v18 = v46;
    v19 = v47;
    v48 = v13;
    v20 = v15;
    v21 = sub_21DEC7520();
    v22 = *(v21 + 16);
    if (!v22 || ((v23 = *(v21 + 32), v22 == 1) ? (v24 = v23 == 4) : (v24 = 1), v24))
    {
      v25 = sub_21DEC7340();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94038, &qword_21DECD5E0);
      *v27 = &type metadata for AFMChunkType;
      sub_21DEC7490();
      sub_21DEC7330();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v48 + 8))(v20, v12);
    }

    else
    {
      v35[1] = v21;
      if (v23 <= 1)
      {
        if (v23)
        {
          v51 = 1;
          sub_21DE68134();
          v32 = v37;
          sub_21DEC7480();
          if (!v32)
          {
            (*(v38 + 8))(v8, v41);
            goto LABEL_23;
          }
        }

        else
        {
          v50 = 0;
          sub_21DE68188();
          v28 = v37;
          sub_21DEC7480();
          if (!v28)
          {
            (*(v39 + 8))(v11, v36);
LABEL_23:
            (*(v48 + 8))(v15, v12);
LABEL_25:
            swift_unknownObjectRelease();
            *v45 = v23;
            return __swift_destroy_boxed_opaque_existential_0(v49);
          }
        }

        (*(v48 + 8))(v15, v12);
        goto LABEL_20;
      }

      v29 = v45;
      v30 = v48;
      if (v23 == 2)
      {
        v52 = 2;
        sub_21DE680E0();
        v31 = v37;
        sub_21DEC7480();
        if (!v31)
        {
          (*(v43 + 8))(v18, v42);
          (*(v30 + 8))(v20, v12);
          swift_unknownObjectRelease();
          *v29 = 2;
          return __swift_destroy_boxed_opaque_existential_0(v49);
        }
      }

      else
      {
        v53 = 3;
        sub_21DE6808C();
        v33 = v37;
        sub_21DEC7480();
        if (!v33)
        {
          (*(v40 + 8))(v19, v44);
          (*(v30 + 8))(v20, v12);
          goto LABEL_25;
        }
      }

      (*(v30 + 8))(v20, v12);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v49);
}

uint64_t ImageTensorDescriptor.name.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_21DE61CC0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a6;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

uint64_t OutputDescriptor.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_21DE61D00@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t SanitizerResource.scrubMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SanitizerResource(0) + 24);
  v4 = sub_21DEC6C30();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SanitizerResource.init(overrides:guardrails:scrubMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_21DE682A8(a1, a4, &qword_27CE94128, &qword_21DECD6C8);
  v7 = type metadata accessor for SanitizerResource(0);
  sub_21DE682A8(a2, a4 + *(v7 + 20), &qword_27CE94130, &qword_21DECD6D0);
  v8 = *(v7 + 24);
  v9 = sub_21DEC6C30();
  v10 = *(*(v9 - 8) + 32);

  return v10(a4 + v8, a3, v9);
}

unint64_t sub_21DE61EBC()
{
  if (*v0)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0xD000000000000027;
  }
}

uint64_t sub_21DE61EF8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94130, &qword_21DECD6D0);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v4 = sub_21DEC6C10();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94128, &qword_21DECD6C8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_21DEC6C50();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v6 = sub_21DEC6C80();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DE6212C, 0, 0);
}

uint64_t sub_21DE6212C()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  sub_21DE5C6E4(v0[4], v3, &qword_27CE94128, &qword_21DECD6C8);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = v0[13];
    v6 = &qword_27CE94128;
    v7 = &qword_21DECD6C8;
  }

  else
  {
    v8 = v0[7];
    v9 = v0[8];
    v10 = v0[6];
    v11 = v0[4];
    (*(v0[15] + 32))(v0[18], v0[13], v0[14]);
    v12 = type metadata accessor for SanitizerResource(0);
    sub_21DE5C6E4(v11 + *(v12 + 20), v10, &qword_27CE94130, &qword_21DECD6D0);
    if ((*(v9 + 48))(v10, 1, v8) != 1)
    {
      v28 = v0[17];
      v27 = v0[18];
      v29 = v0[14];
      v30 = v0[15];
      v32 = v0[10];
      v31 = v0[11];
      v33 = v0[7];
      v34 = v0[8];
      (*(v34 + 32))(v31, v0[6], v33);
      (*(v30 + 16))(v28, v27, v29);
      (*(v34 + 16))(v32, v31, v33);
      sub_21DEC6C60();
      (*(v34 + 8))(v31, v33);
      (*(v30 + 8))(v27, v29);
      goto LABEL_14;
    }

    v13 = v0[6];
    (*(v0[15] + 8))(v0[18], v0[14]);
    v6 = &qword_27CE94130;
    v7 = &qword_21DECD6D0;
    v5 = v13;
  }

  sub_21DE5CD00(v5, v6, v7);
  v14 = v0[14];
  v15 = v0[12];
  sub_21DE5C6E4(v0[4], v15, &qword_27CE94128, &qword_21DECD6C8);
  if (v4(v15, 1, v14) == 1)
  {
    v16 = v0[7];
    v17 = v0[8];
    v19 = v0[4];
    v18 = v0[5];
    sub_21DE5CD00(v0[12], &qword_27CE94128, &qword_21DECD6C8);
    v20 = type metadata accessor for SanitizerResource(0);
    sub_21DE5C6E4(v19 + *(v20 + 20), v18, &qword_27CE94130, &qword_21DECD6D0);
    if ((*(v17 + 48))(v18, 1, v16) == 1)
    {
      sub_21DE5CD00(v0[5], &qword_27CE94130, &qword_21DECD6D0);
      v41 = v0[2];
      v42 = v0[3];

      v21 = v0[1];

      return v21(v41, v42);
    }

    v24 = v0[9];
    v35 = v0[10];
    v25 = v0[7];
    v26 = v0[8];
    (*(v26 + 32))(v24, v0[5], v25);
    (*(v26 + 16))(v35, v24, v25);
    sub_21DEC6C20();
  }

  else
  {
    v24 = v0[16];
    v23 = v0[17];
    v25 = v0[14];
    v26 = v0[15];
    (*(v26 + 32))(v24, v0[12], v25);
    (*(v26 + 16))(v23, v24, v25);
    sub_21DEC6C70();
  }

  (*(v26 + 8))(v24, v25);
LABEL_14:
  v36 = v0[4];
  v37 = *(type metadata accessor for SanitizerResource(0) + 24);
  v38 = swift_task_alloc();
  v0[22] = v38;
  *v38 = v0;
  v38[1] = sub_21DE62628;
  v40 = v0[2];
  v39 = v0[3];

  return MEMORY[0x2821669B8](v40, v39, v36 + v37);
}

uint64_t sub_21DE62628(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 184) = v2;

  if (v2)
  {
    v7 = sub_21DE62870;
  }

  else
  {
    *(v6 + 192) = a2;
    *(v6 + 200) = a1;
    v7 = sub_21DE6275C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21DE6275C()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  v3 = v0[24];
  v4 = v0[25];

  v1 = v0[1];

  return v1(v4, v3);
}

uint64_t sub_21DE62870()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21DE62978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_21DEC6E00();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DE62A40, 0, 0);
}

uint64_t sub_21DE62A40()
{
  sub_21DEC6730();
  swift_allocObject();
  sub_21DEC6720();
  v1 = sub_21DEC6710();
  v3 = v2;

  sub_21DEC6DF0();
  v6 = sub_21DEC6DD0();
  v8 = v7;
  v0[11] = v7;
  sub_21DE5636C(v1, v3);
  if (v8)
  {
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_21DE62BF4;

    return sub_21DE61EF8(v6, v8);
  }

  else
  {
    sub_21DE681FC();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_21DE62BF4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v7 = sub_21DE62EA4;
  }

  else
  {

    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v7 = sub_21DE62D30;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21DE62D30(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[8];
  sub_21DEC6DF0();
  v5 = sub_21DEC6DC0();
  v7 = v6;

  (*(v3 + 8))(v2, v4);
  if (v7 >> 60 == 15)
  {
    sub_21DE681FC();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
  }

  else
  {
    sub_21DEC66C0();
    swift_allocObject();
    sub_21DEC66B0();
    sub_21DEC6690();

    sub_21DE56358(v5, v7);
  }

  v9 = v1[1];

  return v9();
}

uint64_t sub_21DE62EA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21DE62F28(uint64_t isUniquelyReferenced_nonNull_native)
{
  v1 = *(isUniquelyReferenced_nonNull_native + 16);
  if (v1)
  {
    v2 = (isUniquelyReferenced_nonNull_native + 32);
    v3 = MEMORY[0x277D84F90];
    do
    {
      v6 = *v2++;
      v5 = v6;
      LOBYTE(v19) = v6;
      v20 = STXContentType.rawValue.getter();
      v21 = v7;
      MEMORY[0x28223BE20](v20);
      v18[2] = &v20;
      v8 = sub_21DE53140(sub_21DE53E58, v18, v3);

      if ((v8 & 1) == 0)
      {
        LOBYTE(v20) = v5;
        v9 = STXContentType.rawValue.getter();
        v11 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_21DE52454(0, *(v3 + 2) + 1, 1, v3);
        }

        v13 = *(v3 + 2);
        v12 = *(v3 + 3);
        if (v13 >= v12 >> 1)
        {
          v3 = sub_21DE52454((v12 > 1), v13 + 1, 1, v3);
        }

        *(v3 + 2) = v13 + 1;
        v4 = &v3[16 * v13];
        *(v4 + 4) = v9;
        *(v4 + 5) = v11;
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (*(v3 + 2))
  {
    v20 = 60;
    v21 = 0xE100000000000000;
    v19 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
    sub_21DE6884C(&qword_280F7A6D8, &qword_27CE93E90, &qword_21DECCA40, MEMORY[0x277D83958]);
    v14 = sub_21DEC6D60();
    v16 = v15;

    MEMORY[0x223D4B2A0](v14, v16);

    MEMORY[0x223D4B2A0](62, 0xE100000000000000);
    return v20;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_21DE63168(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return result;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_18;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    v9 = HIBYTE(*v5) & 0xF;
    if ((*v5 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    ++v1;
    v5 += 2;
    if (v9)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21DE52560(0, *(v4 + 16) + 1, 1);
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_21DE52560((v10 > 1), v11 + 1, 1);
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  if (*(v4 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
    sub_21DE6884C(&qword_280F7A6D8, &qword_27CE93E90, &qword_21DECCA40, MEMORY[0x277D83958]);
    v13 = sub_21DEC6D60();
    v15 = v14;

    MEMORY[0x223D4B2A0](v13, v15);

    return 2618;
  }

  else
  {

    return 0;
  }
}

uint64_t OCRPromptFormatting.formatPrompt(input:sanitizerResource:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DE633D0, 0, 0);
}

uint64_t sub_21DE633D0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_21DE63168(v0[2]);
  v5 = v4;
  v0[5] = v4;
  sub_21DE5C6E4(v2, v1, &qword_27CE93F90, &qword_21DECD500);
  v6 = type metadata accessor for SanitizerResource(0);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    sub_21DE5CD00(v0[4], &qword_27CE93F90, &qword_21DECD500);

    v7 = v0[1];

    return v7(v3, v5);
  }

  else
  {
    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_21DE63554;

    return sub_21DE61EF8(v3, v5);
  }
}

uint64_t sub_21DE63554(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {

    v7 = sub_21DE63710;
  }

  else
  {
    v8 = v6[4];
    v6[8] = a2;
    v6[9] = a1;
    sub_21DE5CDA8(v8);
    v7 = sub_21DE63698;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21DE63698()
{

  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_21DE63710()
{
  sub_21DE5CDA8(*(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21DE63788(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21DE63824;

  return OCRPromptFormatting.formatPrompt(input:sanitizerResource:)(v4, a2);
}

uint64_t sub_21DE63824(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t TextPromptTemplate.separator.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_21DE6396C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t TGProcessor.Variant.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x636972656E6567 && a2 == 0xE700000000000000;
  if (v6 || (result = sub_21DEC7610(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 0;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

uint64_t TGProcessor.Variant.rawValue.getter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0x636972656E6567;
  }

  return v1;
}

uint64_t sub_21DE63A44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a1 == 0x636972656E6567 && v3 == 0xE700000000000000;
  if (v5 || (result = sub_21DEC7610(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 0;
  }

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_21DE63AC0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  if (v2)
  {
    *a1 = *v1;
    a1[1] = v2;
  }

  else
  {
    *a1 = 0x636972656E6567;
    a1[1] = 0xE700000000000000;
  }
}

uint64_t TGProcessor.sessionConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DEC6B90();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TGProcessor.samplingParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TGProcessor(0) + 20);
  v4 = sub_21DEC6B70();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TGProcessor.promptTemplateFallback.getter()
{
  v1 = *(v0 + *(type metadata accessor for TGProcessor(0) + 28));

  return v1;
}

uint64_t TGProcessor.systemPrompt.getter()
{
  v1 = *(v0 + *(type metadata accessor for TGProcessor(0) + 32));

  return v1;
}

uint64_t TGProcessor.textPromptTemplate.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TGProcessor(0) + 36));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
}

uint64_t TGProcessor.imageFormat.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for TGProcessor(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

__n128 TGProcessor.cropMargin.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TGProcessor(0) + 48));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

__n128 sub_21DE63DA0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t *a12, uint64_t *a13)
{
  v35 = *a8;
  v20 = a8[1].n128_u64[0];
  v21 = *a12;
  v22 = *(a12 + 8);
  v23 = a13[1];
  v37 = *a13;
  v36 = *(a13 + 16);
  v24 = sub_21DEC6B90();
  (*(*(v24 - 8) + 32))(a9, a1, v24);
  v25 = type metadata accessor for TGProcessor(0);
  v26 = v25[5];
  v27 = sub_21DEC6B70();
  (*(*(v27 - 8) + 32))(a9 + v26, a2, v27);
  sub_21DE682A8(a3, a9 + v25[6], &qword_27CE94140, &qword_21DECD700);
  v28 = (a9 + v25[7]);
  *v28 = a4;
  v28[1] = a5;
  v29 = (a9 + v25[8]);
  *v29 = a6;
  v29[1] = a7;
  v30 = (a9 + v25[9]);
  result = v35;
  *v30 = v35;
  v30[1].n128_u64[0] = v20;
  v32 = a9 + v25[10];
  *v32 = v21;
  *(v32 + 8) = v22;
  v33 = (a9 + v25[11]);
  *v33 = a10;
  v33[1] = a11;
  v34 = a9 + v25[12];
  *v34 = v37;
  *(v34 + 8) = v23;
  *(v34 + 16) = v36;
  return result;
}

uint64_t static ImageFormat.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_21DE63FE4()
{
  v1 = 6778480;
  if (*v0 != 1)
  {
    v1 = 0x7275536567616D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6778986;
  }
}

uint64_t sub_21DE64034@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DE6BFE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DE64068(uint64_t a1)
{
  v2 = sub_21DE68310();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE640A4(uint64_t a1)
{
  v2 = sub_21DE68310();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE640E0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_21DE6411C(uint64_t a1)
{
  v2 = sub_21DE68364();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE64158(uint64_t a1)
{
  v2 = sub_21DE68364();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE641E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000021DED9890 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_21DEC7610();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_21DE64274(uint64_t a1)
{
  v2 = sub_21DE6840C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE642B0(uint64_t a1)
{
  v2 = sub_21DE6840C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE642EC(uint64_t a1)
{
  v2 = sub_21DE683B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE64328(uint64_t a1)
{
  v2 = sub_21DE683B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageFormat.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94148, &qword_21DECD708);
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v25 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94150, &qword_21DECD710);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v22 = &v22 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94158, &qword_21DECD718);
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94160, &qword_21DECD720);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  v15 = *v2;
  v16 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE68310();
  sub_21DEC7810();
  if (v16 == 1)
  {
    if (v15)
    {
      v33 = 2;
      sub_21DE68364();
      v17 = v25;
      sub_21DEC7530();
      v19 = v26;
      v18 = v27;
    }

    else
    {
      v32 = 1;
      sub_21DE683B8();
      v17 = v22;
      sub_21DEC7530();
      v19 = v23;
      v18 = v24;
    }

    (*(v19 + 8))(v17, v18);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v31 = 0;
    sub_21DE6840C();
    sub_21DEC7530();
    v30 = v15;
    sub_21DE68460();
    v20 = v29;
    sub_21DEC75D0();
    (*(v28 + 8))(v10, v20);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t ImageFormat.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    return MEMORY[0x223D4BB10](v2);
  }

  else
  {
    MEMORY[0x223D4BB10](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x223D4BB30](v3);
  }
}

uint64_t ImageFormat.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21DEC7770();
  if (v2 == 1)
  {
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    MEMORY[0x223D4BB10](v3);
  }

  else
  {
    MEMORY[0x223D4BB10](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x223D4BB30](v4);
  }

  return sub_21DEC77B0();
}

uint64_t ImageFormat.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94170, &qword_21DECD728);
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v36 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94178, &qword_21DECD730);
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94180, &qword_21DECD738);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94188, &qword_21DECD740);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_21DE68310();
  v15 = v45;
  sub_21DEC77E0();
  if (!v15)
  {
    v36 = v7;
    v37 = 0;
    v17 = v43;
    v16 = v44;
    v45 = v11;
    v18 = sub_21DEC7520();
    v19 = *(v18 + 16);
    if (!v19 || ((v20 = *(v18 + 32), v19 == 1) ? (v21 = v20 == 3) : (v21 = 1), v21))
    {
      v22 = sub_21DEC7340();
      swift_allocError();
      v23 = v10;
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94038, &qword_21DECD5E0);
      *v25 = &type metadata for ImageFormat;
      sub_21DEC7490();
      sub_21DEC7330();
      (*(*(v22 - 8) + 104))(v25, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v45 + 8))(v13, v23);
LABEL_17:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v46);
    }

    if (*(v18 + 32))
    {
      if (v20 == 1)
      {
        v49 = 1;
        sub_21DE683B8();
        v26 = v37;
        sub_21DEC7480();
        v27 = v45;
        if (v26)
        {
          (*(v45 + 8))(v13, v10);
          goto LABEL_17;
        }

        (*(v17 + 8))(v6, v41);
        (*(v27 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v33 = 0;
        goto LABEL_23;
      }

      v50 = 2;
      sub_21DE68364();
      v31 = v37;
      sub_21DEC7480();
      v30 = v45;
      if (!v31)
      {
        (*(v38 + 8))(v16, v39);
        (*(v30 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v33 = 1;
LABEL_23:
        v35 = 1;
        v29 = v42;
LABEL_24:
        *v29 = v33;
        *(v29 + 8) = v35;
        return __swift_destroy_boxed_opaque_existential_0(v46);
      }
    }

    else
    {
      v48 = 0;
      sub_21DE6840C();
      v28 = v37;
      sub_21DEC7480();
      v29 = v42;
      if (!v28)
      {
        sub_21DE684B4();
        v34 = v36;
        sub_21DEC7510();
        (*(v40 + 8))(v9, v34);
        (*(v45 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v35 = 0;
        v33 = v47;
        goto LABEL_24;
      }

      v30 = v45;
    }

    (*(v30 + 8))(v13, v10);
    goto LABEL_17;
  }

  return __swift_destroy_boxed_opaque_existential_0(v46);
}

uint64_t sub_21DE64E3C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_21DEC7770();
  if (v3 == 1)
  {
    if (v2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    MEMORY[0x223D4BB10](v4);
  }

  else
  {
    MEMORY[0x223D4BB10](0);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x223D4BB30](v5);
  }

  return sub_21DEC77B0();
}

uint64_t sub_21DE64EB8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_21DE64F28()
{
  if (*v0)
  {
    return 31076;
  }

  else
  {
    return 30820;
  }
}

uint64_t sub_21DE64F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 30820 && a2 == 0xE200000000000000;
  if (v5 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 31076 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21DE6501C(uint64_t a1)
{
  v2 = sub_21DE6855C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE65058(uint64_t a1)
{
  v2 = sub_21DE6855C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s17SceneIntelligence15ParkingLocationC10CodingKeysO9hashValueSivg_0()
{
  v1 = *v0;
  sub_21DEC7770();
  MEMORY[0x223D4BB10](v1);
  return sub_21DEC77B0();
}

uint64_t sub_21DE650DC(uint64_t a1)
{
  v2 = *v1;
  sub_21DEC7770();
  MEMORY[0x223D4BB10](v2);
  return sub_21DEC77B0();
}

uint64_t sub_21DE65120()
{
  v1 = 0x6574756C6F736261;
  if (*v0 == 1)
  {
    v1 = 0x65766974616C6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65766974616C6572;
  }
}

uint64_t sub_21DE65184@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DE6C0F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DE651AC(uint64_t a1)
{
  v2 = sub_21DE68508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE651E8(uint64_t a1)
{
  v2 = sub_21DE68508();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE65240(uint64_t a1)
{
  v2 = sub_21DE68604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE6527C(uint64_t a1)
{
  v2 = sub_21DE68604();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE652B8()
{
  sub_21DEC7770();
  MEMORY[0x223D4BB10](0);
  return sub_21DEC77B0();
}

uint64_t sub_21DE652FC(uint64_t a1)
{
  sub_21DEC7770();
  MEMORY[0x223D4BB10](0);
  return sub_21DEC77B0();
}

uint64_t sub_21DE65340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x61746E6563726570 && a2 == 0xEA00000000006567)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21DEC7610();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21DE653D0(uint64_t a1)
{
  v2 = sub_21DE685B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE6540C(uint64_t a1)
{
  v2 = sub_21DE685B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageMargin.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94198, &qword_21DECD748);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941A0, &qword_21DECD750);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941A8, &qword_21DECD758);
  v23 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941B0, &qword_21DECD760);
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v29 = *v1;
  v14 = v1[1];
  v15 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE68508();
  sub_21DEC7810();
  if (v15)
  {
    if (v15 == 1)
    {
      LOBYTE(v34) = 1;
      sub_21DE685B0();
      v16 = v31;
      sub_21DEC7530();
      v34 = v29;
      sub_21DE68460();
      v17 = v25;
      sub_21DEC75D0();
      v18 = *(v24 + 8);
      v19 = v7;
LABEL_8:
      v18(v19, v17);
      return (*(v30 + 8))(v13, v16);
    }

    LOBYTE(v34) = 2;
    sub_21DE6855C();
    v20 = v26;
    v16 = v31;
    sub_21DEC7530();
    v34 = v29;
    v33 = 0;
    sub_21DE68460();
    v17 = v28;
    v21 = v32;
    sub_21DEC75D0();
    if (!v21)
    {
      v34 = v14;
      v33 = 1;
      sub_21DEC75D0();
      v18 = *(v27 + 8);
      v19 = v20;
      goto LABEL_8;
    }

    (*(v27 + 8))(v20, v17);
  }

  else
  {
    LOBYTE(v34) = 0;
    sub_21DE68604();
    v16 = v31;
    sub_21DEC7530();
    v34 = v29;
    sub_21DE68460();
    sub_21DEC75D0();
    (*(v23 + 8))(v10, v8);
  }

  return (*(v30 + 8))(v13, v16);
}

uint64_t ImageMargin.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      MEMORY[0x223D4BB10](1);
    }

    else
    {
      v2 = v0[1];
      MEMORY[0x223D4BB10](2);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v3 = v1;
      }

      else
      {
        v3 = 0;
      }

      MEMORY[0x223D4BB30](v3);
      v1 = v2;
    }
  }

  else
  {
    MEMORY[0x223D4BB10](0);
  }

  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  return MEMORY[0x223D4BB30](v4);
}

uint64_t ImageMargin.hashValue.getter()
{
  sub_21DEC7770();
  ImageMargin.hash(into:)();
  return sub_21DEC77B0();
}

uint64_t ImageMargin.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941B8, &qword_21DECD768);
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v44 = &v35 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941C0, &qword_21DECD770);
  v41 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941C8, &qword_21DECD778);
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941D0, &unk_21DECD780);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_21DE68508();
  v14 = v45;
  sub_21DEC77E0();
  if (!v14)
  {
    v37 = v10;
    v45 = v12;
    v15 = sub_21DEC7520();
    v16 = v15;
    v17 = *(v15 + 16);
    if (!v17 || ((v18 = *(v15 + 32), v17 == 1) ? (v19 = v18 == 3) : (v19 = 1), v19))
    {
      v20 = sub_21DEC7340();
      swift_allocError();
      v21 = v9;
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94038, &qword_21DECD5E0);
      *v23 = &type metadata for ImageMargin;
      v24 = v45;
      sub_21DEC7490();
      sub_21DEC7330();
      (*(*(v20 - 8) + 104))(v23, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v37 + 8))(v24, v21);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v15 + 32))
      {
        if (v18 == 1)
        {
          v36 = v15;
          LOBYTE(v49) = 1;
          sub_21DE685B0();
          v26 = v45;
          sub_21DEC7480();
          sub_21DE684B4();
          v27 = v38;
          sub_21DEC7510();
          (*(v41 + 8))(v5, v27);
          (*(v37 + 8))(v26, v9);
          swift_unknownObjectRelease();
          v31 = 0;
          v32 = v49;
          v33 = v43;
        }

        else
        {
          LOBYTE(v49) = 2;
          sub_21DE6855C();
          sub_21DEC7480();
          v33 = v43;
          v36 = v16;
          v41 = v9;
          LOBYTE(v48) = 0;
          sub_21DE684B4();
          v29 = v40;
          sub_21DEC7510();
          v30 = v37;
          v32 = v49;
          v47 = 1;
          v34 = v44;
          sub_21DEC7510();
          (*(v42 + 8))(v34, v29);
          (*(v30 + 8))(v45, v41);
          swift_unknownObjectRelease();
          v31 = v48;
        }
      }

      else
      {
        v36 = v15;
        LOBYTE(v49) = 0;
        sub_21DE68604();
        v28 = v45;
        sub_21DEC7480();
        sub_21DE684B4();
        sub_21DEC7510();
        (*(v39 + 8))(v8, v6);
        (*(v37 + 8))(v28, v9);
        swift_unknownObjectRelease();
        v31 = 0;
        v32 = v49;
        v33 = v43;
      }

      *v33 = v32;
      *(v33 + 8) = v31;
      *(v33 + 16) = v18;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v46);
}

uint64_t sub_21DE66148()
{
  sub_21DEC7770();
  ImageMargin.hash(into:)();
  return sub_21DEC77B0();
}

uint64_t sub_21DE661A0(uint64_t a1)
{
  sub_21DEC7770();
  ImageMargin.hash(into:)();
  return sub_21DEC77B0();
}

uint64_t sub_21DE661F8()
{
  if (*v0)
  {
    return 0xD00000000000002ELL;
  }

  else
  {
    return 0x7275746375727453;
  }
}

uint64_t AFMAnnotation.tgProcessor.getter@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    sub_21DE9EEDC();
    v3 = type metadata accessor for VICCTGProcessorBuilder();

    v4 = &off_282F298A0;
    v5 = 0x800000021DED9790;
    v6 = a1;
    v7 = 0xD00000000000002ELL;
  }

  else
  {
    sub_21DE53F2C();
    v3 = type metadata accessor for StructuredTextTGProcessorBuilder();

    v4 = &off_282F25980;
    v7 = 0x7275746375727453;
    v5 = 0xEF74786574206465;
    v6 = a1;
  }

  sub_21DE79BB0(v7, v5, v3, v4, v6);
}

uint64_t AFMAnnotation.tgProcessor(variant:)@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    sub_21DE9EEDC();
    v3 = type metadata accessor for VICCTGProcessorBuilder();

    v4 = &off_282F298A0;
    v5 = 0x800000021DED9790;
    v6 = a1;
    v7 = 0xD00000000000002ELL;
  }

  else
  {
    sub_21DE53F2C();
    v3 = type metadata accessor for StructuredTextTGProcessorBuilder();

    v4 = &off_282F25980;
    v7 = 0x7275746375727453;
    v5 = 0xEF74786574206465;
    v6 = a1;
  }

  sub_21DE79BB0(v7, v5, v3, v4, v6);
}

uint64_t AFMAnnotation.postProcess(tgResponse:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500);
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 57) = *v2;

  return MEMORY[0x2822009F8](sub_21DE664E4, 0, 0);
}

uint64_t sub_21DE664E4()
{
  v1 = *(v0 + 32);
  *(v0 + 56) = *(v0 + 57);
  v2 = type metadata accessor for SanitizerResource(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_21DE665CC;
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);

  return AFMAnnotation.postProcess(tgResponse:sanitizerResource:)(v6, v4, v5);
}

uint64_t sub_21DE665CC()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 48) = v0;

  sub_21DE5CD00(v2, &qword_27CE93F90, &qword_21DECD500);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21DE66740, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_21DE66740()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AFMAnnotation.postProcess(tgResponse:sanitizerResource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a1;
  if (*v3)
  {
    v6 = swift_task_alloc();
    v4[9] = v6;
    v7 = sub_21DE67A08();
    sub_21DE67960();
    *v6 = v4;
    v6[1] = sub_21DE66ACC;
    v8 = &type metadata for VerticalIntegrationContentClassifier;
    v9 = (v4 + 2);
    v10 = 0x800000021DED9790;
    v11 = a3;
    v12 = 0xD00000000000002ELL;
    v13 = &type metadata for VerticalIntegrationContentClassifier;
    v14 = v7;
  }

  else
  {
    v15 = type metadata accessor for StructuredText();
    v16 = swift_task_alloc();
    v4[7] = v16;
    v17 = sub_21DE67A5C(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
    sub_21DE67A5C(&qword_27CE93FE0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
    *v16 = v4;
    v16[1] = sub_21DE66994;
    v12 = 0x7275746375727453;
    v10 = 0xEF74786574206465;
    v9 = (v4 + 5);
    v8 = v15;
    v11 = a3;
    v13 = v15;
    v14 = v17;
  }

  return sub_21DEC2968(v9, v8, v11, v12, v10, v13, v14);
}

uint64_t sub_21DE66994()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_21DE66C24;
  }

  else
  {
    v2 = sub_21DE66AA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21DE66AA8()
{
  v1 = *(v0 + 48);
  *v1 = *(v0 + 40);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  return (*(v0 + 8))();
}

uint64_t sub_21DE66ACC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_21DE66C3C;
  }

  else
  {
    v2 = sub_21DE66BE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21DE66BE0()
{
  v1 = *(v0 + 24);
  if (*(v0 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v0 + 32) | 0x4000;
  v4 = *(v0 + 48);
  *v4 = *(v0 + 16);
  *(v4 + 8) = v1;
  *(v4 + 16) = v3;
  return (*(v0 + 8))();
}

uint64_t sub_21DE66C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (*v6)
  {
    return sub_21DE782B0(a2, a3, a4, a5 & 1, a6 & 1);
  }

  else
  {
    return sub_21DE56D70(a2, a3, a4, a5 & 1, a6 & 1);
  }
}

uint64_t sub_21DE66CE4()
{
  if (*v0)
  {
    return 0xD000000000000024;
  }

  else
  {
    return 0x7275746375727473;
  }
}

uint64_t sub_21DE66D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7275746375727473 && a2 == 0xEE00747865546465;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000024 && 0x800000021DED97F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21DE66E1C(uint64_t a1)
{
  v2 = sub_21DE68658();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE66E58(uint64_t a1)
{
  v2 = sub_21DE68658();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE66E94(uint64_t a1)
{
  v2 = sub_21DE68700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE66ED0(uint64_t a1)
{
  v2 = sub_21DE68700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE66F0C(uint64_t a1)
{
  v2 = sub_21DE686AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE66F48(uint64_t a1)
{
  v2 = sub_21DE686AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AFMAnnotation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941D8, &qword_21DECD7A0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941E0, &qword_21DECD7A8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941E8, &qword_21DECD7B0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE68658();
  sub_21DEC7810();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_21DE686AC();
    v14 = v18;
    sub_21DEC7530();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_21DE68700();
    sub_21DEC7530();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t AFMAnnotation.hashValue.getter()
{
  v1 = *v0;
  sub_21DEC7770();
  MEMORY[0x223D4BB10](v1);
  return sub_21DEC77B0();
}

uint64_t AFMAnnotation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941F0, &qword_21DECD7B8);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941F8, &qword_21DECD7C0);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94200, &qword_21DECD7C8);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE68658();
  v13 = v31;
  sub_21DEC77E0();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_21DEC7520();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_21DEC7340();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94038, &qword_21DECD5E0);
    *v21 = &type metadata for AFMAnnotation;
    sub_21DEC7490();
    sub_21DEC7330();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_21DE686AC();
    sub_21DEC7480();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_21DE68700();
    sub_21DEC7480();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

BOOL _s17SceneIntelligence7AFMDataO2eeoiySbAC_ACtFZ_0(__int128 *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 8);
  v9 = *a1;
  v10 = v2;
  sub_21DEC7770();
  AFMData.hash(into:)(v8);
  v6 = sub_21DEC77B0();
  *&v9 = v3;
  *(&v9 + 1) = v4;
  v10 = v5;
  sub_21DEC7770();
  AFMData.hash(into:)(v8);
  return v6 == sub_21DEC77B0();
}

unint64_t sub_21DE677CC()
{
  result = qword_280F7A6F8;
  if (!qword_280F7A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7A6F8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_21DE67864()
{
  result = qword_280F7B510[0];
  if (!qword_280F7B510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F7B510);
  }

  return result;
}

unint64_t sub_21DE678B8()
{
  result = qword_280F7B358;
  if (!qword_280F7B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7B358);
  }

  return result;
}

unint64_t sub_21DE6790C()
{
  result = qword_280F7B030[0];
  if (!qword_280F7B030[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F7B030);
  }

  return result;
}

unint64_t sub_21DE67960()
{
  result = qword_280F7A708;
  if (!qword_280F7A708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7A708);
  }

  return result;
}

unint64_t sub_21DE679B4()
{
  result = qword_27CE95778;
  if (!qword_27CE95778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95778);
  }

  return result;
}

unint64_t sub_21DE67A08()
{
  result = qword_280F7A700;
  if (!qword_280F7A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7A700);
  }

  return result;
}

uint64_t sub_21DE67A5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21DE67AA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7275746375727473 && a2 == 0xEE00747865546465;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000024 && 0x800000021DED97F0 == a2 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21DEC7610();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

BOOL _s17SceneIntelligence11ImageMarginO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v4 == 1 && v2 == v3)
      {
        return 1;
      }
    }

    else if (v4 == 2 && v2 == v3)
    {
      return *(a1 + 8) == *(a2 + 8);
    }
  }

  else if (!*(a2 + 16) && v2 == v3)
  {
    return 1;
  }

  return 0;
}

BOOL _s17SceneIntelligence8AFMChunkO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  v5 = a1[1];
  v10 = *a1;
  v11 = v5;
  v12 = v3;
  sub_21DEC7770();
  AFMChunk.hash(into:)(v9);
  v6 = sub_21DEC77B0();
  v7 = a2[1];
  v10 = *a2;
  v11 = v7;
  v12 = v4;
  sub_21DEC7770();
  AFMChunk.hash(into:)(v9);
  return v6 == sub_21DEC77B0();
}

unint64_t sub_21DE67CF0()
{
  result = qword_27CE94040;
  if (!qword_27CE94040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94040);
  }

  return result;
}

unint64_t sub_21DE67D44()
{
  result = qword_27CE95780;
  if (!qword_27CE95780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95780);
  }

  return result;
}

unint64_t sub_21DE67D98()
{
  result = qword_27CE95788;
  if (!qword_27CE95788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95788);
  }

  return result;
}

unint64_t sub_21DE67DEC()
{
  result = qword_27CE95790;
  if (!qword_27CE95790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95790);
  }

  return result;
}

unint64_t sub_21DE67E40()
{
  result = qword_27CE95798;
  if (!qword_27CE95798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95798);
  }

  return result;
}

unint64_t sub_21DE67E94()
{
  result = qword_27CE957A0;
  if (!qword_27CE957A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957A0);
  }

  return result;
}

unint64_t sub_21DE67EE8()
{
  result = qword_27CE957A8;
  if (!qword_27CE957A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957A8);
  }

  return result;
}

unint64_t sub_21DE67F3C()
{
  result = qword_27CE957B0;
  if (!qword_27CE957B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957B0);
  }

  return result;
}

unint64_t sub_21DE67F90()
{
  result = qword_27CE957B8;
  if (!qword_27CE957B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957B8);
  }

  return result;
}

unint64_t sub_21DE67FE4()
{
  result = qword_27CE957C0;
  if (!qword_27CE957C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957C0);
  }

  return result;
}

unint64_t sub_21DE68038()
{
  result = qword_27CE957C8;
  if (!qword_27CE957C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957C8);
  }

  return result;
}

unint64_t sub_21DE6808C()
{
  result = qword_27CE957D0;
  if (!qword_27CE957D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957D0);
  }

  return result;
}

unint64_t sub_21DE680E0()
{
  result = qword_27CE957D8;
  if (!qword_27CE957D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957D8);
  }

  return result;
}

unint64_t sub_21DE68134()
{
  result = qword_27CE957E0;
  if (!qword_27CE957E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957E0);
  }

  return result;
}

unint64_t sub_21DE68188()
{
  result = qword_27CE957E8;
  if (!qword_27CE957E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957E8);
  }

  return result;
}

unint64_t sub_21DE681FC()
{
  result = qword_27CE94138;
  if (!qword_27CE94138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94138);
  }

  return result;
}

uint64_t sub_21DE68270(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DE682A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_21DE68310()
{
  result = qword_27CE957F0;
  if (!qword_27CE957F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957F0);
  }

  return result;
}

unint64_t sub_21DE68364()
{
  result = qword_27CE957F8;
  if (!qword_27CE957F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957F8);
  }

  return result;
}

unint64_t sub_21DE683B8()
{
  result = qword_27CE95800;
  if (!qword_27CE95800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95800);
  }

  return result;
}

unint64_t sub_21DE6840C()
{
  result = qword_27CE95808;
  if (!qword_27CE95808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95808);
  }

  return result;
}

unint64_t sub_21DE68460()
{
  result = qword_27CE94168;
  if (!qword_27CE94168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94168);
  }

  return result;
}

unint64_t sub_21DE684B4()
{
  result = qword_27CE94190;
  if (!qword_27CE94190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94190);
  }

  return result;
}

unint64_t sub_21DE68508()
{
  result = qword_27CE95810;
  if (!qword_27CE95810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95810);
  }

  return result;
}

unint64_t sub_21DE6855C()
{
  result = qword_27CE95818;
  if (!qword_27CE95818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95818);
  }

  return result;
}