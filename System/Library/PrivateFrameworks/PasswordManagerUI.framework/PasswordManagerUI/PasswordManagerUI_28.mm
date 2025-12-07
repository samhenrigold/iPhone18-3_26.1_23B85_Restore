unint64_t sub_21CA37BDC()
{
  result = qword_27CDF5A00;
  if (!qword_27CDF5A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5A08, &qword_21CBBF090);
    sub_21C6EADEC(&qword_27CDF5A10, &qword_27CDF5A18, &unk_21CBBF098, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5A00);
  }

  return result;
}

uint64_t sub_21CA37CA4()
{
  v1 = *(type metadata accessor for PMLargeTypeView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CA36288(v2);
}

void sub_21CA37D04(int64_t a1, int64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = 0;
  v7 = 32;
  v8 = a1;
  while (1)
  {
    v9 = v8 <= a2;
    if (a3 > 0)
    {
      v9 = v8 >= a2;
    }

    if (v9)
    {
      break;
    }

    v10 = __OFADD__(v8, a3);
    v8 += a3;
    if (v10)
    {
      v8 = (v8 >> 63) ^ 0x8000000000000000;
    }

    v7 += 8;
    v10 = __OFADD__(v6++, 1);
    if (v10)
    {
      __break(1u);
      break;
    }
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF76F0, &qword_21CBA0DA0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    v14 = v13 >> 3;
    v11[2] = v6;
    v11[3] = 2 * v14;
    v15 = v11 + 4;
    v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v6;
    while (1)
    {
      v17 = v5 <= a2;
      if (a3 > 0)
      {
        v17 = v5 >= a2;
      }

      if (v17)
      {
        break;
      }

      v18 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v18 = ((v5 + a3) >> 63) ^ 0x8000000000000000;
      }

      *v15++ = v5;
      v5 = v18;
      if (!--v6)
      {
        v5 = v18;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v11 = MEMORY[0x277D84F90];
  v19 = *(MEMORY[0x277D84F90] + 24);

  v15 = v11 + 4;
  v16 = v19 >> 1;
LABEL_22:
  v20 = v5 <= a2;
  if (a3 > 0)
  {
    v20 = v5 >= a2;
  }

  if (!v20)
  {
    v21 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v22 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v22 = v21;
        if (!v16)
        {
          goto LABEL_31;
        }

        v22 = v21;
      }

      else if (!v16)
      {
LABEL_31:
        v23 = v11[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_53;
        }

        v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF76F0, &qword_21CBA0DA0);
        v26 = swift_allocObject();
        v27 = _swift_stdlib_malloc_size(v26);
        v28 = v27 - 32;
        if (v27 < 32)
        {
          v28 = v27 - 25;
        }

        v29 = v28 >> 3;
        v26[2] = v25;
        v26[3] = 2 * (v28 >> 3);
        v30 = (v26 + 4);
        v31 = v11[3] >> 1;
        if (v11[2])
        {
          v32 = v11 + 4;
          if (v26 != v11 || v30 >= v32 + 8 * v31)
          {
            memmove(v26 + 4, v32, 8 * v31);
          }

          v11[2] = 0;
        }

        v15 = (v30 + 8 * v31);
        v16 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v11 = v26;
        v21 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      v10 = __OFSUB__(v16--, 1);
      if (v10)
      {
        goto LABEL_52;
      }

      *v15++ = v5;
      v33 = v22 <= a2;
      if (a3 > 0)
      {
        v33 = v22 >= a2;
      }

      v5 = v22;
    }

    while (!v33);
  }

  v34 = v11[3];
  if (v34 >= 2)
  {
    v35 = v34 >> 1;
    v10 = __OFSUB__(v35, v16);
    v36 = v35 - v16;
    if (v10)
    {
LABEL_54:
      __break(1u);
      return;
    }

    v11[2] = v36;
  }
}

unint64_t sub_21CA3800C()
{
  result = qword_27CDF5A80;
  if (!qword_27CDF5A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5A40, &qword_21CBBF0C8);
    sub_21C6EADEC(&qword_27CDF5A88, &qword_27CDF5A90, &qword_21CBBF118, MEMORY[0x277CDD828]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5A80);
  }

  return result;
}

unint64_t sub_21CA380BC()
{
  result = qword_27CDF5A98;
  if (!qword_27CDF5A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5A50, &qword_21CBBF0D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5A40, &qword_21CBBF0C8);
    sub_21CA3800C();
    swift_getOpaqueTypeConformance2();
    sub_21CA38E78(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5A98);
  }

  return result;
}

unint64_t sub_21CA381BC()
{
  result = qword_27CDF5AB0;
  if (!qword_27CDF5AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5AA8, &qword_21CBBF120);
    sub_21CA38240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5AB0);
  }

  return result;
}

unint64_t sub_21CA38240()
{
  result = qword_27CDF5AB8;
  if (!qword_27CDF5AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5AC0, &qword_21CBBF128);
    sub_21CA382CC();
    sub_21CA388B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5AB8);
  }

  return result;
}

unint64_t sub_21CA382CC()
{
  result = qword_27CDF5AC8;
  if (!qword_27CDF5AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5AD0, &qword_21CBBF130);
    sub_21CA38358();
    sub_21CA38800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5AC8);
  }

  return result;
}

unint64_t sub_21CA38358()
{
  result = qword_27CDF5AD8;
  if (!qword_27CDF5AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5AE0, &qword_21CBBF138);
    sub_21CA38410();
    sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5AD8);
  }

  return result;
}

unint64_t sub_21CA38410()
{
  result = qword_27CDF5AE8;
  if (!qword_27CDF5AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5AF0, &qword_21CBBF140);
    sub_21CA384C8();
    sub_21C6EADEC(&qword_27CDEB938, &qword_27CDEB920, &qword_21CBCC940, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5AE8);
  }

  return result;
}

unint64_t sub_21CA384C8()
{
  result = qword_27CDF5AF8;
  if (!qword_27CDF5AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5B00, &qword_21CBBF148);
    sub_21CA38580();
    sub_21C6EADEC(&qword_27CDEB930, &qword_27CDEB918, &unk_21CBA26D0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5AF8);
  }

  return result;
}

unint64_t sub_21CA38580()
{
  result = qword_27CDF5B08;
  if (!qword_27CDF5B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5B10, &qword_21CBBF150);
    sub_21CA3860C();
    sub_21C99CCA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5B08);
  }

  return result;
}

unint64_t sub_21CA3860C()
{
  result = qword_27CDF5B18;
  if (!qword_27CDF5B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5B20, &qword_21CBBF158);
    sub_21CA386C4();
    sub_21C6EADEC(&qword_27CDF5B58, &qword_27CDF5B60, &unk_21CBBF178, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5B18);
  }

  return result;
}

unint64_t sub_21CA386C4()
{
  result = qword_27CDF5B28;
  if (!qword_27CDF5B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5B30, &qword_21CBBF160);
    sub_21CA3877C();
    sub_21C6EADEC(&qword_27CDF5B48, &qword_27CDF5B50, &qword_21CBBF170, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5B28);
  }

  return result;
}

unint64_t sub_21CA3877C()
{
  result = qword_27CDF5B38;
  if (!qword_27CDF5B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5B40, &qword_21CBBF168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5B38);
  }

  return result;
}

unint64_t sub_21CA38800()
{
  result = qword_27CDF5B68;
  if (!qword_27CDF5B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5B70, &qword_21CBBF188);
    sub_21CA38358();
    sub_21C6EADEC(&qword_27CDF5B78, &qword_27CDF5B80, &qword_21CBBF190, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5B68);
  }

  return result;
}

unint64_t sub_21CA388B8()
{
  result = qword_27CDF5B88;
  if (!qword_27CDF5B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5B90, &qword_21CBBF198);
    sub_21CA38800();
    sub_21CA38944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5B88);
  }

  return result;
}

unint64_t sub_21CA38944()
{
  result = qword_27CDF5B98;
  if (!qword_27CDF5B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5BA0, &unk_21CBBF1A0);
    sub_21CA38358();
    sub_21C6EADEC(&qword_27CDEBAB8, &qword_27CDEBAC0, &qword_21CBA2B60, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5B98);
  }

  return result;
}

void *sub_21CA389FC()
{

  result = sub_21CB85714();
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    while (!__OFADD__(v3, 1))
    {
      if (!v4)
      {
        v6 = v2[3];
        if (((v6 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v7 = v1;
        v8 = result;
        v9 = v6 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5BD0, &unk_21CBBF220);
        v11 = swift_allocObject();
        v12 = (_swift_stdlib_malloc_size(v11) - 32) / 24;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = (v11 + 4);
        v14 = v2[3] >> 1;
        if (v2[2])
        {
          if (v11 != v2 || v13 >= &v2[3 * v14 + 4])
          {
            memmove(v11 + 4, v2 + 4, 24 * v14);
          }

          v2[2] = 0;
        }

        v5 = (v13 + 24 * v14);
        v4 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;

        v2 = v11;
        result = v8;
        v1 = v7;
      }

      v16 = __OFSUB__(v4--, 1);
      if (v16)
      {
        goto LABEL_27;
      }

      *v5 = v3;
      v5[1] = result;
      v5[2] = v1;
      v5 += 3;
      result = sub_21CB85714();
      ++v3;
      if (!v1)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v4 = 0;
LABEL_22:

  v17 = v2[3];
  if (v17 < 2)
  {
    return v2;
  }

  v18 = v17 >> 1;
  v16 = __OFSUB__(v18, v4);
  v19 = v18 - v4;
  if (!v16)
  {
    v2[2] = v19;
    return v2;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_21CA38BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for PMLargeTypeView(0) - 8);
  v10 = *(v4 + ((*(v9 + 64) + ((*(v9 + 80) + 16) & ~*(v9 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21CA37014(a1, a2, a3, v10, a4);
}

unint64_t sub_21CA38CBC()
{
  result = qword_27CDF5BF0;
  if (!qword_27CDF5BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5BE8, &unk_21CBBF240);
    sub_21CA38E78(&qword_27CDEC618, type metadata accessor for PMAccountIcon, &unk_21CBA2ABC);
    sub_21CA38E78(&qword_27CDEDDD0, type metadata accessor for PMWiFiIcon, &unk_21CBBA264);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5BF0);
  }

  return result;
}

uint64_t sub_21CA38DA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA38E10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA38E78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CA38EC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CA38F78()
{
  result = qword_27CDF5C18;
  if (!qword_27CDF5C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5C18);
  }

  return result;
}

unint64_t sub_21CA38FD0()
{
  result = qword_27CDF5C20;
  if (!qword_27CDF5C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5C20);
  }

  return result;
}

unint64_t sub_21CA39028()
{
  result = qword_27CDF5C28;
  if (!qword_27CDF5C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5C28);
  }

  return result;
}

unint64_t sub_21CA3907C()
{
  result = qword_27CDF5C30;
  if (!qword_27CDF5C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5C30);
  }

  return result;
}

unint64_t sub_21CA390E4()
{
  result = qword_27CDF5C38;
  if (!qword_27CDF5C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5C38);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PMListSubtitleCellLabeledContentStyle(uint64_t result, int a2, int a3)
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_21CA39198@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_21CB83B84();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = sub_21CB83B94();
  v27 = *(v8 - 8);
  v9 = v27;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_21CB83BA4();
  sub_21CB83BB4();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5C70, &qword_21CBBF570) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_21CA39428@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  *a2 = sub_21CB832F4();
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5C58, &qword_21CBBF560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5C60, &qword_21CBBF568);
  sub_21C6EADEC(&qword_27CDF5C68, &qword_27CDF5C60, &qword_21CBBF568, MEMORY[0x277CE14C0]);
  return sub_21CB81FC4();
}

__n128 sub_21CA39538@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C707D40(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  v8 = sub_21CB82B54();
  swift_getKeyPath(byte_21CBBF610);
  v9 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5C88, &qword_21CBBF638) + 36);
  sub_21CB82B74();

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier(0);
  v12 = (v9 + *(v11 + 20));
  *v12 = sub_21CA39BFC;
  v12[1] = v10;
  v13 = v9 + *(v11 + 24);
  *v13 = sub_21CA20F74;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5C90, &qword_21CBBF640);
  (*(*(v14 - 8) + 16))(a4, a1, v14);
  v15 = a2;
  v16 = sub_21CB82B54();
  swift_getKeyPath(aP_80);
  sub_21CB82B74();

  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAE20, &unk_21CBBF670);
  sub_21CB84D44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAE28, &unk_21CBA0620);
  sub_21CB84D44();
  v19 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5C98, &qword_21CBBF680) + 36);
  *v19 = v22;
  *(v19 + 16) = v23;
  *(v19 + 24) = sub_21CA39C04;
  *(v19 + 32) = v17;
  result = v21;
  *(v19 + 56) = v21;
  *(v19 + 40) = v21;
  return result;
}

uint64_t sub_21CA39808(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for PMAccount(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C725C54(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21C7B7380(v8);
  }

  sub_21C7D4AC0(v8, v12);
  sub_21CA39970(v12, a2, a3);
  return sub_21C7D4A64(v12);
}

uint64_t sub_21CA39970(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    swift_getKeyPath(a8_30, a2, a3);
    swift_getKeyPath(byte_21CBBF6B0);
    v5 = a2;
    sub_21CB81DC4();
    sub_21CACB1D0();
    swift_getKeyPath(byte_21CBBF6D0);
    swift_getKeyPath(byte_21CBBF6F8);

    sub_21CB81DC4();
    sub_21C8185F8();
    swift_getKeyPath(byte_21CBBF718);
    swift_getKeyPath(byte_21CBBF740);
    sub_21CB81DC4();
    sub_21CACB1D0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA0690;
    v7 = a1[1];
    *(inited + 32) = *a1;
    *(inited + 40) = v7;
    swift_bridgeObjectRetain_n();
    sub_21C8D7470(inited);
    swift_setDeallocating();
    sub_21C81A534(inited + 32);
    swift_getKeyPath(byte_21CBBF718);
    swift_getKeyPath(byte_21CBBF740);
    sub_21CB81DC4();

    swift_getKeyPath(byte_21CBBF768);
    swift_getKeyPath(aH_89);
    return sub_21CB81DC4();
  }

  else
  {
    type metadata accessor for PMPasswordManagerState(0);
    sub_21C707D40(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

unint64_t sub_21CA39C0C()
{
  result = qword_27CDF5CA0;
  if (!qword_27CDF5CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5C98, &qword_21CBBF680);
    sub_21CA39C98();
    sub_21C725BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5CA0);
  }

  return result;
}

unint64_t sub_21CA39C98()
{
  result = qword_27CDF5CA8;
  if (!qword_27CDF5CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5C88, &qword_21CBBF638);
    sub_21CA39D54();
    sub_21C707D40(&qword_27CDF5CB8, type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier, &unk_21CBBDC78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5CA8);
  }

  return result;
}

unint64_t sub_21CA39D54()
{
  result = qword_27CDF5CB0;
  if (!qword_27CDF5CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5C90, &qword_21CBBF640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5CB0);
  }

  return result;
}

double sub_21CA39DB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CB85B74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = *(v2 + 24);
  sub_21CB85B64();
  v12 = sub_21CB85584();

  v21 = [v11 objectForKey_];

  v13 = v21;
  if (v21)
  {
  }

  else
  {
    v15 = sub_21CB858E4();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    sub_21CB858B4();

    v16 = sub_21CB858A4();
    v17 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 2) = v16;
    *(v18 + 3) = v19;
    *(v18 + 4) = v2;
    (*(v5 + 32))(&v18[v17], v7, v4);
    sub_21C98B608(0, 0, v10, &unk_21CBBF800, v18);
  }

  return result;
}

uint64_t sub_21CA3A040(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 184) = a8;
  *(v9 + 192) = a9;
  *(v9 + 168) = a1;
  *(v9 + 176) = a2;
  *(v9 + 152) = a6;
  *(v9 + 160) = a7;
  v10 = sub_21CB85B74();
  *(v9 + 200) = v10;
  *(v9 + 208) = *(v10 - 8);
  *(v9 + 216) = swift_task_alloc();
  sub_21CB858B4();
  *(v9 + 224) = sub_21CB858A4();
  v12 = sub_21CB85874();
  *(v9 + 232) = v12;
  *(v9 + 240) = v11;

  return MEMORY[0x2822009F8](sub_21CA3A13C, v12, v11);
}

uint64_t sub_21CA3A13C(uint64_t a1)
{
  v3 = v1[21];
  v2 = v1[22];
  v4 = *(*(v1 + 19) + 16);
  sub_21CB85B64();
  v5 = sub_21CB85584();
  *(v1 + 31) = v5;

  *(v1 + 2) = v1;
  *(v1 + 7) = v1 + 18;
  *(v1 + 3) = sub_21CA3A298;
  v6 = swift_continuation_init();
  *(v1 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5CC0, &unk_21CBBF7E8);
  *(v1 + 10) = MEMORY[0x277D85DD0];
  *(v1 + 11) = 1107296256;
  *(v1 + 12) = sub_21C9635DC;
  *(v1 + 13) = &block_descriptor_30;
  *(v1 + 14) = v6;
  [v4 fetchAppIconForBundleID:v5 iconSize:v1 + 10 completion:{v3, v2}];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_21CA3A298()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_21CA3A558;
  }

  else
  {
    v5 = sub_21CA3A3C8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21CA3A3C8()
{
  v1 = v0[31];

  v2 = v0[18];

  if (v2)
  {
    v3 = [v2 data];
    if (v3)
    {
      v4 = v3;
      v5 = sub_21CB80C84();
      v7 = v6;

      v8 = objc_allocWithZone(MEMORY[0x277D755B8]);
      sub_21C7A35D0(v5, v7);
      v9 = sub_21CB80C64();
      v10 = [v8 initWithData_];

      sub_21C7A34C0(v5, v7);
      if (v10)
      {
        v11 = v0[23];
        v12 = *(v0[19] + 24);
        sub_21CB85B64();
        v13 = sub_21CB85584();

        [v12 setObject:v10 forKey:v13];

        v11(v10);
      }

      sub_21C7A34C0(v5, v7);
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_21CA3A558()
{
  v29 = v0;
  v1 = v0[31];

  swift_willThrow();

  if (qword_27CDEA478 != -1)
  {
    swift_once();
  }

  v2 = v0[32];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v6 = v0[20];
  v7 = sub_21CB81C84();
  __swift_project_value_buffer(v7, qword_27CE186F8);
  (*(v4 + 16))(v3, v6, v5);
  v8 = v2;
  v9 = sub_21CB81C64();
  v10 = sub_21CB85AF4();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[32];
  v13 = v0[26];
  v14 = v0[27];
  v15 = v0[25];
  if (v11)
  {
    log = v9;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v16 = 136315394;
    v18 = sub_21CB85B64();
    v20 = v19;
    (*(v13 + 8))(v14, v15);
    v21 = sub_21C98E004(v18, v20, &v28);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    v22 = v12;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v17 = v23;
    _os_log_impl(&dword_21C6E5000, log, v10, "App icon fetching failed for clientID: %s with error: %@", v16, 0x16u);
    sub_21C91C9A4(v17);
    MEMORY[0x21CF16D90](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x21CF16D90](v26, -1, -1);
    MEMORY[0x21CF16D90](v16, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v14, v15);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_21CA3A7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[18] = a1;
  sub_21CB858B4();
  v5[21] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v5[22] = v7;
  v5[23] = v6;

  return MEMORY[0x2822009F8](sub_21CA3A884, v7, v6);
}

uint64_t sub_21CA3A884(uint64_t a1)
{
  v2 = *(v1[19] + 16);
  sub_21CB85B64();
  v3 = sub_21CB85584();
  v1[24] = v3;

  v1[2] = v1;
  v1[3] = sub_21CA3A9C4;
  v4 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4468, &qword_21CBBA910);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CAB18DC;
  v1[13] = &block_descriptor_5_0;
  v1[14] = v4;
  [v2 cancelAppIconRequestBundleID:v3 completion:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_21CA3A9C4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_21CA3AB70;
  }

  else
  {
    v5 = sub_21CA3AAF4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21CA3AAF4()
{
  v1 = *(v0 + 192);

  **(v0 + 144) = *(v0 + 200) != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CA3AB70()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  swift_willThrow();

  **(v0 + 144) = *(v0 + 200) != 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21CA3AC04()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21CA3AC68(uint64_t a1)
{
  v4 = *(sub_21CB85B74() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C702EFC;

  return sub_21CA3A7E8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_21CA3AD68@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v131 = a4;
  v7 = sub_21CB83294();
  v114 = *(v7 - 8);
  v115 = v7;
  MEMORY[0x28223BE20](v7);
  v113 = v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D08, &qword_21CBBFA00);
  MEMORY[0x28223BE20](v111);
  v112 = v104 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D10, &qword_21CBBFA08);
  v121 = *(v10 - 8);
  v122 = v10;
  MEMORY[0x28223BE20](v10);
  v118 = v104 - v11;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D18, &qword_21CBBFA10);
  MEMORY[0x28223BE20](v117);
  v120 = v104 - v12;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D20, &qword_21CBBFA18);
  MEMORY[0x28223BE20](v119);
  v124 = v104 - v13;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D28, &qword_21CBBFA20);
  MEMORY[0x28223BE20](v123);
  v125 = v104 - v14;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D30, &qword_21CBBFA28);
  MEMORY[0x28223BE20](v127);
  v126 = v104 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D38, &qword_21CBBFA30);
  v129 = *(v16 - 8);
  v130 = v16;
  MEMORY[0x28223BE20](v16);
  v141 = v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v139 = v104 - v19;
  v20 = sub_21CB81024();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D40, &qword_21CBBFA38);
  v140 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v138 = v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v137 = v104 - v26;
  v108 = a1;
  v109 = a2;
  v110 = a3;
  sub_21C74D668(a1, a2, a3, v104 - v26);
  sub_21CB81014();
  v27 = sub_21CB81004();
  v29 = v28;
  v30 = *(v21 + 8);
  v105 = v23;
  v106 = v21 + 8;
  v107 = v20;
  v104[0] = v30;
  v30(v23, v20);
  *&v162 = v27;
  *(&v162 + 1) = v29;
  v104[1] = sub_21C71F3FC();
  v31 = sub_21CB84054();
  v33 = v32;
  LOBYTE(v23) = v34;
  sub_21CB83DB4();
  v35 = sub_21CB84024();
  v37 = v36;
  LOBYTE(a1) = v38;

  sub_21C74A72C(v31, v33, v23 & 1);

  v116 = sub_21CB84014();
  v135 = v39;
  v136 = v40;
  v42 = v41;
  sub_21C74A72C(v35, v37, a1 & 1);

  LOBYTE(v31) = sub_21CB83CD4();
  v43 = sub_21CB83D24();
  sub_21CB83D24();
  if (sub_21CB83D24() != v31)
  {
    v43 = sub_21CB83D24();
  }

  v134 = v43;
  v132 = v42 & 1;
  v160 = v42 & 1;
  v157 = 1;
  KeyPath = swift_getKeyPath(byte_21CBBFA40);
  v44 = v105;
  sub_21CB81014();
  v45 = sub_21CB81004();
  v47 = v46;
  (v104[0])(v44, v107);
  *&v162 = v45;
  *(&v162 + 1) = v47;
  v48 = swift_allocObject();
  v49 = v108 & 1;
  *(v48 + 16) = v108 & 1;
  *(v48 + 24) = v109;
  *(v48 + 32) = v110;

  v50 = v112;
  sub_21CB84DE4();
  v51 = (v50 + *(v111 + 36));
  v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13A0, &qword_21CBB1100) + 28);
  v53 = *MEMORY[0x277CDF420];
  v54 = sub_21CB82064();
  (*(*(v54 - 8) + 104))(&v51[v52], v53, v54);
  *v51 = swift_getKeyPath(byte_21CBBFA78);
  v55 = v113;
  sub_21CB83284();
  sub_21C74E8E8();
  sub_21C74E3A0(&qword_27CDF5D50, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v56 = v118;
  v57 = v115;
  sub_21CB84124();
  (*(v114 + 8))(v55, v57);
  sub_21C6EA794(v50, &qword_27CDF5D08, &qword_21CBBFA00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF49D0, &qword_21CBBBFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA15B0;
  LOBYTE(v50) = sub_21CB83CD4();
  *(inited + 32) = v50;
  v59 = sub_21CB83D04();
  *(inited + 33) = v59;
  v60 = sub_21CB83D24();
  sub_21CB83D24();
  if (sub_21CB83D24() != v50)
  {
    v60 = sub_21CB83D24();
  }

  sub_21CB83D24();
  if (sub_21CB83D24() != v59)
  {
    v60 = sub_21CB83D24();
  }

  v61 = v120;
  (*(v121 + 32))(v120, v56, v122);
  v62 = &v61[*(v117 + 36)];
  *v62 = v60;
  *(v62 + 8) = 0u;
  *(v62 + 24) = 0u;
  v62[40] = 1;
  v63 = sub_21CB83CF4();
  sub_21CB81F24();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = v61;
  v73 = v124;
  sub_21C716934(v72, v124, &qword_27CDF5D18, &qword_21CBBFA10);
  v74 = v73 + *(v119 + 36);
  *v74 = v63;
  *(v74 + 8) = v65;
  *(v74 + 16) = v67;
  *(v74 + 24) = v69;
  *(v74 + 32) = v71;
  *(v74 + 40) = 0;
  sub_21CB85204();
  sub_21CB82AC4();
  v75 = v125;
  sub_21C716934(v73, v125, &qword_27CDF5D20, &qword_21CBBFA18);
  v76 = (v75 + *(v123 + 36));
  v77 = v167;
  v76[4] = v166;
  v76[5] = v77;
  v76[6] = v168;
  v78 = v163;
  *v76 = v162;
  v76[1] = v78;
  v79 = v165;
  v76[2] = v164;
  v76[3] = v79;
  v80 = swift_getKeyPath(byte_21CBBFAA8);
  v81 = swift_allocObject();
  *(v81 + 16) = v49;
  v82 = v126;
  sub_21C716934(v75, v126, &qword_27CDF5D28, &qword_21CBBFA20);
  v83 = (v82 + *(v127 + 36));
  *v83 = v80;
  v83[1] = sub_21C735744;
  v83[2] = v81;
  sub_21C74E9CC();
  v84 = v139;
  sub_21CB846B4();
  sub_21C6EA794(v82, &qword_27CDF5D30, &qword_21CBBFA28);
  v85 = *(v140 + 16);
  v86 = v138;
  v87 = v128;
  v85(v138, v137, v128);
  v88 = v129;
  v89 = v130;
  v127 = *(v129 + 16);
  (v127)(v141, v84, v130);
  v90 = v131;
  *v131 = 0;
  *(v90 + 8) = 1;
  v90[2] = 0;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D78, &qword_21CBBFAE0);
  v92 = v86;
  v93 = v87;
  v85(v90 + v91[12], v92, v87);
  v94 = (v90 + v91[16]);
  v95 = v116;
  *&v142 = v116;
  *(&v142 + 1) = v135;
  LOBYTE(v143) = v132;
  *(&v143 + 1) = *v159;
  DWORD1(v143) = *&v159[3];
  *(&v143 + 1) = v136;
  LOBYTE(v144[0]) = v134;
  *(v144 + 1) = *v158;
  DWORD1(v144[0]) = *&v158[3];
  *(&v144[1] + 8) = 0u;
  *(v144 + 8) = 0u;
  BYTE8(v144[2]) = 1;
  HIDWORD(v144[2]) = *&v161[3];
  *(&v144[2] + 9) = *v161;
  *&v144[3] = KeyPath;
  BYTE8(v144[3]) = 1;
  v96 = v143;
  *v94 = v142;
  v94[1] = v96;
  v97 = v144[0];
  v98 = v144[1];
  v99 = v144[2];
  *(v94 + 73) = *(&v144[2] + 9);
  v94[3] = v98;
  v94[4] = v99;
  v94[2] = v97;
  v100 = v141;
  (v127)(v90 + v91[20], v141, v89);
  sub_21C74EC28(&v142, v145);
  v101 = *(v88 + 8);
  v101(v139, v89);
  v102 = *(v140 + 8);
  v102(v137, v93);
  v101(v100, v89);
  v145[0] = v95;
  v145[1] = v135;
  v146 = v132;
  *v147 = *v159;
  *&v147[3] = *&v159[3];
  v148 = v136;
  v149 = v134;
  *v150 = *v158;
  *&v150[3] = *&v158[3];
  v151 = 0u;
  v152 = 0u;
  v153 = 1;
  *v154 = *v161;
  *&v154[3] = *&v161[3];
  v155 = KeyPath;
  v156 = 1;
  sub_21C6EA794(v145, &qword_27CDF5D80, &unk_21CBBFAE8);
  return (v102)(v138, v93);
}

