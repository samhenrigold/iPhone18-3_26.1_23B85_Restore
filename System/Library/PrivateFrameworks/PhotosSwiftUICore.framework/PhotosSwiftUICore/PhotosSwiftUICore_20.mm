void sub_1C1182CD0(void *a1, uint64_t a2, uint64_t a3)
{
  if (sub_1C12618D0() != a2)
  {
    v13[0] = 0;
    v13[1] = 0;
    v14 = 1;
    if (qword_1EDE76A00 != -1)
    {
      swift_once();
    }

    v6 = qword_1EDE9B5C0;
    v7 = [a1 length];
    v8 = swift_allocObject();
    v8[2] = a2;
    v8[3] = a3;
    v8[4] = v13;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1C1184460;
    *(v9 + 24) = v8;
    aBlock[4] = sub_1C11852C8;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C1180BF8;
    aBlock[3] = &block_descriptor_82;
    v10 = _Block_copy(aBlock);

    [a1 enumerateAttribute:v6 inRange:0 options:v7 usingBlock:{0, v10}];
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
    }
  }
}

void sub_1C1182F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (a6)
  {
    if (__OFADD__(a2, a3))
    {
      __break(1u);
    }

    else if (!__OFADD__(a5, a6))
    {
      if (a2 >= a5 && a5 + a6 > a2)
      {
        goto LABEL_24;
      }

      if (a5 >= a2 && a2 + a3 > a5)
      {
        goto LABEL_24;
      }

      return;
    }

    __break(1u);
    goto LABEL_35;
  }

  if (a5 >= a2)
  {
    if (__OFSUB__(a5, a2))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (a2 != a5 && a5 - a2 < a3)
    {
      if (__OFADD__(a2, a3))
      {
LABEL_39:
        __break(1u);
        return;
      }

      if (a2 + a3 != a5)
      {
LABEL_24:
        if (a7[2])
        {
LABEL_32:
          *a7 = a2;
          a7[1] = a3;
          *(a7 + 16) = 0;
          return;
        }

        v10 = a7[1];
        v11 = __OFADD__(*a7, v10);
        v12 = *a7 + v10;
        if (!v11)
        {
          if (!__OFADD__(a2, a3))
          {
            if (v12 <= a2 + a3)
            {
              v12 = a2 + a3;
            }

            if (*a7 < a2)
            {
              a2 = *a7;
            }

            a3 = v12 - a2;
            if (!__OFSUB__(v12, a2))
            {
              goto LABEL_32;
            }

            goto LABEL_37;
          }

LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }
  }
}

double sub_1C1183010()
{
  v1 = *(v0 + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent + 112);

  v1(v2);

  return result;
}

id sub_1C11831B4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 attributedString];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [v6 attributedSubstringFromRange_];

  if (!v8)
  {
    return 0;
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v10 = [v3 traitCollection];
  sub_1C1180CA4(v10);

  v11 = [objc_allocWithZone(MEMORY[0x1E69DB840]) initWithAttributedString_];
  return v11;
}

id sub_1C1183318(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for PhotosSearchTextLayoutFragment();
  v4 = a3;
  return sub_1C1180730(v4, [v4 elementRange]);
}

id sub_1C1183400(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1C1266D40();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

id sub_1C1183544(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1C108F8C4;
  v6[3] = &block_descriptor_72;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  return v4;
}

unint64_t sub_1C1183650()
{
  result = qword_1EBE95870;
  if (!qword_1EBE95870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95868, &unk_1C12BD578);
    sub_1C118468C(&qword_1EBE95878);
    sub_1C1184EC0(&unk_1EDE7B8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95870);
  }

  return result;
}

uint64_t type metadata accessor for PhotosSearchBar(uint64_t a1)
{
  result = qword_1EBE958B8;
  if (!qword_1EBE958B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1183784@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1C1183830(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1C1183870(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C1183900(uint64_t a1)
{
  sub_1C1183B34(319);
  if (v1 <= 0x3F)
  {
    sub_1C1183C00(319, &qword_1EDE76B80, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    if (v2 <= 0x3F)
    {
      sub_1C1183C00(319, &qword_1EDE76B88, &type metadata for PhotosSearchRange, MEMORY[0x1E6981948]);
      if (v3 <= 0x3F)
      {
        sub_1C1007F88();
        if (v4 <= 0x3F)
        {
          sub_1C1183B9C(319, &qword_1EDE77590, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1C1183C00(319, &unk_1EBE958D0, &type metadata for PhotosSearchStyle, MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1C1183C50(319, &qword_1EBE94FE0, &unk_1EBE93690, &qword_1C12B32F0);
              if (v7 <= 0x3F)
              {
                sub_1C1183C50(319, &qword_1EBE958E0, &qword_1EBE95890, &qword_1C12BD5F0);
                if (v8 <= 0x3F)
                {
                  sub_1C1183B9C(319, &unk_1EBE958E8, type metadata accessor for PhotosOffsetReaderContainer, MEMORY[0x1E6981790]);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1C1183B34(uint64_t a1)
{
  if (!qword_1EDE76B78)
  {
    sub_1C0FDE8F8(255, &qword_1EDE76A08, 0x1E696AAB0);
    v1 = sub_1C1265640();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE76B78);
    }
  }
}

void sub_1C1183B9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C1183C00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C1183C50(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1C1265450();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1C1183D34()
{
  result = qword_1EBE95AA0;
  if (!qword_1EBE95AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE958A8, &qword_1C12BD608);
    sub_1C1183DF0();
    sub_1C118468C(&qword_1EBE95AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95AA0);
  }

  return result;
}

unint64_t sub_1C1183DF0()
{
  result = qword_1EBE95AA8;
  if (!qword_1EBE95AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE958A0, &qword_1C12BD600);
    sub_1C1184EC0(&unk_1EBE95AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95AA8);
  }

  return result;
}

uint64_t sub_1C1183EB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_1C1183EF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C1183F74()
{
  result = qword_1EBE95AD8;
  if (!qword_1EBE95AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95AD8);
  }

  return result;
}

void sub_1C1184000(id a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1C1154CB4(a1, a2, a3);
  }
}

uint64_t sub_1C1184014@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1C68ED050]();
  *a1 = result;
  return result;
}

id sub_1C118406C(id a1, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4)
  {
    v5 = 0;
    if (a4 != 1 && a4 != 255)
    {
      if (a2 | a3)
      {
        v7 = [a1 endOfDocument];
        v8 = [a1 endOfDocument];
      }

      else
      {
        v7 = [a1 beginningOfDocument];
        v8 = [a1 beginningOfDocument];
      }

      v5 = [a1 textRangeFromPosition:v7 toPosition:v8];
    }
  }

  else
  {
    sub_1C0F99AE4(a2, a3, 0);
    return a2;
  }

  return v5;
}

unint64_t sub_1C118418C()
{
  result = qword_1EBE95AF8;
  if (!qword_1EBE95AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95AF8);
  }

  return result;
}

uint64_t objectdestroy_47Tm()
{

  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_1C1154CB4(*(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

unint64_t sub_1C11842BC()
{
  result = qword_1EBE95B28;
  if (!qword_1EBE95B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95B28);
  }

  return result;
}

id sub_1C1184354(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 beginningOfDocument];
  v7 = [a1 positionFromPosition:v6 offset:a2];

  if (!v7)
  {
    return 0;
  }

  v8 = [a1 positionFromPosition:v7 offset:a3];
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  v10 = [a1 textRangeFromPosition:v7 toPosition:v8];

  return v10;
}

uint64_t sub_1C118446C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C118450C()
{
  result = qword_1EBE95B58;
  if (!qword_1EBE95B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95B58);
  }

  return result;
}

unint64_t sub_1C1184568(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_2(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_41(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    sub_1C118468C(&qword_1EDE7B8E0);
    OUTLINED_FUNCTION_0_54();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C1184600()
{
  result = qword_1EBE95BC0;
  if (!qword_1EBE95BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE95BC8, &qword_1C12BDB78);
    sub_1C1183F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95BC0);
  }

  return result;
}

unint64_t sub_1C118468C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_2(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C11846D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_18();
  v5(v4);
  return a2;
}

uint64_t sub_1C118472C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_18();
  v5(v4);
  return a2;
}

double sub_1C1184788(uint64_t *a1)
{
  v3 = type metadata accessor for PhotosSearchBar(0);
  OUTLINED_FUNCTION_15(v3);
  OUTLINED_FUNCTION_17_24();

  return sub_1C117CB7C(a1, v1 + v4);
}

uint64_t sub_1C11847F0(uint64_t a1, double *a2)
{
  v4 = type metadata accessor for PhotosSearchBar(0);
  OUTLINED_FUNCTION_15(v4);
  OUTLINED_FUNCTION_17_24();
  return (*(v2 + v5 + 144))(*a2);
}

unint64_t sub_1C1184854()
{
  result = qword_1EBE95BE8;
  if (!qword_1EBE95BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95B88, &qword_1C12BDB48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95B78, &qword_1C12BDB38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95B70, &qword_1C12BDB30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95B68, &qword_1C12BDB28);
    sub_1C1184EC0(&unk_1EBE95BD8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C1184EC0(&qword_1EDE7BAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95BE8);
  }

  return result;
}

unint64_t sub_1C11849FC()
{
  result = qword_1EBE95C30;
  if (!qword_1EBE95C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C38, &qword_1C12BDC00);
    sub_1C1184EC0(&unk_1EBE95C40);
    sub_1C1184EC0(&unk_1EDE7BB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95C30);
  }

  return result;
}

unint64_t sub_1C1184B04(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_2(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_41(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    OUTLINED_FUNCTION_0_0();
    sub_1C1184EC0(v8);
    OUTLINED_FUNCTION_0_54();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C1184B88()
{
  result = qword_1EBE95C68;
  if (!qword_1EBE95C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C70, &qword_1C12BDC28);
    sub_1C1184C40();
    sub_1C1184EC0(&qword_1EDE7B910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95C68);
  }

  return result;
}

unint64_t sub_1C1184C40()
{
  result = qword_1EBE95C78;
  if (!qword_1EBE95C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE95C80, &unk_1C12BDC30);
    sub_1C1184EC0(&qword_1EDE7B958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95C78);
  }

  return result;
}

uint64_t sub_1C1184D10(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for PhotosSearchBar(0);
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_17_24();

  return a1(v1 + v3);
}

unint64_t sub_1C1184D7C()
{
  result = qword_1EBE95CB8;
  if (!qword_1EBE95CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95CB0, &qword_1C12BDD08);
    sub_1C1184E34();
    sub_1C1184EC0(&unk_1EDE7B8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95CB8);
  }

  return result;
}

unint64_t sub_1C1184E34()
{
  result = qword_1EBE95CC0;
  if (!qword_1EBE95CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95CC8, &unk_1C12BDD10);
    sub_1C106BF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95CC0);
  }

  return result;
}

unint64_t sub_1C1184EC0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_2(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_41(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t objectdestroy_120Tm()
{
  v1 = type metadata accessor for PhotosSearchBar(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = *(v2 + 80);
  if (v3 != 255)
  {
    sub_1C1154CB4(*(v2 + 64), *(v2 + 72), v3);
  }

  v4 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C12629F0();
    OUTLINED_FUNCTION_3();
    (*(v5 + 8))(v2 + v4);
  }

  else
  {
  }

  v6 = v2 + v1[13];
  sub_1C1022584(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 42));

  v7 = v2 + v1[16];
  sub_1C1263D00();
  OUTLINED_FUNCTION_3();
  (*(v8 + 8))(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE958B0, &qword_1C12BD610);

  return swift_deallocObject();
}

double sub_1C1185134(uint64_t a1)
{
  v3 = type metadata accessor for PhotosSearchBar(0);
  OUTLINED_FUNCTION_15(v3);
  OUTLINED_FUNCTION_17_24();

  return sub_1C117CB0C(a1, v1 + v4);
}

unint64_t sub_1C118519C()
{
  result = qword_1EBE95D00;
  if (!qword_1EBE95D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95CE0, &qword_1C12BDD28);
    sub_1C1184B04(&unk_1EBE95CF8);
    sub_1C118468C(&qword_1EDE7B8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95D00);
  }

  return result;
}

unint64_t sub_1C1185318()
{
  result = qword_1EDE76F88;
  if (!qword_1EDE76F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76F88);
  }

  return result;
}

double sub_1C11853AC(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1C12637F0();
  return v3;
}

unint64_t sub_1C11853F4()
{
  result = qword_1EDE76F80;
  if (!qword_1EDE76F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76F80);
  }

  return result;
}

uint64_t (*EnvironmentValues.photosVerticalInteritemSpacing.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C1185318();
  sub_1C12637F0();
  return sub_1C1185540;
}

uint64_t (*EnvironmentValues.photosHorizontalInteritemSpacing.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C11853F4();
  sub_1C12637F0();
  return sub_1C11855AC;
}

uint64_t PhotosMockPlaybackOverlayModel.__allocating_init(totalDuration:fractionCompleted:)(double a1)
{
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_2();
  PhotosMockPlaybackOverlayModel.init(totalDuration:fractionCompleted:)(v3, a1);
  return v2;
}

uint64_t PhotosMockPlaybackOverlayModel.init(totalDuration:fractionCompleted:)(uint64_t a1, double a2)
{
  *(v2 + 68) = 600;
  sub_1C1261F60();
  *(v2 + 16) = 1;
  OUTLINED_FUNCTION_2();
  sub_1C1266F80();
  *(v2 + 20) = sub_1C1266610();
  *(v2 + 28) = v3;
  *(v2 + 32) = v4;
  *(v2 + 36) = v5;
  OUTLINED_FUNCTION_2();
  sub_1C1266F80();
  *(v2 + 44) = sub_1C1266610();
  *(v2 + 52) = v6;
  *(v2 + 56) = v7;
  *(v2 + 60) = v8;
  return v2;
}

void sub_1C1185708(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = v2;
    sub_1C1186550(v5, sub_1C109F1B4, v6);
  }
}

void sub_1C11857B8(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + 17) == (a1 & 1))
  {
    v7 = a1 & 1;

    sub_1C1185BA0(v7);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = v2;
    sub_1C1186550(v5, sub_1C11865F8, v6);
  }
}

double sub_1C1185880(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = HIDWORD(a2);
  swift_beginAccess();
  if (sub_1C1266600())
  {
    *(v3 + 20) = a1;
    *(v3 + 28) = v5;
    *(v3 + 32) = v7;
    *(v3 + 36) = a3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[2] = v3;
    v11[3] = a1;
    v12 = v5;
    v13 = v7;
    v14 = a3;
    sub_1C1186550(v10, sub_1C118662C, v11);
  }

  return result;
}

uint64_t sub_1C1185978@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C11859D0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C11859D0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_56();
  v3 = sub_1C1186BCC(v1, v2, &protocol conformance descriptor for PhotosMockPlaybackOverlayModel);
  OUTLINED_FUNCTION_6(v3, v4);

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t (*sub_1C1185A64())()
{
  v3 = OUTLINED_FUNCTION_4_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_3_4(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17PhotosSwiftUICore30PhotosMockPlaybackOverlayModel___observationRegistrar;
  *v2 = v0;
  OUTLINED_FUNCTION_0_56();
  v7 = sub_1C1186BCC(v5, v6, &protocol conformance descriptor for PhotosMockPlaybackOverlayModel);
  OUTLINED_FUNCTION_1_6(v7);

  *v2 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_3(KeyPath);

  v2[7] = sub_1C109E940(v2);
  return sub_1C1185B3C;
}

uint64_t sub_1C1185B48(char a1)
{
  if ((sub_1C1185C5C() & 1) != 0 && (a1 & 1) == 0 && sub_1C11864F8())
  {
    sub_1C1185880(*MEMORY[0x1E6960CC0], *(MEMORY[0x1E6960CC0] + 8), *(MEMORY[0x1E6960CC0] + 16));
  }

  return sub_1C118607C();
}

uint64_t sub_1C1185BA0(char a1)
{
  v2 = *(v1 + 17);
  *(v1 + 17) = a1;
  return sub_1C1185B48(v2);
}

uint64_t (*sub_1C1185BB0(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 17);
  return sub_1C1185BDC;
}

uint64_t sub_1C1185C04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1185C5C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1185C5C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_56();
  v3 = sub_1C1186BCC(v1, v2, &protocol conformance descriptor for PhotosMockPlaybackOverlayModel);
  OUTLINED_FUNCTION_6(v3, v4);

  return *(v0 + 17);
}

uint64_t (*sub_1C1185CDC())()
{
  v3 = OUTLINED_FUNCTION_4_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_3_4(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17PhotosSwiftUICore30PhotosMockPlaybackOverlayModel___observationRegistrar;
  *v2 = v0;
  OUTLINED_FUNCTION_0_56();
  v7 = sub_1C1186BCC(v5, v6, &protocol conformance descriptor for PhotosMockPlaybackOverlayModel);
  OUTLINED_FUNCTION_1_6(v7);

  *v2 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_3(KeyPath);

  v2[7] = sub_1C1185BB0(v2);
  return sub_1C1185DB4;
}

uint64_t sub_1C1185E10@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C1185E7C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_1C1185E7C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_56();
  v3 = sub_1C1186BCC(v1, v2, &protocol conformance descriptor for PhotosMockPlaybackOverlayModel);
  OUTLINED_FUNCTION_6(v3, v4);

  swift_beginAccess();
  return *(v0 + 20);
}

uint64_t sub_1C1185F18(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = HIDWORD(a3);
  result = swift_beginAccess();
  *(a1 + 20) = a2;
  *(a1 + 28) = v5;
  *(a1 + 32) = v8;
  *(a1 + 36) = a4;
  return result;
}

uint64_t (*sub_1C1185F88())()
{
  v3 = OUTLINED_FUNCTION_4_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_3_4(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17PhotosSwiftUICore30PhotosMockPlaybackOverlayModel___observationRegistrar;
  *v2 = v0;
  OUTLINED_FUNCTION_0_56();
  v7 = sub_1C1186BCC(v5, v6, &protocol conformance descriptor for PhotosMockPlaybackOverlayModel);
  OUTLINED_FUNCTION_1_6(v7);

  *v2 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_3(KeyPath);

  v2[7] = sub_1C1185DC0(v2);
  return sub_1C1186060;
}

uint64_t sub_1C118607C()
{
  v1 = v0;
  v2 = sub_1C1265C10();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1265C30();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1265C50();
  OUTLINED_FUNCTION_0();
  v40 = v15;
  v41 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  result = sub_1C1185C5C();
  if (result)
  {
    v37 = v10;
    v38 = v8;
    v39 = v4;
    v22 = sub_1C1185E7C();
    v24 = v23;
    v26 = v25;
    v27 = HIDWORD(v23);
    v28 = sub_1C1266610();
    lhs.value = v22;
    lhs.timescale = v24;
    lhs.flags = v27;
    lhs.epoch = v26;
    rhs.value = v28;
    rhs.timescale = v29;
    rhs.flags = v30;
    rhs.epoch = v31;
    CMTimeAdd(&v46, &lhs, &rhs);
    sub_1C1185880(v46.value, *&v46.timescale, v46.epoch);
    if (sub_1C11864F8())
    {
      sub_1C1185880(*(v1 + 44), *(v1 + 52), *(v1 + 60));
      sub_1C11857B8(0);
    }

    sub_1C0FDAFC4();
    v32 = sub_1C12664C0();
    sub_1C1265C40();
    sub_1C1265C90();
    v40 = *(v40 + 8);
    v33 = v17;
    v34 = v41;
    (v40)(v33, v41);
    v35 = swift_allocObject();
    swift_weakInit();
    v44 = sub_1C1186BBC;
    v45 = v35;
    lhs.value = MEMORY[0x1E69E9820];
    *&lhs.timescale = 1107296256;
    lhs.epoch = sub_1C0FD7FC4;
    v43 = &block_descriptor_14;
    v36 = _Block_copy(&lhs);

    sub_1C1265C20();
    lhs.value = MEMORY[0x1E69E7CC0];
    sub_1C1186BCC(&qword_1EDE7B768, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00, &qword_1C12A3280);
    sub_1C1186C14();
    sub_1C1266870();
    MEMORY[0x1C68EFDD0](v20, v13, v7, v36);
    _Block_release(v36);

    (*(v39 + 8))(v7, v2);
    (*(v37 + 8))(v13, v38);
    return (v40)(v20, v34);
  }

  return result;
}

double sub_1C11864A0(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C118607C();
  }

  return result;
}

BOOL sub_1C11864F8()
{
  v1 = sub_1C1185E7C();
  v2 = *(v0 + 44);
  v7.epoch = *(v0 + 60);
  time1.value = v1;
  time1.timescale = v3;
  time1.flags = v4;
  time1.epoch = v5;
  v7.value = v2;
  *&v7.timescale = *(v0 + 52);
  return CMTimeCompare(&time1, &v7) >= 0;
}

uint64_t sub_1C1186550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_56();
  sub_1C1186BCC(v3, v4, &protocol conformance descriptor for PhotosMockPlaybackOverlayModel);
  return sub_1C1261F20();
}

