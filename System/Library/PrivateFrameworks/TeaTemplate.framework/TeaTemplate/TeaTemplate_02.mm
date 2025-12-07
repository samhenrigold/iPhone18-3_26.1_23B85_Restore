uint64_t sub_1D79452B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10 = *a1;
  v11 = v4[3];
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v11);
  result = (*(v12 + 16))(&v20, a1, a2, a3, *(v10 + 80), *(v10 + 88), v11, v12);
  if (!v5)
  {
    v14 = v20;
    v15 = SizerResult.nonIntegral.getter();
    sub_1D79276B0(v15 & 1);
    if (*(a1 + 48) == 1)
    {
      CGRectGetHeight(*&v16);
    }

    else
    {
      CGRectGetWidth(*&v16);
    }

    result = swift_allocObject();
    *(result + 16) = v14;
    *a4 = result | 0x3000000000000000;
  }

  return result;
}

uint64_t sub_1D7945408()
{
  sub_1D79450A8();
  sub_1D796C860();
  MEMORY[0x1DA704750](0x7A69736572202B20, 0xE900000000000065);
  return 0;
}

uint64_t AltText.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void AltText.init(identifier:logic:attributedText:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v6 = *a3;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a4;
  a5[3] = v6;
  v7 = a4;
  v8 = sub_1D7921F20();

  a5[4] = v8;
}

uint64_t sub_1D7945518(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1D7945558(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id sub_1D79455B0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D79456B8(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D796EBB0;
  v7 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = sub_1D794577C();
  *(inited + 40) = a3;
  type metadata accessor for Key(0);
  sub_1D792FE4C();
  v8 = v7;
  v9 = a3;
  v10 = sub_1D796C240();
  v11 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v12 = sub_1D792FFF4(a1, a2, v10);

  return v12;
}

void sub_1D79456B8(uint64_t a1)
{
  if (!qword_1EC9D9FF8)
  {
    sub_1D7945710(255);
    v1 = sub_1D796C940();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9D9FF8);
    }
  }
}

void sub_1D7945710(uint64_t a1)
{
  if (!qword_1EC9DA000)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9DA000);
    }
  }
}

unint64_t sub_1D794577C()
{
  result = qword_1EC9DA008;
  if (!qword_1EC9DA008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC9DA008);
  }

  return result;
}

void sub_1D79457D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v9[0] = *a1;
    v9[1] = v6;
    v9[2] = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1D79461A0(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1D7946388(a1);
    sub_1D7945D84(a2, a3, v9);

    sub_1D7946388(v9);
  }
}

