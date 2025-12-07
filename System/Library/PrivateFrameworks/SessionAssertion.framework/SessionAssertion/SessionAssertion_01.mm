unint64_t sub_265797FB0()
{
  result = qword_280F95BD0;
  if (!qword_280F95BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95BD0);
  }

  return result;
}

unint64_t sub_265798004()
{
  result = qword_280F95BA8;
  if (!qword_280F95BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95BA8);
  }

  return result;
}

unint64_t sub_265798058()
{
  result = qword_280021148;
  if (!qword_280021148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021148);
  }

  return result;
}

uint64_t sub_2657980AC(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = (result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state);
  if (*(result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8) == 1)
  {
    if (*v3)
    {
      return result;
    }

    sub_265790A88(v2);

    v12 = v3 + 1;
    *v3 = 1;
  }

  else
  {
    v4 = (result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
    v5 = *(result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
    v6 = *(v2 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler + 8);
    v7 = *a2;
    v8 = a2[1];
    *a2 = v5;
    a2[1] = v6;
    sub_265785DF4(v5, v6);
    sub_265786184(v7, v8);
    v9 = *v4;
    v10 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    result = sub_265786184(v9, v10);
    v11 = (v2 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier);
    v12 = (v2 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier + 16);
    *v11 = 0;
    v11[1] = 0;
  }

  *v12 = 1;
  return result;
}

void sub_2657981E0(void (*a1)(uint64_t, void))
{
  v8 = 0;
  v9 = 0;
  v3 = *(*(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);
  os_unfair_lock_lock(v3);
  a1(v1, &v8);
  os_unfair_lock_unlock(v3);
  v4 = v8;
  if (v8)
  {
    v5 = v9;
    sub_26578B11C();
    v6 = swift_allocError();
    *v7 = 0;

    v4(v1, v6);

    sub_265786184(v4, v5);

    sub_265786184(v4, v5);
  }
}

uint64_t sub_2657982D0(uint64_t result, uint64_t *a2)
{
  v2 = result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state;
  if (*(result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8) == 1)
  {
    v3 = result;
    *v2 = 4;
    *(v2 + 8) = 0;
    v4 = result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier;
    if (*(result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier + 16))
    {
      __break(1u);
    }

    else
    {
      v6 = *(v4 + 8);
      v7 = HIDWORD(*v4);
      v15[0] = *v4;
      v15[1] = v7;
      v16 = v6;

      sub_265790DE4(v15);

      v8 = (v3 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
      v9 = *v8;
      v10 = v8[1];
      v11 = *a2;
      v12 = a2[1];
      *a2 = *v8;
      a2[1] = v10;
      sub_265785DF4(v9, v10);
      sub_265786184(v11, v12);
      v13 = *v8;
      v14 = v8[1];
      *v8 = 0;
      v8[1] = 0;
      result = sub_265786184(v13, v14);
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 1;
    }
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

uint64_t sub_2657983EC(uint64_t a1, unsigned int a2)
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

uint64_t sub_265798434(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for AttributeAssertion(uint64_t a1)
{
  result = qword_280F95B50;
  if (!qword_280F95B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265798524(uint64_t a1)
{
  result = sub_26579E364();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AssertionAttribute(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
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

uint64_t getEnumTagSinglePayload for AttributeAssertion.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AttributeAssertion.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_265798768(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265798784(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_2657987E8()
{
  result = qword_280021168;
  if (!qword_280021168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021168);
  }

  return result;
}

unint64_t sub_265798840()
{
  result = qword_280021170;
  if (!qword_280021170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021170);
  }

  return result;
}

unint64_t sub_265798898()
{
  result = qword_280021178;
  if (!qword_280021178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021178);
  }

  return result;
}

unint64_t sub_2657988F0()
{
  result = qword_280F95BB0;
  if (!qword_280F95BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95BB0);
  }

  return result;
}

unint64_t sub_265798948()
{
  result = qword_280F95BB8;
  if (!qword_280F95BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95BB8);
  }

  return result;
}

unint64_t sub_2657989A0()
{
  result = qword_280F95B98;
  if (!qword_280F95B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95B98);
  }

  return result;
}

unint64_t sub_2657989F8()
{
  result = qword_280F95BA0;
  if (!qword_280F95BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95BA0);
  }

  return result;
}

unint64_t sub_265798A50()
{
  result = qword_280F95BC0;
  if (!qword_280F95BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95BC0);
  }

  return result;
}

unint64_t sub_265798AA8()
{
  result = qword_280F95BC8;
  if (!qword_280F95BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95BC8);
  }

  return result;
}

uint64_t sub_265798AFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state;
  if (*(result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8) == 1)
  {
    v6 = result;
    *v4 = a2;
    *(v4 + 8) = 0;
    *(result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_invalidationState) = a3;

    v7 = v6 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier;
    if (*(v6 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier + 16))
    {
      __break(1u);
    }

    else
    {
      v8 = *(v7 + 8);
      v9 = HIDWORD(*v7);
      v17[0] = *v7;
      v17[1] = v9;
      v18 = v8;

      sub_265790DE4(v17);

      v10 = (v6 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
      v11 = *v10;
      v12 = v10[1];
      v13 = *a4;
      v14 = a4[1];
      *a4 = *v10;
      a4[1] = v12;
      sub_265785DF4(v11, v12);
      sub_265786184(v13, v14);
      v15 = *v10;
      v16 = v10[1];
      *v10 = 0;
      v10[1] = 0;
      result = sub_265786184(v15, v16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 1;
    }
  }

  return result;
}

uint64_t sub_265798C14(uint64_t a1, uint64_t a2)
{
  sub_26579E2D4();
  swift_allocObject();
  sub_26579E2C4();
  v3 = sub_26579E344();
  v5 = v4;
  sub_265783A30();
  sub_26579E2B4();

  sub_26578422C(v3, v5);
  result = 1;
  *a2 = v7;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_265798CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_26579E2D4();
    swift_allocObject();
    sub_26579E2C4();
    v3 = sub_26579E344();
    v5 = v4;
    sub_265783A30();
    sub_26579E2B4();
    sub_26578422C(v3, v5);

    *a2 = v7;
    *(a2 + 4) = v8;
    *(a2 + 8) = v9;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

_DWORD *sub_265798DE4()
{
  type metadata accessor for UnfairLock();
  v0 = swift_allocObject();
  result = swift_slowAlloc();
  *(v0 + 16) = result;
  *result = 0;
  off_280F955D0 = v0;
  return result;
}

void static AssertionIdentifier.nextCount.getter()
{
  if (qword_280F955C8 != -1)
  {
    swift_once();
  }

  v0 = *(off_280F955D0 + 2);
  os_unfair_lock_lock(v0);
  if (__OFADD__(qword_280F955C0, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_280F955C0;
    os_unfair_lock_unlock(v0);
  }
}

uint64_t AssertionIdentifier.init(serverPid:clientPid:count:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 4) = a2;
  *(a4 + 8) = a3;
  return result;
}

uint64_t sub_265798F0C()
{
  v1 = 0x6950746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0x746E756F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6950726576726573;
  }
}

uint64_t sub_265798F64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26579AE78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_265798F98(uint64_t a1)
{
  v2 = sub_2657991C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265798FD4(uint64_t a1)
{
  v2 = sub_2657991C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssertionIdentifier.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280021180, &qword_2657A1360);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v10 = *(v1 + 4);
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657991C8();
  sub_26579EA04();
  v13 = 0;
  sub_26579E8F4();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = 1;
  sub_26579E8F4();
  v11 = 2;
  sub_26579E904();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2657991C8()
{
  result = qword_280F95E38;
  if (!qword_280F95E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95E38);
  }

  return result;
}

uint64_t AssertionIdentifier.hash(into:)()
{
  v1 = *(v0 + 8);
  sub_26579E9C4();
  sub_26579E9C4();
  return MEMORY[0x26675EEA0](v1);
}

uint64_t AssertionIdentifier.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_26579E9A4();
  sub_26579E9C4();
  sub_26579E9C4();
  MEMORY[0x26675EEA0](v1);
  return sub_26579E9E4();
}

uint64_t AssertionIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280021188, &qword_2657A1368);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657991C8();
  sub_26579E9F4();
  if (!v2)
  {
    v17 = 0;
    v9 = sub_26579E864();
    v16 = 1;
    v14 = sub_26579E864();
    v15 = 2;
    v11 = sub_26579E874();
    (*(v6 + 8))(v8, v5);
    v12 = v14;
    *a2 = v9;
    *(a2 + 4) = v12;
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2657994C8()
{
  v1 = *(v0 + 8);
  sub_26579E9A4();
  sub_26579E9C4();
  sub_26579E9C4();
  MEMORY[0x26675EEA0](v1);
  return sub_26579E9E4();
}

uint64_t sub_265799534()
{
  v1 = *(v0 + 8);
  sub_26579E9C4();
  sub_26579E9C4();
  return MEMORY[0x26675EEA0](v1);
}

uint64_t sub_26579957C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_26579E9A4();
  sub_26579E9C4();
  sub_26579E9C4();
  MEMORY[0x26675EEA0](v2);
  return sub_26579E9E4();
}

unsigned __int8 *AssertionIdentifier.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v42 = a1;
  v43 = a2;
  sub_265799A28();
  v6 = sub_26579E6B4();

  if (v6[2] != 3)
  {
    goto LABEL_66;
  }

  v8 = v6[4];
  v9 = v6[5];
  v10 = HIBYTE(v9) & 0xF;
  v11 = v8 & 0xFFFFFFFFFFFFLL;
  if (!((v9 & 0x2000000000000000) != 0 ? HIBYTE(v9) & 0xF : v8 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_66;
  }

  if ((v9 & 0x1000000000000000) != 0)
  {

    v15 = sub_26579A080(v8, v9, 10);
    v41 = v40;

    if ((v41 & 1) == 0)
    {
      goto LABEL_64;
    }

LABEL_66:

LABEL_67:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 1;
    return result;
  }

  if ((v9 & 0x2000000000000000) != 0)
  {
    v42 = v6[4];
    v43 = v9 & 0xFFFFFFFFFFFFFFLL;
    if (v8 == 43)
    {
      if (v10)
      {
        v14 = v10 - 1;
        if (v10 != 1)
        {
          v15 = 0;
          v25 = &v42 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              break;
            }

            ++v25;
            if (!--v14)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (v8 != 45)
      {
        if (!v10)
        {
          goto LABEL_62;
        }

        v15 = 0;
        v30 = &v42;
        do
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            goto LABEL_62;
          }

          v32 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            goto LABEL_62;
          }

          v15 = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            goto LABEL_62;
          }

          v30 = (v30 + 1);
          --v10;
        }

        while (v10);
        goto LABEL_61;
      }

      if (v10)
      {
        v14 = v10 - 1;
        if (v10 != 1)
        {
          v15 = 0;
          v19 = &v42 + 1;
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              break;
            }

            v21 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v21 - v20;
            if (__OFSUB__(v21, v20))
            {
              break;
            }

            ++v19;
            if (!--v14)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if ((v8 & 0x1000000000000000) == 0)
  {
    goto LABEL_78;
  }

  for (result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32); ; result = sub_26579E774())
  {
    v13 = *result;
    if (v13 == 43)
    {
      if (v11 < 1)
      {
        goto LABEL_82;
      }

      v14 = v11 - 1;
      if (v11 != 1)
      {
        v15 = 0;
        if (!result)
        {
          goto LABEL_61;
        }

        v22 = result + 1;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v24 + v23;
          if (__OFADD__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v14)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v13 == 45)
    {
      if (v11 < 1)
      {
        goto LABEL_80;
      }

      v14 = v11 - 1;
      if (v11 != 1)
      {
        v15 = 0;
        if (!result)
        {
          goto LABEL_61;
        }

        v16 = result + 1;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          v18 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            break;
          }

          ++v16;
          if (!--v14)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v11)
    {
      v15 = 0;
      if (!result)
      {
LABEL_61:
        LOBYTE(v14) = 0;
        goto LABEL_63;
      }

      while (1)
      {
        v28 = *result - 48;
        if (v28 > 9)
        {
          break;
        }

        v29 = 10 * v15;
        if ((v15 * 10) >> 64 != (10 * v15) >> 63)
        {
          break;
        }

        v15 = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          break;
        }

        ++result;
        if (!--v11)
        {
          goto LABEL_61;
        }
      }
    }

LABEL_62:
    v15 = 0;
    LOBYTE(v14) = 1;
LABEL_63:
    if (v14)
    {
      goto LABEL_66;
    }

LABEL_64:
    if (v6[2] >= 2uLL)
    {
      break;
    }

    __break(1u);
LABEL_78:
    ;
  }

  v33 = v6[6];
  v34 = v6[7];

  result = sub_265799A7C(v33, v34);
  if (v35)
  {
    goto LABEL_66;
  }

  if (v6[2] < 3uLL)
  {
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v36 = result;
  v37 = v6[8];
  v38 = v6[9];

  result = sub_265799A7C(v37, v38);
  if (v39)
  {
    goto LABEL_67;
  }

  if (v15 < 0xFFFFFFFF80000000)
  {
    goto LABEL_84;
  }

  if (v15 > 0x7FFFFFFF)
  {
    goto LABEL_85;
  }

  if (v36 >= 0xFFFFFFFF80000000)
  {
    if (v36 > 0x7FFFFFFF)
    {
      goto LABEL_87;
    }

    *a5 = v15 | (v36 << 32);
    *(a5 + 8) = result;
    *(a5 + 16) = 0;
    return result;
  }

LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  return result;
}

unint64_t sub_265799A28()
{
  result = qword_280021190;
  if (!qword_280021190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021190);
  }

  return result;
}

unint64_t sub_265799A7C(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_26579E774();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_26579A080(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t AssertionIdentifier.description.getter()
{
  v3 = sub_26579E914();
  MEMORY[0x26675E9B0](58, 0xE100000000000000);
  v0 = sub_26579E914();
  MEMORY[0x26675E9B0](v0);

  MEMORY[0x26675E9B0](58, 0xE100000000000000);
  v1 = sub_26579E914();
  MEMORY[0x26675E9B0](v1);

  return v3;
}

uint64_t sub_265799E64(uint64_t a1)
{
  sub_26579E304();
  swift_allocObject();
  sub_26579E2F4();
  sub_2657836F0();
  v1 = sub_26579E2E4();
  v3 = v2;
  v4 = sub_26579E334();
  sub_26578422C(v1, v3);

  return v4;
}

double sub_265799F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26579E2D4();
  swift_allocObject();
  sub_26579E2C4();
  v4 = sub_26579E344();
  v6 = v5;
  sub_265783A30();
  sub_26579E2B4();
  sub_26578422C(v4, v6);

  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = 0;
  return result;
}

void *sub_26579A00C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280020F00, &qword_2657A0128);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_26579A080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_26579E544();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26579AA04(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_26579E774();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_26579A610()
{
  result = qword_280F95E20;
  if (!qword_280F95E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95E20);
  }

  return result;
}

unint64_t sub_26579A668()
{
  result = qword_280021198;
  if (!qword_280021198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021198);
  }

  return result;
}

unint64_t sub_26579A6BC(void *a1)
{
  a1[1] = sub_265783A30();
  a1[2] = sub_2657836F0();
  result = sub_26579A6F4();
  a1[3] = result;
  return result;
}

unint64_t sub_26579A6F4()
{
  result = qword_280F95518;
  if (!qword_280F95518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95518);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AssertionIdentifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AssertionIdentifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AssertionIdentifier.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssertionIdentifier.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26579A900()
{
  result = qword_2800211A0;
  if (!qword_2800211A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800211A0);
  }

  return result;
}

unint64_t sub_26579A958()
{
  result = qword_280F95E28;
  if (!qword_280F95E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95E28);
  }

  return result;
}