unint64_t sub_21CA3BAF4()
{
  result = qword_27CDF5D60;
  if (!qword_27CDF5D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5D28, &qword_21CBBFA20);
    sub_21C74EB9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5D60);
  }

  return result;
}

unint64_t sub_21CA3BB80()
{
  result = qword_27CDF5DF0;
  if (!qword_27CDF5DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5DE8, &qword_21CBBFBC0);
    sub_21C74E2B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5DF0);
  }

  return result;
}

unint64_t sub_21CA3BC0C()
{
  result = qword_27CDF5E18;
  if (!qword_27CDF5E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5D90, &qword_21CBBFB00);
    sub_21C74E3E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5E18);
  }

  return result;
}

unint64_t sub_21CA3BC98()
{
  result = qword_27CDF5E78;
  if (!qword_27CDF5E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5D00, &qword_21CBBF9F8);
    sub_21CA3BD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5E78);
  }

  return result;
}

unint64_t sub_21CA3BD24()
{
  result = qword_27CDF5E80;
  if (!qword_27CDF5E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5CE0, &qword_21CBBF9D8);
    sub_21CA3BDDC();
    sub_21C6EADEC(&qword_27CDF5B48, &qword_27CDF5B50, &qword_21CBBF170, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5E80);
  }

  return result;
}

unint64_t sub_21CA3BDDC()
{
  result = qword_27CDF5E88;
  if (!qword_27CDF5E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5CD8, &qword_21CBBF9D0);
    sub_21C6EADEC(&qword_27CDF5E90, &qword_27CDF5CD0, &qword_21CBBF9C8, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5E88);
  }

  return result;
}

uint64_t sub_21CA3BE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5EC0, &qword_21CBBFD10);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5EA8, &qword_21CBBFD08);
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  sub_21CA3C288(a1, v9);
  if (*(*(a1 + 40) + 24) == 1 && (swift_getKeyPath(byte_21CBBFD30), swift_getKeyPath(byte_21CBBFD58), sub_21CB81DB4(), , , v28 != 1))
  {
    v15 = 1;
  }

  else
  {
    v13 = [objc_opt_self() sharedFeatureManager];
    v14 = [v13 isUserAllowedToTogglePasswordAutoFillEnabledState];

    v15 = v14 ^ 1;
  }

  KeyPath = swift_getKeyPath(aP_81);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  sub_21C716934(v9, v12, &qword_27CDF5EC0, &qword_21CBBFD10);
  v18 = &v12[*(v10 + 36)];
  *v18 = KeyPath;
  v18[1] = sub_21C735744;
  v18[2] = v17;
  sub_21CB81014();
  v19 = sub_21CB81004();
  v21 = v20;
  (*(v4 + 8))(v6, v3);
  v28 = v19;
  v29 = v21;
  sub_21C71F3FC();
  v22 = sub_21CB84054();
  v24 = v23;
  LOBYTE(v21) = v25;
  v30 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  sub_21CA403D4();
  sub_21CB84744();

  sub_21C74A72C(v22, v24, v21 & 1);

  return sub_21C6EA794(v12, &qword_27CDF5EA8, &qword_21CBBFD08);
}

uint64_t sub_21CA3C288@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5EE0, &qword_21CBBFDB0);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5EE8, &qword_21CBBFDB8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5EF0, &qword_21CBBFDC0);
  MEMORY[0x28223BE20](v12 - 8);
  v33 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  if ([objc_opt_self() isPasswordsAppInstalled])
  {
    sub_21CA3C7A4(v11);
    sub_21C716934(v11, v16, &qword_27CDF5EE8, &qword_21CBBFDB8);
    (*(v9 + 56))(v16, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v16, 1, 1, v8);
  }

  swift_getKeyPath(a0_46);
  swift_getKeyPath(byte_21CBBFDF0);
  sub_21CB81DB4();

  v38[10] = v38[0];
  v17 = swift_allocObject();
  v18 = a1[3];
  v17[3] = a1[2];
  v17[4] = v18;
  v17[5] = a1[4];
  v19 = a1[1];
  v17[1] = *a1;
  v17[2] = v19;
  sub_21CA40544(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF21F0, &qword_21CBBFE10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5EF8, &qword_21CBBFE18);
  sub_21C6EADEC(&qword_27CDF5F00, &qword_27CDF21F0, &qword_21CBBFE10, MEMORY[0x277D83980]);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5F08, &qword_21CBBFE20);
  v21 = sub_21CB83024();
  v22 = sub_21C6EADEC(&qword_27CDF5F10, &qword_27CDF5F08, &qword_21CBBFE20, MEMORY[0x277CDF068]);
  v23 = sub_21CA405A4(&qword_27CDF5F18, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
  v38[0] = v20;
  v38[1] = v21;
  v38[2] = v22;
  v38[3] = v23;
  swift_getOpaqueTypeConformance2();
  sub_21CA405EC();
  sub_21CB84FF4();
  v24 = v33;
  sub_21C7794C4(v16, v33);
  v26 = v36;
  v25 = v37;
  v27 = *(v36 + 16);
  v28 = v34;
  v27(v34, v7, v37);
  v29 = v35;
  sub_21C7794C4(v24, v35);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F28, &qword_21CBBFE28);
  v27((v29 + *(v30 + 48)), v28, v25);
  v31 = *(v26 + 8);
  v31(v7, v25);
  sub_21C6EA794(v16, &qword_27CDF5EF0, &qword_21CBBFDC0);
  v31(v28, v25);
  return sub_21C6EA794(v24, &qword_27CDF5EF0, &qword_21CBBFDC0);
}

uint64_t sub_21CA3C7A4@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = sub_21CB83024();
  v3 = *(v2 - 8);
  v35 = v2;
  v36 = v3;
  MEMORY[0x28223BE20](v2);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F30, &qword_21CBBFE30);
  v6 = *(v5 - 8);
  v33 = v5;
  v34 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F38, &qword_21CBBFE38);
  MEMORY[0x28223BE20](v37);
  v10 = &v31 - v9;
  sub_21CB858B4();
  v11 = sub_21CB858A4();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  sub_21CA40544(v1, v40);
  v14 = sub_21CB858A4();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v16 = v1[3];
  *(v15 + 64) = v1[2];
  *(v15 + 80) = v16;
  *(v15 + 96) = v1[4];
  v17 = v1[1];
  *(v15 + 32) = *v1;
  *(v15 + 48) = v17;
  sub_21CB84F64();
  v39 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F40, &qword_21CBBFE40);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5F48, &unk_21CBBFE48);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  v20 = sub_21CA4065C(&qword_27CDF5F50, &qword_27CDF5F48, &unk_21CBBFE48, sub_21CA4070C);
  v21 = sub_21C7E3710();
  v40[0] = v18;
  v40[1] = v19;
  v40[2] = v20;
  v40[3] = v21;
  swift_getOpaqueTypeConformance2();
  sub_21CB84EA4();
  v22 = v32;
  sub_21CB83014();
  sub_21C6EADEC(&qword_27CDF5F78, &qword_27CDF5F30, &qword_21CBBFE30, MEMORY[0x277CDF068]);
  sub_21CA405A4(&qword_27CDF5F18, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
  v23 = v33;
  v24 = v35;
  sub_21CB841B4();
  (*(v36 + 8))(v22, v24);
  (*(v34 + 8))(v8, v23);
  v25 = [objc_opt_self() sharedFeatureManager];
  v26 = [v25 isAutoFillFromKeychainRestricted];

  KeyPath = swift_getKeyPath(aP_81);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  v29 = &v10[*(v37 + 36)];
  *v29 = KeyPath;
  v29[1] = sub_21C87E800;
  v29[2] = v28;
  sub_21CA407C4();
  sub_21CB845C4();

  return sub_21C6EA794(v10, &qword_27CDF5F38, &qword_21CBBFE38);
}

uint64_t sub_21CA3CCA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  v5 = sub_21CB83024();
  v6 = *(v5 - 8);
  v34 = v5;
  v35 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F08, &qword_21CBBFE20);
  v10 = *(v9 - 8);
  v32 = v9;
  v33 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  sub_21CB858B4();
  sub_21CA40544(v2, v39);
  v13 = a1;
  v14 = sub_21CB858A4();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  v17 = v2[3];
  *(v15 + 64) = v2[2];
  *(v15 + 80) = v17;
  *(v15 + 96) = v2[4];
  v18 = v2[1];
  *(v15 + 32) = *v2;
  *(v15 + 48) = v18;
  *(v15 + 112) = v13;
  sub_21CA40544(v2, v39);
  v19 = v13;
  v20 = sub_21CB858A4();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v16;
  v22 = v3[3];
  *(v21 + 64) = v3[2];
  *(v21 + 80) = v22;
  *(v21 + 96) = v3[4];
  v23 = v3[1];
  *(v21 + 32) = *v3;
  *(v21 + 48) = v23;
  *(v21 + 112) = v19;
  sub_21CB84F64();
  v37 = v3;
  v38 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5FA8, &qword_21CBBFEE8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5FB0, &qword_21CBBFEF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  v26 = sub_21CA4065C(&qword_27CDF5FB8, &qword_27CDF5FB0, &qword_21CBBFEF0, sub_21CA40CA0);
  v27 = sub_21C7E3710();
  v39[0] = v24;
  v39[1] = v25;
  v39[2] = v26;
  v39[3] = v27;
  swift_getOpaqueTypeConformance2();
  sub_21CB84EA4();
  sub_21CB83014();
  sub_21C6EADEC(&qword_27CDF5F10, &qword_27CDF5F08, &qword_21CBBFE20, MEMORY[0x277CDF068]);
  sub_21CA405A4(&qword_27CDF5F18, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
  v28 = v32;
  v29 = v34;
  sub_21CB841B4();
  (*(v35 + 8))(v8, v29);
  return (*(v33 + 8))(v12, v28);
}

uint64_t sub_21CA3D090@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21CA3D1BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if ((*(*(a1 + 40) + 24) & 1) == 0)
  {
    sub_21CB81014();
    v12 = sub_21CB81004();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    v16[0] = v12;
    v16[1] = v14;
    sub_21C71F3FC();
    result = sub_21CB84054();
    v10 = v15 & 1;
  }

  *a2 = result;
  a2[1] = v9;
  a2[2] = v10;
  a2[3] = v11;
  return result;
}

void sub_21CA3D30C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedFeatureManager];
  v9 = [v8 isUserAllowedToTogglePasswordAutoFillEnabledState];

  if (v9)
  {
    if (*(*(a1 + 40) + 24) != 1)
    {
      v16 = 0uLL;
      v18 = -1;
      v17 = 0uLL;
      goto LABEL_7;
    }

    sub_21CA3D500(&v23);
    v19 = v23;
    v20 = v24;
    v21 = *(&v24 + 1);
    v22 = 1;
  }

  else
  {
    sub_21CB81014();
    v10 = sub_21CB81004();
    v12 = v11;
    (*(v5 + 8))(v7, v4);
    *&v23 = v10;
    *(&v23 + 1) = v12;
    sub_21C71F3FC();
    *&v19 = sub_21CB84054();
    *(&v19 + 1) = v13;
    v20 = v14 & 1;
    v21 = v15;
    v22 = 0;
  }

  sub_21CB83494();
  v16 = v23;
  v17 = v24;
  v18 = v25;
LABEL_7:
  *a2 = v16;
  *(a2 + 16) = v17;
  *(a2 + 32) = v18;
}

unint64_t sub_21CA3D500@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_21CBBFD30, v4);
  swift_getKeyPath(byte_21CBBFD58);
  sub_21CB81DB4();

  if (v35 != 1)
  {
    goto LABEL_7;
  }

  v7 = sub_21C954454();
  v8 = *(v7 + 2);
  if (v8 != 3)
  {
    if (v8 != 2)
    {
      if (v8 == 1)
      {
        sub_21CB81014();
        sub_21CB81004();
        (*(v3 + 8))(v6, v2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_21CBA0690;
        *(v9 + 56) = MEMORY[0x277D837D0];
        result = sub_21C7C0050();
        *(v9 + 64) = result;
        if (*(v7 + 2))
        {
          v12 = *(v7 + 4);
          v11 = *(v7 + 5);

          *(v9 + 32) = v12;
          *(v9 + 40) = v11;
LABEL_15:
          v29 = sub_21CB85594();
          v31 = v30;

          v35 = v29;
          v36 = v31;
          goto LABEL_16;
        }

        goto LABEL_20;
      }

LABEL_7:
      sub_21CB81014();
      v13 = sub_21CB81004();
      v15 = v14;
      (*(v3 + 8))(v6, v2);
      v35 = v13;
      v36 = v15;
LABEL_16:
      sub_21C71F3FC();
      result = sub_21CB84054();
      *a1 = result;
      *(a1 + 8) = v32;
      *(a1 + 16) = v33 & 1;
      *(a1 + 24) = v34;
      return result;
    }

    sub_21CB81014();
    sub_21CB81004();
    (*(v3 + 8))(v6, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_21CBA15B0;
    v17 = MEMORY[0x277D837D0];
    *(v16 + 56) = MEMORY[0x277D837D0];
    result = sub_21C7C0050();
    *(v16 + 64) = result;
    v18 = *(v7 + 2);
    if (v18)
    {
      v19 = result;
      result = *(v7 + 5);
      *(v16 + 32) = *(v7 + 4);
      *(v16 + 40) = result;
      *(v16 + 96) = v17;
      *(v16 + 104) = v19;
      if (v18 != 1)
      {
        v21 = *(v7 + 6);
        v20 = *(v7 + 7);

        *(v16 + 72) = v21;
        *(v16 + 80) = v20;
        goto LABEL_15;
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_21CB81014();
  sub_21CB81004();
  (*(v3 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_21CBA15A0;
  v23 = MEMORY[0x277D837D0];
  *(v22 + 56) = MEMORY[0x277D837D0];
  result = sub_21C7C0050();
  *(v22 + 64) = result;
  v24 = *(v7 + 2);
  if (!v24)
  {
    goto LABEL_19;
  }

  v25 = result;
  result = *(v7 + 5);
  *(v22 + 32) = *(v7 + 4);
  *(v22 + 40) = result;
  *(v22 + 96) = v23;
  *(v22 + 104) = v25;
  if (v24 == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = *(v7 + 7);
  *(v22 + 72) = *(v7 + 6);
  *(v22 + 80) = v26;
  *(v22 + 136) = v23;
  *(v22 + 144) = v25;
  if (v24 >= 3)
  {
    v28 = *(v7 + 8);
    v27 = *(v7 + 9);

    *(v22 + 112) = v28;
    *(v22 + 120) = v27;
    goto LABEL_15;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_21CA3D994(uint64_t a1)
{
  v1 = [objc_opt_self() sharedManager];
  [v1 canEnableCredentialProviderExtension];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

void sub_21CA3DA30(unsigned __int8 *a1@<X8>)
{
  v2 = [objc_opt_self() sharedFeatureManager];
  v3 = [v2 shouldAutoFillPasswordsFromKeychain];

  *a1 = v3;
}

void sub_21CA3DA94(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 == 1)
  {
    v11 = *(a4 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    sub_21CB84D54();
    if (v10 == 1)
    {
      v11 = *(a4 + 64);
      v10 = *(a4 + 64);
      v12 = *(&v11 + 1);
      sub_21C6EDBAC(&v12, &v9, &qword_27CDF5FA0, &qword_21CBBFEE0);
      sub_21CB84D54();
      v9 = v11;
      sub_21CB84D64();
      sub_21C6EA794(&v11, &unk_27CDF40F0, &qword_21CBA2500);
      return;
    }

    v6 = [objc_opt_self() sharedFeatureManager];
    [v6 setShouldAutoFillPasswordsFromKeychain_];

    v7 = [objc_opt_self() sharedManager];
    [v7 canEnableCredentialProviderExtension];
  }

  else
  {
    v5 = [objc_opt_self() sharedFeatureManager];
    [v5 setShouldAutoFillPasswordsFromKeychain_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D64();
  v8 = [objc_opt_self() sharedManager];
  sub_21C954AFC(v8);
}

uint64_t sub_21CA3DCA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F70, &qword_21CBBFE60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F60, &qword_21CBBFE58);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F48, &unk_21CBBFE48);
  MEMORY[0x28223BE20](v10);
  v12 = v19 - v11;
  *v5 = sub_21CB83074();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F88, &qword_21CBBFE68);
  sub_21CA3DF70(a1, &v5[*(v13 + 44)]);
  sub_21CB85224();
  sub_21CB82AC4();
  sub_21C716934(v5, v9, &qword_27CDF5F70, &qword_21CBBFE60);
  v14 = &v9[*(v7 + 44)];
  v15 = v25;
  *(v14 + 4) = v24;
  *(v14 + 5) = v15;
  *(v14 + 6) = v26;
  v16 = v21;
  *v14 = v20;
  *(v14 + 1) = v16;
  v17 = v23;
  *(v14 + 2) = v22;
  *(v14 + 3) = v17;
  sub_21C716934(v9, v12, &qword_27CDF5F60, &qword_21CBBFE58);
  v12[*(v10 + 36)] = 0;
  v19[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21CA4065C(&qword_27CDF5F50, &qword_27CDF5F48, &unk_21CBBFE48, sub_21CA4070C);
  sub_21C7E3710();
  sub_21CB84154();
  return sub_21C6EA794(v12, &qword_27CDF5F48, &unk_21CBBFE48);
}

uint64_t sub_21CA3DF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39C0, &qword_21CBBEE90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v23[-v8];
  v10 = type metadata accessor for PMISIconView(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v23[-v15];
  v17 = *MEMORY[0x277D49CC0];
  v18 = sub_21CA31A14(1);
  v19 = [objc_allocWithZone(MEMORY[0x277D1B1A8]) initWithBundleIdentifier_];

  v20 = *(v11 + 36);
  *(v16 + v20) = swift_getKeyPath(aX_58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2478, &unk_21CBBFEC0);
  swift_storeEnumTagMultiPayload();
  *v16 = v19;
  v16[1] = v18;
  v16[2] = 0;
  *v9 = sub_21CB832F4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39C8, &unk_21CBB87F0);
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF730, &qword_21CBBFED0);
  sub_21C6EADEC(&qword_27CDEF738, &qword_27CDEF730, &qword_21CBBFED0, MEMORY[0x277CE14C0]);
  sub_21CB81FC4();
  sub_21CA40A1C(v16, v13);
  sub_21C6EDBAC(v9, v6, &qword_27CDF39C0, &qword_21CBBEE90);
  sub_21CA40A1C(v13, a2);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F98, &qword_21CBBFED8);
  sub_21C6EDBAC(v6, a2 + *(v21 + 48), &qword_27CDF39C0, &qword_21CBBEE90);
  sub_21C6EA794(v9, &qword_27CDF39C0, &qword_21CBBEE90);
  sub_21CA40A80(v16);
  sub_21C6EA794(v6, &qword_27CDF39C0, &qword_21CBBEE90);
  return sub_21CA40A80(v13);
}

uint64_t sub_21CA3E24C@<X0>(uint64_t a1@<X8>)
{
  v41 = sub_21CB81024();
  v2 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_21CA40ADC();
  v45 = v5;
  v40 = sub_21C71F3FC();
  v6 = sub_21CB84054();
  v8 = v7;
  v10 = v9;
  v11 = [objc_opt_self() sharedFeatureManager];
  v12 = [v11 isAutoFillFromKeychainRestricted];

  if (v12)
  {
    sub_21CB84B34();
  }

  else
  {
    sub_21CB84B14();
  }

  v13 = sub_21CB83FB4();
  v37 = v14;
  v38 = v13;
  HIDWORD(v36) = v15;
  v39 = v16;

  sub_21C74A72C(v6, v8, v10 & 1);

  sub_21CB81014();
  v17 = sub_21CB81004();
  v19 = v18;
  (*(v2 + 8))(v4, v41);
  v44 = v17;
  v45 = v19;
  v20 = sub_21CB84054();
  v22 = v21;
  LOBYTE(v19) = v23;
  sub_21CB83E94();
  v24 = sub_21CB84024();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_21C74A72C(v20, v22, v19 & 1);

  v31 = BYTE4(v36) & 1;
  v42 = BYTE4(v36) & 1;
  LOBYTE(v44) = BYTE4(v36) & 1;
  v43 = v28 & 1;
  v33 = v37;
  v32 = v38;
  *a1 = v38;
  *(a1 + 8) = v33;
  *(a1 + 16) = v31;
  *(a1 + 24) = v39;
  *(a1 + 32) = v24;
  *(a1 + 40) = v26;
  *(a1 + 48) = v28 & 1;
  *(a1 + 56) = v30;
  v34 = v32;
  sub_21C79B058(v32, v33, v31);

  sub_21C79B058(v24, v26, v28 & 1);

  sub_21C74A72C(v24, v26, v28 & 1);

  sub_21C74A72C(v34, v33, v42);
}

uint64_t sub_21CA3E524@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v23 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  if ([objc_opt_self() isPasswordsAppInstalled])
  {
    sub_21CB81014();
    sub_21CB81014();
    v12 = sub_21CB80FF4();
    v14 = v13;
    v15 = *(v3 + 8);
    v15(v5, v2);
    v15(v8, v2);
    v16 = sub_21CB855C4();
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = v18;
    MEMORY[0x28223BE20](v19);
    *(&v22 - 2) = v12;
    *(&v22 - 1) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    sub_21CB84DA4();

    (*(v23 + 32))(a1, v11, v9);
    return (*(v23 + 56))(a1, 0, 1, v9);
  }

  else
  {
    v21 = *(v23 + 56);

    return v21(a1, 1, 1, v9);
  }
}

uint64_t sub_21CA3E8AC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5FD8, &qword_21CBBFF00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5FC8, &qword_21CBBFEF8);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5FB0, &qword_21CBBFEF0);
  MEMORY[0x28223BE20](v12);
  v14 = v21 - v13;
  *v7 = sub_21CB83074();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5FE0, &qword_21CBBFF08);
  sub_21CA3EB80(a1, a2, &v7[*(v15 + 44)]);
  sub_21CB85224();
  sub_21CB82AC4();
  sub_21C716934(v7, v11, &qword_27CDF5FD8, &qword_21CBBFF00);
  v16 = &v11[*(v9 + 44)];
  v17 = v27;
  *(v16 + 4) = v26;
  *(v16 + 5) = v17;
  *(v16 + 6) = v28;
  v18 = v23;
  *v16 = v22;
  *(v16 + 1) = v18;
  v19 = v25;
  *(v16 + 2) = v24;
  *(v16 + 3) = v19;
  sub_21C716934(v11, v14, &qword_27CDF5FC8, &qword_21CBBFEF8);
  v14[*(v12 + 36)] = 0;
  v21[4] = a2;
  v21[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21CA4065C(&qword_27CDF5FB8, &qword_27CDF5FB0, &qword_21CBBFEF0, sub_21CA40CA0);
  sub_21C7E3710();
  sub_21CB84154();
  return sub_21C6EA794(v14, &qword_27CDF5FB0, &qword_21CBBFEF0);
}

uint64_t sub_21CA3EB80@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39C0, &qword_21CBBEE90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5FE8, &qword_21CBBFF10);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_21CA3EE1C(a2, &v20 - v15);
  *v10 = sub_21CB832F4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39C8, &unk_21CBB87F0);
  v22 = a2;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF730, &qword_21CBBFED0);
  sub_21C6EADEC(&qword_27CDEF738, &qword_27CDEF730, &qword_21CBBFED0, MEMORY[0x277CE14C0]);
  sub_21CB81FC4();
  sub_21C6EDBAC(v16, v13, &qword_27CDF5FE8, &qword_21CBBFF10);
  sub_21C6EDBAC(v10, v7, &qword_27CDF39C0, &qword_21CBBEE90);
  v17 = v21;
  sub_21C6EDBAC(v13, v21, &qword_27CDF5FE8, &qword_21CBBFF10);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5FF0, &qword_21CBBFF18);
  sub_21C6EDBAC(v7, v17 + *(v18 + 48), &qword_27CDF39C0, &qword_21CBBEE90);
  sub_21C6EA794(v10, &qword_27CDF39C0, &qword_21CBBEE90);
  sub_21C6EA794(v16, &qword_27CDF5FE8, &qword_21CBBFF10);
  sub_21C6EA794(v7, &qword_27CDF39C0, &qword_21CBBEE90);
  return sub_21C6EA794(v13, &qword_27CDF5FE8, &qword_21CBBFF10);
}