uint64_t sub_1D7945884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1D792CF90(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

double sub_1D79458D4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1D7945E90(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_1D79326F0(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t LayoutContext.contextFrame(for:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  OUTLINED_FUNCTION_3_3(v2 + 56, a2);
  if (*(*(v2 + 56) + 16) && (v5 = sub_1D792CF90(a1, v3), (v6 & 1) != 0))
  {
    OUTLINED_FUNCTION_5_3(v5);
  }

  else
  {
    v3 = 0;
  }

  swift_endAccess();
  return v3;
}

uint64_t LayoutContext.set(layoutAttributes:layoutContext:direction:metadata:for:)(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a1[3];
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v12);
  return sub_1D7933DA4(v14, a2, a3, a4, a5, a6, v6, v12, v13);
}

void __swiftcall LayoutContext.frame(for:)(__C::CGRect_optional *__return_ptr retstr, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  swift_beginAccess();
  v6 = *(v2 + 56);
  if (*(v6 + 16) && (v7 = sub_1D792CF90(countAndFlagsBits, object), (v8 & 1) != 0))
  {
    v9 = 0;
    v10 = *(*(v6 + 56) + 8 * v7);
    v11 = *(v10 + 32);
    v12 = *(v10 + 16);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v9 = 1;
  }

  swift_endAccess();
  retstr->value.origin = v12;
  retstr->value.size = v11;
  retstr->is_nil = v9;
}

uint64_t LayoutContext.embedContext(for:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  OUTLINED_FUNCTION_3_3(v2 + 72, a2);
  if (*(*(v2 + 72) + 16) && (v5 = sub_1D792CF90(a1, v3), (v6 & 1) != 0))
  {
    OUTLINED_FUNCTION_5_3(v5);
  }

  else
  {
    v3 = 0;
  }

  swift_endAccess();
  return v3;
}

Swift::OpaquePointer_optional __swiftcall LayoutContext.metadata(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  OUTLINED_FUNCTION_3_3(v1 + 64, a1._object);
  if (*(*(v1 + 64) + 16) && (v4 = sub_1D792CF90(countAndFlagsBits, object), (v5 & 1) != 0))
  {
    OUTLINED_FUNCTION_5_3(v4);
  }

  else
  {
    object = 0;
  }

  swift_endAccess();
  v7 = object;
  result.value._rawValue = v7;
  result.is_nil = v6;
  return result;
}

unint64_t LayoutContext.description.getter()
{
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_1D796C780();

  v10 = 0xD000000000000015;
  v11 = 0x80000001D7976370;
  OUTLINED_FUNCTION_4_3(v0 + 56, v9);
  type metadata accessor for LayoutContextFrame();

  v1 = sub_1D796C230();
  v3 = v2;

  MEMORY[0x1DA704750](v1, v3);

  MEMORY[0x1DA704750](0x736465626D65202CLL, 0xE90000000000003DLL);
  OUTLINED_FUNCTION_4_3(v0 + 72, &v8);

  v4 = sub_1D796C230();
  v6 = v5;

  MEMORY[0x1DA704750](v4, v6);

  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return v10;
}

double sub_1D7945D84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_1D792CF90(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    sub_1D7929994(0, &qword_1EE09C4B0, 255, sub_1D792A2B0);
    sub_1D796C880();

    v8 = (*(v11 + 56) + 48 * v7);
    v9 = v8[1];
    *a3 = *v8;
    a3[1] = v9;
    a3[2] = v8[2];
    sub_1D792A2B0(0);
    sub_1D796C8A0();
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_1D7945E90()
{
  sub_1D796CAC0();
  sub_1D796C320();
  v0 = sub_1D796CAF0();

  return sub_1D7945EF8(v0);
}

_OWORD *sub_1D7945F24(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1D792CF90(a2, a3);
  OUTLINED_FUNCTION_7_3();
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  sub_1D793274C();
  if ((sub_1D796C880() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1D792CF90(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1D796CA70();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  if (v12)
  {
    v15 = (*(*v4 + 56) + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v15);

    return sub_1D79326E0(a1, v15);
  }

  else
  {
    OUTLINED_FUNCTION_2_5();
    sub_1D7953510(v17, v18, v19, a1, v20);
  }
}

void sub_1D7946050(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1D792CF90(a2, a3);
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  sub_1D7929994(0, &qword_1EE09C4A8, 255, sub_1D7946448);
  if ((sub_1D796C880() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1D792CF90(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1D796CA70();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(*(v16 + 56) + 8 * v12) = a1;
  }

  else
  {
    sub_1D792D8B0(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_1D79461A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1D792CF90(a2, a3);
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  sub_1D7929994(0, &qword_1EE09C4B0, 255, sub_1D792A2B0);
  if ((sub_1D796C880() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1D792CF90(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1D796CA70();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = *(v16 + 56) + 48 * v12;

    return sub_1D79463E4(a1, v17);
  }

  else
  {
    sub_1D79535A8(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_1D79462F4(uint64_t a1, uint64_t a2)
{
  sub_1D792A2B0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7946388(uint64_t a1)
{
  sub_1D792C5E8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D79463E4(uint64_t a1, uint64_t a2)
{
  sub_1D792A2B0(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D7946448(uint64_t a1)
{
  if (!qword_1EE09C570)
  {
    sub_1D79464B0();
    v1 = sub_1D796C270();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE09C570);
    }
  }
}

unint64_t sub_1D79464B0()
{
  result = qword_1EE09D068[0];
  if (!qword_1EE09D068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE09D068);
  }

  return result;
}

uint64_t sub_1D7946504()
{
  if (*v0)
  {
    v1 = 0x676E696361705376;
  }

  else
  {
    v1 = 0x676E696361705368;
  }

  MEMORY[0x1DA704750](v1, 0xE800000000000000);

  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0x70536E6D756C6F63;
}

_BYTE *storeEnumTagSinglePayload for ColumnSpecSizer(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t If<A>(_:then:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1D7946744(a1, a2, a3, a4, a5, &unk_1F5288D30, sub_1D79466A8);
}

{
  return sub_1D7946744(a1, a2, a3, a4, a5, &unk_1F5288D58, sub_1D79467F4);
}

uint64_t sub_1D7946744(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  type metadata accessor for IfNode(0, a4, a5, a4);
  v15 = v12;
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a2;
  v13[5] = a3;
  sub_1D7938D28(v12);

  return sub_1D79466D0(&v15, a7, v13);
}

uint64_t If<A, B>(_:then:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return sub_1D7946938(a1, a2, a3, a4, a5, a6, a7, a8, a9, &unk_1F5288D80, sub_1D7946858);
}

{
  return sub_1D7946938(a1, a2, a3, a4, a5, a6, a7, a8, a9, &unk_1F5288DA8, sub_1D7946A98);
}

uint64_t sub_1D7946880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_1_7();
  swift_allocObject();
  return sub_1D7946B24();
}

uint64_t sub_1D7946938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_1_7();
  v19 = *v18;
  type metadata accessor for IfNode(0, v20, v21, v20);
  v24 = v19;
  v22 = swift_allocObject();
  v22[2] = v13;
  v22[3] = v12;
  v22[4] = v11;
  v22[5] = a7;
  v22[6] = a8;
  v22[7] = a9;
  v22[8] = v15;
  v22[9] = v14;

  return sub_1D7946880(&v24, a11, v22, v12, a7, a8, a9);
}

void sub_1D7946A04(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D79206C4();
  swift_allocObject();
  sub_1D796C440();
  *v8 = a1();
  type metadata accessor for Node(0, a3, a5, v9);

  sub_1D7920548();
}

uint64_t sub_1D7946AAC()
{
  OUTLINED_FUNCTION_0_14();
  v3 = type metadata accessor for Conditional(0, *(v0 + 168), *(v1 + 176), v2);
  OUTLINED_FUNCTION_2_6(v3, &protocol witness table for Conditional<A>);
  v6 = v4;
  return Node.init(kind:identifier:)(&v6, 0, 0);
}

uint64_t sub_1D7946B24()
{
  OUTLINED_FUNCTION_0_14();
  v2 = *(v1 + 176);
  v10[0] = *(v0 + 168);
  v10[1] = v3;
  v10[2] = v2;
  v10[3] = v4;
  v10[4] = v5;
  v10[5] = v6;
  v7 = type metadata accessor for ConditionalList(0, v10);
  OUTLINED_FUNCTION_2_6(v7, &protocol witness table for ConditionalList<A, B>);
  LOBYTE(v10[0]) = v8;
  return Node.init(kind:identifier:)(v10, 0, 0);
}

double IfNode.Else(elseBlock:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = *(v5 + 168);
  v6[3] = *(v5 + 176);
  v6[4] = a1;
  v6[5] = a2;
  v7 = v2[17];
  v8 = v2[18];
  v2[17] = sub_1D7946FC8;
  v2[18] = v6;

  sub_1D7935140(v7, v8);

  return result;
}

{
  v5 = *(v2 + 136);
  v4 = *(v2 + 144);
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  sub_1D7935140(v5, v4);

  return result;
}

void sub_1D7946C64(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D79206C4();
  swift_allocObject();
  sub_1D796C440();
  *v7 = a1();
  type metadata accessor for Node(0, a3, a4, v8);

  sub_1D7920548();
}

double sub_1D7946D94()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);

  sub_1D7935140(v0[17], v0[18]);

  return result;
}

void *IfNode.deinit()
{
  v0 = Node.deinit();
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);

  sub_1D7935140(v0[17], v0[18]);

  return v0;
}

uint64_t IfNode.__deallocating_deinit()
{
  v0 = IfNode.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 161, 7);
}

uint64_t IfNode.description.getter()
{
  MEMORY[0x1DA704750](2647625, 0xE300000000000000);
  sub_1D7946ECC();
  sub_1D796C860();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_1D7946ECC()
{
  result = qword_1EC9DA010[0];
  if (!qword_1EC9DA010[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EC9DA010);
  }

  return result;
}

double LayoutItemList.values.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

uint64_t LayoutItemList.__allocating_init()()
{
  OUTLINED_FUNCTION_3_4();
  v0 = swift_allocObject();
  LayoutItemList.init()();
  return v0;
}

void *LayoutItemList.init()()
{
  sub_1D796C690();
  v1 = sub_1D796C200();
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t sub_1D7947104(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_4();
  v4 = swift_allocObject();
  sub_1D794714C(a1, a2);
  return v4;
}

void *sub_1D794714C(uint64_t a1, uint64_t a2)
{
  sub_1D796C690();
  *(v2 + 16) = sub_1D796C200();
  *(v2 + 24) = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  *(v2 + 16) = a1;

  swift_beginAccess();
  *(v2 + 24) = a2;

  return v2;
}

void LayoutItemList.lookupValue(source:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = *(*v4 + 80);
  sub_1D796C690();
  OUTLINED_FUNCTION_0_15();
  v20 = v9;
  v21 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_4_3((v4 + 3), v22);
  v11 = v4[3];
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = *(v13 + 8);

  v15 = v14(v12, v13);
  sub_1D7934318(v15, v16, v11);
  v18 = v17;

  if (v18)
  {
    goto LABEL_4;
  }

  swift_beginAccess();
  sub_1D796C500();
  swift_endAccess();
  if (__swift_getEnumTagSinglePayload(v3, 1, v7) == 1)
  {
    (*(v20 + 8))(v3, v21);
LABEL_4:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  *(a2 + 24) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(*(v7 - 8) + 32))(boxed_opaque_existential_1, v3, v7);
}

uint64_t LayoutItemList.description.getter()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  v1 = sub_1D796CB50();
  MEMORY[0x1DA704750](v1);

  MEMORY[0x1DA704750](40, 0xE100000000000000);
  OUTLINED_FUNCTION_4_3(v0 + 16, v3);
  sub_1D796C690();
  sub_1D796C4F0();

  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_10_1();
  sub_1D796C370();

  sub_1D796C4F0();
  swift_getWitnessTable();
  sub_1D796C960();

  return v4;
}

uint64_t LayoutItemList.flipRightToLeft(bounds:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  OUTLINED_FUNCTION_4_3((v4 + 2), v24);
  v23[0] = v4[2];
  v18[1] = *(v10 + 80);
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v11 = sub_1D796C690();
  v12 = sub_1D796C4F0();

  WitnessTable = swift_getWitnessTable();
  v15 = sub_1D794789C(sub_1D7947C8C, v18, v12, v11, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v14);

  OUTLINED_FUNCTION_4_3((v5 + 3), v23);
  v16 = v5[3];

  return sub_1D7947104(v15, v16);
}

uint64_t sub_1D79476E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v16 = sub_1D796C690();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v23 - v19;
  (*(v17 + 16))(&v23 - v19, a1, v16, v18);
  if (__swift_getEnumTagSinglePayload(v20, 1, a2) == 1)
  {
    (*(v17 + 8))(v20, v16);
    v21 = 1;
  }

  else
  {
    (*(*(a3 + 24) + 8))(a2, a5, a6, a7, a8);
    (*(*(a2 - 8) + 8))(v20, a2);
    v21 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a4, v21, 1, a2);
}

uint64_t sub_1D794789C(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a8;
  v43 = a1;
  v44 = a2;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_7_4();
  v45 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_15();
  v47 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v17 = a4 - 8;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_7_4();
  v41 = v19;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_15();
  v35 = v21;
  v36 = v20;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_7();
  v23 = sub_1D796C540();
  if (!v23)
  {
    return sub_1D796C480();
  }

  v46 = v23;
  v50 = sub_1D796C830();
  v37 = sub_1D796C840();
  sub_1D796C7E0();
  result = sub_1D796C530();
  if ((v46 & 0x8000000000000000) == 0)
  {
    v32 = v11;
    v33 = a5;
    v25 = 0;
    v38 = (v47 + 16);
    v39 = v47 + 8;
    v40 = v8;
    while (!__OFADD__(v25, 1))
    {
      v47 = v25 + 1;
      v26 = sub_1D796C590();
      (*v38)(v16);
      v26(v49, 0);
      v27 = v48;
      v43(v16, v45);
      if (v27)
      {
        v30 = OUTLINED_FUNCTION_8_1();
        v31(v30);
        (*(v35 + 8))(v17, v36);

        return (*(v32 + 32))(v34, v45, v33);
      }

      v48 = 0;
      v28 = OUTLINED_FUNCTION_8_1();
      v29(v28);
      sub_1D796C820();
      result = sub_1D796C550();
      ++v25;
      if (v47 == v46)
      {
        (*(v35 + 8))(v17, v36);
        return v50;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7947C60@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  result = LayoutItemList.flipRightToLeft(bounds:)(a2, a3, a4, a5);
  *a1 = result;
  return result;
}

uint64_t Log.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  v4 = 10;
  return Node.init(kind:identifier:)(&v4, 0, 0);
}

unint64_t sub_1D7947D64()
{
  if (qword_1EC9D9E48 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC9DFA10;
  v2 = sub_1D796C5E0();
  sub_1D793F858(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D796EBB0;
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D793F970();
  *(v3 + 32) = v5;
  *(v3 + 40) = v4;

  sub_1D796C1D0("%@", 2, 2, &dword_1D791C000, v1, v2, v3);

  return 0x8000000000000000;
}

uint64_t Log.deinit()
{
  v0 = Node.deinit();

  return v0;
}

uint64_t Log.__deallocating_deinit()
{
  v0 = Log.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t Log.description.getter()
{
  MEMORY[0x1DA704750](*(v0 + 80), *(v0 + 88));
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 677867340;
}

uint64_t LayoutItem.value.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_2();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_8_2();
  sub_1D796C690();
  OUTLINED_FUNCTION_0_0();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t LayoutItem.value.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_8_2();
  v4 = *(v3 + 96);
  OUTLINED_FUNCTION_9_2(v5);
  OUTLINED_FUNCTION_8_2();
  sub_1D796C690();
  OUTLINED_FUNCTION_0_0();
  (*(v6 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t LayoutItem.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  LayoutItem.init(_:)(a1);
  return v2;
}

uint64_t LayoutItem.lookupValue(source:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_5();
  v4 = *(v3 + 80);
  sub_1D796C690();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_5_5();
  v6 = OUTLINED_FUNCTION_6_4();
  v7(v6);
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    v8 = OUTLINED_FUNCTION_7_5();
    result = v9(v8);
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    *(a1 + 24) = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return (*(*(v4 - 8) + 32))(boxed_opaque_existential_1, v1, v4);
  }

  return result;
}

uint64_t LayoutItem.description.getter()
{
  OUTLINED_FUNCTION_3_5();
  v2 = *(v1 + 80);
  v3 = sub_1D796C690();
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_5_5();
  v12 = OUTLINED_FUNCTION_6_4();
  v13(v12);
  if (__swift_getEnumTagSinglePayload(v0, 1, v2) == 1)
  {
    (*(v5 + 8))(v0, v3);
    v19 = sub_1D796CB50();
    v20 = v14;
    MEMORY[0x1DA704750](0x296C696E28, 0xE500000000000000);
    return v19;
  }

  else
  {
    (*(v8 + 32))(v11, v0, v2);
    v19 = 0;
    v20 = 0xE000000000000000;
    v16 = sub_1D796CB50();
    MEMORY[0x1DA704750](v16);

    MEMORY[0x1DA704750](40, 0xE100000000000000);
    sub_1D796C950();
    MEMORY[0x1DA704750](41, 0xE100000000000000);
    v15 = v19;
    (*(v8 + 8))(v11, v2);
  }

  return v15;
}

uint64_t LayoutItem.flipRightToLeft(bounds:)(double a1, double a2, double a3, double a4)
{
  v10 = *v4;
  v11 = *(*v4 + 80);
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_9();
  sub_1D796C690();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  OUTLINED_FUNCTION_3_5();
  v19 = *(v18 + 96);
  swift_beginAccess();
  v20 = 1;
  if (!__swift_getEnumTagSinglePayload(v4 + v19, 1, v11))
  {
    (*(v13 + 16))(v5, v4 + v19, v11);
    (*(*(*(v10 + 88) + 24) + 8))(v11, a1, a2, a3, a4);
    v21 = OUTLINED_FUNCTION_7_5();
    v22(v21);
    v20 = 0;
  }

  __swift_storeEnumTagSinglePayload(v17, v20, 1, v11);
  return LayoutItem.__allocating_init(_:)(v17);
}

uint64_t sub_1D79487AC@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  result = LayoutItem.flipRightToLeft(bounds:)(a2, a3, a4, a5);
  *a1 = result;
  return result;
}

uint64_t sub_1D7948814()
{
  v0 = [objc_opt_self() mainBundle];
  sub_1D7948A10(v0);
  sub_1D7948A80();
  result = sub_1D796C680();
  qword_1EC9DFA10 = result;
  return result;
}

void sub_1D7948998(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  byte_1EE09C7B8 = v1;
}

uint64_t sub_1D7948A10(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D796C310();

  return v3;
}

unint64_t sub_1D7948A80()
{
  result = qword_1EC9DA098;
  if (!qword_1EC9DA098)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC9DA098);
  }

  return result;
}

uint64_t sub_1D7948AD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *a1;
  v10 = swift_allocObject();
  v12 = v4[3];
  v11 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v12);
  result = (*(v11 + 16))(a1, a2, a3, *(v9 + 80), *(v9 + 88), v12, v11);
  if (v5)
  {
    return swift_deallocUninitializedObject();
  }

  *a4 = v10 | 0x5000000000000000;
  return result;
}

uint64_t sub_1D7948BF4()
{
  sub_1D796C780();
  sub_1D79450A8();
  sub_1D796C860();
  MEMORY[0x1DA704750](0x6E496E6F6E202B20, 0xEE006C6172676574);
  return 0;
}

uint64_t sub_1D7948C90@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  type metadata accessor for DimensionCursor(0, a1, a2, a1);
  sub_1D794D994(v13);
  if (sub_1D792C4B8(v13) == 1)
  {
    sub_1D7930964();
    swift_allocError();
    *v6 = 1;
    *(v6 + 8) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0;
    *(v6 + 48) = 6;
    return swift_willThrow();
  }

  else
  {
    v8 = v14;
    v9 = v15;
    v10 = DimensionCursor.origin.getter();
    v11 = DimensionCursor.position.getter();
    v12 = DimensionCursor.origin.getter();
    result = swift_allocObject();
    if (__OFSUB__(v5, 1))
    {
      __break(1u);
    }

    else
    {
      *(result + 16) = v10 + (v8 + v9) * ceil((v11 - v12) / (v8 + v9));
      *(result + 24) = v8 * v5 + v9 * (v5 - 1);
      *(result + 32) = 1;
      *a3 = result;
    }
  }

  return result;
}

uint64_t sub_1D7948E44(__n128 a1)
{
  v1 = sub_1D796C930();
  MEMORY[0x1DA704750](v1);

  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0x28736E6D756C6F63;
}

void *LayoutEdgeInsetAdjuster.init(top:left:bottom:right:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  *a5 = *result;
  a5[1] = v5;
  a5[2] = v6;
  a5[3] = v7;
  return result;
}

uint64_t static LayoutEdgeInsetAdjustment.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(*a1 >> 61)
  {
    case 1uLL:
      if (v3 >> 61 != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    case 2uLL:
      if (v3 >> 61 != 2)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    case 3uLL:
      if (v3 >> 61 != 3)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    case 4uLL:
      if (v3 >> 61 != 4)
      {
        goto LABEL_21;
      }

LABEL_12:
      v6 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v7 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v27 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v28 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D793BBD8(v3);
      sub_1D793BBD8(v2);
      v16 = OUTLINED_FUNCTION_4_4(v8, v9, v10, v11, v12, v13, v14, v15, v27, v28);
      if ((v16 & 1) == 0)
      {
        goto LABEL_22;
      }

      v24 = OUTLINED_FUNCTION_4_4(v16, v17, v18, v19, v20, v21, v22, v23, v7, v6);
      OUTLINED_FUNCTION_7_6();
      return v24 & 1;
    case 5uLL:
      if (v2 == 0xA000000000000000)
      {
        if (v3 == 0xA000000000000000)
        {
          sub_1D79436D4(0xA000000000000000);
          v25 = 0xA000000000000000;
          goto LABEL_19;
        }
      }

      else if (v3 == 0xA000000000000008)
      {
        sub_1D79436D4(0xA000000000000008);
        v25 = 0xA000000000000008;
LABEL_19:
        sub_1D79436D4(v25);
LABEL_20:
        v24 = 1;
        return v24 & 1;
      }

LABEL_21:
      sub_1D793BBD8(*a2);
      sub_1D793BBD8(v2);
LABEL_22:
      OUTLINED_FUNCTION_7_6();
LABEL_23:
      v24 = 0;
      return v24 & 1;
    default:
      if (v3 >> 61)
      {
        goto LABEL_21;
      }

      v4 = *(v2 + 16);
      v5 = *(v3 + 16);
      sub_1D793BBD8(*a2);
      sub_1D793BBD8(v2);
      OUTLINED_FUNCTION_7_6();
      if (v4 != v5)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
  }
}

double + infix(_:_:)()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_6();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_2_8(v2 | 0x2000000000000000);

  return sub_1D793BBD8(v3);
}

double - infix(_:_:)()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_6();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_2_8(v2 | 0x4000000000000000);

  return sub_1D793BBD8(v3);
}

double * infix(_:_:)()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_6();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_2_8(v2 | 0x6000000000000000);

  return sub_1D793BBD8(v3);
}

double / infix(_:_:)()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_6();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_2_8(v2 | 0x8000000000000000);

  return sub_1D793BBD8(v3);
}

double LayoutEdgeInsetAdjuster.adjust(layoutMargins:hSpacing:vSpacing:)(double a1, double a2, double a3, double a4)
{
  v9 = *v4;
  v10 = v4[1];
  v12 = v4[2];
  v11 = v4[3];
  OUTLINED_FUNCTION_6_5();
  sub_1D793BBC4(v9);
  v21 = OUTLINED_FUNCTION_5_6(v13, v14, v15, v16, v17, v18, v19, v20, v63, v9);
  v22.n128_f64[0] = a1;
  v25 = OUTLINED_FUNCTION_8_3(v22, v23, v24, v21);
  sub_1D79436C0(v67);
  OUTLINED_FUNCTION_6_5();
  sub_1D793BBC4(v10);
  v34 = OUTLINED_FUNCTION_5_6(v26, v27, v28, v29, v30, v31, v32, v33, v64, v10);
  v35.n128_f64[0] = a2;
  OUTLINED_FUNCTION_8_3(v35, v36, v37, v34);
  sub_1D79436C0(v68);
  OUTLINED_FUNCTION_6_5();
  sub_1D793BBC4(v12);
  v46 = OUTLINED_FUNCTION_5_6(v38, v39, v40, v41, v42, v43, v44, v45, v65, v12);
  v47.n128_f64[0] = a3;
  OUTLINED_FUNCTION_8_3(v47, v48, v49, v46);
  sub_1D79436C0(v69);
  OUTLINED_FUNCTION_6_5();
  sub_1D793BBC4(v11);
  v58 = OUTLINED_FUNCTION_5_6(v50, v51, v52, v53, v54, v55, v56, v57, v66, v11);
  v59.n128_f64[0] = a4;
  OUTLINED_FUNCTION_8_3(v59, v60, v61, v58);
  sub_1D79436C0(v70);
  return v25;
}

double sub_1D7949304(unint64_t *a1, double a2, double a3, double a4)
{
  v6 = *a1;
  if ((~*a1 & 0xF000000000000007) != 0)
  {
    v9 = *v4;
    v8 = v4[1];
    v11 = v4[2];
    v10 = v4[3];
    switch(v6 >> 61)
    {
      case 1uLL:
        v29 = v6 & 0x1FFFFFFFFFFFFFFFLL;
        v30 = *(v29 + 16);
        v31 = *(v29 + 24);
        v35 = *v4;
        v36 = v8;
        v37 = v11;
        v38 = v10;
        v34 = v30;
        sub_1D793BBD8(v30);
        v32 = sub_1D7949304(&v34, a2, a3, a4);
        sub_1D79436C0(v34);
        v35 = v9;
        v36 = v8;
        v37 = v11;
        v38 = v10;
        v34 = v31;
        sub_1D793BBD8(v31);
        v33 = sub_1D7949304(&v34, a2, a3, a4);
        sub_1D79436C0(v34);
        a2 = v32 + v33;
        break;
      case 2uLL:
        v19 = v6 & 0x1FFFFFFFFFFFFFFFLL;
        v20 = *(v19 + 16);
        v21 = *(v19 + 24);
        v35 = *v4;
        v36 = v8;
        v37 = v11;
        v38 = v10;
        v34 = v20;
        sub_1D793BBD8(v20);
        v22 = sub_1D7949304(&v34, a2, a3, a4);
        sub_1D79436C0(v34);
        v35 = v9;
        v36 = v8;
        v37 = v11;
        v38 = v10;
        v34 = v21;
        sub_1D793BBD8(v21);
        v23 = sub_1D7949304(&v34, a2, a3, a4);
        sub_1D79436C0(v34);
        a2 = v22 - v23;
        break;
      case 3uLL:
        v24 = v6 & 0x1FFFFFFFFFFFFFFFLL;
        v25 = *(v24 + 16);
        v26 = *(v24 + 24);
        v35 = *v4;
        v36 = v8;
        v37 = v11;
        v38 = v10;
        v34 = v25;
        sub_1D793BBD8(v25);
        v27 = sub_1D7949304(&v34, a2, a3, a4);
        sub_1D79436C0(v34);
        v35 = v9;
        v36 = v8;
        v37 = v11;
        v38 = v10;
        v34 = v26;
        sub_1D793BBD8(v26);
        v28 = sub_1D7949304(&v34, a2, a3, a4);
        sub_1D79436C0(v34);
        a2 = v27 * v28;
        break;
      case 4uLL:
        v14 = v6 & 0x1FFFFFFFFFFFFFFFLL;
        v15 = *(v14 + 16);
        v16 = *(v14 + 24);
        v35 = *v4;
        v36 = v8;
        v37 = v11;
        v38 = v10;
        v34 = v15;
        sub_1D793BBD8(v15);
        v17 = sub_1D7949304(&v34, a2, a3, a4);
        sub_1D79436C0(v34);
        v35 = v9;
        v36 = v8;
        v37 = v11;
        v38 = v10;
        v34 = v16;
        sub_1D793BBD8(v16);
        v18 = sub_1D7949304(&v34, a2, a3, a4);
        sub_1D79436C0(v34);
        a2 = v17 / v18;
        break;
      case 5uLL:
        if (v6 == 0xA000000000000000)
        {
          a2 = a3;
        }

        else
        {
          a2 = a4;
        }

        break;
      default:
        a2 = *(v6 + 16);
        break;
    }
  }

  return a2;
}

BOOL static LayoutEdgeInsetAdjuster.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if ((~*a1 & 0xF000000000000007) == 0)
  {
    sub_1D793BBC4(*a1);
    sub_1D793BBC4(v7);
    if ((~v7 & 0xF000000000000007) == 0)
    {
      sub_1D79436C0(v3);
      goto LABEL_8;
    }

LABEL_6:
    sub_1D79436C0(v3);
    v10 = v7;
LABEL_28:
    sub_1D79436C0(v10);
    return 0;
  }

  v52 = *a1;
  if ((~v7 & 0xF000000000000007) == 0)
  {
    sub_1D793BBC4(v3);
    sub_1D793BBC4(v7);
    sub_1D793BBC4(v3);
    sub_1D79436D4(v3);
    goto LABEL_6;
  }

  sub_1D793BBC4(v3);
  sub_1D793BBC4(v7);
  v11 = sub_1D793BBC4(v3);
  v20 = OUTLINED_FUNCTION_4_4(v12, v13, v14, v15, v16, v17, v18, v19, v7, v11, v52);
  sub_1D79436D4(v7);
  sub_1D79436D4(v3);
  sub_1D79436C0(v3);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if ((~v2 & 0xF000000000000007) == 0)
  {
    sub_1D793BBC4(v2);
    sub_1D793BBC4(v6);
    if ((~v6 & 0xF000000000000007) == 0)
    {
      sub_1D79436C0(v2);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if ((~v6 & 0xF000000000000007) == 0)
  {
    sub_1D793BBC4(v2);
    sub_1D793BBC4(v6);
    sub_1D793BBC4(v2);
    sub_1D79436D4(v2);
LABEL_13:
    sub_1D79436C0(v2);
    v10 = v6;
    goto LABEL_28;
  }

  sub_1D793BBC4(v2);
  sub_1D793BBC4(v6);
  v21 = sub_1D793BBC4(v2);
  v30 = OUTLINED_FUNCTION_4_4(v22, v23, v24, v25, v26, v27, v28, v29, v6, v21, v2);
  sub_1D79436D4(v6);
  sub_1D79436D4(v2);
  sub_1D79436C0(v2);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  if ((~v5 & 0xF000000000000007) == 0)
  {
    sub_1D793BBC4(v5);
    sub_1D793BBC4(v9);
    if ((~v9 & 0xF000000000000007) == 0)
    {
      sub_1D79436C0(v5);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if ((~v9 & 0xF000000000000007) == 0)
  {
    sub_1D793BBC4(v5);
    sub_1D793BBC4(v9);
    sub_1D793BBC4(v5);
    sub_1D79436D4(v5);
LABEL_20:
    sub_1D79436C0(v5);
    v10 = v9;
    goto LABEL_28;
  }

  sub_1D793BBC4(v5);
  sub_1D793BBC4(v9);
  v31 = sub_1D793BBC4(v5);
  v40 = OUTLINED_FUNCTION_4_4(v32, v33, v34, v35, v36, v37, v38, v39, v9, v31, v5);
  sub_1D79436D4(v9);
  sub_1D79436D4(v5);
  sub_1D79436C0(v5);
  if ((v40 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  if ((~v4 & 0xF000000000000007) != 0)
  {
    if ((~v8 & 0xF000000000000007) == 0)
    {
      sub_1D793BBC4(v4);
      sub_1D793BBC4(v8);
      sub_1D793BBC4(v4);
      sub_1D79436D4(v4);
      goto LABEL_27;
    }

    sub_1D793BBC4(v4);
    sub_1D793BBC4(v8);
    v42 = sub_1D793BBC4(v4);
    v51 = OUTLINED_FUNCTION_4_4(v43, v44, v45, v46, v47, v48, v49, v50, v8, v42, v4);
    OUTLINED_FUNCTION_7_6();
    sub_1D79436C0(v4);
    return (v51 & 1) != 0;
  }

  sub_1D793BBC4(v4);
  sub_1D793BBC4(v8);
  if ((~v8 & 0xF000000000000007) != 0)
  {
LABEL_27:
    sub_1D79436C0(v4);
    v10 = v8;
    goto LABEL_28;
  }

  sub_1D79436C0(v4);
  return 1;
}

uint64_t sub_1D79498A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 8))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D79498F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1D7949948(unint64_t *result, uint64_t a2)
{
  if (a2 < 5)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    v2 = (8 * (a2 - 5)) | 0xA000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_1D7949980(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7A && *(a1 + 32))
    {
      v2 = *a1 + 121;
    }

    else
    {
      v3 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
      v4 = v3 ^ 0x7E;
      v2 = 126 - v3;
      if (v4 >= 0x7A)
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

uint64_t sub_1D79499DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 122;
    *(result + 8) = 0;
    if (a3 >= 0x7A)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = ((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3) | (((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3)) << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t Pass.DynamicOptions.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Pass.cursorFramePass.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t Cursor.pass.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1_11(v2 + 56, a1);
  v4 = *(v2 + 80);
  *a2 = *(v2 + 56);
  *(a2 + 8) = *(v2 + 64);
  *(a2 + 24) = v4;
}

double Cursor.resizing.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 88);

  return result;
}

uint64_t Cursor.layoutOptions.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 128), 0x109uLL);
  memcpy(a1, (v1 + 128), 0x109uLL);
  return sub_1D7923AE4(__dst, v4);
}

__n128 Cursor.filledBounds.getter@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1_11(v2 + 624, a1);
  v4 = *(v2 + 656);
  result = *(v2 + 624);
  v6 = *(v2 + 640);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

void Cursor.sizingBehavior.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 714);
  *a1 = *(v1 + 713);
  a1[1] = v2;
}

uint64_t sub_1D7949C24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7949C74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D7949CCC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1D7949CE4(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D7949D14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1D7949D54(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DimensionSizerResult.ProcessResult(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DimensionSizerResult.ProcessResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1D7949E3C(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D7949E54(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t (*Template<A, B>(name:_:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t)
{
  v10 = *(a3 + 32);
  v11 = *(a3 + 33);
  *&v16 = a4;
  *(&v16 + 1) = a5;
  *&v17 = a6;
  *(&v17 + 1) = a7;
  type metadata accessor for Layout(0, &v16);
  v12 = *a3;
  v17 = a3[1];
  v16 = v12;
  v18 = v10;
  v19 = v11;

  v13 = Layout.__allocating_init(canvas:name:)(&v16, a1, a2);
  v14 = sub_1D7949F28(v13);

  return v14;
}

void sub_1D7949F6C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D794A788(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v6 = *(v5 + 16);
  if ((*(v5 + 24) >> 1) - v6 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 16 * v6 + 32), (a1 + 32), 16 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v7 = *(v5 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v5 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

TeaTemplate::SizeConstraints __swiftcall SizeConstraints.init(width:height:)(Swift::OpaquePointer width, Swift::OpaquePointer height)
{
  v2->_rawValue = width._rawValue;
  v2[1]._rawValue = height._rawValue;
  result.height = height;
  result.width = width;
  return result;
}

void SizeConstraints.adding(widthConstraint:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *v2;
  v7 = v2[1];
  sub_1D792E934(0, &qword_1EE09C488, &type metadata for SizeConstraint);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D796EBB0;
  *(inited + 32) = v4;
  *(inited + 40) = v5;

  sub_1D7949F6C(inited);
  *a2 = v6;
  a2[1] = v7;
}

void SizeConstraints.adding(heightConstraint:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *v2;
  v6 = v2[1];
  sub_1D792E934(0, &qword_1EE09C488, &type metadata for SizeConstraint);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D796EBB0;
  *(inited + 32) = v4;
  *(inited + 40) = v5;

  sub_1D7949F6C(inited);
  *a2 = v7;
  a2[1] = v6;
}

TeaTemplate::SizeConstraints __swiftcall SizeConstraints.adding(constraints:)(TeaTemplate::SizeConstraints constraints)
{
  v3 = v1;
  v4 = *constraints.width._rawValue;
  v5 = *(constraints.width._rawValue + 1);
  v6 = v2[1];
  v10 = *v2;

  sub_1D7949F6C(v4);
  sub_1D7949F6C(v5);
  *v3 = v10;
  v3[1] = v6;
  result.height._rawValue = v8;
  result.width._rawValue = v7;
  return result;
}

uint64_t static SizeConstraints.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D794A29C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1D794A29C(v2, v3);
}

uint64_t sub_1D794A29C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *(v3 - 1);
      v6 = *(v4 - 1);
      v7 = *v4;
      if (*v3)
      {
        if (v5 != v6)
        {
          v7 = 0;
        }

        if (v7 != 1)
        {
          return 0;
        }
      }

      else
      {
        if (v5 != v6)
        {
          LOBYTE(v7) = 1;
        }

        if (v7)
        {
          return 0;
        }
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t static SizeConstraints.none.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC9D9E50 != -1)
  {
    swift_once();
  }

  v2 = *algn_1EC9DA0A8;
  *a1 = qword_1EC9DA0A0;
  a1[1] = v2;
}

double sub_1D794A3C4@<D0>(char a1@<W0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  sub_1D792E934(0, &qword_1EE09C488, &type metadata for SizeConstraint);
  v6 = swift_allocObject();
  *&result = 1;
  *(v6 + 16) = xmmword_1D796EBB0;
  *(v6 + 32) = a3;
  *(v6 + 40) = a1;
  v8 = MEMORY[0x1E69E7CC0];
  *a2 = v6;
  a2[1] = v8;
  return result;
}

double sub_1D794A440@<D0>(char a1@<W0>, void *a2@<X8>, double a3@<D0>)
{
  sub_1D792E934(0, &qword_1EE09C488, &type metadata for SizeConstraint);
  v6 = swift_allocObject();
  *&result = 1;
  *(v6 + 16) = xmmword_1D796EBB0;
  *(v6 + 32) = a3;
  *(v6 + 40) = a1;
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v6;
  return result;
}

BOOL static SizeConstraint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t getEnumTagSinglePayload for LayoutGuideAdjuster.BoundsAdjuster.Value(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LayoutGuideAdjuster.BoundsAdjuster.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_1D794A5B0(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0 || (OUTLINED_FUNCTION_2_10(), v9 == v10))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_8();
    if (v5)
    {
      sub_1D792E934(0, &qword_1EC9DA0B0, MEMORY[0x1E69E7DE0]);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v11[2] = v4;
      v11[3] = 2 * ((v12 - 32) / 8);
      if (a1)
      {
LABEL_8:
        v13 = OUTLINED_FUNCTION_1_12();
        sub_1D794E15C(v13, v14, v15);
        *(a4 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v11 + 4, (a4 + 32), 8 * v4);
    goto LABEL_11;
  }

  if (v8 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_0_17();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1D794A68C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1D792E934(0, &qword_1EE09C488, &type metadata for SizeConstraint);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1D7929974((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D794A788(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1D794A68C(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_11TeaTemplate18LayoutDecoderErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

uint64_t sub_1D794A824(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D794A860(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D794A8B0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SizeToFitDimensionSizer(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SizeToFitDimensionSizer(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1D794AA8C(uint64_t a1@<X0>, void *a2@<X2>, const __CFAttributedString *a3@<X3>, uint64_t a4@<X4>, const __CFAttributedString *a5@<X8>)
{
  v6 = v5;
  swift_beginAccess();
  v12 = *(a1 + 64);
  if (!v12)
  {
    v27 = swift_allocObject();
    *(v27 + 40) = &type metadata for AltFlexibleTextSizer;
    *(v27 + 48) = &off_1F52899A0;
    *(v27 + 16) = a3;
    *(v27 + 24) = a4;
    *a5 = v27 | 0x2000000000000000;
    v28 = a3;

    return;
  }

  v13 = *(a1 + 80);
  if (v13 <= 0.0)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = 0u;
    *(v29 + 32) = 0u;
    if (qword_1EE09D478 == -1)
    {
LABEL_10:
      v30 = HIBYTE(word_1EE09D480);
      *(v29 + 48) = word_1EE09D480;
      *(v29 + 49) = v30;
      *a5 = v29;
      return;
    }

LABEL_34:
    swift_once();
    goto LABEL_10;
  }

  v76 = *(a1 + 56);
  v14 = *(a1 + 72);
  v15 = a2[3];
  if (v15)
  {
    v16 = a2[2];
    swift_beginAccess();
    v17 = a2[8];

    v18 = sub_1D7945884(v16, v15, v17);
    swift_endAccess();
    if (v18)
    {
      sub_1D79458D4(v18, __src);
      if (*(&__src[1] + 1))
      {
        sub_1D794B580();
        if (swift_dynamicCast())
        {
          v19 = __dst[0];
          v20 = v12;
          v21 = sub_1D7921F20();
          __dst[0] = v76;
          __dst[1] = v20;
          *&__dst[2] = v14;
          *&__dst[3] = v13;
          sub_1D794B150(v21, a1, __dst, __src);

          v23 = __src[2];
          v22 = *&__src[3];
          v24 = swift_allocObject();
          OUTLINED_FUNCTION_1_13();
          v25 = swift_allocObject();
          v26 = OUTLINED_FUNCTION_0_19(v25);
          *(v26 + 80) = v23;
          *(v26 + 96) = v22;
          *(v24 + 16) = v26 | 0x1000000000000000;
          *(v24 + 24) = v18;
          *a5 = v24 | 0x9000000000000000;
          return;
        }
      }

      else
      {

        sub_1D7925A20(__src);
      }
    }
  }

  else
  {
  }

  __dst[0] = v76;
  __dst[1] = v12;
  *&__dst[2] = v14;
  *&__dst[3] = v13;
  sub_1D794B150(a3, a1, __dst, __src);
  v31 = __src[0];
  v32 = __src[1];
  v74 = a5;
  v34 = __src[2];
  v33 = *&__src[3];
  v35 = v12;
  v36 = *(a4 + 16);
  if (!v36)
  {
    a5 = a3;

    v37 = MEMORY[0x1E69E7CC0];
LABEL_23:
    *&__src[0] = v37;
    sub_1D7926CFC(0, &qword_1EE09C568, &type metadata for AltTextSized, MEMORY[0x1E69E62F8]);
    sub_1D794B344();
    sub_1D794B3C0();
    v29 = __src;
    v50 = sub_1D796C360();
    v51 = 0;
    v52 = *(v37 + 16);
    for (i = 32; ; i += 96)
    {
      if (v52 == v51)
      {

        OUTLINED_FUNCTION_1_13();
        v60 = swift_allocObject();
        v61 = OUTLINED_FUNCTION_0_19(v60);
        *(v61 + 80) = v34;
        *(v61 + 96) = v33;
        v62 = v61 | 0x1000000000000000;
LABEL_32:
        *v74 = v62;
        return;
      }

      if (v51 >= *(v37 + 16))
      {
        break;
      }

      memcpy(__src, (v37 + i), sizeof(__src));
      v78[0] = *(&__src[1] + 1);
      v54 = *&__src[1];
      sub_1D794B414(__src, __dst);

      v56.n128_u64[0] = *(&v31 + 1);
      v55.n128_u64[0] = v31;
      v58.n128_u64[0] = *(&v32 + 1);
      v57.n128_u64[0] = v32;
      v59 = sub_1D795A214(a5, v50, v55, v56, v57, v58);
      if (v6)
      {
        sub_1D794B470(__src);

        return;
      }

      v29 = v59;

      if (v29)
      {

        v63 = *(&__src[4] + 1);
        v64 = __src[5];
        v65 = swift_allocObject();
        OUTLINED_FUNCTION_1_13();
        v66 = swift_allocObject();
        v67 = OUTLINED_FUNCTION_0_19(v66);
        *(v67 + 80) = v63;
        *(v67 + 88) = v64;
        *(v65 + 16) = v67 | 0x1000000000000000;
        sub_1D794B4C4(0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D796EBB0;
        *(inited + 56) = sub_1D794B580();
        *(inited + 32) = v54;
        sub_1D79464B0();
        v69 = v63;
        v70 = v54;
        v71 = sub_1D796C240();
        sub_1D794B470(__src);

        *(v65 + 24) = v71;
        v62 = v65 | 0x9000000000000000;
        goto LABEL_32;
      }

      sub_1D794B470(__src);
      ++v51;
    }

    __break(1u);
    goto LABEL_34;
  }

  v75 = v35;
  v83 = MEMORY[0x1E69E7CC0];
  sub_1D794E17C(0, v36, 0);
  v37 = v83;
  v38 = a4;
  v39 = v36 - 1;
  for (j = (v38 + 64); ; j += 5)
  {
    v41 = *(j - 3);
    v43 = *(j - 2);
    v42 = *(j - 1);
    v44 = *j;
    v78[0] = *(j - 4);
    v78[1] = v41;
    v79 = v43;
    v80 = v42;
    v81 = v44;

    v45 = v44;

    v46 = v43;
    a5 = a3;
    sub_1D794B21C(v78, a1, v76, v75, __src, v14, v13);
    if (v6)
    {
      break;
    }

    v6 = 0;
    v47 = v79;

    memcpy(__dst, __src, sizeof(__dst));
    v83 = v37;
    v49 = *(v37 + 16);
    v48 = *(v37 + 24);
    if (v49 >= v48 >> 1)
    {
      sub_1D794E17C((v48 > 1), v49 + 1, 1);
      v37 = v83;
    }

    *(v37 + 16) = v49 + 1;
    memcpy((v37 + 96 * v49 + 32), __dst, 0x60uLL);
    if (!v39)
    {

      goto LABEL_23;
    }

    --v39;
    a3 = a5;
  }

  v72 = v79;
  v73 = v81;

  __break(1u);
}

id sub_1D794B150@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  [a1 boundingRectWithSize:33 options:0 context:{v6, v7}];
  width = v14.size.width;
  height = v14.size.height;
  if (trunc(CGRectGetHeight(v14)) <= trunc(v7))
  {
    swift_beginAccess();
    v10 = *(a2 + 664);
  }

  else
  {
    v10 = 0uLL;
    width = 0.0;
    height = 0.0;
  }

  *a4 = v10;
  *(a4 + 16) = width;
  *(a4 + 24) = height;
  *(a4 + 32) = a1;
  *(a4 + 40) = v6;
  *(a4 + 48) = v7;

  return a1;
}

id sub_1D794B21C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  v19[0] = a3;
  v19[1] = a4;
  *&v19[2] = a6;
  *&v19[3] = a7;
  sub_1D794B150(v12, a2, v19, v20);
  v13 = v21;
  v14 = v20[0];
  v15 = v20[1];
  v16 = v22;
  *a5 = v9;
  *(a5 + 8) = v8;
  *(a5 + 16) = v10;
  *(a5 + 24) = v11;
  *(a5 + 32) = v12;
  *(a5 + 40) = v14;
  *(a5 + 56) = v15;
  *(a5 + 72) = v13;
  *(a5 + 80) = v16;

  v17 = v12;

  return v10;
}

unint64_t sub_1D794B344()
{
  result = qword_1EE09C560;
  if (!qword_1EE09C560)
  {
    sub_1D7926CFC(255, &qword_1EE09C568, &type metadata for AltTextSized, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE09C560);
  }

  return result;
}

unint64_t sub_1D794B3C0()
{
  result = qword_1EE09DB08[0];
  if (!qword_1EE09DB08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE09DB08);
  }

  return result;
}

void sub_1D794B4C4(uint64_t a1)
{
  if (!qword_1EE09C478)
  {
    sub_1D794B51C();
    v1 = sub_1D796C940();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE09C478);
    }
  }
}

void sub_1D794B51C()
{
  if (!qword_1EE09D058)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE09D058);
    }
  }
}

unint64_t sub_1D794B580()
{
  result = qword_1EE09C508;
  if (!qword_1EE09C508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE09C508);
  }

  return result;
}

__C::CGRect __swiftcall CGRect.replacing(origin:)(CGPoint origin)
{
  v3 = v2;
  v4 = v1;
  result.origin.y = origin.y;
  result.origin.x = origin.x;
  result.size.height = v3;
  result.size.width = v4;
  return result;
}

double sub_1D794B604()
{
  OUTLINED_FUNCTION_4_6();
  MaxX = CGRectGetMaxX(v3);
  v4.origin.x = OUTLINED_FUNCTION_0();
  v1 = MaxX - CGRectGetMaxX(v4);
  v5.origin.x = OUTLINED_FUNCTION_0();
  CGRectGetMinY(v5);
  v6.origin.x = OUTLINED_FUNCTION_0();
  CGRectGetWidth(v6);
  v7.origin.x = OUTLINED_FUNCTION_0();
  CGRectGetHeight(v7);
  return v1;
}

void sub_1D794B718(uint64_t a1, double (*a2)(double))
{
  OUTLINED_FUNCTION_7();
  v4 = v3;
  v6 = v5();
  v7 = OUTLINED_FUNCTION_0();
  v8 = a2(v7);
  *v4 = v6;
  v4[1] = v8;
}

__C::CGRect __swiftcall CGRect.verticalFlip(inBounds:)(__C::CGRect inBounds)
{
  OUTLINED_FUNCTION_4_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v21.origin.x = v9;
  v21.origin.y = v10;
  v21.size.width = v11;
  v21.size.height = v12;
  MinX = CGRectGetMinX(v21);
  v22.origin.x = v8;
  v22.origin.y = v6;
  v22.size.width = v4;
  v22.size.height = v2;
  MaxY = CGRectGetMaxY(v22);
  v23.origin.x = OUTLINED_FUNCTION_0();
  v14 = MaxY - CGRectGetMaxY(v23);
  v24.origin.x = OUTLINED_FUNCTION_0();
  Width = CGRectGetWidth(v24);
  v25.origin.x = OUTLINED_FUNCTION_0();
  Height = CGRectGetHeight(v25);
  v17 = MinX;
  v18 = v14;
  v19 = Width;
  result.size.height = Height;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

void CGRect.replacing(minX:)(double a1, double a2)
{
  v2.origin.x = OUTLINED_FUNCTION_2_11(a1, a2);
  CGRectGetMinY(v2);
  OUTLINED_FUNCTION_1_14();
}

void static CGRect.| infix(_:_:)(uint64_t a1)
{
  switch(*(a1 + 32))
  {
    case 2:
      OUTLINED_FUNCTION_1_14();
      CGRectGetMinY(v2);
      break;
    case 3:
      OUTLINED_FUNCTION_1_14();
      CGRectGetMinX(v1);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_1_14();
}

uint64_t sub_1D794B8FC(uint64_t a1)
{
  *(a1 + 8) = sub_1D794B964(&qword_1EE09C4E0, MEMORY[0x1E695EF80]);
  result = sub_1D794B964(&qword_1EE09C4E8, MEMORY[0x1E695EF68]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D794B964(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CGRectTransform(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 33))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CGRectTransform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_1D794BA30(uint64_t a1)
{
  if (*(a1 + 32) <= 4u)
  {
    return *(a1 + 32);
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1D794BA48(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t Node.init(kind:identifier:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  sub_1D796C170();
  OUTLINED_FUNCTION_1_15();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3_9();
  *(v6 + 32) = *a1;
  if (!a3)
  {
    sub_1D796C160();
    a2 = sub_1D796C150();
    a3 = v13;
    (*(v11 + 8))(v5, v4);
  }

  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 1;
  return v6;
}

uint64_t sub_1D794BB70()
{
  if (*(v0 + 72))
  {
    return 0;
  }

  else
  {
    return *(v0 + 48);
  }
}

uint64_t sub_1D794BB84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v9 = *v7;
  v10 = *a5;
  sub_1D7929258(a6, a7);
  v26 = v10;
  v12 = type metadata accessor for Sizing(0, *(v9 + 80), *(v9 + 88), v11);
  sub_1D79228AC(v12, v24);
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v13 = OUTLINED_FUNCTION_2_12();
  v15 = v14(v13);
  v16 = v15;
  if (!v8)
  {
    v22 = v15;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v17 = OUTLINED_FUNCTION_2_12();
    v18(v17);
    v20 = v26;
    if ((SizerResult.isAmbiguous.getter() & 1) == 0)
    {

      *a1 = v20;
      __swift_destroy_boxed_opaque_existential_1(v24);
      return v22;
    }

    v16 = v22;

    sub_1D7930964();
    swift_allocError();
    *v21 = 0u;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 6;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  return v16;
}

double sub_1D794BD90()
{
  OUTLINED_FUNCTION_7();
  if (*(v0 + 56))
  {
    v6 = (v0 + 72);
    v7 = (v0 + 80);
    v8 = (v0 + 88);
    OUTLINED_FUNCTION_0_20();
    v9();
    if (v1)
    {
      return v5;
    }

    OUTLINED_FUNCTION_4_7();
    v10 = (v0 + 64);
    goto LABEL_8;
  }

  v10 = (v0 + 64);
  v6 = (v0 + 72);
  v7 = (v0 + 80);
  v8 = (v0 + 88);
  OUTLINED_FUNCTION_0_20();
  if (!CGRectEqualToRect(v13, v14))
  {
    OUTLINED_FUNCTION_0_20();
    v11();
    if (!v1)
    {
      OUTLINED_FUNCTION_4_7();
LABEL_8:
      *v10 = v5;
      *v6 = v4;
      *v7 = v3;
      *v8 = v2;
    }
  }

  return v5;
}

uint64_t Node.__allocating_init(kind:identifier:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  Node.init(kind:identifier:)(a1, a2, a3);
  return v6;
}

uint64_t Node.__deallocating_deinit()
{
  Node.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 73, 7);
}

TeaTemplate::NodeKind_optional __swiftcall NodeKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D796C910();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NodeKind.rawValue.getter()
{
  result = 0x656D617266;
  switch(*v0)
  {
    case 1:
      result = 0x6563617073;
      break;
    case 2:
      result = 7892834;
      break;
    case 3:
      result = 0x79616C7265766FLL;
      break;
    case 4:
      result = 0x6465626D65;
      break;
    case 5:
      result = 1886351984;
      break;
    case 6:
      result = 0x63696D616E7964;
      break;
    case 7:
      result = 0x6B63617473;
      break;
    case 8:
      result = 0x68636145726F66;
      break;
    case 9:
      result = 0x65736C456669;
      break;
    case 0xA:
      result = 6778732;
      break;
    case 0xB:
      result = 0x74636570736E69;
      break;
    case 0xC:
      result = 0x74756F79616CLL;
      break;
    case 0xD:
      result = 0x786F4278656C66;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D794C1BC()
{
  result = qword_1EC9DA0B8[0];
  if (!qword_1EC9DA0B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC9DA0B8);
  }

  return result;
}

uint64_t sub_1D794C234@<X0>(uint64_t *a1@<X8>)
{
  result = NodeKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NodeKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NodeKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D794C45C(char a1)
{
  sub_1D796CAC0();
  MEMORY[0x1DA704EF0](a1 & 1);
  return sub_1D796CAF0();
}

uint64_t sub_1D794C4C0(uint64_t a1)
{
  sub_1D796CAC0();
  sub_1D794C434(v3, *v1);
  return sub_1D796CAF0();
}

_BYTE *sub_1D794C500(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D794C600(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v35 = a2;
  OUTLINED_FUNCTION_6_7();
  v7 = v6;
  sub_1D796C690();
  OUTLINED_FUNCTION_0_1();
  v32 = v9;
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v31 - v10;
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_8();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v31 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v20 = *(v13 + 16);
  v20(v31 - v21, v3, v2, v19);
  sub_1D793257C(0, qword_1EE09CFD0, &protocol descriptor for LayoutAttributesRepositioning);
  v22 = swift_dynamicCast();
  v36 = v7;
  v34 = v20;
  if (v22)
  {
    v31[0] = v3;
    sub_1D7924DA0(v37, &v39);
    v24 = v40;
    v23 = v41;
    v25 = __swift_project_boxed_opaque_existential_1(&v39, v40);
    v31[1] = v31;
    MEMORY[0x1EEE9AC00](v25);
    v26 = OUTLINED_FUNCTION_0();
    v27(v24, v23, v26);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v11, 0, 1, v2);
      (*(v13 + 32))(v36, v11, v2);
      return OUTLINED_FUNCTION_7_7();
    }

    __swift_storeEnumTagSinglePayload(v11, 1, 1, v2);
    (*(v32 + 8))(v11, v33);
    OUTLINED_FUNCTION_7_7();
    v7 = v36;
    v5 = v31[0];
    v20 = v34;
  }

  else
  {
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    sub_1D794CE18(v37);
  }

  type metadata accessor for LayoutDecoder(0, v2, *(*(v35 + 8) + 8), v29);
  (v20)(v17, v5, v2);
  OUTLINED_FUNCTION_0();
  sub_1D7952CC4();
  sub_1D79327B0(v30, v4);

  return (*(v13 + 32))(v7, v4, v2);
}

uint64_t LayoutAttributesType.flipRightToLeft(bounds:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_7();
  v7 = v6;
  OUTLINED_FUNCTION_0_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_8();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  type metadata accessor for LayoutDecoder(0, v2, *(*(v14 + 8) + 8), v15);
  v19 = *(v9 + 16);
  v19(v13, v3, v2);
  (*(a2 + 16))(v2, a2);
  v20.origin.x = OUTLINED_FUNCTION_0();
  CGRectGetMaxX(v20);
  v21.origin.x = OUTLINED_FUNCTION_0_21();
  CGRectGetMaxX(v21);
  v22.origin.x = OUTLINED_FUNCTION_0_21();
  CGRectGetMinY(v22);
  v23.origin.x = OUTLINED_FUNCTION_0_21();
  CGRectGetWidth(v23);
  v24.origin.x = OUTLINED_FUNCTION_0_21();
  CGRectGetHeight(v24);
  sub_1D7952CC4();
  sub_1D79327B0(v16, v4);

  return (*(v9 + 32))(v7, v4, v2);
}

uint64_t sub_1D794CE18(uint64_t a1)
{
  sub_1D794CEA0(0, &qword_1EC9DA140, qword_1EE09CFD0, &protocol descriptor for LayoutAttributesRepositioning, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D794CEA0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D793257C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

double static RectDimension.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EC9D9E58 != -1)
  {
    swift_once();
  }

  result = *&xmmword_1EC9DA148;
  *a1 = xmmword_1EC9DA148;
  return result;
}

float64x2_t RectDimension.integral.getter@<Q0>(float64x2_t *a1@<X8>)
{
  result = vrndpq_f64(*v1);
  *a1 = result;
  return result;
}

double RectDimension.union(_:)@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  if (*a1 >= *v2)
  {
    v3 = *v2;
  }

  else
  {
    v3 = *a1;
  }

  v4 = *a1 + a1[1];
  if (*v2 + v2[1] > v4)
  {
    v4 = *v2 + v2[1];
  }

  result = v4 - v3;
  *a2 = v3;
  a2[1] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FlexBoxItemFlex(uint64_t a1, int a2)
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D794D07C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1D794D0BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D794D11C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = v4;
  v11 = *a1;
  v12 = *(v6 + 24);
  v13 = *(v6 + 32);
  __swift_project_boxed_opaque_existential_1(v6, v12);
  (*(v13 + 16))(v26, a1, a2, a3, *(v11 + 80), *(v11 + 88), v12, v13);
  if (!v5)
  {
    v14 = v26[0];
    v16 = *(v6 + 48);
    v15 = *(v6 + 56);
    swift_beginAccess();
    sub_1D792D5D0(v16, v15, *(a3 + 56));
    v18 = v17;
    swift_endAccess();
    if (v18)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v14;
      v20 = *(v6 + 40);
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v21 + 24) = v18;
      *(v19 + 24) = sub_1D794D514;
      *(v19 + 32) = v21;
      v22 = v19 | 0x6000000000000000;
LABEL_4:
      *a4 = v22;
      return;
    }

    swift_beginAccess();
    if (!a1[8])
    {
      v24 = swift_allocObject();
      *(v24 + 40) = &type metadata for ResizeConstrainingSizer;
      *(v24 + 48) = &off_1F5289F58;
      v25 = swift_allocObject();
      *(v24 + 16) = v25;
      sub_1D794D4DC(v6, v25 + 16);

      v22 = v24 | 0x2000000000000000;
      goto LABEL_4;
    }

    sub_1D7930964();
    swift_allocError();
    *v23 = v16;
    *(v23 + 8) = v15;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 2;
    swift_willThrow();
  }
}

void sub_1D794D358(char a1@<W1>, void *a2@<X2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, CGFloat Width@<D2>, CGFloat Height@<D3>)
{
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  if (a1)
  {
    Width = CGRectGetWidth(*&v12);
  }

  else
  {
    Height = CGRectGetHeight(*&v12);
  }

  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = Width;
  *(a3 + 24) = Height;
  *(a3 + 32) = 1;
}

uint64_t sub_1D794D3E0()
{
  BYTE8(v2) = 0;
  sub_1D796C780();
  sub_1D79450A8();
  sub_1D796C860();
  MEMORY[0x1DA704750](0xD000000000000016, 0x80000001D7976700);
  *&v2 = *(v0 + 40);
  sub_1D796C860();
  MEMORY[0x1DA704750](0x203A6F74202CLL, 0xE600000000000000);
  MEMORY[0x1DA704750](*(v0 + 48), *(v0 + 56));
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return *(&v2 + 1);
}

uint64_t sub_1D794D530()
{
  sub_1D79450A8();
  sub_1D796C860();
  MEMORY[0x1DA704750](0x7265766E69202B20, 0xE900000000000074);
  return 0;
}

uint64_t sub_1D794D5AC(uint64_t a1, __n128 a2)
{
  v2 = sub_1D796C510();
  MEMORY[0x1DA704750](v2);

  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0x656C626978656C66;
}

_BYTE *storeEnumTagSinglePayload for BoolCondition(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t CursorFramePass.description.getter()
{
  if (!v0[1])
  {
    return 7631665;
  }

  MEMORY[0x1DA704750](*v0);
  return 0x202C646E32;
}

uint64_t sub_1D794D778(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D794D7C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1D794D81C(void *result, int a2)
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

uint64_t sub_1D794D84C()
{
  MEMORY[0x1DA704750](0x286F69746172, 0xE600000000000000);
  sub_1D796C860();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

uint64_t getEnumTagSinglePayload for Ratio(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 9))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for Ratio(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

double DimensionCursor.origin.getter()
{
  v1 = (*(v0 + 8) + 400);
  if (*v0)
  {
    memcpy(__dst, v1, sizeof(__dst));
    if (sub_1D792C4B8(__dst) != 1)
    {
      return *&__dst[9];
    }

    return 0.0;
  }

  memcpy(__dst, v1, sizeof(__dst));
  if (sub_1D792C4B8(__dst) == 1)
  {
    return 0.0;
  }

  return *&__dst[8];
}

CGFloat DimensionCursor.bounds.getter()
{
  v1 = *(v0 + 8);
  v2 = v1[12];
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[15];
  if (*v0)
  {
    return CGRectGetHeight(*&v2);
  }

  else
  {
    return CGRectGetWidth(*&v2);
  }
}

uint64_t sub_1D794DA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D794DA70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1D794DAB0(uint64_t result, int a2, int a3)
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

uint64_t sub_1D794DB10@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  memcpy(__dst, (v3 + 128), 0x109uLL);
  memcpy(a1, (v3 + 128), 0x109uLL);
  return sub_1D7923AE4(__dst, &v5);
}

uint64_t sub_1D794DC34(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t (*a11)(void))
{
  v17 = *a4;
  type metadata accessor for Overlay(0, a8, a9, a4);
  v23 = v17;
  v22 = a10;
  memset(v20, 0, sizeof(v20));
  v21 = 1;
  sub_1D7922754(v17);

  sub_1D7925620(&v23, &v22, a1, a2, a5, a6, a7, a3, v20);
  v18 = a11();

  return v18;
}

double sub_1D794DD7C(uint64_t *a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, uint64_t *a7)
{
  v13 = *a1;
  sub_1D792D620(*a7);
  if (!v7)
  {
    v15 = v14;
    v58.origin.x = a2;
    v58.origin.y = a3;
    v58.size.width = a4;
    v58.size.height = a5;
    if (CGRectEqualToRect(v58, *(v14 + 16)))
    {
    }

    else
    {
      v57 = type metadata accessor for Cursor(0, *(v13 + 80), *(v13 + 88), v16);
      v18 = v15[2];
      v17 = v15[3];
      v19 = *(a1 + 10);
      v37 = *(a1 + 9);
      v38 = v19;
      v20 = *(a1 + 12);
      v39 = *(a1 + 11);
      v40 = v20;
      v42 = *(a1 + 27);
      v43 = *(a1 + 29);
      v21 = *(a1 + 37);
      v48 = *(a1 + 35);
      v22 = v15[5];
      v23 = a1[26];
      v24 = a1[33];
      v25 = a1[34];
      v26 = *(a1 + 312);
      v36[0] = v15[4];
      v36[1] = v22;
      v41 = v23;
      v44 = 0;
      v45 = 0;
      v46 = v24;
      v47 = v25;
      v49 = v21;
      v50 = v26;
      v51 = vdupq_n_s64(0xF000000000000007);
      v52 = v51;
      v53 = v51;
      v54 = v51;
      v55 = 0;
      v56 = -1;
      memcpy(__dst, a1 + 50, sizeof(__dst));
      v34 = *(a1 + 48);
      v33 = 0x8000000000000000;
      v27 = *(a1 + 616);
      v28 = v23;
      v29 = v25;
      sub_1D792E84C(v32);
      v31[0] = v32[0];
      v31[1] = v32[1];
      sub_1D792B65C(v36, __dst, &v34, v18, v17, 0, v31, &v33, v27);
      a2 = sub_1D794BD90();
    }
  }

  return a2;
}

double sub_1D794DFD8()
{

  return result;
}

uint64_t sub_1D794E03C(__n128 a1)
{
  v2 = sub_1D794E0A4(a1, *(v1 + 40), *(v1 + 48));
  MEMORY[0x1DA704750](v2);

  return 0x656E694C74786574;
}

uint64_t sub_1D794E0A4(__n128 a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 678977901;
  }

  else
  {
    v3 = 678324589;
  }

  v6 = v3;
  v4 = sub_1D796C930();
  MEMORY[0x1DA704750](v4);

  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return v6;
}

char *sub_1D794E138(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_24(a3, result);
  }

  return result;
}

char *sub_1D794E15C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_24(a3, result);
  }

  return result;
}

char *sub_1D794E17C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D794E19C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D794E19C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D792FD4C(0, &qword_1EE09C490, &type metadata for AltTextSized, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[96 * v8] <= v12)
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D794E2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D794E330(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, char *, __n128), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a5;
  v48 = a4;
  OUTLINED_FUNCTION_5_7(a1, a2);
  v45 = v12;
  v46 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 80);
  OUTLINED_FUNCTION_0_1();
  v19 = v18;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v20);
  v49 = OUTLINED_FUNCTION_2_15(v21, v22, v23, v24, v25, v26, v27);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v44 - v29;
  v32 = type metadata accessor for Cursor(0, a6, a7, v31);
  v33 = OUTLINED_FUNCTION_3_10(v32);
  (*(v19 + 16))(v7, v54, v17);
  v34 = v46;
  swift_dynamicCast();
  sub_1D7942B34(v33, v15, v34, v30, v35);

  v36 = v50;
  (v48)(v51, v30);
  if (v36)
  {
    v37 = OUTLINED_FUNCTION_1_18();
    v38(v37);
  }

  else
  {
    v39 = v52;
    v40 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v34 = (*(v40 + 8))(v8, v54, v34, v17, *(v45 + 88), v39, v40);
    v42 = OUTLINED_FUNCTION_1_18();
    v43(v42);
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  return v34;
}

uint64_t sub_1D794E5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void *__return_ptr, char *, __n128)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a4;
  v45 = a5;
  v42[1] = a8;
  v43 = a3;
  OUTLINED_FUNCTION_5_7(a1, a2);
  v42[0] = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 80);
  OUTLINED_FUNCTION_0_1();
  v19 = v18;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v20);
  v44 = OUTLINED_FUNCTION_2_15(v21, v22, v23, v24, v25, v26, v27);
  OUTLINED_FUNCTION_0_1();
  v29 = v28;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v42 - v31;
  v34 = type metadata accessor for Cursor(0, a6, a7, v33);
  v35 = OUTLINED_FUNCTION_3_10(v34);
  (*(v19 + 16))(v8, v51, v17);
  v36 = v43;
  swift_dynamicCast();
  sub_1D7942B34(v35, v15, v36, v32, v37);

  v38 = v47;
  (v46)(v48, v32);
  if (v38)
  {
    return (*(v29 + 8))(v32, v44);
  }

  v40 = v49;
  v41 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  (*(v41 + 16))(v9, v51, v36, v17, *(v42[0] + 88), v40, v41);
  (*(v29 + 8))(v32, v44);
  return __swift_destroy_boxed_opaque_existential_1(v48);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D794E918(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D794E958(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D794E9B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *a1;
  v10 = *(v5 + 24);
  v11 = *(v5 + 32);
  __swift_project_boxed_opaque_existential_1(v5, v10);
  result = (*(v11 + 8))(a1, a2, a3, *(v9 + 80), *(v9 + 88), v10, v11);
  v13 = result;
  if (!v4)
  {
    sub_1D794EE3C();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D796EBB0;
    *(inited + 32) = *(v5 + 40);
    *(inited + 48) = 0;
    return sub_1D792D1AC(inited, v13);
  }

  return result;
}

void sub_1D794EAB4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = v4;
  v11 = *a1;
  v12 = v6[3];
  v13 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v12);
  (*(v13 + 16))(v20, a1, a2, a3, *(v11 + 80), *(v11 + 88), v12, v13);
  if (!v5)
  {
    v14 = *&v20[0];
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    v16 = v6[5];
    v17 = v6[6];
    sub_1D794EDE0(v6, v20);
    v18 = swift_allocObject();
    v19 = v20[1];
    *(v18 + 16) = v20[0];
    *(v18 + 32) = v19;
    *(v18 + 48) = v20[2];
    *(v18 + 64) = v21;
    *(v18 + 72) = v16;
    *(v18 + 80) = v17;
    *(v18 + 88) = a1;
    *(v15 + 24) = sub_1D794EE18;
    *(v15 + 32) = v18;
    *a4 = v15 | 0x7000000000000000;
  }
}

double sub_1D794EC24(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, uint64_t a6, uint64_t a7)
{
  if (*(a7 + 616) == 1)
  {
    v11 = -a5;
    if (*(a7 + 48))
    {
      v11 = a5;
    }

    v12 = v11 + a1;
  }

  else
  {
    v12 = a1 + a5;
  }

  v13 = a1;
  CGRectGetWidth(*(&a2 - 1));
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  CGRectGetHeight(v15);
  return v12;
}

uint64_t sub_1D794ED18()
{
  sub_1D79450A8();
  sub_1D796C860();
  MEMORY[0x1DA704750](0x657366666F202B20, 0xEA00000000002874);
  type metadata accessor for CGPoint(0);
  sub_1D796C860();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

void sub_1D794EE3C()
{
  if (!qword_1EE09C498)
  {
    v0 = sub_1D796C940();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE09C498);
    }
  }
}

TeaTemplate::LayoutContentScale_optional __swiftcall LayoutContentScale.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D796C910();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D794F008()
{
  result = qword_1EE09C410;
  if (!qword_1EE09C410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE09C410);
  }

  return result;
}

double *static SizerResult.frame(_:)@<X0>(double **a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  result = swift_allocObject();
  v11 = result;
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  if (qword_1EE09D478 != -1)
  {
    OUTLINED_FUNCTION_5_8();
    result = swift_once();
  }

  v12 = HIBYTE(word_1EE09D480);
  *(v11 + 48) = word_1EE09D480;
  *(v11 + 49) = v12;
  *a1 = v11;
  return result;
}

uint64_t sub_1D794F174(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1D794F64C(a1, sub_1D794F640, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1D794F204(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x77 && *(a1 + 8))
    {
      v2 = *a1 + 118;
    }

    else
    {
      v2 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
      if (v2 >= 0x76)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D794F24C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x76)
  {
    *result = a2 - 119;
    if (a3 >= 0x77)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x77)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SizerResult.ProcessResult(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SizerResult.ProcessResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1D794F358(uint64_t a1)
{
  if (*(a1 + 32) <= 1u)
  {
    return *(a1 + 32);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D794F370(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void sub_1D794F39C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D794F9BC(0, &qword_1EE09C408, MEMORY[0x1E69E6EC8]);
  v6 = sub_1D796C8E0();
  v7 = v6;
  if (!*(v5 + 16))
  {

LABEL_33:
    *v3 = v7;
    return;
  }

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
  v14 = v6 + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        sub_1D7963888(0, (v28 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
    goto LABEL_33;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = (*(v5 + 56) + 32 * (v15 | (v8 << 6)));
    if (v4)
    {
      sub_1D79326E0(v18, v29);
    }

    else
    {
      sub_1D79326F0(v18, v29);
    }

    sub_1D796CAC0();
    sub_1D796C320();
    v19 = sub_1D796CAF0();
    v20 = -1 << *(v7 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    sub_1D79326E0(v29, (*(v7 + 56) + 32 * v23));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_1D794F64C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_1D794F85C(a1, a2, a3, v30);
  v26 = v30[0];
  v27 = v30[1];
  v28 = v30[2];
  v29 = v31;

  while (1)
  {
    sub_1D794F898(&v24);
    if (!v25)
    {
      sub_1D794F9B4(v26);

      return;
    }

    sub_1D79326E0(&v24, v23);
    v7 = *a5;
    v9 = sub_1D7945E90();
    v10 = *(v7 + 16);
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    if (*(v7 + 24) >= v12)
    {
      if (a4)
      {
        if (v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1D794F9BC(0, &qword_1EC9DA158, MEMORY[0x1E69E6DC8]);
        sub_1D796C890();
        if (v13)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1D794F39C(v12, a4 & 1);
      v14 = sub_1D7945E90();
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_18;
      }

      v9 = v14;
      if (v13)
      {
LABEL_10:
        v16 = *a5;
        sub_1D79326F0(*(*a5 + 56) + 32 * v9, v22);
        __swift_destroy_boxed_opaque_existential_1(v23);
        v17 = (*(v16 + 56) + 32 * v9);
        __swift_destroy_boxed_opaque_existential_1(v17);
        sub_1D79326E0(v22, v17);
        goto LABEL_14;
      }
    }

    v18 = *a5;
    *(*a5 + 8 * (v9 >> 6) + 64) |= 1 << v9;
    sub_1D79326E0(v23, (*(v18 + 56) + 32 * v9));
    v19 = *(v18 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_17;
    }

    *(v18 + 16) = v21;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  sub_1D796CA70();
  __break(1u);
}

uint64_t sub_1D794F85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

_OWORD *sub_1D794F898@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    sub_1D79326F0(*(v3 + 56) + ((v8 << 11) | (32 * __clz(__rbit64(v7)))), &v13);
    result = sub_1D79326E0(&v13, &v16);
    v11 = *(&v17 + 1);
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v11)
    {
      v12 = v1[5];
      v13 = v16;
      v14 = v17;
      v15 = v11;
      v12(&v13);
      return sub_1D794FA2C(&v13);
    }

    else
    {
      *a1 = 0u;
      a1[1] = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v11 = 0;
        v9 = 0;
        v16 = 0u;
        v17 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D794F9BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D79464B0();
    v7 = a3(a1, &type metadata for SizerResultMetadataKey, MEMORY[0x1E69E7CA0] + 8, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D794FA2C(uint64_t a1)
{
  sub_1D794FA88();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D794FA88()
{
  if (!qword_1EC9DA160)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9DA160);
    }
  }
}

uint64_t Optional<A>.flipRightToLeft(bounds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v13 = *(a1 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22, v18);
  v23 = 1;
  if (__swift_getEnumTagSinglePayload(v20, 1, v13) != 1)
  {
    (*(v14 + 32))(v16, v20, v13);
    (*(*(a2 + 24) + 8))(v13, a4, a5, a6, a7);
    (*(v14 + 8))(v16, v13);
    v23 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v23, 1, v13);
}

uint64_t sub_1D794FCEC(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t FastLayoutDecoderError.hashValue.getter()
{
  v1 = *v0;
  sub_1D796CAC0();
  MEMORY[0x1DA704EF0](v1);
  return sub_1D796CAF0();
}

unint64_t sub_1D794FE40()
{
  result = qword_1EC9DA168[0];
  if (!qword_1EC9DA168[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC9DA168);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FastLayoutDecoderError(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 LayoutGuideAdjuster.init(layoutMarginAdjuster:safeAreaInsetAdjuster:layoutBoundsAdjuster:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  v6 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v6;
  result = *a2;
  v8 = *(a2 + 16);
  *(a4 + 32) = *a2;
  *(a4 + 48) = v8;
  *(a4 + 64) = v4;
  *(a4 + 72) = v5;
  return result;
}

uint64_t static LayoutGuideAdjuster.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 64);
  v17 = *(a1 + 72);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v18 = *(a1 + 48);
  v19 = *(a2 + 40);
  v20 = *(a1 + 56);
  v21 = *(a2 + 48);
  v22 = *(a2 + 56);
  v23 = *a2;
  v13 = *(a2 + 64);
  v16 = *(a2 + 72);
  v27 = v2;
  v28 = v3;
  v29 = v5;
  v30 = v4;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  sub_1D793BBC4(v2);
  sub_1D793BBC4(v3);
  sub_1D793BBC4(v5);
  sub_1D793BBC4(v4);
  sub_1D793BBC4(v23);
  sub_1D793BBC4(v9);
  sub_1D793BBC4(v10);
  sub_1D793BBC4(v11);
  LOBYTE(v4) = static LayoutEdgeInsetAdjuster.== infix(_:_:)(&v27, &v23);
  OUTLINED_FUNCTION_0_26(v23);
  OUTLINED_FUNCTION_0_26(v27);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v27 = v7;
  v28 = v6;
  v29 = v18;
  v30 = v20;
  v23 = v12;
  v24 = v19;
  v25 = v21;
  v26 = v22;
  sub_1D793BBC4(v7);
  sub_1D793BBC4(v6);
  sub_1D793BBC4(v18);
  sub_1D793BBC4(v20);
  sub_1D793BBC4(v12);
  sub_1D793BBC4(v19);
  sub_1D793BBC4(v21);
  sub_1D793BBC4(v22);
  v14 = static LayoutEdgeInsetAdjuster.== infix(_:_:)(&v27, &v23);
  OUTLINED_FUNCTION_0_26(v23);
  OUTLINED_FUNCTION_0_26(v27);
  if (!v14)
  {
    return 0;
  }

  if (v17 == 255)
  {
    if (v16 == 255)
    {
      return 1;
    }
  }

  else if (v16 != 255)
  {
    if (v17)
    {
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v16)
    {
      return 0;
    }

    if (v8 == v13)
    {
      return 1;
    }
  }

  return 0;
}

double LayoutGuideAdjuster.layoutMarginAdjuster.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_3_12(*v1, a1);

  return sub_1D793BBC4(v2);
}

double LayoutGuideAdjuster.safeAreaInsetAdjuster.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_3_12(*(v1 + 32), a1);

  return sub_1D793BBC4(v2);
}

uint64_t static LayoutGuideAdjuster.BoundsAdjuster.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 255)
  {
    if (v3 == 255)
    {
      return 1;
    }
  }

  else if (v3 != 255)
  {
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v3)
    {
      return 0;
    }

    if (*a1 == *a2)
    {
      return 1;
    }
  }

  return 0;
}

BOOL static LayoutGuideAdjuster.BoundsAdjuster.Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1D79502C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 73))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 72);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = (v3 ^ 0xFF) - 1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7950304(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = ~a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LayoutGuideAdjuster.BoundsAdjuster(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = (v3 ^ 0xFF) - 1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LayoutGuideAdjuster.BoundsAdjuster(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = ~a2;
    }
  }

  return result;
}

void sub_1D7950444(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, unint64_t *a5@<X8>)
{
  v6 = v5;
  v10 = a2[3];
  if (v10)
  {
    v12 = a2[2];
    swift_beginAccess();
    v13 = sub_1D7945884(v12, v10, a2[8]);
    swift_endAccess();
    if (v13)
    {
      sub_1D79458D4(v13, __src);
      if (*(&__src[1] + 1))
      {
        sub_1D794B580();
        if (swift_dynamicCast())
        {
          v14 = sub_1D7921F20();
          sub_1D7950994(v14, a1, __src);

          v16 = __src[2];
          v15 = *&__src[3];
          v17 = swift_allocObject();
          OUTLINED_FUNCTION_1_13();
          v18 = swift_allocObject();
          v19 = OUTLINED_FUNCTION_0_19(v18);
          *(v19 + 80) = v16;
          *(v19 + 96) = v15;
          *(v17 + 16) = v19 | 0x1000000000000000;
          *(v17 + 24) = v13;
          *a5 = v17 | 0x9000000000000000;
          return;
        }
      }

      else
      {

        sub_1D7925A20(__src);
      }
    }
  }

  v61 = a5;
  sub_1D7950994(a3, a1, __src);
  v20 = __src[0];
  v21 = __src[1];
  v23 = __src[2];
  v22 = *&__src[3];
  v24 = *(a4 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v69 = MEMORY[0x1E69E7CC0];
    sub_1D794E17C(0, v24, 0);
    v25 = v69;
    v26 = (a4 + 64);
    while (1)
    {
      v27 = *(v26 - 3);
      v29 = *(v26 - 2);
      v28 = *(v26 - 1);
      v30 = *v26;
      v64[0] = *(v26 - 4);
      v64[1] = v27;
      v65 = v29;
      v66 = v28;
      v67 = v30;

      v31 = v30;

      v32 = v29;
      sub_1D7950A44(v64, a1, __src);
      if (v6)
      {
        break;
      }

      v6 = 0;
      v33 = v65;

      memcpy(__dst, __src, sizeof(__dst));
      v69 = v25;
      v35 = *(v25 + 16);
      v34 = *(v25 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1D794E17C((v34 > 1), v35 + 1, 1);
        v25 = v69;
      }

      *(v25 + 16) = v35 + 1;
      memcpy((v25 + 96 * v35 + 32), __dst, 0x60uLL);
      v26 += 5;
      if (!--v24)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    *&__src[0] = v25;
    sub_1D7926CFC(0, &qword_1EE09C568, &type metadata for AltTextSized, MEMORY[0x1E69E62F8]);
    sub_1D794B344();
    sub_1D794B3C0();
    v36 = sub_1D796C360();
    v37 = 0;
    v38 = *(v25 + 16);
    for (i = 32; ; i += 96)
    {
      if (v38 == v37)
      {

        OUTLINED_FUNCTION_1_13();
        v47 = swift_allocObject();
        v48 = OUTLINED_FUNCTION_0_19(v47);
        *(v48 + 80) = v23;
        *(v48 + 96) = v22;
        v49 = v48 | 0x1000000000000000;
LABEL_23:
        *v61 = v49;
        return;
      }

      if (v37 >= *(v25 + 16))
      {
        break;
      }

      memcpy(__src, (v25 + i), sizeof(__src));
      v64[0] = *(&__src[1] + 1);
      v40 = *&__src[1];
      sub_1D794B414(__src, __dst);

      v42.n128_u64[0] = *(&v20 + 1);
      v41.n128_u64[0] = v20;
      v44.n128_u64[0] = *(&v21 + 1);
      v43.n128_u64[0] = v21;
      v45 = sub_1D795A214(a3, v36, v41, v42, v43, v44);
      if (v6)
      {
        sub_1D794B470(__src);

        return;
      }

      v46 = v45;

      if (v46)
      {

        v50 = *(&__src[4] + 1);
        v51 = __src[5];
        v52 = swift_allocObject();
        OUTLINED_FUNCTION_1_13();
        v53 = swift_allocObject();
        v54 = OUTLINED_FUNCTION_0_19(v53);
        *(v54 + 80) = v50;
        *(v54 + 88) = v51;
        *(v52 + 16) = v54 | 0x1000000000000000;
        sub_1D794B4C4(0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D796EBB0;
        *(inited + 56) = sub_1D794B580();
        *(inited + 32) = v40;
        sub_1D79464B0();
        v56 = v50;
        v57 = v40;
        v58 = sub_1D796C240();
        sub_1D794B470(__src);

        *(v52 + 24) = v58;
        v49 = v52 | 0x9000000000000000;
        goto LABEL_23;
      }

      sub_1D794B470(__src);
      ++v37;
    }

    __break(1u);
  }

  v59 = v65;
  v60 = v67;

  __break(1u);
}

id sub_1D7950994@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  Cursor.remainingBounds.getter(a1, a2);
  [a1 boundingRectWithSize:1 options:0 context:{v5, v6}];
  v8 = v7;
  v10 = v9;
  v11 = swift_beginAccess();
  v12 = *(a2 + 664);
  v13 = *(a2 + 672);
  Cursor.remainingBounds.getter(v11, v14);
  *a3 = v12;
  a3[1] = v13;
  a3[2] = v8;
  a3[3] = v10;
  a3[4] = a1;
  a3[5] = v15;
  a3[6] = v16;

  return a1;
}

id sub_1D7950A44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  sub_1D7950994(v8, a2, v15);
  v9 = v16;
  v10 = v15[0];
  v11 = v15[1];
  v12 = v17;
  *a3 = v5;
  *(a3 + 8) = v4;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v10;
  *(a3 + 56) = v11;
  *(a3 + 72) = v9;
  *(a3 + 80) = v12;

  v13 = v8;

  return v6;
}

double sub_1D7950B48@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v6 = v4;
  v11 = *a1;
  v12 = v6[3];
  v13 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v12);
  (*(v13 + 16))(v19, a1, a2, a3, *(v11 + 80), *(v11 + 88), v12, v13);
  if (!v5)
  {
    v15 = *&v19[0];
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_1D7950D90(v6, v19);
    v17 = swift_allocObject();
    v18 = v19[1];
    *(v17 + 16) = v19[0];
    *(v17 + 32) = v18;
    *(v17 + 48) = v19[2];
    *(v17 + 64) = v20;
    *(v17 + 72) = a1;
    *(v16 + 24) = sub_1D7950DC8;
    *(v16 + 32) = v17;
    *a4 = v16 | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1D7950D10()
{
  sub_1D79450A8();
  sub_1D796C860();
  MEMORY[0x1DA704750](0x656D6F6567202B20, 0xEB00000000797274);
  return 0;
}

uint64_t CursorResizing.isNestedResizing.getter()
{
  v1 = *v0 >> 62;
  if (v1)
  {
    if (v1 == 1)
    {
      OUTLINED_FUNCTION_0_27();
      v2 = CursorResizing.isNestedResizing.getter();
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t CursorResizing.identifier.getter()
{
  v1 = *v0 >> 62;
  if (v1)
  {
    if (v1 == 1)
    {
      OUTLINED_FUNCTION_0_27();
      return CursorResizing.identifier.getter();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = *(*v0 + 16);
  }

  return v2;
}

uint64_t CursorResizing.description.getter()
{
  v1 = *v0 >> 62;
  if (!v1)
  {
    v4 = 539782767;
    MEMORY[0x1DA704750](*(*v0 + 16), *(*v0 + 24));
    return v4;
  }

  if (v1 == 1)
  {
    v4 = 0x202C6465626D65;

    v2 = CursorResizing.description.getter();
    MEMORY[0x1DA704750](v2);

    return v4;
  }

  return 6710895;
}

unint64_t get_enum_tag_for_layout_string_11TeaTemplate14CursorResizingO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1D7950FA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D7950FF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1D7951044(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_1D795107C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_beginAccess();
  if (*(a1 + 64))
  {
    v16 = *(a1 + 72);
    v15 = *(a1 + 80);
    if (*(a1 + 48))
    {
      OUTLINED_FUNCTION_3_13(v7, v8, v9, v10, v11, v12, v13, v14, v30);
      v17 = *(a1 + 664);
      v18 = *(a1 + 672);
      OUTLINED_FUNCTION_4_2();
      v19 = swift_allocObject();
      v20 = swift_allocObject();
      v20[2] = v17;
      v20[3] = v18;
      v20[4] = v16;
      v20[5] = v15;
      if (qword_1EE09D478 != -1)
      {
        OUTLINED_FUNCTION_0_22(&qword_1EE09D478);
      }

      OUTLINED_FUNCTION_1_21(&word_1EE09D480);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1D796EBB0;
      *(v21 + 32) = v15;
      *(v21 + 40) = 1;
      *(v19 + 24) = MEMORY[0x1E69E7CC0];
    }

    else
    {
      OUTLINED_FUNCTION_3_13(v7, v8, v9, v10, v11, v12, v13, v14, v30);
      v25 = *(a1 + 664);
      v26 = *(a1 + 672);
      OUTLINED_FUNCTION_4_2();
      v19 = swift_allocObject();
      v27 = swift_allocObject();
      v27[2] = v25;
      v27[3] = v26;
      v27[4] = v16;
      v27[5] = v15;
      if (qword_1EE09D478 != -1)
      {
        OUTLINED_FUNCTION_0_22(&qword_1EE09D478);
      }

      OUTLINED_FUNCTION_1_21(&word_1EE09D480);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1D796EBB0;
      *(v28 + 32) = v16;
      *(v28 + 40) = 1;
      *(v19 + 24) = v28;
      v21 = MEMORY[0x1E69E7CC0];
    }

    *(v19 + 32) = v21;
    OUTLINED_FUNCTION_4_2();
    v22 = swift_allocObject();
    *(v22 + 16) = v19 | 0x4000000000000000;
    *(v22 + 24) = v6;
    v23 = (v22 + 32);
    v24 = 0x4000000000000000;
  }

  else
  {
    v22 = swift_allocObject();
    *(v22 + 40) = &type metadata for FlexibleMaxSizer;
    *(v22 + 48) = &off_1F528B0D8;
    *(v22 + 16) = v6;
    v23 = (v22 + 24);
    v24 = 0x2000000000000000;
  }

  *v23 = v5;
  *a2 = v24 | v22;
}

uint64_t sub_1D79512C8()
{
  sub_1D796C780();
  MEMORY[0x1DA704750](0x69617274736E6F63, 0xED000028676E696ELL);
  sub_1D796C860();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

uint64_t Inspect.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  v4 = 11;
  return Node.init(kind:identifier:)(&v4, 0, 0);
}

unint64_t sub_1D795140C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v21 = a3;
  v6 = *(*v3 + 168);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - v8;
  v12 = type metadata accessor for Inspect.State(0, v6, *(v10 + 176), v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  (*(v7 + 16))(v9, a2, v6, v14);
  sub_1D79515E4(a1, v9, *v21, v16, v17);
  v18 = v3[10];

  v18(v16);
  (*(v13 + 8))(v16, v12);
  return 0x8000000000000000;
}

uint64_t sub_1D79515E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t x3_0@<X3>)
{
  v9 = *a1;
  *a4 = a1;
  v10 = *(v9 + 80);
  v11 = type metadata accessor for Inspect.State(0, v10, *(v9 + 88), x3_0);
  result = (*(*(v10 - 8) + 32))(&a4[*(v11 + 36)], a2, v10);
  *&a4[*(v11 + 40)] = a3;
  return result;
}

uint64_t Inspect.deinit()
{
  v0 = Node.deinit();

  return v0;
}

uint64_t Inspect.__deallocating_deinit()
{
  v0 = Inspect.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t sub_1D795180C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 8) & ~v7, v6, v4);
    }

    else
    {
      v17 = *result;
      if (*result >= 0xFFFFFFFFuLL)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1D7951954(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v19 = &a1[v10 + 8] & ~v10;

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *a1 = v18;
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1D7951B48(uint64_t a1, uint64_t a2, char a3)
{
  MEMORY[0x1DA704750](0x286465786966, 0xE600000000000000);
  sub_1D796C860();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D7951C04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 6)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7951C44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_1D7951CA0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_28();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1D7951D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 32);
  type metadata accessor for StackLayer(0, *(*v4 + 168), *(*v4 + 176), a4);
  v11 = *(a3 + 16);
  v12 = *a3;
  v9 = sub_1D796C200();
  v4[11] = a2;
  v4[12] = v9;
  v4[10] = a1;
  v15 = 7;
  v13[1] = v11;
  v13[0] = v12;
  v14 = v8;

  return sub_1D79202C0(&v15, a1, a2, v13);
}

uint64_t sub_1D7951E18(uint64_t a1)
{
  v2 = *v1;
  swift_beginAccess();
  type metadata accessor for StackLayer(255, *(v2 + 168), *(v2 + 176), v3);
  sub_1D796C4F0();

  sub_1D796C4C0();
  return swift_endAccess();
}

double sub_1D7951EC8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1D7951CCC();
  v7 = *(v5 + 168);
  v8 = *(v5 + 176);
  type metadata accessor for StackLayer(0, v7, v8, v9);
  OUTLINED_FUNCTION_3_15();
  v10 = sub_1D796C430();
  v22 = v10;
  OUTLINED_FUNCTION_3_15();
  if (v10 != sub_1D796C4A0())
  {
    v20 = v7;
    v19 = v8;
    do
    {
      OUTLINED_FUNCTION_3_15();
      v12 = sub_1D796C490();
      sub_1D796C450();
      if (v12)
      {
        v13 = *(v6 + 32 + 8 * v10);
      }

      else
      {
        v13 = sub_1D796C790();
      }

      sub_1D796C4E0();
      v14 = *(v13 + 16);
      type metadata accessor for Node(0, v7, v8, v15);

      v16 = sub_1D796C430();
      v21 = v16;
      if (v16 == sub_1D796C4A0())
      {
      }

      else
      {
        do
        {
          v17 = sub_1D796C490();
          sub_1D796C450();
          if (v17)
          {
            v18 = *(v14 + 32 + 8 * v16);
          }

          else
          {
            v18 = sub_1D796C790();
          }

          sub_1D796C4E0();
          (*(*v18 + 144))(a1, a2);

          v16 = v21;
        }

        while (v21 != sub_1D796C4A0());

        v8 = v19;
        v7 = v20;
      }

      OUTLINED_FUNCTION_3_15();
      v10 = v22;
    }

    while (v22 != sub_1D796C4A0());
  }

  return result;
}

unint64_t sub_1D7952124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v5;
  *&v10 = Cursor.remainingBounds.getter(a1, a2);
  sub_1D79522FC(a1, a2, a3, &v15, v10, v11);
  if (!v4)
  {
    if (v16)
    {
      return 0x8000000000000000;
    }

    else
    {
      a3 = swift_allocObject();
      type metadata accessor for NodeRepositioning(0, *(v9 + 168), *(v9 + 176), v12);
      v13 = sub_1D792EC4C();
      *(a3 + 16) = sub_1D7928004(v5, v13 & 1, sub_1D7952908, v5);
      swift_retain_n();
    }
  }

  return a3;
}

double sub_1D7952274(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = a8;
  sub_1D79522FC(a1, a2, a3, &v12, *&a8, *&a9);
  if (!v9 && (v13 & 1) == 0)
  {
    return v12;
  }

  return v10;
}

void sub_1D79522FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<D0>, uint64_t a6@<D1>)
{
  v15 = *v6;
  v51 = (a1 + 280);
  v16 = sub_1D7951CCC();
  v54 = v6;
  v49 = *(v15 + 176);
  v50 = *(v15 + 168);
  type metadata accessor for StackLayer(0, v50, v49, v17);
  v18 = sub_1D796C430();
  v82 = v18;
  v45 = v16 + 32;
  v47 = a6;
  v48 = a5;
  v19 = 1;
  v20 = 0.0;
  v46 = vdupq_n_s64(0xF000000000000007);
  v21 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  while (v18 != sub_1D796C4A0())
  {
    v83 = v19;
    v24 = sub_1D796C490();
    sub_1D796C450();
    if (v24)
    {
      v25 = *(v45 + 8 * v18);
    }

    else
    {
      v25 = sub_1D796C790();
    }

    sub_1D796C4E0();
    v27 = type metadata accessor for Cursor(0, v50, v49, v26);
    Cursor.remainingBounds.getter(v27, v28);
    v29 = *(a1 + 208);
    v30 = *(a1 + 264);
    v31 = *(a1 + 272);
    v32 = *(a1 + 312);
    v59[0] = v33;
    v59[1] = v34;
    v35 = *(a1 + 160);
    v60 = *(a1 + 144);
    v61 = v35;
    v36 = *(a1 + 192);
    v62 = *(a1 + 176);
    v63 = v36;
    v65 = *(a1 + 216);
    v66 = *(a1 + 232);
    v67 = 0;
    v68 = 0;
    v64 = v29;
    v69 = v30;
    v70 = v31;
    v37 = v51[1];
    v71 = *v51;
    v72 = v37;
    v73 = v32;
    *v74 = *v81;
    *&v74[3] = *&v81[3];
    v75 = v46;
    v76 = v46;
    v77 = v46;
    v78 = v46;
    v79 = 0;
    v80 = -1;
    memcpy(__dst, (a1 + 400), sizeof(__dst));
    v57 = *(a1 + 48);
    v38 = qword_1EE09D488;
    v39 = v29;
    v40 = v31;
    if (v38 != -1)
    {
      swift_once();
    }

    v56 = word_1EE09D492;
    v55 = *(a1 + 88);
    v41 = sub_1D792B65C(v59, __dst, &v57, v48, v47, 0, &v56, &v55, *(a1 + 616));
    v42 = *(v25 + 16);

    sub_1D792B794(v54, v42, v41, a2, a3);
    if (v7)
    {

      return;
    }

    Cursor.absoluteFrame.getter();
    OUTLINED_FUNCTION_2_18();
    if ((v83 & 1) == 0)
    {
      v84.origin.x = OUTLINED_FUNCTION_2_0();
      v85.origin.x = v8;
      v85.origin.y = v9;
      v85.size.width = v10;
      v85.size.height = v11;
      CGRectUnion(v84, v85);
      OUTLINED_FUNCTION_2_18();
    }

    v19 = 0;
    v18 = v82;
    v20 = v8;
    v21 = v9;
    v22 = v10;
    v23 = v11;
  }

  if ((v19 & 1) == 0)
  {
    OUTLINED_FUNCTION_2_0();
    sub_1D7927B8C(v43);
  }

  *a4 = v20;
  *(a4 + 8) = v21;
  *(a4 + 16) = v22;
  *(a4 + 24) = v23;
  *(a4 + 32) = v19 & 1;
}

double sub_1D795271C()
{

  return result;
}

uint64_t Stack.deinit()
{
  v0 = Node.deinit();

  return v0;
}

uint64_t Stack.__deallocating_deinit()
{
  v0 = Stack.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

uint64_t sub_1D79528C4()
{
  sub_1D79528A4();
  v0 = OUTLINED_FUNCTION_0_28();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1D7952924(char *a1@<X0>, void *a2@<X3>, uint64_t a3@<X4>, char a4@<W5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 1);
  switch(a4)
  {
    case 1:
      v27 = *&a2;
      v28 = OUTLINED_FUNCTION_2_19(&unk_1F528B698);
      OUTLINED_FUNCTION_0_29(v28, v33, v34, v35);
      DimensionCursor.position.getter();
      OUTLINED_FUNCTION_1_22();
      v32 = sub_1D794DAEC();
      goto LABEL_6;
    case 2:
      v20 = OUTLINED_FUNCTION_2_19(&unk_1F528B698);
      v38 = v8;
      v39 = v9;
      type metadata accessor for DimensionCursor(0, a5, a6, v21);
      v22 = DimensionCursor.position.getter();
      sub_1D794DB10(v36);
      v23 = v37;
      sub_1D7952C94(a2, a3, 2);
      v24 = v23;
      sub_1D79243AC(v36);
      [a2 scaledValueForValue:v24 compatibleWithTraitCollection:*&a3];
      v26 = v25;
      sub_1D7952CA8(a2, a3, 2);

      *(v20 + 16) = v22;
      *(v20 + 24) = v26;
      *(v20 + 32) = 1;
      *a7 = v20;
      break;
    case 3:
      v27 = *&a2;
      v28 = OUTLINED_FUNCTION_2_19(&unk_1F528B698);
      OUTLINED_FUNCTION_0_29(v28, v29, v30, v31);
      DimensionCursor.position.getter();
      OUTLINED_FUNCTION_1_22();
      v32 = DimensionCursor.bounds.getter();
LABEL_6:
      *(v28 + 16) = v7;
      *(v28 + 24) = v32 * v27;
      *(v28 + 32) = 1;
      *a7 = v28;
      break;
    default:
      v14 = OUTLINED_FUNCTION_2_19(&unk_1F528B698);
      OUTLINED_FUNCTION_0_29(v14, v15, v16, v17);
      *(v14 + 16) = DimensionCursor.position.getter();
      *(v14 + 24) = *&a2;
      *(v14 + 32) = 1;
      *a7 = v14;
      break;
  }
}

uint64_t sub_1D7952B40(uint64_t a1, uint64_t a2, char a3)
{
  MEMORY[0x1DA704750](0x286465786966, 0xE600000000000000);
  sub_1D796C860();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D7952C00(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7952C40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

id sub_1D7952C94(id result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
    return result;
  }

  return result;
}

void sub_1D7952CA8(id a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }
}

uint64_t sub_1D7952CC4()
{
  OUTLINED_FUNCTION_12_1();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_0();
  sub_1D7952D20();
  return v0;
}

void *sub_1D7952D20()
{
  OUTLINED_FUNCTION_12_1();
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v40 = sub_1D796CB20();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v12 = v11 - v10;
  v41 = v0;
  v13 = *(v8 + 80);
  *(&v46[0] + 1) = v13;
  __swift_allocate_boxed_opaque_existential_1(&v45);
  OUTLINED_FUNCTION_15_1();
  v39 = v13;
  (*(v14 + 16))();
  sub_1D796CB00();
  v38 = v12;
  sub_1D796CB10();
  sub_1D796C850();

  for (i = MEMORY[0x1E69E7CC8]; ; i[2] = v26)
  {
    while (1)
    {
      sub_1D796C8F0();
      v46[0] = v43[1];
      v46[1] = v44;
      v45 = v43[0];
      if (!*(&v44 + 1))
      {

        type metadata accessor for CGRect(0);
        *(&v46[0] + 1) = v27;
        v28 = swift_allocObject();
        *&v45 = v28;
        v28[2] = v5;
        v28[3] = v3;
        v28[4] = v2;
        v28[5] = v1;
        sub_1D79326E0(&v45, v43);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v42[0] = i;
        sub_1D7945F24(v43, 0x656D617266, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
        v30 = *&v42[0];
        OUTLINED_FUNCTION_9_4();
        v31(v7, v39);
        OUTLINED_FUNCTION_9_4();
        v32(v38, v40);
        v33 = v41 + *(*v41 + 96);
        *v33 = v30;
        v33[8] = 1;
        v34 = OUTLINED_FUNCTION_13_1();
        type metadata accessor for LayoutDecoder.ObjectPath(v34, v39, v35, v36);
        swift_storeEnumTagMultiPayload();
        return v41;
      }

      v16 = v45;
      sub_1D79326E0(v46, v43);
      if (*(&v16 + 1))
      {
        break;
      }

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v43);
    }

    sub_1D79326F0(v43, v42);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = sub_1D792CF90(v16, *(&v16 + 1));
    if (__OFADD__(i[2], (v18 & 1) == 0))
    {
      break;
    }

    v19 = v17;
    v20 = v18;
    sub_1D793274C();
    if (sub_1D796C880())
    {
      v21 = sub_1D792CF90(v16, *(&v16 + 1));
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_16;
      }

      v19 = v21;
    }

    if (v20)
    {

      v23 = (i[7] + 32 * v19);
      __swift_destroy_boxed_opaque_existential_1(v23);
      sub_1D79326E0(v42, v23);
      goto LABEL_10;
    }

    i[(v19 >> 6) + 8] |= 1 << v19;
    *(i[6] + 16 * v19) = v16;
    sub_1D79326E0(v42, (i[7] + 32 * v19));
    __swift_destroy_boxed_opaque_existential_1(v43);
    v24 = i[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_1D796CA70();
  __break(1u);
  return result;
}

uint64_t sub_1D7953160(uint64_t a1)
{
  sub_1D79534BC();
  swift_allocError();
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 2;
  return swift_willThrow();
}

uint64_t sub_1D79531BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 9;
  if (*(v3 + 64) > 9uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
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
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
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
    goto LABEL_22;
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

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1D79532E0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 9)
  {
    v5 = 9;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_1D79534BC()
{
  result = qword_1EC9DA270;
  if (!qword_1EC9DA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA270);
  }

  return result;
}

_OWORD *sub_1D7953510(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_1_23(a1, a2, a3, a4, a5);
  result = sub_1D79326E0(v8, (v7 + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

unint64_t sub_1D7953554()
{
  result = qword_1EC9DA288;
  if (!qword_1EC9DA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA288);
  }

  return result;
}

void sub_1D79535A8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_1_23(a1, a2, a3, a4, a5);
  v8 = (v7 + 48 * v5);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  v8[2] = v9[2];
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_16_1(v6, v13);
  }
}

uint64_t Prop.init(_:_:)(uint64_t a1, void *a2)
{
  *(v2 + 80) = a1;
  sub_1D7924F60(a2, v2 + 88);
  v8 = 5;
  memset(v6, 0, sizeof(v6));
  v7 = 1;
  v4 = sub_1D79202C0(&v8, 0, 0, v6);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v4;
}

uint64_t sub_1D79536C0()
{
  OUTLINED_FUNCTION_2_21();
  swift_allocObject();
  return sub_1D7953720();
}

uint64_t sub_1D7953720()
{
  OUTLINED_FUNCTION_2_21();
  v6 = *(v5 + 32);
  *(v1 + 80) = v7;
  sub_1D7924F60(v4, v1 + 88);
  v13 = 5;
  v8 = *v0;
  v11[1] = v0[1];
  v11[0] = v8;
  v12 = v6;
  v9 = sub_1D79202C0(&v13, v3, v2, v11);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v9;
}

uint64_t sub_1D79537A8()
{
  OUTLINED_FUNCTION_1_24();
  v2 = v1;
  OUTLINED_FUNCTION_1_24();
  v4 = *(v3 + 176);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  swift_getAtKeyPath();
  v15 = *(v2 + 184);
  v9.n128_u64[0] = *(v2 + 168);
  v9.n128_u64[1] = v4;
  v10 = OUTLINED_FUNCTION_0_31(v9, v15);
  v16[3] = type metadata accessor for Prop(v10, v11);
  v16[4] = &protocol witness table for Node<A>;
  v16[0] = v0;
  v12 = v15.n128_u64[1];
  v13 = *(v15.n128_u64[1] + 8);

  v13(v16, v4, v12);
  (*(v5 + 8))(v8, v4);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

unint64_t sub_1D7953910()
{
  OUTLINED_FUNCTION_1_24();
  v2 = v1;
  OUTLINED_FUNCTION_1_24();
  v4 = *(v3 + 176);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  swift_getAtKeyPath();
  v16 = *(v2 + 184);
  v9.n128_u64[0] = *(v2 + 168);
  v9.n128_u64[1] = v4;
  v10 = OUTLINED_FUNCTION_0_31(v9, v16);
  v17[3] = type metadata accessor for Prop(v10, v11);
  v17[4] = &protocol witness table for Node<A>;
  v17[0] = v0;
  v12 = v16.n128_u64[1];
  v13 = *(v16.n128_u64[1] + 16);
  v14 = sub_1D7953C04();

  v13(v0 + 88, v17, v14, v4, v12);
  (*(v5 + 8))(v8, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return 0x8000000000000000;
}

uint64_t sub_1D7953AE8()
{

  return __swift_destroy_boxed_opaque_existential_1((v0 + 88));
}

uint64_t Prop.deinit()
{
  v0 = Node.deinit();

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  return v0;
}

uint64_t Prop.__deallocating_deinit()
{
  v0 = Prop.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t Prop.description.getter()
{
  MEMORY[0x1DA704750](0x28706F7250, 0xE500000000000000);
  sub_1D7953C04();
  sub_1D796C860();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_1D7953C04()
{
  result = qword_1EE09D140;
  if (!qword_1EE09D140)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE09D140);
  }

  return result;
}

uint64_t ConditionalList.condition.getter@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v170 = a2;
  v158 = *(a1 + 7);
  v2 = *(*(v158 + 24) + 16);
  v161 = *(a1 + 5);
  v3 = *(v161 + 1);
  v168 = a1;
  v4 = *(a1 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v156 = v2;
  v155 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v155);
  v154[1] = v154 - v6;
  v7 = sub_1D796C690();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v160 = v154 - v8;
  OUTLINED_FUNCTION_0_1();
  v164 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_0_32();
  v157 = v11 - v12;
  OUTLINED_FUNCTION_4_12();
  MEMORY[0x1EEE9AC00](v13);
  v165 = (v154 - v14);
  OUTLINED_FUNCTION_4_12();
  MEMORY[0x1EEE9AC00](v15);
  v163 = v154 - v16;
  v166 = v3;
  v17 = swift_getAssociatedTypeWitness();
  v18 = sub_1D796C690();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_0_32();
  v162 = (v20 - v21);
  OUTLINED_FUNCTION_4_12();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_0_1();
  v167 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_0_32();
  MEMORY[0x1EEE9AC00](v25);
  v159 = v154 - v26;
  OUTLINED_FUNCTION_4_12();
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v154 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v33 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_0_32();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v154 - v36;
  MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v39);
  v41 = v154 - v40;
  v171 = v4;
  v172 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_0_32();
  MEMORY[0x1EEE9AC00](v43);
  v45 = v154 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v59 = v154 - v58;
  switch(*v169 >> 62)
  {
    case 1:
      v160 = v51;
      v163 = v50;
      v164 = v57;
      v169 = v47;
      v102 = v171;
      v103 = v33;
      v104 = v55;
      v105 = v52;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v107 = swift_projectBox();
      v108 = *(TupleTypeMetadata2 + 48);
      (*(v172 + 16))(v45, v107, v102);
      v165 = v103;
      v109 = v103[2];
      (v109)(v37, v107 + v108, v104);
      v161 = v45;
      sub_1D796C2A0();
      v110 = v159;
      v166 = v37;
      (v109)(v159, v37, v104);
      __swift_storeEnumTagSinglePayload(v110, 0, 1, v104);
      v111 = *(v169 + 48);
      v112 = v167;
      v113 = *(v167 + 16);
      v114 = v162;
      v113(v162, v105, v18);
      v113((v114 + v111), v110, v18);
      OUTLINED_FUNCTION_5_11(v114);
      if (v119)
      {
        v115 = *(v112 + 8);
        v115(v110, v18);
        v115(v105, v18);
        OUTLINED_FUNCTION_5_11(v114 + v111);
        v116 = v161;
        if (v119)
        {
          v115(v114, v18);
          v117 = 1;
LABEL_30:
          v143 = v170;
          v170[3] = &type metadata for BoolCondition;
          v143[4] = &off_1F528A208;
          *v143 = v117 & 1;
          v165[1](v166, v104);
          v137 = *(v172 + 8);
          v138 = v116;
          goto LABEL_31;
        }
      }

      else
      {
        v158 = v105;
        v121 = v160;
        v113(v160, v114, v18);
        OUTLINED_FUNCTION_5_11(v114 + v111);
        if (!v122)
        {
          v139 = v165;
          v140 = v163;
          (v165[4])(v163, v114 + v111, v104);
          v117 = sub_1D796C2D0();
          v141 = v139[1];
          v141(v140, v104);
          v142 = *(v167 + 8);
          v142(v110, v18);
          v142(v158, v18);
          v141(v121, v104);
          v142(v114, v18);
          v116 = v161;
          goto LABEL_30;
        }

        v123 = *(v167 + 8);
        v123(v110, v18);
        v123(v158, v18);
        v165[1](v121, v104);
        v116 = v161;
      }

      (*(v164 + 8))(v114, v169);
      v117 = 0;
      goto LABEL_30;
    case 2:
      v80 = v171;
      v81 = v48;
      v82 = v55;
      v83 = v56;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v85 = swift_projectBox();
      v86 = *(TupleTypeMetadata3 + 48);
      v87 = *(TupleTypeMetadata3 + 64);
      (*(v172 + 16))(v81, v85, v80);
      v88 = *(v33 + 2);
      v167 = v82;
      v88(v83, v85 + v86, v82);
      v90 = v163;
      v89 = v164;
      (*(v164 + 16))(v163, v85 + v87, AssociatedTypeWitness);
      v91 = v160;
      v168 = v81;
      v169 = v83;
      sub_1D796C580();
      result = __swift_getEnumTagSinglePayload(v91, 1, AssociatedTypeWitness);
      if (result != 1)
      {
        v93 = v165;
        sub_1D796C6C0();
        v94 = v91;
        v95 = *(v89 + 8);
        v95(v94, AssociatedTypeWitness);
        OUTLINED_FUNCTION_1_25();
        if (sub_1D796C6F0())
        {
          OUTLINED_FUNCTION_1_25();
          if (sub_1D796C6E0() < 64)
          {
            OUTLINED_FUNCTION_1_25();
            v96 = sub_1D796C6D0();
            v97 = v93;
            v98 = v96;
            v99 = v97;
LABEL_35:
            v95(v99, AssociatedTypeWitness);
            v130 = v98 == 0;
LABEL_36:
            v147 = v130;
            goto LABEL_41;
          }

          v173 = 0;
          v145 = sub_1D7954CD4();
          OUTLINED_FUNCTION_3_16(v145, MEMORY[0x1E69E6530], v145);
          v146 = v93;
          v147 = sub_1D796C2D0();
          v95(v83, AssociatedTypeWitness);
          v148 = v146;
        }

        else
        {
          OUTLINED_FUNCTION_1_25();
          v124 = sub_1D796C6F0();
          OUTLINED_FUNCTION_1_25();
          v125 = sub_1D796C6E0();
          if (v124)
          {
            if (v125 <= 64)
            {
              swift_getAssociatedConformanceWitness();
              sub_1D796CA50();
              v126 = v157;
              sub_1D796C970();
              swift_getAssociatedConformanceWitness();
              v127 = v165;
              v128 = sub_1D796C2C0();
              v95(v126, AssociatedTypeWitness);
              if (v128)
              {
                OUTLINED_FUNCTION_1_25();
                v129 = sub_1D796C6D0();
                v95(v127, AssociatedTypeWitness);
                v130 = v129 == 0;
                goto LABEL_36;
              }

              v95(v127, AssociatedTypeWitness);
              v147 = 0;
LABEL_41:
              v152 = v170;
              v153 = v167;
              v170[3] = &type metadata for BoolCondition;
              v152[4] = &off_1F528A208;
              *v152 = v147 & 1;
              v95(v90, AssociatedTypeWitness);
              (*(v33 + 1))(v169, v153);
              v137 = *(v172 + 8);
              v138 = v168;
              v144 = v80;
              return v137(v138, v144);
            }
          }

          else if (v125 < 64)
          {
            v149 = v165;
            OUTLINED_FUNCTION_1_25();
            v98 = sub_1D796C6D0();
            v99 = v149;
            goto LABEL_35;
          }

          v173 = 0;
          v150 = sub_1D7954CD4();
          OUTLINED_FUNCTION_3_16(v150, MEMORY[0x1E69E6530], v150);
          v151 = v165;
          v147 = sub_1D796C2D0();
          v95(v83, AssociatedTypeWitness);
          v148 = v151;
        }

        v95(v148, AssociatedTypeWitness);
        goto LABEL_41;
      }

      __break(1u);
      return result;
    case 3:
      v173 = *((*v169 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v100 = v170;
      v170[3] = &type metadata for NotCondition;
      v100[4] = &off_1F528C758;
      v101 = swift_allocObject();
      *v100 = v101;
      return ConditionalList.condition.getter(v168, (v101 + 16));
    default:
      v159 = v53;
      v160 = v18;
      v163 = v50;
      v164 = v57;
      v169 = v47;
      v60 = v33;
      v61 = v171;
      v62 = v55;
      v63 = v49;
      v161 = v31;
      v64 = v54;
      v65 = swift_getTupleTypeMetadata2();
      v66 = swift_projectBox();
      v67 = *(v65 + 48);
      (*(v172 + 16))(v59, v66, v61);
      v165 = v60;
      v68 = v60[2];
      (v68)(v41, v66 + v67, v62);
      v162 = v59;
      v69 = v64;
      v71 = v160;
      v70 = v161;
      sub_1D796C560();
      v166 = v41;
      (v68)(v70, v41, v62);
      __swift_storeEnumTagSinglePayload(v70, 0, 1, v62);
      v72 = *(v169 + 48);
      v73 = v167;
      v74 = *(v167 + 16);
      v74(v63, v69, v71);
      v74(v63 + v72, v70, v71);
      OUTLINED_FUNCTION_6_9(v63);
      if (v119)
      {
        v75 = *(v73 + 8);
        v75(v70, v71);
        v76 = v69;
        v77 = v71;
        v75(v76, v71);
        OUTLINED_FUNCTION_6_9(v63 + v72);
        v78 = v165;
        if (v119)
        {
          v75(v63, v77);
          v79 = 1;
          goto LABEL_29;
        }
      }

      else
      {
        v158 = v69;
        v118 = v159;
        v74(v159, v63, v71);
        OUTLINED_FUNCTION_6_9(v63 + v72);
        if (!v119)
        {
          v131 = v71;
          v78 = v165;
          v132 = v165[4];
          v169 = v63;
          v133 = v163;
          (v132)(v163, v63 + v72, v62);
          v79 = sub_1D796C2D0();
          v134 = v78[1];
          v134(v133, v62);
          v135 = *(v73 + 8);
          v135(v70, v131);
          v135(v158, v131);
          v134(v118, v62);
          v135(v169, v131);
          goto LABEL_29;
        }

        v120 = *(v73 + 8);
        v120(v70, v71);
        v120(v158, v71);
        v78 = v165;
        v165[1](v118, v62);
      }

      (*(v164 + 8))(v63, v169);
      v79 = 0;
LABEL_29:
      v136 = v170;
      v170[3] = &type metadata for BoolCondition;
      v136[4] = &off_1F528A208;
      *v136 = v79 & 1;
      v78[1](v166, v62);
      v137 = *(v172 + 8);
      v138 = v162;
LABEL_31:
      v144 = v171;
      return v137(v138, v144);
  }
}

unint64_t sub_1D7954CD4()
{
  result = qword_1EC9DA290[0];
  if (!qword_1EC9DA290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC9DA290);
  }

  return result;
}

uint64_t Conditional.description.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1 >> 62;
  if (!v3)
  {
    v9 = 0x28727078652ELL;
    if (*(v2 + 16))
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (*(v2 + 16))
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    MEMORY[0x1DA704750](v6, v7);

    MEMORY[0x1DA704750](41, 0xE100000000000000);
    return v9;
  }

  if (v3 == 1)
  {
    v4 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = 0;
    v5 = sub_1D7938D28(v4);
    MEMORY[0x1DA704750](0x28746F6E2ELL, 0xE500000000000000, v5);
    swift_getWitnessTable();
    sub_1D796C960();
    MEMORY[0x1DA704750](41, 0xE100000000000000);
    sub_1D793D248(v4);
    return v9;
  }

  return 0x6C626978656C662ELL;
}

uint64_t sub_1D7954EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D7954F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D7954F60(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 8))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D7954FB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D7955060@<X0>(uint64_t result@<X0>, double *a2@<X8>)
{
  v4 = *v2;
  v5 = result;
  switch(*v2 >> 61)
  {
    case 1uLL:
      if (qword_1EC9D9E58 != -1)
      {
        result = swift_once();
      }

      v10 = xmmword_1EC9DA148;
      goto LABEL_7;
    case 2uLL:
    case 4uLL:
    case 6uLL:
      v22.i64[0] = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = result & 1;
      v7 = a2;
      goto LABEL_9;
    case 3uLL:
      v22.i64[0] = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = a2;
      v6 = 1;
LABEL_9:
      result = sub_1D7955060(v6, v7);
      break;
    case 5uLL:
      v11 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D7955250(result & 1, &v22);
      v12 = v22;
      sub_1D7955060(v5 & 1, v22.i64);
      v13 = v22;
      v21 = v12;
      result = v11(&v22, &v21);
      v15 = *&v22.i64[1];
      v14 = *v22.i64;
      if (*v13.i64 <= *v22.i64)
      {
        v16 = *v13.i64;
      }

      else
      {
        v16 = *v22.i64;
      }

      v17 = *v13.i64 + *&v13.i64[1];
      if (*v13.i64 + *&v13.i64[1] <= *v22.i64 + *&v22.i64[1])
      {
        v17 = *v22.i64 + *&v22.i64[1];
      }

      v18 = v17 - v16;
      if (v23 != 1)
      {
        v14 = *v13.i64;
        v15 = *&v13.i64[1];
      }

      if (!v23)
      {
        v14 = v16;
        v15 = v18;
      }

      v19 = ceil(v14);
      v20 = ceil(v15);
      if ((v5 & 1) == 0)
      {
        v14 = v19;
        v15 = v20;
      }

      *a2 = v14;
      a2[1] = v15;
      break;
    default:
      v8 = vdup_n_s32(result);
      v9.i64[0] = v8.u32[0];
      v9.i64[1] = v8.u32[1];
      v10 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL)), *(v4 + 16), vrndpq_f64(*(v4 + 16)));
LABEL_7:
      *a2 = v10;
      break;
  }

  return result;
}

uint64_t sub_1D7955250@<X0>(uint64_t result@<X0>, int8x16_t *a2@<X8>)
{
  v4 = *v2;
  v5 = result;
  switch(*v2 >> 61)
  {
    case 1uLL:
      if (qword_1EC9D9E58 != -1)
      {
        result = swift_once();
      }

      v10 = xmmword_1EC9DA148;
      goto LABEL_13;
    case 2uLL:
    case 4uLL:
    case 6uLL:
      v17.i64[0] = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = result & 1;
      v7 = a2;
      return sub_1D7955250(v6, v7);
    case 3uLL:
      v17.i64[0] = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = a2;
      v6 = 1;
      return sub_1D7955250(v6, v7);
    case 5uLL:
      v11 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D7955250(result & 1, &v17);
      v15 = v17;
      v16 = v17;
      result = v11(&v17, &v16);
      if (!v18 || (v12 = v15, v18 == 1))
      {
        v12 = v17;
      }

      v13 = vdup_n_s32(v5);
      v14.i64[0] = v13.u32[0];
      v14.i64[1] = v13.u32[1];
      v10 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v14, 0x3FuLL)), v12, vrndpq_f64(v12));
      goto LABEL_13;
    default:
      v8 = vdup_n_s32(result);
      v9.i64[0] = v8.u32[0];
      v9.i64[1] = v8.u32[1];
      v10 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL)), *(v4 + 16), vrndpq_f64(*(v4 + 16)));
LABEL_13:
      *a2 = v10;
      return result;
  }
}