uint64_t type metadata accessor for PhotosMockPlaybackOverlayModel(uint64_t a1)
{
  result = qword_1EBE95DF0;
  if (!qword_1EBE95DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosMockPlaybackOverlayModel.deinit()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore30PhotosMockPlaybackOverlayModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosMockPlaybackOverlayModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore30PhotosMockPlaybackOverlayModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void (*sub_1C1186784(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C1185A64();
  return sub_1C10768AC;
}

void (*sub_1C11867E8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C1185CDC();
  return sub_1C1077800;
}

void (*sub_1C118684C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C1185F88();
  return sub_1C1077800;
}

uint64_t sub_1C118697C(uint64_t a1)
{
  result = sub_1C1261F70();
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

uint64_t sub_1C1186BCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C1186C14()
{
  result = qword_1EDE7B708;
  if (!qword_1EDE7B708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE95B00, &qword_1C12A3280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B708);
  }

  return result;
}

uint64_t type metadata accessor for OneUpChromeVideoControls(uint64_t a1)
{
  result = qword_1EBE95E00;
  if (!qword_1EBE95E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1186CEC(uint64_t a1)
{
  sub_1C102DEBC(319, &qword_1EDE775D0, &qword_1EBE93D88, &qword_1C12BE100);
  if (v1 <= 0x3F)
  {
    sub_1C1186DE8(319);
    if (v2 <= 0x3F)
    {
      sub_1C102DEBC(319, &qword_1EDE77668, &qword_1EBE91478, qword_1C12B6A70);
      if (v3 <= 0x3F)
      {
        sub_1C102DEBC(319, &qword_1EDE77560, &qword_1EBE902F0, &qword_1C12B38C0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C1186DE8(uint64_t a1)
{
  if (!qword_1EDE775E0)
  {
    type metadata accessor for OneUpChromeSpec(255);
    v1 = sub_1C1262A70();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE775E0);
    }
  }
}

void *sub_1C1186E5C@<X0>(void *a1@<X8>)
{
  v109 = sub_1C1263840();
  OUTLINED_FUNCTION_0();
  v107 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v104 = &v89[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E58, &qword_1C12B16D0);
  OUTLINED_FUNCTION_0();
  v108 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v105 = &v89[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v89[-v10];
  v11 = type metadata accessor for OneUpChromeVideoControls(0);
  v102 = *(v11 - 8);
  v12 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v103 = &v89[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v89[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *v1;
  v112 = v15;
  v113 = v1;
  v20 = *(v1 + 8);
  if (v20 == 1)
  {
    v21 = v13;
    v123 = v19;

    if (!v19)
    {
      goto LABEL_15;
    }
  }

  else
  {

    sub_1C1266420();
    v22 = a1;
    v23 = sub_1C1264410();
    OUTLINED_FUNCTION_4_46(v23, &dword_1C0F96000, v24, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    a1 = v22;
    sub_1C12637D0();
    swift_getAtKeyPath();
    v25 = j__swift_release_1();
    v21 = v13;
    (*(v15 + 8))(v18, v13, v25);
    if (!v123)
    {
LABEL_15:
      sub_1C11881E0(v122);
      return memcpy(a1, v122, 0x1A1uLL);
    }
  }

  sub_1C1213F08();
  v27 = v26;
  v101 = v28;

  v111 = v27;
  if (!v27)
  {
    goto LABEL_15;
  }

  if (v20)
  {
    v29 = v21;
    if (!v19)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_1C1266420();
    v30 = a1;
    v31 = sub_1C1264410();
    OUTLINED_FUNCTION_4_46(v31, &dword_1C0F96000, v32, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    a1 = v30;
    sub_1C12637D0();
    OUTLINED_FUNCTION_3_41();
    swift_getAtKeyPath();
    v33 = j__swift_release_1();
    v29 = v21;
    (*(v112 + 8))(v18, v21, v33);
    if (!v122[0])
    {
LABEL_14:
      swift_unknownObjectRelease();
      goto LABEL_15;
    }
  }

  v34 = sub_1C1214C28();

  if ((v34 & 1) == 0)
  {
    goto LABEL_14;
  }

  KeyPath = swift_getKeyPath();
  v118 = 0;
  v99 = swift_getKeyPath();
  v117 = 0;
  v98 = swift_getKeyPath();
  v116 = 0;
  v97 = swift_getKeyPath();
  v115 = 0;
  v94 = v118;
  v95 = v117;
  v96 = v116;
  v35 = *(v113 + 32);
  v36 = *(v113 + 40);
  if (*(v113 + 48) != 1)
  {
    swift_unknownObjectRetain();
    sub_1C1058CE4(v35, v36, 0);
    sub_1C1266420();
    v41 = v29;
    v42 = sub_1C1264410();
    sub_1C1262620();

    v29 = v41;
    sub_1C12637D0();
    OUTLINED_FUNCTION_3_41();
    swift_getAtKeyPath();
    sub_1C0FF9034(v35, v36, 0);
    v37 = v112;
    v43 = OUTLINED_FUNCTION_2_50();
    v44(v43, v41);
    v36 = v122[1];
    if (v122[0])
    {
      goto LABEL_13;
    }

LABEL_18:
    v39 = 0.0;
    goto LABEL_19;
  }

  swift_unknownObjectRetain();
  sub_1C1058CE4(v35, v36, 1);
  v37 = v112;
  if (!v35)
  {
    goto LABEL_18;
  }

LABEL_13:
  ObjectType = swift_getObjectType();
  v39 = (*(v36 + 120))(ObjectType, v36);
  swift_unknownObjectRelease();
LABEL_19:
  v45 = v113;
  v46 = v103;
  sub_1C1178900(v113, v103);
  v47 = (*(v102 + 80) + 32) & ~*(v102 + 80);
  v48 = swift_allocObject();
  v49 = v101;
  *(v48 + 16) = v111;
  *(v48 + 24) = v49;
  v102 = v48;
  sub_1C11881E8(v46, v48 + v47);
  swift_unknownObjectRetain();
  v93 = sub_1C1264460();
  v50 = *(v45 + 16);
  v51 = *(v45 + 24);

  if ((v51 & 1) == 0)
  {
    sub_1C1266420();
    v52 = sub_1C1264410();
    OUTLINED_FUNCTION_1_42(v52, &dword_1C0F96000, v53, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_1C12637D0();
    OUTLINED_FUNCTION_3_41();
    swift_getAtKeyPath();

    v54 = OUTLINED_FUNCTION_2_50();
    v55(v54, v29);
  }

  v103 = v29;
  v56 = fabs(v39);
  sub_1C12244A8();

  sub_1C12628A0();
  v91 = v58;
  v92 = v57;
  v60 = v59;
  v62 = v61;
  v119 = 0;
  v90 = sub_1C1264490();
  sub_1C1187AF8();
  sub_1C12628A0();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v120 = 0;

  LODWORD(v113) = v51;
  if ((v51 & 1) == 0)
  {
    sub_1C1266420();
    v71 = sub_1C1264410();
    OUTLINED_FUNCTION_1_42(v71, &dword_1C0F96000, v72, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_1C12637D0();
    OUTLINED_FUNCTION_3_41();
    swift_getAtKeyPath();

    v73 = OUTLINED_FUNCTION_2_50();
    v74(v73, v103);
  }

  sub_1C12244A8();

  sub_1C12659A0();
  v75 = v101;
  v76 = v56 * -2.5 + 1.0;
  sub_1C1263390();
  memcpy(&v121[7], v124, 0x70uLL);
  if (v113)
  {
    v114[53] = v50;
  }

  else
  {

    sub_1C1266420();
    v77 = sub_1C1264410();
    OUTLINED_FUNCTION_1_42(v77, &dword_1C0F96000, v78, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v37 + 8))(v18, v103);
  }

  v79 = sub_1C12245D4();

  v80 = v104;
  sub_1C1263830();
  sub_1C1265A60();
  v81 = sub_1C11882C0(&qword_1EDE7BC98, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
  v82 = v106;
  v83 = v109;
  sub_1C1262990();

  (*(v107 + 8))(v80, v83);
  v84 = v108;
  v85 = v110;
  (*(v108 + 16))(v105, v82, v110);
  v122[0] = v83;
  v122[1] = v81;
  swift_getOpaqueTypeConformance2();
  v86 = sub_1C1262CE0();
  v87 = v111;
  swift_unknownObjectRelease();
  (*(v84 + 8))(v82, v85);
  v88 = swift_getKeyPath();
  v121[120] = 0;
  v114[0] = v87;
  v114[1] = v75;
  v114[2] = KeyPath;
  LOBYTE(v114[3]) = v94;
  v114[4] = v99;
  LOBYTE(v114[5]) = v95;
  v114[6] = v98;
  memset(&v114[7], 0, 24);
  LOBYTE(v114[10]) = v96;
  v114[11] = v97;
  memset(&v114[12], 0, 25);
  *&v114[16] = v76;
  v114[17] = sub_1C0FBEA18;
  v114[18] = 0;
  v114[19] = sub_1C118824C;
  v114[20] = v102;
  LOBYTE(v114[21]) = v93;
  v114[22] = v92;
  v114[23] = v91;
  v114[24] = v60;
  v114[25] = v62;
  LOBYTE(v114[26]) = 0;
  LOBYTE(v114[27]) = v90;
  v114[28] = v64;
  v114[29] = v66;
  v114[30] = v68;
  v114[31] = v70;
  LOBYTE(v114[32]) = 0;
  memcpy(&v114[32] + 1, v121, 0x77uLL);
  *&v114[47] = v79;
  v114[48] = 0;
  v114[49] = v86;
  v114[50] = v88;
  v114[51] = 0;
  LOBYTE(v114[52]) = 0;
  nullsub_1();
  memcpy(v122, v114, 0x1A1uLL);
  return memcpy(a1, v122, 0x1A1uLL);
}

void sub_1C1187950(double *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_1C12637E0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  ObjectType = swift_getObjectType();
  if (((*(a3 + 56))(ObjectType, a3) & 1) == 0)
  {
    v13 = *a4;
    v14 = *(a4 + 8);

    if ((v14 & 1) == 0)
    {
      sub_1C1266420();
      v15 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      v16 = j__swift_release_1();
      (*(v8 + 8))(v10, v7, v16);
      v13 = v17[1];
    }

    if (v13)
    {
      if (v11 != sub_1C12140B4())
      {
        sub_1C1211AF4(v11);
      }
    }
  }
}

double sub_1C1187AF8()
{
  v1 = sub_1C1263EB0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v45 = &v40[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v40[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v40[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40[-v21];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v40[-v24];
  v47 = type metadata accessor for OneUpChromeVideoControls(0);
  v49 = v0;
  sub_1C0FD72CC(v25);
  v26 = *MEMORY[0x1E697FF40];
  v52 = v2;
  v46 = *(v2 + 104);
  v46(v22, v26, v1);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v1);
  v48 = v4;
  v27 = *(v4 + 48);
  sub_1C10B1CE8(v25, v9);
  sub_1C10B1CE8(v22, &v9[v27]);
  if (__swift_getEnumTagSinglePayload(v9, 1, v1) == 1)
  {
    v44 = v26;
    sub_1C0F9E21C(v22, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0F9E21C(v25, &qword_1EBE902F0, &qword_1C12B38C0);
    if (__swift_getEnumTagSinglePayload(&v9[v27], 1, v1) != 1)
    {
LABEL_13:
      sub_1C0F9E21C(v9, &qword_1EBE902E8, &unk_1C12A2E90);
      return 20.0;
    }

    sub_1C0F9E21C(v9, &qword_1EBE902F0, &qword_1C12B38C0);
LABEL_6:
    v32 = v51;
    sub_1C0FD72CC(v51);
    v33 = v50;
    v46(v50, v44, v1);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v1);
    v34 = *(v48 + 48);
    sub_1C10B1CE8(v32, v6);
    sub_1C10B1CE8(v33, &v6[v34]);
    if (__swift_getEnumTagSinglePayload(v6, 1, v1) == 1)
    {
      sub_1C0F9E21C(v33, &qword_1EBE902F0, &qword_1C12B38C0);
      sub_1C0F9E21C(v32, &qword_1EBE902F0, &qword_1C12B38C0);
      if (__swift_getEnumTagSinglePayload(&v6[v34], 1, v1) == 1)
      {
        sub_1C0F9E21C(v6, &qword_1EBE902F0, &qword_1C12B38C0);
        return 40.0;
      }

      v9 = v6;
      goto LABEL_13;
    }

    sub_1C10B1CE8(v6, v12);
    if (__swift_getEnumTagSinglePayload(&v6[v34], 1, v1) == 1)
    {
      v22 = v33;
      v25 = v32;
      v19 = v12;
      v9 = v6;
      goto LABEL_11;
    }

    v36 = v52;
    v37 = v45;
    (*(v52 + 32))(v45, &v6[v34], v1);
    sub_1C11882C0(&qword_1EDE7BAB0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
    v38 = sub_1C1265DE0();
    v39 = *(v36 + 8);
    v39(v37, v1);
    sub_1C0F9E21C(v33, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0F9E21C(v32, &qword_1EBE902F0, &qword_1C12B38C0);
    v39(v12, v1);
    sub_1C0F9E21C(v6, &qword_1EBE902F0, &qword_1C12B38C0);
    if (v38)
    {
      return 40.0;
    }

    return 20.0;
  }

  sub_1C10B1CE8(v9, v19);
  if (__swift_getEnumTagSinglePayload(&v9[v27], 1, v1) == 1)
  {
LABEL_11:
    sub_1C0F9E21C(v22, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0F9E21C(v25, &qword_1EBE902F0, &qword_1C12B38C0);
    (*(v52 + 8))(v19, v1);
    goto LABEL_13;
  }

  v44 = v26;
  v42 = v12;
  v43 = v6;
  v28 = v52;
  v29 = v45;
  (*(v52 + 32))(v45, &v9[v27], v1);
  sub_1C11882C0(&qword_1EDE7BAB0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v41 = sub_1C1265DE0();
  v30 = *(v28 + 8);
  v31 = v29;
  v12 = v42;
  v6 = v43;
  v30(v31, v1);
  sub_1C0F9E21C(v22, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0F9E21C(v25, &qword_1EBE902F0, &qword_1C12B38C0);
  v30(v19, v1);
  sub_1C0F9E21C(v9, &qword_1EBE902F0, &qword_1C12B38C0);
  if (v41)
  {
    goto LABEL_6;
  }

  return 20.0;
}

uint64_t sub_1C11881E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpChromeVideoControls(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C118824C(double *a1)
{
  v3 = *(type metadata accessor for OneUpChromeVideoControls(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  sub_1C1187950(a1, v4, v5, v6);
}

uint64_t sub_1C11882C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C1188308()
{
  result = qword_1EDE76FD8;
  if (!qword_1EDE76FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E10, &qword_1C12BE240);
    sub_1C118838C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76FD8);
  }

  return result;
}

unint64_t sub_1C118838C()
{
  result = qword_1EDE76FE0;
  if (!qword_1EDE76FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E18, &qword_1C12BE248);
    sub_1C1188418();
    sub_1C109739C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76FE0);
  }

  return result;
}

unint64_t sub_1C1188418()
{
  result = qword_1EDE76FE8;
  if (!qword_1EDE76FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E20, &qword_1C12BE250);
    sub_1C11884D0();
    sub_1C0FDB6D4(&unk_1EDE7BB70, &qword_1EBE914F8, &qword_1C12A9330, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76FE8);
  }

  return result;
}

unint64_t sub_1C11884D0()
{
  result = qword_1EDE77000;
  if (!qword_1EDE77000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E28, &qword_1C12BE258);
    sub_1C118855C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77000);
  }

  return result;
}

unint64_t sub_1C118855C()
{
  result = qword_1EDE77030;
  if (!qword_1EDE77030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E30, &qword_1C12BE260);
    sub_1C11885E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77030);
  }

  return result;
}

unint64_t sub_1C11885E8()
{
  result = qword_1EDE77098;
  if (!qword_1EDE77098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E38, &qword_1C12BE268);
    sub_1C1188674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77098);
  }

  return result;
}

unint64_t sub_1C1188674()
{
  result = qword_1EDE77158;
  if (!qword_1EDE77158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E40, &qword_1C12BE270);
    sub_1C1188700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77158);
  }

  return result;
}

unint64_t sub_1C1188700()
{
  result = qword_1EDE77288;
  if (!qword_1EDE77288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E48, &qword_1C12BE278);
    sub_1C11887B8();
    sub_1C0FDB6D4(&qword_1EDE7BAA0, &qword_1EBE94EC0, &qword_1C12BBF00, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77288);
  }

  return result;
}

unint64_t sub_1C11887B8()
{
  result = qword_1EDE7BF50;
  if (!qword_1EDE7BF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E50, &unk_1C12BE280);
    sub_1C1188844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF50);
  }

  return result;
}

unint64_t sub_1C1188844()
{
  result = qword_1EDE7D690;
  if (!qword_1EDE7D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D690);
  }

  return result;
}

void sub_1C1188898()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MockViewController();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() blueColor];
    [v2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

id MockViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1C1265E70();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id MockViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1C1265E70();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for MockViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id MockViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MockViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MockViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id MockViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PhotosInlinePlayState.description.getter()
{
  result = 0x64656C6261736964;
  switch(*v0)
  {
    case 1:
      result = 0x646564616F6C6E75;
      break;
    case 2:
      result = 0x646573756170;
      break;
    case 3:
      result = 0x676E6979616C70;
      break;
    default:
      return result;
  }

  return result;
}

PhotosSwiftUICore::PhotosInlinePlayState_optional __swiftcall PhotosInlinePlayState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C1188E24()
{
  result = qword_1EDE822C0;
  if (!qword_1EDE822C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE822C0);
  }

  return result;
}

uint64_t sub_1C1188E80@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosInlinePlayState.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosInlinePlayState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C1189040(__n128 a1)
{
  type metadata accessor for OneUpSpatialPhotoBadgeStateModel(0);
  v1 = swift_allocObject();
  result = sub_1C1189B44(v1);
  qword_1EDE7C6D0 = result;
  return result;
}

double static OneUpSpatialPhotoBadgeStateModel.shared.getter()
{
  if (qword_1EDE82FD8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1C11890DC()
{
  result = sub_1C1265E70();
  qword_1EDE77720 = result;
  return result;
}

id static OneUpSpatialPhotoBadgeStateModel.threeDBadgeToggled.getter()
{
  if (qword_1EDE7C6E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE77720;

  return v1;
}

void sub_1C1189178(unsigned __int8 *a1)
{
  v2 = *a1;
  sub_1C11893E4(v7);
  if (LOBYTE(v7[0]) != v2)
  {
    v3 = [objc_opt_self() defaultCenter];
    if (qword_1EDE7C6E0 != -1)
    {
      swift_once();
    }

    v4 = qword_1EDE77720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95E58, &unk_1C12BE5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C12A8B40;
    v7[0] = 0x65756C615677656ELL;
    v7[1] = 0xE800000000000000;
    sub_1C12668E0();
    *(inited + 96) = &type metadata for OneUpSpatialPhotoBadgeStateModel.State;
    sub_1C11893E4((inited + 72));
    v6 = sub_1C1265CE0();
    sub_1C118A008(v4, v1, v6, v3);
  }
}

void sub_1C11892C8(_BYTE *a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = *a1;
  v3 = v2;
  sub_1C1189178(&v3);
}

void (*sub_1C11892FC(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return sub_1C1189328;
}

void sub_1C1189328(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v2 = &v3;
  }

  else
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  sub_1C11892C8(v2);
}

void sub_1C11893E4(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C118945C(v3);
  sub_1C1261F30();

  *a1 = *(v1 + 16);
}

unint64_t sub_1C118945C(__n128 a1)
{
  result = qword_1EDE7C6C8;
  if (!qword_1EDE7C6C8)
  {
    type metadata accessor for OneUpSpatialPhotoBadgeStateModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C6C8);
  }

  return result;
}

uint64_t type metadata accessor for OneUpSpatialPhotoBadgeStateModel(uint64_t a1)
{
  result = qword_1EDE82FC0;
  if (!qword_1EDE82FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1C1189500(unsigned __int8 *a1)
{
  if (*(v1 + 16) == *a1)
  {
    v7[0] = *a1;
    sub_1C11892C8(v7);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_1_0();
    sub_1C1189B90(v4, sub_1C1189AF8, v5, v6);
  }

  return result;
}

uint64_t (*sub_1C11895A0(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC17PhotosSwiftUICore32OneUpSpatialPhotoBadgeStateModel___observationRegistrar;
  *v3 = v1;
  v5 = sub_1C118945C(v4);
  OUTLINED_FUNCTION_1_6(v5);

  *v3 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_3(KeyPath);

  v3[7] = sub_1C11892FC(v3);
  return sub_1C1189668;
}

uint64_t sub_1C11896C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C118971C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C118971C()
{
  swift_getKeyPath();
  sub_1C118945C(v1);
  sub_1C1261F30();

  swift_beginAccess();
  return *(v0 + 17);
}

void sub_1C11897A0(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 17) == v2)
  {
    *(v1 + 17) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_1_0();
    sub_1C1189B90(v4, sub_1C1189B70, v5, v6);
  }
}

uint64_t sub_1C118984C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 17) = a2;
  return result;
}

uint64_t (*sub_1C11898A0(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC17PhotosSwiftUICore32OneUpSpatialPhotoBadgeStateModel___observationRegistrar;
  *v3 = v1;
  v5 = sub_1C118945C(v4);
  OUTLINED_FUNCTION_1_6(v5);

  *v3 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_3(KeyPath);

  v3[7] = sub_1C1189674(v3);
  return sub_1C1189968;
}

BOOL sub_1C11899A4()
{
  sub_1C11893E4(&v2);
  if (v2 == 3)
  {
    return 1;
  }

  sub_1C11893E4(&v1);
  return v1 == 2;
}

BOOL sub_1C11899F0()
{
  sub_1C11893E4(&v3);
  if (v3 == 3)
  {
    return 1;
  }

  sub_1C11893E4(&v2);
  if (v2 == 1)
  {
    return 1;
  }

  sub_1C11893E4(&v1);
  return v1 == 2;
}

uint64_t OneUpSpatialPhotoBadgeStateModel.State.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C1189B44(uint64_t a1)
{
  *(v1 + 16) = 0;
  sub_1C1261F60();
  return v1;
}

uint64_t OneUpSpatialPhotoBadgeStateModel.deinit()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore32OneUpSpatialPhotoBadgeStateModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t OneUpSpatialPhotoBadgeStateModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore32OneUpSpatialPhotoBadgeStateModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C1189D08(uint64_t a1)
{
  result = sub_1C1261F70();
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

_BYTE *storeEnumTagSinglePayload for OneUpSpatialPhotoBadgeStateModel.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C118A008(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1C1265CC0();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

uint64_t PhotosInlinePlayerView.init(id:model:ignoreMaxColumnCountLimit:playerProvider:content:onVisibilityChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16)
{
  v37[0] = a11;
  v37[1] = a12;
  v38 = a13;
  v39 = a14;
  v40 = a15;
  v41 = a16;
  v21 = type metadata accessor for PhotosInlinePlayerView(0, v37);
  v22 = a9 + v21[26];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = a9 + v21[27];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = (a9 + v21[28]);
  *v24 = sub_1C118A248(0);
  v24[1] = v25;
  OUTLINED_FUNCTION_15_1();
  (*(v26 + 32))(a9, a1, a11);
  v27 = v21[21];
  sub_1C1266790();
  OUTLINED_FUNCTION_15_1();
  result = (*(v28 + 32))(a9 + v27, a2);
  v30 = (a9 + v21[22]);
  *v30 = a4;
  v30[1] = a5;
  v31 = (a9 + v21[23]);
  *v31 = a6;
  v31[1] = a7;
  v32 = (a9 + v21[24]);
  *v32 = a8;
  v32[1] = a10;
  *(a9 + v21[25]) = a3;
  return result;
}

uint64_t sub_1C118A248(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93868, &qword_1C12B4BC0);
  sub_1C1265410();
  return v2;
}

uint64_t sub_1C118A290(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 104));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t sub_1C118A3DC(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 108));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v11 = j__swift_release_0();
    (*(v4 + 8))(v6, v3, v11);
    return v13[1];
  }

  return v8;
}

uint64_t sub_1C118A52C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95E88, &qword_1C12BE710);
  sub_1C1265420();
  return v2;
}

double sub_1C118A580(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95E88, &qword_1C12BE710);
  sub_1C1265430();
  return result;
}

uint64_t sub_1C118A5D8(uint64_t a1)
{
  if (sub_1C118A3DC(a1))
  {
    v1 = sub_1C10CCA58();

    v2 = (v1 == 2) | v1;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t PhotosInlinePlayerView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v120 = a1;
  OUTLINED_FUNCTION_1();
  v109 = v3;
  v116 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v115 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E60, &qword_1C12BE630);
  *&v118 = *(a1 + 40);
  v7 = sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E68, &qword_1C12BE638);
  OUTLINED_FUNCTION_20_0();
  swift_getTupleTypeMetadata3();
  v101 = sub_1C1265B00();
  v100 = OUTLINED_FUNCTION_6_32();
  v8 = sub_1C12655C0();
  OUTLINED_FUNCTION_1();
  v105 = v9;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34();
  v98 = v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E70, &qword_1C12BE640);
  v85 = v8;
  v12 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v106 = v13;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_34();
  v94 = v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E78, &qword_1C12BE648);
  v91 = v12;
  v16 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v108 = v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_34();
  v114 = v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE915D8, &qword_1C12BE650);
  OUTLINED_FUNCTION_1_43();
  WitnessTable = swift_getWitnessTable();
  v84[1] = WitnessTable;
  OUTLINED_FUNCTION_10_5();
  v23 = sub_1C0FDB6D4(v21, &qword_1EBE95E70, &qword_1C12BE640, v22);
  v139 = WitnessTable;
  v140 = v23;
  v24 = swift_getWitnessTable();
  v90 = v24;
  OUTLINED_FUNCTION_11();
  v27 = sub_1C0FDB6D4(v25, &qword_1EBE95E78, &qword_1C12BE648, v26);
  v137 = v24;
  v138 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_1C10450CC();
  v133 = v16;
  v134 = v7;
  v30 = v16;
  v88 = v16;
  v89 = v7;
  v31 = v7;
  v135 = v28;
  v136 = v29;
  v32 = v28;
  v86 = v28;
  v87 = v29;
  v33 = MEMORY[0x1E6981440];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v97 = OpaqueTypeMetadata2;
  OUTLINED_FUNCTION_1();
  v107 = v35;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_34();
  v112 = v37;
  v38 = v120;
  v39 = *(v120 + 24);
  OUTLINED_FUNCTION_20_0();
  v40 = sub_1C1266790();
  v133 = v30;
  v134 = v31;
  v135 = v32;
  v136 = v29;
  v102 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v95 = OpaqueTypeConformance2;
  v42 = *(v38 + 56);
  v132 = *(v42 + 8);
  OUTLINED_FUNCTION_5_7();
  v93 = v40;
  v96 = swift_getWitnessTable();
  v133 = OpaqueTypeMetadata2;
  v134 = v40;
  v135 = OpaqueTypeConformance2;
  v136 = v96;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v103 = v43;
  v104 = v44;
  MEMORY[0x1EEE9AC00](v43);
  v92 = v84 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v99 = v84 - v47;
  *&v48 = *(v38 + 16);
  *(&v48 + 1) = v39;
  *&v49 = *(v38 + 32);
  *(&v49 + 1) = v118;
  v118 = v49;
  v119 = v48;
  v127 = v48;
  v128 = v49;
  v111 = *(v38 + 48);
  v50 = v111;
  *&v48 = v111;
  *(&v48 + 1) = v42;
  v51 = v113;
  v131 = v113;
  v117 = *(v38 + 64);
  v129 = v48;
  v130 = v117;
  sub_1C1009330(v101, v100, v52, v53, v54, v55);
  v56 = v98;
  sub_1C12655B0();
  LOBYTE(v133) = 1;
  sub_1C104524C();
  v57 = v94;
  v58 = v85;
  sub_1C12649C0();
  (*(v105 + 8))(v56, v58);
  sub_1C1265940();
  v121 = v119;
  v122 = v118;
  v123 = v50;
  v124 = v42;
  v84[0] = v42;
  v125 = v117;
  v126 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95E80, &qword_1C12BE658);
  sub_1C118C2D0();
  v59 = v91;
  sub_1C1264F60();
  (*(v106 + 1))(v57, v59);
  v60 = v120;
  v133 = sub_1C118A3DC(v120);
  v61 = v109;
  v62 = *(v109 + 16);
  v105 = v133;
  v106 = v62;
  v63 = v115;
  v62(v115, v51, v60);
  v64 = (*(v61 + 80) + 80) & ~*(v61 + 80);
  v65 = swift_allocObject();
  v66 = v118;
  *(v65 + 16) = v119;
  *(v65 + 32) = v66;
  *(v65 + 48) = v111;
  *(v65 + 56) = v42;
  *(v65 + 64) = v117;
  v109 = *(v61 + 32);
  (v109)(v65 + v64, v63, v60);
  v67 = v88;
  OUTLINED_FUNCTION_2_1();
  v68 = v114;
  sub_1C1265000();

  (*(v108 + 8))(v68, v67);
  v69 = v120;
  v70 = v115;
  v106(v115, v113, v120);
  v71 = swift_allocObject();
  v72 = v118;
  *(v71 + 16) = v119;
  *(v71 + 32) = v72;
  v73 = v84[0];
  *(v71 + 48) = v111;
  *(v71 + 56) = v73;
  *(v71 + 64) = v117;
  (v109)(v71 + v64, v70, v69);
  v74 = swift_checkMetadataState();
  v76 = v96;
  v75 = v97;
  v77 = v95;
  OUTLINED_FUNCTION_2_1();
  v78 = v92;
  v79 = v112;
  sub_1C1265000();

  (*(v107 + 8))(v79, v75);
  v133 = v75;
  v134 = v74;
  v135 = v77;
  v136 = v76;
  swift_getOpaqueTypeConformance2();
  v80 = v99;
  v81 = v103;
  sub_1C0FDBA4C();
  v82 = *(v104 + 8);
  v82(v78, v81);
  sub_1C0FDBA4C();
  return (v82)(v80, v81);
}

