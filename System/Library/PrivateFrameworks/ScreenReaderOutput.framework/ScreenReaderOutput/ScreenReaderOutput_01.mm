uint64_t sub_264971AA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D48, &qword_26498CC38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26498CB10;
  *(inited + 32) = 0xA0E290A0E280A0E2;
  *(inited + 40) = 0xAF80A0E2B1A0E285;
  result = sub_26497D994(25964, 0xE200000000000000);
  if (v2)
  {
    *(inited + 48) = result;
    *(inited + 56) = v2;
    *(inited + 64) = 0xA0E2A8A0E280A0E2;
    *(inited + 72) = 0xAF80A0E2B1A0E282;
    result = sub_26497D994(25959, 0xE200000000000000);
    if (v3)
    {
      *(inited + 80) = result;
      *(inited + 88) = v3;
      v4 = sub_264972178(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D50, &qword_26498CC40);
      result = swift_arrayDestroy();
      qword_27FF87598 = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_264971BAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D60, &unk_26498CC50);
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

void *sub_264971CB8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D30, &qword_26498CC20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D38, &qword_26498CC28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_264971E00(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t get_enum_tag_for_layout_string_18ScreenReaderOutput21BRUINemethParserStackC11ElementTypeO(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_264971F28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264971F64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_264971FB0(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_264972020(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_264972114(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

unint64_t sub_2649720B0()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_264972114(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_264972114(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_264982A44();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

unint64_t sub_264972178(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D58, &qword_26498CC48);
    v3 = sub_264982A84();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_26496A734(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_26497228C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_264972514(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BRUIUEBMathParser();
  v4 = swift_allocObject();
  sub_264972700(a1, a2);
  v5 = *(*v4 + 288);

  if ((v5(v6) & 1) == 0)
  {
    v7 = *(*v4 + 304);
    do
    {
      v8 = v7();
    }

    while ((v5(v8) & 1) == 0);
  }

  (*(*v4 + 296))();
}

uint64_t sub_264972630(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_264972700(a1, a2);
  return v4;
}

uint64_t sub_2649726C0()
{
  sub_2649768C8(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_264972700(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = 15;
  *(v2 + 40) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86C28, &qword_26498CB20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26498CAD0;
  type metadata accessor for BRUIUEBMathParser.Element();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 56) = 3;
  v5 = MEMORY[0x277D84F90];
  *(v4 + 64) = MEMORY[0x277D84F90];
  *(v3 + 32) = v4;
  *(v2 + 48) = v5;
  *(v2 + 56) = v3;
  *(v2 + 42) = 1;
  return v2;
}

BOOL sub_2649727C4()
{
  v1 = v0[3];
  v2 = v0[2] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v0[4] >> 14 >= (4 * v2);
}

void sub_2649727EC(void *a1@<X8>)
{
  swift_beginAccess();
  while (1)
  {
    v4 = *(v1 + 56);
    if (v4 >> 62)
    {
      break;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_6;
    }

LABEL_4:
    sub_264974D98();
  }

  if (sub_264982A44() >= 2)
  {
    goto LABEL_4;
  }

LABEL_6:
  v5 = *(v1 + 56);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = sub_264982A44();
  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_8:
  v2 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
LABEL_16:
    __break(1u);
LABEL_17:

    MEMORY[0x266745520](v2, v5);

LABEL_13:
    swift_beginAccess();

    nullsub_1();
    a1[3] = &type metadata for BRUILinearMathString;
    a1[4] = &off_28763D190;
    *a1 = v7;
    return;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_17;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_13;
  }

  __break(1u);
}

void sub_264972948()
{
  v3 = v0;
  v4 = (*v0 + 288);
  v5 = *v4;
  if ((*v4)())
  {
    return;
  }

  v6 = v0[3];
  v7 = sub_2649747A0(v0[4], v0[2], v6);
  v8 = MEMORY[0x2667452B0](v7);
  v10 = v9;

  if (sub_264982834())
  {

    *(v3 + 40) = 1;
    goto LABEL_12;
  }

  if (sub_264982834())
  {

    *(v3 + 40) = 3;
    goto LABEL_12;
  }

  if (sub_264982834())
  {

    *(v3 + 41) = 2;
    goto LABEL_10;
  }

  if (sub_264982834())
  {

    *(v3 + 41) = 0;
LABEL_10:
    if (*(v3 + 40) != 2)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  swift_beginAccess();
  v12 = *(v3 + 56);
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_19;
    }

LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v13 = sub_264982A44();
  if (!v13)
  {
    goto LABEL_119;
  }

LABEL_19:
  v1 = v13 - 1;
  if (__OFSUB__(v13, 1))
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
LABEL_121:

    v14 = MEMORY[0x266745520](v1, v12);

    goto LABEL_24;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_123;
  }

  if (v1 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_123:
    __break(1u);
LABEL_124:
    v31 = sub_264982AA4();

    if (v31)
    {
      goto LABEL_125;
    }

LABEL_55:

    return;
  }

  v14 = *(v12 + 8 * v1 + 32);

LABEL_24:
  sub_264976890(v14 + 16, v118);

  if (v119 == 4 && (v15 = vorrq_s8(*&v118[8], *&v118[24]), !(*&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)) | *v118)))
  {
    sub_2649768C8(v118);
    if (sub_264982834())
    {

      sub_264974D98();
LABEL_11:
      *(v3 + 40) = 0;
      goto LABEL_12;
    }
  }

  else
  {
    sub_2649768C8(v118);
  }

  if (*(v3 + 40) == 3 || (sub_264982834() & 1) == 0)
  {
    v16 = sub_2649747EC(v8, v10);
    if (!v17)
    {
      goto LABEL_346;
    }

    v14 = v16;
    v12 = v17;
    v2 = 10264802;
    if (v16 == 12361954 && v17 == 0xA300000000000000 || (sub_264982AA4() & 1) != 0)
    {

      *(v3 + 40) = 2;
      goto LABEL_35;
    }

    if (v14 == 11575522 && v12 == 0xA300000000000000 || (sub_264982AA4() & 1) != 0)
    {

      if (*(v3 + 40) == 1)
      {
        goto LABEL_35;
      }

      goto LABEL_43;
    }

    if (v14 == 9478370 && v12 == 0xA300000000000000 || (sub_264982AA4() & 1) != 0)
    {
      v19 = *(v3 + 40);
      if (v19 == 3)
      {
        v20 = 0;
      }

      else
      {
        if (v19 != 2)
        {
          goto LABEL_52;
        }

        v20 = 1;
      }

      *(v3 + 40) = v20;
LABEL_52:
      sub_264974834();
      swift_beginAccess();
      *(v3 + 48) = MEMORY[0x277D84F90];

      if (((v5)(v21) & 1) == 0)
      {
        *(v3 + 32) = sub_2649827E4();
      }

      if (v5())
      {
        goto LABEL_55;
      }

      if (sub_264982844() == 10723554 && v22 == 0xA300000000000000)
      {

LABEL_66:
        nullsub_1();
        if (v24)
        {
          goto LABEL_126;
        }

        __break(1u);
        goto LABEL_392;
      }

      v14 = sub_264982AA4();

      if (v14)
      {
        goto LABEL_66;
      }

      if (sub_264982844() == 10264802 && v25 == 0xA300000000000000)
      {

LABEL_106:
        nullsub_1();
        if (v24)
        {
          goto LABEL_126;
        }

        __break(1u);
LABEL_108:

        memset(v118, 0, sizeof(v118));
LABEL_164:
        v119 = 4;
        sub_264974CB4(v118);
        sub_2649768C8(v118);
        goto LABEL_35;
      }

      v28 = sub_264982AA4();

      if (v28)
      {
        goto LABEL_106;
      }

      if (sub_264982844() == 9871586 && v29 == 0xA300000000000000)
      {

LABEL_125:
        nullsub_1();
        if (v24)
        {
LABEL_126:
          v32 = v23;
          v33 = v24;

          sub_2649766D8(v32, v33, v3);

          goto LABEL_35;
        }

        __break(1u);
        goto LABEL_394;
      }

      goto LABEL_124;
    }

    if (v14 == 10526946 && v12 == 0xA300000000000000 || (sub_264982AA4() & 1) != 0)
    {

      if (*(v3 + 41) != 2)
      {
        *(v3 + 41) = 1;
        if (*(v3 + 40) == 2)
        {
LABEL_43:
          *(v3 + 40) = 0;
        }
      }

LABEL_35:
      sub_264974834();
      swift_beginAccess();
      *(v3 + 48) = MEMORY[0x277D84F90];

      if ((v5)(v18))
      {
        return;
      }

LABEL_15:
      *(v3 + 32) = sub_2649827E4();
      return;
    }

    if (v14 == 12034274 && v12 == 0xA300000000000000 || (sub_264982AA4()) && *(v3 + 40) != 3)
    {
      goto LABEL_108;
    }

    v8 = *(v3 + 56);
    if (v8 >> 62)
    {
      v26 = sub_264982A44();
      if (v26)
      {
LABEL_77:
        v6 = v26 - 1;
        if (!__OFSUB__(v26, 1))
        {
          if ((v8 & 0xC000000000000001) == 0)
          {
            if ((v6 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v6 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v6 = *(v8 + 8 * v6 + 32);

              goto LABEL_82;
            }

            __break(1u);
LABEL_346:
            __break(1u);
            goto LABEL_347;
          }

LABEL_343:

          v6 = MEMORY[0x266745520](v6, v8);

LABEL_82:
          sub_264976890(v6 + 16, v118);

          if (v119)
          {
            sub_2649768C8(v118);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(v118);
            if (v14 == 12493026 && v12 == 0xA300000000000000 || (sub_264982AA4()) && *(v3 + 40) != 3)
            {
              goto LABEL_116;
            }
          }

          if (v14 == 9740514 && v12 == 0xA300000000000000 || (sub_264982AA4()) && *(v3 + 40) != 3)
          {

            v30 = 2;
            goto LABEL_163;
          }

          if (v14 == 10723554 && v12 == 0xA300000000000000 || (sub_264982AA4()) && *(v3 + 40) != 3)
          {

            v118[0] = 1;
            v119 = 3;
            sub_264974CB4(v118);
            sub_2649768C8(v118);
            *(v3 + 40) = 3;
            *(v3 + 42) = 1;
            goto LABEL_35;
          }

          v8 = *(v3 + 56);
          if (!(v8 >> 62))
          {
            v27 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v27)
            {
              goto LABEL_94;
            }

            goto LABEL_348;
          }

LABEL_347:
          v27 = sub_264982A44();
          if (v27)
          {
LABEL_94:
            v6 = v27 - 1;
            if (!__OFSUB__(v27, 1))
            {
              if ((v8 & 0xC000000000000001) == 0)
              {
                if ((v6 & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (v6 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v6 = *(v8 + 8 * v6 + 32);

LABEL_99:
                  sub_264976890(v6 + 16, v118);

                  if (v119 == 3)
                  {
                    if (v118[0] == 1 && (v14 == v2 && v12 == 0xA300000000000000 || (sub_264982AA4() & 1) != 0))
                    {

                      sub_264974D98();
                      *(v3 + 40) = 3;
                      *(v3 + 42) = 1;
                      goto LABEL_35;
                    }
                  }

                  else
                  {
                    sub_2649768C8(v118);
                  }

                  if ((v14 != v2 + 851968 || v12 != 0xA300000000000000) && (sub_264982AA4() & 1) == 0 || *(v3 + 40) == 3)
                  {
                    v8 = *(v3 + 56);
                    if (!(v8 >> 62))
                    {
                      v34 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      if (v34)
                      {
                        goto LABEL_135;
                      }

                      goto LABEL_362;
                    }

LABEL_361:
                    v34 = sub_264982A44();
                    if (v34)
                    {
LABEL_135:
                      v6 = v34 - 1;
                      if (!__OFSUB__(v34, 1))
                      {
                        if ((v8 & 0xC000000000000001) == 0)
                        {
                          if ((v6 & 0x8000000000000000) != 0)
                          {
                            __break(1u);
                          }

                          else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > v6)
                          {
                            v6 = *(v8 + 8 * v6 + 32);

LABEL_140:
                            sub_264976890(v6 + 16, v118);

                            if (v119 == 4 && *v118 == 3 && (v35 = vorrq_s8(*&v118[8], *&v118[24]), !*&vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL))))
                            {
                              sub_2649768C8(v118);
                              if (v14 == v2 + 0x100000 && v12 == 0xA300000000000000 || (sub_264982AA4()) && *(v3 + 40) != 3)
                              {
                                goto LABEL_116;
                              }
                            }

                            else
                            {
                              sub_2649768C8(v118);
                            }

                            v8 = *(v3 + 56);
                            if (!(v8 >> 62))
                            {
                              v36 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
                              if (v36)
                              {
                                goto LABEL_151;
                              }

                              goto LABEL_372;
                            }

LABEL_371:
                            v36 = sub_264982A44();
                            if (v36)
                            {
LABEL_151:
                              v6 = v36 - 1;
                              if (!__OFSUB__(v36, 1))
                              {
                                if ((v8 & 0xC000000000000001) == 0)
                                {
                                  if ((v6 & 0x8000000000000000) != 0)
                                  {
                                    __break(1u);
                                  }

                                  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > v6)
                                  {
                                    v6 = *(v8 + 8 * v6 + 32);

                                    goto LABEL_156;
                                  }

                                  __break(1u);
LABEL_377:
                                  __break(1u);
LABEL_378:
                                  __break(1u);
LABEL_379:
                                  __break(1u);
LABEL_380:
                                  __break(1u);
LABEL_381:
                                  __break(1u);
LABEL_382:
                                  __break(1u);
LABEL_383:
                                  __break(1u);
LABEL_384:
                                  __break(1u);
                                  goto LABEL_385;
                                }

LABEL_374:

                                v6 = MEMORY[0x266745520](v6, v8);

LABEL_156:
                                sub_264976890(v6 + 16, v118);

                                if (v119 == 2)
                                {
                                  __swift_destroy_boxed_opaque_existential_0(v118);
                                  if (v14 == v2 + 0x100000 && v12 == 0xA300000000000000 || (sub_264982AA4() & 1) != 0)
                                  {
                                    if (*(v3 + 40) == 3)
                                    {
                                      goto LABEL_180;
                                    }

LABEL_116:

                                    sub_264974D98();
                                    goto LABEL_35;
                                  }
                                }

                                else
                                {
                                  sub_2649768C8(v118);
                                }

                                v37 = *(v3 + 40);
                                if (v37 < 2)
                                {
                                  if (v14 == v2 + 786432 && v12 == 0xA300000000000000 || (sub_264982AA4() & 1) != 0)
                                  {
                                    if ((v5() & 1) == 0)
                                    {
                                      *(v3 + 32) = sub_2649827E4();
                                    }

                                    if (v5())
                                    {
                                      goto LABEL_55;
                                    }

                                    if (sub_264982844() == v2 - 851968 && v38 == 0xA300000000000000)
                                    {
                                    }

                                    else
                                    {
LABEL_325:
                                      v104 = sub_264982AA4();

                                      if ((v104 & 1) == 0)
                                      {
                                        goto LABEL_55;
                                      }
                                    }

                                    if (((v5)(v39) & 1) == 0)
                                    {
                                      *(v3 + 32) = sub_2649827E4();
                                    }

                                    v105 = sub_26497D994(26992, 0xE200000000000000);
                                    if (v106)
                                    {
                                      v107 = v105;
                                      v108 = v106;

                                      sub_2649766D8(v107, v108, v3);

                                      return;
                                    }

                                    goto LABEL_399;
                                  }

                                  goto LABEL_274;
                                }

                                if (v37 == 2)
                                {
                                  if (qword_27FF875A0 != -1)
                                  {
                                    swift_once();
                                  }

                                  v40 = &qword_27FF875A8;
                                  goto LABEL_280;
                                }

LABEL_180:
                                if (qword_27FF875D0 == -1)
                                {
LABEL_181:
                                  if (*(qword_27FF875D8 + 16))
                                  {
                                    sub_26496A734(v14, v12);
                                    if (v41)
                                    {
                                      swift_bridgeObjectRetain_n();
                                      v42 = sub_264982814();
                                      if (v43)
                                      {
                                        v8 = v42;
                                        v2 = v43;
                                        while (1)
                                        {

                                          nullsub_1();
                                          *&v114 = v44;
                                          *(&v114 + 1) = v45;
                                          if (!v45)
                                          {
                                            break;
                                          }

                                          v14 = *(v3 + 56);
                                          if (v14 >> 62)
                                          {
                                            v46 = sub_264982A44();
                                            if (!v46)
                                            {
                                              goto LABEL_353;
                                            }
                                          }

                                          else
                                          {
                                            v46 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                            if (!v46)
                                            {
                                              goto LABEL_353;
                                            }
                                          }

                                          v2 = v46 - 1;
                                          if (__OFSUB__(v46, 1))
                                          {
                                            goto LABEL_354;
                                          }

                                          if ((v14 & 0xC000000000000001) != 0)
                                          {

                                            v47 = MEMORY[0x266745520](v2, v14);
                                          }

                                          else
                                          {
                                            if ((v2 & 0x8000000000000000) != 0)
                                            {
                                              goto LABEL_355;
                                            }

                                            if (v2 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                            {
                                              goto LABEL_356;
                                            }

                                            v47 = *(v14 + 8 * v2 + 32);
                                          }

                                          swift_beginAccess();
                                          v6 = *(v47 + 64);
                                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                                          *(v47 + 64) = v6;
                                          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                                          {
                                            v6 = sub_264971CB8(0, *(v6 + 16) + 1, 1, v6);
                                            *(v47 + 64) = v6;
                                          }

                                          v50 = *(v6 + 16);
                                          v49 = *(v6 + 24);
                                          v110 = v50 + 1;
                                          if (v50 >= v49 >> 1)
                                          {
                                            v6 = sub_264971CB8((v49 > 1), v110, 1, v6);
                                          }

                                          *&v118[24] = &type metadata for BRUIMathCharacter;
                                          *&v118[32] = &off_28763D170;
                                          *v118 = v114;
                                          *(v6 + 16) = v110;
                                          sub_264971E00(v118, v6 + 40 * v50 + 32);
                                          *(v47 + 64) = v6;
                                          swift_endAccess();

                                          v8 = sub_264982814();
                                          v2 = v51;
                                          if (!v51)
                                          {
                                            goto LABEL_226;
                                          }
                                        }

LABEL_394:
                                        __break(1u);
LABEL_395:
                                        __break(1u);
LABEL_396:
                                        __break(1u);
LABEL_397:
                                        __break(1u);
LABEL_398:
                                        __break(1u);
LABEL_399:
                                        __break(1u);
                                        return;
                                      }

LABEL_226:

                                      *(v3 + 42) = 0;
                                      goto LABEL_336;
                                    }
                                  }

                                  if (*(v3 + 42) != 1)
                                  {
                                    goto LABEL_228;
                                  }

                                  if (qword_27FF875E0 != -1)
                                  {
                                    swift_once();
                                  }

                                  if (*(qword_27FF875E8 + 16))
                                  {
                                    sub_26496A734(v14, v12);
                                    if (v52)
                                    {
                                      swift_bridgeObjectRetain_n();
                                      sub_264982814();
                                      if (v53)
                                      {
                                        v2 = v53;
                                        while (1)
                                        {

                                          nullsub_1();
                                          *&v115 = v54;
                                          *(&v115 + 1) = v55;
                                          if (!v55)
                                          {
                                            goto LABEL_396;
                                          }

                                          v14 = *(v3 + 56);
                                          if (v14 >> 62)
                                          {
                                            v56 = sub_264982A44();
                                            if (!v56)
                                            {
                                              goto LABEL_381;
                                            }
                                          }

                                          else
                                          {
                                            v56 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                            if (!v56)
                                            {
                                              goto LABEL_381;
                                            }
                                          }

                                          v2 = v56 - 1;
                                          if (__OFSUB__(v56, 1))
                                          {
                                            goto LABEL_382;
                                          }

                                          if ((v14 & 0xC000000000000001) != 0)
                                          {

                                            v57 = MEMORY[0x266745520](v2, v14);
                                          }

                                          else
                                          {
                                            if ((v2 & 0x8000000000000000) != 0)
                                            {
                                              goto LABEL_383;
                                            }

                                            if (v2 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                            {
                                              goto LABEL_384;
                                            }

                                            v57 = *(v14 + 8 * v2 + 32);
                                          }

                                          swift_beginAccess();
                                          v6 = *(v57 + 64);
                                          v58 = swift_isUniquelyReferenced_nonNull_native();
                                          *(v57 + 64) = v6;
                                          if ((v58 & 1) == 0)
                                          {
                                            v6 = sub_264971CB8(0, *(v6 + 16) + 1, 1, v6);
                                            *(v57 + 64) = v6;
                                          }

                                          v60 = *(v6 + 16);
                                          v59 = *(v6 + 24);
                                          v111 = v60 + 1;
                                          if (v60 >= v59 >> 1)
                                          {
                                            v6 = sub_264971CB8((v59 > 1), v111, 1, v6);
                                          }

                                          *&v118[24] = &type metadata for BRUIMathCharacter;
                                          *&v118[32] = &off_28763D170;
                                          *v118 = v115;
                                          *(v6 + 16) = v111;
                                          sub_264971E00(v118, v6 + 40 * v60 + 32);
                                          *(v57 + 64) = v6;
                                          swift_endAccess();

                                          sub_264982814();
                                          v2 = v61;
                                          if (!v61)
                                          {
                                            goto LABEL_226;
                                          }
                                        }
                                      }

                                      goto LABEL_226;
                                    }
                                  }

                                  if ((*(v3 + 42) & 1) == 0)
                                  {
LABEL_228:
                                    if (qword_27FF875F0 != -1)
                                    {
LABEL_390:
                                      swift_once();
                                    }

                                    if (*(qword_27FF875F8 + 16))
                                    {
                                      sub_26496A734(v14, v12);
                                      if (v63)
                                      {
                                        swift_bridgeObjectRetain_n();
                                        sub_264982814();
                                        if (v64)
                                        {
                                          v2 = v64;
                                          do
                                          {

                                            nullsub_1();
                                            *&v116 = v65;
                                            *(&v116 + 1) = v66;
                                            if (!v66)
                                            {
                                              goto LABEL_395;
                                            }

                                            v14 = *(v3 + 56);
                                            if (v14 >> 62)
                                            {
                                              v67 = sub_264982A44();
                                              if (!v67)
                                              {
                                                goto LABEL_377;
                                              }
                                            }

                                            else
                                            {
                                              v67 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                              if (!v67)
                                              {
                                                goto LABEL_377;
                                              }
                                            }

                                            v2 = v67 - 1;
                                            if (__OFSUB__(v67, 1))
                                            {
                                              goto LABEL_378;
                                            }

                                            if ((v14 & 0xC000000000000001) != 0)
                                            {

                                              v68 = MEMORY[0x266745520](v2, v14);
                                            }

                                            else
                                            {
                                              if ((v2 & 0x8000000000000000) != 0)
                                              {
                                                goto LABEL_379;
                                              }

                                              if (v2 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                              {
                                                goto LABEL_380;
                                              }

                                              v68 = *(v14 + 8 * v2 + 32);
                                            }

                                            swift_beginAccess();
                                            v6 = *(v68 + 64);
                                            v69 = swift_isUniquelyReferenced_nonNull_native();
                                            *(v68 + 64) = v6;
                                            if ((v69 & 1) == 0)
                                            {
                                              v6 = sub_264971CB8(0, *(v6 + 16) + 1, 1, v6);
                                              *(v68 + 64) = v6;
                                            }

                                            v71 = *(v6 + 16);
                                            v70 = *(v6 + 24);
                                            v112 = v71 + 1;
                                            if (v71 >= v70 >> 1)
                                            {
                                              v6 = sub_264971CB8((v70 > 1), v112, 1, v6);
                                            }

                                            *&v118[24] = &type metadata for BRUIMathCharacter;
                                            *&v118[32] = &off_28763D170;
                                            *v118 = v116;
                                            *(v6 + 16) = v112;
                                            sub_264971E00(v118, v6 + 40 * v71 + 32);
                                            *(v68 + 64) = v6;
                                            swift_endAccess();

                                            sub_264982814();
                                            v2 = v72;
                                          }

                                          while (v72);
                                        }

LABEL_291:

                                        goto LABEL_336;
                                      }
                                    }

                                    if ((*(v3 + 42) & 1) == 0)
                                    {
                                      if (qword_27FF87600 != -1)
                                      {
                                        swift_once();
                                      }

                                      if (*(qword_27FF87608 + 16))
                                      {
                                        sub_26496A734(v14, v12);
                                        if (v73)
                                        {
                                          swift_bridgeObjectRetain_n();
                                          sub_264982814();
                                          if (v74)
                                          {
                                            v2 = v74;
                                            while (1)
                                            {

                                              nullsub_1();
                                              *&v117 = v75;
                                              *(&v117 + 1) = v76;
                                              if (!v76)
                                              {
                                                goto LABEL_397;
                                              }

                                              v14 = *(v3 + 56);
                                              if (v14 >> 62)
                                              {
                                                v77 = sub_264982A44();
                                                if (!v77)
                                                {
LABEL_386:
                                                  __break(1u);
LABEL_387:
                                                  __break(1u);
LABEL_388:
                                                  __break(1u);
LABEL_389:
                                                  __break(1u);
                                                  goto LABEL_390;
                                                }
                                              }

                                              else
                                              {
                                                v77 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                                if (!v77)
                                                {
                                                  goto LABEL_386;
                                                }
                                              }

                                              v2 = v77 - 1;
                                              if (__OFSUB__(v77, 1))
                                              {
                                                goto LABEL_387;
                                              }

                                              if ((v14 & 0xC000000000000001) != 0)
                                              {

                                                v78 = MEMORY[0x266745520](v2, v14);
                                              }

                                              else
                                              {
                                                if ((v2 & 0x8000000000000000) != 0)
                                                {
                                                  goto LABEL_388;
                                                }

                                                if (v2 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                                {
                                                  goto LABEL_389;
                                                }

                                                v78 = *(v14 + 8 * v2 + 32);
                                              }

                                              swift_beginAccess();
                                              v6 = *(v78 + 64);
                                              v79 = swift_isUniquelyReferenced_nonNull_native();
                                              *(v78 + 64) = v6;
                                              if ((v79 & 1) == 0)
                                              {
                                                v6 = sub_264971CB8(0, *(v6 + 16) + 1, 1, v6);
                                                *(v78 + 64) = v6;
                                              }

                                              v81 = *(v6 + 16);
                                              v80 = *(v6 + 24);
                                              v113 = v81 + 1;
                                              if (v81 >= v80 >> 1)
                                              {
                                                v6 = sub_264971CB8((v80 > 1), v113, 1, v6);
                                              }

                                              *&v118[24] = &type metadata for BRUIMathCharacter;
                                              *&v118[32] = &off_28763D170;
                                              *v118 = v117;
                                              *(v6 + 16) = v113;
                                              sub_264971E00(v118, v6 + 40 * v81 + 32);
                                              *(v78 + 64) = v6;
                                              swift_endAccess();

                                              sub_264982814();
                                              v2 = v82;
                                              if (!v82)
                                              {
                                                goto LABEL_291;
                                              }
                                            }
                                          }

                                          goto LABEL_291;
                                        }
                                      }
                                    }
                                  }

LABEL_274:
                                  if (*(v3 + 41))
                                  {
                                    if (qword_27FF875C0 != -1)
                                    {
                                      swift_once();
                                    }

                                    v40 = &qword_27FF875C8;
                                    goto LABEL_280;
                                  }

                                  if (qword_27FF875B0 == -1)
                                  {
LABEL_279:
                                    v40 = &qword_27FF875B8;
LABEL_280:
                                    v83 = *v40;
                                    if (*(*v40 + 16))
                                    {

                                      v84 = sub_26496A734(v14, v12);
                                      if (v85)
                                      {
                                        v86 = v84;

                                        v87 = (*(v83 + 56) + 16 * v86);
                                        v89 = *v87;
                                        v88 = v87[1];
                                        swift_bridgeObjectRetain_n();

                                        sub_2649766D8(v89, v88, v3);

                                        if (*(v3 + 40) == 2)
                                        {
                                          swift_beginAccess();
                                          sub_264976634();
                                          v90 = *(*(v3 + 48) + 16);
                                          sub_264976680(v90);
                                          *&v118[24] = &type metadata for BRUIMathCharacter;
                                          *&v118[32] = &off_28763D170;
                                          *v118 = v89;
                                          *&v118[8] = v88;
                                          v91 = *(v3 + 48);
                                          *(v91 + 16) = v90 + 1;
                                          sub_264971E00(v118, v91 + 40 * v90 + 32);
                                          v62 = swift_endAccess();
                                        }

                                        else
                                        {
                                        }

                                        if (!*(v3 + 40))
                                        {
                                          *(v3 + 40) = 3;
                                        }

                                        v96 = 0;
                                        if (*(v3 + 41) == 1)
                                        {
                                          *(v3 + 41) = 0;
                                        }

                                        goto LABEL_335;
                                      }
                                    }

                                    if (*(v3 + 40) == 2)
                                    {

                                      if (v14 == v2 - 0x100000 && v12 == 0xA300000000000000)
                                      {
                                      }

                                      else
                                      {
                                        v97 = sub_264982AA4();

                                        if ((v97 & 1) == 0)
                                        {
                                          sub_264974834();
                                          swift_beginAccess();
                                          *(v3 + 48) = MEMORY[0x277D84F90];

                                          *(v3 + 40) = 1;
                                          return;
                                        }
                                      }

                                      swift_beginAccess();
                                      v2 = *(*(v3 + 48) + 16);
                                      if (v2)
                                      {
                                        v8 = &qword_27FF86D68;
                                        v6 = 40;
                                        do
                                        {
                                          v12 = *(v3 + 56);
                                          if (v12 >> 62)
                                          {
                                            v98 = sub_264982A44();
                                            if (!v98)
                                            {
                                              goto LABEL_357;
                                            }
                                          }

                                          else
                                          {
                                            v98 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                            if (!v98)
                                            {
                                              goto LABEL_357;
                                            }
                                          }

                                          v14 = v98 - 1;
                                          if (__OFSUB__(v98, 1))
                                          {
                                            goto LABEL_358;
                                          }

                                          if ((v12 & 0xC000000000000001) != 0)
                                          {

                                            v99 = MEMORY[0x266745520](v14, v12);
                                          }

                                          else
                                          {
                                            if ((v14 & 0x8000000000000000) != 0)
                                            {
                                              goto LABEL_359;
                                            }

                                            if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                            {
                                              goto LABEL_360;
                                            }

                                            v99 = *(v12 + 8 * v14 + 32);
                                          }

                                          swift_beginAccess();
                                          v12 = *(v99 + 64);

                                          v14 = *(v12 + 16);

                                          if (v14)
                                          {
                                            v14 = *(v3 + 56);
                                            if (v14 >> 62)
                                            {
                                              v100 = sub_264982A44();
                                              if (!v100)
                                              {
                                                goto LABEL_367;
                                              }
                                            }

                                            else
                                            {
                                              v100 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                              if (!v100)
                                              {
                                                goto LABEL_367;
                                              }
                                            }

                                            v12 = v100 - 1;
                                            if (__OFSUB__(v100, 1))
                                            {
                                              goto LABEL_368;
                                            }

                                            if ((v14 & 0xC000000000000001) != 0)
                                            {

                                              v101 = MEMORY[0x266745520](v12, v14);
                                            }

                                            else
                                            {
                                              if ((v12 & 0x8000000000000000) != 0)
                                              {
                                                goto LABEL_369;
                                              }

                                              if (v12 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                              {
                                                goto LABEL_370;
                                              }

                                              v101 = *(v14 + 8 * v12 + 32);
                                            }

                                            swift_beginAccess();
                                            v14 = *(v101 + 64);
                                            if (*(v14 + 16))
                                            {
                                              v102 = swift_isUniquelyReferenced_nonNull_native();
                                              *(v101 + 64) = v14;
                                              if (v102)
                                              {
                                                v103 = *(v14 + 16);
                                                if (!v103)
                                                {
                                                  goto LABEL_324;
                                                }
                                              }

                                              else
                                              {
                                                v14 = sub_2649766C4(v14);
                                                v103 = *(v14 + 16);
                                                if (!v103)
                                                {
LABEL_324:
                                                  __break(1u);
                                                  goto LABEL_325;
                                                }
                                              }

                                              *(v14 + 16) = v103 - 1;
                                              *(v101 + 64) = v14;
                                              sub_264971E00((v14 + 40 * v103 - 8), v118);
                                            }

                                            else
                                            {
                                              memset(v118, 0, sizeof(v118));
                                            }

                                            sub_264976E40(v118, &qword_27FF86D68, &qword_26498D000);
                                            swift_endAccess();
                                          }

                                          --v2;
                                        }

                                        while (v2);
                                      }

                                      nullsub_1();
                                      *&v118[24] = &type metadata for BRUILinearMathString;
                                      *&v118[32] = &off_28763D190;
                                      *v118 = v109;
                                      v119 = 1;
                                      sub_264974CB4(v118);
                                      sub_2649768C8(v118);
                                      *(v3 + 48) = MEMORY[0x277D84F90];

LABEL_336:
                                      if ((v5)(v62))
                                      {
                                        return;
                                      }

                                      goto LABEL_15;
                                    }

                                    sub_264974834();
                                    swift_beginAccess();
                                    *(v3 + 48) = MEMORY[0x277D84F90];

                                    *(v3 + 40) = 3;
                                    nullsub_1();
                                    if (v93)
                                    {
                                      v94 = v92;
                                      v95 = v93;

                                      sub_2649766D8(v94, v95, v3);

                                      v96 = 1;
LABEL_335:
                                      *(v3 + 42) = v96;
                                      goto LABEL_336;
                                    }

                                    goto LABEL_398;
                                  }

LABEL_392:
                                  swift_once();
                                  goto LABEL_279;
                                }

LABEL_385:
                                swift_once();
                                goto LABEL_181;
                              }

LABEL_373:
                              __break(1u);
                              goto LABEL_374;
                            }

LABEL_372:
                            __break(1u);
                            goto LABEL_373;
                          }

                          __break(1u);
LABEL_367:
                          __break(1u);
LABEL_368:
                          __break(1u);
LABEL_369:
                          __break(1u);
LABEL_370:
                          __break(1u);
                          goto LABEL_371;
                        }

LABEL_364:

                        v6 = MEMORY[0x266745520](v6, v8);

                        goto LABEL_140;
                      }

LABEL_363:
                      __break(1u);
                      goto LABEL_364;
                    }

LABEL_362:
                    __break(1u);
                    goto LABEL_363;
                  }

                  v30 = 3;
LABEL_163:
                  *v118 = v30;
                  memset(&v118[8], 0, 32);
                  goto LABEL_164;
                }

                __break(1u);
LABEL_353:
                __break(1u);
LABEL_354:
                __break(1u);
LABEL_355:
                __break(1u);
LABEL_356:
                __break(1u);
LABEL_357:
                __break(1u);
LABEL_358:
                __break(1u);
LABEL_359:
                __break(1u);
LABEL_360:
                __break(1u);
                goto LABEL_361;
              }

LABEL_350:

              v6 = MEMORY[0x266745520](v6, v8);

              goto LABEL_99;
            }

LABEL_349:
            __break(1u);
            goto LABEL_350;
          }

LABEL_348:
          __break(1u);
          goto LABEL_349;
        }

LABEL_342:
        __break(1u);
        goto LABEL_343;
      }
    }

    else
    {
      v26 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
        goto LABEL_77;
      }
    }

    __break(1u);
    goto LABEL_342;
  }

  *v118 = 4;
  memset(&v118[8], 0, 32);
  v119 = 4;
  sub_264974CB4(v118);
  sub_2649768C8(v118);
LABEL_12:
  sub_264974834();
  swift_beginAccess();
  *(v3 + 48) = MEMORY[0x277D84F90];

  if (((v5)(v11) & 1) == 0)
  {
    *(v3 + 32) = sub_2649827E4();
  }

  if ((v5() & 1) == 0)
  {
    goto LABEL_15;
  }
}

unint64_t sub_2649747A0(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_264982854();
  }

  __break(1u);
  return result;
}

uint64_t sub_2649747EC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_264982844();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264974834()
{
  swift_beginAccess();
  v2 = *(v0 + 56);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v3 = sub_264982A44();
  if (!v3)
  {
    goto LABEL_52;
  }

LABEL_3:
  v1 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if ((v2 & 0xC000000000000001) == 0)
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v1 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v1 = *(v2 + 8 * v1 + 32);

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_54:

  v1 = MEMORY[0x266745520](v1, v2);

LABEL_8:
  sub_264976890(v1 + 16, &v15);

  if (v18 == 1)
  {
    __swift_destroy_boxed_opaque_existential_0(&v15);
    return sub_264974D98();
  }

  sub_2649768C8(&v15);
  v2 = *(v0 + 56);
  if (!(v2 >> 62))
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_13;
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_57:
  v5 = sub_264982A44();
  if (!v5)
  {
    goto LABEL_58;
  }

LABEL_13:
  v1 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if ((v2 & 0xC000000000000001) == 0)
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v1 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v1 = *(v2 + 8 * v1 + 32);

      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_63;
  }

LABEL_60:

  v1 = MEMORY[0x266745520](v1, v2);

LABEL_18:
  sub_264976890(v1 + 16, &v15);

  if (v18 != 4 || v15 != 2 || (v6 = vorrq_s8(v16, v17), *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL))))
  {
    sub_2649768C8(&v15);
    goto LABEL_31;
  }

  sub_2649768C8(&v15);
  v2 = *(v0 + 56);
  if (v2 >> 62)
  {
    goto LABEL_69;
  }

  v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_70;
  }

LABEL_23:
  v1 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
    while (1)
    {
      __break(1u);
LABEL_72:

      v8 = MEMORY[0x266745520](v1, v2);

LABEL_28:
      swift_beginAccess();
      v1 = *(v8 + 64);

      v9 = *(v1 + 16);

      if (v9)
      {
        return sub_264974D98();
      }

LABEL_31:
      v2 = *(v0 + 56);
      if (v2 >> 62)
      {
LABEL_63:
        v10 = sub_264982A44();
        if (!v10)
        {
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:

          v1 = MEMORY[0x266745520](v1, v2);

LABEL_38:
          sub_264976890(v1 + 16, &v15);

          if (v18 != 4)
          {
            return sub_2649768C8(&v15);
          }

          if (v15 != 4)
          {
            return sub_2649768C8(&v15);
          }

          v11 = vorrq_s8(v16, v17);
          if (vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)))
          {
            return sub_2649768C8(&v15);
          }

          sub_2649768C8(&v15);
          v2 = *(v0 + 56);
          if (v2 >> 62)
          {
            goto LABEL_75;
          }

          result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!result)
          {
            goto LABEL_76;
          }

          goto LABEL_43;
        }
      }

      else
      {
        v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v10)
        {
          goto LABEL_64;
        }
      }

      v1 = v10 - 1;
      if (__OFSUB__(v10, 1))
      {
        goto LABEL_65;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        goto LABEL_66;
      }

      if ((v1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v1 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v1 = *(v2 + 8 * v1 + 32);

        goto LABEL_38;
      }

      __break(1u);
LABEL_69:
      v7 = sub_264982A44();
      if (v7)
      {
        goto LABEL_23;
      }

LABEL_70:
      __break(1u);
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_72;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v2 + 8 * v1 + 32);

    goto LABEL_28;
  }

  __break(1u);