uint64_t DimensionSizerResult.isAmbiguous.getter()
{
  v1 = *v0 >> 61;
  if ((v1 - 2) >= 5)
  {
    v2 = v1 != 0;
  }

  else
  {
    OUTLINED_FUNCTION_0_33();
    v2 = DimensionSizerResult.isAmbiguous.getter();
  }

  return v2 & 1;
}

uint64_t DimensionSizerResult.nonIntegral.getter()
{
  if (((1 << (*v0 >> 61)) & 0x74) != 0)
  {
    OUTLINED_FUNCTION_0_33();
    v1 = DimensionSizerResult.nonIntegral.getter();
  }

  else
  {
    v1 = ((1 << (*v0 >> 61)) & 3) == 0;
  }

  return v1 & 1;
}

uint64_t DimensionSizerResult.constraints.getter()
{
  v1 = *v0 >> 61;
  if ((v1 - 3) >= 4)
  {
    if (v1 >= 2)
    {
      v3 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v4 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      sub_1D792EC60();
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1D796EBB0;
      *(v5 + 32) = v3;
      *(v5 + 40) = v4;
      v6 = DimensionSizerResult.constraints.getter();
      sub_1D7949F6C(v6);
      return v5;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_33();
    return DimensionSizerResult.constraints.getter();
  }
}

uint64_t sub_1D7955540(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7A && *(a1 + 8))
    {
      v2 = *a1 + 121;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x79)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D7955594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D7955618(uint64_t a1, char a2)
{
  MEMORY[0x1DA704750](0x286E6D756C6F63, 0xE700000000000000);
  sub_1D796C860();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ColumnSizer(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ColumnSizer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

double sub_1D7955794()
{
  result = 0.0;
  xmmword_1EC9DA318 = xmmword_1D7973030;
  return result;
}

__n128 sub_1D79557D0()
{
  __asm { FMOV            V0.2D, #1.0 }

  xmmword_1EC9DA328 = result;
  return result;
}

__n128 sub_1D795583C@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, __n128 *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  result = *a2;
  *a4 = *a2;
  return result;
}

void static FlexBoxItemFlex.value(_:)(uint64_t a1@<X8>, double a2@<D0>)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  *a1 = a2;
  *(a1 + 8) = 0x3FF0000000000000;
}

void sub_1D7955970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  OUTLINED_FUNCTION_65();
  a38 = v43;
  a39 = v44;
  v67 = v45;
  v63 = v46;
  v66 = v47;
  v49 = v48;
  v65 = v50;
  v64 = a41;
  v52 = *v51;
  OUTLINED_FUNCTION_28();
  swift_getAssociatedTypeWitness();
  v53 = OUTLINED_FUNCTION_8_6();
  v54 = OUTLINED_FUNCTION_30();
  type metadata accessor for Box(v54, v55, v53, v56);
  *&a20 = v52;
  sub_1D792233C(&a20, v63, &a29);
  a27 = v64;
  OUTLINED_FUNCTION_52();
  a19 = 2;

  sub_1D792280C(&a19, &a29, &a27, v65, v49, v66, &a20);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20_0();
  v57();
  OUTLINED_FUNCTION_13_2();
  v58 = OUTLINED_FUNCTION_7_10();
  *&a20 = v42;
  *(&a20 + 1) = v41;
  a21 = v53;
  a22 = v58;
  v59 = OUTLINED_FUNCTION_32();
  type metadata accessor for BoxBuilder(v59, v60);
  v61 = OUTLINED_FUNCTION_48();
  sub_1D79207F4(v61);
  v62 = OUTLINED_FUNCTION_73();
  v67(v53, v62);
  OUTLINED_FUNCTION_72();

  OUTLINED_FUNCTION_63();
}

double BuilderType.flexBox(name:flexBoxLayout:flexBoxItem:size:positions:block:)(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4, uint64_t *a5, uint64_t a6, void (*a7)(__int128 *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v29[0] = *a3;
  *(v29 + 9) = *(a3 + 9);
  v22 = *(a4 + 32);
  v14 = *a5;
  v15 = OUTLINED_FUNCTION_11_3();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FlexBox(0, v15, AssociatedConformanceWitness, v17);
  *&v26 = v14;
  sub_1D792233C(&v26, a6, &v30);
  v18 = *a4;
  v27 = a4[1];
  v26 = v18;
  v28 = v22;

  sub_1D793D8AC(&v30, v29, a1, a2, &v26);
  (*(a10 + 40))();
  OUTLINED_FUNCTION_11_3();
  v19 = OUTLINED_FUNCTION_34();
  *&v26 = v15;
  *(&v26 + 1) = v11;
  *&v27 = AssociatedConformanceWitness;
  *(&v27 + 1) = v19;
  type metadata accessor for FlexBoxBuilder(0, &v26);
  v20 = OUTLINED_FUNCTION_19_0();
  sub_1D79207F4(v20);
  OUTLINED_FUNCTION_45();
  a7(a4);

  return result;
}

double BuilderType.flexBox(name:flexBoxLayout:flexBoxItem:size:positions:block:)(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t, double), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v34[0] = *a3;
  *(v34 + 9) = *(a3 + 9);
  v27 = *(a4 + 32);
  v14 = *a5;
  v15 = OUTLINED_FUNCTION_10_4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for FlexBox(0, v15, AssociatedConformanceWitness, v16);
  *&v31 = v14;
  OUTLINED_FUNCTION_31();
  sub_1D792233C(v18, v19, v20);
  v21 = *a4;
  v32 = a4[1];
  v31 = v21;
  v33 = v27;

  sub_1D793D8AC(&v35, v34, a1, a2, &v31);
  OUTLINED_FUNCTION_25();
  v22();
  OUTLINED_FUNCTION_10_4();
  v23 = OUTLINED_FUNCTION_35_0();
  *&v31 = v15;
  *(&v31 + 1) = v17;
  *&v32 = AssociatedConformanceWitness;
  *(&v32 + 1) = v23;
  type metadata accessor for FlexBoxBuilder(0, &v31);
  v24 = OUTLINED_FUNCTION_48();
  sub_1D79207F4(v24);
  v25 = OUTLINED_FUNCTION_73();
  a7(v11, v25);
  OUTLINED_FUNCTION_72();

  return result;
}

double sub_1D7955E10(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t, double), uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v30 = *(a3 + 32);
  v14 = *a5;
  v15 = OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_54();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = OUTLINED_FUNCTION_30();
  v20 = type metadata accessor for Box(v16, v17, v18, v19);
  *&v36 = v14;
  OUTLINED_FUNCTION_31();
  sub_1D792233C(v21, v22, v23);
  v39 = a11;
  v24 = *a3;
  v37 = *(a3 + 16);
  v36 = v24;
  v38 = v30;
  v35 = 2;

  sub_1D792280C(&v35, &v40, &v39, a1, a2, a4, &v36);
  OUTLINED_FUNCTION_25();
  v25();
  OUTLINED_FUNCTION_10_4();
  v26 = OUTLINED_FUNCTION_35_0();
  *&v36 = v15;
  *(&v36 + 1) = v20;
  *&v37 = AssociatedConformanceWitness;
  *(&v37 + 1) = v26;
  type metadata accessor for BoxBuilder(0, &v36);
  v27 = OUTLINED_FUNCTION_48();
  sub_1D79207F4(v27);
  v28 = OUTLINED_FUNCTION_73();
  a7(v11, v28);
  OUTLINED_FUNCTION_72();

  return result;
}