uint64_t sub_1C118AF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t (*a4)()@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v128 = a6;
  v125 = a5;
  v129 = a4;
  v127 = a3;
  v126 = a2;
  v116 = a1;
  v115 = a9;
  v130 = a10;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95E90, &qword_1C12BE718);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v112 = &v93 - v18;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95E98, &qword_1C12BE720);
  v98 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v97 = &v93 - v19;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95E68, &qword_1C12BE638);
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v120 = &v93 - v22;
  v109 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v108 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v94 = &v93 - v26;
  v124 = sub_1C1266790();
  v121 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v119 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v123 = &v93 - v29;
  v136 = a2;
  v137 = a3;
  v138 = a4;
  v139 = a5;
  *&v140 = a6;
  *(&v140 + 1) = a7;
  v30 = a7;
  v122 = a7;
  v31 = a8;
  v117 = a8;
  *&v141 = a8;
  *(&v141 + 1) = a10;
  v32 = type metadata accessor for PhotosInlinePlayerView(0, &v136);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v93 - v35;
  v111 = sub_1C1265170();
  v37 = *(v33 + 16);
  v37(v36, a1, v32);
  v38 = *(v33 + 80);
  v39 = (v38 + 80) & ~v38;
  v40 = swift_allocObject();
  v41 = v127;
  v40[2] = v126;
  v40[3] = v41;
  v42 = v125;
  v40[4] = v129;
  v40[5] = v42;
  v40[6] = v128;
  v40[7] = v30;
  v43 = v130;
  v40[8] = v31;
  v40[9] = v43;
  v44 = *(v33 + 32);
  v95 = v33 + 32;
  v102 = v40;
  v44(v40 + v39, v36, v32);
  v45 = v116;
  v107 = v33 + 16;
  v106 = v37;
  v37(v36, v116, v32);
  v105 = v38;
  v104 = v39 + v34;
  v46 = swift_allocObject();
  v47 = v127;
  v46[2] = v126;
  v46[3] = v47;
  v48 = v125;
  v46[4] = v129;
  v46[5] = v48;
  v49 = v122;
  v46[6] = v128;
  v46[7] = v49;
  v50 = v130;
  v46[8] = v117;
  v46[9] = v50;
  v110 = v39;
  v101 = v46;
  v96 = v36;
  v103 = v44;
  v44(v46 + v39, v36, v32);
  if (sub_1C118A52C(v32))
  {
    v51 = sub_1C0FE72E0();
    v53 = v52;

    if (v51)
    {
      v54 = *(v45 + *(v32 + 92));
      v136 = v51;
      v137 = v53;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95EB0, &qword_1C12BE738);
      swift_dynamicCast();
      v55 = v108;
      v54(v144[0]);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v56 = v94;
      v57 = v125;
      sub_1C0FDBA4C();
      v58 = v109;
      v59 = *(v109 + 8);
      v59(v55, v57);
      sub_1C0FDBA4C();
      v59(v56, v57);
      v60 = v119;
      v48 = v57;
      (*(v58 + 32))(v119, v55, v57);
      v61 = 0;
    }

    else
    {
      v61 = 1;
      v60 = v119;
      v48 = v125;
    }
  }

  else
  {
    v61 = 1;
    v60 = v119;
  }

  v62 = 1;
  __swift_storeEnumTagSinglePayload(v60, v61, 1, v48);
  sub_1C1170030(v60, v123);
  v63 = *(v121 + 8);
  v109 = v121 + 8;
  v108 = v63;
  (v63)(v60, v124);
  if ((sub_1C118A5D8(v32) & 1) == 0)
  {
    v136 = sub_1C1265170();
    LOBYTE(v137) = 0;
    v64 = v96;
    v106(v96, v45, v32);
    v65 = swift_allocObject();
    v66 = v130;
    v67 = v127;
    *(v65 + 2) = v126;
    *(v65 + 3) = v67;
    *(v65 + 4) = v129;
    *(v65 + 5) = v48;
    v68 = v122;
    *(v65 + 6) = v128;
    *(v65 + 7) = v68;
    v69 = v117;
    *(v65 + 8) = v117;
    *(v65 + 9) = v66;
    v103(&v65[v110], v64, v32);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95EA0, &qword_1C12BE728);
    v94 = sub_1C118D120();
    sub_1C1264E20();

    v71 = v66;
    v60 = v119;

    v72 = v116;
    sub_1C118A290(v32);
    sub_1C1165B00(&v136);

    v106(v64, v72, v32);
    v73 = swift_allocObject();
    v74 = v127;
    *(v73 + 2) = v126;
    *(v73 + 3) = v74;
    *(v73 + 4) = v129;
    *(v73 + 5) = v48;
    v75 = v122;
    *(v73 + 6) = v128;
    *(v73 + 7) = v75;
    *(v73 + 8) = v69;
    *(v73 + 9) = v71;
    v103(&v73[v110], v64, v32);
    v136 = v70;
    v137 = v94;
    swift_getOpaqueTypeConformance2();
    v76 = v97;
    v77 = v100;
    v78 = v112;
    sub_1C1264E20();

    (*(v99 + 8))(v78, v77);
    (*(v98 + 32))(v120, v76, v118);
    v62 = 0;
  }

  v79 = v120;
  __swift_storeEnumTagSinglePayload(v120, v62, 1, v118);
  v136 = v111;
  LOBYTE(v137) = 0;
  *(&v137 + 1) = *v145;
  HIDWORD(v137) = *&v145[3];
  v138 = sub_1C118D038;
  v139 = v102;
  v140 = 0u;
  v141 = 0u;
  v142 = sub_1C118D050;
  v143 = v101;
  v144[0] = &v136;
  v80 = v60;
  v81 = v123;
  v82 = v60;
  v83 = v124;
  (*(v121 + 16))(v80, v123, v124);
  v144[1] = v82;
  v84 = v114;
  sub_1C0FC1734(v79, v114);
  v144[2] = v84;

  v135[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95E60, &qword_1C12BE630);
  v135[1] = v83;
  v135[2] = v113;
  v132 = sub_1C118D434(&qword_1EDE7BD30, &qword_1EBE95E60, &qword_1C12BE630, sub_1C118D404);
  v131 = v130;
  WitnessTable = swift_getWitnessTable();
  v134 = sub_1C118D4B8();
  sub_1C119EE80(v144, 3, v135);

  sub_1C0FC17A0(v79);
  v85 = v108;
  (v108)(v81, v83);
  sub_1C0FC17A0(v84);
  v85(v82, v83);
  v86 = v138;
  v87 = v139;
  v88 = v140;
  v89 = v141;
  v90 = v142;
  v91 = v143;

  sub_1C0FCF004(v86, v87);
  sub_1C0FCF004(v88, *(&v88 + 1));
  sub_1C0FCF004(v89, *(&v89 + 1));
  return sub_1C0FCF004(v90, v91);
}

double sub_1C118BCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = a8;
  v21[7] = a9;
  v10 = type metadata accessor for PhotosInlinePlayerView(0, v21);
  if (!sub_1C118A52C(v10))
  {
    sub_1C118A290(v10);
    sub_1C116E5FC();
    v12 = v11;

    v13 = (a1 + *(v10 + 96));
    v14 = *v13;
    v15 = v13[1];
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = v15;
    v17 = *(v12 + 64);
    v18 = *(v12 + 72);
    *(v12 + 64) = sub_1C118D5B0;
    *(v12 + 72) = v16;
    sub_1C0FCF1B4(v14, v15);
    sub_1C0FCF004(v17, v18);

    sub_1C118A580(v19, v10);
    sub_1C118BE28(v10);
  }

  return result;
}

void sub_1C118BDDC(uint64_t a1, void (*a2)(void))
{
  if (a2)
  {
    v3 = sub_1C0FE75F0();
    a2(v3 & 1);
  }
}

uint64_t sub_1C118BE28(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 24);
  v5 = sub_1C1266790();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v29 = *(v4 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v30 = &v25 - v12;
  result = sub_1C118A52C(a1);
  if (result)
  {
    v14 = sub_1C118A3DC(a1);
    v15 = sub_1C0FE652C(v14);
    (*(v6 + 16))(v8, v1 + *(a1 + 84), v5, v15);
    if (__swift_getEnumTagSinglePayload(v8, 1, v4) == 1)
    {

      return (*(v6 + 8))(v8, v5);
    }

    else
    {
      v17 = v29;
      v16 = v30;
      v18 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = *(v29 + 32);
      v28(v30, v8, v4);
      v19 = (v2 + *(a1 + 88));
      v20 = *v19;
      v26 = v19[1];
      v27 = v20;
      (*(v17 + 16))(v18, v16, v4);
      v21 = (*(v17 + 80) + 96) & ~*(v17 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = *(a1 + 16);
      *(v22 + 24) = v4;
      v23 = *(a1 + 48);
      *(v22 + 32) = *(a1 + 32);
      *(v22 + 48) = v23;
      *(v22 + 64) = *(a1 + 64);
      v24 = v26;
      *(v22 + 80) = v27;
      *(v22 + 88) = v24;
      v28((v22 + v21), v18, v4);

      sub_1C0FE6EC8(sub_1C118CFD0, v22);
      sub_1C0FE7758();

      return (*(v17 + 8))(v30, v4);
    }
  }

  return result;
}

double sub_1C118C110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a7;
  v11[6] = a8;
  v11[7] = a9;
  v9 = type metadata accessor for PhotosInlinePlayerView(0, v11);
  if (sub_1C118A52C(v9))
  {

    if (sub_1C118A52C(v9))
    {
      sub_1C0FE652C(0);
    }

    return sub_1C118A580(0, v9);
  }

  return result;
}

double sub_1C118C1A8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v17[5] = a8;
  v17[6] = a9;
  v17[7] = a10;
  v14 = type metadata accessor for PhotosInlinePlayerView(0, v17);
  v15 = sub_1C118A3DC(v14);
  if (v15)
  {
    sub_1C10CF534(a2, a1 & 1, a11, v15, a3);
  }

  return result;
}

void sub_1C118C23C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9)
{
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a7;
  v12[7] = a9;
  v10 = type metadata accessor for PhotosInlinePlayerView(0, v12);
  v11 = sub_1C118A52C(v10);
  if (v11 && (sub_1C0FE7588() & 1) == 0)
  {

    v11 = 0;
  }

  *a8 = v11;
}

unint64_t sub_1C118C2D0()
{
  result = qword_1EDE80EE0;
  if (!qword_1EDE80EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E80, &qword_1C12BE658);
    sub_1C118C354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE80EE0);
  }

  return result;
}

unint64_t sub_1C118C354()
{
  result = qword_1EDE80EE8[0];
  if (!qword_1EDE80EE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE80EE8);
  }

  return result;
}

void *sub_1C118C3A8(void *result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = *a2;
  if (*result)
  {
    if (*result == v11)
    {
      return result;
    }
  }

  else if (!v11)
  {
    return result;
  }

  v13[0] = a4;
  v13[1] = a5;
  v13[2] = a6;
  v13[3] = a7;
  v13[4] = a8;
  v13[5] = a9;
  v13[6] = a10;
  v13[7] = a11;
  v12 = type metadata accessor for PhotosInlinePlayerView(0, v13);
  return sub_1C118BE28(v12);
}

void sub_1C118C490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = a7;
  v38 = a8;
  v35 = a4;
  v36 = a6;
  v39 = a3;
  v41 = a1;
  v42 = a2;
  v34 = *(a5 - 8);
  v40 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C1266790();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v32 - v20;
  v23 = *(v22 + 48);
  v24 = *(v14 + 16);
  v24(&v32 - v20, v41, v13, v19);
  (v24)(&v21[v23], v42, v13);
  if (__swift_getEnumTagSinglePayload(v21, 1, a5) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v21[v23], 1, a5) == 1)
    {
      (*(v14 + 8))(v21, v13);
      return;
    }
  }

  else
  {
    (v24)(v16, v21, v13);
    if (__swift_getEnumTagSinglePayload(&v21[v23], 1, a5) != 1)
    {
      v29 = v33;
      v28 = v34;
      (*(v34 + 32))(v33, &v21[v23], a5);
      v25 = v40;
      v30 = sub_1C1265DE0();
      v31 = *(v28 + 8);
      v31(v29, a5);
      v31(v16, a5);
      (*(v14 + 8))(v21, v13);
      if (v30)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v34 + 8))(v16, a5);
  }

  (*(v18 + 8))(v21, TupleTypeMetadata2);
  v25 = v40;
LABEL_7:
  v43[0] = v35;
  v43[1] = a5;
  v43[2] = v36;
  v43[3] = v37;
  v43[4] = v38;
  v43[5] = v25;
  v43[6] = a10;
  v43[7] = a11;
  v26 = type metadata accessor for PhotosInlinePlayerView(0, v43);
  sub_1C118BE28(v26);
  v27 = sub_1C118A52C(v26);
  if (v27)
  {
    sub_1C0FE67C4(v27);
  }
}