LABEL_75:
  result = sub_264982A44();
  if (!result)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_43:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if ((v2 & 0xC000000000000001) == 0)
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v1 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v2 + 8 * v1 + 32);

      goto LABEL_48;
    }

    __break(1u);
    return result;
  }

LABEL_78:

  v12 = MEMORY[0x266745520](v1, v2);

LABEL_48:
  swift_beginAccess();
  v13 = *(v12 + 64);

  v14 = *(v13 + 16);

  if (v14)
  {
    return sub_264974D98();
  }

  return result;
}

uint64_t sub_264974CB4(uint64_t a1)
{
  sub_264976890(a1, &v6);
  type metadata accessor for BRUIUEBMathParser.Element();
  v2 = swift_allocObject();
  v3 = v7[0];
  *(v2 + 16) = v6;
  *(v2 + 32) = v3;
  *(v2 + 41) = *(v7 + 9);
  *(v2 + 64) = MEMORY[0x277D84F90];
  swift_beginAccess();

  MEMORY[0x266745370](v4);
  if (*((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_264982884();
  }

  sub_264982894();
  swift_endAccess();
}

uint64_t sub_264974D98()
{
  v2 = v0;
  swift_beginAccess();
  v3 = v0[7];
  if (v3 >> 62)
  {
    result = sub_264982A44();
    if (result < 2)
    {
      return result;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 2)
    {
      return result;
    }
  }

  swift_beginAccess();
  v5 = v0[7];
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (!sub_264982A44())
  {
    goto LABEL_87;
  }

LABEL_5:
  v0 += 7;
  v6 = sub_2649720B0();
  if (v6)
  {
    goto LABEL_9;
  }

  v7 = *(v2 + 56);
  if (v7 >> 62)
  {
    goto LABEL_95;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    v24 = sub_264982A44();
    if (v24)
    {
LABEL_39:
      v2 = v24 - 1;
      if (!__OFSUB__(v24, 1))
      {
        if ((v1 & 0xC000000000000001) == 0)
        {
          if ((v2 & 0x8000000000000000) == 0)
          {
            if (v2 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v2 = *(v1 + 8 * v2 + 32);

              goto LABEL_44;
            }

            __break(1u);
            goto LABEL_110;
          }

          __break(1u);
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

LABEL_104:

        v2 = MEMORY[0x266745520](v2, v1);

LABEL_44:
        *(&v41 + 1) = &type metadata for BRUILinearMathString;
        v42 = &off_28763D190;
        *&v40 = v0;
        sub_26497228C(&v52, v39);
        sub_26497F604(&v40, v39, &v43);
        swift_beginAccess();
        v0 = *(v2 + 64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 64) = v0;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_45:
          v27 = v0[2];
          v26 = v0[3];
          if (v27 >= v26 >> 1)
          {
            v0 = sub_264971CB8((v26 > 1), v27 + 1, 1, v0);
            *(v2 + 64) = v0;
          }

          *(&v41 + 1) = &type metadata for BRUIRadicalMathString;
          v42 = &off_28763D210;
          *&v40 = swift_allocObject();
          sub_2649722F0(&v43, v40 + 16);
          v0[2] = v27 + 1;
          sub_264971E00(&v40, &v0[5 * v27 + 4]);
          sub_26497234C(&v43);
          *(v2 + 64) = v0;
          swift_endAccess();

          __swift_destroy_boxed_opaque_existential_0(&v52);
        }

LABEL_108:
        v0 = sub_264971CB8(0, v0[2] + 1, 1, v0);
        *(v2 + 64) = v0;
        goto LABEL_45;
      }

      goto LABEL_102;
    }

LABEL_99:
    __break(1u);
LABEL_100:
    v17 = sub_264982A44();
    if (!v17)
    {
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

LABEL_26:
    v2 = v17 - 1;
    if (!__OFSUB__(v17, 1))
    {
      if ((v1 & 0xC000000000000001) != 0)
      {

        v18 = MEMORY[0x266745520](v2, v1);
      }

      else
      {
        if ((v2 & 0x8000000000000000) != 0)
        {
          goto LABEL_107;
        }

        if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

        v18 = *(v1 + 8 * v2 + 32);
      }

      swift_beginAccess();
      v19 = *(v18 + 64);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      *(v18 + 64) = v19;
      if ((v20 & 1) == 0)
      {
        v19 = sub_264971CB8(0, v19[2] + 1, 1, v19);
        *(v18 + 64) = v19;
      }

      v22 = v19[2];
      v21 = v19[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v38 = sub_264971CB8((v21 > 1), v22 + 1, 1, v19);
        v23 = v22 + 1;
        v19 = v38;
      }

      v44 = &type metadata for BRUILinearMathString;
      v45 = &off_28763D190;
      *&v43 = v0;
      v19[2] = v23;
      sub_264971E00(&v43, &v19[5 * v22 + 4]);
      *(v18 + 64) = v19;
      goto LABEL_36;
    }

    goto LABEL_103;
  }

  while (1)
  {
    v6 = sub_264972020(v10);
LABEL_9:
    v11 = v6;
    swift_endAccess();
    swift_beginAccess();

    nullsub_1();
    v0 = v12;
    sub_264976890(v11 + 16, &v47);
    if (v51 > 2u)
    {
      if (v51 != 3)
      {
        if (v49 | v50 | v47 | v48 | *(&v47 + 1))
        {
          v28 = v49 | v50 | v48 | *(&v47 + 1);
          if (v47 != 1 || v28)
          {
            if (v47 == 2 && !v28)
            {
              v1 = *(v2 + 56);
              if (!(v1 >> 62))
              {
                v30 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v30)
                {
LABEL_112:
                  __break(1u);
                  goto LABEL_113;
                }

                goto LABEL_61;
              }

LABEL_111:
              v30 = sub_264982A44();
              if (!v30)
              {
                goto LABEL_112;
              }

LABEL_61:
              v2 = v30 - 1;
              if (__OFSUB__(v30, 1))
              {
LABEL_113:
                __break(1u);
                goto LABEL_114;
              }

              if ((v1 & 0xC000000000000001) != 0)
              {
LABEL_114:

                v2 = MEMORY[0x266745520](v2, v1);

LABEL_66:
                v53 = &type metadata for BRUILinearMathString;
                v54 = &off_28763D190;
                *&v52 = v0;
                sub_26497FA30(&v43, &v52);
                swift_beginAccess();
                v0 = *(v2 + 64);
                v31 = swift_isUniquelyReferenced_nonNull_native();
                *(v2 + 64) = v0;
                if (v31)
                {
LABEL_67:
                  v33 = v0[2];
                  v32 = v0[3];
                  if (v33 >= v32 >> 1)
                  {
                    v0 = sub_264971CB8((v32 > 1), v33 + 1, 1, v0);
                    *(v2 + 64) = v0;
                  }

                  v53 = &type metadata for BRUISuperScriptMathString;
                  v54 = &off_28763D1D0;
                  *&v52 = swift_allocObject();
                  sub_2649723A0(&v43, v52 + 16);
                  v0[2] = v33 + 1;
                  sub_264971E00(&v52, &v0[5 * v33 + 4]);
                  sub_2649723FC(&v43);
                  goto LABEL_22;
                }

LABEL_116:
                v0 = sub_264971CB8(0, v0[2] + 1, 1, v0);
                *(v2 + 64) = v0;
                goto LABEL_67;
              }

              if ((v2 & 0x8000000000000000) != 0)
              {
                __break(1u);
                goto LABEL_116;
              }

              if (v2 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v2 = *(v1 + 8 * v2 + 32);

                goto LABEL_66;
              }

              __break(1u);
              goto LABEL_118;
            }

            if (v47 == 3 && !v28)
            {
              v1 = *(v2 + 56);
              if (!(v1 >> 62))
              {
                result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!result)
                {
LABEL_119:
                  __break(1u);
                  goto LABEL_120;
                }

LABEL_74:
                v2 = result - 1;
                if (!__OFSUB__(result, 1))
                {
                  if ((v1 & 0xC000000000000001) == 0)
                  {
                    if ((v2 & 0x8000000000000000) != 0)
                    {
                      __break(1u);
                      goto LABEL_123;
                    }

                    if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      return result;
                    }

                    v2 = *(v1 + 8 * v2 + 32);

LABEL_79:
                    v53 = &type metadata for BRUILinearMathString;
                    v54 = &off_28763D190;
                    *&v52 = v0;
                    v42 = 0;
                    v40 = 0u;
                    v41 = 0u;
                    sub_26497F604(&v52, &v40, &v43);
                    swift_beginAccess();
                    v0 = *(v2 + 64);
                    v34 = swift_isUniquelyReferenced_nonNull_native();
                    *(v2 + 64) = v0;
                    if (v34)
                    {
LABEL_80:
                      v36 = v0[2];
                      v35 = v0[3];
                      if (v36 >= v35 >> 1)
                      {
                        v0 = sub_264971CB8((v35 > 1), v36 + 1, 1, v0);
                        *(v2 + 64) = v0;
                      }

                      v53 = &type metadata for BRUIRadicalMathString;
                      v54 = &off_28763D210;
                      *&v52 = swift_allocObject();
                      sub_2649722F0(&v43, v52 + 16);
                      v0[2] = v36 + 1;
                      sub_264971E00(&v52, &v0[5 * v36 + 4]);
                      sub_26497234C(&v43);
                      goto LABEL_22;
                    }

LABEL_123:
                    v0 = sub_264971CB8(0, v0[2] + 1, 1, v0);
                    *(v2 + 64) = v0;
                    goto LABEL_80;
                  }

LABEL_121:

                  v2 = MEMORY[0x266745520](v2, v1);

                  goto LABEL_79;
                }

LABEL_120:
                __break(1u);
                goto LABEL_121;
              }

LABEL_118:
              result = sub_264982A44();
              if (!result)
              {
                goto LABEL_119;
              }

              goto LABEL_74;
            }

            v44 = &type metadata for BRUILinearMathString;
            v45 = &off_28763D190;
            *&v43 = v0;
            v29 = 2;
          }

          else
          {
            v44 = &type metadata for BRUILinearMathString;
            v45 = &off_28763D190;
            *&v43 = v0;
            v29 = 1;
          }

          v46 = v29;
        }

        else
        {
          v44 = &type metadata for BRUILinearMathString;
          v45 = &off_28763D190;
          *&v43 = v0;
          v46 = 0;
        }

        sub_264974CB4(&v43);

        return sub_2649768C8(&v43);
      }

      v1 = *(v2 + 56);
      if (v1 >> 62)
      {
        goto LABEL_100;
      }

      v17 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_101;
      }

      goto LABEL_26;
    }

    if (v51 >= 2u)
    {
      sub_264971E00(&v47, &v52);
      v1 = *(v2 + 56);
      if (v1 >> 62)
      {
        goto LABEL_98;
      }

      v24 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
        goto LABEL_39;
      }

      goto LABEL_99;
    }

    sub_264971E00(&v47, &v52);
    v1 = *(v2 + 56);
    if (v1 >> 62)
    {
LABEL_88:
      v13 = sub_264982A44();
      if (!v13)
      {
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:

        v2 = MEMORY[0x266745520](v2, v1);

LABEL_18:
        v49 = &type metadata for BRUILinearMathString;
        v50 = &off_28763D190;
        *&v47 = v0;
        sub_26497EDD4(&v52, &v47, &v43);
        swift_beginAccess();
        v0 = *(v2 + 64);
        v14 = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 64) = v0;
        if ((v14 & 1) == 0)
        {
          goto LABEL_93;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v13 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_89;
      }
    }

    v2 = v13 - 1;
    if (__OFSUB__(v13, 1))
    {
      goto LABEL_90;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      goto LABEL_91;
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v2 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v1 + 8 * v2 + 32);

      goto LABEL_18;
    }

    __break(1u);
