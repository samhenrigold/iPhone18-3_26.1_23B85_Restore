uint64_t Com_Apple_Siri_Product_Proto_IntentHierarchy.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C095D41C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1C095D35C();
          sub_1C095D40C();
        }

        else if (result == 4)
        {
          sub_1C05A7BC4(a1, v5, a2, a3);
        }
      }

      else if (result == 1)
      {
        type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0);
        sub_1C05AB400(&qword_1EBE14FF0, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_ProtoIntent);
        sub_1C095D54C();
      }

      else if (result == 2)
      {
        sub_1C05A7ACC(a1, v5, a2, a3);
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C05A7ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C095D35C();
  type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList(0);
  sub_1C05AB400(&qword_1EBE177D8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_IntegerList);
  sub_1C05AB400(&qword_1EBE177E0, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_IntegerList);
  return sub_1C095D3FC();
}

uint64_t sub_1C05A7BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C095D35C();
  type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList(0);
  sub_1C05AB400(&qword_1EBE177D8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_IntegerList);
  sub_1C05AB400(&qword_1EBE177E0, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_IntegerList);
  return sub_1C095D3FC();
}

uint64_t Com_Apple_Siri_Product_Proto_IntentHierarchy.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*(*v3 + 16))
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0);
    sub_1C05AB400(&qword_1EBE14FF0, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_ProtoIntent);
    result = sub_1C095D69C();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3[1] + 16))
  {
    sub_1C095D35C();
    type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList(0);
    sub_1C05AB400(&qword_1EBE177D8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_IntegerList);
    sub_1C05AB400(&qword_1EBE177E0, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_IntegerList);
    result = sub_1C095D5BC();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3[2] + 16))
  {
    sub_1C095D35C();
    v7 = v5;
    result = sub_1C095D5CC();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v7 = v5;
  }

  if (!*(v3[3] + 16) || (sub_1C095D35C(), type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList(0), sub_1C05AB400(&qword_1EBE177D8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_IntegerList), sub_1C05AB400(&qword_1EBE177E0, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_IntegerList), result = sub_1C095D5BC(), !v7))
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_IntentHierarchy(0);
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C05A7FF0@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = sub_1C058BE34(v2);
  a1[2] = sub_1C058C00C(v2);
  a1[3] = sub_1C058BE34(v2);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05A8074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C05A80E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C05A81B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05AB400(&qword_1EBE17928, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentHierarchy, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_IntentHierarchy);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05A8250(uint64_t a1)
{
  v2 = sub_1C05AB400(&qword_1EBE178B8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentHierarchy, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_IntentHierarchy);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05A82BC(uint64_t a1, uint64_t a2)
{
  sub_1C05AB400(&qword_1EBE178B8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentHierarchy, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_IntentHierarchy);

  return sub_1C095D5AC();
}

uint64_t sub_1C05A836C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C096E0C0;
  v9 = v8 + v7 + v6[14];
  *(v8 + v7) = 1;
  *v9 = a3;
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69D26E0];
  v11 = sub_1C095D6BC();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_IntegerList.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C095D4CC();
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_IntegerList.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_1C095D5EC(), !v4))
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList(0);
    return sub_1C095D36C();
  }

  return result;
}