void sub_1C118C8F8(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C1266790();
    if (v2 <= 0x3F)
    {
      sub_1C1007F88();
      if (v3 <= 0x3F)
      {
        sub_1C118CF6C(319, &qword_1EDE768F0, &qword_1EBE90BA0, qword_1C12A8220, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C118CF14(319);
          if (v5 <= 0x3F)
          {
            sub_1C118CF6C(319, &qword_1EDE77610, &qword_1EBE915D8, &qword_1C12BE650, MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1C118CF6C(319, &unk_1EDE76CB8, &qword_1EBE93868, &qword_1C12B4BC0, MEMORY[0x1E6981790]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C118CA88(uint64_t result, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(v5 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v7)
  {
    v11 = *(*(v6 - 8) + 84);
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = *(v8 + 80);
  v13 = *(*(v5 - 8) + 64);
  if (!v9)
  {
    ++v13;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v6 - 8) + 64) + v12;
  v15 = v13 + 7;
  if (v11 >= a2)
  {
LABEL_31:
    if (v7 == v11)
    {

      return __swift_getEnumTagSinglePayload(result, v7, v6);
    }

    v23 = (v14 + result) & ~v12;
    if (v10 != v11)
    {
      v24 = *((v15 + v23) & 0xFFFFFFFFFFFFFFF8);
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }

    if (v9 >= 2)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, v9, v5);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v16 = ((((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v11 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  switch(v19)
  {
    case 1:
      v20 = *(result + v16);
      if (!*(result + v16))
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    case 2:
      v20 = *(result + v16);
      if (!*(result + v16))
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    case 3:
      __break(1u);
      return result;
    case 4:
      v20 = *(result + v16);
      if (!v20)
      {
        goto LABEL_31;
      }

LABEL_28:
      v21 = v20 - 1;
      if ((v16 & 0xFFFFFFF8) != 0)
      {
        v21 = 0;
        v22 = *result;
      }

      else
      {
        v22 = 0;
      }

      result = v11 + (v22 | v21) + 1;
      break;
    default:
      goto LABEL_31;
  }

  return result;
}

void sub_1C118CC9C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a4 + 16);
  v9 = *(*(v8 - 8) + 84);
  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = *(*(v8 - 8) + 84);
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(v11 + 80);
  v16 = *(*(v8 - 8) + 64) + v15;
  v17 = v16 & ~v15;
  v18 = *(*(v10 - 8) + 64);
  if (!v12)
  {
    ++v18;
  }

  v19 = v18 + 7;
  v20 = ((((((v19 + v17) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v14 < a3)
  {
    v21 = a3 - v14;
    if (((((((v19 + v17) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 79) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = v21 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v7 = v23;
    }

    else
    {
      v7 = 0;
    }
  }

  if (a2 <= v14)
  {
    switch(v7)
    {
      case 1:
        a1[v20] = 0;
        if (a2)
        {
          goto LABEL_38;
        }

        return;
      case 2:
        *&a1[v20] = 0;
        if (a2)
        {
          goto LABEL_38;
        }

        return;
      case 3:
LABEL_52:
        __break(1u);
        return;
      case 4:
        *&a1[v20] = 0;
        goto LABEL_37;
      default:
LABEL_37:
        if (!a2)
        {
          return;
        }

LABEL_38:
        if (v9 == v14)
        {
          v26 = a1;
        }

        else
        {
          v26 = (&a1[v16] & ~v15);
          if (v13 != v14)
          {
            v27 = (&v26[v19] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v28 = a2 & 0x7FFFFFFF;
              v27[1] = 0;
            }

            else
            {
              v28 = (a2 - 1);
            }

            *v27 = v28;
            return;
          }

          a2 = (a2 + 1);
          v9 = v12;
          v8 = v10;
        }

        __swift_storeEnumTagSinglePayload(v26, a2, v9, v8);
        break;
    }
  }

  else
  {
    if (((((((v19 + v17) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 79) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v24 = a2 - v14;
    }

    else
    {
      v24 = 1;
    }

    if (((((((v19 + v17) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 79) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v25 = ~v14 + a2;
      bzero(a1, ((((((v19 + v17) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v25;
    }

    switch(v7)
    {
      case 1:
        a1[v20] = v24;
        break;
      case 2:
        *&a1[v20] = v24;
        break;
      case 3:
        goto LABEL_52;
      case 4:
        *&a1[v20] = v24;
        break;
      default:
        return;
    }
  }
}

void sub_1C118CF14(uint64_t a1)
{
  if (!qword_1EDE77628)
  {
    type metadata accessor for PhotosInlinePlaybackCoordinator(255);
    v1 = sub_1C1262A70();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE77628);
    }
  }
}

void sub_1C118CF6C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1C118D068(uint64_t (*a1)(uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v12[0] = v1[2];
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v12[7] = v9;
  OUTLINED_FUNCTION_9_30(a1, v12);
  OUTLINED_FUNCTION_8_38();
  return a1(v10);
}

unint64_t sub_1C118D120()
{
  result = qword_1EDE7BE38;
  if (!qword_1EDE7BE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95EA0, &qword_1C12BE728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE38);
  }

  return result;
}

uint64_t objectdestroyTm_12()
{
  v2 = *(v0 + 72);
  v10 = *(v0 + 16);
  v1 = v10;
  v11 = *(v0 + 24);
  v9 = v11;
  v12 = *(v0 + 40);
  v13 = *(v0 + 56);
  v14 = v2;
  v3 = type metadata accessor for PhotosInlinePlayerView(0, &v10);
  v4 = v0 + ((*(*(v3 - 8) + 80) + 80) & ~*(*(v3 - 8) + 80));
  OUTLINED_FUNCTION_15_1();
  (*(v5 + 8))(v4, v1);
  v6 = *(v3 + 84);
  if (!__swift_getEnumTagSinglePayload(v4 + v6, 1, v9))
  {
    OUTLINED_FUNCTION_15_1();
    (*(v7 + 8))(v4 + v6, v9);
  }

  if (*(v4 + *(v3 + 96)))
  {
  }

  j__swift_release_0();

  return swift_deallocObject();
}

uint64_t sub_1C118D434(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C118D4B8()
{
  result = qword_1EDE7B8A0;
  if (!qword_1EDE7B8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E68, &qword_1C12BE638);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E90, &qword_1C12BE718);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95EA0, &qword_1C12BE728);
    sub_1C118D120();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B8A0);
  }

  return result;
}

uint64_t PhotosItemPlaceholderModel.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosItemPlaceholderModel.init(_:)(a1);
  return v2;
}

uint64_t PhotosItemPlaceholderModel.init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  sub_1C1261F60();
  OUTLINED_FUNCTION_2_15();
  sub_1C118D688();
  return v1;
}

uint64_t sub_1C118D6CC(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_14_5();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_2();
  sub_1C118D814(v9);
  v10 = *(v7 + 8);
  v10(v2, v5);
  v17 = v5;
  OUTLINED_FUNCTION_20();
  v18 = *(v11 + 88);
  KeyPath = swift_getKeyPath();
  v15 = v1;
  v16 = a1;
  sub_1C118E060(KeyPath, sub_1C118E134, v14, MEMORY[0x1E69E7CA8] + 8);

  return v10(a1, v5);
}

uint64_t sub_1C118D814@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_15_1();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_1C118D8A4(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_15_1();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*sub_1C118D93C(uint64_t a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C118D9C8(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1C118D6CC(v3);
}

uint64_t sub_1C118DA88@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_10_2();
  KeyPath = swift_getKeyPath();
  sub_1C118DFC4(KeyPath);

  return sub_1C118D814(a1);
}

uint64_t sub_1C118DB08(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v6 - v2;
  (*(v4 + 16))(v6 - v2, v1);
  return sub_1C118D8A4(v3);
}

uint64_t (*sub_1C118DBD4(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_2_15();
  v5 = *(v4 + 80);
  v7 = *(v6 + 88);
  KeyPath = swift_getKeyPath();
  sub_1C118DFC4(KeyPath);

  OUTLINED_FUNCTION_10_2();
  *v3 = v1;
  swift_getKeyPath();
  type metadata accessor for PhotosItemPlaceholderModel(255, v5, v7, v9);
  OUTLINED_FUNCTION_0_57();
  swift_getWitnessTable();
  sub_1C1261F50();

  v3[5] = sub_1C118D93C(v3);
  return sub_1C118DD08;
}

void sub_1C118DD08(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_1C118DD5C(v2);

  free(v1);
}

double sub_1C118DD5C(void *a1)
{
  v1 = *(*a1 + 80);
  v2 = *(*a1 + 88);
  swift_getKeyPath();
  type metadata accessor for PhotosItemPlaceholderModel(255, v1, v2, v3);
  swift_getWitnessTable();
  sub_1C1261F40();

  return result;
}

uint64_t sub_1C118DE3C()
{
  OUTLINED_FUNCTION_2_16();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_14_5();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_2();
  sub_1C118DA88(v6);
  OUTLINED_FUNCTION_20();
  sub_1C12622A0();
  return (*(v4 + 8))(v0, v2);
}

uint64_t sub_1C118DF10()
{
  OUTLINED_FUNCTION_2_15();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C118DE3C();
  return sub_1C1265ED0();
}

uint64_t sub_1C118DFC4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_57();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C118E060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_57();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t PhotosItemPlaceholderModel.deinit()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_15_1();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 104);
  sub_1C1261F70();
  OUTLINED_FUNCTION_15_1();
  (*(v5 + 8))(v0 + v4);
  return v0;
}

uint64_t PhotosItemPlaceholderModel.__deallocating_deinit()
{
  PhotosItemPlaceholderModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C118E294(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void (*sub_1C118E2DC(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C118DBD4(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C118E338(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C118E3B4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1C1261F70();
    if (v3 <= 0x3F)
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

uint64_t PhotosUtilityAlbumCell.init(_:badgeConfiguration:content:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  __src[0] = a4;
  __src[1] = a5;
  __src[2] = a6;
  __src[3] = a7;
  __src[4] = a9;
  v14 = type metadata accessor for PhotosUtilityAlbumCell(0, __src);
  v15 = v14[17];
  *(a8 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  swift_storeEnumTagMultiPayload();
  v16 = v14[18];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a8 + v16), __src, 0xD1uLL);
  v17 = *(a4 - 8);
  v18 = (*(v17 + 16))(a8, a1, a4);
  *(a8 + v14[15]) = *a2;
  a3(v18);

  return (*(v17 + 8))(a1, a4);
}

uint64_t sub_1C118E70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C1190B2C(v2 + *(a1 + 68), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C1263130();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C118E8F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 72);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0F9E21C(v17, &qword_1EBE91C80, &qword_1C12A75B0);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t PhotosUtilityAlbumCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  OUTLINED_FUNCTION_11_0();
  *&v109 = v3;
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  OUTLINED_FUNCTION_19_1();
  v4 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v95 = v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34();
  v84 = v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92148, &qword_1C12AD448);
  OUTLINED_FUNCTION_19_1();
  v8 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v97 = v9;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34();
  v96 = v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95EB8, &qword_1C12BE8E0);
  OUTLINED_FUNCTION_19_1();
  v12 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v100 = v13;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_34();
  v98 = v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95EC0, &qword_1C12BE8E8);
  OUTLINED_FUNCTION_19_1();
  v16 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v103 = v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_34();
  v101 = v19;
  v20 = *(a1 + 48);
  OUTLINED_FUNCTION_0_0();
  v108 = v20;
  v128 = v20;
  v129 = sub_1C0FDB6D4(v21, &unk_1EBE92EC0, &qword_1C12A8E00, v22);
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v126 = WitnessTable;
  v127 = sub_1C0FDB6D4(v24, &qword_1EBE91C40, &unk_1C12A7010, v25);
  v26 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v124 = v26;
  v125 = sub_1C0FDB6D4(v27, &unk_1EBE92ED0, &unk_1C12A8E80, v28);
  v29 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_1();
  v83 = v29;
  v122 = v29;
  v123 = sub_1C0FDB6D4(v30, &qword_1EBE92148, &qword_1C12AD448, v31);
  v99 = v8;
  v32 = swift_getWitnessTable();
  v33 = MEMORY[0x1E697EC18];
  v85 = v32;
  v120 = v32;
  v121 = sub_1C0FDB6D4(&qword_1EBE95EC8, &qword_1EBE95EB8, &qword_1C12BE8E0, MEMORY[0x1E697EC18]);
  v102 = v12;
  v34 = v107;
  v86 = swift_getWitnessTable();
  v118 = v86;
  v119 = sub_1C0FDB6D4(&qword_1EBE95ED0, &qword_1EBE95EC0, &qword_1C12BE8E8, v33);
  swift_getWitnessTable();
  v35 = OUTLINED_FUNCTION_19_1();
  v104 = v16;
  v87 = v36;
  type metadata accessor for PhotosDetailsPresentationSourceView(v35, v16, v36, v37);
  OUTLINED_FUNCTION_0();
  v90 = v38;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_34();
  v88 = v40;
  v92 = v41;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v93 = v43;
  v94 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v89 = &v82 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v91 = &v82 - v46;
  v106 = a1;
  sub_1C118E8F8(a1, v130);
  memcpy(v117, v131, sizeof(v117));
  sub_1C100D690(v130, v133);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v47 = qword_1EDE82B08;
  v48 = qword_1EDE82B10;
  v82 = xmmword_1EDE82B18;
  v49 = qword_1EDE82B28;

  sub_1C100C7D0(v130);

  *&v133[0] = v47;
  *(&v133[0] + 1) = v48;
  v133[1] = v82;
  *&v133[2] = v49;
  memcpy(&v133[2] + 8, v117, 0xA8uLL);
  v50 = v84;
  v51 = v108;
  v52 = v109;
  View.cellStyle(for:)(v133, v108, v84);
  memcpy(v132, v133, sizeof(v132));
  sub_1C100C7D0(v132);
  sub_1C1265160();
  v53 = sub_1C12651E0();

  *&v133[0] = v53;
  sub_1C1264470();
  v54 = v96;
  sub_1C1264F70();

  (*(v95 + 1))(v50, v4);
  v55 = sub_1C12659A0();
  v84 = v56;
  v95 = &v82;
  MEMORY[0x1EEE9AC00](v55);
  v57 = v106;
  v58 = *(v106 + 16);
  *(&v82 - 6) = v58;
  *(&v82 - 5) = v52;
  v59 = *(v57 + 32);
  v60 = *(v57 + 40);
  *(&v82 - 4) = v59;
  *(&v82 - 3) = v60;
  *(&v82 - 2) = v51;
  *(&v82 - 1) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95ED8, &qword_1C12BE8F0);
  sub_1C1190204(&qword_1EBE95EE0, &qword_1EBE95ED8, &qword_1C12BE8F0, sub_1C118F69C);
  v62 = v98;
  v61 = v99;
  sub_1C1264F60();
  (*(v97 + 8))(v54, v61);
  v63 = sub_1C1265960();
  v99 = &v82;
  MEMORY[0x1EEE9AC00](v63);
  v64 = v108;
  v65 = v109;
  *(&v82 - 6) = v58;
  *(&v82 - 5) = v65;
  *(&v82 - 4) = v59;
  *(&v82 - 3) = v60;
  v66 = v107;
  *(&v82 - 2) = v64;
  *(&v82 - 1) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95F08, &qword_1C12BE910);
  sub_1C11900B0();
  v67 = v101;
  v68 = v102;
  sub_1C1264F60();
  (*(v100 + 8))(v62, v68);
  v116 = 2;
  v115 = 2;
  sub_1C118E8F8(v106, v133);
  v69 = v133[0];
  v109 = v133[1];
  v70 = *&v133[2];

  sub_1C100C7D0(v133);
  v112 = v69;
  v113 = v109;
  v114 = v70;
  v71 = v88;
  v72 = v104;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v116, 0, 0, v104, v87, v88);

  (*(v103 + 8))(v67, v72);
  *(&v113 + 1) = v58;
  v114 = v60;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v112);
  (*(*(v58 - 8) + 16))(boxed_opaque_existential_1, v66, v58);
  OUTLINED_FUNCTION_4_3();
  v74 = v92;
  v75 = swift_getWitnessTable();
  v76 = v89;
  View.selectionStyle(for:)(&v112, v74, v75);
  (*(v90 + 8))(v71, v74);
  __swift_destroy_boxed_opaque_existential_0Tm(&v112);
  v77 = sub_1C100D614();
  v110 = v75;
  v111 = v77;
  OUTLINED_FUNCTION_4_0();
  v78 = v94;
  swift_getWitnessTable();
  v79 = v91;
  sub_1C0FDBA4C();
  v80 = *(v93 + 8);
  v80(v76, v78);
  sub_1C0FDBA4C();
  return (v80)(v79, v78);
}

__n128 sub_1C118F54C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = sub_1C1263AA0();
  *(a7 + 8) = 0x4008000000000000;
  *(a7 + 16) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96040, &qword_1C12BEA28);
  sub_1C118F780(a1, a2, a3, a4, a5, a6, (a7 + *(v14 + 44)));
  v15 = sub_1C1265190();
  *(a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95EF0, &qword_1C12BE8F8) + 36)) = v15;
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v16 = type metadata accessor for PhotosUtilityAlbumCell(0, v21);
  sub_1C118E8F8(v16, v21);
  sub_1C100C7D0(v21);
  v19 = v23;
  v20 = v22;
  LOBYTE(a1) = sub_1C1264470();
  v17 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95ED8, &qword_1C12BE8F0) + 36);
  *v17 = a1;
  result = v20;
  *(v17 + 24) = v19;
  *(v17 + 8) = v20;
  *(v17 + 40) = 0;
  return result;
}

unint64_t sub_1C118F69C()
{
  result = qword_1EBE95EE8;
  if (!qword_1EBE95EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95EF0, &qword_1C12BE8F8);
    sub_1C0FDB6D4(&qword_1EBE95EF8, &qword_1EBE95F00, &unk_1C12BE900, MEMORY[0x1E6981870]);
    sub_1C0FDB6D4(&qword_1EDE7BA50, &qword_1EBE904B8, &unk_1C12A3E30, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95EE8);
  }

  return result;
}

uint64_t sub_1C118F780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v44 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91D20, &qword_1C12BEA30);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v51 = a2;
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v55 = a6;
  v19 = type metadata accessor for PhotosUtilityAlbumCell(0, &v51);
  v51 = (*(a1 + *(v19 + 60)))(a1);
  v52 = v20;
  LOBYTE(v53) = 1;
  if (qword_1EDE7AFB8 != -1)
  {
    swift_once();
  }

  v47 = qword_1EDE7AFC0;
  v48 = dword_1EDE7AFC8;
  v49 = 5;
  v50 = HIBYTE(dword_1EDE7AFC8);
  if (qword_1EDE7AF08 != -1)
  {
    swift_once();
  }

  v46 = word_1EDE7AF16;
  PhotosPrefetchableImage(_:font:symbolVariant:)();
  sub_1C100DC0C(v51, v52);
  sub_1C106FE70(v19);
  sub_1C12646F0();
  v21 = sub_1C1264870();
  v23 = v22;
  v25 = v24;

  sub_1C1264620();
  v26 = sub_1C12647B0();
  v28 = v27;
  v29 = v18;
  v42 = v18;
  v43 = v30;
  v32 = v31;
  sub_1C0FDB8E8(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  v34 = *(v14 + 16);
  v35 = v45;
  v34(v45, v29, v13);
  v36 = v13;
  v37 = v44;
  v34(v44, v35, v36);
  v38 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96048, &qword_1C12BEA68) + 48)];
  *v38 = v26;
  *(v38 + 1) = v28;
  v32 &= 1u;
  v38[16] = v32;
  *(v38 + 3) = v43;
  *(v38 + 4) = KeyPath;
  v38[40] = 0;
  sub_1C0FDB850(v26, v28, v32);
  v39 = *(v14 + 8);

  v39(v42, v36);
  sub_1C0FDB8E8(v26, v28, v32);

  return (v39)(v35, v36);
}

uint64_t sub_1C118FB14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v47 = a5;
  v46 = a4;
  *(&v45 + 1) = a2;
  v9 = sub_1C1263130();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0, &qword_1C12A7730);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v37 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96038, &qword_1C12BEA20);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v43 = &v37 - v20;
  v21 = *(a3 + 64);
  *&v45 = a1;
  if (v21(a1, a3, v19))
  {
    v38 = v18;
    v39 = v17;
    v40 = a6;
    __dst[0] = xmmword_1C12A7260;
    LOBYTE(__dst[1]) = 1;
    if (qword_1EDE7AF50 != -1)
    {
      swift_once();
    }

    v50 = qword_1EDE7AF58;
    v51 = word_1EDE7AF60;
    v52 = 5;
    v53 = byte_1EDE7AF63;
    PhotosPrefetchableImage(_:font:)(__dst, &v50, __src);
    sub_1C100DC0C(*&__dst[0], *(&__dst[0] + 1));
    v22 = *&__src[1];
    v23 = sub_1C1265190();
    v41 = __src[0];
    v24 = sub_1C1264470();
    sub_1C12628A0();
    LOBYTE(v50) = 0;
    __src[0] = v41;
    *&__src[1] = v22;
    *(&__src[1] + 1) = v23;
    LOBYTE(__src[2]) = v24;
    *(&__src[2] + 1) = v25;
    *&__src[3] = v26;
    *(&__src[3] + 1) = v27;
    *&__src[4] = v28;
    BYTE8(__src[4]) = 0;
    __dst[0] = v45;
    *&__dst[1] = a3;
    *(&__dst[1] + 1) = v46;
    *&__dst[2] = v47;
    v29 = type metadata accessor for PhotosUtilityAlbumCell(0, __dst);
    sub_1C118E70C(v29, v12);
    v30 = sub_1C1263120();
    (*(v10 + 8))(v12, v9);
    v31 = MEMORY[0x1E697E6E0];
    if ((v30 & 1) == 0)
    {
      v31 = MEMORY[0x1E697E708];
    }

    (*(v10 + 104))(v15, *v31, v9);
    sub_1C1190AD4();
    result = sub_1C1265DE0();
    if (result)
    {
      v33 = v42;
      (*(v10 + 32))(v42, v15, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95F18, &unk_1C12BE918);
      sub_1C1190204(&qword_1EBE95F20, &qword_1EBE95F18, &unk_1C12BE918, sub_1C1190278);
      sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0, &qword_1C12A7730, MEMORY[0x1E69E6ED8]);
      v34 = v43;
      sub_1C1264BC0();
      sub_1C0F9E21C(v33, &qword_1EBE92FE0, &qword_1C12A7730);
      memcpy(__dst, __src, 0x49uLL);
      sub_1C0F9E21C(__dst, &qword_1EBE95F18, &unk_1C12BE918);
      v35 = v40;
      v36 = v39;
      (*(v38 + 32))(v40, v34, v39);
      return __swift_storeEnumTagSinglePayload(v35, 0, 1, v36);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a6, 1, 1, v17);
  }

  return result;
}

unint64_t sub_1C11900B0()
{
  result = qword_1EBE95F10;
  if (!qword_1EBE95F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95F08, &qword_1C12BE910);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95F18, &unk_1C12BE918);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0, &qword_1C12A7730);
    sub_1C1190204(&qword_1EBE95F20, &qword_1EBE95F18, &unk_1C12BE918, sub_1C1190278);
    sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0, &qword_1C12A7730, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95F10);
  }

  return result;
}

uint64_t sub_1C1190204(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    OUTLINED_FUNCTION_4_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1190278()
{
  result = qword_1EBE95F28;
  if (!qword_1EBE95F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE95F30, &qword_1C12BE928);
    sub_1C1062140();
    sub_1C0FDB6D4(&qword_1EDE7BA50, &qword_1EBE904B8, &unk_1C12A3E30, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95F28);
  }

  return result;
}

uint64_t PhotosUtilityAlbumCell.BadgeConfiguration.symbolNameProvider.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PhotosUtilityAlbumCell.BadgeConfiguration.init(symbolNameProvider:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void sub_1C11903B8(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v16 = 0;
    v21 = v2;
    v13 = v2;
    v4 = *(a1 + 40);
    v14 = *(a1 + 24);
    v15 = v4;
    v5 = type metadata accessor for PhotosUtilityAlbumCell.BadgeConfiguration(319, &v13);
    if (v6 <= 0x3F)
    {
      v17 = 0;
      v22 = v5;
      v7 = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v18 = 0;
        v23 = v7;
        sub_1C100D364(319);
        if (v10 <= 0x3F)
        {
          v19 = 0;
          v24 = v9;
          sub_1C107032C();
          if (v12 <= 0x3F)
          {
            v20 = 0;
            v25 = v11;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1C11904A8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v29 = *(a3 + 16);
  v4 = *(v29 - 8);
  v5 = *(v4 + 84);
  v28 = *(a3 + 24);
  v6 = *(v28 - 8);
  v7 = *(v6 + 84);
  if (v5 <= v7)
  {
    v8 = *(v6 + 84);
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_1C1263130() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(v4 + 64);
  v13 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  result = a1;
  if (v9 >= a2)
  {
LABEL_35:
    if (v5 == v9)
    {
      v23 = v5;
      v24 = v29;
    }

    else
    {
      v25 = (&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
      if ((v8 & 0x80000000) == 0)
      {
        v26 = *v25;
        if (v26 >= 0xFFFFFFFF)
        {
          LODWORD(v26) = -1;
        }

        return (v26 + 1);
      }

      result = (v25 + v13 + 16) & ~v13;
      v23 = v7;
      v24 = v28;
    }

    return __swift_getEnumTagSinglePayload(result, v23, v24);
  }

  v15 = *(v10 + 80) & 0xF8 | 7;
  v16 = ((v11 + ((((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v13) + *(v6 + 64) + v15) & ~v15) + 8) & 0xFFFFFFFFFFFFFFF8) + 209;
  if (v16 <= 3)
  {
    v17 = ((a2 - v9 + 255) >> 8) + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  switch(v19)
  {
    case 1:
      v20 = a1[v16];
      if (!a1[v16])
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    case 2:
      v20 = *&a1[v16];
      if (!*&a1[v16])
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    case 3:
      __break(1u);
      return result;
    case 4:
      v20 = *&a1[v16];
      if (!v20)
      {
        goto LABEL_35;
      }

LABEL_28:
      v21 = v16 > 3;
      if (v16 <= 3)
      {
        v22 = (v20 - 1) << (8 * v16);
      }

      else
      {
        v22 = 0;
      }

      if (v21)
      {
        v27 = *a1;
      }

      else
      {
        v27 = *a1;
      }

      result = v9 + (v27 | v22) + 1;
      break;
    default:
      goto LABEL_35;
  }

  return result;
}

void sub_1C1190768(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v27 = *(a4 + 24);
  v28 = *(a4 + 16);
  v5 = *(v28 - 8);
  v6 = *(v5 + 84);
  v7 = *(v27 - 8);
  v8 = *(v7 + 84);
  if (v6 <= v8)
  {
    v9 = *(v7 + 84);
  }

  else
  {
    v9 = *(v5 + 84);
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(sub_1C1263130() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v5 + 64);
  v14 = *(v7 + 80);
  v15 = *(v11 + 80) & 0xF8 | 7;
  v16 = ((v12 + ((((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v14) + *(v7 + 64) + v15) & ~v15) + 8) & 0xFFFFFFFFFFFFFFF8) + 209;
  if (v10 >= a3)
  {
    v19 = 0;
  }

  else
  {
    if (v16 <= 3)
    {
      v17 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  if (v10 >= a2)
  {
    switch(v19)
    {
      case 1:
        *(a1 + v16) = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        return;
      case 2:
        *(a1 + v16) = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        return;
      case 3:
LABEL_53:
        __break(1u);
        return;
      case 4:
        *(a1 + v16) = 0;
        goto LABEL_36;
      default:
LABEL_36:
        if (!a2)
        {
          return;
        }

LABEL_37:
        if (v6 == v10)
        {
          v22 = a1;
          v23 = v6;
          v24 = v28;
        }

        else
        {
          v25 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
          if ((v9 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v26 = a2 & 0x7FFFFFFF;
              v25[1] = 0;
            }

            else
            {
              v26 = a2 - 1;
            }

            *v25 = v26;
            return;
          }

          v22 = ((v25 + v14 + 16) & ~v14);
          v23 = v8;
          v24 = v27;
        }

        __swift_storeEnumTagSinglePayload(v22, a2, v23, v24);
        break;
    }
  }

  else
  {
    v20 = ~v10 + a2;
    bzero(a1, v16);
    if (v16 <= 3)
    {
      v21 = (v20 >> 8) + 1;
    }

    else
    {
      v21 = 1;
    }

    if (v16 > 3)
    {
      *a1 = v20;
    }

    else
    {
      *a1 = v20;
    }

    switch(v19)
    {
      case 1:
        *(a1 + v16) = v21;
        break;
      case 2:
        *(a1 + v16) = v21;
        break;
      case 3:
        goto LABEL_53;
      case 4:
        *(a1 + v16) = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C1190A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C1190AD4()
{
  result = qword_1EDE7BF90;
  if (!qword_1EDE7BF90)
  {
    sub_1C1263130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF90);
  }

  return result;
}

uint64_t sub_1C1190B2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1C1190B9C(uint64_t a1, uint64_t a2)
{
  if (!PFOSVariantHasInternalUI())
  {
    return 0;
  }

  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1C1265E70();
  v4 = [v2 BOOLForKey_];

  return v4;
}

id static OneUpChromeUserDefaults.shouldHideVideoScrubber.getter()
{
  if (!PFOSVariantHasInternalUI())
  {
    return 0;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_0_58();
  v2 = sub_1C1265E70();
  v3 = OUTLINED_FUNCTION_1_44(v2, sel_BOOLForKey_);

  return v3;
}

id static OneUpChromeUserDefaults.shouldHideBadgeBar.getter()
{
  if (!PFOSVariantHasInternalUI())
  {
    return 0;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_0_58();
  v2 = sub_1C1265E70();
  v3 = OUTLINED_FUNCTION_1_44(v2, sel_BOOLForKey_);

  return v3;
}

id static OneUpChromeUserDefaults.shouldHideLibraryScrubber.getter()
{
  if (!PFOSVariantHasInternalUI())
  {
    return 0;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_0_58();
  v2 = sub_1C1265E70();
  v3 = OUTLINED_FUNCTION_1_44(v2, sel_BOOLForKey_);

  return v3;
}

id static OneUpChromeUserDefaults.shouldHideToolbar.getter()
{
  if (!PFOSVariantHasInternalUI())
  {
    return 0;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_0_58();
  v2 = sub_1C1265E70();
  v3 = OUTLINED_FUNCTION_1_44(v2, sel_BOOLForKey_);

  return v3;
}

id static OneUpChromeUserDefaults.shouldHideNavigationBar.getter()
{
  if (!PFOSVariantHasInternalUI())
  {
    return 0;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_0_58();
  v2 = sub_1C1265E70();
  v3 = OUTLINED_FUNCTION_1_44(v2, sel_BOOLForKey_);

  return v3;
}

id static OneUpChromeUserDefaults.shouldDisablePocket.getter()
{
  if (!PFOSVariantHasInternalUI())
  {
    return 0;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_0_58();
  v2 = sub_1C1265E70();
  v3 = OUTLINED_FUNCTION_1_44(v2, sel_BOOLForKey_);

  return v3;
}

_BYTE *storeEnumTagSinglePayload for OneUpChromeUserDefaults(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C119103C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 40 * v2 - 8;
  for (i = 32; ; i += 40)
  {
    if (v3 == v5)
    {
      goto LABEL_11;
    }

    v8 = *(v1 + 16);
    if (v3 >= v8)
    {
      break;
    }

    result = sub_1C0FDB0A8(v1 + i, v11);
    if (v5 >= v8)
    {
      goto LABEL_14;
    }

    sub_1C0FDB0A8(v1 + v6, v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C12604F8();
      v1 = v9;
    }

    __swift_destroy_boxed_opaque_existential_0Tm((v1 + i));
    result = sub_1C0F9DDE4(v10, v1 + i);
    if (v5 >= *(v1 + 16))
    {
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_0Tm((v1 + v6));
    result = sub_1C0F9DDE4(v11, v1 + v6);
LABEL_11:
    ++v3;
    --v5;
    v6 -= 40;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_1C1191154(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_9;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C1260520(v1);
      v1 = v9;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_9:
    --v4;
    if (!--v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_1C119120C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1052230();
  *a1 = result;
  return result;
}

uint64_t OneUpTopBar.init(layout:model:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + 48) = swift_getKeyPath();
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = swift_getKeyPath();
  *(a2 + 80) = 0;
  v4 = *(type metadata accessor for OneUpTopBar(0) + 32);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  *(a2 + 40) = v3;
  v5 = OUTLINED_FUNCTION_18();

  return sub_1C0F9DDE4(v5, v6);
}

uint64_t type metadata accessor for OneUpTopBar(uint64_t a1)
{
  result = qword_1EDE7E500;
  if (!qword_1EDE7E500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C119135C(_BYTE *a1@<X0>, char a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v8 = sub_1C1262720();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (*a1 && (a3 & 1) == 0)
  {
    sub_1C1262710();
    v15 = sub_1C12626F0();
    v16 = sub_1C1266410();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C0F96000, v15, v16, "Omitting badges is only supported when the toolbar is at the bottom. Please add support for this in other toolbar positions if needed.", v17, 2u);
      MEMORY[0x1C68F1630](v17, -1, -1);
    }

    (*(v10 + 8))(v13, v8);
  }

  v18 = a3 & 1;
  if (a3)
  {
    v19 = 66;
  }

  else
  {
    v19 = 67;
  }

  if (a2)
  {
    v18 = v19;
    v20 = 66;
  }

  else
  {
    v20 = 64;
  }

  if (a2)
  {
    v21 = 66;
  }

  else
  {
    v21 = 65;
  }

  if (v14 != 1)
  {
    v20 = v21;
  }

  if (v14)
  {
    v18 = v20;
  }

  *a4 = v18;
}

uint64_t OneUpTopBar.body.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96050, &qword_1C12BEB28) + 36)) = 0;
  sub_1C119159C(v1, a1);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96058, &qword_1C12BEB58);
  v5 = a1 + *(result + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 1;
  return result;
}

void sub_1C119159C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96130, &qword_1C12BF1A0);
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v72 - v3;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96138, &qword_1C12BF1A8);
  MEMORY[0x1EEE9AC00](v97);
  v94 = &v72 - v4;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96140, &qword_1C12BF1B0);
  MEMORY[0x1EEE9AC00](v73);
  v80 = &v72 - v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96148, &qword_1C12BF1B8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v72 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96150, &qword_1C12BF1C0);
  MEMORY[0x1EEE9AC00](v76);
  v75 = (&v72 - v7);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96158, &qword_1C12BF1C8);
  MEMORY[0x1EEE9AC00](v95);
  v96 = (&v72 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96160, &qword_1C12BF1D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v87 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v85 = (&v72 - v12);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96168, &qword_1C12BF1D8);
  MEMORY[0x1EEE9AC00](v78);
  v86 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v82 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96170, &qword_1C12BF1E0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v83 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v81 = (&v72 - v19);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96178, &qword_1C12BF1E8);
  MEMORY[0x1EEE9AC00](v74);
  v89 = (&v72 - v20);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96180, &qword_1C12BF1F0);
  MEMORY[0x1EEE9AC00](v91);
  v84 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v88 = &v72 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96188, &unk_1C12BF1F8);
  MEMORY[0x1EEE9AC00](v90);
  v25 = &v72 - v24;
  v26 = type metadata accessor for OneUpTopBar(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = *(a1 + 40);
  v30 = sub_1C1192538();
  sub_1C1192EE8();
  v31 = sub_1C12259E0();
  v33 = v32;

  v100 = a1;
  sub_1C1198D98(a1, &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v99 = swift_allocObject();
  sub_1C1199DC0(&v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v99 + v34, type metadata accessor for OneUpTopBar);
  sub_1C1198D98(a1, &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = swift_allocObject();
  sub_1C1199DC0(&v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34, type metadata accessor for OneUpTopBar);
  if (v29 >> 6)
  {
    if (v29 >> 6 != 1)
    {
      KeyPath = swift_getKeyPath();
      v68 = v96;
      *v96 = v30;
      v68[1] = KeyPath;
      v68[2] = 0;
      *(v68 + 24) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1C1198EF0();
      sub_1C11991CC();
      swift_retain_n();
      sub_1C1263C20();

      return;
    }

    v36 = v89;
    *v89 = v30;
    *(v36 + 4) = 2;
    *(v36 + 10) = 0;
    v36[2] = v31;
    *(v36 + 24) = v33 & 1;
    v79 = v36 + *(v74 + 44);
    v37 = sub_1C12638E0();
    v38 = v81;
    *v81 = v37;
    *(v38 + 8) = v30;
    *(v38 + 16) = 0;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE961D0, &qword_1C12BF210);
    sub_1C1196BDC(v29 & 0x3F, sub_1C1198DFC, sub_1C1199ED0, 0, sub_1C1199ED0, 0, v38 + *(v39 + 44));
    v40 = v82;
    sub_1C1193028(v82);
    *(v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE961D8, &qword_1C12BF218) + 36)) = 0;
    v41 = swift_getKeyPath();
    v42 = v40 + *(v78 + 36);
    *v42 = v41;
    *(v42 + 8) = 0;
    *(v42 + 16) = 0;
    v43 = sub_1C12638E0();
    v44 = v85;
    *v85 = v43;
    *(v44 + 8) = v30;
    *(v44 + 16) = 0;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE961E0, &qword_1C12BF220);
    sub_1C1197274(v29 & 0x3F, sub_1C1198E30, v35, sub_1C1199ED0, sub_1C1199ED0, 0, v44 + *(v45 + 44));
    v46 = v83;
    sub_1C0FE5654(v38, v83, &qword_1EBE96170, &qword_1C12BF1E0);
    v47 = v86;
    sub_1C0FE5654(v40, v86, &qword_1EBE96168, &qword_1C12BF1D8);
    v48 = v87;
    sub_1C0FE5654(v44, v87, &qword_1EBE96160, &qword_1C12BF1D0);
    v49 = v79;
    sub_1C0FE5654(v46, v79, &qword_1EBE96170, &qword_1C12BF1E0);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE961E8, &qword_1C12BF228);
    v80 = v35;
    v51 = v50;
    sub_1C0FE5654(v47, v49 + *(v50 + 48), &qword_1EBE96168, &qword_1C12BF1D8);
    sub_1C0FE5654(v48, v49 + *(v51 + 64), &qword_1EBE96160, &qword_1C12BF1D0);
    sub_1C0FD1A5C(v44, &qword_1EBE96160, &qword_1C12BF1D0);
    sub_1C0FD1A5C(v40, &qword_1EBE96168, &qword_1C12BF1D8);
    sub_1C0FD1A5C(v38, &qword_1EBE96170, &qword_1C12BF1E0);
    sub_1C0FD1A5C(v48, &qword_1EBE96160, &qword_1C12BF1D0);
    sub_1C0FD1A5C(v47, &qword_1EBE96168, &qword_1C12BF1D8);
    sub_1C0FD1A5C(v46, &qword_1EBE96170, &qword_1C12BF1E0);
    sub_1C12659A0();
    sub_1C1263390();
    v52 = v84;
    sub_1C0FE4040(v89, v84, &qword_1EBE96178, &qword_1C12BF1E8);
    memcpy((v52 + *(v91 + 36)), __src, 0x70uLL);
    v53 = v88;
    sub_1C0FE4040(v52, v88, &qword_1EBE96180, &qword_1C12BF1F0);
    sub_1C0FE5654(v53, v93, &qword_1EBE96180, &qword_1C12BF1F0);
    swift_storeEnumTagMultiPayload();
    sub_1C1198F7C();
    sub_1C119905C();
    v54 = v94;
    sub_1C1263C20();
    sub_1C0FE5654(v54, v96, &qword_1EBE96138, &qword_1C12BF1A8);
    swift_storeEnumTagMultiPayload();
    sub_1C1198EF0();
    sub_1C11991CC();
    sub_1C1263C20();

    sub_1C0FD1A5C(v54, &qword_1EBE96138, &qword_1C12BF1A8);
    v55 = v53;
    v56 = &qword_1EBE96180;
    v57 = &qword_1C12BF1F0;
  }

  else
  {
    v58 = v25;
    v59 = v75;
    v60 = v80;
    v61 = v77;
    v62 = sub_1C12638E0();
    if (v29)
    {
      v60 = v59;
      *v59 = v62;
      v59[1] = v30;
      *(v59 + 16) = 0;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE961F8, &qword_1C12BF238);
      sub_1C1195AAC(sub_1C1198D90, sub_1C1199ED0, 0, sub_1C1199ED0, 0, sub_1C1198E30, v35, v59 + *(v63 + 44), sub_1C1198DFC, v99);
      v64 = &qword_1EBE96150;
      v65 = &qword_1C12BF1C0;
      sub_1C0FE5654(v60, v61, &qword_1EBE96150, &qword_1C12BF1C0);
    }

    else
    {
      *v60 = v62;
      *(v60 + 8) = v30;
      *(v60 + 16) = 0;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE961F0, &qword_1C12BF230);
      sub_1C1196590(sub_1C1198D90, sub_1C1198E30, v35, sub_1C1198DFC, v99, v60 + *(v69 + 44));
      v64 = &qword_1EBE96140;
      v65 = &qword_1C12BF1B0;
      sub_1C0FE5654(v60, v61, &qword_1EBE96140, &qword_1C12BF1B0);
    }

    swift_storeEnumTagMultiPayload();
    v66 = MEMORY[0x1E69817F8];
    sub_1C0FDB6D4(&qword_1EBE961A0, &qword_1EBE96150, &qword_1C12BF1C0, MEMORY[0x1E69817F8]);
    sub_1C0FDB6D4(&qword_1EBE961A8, &qword_1EBE96140, &qword_1C12BF1B0, v66);
    sub_1C1263C20();
    sub_1C0FD1A5C(v60, v64, v65);
    sub_1C0FE5654(v58, v93, &qword_1EBE96188, &unk_1C12BF1F8);
    swift_storeEnumTagMultiPayload();
    sub_1C1198F7C();
    v70 = v58;
    sub_1C119905C();
    v71 = v94;
    sub_1C1263C20();
    sub_1C0FE5654(v71, v96, &qword_1EBE96138, &qword_1C12BF1A8);
    swift_storeEnumTagMultiPayload();
    sub_1C1198EF0();
    sub_1C11991CC();
    sub_1C1263C20();

    sub_1C0FD1A5C(v71, &qword_1EBE96138, &qword_1C12BF1A8);
    v55 = v70;
    v56 = &qword_1EBE96188;
    v57 = &unk_1C12BF1F8;
  }

  sub_1C0FD1A5C(v55, v56, v57);
}

double sub_1C1192538()
{
  v1 = sub_1C1263EB0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v64 = &v57[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v57[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v57[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v59 = &v57[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v57[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v57[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v57[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v69 = &v57[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v67 = &v57[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v57[-v24];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v57[-v27];
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v57[-v30];
  v66 = v0;
  sub_1C1192EE8();
  sub_1C12265E0();

  v32 = *MEMORY[0x1E697FF38];
  v70 = v2;
  v68 = *(v2 + 104);
  v68(v28, v32, v1);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v1);
  v71 = v4;
  v33 = *(v4 + 48);
  sub_1C0FE5654(v31, v10, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FE5654(v28, &v10[v33], &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v1) == 1)
  {
    sub_1C0FD1A5C(v28, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0FD1A5C(v31, &qword_1EBE902F0, &qword_1C12B38C0);
    if (__swift_getEnumTagSinglePayload(&v10[v33], 1, v1) == 1)
    {
      sub_1C0FD1A5C(v10, &qword_1EBE902F0, &qword_1C12B38C0);
      return 48.0;
    }

    goto LABEL_6;
  }

  sub_1C0FE5654(v10, v25, &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(&v10[v33], 1, v1) == 1)
  {
    sub_1C0FD1A5C(v28, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0FD1A5C(v31, &qword_1EBE902F0, &qword_1C12B38C0);
    (*(v70 + 8))(v25, v1);
LABEL_6:
    sub_1C0FD1A5C(v10, &qword_1EBE902E8, &unk_1C12A2E90);
    v34 = v71;
    v35 = v69;
    goto LABEL_7;
  }

  v47 = v70;
  v48 = v64;
  (*(v70 + 32))(v64, &v10[v33], v1);
  sub_1C1097070();
  v58 = sub_1C1265DE0();
  v49 = *(v47 + 8);
  v49(v48, v1);
  sub_1C0FD1A5C(v28, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FD1A5C(v31, &qword_1EBE902F0, &qword_1C12B38C0);
  v49(v25, v1);
  sub_1C0FD1A5C(v10, &qword_1EBE902F0, &qword_1C12B38C0);
  v34 = v71;
  v35 = v69;
  if (v58)
  {
    return 48.0;
  }

LABEL_7:
  sub_1C1192EE8();
  v36 = v67;
  sub_1C12265E0();

  v37 = *MEMORY[0x1E697FF40];
  v68(v35, v37, v1);
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v1);
  v38 = *(v34 + 48);
  v39 = v65;
  sub_1C0FE5654(v36, v65, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FE5654(v35, &v39[v38], &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(v39, 1, v1) == 1)
  {
    sub_1C0FD1A5C(v35, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0FD1A5C(v36, &qword_1EBE902F0, &qword_1C12B38C0);
    if (__swift_getEnumTagSinglePayload(&v39[v38], 1, v1) != 1)
    {
LABEL_21:
      sub_1C0FD1A5C(v39, &qword_1EBE902E8, &unk_1C12A2E90);
      return 12.0;
    }

    sub_1C0FD1A5C(v39, &qword_1EBE902F0, &qword_1C12B38C0);
LABEL_12:
    sub_1C1192EE8();
    v45 = v61;
    sub_1C1226AE4();

    v35 = v60;
    v68(v60, v37, v1);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v1);
    v46 = *(v71 + 48);
    v39 = v62;
    sub_1C0FE5654(v45, v62, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0FE5654(v35, &v39[v46], &qword_1EBE902F0, &qword_1C12B38C0);
    if (__swift_getEnumTagSinglePayload(v39, 1, v1) == 1)
    {
      sub_1C0FD1A5C(v35, &qword_1EBE902F0, &qword_1C12B38C0);
      sub_1C0FD1A5C(v45, &qword_1EBE902F0, &qword_1C12B38C0);
      if (__swift_getEnumTagSinglePayload(&v39[v46], 1, v1) == 1)
      {
        sub_1C0FD1A5C(v39, &qword_1EBE902F0, &qword_1C12B38C0);
        return 40.0;
      }

      goto LABEL_21;
    }

    v52 = v59;
    sub_1C0FE5654(v39, v59, &qword_1EBE902F0, &qword_1C12B38C0);
    if (__swift_getEnumTagSinglePayload(&v39[v46], 1, v1) == 1)
    {
      v36 = v45;
      v40 = v52;
      goto LABEL_20;
    }

    v53 = v70;
    v54 = v64;
    (*(v70 + 32))(v64, &v39[v46], v1);
    sub_1C1097070();
    v55 = sub_1C1265DE0();
    v56 = *(v53 + 8);
    v56(v54, v1);
    sub_1C0FD1A5C(v35, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0FD1A5C(v45, &qword_1EBE902F0, &qword_1C12B38C0);
    v56(v52, v1);
    sub_1C0FD1A5C(v39, &qword_1EBE902F0, &qword_1C12B38C0);
    if (v55)
    {
      return 40.0;
    }

    return 12.0;
  }

  v40 = v63;
  sub_1C0FE5654(v39, v63, &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(&v39[v38], 1, v1) == 1)
  {
LABEL_20:
    sub_1C0FD1A5C(v35, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0FD1A5C(v36, &qword_1EBE902F0, &qword_1C12B38C0);
    (*(v70 + 8))(v40, v1);
    goto LABEL_21;
  }

  v41 = v70;
  v42 = v40;
  v43 = v64;
  (*(v70 + 32))(v64, &v39[v38], v1);
  sub_1C1097070();
  v58 = sub_1C1265DE0();
  v44 = *(v41 + 8);
  v44(v43, v1);
  sub_1C0FD1A5C(v69, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FD1A5C(v67, &qword_1EBE902F0, &qword_1C12B38C0);
  v44(v42, v1);
  sub_1C0FD1A5C(v39, &qword_1EBE902F0, &qword_1C12B38C0);
  if (v58)
  {
    goto LABEL_12;
  }

  return 12.0;
}

uint64_t sub_1C1192EE8()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1C1193028@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v31 = sub_1C12629F0();
  v1 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OneUpTitleView(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96370, &qword_1C12BF3C8);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v28 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96378, &qword_1C12BF3D0);
  MEMORY[0x1EEE9AC00](v30);
  v11 = &v28 - v10;
  sub_1C11933EC(v34);
  v12 = v34[0];
  v13 = v34[1];
  *(v7 + 1) = swift_getKeyPath();
  v7[16] = 0;
  *(v7 + 3) = swift_getKeyPath();
  *(v7 + 4) = 0;
  v7[40] = 0;
  v14 = *(v5 + 36);
  *&v7[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  *v7 = v12;
  v7[1] = v13;
  KeyPath = swift_getKeyPath();
  sub_1C1192EE8();
  sub_1C1224ADC();

  if (v33 == 1 && (sub_1C1192EE8(), v16 = sub_1C1225C6C(), , (v16 & 1) != 0))
  {
    v17 = v31;
    (*(v1 + 104))(v3, *MEMORY[0x1E697DBA8], v31);
  }

  else
  {
    sub_1C11936AC(v3);
    v17 = v31;
  }

  v18 = &v9[*(v29 + 36)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D70, &qword_1C12B69E0);
  (*(v1 + 32))(v18 + *(v19 + 28), v3, v17);
  *v18 = KeyPath;
  sub_1C1199DC0(v7, v9, type metadata accessor for OneUpTitleView);
  sub_1C11938B4();
  v21 = v20;
  sub_1C0FE4040(v9, v11, &qword_1EBE96370, &qword_1C12BF3C8);
  *&v11[*(v30 + 36)] = v21;
  v22 = sub_1C1265A60();
  sub_1C11938B4();
  v24 = v23;
  v25 = v32;
  sub_1C0FE4040(v11, v32, &qword_1EBE96378, &qword_1C12BF3D0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96218, &qword_1C12BF258);
  v27 = (v25 + *(result + 36));
  *v27 = v22;
  v27[1] = v24;
  return result;
}

uint64_t sub_1C11933EC@<X0>(BOOL *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - v5;
  v7 = sub_1C1263EB0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  sub_1C1192EE8();
  sub_1C12265E0();

  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1C0FD1A5C(v6, &qword_1EBE902F0, &qword_1C12B38C0);
    v15 = 1;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v10, v13, v7);
    v16 = (*(v8 + 88))(v10, v7);
    v15 = v16 != *MEMORY[0x1E697FF38];
    if (v16 != *MEMORY[0x1E697FF38] && v16 != *MEMORY[0x1E697FF40])
    {
      v19[0] = 0;
      v19[1] = 0xE000000000000000;
      sub_1C1266940();
      MEMORY[0x1C68EF850](0xD00000000000001ELL, 0x80000001C126B9E0);
      sub_1C1266B10();
      result = sub_1C1266B70();
      __break(1u);
      return result;
    }

    result = (*(v8 + 8))(v13, v7);
  }

  v18 = *(v2 + 40) > 0x3Fu;
  *a1 = v15;
  a1[1] = v18;
  return result;
}

uint64_t sub_1C11936AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for OneUpTopBar(0);
  sub_1C0FE5654(v1 + *(v10 + 32), v9, &unk_1EBE91930, &qword_1C12A3650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C12629F0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_1C11938B4()
{
  sub_1C1192EE8();
  v0 = sub_1C1225818();

  if (v0)
  {
    if (sub_1C1193B84())
    {
      v2 = v1;
      ObjectType = swift_getObjectType();
      (*(v2 + 120))(ObjectType, v2);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1C119395C@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = result;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1C11939A8(uint64_t (*a1)(__n128), uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for OneUpTopBar(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = *(v3 + 40);
  v10 = a1(v8);
  if (v9 == 65)
  {
    sub_1C1191154(v10);
  }

  v14[1] = v10;
  swift_getKeyPath();
  sub_1C1198D98(v3, v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  sub_1C1199DC0(v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for OneUpTopBar);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE962F8, &qword_1C12BF338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96300, &qword_1C12BF340);
  sub_1C0FDB6D4(&qword_1EDE7B728, &qword_1EBE962F8, &qword_1C12BF338, MEMORY[0x1E69E6338]);
  sub_1C1199224();
  sub_1C1199278();
  return sub_1C1265680();
}

uint64_t sub_1C1193B84()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  if (*(v0 + 64) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v8 = sub_1C0FF9034(v6, v5, 0);
    (*(v2 + 8))(v4, v1, v8);
    return v10;
  }

  return v6;
}

uint64_t sub_1C1193CE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96120, &qword_1C12BF140);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v21 - v4;
  v6 = sub_1C12637E0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v1 + 16);
  v26 = *v1;
  v10 = v26;
  if (v27 == 1)
  {
    v11 = *(&v26 + 1);
    swift_unknownObjectRetain();
  }

  else
  {

    sub_1C1266420();
    v12 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v26, &qword_1EBE92930, &qword_1C12AF578);
    (*(v7 + 8))(v9, v6);
    v10 = v23;
    v11 = v24;
  }

  v22 = a1;
  if (v10)
  {
    ObjectType = swift_getObjectType();
    (*(v11 + 240))(&v23, ObjectType, v11);
    swift_unknownObjectRelease();
    v14 = v23;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (!*(v14 + 16))
  {
    goto LABEL_11;
  }

  LOBYTE(v24) = *(v2 + 32);
  v23 = *(v2 + 3);
  v15 = v24;

  if ((v15 & 1) == 0)
  {
    sub_1C1266420();
    v16 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v23, &qword_1EBE92928, &qword_1C12AF570);
    (*(v7 + 8))(v9, v6);
  }

  v17 = sub_1C1222F4C();

  if ((v17 & 1) == 0)
  {
    *v5 = sub_1C12638E0();
    *(v5 + 1) = 0x4020000000000000;
    v5[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96128, &unk_1C12BF148);
    v25 = v14;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92980, &qword_1C12AF610);
    sub_1C0FDB6D4(&unk_1EDE7B730, &qword_1EBE92980, &qword_1C12AF610, MEMORY[0x1E69E6338]);
    sub_1C1096FC8();
    sub_1C109701C();
    sub_1C1265680();

    v19 = v22;
    sub_1C0FE4040(v5, v22, &qword_1EBE96120, &qword_1C12BF140);
    v18 = 0;
  }

  else
  {
LABEL_11:

    v18 = 1;
    v19 = v22;
  }

  return __swift_storeEnumTagSinglePayload(v19, v18, 1, v21);
}

uint64_t sub_1C1194168@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96120, &qword_1C12BF140);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v21 - v4;
  v6 = sub_1C12637E0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v1 + 16);
  v27 = *v1;
  v10 = v27;
  if (v28 == 1)
  {
    v11 = *(&v27 + 1);
    swift_unknownObjectRetain();
  }

  else
  {

    sub_1C1266420();
    v12 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v27, &qword_1EBE92930, &qword_1C12AF578);
    (*(v7 + 8))(v9, v6);
    v10 = v23;
    v11 = v24;
  }

  v22 = a1;
  if (v10)
  {
    ObjectType = swift_getObjectType();
    (*(v11 + 240))(&v23, ObjectType, v11);
    swift_unknownObjectRelease();
    v14 = v25;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (!*(v14 + 16))
  {
    goto LABEL_11;
  }

  LOBYTE(v24) = *(v2 + 32);
  v23 = *(v2 + 3);
  v15 = v24;

  if ((v15 & 1) == 0)
  {
    sub_1C1266420();
    v16 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v23, &qword_1EBE92928, &qword_1C12AF570);
    (*(v7 + 8))(v9, v6);
  }

  v17 = sub_1C1222F4C();

  if ((v17 & 1) == 0)
  {
    *v5 = sub_1C12638E0();
    *(v5 + 1) = 0x4020000000000000;
    v5[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96128, &unk_1C12BF148);
    v26 = v14;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92980, &qword_1C12AF610);
    sub_1C0FDB6D4(&unk_1EDE7B730, &qword_1EBE92980, &qword_1C12AF610, MEMORY[0x1E69E6338]);
    sub_1C1096FC8();
    sub_1C109701C();
    sub_1C1265680();

    v19 = v22;
    sub_1C0FE4040(v5, v22, &qword_1EBE96120, &qword_1C12BF140);
    v18 = 0;
  }

  else
  {
LABEL_11:

    v18 = 1;
    v19 = v22;
  }

  return __swift_storeEnumTagSinglePayload(v19, v18, 1, v21);
}

uint64_t sub_1C11945B0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v11[0] = *a1;
  v11[1] = v4;
  v5 = a1[3];
  v11[2] = a1[2];
  v11[3] = v5;
  KeyPath = swift_getKeyPath();
  v10[0] = 0;
  v7 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v7;
  v8 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v8;
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  return sub_1C0FF526C(v11, v10);
}

uint64_t sub_1C119465C()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  (*(v3 + 24))(&v53, v2, v3);
  if ((v53 & 0x10) != 0)
  {
    sub_1C0FE46BC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = v5;
    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_1C0FE46BC(v6 > 1, v7 + 1, 1, v5);
      v4 = v38;
    }

    *(v4 + 16) = v7 + 1;
    *(v4 + 8 * v7 + 32) = 16;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v8 = v0[3];
  v9 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v8);
  (*(v9 + 24))(&v53, v8, v9);
  if ((v53 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C0FE46BC(0, *(v4 + 16) + 1, 1, v4);
      v4 = v39;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1C0FE46BC(v10 > 1, v11 + 1, 1, v4);
      v4 = v40;
    }

    *(v4 + 16) = v11 + 1;
    *(v4 + 8 * v11 + 32) = 4;
  }

  v12 = v0[3];
  v13 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v12);
  (*(v13 + 24))(&v53, v12, v13);
  if ((v53 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C0FE46BC(0, *(v4 + 16) + 1, 1, v4);
      v4 = v41;
    }

    v15 = *(v4 + 16);
    v14 = *(v4 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1C0FE46BC(v14 > 1, v15 + 1, 1, v4);
      v4 = v42;
    }

    *(v4 + 16) = v15 + 1;
    *(v4 + 8 * v15 + 32) = 8;
  }

  v16 = v0[3];
  v17 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v16);
  (*(v17 + 24))(&v53, v16, v17);
  if ((v53 & 0x100) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C0FE46BC(0, *(v4 + 16) + 1, 1, v4);
      v4 = v43;
    }

    v19 = *(v4 + 16);
    v18 = *(v4 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1C0FE46BC(v18 > 1, v19 + 1, 1, v4);
      v4 = v44;
    }

    *(v4 + 16) = v19 + 1;
    *(v4 + 8 * v19 + 32) = 256;
  }

  v20 = v0[3];
  v21 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v20);
  (*(v21 + 24))(&v53, v20, v21);
  if ((v53 & 0x20) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C0FE46BC(0, *(v4 + 16) + 1, 1, v4);
      v4 = v45;
    }

    v25 = *(v4 + 16);
    v28 = *(v4 + 24);
    v26 = v25 + 1;
    if (v25 >= v28 >> 1)
    {
      sub_1C0FE46BC(v28 > 1, v25 + 1, 1, v4);
      v4 = v46;
    }

    v27 = 32;
  }

  else
  {
    v22 = v0[3];
    v23 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v22);
    (*(v23 + 24))(&v53, v22, v23);
    if ((v53 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C0FE46BC(0, *(v4 + 16) + 1, 1, v4);
      v4 = v51;
    }

    v25 = *(v4 + 16);
    v24 = *(v4 + 24);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      sub_1C0FE46BC(v24 > 1, v25 + 1, 1, v4);
      v4 = v52;
    }

    v27 = 64;
  }

  *(v4 + 16) = v26;
  *(v4 + 8 * v25 + 32) = v27;
LABEL_37:
  v29 = v1[3];
  v30 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v29);
  (*(v30 + 24))(&v53, v29, v30);
  if (v53)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C0FE46BC(0, *(v4 + 16) + 1, 1, v4);
      v4 = v47;
    }

    v32 = *(v4 + 16);
    v31 = *(v4 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_1C0FE46BC(v31 > 1, v32 + 1, 1, v4);
      v4 = v48;
    }

    *(v4 + 16) = v32 + 1;
    *(v4 + 8 * v32 + 32) = 1;
  }

  v33 = v1[3];
  v34 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v33);
  (*(v34 + 24))(&v53, v33, v34);
  if ((v53 & 0x80) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C0FE46BC(0, *(v4 + 16) + 1, 1, v4);
      v4 = v49;
    }

    v36 = *(v4 + 16);
    v35 = *(v4 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_1C0FE46BC(v35 > 1, v36 + 1, 1, v4);
      v4 = v50;
    }

    *(v4 + 16) = v36 + 1;
    *(v4 + 8 * v36 + 32) = 128;
  }

  return v4;
}