uint64_t sub_1D7956034()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 48);
  v2[3] = *(v0 + 24);
  __swift_allocate_boxed_opaque_existential_1(v2);
  v3 = OUTLINED_FUNCTION_1_27();
  return v1(v3);
}

uint64_t sub_1D795611C(uint64_t a1, uint64_t (*a2)(double))
{
  OUTLINED_FUNCTION_7();
  v5 = v4;
  v4[3] = v6;
  __swift_allocate_boxed_opaque_existential_1(v4);
  v7 = OUTLINED_FUNCTION_1_27();
  result = a2(v7);
  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_0(v5);
  }

  return result;
}

void sub_1D7956230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, _UNKNOWN **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_64();
  a31 = v35;
  a32 = v36;
  v38 = v37;
  v40 = v39;
  v60 = v41;
  OUTLINED_FUNCTION_60();
  v42 = a33;
  v45 = *v44;
  v46 = (*v43 + *MEMORY[0x1E69E77B0]);
  v47 = *v46;
  v48 = v46[1];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a15 = v47;
  a16 = v48;
  a17 = AssociatedConformanceWitness;
  a18 = &protocol witness table for LayoutItemList<A>;
  v50 = OUTLINED_FUNCTION_38();
  type metadata accessor for Frame(v50, v51);
  OUTLINED_FUNCTION_17_1();
  a14 = v45;

  sub_1D792233C(&a14, v34, &a13);
  OUTLINED_FUNCTION_39();
  v52 = swift_allocObject();
  v52[2] = v38;
  v52[3] = *(v48 + 80);
  v52[4] = v42;
  v52[5] = *(v48 + 88);
  v52[6] = v60;
  v52[7] = v40;

  OUTLINED_FUNCTION_51();
  sub_1D79236F8(v53, v54, v55, v56, v57, v58, v52);
  OUTLINED_FUNCTION_33();
  v59();

  OUTLINED_FUNCTION_66();
}