uint64_t *static Com_Apple_Siri_Product_Proto_IntegerList.== infix(_:_:)(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList(0);
    sub_1C095D38C();
    sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    return (sub_1C095D73C() & 1);
  }

  else
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C05A872C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C095DFEC();
  a1(0);
  sub_1C05AB400(a2, a3, a4);
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t sub_1C05A8800(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05AB400(&qword_1EBE17920, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_IntegerList);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05A88A0(uint64_t a1)
{
  v2 = sub_1C05AB400(&qword_1EBE177D8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_IntegerList);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05A890C(uint64_t a1, uint64_t a2)
{
  sub_1C05AB400(&qword_1EBE177D8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_IntegerList);

  return sub_1C095D5AC();
}

uint64_t sub_1C05A89A0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C05A8A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C05A8AB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s12SiriOntology010Com_Apple_a15_Product_Proto_F6IntentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_1C05A6BE0(v5, v6);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A35_Product_Proto_OriginalElementValueV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v3 && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A31_Product_Proto_AdjustmentReasonV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason(0);
  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A30_Product_Proto_IntentHierarchyV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1C0561FA4(*a1, *a2) & 1) == 0 || (sub_1C056A4B8(a1[1], a2[1]) & 1) == 0 || (sub_1C056AA5C(a1[2], a2[2]) & 1) == 0 || (sub_1C056A4B8(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Siri_Product_Proto_IntentHierarchy(0);
  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A28_Product_Proto_DerivedOriginV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17758, &unk_1C0971240);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v25 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179E0, &qword_1C0972E78);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v26 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0);
  v14 = *(v26 + 24);
  v15 = *(v11 + 56);
  v28 = a1;
  sub_1C05149F8(a1 + v14, v13, &qword_1EBE17758, &unk_1C0971240);
  sub_1C05149F8(a2 + v14, &v13[v15], &qword_1EBE17758, &unk_1C0971240);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1C05145B4(v13, &qword_1EBE17758, &unk_1C0971240);
      goto LABEL_19;
    }

    goto LABEL_6;
  }

  sub_1C05149F8(v13, v9, &qword_1EBE17758, &unk_1C0971240);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1C0594D2C(v9, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
LABEL_6:
    v17 = &qword_1EBE179E0;
    v18 = &qword_1C0972E78;
LABEL_7:
    sub_1C05145B4(v13, v17, v18);
LABEL_21:
    v23 = 0;
    return v23 & 1;
  }

  v19 = v27;
  sub_1C05A8A4C(&v13[v15], v27, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
  v20 = *v9 == *v19 && v9[1] == v19[1];
  if (!v20 && (sub_1C095DF3C() & 1) == 0 || (v9[2] == v19[2] ? (v21 = v9[3] == v19[3]) : (v21 = 0), !v21 && (sub_1C095DF3C() & 1) == 0))
  {
    sub_1C0594D2C(v19, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
    sub_1C0594D2C(v9, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
    v17 = &qword_1EBE17758;
    v18 = &unk_1C0971240;
    goto LABEL_7;
  }

  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v22 = sub_1C095D73C();
  sub_1C0594D2C(v19, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
  sub_1C0594D2C(v9, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
  sub_1C05145B4(v13, &qword_1EBE17758, &unk_1C0971240);
  if ((v22 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  if ((sub_1C05622C4(*v28, *a2) & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v23 = sub_1C095D73C();
  return v23 & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A25_Product_Proto_IntentNodeV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v23 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E10, &unk_1C0971270);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v21 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E18, &qword_1C09704F0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v22 = type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_1C05149F8(a1 + v14, v13, &qword_1EBE16E10, &unk_1C0971270);
  sub_1C05149F8(a2 + v14, &v13[v15], &qword_1EBE16E10, &unk_1C0971270);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1C05145B4(v13, &qword_1EBE16E10, &unk_1C0971270);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1C05149F8(v13, v9, &qword_1EBE16E10, &unk_1C0971270);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1C0594D2C(v9, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
LABEL_6:
    sub_1C05145B4(v13, &qword_1EBE16E18, &qword_1C09704F0);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v23;
  sub_1C05A8A4C(&v13[v15], v23, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  v18 = _s12SiriOntology010Com_Apple_A22_Product_Proto_ElementV2eeoiySbAC_ACtFZ_0(v9, v17);
  sub_1C0594D2C(v17, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  sub_1C0594D2C(v9, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  sub_1C05145B4(v13, &qword_1EBE16E10, &unk_1C0971270);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (*v24 != *a2)
  {
    goto LABEL_10;
  }

  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v19 = sub_1C095D73C();
  return v19 & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A22_Product_Proto_ElementV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E08, &unk_1C09704E0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_1C095DF3C() & 1) == 0 || (sub_1C055B098(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_10;
  }

  v21 = v7;
  v22 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  sub_1C05149F8(a1 + v14, v13, &qword_1EBE16E00, &qword_1C099BAE0);
  sub_1C05149F8(a2 + v14, &v13[v15], &qword_1EBE16E00, &qword_1C099BAE0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1C05145B4(v13, &qword_1EBE16E00, &qword_1C099BAE0);
LABEL_13:
      sub_1C095D38C();
      sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
      v17 = sub_1C095D73C();
      return v17 & 1;
    }

    goto LABEL_9;
  }

  sub_1C05149F8(v13, v10, &qword_1EBE16E00, &qword_1C099BAE0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1C0594D2C(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
LABEL_9:
    sub_1C05145B4(v13, &qword_1EBE16E08, &unk_1C09704E0);
    goto LABEL_10;
  }

  v19 = v21;
  sub_1C05A8A4C(&v13[v15], v21, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
  v20 = _s12SiriOntology010Com_Apple_A22_Product_Proto_ElementV10OneOf_NodeO2eeoiySbAE_AEtFZ_0(v10, v19);
  sub_1C0594D2C(v19, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
  sub_1C0594D2C(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
  sub_1C05145B4(v13, &qword_1EBE16E00, &qword_1C099BAE0);
  if (v20)
  {
    goto LABEL_13;
  }

LABEL_10:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A27_Product_Proto_ElementValueV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v66 = &v62 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179A8, &qword_1C0972E40);
  MEMORY[0x1EEE9AC00](v67);
  v10 = &v62 - v9;
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  v73 = *(v11 - 8);
  v74 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17770, &unk_1C099BB00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v71 = &v62 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179B0, &qword_1C0972E48);
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v62 - v15;
  v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17768, &unk_1C0971250);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = (&v62 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179B8, &qword_1C0972E50);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - v24;
  if ((sub_1C055B098(*a1, *a2) & 1) == 0)
  {
    goto LABEL_31;
  }

  v62 = v6;
  v63 = v10;
  v26 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  v27 = *(v26 + 28);
  v28 = a1;
  v29 = *(v23 + 48);
  v64 = v26;
  v65 = v28;
  sub_1C05149F8(v28 + v27, v25, &qword_1EBE17768, &unk_1C0971250);
  v30 = a2 + v27;
  v31 = a2;
  sub_1C05149F8(v30, &v25[v29], &qword_1EBE17768, &unk_1C0971250);
  v32 = *(v17 + 48);
  if (v32(v25, 1, v16) == 1)
  {
    if (v32(&v25[v29], 1, v16) == 1)
    {
      sub_1C05145B4(v25, &qword_1EBE17768, &unk_1C0971250);
      goto LABEL_9;
    }

LABEL_7:
    v33 = &qword_1EBE179B8;
    v34 = &qword_1C0972E50;
    v35 = v25;
LABEL_30:
    sub_1C05145B4(v35, v33, v34);
    goto LABEL_31;
  }

  sub_1C05149F8(v25, v22, &qword_1EBE17768, &unk_1C0971250);
  if (v32(&v25[v29], 1, v16) == 1)
  {
    sub_1C0594D2C(v22, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
    goto LABEL_7;
  }

  sub_1C05A8A4C(&v25[v29], v19, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
  v36 = _s12SiriOntology010Com_Apple_A21_Product_Proto_OriginV2eeoiySbAC_ACtFZ_0(v22, v19);
  sub_1C0594D2C(v19, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
  sub_1C0594D2C(v22, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
  sub_1C05145B4(v25, &qword_1EBE17768, &unk_1C0971250);
  if ((v36 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_9:
  v38 = v64;
  v37 = v65;
  v39 = *(v64 + 32);
  v40 = *(v72 + 48);
  v41 = v75;
  sub_1C05149F8(v65 + v39, v75, &qword_1EBE17770, &unk_1C099BB00);
  sub_1C05149F8(v31 + v39, v41 + v40, &qword_1EBE17770, &unk_1C099BB00);
  v42 = v74;
  v43 = *(v73 + 48);
  if (v43(v41, 1, v74) == 1)
  {
    if (v43(v41 + v40, 1, v42) == 1)
    {
      sub_1C05145B4(v41, &qword_1EBE17770, &unk_1C099BB00);
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v48 = v71;
  sub_1C05149F8(v41, v71, &qword_1EBE17770, &unk_1C099BB00);
  if (v43(v41 + v40, 1, v42) == 1)
  {
    sub_1C0594D2C(v48, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
LABEL_18:
    v33 = &qword_1EBE179B0;
    v34 = &qword_1C0972E48;
LABEL_29:
    v35 = v41;
    goto LABEL_30;
  }

  v49 = v70;
  sub_1C05A8A4C(v41 + v40, v70, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
  if (*v48 != *v49 || (*(v48 + 1) != *(v49 + 1) || *(v48 + 2) != *(v49 + 2)) && (sub_1C095DF3C() & 1) == 0)
  {
    sub_1C0594D2C(v49, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
    sub_1C0594D2C(v48, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
    v33 = &qword_1EBE17770;
    v34 = &unk_1C099BB00;
    goto LABEL_29;
  }

  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v50 = sub_1C095D73C();
  sub_1C0594D2C(v49, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
  sub_1C0594D2C(v48, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
  sub_1C05145B4(v41, &qword_1EBE17770, &unk_1C099BB00);
  if ((v50 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_12:
  if (sub_1C05273AC(v37[1], *(v37 + 16), v31[1]))
  {
    v44 = *(v38 + 36);
    v45 = *(v67 + 48);
    v41 = v63;
    sub_1C05149F8(v37 + v44, v63, &qword_1EBE17778, &unk_1C0971260);
    sub_1C05149F8(v31 + v44, v41 + v45, &qword_1EBE17778, &unk_1C0971260);
    v46 = v69;
    v47 = *(v68 + 48);
    if (v47(v41, 1, v69) == 1)
    {
      if (v47(v41 + v45, 1, v46) == 1)
      {
        sub_1C05145B4(v41, &qword_1EBE17778, &unk_1C0971260);
LABEL_36:
        sub_1C095D38C();
        sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
        v52 = sub_1C095D73C();
        return v52 & 1;
      }

      goto LABEL_28;
    }

    v51 = v66;
    sub_1C05149F8(v41, v66, &qword_1EBE17778, &unk_1C0971260);
    if (v47(v41 + v45, 1, v46) == 1)
    {
      sub_1C0594D2C(v51, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
LABEL_28:
      v33 = &qword_1EBE179A8;
      v34 = &qword_1C0972E40;
      goto LABEL_29;
    }

    v54 = v46;
    v55 = v62;
    sub_1C05A8A4C(v41 + v45, v62, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    v56 = *(v54 + 20);
    v57 = *(v51 + v56);
    v58 = *(v55 + v56);
    if (v57 != v58)
    {

      v59 = sub_1C081C1F4(v57, v58);

      if (!v59)
      {
        sub_1C0594D2C(v62, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
        sub_1C0594D2C(v51, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
        v33 = &qword_1EBE17778;
        v34 = &unk_1C0971260;
        v35 = v63;
        goto LABEL_30;
      }
    }

    sub_1C095D38C();
    sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v60 = v62;
    v61 = sub_1C095D73C();
    sub_1C0594D2C(v60, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    sub_1C0594D2C(v51, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    sub_1C05145B4(v63, &qword_1EBE17778, &unk_1C0971260);
    if (v61)
    {
      goto LABEL_36;
    }
  }

LABEL_31:
  v52 = 0;
  return v52 & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A22_Product_Proto_ElementV10OneOf_NodeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
  MEMORY[0x1EEE9AC00](v25);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v24 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179D8, &qword_1C0972E70);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v24 - v17;
  v19 = *(v16 + 56);
  sub_1C05A8AB4(a1, &v24 - v17, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
  sub_1C05A8AB4(a2, &v18[v19], type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C05A8AB4(v18, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C05A8A4C(&v18[v19], v8, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      if (sub_1C05626C0(*v14, *v8))
      {
        sub_1C095D38C();
        sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
        if (sub_1C095D73C())
        {
          sub_1C0594D2C(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
          sub_1C0594D2C(v14, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
          sub_1C0594D2C(v18, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
          v20 = 1;
          return v20 & 1;
        }
      }

      sub_1C0594D2C(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      sub_1C0594D2C(v14, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      sub_1C0594D2C(v18, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
LABEL_12:
      v20 = 0;
      return v20 & 1;
    }

    v21 = type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement;
    v22 = v14;
LABEL_7:
    sub_1C0594D2C(v22, v21);
    sub_1C05145B4(v18, &qword_1EBE179D8, &qword_1C0972E70);
    goto LABEL_12;
  }

  sub_1C05A8AB4(v18, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v21 = type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement;
    v22 = v12;
    goto LABEL_7;
  }

  sub_1C05A8A4C(&v18[v19], v6, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v20 = sub_1C095D73C();
  sub_1C0594D2C(v6, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
  sub_1C0594D2C(v12, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
  sub_1C0594D2C(v18, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
  return v20 & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A21_Product_Proto_OriginV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179C0, &qword_1C0972E58);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v14 = *a1;
  v15 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v15 > 4)
    {
      if (v15 <= 6)
      {
        if (v15 == 5)
        {
          if (v14 != 5)
          {
            goto LABEL_20;
          }
        }

        else if (v14 != 6)
        {
          goto LABEL_20;
        }
      }

      else if (v15 == 7)
      {
        if (v14 != 7)
        {
          goto LABEL_20;
        }
      }

      else if (v15 == 8)
      {
        if (v14 != 8)
        {
          goto LABEL_20;
        }
      }

      else if (v14 != 9)
      {
        goto LABEL_20;
      }
    }

    else if (v15 <= 1)
    {
      if (v15)
      {
        if (v14 != 1)
        {
          goto LABEL_20;
        }
      }

      else if (v14)
      {
        goto LABEL_20;
      }
    }

    else if (v15 == 2)
    {
      if (v14 != 2)
      {
        goto LABEL_20;
      }
    }

    else if (v15 == 3)
    {
      if (v14 != 3)
      {
        goto LABEL_20;
      }
    }

    else if (v14 != 4)
    {
      goto LABEL_20;
    }
  }

  else if (v14 != v15)
  {
    goto LABEL_20;
  }

  v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  v17 = a1;
  v24[0] = v16;
  v24[1] = a1;
  v18 = *(v16 + 20);
  v19 = *(v11 + 48);
  sub_1C05149F8(v17 + v18, v13, &qword_1EBE17760, &unk_1C099BB10);
  sub_1C05149F8(a2 + v18, &v13[v19], &qword_1EBE17760, &unk_1C099BB10);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v19], 1, v4) == 1)
    {
      sub_1C05145B4(v13, &qword_1EBE17760, &unk_1C099BB10);
LABEL_23:
      sub_1C095D38C();
      sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
      v21 = sub_1C095D73C();
      return v21 & 1;
    }

    goto LABEL_19;
  }

  sub_1C05149F8(v13, v10, &qword_1EBE17760, &unk_1C099BB10);
  if (v20(&v13[v19], 1, v4) == 1)
  {
    sub_1C0594D2C(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
LABEL_19:
    sub_1C05145B4(v13, &qword_1EBE179C0, &qword_1C0972E58);
    goto LABEL_20;
  }

  sub_1C05A8A4C(&v13[v19], v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  v23 = _s12SiriOntology010Com_Apple_A21_Product_Proto_OriginV06OneOf_G6DetailO2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_1C0594D2C(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  sub_1C0594D2C(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  sub_1C05145B4(v13, &qword_1EBE17760, &unk_1C099BB10);
  if (v23)
  {
    goto LABEL_23;
  }

LABEL_20:
  v21 = 0;
  return v21 & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A21_Product_Proto_OriginV06OneOf_G6DetailO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v36 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v36 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179E8, &unk_1C0972E80);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v36 - v19;
  v21 = (&v36 + *(v18 + 56) - v19);
  sub_1C05A8AB4(a1, &v36 - v19, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  sub_1C05A8AB4(a2, v21, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1C05A8AB4(v20, v16, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
    v29 = *v16;
    v28 = v16[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v29 == *v21 && v28 == v21[1])
      {

        goto LABEL_27;
      }

      v34 = sub_1C095DF3C();

      if (v34)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }

LABEL_15:
    sub_1C05145B4(v20, &qword_1EBE179E8, &unk_1C0972E80);
LABEL_24:
    v30 = 0;
    return v30 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1C05A8AB4(v20, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v37;
      sub_1C05A8A4C(v21, v37, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
      v24 = *(v36 + 20);
      v25 = *&v14[v24];
      v26 = *(v23 + v24);
      if (v25 == v26 || (, , v27 = sub_1C08170B0(v25, v26), , , v27))
      {
        sub_1C095D38C();
        sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
        if (sub_1C095D73C())
        {
          sub_1C0594D2C(v23, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
          sub_1C0594D2C(v14, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
LABEL_27:
          sub_1C0594D2C(v20, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
          v30 = 1;
          return v30 & 1;
        }
      }

      sub_1C0594D2C(v23, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
      sub_1C0594D2C(v14, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
LABEL_23:
      sub_1C0594D2C(v20, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
      goto LABEL_24;
    }

    v31 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan;
    v32 = v14;
    goto LABEL_14;
  }

  sub_1C05A8AB4(v20, v11, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v31 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin;
    v32 = v11;
LABEL_14:
    sub_1C0594D2C(v32, v31);
    goto LABEL_15;
  }

  sub_1C05A8A4C(v21, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
  v30 = _s12SiriOntology010Com_Apple_A28_Product_Proto_DerivedOriginV2eeoiySbAC_ACtFZ_0(v11, v6);
  sub_1C0594D2C(v6, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
  sub_1C0594D2C(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
  sub_1C0594D2C(v20, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  return v30 & 1;
}

uint64_t sub_1C05AB400(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C05AB448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE15298;
  if (!qword_1EBE15298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE15298);
  }

  return result;
}

unint64_t sub_1C05AB49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE152D8;
  if (!qword_1EBE152D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE152D8);
  }

  return result;
}

unint64_t sub_1C05AB4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE152D0;
  if (!qword_1EBE152D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE152D0);
  }

  return result;
}

unint64_t sub_1C05AB54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE152C0;
  if (!qword_1EBE152C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE152C0);
  }

  return result;
}

unint64_t sub_1C05AB5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE152C8;
  if (!qword_1EBE152C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE152C8);
  }

  return result;
}

unint64_t sub_1C05AB62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE15290;
  if (!qword_1EBE15290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE15290);
  }

  return result;
}

unint64_t sub_1C05AB684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE15280;
  if (!qword_1EBE15280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE15280);
  }

  return result;
}

unint64_t sub_1C05AB6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE15288;
  if (!qword_1EBE15288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE15288);
  }

  return result;
}

unint64_t sub_1C05AB764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17810;
  if (!qword_1EBE17810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17810);
  }

  return result;
}

unint64_t sub_1C05AB7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17818;
  if (!qword_1EBE17818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17818);
  }

  return result;
}

unint64_t sub_1C05AB814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17820;
  if (!qword_1EBE17820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17820);
  }

  return result;
}

unint64_t sub_1C05AB89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17838;
  if (!qword_1EBE17838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17838);
  }

  return result;
}

unint64_t sub_1C05AB8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17840;
  if (!qword_1EBE17840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17840);
  }

  return result;
}

unint64_t sub_1C05AB94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17848;
  if (!qword_1EBE17848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17848);
  }

  return result;
}

uint64_t keypath_get_53Tm@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_1C05AC868(uint64_t a1)
{
  sub_1C05AC964(319, &qword_1EBE178D8, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C095D38C();
    if (v2 <= 0x3F)
    {
      sub_1C05AC964(319, &qword_1EBE150E0, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C05AC964(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C05AC9F0(uint64_t a1)
{
  sub_1C05AC964(319, &qword_1EBE15400, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C095D38C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C05ACAB4(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C05ACB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C095D38C();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C05ACC0C(uint64_t a1)
{
  sub_1C05AD638(319, &qword_1EBE0FDA8, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1C095D38C();
    if (v2 <= 0x3F)
    {
      sub_1C05AC964(319, &qword_1EBE153D8, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C05AC964(319, &qword_1EBE15070, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C05AC964(319, &qword_1EBE15418, type metadata accessor for Com_Apple_Siri_Product_Proto_Value, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C05ACDA8(uint64_t a1)
{
  sub_1C05AC964(319, &qword_1EBE0FDD0, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C095D38C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C05ACE84(uint64_t a1)
{
  result = sub_1C095D38C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C05ACF18(uint64_t a1)
{
  sub_1C05AD638(319, &qword_1EBE0FDA8, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1C05AC964(319, &qword_1EBE153C0, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C095D38C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C05AD04C(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C05AD0E8(uint64_t a1)
{
  sub_1C095D38C();
  if (v1 <= 0x3F)
  {
    sub_1C05AC964(319, &qword_1EBE15398, type metadata accessor for Com_Apple_Siri_Product_Proto_Element, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C05AD1D4(uint64_t a1)
{
  result = sub_1C095D38C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C05AD280(uint64_t a1)
{
  sub_1C05AC964(319, &qword_1EBE178F0, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C05AD368(319);
    if (v2 <= 0x3F)
    {
      sub_1C05AD3D0();
      if (v3 <= 0x3F)
      {
        sub_1C095D38C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C05AD368(uint64_t a1)
{
  if (!qword_1EBE178F8)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList(255);
    v1 = sub_1C095D6FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBE178F8);
    }
  }
}

void sub_1C05AD3D0()
{
  if (!qword_1EBE17900)
  {
    v0 = sub_1C095D6FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBE17900);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_133Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_134Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1C05AD5A4(uint64_t a1)
{
  sub_1C05AD638(319, &qword_1EBE17918, MEMORY[0x1E69E7668]);
  if (v1 <= 0x3F)
  {
    sub_1C095D38C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C05AD638(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C095D9FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C05AD68C(uint64_t a1)
{
  sub_1C05AC964(319, &qword_1EBE15380, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C05AD7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17980;
  if (!qword_1EBE17980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17980);
  }

  return result;
}

unint64_t sub_1C05AD7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17988;
  if (!qword_1EBE17988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17988);
  }

  return result;
}

void *Graph.__allocating_init(tasks:)(uint64_t a1)
{
  v1 = sub_1C05AF2C8(a1);

  return v1;
}

void *Graph.__allocating_init<A>(task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C05AF778(a1, a2, a3, a4);
  v9 = type metadata accessor for DynamicTask(0, a2, v7, v8);
  (*(*(v9 - 8) + 8))(a1, v9);
  return v6;
}

void *Graph.__allocating_init<A>(entity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Entity(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  sub_1C06FBF6C(v6, WitnessTable);

  DynamicTask<A>.init(verbName:entityName:)(0x627265566F6ELL, 0xE600000000000000, v15[0], v15[1], v16);
  v8 = *(v6 - 8);
  (*(v8 + 16))(v14, a1, v6);
  Entity<A>.init<A>(_:)(v14, a2, v15, v9, v10);
  sub_1C05ADB6C(v15, 0x797469746E65, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179F0, &qword_1C0972ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C096E0C0;
  sub_1C05149F8(v16, inited + 32, &qword_1EBE179F8, &qword_1C0972ED8);
  v12 = sub_1C05AF2C8(inited);
  swift_setDeallocating();
  sub_1C05145B4(inited + 32, &qword_1EBE179F8, &qword_1C0972ED8);
  (*(v8 + 8))(a1, v6);
  sub_1C05145B4(v16, &qword_1EBE179F8, &qword_1C0972ED8);
  return v12;
}

uint64_t sub_1C05ADB6C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  sub_1C05149F8(a1, v50, &qword_1EBE17A00, &qword_1C0972EE0);
  if (!v51)
  {
    sub_1C05145B4(v50, &qword_1EBE17A00, &qword_1C0972EE0);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0;
    goto LABEL_5;
  }

  sub_1C0526080(v50, &v52);
  sub_1C05145B4(v50, &qword_1EBE17A08, &qword_1C0972EE8);
  v7 = *(&v53 + 1);
  v8 = v54;
  __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
  (*(v8 + 72))(&v42, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  v56 = v46;
  v57 = v47;
  v58 = v48;
  v52 = v42;
  v53 = v43;
  v54 = v44;
  v55 = v45;
  v9 = *(&v42 + 1);
  if (!*(&v42 + 1))
  {
LABEL_5:
    v11 = 0;
    v15 = 0;
    v14 = 0;
    v49[1] = 0;
    v49[2] = 0;
    goto LABEL_6;
  }

  v10 = v52;
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v12 = v56;
  *(v11 + 64) = v55;
  *(v11 + 80) = v12;
  *(v11 + 96) = v57;
  *(v11 + 112) = v58;
  v13 = v54;
  *(v11 + 32) = v53;
  *(v11 + 48) = v13;
  v14 = &off_1F3FA1508;
  v15 = &type metadata for BuilderNode;
LABEL_6:
  v49[0] = v11;
  v49[3] = v15;
  v49[4] = v14;
  v16 = v4[3];
  v17 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v16);
  v18 = *(v17 + 72);
  sub_1C05149F8(&v52, &v42, &qword_1EBE16C48, &qword_1C096E828);
  v18(&v28, v16, v17);
  sub_1C06FC068(&v28, v49, a2, a3);

  v39 = v32;
  v40 = v33;
  v41 = v34;
  v35 = v28;
  v36 = v29;
  v37 = v30;
  v38 = v31;
  v26 = &type metadata for BuilderNode;
  v27 = &off_1F3FA1508;
  v19 = swift_allocObject();
  *&v25 = v19;
  sub_1C05AF88C(&v35, &v42);
  sub_1C05145B4(&v52, &qword_1EBE16C48, &qword_1C096E828);
  v20 = v40;
  *(v19 + 80) = v39;
  *(v19 + 96) = v20;
  *(v19 + 112) = v41;
  v21 = v36;
  *(v19 + 16) = v35;
  *(v19 + 32) = v21;
  v22 = v38;
  *(v19 + 48) = v37;
  *(v19 + 64) = v22;
  sub_1C05145B4(a1, &qword_1EBE17A00, &qword_1C0972EE0);
  v46 = v32;
  v47 = v33;
  v48 = v34;
  v42 = v28;
  v43 = v29;
  v44 = v30;
  v45 = v31;
  sub_1C05AF8E8(&v42);
  __swift_destroy_boxed_opaque_existential_1(v4);
  sub_1C0531D80(&v25, v4);
  return sub_1C05145B4(v49, &qword_1EBE16C40, &qword_1C09932B0);
}

uint64_t sub_1C05ADE84(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v50 = *a1;
  v52 = a1[1];
  v49 = a1[2];
  v53 = a1[3];
  v9 = a1[4];
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v12 = (*(v11 + 24))(v10, v11);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v17 = a2[3];
    v16 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v17);
    (*(v16 + 16))(&v60, v17, v16);
    v57 = v60;
    v58 = v61;
    v59 = v62;
    if (qword_1ED5D7CA0 != -1)
    {
      swift_once();
    }

    v54 = xmmword_1ED5D7CA8;
    v55 = xmmword_1ED5D7CB8;
    v56 = qword_1ED5D7CC8;

    v18 = sub_1C051D4D0(&v57, &v54);

    if (v18)
    {
      v60 = xmmword_1ED5D7CA8;
      v61 = xmmword_1ED5D7CB8;
      *&v62 = qword_1ED5D7CC8;

      v19 = sub_1C0514CE0(&v60, v14, v15, 1, MEMORY[0x1E69E7CC0]);

LABEL_12:

      goto LABEL_14;
    }
  }

  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  v22 = (*(v21 + 32))(v20, v21);
  if ((v23 & 1) == 0)
  {
    v24 = v22;
    v25 = a2[3];
    v26 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v25);
    (*(v26 + 16))(&v60, v25, v26);
    v57 = v60;
    v58 = v61;
    v59 = v62;
    if (qword_1ED5BDED8 != -1)
    {
      swift_once();
    }

    v54 = xmmword_1ED5BDEE0;
    v55 = xmmword_1ED5BDEF0;
    v56 = qword_1ED5BDF00;

    v27 = sub_1C051D4D0(&v57, &v54);

    if (v27)
    {
      v60 = xmmword_1ED5BDEE0;
      v61 = xmmword_1ED5BDEF0;
      *&v62 = qword_1ED5BDF00;

      v19 = sub_1C0514CE0(&v60, v24, 0, 0, MEMORY[0x1E69E7CC0]);
      goto LABEL_12;
    }
  }

  v28 = a2[3];
  v29 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v28);
  (*(v29 + 16))(&v60, v28, v29);
  v57 = v60;
  v58 = v61;
  v59 = v62;
  v19 = sub_1C0514CE0(&v57, 0, 0, 255, MEMORY[0x1E69E7CC0]);

LABEL_14:

  swift_unownedRetain();

  v30 = a2[3];
  v31 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v30);
  v32 = *(v31 + 40);

  swift_unownedRetain();
  v33 = v32(v30, v31);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v19[13] = v33;

  v34 = a5[3];
  v35 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v34);
  v36 = (*(v35 + 48))(v34, v35);
  swift_unownedRetainStrong();
  v19[14] = v36;

  swift_unownedRelease();
  swift_unownedRetainStrong();
  v37 = v19[7];

  *&v60 = a6;
  *(&v60 + 1) = v37;
  LODWORD(v61) = 0;
  *(&v61 + 1) = v50;
  *&v62 = v52;
  *(&v62 + 1) = v49;
  *&v63 = v53;
  *(&v63 + 1) = v9;
  swift_beginAccess();
  v38 = *(a4 + 16);

  sub_1C0514AC4(&v60, &v57);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v38;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v38 = sub_1C0514F9C(0, *(v38 + 2) + 1, 1, v38);
    *(a4 + 16) = v38;
  }

  v41 = *(v38 + 2);
  v40 = *(v38 + 3);
  if (v41 >= v40 >> 1)
  {
    v38 = sub_1C0514F9C((v40 > 1), v41 + 1, 1, v38);
  }

  *(v38 + 2) = v41 + 1;
  v42 = &v38[64 * v41];
  v43 = v60;
  v44 = v61;
  v45 = v63;
  *(v42 + 4) = v62;
  *(v42 + 5) = v45;
  *(v42 + 2) = v43;
  *(v42 + 3) = v44;
  *(a4 + 16) = v38;
  swift_endAccess();
  sub_1C0514A70(&v60);
  swift_unownedRetainStrong();

  v46 = a2[4];
  v47 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  MEMORY[0x1EEE9AC00](v47);
  (*(v46 + 80))(sub_1C05AF94C);

  return swift_unownedRelease();
}

void *Graph.__allocating_init<A>(task:fixEntityEdges:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    type metadata accessor for Graph();
    swift_allocObject();
    v6 = Graph.init()();
    v9 = type metadata accessor for DynamicTask(0, a3, v7, v8);

    DynamicTask.nodeName.getter();
    v43[0] = v45;
    v43[1] = v46;
    v44 = v47;
    v10 = sub_1C0514CE0(v43, 0, 0, 255, MEMORY[0x1E69E7CC0]);

    swift_unownedRetain();

    WitnessTable = swift_getWitnessTable();
    v41 = v9;
    sub_1C06FBEEC(WitnessTable, v49);

    swift_unownedRetain();
    v14 = type metadata accessor for Metadata(0, a3, v12, v13);
    v15 = Metadata.identifiers.getter();
    swift_unownedRetainStrong();
    swift_beginAccess();
    v10[13] = v15;

    v40 = v14;
    v16 = Metadata.utteranceAlignments.getter();
    swift_unownedRetainStrong();
    v10[14] = v16;

    swift_unownedRelease();
    if (qword_1ED5BD000 != -1)
    {
      swift_once();
    }

    v42 = a1;
    v18 = qword_1ED5BD008;
    v17 = unk_1ED5BD010;
    v19 = qword_1ED5BD018;
    v20 = unk_1ED5BD020;
    v21 = qword_1ED5BD028;
    swift_beginAccess();
    v22 = v6[4];
    result = swift_unownedRetainStrong();
    if (v22)
    {

      swift_unownedRetain();

      swift_unownedRetainStrong();
      v24 = *(v22 + 56);

      swift_unownedRetainStrong();
      v25 = v10[7];

      *&v45 = v24;
      *(&v45 + 1) = v25;
      LODWORD(v46) = 0;
      *(&v46 + 1) = v18;
      *&v47 = v17;
      *(&v47 + 1) = v19;
      *&v48 = v20;
      *(&v48 + 1) = v21;
      swift_beginAccess();
      v26 = v6[2];

      sub_1C0514AC4(&v45, v43);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6[2] = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_1C0514F9C(0, *(v26 + 2) + 1, 1, v26);
        v6[2] = v26;
      }

      v29 = *(v26 + 2);
      v28 = *(v26 + 3);
      if (v29 >= v28 >> 1)
      {
        v26 = sub_1C0514F9C((v28 > 1), v29 + 1, 1, v26);
      }

      *(v26 + 2) = v29 + 1;
      v30 = &v26[64 * v29];
      v31 = v45;
      v32 = v46;
      v33 = v48;
      *(v30 + 4) = v47;
      *(v30 + 5) = v33;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v6[2] = v26;
      swift_endAccess();

      swift_unownedRelease();
      sub_1C0514A70(&v45);
      swift_unownedRetainStrong();

      v34 = v42[4];
      v35 = __swift_project_boxed_opaque_existential_1(v42, v42[3]);
      MEMORY[0x1EEE9AC00](v35);
      (*(v34 + 80))(sub_1C05AF880);

      swift_unownedRelease();
      (*(*(v40 - 8) + 8))(v49);
      (*(*(v41 - 8) + 8))(v42);

      return v6;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v36 = sub_1C05AF778(a1, a3, a3, a4);
    v39 = type metadata accessor for DynamicTask(0, a3, v37, v38);
    (*(*(v39 - 8) + 8))(a1, v39);
    return v36;
  }

  return result;
}

uint64_t sub_1C05AEA88(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v8 = a1[1];
  v56 = *a1;
  v54 = a1[2];
  v53 = a1[3];
  v52 = a1[4];
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  v11 = (*(v10 + 24))(v9, v10);
  v58 = v8;
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v16 = a2[3];
    v15 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v16);
    (*(v15 + 16))(&v66, v16, v15);
    v63 = v66;
    v64 = v67;
    v65 = v68;
    if (qword_1ED5D7CA0 != -1)
    {
      swift_once();
    }

    v60 = xmmword_1ED5D7CA8;
    v61 = xmmword_1ED5D7CB8;
    v62 = qword_1ED5D7CC8;

    v17 = sub_1C051D4D0(&v63, &v60);

    if (v17)
    {
      v66 = xmmword_1ED5D7CA8;
      v67 = xmmword_1ED5D7CB8;
      *&v68 = qword_1ED5D7CC8;

      v18 = sub_1C0514CE0(&v66, v13, v14, 1, MEMORY[0x1E69E7CC0]);

      goto LABEL_12;
    }
  }

  v19 = a2[3];
  v20 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v19);
  v21 = (*(v20 + 32))(v19, v20);
  if (v22)
  {
    goto LABEL_13;
  }

  v23 = v21;
  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  (*(v25 + 16))(&v66, v24, v25);
  v63 = v66;
  v64 = v67;
  v65 = v68;
  if (qword_1ED5BDED8 != -1)
  {
    swift_once();
  }

  v60 = xmmword_1ED5BDEE0;
  v61 = xmmword_1ED5BDEF0;
  v62 = qword_1ED5BDF00;

  v26 = sub_1C051D4D0(&v63, &v60);

  if ((v26 & 1) == 0)
  {
LABEL_13:
    v27 = a2[3];
    v28 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v27);
    (*(v28 + 16))(&v66, v27, v28);
    v63 = v66;
    v64 = v67;
    v65 = v68;
    v18 = sub_1C0514CE0(&v63, 0, 0, 255, MEMORY[0x1E69E7CC0]);

    goto LABEL_14;
  }

  v66 = xmmword_1ED5BDEE0;
  v67 = xmmword_1ED5BDEF0;
  *&v68 = qword_1ED5BDF00;

  v18 = sub_1C0514CE0(&v66, v23, 0, 0, MEMORY[0x1E69E7CC0]);
LABEL_12:

LABEL_14:

  swift_unownedRetain();

  v29 = 0x746E656D75677241;
  v31 = a2[3];
  v30 = a2[4];
  v57 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v31);
  v32 = *(v30 + 40);

  swift_unownedRetain();
  v33 = v32(v31, v30);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v18[13] = v33;

  v34 = a5[3];
  v35 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v34);
  v36 = (*(v35 + 48))(v34, v35);
  swift_unownedRetainStrong();
  v18[14] = v36;

  swift_unownedRelease();
  if (v54 == 0x797469746E45 && v53 == 0xE600000000000000)
  {
    v37 = 0;
    v38 = 0xE800000000000000;
    v39 = v58;
  }

  else
  {
    v39 = v58;
    if (sub_1C095DF3C())
    {
      v37 = 0;
      v38 = 0xE800000000000000;
    }

    else
    {
      v37 = v52;

      v29 = v54;
      v38 = v53;
    }
  }

  swift_unownedRetainStrong();
  v40 = v18[7];

  *&v66 = a6;
  *(&v66 + 1) = v40;
  LODWORD(v67) = 0;
  *(&v67 + 1) = v56;
  *&v68 = v39;
  *(&v68 + 1) = v29;
  *&v69 = v38;
  *(&v69 + 1) = v37;
  swift_beginAccess();
  v41 = *(a4 + 16);

  sub_1C0514AC4(&v66, &v63);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v41 = sub_1C0514F9C(0, *(v41 + 2) + 1, 1, v41);
    *(a4 + 16) = v41;
  }

  v44 = *(v41 + 2);
  v43 = *(v41 + 3);
  if (v44 >= v43 >> 1)
  {
    v41 = sub_1C0514F9C((v43 > 1), v44 + 1, 1, v41);
  }

  *(v41 + 2) = v44 + 1;
  v45 = &v41[64 * v44];
  v46 = v66;
  v47 = v67;
  v48 = v69;
  *(v45 + 4) = v68;
  *(v45 + 5) = v48;
  *(v45 + 2) = v46;
  *(v45 + 3) = v47;
  *(a4 + 16) = v41;
  swift_endAccess();
  sub_1C0514A70(&v66);

  swift_unownedRetainStrong();

  v49 = v57[4];
  v50 = __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  MEMORY[0x1EEE9AC00](v50);
  (*(v49 + 80))(sub_1C05AF948);

  swift_unownedRelease();
}

void *sub_1C05AF2C8(uint64_t a1)
{
  type metadata accessor for Graph();
  swift_allocObject();
  v2 = Graph.init()();
  v3 = *(a1 + 16);
  swift_beginAccess();
  if (!v3)
  {
    return v2;
  }

  v4 = a1 + 32;
  v36 = v2;
  while (1)
  {
    v34 = v4;
    v35 = v3;
    sub_1C05149F8(v4, v46, &qword_1EBE179F8, &qword_1C0972ED8);
    v5 = v47;
    v6 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    (*(v6 + 16))(&v39, v5, v6);
    v37[0] = v39;
    v37[1] = v40;
    v38 = v41;
    v7 = sub_1C0514CE0(v37, 0, 0, 255, MEMORY[0x1E69E7CC0]);

    swift_unownedRetain();

    sub_1C0526080(v46, v43);
    v8 = v44;
    v9 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v10 = *(v9 + 40);

    swift_unownedRetain();
    v11 = v10(v8, v9);
    swift_unownedRetainStrong();
    swift_beginAccess();
    v7[13] = v11;

    v12 = v44;
    v13 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v14 = (*(v13 + 48))(v12, v13);
    swift_unownedRetainStrong();
    v7[14] = v14;

    swift_unownedRelease();
    if (qword_1ED5BD000 != -1)
    {
      swift_once();
    }

    v15 = qword_1ED5BD008;
    v16 = unk_1ED5BD010;
    v17 = qword_1ED5BD018;
    v18 = unk_1ED5BD020;
    v19 = qword_1ED5BD028;
    v20 = v2[4];
    result = swift_unownedRetainStrong();
    if (!v20)
    {
      break;
    }

    swift_unownedRetain();

    swift_unownedRetainStrong();
    v22 = *(v20 + 56);

    swift_unownedRetainStrong();
    v23 = v7[7];

    *&v39 = v22;
    *(&v39 + 1) = v23;
    LODWORD(v40) = 0;
    *(&v40 + 1) = v15;
    *&v41 = v16;
    *(&v41 + 1) = v17;
    *&v42 = v18;
    *(&v42 + 1) = v19;
    swift_beginAccess();
    v24 = v36[2];

    sub_1C0514AC4(&v39, v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36[2] = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1C0514F9C(0, *(v24 + 2) + 1, 1, v24);
      v36[2] = v24;
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    if (v27 >= v26 >> 1)
    {
      v24 = sub_1C0514F9C((v26 > 1), v27 + 1, 1, v24);
    }

    *(v24 + 2) = v27 + 1;
    v28 = &v24[64 * v27];
    v29 = v39;
    v30 = v40;
    v31 = v42;
    *(v28 + 4) = v41;
    *(v28 + 5) = v31;
    *(v28 + 2) = v29;
    *(v28 + 3) = v30;
    v36[2] = v24;
    swift_endAccess();

    swift_unownedRelease();
    sub_1C0514A70(&v39);
    swift_unownedRetainStrong();

    v32 = v48;
    v33 = __swift_project_boxed_opaque_existential_1(v46, v47);
    MEMORY[0x1EEE9AC00](v33);
    v2 = v36;
    (*(v32 + 80))(sub_1C05AF93C);

    swift_unownedRelease();
    sub_1C05145B4(v43, &qword_1EBE17A10, &unk_1C0972EF0);
    sub_1C05145B4(v46, &qword_1EBE179F8, &qword_1C0972ED8);
    v4 = v34 + 40;
    v3 = v35 - 1;
    if (v35 == 1)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C05AF778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DynamicTask(0, a2, a3, a4);
  (*(*(v5 - 8) + 16))(v9, a1, v5);
  DynamicTask<A>.init<A>(_:)(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179F0, &qword_1C0972ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C096E0C0;
  sub_1C05149F8(v10, inited + 32, &qword_1EBE179F8, &qword_1C0972ED8);
  v7 = sub_1C05AF2C8(inited);
  swift_setDeallocating();
  sub_1C05145B4(inited + 32, &qword_1EBE179F8, &qword_1C0972ED8);
  sub_1C05145B4(v10, &qword_1EBE179F8, &qword_1C0972ED8);
  return v7;
}

uint64_t PersonPlaceIntentNode.intentNode.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
}

__n128 PersonPlaceIntentNode.init(intentNode:ontologyNode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 24);
  *a3 = *a1;
  result = *(a1 + 8);
  *(a3 + 8) = result;
  *(a3 + 24) = v3;
  *(a3 + 32) = a2;
  return result;
}

double static PersonPlaceIntentNode.from(intentNode:ontologyNode:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  a3[4] = a2;

  return result;
}

uint64_t sub_1C05AFA40(uint64_t a1)
{
  v2 = *(v1 + 16);
  __src[33] = *v1;
  __src[34] = v2;
  v13 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
  inited = swift_initStaticObject();
  sub_1C05B0128(inited, &qword_1EBE16E40, &qword_1C0970530, __src);
  v4 = *(&__src[0] + 1);
  if (*(&__src[0] + 1))
  {
    v5 = *&__src[0];
    v6 = __src[1];
    v7 = *(*(&__src[1] + 1) + 16);
    if (v7)
    {
      memcpy(__dst, (*(&__src[1] + 1) + 1344 * v7 - 1312), 0x20AuLL);
      sub_1C05AFF4C(__dst, v10);
      sub_1C05AFFBC(v5, v4, v6, *(&v6 + 1));
      memcpy(__src, __dst, 0x20AuLL);
      if (sub_1C0573598(__src) != 1)
      {
        memcpy(v10, __src, 0x20AuLL);
        v8 = sub_1C057363C(v10);
        if (v8 == 4 || v8 == 7)
        {
          return *sub_1C05272F0(v10);
        }

        sub_1C05B000C(__dst);
      }
    }

    else
    {
      sub_1C05AFFBC(*&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1));
    }
  }

  return 0;
}

void PersonPlaceIntentNode.reference.getter(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  __src[33] = *v1;
  __src[34] = v3;
  v14 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A18, &qword_1C0972F00);
  inited = swift_initStaticObject();
  sub_1C05B0128(inited, &qword_1EBE17A18, &qword_1C0972F00, __src);
  v5 = *(&__src[0] + 1);
  if (*(&__src[0] + 1))
  {
    v6 = *&__src[0];
    v7 = __src[1];
    v8 = *(*(&__src[1] + 1) + 16);
    if (v8)
    {
      memcpy(__dst, (*(&__src[1] + 1) + 1344 * v8 - 1312), 0x20AuLL);
      sub_1C05AFF4C(__dst, v11);
      sub_1C05AFFBC(v6, v5, v7, *(&v7 + 1));
      memcpy(__src, __dst, 0x20AuLL);
      if (sub_1C0573598(__src) != 1)
      {
        memcpy(v11, __src, 0x20AuLL);
        if (sub_1C057363C(v11) == 8)
        {
          sub_1C05272F0(v11);
          v9 = sub_1C095DD6C();
          if (v9 == 1)
          {
            v10 = 1;
            goto LABEL_13;
          }

          if (!v9)
          {
            v10 = 0;
LABEL_13:
            *a1 = v10;
            sub_1C05B000C(__dst);
            return;
          }
        }

        sub_1C05B000C(__dst);
      }
    }

    else
    {
      sub_1C05AFFBC(*&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1));
    }
  }

  *a1 = 2;
}

double PersonPlaceIntentNode.occupant.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v14 = *v1;
  v15 = v3;
  v16 = *(v1 + 4);
  if (qword_1EBE15648 != -1)
  {
    swift_once();
  }

  sub_1C05AFE74(qword_1EBE18298, &v11);
  if (v12)
  {
    v10 = v12;
    v4 = v11;
    v5 = v13;
    type metadata accessor for AddressOntologyNode.OccupantNode();
    v6 = swift_allocObject();
    if (qword_1EBE158F0 != -1)
    {
      v9 = v6;
      swift_once();
      v6 = v9;
    }

    v7 = qword_1EBE1FCF8;
    *(v6 + 16) = 0x746E61707563636FLL;
    *(v6 + 24) = 0xE800000000000000;
    *(v6 + 32) = 0;
    *(v6 + 40) = v7;
    *a1 = v4;
    *(a1 + 8) = v10;
    *(a1 + 24) = v5;
    *(a1 + 32) = v6;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_1C05AFE74@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1C05B0480(a1, *(v2 + 32));
  if (*(v4 + 16))
  {
    v5 = sub_1C0791388(v4);

    if (*(v5 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    goto LABEL_7;
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1C0526080(v5 + 32, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E98, &unk_1C0970660);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1C05AFF4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C70, &unk_1C099BB20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C05AFFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_1C05B000C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C70, &unk_1C099BB20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1C05B0128@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = sub_1C05B0218(a1, *(v4 + 32), a2, a3);
  if (*(v6 + 16))
  {
    v7 = sub_1C0791388(v6);

    if (*(v7 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    goto LABEL_7;
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1C0526080(v7 + 32, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E98, &unk_1C0970660);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1C05B0218(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v24[3] = v6;
  v24[4] = &protocol witness table for TerminalOntologyNode<A>;
  v24[0] = a1;

  v23 = sub_1C058B754(MEMORY[0x1E69E7CC0]);
  sub_1C05FDEA8(a2, *(a2 + 40), &v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EA0, &qword_1C0973000);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C096E0C0;
  sub_1C0526080(v24, v7 + 32);
  v21 = v6;
  v22 = &protocol witness table for TerminalOntologyNode<A>;
  *&v20 = a1;
  type metadata accessor for AnyOntologyNode();
  v8 = swift_allocObject();
  sub_1C0531D80(&v20, v8 + 16);
  v9 = v23;
  v10 = v23 & 0xC000000000000001;

  if (!v10)
  {
    goto LABEL_4;
  }

LABEL_2:

  if (sub_1C095DCEC())
  {
    type metadata accessor for NonTerminalOntologyNode();
    swift_dynamicCast();
    v11 = v20;
    while (1)
    {

      if (!v11)
      {
        break;
      }

      v16 = *(v7 + 16);
      v15 = *(v7 + 24);

      if (v16 >= v15 >> 1)
      {
        v7 = sub_1C0577FE4((v15 > 1), v16 + 1, 1, v7);
      }

      v17 = type metadata accessor for NonTerminalOntologyNode();
      v21 = v17;
      v22 = &protocol witness table for NonTerminalOntologyNode;
      *&v20 = v11;
      *(v7 + 16) = v16 + 1;
      sub_1C0531D80(&v20, v7 + 40 * v16 + 32);
      v21 = v17;
      v22 = &protocol witness table for NonTerminalOntologyNode;
      *&v20 = v11;
      v18 = swift_allocObject();
      sub_1C0531D80(&v20, v18 + 16);
      if (v10)
      {
        goto LABEL_2;
      }

LABEL_4:
      if (!*(v9 + 16))
      {
        break;
      }

      v13 = sub_1C057EAFC(v12);
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }

      v11 = *(*(v9 + 56) + 8 * v13);
    }
  }

  else
  {
LABEL_12:
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  return v7;
}

uint64_t sub_1C05B0480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NonTerminalOntologyNode();
  v21[3] = v4;
  v21[4] = &protocol witness table for NonTerminalOntologyNode;
  v21[0] = a1;

  v20 = sub_1C058B754(MEMORY[0x1E69E7CC0]);
  sub_1C05FDEA8(a2, *(a2 + 40), &v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EA0, &qword_1C0973000);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C096E0C0;
  sub_1C0526080(v21, v5 + 32);
  v18 = v4;
  v19 = &protocol witness table for NonTerminalOntologyNode;
  *&v17 = a1;
  type metadata accessor for AnyOntologyNode();
  v6 = swift_allocObject();
  sub_1C0531D80(&v17, v6 + 16);
  v7 = v20;
  v8 = v20 & 0xC000000000000001;

  if (!v8)
  {
    goto LABEL_4;
  }

LABEL_2:

  if (sub_1C095DCEC())
  {
    swift_dynamicCast();
    v9 = v17;
    while (1)
    {

      if (!v9)
      {
        break;
      }

      v14 = *(v5 + 16);
      v13 = *(v5 + 24);

      if (v14 >= v13 >> 1)
      {
        v5 = sub_1C0577FE4((v13 > 1), v14 + 1, 1, v5);
      }

      v18 = v4;
      v19 = &protocol witness table for NonTerminalOntologyNode;
      *&v17 = v9;
      *(v5 + 16) = v14 + 1;
      sub_1C0531D80(&v17, v5 + 40 * v14 + 32);
      v18 = v4;
      v19 = &protocol witness table for NonTerminalOntologyNode;
      *&v17 = v9;
      v15 = swift_allocObject();
      sub_1C0531D80(&v17, v15 + 16);
      if (v8)
      {
        goto LABEL_2;
      }

LABEL_4:
      if (!*(v7 + 16))
      {
        break;
      }

      v11 = sub_1C057EAFC(v10);
      if ((v12 & 1) == 0)
      {
        goto LABEL_12;
      }

      v9 = *(*(v7 + 56) + 8 * v11);
    }
  }

  else
  {
LABEL_12:
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v5;
}

uint64_t sub_1C05B06E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  sub_1C0526080(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E98, &unk_1C0970660);
  if (!swift_dynamicCast())
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    goto LABEL_5;
  }

  v5 = v10;
  v7 = *(&v11 + 1);
  v6 = v11;
  if (!*(&v10 + 1))
  {
LABEL_5:
    sub_1C05AFFBC(v5, 0, v6, v7);
    v8 = 0;
    return v8 & 1;
  }

  v13[0] = v10;
  v13[1] = v11;
  v8 = static NonTerminalIntentNode.== infix(_:_:)(v13, v14);

  return v8 & 1;
}

BOOL sub_1C05B07BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C0526080(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E98, &unk_1C0970660);
  if (!swift_dynamicCast())
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
LABEL_12:
    sub_1C05AFFBC(v12, v13, v14, v15);
    return 0;
  }

  v9 = v16 == a2 && v17 == a3;
  if (!v9 && (sub_1C095DF3C() & 1) == 0 || (sub_1C055B098(v18, a4) & 1) == 0)
  {
    v12 = v16;
    v13 = v17;
    v14 = v18;
    v15 = v19;
    goto LABEL_12;
  }

  v10 = sub_1C055B128(v19, a5);
  sub_1C05AFFBC(v16, v17, v18, v19);
  return (v10 & 1) != 0;
}

uint64_t IntentNode<>.isEqualTo(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C095DB0C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19[-v9 - 8];
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1C0526080(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E98, &unk_1C0970660);
  v14 = swift_dynamicCast();
  v15 = *(v11 + 56);
  if (v14)
  {
    v15(v10, 0, 1, a2);
    (*(v11 + 32))(v13, v10, a2);
    v16 = sub_1C095D73C();
    (*(v11 + 8))(v13, a2);
  }

  else
  {
    v15(v10, 1, 1, a2);
    (*(v7 + 8))(v10, v6);
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t static PersonOntologyNode.personCompanyNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static PersonOntologyNode.personFirstNameNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static PersonOntologyNode.personFullNameNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static PersonOntologyNode.personLastNameNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static PersonOntologyNode.personMiddleNameNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static PersonOntologyNode.personNamePostfixNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A58, qword_1C0972FD0);

  return swift_initStaticObject();
}

uint64_t static PersonOntologyNode.personNamePrefixNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A60, &qword_1C0972FF0);

  return swift_initStaticObject();
}

uint64_t static PersonOntologyNode.personNickNameNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static PersonOntologyNode.personRelationshipNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static PersonOntologyNode.personSelfReferenceNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A68, &qword_1C0972FF8);

  return swift_initStaticObject();
}

uint64_t PersonOntologyNode.__allocating_init(name:multicardinal:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = swift_allocObject();
  PersonOntologyNode.init(name:multicardinal:)(a1, a2, v3);
  return v6;
}

uint64_t PersonOntologyNode.init(name:multicardinal:)(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EA0, &qword_1C0973000);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C09711F0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
  inited = swift_initStaticObject();
  *(v7 + 56) = v8;
  *(v7 + 64) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 32) = inited;
  v10 = swift_initStaticObject();
  *(v7 + 96) = v8;
  *(v7 + 104) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 72) = v10;
  v11 = swift_initStaticObject();
  *(v7 + 136) = v8;
  *(v7 + 144) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 112) = v11;
  v12 = swift_initStaticObject();
  *(v7 + 176) = v8;
  *(v7 + 184) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 152) = v12;
  v13 = swift_initStaticObject();
  *(v7 + 216) = v8;
  *(v7 + 224) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 192) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A58, qword_1C0972FD0);
  v15 = swift_initStaticObject();
  *(v7 + 256) = v14;
  *(v7 + 264) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 232) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A60, &qword_1C0972FF0);
  v17 = swift_initStaticObject();
  *(v7 + 296) = v16;
  *(v7 + 304) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 272) = v17;
  v18 = swift_initStaticObject();
  *(v7 + 336) = v8;
  *(v7 + 344) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 312) = v18;
  v19 = swift_initStaticObject();
  *(v7 + 376) = v8;
  *(v7 + 384) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 352) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A68, &qword_1C0972FF8);
  v21 = swift_initStaticObject();
  *(v7 + 416) = v20;
  *(v7 + 424) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 392) = v21;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 40) = v7;
  return v3;
}

uint64_t PersonOntologyNode.PersonSelfReference.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1C095DD6C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1C05B1064()
{
  sub_1C095DFEC();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C05B10B8(uint64_t a1)
{
  sub_1C095DFEC();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C05B10FC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1C095DD6C();

  *a2 = v3 != 0;
  return result;
}

uint64_t PersonOntologyNode.PersonNamePrefix.rawValue.getter()
{
  result = 29293;
  switch(*v0)
  {
    case 1:
      result = 7565933;
      break;
    case 2:
      result = 29549;
      break;
    case 3:
      result = 29284;
      break;
    case 4:
      result = 1718579824;
      break;
    case 5:
      result = 0x636F737361;
      break;
    case 6:
      result = 7759218;
      break;
    case 7:
      result = 29286;
      break;
    case 8:
      result = 2037675105;
      break;
    case 9:
      result = 7237480;
      break;
    case 0xA:
      result = 1936028272;
      break;
    case 0xB:
      result = 7761767;
      break;
    case 0xC:
      result = 0x6863616F63;
      break;
    case 0xD:
      result = 6514287;
      break;
    case 0xE:
      result = 1953522019;
      break;
    case 0xF:
      result = 7106403;
      break;
    case 0x10:
      result = 0x6C6F6320746CLL;
      break;
    case 0x11:
      result = 6971757;
      break;
    case 0x12:
      result = 29804;
      break;
    case 0x13:
      result = 7628659;
      break;
    case 0x14:
      result = 7499892;
      break;
    case 0x15:
      result = 1919184227;
      break;
    case 0x16:
      result = 0x72646D6320746CLL;
      break;
    case 0x17:
      result = 7106659;
      break;
    case 0x18:
      result = 7628132;
      break;
    case 0x19:
      result = 7234919;
      break;
    case 0x1A:
      result = 7632496;
      break;
    case 0x1B:
      result = 7169121;
      break;
    case 0x1C:
      result = 29299;
      break;
    case 0x1D:
      result = 0x726F696E756ALL;
      break;
    case 0x1E:
      result = 0x726F696E6573;
      break;
    case 0x1F:
      result = 0x746361746E6F63;
      break;
    case 0x20:
      result = 7237491;
      break;
    case 0x21:
      result = 0x6E6F73646E617267;
      break;
    case 0x22:
      result = 0x77656870656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C05B1468@<X0>(uint64_t *a1@<X8>)
{
  result = PersonOntologyNode.PersonNamePrefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C05B14B4@<X0>(char *a4@<X8>)
{
  v5 = sub_1C095DF4C();

  v7 = 0;
  v8 = 17;
  switch(v5)
  {
    case 0:
      goto LABEL_27;
    case 1:
      v7 = 1;
      goto LABEL_27;
    case 2:
      v7 = 2;
      goto LABEL_27;
    case 3:
      v7 = 3;
      goto LABEL_27;
    case 4:
      v7 = 4;
      goto LABEL_27;
    case 5:
      v7 = 5;
      goto LABEL_27;
    case 6:
      v7 = 6;
      goto LABEL_27;
    case 7:
      v7 = 7;
      goto LABEL_27;
    case 8:
      v7 = 8;
      goto LABEL_27;
    case 9:
      v7 = 9;
      goto LABEL_27;
    case 10:
      v7 = 10;
      goto LABEL_27;
    case 11:
      v7 = 11;
      goto LABEL_27;
    case 12:
      v7 = 12;
      goto LABEL_27;
    case 13:
      v7 = 13;
      goto LABEL_27;
    case 14:
      v7 = 14;
      goto LABEL_27;
    case 15:
      v7 = 15;
      goto LABEL_27;
    case 16:
      v7 = 16;
LABEL_27:
      v8 = v7;
      break;
    case 17:
      break;
    case 18:
      v8 = 18;
      break;
    case 19:
      v8 = 19;
      break;
    case 20:
      v8 = 20;
      break;
    case 21:
      v8 = 21;
      break;
    case 22:
      v8 = 22;
      break;
    case 23:
      v8 = 23;
      break;
    case 24:
      v8 = 24;
      break;
    case 25:
      v8 = 25;
      break;
    case 26:
      v8 = 26;
      break;
    case 27:
      v8 = 27;
      break;
    case 28:
      v8 = 28;
      break;
    case 29:
      v8 = 29;
      break;
    case 30:
      v8 = 30;
      break;
    case 31:
      v8 = 31;
      break;
    case 32:
      v8 = 32;
      break;
    case 33:
      v8 = 33;
      break;
    case 34:
      v8 = 34;
      break;
    default:
      v8 = 35;
      break;
  }

  *a4 = v8;
  return result;
}

uint64_t PersonOntologyNode.PersonNamePostfix.rawValue.getter()
{
  result = 0x726F696E756ALL;
  switch(*v0)
  {
    case 1:
      result = 0x726F696E6573;
      break;
    case 2:
      result = 0x746361746E6F63;
      break;
    case 3:
      result = 7237491;
      break;
    case 4:
      result = 0x6E6F73646E617267;
      break;
    case 5:
      result = 0x77656870656ELL;
      break;
    case 6:
      result = 29293;
      break;
    case 7:
      result = 7565933;
      break;
    case 8:
      result = 29549;
      break;
    case 9:
      result = 29284;
      break;
    case 0xA:
      result = 1718579824;
      break;
    case 0xB:
      result = 0x636F737361;
      break;
    case 0xC:
      result = 7759218;
      break;
    case 0xD:
      result = 29286;
      break;
    case 0xE:
      result = 2037675105;
      break;
    case 0xF:
      result = 7237480;
      break;
    case 0x10:
      result = 1936028272;
      break;
    case 0x11:
      result = 7761767;
      break;
    case 0x12:
      result = 0x6863616F63;
      break;
    case 0x13:
      result = 6514287;
      break;
    case 0x14:
      result = 1953522019;
      break;
    case 0x15:
      result = 7106403;
      break;
    case 0x16:
      result = 0x6C6F6320746CLL;
      break;
    case 0x17:
      result = 6971757;
      break;
    case 0x18:
      result = 29804;
      break;
    case 0x19:
      result = 7628659;
      break;
    case 0x1A:
      result = 7499892;
      break;
    case 0x1B:
      result = 1919184227;
      break;
    case 0x1C:
      result = 0x72646D6320746CLL;
      break;
    case 0x1D:
      result = 7106659;
      break;
    case 0x1E:
      result = 7628132;
      break;
    case 0x1F:
      result = 7234919;
      break;
    case 0x20:
      result = 7632496;
      break;
    case 0x21:
      result = 7169121;
      break;
    case 0x22:
      result = 29299;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C05B18D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C095DF3C();
  }

  return v11 & 1;
}

uint64_t sub_1C05B1994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_1C095DFEC();
  a3(v4);
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C05B1A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  sub_1C095D7BC();
}

uint64_t sub_1C05B1A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5 = sub_1C095DFEC();
  a4(v5);
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C05B1B14@<X0>(uint64_t *a1@<X8>)
{
  result = PersonOntologyNode.PersonNamePostfix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PersonOntologyNode.deinit()
{

  return v0;
}

uint64_t PersonOntologyNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1C05B1BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE0FBF8;
  if (!qword_1EBE0FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0FBF8);
  }

  return result;
}

unint64_t sub_1C05B1C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C05B1C64(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C05B1C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17A70;
  if (!qword_1EBE17A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17A70);
  }

  return result;
}

unint64_t sub_1C05B1CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C05B1D10(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C05B1D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE0FC00;
  if (!qword_1EBE0FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0FC00);
  }

  return result;
}

unint64_t sub_1C05B1D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE0FC18;
  if (!qword_1EBE0FC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0FC18);
  }

  return result;
}

unint64_t sub_1C05B1DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C05B1DE4(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C05B1DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17A88;
  if (!qword_1EBE17A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17A88);
  }

  return result;
}

unint64_t sub_1C05B1E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C05B1E90(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C05B1E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE0FC20;
  if (!qword_1EBE0FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0FC20);
  }

  return result;
}

unint64_t sub_1C05B1EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE0FC08;
  if (!qword_1EBE0FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0FC08);
  }

  return result;
}

unint64_t sub_1C05B1F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C05B1F64(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C05B1F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17AA0;
  if (!qword_1EBE17AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17AA0);
  }

  return result;
}

unint64_t sub_1C05B1FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C05B2010(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C05B2010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE0FC10;
  if (!qword_1EBE0FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0FC10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UsoEntity_appleMessage_MessageAttribute.DefinedValues(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDE)
  {
    goto LABEL_17;
  }

  if (a2 + 34 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 34) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 34;
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

      return (*a1 | (v4 << 8)) - 34;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 34;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v8 = v6 - 35;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UsoEntity_appleMessage_MessageAttribute.DefinedValues(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDE)
  {
    v4 = 0;
  }

  if (a2 > 0xDD)
  {
    v5 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
    *result = a2 + 34;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t Com_Apple_Siri_Product_Proto_Period.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x37;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C05B2278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C05C5C24(a1, a2, a3);

  return MEMORY[0x1EEE3F550](a1, a2, v5);
}

unint64_t Com_Apple_Siri_Product_Proto_Qualifier.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x14;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C05B2400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C05C5CC0(a1, a2, a3);

  return MEMORY[0x1EEE3F550](a1, a2, v5);
}

unint64_t Com_Apple_Siri_Product_Proto_CalendarSystem.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0xD;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C05B2544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C05C5D14(a1, a2, a3);

  return MEMORY[0x1EEE3F550](a1, a2, v5);
}

unint64_t Com_Apple_Siri_Product_Proto_DayOfWeek.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 8;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C05B266C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C05C5D68(a1, a2, a3);

  return MEMORY[0x1EEE3F550](a1, a2, v5);
}

uint64_t Com_Apple_Siri_Product_Proto_DateTimePeriod.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Com_Apple_Siri_Product_Proto_FractionalPeriod.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0) + 28);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_FractionalPeriod.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0) + 28);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_FractionalPeriod.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Com_Apple_Siri_Product_Proto_Time.meridiem.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_Siri_Product_Proto_Time.meridiem.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Time.period.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C38, &unk_1C0973550);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  sub_1C05149F8(v1 + *(v6 + 52), v5, &qword_1EBE17C38, &unk_1C0973550);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1C05B3C0C(v5, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE17C38, &unk_1C0973550);
  }

  return result;
}

uint64_t sub_1C05B2D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C38, &unk_1C0973550);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  sub_1C05149F8(a1 + *(v7 + 52), v6, &qword_1EBE17C38, &unk_1C0973550);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C05B3C0C(v6, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE17C38, &unk_1C0973550);
  }

  return result;
}

uint64_t sub_1C05B2E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05B4210(a1, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0) + 52);
  sub_1C05145B4(a2 + v8, &qword_1EBE17C38, &unk_1C0973550);
  sub_1C05B3C0C(v7, a2 + v8, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Time.period.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0) + 52);
  sub_1C05145B4(v1 + v3, &qword_1EBE17C38, &unk_1C0973550);
  sub_1C05B3C0C(a1, v1 + v3, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Siri_Product_Proto_Time.period.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C38, &unk_1C0973550) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0) + 52);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17C38, &unk_1C0973550);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17C38, &unk_1C0973550);
    }
  }

  else
  {
    sub_1C05B3C0C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
  }

  return sub_1C05B3294;
}