uint64_t sub_1C1194BCC()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 24))(&v9, v1, v2);
  if ((v9 & 2) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C0FE46BC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v3 = v4;
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  if (v6 >= v5 >> 1)
  {
    sub_1C0FE46BC(v5 > 1, v6 + 1, 1, v4);
    v3 = v8;
  }

  *(v3 + 16) = v6 + 1;
  *(v3 + 8 * v6 + 32) = 2;
  return v3;
}

void sub_1C1194C9C(uint64_t *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21[-1] - v5;
  v7 = *a1;
  if (!(!v9 & v8))
  {
    switch(*a1)
    {
      case 1:
        v10 = a2[3];
        v11 = a2[4];
        __swift_project_boxed_opaque_existential_1(a2, v10);
        (*(v11 + 16))(v21, v10, v11);
        v21[5] = swift_getKeyPath();
        v21[6] = 0;
        v22 = 0;
        KeyPath = swift_getKeyPath();
        v24 = 0;
        v25 = 0;
        sub_1C1199B68(v21, v30);
        v31 = 1;
        sub_1C1199900();
        sub_1C1199954();
        sub_1C1263C20();
        sub_1C0FE5654(&v27, v30, &qword_1EBE96348, &qword_1C12BF380);
        v32 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96348, &qword_1C12BF380);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96350, &qword_1C12BF388);
        sub_1C1199874();
        sub_1C11999A8();
        sub_1C1263C20();
        sub_1C0FD1A5C(&v27, &qword_1EBE96348, &qword_1C12BF380);
        sub_1C0FE5654(v26, v30, &qword_1EBE96340, &qword_1C12BF378);
        v33 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96318, &qword_1C12BF350);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96340, &qword_1C12BF378);
        sub_1C1199390();
        sub_1C11997E8();
        sub_1C1263C20();
        sub_1C0FD1A5C(v26, &qword_1EBE96340, &qword_1C12BF378);
        sub_1C0FE5654(&v27, v30, &qword_1EBE96310, &qword_1C12BF348);
        v34 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96310, &qword_1C12BF348);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96360, &unk_1C12BF390);
        sub_1C1199304();
        sub_1C1199A88();
        sub_1C1263C20();
        sub_1C0FD1A5C(&v27, &qword_1EBE96310, &qword_1C12BF348);
        sub_1C1199BC4(v21);
        return;
      case 2:
        v27 = swift_getKeyPath();
        LOWORD(v28) = 256;
        sub_1C1199A34();
        sub_1C1198D30();

        sub_1C1263C20();
        v32 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96348, &qword_1C12BF380);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96350, &qword_1C12BF388);
        sub_1C1199874();
        sub_1C11999A8();
        sub_1C1263C20();
        sub_1C0FE5654(v26, v30, &qword_1EBE96340, &qword_1C12BF378);
        v33 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96318, &qword_1C12BF350);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96340, &qword_1C12BF378);
        sub_1C1199390();
        sub_1C11997E8();
        sub_1C1263C20();
        sub_1C0FD1A5C(v26, &qword_1EBE96340, &qword_1C12BF378);
        sub_1C0FE5654(&v27, v30, &qword_1EBE96310, &qword_1C12BF348);
        v34 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96310, &qword_1C12BF348);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96360, &unk_1C12BF390);
        sub_1C1199304();
        sub_1C1199A88();
        sub_1C1263C20();

        goto LABEL_33;
      case 3:
      case 5:
      case 6:
      case 7:
        goto LABEL_35;
      case 4:
        v12 = a2[3];
        v13 = a2[4];
        __swift_project_boxed_opaque_existential_1(a2, v12);
        (*(v13 + 24))(v30, v12, v13);
        sub_1C1192EE8();
        sub_1C1226AE4();

        static OneUpTopBarLayoutUtilities.allPhotosButtonSizeVariant(allowedTopBarButtons:horizontalSizeClass:)(v30, v6, &v27);
        sub_1C0FD1A5C(v6, &qword_1EBE902F0, &qword_1C12B38C0);
        v14 = v27;
        if (v27 == 2)
        {
          v15 = -256;
        }

        else
        {
          if (sub_1C1193B84() && (v17 = v16, ObjectType = swift_getObjectType(), LOBYTE(v17) = (*(v17 + 272))(ObjectType, v17), swift_unknownObjectRelease(), (v17 & 1) != 0))
          {
            LOWORD(v27) = v14 & 1;
          }

          else
          {
            LOBYTE(v27) = v14 & 1;
            BYTE1(v27) = 1;
          }

          sub_1C119960C();
          sub_1C1199660();
          sub_1C1263C20();
          if (BYTE1(v30[0]))
          {
            v19 = 256;
          }

          else
          {
            v19 = 0;
          }

          v15 = v19 | LOBYTE(v30[0]);
        }

        LOWORD(v27) = v15;
        BYTE2(v27) = 1;
        goto LABEL_30;
      case 8:
        LOBYTE(v27) = 0;
        goto LABEL_15;
      default:
        goto LABEL_36;
    }
  }

  if (v7 == 256)
  {
    v27 = swift_getKeyPath();
    v28 = 0;
    v29 = 0;
    sub_1C1199B14();

    sub_1C1263C20();
    v34 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96310, &qword_1C12BF348);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96360, &unk_1C12BF390);
    sub_1C1199304();
    sub_1C1199A88();
    sub_1C1263C20();

    return;
  }

  if (v7 != 32)
  {
    switch(v7)
    {
      case 64:
        v31 = 0;
        sub_1C1199900();
        sub_1C1199954();
        sub_1C1263C20();
        sub_1C0FE5654(&v27, v30, &qword_1EBE96348, &qword_1C12BF380);
        v32 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96348, &qword_1C12BF380);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96350, &qword_1C12BF388);
        sub_1C1199874();
        sub_1C11999A8();
        sub_1C1263C20();
        sub_1C0FD1A5C(&v27, &qword_1EBE96348, &qword_1C12BF380);
        sub_1C0FE5654(v26, v30, &qword_1EBE96340, &qword_1C12BF378);
        v33 = 1;
        break;
      case 128:
        v27 = 0;
        LOWORD(v28) = 0;
        sub_1C1199A34();
        sub_1C1198D30();
        sub_1C1263C20();
        v32 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96348, &qword_1C12BF380);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96350, &qword_1C12BF388);
        sub_1C1199874();
        sub_1C11999A8();
        sub_1C1263C20();
        sub_1C0FE5654(v26, v30, &qword_1EBE96340, &qword_1C12BF378);
        v33 = 1;
        break;
      case 16:
        LOWORD(v27) = 0;
        BYTE2(v27) = 0;
