uint64_t sub_1DD735D88(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xD00000000000001ELL;
  v3 = "ceFlow-3505.5.1\n";
  v4 = "ceFlow-3505.5.1\n";
  v5 = a1;
  v6 = 0xD00000000000001ELL;
  switch(v5)
  {
    case 1:
      v4 = "com.apple.if.planner_overrides";
      v6 = 0xD00000000000002CLL;
      break;
    case 2:
      v4 = "nner.tool_retrieval.denylist";
      v6 = 0xD000000000000027;
      break;
    case 3:
      v4 = "nner.nlrouter.overrides";
      v6 = 0xD000000000000028;
      break;
    case 4:
      v4 = "nner.tool_retrieval.base";
      v6 = 0xD000000000000030;
      break;
    case 5:
      v4 = "neration.catalog";
      v6 = 0xD000000000000032;
      break;
    case 6:
      v4 = "neration.overrides";
      v6 = 0xD000000000000020;
      break;
    case 7:
      v4 = "l.data_detectors";
      v6 = 0xD00000000000002FLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "com.apple.if.planner_overrides";
      v2 = 0xD00000000000002CLL;
      break;
    case 2:
      v3 = "nner.tool_retrieval.denylist";
      v2 = 0xD000000000000027;
      break;
    case 3:
      v3 = "nner.nlrouter.overrides";
      v2 = 0xD000000000000028;
      break;
    case 4:
      v3 = "nner.tool_retrieval.base";
      v2 = 0xD000000000000030;
      break;
    case 5:
      v3 = "neration.catalog";
      v2 = 0xD000000000000032;
      break;
    case 6:
      v3 = "neration.overrides";
      v2 = 0xD000000000000020;
      break;
    case 7:
      v3 = "l.data_detectors";
      v2 = 0xD00000000000002FLL;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD6E6A44(v6, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1DD735F3C()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0E908);
  sub_1DD6E1224(v0, qword_1ECD0E908);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD87AC20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "user_query";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "device_type";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "interface_idiom";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t OverridesCommon_ContextPredicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    sub_1DD6E0F70();
    result = sub_1DD8749A0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        v11 = sub_1DD6E0824();
        sub_1DD7362EC(v11, v12, v13, v14);
        break;
      case 3:
        v7 = sub_1DD6E0824();
        sub_1DD736288(v7, v8, v9, v10);
        break;
      case 1:
        v3 = sub_1DD6E0824();
        sub_1DD7361E8(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1DD7361E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD73ADD4(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate, &protocol conformance descriptor for OverridesCommon_StringPredicate);
  return sub_1DD874A20();
}

uint64_t OverridesCommon_ContextPredicate.traverse<A>(visitor:)()
{
  sub_1DD6E5F74();
  result = sub_1DD7363E8(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = sub_1DD6DF35C();
    sub_1DD7365B0(v6, v7, v8, v9);
    v10 = sub_1DD6DF35C();
    sub_1DD736628(v10, v11, v12, v13);
    type metadata accessor for OverridesCommon_ContextPredicate(0);
    sub_1DD6E0D68();
    return sub_1DD8748F0();
  }

  return result;
}

uint64_t sub_1DD7363E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for OverridesCommon_StringPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD719110();
  if (sub_1DD6E5ED0(v6, 1, v7) == 1)
  {
    return sub_1DD6FC560(v6, &qword_1ECD0E9E0, &unk_1DD87B550);
  }

  sub_1DD73AE1C();
  sub_1DD73ADD4(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate, &protocol conformance descriptor for OverridesCommon_StringPredicate);
  sub_1DD874AD0();
  return sub_1DD73AE74(v9, type metadata accessor for OverridesCommon_StringPredicate);
}

uint64_t sub_1DD7365B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for OverridesCommon_ContextPredicate(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_1DD874AA0();
  }

  return result;
}

uint64_t sub_1DD736628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for OverridesCommon_ContextPredicate(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_1DD874AA0();
  }

  return result;
}