BOOL Com_Apple_Siri_Product_Proto_Time.hasPeriod.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C38, &unk_1C0973550);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  sub_1C05149F8(v0 + *(v4 + 52), v3, &qword_1EBE17C38, &unk_1C0973550);
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1C05145B4(v3, &qword_1EBE17C38, &unk_1C0973550);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Siri_Product_Proto_Time.clearPeriod()()
{
  v1 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0) + 52);
  sub_1C05145B4(v0 + v1, &qword_1EBE17C38, &unk_1C0973550);
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void Com_Apple_Siri_Product_Proto_Time.qualifier.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_Siri_Product_Proto_Time.qualifier.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Time.timeZoneID.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Com_Apple_Siri_Product_Proto_Time.timeZoneID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Time.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0) + 48);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Time.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0) + 48);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Time.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 58) = 0;
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v3 = *(v2 + 52);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t sub_1C05B37DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C05B3898(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Com_Apple_Siri_Product_Proto_DateTimeHoliday.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

void Com_Apple_Siri_Product_Proto_Date.dayOfWeek.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_Siri_Product_Proto_Date.dayOfWeek.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Date.dateTimeHoliday.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C40, &unk_1C099BB60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  sub_1C05149F8(v1 + *(v6 + 60), v5, &qword_1EBE17C40, &unk_1C099BB60);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1C05B3C0C(v5, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE17C40, &unk_1C099BB60);
  }

  return result;
}