LABEL_30:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96328, &qword_1C12BF360);
        sub_1C11994A8();
        sub_1C11994FC();
        sub_1C1263C20();
        WORD1(v27) = BYTE2(v30[0]) != 0;
        LOWORD(v27) = v30[0];
        goto LABEL_31;
      default:
LABEL_35:
        v30[0] = 0;
        v30[1] = 0xE000000000000000;
        sub_1C1266940();
        MEMORY[0x1C68EF850](0xD000000000000020, 0x80000001C126D0E0);
        v27 = v7;
        sub_1C1266B10();
        sub_1C1266B70();
        __break(1u);
LABEL_36:
        JUMPOUT(0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96318, &qword_1C12BF350);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96340, &qword_1C12BF378);
    sub_1C1199390();
    sub_1C11997E8();
    sub_1C1263C20();
    sub_1C0FD1A5C(v26, &qword_1EBE96340, &qword_1C12BF378);
    goto LABEL_32;
  }

  LOBYTE(v27) = 1;
LABEL_15:
  sub_1C1199740();
  sub_1C1199794();
  sub_1C1263C20();
  LOWORD(v27) = LOBYTE(v30[0]);
  WORD1(v27) = 256;
LABEL_31:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96320, &qword_1C12BF358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96338, &qword_1C12BF370);
  sub_1C119941C();
  sub_1C11996B4();
  sub_1C1263C20();
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96318, &qword_1C12BF350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96340, &qword_1C12BF378);
  sub_1C1199390();
  sub_1C11997E8();
  sub_1C1263C20();