uint64_t sub_21CA3EE1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMISIconView(0);
  v18 = *(v4 - 8);
  *&v5 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [a1 sf_bundleIdentifierForContainingApp];
  if (v8)
  {
    v9 = v8;
    sub_21CB855C4();

    v10 = sub_21CA31A14(1);
    v11 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v12 = sub_21CB85584();

    v13 = [v11 initWithBundleIdentifier_];

    v14 = *(v4 + 28);
    *(v7 + v14) = swift_getKeyPath(aX_58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2478, &unk_21CBBFEC0);
    swift_storeEnumTagMultiPayload();
    *v7 = v13;
    v7[1] = v10;
    v7[2] = 0;
    sub_21CA40D68(v7, a2);
    return (*(v18 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v16 = *(v18 + 56);

    return v16(a2, 1, 1, v4);
  }
}

uint64_t sub_21CA3F014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [v4 sharedManager];
  v6 = [v5 displayNameForExtension_];

  sub_21CB855C4();
  sub_21C71F3FC();
  v7 = sub_21CB84054();
  v9 = v8;
  v11 = v10;
  v12 = [v4 sharedManager];
  v13 = [v12 extensionIsEnabled_];

  if (v13 & 1) != 0 || (v14 = [v4 sharedManager], v15 = objc_msgSend(v14, sel_canEnableCredentialProviderExtension), v14, (v15))
  {
    sub_21CB84B14();
  }

  else
  {
    sub_21CB84B34();
  }

  v16 = sub_21CB83FB4();
  v36 = v17;
  v37 = v16;
  v35 = v18;
  v38 = v19;

  sub_21C74A72C(v7, v9, v11 & 1);

  v20 = [v4 sharedManager];
  v21 = [v20 supportedCredentialTypesStringForExtension_];

  sub_21CB855C4();
  v22 = sub_21CB84054();
  v24 = v23;
  v26 = v25;
  sub_21CB83E94();
  v27 = sub_21CB84024();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_21C74A72C(v22, v24, v26 & 1);

  *a2 = v37;
  *(a2 + 8) = v36;
  *(a2 + 16) = v35 & 1;
  *(a2 + 24) = v38;
  *(a2 + 32) = v27;
  *(a2 + 40) = v29;
  *(a2 + 48) = v31 & 1;
  *(a2 + 56) = v33;
  sub_21C79B058(v37, v36, v35 & 1);

  sub_21C79B058(v27, v29, v31 & 1);

  sub_21C74A72C(v27, v29, v31 & 1);

  sub_21C74A72C(v37, v36, v35 & 1);
}

uint64_t sub_21CA3F2F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v22 = *(v4 - 8);
  *&v5 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v7 = &v21 - v6;
  v8 = [a1 sf_bundleIdentifierForContainingApp];
  if (v8)
  {
    v9 = v8;
    v10 = sub_21CB855C4();
    v12 = v11;

    v13 = [objc_opt_self() sharedManager];
    v14 = [v13 displayNameForExtension_];

    v15 = sub_21CB855C4();
    v17 = v16;

    v18 = swift_allocObject();
    *(v18 + 16) = v10;
    *(v18 + 24) = v12;
    MEMORY[0x28223BE20](v18);
    *(&v21 - 2) = v15;
    *(&v21 - 1) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    sub_21CB84DA4();

    (*(v22 + 32))(a2, v7, v4);
    return (*(v22 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v20 = *(v22 + 56);

    return v20(a2, 1, 1, v4);
  }
}

void sub_21CA3F5B4(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  v4 = [objc_opt_self() sharedManager];
  LOBYTE(a1) = [v4 extensionIsEnabled_];

  *a2 = a1;
}

uint64_t sub_21CA3F620(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  if (v7 == 1 && (v17 = *(a4 + 48), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500), sub_21CB84D54(), v16 == 1))
  {
    v17 = *(a4 + 64);
    v16 = *(a4 + 64);
    v19 = *(&v17 + 1);
    sub_21C6EDBAC(&v19, &v15, &qword_27CDF5FA0, &qword_21CBBFEE0);
    sub_21CB84D54();
    v15 = v17;
    sub_21CB84D64();
    return sub_21C6EA794(&v17, &unk_27CDF40F0, &qword_21CBA2500);
  }

  else
  {
    v9 = objc_opt_self();
    v10 = [v9 sharedManager];
    v11 = a5;
    [v10 setExtension:v11 isEnabled:v7];

    if (v7)
    {
      v12 = [v9 sharedManager];
      v13 = [v12 shouldShowConfigurationUIForEnablingExtension_];

      if (v13)
      {
        v17 = *(a4 + 16);
        v18 = *(a4 + 32);
        *&v16 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2678, &qword_21CBBFF20);
        sub_21CB84F34();
      }

      else
      {
      }

      v14 = [v9 sharedManager];
      [v14 canEnableCredentialProviderExtension];
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    return sub_21CB84D64();
  }
}

double sub_21CA3F860(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_21CB858E4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_21CB858B4();

  v8 = sub_21CB858A4();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a1;
  v9[5] = a2;
  sub_21C822EDC(0, 0, v6, &unk_21CBBFE78, v9);

  return result;
}

uint64_t sub_21CA3F988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[18] = a1;
  sub_21CB858B4();
  v5[21] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v5[22] = v7;
  v5[23] = v6;

  return MEMORY[0x2822009F8](sub_21CA3FA24, v7, v6);
}

uint64_t sub_21CA3FA24()
{
  v1 = [objc_opt_self() defaultWorkspace];
  v0[24] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_21CB85584();
    v0[25] = v3;
    v0[2] = v0;
    v0[7] = v0 + 27;
    v0[3] = sub_21CA3FB88;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F90, &unk_21CBBFE80);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21CA92000;
    v0[13] = &block_descriptor_31;
    v0[14] = v4;
    [v2 openApplicationWithBundleIdentifier:v3 configuration:0 completionHandler:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

uint64_t sub_21CA3FB88()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_21CA3FD3C;
  }

  else
  {
    v5 = sub_21CA3FCB8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21CA3FCB8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 144);

  *v3 = *(v0 + 216);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21CA3FD3C()
{
  v1 = v0[25];
  v2 = v0[24];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_21CA3FDBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v5 + 8))(v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21CBA0690;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_21C7C0050();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = sub_21CB85594();
  v11 = v10;

  v13[0] = v9;
  v13[1] = v11;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21CA3FF80@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v17 = v1[2];
  v18 = v3;
  v19 = v1[4];
  v4 = v1[1];
  v15 = *v1;
  v16 = v4;
  sub_21CA3D1BC(&v15, v14);
  sub_21CA3D30C(&v15, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4130, &qword_21CBB1B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5EA0, &unk_21CBBFCF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC140, &unk_21CBA3D10);
  sub_21C87DED8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5EA8, &qword_21CBBFD08);
  v6 = sub_21CA403D4();
  v12[0] = v5;
  v12[1] = MEMORY[0x277CE1428];
  v12[2] = MEMORY[0x277CE0BD8];
  v12[3] = v6;
  v12[4] = MEMORY[0x277CE1410];
  v12[5] = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_21C7FC4F4();
  sub_21CB85044();
  v7 = swift_allocObject();
  v8 = v18;
  *(v7 + 3) = v17;
  *(v7 + 4) = v8;
  *(v7 + 5) = v19;
  v9 = v16;
  *(v7 + 1) = v15;
  *(v7 + 2) = v9;
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5ED8, &unk_21CBBFD20) + 36));
  *v10 = sub_21CA4053C;
  v10[1] = v7;
  v10[2] = 0;
  v10[3] = 0;
  return sub_21CA40544(&v15, v12);
}

void *sub_21CA40164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath(aP_82);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C81C310(KeyPath, v15);

  type metadata accessor for PMCredentialProviderExtensionManager(0);
  sub_21CA405A4(&qword_27CDF5E98, type metadata accessor for PMCredentialProviderExtensionManager, &unk_21CBB3718);
  v11 = sub_21CB82674();
  v13 = v12;

  sub_21CB84D44();
  v17[0] = 0;
  result = sub_21CB84D44();
  *a5 = v11;
  *(a5 + 8) = v13;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  *(a5 + 48) = v15;
  *(a5 + 49) = v15;
  *(a5 + 52) = *(&v15 + 3);
  *(a5 + 56) = v16;
  *(a5 + 64) = v15;
  *(a5 + 65) = *v17;
  *(a5 + 68) = *&v17[3];
  *(a5 + 72) = v16;
  return result;
}

uint64_t sub_21CA40304(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_21CA4034C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_21CA403D4()
{
  result = qword_27CDF5EB0;
  if (!qword_27CDF5EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5EA8, &qword_21CBBFD08);
    sub_21CA4048C();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5EB0);
  }

  return result;
}

unint64_t sub_21CA4048C()
{
  result = qword_27CDF5EB8;
  if (!qword_27CDF5EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5EC0, &qword_21CBBFD10);
    sub_21C6EADEC(&qword_27CDF5EC8, &qword_27CDF5ED0, &qword_21CBBFD18, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5EB8);
  }

  return result;
}

uint64_t sub_21CA405A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21CA405EC()
{
  result = qword_27CDF5F20;
  if (!qword_27CDF5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5F20);
  }

  return result;
}

uint64_t sub_21CA4065C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_21C6EADEC(&qword_27CDEB970, &qword_27CDEB948, &unk_21CBA26E0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CA4070C()
{
  result = qword_27CDF5F58;
  if (!qword_27CDF5F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5F60, &qword_21CBBFE58);
    sub_21C6EADEC(&qword_27CDF5F68, &qword_27CDF5F70, &qword_21CBBFE60, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5F58);
  }

  return result;
}

unint64_t sub_21CA407C4()
{
  result = qword_27CDF5F80;
  if (!qword_27CDF5F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5F38, &qword_21CBBFE38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5F30, &qword_21CBBFE30);
    sub_21CB83024();
    sub_21C6EADEC(&qword_27CDF5F78, &qword_27CDF5F30, &qword_21CBBFE30, MEMORY[0x277CDF068]);
    sub_21CA405A4(&qword_27CDF5F18, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5F80);
  }

  return result;
}

uint64_t sub_21CA40954(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21CA3F988(a1, v4, v5, v7, v6);
}

uint64_t sub_21CA40A1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMISIconView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA40A80(uint64_t a1)
{
  v2 = type metadata accessor for PMISIconView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CA40ADC()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  [objc_opt_self() isPasswordsAppInstalled];
  sub_21CB81014();
  sub_21CB81014();
  v7 = sub_21CB80FF4();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7;
}

unint64_t sub_21CA40CA0()
{
  result = qword_27CDF5FC0;
  if (!qword_27CDF5FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5FC8, &qword_21CBBFEF8);
    sub_21C6EADEC(&qword_27CDF5FD0, &qword_27CDF5FD8, &qword_21CBBFF00, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5FC0);
  }

  return result;
}

uint64_t sub_21CA40D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMISIconView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CA40DCC()
{
  result = qword_27CDF5FF8;
  if (!qword_27CDF5FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5ED8, &unk_21CBBFD20);
    sub_21CA40E58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5FF8);
  }

  return result;
}

unint64_t sub_21CA40E58()
{
  result = qword_27CDF6000;
  if (!qword_27CDF6000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6008, &qword_21CBBFF28);
    sub_21C87DED8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5EA8, &qword_21CBBFD08);
    sub_21CA403D4();
    swift_getOpaqueTypeConformance2();
    sub_21C7FC4F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6000);
  }

  return result;
}

uint64_t sub_21CA40F90(uint64_t a1, uint64_t a2)
{
  sub_21CB858B4();

  v4 = sub_21CB858A4();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = a1;
  v5[5] = a2;

  v7 = sub_21CB858A4();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = a1;
  v8[5] = a2;
  sub_21CB84F64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6010, &qword_21CBBFFC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6018, &qword_21CBBFFC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6020, &qword_21CBBFFD0);
  sub_21CA41F88();
  sub_21CA42004(&qword_27CDF6030, &qword_27CDF6018, &qword_21CBBFFC8, MEMORY[0x277CE1290]);
  sub_21CA42004(&qword_27CDF6048, &qword_27CDF6020, &qword_21CBBFFD0, MEMORY[0x277CE1550]);
  return sub_21CB84E34();
}

uint64_t sub_21CA411D4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_getKeyPath(a8_31);
    swift_getKeyPath(byte_21CBC0098);

    sub_21CB81DB4();

    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6070, &unk_21CBC00B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6040, &qword_21CBBFFD8);
    sub_21C6EADEC(&qword_27CDF6078, &qword_27CDF6070, &unk_21CBC00B8, MEMORY[0x277D83980]);
    sub_21C6EADEC(&qword_27CDF6038, &qword_27CDF6040, &qword_21CBBFFD8, MEMORY[0x277CDEFF0]);
    sub_21CA42298();
    return sub_21CB84FF4();
  }

  else
  {
    type metadata accessor for PMOTPAuthHandlerManager(0);
    sub_21CA4215C(&qword_27CDF26C0, type metadata accessor for PMOTPAuthHandlerManager, &unk_21CBC4514);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21CA413CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21CA41500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6040, &qword_21CBBFFD8);
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v16 - v9;
  if (a1)
  {
    swift_getKeyPath(byte_21CBBFFE0, v8);
    swift_getKeyPath(byte_21CBC0008);

    sub_21CB81DB4();

    v12 = v17;
    if (v17)
    {
      MEMORY[0x28223BE20](v11);
      *(&v16 - 4) = a1;
      *(&v16 - 3) = a2;
      *(&v16 - 2) = v12;
      MEMORY[0x28223BE20](v13);
      *(&v16 - 4) = a1;
      *(&v16 - 3) = a2;
      *(&v16 - 2) = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6050, &qword_21CBC0028);
      sub_21CA420A8();
      sub_21CB84C84();

      (*(v7 + 32))(a3, v10, v6);
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    return (*(v7 + 56))(a3, v14, 1, v6);
  }

  else
  {
    type metadata accessor for PMOTPAuthHandlerManager(0);
    sub_21CA4215C(&qword_27CDF26C0, type metadata accessor for PMOTPAuthHandlerManager, &unk_21CBC4514);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

void sub_21CA41794(uint64_t a1@<X2>, void *a3@<X8>)
{
  if (a1)
  {
    swift_getKeyPath(byte_21CBC00D0);
    swift_getKeyPath(byte_21CBC00F8);

    sub_21CB81DB4();

    *a3 = v4;
    a3[1] = v5;
  }

  else
  {
    type metadata accessor for PMOTPAuthHandlerManager(0);
    sub_21CA4215C(&qword_27CDF26C0, type metadata accessor for PMOTPAuthHandlerManager, &unk_21CBC4514);
    sub_21CB82B64();
    __break(1u);
  }
}

void sub_21CA41880(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  if (a4)
  {
    v11 = *a1;
    v10 = a1[1];
    v12 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v12 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = sub_21CB858E4();
      (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
      sub_21CB858B4();
      swift_retain_n();

      v14 = sub_21CB858A4();
      v15 = swift_allocObject();
      v16 = MEMORY[0x277D85700];
      v15[2] = v14;
      v15[3] = v16;
      v15[4] = a4;
      v15[5] = v11;
      v15[6] = v10;
      sub_21C98B308(0, 0, v9, &unk_21CBC00C8, v15);
    }
  }

  else
  {
    type metadata accessor for PMOTPAuthHandlerManager(0);
    sub_21CA4215C(&qword_27CDF26C0, type metadata accessor for PMOTPAuthHandlerManager, &unk_21CBC4514);
    sub_21CB82B64();
    __break(1u);
  }
}

uint64_t sub_21CA41A40(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6050, &qword_21CBC0028);
  sub_21CA420A8();
  return sub_21CB84C84();
}