unint64_t sub_26579A9B0()
{
  result = qword_280F95E30;
  if (!qword_280F95E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95E30);
  }

  return result;
}

uint64_t sub_26579AA04(uint64_t a1, unint64_t a2)
{
  v2 = sub_26579E554();
  v6 = sub_26579AA84(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_26579AA84(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_26579E6A4();
    if (!v9 || (v10 = v9, v11 = sub_26579A00C(v9, 0), v12 = sub_26579ABDC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_26579E4D4();

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
      return sub_26579E4D4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_26579E774();
LABEL_4:

  return sub_26579E4D4();
}

unint64_t sub_26579ABDC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
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
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_26579ADFC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_26579E524();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_26579E774();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_26579ADFC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_26579E504();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_26579ADFC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26579E534();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26675E9E0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_26579AE78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6950726576726573 && a2 == 0xE900000000000064;
  if (v4 || (sub_26579E924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6950746E65696C63 && a2 == 0xE900000000000064 || (sub_26579E924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26579E924();

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

uint64_t static AssertionInvalidationMessage._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_26579E274();
    swift_allocObject();
    sub_26579E264();
    v3 = sub_26579E344();
    v5 = v4;
    sub_26578A710();
    sub_26579E254();
    sub_26578422C(v3, v5);

    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 24) = v9;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

double AssertionInvalidationMessage.init(identifier:reason:invalidationState:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *a3;
  result = *a1;
  *a4 = *a1;
  a4[1] = v4;
  a4[2] = a2;
  a4[3] = v5;
  return result;
}

uint64_t AssertionInvalidationReason.description.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 <= 5)
    {
      return 0xD000000000000012;
    }

    if (a1 == 6)
    {
      return 0x6765726F46707061;
    }

    if (a1 == 7)
    {
      return 0x6F69747265737361;
    }

    goto LABEL_17;
  }

  result = 0x7974697669746361;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return result;
    }

    if (a1 == 3)
    {
      return 0x64657269707865;
    }

LABEL_17:
    result = sub_26579E934();
    __break(1u);
    return result;
  }

  if (a1 && a1 != 1)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_26579B240()
{
  v1 = *v0;
  sub_26579E9A4();
  MEMORY[0x26675EE80](v1);
  return sub_26579E9E4();
}

uint64_t sub_26579B2B4(uint64_t a1)
{
  v2 = *v1;
  sub_26579E9A4();
  MEMORY[0x26675EE80](v2);
  return sub_26579E9E4();
}

unint64_t sub_26579B2F8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26579BD08(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

double AssertionInvalidationMessage.identifier.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  result = *v1;
  *a1 = *v1;
  a1[1] = v2;
  return result;
}

unint64_t sub_26579B418()
{
  v1 = 0x6E6F73616572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_26579B478@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26579BF10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26579B4A0(uint64_t a1)
{
  v2 = sub_26579BD18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26579B4DC(uint64_t a1)
{
  v2 = sub_26579BD18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssertionInvalidationMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800211A8, &qword_2657A1660);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  v10 = v3[1];
  v9 = v3[2];
  v13 = v3[3];
  v14 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26579BD18();
  sub_26579EA04();
  v15 = *v3;
  v16 = v10;
  v17 = 0;
  sub_2657836F0();
  sub_26579E8E4();
  if (!v2)
  {
    v11 = v13;
    v15 = v14;
    v17 = 1;
    sub_26579BD6C();
    sub_26579E8E4();
    v15 = v11;
    v17 = 2;
    sub_26579BDC0();

    sub_26579E8B4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AssertionInvalidationMessage.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800211B0, &qword_2657A1668);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26579BD18();
  sub_26579E9F4();
  if (!v2)
  {
    v15 = 0;
    sub_265783A30();
    sub_26579E854();
    v9 = v16;
    v10 = v17;
    v15 = 1;
    sub_26579BE14();
    sub_26579E854();
    v12 = v16;
    v15 = 2;
    sub_26579BE68();
    sub_26579E824();
    (*(v6 + 8))(v8, v5);
    v13 = v16;
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v12;
    a2[3] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

NSData __swiftcall AssertionInvalidationMessage._bridgeToObjectiveC()()
{
  sub_26579E2A4();
  swift_allocObject();
  sub_26579E294();
  sub_26579BEBC();
  v0 = sub_26579E284();
  v2 = v1;
  v3 = sub_26579E334();
  sub_26578422C(v0, v2);

  return v3;
}

uint64_t sub_26579BA4C(uint64_t a1)
{
  sub_26579E2A4();
  swift_allocObject();
  sub_26579E294();
  sub_26579BEBC();
  v1 = sub_26579E284();
  v3 = v2;
  v4 = sub_26579E334();
  sub_26578422C(v1, v3);

  return v4;
}

uint64_t sub_26579BB2C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if (a1)
  {
    sub_26579E274();
    swift_allocObject();
    sub_26579E264();
    v4 = sub_26579E344();
    v6 = v5;
    sub_26578A710();
    sub_26579E254();
    sub_26578422C(v4, v6);

    *a3 = v8;
    *(a3 + 8) = v9;
    *(a3 + 24) = v10;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

double _s16SessionAssertion0B19InvalidationMessageV26_forceBridgeFromObjectiveC_6resultySo6NSDataC_ACSgztFZ_0(uint64_t a1, uint64_t *a2)
{
  sub_26579E274();
  swift_allocObject();
  sub_26579E264();
  v3 = sub_26579E344();
  v5 = v4;
  sub_26578A710();
  sub_26579E254();
  sub_26579C3D0(*a2, a2[1], a2[2], a2[3]);
  sub_26578422C(v3, v5);

  result = *&v7;
  *a2 = v7;
  *(a2 + 1) = v8;
  return result;
}

unint64_t sub_26579BD08(unint64_t result)
{
  if (result > 7)
  {
    return 0;
  }

  return result;
}

unint64_t sub_26579BD18()
{
  result = qword_280F95D60;
  if (!qword_280F95D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95D60);
  }

  return result;
}

unint64_t sub_26579BD6C()
{
  result = qword_280F95628;
  if (!qword_280F95628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95628);
  }

  return result;
}

unint64_t sub_26579BDC0()
{
  result = qword_280F95630;
  if (!qword_280F95630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95630);
  }

  return result;
}

unint64_t sub_26579BE14()
{
  result = qword_280F95B80;
  if (!qword_280F95B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95B80);
  }

  return result;
}

unint64_t sub_26579BE68()
{
  result = qword_280F95B88;
  if (!qword_280F95B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95B88);
  }

  return result;
}

unint64_t sub_26579BEBC()
{
  result = qword_280F95620;
  if (!qword_280F95620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95620);
  }

  return result;
}