LABEL_32:
  sub_1C0FE5654(&v27, v30, &qword_1EBE96310, &qword_1C12BF348);
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96310, &qword_1C12BF348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96360, &unk_1C12BF390);
  sub_1C1199304();
  sub_1C1199A88();
  sub_1C1263C20();
LABEL_33:
  sub_1C0FD1A5C(&v27, &qword_1EBE96310, &qword_1C12BF348);
}

uint64_t static OneUpTopBarLayout.BadgePosition.leading(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1C1263150();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1, v4, v8);
  result = (*(v6 + 88))(v10, v4);
  if (result == *MEMORY[0x1E697E7D0])
  {
    v12 = 0;
LABEL_5:
    *a2 = v12;
    return result;
  }

  if (result == *MEMORY[0x1E697E7D8])
  {
    v12 = 1;
    goto LABEL_5;
  }

  result = sub_1C1266B70();
  __break(1u);
  return result;
}

uint64_t OneUpTopBarLayout.BadgePosition.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C1195AAC@<X0>(void (*a1)(__n128)@<X0>, void (*a2)(uint64_t *__return_ptr)@<X2>, uint64_t a3@<X3>, void (*a4)(uint64_t *__return_ptr)@<X4>, uint64_t a5@<X5>, uint64_t (*a6)(__n128)@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, void (*a9)(uint64_t), uint64_t a10)
{
  v79 = a6;
  v80 = a7;
  v68 = a4;
  v69 = a5;
  v66 = a2;
  v67 = a3;
  v65 = a1;
  v83 = a8;
  v77 = a9;
  v76 = a10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96200, &qword_1C12BF240) - 8;
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96208, &qword_1C12BF248);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v70 = (&v64 - v14);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96210, &qword_1C12BF250) - 8;
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v75 = &v64 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v78 = &v64 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96218, &qword_1C12BF258);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v64 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96220, &qword_1C12BF260);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v64 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96228, &qword_1C12BF268);
  v28 = v27 - 8;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v64 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96230, &qword_1C12BF270);
  v32 = v31 - 8;
  MEMORY[0x1EEE9AC00](v31);
  v71 = &v64 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v64 - v35;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v64 - v39;
  v65(v38);
  sub_1C12659A0();
  sub_1C1263390();
  sub_1C0FE4040(v22, v26, &qword_1EBE96218, &qword_1C12BF258);
  memcpy(&v26[*(v24 + 44)], v98, 0x70uLL);
  sub_1C0FE4040(v26, v30, &qword_1EBE96220, &qword_1C12BF260);
  v30[*(v28 + 44)] = 0;
  KeyPath = swift_getKeyPath();
  sub_1C0FE4040(v30, v36, &qword_1EBE96228, &qword_1C12BF268);
  v42 = &v36[*(v32 + 44)];
  *v42 = KeyPath;
  *(v42 + 1) = 0;
  v42[16] = 0;
  v43 = v40;
  sub_1C0FE4040(v36, v40, &qword_1EBE96230, &qword_1C12BF270);
  v44 = sub_1C12638E0();
  v93 = 1;
  sub_1C11963E8(v66, v68, v94);
  memcpy(v95, v94, 0x99uLL);
  memcpy(v96, v94, 0x99uLL);
  sub_1C0FE5654(v95, v91, &qword_1EBE96238, &qword_1C12BF278);
  sub_1C0FD1A5C(v96, &qword_1EBE96238, &qword_1C12BF278);
  memcpy(&v92[7], v95, 0x99uLL);
  sub_1C12659A0();
  v97[0] = v44;
  v97[1] = 0;
  LOBYTE(v32) = v93;
  LOBYTE(v97[2]) = v93;
  memcpy(&v97[2] + 1, v92, 0xA0uLL);
  sub_1C1263390();
  memcpy(v94, v97, 0xB1uLL);
  v87[0] = v44;
  v87[1] = 0;
  v88 = v32;
  memcpy(v89, v92, sizeof(v89));
  sub_1C0FE5654(v97, v91, &qword_1EBE96240, &qword_1C12BF280);
  sub_1C0FD1A5C(v87, &qword_1EBE96240, &qword_1C12BF280);
  memcpy(v90, v94, sizeof(v90));
  memcpy(v91, v94, sizeof(v91));
  sub_1C0FE5654(v90, v86, &qword_1EBE96248, &qword_1C12BF288);
  sub_1C0FD1A5C(v91, &qword_1EBE96248, &qword_1C12BF288);
  v45 = sub_1C12638E0();
  v46 = v70;
  *v70 = v45;
  *(v46 + 8) = 0;
  *(v46 + 16) = 1;
  v47 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96250, &qword_1C12BF290) + 44);
  v49 = v72;
  v48 = v73;
  v50 = &v72[*(v73 + 48)];
  *v50 = swift_getKeyPath();
  *(v50 + 1) = 0;
  v50[16] = 0;
  sub_1C11969B8(v79, v77, v49);
  v49[*(v48 + 44)] = 1;
  v51 = v74;
  sub_1C0FE5654(v49, v74, &qword_1EBE96200, &qword_1C12BF240);
  *v47 = 0;
  *(v47 + 8) = 1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96258, &qword_1C12BF298);
  sub_1C0FE5654(v51, v47 + *(v52 + 48), &qword_1EBE96200, &qword_1C12BF240);
  sub_1C0FD1A5C(v49, &qword_1EBE96200, &qword_1C12BF240);
  sub_1C0FD1A5C(v51, &qword_1EBE96200, &qword_1C12BF240);
  sub_1C12659A0();
  sub_1C1263390();
  v53 = v75;
  sub_1C0FE4040(v46, v75, &qword_1EBE96208, &qword_1C12BF248);
  memcpy((v53 + *(v81 + 44)), __src, 0x70uLL);
  v54 = v78;
  sub_1C0FE4040(v53, v78, &qword_1EBE96210, &qword_1C12BF250);
  v55 = v43;
  v56 = v71;
  sub_1C0FE5654(v43, v71, &qword_1EBE96230, &qword_1C12BF270);
  memcpy(v84, v90, sizeof(v84));
  v57 = v82;
  sub_1C0FE5654(v54, v82, &qword_1EBE96210, &qword_1C12BF250);
  v58 = v83;
  sub_1C0FE5654(v56, v83, &qword_1EBE96230, &qword_1C12BF270);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96260, &qword_1C12BF2A0);
  v60 = v58 + v59[12];
  *v60 = 0;
  *(v60 + 8) = 1;
  v61 = v59[16];
  memcpy(v85, v84, sizeof(v85));
  memcpy((v58 + v61), v84, 0x128uLL);
  v62 = v58 + v59[20];
  *v62 = 0;
  *(v62 + 8) = 1;
  sub_1C0FE5654(v57, v58 + v59[24], &qword_1EBE96210, &qword_1C12BF250);
  sub_1C0FE5654(v85, v86, &qword_1EBE96248, &qword_1C12BF288);
  sub_1C0FD1A5C(v54, &qword_1EBE96210, &qword_1C12BF250);
  sub_1C0FD1A5C(v55, &qword_1EBE96230, &qword_1C12BF270);
  sub_1C0FD1A5C(v57, &qword_1EBE96210, &qword_1C12BF250);
  memcpy(v86, v84, sizeof(v86));
  sub_1C0FD1A5C(v86, &qword_1EBE96248, &qword_1C12BF288);
  return sub_1C0FD1A5C(v56, &qword_1EBE96230, &qword_1C12BF270);
}

double sub_1C11963E8@<D0>(void (*a1)(uint64_t *__return_ptr)@<X0>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t x8_0@<X8>)
{
  a1(&v32);
  v5 = v32;
  v6 = v33;
  v7 = v34;
  v8 = v35;
  v9 = v36;
  KeyPath = swift_getKeyPath();
  v45 = v7;
  v44 = v9;
  v43 = 0;
  a3(&v32);
  v11 = v32;
  v12 = v33;
  LOBYTE(a3) = v34;
  v13 = v35;
  v14 = v36;
  v15 = swift_getKeyPath();
  v48 = a3;
  v47 = v14;
  v46 = 0;
  v40 = 0;
  v41 = 1;
  v32 = v5;
  v33 = v6;
  v34 = v45;
  v35 = v8;
  v36 = v44;
  v37 = KeyPath;
  v38 = 0;
  v39 = v43;
  v42[0] = &v40;
  v42[1] = &v32;
  v24 = v11;
  v25 = v12;
  v26 = a3;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = 0;
  v31 = 0;
  v22 = 0;
  v23 = 1;
  v42[2] = &v24;
  v42[3] = &v22;
  sub_1C11C2E3C(v42, x8_0);
  v16 = v29;
  v17 = v30;
  LOBYTE(a3) = v31;
  sub_1C0FF9034(v24, v25, v26);

  sub_1C0FF9034(v16, v17, a3);
  v18 = v37;
  v19 = v38;
  LOBYTE(a3) = v39;
  sub_1C0FF9034(v32, v33, v34);

  return sub_1C0FF9034(v18, v19, a3);
}

uint64_t sub_1C1196590@<X0>(uint64_t (*a1)(__n128)@<X0>, uint64_t (*a2)(__n128)@<X2>, uint64_t a3@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v44 = a4;
  v45 = a5;
  v42 = a2;
  v43 = a3;
  v46 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96278, &qword_1C12BF2B8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96218, &qword_1C12BF258);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96220, &qword_1C12BF260);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96280, &qword_1C12BF2C0);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v40 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v40 - v28;
  a1(v27);
  sub_1C12659A0();
  sub_1C1263390();
  sub_1C0FE4040(v14, v18, &qword_1EBE96218, &qword_1C12BF258);
  memcpy(&v18[*(v16 + 44)], __src, 0x70uLL);
  KeyPath = swift_getKeyPath();
  sub_1C0FE4040(v18, v25, &qword_1EBE96220, &qword_1C12BF260);
  v31 = &v25[*(v20 + 44)];
  *v31 = KeyPath;
  *(v31 + 1) = 0;
  v31[16] = 0;
  sub_1C0FE4040(v25, v29, &qword_1EBE96280, &qword_1C12BF2C0);
  *v11 = sub_1C12638E0();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v32 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96288, &qword_1C12BF2C8) + 44)];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96200, &qword_1C12BF240);
  v34 = &v32[*(v33 + 40)];
  *v34 = swift_getKeyPath();
  *(v34 + 1) = 0;
  v34[16] = 0;
  sub_1C11969B8(v42, v44, v32);
  v32[*(v33 + 36)] = 1;
  sub_1C0FE5654(v29, v22, &qword_1EBE96280, &qword_1C12BF2C0);
  v35 = v41;
  sub_1C0FE5654(v11, v41, &qword_1EBE96278, &qword_1C12BF2B8);
  v36 = v46;
  sub_1C0FE5654(v22, v46, &qword_1EBE96280, &qword_1C12BF2C0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96290, &qword_1C12BF2D0);
  v38 = v36 + *(v37 + 48);
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_1C0FE5654(v35, v36 + *(v37 + 64), &qword_1EBE96278, &qword_1C12BF2B8);
  sub_1C0FD1A5C(v11, &qword_1EBE96278, &qword_1C12BF2B8);
  sub_1C0FD1A5C(v29, &qword_1EBE96280, &qword_1C12BF2C0);
  sub_1C0FD1A5C(v35, &qword_1EBE96278, &qword_1C12BF2B8);
  return sub_1C0FD1A5C(v22, &qword_1EBE96280, &qword_1C12BF2C0);
}

uint64_t sub_1C11969B8@<X0>(uint64_t (*a1)(__n128)@<X0>, void (*a2)(uint64_t)@<X2>, char *a3@<X8>)
{
  v27 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96268, &qword_1C12BF2A8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v26 - v19;
  v21 = a1(v18);
  v27(v21);
  v22 = *(v7 + 16);
  v22(v13, v20, v5);
  v22(v10, v16, v5);
  v22(a3, v13, v5);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96270, &qword_1C12BF2B0);
  v22(&a3[*(v23 + 48)], v10, v5);
  v24 = *(v7 + 8);
  v24(v16, v5);
  v24(v20, v5);
  v24(v10, v5);
  return (v24)(v13, v5);
}

uint64_t sub_1C1196BDC@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, void (*a3)(__int128 *__return_ptr, uint64_t)@<X3>, uint64_t a4@<X4>, void (*a5)(__int128 *__return_ptr)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v57 = a6;
  v58 = a4;
  v60 = a3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE962D0, &qword_1C12BF300);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v50 - v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE962D8, &qword_1C12BF308);
  MEMORY[0x1EEE9AC00](v62);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE962A8, &qword_1C12BF2E8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - v18;
  switch(a1)
  {
    case 1:
    case 3:
      v29 = &v16[*(v14 + 40)];
      *v29 = swift_getKeyPath();
      *(v29 + 1) = 0;
      v29[16] = 0;
      a2();
      v16[*(v14 + 36)] = 1;
      sub_1C0FE5654(v16, v63, &qword_1EBE962A8, &qword_1C12BF2E8);
      swift_storeEnumTagMultiPayload();
      sub_1C0FDB6D4(&qword_1EBE962E0, &qword_1EBE962D8, &qword_1C12BF308, MEMORY[0x1E6981F48]);
      sub_1C0FDB6D4(&qword_1EBE962C0, &qword_1EBE962A8, &qword_1C12BF2E8, &unk_1C12BF0E8);
      sub_1C1263C20();
      v30 = v16;
      break;
    default:
      v50 = a5;
      v59 = v13;
      v56 = a7;
      v20 = &v19[*(v14 + 40)];
      *v20 = swift_getKeyPath();
      *(v20 + 1) = 0;
      v20[16] = 0;
      v21 = a2();
      v54 = v14;
      v19[*(v14 + 36)] = 1;
      v60(&v72, v21);
      v53 = *(&v72 + 1);
      v55 = v72;
      v22 = v73;
      v23 = *(&v73 + 1);
      v24 = v74[0];
      KeyPath = swift_getKeyPath();
      LODWORD(v60) = v22;
      v77 = v22;
      v76 = v24;
      v75 = 0;
      v58 = v23;
      if (a1)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *&v73 = 255;
        *v74 = 0;
      }

      else
      {
        v50(&v72);
        v26 = *(&v72 + 1);
        v25 = v72;
        v31 = v73;
        v27 = *(&v73 + 1);
        v32 = v74[0];
        v28 = swift_getKeyPath();
        LOBYTE(v70[0]) = v31;
        LOBYTE(v68[0]) = v32;
        LOBYTE(v65) = 0;
        LOBYTE(v73) = v31;
        v23 = v58;
        v74[0] = v32;
      }

      *&v72 = v25;
      *(&v72 + 1) = v26;
      *(&v73 + 1) = v27;
      *&v74[8] = v28;
      *&v74[16] = 0;
      v74[24] = 0;
      v52 = v19;
      sub_1C0FE5654(v19, v16, &qword_1EBE962A8, &qword_1C12BF2E8);
      v33 = v76;
      v34 = v77;
      LODWORD(v57) = v77;
      v35 = v75;
      v65 = v72;
      v66 = v73;
      v67[0] = *v74;
      *(v67 + 9) = *&v74[9];
      v36 = v59;
      sub_1C0FE5654(v16, v59, &qword_1EBE962A8, &qword_1C12BF2E8);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE962E8, &qword_1C12BF310);
      v38 = v36 + *(v37 + 48);
      v39 = v55;
      v40 = v53;
      *v38 = v55;
      *(v38 + 8) = v40;
      *(v38 + 16) = v34;
      *(v38 + 24) = v23;
      *(v38 + 32) = v33;
      v41 = KeyPath;
      *(v38 + 40) = KeyPath;
      *(v38 + 48) = 0;
      *(v38 + 56) = v35;
      v42 = (v36 + *(v37 + 64));
      *(v69 + 9) = *(v67 + 9);
      v43 = v65;
      v44 = v66;
      v68[0] = v65;
      v68[1] = v66;
      v45 = v67[0];
      v69[0] = v67[0];
      v46 = v66;
      *v42 = v65;
      v42[1] = v46;
      v42[2] = v45;
      *(v42 + 41) = *(v67 + 9);
      *(v71 + 9) = *(v67 + 9);
      v70[1] = v44;
      v71[0] = v67[0];
      v70[0] = v43;
      sub_1C1058CE4(v39, v40, v60);

      sub_1C0FE5654(&v72, v64, &qword_1EBE962F0, &qword_1C12BF318);
      v47 = v57;
      sub_1C1058CE4(v39, v40, v57 & 1);

      sub_1C1058CE4(v41, 0, v35 & 1);
      sub_1C0FE5654(v68, v64, &qword_1EBE962F0, &qword_1C12BF318);
      sub_1C0FD1A5C(v70, &qword_1EBE962F0, &qword_1C12BF318);
      sub_1C0FF9034(v39, v40, v47 & 1);

      sub_1C0FF9034(v41, 0, v35 & 1);
      sub_1C0FD1A5C(v16, &qword_1EBE962A8, &qword_1C12BF2E8);
      v48 = v59;
      sub_1C0FE5654(v59, v63, &qword_1EBE962D8, &qword_1C12BF308);
      swift_storeEnumTagMultiPayload();
      sub_1C0FDB6D4(&qword_1EBE962E0, &qword_1EBE962D8, &qword_1C12BF308, MEMORY[0x1E6981F48]);
      sub_1C0FDB6D4(&qword_1EBE962C0, &qword_1EBE962A8, &qword_1C12BF2E8, &unk_1C12BF0E8);
      sub_1C1263C20();
      sub_1C0FF9034(v39, v40, v60);

      sub_1C0FD1A5C(&v72, &qword_1EBE962F0, &qword_1C12BF318);
      sub_1C0FD1A5C(v48, &qword_1EBE962D8, &qword_1C12BF308);
      v30 = v52;
      break;
  }

  return sub_1C0FD1A5C(v30, &qword_1EBE962A8, &qword_1C12BF2E8);
}

uint64_t sub_1C1197274@<X0>(unsigned __int8 a1@<W0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, void (*a4)(__int128 *__return_ptr, __n128)@<X3>, void (*a5)(__int128 *__return_ptr)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v55 = a4;
  v56 = a6;
  v58 = a5;
  v60 = a7;
  v9 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96298, &qword_1C12BF2D8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE962A0, &qword_1C12BF2E0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE962A8, &qword_1C12BF2E8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = MEMORY[0x1EEE9AC00](v17);
  if ((v9 - 1) >= 2)
  {
    v27 = &v49 + *(v16 + 40) - v18;
    v28 = &v49 - v18;
    *v27 = swift_getKeyPath();
    *(v27 + 1) = 0;
    v27[16] = 0;
    a2();
    v28[*(v16 + 36)] = 0;
    sub_1C0FE5654(v28, v15, &qword_1EBE962A8, &qword_1C12BF2E8);
    swift_storeEnumTagMultiPayload();
    sub_1C0FDB6D4(&qword_1EBE962C0, &qword_1EBE962A8, &qword_1C12BF2E8, &unk_1C12BF0E8);
    sub_1C0FDB6D4(&qword_1EBE962C8, &qword_1EBE96298, &qword_1C12BF2D8, MEMORY[0x1E6981F48]);
    sub_1C1263C20();
    v29 = v28;
  }

  else
  {
    v57 = &v49 - v18;
    v50 = a3;
    v51 = v19;
    v52 = v13;
    v53 = v15;
    v54 = v10;
    v59 = v16;
    if (v9 == 1)
    {
      v55(&v72, v20);
      v22 = *(&v72 + 1);
      v21 = v72;
      v23 = v73;
      v24 = *(&v73 + 1);
      v25 = v74[0];
      KeyPath = swift_getKeyPath();
      LOBYTE(v66) = v23;
      LOBYTE(v64[0]) = v25;
      LOBYTE(v61) = 0;
      LOBYTE(v73) = v23;
      v74[0] = v25;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v24 = 0;
      KeyPath = 0;
      *&v73 = 255;
      *v74 = 0;
    }

    *&v72 = v21;
    *(&v72 + 1) = v22;
    *(&v73 + 1) = v24;
    *&v74[8] = KeyPath;
    *&v74[16] = 0;
    v74[24] = 0;
    v58(&v66);
    v56 = *(&v66 + 1);
    v30 = v66;
    v31 = v67;
    LODWORD(v58) = v67;
    v32 = *(&v67 + 1);
    v33 = v68[0];
    v34 = swift_getKeyPath();
    v71 = v31;
    v70 = v33;
    v69 = 0;
    v35 = v59;
    v36 = v57;
    v37 = &v57[*(v59 + 40)];
    *v37 = swift_getKeyPath();
    *(v37 + 1) = 0;
    v37[16] = 0;
    a2();
    v36[*(v35 + 36)] = 0;
    v38 = v36;
    v61 = v72;
    v62 = v73;
    v63[0] = *v74;
    *(v63 + 9) = *&v74[9];
    v39 = v70;
    LOBYTE(v37) = v71;
    v40 = v69;
    LODWORD(v50) = v69;
    v41 = v51;
    sub_1C0FE5654(v38, v51, &qword_1EBE962A8, &qword_1C12BF2E8);
    v42 = v62;
    v64[0] = v61;
    v64[1] = v62;
    v43 = v63[0];
    v65[0] = v63[0];
    v44 = *(v63 + 9);
    *(v65 + 9) = *(v63 + 9);
    *v12 = v61;
    *(v12 + 1) = v42;
    *(v12 + 2) = v43;
    *(v12 + 41) = v44;
    v45 = v56;
    *(v12 + 8) = v30;
    *(v12 + 9) = v45;
    v12[80] = v37;
    *(v12 + 11) = v32;
    *(v12 + 12) = v39;
    *(v12 + 13) = v34;
    *(v12 + 14) = 0;
    v12[120] = v40;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE962B0, &qword_1C12BF2F0);
    sub_1C0FE5654(v41, &v12[*(v46 + 64)], &qword_1EBE962A8, &qword_1C12BF2E8);
    sub_1C0FE5654(&v72, &v66, &qword_1EBE962B8, &qword_1C12BF2F8);
    sub_1C1058CE4(v30, v45, v58);

    sub_1C0FE5654(v64, &v66, &qword_1EBE962B8, &qword_1C12BF2F8);
    sub_1C1058CE4(v30, v45, v37 & 1);

    v47 = v50;
    v55 = v34;
    sub_1C1058CE4(v34, 0, v50 & 1);
    sub_1C0FD1A5C(v41, &qword_1EBE962A8, &qword_1C12BF2E8);
    sub_1C0FF9034(v30, v45, v37 & 1);

    sub_1C0FF9034(v34, 0, v47 & 1);
    v66 = v61;
    v67 = v62;
    v68[0] = v63[0];
    *(v68 + 9) = *(v63 + 9);
    sub_1C0FD1A5C(&v66, &qword_1EBE962B8, &qword_1C12BF2F8);
    sub_1C0FE5654(v12, v53, &qword_1EBE96298, &qword_1C12BF2D8);
    swift_storeEnumTagMultiPayload();
    sub_1C0FDB6D4(&qword_1EBE962C0, &qword_1EBE962A8, &qword_1C12BF2E8, &unk_1C12BF0E8);
    sub_1C0FDB6D4(&qword_1EBE962C8, &qword_1EBE96298, &qword_1C12BF2D8, MEMORY[0x1E6981F48]);
    sub_1C1263C20();
    sub_1C0FF9034(v30, v56, v58);

    sub_1C0FD1A5C(&v72, &qword_1EBE962B8, &qword_1C12BF2F8);
    sub_1C0FD1A5C(v12, &qword_1EBE96298, &qword_1C12BF2D8);
    v29 = v57;
  }

  return sub_1C0FD1A5C(v29, &qword_1EBE962A8, &qword_1C12BF2E8);
}