void sub_1D79563D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, __int128 a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_37();
  a31 = v35;
  a32 = v36;
  v63 = v37;
  v39 = v38;
  v62 = v40;
  v42 = v41;
  v44 = a33;
  v43 = a34;
  v46 = *(v41 + 32);
  v48 = *v47;
  v49 = (*v45 + *MEMORY[0x1E69E77B0]);
  v51 = *v49;
  v50 = v49[1];
  OUTLINED_FUNCTION_18_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&a18 = v51;
  *(&a18 + 1) = v50;
  *&a19 = AssociatedConformanceWitness;
  *(&a19 + 1) = &protocol witness table for LayoutItemList<A>;
  type metadata accessor for Frame(0, &a18);
  v53 = *v42;
  a19 = v42[1];
  a18 = v53;
  a20 = v46;
  a17 = v48;

  sub_1D792233C(&a17, v62, &a16);
  OUTLINED_FUNCTION_39();
  v54 = swift_allocObject();
  v54[2] = v44;
  v54[3] = *(v50 + 80);
  v54[4] = v43;
  v54[5] = *(v50 + 88);
  v54[6] = v63;
  v54[7] = v39;

  OUTLINED_FUNCTION_51();
  sub_1D79236F8(v55, v56, v57, v58, v59, v60, v54);
  OUTLINED_FUNCTION_3_17();
  v61();

  OUTLINED_FUNCTION_36();
}

