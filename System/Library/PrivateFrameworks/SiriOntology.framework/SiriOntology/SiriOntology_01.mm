uint64_t Com_Apple_Siri_Product_Proto_PromptContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0);
  result = sub_1C0520474(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C095D36C();
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_SemanticValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C095D66C(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_1C095D66C(), !v4))
    {
      v10 = v3[5];
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 || (result = sub_1C095D66C(), !v4))
      {
        if (!*(v3[6] + 16) || (result = sub_1C095D64C(), !v4))
        {
          type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
          return sub_1C095D36C();
        }
      }
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    swift_allocObject();
    v12 = sub_1C051EF2C(v11);

    *(v4 + v8) = v12;
    v10 = v12;
  }

  return sub_1C05216A8(v10, a1, a2, a3);
}

uint64_t sub_1C05216A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C095D41C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_1C055110C(a2, a1, a3, a4);
          break;
        case 2:
          sub_1C0521A10(a2, a1, a3, a4);
          break;
        case 3:
          sub_1C0551190(a2, a1, a3, a4);
          break;
        case 4:
          sub_1C0521A94(a2, a1, a3, a4);
          break;
        case 5:
          v21 = a2;
          v22 = a1;
          v23 = a3;
          v24 = a4;
          v25 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__domainHints;
          goto LABEL_28;
        case 6:
          v21 = a2;
          v22 = a1;
          v23 = a3;
          v24 = a4;
          v25 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__promptTargetHints;
          goto LABEL_28;
        case 7:
          sub_1C055126C(a2, a1, a3, a4);
          break;
        case 8:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__foregroundAppSubscribesToInAppSearch;
          goto LABEL_5;
        case 9:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__objectDisambiguation;
          goto LABEL_5;
        case 10:
          v21 = a2;
          v22 = a1;
          v23 = a3;
          v24 = a4;
          v25 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__alertDomainHints;
          goto LABEL_28;
        case 11:
          v21 = a2;
          v22 = a1;
          v23 = a3;
          v24 = a4;
          v25 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__backgroundDomainHints;
LABEL_28:
          sub_1C0522FC8(v21, v22, v23, v24, v25);
          break;
        case 12:
          v16 = a2;
          v17 = a1;
          v18 = a3;
          v19 = a4;
          v20 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__previousDomainName;
          goto LABEL_14;
        case 13:
          v16 = a2;
          v17 = a1;
          v18 = a3;
          v19 = a4;
          v20 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__previousNldomainName;
LABEL_14:
          sub_1C0521C7C(v16, v17, v18, v19, v20);
          break;
        case 14:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__listenAfterSpeaking;
          goto LABEL_5;
        case 15:
          sub_1C0551348(a2, a1, a3, a4);
          break;
        case 16:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__overridePromptingOnSpeechFailure;
          goto LABEL_5;
        case 17:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__disableAutoPunctuation;
          goto LABEL_5;
        case 18:
          sub_1C0551424(a2, a1, a3, a4);
          break;
        case 19:
          sub_1C0551500(a2, a1, a3, a4);
          break;
        case 20:
          sub_1C05515DC(a2, a1, a3, a4);
          break;
        case 21:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__usePlaceholderTaskVerb;
LABEL_5:
          sub_1C05516B8(v11, v12, v13, v14, v15);
          break;
        default:
          break;
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C0521A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C095D44C();
  return swift_endAccess();
}

uint64_t sub_1C0521A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  sub_1C051FAFC(&qword_1EBE15188, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_SemanticValue);
  sub_1C095D54C();
  return swift_endAccess();
}

uint64_t sub_1C0521B70@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = MEMORY[0x1E69E7CC0];
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Com_Apple_Siri_Product_Proto_SemanticValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_2;
      }

      if (result == 4)
      {
        sub_1C095D4BC();
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      sub_1C095D50C();
    }
  }
}

uint64_t sub_1C0521C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_1C095D50C();
  return swift_endAccess();
}

uint64_t sub_1C0521D30(__int128 *a1)
{
  v2 = a1[9];
  v31 = a1[8];
  v32 = v2;
  v33[0] = a1[10];
  *(v33 + 9) = *(a1 + 169);
  v3 = a1[5];
  v27 = a1[4];
  v28 = v3;
  v4 = a1[7];
  v29 = a1[6];
  v30 = v4;
  v5 = a1[1];
  v23 = *a1;
  v24 = v5;
  v6 = a1[3];
  v25 = a1[2];
  v26 = v6;
  swift_beginAccess();
  v7 = *(v1 + 32);
  sub_1C0521E78(&v23, v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 32) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1C0522E00(0, *(v7 + 2) + 1, 1, v7);
    *(v1 + 32) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1C0522E00((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[192 * v10];
  v12 = v23;
  v13 = v24;
  v14 = v26;
  *(v11 + 4) = v25;
  *(v11 + 5) = v14;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v15 = v27;
  v16 = v28;
  v17 = v30;
  *(v11 + 8) = v29;
  *(v11 + 9) = v17;
  *(v11 + 6) = v15;
  *(v11 + 7) = v16;
  v18 = v31;
  v19 = v32;
  v20 = v33[0];
  *(v11 + 201) = *(v33 + 9);
  *(v11 + 11) = v19;
  *(v11 + 12) = v20;
  *(v11 + 10) = v18;
  *(v1 + 32) = v7;
  return swift_endAccess();
}

void *static UsoBuilderConversionUtils.copyEntityDataToEntityBuilder(entityBuilder:entity:copyValueType:copyIdentifiers:copyUtteranceAlignments:)(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v10 = a2[6];
  result = sub_1C0517C50(v10, a4, a5, a4);
  if (result)
  {
    type metadata accessor for UsoEntityBuilder();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      if (a3)
      {
        v17 = a2[3];
        a1[5] = a2[2];
        a1[6] = v17;

        if ((v6 & 1) == 0)
        {
LABEL_5:
          if ((v5 & 1) == 0)
          {
            goto LABEL_6;
          }

          goto LABEL_15;
        }
      }

      else if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      swift_beginAccess();

      sub_1C0522140(v18);
      swift_endAccess();
      if ((v5 & 1) == 0)
      {
LABEL_6:
        if ((v6 & 1) == 0)
        {
LABEL_8:
          swift_beginAccess();
          v15 = *(v13 + 56);
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v21 = a1[7];
          a1[7] = 0x8000000000000000;
          sub_1C0522548(v15, sub_1C05227D4, 0, isUniquelyReferenced_nonNull_native, &v21);

          a1[7] = v21;
          swift_endAccess();
        }

LABEL_7:
        swift_beginAccess();

        sub_1C0522448(v14);
        swift_endAccess();
        goto LABEL_8;
      }

LABEL_15:
      v19 = *(v10 + 24);
      swift_unownedRetainStrong();
      v20 = *(v19 + 112);

      sub_1C0522240(v20);
      if ((v6 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  return result;
}

char *sub_1C0522140(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  *v1 = v3;
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C0519CF8(result, v10, 1, v3);
  v3 = result;
  *v1 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C0522240(uint64_t result)
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
  *v1 = v3;
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C052233C(result, v10, 1, v3);
  v3 = result;
  *v1 = result;
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1C052233C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE172D8, &qword_1C0970AC8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1C0522448(uint64_t result)
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
  *v1 = v3;
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C0522E00(result, v10, 1, v3);
  v3 = result;
  *v1 = result;
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C0522548(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v36 = v6;
  while (v9)
  {
    v39 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v43[0] = *v15;
    v43[1] = v16;
    v43[2] = v17;

    a2(&v40, v43);

    v18 = v40;
    v19 = v41;
    v20 = v42;
    v21 = *v44;
    v23 = sub_1C0516A8C(v40, v41);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((v39 & 1) == 0)
      {
        sub_1C066FDF8();
      }
    }

    else
    {
      sub_1C0516A78(v26, v39 & 1);
      v28 = sub_1C0516A8C(v18, v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

      v23 = v28;
    }

    v9 &= v9 - 1;
    v30 = *v44;
    if (v27)
    {

      *(v30[7] + 8 * v23) = v20;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (v30[6] + 16 * v23);
      *v31 = v18;
      v31[1] = v19;
      *(v30[7] + 8 * v23) = v20;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v30[2] = v34;
    }

    a4 = 1;
    v11 = v12;
    v6 = v36;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_1C052281C(a1);
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v39 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1C095DF6C();
  __break(1u);
  return result;
}

uint64_t sub_1C05227D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

unint64_t sub_1C0522824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5BDEC0;
  if (!qword_1ED5BDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BDEC0);
  }

  return result;
}

uint64_t sub_1C0522878(double *a1)
{
  v18 = *(a1 + 1);
  v19 = *a1;
  v20 = *(a1 + 3);
  v21 = *(a1 + 2);
  v1 = *(a1 + 56);
  v2 = *(a1 + 57);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (*(a1 + 5))
  {
    v5 = *(a1 + 4);
    strcpy(v23, ", namespace=");
    BYTE5(v23[1]) = 0;
    HIWORD(v23[1]) = -5120;
    MEMORY[0x1C68DD690](v5);
    v6 = v23[1];
    v17 = v23[0];
    if (v1)
    {
      goto LABEL_6;
    }

LABEL_5:
    sub_1C095DC1C();
    MEMORY[0x1C68DD690](0x6261626F7270202CLL, 0xEE003D7974696C69);
    sub_1C095DA1C();
    goto LABEL_6;
  }

  v17 = 0;
  v6 = 0xE000000000000000;
  if ((a1[7] & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  if (v2 == 7)
  {
    goto LABEL_22;
  }

  v23[0] = 0xD000000000000012;
  v23[1] = 0x80000001C09CD750;
  if (v2 > 2)
  {
    if (v2 > 4)
    {
      if (v2 == 5)
      {
        v7 = 0x4143726573726150;
        v8 = 0xEA00000000004954;
      }

      else
      {
        v7 = 0x5353726573726150;
        v8 = 0xE900000000000055;
      }
    }

    else if (v2 == 3)
    {
      v7 = 0x526E6F69746E654DLL;
      v8 = 0xEF7265766C6F7365;
    }

    else
    {
      v7 = 0xD000000000000013;
      v8 = 0x80000001C09CD610;
    }

    goto LABEL_21;
  }

  if (!v2)
  {
    v7 = 0x6E776F6E6B6E75;
LABEL_18:
    v8 = 0xE700000000000000;
    goto LABEL_21;
  }

  if (v2 != 1)
  {
    v7 = 0x656C6946636F56;
    goto LABEL_18;
  }

  v7 = 0x61636F5669726953;
  v8 = 0xE900000000000062;
LABEL_21:
  MEMORY[0x1C68DD690](v7, v8);
LABEL_22:
  if ((v3 & 1) == 0)
  {
    strcpy(v22, ", groupIndex=");
    HIWORD(v22[1]) = -4864;
    v14 = sub_1C095DF0C();
    MEMORY[0x1C68DD690](v14);

    v9 = v22[0];
    v10 = v22[1];
    if ((v4 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_26:
    v13 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_27;
  }

  v9 = 0;
  v10 = 0xE000000000000000;
  if (v4)
  {
    goto LABEL_26;
  }

LABEL_24:
  sub_1C095DC1C();

  v11 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v11);

  v13 = 0xD000000000000016;
  v12 = 0x80000001C09CD9A0;
LABEL_27:
  sub_1C095DC1C();
  MEMORY[0x1C68DD690](0xD000000000000019, 0x80000001C09CD980);
  v15 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v15);

  MEMORY[0x1C68DD690](0x3D65756C6176202CLL, 0xE800000000000000);
  MEMORY[0x1C68DD690](v19, v18);
  MEMORY[0x1C68DD690](0x6E7542707061202CLL, 0xEC0000003D656C64);
  MEMORY[0x1C68DD690](v21, v20);
  MEMORY[0x1C68DD690](v17, v6);

  MEMORY[0x1C68DD690](0, 0xE000000000000000);

  MEMORY[0x1C68DD690](v23[0], v23[1]);

  MEMORY[0x1C68DD690](v9, v10);

  MEMORY[0x1C68DD690](v13, v12);

  MEMORY[0x1C68DD690](93, 0xE100000000000000);
  return 0;
}

uint64_t UsoPrimitiveStringBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t UsoEntityBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_1C0522E00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17350, &unk_1C0970B50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[192 * v8])
    {
      memmove(v12, v13, 192 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C0522F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(a1 + 20);
  if (qword_1ED5BDDB8 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_1ED5BDDC0;
}

uint64_t sub_1C0522FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_1C095D4BC();
  return swift_endAccess();
}

uint64_t sub_1C0523050(uint64_t *a1)
{
  type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0);
  swift_beginAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.dictationPrompt.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20));
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.strictPrompt.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20));
  swift_beginAccess();
  return *(v1 + 17);
}

uint64_t sub_1C052314C(void *a1)
{
  v2 = (*(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20)) + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_1C05231C0(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4);
}

BOOL _s12SiriOntology13UsoIdentifierV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v4 = *(a1 + 3);
  v3 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = a1[6];
  v7 = *(a1 + 56);
  v32 = *(a1 + 57);
  v30 = *(a1 + 64);
  v23 = *(a1 + 17);
  v27 = *(a1 + 15);
  v28 = *(a1 + 72);
  v20 = *(a1 + 10);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  v31 = *(a2 + 57);
  v24 = *(a1 + 88);
  v25 = *(a2 + 60);
  v29 = *(a2 + 64);
  v26 = *(a2 + 72);
  v19 = *(a2 + 80);
  v21 = *(a2 + 68);
  v22 = *(a2 + 88);
  if ((*a1 != *a2 || *(a1 + 1) != *(a2 + 8)) && (sub_1C095DF3C() & 1) == 0 || (v2 != v8 || v4 != v9) && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10 || (v3 != v11 || v5 != v10) && (sub_1C095DF3C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v7)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (v32 == 7)
  {
    if (v31 != 7)
    {
      return 0;
    }

    goto LABEL_26;
  }

  result = 0;
  if (v31 != 7 && v32 == v31)
  {
LABEL_26:
    if (v30)
    {
      if (!v29)
      {
        return 0;
      }
    }

    else
    {
      v16 = v29;
      if (v27 != v25)
      {
        v16 = 1;
      }

      if (v16)
      {
        return 0;
      }
    }

    if (v28)
    {
      if (!v26)
      {
        return 0;
      }
    }

    else
    {
      v17 = v26;
      if (v23 != v21)
      {
        v17 = 1;
      }

      if (v17)
      {
        return 0;
      }
    }

    if ((v24 & 1) == 0)
    {
      v18 = v22;
      if (v20 != v19)
      {
        v18 = 1;
      }

      return (v18 & 1) == 0;
    }

    return (v22 & 1) != 0;
  }

  return result;
}

uint64_t UsoTask.verbString.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static AppOntologyNode.applicationIdNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t TerminalOntologyNode.name.getter()
{
  v0 = sub_1C051D38C();

  return v0;
}

uint64_t sub_1C0523574(void *a1)
{
  v3 = *v1;

  sub_1C0523914(a1, v3);
}

uint64_t UsoIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F850, &qword_1C099A190);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = *(v1 + 16);
  v34 = *(v1 + 24);
  v35 = v7;
  v8 = *(v1 + 32);
  v32 = *(v1 + 40);
  v33 = v8;
  v31 = *(v1 + 48);
  LODWORD(v8) = *(v1 + 56);
  v29 = *(v1 + 57);
  v30 = v8;
  v27 = *(v1 + 60);
  v26 = *(v1 + 64);
  v25 = *(v1 + 68);
  v24 = *(v1 + 72);
  v28 = *(v1 + 80);
  v9 = *(v1 + 88);
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  v14 = __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_1C0525E40(v14, v15, v16);
  sub_1C095E05C();
  v47 = 0;
  v17 = v36;
  sub_1C095DEBC();
  if (v17)
  {
    return (*(v4 + 8))(v6, v13);
  }

  v18 = v29;
  LODWORD(v36) = v9;
  v46 = 1;
  sub_1C095DEBC();
  v45 = 2;
  sub_1C095DE4C();
  v44 = 3;
  v19 = sub_1C095DE5C();
  v43 = v18;
  v42 = 4;
  sub_1C0525E94(v19, v20, v21);
  sub_1C095DE8C();
  v41 = 5;
  v40 = v26;
  sub_1C095DEAC();
  v39 = 6;
  v38 = v24;
  sub_1C095DEAC();
  v37 = 7;
  sub_1C095DE7C();
  return MEMORY[8](v6, v13);
}

uint64_t sub_1C05238D0(uint64_t a1)
{

  sub_1C0523914(a1, v1);
}

uint64_t sub_1C0523914(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F678, &qword_1C0998750);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v185 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C051CFF8(v9, v10, v11);
  sub_1C095E05C();
  if (!a2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  *&v208 = 0x6570797423;
  *(&v208 + 1) = 0xE500000000000000;
  *&v209 = 0;
  BYTE8(v209) = 1;

  sub_1C095DEBC();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  v197 = v8;
  v13 = a2[5];
  v14 = *(v13 + 16);
  v193 = a2;
  if (v14)
  {
    v207[0] = v13;
    strcpy(&v208, "#identifiers");
    BYTE13(v208) = 0;
    HIWORD(v208) = -5120;
    *&v209 = 0;
    BYTE8(v209) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17200, &qword_1C09709D8);
    sub_1C0766324();
    sub_1C095DECC();

    a2 = v193;
  }

  if (*(a2[7] + 16))
  {
    v207[0] = a2[7];
    strcpy(&v208, "#entitySpans");
    BYTE13(v208) = 0;
    HIWORD(v208) = -5120;
    *&v209 = 0;
    BYTE8(v209) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17338, &qword_1C0970B30);
    sub_1C07663FC();
    sub_1C095DECC();

    a2 = v193;
  }

  v15 = a2[4];
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v188 = (v17 + 63) >> 6;
  v189 = v15;

  v20 = 0;
  v186 = v16;
  v187 = v6;
  v196 = v5;
  while (1)
  {
    result = v197;
    if (!v19)
    {
      break;
    }

    v21 = v20;
LABEL_18:
    v190 = v21;
    v191 = v19;
    v22 = __clz(__rbit64(v19)) | (v21 << 6);
    v23 = *(v189 + 56);
    v24 = (*(v189 + 48) + 16 * v22);
    v25 = v24[1];
    v195 = *v24;
    v26 = *(v23 + 8 * v22);
    if (v26 >> 62)
    {
      v184 = v25;
      v27 = sub_1C095DCDC();
      v25 = v184;
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v192 = 0;
    v194 = v25;
    if (v27)
    {
      v204 = v26 & 0xC000000000000001;
      v198 = v26 + 32;
      v199 = v26 & 0xFFFFFFFFFFFFFF8;
      swift_bridgeObjectRetain_n();
      v202 = v26;

      v28 = 0;
      v29 = MEMORY[0x1E69E7CC0];
      v30 = MEMORY[0x1E69E7CC0];
      v31 = MEMORY[0x1E69E7CC0];
      v203 = v27;
      while (1)
      {
        if (v204)
        {
          result = MEMORY[0x1C68DDAD0](v28, v202);
          v230 = result;
          v33 = __OFADD__(v28, 1);
          v34 = v28 + 1;
          if (v33)
          {
            goto LABEL_130;
          }
        }

        else
        {
          if (v28 >= *(v199 + 16))
          {
            goto LABEL_132;
          }

          v230 = *(v198 + 8 * v28);

          v33 = __OFADD__(v28, 1);
          v34 = v28 + 1;
          if (v33)
          {
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }
        }

        v205 = v34;
        v206 = v30;
        v35 = v230;
        v36 = *(v230 + 24);
        swift_unownedRetainStrong();
        v38 = *(v36 + 80);
        v37 = *(v36 + 88);

        if (v38 == 0x5664656E69666544 && v37 == 0xEC00000065756C61)
        {

LABEL_39:
          v44 = *(v35 + 24);
          swift_unownedRetainStrong();
          v46 = *(v44 + 64);
          v45 = *(v44 + 72);

          if (qword_1ED5BDED8 != -1)
          {
            swift_once();
          }

          if (__PAIR128__(v45, v46) == xmmword_1ED5BDEE0)
          {

LABEL_44:
            swift_unownedRetainStrong();
            v48 = *(v44 + 24);
            v49 = *(v44 + 32);
            v50 = *(v44 + 40);
            sub_1C0514B20(v48, v49, *(v44 + 40));

            if (v50 != 255)
            {
              if (v50)
              {
                sub_1C05144FC(v48, v49, v50);
              }

              else if ((v49 & 1) == 0)
              {
                v79 = *(v35 + 24);
                swift_unownedRetainStrong();
                swift_beginAccess();
                v80 = *(v79 + 104);

                v81 = *(v80 + 16);
                v201 = v48;
                if (v81)
                {
                  v82 = *(v206 + 2);
                  v83 = v81 - 1;
                  for (i = 32; ; i += 96)
                  {
                    v85 = *(v80 + i + 16);
                    v208 = *(v80 + i);
                    v209 = v85;
                    v86 = *(v80 + i + 32);
                    v87 = *(v80 + i + 48);
                    v88 = *(v80 + i + 64);
                    *(v212 + 9) = *(v80 + i + 73);
                    v211 = v87;
                    v212[0] = v88;
                    v210 = v86;
                    v89 = *(v80 + i);
                    v90 = *(v80 + i + 16);
                    v91 = *(v80 + i + 64);
                    v221 = *(v80 + i + 48);
                    v222 = v91;
                    v92 = *(v80 + i + 32);
                    v219 = v90;
                    v220 = v92;
                    v218 = v89;
                    v229 = 0;
                    sub_1C0518B04(&v208, v207);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v31 = sub_1C0519CF8(0, *(v31 + 2) + 1, 1, v31);
                    }

                    v94 = *(v31 + 2);
                    v93 = *(v31 + 3);
                    if (v94 >= v93 >> 1)
                    {
                      v31 = sub_1C0519CF8((v93 > 1), v94 + 1, 1, v31);
                    }

                    *(v31 + 2) = v94 + 1;
                    v95 = &v31[96 * v94];
                    *(v95 + 2) = v218;
                    v96 = v219;
                    v97 = v220;
                    v98 = v222;
                    *(v95 + 5) = v221;
                    *(v95 + 6) = v98;
                    *(v95 + 3) = v96;
                    *(v95 + 4) = v97;
                    *(v95 + 14) = v82;
                    v95[120] = 0;
                    if (!v83)
                    {
                      break;
                    }

                    --v83;
                  }

                  v30 = v206;
                  v35 = v230;
                  v48 = v201;
                }

                else
                {

                  v30 = v206;
                }

                v138 = *(v35 + 24);
                swift_unownedRetainStrong();
                swift_beginAccess();
                v139 = *(v138 + 120);

                v140 = *(v139 + 16);
                if (v140)
                {
                  v141 = *(v30 + 2);
                  v142 = v140 - 1;
                  for (j = 32; ; j += 192)
                  {
                    v144 = *(v139 + j);
                    v145 = *(v139 + j + 16);
                    v146 = *(v139 + j + 48);
                    v210 = *(v139 + j + 32);
                    v211 = v146;
                    v208 = v144;
                    v209 = v145;
                    v147 = *(v139 + j + 64);
                    v148 = *(v139 + j + 80);
                    v149 = *(v139 + j + 112);
                    v213 = *(v139 + j + 96);
                    v214 = v149;
                    v212[0] = v147;
                    v212[1] = v148;
                    v150 = *(v139 + j + 128);
                    v151 = *(v139 + j + 144);
                    v152 = *(v139 + j + 160);
                    *(v217 + 9) = *(v139 + j + 169);
                    v216 = v151;
                    v217[0] = v152;
                    v215 = v150;
                    v153 = *(v139 + j + 144);
                    v226 = *(v139 + j + 128);
                    v227 = v153;
                    v228 = *(v139 + j + 160);
                    v154 = *(v139 + j + 80);
                    v222 = *(v139 + j + 64);
                    v223 = v154;
                    v155 = *(v139 + j + 112);
                    v224 = *(v139 + j + 96);
                    v225 = v155;
                    v156 = *(v139 + j + 16);
                    v218 = *(v139 + j);
                    v219 = v156;
                    v157 = *(v139 + j + 48);
                    v220 = *(v139 + j + 32);
                    v221 = v157;
                    v229 = 0;
                    sub_1C0521E78(&v208, v207);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v29 = sub_1C0522E00(0, *(v29 + 2) + 1, 1, v29);
                    }

                    v159 = *(v29 + 2);
                    v158 = *(v29 + 3);
                    if (v159 >= v158 >> 1)
                    {
                      v29 = sub_1C0522E00((v158 > 1), v159 + 1, 1, v29);
                    }

                    *(v29 + 2) = v159 + 1;
                    v160 = &v29[192 * v159];
                    v161 = v218;
                    v162 = v220;
                    *(v160 + 3) = v219;
                    *(v160 + 4) = v162;
                    *(v160 + 2) = v161;
                    v163 = v221;
                    v164 = v222;
                    v165 = v224;
                    *(v160 + 7) = v223;
                    *(v160 + 8) = v165;
                    *(v160 + 5) = v163;
                    *(v160 + 6) = v164;
                    v166 = v225;
                    v167 = v226;
                    v168 = v228;
                    *(v160 + 11) = v227;
                    *(v160 + 12) = v168;
                    *(v160 + 9) = v166;
                    *(v160 + 10) = v167;
                    *(v160 + 26) = v141;
                    v160[216] = 0;
                    if (!v142)
                    {
                      break;
                    }

                    --v142;
                  }

                  v30 = v206;
                  v32 = v203;
                  v48 = v201;
                }

                else
                {

                  v32 = v203;
                }

                v169 = swift_allocObject();
                *(v169 + 16) = v48;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v30 = sub_1C0524C9C(0, *(v30 + 2) + 1, 1, v30);
                }

                v171 = *(v30 + 2);
                v170 = *(v30 + 3);
                if (v171 >= v170 >> 1)
                {
                  v30 = sub_1C0524C9C((v170 > 1), v171 + 1, 1, v30);
                }

                *(v30 + 2) = v171 + 1;
                v172 = &v30[16 * v171];
                *(v172 + 4) = sub_1C0766558;
                *(v172 + 5) = v169;
                goto LABEL_23;
              }
            }
          }

          else
          {
            v47 = sub_1C095DF3C();

            if (v47)
            {
              goto LABEL_44;
            }
          }

          v51 = sub_1C0518BC4();
          if (v51)
          {
            v52 = v51;

            v30 = v206;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v32 = v203;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v30 = sub_1C0524C9C(0, *(v30 + 2) + 1, 1, v30);
            }

            v55 = *(v30 + 2);
            v54 = *(v30 + 3);
            if (v55 >= v54 >> 1)
            {
              v30 = sub_1C0524C9C((v54 > 1), v55 + 1, 1, v30);
            }

            *(v30 + 2) = v55 + 1;
            v56 = &v30[16 * v55];
            *(v56 + 4) = sub_1C05238D0;
            *(v56 + 5) = v52;
          }

          else
          {

            v30 = v206;
            v32 = v203;
          }

          goto LABEL_23;
        }

        v40 = sub_1C095DF3C();

        if (v40)
        {
          goto LABEL_39;
        }

        v41 = *(v35 + 24);
        swift_unownedRetainStrong();
        v43 = *(v41 + 80);
        v42 = *(v41 + 88);

        if (v43 == 0x5664656E69666544 && v42 == 0xEC00000065756C61)
        {
          break;
        }

        v57 = sub_1C095DF3C();

        if (v57)
        {
          goto LABEL_55;
        }

        swift_unownedRetainStrong();
        v137 = *(v41 + 64);
        v136 = *(v41 + 72);

        if (qword_1ED5D7CA0 != -1)
        {
          swift_once();
        }

        if (__PAIR128__(v136, v137) == xmmword_1ED5D7CA8)
        {
        }

        else
        {
          v173 = sub_1C095DF3C();

          if ((v173 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        swift_unownedRetainStrong();
        v174 = *(v41 + 32);
        v175 = *(v41 + 40);
        v200 = *(v41 + 24);
        v201 = v174;
        sub_1C0514B20(v200, v174, v175);

        if (v175 == 255 || (v175 & 1) == 0 || !v201)
        {
          goto LABEL_39;
        }

LABEL_56:
        v59 = *(v35 + 24);
        swift_unownedRetainStrong();
        swift_beginAccess();
        v60 = *(v59 + 104);

        v61 = *(v60 + 16);
        if (v61)
        {
          v62 = *(v206 + 2);
          v63 = v61 - 1;
          for (k = 32; ; k += 96)
          {
            v65 = *(v60 + k + 16);
            v208 = *(v60 + k);
            v209 = v65;
            v66 = *(v60 + k + 32);
            v67 = *(v60 + k + 48);
            v68 = *(v60 + k + 64);
            *(v212 + 9) = *(v60 + k + 73);
            v211 = v67;
            v212[0] = v68;
            v210 = v66;
            v69 = *(v60 + k);
            v70 = *(v60 + k + 16);
            v71 = *(v60 + k + 64);
            v221 = *(v60 + k + 48);
            v222 = v71;
            v72 = *(v60 + k + 32);
            v219 = v70;
            v220 = v72;
            v218 = v69;
            v229 = 0;
            sub_1C0518B04(&v208, v207);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v31 = sub_1C0519CF8(0, *(v31 + 2) + 1, 1, v31);
            }

            v74 = *(v31 + 2);
            v73 = *(v31 + 3);
            if (v74 >= v73 >> 1)
            {
              v31 = sub_1C0519CF8((v73 > 1), v74 + 1, 1, v31);
            }

            *(v31 + 2) = v74 + 1;
            v75 = &v31[96 * v74];
            *(v75 + 2) = v218;
            v76 = v219;
            v77 = v220;
            v78 = v222;
            *(v75 + 5) = v221;
            *(v75 + 6) = v78;
            *(v75 + 3) = v76;
            *(v75 + 4) = v77;
            *(v75 + 14) = v62;
            v75[120] = 0;
            if (!v63)
            {
              break;
            }

            --v63;
          }

          v35 = v230;
        }

        else
        {
        }

        v99 = *(v35 + 24);
        swift_unownedRetainStrong();
        swift_beginAccess();
        v100 = *(v99 + 120);

        v101 = *(v100 + 16);
        if (v101)
        {
          v102 = *(v206 + 2);
          v103 = v101 - 1;
          for (m = 32; ; m += 192)
          {
            v105 = *(v100 + m);
            v106 = *(v100 + m + 16);
            v107 = *(v100 + m + 48);
            v210 = *(v100 + m + 32);
            v211 = v107;
            v208 = v105;
            v209 = v106;
            v108 = *(v100 + m + 64);
            v109 = *(v100 + m + 80);
            v110 = *(v100 + m + 112);
            v213 = *(v100 + m + 96);
            v214 = v110;
            v212[0] = v108;
            v212[1] = v109;
            v111 = *(v100 + m + 128);
            v112 = *(v100 + m + 144);
            v113 = *(v100 + m + 160);
            *(v217 + 9) = *(v100 + m + 169);
            v216 = v112;
            v217[0] = v113;
            v215 = v111;
            v114 = *(v100 + m + 144);
            v226 = *(v100 + m + 128);
            v227 = v114;
            v228 = *(v100 + m + 160);
            v115 = *(v100 + m + 80);
            v222 = *(v100 + m + 64);
            v223 = v115;
            v116 = *(v100 + m + 112);
            v224 = *(v100 + m + 96);
            v225 = v116;
            v117 = *(v100 + m + 16);
            v218 = *(v100 + m);
            v219 = v117;
            v118 = *(v100 + m + 48);
            v220 = *(v100 + m + 32);
            v221 = v118;
            v229 = 0;
            sub_1C0521E78(&v208, v207);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v29 = sub_1C0522E00(0, *(v29 + 2) + 1, 1, v29);
            }

            v120 = *(v29 + 2);
            v119 = *(v29 + 3);
            if (v120 >= v119 >> 1)
            {
              v29 = sub_1C0522E00((v119 > 1), v120 + 1, 1, v29);
            }

            *(v29 + 2) = v120 + 1;
            v121 = &v29[192 * v120];
            v122 = v218;
            v123 = v220;
            *(v121 + 3) = v219;
            *(v121 + 4) = v123;
            *(v121 + 2) = v122;
            v124 = v221;
            v125 = v222;
            v126 = v224;
            *(v121 + 7) = v223;
            *(v121 + 8) = v126;
            *(v121 + 5) = v124;
            *(v121 + 6) = v125;
            v127 = v225;
            v128 = v226;
            v129 = v228;
            *(v121 + 11) = v227;
            *(v121 + 12) = v129;
            *(v121 + 9) = v127;
            *(v121 + 10) = v128;
            *(v121 + 26) = v102;
            v121[216] = 0;
            if (!v103)
            {
              break;
            }

            --v103;
          }
        }

        v32 = v203;
        v130 = swift_allocObject();
        v131 = v201;
        *(v130 + 16) = v200;
        *(v130 + 24) = v131;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v206 = sub_1C0524C9C(0, *(v206 + 2) + 1, 1, v206);
        }

        v133 = *(v206 + 2);
        v132 = *(v206 + 3);
        if (v133 >= v132 >> 1)
        {
          v206 = sub_1C0524C9C((v132 > 1), v133 + 1, 1, v206);
        }

        v134 = v206;
        *(v206 + 2) = v133 + 1;
        v135 = &v134[16 * v133];
        *(v135 + 4) = sub_1C0524EC4;
        *(v135 + 5) = v130;
        v30 = v134;