uint64_t sub_1C1197904(uint64_t a1)
{
  sub_1C1266E90();
  sub_1C0FCF0B8(v3, *v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C119794C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = *(a1 + 16);
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v34 - v7;
  v8 = sub_1C12637E0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96110, &qword_1C12BF138);
  v40 = v4;
  v12 = sub_1C1263C30();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v34 - v14;
  v15 = *(a1 + 40);
  v38 = v2;
  v16 = v2 + v15;
  v17 = *v16;
  v18 = *(v16 + 8);
  if (*(v16 + 16) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_1C1266420();
    v19 = sub_1C1264410();
    v34 = v8;
    v20 = v19;
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v21 = sub_1C0FF9034(v17, v18, 0);
    (*(v9 + 8))(v11, v34, v21);
    v17 = v46;
    v18 = v47;
  }

  v22 = v41;
  if (v17 && (ObjectType = swift_getObjectType(), (*(v18 + 24))(&v46, ObjectType, v18), swift_unknownObjectRelease(), v46 == 1))
  {
    v24 = a1;
    if (*(v38 + *(a1 + 36)))
    {
      KeyPath = swift_getKeyPath();
      v43 = 256;
    }

    else
    {
      KeyPath = 0;
      v43 = 0;
    }

    sub_1C1198D30();
    sub_1C1263C20();
    v30 = v46;
    v31 = v47;
    v32 = BYTE1(v47);
    sub_1C1198CA4();
    v25 = *(v24 + 24);
    sub_1C1112D68();
    sub_1C1198D84(v30, v31, v32);
  }

  else
  {
    v25 = *(a1 + 24);
    v26 = v35;
    v27 = v40;
    sub_1C0FDBA4C();
    v28 = v36;
    sub_1C0FDBA4C();
    sub_1C1198CA4();
    sub_1C1112E18();
    v29 = *(v37 + 8);
    v29(v28, v27);
    v29(v26, v27);
  }

  v44 = sub_1C1198CA4();
  v45 = v25;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  return (*(v13 + 8))(v22, v12);
}

unint64_t sub_1C1197E90()
{
  result = qword_1EBE96060;
  if (!qword_1EBE96060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96060);
  }

  return result;
}

unint64_t sub_1C1197EE8()
{
  result = qword_1EBE96068;
  if (!qword_1EBE96068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96068);
  }

  return result;
}

unint64_t sub_1C1197F40()
{
  result = qword_1EBE96070;
  if (!qword_1EBE96070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96070);
  }

  return result;
}

unint64_t sub_1C1197F9C()
{
  result = qword_1EDE7D6A0;
  if (!qword_1EDE7D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D6A0);
  }

  return result;
}

unint64_t sub_1C119800C()
{
  result = qword_1EDE7D698;
  if (!qword_1EDE7D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D698);
  }

  return result;
}

PhotosSwiftUICore::OneUpTopBarButtons sub_1C11980F8@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = OneUpTopBarButtons.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C1198138@<X0>(uint64_t *a1@<X8>)
{
  result = OneUpTopBarButtons.rawValue.getter();
  *a1 = result;
  return result;
}

void sub_1C119818C(uint64_t a1)
{
  sub_1C1198280();
  if (v1 <= 0x3F)
  {
    sub_1C10387FC(319);
    if (v2 <= 0x3F)
    {
      sub_1C1057868(319, &qword_1EDE775E0, type metadata accessor for OneUpChromeSpec);
      if (v3 <= 0x3F)
      {
        sub_1C1057868(319, &qword_1EDE77590, MEMORY[0x1E697DBD0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1C1198280()
{
  result = qword_1EDE78A50;
  if (!qword_1EDE78A50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDE78A50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OneUpTopBarLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x3E)
  {
    if (a2 + 194 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 194) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 195;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v5 >= 0x3D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for OneUpTopBarLayout(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3D)
  {
    v6 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
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
          *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C1198448(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 3u) + 2;
  }
}

_BYTE *sub_1C1198474(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 3 | (a2 << 6);
  }

  else
  {
    v2 = a2 & 3 ^ 0x82;
  }

  *result = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpTopBarLayout.BadgePosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C11985C4()
{
  result = qword_1EBE96078;
  if (!qword_1EBE96078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96058, &qword_1C12BEB58);
    sub_1C0FDB6D4(&qword_1EBE96080, &qword_1EBE96050, &qword_1C12BEB28, &protocol conformance descriptor for OneUpBar<A>);
    sub_1C0FDB6D4(&unk_1EDE7B978, qword_1EBE96088, &unk_1C12C2950, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96078);
  }

  return result;
}

uint64_t sub_1C11986A8(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  locked = v2;
  if (v5 <= 0x3F)
  {
    locked = type metadata accessor for OneUpLockedAwareButtons.LockedButton(319, v2, *(a1 + 24), v3);
    if (v6 <= 0x3F)
    {
      sub_1C10387FC(319);
      locked = v7;
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return locked;
}

uint64_t sub_1C1198760(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0xFE)
    {
      v16 = *(v6 + result);
      if (v16 >= 2)
      {
        return v16 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 25;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C119889C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = (v9 & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
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
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0xFE)
          {
            a1[v9] = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, (v9 & 0xFFFFFFFFFFFFFFF8) + 25);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_1C1198A98(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C1198B74(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1C1198BB4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C1198CA4()
{
  result = qword_1EBE96118;
  if (!qword_1EBE96118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96110, &qword_1C12BF138);
    sub_1C1198D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96118);
  }

  return result;
}

unint64_t sub_1C1198D30()
{
  result = qword_1EDE7D6B8;
  if (!qword_1EDE7D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D6B8);
  }

  return result;
}

double sub_1C1198D84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1C1198D98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpTopBar(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C1198EF0()
{
  result = qword_1EBE96190;
  if (!qword_1EBE96190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96138, &qword_1C12BF1A8);
    sub_1C1198F7C();
    sub_1C119905C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96190);
  }

  return result;
}

unint64_t sub_1C1198F7C()
{
  result = qword_1EBE96198;
  if (!qword_1EBE96198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96188, &unk_1C12BF1F8);
    v1 = MEMORY[0x1E69817F8];
    sub_1C0FDB6D4(&qword_1EBE961A0, &qword_1EBE96150, &qword_1C12BF1C0, MEMORY[0x1E69817F8]);
    sub_1C0FDB6D4(&qword_1EBE961A8, &qword_1EBE96140, &qword_1C12BF1B0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96198);
  }

  return result;
}

unint64_t sub_1C119905C()
{
  result = qword_1EBE961B0;
  if (!qword_1EBE961B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96180, &qword_1C12BF1F0);
    sub_1C11990E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE961B0);
  }

  return result;
}

unint64_t sub_1C11990E8()
{
  result = qword_1EBE961B8;
  if (!qword_1EBE961B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96178, &qword_1C12BF1E8);
    sub_1C0FDB6D4(&qword_1EDE7C018, &qword_1EBE92990, &qword_1C12B1390, MEMORY[0x1E697DDD0]);
    sub_1C0FDB6D4(&qword_1EBE961C0, &qword_1EBE961C8, &qword_1C12BF208, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE961B8);
  }

  return result;
}

unint64_t sub_1C11991CC()
{
  result = qword_1EDE7C7C0;
  if (!qword_1EDE7C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C7C0);
  }

  return result;
}

unint64_t sub_1C1199224()
{
  result = qword_1EDE7D6A8;
  if (!qword_1EDE7D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D6A8);
  }

  return result;
}

unint64_t sub_1C1199278()
{
  result = qword_1EBE96308;
  if (!qword_1EBE96308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96300, &qword_1C12BF340);
    sub_1C1199304();
    sub_1C1199A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96308);
  }

  return result;
}

unint64_t sub_1C1199304()
{
  result = qword_1EDE76E20;
  if (!qword_1EDE76E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96310, &qword_1C12BF348);
    sub_1C1199390();
    sub_1C11997E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E20);
  }

  return result;
}

unint64_t sub_1C1199390()
{
  result = qword_1EDE76E40;
  if (!qword_1EDE76E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96318, &qword_1C12BF350);
    sub_1C119941C();
    sub_1C11996B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E40);
  }

  return result;
}

unint64_t sub_1C119941C()
{
  result = qword_1EDE76EF8;
  if (!qword_1EDE76EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96320, &qword_1C12BF358);
    sub_1C11994A8();
    sub_1C11994FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76EF8);
  }

  return result;
}

unint64_t sub_1C11994A8()
{
  result = qword_1EDE7D6E0;
  if (!qword_1EDE7D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D6E0);
  }

  return result;
}

unint64_t sub_1C11994FC()
{
  result = qword_1EDE76EE8;
  if (!qword_1EDE76EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96328, &qword_1C12BF360);
    sub_1C1199580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76EE8);
  }

  return result;
}

unint64_t sub_1C1199580()
{
  result = qword_1EDE76EF0;
  if (!qword_1EDE76EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96330, &qword_1C12BF368);
    sub_1C119960C();
    sub_1C1199660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76EF0);
  }

  return result;
}

unint64_t sub_1C119960C()
{
  result = qword_1EDE7CA88;
  if (!qword_1EDE7CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7CA88);
  }

  return result;
}

unint64_t sub_1C1199660()
{
  result = qword_1EDE82EE0;
  if (!qword_1EDE82EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82EE0);
  }

  return result;
}

unint64_t sub_1C11996B4()
{
  result = qword_1EDE7BC50;
  if (!qword_1EDE7BC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96338, &qword_1C12BF370);
    sub_1C1199740();
    sub_1C1199794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC50);
  }

  return result;
}

unint64_t sub_1C1199740()
{
  result = qword_1EDE7D7D0[0];
  if (!qword_1EDE7D7D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7D7D0);
  }

  return result;
}

unint64_t sub_1C1199794()
{
  result = qword_1EDE7CB28;
  if (!qword_1EDE7CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7CB28);
  }

  return result;
}

unint64_t sub_1C11997E8()
{
  result = qword_1EDE7BBE8;
  if (!qword_1EDE7BBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96340, &qword_1C12BF378);
    sub_1C1199874();
    sub_1C11999A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BBE8);
  }

  return result;
}

unint64_t sub_1C1199874()
{
  result = qword_1EDE7BC40;
  if (!qword_1EDE7BC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96348, &qword_1C12BF380);
    sub_1C1199900();
    sub_1C1199954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC40);
  }

  return result;
}

unint64_t sub_1C1199900()
{
  result = qword_1EDE7CB48;
  if (!qword_1EDE7CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7CB48);
  }

  return result;
}

unint64_t sub_1C1199954()
{
  result = qword_1EDE7D6E8;
  if (!qword_1EDE7D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D6E8);
  }

  return result;
}

unint64_t sub_1C11999A8()
{
  result = qword_1EDE7BC38;
  if (!qword_1EDE7BC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96350, &qword_1C12BF388);
    sub_1C1199A34();
    sub_1C1198D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC38);
  }

  return result;
}

unint64_t sub_1C1199A34()
{
  result = qword_1EDE7CA98;
  if (!qword_1EDE7CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7CA98);
  }

  return result;
}

unint64_t sub_1C1199A88()
{
  result = qword_1EBE96358;
  if (!qword_1EBE96358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96360, &unk_1C12BF390);
    sub_1C1199B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96358);
  }

  return result;
}

unint64_t sub_1C1199B14()
{
  result = qword_1EBE96368;
  if (!qword_1EBE96368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96368);
  }

  return result;
}

uint64_t objectdestroyTm_13()
{
  v1 = (type metadata accessor for OneUpTopBar(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  sub_1C0FF9034(*(v2 + 48), *(v2 + 56), *(v2 + 64));

  v3 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C12629F0();
    OUTLINED_FUNCTION_3();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1C1199D40(uint64_t *a1)
{
  v3 = *(type metadata accessor for OneUpTopBar(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_1C1194C9C(a1, v4);
}

uint64_t sub_1C1199DC0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_18();
  v5(v4);
  return a2;
}

unint64_t sub_1C1199E1C()
{
  result = qword_1EBE96380;
  if (!qword_1EBE96380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96388, &qword_1C12BF3D8);
    sub_1C0FDB6D4(&qword_1EBE96390, &qword_1EBE96120, &qword_1C12BF140, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96380);
  }

  return result;
}

uint64_t sub_1C1199EE4(uint64_t a1, unsigned int a2)
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

void *sub_1C1199F50@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550, &qword_1C12AC4C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23[-v7];
  v9 = sub_1C12637E0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v26 = a1;

    if (!a1)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v14 = j__swift_release_1();
    (*(v10 + 8))(v12, v9, v14);
    if (!v26)
    {
      goto LABEL_6;
    }
  }

  sub_1C1213CC4();

  v15 = v25[0];
  if (LOBYTE(v25[0]) != 3)
  {
    KeyPath = swift_getKeyPath();
    sub_1C12659A0();
    sub_1C1262C80();
    LOBYTE(v25[0]) = 0;
    *&v23[7] = v27;
    *&v23[23] = v28;
    *&v23[39] = v29;
    v17 = sub_1C1264590();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v17);
    sub_1C1264630();
    sub_1C119A284(v8);
    v18 = sub_1C1264500();

    v19 = swift_getKeyPath();
    v20 = sub_1C1264470();
    v21 = swift_getKeyPath();
    *(&v24[3] + 1) = *v23;
    LOBYTE(v25[0]) = 0;
    LOBYTE(v24[0]) = v15;
    v24[1] = KeyPath;
    v24[2] = 0;
    LOBYTE(v24[3]) = 0;
    *(&v24[5] + 1) = *&v23[16];
    *(&v24[7] + 1) = *&v23[32];
    v24[9] = *&v23[47];
    v24[10] = v19;
    v24[11] = v18;
    LOBYTE(v24[12]) = v20;
    v24[13] = v21;
    v24[14] = 0;
    LOBYTE(v24[15]) = 0;
    nullsub_1();
    memcpy(v25, v24, 0x79uLL);
    return memcpy(a3, v25, 0x79uLL);
  }

LABEL_6:
  sub_1C119A268(v25);
  return memcpy(a3, v25, 0x79uLL);
}

double sub_1C119A268(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1C119A284(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550, &qword_1C12AC4C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C119A2EC()
{
  result = qword_1EDE770A0;
  if (!qword_1EDE770A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96398, &qword_1C12BF518);
    sub_1C119A370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE770A0);
  }

  return result;
}

unint64_t sub_1C119A370()
{
  result = qword_1EDE770A8;
  if (!qword_1EDE770A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE963A0, &qword_1C12BF520);
    sub_1C119A3FC();
    sub_1C109739C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE770A8);
  }

  return result;
}

unint64_t sub_1C119A3FC()
{
  result = qword_1EDE7BD68;
  if (!qword_1EDE7BD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE963A8, &qword_1C12BF528);
    sub_1C119A4B4();
    sub_1C0FDB6D4(&qword_1EDE7BA70, &qword_1EBE91190, &unk_1C12A8368, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BD68);
  }

  return result;
}

unint64_t sub_1C119A4B4()
{
  result = qword_1EDE7BDF0;
  if (!qword_1EDE7BDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE963B0, &qword_1C12BF530);
    sub_1C119A56C();
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0, &qword_1C12A43F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BDF0);
  }

  return result;
}

unint64_t sub_1C119A56C()
{
  result = qword_1EDE7BF68;
  if (!qword_1EDE7BF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE963B8, &qword_1C12BF538);
    sub_1C119A5F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF68);
  }

  return result;
}

unint64_t sub_1C119A5F8()
{
  result = qword_1EDE7E4A0[0];
  if (!qword_1EDE7E4A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7E4A0);
  }

  return result;
}

void sub_1C119A678(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_1C12637E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C12638E0();
  if (a3)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_1C1266420();
    v15 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v16 = sub_1C0FF9034(a1, a2, 0);
    (*(v11 + 8))(v13, v10, v16);
    a1 = v20[0];
    a2 = v20[1];
  }

  if (a1)
  {
    ObjectType = swift_getObjectType();
    v18 = (*(a2 + 256))(ObjectType, a2);
    swift_unknownObjectRelease();
    v19 = v18 ^ 1;
  }

  else
  {
    v19 = 1;
  }

  *a4 = v14;
  *(a4 + 8) = a5;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
  *(a4 + 33) = v19 & 1;
}

unint64_t sub_1C119A85C()
{
  result = qword_1EDE7BE18;
  if (!qword_1EDE7BE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE963C0, &qword_1C12BF620);
    sub_1C119A8E8();
    sub_1C0FF9130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE18);
  }

  return result;
}

unint64_t sub_1C119A8E8()
{
  result = qword_1EDE7B7E0;
  if (!qword_1EDE7B7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE963C8, &qword_1C12BF628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B7E0);
  }

  return result;
}

uint64_t sub_1C119A97C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906A0, &qword_1C12A3E60);
  sub_1C1136440();
  v3 = sub_1C1265D70();
  v5 = v4;

  MEMORY[0x1C68EF850](v3, v5);

  MEMORY[0x1C68EF850](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1C119AA3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE83508 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0, &qword_1C12A8810);
  v3 = __swift_project_value_buffer(v2, qword_1EDE82FE0);

  return sub_1C119ADB4(v3, a1);
}

void *sub_1C119AAC0()
{
  type metadata accessor for TracingEnablementChecker();
  swift_allocObject();
  result = sub_1C119AE9C();
  off_1EDE83420 = result;
  return result;
}

void sub_1C119AB00()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C1265E70();
  v2 = [v0 BOOLForKey_];

  byte_1EDE834F8 = v2;
}

uint64_t sub_1C119AB90()
{
  v0 = sub_1C1262720();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0, &qword_1C12A8810);
  __swift_allocate_value_buffer(v4, qword_1EDE82FE0);
  v5 = __swift_project_value_buffer(v4, qword_1EDE82FE0);
  if (qword_1EDE834F0 != -1)
  {
    swift_once();
  }

  if (byte_1EDE834F8)
  {
    goto LABEL_7;
  }

  if (qword_1EDE83418 != -1)
  {
    swift_once();
  }

  if (*(off_1EDE83420 + 16) == 1)
  {
LABEL_7:
    if (qword_1EBE8FD20 != -1)
    {
      swift_once();
    }

    v6 = __swift_project_value_buffer(v0, qword_1EBE963D0);
    (*(v1 + 16))(v3, v6, v0);
    sub_1C1262660();
    v7 = sub_1C1262680();
    return __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  }

  else
  {
    v9 = sub_1C1262680();

    return __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  }
}

uint64_t sub_1C119ADB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0, &qword_1C12A8810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C119AE24()
{
  v0 = sub_1C1262720();
  __swift_allocate_value_buffer(v0, qword_1EBE963D0);
  __swift_project_value_buffer(v0, qword_1EBE963D0);
  return sub_1C1262700();
}

uint64_t sub_1C119AE9C()
{
  v1 = v0;
  *(v0 + 16) = 0;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  sub_1C0FDAFC4();
  v3 = sub_1C12664C0();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  v8[4] = sub_1C119B178;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1C119B08C;
  v8[3] = &block_descriptor_15;
  v6 = _Block_copy(v8);

  swift_beginAccess();
  notify_register_dispatch("com.apple.swiftuitrace.state", (v2 + 16), v3, v6);
  swift_endAccess();
  _Block_release(v6);

  sub_1C119B0E0(*(v2 + 16));

  return v1;
}

double sub_1C119B018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    sub_1C119B0E0(*(a3 + 16));
  }

  return result;
}

double sub_1C119B08C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_1C119B0E0(int a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  result = notify_get_state(a1, v3);
  if (v3[0] == 1)
  {
    *(v1 + 16) = 1;
  }

  return result;
}

uint64_t PhotosObservableSocialGroup.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosObservableSocialGroup.init(_:)(a1);
  return v2;
}

uint64_t PhotosObservableSocialGroup.init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  sub_1C1261F60();
  OUTLINED_FUNCTION_2_15();
  sub_1C10342F0(a1, v4, v1 + *(v3 + 112));
  return v1;
}

uint64_t PhotosObservableSocialGroup.item.setter(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_20();
  v5 = v4;
  swift_beginAccess();
  v13 = *(v3 + 80);
  v6 = v13;
  v14 = *(v5 + 88);
  OUTLINED_FUNCTION_20();
  v15 = *(v7 + 104);
  KeyPath = swift_getKeyPath();
  v11 = v1;
  v12 = a1;
  sub_1C119B6BC(KeyPath, sub_1C119B6A0, &v10, MEMORY[0x1E69E7CA8] + 8);

  return (*(*(v6 - 8) + 8))(a1, v6);
}