uint64_t sub_26579BF10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_26579E924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (sub_26579E924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002657A27F0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_26579E924();

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

BOOL _s16SessionAssertion0B19InvalidationMessageV34_conditionallyBridgeFromObjectiveC_6resultSbSo6NSDataC_ACSgztFZ_0(uint64_t a1, uint64_t *a2)
{
  sub_26579C3D0(*a2, a2[1], a2[2], a2[3]);
  sub_26579E274();
  swift_allocObject();
  sub_26579E264();
  v3 = sub_26579E344();
  v5 = v4;
  sub_26578A710();
  sub_26579E254();

  sub_26578422C(v3, v5);
  *a2 = v7;
  a2[2] = v8;
  a2[3] = v9;
  return v9 != 1;
}

unint64_t sub_26579C134()
{
  result = qword_2800211B8;
  if (!qword_2800211B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800211B8);
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

uint64_t sub_26579C1A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_26579C200(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_26579C278()
{
  result = qword_2800211C0;
  if (!qword_2800211C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800211C0);
  }

  return result;
}

unint64_t sub_26579C2D0()
{
  result = qword_280F95D50;
  if (!qword_280F95D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95D50);
  }

  return result;
}

unint64_t sub_26579C328()
{
  result = qword_280F95D58;
  if (!qword_280F95D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95D58);
  }

  return result;
}