uint64_t sub_21CA41AE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v38[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6068, &qword_21CBC0030);
  MEMORY[0x28223BE20](v5);
  v7 = v38 - v6;
  v8 = type metadata accessor for PMISIconView(0);
  MEMORY[0x28223BE20](v8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = v38 - v13;
  v15 = [a1 bundleIdentifier];
  if (v15)
  {
    v16 = v15;
    v17 = sub_21CB855C4();
    v19 = v18;

    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      if (v17 == 0xD000000000000015 && 0x800000021CB986D0 == v19)
      {

LABEL_10:
        v22 = sub_21CA31A14(1);
        v23 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
        v24 = sub_21CB85584();
        v25 = [v23 initWithType_];

        v26 = *(v8 + 28);
        *&v14[v26] = swift_getKeyPath(aH_90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2478, &unk_21CBBFEC0);
        swift_storeEnumTagMultiPayload();
        *v14 = v25;
        v10 = v14;
        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  v21 = sub_21CB86344();

  if (v21)
  {
    goto LABEL_10;
  }

  v27 = [a1 bundleIdentifier];
  if (v27)
  {
    v28 = v27;
    v29 = sub_21CB855C4();
    v31 = v30;

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (!v32)
    {
    }
  }

  v22 = sub_21CA31A14(1);
  v33 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v34 = sub_21CB85584();

  v35 = [v33 initWithBundleIdentifier_];

  v36 = *(v8 + 28);
  *&v10[v36] = swift_getKeyPath(aH_90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2478, &unk_21CBBFEC0);
  swift_storeEnumTagMultiPayload();
  *v10 = v35;
LABEL_17:
  *(v10 + 1) = v22;
  *(v10 + 2) = a3;
  sub_21CA40A1C(v10, v7);
  swift_storeEnumTagMultiPayload();
  sub_21CA4215C(&qword_27CDF6060, type metadata accessor for PMISIconView, &unk_21CBBEEE0);
  sub_21CB83494();
  return sub_21CA40A80(v10);
}

uint64_t sub_21CA41EC8@<X0>(id a1@<X2>, uint64_t a2@<X8>)
{
  v3 = [a1 localizedName];
  sub_21CB855C4();

  sub_21C71F3FC();
  result = sub_21CB84054();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

unint64_t sub_21CA41F88()
{
  result = qword_27CDF6028;
  if (!qword_27CDF6028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6010, &qword_21CBBFFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6028);
  }

  return result;
}

uint64_t sub_21CA42004(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_21C6EADEC(&qword_27CDF6038, &qword_27CDF6040, &qword_21CBBFFD8, MEMORY[0x277CDEFF0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CA420A8()
{
  result = qword_27CDF6058;
  if (!qword_27CDF6058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6050, &qword_21CBC0028);
    sub_21CA4215C(&qword_27CDF6060, type metadata accessor for PMISIconView, &unk_21CBBEEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6058);
  }

  return result;
}

uint64_t sub_21CA4215C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CA421C8(uint64_t a1)
{
  v2 = sub_21CB82854();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_21CB82CD4();
}

unint64_t sub_21CA42298()
{
  result = qword_27CDF6080;
  if (!qword_27CDF6080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6080);
  }

  return result;
}

uint64_t sub_21CA4231C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C702EFC;

  return sub_21CA93650(a1, v4, v5, v6, v7, v8);
}

void *sub_21CA423E8()
{
  swift_getKeyPath(byte_21CBC01C0);
  sub_21CA42C34();
  sub_21CB810D4();

  v1 = *(v0 + 144);
  v2 = v1;
  return v1;
}

id sub_21CA42460@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBC01C0);
  sub_21CA42C34();
  sub_21CB810D4();

  v4 = *(v3 + 144);
  *a2 = v4;

  return v4;
}

void sub_21CA424E8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21CA42518(v1);
}

void sub_21CA42518(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 144);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath(byte_21CBC01C0);
    MEMORY[0x28223BE20](KeyPath);
    sub_21CA42C34();
    sub_21CB810C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21CA42C8C();
  v5 = v4;
  v6 = a1;
  v7 = sub_21CB85DD4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 144);
LABEL_8:
  *(v2 + 144) = a1;
}

void sub_21CA42668(uint64_t a1, void *a2)
{
  v2 = *(a1 + 144);
  *(a1 + 144) = a2;
  v3 = a2;
}

uint64_t sub_21CA4269C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a1;
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a5;
  return MEMORY[0x2822009F8](sub_21CA426C4, a6, 0);
}

uint64_t sub_21CA426C4()
{
  *(v0 + 48) = sub_21C9F52A8(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2822009F8](sub_21CA42734, 0, 0);
}

uint64_t sub_21CA42734()
{
  sub_21CA42518(*(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CA42798()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 104);
  v7[4] = *(v0 + 88);
  v7[5] = v2;
  v7[6] = *(v0 + 120);
  v3 = *(v0 + 40);
  v7[0] = *(v0 + 24);
  v7[1] = v3;
  v7[2] = *(v0 + 56);
  v7[3] = v1;
  sub_21C7A344C(v7);

  v4 = OBJC_IVAR____TtC17PasswordManagerUI23PMGroupMemberImageModel___observationRegistrar;
  v5 = sub_21CB81114();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PMGroupMemberImageModel(uint64_t a1)
{
  result = qword_27CDF60A0;
  if (!qword_27CDF60A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CA428C8(uint64_t a1)
{
  result = sub_21CB81114();
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

uint64_t sub_21CA42988(uint64_t a1, _OWORD *a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  *(v3 + 144) = 0;
  sub_21CB81104();
  v11 = a2[2];
  *(v3 + 72) = a2[3];
  v12 = a2[5];
  *(v3 + 88) = a2[4];
  *(v3 + 104) = v12;
  *(v3 + 120) = a2[6];
  v13 = a2[1];
  *(v3 + 24) = *a2;
  *(v3 + 40) = v13;
  *(v3 + 16) = a1;
  *(v3 + 56) = v11;
  *(v3 + 136) = a3;
  if (*(v3 + 144))
  {
    KeyPath = swift_getKeyPath(byte_21CBC01C0);
    MEMORY[0x28223BE20](KeyPath);
    v21[-2] = v3;
    v21[-1] = 0;
    v21[1] = v3;

    sub_21C7A33F0(a2, v22);
    sub_21CA42C34();
    sub_21CB810C4();
  }

  else
  {

    sub_21C7A33F0(a2, v22);
  }

  v15 = sub_21CB858E4();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v4;
  *(v16 + 40) = a1;
  v17 = a2[5];
  *(v16 + 112) = a2[4];
  *(v16 + 128) = v17;
  *(v16 + 144) = a2[6];
  v18 = a2[1];
  *(v16 + 48) = *a2;
  *(v16 + 64) = v18;
  v19 = a2[3];
  *(v16 + 80) = a2[2];
  *(v16 + 96) = v19;
  *(v16 + 160) = a3;

  sub_21C7A33F0(a2, v22);

  sub_21C98B308(0, 0, v10, &unk_21CBAAE68, v16);

  return v4;
}

void sub_21CA42BFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 144);
  *(v1 + 144) = v2;
  v4 = v2;
}

unint64_t sub_21CA42C34()
{
  result = qword_27CDEECF8;
  if (!qword_27CDEECF8)
  {
    type metadata accessor for PMGroupMemberImageModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEECF8);
  }

  return result;
}

unint64_t sub_21CA42C8C()
{
  result = qword_27CDEBB30;
  if (!qword_27CDEBB30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDEBB30);
  }

  return result;
}

uint64_t sub_21CA42CF0()
{
  swift_getKeyPath(byte_21CBC0250);
  swift_getKeyPath(aP_83);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21CA42D64()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI36PMSignInWithAppleAccountDetailsModel__isPerformingAccountOperation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PMSignInWithAppleAccountDetailsModel(uint64_t a1)
{
  result = qword_27CDF60B8;
  if (!qword_27CDF60B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CA42E60(uint64_t a1)
{
  sub_21C6E7ED8();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21CA42F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF60C8, &unk_21CBC02A0);
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = type metadata accessor for PMImportView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF60F0, &qword_21CBC0318);
  v11 = *(v10 - 8);
  v25 = v10;
  v26 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  sub_21CB85084();
  v14 = v29;
  sub_21CA460F0(a1, v9);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_21CA477A8(v9, v16 + v15, type metadata accessor for PMImportView);
  v29 = v14;
  v30 = sub_21CA4786C;
  v31 = v16;
  sub_21CB85084();
  v17 = v33;
  swift_getKeyPath(a0_47);
  v33 = v17;
  sub_21CA47820(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  v18 = sub_21CA46048();
  sub_21CB84644();

  sub_21CB85094();
  swift_getKeyPath(byte_21CBC0368);
  sub_21CB850B4();

  (*(v24 + 8))(v5, v3);
  v28 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF60F8, &qword_21CBC0320);
  v29 = &type metadata for PMImportView.ProgressIndicatorView;
  v30 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6108, &unk_21CBC0328);
  v20 = sub_21CA4609C();
  v29 = &type metadata for PMImportView.ResultView;
  v30 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v19;
  v30 = MEMORY[0x277CE1428];
  v31 = OpaqueTypeConformance2;
  v32 = MEMORY[0x277CE1410];
  swift_getOpaqueTypeConformance2();
  v22 = v25;
  sub_21CB84554();

  return (*(v26 + 8))(v13, v22);
}

uint64_t sub_21CA433C8(uint64_t a1)
{
  v2 = type metadata accessor for PMImportView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6108, &unk_21CBC0328);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF60C8, &unk_21CBC02A0);
  sub_21CB85084();
  v10 = v16;
  sub_21CA460F0(a1, v5);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_21CA477A8(v5, v12 + v11, type metadata accessor for PMImportView);
  v16 = v10;
  v17 = sub_21CA46224;
  v18 = v12;
  v13 = sub_21CA4609C();
  sub_21CB84674();

  v16 = &type metadata for PMImportView.ResultView;
  v17 = v13;
  swift_getOpaqueTypeConformance2();
  sub_21CB848A4();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21CA4363C(uint64_t a1)
{
  v16 = sub_21CB82F84();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_21CB823B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMImportView(0);
  sub_21C6EDBAC(a1 + *(v12 + 20), v7, &qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_21CB85B04();
    v13 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_21CB823A4();
  return (*(v9 + 8))(v11, v8);
}

double sub_21CA438C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF60C8, &unk_21CBC02A0);
  sub_21CB85084();
  sub_21C9E8888();
  sub_21CB858C4();
  v3 = sub_21CB858E4();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = sub_21C9E6C0C(0, 0, v2, &unk_21CBBB460, v5);
  sub_21CA461B4(v2);
  sub_21C9E81F4(v6);

  return result;
}

uint64_t sub_21CA43A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6138, &qword_21CBC0490);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v30 = sub_21CB84BB4();
  v15 = sub_21CA4638C(a1);
  v28 = v16;
  v29 = v15;
  v17 = a3;
  sub_21CA43CD0(*&a1, a2, a3, v14);
  sub_21CA4752C(&qword_27CDF6140, &qword_27CDF6138, &qword_21CBC0490, sub_21CA467A4);
  v18 = sub_21CB84F14();
  sub_21CB81014();
  v19 = sub_21CB81004();
  v21 = v20;
  (*(v9 + 8))(v11, v8);
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = v17;
  v23 = v29;
  *a4 = v30;
  *(a4 + 8) = v23;
  *(a4 + 16) = v28;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = v18;
  *(a4 + 48) = 257;
  *(a4 + 56) = v19;
  *(a4 + 64) = v21;
  *(a4 + 72) = sub_21CA468E8;
  *(a4 + 80) = v22;
  *(a4 + 88) = 0;
  v24 = type metadata accessor for PMOnboardingView(0);
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0;
  v25 = *(v24 + 28);
  *(a4 + v25) = swift_getKeyPath(byte_21CBC04B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_21CA43CD0@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v36 = a2;
  v40 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6170, &qword_21CBC04A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6160, &qword_21CBC04A0);
  MEMORY[0x28223BE20](v38);
  v9 = &v36 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6150, &qword_21CBC0498);
  v10 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = &v36 - v15;
  swift_getKeyPath(a0_47, v14, v36, v37);
  *&v41 = a1;
  sub_21CA47820(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  if ((*(*&a1 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importInProgress) & 1) != 0 || (swift_getKeyPath(byte_21CBC0508), *&v41 = a1, sub_21CB810D4(), , *(*&a1 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__completedItemCount) >= 1))
  {
    *v7 = sub_21CB832E4();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6178, &qword_21CBC0530);
    sub_21CA441E0(a1, &v7[*(v17 + 44)]);
    sub_21CB85214();
    sub_21CB82AC4();
    sub_21C716934(v7, v9, &qword_27CDF6170, &qword_21CBC04A8);
    v18 = &v9[*(v38 + 36)];
    v19 = v46;
    *(v18 + 4) = v45;
    *(v18 + 5) = v19;
    *(v18 + 6) = v47;
    v20 = v42;
    *v18 = v41;
    *(v18 + 1) = v20;
    v21 = v44;
    *(v18 + 2) = v43;
    *(v18 + 3) = v21;
    v22 = sub_21CB83CD4();
    sub_21CB81F24();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    sub_21C716934(v9, v12, &qword_27CDF6160, &qword_21CBC04A0);
    v31 = v39;
    v32 = &v12[*(v39 + 36)];
    *v32 = v22;
    *(v32 + 1) = v24;
    *(v32 + 2) = v26;
    *(v32 + 3) = v28;
    *(v32 + 4) = v30;
    v32[40] = 0;
    sub_21C716934(v12, v16, &qword_27CDF6150, &qword_21CBC0498);
    v33 = v40;
    sub_21C716934(v16, v40, &qword_27CDF6150, &qword_21CBC0498);
    v34 = 0;
  }

  else
  {
    v34 = 1;
    v31 = v39;
    v33 = v40;
  }

  return (*(v10 + 56))(v33, v34, 1, v31);
}

uint64_t sub_21CA440E8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getKeyPath(byte_21CBC04E0);
  sub_21CA47820(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  if (*(a1 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importTask))
  {

    sub_21CB85944();
  }

  return a2(v4);
}

uint64_t sub_21CA441E0@<X0>(double a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0478, &unk_21CBB2E10);
  v7 = *(v38 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v38);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v37 = &v36 - v11;
  swift_getKeyPath(byte_21CBC0508, v10);
  v41 = a1;
  sub_21CA47820(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  v41 = *(*&a1 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__completedItemCount);
  LOBYTE(v42) = 0;
  v12 = *(sub_21CB818B4() + 16);

  v43 = v12;
  sub_21CA468F4();
  sub_21CB82224();
  sub_21CB81014();
  sub_21CB81004();
  (*(v4 + 8))(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21CBA0690;
  swift_getKeyPath(asc_21CBC0538);
  v41 = a1;
  sub_21CB810D4();

  v15 = *(*&a1 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__currentItemTitle);
  v14 = *(*&a1 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__currentItemTitle + 8);
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_21C7C0050();
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = 0xE000000000000000;
  if (v14)
  {
    v17 = v14;
  }

  *(v13 + 32) = v16;
  *(v13 + 40) = v17;

  *&v18 = COERCE_DOUBLE(sub_21CB85594());
  v20 = v19;

  v41 = *&v18;
  v42 = v20;
  sub_21C71F3FC();
  v21 = sub_21CB84054();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = *(v7 + 16);
  v29 = v38;
  v30 = v39;
  v31 = v37;
  v28(v39, v37, v38);
  v32 = v40;
  v28(v40, v30, v29);
  v33 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6188, &unk_21CBC0560) + 48)];
  *v33 = v21;
  *(v33 + 1) = v23;
  v25 &= 1u;
  v33[16] = v25;
  *(v33 + 3) = v27;
  sub_21C79B058(v21, v23, v25);
  v34 = *(v36 + 8);

  v34(v31, v29);
  sub_21C74A72C(v21, v23, v25);

  return (v34)(v30, v29);
}

double sub_21CA44644@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a2;
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(a0_48, v9);
  *&v37 = a1;
  sub_21CA47820(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  v12 = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__failedItems;
  swift_beginAccess();
  v13 = *(a1 + v12);
  if (*(v13 + 16))
  {

    v14 = *(sub_21CB818B4() + 16);

    sub_21CB81014();
    v15 = sub_21CB81004();
    v17 = v16;
    (*(v8 + 8))(v11, v7);
    v18 = swift_allocObject();
    v19 = v28;
    v18[2] = a1;
    v18[3] = v19;
    v18[4] = a3;
    v36 = 1;
    v29 = v13;
    v30 = v14;
    v31 = v15;
    v32 = v17;
    v33 = sub_21C962BD8;
    v34 = v18;
    v35 = 256;
  }

  else
  {
    swift_getKeyPath(byte_21CBC0508);
    *&v37 = a1;
    sub_21CB810D4();

    v20 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__completedItemCount);
    sub_21CB81014();
    v21 = sub_21CB81004();
    v23 = v22;
    (*(v8 + 8))(v11, v7);
    v24 = swift_allocObject();
    v25 = v28;
    *(v24 + 2) = a1;
    *(v24 + 3) = v25;
    *(v24 + 4) = a3;
    v36 = 0;
    v29 = v20;
    v30 = v21;
    v31 = v23;
    v32 = sub_21CA47870;
    v33 = v24;
    LOBYTE(v34) = 0;
    HIBYTE(v35) = 0;
  }

  sub_21CA46948();
  sub_21CA4699C();

  sub_21CB83494();
  v26 = v38;
  *a4 = v37;
  *(a4 + 16) = v26;
  result = *&v39;
  *(a4 + 32) = v39;
  *(a4 + 48) = v40;
  return result;
}

uint64_t sub_21CA44994@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = sub_21CB84C14();
  sub_21CB81014();
  v8 = sub_21CB81004();
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  v11 = sub_21CA46CA4(*v1);
  v13 = *(v1 + 24);
  v21[0] = *(v1 + 8);
  v12 = v21[0];
  v21[1] = v13;
  v22 = *(v1 + 40);
  v14 = v22;
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v15;
  *(a1 + 40) = 0;
  *(a1 + 48) = 258;
  *(a1 + 56) = v12;
  *(a1 + 72) = v13;
  *(a1 + 88) = v14;
  v16 = type metadata accessor for PMOnboardingView(0);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  v17 = *(v16 + 28);
  *(a1 + v17) = swift_getKeyPath(byte_21CBC04B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  return sub_21C6EDBAC(v21, v20, &qword_27CDF61B0, &qword_21CBC0700);
}

uint64_t sub_21CA44BAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = sub_21CB829D4();
  v4 = *(v3 - 8);
  v55 = v3;
  v56 = v4;
  MEMORY[0x28223BE20](v3);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF61B8, &qword_21CBC0708);
  v7 = *(v6 - 8);
  v50 = v6;
  v51 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF61C0, &qword_21CBC0710);
  v11 = *(v10 - 8);
  v52 = v10;
  v53 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF61C8, &qword_21CBC0718);
  MEMORY[0x28223BE20](v54);
  v48 = &v42 - v14;
  v15 = sub_21CB81024();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PMOnboardingView(0);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_21CB84C14();
  v24 = *v2;
  v23 = *(v2 + 8);
  sub_21CB81014();
  v46 = sub_21CB81004();
  v45 = v25;
  (*(v16 + 8))(v18, v15);
  v44 = sub_21CA470A0(v24, v23);
  v43 = v26;
  v58 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF61D0, &qword_21CBC0720);
  sub_21CA4752C(&qword_27CDF61D8, &qword_27CDF61D0, &qword_21CBC0720, sub_21CA475A8);
  sub_21CB83EF4();
  v27 = v49;
  sub_21CB85294();
  v28 = sub_21C6EADEC(&qword_27CDF6220, &qword_27CDF61B8, &qword_21CBC0708, MEMORY[0x277CDE580]);
  v29 = sub_21CA47820(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  v30 = v50;
  v31 = v55;
  sub_21CB849C4();
  (*(v56 + 8))(v27, v31);
  (*(v51 + 8))(v9, v30);
  *&v60 = v30;
  *(&v60 + 1) = v31;
  *&v61 = v28;
  *(&v61 + 1) = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v52;
  sub_21CB845F4();
  (*(v53 + 8))(v13, v33);
  *&v60 = v33;
  *(&v60 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v34 = sub_21CB84F14();
  v36 = *(v2 + 32);
  v60 = *(v2 + 16);
  v35 = v60;
  v61 = v36;
  v62 = *(v2 + 48);
  v37 = v62;
  v38 = v46;
  *v22 = v47;
  *(v22 + 1) = v38;
  v39 = v44;
  *(v22 + 2) = v45;
  *(v22 + 3) = v39;
  *(v22 + 4) = v43;
  *(v22 + 5) = v34;
  *(v22 + 24) = 257;
  v22[88] = v37;
  *(v22 + 72) = v36;
  *(v22 + 56) = v35;
  v22[128] = 0;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  v40 = *(v20 + 36);
  *&v22[v40] = swift_getKeyPath(byte_21CBC04B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  sub_21CA477A8(v22, v57, type metadata accessor for PMOnboardingView);
  return sub_21C6EDBAC(&v60, v59, &qword_27CDF61B0, &qword_21CBC0700);
}

uint64_t sub_21CA4521C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF61E8, &qword_21CBC0728);
  v27 = MEMORY[0x28223BE20](v23);
  v28 = *(*a1 + 16);
  if (a1[1] == v28)
  {
    v29 = *(v25 + 56);

    return v29(a2, 1, 1, v27);
  }

  else
  {
    v50 = v22;
    v56 = &v49 - v26;
    v57 = v24;
    v58 = v25;
    v54 = v28;
    sub_21CB81014();
    sub_21CB81014();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
    v55 = a2;
    v51 = sub_21CB81034();
    v31 = *(v51 - 8);
    v53 = a1;
    v32 = v31;
    v33 = *(v31 + 80);
    v52 = v19;
    v34 = (v33 + 32) & ~v33;
    v35 = swift_allocObject();
    sub_21CB81014();
    sub_21CB81014();
    sub_21CB81014();
    sub_21CB81014();
    sub_21CB80FE4();
    v36 = v7;
    v37 = v50;
    v38 = *(v5 + 8);
    v38(v36, v4);
    v38(v10, v4);
    v38(v13, v4);
    v38(v16, v4);
    swift_setDeallocating();
    (*(v32 + 8))(v35 + v34, v51);
    swift_deallocClassInstance();
    sub_21CB81004();
    v38(v52, v4);
    v38(v37, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v39 = swift_allocObject();
    v40 = MEMORY[0x277D83B88];
    *(v39 + 16) = xmmword_21CBA0690;
    v41 = MEMORY[0x277D83C10];
    *(v39 + 56) = v40;
    *(v39 + 64) = v41;
    *(v39 + 32) = v54;
    v42 = sub_21CB85594();
    v44 = v43;

    v59 = v42;
    v60 = v44;
    MEMORY[0x28223BE20](v45);
    *(&v49 - 2) = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF61F8, &qword_21CBC0730);
    sub_21CA47640();
    sub_21C71F3FC();
    v46 = v56;
    sub_21CB85014();
    v47 = v57;
    v48 = v55;
    (*(v58 + 32))(v55, v46, v57);
    return (*(v58 + 56))(v48, 0, 1, v47);
  }
}

uint64_t sub_21CA457D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *a1;
  v11[5] = v14;
  v4 = *(a1 + 2);
  v12[0] = *(a1 + 1);
  v12[1] = v4;
  v13 = *(a1 + 48);
  v5 = swift_allocObject();
  v6 = *(a1 + 1);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 2);
  *(v5 + 64) = *(a1 + 48);
  sub_21C6EDBAC(&v14, v11, &qword_27CDF6228, &unk_21CBC0750);
  sub_21C6EDBAC(&v14, v11, &qword_27CDF6228, &unk_21CBC0750);
  sub_21C6EDBAC(v12, v11, &qword_27CDF61B0, &qword_21CBC0700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6228, &unk_21CBC0750);
  sub_21CB80E34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6218, &unk_21CBC0740);
  sub_21C6EADEC(&qword_27CDF6230, &qword_27CDF6228, &unk_21CBC0750, MEMORY[0x277D83980]);
  sub_21C6EADEC(&qword_27CDF6210, &qword_27CDF6218, &unk_21CBC0740, MEMORY[0x277CE1138]);
  v10 = sub_21CA47820(&qword_27CDF6238, type metadata accessor for PMCredentialExchangeDataImportModel.FailedItem, &unk_21CBBB770);
  sub_21CB84FF4();
  v7 = [objc_opt_self() systemGroupedBackgroundColor];
  v11[0] = sub_21CB84A24();
  v8 = sub_21CB84F14();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF61F8, &qword_21CBC0730);
  *(a2 + *(result + 36)) = v8;
  return result;
}