uint64_t sub_1D795656C(uint64_t a1)
{
  OUTLINED_FUNCTION_7();
  v3 = *(v1 + 48);
  v4[3] = *(v1 + 24);
  __swift_allocate_boxed_opaque_existential_1(v4);
  v5 = OUTLINED_FUNCTION_1_27();
  return v3(a1, v5);
}

void sub_1D7956618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _UNKNOWN **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  OUTLINED_FUNCTION_65();
  a33 = v37;
  a34 = v38;
  v62 = v39;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v63 = v50;
  v64 = a37;
  v51 = a35;
  v53 = *v52;
  v54 = (*v46 + *MEMORY[0x1E69E77B0]);
  v55 = *v54;
  v56 = v54[1];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a17 = v55;
  a18 = v56;
  a19 = AssociatedConformanceWitness;
  a20 = &protocol witness table for LayoutItemList<A>;
  v58 = OUTLINED_FUNCTION_32();
  type metadata accessor for Frame(v58, v59);
  OUTLINED_FUNCTION_52();
  a24 = v53;

  sub_1D792233C(&a24, v45, &a16);
  OUTLINED_FUNCTION_39();
  v60 = swift_allocObject();
  v60[2] = v41;
  v60[3] = *(v56 + 80);
  v60[4] = v51;
  v60[5] = *(v56 + 88);
  v60[6] = v62;
  v60[7] = v43;

  v61 = sub_1D79236F8(v63, v49, &a17, v47, &a16, v64, v60);
  (*(v51 + 40))(v61, v41, v51);

  OUTLINED_FUNCTION_63();
}

