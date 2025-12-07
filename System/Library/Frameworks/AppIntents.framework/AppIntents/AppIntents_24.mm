uint64_t sub_18F322B18(uint64_t a1)
{
  v2 = sub_18F322C14();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18F322B54(uint64_t a1)
{
  v2 = sub_18F322C14();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_18F322C14()
{
  result = qword_1EACCEA58;
  if (!qword_1EACCEA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCEA58);
  }

  return result;
}

id sub_18F322C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_18F5218AC();

  if (a4)
  {
    v8 = sub_18F5216AC();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

unint64_t *sub_18F322D18(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_18F322EF4(v5, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_18F322D90(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_18F322D18(v8, v4, v2);
      MEMORY[0x193ADD350](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = (v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_18F128DD4(0, v4, v5);
  v6 = sub_18F322EF4(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

unint64_t *sub_18F322EF4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v21 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 56);
    v16 = (*(a3 + 48) + 16 * v14);
    v17 = v16[1];
    v23[0] = *v16;
    v23[1] = v17;
    sub_18F0FECD4(v15 + 32 * v14, v22);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v18 = sub_18F322544(v23, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    if (v3)
    {
      return result;
    }

    if (v18)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_18F3236EC(v21, a2, v24, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_18F3236EC(v21, a2, v24, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_18F323068(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for AppViewBridgeAnnotation(0);
  v46 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v44 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6128, &unk_18F556EC0);
  result = sub_18F522AEC();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 8;
  v17 = v44;
  v42 = a4;
  v43 = result;
  while (v14)
  {
    v18 = v17;
    OUTLINED_FUNCTION_7_47();
    v47 = v20;
LABEL_16:
    v23 = v19 | (v15 << 6);
    v24 = a4[7];
    v25 = (a4[6] + 24 * v23);
    v27 = *v25;
    v26 = v25[1];
    v28 = v25[2];
    v29 = v45;
    v48 = *(v46 + 72);
    sub_18F323A38(v24 + v48 * v23, v45);
    sub_18F323A9C(v29, v18);
    v13 = v43;
    sub_18F522EFC();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F5219CC();
    MEMORY[0x193ADC4F0](v28);
    sub_18F522F4C();
    OUTLINED_FUNCTION_37_1();
    v33 = (v32 << v30) & ~v16[v31];
    if (!v33)
    {
      OUTLINED_FUNCTION_35();
      result = v44;
      while (++v35 != v37 || (v36 & 1) == 0)
      {
        v38 = v35 == v37;
        if (v35 == v37)
        {
          v35 = 0;
        }

        v36 |= v38;
        v39 = v16[v35];
        if (v39 != -1)
        {
          v34 = __clz(__rbit64(~v39)) + (v35 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v34 = __clz(__rbit64(v33)) | v30 & 0x7FFFFFFFFFFFFFC0;
    result = v44;
LABEL_25:
    *(v16 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    v40 = (v13[6] + 24 * v34);
    *v40 = v27;
    v40[1] = v26;
    v40[2] = v28;
    v17 = result;
    result = sub_18F323A9C(result, v13[7] + v34 * v48);
    ++v13[2];
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v42;
    v14 = v47;
    if (!a3)
    {
      return v13;
    }
  }

  v21 = v15;
  while (1)
  {
    v15 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    ++v21;
    if (a1[v15])
    {
      v18 = v17;
      OUTLINED_FUNCTION_6_49();
      v47 = v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_18F323368(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_18F520E6C();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = v42 - v12;
  if (a3)
  {
    if (a4[2] == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6120, &unk_18F556EB0);
      v13 = sub_18F522AEC();
      if (a2 < 1)
      {
        v14 = 0;
      }

      else
      {
        v14 = *a1;
      }

      v15 = 0;
      v42[2] = v48 + 16;
      v16 = v13 + 64;
      v44 = a1;
      v43 = v13;
      v42[0] = a4;
      v42[1] = v48 + 32;
      while (v14)
      {
        v17 = v11;
        OUTLINED_FUNCTION_7_47();
        v46 = v19;
LABEL_16:
        v22 = v18 | (v15 << 6);
        v23 = a4[6];
        v25 = v48;
        v24 = v49;
        v47 = *(v48 + 72);
        v26 = v45;
        (*(v48 + 16))(v45, v23 + v47 * v22, v49);
        sub_18F19ECB0(a4[7] + 56 * v22, v54);
        v27 = *(v25 + 32);
        v11 = v17;
        v27(v17, v26, v24);
        v50 = v54[0];
        v51 = v54[1];
        v52 = v54[2];
        v53 = v55;
        v28 = v43;
        sub_18F22AEBC();
        sub_18F52177C();
        OUTLINED_FUNCTION_37_1();
        v32 = (v31 << v29) & ~*(v16 + 8 * v30);
        if (!v32)
        {
          OUTLINED_FUNCTION_35();
          a1 = v44;
          while (++v34 != v36 || (v35 & 1) == 0)
          {
            v37 = v34 == v36;
            if (v34 == v36)
            {
              v34 = 0;
            }

            v35 |= v37;
            v38 = *(v16 + 8 * v34);
            if (v38 != -1)
            {
              v33 = __clz(__rbit64(~v38)) + (v34 << 6);
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        v33 = __clz(__rbit64(v32)) | v29 & 0x7FFFFFFFFFFFFFC0;
        a1 = v44;
LABEL_25:
        *(v16 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
        v27((v28[6] + v33 * v47), v17, v49);
        v39 = v28[7] + 56 * v33;
        *(v39 + 48) = v53;
        v40 = v52;
        *(v39 + 16) = v51;
        *(v39 + 32) = v40;
        *v39 = v50;
        ++v28[2];
        if (__OFSUB__(a3--, 1))
        {
          goto LABEL_30;
        }

        a4 = v42[0];
        v14 = v46;
        if (!a3)
        {
          return;
        }
      }

      v20 = v15;
      while (1)
      {
        v15 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v15 >= a2)
        {
          return;
        }

        ++v20;
        if (a1[v15])
        {
          v17 = v11;
          OUTLINED_FUNCTION_6_49();
          v46 = v21;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

uint64_t sub_18F3236EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6110, &unk_18F556E98);
  result = sub_18F522AEC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_18F0FECD4(v17 + 32 * v16, v33);
    sub_18F118710(v33, v32);
    sub_18F522EFC();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F5219CC();
    result = sub_18F522F4C();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_18F118710(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_18F323934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_18F522D5C() & 1;
  }
}

uint64_t sub_18F3239D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6118, &qword_18F556EA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F323A38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppViewBridgeAnnotation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F323A9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppViewBridgeAnnotation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_18F323B00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_18F5218AC();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() localizerForLanguage_];

  return v3;
}

uint64_t IntentPaymentMethod.init(type:name:identificationHint:icon:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  OUTLINED_FUNCTION_10(v12);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v16);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  v20 = *a1;
  sub_18F0F9F88(a2, &v34 - v18, &qword_1EACCF7A8, &qword_18F540440);
  v21 = sub_18F520B3C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v21);
  if (EnumTagSinglePayload == 1)
  {
    sub_18F0EF1A8(v19, &qword_1EACCF7A8, &qword_18F540440);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v25 = sub_18F117248(EnumTagSinglePayload);
    (*(*(v21 - 8) + 8))(v19, v21);
    v26 = [v25 localizedStringForLocaleIdentifier_];

    v23 = sub_18F5218DC();
    v24 = v27;
  }

  sub_18F0F9F88(a5, v15, &qword_1EACD0270, &unk_18F5407C0);
  v28 = type metadata accessor for DisplayRepresentation.Image(0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v28) == 1)
  {
    sub_18F0EF1A8(v15, &qword_1EACD0270, &unk_18F5407C0);
LABEL_8:
    v30 = 0;
    goto LABEL_9;
  }

  v29 = sub_18F11D1B0();
  sub_18F325158(v15, type metadata accessor for DisplayRepresentation.Image);
  if (!v29)
  {
    goto LABEL_8;
  }

  v30 = [v29 inImage];

LABEL_9:
  v31 = objc_allocWithZone(MEMORY[0x1E696E938]);
  v32 = sub_18F324C10(v20, v23, v24, a3, a4, v30);
  sub_18F0EF1A8(a5, &qword_1EACD0270, &unk_18F5407C0);
  result = sub_18F0EF1A8(a2, &qword_1EACCF7A8, &qword_18F540440);
  *a6 = v32;
  return result;
}

char *IntentPaymentMethod.paymentType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [*v1 type];
  if ((result - 1) < 8)
  {
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t IntentPaymentMethod.icon.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_18F324090();
  v5 = [v3 _intents_displayImageWithLocalizer_];

  if (v5)
  {
    DisplayRepresentation.Image.init(inImage:)(a1);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for DisplayRepresentation.Image(0);

  return __swift_storeEnumTagSinglePayload(a1, v6, 1, v7);
}

uint64_t sub_18F323F2C(SEL *a1)
{
  v2 = [*v1 *a1];
  if (v2)
  {
    v3 = v2;
    sub_18F5218DC();
  }

  return OUTLINED_FUNCTION_56();
}

uint64_t IntentPaymentMethod.PaymentType.hashValue.getter()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

uint64_t sub_18F324024(uint64_t a1)
{
  sub_18F522EFC();
  IntentPaymentMethod.PaymentType.hash(into:)();
  return sub_18F522F4C();
}

id sub_18F324090()
{
  v0 = type metadata accessor for IntentContext(0);
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  static IntentContext.current.getter(v3);
  v4 = v3[1];
  sub_18F325158(v3, type metadata accessor for IntentContext);
  v5 = [v4 localeIdentifier];

  sub_18F5218DC();
  sub_18F0F21A8(0, &qword_1EACD3BA8, 0x1E696EA80);
  v6 = OUTLINED_FUNCTION_56();
  return sub_18F323B00(v6, v7);
}

uint64_t IntentPaymentMethod.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v51 - v4;
  sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v55 = v5;
  v56 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18F52187C();
  v9 = OUTLINED_FUNCTION_10(v8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  v12 = OUTLINED_FUNCTION_10(v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v51 - v16;
  v18 = *v1;
  v19 = sub_18F324090();
  v20 = [v18 _intents_readableTitleWithLocalizer_];

  if (v20)
  {
    v54 = sub_18F5218DC();
  }

  else
  {
    v54 = 0xD000000000000016;
  }

  v21 = sub_18F324090();
  v22 = [v18 _intents_readableSubtitleWithLocalizer_];

  if (v22)
  {
    v52 = sub_18F5218DC();
    v24 = v23;
  }

  else
  {
    v52 = 0;
    v24 = 0;
  }

  v25 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
  v29 = sub_18F324090();
  v30 = [v18 _intents_displayImageWithLocalizer_];

  if (v30)
  {
    DisplayRepresentation.Image.init(inImage:)(v15);
    sub_18F0EF1A8(v17, &qword_1EACD0270, &unk_18F5407C0);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v25);
    sub_18F324CD4(v15, v17);
  }

  v31 = v17;
  v32 = 1;
  sub_18F52186C();
  OUTLINED_FUNCTION_132();
  sub_18F52185C();
  sub_18F52183C();

  OUTLINED_FUNCTION_132();
  sub_18F52185C();
  sub_18F520AEC();
  if (v24)
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F52186C();
    OUTLINED_FUNCTION_132();
    sub_18F52185C();
    sub_18F52183C();
    OUTLINED_FUNCTION_132();
    sub_18F52185C();
    v33 = v57;
    sub_18F520AEC();
    swift_bridgeObjectRelease_n();
    v32 = 0;
  }

  else
  {
    v33 = v57;
  }

  v34 = v17;
  v35 = v55;
  __swift_storeEnumTagSinglePayload(v33, v32, 1, v55);
  sub_18F0F9F88(v31, v15, &qword_1EACD0270, &unk_18F5407C0);
  v36 = type metadata accessor for DisplayRepresentation(0);
  v37 = v36[5];
  v38 = v53;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v35);
  v42 = v36[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v25);
  *(v38 + v36[7]) = xmmword_18F540410;
  *(v38 + v36[8]) = 0;
  v46 = v36[9];
  sub_18F0EF1A8(v34, &qword_1EACD0270, &unk_18F5407C0);
  *(v38 + v46) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v35);
  (*(v56 + 32))(v38, v58, v35);
  sub_18F0FF5DC(v33, v38 + v37, &qword_1EACCF7A8, &qword_18F540440);
  return sub_18F0FF5DC(v15, v38 + v42, &qword_1EACD0270, &unk_18F5407C0);
}

id static IntentPaymentMethod.valueType.getter()
{
  v0 = [objc_opt_self() paymentMethodValueType];

  return v0;
}

id IntentPaymentMethod.projectedAsValue.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  a1[3] = sub_18F0F21A8(0, &qword_1EACD6130, 0x1E696E938);
  *a1 = v4;

  return v4;
}

uint64_t sub_18F324738(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_18F522D5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_18F522D5C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x800000018F529C50 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F522D5C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18F324858(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 1701667182;
  }

  return 0xD000000000000012;
}

uint64_t sub_18F3248A4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6168, &qword_18F5570E0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F325104();
  sub_18F522FEC();
  v11 = *v3;
  v12 = v3[1];
  v21 = 0;
  OUTLINED_FUNCTION_2_72(v11, v12, &v21);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v20 = 1;
    OUTLINED_FUNCTION_2_72(v13, v14, &v20);
    v15 = v3[4];
    v16 = v3[5];
    v19 = 2;
    OUTLINED_FUNCTION_2_72(v15, v16, &v19);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_18F324A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F324738(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F324A34(uint64_t a1)
{
  v2 = sub_18F325104();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F324A70(uint64_t a1)
{
  v2 = sub_18F325104();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18F324AC4(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [v3 type] - 1;
  if (v4 > 7)
  {
    v6 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E55;
  }

  else
  {
    v5 = *&aCheckingsaving[8 * v4];
    v6 = *&aApplePa[8 * v4 + 8];
  }

  v7 = [v3 name];
  if (v7)
  {
    v8 = v7;
    v9 = sub_18F5218DC();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [v3 identificationHint];
  if (v12)
  {
    v13 = v12;
    v14 = sub_18F5218DC();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *a1 = v5;
  a1[1] = v6;
  a1[2] = v9;
  a1[3] = v11;
  a1[4] = v14;
  a1[5] = v16;
}

double sub_18F324BD0@<D0>(_OWORD *a1@<X8>)
{
  sub_18F324AC4(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

id sub_18F324C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (!a3)
  {
    v10 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_18F5218AC();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_18F5218AC();

LABEL_6:
  v12 = [v6 initWithType:a1 name:v10 identificationHint:v11 icon:a6];

  return v12;
}

uint64_t sub_18F324CD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18F324D48()
{
  result = qword_1EACD6138;
  if (!qword_1EACD6138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6138);
  }

  return result;
}

unint64_t sub_18F324D9C(uint64_t a1)
{
  result = sub_18F324DC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F324DC4()
{
  result = qword_1EACD6140;
  if (!qword_1EACD6140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6140);
  }

  return result;
}

unint64_t sub_18F324E18(uint64_t a1)
{
  result = sub_18F324E40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F324E40()
{
  result = qword_1EACD6148;
  if (!qword_1EACD6148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6148);
  }

  return result;
}

unint64_t sub_18F324E98()
{
  result = qword_1EACD6150;
  if (!qword_1EACD6150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6158, &qword_18F556FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6150);
  }

  return result;
}

unint64_t sub_18F324EFC()
{
  result = qword_1EACD6160;
  if (!qword_1EACD6160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6160);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentPaymentMethod.PaymentType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18F325040(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_18F325094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_18F325104()
{
  result = qword_1EACD6170;
  if (!qword_1EACD6170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6170);
  }

  return result;
}

uint64_t sub_18F325158(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for IntentPaymentMethod.PaymentMethodNLGParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F325290()
{
  result = qword_1EACD6178;
  if (!qword_1EACD6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6178);
  }

  return result;
}

unint64_t sub_18F3252E8()
{
  result = qword_1EACD6180;
  if (!qword_1EACD6180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6180);
  }

  return result;
}

unint64_t sub_18F325340()
{
  result = qword_1EACD6188[0];
  if (!qword_1EACD6188[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACD6188);
  }

  return result;
}

uint64_t IntentItem.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_11_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  (*(v9 + 16))(v12 - v11, a1, a2);
  sub_18F325B48(0, a2, a3, a4);
  return (*(v9 + 8))(a1, a2);
}

uint64_t IntentItem.init(_:title:subtitle:image:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v37 = a6;
  v38 = a1;
  v35 = a3;
  v36 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  OUTLINED_FUNCTION_10(v10);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v13);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v17 = sub_18F520B3C();
  v33 = v17;
  OUTLINED_FUNCTION_11_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4();
  v23 = v22 - v21;
  OUTLINED_FUNCTION_11_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4();
  v29 = v28 - v27;
  (*(v25 + 16))(v28 - v27, v38, a5);
  (*(v19 + 16))(v23, a2, v17);
  v30 = v35;
  sub_18F1169CC(v35, v16, &qword_1EACCF7A8, &qword_18F540440);
  v31 = v34;
  sub_18F1169CC(a4, v34, &qword_1EACD0270, &unk_18F5407C0);
  IntentItem.init(_:title:subtitle:image:indentationLevel:)(v29, v23, v16, v31, 0, a5, v37, v36);
  sub_18F0EF1A8(a4, &qword_1EACD0270, &unk_18F5407C0);
  sub_18F0EF1A8(v30, &qword_1EACCF7A8, &qword_18F540440);
  (*(v19 + 8))(a2, v33);
  return (*(v25 + 8))(v38, a5);
}

uint64_t IntentItem.init(_:title:subtitle:image:indentationLevel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a8;
  v47 = a5;
  v43 = a4;
  v44 = a1;
  v38 = a3;
  v39 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  OUTLINED_FUNCTION_10(v14);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v41 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v18);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  v40 = &v38 - v20;
  v22 = a6;
  v23 = *(a6 - 8);
  v24 = *(v23 + 16);
  v25 = a1;
  v26 = v22;
  v42 = v22;
  v24(a8, v25);
  v45 = type metadata accessor for IntentItem(0, v26, a7, v27);
  v28 = a8 + *(v45 + 36);
  v29 = sub_18F520B3C();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v28, a2, v29);
  sub_18F1169CC(a3, v21, &qword_1EACCF7A8, &qword_18F540440);
  v31 = v43;
  sub_18F1169CC(v43, v17, &qword_1EACD0270, &unk_18F5407C0);
  v32 = type metadata accessor for DisplayRepresentation(0);
  v33 = v32[5];
  __swift_storeEnumTagSinglePayload(v28 + v33, 1, 1, v29);
  v34 = v32[6];
  v35 = type metadata accessor for DisplayRepresentation.Image(0);
  __swift_storeEnumTagSinglePayload(v28 + v34, 1, 1, v35);
  *(v28 + v32[7]) = xmmword_18F540410;
  *(v28 + v32[8]) = 0;
  v36 = v32[9];
  sub_18F0EF1A8(v31, &qword_1EACD0270, &unk_18F5407C0);
  sub_18F0EF1A8(v38, &qword_1EACCF7A8, &qword_18F540440);
  (*(v30 + 8))(v39, v29);
  (*(v23 + 8))(v44, v42);
  *(v28 + v36) = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(v28 + v32[10], 1, 1, v29);
  sub_18F0FF690(v40, v28 + v33, &qword_1EACCF7A8, &qword_18F540440);
  result = sub_18F0FF690(v41, v28 + v34, &qword_1EACD0270, &unk_18F5407C0);
  *(v46 + *(v45 + 40)) = v47;
  return result;
}

uint64_t sub_18F325B48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v55 = a3;
  v56 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0, &qword_18F540EB0);
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v53 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v49 - v11;
  v54 = type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v52 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v49 - v16;
  OUTLINED_FUNCTION_11_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v21 = MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v22 = *(v18 + 16);
  v23 = a4;
  OUTLINED_FUNCTION_8_43();
  v22();
  OUTLINED_FUNCTION_8_43();
  v22();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD30A0, &unk_18F5543E0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(v57, v58);
    v25 = v59;
    v24 = v60;
    __swift_project_boxed_opaque_existential_1Tm(v58, v59);
    v26 = *(v24 + 8);
    v27 = *(v26 + 16);
    v29 = type metadata accessor for IntentItem(0, a2, v55, v28);
    v27(v25, v26);
    v30 = OUTLINED_FUNCTION_5_50();
    v31(v30);
LABEL_12:
    result = __swift_destroy_boxed_opaque_existential_1Tm(v58);
    *(v23 + *(v29 + 40)) = v56;
    return result;
  }

  v49 = a4;
  OUTLINED_FUNCTION_4_55();
  sub_18F0EF1A8(v57, &qword_1EACD30A8, &qword_18F54A5B0);
  OUTLINED_FUNCTION_8_43();
  v22();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2E38, &qword_18F549D08);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(v57, v58);
    v32 = v59;
    v33 = v60;
    __swift_project_boxed_opaque_existential_1Tm(v58, v59);
    v34 = v51;
    (*(v33 + 32))(v32, v33);
    if (__swift_getEnumTagSinglePayload(v34, 1, v54) != 1)
    {
      v46 = OUTLINED_FUNCTION_5_50();
      v47(v46);
      v42 = v50;
      sub_18F143B8C(v34, v50);
      v44 = a2;
      v45 = v55;
      goto LABEL_11;
    }

    sub_18F0EF1A8(v34, &qword_1EACD32D0, &qword_18F540EB0);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
  }

  else
  {
    OUTLINED_FUNCTION_4_55();
    sub_18F0EF1A8(v57, &qword_1EACD6210, &qword_18F5572D0);
  }

  OUTLINED_FUNCTION_8_43();
  v22();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5970, &qword_18F5543F0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(v57, v58);
    v35 = v59;
    v36 = v60;
    __swift_project_boxed_opaque_existential_1Tm(v58, v59);
    v37 = v53;
    sub_18F1436A0(v35, v36);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v54);
    v39 = v55;
    if (EnumTagSinglePayload != 1)
    {
      v40 = OUTLINED_FUNCTION_5_50();
      v41(v40);
      v42 = v52;
      sub_18F143B8C(v37, v52);
      v44 = a2;
      v45 = v39;
LABEL_11:
      v29 = type metadata accessor for IntentItem(0, v44, v45, v43);
      v23 = v49;
      sub_18F143B8C(v42, v49 + *(v29 + 36));
      goto LABEL_12;
    }

    sub_18F0EF1A8(v37, &qword_1EACD32D0, &qword_18F540EB0);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
  }

  else
  {
    OUTLINED_FUNCTION_4_55();
    sub_18F0EF1A8(v57, &qword_1EACD5978, &qword_18F5543F8);
  }

  result = sub_18F522A3C();
  __break(1u);
  return result;
}

uint64_t sub_18F326094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayRepresentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F3260F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayRepresentation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static IntentItem.Builder.buildExpression(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8);
  return IntentItem.init(_:)(v10, a2, a3, x8_0);
}

uint64_t static IntentItem.Builder.buildExpression<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  type metadata accessor for IntentItem(0, a2, a4, a3);
  OUTLINED_FUNCTION_10_0();
  v9 = *(v8 + 16);

  return v9(a5, a1, v7);
}

uint64_t static IntentItem.Builder.buildArray(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IntentItem(255, a2, a3, a4);
  sub_18F521DBC();
  sub_18F521DBC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_18F521BEC();
}

uint64_t sub_18F326358(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v42 = sub_18F520B3C();
  v8 = *(v42 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v41 = v10;
  v11 = sub_18F520C8C();
  v13 = *(v11 - 8);
  result = v11 - 8;
  v14 = v13;
  v15 = ((*(v13 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 19;
  if (v15 <= 0x58)
  {
    v16 = 88;
  }

  else
  {
    v16 = v15;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v9;
  }

  if (v17 <= v7)
  {
    v18 = v7;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v8 + 80);
  v20 = *(v14 + 80);
  v21 = *(v8 + 64);
  if (v9)
  {
    v22 = *(v8 + 64);
  }

  else
  {
    v22 = v21 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v20 & 0xF8 | 7;
  v24 = v23 | v19;
  v25 = (v23 | v19) + *(v6 + 64);
  v26 = v21 + v19;
  v27 = v16 + 8;
  if (v18 >= a2)
  {
LABEL_36:
    if (v7 >= v17)
    {
      v35 = a1;
      v36 = v7;
      v37 = v5;
    }

    else
    {
      v35 = ((a1 + v25) & ~v24);
      if (v9 < 0x7FFFFFFF)
      {
        v38 = (v35 + v26) & ~v19;
        if (v41 == v17)
        {
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, v9, v42);
          if (EnumTagSinglePayload >= 2)
          {
            return EnumTagSinglePayload - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v40 = *((((((v27 + ((v38 + v23 + v22) & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
          if (v40 >= 0xFFFFFFFF)
          {
            LODWORD(v40) = -1;
          }

          return (v40 + 1);
        }
      }

      v36 = v9;
      v37 = v42;
    }

    return __swift_getEnumTagSinglePayload(v35, v36, v37);
  }

  v28 = ((v22 + (v25 & ~v24) + ((v19 + ((((((v27 + (((v26 & ~v19) + v22 + v23) & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if ((v28 & 0xFFFFFFF8) != 0)
  {
    v29 = 2;
  }

  else
  {
    v29 = a2 - v18 + 1;
  }

  if (v29 >= 0x10000)
  {
    v30 = 4;
  }

  else
  {
    v30 = 2;
  }

  if (v29 < 0x100)
  {
    v30 = 1;
  }

  if (v29 >= 2)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  switch(v31)
  {
    case 1:
      v32 = *(a1 + v28);
      if (!*(a1 + v28))
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    case 2:
      v32 = *(a1 + v28);
      if (!*(a1 + v28))
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    case 3:
      __break(1u);
      return result;
    case 4:
      v32 = *(a1 + v28);
      if (!v32)
      {
        goto LABEL_36;
      }

LABEL_33:
      v33 = v32 - 1;
      if ((v28 & 0xFFFFFFF8) != 0)
      {
        v33 = 0;
        v34 = *a1;
      }

      else
      {
        v34 = 0;
      }

      result = v18 + (v34 | v33) + 1;
      break;
    default:
      goto LABEL_36;
  }

  return result;
}

void sub_18F3266B8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v46 = *(a4 + 16);
  v6 = *(v46 - 8);
  v7 = *(v6 + 84);
  v45 = sub_18F520B3C();
  v8 = *(v45 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v44 = v10;
  v11 = 0;
  v12 = *(sub_18F520C8C() - 8);
  if (((*(v12 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 19 <= 0x58)
  {
    v13 = 88;
  }

  else
  {
    v13 = ((*(v12 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 19;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v9;
  }

  if (v14 <= v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v8 + 80);
  v17 = *(v12 + 80) & 0xF8 | 7;
  v18 = (v17 | v16) + *(v6 + 64);
  v19 = *(v8 + 64);
  v20 = v19 + v16;
  v21 = (v19 + v16) & ~v16;
  if (!v9)
  {
    ++v19;
  }

  v22 = v13 + 8;
  v23 = v22 + ((v21 + v19 + v17) & ~v17);
  v24 = v16 + 8;
  v25 = ((v19 + (v18 & ~(v17 | v16)) + ((v16 + 8 + (((((v23 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v15 < a3)
  {
    if (((v19 + (v18 & ~(v17 | v16)) + ((v16 + 8 + (((((v23 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v26 = a3 - v15 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v11 = v27;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 <= v15)
  {
    v30 = ~v16;
    v31 = ~(v17 | v16);
    v32 = a1;
    switch(v11)
    {
      case 1:
        *(a1 + v25) = 0;
        if (a2)
        {
          goto LABEL_41;
        }

        return;
      case 2:
        *(a1 + v25) = 0;
        if (a2)
        {
          goto LABEL_41;
        }

        return;
      case 3:
LABEL_71:
        __break(1u);
        return;
      case 4:
        *(a1 + v25) = 0;
        goto LABEL_40;
      default:
LABEL_40:
        if (!a2)
        {
          return;
        }

LABEL_41:
        if (v7 >= v14)
        {
          v39 = a2;
          v40 = v7;
          v41 = v46;
        }

        else
        {
          v33 = (a1 + v18) & v31;
          if (v14 < a2)
          {
            v34 = ((v24 + (((((v23 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v30) + v19;
            v35 = -1 << (8 * (((v24 + (((((v23 & 0xF8) + 23) & 0xF8) + 15) & 0xF8)) & v30) + v19));
            if (v34 <= 3)
            {
              v36 = ~v35;
            }

            else
            {
              v36 = -1;
            }

            if (v34)
            {
              v37 = v36 & (~v14 + a2);
              if (v34 <= 3)
              {
                v38 = v34;
              }

              else
              {
                v38 = 4;
              }

              bzero(((a1 + v18) & v31), v34);
              switch(v38)
              {
                case 2:
                  *v33 = v37;
                  break;
                case 3:
                  *v33 = v37;
                  *(v33 + 2) = BYTE2(v37);
                  break;
                case 4:
                  *v33 = v37;
                  break;
                default:
                  *v33 = v37;
                  break;
              }
            }

            return;
          }

          if (v9 < 0x7FFFFFFF)
          {
            v32 = ((v20 + v33) & v30);
            if (v44 != v14)
            {
              v42 = ((((((v22 + ((v32 + v17 + v19) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
              if ((a2 & 0x80000000) != 0)
              {
                v43 = a2 & 0x7FFFFFFF;
              }

              else
              {
                v43 = (a2 - 1);
              }

              *v42 = v43;
              return;
            }

            v39 = (a2 + 1);
          }

          else
          {
            v32 = ((a1 + v18) & v31);
            v39 = a2;
          }

          v40 = v9;
          v41 = v45;
        }

        __swift_storeEnumTagSinglePayload(v32, v39, v40, v41);
        break;
    }
  }

  else
  {
    if (((v19 + (v18 & ~(v17 | v16)) + ((v16 + 8 + (((((v23 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v28 = a2 - v15;
    }

    else
    {
      v28 = 1;
    }

    if (((v19 + (v18 & ~(v17 | v16)) + ((v16 + 8 + (((((v23 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v29 = ~v15 + a2;
      bzero(a1, v25);
      *a1 = v29;
    }

    switch(v11)
    {
      case 1:
        *(a1 + v25) = v28;
        break;
      case 2:
        *(a1 + v25) = v28;
        break;
      case 3:
        goto LABEL_71;
      case 4:
        *(a1 + v25) = v28;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_18F326AFC(_BYTE *result, int a2, int a3)
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

void sub_18F327134()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = sub_18F520B3C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F327278()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F327320()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F327560()
{
  OUTLINED_FUNCTION_18();
  v2 = OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  (*(v4 + 16))(v7 - v6, v1, v2);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v0();
  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F327754()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, v1, 0, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F327860()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, 0, v1, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

uint64_t IntentDeprecation.message.getter@<X0>(uint64_t a1@<X8>)
{
  sub_18F520B3C();
  OUTLINED_FUNCTION_10_0();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t IntentDeprecation.message.setter(uint64_t a1)
{
  sub_18F520B3C();
  OUTLINED_FUNCTION_10_0();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t IntentDeprecation.init(message:replacedBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(type metadata accessor for IntentDeprecation(0, a3, a4, a4) + 36);
  sub_18F520B3C();
  OUTLINED_FUNCTION_10_0();
  result = (*(v9 + 32))(a5, a1);
  *(a5 + v8) = a2;
  return result;
}

uint64_t IntentDeprecation.init<>(message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD6218, &qword_18F557330) + 36)) = 0;
  sub_18F520B3C();
  OUTLINED_FUNCTION_10_0();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

uint64_t IntentDeprecation.init(replacedBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_18F520B3C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1_69();
  sub_18F520ACC();
  return IntentDeprecation.init(message:replacedBy:)(v10, a1, a2, a3, a4);
}

uint64_t static DeprecatedAppIntent.deprecation.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1_69();
  sub_18F520ACC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD6218, &qword_18F557330);
  *(a1 + *(result + 36)) = MEMORY[0x1E69E73E0];
  return result;
}

uint64_t sub_18F327F74(uint64_t a1)
{
  result = sub_18F520B3C();
  if (v2 <= 0x3F)
  {
    swift_getMetatypeMetadata();
    result = sub_18F52254C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t AppContext.fetchEntityURL(entity:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F328054()
{
  v1 = v0[7];
  ObjectType = swift_getObjectType();
  result = [v1 respondsToSelector_];
  if (result)
  {
    v4 = v0[7];
    sub_18F328378();
    v5 = [v4 identifier];
    v6 = [v5 typeIdentifier];

    v7 = sub_18F5218DC();
    v9 = v8;

    v0[8] = sub_18F14199C(v7, v9);
    v0[5] = ObjectType;
    v0[2] = v4;
    swift_unknownObjectRetain();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[9] = v10;
    *v10 = v11;
    v10[1] = sub_18F3281AC;
    v12 = v0[6];

    return sub_18F328774(v12, (v0 + 2));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18F3281AC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v3 + 80) = v0;

  if (v0)
  {
    v6 = sub_18F328310;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
    v6 = sub_18F3282B8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_18F3282B8()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_6();

  return v1();
}

uint64_t sub_18F328310()
{
  OUTLINED_FUNCTION_69();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_18F328378()
{
  result = qword_1ED6FE630;
  if (!qword_1ED6FE630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6FE630);
  }

  return result;
}

uint64_t sub_18F328448(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360, &qword_18F5407D0);
  v3[4] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  swift_unknownObjectRetain();
  v8 = a3;
  v9 = swift_task_alloc();
  v3[7] = v9;
  *v9 = v3;
  v9[1] = sub_18F32855C;

  return AppContext.fetchEntityURL(entity:)(v7, a1);
}

uint64_t sub_18F32855C()
{
  OUTLINED_FUNCTION_85();
  v3 = v2;
  v4 = v2[3];
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  swift_unknownObjectRelease();

  if (v0)
  {
    v7 = v3[6];
    v8 = sub_18F520A7C();

    (v7)[2](v7, 0, v8);
    _Block_release(v7);
  }

  else
  {
    sub_18F178778(v3[5], v3[4]);
    v9 = sub_18F520C8C();
    v10 = OUTLINED_FUNCTION_44_0();
    v12 = 0;
    if (__swift_getEnumTagSinglePayload(v10, v11, v9) != 1)
    {
      v13 = v3[4];
      v12 = sub_18F520BEC();
      OUTLINED_FUNCTION_31_0();
      (*(v14 + 8))(v13, v9);
    }

    v15 = v3[6];
    (v15)[2](v15, v12, 0);
    _Block_release(v15);
  }

  v16 = *(v5 + 8);

  return v16();
}

uint64_t sub_18F328774(uint64_t a1, uint64_t a2)
{
  v3[82] = v2;
  v3[81] = a2;
  v3[80] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F328790()
{
  OUTLINED_FUNCTION_21();
  sub_18F3319C0(*(v0 + 648), 1);
  sub_18F0F9FD4(v0 + 16, v0 + 56, &qword_1EACD0620, &unk_18F541850);
  if (*(v0 + 80))
  {
    sub_18F0F9FD4(v0 + 56, v0 + 96, &qword_1EACD0620, &unk_18F541850);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
    *(v0 + 664) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2838, &qword_18F549298);
    if (swift_dynamicCast())
    {
      sub_18F0FD0B4((v0 + 136), v0 + 536);
      OUTLINED_FUNCTION_49((v0 + 536));
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 672) = v1;
      *v1 = v2;
      v3 = OUTLINED_FUNCTION_0_87(v1);

      return URLRepresentableEntity.urlRepresentation.getter(v3, v4, v5);
    }

    *(v0 + 680) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4588, &qword_18F557440);
    if (swift_dynamicCast())
    {
      sub_18F0FD0B4((v0 + 176), v0 + 496);
      OUTLINED_FUNCTION_49((v0 + 496));
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 688) = v11;
      *v11 = v12;
      v13 = OUTLINED_FUNCTION_0_87(v11);

      return _URLRepresentableEntity.urlRepresentation.getter(v13, v14, v15);
    }

    if (swift_dynamicCast())
    {
      v16 = *(v0 + 576);
      *(v0 + 696) = v16;
      v17 = *(v0 + 584);
      *(v0 + 704) = v17;
      v18 = *(v0 + 592);
      v19 = *(v0 + 600);
      *(v0 + 712) = v19;
      *(v0 + 608) = v16;
      *(v0 + 616) = v17;
      *(v0 + 624) = v18;
      *(v0 + 632) = v19;
      v20 = sub_18F52254C();
      *(v0 + 720) = v20;
      *(v0 + 728) = *(v20 - 8);
      *(v0 + 736) = swift_task_alloc();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 744) = v21;
      *v21 = v22;
      v21[1] = sub_18F328E24;

      return sub_18F27FF4C();
    }

    sub_18F0FA038(v0 + 16, &qword_1EACD0620, &unk_18F541850);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  }

  else
  {
    sub_18F0FA038(v0 + 16, &qword_1EACD0620, &unk_18F541850);
  }

  sub_18F520C8C();
  v7 = OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
  sub_18F0FA038(v0 + 56, &qword_1EACD0620, &unk_18F541850);
  OUTLINED_FUNCTION_6();

  return v10();
}

uint64_t sub_18F328B5C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F328C40()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_68_0();
  sub_18F0FA038(v1, v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
  OUTLINED_FUNCTION_9_41();
  OUTLINED_FUNCTION_68_0();
  sub_18F0FA038(v4, v5, v6);
  OUTLINED_FUNCTION_6();

  return v7();
}

uint64_t sub_18F328CC0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F328DA4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_68_0();
  sub_18F0FA038(v1, v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 496));
  OUTLINED_FUNCTION_9_41();
  OUTLINED_FUNCTION_68_0();
  sub_18F0FA038(v4, v5, v6);
  OUTLINED_FUNCTION_6();

  return v7();
}

uint64_t sub_18F328E24()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *(v4 + 752) = v0;

  if (v0)
  {
    v5 = sub_18F329604;
  }

  else
  {
    v5 = sub_18F328F28;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18F328F28()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 736);
  v2 = *(v0 + 696);
  v3 = OUTLINED_FUNCTION_44_0();
  if (__swift_getEnumTagSinglePayload(v3, v4, v2) == 1)
  {
    v5 = *(v0 + 728);
    v6 = *(v0 + 720);

    (*(v5 + 8))(v1, v6);

    *(v0 + 248) = 0;
    *(v0 + 232) = 0u;
    *(v0 + 216) = 0u;
  }

  else
  {
    v7 = *(v0 + 704);
    *(v0 + 240) = v2;
    *(v0 + 248) = v7;
    __swift_allocate_boxed_opaque_existential_1((v0 + 216));
    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_68_0();
    v8();
  }

  v9 = (v0 + 296);
  sub_18F0F9FD4(v0 + 216, v0 + 336, &qword_1EACCFCF8, &unk_18F548C10);
  if (*(v0 + 360))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4540, &qword_18F547E80);
    if (swift_dynamicCast())
    {
      if (*(v0 + 320))
      {
        sub_18F0FD0B4((v0 + 296), v0 + 256);
        OUTLINED_FUNCTION_49((v0 + 256));
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v0 + 760) = v10;
        *v10 = v11;
        v12 = OUTLINED_FUNCTION_0_87(v10);

        return URLRepresentableEntity.urlRepresentation.getter(v12, v13, v14);
      }
    }

    else
    {
      *(v0 + 328) = 0;
      *v9 = 0u;
      *(v0 + 312) = 0u;
    }
  }

  else
  {
    sub_18F0FA038(v0 + 336, &qword_1EACCFCF8, &unk_18F548C10);
    *v9 = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0;
  }

  sub_18F0FA038(v0 + 296, &qword_1EACD2840, &qword_18F54F5F0);
  sub_18F0F9FD4(v0 + 216, v0 + 456, &qword_1EACCFCF8, &unk_18F548C10);
  if (*(v0 + 480))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4540, &qword_18F547E80);
    if (swift_dynamicCast())
    {
      if (*(v0 + 440))
      {
        sub_18F0FD0B4((v0 + 416), v0 + 376);
        OUTLINED_FUNCTION_49((v0 + 376));
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v0 + 768) = v16;
        *v16 = v17;
        v18 = OUTLINED_FUNCTION_0_87(v16);

        return _URLRepresentableEntity.urlRepresentation.getter(v18, v19, v20);
      }
    }

    else
    {
      *(v0 + 448) = 0;
      *(v0 + 416) = 0u;
      *(v0 + 432) = 0u;
    }

    sub_18F0FA038(v0 + 16, &qword_1EACD0620, &unk_18F541850);
  }

  else
  {
    sub_18F0FA038(v0 + 16, &qword_1EACD0620, &unk_18F541850);
    sub_18F0FA038(v0 + 456, &qword_1EACCFCF8, &unk_18F548C10);
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0;
  }

  sub_18F0FA038(v0 + 416, &qword_1EACD4580, &unk_18F54F5D0);
  sub_18F520C8C();
  v21 = OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v21, v22, 1, v23);
  sub_18F0FA038(v0 + 216, &qword_1EACCFCF8, &unk_18F548C10);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  sub_18F0FA038(v0 + 56, &qword_1EACD0620, &unk_18F541850);
  OUTLINED_FUNCTION_6();

  return v24();
}

uint64_t sub_18F32930C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F3293F0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_68_0();
  sub_18F0FA038(v1, v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
  sub_18F0FA038(v0 + 216, &qword_1EACCFCF8, &unk_18F548C10);
  OUTLINED_FUNCTION_9_41();
  OUTLINED_FUNCTION_68_0();
  sub_18F0FA038(v4, v5, v6);
  OUTLINED_FUNCTION_6();

  return v7();
}

uint64_t sub_18F329488()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F32956C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_68_0();
  sub_18F0FA038(v1, v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));
  sub_18F0FA038(v0 + 216, &qword_1EACCFCF8, &unk_18F548C10);
  OUTLINED_FUNCTION_9_41();
  OUTLINED_FUNCTION_68_0();
  sub_18F0FA038(v4, v5, v6);
  OUTLINED_FUNCTION_6();

  return v7();
}

uint64_t sub_18F329604()
{
  OUTLINED_FUNCTION_21();
  sub_18F0FA038(v0 + 16, &qword_1EACD0620, &unk_18F541850);

  v1 = OUTLINED_FUNCTION_9_41();
  sub_18F0FA038(v1, &qword_1EACD0620, &unk_18F541850);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18F3296AC()
{
  OUTLINED_FUNCTION_21();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18F32975C;

  return sub_18F328448(v2, v3, v4);
}

uint64_t sub_18F32975C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t static _AssistantIntent.Builder.buildExpression(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00B8, &qword_18F53FE78);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18F53F800;
  *(v4 + 32) = v1;
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v4;
}

void static _AssistantIntent.Builder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    while (1)
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      v6 = *(v3 + 16);
      if (__OFADD__(v6, v5))
      {
        break;
      }

      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      if (!swift_isUniquelyReferenced_nonNull_native() || v6 + v5 > *(v3 + 24) >> 1)
      {
        sub_18F16945C();
        v3 = v7;
      }

      if (*(v4 + 16))
      {
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_16;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v8 = *(v3 + 16);
          v9 = __OFADD__(v8, v5);
          v10 = v8 + v5;
          if (v9)
          {
            goto LABEL_17;
          }

          *(v3 + 16) = v10;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_15;
        }
      }

      ++v2;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

_BYTE *_s7BuilderOwst(_BYTE *result, int a2, int a3)
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

uint64_t PreviewEntityError.hashValue.getter()
{
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](0);
  return sub_18F522F4C();
}

uint64_t static _SynthesizedPreviewIntent.parameterSummary.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for _SynthesizedPreviewIntent(0, a1, a2, a4);
  OUTLINED_FUNCTION_0_88();
  swift_getWitnessTable();

  return IntentParameterSummary.init()(a3);
}

uint64_t sub_18F329C80(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v13 - v7;
  (*(v9 + 16))(v13 - v7);
  v13[1] = *a2;
  v11 = type metadata accessor for _SynthesizedPreviewIntent(0, v5, v6, v10);

  _SynthesizedPreviewIntent.entity.setter(v8, v11);
}

uint64_t _SynthesizedPreviewIntent.entity.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  IntentParameter.wrappedValue.setter();
  return (*(v4 + 8))(a1, v3);
}

void _SynthesizedPreviewIntent.init()(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v22 - v10;
  v12 = *(*(a2 + 8) + 8);
  v13 = *(*(v12 + 8) + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_18F52254C();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v22 - v16;
  v18 = sub_18F520B3C();
  MEMORY[0x1EEE9AC00](v18 - 8);
  type metadata accessor for IntentParameter(0, a1, v13, v19);
  sub_18F520ACC();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, AssociatedTypeWitness);
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_18F120FCC(a1, a1, a1, v12, v13);
  v20 = type metadata accessor for IntentDialog(0);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v20);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v20);
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_18F116B3C();
  *a3 = v21;
}

uint64_t sub_18F32A1C4()
{
  if (qword_1ED6FEFE8 != -1)
  {
    swift_once();
  }

  v1 = sub_18F52165C();
  __swift_project_value_buffer(v1, qword_1ED7077A8);
  v2 = sub_18F52163C();
  v3 = sub_18F52221C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18F0E9000, v2, v3, "To enable PreviewEntity support please import AppIntents with UIKit or SwiftUI", v4, 2u);
    MEMORY[0x193ADD350](v4, -1, -1);
  }

  sub_18F133EDC();
  swift_allocError();
  *v5 = 3;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 7;
  swift_willThrow();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_18F32A330()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F10DF80;

  return _SynthesizedPreviewIntent.perform()();
}

unint64_t sub_18F32A3CC()
{
  result = qword_1EACD62A0[0];
  if (!qword_1EACD62A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACD62A0);
  }

  return result;
}

uint64_t sub_18F32A420(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F32A45C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PreviewEntityError(_BYTE *result, int a2, int a3)
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

uint64_t sub_18F32A59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static IntentContext.current.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898, &qword_18F5492F0);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_6();
  if (qword_1ED6FEEB8 != -1)
  {
    OUTLINED_FUNCTION_0_89();
    swift_once();
  }

  sub_18F52305C();
  v5 = type metadata accessor for IntentContext(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) != 1)
  {
    return sub_18F2DEA04(v1, a1);
  }

  sub_18F0EF1A8(v1, qword_1EACD2898, &qword_18F5492F0);
  v6 = sub_18F133EDC();
  v7 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v6);
  return OUTLINED_FUNCTION_1_70(v7, v8);
}

uint64_t static IntentContext.currentLocale.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898, &qword_18F5492F0);
  OUTLINED_FUNCTION_10(v1);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_5_51();
  v4 = type metadata accessor for IntentContext(v3);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  if (qword_1ED6FEEB8 != -1)
  {
    OUTLINED_FUNCTION_0_89();
    swift_once();
  }

  sub_18F52305C();
  if (__swift_getEnumTagSinglePayload(v0, 1, v4) == 1)
  {
    sub_18F0EF1A8(v0, qword_1EACD2898, &qword_18F5492F0);
    v9 = [objc_opt_self() mainBundle];
    v10 = [v9 preferredLocalizations];

    v11 = sub_18F521CAC();
    if (*(v11 + 16))
    {
      v12 = *(v11 + 32);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    }

    else
    {

      return 0x53555F6E65;
    }
  }

  else
  {
    sub_18F2DEA04(v0, v8);
    v13 = [*(v8 + 8) localeIdentifier];
    v12 = sub_18F5218DC();

    sub_18F178EA4(v8);
  }

  return v12;
}

uint64_t IntentContext.subscript.setter()
{
  OUTLINED_FUNCTION_7_0();
  type metadata accessor for IntentContext(0);
  OUTLINED_FUNCTION_9_42();
  sub_18F32B090();
  swift_getAssociatedTypeWitness();
  sub_18F52254C();
  OUTLINED_FUNCTION_10_0();
  v3 = *(v2 + 8);

  return v3(v0, v1);
}

void IntentContext.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18F32B308();
}

{
  sub_18F32B308();
}

uint64_t IntentContext.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntentContext(0) + 36);
  sub_18F520E6C();
  OUTLINED_FUNCTION_10_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t IntentContext.identifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntentContext(0) + 36);
  sub_18F520E6C();
  OUTLINED_FUNCTION_10_0();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

id static IntentContext.hasValidConnection.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898, &qword_18F5492F0);
  OUTLINED_FUNCTION_10(v1);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_5_51();
  v4 = type metadata accessor for IntentContext(v3);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  if (qword_1ED6FEEB8 != -1)
  {
    OUTLINED_FUNCTION_0_89();
    swift_once();
  }

  sub_18F52305C();
  if (__swift_getEnumTagSinglePayload(v0, 1, v4) == 1)
  {
    sub_18F0EF1A8(v0, qword_1EACD2898, &qword_18F5492F0);
    return 0;
  }

  sub_18F2DEA04(v0, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_18F178EA4(v8);
    return 0;
  }

  v10 = [Strong hasValidConnection];
  swift_unknownObjectRelease();
  sub_18F178EA4(v8);
  return v10;
}

uint64_t static IntentContext.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898, &qword_18F5492F0);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_6();
  v5 = type metadata accessor for IntentContext(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  if (qword_1ED6FEEB8 != -1)
  {
    OUTLINED_FUNCTION_0_89();
    swift_once();
  }

  sub_18F52305C();
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    sub_18F0EF1A8(v1, qword_1EACD2898, &qword_18F5492F0);
    v10 = sub_18F133EDC();
    v11 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v10);
    return OUTLINED_FUNCTION_1_70(v11, v12);
  }

  else
  {
    sub_18F2DEA04(v1, v9);
    v14 = *(v5 + 36);
    sub_18F520E6C();
    OUTLINED_FUNCTION_10_0();
    (*(v15 + 16))(a1, v9 + v14);
    return sub_18F178EA4(v9);
  }
}

uint64_t sub_18F32AD80()
{
  sub_18F520E6C();
  type metadata accessor for IntentContext(0);
  sub_18F22AEBC();
  result = sub_18F5216CC();
  dword_1EAD0ABF0 = 0;
  qword_1EAD0ABF8 = result;
  return result;
}

void static IntentContext.context(for:)(uint64_t x8_0@<X8>)
{
  if (qword_1EACCF490 != -1)
  {
    OUTLINED_FUNCTION_6_50(&qword_1EACCF490);
  }

  os_unfair_lock_lock(&dword_1EAD0ABF0);
  sub_18F32AE6C(&qword_1EAD0ABF8, x8_0);

  os_unfair_lock_unlock(&dword_1EAD0ABF0);
}

uint64_t sub_18F32AE6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16) && (sub_18F181A54(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = type metadata accessor for IntentContext(0);
    sub_18F269E30(v7 + *(*(v8 - 8) + 72) * v6, a2);
    v9 = a2;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = type metadata accessor for IntentContext(0);
    v9 = a2;
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
}

void sub_18F32AF24(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898, &qword_18F5492F0);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_51();
  v5 = sub_18F520E6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  if (qword_1EACCF490 != -1)
  {
    OUTLINED_FUNCTION_6_50(&qword_1EACCF490);
  }

  os_unfair_lock_lock(&dword_1EAD0ABF0);
  v10 = type metadata accessor for IntentContext(0);
  (*(v6 + 16))(v9, a1 + *(v10 + 36), v5);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v10);
  sub_18F4213F0();
  os_unfair_lock_unlock(&dword_1EAD0ABF0);
}

void sub_18F32B090()
{
  OUTLINED_FUNCTION_7_0();
  os_unfair_lock_lock(v1 + 4);
  sub_18F32B4BC(&v1[6], v3, v4, v2, v0);

  os_unfair_lock_unlock(v1 + 4);
}

void (*IntentContext.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v9 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v9;
  v9[2] = a4;
  v9[3] = v4;
  *v9 = a2;
  v9[1] = a3;
  swift_getAssociatedTypeWitness();
  v10 = sub_18F52254C();
  v9[4] = v10;
  v11 = *(v10 - 8);
  v9[5] = v11;
  v12 = *(v11 + 64);
  v9[6] = __swift_coroFrameAllocStub(v12);
  v9[7] = __swift_coroFrameAllocStub(v12);
  v13 = OUTLINED_FUNCTION_9_42();
  IntentContext.subscript.getter(v13, v14, v15);
  return sub_18F32B218;
}

void sub_18F32B218(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    IntentContext.subscript.setter();
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    IntentContext.subscript.setter();
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_18F32B308()
{
  OUTLINED_FUNCTION_7_0();
  type metadata accessor for IntentContext(0);
  v1 = OUTLINED_FUNCTION_9_42();
  sub_18F32B35C(v1, v2, v3, v0);
}

void sub_18F32B35C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  os_unfair_lock_lock(v4 + 4);
  a4(v4 + 6, a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6330, &unk_18F557870);
  swift_getAssociatedTypeWitness();
  sub_18F52254C();

  j__os_unfair_lock_unlock(v4 + 4);
}

uint64_t sub_18F32B43C()
{

  return MEMORY[0x1EEE6BDC0](v0);
}

_OWORD *sub_18F32B4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_18F52254C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v9 + 16))(&v14 - v10, a3, v8);
  if (__swift_getEnumTagSinglePayload(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v14 = 0u;
    v15 = 0u;
  }

  else
  {
    *(&v15 + 1) = AssociatedTypeWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
    (*(*(AssociatedTypeWitness - 8) + 32))(boxed_opaque_existential_1, v11, AssociatedTypeWitness);
  }

  return sub_18F42110C(&v14, a2);
}

uint64_t sub_18F32B654@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v6 = *a1;
  if (*(*a1 + 16) && (v7 = sub_18F0EFA5C(a2), (v8 & 1) != 0))
  {
    sub_18F0FECD4(*(v6 + 56) + 32 * v7, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0430, &qword_18F540CE0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a5, v10 ^ 1u, 1, AssociatedTypeWitness);
}

_OWORD *sub_18F32B738@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  sub_18F19E4BC(*a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0430, &qword_18F540CE0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(a5, v8 ^ 1u, 1, AssociatedTypeWitness);
  memset(v10, 0, sizeof(v10));
  return sub_18F42110C(v10, a2);
}

uint64_t sub_18F32B820()
{
  sub_18F0EF1A8(v0 + 24, &qword_1EACD6330, &unk_18F557870);

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_18F32B888(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18F32B8C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_18F32B920()
{
  v1 = sub_18F5216CC();
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t sub_18F32B9C0()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  sub_18F0EF148(v0 + OBJC_IVAR____TtCC10AppIntents16_SuggestedAction12RequestValue_dialog, &qword_1EACCF7A0, &unk_18F53E6F0);

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_18F32BA4C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return sub_18F0EF148(v0 + OBJC_IVAR____TtCC10AppIntents16_SuggestedAction21RequestDisambiguation_dialog, &qword_1EACCF7A0, &unk_18F53E6F0);
}

uint64_t sub_18F32BA90()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  sub_18F0EF148(v0 + OBJC_IVAR____TtCC10AppIntents16_SuggestedAction21RequestDisambiguation_dialog, &qword_1EACCF7A0, &unk_18F53E6F0);
  return v0;
}

uint64_t sub_18F32BAF0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  sub_18F0EF148(v0 + OBJC_IVAR____TtCC10AppIntents16_SuggestedAction19RequestConfirmation_dialog, &qword_1EACCF7A0, &unk_18F53E6F0);
  return sub_18F0EF148(v0 + OBJC_IVAR____TtCC10AppIntents16_SuggestedAction19RequestConfirmation_snippetView, &qword_1EACD0550, &qword_18F547EB0);
}

uint64_t sub_18F32BB54()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  sub_18F0EF148(v0 + OBJC_IVAR____TtCC10AppIntents16_SuggestedAction19RequestConfirmation_dialog, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v0 + OBJC_IVAR____TtCC10AppIntents16_SuggestedAction19RequestConfirmation_snippetView, &qword_1EACD0550, &qword_18F547EB0);
  return v0;
}

uint64_t sub_18F32BBD4(void (*a1)(void))
{
  a1();

  return MEMORY[0x1EEE6BDC0](v1);
}

uint64_t sub_18F32BC30(uint64_t a1, uint64_t *a2, char a3, uint64_t *a4)
{
  v5 = *a2;
  v6 = *a4;
  v7 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v7;
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 56) = v5;
  *(v4 + 64) = a3;
  *(v4 + 72) = v6;
  return v4;
}

void sub_18F32BC58()
{
  sub_18F0EF148(v0 + 16, &qword_1EACD2FE0, &unk_18F5579C0);
  v1 = *(v0 + 56);
}

uint64_t sub_18F32BC98()
{

  sub_18F0EF148(v0 + 16, &qword_1EACD2FE0, &unk_18F5579C0);
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_18F32BD00(uint64_t a1)
{
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  swift_beginAccess();
  sub_18F32C808(a1, v1 + 16);
  swift_endAccess();
  sub_18F0EF148(a1, &qword_1EACD3398, &unk_18F54B5B0);
  return v1;
}

uint64_t sub_18F32BDB0()
{
  sub_18F0EF148(v0 + 16, &qword_1EACD3398, &unk_18F54B5B0);

  return MEMORY[0x1EEE6BDC0](v0);
}

void sub_18F32BE6C(uint64_t a1)
{
  sub_18F0FDE68(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_18F32BF30(uint64_t a1)
{
  sub_18F0FDE68(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_18F32C000(uint64_t a1)
{
  sub_18F0FDE68(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_18F32C0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_11_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  (*(v9 + 32))(&v20 - v15);
  v17 = swift_allocObject();
  (*(v9 + 16))(v13, v16, a4);
  v18 = sub_18F32C23C(v13, a2, v17, a4, a5);
  (*(v9 + 8))(v16, a4);
  return v18;
}

void *sub_18F32C23C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  a3[5] = a4;
  a3[6] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 2);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  sub_18F1170D0(a2, a3 + OBJC_IVAR____TtCC10AppIntents16_SuggestedAction12RequestValue_dialog);
  return a3;
}

void *sub_18F32C2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_11_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22 - v17;
  (*(v11 + 32))(&v22 - v17);
  v19 = swift_allocObject();
  (*(v11 + 16))(v15, v18, a5);
  v20 = sub_18F32C41C(v15, a2, a3, v19, a5, a6);
  (*(v11 + 8))(v18, a5);
  return v20;
}

void *sub_18F32C41C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[5] = a5;
  a4[6] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4 + 2);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  a4[7] = a2;
  sub_18F1170D0(a3, a4 + OBJC_IVAR____TtCC10AppIntents16_SuggestedAction21RequestDisambiguation_dialog);
  return a4;
}

void *sub_18F32C4B4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a4;
  v36 = a8;
  v34 = a3;
  OUTLINED_FUNCTION_11_0();
  v13 = v12;
  v33 = a9;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  OUTLINED_FUNCTION_11_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v33 - v28;
  (*(v22 + 32))(&v33 - v28);
  (*(v13 + 32))(v20, a2, a7);
  v30 = swift_allocObject();
  (*(v22 + 16))(v26, v29, a6);
  (*(v13 + 16))(v17, v20, a7);
  v31 = sub_18F32C708(v26, v17, v34, v35, v30, a6, a7, v36, v33);
  (*(v13 + 8))(v20, a7);
  (*(v22 + 8))(v29, a6);
  return v31;
}

void *sub_18F32C708(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a5[5] = a6;
  a5[6] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5 + 2);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  a5[10] = a7;
  a5[11] = a9;
  v17 = __swift_allocate_boxed_opaque_existential_1(a5 + 7);
  (*(*(a7 - 8) + 32))(v17, a2, a7);
  sub_18F1170D0(a3, a5 + OBJC_IVAR____TtCC10AppIntents16_SuggestedAction19RequestConfirmation_dialog);
  v18 = (a5 + OBJC_IVAR____TtCC10AppIntents16_SuggestedAction19RequestConfirmation_snippetView);
  v19 = a4[1];
  *v18 = *a4;
  v18[1] = v19;
  *(v18 + 25) = *(a4 + 25);
  return a5;
}

uint64_t sub_18F32C808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3398, &unk_18F54B5B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *sub_18F32C894()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  v72 = &v71 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  v4 = OUTLINED_FUNCTION_10(v3);
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v71 - v5;
  v6 = sub_18F520F1C();
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v77 = sub_18F520ADC();
  v11 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_4();
  v14 = (v13 - v12);
  v15 = sub_18F52189C();
  v16 = OUTLINED_FUNCTION_10(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6378, &qword_18F557BD0);
  v20 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6380, &qword_18F557BD8) - 8);
  v21 = *v20;
  v81 = *(*v20 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v83 = v23;
  *(v23 + 16) = xmmword_18F541F50;
  v80 = v23 + v22;
  v24 = v23 + v22 + v20[14];
  *(v23 + v22) = 0;
  sub_18F52181C();
  v79 = type metadata accessor for FavoriteOperation.__();
  *v14 = v79;
  v75 = *MEMORY[0x1E6968E00];
  v25 = *(v11 + 104);
  v76 = v11 + 104;
  v78 = v25;
  v25(v14);
  v74 = v10;
  sub_18F520EDC();
  OUTLINED_FUNCTION_2_4(v19, 0, 0, v10);
  v26 = sub_18F520B3C();
  v27 = v82;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v26);
  v31 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  v35 = type metadata accessor for DisplayRepresentation(0);
  v36 = v35[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v26);
  v40 = v35[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v31);
  v44 = v35[7];
  v73 = xmmword_18F540410;
  *(v24 + v44) = xmmword_18F540410;
  *(v24 + v35[8]) = 0;
  *(v24 + v35[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v26);
  sub_18F0FF628(v27, v24 + v36, &qword_1EACCF7A8, &qword_18F540440);
  v48 = v72;
  sub_18F0FF628(v72, v24 + v40, &qword_1EACD0270, &unk_18F5407C0);
  v49 = v80 + v81 + v20[14];
  *(v80 + v81) = 1;
  sub_18F52181C();
  v50 = v78;
  *v14 = v79;
  v50(v14, v75, v77);
  v51 = v74;
  sub_18F520EDC();
  OUTLINED_FUNCTION_2_4(v19, 0, 0, v51);
  v52 = v27;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v26);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v31);
  v59 = v35[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v26);
  v63 = v35[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v31);
  *(v49 + v35[7]) = v73;
  *(v49 + v35[8]) = 0;
  *(v49 + v35[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v26);
  sub_18F0FF628(v52, v49 + v59, &qword_1EACCF7A8, &qword_18F540440);
  sub_18F0FF628(v48, v49 + v63, &qword_1EACD0270, &unk_18F5407C0);
  sub_18F32D56C();
  result = sub_18F5216CC();
  off_1ED6FE0E0 = result;
  return result;
}

_UNKNOWN **sub_18F32CDC0()
{
  if (qword_1ED6FE0D8 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_1ED6FE0D8);
  }

  return &off_1ED6FE0E0;
}

uint64_t static FavoriteOperation.caseDisplayRepresentations.getter()
{
  if (qword_1ED6FE0D8 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_1ED6FE0D8);
  }

  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t static FavoriteOperation.caseDisplayRepresentations.setter(void *a1)
{
  if (qword_1ED6FE0D8 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_1ED6FE0D8);
  }

  swift_beginAccess();
  off_1ED6FE0E0 = a1;
}

uint64_t (*static FavoriteOperation.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ED6FE0D8 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_1ED6FE0D8);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18F32CF50@<X0>(void *a1@<X8>)
{
  sub_18F32CDC0();
  swift_beginAccess();
  *a1 = off_1ED6FE0E0;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F32CFA4(void **a1)
{
  v1 = *a1;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F32CDC0();
  swift_beginAccess();
  off_1ED6FE0E0 = v1;
}

AppIntents::FavoriteOperation_optional __swiftcall FavoriteOperation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18F522B3C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FavoriteOperation.rawValue.getter()
{
  if (*v0)
  {
    return 0x65766F6D6572;
  }

  else
  {
    return 6579297;
  }
}

unint64_t sub_18F32D0B0()
{
  result = qword_1ED6FEB88;
  if (!qword_1ED6FEB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEB88);
  }

  return result;
}

uint64_t sub_18F32D128@<X0>(uint64_t *a1@<X8>)
{
  result = FavoriteOperation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_18F32D190()
{
  result = qword_1ED6FEB68;
  if (!qword_1ED6FEB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEB68);
  }

  return result;
}

unint64_t sub_18F32D1E4()
{
  result = qword_1ED6FEB50;
  if (!qword_1ED6FEB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEB50);
  }

  return result;
}

unint64_t sub_18F32D238()
{
  result = qword_1ED6FEB80;
  if (!qword_1ED6FEB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEB80);
  }

  return result;
}

unint64_t sub_18F32D28C(uint64_t a1)
{
  result = sub_18F32D2B4();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_18F32D2B4()
{
  result = qword_1ED6FEB60;
  if (!qword_1ED6FEB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEB60);
  }

  return result;
}

unint64_t sub_18F32D308(uint64_t a1)
{
  result = sub_18F32D330();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F32D330()
{
  result = qword_1ED6FEB58;
  if (!qword_1ED6FEB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEB58);
  }

  return result;
}

unint64_t sub_18F32D3D8()
{
  result = qword_1ED6FEB70;
  if (!qword_1ED6FEB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEB70);
  }

  return result;
}

uint64_t sub_18F32D470(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_18F32D4C4()
{
  result = qword_1ED6FEB98;
  if (!qword_1ED6FEB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEB98);
  }

  return result;
}

unint64_t sub_18F32D518()
{
  result = qword_1ED6FEB78;
  if (!qword_1ED6FEB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEB78);
  }

  return result;
}

unint64_t sub_18F32D56C()
{
  result = qword_1ED6FEB90;
  if (!qword_1ED6FEB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEB90);
  }

  return result;
}

unint64_t sub_18F32D5C4()
{
  result = qword_1ED6FE060;
  if (!qword_1ED6FE060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6370, &qword_18F557B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FE060);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FavoriteOperation(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _ResolutionDriver<>.readyToPerform()()
{
  type metadata accessor for _SuggestedAction.ReadyToPerform();
  memset(v1, 0, sizeof(v1));
  swift_allocObject();
  return sub_18F32BD00(v1);
}

uint64_t _ResolutionDriver.readyToPerform(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[3] = AssociatedTypeWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
  type metadata accessor for _SuggestedAction.ReadyToPerform();
  swift_allocObject();
  return sub_18F32BD00(v7);
}

uint64_t _ResolutionDriver.requestConfirmation()()
{
  v0 = type metadata accessor for ConfirmationActionNameEnum(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E38, &unk_18F557BE0);
  __swift_storeEnumTagSinglePayload(v2, 7, 33, v3);
  sub_18F39DE70(v2, 0, &v6);
  v5 = 0;
  type metadata accessor for _SuggestedAction.RequestActionConfirmation();
  swift_allocObject();
  return sub_18F32BC30(v7, &v6, 1, &v5);
}

uint64_t _ResolutionDriver.requestConfirmation<A>(result:confirmationActionName:showPrompt:conditions:)(uint64_t a1, void **a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a2;
  v12 = *a4;
  v19[3] = a6;
  v19[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a1, a6);
  v17 = v12;
  v18 = v11;
  type metadata accessor for _SuggestedAction.RequestActionConfirmation();
  swift_allocObject();
  v14 = sub_18F32BC30(v19, &v18, a3, &v17);
  v15 = v11;
  return v14;
}

uint64_t dispatch thunk of _ResolutionDriver.nextAction(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18F32DB7C;

  return v9(a1, a2, a3);
}

uint64_t sub_18F32DB7C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

double LNValue.asPropertyType.getter()
{
  v20[4] = [v0 valueType];
  sub_18F0F21A8(0, &qword_1ED6FE3A0, 0x1E69ACA98);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6388, &qword_18F557C20);
  if (OUTLINED_FUNCTION_98_6(v1, v2, v3, v4, v5, v6))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v21, *(&v22 + 1));
    v7 = [v0 value];
    sub_18F52261C();
    v8 = swift_unknownObjectRelease();
    v16 = OUTLINED_FUNCTION_89_5(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20[0]);
    v17(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  }

  else
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    sub_18F0FA038(&v21, &qword_1EACD6390, &qword_18F557C28);
    return OUTLINED_FUNCTION_5_3();
  }

  return result;
}

double LNValue.asUnboxedPropertyType.getter()
{
  v20[4] = [v0 valueType];
  sub_18F0F21A8(0, &qword_1ED6FE3A0, 0x1E69ACA98);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6388, &qword_18F557C20);
  if (OUTLINED_FUNCTION_98_6(v1, v2, v3, v4, v5, v6))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v21, *(&v22 + 1));
    v7 = [v0 value];
    sub_18F52261C();
    v8 = swift_unknownObjectRelease();
    v16 = OUTLINED_FUNCTION_89_5(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20[0]);
    v17(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  }

  else
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    sub_18F0FA038(&v21, &qword_1EACD6390, &qword_18F557C28);
    return OUTLINED_FUNCTION_5_3();
  }

  return result;
}

double sub_18F32DEC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18F0FECD4(a1, &v4);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

double sub_18F32DF7C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18F0FECD4(a1, &v4);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_18F32E01C@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  sub_18F0FECD4(a1, &v5);
  OUTLINED_FUNCTION_103();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_18F32E0BC(uint64_t a1)
{
  sub_18F0FECD4(a1, v2);
  sub_18F0F21A8(0, &qword_1EACCDD48, 0x1E695FC20);
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18F32E13C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  sub_18F0FECD4(a1, &v8);
  v5 = a2(0);
  OUTLINED_FUNCTION_103();
  v6 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v6 ^ 1u, 1, v5);
}

uint64_t sub_18F32E1B0(uint64_t a1, uint64_t a2)
{
  sub_18F0FECD4(a1, v5);
  OUTLINED_FUNCTION_103();
  v2 = swift_dynamicCast();
  v3 = v5[4];
  if (!v2)
  {
    return 0;
  }

  return v3;
}

uint64_t sub_18F32E210(uint64_t a1)
{
  sub_18F0FECD4(a1, v2);
  if (swift_dynamicCast())
  {
    return v2[39];
  }

  else
  {
    return 2;
  }
}

uint64_t sub_18F32E268(uint64_t a1)
{
  sub_18F0FECD4(a1, v2);
  if (swift_dynamicCast())
  {
    return v2[4];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18F32E48C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_18F0FECD4(a1, &v10);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_103();
  v8 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a4, v8 ^ 1u, 1, v7);
}

_OWORD *sub_18F32E50C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_18F0FECD4(a1, v12);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
  v9 = OUTLINED_FUNCTION_8_4(v8);
  v10 = v9;
  if (v9)
  {
  }

  *a4 = v10;
  result = sub_18F118710(a1, (a4 + 8));
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

void sub_18F32E5A0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_90_7();
  v5 = *(v4 + 16);
  v6 = sub_18F52254C();
  v7 = *(v6 - 8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_6();
  if (*v1 != 1)
  {
    (*(v1 + 40))(v1 + 8);
    if (__swift_getEnumTagSinglePayload(v3, 1, v5) != 1)
    {
      v12 = *(v2 + 24);
      v0[3] = v5;
      v0[4] = v12;
      __swift_allocate_boxed_opaque_existential_1(v0);
      OUTLINED_FUNCTION_31_0();
      (*(v13 + 32))();
      goto LABEL_8;
    }

    (*(v7 + 8))(v3, v6);
    goto LABEL_6;
  }

  sub_18F0FECD4(v1 + 8, &v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
  v9 = swift_dynamicCast();
  if (!v9)
  {
LABEL_6:
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_23_29();
  sub_18F33A008(v10);
  sub_18F521B3C();

  v0[3] = sub_18F521DBC();
  OUTLINED_FUNCTION_10_3();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_36_23(WitnessTable);
LABEL_8:
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F32E7EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360, &qword_18F5407D0);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_101();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0320, &qword_18F540660);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v114 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6A08, &qword_18F55B7A0);
  OUTLINED_FUNCTION_10(v13);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD1480, &qword_18F5495E0);
  OUTLINED_FUNCTION_10(v15);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14_7();
  v17 = [v2 typeIdentifier];
  switch(v17)
  {
    case 0uLL:
      OUTLINED_FUNCTION_76_9();
      OUTLINED_FUNCTION_59_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v54 = OUTLINED_FUNCTION_27_32();
      if (v54)
      {
      }

      OUTLINED_FUNCTION_63_8();
      v55 = OUTLINED_FUNCTION_105_6();
      if (v54)
      {
        sub_18F0FECD4(v55, v117);
        if (OUTLINED_FUNCTION_26_32())
        {
          OUTLINED_FUNCTION_25_29();
          MEMORY[0x1EEE9AC00](v56);
          OUTLINED_FUNCTION_6_51();
          v57 = OUTLINED_FUNCTION_11_37();
          sub_18F3EC0C4(v57, v58, v59, v60, v61, v62, v63, v64, v114, v115, v116, v117[0]);
          OUTLINED_FUNCTION_34_22();

          a2[3] = OUTLINED_FUNCTION_82_0();
          v65 = OUTLINED_FUNCTION_39_20(&qword_1EACD1E70);
          OUTLINED_FUNCTION_35_18(v65);
LABEL_73:
          v32 = &unk_1EACD6838;
          v33 = &unk_18F558330;
          return sub_18F0FA038(v118, v32, v33);
        }
      }

      else
      {
        v96 = sub_18F32E268(v55);
        if (v97)
        {
          v98 = v96;
          v99 = v97;
          a2[3] = MEMORY[0x1E69E6158];
          a2[4] = sub_18F10F340();
          *a2 = v98;
          a2[1] = v99;
          goto LABEL_73;
        }
      }

      OUTLINED_FUNCTION_5_3();
      goto LABEL_73;
    case 1uLL:
      OUTLINED_FUNCTION_76_9();
      OUTLINED_FUNCTION_59_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v66 = OUTLINED_FUNCTION_27_32();
      if (v66)
      {
      }

      OUTLINED_FUNCTION_63_8();
      v67 = OUTLINED_FUNCTION_105_6();
      if (v66)
      {
        sub_18F0FECD4(v67, v117);
        if (OUTLINED_FUNCTION_26_32())
        {
          OUTLINED_FUNCTION_25_29();
          MEMORY[0x1EEE9AC00](v68);
          OUTLINED_FUNCTION_6_51();
          v69 = OUTLINED_FUNCTION_11_37();
          sub_18F3EBF40(v69, v70, v71);
          OUTLINED_FUNCTION_34_22();

          a2[3] = OUTLINED_FUNCTION_82_0();
          v72 = OUTLINED_FUNCTION_39_20(&unk_1EACD6A98);
          OUTLINED_FUNCTION_35_18(v72);
          goto LABEL_83;
        }

        goto LABEL_64;
      }

      if (sub_18F32E210(v67) == 2)
      {
LABEL_64:
        OUTLINED_FUNCTION_5_3();
        goto LABEL_83;
      }

      a2[3] = MEMORY[0x1E69E6370];
      v110 = sub_18F118844();
      OUTLINED_FUNCTION_78_5(v110);
LABEL_83:
      v32 = &unk_1EACD6A88;
      v33 = &unk_18F558518;
      return sub_18F0FA038(v118, v32, v33);
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
      OUTLINED_FUNCTION_76_9();
      OUTLINED_FUNCTION_59_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v18 = OUTLINED_FUNCTION_27_32();
      if (v18)
      {
      }

      OUTLINED_FUNCTION_63_8();
      v119 = sub_18F339E64;
      v120 = 0;
      if (v18)
      {
        sub_18F0FECD4(v3 + 8, v117);
        if (OUTLINED_FUNCTION_26_32())
        {
          OUTLINED_FUNCTION_25_29();
          MEMORY[0x1EEE9AC00](v19);
          OUTLINED_FUNCTION_6_51();
          v20 = OUTLINED_FUNCTION_11_37();
          sub_18F3EBE50(v20, v21, v22, v23, v24, v25, v26, v27, v114);
          OUTLINED_FUNCTION_34_22();

          a2[3] = OUTLINED_FUNCTION_82_0();
          v28 = OUTLINED_FUNCTION_39_20(&unk_1EACD6A80);
          OUTLINED_FUNCTION_35_18(v28);
          goto LABEL_10;
        }

        goto LABEL_8;
      }

      v29 = MEMORY[0x1E69E6530];
      sub_18F32E1B0(v3 + 8, MEMORY[0x1E69E6530]);
      if (v30)
      {
LABEL_8:
        OUTLINED_FUNCTION_5_3();
        goto LABEL_10;
      }

      a2[3] = v29;
      v31 = sub_18F1DD638();
      OUTLINED_FUNCTION_36_23(v31);
LABEL_10:
      v32 = &unk_1EACD6A78;
      v33 = &unk_18F558508;
      return sub_18F0FA038(v118, v32, v33);
    case 7uLL:
      OUTLINED_FUNCTION_76_9();
      OUTLINED_FUNCTION_59_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v73 = OUTLINED_FUNCTION_27_32();
      if (v73)
      {
      }

      OUTLINED_FUNCTION_63_8();
      v119 = sub_18F339DF4;
      v120 = 0;
      if (v73)
      {
        sub_18F0FECD4(v3 + 8, v117);
        if (OUTLINED_FUNCTION_26_32())
        {
          OUTLINED_FUNCTION_25_29();
          MEMORY[0x1EEE9AC00](v74);
          OUTLINED_FUNCTION_6_51();
          OUTLINED_FUNCTION_11_37();
          sub_18F3EBD48();
          OUTLINED_FUNCTION_34_22();

          a2[3] = OUTLINED_FUNCTION_82_0();
          v75 = OUTLINED_FUNCTION_39_20(&unk_1EACD6A70);
          OUTLINED_FUNCTION_35_18(v75);
          goto LABEL_85;
        }

        goto LABEL_66;
      }

      v100 = MEMORY[0x1E69E63B0];
      sub_18F32E1B0(v3 + 8, MEMORY[0x1E69E63B0]);
      if (v101)
      {
LABEL_66:
        OUTLINED_FUNCTION_5_3();
        goto LABEL_85;
      }

      a2[3] = v100;
      v111 = sub_18F1DD958();
      OUTLINED_FUNCTION_36_23(v111);
LABEL_85:
      v32 = &unk_1EACD6A60;
      v33 = &unk_18F5584F8;
      return sub_18F0FA038(v118, v32, v33);
    case 8uLL:
      OUTLINED_FUNCTION_76_9();
      OUTLINED_FUNCTION_96_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v88 = OUTLINED_FUNCTION_51_9(&v116, v118);
      if (v88)
      {
      }

      LOBYTE(v118[0]) = v88;
      sub_18F118710(v117, (a1 + 8));
      v119 = sub_18F32E124;
      v120 = 0;
      v89 = a1 + 8;
      if (v88)
      {
        sub_18F0FECD4(v89, v117);
        if (OUTLINED_FUNCTION_51_9(&v116, v117))
        {
          OUTLINED_FUNCTION_25_29();
          MEMORY[0x1EEE9AC00](v90);
          OUTLINED_FUNCTION_6_51();
          OUTLINED_FUNCTION_11_37();
          sub_18F3EBCF8();
          OUTLINED_FUNCTION_34_22();

          a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6A50, &qword_18F5584F0);
          v91 = sub_18F33A880();
          OUTLINED_FUNCTION_35_18(v91);
        }

        else
        {
          OUTLINED_FUNCTION_5_3();
        }
      }

      else
      {
        sub_18F32E124(v89, v3);
        v103 = sub_18F520DEC();
        OUTLINED_FUNCTION_54_0(v3);
        if (v93)
        {
          sub_18F0FA038(v3, &qword_1EACD6A08, &qword_18F55B7A0);
          OUTLINED_FUNCTION_20_29();
        }

        else
        {
          a2[3] = v103;
          v112 = sub_18F10F9E4(&qword_1EACCED48);
          OUTLINED_FUNCTION_71_8(v112);
          OUTLINED_FUNCTION_31_0();
          (*(v113 + 32))();
        }
      }

      v32 = &unk_1EACD6A48;
      v33 = &unk_18F5584E8;
      return sub_18F0FA038(v118, v32, v33);
    case 9uLL:
      OUTLINED_FUNCTION_76_9();
      OUTLINED_FUNCTION_96_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v47 = OUTLINED_FUNCTION_51_9(&v116, v118);
      if (v47)
      {
      }

      LOBYTE(v118[0]) = v47;
      sub_18F118710(v117, (a1 + 8));
      v119 = sub_18F32E0A4;
      v120 = 0;
      v48 = a1 + 8;
      if (v47)
      {
        sub_18F0FECD4(v48, v117);
        if (OUTLINED_FUNCTION_51_9(&v116, v117))
        {
          OUTLINED_FUNCTION_25_29();
          MEMORY[0x1EEE9AC00](v49);
          OUTLINED_FUNCTION_6_51();
          v50 = OUTLINED_FUNCTION_11_37();
          sub_18F3EB950(v50, v51, v52);
          OUTLINED_FUNCTION_34_22();

          a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6A20, &qword_18F5584D0);
          v53 = sub_18F33A6C0();
          OUTLINED_FUNCTION_35_18(v53);
        }

        else
        {
          OUTLINED_FUNCTION_5_3();
        }
      }

      else
      {
        sub_18F32E0A4(v48, v12);
        v95 = sub_18F52085C();
        OUTLINED_FUNCTION_54_0(v12);
        if (v93)
        {
          sub_18F0FA038(v12, &qword_1EACD0320, &qword_18F540660);
          OUTLINED_FUNCTION_20_29();
        }

        else
        {
          a2[3] = v95;
          v108 = sub_18F10F9E4(&qword_1EACCDDD0);
          OUTLINED_FUNCTION_71_8(v108);
          OUTLINED_FUNCTION_31_0();
          (*(v109 + 32))();
        }
      }

      v32 = &unk_1EACD6A18;
      v33 = &unk_18F5584C8;
      return sub_18F0FA038(v118, v32, v33);
    case 0xAuLL:
      OUTLINED_FUNCTION_76_9();
      OUTLINED_FUNCTION_59_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v76 = OUTLINED_FUNCTION_27_32();
      if (v76)
      {
      }

      OUTLINED_FUNCTION_63_8();
      v77 = OUTLINED_FUNCTION_105_6();
      if (v76)
      {
        sub_18F0FECD4(v77, v117);
        if (OUTLINED_FUNCTION_26_32())
        {
          OUTLINED_FUNCTION_25_29();
          MEMORY[0x1EEE9AC00](v78);
          OUTLINED_FUNCTION_6_51();
          v79 = OUTLINED_FUNCTION_11_37();
          sub_18F3EBC0C(v79, v80, v81, v82, v83, v84, v85, v86, v114, v115, v116, v117[0]);
          OUTLINED_FUNCTION_34_22();

          a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6A38, &qword_18F5584E0);
          v87 = sub_18F33A7D0();
          OUTLINED_FUNCTION_35_18(v87);
          goto LABEL_75;
        }
      }

      else if (sub_18F32E0BC(v77))
      {
        a2[3] = sub_18F0F21A8(0, &qword_1EACCDD48, 0x1E695FC20);
        v102 = sub_18F33A774(qword_1EACD3AF8);
        OUTLINED_FUNCTION_36_23(v102);
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_5_3();
LABEL_75:
      v32 = &unk_1EACD6A30;
      v33 = &unk_18F5584D8;
      return sub_18F0FA038(v118, v32, v33);
    case 0xBuLL:
      OUTLINED_FUNCTION_76_9();
      OUTLINED_FUNCTION_96_6();
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v36 = OUTLINED_FUNCTION_62_9(&v116, v118);
      if (v36)
      {
      }

      LOBYTE(v118[0]) = v36;
      sub_18F118710(v117, (a1 + 8));
      v119 = sub_18F32E08C;
      v120 = 0;
      v37 = a1 + 8;
      if (v36)
      {
        sub_18F0FECD4(v37, v117);
        if (OUTLINED_FUNCTION_62_9(&v116, v117))
        {
          OUTLINED_FUNCTION_25_29();
          MEMORY[0x1EEE9AC00](v38);
          OUTLINED_FUNCTION_6_51();
          v39 = OUTLINED_FUNCTION_11_37();
          sub_18F3EB900(v39, v40, v41);
          OUTLINED_FUNCTION_34_22();

          a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2810, &unk_18F549080);
          v42 = sub_18F20F558();
          OUTLINED_FUNCTION_35_18(v42);
        }

        else
        {
          OUTLINED_FUNCTION_5_3();
        }
      }

      else
      {
        sub_18F32E08C(v37, v2);
        sub_18F520C8C();
        v92 = OUTLINED_FUNCTION_34_22();
        OUTLINED_FUNCTION_23_26(v92);
        if (v93)
        {
          sub_18F0FA038(v2, &qword_1EACD0360, &qword_18F5407D0);
          OUTLINED_FUNCTION_20_29();
        }

        else
        {
          a2[3] = v35;
          v104 = sub_18F10F9E4(qword_1EACCEB30);
          OUTLINED_FUNCTION_71_8(v104);
          OUTLINED_FUNCTION_31_0();
          (*(v105 + 32))();
        }
      }

      v32 = &unk_1EACD6A10;
      v33 = &unk_18F5584B8;
      return sub_18F0FA038(v118, v32, v33);
    case 0xCuLL:
      OUTLINED_FUNCTION_76_9();
      OUTLINED_FUNCTION_59_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v43 = OUTLINED_FUNCTION_27_32();
      if (v43)
      {
      }

      OUTLINED_FUNCTION_63_8();
      v44 = OUTLINED_FUNCTION_105_6();
      if (v43)
      {
        sub_18F0FECD4(v44, v117);
        if (OUTLINED_FUNCTION_26_32())
        {
          OUTLINED_FUNCTION_25_29();
          MEMORY[0x1EEE9AC00](v45);
          OUTLINED_FUNCTION_6_51();
          OUTLINED_FUNCTION_11_37();
          sub_18F3EC074();
          OUTLINED_FUNCTION_34_22();

          a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6AA8, &qword_18F558530);
          v46 = sub_18F33A9CC();
          OUTLINED_FUNCTION_35_18(v46);
        }

        else
        {
          OUTLINED_FUNCTION_5_3();
        }
      }

      else
      {
        sub_18F32F6AC(v44, v4);
        v94 = sub_18F5208EC();
        OUTLINED_FUNCTION_54_0(v4);
        if (v93)
        {
          sub_18F0FA038(v4, &unk_1EACD1480, &qword_18F5495E0);
          OUTLINED_FUNCTION_20_29();
        }

        else
        {
          a2[3] = v94;
          v106 = sub_18F10F9E4(qword_1EACCED60);
          OUTLINED_FUNCTION_71_8(v106);
          OUTLINED_FUNCTION_31_0();
          (*(v107 + 32))();
        }
      }

      v32 = &unk_1EACD6AA0;
      v33 = &unk_18F558528;
      return sub_18F0FA038(v118, v32, v33);
    default:
      type metadata accessor for LNPrimitiveValueTypeIdentifier(0);
      v118[0] = v17;
      result = sub_18F522DFC();
      __break(1u);
      return result;
  }
}

uint64_t sub_18F32F5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_18F0FECD4(a1, v13);

  sub_18F32E50C(v13, a2, a3, v14);
  v10 = type metadata accessor for ValueConverter(0, a4, a5, v9);
  sub_18F32E5A0();
  OUTLINED_FUNCTION_12_9();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_18F32F6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18F0FECD4(a1, v6);
  sub_18F0F21A8(0, &qword_1EACCDD18, 0x1E696AAB0);
  if (swift_dynamicCast())
  {
    sub_18F52090C();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_18F5208EC();
  return __swift_storeEnumTagSinglePayload(a2, v3, 1, v4);
}

uint64_t sub_18F32F7D0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_18F32F860;

  return NSNull.NullResolver.resolve(from:context:)();
}

uint64_t sub_18F32F860(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_18F32F98C(uint64_t a1)
{
  result = sub_18F32F9B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F32F9B4()
{
  result = qword_1EACD63A0;
  if (!qword_1EACD63A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD63A0);
  }

  return result;
}

unint64_t sub_18F32FA0C()
{
  result = qword_1EACD63A8;
  if (!qword_1EACD63A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD63A8);
  }

  return result;
}

void sub_18F32FA7C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_90_7();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6878, &qword_18F558390);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_101();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6880, &qword_18F558398);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_23();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0318, &qword_18F5583A0);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_6();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6888, &qword_18F5583A8);
  OUTLINED_FUNCTION_10(v11);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_7();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6890, &qword_18F5583B0);
  OUTLINED_FUNCTION_10(v13);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v159 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6898, &qword_18F5583B8);
  OUTLINED_FUNCTION_10(v17);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v159 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD68A0, &qword_18F5583C0);
  OUTLINED_FUNCTION_10(v21);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v159 - v23;
  v25 = [v1 typeIdentifier];
  switch(v25)
  {
    case 0uLL:
      OUTLINED_FUNCTION_70_7();
      OUTLINED_FUNCTION_49_11();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v26 = OUTLINED_FUNCTION_17_37();
      if (v26)
      {
      }

      OUTLINED_FUNCTION_48_14();
      v166 = sub_18F33115C;
      v167 = 0;
      if (v26)
      {
        OUTLINED_FUNCTION_84_3();
        if (OUTLINED_FUNCTION_19_35())
        {
          OUTLINED_FUNCTION_18_36();
          MEMORY[0x1EEE9AC00](v27);
          OUTLINED_FUNCTION_3_55();
          v28 = OUTLINED_FUNCTION_11_37();
          sub_18F3EB8D4(v28, v29, v30);
          OUTLINED_FUNCTION_34_22();

          v0[3] = OUTLINED_FUNCTION_82_0();
          v31 = OUTLINED_FUNCTION_39_20(&unk_1EACD6A00);
          OUTLINED_FUNCTION_35_18(v31);
LABEL_143:
          v143 = &unk_1EACD69F0;
          v144 = &unk_18F5584A8;
          goto LABEL_150;
        }
      }

      else
      {
        v125 = OUTLINED_FUNCTION_66_9();
        sub_18F33115C(v125, v126);
        if (*(&v159 + 1))
        {
          v0[3] = &type metadata for IntentApplication;
          v127 = sub_18F1CCE70();
          OUTLINED_FUNCTION_77_7(v127);
          goto LABEL_143;
        }
      }

      OUTLINED_FUNCTION_5_3();
      goto LABEL_143;
    case 1uLL:
      OUTLINED_FUNCTION_70_7();
      OUTLINED_FUNCTION_49_11();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v72 = OUTLINED_FUNCTION_17_37();
      if (v72)
      {
      }

      OUTLINED_FUNCTION_48_14();
      v73 = OUTLINED_FUNCTION_85_6();
      if (v72)
      {
        sub_18F0FECD4(v73, &v159);
        if (OUTLINED_FUNCTION_19_35())
        {
          OUTLINED_FUNCTION_18_36();
          MEMORY[0x1EEE9AC00](v74);
          OUTLINED_FUNCTION_3_55();
          OUTLINED_FUNCTION_11_37();
          sub_18F3EB6F4();
          OUTLINED_FUNCTION_34_22();

          v0[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD69E0, &qword_18F5584A0);
          v75 = sub_18F33A60C();
          OUTLINED_FUNCTION_35_18(v75);
        }

        else
        {
          OUTLINED_FUNCTION_5_3();
        }
      }

      else
      {
        sub_18F32E074(v73, v24);
        v128 = type metadata accessor for IntentCalendarEvent(0);
        OUTLINED_FUNCTION_54_0(v24);
        if (v115)
        {
          sub_18F0FA038(v24, &qword_1EACD68A0, &qword_18F5583C0);
          OUTLINED_FUNCTION_20_29();
        }

        else
        {
          v0[3] = v128;
          v153 = sub_18F10F9E4(&qword_1EACD02A0);
          v154 = OUTLINED_FUNCTION_71_8(v153);
          sub_18F33A5A8(v24, v154, type metadata accessor for IntentCalendarEvent);
        }
      }

      v143 = &unk_1EACD69D8;
      v144 = &unk_18F558498;
      goto LABEL_150;
    case 2uLL:
      OUTLINED_FUNCTION_70_7();
      OUTLINED_FUNCTION_49_11();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v55 = OUTLINED_FUNCTION_17_37();
      if (v55)
      {
      }

      OUTLINED_FUNCTION_48_14();
      v166 = sub_18F32E010;
      v167 = 0;
      if (v55)
      {
        OUTLINED_FUNCTION_84_3();
        if (OUTLINED_FUNCTION_19_35())
        {
          OUTLINED_FUNCTION_18_36();
          MEMORY[0x1EEE9AC00](v56);
          OUTLINED_FUNCTION_3_55();
          v57 = OUTLINED_FUNCTION_11_37();
          sub_18F3EB594(v57, v58, v59);
          OUTLINED_FUNCTION_34_22();

          v0[3] = OUTLINED_FUNCTION_82_0();
          v60 = OUTLINED_FUNCTION_39_20(&unk_1EACD69B8);
          OUTLINED_FUNCTION_35_18(v60);
          goto LABEL_140;
        }
      }

      else
      {
        v120 = OUTLINED_FUNCTION_66_9();
        sub_18F32E010(v120, v121);
        if (*(&v159 + 1))
        {
          v0[3] = &type metadata for IntentEnvironment;
          v122 = sub_18F287A98();
          OUTLINED_FUNCTION_77_7(v122);
          goto LABEL_140;
        }
      }

      OUTLINED_FUNCTION_5_3();
LABEL_140:
      v143 = &unk_1EACD69A8;
      v144 = &unk_18F558478;
      goto LABEL_150;
    case 3uLL:
      OUTLINED_FUNCTION_70_7();
      OUTLINED_FUNCTION_49_11();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v61 = OUTLINED_FUNCTION_47_16();
      v63 = OUTLINED_FUNCTION_51_9(v61, v62);
      if (v63)
      {
      }

      OUTLINED_FUNCTION_48_14();
      v64 = OUTLINED_FUNCTION_85_6();
      if (v63)
      {
        sub_18F0FECD4(v64, &v159);
        if (OUTLINED_FUNCTION_51_9(&v163, &v159))
        {
          OUTLINED_FUNCTION_18_36();
          MEMORY[0x1EEE9AC00](v65);
          OUTLINED_FUNCTION_3_55();
          OUTLINED_FUNCTION_11_37();
          sub_18F3EAB28();
          OUTLINED_FUNCTION_34_22();

          v0[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD14B0, &qword_18F558410);
          v66 = sub_18F33A234();
          OUTLINED_FUNCTION_35_18(v66);
        }

        else
        {
          OUTLINED_FUNCTION_5_3();
        }
      }

      else
      {
        sub_18F331264(v64, v3);
        v123 = type metadata accessor for IntentPerson(0);
        OUTLINED_FUNCTION_54_0(v3);
        if (v115)
        {
          sub_18F0FA038(v3, &qword_1EACD0318, &qword_18F5583A0);
          OUTLINED_FUNCTION_20_29();
        }

        else
        {
          v0[3] = v123;
          v149 = sub_18F10F9E4(&unk_1EACCE838);
          v150 = OUTLINED_FUNCTION_71_8(v149);
          sub_18F33A5A8(v3, v150, type metadata accessor for IntentPerson);
        }
      }

      v143 = &unk_1EACD6900;
      v144 = &unk_18F558408;
      goto LABEL_150;
    case 4uLL:
      OUTLINED_FUNCTION_70_7();
      OUTLINED_FUNCTION_49_11();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v41 = OUTLINED_FUNCTION_17_37();
      if (v41)
      {
      }

      OUTLINED_FUNCTION_48_14();
      v42 = OUTLINED_FUNCTION_85_6();
      if (v41)
      {
        sub_18F0FECD4(v42, &v159);
        if (OUTLINED_FUNCTION_19_35())
        {
          OUTLINED_FUNCTION_18_36();
          MEMORY[0x1EEE9AC00](v43);
          OUTLINED_FUNCTION_3_55();
          OUTLINED_FUNCTION_11_37();
          sub_18F3EAE60();
          OUTLINED_FUNCTION_34_22();

          v0[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6948, &qword_18F558440);
          v44 = sub_18F33A2E8();
          OUTLINED_FUNCTION_35_18(v44);
        }

        else
        {
          OUTLINED_FUNCTION_5_3();
        }
      }

      else
      {
        sub_18F32DF64(v42, v4);
        v114 = type metadata accessor for IntentNote(0);
        OUTLINED_FUNCTION_54_0(v4);
        if (v115)
        {
          sub_18F0FA038(v4, &qword_1EACD6888, &qword_18F5583A8);
          OUTLINED_FUNCTION_20_29();
        }

        else
        {
          v0[3] = v114;
          v145 = sub_18F10F9E4(&qword_1EACD3E50);
          v146 = OUTLINED_FUNCTION_71_8(v145);
          sub_18F33A5A8(v4, v146, type metadata accessor for IntentNote);
        }
      }

      v143 = &unk_1EACD6940;
      v144 = &unk_18F558438;
      goto LABEL_150;
    case 5uLL:
      OUTLINED_FUNCTION_70_7();
      OUTLINED_FUNCTION_49_11();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v76 = OUTLINED_FUNCTION_17_37();
      if (v76)
      {
      }

      OUTLINED_FUNCTION_48_14();
      v166 = sub_18F32DF58;
      v167 = 0;
      if (v76)
      {
        OUTLINED_FUNCTION_84_3();
        if (OUTLINED_FUNCTION_19_35())
        {
          OUTLINED_FUNCTION_18_36();
          MEMORY[0x1EEE9AC00](v77);
          OUTLINED_FUNCTION_3_55();
          v78 = OUTLINED_FUNCTION_11_37();
          sub_18F3EAE34(v78, v79, v80);
          OUTLINED_FUNCTION_34_22();

          v0[3] = OUTLINED_FUNCTION_82_0();
          v81 = OUTLINED_FUNCTION_39_20(&unk_1EACD6938);
          OUTLINED_FUNCTION_35_18(v81);
          goto LABEL_146;
        }
      }

      else
      {
        v129 = OUTLINED_FUNCTION_66_9();
        sub_18F32DF58(v129, v130);
        if (*(&v159 + 1))
        {
          v0[3] = &type metadata for IntentNotification;
          v131 = sub_18F1A00B0();
          OUTLINED_FUNCTION_77_7(v131);
          goto LABEL_146;
        }
      }

      OUTLINED_FUNCTION_5_3();
LABEL_146:
      v143 = &unk_1EACD6928;
      v144 = &unk_18F558428;
      goto LABEL_150;
    case 6uLL:
      OUTLINED_FUNCTION_70_7();
      OUTLINED_FUNCTION_49_11();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v88 = OUTLINED_FUNCTION_17_37();
      if (v88)
      {
      }

      OUTLINED_FUNCTION_48_14();
      v166 = sub_18F32DEC0;
      v167 = 0;
      if (v88)
      {
        OUTLINED_FUNCTION_84_3();
        if (OUTLINED_FUNCTION_19_35())
        {
          OUTLINED_FUNCTION_18_36();
          MEMORY[0x1EEE9AC00](v89);
          OUTLINED_FUNCTION_3_55();
          v90 = OUTLINED_FUNCTION_11_37();
          sub_18F3EA5BC(v90, v91, v92);
          OUTLINED_FUNCTION_34_22();

          v0[3] = OUTLINED_FUNCTION_82_0();
          v93 = OUTLINED_FUNCTION_39_20(&unk_1EACD68C0);
          OUTLINED_FUNCTION_35_18(v93);
          goto LABEL_149;
        }
      }

      else
      {
        v135 = OUTLINED_FUNCTION_66_9();
        sub_18F32DEC0(v135, v136);
        v137 = *(&v159 + 1);
        if (*(&v159 + 1))
        {
          v0[3] = &type metadata for IntentTimer;
          v0[4] = sub_18F1E2DFC();
          v138 = swift_allocObject();
          *v0 = v138;
          v139 = v162;
          *(v138 + 16) = v159;
          *(v138 + 24) = v137;
          v140 = v161;
          *(v138 + 32) = v160;
          *(v138 + 48) = v140;
          *(v138 + 64) = v139;
          goto LABEL_149;
        }

        sub_18F33A06C(v159, 0);
      }

      OUTLINED_FUNCTION_5_3();
LABEL_149:
      v143 = &unk_1EACD68B0;
      v144 = &unk_18F5583D8;
      goto LABEL_150;
    case 7uLL:
      OUTLINED_FUNCTION_70_7();
      sub_18F0FECD4(&v159, &v164);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v67 = OUTLINED_FUNCTION_47_16();
      v69 = OUTLINED_FUNCTION_51_9(v67, v68);
      if (v69)
      {
      }

      LOBYTE(v164) = v69;
      sub_18F118710(&v159, v165);
      v166 = sub_18F32DF40;
      v167 = 0;
      if (v69)
      {
        sub_18F0FECD4(v165, &v159);
        if (OUTLINED_FUNCTION_51_9(&v163, &v159))
        {
          OUTLINED_FUNCTION_18_36();
          MEMORY[0x1EEE9AC00](v70);
          OUTLINED_FUNCTION_3_55();
          OUTLINED_FUNCTION_11_37();
          sub_18F3EA948();
          OUTLINED_FUNCTION_34_22();

          v0[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD68F0, &qword_18F558400);
          v71 = sub_18F33A180();
          OUTLINED_FUNCTION_35_18(v71);
        }

        else
        {
          OUTLINED_FUNCTION_5_3();
        }
      }

      else
      {
        sub_18F32DF40(v165, v2);
        v124 = type metadata accessor for IntentReminderTask(0);
        OUTLINED_FUNCTION_54_0(v2);
        if (v115)
        {
          sub_18F0FA038(v2, &qword_1EACD6880, &qword_18F558398);
          OUTLINED_FUNCTION_20_29();
        }

        else
        {
          v0[3] = v124;
          v151 = sub_18F10F9E4(&qword_1EACD31D8);
          v152 = OUTLINED_FUNCTION_71_8(v151);
          sub_18F33A5A8(v2, v152, type metadata accessor for IntentReminderTask);
        }
      }

      v143 = &unk_1EACD68E8;
      v144 = &unk_18F5583F8;
      goto LABEL_150;
    case 8uLL:
      OUTLINED_FUNCTION_70_7();
      sub_18F0FECD4(&v159, &v164);
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v99 = OUTLINED_FUNCTION_47_16();
      v101 = OUTLINED_FUNCTION_62_9(v99, v100);
      if (v101)
      {
      }

      LOBYTE(v164) = v101;
      sub_18F118710(&v159, v165);
      v166 = sub_18F32DF28;
      v167 = 0;
      if (v101)
      {
        sub_18F0FECD4(v165, &v159);
        if (OUTLINED_FUNCTION_62_9(&v163, &v159))
        {
          OUTLINED_FUNCTION_18_36();
          MEMORY[0x1EEE9AC00](v102);
          OUTLINED_FUNCTION_3_55();
          OUTLINED_FUNCTION_11_37();
          sub_18F3EA768();
          OUTLINED_FUNCTION_34_22();

          v0[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD68D8, &qword_18F5583F0);
          v103 = sub_18F33A0CC();
          OUTLINED_FUNCTION_35_18(v103);
        }

        else
        {
          OUTLINED_FUNCTION_5_3();
        }
      }

      else
      {
        sub_18F32DF28(v165, v1);
        type metadata accessor for IntentReminderTaskList(0);
        v142 = OUTLINED_FUNCTION_34_22();
        OUTLINED_FUNCTION_23_26(v142);
        if (v115)
        {
          sub_18F0FA038(v1, &qword_1EACD6878, &qword_18F558390);
          OUTLINED_FUNCTION_20_29();
        }

        else
        {
          v0[3] = v98;
          v157 = sub_18F10F9E4(&qword_1EACD68D0);
          v158 = OUTLINED_FUNCTION_71_8(v157);
          sub_18F33A5A8(v1, v158, type metadata accessor for IntentReminderTaskList);
        }
      }

      v143 = &unk_1EACD68C8;
      v144 = &unk_18F5583E8;
      goto LABEL_150;
    case 9uLL:
      OUTLINED_FUNCTION_70_7();
      OUTLINED_FUNCTION_49_11();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v51 = OUTLINED_FUNCTION_17_37();
      if (v51)
      {
      }

      OUTLINED_FUNCTION_48_14();
      v52 = OUTLINED_FUNCTION_85_6();
      if (v51)
      {
        sub_18F0FECD4(v52, &v159);
        if (OUTLINED_FUNCTION_19_35())
        {
          OUTLINED_FUNCTION_18_36();
          MEMORY[0x1EEE9AC00](v53);
          OUTLINED_FUNCTION_3_55();
          OUTLINED_FUNCTION_11_37();
          sub_18F3EB3B4();
          OUTLINED_FUNCTION_34_22();

          v0[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6998, &qword_18F558470);
          v54 = sub_18F33A4F4();
          OUTLINED_FUNCTION_35_18(v54);
        }

        else
        {
          OUTLINED_FUNCTION_5_3();
        }
      }

      else
      {
        sub_18F32DFF8(v52, v20);
        v119 = type metadata accessor for IntentMediaItem(0);
        OUTLINED_FUNCTION_54_0(v20);
        if (v115)
        {
          sub_18F0FA038(v20, &qword_1EACD6898, &qword_18F5583B8);
          OUTLINED_FUNCTION_20_29();
        }

        else
        {
          v0[3] = v119;
          v147 = sub_18F10F9E4(&qword_1EACD1FC0);
          v148 = OUTLINED_FUNCTION_71_8(v147);
          sub_18F33A5A8(v20, v148, type metadata accessor for IntentMediaItem);
        }
      }

      v143 = &unk_1EACD6990;
      v144 = &unk_18F558468;
      goto LABEL_150;
    case 0xAuLL:
      OUTLINED_FUNCTION_70_7();
      OUTLINED_FUNCTION_49_11();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v94 = OUTLINED_FUNCTION_17_37();
      if (v94)
      {
      }

      OUTLINED_FUNCTION_48_14();
      v95 = OUTLINED_FUNCTION_85_6();
      if (v94)
      {
        sub_18F0FECD4(v95, &v159);
        if (OUTLINED_FUNCTION_19_35())
        {
          OUTLINED_FUNCTION_18_36();
          MEMORY[0x1EEE9AC00](v96);
          OUTLINED_FUNCTION_3_55();
          OUTLINED_FUNCTION_11_37();
          sub_18F3EB1D4();
          OUTLINED_FUNCTION_34_22();

          v0[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6980, &qword_18F558460);
          v97 = sub_18F33A440();
          OUTLINED_FUNCTION_35_18(v97);
        }

        else
        {
          OUTLINED_FUNCTION_5_3();
        }
      }

      else
      {
        sub_18F32DFE0(v95, v16);
        v141 = type metadata accessor for IntentMediaSearch(0);
        OUTLINED_FUNCTION_54_0(v16);
        if (v115)
        {
          sub_18F0FA038(v16, &qword_1EACD6890, &qword_18F5583B0);
          OUTLINED_FUNCTION_20_29();
        }

        else
        {
          v0[3] = v141;
          v155 = sub_18F10F9E4(&qword_1EACD5F20);
          v156 = OUTLINED_FUNCTION_71_8(v155);
          sub_18F33A5A8(v16, v156, type metadata accessor for IntentMediaSearch);
        }
      }

      v143 = &unk_1EACD6978;
      v144 = &unk_18F558458;
      goto LABEL_150;
    case 0xBuLL:
      OUTLINED_FUNCTION_70_7();
      OUTLINED_FUNCTION_49_11();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v35 = OUTLINED_FUNCTION_17_37();
      if (v35)
      {
      }

      OUTLINED_FUNCTION_48_14();
      v166 = sub_18F32DF7C;
      v167 = 0;
      if (v35)
      {
        OUTLINED_FUNCTION_84_3();
        if (OUTLINED_FUNCTION_19_35())
        {
          OUTLINED_FUNCTION_18_36();
          MEMORY[0x1EEE9AC00](v36);
          OUTLINED_FUNCTION_3_55();
          v37 = OUTLINED_FUNCTION_11_37();
          sub_18F3EB040(v37, v38, v39);
          OUTLINED_FUNCTION_34_22();

          v0[3] = OUTLINED_FUNCTION_82_0();
          v40 = OUTLINED_FUNCTION_39_20(&unk_1EACD6970);
          OUTLINED_FUNCTION_35_18(v40);
          goto LABEL_137;
        }
      }

      else
      {
        v109 = OUTLINED_FUNCTION_66_9();
        sub_18F32DF7C(v109, v110);
        v111 = *(&v159 + 1);
        if (*(&v159 + 1))
        {
          v0[3] = &type metadata for IntentMessageConversation;
          v0[4] = sub_18F33A3EC();
          OUTLINED_FUNCTION_75_6();
          v112 = swift_allocObject();
          *v0 = v112;
          v113 = v161;
          *(v112 + 16) = v159;
          *(v112 + 24) = v111;
          *(v112 + 32) = v160;
          *(v112 + 48) = v113;
          goto LABEL_137;
        }

        sub_18F33A39C(v159, 0);
      }

      OUTLINED_FUNCTION_5_3();
LABEL_137:
      v143 = &unk_1EACD6958;
      v144 = &unk_18F558448;
      goto LABEL_150;
    case 0xCuLL:
      OUTLINED_FUNCTION_70_7();
      OUTLINED_FUNCTION_49_11();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v45 = OUTLINED_FUNCTION_17_37();
      if (v45)
      {
      }

      OUTLINED_FUNCTION_48_14();
      v166 = sub_18F3312FC;
      v167 = 0;
      if (v45)
      {
        OUTLINED_FUNCTION_84_3();
        if (OUTLINED_FUNCTION_19_35())
        {
          OUTLINED_FUNCTION_18_36();
          MEMORY[0x1EEE9AC00](v46);
          OUTLINED_FUNCTION_3_55();
          v47 = OUTLINED_FUNCTION_11_37();
          sub_18F3EA590(v47, v48, v49);
          OUTLINED_FUNCTION_34_22();

          v0[3] = OUTLINED_FUNCTION_82_0();
          v50 = OUTLINED_FUNCTION_39_20(&qword_1EACCDD88);
          OUTLINED_FUNCTION_35_18(v50);
          goto LABEL_115;
        }
      }

      else
      {
        v116 = OUTLINED_FUNCTION_66_9();
        sub_18F3312FC(v116, v117);
        if (v159)
        {
          v0[3] = &type metadata for IntentFile;
          v118 = sub_18F178220();
          OUTLINED_FUNCTION_36_23(v118);
          goto LABEL_115;
        }
      }

      OUTLINED_FUNCTION_5_3();
LABEL_115:
      v143 = &unk_1EACD68A8;
      v144 = &unk_18F5583C8;
      goto LABEL_150;
    case 0xDuLL:
      OUTLINED_FUNCTION_70_7();
      OUTLINED_FUNCTION_49_11();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v82 = OUTLINED_FUNCTION_17_37();
      if (v82)
      {
      }

      OUTLINED_FUNCTION_48_14();
      v166 = sub_18F331250;
      v167 = 0;
      if (v82)
      {
        OUTLINED_FUNCTION_84_3();
        if (OUTLINED_FUNCTION_19_35())
        {
          OUTLINED_FUNCTION_18_36();
          MEMORY[0x1EEE9AC00](v83);
          OUTLINED_FUNCTION_3_55();
          v84 = OUTLINED_FUNCTION_11_37();
          sub_18F3EAD08(v84, v85, v86);
          OUTLINED_FUNCTION_34_22();

          v0[3] = OUTLINED_FUNCTION_82_0();
          v87 = OUTLINED_FUNCTION_39_20(&unk_1EACD6920);
          OUTLINED_FUNCTION_35_18(v87);
          goto LABEL_117;
        }
      }

      else
      {
        v132 = OUTLINED_FUNCTION_66_9();
        sub_18F331250(v132, v133);
        if (v159)
        {
          v0[3] = &type metadata for IntentPaymentMethod;
          v134 = sub_18F324EFC();
          OUTLINED_FUNCTION_36_23(v134);
          goto LABEL_117;
        }
      }

      OUTLINED_FUNCTION_5_3();
LABEL_117:
      v143 = &unk_1EACD6910;
      v144 = &unk_18F558418;
      goto LABEL_150;
    case 0xEuLL:
      OUTLINED_FUNCTION_70_7();
      OUTLINED_FUNCTION_49_11();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v32 = OUTLINED_FUNCTION_17_37();
      if (v32)
      {
      }

      OUTLINED_FUNCTION_48_14();
      v166 = sub_18F3311C8;
      v167 = 0;
      if (v32)
      {
        OUTLINED_FUNCTION_84_3();
        if (OUTLINED_FUNCTION_19_35())
        {
          OUTLINED_FUNCTION_18_36();
          MEMORY[0x1EEE9AC00](v33);
          OUTLINED_FUNCTION_3_55();
          OUTLINED_FUNCTION_11_37();
          sub_18F3EB5C0();
          OUTLINED_FUNCTION_34_22();

          v0[3] = OUTLINED_FUNCTION_82_0();
          v34 = OUTLINED_FUNCTION_39_20(&unk_1EACD69D0);
          OUTLINED_FUNCTION_35_18(v34);
          goto LABEL_134;
        }
      }

      else
      {
        v104 = OUTLINED_FUNCTION_66_9();
        sub_18F3311C8(v104, v105);
        v106 = v161;
        if (v161)
        {
          v0[3] = &type metadata for IntentCurrencyAmount;
          v0[4] = sub_18F1DFD9C();
          OUTLINED_FUNCTION_75_6();
          v107 = swift_allocObject();
          *v0 = v107;
          v108 = v160;
          *(v107 + 16) = v159;
          *(v107 + 32) = v108;
          *(v107 + 48) = v106;
          goto LABEL_134;
        }
      }

      OUTLINED_FUNCTION_5_3();
LABEL_134:
      v143 = &unk_1EACD69C0;
      v144 = &unk_18F558488;
LABEL_150:
      sub_18F0FA038(&v164, v143, v144);
      OUTLINED_FUNCTION_16();
      return;
    default:
      type metadata accessor for LNIntentsValueTypeIdentifier(0);
      v164 = v25;
      sub_18F522DFC();
      __break(1u);
      return;
  }
}

uint64_t sub_18F33115C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_18F0FECD4(a1, v8);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v6;
    v5 = v7;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

double sub_18F3311C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18F0FECD4(a1, v5);
  sub_18F0F21A8(0, &qword_1EACD1840, 0x1E696E7E8);
  if (swift_dynamicCast())
  {
    sub_18F1DEC00(v4, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_18F331264(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18F0FECD4(a1, v4);
  sub_18F0F21A8(0, &qword_1EACD30B8, 0x1E696E940);
  if (swift_dynamicCast())
  {
    sub_18F3FB17C();
  }

  else
  {
    v3 = type metadata accessor for IntentPerson(0);
    __swift_storeEnumTagSinglePayload(a2, 1, 1, v3);
  }
}

uint64_t sub_18F331310@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  sub_18F0FECD4(a1, v11);
  v7 = sub_18F0F21A8(0, a2, a3);
  result = OUTLINED_FUNCTION_8_4(v7);
  if (result)
  {
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  return result;
}

unint64_t sub_18F3313A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_18F0FECD4(a1, v8);
  v3 = sub_18F0F21A8(0, qword_1EACD3700, 0x1E69AC968);
  if (OUTLINED_FUNCTION_8_4(v3))
  {
    v4 = v7;
    result = sub_18F2652AC();
    v6 = &type metadata for EntityPropertyQuerySource;
  }

  else
  {
    v6 = 0;
    result = 0;
    v4 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = v6;
  a2[4] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_18F331980(uint64_t a1, uint64_t a2)
{
  result = sub_18F1EA970(a1, a2);
  if (result)
  {
    result = dynamic_cast_existential_1_conditional(result, result, &protocol descriptor for SystemIntentValueConvertibleEntity);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18F3319C0(uint64_t a1, char a2)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 bundleIdentifier];
    v4 = sub_18F5218DC();
    v6 = v5;
  }

  else
  {
    v7 = sub_18F331B24();
    v4 = v7;
    v6 = v8;
  }

  MEMORY[0x1EEE9AC00](v7);
  v9 = qword_1ED6FE2B0;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  if (v9 != -1)
  {
    OUTLINED_FUNCTION_53_10();
    swift_once();
  }

  sub_18F338AE4(v4, v6, sub_18F339FB0);
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_18F331B24()
{
  if (qword_1ED6FE2B0 != -1)
  {
    OUTLINED_FUNCTION_53_10();
    swift_once();
  }

  sub_18F52305C();
  if (v2 != 1)
  {
    return v1;
  }

  sub_18F339F5C();
  swift_allocError();
  return swift_willThrow();
}

void sub_18F331BC0(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  sub_18F0FECD4(a1, &v76);
  sub_18F0F21A8(0, &qword_1ED6FE640, 0x1E69AC7C8);
  v11 = &unk_1E72B7000;
  if (swift_dynamicCast())
  {
    v12 = v73[0];
    if ([v73[0] isTransient])
    {
      sub_18F1EA280(&v76, a2, a3);
      sub_18F0F9FD4(&v76, v67, &qword_1EACCFCF8, &unk_18F548C10);
      if (v68)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4540, &qword_18F547E80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6868, &unk_18F558370);
        if (swift_dynamicCast())
        {
          if (*(&v71 + 1))
          {
            sub_18F0FD0B4(&v70, v73);
            v13 = v74;
            v14 = v75;
            __swift_project_boxed_opaque_existential_1Tm(v73, v74);
            v15 = *(v14 + 40);
            *(&v71 + 1) = swift_getAssociatedTypeWitness();
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            __swift_allocate_boxed_opaque_existential_1(&v70);
            v15(v13, v14);
            if (v5)
            {

              __swift_deallocate_boxed_opaque_existential_1(&v70);
              AssociatedConformanceWitness = 0;
              v70 = 0u;
              v71 = 0u;
            }

            if (a4)
            {
              sub_18F0F9FD4(&v70, v67, &qword_1EACD1DA8, &qword_18F546C90);
              v52 = v68;
              if (v68)
              {
                v53 = v69;
                __swift_project_boxed_opaque_existential_1Tm(v67, v68);
                *(a5 + 24) = &type metadata for BoxedSystemIntentValue;
                *(a5 + 32) = sub_18F1E9B68();
                v54 = swift_allocObject();
                *a5 = v54;
                sub_18F1E7AE0(v52, v53, (v54 + 16));
LABEL_55:

                sub_18F0FA038(&v76, &qword_1EACCFCF8, &unk_18F548C10);
                __swift_destroy_boxed_opaque_existential_1Tm(v67);
LABEL_59:
                sub_18F0FA038(&v70, &qword_1EACD1DA8, &qword_18F546C90);
                __swift_destroy_boxed_opaque_existential_1Tm(v73);
                return;
              }
            }

            else
            {
              sub_18F0F9FD4(&v70, v67, &qword_1EACD1DA8, &qword_18F546C90);
              v55 = v68;
              if (v68)
              {
                v56 = v69;
                v57 = __swift_project_boxed_opaque_existential_1Tm(v67, v68);
                *(a5 + 24) = v55;
                *(a5 + 32) = *(*(v56 + 8) + 24);
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
                (*(*(v55 - 8) + 16))(boxed_opaque_existential_1, v57, v55);
                goto LABEL_55;
              }
            }

            sub_18F0FA038(&v76, &qword_1EACCFCF8, &unk_18F548C10);

            sub_18F0FA038(v67, &qword_1EACD1DA8, &qword_18F546C90);
            *(a5 + 32) = 0;
            *a5 = 0u;
            *(a5 + 16) = 0u;
            goto LABEL_59;
          }
        }

        else
        {
          AssociatedConformanceWitness = 0;
          v70 = 0u;
          v71 = 0u;
        }
      }

      else
      {
        sub_18F0FA038(v67, &qword_1EACCFCF8, &unk_18F548C10);
        v70 = 0u;
        v71 = 0u;
        AssociatedConformanceWitness = 0;
      }

      sub_18F0FA038(&v70, &qword_1EACD6860, &unk_18F558360);
      sub_18F0F9FD4(&v76, v73, &qword_1EACCFCF8, &unk_18F548C10);
      v28 = v74;
      if (v74)
      {
        v29 = v75;
        v30 = __swift_project_boxed_opaque_existential_1Tm(v73, v74);
        *(a5 + 24) = v28;
        *(a5 + 32) = *(*(v29 + 8) + 24);
        v31 = __swift_allocate_boxed_opaque_existential_1(a5);
        (*(*(v28 - 8) + 16))(v31, v30, v28);

        sub_18F0FA038(&v76, &qword_1EACCFCF8, &unk_18F548C10);
        __swift_destroy_boxed_opaque_existential_1Tm(v73);
        return;
      }

      sub_18F0FA038(&v76, &qword_1EACCFCF8, &unk_18F548C10);

      sub_18F0FA038(v73, &qword_1EACCFCF8, &unk_18F548C10);
    }

    else
    {
      v19 = [v73[0] identifier];
      v20 = [v19 typeIdentifier];
      sub_18F5218DC();

      v21 = [v19 instanceIdentifier];
      v22 = sub_18F5218DC();
      v24 = v23;

      sub_18F1AF5AC(v22, v24, &v76);
      v25 = v76;
      if (v76)
      {
        v26 = v78;
        v65 = v77;
        *(a5 + 24) = &type metadata for EntityIdentifier;
        *(a5 + 32) = sub_18F1AFFA8();
        v27 = swift_allocObject();
        *a5 = v27;

        *(v27 + 16) = v25;
        *(v27 + 24) = v65;
        *(v27 + 40) = v26;
        return;
      }
    }

    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return;
  }

  sub_18F0FECD4(a1, &v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0628, &unk_18F541860);
  if (swift_dynamicCast())
  {
    v16 = v73[0];
    v64 = v73[0] & 0xC000000000000001;
    v79 = sub_18F111F70(v73[0]);
    if (!v79)
    {
      goto LABEL_25;
    }

    sub_18F1C3ED4();
    if (v64)
    {
      goto LABEL_62;
    }

    for (i = *(v73[0] + 4); ; i = MEMORY[0x193ADBE10](0, v16))
    {
      v18 = i;
      if ([i v11[352]])
      {
        break;
      }

LABEL_25:
      v32 = 0;
      v63 = v16 & 0xFFFFFFFFFFFFFF8;
      v59 = MEMORY[0x1E69E7CC0];
      v62 = v16;
      while (1)
      {
        if (v79 == v32)
        {

          *(a5 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD1E80, &unk_18F547080);
          *(a5 + 32) = sub_18F33A964(&qword_1EACD1E78);
          *a5 = v59;
          return;
        }

        if (v64)
        {
          v33 = MEMORY[0x193ADBE10](v32, v16);
        }

        else
        {
          if (v32 >= *(v63 + 16))
          {
            goto LABEL_61;
          }

          v33 = *(v16 + 8 * v32 + 32);
        }

        v34 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        v66 = v33;
        v35 = [v33 identifier];
        v36 = [v35 typeIdentifier];
        a2 = sub_18F5218DC();
        a3 = v37;

        v38 = [v35 instanceIdentifier];
        v61 = sub_18F5218DC();
        v11 = v39;

        if (qword_1ED6FF6D8 != -1)
        {
          swift_once();
        }

        v40 = sub_18F2794A0(a2, a3, 0, 0);
        if (v6)
        {

          if (qword_1ED6FE088 != -1)
          {
            swift_once();
          }

          v42 = sub_18F52165C();
          __swift_project_value_buffer(v42, qword_1ED707760);
          _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
          v43 = sub_18F52163C();
          v44 = sub_18F52221C();

          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v11 = swift_slowAlloc();
            v76 = v11;
            *v45 = 136315138;
            a2 = sub_18F11897C(a2, a3, &v76);

            *(v45 + 4) = a2;
            _os_log_impl(&dword_18F0E9000, v43, v44, "Failed to build EntityIdentifier. %s is not a registered AppEntity identifier", v45, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v11);
            MEMORY[0x193ADD350](v11, -1, -1);
            MEMORY[0x193ADD350](v45, -1, -1);
          }

          else
          {
          }

          v6 = 0;
          ++v32;
          v16 = v62;
        }

        else
        {
          v46 = v40;
          v47 = v41;
          a2 = 0;

          v48 = v59;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_18F168A98();
            v48 = v50;
          }

          v16 = v62;
          a3 = *(v48 + 16);
          if (a3 >= *(v48 + 24) >> 1)
          {
            sub_18F168A98();
            v48 = v51;
          }

          *(v48 + 16) = a3 + 1;
          v59 = v48;
          v49 = (v48 + 32 * a3);
          v49[4] = v46;
          v49[5] = v47;
          v49[6] = v61;
          v49[7] = v11;
          v32 = v34;
          v6 = 0;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      ;
    }

    if (sub_18F1EA970(a2, a3))
    {
      if (sub_18F331980(a2, a3))
      {
        sub_18F332674();
      }

      else
      {
        sub_18F33297C(a5);
      }
    }

    else
    {
      *(a5 + 32) = 0;
      *a5 = 0u;
      *(a5 + 16) = 0u;
    }
  }

  else
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }
}

void sub_18F332674()
{
  OUTLINED_FUNCTION_18();
  v7 = v6;
  v8 = v3;
  v9 = v5;
  if (v10)
  {
    v26 = v1;
    v27 = v4;
    v11 = v2;
    v24 = v5;
    v12 = sub_18F111F70(v3);
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v25 = v7;
    while (1)
    {
      if (v12 == v13)
      {
        v9 = v24;
        v24[3] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD1AF8, &unk_18F561AD0);
        WitnessTable = sub_18F33A964(&qword_1EACD1AF0);
        goto LABEL_19;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x193ADBE10](v13, v8);
      }

      else
      {
        if (v13 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v15 = *(v8 + 8 * v13 + 32);
      }

      v16 = v15;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v34 = v15;
      sub_18F332AB4(v7, v27, &v31, v26, v11);

      if (*(&v32 + 1))
      {
        v28 = v31;
        v29 = v32;
        v30 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_18F1695F8(0, *(v14 + 16) + 1, 1, v14);
          v14 = v20;
        }

        v18 = *(v14 + 16);
        v17 = *(v14 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_18F1695F8(v17 > 1, v18 + 1, 1, v14);
          v14 = v21;
        }

        *(v14 + 16) = v18 + 1;
        v19 = v14 + 40 * v18;
        *(v19 + 64) = v30;
        *(v19 + 32) = v28;
        *(v19 + 48) = v29;
        v7 = v25;
      }

      else
      {
        sub_18F0FA038(&v31, &qword_1EACD6870, &unk_18F558380);
      }

      ++v13;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    *&v31 = v3;
    MEMORY[0x1EEE9AC00](v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0628, &unk_18F541860);
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_23_29();
    sub_18F33A008(v22);
    v14 = sub_18F521B3C();
    v9[3] = sub_18F521DBC();
    v35 = *(*(swift_getAssociatedConformanceWitness() + 8) + 24);
    OUTLINED_FUNCTION_10_3();
    WitnessTable = swift_getWitnessTable();
LABEL_19:
    v9[4] = WitnessTable;
    *v9 = v14;
    OUTLINED_FUNCTION_16();
  }
}

uint64_t sub_18F33297C@<X0>(uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0628, &unk_18F541860);
  OUTLINED_FUNCTION_23_29();
  sub_18F33A008(v7);
  sub_18F521B3C();
  *(a6 + 24) = sub_18F521DBC();
  OUTLINED_FUNCTION_10_3();
  WitnessTable = swift_getWitnessTable();
  return OUTLINED_FUNCTION_36_23(WitnessTable);
}

uint64_t sub_18F332AB4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>, uint64_t a4@<X1>, uint64_t a5@<X2>)
{
  v23 = sub_18F52254C();
  v10 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v12 = &v20 - v11;
  v24 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v20 - v14;
  sub_18F1EA280(v25, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCF8, &unk_18F548C10);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, a1);
    v16 = v25[6];
    (*(v24 + 40))(a1, v24);
    if (v16)
    {

      result = (*(*(a1 - 8) + 8))(v12, a1);
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    else
    {
      (*(*(a1 - 8) + 8))(v12, a1);
      v18 = v22;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      sub_18F1E7AE0(v18, AssociatedConformanceWitness, a3);
      return (*(v21 + 8))(v15, v18);
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, a1);
    result = (*(v10 + 8))(v12, v23);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_18F332DB8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>, uint64_t a4@<X1>, uint64_t a5@<X2>)
{
  v19 = a2;
  v17 = a3;
  v9 = sub_18F52254C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18[-1] - v11;
  sub_18F1EA280(v18, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCF8, &unk_18F548C10);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, a1);
    v13 = v17;
    (*(v19 + 40))(a1, v19);
    if (v5)
    {

      (*(*(a1 - 8) + 8))(v12, a1);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v15 = 1;
    }

    else
    {
      (*(*(a1 - 8) + 8))(v12, a1);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v15 = 0;
    }
  }

  else
  {
    v15 = 1;
    __swift_storeEnumTagSinglePayload(v12, 1, 1, a1);
    (*(v10 + 8))(v12, v9);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v13 = v17;
  }

  return __swift_storeEnumTagSinglePayload(v13, v15, 1, AssociatedTypeWitness);
}

uint64_t sub_18F333050@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_18F1EA280(v8, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCF8, &unk_18F548C10);
  v6 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a2, v6 ^ 1u, 1, a1);
}

uint64_t sub_18F333604@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_12_5();
    swift_once();
  }

  v5 = [v2 enumerationIdentifier];
  v6 = sub_18F5218DC();
  v8 = v7;

  v9 = sub_18F331B24();
  v11 = sub_18F2796A4(v6, v8, v9, v10);
  v13 = v12;

  sub_18F3338E8(a1, v11, v13);
  if (v34)
  {
    return sub_18F0FD0B4(&v33, a2);
  }

  sub_18F0FA038(&v33, &qword_1EACD0620, &unk_18F541850);
  sub_18F0FECD4(a1, v32);
  sub_18F0FECD4(v32, &v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
  v15 = OUTLINED_FUNCTION_51_9(&v31, &v33);
  if (v15)
  {
  }

  LOBYTE(v33) = v15;
  sub_18F118710(v32, (&v33 + 8));
  v35 = sub_18F339EF0;
  v36 = 0;
  if (!v15)
  {
    v26 = sub_18F32E268(&v33 + 8);
    if (v27)
    {
      v28 = v26;
      v29 = v27;
      a2[3] = MEMORY[0x1E69E6158];
      a2[4] = sub_18F10F340();
      *a2 = v28;
      a2[1] = v29;
      return sub_18F0FA038(&v33, &qword_1EACD6838, &unk_18F558330);
    }

LABEL_12:
    OUTLINED_FUNCTION_5_3();
    return sub_18F0FA038(&v33, &qword_1EACD6838, &unk_18F558330);
  }

  sub_18F0FECD4(&v33 + 8, v32);
  v16 = OUTLINED_FUNCTION_51_9(&v31, v32);
  if ((v16 & 1) == 0)
  {
    goto LABEL_12;
  }

  v17 = v31;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17_1();
  *(v18 - 16) = &v33;
  sub_18F3EC0C4(sub_18F339F18, v19, v17, v20, v21, v22, v23, v24, v30, v31, v32[0], v32[1]);
  OUTLINED_FUNCTION_34_22();

  a2[3] = OUTLINED_FUNCTION_82_0();
  v25 = OUTLINED_FUNCTION_39_20(&qword_1EACD1E70);
  OUTLINED_FUNCTION_35_18(v25);
  return sub_18F0FA038(&v33, &qword_1EACD6838, &unk_18F558330);
}

uint64_t sub_18F3338E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18F0FECD4(a1, v11);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v6 = *(*(a3 + 8) + 24);
  sub_18F32E50C(v11, sub_18F339F34, v5, v12);
  v8 = type metadata accessor for ValueConverter(0, a2, v6, v7);
  sub_18F32E5A0();
  OUTLINED_FUNCTION_12_9();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_18F3339D8()
{
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_12_5();
    swift_once();
  }

  v1 = [v0 enumerationIdentifier];
  v2 = sub_18F5218DC();
  v4 = v3;

  v5 = sub_18F331B24();
  sub_18F2796A4(v2, v4, v5, v6);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v11);
  sub_18F5227CC();
  v7 = __swift_project_boxed_opaque_existential_1Tm(v11, AssociatedTypeWitness);
  v8 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6AB8, &qword_18F558538);
  sub_18F521BCC();
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v10;
}

uint64_t sub_18F333C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_18F0FECD4(a2, &v25);
  v6 = sub_18F52194C();
  v8 = v7;
  v9 = MEMORY[0x1E69E6158];
  v27 = MEMORY[0x1E69E6158];
  v25 = v6;
  *&v26 = v7;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F3338E8(&v25, a3, a4);
  __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  if (v32)
  {
    sub_18F0FD0B4(&v31, &v33);
  }

  else
  {
    v30[3] = v9;
    v30[0] = v6;
    v30[1] = v8;
    sub_18F0FECD4(v30, &v33);
    sub_18F0FECD4(&v33, &v25);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
    v10 = swift_dynamicCast();
    if (v10)
    {
    }

    LOBYTE(v25) = v10;
    sub_18F118710(&v33, &v26);
    v28 = sub_18F339EF0;
    v29 = 0;
    if (v10)
    {
      sub_18F0FECD4(&v26, &v33);
      v11 = swift_dynamicCast();
      if (v11)
      {
        MEMORY[0x1EEE9AC00](v11);
        sub_18F3EC0C4(sub_18F33ACA4, v24, v24[5], v12, v13, v14, v15, v16, v24[0], v24[1], &v25, v24[3]);
        v18 = v17;

        *(&v34 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400, &qword_18F545B30);
        v35 = sub_18F33A964(&qword_1EACD1E70);
        *&v33 = v18;
      }

      else
      {
        v33 = 0u;
        v34 = 0u;
        v35 = 0;
      }
    }

    else
    {
      v19 = sub_18F32E268(&v26);
      if (v20)
      {
        v21 = v19;
        v22 = v20;
        *(&v34 + 1) = v9;
        v35 = sub_18F10F340();
        *&v33 = v21;
        *(&v33 + 1) = v22;
      }

      else
      {
        v35 = 0;
        v33 = 0u;
        v34 = 0u;
      }
    }

    sub_18F0FA038(&v25, &qword_1EACD6838, &unk_18F558330);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    if (v32)
    {
      sub_18F0FA038(&v31, &qword_1EACD0620, &unk_18F541850);
    }
  }

  return sub_18F421594(&v33);
}

uint64_t sub_18F333F1C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12[3] = AssociatedTypeWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a2, AssociatedTypeWitness);
  a3(a1, v12);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t sub_18F334038@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v31 = a4;
  v7 = sub_18F52254C();
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v25 - v8;
  v28 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_18F52254C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v25 - v19;
  sub_18F334384(a1, a2, v30, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, AssociatedTypeWitness) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    (*(v15 + 32))(v20, v14, AssociatedTypeWitness);
    (*(v15 + 16))(v18, v20, AssociatedTypeWitness);
    v21 = v29;
    sub_18F521C1C();
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    (*(v15 + 8))(v20, AssociatedTypeWitness);
    if (!__swift_getEnumTagSinglePayload(v21, 1, a2))
    {
      v23 = v31;
      (*(*(a2 - 8) + 32))(v31, v21, a2);
      v22 = 0;
      return __swift_storeEnumTagSinglePayload(v23, v22, 1, a2);
    }

    (*(v26 + 8))(v21, v27);
  }

  v22 = 1;
  v23 = v31;
  return __swift_storeEnumTagSinglePayload(v23, v22, 1, a2);
}