LABEL_95:
    v37 = sub_264982A44();
    v9 = __OFSUB__(v37, 1);
    v10 = v37 - 1;
    if (v9)
    {
      goto LABEL_97;
    }
  }

  __break(1u);
LABEL_93:
  v0 = sub_264971CB8(0, v0[2] + 1, 1, v0);
  *(v2 + 64) = v0;
LABEL_19:
  v16 = v0[2];
  v15 = v0[3];
  if (v16 >= v15 >> 1)
  {
    v0 = sub_264971CB8((v15 > 1), v16 + 1, 1, v0);
    *(v2 + 64) = v0;
  }

  v49 = &type metadata for BRUIFractionMathString;
  v50 = &off_28763D1B0;
  *&v47 = swift_allocObject();
  sub_264972450(&v43, v47 + 16);
  v0[2] = v16 + 1;
  sub_264971E00(&v47, &v0[5 * v16 + 4]);
  sub_2649724AC(&v43);
LABEL_22:
  *(v2 + 64) = v0;
LABEL_36:
  swift_endAccess();
}

void *sub_2649757EC()
{

  return v0;
}

uint64_t sub_26497581C()
{

  return swift_deallocClassInstance();
}

void sub_264975864()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D48, &qword_26498CC38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26498CC60;
  *(inited + 32) = 8495330;
  *(inited + 40) = 0xA300000000000000;
  nullsub_1();
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 64) = 8626402;
  *(inited + 72) = 0xA300000000000000;
  nullsub_1();
  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(inited + 80) = v3;
  *(inited + 88) = v4;
  *(inited + 96) = 9019618;
  *(inited + 104) = 0xA300000000000000;
  nullsub_1();
  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(inited + 112) = v5;
  *(inited + 120) = v6;
  *(inited + 128) = 10068194;
  *(inited + 136) = 0xA300000000000000;
  nullsub_1();
  if (!v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(inited + 144) = v7;
  *(inited + 152) = v8;
  *(inited + 160) = 9543906;
  *(inited + 168) = 0xA300000000000000;
  nullsub_1();
  if (!v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(inited + 176) = v9;
  *(inited + 184) = v10;
  *(inited + 192) = 9150690;
  *(inited + 200) = 0xA300000000000000;
  nullsub_1();
  if (!v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(inited + 208) = v11;
  *(inited + 216) = v12;
  *(inited + 224) = 10199266;
  *(inited + 232) = 0xA300000000000000;
  nullsub_1();
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(inited + 240) = v13;
  *(inited + 248) = v14;
  *(inited + 256) = 9674978;
  *(inited + 264) = 0xA300000000000000;
  nullsub_1();
  if (!v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(inited + 272) = v15;
  *(inited + 280) = v16;
  *(inited + 288) = 9085154;
  *(inited + 296) = 0xA300000000000000;
  nullsub_1();
  if (!v18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(inited + 304) = v17;
  *(inited + 312) = v18;
  *(inited + 320) = 10133730;
  *(inited + 328) = 0xA300000000000000;
  nullsub_1();
  if (!v20)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(inited + 336) = v19;
  *(inited + 344) = v20;
  *(inited + 352) = 8560866;
  *(inited + 360) = 0xA300000000000000;
  nullsub_1();
  if (!v22)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(inited + 368) = v21;
  *(inited + 376) = v22;
  *(inited + 384) = 11706594;
  *(inited + 392) = 0xA300000000000000;
  nullsub_1();
  if (v24)
  {
    *(inited + 400) = v23;
    *(inited + 408) = v24;
    v25 = sub_264972178(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D50, &qword_26498CC40);
    swift_arrayDestroy();
    qword_27FF875A8 = v25;
    return;
  }

LABEL_25:
  __break(1u);
}

void sub_264975A94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D48, &qword_26498CC38);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26498CC70;
  *(v0 + 32) = 10789090;
  *(v0 + 40) = 0xA300000000000000;
  nullsub_1();
  if (!v2)
  {
    __break(1u);
    goto LABEL_35;
  }

  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 64) = 11968738;
  *(v0 + 72) = 0xA300000000000000;
  nullsub_1();
  if (!v4)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  *(v0 + 96) = 10920162;
  *(v0 + 104) = 0xA300000000000000;
  v5 = sub_26497D994(0x73656D6974, 0xE500000000000000);
  if (!v6)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v0 + 112) = v5;
  *(v0 + 120) = v6;
  *(v0 + 128) = 11706594;
  *(v0 + 136) = 0xA300000000000000;
  v7 = sub_26497D994(7630692, 0xE300000000000000);
  if (!v8)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v0 + 144) = v7;
  *(v0 + 152) = v8;
  *(v0 + 160) = 9216226;
  *(v0 + 168) = 0xA300000000000000;
  v9 = sub_26497D994(7760228, 0xE300000000000000);
  if (!v10)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *(v0 + 176) = v9;
  *(v0 + 184) = v10;
  *(v0 + 192) = 9871586;
  *(v0 + 200) = 0xA300000000000000;
  nullsub_1();
  if (!v12)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v0 + 208) = v11;
  *(v0 + 216) = v12;
  *(v0 + 224) = 8495330;
  *(v0 + 232) = 0xA300000000000000;
  nullsub_1();
  if (!v14)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  *(v0 + 240) = v13;
  *(v0 + 248) = v14;
  *(v0 + 256) = 8626402;
  *(v0 + 264) = 0xA300000000000000;
  nullsub_1();
  if (!v16)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *(v0 + 272) = v15;
  *(v0 + 280) = v16;
  *(v0 + 288) = 9019618;
  *(v0 + 296) = 0xA300000000000000;
  nullsub_1();
  if (!v18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *(v0 + 304) = v17;
  *(v0 + 312) = v18;
  *(v0 + 320) = 10068194;
  *(v0 + 328) = 0xA300000000000000;
  nullsub_1();
  if (!v20)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(v0 + 336) = v19;
  *(v0 + 344) = v20;
  *(v0 + 352) = 9543906;
  *(v0 + 360) = 0xA300000000000000;
  nullsub_1();
  if (!v22)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(v0 + 368) = v21;
  *(v0 + 376) = v22;
  *(v0 + 384) = 9150690;
  *(v0 + 392) = 0xA300000000000000;
  nullsub_1();
  if (!v24)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(v0 + 400) = v23;
  *(v0 + 408) = v24;
  *(v0 + 416) = 10199266;
  *(v0 + 424) = 0xA300000000000000;
  nullsub_1();
  if (!v26)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *(v0 + 432) = v25;
  *(v0 + 440) = v26;
  *(v0 + 448) = 9674978;
  *(v0 + 456) = 0xA300000000000000;
  nullsub_1();
  if (!v28)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  *(v0 + 464) = v27;
  *(v0 + 472) = v28;
  *(v0 + 480) = 9085154;
  *(v0 + 488) = 0xA300000000000000;
  nullsub_1();
  if (!v30)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  *(v0 + 496) = v29;
  *(v0 + 504) = v30;
  *(v0 + 512) = 10133730;
  *(v0 + 520) = 0xA300000000000000;
  nullsub_1();
  if (!v32)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  *(v0 + 528) = v31;
  *(v0 + 536) = v32;
  *(v0 + 544) = 8757474;
  *(v0 + 552) = 0xA300000000000000;
  nullsub_1();
  if (!v34)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  *(v0 + 560) = v33;
  *(v0 + 568) = v34;
  *(v0 + 576) = 8888546;
  *(v0 + 584) = 0xA300000000000000;
  nullsub_1();
  if (!v36)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  *(v0 + 592) = v35;
  *(v0 + 600) = v36;
  *(v0 + 608) = 9281762;
  *(v0 + 616) = 0xA300000000000000;
  nullsub_1();
  if (!v38)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  *(v0 + 624) = v37;
  *(v0 + 632) = v38;
  *(v0 + 640) = 10330338;
  *(v0 + 648) = 0xA300000000000000;
  nullsub_1();
  if (!v40)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  *(v0 + 656) = v39;
  *(v0 + 664) = v40;
  *(v0 + 672) = 9806050;
  *(v0 + 680) = 0xA300000000000000;
  nullsub_1();
  if (!v42)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  *(v0 + 688) = v41;
  *(v0 + 696) = v42;
  *(v0 + 704) = 9412834;
  *(v0 + 712) = 0xA300000000000000;
  nullsub_1();
  if (!v44)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  *(v0 + 720) = v43;
  *(v0 + 728) = v44;
  *(v0 + 736) = 10461410;
  *(v0 + 744) = 0xA300000000000000;
  nullsub_1();
  if (!v46)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  *(v0 + 752) = v45;
  *(v0 + 760) = v46;
  *(v0 + 768) = 9937122;
  *(v0 + 776) = 0xA300000000000000;
  nullsub_1();
  if (!v48)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  *(v0 + 784) = v47;
  *(v0 + 792) = v48;
  *(v0 + 800) = 9347298;
  *(v0 + 808) = 0xA300000000000000;
  nullsub_1();
  if (!v50)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  *(v0 + 816) = v49;
  *(v0 + 824) = v50;
  *(v0 + 832) = 10395874;
  *(v0 + 840) = 0xA300000000000000;
  nullsub_1();
  if (!v52)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  *(v0 + 848) = v51;
  *(v0 + 856) = v52;
  *(v0 + 864) = 10854626;
  *(v0 + 872) = 0xA300000000000000;
  nullsub_1();
  if (!v54)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  *(v0 + 880) = v53;
  *(v0 + 888) = v54;
  *(v0 + 896) = 10985698;
  *(v0 + 904) = 0xA300000000000000;
  nullsub_1();
  if (!v56)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  *(v0 + 912) = v55;
  *(v0 + 920) = v56;
  *(v0 + 928) = 12230882;
  *(v0 + 936) = 0xA300000000000000;
  nullsub_1();
  if (!v58)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  *(v0 + 944) = v57;
  *(v0 + 952) = v58;
  *(v0 + 960) = 11378914;
  *(v0 + 968) = 0xA300000000000000;
  nullsub_1();
  if (!v60)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  *(v0 + 976) = v59;
  *(v0 + 984) = v60;
  *(v0 + 992) = 12427490;
  *(v0 + 1000) = 0xA300000000000000;
  nullsub_1();
  if (!v62)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  *(v0 + 1008) = v61;
  *(v0 + 1016) = v62;
  *(v0 + 1024) = 11903202;
  *(v0 + 1032) = 0xA300000000000000;
  nullsub_1();
  if (v64)
  {
    *(v0 + 1040) = v63;
    *(v0 + 1048) = v64;
    v65 = sub_264972178(v0);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D50, &qword_26498CC40);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    qword_27FF875B8 = v65;
    return;
  }