LABEL_23:
        v28 = v205;
        if (v205 == v32)
        {

          goto LABEL_115;
        }
      }

LABEL_55:
      swift_unownedRetainStrong();
      v58 = *(v41 + 72);
      v200 = *(v41 + 64);
      v201 = v58;

      goto LABEL_56;
    }

    v176 = swift_bridgeObjectRetain_n();
    v29 = MEMORY[0x1E69E7CC0];
    v30 = MEMORY[0x1E69E7CC0];
    v31 = MEMORY[0x1E69E7CC0];
LABEL_115:
    v19 = (v191 - 1) & v191;
    if (*(v30 + 2) == 1)
    {
      v179 = *(v30 + 5);
      v207[0] = *(v30 + 4);
      v207[1] = v179;
      v180 = v194;
      *&v208 = v195;
      *(&v208 + 1) = v194;
      *&v209 = 0;
      BYTE8(v209) = 1;
      sub_1C0524EE0(v176, v177, v178);

      v181 = v192;
      sub_1C095DECC();
      if (v181)
      {

        (*(v187 + 8))(v197, v196);

        goto LABEL_129;
      }

      if (*(v31 + 2))
      {
        *&v208 = v195;
        *(&v208 + 1) = v180;
LABEL_122:

        MEMORY[0x1C68DD690](0x6669746E65646923, 0xEC00000073726569);
        v207[0] = v31;
        *&v209 = 0;
        BYTE8(v209) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17200, &qword_1C09709D8);
        sub_1C0766324();
        sub_1C095DECC();
      }
    }

    else
    {
      v207[0] = v30;
      v182 = v194;
      *&v208 = v195;
      *(&v208 + 1) = v194;
      *&v209 = 0;
      BYTE8(v209) = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F680, &qword_1C0998758);
      sub_1C07664D4();
      v183 = v192;
      sub_1C095DECC();
      if (v183)
      {

        (*(v187 + 8))(v197, v196);

LABEL_129:
      }

      if (*(v31 + 2))
      {
        *&v208 = v195;
        *(&v208 + 1) = v182;
        goto LABEL_122;
      }
    }

    v6 = v187;
    if (*(v29 + 2))
    {
      *&v208 = v195;
      *(&v208 + 1) = v194;
      MEMORY[0x1C68DD690](0x53797469746E6523, 0xEC000000736E6170);
      v207[0] = v29;
      *&v209 = 0;
      BYTE8(v209) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17338, &qword_1C0970B30);
      sub_1C07663FC();
      sub_1C095DECC();
    }

    v20 = v190;
    v5 = v196;
    v16 = v186;
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v188)
    {
      (*(v6 + 8))(v197, v5);
    }

    v19 = *(v16 + 8 * v21);
    ++v20;
    if (v19)
    {
      goto LABEL_18;
    }
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1C0524C64()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

char *sub_1C0524C9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17328, &qword_1C0970B20);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1C0524E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5D34E8;
  if (!qword_1ED5D34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D34E8);
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

unint64_t sub_1C0524EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5BD7D8[0];
  if (!qword_1ED5BD7D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED5BD7D8);
  }

  return result;
}

uint64_t _s9ContinentOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1C0524FD4()
{
  v1 = *v0;
  v2 = 0x65756C6176;
  v3 = 0xD000000000000013;
  if (v1 != 6)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0x6F43656372756F73;
  if (v1 != 4)
  {
    v4 = 0x646E4970756F7267;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x63617073656D616ELL;
  if (v1 != 2)
  {
    v5 = 0x6C696261626F7270;
  }

  if (*v0)
  {
    v2 = 0x6C646E7542707061;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C0525164(uint64_t a1, __n128 a2, __n128 a3, __n128 a4)
{
  *(v4 + 40) = a2;
  *(v4 + 56) = xmmword_1C0983570;
  *(v4 + 72) = 0xD000000000000015;
  *(v4 + 80) = 0x80000001C09CE4C0;
  *(v4 + 88) = xmmword_1C0975360;
  *(v4 + 104) = a3;
  *(v4 + 120) = a4;
  *(v4 + 136) = xmmword_1C0982D00;

  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v4 + 16) = v5;
  *(v4 + 24) = v5;

  *(v4 + 32) = v5;
  return v4;
}

uint64_t sub_1C052529C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C0970C90;
  type metadata accessor for UsoPrimitiveStringBuilder();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  v11[5] = a1;
  v11[6] = a2;
  v11[2] = v12;
  v11[3] = v12;
  v11[4] = v12;
  *(v10 + 32) = v11;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v7 + 56);
  *(v7 + 56) = 0x8000000000000000;
  sub_1C051D194(v10, a3, a4, isUniquelyReferenced_nonNull_native);
  *(v7 + 56) = v15;
  return swift_endAccess();
}

void *UsoEntityBuilder_common_PersonName.init()()
{
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CE250;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C0525608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  a5(a3, a4, v5 + 56, a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C052569C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if (v10 == MEMORY[0x1E69E6158])
  {

    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v16 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C0970C90;
    type metadata accessor for UsoPrimitiveStringBuilder();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E7CC0];
    v18[6] = v21;
  }

  else
  {
    if (v10 != MEMORY[0x1E69E7360])
    {
      type metadata accessor for UsoBuilder();
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      v12 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1C0970C90;
      *(v13 + 32) = v12;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *a3;
      *a3 = 0x8000000000000000;
      v15 = v13;
      goto LABEL_10;
    }

    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v16 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C0970C90;
    type metadata accessor for UsoPrimitiveIntegerBuilder();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E7CC0];
    *(v18 + 48) = 0;
  }

  v18[2] = v19;
  v18[3] = v19;
  v18[4] = v19;
  v18[5] = v16;
  *(v17 + 32) = v18;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *a3;
  *a3 = 0x8000000000000000;
  v15 = v17;
LABEL_10:
  sub_1C051D194(v15, a1, a2, isUniquelyReferenced_nonNull_native);

  *a3 = v22;
  return result;
}

uint64_t sub_1C05258F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C0525688(0xD000000000000016, 0x80000001C09DDDA0, (v2 + 56), a1, a2);
  return swift_endAccess();
}

void *UsoEntityBuilder_common_PhoneNumber.init()()
{
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09CDFB0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C0525AA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C0525B20(0xD000000000000018, 0x80000001C09D8120, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1)
  {
    v8 = qword_1ED5CE288;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = qword_1ED5DA968;
    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    if (*(qword_1ED5DA968 + 16))
    {

      v12 = sub_1C0516A8C(v11, v10);
      v14 = v13;

      if (v14)
      {
        v15 = *(*(v9 + 56) + 8 * v12);
        if (v15 == a2)
        {
LABEL_14:
          (*(v15 + 88))(a1);
          type metadata accessor for CodeGenBase();
          v24 = swift_dynamicCast();
          return (*(*(a3 - 8) + 56))(a4, v24 ^ 1u, 1, a3);
        }
      }
    }

    if (qword_1ED5CE280 != -1)
    {
      swift_once();
    }

    v16 = qword_1ED5DA960;
    if (*(qword_1ED5DA960 + 16))
    {

      v17 = sub_1C0516A8C(v11, v10);
      v19 = v18;

      if (v19)
      {
        v20 = *(*(v16 + 56) + 8 * v17);
        v21 = *(v20 + 16);
        v22 = (v20 + 32);
        while (v21)
        {
          v23 = *v22++;
          v15 = v23;
          --v21;
          if (v23 == a2)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  v26 = *(*(a3 - 8) + 56);

  return v26(a4, 1, 1, a3);
}

uint64_t sub_1C0525D7C(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t UsoEntity_uso_NoEntity.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1C0525E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5D3500;
  if (!qword_1ED5D3500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D3500);
  }

  return result;
}

unint64_t sub_1C0525E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5BD7D0;
  if (!qword_1ED5BD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BD7D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UsoIdentifier.NluComponent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9ContinentOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_1C0526028@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for UsoEntity();
  v5 = swift_allocObject();
  result = UsoEntity.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1C0526080(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C05260E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t UsoIdentifier.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F858, &qword_1C099A198);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  v55 = 1;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C0525E40(v9, v10, v11);
  sub_1C095E04C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v46[0]) = 0;
  v12 = sub_1C095DDEC();
  v40 = v13;
  LOBYTE(v46[0]) = 1;
  v14 = sub_1C095DDEC();
  v39 = v15;
  v37 = v14;
  LOBYTE(v46[0]) = 2;
  v36 = sub_1C095DD7C();
  v38 = v16;
  LOBYTE(v46[0]) = 3;
  v35 = sub_1C095DD8C();
  v58 = v17 & 1;
  LOBYTE(v41) = 4;
  sub_1C0526674(v35, v17, v18);
  sub_1C095DDBC();
  v19 = LOBYTE(v46[0]);
  LOBYTE(v46[0]) = 5;
  v20 = sub_1C095DDDC();
  v34 = v19;
  v57 = BYTE4(v20) & 1;
  LOBYTE(v46[0]) = 6;
  v21 = v20;
  v32 = sub_1C095DDDC();
  v56 = BYTE4(v32) & 1;
  v59 = 7;
  v33 = sub_1C095DDAC();
  v23 = v22;
  (*(v6 + 8))(v8, v5);
  v23 &= 1u;
  v55 = v23;
  *&v41 = v12;
  *(&v41 + 1) = v40;
  *&v42 = v37;
  *(&v42 + 1) = v39;
  *&v43 = v36;
  *(&v43 + 1) = v38;
  *&v44 = v35;
  v31 = v58;
  BYTE8(v44) = v58;
  BYTE9(v44) = v34;
  HIDWORD(v44) = v21;
  v30 = v57;
  v45[0] = v57;
  v24 = v32;
  *&v45[4] = v32;
  v25 = v56;
  v45[8] = v56;
  v26 = v33;
  *&v45[16] = v33;
  v45[24] = v23;
  v27 = v42;
  *a2 = v41;
  a2[1] = v27;
  v28 = *v45;
  a2[3] = v44;
  a2[4] = v28;
  a2[2] = v43;
  *(a2 + 73) = *&v45[9];
  sub_1C0518B04(&v41, v46);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v46[0] = v12;
  v46[1] = v40;
  v46[2] = v37;
  v46[3] = v39;
  v46[4] = v36;
  v46[5] = v38;
  v46[6] = v35;
  v47 = v31;
  v48 = v34;
  v49 = v21;
  v50 = v30;
  v51 = v24;
  v52 = v25;
  v53 = v26;
  v54 = v23;
  return sub_1C0518B60(v46);
}

unint64_t sub_1C0526674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5D34E0;
  if (!qword_1ED5D34E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D34E0);
  }

  return result;
}

SiriOntology::UsoIdentifier::NluComponent_optional __swiftcall UsoIdentifier.NluComponent.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t storeEnumTagSinglePayload for UsoIdentifier.NluComponent(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1C0526818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5D34C8;
  if (!qword_1ED5D34C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D34C8);
  }

  return result;
}

void *sub_1C052686C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C051B318(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12SiriOntology19IdentifierNamespaceO_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1C0526B38(void *result, int a2)
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

uint64_t sub_1C0526C08@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C0526C64@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1C0527048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C095D38C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C0527144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C095D38C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1C052724C()
{

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t get_enum_tag_for_layout_string_12SiriOntology15TerminalElementV4TimeVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

double sub_1C052760C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  swift_beginAccess();
  result = *(v3 + 16);
  *a2 = result;
  return result;
}

uint64_t sub_1C0527670@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1C05276CC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 41);
  return result;
}

uint64_t sub_1C0527728@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 42);
  return result;
}

uint64_t sub_1C0527784@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 44);
  return result;
}

uint64_t sub_1C05277E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1C052783C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 52);
  return result;
}

uint64_t getEnumTagSinglePayload for Com_Apple_Siri_Product_Proto_MatchType(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Com_Apple_Siri_Product_Proto_MatchType(uint64_t result, int a2, int a3)
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

uint64_t sub_1C05279F8(uint64_t a1)
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

uint64_t sub_1C0527A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C0527AC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0527B64(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17758, &unk_1C0971240);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C0527C94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17758, &unk_1C0971240);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C0527DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_1C095D38C();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1C0527EC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_1C095D38C();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1C0527FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C0528084(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0528128(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17768, &unk_1C0971250);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17770, &unk_1C099BB00);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[9]];

  return v16(v17, a2, v15);
}

char *sub_1C0528300(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17768, &unk_1C0971250);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17770, &unk_1C099BB00);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[9]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C05284E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C052854C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C05285BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1C095D38C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C05286EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1C095D38C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C052881C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C095D38C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E10, &unk_1C0971270);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1C052891C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C095D38C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E10, &unk_1C0971270);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1C0528A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C095D38C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C0528AE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C095D38C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C0528B9C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1C0528C48(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0528CF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C0528F2C@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Siri_Product_Proto_Period.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C05290D8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1C095D38C();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1C0529184(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0529224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1C095D38C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C052929C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1C095D38C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C0529318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C38, &unk_1C0973550);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C0529448(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C38, &unk_1C0973550);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C0529578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C0529624(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C05296C8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[14];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C40, &unk_1C099BB60);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[15];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C48, &unk_1C0973560);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[16];

  return v15(v16, a2, v14);
}

uint64_t sub_1C052984C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
    return result;
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[14];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C40, &unk_1C099BB60);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[15];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C48, &unk_1C0973560);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[16];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1C05299D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 33);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1C095D38C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C0529A84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 33) = a2 + 1;
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0529B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C095D38C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C0529BE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C095D38C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C0529CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C0529D4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0529E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1C095D38C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C0529E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1C095D38C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C0529EF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C052A030@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = type metadata accessor for DynamicTask(0, *(a1 + a2 - 8), a2, a4);
  result = DynamicTask.subscript.getter(v5, v6, v7);
  *a3 = result;
  return result;
}

uint64_t sub_1C052A098@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t x3_0@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a2 + a3 - 16);
  v7 = *(a2 + a3 - 8);
  v8 = *a2;
  v9 = type metadata accessor for DynamicTask(0, *(a2 + a3 - 32), a3, x3_0);
  return DynamicTask<A>.subscript.getter(v8, v9, v6, v7, a4);
}

__n128 sub_1C052A138(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1C052A144@<X0>(uint64_t **a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  v5 = *(a1 + a2 - 16);
  v6 = *(a1 + a2 - 8);
  v7 = *a1;
  v8 = type metadata accessor for DynamicTask(0, *(a1 + a2 - 32), a2, a4);
  result = DynamicTask<A>.subscript.getter(v7, v8, v5, v6);
  *a3 = result;
  return result;
}

uint64_t sub_1C052A1BC@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t x3_0@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a2 + a3 - 16);
  v7 = *a2;
  v8 = type metadata accessor for DynamicTask(0, *(a2 + a3 - 32), a3, x3_0);
  return DynamicTask<A>.subscript.getter(v7, v8, v6, a4);
}

void sub_1C052A650(unint64_t *a1@<X8>)
{
  v2 = 0x80000001C09B28B0;
  v3 = 0xD000000000000012;
  if (*v1)
  {
    v3 = 0x6C61757145746F6ELL;
    v2 = 0xE900000000000073;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1C052A6CC@<X0>(uint64_t *a1@<X8>)
{
  result = UsoEntity_common_Number.Operators.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C052ACEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C052AD98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C052AE44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_unownedRetainStrong();
  v4 = *(v3 + 112);

  *a2 = v4;
  return result;
}

uint64_t sub_1C052AEB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C052AF28@<X0>(uint64_t *a1@<X8>)
{
  result = Metadata.identifiers.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C052AF98@<X0>(uint64_t *a1@<X8>)
{
  result = Metadata.utteranceAlignments.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C052AFFC@<X0>(uint64_t *a1@<X8>)
{
  result = Metadata.entitySpans.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C052B068()
{

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C052B0D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C052B4DC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20));
  v4 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__tapToEdit;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C052B548@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20));
  v4 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__startTimestamp;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C052C7F8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C052C928(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C052CA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C052CB04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C052CBB0(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7D8, &qword_1C09933A8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7E0, &qword_1C09933B0);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[10]];

  return v16(v17, a2, v15);
}

char *sub_1C052CD88(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7D8, &qword_1C09933A8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7E0, &qword_1C09933B0);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[10]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C052CF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1C095D38C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7E8, &qword_1C09933B8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1C052D0B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1C095D38C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7E8, &qword_1C09933B8);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C052D34C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_1C052D4D0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1C052D6A4(unint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1C052D750(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1C052D824(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E838, &qword_1C09933E8);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[10]];

  return v17(v18, a2, v16);
}

char *sub_1C052DA50(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E838, &qword_1C09933E8);
  v17 = *(*(v16 - 8) + 56);
  v18 = &v5[a4[10]];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C052DC7C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C095D38C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_1C052DE28(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C095D38C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1C052DFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C052E110(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C052E240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C052E2EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C052E390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C052E4C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C052E7E8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  v5 = (a1 + *(result + 44));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1C052E830(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  v5 = a2 + *(result + 44);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t sub_1C052E86C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  v5 = (a1 + *(result + 48));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1C052E8B4(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  v5 = a2 + *(result + 48);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t sub_1C052E8F8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C052EA28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C052EB58(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC0, &unk_1C0997A50);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[11];

  return v16(v17, a2, v15);
}

uint64_t sub_1C052ED30(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC0, &unk_1C0997A50);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C052EF58(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_1C052F0DC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1C052F260(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C052F390(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C052F4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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

uint64_t sub_1C052F56C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
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

uint64_t sub_1C052F71C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C052F754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1C095D38C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C052F7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1C095D38C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C052F850()
{

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C052F8C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C052F99C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = type metadata accessor for Entity(0, *(a1 + a2 - 8), a2, a4);
  result = Entity.subscript.getter(v5, v6, v7);
  *a3 = result;
  a3[1] = v9;
  return result;
}

uint64_t sub_1C052FA54@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = type metadata accessor for Entity(0, *(a1 + a2 - 8), a2, a4);
  result = Entity.subscript.getter(v5, v6, v7);
  *a3 = result;
  *(a3 + 8) = v9 & 1;
  return result;
}

uint64_t sub_1C052FB74@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  v5 = *(a1 + a2 - 8);
  v6 = *a1;
  v7 = type metadata accessor for Entity(0, *(a1 + a2 - 16), a2, a4);
  result = Entity<A>.subscript.getter(v6, v7, v5);
  *a3 = result;
  a3[1] = v9;
  return result;
}

__n128 sub_1C052FBDC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C052FBE8@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v5 = *(a1 + a2 - 8);
  v6 = *a1;
  v7 = type metadata accessor for Entity(0, *(a1 + a2 - 16), a2, a4);
  result = Entity<A>.subscript.getter(v6, v7, v5);
  *a3 = result;
  *(a3 + 8) = v9 & 1;
  return result;
}

char *sub_1C052FC58@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, char **a3@<X8>, uint64_t a4@<X3>)
{
  v5 = *(a1 + a2 - 8);
  v6 = *a1;
  v7 = type metadata accessor for Entity(0, *(a1 + a2 - 16), a2, a4);
  result = Entity<A>.subscript.getter(v6, v7, v5);
  *a3 = result;
  return result;
}

uint64_t sub_1C052FCC0@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t x3_0@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a2 + a3 - 16);
  v7 = *(a2 + a3 - 8);
  v8 = *a2;
  v9 = type metadata accessor for Entity(0, *(a2 + a3 - 32), a3, x3_0);
  return Entity<A>.subscript.getter(v8, v9, v6, v7, a4);
}

__n128 sub_1C052FD38(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1C052FD44@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t x3_0@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a2 + a3 - 8);
  v7 = *a2;
  v8 = type metadata accessor for Entity(0, *(a2 + a3 - 16), a3, x3_0);
  return Entity<A>.subscript.getter(v7, v8, v6, a4);
}

uint64_t sub_1C052FDAC@<X0>(uint64_t **a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  v5 = *(a1 + a2 - 16);
  v6 = *(a1 + a2 - 8);
  v7 = *a1;
  v8 = type metadata accessor for Entity(0, *(a1 + a2 - 32), a2, a4);
  result = Entity<A>.subscript.getter(v7, v8, v5, v6);
  *a3 = result;
  return result;
}

uint64_t sub_1C052FE24@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t x3_0@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a2 + a3 - 8);
  v7 = *a2;
  v8 = type metadata accessor for Entity(0, *(a2 + a3 - 24), a3, x3_0);
  return Entity<A>.subscript.getter(v7, v8, v6, a4);
}

__n128 sub_1C052FE90(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1C052FEC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 152);
}

uint64_t sub_1C052FF18()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C0530300()
{

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C0530378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C05304A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C05305D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1C0530628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C05306D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0530778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  v6 = sub_1C095D38C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C05307F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 40);
  v7 = sub_1C095D38C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C05308A4(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17430, &qword_1C0970CD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FC30, &qword_1C09A5A68);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_1C0530A28(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17430, &qword_1C0970CD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FC30, &qword_1C09A5A68);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1C0530BAC(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17430, &qword_1C0970CD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FC38, &qword_1C09A5A70);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[8]];

  return v15(v16, a2, v14);
}

char *sub_1C0530D30(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17430, &qword_1C0970CD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FC38, &qword_1C09A5A70);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1C0531508@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Siri_Product_Proto_Value.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C053163C@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Siri_Product_Proto_Value.semanticTagValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0531770()
{

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C0531828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1C095D38C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C0531958(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1C095D38C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C0531A94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0531B38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0531BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C0531C88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0531D80(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C0531F3C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 16) + 48);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v6 = sub_1C0516A8C(a1, a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = *(*(v3 + 56) + 8 * v6);

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_14:

    return 0;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1C68DDAD0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v10 = *(v8 + 32);
  }

  if (!v10)
  {
    return 0;
  }

  sub_1C0519574();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

void *sub_1C0532090(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 16) + 48);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v6 = sub_1C0516A8C(a1, a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_18;
  }

  v8 = *(*(v3 + 56) + 8 * v6);

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_18:

    return 0;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v10 = sub_1C0518574();
  if (!v10)
  {

    return 0;
  }

  v11 = v10;
  if (v10[4])
  {
    swift_retain_n();
    sub_1C0519574();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
  if (swift_dynamicCast())
  {
    v13 = v14;
    v12 = v15;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C8, &qword_1C096DC98);
  result = swift_allocObject();
  result[2] = v11;
  result[3] = v13;
  result[4] = v12;
  return result;
}

uint64_t sub_1C0532268(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(*(v3 + 16) + 48);
  if (!*(v5 + 16))
  {
    goto LABEL_12;
  }

  v8 = sub_1C0516A8C(a1, a2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = *(*(v5 + 56) + 8 * v8);

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_11:

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1C68DDAD0](0, v10);
    goto LABEL_8;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);

LABEL_8:

LABEL_13:
    v13 = a3(v12);

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0532380(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(*(v3 + 16) + 48);
  if (*(v5 + 16))
  {

    v8 = sub_1C0516A8C(a1, a2);
    if (v9)
    {
      v10 = *(*(v5 + 56) + 8 * v8);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = a3(v10, a2);

  return v11;
}

uint64_t Uso_VerbTemplate_NoVerb.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C0533048()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168B0, &qword_1C096DC80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C0961330;
  *(v0 + 32) = 0xD00000000000001BLL;
  *(v0 + 40) = 0x80000001C09C4540;
  *(v0 + 48) = type metadata accessor for UsoTask_noVerb_common_EventTrigger(0);
  *(v0 + 56) = 0xD000000000000022;
  *(v0 + 64) = 0x80000001C09C4560;
  *(v0 + 72) = type metadata accessor for UsoTask_noVerb_commonTimer_TimerAttribute(0);
  *(v0 + 80) = 0xD00000000000001BLL;
  *(v0 + 88) = 0x80000001C09C4590;
  *(v0 + 96) = type metadata accessor for UsoTask_noVerb_common_VoiceTrigger(0);
  *(v0 + 104) = 0xD000000000000019;
  *(v0 + 112) = 0x80000001C09C45B0;
  *(v0 + 120) = type metadata accessor for UsoTask_preview_common_AppEntity(0);
  *(v0 + 128) = 0xD000000000000018;
  *(v0 + 136) = 0x80000001C09C45D0;
  *(v0 + 144) = type metadata accessor for UsoTask_create_common_AppEntity(0);
  *(v0 + 152) = 0xD000000000000017;
  *(v0 + 160) = 0x80000001C09C45F0;
  *(v0 + 168) = type metadata accessor for UsoTask_paste_common_AppEntity(0);
  *(v0 + 176) = 0xD00000000000001BLL;
  *(v0 + 184) = 0x80000001C09C4610;
  *(v0 + 192) = type metadata accessor for UsoTask_summarise_common_AppEntity(0);
  *(v0 + 200) = 0xD000000000000018;
  *(v0 + 208) = 0x80000001C09C4630;
  *(v0 + 216) = type metadata accessor for UsoTask_noVerb_common_AppEntity(0);
  *(v0 + 224) = 0xD000000000000018;
  *(v0 + 232) = 0x80000001C09C4650;
  *(v0 + 240) = type metadata accessor for UsoTask_update_common_AppEntity(0);
  *(v0 + 248) = 0xD00000000000001DLL;
  *(v0 + 256) = 0x80000001C09C4670;
  *(v0 + 264) = type metadata accessor for UsoTask_skipForward_common_AppEntity(0);
  *(v0 + 272) = 0xD00000000000001ELL;
  *(v0 + 280) = 0x80000001C09C4690;
  *(v0 + 288) = type metadata accessor for UsoTask_skipBackward_common_AppEntity(0);
  *(v0 + 296) = 0xD00000000000001DLL;
  *(v0 + 304) = 0x80000001C09C46B0;
  *(v0 + 312) = type metadata accessor for UsoTask_enterMarkup_common_AppEntity(0);
  *(v0 + 320) = 0xD000000000000016;
  *(v0 + 328) = 0x80000001C09C46D0;
  *(v0 + 336) = type metadata accessor for UsoTask_copy_common_AppEntity(0);
  *(v0 + 344) = 0xD000000000000016;
  *(v0 + 352) = 0x80000001C09C46F0;
  *(v0 + 360) = type metadata accessor for UsoTask_like_common_AppEntity(0);
  *(v0 + 368) = 0xD000000000000018;
  *(v0 + 376) = 0x80000001C09C4710;
  *(v0 + 384) = type metadata accessor for UsoTask_unlike_common_AppEntity(0);
  *(v0 + 392) = 0xD000000000000017;
  *(v0 + 400) = 0x80000001C09C4730;
  *(v0 + 408) = type metadata accessor for UsoTask_close_common_AppEntity(0);
  *(v0 + 416) = 0xD000000000000018;
  *(v0 + 424) = 0x80000001C09C4750;
  *(v0 + 432) = type metadata accessor for UsoTask_delete_common_AppEntity(0);
  *(v0 + 440) = 0xD000000000000015;
  *(v0 + 448) = 0x80000001C09C4770;
  *(v0 + 456) = type metadata accessor for UsoTask_cut_common_AppEntity(0);
  *(v0 + 464) = 0xD00000000000001CLL;
  *(v0 + 472) = 0x80000001C09C4790;
  *(v0 + 480) = type metadata accessor for UsoTask_exitMarkup_common_AppEntity(0);
  *(v0 + 488) = 0xD000000000000018;
  *(v0 + 496) = 0x80000001C09C47B0;
  *(v0 + 504) = type metadata accessor for UsoTask_adjust_common_AppEntity(0);
  *(v0 + 512) = 0xD000000000000016;
  *(v0 + 520) = 0x80000001C09C47D0;
  *(v0 + 528) = type metadata accessor for UsoTask_open_common_AppEntity(0);
  *(v0 + 536) = 0xD000000000000020;
  *(v0 + 544) = 0x80000001C09C47F0;
  *(v0 + 552) = type metadata accessor for UsoTask_noVerb_common_DurationComponent(0);
  *(v0 + 560) = 0xD00000000000001CLL;
  *(v0 + 568) = 0x80000001C09C4820;
  *(v0 + 576) = type metadata accessor for UsoTask_noVerb_common_PhoneCallMode(0);
  *(v0 + 584) = 0xD000000000000025;
  *(v0 + 592) = 0x80000001C09C4840;
  *(v0 + 600) = type metadata accessor for UsoTask_noVerb_appleContact_ContactAttribute(0);
  *(v0 + 608) = 0xD00000000000001DLL;
  *(v0 + 616) = 0x80000001C09C4870;
  *(v0 + 624) = type metadata accessor for UsoTask_noVerb_common_PersonProperty(0);
  *(v0 + 632) = 0xD000000000000025;
  *(v0 + 640) = 0x80000001C09C4890;
  *(v0 + 648) = type metadata accessor for UsoTask_checkExistence_common_PersonProperty(0);
  *(v0 + 656) = 0xD000000000000020;
  *(v0 + 664) = 0x80000001C09C48C0;
  *(v0 + 672) = type metadata accessor for UsoTask_summarise_common_PersonProperty(0);
  *(v0 + 680) = 0xD00000000000001CLL;
  *(v0 + 688) = 0x80000001C09C48F0;
  *(v0 + 696) = type metadata accessor for UsoTask_state_common_PersonProperty(0);
  *(v0 + 704) = 0xD00000000000001BLL;
  *(v0 + 712) = 0x80000001C09C4910;
  *(v0 + 720) = type metadata accessor for UsoTask_justify_common_SiriOpinion(0);
  *(v0 + 728) = 0xD00000000000001ALL;
  *(v0 + 736) = 0x80000001C09C4930;
  *(v0 + 744) = type metadata accessor for UsoTask_noVerb_common_SiriOpinion(0);
  *(v0 + 752) = 0xD00000000000001DLL;
  *(v0 + 760) = 0x80000001C09C4950;
  *(v0 + 768) = type metadata accessor for UsoTask_summarise_common_SiriOpinion(0);
  *(v0 + 776) = 0xD000000000000022;
  *(v0 + 784) = 0x80000001C09C4970;
  *(v0 + 792) = type metadata accessor for UsoTask_checkExistence_common_SiriOpinion(0);
  *(v0 + 800) = 0xD000000000000023;
  *(v0 + 808) = 0x80000001C09C49A0;
  *(v0 + 816) = type metadata accessor for UsoTask_noVerb_common_TemperatureComponent(0);
  *(v0 + 824) = 0xD00000000000001BLL;
  *(v0 + 832) = 0x80000001C09C49D0;
  *(v0 + 840) = type metadata accessor for UsoTask_noVerb_common_SearchObject(0);
  *(v0 + 848) = 0xD000000000000018;
  *(v0 + 856) = 0x80000001C09C49F0;
  *(v0 + 864) = type metadata accessor for UsoTask_update_common_Voicemail(0);
  *(v0 + 872) = 0xD000000000000016;
  *(v0 + 880) = 0x80000001C09C4A10;
  *(v0 + 888) = type metadata accessor for UsoTask_call_common_Voicemail(0);
  *(v0 + 896) = 0xD00000000000001ALL;
  *(v0 + 904) = 0x80000001C09C4A30;
  *(v0 + 912) = type metadata accessor for UsoTask_previous_common_Voicemail(0);
  *(v0 + 920) = 0xD000000000000016;
  *(v0 + 928) = 0x80000001C09C4A50;
  *(v0 + 936) = type metadata accessor for UsoTask_stop_common_Voicemail(0);
  *(v0 + 944) = 0xD000000000000016;
  *(v0 + 952) = 0x80000001C09C4A70;
  *(v0 + 960) = type metadata accessor for UsoTask_play_common_Voicemail(0);
  *(v0 + 968) = 0xD00000000000001ALL;
  *(v0 + 976) = 0x80000001C09C4A90;
  *(v0 + 984) = type metadata accessor for UsoTask_continue_common_Voicemail(0);
  *(v0 + 992) = 0xD000000000000019;
  *(v0 + 1000) = 0x80000001C09C4AB0;
  *(v0 + 1008) = type metadata accessor for UsoTask_request_common_Voicemail(0);
  *(v0 + 1016) = 0xD00000000000001BLL;
  *(v0 + 1024) = 0x80000001C09C4AD0;
  *(v0 + 1032) = type metadata accessor for UsoTask_summarise_common_Voicemail(0);
  *(v0 + 1040) = 0xD000000000000016;
  *(v0 + 1048) = 0x80000001C09C4AF0;
  *(v0 + 1056) = type metadata accessor for UsoTask_skip_common_Voicemail(0);
  *(v0 + 1064) = 0xD000000000000016;
  *(v0 + 1072) = 0x80000001C09C4B10;
  *(v0 + 1080) = type metadata accessor for UsoTask_read_common_Voicemail(0);
  *(v0 + 1088) = 0xD000000000000018;
  *(v0 + 1096) = 0x80000001C09C4B30;
  *(v0 + 1104) = type metadata accessor for UsoTask_delete_common_Voicemail(0);
  *(v0 + 1112) = 0xD000000000000018;
  *(v0 + 1120) = 0x80000001C09C4B50;
  *(v0 + 1128) = type metadata accessor for UsoTask_noVerb_common_Voicemail(0);
  *(v0 + 1136) = 0xD000000000000018;
  *(v0 + 1144) = 0x80000001C09C4B70;
  *(v0 + 1152) = type metadata accessor for UsoTask_repeat_common_Voicemail(0);
  *(v0 + 1160) = 0xD000000000000017;
  *(v0 + 1168) = 0x80000001C09C4B90;
  *(v0 + 1176) = type metadata accessor for UsoTask_pause_common_Voicemail(0);
  *(v0 + 1184) = 0xD000000000000018;
  *(v0 + 1192) = 0x80000001C09C4BB0;
  *(v0 + 1200) = type metadata accessor for UsoTask_resume_common_Voicemail(0);
  *(v0 + 1208) = 0xD000000000000026;
  *(v0 + 1216) = 0x80000001C09C4BD0;
  *(v0 + 1224) = type metadata accessor for UsoTask_request_common_RecurringDateTimeRange(0);
  *(v0 + 1232) = 0xD000000000000025;
  *(v0 + 1240) = 0x80000001C09C4C00;
  *(v0 + 1248) = type metadata accessor for UsoTask_noVerb_common_RecurringDateTimeRange(0);
  *(v0 + 1256) = 0xD000000000000028;
  *(v0 + 1264) = 0x80000001C09C4C30;
  *(v0 + 1272) = type metadata accessor for UsoTask_summarise_common_RecurringDateTimeRange(0);
  *(v0 + 1280) = 0xD00000000000002DLL;
  *(v0 + 1288) = 0x80000001C09C4C60;
  *(v0 + 1296) = type metadata accessor for UsoTask_checkExistence_common_RecurringDateTimeRange(0);
  *(v0 + 1304) = 0xD000000000000023;
  *(v0 + 1312) = 0x80000001C09C4C90;
  *(v0 + 1320) = type metadata accessor for UsoTask_read_common_RecurringDateTimeRange(0);
  *(v0 + 1328) = 0xD000000000000026;
  *(v0 + 1336) = 0x80000001C09C4CC0;
  *(v0 + 1344) = type metadata accessor for UsoTask_convert_common_RecurringDateTimeRange(0);
  *(v0 + 1352) = 0xD000000000000016;
  *(v0 + 1360) = 0x80000001C09C4CF0;
  *(v0 + 1368) = type metadata accessor for UsoTask_create_common_Workout(0);
  *(v0 + 1376) = 0xD000000000000016;
  *(v0 + 1384) = 0x80000001C09C4D10;
  *(v0 + 1392) = type metadata accessor for UsoTask_noVerb_common_Workout(0);
  *(v0 + 1400) = 0xD000000000000019;
  *(v0 + 1408) = 0x80000001C09C4D30;
  *(v0 + 1416) = type metadata accessor for UsoTask_summarise_common_Workout(0);
  *(v0 + 1424) = 0xD000000000000016;
  *(v0 + 1432) = 0x80000001C09C4D50;
  *(v0 + 1440) = type metadata accessor for UsoTask_update_common_Workout(0);
  *(v0 + 1448) = 0xD000000000000016;
  *(v0 + 1456) = 0x80000001C09C4D70;
  *(v0 + 1464) = type metadata accessor for UsoTask_cancel_common_Workout(0);
  *(v0 + 1472) = 0xD000000000000014;
  *(v0 + 1480) = 0x80000001C09C4D90;
  *(v0 + 1488) = type metadata accessor for UsoTask_stop_common_Workout(0);
  *(v0 + 1496) = 0xD000000000000015;
  *(v0 + 1504) = 0x80000001C09C4DB0;
  *(v0 + 1512) = type metadata accessor for UsoTask_pause_common_Workout(0);
  *(v0 + 1520) = 0xD000000000000016;
  *(v0 + 1528) = 0x80000001C09C4DD0;
  *(v0 + 1536) = type metadata accessor for UsoTask_resume_common_Workout(0);
  *(v0 + 1544) = 0xD000000000000022;
  *(v0 + 1552) = 0x80000001C09C4DF0;
  *(v0 + 1560) = type metadata accessor for UsoTask_noVerb_commonStock_StockAttribute(0);
  *(v0 + 1568) = 0xD000000000000021;
  *(v0 + 1576) = 0x80000001C09C4E20;
  *(v0 + 1584) = type metadata accessor for UsoTask_softwareUpdate_common_UserEntity(0);
  *(v0 + 1592) = 0xD00000000000001ALL;
  *(v0 + 1600) = 0x80000001C09C4E50;
  *(v0 + 1608) = type metadata accessor for UsoTask_request_common_UserEntity(0);
  *(v0 + 1616) = 0xD00000000000001BLL;
  *(v0 + 1624) = 0x80000001C09C4E70;
  *(v0 + 1632) = type metadata accessor for UsoTask_stopPing_common_UserEntity(0);
  *(v0 + 1640) = 0xD00000000000001CLL;
  *(v0 + 1648) = 0x80000001C09C4E90;
  *(v0 + 1656) = type metadata accessor for UsoTask_summarise_common_UserEntity(0);
  *(v0 + 1664) = 0xD000000000000017;
  *(v0 + 1672) = 0x80000001C09C4EB0;
  *(v0 + 1680) = type metadata accessor for UsoTask_find_common_UserEntity(0);
  *(v0 + 1688) = 0xD00000000000001ELL;
  *(v0 + 1696) = 0x80000001C09C4ED0;
  *(v0 + 1704) = type metadata accessor for UsoTask_getLocation_common_UserEntity(0);
  *(v0 + 1712) = 0xD000000000000019;
  *(v0 + 1720) = 0x80000001C09C4EF0;
  *(v0 + 1728) = type metadata accessor for UsoTask_reping_common_UserEntity(0);
  *(v0 + 1736) = 0xD000000000000021;
  *(v0 + 1744) = 0x80000001C09C4F10;
  *(v0 + 1752) = type metadata accessor for UsoTask_checkExistence_common_UserEntity(0);
  *(v0 + 1760) = 0xD000000000000017;
  *(v0 + 1768) = 0x80000001C09C4F40;
  *(v0 + 1776) = type metadata accessor for UsoTask_ping_common_UserEntity(0);
  *(v0 + 1784) = 0xD000000000000018;
  *(v0 + 1792) = 0x80000001C09C4F60;
  *(v0 + 1800) = type metadata accessor for UsoTask_reset_common_UserEntity(0);
  *(v0 + 1808) = 0xD000000000000027;
  *(v0 + 1816) = 0x80000001C09C4F80;
  *(v0 + 1824) = type metadata accessor for UsoTask_discoverCapabilities_common_UserEntity(0);
  *(v0 + 1832) = 0xD000000000000020;
  *(v0 + 1840) = 0x80000001C09C4FB0;
  *(v0 + 1848) = type metadata accessor for UsoTask_checkLocation_common_UserEntity(0);
  *(v0 + 1856) = 0xD00000000000001ALL;
  *(v0 + 1864) = 0x80000001C09C4FE0;
  *(v0 + 1872) = type metadata accessor for UsoTask_restart_common_UserEntity(0);
  *(v0 + 1880) = 0xD000000000000019;
  *(v0 + 1888) = 0x80000001C09C5000;
  *(v0 + 1896) = type metadata accessor for UsoTask_noVerb_common_UserEntity(0);
  *(v0 + 1904) = 0xD000000000000017;
  *(v0 + 1912) = 0x80000001C09C5020;
  *(v0 + 1920) = type metadata accessor for UsoTask_noVerb_common_Religion(0);
  *(v0 + 1928) = 0xD000000000000018;
  *(v0 + 1936) = 0x80000001C09C5040;
  *(v0 + 1944) = type metadata accessor for UsoTask_hear_common_SiriContent(0);
  *(v0 + 1952) = 0xD000000000000018;
  *(v0 + 1960) = 0x80000001C09C5060;
  *(v0 + 1968) = type metadata accessor for UsoTask_tell_common_SiriContent(0);
  *(v0 + 1976) = 0xD00000000000001ALL;
  *(v0 + 1984) = 0x80000001C09C5080;
  *(v0 + 1992) = type metadata accessor for UsoTask_repeat_common_SiriContent(0);
  *(v0 + 2000) = 0xD00000000000001ALL;
  *(v0 + 2008) = 0x80000001C09C50A0;
  *(v0 + 2016) = type metadata accessor for UsoTask_noVerb_common_SiriContent(0);
  *(v0 + 2024) = 0xD00000000000001ALL;
  *(v0 + 2032) = 0x80000001C09C50C0;
  *(v0 + 2040) = type metadata accessor for UsoTask_unlike_common_SiriContent(0);
  *(v0 + 2048) = 0xD000000000000028;
  *(v0 + 2056) = 0x80000001C09C50E0;
  *(v0 + 2064) = type metadata accessor for UsoTask_discoverCapabilities_common_SiriContent(0);
  *(v0 + 2072) = 0xD000000000000018;
  *(v0 + 2080) = 0x80000001C09C5110;
  *(v0 + 2088) = type metadata accessor for UsoTask_like_common_SiriContent(0);
  *(v0 + 2096) = 0xD00000000000001ALL;
  *(v0 + 2104) = 0x80000001C09C5130;
  *(v0 + 2112) = type metadata accessor for UsoTask_noVerb_common_MonthOfYear(0);
  *(v0 + 2120) = 0xD00000000000001ALL;
  *(v0 + 2128) = 0x80000001C09C5150;
  *(v0 + 2136) = type metadata accessor for UsoTask_noVerb_common_PhoneNumber(0);
  *(v0 + 2144) = 0xD000000000000014;
  *(v0 + 2152) = 0x80000001C09C5170;
  *(v0 + 2160) = type metadata accessor for UsoTask_create_common_Clock(0);
  *(v0 + 2168) = 0xD000000000000017;
  *(v0 + 2176) = 0x80000001C09C5190;
  *(v0 + 2184) = type metadata accessor for UsoTask_summarise_common_Clock(0);
  *(v0 + 2192) = 0xD000000000000014;
  *(v0 + 2200) = 0x80000001C09C51B0;
  *(v0 + 2208) = type metadata accessor for UsoTask_noVerb_common_Clock(0);
  *(v0 + 2216) = 0xD000000000000014;
  *(v0 + 2224) = 0x80000001C09C51D0;
  *(v0 + 2232) = type metadata accessor for UsoTask_delete_common_Clock(0);
  *(v0 + 2240) = 0xD000000000000025;
  *(v0 + 2248) = 0x80000001C09C51F0;
  *(v0 + 2256) = type metadata accessor for UsoTask_noVerb_appleMessage_MessageAttribute(0);
  *(v0 + 2264) = 0xD000000000000021;
  *(v0 + 2272) = 0x80000001C09C5220;
  *(v0 + 2280) = type metadata accessor for UsoTask_checkExistence_common_NoteFolder(0);
  *(v0 + 2288) = 0xD00000000000001CLL;
  *(v0 + 2296) = 0x80000001C09C5250;
  *(v0 + 2304) = type metadata accessor for UsoTask_summarise_common_NoteFolder(0);
  *(v0 + 2312) = 0xD00000000000001ALL;
  *(v0 + 2320) = 0x80000001C09C5270;
  *(v0 + 2328) = type metadata accessor for UsoTask_request_common_NoteFolder(0);
  *(v0 + 2336) = 0xD000000000000019;
  *(v0 + 2344) = 0x80000001C09C5290;
  *(v0 + 2352) = type metadata accessor for UsoTask_update_common_NoteFolder(0);
  *(v0 + 2360) = 0xD000000000000019;
  *(v0 + 2368) = 0x80000001C09C52B0;
  *(v0 + 2376) = type metadata accessor for UsoTask_create_common_NoteFolder(0);
  *(v0 + 2384) = 0xD000000000000019;
  *(v0 + 2392) = 0x80000001C09C52D0;
  *(v0 + 2400) = type metadata accessor for UsoTask_delete_common_NoteFolder(0);
  *(v0 + 2408) = 0xD000000000000019;
  *(v0 + 2416) = 0x80000001C09C52F0;
  *(v0 + 2424) = type metadata accessor for UsoTask_noVerb_common_NoteFolder(0);
  *(v0 + 2432) = 0xD000000000000022;
  *(v0 + 2440) = 0x80000001C09C5310;
  *(v0 + 2448) = type metadata accessor for UsoTask_noVerb_commonAlarm_AlarmAttribute(0);
  *(v0 + 2456) = 0xD000000000000026;
  *(v0 + 2464) = 0x80000001C09C5340;
  *(v0 + 2472) = type metadata accessor for UsoTask_noVerb_commonContact_ContactAttribute(0);
  *(v0 + 2480) = 0xD00000000000001DLL;
  *(v0 + 2488) = 0x80000001C09C5370;
  *(v0 + 2496) = type metadata accessor for UsoTask_noVerb_common_DeviceProperty(0);
  *(v0 + 2504) = 0xD00000000000001ELL;
  *(v0 + 2512) = 0x80000001C09C5390;
  *(v0 + 2520) = type metadata accessor for UsoTask_noVerb_common_MeasurementUnit(0);
  *(v0 + 2528) = 0xD00000000000001ELL;
  *(v0 + 2536) = 0x80000001C09C53B0;
  *(v0 + 2544) = type metadata accessor for UsoTask_summarise_common_ReminderList(0);
  *(v0 + 2552) = 0xD00000000000001BLL;
  *(v0 + 2560) = 0x80000001C09C53D0;
  *(v0 + 2568) = type metadata accessor for UsoTask_noVerb_common_ReminderList(0);
  *(v0 + 2576) = 0xD00000000000001CLL;
  *(v0 + 2584) = 0x80000001C09C53F0;
  *(v0 + 2592) = type metadata accessor for UsoTask_request_common_ReminderList(0);
  *(v0 + 2600) = 0xD000000000000023;
  *(v0 + 2608) = 0x80000001C09C5410;
  *(v0 + 2616) = type metadata accessor for UsoTask_checkExistence_common_ReminderList(0);
  *(v0 + 2624) = 0xD00000000000001BLL;
  *(v0 + 2632) = 0x80000001C09C5440;
  *(v0 + 2640) = type metadata accessor for UsoTask_delete_common_ReminderList(0);
  *(v0 + 2648) = 0xD00000000000001BLL;
  *(v0 + 2656) = 0x80000001C09C5460;
  *(v0 + 2664) = type metadata accessor for UsoTask_create_common_ReminderList(0);
  *(v0 + 2672) = 0xD00000000000001BLL;
  *(v0 + 2680) = 0x80000001C09C5480;
  *(v0 + 2688) = type metadata accessor for UsoTask_update_common_ReminderList(0);
  *(v0 + 2696) = 0xD000000000000019;
  *(v0 + 2704) = 0x80000001C09C54A0;
  *(v0 + 2712) = type metadata accessor for UsoTask_read_common_ReminderList(0);
  *(v0 + 2720) = 0xD000000000000014;
  *(v0 + 2728) = 0x80000001C09C54C0;
  *(v0 + 2736) = type metadata accessor for UsoTask_noVerb_common_Stock(0);
  *(v0 + 2744) = 0xD000000000000014;
  *(v0 + 2752) = 0x80000001C09C54E0;
  *(v0 + 2760) = type metadata accessor for UsoTask_create_common_Stock(0);
  *(v0 + 2768) = 0xD000000000000012;
  *(v0 + 2776) = 0x80000001C09C5500;
  *(v0 + 2784) = type metadata accessor for UsoTask_read_common_Stock(0);
  *(v0 + 2792) = 0xD000000000000014;
  *(v0 + 2800) = 0x80000001C09C5520;
  *(v0 + 2808) = type metadata accessor for UsoTask_delete_common_Stock(0);
  *(v0 + 2816) = 0xD000000000000015;
  *(v0 + 2824) = 0x80000001C09C5540;
  *(v0 + 2832) = type metadata accessor for UsoTask_request_common_Stock(0);
  *(v0 + 2840) = 0xD000000000000014;
  *(v0 + 2848) = 0x80000001C09C5560;
  *(v0 + 2856) = type metadata accessor for UsoTask_update_common_Stock(0);
  *(v0 + 2864) = 0xD00000000000001CLL;
  *(v0 + 2872) = 0x80000001C09C5580;
  *(v0 + 2880) = type metadata accessor for UsoTask_checkExistence_common_Stock(0);
  *(v0 + 2888) = 0xD000000000000017;
  *(v0 + 2896) = 0x80000001C09C55A0;
  *(v0 + 2904) = type metadata accessor for UsoTask_summarise_common_Stock(0);
  *(v0 + 2912) = 0xD000000000000019;
  *(v0 + 2920) = 0x80000001C09C55C0;
  *(v0 + 2928) = type metadata accessor for UsoTask_noVerb_common_AppSection(0);
  *(v0 + 2936) = 0xD00000000000001ALL;
  *(v0 + 2944) = 0x80000001C09C55E0;
  *(v0 + 2952) = type metadata accessor for UsoTask_previous_common_PhoneCall(0);
  *(v0 + 2960) = 0xD000000000000018;
  *(v0 + 2968) = 0x80000001C09C5600;
  *(v0 + 2976) = type metadata accessor for UsoTask_redial_common_PhoneCall(0);
  *(v0 + 2984) = 0xD00000000000001ALL;
  *(v0 + 2992) = 0x80000001C09C5620;
  *(v0 + 3000) = type metadata accessor for UsoTask_callback_common_PhoneCall(0);
  *(v0 + 3008) = 0xD000000000000016;
  *(v0 + 3016) = 0x80000001C09C5640;
  *(v0 + 3024) = type metadata accessor for UsoTask_stop_common_PhoneCall(0);
  *(v0 + 3032) = 0xD000000000000018;
  *(v0 + 3040) = 0x80000001C09C5660;
  *(v0 + 3048) = type metadata accessor for UsoTask_hangup_common_PhoneCall(0);
  *(v0 + 3056) = 0xD00000000000001BLL;
  *(v0 + 3064) = 0x80000001C09C5680;
  *(v0 + 3072) = type metadata accessor for UsoTask_videocall_common_PhoneCall(0);
  *(v0 + 3080) = 0xD000000000000016;
  *(v0 + 3088) = 0x80000001C09C56A0;
  *(v0 + 3096) = type metadata accessor for UsoTask_join_common_PhoneCall(0);
  *(v0 + 3104) = 0xD000000000000019;
  *(v0 + 3112) = 0x80000001C09C56C0;
  *(v0 + 3120) = type metadata accessor for UsoTask_request_common_PhoneCall(0);
  *(v0 + 3128) = 0xD000000000000018;
  *(v0 + 3136) = 0x80000001C09C56E0;
  *(v0 + 3144) = type metadata accessor for UsoTask_noVerb_common_PhoneCall(0);
  *(v0 + 3152) = 0xD000000000000016;
  *(v0 + 3160) = 0x80000001C09C5700;
  *(v0 + 3168) = type metadata accessor for UsoTask_read_common_PhoneCall(0);
  *(v0 + 3176) = 0xD000000000000018;
  *(v0 + 3184) = 0x80000001C09C5720;
  *(v0 + 3192) = type metadata accessor for UsoTask_update_common_PhoneCall(0);
  *(v0 + 3200) = 0xD000000000000016;
  *(v0 + 3208) = 0x80000001C09C5740;
  *(v0 + 3216) = type metadata accessor for UsoTask_skip_common_PhoneCall(0);
  *(v0 + 3224) = 0xD00000000000001BLL;
  *(v0 + 3232) = 0x80000001C09C5760;
  *(v0 + 3240) = type metadata accessor for UsoTask_summarise_common_PhoneCall(0);
  *(v0 + 3248) = 0xD000000000000018;
  *(v0 + 3256) = 0x80000001C09C5780;
  *(v0 + 3264) = type metadata accessor for UsoTask_delete_common_PhoneCall(0);
  *(v0 + 3272) = 0xD00000000000001ALL;
  *(v0 + 3280) = 0x80000001C09C57A0;
  *(v0 + 3288) = type metadata accessor for UsoTask_continue_common_PhoneCall(0);
  *(v0 + 3296) = 0xD000000000000016;
  *(v0 + 3304) = 0x80000001C09C57C0;
  *(v0 + 3312) = type metadata accessor for UsoTask_call_common_PhoneCall(0);
  *(v0 + 3320) = 0xD000000000000018;
  *(v0 + 3328) = 0x80000001C09C57E0;
  *(v0 + 3336) = type metadata accessor for UsoTask_answer_common_PhoneCall(0);
  *(v0 + 3344) = 0xD00000000000001DLL;
  *(v0 + 3352) = 0x80000001C09C5800;
  *(v0 + 3360) = type metadata accessor for UsoTask_noVerb_common_ContactAddress(0);
  *(v0 + 3368) = 0xD00000000000001ELL;
  *(v0 + 3376) = 0x80000001C09C5820;
  *(v0 + 3384) = type metadata accessor for UsoTask_noVerb_common_LocalisedString(0);
  *(v0 + 3392) = 0xD00000000000001ELL;
  *(v0 + 3400) = 0x80000001C09C5840;
  *(v0 + 3408) = type metadata accessor for UsoTask_noVerb_common_ProductCategory(0);
  *(v0 + 3416) = 0xD000000000000019;
  *(v0 + 3424) = 0x80000001C09C5860;
  *(v0 + 3432) = type metadata accessor for UsoTask_noVerb_common_NumberSign(0);
  *(v0 + 3440) = 0xD000000000000018;
  *(v0 + 3448) = 0x80000001C09C5880;
  *(v0 + 3456) = type metadata accessor for UsoTask_action_common_Utilities(0);
  *(v0 + 3464) = 0xD000000000000019;
  *(v0 + 3472) = 0x80000001C09C58A0;
  *(v0 + 3480) = type metadata accessor for UsoTask_noVerb_common_PersonName(0);
  *(v0 + 3488) = 0xD000000000000030;
  *(v0 + 3496) = 0x80000001C09C58C0;
  *(v0 + 3504) = type metadata accessor for UsoTask_noVerb_commonNotification_NotificationAttribute(0);
  *(v0 + 3512) = 0xD00000000000002ALL;
  *(v0 + 3520) = 0x80000001C09C5900;
  *(v0 + 3528) = type metadata accessor for UsoTask_noVerb_commonPhoneCall_PhoneCallAttribute(0);
  *(v0 + 3536) = 0xD00000000000001BLL;
  *(v0 + 3544) = 0x80000001C09C5930;
  *(v0 + 3552) = type metadata accessor for UsoTask_noVerb_common_SettingValue(0);
  *(v0 + 3560) = 0xD000000000000029;
  *(v0 + 3568) = 0x80000001C09C5950;
  *(v0 + 3576) = type metadata accessor for UsoTask_learnNameCorrection_common_PersonContact(0);
  *(v0 + 3584) = 0xD00000000000001ALL;
  *(v0 + 3592) = 0x80000001C09C5980;
  *(v0 + 3600) = type metadata accessor for UsoTask_read_common_PersonContact(0);
  *(v0 + 3608) = 0xD00000000000001CLL;
  *(v0 + 3616) = 0x80000001C09C59A0;
  *(v0 + 3624) = type metadata accessor for UsoTask_create_common_PersonContact(0);
  *(v0 + 3632) = 0xD00000000000002ALL;
  *(v0 + 3640) = 0x80000001C09C59C0;
  *(v0 + 3648) = type metadata accessor for UsoTask_forgetNameCorrection_common_PersonContact(0);
  *(v0 + 3656) = 0xD00000000000001CLL;
  *(v0 + 3664) = 0x80000001C09C59F0;
  *(v0 + 3672) = type metadata accessor for UsoTask_delete_common_PersonContact(0);
  *(v0 + 3680) = 0xD00000000000001CLL;
  *(v0 + 3688) = 0x80000001C09C5A10;
  *(v0 + 3696) = type metadata accessor for UsoTask_noVerb_common_PersonContact(0);
  *(v0 + 3704) = 0xD00000000000001FLL;
  *(v0 + 3712) = 0x80000001C09C5A30;
  *(v0 + 3720) = type metadata accessor for UsoTask_summarise_common_PersonContact(0);
  *(v0 + 3728) = 0xD00000000000001CLL;
  *(v0 + 3736) = 0x80000001C09C5A50;
  *(v0 + 3744) = type metadata accessor for UsoTask_update_common_PersonContact(0);
  *(v0 + 3752) = 0xD000000000000019;
  *(v0 + 3760) = 0x80000001C09C5A70;
  *(v0 + 3768) = type metadata accessor for UsoTask_noVerb_common_SportsItem(0);
  *(v0 + 3776) = 0xD000000000000013;
  *(v0 + 3784) = 0x80000001C09C5A90;
  *(v0 + 3792) = type metadata accessor for UsoTask_reset_common_Timer(0);
  *(v0 + 3800) = 0xD000000000000014;
  *(v0 + 3808) = 0x80000001C09C5AB0;
  *(v0 + 3816) = type metadata accessor for UsoTask_create_common_Timer(0);
  *(v0 + 3824) = 0xD000000000000013;
  *(v0 + 3832) = 0x80000001C09C5AD0;
  *(v0 + 3840) = type metadata accessor for UsoTask_start_common_Timer(0);
  *(v0 + 3848) = 0xD000000000000014;
  *(v0 + 3856) = 0x80000001C09C5AF0;
  *(v0 + 3864) = type metadata accessor for UsoTask_delete_common_Timer(0);
  *(v0 + 3872) = 0xD000000000000014;
  *(v0 + 3880) = 0x80000001C09C5B10;
  *(v0 + 3888) = type metadata accessor for UsoTask_update_common_Timer(0);
  *(v0 + 3896) = 0xD00000000000001CLL;
  *(v0 + 3904) = 0x80000001C09C5B30;
  *(v0 + 3912) = type metadata accessor for UsoTask_checkExistence_common_Timer(0);
  *(v0 + 3920) = 0xD000000000000013;
  *(v0 + 3928) = 0x80000001C09C5B50;
  *(v0 + 3936) = type metadata accessor for UsoTask_pause_common_Timer(0);
  *(v0 + 3944) = 0xD000000000000014;
  *(v0 + 3952) = 0x80000001C09C5B70;
  *(v0 + 3960) = type metadata accessor for UsoTask_resume_common_Timer(0);
  *(v0 + 3968) = 0xD000000000000014;
  *(v0 + 3976) = 0x80000001C09C5B90;
  *(v0 + 3984) = type metadata accessor for UsoTask_noVerb_common_Timer(0);
  *(v0 + 3992) = 0xD000000000000017;
  *(v0 + 4000) = 0x80000001C09C5BB0;
  *(v0 + 4008) = type metadata accessor for UsoTask_summarise_common_Timer(0);
  *(v0 + 4016) = 0xD000000000000012;
  *(v0 + 4024) = 0x80000001C09C5BD0;
  *(v0 + 4032) = type metadata accessor for UsoTask_stop_common_Timer(0);
  *(v0 + 4040) = 0xD000000000000015;
  *(v0 + 4048) = 0x80000001C09C5BF0;
  *(v0 + 4056) = type metadata accessor for UsoTask_request_common_Timer(0);
  *(v0 + 4064) = 0xD00000000000001ELL;
  *(v0 + 4072) = 0x80000001C09C5C10;
  *(v0 + 4080) = type metadata accessor for UsoTask_noVerb_common_SearchQualifier(0);
  *(v0 + 4088) = 0xD00000000000001FLL;
  *(v0 + 4096) = 0x80000001C09C5C30;
  *(v0 + 4104) = type metadata accessor for UsoTask_checkExistence_common_Reaction(0);
  *(v0 + 4112) = 0xD000000000000017;
  *(v0 + 4120) = 0x80000001C09C5C50;
  *(v0 + 4128) = type metadata accessor for UsoTask_noVerb_common_Reaction(0);
  *(v0 + 4136) = 0xD00000000000001ALL;
  *(v0 + 4144) = 0x80000001C09C5C70;
  *(v0 + 4152) = type metadata accessor for UsoTask_summarise_common_Reaction(0);
  *(v0 + 4160) = 0xD000000000000018;
  *(v0 + 4168) = 0x80000001C09C5C90;
  *(v0 + 4176) = type metadata accessor for UsoTask_request_common_Reaction(0);
  *(v0 + 4184) = 0xD00000000000001CLL;
  *(v0 + 4192) = 0x80000001C09C5CB0;
  *(v0 + 4200) = type metadata accessor for UsoTask_action_common_CrisisSupport(0);
  *(v0 + 4208) = 0xD00000000000001FLL;
  *(v0 + 4216) = 0x80000001C09C5CD0;
  *(v0 + 4224) = type metadata accessor for UsoTask_summarise_common_DateTimeRange(0);
  *(v0 + 4232) = 0xD00000000000001DLL;
  *(v0 + 4240) = 0x80000001C09C5CF0;
  *(v0 + 4248) = type metadata accessor for UsoTask_request_common_DateTimeRange(0);
  *(v0 + 4256) = 0xD00000000000001DLL;
  *(v0 + 4264) = 0x80000001C09C5D10;
  *(v0 + 4272) = type metadata accessor for UsoTask_convert_common_DateTimeRange(0);
  *(v0 + 4280) = 0xD00000000000001CLL;
  *(v0 + 4288) = 0x80000001C09C5D30;
  *(v0 + 4296) = type metadata accessor for UsoTask_noVerb_common_DateTimeRange(0);
  *(v0 + 4304) = 0xD000000000000024;
  *(v0 + 4312) = 0x80000001C09C5D50;
  *(v0 + 4320) = type metadata accessor for UsoTask_checkExistence_common_DateTimeRange(0);
  *(v0 + 4328) = 0xD00000000000001ALL;
  *(v0 + 4336) = 0x80000001C09C5D80;
  *(v0 + 4344) = type metadata accessor for UsoTask_read_common_DateTimeRange(0);
  *(v0 + 4352) = 0xD000000000000025;
  *(v0 + 4360) = 0x80000001C09C5DA0;
  *(v0 + 4368) = type metadata accessor for UsoTask_noVerb_appleWriting_WritingAttribute(0);
  *(v0 + 4376) = 0xD000000000000017;
  *(v0 + 4384) = 0x80000001C09C5DD0;
  *(v0 + 4392) = type metadata accessor for UsoTask_noVerb_common_TimeZone(0);
  *(v0 + 4400) = 0xD000000000000021;
  *(v0 + 4408) = 0x80000001C09C5DF0;
  *(v0 + 4416) = type metadata accessor for UsoTask_update_common_PersonRelationship(0);
  *(v0 + 4424) = 0xD000000000000021;
  *(v0 + 4432) = 0x80000001C09C5E20;
  *(v0 + 4440) = type metadata accessor for UsoTask_noVerb_common_PersonRelationship(0);
  *(v0 + 4448) = 0xD00000000000001ELL;
  *(v0 + 4456) = 0x80000001C09C5E50;
  *(v0 + 4464) = type metadata accessor for UsoTask_noVerb_common_ActivationValue(0);
  *(v0 + 4472) = 0xD000000000000014;
  *(v0 + 4480) = 0x80000001C09C5E70;
  *(v0 + 4488) = type metadata accessor for UsoTask_noVerb_common_Color(0);
  *(v0 + 4496) = 0xD000000000000014;
  *(v0 + 4504) = 0x80000001C09C5E90;
  *(v0 + 4512) = type metadata accessor for UsoTask_delete_common_Email(0);
  *(v0 + 4520) = 0xD000000000000010;
  *(v0 + 4528) = 0x80000001C09C5EB0;
  *(v0 + 4536) = type metadata accessor for UsoTask_cc_common_Email(0);
  *(v0 + 4544) = 0xD000000000000012;
  *(v0 + 4552) = 0x80000001C09C5ED0;
  *(v0 + 4560) = type metadata accessor for UsoTask_send_common_Email(0);
  *(v0 + 4568) = 0xD000000000000012;
  *(v0 + 4576) = 0x80000001C09C5EF0;
  *(v0 + 4584) = type metadata accessor for UsoTask_save_common_Email(0);
  *(v0 + 4592) = 0xD000000000000015;
  *(v0 + 4600) = 0x80000001C09C5F10;
  *(v0 + 4608) = type metadata accessor for UsoTask_forward_common_Email(0);
  *(v0 + 4616) = 0xD000000000000014;
  *(v0 + 4624) = 0x80000001C09C5F30;
  *(v0 + 4632) = type metadata accessor for UsoTask_update_common_Email(0);
  *(v0 + 4640) = 0xD000000000000013;
  *(v0 + 4648) = 0x80000001C09C5F50;
  *(v0 + 4656) = type metadata accessor for UsoTask_reply_common_Email(0);
  *(v0 + 4664) = 0xD000000000000016;
  *(v0 + 4672) = 0x80000001C09C5F70;
  *(v0 + 4680) = type metadata accessor for UsoTask_previous_common_Email(0);
  *(v0 + 4688) = 0xD000000000000012;
  *(v0 + 4696) = 0x80000001C09C5F90;
  *(v0 + 4704) = type metadata accessor for UsoTask_read_common_Email(0);
  *(v0 + 4712) = 0xD000000000000016;
  *(v0 + 4720) = 0x80000001C09C5FB0;
  *(v0 + 4728) = type metadata accessor for UsoTask_continue_common_Email(0);
  *(v0 + 4736) = 0xD000000000000012;
  *(v0 + 4744) = 0x80000001C09C5FD0;
  *(v0 + 4752) = type metadata accessor for UsoTask_stop_common_Email(0);
  *(v0 + 4760) = 0xD000000000000012;
  *(v0 + 4768) = 0x80000001C09C5FF0;
  *(v0 + 4776) = type metadata accessor for UsoTask_skip_common_Email(0);
  *(v0 + 4784) = 0xD00000000000001CLL;
  *(v0 + 4792) = 0x80000001C09C6010;
  *(v0 + 4800) = type metadata accessor for UsoTask_checkExistence_common_Email(0);
  *(v0 + 4808) = 0xD000000000000017;
  *(v0 + 4816) = 0x80000001C09C6030;
  *(v0 + 4824) = type metadata accessor for UsoTask_summarise_common_Email(0);
  *(v0 + 4832) = 0xD000000000000014;
  *(v0 + 4840) = 0x80000001C09C6050;
  *(v0 + 4848) = type metadata accessor for UsoTask_noVerb_common_Email(0);
  *(v0 + 4856) = 0xD000000000000015;
  *(v0 + 4864) = 0x80000001C09C6070;
  *(v0 + 4872) = type metadata accessor for UsoTask_request_common_Email(0);
  *(v0 + 4880) = 0xD00000000000001DLL;
  *(v0 + 4888) = 0x80000001C09C6090;
  *(v0 + 4896) = type metadata accessor for UsoTask_noVerb_common_DeviceCategory(0);
  *(v0 + 4904) = 0xD00000000000001FLL;
  *(v0 + 4912) = 0x80000001C09C60B0;
  *(v0 + 4920) = type metadata accessor for UsoTask_checkExistence_common_DateTime(0);
  *(v0 + 4928) = 0xD000000000000017;
  *(v0 + 4936) = 0x80000001C09C60D0;
  *(v0 + 4944) = type metadata accessor for UsoTask_noVerb_common_DateTime(0);
  *(v0 + 4952) = 0xD000000000000018;
  *(v0 + 4960) = 0x80000001C09C60F0;
  *(v0 + 4968) = type metadata accessor for UsoTask_convert_common_DateTime(0);
  *(v0 + 4976) = 0xD000000000000018;
  *(v0 + 4984) = 0x80000001C09C6110;
  *(v0 + 4992) = type metadata accessor for UsoTask_request_common_DateTime(0);
  *(v0 + 5000) = 0xD000000000000015;
  *(v0 + 5008) = 0x80000001C09C6130;
  *(v0 + 5016) = type metadata accessor for UsoTask_read_common_DateTime(0);
  *(v0 + 5024) = 0xD00000000000001ALL;
  *(v0 + 5032) = 0x80000001C09C6150;
  *(v0 + 5040) = type metadata accessor for UsoTask_summarise_common_DateTime(0);
  *(v0 + 5048) = 0xD00000000000001FLL;
  *(v0 + 5056) = 0x80000001C09C6170;
  *(v0 + 5064) = type metadata accessor for UsoTask_removeFilter_apple_PhotoMemory(0);
  *(v0 + 5072) = 0xD00000000000001CLL;
  *(v0 + 5080) = 0x80000001C09C6190;
  *(v0 + 5088) = type metadata accessor for UsoTask_removeTag_apple_PhotoMemory(0);
  *(v0 + 5096) = 0xD000000000000019;
  *(v0 + 5104) = 0x80000001C09C61B0;
  *(v0 + 5112) = type metadata accessor for UsoTask_create_apple_PhotoMemory(0);
  *(v0 + 5120) = 0xD00000000000001CLL;
  *(v0 + 5128) = 0x80000001C09C61D0;
  *(v0 + 5136) = type metadata accessor for UsoTask_summarise_apple_PhotoMemory(0);
  *(v0 + 5144) = 0xD000000000000022;
  *(v0 + 5152) = 0x80000001C09C61F0;
  *(v0 + 5160) = type metadata accessor for UsoTask_removeFromAlbum_apple_PhotoMemory(0);
  *(v0 + 5168) = 0xD000000000000021;
  *(v0 + 5176) = 0x80000001C09C6220;
  *(v0 + 5184) = type metadata accessor for UsoTask_checkExistence_apple_PhotoMemory(0);
  *(v0 + 5192) = 0xD00000000000001BLL;
  *(v0 + 5200) = 0x80000001C09C6250;
  *(v0 + 5208) = type metadata accessor for UsoTask_applyTag_apple_PhotoMemory(0);
  *(v0 + 5216) = 0xD000000000000017;
  *(v0 + 5224) = 0x80000001C09C6270;
  *(v0 + 5232) = type metadata accessor for UsoTask_like_apple_PhotoMemory(0);
  *(v0 + 5240) = 0xD000000000000019;
  *(v0 + 5248) = 0x80000001C09C6290;
  *(v0 + 5256) = type metadata accessor for UsoTask_delete_apple_PhotoMemory(0);
  *(v0 + 5264) = 0xD00000000000001DLL;
  *(v0 + 5272) = 0x80000001C09C62B0;
  *(v0 + 5280) = type metadata accessor for UsoTask_addToAlbum_apple_PhotoMemory(0);
  *(v0 + 5288) = 0xD000000000000017;
  *(v0 + 5296) = 0x80000001C09C62D0;
  *(v0 + 5304) = type metadata accessor for UsoTask_play_apple_PhotoMemory(0);
  *(v0 + 5312) = 0xD000000000000019;
  *(v0 + 5320) = 0x80000001C09C62F0;
  *(v0 + 5328) = type metadata accessor for UsoTask_noVerb_apple_PhotoMemory(0);
  *(v0 + 5336) = 0xD000000000000019;
  *(v0 + 5344) = 0x80000001C09C6310;
  *(v0 + 5352) = type metadata accessor for UsoTask_unlike_apple_PhotoMemory(0);
  *(v0 + 5360) = 0xD00000000000001ELL;
  *(v0 + 5368) = 0x80000001C09C6330;
  *(v0 + 5376) = type metadata accessor for UsoTask_applyFilter_apple_PhotoMemory(0);
  *(v0 + 5384) = 0xD00000000000001ELL;
  *(v0 + 5392) = 0x80000001C09C6350;
  *(v0 + 5400) = type metadata accessor for UsoTask_request_common_SiriPossession(0);
  *(v0 + 5408) = 0xD00000000000001CLL;
  *(v0 + 5416) = 0x80000001C09C6370;
  *(v0 + 5424) = type metadata accessor for UsoTask_state_common_SiriPossession(0);
  *(v0 + 5432) = 0xD00000000000001BLL;
  *(v0 + 5440) = 0x80000001C09C6390;
  *(v0 + 5448) = type metadata accessor for UsoTask_deny_common_SiriPossession(0);
  *(v0 + 5456) = 0xD00000000000001DLL;
  *(v0 + 5464) = 0x80000001C09C63B0;
  *(v0 + 5472) = type metadata accessor for UsoTask_noVerb_common_SiriPossession(0);
  *(v0 + 5480) = 0xD000000000000020;
  *(v0 + 5488) = 0x80000001C09C63D0;
  *(v0 + 5496) = type metadata accessor for UsoTask_summarise_common_SiriPossession(0);
  *(v0 + 5504) = 0xD000000000000025;
  *(v0 + 5512) = 0x80000001C09C6400;
  *(v0 + 5520) = type metadata accessor for UsoTask_checkExistence_common_SiriPossession(0);
  *(v0 + 5528) = 0xD000000000000021;
  *(v0 + 5536) = 0x80000001C09C6430;
  *(v0 + 5544) = type metadata accessor for UsoTask_noVerb_common_PersonSocialAction(0);
  *(v0 + 5552) = 0xD000000000000024;
  *(v0 + 5560) = 0x80000001C09C6460;
  *(v0 + 5568) = type metadata accessor for UsoTask_summarise_common_PersonSocialAction(0);
  *(v0 + 5576) = 0xD000000000000020;
  *(v0 + 5584) = 0x80000001C09C6490;
  *(v0 + 5592) = type metadata accessor for UsoTask_state_common_PersonSocialAction(0);
  *(v0 + 5600) = 0xD000000000000015;
  *(v0 + 5608) = 0x80000001C09C64C0;
  *(v0 + 5616) = type metadata accessor for UsoTask_pause_common_Journey(0);
  *(v0 + 5624) = 0xD000000000000015;
  *(v0 + 5632) = 0x80000001C09C64E0;
  *(v0 + 5640) = type metadata accessor for UsoTask_start_common_Journey(0);
  *(v0 + 5648) = 0xD000000000000017;
  *(v0 + 5656) = 0x80000001C09C6500;
  *(v0 + 5664) = type metadata accessor for UsoTask_request_common_Journey(0);
  *(v0 + 5672) = 0xD000000000000016;
  *(v0 + 5680) = 0x80000001C09C6520;
  *(v0 + 5688) = type metadata accessor for UsoTask_update_common_Journey(0);
  *(v0 + 5696) = 0xD000000000000014;
  *(v0 + 5704) = 0x80000001C09C6540;
  *(v0 + 5712) = type metadata accessor for UsoTask_stop_common_Journey(0);
  *(v0 + 5720) = 0xD000000000000016;
  *(v0 + 5728) = 0x80000001C09C6560;
  *(v0 + 5736) = type metadata accessor for UsoTask_noVerb_common_Journey(0);
  *(v0 + 5744) = 0xD000000000000014;
  *(v0 + 5752) = 0x80000001C09C6580;
  *(v0 + 5760) = type metadata accessor for UsoTask_noVerb_common_Photo(0);
  *(v0 + 5768) = 0xD000000000000014;
  *(v0 + 5776) = 0x80000001C09C65A0;
  *(v0 + 5784) = type metadata accessor for UsoTask_unlike_common_Photo(0);
  *(v0 + 5792) = 0xD000000000000014;
  *(v0 + 5800) = 0x80000001C09C65C0;
  *(v0 + 5808) = type metadata accessor for UsoTask_unhide_common_Photo(0);
  *(v0 + 5816) = 0xD000000000000016;
  *(v0 + 5824) = 0x80000001C09C65E0;
  *(v0 + 5832) = type metadata accessor for UsoTask_applyTag_common_Photo(0);
  *(v0 + 5840) = 0xD000000000000018;
  *(v0 + 5848) = 0x80000001C09C6600;
  *(v0 + 5856) = type metadata accessor for UsoTask_addToAlbum_common_Photo(0);
  *(v0 + 5864) = 0xD00000000000001ALL;
  *(v0 + 5872) = 0x80000001C09C6620;
  *(v0 + 5880) = type metadata accessor for UsoTask_skipBackward_common_Photo(0);
  *(v0 + 5888) = 0xD000000000000017;
  *(v0 + 5896) = 0x80000001C09C6640;
  *(v0 + 5904) = type metadata accessor for UsoTask_summarise_common_Photo(0);
  *(v0 + 5912) = 0xD000000000000014;
  *(v0 + 5920) = 0x80000001C09C6660;
  *(v0 + 5928) = type metadata accessor for UsoTask_create_common_Photo(0);
  *(v0 + 5936) = 0xD000000000000017;
  *(v0 + 5944) = 0x80000001C09C6680;
  *(v0 + 5952) = type metadata accessor for UsoTask_removeTag_common_Photo(0);
  *(v0 + 5960) = 0xD000000000000014;
  *(v0 + 5968) = 0x80000001C09C66A0;
  *(v0 + 5976) = type metadata accessor for UsoTask_delete_common_Photo(0);
  *(v0 + 5984) = 0xD00000000000001CLL;
  *(v0 + 5992) = 0x80000001C09C66C0;
  *(v0 + 6000) = type metadata accessor for UsoTask_checkExistence_common_Photo(0);
  *(v0 + 6008) = 0xD000000000000012;
  *(v0 + 6016) = 0x80000001C09C66E0;
  *(v0 + 6024) = type metadata accessor for UsoTask_like_common_Photo(0);
  *(v0 + 6032) = 0xD000000000000012;
  *(v0 + 6040) = 0x80000001C09C6700;
  *(v0 + 6048) = type metadata accessor for UsoTask_play_common_Photo(0);
  *(v0 + 6056) = 0xD000000000000019;
  *(v0 + 6064) = 0x80000001C09C6720;
  *(v0 + 6072) = type metadata accessor for UsoTask_applyFilter_common_Photo(0);
  *(v0 + 6080) = 0xD000000000000012;
  *(v0 + 6088) = 0x80000001C09C6740;
  *(v0 + 6096) = type metadata accessor for UsoTask_hide_common_Photo(0);
  *(v0 + 6104) = 0xD00000000000001ALL;
  *(v0 + 6112) = 0x80000001C09C6760;
  *(v0 + 6120) = type metadata accessor for UsoTask_removeFilter_common_Photo(0);
  *(v0 + 6128) = 0xD000000000000019;
  *(v0 + 6136) = 0x80000001C09C6780;
  *(v0 + 6144) = type metadata accessor for UsoTask_skipForward_common_Photo(0);
  *(v0 + 6152) = 0xD00000000000001DLL;
  *(v0 + 6160) = 0x80000001C09C67A0;
  *(v0 + 6168) = type metadata accessor for UsoTask_removeFromAlbum_common_Photo(0);
  *(v0 + 6176) = 0xD000000000000026;
  *(v0 + 6184) = 0x80000001C09C67C0;
  *(v0 + 6192) = type metadata accessor for UsoTask_noVerb_commonMessage_MessageAttribute(0);
  *(v0 + 6200) = 0xD000000000000019;
  *(v0 + 6208) = 0x80000001C09C67F0;
  *(v0 + 6216) = type metadata accessor for UsoTask_noVerb_common_Salutation(0);
  *(v0 + 6224) = 0xD000000000000017;
  *(v0 + 6232) = 0x80000001C09C6810;
  *(v0 + 6240) = type metadata accessor for UsoTask_tell_common_Salutation(0);
  *(v0 + 6248) = 0xD00000000000001BLL;
  *(v0 + 6256) = 0x80000001C09C6830;
  *(v0 + 6264) = type metadata accessor for UsoTask_noVerb_common_Organization(0);
  *(v0 + 6272) = 0xD00000000000001BLL;
  *(v0 + 6280) = 0x80000001C09C6850;
  *(v0 + 6288) = type metadata accessor for UsoTask_create_common_Organization(0);
  *(v0 + 6296) = 0xD000000000000019;
  *(v0 + 6304) = 0x80000001C09C6870;
  *(v0 + 6312) = type metadata accessor for UsoTask_read_common_Organization(0);
  *(v0 + 6320) = 0xD00000000000001BLL;
  *(v0 + 6328) = 0x80000001C09C6890;
  *(v0 + 6336) = type metadata accessor for UsoTask_update_common_Organization(0);
  *(v0 + 6344) = 0xD00000000000001CLL;
  *(v0 + 6352) = 0x80000001C09C68B0;
  *(v0 + 6360) = type metadata accessor for UsoTask_request_common_Organization(0);
  *(v0 + 6368) = 0xD00000000000001ELL;
  *(v0 + 6376) = 0x80000001C09C68D0;
  *(v0 + 6384) = type metadata accessor for UsoTask_summarise_common_Organization(0);
  *(v0 + 6392) = 0xD00000000000001BLL;
  *(v0 + 6400) = 0x80000001C09C68F0;
  *(v0 + 6408) = type metadata accessor for UsoTask_delete_common_Organization(0);
  *(v0 + 6416) = 0xD000000000000023;
  *(v0 + 6424) = 0x80000001C09C6910;
  *(v0 + 6432) = type metadata accessor for UsoTask_checkExistence_common_Organization(0);
  *(v0 + 6440) = 0xD00000000000002CLL;
  *(v0 + 6448) = 0x80000001C09C6940;
  *(v0 + 6456) = type metadata accessor for UsoTask_noVerb_commonArithmetic_ArithmeticAttribute(0);
  *(v0 + 6464) = 0xD00000000000001FLL;
  *(v0 + 6472) = 0x80000001C09C6970;
  *(v0 + 6480) = type metadata accessor for UsoTask_noVerb_common_MultipliedNumber(0);
  *(v0 + 6488) = 0xD000000000000023;
  *(v0 + 6496) = 0x80000001C09C6990;
  *(v0 + 6504) = type metadata accessor for UsoTask_setDateTimeRange_common_CarSetting(0);
  *(v0 + 6512) = 0xD000000000000021;
  *(v0 + 6520) = 0x80000001C09C69C0;
  *(v0 + 6528) = type metadata accessor for UsoTask_checkExistence_common_CarSetting(0);
  *(v0 + 6536) = 0xD00000000000001ELL;
  *(v0 + 6544) = 0x80000001C09C69F0;
  *(v0 + 6552) = type metadata accessor for UsoTask_setDuration_common_CarSetting(0);
  *(v0 + 6560) = 0xD00000000000001CLL;
  *(v0 + 6568) = 0x80000001C09C6A10;
  *(v0 + 6576) = type metadata accessor for UsoTask_setNumber_common_CarSetting(0);
  *(v0 + 6584) = 0xD00000000000001DLL;
  *(v0 + 6592) = 0x80000001C09C6A30;
  *(v0 + 6600) = type metadata accessor for UsoTask_increaseBy_common_CarSetting(0);
  *(v0 + 6608) = 0xD000000000000028;
  *(v0 + 6616) = 0x80000001C09C6A50;
  *(v0 + 6624) = type metadata accessor for UsoTask_decreaseByMeasurement_common_CarSetting(0);
  *(v0 + 6632) = 0xD000000000000017;
  *(v0 + 6640) = 0x80000001C09C6A80;
  *(v0 + 6648) = type metadata accessor for UsoTask_open_common_CarSetting(0);
  *(v0 + 6656) = 0xD000000000000019;
  *(v0 + 6664) = 0x80000001C09C6AA0;
  *(v0 + 6672) = type metadata accessor for UsoTask_toggle_common_CarSetting(0);
  *(v0 + 6680) = 0xD00000000000001ALL;
  *(v0 + 6688) = 0x80000001C09C6AC0;
  *(v0 + 6696) = type metadata accessor for UsoTask_disable_common_CarSetting(0);
  *(v0 + 6704) = 0xD000000000000016;
  *(v0 + 6712) = 0x80000001C09C6AE0;
  *(v0 + 6720) = type metadata accessor for UsoTask_set_common_CarSetting(0);
  *(v0 + 6728) = 0xD000000000000021;
  *(v0 + 6736) = 0x80000001C09C6B00;
  *(v0 + 6744) = type metadata accessor for UsoTask_setMeasurement_common_CarSetting(0);
  *(v0 + 6752) = 0xD00000000000001CLL;
  *(v0 + 6760) = 0x80000001C09C6B30;
  *(v0 + 6768) = type metadata accessor for UsoTask_summarise_common_CarSetting(0);
  *(v0 + 6776) = 0xD00000000000001BLL;
  *(v0 + 6784) = 0x80000001C09C6B50;
  *(v0 + 6792) = type metadata accessor for UsoTask_setLabel_common_CarSetting(0);
  *(v0 + 6800) = 0xD00000000000001DLL;
  *(v0 + 6808) = 0x80000001C09C6B70;
  *(v0 + 6816) = type metadata accessor for UsoTask_setProfile_common_CarSetting(0);
  *(v0 + 6824) = 0xD00000000000001ALL;
  *(v0 + 6832) = 0x80000001C09C6B90;
  *(v0 + 6840) = type metadata accessor for UsoTask_request_common_CarSetting(0);
  *(v0 + 6848) = 0xD000000000000019;
  *(v0 + 6856) = 0x80000001C09C6BB0;
  *(v0 + 6864) = type metadata accessor for UsoTask_noVerb_common_CarSetting(0);
  *(v0 + 6872) = 0xD00000000000001DLL;
  *(v0 + 6880) = 0x80000001C09C6BD0;
  *(v0 + 6888) = type metadata accessor for UsoTask_decreaseBy_common_CarSetting(0);
  *(v0 + 6896) = 0xD000000000000028;
  *(v0 + 6904) = 0x80000001C09C6BF0;
  *(v0 + 6912) = type metadata accessor for UsoTask_increaseByMeasurement_common_CarSetting(0);
  *(v0 + 6920) = 0xD000000000000019;
  *(v0 + 6928) = 0x80000001C09C6C20;
  *(v0 + 6936) = type metadata accessor for UsoTask_enable_common_CarSetting(0);
  *(v0 + 6944) = 0xD000000000000017;
  *(v0 + 6952) = 0x80000001C09C6C40;
  *(v0 + 6960) = type metadata accessor for UsoTask_noVerb_common_TimeUnit(0);
  *(v0 + 6968) = 0xD00000000000001ELL;
  *(v0 + 6976) = 0x80000001C09C6C60;
  *(v0 + 6984) = type metadata accessor for UsoTask_noVerb_common_OffsetDirection(0);
  *(v0 + 6992) = 0xD00000000000001BLL;
  *(v0 + 7000) = 0x80000001C09C6C80;
  *(v0 + 7008) = type metadata accessor for UsoTask_noVerb_common_Interjection(0);
  *(v0 + 7016) = 0xD00000000000001CLL;
  *(v0 + 7024) = 0x80000001C09C6CA0;
  *(v0 + 7032) = type metadata accessor for UsoTask_checkExistence_common_Event(0);
  *(v0 + 7040) = 0xD000000000000017;
  *(v0 + 7048) = 0x80000001C09C6CC0;
  *(v0 + 7056) = type metadata accessor for UsoTask_summarise_common_Event(0);
  *(v0 + 7064) = 0xD000000000000014;
  *(v0 + 7072) = 0x80000001C09C6CE0;
  *(v0 + 7080) = type metadata accessor for UsoTask_noVerb_common_Event(0);
  *(v0 + 7088) = 0xD000000000000015;
  *(v0 + 7096) = 0x80000001C09C6D00;
  *(v0 + 7104) = type metadata accessor for UsoTask_request_common_Event(0);
  *(v0 + 7112) = 0xD00000000000001ELL;
  *(v0 + 7120) = 0x80000001C09C6D20;
  *(v0 + 7128) = type metadata accessor for UsoTask_noVerb_common_MedicationEvent(0);
  *(v0 + 7136) = 0xD00000000000001FLL;
  *(v0 + 7144) = 0x80000001C09C6D40;
  *(v0 + 7152) = type metadata accessor for UsoTask_request_common_MedicationEvent(0);
  *(v0 + 7160) = 0xD00000000000001ELL;
  *(v0 + 7168) = 0x80000001C09C6D60;
  *(v0 + 7176) = type metadata accessor for UsoTask_snooze_common_MedicationEvent(0);
  *(v0 + 7184) = 0xD000000000000026;
  *(v0 + 7192) = 0x80000001C09C6D80;
  *(v0 + 7200) = type metadata accessor for UsoTask_checkExistence_common_MedicationEvent(0);
  *(v0 + 7208) = 0xD00000000000001ELL;
  *(v0 + 7216) = 0x80000001C09C6DB0;
  *(v0 + 7224) = type metadata accessor for UsoTask_create_common_MedicationEvent(0);
  *(v0 + 7232) = 0xD000000000000020;
  *(v0 + 7240) = 0x80000001C09C6DD0;
  *(v0 + 7248) = type metadata accessor for UsoTask_noVerb_common_RecurringDateTime(0);
  *(v0 + 7256) = 0xD000000000000013;
  *(v0 + 7264) = 0x80000001C09C6E00;
  *(v0 + 7272) = type metadata accessor for UsoTask_noVerb_common_Date(0);
  *(v0 + 7280) = 0xD000000000000019;
  *(v0 + 7288) = 0x80000001C09C6E20;
  *(v0 + 7296) = type metadata accessor for UsoTask_summarise_common_Message(0);
  *(v0 + 7304) = 0xD000000000000014;
  *(v0 + 7312) = 0x80000001C09C6E40;
  *(v0 + 7320) = type metadata accessor for UsoTask_open_common_Message(0);
  *(v0 + 7328) = 0xD000000000000018;
  *(v0 + 7336) = 0x80000001C09C6E60;
  *(v0 + 7344) = type metadata accessor for UsoTask_previous_common_Message(0);
  *(v0 + 7352) = 0xD000000000000016;
  *(v0 + 7360) = 0x80000001C09C6E80;
  *(v0 + 7368) = type metadata accessor for UsoTask_noVerb_common_Message(0);
  *(v0 + 7376) = 0xD000000000000017;
  *(v0 + 7384) = 0x80000001C09C6EA0;
  *(v0 + 7392) = type metadata accessor for UsoTask_unreact_common_Message(0);
  *(v0 + 7400) = 0xD000000000000015;
  *(v0 + 7408) = 0x80000001C09C6EC0;
  *(v0 + 7416) = type metadata accessor for UsoTask_check_common_Message(0);
  *(v0 + 7424) = 0xD000000000000012;
  *(v0 + 7432) = 0x80000001C09C6EE0;
  *(v0 + 7440) = type metadata accessor for UsoTask_cc_common_Message(0);
  *(v0 + 7448) = 0xD000000000000017;
  *(v0 + 7456) = 0x80000001C09C6F00;
  *(v0 + 7464) = type metadata accessor for UsoTask_unshare_common_Message(0);
  *(v0 + 7472) = 0xD00000000000001ELL;
  *(v0 + 7480) = 0x80000001C09C6F20;
  *(v0 + 7488) = type metadata accessor for UsoTask_checkExistence_common_Message(0);
  *(v0 + 7496) = 0xD000000000000014;
  *(v0 + 7504) = 0x80000001C09C6F40;
  *(v0 + 7512) = type metadata accessor for UsoTask_skip_common_Message(0);
  *(v0 + 7520) = 0xD000000000000014;
  *(v0 + 7528) = 0x80000001C09C6F60;
  *(v0 + 7536) = type metadata accessor for UsoTask_read_common_Message(0);
  *(v0 + 7544) = 0xD000000000000014;
  *(v0 + 7552) = 0x80000001C09C6F80;
  *(v0 + 7560) = type metadata accessor for UsoTask_send_common_Message(0);
  *(v0 + 7568) = 0xD000000000000015;
  *(v0 + 7576) = 0x80000001C09C6FA0;
  *(v0 + 7584) = type metadata accessor for UsoTask_reply_common_Message(0);
  *(v0 + 7592) = 0xD000000000000017;
  *(v0 + 7600) = 0x80000001C09C6FC0;
  *(v0 + 7608) = type metadata accessor for UsoTask_forward_common_Message(0);
  *(v0 + 7616) = 0xD000000000000017;
  *(v0 + 7624) = 0x80000001C09C6FE0;
  *(v0 + 7632) = type metadata accessor for UsoTask_request_common_Message(0);
  *(v0 + 7640) = 0xD000000000000018;
  *(v0 + 7648) = 0x80000001C09C7000;
  *(v0 + 7656) = type metadata accessor for UsoTask_continue_common_Message(0);
  *(v0 + 7664) = 0xD000000000000014;
  *(v0 + 7672) = 0x80000001C09C7020;
  *(v0 + 7680) = type metadata accessor for UsoTask_stop_common_Message(0);
  *(v0 + 7688) = 0xD000000000000015;
  *(v0 + 7696) = 0x80000001C09C7040;
  *(v0 + 7704) = type metadata accessor for UsoTask_react_common_Message(0);
  *(v0 + 7712) = 0xD000000000000016;
  *(v0 + 7720) = 0x80000001C09C7060;
  *(v0 + 7728) = type metadata accessor for UsoTask_delete_common_Message(0);
  *(v0 + 7736) = 0xD000000000000016;
  *(v0 + 7744) = 0x80000001C09C7080;
  *(v0 + 7752) = type metadata accessor for UsoTask_update_common_Message(0);
  *(v0 + 7760) = 0xD000000000000015;
  *(v0 + 7768) = 0x80000001C09C70A0;
  *(v0 + 7776) = type metadata accessor for UsoTask_share_common_Message(0);
  *(v0 + 7784) = 0xD00000000000001ELL;
  *(v0 + 7792) = 0x80000001C09C70C0;
  *(v0 + 7800) = type metadata accessor for UsoTask_updateReaction_common_Message(0);
  *(v0 + 7808) = 0xD000000000000014;
  *(v0 + 7816) = 0x80000001C09C70E0;
  *(v0 + 7824) = type metadata accessor for UsoTask_save_common_Message(0);
  *(v0 + 7832) = 0xD000000000000016;
  *(v0 + 7840) = 0x80000001C09C7100;
  *(v0 + 7848) = type metadata accessor for UsoTask_unsend_common_Message(0);
  *(v0 + 7856) = 0xD000000000000022;
  *(v0 + 7864) = 0x80000001C09C7120;
  *(v0 + 7872) = type metadata accessor for UsoTask_request_common_MedicationSchedule(0);
  *(v0 + 7880) = 0xD000000000000021;
  *(v0 + 7888) = 0x80000001C09C7150;
  *(v0 + 7896) = type metadata accessor for UsoTask_noVerb_common_MedicationSchedule(0);
  *(v0 + 7904) = 0xD000000000000029;
  *(v0 + 7912) = 0x80000001C09C7180;
  *(v0 + 7920) = type metadata accessor for UsoTask_checkExistence_common_MedicationSchedule(0);
  *(v0 + 7928) = 0xD000000000000024;
  *(v0 + 7936) = 0x80000001C09C71B0;
  *(v0 + 7944) = type metadata accessor for UsoTask_summarise_common_MedicationSchedule(0);
  *(v0 + 7952) = 0xD000000000000021;
  *(v0 + 7960) = 0x80000001C09C71E0;
  *(v0 + 7968) = type metadata accessor for UsoTask_update_common_MedicationSchedule(0);
  *(v0 + 7976) = 0xD000000000000021;
  *(v0 + 7984) = 0x80000001C09C7210;
  *(v0 + 7992) = type metadata accessor for UsoTask_create_common_MedicationSchedule(0);
  *(v0 + 8000) = 0xD000000000000021;
  *(v0 + 8008) = 0x80000001C09C7240;
  *(v0 + 8016) = type metadata accessor for UsoTask_delete_common_MedicationSchedule(0);
  *(v0 + 8024) = 0xD000000000000019;
  *(v0 + 8032) = 0x80000001C09C7270;
  *(v0 + 8040) = type metadata accessor for UsoTask_noVerb_common_OffsetDate(0);
  *(v0 + 8048) = 0xD000000000000021;
  *(v0 + 8056) = 0x80000001C09C7290;
  *(v0 + 8064) = type metadata accessor for UsoTask_startCapture_common_MediaCapture(0);
  *(v0 + 8072) = 0xD000000000000020;
  *(v0 + 8080) = 0x80000001C09C72C0;
  *(v0 + 8088) = type metadata accessor for UsoTask_stopCapture_common_MediaCapture(0);
  *(v0 + 8096) = 0xD00000000000001CLL;
  *(v0 + 8104) = 0x80000001C09C72F0;
  *(v0 + 8112) = type metadata accessor for UsoTask_capture_common_MediaCapture(0);
  *(v0 + 8120) = 0xD000000000000017;
  *(v0 + 8128) = 0x80000001C09C7310;
  *(v0 + 8136) = type metadata accessor for UsoTask_noVerb_common_Duration(0);
  *(v0 + 8144) = 0xD000000000000019;
  *(v0 + 8152) = 0x80000001C09C7330;
  *(v0 + 8160) = type metadata accessor for UsoTask_summarise_common_Payment(0);
  *(v0 + 8168) = 0xD000000000000016;
  *(v0 + 8176) = 0x80000001C09C7350;
  *(v0 + 8184) = type metadata accessor for UsoTask_noVerb_common_Payment(0);
  *(v0 + 0x2000) = 0xD000000000000020;
  *(v0 + 8200) = 0x80000001C09C7370;
  *(v0 + 8208) = type metadata accessor for UsoTask_summariseHighest_common_Payment(0);
  *(v0 + 8216) = 0xD000000000000016;
  *(v0 + 8224) = 0x80000001C09C73A0;
  *(v0 + 8232) = type metadata accessor for UsoTask_cancel_common_Payment(0);
  *(v0 + 8240) = 0xD000000000000017;
  *(v0 + 8248) = 0x80000001C09C73C0;
  *(v0 + 8256) = type metadata accessor for UsoTask_request_common_Payment(0);
  *(v0 + 8264) = 0xD00000000000001CLL;
  *(v0 + 8272) = 0x80000001C09C73E0;
  *(v0 + 8280) = type metadata accessor for UsoTask_requestMoney_common_Payment(0);
  *(v0 + 8288) = 0xD000000000000013;
  *(v0 + 8296) = 0x80000001C09C7400;
  *(v0 + 8304) = type metadata accessor for UsoTask_pay_common_Payment(0);
  *(v0 + 8312) = 0xD00000000000001FLL;
  *(v0 + 8320) = 0x80000001C09C7420;
  *(v0 + 8328) = type metadata accessor for UsoTask_summariseLowest_common_Payment(0);
  *(v0 + 8336) = 0xD000000000000016;
  *(v0 + 8344) = 0x80000001C09C7440;
  *(v0 + 8352) = type metadata accessor for UsoTask_update_common_Payment(0);
  *(v0 + 8360) = 0xD00000000000001ELL;
  *(v0 + 8368) = 0x80000001C09C7460;
  *(v0 + 8376) = type metadata accessor for UsoTask_checkExistence_common_Payment(0);
  *(v0 + 8384) = 0xD000000000000018;
  *(v0 + 8392) = 0x80000001C09C7480;
  *(v0 + 8400) = type metadata accessor for UsoTask_run_common_VoiceCommand(0);
  *(v0 + 8408) = 0xD00000000000001CLL;
  *(v0 + 8416) = 0x80000001C09C74A0;
  *(v0 + 8424) = type metadata accessor for UsoTask_execute_common_VoiceCommand(0);
  *(v0 + 8432) = 0xD00000000000001BLL;
  *(v0 + 8440) = 0x80000001C09C74C0;
  *(v0 + 8448) = type metadata accessor for UsoTask_delete_common_VoiceCommand(0);
  *(v0 + 8456) = 0xD00000000000001CLL;
  *(v0 + 8464) = 0x80000001C09C74E0;
  *(v0 + 8472) = type metadata accessor for UsoTask_disable_common_VoiceCommand(0);
  *(v0 + 8480) = 0xD00000000000001ELL;
  *(v0 + 8488) = 0x80000001C09C7500;
  *(v0 + 8496) = type metadata accessor for UsoTask_summarise_common_VoiceCommand(0);
  *(v0 + 8504) = 0xD000000000000023;
  *(v0 + 8512) = 0x80000001C09C7520;
  *(v0 + 8520) = type metadata accessor for UsoTask_checkExistence_common_VoiceCommand(0);
  *(v0 + 8528) = 0xD00000000000001BLL;
  *(v0 + 8536) = 0x80000001C09C7550;
  *(v0 + 8544) = type metadata accessor for UsoTask_update_common_VoiceCommand(0);
  *(v0 + 8552) = 0xD00000000000001BLL;
  *(v0 + 8560) = 0x80000001C09C7570;
  *(v0 + 8568) = type metadata accessor for UsoTask_noVerb_common_VoiceCommand(0);
  *(v0 + 8576) = 0xD00000000000001BLL;
  *(v0 + 8584) = 0x80000001C09C7590;
  *(v0 + 8592) = type metadata accessor for UsoTask_create_common_VoiceCommand(0);
  *(v0 + 8600) = 0xD000000000000010;
  *(v0 + 8608) = 0x80000001C09C75B0;
  *(v0 + 8616) = type metadata accessor for UsoTask_park_common_Car(0);
  *(v0 + 8624) = 0xD00000000000001ALL;
  *(v0 + 8632) = 0x80000001C09C75D0;
  *(v0 + 8640) = type metadata accessor for UsoTask_checkExistence_common_Car(0);
  *(v0 + 8648) = 0xD000000000000012;
  *(v0 + 8656) = 0x80000001C09C75F0;
  *(v0 + 8664) = type metadata accessor for UsoTask_noVerb_common_Car(0);
  *(v0 + 8672) = 0xD000000000000010;
  *(v0 + 8680) = 0x80000001C09C7610;
  *(v0 + 8688) = type metadata accessor for UsoTask_find_common_Car(0);
  *(v0 + 8696) = 0xD000000000000010;
  *(v0 + 8704) = 0x80000001C09C7630;
  *(v0 + 8712) = type metadata accessor for UsoTask_ping_common_Car(0);
  *(v0 + 8720) = 0xD00000000000001CLL;
  *(v0 + 8728) = 0x80000001C09C7650;
  *(v0 + 8736) = type metadata accessor for UsoTask_noVerb_common_MixedFraction(0);
  *(v0 + 8744) = 0xD00000000000001CLL;
  *(v0 + 8752) = 0x80000001C09C7670;
  *(v0 + 8760) = type metadata accessor for UsoTask_noVerb_common_ReferenceType(0);
  *(v0 + 8768) = 0xD000000000000021;
  *(v0 + 8776) = 0x80000001C09C7690;
  *(v0 + 8784) = type metadata accessor for UsoTask_noVerb_appleAlarm_AlarmAttribute(0);
  *(v0 + 8792) = 0xD000000000000012;
  *(v0 + 8800) = 0x80000001C09C76C0;
  *(v0 + 8808) = type metadata accessor for UsoTask_noVerb_common_Uri(0);
  *(v0 + 8816) = 0xD000000000000020;
  *(v0 + 8824) = 0x80000001C09C76E0;
  *(v0 + 8832) = type metadata accessor for UsoTask_perform_common_SiriSocialAction(0);
  *(v0 + 8840) = 0xD00000000000001FLL;
  *(v0 + 8848) = 0x80000001C09C7710;
  *(v0 + 8856) = type metadata accessor for UsoTask_noVerb_common_SiriSocialAction(0);
  *(v0 + 8864) = 0xD000000000000022;
  *(v0 + 8872) = 0x80000001C09C7730;
  *(v0 + 8880) = type metadata accessor for UsoTask_summarise_common_SiriSocialAction(0);
  *(v0 + 8888) = 0xD00000000000001DLL;
  *(v0 + 8896) = 0x80000001C09C7760;
  *(v0 + 8904) = type metadata accessor for UsoTask_noVerb_common_CurrencyAmount(0);
  *(v0 + 8912) = 0xD00000000000001CLL;
  *(v0 + 8920) = 0x80000001C09C7780;
  *(v0 + 8928) = type metadata accessor for UsoTask_noVerb_common_MediaItemType(0);
  *(v0 + 8936) = 0xD00000000000001ALL;
  *(v0 + 8944) = 0x80000001C09C77A0;
  *(v0 + 8952) = type metadata accessor for UsoTask_noVerb_common_Geolocation(0);
  *(v0 + 8960) = 0xD000000000000024;
  *(v0 + 8968) = 0x80000001C09C77C0;
  *(v0 + 8976) = type metadata accessor for UsoTask_noVerb_commonFindMy_DeviceAttribute(0);
  *(v0 + 8984) = 0xD000000000000016;
  *(v0 + 8992) = 0x80000001C09C77F0;
  *(v0 + 9000) = type metadata accessor for UsoTask_noVerb_common_Contact(0);
  *(v0 + 9008) = 0xD000000000000030;
  *(v0 + 9016) = 0x80000001C09C7810;
  *(v0 + 9024) = type metadata accessor for UsoTask_noVerb_commonEventTrigger_EventTriggerAttribute(0);
  *(v0 + 9032) = 0xD000000000000032;
  *(v0 + 9040) = 0x80000001C09C7850;
  *(v0 + 9048) = type metadata accessor for UsoTask_noVerb_commonCalendarEvent_CalendarEventAttribute(0);
  *(v0 + 9056) = 0xD00000000000001ELL;
  *(v0 + 9064) = 0x80000001C09C7890;
  *(v0 + 9072) = type metadata accessor for UsoTask_noVerb_common_PointOfInterest(0);
  *(v0 + 9080) = 0xD00000000000001ELL;
  *(v0 + 9088) = 0x80000001C09C78B0;
  *(v0 + 9096) = type metadata accessor for UsoTask_create_common_PointOfInterest(0);
  *(v0 + 9104) = 0xD00000000000001ELL;
  *(v0 + 9112) = 0x80000001C09C78D0;
  *(v0 + 9120) = type metadata accessor for UsoTask_delete_common_PointOfInterest(0);
  *(v0 + 9128) = 0xD00000000000001FLL;
  *(v0 + 9136) = 0x80000001C09C78F0;
  *(v0 + 9144) = type metadata accessor for UsoTask_request_common_PointOfInterest(0);
  *(v0 + 9152) = 0xD00000000000001ELL;
  *(v0 + 9160) = 0x80000001C09C7910;
  *(v0 + 9168) = type metadata accessor for UsoTask_update_common_PointOfInterest(0);
  *(v0 + 9176) = 0xD000000000000021;
  *(v0 + 9184) = 0x80000001C09C7930;
  *(v0 + 9192) = type metadata accessor for UsoTask_summarise_common_PointOfInterest(0);
  *(v0 + 9200) = 0xD000000000000026;
  *(v0 + 9208) = 0x80000001C09C7960;
  *(v0 + 9216) = type metadata accessor for UsoTask_checkExistence_common_PointOfInterest(0);
  *(v0 + 9224) = 0xD00000000000001FLL;
  *(v0 + 9232) = 0x80000001C09C7990;
  *(v0 + 9240) = type metadata accessor for UsoTask_tell_common_SocialInterjection(0);
  *(v0 + 9248) = 0xD000000000000021;
  *(v0 + 9256) = 0x80000001C09C79B0;
  *(v0 + 9264) = type metadata accessor for UsoTask_noVerb_common_SocialInterjection(0);
  *(v0 + 9272) = 0xD00000000000001FLL;
  *(v0 + 9280) = 0x80000001C09C79E0;
  *(v0 + 9288) = type metadata accessor for UsoTask_summarise_common_SafetySession(0);
  *(v0 + 9296) = 0xD00000000000001CLL;
  *(v0 + 9304) = 0x80000001C09C7A00;
  *(v0 + 9312) = type metadata accessor for UsoTask_create_common_SafetySession(0);
  *(v0 + 9320) = 0xD00000000000001CLL;
  *(v0 + 9328) = 0x80000001C09C7A20;
  *(v0 + 9336) = type metadata accessor for UsoTask_update_common_SafetySession(0);
  *(v0 + 9344) = 0xD00000000000001DLL;
  *(v0 + 9352) = 0x80000001C09C7A40;
  *(v0 + 9360) = type metadata accessor for UsoTask_request_common_SafetySession(0);
  *(v0 + 9368) = 0xD00000000000001CLL;
  *(v0 + 9376) = 0x80000001C09C7A60;
  *(v0 + 9384) = type metadata accessor for UsoTask_noVerb_common_SafetySession(0);
  *(v0 + 9392) = 0xD000000000000024;
  *(v0 + 9400) = 0x80000001C09C7A80;
  *(v0 + 9408) = type metadata accessor for UsoTask_checkExistence_common_SafetySession(0);
  *(v0 + 9416) = 0xD00000000000001BLL;
  *(v0 + 9424) = 0x80000001C09C7AB0;
  *(v0 + 9432) = type metadata accessor for UsoTask_pause_common_SafetySession(0);
  *(v0 + 9440) = 0xD00000000000001CLL;
  *(v0 + 9448) = 0x80000001C09C7AD0;
  *(v0 + 9456) = type metadata accessor for UsoTask_delete_common_SafetySession(0);
  *(v0 + 9464) = 0xD00000000000001DLL;
  *(v0 + 9472) = 0x80000001C09C7AF0;
  *(v0 + 9480) = type metadata accessor for UsoTask_restart_common_SafetySession(0);
  *(v0 + 9488) = 0xD000000000000020;
  *(v0 + 9496) = 0x80000001C09C7B10;
  *(v0 + 9504) = type metadata accessor for UsoTask_noVerb_common_KnowledgeQuestion(0);
  *(v0 + 9512) = 0xD00000000000001DLL;
  *(v0 + 9520) = 0x80000001C09C7B40;
  *(v0 + 9528) = type metadata accessor for UsoTask_ask_common_KnowledgeQuestion(0);
  *(v0 + 9536) = 0xD000000000000025;
  *(v0 + 9544) = 0x80000001C09C7B60;
  *(v0 + 9552) = type metadata accessor for UsoTask_noVerb_common_DateTimeRangeQualifier(0);
  *(v0 + 9560) = 0xD00000000000001BLL;
  *(v0 + 9568) = 0x80000001C09C7B90;
  *(v0 + 9576) = type metadata accessor for UsoTask_noVerb_common_EmailAddress(0);
  *(v0 + 9584) = 0xD000000000000019;
  *(v0 + 9592) = 0x80000001C09C7BB0;
  *(v0 + 9600) = type metadata accessor for UsoTask_noVerb_common_CarProfile(0);
  *(v0 + 9608) = 0xD000000000000029;
  *(v0 + 9616) = 0x80000001C09C7BD0;
  *(v0 + 9624) = type metadata accessor for UsoTask_noVerb_common_KnowledgeQuestionAttribute(0);
  *(v0 + 9632) = 0xD00000000000001ALL;
  *(v0 + 9640) = 0x80000001C09C7C00;
  *(v0 + 9648) = type metadata accessor for UsoTask_noVerb_common_Measurement(0);
  *(v0 + 9656) = 0xD000000000000016;
  *(v0 + 9664) = 0x80000001C09C7C20;
  *(v0 + 9672) = type metadata accessor for UsoTask_noVerb_common_Compass(0);
  *(v0 + 9680) = 0xD000000000000017;
  *(v0 + 9688) = 0x80000001C09C7C40;
  *(v0 + 9696) = type metadata accessor for UsoTask_request_common_Compass(0);
  *(v0 + 9704) = 0xD00000000000001ELL;
  *(v0 + 9712) = 0x80000001C09C7C60;
  *(v0 + 9720) = type metadata accessor for UsoTask_checkExistence_common_Compass(0);
  *(v0 + 9728) = 0xD00000000000001FLL;
  *(v0 + 9736) = 0x80000001C09C7C80;
  *(v0 + 9744) = type metadata accessor for UsoTask_disableSetting_common_Reminder(0);
  *(v0 + 9752) = 0xD000000000000017;
  *(v0 + 9760) = 0x80000001C09C7CA0;
  *(v0 + 9768) = type metadata accessor for UsoTask_delete_common_Reminder(0);
  *(v0 + 9776) = 0xD000000000000017;
  *(v0 + 9784) = 0x80000001C09C7CC0;
  *(v0 + 9792) = type metadata accessor for UsoTask_noVerb_common_Reminder(0);
  *(v0 + 9800) = 0xD000000000000018;
  *(v0 + 9808) = 0x80000001C09C7CE0;
  *(v0 + 9816) = type metadata accessor for UsoTask_disable_common_Reminder(0);
  *(v0 + 9824) = 0xD000000000000018;
  *(v0 + 9832) = 0x80000001C09C7D00;
  *(v0 + 9840) = type metadata accessor for UsoTask_request_common_Reminder(0);
  *(v0 + 9848) = 0xD000000000000015;
  *(v0 + 9856) = 0x80000001C09C7D20;
  *(v0 + 9864) = type metadata accessor for UsoTask_hide_common_Reminder(0);
  *(v0 + 9872) = 0xD000000000000017;
  *(v0 + 9880) = 0x80000001C09C7D40;
  *(v0 + 9888) = type metadata accessor for UsoTask_snooze_common_Reminder(0);
  *(v0 + 9896) = 0xD000000000000017;
  *(v0 + 9904) = 0x80000001C09C7D60;
  *(v0 + 9912) = type metadata accessor for UsoTask_update_common_Reminder(0);
  *(v0 + 9920) = 0xD00000000000001FLL;
  *(v0 + 9928) = 0x80000001C09C7D80;
  *(v0 + 9936) = type metadata accessor for UsoTask_checkExistence_common_Reminder(0);
  *(v0 + 9944) = 0xD000000000000017;
  *(v0 + 9952) = 0x80000001C09C7DA0;
  *(v0 + 9960) = type metadata accessor for UsoTask_unhide_common_Reminder(0);
  *(v0 + 9968) = 0xD000000000000015;
  *(v0 + 9976) = 0x80000001C09C7DC0;
  *(v0 + 9984) = type metadata accessor for UsoTask_read_common_Reminder(0);
  *(v0 + 9992) = 0xD00000000000001ELL;
  *(v0 + 10000) = 0x80000001C09C7DE0;
  *(v0 + 10008) = type metadata accessor for UsoTask_enableSetting_common_Reminder(0);
  *(v0 + 10016) = 0xD000000000000017;
  *(v0 + 10024) = 0x80000001C09C7E00;
  *(v0 + 10032) = type metadata accessor for UsoTask_create_common_Reminder(0);
  *(v0 + 10040) = 0xD00000000000001ALL;
  *(v0 + 10048) = 0x80000001C09C7E20;
  *(v0 + 10056) = type metadata accessor for UsoTask_summarise_common_Reminder(0);
  *(v0 + 10064) = 0xD00000000000001CLL;
  *(v0 + 10072) = 0x80000001C09C7E40;
  *(v0 + 10080) = type metadata accessor for UsoTask_noVerb_common_LocalBusiness(0);
  *(v0 + 10088) = 0xD00000000000001FLL;
  *(v0 + 10096) = 0x80000001C09C7E60;
  *(v0 + 10104) = type metadata accessor for UsoTask_summarise_common_LocalBusiness(0);
  *(v0 + 10112) = 0xD00000000000001DLL;
  *(v0 + 10120) = 0x80000001C09C7E80;
  *(v0 + 10128) = type metadata accessor for UsoTask_request_common_LocalBusiness(0);
  *(v0 + 10136) = 0xD00000000000001ALL;
  *(v0 + 10144) = 0x80000001C09C7EA0;
  *(v0 + 10152) = type metadata accessor for UsoTask_read_common_LocalBusiness(0);
  *(v0 + 10160) = 0xD00000000000001CLL;
  *(v0 + 10168) = 0x80000001C09C7EC0;
  *(v0 + 10176) = type metadata accessor for UsoTask_create_common_LocalBusiness(0);
  *(v0 + 10184) = 0xD000000000000024;
  *(v0 + 10192) = 0x80000001C09C7EE0;
  *(v0 + 10200) = type metadata accessor for UsoTask_checkExistence_common_LocalBusiness(0);
  *(v0 + 10208) = 0xD00000000000001CLL;
  *(v0 + 10216) = 0x80000001C09C7F10;
  *(v0 + 10224) = type metadata accessor for UsoTask_delete_common_LocalBusiness(0);
  *(v0 + 10232) = 0xD00000000000001CLL;
  *(v0 + 10240) = 0x80000001C09C7F30;
  *(v0 + 10248) = type metadata accessor for UsoTask_update_common_LocalBusiness(0);
  *(v0 + 10256) = 0xD000000000000018;
  *(v0 + 10264) = 0x80000001C09C7F50;
  *(v0 + 10272) = type metadata accessor for UsoTask_noVerb_common_AppAction(0);
  *(v0 + 10280) = 0xD000000000000016;
  *(v0 + 10288) = 0x80000001C09C7F70;
  *(v0 + 10296) = type metadata accessor for UsoTask_undo_common_AppAction(0);
  *(v0 + 10304) = 0xD000000000000016;
  *(v0 + 10312) = 0x80000001C09C7F90;
  *(v0 + 10320) = type metadata accessor for UsoTask_redo_common_AppAction(0);
  *(v0 + 10328) = 0xD00000000000001CLL;
  *(v0 + 10336) = 0x80000001C09C7FB0;
  *(v0 + 10344) = type metadata accessor for UsoTask_runCommand_common_AppAction(0);
  *(v0 + 10352) = 0xD000000000000029;
  *(v0 + 10360) = 0x80000001C09C7FD0;
  *(v0 + 10368) = type metadata accessor for UsoTask_disableNotifications_common_FindMyStatus(0);
  *(v0 + 10376) = 0xD000000000000019;
  *(v0 + 10384) = 0x80000001C09C8000;
  *(v0 + 10392) = type metadata accessor for UsoTask_hide_common_FindMyStatus(0);
  *(v0 + 10400) = 0xD000000000000028;
  *(v0 + 10408) = 0x80000001C09C8020;
  *(v0 + 10416) = type metadata accessor for UsoTask_enableNotifications_common_FindMyStatus(0);
  *(v0 + 10424) = 0xD00000000000001BLL;
  *(v0 + 10432) = 0x80000001C09C8050;
  *(v0 + 10440) = type metadata accessor for UsoTask_unhide_common_FindMyStatus(0);
  *(v0 + 10448) = 0xD00000000000001BLL;
  *(v0 + 10456) = 0x80000001C09C8070;
  *(v0 + 10464) = type metadata accessor for UsoTask_noVerb_common_FindMyStatus(0);
  *(v0 + 10472) = 0xD000000000000027;
  *(v0 + 10480) = 0x80000001C09C8090;
  *(v0 + 10488) = type metadata accessor for UsoTask_noVerb_commonNotebook_NotebookItemType(0);
  *(v0 + 10496) = 0xD000000000000022;
  *(v0 + 10504) = 0x80000001C09C80C0;
  *(v0 + 10512) = type metadata accessor for UsoTask_perform_common_NotificationAction(0);
  *(v0 + 10520) = 0xD000000000000021;
  *(v0 + 10528) = 0x80000001C09C80F0;
  *(v0 + 10536) = type metadata accessor for UsoTask_noVerb_common_NotificationAction(0);
  *(v0 + 10544) = 0xD000000000000017;
  *(v0 + 10552) = 0x80000001C09C8120;
  *(v0 + 10560) = type metadata accessor for UsoTask_noVerb_common_Language(0);
  *(v0 + 10568) = 0xD00000000000001ELL;
  *(v0 + 10576) = 0x80000001C09C8140;
  *(v0 + 10584) = type metadata accessor for UsoTask_noVerb_commonApp_AppAttribute(0);
  *(v0 + 10592) = 0xD000000000000020;
  *(v0 + 10600) = 0x80000001C09C8160;
  *(v0 + 10608) = type metadata accessor for UsoTask_setDateTimeRange_common_Setting(0);
  *(v0 + 10616) = 0xD000000000000019;
  *(v0 + 10624) = 0x80000001C09C8190;
  *(v0 + 10632) = type metadata accessor for UsoTask_summarise_common_Setting(0);
  *(v0 + 10640) = 0xD000000000000016;
  *(v0 + 10648) = 0x80000001C09C81B0;
  *(v0 + 10656) = type metadata accessor for UsoTask_noVerb_common_Setting(0);
  *(v0 + 10664) = 0xD00000000000001BLL;
  *(v0 + 10672) = 0x80000001C09C81D0;
  *(v0 + 10680) = type metadata accessor for UsoTask_setDuration_common_Setting(0);
  *(v0 + 10688) = 0xD000000000000017;
  *(v0 + 10696) = 0x80000001C09C81F0;
  *(v0 + 10704) = type metadata accessor for UsoTask_request_common_Setting(0);
  *(v0 + 10712) = 0xD000000000000018;
  *(v0 + 10720) = 0x80000001C09C8210;
  *(v0 + 10728) = type metadata accessor for UsoTask_setLabel_common_Setting(0);
  *(v0 + 10736) = 0xD00000000000001ALL;
  *(v0 + 10744) = 0x80000001C09C8230;
  *(v0 + 10752) = type metadata accessor for UsoTask_increaseBy_common_Setting(0);
  *(v0 + 10760) = 0xD000000000000016;
  *(v0 + 10768) = 0x80000001C09C8250;
  *(v0 + 10776) = type metadata accessor for UsoTask_enable_common_Setting(0);
  *(v0 + 10784) = 0xD000000000000019;
  *(v0 + 10792) = 0x80000001C09C8270;
  *(v0 + 10800) = type metadata accessor for UsoTask_setNumber_common_Setting(0);
  *(v0 + 10808) = 0xD00000000000001ALL;
  *(v0 + 10816) = 0x80000001C09C8290;
  *(v0 + 10824) = type metadata accessor for UsoTask_decreaseBy_common_Setting(0);
  *(v0 + 10832) = 0xD00000000000001ELL;
  *(v0 + 10840) = 0x80000001C09C82B0;
  *(v0 + 10848) = type metadata accessor for UsoTask_setMeasurement_common_Setting(0);
  *(v0 + 10856) = 0xD000000000000017;
  *(v0 + 10864) = 0x80000001C09C82D0;
  *(v0 + 10872) = type metadata accessor for UsoTask_disable_common_Setting(0);
  *(v0 + 10880) = 0xD000000000000014;
  *(v0 + 10888) = 0x80000001C09C82F0;
  *(v0 + 10896) = type metadata accessor for UsoTask_open_common_Setting(0);
  *(v0 + 10904) = 0xD00000000000001ELL;
  *(v0 + 10912) = 0x80000001C09C8310;
  *(v0 + 10920) = type metadata accessor for UsoTask_checkExistence_common_Setting(0);
  *(v0 + 10928) = 0xD000000000000016;
  *(v0 + 10936) = 0x80000001C09C8330;
  *(v0 + 10944) = type metadata accessor for UsoTask_toggle_common_Setting(0);
  *(v0 + 10952) = 0xD000000000000024;
  *(v0 + 10960) = 0x80000001C09C8350;
  *(v0 + 10968) = type metadata accessor for UsoTask_discoverCapabilities_common_Setting(0);
  *(v0 + 10976) = 0xD000000000000025;
  *(v0 + 10984) = 0x80000001C09C8380;
  *(v0 + 10992) = type metadata accessor for UsoTask_increaseByMeasurement_common_Setting(0);
  *(v0 + 11000) = 0xD000000000000013;
  *(v0 + 11008) = 0x80000001C09C83B0;
  *(v0 + 11016) = type metadata accessor for UsoTask_set_common_Setting(0);
  *(v0 + 11024) = 0xD000000000000025;
  *(v0 + 11032) = 0x80000001C09C83D0;
  *(v0 + 11040) = type metadata accessor for UsoTask_decreaseByMeasurement_common_Setting(0);
  *(v0 + 11048) = 0xD000000000000014;
  *(v0 + 11056) = 0x80000001C09C8400;
  *(v0 + 11064) = type metadata accessor for UsoTask_unhide_uso_NoEntity(0);
  *(v0 + 11072) = 0xD000000000000013;
  *(v0 + 11080) = 0x80000001C09C8420;
  *(v0 + 11088) = type metadata accessor for UsoTask_pause_uso_NoEntity(0);
  *(v0 + 11096) = 0xD000000000000017;
  *(v0 + 11104) = 0x80000001C09C8440;
  *(v0 + 11112) = type metadata accessor for UsoTask_summarise_uso_NoEntity(0);
  *(v0 + 11120) = 0xD000000000000012;
  *(v0 + 11128) = 0x80000001C09C8460;
  *(v0 + 11136) = type metadata accessor for UsoTask_undo_uso_NoEntity(0);
  *(v0 + 11144) = 0xD000000000000012;
  *(v0 + 11152) = 0x80000001C09C8480;
  *(v0 + 11160) = type metadata accessor for UsoTask_read_uso_NoEntity(0);
  *(v0 + 11168) = 0xD000000000000012;
  *(v0 + 11176) = 0x80000001C09C84A0;
  *(v0 + 11184) = type metadata accessor for UsoTask_hide_uso_NoEntity(0);
  *(v0 + 11192) = 0xD000000000000013;
  *(v0 + 11200) = 0x80000001C09C84C0;
  *(v0 + 11208) = type metadata accessor for UsoTask_close_uso_NoEntity(0);
  *(v0 + 11216) = 0xD000000000000014;
  *(v0 + 11224) = 0x80000001C09C84E0;
  *(v0 + 11232) = type metadata accessor for UsoTask_resume_uso_NoEntity(0);
  *(v0 + 11240) = 0xD000000000000017;
  *(v0 + 11248) = 0x80000001C09C8500;
  *(v0 + 11256) = type metadata accessor for UsoTask_catchMeUp_uso_NoEntity(0);
  *(v0 + 11264) = 0xD000000000000019;
  *(v0 + 11272) = 0x80000001C09C8520;
  *(v0 + 11280) = type metadata accessor for UsoTask_skipForward_uso_NoEntity(0);
  *(v0 + 11288) = 0xD000000000000012;
  *(v0 + 11296) = 0x80000001C09C8540;
  *(v0 + 11304) = type metadata accessor for UsoTask_save_uso_NoEntity(0);
  *(v0 + 11312) = 0xD000000000000012;
  *(v0 + 11320) = 0x80000001C09C8560;
  *(v0 + 11328) = type metadata accessor for UsoTask_like_uso_NoEntity(0);
  *(v0 + 11336) = 0xD000000000000012;
  *(v0 + 11344) = 0x80000001C09C8580;
  *(v0 + 11352) = type metadata accessor for UsoTask_play_uso_NoEntity(0);
  *(v0 + 11360) = 0xD000000000000014;
  *(v0 + 11368) = 0x80000001C09C85A0;
  *(v0 + 11376) = type metadata accessor for UsoTask_repeat_uso_NoEntity(0);
  *(v0 + 11384) = 0xD00000000000001CLL;
  *(v0 + 11392) = 0x80000001C09C85C0;
  *(v0 + 11400) = type metadata accessor for UsoTask_softwareUpdate_uso_NoEntity(0);
  *(v0 + 11408) = 0xD000000000000013;
  *(v0 + 11416) = 0x80000001C09C85E0;
  *(v0 + 11424) = type metadata accessor for UsoTask_start_uso_NoEntity(0);
  *(v0 + 11432) = 0xD000000000000013;
  *(v0 + 11440) = 0x80000001C09C8600;
  *(v0 + 11448) = type metadata accessor for UsoTask_reply_uso_NoEntity(0);
  *(v0 + 11456) = 0xD000000000000012;
  *(v0 + 11464) = 0x80000001C09C8620;
  *(v0 + 11472) = type metadata accessor for UsoTask_open_uso_NoEntity(0);
  *(v0 + 11480) = 0xD00000000000001ALL;
  *(v0 + 11488) = 0x80000001C09C8640;
  *(v0 + 11496) = type metadata accessor for UsoTask_skipBackward_uso_NoEntity(0);
  *(v0 + 11504) = 0xD000000000000022;
  *(v0 + 11512) = 0x80000001C09C8660;
  *(v0 + 11520) = type metadata accessor for UsoTask_discoverCapabilities_uso_NoEntity(0);
  *(v0 + 11528) = 0xD000000000000014;
  *(v0 + 11536) = 0x80000001C09C8690;
  *(v0 + 11544) = type metadata accessor for UsoTask_update_uso_NoEntity(0);
  *(v0 + 11552) = 0xD000000000000014;
  *(v0 + 11560) = 0x80000001C09C86B0;
  *(v0 + 11568) = type metadata accessor for UsoTask_noVerb_uso_NoEntity(0);
  *(v0 + 11576) = 0xD000000000000014;
  *(v0 + 11584) = 0x80000001C09C86D0;
  *(v0 + 11592) = type metadata accessor for UsoTask_delete_uso_NoEntity(0);
  *(v0 + 11600) = 0xD000000000000015;
  *(v0 + 11608) = 0x80000001C09C86F0;
  *(v0 + 11616) = type metadata accessor for UsoTask_shuffle_uso_NoEntity(0);
  *(v0 + 11624) = 0xD000000000000015;
  *(v0 + 11632) = 0x80000001C09C8710;
  *(v0 + 11640) = type metadata accessor for UsoTask_restart_uso_NoEntity(0);
  *(v0 + 11648) = 0xD000000000000014;
  *(v0 + 11656) = 0x80000001C09C8730;
  *(v0 + 11664) = type metadata accessor for UsoTask_unlike_uso_NoEntity(0);
  *(v0 + 11672) = 0xD000000000000012;
  *(v0 + 11680) = 0x80000001C09C8750;
  *(v0 + 11688) = type metadata accessor for UsoTask_stop_uso_NoEntity(0);
  *(v0 + 11696) = 0xD000000000000012;
  *(v0 + 11704) = 0x80000001C09C8770;
  *(v0 + 11712) = type metadata accessor for UsoTask_quit_uso_NoEntity(0);
  *(v0 + 11720) = 0xD000000000000022;
  *(v0 + 11728) = 0x80000001C09C8790;
  *(v0 + 11736) = type metadata accessor for UsoTask_summarise_common_UserSocialAction(0);
  *(v0 + 11744) = 0xD00000000000001ELL;
  *(v0 + 11752) = 0x80000001C09C87C0;
  *(v0 + 11760) = type metadata accessor for UsoTask_state_common_UserSocialAction(0);
  *(v0 + 11768) = 0xD00000000000001FLL;
  *(v0 + 11776) = 0x80000001C09C87E0;
  *(v0 + 11784) = type metadata accessor for UsoTask_noVerb_common_UserSocialAction(0);
  *(v0 + 11792) = 0xD000000000000017;
  *(v0 + 11800) = 0x80000001C09C8800;
  *(v0 + 11808) = type metadata accessor for UsoTask_summarise_common_Alarm(0);
  *(v0 + 11816) = 0xD000000000000014;
  *(v0 + 11824) = 0x80000001C09C8820;
  *(v0 + 11832) = type metadata accessor for UsoTask_create_common_Alarm(0);
  *(v0 + 11840) = 0xD00000000000001CLL;
  *(v0 + 11848) = 0x80000001C09C8840;
  *(v0 + 11856) = type metadata accessor for UsoTask_checkExistence_common_Alarm(0);
  *(v0 + 11864) = 0xD000000000000014;
  *(v0 + 11872) = 0x80000001C09C8860;
  *(v0 + 11880) = type metadata accessor for UsoTask_noVerb_common_Alarm(0);
  *(v0 + 11888) = 0xD000000000000015;
  *(v0 + 11896) = 0x80000001C09C8880;
  *(v0 + 11904) = type metadata accessor for UsoTask_disable_common_Alarm(0);
  *(v0 + 11912) = 0xD000000000000014;
  *(v0 + 11920) = 0x80000001C09C88A0;
  *(v0 + 11928) = type metadata accessor for UsoTask_snooze_common_Alarm(0);
  *(v0 + 11936) = 0xD000000000000014;
  *(v0 + 11944) = 0x80000001C09C88C0;
  *(v0 + 11952) = type metadata accessor for UsoTask_enable_common_Alarm(0);
  *(v0 + 11960) = 0xD000000000000015;
  *(v0 + 11968) = 0x80000001C09C88E0;
  *(v0 + 11976) = type metadata accessor for UsoTask_request_common_Alarm(0);
  *(v0 + 11984) = 0xD000000000000014;
  *(v0 + 11992) = 0x80000001C09C8900;
  *(v0 + 12000) = type metadata accessor for UsoTask_delete_common_Alarm(0);
  *(v0 + 12008) = 0xD000000000000014;
  *(v0 + 12016) = 0x80000001C09C8920;
  *(v0 + 12024) = type metadata accessor for UsoTask_update_common_Alarm(0);
  *(v0 + 12032) = 0xD000000000000012;
  *(v0 + 12040) = 0x80000001C09C8940;
  *(v0 + 12048) = type metadata accessor for UsoTask_read_common_Alarm(0);
  *(v0 + 12056) = 0xD000000000000023;
  *(v0 + 12064) = 0x80000001C09C8960;
  *(v0 + 12072) = type metadata accessor for UsoTask_checkExistence_common_UserProperty(0);
  *(v0 + 12080) = 0xD00000000000001BLL;
  *(v0 + 12088) = 0x80000001C09C8990;
  *(v0 + 12096) = type metadata accessor for UsoTask_noVerb_common_UserProperty(0);
  *(v0 + 12104) = 0xD00000000000001ALL;
  *(v0 + 12112) = 0x80000001C09C89B0;
  *(v0 + 12120) = type metadata accessor for UsoTask_state_common_UserProperty(0);
  *(v0 + 12128) = 0xD00000000000001ELL;
  *(v0 + 12136) = 0x80000001C09C89D0;
  *(v0 + 12144) = type metadata accessor for UsoTask_summarise_common_UserProperty(0);
  *(v0 + 12152) = 0xD000000000000018;
  *(v0 + 12160) = 0x80000001C09C89F0;
  *(v0 + 12168) = type metadata accessor for UsoTask_noVerb_common_StopWatch(0);
  *(v0 + 12176) = 0xD000000000000015;
  *(v0 + 12184) = 0x80000001C09C8A10;
  *(v0 + 12192) = type metadata accessor for UsoTask_lap_common_StopWatch(0);
  *(v0 + 12200) = 0xD000000000000019;
  *(v0 + 12208) = 0x80000001C09C8A30;
  *(v0 + 12216) = type metadata accessor for UsoTask_request_common_StopWatch(0);
  *(v0 + 12224) = 0xD000000000000016;
  *(v0 + 12232) = 0x80000001C09C8A50;
  *(v0 + 12240) = type metadata accessor for UsoTask_stop_common_StopWatch(0);
  *(v0 + 12248) = 0xD000000000000016;
  *(v0 + 12256) = 0x80000001C09C8A70;
  *(v0 + 12264) = type metadata accessor for UsoTask_show_common_StopWatch(0);
  *(v0 + 12272) = 0xD000000000000017;
  *(v0 + 12280) = 0x80000001C09C8A90;
  *(v0 + 12288) = type metadata accessor for UsoTask_reset_common_StopWatch(0);
  *(v0 + 12296) = 0xD000000000000017;
  *(v0 + 12304) = 0x80000001C09C8AB0;
  *(v0 + 12312) = type metadata accessor for UsoTask_start_common_StopWatch(0);
  *(v0 + 12320) = 0xD00000000000001BLL;
  *(v0 + 12328) = 0x80000001C09C8AD0;
  *(v0 + 12336) = type metadata accessor for UsoTask_disableSetting_common_Note(0);
  *(v0 + 12344) = 0xD000000000000011;
  *(v0 + 12352) = 0x80000001C09C8AF0;
  *(v0 + 12360) = type metadata accessor for UsoTask_read_common_Note(0);
  *(v0 + 12368) = 0xD000000000000011;
  *(v0 + 12376) = 0x80000001C09C8B10;
  *(v0 + 12384) = type metadata accessor for UsoTask_undo_common_Note(0);
  *(v0 + 12392) = 0xD000000000000013;
  *(v0 + 12400) = 0x80000001C09C8B30;
  *(v0 + 12408) = type metadata accessor for UsoTask_noVerb_common_Note(0);
  *(v0 + 12416) = 0xD000000000000013;
  *(v0 + 12424) = 0x80000001C09C8B50;
  *(v0 + 12432) = type metadata accessor for UsoTask_update_common_Note(0);
  *(v0 + 12440) = 0xD00000000000001ALL;
  *(v0 + 12448) = 0x80000001C09C8B70;
  *(v0 + 12456) = type metadata accessor for UsoTask_enableSetting_common_Note(0);
  *(v0 + 12464) = 0xD000000000000014;
  *(v0 + 12472) = 0x80000001C09C8B90;
  *(v0 + 12480) = type metadata accessor for UsoTask_request_common_Note(0);
  *(v0 + 12488) = 0xD00000000000001BLL;
  *(v0 + 12496) = 0x80000001C09C8BB0;
  *(v0 + 12504) = type metadata accessor for UsoTask_checkExistence_common_Note(0);
  *(v0 + 12512) = 0xD000000000000013;
  *(v0 + 12520) = 0x80000001C09C8BD0;
  *(v0 + 12528) = type metadata accessor for UsoTask_delete_common_Note(0);
  *(v0 + 12536) = 0xD000000000000013;
  *(v0 + 12544) = 0x80000001C09C8BF0;
  *(v0 + 12552) = type metadata accessor for UsoTask_create_common_Note(0);
  *(v0 + 12560) = 0xD000000000000016;
  *(v0 + 12568) = 0x80000001C09C8C10;
  *(v0 + 12576) = type metadata accessor for UsoTask_summarise_common_Note(0);
  *(v0 + 12584) = 0xD000000000000018;
  *(v0 + 12592) = 0x80000001C09C8C30;
  *(v0 + 12600) = type metadata accessor for UsoTask_noVerb_common_EasterEgg(0);
  *(v0 + 12608) = 0xD00000000000001CLL;
  *(v0 + 12616) = 0x80000001C09C8C50;
  *(v0 + 12624) = type metadata accessor for UsoTask_update_common_CalendarEvent(0);
  *(v0 + 12632) = 0xD00000000000001DLL;
  *(v0 + 12640) = 0x80000001C09C8C70;
  *(v0 + 12648) = type metadata accessor for UsoTask_request_common_CalendarEvent(0);
  *(v0 + 12656) = 0xD00000000000001CLL;
  *(v0 + 12664) = 0x80000001C09C8C90;
  *(v0 + 12672) = type metadata accessor for UsoTask_noVerb_common_CalendarEvent(0);
  *(v0 + 12680) = 0xD00000000000001ALL;
  *(v0 + 12688) = 0x80000001C09C8CB0;
  *(v0 + 12696) = type metadata accessor for UsoTask_join_common_CalendarEvent(0);
  *(v0 + 12704) = 0xD00000000000001CLL;
  *(v0 + 12712) = 0x80000001C09C8CD0;
  *(v0 + 12720) = type metadata accessor for UsoTask_delete_common_CalendarEvent(0);
  *(v0 + 12728) = 0xD00000000000001FLL;
  *(v0 + 12736) = 0x80000001C09C8CF0;
  *(v0 + 12744) = type metadata accessor for UsoTask_summarise_common_CalendarEvent(0);
  *(v0 + 12752) = 0xD00000000000001ALL;
  *(v0 + 12760) = 0x80000001C09C8D10;
  *(v0 + 12768) = type metadata accessor for UsoTask_read_common_CalendarEvent(0);
  *(v0 + 12776) = 0xD000000000000024;
  *(v0 + 12784) = 0x80000001C09C8D30;
  *(v0 + 12792) = type metadata accessor for UsoTask_checkExistence_common_CalendarEvent(0);
  *(v0 + 12800) = 0xD00000000000001CLL;
  *(v0 + 12808) = 0x80000001C09C8D60;
  *(v0 + 12816) = type metadata accessor for UsoTask_create_common_CalendarEvent(0);
  *(v0 + 12824) = 0xD00000000000001ALL;
  *(v0 + 12832) = 0x80000001C09C8D80;
  *(v0 + 12840) = type metadata accessor for UsoTask_play_common_DailyBriefing(0);
  *(v0 + 12848) = 0xD00000000000001FLL;
  *(v0 + 12856) = 0x80000001C09C8DA0;
  *(v0 + 12864) = type metadata accessor for UsoTask_summarise_common_DailyBriefing(0);
  *(v0 + 12872) = 0xD00000000000001CLL;
  *(v0 + 12880) = 0x80000001C09C8DC0;
  *(v0 + 12888) = type metadata accessor for UsoTask_update_common_DailyBriefing(0);
  *(v0 + 12896) = 0xD00000000000001CLL;
  *(v0 + 12904) = 0x80000001C09C8DE0;
  *(v0 + 12912) = type metadata accessor for UsoTask_repeat_common_DailyBriefing(0);
  *(v0 + 12920) = 0xD00000000000001CLL;
  *(v0 + 12928) = 0x80000001C09C8E00;
  *(v0 + 12936) = type metadata accessor for UsoTask_delete_common_DailyBriefing(0);
  *(v0 + 12944) = 0xD00000000000001CLL;
  *(v0 + 12952) = 0x80000001C09C8E20;
  *(v0 + 12960) = type metadata accessor for UsoTask_noVerb_common_DailyBriefing(0);
  *(v0 + 12968) = 0xD000000000000024;
  *(v0 + 12976) = 0x80000001C09C8E40;
  *(v0 + 12984) = type metadata accessor for UsoTask_checkExistence_common_DailyBriefing(0);
  *(v0 + 12992) = 0xD00000000000001CLL;
  *(v0 + 13000) = 0x80000001C09C8E70;
  *(v0 + 13008) = type metadata accessor for UsoTask_request_common_NotebookItem(0);
  *(v0 + 13016) = 0xD00000000000001BLL;
  *(v0 + 13024) = 0x80000001C09C8E90;
  *(v0 + 13032) = type metadata accessor for UsoTask_snooze_common_NotebookItem(0);
  *(v0 + 13040) = 0xD00000000000001FLL;
  *(v0 + 13048) = 0x80000001C09C8EB0;
  *(v0 + 13056) = type metadata accessor for UsoTask_deactivate_common_NotebookItem(0);
  *(v0 + 13064) = 0xD00000000000001BLL;
  *(v0 + 13072) = 0x80000001C09C8ED0;
  *(v0 + 13080) = type metadata accessor for UsoTask_create_common_NotebookItem(0);
  *(v0 + 13088) = 0xD00000000000001BLL;
  *(v0 + 13096) = 0x80000001C09C8EF0;
  *(v0 + 13104) = type metadata accessor for UsoTask_delete_common_NotebookItem(0);
  *(v0 + 13112) = 0xD00000000000001ELL;
  *(v0 + 13120) = 0x80000001C09C8F10;
  *(v0 + 13128) = type metadata accessor for UsoTask_summarise_common_NotebookItem(0);
  *(v0 + 13136) = 0xD00000000000001BLL;
  *(v0 + 13144) = 0x80000001C09C8F30;
  *(v0 + 13152) = type metadata accessor for UsoTask_noVerb_common_NotebookItem(0);
  *(v0 + 13160) = 0xD000000000000023;
  *(v0 + 13168) = 0x80000001C09C8F50;
  *(v0 + 13176) = type metadata accessor for UsoTask_checkExistence_common_NotebookItem(0);
  *(v0 + 13184) = 0xD000000000000019;
  *(v0 + 13192) = 0x80000001C09C8F80;
  *(v0 + 13200) = type metadata accessor for UsoTask_read_common_NotebookItem(0);
  *(v0 + 13208) = 0xD000000000000019;
  *(v0 + 13216) = 0x80000001C09C8FA0;
  *(v0 + 13224) = type metadata accessor for UsoTask_undo_common_NotebookItem(0);
  *(v0 + 13232) = 0xD00000000000001BLL;
  *(v0 + 13240) = 0x80000001C09C8FC0;
  *(v0 + 13248) = type metadata accessor for UsoTask_update_common_NotebookItem(0);
  *(v0 + 13256) = 0xD000000000000019;
  *(v0 + 13264) = 0x80000001C09C8FE0;
  *(v0 + 13272) = type metadata accessor for UsoTask_summarise_common_Writing(0);
  *(v0 + 13280) = 0xD000000000000014;
  *(v0 + 13288) = 0x80000001C09C9000;
  *(v0 + 13296) = type metadata accessor for UsoTask_play_common_Writing(0);
  *(v0 + 13304) = 0xD000000000000014;
  *(v0 + 13312) = 0x80000001C09C9020;
  *(v0 + 13320) = type metadata accessor for UsoTask_quit_common_Writing(0);
  *(v0 + 13328) = 0xD000000000000014;
  *(v0 + 13336) = 0x80000001C09C9040;
  *(v0 + 13344) = type metadata accessor for UsoTask_skip_common_Writing(0);
  *(v0 + 13352) = 0xD000000000000016;
  *(v0 + 13360) = 0x80000001C09C9060;
  *(v0 + 13368) = type metadata accessor for UsoTask_noVerb_common_Writing(0);
  *(v0 + 13376) = 0xD000000000000017;
  *(v0 + 13384) = 0x80000001C09C9080;
  *(v0 + 13392) = type metadata accessor for UsoTask_request_common_Writing(0);
  *(v0 + 13400) = 0xD000000000000014;
  *(v0 + 13408) = 0x80000001C09C90A0;
  *(v0 + 13416) = type metadata accessor for UsoTask_show_common_Writing(0);
  *(v0 + 13424) = 0xD000000000000012;
  *(v0 + 13432) = 0x80000001C09C90C0;
  *(v0 + 13440) = type metadata accessor for UsoTask_noVerb_common_Age(0);
  *(v0 + 13448) = 0xD00000000000001DLL;
  *(v0 + 13456) = 0x80000001C09C90E0;
  *(v0 + 13464) = type metadata accessor for UsoTask_noVerb_uso_NLv3UnknownEntity(0);
  *(v0 + 13472) = 0xD000000000000018;
  *(v0 + 13480) = 0x80000001C09C9100;
  *(v0 + 13488) = type metadata accessor for UsoTask_create_common_SiriAlias(0);
  *(v0 + 13496) = 0xD00000000000001DLL;
  *(v0 + 13504) = 0x80000001C09C9120;
  *(v0 + 13512) = type metadata accessor for UsoTask_noVerb_common_OffsetDateTime(0);
  *(v0 + 13520) = 0xD00000000000001BLL;
  *(v0 + 13528) = 0x80000001C09C9140;
  *(v0 + 13536) = type metadata accessor for UsoTask_read_common_OffsetDateTime(0);
  *(v0 + 13544) = 0xD00000000000001ELL;
  *(v0 + 13552) = 0x80000001C09C9160;
  *(v0 + 13560) = type metadata accessor for UsoTask_convert_common_OffsetDateTime(0);
  *(v0 + 13568) = 0xD00000000000001ELL;
  *(v0 + 13576) = 0x80000001C09C9180;
  *(v0 + 13584) = type metadata accessor for UsoTask_request_common_OffsetDateTime(0);
  *(v0 + 13592) = 0xD000000000000025;
  *(v0 + 13600) = 0x80000001C09C91A0;
  *(v0 + 13608) = type metadata accessor for UsoTask_checkExistence_common_OffsetDateTime(0);
  *(v0 + 13616) = 0xD000000000000020;
  *(v0 + 13624) = 0x80000001C09C91D0;
  *(v0 + 13632) = type metadata accessor for UsoTask_summarise_common_OffsetDateTime(0);
  *(v0 + 13640) = 0xD000000000000015;
  *(v0 + 13648) = 0x80000001C09C9200;
  *(v0 + 13656) = type metadata accessor for UsoTask_noVerb_common_Window(0);
  *(v0 + 13664) = 0xD000000000000013;
  *(v0 + 13672) = 0x80000001C09C9220;
  *(v0 + 13680) = type metadata accessor for UsoTask_open_common_Window(0);
  *(v0 + 13688) = 0xD000000000000014;
  *(v0 + 13696) = 0x80000001C09C9240;
  *(v0 + 13704) = type metadata accessor for UsoTask_close_common_Window(0);
  *(v0 + 13712) = 0xD000000000000015;
  *(v0 + 13720) = 0x80000001C09C9260;
  *(v0 + 13728) = type metadata accessor for UsoTask_noVerb_common_Number(0);
  *(v0 + 13736) = 0xD000000000000019;
  *(v0 + 13744) = 0x80000001C09C9280;
  *(v0 + 13752) = type metadata accessor for UsoTask_noVerb_common_Quantifier(0);
  *(v0 + 13760) = 0xD000000000000013;
  *(v0 + 13768) = 0x80000001C09C92A0;
  *(v0 + 13776) = type metadata accessor for UsoTask_noVerb_common_Size(0);
  *(v0 + 13784) = 0xD00000000000001ALL;
  *(v0 + 13792) = 0x80000001C09C92C0;
  *(v0 + 13800) = type metadata accessor for UsoTask_noVerb_common_Translation(0);
  *(v0 + 13808) = 0xD000000000000018;
  *(v0 + 13816) = 0x80000001C09C92E0;
  *(v0 + 13824) = type metadata accessor for UsoTask_read_common_Translation(0);
  *(v0 + 13832) = 0xD000000000000023;
  *(v0 + 13840) = 0x80000001C09C9300;
  *(v0 + 13848) = type metadata accessor for UsoTask_stopTranslation_common_Translation(0);
  *(v0 + 13856) = 0xD000000000000024;
  *(v0 + 13864) = 0x80000001C09C9330;
  *(v0 + 13872) = type metadata accessor for UsoTask_startTranslation_common_Translation(0);
  *(v0 + 13880) = 0xD00000000000001DLL;
  *(v0 + 13888) = 0x80000001C09C9360;
  *(v0 + 13896) = type metadata accessor for UsoTask_summarise_common_Translation(0);
  *(v0 + 13904) = 0xD000000000000022;
  *(v0 + 13912) = 0x80000001C09C9380;
  *(v0 + 13920) = type metadata accessor for UsoTask_checkExistence_common_Translation(0);
  *(v0 + 13928) = 0xD00000000000001DLL;
  *(v0 + 13936) = 0x80000001C09C93B0;
  *(v0 + 13944) = type metadata accessor for UsoTask_translate_common_Translation(0);
  *(v0 + 13952) = 0xD000000000000028;
  *(v0 + 13960) = 0x80000001C09C93D0;
  *(v0 + 13968) = type metadata accessor for UsoTask_discoverCapabilities_common_Translation(0);
  *(v0 + 13976) = 0xD000000000000015;
  *(v0 + 13984) = 0x80000001C09C9400;
  *(v0 + 13992) = type metadata accessor for UsoTask_noVerb_common_Locale(0);
  *(v0 + 14000) = 0xD000000000000017;
  *(v0 + 14008) = 0x80000001C09C9420;
  *(v0 + 14016) = type metadata accessor for UsoTask_noVerb_common_DateType(0);
  *(v0 + 14024) = 0xD000000000000019;
  *(v0 + 14032) = 0x80000001C09C9440;
  *(v0 + 14040) = type metadata accessor for UsoTask_noVerb_common_OffsetTime(0);
  *(v0 + 14048) = 0xD000000000000018;
  *(v0 + 14056) = 0x80000001C09C9460;
  *(v0 + 14064) = type metadata accessor for UsoTask_noVerb_common_MediaItem(0);
  *(v0 + 14072) = 0xD000000000000018;
  *(v0 + 14080) = 0x80000001C09C9480;
  *(v0 + 14088) = type metadata accessor for UsoTask_follow_common_MediaItem(0);
  *(v0 + 14096) = 0xD000000000000019;
  *(v0 + 14104) = 0x80000001C09C94A0;
  *(v0 + 14112) = type metadata accessor for UsoTask_shuffle_common_MediaItem(0);
  *(v0 + 14120) = 0xD000000000000019;
  *(v0 + 14128) = 0x80000001C09C94C0;
  *(v0 + 14136) = type metadata accessor for UsoTask_restart_common_MediaItem(0);
  *(v0 + 14144) = 0xD000000000000018;
  *(v0 + 14152) = 0x80000001C09C94E0;
  *(v0 + 14160) = type metadata accessor for UsoTask_unhide_common_MediaItem(0);
  *(v0 + 14168) = 0xD00000000000001BLL;
  *(v0 + 14176) = 0x80000001C09C9500;
  *(v0 + 14184) = type metadata accessor for UsoTask_subscribe_common_MediaItem(0);
  *(v0 + 14192) = 0xD000000000000017;
  *(v0 + 14200) = 0x80000001C09C9520;
  *(v0 + 14208) = type metadata accessor for UsoTask_pause_common_MediaItem(0);
  *(v0 + 14216) = 0xD000000000000016;
  *(v0 + 14224) = 0x80000001C09C9540;
  *(v0 + 14232) = type metadata accessor for UsoTask_stop_common_MediaItem(0);
  *(v0 + 14240) = 0xD00000000000001DLL;
  *(v0 + 14248) = 0x80000001C09C9560;
  *(v0 + 14256) = type metadata accessor for UsoTask_repeatAudio_common_MediaItem(0);
  *(v0 + 14264) = 0xD000000000000017;
  *(v0 + 14272) = 0x80000001C09C9580;
  *(v0 + 14280) = type metadata accessor for UsoTask_start_common_MediaItem(0);
  *(v0 + 14288) = 0xD00000000000001BLL;
  *(v0 + 14296) = 0x80000001C09C95A0;
  *(v0 + 14304) = type metadata accessor for UsoTask_summarise_common_MediaItem(0);
  *(v0 + 14312) = 0xD000000000000018;
  *(v0 + 14320) = 0x80000001C09C95C0;
  *(v0 + 14328) = type metadata accessor for UsoTask_update_common_MediaItem(0);
  *(v0 + 14336) = 0xD000000000000016;
  *(v0 + 14344) = 0x80000001C09C95E0;
  *(v0 + 14352) = type metadata accessor for UsoTask_hide_common_MediaItem(0);
  *(v0 + 14360) = 0xD000000000000018;
  *(v0 + 14368) = 0x80000001C09C9600;
  *(v0 + 14376) = type metadata accessor for UsoTask_seekTo_common_MediaItem(0);
  *(v0 + 14384) = 0xD000000000000016;
  *(v0 + 14392) = 0x80000001C09C9620;
  *(v0 + 14400) = type metadata accessor for UsoTask_read_common_MediaItem(0);
  *(v0 + 14408) = 0xD000000000000018;
  *(v0 + 14416) = 0x80000001C09C9640;
  *(v0 + 14424) = type metadata accessor for UsoTask_resume_common_MediaItem(0);
  *(v0 + 14432) = 0xD00000000000001ELL;
  *(v0 + 14440) = 0x80000001C09C9660;
  *(v0 + 14448) = type metadata accessor for UsoTask_seekBackward_common_MediaItem(0);
  *(v0 + 14456) = 0xD00000000000001ELL;
  *(v0 + 14464) = 0x80000001C09C9680;
  *(v0 + 14472) = type metadata accessor for UsoTask_skipBackward_common_MediaItem(0);
  *(v0 + 14480) = 0xD00000000000001ALL;
  *(v0 + 14488) = 0x80000001C09C96A0;
  *(v0 + 14496) = type metadata accessor for UsoTask_transfer_common_MediaItem(0);
  *(v0 + 14504) = 0xD000000000000016;
  *(v0 + 14512) = 0x80000001C09C96C0;
  *(v0 + 14520) = type metadata accessor for UsoTask_play_common_MediaItem(0);
  *(v0 + 14528) = 0xD00000000000001DLL;
  *(v0 + 14536) = 0x80000001C09C96E0;
  *(v0 + 14544) = type metadata accessor for UsoTask_seekForward_common_MediaItem(0);
  *(v0 + 14552) = 0xD000000000000020;
  *(v0 + 14560) = 0x80000001C09C9700;
  *(v0 + 14568) = type metadata accessor for UsoTask_checkExistence_common_MediaItem(0);
  *(v0 + 14576) = 0xD00000000000001FLL;
  *(v0 + 14584) = 0x80000001C09C9730;
  *(v0 + 14592) = type metadata accessor for UsoTask_enableSetting_common_MediaItem(0);
  *(v0 + 14600) = 0xD000000000000018;
  *(v0 + 14608) = 0x80000001C09C9750;
  *(v0 + 14616) = type metadata accessor for UsoTask_unlike_common_MediaItem(0);
  *(v0 + 14624) = 0xD000000000000019;
  *(v0 + 14632) = 0x80000001C09C9770;
  *(v0 + 14640) = type metadata accessor for UsoTask_request_common_MediaItem(0);
  *(v0 + 14648) = 0xD000000000000018;
  *(v0 + 14656) = 0x80000001C09C9790;
  *(v0 + 14664) = type metadata accessor for UsoTask_repeat_common_MediaItem(0);
  *(v0 + 14672) = 0xD00000000000001DLL;
  *(v0 + 14680) = 0x80000001C09C97B0;
  *(v0 + 14688) = type metadata accessor for UsoTask_skipForward_common_MediaItem(0);
  *(v0 + 14696) = 0xD000000000000016;
  *(v0 + 14704) = 0x80000001C09C97D0;
  *(v0 + 14712) = type metadata accessor for UsoTask_open_common_MediaItem(0);
  *(v0 + 14720) = 0xD00000000000001BLL;
  *(v0 + 14728) = 0x80000001C09C97F0;
  *(v0 + 14736) = type metadata accessor for UsoTask_unrequest_common_MediaItem(0);
  *(v0 + 14744) = 0xD000000000000020;
  *(v0 + 14752) = 0x80000001C09C9810;
  *(v0 + 14760) = type metadata accessor for UsoTask_disableSetting_common_MediaItem(0);
  *(v0 + 14768) = 0xD000000000000016;
  *(v0 + 14776) = 0x80000001C09C9840;
  *(v0 + 14784) = type metadata accessor for UsoTask_like_common_MediaItem(0);
  *(v0 + 14792) = 0xD000000000000017;
  *(v0 + 14800) = 0x80000001C09C9860;
  *(v0 + 14808) = type metadata accessor for UsoTask_noVerb_common_Meridiem(0);
  *(v0 + 14816) = 0xD000000000000027;
  *(v0 + 14824) = 0x80000001C09C9880;
  *(v0 + 14832) = type metadata accessor for UsoTask_noVerb_appleNotebook_NotebookAttribute(0);
  *(v0 + 14840) = 0xD000000000000015;
  *(v0 + 14848) = 0x80000001C09C98B0;
  *(v0 + 14856) = type metadata accessor for UsoTask_noVerb_common_QRCode(0);
  *(v0 + 14864) = 0xD000000000000013;
  *(v0 + 14872) = 0x80000001C09C98D0;
  *(v0 + 14880) = type metadata accessor for UsoTask_scan_common_QRCode(0);
  *(v0 + 14888) = 0xD000000000000013;
  *(v0 + 14896) = 0x80000001C09C98F0;
  *(v0 + 14904) = type metadata accessor for UsoTask_show_common_QRCode(0);
  *(v0 + 14912) = 0xD000000000000021;
  *(v0 + 14920) = 0x80000001C09C9910;
  *(v0 + 14928) = type metadata accessor for UsoTask_noVerb_appleEmail_EmailAttribute(0);
  *(v0 + 14936) = 0xD00000000000001ALL;
  *(v0 + 14944) = 0x80000001C09C9940;
  *(v0 + 14952) = type metadata accessor for UsoTask_enable_common_UserProfile(0);
  *(v0 + 14960) = 0xD000000000000018;
  *(v0 + 14968) = 0x80000001C09C9960;
  *(v0 + 14976) = type metadata accessor for UsoTask_open_common_UserProfile(0);
  *(v0 + 14984) = 0xD00000000000001DLL;
  *(v0 + 14992) = 0x80000001C09C9980;
  *(v0 + 15000) = type metadata accessor for UsoTask_summarise_common_UserProfile(0);
  *(v0 + 15008) = 0xD00000000000001BLL;
  *(v0 + 15016) = 0x80000001C09C99A0;
  *(v0 + 15024) = type metadata accessor for UsoTask_disable_common_UserProfile(0);
  *(v0 + 15032) = 0xD000000000000022;
  *(v0 + 15040) = 0x80000001C09C99C0;
  *(v0 + 15048) = type metadata accessor for UsoTask_checkExistence_common_UserProfile(0);
  *(v0 + 15056) = 0xD00000000000001ALL;
  *(v0 + 15064) = 0x80000001C09C99F0;
  *(v0 + 15072) = type metadata accessor for UsoTask_noVerb_common_UserProfile(0);
  *(v0 + 15080) = 0xD00000000000001ELL;
  *(v0 + 15088) = 0x80000001C09C9A10;
  *(v0 + 15096) = type metadata accessor for UsoTask_previous_common_Communication(0);
  *(v0 + 15104) = 0xD00000000000001CLL;
  *(v0 + 15112) = 0x80000001C09C9A30;
  *(v0 + 15120) = type metadata accessor for UsoTask_noVerb_common_Communication(0);
  *(v0 + 15128) = 0xD00000000000001DLL;
  *(v0 + 15136) = 0x80000001C09C9A50;
  *(v0 + 15144) = type metadata accessor for UsoTask_request_common_Communication(0);
  *(v0 + 15152) = 0xD00000000000001ALL;
  *(v0 + 15160) = 0x80000001C09C9A70;
  *(v0 + 15168) = type metadata accessor for UsoTask_skip_common_Communication(0);
  *(v0 + 15176) = 0xD00000000000001CLL;
  *(v0 + 15184) = 0x80000001C09C9A90;
  *(v0 + 15192) = type metadata accessor for UsoTask_delete_common_Communication(0);
  *(v0 + 15200) = 0xD00000000000001ELL;
  *(v0 + 15208) = 0x80000001C09C9AB0;
  *(v0 + 15216) = type metadata accessor for UsoTask_continue_common_Communication(0);
  *(v0 + 15224) = 0xD00000000000001ALL;
  *(v0 + 15232) = 0x80000001C09C9AD0;
  *(v0 + 15240) = type metadata accessor for UsoTask_stop_common_Communication(0);
  *(v0 + 15248) = 0xD00000000000001FLL;
  *(v0 + 15256) = 0x80000001C09C9AF0;
  *(v0 + 15264) = type metadata accessor for UsoTask_summarise_common_Communication(0);
  *(v0 + 15272) = 0xD00000000000001CLL;
  *(v0 + 15280) = 0x80000001C09C9B10;
  *(v0 + 15288) = type metadata accessor for UsoTask_update_common_Communication(0);
  *(v0 + 15296) = 0xD00000000000001ALL;
  *(v0 + 15304) = 0x80000001C09C9B30;
  *(v0 + 15312) = type metadata accessor for UsoTask_read_common_Communication(0);
  *(v0 + 15320) = 0xD000000000000018;
  *(v0 + 15328) = 0x80000001C09C9B50;
  *(v0 + 15336) = type metadata accessor for UsoTask_show_common_DigitalFace(0);
  *(v0 + 15344) = 0xD000000000000017;
  *(v0 + 15352) = 0x80000001C09C9B70;
  *(v0 + 15360) = type metadata accessor for UsoTask_set_common_DigitalFace(0);
  *(v0 + 15368) = 0xD00000000000001ALL;
  *(v0 + 15376) = 0x80000001C09C9B90;
  *(v0 + 15384) = type metadata accessor for UsoTask_noVerb_common_DigitalFace(0);
  *(v0 + 15392) = 0xD000000000000020;
  *(v0 + 15400) = 0x80000001C09C9BB0;
  *(v0 + 15408) = type metadata accessor for UsoTask_skipBackward_common_DigitalFace(0);
  *(v0 + 15416) = 0xD00000000000001FLL;
  *(v0 + 15424) = 0x80000001C09C9BE0;
  *(v0 + 15432) = type metadata accessor for UsoTask_skipForward_common_DigitalFace(0);
  *(v0 + 15440) = 0xD00000000000002FLL;
  *(v0 + 15448) = 0x80000001C09C9C00;
  *(v0 + 15456) = type metadata accessor for UsoTask_noVerb_appleNotification_NotificationAttribute(0);
  *(v0 + 15464) = 0xD000000000000013;
  *(v0 + 15472) = 0x80000001C09C9C30;
  *(v0 + 15480) = type metadata accessor for UsoTask_ping_common_Device(0);
  *(v0 + 15488) = 0xD000000000000013;
  *(v0 + 15496) = 0x80000001C09C9C50;
  *(v0 + 15504) = type metadata accessor for UsoTask_find_common_Device(0);
  *(v0 + 15512) = 0xD000000000000015;
  *(v0 + 15520) = 0x80000001C09C9C70;
  *(v0 + 15528) = type metadata accessor for UsoTask_noVerb_common_Device(0);
  *(v0 + 15536) = 0xD00000000000001ALL;
  *(v0 + 15544) = 0x80000001C09C9C90;
  *(v0 + 15552) = type metadata accessor for UsoTask_tell_common_HolidayPhrase(0);
  *(v0 + 15560) = 0xD00000000000001CLL;
  *(v0 + 15568) = 0x80000001C09C9CB0;
  *(v0 + 15576) = type metadata accessor for UsoTask_noVerb_common_HolidayPhrase(0);
  *(v0 + 15584) = 0xD00000000000001BLL;
  *(v0 + 15592) = 0x80000001C09C9CD0;
  *(v0 + 15600) = type metadata accessor for UsoTask_repeat_common_Announcement(0);
  *(v0 + 15608) = 0xD000000000000019;
  *(v0 + 15616) = 0x80000001C09C9CF0;
  *(v0 + 15624) = type metadata accessor for UsoTask_send_common_Announcement(0);
  *(v0 + 15632) = 0xD00000000000001BLL;
  *(v0 + 15640) = 0x80000001C09C9D10;
  *(v0 + 15648) = type metadata accessor for UsoTask_noVerb_common_Announcement(0);
  *(v0 + 15656) = 0xD00000000000001ELL;
  *(v0 + 15664) = 0x80000001C09C9D30;
  *(v0 + 15672) = type metadata accessor for UsoTask_summarise_common_Announcement(0);
  *(v0 + 15680) = 0xD00000000000001ALL;
  *(v0 + 15688) = 0x80000001C09C9D50;
  *(v0 + 15696) = type metadata accessor for UsoTask_reply_common_Announcement(0);
  *(v0 + 15704) = 0xD000000000000021;
  *(v0 + 15712) = 0x80000001C09C9D70;
  *(v0 + 15720) = type metadata accessor for UsoTask_skipBackward_common_Announcement(0);
  *(v0 + 15728) = 0xD000000000000019;
  *(v0 + 15736) = 0x80000001C09C9DA0;
  *(v0 + 15744) = type metadata accessor for UsoTask_stop_common_Announcement(0);
  *(v0 + 15752) = 0xD000000000000020;
  *(v0 + 15760) = 0x80000001C09C9DC0;
  *(v0 + 15768) = type metadata accessor for UsoTask_skipForward_common_Announcement(0);
  *(v0 + 15776) = 0xD000000000000019;
  *(v0 + 15784) = 0x80000001C09C9DF0;
  *(v0 + 15792) = type metadata accessor for UsoTask_play_common_Announcement(0);
  *(v0 + 15800) = 0xD00000000000001DLL;
  *(v0 + 15808) = 0x80000001C09C9E10;
  *(v0 + 15816) = type metadata accessor for UsoTask_noVerb_common_GeographicArea(0);
  *(v0 + 15824) = 0xD000000000000020;
  *(v0 + 15832) = 0x80000001C09C9E30;
  *(v0 + 15840) = type metadata accessor for UsoTask_getPerson_common_GeographicArea(0);
  *(v0 + 15848) = 0xD000000000000014;
  *(v0 + 15856) = 0x80000001C09C9E60;
  *(v0 + 15864) = type metadata accessor for UsoTask_create_common_Agent(0);
  *(v0 + 15872) = 0xD000000000000014;
  *(v0 + 15880) = 0x80000001C09C9E80;
  *(v0 + 15888) = type metadata accessor for UsoTask_delete_common_Agent(0);
  *(v0 + 15896) = 0xD00000000000001CLL;
  *(v0 + 15904) = 0x80000001C09C9EA0;
  *(v0 + 15912) = type metadata accessor for UsoTask_checkExistence_common_Agent(0);
  *(v0 + 15920) = 0xD000000000000012;
  *(v0 + 15928) = 0x80000001C09C9EC0;
  *(v0 + 15936) = type metadata accessor for UsoTask_read_common_Agent(0);
  *(v0 + 15944) = 0xD000000000000014;
  *(v0 + 15952) = 0x80000001C09C9EE0;
  *(v0 + 15960) = type metadata accessor for UsoTask_update_common_Agent(0);
  *(v0 + 15968) = 0xD000000000000015;
  *(v0 + 15976) = 0x80000001C09C9F00;
  *(v0 + 15984) = type metadata accessor for UsoTask_request_common_Agent(0);
  *(v0 + 15992) = 0xD000000000000017;
  *(v0 + 16000) = 0x80000001C09C9F20;
  *(v0 + 16008) = type metadata accessor for UsoTask_summarise_common_Agent(0);
  *(v0 + 16016) = 0xD000000000000014;
  *(v0 + 16024) = 0x80000001C09C9F40;
  *(v0 + 16032) = type metadata accessor for UsoTask_noVerb_common_Agent(0);
  *(v0 + 16040) = 0xD000000000000017;
  *(v0 + 16048) = 0x80000001C09C9F60;
  *(v0 + 16056) = type metadata accessor for UsoTask_read_common_RecipeStep(0);
  *(v0 + 16064) = 0xD000000000000019;
  *(v0 + 16072) = 0x80000001C09C9F80;
  *(v0 + 16080) = type metadata accessor for UsoTask_seekTo_common_RecipeStep(0);
  *(v0 + 16088) = 0xD00000000000001FLL;
  *(v0 + 16096) = 0x80000001C09C9FA0;
  *(v0 + 16104) = type metadata accessor for UsoTask_skipBackward_common_RecipeStep(0);
  *(v0 + 16112) = 0xD00000000000001ELL;
  *(v0 + 16120) = 0x80000001C09C9FC0;
  *(v0 + 16128) = type metadata accessor for UsoTask_skipForward_common_RecipeStep(0);
  *(v0 + 16136) = 0xD000000000000021;
  *(v0 + 16144) = 0x80000001C09C9FE0;
  *(v0 + 16152) = type metadata accessor for UsoTask_checkExistence_common_RecipeStep(0);
  *(v0 + 16160) = 0xD000000000000017;
  *(v0 + 16168) = 0x80000001C09CA010;
  *(v0 + 16176) = type metadata accessor for UsoTask_stop_common_RecipeStep(0);
  *(v0 + 16184) = 0xD000000000000019;
  *(v0 + 16192) = 0x80000001C09CA030;
  *(v0 + 16200) = type metadata accessor for UsoTask_repeat_common_RecipeStep(0);
  *(v0 + 16208) = 0xD00000000000001CLL;
  *(v0 + 16216) = 0x80000001C09CA050;
  *(v0 + 16224) = type metadata accessor for UsoTask_summarise_common_RecipeStep(0);
  *(v0 + 16232) = 0xD000000000000018;
  *(v0 + 16240) = 0x80000001C09CA070;
  *(v0 + 16248) = type metadata accessor for UsoTask_start_common_RecipeStep(0);
  *(v0 + 16256) = 0xD000000000000019;
  *(v0 + 16264) = 0x80000001C09CA090;
  *(v0 + 16272) = type metadata accessor for UsoTask_noVerb_common_RecipeStep(0);
  *(v0 + 16280) = 0xD00000000000001ALL;
  *(v0 + 16288) = 0x80000001C09CA0B0;
  *(v0 + 16296) = type metadata accessor for UsoTask_request_common_RecipeStep(0);
  *(v0 + 16304) = 0xD000000000000018;
  *(v0 + 16312) = 0x80000001C09CA0D0;
  *(v0 + 16320) = type metadata accessor for UsoTask_pause_common_RecipeStep(0);
  *(v0 + 16328) = 0xD000000000000019;
  *(v0 + 16336) = 0x80000001C09CA0F0;
  *(v0 + 16344) = type metadata accessor for UsoTask_resume_common_RecipeStep(0);
  *(v0 + 16352) = 0xD000000000000025;
  *(v0 + 16360) = 0x80000001C09CA110;
  *(v0 + 16368) = type metadata accessor for UsoTask_getPerson_common_MicroGeographicArea(0);
  *(v0 + 16376) = 0xD000000000000022;
  *(v0 + 0x4000) = 0x80000001C09CA140;
  *(v0 + 16392) = type metadata accessor for UsoTask_noVerb_common_MicroGeographicArea(0);
  *(v0 + 16400) = 0xD00000000000001DLL;
  *(v0 + 16408) = 0x80000001C09CA170;
  *(v0 + 16416) = type metadata accessor for UsoTask_noVerb_commonStock_StockType(0);
  *(v0 + 16424) = 0xD00000000000001DLL;
  *(v0 + 16432) = 0x80000001C09CA190;
  *(v0 + 16440) = type metadata accessor for UsoTask_noVerb_common_UserPossession(0);
  *(v0 + 16448) = 0xD000000000000025;
  *(v0 + 16456) = 0x80000001C09CA1B0;
  *(v0 + 16464) = type metadata accessor for UsoTask_checkExistence_common_UserPossession(0);
  *(v0 + 16472) = 0xD00000000000001ELL;
  *(v0 + 16480) = 0x80000001C09CA1E0;
  *(v0 + 16488) = type metadata accessor for UsoTask_request_common_UserPossession(0);
  *(v0 + 16496) = 0xD00000000000001BLL;
  *(v0 + 16504) = 0x80000001C09CA200;
  *(v0 + 16512) = type metadata accessor for UsoTask_deny_common_UserPossession(0);
  *(v0 + 16520) = 0xD00000000000001CLL;
  *(v0 + 16528) = 0x80000001C09CA220;
  *(v0 + 16536) = type metadata accessor for UsoTask_state_common_UserPossession(0);
  *(v0 + 16544) = 0xD000000000000020;
  *(v0 + 16552) = 0x80000001C09CA240;
  *(v0 + 16560) = type metadata accessor for UsoTask_summarise_common_UserPossession(0);
  *(v0 + 16568) = 0xD00000000000001ALL;
  *(v0 + 16576) = 0x80000001C09CA270;
  *(v0 + 16584) = type metadata accessor for UsoTask_noVerb_common_CalendarEra(0);
  *(v0 + 16592) = 0xD00000000000001ELL;
  *(v0 + 16600) = 0x80000001C09CA290;
  *(v0 + 16608) = type metadata accessor for UsoTask_noVerb_common_Time12HourClock(0);
  *(v0 + 16616) = 0xD00000000000002BLL;
  *(v0 + 16624) = 0x80000001C09CA2B0;
  *(v0 + 16632) = type metadata accessor for UsoTask_noVerb_appleArithmetic_ArithmeticAttribute(0);
  *(v0 + 16640) = 0xD000000000000020;
  *(v0 + 16648) = 0x80000001C09CA2E0;
  *(v0 + 16656) = type metadata accessor for UsoTask_summarise_common_PaymentAccount(0);
  *(v0 + 16664) = 0xD000000000000025;
  *(v0 + 16672) = 0x80000001C09CA310;
  *(v0 + 16680) = type metadata accessor for UsoTask_checkExistence_common_PaymentAccount(0);
  *(v0 + 16688) = 0xD00000000000001ELL;
  *(v0 + 16696) = 0x80000001C09CA340;
  *(v0 + 16704) = type metadata accessor for UsoTask_request_common_PaymentAccount(0);
  *(v0 + 16712) = 0xD000000000000028;
  *(v0 + 16720) = 0x80000001C09CA360;
  *(v0 + 16728) = type metadata accessor for UsoTask_submitApplication_common_PaymentAccount(0);
  *(v0 + 16736) = 0xD000000000000027;
  *(v0 + 16744) = 0x80000001C09CA390;
  *(v0 + 16752) = type metadata accessor for UsoTask_summariseHighest_common_PaymentAccount(0);
  *(v0 + 16760) = 0xD000000000000026;
  *(v0 + 16768) = 0x80000001C09CA3C0;
  *(v0 + 16776) = type metadata accessor for UsoTask_summariseLowest_common_PaymentAccount(0);
  *(v0 + 16784) = 0xD00000000000001DLL;
  *(v0 + 16792) = 0x80000001C09CA3F0;
  *(v0 + 16800) = type metadata accessor for UsoTask_noVerb_common_PaymentAccount(0);
  *(v0 + 16808) = 0xD00000000000001DLL;
  *(v0 + 16816) = 0x80000001C09CA410;
  *(v0 + 16824) = type metadata accessor for UsoTask_create_common_PaymentAccount(0);
  *(v0 + 16832) = 0xD000000000000026;
  *(v0 + 16840) = 0x80000001C09CA430;
  *(v0 + 16848) = type metadata accessor for UsoTask_noVerb_commonWriting_WritingAttribute(0);
  *(v0 + 16856) = 0xD000000000000017;
  *(v0 + 16864) = 0x80000001C09CA460;
  *(v0 + 16872) = type metadata accessor for UsoTask_find_common_Arithmetic(0);
  *(v0 + 16880) = 0xD000000000000019;
  *(v0 + 16888) = 0x80000001C09CA480;
  *(v0 + 16896) = type metadata accessor for UsoTask_noVerb_common_Arithmetic(0);
  *(v0 + 16904) = 0xD00000000000001BLL;
  *(v0 + 16912) = 0x80000001C09CA4A0;
  *(v0 + 16920) = type metadata accessor for UsoTask_unlike_common_UserFavorite(0);
  *(v0 + 16928) = 0xD000000000000019;
  *(v0 + 16936) = 0x80000001C09CA4C0;
  *(v0 + 16944) = type metadata accessor for UsoTask_like_common_UserFavorite(0);
  *(v0 + 16952) = 0xD00000000000001ELL;
  *(v0 + 16960) = 0x80000001C09CA4E0;
  *(v0 + 16968) = type metadata accessor for UsoTask_checkLike_common_UserFavorite(0);
  *(v0 + 16976) = 0xD00000000000001ALL;
  *(v0 + 16984) = 0x80000001C09CA500;
  *(v0 + 16992) = type metadata accessor for UsoTask_guess_common_UserFavorite(0);
  *(v0 + 17000) = 0xD00000000000001BLL;
  *(v0 + 17008) = 0x80000001C09CA520;
  *(v0 + 17016) = type metadata accessor for UsoTask_noVerb_common_UserFavorite(0);
  *(v0 + 17024) = 0xD000000000000020;
  *(v0 + 17032) = 0x80000001C09CA540;
  *(v0 + 17040) = type metadata accessor for UsoTask_checkUnlike_common_UserFavorite(0);
  *(v0 + 17048) = 0xD00000000000001CLL;
  *(v0 + 17056) = 0x80000001C09CA570;
  *(v0 + 17064) = type metadata accessor for UsoTask_request_common_UserFavorite(0);
  *(v0 + 17072) = 0xD00000000000001ELL;
  *(v0 + 17080) = 0x80000001C09CA590;
  *(v0 + 17088) = type metadata accessor for UsoTask_summarise_common_SiriFavorite(0);
  *(v0 + 17096) = 0xD00000000000001BLL;
  *(v0 + 17104) = 0x80000001C09CA5B0;
  *(v0 + 17112) = type metadata accessor for UsoTask_unlike_common_SiriFavorite(0);
  *(v0 + 17120) = 0xD000000000000019;
  *(v0 + 17128) = 0x80000001C09CA5D0;
  *(v0 + 17136) = type metadata accessor for UsoTask_like_common_SiriFavorite(0);
  *(v0 + 17144) = 0xD00000000000001ELL;
  *(v0 + 17152) = 0x80000001C09CA5F0;
  *(v0 + 17160) = type metadata accessor for UsoTask_checkLike_common_SiriFavorite(0);
  *(v0 + 17168) = 0xD00000000000001BLL;
  *(v0 + 17176) = 0x80000001C09CA610;
  *(v0 + 17184) = type metadata accessor for UsoTask_noVerb_common_SiriFavorite(0);
  *(v0 + 17192) = 0xD00000000000001CLL;
  *(v0 + 17200) = 0x80000001C09CA630;
  *(v0 + 17208) = type metadata accessor for UsoTask_request_common_SiriFavorite(0);
  *(v0 + 17216) = 0xD000000000000020;
  *(v0 + 17224) = 0x80000001C09CA650;
  *(v0 + 17232) = type metadata accessor for UsoTask_checkUnlike_common_SiriFavorite(0);
  *(v0 + 17240) = 0xD00000000000001ELL;
  *(v0 + 17248) = 0x80000001C09CA680;
  *(v0 + 17256) = type metadata accessor for UsoTask_noVerb_common_Time24HourClock(0);
  *(v0 + 17264) = 0xD000000000000015;
  *(v0 + 17272) = 0x80000001C09CA6A0;
  *(v0 + 17280) = type metadata accessor for UsoTask_uninstall_common_App(0);
  *(v0 + 17288) = 0xD000000000000012;
  *(v0 + 17296) = 0x80000001C09CA6C0;
  *(v0 + 17304) = type metadata accessor for UsoTask_delete_common_App(0);
  *(v0 + 17312) = 0xD000000000000015;
  *(v0 + 17320) = 0x80000001C09CA6E0;
  *(v0 + 17328) = type metadata accessor for UsoTask_authorise_common_App(0);
  *(v0 + 17336) = 0xD000000000000012;
  *(v0 + 17344) = 0x80000001C09CA700;
  *(v0 + 17352) = type metadata accessor for UsoTask_noVerb_common_App(0);
  *(v0 + 17360) = 0xD000000000000015;
  *(v0 + 17368) = 0x80000001C09CA720;
  *(v0 + 17376) = type metadata accessor for UsoTask_updateApp_common_App(0);
  *(v0 + 17384) = 0xD000000000000013;
  *(v0 + 17392) = 0x80000001C09CA740;
  *(v0 + 17400) = type metadata accessor for UsoTask_install_common_App(0);
  *(v0 + 17408) = 0xD000000000000020;
  *(v0 + 17416) = 0x80000001C09CA760;
  *(v0 + 17424) = type metadata accessor for UsoTask_discoverCapabilities_common_App(0);
  *(v0 + 17432) = 0xD000000000000017;
  *(v0 + 17440) = 0x80000001C09CA790;
  *(v0 + 17448) = type metadata accessor for UsoTask_deauthorise_common_App(0);
  *(v0 + 17456) = 0xD000000000000015;
  *(v0 + 17464) = 0x80000001C09CA7B0;
  *(v0 + 17472) = type metadata accessor for UsoTask_summarise_common_App(0);
  *(v0 + 17480) = 0xD000000000000013;
  *(v0 + 17488) = 0x80000001C09CA7D0;
  *(v0 + 17496) = type metadata accessor for UsoTask_offload_common_App(0);
  *(v0 + 17504) = 0xD000000000000010;
  *(v0 + 17512) = 0x80000001C09CA7F0;
  *(v0 + 17520) = type metadata accessor for UsoTask_quit_common_App(0);
  *(v0 + 17528) = 0xD000000000000013;
  *(v0 + 17536) = 0x80000001C09CA810;
  *(v0 + 17544) = type metadata accessor for UsoTask_restart_common_App(0);
  *(v0 + 17552) = 0xD000000000000011;
  *(v0 + 17560) = 0x80000001C09CA830;
  *(v0 + 17568) = type metadata accessor for UsoTask_close_common_App(0);
  *(v0 + 17576) = 0xD000000000000010;
  *(v0 + 17584) = 0x80000001C09CA850;
  *(v0 + 17592) = type metadata accessor for UsoTask_open_common_App(0);
  *(v0 + 17600) = 0xD000000000000021;
  *(v0 + 17608) = 0x80000001C09CA870;
  *(v0 + 17616) = type metadata accessor for UsoTask_noVerb_appleTimer_TimerAttribute(0);
  *(v0 + 17624) = 0xD000000000000028;
  *(v0 + 17632) = 0x80000001C09CA8A0;
  *(v0 + 17640) = type metadata accessor for UsoTask_noVerb_commonNotebook_NotebookAttribute(0);
  *(v0 + 17648) = 0xD000000000000016;
  *(v0 + 17656) = 0x80000001C09CA8D0;
  *(v0 + 17664) = type metadata accessor for UsoTask_noVerb_common_Integer(0);
  *(v0 + 17672) = 0xD000000000000015;
  *(v0 + 17680) = 0x80000001C09CA8F0;
  *(v0 + 17688) = type metadata accessor for UsoTask_delete_common_Recipe(0);
  *(v0 + 17696) = 0xD000000000000015;
  *(v0 + 17704) = 0x80000001C09CA910;
  *(v0 + 17712) = type metadata accessor for UsoTask_update_common_Recipe(0);
  *(v0 + 17720) = 0xD000000000000015;
  *(v0 + 17728) = 0x80000001C09CA930;
  *(v0 + 17736) = type metadata accessor for UsoTask_switch_common_Recipe(0);
  *(v0 + 17744) = 0xD000000000000014;
  *(v0 + 17752) = 0x80000001C09CA950;
  *(v0 + 17760) = type metadata accessor for UsoTask_start_common_Recipe(0);
  *(v0 + 17768) = 0xD000000000000015;
  *(v0 + 17776) = 0x80000001C09CA970;
  *(v0 + 17784) = type metadata accessor for UsoTask_create_common_Recipe(0);
  *(v0 + 17792) = 0xD000000000000013;
  *(v0 + 17800) = 0x80000001C09CA990;
  *(v0 + 17808) = type metadata accessor for UsoTask_like_common_Recipe(0);
  *(v0 + 17816) = 0xD000000000000013;
  *(v0 + 17824) = 0x80000001C09CA9B0;
  *(v0 + 17832) = type metadata accessor for UsoTask_stop_common_Recipe(0);
  *(v0 + 17840) = 0xD000000000000013;
  *(v0 + 17848) = 0x80000001C09CA9D0;
  *(v0 + 17856) = type metadata accessor for UsoTask_save_common_Recipe(0);
  *(v0 + 17864) = 0xD00000000000001DLL;
  *(v0 + 17872) = 0x80000001C09CA9F0;
  *(v0 + 17880) = type metadata accessor for UsoTask_checkExistence_common_Recipe(0);
  *(v0 + 17888) = 0xD000000000000014;
  *(v0 + 17896) = 0x80000001C09CAA10;
  *(v0 + 17904) = type metadata accessor for UsoTask_pause_common_Recipe(0);
  *(v0 + 17912) = 0xD000000000000015;
  *(v0 + 17920) = 0x80000001C09CAA30;
  *(v0 + 17928) = type metadata accessor for UsoTask_unlike_common_Recipe(0);
  *(v0 + 17936) = 0xD000000000000015;
  *(v0 + 17944) = 0x80000001C09CAA50;
  *(v0 + 17952) = type metadata accessor for UsoTask_resume_common_Recipe(0);
  *(v0 + 17960) = 0xD000000000000018;
  *(v0 + 17968) = 0x80000001C09CAA70;
  *(v0 + 17976) = type metadata accessor for UsoTask_summarise_common_Recipe(0);
  *(v0 + 17984) = 0xD000000000000013;
  *(v0 + 17992) = 0x80000001C09CAA90;
  *(v0 + 18000) = type metadata accessor for UsoTask_read_common_Recipe(0);
  *(v0 + 18008) = 0xD000000000000016;
  *(v0 + 18016) = 0x80000001C09CAAB0;
  *(v0 + 18024) = type metadata accessor for UsoTask_request_common_Recipe(0);
  *(v0 + 18032) = 0xD000000000000018;
  *(v0 + 18040) = 0x80000001C09CAAD0;
  *(v0 + 18048) = type metadata accessor for UsoTask_unrequest_common_Recipe(0);
  *(v0 + 18056) = 0xD00000000000001BLL;
  *(v0 + 18064) = 0x80000001C09CAAF0;
  *(v0 + 18072) = type metadata accessor for UsoTask_noVerb_common_ListPosition(0);
  *(v0 + 18080) = 0xD000000000000029;
  *(v0 + 18088) = 0x80000001C09CAB10;
  *(v0 + 18096) = type metadata accessor for UsoTask_noVerb_applePhoneCall_PhoneCallAttribute(0);
  *(v0 + 18104) = 0xD00000000000001DLL;
  *(v0 + 18112) = 0x80000001C09CAB40;
  *(v0 + 18120) = type metadata accessor for UsoTask_skipBackward_common_Calendar(0);
  *(v0 + 18128) = 0xD00000000000001ALL;
  *(v0 + 18136) = 0x80000001C09CAB60;
  *(v0 + 18144) = type metadata accessor for UsoTask_summarise_common_Calendar(0);
  *(v0 + 18152) = 0xD000000000000017;
  *(v0 + 18160) = 0x80000001C09CAB80;
  *(v0 + 18168) = type metadata accessor for UsoTask_noVerb_common_Calendar(0);
  *(v0 + 18176) = 0xD00000000000001CLL;
  *(v0 + 18184) = 0x80000001C09CABA0;
  *(v0 + 18192) = type metadata accessor for UsoTask_skipForward_common_Calendar(0);
  *(v0 + 18200) = 0xD000000000000018;
  *(v0 + 18208) = 0x80000001C09CABC0;
  *(v0 + 18216) = type metadata accessor for UsoTask_update_common_HealthLog(0);
  *(v0 + 18224) = 0xD000000000000020;
  *(v0 + 18232) = 0x80000001C09CABE0;
  *(v0 + 18240) = type metadata accessor for UsoTask_checkExistence_common_HealthLog(0);
  *(v0 + 18248) = 0xD000000000000018;
  *(v0 + 18256) = 0x80000001C09CAC10;
  *(v0 + 18264) = type metadata accessor for UsoTask_delete_common_HealthLog(0);
  *(v0 + 18272) = 0xD000000000000018;
  *(v0 + 18280) = 0x80000001C09CAC30;
  *(v0 + 18288) = type metadata accessor for UsoTask_create_common_HealthLog(0);
  *(v0 + 18296) = 0xD000000000000016;
  *(v0 + 18304) = 0x80000001C09CAC50;
  *(v0 + 18312) = type metadata accessor for UsoTask_open_common_HealthLog(0);
  *(v0 + 18320) = 0xD00000000000001CLL;
  *(v0 + 18328) = 0x80000001C09CAC70;
  *(v0 + 18336) = type metadata accessor for UsoTask_requestLog_common_HealthLog(0);
  *(v0 + 18344) = 0xD000000000000018;
  *(v0 + 18352) = 0x80000001C09CAC90;
  *(v0 + 18360) = type metadata accessor for UsoTask_noVerb_common_HealthLog(0);
  *(v0 + 18368) = 0xD000000000000022;
  *(v0 + 18376) = 0x80000001C09CACB0;
  *(v0 + 18384) = type metadata accessor for UsoTask_noVerb_commonEmail_EmailAttribute(0);
  *(v0 + 18392) = 0xD00000000000001BLL;
  *(v0 + 18400) = 0x80000001C09CACE0;
  *(v0 + 18408) = type metadata accessor for UsoTask_delete_common_Notification(0);
  *(v0 + 18416) = 0xD00000000000001BLL;
  *(v0 + 18424) = 0x80000001C09CAD00;
  *(v0 + 18432) = type metadata accessor for UsoTask_repeat_common_Notification(0);
  *(v0 + 18440) = 0xD000000000000019;
  *(v0 + 18448) = 0x80000001C09CAD20;
  *(v0 + 18456) = type metadata accessor for UsoTask_read_common_Notification(0);
  *(v0 + 18464) = 0xD00000000000001DLL;
  *(v0 + 18472) = 0x80000001C09CAD40;
  *(v0 + 18480) = type metadata accessor for UsoTask_previous_common_Notification(0);
  *(v0 + 18488) = 0xD00000000000001ELL;
  *(v0 + 18496) = 0x80000001C09CAD60;
  *(v0 + 18504) = type metadata accessor for UsoTask_summarise_common_Notification(0);
  *(v0 + 18512) = 0xD000000000000019;
  *(v0 + 18520) = 0x80000001C09CAD80;
  *(v0 + 18528) = type metadata accessor for UsoTask_open_common_Notification(0);
  *(v0 + 18536) = 0xD000000000000019;
  *(v0 + 18544) = 0x80000001C09CADA0;
  *(v0 + 18552) = type metadata accessor for UsoTask_skip_common_Notification(0);
  *(v0 + 18560) = 0xD00000000000001BLL;
  *(v0 + 18568) = 0x80000001C09CADC0;
  *(v0 + 18576) = type metadata accessor for UsoTask_noVerb_common_Notification(0);
  *(v0 + 18584) = 0xD00000000000001CLL;
  *(v0 + 18592) = 0x80000001C09CADE0;
  *(v0 + 18600) = type metadata accessor for UsoTask_request_common_Notification(0);
  *(v0 + 18608) = 0xD000000000000023;
  *(v0 + 18616) = 0x80000001C09CAE00;
  *(v0 + 18624) = type metadata accessor for UsoTask_noVerb_common_MeasurementComponent(0);
  *(v0 + 18632) = 0xD00000000000001BLL;
  *(v0 + 18640) = 0x80000001C09CAE30;
  *(v0 + 18648) = type metadata accessor for UsoTask_noVerb_common_SiriProperty(0);
  *(v0 + 18656) = 0xD000000000000023;
  *(v0 + 18664) = 0x80000001C09CAE50;
  *(v0 + 18672) = type metadata accessor for UsoTask_checkExistence_common_SiriProperty(0);
  *(v0 + 18680) = 0xD00000000000001ALL;
  *(v0 + 18688) = 0x80000001C09CAE80;
  *(v0 + 18696) = type metadata accessor for UsoTask_state_common_SiriProperty(0);
  *(v0 + 18704) = 0xD00000000000001ELL;
  *(v0 + 18712) = 0x80000001C09CAEA0;
  *(v0 + 18720) = type metadata accessor for UsoTask_summarise_common_SiriProperty(0);
  *(v0 + 18728) = 0xD000000000000021;
  *(v0 + 18736) = 0x80000001C09CAEC0;
  *(v0 + 18744) = type metadata accessor for UsoTask_noVerb_common_PaymentAccountType(0);
  *(v0 + 18752) = 0xD000000000000018;
  *(v0 + 18760) = 0x80000001C09CAEF0;
  *(v0 + 18768) = type metadata accessor for UsoTask_hide_common_PhotoMemory(0);
  *(v0 + 18776) = 0xD00000000000001ALL;
  *(v0 + 18784) = 0x80000001C09CAF10;
  *(v0 + 18792) = type metadata accessor for UsoTask_resume_common_PhotoMemory(0);
  *(v0 + 18800) = 0xD000000000000020;
  *(v0 + 18808) = 0x80000001C09CAF30;
  *(v0 + 18816) = type metadata accessor for UsoTask_skipBackward_common_PhotoMemory(0);
  *(v0 + 18824) = 0xD00000000000001FLL;
  *(v0 + 18832) = 0x80000001C09CAF60;
  *(v0 + 18840) = type metadata accessor for UsoTask_skipForward_common_PhotoMemory(0);
  *(v0 + 18848) = 0xD00000000000001ALL;
  *(v0 + 18856) = 0x80000001C09CAF80;
  *(v0 + 18864) = type metadata accessor for UsoTask_noVerb_common_PhotoMemory(0);
  *(v0 + 18872) = 0xD00000000000001ALL;
  *(v0 + 18880) = 0x80000001C09CAFA0;
  *(v0 + 18888) = type metadata accessor for UsoTask_unhide_common_PhotoMemory(0);
  *(v0 + 18896) = 0xD000000000000018;
  *(v0 + 18904) = 0x80000001C09CAFC0;
  *(v0 + 18912) = type metadata accessor for UsoTask_stop_common_PhotoMemory(0);
  *(v0 + 18920) = 0xD000000000000018;
  *(v0 + 18928) = 0x80000001C09CAFE0;
  *(v0 + 18936) = type metadata accessor for UsoTask_play_common_PhotoMemory(0);
  *(v0 + 18944) = 0xD000000000000019;
  *(v0 + 18952) = 0x80000001C09CB000;
  *(v0 + 18960) = type metadata accessor for UsoTask_pause_common_PhotoMemory(0);
  *(v0 + 18968) = 0xD00000000000001DLL;
  *(v0 + 18976) = 0x80000001C09CB020;
  *(v0 + 18984) = type metadata accessor for UsoTask_goBack_common_NavigationMenu(0);
  *(v0 + 18992) = 0xD00000000000001DLL;
  *(v0 + 19000) = 0x80000001C09CB040;
  *(v0 + 19008) = type metadata accessor for UsoTask_goHome_common_NavigationMenu(0);
  *(v0 + 19016) = 0xD00000000000001DLL;
  *(v0 + 19024) = 0x80000001C09CB060;
  *(v0 + 19032) = type metadata accessor for UsoTask_noVerb_common_NavigationMenu(0);
  *(v0 + 19040) = 0xD000000000000019;
  *(v0 + 19048) = 0x80000001C09CB080;
  *(v0 + 19056) = type metadata accessor for UsoTask_noVerb_common_Medication(0);
  *(v0 + 19064) = 0xD000000000000018;
  *(v0 + 19072) = 0x80000001C09CB0A0;
  *(v0 + 19080) = type metadata accessor for UsoTask_noVerb_common_DayOfWeek(0);
  *(v0 + 19088) = 0xD000000000000017;
  *(v0 + 19096) = 0x80000001C09CB0C0;
  *(v0 + 19104) = type metadata accessor for UsoTask_noVerb_common_Currency(0);
  *(v0 + 19112) = 0xD00000000000001DLL;
  *(v0 + 19120) = 0x80000001C09CB0E0;
  *(v0 + 19128) = type metadata accessor for UsoTask_noVerb_common_AttachmentType(0);
  *(v0 + 19136) = 0xD000000000000014;
  *(v0 + 19144) = 0x80000001C09CB100;
  *(v0 + 19152) = type metadata accessor for UsoTask_open_common_Website(0);
  *(v0 + 19160) = 0xD000000000000016;
  *(v0 + 19168) = 0x80000001C09CB120;
  *(v0 + 19176) = type metadata accessor for UsoTask_noVerb_common_Website(0);
  *(v0 + 19184) = 0xD00000000000001BLL;
  *(v0 + 19192) = 0x80000001C09CB140;
  *(v0 + 19200) = type metadata accessor for UsoTask_create_common_JournalEntry(0);
  *(v0 + 19208) = 0xD00000000000001BLL;
  *(v0 + 19216) = 0x80000001C09CB160;
  *(v0 + 19224) = type metadata accessor for UsoTask_delete_common_JournalEntry(0);
  *(v0 + 19232) = 0xD00000000000001ELL;
  *(v0 + 19240) = 0x80000001C09CB180;
  *(v0 + 19248) = type metadata accessor for UsoTask_summarise_common_JournalEntry(0);
  *(v0 + 19256) = 0xD00000000000001BLL;
  *(v0 + 19264) = 0x80000001C09CB1A0;
  *(v0 + 19272) = type metadata accessor for UsoTask_update_common_JournalEntry(0);
  *(v0 + 19280) = 0xD00000000000001BLL;
  *(v0 + 19288) = 0x80000001C09CB1C0;
  *(v0 + 19296) = type metadata accessor for UsoTask_noVerb_common_JournalEntry(0);
  *(v0 + 19304) = 0xD000000000000016;
  *(v0 + 19312) = 0x80000001C09CB1E0;
  *(v0 + 19320) = type metadata accessor for UsoTask_noVerb_common_Decimal(0);
  *(v0 + 19328) = 0xD000000000000021;
  *(v0 + 19336) = 0x80000001C09CB200;
  *(v0 + 19344) = type metadata accessor for UsoTask_action_common_SocialConversation(0);
  *(v0 + 19352) = 0xD000000000000015;
  *(v0 + 19360) = 0x80000001C09CB230;
  *(v0 + 19368) = type metadata accessor for UsoTask_update_common_Person(0);
  *(v0 + 19376) = 0xD000000000000013;
  *(v0 + 19384) = 0x80000001C09CB250;
  *(v0 + 19392) = type metadata accessor for UsoTask_read_common_Person(0);
  *(v0 + 19400) = 0xD00000000000001ALL;
  *(v0 + 19408) = 0x80000001C09CB270;
  *(v0 + 19416) = type metadata accessor for UsoTask_setIdentity_common_Person(0);
  *(v0 + 19424) = 0xD00000000000001ALL;
  *(v0 + 19432) = 0x80000001C09CB290;
  *(v0 + 19440) = type metadata accessor for UsoTask_getLocation_common_Person(0);
  *(v0 + 19448) = 0xD000000000000016;
  *(v0 + 19456) = 0x80000001C09CB2B0;
  *(v0 + 19464) = type metadata accessor for UsoTask_request_common_Person(0);
  *(v0 + 19472) = 0xD000000000000018;
  *(v0 + 19480) = 0x80000001C09CB2D0;
  *(v0 + 19488) = type metadata accessor for UsoTask_summarise_common_Person(0);
  *(v0 + 19496) = 0xD00000000000001DLL;
  *(v0 + 19504) = 0x80000001C09CB2F0;
  *(v0 + 19512) = type metadata accessor for UsoTask_checkExistence_common_Person(0);
  *(v0 + 19520) = 0xD00000000000001CLL;
  *(v0 + 19528) = 0x80000001C09CB310;
  *(v0 + 19536) = type metadata accessor for UsoTask_pronounceName_common_Person(0);
  *(v0 + 19544) = 0xD000000000000015;
  *(v0 + 19552) = 0x80000001C09CB330;
  *(v0 + 19560) = type metadata accessor for UsoTask_noVerb_common_Person(0);
  *(v0 + 19568) = 0xD00000000000001CLL;
  *(v0 + 19576) = 0x80000001C09CB350;
  *(v0 + 19584) = type metadata accessor for UsoTask_checkIdentity_common_Person(0);
  *(v0 + 19592) = 0xD000000000000015;
  *(v0 + 19600) = 0x80000001C09CB370;
  *(v0 + 19608) = type metadata accessor for UsoTask_create_common_Person(0);
  *(v0 + 19616) = 0xD000000000000015;
  *(v0 + 19624) = 0x80000001C09CB390;
  *(v0 + 19632) = type metadata accessor for UsoTask_delete_common_Person(0);
  *(v0 + 19640) = 0xD00000000000001CLL;
  *(v0 + 19648) = 0x80000001C09CB3B0;
  *(v0 + 19656) = type metadata accessor for UsoTask_checkLocation_common_Person(0);
  *(v0 + 19664) = 0xD000000000000019;
  *(v0 + 19672) = 0x80000001C09CB3D0;
  *(v0 + 19680) = type metadata accessor for UsoTask_noVerb_common_Similarity(0);
  *(v0 + 19688) = 0xD000000000000019;
  *(v0 + 19696) = 0x80000001C09CB3F0;
  *(v0 + 19704) = type metadata accessor for UsoTask_noVerb_common_HomeEntity(0);
  *(v0 + 19712) = 0xD00000000000001DLL;
  *(v0 + 19720) = 0x80000001C09CB410;
  *(v0 + 19728) = type metadata accessor for UsoTask_noVerb_common_CalendarSystem(0);
  *(v0 + 19736) = 0xD00000000000002FLL;
  *(v0 + 19744) = 0x80000001C09CB430;
  *(v0 + 19752) = type metadata accessor for UsoTask_noVerb_common_KnowledgeQuestionPersonAttribute(0);
  *(v0 + 19760) = 0xD00000000000001BLL;
  *(v0 + 19768) = 0x80000001C09CB460;
  *(v0 + 19776) = type metadata accessor for UsoTask_enable_common_RadioStation(0);
  *(v0 + 19784) = 0xD000000000000019;
  *(v0 + 19792) = 0x80000001C09CB480;
  *(v0 + 19800) = type metadata accessor for UsoTask_play_common_RadioStation(0);
  *(v0 + 19808) = 0xD00000000000001CLL;
  *(v0 + 19816) = 0x80000001C09CB4A0;
  *(v0 + 19824) = type metadata accessor for UsoTask_disable_common_RadioStation(0);
  *(v0 + 19832) = 0xD00000000000001BLL;
  *(v0 + 19840) = 0x80000001C09CB4C0;
  *(v0 + 19848) = type metadata accessor for UsoTask_noVerb_common_RadioStation(0);
  *(v0 + 19856) = 0xD000000000000019;
  *(v0 + 19864) = 0x80000001C09CB4E0;
  *(v0 + 19872) = type metadata accessor for UsoTask_scan_common_RadioStation(0);
  *(v0 + 19880) = 0xD000000000000025;
  *(v0 + 19888) = 0x80000001C09CB500;
  *(v0 + 19896) = type metadata accessor for UsoTask_noVerb_commonApp_AppListingAttribute(0);
  *(v0 + 19904) = 0xD000000000000013;
  *(v0 + 19912) = 0x80000001C09CB530;
  *(v0 + 19920) = type metadata accessor for UsoTask_noVerb_common_Word(0);
  *(v0 + 19928) = 0xD00000000000001CLL;
  *(v0 + 19936) = 0x80000001C09CB550;
  *(v0 + 19944) = type metadata accessor for UsoTask_checkExistence_common_Group(0);
  *(v0 + 19952) = 0xD000000000000014;
  *(v0 + 19960) = 0x80000001C09CB570;
  *(v0 + 19968) = type metadata accessor for UsoTask_noVerb_common_Group(0);
  *(v0 + 19976) = 0xD000000000000014;
  *(v0 + 19984) = 0x80000001C09CB590;
  *(v0 + 19992) = type metadata accessor for UsoTask_create_common_Group(0);
  *(v0 + 20000) = 0xD000000000000012;
  *(v0 + 20008) = 0x80000001C09CB5B0;
  *(v0 + 20016) = type metadata accessor for UsoTask_read_common_Group(0);
  *(v0 + 20024) = 0xD000000000000017;
  *(v0 + 20032) = 0x80000001C09CB5D0;
  *(v0 + 20040) = type metadata accessor for UsoTask_summarise_common_Group(0);
  *(v0 + 20048) = 0xD000000000000014;
  *(v0 + 20056) = 0x80000001C09CB5F0;
  *(v0 + 20064) = type metadata accessor for UsoTask_delete_common_Group(0);
  *(v0 + 20072) = 0xD000000000000014;
  *(v0 + 20080) = 0x80000001C09CB610;
  *(v0 + 20088) = type metadata accessor for UsoTask_update_common_Group(0);
  *(v0 + 20096) = 0xD000000000000015;
  *(v0 + 20104) = 0x80000001C09CB630;
  *(v0 + 20112) = type metadata accessor for UsoTask_request_common_Group(0);
  *(v0 + 20120) = 0xD00000000000001ELL;
  *(v0 + 20128) = 0x80000001C09CB650;
  *(v0 + 20136) = type metadata accessor for UsoTask_noVerb_common_TemperatureUnit(0);
  *(v0 + 20144) = 0xD000000000000024;
  *(v0 + 20152) = 0x80000001C09CB670;
  *(v0 + 20160) = type metadata accessor for UsoTask_noVerb_commonStock_StockChangeState(0);
  *(v0 + 20168) = 0xD000000000000019;
  *(v0 + 20176) = 0x80000001C09CB6A0;
  *(v0 + 20184) = type metadata accessor for UsoTask_noVerb_common_Attachment(0);
  *(v0 + 20192) = 0xD00000000000001CLL;
  *(v0 + 20200) = 0x80000001C09CB6C0;
  *(v0 + 20208) = type metadata accessor for UsoTask_noVerb_common_PostalAddress(0);
  *(v0 + 20216) = 0xD000000000000013;
  *(v0 + 20224) = 0x80000001C09CB6E0;
  *(v0 + 20232) = type metadata accessor for UsoTask_noVerb_common_Time(0);
  *(v0 + 20240) = 0xD00000000000001ELL;
  *(v0 + 20248) = 0x80000001C09CB700;
  *(v0 + 20256) = type metadata accessor for UsoTask_summarise_common_NotebookList(0);
  *(v0 + 20264) = 0xD000000000000023;
  *(v0 + 20272) = 0x80000001C09CB720;
  *(v0 + 20280) = type metadata accessor for UsoTask_checkExistence_common_NotebookList(0);
  *(v0 + 20288) = 0xD000000000000019;
  *(v0 + 20296) = 0x80000001C09CB750;
  *(v0 + 20304) = type metadata accessor for UsoTask_read_common_NotebookList(0);
  *(v0 + 20312) = 0xD00000000000001BLL;
  *(v0 + 20320) = 0x80000001C09CB770;
  *(v0 + 20328) = type metadata accessor for UsoTask_update_common_NotebookList(0);
  *(v0 + 20336) = 0xD00000000000001CLL;
  *(v0 + 20344) = 0x80000001C09CB790;
  *(v0 + 20352) = type metadata accessor for UsoTask_request_common_NotebookList(0);
  *(v0 + 20360) = 0xD00000000000001BLL;
  *(v0 + 20368) = 0x80000001C09CB7B0;
  *(v0 + 20376) = type metadata accessor for UsoTask_noVerb_common_NotebookList(0);
  *(v0 + 20384) = 0xD00000000000001BLL;
  *(v0 + 20392) = 0x80000001C09CB7D0;
  *(v0 + 20400) = type metadata accessor for UsoTask_delete_common_NotebookList(0);
  *(v0 + 20408) = 0xD00000000000001BLL;
  *(v0 + 20416) = 0x80000001C09CB7F0;
  *(v0 + 20424) = type metadata accessor for UsoTask_create_common_NotebookList(0);
  v1 = sub_1C058B64C(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168B8, &qword_1C096DC88);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EBE50A30 = v1;
  return result;
}

double static UsoTask_CodegenConverter.convert(task:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v12 = a1[2];
    v13 = a1[3];

    MEMORY[0x1C68DD690](14906, 0xE200000000000000);
    v4 = a1[4];
    v5 = a1[5];

    MEMORY[0x1C68DD690](v4, v5);

    if (qword_1EBE14860 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v6 = qword_1EBE50A30;
    if (*(qword_1EBE50A30 + 16))
    {
      v7 = sub_1C0516A8C(v12, v13);
      if (v8)
      {
        v9 = *(*(v6 + 56) + 8 * v7);
        swift_endAccess();

        v10 = (*(v9 + 88))(a1);
        *(a2 + 24) = type metadata accessor for CodeGenTaskBase();
        *a2 = v10;
        return result;
      }
    }

    swift_endAccess();
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t getEnumTagSinglePayload for UsoTask_CodegenConverter(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for UsoTask_CodegenConverter(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
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

uint64_t IdentifierNamespace.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = 0x64695F6D657469;
  switch(v2)
  {
    case 0uLL:
      break;
    case 1uLL:
    case 6uLL:
    case 0x1DuLL:
      v3 = 0xD000000000000014;
      break;
    case 2uLL:
      v3 = 0x6369746E616D6573;
      break;
    case 3uLL:
      v3 = 0x54746361746E6F63;
      break;
    case 4uLL:
    case 0x19uLL:
      v3 = 0xD000000000000015;
      break;
    case 5uLL:
      v3 = 0xD000000000000012;
      break;
    case 7uLL:
      v3 = 0x6D754E656E6F6870;
      break;
    case 8uLL:
      v4 = 1315991649;
      goto LABEL_26;
    case 9uLL:
      v3 = 0x69746E655F707061;
      break;
    case 0xAuLL:
      v3 = 0x69746E655F707061;
      break;
    case 0xBuLL:
      v3 = 0x746365735F707061;
      break;
    case 0xCuLL:
      v3 = 0x747465735F707061;
      break;
    case 0xDuLL:
      v3 = 0x63616465526F7375;
      break;
    case 0xEuLL:
      v3 = 0x614E746E65746E69;
      break;
    case 0xFuLL:
      v3 = 1684632935;
      break;
    case 0x10uLL:
      v3 = 0x656C626D65736E65;
      break;
    case 0x11uLL:
      v3 = 0xD000000000000011;
      break;
    case 0x12uLL:
      v3 = 0xD000000000000012;
      break;
    case 0x13uLL:
      v3 = 0xD000000000000017;
      break;
    case 0x14uLL:
      v3 = 0xD000000000000018;
      break;
    case 0x15uLL:
      v4 = 1316118851;
LABEL_26:
      v3 = v4 | 0x656D6100000000;
      break;
    case 0x16uLL:
      v3 = 0x7355646572616873;
      break;
    case 0x17uLL:
      v3 = 0x646E496E656B6F74;
      break;
    case 0x18uLL:
      v3 = 0x6E695F686374616DLL;
      break;
    case 0x1AuLL:
    case 0x1BuLL:
      v3 = 0xD000000000000010;
      break;
    case 0x1CuLL:
      v3 = 0xD000000000000013;
      break;
    case 0x1EuLL:
      v3 = 0x6E6F697469736F70;
      break;
    case 0x1FuLL:
      v3 = 0x6974756C6F736572;
      break;
    case 0x20uLL:
      v3 = 0x796C6E4F61647544;
      break;
    case 0x21uLL:
      v3 = 0xD000000000000012;
      break;
    case 0x22uLL:
      v3 = 0x6574736567677573;
      break;
    case 0x23uLL:
      v3 = 0x74756374726F6873;
      break;
    default:
      v3 = v1;
      break;
  }

  sub_1C0545A24(v1, v2);
  return v3;
}

uint64_t sub_1C0545A24(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x24)
  {
  }

  return result;
}

uint64_t sub_1C0545A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x64695F6D657469 && a2 == 0xE700000000000000;
  if (v6 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  else if (v4 == 0xD000000000000014 && 0x80000001C09CB990 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 1;
  }

  else if (v4 == 0x6369746E616D6573 && v3 == 0xEE0065756C61765FLL || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 2;
  }

  else if (v4 == 0x54746361746E6F63 && v3 == 0xEB00000000657079 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 3;
  }

  else if (v4 == 0xD000000000000015 && 0x80000001C09CB970 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 4;
  }

  else if (v4 == 0xD000000000000012 && 0x80000001C09B7480 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 5;
  }

  else if (v4 == 0xD000000000000014 && 0x80000001C09CB950 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 6;
  }

  else if (v4 == 0x6D754E656E6F6870 && v3 == 0xEB00000000726562 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 7;
  }

  else if (v4 == 0x656D614E707061 && v3 == 0xE700000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 8;
  }

  else if (v4 == 0x69746E655F707061 && v3 == 0xEA00000000007974 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 9;
  }

  else if (v4 == 0x69746E655F707061 && v3 == 0xEF657079745F7974 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 10;
  }

  else if (v4 == 0x746365735F707061 && v3 == 0xEB000000006E6F69 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 11;
  }

  else if (v4 == 0x747465735F707061 && v3 == 0xEB00000000676E69 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 12;
  }

  else if (v4 == 0x63616465526F7375 && v3 == 0xEE0064496E6F6974 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 13;
  }

  else if (v4 == 0x614E746E65746E69 && v3 == 0xEA0000000000656DLL || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 14;
  }

  else if (v4 == 1684632935 && v3 == 0xE400000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 15;
  }

  else if (v4 == 0x656C626D65736E65 && v3 == 0xE800000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 16;
  }

  else if (v4 == 0xD000000000000011 && 0x80000001C09CB930 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 17;
  }

  else if (v4 == 0xD000000000000012 && 0x80000001C09CB910 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 18;
  }

  else if (v4 == 0xD000000000000017 && 0x80000001C09CB8F0 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 19;
  }

  else if (v4 == 0xD000000000000018 && 0x80000001C09CB8D0 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 20;
  }

  else if (v4 == 0x656D614E726143 && v3 == 0xE700000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 21;
  }

  else if (v4 == 0x7355646572616873 && v3 == 0xEC00000064497265 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 22;
  }

  else if (v4 == 0x646E496E656B6F74 && v3 == 0xEA00000000007865 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 23;
  }

  else if (v4 == 0x6E695F686374616DLL && v3 == 0xEA00000000006F66 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 24;
  }

  else if (v4 == 0xD000000000000015 && 0x80000001C09CB8B0 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 25;
  }

  else if (v4 == 0xD000000000000010 && 0x80000001C09CB890 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 26;
  }

  else if (v4 == 0xD000000000000010 && 0x80000001C09CB870 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 27;
  }

  else if (v4 == 0xD000000000000013 && 0x80000001C09CB850 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 28;
  }

  else if (v4 == 0xD000000000000014 && 0x80000001C09CB830 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 29;
  }

  else if (v4 == 0x6E6F697469736F70 && v3 == 0xEB0000000064695FLL || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 30;
  }

  else if (v4 == 0x6974756C6F736572 && v3 == 0xEF657079745F6E6FLL || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 31;
  }

  else if (v4 == 0x796C6E4F61647544 && v3 == 0xE800000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 32;
  }

  else if (v4 == 0xD000000000000012 && 0x80000001C09CB810 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 33;
  }

  else if (v4 == 0x6574736567677573 && v3 == 0xEF64496D61644164 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 34;
  }

  else if (v4 == 0x74756374726F6873 && v3 == 0xEF676E6974746553 || (result = sub_1C095DF3C(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 35;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

unint64_t IdentifierAppBundle.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = 0x746163696C707041;
  switch(v2)
  {
    case 0uLL:
      break;
    case 1uLL:
      v3 = 0x73746361746E6F43;
      break;
    case 2uLL:
      v3 = 0x794D646E6946;
      break;
    case 3uLL:
      v3 = 0x74694B656D6F48;
      break;
    case 4uLL:
      v3 = 0x616C50616964654DLL;
      break;
    case 5uLL:
      v3 = 0x736567617373654DLL;
      break;
    case 6uLL:
      v3 = 0x736F746F6850;
      break;
    case 7uLL:
      v3 = 0x7265646E696D6552;
      break;
    case 8uLL:
      v3 = 0x74756374726F6853;
      break;
    case 9uLL:
      v3 = 0xD000000000000013;
      break;
    case 0xAuLL:
      v3 = 0x626D654D656D6F48;
      break;
    case 0xBuLL:
      v3 = 0x7374736163646F50;
      break;
    case 0xCuLL:
      v3 = 0x7373656E746946;
      break;
    case 0xDuLL:
      v3 = 0x6472616F6279654BLL;
      break;
    case 0xEuLL:
      v3 = 0x74756F5265726F43;
      break;
    case 0xFuLL:
      v3 = 0x7469617274726F50;
      break;
    case 0x10uLL:
      v3 = 0x7261646E656C6143;
      break;
    case 0x11uLL:
      v3 = 0x6F63634172657355;
      break;
    case 0x12uLL:
      v3 = 0x79616C50726143;
      break;
    case 0x13uLL:
      v3 = 0xD000000000000014;
      break;
    case 0x14uLL:
      v3 = 0xD00000000000001CLL;
      break;
    case 0x15uLL:
      v3 = 0xD000000000000014;
      break;
    case 0x16uLL:
      v3 = 0xD000000000000014;
      break;
    case 0x17uLL:
      v3 = 0xD000000000000015;
      break;
    case 0x18uLL:
      v3 = 0x736E656B6F54;
      break;
    case 0x19uLL:
      v3 = 0xD000000000000012;
      break;
    default:
      v3 = v1;
      break;
  }

  sub_1C05485DC(v1, v2);
  return v3;
}