uint64_t sub_18F334384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_18F52254C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  sub_18F0FECD4(a1, v17);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, AssociatedTypeWitness);
    (*(*(AssociatedTypeWitness - 8) + 32))(a4, v12, AssociatedTypeWitness);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, AssociatedTypeWitness);
  }

  else
  {
    v14 = __swift_storeEnumTagSinglePayload(v12, 1, 1, AssociatedTypeWitness);
    v16 = &unk_1F030DF58;
    MEMORY[0x1EEE9AC00](v14);
    *(&v15 - 4) = a2;
    *(&v15 - 3) = a3;
    *(&v15 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6840, &unk_18F558340);
    sub_18F33A008(&unk_1EACD6848);
    v16 = sub_18F521B3C();
    sub_18F521DBC();
    swift_getWitnessTable();
    sub_18F52211C();

    result = __swift_getEnumTagSinglePayload(v12, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v10 + 8))(v12, v9);
    }
  }

  return result;
}

uint64_t sub_18F334648@<X0>(void (**a1)(void *__return_ptr, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  (*a1)(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0430, &qword_18F540CE0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a5, v7 ^ 1u, 1, AssociatedTypeWitness);
}

void sub_18F33474C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, unint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  sub_18F0FECD4(a1, v44);
  v8 = OUTLINED_FUNCTION_29_31(&v45, v44);
  if (v8)
  {
    OUTLINED_FUNCTION_94_8(v8, v9, v10, v11, v12, v13, v14, v15, v40, v41, v42, v43, v44[0], v44[1], v44[2], v44[3], v45, v46, *(&v46 + 1));
    return;
  }

  v45 = 0u;
  v46 = 0u;
  sub_18F0FECD4(a1, v44);
  if (!swift_dynamicCast())
  {
    goto LABEL_75;
  }

  v16 = HIBYTE(v43) & 0xF;
  v17 = v42 & 0xFFFFFFFFFFFFLL;
  if ((v43 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v43) & 0xF;
  }

  else
  {
    v18 = v42 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    goto LABEL_75;
  }

  if ((v43 & 0x1000000000000000) != 0)
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v21 = a3(v42, v43, 10);
    v39 = v38;
    swift_bridgeObjectRelease_n();
    if (v39)
    {
      goto LABEL_75;
    }

    goto LABEL_78;
  }

  if ((v43 & 0x2000000000000000) != 0)
  {
    if (v42 == 43)
    {
      if (v16)
      {
        if (v16 != 1)
        {
          OUTLINED_FUNCTION_40_19();
          while (1)
          {
            OUTLINED_FUNCTION_24_34();
            if (!v23 & v22)
            {
              break;
            }

            OUTLINED_FUNCTION_28_38();
            if (!v23)
            {
              break;
            }

            v21 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              break;
            }

            OUTLINED_FUNCTION_56_9();
            if (v23)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_73;
      }

LABEL_86:
      __break(1u);
      return;
    }

    if (v42 != 45)
    {
      if (v16)
      {
        while (1)
        {
          OUTLINED_FUNCTION_24_34();
          if (!v23 & v22)
          {
            break;
          }

          OUTLINED_FUNCTION_28_38();
          if (!v23)
          {
            break;
          }

          v21 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            break;
          }

          OUTLINED_FUNCTION_56_9();
          if (v23)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    if (v16)
    {
      if (v16 != 1)
      {
        OUTLINED_FUNCTION_40_19();
        while (1)
        {
          OUTLINED_FUNCTION_24_34();
          if (!v23 & v22)
          {
            break;
          }

          OUTLINED_FUNCTION_28_38();
          if (!v23)
          {
            break;
          }

          v21 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            break;
          }

          OUTLINED_FUNCTION_56_9();
          if (v23)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    goto LABEL_84;
  }

  if ((v42 & 0x1000000000000000) != 0)
  {
    v19 = ((v43 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v19 = sub_18F52286C();
  }

  v20 = *v19;
  if (v20 == 43)
  {
    if (v17 >= 1)
    {
      if (v17 != 1)
      {
        v21 = 0;
        if (v19)
        {
          OUTLINED_FUNCTION_104_6();
          while (1)
          {
            OUTLINED_FUNCTION_24_34();
            if (!v23 & v22)
            {
              goto LABEL_73;
            }

            OUTLINED_FUNCTION_28_38();
            if (!v23)
            {
              goto LABEL_73;
            }

            v21 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              goto LABEL_73;
            }

            OUTLINED_FUNCTION_56_9();
            if (v23)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_64;
      }

      goto LABEL_73;
    }

    goto LABEL_85;
  }

  if (v20 == 45)
  {
    if (v17 >= 1)
    {
      if (v17 != 1)
      {
        v21 = 0;
        if (v19)
        {
          OUTLINED_FUNCTION_104_6();
          while (1)
          {
            OUTLINED_FUNCTION_24_34();
            if (!v23 & v22)
            {
              goto LABEL_73;
            }

            OUTLINED_FUNCTION_28_38();
            if (!v23)
            {
              goto LABEL_73;
            }

            v21 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              goto LABEL_73;
            }

            OUTLINED_FUNCTION_56_9();
            if (v23)
            {
              goto LABEL_74;
            }
          }
        }

LABEL_64:
        v26 = 0;
        goto LABEL_74;
      }

      goto LABEL_73;
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v17)
  {
    v21 = 0;
    if (v19)
    {
      while (1)
      {
        v33 = *v19 - 48;
        if (v33 > 9)
        {
          goto LABEL_73;
        }

        v34 = 10 * v21;
        if ((v21 * 10) >> 64 != (10 * v21) >> 63)
        {
          goto LABEL_73;
        }

        v21 = v34 + v33;
        if (__OFADD__(v34, v33))
        {
          goto LABEL_73;
        }

        ++v19;
        if (!--v17)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_73:
  v21 = 0;
  v26 = 1;
LABEL_74:
  v37 = v26;

  if (v37)
  {
LABEL_75:
    OUTLINED_FUNCTION_30_27();
    goto LABEL_79;
  }

LABEL_78:
  a4[3] = a2;
  *a4 = v21;
LABEL_79:
  if (*(&v46 + 1))
  {
    sub_18F0FA038(&v45, &qword_1EACD0430, &qword_18F540CE0);
  }
}

void sub_18F334A60()
{
  OUTLINED_FUNCTION_90_7();
  sub_18F0FECD4(v2, v40);
  v3 = MEMORY[0x1E69E6810];
  v4 = swift_dynamicCast();
  if (v4)
  {
    OUTLINED_FUNCTION_94_8(v4, v5, v6, v7, v8, v9, v10, v11, v36, v37, v38, v39, v40[0], v40[1], v40[2], v40[3], v41, v42, *(&v42 + 1));
    return;
  }

  v41 = 0u;
  v42 = 0u;
  sub_18F0FECD4(v1, v40);
  if (!swift_dynamicCast())
  {
    goto LABEL_75;
  }

  v12 = HIBYTE(v39) & 0xF;
  v13 = v38 & 0xFFFFFFFFFFFFLL;
  if ((v39 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v39) & 0xF;
  }

  else
  {
    v14 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    goto LABEL_75;
  }

  if ((v39 & 0x1000000000000000) != 0)
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F1B04EC(v38, v39, 0xAuLL);
    v17 = v33;
    v35 = v34;
    swift_bridgeObjectRelease_n();
    if (v35)
    {
      goto LABEL_75;
    }

    goto LABEL_78;
  }

  if ((v39 & 0x2000000000000000) != 0)
  {
    if (v38 == 43)
    {
      if (v12)
      {
        if (v12 != 1)
        {
          OUTLINED_FUNCTION_40_19();
          while (1)
          {
            OUTLINED_FUNCTION_24_34();
            if (!v19 && v18)
            {
              break;
            }

            OUTLINED_FUNCTION_88_8();
            if (!v19)
            {
              break;
            }

            OUTLINED_FUNCTION_57_12();
            v17 = v28 + v27;
            if (__CFADD__(v28, v27))
            {
              break;
            }

            OUTLINED_FUNCTION_56_9();
            if (v19)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_73;
      }

LABEL_86:
      __break(1u);
      return;
    }

    if (v38 != 45)
    {
      if (v12)
      {
        while (1)
        {
          OUTLINED_FUNCTION_24_34();
          if (!v19 && v18)
          {
            break;
          }

          OUTLINED_FUNCTION_88_8();
          if (!v19)
          {
            break;
          }

          OUTLINED_FUNCTION_57_12();
          v17 = v31 + v30;
          if (__CFADD__(v31, v30))
          {
            break;
          }

          OUTLINED_FUNCTION_56_9();
          if (v19)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    if (v12)
    {
      if (v12 != 1)
      {
        OUTLINED_FUNCTION_40_19();
        while (1)
        {
          OUTLINED_FUNCTION_24_34();
          if (!v19 && v18)
          {
            break;
          }

          OUTLINED_FUNCTION_88_8();
          if (!v19)
          {
            break;
          }

          OUTLINED_FUNCTION_57_12();
          v17 = v24 - v23;
          if (v24 < v23)
          {
            break;
          }

          OUTLINED_FUNCTION_56_9();
          if (v19)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    goto LABEL_84;
  }

  if ((v38 & 0x1000000000000000) != 0)
  {
    v15 = ((v39 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v15 = sub_18F52286C();
  }

  v16 = *v15;
  if (v16 == 43)
  {
    if (v13 >= 1)
    {
      if (v13 != 1)
      {
        v17 = 0;
        if (v15)
        {
          OUTLINED_FUNCTION_104_6();
          while (1)
          {
            OUTLINED_FUNCTION_24_34();
            if (!v19 && v18)
            {
              goto LABEL_73;
            }

            OUTLINED_FUNCTION_88_8();
            if (!v19)
            {
              goto LABEL_73;
            }

            OUTLINED_FUNCTION_57_12();
            v17 = v26 + v25;
            if (__CFADD__(v26, v25))
            {
              goto LABEL_73;
            }

            OUTLINED_FUNCTION_56_9();
            if (v19)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_64;
      }

      goto LABEL_73;
    }

    goto LABEL_85;
  }

  if (v16 == 45)
  {
    if (v13 >= 1)
    {
      if (v13 != 1)
      {
        v17 = 0;
        if (v15)
        {
          OUTLINED_FUNCTION_104_6();
          while (1)
          {
            OUTLINED_FUNCTION_24_34();
            if (!v19 && v18)
            {
              goto LABEL_73;
            }

            OUTLINED_FUNCTION_88_8();
            if (!v19)
            {
              goto LABEL_73;
            }

            OUTLINED_FUNCTION_57_12();
            v17 = v21 - v20;
            if (v21 < v20)
            {
              goto LABEL_73;
            }

            OUTLINED_FUNCTION_56_9();
            if (v19)
            {
              goto LABEL_74;
            }
          }
        }

LABEL_64:
        v22 = 0;
        goto LABEL_74;
      }

      goto LABEL_73;
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v13)
  {
    v17 = 0;
    if (v15)
    {
      while (1)
      {
        v29 = *v15 - 48;
        if (v29 > 9)
        {
          goto LABEL_73;
        }

        if (!is_mul_ok(v17, 0xAuLL))
        {
          goto LABEL_73;
        }

        v18 = __CFADD__(10 * v17, v29);
        v17 = 10 * v17 + v29;
        if (v18)
        {
          goto LABEL_73;
        }

        ++v15;
        if (!--v13)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_73:
  v17 = 0;
  v22 = 1;
LABEL_74:
  v32 = v22;

  if (v32)
  {
LABEL_75:
    OUTLINED_FUNCTION_30_27();
    goto LABEL_79;
  }

LABEL_78:
  v0[3] = v3;
  *v0 = v17;
LABEL_79:
  if (*(&v42 + 1))
  {
    sub_18F0FA038(&v41, &qword_1EACD0430, &qword_18F540CE0);
  }
}

void sub_18F334D98()
{
  OUTLINED_FUNCTION_90_7();
  sub_18F0FECD4(v2, v8);
  v3 = MEMORY[0x1E69E63B0];
  if (swift_dynamicCast())
  {
    *(&v10 + 1) = v3;
    sub_18F118710(&v9, v0);
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    sub_18F0FECD4(v1, v8);
    if (swift_dynamicCast() && (v4 = sub_18F27C7E8(v6, v7), (v5 & 1) == 0))
    {
      *(v0 + 24) = v3;
      *v0 = v4;
    }

    else
    {
      OUTLINED_FUNCTION_30_27();
    }

    if (*(&v10 + 1))
    {
      sub_18F0FA038(&v9, &qword_1EACD0430, &qword_18F540CE0);
    }
  }
}

void sub_18F334E88(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18F0FECD4(a1, v8);
  v4 = MEMORY[0x1E69E6158];
  if (swift_dynamicCast())
  {
    *(&v10 + 1) = v4;
    sub_18F118710(&v9, a2);
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    sub_18F0FECD4(a1, &v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2E40, &qword_18F558540);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_87_8(v8);
      v5 = sub_18F522C9C();
      *(a2 + 24) = v4;
      *a2 = v5;
      *(a2 + 8) = v6;
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
    }

    else
    {
      OUTLINED_FUNCTION_82_4();
      sub_18F0FA038(v8, &qword_1EACD6AC0, &qword_18F558548);
      OUTLINED_FUNCTION_30_27();
    }

    if (*(&v10 + 1))
    {
      sub_18F0FA038(&v9, &qword_1EACD0430, &qword_18F540CE0);
    }
  }
}

void sub_18F334FC4(uint64_t a1@<X8>)
{
  v3 = [v1 builtInType];
  if (v3 == 2)
  {
    OUTLINED_FUNCTION_111_4();
    OUTLINED_FUNCTION_74_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
    v22 = OUTLINED_FUNCTION_86_8();
    v24 = OUTLINED_FUNCTION_29_31(v22, v23);
    if (v24)
    {
    }

    OUTLINED_FUNCTION_73_4();
    v52 = sub_18F335638;
    v53 = 0;
    if (v24)
    {
      OUTLINED_FUNCTION_113_2();
      if (OUTLINED_FUNCTION_17_37())
      {
        OUTLINED_FUNCTION_18_36();
        MEMORY[0x1EEE9AC00](v25);
        OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_72_9(v26);
        v27 = OUTLINED_FUNCTION_11_37();
        sub_18F3EA2A8(v27, v28, v29, v30, v31, v32, v33, v34, v47, v48, v49, v50);
        OUTLINED_FUNCTION_34_22();

        *(a1 + 24) = OUTLINED_FUNCTION_82_0();
        v35 = OUTLINED_FUNCTION_39_20(&unk_1EACD67F0);
        OUTLINED_FUNCTION_35_18(v35);
LABEL_32:
        v44 = &unk_1EACD67D8;
        v45 = &unk_18F558300;
        goto LABEL_33;
      }
    }

    else
    {
      v38 = OUTLINED_FUNCTION_101_8();
      sub_18F335638(v38, v39);
      if (v50)
      {
        *(a1 + 24) = &type metadata for _IntentPhotoItemCollection;
        v40 = sub_18F339C5C();
        OUTLINED_FUNCTION_36_23(v40);
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_5_3();
    goto LABEL_32;
  }

  if (v3 != 1)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_5_3();
      return;
    }

    OUTLINED_FUNCTION_111_4();
    OUTLINED_FUNCTION_74_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
    v4 = OUTLINED_FUNCTION_86_8();
    v6 = OUTLINED_FUNCTION_29_31(v4, v5);
    if (v6)
    {
    }

    OUTLINED_FUNCTION_73_4();
    v52 = sub_18F3353B0;
    v53 = 0;
    if (v6)
    {
      OUTLINED_FUNCTION_113_2();
      if (OUTLINED_FUNCTION_17_37())
      {
        OUTLINED_FUNCTION_18_36();
        MEMORY[0x1EEE9AC00](v7);
        OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_72_9(v8);
        v9 = OUTLINED_FUNCTION_11_37();
        sub_18F3EA3CC(v9, v10, v11);
        OUTLINED_FUNCTION_34_22();

        *(a1 + 24) = OUTLINED_FUNCTION_82_0();
        v12 = OUTLINED_FUNCTION_39_20(&unk_1EACD6830);
        OUTLINED_FUNCTION_35_18(v12);
LABEL_29:
        v44 = &unk_1EACD6818;
        v45 = &unk_18F558320;
        goto LABEL_33;
      }
    }

    else
    {
      v41 = OUTLINED_FUNCTION_101_8();
      sub_18F3353B0(v41, v42);
      if (v50 != 2)
      {
        *(a1 + 24) = &type metadata for IntentToggleOperation;
        v46 = sub_18F339D4C();
        OUTLINED_FUNCTION_78_5(v46);
        goto LABEL_29;
      }
    }

    OUTLINED_FUNCTION_5_3();
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_74_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
  v13 = OUTLINED_FUNCTION_86_8();
  v15 = OUTLINED_FUNCTION_29_31(v13, v14);
  if (v15)
  {
  }

  OUTLINED_FUNCTION_73_4();
  v52 = sub_18F3354C0;
  v53 = 0;
  if (!v15)
  {
    v36 = OUTLINED_FUNCTION_101_8();
    sub_18F3354C0(v36, v37);
    if (v50 != 2)
    {
      *(a1 + 24) = &type metadata for IntentToggleState;
      v43 = sub_18F339CB0();
      OUTLINED_FUNCTION_78_5(v43);
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_113_2();
  if ((OUTLINED_FUNCTION_17_37() & 1) == 0)
  {
LABEL_21:
    OUTLINED_FUNCTION_5_3();
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_18_36();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_72_9(v17);
  v18 = OUTLINED_FUNCTION_11_37();
  sub_18F3EA3A0(v18, v19, v20);
  OUTLINED_FUNCTION_34_22();

  *(a1 + 24) = OUTLINED_FUNCTION_82_0();
  v21 = OUTLINED_FUNCTION_39_20(&unk_1EACD6810);
  OUTLINED_FUNCTION_35_18(v21);
LABEL_27:
  v44 = &unk_1EACD67F8;
  v45 = &unk_18F558310;
LABEL_33:
  sub_18F0FA038(v51, v44, v45);
}

uint64_t sub_18F3353B0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_18F0FECD4(a1, v10);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v8 == 7628147 && v9 == 0xE300000000000000;
    if (v4 || (sub_18F522D5C() & 1) != 0)
    {

      v5 = 1;
    }

    else if (v8 == 0x656C67676F74 && v9 == 0xE600000000000000)
    {

      v5 = 0;
    }

    else
    {
      v7 = sub_18F522D5C();

      if (v7)
      {
        v5 = 0;
      }

      else
      {
        v5 = 2;
      }
    }
  }

  else
  {
    v5 = 2;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_18F3354C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_18F0FECD4(a1, v12);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v10 == 0x657669746361 && v11 == 0xE600000000000000;
    if (v4 || (sub_18F522D5C() & 1) != 0 || (v10 == 28271 ? (v5 = v11 == 0xE200000000000000) : (v5 = 0), v5 || (sub_18F522D5C() & 1) != 0))
    {

      v6 = 0;
    }

    else
    {
      v7 = v10 == 0x6576697463616E69 && v11 == 0xE800000000000000;
      if (v7 || (sub_18F522D5C() & 1) != 0 || (v10 == 6710895 ? (v8 = v11 == 0xE300000000000000) : (v8 = 0), v8))
      {

        v6 = 1;
      }

      else
      {
        v9 = sub_18F522D5C();

        if (v9)
        {
          v6 = 1;
        }

        else
        {
          v6 = 2;
        }
      }
    }
  }

  else
  {
    v6 = 2;
  }

  *a2 = v6;
  return result;
}

void sub_18F335638(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_18F0FECD4(a1, v5);
  sub_18F0F21A8(0, &qword_1EACD30E8, 0x1E69AC928);
  if (swift_dynamicCast())
  {
    sub_18F356670(v4, v5);
    v3 = v5[0];
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
}

void sub_18F3356E4()
{
  OUTLINED_FUNCTION_18();
  v304 = v4;
  v305 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6440, &unk_18F558020);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_28_0();
  v303 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6448, &qword_18F562CA0);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_28_0();
  v302 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6450, &unk_18F558030);
  OUTLINED_FUNCTION_10(v12);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_28_0();
  v301 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6458, &unk_18F562C90);
  OUTLINED_FUNCTION_10(v15);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_28_0();
  v300 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6460, &unk_18F558040);
  OUTLINED_FUNCTION_10(v18);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_28_0();
  v299 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6468, &unk_18F562C80);
  OUTLINED_FUNCTION_10(v21);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_28_0();
  v298 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6470, &unk_18F558050);
  OUTLINED_FUNCTION_10(v24);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_68(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6478, &unk_18F562C70);
  OUTLINED_FUNCTION_10(v27);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_68(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6480, &unk_18F558060);
  OUTLINED_FUNCTION_10(v30);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_68(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6488, &unk_18F562C60);
  OUTLINED_FUNCTION_10(v33);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_68(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6490, &unk_18F558070);
  OUTLINED_FUNCTION_10(v36);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_68(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6498, &unk_18F562C50);
  OUTLINED_FUNCTION_10(v39);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_68(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD64A0, &unk_18F558080);
  OUTLINED_FUNCTION_10(v42);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_68(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD64A8, &unk_18F562C40);
  OUTLINED_FUNCTION_10(v45);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_68(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD64B0, &unk_18F558090);
  OUTLINED_FUNCTION_10(v48);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v297[-v50];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD64B8, &unk_18F562C30);
  OUTLINED_FUNCTION_10(v52);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v297[-v54];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD64C0, &unk_18F5580A0);
  OUTLINED_FUNCTION_10(v56);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v297[-v58];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD64C8, &unk_18F562C20);
  OUTLINED_FUNCTION_10(v60);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v297[-v62];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD64D0, &unk_18F5580B0);
  OUTLINED_FUNCTION_10(v64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_101();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD64D8, &unk_18F562C10);
  OUTLINED_FUNCTION_10(v66);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v297[-v68];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD64E0, &unk_18F5580C0);
  OUTLINED_FUNCTION_10(v70);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_23();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD64E8, &unk_18F562C00);
  OUTLINED_FUNCTION_10(v72);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_13_6();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD64F0, &unk_18F5580D0);
  OUTLINED_FUNCTION_10(v74);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_14_7();
  v76 = [v0 unitType];
  switch(v76)
  {
    case 0uLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_38_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v77 = OUTLINED_FUNCTION_13_36();
      if (v77)
      {
      }

      OUTLINED_FUNCTION_37_22();
      v78 = OUTLINED_FUNCTION_46_17();
      if (v77)
      {
        sub_18F0FECD4(v78, v306);
        if (OUTLINED_FUNCTION_12_44())
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v79);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3EEA10();
          OUTLINED_FUNCTION_46();

          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD67C8, &qword_18F5582F8);
          OUTLINED_FUNCTION_42_14(v80);
          v81 = sub_18F339BAC();
          OUTLINED_FUNCTION_36_23(v81);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        sub_18F32E478(v78, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFDD0, &qword_18F561FA0);
        OUTLINED_FUNCTION_55_3(v3);
        if (v212)
        {
          sub_18F0FA038(v3, &qword_1EACD64F0, &unk_18F5580D0);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          OUTLINED_FUNCTION_45_13();
          v271 = OUTLINED_FUNCTION_0_91(&unk_1EACD67C0, &qword_1EACCFDD0, &qword_18F561FA0);
          OUTLINED_FUNCTION_68_10(v271);
          OUTLINED_FUNCTION_12_9();
          (*(v272 + 32))();
        }
      }

      v251 = &unk_1EACD67B8;
      v252 = &unk_18F5582F0;
      goto LABEL_232;
    case 1uLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_38_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v145 = OUTLINED_FUNCTION_13_36();
      if (v145)
      {
      }

      OUTLINED_FUNCTION_37_22();
      v146 = OUTLINED_FUNCTION_46_17();
      if (v145)
      {
        sub_18F0FECD4(v146, v306);
        if (OUTLINED_FUNCTION_12_44())
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v147);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3ECE10();
          OUTLINED_FUNCTION_46();

          v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD65C8, &qword_18F558178);
          OUTLINED_FUNCTION_42_14(v148);
          v149 = sub_18F3390AC();
          OUTLINED_FUNCTION_36_23(v149);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        OUTLINED_FUNCTION_65_12();
        sub_18F32E338(v224, v225);
        v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFED0, &unk_18F562CB0);
        OUTLINED_FUNCTION_2_73(v226);
        if (v212)
        {
          sub_18F0FA038(v69, &qword_1EACD6470, &unk_18F558050);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          OUTLINED_FUNCTION_45_13();
          v273 = OUTLINED_FUNCTION_0_91(&unk_1EACD65C0, &qword_1EACCFED0, &unk_18F562CB0);
          OUTLINED_FUNCTION_68_10(v273);
          OUTLINED_FUNCTION_12_9();
          OUTLINED_FUNCTION_37_3();
          v274();
        }
      }

      v251 = &unk_1EACD65B8;
      v252 = &unk_18F558170;
      goto LABEL_232;
    case 2uLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_38_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v125 = OUTLINED_FUNCTION_13_36();
      if (v125)
      {
      }

      OUTLINED_FUNCTION_37_22();
      v126 = OUTLINED_FUNCTION_46_17();
      if (v125)
      {
        sub_18F0FECD4(v126, v306);
        if (OUTLINED_FUNCTION_12_44())
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v127);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3ECC50();
          OUTLINED_FUNCTION_46();

          v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD65A8, &unk_18F558160);
          OUTLINED_FUNCTION_42_14(v128);
          v129 = sub_18F338FFC();
          OUTLINED_FUNCTION_36_23(v129);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        v217 = v298;
        sub_18F32E324(v126, v298);
        v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFEE0, &qword_18F558150);
        OUTLINED_FUNCTION_2_73(v218);
        if (v212)
        {
          sub_18F0FA038(v217, &qword_1EACD6468, &unk_18F562C80);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          OUTLINED_FUNCTION_45_13();
          v263 = OUTLINED_FUNCTION_0_91(&unk_1EACD65A0, &qword_1EACCFEE0, &qword_18F558150);
          OUTLINED_FUNCTION_68_10(v263);
          OUTLINED_FUNCTION_12_9();
          OUTLINED_FUNCTION_37_3();
          v264();
        }
      }

      v251 = &unk_1EACD6598;
      v252 = &unk_18F558158;
      goto LABEL_232;
    case 3uLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_38_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v135 = OUTLINED_FUNCTION_13_36();
      if (v135)
      {
      }

      OUTLINED_FUNCTION_37_22();
      v136 = OUTLINED_FUNCTION_46_17();
      if (v135)
      {
        sub_18F0FECD4(v136, v306);
        if (OUTLINED_FUNCTION_12_44())
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v137);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3EC550();
          OUTLINED_FUNCTION_46();

          v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6528, &unk_18F558100);
          OUTLINED_FUNCTION_42_14(v138);
          v139 = sub_18F338D3C();
          OUTLINED_FUNCTION_36_23(v139);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        v222 = v302;
        sub_18F32E2D4(v136, v302);
        v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFF20, &qword_18F5580F0);
        OUTLINED_FUNCTION_2_73(v223);
        if (v212)
        {
          sub_18F0FA038(v222, &qword_1EACD6448, &qword_18F562CA0);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          OUTLINED_FUNCTION_45_13();
          v267 = OUTLINED_FUNCTION_0_91(&unk_1EACD6520, &qword_1EACCFF20, &qword_18F5580F0);
          OUTLINED_FUNCTION_68_10(v267);
          OUTLINED_FUNCTION_12_9();
          OUTLINED_FUNCTION_37_3();
          v268();
        }
      }

      v251 = &unk_1EACD6518;
      v252 = &unk_18F5580F8;
      goto LABEL_232;
    case 4uLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_38_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v101 = OUTLINED_FUNCTION_13_36();
      if (v101)
      {
      }

      OUTLINED_FUNCTION_37_22();
      v102 = OUTLINED_FUNCTION_46_17();
      if (v101)
      {
        sub_18F0FECD4(v102, v306);
        if (OUTLINED_FUNCTION_12_44())
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v103);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3EC390();
          OUTLINED_FUNCTION_46();

          v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6508, &qword_18F5580E8);
          OUTLINED_FUNCTION_42_14(v104);
          v105 = sub_18F338C8C();
          OUTLINED_FUNCTION_36_23(v105);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        v214 = v303;
        sub_18F32E2C0(v102, v303);
        v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFF30, &qword_18F53FCE8);
        OUTLINED_FUNCTION_2_73(v215);
        if (v212)
        {
          sub_18F0FA038(v214, &qword_1EACD6440, &unk_18F558020);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          OUTLINED_FUNCTION_45_13();
          v257 = OUTLINED_FUNCTION_0_91(&unk_1EACD6500, &qword_1EACCFF30, &qword_18F53FCE8);
          OUTLINED_FUNCTION_68_10(v257);
          OUTLINED_FUNCTION_12_9();
          OUTLINED_FUNCTION_37_3();
          v258();
        }
      }

      v251 = &unk_1EACD64F8;
      v252 = &unk_18F5580E0;
      goto LABEL_232;
    case 5uLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_38_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v160 = OUTLINED_FUNCTION_13_36();
      if (v160)
      {
      }

      OUTLINED_FUNCTION_37_22();
      v161 = OUTLINED_FUNCTION_46_17();
      if (v160)
      {
        sub_18F0FECD4(v161, v306);
        if (OUTLINED_FUNCTION_12_44())
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v162);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3EC710();
          OUTLINED_FUNCTION_46();

          v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6548, &qword_18F558118);
          OUTLINED_FUNCTION_42_14(v163);
          v164 = sub_18F338DEC();
          OUTLINED_FUNCTION_36_23(v164);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        v233 = v301;
        sub_18F32E2E8(v161, v301);
        v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFF10, &unk_18F562CC0);
        OUTLINED_FUNCTION_2_73(v234);
        if (v212)
        {
          sub_18F0FA038(v233, &qword_1EACD6450, &unk_18F558030);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          OUTLINED_FUNCTION_45_13();
          v279 = OUTLINED_FUNCTION_0_91(&unk_1EACD6540, &qword_1EACCFF10, &unk_18F562CC0);
          OUTLINED_FUNCTION_68_10(v279);
          OUTLINED_FUNCTION_12_9();
          OUTLINED_FUNCTION_37_3();
          v280();
        }
      }

      v251 = &unk_1EACD6538;
      v252 = &unk_18F558110;
      goto LABEL_232;
    case 6uLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_38_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v175 = OUTLINED_FUNCTION_13_36();
      if (v175)
      {
      }

      OUTLINED_FUNCTION_37_22();
      v176 = OUTLINED_FUNCTION_46_17();
      if (v175)
      {
        sub_18F0FECD4(v176, v306);
        if (OUTLINED_FUNCTION_12_44())
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v177);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3ED6D0();
          OUTLINED_FUNCTION_46();

          v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6668, &unk_18F5581F0);
          OUTLINED_FUNCTION_42_14(v178);
          v179 = sub_18F33941C();
          OUTLINED_FUNCTION_36_23(v179);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        OUTLINED_FUNCTION_65_12();
        sub_18F32E39C(v237, v238);
        v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFE80, &qword_18F5581E0);
        OUTLINED_FUNCTION_2_73(v239);
        if (v212)
        {
          sub_18F0FA038(v69, &qword_1EACD6498, &unk_18F562C50);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          OUTLINED_FUNCTION_45_13();
          v285 = OUTLINED_FUNCTION_0_91(&unk_1EACD6660, &qword_1EACCFE80, &qword_18F5581E0);
          OUTLINED_FUNCTION_68_10(v285);
          OUTLINED_FUNCTION_12_9();
          OUTLINED_FUNCTION_37_3();
          v286();
        }
      }

      v251 = &unk_1EACD6658;
      v252 = &unk_18F5581E8;
      goto LABEL_232;
    case 7uLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_38_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v140 = OUTLINED_FUNCTION_13_36();
      if (v140)
      {
      }

      OUTLINED_FUNCTION_37_22();
      v141 = OUTLINED_FUNCTION_46_17();
      if (v140)
      {
        sub_18F0FECD4(v141, v306);
        if (OUTLINED_FUNCTION_12_44())
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v142);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3EDF90();
          OUTLINED_FUNCTION_46();

          v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6708, &qword_18F558268);
          OUTLINED_FUNCTION_42_14(v143);
          v144 = sub_18F33978C();
          OUTLINED_FUNCTION_36_23(v144);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        sub_18F32E400(v141, v59);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFE30, &qword_18F562CD0);
        OUTLINED_FUNCTION_55_3(v59);
        if (v212)
        {
          sub_18F0FA038(v59, &qword_1EACD64C0, &unk_18F5580A0);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          OUTLINED_FUNCTION_45_13();
          v269 = OUTLINED_FUNCTION_0_91(&unk_1EACD6700, &qword_1EACCFE30, &qword_18F562CD0);
          OUTLINED_FUNCTION_68_10(v269);
          OUTLINED_FUNCTION_12_9();
          (*(v270 + 32))();
        }
      }

      v251 = &unk_1EACD66F8;
      v252 = &unk_18F558260;
      goto LABEL_232;
    case 8uLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_38_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v194 = OUTLINED_FUNCTION_13_36();
      if (v194)
      {
      }

      OUTLINED_FUNCTION_37_22();
      v195 = OUTLINED_FUNCTION_46_17();
      if (v194)
      {
        sub_18F0FECD4(v195, v306);
        if (OUTLINED_FUNCTION_12_44())
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v196);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3EE850();
          OUTLINED_FUNCTION_46();

          v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD67A8, &unk_18F5582E0);
          OUTLINED_FUNCTION_42_14(v197);
          v198 = sub_18F339AFC();
          OUTLINED_FUNCTION_36_23(v198);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        sub_18F32E464(v195, v2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFDE0, &qword_18F5582D0);
        OUTLINED_FUNCTION_55_3(v2);
        if (v212)
        {
          sub_18F0FA038(v2, &qword_1EACD64E8, &unk_18F562C00);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          OUTLINED_FUNCTION_45_13();
          v291 = OUTLINED_FUNCTION_0_91(&unk_1EACD67A0, &qword_1EACCFDE0, &qword_18F5582D0);
          OUTLINED_FUNCTION_68_10(v291);
          OUTLINED_FUNCTION_12_9();
          (*(v292 + 32))();
        }
      }

      v251 = &unk_1EACD6798;
      v252 = &unk_18F5582D8;
      goto LABEL_232;
    case 9uLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_38_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v116 = OUTLINED_FUNCTION_44_14();
      v118 = OUTLINED_FUNCTION_58_8(v116, v117);
      if (v118)
      {
      }

      OUTLINED_FUNCTION_37_22();
      v119 = OUTLINED_FUNCTION_46_17();
      if (v118)
      {
        sub_18F0FECD4(v119, v306);
        v120 = OUTLINED_FUNCTION_43_17();
        if (OUTLINED_FUNCTION_58_8(v120, v121))
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v122);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3EE690();
          OUTLINED_FUNCTION_46();

          v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6788, &qword_18F5582C8);
          OUTLINED_FUNCTION_42_14(v123);
          v124 = sub_18F339A4C();
          OUTLINED_FUNCTION_36_23(v124);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        sub_18F32E450(v119, v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFDF0, &qword_18F53FBA8);
        OUTLINED_FUNCTION_55_3(v1);
        if (v212)
        {
          sub_18F0FA038(v1, &qword_1EACD64E0, &unk_18F5580C0);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          OUTLINED_FUNCTION_45_13();
          v261 = OUTLINED_FUNCTION_0_91(&unk_1EACD6780, &qword_1EACCFDF0, &qword_18F53FBA8);
          OUTLINED_FUNCTION_68_10(v261);
          OUTLINED_FUNCTION_12_9();
          (*(v262 + 32))();
        }
      }

      v251 = &unk_1EACD6778;
      v252 = &unk_18F5582C0;
      goto LABEL_232;
    case 0xAuLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_91_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v185 = OUTLINED_FUNCTION_44_14();
      v187 = OUTLINED_FUNCTION_58_8(v185, v186);
      if (v187)
      {
      }

      LOBYTE(v307) = v187;
      sub_18F118710(v306, (v1 + 8));
      v308 = sub_18F32E43C;
      v309 = 0;
      v188 = v1 + 8;
      if (v187)
      {
        sub_18F0FECD4(v188, v306);
        v189 = OUTLINED_FUNCTION_43_17();
        if (OUTLINED_FUNCTION_58_8(v189, v190))
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v191);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3EE4D0();
          OUTLINED_FUNCTION_46();

          v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6768, &unk_18F5582B0);
          OUTLINED_FUNCTION_42_14(v192);
          v193 = sub_18F33999C();
          OUTLINED_FUNCTION_36_23(v193);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        sub_18F32E43C(v188, v69);
        v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFE00, &qword_18F5582A0);
        OUTLINED_FUNCTION_2_73(v243);
        if (v212)
        {
          sub_18F0FA038(v69, &qword_1EACD64D8, &unk_18F562C10);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          OUTLINED_FUNCTION_45_13();
          v289 = OUTLINED_FUNCTION_0_91(&unk_1EACD6760, &qword_1EACCFE00, &qword_18F5582A0);
          OUTLINED_FUNCTION_68_10(v289);
          OUTLINED_FUNCTION_12_9();
          OUTLINED_FUNCTION_37_3();
          v290();
        }
      }

      v251 = &unk_1EACD6758;
      v252 = &unk_18F5582A8;
      goto LABEL_232;
    case 0xBuLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_91_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v92 = OUTLINED_FUNCTION_44_14();
      v94 = OUTLINED_FUNCTION_58_8(v92, v93);
      if (v94)
      {
      }

      LOBYTE(v307) = v94;
      sub_18F118710(v306, (v1 + 8));
      v308 = sub_18F32E428;
      v309 = 0;
      v95 = v1 + 8;
      if (v94)
      {
        sub_18F0FECD4(v95, v306);
        v96 = OUTLINED_FUNCTION_43_17();
        if (OUTLINED_FUNCTION_58_8(v96, v97))
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v98);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3EE310();
          OUTLINED_FUNCTION_46();

          v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6748, &qword_18F558298);
          OUTLINED_FUNCTION_42_14(v99);
          v100 = sub_18F3398EC();
          OUTLINED_FUNCTION_36_23(v100);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        sub_18F32E428(v95, v0);
        v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFE10, &qword_18F53FBC8);
        OUTLINED_FUNCTION_55_3(v0);
        if (v212)
        {
          sub_18F0FA038(v0, &qword_1EACD64D0, &unk_18F5580B0);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          v255 = v305;
          v305[3] = v213;
          v255[4] = OUTLINED_FUNCTION_0_91(&unk_1EACD6740, &qword_1EACCFE10, &qword_18F53FBC8);
          __swift_allocate_boxed_opaque_existential_1(v255);
          OUTLINED_FUNCTION_12_9();
          (*(v256 + 32))();
        }
      }

      v251 = &unk_1EACD6738;
      v252 = &unk_18F558290;
      goto LABEL_232;
    case 0xCuLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_91_8();
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v107 = OUTLINED_FUNCTION_44_14();
      v109 = OUTLINED_FUNCTION_29_31(v107, v108);
      if (v109)
      {
      }

      LOBYTE(v307) = v109;
      sub_18F118710(v306, (v1 + 8));
      v308 = sub_18F32E414;
      v309 = 0;
      v110 = v1 + 8;
      if (v109)
      {
        sub_18F0FECD4(v110, v306);
        v111 = OUTLINED_FUNCTION_43_17();
        if (OUTLINED_FUNCTION_29_31(v111, v112))
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v113);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3EE150();
          OUTLINED_FUNCTION_46();

          v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6728, &unk_18F558280);
          OUTLINED_FUNCTION_42_14(v114);
          v115 = sub_18F33983C();
          OUTLINED_FUNCTION_36_23(v115);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        sub_18F32E414(v110, v63);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFE20, &qword_18F558270);
        v216 = OUTLINED_FUNCTION_46();
        OUTLINED_FUNCTION_54_0(v216);
        if (v212)
        {
          sub_18F0FA038(v63, &qword_1EACD64C8, &unk_18F562C20);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          v259 = v305;
          v305[3] = v106;
          v259[4] = OUTLINED_FUNCTION_0_91(&unk_1EACD6720, &qword_1EACCFE20, &qword_18F558270);
          __swift_allocate_boxed_opaque_existential_1(v259);
          OUTLINED_FUNCTION_31_0();
          (*(v260 + 32))();
        }
      }

      v251 = &unk_1EACD6718;
      v252 = &unk_18F558278;
      goto LABEL_232;
    case 0xDuLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_38_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v170 = OUTLINED_FUNCTION_13_36();
      if (v170)
      {
      }

      OUTLINED_FUNCTION_37_22();
      v171 = OUTLINED_FUNCTION_46_17();
      if (v170)
      {
        sub_18F0FECD4(v171, v306);
        if (OUTLINED_FUNCTION_12_44())
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v172);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3EDDD0();
          OUTLINED_FUNCTION_46();

          v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD66E8, &unk_18F558250);
          OUTLINED_FUNCTION_42_14(v173);
          v174 = sub_18F3396DC();
          OUTLINED_FUNCTION_36_23(v174);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        sub_18F32E3EC(v171, v55);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFE40, &qword_18F558240);
        OUTLINED_FUNCTION_55_3(v55);
        if (v212)
        {
          sub_18F0FA038(v55, &qword_1EACD64B8, &unk_18F562C30);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          OUTLINED_FUNCTION_45_13();
          v283 = OUTLINED_FUNCTION_0_91(&unk_1EACD66E0, &qword_1EACCFE40, &qword_18F558240);
          OUTLINED_FUNCTION_68_10(v283);
          OUTLINED_FUNCTION_12_9();
          (*(v284 + 32))();
        }
      }

      v251 = &unk_1EACD66D8;
      v252 = &unk_18F558248;
      goto LABEL_232;
    case 0xEuLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_38_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v87 = OUTLINED_FUNCTION_13_36();
      if (v87)
      {
      }

      OUTLINED_FUNCTION_37_22();
      v88 = OUTLINED_FUNCTION_46_17();
      if (v87)
      {
        sub_18F0FECD4(v88, v306);
        if (OUTLINED_FUNCTION_12_44())
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v89);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3EDC10();
          OUTLINED_FUNCTION_46();

          v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD66C8, &qword_18F558238);
          OUTLINED_FUNCTION_42_14(v90);
          v91 = sub_18F33962C();
          OUTLINED_FUNCTION_36_23(v91);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        sub_18F32E3D8(v88, v51);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFE50, &qword_18F53FC08);
        OUTLINED_FUNCTION_55_3(v51);
        if (v212)
        {
          sub_18F0FA038(v51, &qword_1EACD64B0, &unk_18F558090);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          OUTLINED_FUNCTION_45_13();
          v253 = OUTLINED_FUNCTION_0_91(&unk_1EACD66C0, &qword_1EACCFE50, &qword_18F53FC08);
          OUTLINED_FUNCTION_68_10(v253);
          OUTLINED_FUNCTION_12_9();
          (*(v254 + 32))();
        }
      }

      v251 = &unk_1EACD66B8;
      v252 = &unk_18F558230;
      goto LABEL_232;
    case 0xFuLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_38_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v130 = OUTLINED_FUNCTION_13_36();
      if (v130)
      {
      }

      OUTLINED_FUNCTION_37_22();
      v131 = OUTLINED_FUNCTION_46_17();
      if (v130)
      {
        sub_18F0FECD4(v131, v306);
        if (OUTLINED_FUNCTION_12_44())
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v132);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3EDA50();
          OUTLINED_FUNCTION_46();

          v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD66A8, &unk_18F558220);
          OUTLINED_FUNCTION_42_14(v133);
          v134 = sub_18F33957C();
          OUTLINED_FUNCTION_36_23(v134);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        OUTLINED_FUNCTION_65_12();
        sub_18F32E3C4(v219, v220);
        v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFE60, &qword_18F558210);
        OUTLINED_FUNCTION_2_73(v221);
        if (v212)
        {
          sub_18F0FA038(v69, &qword_1EACD64A8, &unk_18F562C40);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          OUTLINED_FUNCTION_45_13();
          v265 = OUTLINED_FUNCTION_0_91(&unk_1EACD66A0, &qword_1EACCFE60, &qword_18F558210);
          OUTLINED_FUNCTION_68_10(v265);
          OUTLINED_FUNCTION_12_9();
          OUTLINED_FUNCTION_37_3();
          v266();
        }
      }

      v251 = &unk_1EACD6698;
      v252 = &unk_18F558218;
      goto LABEL_232;
    case 0x10uLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_38_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v82 = OUTLINED_FUNCTION_13_36();
      if (v82)
      {
      }

      OUTLINED_FUNCTION_37_22();
      v83 = OUTLINED_FUNCTION_46_17();
      if (v82)
      {
        sub_18F0FECD4(v83, v306);
        if (OUTLINED_FUNCTION_12_44())
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v84);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3ED890();
          OUTLINED_FUNCTION_46();

          v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6688, &qword_18F558208);
          OUTLINED_FUNCTION_42_14(v85);
          v86 = sub_18F3394CC();
          OUTLINED_FUNCTION_36_23(v86);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        OUTLINED_FUNCTION_65_12();
        sub_18F32E3B0(v209, v210);
        v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFE70, &qword_18F53FC28);
        OUTLINED_FUNCTION_2_73(v211);
        if (v212)
        {
          sub_18F0FA038(v69, &qword_1EACD64A0, &unk_18F558080);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          OUTLINED_FUNCTION_45_13();
          v249 = OUTLINED_FUNCTION_0_91(&unk_1EACD6680, &qword_1EACCFE70, &qword_18F53FC28);
          OUTLINED_FUNCTION_68_10(v249);
          OUTLINED_FUNCTION_12_9();
          OUTLINED_FUNCTION_37_3();
          v250();
        }
      }

      v251 = &unk_1EACD6678;
      v252 = &unk_18F558200;
      goto LABEL_232;
    case 0x11uLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_38_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v150 = OUTLINED_FUNCTION_13_36();
      if (v150)
      {
      }

      OUTLINED_FUNCTION_37_22();
      v151 = OUTLINED_FUNCTION_46_17();
      if (v150)
      {
        sub_18F0FECD4(v151, v306);
        if (OUTLINED_FUNCTION_12_44())
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v152);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3ED510();
          OUTLINED_FUNCTION_46();

          v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6648, &qword_18F5581D8);
          OUTLINED_FUNCTION_42_14(v153);
          v154 = sub_18F33936C();
          OUTLINED_FUNCTION_36_23(v154);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        OUTLINED_FUNCTION_65_12();
        sub_18F32E388(v227, v228);
        v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFE90, &qword_18F53FC48);
        OUTLINED_FUNCTION_2_73(v229);
        if (v212)
        {
          sub_18F0FA038(v69, &qword_1EACD6490, &unk_18F558070);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          OUTLINED_FUNCTION_45_13();
          v275 = OUTLINED_FUNCTION_0_91(&unk_1EACD6640, &qword_1EACCFE90, &qword_18F53FC48);
          OUTLINED_FUNCTION_68_10(v275);
          OUTLINED_FUNCTION_12_9();
          OUTLINED_FUNCTION_37_3();
          v276();
        }
      }

      v251 = &unk_1EACD6638;
      v252 = &unk_18F5581D0;
      goto LABEL_232;
    case 0x12uLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_38_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v180 = OUTLINED_FUNCTION_13_36();
      if (v180)
      {
      }

      OUTLINED_FUNCTION_37_22();
      v181 = OUTLINED_FUNCTION_46_17();
      if (v180)
      {
        sub_18F0FECD4(v181, v306);
        if (OUTLINED_FUNCTION_12_44())
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v182);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3ED350();
          OUTLINED_FUNCTION_46();

          v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6628, &unk_18F5581C0);
          OUTLINED_FUNCTION_42_14(v183);
          v184 = sub_18F3392BC();
          OUTLINED_FUNCTION_36_23(v184);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        OUTLINED_FUNCTION_65_12();
        sub_18F32E374(v240, v241);
        v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFEA0, &qword_18F5581B0);
        OUTLINED_FUNCTION_2_73(v242);
        if (v212)
        {
          sub_18F0FA038(v69, &qword_1EACD6488, &unk_18F562C60);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          OUTLINED_FUNCTION_45_13();
          v287 = OUTLINED_FUNCTION_0_91(&unk_1EACD6620, &qword_1EACCFEA0, &qword_18F5581B0);
          OUTLINED_FUNCTION_68_10(v287);
          OUTLINED_FUNCTION_12_9();
          OUTLINED_FUNCTION_37_3();
          v288();
        }
      }

      v251 = &unk_1EACD6618;
      v252 = &unk_18F5581B8;
      goto LABEL_232;
    case 0x13uLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_38_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v204 = OUTLINED_FUNCTION_13_36();
      if (v204)
      {
      }

      OUTLINED_FUNCTION_37_22();
      v205 = OUTLINED_FUNCTION_46_17();
      if (v204)
      {
        sub_18F0FECD4(v205, v306);
        if (OUTLINED_FUNCTION_12_44())
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v206);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3ED190();
          OUTLINED_FUNCTION_46();

          v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6608, &qword_18F5581A8);
          OUTLINED_FUNCTION_42_14(v207);
          v208 = sub_18F33920C();
          OUTLINED_FUNCTION_36_23(v208);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        OUTLINED_FUNCTION_65_12();
        sub_18F32E360(v246, v247);
        v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFEB0, &qword_18F53FC68);
        OUTLINED_FUNCTION_2_73(v248);
        if (v212)
        {
          sub_18F0FA038(v69, &qword_1EACD6480, &unk_18F558060);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          OUTLINED_FUNCTION_45_13();
          v295 = OUTLINED_FUNCTION_0_91(&unk_1EACD6600, &qword_1EACCFEB0, &qword_18F53FC68);
          OUTLINED_FUNCTION_68_10(v295);
          OUTLINED_FUNCTION_12_9();
          OUTLINED_FUNCTION_37_3();
          v296();
        }
      }

      v251 = &unk_1EACD65F8;
      v252 = &unk_18F5581A0;
      goto LABEL_232;
    case 0x14uLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_38_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v155 = OUTLINED_FUNCTION_13_36();
      if (v155)
      {
      }

      OUTLINED_FUNCTION_37_22();
      v156 = OUTLINED_FUNCTION_46_17();
      if (v155)
      {
        sub_18F0FECD4(v156, v306);
        if (OUTLINED_FUNCTION_12_44())
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v157);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3ECFD0();
          OUTLINED_FUNCTION_46();

          v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD65E8, &unk_18F558190);
          OUTLINED_FUNCTION_42_14(v158);
          v159 = sub_18F33915C();
          OUTLINED_FUNCTION_36_23(v159);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        OUTLINED_FUNCTION_65_12();
        sub_18F32E34C(v230, v231);
        v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFEC0, &qword_18F558180);
        OUTLINED_FUNCTION_2_73(v232);
        if (v212)
        {
          sub_18F0FA038(v69, &qword_1EACD6478, &unk_18F562C70);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          OUTLINED_FUNCTION_45_13();
          v277 = OUTLINED_FUNCTION_0_91(&unk_1EACD65E0, &qword_1EACCFEC0, &qword_18F558180);
          OUTLINED_FUNCTION_68_10(v277);
          OUTLINED_FUNCTION_12_9();
          OUTLINED_FUNCTION_37_3();
          v278();
        }
      }

      v251 = &unk_1EACD65D8;
      v252 = &unk_18F558188;
      goto LABEL_232;
    case 0x15uLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_38_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v165 = OUTLINED_FUNCTION_13_36();
      if (v165)
      {
      }

      OUTLINED_FUNCTION_37_22();
      v166 = OUTLINED_FUNCTION_46_17();
      if (v165)
      {
        sub_18F0FECD4(v166, v306);
        if (OUTLINED_FUNCTION_12_44())
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v167);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3ECA90();
          OUTLINED_FUNCTION_46();

          v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6588, &qword_18F558148);
          OUTLINED_FUNCTION_42_14(v168);
          v169 = sub_18F338F4C();
          OUTLINED_FUNCTION_36_23(v169);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        v235 = v299;
        sub_18F32E310(v166, v299);
        v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFEF0, &qword_18F53FCA8);
        OUTLINED_FUNCTION_2_73(v236);
        if (v212)
        {
          sub_18F0FA038(v235, &qword_1EACD6460, &unk_18F558040);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          OUTLINED_FUNCTION_45_13();
          v281 = OUTLINED_FUNCTION_0_91(&unk_1EACD6580, &qword_1EACCFEF0, &qword_18F53FCA8);
          OUTLINED_FUNCTION_68_10(v281);
          OUTLINED_FUNCTION_12_9();
          OUTLINED_FUNCTION_37_3();
          v282();
        }
      }

      v251 = &unk_1EACD6578;
      v252 = &unk_18F558140;
      goto LABEL_232;
    case 0x16uLL:
      OUTLINED_FUNCTION_67_8();
      OUTLINED_FUNCTION_38_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
      v199 = OUTLINED_FUNCTION_13_36();
      if (v199)
      {
      }

      OUTLINED_FUNCTION_37_22();
      v200 = OUTLINED_FUNCTION_46_17();
      if (v199)
      {
        sub_18F0FECD4(v200, v306);
        if (OUTLINED_FUNCTION_12_44())
        {
          OUTLINED_FUNCTION_16_38();
          MEMORY[0x1EEE9AC00](v201);
          OUTLINED_FUNCTION_1_71();
          OUTLINED_FUNCTION_15_36();
          sub_18F3EC8D0();
          OUTLINED_FUNCTION_46();

          v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6568, &unk_18F558130);
          OUTLINED_FUNCTION_42_14(v202);
          v203 = sub_18F338E9C();
          OUTLINED_FUNCTION_36_23(v203);
        }

        else
        {
          OUTLINED_FUNCTION_4_56();
        }
      }

      else
      {
        v244 = v300;
        sub_18F32E2FC(v200, v300);
        v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFF00, &qword_18F558120);
        OUTLINED_FUNCTION_2_73(v245);
        if (v212)
        {
          sub_18F0FA038(v244, &qword_1EACD6458, &unk_18F562C90);
          OUTLINED_FUNCTION_5_52();
        }

        else
        {
          OUTLINED_FUNCTION_45_13();
          v293 = OUTLINED_FUNCTION_0_91(&unk_1EACD6560, &qword_1EACCFF00, &qword_18F558120);
          OUTLINED_FUNCTION_68_10(v293);
          OUTLINED_FUNCTION_12_9();
          OUTLINED_FUNCTION_37_3();
          v294();
        }
      }

      v251 = &unk_1EACD6558;
      v252 = &unk_18F558128;
LABEL_232:
      sub_18F0FA038(&v307, v251, v252);
      OUTLINED_FUNCTION_16();
      break;
    default:
      type metadata accessor for LNMeasurementUnitType(0);
      v307 = v76;
      sub_18F522DFC();
      __break(1u);
      break;
  }
}