LABEL_65:
  __break(1u);
}

void sub_264975FE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D48, &qword_26498CC38);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26498CC70;
  *(v0 + 32) = 10789090;
  *(v0 + 40) = 0xA300000000000000;
  nullsub_1();
  if (!v2)
  {
    __break(1u);
    goto LABEL_35;
  }

  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 64) = 11968738;
  *(v0 + 72) = 0xA300000000000000;
  nullsub_1();
  if (!v4)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  *(v0 + 96) = 10920162;
  *(v0 + 104) = 0xA300000000000000;
  v5 = sub_26497D994(0x73656D6974, 0xE500000000000000);
  if (!v6)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v0 + 112) = v5;
  *(v0 + 120) = v6;
  *(v0 + 128) = 11706594;
  *(v0 + 136) = 0xA300000000000000;
  v7 = sub_26497D994(7630692, 0xE300000000000000);
  if (!v8)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v0 + 144) = v7;
  *(v0 + 152) = v8;
  *(v0 + 160) = 9216226;
  *(v0 + 168) = 0xA300000000000000;
  v9 = sub_26497D994(7760228, 0xE300000000000000);
  if (!v10)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *(v0 + 176) = v9;
  *(v0 + 184) = v10;
  *(v0 + 192) = 9871586;
  *(v0 + 200) = 0xA300000000000000;
  nullsub_1();
  if (!v12)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v0 + 208) = v11;
  *(v0 + 216) = v12;
  *(v0 + 224) = 8495330;
  *(v0 + 232) = 0xA300000000000000;
  nullsub_1();
  if (!v14)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  *(v0 + 240) = v13;
  *(v0 + 248) = v14;
  *(v0 + 256) = 8626402;
  *(v0 + 264) = 0xA300000000000000;
  nullsub_1();
  if (!v16)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *(v0 + 272) = v15;
  *(v0 + 280) = v16;
  *(v0 + 288) = 9019618;
  *(v0 + 296) = 0xA300000000000000;
  nullsub_1();
  if (!v18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *(v0 + 304) = v17;
  *(v0 + 312) = v18;
  *(v0 + 320) = 10068194;
  *(v0 + 328) = 0xA300000000000000;
  nullsub_1();
  if (!v20)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(v0 + 336) = v19;
  *(v0 + 344) = v20;
  *(v0 + 352) = 9543906;
  *(v0 + 360) = 0xA300000000000000;
  nullsub_1();
  if (!v22)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(v0 + 368) = v21;
  *(v0 + 376) = v22;
  *(v0 + 384) = 9150690;
  *(v0 + 392) = 0xA300000000000000;
  nullsub_1();
  if (!v24)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(v0 + 400) = v23;
  *(v0 + 408) = v24;
  *(v0 + 416) = 10199266;
  *(v0 + 424) = 0xA300000000000000;
  nullsub_1();
  if (!v26)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *(v0 + 432) = v25;
  *(v0 + 440) = v26;
  *(v0 + 448) = 9674978;
  *(v0 + 456) = 0xA300000000000000;
  nullsub_1();
  if (!v28)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  *(v0 + 464) = v27;
  *(v0 + 472) = v28;
  *(v0 + 480) = 9085154;
  *(v0 + 488) = 0xA300000000000000;
  nullsub_1();
  if (!v30)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  *(v0 + 496) = v29;
  *(v0 + 504) = v30;
  *(v0 + 512) = 10133730;
  *(v0 + 520) = 0xA300000000000000;
  nullsub_1();
  if (!v32)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  *(v0 + 528) = v31;
  *(v0 + 536) = v32;
  *(v0 + 544) = 8757474;
  *(v0 + 552) = 0xA300000000000000;
  nullsub_1();
  if (!v34)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  *(v0 + 560) = v33;
  *(v0 + 568) = v34;
  *(v0 + 576) = 8888546;
  *(v0 + 584) = 0xA300000000000000;
  nullsub_1();
  if (!v36)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  *(v0 + 592) = v35;
  *(v0 + 600) = v36;
  *(v0 + 608) = 9281762;
  *(v0 + 616) = 0xA300000000000000;
  nullsub_1();
  if (!v38)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  *(v0 + 624) = v37;
  *(v0 + 632) = v38;
  *(v0 + 640) = 10330338;
  *(v0 + 648) = 0xA300000000000000;
  nullsub_1();
  if (!v40)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  *(v0 + 656) = v39;
  *(v0 + 664) = v40;
  *(v0 + 672) = 9806050;
  *(v0 + 680) = 0xA300000000000000;
  nullsub_1();
  if (!v42)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  *(v0 + 688) = v41;
  *(v0 + 696) = v42;
  *(v0 + 704) = 9412834;
  *(v0 + 712) = 0xA300000000000000;
  nullsub_1();
  if (!v44)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  *(v0 + 720) = v43;
  *(v0 + 728) = v44;
  *(v0 + 736) = 10461410;
  *(v0 + 744) = 0xA300000000000000;
  nullsub_1();
  if (!v46)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  *(v0 + 752) = v45;
  *(v0 + 760) = v46;
  *(v0 + 768) = 9937122;
  *(v0 + 776) = 0xA300000000000000;
  nullsub_1();
  if (!v48)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  *(v0 + 784) = v47;
  *(v0 + 792) = v48;
  *(v0 + 800) = 9347298;
  *(v0 + 808) = 0xA300000000000000;
  nullsub_1();
  if (!v50)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  *(v0 + 816) = v49;
  *(v0 + 824) = v50;
  *(v0 + 832) = 10395874;
  *(v0 + 840) = 0xA300000000000000;
  nullsub_1();
  if (!v52)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  *(v0 + 848) = v51;
  *(v0 + 856) = v52;
  *(v0 + 864) = 10854626;
  *(v0 + 872) = 0xA300000000000000;
  nullsub_1();
  if (!v54)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  *(v0 + 880) = v53;
  *(v0 + 888) = v54;
  *(v0 + 896) = 10985698;
  *(v0 + 904) = 0xA300000000000000;
  nullsub_1();
  if (!v56)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  *(v0 + 912) = v55;
  *(v0 + 920) = v56;
  *(v0 + 928) = 12230882;
  *(v0 + 936) = 0xA300000000000000;
  nullsub_1();
  if (!v58)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  *(v0 + 944) = v57;
  *(v0 + 952) = v58;
  *(v0 + 960) = 11378914;
  *(v0 + 968) = 0xA300000000000000;
  nullsub_1();
  if (!v60)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  *(v0 + 976) = v59;
  *(v0 + 984) = v60;
  *(v0 + 992) = 12427490;
  *(v0 + 1000) = 0xA300000000000000;
  nullsub_1();
  if (!v62)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  *(v0 + 1008) = v61;
  *(v0 + 1016) = v62;
  *(v0 + 1024) = 11903202;
  *(v0 + 1032) = 0xA300000000000000;
  nullsub_1();
  if (v64)
  {
    *(v0 + 1040) = v63;
    *(v0 + 1048) = v64;
    v65 = sub_264972178(v0);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D50, &qword_26498CC40);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    qword_27FF875C8 = v65;
    return;
  }

LABEL_65:
  __break(1u);
}

uint64_t sub_264976580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = sub_264976D2C(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D70, &qword_26498CEA0);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