uint64_t sub_1C05B3C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C05B3C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C40, &unk_1C099BB60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  sub_1C05149F8(a1 + *(v7 + 60), v6, &qword_1EBE17C40, &unk_1C099BB60);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C05B3C0C(v6, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE17C40, &unk_1C099BB60);
  }

  return result;
}

uint64_t sub_1C05B3DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05B4210(a1, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0) + 60);
  sub_1C05145B4(a2 + v8, &qword_1EBE17C40, &unk_1C099BB60);
  sub_1C05B3C0C(v7, a2 + v8, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Date.dateTimeHoliday.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0) + 60);
  sub_1C05145B4(v1 + v3, &qword_1EBE17C40, &unk_1C099BB60);
  sub_1C05B3C0C(a1, v1 + v3, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Siri_Product_Proto_Date.dateTimeHoliday.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C40, &unk_1C099BB60) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0) + 60);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17C40, &unk_1C099BB60);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0xE000000000000000;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17C40, &unk_1C099BB60);
    }
  }

  else
  {
    sub_1C05B3C0C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
  }

  return sub_1C05B41E8;
}

uint64_t sub_1C05B4210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C05B4278(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL Com_Apple_Siri_Product_Proto_Date.hasDateTimeHoliday.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C40, &unk_1C099BB60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  sub_1C05149F8(v0 + *(v4 + 60), v3, &qword_1EBE17C40, &unk_1C099BB60);
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1C05145B4(v3, &qword_1EBE17C40, &unk_1C099BB60);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Siri_Product_Proto_Date.clearDateTimeHoliday()()
{
  v1 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0) + 60);
  sub_1C05145B4(v0 + v1, &qword_1EBE17C40, &unk_1C099BB60);
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void Com_Apple_Siri_Product_Proto_Date.qualifier.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_Siri_Product_Proto_Date.qualifier.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Date.periods.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

void Com_Apple_Siri_Product_Proto_Date.calendarSystem.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_Siri_Product_Proto_Date.calendarSystem.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Date.fractionalPeriod.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C48, &unk_1C0973560);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  sub_1C05149F8(v1 + *(v6 + 64), v5, &qword_1EBE17C48, &unk_1C0973560);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1C05B3C0C(v5, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE17C48, &unk_1C0973560);
  }

  return result;
}