uint64_t sub_21CA45A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21CB809E4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_21CB83074();
  v7 = sub_21CB84BB4();
  sub_21CA45B70(a1);
  v8 = sub_21CB84044();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v12 &= 1u;
  sub_21C79B058(v8, v10, v12);

  sub_21C74A72C(v8, v10, v12);

  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v10;
  *(a2 + 48) = v12;
  *(a2 + 56) = v14;
  return result;
}

uint64_t sub_21CA45B70(uint64_t a1)
{
  v4 = sub_21CB809E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB80A44();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = type metadata accessor for PMCredentialExchangeDataImportModel.FailedItem(0);
  if (!*(a1 + *(v9 + 28) + 8))
  {
  }

  sub_21CB80A34();
  result = sub_21CB809F4();
  v11 = (a1 + *(v9 + 32));
  if (v11[1])
  {
    v12 = *v11;
    v13[0] = 0x209480E220;
    v13[1] = 0xA500000000000000;
    MEMORY[0x21CF151F0](v12);
    sub_21CB80A34();
    sub_21CB809F4();
    v13[0] = sub_21CB84B34();
    sub_21CA2D49C();
    sub_21CB80A04();
    sub_21CB809A4();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_21CA45DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF60E8, &qword_21CBC0310);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF60F0, &qword_21CBC0318);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF60F8, &qword_21CBC0320);
  v10 = sub_21CA46048();
  v22 = &type metadata for PMImportView.ProgressIndicatorView;
  v23 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6108, &unk_21CBC0328);
  v13 = sub_21CA4609C();
  v22 = &type metadata for PMImportView.ResultView;
  v23 = v13;
  v14 = swift_getOpaqueTypeConformance2();
  v22 = v12;
  v23 = MEMORY[0x277CE1428];
  v24 = v14;
  v25 = MEMORY[0x277CE1410];
  v15 = swift_getOpaqueTypeConformance2();
  v22 = v8;
  v23 = v9;
  v24 = OpaqueTypeConformance2;
  v25 = v15;
  swift_getOpaqueTypeConformance2();
  sub_21CB82924();
  sub_21CA460F0(v3, v7);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_21CA477A8(v7, v17 + v16, type metadata accessor for PMImportView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6118, &qword_21CBC0338);
  v19 = (a2 + *(result + 36));
  *v19 = sub_21CA46154;
  v19[1] = v17;
  v19[2] = 0;
  v19[3] = 0;
  return result;
}

unint64_t sub_21CA46048()
{
  result = qword_27CDF6100;
  if (!qword_27CDF6100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6100);
  }

  return result;
}

unint64_t sub_21CA4609C()
{
  result = qword_27CDF6110;
  if (!qword_27CDF6110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6110);
  }

  return result;
}

uint64_t sub_21CA460F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMImportView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_21CA46154()
{
  type metadata accessor for PMImportView(0);

  return sub_21CA438C4();
}

uint64_t sub_21CA461B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21CA4629C()
{
  result = qword_27CDF6120;
  if (!qword_27CDF6120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6118, &qword_21CBC0338);
    sub_21C6EADEC(&qword_27CDF6128, &qword_27CDF6130, &qword_21CBC03E8, MEMORY[0x277CDDA18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6120);
  }

  return result;
}

uint64_t sub_21CA4638C(uint64_t a1)
{
  v31 = a1;
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  MEMORY[0x28223BE20](v14);
  v29 = &v28 - v15;
  MEMORY[0x28223BE20](v16);
  v30 = &v28 - v17;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v28 = sub_21CB81034();
  v18 = *(v28 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FE4();
  v21 = *(v2 + 8);
  v21(v4, v1);
  v21(v7, v1);
  v21(v10, v1);
  v21(v13, v1);
  swift_setDeallocating();
  (*(v18 + 8))(v20 + v19, v28);
  swift_deallocClassInstance();
  v22 = v30;
  sub_21CB81004();
  v21(v29, v1);
  v21(v22, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21CBA0690;
  v24 = *(sub_21CB818B4() + 16);

  v25 = MEMORY[0x277D83C10];
  *(v23 + 56) = MEMORY[0x277D83B88];
  *(v23 + 64) = v25;
  *(v23 + 32) = v24;
  v26 = sub_21CB85594();

  return v26;
}

unint64_t sub_21CA467A4()
{
  result = qword_27CDF6148;
  if (!qword_27CDF6148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6150, &qword_21CBC0498);
    sub_21CA46830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6148);
  }

  return result;
}

unint64_t sub_21CA46830()
{
  result = qword_27CDF6158;
  if (!qword_27CDF6158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6160, &qword_21CBC04A0);
    sub_21C6EADEC(&qword_27CDF6168, &qword_27CDF6170, &qword_21CBC04A8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6158);
  }

  return result;
}

unint64_t sub_21CA468F4()
{
  result = qword_27CDF6180;
  if (!qword_27CDF6180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6180);
  }

  return result;
}

unint64_t sub_21CA46948()
{
  result = qword_27CDF6190;
  if (!qword_27CDF6190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6190);
  }

  return result;
}

unint64_t sub_21CA4699C()
{
  result = qword_27CDF6198;
  if (!qword_27CDF6198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6198);
  }

  return result;
}

uint64_t objectdestroy_10Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI16PMOnboardingViewV11ButtonModelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21CA46A6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_21CA46AB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CA46B14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_21CA46B70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_21CA46BE0()
{
  result = qword_27CDF61A0;
  if (!qword_27CDF61A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF61A8, &qword_21CBC0658);
    sub_21CA46948();
    sub_21CA4699C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF61A0);
  }

  return result;
}

uint64_t sub_21CA46CA4(uint64_t a1)
{
  v31 = a1;
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  MEMORY[0x28223BE20](v14);
  v29 = &v28 - v15;
  MEMORY[0x28223BE20](v16);
  v30 = &v28 - v17;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v28 = sub_21CB81034();
  v18 = *(v28 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FE4();
  v21 = *(v2 + 8);
  v21(v4, v1);
  v21(v7, v1);
  v21(v10, v1);
  v21(v13, v1);
  swift_setDeallocating();
  (*(v18 + 8))(v20 + v19, v28);
  swift_deallocClassInstance();
  v22 = v30;
  sub_21CB81004();
  v21(v29, v1);
  v21(v22, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D83B88];
  *(v23 + 16) = xmmword_21CBA0690;
  v25 = MEMORY[0x277D83C10];
  *(v23 + 56) = v24;
  *(v23 + 64) = v25;
  *(v23 + 32) = v31;
  v26 = sub_21CB85594();

  return v26;
}

uint64_t sub_21CA470A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v31 - v21;
  v23 = *(a1 + 16);
  v36 = a2;
  if (v23 == a2)
  {
    sub_21CB81014();
    v24 = sub_21CB81004();
    (*(v5 + 8))(v22, v4);
    return v24;
  }

  v35 = v23;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v34 = v19;
  v33 = sub_21CB81034();
  v25 = *(v33 - 8);
  v32 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v26 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FE4();
  v27 = *(v5 + 8);
  v27(v7, v4);
  v27(v10, v4);
  v27(v13, v4);
  v27(v16, v4);
  swift_setDeallocating();
  (*(v25 + 8))(v26 + v32, v33);
  swift_deallocClassInstance();
  sub_21CB81004();
  v27(v34, v4);
  v27(v22, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  result = swift_allocObject();
  *(result + 16) = xmmword_21CBA0690;
  v29 = v36 - v35;
  if (!__OFSUB__(v36, v35))
  {
    v30 = MEMORY[0x277D83C10];
    *(result + 56) = MEMORY[0x277D83B88];
    *(result + 64) = v30;
    *(result + 32) = v29;
    v24 = sub_21CB85594();

    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_21CA4752C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_21CA475A8()
{
  result = qword_27CDF61E0;
  if (!qword_27CDF61E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF61E8, &qword_21CBC0728);
    sub_21CA47640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF61E0);
  }

  return result;
}

unint64_t sub_21CA47640()
{
  result = qword_27CDF61F0;
  if (!qword_27CDF61F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF61F8, &qword_21CBC0730);
    sub_21CA476F8();
    sub_21C6EADEC(&qword_27CDF1178, &qword_27CDF1180, &qword_21CBB0A70, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF61F0);
  }

  return result;
}

unint64_t sub_21CA476F8()
{
  result = qword_27CDF6200;
  if (!qword_27CDF6200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6208, &qword_21CBC0738);
    sub_21C6EADEC(&qword_27CDF6210, &qword_27CDF6218, &unk_21CBC0740, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6200);
  }

  return result;
}

uint64_t sub_21CA477A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA47820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id PMNotificationManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_21CA478AC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(aH_91);
  v5 = v1;
  sub_21CA491B4(&qword_27CDF62E0, type metadata accessor for PMNotificationManager, &protocol conformance descriptor for PMNotificationManager);
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI21PMNotificationManager__notifiedAccount;
  swift_beginAccess();
  return sub_21C725C54(v5 + v3, a1);
}

uint64_t sub_21CA47974@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aH_91);
  sub_21CA491B4(&qword_27CDF62E0, type metadata accessor for PMNotificationManager, &protocol conformance descriptor for PMNotificationManager);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI21PMNotificationManager__notifiedAccount;
  swift_beginAccess();
  return sub_21C725C54(v3 + v4, a2);
}

uint64_t sub_21CA47A3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21C725C54(a1, &v6 - v3);
  return sub_21CA47AD0(v4);
}

uint64_t sub_21CA47AD0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC17PasswordManagerUI21PMNotificationManager__notifiedAccount;
  swift_beginAccess();
  sub_21C725C54(v1 + v6, v5);
  v7 = sub_21CA4856C(v5, a1);
  sub_21C6EA794(v5, &unk_27CDEBE60, &unk_21CB9FF40);
  if (v7)
  {
    KeyPath = swift_getKeyPath(aH_91);
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_21CA491B4(&qword_27CDF62E0, type metadata accessor for PMNotificationManager, &protocol conformance descriptor for PMNotificationManager);
    sub_21CB810C4();
  }

  else
  {
    sub_21C725C54(a1, v5);
    swift_beginAccess();
    sub_21C7AE758(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_21C6EA794(a1, &unk_27CDEBE60, &unk_21CB9FF40);
}

uint64_t sub_21CA47CC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_21C725C54(a2, &v9 - v5);
  v7 = OBJC_IVAR____TtC17PasswordManagerUI21PMNotificationManager__notifiedAccount;
  swift_beginAccess();
  sub_21C7AE758(v6, a1 + v7);
  return swift_endAccess();
}

void sub_21CA47D84(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_21CB853D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21CB85404();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v29 = v14;
    v30 = v15;
    sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
    v28 = v9;
    v18 = a2;
    v19 = a5;
    v20 = a1;
    v21 = sub_21CB85CF4();
    v22 = swift_allocObject();
    *(v22 + 16) = v18;
    *(v22 + 24) = v20;
    aBlock[4] = a4;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = v19;
    v23 = _Block_copy(aBlock);
    v24 = v20;
    v25 = v18;

    sub_21CB853E4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21CA491B4(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
    sub_21C91A53C();
    v26 = v28;
    sub_21CB85F14();
    MEMORY[0x21CF15800](0, v17, v12, v23);
    _Block_release(v23);

    (*(v10 + 8))(v12, v26);
    (*(v29 + 8))(v17, v30);
  }
}

uint64_t sub_21CA48068(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  *v5 = a2;
  swift_storeEnumTagMultiPayload();
  v9 = a2;
  sub_21C7C87D0(v5, v8);
  v10 = type metadata accessor for PMAccount(0);
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  return sub_21CA47AD0(v8);
}

void sub_21CA481A4(void *a1, void (*a2)(void))
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v3 = [a1 exactMatches];
  sub_21C6E8F4C(0, &qword_27CDEE5A8, 0x277D49B38);
  v4 = sub_21CB85824();

  if (v4 >> 62)
  {
    if (sub_21CB85FA4())
    {
      goto LABEL_4;
    }

LABEL_9:

    a1 = 0;
    goto LABEL_10;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x21CF15BD0](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  v7 = [v6 savedAccount];

  a1 = v7;
LABEL_10:
  v8 = a1;
  a2();
}

void sub_21CA482EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 1)
  {
    if (a3 == 9)
    {
      v4 = a4;
      v11 = a2;
      v5 = a2;
      v6 = &unk_282E581C0;
      v7 = &unk_282E581E8;
      v8 = &block_descriptor_42;
      v9 = sub_21CA49244;
      v10 = sub_21CA492C4;
    }

    else
    {
      if (a3 != 8)
      {
        return;
      }

      v4 = a4;
      v11 = a2;
      v5 = a2;
      v6 = &unk_282E580F8;
      v7 = &unk_282E58120;
      v8 = &block_descriptor_26_0;
      v9 = sub_21CA491FC;
      v10 = sub_21CA4923C;
    }

    sub_21CA487DC(v4, v5, v6, v7, v9, v10, v8);
  }
}

id PMNotificationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PMNotificationManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21CA4856C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC50, &unk_21CBA00A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_21C725C54(a1, &v20 - v12);
  sub_21C725C54(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21C725C54(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_21C7D4AC0(&v13[v15], v7);
      v18 = _s17PasswordManagerUI9PMAccountV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_21C7D4A64(v7);
      sub_21C7D4A64(v10);
      sub_21C6EA794(v13, &unk_27CDEBE60, &unk_21CB9FF40);
      v17 = !v18;
      return v17 & 1;
    }

    sub_21C7D4A64(v10);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21C6EA794(v13, &qword_27CDEAC50, &unk_21CBA00A0);
    v17 = 1;
    return v17 & 1;
  }

  sub_21C6EA794(v13, &unk_27CDEBE60, &unk_21CB9FF40);
  v17 = 0;
  return v17 & 1;
}

double sub_21CA487DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a5;
  v53 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  v16 = sub_21CB80BE4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  v55 = 0x6576654C68676968;
  v56 = 0xEF6E69616D6F446CLL;
  v21 = a2;
  sub_21CB86034();
  if (!*(a1 + 16) || (v22 = sub_21CB10D50(aBlock), (v23 & 1) == 0))
  {
    sub_21C8E1980(aBlock);
    goto LABEL_7;
  }

  sub_21C7A3394(*(a1 + 56) + 32 * v22, v57);
  sub_21C8E1980(aBlock);
  if (!swift_dynamicCast())
  {
LABEL_7:
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_8;
  }

  v51 = a7;
  v24 = sub_21CB85584();

  v25 = [v24 safari_bestURLForUserTypedString];

  if (v25)
  {
    sub_21CB80B94();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  (*(v17 + 56))(v12, v26, 1, v16);
  sub_21C79C3F4(v12, v15);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    (*(v17 + 32))(v19, v15, v16);
    v55 = 0x656D614E72657375;
    v56 = 0xE800000000000000;
    sub_21CB86034();
    if (*(a1 + 16) && (v28 = sub_21CB10D50(aBlock), (v29 & 1) != 0))
    {
      sub_21C7A3394(*(a1 + 56) + 32 * v28, v57);
      sub_21C8E1980(aBlock);
      if (swift_dynamicCast())
      {
        v30 = objc_allocWithZone(MEMORY[0x277D49B70]);
        v31 = sub_21CB85584();

        v32 = [v30 initWithString:v31 matchingType:0];

        v33 = objc_allocWithZone(MEMORY[0x277D49B40]);
        v34 = v32;
        v35 = sub_21CB80B74();
        v36 = [v33 initWithURL:v35 options:32 userNameQuery:v34 associatedDomainsManager:0 webFrameIdentifier:0];

        v55 = 0xD000000000000013;
        v56 = 0x800000021CB98B50;
        sub_21CB86034();
        if (*(a1 + 16) && (v37 = sub_21CB10D50(aBlock), (v38 & 1) != 0))
        {
          sub_21C7A3394(*(a1 + 56) + 32 * v37, v57);
          sub_21C8E1980(aBlock);
          v39 = swift_dynamicCast();
          v40 = v51;
          if (v39)
          {
            v50 = sub_21CB80C24();
            v42 = v41;

            v43 = 0;
            if (v42 >> 60 != 15)
            {
              v43 = sub_21CB80C64();
              sub_21C7902FC(v50, v42);
            }

            v44 = v36;
            [v36 setPasskeyCredentialIdentifier_];

            goto LABEL_25;
          }
        }

        else
        {
          sub_21C8E1980(aBlock);
          v40 = v51;
        }

        v44 = v36;
LABEL_25:
        v45 = [objc_opt_self() sharedStore];
        v46 = swift_allocObject();
        v47 = v53;
        *(v46 + 16) = v52;
        *(v46 + 24) = v20;
        aBlock[4] = v47;
        aBlock[5] = v46;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21C7E80D4;
        aBlock[3] = v40;
        v48 = _Block_copy(aBlock);
        v49 = v44;

        [v45 savedAccountsMatchingCriteria:v49 withCompletionHandler:v48];
        _Block_release(v48);
      }
    }

    else
    {
      sub_21C8E1980(aBlock);
    }

    (*(v17 + 8))(v19, v16);
    goto LABEL_9;
  }

LABEL_8:
  sub_21C6EA794(v15, &qword_27CDEC300, &qword_21CBA3ED0);
LABEL_9:

  return result;
}

uint64_t sub_21CA48E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v6 = sub_21CB853D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21CB85404();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v13 = sub_21CB85CF4();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = v3;
  v14[4] = v18;
  v14[5] = a3;
  aBlock[4] = sub_21CA491A8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_32;
  v15 = _Block_copy(aBlock);
  v16 = v3;

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21CA491B4(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C91A53C();
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v12, v9, v15);
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v19);
}