uint64_t sub_2649765E4()
{
  v0 = sub_264976D2C(&unk_28763CCB8);
  result = sub_264976E40(&unk_28763CCD8, &qword_27FF86D70, &qword_26498CEA0);
  qword_27FF87608 = v0;
  return result;
}

void *sub_264976634()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_264971CB8(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_264976680(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_264971CB8((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_2649766D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 56);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = sub_264982A44();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  a3 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_15:

    a3 = MEMORY[0x266745520](a3, v6);

    goto LABEL_8;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (a3 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  a3 = *(v6 + 8 * a3 + 32);

LABEL_8:
  swift_beginAccess();
  v6 = *(a3 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 64) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_17:
    v6 = sub_264971CB8(0, *(v6 + 16) + 1, 1, v6);
    *(a3 + 64) = v6;
  }

  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (v10 >= v9 >> 1)
  {
    v6 = sub_264971CB8((v9 > 1), v10 + 1, 1, v6);
  }

  v12 = &type metadata for BRUIMathCharacter;
  v13 = &off_28763D170;
  *&v11 = a1;
  *(&v11 + 1) = a2;
  *(v6 + 16) = v10 + 1;
  sub_264971E00(&v11, v6 + 40 * v10 + 32);
  *(a3 + 64) = v6;
  swift_endAccess();
}

uint64_t getEnumTagSinglePayload for BRUIUEBMathParser.Case(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BRUIUEBMathParser.Case(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for BRUIUEBMathParser.Grade(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BRUIUEBMathParser.Grade(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18ScreenReaderOutput17BRUIUEBMathParserC11ElementType33_481702DCE820C31CD7877D4A0F664DC6LLO(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

uint64_t sub_264976BBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264976BF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_264976C44(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_264976C80()
{
  result = qword_27FF87610[0];
  if (!qword_27FF87610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF87610);
  }

  return result;
}

unint64_t sub_264976CD8()
{
  result = qword_27FF87720[0];
  if (!qword_27FF87720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF87720);
  }

  return result;
}

unint64_t sub_264976D2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D78, &qword_26498CEA8);
    v3 = sub_264982A84();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_26496A734(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_264976E40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t SCROBrailleUILiveCaptionsManager.isSourceAudio.getter()
{
  v1 = OBJC_IVAR___SCROBrailleUILiveCaptionsManager_isSourceAudio;
  swift_beginAccess();
  return *(v0 + v1);
}

id SCROBrailleUILiveCaptionsManager.isSourceAudio.setter(char a1)
{
  v3 = OBJC_IVAR___SCROBrailleUILiveCaptionsManager_isSourceAudio;
  result = swift_beginAccess();
  v1[v3] = a1;
  if (v1[OBJC_IVAR___SCROBrailleUILiveCaptionsManager_isTranscribing] == 1)
  {
    [v1 stop];
    return [v1 startWithCompletionHandler_];
  }

  return result;
}

id sub_2649770E4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isSourceAudio];
  *a2 = result;
  return result;
}

uint64_t SCROBrailleUILiveCaptionsManager.start()()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  v2 = sub_264982664();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D98, &qword_26498CEC0);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DA0, &qword_26498CEC8);
  v1[11] = swift_task_alloc();
  v3 = sub_2649823E4();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DA8, &qword_26498CED0);
  v1[15] = swift_task_alloc();
  v4 = sub_264982434();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v5 = sub_2649823B4();
  v1[19] = v5;
  v1[20] = *(v5 - 8);
  v1[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DB0, &qword_26498CED8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v6 = sub_264982454();
  v1[26] = v6;
  v1[27] = *(v6 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264977544, 0, 0);
}

uint64_t sub_264977544()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[2];
  v8 = sub_26496AB68();
  v0[34] = v8;
  v9 = *v8;
  sub_26496BBA4(v7);

  sub_264982404();
  sub_264982444();
  sub_264982414();
  (*(v4 + 8))(v3, v5);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    v10 = v0[15];
    v11 = &qword_27FF86DA8;
    v12 = &qword_26498CED0;
LABEL_5:
    sub_264976E40(v10, v11, v12);
    v17 = 1;
    goto LABEL_7;
  }

  v13 = v0[12];
  v14 = v0[13];
  v15 = v0[11];
  (*(v0[20] + 32))(v0[21], v0[15], v0[19]);
  sub_2649823F4();
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    v16 = v0[11];
    (*(v0[20] + 8))(v0[21], v0[19]);
    v11 = &qword_27FF86DA0;
    v12 = &qword_26498CEC8;
    v10 = v16;
    goto LABEL_5;
  }

  v19 = v0[20];
  v18 = v0[21];
  v20 = v0[19];
  v22 = v0[13];
  v21 = v0[14];
  v23 = v0[12];
  (*(v22 + 32))(v21, v0[11], v23);
  sub_2649823A4();
  MEMORY[0x266745310](95, 0xE100000000000000);
  v24 = sub_2649823A4();
  MEMORY[0x266745310](v24);

  sub_264982394();
  (*(v22 + 8))(v21, v23);
  (*(v19 + 8))(v18, v20);
  v17 = 0;
LABEL_7:
  v25 = v0[26];
  v26 = v0[25];
  v27 = *(v0[27] + 56);
  v0[35] = v27;
  v27(v26, v17, 1, v25);
  v0[36] = sub_2649825D4();
  v28 = swift_task_alloc();
  v0[37] = v28;
  *v28 = v0;
  v28[1] = sub_264977808;

  return MEMORY[0x282182950]();
}

uint64_t sub_264977808(uint64_t a1)
{
  *(*v1 + 304) = a1;

  return MEMORY[0x2822009F8](sub_264977908, 0, 0);
}

uint64_t sub_264977908()
{
  v120 = v0;
  result = *(v0 + 304);
  v103 = *(result + 16);
  if (!v103)
  {
LABEL_12:
    v24 = *(v0 + 208);
    v25 = *(v0 + 216);
    v26 = *(v0 + 200);
    v27 = *(v0 + 176);

    sub_264979998(v26, v27, &qword_27FF86DB0, &qword_26498CED8);
    v28 = (*(v25 + 48))(v27, 1, v24);
    v29 = *(v0 + 208);
    v30 = *(v0 + 216);
    v31 = *(v0 + 32);
    v32 = *(v0 + 40);
    if (v28 == 1)
    {
      v33 = *(v0 + 264);
      v34 = *(v0 + 224);
      v35 = *(v0 + 56);
      sub_264976E40(*(v0 + 176), &qword_27FF86DB0, &qword_26498CED8);
      v36 = sub_26497FAB8();
      (*(v32 + 16))(v35, v36, v31);
      (*(v30 + 16))(v34, v33, v29);
      v37 = sub_264982644();
      v38 = sub_264982924();
      v39 = os_log_type_enabled(v37, v38);
      v41 = *(v0 + 216);
      v40 = *(v0 + 224);
      v42 = *(v0 + 208);
      v43 = *(v0 + 56);
      v45 = *(v0 + 32);
      v44 = *(v0 + 40);
      if (v39)
      {
        v116 = *(v0 + 32);
        v46 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v119[0] = v108;
        *v46 = 136315138;
        sub_264979684(&qword_27FF86DB8, MEMORY[0x277CC97B0]);
        v105 = v38;
        v47 = sub_264982A94();
        v112 = v43;
        v49 = v48;
        v50 = *(v41 + 8);
        v50(v40, v42);
        v51 = sub_26496D81C(v47, v49, v119);

        *(v46 + 4) = v51;
        _os_log_impl(&dword_26490B000, v37, v105, "BrailleUI Live Captions: normalizedLocale for %s is nil", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v108);
        MEMORY[0x266746840](v108, -1, -1);
        MEMORY[0x266746840](v46, -1, -1);

        (*(v44 + 8))(v112, v116);
      }

      else
      {

        v50 = *(v41 + 8);
        v50(v40, v42);
        (*(v44 + 8))(v43, v45);
      }
    }

    else
    {
      v53 = *(v0 + 232);
      v52 = *(v0 + 240);
      v54 = *(v0 + 64);
      (*(v30 + 32))(v52, *(v0 + 176), *(v0 + 208));
      v55 = sub_26497FAB8();
      (*(v32 + 16))(v54, v55, v31);
      (*(v30 + 16))(v53, v52, v29);
      v56 = sub_264982644();
      v117 = sub_264982924();
      v57 = os_log_type_enabled(v56, v117);
      v59 = *(v0 + 232);
      v58 = *(v0 + 240);
      v60 = *(v0 + 208);
      v61 = *(v0 + 216);
      v62 = *(v0 + 64);
      v64 = *(v0 + 32);
      v63 = *(v0 + 40);
      if (v57)
      {
        v65 = swift_slowAlloc();
        v113 = v64;
        v66 = swift_slowAlloc();
        v119[0] = v66;
        *v65 = 136315138;
        sub_264979684(&qword_27FF86DB8, MEMORY[0x277CC97B0]);
        v106 = v62;
        v109 = v58;
        v67 = sub_264982A94();
        v69 = v68;
        v70 = *(v61 + 8);
        v70(v59, v60);
        v71 = sub_26496D81C(v67, v69, v119);

        *(v65 + 4) = v71;
        _os_log_impl(&dword_26490B000, v56, v117, "BrailleUI Live Captions: locale %s not supported", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x266746840](v66, -1, -1);
        v72 = v65;
        v50 = v70;
        MEMORY[0x266746840](v72, -1, -1);

        (*(v63 + 8))(v106, v113);
        v70(v109, v60);
      }

      else
      {

        v50 = *(v61 + 8);
        v50(v59, v60);
        (*(v63 + 8))(v62, v64);
        v50(v58, v60);
      }
    }

    v73 = *(*(v0 + 16) + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_client);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v75 = [objc_opt_self() bundleForClass_];
    v76 = sub_264982774();
    v77 = sub_264982774();
    v78 = sub_264982774();
    v79 = [v75 localizedStringForKey:v76 value:v77 table:v78];

    if (!v79)
    {
      sub_264982784();
      v79 = sub_264982774();
    }

    v80 = *(v0 + 264);
    v81 = *(v0 + 208);
    v82 = *(v0 + 200);
    [v73 handleTranscribedText:v79 isFinal:0];

    sub_264976E40(v82, &qword_27FF86DB0, &qword_26498CED8);
    v50(v80, v81);
    goto LABEL_23;
  }

  v2 = 0;
  v3 = *(v0 + 216);
  v102 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v101 = v3;
  v100 = *(v0 + 72);
  v98 = (v3 + 32);
  v99 = *(v0 + 304);
  v104 = (v3 + 8);
  while (1)
  {
    if (v2 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v7 = *(v0 + 256);
    v8 = *(v0 + 208);
    v110 = *(v0 + 280);
    v114 = *(v0 + 200);
    v9 = *(v0 + 192);
    v10 = *(v0 + 80);
    v107 = v2;
    v11 = v101[2];
    v11(v7, v102 + v101[9] * v2, v8);
    v11(v9, v7, v8);
    v110(v9, 0, 1, v8);
    v12 = *(v100 + 48);
    sub_264979998(v9, v10, &qword_27FF86DB0, &qword_26498CED8);
    sub_264979998(v114, v10 + v12, &qword_27FF86DB0, &qword_26498CED8);
    v13 = v101[6];
    if (v13(v10, 1, v8) == 1)
    {
      break;
    }

    v14 = *(v0 + 208);
    sub_264979998(*(v0 + 80), *(v0 + 184), &qword_27FF86DB0, &qword_26498CED8);
    v15 = v13(v10 + v12, 1, v14);
    v16 = *(v0 + 256);
    if (v15 == 1)
    {
      v17 = *(v0 + 208);
      v18 = *(v0 + 184);
      sub_264976E40(*(v0 + 192), &qword_27FF86DB0, &qword_26498CED8);
      v19 = *v104;
      (*v104)(v16, v17);
      v19(v18, v17);
      goto LABEL_4;
    }

    v20 = *(v0 + 248);
    v21 = *(v0 + 208);
    v22 = *(v0 + 184);
    v111 = *(v0 + 192);
    v115 = *(v0 + 80);
    (*v98)(v20, v10 + v12, v21);
    sub_264979684(&qword_27FF86DC8, MEMORY[0x277CC97A0]);
    v23 = sub_264982764();
    v6 = *v104;
    (*v104)(v20, v21);
    sub_264976E40(v111, &qword_27FF86DB0, &qword_26498CED8);
    v6(v16, v21);
    v6(v22, v21);
    sub_264976E40(v115, &qword_27FF86DB0, &qword_26498CED8);
    if (v23)
    {

      goto LABEL_27;
    }

LABEL_5:
    v2 = v107 + 1;
    result = v99;
    if (v103 == v107 + 1)
    {
      goto LABEL_12;
    }
  }

  v4 = *(v0 + 256);
  v5 = *(v0 + 208);
  sub_264976E40(*(v0 + 192), &qword_27FF86DB0, &qword_26498CED8);
  v6 = *v104;
  (*v104)(v4, v5);
  if (v13(v10 + v12, 1, v5) != 1)
  {
LABEL_4:
    sub_264976E40(*(v0 + 80), &qword_27FF86D98, &qword_26498CEC0);
    goto LABEL_5;
  }

  v84 = *(v0 + 80);

  sub_264976E40(v84, &qword_27FF86DB0, &qword_26498CED8);
LABEL_27:
  v85 = *(v0 + 272);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86C28, &qword_26498CB20);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_26498CAD0;
  v87 = sub_264982774();
  AXPidForLaunchLabel();

  *(v86 + 32) = sub_264982AD4();
  v88 = *v85;
  v89 = sub_26496C3A0();

  if (v89 || (v90 = **(v0 + 272), v91 = sub_26496C3C8(), v90, v91))
  {
    v92 = 2;
  }

  else
  {
    v92 = [*(v0 + 16) isSourceAudio];
  }

  v93 = *(v0 + 264);
  v95 = *(v0 + 200);
  v94 = *(v0 + 208);
  v118 = *(v0 + 16);
  *(v118 + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_sourceType) = v92;
  v96 = sub_2649825C4();
  *(swift_allocObject() + 16) = v118;
  v97 = v118;
  sub_2649825B4();

  sub_264976E40(v95, &qword_27FF86DB0, &qword_26498CED8);
  v6(v93, v94);
  *(*(v0 + 16) + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_isTranscribing) = 1;
LABEL_23:

  v83 = *(v0 + 8);

  return v83();
}

uint64_t sub_264978748(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2649787F0;

  return SCROBrailleUILiveCaptionsManager.start()();
}

uint64_t sub_2649787F0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v4 = *v0;

  if (v2)
  {
    v5 = *(v1 + 24);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v4 + 8);

  return v6();
}

Swift::Void __swiftcall SCROBrailleUILiveCaptionsManager.stop()()
{
  v1 = v0;
  v2 = sub_264982664();
  MEMORY[0x28223BE20](v2, v3, v4);
  sub_2649825D4();
  v5 = sub_2649825C4();
  sub_2649825A4();

  *(v1 + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_isTranscribing) = 0;
  v6 = *(v1 + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_client);

  [v6 finalizeTranscription];
}

void __swiftcall SCROBrailleUILiveCaptionsManager.init()(SCROBrailleUILiveCaptionsManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id sub_264978C04()
{
  [v0 stop];

  return [v0 startWithCompletionHandler_];
}

void sub_264978C4C(void *a1)
{
  v1 = a1;
  [v1 stop];
  [v1 startWithCompletionHandler_];
}

uint64_t sub_264978CA4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_264979B70;

  return v6();
}

uint64_t sub_264978D8C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_264978E74;

  return v7();
}

uint64_t sub_264978E74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264978F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DD0, &qword_26498CEE0);
  MEMORY[0x28223BE20](v9 - 8, v10, v11);
  v13 = v25 - v12;
  sub_264979998(a3, v25 - v12, &qword_27FF86DD0, &qword_26498CEE0);
  v14 = sub_2649828E4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_264976E40(v13, &qword_27FF86DD0, &qword_26498CEE0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2649828D4();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_2649828A4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_264982794() + 32;
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

    sub_264976E40(a3, &qword_27FF86DD0, &qword_26498CEE0);

    return v23;
  }

LABEL_8:
  sub_264976E40(a3, &qword_27FF86DD0, &qword_26498CEE0);
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

uint64_t sub_264979264(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26497935C;

  return v6(a1);
}

uint64_t sub_26497935C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_264979454()
{
  v1 = *(v0 + 16);
  sub_264982574();
  v2 = sub_2649825E4();
  if (v2 == sub_2649825E4())
  {
    if (sub_264982564() != -2 && sub_264982564() != -1)
    {
      sub_264982564();
    }

    v5 = *(v1 + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_client);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    v8 = sub_264982774();
    v9 = sub_264982774();

    v10 = sub_264982774();
    v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

    if (!v11)
    {
      sub_264982784();
      v11 = sub_264982774();
    }

    [v5 handleTranscribedText:v11 isFinal:0];
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_client);
    sub_264982584();
    v11 = sub_264982774();

    sub_264982574();
    v4 = sub_2649825E4();
    [v3 handleTranscribedText:v11 isFinal:v4 == sub_2649825E4()];
  }
}

uint64_t sub_264979684(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_264982454();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t type metadata accessor for SCROBrailleUILiveCaptionsManager()
{
  result = qword_27FF87830;
  if (!qword_27FF87830)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF87830);
  }

  return result;
}