uint64_t sub_1C05B46FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C48, &unk_1C0973560);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  sub_1C05149F8(a1 + *(v7 + 64), v6, &qword_1EBE17C48, &unk_1C0973560);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C05B3C0C(v6, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE17C48, &unk_1C0973560);
  }

  return result;
}

uint64_t sub_1C05B4860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05B4210(a1, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0) + 64);
  sub_1C05145B4(a2 + v8, &qword_1EBE17C48, &unk_1C0973560);
  sub_1C05B3C0C(v7, a2 + v8, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Date.fractionalPeriod.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0) + 64);
  sub_1C05145B4(v1 + v3, &qword_1EBE17C48, &unk_1C0973560);
  sub_1C05B3C0C(a1, v1 + v3, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Siri_Product_Proto_Date.fractionalPeriod.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C48, &unk_1C0973560) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0) + 64);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17C48, &unk_1C0973560);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17C48, &unk_1C0973560);
    }
  }

  else
  {
    sub_1C05B3C0C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
  }

  return sub_1C05B4C58;
}

void sub_1C05B4C80(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_1C05B4210(v11, v10, a5);
    sub_1C05145B4(v14 + v9, a3, a4);
    sub_1C05B3C0C(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_1C05B4278(v11, a5);
  }

  else
  {
    sub_1C05145B4(v14 + v9, a3, a4);
    sub_1C05B3C0C(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

BOOL Com_Apple_Siri_Product_Proto_Date.hasFractionalPeriod.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C48, &unk_1C0973560);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  sub_1C05149F8(v0 + *(v4 + 64), v3, &qword_1EBE17C48, &unk_1C0973560);
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1C05145B4(v3, &qword_1EBE17C48, &unk_1C0973560);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Siri_Product_Proto_Date.clearFractionalPeriod()()
{
  v1 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0) + 64);
  sub_1C05145B4(v0 + v1, &qword_1EBE17C48, &unk_1C0973560);
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Siri_Product_Proto_Date.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0) + 56);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Date.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0) + 56);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Date.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 41) = 0;
  *(a1 + 48) = MEMORY[0x1E69E7CC0];
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 68) = 0;
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v3 = *(v2 + 60);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 64);
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

void Com_Apple_Siri_Product_Proto_Duration.period.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_Siri_Product_Proto_Duration.period.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Duration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Com_Apple_Siri_Product_Proto_Interval.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0) + 32);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Interval.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0) + 32);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Interval.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Com_Apple_Siri_Product_Proto_Recurrence.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05B5680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05B4210(a1, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  v11 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v14 = sub_1C05C5474(v13);

    *(a2 + v11) = v14;
    v13 = v14;
  }

  sub_1C05B3C0C(v10, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  (*(v8 + 56))(v6, 0, 1, v7);
  v15 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate;
  swift_beginAccess();
  sub_1C051F9D4(v6, v13 + v15, &qword_1EBE17C50, &unk_1C099BB50);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.startDate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v10 = sub_1C05C5474(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1C05B3C0C(a1, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate;
  swift_beginAccess();
  sub_1C051F9D4(v6, v9 + v12, &qword_1EBE17C50, &unk_1C099BB50);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_DateTime.startDate.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17C50, &unk_1C099BB50);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    *(v14 + 32) = 0;
    *(v14 + 40) = 1;
    v19 = MEMORY[0x1E69E7CC0];
    *(v14 + 41) = 0;
    *(v14 + 48) = v19;
    *(v14 + 56) = 0;
    *(v14 + 64) = 1;
    *(v14 + 68) = 0;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v20 = *(v9 + 60);
    v21 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    v22 = *(v9 + 64);
    v23 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
    (*(*(v23 - 8) + 56))(v14 + v22, 1, 1, v23);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17C50, &unk_1C099BB50);
    }
  }

  else
  {
    sub_1C05B3C0C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  }

  return sub_1C05B5D1C;
}

uint64_t sub_1C05B5DB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = *(v2 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20));
  v9 = *a1;
  swift_beginAccess();
  sub_1C05149F8(v8 + v9, v7, &qword_1EBE17C50, &unk_1C099BB50);
  v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1C05B3C0C(v7, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v12 = MEMORY[0x1E69E7CC0];
  *(a2 + 41) = 0;
  *(a2 + 48) = v12;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 68) = 0;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v13 = *(v10 + 60);
  v14 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
  v15 = *(v10 + 64);
  v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  (*(*(v16 - 8) + 56))(a2 + v15, 1, 1, v16);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE17C50, &unk_1C099BB50);
  }

  return result;
}

uint64_t sub_1C05B5FF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05B4210(a1, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  v11 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v14 = sub_1C05C5474(v13);

    *(a2 + v11) = v14;
    v13 = v14;
  }

  sub_1C05B3C0C(v10, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  (*(v8 + 56))(v6, 0, 1, v7);
  v15 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate;
  swift_beginAccess();
  sub_1C051F9D4(v6, v13 + v15, &qword_1EBE17C50, &unk_1C099BB50);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.endDate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v10 = sub_1C05C5474(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1C05B3C0C(a1, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate;
  swift_beginAccess();
  sub_1C051F9D4(v6, v9 + v12, &qword_1EBE17C50, &unk_1C099BB50);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_DateTime.endDate.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17C50, &unk_1C099BB50);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    *(v14 + 32) = 0;
    *(v14 + 40) = 1;
    v19 = MEMORY[0x1E69E7CC0];
    *(v14 + 41) = 0;
    *(v14 + 48) = v19;
    *(v14 + 56) = 0;
    *(v14 + 64) = 1;
    *(v14 + 68) = 0;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v20 = *(v9 + 60);
    v21 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    v22 = *(v9 + 64);
    v23 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
    (*(*(v23 - 8) + 56))(v14 + v22, 1, 1, v23);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17C50, &unk_1C099BB50);
    }
  }

  else
  {
    sub_1C05B3C0C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  }

  return sub_1C05B666C;
}

BOOL sub_1C05B66CC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  sub_1C05149F8(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  sub_1C05145B4(v11, a1, a2);
  return v15;
}

uint64_t sub_1C05B6814(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  v13 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v16 = sub_1C05C5474(v15);

    *(v9 + v13) = v16;
    v15 = v16;
  }

  v17 = a3(0);
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = *a4;
  swift_beginAccess();
  sub_1C051F9D4(v12, v15 + v18, a1, a2);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C58, &unk_1C0973570);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20));
  v7 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  swift_beginAccess();
  sub_1C05149F8(v6 + v7, v5, &qword_1EBE17C58, &unk_1C0973570);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1C05B3C0C(v5, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE17C58, &unk_1C0973570);
  }

  return result;
}

uint64_t sub_1C05B6AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C58, &unk_1C0973570);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  swift_beginAccess();
  sub_1C05149F8(v7 + v8, v6, &qword_1EBE17C58, &unk_1C0973570);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C05B3C0C(v6, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE17C58, &unk_1C0973570);
  }

  return result;
}

uint64_t sub_1C05B6C84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C58, &unk_1C0973570);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05B4210(a1, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
  v11 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v14 = sub_1C05C5474(v13);

    *(a2 + v11) = v14;
    v13 = v14;
  }

  sub_1C05B3C0C(v10, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
  (*(v8 + 56))(v6, 0, 1, v7);
  v15 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  swift_beginAccess();
  sub_1C051F9D4(v6, v13 + v15, &qword_1EBE17C58, &unk_1C0973570);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.duration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C58, &unk_1C0973570);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v10 = sub_1C05C5474(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1C05B3C0C(a1, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  swift_beginAccess();
  sub_1C051F9D4(v6, v9 + v12, &qword_1EBE17C58, &unk_1C0973570);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_DateTime.duration.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C58, &unk_1C0973570) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17C58, &unk_1C0973570);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17C58, &unk_1C0973570);
    }
  }

  else
  {
    sub_1C05B3C0C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
  }

  return sub_1C05B7250;
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.interval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C60, &unk_1C099BB40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20));
  v7 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  swift_beginAccess();
  sub_1C05149F8(v6 + v7, v5, &qword_1EBE17C60, &unk_1C099BB40);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1C05B3C0C(v5, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE17C60, &unk_1C099BB40);
  }

  return result;
}

uint64_t sub_1C05B7470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C60, &unk_1C099BB40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05B4210(a1, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
  v11 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v14 = sub_1C05C5474(v13);

    *(a2 + v11) = v14;
    v13 = v14;
  }

  sub_1C05B3C0C(v10, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
  (*(v8 + 56))(v6, 0, 1, v7);
  v15 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  swift_beginAccess();
  sub_1C051F9D4(v6, v13 + v15, &qword_1EBE17C60, &unk_1C099BB40);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.interval.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C60, &unk_1C099BB40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v10 = sub_1C05C5474(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1C05B3C0C(a1, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  swift_beginAccess();
  sub_1C051F9D4(v6, v9 + v12, &qword_1EBE17C60, &unk_1C099BB40);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_DateTime.interval.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C60, &unk_1C099BB40) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17C60, &unk_1C099BB40);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 1;
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17C60, &unk_1C099BB40);
    }
  }

  else
  {
    sub_1C05B3C0C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
  }

  return sub_1C05B7A44;
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.recurrence.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C68, &unk_1C0973580);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20));
  v7 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  swift_beginAccess();
  sub_1C05149F8(v6 + v7, v5, &qword_1EBE17C68, &unk_1C0973580);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1C05B3C0C(v5, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE17C68, &unk_1C0973580);
  }

  return result;
}

uint64_t sub_1C05B7C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C68, &unk_1C0973580);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  swift_beginAccess();
  sub_1C05149F8(v7 + v8, v6, &qword_1EBE17C68, &unk_1C0973580);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C05B3C0C(v6, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE17C68, &unk_1C0973580);
  }

  return result;
}

uint64_t sub_1C05B7DF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C68, &unk_1C0973580);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05B4210(a1, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
  v11 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v14 = sub_1C05C5474(v13);

    *(a2 + v11) = v14;
    v13 = v14;
  }

  sub_1C05B3C0C(v10, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
  (*(v8 + 56))(v6, 0, 1, v7);
  v15 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  swift_beginAccess();
  sub_1C051F9D4(v6, v13 + v15, &qword_1EBE17C68, &unk_1C0973580);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.recurrence.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C68, &unk_1C0973580);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v10 = sub_1C05C5474(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1C05B3C0C(a1, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  swift_beginAccess();
  sub_1C051F9D4(v6, v9 + v12, &qword_1EBE17C68, &unk_1C0973580);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_DateTime.recurrence.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C68, &unk_1C0973580) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17C68, &unk_1C0973580);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17C68, &unk_1C0973580);
    }
  }

  else
  {
    sub_1C05B3C0C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
  }

  return sub_1C05B83C0;
}

uint64_t sub_1C05B845C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05B4210(a1, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  v11 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v14 = sub_1C05C5474(v13);

    *(a2 + v11) = v14;
    v13 = v14;
  }

  sub_1C05B3C0C(v10, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  (*(v8 + 56))(v6, 0, 1, v7);
  v15 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
  swift_beginAccess();
  sub_1C051F9D4(v6, v13 + v15, &qword_1EBE17C70, &unk_1C099BB30);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.startTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v10 = sub_1C05C5474(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1C05B3C0C(a1, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
  swift_beginAccess();
  sub_1C051F9D4(v6, v9 + v12, &qword_1EBE17C70, &unk_1C099BB30);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_DateTime.startTime.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17C70, &unk_1C099BB30);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0xE000000000000000;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0xE000000000000000;
    *(v14 + 56) = 0;
    *(v14 + 58) = 0;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 52);
    v20 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17C70, &unk_1C099BB30);
    }
  }

  else
  {
    sub_1C05B3C0C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  }

  return sub_1C05B8A80;
}

uint64_t sub_1C05B8B1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = *(v2 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20));
  v9 = *a1;
  swift_beginAccess();
  sub_1C05149F8(v8 + v9, v7, &qword_1EBE17C70, &unk_1C099BB30);
  v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1C05B3C0C(v7, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = 0;
  *(a2 + 58) = 0;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v12 = *(v10 + 52);
  v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE17C70, &unk_1C099BB30);
  }

  return result;
}

uint64_t sub_1C05B8CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05B4210(a1, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  v11 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v14 = sub_1C05C5474(v13);

    *(a2 + v11) = v14;
    v13 = v14;
  }

  sub_1C05B3C0C(v10, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  (*(v8 + 56))(v6, 0, 1, v7);
  v15 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime;
  swift_beginAccess();
  sub_1C051F9D4(v6, v13 + v15, &qword_1EBE17C70, &unk_1C099BB30);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.endTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v10 = sub_1C05C5474(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1C05B3C0C(a1, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime;
  swift_beginAccess();
  sub_1C051F9D4(v6, v9 + v12, &qword_1EBE17C70, &unk_1C099BB30);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_DateTime.endTime.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17C70, &unk_1C099BB30);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0xE000000000000000;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0xE000000000000000;
    *(v14 + 56) = 0;
    *(v14 + 58) = 0;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 52);
    v20 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17C70, &unk_1C099BB30);
    }
  }

  else
  {
    sub_1C05B3C0C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  }

  return sub_1C05B9320;
}

void sub_1C05B9350(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *(*a1 + 128);
  if (a2)
  {
    v10 = *(v8 + 72);
    sub_1C05B4210(*(v8 + 120), *(v8 + 112), a3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v8 + 128);
      v14 = *(v8 + 72);
      type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
      swift_allocObject();
      v15 = sub_1C05C5474(v12);

      *(v14 + v13) = v15;
      v12 = v15;
    }

    v17 = *(v8 + 112);
    v16 = *(v8 + 120);
    v18 = *(v8 + 96);
    v19 = *(v8 + 104);
    v21 = *(v8 + 80);
    v20 = *(v8 + 88);
    sub_1C05B3C0C(v17, v21, a3);
    (*(v19 + 56))(v21, 0, 1, v18);
    v22 = *a4;
    swift_beginAccess();
    sub_1C051F9D4(v21, v12 + v22, a5, a6);
    swift_endAccess();
    sub_1C05B4278(v16, a3);
  }

  else
  {
    v23 = *(v8 + 72);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v23 + v9);
    if ((v24 & 1) == 0)
    {
      v26 = *(v8 + 128);
      v27 = *(v8 + 72);
      type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
      swift_allocObject();
      v28 = sub_1C05C5474(v25);

      *(v27 + v26) = v28;
      v25 = v28;
    }

    v17 = *(v8 + 112);
    v16 = *(v8 + 120);
    v29 = *(v8 + 96);
    v30 = *(v8 + 104);
    v21 = *(v8 + 80);
    v20 = *(v8 + 88);
    sub_1C05B3C0C(v16, v21, a3);
    (*(v30 + 56))(v21, 0, 1, v29);
    v31 = *a4;
    swift_beginAccess();
    sub_1C051F9D4(v21, v25 + v31, a5, a6);
    swift_endAccess();
  }

  free(v16);
  free(v17);
  free(v20);
  free(v21);

  free(v8);
}

void (*Com_Apple_Siri_Product_Proto_DateTime.startPosition.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startPosition;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1C05B9694;
}

uint64_t sub_1C05B96AC(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4);
}

uint64_t sub_1C05B9700(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v11 = sub_1C05C5474(v10);

    *(a2 + v8) = v11;
    v10 = v11;
  }

  v12 = *a5;
  result = swift_beginAccess();
  *(v10 + v12) = v7;
  return result;
}

uint64_t sub_1C05B97B8(int a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v9 = sub_1C05C5474(v8);

    *(v4 + v6) = v9;
    v8 = v9;
  }

  v10 = *a2;
  result = swift_beginAccess();
  *(v8 + v10) = a1;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_DateTime.endPosition.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endPosition;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1C05B990C;
}

void sub_1C05B9918(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 84);
  v7 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 84);
    v11 = *(v4 + 72);
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v12 = sub_1C05C5474(v9);

    *(v11 + v10) = v12;
    v9 = v12;
  }

  v13 = *a3;
  swift_beginAccess();
  *(v9 + v13) = v5;

  free(v4);
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.temporalIntent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20)) + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_1C05B9A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20)) + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C05B9AC8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v8 = sub_1C05C5474(v7);

    *(a2 + v5) = v8;
    v7 = v8;
  }

  v9 = v7 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
  result = swift_beginAccess();
  *v9 = v3;
  *(v9 + 8) = v4;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.temporalIntent.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v8 = sub_1C05C5474(v7);

    *(v2 + v5) = v8;
    v7 = v8;
  }

  v9 = v7 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
  result = swift_beginAccess();
  *v9 = v3;
  *(v9 + 8) = v4;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_DateTime.temporalIntent.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return sub_1C05B9CEC;
}

void sub_1C05B9CEC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v2 + 84);
    v10 = *(v2 + 88);
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v11 = sub_1C05C5474(v8);

    *(v10 + v9) = v11;
    v8 = v11;
  }

  v12 = v8 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
  swift_beginAccess();
  *v12 = v3;
  *(v12 + 8) = v6;

  free(v2);
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C095D38C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C095D38C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

unint64_t Com_Apple_Siri_Product_Proto_DateTime.TemporalIntent.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C05B9EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C05C78E4(a1, a2, a3);

  return MEMORY[0x1EEE3F550](a1, a2, v5);
}