uint64_t sub_21CA491B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CA492C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_21C7B10C0(0, v1, 0);
    v2 = v10;
    v4 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_21C7B10C0((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21CA493E0(uint64_t a1)
{
  v2 = sub_21CB80BE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v18 = MEMORY[0x277D84F90];
    sub_21C7B1168(0, v6, 0);
    v7 = v18;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      swift_dynamicCast();
      v18 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21C7B1168((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      sub_21C731A9C(&v17, (v7 + 32 * v14 + 32));
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_21CA49578(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_21C7B1168(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21C7B1168((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_21C731A9C(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

double sub_21CA49678()
{
  swift_getKeyPath(aP_84);
  swift_getKeyPath(a0_49);
  sub_21CB81DB4();

  return result;
}

uint64_t sub_21CA49704()
{
  swift_getKeyPath(byte_21CBC0B80);
  swift_getKeyPath(byte_21CBC0BA8);
  sub_21CB81DB4();

  if (v1 == 1)
  {
    return sub_21CA49F24();
  }

  swift_getKeyPath(byte_21CBC0B80);
  swift_getKeyPath(byte_21CBC0BA8);

  sub_21CB81DC4();
  swift_getKeyPath(byte_21CBC0DF0);
  swift_getKeyPath(byte_21CBC0E18);

  return sub_21CB81DC4();
}

uint64_t sub_21CA4985C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(byte_21CBC0B80);
  swift_getKeyPath(byte_21CBC0BA8);
  sub_21CB81DB4();

  v2 = sub_21CB85114();
  v3 = MEMORY[0x277CDF0D0];
  if (!v5)
  {
    v3 = MEMORY[0x277CDF0D8];
  }

  return (*(*(v2 - 8) + 104))(a1, *v3, v2);
}

uint64_t sub_21CA49928(uint64_t a1)
{
  v2 = sub_21CB85104();
  swift_getKeyPath(byte_21CBC0B80);
  swift_getKeyPath(byte_21CBC0BA8);
  if (v2)
  {

    sub_21CB81DC4();
    swift_getKeyPath(byte_21CBC0DF0);
    swift_getKeyPath(byte_21CBC0E18);
  }

  sub_21CB81DC4();
  v3 = sub_21CB85114();
  return (*(*(v3 - 8) + 8))(a1, v3);
}

uint64_t sub_21CA49A40(uint64_t a1)
{
  v2 = PMAccount.userName.getter();
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0xE000000000000000;
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  swift_getKeyPath(byte_21CBC0E38);
  swift_getKeyPath(asc_21CBC0E60);
  v18 = v4;
  v20 = v6;

  sub_21CB81DC4();
  v7 = PMAccount.password.getter();
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

  swift_getKeyPath(aH_40, v18, v20);
  swift_getKeyPath(asc_21CBC0EA8);
  v19 = v9;

  sub_21CB81DC4();
  v11 = PMAccount.notesEntry.getter();
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v5 = v12;
  }

  swift_getKeyPath(byte_21CBC0EC8, v19, v10);
  swift_getKeyPath(byte_21CBC0EF0);

  sub_21CB81DC4();
  v14 = PMAccount.effectiveTitle.getter();
  v16 = v15;
  swift_getKeyPath(byte_21CBC0F10, v13, v5);
  swift_getKeyPath(byte_21CBC0F38);

  sub_21CB81DC4();
  PMAccount.totpGenerator.getter();
  swift_getKeyPath(a8_32, v14, v16);
  swift_getKeyPath(byte_21CBC0B10);

  sub_21CB81DC4();
  sub_21CA4CBD4(a1);
  return sub_21CA4AE80(a1);
}

uint64_t sub_21CA49CFC()
{
  swift_getKeyPath(a8_34);
  swift_getKeyPath(byte_21CBC1148);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21CA49D84()
{
  swift_getKeyPath(byte_21CBC1088);
  swift_getKeyPath(byte_21CBC10B0);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21CA49F24()
{
  v1 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 16);
  v5 = qword_27CDEA4C0;

  if (v5 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v6 = sub_21C7072A8(v4, v28);

  v7 = sub_21CA4DE84();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v6 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 40))(v7, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  swift_getKeyPath(byte_21CBC09C8);
  swift_getKeyPath(byte_21CBC09F0);
  sub_21CB81DB4();

  v10 = v28;
  v11 = v29;
  swift_getKeyPath(byte_21CBC0E38);
  swift_getKeyPath(asc_21CBC0E60);
  v28 = v10;
  v29 = v11;

  sub_21CB81DC4();
  swift_getKeyPath(byte_21CBC0A10);
  swift_getKeyPath(byte_21CBC0A38);
  sub_21CB81DB4();

  v12 = v28;
  v13 = v29;
  swift_getKeyPath(aH_40);
  swift_getKeyPath(asc_21CBC0EA8);
  v28 = v12;
  v29 = v13;

  sub_21CB81DC4();
  swift_getKeyPath(byte_21CBC0A58);
  swift_getKeyPath(byte_21CBC0A80);
  sub_21CB81DB4();

  v14 = v28;
  v15 = v29;
  swift_getKeyPath(byte_21CBC0EC8);
  swift_getKeyPath(byte_21CBC0EF0);
  v28 = v14;
  v29 = v15;

  sub_21CB81DC4();
  swift_getKeyPath(aP_27);
  swift_getKeyPath(aP_86);
  sub_21CB81DB4();

  v16 = sub_21CB85584();

  v17 = [v16 safari_stringByTrimmingWhitespace];

  v18 = sub_21CB855C4();
  v20 = v19;

  swift_getKeyPath(aP_27);
  swift_getKeyPath(aP_86);
  v28 = v18;
  v29 = v20;

  sub_21CB81DC4();
  swift_getKeyPath(aP_27);
  swift_getKeyPath(aP_86);
  sub_21CB81DB4();

  v22 = v28;
  v21 = v29;

  v23 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v23 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    swift_getKeyPath(aP_27);
    swift_getKeyPath(aP_86);
    sub_21CB81DB4();

    v24 = v28;
    v25 = v29;
  }

  else
  {
    swift_getKeyPath(aP_84);
    swift_getKeyPath(a0_49);
    sub_21CB81DB4();

    v24 = PMAccount.effectiveTitle.getter();
    v25 = v26;
    sub_21C719660(v3, type metadata accessor for PMAccount);
  }

  swift_getKeyPath(byte_21CBC0F10);
  swift_getKeyPath(byte_21CBC0F38);
  v28 = v24;
  v29 = v25;

  sub_21CB81DC4();
  swift_getKeyPath(aP_84);
  swift_getKeyPath(a0_49);
  sub_21CB81DB4();

  sub_21CA4CBD4(v3);
  sub_21C719660(v3, type metadata accessor for PMAccount);
  swift_getKeyPath(byte_21CBC0DA8);
  swift_getKeyPath(byte_21CBC0DD0);
  LOBYTE(v28) = 0;

  sub_21CB81DC4();
  swift_getKeyPath(byte_21CBC0B80);
  swift_getKeyPath(byte_21CBC0BA8);
  LOBYTE(v28) = 0;

  sub_21CB81DC4();
  swift_getKeyPath(byte_21CBC0F58);
  swift_getKeyPath(byte_21CBC0F80);
  LOBYTE(v28) = 0;

  return sub_21CB81DC4();
}

uint64_t sub_21CA4A55C()
{
  v1 = *(v0 + 16);
  v2 = qword_27CDEA4C0;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v3 = sub_21C7072A8(v1, v9);

  v4 = sub_21CA4DE84();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 32))(v4, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21CA4A664()
{
  v0 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_21CA4DE84();
  v4 = [v3 hasChanges];

  if (v4)
  {
    swift_getKeyPath(asc_21CBC0D60);
    swift_getKeyPath(asc_21CBC0D88);
    v6[15] = 1;

    return sub_21CB81DC4();
  }

  else
  {
    swift_getKeyPath(aP_84);
    swift_getKeyPath(a0_49);
    sub_21CB81DB4();

    sub_21CA4AE80(v2);
    return sub_21C719660(v2, type metadata accessor for PMAccount);
  }
}

uint64_t sub_21CA4A830()
{
  v1[5] = v0;
  type metadata accessor for PMAccount(0);
  v1[6] = swift_task_alloc();
  v1[7] = sub_21CB858B4();
  v1[8] = sub_21CB858A4();
  v3 = sub_21CB85874();
  v1[9] = v3;
  v1[10] = v2;

  return MEMORY[0x2822009F8](sub_21CA4A8F8, v3, v2);
}

uint64_t sub_21CA4A8F8()
{
  v1 = v0[5];
  swift_getKeyPath(byte_21CBC0A10);
  swift_getKeyPath(byte_21CBC0A38);
  v0[2] = 9142498;
  v0[3] = 0xA300000000000000;

  sub_21CB81DC4();
  v2 = *(v1 + 16);
  v3 = qword_27CDEA4C0;

  if (v3 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v0[11] = sub_21C7072A8(v2, v0[4]);

  swift_getKeyPath(aP_84);
  swift_getKeyPath(a0_49);
  sub_21CB81DB4();

  v0[12] = sub_21CB858A4();
  v5 = sub_21CB85874();
  v0[13] = v5;
  v0[14] = v4;

  return MEMORY[0x2822009F8](sub_21CA4AAA4, v5, v4);
}

uint64_t sub_21CA4AAA4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = *(v0[11] + 24);
    ObjectType = swift_getObjectType();
    v9 = (*(v2 + 96) + **(v2 + 96));
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_21CA4AC48;
    v5 = v0[6];

    return v9(1, v5, ObjectType, v2);
  }

  else
  {

    sub_21C719660(v0[6], type metadata accessor for PMAccount);
    v7 = v0[9];
    v8 = v0[10];

    return MEMORY[0x2822009F8](sub_21CA4AE14, v7, v8);
  }
}

uint64_t sub_21CA4AC48()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_21CA4AD8C, v3, v2);
}

uint64_t sub_21CA4AD8C()
{

  sub_21C719660(v0[6], type metadata accessor for PMAccount);
  v1 = v0[9];
  v2 = v0[10];

  return MEMORY[0x2822009F8](sub_21CA4AE14, v1, v2);
}

uint64_t sub_21CA4AE14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CA4AE80(uint64_t a1)
{
  v2 = PMAccount.userName.getter();
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0xE000000000000000;
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  swift_getKeyPath(byte_21CBC09C8);
  swift_getKeyPath(byte_21CBC09F0);
  v20 = v4;
  v24 = v6;

  sub_21CB81DC4();
  v7 = PMAccount.password.getter();
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

  swift_getKeyPath(byte_21CBC0A10, v20, v24);
  swift_getKeyPath(byte_21CBC0A38);
  v21 = v9;
  v25 = v10;

  sub_21CB81DC4();
  v11 = PMAccount.notesEntry.getter();
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  swift_getKeyPath(byte_21CBC0A58, v21, v25);
  swift_getKeyPath(byte_21CBC0A80);
  v22 = v13;

  sub_21CB81DC4();
  v15 = PMAccount.customTitle.getter();
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v5 = v16;
  }

  swift_getKeyPath(aP_27, v22, v14);
  swift_getKeyPath(aP_86);

  sub_21CB81DC4();
  v18 = PMAccount.totpGenerator.getter();
  swift_getKeyPath(a8_32, v17, v5);
  swift_getKeyPath(byte_21CBC0B10);

  sub_21CB81DC4();
  sub_21CA4CBD4(a1);
  swift_getKeyPath(byte_21CBC0DA8, v18);
  swift_getKeyPath(byte_21CBC0DD0);
  LOBYTE(v23) = 0;

  sub_21CB81DC4();
  swift_getKeyPath(byte_21CBC0B80, v23);
  swift_getKeyPath(byte_21CBC0BA8);

  return sub_21CB81DC4();
}

uint64_t sub_21CA4B0DC@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_21CB85C44();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  v34 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v33);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v17 = type metadata accessor for PMAccount(0);
  v18 = v17 - 8;
  *&v19 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(aP_84, v19);
  swift_getKeyPath(a0_49);
  sub_21CB81DB4();

  sub_21CA4F030(&v21[*(v18 + 32)], v7, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719660(v21, type metadata accessor for PMAccount);
    sub_21CA50100(v7, v4, type metadata accessor for PMAccount.MockData);
    sub_21C950D6C(&v4[*(v33 + 72)], v13);
    v22 = type metadata accessor for PMAccount.MockData;
    v23 = v4;
  }

  else
  {
    v24 = *v7;
    sub_21CB85B94();

    v22 = type metadata accessor for PMAccount;
    v23 = v21;
  }

  sub_21C719660(v23, v22);
  sub_21C7C3490(v13, v16);
  sub_21C950D6C(v16, v10);
  v26 = v35;
  v25 = v36;
  if ((*(v35 + 48))(v10, 1, v36) == 1)
  {
    sub_21C6EA794(v16, &unk_27CDF20B0, &unk_21CBA0090);
    v27 = type metadata accessor for PMSharingGroup(0);
    return (*(*(v27 - 8) + 56))(v37, 1, 1, v27);
  }

  else
  {
    v29 = v34;
    (*(v26 + 32))(v34, v10, v25);
    v30 = *(v38 + 24);
    v31 = qword_27CDEA4C0;

    if (v31 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7073E8(v30, v39);

    sub_21CA1D444(v29, v37);

    (*(v26 + 8))(v29, v25);
    return sub_21C6EA794(v16, &unk_27CDF20B0, &unk_21CBA0090);
  }
}

double sub_21CA4B5A0()
{
  v1 = v0;
  swift_getKeyPath(aH_94);
  swift_getKeyPath(aH_95);

  sub_21CB81DC4();
  v2 = *(v0 + 16);
  v3 = qword_27CDEA4C0;

  if (v3 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v2, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  type metadata accessor for PMAccount(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21CBA0690;
  swift_getKeyPath(aP_84);
  swift_getKeyPath(a0_49);
  sub_21CB81DB4();

  sub_21C833194(v4, sub_21CA500F8, v1);

  return result;
}

uint64_t sub_21CA4B79C(uint64_t a1)
{
  v2 = v1;
  v159 = a1;
  v161 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v161);
  v160 = (&v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v167 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v167);
  v158 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v164 = &v134 - v6;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64C0, &qword_21CBC0C70);
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v155 = &v134 - v7;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64B8, &qword_21CBC0C68);
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v152 = &v134 - v8;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64B0, &qword_21CBC0C60);
  v146 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v144 = &v134 - v9;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64A8, &qword_21CBC0C58);
  v139 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v137 = &v134 - v10;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64A0, &qword_21CBC0C50);
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v135 = &v134 - v11;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  v163 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v13 = &v134 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v15 = *(v14 - 1);
  v168 = v14;
  v169 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v134 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6498, &qword_21CBC0C48);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v134 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6490, &qword_21CBC0C40);
  v23 = *(v22 - 8);
  *&v24 = MEMORY[0x28223BE20](v22).n128_u64[0];
  v26 = &v134 - v25;
  *(v2 + 16) = swift_getKeyPath(byte_21CBC0C98, v24);
  *(v2 + 24) = swift_getKeyPath(byte_21CBC0CC0);
  v27 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__accountDetailDeletionKind;
  *&v172[0] = 0;
  type metadata accessor for _ASDeleteKind(0);
  sub_21CB81D74();
  (*(v23 + 32))(v2 + v27, v26, v22);
  v28 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__deleteAlertConfiguration;
  *&v172[0] = sub_21CB12CF0(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6400, &qword_21CBC0820);
  sub_21CB81D74();
  (*(v19 + 32))(v2 + v28, v21, v18);
  v29 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__isEditing;
  LOBYTE(v172[0]) = 0;
  sub_21CB81D74();
  v30 = v168;
  v32 = (v169 + 32);
  v31 = *(v169 + 4);
  v31(v2 + v29, v17, v168);
  v33 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__hasEnteredEditMode;
  LOBYTE(v172[0]) = 0;
  sub_21CB81D74();
  v31(v2 + v33, v17, v30);
  v34 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__isPerformingAccountOperation;
  LOBYTE(v172[0]) = 0;
  sub_21CB81D74();
  v31(v2 + v34, v17, v30);
  v169 = v32;
  v35 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__allowEmptyFocus;
  LOBYTE(v172[0]) = 1;
  sub_21CB81D74();
  v31(v2 + v35, v17, v30);
  v36 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__usernameInputString;
  v136 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__usernameInputString;
  *&v172[0] = 0;
  *(&v172[0] + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v37 = *(v163 + 32);
  v38 = v2 + v36;
  v39 = v162;
  v37(v38, v13, v162);
  v40 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__usernameCommittedValue;
  v138 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__usernameCommittedValue;
  *&v172[0] = 0;
  *(&v172[0] + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v41 = v2 + v40;
  v42 = v39;
  v37(v41, v13, v39);
  v43 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__passwordInputString;
  v140 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__passwordInputString;
  *&v172[0] = 0;
  *(&v172[0] + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v37(v2 + v43, v13, v42);
  v44 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__passwordCommittedValue;
  v142 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__passwordCommittedValue;
  *&v172[0] = 0;
  *(&v172[0] + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v37(v2 + v44, v13, v42);
  v45 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__notesInputString;
  v143 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__notesInputString;
  *&v172[0] = 0;
  *(&v172[0] + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v37(v2 + v45, v13, v42);
  v46 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__notesCommittedValue;
  v145 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__notesCommittedValue;
  *&v172[0] = 0;
  *(&v172[0] + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v37(v2 + v46, v13, v42);
  v47 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__titleInputString;
  v147 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__titleInputString;
  *&v172[0] = 0;
  *(&v172[0] + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v37(v2 + v47, v13, v42);
  v48 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__titleCommittedValue;
  v150 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__titleCommittedValue;
  *&v172[0] = 0;
  *(&v172[0] + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v37(v2 + v48, v13, v42);
  v49 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__totpGeneratorWasAddedWhileEditing;
  LOBYTE(v172[0]) = 0;
  sub_21CB81D74();
  v50 = v168;
  v31(v2 + v49, v17, v168);
  v51 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__totpGenerator;
  v148 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__totpGenerator;
  *&v172[0] = 0;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6410, &unk_21CBC0828);
  v52 = v135;
  sub_21CB81D74();
  (*(v165 + 32))(v2 + v51, v52, v166);
  v53 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showEditWebsitesSheet;
  LOBYTE(v172[0]) = 0;
  sub_21CB81D74();
  v31(v2 + v53, v17, v50);
  v54 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__websites;
  v55 = MEMORY[0x277D84F90];
  *&v172[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE100, &unk_21CBA95B0);
  v56 = v137;
  sub_21CB81D74();
  v57 = *(v139 + 32);
  v58 = v141;
  v57(v2 + v54, v56, v141);
  v59 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__uncommittedWebsites;
  *&v172[0] = v55;
  sub_21CB81D74();
  v57(v2 + v59, v56, v58);
  v60 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__websiteSelection;
  *&v172[0] = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6428, &qword_21CBC0838);
  v61 = v144;
  sub_21CB81D74();
  (*(v146 + 32))(v2 + v60, v61, v149);
  v62 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showVerificationCodeAlert;
  LOBYTE(v172[0]) = 0;
  sub_21CB81D74();
  v63 = v168;
  v31(v2 + v62, v17, v168);
  v64 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showPasskeyLearnMoreSheet;
  LOBYTE(v172[0]) = 0;
  sub_21CB81D74();
  v31(v2 + v64, v17, v63);
  v65 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showPasswordHistorySheet;
  LOBYTE(v172[0]) = 0;
  sub_21CB81D74();
  v31(v2 + v65, v17, v63);
  v66 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showCancelEditingAlert;
  LOBYTE(v172[0]) = 0;
  sub_21CB81D74();
  v31(v2 + v66, v17, v63);
  v67 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showAddPasswordFieldForPasskey;
  LOBYTE(v172[0]) = 0;
  sub_21CB81D74();
  v31(v2 + v67, v17, v63);
  v68 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__accountsThatFailedToRecover;
  *&v172[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0138, &qword_21CBC0840);
  v69 = v152;
  sub_21CB81D74();
  (*(v153 + 32))(v2 + v68, v69, v154);
  v70 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__recoverToMyPasswordsAlertConfiguration;
  *&v172[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6440, &qword_21CBC0848);
  v71 = v155;
  sub_21CB81D74();
  (*(v156 + 32))(v2 + v70, v71, v157);
  v72 = v2 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_fileVaultRecoveryKeyModel;
  *v72 = 0u;
  *(v72 + 16) = 0u;
  *(v72 + 32) = 0u;
  *(v72 + 48) = 0u;
  v157 = v72;
  *(v72 + 64) = 0;
  v73 = (v2 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_onUncommittedChangesAlertConfirmation);
  *v73 = 0;
  v73[1] = 0;
  v74 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showUncommittedChangesAlert;
  LOBYTE(v172[0]) = 0;
  sub_21CB81D74();
  v31(v2 + v74, v17, v63);
  v75 = v159;
  v76 = v164;
  v168 = type metadata accessor for PMAccount;
  sub_21CA4F030(v159, v164, type metadata accessor for PMAccount);
  swift_beginAccess();
  sub_21CA4F030(v76, v158, type metadata accessor for PMAccount);
  sub_21CB81D74();
  v169 = type metadata accessor for PMAccount;
  sub_21C719660(v76, type metadata accessor for PMAccount);
  swift_endAccess();
  v77 = PMAccount.userName.getter();
  if (v78)
  {
    v79 = v77;
  }

  else
  {
    v79 = 0;
  }

  if (v78)
  {
    v80 = v78;
  }

  else
  {
    v80 = 0xE000000000000000;
  }

  v81 = v136;
  swift_beginAccess();
  v82 = *(v163 + 8);
  v83 = v162;
  v82(v2 + v81, v162);
  *&v170[0] = v79;
  *(&v170[0] + 1) = v80;
  sub_21CB81D74();
  swift_endAccess();
  v84 = PMAccount.userName.getter();
  if (v85)
  {
    v86 = v84;
  }

  else
  {
    v86 = 0;
  }

  if (v85)
  {
    v87 = v85;
  }

  else
  {
    v87 = 0xE000000000000000;
  }

  v88 = v138;
  swift_beginAccess();
  v82(v2 + v88, v83);
  *&v170[0] = v86;
  *(&v170[0] + 1) = v87;
  sub_21CB81D74();
  swift_endAccess();
  v89 = PMAccount.password.getter();
  if (v90)
  {
    v91 = v89;
  }

  else
  {
    v91 = 0;
  }

  if (v90)
  {
    v92 = v90;
  }

  else
  {
    v92 = 0xE000000000000000;
  }

  v93 = v140;
  swift_beginAccess();
  v82(v2 + v93, v83);
  *&v170[0] = v91;
  *(&v170[0] + 1) = v92;
  sub_21CB81D74();
  swift_endAccess();
  v94 = PMAccount.password.getter();
  if (v95)
  {
    v96 = v94;
  }

  else
  {
    v96 = 0;
  }

  if (v95)
  {
    v97 = v95;
  }

  else
  {
    v97 = 0xE000000000000000;
  }

  v98 = v142;
  swift_beginAccess();
  v82(v2 + v98, v83);
  *&v170[0] = v96;
  *(&v170[0] + 1) = v97;
  sub_21CB81D74();
  swift_endAccess();
  v99 = PMAccount.notesEntry.getter();
  if (v100)
  {
    v101 = v99;
  }

  else
  {
    v101 = 0;
  }

  if (v100)
  {
    v102 = v100;
  }

  else
  {
    v102 = 0xE000000000000000;
  }

  v103 = v143;
  swift_beginAccess();
  v82(v2 + v103, v83);
  *&v170[0] = v101;
  *(&v170[0] + 1) = v102;
  sub_21CB81D74();
  swift_endAccess();
  v104 = PMAccount.notesEntry.getter();
  if (v105)
  {
    v106 = v104;
  }

  else
  {
    v106 = 0;
  }

  if (v105)
  {
    v107 = v105;
  }

  else
  {
    v107 = 0xE000000000000000;
  }

  v108 = v145;
  swift_beginAccess();
  v82(v2 + v108, v83);
  *&v170[0] = v106;
  *(&v170[0] + 1) = v107;
  sub_21CB81D74();
  swift_endAccess();
  v109 = PMAccount.customTitle.getter();
  if (v110)
  {
    v111 = v109;
  }

  else
  {
    v111 = 0;
  }

  if (v110)
  {
    v112 = v110;
  }

  else
  {
    v112 = 0xE000000000000000;
  }

  v113 = v147;
  swift_beginAccess();
  v82(v2 + v113, v83);
  *&v170[0] = v111;
  *(&v170[0] + 1) = v112;
  sub_21CB81D74();
  swift_endAccess();
  v114 = PMAccount.effectiveTitle.getter();
  v116 = v115;
  v117 = v150;
  swift_beginAccess();
  v82(v2 + v117, v83);
  v118 = v164;
  *&v170[0] = v114;
  *(&v170[0] + 1) = v116;
  sub_21CB81D74();
  swift_endAccess();
  v119 = PMAccount.totpGenerator.getter();
  v120 = v148;
  swift_beginAccess();
  (*(v165 + 8))(v2 + v120, v166);
  *&v170[0] = v119;
  sub_21CB81D74();
  swift_endAccess();
  v121 = v168;
  sub_21CA4F030(v75, v118, v168);
  type metadata accessor for PMAccountHistoryModel(0);
  v122 = swift_allocObject();
  v123 = OBJC_IVAR____TtC17PasswordManagerUI21PMAccountHistoryModel__generatedPasswordStore;
  *(v122 + v123) = swift_getKeyPath(byte_21CBC0CE0);
  v124 = OBJC_IVAR____TtC17PasswordManagerUI21PMAccountHistoryModel__accountsState;
  *(v122 + v124) = swift_getKeyPath(byte_21CBC0C98);
  sub_21CB81104();
  sub_21CA4F030(v118, v122 + OBJC_IVAR____TtC17PasswordManagerUI21PMAccountHistoryModel__account, v121);
  *(v122 + OBJC_IVAR____TtC17PasswordManagerUI21PMAccountHistoryModel__historyItemsCount) = 0;
  sub_21C94CCE8();
  sub_21C719660(v118, v169);
  swift_beginAccess();
  *&v170[0] = v122;
  sub_21CB81D74();
  swift_endAccess();
  sub_21CA4CBD4(v75);
  v125 = v160;
  sub_21CA4F030(v75 + *(v167 + 24), v160, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719660(v125, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v126 = *v125;
    v127 = [v126 credentialTypes];

    if ((v127 & 8) != 0)
    {
      sub_21CA4F030(v75, v118, type metadata accessor for PMAccount);
      sub_21CAFAD24(v118, v172);
      sub_21C719660(v75, type metadata accessor for PMAccount);
      v128 = v157;
      v129 = *(v157 + 48);
      v170[2] = *(v157 + 32);
      v170[3] = v129;
      v171 = *(v157 + 64);
      v130 = *(v157 + 16);
      v170[0] = *v157;
      v170[1] = v130;
      v131 = v172[1];
      *v157 = v172[0];
      *(v128 + 16) = v131;
      v132 = v172[3];
      *(v128 + 32) = v172[2];
      *(v128 + 48) = v132;
      *(v128 + 64) = v173;
      sub_21C6EA794(v170, &qword_27CDEC670, &unk_21CBC0D00);
      return v2;
    }
  }

  sub_21C719660(v75, type metadata accessor for PMAccount);
  return v2;
}

uint64_t sub_21CA4CBD4(uint64_t a1)
{
  v3 = type metadata accessor for PMEditableWebsite(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = &v60 - v8;
  v9 = sub_21CB85C04();
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x28223BE20](v9);
  v61 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (&v60 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = (&v60 - v18);
  MEMORY[0x28223BE20](v20);
  v22 = (&v60 - v21);
  v68 = MEMORY[0x277D84F90];
  *&v66 = *(type metadata accessor for PMAccount(0) + 24);
  sub_21CA4F030(a1 + v66, v22, type metadata accessor for PMAccount.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v65 = v1;
  if (EnumCaseMultiPayload == 1)
  {
    sub_21C719660(v22, type metadata accessor for PMAccount.Storage);
    goto LABEL_10;
  }

  v24 = *v22;
  v25 = [v24 credentialTypes];
  v60 = a1;
  v26 = v25;

  v27 = v26 == 2;
  a1 = v60;
  if (v27)
  {
    sub_21CA4F030(v60 + v66, v19, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C719660(v19, type metadata accessor for PMAccount.Storage);
      v28 = v62;
      (*(v63 + 56))(v62, 1, 1, v64);
    }

    else
    {
      v29 = *v19;
      v28 = v62;
      sub_21CB85C14();

      v30 = v63;
      v31 = v64;
      if ((*(v63 + 48))(v28, 1, v64) != 1)
      {
        (*(v30 + 32))(v61, v28, v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB048, &qword_21CBA0DE8);
        v32 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v33 = v30;
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_21CBA0690;
        v35 = v34 + v32;
        v36 = sub_21CB85B64();
        v62 = v37;
        sub_21CB80E24();
        v38 = (v35 + *(v3 + 20));
        v39 = v62;
        *v38 = v36;
        v38[1] = v39;
        v40 = (v35 + *(v3 + 24));
        a1 = v60;
        *v40 = 0;
        v40[1] = 0;
        sub_21CAE8C7C(v34);
        (*(v33 + 8))(v61, v64);
        goto LABEL_10;
      }
    }

    sub_21C6EA794(v28, &unk_27CDEC2F0, &unk_21CBA1660);
  }

LABEL_10:
  v41 = v66;
  sub_21CA4F030(a1 + v66, v16, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719660(v16, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v42 = *v16;
    v43 = [*v16 hasValidWebsite];

    if (v43)
    {
      v44 = PMAccount.userVisibleSites.getter();
      v45 = PMAccount.sites.getter();
      v46 = sub_21CA4DB34(v44, v45);

      sub_21CAE8C7C(v46);
    }
  }

  sub_21CA4F030(a1 + v41, v13, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719660(v13, type metadata accessor for PMAccount.Storage);
    v47 = MEMORY[0x277D84F90];
    v48 = *(MEMORY[0x277D84F90] + 16);
    if (v48)
    {
      goto LABEL_16;
    }

LABEL_22:

    v49 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v56 = *v13;
  v57 = [*v13 additionalSites];
  v47 = sub_21CB85824();

  v48 = *(v47 + 16);
  if (!v48)
  {
    goto LABEL_22;
  }

LABEL_16:
  v67 = MEMORY[0x277D84F90];
  sub_21C7B1124(0, v48, 0);
  v49 = v67;
  v50 = (v47 + 40);
  v66 = xmmword_21CBA4340;
  do
  {
    v52 = *(v50 - 1);
    v51 = *v50;

    sub_21CB80E24();
    v53 = &v6[*(v3 + 20)];
    *v53 = v52;
    *(v53 + 1) = v51;
    *&v6[*(v3 + 24)] = v66;
    v67 = v49;
    v55 = *(v49 + 16);
    v54 = *(v49 + 24);
    if (v55 >= v54 >> 1)
    {
      sub_21C7B1124((v54 > 1), v55 + 1, 1);
      v49 = v67;
    }

    *(v49 + 16) = v55 + 1;
    sub_21CA50100(v6, v49 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v55, type metadata accessor for PMEditableWebsite);
    v50 += 2;
    --v48;
  }

  while (v48);

LABEL_23:
  sub_21CAE8C7C(v49);
  v58 = v68;
  swift_getKeyPath(byte_21CBC0B30);
  swift_getKeyPath(byte_21CBC0B58);
  v67 = v58;

  sub_21CB81DC4();
  swift_getKeyPath(aH_39);
  swift_getKeyPath(aH_93);
  v67 = v58;

  return sub_21CB81DC4();
}

uint64_t sub_21CA4D370(uint64_t a1)
{
  v2 = sub_21CB80E34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA4F030(v1, v8, type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x21CF15F90](1);
    sub_21C704B40(&qword_27CDEE130, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_21CB85494();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x21CF15F90](0);
    sub_21CB854C4();
  }
}

uint64_t sub_21CA4D558()
{
  v1 = v0;
  v2 = sub_21CB80E34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB86484();
  sub_21CA4F030(v1, v8, type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x21CF15F90](1);
    sub_21C704B40(&qword_27CDEE130, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_21CB85494();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x21CF15F90](0);
    sub_21CB854C4();
  }

  return sub_21CB864D4();
}

void sub_21CA4D830(void *a2@<X8>)
{
  swift_getKeyPath(a8_32);
  swift_getKeyPath(byte_21CBC0B10);
  sub_21CB81DB4();

  *a2 = v3;
}

uint64_t sub_21CA4D8B0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath(a8_32);
  swift_getKeyPath(byte_21CBC0B10);
  v3 = v2;

  return sub_21CB81DC4();
}

uint64_t sub_21CA4D930(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21CB80E34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB86484();
  sub_21CA4F030(v3, v10, type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    MEMORY[0x21CF15F90](1);
    sub_21C704B40(&qword_27CDEE130, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_21CB85494();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    MEMORY[0x21CF15F90](0);
    sub_21CB854C4();
  }

  return sub_21CB864D4();
}

uint64_t sub_21CA4DB34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMEditableWebsite(0);
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = &v44 - v8;
  v9 = *(a1 + 16);
  v10 = *(a2 + 16);
  if (v10 >= v9)
  {
    v11 = *(a1 + 16);
  }

  else
  {
    v11 = *(a2 + 16);
  }

  v55 = MEMORY[0x277D84F90];
  result = sub_21C7B1124(0, v11, 0);
  v54 = v55;
  v49 = v10;
  v50 = v9;
  v46 = a1;
  v47 = a2;
  v45 = v11;
  if (v11)
  {
    v13 = (a2 + 40);
    v14 = (a1 + 40);
    while (v9)
    {
      if (!v10)
      {
        goto LABEL_22;
      }

      v16 = *(v14 - 1);
      v15 = *v14;
      v17 = *v13;
      v53 = *(v13 - 1);

      sub_21CB80E24();
      v19 = v52;
      v18 = v53;
      v20 = &v6[*(v52 + 20)];
      *v20 = v16;
      *(v20 + 1) = v15;
      v21 = &v6[*(v19 + 24)];
      *v21 = v18;
      *(v21 + 1) = v17;
      v22 = v54;
      v55 = v54;
      v24 = *(v54 + 16);
      v23 = *(v54 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_21C7B1124((v23 > 1), v24 + 1, 1);
        v22 = v55;
      }

      *(v22 + 16) = v24 + 1;
      v25 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v54 = v22;
      result = sub_21CA50100(v6, v22 + v25 + *(v51 + 72) * v24, type metadata accessor for PMEditableWebsite);
      --v10;
      --v9;
      v13 += 2;
      v14 += 2;
      if (!--v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    v27 = v49;
    v26 = v50;
    if (v50 <= v49)
    {
      return v54;
    }

    v28 = v45;
    v29 = v46;
    v53 = 16 * v45;
    v30 = v47;
    while (v28 < v26)
    {
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_24;
      }

      if (v27 != v28)
      {
        if (v28 >= v27)
        {
          goto LABEL_25;
        }

        v33 = *(v29 + v53 + 32);
        v32 = *(v29 + v53 + 40);
        v34 = *(v30 + v53 + 32);
        v35 = *(v30 + v53 + 40);

        v36 = v48;
        sub_21CB80E24();
        v37 = v52;
        v38 = (v36 + *(v52 + 20));
        *v38 = v33;
        v38[1] = v32;
        v39 = (v36 + *(v37 + 24));
        *v39 = v34;
        v39[1] = v35;
        v40 = v54;
        v55 = v54;
        v42 = *(v54 + 16);
        v41 = *(v54 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_21C7B1124((v41 > 1), v42 + 1, 1);
          v36 = v48;
          v40 = v55;
        }

        ++v28;
        v29 += 16;
        v30 += 16;
        *(v40 + 16) = v42 + 1;
        v43 = (*(v51 + 80) + 32) & ~*(v51 + 80);
        v54 = v40;
        result = sub_21CA50100(v36, v40 + v43 + *(v51 + 72) * v42, type metadata accessor for PMEditableWebsite);
        v27 = v49;
        v26 = v50;
        if (v31 != v50)
        {
          continue;
        }
      }

      return v54;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_21CA4DE84()
{
  v0 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v0);
  v2 = (&v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v5 = (&v25 - v4);
  v6 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x277D49B28]) init];
  swift_getKeyPath(aP_84);
  swift_getKeyPath(a0_49);
  sub_21CB81DB4();

  sub_21CA4F030(&v11[*(v6 + 24)], v5, type metadata accessor for PMAccount.Storage);
  sub_21C719660(v11, type metadata accessor for PMAccount);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719660(v5, type metadata accessor for PMAccount.Storage);
    v13 = 0;
  }

  else
  {
    v13 = *v5;
  }

  [v12 setSavedAccount_];

  swift_getKeyPath(byte_21CBC09C8);
  swift_getKeyPath(byte_21CBC09F0);
  sub_21CB81DB4();

  v14 = sub_21CB85584();

  [v12 setUser_];

  swift_getKeyPath(byte_21CBC0A10);
  swift_getKeyPath(byte_21CBC0A38);
  sub_21CB81DB4();

  v15 = sub_21CB85584();

  [v12 setPassword_];

  swift_getKeyPath(byte_21CBC0A58);
  swift_getKeyPath(byte_21CBC0A80);
  sub_21CB81DB4();

  v16 = sub_21CB85584();

  [v12 setNotesEntry_];

  swift_getKeyPath(aP_27);
  swift_getKeyPath(aP_86);
  sub_21CB81DB4();

  v17 = sub_21CB85584();

  v18 = [v17 safari_stringByTrimmingWhitespace];

  if (!v18)
  {
    sub_21CB855C4();
    v18 = sub_21CB85584();
  }

  [v12 setCustomTitle_];

  swift_getKeyPath(a8_32);
  swift_getKeyPath(byte_21CBC0B10);
  sub_21CB81DB4();

  v19 = v25;
  [v12 setTotpGenerator_];

  v20 = sub_21CA4E454();
  swift_getKeyPath(aP_84);
  swift_getKeyPath(a0_49);
  sub_21CB81DB4();

  sub_21CA4F030(&v8[*(v6 + 24)], v2, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719660(v8, type metadata accessor for PMAccount);
    sub_21C719660(v2, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v21 = *v2;
    v22 = [*v2 hasValidWebsite];

    sub_21C719660(v8, type metadata accessor for PMAccount);
    if (v22)
    {
      [v12 setSites_];
    }
  }

  v23 = sub_21CB85814();

  [v12 setAdditionalSites_];

  return v12;
}

id sub_21CA4E454()
{
  v1 = v0;
  v2 = type metadata accessor for PMEditableWebsite(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v36 - v8;
  swift_getKeyPath(byte_21CBC0B30, v7);
  swift_getKeyPath(byte_21CBC0B58);
  sub_21CB81DB4();

  v10 = *(v41 + 16);
  v39 = v5;
  v40 = v2;
  if (v10)
  {
    v36 = v41;
    v37 = v1;
    v11 = &v9[*(v2 + 24)];
    v12 = v41 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v38 = v3;
    v13 = *(v3 + 72);
    v14 = MEMORY[0x277D84F90];
    do
    {
      sub_21CA4F030(v12, v9, type metadata accessor for PMEditableWebsite);
      v15 = *v11;
      v16 = v11[1];
      sub_21C7EC3F4(*v11, v16);
      sub_21C719660(v9, type metadata accessor for PMEditableWebsite);
      if (v16 < 2)
      {
        sub_21C858A90(v15, v16);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_21CA4F2EC(0, *(v14 + 2) + 1, 1, v14);
        }

        v18 = *(v14 + 2);
        v17 = *(v14 + 3);
        if (v18 >= v17 >> 1)
        {
          v14 = sub_21CA4F2EC((v17 > 1), v18 + 1, 1, v14);
        }

        *(v14 + 2) = v18 + 1;
        v19 = &v14[16 * v18];
        *(v19 + 4) = v15;
        *(v19 + 5) = v16;
        v2 = v40;
      }

      v12 += v13;
      --v10;
    }

    while (v10);

    v3 = v38;
    v5 = v39;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  swift_getKeyPath(byte_21CBC0B30, v36, v37);
  swift_getKeyPath(byte_21CBC0B58);
  sub_21CB81DB4();

  v20 = *(v41 + 16);
  if (v20)
  {
    v21 = &v5[*(v2 + 24)];
    v22 = *(v3 + 80);
    v38 = v41;
    v23 = v41 + ((v22 + 32) & ~v22);
    v24 = *(v3 + 72);
    v25 = MEMORY[0x277D84F90];
    do
    {
      sub_21CA4F030(v23, v5, type metadata accessor for PMEditableWebsite);
      if (*(v21 + 1) == 1)
      {
        v26 = &v5[*(v40 + 20)];
        v27 = *v26;
        v28 = *(v26 + 1);

        sub_21C719660(v5, type metadata accessor for PMEditableWebsite);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_21CA4F2EC(0, *(v25 + 2) + 1, 1, v25);
        }

        v30 = *(v25 + 2);
        v29 = *(v25 + 3);
        if (v30 >= v29 >> 1)
        {
          v25 = sub_21CA4F2EC((v29 > 1), v30 + 1, 1, v25);
        }

        *(v25 + 2) = v30 + 1;
        v31 = &v25[16 * v30];
        *(v31 + 4) = v27;
        *(v31 + 5) = v28;
        v5 = v39;
      }

      else
      {
        sub_21C719660(v5, type metadata accessor for PMEditableWebsite);
      }

      v23 += v24;
      --v20;
    }

    while (v20);
  }

  sub_21CA49578(v14);

  v32 = objc_allocWithZone(MEMORY[0x277CBEB18]);
  v33 = sub_21CB85814();

  v34 = [v32 initWithArray_];

  return v34;
}

uint64_t sub_21CA4E8A8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(asc_21CBC0FA8);
  swift_getKeyPath(asc_21CBC0FD0);

  sub_21CB81DC4();
  swift_getKeyPath(aH_94);
  swift_getKeyPath(aH_95);

  return sub_21CB81DC4();
}

uint64_t sub_21CA4E964(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(asc_21CBC0FA8);
  swift_getKeyPath(asc_21CBC0FD0);

  return sub_21CB81DC4();
}

uint64_t sub_21CA4E9E0()
{

  v1 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__account;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6488, &qword_21CBC0C38);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__accountDetailDeletionKind;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6490, &qword_21CBC0C40);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__deleteAlertConfiguration;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6498, &qword_21CBC0C48);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__isEditing;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__hasEnteredEditMode, v8);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__isPerformingAccountOperation, v8);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__allowEmptyFocus, v8);
  v10 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__usernameInputString;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v12(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__usernameCommittedValue, v11);
  v12(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__passwordInputString, v11);
  v12(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__passwordCommittedValue, v11);
  v12(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__notesInputString, v11);
  v12(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__notesCommittedValue, v11);
  v12(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__titleInputString, v11);
  v12(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__titleCommittedValue, v11);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__totpGeneratorWasAddedWhileEditing, v8);
  v13 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__totpGenerator;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64A0, &qword_21CBC0C50);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showEditWebsitesSheet, v8);
  v15 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__websites;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64A8, &qword_21CBC0C58);
  v17 = *(*(v16 - 8) + 8);
  v17(v0 + v15, v16);
  v17(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__uncommittedWebsites, v16);
  v18 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__websiteSelection;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64B0, &qword_21CBC0C60);
  (*(*(v19 - 8) + 8))(v0 + v18, v19);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showVerificationCodeAlert, v8);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showPasskeyLearnMoreSheet, v8);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showPasswordHistorySheet, v8);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showCancelEditingAlert, v8);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showAddPasswordFieldForPasskey, v8);
  v20 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__accountsThatFailedToRecover;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64B8, &qword_21CBC0C68);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  v22 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__recoverToMyPasswordsAlertConfiguration;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64C0, &qword_21CBC0C70);
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  v24 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__accountHistoryModel;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64C8, &qword_21CBC0C78);
  (*(*(v25 - 8) + 8))(v0 + v24, v25);
  sub_21CA50094(*(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_fileVaultRecoveryKeyModel), *(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_fileVaultRecoveryKeyModel + 8));
  sub_21C71B710(*(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_onUncommittedChangesAlertConfirmation), *(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_onUncommittedChangesAlertConfirmation + 8));
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showUncommittedChangesAlert, v8);
  return v0;
}