uint64_t sub_264979720()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_264979B70;

  return sub_264978748(v2, v3);
}

uint64_t sub_2649797CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_264979B70;

  return sub_264978CA4(v2, v3, v4);
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2649798CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264978E74;

  return sub_264978D8C(a1, v4, v5, v6);
}

uint64_t sub_264979998(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_264979A00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264979B70;

  return sub_264979264(a1, v4);
}

uint64_t sub_264979AB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264978E74;

  return sub_264979264(a1, v4);
}

uint64_t sub_264979B7C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DD0, &qword_26498CEE0);
  MEMORY[0x28223BE20](v2 - 8, v3, v4);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR___SCROBrailleUIIntelligenceManager____lazy_storage___lazyLLMManager;
  if (*(v0 + OBJC_IVAR___SCROBrailleUIIntelligenceManager____lazy_storage___lazyLLMManager))
  {
    v8 = *(v0 + OBJC_IVAR___SCROBrailleUIIntelligenceManager____lazy_storage___lazyLLMManager);
  }

  else
  {
    v9 = sub_2649828E4();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    sub_2649828C4();
    v10 = sub_2649828B4();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    *(v11 + 16) = v10;
    *(v11 + 24) = v12;
    v8 = sub_264979E50(0, 0, v6, &unk_26498CF90, v11);
    *(v1 + v7) = v8;
  }

  return v8;
}

uint64_t sub_264979CC8(uint64_t a1)
{
  v1[2] = a1;
  sub_264982454();
  v1[3] = swift_task_alloc();
  sub_2649828C4();
  v1[4] = sub_2649828B4();
  v3 = sub_2649828A4();

  return MEMORY[0x2822009F8](sub_264979D8C, v3, v2);
}

uint64_t sub_264979D8C()
{
  v1 = *(v0 + 16);

  sub_264982404();
  v2 = objc_allocWithZone(sub_264982634());
  *v1 = sub_264982604();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_264979E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DD0, &qword_26498CEE0);
  MEMORY[0x28223BE20](v8 - 8, v9, v10);
  v12 = v24 - v11;
  sub_26497C2F0(a3, v24 - v11);
  v13 = sub_2649828E4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_264976E40(v12, &qword_27FF86DD0, &qword_26498CEE0);
  }

  else
  {
    sub_2649828D4();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2649828A4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_264982794() + 32;
      sub_264982634();

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_264976E40(a3, &qword_27FF86DD0, &qword_26498CEE0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_264976E40(a3, &qword_27FF86DD0, &qword_26498CEE0);
  sub_264982634();
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t SCROBrailleUIIntelligenceManager.summarize(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_264982664();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_264982434();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = sub_264982454();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  sub_2649828C4();
  v3[21] = sub_2649828B4();
  v8 = sub_2649828A4();
  v3[22] = v8;
  v3[23] = v7;

  return MEMORY[0x2822009F8](sub_26497A2D8, v8, v7);
}

uint64_t sub_26497A2D8()
{
  v57 = v0;
  if (sub_2649827D4() <= 32)
  {
    v43 = v0[6];

    v44 = v0[5];

    v45 = v0[1];

    return v45(v44, v43);
  }

  else
  {
    v2 = v0[19];
    v1 = v0[20];
    v3 = v0[17];
    v4 = v0[18];
    v5 = v0[15];
    v6 = v0[16];
    v50 = v0[14];
    v52 = v0[13];
    v7 = v0[9];
    v54 = v0[8];
    sub_264982394();
    sub_264982404();
    sub_264982444();
    v8 = *(v4 + 8);
    v0[24] = v8;
    v0[25] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v2, v3);
    sub_264982424();
    (*(v5 + 8))(v6, v50);
    v9 = sub_2649823C4();
    v11 = v10;

    v8(v1, v3);
    if (v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0xD000000000000013;
    }

    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0x8000000264992930;
    }

    v14 = sub_26497FAB8();
    v0[26] = v14;
    v15 = *(v7 + 16);
    v0[27] = v15;
    v0[28] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v52, v14, v54);

    v16 = sub_264982644();
    v17 = sub_264982904();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[13];
    v20 = v0[8];
    v21 = v0[9];
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v55 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_26496D81C(v12, v13, &v55);
      _os_log_impl(&dword_26490B000, v16, v17, "User language = %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x266746840](v23, -1, -1);
      MEMORY[0x266746840](v22, -1, -1);
    }

    (*(v21 + 8))(v19, v20);
    v53 = v0[6];
    v51 = v0[5];
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_2649829F4();
    MEMORY[0x266745310](0xD00000000000013ALL, 0x8000000264992950);
    MEMORY[0x266745310](v12, v13);

    MEMORY[0x266745310](0xD000000000000080, 0x8000000264992A90);
    v48 = v56;
    v49 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DD8, &qword_26498CF38);
    v24 = sub_2649825F4();
    v25 = *(v24 - 8);
    v47 = *(v25 + 72);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = swift_allocObject();
    v0[29] = v27;
    *(v27 + 16) = xmmword_26498CB10;
    v28 = v27 + v26;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DE0, &qword_26498CF40);
    v30 = (v28 + *(v29 + 48));
    v31 = *MEMORY[0x277D42E48];
    v32 = sub_264982724();
    v33 = *(*(v32 - 8) + 104);
    v33(v28, v31, v32);
    *v30 = v49;
    v30[1] = v48;
    v34 = *MEMORY[0x277CE7628];
    v35 = *(v25 + 104);
    v35(v28, v34, v24);
    v36 = v28 + v47;
    v37 = (v36 + *(v29 + 48));
    v33(v36, *MEMORY[0x277D42E40], v32);
    *v37 = v51;
    v37[1] = v53;
    v35(v36, v34, v24);

    v38 = sub_264979B7C();
    v0[30] = v38;
    v39 = swift_task_alloc();
    v0[31] = v39;
    v40 = sub_264982634();
    v0[32] = v40;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DE8, &qword_26498CF48);
    v0[33] = v41;
    *v39 = v0;
    v39[1] = sub_26497A8A4;
    v42 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 2, v38, v40, v41, v42);
  }
}

uint64_t sub_26497A8A4()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {

    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_26497B41C;
  }

  else
  {
    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_26497A9E4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26497A9E4()
{
  v34 = v0;
  v1 = v0[2];
  v2 = sub_264982614();

  if (v2)
  {
    v3 = v0[7];
    v4 = OBJC_IVAR___SCROBrailleUIIntelligenceManager____lazy_storage___lazyLLMManager;
    v0[35] = OBJC_IVAR___SCROBrailleUIIntelligenceManager____lazy_storage___lazyLLMManager;
    v5 = *(v3 + v4);
    v0[36] = v5;

    v6 = swift_task_alloc();
    v0[37] = v6;
    *v6 = v0;
    v6[1] = sub_26497ACE0;
    v7 = v0[32];
    v8 = v0[33];
    v9 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 3, v5, v7, v8, v9);
  }

  else
  {
    v10 = v0[26];
    v11 = v0[27];
    v12 = v0[12];
    v13 = v0[8];

    v11(v12, v10, v13);
    v14 = sub_264982644();
    v15 = sub_264982914();
    if (os_log_type_enabled(v14, v15))
    {
      v30 = v0[24];
      v16 = v0[20];
      v17 = v0[17];
      v18 = v0[9];
      v31 = v0[8];
      v32 = v0[12];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136315138;
      sub_264982404();
      sub_26497C198();
      v21 = sub_264982A94();
      v23 = v22;
      v30(v16, v17);
      v24 = sub_26496D81C(v21, v23, &v33);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_26490B000, v14, v15, "LLM Unsupported; current locale: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266746840](v20, -1, -1);
      MEMORY[0x266746840](v19, -1, -1);

      (*(v18 + 8))(v32, v31);
    }

    else
    {
      v25 = v0[12];
      v26 = v0[8];
      v27 = v0[9];

      (*(v27 + 8))(v25, v26);
    }

    v28 = v0[1];

    return v28(0, 0);
  }
}

uint64_t sub_26497ACE0()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {

    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_26497B61C;
  }

  else
  {
    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_26497AE20;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26497AE20()
{
  v1 = v0[35];
  v2 = v0[7];
  v3 = v0[3];
  sub_264982624();

  v4 = *(v2 + v1);
  v0[39] = v4;

  v5 = swift_task_alloc();
  v0[40] = v5;
  *v5 = v0;
  v5[1] = sub_26497AEF8;
  v6 = v0[32];
  v7 = v0[33];
  v8 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 4, v4, v6, v7, v8);
}

uint64_t sub_26497AEF8()
{
  v2 = *v1;
  v2[41] = v0;

  if (v0)
  {

    v3 = v2[22];
    v4 = v2[23];

    return MEMORY[0x2822009F8](sub_26497B81C, v3, v4);
  }

  else
  {
    v2[42] = v2[4];
    v8 = (*MEMORY[0x277CE7630] + MEMORY[0x277CE7630]);
    v5 = swift_task_alloc();
    v2[43] = v5;
    *v5 = v2;
    v5[1] = sub_26497B0B0;
    v6 = v2[29];

    return v8(v6);
  }
}

uint64_t sub_26497B0B0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 352) = a1;
  *(v4 + 360) = a2;
  *(v4 + 368) = v2;

  if (v2)
  {

    v5 = *(v4 + 176);
    v6 = *(v4 + 184);
    v7 = sub_26497BA1C;
  }

  else
  {
    v8 = *(v4 + 336);

    v5 = *(v4 + 176);
    v6 = *(v4 + 184);
    v7 = sub_26497B1EC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_26497B1EC()
{
  v25 = v0;
  v1 = v0[27];
  v2 = v0[26];
  v3 = v0[11];
  v4 = v0[8];

  v1(v3, v2, v4);

  v5 = sub_264982644();
  v6 = sub_264982914();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[45];
  if (v7)
  {
    v9 = v0[44];
    v10 = v0[11];
    v11 = v0[8];
    v12 = v0[9];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    v15 = sub_26496D81C(v9, v8, &v24);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_26490B000, v5, v6, "Got response: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x266746840](v14, -1, -1);
    MEMORY[0x266746840](v13, -1, -1);

    (*(v12 + 8))(v10, v11);
  }

  else
  {
    v16 = v0[11];
    v17 = v0[8];
    v18 = v0[9];

    (*(v18 + 8))(v16, v17);
  }

  v19 = sub_2649827B4();
  v21 = v20;

  v22 = v0[1];

  return v22(v19, v21);
}

uint64_t sub_26497B41C()
{

  v1 = *(v0 + 272);
  (*(v0 + 216))(*(v0 + 80), *(v0 + 208), *(v0 + 64));
  v2 = v1;
  v3 = sub_264982644();
  v4 = sub_264982914();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_26490B000, v3, v4, "Response %@", v5, 0xCu);
    sub_264976E40(v6, &qword_27FF86DF0, &qword_26498CF50);
    MEMORY[0x266746840](v6, -1, -1);
    MEMORY[0x266746840](v5, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  v9 = sub_2649827B4();
  v11 = v10;

  v12 = *(v0 + 8);

  return v12(v9, v11);
}

uint64_t sub_26497B61C()
{

  v1 = *(v0 + 304);
  (*(v0 + 216))(*(v0 + 80), *(v0 + 208), *(v0 + 64));
  v2 = v1;
  v3 = sub_264982644();
  v4 = sub_264982914();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_26490B000, v3, v4, "Response %@", v5, 0xCu);
    sub_264976E40(v6, &qword_27FF86DF0, &qword_26498CF50);
    MEMORY[0x266746840](v6, -1, -1);
    MEMORY[0x266746840](v5, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  v9 = sub_2649827B4();
  v11 = v10;

  v12 = *(v0 + 8);

  return v12(v9, v11);
}

uint64_t sub_26497B81C()
{

  v1 = *(v0 + 328);
  (*(v0 + 216))(*(v0 + 80), *(v0 + 208), *(v0 + 64));
  v2 = v1;
  v3 = sub_264982644();
  v4 = sub_264982914();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_26490B000, v3, v4, "Response %@", v5, 0xCu);
    sub_264976E40(v6, &qword_27FF86DF0, &qword_26498CF50);
    MEMORY[0x266746840](v6, -1, -1);
    MEMORY[0x266746840](v5, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  v9 = sub_2649827B4();
  v11 = v10;

  v12 = *(v0 + 8);

  return v12(v9, v11);
}

uint64_t sub_26497BA1C()
{

  v1 = *(v0 + 368);
  (*(v0 + 216))(*(v0 + 80), *(v0 + 208), *(v0 + 64));
  v2 = v1;
  v3 = sub_264982644();
  v4 = sub_264982914();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_26490B000, v3, v4, "Response %@", v5, 0xCu);
    sub_264976E40(v6, &qword_27FF86DF0, &qword_26498CF50);
    MEMORY[0x266746840](v6, -1, -1);
    MEMORY[0x266746840](v5, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  v9 = sub_2649827B4();
  v11 = v10;

  v12 = *(v0 + 8);

  return v12(v9, v11);
}

uint64_t sub_26497BDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_2649828C4();
  v3[5] = sub_2649828B4();
  v5 = sub_2649828A4();

  return MEMORY[0x2822009F8](sub_26497BE40, v5, v4);
}

uint64_t sub_26497BE40()
{
  v1 = v0[4];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v3 = sub_264982784();
  v5 = v4;
  v0[7] = v4;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_26497BF1C;

  return SCROBrailleUIIntelligenceManager.summarize(_:)(v3, v5);
}

uint64_t sub_26497BF1C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 32);
  v7 = *v2;

  if (v5)
  {
    if (a2)
    {
      v8 = sub_264982774();
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v4 + 48);
    (v9)[2](v9, v8);
    _Block_release(v9);
  }

  else
  {
  }

  v10 = *(v7 + 8);

  return v10();
}

void __swiftcall SCROBrailleUIIntelligenceManager.init()(SCROBrailleUIIntelligenceManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id SCROBrailleUIIntelligenceManager.init()()
{
  *(v0 + OBJC_IVAR___SCROBrailleUIIntelligenceManager____lazy_storage___lazyLLMManager) = 0;
  v2.super_class = SCROBrailleUIIntelligenceManager;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t sub_26497C198()
{
  result = qword_27FF86DB8;
  if (!qword_27FF86DB8)
  {
    sub_264982454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF86DB8);
  }

  return result;
}

unint64_t type metadata accessor for SCROBrailleUIIntelligenceManager()
{
  result = qword_27FF87838;
  if (!qword_27FF87838)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF87838);
  }

  return result;
}

uint64_t sub_26497C23C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_264979B70;

  return sub_26497BDA4(v2, v3, v4);
}

uint64_t sub_26497C2F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DD0, &qword_26498CEE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26497C360(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_264978E74;

  return sub_264979CC8(a1);
}