void sub_1D79567EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, __int128 a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_65();
  a31 = v36;
  a32 = v37;
  v62 = v38;
  v63 = v40;
  v64 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v65 = a36;
  v48 = a33;
  v47 = a34;
  v49 = *(v43 + 32);
  v51 = *v50;
  v52 = (*v41 + *MEMORY[0x1E69E77B0]);
  v54 = *v52;
  v53 = v52[1];
  OUTLINED_FUNCTION_42();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&a18 = v54;
  *(&a18 + 1) = v53;
  *&a19 = AssociatedConformanceWitness;
  *(&a19 + 1) = &protocol witness table for LayoutItemList<A>;
  type metadata accessor for Frame(0, &a18);
  v56 = *v44;
  a19 = v44[1];
  a18 = v56;
  a20 = v49;
  a22 = v51;

  OUTLINED_FUNCTION_49();
  sub_1D792233C(v57, v58, v59);
  OUTLINED_FUNCTION_39();
  v60 = swift_allocObject();
  v60[2] = v48;
  v60[3] = *(v53 + 80);
  v60[4] = v47;
  v60[5] = *(v53 + 88);
  v60[6] = v62;
  v60[7] = v63;

  sub_1D79236F8(v64, v46, &a18, v42, &a17, v65, v60);
  OUTLINED_FUNCTION_2_22();
  v61();

  OUTLINED_FUNCTION_63();
}