uint64_t sub_21CA4EFD0()
{
  sub_21CA4E9E0();

  return swift_deallocClassInstance();
}

uint64_t sub_21CA4F030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_21CA4F098(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB020, &qword_21CBA0D98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21CA4F1E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB000, &unk_21CBB0000);
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

char *sub_21CA4F2EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
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

void *sub_21CA4F420(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF78, &unk_21CBA0DD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21CA4F5B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE5B0, &unk_21CBA9F30);
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

char *sub_21CA4F6E8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_21CA4F7F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB018, &qword_21CBA0D90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21CA4F920(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64D0, &unk_21CBC0C80);
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

char *sub_21CA4FA54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64E8, &qword_21CBC1290);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21CA4FBC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6480, &qword_21CBC0BE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21CA4FD08(uint64_t a1, uint64_t a2)
{
  v27 = sub_21CB80E34();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v26 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6478, &unk_21CBC0BD0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  v17 = (&v26 + *(v16 + 56) - v14);
  sub_21CA4F030(a1, &v26 - v14, type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection);
  sub_21CA4F030(a2, v17, type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21CA4F030(v15, v12, type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection);
    v22 = *v12;
    v21 = v12[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v22 == *v17 && v21 == v17[1])
      {
      }

      else
      {
        v24 = sub_21CB86344();

        if ((v24 & 1) == 0)
        {
          sub_21C719660(v15, type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection);
          goto LABEL_8;
        }
      }

      sub_21C719660(v15, type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection);
      v19 = 1;
      return v19 & 1;
    }

LABEL_7:
    sub_21C6EA794(v15, &qword_27CDF6478, &unk_21CBC0BD0);
LABEL_8:
    v19 = 0;
    return v19 & 1;
  }

  sub_21CA4F030(v15, v9, type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v9, v27);
    goto LABEL_7;
  }

  v18 = v27;
  (*(v4 + 32))(v6, v17, v27);
  v19 = sub_21CB80E14();
  v20 = *(v4 + 8);
  v20(v6, v18);
  v20(v9, v18);
  sub_21C719660(v15, type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection);
  return v19 & 1;
}

uint64_t sub_21CA50094(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_21CA50100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA5016C()
{
  sub_21CA5019C();
  result = sub_21CB83314();
  qword_27CE185D0 = result;
  return result;
}

unint64_t sub_21CA5019C()
{
  result = qword_27CDF6500;
  if (!qword_27CDF6500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6500);
  }

  return result;
}

uint64_t sub_21CA50200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x21CF14400](v4, a3, &type metadata for PMOnDeleteCommand);
}

uint64_t sub_21CA50264@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    a1();
  }

  v3 = *MEMORY[0x277CDF120];
  v4 = sub_21CB85154();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_21CA502E8@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v2 = sub_21CB82444();
  v16 = *(v2 - 8);
  v17 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6508, &qword_21CBC13A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6510, &qword_21CBC13B0);
  v12 = sub_21CA50524();
  sub_21CB84304();
  sub_21CB82434();
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  sub_21C7335A8(v9, v10);
  v18 = v11;
  v19 = v12;
  swift_getOpaqueTypeConformance2();
  sub_21CB840F4();

  (*(v16 + 8))(v4, v17);
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_21CA50524()
{
  result = qword_27CDF6518[0];
  if (!qword_27CDF6518[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6510, &qword_21CBC13B0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDF6518);
  }

  return result;
}

uint64_t sub_21CA50590(uint64_t a1)
{
  result = sub_21CB85E54();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21CA50624()
{
  v1 = *(*v0 + 88);
  v2 = sub_21CB85E54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PMMoveAccountsList(uint64_t a1)
{
  result = qword_27CDF65A0;
  if (!qword_27CDF65A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CA50770(uint64_t a1)
{
  sub_21CA50814(319);
  if (v1 <= 0x3F)
  {
    sub_21C7226D8();
    if (v2 <= 0x3F)
    {
      sub_21CA5086C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CA50814(uint64_t a1)
{
  if (!qword_27CDF65B0)
  {
    type metadata accessor for PMSharingGroup(255);
    v1 = sub_21CB85E54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF65B0);
    }
  }
}

void sub_21CA5086C(uint64_t a1)
{
  if (!qword_27CDF65B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECBD0, &unk_21CBB9040);
    v1 = sub_21CB84D84();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF65B8);
    }
  }
}

unint64_t sub_21CA508E4()
{
  result = qword_27CDF65C0;
  if (!qword_27CDF65C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF65C0);
  }

  return result;
}

uint64_t sub_21CA50954()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = (v0 + *(type metadata accessor for PMMoveAccountsList(0) + 28));
  v5 = *v4;
  v6 = v4[1];
  v11 = *v4;
  v12 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF65D0, &qword_21CBC14E8);
  sub_21CB84D54();
  v7 = *(v10 + 16);

  if (!v7)
  {
    sub_21C6EDBAC(v0, v3, &qword_27CDF7670, &unk_21CBAA8F0);
    type metadata accessor for PMMoveAccountsListModel(0);
    swift_allocObject();
    v7 = sub_21CA58B68(v3);
    v11 = v5;
    v12 = v6;
    sub_21CB84D54();
    *(v10 + 16) = v7;
  }

  return v7;
}