uint64_t sub_26497C3F8(uint64_t a1, unint64_t a2)
{
  v27[0] = 10;
  v27[1] = 0xE100000000000000;
  v26 = v27;

  v5 = sub_26497C8B8(0x7FFFFFFFFFFFFFFFLL, 1, sub_26497CEB0, v25, a1, a2, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v27[0] = MEMORY[0x277D84F90];
    sub_26497CD84(0, v6, 0);
    v7 = v27[0];
    v8 = objc_opt_self();
    v9 = (v5 + 56);
    do
    {
      v10 = *(v9 - 3);
      v11 = *(v9 - 2);
      v13 = *(v9 - 1);
      v12 = *v9;

      v14 = [v8 sharedManager];
      MEMORY[0x2667452B0](v10, v11, v13, v12);
      v15 = sub_264982774();

      v16 = [v14 printBrailleForText:v15 language:0 mode:1 textPositionsRange:sub_264982334() locations:0 textFormattingRanges:{0, 0}];

      if (v16)
      {
        v17 = sub_264982784();
        v19 = v18;
      }

      else
      {

        v17 = 0;
        v19 = 0xE000000000000000;
      }

      v27[0] = v7;
      v21 = *(v7 + 16);
      v20 = *(v7 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_26497CD84((v20 > 1), v21 + 1, 1);
        v7 = v27[0];
      }

      *(v7 + 16) = v21 + 1;
      v22 = v7 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v9 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v27[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86E00, qword_26498CFA0);
  sub_26497CECC();
  v23 = sub_264982754();

  return v23;
}

uint64_t sub_26497C660(uint64_t a1, unint64_t a2)
{
  v27[0] = 10;
  v27[1] = 0xE100000000000000;
  v26 = v27;

  v5 = sub_26497C8B8(0x7FFFFFFFFFFFFFFFLL, 1, sub_26497CF98, v25, a1, a2, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v27[0] = MEMORY[0x277D84F90];
    sub_26497CD84(0, v6, 0);
    v7 = v27[0];
    v8 = objc_opt_self();
    v9 = (v5 + 56);
    do
    {
      v10 = *(v9 - 3);
      v11 = *(v9 - 2);
      v13 = *(v9 - 1);
      v12 = *v9;

      v14 = [v8 inputManager];
      MEMORY[0x2667452B0](v10, v11, v13, v12);
      v15 = sub_264982774();

      v16 = [v14 textForPrintBraille:v15 language:0 mode:1 locations:0];

      if (v16)
      {
        v17 = sub_264982784();
        v19 = v18;
      }

      else
      {

        v17 = 0;
        v19 = 0xE000000000000000;
      }

      v27[0] = v7;
      v21 = *(v7 + 16);
      v20 = *(v7 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_26497CD84((v20 > 1), v21 + 1, 1);
        v7 = v27[0];
      }

      *(v7 + 16) = v21 + 1;
      v22 = v7 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v9 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v27[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86E00, qword_26498CFA0);
  sub_26497CECC();
  v23 = sub_264982754();

  return v23;
}

unint64_t sub_26497C8B8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_264982854();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_26497CC78(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_26497CC78((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_264982844();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_2649827E4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_2649827E4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_264982854();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_26497CC78(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_264982854();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_26497CC78(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_26497CC78((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_2649827E4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_26497CC78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86E10, &unk_26498CFF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26497CD84(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26497CDA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26497CDA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D60, &unk_26498CC50);
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

unint64_t sub_26497CECC()
{
  result = qword_27FF86E08;
  if (!qword_27FF86E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF86E00, qword_26498CFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF86E08);
  }

  return result;
}

uint64_t sub_26497CF30(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_264982AA4() & 1;
  }
}

id sub_26497CFFC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_264982774();

  v6 = [v4 *a3];

  return v6;
}

id sub_26497D088(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t))
{
  a3(v6, a1);

  sub_264971E00(v6, v3 + OBJC_IVAR___SCROBrailleUIMathString_content);
  v5.receiver = v3;
  v5.super_class = SCROBrailleUIMathString;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_26497D10C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t))
{
  v6 = sub_264982784();
  a4(v9, v6);

  sub_264971E00(v9, a1 + OBJC_IVAR___SCROBrailleUIMathString_content);
  v8.receiver = a1;
  v8.super_class = SCROBrailleUIMathString;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_26497D2C8()
{
  v1 = *(v0 + OBJC_IVAR___SCROBrailleUIMathString_content + 24);
  v2 = *(v0 + OBJC_IVAR___SCROBrailleUIMathString_content + 32);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___SCROBrailleUIMathString_content), v1);
  v4 = *(v1 - 8);
  MEMORY[0x28223BE20](v3, v3, v5);
  v7 = &v10 - v6;
  (*(v4 + 16))(&v10 - v6);
  v8 = (*(v2 + 8))(v1, v2);
  (*(v4 + 8))(v7, v1);
  return v8;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26497D558()
{
  v1 = *(v0 + OBJC_IVAR___SCROBrailleUIMathString_content + 24);
  v2 = *(v0 + OBJC_IVAR___SCROBrailleUIMathString_content + 32);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___SCROBrailleUIMathString_content), v1);
  v4 = *(v1 - 8);
  MEMORY[0x28223BE20](v3, v3, v5);
  v7 = &v10 - v6;
  (*(v4 + 16))(&v10 - v6);
  v8 = (*(v2 + 16))(v1, v2);
  (*(v4 + 8))(v7, v1);
  return v8;
}

uint64_t sub_26497D7A4()
{
  v1 = *(v0 + OBJC_IVAR___SCROBrailleUIMathString_content + 24);
  v2 = *(v0 + OBJC_IVAR___SCROBrailleUIMathString_content + 32);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___SCROBrailleUIMathString_content), v1);
  v4 = *(v1 - 8);
  MEMORY[0x28223BE20](v3, v3, v5);
  v7 = &v10 - v6;
  (*(v4 + 16))(&v10 - v6);
  v8 = (*(v2 + 24))(v1, v2);
  (*(v4 + 8))(v7, v1);
  return v8;
}

void __swiftcall SCROBrailleUIMathString.init()(SCROBrailleUIMathString *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_26497D994(uint64_t a1, uint64_t a2)
{
  MEMORY[0x266745310](a1);

  return 92;
}

uint64_t sub_26497D9DC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1 == 6910044 && a2 == 0xE300000000000000 || (sub_264982AA4() & 1) != 0)
  {
    return 32975;
  }

  if (v3 == 0x73656D69745CLL && a2 == 0xE600000000000000 || (sub_264982AA4() & 1) != 0 || v3 == 1953457244 && a2 == 0xE400000000000000 || (sub_264982AA4() & 1) != 0)
  {
    return 38851;
  }

  if (v3 == 1986618460 && a2 == 0xE400000000000000 || (sub_264982AA4() & 1) != 0)
  {
    return 47;
  }

  if (v3 == 9564 && a2 == 0xE200000000000000 || (sub_264982AA4() & 1) != 0)
  {
    return 37;
  }

  return v3;
}

uint64_t sub_26497DB60(uint64_t a1, uint64_t a2)
{
  v4 = 0x6465636E65666D3CLL;
  if ((a1 != 40 || a2 != 0xE100000000000000) && (sub_264982AA4() & 1) == 0)
  {
    if (a1 == 41 && a2 == 0xE100000000000000 || (sub_264982AA4() & 1) != 0)
    {
      return 0xD000000000000011;
    }

    else
    {
      v4 = 0x2F3C80CF3E6E6D3CLL;
      if ((a1 != 6910044 || a2 != 0xE300000000000000) && (sub_264982AA4() & 1) == 0)
      {
        v4 = 0x2F3C97C33E6F6D3CLL;
        if ((a1 != 0x73656D69745CLL || a2 != 0xE600000000000000) && (sub_264982AA4() & 1) == 0)
        {
          v4 = 0x2F3CB7C23E6F6D3CLL;
          if ((a1 != 1953457244 || a2 != 0xE400000000000000) && (sub_264982AA4() & 1) == 0)
          {
            v4 = 0x2F3CB7C33E6F6D3CLL;
            if ((a1 != 1986618460 || a2 != 0xE400000000000000) && (sub_264982AA4() & 1) == 0)
            {
              v4 = 0x6D2F3C253E6F6D3CLL;
              if ((a1 != 9564 || a2 != 0xE200000000000000) && (sub_264982AA4() & 1) == 0)
              {
                if (a1 == 43 && a2 == 0xE100000000000000 || ((v7 = sub_264982AA4(), a1 == 45) ? (v8 = a2 == 0xE100000000000000) : (v8 = 0), !v8 ? (v9 = 0) : (v9 = 1), (v7 & 1) != 0 || (v9 & 1) != 0 || ((v10 = sub_264982AA4(), a1 == 33) ? (v11 = a2 == 0xE100000000000000) : (v11 = 0), !v11 ? (v12 = 0) : (v12 = 1), (v10 & 1) != 0 || (v12 & 1) != 0 || (sub_264982AA4() & 1) != 0)))
                {
                  v14 = 1047489852;
                  MEMORY[0x266745310](a1, a2);
                  v6 = 1869426492;
                }

                else
                {
                  if (a1 == 8284 && a2 == 0xE200000000000000 || (sub_264982AA4() & 1) != 0)
                  {
                    return 32;
                  }

                  v14 = 1047424316;
                  v13 = sub_26497D9DC(a1, a2);
                  MEMORY[0x266745310](v13);

                  v6 = 1852649276;
                }

                MEMORY[0x266745310](v6 & 0xFFFF0000FFFFFFFFLL | 0x3E00000000, 0xE500000000000000);
                return v14;
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

uint64_t sub_26497DF40()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_26497DF80(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a3 && a4 == 0xE000000000000000 || (sub_264982AA4() & 1) != 0)
  {
    v8 = sub_2649747EC(a1, a2);
    if (v9)
    {
      if (v8 == 94 && v9 == 0xE100000000000000)
      {

LABEL_9:
        v17 = 32123;
LABEL_21:
        MEMORY[0x266745310](a1, a2);
        return v17;
      }

      v10 = sub_264982AA4();

      if (v10)
      {
        goto LABEL_9;
      }
    }
  }

  v11 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_20;
  }

  if (sub_264982844() != 92 || v12 != 0xE100000000000000)
  {
    v13 = sub_264982AA4();

    if (v13)
    {
      goto LABEL_17;
    }

LABEL_20:
    v17 = a3;

    goto LABEL_21;
  }

LABEL_17:
  sub_2649747EC(a1, a2);
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = sub_264982744();

  if ((v15 & 1) == 0)
  {
    goto LABEL_20;
  }

  v17 = a3;

  MEMORY[0x266745310](32, 0xE100000000000000);

  MEMORY[0x266745310](a1, a2);

  return v17;
}

uint64_t sub_26497E14C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v34 = MEMORY[0x277D84F90];
    sub_26497CD84(0, v1, 0);
    v3 = v34;
    v4 = v2 + 32;
    do
    {
      sub_26497228C(v4, &v30);
      v5 = v32;
      v6 = v33;
      __swift_project_boxed_opaque_existential_1(&v30, v32);
      v7 = (*(v6 + 8))(v5, v6);
      v9 = v8;
      result = __swift_destroy_boxed_opaque_existential_0(&v30);
      v34 = v3;
      v11 = v3[2];
      v10 = v3[3];
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        result = sub_26497CD84((v10 > 1), v11 + 1, 1);
        v3 = v34;
      }

      v3[2] = v12;
      v13 = &v3[2 * v11];
      v13[4] = v7;
      v13[5] = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
    goto LABEL_8;
  }

  v3 = MEMORY[0x277D84F90];
  v12 = *(MEMORY[0x277D84F90] + 16);
  if (v12)
  {
LABEL_8:
    v14 = 0;
    v15 = 0;
    v16 = v3 + 5;
    v17 = 0xE000000000000000;
    v29 = v12;
    while (1)
    {
      if (v15 >= v3[2])
      {
        __break(1u);
        return result;
      }

      v19 = *(v16 - 1);
      v18 = *v16;
      v20 = HIBYTE(*v16) & 0xF;
      if (!v14 && v17 == 0xE000000000000000 || (sub_264982AA4() & 1) != 0)
      {
        if ((v18 & 0x2000000000000000) != 0)
        {
          v21 = v20;
        }

        else
        {
          v21 = v19 & 0xFFFFFFFFFFFFLL;
        }

        if (v21)
        {
          if (sub_264982844() == 94 && v22 == 0xE100000000000000)
          {

LABEL_25:
            v30 = 32123;
            v31 = 0xE200000000000000;
            goto LABEL_10;
          }

          v23 = sub_264982AA4();

          if (v23)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
      }

      v24 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v24 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        if (sub_264982844() == 92 && v25 == 0xE100000000000000)
        {

LABEL_33:
          v27 = v19 & 0xFFFFFFFFFFFFLL;
          if ((v18 & 0x2000000000000000) != 0)
          {
            v27 = v20;
          }

          if (v27)
          {
            sub_264982844();
            v28 = sub_264982744();

            if (v28)
            {
              v30 = v14;
              v31 = v17;

              MEMORY[0x266745310](32, 0xE100000000000000);

              MEMORY[0x266745310](v19, v18);

              goto LABEL_11;
            }
          }

          goto LABEL_9;
        }

        v26 = sub_264982AA4();

        if (v26)
        {
          goto LABEL_33;
        }
      }

LABEL_9:
      v30 = v14;
      v31 = v17;

LABEL_10:
      MEMORY[0x266745310](v19, v18);
LABEL_11:

      v14 = v30;
      v17 = v31;
      ++v15;
      v16 += 2;
      if (v29 == v15)
      {
        goto LABEL_39;
      }
    }
  }

  v14 = 0;
LABEL_39:

  return v14;
}

unint64_t sub_26497E49C(uint64_t a1)
{
  *&v48 = 0x3E776F726D3CLL;
  *(&v48 + 1) = 0xE600000000000000;
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v1 = *(a1 + 16);
  if (!v1)
  {
LABEL_23:
    MEMORY[0x266745310](0x3E776F726D2F3CLL, 0xE700000000000000);
    sub_26497F6C0(v46);
    return v48;
  }

  v2 = 0;
  v3 = a1 + 32;
  v37 = 0;
  v4 = v1 - 1;
  v5 = 0x3E776F726D3CLL;
  v6 = 0xE600000000000000;
  while (1)
  {
    v7 = v5;
    sub_26497228C(v3, v43);
    v8 = v44;
    v9 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v10 = *(v9 + 16);

    v11 = v10(v8, v9);
    v13 = v12;
    sub_26497F650(v46, &v38);
    if (!v39)
    {

      sub_26497F6C0(&v38);
      goto LABEL_15;
    }

    sub_264971E00(&v38, v40);
    if (!v2)
    {
      goto LABEL_14;
    }

    if ((sub_264982834() & 1) == 0)
    {

LABEL_14:
      __swift_destroy_boxed_opaque_existential_0(v40);
LABEL_15:
      MEMORY[0x266745310](v11, v13);

      sub_26497F6C0(v46);
      goto LABEL_16;
    }

    sub_2649827D4();
    result = sub_2649827F4();
    v15 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v15 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v15 < result >> 14)
    {
      break;
    }

    v35 = sub_264982854();
    v36 = v16;
    v18 = v17;
    v20 = v19;

    v21 = v41;
    v22 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    if ((*(v22 + 16))(v21, v22) == 0xD000000000000011 && 0x8000000264992BB0 == v23)
    {
    }

    else
    {
      v24 = sub_264982AA4();

      if ((v24 & 1) == 0)
      {

        *&v38 = 0;
        *(&v38 + 1) = 0xE000000000000000;
        sub_2649829F4();

        *&v38 = v37;
        *(&v38 + 1) = v2;
        MEMORY[0x266745310](0x6D3C3E7075736D3CLL, 0xEC0000003E776F72);
        v28 = v41;
        v29 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        v30 = (*(v29 + 16))(v28, v29);
        MEMORY[0x266745310](v30);

        MEMORY[0x266745310](0x3E776F726D2F3CLL, 0xE700000000000000);
        v25 = v35;
        v27 = v36;
        v26 = v18;
        goto LABEL_21;
      }
    }

    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    sub_2649829F4();

    *&v38 = v7;
    *(&v38 + 1) = v6;
    MEMORY[0x266745310](0xD000000000000013, 0x8000000264992BD0);
    v25 = v35;
    v26 = v18;
    v27 = v36;
LABEL_21:
    v31 = MEMORY[0x2667452B0](v25, v26, v27, v20);
    v33 = v32;

    MEMORY[0x266745310](v31, v33);

    v34 = v38;
    sub_26497F6C0(v46);
    v48 = v34;
    __swift_destroy_boxed_opaque_existential_0(v40);
LABEL_16:
    sub_26497228C(v43, v46);
    __swift_destroy_boxed_opaque_existential_0(v43);
    if (!v4)
    {

      goto LABEL_23;
    }

    v2 = v6;
    v6 = *(&v48 + 1);
    v5 = v48;
    --v4;
    v3 += 40;
    v37 = v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_26497E8EC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v24 = MEMORY[0x277D84F90];
    sub_26497CD84(0, v1, 0);
    v3 = v24;
    v4 = v2 + 32;
    do
    {
      sub_26497228C(v4, &v20);
      v5 = v22;
      v6 = v23;
      __swift_project_boxed_opaque_existential_1(&v20, v22);
      v7 = (*(v6 + 24))(v5, v6);
      v9 = v8;
      result = __swift_destroy_boxed_opaque_existential_0(&v20);
      v24 = v3;
      v11 = v3[2];
      v10 = v3[3];
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        result = sub_26497CD84((v10 > 1), v11 + 1, 1);
        v3 = v24;
      }

      v3[2] = v12;
      v13 = &v3[2 * v11];
      v13[4] = v7;
      v13[5] = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
LABEL_8:
    v14 = 0;
    v15 = 0;
    v16 = v3 + 5;
    v17 = 0xE000000000000000;
    while (v15 < v3[2])
    {
      ++v15;
      v19 = *(v16 - 1);
      v18 = *v16;
      v20 = v14;
      v21 = v17;

      MEMORY[0x266745310](v19, v18);

      v14 = v20;
      v17 = v21;
      v16 += 2;
      if (v12 == v15)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    return result;
  }

  v3 = MEMORY[0x277D84F90];
  v12 = *(MEMORY[0x277D84F90] + 16);
  if (v12)
  {
    goto LABEL_8;
  }

  v14 = 0;
LABEL_11:

  return v14;
}

uint64_t sub_26497EAB4()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  MEMORY[0x266745310](v3);

  MEMORY[0x266745310](31613, 0xE200000000000000);
  v4 = v0[8];
  v5 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v4);
  v6 = (*(v5 + 8))(v4, v5);
  MEMORY[0x266745310](v6);

  MEMORY[0x266745310](125, 0xE100000000000000);
  return 0x7B636172665CLL;
}

uint64_t sub_26497EBA4()
{
  v1 = v0;
  sub_2649829F4();
  MEMORY[0x266745310](0xD000000000000029, 0x8000000264992C30);
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = (*(v3 + 16))(v2, v3);
  MEMORY[0x266745310](v4);

  MEMORY[0x266745310](0x3C3E776F726D2F3CLL, 0xED00003E776F726DLL);
  v5 = v0[8];
  v6 = v0[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v7 = (*(v6 + 16))(v5, v6);
  MEMORY[0x266745310](v7);

  MEMORY[0x266745310](0xD000000000000018, 0x8000000264992C60);
  return 0;
}

uint64_t sub_26497ECE8()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 24))(v1, v2);
  MEMORY[0x266745310](v3);

  MEMORY[0x266745310](2633513, 0xE300000000000000);
  v4 = v0[8];
  v5 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v4);
  v6 = (*(v5 + 24))(v4, v5);
  MEMORY[0x266745310](v6);

  MEMORY[0x266745310](10537, 0xE200000000000000);
  return 10280;
}