unint64_t sub_26579C37C()
{
  result = qword_280F95D68;
  if (!qword_280F95D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95D68);
  }

  return result;
}

uint64_t sub_26579C3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

NSData __swiftcall AssertionAcquisitionRequest._bridgeToObjectiveC()()
{
  sub_26579E2A4();
  swift_allocObject();
  sub_26579E294();
  type metadata accessor for AssertionAcquisitionRequest(0);
  sub_26579D51C(&qword_280F957D0, type metadata accessor for AssertionAcquisitionRequest, &protocol conformance descriptor for AssertionAcquisitionRequest);
  v0 = sub_26579E284();
  v2 = v1;
  v3 = sub_26579E334();
  sub_26578422C(v0, v2);

  return v3;
}

uint64_t type metadata accessor for AssertionAcquisitionRequest(uint64_t a1)
{
  result = qword_280F95DC8;
  if (!qword_280F95DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssertionAcquisitionRequest.init(attribute:explanation:acquisitionDate:target:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v15 = *a5;
  v16 = a5[1];
  v17 = *(a5 + 16);
  v18 = sub_26579E364();
  (*(*(v18 - 8) + 32))(a8, a4, v18);
  v19 = type metadata accessor for AssertionAcquisitionRequest(0);
  result = sub_26579DFA8(a1, a8 + v19[5], type metadata accessor for AssertionAttribute);
  v21 = (a8 + v19[6]);
  *v21 = a2;
  v21[1] = a3;
  v22 = a8 + v19[8];
  *v22 = a6;
  *(v22 + 8) = a7 & 1;
  v23 = a8 + v19[7];
  *v23 = v15;
  *(v23 + 8) = v16;
  *(v23 + 16) = v17;
  return result;
}

uint64_t AssertionAcquisitionRequest.acquisitionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26579E364();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AssertionAcquisitionRequest.explanation.getter()
{
  v1 = *(v0 + *(type metadata accessor for AssertionAcquisitionRequest(0) + 24));

  return v1;
}

uint64_t AssertionAcquisitionRequest.target.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AssertionAcquisitionRequest(0) + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;

  return sub_265790CE4(v4, v5);
}

uint64_t sub_26579C78C()
{
  v1 = *v0;
  v2 = 0x7469736975716361;
  v3 = 0x74616E616C707865;
  v4 = 0x746567726174;
  if (v1 != 3)
  {
    v4 = 0x6E6F697461727564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7475626972747461;
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

uint64_t sub_26579C83C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26579DB74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26579C864(uint64_t a1)
{
  v2 = sub_26579CBA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26579C8A0(uint64_t a1)
{
  v2 = sub_26579CBA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssertionAcquisitionRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800211C8, &qword_2657A19C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26579CBA4();
  sub_26579EA04();
  LOBYTE(v15) = 0;
  sub_26579E364();
  sub_26579D51C(&qword_280F95B60, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_26579E8E4();
  if (!v2)
  {
    v9 = type metadata accessor for AssertionAcquisitionRequest(0);
    LOBYTE(v15) = 1;
    type metadata accessor for AssertionAttribute(0);
    sub_26579D51C(&qword_280F95718, type metadata accessor for AssertionAttribute, &protocol conformance descriptor for AssertionAttribute);
    sub_26579E8E4();
    LOBYTE(v15) = 2;
    sub_26579E8C4();
    v10 = v3 + *(v9 + 28);
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v15 = *v10;
    v16 = v11;
    v17 = v12;
    v14[7] = 3;
    sub_265790CE4(v15, v11);
    sub_26579CBF8();
    sub_26579E8E4();
    sub_265796744(v15, v16);
    LOBYTE(v15) = 4;
    sub_26579E8A4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_26579CBA4()
{
  result = qword_280F95DE8;
  if (!qword_280F95DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95DE8);
  }

  return result;
}

unint64_t sub_26579CBF8()
{
  result = qword_280F956E8[0];
  if (!qword_280F956E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F956E8);
  }

  return result;
}

uint64_t AssertionAcquisitionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v35 = type metadata accessor for AssertionAttribute(0);
  MEMORY[0x28223BE20](v35);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26579E364();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800211D0, &qword_2657A19C8);
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for AssertionAcquisitionRequest(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26579CBA4();
  v39 = v9;
  v13 = v40;
  sub_26579E9F4();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = v10;
  v40 = a1;
  v14 = v34;
  v15 = v12;
  LOBYTE(v41) = 0;
  sub_26579D51C(&qword_280F955E0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v16 = v36;
  sub_26579E854();
  v17 = *(v14 + 32);
  v36 = v5;
  v17(v15, v16, v5);
  LOBYTE(v41) = 1;
  sub_26579D51C(qword_280F95548, type metadata accessor for AssertionAttribute, &protocol conformance descriptor for AssertionAttribute);
  v18 = v4;
  sub_26579E854();
  v19 = v32;
  sub_26579DFA8(v18, v15 + v32[5], type metadata accessor for AssertionAttribute);
  LOBYTE(v41) = 2;
  v20 = sub_26579E834();
  v21 = (v15 + v19[6]);
  *v21 = v20;
  v21[1] = v22;
  v43 = 3;
  sub_26579D220();
  sub_26579E854();
  v23 = v42;
  v24 = v15 + v19[7];
  *v24 = v41;
  *(v24 + 16) = v23;
  LOBYTE(v41) = 4;
  v25 = v38;
  v26 = sub_26579E814();
  LODWORD(v35) = v27;
  v28 = v26;
  (*(v37 + 8))(v39, v25);
  v29 = v15 + v19[8];
  *v29 = v28;
  *(v29 + 8) = v35 & 1;
  sub_26579D274(v15, v33, type metadata accessor for AssertionAcquisitionRequest);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return sub_26579D2DC(v15, type metadata accessor for AssertionAcquisitionRequest);
}

unint64_t sub_26579D220()
{
  result = qword_280F95540;
  if (!qword_280F95540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95540);
  }

  return result;
}

uint64_t sub_26579D274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26579D2DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static AssertionAcquisitionRequest._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800211D8, &qword_2657A19D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  sub_26579E274();
  swift_allocObject();
  sub_26579E264();
  v6 = type metadata accessor for AssertionAcquisitionRequest(0);
  v7 = sub_26579E344();
  v9 = v8;
  sub_26579D51C(&qword_280F95588, type metadata accessor for AssertionAcquisitionRequest, &protocol conformance descriptor for AssertionAcquisitionRequest);
  sub_26579E254();
  sub_26579D564(a2);
  sub_26578422C(v7, v9);

  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  return sub_26579D5CC(v5, a2);
}

uint64_t sub_26579D51C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26579D564(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800211D8, &qword_2657A19D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26579D5CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800211D8, &qword_2657A19D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static AssertionAcquisitionRequest._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800211D8, &qword_2657A19D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v18 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  v14 = type metadata accessor for AssertionAcquisitionRequest(0);
  v15 = *(v14 - 8);
  v20 = *(v15 + 56);
  v20(v13, 1, 1, v14);
  if (a1)
  {
    sub_26579E274();
    swift_allocObject();
    sub_26579E264();
    v3 = sub_26579E344();
    v2 = v16;
    sub_26579D51C(&qword_280F95588, type metadata accessor for AssertionAcquisitionRequest, &protocol conformance descriptor for AssertionAcquisitionRequest);
    sub_26579E254();
    sub_26579D564(v13);
    sub_26578422C(v3, v2);

    v20(v11, 0, 1, v14);
    sub_26579D5CC(v11, v13);
    sub_26579DF38(v13, v8);
    if ((*(v15 + 48))(v8, 1, v14) != 1)
    {
      sub_26579D564(v13);
      return sub_26579DFA8(v8, v19, type metadata accessor for AssertionAcquisitionRequest);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_26578422C(v3, v2);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_26579D8D8(uint64_t a1)
{
  sub_26579E2A4();
  swift_allocObject();
  sub_26579E294();
  sub_26579D51C(&qword_280F957D0, type metadata accessor for AssertionAcquisitionRequest, &protocol conformance descriptor for AssertionAcquisitionRequest);
  v1 = sub_26579E284();
  v3 = v2;
  v4 = sub_26579E334();
  sub_26578422C(v1, v3);

  return v4;
}

uint64_t sub_26579D9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800211D8, &qword_2657A19D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  sub_26579E274();
  swift_allocObject();
  sub_26579E264();
  v8 = sub_26579E344();
  v10 = v9;
  sub_26579D51C(&qword_280F95588, type metadata accessor for AssertionAcquisitionRequest, &protocol conformance descriptor for AssertionAcquisitionRequest);
  sub_26579E254();
  sub_26579D564(a2);
  sub_26578422C(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_26579D5CC(v7, a2);
}

uint64_t sub_26579DB74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469736975716361 && a2 == 0xEF657461446E6F69;
  if (v4 || (sub_26579E924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xE900000000000065 || (sub_26579E924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616E616C707865 && a2 == 0xEB000000006E6F69 || (sub_26579E924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000 || (sub_26579E924() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_26579E924();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

BOOL _s16SessionAssertion0B18AcquisitionRequestV34_conditionallyBridgeFromObjectiveC_6resultSbSo6NSDataC_ACSgztFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800211D8, &qword_2657A19D0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-v7];
  sub_26579D564(a2);
  sub_26579E274();
  swift_allocObject();
  sub_26579E264();
  v9 = type metadata accessor for AssertionAcquisitionRequest(0);
  v10 = sub_26579E344();
  v12 = v11;
  sub_26579D51C(&qword_280F95588, type metadata accessor for AssertionAcquisitionRequest, &protocol conformance descriptor for AssertionAcquisitionRequest);
  sub_26579E254();

  sub_26578422C(v10, v12);
  v13 = *(v9 - 8);
  (*(v13 + 56))(v8, 0, 1, v9);
  sub_26579D5CC(v8, a2);
  sub_26579DF38(a2, v6);
  v14 = (*(v13 + 48))(v6, 1, v9) != 1;
  sub_26579D564(v6);
  return v14;
}

uint64_t sub_26579DF38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800211D8, &qword_2657A19D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26579DFA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_26579E038(uint64_t a1)
{
  sub_26579E364();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AssertionAttribute(319);
    if (v2 <= 0x3F)
    {
      sub_26579E0EC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26579E0EC()
{
  if (!qword_280F95690)
  {
    v0 = sub_26579E694();
    if (!v1)
    {
      atomic_store(v0, &qword_280F95690);
    }
  }
}

unint64_t sub_26579E150()
{
  result = qword_2800211E0;
  if (!qword_2800211E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800211E0);
  }

  return result;
}

unint64_t sub_26579E1A8()
{
  result = qword_280F95DD8;
  if (!qword_280F95DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95DD8);
  }

  return result;
}

unint64_t sub_26579E200()
{
  result = qword_280F95DE0;
  if (!qword_280F95DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95DE0);
  }

  return result;
}