uint64_t sub_21CA50AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21CA50954();
  v5 = *(v2 + *(a1 + 20));
  v6 = (v2 + *(a1 + 24));
  v8 = *v6;
  v7 = v6[1];
  KeyPath = swift_getKeyPath(aH_96);
  v10 = qword_27CDEA4C0;

  if (v10 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(KeyPath, v16);

  type metadata accessor for PMGroupsStore(0);
  sub_21C706578(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v11 = sub_21CB82674();
  v13 = v12;

  type metadata accessor for PMMoveAccountsListModel(0);
  sub_21C706578(&qword_27CDF65C8, type metadata accessor for PMMoveAccountsListModel, &unk_21CBC1B48);
  result = sub_21CB82674();
  *a2 = v5;
  *(a2 + 8) = v8;
  *(a2 + 16) = v7;
  *(a2 + 24) = result;
  *(a2 + 32) = v15;
  *(a2 + 40) = v11;
  *(a2 + 48) = v13;
  return result;
}

uint64_t sub_21CA50C44@<X0>(uint64_t a1@<X8>)
{
  v166 = a1;
  v2 = sub_21CB83C74();
  v164 = *(v2 - 8);
  v165 = v2;
  MEMORY[0x28223BE20](v2);
  v163 = &v136 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB83584();
  v161 = *(v4 - 8);
  v162 = v4;
  MEMORY[0x28223BE20](v4);
  v160 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB829D4();
  v158 = *(v6 - 8);
  v159 = v6;
  MEMORY[0x28223BE20](v6);
  v157 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMAccount(0);
  v190 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v189 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v187 = &v136 - v11;
  v181 = sub_21CB81024();
  v184 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v180 = (&v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v182 = sub_21CB82FD4();
  v171 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v174 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_21CB85114();
  v167 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v15 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF65E0, &qword_21CBC1588);
  MEMORY[0x28223BE20](v16);
  v18 = &v136 - v17;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF65E8, &qword_21CBC1590);
  v175 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v168 = &v136 - v19;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF65F0, &qword_21CBC1598);
  v183 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v172 = &v136 - v20;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF65F8, &qword_21CBC15A0);
  v188 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v173 = &v136 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6600, &qword_21CBC15A8);
  v136 = *(v22 - 8);
  v137 = v22;
  MEMORY[0x28223BE20](v22);
  v179 = &v136 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6608, &qword_21CBC15B0);
  v138 = *(v24 - 8);
  v139 = v24;
  MEMORY[0x28223BE20](v24);
  v177 = &v136 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6610, &qword_21CBC15B8);
  v141 = *(v26 - 8);
  v142 = v26;
  MEMORY[0x28223BE20](v26);
  v140 = &v136 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6618, &qword_21CBC15C0);
  v145 = *(v28 - 8);
  v146 = v28;
  MEMORY[0x28223BE20](v28);
  v143 = &v136 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6620, &qword_21CBC15C8);
  v147 = *(v30 - 8);
  v148 = v30;
  MEMORY[0x28223BE20](v30);
  v144 = &v136 - v31;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6628, &qword_21CBC15D0);
  MEMORY[0x28223BE20](v152);
  v149 = &v136 - v32;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6630, &qword_21CBC15D8);
  v153 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v150 = &v136 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6638, &qword_21CBC15E0);
  v154 = *(v34 - 8);
  v155 = v34;
  MEMORY[0x28223BE20](v34);
  v151 = &v136 - v35;
  v36 = *(v1 + 32);
  v185 = *(v1 + 24);
  v186 = v1;
  sub_21CA579EC();
  v193 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6640, &qword_21CBC15E8);
  sub_21CA56404();
  sub_21CB83F14();
  KeyPath = swift_getKeyPath(byte_21CBC15F8);
  v38 = &v18[*(v16 + 36)];
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED938, &qword_21CBA7D60) + 28);
  v40 = v167;
  v41 = v15;
  v42 = v15;
  v43 = v169;
  (*(v167 + 104))(v42, *MEMORY[0x277CDF0D0], v169);
  sub_21CB84F74();
  (*(v40 + 8))(v41, v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  (*(*(v44 - 8) + 56))(v38 + v39, 0, 1, v44);
  *v38 = KeyPath;
  v45 = v171;
  v46 = v174;
  v47 = v182;
  (*(v171 + 104))(v174, *MEMORY[0x277CDDDC0], v182);
  v48 = sub_21CA564B4();
  v49 = v168;
  sub_21CB84684();
  (*(v45 + 8))(v46, v47);
  sub_21C6EA794(v18, &qword_27CDF65E0, &qword_21CBC1588);
  v50 = v36;
  *&v201 = sub_21CA5661C(v36);
  *(&v201 + 1) = v51;
  *&v194 = v16;
  *(&v194 + 1) = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = sub_21C71F3FC();
  v54 = v172;
  v55 = v170;
  v56 = MEMORY[0x277D837D0];
  sub_21CB842F4();

  (v175[1])(v49, v55);
  v191 = v50;
  sub_21CA57B50();

  *&v201 = v55;
  *(&v201 + 1) = v56;
  *&v202 = OpaqueTypeConformance2;
  *(&v202 + 1) = v53;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v173;
  v59 = v176;
  sub_21CB84644();
  (*(v183 + 8))(v54, v59);
  v60 = v180;
  sub_21CB81014();
  v61 = sub_21CB81004();
  v63 = v62;
  v64 = *(v184 + 8);
  v184 += 8;
  v174 = v64;
  (v64)(v60, v181);
  *&v194 = v61;
  *(&v194 + 1) = v63;
  v65 = type metadata accessor for PMMoveAccountsListModel(0);
  v66 = sub_21C706578(&qword_27CDF65C8, type metadata accessor for PMMoveAccountsListModel, &unk_21CBC1B48);
  v182 = v65;
  sub_21CB82684();
  swift_getKeyPath(byte_21CBC1638);
  v183 = v66;
  sub_21CB82694();

  v192 = v186;
  v196 = v59;
  v197 = v57;
  v67 = swift_getOpaqueTypeConformance2();
  v176 = v53;
  v175 = v67;
  v68 = v178;
  sub_21CB84754();

  (*(v188 + 8))(v58, v68);
  result = sub_21CA57B50();
  v70 = result;
  v71 = *(result + 16);
  if (v71)
  {
    v72 = 0;
    v188 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsThatReuseAPasswordFromMyPasswords;
    v73 = MEMORY[0x277D84F90];
    v74 = v187;
    while (v72 < *(v70 + 16))
    {
      v75 = (*(v190 + 80) + 32) & ~*(v190 + 80);
      v76 = v190[9];
      sub_21CA57350(v70 + v75 + v76 * v72, v74, type metadata accessor for PMAccount);
      v77 = *(v191 + v188);

      v78 = sub_21C8FFBD8(v74, v77);

      if (v78)
      {
        sub_21CA573C8(v74, v189, type metadata accessor for PMAccount);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v201 = v73;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v73 + 16) + 1, 1);
          v73 = v201;
        }

        v81 = *(v73 + 16);
        v80 = *(v73 + 24);
        if (v81 >= v80 >> 1)
        {
          sub_21C7B0C4C((v80 > 1), v81 + 1, 1);
          v73 = v201;
        }

        *(v73 + 16) = v81 + 1;
        result = sub_21CA573C8(v189, v73 + v75 + v81 * v76, type metadata accessor for PMAccount);
        v74 = v187;
      }

      else
      {
        result = sub_21C7196C0(v74, type metadata accessor for PMAccount);
      }

      if (v71 == ++v72)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    sub_21CA57B50();

    v82 = v180;
    sub_21CB81014();
    v83 = sub_21CB81004();
    v85 = v84;
    (v174)(v82, v181);
    *&v201 = v83;
    *(&v201 + 1) = v85;
    v86 = MEMORY[0x277D837D0];
    v87 = v176;
    v88 = sub_21CB84054();
    v187 = v89;
    v188 = v88;
    LODWORD(v181) = v90;
    v184 = v91;
    sub_21CB82684();
    swift_getKeyPath(aP_87);
    sub_21CB82694();

    v180 = &v136;
    v173 = v194;
    LODWORD(v174) = v195;
    MEMORY[0x28223BE20](v92);
    MEMORY[0x28223BE20](v93);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6688, &qword_21CBC1688);
    *&v201 = v178;
    *(&v201 + 1) = v86;
    *&v202 = MEMORY[0x277CE1428];
    *(&v202 + 1) = MEMORY[0x277CE0BD8];
    *&v203 = v175;
    *(&v203 + 1) = v87;
    *&v204 = MEMORY[0x277CE1410];
    *(&v204 + 1) = MEMORY[0x277CE0BC8];
    v95 = swift_getOpaqueTypeConformance2();
    v189 = sub_21C6EADEC(&qword_27CDF6690, &qword_27CDF6688, &qword_21CBC1688, MEMORY[0x277CE14C0]);
    v190 = v95;
    v96 = v94;
    v97 = v137;
    v98 = v181;
    v100 = v187;
    v99 = v188;
    v101 = v179;
    sub_21CB84744();

    sub_21C74A72C(v99, v100, v98 & 1);

    (*(v136 + 8))(v101, v97);
    swift_getKeyPath(aH_97);
    swift_getKeyPath(asc_21CBC16B8);
    sub_21CB81DB4();

    v102 = *(&v201 + 1);
    if (*(&v201 + 1))
    {
      v103 = v201;

      sub_21CA567E0(v103, v102);
    }

    else
    {
      v102 = 0xE100000000000000;
      v103 = 63;
    }

    v174 = v102;
    v199 = v103;
    v200 = v102;
    sub_21CB82684();
    swift_getKeyPath(byte_21CBC16D8);
    sub_21CB82694();

    v187 = v196;
    v184 = v197;
    LODWORD(v188) = v198;
    swift_getKeyPath(aH_97);
    swift_getKeyPath(asc_21CBC16B8);
    sub_21CB81DB4();

    v175 = &v136;
    v180 = *(&v201 + 1);
    v181 = v201;
    v178 = *(&v202 + 1);
    v179 = v202;
    v194 = v201;
    v195 = v202;
    MEMORY[0x28223BE20](v104);
    v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1748, &qword_21CBBDF70);
    v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6698, &qword_21CBC1708);
    *&v201 = v97;
    *(&v201 + 1) = v96;
    *&v202 = MEMORY[0x277CE0BD8];
    *(&v202 + 1) = v190;
    *&v203 = v189;
    *(&v203 + 1) = MEMORY[0x277CE0BC8];
    v105 = swift_getOpaqueTypeConformance2();
    v106 = sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70, MEMORY[0x277CE14C0]);
    v107 = v176;
    v108 = v139;
    v109 = v140;
    v110 = v177;
    sub_21CB84714();

    sub_21CA567E0(v181, v180);

    v111 = (*(v138 + 8))(v110, v108);
    v190 = &v136;
    MEMORY[0x28223BE20](v111);
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED918, &qword_21CBC1710);
    *&v201 = v108;
    *(&v201 + 1) = MEMORY[0x277D837D0];
    *&v202 = v172;
    *(&v202 + 1) = MEMORY[0x277CE0BD8];
    *&v203 = v173;
    *(&v203 + 1) = v105;
    *&v204 = v107;
    *(&v204 + 1) = v106;
    *&v205 = MEMORY[0x277CE0BC8];
    v113 = swift_getOpaqueTypeConformance2();
    v114 = sub_21C6EADEC(&qword_27CDED910, &qword_27CDED918, &qword_21CBC1710, MEMORY[0x277CDDF68]);
    v116 = v142;
    v115 = v143;
    sub_21CB84894();
    (*(v141 + 8))(v109, v116);
    v117 = v157;
    sub_21CB85294();
    *&v201 = v116;
    *(&v201 + 1) = v112;
    *&v202 = v113;
    *(&v202 + 1) = v114;
    swift_getOpaqueTypeConformance2();
    sub_21C706578(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    v118 = v144;
    v119 = v146;
    v120 = v159;
    sub_21CB849C4();
    (*(v158 + 8))(v117, v120);
    (*(v145 + 8))(v115, v119);
    sub_21CB85214();
    sub_21CB82AC4();
    v121 = v149;
    (*(v147 + 32))(v149, v118, v148);
    v122 = v152;
    v123 = (v121 + *(v152 + 36));
    v124 = v206;
    v123[4] = v205;
    v123[5] = v124;
    v123[6] = v207;
    v125 = v202;
    *v123 = v201;
    v123[1] = v125;
    v126 = v204;
    v123[2] = v203;
    v123[3] = v126;
    sub_21CB82684();
    sub_21CB82694();

    v127 = v160;
    sub_21CB83574();
    v135 = sub_21CA56834();
    v128 = v150;
    sub_21CB84114();

    (*(v161 + 8))(v127, v162);
    sub_21C6EA794(v121, &qword_27CDF6628, &qword_21CBC15D0);
    v129 = v163;
    sub_21CB83C64();
    v194 = __PAIR128__(v135, v122);
    v130 = swift_getOpaqueTypeConformance2();
    v131 = v151;
    v132 = v156;
    sub_21CB846A4();
    (*(v164 + 8))(v129, v165);
    (*(v153 + 8))(v128, v132);
    *&v194 = v132;
    *(&v194 + 1) = v130;
    v133 = swift_getOpaqueTypeConformance2();
    v134 = v155;
    MEMORY[0x21CF14040](1, v155, v133);
    return (*(v154 + 8))(v131, v134);
  }

  return result;
}

uint64_t sub_21CA52710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for PMAccount(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 32);
  v15 = sub_21CA57B50();
  v38 = MEMORY[0x277D84F90];
  v16 = *(v15 + 16);
  if (v16)
  {
    v35 = v14;
    v36 = a2;
    v17 = *(v11 + 80);
    v37 = v15;
    v18 = v15 + ((v17 + 32) & ~v17);
    v19 = *(v10 + 24);
    v20 = *(v11 + 72);
    v21 = MEMORY[0x277D84F90];
    do
    {
      sub_21CA57350(v18, v13, type metadata accessor for PMAccount);
      sub_21CA57350(&v13[v19], v6, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C7196C0(v6, type metadata accessor for PMAccount.Storage);
        sub_21C7196C0(v13, type metadata accessor for PMAccount);
      }

      else
      {
        v22 = sub_21C7196C0(v13, type metadata accessor for PMAccount);
        MEMORY[0x21CF15300](v22);
        if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v34 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_21CB85834();
        }

        sub_21CB85854();
        v21 = v38;
      }

      v18 += v20;
      --v16;
    }

    while (v16);

    v14 = v35;
    a2 = v36;
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  sub_21C6EDBAC(v14 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group, v9, &qword_27CDF7670, &unk_21CBAA8F0);
  v23 = type metadata accessor for PMSharingGroup(0);
  if ((*(*(v23 - 8) + 48))(v9, 1, v23) == 1)
  {
    sub_21C6EA794(v9, &qword_27CDF7670, &unk_21CBAA8F0);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v26 = &v9[*(v23 + 20)];
    v24 = *v26;
    v25 = v26[1];

    sub_21C7196C0(v9, type metadata accessor for PMSharingGroup);
  }

  v27 = sub_21C7C1BFC(v21, v24, v25);
  v29 = v28;

  v38 = v27;
  v39 = v29;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a2 = result;
  *(a2 + 8) = v31;
  *(a2 + 16) = v32 & 1;
  *(a2 + 24) = v33;
  return result;
}

uint64_t sub_21CA52B18@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v64 = a2;
  v62 = sub_21CB82A04();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v51 - v6;
  v8 = sub_21CB81024();
  v54 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v13 = *(v12 - 8);
  v56 = v12;
  v57 = v13;
  MEMORY[0x28223BE20](v12);
  v63 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE48, &qword_21CBA3780);
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  sub_21CB81014();
  v22 = sub_21CB81004();
  v24 = v23;
  v25 = *(v9 + 8);
  v53 = v9 + 8;
  v55 = v25;
  v25(v11, v8);
  *&v69 = v22;
  *(&v69 + 1) = v24;
  sub_21CB81EF4();
  v26 = sub_21CB81F14();
  (*(*(v26 - 8) + 56))(v7, 0, 1, v26);
  sub_21C71F3FC();
  v27 = v17;
  sub_21CB84DC4();
  sub_21CB829F4();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  v28 = v21;
  v52 = v21;
  v29 = v56;
  sub_21CB84334();
  (*(v60 + 8))(v4, v62);
  v30 = v57;
  v60 = *(v57 + 8);
  v62 = v57 + 8;
  v31 = v29;
  (v60)(v27, v29);
  sub_21CB81014();
  v32 = sub_21CB81004();
  v34 = v33;
  v55(v11, v54);
  v66 = v32;
  v67 = v34;
  v35 = *(a1 + 24);
  v68 = *(a1 + 40);
  v69 = v35;
  v36 = swift_allocObject();
  v37 = *(a1 + 16);
  *(v36 + 16) = *a1;
  *(v36 + 32) = v37;
  *(v36 + 48) = *(a1 + 32);
  *(v36 + 64) = *(a1 + 48);

  sub_21C6EDBAC(&v69, v65, &qword_27CDF66A8, &qword_21CBC1748);
  sub_21C6EDBAC(&v68, v65, &qword_27CDF66B0, &qword_21CBC1750);
  v38 = v27;
  v51 = v27;
  sub_21CB84DE4();
  v40 = v58;
  v39 = v59;
  v41 = *(v59 + 16);
  v42 = v28;
  v43 = v61;
  v41(v58, v42, v61);
  v44 = *(v30 + 16);
  v45 = v63;
  v44(v63, v38, v31);
  v46 = v64;
  v41(v64, v40, v43);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF66B8, &qword_21CBC17B8);
  v44(&v46[*(v47 + 48)], v45, v31);
  v48 = v60;
  (v60)(v51, v31);
  v49 = *(v39 + 8);
  v49(v52, v43);
  v48(v45, v31);
  return (v49)(v40, v43);
}

uint64_t sub_21CA53184@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = sub_21CB81024();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v31 - v9);
  v38 = *(a1 + 32);
  result = sub_21CA57B50();
  v12 = result;
  v13 = *(result + 16);
  if (v13)
  {
    v14 = 0;
    v36 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsThatReuseAPasswordFromMyPasswords;
    v15 = MEMORY[0x277D84F90];
    while (v14 < *(v12 + 16))
    {
      v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v17 = *(v6 + 72);
      sub_21CA57350(v12 + v16 + v17 * v14, v10, type metadata accessor for PMAccount);
      v18 = *(v38 + v36);

      v19 = sub_21C8FFBD8(v10, v18);

      if (v19)
      {
        sub_21CA573C8(v10, v37, type metadata accessor for PMAccount);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v15 + 16) + 1, 1);
          v15 = v39;
        }

        v22 = *(v15 + 16);
        v21 = *(v15 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_21C7B0C4C((v21 > 1), v22 + 1, 1);
          v15 = v39;
        }

        *(v15 + 16) = v22 + 1;
        result = sub_21CA573C8(v37, v15 + v16 + v22 * v17, type metadata accessor for PMAccount);
      }

      else
      {
        result = sub_21C7196C0(v10, type metadata accessor for PMAccount);
      }

      if (v13 == ++v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    sub_21CA57B50();

    v23 = v32;
    sub_21CB81014();
    v24 = sub_21CB81004();
    v26 = v25;
    (*(v33 + 8))(v23, v34);
    v39 = v24;
    v40 = v26;
    sub_21C71F3FC();
    result = sub_21CB84054();
    v27 = v35;
    *v35 = result;
    v27[1] = v28;
    *(v27 + 16) = v29 & 1;
    v27[3] = v30;
  }

  return result;
}

uint64_t sub_21CA5355C@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v40 - v4;
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v45 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v44 = v40 - v13;
  MEMORY[0x28223BE20](v14);
  v43 = v40 - v15;
  MEMORY[0x28223BE20](v16);
  v41 = v40 - v17;
  sub_21CB81014();
  v18 = sub_21CB81004();
  v20 = v19;
  v21 = *(v7 + 8);
  v40[1] = v7 + 8;
  v21(v9, v6);
  *&v51 = v18;
  *(&v51 + 1) = v20;
  sub_21CB81EF4();
  v22 = sub_21CB81F14();
  (*(*(v22 - 8) + 56))(v5, 0, 1, v22);
  sub_21C71F3FC();
  sub_21CB84DC4();
  sub_21CB81014();
  v23 = sub_21CB81004();
  v25 = v24;
  v21(v9, v6);
  v48 = v23;
  v49 = v25;
  v26 = *(a1 + 24);
  v50 = *(a1 + 40);
  v51 = v26;
  v27 = swift_allocObject();
  v28 = *(a1 + 16);
  *(v27 + 16) = *a1;
  *(v27 + 32) = v28;
  *(v27 + 48) = *(a1 + 32);
  *(v27 + 64) = *(a1 + 48);

  sub_21C6EDBAC(&v51, v47, &qword_27CDF66A8, &qword_21CBC1748);
  sub_21C6EDBAC(&v50, v47, &qword_27CDF66B0, &qword_21CBC1750);
  v29 = v43;
  sub_21CB84DE4();
  v31 = v41;
  v30 = v42;
  v32 = *(v42 + 16);
  v33 = v44;
  v32(v44, v41, v10);
  v34 = v45;
  v35 = v29;
  v32(v45, v29, v10);
  v36 = v46;
  v32(v46, v33, v10);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v32(&v36[*(v37 + 48)], v34, v10);
  v38 = *(v30 + 8);
  v38(v35, v10);
  v38(v31, v10);
  v38(v34, v10);
  return (v38)(v33, v10);
}

uint64_t sub_21CA53A24(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState);
  v6 = qword_27CDEA4C0;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v5, v11);

  v7 = sub_21CA57B50();
  v8 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group;

  sub_21C835C98(v7, v4 + v8, a2, v4);

  return (*(a1 + 8))(v9);
}

uint64_t sub_21CA53B38@<X0>(uint64_t a2@<X8>)
{
  sub_21C71F3FC();

  result = sub_21CB84054();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_21CA53BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA78, &qword_21CBC1740);
  MEMORY[0x28223BE20](v19);
  v4 = &v17 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA80, &unk_21CBA81E0);
  v5 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = &v17 - v6;
  v8 = sub_21CB83604();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA88, &qword_21CBAEF10);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  sub_21CB835D4();
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C844588();
  sub_21CB82194();
  sub_21CB835C4();
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  sub_21CB82194();
  v13 = *(v19 + 48);
  (*(v10 + 16))(v4, v12, v9);
  v14 = &v4[v13];
  v15 = v18;
  (*(v5 + 16))(v14, v7, v18);
  sub_21CB83394();
  (*(v5 + 8))(v7, v15);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_21CA53EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v22[-v9];
  sub_21CB81014();
  sub_21CB81014();
  v11 = sub_21CB80FF4();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v10, v4);
  v23 = v11;
  v24 = v13;
  v26 = *(a1 + 24);
  v25 = *(a1 + 40);
  v15 = swift_allocObject();
  v16 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a1 + 32);
  *(v15 + 64) = *(a1 + 48);

  sub_21C6EDBAC(&v26, v22, &qword_27CDF66A8, &qword_21CBC1748);
  sub_21C6EDBAC(&v25, v22, &qword_27CDF66B0, &qword_21CBC1750);
  sub_21C71F3FC();
  sub_21CB84DE4();
  v17 = *(sub_21CA57B50() + 16);

  LOBYTE(v7) = v17 == 0;
  KeyPath = swift_getKeyPath(byte_21CBC1758);
  v19 = swift_allocObject();
  *(v19 + 16) = v7;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v21 = (a2 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = sub_21C735744;
  v21[2] = v19;
  return result;
}

uint64_t sub_21CA541F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22[-v3];
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v22[-v10];
  if (*a1)
  {
    sub_21CB81014();
    v12 = sub_21CB81004();
    v14 = v13;
    (*(v6 + 8))(v11, v5);
  }

  else
  {
    sub_21CB81014();
    sub_21CB81014();
    v12 = sub_21CB80FF4();
    v14 = v15;
    v16 = *(v6 + 8);
    v16(v8, v5);
    v16(v11, v5);
  }

  v23 = v12;
  v24 = v14;
  sub_21CB81EF4();
  v17 = sub_21CB81F14();
  (*(*(v17 - 8) + 56))(v4, 0, 1, v17);
  v18 = *(a1 + 24);
  v25 = *(a1 + 40);
  v26 = v18;
  v19 = swift_allocObject();
  v20 = *(a1 + 16);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(a1 + 32);
  *(v19 + 64) = *(a1 + 48);

  sub_21C6EDBAC(&v26, v22, &qword_27CDF66A8, &qword_21CBC1748);
  sub_21C6EDBAC(&v25, v22, &qword_27CDF66B0, &qword_21CBC1750);
  sub_21C71F3FC();
  return sub_21CB84DC4();
}

uint64_t sub_21CA544FC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF66C0, &qword_21CBC1800);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v42 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF66C8, &qword_21CBC1808);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF66D0, &qword_21CBC1810);
  v48 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v47 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF66D8, &qword_21CBC1818);
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF66E0, &qword_21CBC1820);
  v46 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  sub_21CA54AA0(a1, v17);
  sub_21CA56D28();
  sub_21CB85034();
  v53 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6710, &qword_21CBC1838);
  sub_21CA56F58();
  v22 = v14;
  sub_21CB85054();
  swift_getKeyPath(byte_21CBC1878);
  sub_21CB81DB4();

  v23 = *(v54 + 16);

  if (v23)
  {
    v24 = v42;
    sub_21CA54E8C();
    (*(v4 + 32))(v10, v24, v3);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v4 + 56))(v10, v25, 1, v3);
  v26 = v46;
  v27 = *(v46 + 16);
  v28 = v50;
  v45 = v21;
  v27(v50, v21, v51);
  v29 = v47;
  v30 = v48;
  v42 = *(v48 + 16);
  v44 = v22;
  v31 = v22;
  v32 = v43;
  (v42)(v47, v31, v43);
  sub_21C6EDBAC(v10, v52, &qword_27CDF66C8, &qword_21CBC1808);
  v33 = v49;
  v34 = v28;
  v35 = v51;
  v27(v49, v34, v51);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6720, &qword_21CBC1898);
  (v42)(&v33[*(v36 + 48)], v29, v32);
  v37 = v52;
  sub_21C6EDBAC(v52, &v33[*(v36 + 64)], &qword_27CDF66C8, &qword_21CBC1808);
  sub_21C6EA794(v10, &qword_27CDF66C8, &qword_21CBC1808);
  v38 = *(v30 + 8);
  v38(v44, v32);
  v39 = *(v26 + 8);
  v39(v45, v35);
  sub_21C6EA794(v37, &qword_27CDF66C8, &qword_21CBC1808);
  v38(v29, v32);
  return (v39)(v50, v35);
}