uint64_t sub_26497EDD4@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_264971E00(a1, a3);

  return sub_264971E00(a2, a3 + 40);
}

unint64_t sub_26497EE48()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 16))(v1, v2);
  MEMORY[0x266745310](v3);

  MEMORY[0x266745310](0x3E7075736D2F3CLL, 0xE700000000000000);
  return 0xD000000000000013;
}

uint64_t sub_26497EEF4()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 24))(v1, v2);
  MEMORY[0x266745310](v3);

  MEMORY[0x266745310](41, 0xE100000000000000);
  return 10334;
}

void sub_26497EFB8()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  MEMORY[0x266745310](v3);

  MEMORY[0x266745310](125, 0xE100000000000000);
}

uint64_t sub_26497F04C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_26497F0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 8))(v4, v5);
  MEMORY[0x266745310](v6);

  MEMORY[0x266745310](125, 0xE100000000000000);
  return a3;
}

uint64_t sub_26497F158()
{
  sub_26497F650((v0 + 5), &v12);
  if (v13)
  {
    sub_264971E00(&v12, v14);
    *&v12 = 0x5B747271735CLL;
    *(&v12 + 1) = 0xE600000000000000;
    v1 = v15;
    v2 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v3 = (*(v2 + 8))(v1, v2);
    MEMORY[0x266745310](v3);

    MEMORY[0x266745310](31581, 0xE200000000000000);
    v4 = v0[3];
    v5 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v4);
    v6 = (*(v5 + 8))(v4, v5);
    MEMORY[0x266745310](v6);

    MEMORY[0x266745310](125, 0xE100000000000000);
    v7 = v12;
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    sub_26497F6C0(&v12);
    v14[0] = 0x7B747271735CLL;
    v14[1] = 0xE600000000000000;
    v8 = v0[3];
    v9 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v8);
    v10 = (*(v9 + 8))(v8, v9);
    MEMORY[0x266745310](v10);

    MEMORY[0x266745310](125, 0xE100000000000000);
    return v14[0];
  }

  return v7;
}

uint64_t sub_26497F2F0()
{
  sub_26497F650((v0 + 5), &v12);
  if (v13)
  {
    sub_264971E00(&v12, &v14);
    *&v12 = 0;
    *(&v12 + 1) = 0xE000000000000000;
    sub_2649829F4();

    *&v12 = 0x3E746F6F726D3CLL;
    *(&v12 + 1) = 0xE700000000000000;
    v1 = v0[3];
    v2 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v1);
    v3 = (*(v2 + 16))(v1, v2);
    MEMORY[0x266745310](v3);

    v4 = v16;
    v5 = v17;
    __swift_project_boxed_opaque_existential_1(&v14, v16);
    v6 = (*(v5 + 16))(v4, v5);
    MEMORY[0x266745310](v6);

    MEMORY[0x266745310](0x3E746F6F726D2F3CLL, 0xE800000000000000);
    v7 = v12;
    __swift_destroy_boxed_opaque_existential_0(&v14);
  }

  else
  {
    sub_26497F6C0(&v12);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_2649829F4();

    v14 = 0x3E747271736D3CLL;
    v15 = 0xE700000000000000;
    v8 = v0[3];
    v9 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v8);
    v10 = (*(v9 + 16))(v8, v9);
    MEMORY[0x266745310](v10);

    MEMORY[0x266745310](0x3E747271736D2F3CLL, 0xE800000000000000);
    return v14;
  }

  return v7;
}

uint64_t sub_26497F4D0()
{
  sub_26497F650((v0 + 5), v10);
  v1 = v11;
  if (v11)
  {
    v2 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v3 = (*(v2 + 24))(v1, v2);
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_26497F6C0(v10);
    v5 = 0xE100000000000000;
    v3 = 50;
  }

  v10[0] = 40;
  v10[1] = 0xE100000000000000;
  v6 = v0[3];
  v7 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v6);
  v8 = (*(v7 + 24))(v6, v7);
  MEMORY[0x266745310](v8);

  MEMORY[0x266745310](0x2F31285E29, 0xE500000000000000);
  MEMORY[0x266745310](v3, v5);

  MEMORY[0x266745310](41, 0xE100000000000000);
  return v10[0];
}

__n128 sub_26497F604@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_264971E00(a1, a3);
  result = *a2;
  v6 = *(a2 + 16);
  *(a3 + 40) = *a2;
  *(a3 + 56) = v6;
  *(a3 + 72) = *(a2 + 32);
  return result;
}

uint64_t sub_26497F650(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D68, &qword_26498D000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26497F6C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D68, &qword_26498D000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for SCROBrailleUIMathString()
{
  result = qword_27FF87840;
  if (!qword_27FF87840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF87840);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26497F7BC(uint64_t a1, int a2)
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

uint64_t sub_26497F804(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26497F8B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26497F900(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_18ScreenReaderOutput22BRUIMathStringProtocol_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26497F974(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26497F9C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26497FA3C()
{
  v0 = sub_264982664();
  __swift_allocate_value_buffer(v0, qword_27FF86E80);
  __swift_project_value_buffer(v0, qword_27FF86E80);
  return sub_264982654();
}

uint64_t sub_26497FAB8()
{
  if (qword_27FF87848 != -1)
  {
    swift_once();
  }

  v0 = sub_264982664();

  return __swift_project_value_buffer(v0, qword_27FF86E80);
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

id sub_26497FBB8()
{
  v1 = OBJC_IVAR___SCROBrailleUILiveSpeechManager____lazy_storage___synth;
  v2 = *(v0 + OBJC_IVAR___SCROBrailleUILiveSpeechManager____lazy_storage___synth);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SCROBrailleUILiveSpeechManager____lazy_storage___synth);
  }

  else
  {
    v4 = sub_26497FC18();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_26497FC18()
{
  v29[1] = *MEMORY[0x277D85DE8];
  v0 = sub_264982664();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264982544();
  v6 = sub_264982534();
  v7 = [objc_opt_self() auxiliarySession];
  v8 = *MEMORY[0x277CB8058];
  v29[0] = 0;
  v9 = [v7 setCategory:v8 error:v29];
  v10 = v29[0];
  if (v9 && (v29[0] = 0, v11 = v10, v12 = [v7 setCategoryOptions:3 error:v29], v10 = v29[0], v12) && (v29[0] = 0, v13 = v10, v14 = objc_msgSend(v7, sel_setParticipatesInNowPlayingAppPolicy_error_, 0, v29), v10 = v29[0], v14))
  {
    v15 = v29[0];
  }

  else
  {
    v16 = v10;
    v17 = sub_264982384();

    swift_willThrow();
    v18 = sub_26497FAB8();
    (*(v1 + 16))(v5, v18, v0);
    v19 = v17;
    v20 = sub_264982644();
    v21 = sub_264982914();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v17;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_26490B000, v20, v21, "Failed to set audio session properties: %@", v22, 0xCu);
      sub_264976E40(v23, &qword_27FF86DF0, &qword_26498CF50);
      MEMORY[0x266746840](v23, -1, -1);
      MEMORY[0x266746840](v22, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v5, v0);
  }

  v26 = v7;
  sub_264982494();
  sub_2649824A4();

  return v6;
}

uint64_t SCROBrailleUILiveSpeechManager.speak(_:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86E20, &qword_26498D248);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_264982504();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v6 = sub_264982474();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v7 = sub_264982464();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  v8 = sub_2649824C4();
  v3[25] = v8;
  v3[26] = *(v8 - 8);
  v3[27] = swift_task_alloc();
  v9 = sub_264982524();
  v3[28] = v9;
  v3[29] = *(v9 - 8);
  v3[30] = swift_task_alloc();
  v10 = sub_264982664();
  v3[31] = v10;
  v3[32] = *(v10 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86E28, &qword_26498D250);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649802FC, 0, 0);
}

uint64_t sub_2649802FC()
{
  v1 = [objc_opt_self() currentLanguageCode];
  v2 = sub_264982784();
  v4 = v3;

  *(v0 + 16) = v2;
  *(v0 + 24) = v4;
  *(v0 + 32) = 95;
  *(v0 + 40) = 0xE100000000000000;
  *(v0 + 48) = 45;
  *(v0 + 56) = 0xE100000000000000;
  v24 = sub_264980D8C();
  v23 = MEMORY[0x277D837D0];
  sub_264982994();

  v5 = objc_opt_self();
  v6 = [v5 sharedInstance];
  v7 = sub_264982774();
  v8 = [v6 liveSpeechVoiceIDForKeyboardID_];

  v9 = sub_264982784();
  v11 = v10;

  *(v0 + 296) = v9;
  *(v0 + 304) = v11;
  v12 = [v5 sharedInstance];
  v13 = sub_264982774();
  [v12 liveSpeechRateForKeyboardID_];
  *(v0 + 328) = v14;

  v15 = [v5 sharedInstance];
  v16 = sub_264982774();

  [v15 liveSpeechPitchForKeyboardID_];
  *(v0 + 332) = v17;

  *(v0 + 312) = sub_26497FBB8();
  v18 = MEMORY[0x277D70320];
  v19 = *MEMORY[0x277D70320];
  v20 = swift_task_alloc();
  *(v0 + 320) = v20;
  *v20 = v0;
  v20[1] = sub_2649805BC;
  v21 = *(v0 + 288);

  return ((v19 + v18))(v21, v9, v11);
}

uint64_t sub_2649805BC()
{
  v1 = *(*v0 + 312);

  return MEMORY[0x2822009F8](sub_2649806FC, 0, 0);
}

uint64_t sub_2649806FC()
{
  v63 = v0;
  v62[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v57 = sub_26497FAB8();
  v56 = *(v2 + 16);
  v56(v1);

  v3 = sub_264982644();
  v4 = sub_264982924();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 332);
    v6 = *(v0 + 328);
    v8 = *(v0 + 296);
    v7 = *(v0 + 304);
    v9 = *(v0 + 272);
    v11 = *(v0 + 248);
    v10 = *(v0 + 256);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v62[0] = v13;
    *v12 = 136315650;
    v14 = sub_26496D81C(v8, v7, v62);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2048;
    *(v12 + 14) = v6;
    *(v12 + 22) = 2048;
    *(v12 + 24) = v5;
    _os_log_impl(&dword_26490B000, v3, v4, "Live Speech VoiceID = %s rate = %f pitch = %f", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x266746840](v13, -1, -1);
    MEMORY[0x266746840](v12, -1, -1);
  }

  else
  {
    v9 = *(v0 + 272);
    v11 = *(v0 + 248);
    v10 = *(v0 + 256);
  }

  v55 = *(v10 + 8);
  v55(v9, v11);
  v15 = *(v0 + 332);
  v16 = *(v0 + 328);
  v18 = *(v0 + 280);
  v17 = *(v0 + 288);
  v19 = *(v0 + 208);
  v20 = *(v0 + 216);
  v22 = *(v0 + 192);
  v21 = *(v0 + 200);
  v23 = *(v0 + 176);
  v24 = *(v0 + 184);
  v25 = *(v0 + 160);
  v58 = *(v0 + 168);
  v59 = *(v0 + 152);
  v26 = *(v0 + 88);
  v61 = *(v0 + 96);
  v27 = *(v0 + 80);
  LOBYTE(v62[0]) = 1;
  *v20 = v27;
  *(v20 + 8) = v26;
  *(v20 + 16) = v16;
  *(v20 + 20) = 0;
  *(v20 + 24) = v15;
  *(v20 + 28) = 0;
  *(v20 + 32) = 0;
  *(v20 + 36) = 1;
  (*(v19 + 104))(v20, *MEMORY[0x277D70338], v21);
  sub_264979998(v17, v18, &qword_27FF86E28, &qword_26498D250);
  (*(v24 + 104))(v22, *MEMORY[0x277D70198], v23);
  (*(v25 + 104))(v58, *MEMORY[0x277D701A0], v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86E38, &qword_26498D258);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_26498D230;

  sub_2649824F4();
  sub_2649824E4();
  sub_2649824D4();
  *(v0 + 64) = v28;
  sub_264980DE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86E48, &qword_26498D260);
  sub_264980E38();
  sub_2649829A4();
  sub_264982514();
  v60 = OBJC_IVAR___SCROBrailleUILiveSpeechManager____lazy_storage___synth;
  v29 = *(v61 + OBJC_IVAR___SCROBrailleUILiveSpeechManager____lazy_storage___synth);
  v30 = sub_264982484();

  *(v0 + 72) = 0;
  LODWORD(v22) = [v30 setPreferredMicrophoneInjectionMode:1 error:v0 + 72];

  v31 = *(v0 + 72);
  if (v22)
  {
    v32 = v31;
  }

  else
  {
    v33 = *(v0 + 264);
    v34 = *(v0 + 248);
    v35 = v31;
    v36 = sub_264982384();

    swift_willThrow();
    (v56)(v33, v57, v34);
    v37 = v36;
    v38 = sub_264982644();
    v39 = sub_264982914();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = v36;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_26490B000, v38, v39, "Failed to set microphone injection mode: %@", v40, 0xCu);
      sub_264976E40(v41, &qword_27FF86DF0, &qword_26498CF50);
      MEMORY[0x266746840](v41, -1, -1);
      MEMORY[0x266746840](v40, -1, -1);
    }

    else
    {
    }

    v55(*(v0 + 264), *(v0 + 248));
  }

  v44 = *(v0 + 288);
  v46 = *(v0 + 232);
  v45 = *(v0 + 240);
  v47 = *(v0 + 224);
  v49 = *(v0 + 112);
  v48 = *(v0 + 120);
  v50 = *(v0 + 96);
  v51 = *(v0 + 104);
  v52 = *(v61 + v60);
  sub_2649824B4();

  (*(v49 + 8))(v48, v51);
  [*(v50 + OBJC_IVAR___SCROBrailleUILiveSpeechManager_client) didSpeechEnd];
  (*(v46 + 8))(v45, v47);
  sub_264976E40(v44, &qword_27FF86E28, &qword_26498D250);

  v53 = *(v0 + 8);

  return v53();
}

unint64_t sub_264980D8C()
{
  result = qword_27FF86E30;
  if (!qword_27FF86E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF86E30);
  }

  return result;
}

unint64_t sub_264980DE0()
{
  result = qword_27FF86E40;
  if (!qword_27FF86E40)
  {
    sub_264982504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF86E40);
  }

  return result;
}

unint64_t sub_264980E38()
{
  result = qword_27FF86E50;
  if (!qword_27FF86E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF86E48, &qword_26498D260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF86E50);
  }

  return result;
}

uint64_t sub_264981024(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_264982784();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2649810F8;

  return SCROBrailleUILiveSpeechManager.speak(_:)(v5, v7);
}

uint64_t sub_2649810F8()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v4 = *v0;

  if (v2)
  {
    v5 = *(v1 + 24);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v4 + 8);

  return v6();
}

void __swiftcall SCROBrailleUILiveSpeechManager.init()(SCROBrailleUILiveSpeechManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for SCROBrailleUILiveSpeechManager()
{
  result = qword_27FF87850;
  if (!qword_27FF87850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF87850);
  }

  return result;
}

uint64_t sub_26498138C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_264979B70;

  return sub_264981024(v2, v3, v4);
}

void soft__AXSVoiceOverTouchSetTactileGraphicsDisplay_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void soft__AXSVoiceOverTouchSetTactileGraphicsDisplay(CFStringRef)"];
  [v0 handleFailureInFunction:v1 file:@"SCROBrailleDisplayAutoDetector.m" lineNumber:47 description:{@"%s", dlerror()}];

  __break(1u);
}

void libAccessibilityLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *libAccessibilityLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SCROBrailleDisplayAutoDetector.m" lineNumber:46 description:{@"%s", *a1}];

  __break(1u);
}

void libAccessibilityLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *libAccessibilityLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SCROBrailleDisplayManager.m" lineNumber:40 description:{@"%s", *a1}];

  __break(1u);
}

void _SCROXRegisterForCallback_cold_1(void *a1, uint64_t a2, _DWORD *a3)
{
  objc_begin_catch(a1);
  fwrite("Caught Exception while registering for callback\n", 0x30uLL, 1uLL, *MEMORY[0x277D85DF8]);
  *a3 = 1;
  objc_end_catch();
}

void _SCROXGetCallbacks_cold_1(void *a1, uint64_t a2, _DWORD *a3)
{
  objc_begin_catch(a1);
  fwrite("Caught Exception while processing callback fetch\n", 0x31uLL, 1uLL, *MEMORY[0x277D85DF8]);
  *a3 = 1;

  objc_end_catch();
}

void _SCROXGetValueForKey_cold_1(void *a1, uint64_t a2, _DWORD *a3)
{
  objc_begin_catch(a1);
  fwrite("Caught Exception while getting value for key\n", 0x2DuLL, 1uLL, *MEMORY[0x277D85DF8]);
  *a3 = 1;
  objc_end_catch();
}

void _SCROXPerformAction_cold_1(void *a1, uint64_t a2, _DWORD *a3)
{
  objc_begin_catch(a1);
  fwrite("Caught Exception while performing action\n", 0x29uLL, 1uLL, *MEMORY[0x277D85DF8]);
  *a3 = 1;
  objc_end_catch();
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}