uint64_t static OverridesCommon_ContextPredicate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  sub_1DD6DEA10(v7);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = sub_1DD710A9C(&qword_1ECD0E9E8, &qword_1DD87AC30);
  sub_1DD6DEA10(v11);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6E4918();
  sub_1DD719110();
  sub_1DD6E9A54();
  if (sub_1DD6E5ED0(v2, 1, v3) != 1)
  {
    sub_1DD719110();
    v20 = sub_1DD6E1F6C();
    if (sub_1DD6E5ED0(v20, v21, v3) != 1)
    {
      sub_1DD73AE1C();
      if (*v10 == *v6)
      {
        v24 = *(v10 + 1) == *(v6 + 1) && *(v10 + 2) == *(v6 + 2);
        if (v24 || (sub_1DD875A30() & 1) != 0)
        {
          sub_1DD874910();
          sub_1DD6E1430();
          sub_1DD73ADD4(v25, v26, MEMORY[0x1E69AAC10]);
          v27 = sub_1DD8750F0();
          sub_1DD73AE74(v6, type metadata accessor for OverridesCommon_StringPredicate);
          v28 = sub_1DD6F4D4C();
          sub_1DD73AE74(v28, v29);
          sub_1DD6FC560(v2, &qword_1ECD0E9E0, &unk_1DD87B550);
          if ((v27 & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_4;
        }
      }

      sub_1DD73AE74(v6, type metadata accessor for OverridesCommon_StringPredicate);
      sub_1DD73AE74(v10, type metadata accessor for OverridesCommon_StringPredicate);
      v22 = &qword_1ECD0E9E0;
      v23 = &unk_1DD87B550;
LABEL_24:
      sub_1DD6FC560(v2, v22, v23);
      goto LABEL_25;
    }

    sub_1DD73AE74(v10, type metadata accessor for OverridesCommon_StringPredicate);
LABEL_14:
    v22 = &qword_1ECD0E9E8;
    v23 = &qword_1DD87AC30;
    goto LABEL_24;
  }

  v13 = sub_1DD6E1F6C();
  if (sub_1DD6E5ED0(v13, v14, v3) != 1)
  {
    goto LABEL_14;
  }

  sub_1DD6FC560(v2, &qword_1ECD0E9E0, &unk_1DD87B550);
LABEL_4:
  type metadata accessor for OverridesCommon_ContextPredicate(0);
  sub_1DD6E8898();
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_25;
    }

    v19 = *v17 == *v18 && v15 == v16;
    if (!v19 && (sub_1DD875A30() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v16)
  {
    goto LABEL_25;
  }

  sub_1DD6E8898();
  if (v32)
  {
    if (v33)
    {
      v36 = *v34 == *v35 && v32 == v33;
      if (v36 || (sub_1DD875A30() & 1) != 0)
      {
        goto LABEL_37;
      }
    }
  }

  else if (!v33)
  {
LABEL_37:
    sub_1DD874910();
    sub_1DD6E1430();
    sub_1DD73ADD4(v37, v38, MEMORY[0x1E69AAC10]);
    v30 = sub_1DD8750F0();
    return v30 & 1;
  }

LABEL_25:
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_1DD736B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD73ADD4(&qword_1ECD0EB00, type metadata accessor for OverridesCommon_ContextPredicate, &protocol conformance descriptor for OverridesCommon_ContextPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD736BB0(uint64_t a1)
{
  v2 = sub_1DD73ADD4(&qword_1ECD0EA40, type metadata accessor for OverridesCommon_ContextPredicate, &protocol conformance descriptor for OverridesCommon_ContextPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD736C20(uint64_t a1, uint64_t a2)
{
  sub_1DD73ADD4(&qword_1ECD0EA40, type metadata accessor for OverridesCommon_ContextPredicate, &protocol conformance descriptor for OverridesCommon_ContextPredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD736CB8()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0E920);
  sub_1DD6E1224(v0, qword_1ECD0E920);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD8782F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "operator";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t OverridesCommon_StringPredicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    sub_1DD6E0F70();
    result = sub_1DD8749A0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_1DD6E0D68();
      sub_1DD8749F0();
    }

    else if (result == 1)
    {
      v3 = sub_1DD6E0824();
      sub_1DD736F0C(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t OverridesCommon_StringPredicate.traverse<A>(visitor:)()
{
  sub_1DD6DE2D4();
  if (!*v1 || (sub_1DD73A610(), v2 = v0, result = sub_1DD874A90(), !v0))
  {
    sub_1DD6F30BC();
    if (!v6 || (result = sub_1DD6E0D74(v4, v5, 2), !v2))
    {
      type metadata accessor for OverridesCommon_StringPredicate(0);
      return sub_1DD6DDF78();
    }
  }

  return result;
}

uint64_t static OverridesCommon_StringPredicate.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1DD6E1F34();
  v5 = *(v4 + 8) == *(v2 + 8) && *(v3 + 16) == *(v2 + 16);
  if (!v5 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD874910();
  sub_1DD6E1430();
  v8 = sub_1DD73ADD4(v6, v7, MEMORY[0x1E69AAC10]);
  return sub_1DD6E2124(v8) & 1;
}

uint64_t sub_1DD737110(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1DD875B20();
  a1(0);
  sub_1DD73ADD4(a2, a3, a4);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t sub_1DD737218(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD73ADD4(&qword_1ECD0EAF8, type metadata accessor for OverridesCommon_StringPredicate, &protocol conformance descriptor for OverridesCommon_StringPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD737298(uint64_t a1)
{
  v2 = sub_1DD73ADD4(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate, &protocol conformance descriptor for OverridesCommon_StringPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD737308(uint64_t a1, uint64_t a2)
{
  sub_1DD73ADD4(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate, &protocol conformance descriptor for OverridesCommon_StringPredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD737388()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0E938);
  sub_1DD6E1224(v0, qword_1ECD0E938);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD87AC20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNSPECIFIED";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EXACT_MATCH";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "REGEX_MATCH";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t sub_1DD7375D4()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0E950);
  sub_1DD6E1224(v0, qword_1ECD0E950);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD87AC20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "fallback_dialog";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "string_dialog";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "cat_dialog";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t OverridesCommon_OverrideDialog.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    sub_1DD6E0F70();
    result = sub_1DD8749A0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1DD6DDEFC();
        sub_1DD6E5F74();
        sub_1DD738278(v11, v12, v13, v14);
        break;
      case 2:
        sub_1DD6DDEFC();
        sub_1DD6E5F74();
        sub_1DD737D80(v7, v8, v9, v10);
        break;
      case 1:
        sub_1DD6DDEFC();
        sub_1DD6E5F74();
        sub_1DD737888(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1DD737888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for OverridesCommon_OverrideDialog.FallbackDialog(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD710A9C(&qword_1ECD0EA08, &unk_1DD884D70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for OverridesCommon_OverrideDialogEnum(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD710A9C(&qword_1ECD0EB18, &qword_1DD87B538);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1DD6E5E68(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1DD719110();
  v28 = sub_1DD6E5ED0(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_1DD6FC560(v10, &qword_1ECD0EA08, &unk_1DD884D70);
  }

  else
  {
    sub_1DD73AE1C();
    sub_1DD73AE1C();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1DD73AE74(v13, type metadata accessor for OverridesCommon_OverrideDialogEnum);
    }

    else
    {
      sub_1DD6FC560(v20, &qword_1ECD0EB18, &qword_1DD87B538);
      sub_1DD73AE1C();
      sub_1DD73AE1C();
      sub_1DD6E5E68(v20, 0, 1, v5);
    }
  }

  sub_1DD73ADD4(&qword_1ECD0EA98, type metadata accessor for OverridesCommon_OverrideDialog.FallbackDialog, &protocol conformance descriptor for OverridesCommon_OverrideDialog.FallbackDialog);
  v21 = v31;
  sub_1DD874A20();
  if (v21)
  {
    v22 = v20;
    return sub_1DD6FC560(v22, &qword_1ECD0EB18, &qword_1DD87B538);
  }

  sub_1DD719110();
  if (sub_1DD6E5ED0(v17, 1, v5) == 1)
  {
    sub_1DD6FC560(v20, &qword_1ECD0EB18, &qword_1DD87B538);
    v22 = v17;
    return sub_1DD6FC560(v22, &qword_1ECD0EB18, &qword_1DD87B538);
  }

  sub_1DD73AE1C();
  if (v28 != 1)
  {
    sub_1DD8749B0();
  }

  v24 = v29;
  sub_1DD6FC560(v20, &qword_1ECD0EB18, &qword_1DD87B538);
  v25 = v27;
  sub_1DD6FC560(v27, &qword_1ECD0EA08, &unk_1DD884D70);
  sub_1DD73AE1C();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v25, 0, 1, v24);
}

uint64_t sub_1DD737D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD710A9C(&qword_1ECD0EA08, &unk_1DD884D70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for OverridesCommon_OverrideDialogEnum(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD710A9C(&qword_1ECD0EB20, &qword_1DD87B540);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1DD6E5E68(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1DD719110();
  v28 = sub_1DD6E5ED0(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_1DD6FC560(v10, &qword_1ECD0EA08, &unk_1DD884D70);
  }

  else
  {
    sub_1DD73AE1C();
    sub_1DD73AE1C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD6FC560(v20, &qword_1ECD0EB20, &qword_1DD87B540);
      sub_1DD73AE1C();
      sub_1DD73AE1C();
      sub_1DD6E5E68(v20, 0, 1, v5);
    }

    else
    {
      sub_1DD73AE74(v13, type metadata accessor for OverridesCommon_OverrideDialogEnum);
    }
  }

  sub_1DD73ADD4(&qword_1ECD0EAB0, type metadata accessor for OverridesCommon_OverrideDialog.StringDialog, &protocol conformance descriptor for OverridesCommon_OverrideDialog.StringDialog);
  v21 = v31;
  sub_1DD874A20();
  if (v21)
  {
    v22 = v20;
    return sub_1DD6FC560(v22, &qword_1ECD0EB20, &qword_1DD87B540);
  }

  sub_1DD719110();
  if (sub_1DD6E5ED0(v17, 1, v5) == 1)
  {
    sub_1DD6FC560(v20, &qword_1ECD0EB20, &qword_1DD87B540);
    v22 = v17;
    return sub_1DD6FC560(v22, &qword_1ECD0EB20, &qword_1DD87B540);
  }

  sub_1DD73AE1C();
  if (v28 != 1)
  {
    sub_1DD8749B0();
  }

  v24 = v29;
  sub_1DD6FC560(v20, &qword_1ECD0EB20, &qword_1DD87B540);
  v25 = v27;
  sub_1DD6FC560(v27, &qword_1ECD0EA08, &unk_1DD884D70);
  sub_1DD73AE1C();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v25, 0, 1, v24);
}

uint64_t sub_1DD738278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for OverridesCommon_OverrideDialog.CATDialog(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD710A9C(&qword_1ECD0EA08, &unk_1DD884D70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for OverridesCommon_OverrideDialogEnum(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD710A9C(&qword_1ECD0EB28, &qword_1DD87B548);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1DD6E5E68(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1DD719110();
  v28 = sub_1DD6E5ED0(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_1DD6FC560(v10, &qword_1ECD0EA08, &unk_1DD884D70);
  }

  else
  {
    sub_1DD73AE1C();
    sub_1DD73AE1C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1DD6FC560(v20, &qword_1ECD0EB28, &qword_1DD87B548);
      sub_1DD73AE1C();
      sub_1DD73AE1C();
      sub_1DD6E5E68(v20, 0, 1, v5);
    }

    else
    {
      sub_1DD73AE74(v13, type metadata accessor for OverridesCommon_OverrideDialogEnum);
    }
  }

  sub_1DD73ADD4(&qword_1ECD0EAC8, type metadata accessor for OverridesCommon_OverrideDialog.CATDialog, &protocol conformance descriptor for OverridesCommon_OverrideDialog.CATDialog);
  v21 = v31;
  sub_1DD874A20();
  if (v21)
  {
    v22 = v20;
    return sub_1DD6FC560(v22, &qword_1ECD0EB28, &qword_1DD87B548);
  }

  sub_1DD719110();
  if (sub_1DD6E5ED0(v17, 1, v5) == 1)
  {
    sub_1DD6FC560(v20, &qword_1ECD0EB28, &qword_1DD87B548);
    v22 = v17;
    return sub_1DD6FC560(v22, &qword_1ECD0EB28, &qword_1DD87B548);
  }

  sub_1DD73AE1C();
  if (v28 != 1)
  {
    sub_1DD8749B0();
  }

  v24 = v29;
  sub_1DD6FC560(v20, &qword_1ECD0EB28, &qword_1DD87B548);
  v25 = v27;
  sub_1DD6FC560(v27, &qword_1ECD0EA08, &unk_1DD884D70);
  sub_1DD73AE1C();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v25, 0, 1, v24);
}

uint64_t OverridesCommon_OverrideDialog.traverse<A>(visitor:)()
{
  v1 = sub_1DD710A9C(&qword_1ECD0EA08, &unk_1DD884D70);
  sub_1DD6DEA10(v1);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  sub_1DD719110();
  v5 = type metadata accessor for OverridesCommon_OverrideDialogEnum(0);
  if (sub_1DD6E5ED0(v4, 1, v5) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = sub_1DD6DF35C();
      sub_1DD738AB4(v7, v8, v9, v10);
    }

    else
    {
      v15 = sub_1DD6DF35C();
      sub_1DD738CBC(v15, v16, v17, v18);
    }
  }

  else
  {
    v11 = sub_1DD6DF35C();
    sub_1DD7388B0(v11, v12, v13, v14);
  }

  sub_1DD6DE2EC();
  result = sub_1DD73AE74(v4, v19);
  if (!v0)
  {
LABEL_8:
    type metadata accessor for OverridesCommon_OverrideDialog(0);
    sub_1DD6E0D68();
    return sub_1DD8748F0();
  }

  return result;
}

uint64_t sub_1DD7388B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0EA08, &unk_1DD884D70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for OverridesCommon_OverrideDialog.FallbackDialog(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD719110();
  v10 = type metadata accessor for OverridesCommon_OverrideDialogEnum(0);
  if (sub_1DD6E5ED0(v6, 1, v10) == 1)
  {
    result = sub_1DD6FC560(v6, &qword_1ECD0EA08, &unk_1DD884D70);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1DD73AE1C();
      sub_1DD73ADD4(&qword_1ECD0EA98, type metadata accessor for OverridesCommon_OverrideDialog.FallbackDialog, &protocol conformance descriptor for OverridesCommon_OverrideDialog.FallbackDialog);
      sub_1DD874AD0();
      return sub_1DD73AE74(v9, type metadata accessor for OverridesCommon_OverrideDialog.FallbackDialog);
    }

    result = sub_1DD73AE74(v6, type metadata accessor for OverridesCommon_OverrideDialogEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD738AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0EA08, &unk_1DD884D70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD719110();
  v10 = type metadata accessor for OverridesCommon_OverrideDialogEnum(0);
  if (sub_1DD6E5ED0(v6, 1, v10) == 1)
  {
    result = sub_1DD6FC560(v6, &qword_1ECD0EA08, &unk_1DD884D70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD73AE1C();
      sub_1DD73ADD4(&qword_1ECD0EAB0, type metadata accessor for OverridesCommon_OverrideDialog.StringDialog, &protocol conformance descriptor for OverridesCommon_OverrideDialog.StringDialog);
      sub_1DD874AD0();
      return sub_1DD73AE74(v9, type metadata accessor for OverridesCommon_OverrideDialog.StringDialog);
    }

    result = sub_1DD73AE74(v6, type metadata accessor for OverridesCommon_OverrideDialogEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD738CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0EA08, &unk_1DD884D70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for OverridesCommon_OverrideDialog.CATDialog(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD719110();
  v10 = type metadata accessor for OverridesCommon_OverrideDialogEnum(0);
  if (sub_1DD6E5ED0(v6, 1, v10) == 1)
  {
    result = sub_1DD6FC560(v6, &qword_1ECD0EA08, &unk_1DD884D70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1DD73AE1C();
      sub_1DD73ADD4(&qword_1ECD0EAC8, type metadata accessor for OverridesCommon_OverrideDialog.CATDialog, &protocol conformance descriptor for OverridesCommon_OverrideDialog.CATDialog);
      sub_1DD874AD0();
      return sub_1DD73AE74(v9, type metadata accessor for OverridesCommon_OverrideDialog.CATDialog);
    }

    result = sub_1DD73AE74(v6, type metadata accessor for OverridesCommon_OverrideDialogEnum);
  }

  __break(1u);
  return result;
}

uint64_t static OverridesCommon_OverrideDialog.== infix(_:_:)()
{
  sub_1DD6E1F34();
  v1 = type metadata accessor for OverridesCommon_OverrideDialogEnum(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DD710A9C(&qword_1ECD0EA08, &unk_1DD884D70);
  sub_1DD6DEA10(v5);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = sub_1DD710A9C(&qword_1ECD0EA10, &qword_1DD87AC38);
  sub_1DD6DEA10(v9);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E4918();
  sub_1DD719110();
  sub_1DD6E9A54();
  if (sub_1DD6E5ED0(v0, 1, v1) == 1)
  {
    v11 = sub_1DD6E1F6C();
    if (sub_1DD6E5ED0(v11, v12, v1) == 1)
    {
      sub_1DD6FC560(v0, &qword_1ECD0EA08, &unk_1DD884D70);
LABEL_9:
      type metadata accessor for OverridesCommon_OverrideDialog(0);
      sub_1DD874910();
      sub_1DD6E1430();
      v20 = sub_1DD73ADD4(v18, v19, MEMORY[0x1E69AAC10]);
      v16 = sub_1DD6E2124(v20);
      return v16 & 1;
    }

    goto LABEL_6;
  }

  sub_1DD719110();
  v13 = sub_1DD6E1F6C();
  if (sub_1DD6E5ED0(v13, v14, v1) == 1)
  {
    sub_1DD6DE2EC();
    sub_1DD73AE74(v8, v15);
LABEL_6:
    sub_1DD6FC560(v0, &qword_1ECD0EA10, &qword_1DD87AC38);
    goto LABEL_7;
  }

  sub_1DD73AE1C();
  v17 = static OverridesCommon_OverrideDialogEnum.== infix(_:_:)(v8, v4);
  sub_1DD73AE74(v4, type metadata accessor for OverridesCommon_OverrideDialogEnum);
  sub_1DD73AE74(v8, type metadata accessor for OverridesCommon_OverrideDialogEnum);
  sub_1DD6FC560(v0, &qword_1ECD0EA08, &unk_1DD884D70);
  if (v17)
  {
    goto LABEL_9;
  }

LABEL_7:
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_1DD739204(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD73ADD4(&qword_1ECD0EAF0, type metadata accessor for OverridesCommon_OverrideDialog, &protocol conformance descriptor for OverridesCommon_OverrideDialog);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD739284(uint64_t a1)
{
  v2 = sub_1DD73ADD4(&qword_1ECD0EA80, type metadata accessor for OverridesCommon_OverrideDialog, &protocol conformance descriptor for OverridesCommon_OverrideDialog);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD7392F4(uint64_t a1, uint64_t a2)
{
  sub_1DD73ADD4(&qword_1ECD0EA80, type metadata accessor for OverridesCommon_OverrideDialog, &protocol conformance descriptor for OverridesCommon_OverrideDialog);

  return sub_1DD874A70();
}

uint64_t sub_1DD7393C4()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0E978);
  sub_1DD6E1224(v0, qword_1ECD0E978);
  return sub_1DD874B00();
}

uint64_t OverridesCommon_OverrideDialog.FallbackDialog.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  do
  {
    result = sub_1DD8749A0();
  }

  while (!v2 && (v4 & 1) == 0);
  return result;
}

uint64_t sub_1DD7394D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_1DD73ADD4(a4, a5, a6);
  sub_1DD6E0F70();
  return sub_1DD8750F0() & 1;
}

uint64_t sub_1DD7395F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD73ADD4(&qword_1ECD0EAE8, type metadata accessor for OverridesCommon_OverrideDialog.FallbackDialog, &protocol conformance descriptor for OverridesCommon_OverrideDialog.FallbackDialog);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD739678(uint64_t a1)
{
  v2 = sub_1DD73ADD4(&qword_1ECD0EA98, type metadata accessor for OverridesCommon_OverrideDialog.FallbackDialog, &protocol conformance descriptor for OverridesCommon_OverrideDialog.FallbackDialog);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD7396E8(uint64_t a1, uint64_t a2)
{
  sub_1DD73ADD4(&qword_1ECD0EA98, type metadata accessor for OverridesCommon_OverrideDialog.FallbackDialog, &protocol conformance descriptor for OverridesCommon_OverrideDialog.FallbackDialog);

  return sub_1DD874A70();
}

uint64_t sub_1DD7397B8()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0E9A0);
  sub_1DD6E1224(v0, qword_1ECD0E9A0);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD87AAA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "full_print";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "full_speak";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "supporting_print";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "supporting_speak";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    sub_1DD6E0F70();
    result = sub_1DD8749A0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1DD6E0D68();
        sub_1DD8749F0();
        break;
      case 2:
      case 3:
      case 4:
        sub_1DD6E0D68();
        sub_1DD8749E0();
        break;
      default:
        continue;
    }
  }
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.traverse<A>(visitor:)()
{
  sub_1DD6DE2D4();
  sub_1DD6F30BC();
  if (!v3 || (result = sub_1DD6E0D74(v1, v2, 1), !v0))
  {
    sub_1DD6F4D4C();
    sub_1DD6E5294();
    result = sub_1DD739B54(v5, v6, v7, v8);
    if (!v0)
    {
      sub_1DD6F4D4C();
      sub_1DD6E5294();
      sub_1DD739B90(v9, v10, v11, v12);
      sub_1DD6F4D4C();
      sub_1DD6E5294();
      sub_1DD739BCC(v13, v14, v15, v16);
      type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(0);
      return sub_1DD6DDF78();
    }
  }

  return result;
}

uint64_t sub_1DD739B54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 24))
  {
    return sub_1DD874AA0();
  }

  return result;
}

uint64_t sub_1DD739B90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 40))
  {
    return sub_1DD874AA0();
  }

  return result;
}

uint64_t sub_1DD739BCC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 56))
  {
    return sub_1DD874AA0();
  }

  return result;
}

uint64_t static OverridesCommon_OverrideDialog.StringDialog.== infix(_:_:)()
{
  sub_1DD6E1F34();
  sub_1DD6E652C(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  v6 = v1[3];
  v7 = v0[3];
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = v1[2] == v0[2] && v6 == v7;
    if (!v8 && (sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = v1[5];
  v10 = v0[5];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = v1[4] == v0[4] && v9 == v10;
    if (!v11 && (sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = v1[7];
  v13 = v0[7];
  if (v12)
  {
    if (v13)
    {
      v14 = v1[6] == v0[6] && v12 == v13;
      if (v14 || (sub_1DD875A30() & 1) != 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v13)
  {
LABEL_31:
    type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(0);
    sub_1DD874910();
    sub_1DD6E1430();
    v17 = sub_1DD73ADD4(v15, v16, MEMORY[0x1E69AAC10]);
    return sub_1DD6E2124(v17) & 1;
  }

  return 0;
}

uint64_t sub_1DD739DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD73ADD4(&qword_1ECD0EAE0, type metadata accessor for OverridesCommon_OverrideDialog.StringDialog, &protocol conformance descriptor for OverridesCommon_OverrideDialog.StringDialog);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD739E64(uint64_t a1)
{
  v2 = sub_1DD73ADD4(&qword_1ECD0EAB0, type metadata accessor for OverridesCommon_OverrideDialog.StringDialog, &protocol conformance descriptor for OverridesCommon_OverrideDialog.StringDialog);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD739ED4(uint64_t a1, uint64_t a2)
{
  sub_1DD73ADD4(&qword_1ECD0EAB0, type metadata accessor for OverridesCommon_OverrideDialog.StringDialog, &protocol conformance descriptor for OverridesCommon_OverrideDialog.StringDialog);

  return sub_1DD874A70();
}

uint64_t sub_1DD739F7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1E12B4C10](a2, a3);
  *a4 = 0xD00000000000001FLL;
  *a5 = 0x80000001DD8B4FE0;
  return result;
}

uint64_t sub_1DD73A008(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;

  return v5;
}

uint64_t sub_1DD73A05C()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0E9C8);
  sub_1DD6E1224(v0, qword_1ECD0E9C8);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DD8782E0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "cat_id";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1DD874AE0();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1DD874AF0();
}

uint64_t sub_1DD73A1EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD874B10();
  v7 = sub_1DD6E1224(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t OverridesCommon_OverrideDialog.CATDialog.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    sub_1DD6E0F70();
    result = sub_1DD8749A0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1DD6E0D68();
      sub_1DD8749F0();
    }
  }

  return result;
}

uint64_t OverridesCommon_OverrideDialog.CATDialog.traverse<A>(visitor:)()
{
  sub_1DD6DE2D4();
  sub_1DD6F30BC();
  if (!v3 || (result = sub_1DD6E0D74(v1, v2, 1), !v0))
  {
    type metadata accessor for OverridesCommon_OverrideDialog.CATDialog(0);
    return sub_1DD6DDF78();
  }

  return result;
}

uint64_t static OverridesCommon_OverrideDialog.CATDialog.== infix(_:_:)()
{
  sub_1DD6E1F34();
  sub_1DD6E652C(v0);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for OverridesCommon_OverrideDialog.CATDialog(0);
  sub_1DD874910();
  sub_1DD6E1430();
  v6 = sub_1DD73ADD4(v4, v5, MEMORY[0x1E69AAC10]);
  return sub_1DD6E2124(v6) & 1;
}

uint64_t sub_1DD73A44C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD73ADD4(&qword_1ECD0EAD8, type metadata accessor for OverridesCommon_OverrideDialog.CATDialog, &protocol conformance descriptor for OverridesCommon_OverrideDialog.CATDialog);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD73A4CC(uint64_t a1)
{
  v2 = sub_1DD73ADD4(&qword_1ECD0EAC8, type metadata accessor for OverridesCommon_OverrideDialog.CATDialog, &protocol conformance descriptor for OverridesCommon_OverrideDialog.CATDialog);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD73A53C(uint64_t a1, uint64_t a2)
{
  sub_1DD73ADD4(&qword_1ECD0EAC8, type metadata accessor for OverridesCommon_OverrideDialog.CATDialog, &protocol conformance descriptor for OverridesCommon_OverrideDialog.CATDialog);

  return sub_1DD874A70();
}

uint64_t sub_1DD73A5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD875B20();
  sub_1DD8750C0();
  return sub_1DD875B60();
}

unint64_t sub_1DD73A610()
{
  result = qword_1ECD0E9F8;
  if (!qword_1ECD0E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E9F8);
  }

  return result;
}

unint64_t sub_1DD73A8A8()
{
  result = qword_1ECD0EA68;
  if (!qword_1ECD0EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0EA68);
  }

  return result;
}

unint64_t sub_1DD73A900()
{
  result = qword_1ECD0EA70;
  if (!qword_1ECD0EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0EA70);
  }

  return result;
}

uint64_t sub_1DD73ADD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD73AE1C()
{
  sub_1DD6E1F34();
  v1(0);
  sub_1DD6DE1C4();
  v2 = sub_1DD6DDEFC();
  v3(v2);
  return v0;
}

uint64_t sub_1DD73AE74(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1DD6DE1C4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OverridesCommon_ContextPredicate.init()()
{
  v1 = sub_1DD6E0A5C();
  v2 = type metadata accessor for OverridesCommon_StringPredicate(v1);
  v5 = sub_1DD6DEA4C(v0, v3, v4, v2);
  v6 = type metadata accessor for OverridesCommon_ContextPredicate(v5);
  v7 = (v0 + *(v6 + 20));
  *v7 = 0;
  v7[1] = 0;
  v8 = (v0 + *(v6 + 24));
  *v8 = 0;
  v8[1] = 0;
  return _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
}

uint64_t OverridesCommon_ContextPredicate.unknownFields.getter()
{
  v0 = sub_1DD6E0A5C();
  type metadata accessor for OverridesCommon_ContextPredicate(v0);
  sub_1DD874910();
  sub_1DD6DE1C4();
  v1 = sub_1DD6E0838();

  return v2(v1);
}

uint64_t OverridesCommon_ContextPredicate.unknownFields.setter()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for OverridesCommon_ContextPredicate(v0);
  sub_1DD874910();
  sub_1DD6DE1C4();
  v1 = sub_1DD6E26D8();

  return v2(v1);
}

uint64_t OverridesCommon_ContextPredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for OverridesCommon_ContextPredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t OverridesCommon_StringPredicate.init()()
{
  v1 = sub_1DD6E0A5C();
  type metadata accessor for OverridesCommon_StringPredicate(v1);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0xE000000000000000;
  return result;
}

uint64_t OverridesCommon_StringPredicate.unknownFields.getter()
{
  v0 = sub_1DD6E0A5C();
  type metadata accessor for OverridesCommon_StringPredicate(v0);
  sub_1DD874910();
  sub_1DD6DE1C4();
  v1 = sub_1DD6E0838();

  return v2(v1);
}

uint64_t OverridesCommon_StringPredicate.unknownFields.setter()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for OverridesCommon_StringPredicate(v0);
  sub_1DD874910();
  sub_1DD6DE1C4();
  v1 = sub_1DD6E26D8();

  return v2(v1);
}

uint64_t OverridesCommon_StringPredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for OverridesCommon_StringPredicate(v0);
  return sub_1DD6DDF9C();
}

IntelligenceFlow::OverridesCommon_StringPredicate::Operator_optional __swiftcall OverridesCommon_StringPredicate.Operator.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t OverridesCommon_OverrideDialog.init()()
{
  v1 = sub_1DD6E0A5C();
  v2 = type metadata accessor for OverridesCommon_OverrideDialogEnum(v1);
  v5 = sub_1DD6DEA4C(v0, v3, v4, v2);
  type metadata accessor for OverridesCommon_OverrideDialog(v5);
  return _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
}

uint64_t OverridesCommon_OverrideDialog.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for OverridesCommon_OverrideDialog(v0);
  return sub_1DD6DDF9C();
}

uint64_t OverridesCommon_OverrideDialog.FallbackDialog.unknownFields.getter()
{
  sub_1DD6E0A5C();
  sub_1DD874910();
  sub_1DD6DE1C4();
  v0 = sub_1DD6DDEFC();

  return v1(v0);
}

uint64_t OverridesCommon_OverrideDialog.FallbackDialog.unknownFields.setter()
{
  sub_1DD6DE290();
  sub_1DD874910();
  sub_1DD6DE1C4();
  v1 = sub_1DD6E492C();

  return v2(v1, v0);
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.init()()
{
  v1 = sub_1DD6E0A5C();
  type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(v1);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;
  return result;
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.unknownFields.getter()
{
  v0 = sub_1DD6E0A5C();
  type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(v0);
  sub_1DD874910();
  sub_1DD6DE1C4();
  v1 = sub_1DD6E0838();

  return v2(v1);
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.unknownFields.setter()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(v0);
  sub_1DD874910();
  sub_1DD6DE1C4();
  v1 = sub_1DD6E26D8();

  return v2(v1);
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(v0);
  return sub_1DD6DDF9C();
}

uint64_t OverridesCommon_OverrideDialog.CATDialog.init()()
{
  v1 = sub_1DD6E0A5C();
  type metadata accessor for OverridesCommon_OverrideDialog.CATDialog(v1);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1DD73B5AC()
{
  v0 = sub_1DD6E0A5C();
  v1(v0);
  sub_1DD874910();
  sub_1DD6DE1C4();
  v2 = sub_1DD6E0838();

  return v3(v2);
}

uint64_t sub_1DD73B634()
{
  v0 = sub_1DD6DE290();
  v1(v0);
  sub_1DD874910();
  sub_1DD6DE1C4();
  v2 = sub_1DD6E26D8();

  return v3(v2);
}

uint64_t OverridesCommon_OverrideDialog.CATDialog.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for OverridesCommon_OverrideDialog.CATDialog(v0);
  return sub_1DD6DDF9C();
}

uint64_t OverridesCommon_ContextPredicate.deviceType.getter()
{
  type metadata accessor for OverridesCommon_ContextPredicate(0);

  return sub_1DD6DDEFC();
}

uint64_t OverridesCommon_ContextPredicate.deviceType.setter()
{
  sub_1DD6DE304();
  v3 = (v1 + *(type metadata accessor for OverridesCommon_ContextPredicate(0) + 20));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t OverridesCommon_ContextPredicate.deviceType.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for OverridesCommon_ContextPredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t OverridesCommon_ContextPredicate.interfaceIdiom.getter()
{
  type metadata accessor for OverridesCommon_ContextPredicate(0);

  return sub_1DD6DDEFC();
}

uint64_t OverridesCommon_ContextPredicate.interfaceIdiom.setter()
{
  sub_1DD6DE304();
  v3 = (v1 + *(type metadata accessor for OverridesCommon_ContextPredicate(0) + 24));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t OverridesCommon_ContextPredicate.interfaceIdiom.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for OverridesCommon_ContextPredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t OverridesCommon_ContextPredicate.init(userQuery:deviceType:interfaceIdiom:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for OverridesCommon_StringPredicate(0);
  v14 = sub_1DD6DEA4C(a6, v12, v13, v11);
  v15 = type metadata accessor for OverridesCommon_ContextPredicate(v14);
  v16 = (a6 + *(v15 + 20));
  v17 = (a6 + *(v15 + 24));
  _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  result = sub_1DD73BB98();
  *v16 = a2;
  v16[1] = a3;
  *v17 = a4;
  v17[1] = a5;
  return result;
}

uint64_t OverridesCommon_StringPredicate.value.setter()
{
  sub_1DD6DE304();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t sub_1DD73BA58@<X0>(uint64_t *a1@<X8>)
{
  result = OverridesCommon_StringPredicate.Operator.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DD73BA88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD73A610();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t OverridesCommon_StringPredicate.init(operator:value:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  type metadata accessor for OverridesCommon_StringPredicate(0);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_1DD73BB98()
{
  sub_1DD6E1F34();
  sub_1DD710A9C(v1, v2);
  sub_1DD6DE1C4();
  v3 = sub_1DD6DDEFC();
  v4(v3);
  return v0;
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.fullPrint.setter()
{
  sub_1DD6DE304();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.fullSpeak.setter()
{
  sub_1DD6DE304();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.supportingPrint.setter()
{
  sub_1DD6DE304();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.supportingSpeak.setter()
{
  sub_1DD6DE304();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.init(fullPrint:fullSpeak:supportingPrint:supportingSpeak:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(0);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t OverridesCommon_OverrideDialog.CATDialog.init(catID:)()
{
  sub_1DD6E1F34();
  v3 = v2;
  type metadata accessor for OverridesCommon_OverrideDialog.CATDialog(0);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v3 = v1;
  v3[1] = v0;
  return result;
}

uint64_t static OverridesCommon_OverrideDialogEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for OverridesCommon_OverrideDialog.CATDialog(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE4A8();
  v29 = (v6 - v5);
  v7 = type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1DD6DE4A8();
  v8 = type metadata accessor for OverridesCommon_OverrideDialog.FallbackDialog(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1DD6DE4A8();
  type metadata accessor for OverridesCommon_OverrideDialogEnum(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v18 = sub_1DD710A9C(&qword_1ECD0EB30, &qword_1DD87B560);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v28 - v19;
  v22 = *(v21 + 56);
  sub_1DD73C370(a1, &v28 - v19);
  sub_1DD73C370(a2, &v20[v22]);
  sub_1DD6DDEFC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1DD73C370(v20, v17);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1DD73C4E8();
      sub_1DD874910();
      sub_1DD73C490();
      v24 = sub_1DD8750F0();
      sub_1DD73C43C();
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1DD73C370(v20, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD73C4E8();
      v24 = static OverridesCommon_OverrideDialog.StringDialog.== infix(_:_:)();
      sub_1DD73C43C();
LABEL_18:
      sub_1DD73C43C();
      sub_1DD6DF374();
      return v24 & 1;
    }

    goto LABEL_15;
  }

  sub_1DD73C370(v20, v11);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_15:
    sub_1DD73C43C();
    sub_1DD73C3D4(v20);
LABEL_16:
    v24 = 0;
    return v24 & 1;
  }

  v25 = v29;
  sub_1DD73C4E8();
  v26 = *v11 == *v25 && v11[1] == v25[1];
  if (!v26 && (sub_1DD875A30() & 1) == 0 || (sub_1DD874910(), sub_1DD73C490(), (sub_1DD8750F0() & 1) == 0))
  {
    sub_1DD6ED5D4();
    sub_1DD73C43C();
    sub_1DD73C43C();
    sub_1DD6DF374();
    goto LABEL_16;
  }

  sub_1DD6ED5D4();
  sub_1DD73C43C();
  sub_1DD73C43C();
  sub_1DD6DF374();
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_1DD73C370(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverridesCommon_OverrideDialogEnum(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD73C3D4(uint64_t a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD0EB30, &qword_1DD87B560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD73C43C()
{
  v1 = sub_1DD6DE290();
  v2(v1);
  sub_1DD6DE1C4();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1DD73C490()
{
  result = qword_1ECD0E2C8;
  if (!qword_1ECD0E2C8)
  {
    sub_1DD874910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E2C8);
  }

  return result;
}

uint64_t sub_1DD73C4E8()
{
  sub_1DD6E1F34();
  v1(0);
  sub_1DD6DE1C4();
  v2 = sub_1DD6DDEFC();
  v3(v2);
  return v0;
}

unint64_t sub_1DD73C544()
{
  result = qword_1ECD0EB38;
  if (!qword_1ECD0EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0EB38);
  }

  return result;
}

unint64_t sub_1DD73C59C()
{
  result = qword_1ECD0EB40;
  if (!qword_1ECD0EB40)
  {
    sub_1DD717E88(&qword_1ECD0EB48, &qword_1DD87B608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0EB40);
  }

  return result;
}

void sub_1DD73C62C(uint64_t a1)
{
  sub_1DD73C934(319, &qword_1ECD0EB60, type metadata accessor for OverridesCommon_StringPredicate);
  if (v1 <= 0x3F)
  {
    sub_1DD732A5C();
    if (v2 <= 0x3F)
    {
      sub_1DD874910();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1DD73C70C(uint64_t a1)
{
  result = sub_1DD874910();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OverridesCommon_StringPredicate.Operator(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1DD73C894(uint64_t a1)
{
  sub_1DD73C934(319, &qword_1ECD0EB88, type metadata accessor for OverridesCommon_OverrideDialogEnum);
  if (v1 <= 0x3F)
  {
    sub_1DD874910();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD73C934(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DD8755C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DD73C9B0(uint64_t a1)
{
  result = sub_1DD874910();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DD73CA44(uint64_t a1)
{
  sub_1DD732A5C();
  if (v1 <= 0x3F)
  {
    sub_1DD874910();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DD73CB08(uint64_t a1)
{
  result = sub_1DD874910();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD73CB84(uint64_t a1)
{
  result = type metadata accessor for OverridesCommon_OverrideDialog.FallbackDialog(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for OverridesCommon_OverrideDialog.CATDialog(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void ResponseGenerationOverrides_DialogGenerationOverrides.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    v1 = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_1DD6E0824();
      sub_1DD73F168();
    }
  }
}

void ResponseGenerationOverrides_DialogGenerationOverrides.traverse<A>(visitor:)()
{
  sub_1DD6FEAFC();
  sub_1DD6DE2D4();
  sub_1DD6E5CA0();
  if (!v1 || (type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0), sub_1DD753414(&qword_1EE015D58, type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride, &protocol conformance descriptor for ResponseGenerationOverrides_DialogGenerationOverride), sub_1DD6FF79C(), sub_1DD6E6540(), sub_1DD874AC0(), !v0))
  {
    type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverrides(0);
    sub_1DD6DDF78();
  }

  sub_1DD6E7244();
}

uint64_t sub_1DD73CED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F210, type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverrides, &protocol conformance descriptor for ResponseGenerationOverrides_DialogGenerationOverrides);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD73CF54(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0EF38, type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverrides, &protocol conformance descriptor for ResponseGenerationOverrides_DialogGenerationOverrides);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD73CFC4(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1ECD0EF38, type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverrides, &protocol conformance descriptor for ResponseGenerationOverrides_DialogGenerationOverrides);

  return sub_1DD874A70();
}

uint64_t sub_1DD73D05C()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1EE015D68);
  sub_1DD6E1224(v0, qword_1EE015D68);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1DD87B7D0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1DD874AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "name";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "disabled";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "context";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "rules";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "override_dialog";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "radar_id";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "test_id";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  return sub_1DD874AF0();
}

void ResponseGenerationOverrides_DialogGenerationOverride.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    v1 = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_1DD6E0D68();
        sub_1DD8749F0();
        break;
      case 2:
        sub_1DD6E0D68();
        sub_1DD8749E0();
        break;
      case 3:
        sub_1DD6E0D68();
        sub_1DD8749C0();
        break;
      case 4:
        v3 = sub_1DD6E0824();
        sub_1DD73D4FC(v3, v4, v5, v6);
        break;
      case 5:
        sub_1DD6E0824();
        sub_1DD74A0AC();
        break;
      case 6:
        v11 = sub_1DD6E0824();
        sub_1DD73D5B0(v11, v12, v13, v14);
        break;
      case 7:
        v15 = sub_1DD6E0824();
        sub_1DD73D664(v15, v16, v17, v18);
        break;
      case 8:
        v7 = sub_1DD6E0824();
        sub_1DD73D6C8(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1DD73D4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0);
  type metadata accessor for OverridesCommon_ContextPredicate(0);
  sub_1DD753414(&qword_1ECD0EA40, type metadata accessor for OverridesCommon_ContextPredicate, &protocol conformance descriptor for OverridesCommon_ContextPredicate);
  return sub_1DD874A20();
}

uint64_t sub_1DD73D5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0);
  type metadata accessor for OverridesCommon_OverrideDialog(0);
  sub_1DD753414(&qword_1ECD0EA80, type metadata accessor for OverridesCommon_OverrideDialog, &protocol conformance descriptor for OverridesCommon_OverrideDialog);
  return sub_1DD874A20();
}

void ResponseGenerationOverrides_DialogGenerationOverride.traverse<A>(visitor:)()
{
  sub_1DD6FEAFC();
  sub_1DD6DE2D4();
  sub_1DD6EE854();
  if (!v2 || (sub_1DD6E58EC(), sub_1DD874AA0(), !v0))
  {
    v3 = sub_1DD6DDFB8();
    sub_1DD73D87C(v3, v4, v5, v6);
    if (!v0)
    {
      if (*(v1 + 16) == 1)
      {
        sub_1DD6E58EC();
        sub_1DD6E5F74();
        sub_1DD874A80();
      }

      v7 = sub_1DD6DDFB8();
      sub_1DD73D8B8(v7, v8, v9, v10);
      if (*(*(v1 + 24) + 16))
      {
        type metadata accessor for ResponseGenerationOverrides_Rule(0);
        sub_1DD753414(qword_1EE014D68, type metadata accessor for ResponseGenerationOverrides_Rule, &protocol conformance descriptor for ResponseGenerationOverrides_Rule);
        sub_1DD6FF79C();
        sub_1DD6E6540();
        sub_1DD874AC0();
      }

      v11 = sub_1DD6DDFB8();
      sub_1DD73DA8C(v11, v12, v13, v14);
      v15 = sub_1DD6DDFB8();
      sub_1DD73DC60(v15, v16, v17, v18);
      v19 = sub_1DD6DDFB8();
      sub_1DD73DCD8(v19, v20, v21, v22);
      type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0);
      sub_1DD6DDF78();
    }
  }

  sub_1DD6E7244();
}

uint64_t sub_1DD73D87C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 40))
  {
    return sub_1DD874AA0();
  }

  return result;
}

uint64_t sub_1DD73D8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0EE20, &unk_1DD87DF20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for OverridesCommon_ContextPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v6, 1, v7) == 1)
  {
    return sub_1DD6FC560(v6, &qword_1ECD0EE20, &unk_1DD87DF20);
  }

  sub_1DD753308();
  sub_1DD753414(&qword_1ECD0EA40, type metadata accessor for OverridesCommon_ContextPredicate, &protocol conformance descriptor for OverridesCommon_ContextPredicate);
  sub_1DD874AD0();
  return sub_1DD753360(v9, type metadata accessor for OverridesCommon_ContextPredicate);
}

uint64_t sub_1DD73DA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0EE10, &qword_1DD884D60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for OverridesCommon_OverrideDialog(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v6, 1, v7) == 1)
  {
    return sub_1DD6FC560(v6, &qword_1ECD0EE10, &qword_1DD884D60);
  }

  sub_1DD753308();
  sub_1DD753414(&qword_1ECD0EA80, type metadata accessor for OverridesCommon_OverrideDialog, &protocol conformance descriptor for OverridesCommon_OverrideDialog);
  sub_1DD874AD0();
  return sub_1DD753360(v9, type metadata accessor for OverridesCommon_OverrideDialog);
}

uint64_t sub_1DD73DC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_1DD874AA0();
  }

  return result;
}

uint64_t sub_1DD73DCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0);
  if (*(a1 + *(result + 44) + 8))
  {
    return sub_1DD874AA0();
  }

  return result;
}

void static ResponseGenerationOverrides_DialogGenerationOverride.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v3 = sub_1DD6E0CA8();
  v66 = type metadata accessor for OverridesCommon_OverrideDialog(v3);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE4A8();
  v7 = v6 - v5;
  v8 = sub_1DD710A9C(&qword_1ECD0EE10, &qword_1DD884D60);
  sub_1DD6DEA10(v8);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v61 - v10;
  v11 = sub_1DD710A9C(&qword_1ECD0EE18, &qword_1DD87B7F0);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6FE1B0();
  v13 = type metadata accessor for OverridesCommon_ContextPredicate(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DE4A8();
  v17 = v16 - v15;
  v18 = sub_1DD710A9C(&qword_1ECD0EE20, &unk_1DD87DF20);
  sub_1DD6DEA10(v18);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v61 - v20;
  v22 = sub_1DD710A9C(&qword_1ECD0EE28, &qword_1DD87B7F8);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v61 - v24;
  v26 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v26 && (sub_1DD875A30() & 1) == 0)
  {
    goto LABEL_56;
  }

  v27 = *(v1 + 40);
  v28 = *(v0 + 40);
  if (v27)
  {
    if (!v28)
    {
      goto LABEL_56;
    }

    v29 = *(v1 + 32) == *(v0 + 32) && v27 == v28;
    if (!v29 && (sub_1DD875A30() & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  else if (v28)
  {
    goto LABEL_56;
  }

  if (*(v1 + 16) != *(v0 + 16))
  {
    goto LABEL_56;
  }

  v64 = v2;
  v62 = v7;
  v63 = type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0);
  v30 = *(v22 + 48);
  sub_1DD7533B8();
  sub_1DD7533B8();
  sub_1DD6DE1FC(v25, 1, v13);
  if (v26)
  {
    sub_1DD6DE1FC(&v25[v30], 1, v13);
    if (v26)
    {
      sub_1DD6FC560(v25, &qword_1ECD0EE20, &unk_1DD87DF20);
      goto LABEL_27;
    }

LABEL_24:
    v32 = &qword_1ECD0EE28;
    v33 = &qword_1DD87B7F8;
    v34 = v25;
LABEL_25:
    sub_1DD6FC560(v34, v32, v33);
    goto LABEL_56;
  }

  sub_1DD7533B8();
  sub_1DD6DE1FC(&v25[v30], 1, v13);
  if (v31)
  {
    sub_1DD753360(v21, type metadata accessor for OverridesCommon_ContextPredicate);
    goto LABEL_24;
  }

  sub_1DD753308();
  v35 = static OverridesCommon_ContextPredicate.== infix(_:_:)(v21, v17);
  sub_1DD753360(v17, type metadata accessor for OverridesCommon_ContextPredicate);
  v36 = sub_1DD6FF97C();
  sub_1DD753360(v36, v37);
  sub_1DD6FC560(v25, &qword_1ECD0EE20, &unk_1DD87DF20);
  if ((v35 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_27:
  sub_1DD71705C();
  if ((v38 & 1) == 0)
  {
    goto LABEL_56;
  }

  v39 = v64;
  v40 = *(v11 + 48);
  sub_1DD6F9A70();
  sub_1DD7533B8();
  sub_1DD6F9A70();
  v41 = v39;
  sub_1DD7533B8();
  v42 = v66;
  sub_1DD6DE1FC(v39, 1, v66);
  if (v26)
  {
    sub_1DD6DE1FC(v39 + v40, 1, v42);
    if (v26)
    {
      sub_1DD6FC560(v39, &qword_1ECD0EE10, &qword_1DD884D60);
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v43 = v65;
  sub_1DD7533B8();
  sub_1DD6DE1FC(v41 + v40, 1, v42);
  if (v44)
  {
    sub_1DD753360(v43, type metadata accessor for OverridesCommon_OverrideDialog);
LABEL_36:
    v32 = &qword_1ECD0EE18;
    v33 = &qword_1DD87B7F0;
    v34 = v41;
    goto LABEL_25;
  }

  v45 = v62;
  sub_1DD753308();
  v46 = static OverridesCommon_OverrideDialog.== infix(_:_:)();
  sub_1DD753360(v45, type metadata accessor for OverridesCommon_OverrideDialog);
  sub_1DD753360(v43, type metadata accessor for OverridesCommon_OverrideDialog);
  sub_1DD6FC560(v41, &qword_1ECD0EE10, &qword_1DD884D60);
  if ((v46 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_38:
  sub_1DD75371C();
  if (v47)
  {
    if (!v48)
    {
      goto LABEL_56;
    }

    v51 = *v49 == *v50 && v47 == v48;
    if (!v51 && (sub_1DD875A30() & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  else if (v48)
  {
    goto LABEL_56;
  }

  sub_1DD75371C();
  if (v52)
  {
    if (v53)
    {
      v56 = *v54 == *v55 && v52 == v53;
      if (v56 || (sub_1DD875A30() & 1) != 0)
      {
        goto LABEL_54;
      }
    }

LABEL_56:
    v60 = 0;
    goto LABEL_57;
  }

  if (v53)
  {
    goto LABEL_56;
  }

LABEL_54:
  sub_1DD874910();
  sub_1DD6E1448();
  v59 = sub_1DD753414(v57, v58, MEMORY[0x1E69AAC10]);
  v60 = sub_1DD6E2124(v59);
LABEL_57:
  sub_1DD6E0CCC(v60);
  sub_1DD6DFED0();
}

uint64_t sub_1DD73E344(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1DD875B20();
  a1(0);
  sub_1DD753414(a2, a3, a4);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t sub_1DD73E44C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F208, type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride, &protocol conformance descriptor for ResponseGenerationOverrides_DialogGenerationOverride);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD73E4CC(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1EE015D58, type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride, &protocol conformance descriptor for ResponseGenerationOverrides_DialogGenerationOverride);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD73E53C(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1EE015D58, type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride, &protocol conformance descriptor for ResponseGenerationOverrides_DialogGenerationOverride);

  return sub_1DD874A70();
}

uint64_t sub_1DD73E5D4()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1EE014B48);
  sub_1DD6E1224(v0, qword_1EE014B48);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD8782F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "operator";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t ResponseGenerationOverrides_IntPredicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    result = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_1DD6E0D68();
      sub_1DD874A00();
    }

    else if (result == 1)
    {
      v3 = sub_1DD6E0824();
      sub_1DD73E824(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t ResponseGenerationOverrides_IntPredicate.traverse<A>(visitor:)()
{
  sub_1DD6DE2D4();
  if (!*v0 || (sub_1DD7513A4(), sub_1DD6E6540(), result = sub_1DD874A90(), !v1))
  {
    if (!*(v2 + 4) || (sub_1DD6E58EC(), sub_1DD6E5F74(), result = sub_1DD874AB0(), !v1))
    {
      type metadata accessor for ResponseGenerationOverrides_IntPredicate(0);
      return sub_1DD6DDF78();
    }
  }

  return result;
}

uint64_t static ResponseGenerationOverrides_IntPredicate.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1DD6E1F34();
  if (*(v2 + 4) != *(v3 + 4))
  {
    return 0;
  }

  type metadata accessor for ResponseGenerationOverrides_IntPredicate(0);
  sub_1DD874910();
  sub_1DD6E1448();
  v6 = sub_1DD753414(v4, v5, MEMORY[0x1E69AAC10]);
  return sub_1DD6E2124(v6) & 1;
}

uint64_t sub_1DD73EA68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F200, type metadata accessor for ResponseGenerationOverrides_IntPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_IntPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD73EAE8(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1EE014AF0, type metadata accessor for ResponseGenerationOverrides_IntPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_IntPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD73EB58(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1EE014AF0, type metadata accessor for ResponseGenerationOverrides_IntPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_IntPredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD73EBD8()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1EE014B28);
  sub_1DD6E1224(v0, qword_1EE014B28);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD87AAA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNSPECIFIED";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GREATER_OR_EQUAL_THAN";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EQUAL_TO";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LESS_OR_EQUAL_THAN";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t sub_1DD73EE64()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0EBD0);
  sub_1DD6E1224(v0, qword_1ECD0EBD0);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD87AC20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "values";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "size";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "no_extra_values";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1DD874AF0();
}

void ResponseGenerationOverrides_ListPredicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    v1 = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        sub_1DD6E0D68();
        sub_1DD8749C0();
        break;
      case 2:
        sub_1DD6E95BC();
        sub_1DD6E0824();
        sub_1DD73F7E8();
        break;
      case 1:
        sub_1DD6E0824();
        sub_1DD73F168();
        break;
    }
  }
}

void sub_1DD73F168()
{
  sub_1DD6DED2C();
  v0 = sub_1DD6E1F78();
  v1(v0);
  sub_1DD753678();
  sub_1DD6DF0B4();
  sub_1DD874A10();
  sub_1DD6E0C78();
}

void ResponseGenerationOverrides_ListPredicate.traverse<A>(visitor:)()
{
  sub_1DD6FEAFC();
  sub_1DD6DE2D4();
  sub_1DD6E5CA0();
  if (!v2 || (type metadata accessor for OverridesCommon_StringPredicate(0), sub_1DD6FADAC(), sub_1DD753414(v3, v4, &protocol conformance descriptor for OverridesCommon_StringPredicate), sub_1DD6FF79C(), sub_1DD6E6540(), sub_1DD874AC0(), !v0))
  {
    sub_1DD6E95BC();
    sub_1DD6DDFB8();
    sub_1DD73F970();
    if (!v0)
    {
      if (*(v1 + 8) == 1)
      {
        sub_1DD6E58EC();
        sub_1DD6E5F74();
        sub_1DD874A80();
      }

      type metadata accessor for ResponseGenerationOverrides_ListPredicate(0);
      sub_1DD6DDF78();
    }
  }

  sub_1DD6E7244();
}

uint64_t sub_1DD73F35C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1F8, type metadata accessor for ResponseGenerationOverrides_ListPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ListPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD73F3DC(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0EF60, type metadata accessor for ResponseGenerationOverrides_ListPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ListPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD73F44C(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1ECD0EF60, type metadata accessor for ResponseGenerationOverrides_ListPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ListPredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD73F4E4()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0EBE8);
  sub_1DD6E1224(v0, qword_1ECD0EBE8);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD87AC20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "items";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "size";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "no_extra_keys";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_1DD874AF0();
}

void ResponseGenerationOverrides_KeyValuePredicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    v1 = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        sub_1DD6E0D68();
        sub_1DD8749C0();
        break;
      case 2:
        sub_1DD753614();
        sub_1DD6E0824();
        sub_1DD73F7E8();
        break;
      case 1:
        sub_1DD6E0824();
        sub_1DD73F168();
        break;
    }
  }
}

void sub_1DD73F7E8()
{
  sub_1DD6FEAFC();
  v0(0);
  type metadata accessor for ResponseGenerationOverrides_IntPredicate(0);
  sub_1DD7029CC();
  sub_1DD753414(v1, v2, &protocol conformance descriptor for ResponseGenerationOverrides_IntPredicate);
  sub_1DD874A20();
  sub_1DD6E7244();
}

void ResponseGenerationOverrides_KeyValuePredicate.traverse<A>(visitor:)()
{
  sub_1DD6FEAFC();
  sub_1DD6DE2D4();
  sub_1DD6E5CA0();
  if (!v2 || (type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate(0), sub_1DD753414(&qword_1ECD0EE58, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate), sub_1DD6FF79C(), sub_1DD6E6540(), sub_1DD874AC0(), !v0))
  {
    sub_1DD753614();
    sub_1DD6DDFB8();
    sub_1DD73F970();
    if (!v0)
    {
      if (*(v1 + 8) == 1)
      {
        sub_1DD6E58EC();
        sub_1DD6E5F74();
        sub_1DD874A80();
      }

      type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate(0);
      sub_1DD6DDF78();
    }
  }

  sub_1DD6E7244();
}

void sub_1DD73F970()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD0EE40, &unk_1DD87DF30);
  sub_1DD6DEA10(v3);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DD6E0CB8();
  type metadata accessor for ResponseGenerationOverrides_IntPredicate(v5);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE4A8();
  v2(0);
  sub_1DD7533B8();
  sub_1DD6E10F4();
  if (v7)
  {
    sub_1DD6FC560(v0, &qword_1ECD0EE40, &unk_1DD87DF30);
  }

  else
  {
    sub_1DD753308();
    sub_1DD7029CC();
    sub_1DD753414(v8, v9, &protocol conformance descriptor for ResponseGenerationOverrides_IntPredicate);
    sub_1DD874AD0();
    sub_1DD7536B0();
  }

  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void sub_1DD73FB18()
{
  sub_1DD6DEB38();
  v6 = v5;
  v8 = v7;
  v9 = sub_1DD6ED7A4();
  type metadata accessor for ResponseGenerationOverrides_IntPredicate(v9);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DE4A8();
  sub_1DD6FE1B0();
  v11 = sub_1DD710A9C(&qword_1ECD0EE40, &unk_1DD87DF30);
  sub_1DD6DEA10(v11);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DEBA0();
  v13 = sub_1DD710A9C(&qword_1ECD0EE48, &qword_1DD87B800);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DEA6C();
  if ((v8(*v1, *v0) & 1) == 0)
  {
    goto LABEL_20;
  }

  v6(0);
  v15 = *(v13 + 48);
  sub_1DD75366C();
  sub_1DD7533B8();
  sub_1DD75366C();
  sub_1DD7533B8();
  sub_1DD6E26E4(v2);
  if (v20)
  {
    sub_1DD6E26E4(v2 + v15);
    if (v20)
    {
      sub_1DD6FC560(v2, &qword_1ECD0EE40, &unk_1DD87DF30);
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  sub_1DD6DED5C();
  sub_1DD7533B8();
  sub_1DD6E26E4(v2 + v15);
  if (v20)
  {
    sub_1DD753360(v4, type metadata accessor for ResponseGenerationOverrides_IntPredicate);
LABEL_12:
    v21 = &qword_1ECD0EE48;
    v22 = &qword_1DD87B800;
LABEL_19:
    sub_1DD6FC560(v2, v21, v22);
    goto LABEL_20;
  }

  sub_1DD753308();
  sub_1DD6F37F4();
  if (!v23 || *(v4 + 4) != *(v3 + 4))
  {
    sub_1DD753360(v3, type metadata accessor for ResponseGenerationOverrides_IntPredicate);
    sub_1DD7536E4();
    v21 = &qword_1ECD0EE40;
    v22 = &unk_1DD87DF30;
    goto LABEL_19;
  }

  sub_1DD700B70();
  sub_1DD6E1448();
  v26 = sub_1DD753414(v24, v25, MEMORY[0x1E69AAC10]);
  v27 = sub_1DD75362C(v26);
  sub_1DD753360(v3, type metadata accessor for ResponseGenerationOverrides_IntPredicate);
  sub_1DD753360(v4, type metadata accessor for ResponseGenerationOverrides_IntPredicate);
  sub_1DD6FC560(v2, &qword_1ECD0EE40, &unk_1DD87DF30);
  if ((v27 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (*(v1 + 8) != *(v0 + 8))
  {
LABEL_20:
    v19 = 0;
    goto LABEL_21;
  }

  sub_1DD874910();
  sub_1DD6E1448();
  v18 = sub_1DD753414(v16, v17, MEMORY[0x1E69AAC10]);
  v19 = sub_1DD75364C(v18);
LABEL_21:
  sub_1DD6E0CCC(v19);
  sub_1DD6DFED0();
}

uint64_t sub_1DD73FED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1F0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD73FF54(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0EF78, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD73FFC4(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1ECD0EF78, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD740094()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0EC10);
  sub_1DD6E1224(v0, qword_1ECD0EC10);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD8782F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "any_value_predicate";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "exact_value_predicate";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t sub_1DD7402C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD710A9C(&qword_1ECD0E2F0, &qword_1DD878200);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD710A9C(&qword_1ECD0F290, &qword_1DD87DF08);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1DD6E5E68(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1DD7533B8();
  v28 = sub_1DD6E5ED0(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_1DD6FC560(v10, &qword_1ECD0E2F0, &qword_1DD878200);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD753360(v13, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum);
    }

    else
    {
      sub_1DD6FC560(v20, &qword_1ECD0F290, &qword_1DD87DF08);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v20, 0, 1, v5);
    }
  }

  sub_1DD753414(&qword_1ECD0EFA8, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate);
  v21 = v31;
  sub_1DD874A20();
  if (v21)
  {
    v22 = v20;
    return sub_1DD6FC560(v22, &qword_1ECD0F290, &qword_1DD87DF08);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v17, 1, v5) == 1)
  {
    sub_1DD6FC560(v20, &qword_1ECD0F290, &qword_1DD87DF08);
    v22 = v17;
    return sub_1DD6FC560(v22, &qword_1ECD0F290, &qword_1DD87DF08);
  }

  sub_1DD753308();
  if (v28 != 1)
  {
    sub_1DD8749B0();
  }

  v24 = v29;
  sub_1DD6FC560(v20, &qword_1ECD0F290, &qword_1DD87DF08);
  v25 = v27;
  sub_1DD6FC560(v27, &qword_1ECD0E2F0, &qword_1DD878200);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v25, 0, 1, v24);
}

uint64_t sub_1DD7407B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD710A9C(&qword_1ECD0E2F0, &qword_1DD878200);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD710A9C(&qword_1ECD0F298, &unk_1DD87DF10);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1DD6E5E68(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1DD7533B8();
  v28 = sub_1DD6E5ED0(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_1DD6FC560(v10, &qword_1ECD0E2F0, &qword_1DD878200);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD6FC560(v20, &qword_1ECD0F298, &unk_1DD87DF10);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v20, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v13, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0EFC0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate);
  v21 = v31;
  sub_1DD874A20();
  if (v21)
  {
    v22 = v20;
    return sub_1DD6FC560(v22, &qword_1ECD0F298, &unk_1DD87DF10);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v17, 1, v5) == 1)
  {
    sub_1DD6FC560(v20, &qword_1ECD0F298, &unk_1DD87DF10);
    v22 = v17;
    return sub_1DD6FC560(v22, &qword_1ECD0F298, &unk_1DD87DF10);
  }

  sub_1DD753308();
  if (v28 != 1)
  {
    sub_1DD8749B0();
  }

  v24 = v29;
  sub_1DD6FC560(v20, &qword_1ECD0F298, &unk_1DD87DF10);
  v25 = v27;
  sub_1DD6FC560(v27, &qword_1ECD0E2F0, &qword_1DD878200);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v25, 0, 1, v24);
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.traverse<A>(visitor:)()
{
  sub_1DD6FAAA0();
  v2 = sub_1DD710A9C(&qword_1ECD0E2F0, &qword_1DD878200);
  sub_1DD6DEA10(v2);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6E3824(v4, v5, v6, v7, v8, v9, v10, v11, v24);
  v12 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum(0);
  sub_1DD6E4068(v12);
  if (v13)
  {
    goto LABEL_6;
  }

  sub_1DD6ED130();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1DD6DF35C();
    sub_1DD740FA0(v14, v15, v16, v17);
  }

  else
  {
    v18 = sub_1DD6DF35C();
    sub_1DD740D98(v18, v19, v20, v21);
  }

  sub_1DD6F44B0();
  result = sub_1DD753360(v1, v22);
  if (!v0)
  {
LABEL_6:
    type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate(0);
    return sub_1DD6FBDBC();
  }

  return result;
}

uint64_t sub_1DD740D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2F0, &qword_1DD878200);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v10 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum(0);
  if (sub_1DD6E5ED0(v6, 1, v10) == 1)
  {
    result = sub_1DD6FC560(v6, &qword_1ECD0E2F0, &qword_1DD878200);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0EFA8, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v9, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate);
    }

    result = sub_1DD753360(v6, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD740FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2F0, &qword_1DD878200);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v10 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum(0);
  if (sub_1DD6E5ED0(v6, 1, v10) == 1)
  {
    result = sub_1DD6FC560(v6, &qword_1ECD0E2F0, &qword_1DD878200);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0EFC0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v9, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate);
    }

    result = sub_1DD753360(v6, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD74142C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1E8, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD7414AC(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0EF90, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD74151C(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1ECD0EF90, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD74159C()
{
  if (qword_1ECD0DEB0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECD0EC00;
  v2 = *algn_1ECD0EC08;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1E12B4C10](0xD000000000000012, 0x80000001DD8B5960);

  qword_1ECD0EC28 = v1;
  unk_1ECD0EC30 = v2;
  return result;
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  do
  {
    result = sub_1DD8749A0();
  }

  while (!v2 && (v4 & 1) == 0);
  return result;
}

uint64_t sub_1DD74174C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1E0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD7417CC(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0EFA8, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD74183C(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1ECD0EFA8, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD7418B8()
{
  if (qword_1ECD0DEB0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECD0EC00;
  v2 = *algn_1ECD0EC08;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1E12B4C10](0xD000000000000014, 0x80000001DD8B59C0);

  qword_1ECD0EC50 = v1;
  *algn_1ECD0EC58 = v2;
  return result;
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate.traverse<A>(visitor:)()
{
  sub_1DD6DE2D4();
  sub_1DD6EE854();
  if (!v1 || (sub_1DD6E58EC(), result = sub_1DD874AA0(), !v0))
  {
    type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate(0);
    return sub_1DD6DDF78();
  }

  return result;
}

uint64_t static ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate.== infix(_:_:)()
{
  sub_1DD6E1F34();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate(0);
  sub_1DD7536CC();
  sub_1DD6E1448();
  v6 = sub_1DD753414(v4, v5, MEMORY[0x1E69AAC10]);
  return sub_1DD6E2124(v6) & 1;
}

uint64_t sub_1DD741B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1D8, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD741BF4(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0EFC0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD741C64(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1ECD0EFC0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD741D34()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0EC88);
  sub_1DD6E1224(v0, qword_1ECD0EC88);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD8782F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "any_value_predicate";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "string_predicate";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t sub_1DD741F60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  while (1)
  {
    result = sub_1DD8749A0();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v11 = sub_1DD753708();
      a5(v11);
    }

    else if (result == 1)
    {
      v10 = sub_1DD753708();
      a4(v10);
    }
  }

  return result;
}

uint64_t sub_1DD741FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD710A9C(&qword_1ECD0E2D0, &qword_1DD8781E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD710A9C(&qword_1ECD0F288, &qword_1DD87DF00);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1DD6E5E68(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1DD7533B8();
  v28 = sub_1DD6E5ED0(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_1DD6FC560(v10, &qword_1ECD0E2D0, &qword_1DD8781E0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD753360(v13, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum);
    }

    else
    {
      sub_1DD6FC560(v20, &qword_1ECD0F288, &qword_1DD87DF00);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v20, 0, 1, v5);
    }
  }

  sub_1DD753414(&qword_1ECD0EFF0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate);
  v21 = v31;
  sub_1DD874A20();
  if (v21)
  {
    v22 = v20;
    return sub_1DD6FC560(v22, &qword_1ECD0F288, &qword_1DD87DF00);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v17, 1, v5) == 1)
  {
    sub_1DD6FC560(v20, &qword_1ECD0F288, &qword_1DD87DF00);
    v22 = v17;
    return sub_1DD6FC560(v22, &qword_1ECD0F288, &qword_1DD87DF00);
  }

  sub_1DD753308();
  if (v28 != 1)
  {
    sub_1DD8749B0();
  }

  v24 = v29;
  sub_1DD6FC560(v20, &qword_1ECD0F288, &qword_1DD87DF00);
  v25 = v27;
  sub_1DD6FC560(v27, &qword_1ECD0E2D0, &qword_1DD8781E0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v25, 0, 1, v24);
}

uint64_t sub_1DD7424E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for OverridesCommon_StringPredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD710A9C(&qword_1ECD0E2D0, &qword_1DD8781E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1DD6E5E68(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1DD7533B8();
  v28 = sub_1DD6E5ED0(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_1DD6FC560(v10, &qword_1ECD0E2D0, &qword_1DD8781E0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD6FC560(v20, &qword_1ECD0E9E0, &unk_1DD87B550);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v20, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v13, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate, &protocol conformance descriptor for OverridesCommon_StringPredicate);
  v21 = v31;
  sub_1DD874A20();
  if (v21)
  {
    v22 = v20;
    return sub_1DD6FC560(v22, &qword_1ECD0E9E0, &unk_1DD87B550);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v17, 1, v5) == 1)
  {
    sub_1DD6FC560(v20, &qword_1ECD0E9E0, &unk_1DD87B550);
    v22 = v17;
    return sub_1DD6FC560(v22, &qword_1ECD0E9E0, &unk_1DD87B550);
  }

  sub_1DD753308();
  if (v28 != 1)
  {
    sub_1DD8749B0();
  }

  v24 = v29;
  sub_1DD6FC560(v20, &qword_1ECD0E9E0, &unk_1DD87B550);
  v25 = v27;
  sub_1DD6FC560(v27, &qword_1ECD0E2D0, &qword_1DD8781E0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v25, 0, 1, v24);
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.traverse<A>(visitor:)()
{
  sub_1DD6FAAA0();
  v2 = sub_1DD710A9C(&qword_1ECD0E2D0, &qword_1DD8781E0);
  sub_1DD6DEA10(v2);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6E3824(v4, v5, v6, v7, v8, v9, v10, v11, v24);
  v12 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum(0);
  sub_1DD6E4068(v12);
  if (v13)
  {
    goto LABEL_6;
  }

  sub_1DD6ED130();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1DD6DF35C();
    sub_1DD742CCC(v14, v15, v16, v17);
  }

  else
  {
    v18 = sub_1DD6DF35C();
    sub_1DD742AC4(v18, v19, v20, v21);
  }

  sub_1DD700D3C();
  result = sub_1DD753360(v1, v22);
  if (!v0)
  {
LABEL_6:
    type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate(0);
    return sub_1DD6FBDBC();
  }

  return result;
}

uint64_t sub_1DD742AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2D0, &qword_1DD8781E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v10 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum(0);
  if (sub_1DD6E5ED0(v6, 1, v10) == 1)
  {
    result = sub_1DD6FC560(v6, &qword_1ECD0E2D0, &qword_1DD8781E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0EFF0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v9, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate);
    }

    result = sub_1DD753360(v6, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD742CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2D0, &qword_1DD8781E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for OverridesCommon_StringPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v10 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum(0);
  if (sub_1DD6E5ED0(v6, 1, v10) == 1)
  {
    result = sub_1DD6FC560(v6, &qword_1ECD0E2D0, &qword_1DD8781E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate, &protocol conformance descriptor for OverridesCommon_StringPredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v9, type metadata accessor for OverridesCommon_StringPredicate);
    }

    result = sub_1DD753360(v6, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD743158(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1D0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD7431D8(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0EFD8, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD743248(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1ECD0EFD8, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD7432C8()
{
  if (qword_1ECD0DEE0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECD0EC78;
  v2 = qword_1ECD0EC80;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1E12B4C10](0xD000000000000012, 0x80000001DD8B5960);

  qword_1ECD0ECA0 = v1;
  *algn_1ECD0ECA8 = v2;
  return result;
}

uint64_t _s16IntelligenceFlow45ResponseGenerationOverrides_KeyValuePredicateV0fH0V03AnygH0V2eeoiySbAG_AGtFZ_0()
{
  sub_1DD6E0CA8();
  sub_1DD874910();
  sub_1DD6E1448();
  sub_1DD753414(v0, v1, MEMORY[0x1E69AAC10]);
  sub_1DD6FF79C();
  return sub_1DD8750F0() & 1;
}

uint64_t sub_1DD743484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1C8, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD743504(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0EFF0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD743574(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1ECD0EFF0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD743620(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1E12B4C10](a2, a3);
  *a4 = 0xD00000000000002FLL;
  *a5 = 0x80000001DD8B51C0;
  return result;
}

uint64_t sub_1DD7436AC()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0ECD8);
  sub_1DD6E1224(v0, qword_1ECD0ECD8);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD8782F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key_predicate";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value_predicate";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1DD874AF0();
}

void ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    v1 = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v3 = sub_1DD6E0824();
      sub_1DD743948(v7, v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      sub_1DD6E0824();
      sub_1DD744574();
    }
  }
}

uint64_t sub_1DD743948(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate(0);
  type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate(0);
  sub_1DD753414(&qword_1ECD0EFD8, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);
  return sub_1DD874A20();
}

uint64_t sub_1DD743A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E300, &qword_1DD878210);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v6, 1, v7) == 1)
  {
    return sub_1DD6FC560(v6, &qword_1ECD0E300, &qword_1DD878210);
  }

  sub_1DD753308();
  sub_1DD753414(&qword_1ECD0EF90, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);
  sub_1DD874AD0();
  return sub_1DD753360(v9, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);
}

uint64_t sub_1DD743C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2E0, &qword_1DD8781F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate(0);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v6, 1, v7) == 1)
  {
    return sub_1DD6FC560(v6, &qword_1ECD0E2E0, &qword_1DD8781F0);
  }

  sub_1DD753308();
  sub_1DD753414(&qword_1ECD0EFD8, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);
  sub_1DD874AD0();
  return sub_1DD753360(v9, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);
}

void static ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v4 = v3;
  v40 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE4A8();
  v38[0] = v7 - v6;
  v8 = sub_1DD710A9C(&qword_1ECD0E2E0, &qword_1DD8781F0);
  sub_1DD6DEA10(v8);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E5D10(v10, v38[0]);
  v39 = sub_1DD710A9C(&qword_1ECD0E2E8, &qword_1DD8781F8);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DEA6C();
  v12 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DE4A8();
  v16 = v15 - v14;
  v17 = sub_1DD710A9C(&qword_1ECD0E300, &qword_1DD878210);
  sub_1DD6DEA10(v17);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v38 - v19;
  v21 = sub_1DD710A9C(&qword_1ECD0E308, qword_1DD878218);
  sub_1DD6DEA10(v21);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6E8774();
  sub_1DD7533B8();
  v41 = v4;
  sub_1DD7533B8();
  sub_1DD6DE1FC(v2, 1, v12);
  if (v23)
  {
    sub_1DD6DE1FC(v2 + v1, 1, v12);
    if (v23)
    {
      sub_1DD6FC560(v2, &qword_1ECD0E300, &qword_1DD878210);
      goto LABEL_11;
    }

LABEL_9:
    v24 = &qword_1ECD0E308;
    v25 = qword_1DD878218;
    v26 = v2;
LABEL_20:
    sub_1DD6FC560(v26, v24, v25);
    goto LABEL_21;
  }

  sub_1DD7533B8();
  sub_1DD6DE1FC(v2 + v1, 1, v12);
  if (v23)
  {
    sub_1DD753360(v20, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);
    goto LABEL_9;
  }

  sub_1DD753308();
  v27 = static ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.== infix(_:_:)(v20, v16);
  sub_1DD753360(v16, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);
  sub_1DD753360(v20, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);
  sub_1DD6FC560(v2, &qword_1ECD0E300, &qword_1DD878210);
  if ((v27 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate(0);
  v28 = *(v39 + 48);
  sub_1DD753730();
  sub_1DD7533B8();
  sub_1DD7533B8();
  v29 = v40;
  sub_1DD6DE1FC(v0, 1, v40);
  if (v23)
  {
    sub_1DD6DE1FC(v0 + v28, 1, v29);
    if (v23)
    {
      sub_1DD6FC560(v0, &qword_1ECD0E2E0, &qword_1DD8781F0);
LABEL_24:
      sub_1DD874910();
      sub_1DD6E1448();
      sub_1DD753414(v36, v37, MEMORY[0x1E69AAC10]);
      v32 = sub_1DD8750F0();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v30 = v38[1];
  sub_1DD7533B8();
  sub_1DD6DE1FC(v0 + v28, 1, v29);
  if (v31)
  {
    sub_1DD753360(v30, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);
LABEL_19:
    v24 = &qword_1ECD0E2E8;
    v25 = &qword_1DD8781F8;
    v26 = v0;
    goto LABEL_20;
  }

  v33 = v38[0];
  sub_1DD753308();
  v34 = sub_1DD6EFF50();
  v35 = static ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.== infix(_:_:)(v34);
  sub_1DD753360(v33, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);
  sub_1DD7536E4();
  sub_1DD6FC560(v0, &qword_1ECD0E2E0, &qword_1DD8781F0);
  if (v35)
  {
    goto LABEL_24;
  }

LABEL_21:
  v32 = 0;
LABEL_22:
  sub_1DD6E0CCC(v32);
  sub_1DD6DFED0();
}

uint64_t sub_1DD744310(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1C0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD744390(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0EE58, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD744400(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1ECD0EE58, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate);

  return sub_1DD874A70();
}

void ResponseGenerationOverrides_AppPredicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    v1 = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_1DD6E0824();
      sub_1DD744574();
    }
  }
}

void sub_1DD744574()
{
  sub_1DD6DED2C();
  v0 = sub_1DD6E1F78();
  v1(v0);
  sub_1DD753678();
  sub_1DD6DF0B4();
  sub_1DD874A20();
  sub_1DD6E0C78();
}

void static ResponseGenerationOverrides_AppPredicate.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v4 = sub_1DD6ED7A4();
  type metadata accessor for OverridesCommon_StringPredicate(v4);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE4A8();
  sub_1DD6FE1B0();
  v6 = sub_1DD6ED130();
  v8 = sub_1DD710A9C(v6, v7);
  sub_1DD6DEA10(v8);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DEBA0();
  v10 = sub_1DD710A9C(&qword_1ECD0E9E8, &qword_1DD87AC30);
  sub_1DD6DEA10(v10);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E4918();
  sub_1DD753744();
  sub_1DD6E5D90();
  sub_1DD6E26E4(v0);
  if (v16)
  {
    sub_1DD6E26E4(v0 + v3);
    if (v16)
    {
      sub_1DD6FC560(v0, &qword_1ECD0E9E0, &unk_1DD87B550);
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  sub_1DD6DED5C();
  sub_1DD7533B8();
  sub_1DD6E26E4(v0 + v3);
  if (v16)
  {
    sub_1DD6EE744();
LABEL_10:
    v17 = &qword_1ECD0E9E8;
    v18 = &qword_1DD87AC30;
LABEL_21:
    sub_1DD6FC560(v0, v17, v18);
LABEL_22:
    v15 = 0;
    goto LABEL_23;
  }

  sub_1DD6ED778();
  sub_1DD6F37F4();
  if (!v19 || ((sub_1DD7013AC(), v16) ? (v22 = v20 == v21) : (v22 = 0), !v22 && (sub_1DD875A30() & 1) == 0))
  {
    sub_1DD6ED394();
    sub_1DD753360(v1, v29);
    sub_1DD7536E4();
    v17 = &qword_1ECD0E9E0;
    v18 = &unk_1DD87B550;
    goto LABEL_21;
  }

  v23 = sub_1DD700B70();
  sub_1DD6E1448();
  v26 = sub_1DD753414(v24, v25, MEMORY[0x1E69AAC10]);
  sub_1DD75362C(v26);
  sub_1DD6E6C70();
  v28 = v27;
  sub_1DD753360(v1, v27);
  sub_1DD753360(v2, v28);
  sub_1DD6FC560(v0, &qword_1ECD0E9E0, &unk_1DD87B550);
  if ((v23 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  type metadata accessor for ResponseGenerationOverrides_AppPredicate(0);
  sub_1DD7536CC();
  sub_1DD6E1448();
  v14 = sub_1DD753414(v12, v13, MEMORY[0x1E69AAC10]);
  v15 = sub_1DD75364C(v14);
LABEL_23:
  sub_1DD6E0CCC(v15);
  sub_1DD6DFED0();
}

uint64_t sub_1DD7448E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1B8, type metadata accessor for ResponseGenerationOverrides_AppPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_AppPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD744964(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0F018, type metadata accessor for ResponseGenerationOverrides_AppPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_AppPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD7449D4(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1ECD0F018, type metadata accessor for ResponseGenerationOverrides_AppPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_AppPredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD744AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  sub_1DD6FAAA0();
  v7 = sub_1DD6ED5EC();
  result = v8(v7);
  if (!v5)
  {
    a5(0);
    return sub_1DD6FBDBC();
  }

  return result;
}

void static ResponseGenerationOverrides_ToolPredicate.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v4 = sub_1DD6ED7A4();
  type metadata accessor for OverridesCommon_StringPredicate(v4);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE4A8();
  sub_1DD6FE1B0();
  v6 = sub_1DD6ED130();
  v8 = sub_1DD710A9C(v6, v7);
  sub_1DD6DEA10(v8);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DEBA0();
  v10 = sub_1DD710A9C(&qword_1ECD0E9E8, &qword_1DD87AC30);
  sub_1DD6DEA10(v10);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E4918();
  sub_1DD753744();
  sub_1DD6E5D90();
  sub_1DD6E26E4(v0);
  if (v16)
  {
    sub_1DD6E26E4(v0 + v3);
    if (v16)
    {
      sub_1DD6FC560(v0, &qword_1ECD0E9E0, &unk_1DD87B550);
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  sub_1DD6DED5C();
  sub_1DD7533B8();
  sub_1DD6E26E4(v0 + v3);
  if (v16)
  {
    sub_1DD6EE744();
LABEL_10:
    v17 = &qword_1ECD0E9E8;
    v18 = &qword_1DD87AC30;
LABEL_21:
    sub_1DD6FC560(v0, v17, v18);
LABEL_22:
    v15 = 0;
    goto LABEL_23;
  }

  sub_1DD6ED778();
  sub_1DD6F37F4();
  if (!v19 || ((sub_1DD7013AC(), v16) ? (v22 = v20 == v21) : (v22 = 0), !v22 && (sub_1DD875A30() & 1) == 0))
  {
    sub_1DD6ED394();
    sub_1DD753360(v1, v29);
    sub_1DD7536E4();
    v17 = &qword_1ECD0E9E0;
    v18 = &unk_1DD87B550;
    goto LABEL_21;
  }

  v23 = sub_1DD700B70();
  sub_1DD6E1448();
  v26 = sub_1DD753414(v24, v25, MEMORY[0x1E69AAC10]);
  sub_1DD75362C(v26);
  sub_1DD6E6C70();
  v28 = v27;
  sub_1DD753360(v1, v27);
  sub_1DD753360(v2, v28);
  sub_1DD6FC560(v0, &qword_1ECD0E9E0, &unk_1DD87B550);
  if ((v23 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  type metadata accessor for ResponseGenerationOverrides_ToolPredicate(0);
  sub_1DD7536CC();
  sub_1DD6E1448();
  v14 = sub_1DD753414(v12, v13, MEMORY[0x1E69AAC10]);
  v15 = sub_1DD75364C(v14);
LABEL_23:
  sub_1DD6E0CCC(v15);
  sub_1DD6DFED0();
}

uint64_t sub_1DD744E40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1B0, type metadata accessor for ResponseGenerationOverrides_ToolPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ToolPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD744EC0(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1EE014958, type metadata accessor for ResponseGenerationOverrides_ToolPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ToolPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD744F30(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1EE014958, type metadata accessor for ResponseGenerationOverrides_ToolPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ToolPredicate);

  return sub_1DD874A70();
}

void ResponseGenerationOverrides_ActionPredicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    v1 = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_1DD6E60D4();
      sub_1DD6E0824();
      sub_1DD744574();
    }
  }
}

uint64_t sub_1DD745374(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1A8, type metadata accessor for ResponseGenerationOverrides_ActionPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ActionPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD7453F4(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0F038, type metadata accessor for ResponseGenerationOverrides_ActionPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ActionPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD745464(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1ECD0F038, type metadata accessor for ResponseGenerationOverrides_ActionPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ActionPredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD7454FC()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1EE014210);
  sub_1DD6E1224(v0, qword_1EE014210);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD8782F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "manifest_values";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "returned_collection_size";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_1DD874AF0();
}

void ResponseGenerationOverrides_ActionSuccessOutcomePredicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    v1 = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v3 = sub_1DD6E0824();
      sub_1DD745788(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      sub_1DD6E60D4();
      sub_1DD6E0824();
      sub_1DD744574();
    }
  }
}

uint64_t sub_1DD745788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate(0);
  type metadata accessor for ResponseGenerationOverrides_IntPredicate(0);
  sub_1DD753414(&qword_1EE014AF0, type metadata accessor for ResponseGenerationOverrides_IntPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_IntPredicate);
  return sub_1DD874A20();
}

void sub_1DD745890()
{
  sub_1DD6FEAFC();
  v2 = v1;
  v4 = v3;
  sub_1DD6FAAA0();
  v5 = sub_1DD6ED5EC();
  v6(v5);
  if (!v0)
  {
    v7 = sub_1DD6DF35C();
    v4(v7);
    v2(0);
    sub_1DD6FBDBC();
  }

  sub_1DD6E7244();
}

uint64_t sub_1DD745914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0EE40, &unk_1DD87DF30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ResponseGenerationOverrides_IntPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate(0);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v6, 1, v7) == 1)
  {
    return sub_1DD6FC560(v6, &qword_1ECD0EE40, &unk_1DD87DF30);
  }

  sub_1DD753308();
  sub_1DD753414(&qword_1EE014AF0, type metadata accessor for ResponseGenerationOverrides_IntPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_IntPredicate);
  sub_1DD874AD0();
  return sub_1DD753360(v9, type metadata accessor for ResponseGenerationOverrides_IntPredicate);
}

void static ResponseGenerationOverrides_ActionSuccessOutcomePredicate.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v4 = v3;
  v45 = type metadata accessor for ResponseGenerationOverrides_IntPredicate(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE4A8();
  v43[0] = v7 - v6;
  v8 = sub_1DD710A9C(&qword_1ECD0EE40, &unk_1DD87DF30);
  sub_1DD6DEA10(v8);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E5D10(v10, v43[0]);
  v44 = sub_1DD710A9C(&qword_1ECD0EE48, &qword_1DD87B800);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DEA6C();
  v12 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DE4A8();
  v16 = v15 - v14;
  v17 = sub_1DD6FF97C();
  v19 = sub_1DD710A9C(v17, v18);
  sub_1DD6DEA10(v19);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v43 - v21;
  v23 = sub_1DD710A9C(&qword_1ECD0EEB0, &qword_1DD87B808);
  sub_1DD6DEA10(v23);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6E8774();
  sub_1DD6F9A70();
  sub_1DD7533B8();
  v46 = v4;
  sub_1DD6F9A70();
  sub_1DD7533B8();
  sub_1DD6DE1FC(v2, 1, v12);
  if (v25)
  {
    sub_1DD6DE1FC(v2 + v1, 1, v12);
    if (v25)
    {
      sub_1DD6FC560(v2, &qword_1ECD0EEA8, &qword_1DD87DF60);
      goto LABEL_11;
    }

LABEL_9:
    v27 = &qword_1ECD0EEB0;
    v28 = &qword_1DD87B808;
    v29 = v2;
LABEL_27:
    sub_1DD6FC560(v29, v27, v28);
LABEL_28:
    v36 = 0;
    goto LABEL_29;
  }

  sub_1DD7533B8();
  sub_1DD6DE1FC(v2 + v1, 1, v12);
  if (v25)
  {
    sub_1DD6E1BF0();
    sub_1DD753360(v22, v26);
    goto LABEL_9;
  }

  sub_1DD753308();
  static ResponseGenerationOverrides_KeyValuePredicate.== infix(_:_:)(v22, v16);
  v31 = v30;
  sub_1DD753360(v16, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate);
  sub_1DD753360(v22, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate);
  sub_1DD6FC560(v2, &qword_1ECD0EEA8, &qword_1DD87DF60);
  if ((v31 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate(0);
  v32 = *(v44 + 48);
  sub_1DD753730();
  sub_1DD7533B8();
  sub_1DD7533B8();
  v33 = v45;
  sub_1DD6DE1FC(v0, 1, v45);
  if (v25)
  {
    sub_1DD6DE1FC(v0 + v32, 1, v33);
    if (v25)
    {
      sub_1DD6FC560(v0, &qword_1ECD0EE40, &unk_1DD87DF30);
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  v37 = v43[1];
  sub_1DD7533B8();
  sub_1DD6DE1FC(v0 + v32, 1, v33);
  if (v38)
  {
    sub_1DD753360(v37, type metadata accessor for ResponseGenerationOverrides_IntPredicate);
LABEL_20:
    v27 = &qword_1ECD0EE48;
    v28 = &qword_1DD87B800;
LABEL_26:
    v29 = v0;
    goto LABEL_27;
  }

  v39 = v43[0];
  sub_1DD753308();
  if (*v37 != *v39 || *(v37 + 1) != *(v39 + 1))
  {
    sub_1DD753360(v39, type metadata accessor for ResponseGenerationOverrides_IntPredicate);
    sub_1DD753360(v37, type metadata accessor for ResponseGenerationOverrides_IntPredicate);
    v27 = &qword_1ECD0EE40;
    v28 = &unk_1DD87DF30;
    goto LABEL_26;
  }

  sub_1DD874910();
  sub_1DD6E1448();
  sub_1DD753414(v40, v41, MEMORY[0x1E69AAC10]);
  v42 = sub_1DD8750F0();
  sub_1DD753360(v39, type metadata accessor for ResponseGenerationOverrides_IntPredicate);
  sub_1DD753360(v37, type metadata accessor for ResponseGenerationOverrides_IntPredicate);
  sub_1DD6FC560(v0, &qword_1ECD0EE40, &unk_1DD87DF30);
  if ((v42 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_16:
  sub_1DD874910();
  sub_1DD6E1448();
  sub_1DD753414(v34, v35, MEMORY[0x1E69AAC10]);
  v36 = sub_1DD8750F0();
LABEL_29:
  sub_1DD6E0CCC(v36);
  sub_1DD6DFED0();
}

uint64_t sub_1DD7460C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1A0, type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD746148(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1EE014200, type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD7461B8(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1EE014200, type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD74625C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DD874B10();
  sub_1DD732C90(v3, a2);
  sub_1DD6E1224(v3, a2);
  return sub_1DD874B00();
}

uint64_t sub_1DD74633C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F198, type metadata accessor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD7463BC(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0F058, type metadata accessor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD74642C(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1ECD0F058, type metadata accessor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate);

  return sub_1DD874A70();
}

void ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    v1 = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_1DD6E0824();
      sub_1DD744574();
    }
  }
}

uint64_t sub_1DD74684C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F190, type metadata accessor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD7468CC(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0F070, type metadata accessor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD74693C(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1ECD0F070, type metadata accessor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD746AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F188, type metadata accessor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD746B70(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0F088, type metadata accessor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD746BE0(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1ECD0F088, type metadata accessor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD746C78()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0ED68);
  sub_1DD6E1224(v0, qword_1ECD0ED68);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD8782F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameter_id";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "parameter_value";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    result = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      v3 = sub_1DD6E0824();
      sub_1DD746ECC(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      sub_1DD6E0D68();
      sub_1DD8749E0();
    }
  }

  return result;
}

uint64_t sub_1DD746ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate(0);
  type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD753414(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate, &protocol conformance descriptor for OverridesCommon_StringPredicate);
  return sub_1DD874A20();
}

uint64_t sub_1DD746FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for OverridesCommon_StringPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate(0);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v6, 1, v7) == 1)
  {
    return sub_1DD6FC560(v6, &qword_1ECD0E9E0, &unk_1DD87B550);
  }

  sub_1DD753308();
  sub_1DD753414(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate, &protocol conformance descriptor for OverridesCommon_StringPredicate);
  sub_1DD874AD0();
  return sub_1DD753360(v9, type metadata accessor for OverridesCommon_StringPredicate);
}

uint64_t sub_1DD747264(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F180, type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD7472E4(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0F0A0, type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD747354(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1ECD0F0A0, type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD7473EC()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0ED80);
  sub_1DD6E1224(v0, qword_1ECD0ED80);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD8782F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameter_id";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameter_values";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t sub_1DD747604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate(0);
  type metadata accessor for ResponseGenerationOverrides_ListPredicate(0);
  sub_1DD753414(&qword_1ECD0EF60, type metadata accessor for ResponseGenerationOverrides_ListPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ListPredicate);
  return sub_1DD874A20();
}

uint64_t sub_1DD74770C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0EED0, &qword_1DD87B810);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ResponseGenerationOverrides_ListPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate(0);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v6, 1, v7) == 1)
  {
    return sub_1DD6FC560(v6, &qword_1ECD0EED0, &qword_1DD87B810);
  }

  sub_1DD753308();
  sub_1DD753414(&qword_1ECD0EF60, type metadata accessor for ResponseGenerationOverrides_ListPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ListPredicate);
  sub_1DD874AD0();
  return sub_1DD753360(v9, type metadata accessor for ResponseGenerationOverrides_ListPredicate);
}

void static ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v3 = sub_1DD6E0CA8();
  type metadata accessor for ResponseGenerationOverrides_ListPredicate(v3);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DF39C();
  v5 = sub_1DD710A9C(&qword_1ECD0EED0, &qword_1DD87B810);
  sub_1DD6DEA10(v5);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DEBA0();
  v7 = sub_1DD710A9C(&qword_1ECD0EED8, &qword_1DD87B818);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEA6C();
  v9 = v1[1];
  v10 = v0[1];
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    v11 = *v1 == *v0 && v9 == v10;
    if (!v11 && (sub_1DD875A30() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v10)
  {
    goto LABEL_19;
  }

  type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate(0);
  v12 = *(v7 + 48);
  sub_1DD75366C();
  sub_1DD7533B8();
  sub_1DD75366C();
  sub_1DD7533B8();
  sub_1DD6E0848(v2);
  if (v11)
  {
    sub_1DD6E0848(v2 + v12);
    if (v11)
    {
      sub_1DD6FC560(v2, &qword_1ECD0EED0, &qword_1DD87B810);
LABEL_22:
      sub_1DD874910();
      sub_1DD6E1448();
      v25 = sub_1DD753414(v23, v24, MEMORY[0x1E69AAC10]);
      v14 = sub_1DD6E2124(v25);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  sub_1DD6DED5C();
  sub_1DD7533B8();
  sub_1DD6E0848(v2 + v12);
  if (v13)
  {
    sub_1DD6E9A74();
LABEL_18:
    sub_1DD6FC560(v2, &qword_1ECD0EED8, &qword_1DD87B818);
    goto LABEL_19;
  }

  sub_1DD6E6554();
  sub_1DD753308();
  v15 = sub_1DD6EFF50();
  static ResponseGenerationOverrides_ListPredicate.== infix(_:_:)(v15, v16);
  v18 = v17;
  v19 = sub_1DD6FF97C();
  sub_1DD753360(v19, v20);
  v21 = sub_1DD6DDEDC();
  sub_1DD753360(v21, v22);
  sub_1DD6FC560(v2, &qword_1ECD0EED0, &qword_1DD87B810);
  if (v18)
  {
    goto LABEL_22;
  }

LABEL_19:
  v14 = 0;
LABEL_20:
  sub_1DD6E0CCC(v14);
  sub_1DD6DFED0();
}

uint64_t sub_1DD747BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F178, type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD747C68(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0F0B8, type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD747CD8(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1ECD0F0B8, type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD747D64()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0ED98);
  sub_1DD6E1224(v0, qword_1ECD0ED98);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD8782F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameter_id";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameter_value";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t sub_1DD747F7C()
{
  sub_1DD6F9B94();
  while (1)
  {
    sub_1DD6DDEDC();
    result = sub_1DD8749A0();
    if (v2 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v0(v1, v3, v5, v4);
    }

    else if (result == 1)
    {
      sub_1DD6DED5C();
      sub_1DD8749E0();
    }
  }

  return result;
}

uint64_t sub_1DD747FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate(0);
  type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD753414(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate, &protocol conformance descriptor for OverridesCommon_StringPredicate);
  return sub_1DD874A20();
}

uint64_t sub_1DD748104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for OverridesCommon_StringPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate(0);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v6, 1, v7) == 1)
  {
    return sub_1DD6FC560(v6, &qword_1ECD0E9E0, &unk_1DD87B550);
  }

  sub_1DD753308();
  sub_1DD753414(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate, &protocol conformance descriptor for OverridesCommon_StringPredicate);
  sub_1DD874AD0();
  return sub_1DD753360(v9, type metadata accessor for OverridesCommon_StringPredicate);
}

void sub_1DD7482F0()
{
  sub_1DD6DEB38();
  v6 = v5;
  v7 = sub_1DD6ED7A4();
  type metadata accessor for OverridesCommon_StringPredicate(v7);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DE4A8();
  sub_1DD6FE1B0();
  v9 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  sub_1DD6DEA10(v9);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DEBA0();
  v11 = sub_1DD710A9C(&qword_1ECD0E9E8, &qword_1DD87AC30);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DEA6C();
  v13 = v1[1];
  v14 = v0[1];
  if (v13)
  {
    if (!v14)
    {
      goto LABEL_31;
    }

    v15 = *v1 == *v0 && v13 == v14;
    if (!v15 && (sub_1DD875A30() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v14)
  {
LABEL_31:
    v20 = 0;
    goto LABEL_32;
  }

  v6(0);
  v16 = *(v11 + 48);
  sub_1DD75366C();
  sub_1DD7533B8();
  sub_1DD75366C();
  sub_1DD7533B8();
  sub_1DD6E26E4(v2);
  if (v15)
  {
    sub_1DD6E26E4(v2 + v16);
    if (v15)
    {
      sub_1DD6FC560(v2, &qword_1ECD0E9E0, &unk_1DD87B550);
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  sub_1DD6DED5C();
  sub_1DD7533B8();
  sub_1DD6E26E4(v2 + v16);
  if (v21)
  {
    sub_1DD753360(v4, type metadata accessor for OverridesCommon_StringPredicate);
LABEL_19:
    v22 = &qword_1ECD0E9E8;
    v23 = &qword_1DD87AC30;
LABEL_30:
    sub_1DD6FC560(v2, v22, v23);
    goto LABEL_31;
  }

  sub_1DD753308();
  sub_1DD6F37F4();
  if (!v24 || ((sub_1DD7013AC(), v15) ? (v27 = v25 == v26) : (v27 = 0), !v27 && (sub_1DD875A30() & 1) == 0))
  {
    sub_1DD753360(v3, type metadata accessor for OverridesCommon_StringPredicate);
    sub_1DD7536E4();
    v22 = &qword_1ECD0E9E0;
    v23 = &unk_1DD87B550;
    goto LABEL_30;
  }

  v28 = sub_1DD700B70();
  sub_1DD6E1448();
  v31 = sub_1DD753414(v29, v30, MEMORY[0x1E69AAC10]);
  sub_1DD75362C(v31);
  sub_1DD6E6C70();
  v33 = v32;
  sub_1DD753360(v3, v32);
  sub_1DD753360(v4, v33);
  sub_1DD6FC560(v2, &qword_1ECD0E9E0, &unk_1DD87B550);
  if ((v28 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  sub_1DD874910();
  sub_1DD6E1448();
  v19 = sub_1DD753414(v17, v18, MEMORY[0x1E69AAC10]);
  v20 = sub_1DD75364C(v19);
LABEL_32:
  sub_1DD6E0CCC(v20);
  sub_1DD6DFED0();
}

uint64_t sub_1DD7486B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F170, type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD748734(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0F0D0, type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD7487A4(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1ECD0F0D0, type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD74883C()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0EDB0);
  sub_1DD6E1224(v0, qword_1ECD0EDB0);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD8782F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameter_id";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameter_value";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t sub_1DD748A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate(0);
  type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD753414(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate, &protocol conformance descriptor for OverridesCommon_StringPredicate);
  return sub_1DD874A20();
}

uint64_t sub_1DD748B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for OverridesCommon_StringPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate(0);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v6, 1, v7) == 1)
  {
    return sub_1DD6FC560(v6, &qword_1ECD0E9E0, &unk_1DD87B550);
  }

  sub_1DD753308();
  sub_1DD753414(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate, &protocol conformance descriptor for OverridesCommon_StringPredicate);
  sub_1DD874AD0();
  return sub_1DD753360(v9, type metadata accessor for OverridesCommon_StringPredicate);
}

uint64_t sub_1DD748DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F168, type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD748E6C(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0F0E8, type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD748EDC(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1ECD0F0E8, type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD749010(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_1DD6E1F34();
  v7 = *(v6 + 8);
  v8 = v3[1];
  if (v7)
  {
    if (v8)
    {
      v9 = *v4 == *v3 && v7 == v8;
      if (v9 || (sub_1DD875A30() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v8)
  {
LABEL_8:
    a3(0);
    sub_1DD7536CC();
    sub_1DD6E1448();
    v12 = sub_1DD753414(v10, v11, MEMORY[0x1E69AAC10]);
    return sub_1DD6E2124(v12) & 1;
  }

  return 0;
}

uint64_t sub_1DD749144(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F160, type metadata accessor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD7491C4(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0F100, type metadata accessor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD749234(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1ECD0F100, type metadata accessor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD7495B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F158, type metadata accessor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD749634(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1EE013E60, type metadata accessor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD7496A4(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1EE013E60, type metadata accessor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD74975C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_1DD874B10();
  sub_1DD732C90(v9, a2);
  sub_1DD6E1224(v9, a2);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v10 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DD8782E0;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *a5;
  sub_1DD874AE0();
  sub_1DD6DE1C4();
  (*(v15 + 104))(v13, v14);
  return sub_1DD874AF0();
}

uint64_t sub_1DD749914()
{
  sub_1DD6F9B94();
  while (1)
  {
    sub_1DD6DDEDC();
    result = sub_1DD8749A0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v4 = sub_1DD6DED5C();
      v0(v4);
    }
  }

  return result;
}

uint64_t sub_1DD749A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F150, type metadata accessor for ResponseGenerationOverrides_FailureOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_FailureOutcomePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD749AD4(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0F120, type metadata accessor for ResponseGenerationOverrides_FailureOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_FailureOutcomePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD749B44(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1ECD0F120, type metadata accessor for ResponseGenerationOverrides_FailureOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_FailureOutcomePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD749BDC()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1EE014E38);
  sub_1DD6E1224(v0, qword_1EE014E38);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD87AAA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "positive_conjunction";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "positive_disjunction";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "negative_conjunction";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "negative_disjunction";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return sub_1DD874AF0();
}

void ResponseGenerationOverrides_Rule.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    v1 = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_1DD6E0824();
        sub_1DD73F168();
        break;
      case 2:
        v8 = sub_1DD6E0824();
        sub_1DD749F6C(v12, v8, v9, v10, v11);
        break;
      case 3:
        v3 = sub_1DD6E0824();
        sub_1DD74A00C(v7, v3, v4, v5, v6);
        break;
      case 4:
        sub_1DD6E0824();
        sub_1DD74A0AC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1DD749F6C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ResponseGenerationOverrides_Rule.Predicate(0);
  sub_1DD753414(&qword_1EE014E08, type metadata accessor for ResponseGenerationOverrides_Rule.Predicate, &protocol conformance descriptor for ResponseGenerationOverrides_Rule.Predicate);
  return sub_1DD874A10();
}

uint64_t sub_1DD74A00C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ResponseGenerationOverrides_Rule.Predicate(0);
  sub_1DD753414(&qword_1EE014E08, type metadata accessor for ResponseGenerationOverrides_Rule.Predicate, &protocol conformance descriptor for ResponseGenerationOverrides_Rule.Predicate);
  return sub_1DD874A10();
}

void sub_1DD74A0AC()
{
  sub_1DD6DED2C();
  v0 = sub_1DD6E1F78();
  v1(v0);
  sub_1DD753678();
  sub_1DD6DF0B4();
  sub_1DD874A10();
  sub_1DD6E0C78();
}

void ResponseGenerationOverrides_Rule.traverse<A>(visitor:)()
{
  sub_1DD6FEAFC();
  sub_1DD6DE2D4();
  sub_1DD6E5CA0();
  if (!v2 || (type metadata accessor for ResponseGenerationOverrides_Rule.Predicate(0), sub_1DD6DE50C(), sub_1DD753414(v3, v4, &protocol conformance descriptor for ResponseGenerationOverrides_Rule.Predicate), sub_1DD6FF79C(), sub_1DD6E6540(), sub_1DD874AC0(), !v0))
  {
    if (!*(v1[1] + 16) || (type metadata accessor for ResponseGenerationOverrides_Rule.Predicate(0), sub_1DD6DE50C(), sub_1DD753414(v5, v6, &protocol conformance descriptor for ResponseGenerationOverrides_Rule.Predicate), sub_1DD6FF79C(), sub_1DD6E6540(), sub_1DD874AC0(), !v0))
    {
      if (!*(v1[2] + 16) || (type metadata accessor for ResponseGenerationOverrides_Rule.Predicate(0), sub_1DD6DE50C(), sub_1DD753414(v7, v8, &protocol conformance descriptor for ResponseGenerationOverrides_Rule.Predicate), sub_1DD6FF79C(), sub_1DD6E6540(), sub_1DD874AC0(), !v0))
      {
        if (!*(v1[3] + 16) || (type metadata accessor for ResponseGenerationOverrides_Rule.Predicate(0), sub_1DD6DE50C(), sub_1DD753414(v9, v10, &protocol conformance descriptor for ResponseGenerationOverrides_Rule.Predicate), sub_1DD6FF79C(), sub_1DD6E6540(), sub_1DD874AC0(), !v0))
        {
          type metadata accessor for ResponseGenerationOverrides_Rule(0);
          sub_1DD6DDF78();
        }
      }
    }
  }

  sub_1DD6E7244();
}

uint64_t static ResponseGenerationOverrides_Rule.== infix(_:_:)()
{
  sub_1DD6E1F34();
  sub_1DD713F30();
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  sub_1DD713F30();
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  sub_1DD713F30();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  sub_1DD713F30();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ResponseGenerationOverrides_Rule(0);
  sub_1DD874910();
  sub_1DD6E1448();
  v6 = sub_1DD753414(v4, v5, MEMORY[0x1E69AAC10]);
  return sub_1DD6E2124(v6) & 1;
}

uint64_t sub_1DD74A3F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F148, type metadata accessor for ResponseGenerationOverrides_Rule, &protocol conformance descriptor for ResponseGenerationOverrides_Rule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD74A474(uint64_t a1)
{
  v2 = sub_1DD753414(qword_1EE014D68, type metadata accessor for ResponseGenerationOverrides_Rule, &protocol conformance descriptor for ResponseGenerationOverrides_Rule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD74A4E4(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(qword_1EE014D68, type metadata accessor for ResponseGenerationOverrides_Rule, &protocol conformance descriptor for ResponseGenerationOverrides_Rule);

  return sub_1DD874A70();
}

uint64_t sub_1DD74A564()
{
  result = MEMORY[0x1E12B4C10](0x616369646572502ELL, 0xEA00000000006574);
  qword_1ECD0EDF8 = 0xD000000000000022;
  unk_1ECD0EE00 = 0x80000001DD8B55C0;
  return result;
}

uint64_t sub_1DD74A5F4()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1EE014E18);
  sub_1DD6E1224(v0, qword_1EE014E18);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1DD87B7E0;
  v4 = v34 + v3 + v1[14];
  *(v34 + v3) = 1;
  *v4 = "app_predicate";
  *(v4 + 8) = 13;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1DD874AE0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v34 + v3 + v2 + v1[14];
  *(v34 + v3 + v2) = 2;
  *v8 = "tool_predicate";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v34 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "action_predicate";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v7();
  v11 = (v34 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "action_success_outcome_predicate";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v7();
  v13 = (v34 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "action_confirmation_outcome_predicate";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v7();
  v15 = (v34 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "tool_disambiguation_outcome_predicate";
  *(v16 + 1) = 37;
  v16[16] = 2;
  v7();
  v17 = (v34 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "parameter_needs_value_outcome_predicate";
  *(v18 + 1) = 39;
  v18[16] = 2;
  v7();
  v19 = (v34 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "parameter_confirmation_outcome_predicate";
  *(v20 + 1) = 40;
  v20[16] = 2;
  v7();
  v21 = (v34 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "parameter_disambiguation_outcome_predicate";
  *(v22 + 1) = 42;
  v22[16] = 2;
  v7();
  v23 = (v34 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "parameter_not_allowed_outcome_predicate";
  *(v24 + 1) = 39;
  v24[16] = 2;
  v7();
  v25 = (v34 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "parameter_candidates_not_found_outcome_predicate";
  *(v26 + 1) = 48;
  v26[16] = 2;
  v7();
  v27 = (v34 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "action_requirement_outcome_predicate";
  *(v28 + 1) = 36;
  v28[16] = 2;
  v7();
  v29 = (v34 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "value_disambiguation_outcome_predicate";
  *(v30 + 1) = 38;
  v30[16] = 2;
  v7();
  v31 = (v34 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "failure_outcome_predicate";
  *(v32 + 1) = 25;
  v32[16] = 2;
  v7();
  return sub_1DD874AF0();
}

uint64_t ResponseGenerationOverrides_Rule.Predicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    result = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = sub_1DD6E0A74();
        sub_1DD74ABF8(v3, v4, v5, v6);
        break;
      case 2:
        v35 = sub_1DD6E0A74();
        sub_1DD74B0F0(v35, v36, v37, v38);
        break;
      case 3:
        v23 = sub_1DD6E0A74();
        sub_1DD74B5E8(v23, v24, v25, v26);
        break;
      case 4:
        v27 = sub_1DD6E0A74();
        sub_1DD74BAE0(v27, v28, v29, v30);
        break;
      case 5:
        v11 = sub_1DD6E0A74();
        sub_1DD74BFD8(v11, v12, v13, v14);
        break;
      case 6:
        v39 = sub_1DD6E0A74();
        sub_1DD74C4D0(v39, v40, v41, v42);
        break;
      case 7:
        v47 = sub_1DD6E0A74();
        sub_1DD74C9C8(v47, v48, v49, v50);
        break;
      case 8:
        v31 = sub_1DD6E0A74();
        sub_1DD74CEC0(v31, v32, v33, v34);
        break;
      case 9:
        v55 = sub_1DD6E0A74();
        sub_1DD74D3B8(v55, v56, v57, v58);
        break;
      case 10:
        v19 = sub_1DD6E0A74();
        sub_1DD74D8B0(v19, v20, v21, v22);
        break;
      case 11:
        v51 = sub_1DD6E0A74();
        sub_1DD74DDA8(v51, v52, v53, v54);
        break;
      case 12:
        v7 = sub_1DD6E0A74();
        sub_1DD74E2A0(v7, v8, v9, v10);
        break;
      case 13:
        v15 = sub_1DD6E0A74();
        sub_1DD74E798(v15, v16, v17, v18);
        break;
      case 14:
        v43 = sub_1DD6E0A74();
        sub_1DD74EC90(v43, v44, v45, v46);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1DD74ABF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_AppPredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD710A9C(&qword_1ECD0F218, &qword_1DD87DE90);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1DD6E5E68(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1DD7533B8();
  v28 = sub_1DD6E5ED0(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_1DD6FC560(v10, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1DD753360(v13, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }

    else
    {
      sub_1DD6FC560(v20, &qword_1ECD0F218, &qword_1DD87DE90);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v20, 0, 1, v5);
    }
  }

  sub_1DD753414(&qword_1ECD0F018, type metadata accessor for ResponseGenerationOverrides_AppPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_AppPredicate);
  v21 = v31;
  sub_1DD874A20();
  if (v21)
  {
    v22 = v20;
    return sub_1DD6FC560(v22, &qword_1ECD0F218, &qword_1DD87DE90);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v17, 1, v5) == 1)
  {
    sub_1DD6FC560(v20, &qword_1ECD0F218, &qword_1DD87DE90);
    v22 = v17;
    return sub_1DD6FC560(v22, &qword_1ECD0F218, &qword_1DD87DE90);
  }

  sub_1DD753308();
  if (v28 != 1)
  {
    sub_1DD8749B0();
  }

  v24 = v29;
  sub_1DD6FC560(v20, &qword_1ECD0F218, &qword_1DD87DE90);
  v25 = v27;
  sub_1DD6FC560(v27, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v25, 0, 1, v24);
}

uint64_t sub_1DD74B0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_ToolPredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD710A9C(&qword_1ECD0F220, &qword_1DD87DE98);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1DD6E5E68(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1DD7533B8();
  v28 = sub_1DD6E5ED0(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_1DD6FC560(v10, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD6FC560(v20, &qword_1ECD0F220, &qword_1DD87DE98);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v20, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v13, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1EE014958, type metadata accessor for ResponseGenerationOverrides_ToolPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ToolPredicate);
  v21 = v31;
  sub_1DD874A20();
  if (v21)
  {
    v22 = v20;
    return sub_1DD6FC560(v22, &qword_1ECD0F220, &qword_1DD87DE98);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v17, 1, v5) == 1)
  {
    sub_1DD6FC560(v20, &qword_1ECD0F220, &qword_1DD87DE98);
    v22 = v17;
    return sub_1DD6FC560(v22, &qword_1ECD0F220, &qword_1DD87DE98);
  }

  sub_1DD753308();
  if (v28 != 1)
  {
    sub_1DD8749B0();
  }

  v24 = v29;
  sub_1DD6FC560(v20, &qword_1ECD0F220, &qword_1DD87DE98);
  v25 = v27;
  sub_1DD6FC560(v27, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v25, 0, 1, v24);
}

uint64_t sub_1DD74B5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_ActionPredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD710A9C(&qword_1ECD0F228, &qword_1DD87DEA0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1DD6E5E68(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1DD7533B8();
  v28 = sub_1DD6E5ED0(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_1DD6FC560(v10, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1DD6FC560(v20, &qword_1ECD0F228, &qword_1DD87DEA0);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v20, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v13, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0F038, type metadata accessor for ResponseGenerationOverrides_ActionPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ActionPredicate);
  v21 = v31;
  sub_1DD874A20();
  if (v21)
  {
    v22 = v20;
    return sub_1DD6FC560(v22, &qword_1ECD0F228, &qword_1DD87DEA0);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v17, 1, v5) == 1)
  {
    sub_1DD6FC560(v20, &qword_1ECD0F228, &qword_1DD87DEA0);
    v22 = v17;
    return sub_1DD6FC560(v22, &qword_1ECD0F228, &qword_1DD87DEA0);
  }

  sub_1DD753308();
  if (v28 != 1)
  {
    sub_1DD8749B0();
  }

  v24 = v29;
  sub_1DD6FC560(v20, &qword_1ECD0F228, &qword_1DD87DEA0);
  v25 = v27;
  sub_1DD6FC560(v27, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v25, 0, 1, v24);
}

uint64_t sub_1DD74BAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD710A9C(&qword_1ECD0F230, &qword_1DD87DEA8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1DD6E5E68(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1DD7533B8();
  v28 = sub_1DD6E5ED0(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_1DD6FC560(v10, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1DD6FC560(v20, &qword_1ECD0F230, &qword_1DD87DEA8);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v20, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v13, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1EE014200, type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate);
  v21 = v31;
  sub_1DD874A20();
  if (v21)
  {
    v22 = v20;
    return sub_1DD6FC560(v22, &qword_1ECD0F230, &qword_1DD87DEA8);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v17, 1, v5) == 1)
  {
    sub_1DD6FC560(v20, &qword_1ECD0F230, &qword_1DD87DEA8);
    v22 = v17;
    return sub_1DD6FC560(v22, &qword_1ECD0F230, &qword_1DD87DEA8);
  }

  sub_1DD753308();
  if (v28 != 1)
  {
    sub_1DD8749B0();
  }

  v24 = v29;
  sub_1DD6FC560(v20, &qword_1ECD0F230, &qword_1DD87DEA8);
  v25 = v27;
  sub_1DD6FC560(v27, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v25, 0, 1, v24);
}

uint64_t sub_1DD74BFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD710A9C(&qword_1ECD0F238, &qword_1DD87DEB0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1DD6E5E68(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1DD7533B8();
  v28 = sub_1DD6E5ED0(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_1DD6FC560(v10, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1DD6FC560(v20, &qword_1ECD0F238, &qword_1DD87DEB0);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v20, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v13, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0F058, type metadata accessor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate);
  v21 = v31;
  sub_1DD874A20();
  if (v21)
  {
    v22 = v20;
    return sub_1DD6FC560(v22, &qword_1ECD0F238, &qword_1DD87DEB0);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v17, 1, v5) == 1)
  {
    sub_1DD6FC560(v20, &qword_1ECD0F238, &qword_1DD87DEB0);
    v22 = v17;
    return sub_1DD6FC560(v22, &qword_1ECD0F238, &qword_1DD87DEB0);
  }

  sub_1DD753308();
  if (v28 != 1)
  {
    sub_1DD8749B0();
  }

  v24 = v29;
  sub_1DD6FC560(v20, &qword_1ECD0F238, &qword_1DD87DEB0);
  v25 = v27;
  sub_1DD6FC560(v27, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v25, 0, 1, v24);
}

uint64_t sub_1DD74C4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD710A9C(&qword_1ECD0F240, &qword_1DD87DEB8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1DD6E5E68(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1DD7533B8();
  v28 = sub_1DD6E5ED0(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_1DD6FC560(v10, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1DD6FC560(v20, &qword_1ECD0F240, &qword_1DD87DEB8);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v20, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v13, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0F070, type metadata accessor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate);
  v21 = v31;
  sub_1DD874A20();
  if (v21)
  {
    v22 = v20;
    return sub_1DD6FC560(v22, &qword_1ECD0F240, &qword_1DD87DEB8);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v17, 1, v5) == 1)
  {
    sub_1DD6FC560(v20, &qword_1ECD0F240, &qword_1DD87DEB8);
    v22 = v17;
    return sub_1DD6FC560(v22, &qword_1ECD0F240, &qword_1DD87DEB8);
  }

  sub_1DD753308();
  if (v28 != 1)
  {
    sub_1DD8749B0();
  }

  v24 = v29;
  sub_1DD6FC560(v20, &qword_1ECD0F240, &qword_1DD87DEB8);
  v25 = v27;
  sub_1DD6FC560(v27, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v25, 0, 1, v24);
}

uint64_t sub_1DD74C9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD710A9C(&qword_1ECD0F248, &qword_1DD87DEC0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1DD6E5E68(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1DD7533B8();
  v28 = sub_1DD6E5ED0(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_1DD6FC560(v10, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1DD6FC560(v20, &qword_1ECD0F248, &qword_1DD87DEC0);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v20, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v13, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0F088, type metadata accessor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate);
  v21 = v31;
  sub_1DD874A20();
  if (v21)
  {
    v22 = v20;
    return sub_1DD6FC560(v22, &qword_1ECD0F248, &qword_1DD87DEC0);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v17, 1, v5) == 1)
  {
    sub_1DD6FC560(v20, &qword_1ECD0F248, &qword_1DD87DEC0);
    v22 = v17;
    return sub_1DD6FC560(v22, &qword_1ECD0F248, &qword_1DD87DEC0);
  }

  sub_1DD753308();
  if (v28 != 1)
  {
    sub_1DD8749B0();
  }

  v24 = v29;
  sub_1DD6FC560(v20, &qword_1ECD0F248, &qword_1DD87DEC0);
  v25 = v27;
  sub_1DD6FC560(v27, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v25, 0, 1, v24);
}

uint64_t sub_1DD74CEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD710A9C(&qword_1ECD0F250, &qword_1DD87DEC8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1DD6E5E68(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1DD7533B8();
  v28 = sub_1DD6E5ED0(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_1DD6FC560(v10, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1DD6FC560(v20, &qword_1ECD0F250, &qword_1DD87DEC8);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v20, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v13, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0F0A0, type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate);
  v21 = v31;
  sub_1DD874A20();
  if (v21)
  {
    v22 = v20;
    return sub_1DD6FC560(v22, &qword_1ECD0F250, &qword_1DD87DEC8);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v17, 1, v5) == 1)
  {
    sub_1DD6FC560(v20, &qword_1ECD0F250, &qword_1DD87DEC8);
    v22 = v17;
    return sub_1DD6FC560(v22, &qword_1ECD0F250, &qword_1DD87DEC8);
  }

  sub_1DD753308();
  if (v28 != 1)
  {
    sub_1DD8749B0();
  }

  v24 = v29;
  sub_1DD6FC560(v20, &qword_1ECD0F250, &qword_1DD87DEC8);
  v25 = v27;
  sub_1DD6FC560(v27, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v25, 0, 1, v24);
}

uint64_t sub_1DD74D3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD710A9C(&qword_1ECD0F258, &qword_1DD87DED0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1DD6E5E68(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1DD7533B8();
  v28 = sub_1DD6E5ED0(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_1DD6FC560(v10, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1DD6FC560(v20, &qword_1ECD0F258, &qword_1DD87DED0);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v20, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v13, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0F0B8, type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate);
  v21 = v31;
  sub_1DD874A20();
  if (v21)
  {
    v22 = v20;
    return sub_1DD6FC560(v22, &qword_1ECD0F258, &qword_1DD87DED0);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v17, 1, v5) == 1)
  {
    sub_1DD6FC560(v20, &qword_1ECD0F258, &qword_1DD87DED0);
    v22 = v17;
    return sub_1DD6FC560(v22, &qword_1ECD0F258, &qword_1DD87DED0);
  }

  sub_1DD753308();
  if (v28 != 1)
  {
    sub_1DD8749B0();
  }

  v24 = v29;
  sub_1DD6FC560(v20, &qword_1ECD0F258, &qword_1DD87DED0);
  v25 = v27;
  sub_1DD6FC560(v27, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v25, 0, 1, v24);
}

uint64_t sub_1DD74D8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD710A9C(&qword_1ECD0F260, &qword_1DD87DED8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1DD6E5E68(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1DD7533B8();
  v28 = sub_1DD6E5ED0(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_1DD6FC560(v10, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1DD6FC560(v20, &qword_1ECD0F260, &qword_1DD87DED8);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v20, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v13, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0F0D0, type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate);
  v21 = v31;
  sub_1DD874A20();
  if (v21)
  {
    v22 = v20;
    return sub_1DD6FC560(v22, &qword_1ECD0F260, &qword_1DD87DED8);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v17, 1, v5) == 1)
  {
    sub_1DD6FC560(v20, &qword_1ECD0F260, &qword_1DD87DED8);
    v22 = v17;
    return sub_1DD6FC560(v22, &qword_1ECD0F260, &qword_1DD87DED8);
  }

  sub_1DD753308();
  if (v28 != 1)
  {
    sub_1DD8749B0();
  }

  v24 = v29;
  sub_1DD6FC560(v20, &qword_1ECD0F260, &qword_1DD87DED8);
  v25 = v27;
  sub_1DD6FC560(v27, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v25, 0, 1, v24);
}

uint64_t sub_1DD74DDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  found = type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate(0);
  MEMORY[0x1EEE9AC00](found);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD710A9C(&qword_1ECD0F268, &qword_1DD87DEE0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1DD6E5E68(&v26 - v19, 1, 1, found);
  v27 = a1;
  sub_1DD7533B8();
  v28 = sub_1DD6E5ED0(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_1DD6FC560(v10, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1DD6FC560(v20, &qword_1ECD0F268, &qword_1DD87DEE0);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v20, 0, 1, found);
    }

    else
    {
      sub_1DD753360(v13, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0F0E8, type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate);
  v21 = v31;
  sub_1DD874A20();
  if (v21)
  {
    v22 = v20;
    return sub_1DD6FC560(v22, &qword_1ECD0F268, &qword_1DD87DEE0);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v17, 1, found) == 1)
  {
    sub_1DD6FC560(v20, &qword_1ECD0F268, &qword_1DD87DEE0);
    v22 = v17;
    return sub_1DD6FC560(v22, &qword_1ECD0F268, &qword_1DD87DEE0);
  }

  sub_1DD753308();
  if (v28 != 1)
  {
    sub_1DD8749B0();
  }

  v24 = v29;
  sub_1DD6FC560(v20, &qword_1ECD0F268, &qword_1DD87DEE0);
  v25 = v27;
  sub_1DD6FC560(v27, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v25, 0, 1, v24);
}

uint64_t sub_1DD74E2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD710A9C(&qword_1ECD0F270, &qword_1DD87DEE8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1DD6E5E68(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1DD7533B8();
  v28 = sub_1DD6E5ED0(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_1DD6FC560(v10, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1DD6FC560(v20, &qword_1ECD0F270, &qword_1DD87DEE8);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v20, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v13, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0F100, type metadata accessor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate);
  v21 = v31;
  sub_1DD874A20();
  if (v21)
  {
    v22 = v20;
    return sub_1DD6FC560(v22, &qword_1ECD0F270, &qword_1DD87DEE8);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v17, 1, v5) == 1)
  {
    sub_1DD6FC560(v20, &qword_1ECD0F270, &qword_1DD87DEE8);
    v22 = v17;
    return sub_1DD6FC560(v22, &qword_1ECD0F270, &qword_1DD87DEE8);
  }

  sub_1DD753308();
  if (v28 != 1)
  {
    sub_1DD8749B0();
  }

  v24 = v29;
  sub_1DD6FC560(v20, &qword_1ECD0F270, &qword_1DD87DEE8);
  v25 = v27;
  sub_1DD6FC560(v27, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v25, 0, 1, v24);
}

uint64_t sub_1DD74E798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD710A9C(&qword_1ECD0F278, &qword_1DD87DEF0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1DD6E5E68(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1DD7533B8();
  v28 = sub_1DD6E5ED0(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_1DD6FC560(v10, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1DD6FC560(v20, &qword_1ECD0F278, &qword_1DD87DEF0);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v20, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v13, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1EE013E60, type metadata accessor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate);
  v21 = v31;
  sub_1DD874A20();
  if (v21)
  {
    v22 = v20;
    return sub_1DD6FC560(v22, &qword_1ECD0F278, &qword_1DD87DEF0);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v17, 1, v5) == 1)
  {
    sub_1DD6FC560(v20, &qword_1ECD0F278, &qword_1DD87DEF0);
    v22 = v17;
    return sub_1DD6FC560(v22, &qword_1ECD0F278, &qword_1DD87DEF0);
  }

  sub_1DD753308();
  if (v28 != 1)
  {
    sub_1DD8749B0();
  }

  v24 = v29;
  sub_1DD6FC560(v20, &qword_1ECD0F278, &qword_1DD87DEF0);
  v25 = v27;
  sub_1DD6FC560(v27, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v25, 0, 1, v24);
}

uint64_t sub_1DD74EC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_FailureOutcomePredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD710A9C(&qword_1ECD0F280, &qword_1DD87DEF8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1DD6E5E68(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1DD7533B8();
  v28 = sub_1DD6E5ED0(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_1DD6FC560(v10, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1DD6FC560(v20, &qword_1ECD0F280, &qword_1DD87DEF8);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v20, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v13, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0F120, type metadata accessor for ResponseGenerationOverrides_FailureOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_FailureOutcomePredicate);
  v21 = v31;
  sub_1DD874A20();
  if (v21)
  {
    v22 = v20;
    return sub_1DD6FC560(v22, &qword_1ECD0F280, &qword_1DD87DEF8);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v17, 1, v5) == 1)
  {
    sub_1DD6FC560(v20, &qword_1ECD0F280, &qword_1DD87DEF8);
    v22 = v17;
    return sub_1DD6FC560(v22, &qword_1ECD0F280, &qword_1DD87DEF8);
  }

  sub_1DD753308();
  if (v28 != 1)
  {
    sub_1DD8749B0();
  }

  v24 = v29;
  sub_1DD6FC560(v20, &qword_1ECD0F280, &qword_1DD87DEF8);
  v25 = v27;
  sub_1DD6FC560(v27, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v25, 0, 1, v24);
}

uint64_t ResponseGenerationOverrides_Rule.Predicate.traverse<A>(visitor:)()
{
  sub_1DD6FAAA0();
  v2 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD6DEA10(v2);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6E3824(v4, v5, v6, v7, v8, v9, v10, v11, v75);
  v12 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  sub_1DD6E4068(v12);
  if (!v13)
  {
    sub_1DD6ED130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v48 = sub_1DD6DF35C();
        sub_1DD74F548(v48, v49, v50, v51);
        goto LABEL_17;
      case 2:
        v36 = sub_1DD6DF35C();
        sub_1DD74F750(v36, v37, v38, v39);
        goto LABEL_17;
      case 3:
        v40 = sub_1DD6DF35C();
        sub_1DD74F958(v40, v41, v42, v43);
        goto LABEL_17;
      case 4:
        v24 = sub_1DD6DF35C();
        sub_1DD74FB60(v24, v25, v26, v27);
        goto LABEL_17;
      case 5:
        v52 = sub_1DD6DF35C();
        sub_1DD74FD68(v52, v53, v54, v55);
        goto LABEL_17;
      case 6:
        v60 = sub_1DD6DF35C();
        sub_1DD74FF70(v60, v61, v62, v63);
        goto LABEL_17;
      case 7:
        v44 = sub_1DD6DF35C();
        sub_1DD750178(v44, v45, v46, v47);
        goto LABEL_17;
      case 8:
        v69 = sub_1DD6DF35C();
        sub_1DD750380(v69, v70, v71, v72);
        goto LABEL_21;
      case 9:
        v32 = sub_1DD6DF35C();
        sub_1DD750588(v32, v33, v34, v35);
        goto LABEL_21;
      case 10:
        v65 = sub_1DD6DF35C();
        sub_1DD750790(v65, v66, v67, v68);
        goto LABEL_21;
      case 11:
        v20 = sub_1DD6DF35C();
        sub_1DD750998(v20, v21, v22, v23);
        goto LABEL_21;
      case 12:
        v28 = sub_1DD6DF35C();
        sub_1DD750BA0(v28, v29, v30, v31);
        goto LABEL_21;
      case 13:
        v56 = sub_1DD6DF35C();
        sub_1DD750DA8(v56, v57, v58, v59);
LABEL_21:
        if (v0)
        {
          sub_1DD6E5F80();
          return sub_1DD753360(v1, v73);
        }

        sub_1DD6E5F80();
        sub_1DD753360(v1, v74);
        break;
      default:
        v16 = sub_1DD6DF35C();
        sub_1DD74F344(v16, v17, v18, v19);
LABEL_17:
        sub_1DD6E5F80();
        result = sub_1DD753360(v1, v64);
        if (!v0)
        {
          break;
        }

        return result;
    }
  }

  type metadata accessor for ResponseGenerationOverrides_Rule.Predicate(0);
  return sub_1DD6FBDBC();
}

uint64_t sub_1DD74F344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ResponseGenerationOverrides_AppPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v10 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v6, 1, v10) == 1)
  {
    result = sub_1DD6FC560(v6, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0F018, type metadata accessor for ResponseGenerationOverrides_AppPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_AppPredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v9, type metadata accessor for ResponseGenerationOverrides_AppPredicate);
    }

    result = sub_1DD753360(v6, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD74F548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ResponseGenerationOverrides_ToolPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v10 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v6, 1, v10) == 1)
  {
    result = sub_1DD6FC560(v6, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1EE014958, type metadata accessor for ResponseGenerationOverrides_ToolPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ToolPredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v9, type metadata accessor for ResponseGenerationOverrides_ToolPredicate);
    }

    result = sub_1DD753360(v6, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD74F750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ResponseGenerationOverrides_ActionPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v10 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v6, 1, v10) == 1)
  {
    result = sub_1DD6FC560(v6, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0F038, type metadata accessor for ResponseGenerationOverrides_ActionPredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ActionPredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v9, type metadata accessor for ResponseGenerationOverrides_ActionPredicate);
    }

    result = sub_1DD753360(v6, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD74F958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v10 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v6, 1, v10) == 1)
  {
    result = sub_1DD6FC560(v6, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1EE014200, type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v9, type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate);
    }

    result = sub_1DD753360(v6, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD74FB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v10 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v6, 1, v10) == 1)
  {
    result = sub_1DD6FC560(v6, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0F058, type metadata accessor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v9, type metadata accessor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate);
    }

    result = sub_1DD753360(v6, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD74FD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v10 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v6, 1, v10) == 1)
  {
    result = sub_1DD6FC560(v6, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0F070, type metadata accessor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v9, type metadata accessor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate);
    }

    result = sub_1DD753360(v6, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD74FF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v10 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v6, 1, v10) == 1)
  {
    result = sub_1DD6FC560(v6, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0F088, type metadata accessor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v9, type metadata accessor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate);
    }

    result = sub_1DD753360(v6, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD750178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v10 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v6, 1, v10) == 1)
  {
    result = sub_1DD6FC560(v6, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0F0A0, type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v9, type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate);
    }

    result = sub_1DD753360(v6, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD750380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v10 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v6, 1, v10) == 1)
  {
    result = sub_1DD6FC560(v6, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0F0B8, type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v9, type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate);
    }

    result = sub_1DD753360(v6, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD750588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v10 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v6, 1, v10) == 1)
  {
    result = sub_1DD6FC560(v6, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0F0D0, type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v9, type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate);
    }

    result = sub_1DD753360(v6, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD750790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  found = type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate(0);
  MEMORY[0x1EEE9AC00](found);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v10 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v6, 1, v10) == 1)
  {
    result = sub_1DD6FC560(v6, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0F0E8, type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v9, type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate);
    }

    result = sub_1DD753360(v6, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD750998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v10 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v6, 1, v10) == 1)
  {
    result = sub_1DD6FC560(v6, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0F100, type metadata accessor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v9, type metadata accessor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate);
    }

    result = sub_1DD753360(v6, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD750BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v10 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v6, 1, v10) == 1)
  {
    result = sub_1DD6FC560(v6, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1EE013E60, type metadata accessor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v9, type metadata accessor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate);
    }

    result = sub_1DD753360(v6, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD750DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ResponseGenerationOverrides_FailureOutcomePredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v10 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v6, 1, v10) == 1)
  {
    result = sub_1DD6FC560(v6, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0F120, type metadata accessor for ResponseGenerationOverrides_FailureOutcomePredicate, &protocol conformance descriptor for ResponseGenerationOverrides_FailureOutcomePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v9, type metadata accessor for ResponseGenerationOverrides_FailureOutcomePredicate);
    }

    result = sub_1DD753360(v6, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD751234(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F140, type metadata accessor for ResponseGenerationOverrides_Rule.Predicate, &protocol conformance descriptor for ResponseGenerationOverrides_Rule.Predicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD7512B4(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1EE014E08, type metadata accessor for ResponseGenerationOverrides_Rule.Predicate, &protocol conformance descriptor for ResponseGenerationOverrides_Rule.Predicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD751324(uint64_t a1, uint64_t a2)
{
  sub_1DD753414(&qword_1EE014E08, type metadata accessor for ResponseGenerationOverrides_Rule.Predicate, &protocol conformance descriptor for ResponseGenerationOverrides_Rule.Predicate);

  return sub_1DD874A70();
}

unint64_t sub_1DD7513A4()
{
  result = qword_1EE014B18;
  if (!qword_1EE014B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE014B18);
  }

  return result;
}

unint64_t sub_1DD75175C()
{
  result = qword_1EE014B10;
  if (!qword_1EE014B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE014B10);
  }

  return result;
}

unint64_t sub_1DD7517B4()
{
  result = qword_1EE014AF8;
  if (!qword_1EE014AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE014AF8);
  }

  return result;
}

uint64_t sub_1DD753308()
{
  v2 = sub_1DD6E0CA8();
  v3(v2);
  sub_1DD6DE1C4();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1DD753360(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1DD6DE1C4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD7533B8()
{
  sub_1DD6E1F34();
  sub_1DD710A9C(v2, v3);
  sub_1DD6DE1C4();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1DD753414(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD75362C(uint64_t a1)
{

  return sub_1DD8750F0();
}

uint64_t sub_1DD75364C(uint64_t a1)
{

  return sub_1DD8750F0();
}

uint64_t sub_1DD753678()
{

  return sub_1DD753414(v2, v1, v0);
}

uint64_t sub_1DD753698()
{

  return sub_1DD8749A0();
}

uint64_t sub_1DD7536B0()
{

  return sub_1DD753360(v1, v0);
}

uint64_t sub_1DD7536CC()
{

  return sub_1DD874910();
}

uint64_t sub_1DD7536E4()
{

  return sub_1DD753360(v1, v0);
}

uint64_t sub_1DD753744()
{

  return sub_1DD7533B8();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverrides.init()()
{
  v1 = sub_1DD6E0A5C();
  type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverrides(v1);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v0 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverrides.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverrides(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.init()()
{
  v1 = sub_1DD6E0A5C();
  v2 = type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v1);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  v3 = v2[8];
  v4 = type metadata accessor for OverridesCommon_ContextPredicate(0);
  sub_1DD6E3850(v0 + v3, v5, v6, v4);
  v7 = v2[9];
  v8 = type metadata accessor for OverridesCommon_OverrideDialog(0);
  sub_1DD6E3850(v0 + v7, v9, v10, v8);
  v11 = (v0 + v2[10]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v0 + v2[11]);
  *v12 = 0;
  v12[1] = 0;
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;
  *(v0 + 16) = 0;
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.unknownFields.getter()
{
  v0 = sub_1DD6E0A5C();
  type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v0);
  sub_1DD874910();
  sub_1DD6DE1C4();
  v1 = sub_1DD6E0838();

  return v2(v1);
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.unknownFields.setter()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v0);
  sub_1DD874910();
  sub_1DD6DE1C4();
  v1 = sub_1DD6E26D8();

  return v2(v1);
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_IntPredicate.init()()
{
  v1 = sub_1DD6E0A5C();
  type metadata accessor for ResponseGenerationOverrides_IntPredicate(v1);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v0 = 0;
  *(v0 + 4) = 0;
  return result;
}

uint64_t ResponseGenerationOverrides_IntPredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_IntPredicate(v0);
  return sub_1DD6DDF9C();
}

IntelligenceFlow::ResponseGenerationOverrides_IntPredicate::Operator_optional __swiftcall ResponseGenerationOverrides_IntPredicate.Operator.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ResponseGenerationOverrides_ListPredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_ListPredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD753BB0()
{
  v1 = sub_1DD6FC430();
  v3 = *(v2(v1) + 24);
  v4 = type metadata accessor for ResponseGenerationOverrides_IntPredicate(0);
  sub_1DD6E3850(v0 + v3, v5, v6, v4);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v0 = MEMORY[0x1E69E7CC0];
  *(v0 + 8) = 0;
  return result;
}

uint64_t sub_1DD753C50()
{
  v0 = sub_1DD6FC430();
  v1(v0);
  sub_1DD874910();
  sub_1DD6DE1C4();
  v2 = sub_1DD6E0838();

  return v3(v2);
}

uint64_t sub_1DD753CD4()
{
  v0 = sub_1DD6DE290();
  v1(v0);
  sub_1DD874910();
  sub_1DD6DE1C4();
  v2 = sub_1DD6E26D8();

  return v3(v2);
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD753E08()
{
  v0 = sub_1DD6FC430();
  v1(v0);
  sub_1DD874910();
  sub_1DD6DE1C4();
  v2 = sub_1DD6E0838();

  return v3(v2);
}

uint64_t sub_1DD753E8C()
{
  v0 = sub_1DD6DE290();
  v1(v0);
  sub_1DD874910();
  sub_1DD6DE1C4();
  v2 = sub_1DD6E26D8();

  return v3(v2);
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate.init()()
{
  v1 = sub_1DD6E0A5C();
  type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate(v1);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  return result;
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD75405C()
{
  v1 = sub_1DD6E1118();
  v2(v1);
  v3 = sub_1DD6FF79C();
  v7 = sub_1DD6DEA4C(v3, v4, v5, v6);
  v0(v7);
  return _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7541E8()
{
  v0 = sub_1DD6FC430();
  v1(v0);
  sub_1DD874910();
  sub_1DD6DE1C4();
  v2 = sub_1DD6E0838();

  return v3(v2);
}

uint64_t sub_1DD75426C()
{
  v0 = sub_1DD6DE290();
  v1(v0);
  sub_1DD874910();
  sub_1DD6DE1C4();
  v2 = sub_1DD6E26D8();

  return v3(v2);
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_AppPredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_AppPredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_ToolPredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_ToolPredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_ActionPredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_ActionPredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD754590@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  a1(0);
  v7 = sub_1DD6F3804();
  v11 = sub_1DD6DEA4C(v7, v8, v9, v10);
  v12 = *(a2(v11) + 20);
  v13 = a3(0);
  sub_1DD6E3850(a4 + v12, v14, v15, v13);
  return _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
}

uint64_t ResponseGenerationOverrides_ActionSuccessOutcomePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t _s16IntelligenceFlow45ResponseGenerationOverrides_KeyValuePredicateV0fH0V03AnygH0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0()
{
  sub_1DD6E0A5C();
  sub_1DD874910();
  sub_1DD6DE1C4();
  v0 = sub_1DD6DDEFC();

  return v1(v0);
}

uint64_t _s16IntelligenceFlow45ResponseGenerationOverrides_KeyValuePredicateV0fH0V03AnygH0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0()
{
  sub_1DD6DE290();
  sub_1DD874910();
  sub_1DD6DE1C4();
  v1 = sub_1DD6E492C();

  return v2(v1, v0);
}

uint64_t ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7549B8()
{
  v2 = sub_1DD6E1118();
  v4 = v3(v2);
  *v1 = 0;
  v1[1] = 0;
  v5 = *(v4 + 20);
  v6 = v0(0);
  sub_1DD6E3850(v1 + v5, v7, v8, v6);
  return _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
}

uint64_t ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD754C38()
{
  v1 = sub_1DD6FC430();
  v2(v1);
  *v0 = 0;
  v0[1] = 0;
  return _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
}

uint64_t ResponseGenerationOverrides_ActionRequirementOutcomePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_FailureOutcomePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_FailureOutcomePredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_Rule.init()()
{
  v1 = sub_1DD6E0A5C();
  type metadata accessor for ResponseGenerationOverrides_Rule(v1);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  v3 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v3;
  v0[2] = v3;
  v0[3] = v3;
  return result;
}

uint64_t ResponseGenerationOverrides_Rule.unknownFields.getter()
{
  v0 = sub_1DD6E0A5C();
  type metadata accessor for ResponseGenerationOverrides_Rule(v0);
  sub_1DD874910();
  sub_1DD6DE1C4();
  v1 = sub_1DD6E0838();

  return v2(v1);
}

uint64_t ResponseGenerationOverrides_Rule.unknownFields.setter()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_Rule(v0);
  sub_1DD874910();
  sub_1DD6DE1C4();
  v1 = sub_1DD6E26D8();

  return v2(v1);
}

uint64_t ResponseGenerationOverrides_Rule.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_Rule(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_Rule.Predicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_Rule.Predicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverrides.overrides.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverrides.init(overrides:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverrides(0);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *a2 = a1;
  return result;
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.id.setter()
{
  sub_1DD6DE304();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.rules.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.name.setter()
{
  sub_1DD6DE304();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.context.getter()
{
  v0 = sub_1DD6E0A5C();
  type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v0);
  return sub_1DD719110();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.context.setter()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v0);
  return sub_1DD73BB98();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.context.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.overrideDialog.getter()
{
  v0 = sub_1DD6E0A5C();
  type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v0);
  return sub_1DD719110();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.overrideDialog.setter()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v0);
  return sub_1DD73BB98();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.overrideDialog.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.radarID.getter()
{
  type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0);

  return sub_1DD6DDEFC();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.radarID.setter()
{
  sub_1DD6DE304();
  v3 = (v1 + *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0) + 40));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.radarID.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.testID.getter()
{
  type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0);

  return sub_1DD6DDEFC();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.testID.setter()
{
  sub_1DD6DE304();
  v3 = (v1 + *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0) + 44));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.testID.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.init(id:name:disabled:context:rules:overrideDialog:radarID:testID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0);
  v17 = v16[8];
  v18 = type metadata accessor for OverridesCommon_ContextPredicate(0);
  sub_1DD6E3850(a7 + v17, v19, v20, v18);
  v21 = v16[9];
  v22 = type metadata accessor for OverridesCommon_OverrideDialog(0);
  sub_1DD6E3850(a7 + v21, v23, v24, v22);
  v25 = (a7 + v16[10]);
  v26 = (a7 + v16[11]);
  _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 32) = a3;
  *(a7 + 40) = a4;
  *(a7 + 16) = a5;
  sub_1DD73BB98();
  *(a7 + 24) = a6;
  result = sub_1DD73BB98();
  *v25 = a8;
  v25[1] = a9;
  *v26 = a10;
  v26[1] = a11;
  return result;
}

uint64_t sub_1DD755784@<X0>(uint64_t *a1@<X8>)
{
  result = ResponseGenerationOverrides_IntPredicate.Operator.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DD7557B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD7513A4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t ResponseGenerationOverrides_IntPredicate.init(operator:value:)@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for ResponseGenerationOverrides_IntPredicate(0);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *a3 = v5;
  *(a3 + 4) = a2;
  return result;
}

uint64_t ResponseGenerationOverrides_ListPredicate.size.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_ListPredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD755984()
{
  v0 = sub_1DD6FC430();
  v1(v0);
  return sub_1DD719110();
}

uint64_t sub_1DD7559E4()
{
  v0 = sub_1DD6DE290();
  v1(v0);
  return sub_1DD73BB98();
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.size.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate(v0);
  return sub_1DD6DDF9C();
}

void static ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum.== infix(_:_:)()
{
  sub_1DD6DEB38();
  type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DE4A8();
  v5 = (v4 - v3);
  v6 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate(0);
  v7 = sub_1DD6DEA10(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE4A8();
  type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DF0CC();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1DD710A9C(&qword_1ECD0F2A0, &unk_1DD87DF40);
  v11 = sub_1DD6DEA10(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E17C8();
  sub_1DD7562FC();
  sub_1DD7562FC();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1DD6ED260();
    sub_1DD7562FC();
    if (sub_1DD6E4090() != 1)
    {
      sub_1DD6ED478();
      sub_1DD755EC4();
      sub_1DD874910();
      v14 = sub_1DD73C490();
      sub_1DD7598D0(v14);
      sub_1DD755E70();
      sub_1DD755E70();
      sub_1DD6E2158();
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  sub_1DD6ED260();
  sub_1DD7562FC();
  if (sub_1DD6E4090() != 1)
  {
LABEL_10:
    sub_1DD755E70();
    sub_1DD6FC560(v0, &qword_1ECD0F2A0, &unk_1DD87DF40);
    goto LABEL_13;
  }

  sub_1DD6ED478();
  sub_1DD755EC4();
  v12 = *v1 == *v5 && v1[1] == v5[1];
  if (v12 || (sub_1DD875A30() & 1) != 0)
  {
    sub_1DD874910();
    v13 = sub_1DD73C490();
    sub_1DD6FA6B0(v13);
  }

  sub_1DD6FBDE0();
  sub_1DD755E70();
  sub_1DD6E8794();
  sub_1DD6E2158();
LABEL_13:
  sub_1DD6DFED0();
}

uint64_t sub_1DD755E70()
{
  v1 = sub_1DD6DE290();
  v2(v1);
  sub_1DD6DE1C4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1DD755EC4()
{
  sub_1DD6E1F34();
  v1(0);
  sub_1DD6DE1C4();
  v2 = sub_1DD6DDEFC();
  v3(v2);
  return v0;
}

void static ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum.== infix(_:_:)()
{
  sub_1DD6DEB38();
  type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DE4A8();
  v5 = (v4 - v3);
  v6 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate(0);
  v7 = sub_1DD6DEA10(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE4A8();
  type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DF0CC();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1DD710A9C(&qword_1ECD0F2A8, &unk_1DD87DF50);
  v11 = sub_1DD6DEA10(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E17C8();
  sub_1DD7562FC();
  sub_1DD7562FC();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1DD6ED260();
    sub_1DD7562FC();
    if (sub_1DD6E4090() != 1)
    {
      sub_1DD6ED478();
      sub_1DD755EC4();
      sub_1DD874910();
      v14 = sub_1DD73C490();
      sub_1DD7598D0(v14);
      sub_1DD755E70();
      sub_1DD755E70();
      sub_1DD6E0868();
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  sub_1DD6ED260();
  sub_1DD7562FC();
  if (sub_1DD6E4090() != 1)
  {
LABEL_11:
    sub_1DD755E70();
    sub_1DD6FC560(v0, &qword_1ECD0F2A8, &unk_1DD87DF50);
    goto LABEL_14;
  }

  sub_1DD6ED478();
  sub_1DD755EC4();
  if (*v1 == *v5)
  {
    v12 = *(v1 + 1) == *(v5 + 1) && *(v1 + 2) == *(v5 + 2);
    if (v12 || (sub_1DD875A30() & 1) != 0)
    {
      sub_1DD874910();
      v13 = sub_1DD73C490();
      sub_1DD6FA6B0(v13);
    }
  }

  sub_1DD6EE21C();
  sub_1DD755E70();
  sub_1DD6E8794();
  sub_1DD6E0868();
LABEL_14:
  sub_1DD6DFED0();
}

uint64_t sub_1DD7562FC()
{
  sub_1DD6E1F34();
  v1(0);
  sub_1DD6DE1C4();
  v2 = sub_1DD6DDEFC();
  v3(v2);
  return v0;
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate.valuePredicate.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate.init(keyPredicate:valuePredicate:)()
{
  v1 = sub_1DD6DFF04();
  type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate(v1);
  v2 = sub_1DD6F3804();
  v6 = sub_1DD6DEA4C(v2, v3, v4, v5);
  v7 = *(type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate(v6) + 20);
  v8 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate(0);
  sub_1DD6E3850(v0 + v7, v9, v10, v8);
  _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  sub_1DD73BB98();
  return sub_1DD73BB98();
}

uint64_t sub_1DD756518@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a3(0) + 24);
  v8 = type metadata accessor for ResponseGenerationOverrides_IntPredicate(0);
  sub_1DD6E3850(a4 + v7, v9, v10, v8);
  _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *a4 = a1;
  result = sub_1DD73BB98();
  *(a4 + 8) = a2;
  return result;
}

uint64_t sub_1DD7566BC@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  v8 = sub_1DD6DEA4C(a3, v6, v7, v5);
  a2(v8);
  _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  return sub_1DD73BB98();
}

uint64_t ResponseGenerationOverrides_ActionSuccessOutcomePredicate.returnedCollectionSize.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_ActionSuccessOutcomePredicate.init(manifestValues:returnedCollectionSize:)()
{
  v1 = sub_1DD6DFF04();
  type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate(v1);
  v2 = sub_1DD6F3804();
  v6 = sub_1DD6DEA4C(v2, v3, v4, v5);
  v7 = *(type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate(v6) + 20);
  v8 = type metadata accessor for ResponseGenerationOverrides_IntPredicate(0);
  sub_1DD6E3850(v0 + v7, v9, v10, v8);
  _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  sub_1DD73BB98();
  return sub_1DD73BB98();
}

uint64_t sub_1DD756AD8()
{
  v3 = sub_1DD6DFF04();
  v4(v3);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v2 = v1;
  v2[1] = v0;
  return result;
}

uint64_t ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate.parameterValue.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate.parameterValues.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate(v0);
  return sub_1DD6DDF9C();
}

void sub_1DD756CF0()
{
  sub_1DD6DEB38();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *(v8(0) + 20);
  v10 = v1(0);
  sub_1DD6E3850(v7 + v9, v11, v12, v10);
  _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v7 = v5;
  v7[1] = v3;
  sub_1DD73BB98();
  sub_1DD6DFED0();
}

uint64_t ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate.parameterValue.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate.parameterValue.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate(v0);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_FailureOutcomePredicate.failure.setter()
{
  sub_1DD6DE304();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResponseGenerationOverrides_Rule.positiveDisjunction.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ResponseGenerationOverrides_Rule.negativeConjunction.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void static ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v130 = v1;
  v131 = v2;
  v109[2] = type metadata accessor for ResponseGenerationOverrides_FailureOutcomePredicate(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DDEE8();
  v121 = v4;
  v5 = sub_1DD6E9A9C();
  v6 = type metadata accessor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate(v5);
  v7 = sub_1DD6DEA10(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DDEE8();
  v119 = v8;
  v9 = sub_1DD6E9A9C();
  v109[1] = type metadata accessor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate(v9);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DDEE8();
  v120 = v11;
  v12 = sub_1DD6E9A9C();
  found = type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate(v12);
  v14 = sub_1DD6DEA10(found);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DDEE8();
  v118 = v15;
  v16 = sub_1DD6E9A9C();
  v17 = type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate(v16);
  v18 = sub_1DD6DEA10(v17);
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DDEE8();
  v117 = v19;
  v20 = sub_1DD6E9A9C();
  v21 = type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate(v20);
  v22 = sub_1DD6DEA10(v21);
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6DDEE8();
  v115 = v23;
  v24 = sub_1DD6E9A9C();
  v25 = type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate(v24);
  v26 = sub_1DD6DEA10(v25);
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6DDEE8();
  v114 = v27;
  v28 = sub_1DD6E9A9C();
  v109[0] = type metadata accessor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate(v28);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6DDEE8();
  v116 = v30;
  v31 = sub_1DD6E9A9C();
  v32 = type metadata accessor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate(v31);
  v33 = sub_1DD6DEA10(v32);
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD6DDEE8();
  v113 = v34;
  v35 = sub_1DD6E9A9C();
  v36 = type metadata accessor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate(v35);
  v37 = sub_1DD6DEA10(v36);
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD6DDEE8();
  v112 = v38;
  v39 = sub_1DD6E9A9C();
  v40 = type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate(v39);
  v41 = sub_1DD6DEA10(v40);
  MEMORY[0x1EEE9AC00](v41);
  sub_1DD6DDEE8();
  v111 = v42;
  v43 = sub_1DD6E9A9C();
  v44 = type metadata accessor for ResponseGenerationOverrides_ActionPredicate(v43);
  v45 = sub_1DD6DEA10(v44);
  MEMORY[0x1EEE9AC00](v45);
  sub_1DD6DDEE8();
  v110 = v46;
  v47 = sub_1DD6E9A9C();
  v48 = type metadata accessor for ResponseGenerationOverrides_ToolPredicate(v47);
  v49 = sub_1DD6DEA10(v48);
  MEMORY[0x1EEE9AC00](v49);
  sub_1DD6DDEE8();
  v109[4] = v50;
  v51 = sub_1DD6E9A9C();
  v52 = type metadata accessor for ResponseGenerationOverrides_AppPredicate(v51);
  v53 = sub_1DD6DEA10(v52);
  MEMORY[0x1EEE9AC00](v53);
  sub_1DD6DDEE8();
  v109[3] = v54;
  v55 = sub_1DD6E9A9C();
  type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(v55);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v56);
  v129 = v109 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v58);
  sub_1DD6F1780();
  v126 = v59;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v60);
  sub_1DD6F1780();
  v128 = v61;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v62);
  sub_1DD6F1780();
  v125 = v63;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v64);
  sub_1DD6F1780();
  v124 = v65;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v66);
  sub_1DD6F1780();
  v123 = v67;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v68);
  sub_1DD6F1780();
  v122 = v69;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v70);
  sub_1DD6F1780();
  v127 = v71;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v72);
  v74 = v109 - v73;
  MEMORY[0x1EEE9AC00](v75);
  MEMORY[0x1EEE9AC00](v76);
  MEMORY[0x1EEE9AC00](v77);
  v79 = v109 - v78;
  MEMORY[0x1EEE9AC00](v80);
  MEMORY[0x1EEE9AC00](v81);
  v82 = sub_1DD710A9C(&qword_1ECD0F2B0, &qword_1DD87DF68);
  v83 = sub_1DD6DEA10(v82);
  MEMORY[0x1EEE9AC00](v83);
  sub_1DD6E17C8();
  v85 = *(v84 + 56);
  sub_1DD7562FC();
  v130 = v85;
  sub_1DD7562FC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 1)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      static ResponseGenerationOverrides_ToolPredicate.== infix(_:_:)();
      sub_1DD755E70();
      goto LABEL_52;
    case 2u:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 2)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      v94 = v110;
      sub_1DD755EC4();
      static ResponseGenerationOverrides_ActionPredicate.== infix(_:_:)(v79, v94);
      sub_1DD755E70();
      goto LABEL_52;
    case 3u:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 3)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      sub_1DD6E0C60();
      static ResponseGenerationOverrides_ActionSuccessOutcomePredicate.== infix(_:_:)();
      goto LABEL_51;
    case 4u:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 4)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      sub_1DD874910();
      sub_1DD73C490();
      sub_1DD6F3804();
      sub_1DD8750F0();
      sub_1DD755E70();
      goto LABEL_52;
    case 5u:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_54;
      }

      v97 = v113;
      sub_1DD755EC4();
      static ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate.== infix(_:_:)(v74, v97);
      sub_1DD755E70();
      sub_1DD755E70();
      sub_1DD6E52A4();
      goto LABEL_53;
    case 6u:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 6)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      sub_1DD6E0CD8();
      if (!v104)
      {
        if (v103)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }

      if (v103)
      {
        sub_1DD6E6368();
        v107 = v90 && v105 == v106;
        if (v107 || (sub_1DD875A30() & 1) != 0)
        {
          goto LABEL_64;
        }
      }

      goto LABEL_65;
    case 7u:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 7)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      v95 = sub_1DD6E0C60();
      static ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate.== infix(_:_:)(v95, v96);
      goto LABEL_51;
    case 8u:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 8)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      sub_1DD6E0C60();
      static ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate.== infix(_:_:)();
      goto LABEL_51;
    case 9u:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 9)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      v92 = sub_1DD6E0C60();
      static ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate.== infix(_:_:)(v92, v93);
      goto LABEL_51;
    case 0xAu:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 10)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      sub_1DD6E0C60();
      static ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate.== infix(_:_:)();
      goto LABEL_51;
    case 0xBu:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 11)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      sub_1DD6E0CD8();
      if (!v87)
      {
        if (v86)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }

      if (v86)
      {
        sub_1DD6E6368();
        v90 = v90 && v88 == v89;
        if (v90 || (sub_1DD875A30() & 1) != 0)
        {
          goto LABEL_64;
        }
      }

      goto LABEL_65;
    case 0xCu:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 12)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      v91 = sub_1DD6E0C60();
      static ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate.== infix(_:_:)(v91);
LABEL_51:
      sub_1DD755E70();
      goto LABEL_52;
    case 0xDu:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 13)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      sub_1DD6E0CD8();
      if (!v99)
      {
        if (v98)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }

      if (v98)
      {
        sub_1DD6E6368();
        v102 = v90 && v100 == v101;
        if (v102 || (sub_1DD875A30() & 1) != 0)
        {
LABEL_64:
          sub_1DD7029E4();
          v108 = sub_1DD73C490();
          sub_1DD6ED13C(v108);
        }
      }

LABEL_65:
      sub_1DD755E70();
      sub_1DD755E70();
      sub_1DD6E52A4();
      sub_1DD755E70();
LABEL_55:
      sub_1DD6DFED0();
      return;
    default:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938())
      {
LABEL_54:
        sub_1DD755E70();
        sub_1DD6FC560(v0, &qword_1ECD0F2B0, &qword_1DD87DF68);
      }

      else
      {
        sub_1DD6ED478();
        sub_1DD755EC4();
        static ResponseGenerationOverrides_AppPredicate.== infix(_:_:)();
        sub_1DD755E70();
LABEL_52:
        sub_1DD755E70();
        sub_1DD6E52A4();
LABEL_53:
        sub_1DD755E70();
      }

      goto LABEL_55;
  }
}

uint64_t ResponseGenerationOverrides_Rule.init(positiveConjunction:positiveDisjunction:negativeConjunction:negativeDisjunction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for ResponseGenerationOverrides_Rule(0);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

unint64_t sub_1DD758084()
{
  result = qword_1EE014B00;
  if (!qword_1EE014B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE014B00);
  }

  return result;
}

unint64_t sub_1DD7580DC()
{
  result = qword_1ECD0F2B8;
  if (!qword_1ECD0F2B8)
  {
    sub_1DD717E88(&qword_1ECD0F2C0, &qword_1DD87E010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F2B8);
  }

  return result;
}

uint64_t sub_1DD7581C4(uint64_t a1)
{
  sub_1DD75835C(319, &qword_1EE0139D8, type metadata accessor for ResponseGenerationOverrides_Rule, MEMORY[0x1E69E62F8]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1DD732A5C();
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1DD75835C(319, &qword_1ECD0F2C8, type metadata accessor for OverridesCommon_ContextPredicate, MEMORY[0x1E69E6720]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_1DD75835C(319, &qword_1ECD0F2D0, type metadata accessor for OverridesCommon_OverrideDialog, MEMORY[0x1E69E6720]);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        v2 = sub_1DD874910();
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_1DD75835C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DD7583E8(uint64_t a1)
{
  result = sub_1DD874910();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResponseGenerationOverrides_IntPredicate.Operator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResponseGenerationOverrides_IntPredicate.Operator(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DD75862C()
{
  sub_1DD6DDFA8();
  if (v3)
  {
    return sub_1DD6DDFD0(*v1);
  }

  sub_1DD7598B0();
  sub_1DD710A9C(&qword_1ECD0EE40, &unk_1DD87DF30);
  sub_1DD6E0A68();
  if (*(v5 + 84) == v0)
  {
    sub_1DD6EE76C();
  }

  else
  {
    sub_1DD874910();
    v6 = *(v2 + 28);
  }

  v7 = sub_1DD6E6C88(v6);

  return sub_1DD6E5ED0(v7, v8, v9);
}

void sub_1DD7586F4()
{
  sub_1DD6E6A60();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_1DD6E1C08();
    sub_1DD710A9C(&qword_1ECD0EE40, &unk_1DD87DF30);
    sub_1DD6E0A68();
    if (*(v5 + 84) == v3)
    {
      sub_1DD700BF0();
    }

    else
    {
      sub_1DD874910();
      v6 = *(v2 + 28);
    }

    v7 = sub_1DD6DE524(v6);

    sub_1DD6E5E68(v7, v8, v9, v10);
  }
}

void sub_1DD7587C8()
{
  sub_1DD6DED68();
  sub_1DD75835C(319, v0, v1, MEMORY[0x1E69E62F8]);
  if (v2 <= 0x3F)
  {
    sub_1DD75835C(319, qword_1EE014AA0, type metadata accessor for ResponseGenerationOverrides_IntPredicate, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      sub_1DD874910();
      if (v4 <= 0x3F)
      {
        sub_1DD6E0DC4();
        swift_cvw_initStructMetadataWithLayoutString();
        sub_1DD6F09E0();
      }
    }
  }
}

uint64_t sub_1DD758A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = sub_1DD6F44C8();
  result = v7(v6);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return sub_1DD6F09E0();
    }
  }

  return result;
}

uint64_t sub_1DD758BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  sub_1DD6E1F34();
  sub_1DD710A9C(v12, v13);
  sub_1DD6E0A68();
  if (*(v14 + 84) == v7)
  {
    v15 = sub_1DD6E492C();
  }

  else
  {
    sub_1DD710A9C(a6, a7);
    sub_1DD6E0A68();
    if (*(v18 + 84) == v7)
    {
      v16 = v17;
      v19 = *(a3 + 20);
    }

    else
    {
      sub_1DD874910();
      sub_1DD6EE76C();
    }

    v15 = v8 + v19;
  }

  return sub_1DD6E5ED0(v15, v7, v16);
}

uint64_t sub_1DD758CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  sub_1DD6E1C08();
  sub_1DD6E1F34();
  sub_1DD710A9C(v13, v14);
  sub_1DD6E0A68();
  if (*(v15 + 84) == v10)
  {
    v16 = sub_1DD6FF79C();
  }

  else
  {
    sub_1DD710A9C(a7, a8);
    sub_1DD6E0A68();
    if (*(v18 + 84) == v10)
    {
      sub_1DD6FF8E8();
    }

    else
    {
      sub_1DD874910();
      sub_1DD700BF0();
    }

    v16 = v9 + v19;
  }

  return sub_1DD6E5E68(v16, v8, v8, v17);
}