double Com_Apple_Siri_Product_Proto_DateTime.init()@<D0>(uint64_t a2@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  if (qword_1EBE155E0 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBE17C18;

  return result;
}

uint64_t sub_1C05BA068()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17AE0);
  __swift_project_value_buffer(v0, qword_1EBE17AE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_1C09734F0;
  v4 = v114 + v3;
  v5 = v114 + v3 + v1[14];
  *(v114 + v3) = 0;
  *v5 = "PERIOD_NOT_SET";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v114 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "NULL";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v114 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "NOW";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v114 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "MIDNIGHT";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v114 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "MILLISECOND";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v114 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "SECOND";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v114 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "MINUTE";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v114 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "HOUR";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  v22 = v114 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "MORNING";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  v23 = (v114 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "BREAKFAST";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  v25 = (v114 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "BRUNCH";
  *(v26 + 1) = 6;
  v26[16] = 2;
  v8();
  v27 = (v114 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "LUNCH";
  *(v28 + 1) = 5;
  v28[16] = 2;
  v8();
  v29 = (v114 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "NOON";
  *(v30 + 1) = 4;
  v30[16] = 2;
  v8();
  v31 = (v114 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "AFTERNOON";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  v33 = (v114 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "EVENING";
  *(v34 + 1) = 7;
  v34[16] = 2;
  v8();
  v35 = (v114 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "HAPPYHOUR";
  *(v36 + 1) = 9;
  v36[16] = 2;
  v8();
  v37 = v114 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "DINNER";
  *(v37 + 8) = 6;
  *(v37 + 16) = 2;
  v8();
  v38 = (v114 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "BEDTIME";
  *(v39 + 1) = 7;
  v39[16] = 2;
  v8();
  v40 = (v114 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "DAYTIME";
  *(v41 + 1) = 7;
  v41[16] = 2;
  v8();
  v42 = (v114 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "NIGHT";
  *(v43 + 1) = 5;
  v43[16] = 2;
  v8();
  v44 = (v114 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "OVERNIGHT";
  *(v45 + 1) = 9;
  v45[16] = 2;
  v8();
  v46 = (v114 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "TONIGHT";
  *(v47 + 1) = 7;
  v47[16] = 2;
  v8();
  v48 = (v114 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "DAYPERIOD";
  *(v49 + 1) = 9;
  v49[16] = 2;
  v8();
  v50 = (v114 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "TWO_DAYS_BEFORE_YESTERDAY";
  *(v51 + 1) = 25;
  v51[16] = 2;
  v8();
  v52 = (v114 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "DAY_BEFORE_YESTERDAY";
  *(v53 + 1) = 20;
  v53[16] = 2;
  v8();
  v54 = (v114 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "YESTERDAY";
  *(v55 + 1) = 9;
  v55[16] = 2;
  v8();
  v56 = (v114 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "TODAY";
  *(v57 + 1) = 5;
  v57[16] = 2;
  v8();
  v58 = (v114 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "TOMORROW";
  *(v59 + 1) = 8;
  v59[16] = 2;
  v8();
  v60 = (v114 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "DAY_AFTER_TOMORROW";
  *(v61 + 1) = 18;
  v61[16] = 2;
  v8();
  v62 = (v114 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "TWO_DAYS_AFTER_TOMORROW";
  *(v63 + 1) = 23;
  v63[16] = 2;
  v8();
  v64 = (v114 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 30;
  *v65 = "DAY";
  *(v65 + 1) = 3;
  v65[16] = 2;
  v8();
  v66 = (v114 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 31;
  *v67 = "SUNDAY";
  *(v67 + 1) = 6;
  v67[16] = 2;
  v8();
  v68 = v114 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 32;
  *v68 = "MONDAY";
  *(v68 + 8) = 6;
  *(v68 + 16) = 2;
  v8();
  v69 = (v114 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "TUESDAY";
  *(v70 + 1) = 7;
  v70[16] = 2;
  v8();
  v71 = (v114 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "WEDNESDAY";
  *(v72 + 1) = 9;
  v72[16] = 2;
  v8();
  v73 = (v114 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "THURSDAY";
  *(v74 + 1) = 8;
  v74[16] = 2;
  v8();
  v75 = (v114 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "FRIDAY";
  *(v76 + 1) = 6;
  v76[16] = 2;
  v8();
  v77 = (v114 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "SATURDAY";
  *(v78 + 1) = 8;
  v78[16] = 2;
  v8();
  v79 = (v114 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "DAYOFWEEK";
  *(v80 + 1) = 9;
  v80[16] = 2;
  v8();
  v81 = (v114 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "WEEKEND";
  *(v82 + 1) = 7;
  v82[16] = 2;
  v8();
  v83 = (v114 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "WEEKDAY";
  *(v84 + 1) = 7;
  v84[16] = 2;
  v8();
  v85 = (v114 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "WEEK";
  *(v86 + 1) = 4;
  v86[16] = 2;
  v8();
  v87 = (v114 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "FORTNIGHT";
  *(v88 + 1) = 9;
  v88[16] = 2;
  v8();
  v89 = (v114 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "DAYOFMONTH";
  *(v90 + 1) = 10;
  v90[16] = 2;
  v8();
  v91 = (v114 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 44;
  *v92 = "MONTH";
  *(v92 + 1) = 5;
  v92[16] = 2;
  v8();
  v93 = (v114 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 45;
  *v94 = "QUARTER";
  *(v94 + 1) = 7;
  v94[16] = 2;
  v8();
  v95 = (v114 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 46;
  *v96 = "SPRING";
  *(v96 + 1) = 6;
  v96[16] = 2;
  v8();
  v97 = (v114 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 47;
  *v98 = "SUMMER";
  *(v98 + 1) = 6;
  v98[16] = 2;
  v8();
  v99 = (v114 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 48;
  *v100 = "WINTER";
  *(v100 + 1) = 6;
  v100[16] = 2;
  v8();
  v101 = (v114 + v3 + 49 * v2);
  v102 = v101 + v1[14];
  *v101 = 49;
  *v102 = "FALL";
  *(v102 + 1) = 4;
  v102[16] = 2;
  v8();
  v103 = (v114 + v3 + 50 * v2);
  v104 = v103 + v1[14];
  *v103 = 50;
  *v104 = "SEASON";
  *(v104 + 1) = 6;
  v104[16] = 2;
  v8();
  v105 = (v114 + v3 + 51 * v2);
  v106 = v105 + v1[14];
  *v105 = 51;
  *v106 = "SEMESTER";
  *(v106 + 1) = 8;
  v106[16] = 2;
  v8();
  v107 = (v114 + v3 + 52 * v2);
  v108 = v107 + v1[14];
  *v107 = 52;
  *v108 = "YEAR";
  *(v108 + 1) = 4;
  v108[16] = 2;
  v8();
  v109 = (v114 + v3 + 53 * v2);
  v110 = v109 + v1[14];
  *v109 = 53;
  *v110 = "DECADE";
  *(v110 + 1) = 6;
  v110[16] = 2;
  v8();
  v111 = (v114 + v3 + 54 * v2);
  v112 = v111 + v1[14];
  *v111 = 54;
  *v112 = "CENTURY";
  *(v112 + 1) = 7;
  v112[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t sub_1C05BAED8()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17AF8);
  __swift_project_value_buffer(v0, qword_1EBE17AF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1C0973500;
  v4 = v45 + v3;
  v5 = v45 + v3 + v1[14];
  *(v45 + v3) = 0;
  *v5 = "QUALIFIER_NOT_SET";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v45 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "NONE";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v45 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "PLUS";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v45 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "MINUS";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v45 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "APPROX";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v45 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "EARLY";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v45 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "LATE";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v45 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "EVERY";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  v22 = v45 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "BEGINOF";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  v23 = (v45 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "MIDDLEOF";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  v25 = (v45 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ENDOF";
  *(v26 + 1) = 5;
  v26[16] = 2;
  v8();
  v27 = (v45 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ALLOF";
  *(v28 + 1) = 5;
  v28[16] = 2;
  v8();
  v29 = (v45 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "RESTOF";
  *(v30 + 1) = 6;
  v30[16] = 2;
  v8();
  v31 = (v45 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "BEFORE";
  *(v32 + 1) = 6;
  v32[16] = 2;
  v8();
  v33 = (v45 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "AFTER";
  *(v34 + 1) = 5;
  v34[16] = 2;
  v8();
  v35 = (v45 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "THIS";
  *(v36 + 1) = 4;
  v36[16] = 2;
  v8();
  v37 = v45 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "NEXT";
  *(v37 + 8) = 4;
  *(v37 + 16) = 2;
  v8();
  v38 = (v45 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "UPCOMING";
  *(v39 + 1) = 8;
  v39[16] = 2;
  v8();
  v40 = (v45 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "NEXT_NEXT";
  *(v41 + 1) = 9;
  v41[16] = 2;
  v8();
  v42 = (v45 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "LAST";
  *(v43 + 1) = 4;
  v43[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t sub_1C05BB52C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17B10);
  __swift_project_value_buffer(v0, qword_1EBE17B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1C0973510;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 0;
  *v5 = "CALENDAR_SYSTEM_NOT_SET";
  *(v5 + 8) = 23;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v32 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "BUDDHIST";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v32 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "CHINESE";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v32 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "HEBREW";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v32 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "HIJRI";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v32 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "HINDU";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v32 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ISLAMIC_UMALQURA";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v32 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ISLAMIC";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v32 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "GREGORIAN";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "JAPANESE";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "JULIAN";
  *(v26 + 1) = 6;
  v26[16] = 2;
  v8();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "PERSIAN";
  *(v28 + 1) = 7;
  v28[16] = 2;
  v8();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "ROC";
  *(v30 + 1) = 3;
  v30[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t sub_1C05BB9F0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17B28);
  __swift_project_value_buffer(v0, qword_1EBE17B28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C0973520;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 0;
  *v5 = "DOW_NOT_SET";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "DOW_MONDAY";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "DOW_TUESDAY";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "DOW_WEDNESDAY";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "DOW_THURSDAY";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "DOW_FRIDAY";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "DOW_SATURDAY";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "DOW_SUNDAY";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTimePeriod.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C095D41C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C095D44C();
      }

      else if (result == 2)
      {
        sub_1C05C5C24(2, v5, v6);
        sub_1C095D45C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_DateTimePeriod.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1C095D5FC(), !v4))
  {
    v6 = Com_Apple_Siri_Product_Proto_Period.rawValue.getter();
    if (!v6 || (sub_1C05C5C24(v6, v7, v8), result = sub_1C095D60C(), !v4))
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t sub_1C05BBFC8@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05BC044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C5C78(&qword_1EBE17EC0, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_DateTimePeriod);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05BC0E4(uint64_t a1)
{
  v2 = sub_1C05C5C78(&qword_1EBE17C98, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_DateTimePeriod);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05BC150(uint64_t a1, uint64_t a2)
{
  sub_1C05C5C78(&qword_1EBE17C98, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_DateTimePeriod);

  return sub_1C095D5AC();
}

uint64_t sub_1C05BC1EC()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17B58);
  __swift_project_value_buffer(v0, qword_1EBE17B58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971210;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "numerator";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "denominator";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "ordinalValue";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_FractionalPeriod.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_1C095D52C();
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_FractionalPeriod.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C095D67C(), !v4))
  {
    if (!v3[1] || (result = sub_1C095D67C(), !v4))
    {
      if (!v3[2] || (result = sub_1C095D67C(), !v4))
      {
        type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
        return sub_1C095D36C();
      }
    }
  }

  return result;
}

uint64_t sub_1C05BC5C4@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05BC638(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C5C78(&qword_1EBE17EB8, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_FractionalPeriod);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05BC6D8(uint64_t a1)
{
  v2 = sub_1C05C5C78(&qword_1EBE17CC0, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_FractionalPeriod);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05BC744(uint64_t a1, uint64_t a2)
{
  sub_1C05C5C78(&qword_1EBE17CC0, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_FractionalPeriod);

  return sub_1C095D5AC();
}

uint64_t sub_1C05BC7E0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17B70);
  __swift_project_value_buffer(v0, qword_1EBE17B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C0973530;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "meridiem";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "hourOfDay";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "minute";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "period";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "qualifier";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "timeZoneId";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "isStart";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "isUserDefined";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "is24HourStyleInput";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_Time.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C095D41C();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result != 3)
          {
            sub_1C05BCCFC(a1, v5, a2, a3);
            goto LABEL_5;
          }
        }

        else
        {
          if (result == 1)
          {
            goto LABEL_20;
          }

          if (result != 2)
          {
            goto LABEL_5;
          }
        }

        sub_1C095D52C();
      }

      else if (result <= 6)
      {
        if (result != 5)
        {
LABEL_20:
          sub_1C095D50C();
          goto LABEL_5;
        }

        sub_1C05C5CC0(5, v10, v11);
        sub_1C095D45C();
      }

      else if (result == 7 || result == 8 || result == 9)
      {
        sub_1C095D44C();
      }

LABEL_5:
      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C05BCCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  sub_1C05C5C78(&qword_1EBE17C98, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
  return sub_1C095D55C();
}

uint64_t Com_Apple_Siri_Product_Proto_Time.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C38, &unk_1C0973550);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v23 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 8);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    result = sub_1C095D66C();
    if (v4)
    {
      return result;
    }

    if (!*(v3 + 16))
    {
      goto LABEL_9;
    }
  }

  else if (!*(v3 + 16))
  {
    goto LABEL_9;
  }

  result = sub_1C095D67C();
  if (v4)
  {
    return result;
  }

LABEL_9:
  if (*(v3 + 20))
  {
    result = sub_1C095D67C();
    if (v4)
    {
      return result;
    }
  }

  v25 = v4;
  v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  sub_1C05149F8(v3 + *(v15 + 52), v7, &qword_1EBE17C38, &unk_1C0973550);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v23[1] = v15;
    sub_1C05B3C0C(v7, v11, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
    sub_1C05C5C78(&qword_1EBE17C98, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
    v18 = v25;
    sub_1C095D6AC();
    result = sub_1C05B4278(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
    if (v18)
    {
      return result;
    }

    v19 = *(v3 + 24);
    if (!v19)
    {
      goto LABEL_17;
    }

LABEL_16:
    v20 = *(v3 + 32);
    v23[2] = v19;
    v24 = v20;
    sub_1C05C5CC0(result, v16, v17);
    result = sub_1C095D60C();
    if (v18)
    {
      return result;
    }

    goto LABEL_17;
  }

  result = sub_1C05145B4(v7, &qword_1EBE17C38, &unk_1C0973550);
  v18 = v25;
  v19 = *(v3 + 24);
  if (v19)
  {
    goto LABEL_16;
  }

LABEL_17:
  v21 = *(v3 + 48);
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = *(v3 + 40) & 0xFFFFFFFFFFFFLL;
  }

  if (!v22 || (result = sub_1C095D66C(), !v18))
  {
    if (*(v3 + 56) != 1 || (result = sub_1C095D5FC(), !v18))
    {
      if (*(v3 + 57) != 1 || (result = sub_1C095D5FC(), !v18))
      {
        if (*(v3 + 58) != 1)
        {
          return sub_1C095D36C();
        }

        result = sub_1C095D5FC();
        if (!v18)
        {
          return sub_1C095D36C();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C05BD1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = 0;
  *(a2 + 58) = 0;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(a1 + 52);
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1C05BD264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C05BD2D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C05BD3A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C5C78(&qword_1EBE17EB0, type metadata accessor for Com_Apple_Siri_Product_Proto_Time, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Time);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05BD440(uint64_t a1)
{
  v2 = sub_1C05C5C78(&qword_1EBE17DE8, type metadata accessor for Com_Apple_Siri_Product_Proto_Time, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Time);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05BD4AC(uint64_t a1, uint64_t a2)
{
  sub_1C05C5C78(&qword_1EBE17DE8, type metadata accessor for Com_Apple_Siri_Product_Proto_Time, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Time);

  return sub_1C095D5AC();
}

uint64_t sub_1C05BD548()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17B88);
  __swift_project_value_buffer(v0, qword_1EBE17B88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "calendarSystem";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTimeHoliday.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C095D41C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C095D50C();
      }

      else if (result == 2)
      {
        sub_1C05C5D14(2, v5, v6);
        sub_1C095D45C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_DateTimeHoliday.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *v3;
  v6 = v3[1];
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7 || (result = sub_1C095D66C(), !v4))
  {
    if (!v3[2] || (sub_1C05C5D14(result, v6, a3), result = sub_1C095D60C(), !v4))
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t static Com_Apple_Siri_Product_Proto_DateTimeHoliday.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    switch(v6)
    {
      case 1:
        if (v5 == 1)
        {
          goto LABEL_11;
        }

        return 0;
      case 2:
        if (v5 == 2)
        {
          goto LABEL_11;
        }

        return 0;
      case 3:
        if (v5 == 3)
        {
          goto LABEL_11;
        }

        return 0;
      case 4:
        if (v5 == 4)
        {
          goto LABEL_11;
        }

        return 0;
      case 5:
        if (v5 == 5)
        {
          goto LABEL_11;
        }

        return 0;
      case 6:
        if (v5 == 6)
        {
          goto LABEL_11;
        }

        return 0;
      case 7:
        if (v5 == 7)
        {
          goto LABEL_11;
        }

        return 0;
      case 8:
        if (v5 == 8)
        {
          goto LABEL_11;
        }

        return 0;
      case 9:
        if (v5 == 9)
        {
          goto LABEL_11;
        }

        return 0;
      case 10:
        if (v5 == 10)
        {
          goto LABEL_11;
        }

        return 0;
      case 11:
        if (v5 == 11)
        {
          goto LABEL_11;
        }

        return 0;
      case 12:
        if (v5 == 12)
        {
          goto LABEL_11;
        }

        return 0;
      default:
        if (v5)
        {
          return 0;
        }

        goto LABEL_11;
    }
  }

  if (v5 != v6)
  {
    return 0;
  }

LABEL_11:
  type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C05BDAA8@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05BDB28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C5C78(&qword_1EBE17EA8, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05BDBC8(uint64_t a1)
{
  v2 = sub_1C05C5C78(&qword_1EBE17CC8, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05BDC34(uint64_t a1, uint64_t a2)
{
  sub_1C05C5C78(&qword_1EBE17CC8, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);

  return sub_1C095D5AC();
}

uint64_t sub_1C05BDCB0(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_1C095DF3C() & 1) == 0 || !sub_1C05AD890(a1[2], *(a1 + 24), a2[2]))
  {
    return 0;
  }

  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C05BDDA0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17BA0);
  __swift_project_value_buffer(v0, qword_1EBE17BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1C0973540;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "year";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v30 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "month";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v30 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "dayOfMonth";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v30 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "dayOfWeek";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v30 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "dateTimeHoliday";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v30 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "qualifier";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v30 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "isStart";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v30 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "isUserDefined";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v30 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "periods";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "calendarSystem";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "fractionalPeriod";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "dayOfWeekOrdinalValue";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_Date.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C095D41C();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 6)
      {
        if (result > 9)
        {
          switch(result)
          {
            case 10:
              sub_1C05C5D14(10, v10, v11);
              goto LABEL_27;
            case 11:
              sub_1C05BE510(a1, v5, a2, a3);
              break;
            case 12:
              sub_1C095D48C();
              break;
          }
        }

        else if (result == 7 || result == 8)
        {
          sub_1C095D44C();
        }

        else
        {
          type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
          sub_1C05C5C78(&qword_1EBE17C98, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
          sub_1C095D54C();
        }
      }

      else if (result > 3)
      {
        if (result == 4)
        {
          sub_1C05C5D68(4, v10, v11);
          goto LABEL_27;
        }

        if (result != 5)
        {
          sub_1C05C5CC0(6, v10, v11);
LABEL_27:
          sub_1C095D45C();
          goto LABEL_5;
        }

        sub_1C05BE45C(a1, v5, a2, a3);
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        sub_1C095D52C();
      }

LABEL_5:
      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C05BE45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  sub_1C05C5C78(&qword_1EBE17CC8, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
  return sub_1C095D55C();
}

uint64_t sub_1C05BE510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  sub_1C05C5C78(&qword_1EBE17CC0, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
  return sub_1C095D55C();
}

uint64_t Com_Apple_Siri_Product_Proto_Date.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C48, &unk_1C0973560);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v33 - v6;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C40, &unk_1C099BB60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v3)
  {
    result = sub_1C095D67C();
    if (v4)
    {
      return result;
    }

    if (!*(v3 + 4))
    {
      goto LABEL_7;
    }

LABEL_6:
    result = sub_1C095D67C();
    if (v4)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (*(v3 + 4))
  {
    goto LABEL_6;
  }

LABEL_7:
  result = *(v3 + 8);
  if (!result || (result = sub_1C095D67C(), !v4))
  {
    v35 = v4;
    if (*(v3 + 16))
    {
      v19 = *(v3 + 24);
      v39 = *(v3 + 16);
      v40 = v19;
      sub_1C05C5D68(result, v14, v15);
      v20 = v35;
      result = sub_1C095D60C();
      if (v20)
      {
        return result;
      }

      v35 = 0;
    }

    v34 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
    sub_1C05149F8(v3 + *(v34 + 60), v11, &qword_1EBE17C40, &unk_1C099BB60);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      result = sub_1C05145B4(v11, &qword_1EBE17C40, &unk_1C099BB60);
    }

    else
    {
      sub_1C05B3C0C(v11, v17, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
      sub_1C05C5C78(&qword_1EBE17CC8, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
      v23 = v35;
      sub_1C095D6AC();
      result = sub_1C05B4278(v17, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
      if (v23)
      {
        return result;
      }

      v35 = 0;
    }

    v24 = v41;
    if (*(v3 + 32))
    {
      v25 = *(v3 + 40);
      v39 = *(v3 + 32);
      v40 = v25;
      sub_1C05C5CC0(result, v21, v22);
      v26 = v35;
      result = sub_1C095D60C();
      if (v26)
      {
        return result;
      }
    }

    else
    {
      v26 = v35;
    }

    if (*(v3 + 41) != 1 || (result = sub_1C095D5FC(), !v26))
    {
      if (*(v3 + 42) != 1 || (result = sub_1C095D5FC(), !v26))
      {
        v27 = v26;
        if (*(*(v3 + 48) + 16))
        {
          type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
          sub_1C05C5C78(&qword_1EBE17C98, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
          result = sub_1C095D69C();
          if (v26)
          {
            return result;
          }

          v27 = 0;
        }

        if (*(v3 + 56))
        {
          v28 = *(v3 + 64);
          v39 = *(v3 + 56);
          v40 = v28;
          sub_1C05C5D14(result, v21, v22);
          result = sub_1C095D60C();
          v29 = v38;
          if (v27)
          {
            return result;
          }

          v27 = 0;
        }

        else
        {
          v29 = v38;
        }

        sub_1C05149F8(v3 + *(v34 + 64), v24, &qword_1EBE17C48, &unk_1C0973560);
        if ((*(v37 + 48))(v24, 1, v29) == 1)
        {
          sub_1C05145B4(v24, &qword_1EBE17C48, &unk_1C0973560);
          v30 = v27;
        }

        else
        {
          v31 = v24;
          v32 = v36;
          sub_1C05B3C0C(v31, v36, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
          sub_1C05C5C78(&qword_1EBE17CC0, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
          v30 = v27;
          sub_1C095D6AC();
          result = sub_1C05B4278(v32, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
          if (v27)
          {
            return result;
          }
        }

        if (!*(v3 + 68))
        {
          return sub_1C095D36C();
        }

        result = sub_1C095D62C();
        if (!v30)
        {
          return sub_1C095D36C();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C05BEC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 41) = 0;
  *(a2 + 48) = v4;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 68) = 0;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v5 = *(a1 + 60);
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = *(a1 + 64);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_1C05BED74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C05BEDE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C05BEEB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C5C78(&qword_1EBE17EA0, type metadata accessor for Com_Apple_Siri_Product_Proto_Date, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Date);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05BEF50(uint64_t a1)
{
  v2 = sub_1C05C5C78(&qword_1EBE17E10, type metadata accessor for Com_Apple_Siri_Product_Proto_Date, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Date);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05BEFBC(uint64_t a1, uint64_t a2)
{
  sub_1C05C5C78(&qword_1EBE17E10, type metadata accessor for Com_Apple_Siri_Product_Proto_Date, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Date);

  return sub_1C095D5AC();
}

uint64_t Com_Apple_Siri_Product_Proto_Duration.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C095D41C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C095D4EC();
      }

      else if (result == 2)
      {
        sub_1C05C5C24(2, v5, v6);
        sub_1C095D45C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Duration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 == 0.0 || (result = sub_1C095D65C(), !v4))
  {
    v5 = Com_Apple_Siri_Product_Proto_Period.rawValue.getter();
    if (!v5 || (sub_1C05C5C24(v5, v6, v7), result = sub_1C095D60C(), !v4))
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t sub_1C05BF290@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05BF308(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C5C78(&qword_1EBE17E98, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Duration);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05BF3A8(uint64_t a1)
{
  v2 = sub_1C05C5C78(&qword_1EBE17E28, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Duration);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05BF414(uint64_t a1, uint64_t a2)
{
  sub_1C05C5C78(&qword_1EBE17E28, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Duration);

  return sub_1C095D5AC();
}

uint64_t sub_1C05BF4B0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17BD0);
  __swift_project_value_buffer(v0, qword_1EBE17BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971200;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "quantity";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "period";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "qualifier";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isUserDefined";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_Interval.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C095D41C();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v7 = v3;
          sub_1C05C5CC0(3, v5, v6);
          goto LABEL_15;
        }

        if (result == 4)
        {
          sub_1C095D44C();
        }
      }

      else
      {
        if (result == 1)
        {
          sub_1C095D4EC();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v7 = v3;
          sub_1C05C5C24(2, v5, v6);
LABEL_15:
          v3 = v7;
          sub_1C095D45C();
        }
      }

LABEL_5:
      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Interval.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 == 0.0 || (result = sub_1C095D65C(), !v4))
  {
    v5 = v4;
    result = Com_Apple_Siri_Product_Proto_Period.rawValue.getter();
    if (result)
    {
      sub_1C05C5C24(result, v7, v8);
      result = sub_1C095D60C();
      if (v4)
      {
        return result;
      }

      v5 = 0;
    }

    if (*(v3 + 24))
    {
      sub_1C05C5CC0(result, v7, v8);
      v9 = v5;
      result = sub_1C095D60C();
      if (v5)
      {
        return result;
      }
    }

    else
    {
      v9 = v5;
    }

    if (*(v3 + 33) != 1 || (result = sub_1C095D5FC(), !v9))
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t sub_1C05BF9E8@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05BFA68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C5C78(&qword_1EBE17E90, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Interval);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05BFB08(uint64_t a1)
{
  v2 = sub_1C05C5C78(&qword_1EBE17E40, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Interval);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05BFB74(uint64_t a1, uint64_t a2)
{
  sub_1C05C5C78(&qword_1EBE17E40, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Interval);

  return sub_1C095D5AC();
}

uint64_t sub_1C05BFC28(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C096E0D0;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69D26E0];
  v15 = sub_1C095D6BC();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = "period";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v16();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_Recurrence.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C095D41C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C095D48C();
      }

      else if (result == 2)
      {
        sub_1C05C5C24(2, v5, v6);
        sub_1C095D45C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Recurrence.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C095D62C(), !v4))
  {
    v6 = Com_Apple_Siri_Product_Proto_Period.rawValue.getter();
    if (!v6 || (sub_1C05C5C24(v6, v7, v8), result = sub_1C095D60C(), !v4))
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t sub_1C05C0000@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05C007C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C5C78(&qword_1EBE17E88, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Recurrence);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05C011C(uint64_t a1)
{
  v2 = sub_1C05C5C78(&qword_1EBE17E58, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Recurrence);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05C0188(uint64_t a1, uint64_t a2)
{
  sub_1C05C5C78(&qword_1EBE17E58, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Recurrence);

  return sub_1C095D5AC();
}

uint64_t sub_1C05C0224()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17C00);
  __swift_project_value_buffer(v0, qword_1EBE17C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C09711F0;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "startDate";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "endDate";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "interval";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "recurrence";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "startTime";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "endTime";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "startPosition";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "endPosition";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "temporalIntent";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t sub_1C05C0604()
{
  type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
  swift_allocObject();
  result = sub_1C05C0644();
  qword_1EBE17C18 = result;
  return result;
}

uint64_t sub_1C05C0644()
{
  v1 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate;
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate, 1, 1, v2);
  v4 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  v12 = *(*(v11 - 8) + 56);
  v12(v0 + v10, 1, 1, v11);
  v12(v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime, 1, 1, v11);
  *(v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startPosition) = 0;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endPosition) = 0;
  v13 = v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
  *v13 = 0;
  *(v13 + 8) = 1;
  return v0;
}

uint64_t sub_1C05C085C()
{
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate, &qword_1EBE17C50, &unk_1C099BB50);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate, &qword_1EBE17C50, &unk_1C099BB50);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration, &qword_1EBE17C58, &unk_1C0973570);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval, &qword_1EBE17C60, &unk_1C099BB40);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence, &qword_1EBE17C68, &unk_1C0973580);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime, &qword_1EBE17C70, &unk_1C099BB30);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime, &qword_1EBE17C70, &unk_1C099BB30);

  return swift_deallocClassInstance();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v12 = sub_1C05C5474(v11);

    *(v4 + v8) = v12;
    v10 = v12;
  }

  return sub_1C05C0A54(v10, a1, a2, a3);
}

uint64_t sub_1C05C0A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C095D41C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 5)
      {
        if (result <= 7)
        {
          if (result == 6)
          {
            sub_1C05C1098(a2, a1, a3, a4);
          }

          else
          {
            sub_1C05C1174(a2, a1, a3, a4);
          }
        }

        else
        {
          switch(result)
          {
            case 8:
              sub_1C05C1250(a2, a1, a3, a4, &OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startPosition);
              break;
            case 9:
              sub_1C05C1250(a2, a1, a3, a4, &OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endPosition);
              break;
            case 10:
              sub_1C05C12D8(a2, a1, a3, a4);
              break;
          }
        }
      }

      else if (result <= 2)
      {
        if (result == 1)
        {
          sub_1C05C0C4C(a2, a1, a3, a4);
        }

        else if (result == 2)
        {
          sub_1C05C0D28(a2, a1, a3, a4);
        }
      }

      else if (result == 3)
      {
        sub_1C05C0E04(a2, a1, a3, a4);
      }

      else if (result == 4)
      {
        sub_1C05C0EE0(a2, a1, a3, a4);
      }

      else
      {
        sub_1C05C0FBC(a2, a1, a3, a4);
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C05C0C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  sub_1C05C5C78(&qword_1EBE17E10, type metadata accessor for Com_Apple_Siri_Product_Proto_Date, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Date);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C05C0D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  sub_1C05C5C78(&qword_1EBE17E10, type metadata accessor for Com_Apple_Siri_Product_Proto_Date, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Date);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C05C0E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  sub_1C05C5C78(&qword_1EBE17E28, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Duration);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C05C0EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  sub_1C05C5C78(&qword_1EBE17E40, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Interval);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C05C0FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  sub_1C05C5C78(&qword_1EBE17E58, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Recurrence);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C05C1098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  sub_1C05C5C78(&qword_1EBE17DE8, type metadata accessor for Com_Apple_Siri_Product_Proto_Time, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Time);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C05C1174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  sub_1C05C5C78(&qword_1EBE17DE8, type metadata accessor for Com_Apple_Siri_Product_Proto_Time, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Time);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C05C1250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_1C095D48C();
  return swift_endAccess();
}

uint64_t sub_1C05C12D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_beginAccess();
  sub_1C05C78E4(v4, v5, v6);
  sub_1C095D45C();
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0);
  result = sub_1C05C13E0(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C05C13E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v95 = a3;
  v96 = a4;
  v94 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v76 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v74 - v8;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  v79 = *(v9 - 8);
  v80 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v74 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v74 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C68, &unk_1C0973580);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v83 = &v74 - v14;
  v84 = type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v77 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C60, &unk_1C099BB40);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v87 = &v74 - v17;
  v88 = type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  v86 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v81 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C58, &unk_1C0973570);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v91 = &v74 - v20;
  v92 = type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  v90 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v85 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v74 - v26;
  v28 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v89 = &v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v74 - v32;
  v34 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate;
  swift_beginAccess();
  v93 = a1;
  sub_1C05149F8(a1 + v34, v27, &qword_1EBE17C50, &unk_1C099BB50);
  v35 = *(v29 + 48);
  if (v35(v27, 1, v28) == 1)
  {
    sub_1C05145B4(v27, &qword_1EBE17C50, &unk_1C099BB50);
    v36 = v99;
  }

  else
  {
    sub_1C05B3C0C(v27, v33, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
    sub_1C05C5C78(&qword_1EBE17E10, type metadata accessor for Com_Apple_Siri_Product_Proto_Date, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Date);
    v37 = v99;
    sub_1C095D6AC();
    v36 = v37;
    if (v37)
    {
      return sub_1C05B4278(v33, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
    }

    sub_1C05B4278(v33, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  }

  v38 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate;
  v39 = v93;
  swift_beginAccess();
  sub_1C05149F8(v39 + v38, v25, &qword_1EBE17C50, &unk_1C099BB50);
  if (v35(v25, 1, v28) == 1)
  {
    v99 = v36;
    sub_1C05145B4(v25, &qword_1EBE17C50, &unk_1C099BB50);
    goto LABEL_11;
  }

  v40 = v25;
  v41 = v89;
  sub_1C05B3C0C(v40, v89, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  sub_1C05C5C78(&qword_1EBE17E10, type metadata accessor for Com_Apple_Siri_Product_Proto_Date, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Date);
  sub_1C095D6AC();
  if (v36)
  {
    v33 = v41;
    return sub_1C05B4278(v33, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  }

  v99 = 0;
  sub_1C05B4278(v41, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
LABEL_11:
  v43 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  swift_beginAccess();
  v44 = v91;
  sub_1C05149F8(v39 + v43, v91, &qword_1EBE17C58, &unk_1C0973570);
  if ((*(v90 + 48))(v44, 1, v92) == 1)
  {
    sub_1C05145B4(v44, &qword_1EBE17C58, &unk_1C0973570);
    v45 = v99;
  }

  else
  {
    v46 = v44;
    v47 = v85;
    sub_1C05B3C0C(v46, v85, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
    sub_1C05C5C78(&qword_1EBE17E28, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Duration);
    v48 = v99;
    sub_1C095D6AC();
    v45 = v48;
    result = sub_1C05B4278(v47, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
    if (v48)
    {
      return result;
    }
  }

  v49 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  swift_beginAccess();
  v50 = v87;
  sub_1C05149F8(v39 + v49, v87, &qword_1EBE17C60, &unk_1C099BB40);
  if ((*(v86 + 48))(v50, 1, v88) == 1)
  {
    sub_1C05145B4(v50, &qword_1EBE17C60, &unk_1C099BB40);
  }

  else
  {
    v51 = v50;
    v52 = v81;
    sub_1C05B3C0C(v51, v81, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
    sub_1C05C5C78(&qword_1EBE17E40, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Interval);
    sub_1C095D6AC();
    result = sub_1C05B4278(v52, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
    if (v45)
    {
      return result;
    }
  }

  v53 = v83;
  v54 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  swift_beginAccess();
  sub_1C05149F8(v39 + v54, v53, &qword_1EBE17C68, &unk_1C0973580);
  if ((*(v82 + 48))(v53, 1, v84) == 1)
  {
    sub_1C05145B4(v53, &qword_1EBE17C68, &unk_1C0973580);
  }

  else
  {
    v55 = v77;
    sub_1C05B3C0C(v53, v77, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
    sub_1C05C5C78(&qword_1EBE17E58, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Recurrence);
    sub_1C095D6AC();
    result = sub_1C05B4278(v55, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
    if (v45)
    {
      return result;
    }
  }

  v56 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
  swift_beginAccess();
  v57 = v39 + v56;
  v58 = v78;
  sub_1C05149F8(v57, v78, &qword_1EBE17C70, &unk_1C099BB30);
  v59 = v80;
  v60 = *(v79 + 48);
  if (v60(v58, 1, v80) == 1)
  {
    sub_1C05145B4(v58, &qword_1EBE17C70, &unk_1C099BB30);
  }

  else
  {
    v61 = v75;
    sub_1C05B3C0C(v58, v75, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    sub_1C05C5C78(&qword_1EBE17DE8, type metadata accessor for Com_Apple_Siri_Product_Proto_Time, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Time);
    sub_1C095D6AC();
    result = sub_1C05B4278(v61, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    if (v45)
    {
      return result;
    }
  }

  v62 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime;
  v63 = v93;
  swift_beginAccess();
  v64 = v63 + v62;
  v65 = v76;
  sub_1C05149F8(v64, v76, &qword_1EBE17C70, &unk_1C099BB30);
  if (v60(v65, 1, v59) == 1)
  {
    sub_1C05145B4(v65, &qword_1EBE17C70, &unk_1C099BB30);
  }

  else
  {
    v66 = v74;
    sub_1C05B3C0C(v65, v74, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    sub_1C05C5C78(&qword_1EBE17DE8, type metadata accessor for Com_Apple_Siri_Product_Proto_Time, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Time);
    sub_1C095D6AC();
    result = sub_1C05B4278(v66, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    if (v45)
    {
      return result;
    }
  }

  v67 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startPosition;
  v68 = v93;
  swift_beginAccess();
  if (!*(v68 + v67) || (result = sub_1C095D62C(), !v45))
  {
    v69 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endPosition;
    swift_beginAccess();
    if (!*(v68 + v69) || (result = sub_1C095D62C(), !v45))
    {
      v70 = v68 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
      result = swift_beginAccess();
      if (*v70)
      {
        v73 = *(v70 + 8);
        v97 = *v70;
        v98 = v73;
        sub_1C05C78E4(result, v71, v72);
        return sub_1C095D60C();
      }
    }
  }

  return result;
}

BOOL sub_1C05C219C(uint64_t a1, uint64_t a2)
{
  v222 = a2;
  v190 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  v192 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v183 = &v180[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17ED0, &qword_1C0974DE8);
  v4 = MEMORY[0x1EEE9AC00](v189);
  v184 = &v180[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v188 = &v180[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v182 = &v180[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v186 = &v180[-v11];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v185 = &v180[-v13];
  MEMORY[0x1EEE9AC00](v12);
  v198 = &v180[-v14];
  v197 = type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  v195 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v187 = &v180[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17ED8, &qword_1C0974DF0);
  MEMORY[0x1EEE9AC00](v194);
  v196 = &v180[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C68, &unk_1C0973580);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v191 = &v180[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v205 = &v180[-v20];
  v21 = type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  v202 = *(v21 - 8);
  v203 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v193 = &v180[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17EE0, &qword_1C0974DF8);
  MEMORY[0x1EEE9AC00](v201);
  v204 = &v180[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C60, &unk_1C099BB40);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v199 = &v180[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v212 = &v180[-v27];
  v28 = type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  v209 = *(v28 - 8);
  v210 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v200 = &v180[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17EE8, &qword_1C0974E00);
  MEMORY[0x1EEE9AC00](v208);
  v211 = &v180[-v30];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C58, &unk_1C0973570);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v206 = &v180[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v32);
  v217 = &v180[-v34];
  v219 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v35 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v214 = &v180[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17EF0, &qword_1C0974E08);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v216 = &v180[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v180[-v40];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50);
  v43 = MEMORY[0x1EEE9AC00](v42 - 8);
  v213 = &v180[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = MEMORY[0x1EEE9AC00](v43);
  v218 = &v180[-v46];
  v47 = MEMORY[0x1EEE9AC00](v45);
  v220 = &v180[-v48];
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v180[-v49];
  v51 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate;
  swift_beginAccess();
  v221 = a1;
  sub_1C05149F8(a1 + v51, v50, &qword_1EBE17C50, &unk_1C099BB50);
  v52 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate;
  v53 = v222;
  swift_beginAccess();
  v215 = v37;
  v54 = *(v37 + 48);
  sub_1C05149F8(v50, v41, &qword_1EBE17C50, &unk_1C099BB50);
  v55 = v53 + v52;
  v56 = v219;
  sub_1C05149F8(v55, &v41[v54], &qword_1EBE17C50, &unk_1C099BB50);
  v59 = *(v35 + 48);
  v57 = v35 + 48;
  v58 = v59;
  if (v59(v41, 1, v56) == 1)
  {
    v60 = v221;

    sub_1C05145B4(v50, &qword_1EBE17C50, &unk_1C099BB50);
    if (v58(&v41[v54], 1, v56) == 1)
    {
      v207 = v57;
      sub_1C05145B4(v41, &qword_1EBE17C50, &unk_1C099BB50);
      goto LABEL_8;
    }

LABEL_6:
    v62 = &qword_1EBE17EF0;
    v63 = &qword_1C0974E08;
    v64 = v41;
LABEL_35:
    sub_1C05145B4(v64, v62, v63);
    goto LABEL_36;
  }

  v61 = v221;
  sub_1C05149F8(v41, v220, &qword_1EBE17C50, &unk_1C099BB50);
  v207 = v57;
  if (v58(&v41[v54], 1, v56) == 1)
  {

    sub_1C05145B4(v50, &qword_1EBE17C50, &unk_1C099BB50);
    sub_1C05B4278(v220, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
    goto LABEL_6;
  }

  v65 = v214;
  sub_1C05B3C0C(&v41[v54], v214, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  v66 = v61;

  v67 = v220;
  v181 = _s12SiriOntology010Com_Apple_A19_Product_Proto_DateV2eeoiySbAC_ACtFZ_0(v220, v65);
  sub_1C05B4278(v65, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  sub_1C05145B4(v50, &qword_1EBE17C50, &unk_1C099BB50);
  v60 = v66;
  sub_1C05B4278(v67, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  sub_1C05145B4(v41, &qword_1EBE17C50, &unk_1C099BB50);
  if ((v181 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_8:
  v68 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate;
  swift_beginAccess();
  v69 = v218;
  sub_1C05149F8(v60 + v68, v218, &qword_1EBE17C50, &unk_1C099BB50);
  v70 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate;
  v71 = v222;
  swift_beginAccess();
  v72 = *(v215 + 48);
  v73 = v56;
  v74 = v216;
  sub_1C05149F8(v69, v216, &qword_1EBE17C50, &unk_1C099BB50);
  sub_1C05149F8(v71 + v70, &v74[v72], &qword_1EBE17C50, &unk_1C099BB50);
  if (v58(v74, 1, v73) == 1)
  {
    sub_1C05145B4(v69, &qword_1EBE17C50, &unk_1C099BB50);
    v75 = v58(&v74[v72], 1, v73);
    v76 = v217;
    v77 = v221;
    if (v75 == 1)
    {
      sub_1C05145B4(v74, &qword_1EBE17C50, &unk_1C099BB50);
      goto LABEL_16;
    }

LABEL_13:
    v62 = &qword_1EBE17EF0;
    v63 = &qword_1C0974E08;
LABEL_14:
    v64 = v74;
    goto LABEL_35;
  }

  v78 = v213;
  sub_1C05149F8(v74, v213, &qword_1EBE17C50, &unk_1C099BB50);
  v79 = v58(&v74[v72], 1, v73);
  v76 = v217;
  if (v79 == 1)
  {
    sub_1C05145B4(v218, &qword_1EBE17C50, &unk_1C099BB50);
    sub_1C05B4278(v78, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
    goto LABEL_13;
  }

  v80 = v214;
  sub_1C05B3C0C(&v74[v72], v214, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  v81 = _s12SiriOntology010Com_Apple_A19_Product_Proto_DateV2eeoiySbAC_ACtFZ_0(v78, v80);
  sub_1C05B4278(v80, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  sub_1C05145B4(v218, &qword_1EBE17C50, &unk_1C099BB50);
  sub_1C05B4278(v78, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  sub_1C05145B4(v74, &qword_1EBE17C50, &unk_1C099BB50);
  v77 = v221;
  if ((v81 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_16:
  v82 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  swift_beginAccess();
  sub_1C05149F8(v77 + v82, v76, &qword_1EBE17C58, &unk_1C0973570);
  v83 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  v84 = v222;
  swift_beginAccess();
  v85 = *(v208 + 48);
  v86 = v211;
  sub_1C05149F8(v76, v211, &qword_1EBE17C58, &unk_1C0973570);
  v87 = v84 + v83;
  v88 = v86;
  sub_1C05149F8(v87, &v86[v85], &qword_1EBE17C58, &unk_1C0973570);
  v89 = v210;
  v90 = *(v209 + 48);
  if (v90(v86, 1, v210) == 1)
  {
    sub_1C05145B4(v76, &qword_1EBE17C58, &unk_1C0973570);
    v91 = v90(&v86[v85], 1, v89);
    v92 = v212;
    if (v91 == 1)
    {
      sub_1C05145B4(v88, &qword_1EBE17C58, &unk_1C0973570);
      goto LABEL_19;
    }

LABEL_24:
    v62 = &qword_1EBE17EE8;
    v63 = &qword_1C0974E00;
    v64 = v88;
    goto LABEL_35;
  }

  v105 = v206;
  sub_1C05149F8(v86, v206, &qword_1EBE17C58, &unk_1C0973570);
  v106 = v90(&v86[v85], 1, v89);
  v92 = v212;
  if (v106 == 1)
  {
    sub_1C05145B4(v217, &qword_1EBE17C58, &unk_1C0973570);
    sub_1C05B4278(v105, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
    goto LABEL_24;
  }

  v107 = v88 + v85;
  v108 = v200;
  sub_1C05B3C0C(v107, v200, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
  if (*v105 != *v108 || (v109 = v105[16], v110 = *(v108 + 1), v111 = v108[16], v229 = *(v105 + 1), v230 = v109, v227 = v110, v228 = v111, v112 = Com_Apple_Siri_Product_Proto_Period.rawValue.getter(), v112 != Com_Apple_Siri_Product_Proto_Period.rawValue.getter()))
  {
    sub_1C05B4278(v108, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
    v114 = &qword_1EBE17C58;
    v115 = &unk_1C0973570;
    sub_1C05145B4(v217, &qword_1EBE17C58, &unk_1C0973570);
    sub_1C05B4278(v105, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
    v64 = v88;
LABEL_30:
    v62 = v114;
    v63 = v115;
    goto LABEL_35;
  }

  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v113 = sub_1C095D73C();
  sub_1C05B4278(v108, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
  sub_1C05145B4(v217, &qword_1EBE17C58, &unk_1C0973570);
  sub_1C05B4278(v105, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
  sub_1C05145B4(v88, &qword_1EBE17C58, &unk_1C0973570);
  if ((v113 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_19:
  v93 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  swift_beginAccess();
  sub_1C05149F8(v77 + v93, v92, &qword_1EBE17C60, &unk_1C099BB40);
  v94 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  v95 = v222;
  swift_beginAccess();
  v96 = *(v201 + 48);
  v97 = v92;
  v98 = v92;
  v99 = v204;
  sub_1C05149F8(v97, v204, &qword_1EBE17C60, &unk_1C099BB40);
  v100 = v99;
  sub_1C05149F8(v95 + v94, &v99[v96], &qword_1EBE17C60, &unk_1C099BB40);
  v101 = v203;
  v102 = *(v202 + 48);
  if (v102(v99, 1, v203) == 1)
  {
    sub_1C05145B4(v98, &qword_1EBE17C60, &unk_1C099BB40);
    v103 = v102(&v99[v96], 1, v101);
    v104 = v205;
    if (v103 == 1)
    {
      sub_1C05145B4(v99, &qword_1EBE17C60, &unk_1C099BB40);
      goto LABEL_39;
    }

LABEL_33:
    v62 = &qword_1EBE17EE0;
    v63 = &qword_1C0974DF8;
LABEL_34:
    v64 = v100;
    goto LABEL_35;
  }

  v116 = v199;
  sub_1C05149F8(v99, v199, &qword_1EBE17C60, &unk_1C099BB40);
  v117 = v102(&v99[v96], 1, v101);
  v104 = v205;
  if (v117 == 1)
  {
    sub_1C05145B4(v212, &qword_1EBE17C60, &unk_1C099BB40);
    sub_1C05B4278(v116, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
    goto LABEL_33;
  }

  v119 = &v99[v96];
  v120 = v193;
  sub_1C05B3C0C(v119, v193, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
  v121 = _s12SiriOntology010Com_Apple_A23_Product_Proto_IntervalV2eeoiySbAC_ACtFZ_0(v116, v120);
  sub_1C05B4278(v120, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
  sub_1C05145B4(v212, &qword_1EBE17C60, &unk_1C099BB40);
  sub_1C05B4278(v116, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
  sub_1C05145B4(v99, &qword_1EBE17C60, &unk_1C099BB40);
  if ((v121 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_39:
  v122 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  swift_beginAccess();
  sub_1C05149F8(v77 + v122, v104, &qword_1EBE17C68, &unk_1C0973580);
  v123 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  v124 = v104;
  v125 = v222;
  swift_beginAccess();
  v126 = *(v194 + 48);
  v127 = v196;
  sub_1C05149F8(v124, v196, &qword_1EBE17C68, &unk_1C0973580);
  v128 = v125 + v123;
  v74 = v127;
  sub_1C05149F8(v128, &v127[v126], &qword_1EBE17C68, &unk_1C0973580);
  v129 = *(v195 + 48);
  v130 = v197;
  if (v129(v127, 1, v197) == 1)
  {
    sub_1C05145B4(v124, &qword_1EBE17C68, &unk_1C0973580);
    v131 = v129(&v127[v126], 1, v130);
    v132 = v198;
    if (v131 == 1)
    {
      sub_1C05145B4(v127, &qword_1EBE17C68, &unk_1C0973580);
      goto LABEL_42;
    }

    goto LABEL_47;
  }

  v143 = v127;
  v144 = v191;
  sub_1C05149F8(v143, v191, &qword_1EBE17C68, &unk_1C0973580);
  v145 = v129(&v74[v126], 1, v130);
  v132 = v198;
  if (v145 == 1)
  {
    sub_1C05145B4(v205, &qword_1EBE17C68, &unk_1C0973580);
    sub_1C05B4278(v144, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
LABEL_47:
    v62 = &qword_1EBE17ED8;
    v63 = &qword_1C0974DF0;
    goto LABEL_14;
  }

  v146 = &v74[v126];
  v147 = v187;
  sub_1C05B3C0C(v146, v187, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
  if (*v144 != *v147 || (v148 = v144[16], v149 = *(v147 + 1), v150 = v147[16], v225 = *(v144 + 1), v226 = v148, v223 = v149, v224 = v150, v151 = Com_Apple_Siri_Product_Proto_Period.rawValue.getter(), v151 != Com_Apple_Siri_Product_Proto_Period.rawValue.getter()))
  {
    sub_1C05B4278(v147, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
    v114 = &qword_1EBE17C68;
    v115 = &unk_1C0973580;
    sub_1C05145B4(v205, &qword_1EBE17C68, &unk_1C0973580);
    sub_1C05B4278(v144, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
    v64 = v74;
    goto LABEL_30;
  }

  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v152 = sub_1C095D73C();
  sub_1C05B4278(v147, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
  sub_1C05145B4(v205, &qword_1EBE17C68, &unk_1C0973580);
  sub_1C05B4278(v144, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
  sub_1C05145B4(v74, &qword_1EBE17C68, &unk_1C0973580);
  if ((v152 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_42:
  v133 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
  swift_beginAccess();
  sub_1C05149F8(v77 + v133, v132, &qword_1EBE17C70, &unk_1C099BB30);
  v134 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
  v135 = v132;
  v136 = v222;
  swift_beginAccess();
  v137 = v188;
  v138 = *(v189 + 48);
  sub_1C05149F8(v135, v188, &qword_1EBE17C70, &unk_1C099BB30);
  v139 = v136 + v134;
  v74 = v137;
  sub_1C05149F8(v139, &v137[v138], &qword_1EBE17C70, &unk_1C099BB30);
  v140 = v192 + 48;
  v141 = *(v192 + 48);
  v142 = v190;
  if (v141(v137, 1, v190) == 1)
  {
    sub_1C05145B4(v135, &qword_1EBE17C70, &unk_1C099BB30);
    if (v141(&v137[v138], 1, v142) == 1)
    {
      v192 = v140;
      sub_1C05145B4(v137, &qword_1EBE17C70, &unk_1C099BB30);
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  v153 = v137;
  v154 = v185;
  sub_1C05149F8(v153, v185, &qword_1EBE17C70, &unk_1C099BB30);
  if (v141(&v74[v138], 1, v142) == 1)
  {
    sub_1C05145B4(v198, &qword_1EBE17C70, &unk_1C099BB30);
    sub_1C05B4278(v154, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
LABEL_55:
    v62 = &qword_1EBE17ED0;
    v63 = &qword_1C0974DE8;
    goto LABEL_14;
  }

  v192 = v140;
  v155 = v183;
  sub_1C05B3C0C(&v74[v138], v183, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  v156 = _s12SiriOntology010Com_Apple_A19_Product_Proto_TimeV2eeoiySbAC_ACtFZ_0(v154, v155);
  sub_1C05B4278(v155, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  sub_1C05145B4(v198, &qword_1EBE17C70, &unk_1C099BB30);
  sub_1C05B4278(v154, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  sub_1C05145B4(v74, &qword_1EBE17C70, &unk_1C099BB30);
  if ((v156 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_57:
  v157 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime;
  swift_beginAccess();
  v158 = v186;
  sub_1C05149F8(v77 + v157, v186, &qword_1EBE17C70, &unk_1C099BB30);
  v159 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime;
  v160 = v222;
  swift_beginAccess();
  v161 = *(v189 + 48);
  v162 = v184;
  sub_1C05149F8(v158, v184, &qword_1EBE17C70, &unk_1C099BB30);
  v100 = v162;
  sub_1C05149F8(v160 + v159, &v162[v161], &qword_1EBE17C70, &unk_1C099BB30);
  v163 = v190;
  if (v141(v162, 1, v190) != 1)
  {
    v164 = v162;
    v165 = v182;
    sub_1C05149F8(v164, v182, &qword_1EBE17C70, &unk_1C099BB30);
    if (v141(&v100[v161], 1, v163) == 1)
    {
      sub_1C05145B4(v186, &qword_1EBE17C70, &unk_1C099BB30);
      sub_1C05B4278(v165, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
      goto LABEL_62;
    }

    v166 = &v100[v161];
    v167 = v183;
    sub_1C05B3C0C(v166, v183, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    v168 = v100;
    v169 = _s12SiriOntology010Com_Apple_A19_Product_Proto_TimeV2eeoiySbAC_ACtFZ_0(v165, v167);
    sub_1C05B4278(v167, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    sub_1C05145B4(v186, &qword_1EBE17C70, &unk_1C099BB30);
    sub_1C05B4278(v165, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    sub_1C05145B4(v168, &qword_1EBE17C70, &unk_1C099BB30);
    if (v169)
    {
      goto LABEL_64;
    }

LABEL_36:

    return 0;
  }

  sub_1C05145B4(v158, &qword_1EBE17C70, &unk_1C099BB30);
  if (v141(&v162[v161], 1, v163) != 1)
  {
LABEL_62:
    v62 = &qword_1EBE17ED0;
    v63 = &qword_1C0974DE8;
    goto LABEL_34;
  }

  sub_1C05145B4(v162, &qword_1EBE17C70, &unk_1C099BB30);
LABEL_64:
  v170 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startPosition;
  swift_beginAccess();
  LODWORD(v170) = *(v77 + v170);
  v171 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startPosition;
  v172 = v222;
  swift_beginAccess();
  if (v170 != *(v172 + v171))
  {
    goto LABEL_36;
  }

  v173 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endPosition;
  swift_beginAccess();
  LODWORD(v173) = *(v77 + v173);
  v174 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endPosition;
  v175 = v222;
  swift_beginAccess();
  if (v173 != *(v175 + v174))
  {
    goto LABEL_36;
  }

  v176 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
  swift_beginAccess();
  v177 = *(v77 + v176);

  v178 = v222 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
  swift_beginAccess();
  v179 = *v178;
  LODWORD(v178) = *(v178 + 8);

  if (v178 == 1)
  {
    if (v179 > 1)
    {
      if (v179 == 2)
      {
        if (v177 == 2)
        {
          return 1;
        }
      }

      else if (v177 == 3)
      {
        return 1;
      }
    }

    else if (v179)
    {
      if (v177 == 1)
      {
        return 1;
      }
    }

    else if (!v177)
    {
      return 1;
    }

    return 0;
  }

  return v177 == v179;
}