uint64_t sub_1D795697C(uint64_t a1, uint64_t (*a2)(uint64_t, double))
{
  OUTLINED_FUNCTION_7();
  v6 = v5;
  v5[3] = v7;
  __swift_allocate_boxed_opaque_existential_1(v5);
  v8 = OUTLINED_FUNCTION_1_27();
  result = a2(a1, v8);
  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_0(v6);
  }

  return result;
}

double BuilderType.space(name:flexBoxItem:size:)(uint64_t a1, uint64_t a2, __int128 *a3, unint64_t *a4, uint64_t a5)
{
  v6 = *(a3 + 32);
  v7 = *a4;
  OUTLINED_FUNCTION_28();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_21();
  swift_getAssociatedConformanceWitness();
  v9 = OUTLINED_FUNCTION_29();
  type metadata accessor for Space(v9, AssociatedTypeWitness, v10, v11);
  v23 = *a3;
  v24 = a3[1];
  LOBYTE(v25) = v6;
  sub_1D7922754(v7);

  v20 = OUTLINED_FUNCTION_59(v12, v13, v14, v15, v16, v17, v18, v19, v23, *(&v23 + 1), v24, *(&v24 + 1), v25, v7);
  sub_1D792362C(v20);
  OUTLINED_FUNCTION_0_35();
  v21();

  return result;
}

double BuilderType.prop<A>(keyPath:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_21();
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = a5;
  type metadata accessor for Prop(0, &v11);
  sub_1D7924F60(a2, &v11);

  Prop.__allocating_init(_:_:)(v7, &v11);
  OUTLINED_FUNCTION_0_35();
  v8();

  return result;
}

double BuilderType.prop<A>(name:keyPath:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_22();
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = a7;
  v9 = OUTLINED_FUNCTION_32();
  type metadata accessor for Prop(v9, v10);
  sub_1D7924F60(a4, &v14);
  OUTLINED_FUNCTION_16_2();

  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_0_35();
  v11();

  return result;
}

void BuilderType.prop<A>(name:keyPath:value:flexBoxItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_37();
  a31 = v32;
  a32 = v33;
  v35 = v34;
  v37 = v36;
  OUTLINED_FUNCTION_22();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a16 = a9;
  a17 = AssociatedConformanceWitness;
  a18 = v35;
  v39 = OUTLINED_FUNCTION_32();
  type metadata accessor for Prop(v39, v40);
  sub_1D7924F60(v37, &a16);

  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_0_35();
  v41();

  OUTLINED_FUNCTION_36();
}

double BuilderType.vOverlay(name:flexBoxItem:reversed:size:_:on:embedPath:block:)()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_14_1();
  return sub_1D7956FC0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14);
}

double BuilderType.vOverlay(name:reversed:size:positions:on:embedPath:block:)()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_15_2();
  return sub_1D79571D8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13);
}