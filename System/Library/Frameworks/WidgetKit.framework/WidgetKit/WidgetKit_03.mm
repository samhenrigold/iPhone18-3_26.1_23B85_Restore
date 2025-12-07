uint64_t sub_19206B6AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192225EE0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_19206B708@<X0>(_BYTE *a1@<X8>)
{
  sub_19202F774();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

void *sub_19206B7A4@<X0>(void *a1@<X8>)
{
  sub_192050FFC();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19206B8D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0028, &qword_192232200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19206B948(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0028, &qword_192232200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19206B9B0(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = [a1 fontStyle];
  if (v3 <= 6)
  {
    switch(v3)
    {
      case 1:
        v4 = type metadata accessor for ContentSizeCategoryIncrementingFontDefinition();
        v5 = &unk_1ED749A38;
        v6 = type metadata accessor for ContentSizeCategoryIncrementingFontDefinition;
        goto LABEL_21;
      case 2:
        v4 = type metadata accessor for ContentSizeCategoryDecrementingFontDefinition();
        v5 = &unk_1ED749800;
        v6 = type metadata accessor for ContentSizeCategoryDecrementingFontDefinition;
        goto LABEL_21;
      case 6:
        if (v2 == 7)
        {
          v4 = type metadata accessor for CompactCircularFontDefinition();
          v5 = &unk_1EADF2568;
          v6 = type metadata accessor for CompactCircularFontDefinition;
        }

        else
        {
          v4 = type metadata accessor for CompactRectangularFontDefinition();
          v5 = &unk_1EADF2560;
          v6 = type metadata accessor for CompactRectangularFontDefinition;
        }

        goto LABEL_21;
    }

LABEL_14:
    v4 = type metadata accessor for TightLeadingFontDefinition();
    v5 = &unk_1ED749C28;
    v6 = type metadata accessor for TightLeadingFontDefinition;
    goto LABEL_21;
  }

  switch(v3)
  {
    case 7:
      if (v2 == 7)
      {
        v4 = type metadata accessor for RegularCircularFontDefinition();
        v5 = &unk_1ED749548;
        v6 = type metadata accessor for RegularCircularFontDefinition;
      }

      else
      {
        v4 = type metadata accessor for RegularRectangularFontDefinition();
        v5 = &unk_1ED749288;
        v6 = type metadata accessor for RegularRectangularFontDefinition;
      }

      break;
    case 8:
      if (v2 == 7)
      {
        v4 = type metadata accessor for LargeCircularFontDefinition();
        v5 = &unk_1ED7497E0;
        v6 = type metadata accessor for LargeCircularFontDefinition;
      }

      else
      {
        v4 = type metadata accessor for LargeRectangularFontDefinition();
        v5 = &unk_1ED749290;
        v6 = type metadata accessor for LargeRectangularFontDefinition;
      }

      break;
    case 11:
      v4 = type metadata accessor for iOSLikeFontDefinition();
      v5 = &unk_1EADF2558;
      v6 = type metadata accessor for iOSLikeFontDefinition;
      break;
    default:
      goto LABEL_14;
  }

LABEL_21:
  sub_19206C688(v5, v6);
  return v4;
}

uint64_t sub_19206BBD0(uint64_t a1, void (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  sub_19205EC64(a1, v6);
  v10 = sub_192225020();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v6, 1, v10) == 1)
  {
    a2();
    if (v12(v6, 1, v10) != 1)
    {
      sub_1921331E8(v6);
    }
  }

  else
  {
    (*(v11 + 32))(v9, v6, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
  }

  return sub_19205EC64(v9, a1);
}

char *sub_19206BD78(uint64_t a1)
{
  if (qword_1ED74BCA0 != -1)
  {
LABEL_28:
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_192046E20(a1, off_1ED74BF08);
  v3 = swift_endAccess();
  if (v2)
  {
    (*(**(v2 + 16) + 80))(v3);
    v6 = sub_1920702EC(v4, v5);

    if (!v6)
    {

      return 0;
    }

    if (v6 >> 62)
    {
      v7 = sub_192228340();
      if (v7)
      {
LABEL_6:
        v8 = 0;
        a1 = 0;
        v9 = MEMORY[0x1E69E7CC0];
        v10 = MEMORY[0x1E6969080];
        do
        {
          v22 = v9;
          v11 = v8;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v12 = MEMORY[0x193B0B410](v11, v6);
              v8 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                goto LABEL_26;
              }
            }

            else
            {
              if (v11 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_27;
              }

              v12 = *(v6 + 8 * v11 + 32);

              v8 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
LABEL_26:
                __break(1u);
LABEL_27:
                __break(1u);
                goto LABEL_28;
              }
            }

            (*(**(v2 + 16) + 120))(v23, *(v12 + 24), v10, v10);

            if (v23[1] >> 60 != 15)
            {
              break;
            }

            sub_192046ED4(v23[0], v23[1]);
            ++v11;
            if (v8 == v7)
            {
              goto LABEL_31;
            }
          }

          v13 = v23[1];
          v14 = v23[0];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v22 = sub_192072CD4(0, *(v22 + 2) + 1, 1, v22);
          }

          v17 = *(v22 + 2);
          v16 = *(v22 + 3);
          if (v17 >= v16 >> 1)
          {
            v20 = sub_192072CD4((v16 > 1), v17 + 1, 1, v22);
            v18 = v13;
            v22 = v20;
          }

          else
          {
            v18 = v13;
          }

          *(v22 + 2) = v17 + 1;
          v19 = &v22[16 * v17];
          *(v19 + 4) = v14;
          *(v19 + 5) = v18;
          v9 = v22;
        }

        while (v8 != v7);
        goto LABEL_31;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    v9 = MEMORY[0x1E69E7CC0];
LABEL_31:

    return v9;
  }

  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF510, &qword_19222B018);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

char *sub_19206C134(uint64_t a1)
{
  if (qword_1ED74BCA0 != -1)
  {
LABEL_27:
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_192046E20(a1, off_1ED74BF08);
  v3 = swift_endAccess();
  if (v2)
  {
    (*(**(v2 + 16) + 80))(v3);
    v6 = sub_1920702EC(v4, v5);

    if (!v6)
    {

      return 0;
    }

    if (v6 >> 62)
    {
      v7 = sub_192228340();
      if (v7)
      {
LABEL_6:
        v8 = 0;
        a1 = 0;
        v19 = MEMORY[0x1E69E7CC0];
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x193B0B410](v9, v6);
              v8 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                goto LABEL_25;
              }
            }

            else
            {
              if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_26;
              }

              v10 = *(v6 + 8 * v9 + 32);

              v8 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
LABEL_25:
                __break(1u);
LABEL_26:
                __break(1u);
                goto LABEL_27;
              }
            }

            (*(**(v2 + 16) + 120))(&v20, *(v10 + 24), &type metadata for WidgetRenderScheme, &type metadata for WidgetRenderScheme);

            v11 = v20;
            if (v20 != 3)
            {
              break;
            }

            ++v9;
            if (v8 == v7)
            {
              goto LABEL_30;
            }
          }

          v12 = v21;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v14 = v19;
          }

          else
          {
            v14 = sub_192072DE0(0, *(v19 + 2) + 1, 1, v19);
          }

          v16 = *(v14 + 2);
          v15 = *(v14 + 3);
          if (v16 >= v15 >> 1)
          {
            v14 = sub_192072DE0((v15 > 1), v16 + 1, 1, v14);
          }

          *(v14 + 2) = v16 + 1;
          v19 = v14;
          v17 = &v14[16 * v16];
          v17[32] = v11;
          *(v17 + 5) = v12;
        }

        while (v8 != v7);
        goto LABEL_30;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    v19 = MEMORY[0x1E69E7CC0];
LABEL_30:

    return v19;
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEC20, &qword_19222B010);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

unint64_t sub_19206C4B8()
{
  result = qword_1EADECE40;
  if (!qword_1EADECE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0068, &qword_192232270);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0020, &qword_1922321F8);
    sub_19206AB18();
    swift_getOpaqueTypeConformance2();
    sub_192031E74(&qword_1EADED290, &qword_1EADF00E8, &qword_192232300, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE40);
  }

  return result;
}

unint64_t sub_19206C5AC()
{
  result = qword_1EADECDB0;
  if (!qword_1EADECDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0070, &qword_192232278);
    sub_19206D208();
    sub_192031E74(&qword_1EADED2A8, &qword_1EADF00D8, &qword_1922322F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECDB0);
  }

  return result;
}

uint64_t sub_19206C688(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

void sub_19206C6DC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_19206C774@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF1AD0;
  return result;
}

unint64_t sub_19206C7C0()
{
  result = qword_1EADECA40;
  if (!qword_1EADECA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0838, &qword_192235400);
    sub_19206C8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECA40);
  }

  return result;
}

uint64_t sub_19206C844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19206C7C0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_19206C8A8()
{
  result = qword_1EADECA38;
  if (!qword_1EADECA38)
  {
    sub_19206C900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECA38);
  }

  return result;
}

unint64_t sub_19206C900()
{
  result = qword_1ED74BB40;
  if (!qword_1ED74BB40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED74BB40);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ControlTemplateButton.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_19206C9FC()
{
  result = qword_1ED74A740;
  if (!qword_1ED74A740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1398, &qword_19223ABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A740);
  }

  return result;
}

unsigned __int8 *sub_19206CA60@<X0>(_BYTE *a1@<X8>)
{
  sub_19203B36C();
  sub_1922261E0();
  v3[0] = v3[1];
  result = sub_19206E384(v3, &v4);
  *a1 = v4;
  return result;
}

unint64_t sub_19206CAC8()
{
  result = qword_1EADECDA0;
  if (!qword_1EADECDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECDA0);
  }

  return result;
}

BOOL sub_19206CB20(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

uint64_t sub_19206CB50(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1428, &qword_19223B440);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1430, &qword_19223B448);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1438, &qword_19223B450);
  v11 = *(*(v10 - 8) + 16);
  if (a1)
  {
    v11(v9, v2, v10);
    sub_19202CFFC(v9, v6, &qword_1EADF1430, &qword_19223B448);
    swift_storeEnumTagMultiPayload();
    sub_19206E9F0();
    sub_192031E74(&qword_1EADECD28, &qword_1EADF1438, &qword_19223B450, MEMORY[0x1E697FDF8]);
    sub_1922266E0();
    return sub_192033970(v9, &qword_1EADF1430, &qword_19223B448);
  }

  else
  {
    v11(v6, v2, v10);
    swift_storeEnumTagMultiPayload();
    sub_19206E9F0();
    sub_192031E74(&qword_1EADECD28, &qword_1EADF1438, &qword_19223B450, MEMORY[0x1E697FDF8]);
    return sub_1922266E0();
  }
}

uint64_t sub_19206CDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19203F924(&qword_1ED74AB88, type metadata accessor for WidgetURLModifier, &protocol conformance descriptor for WidgetURLModifier);

  return MEMORY[0x1EEDDB138](a1, a2, a3, a4, a5, v10);
}

unint64_t sub_19206CE70()
{
  result = qword_1EADECDE0;
  if (!qword_1EADECDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0040, &qword_192232248);
    sub_19206CF28();
    sub_192031E74(&qword_1EADECD08, &qword_1EADF0100, &qword_192232318, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECDE0);
  }

  return result;
}

unint64_t sub_19206CF28()
{
  result = qword_1EADECDF0;
  if (!qword_1EADECDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0048, &qword_192232250);
    sub_19206CFE0();
    sub_192031E74(&qword_1ED74A558, &qword_1EADEFD70, &qword_192231780, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECDF0);
  }

  return result;
}

unint64_t sub_19206CFE0()
{
  result = qword_1EADECE08;
  if (!qword_1EADECE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0050, &qword_192232258);
    sub_19206D098();
    sub_192031E74(&qword_1ED7494B8, &qword_1EADF00F8, &qword_192232310, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE08);
  }

  return result;
}

unint64_t sub_19206D098()
{
  result = qword_1EADECE20;
  if (!qword_1EADECE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0058, &qword_192232260);
    sub_19206D150();
    sub_192031E74(&qword_1ED74A558, &qword_1EADEFD70, &qword_192231780, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE20);
  }

  return result;
}

unint64_t sub_19206D150()
{
  result = qword_1EADECE30;
  if (!qword_1EADECE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0060, &qword_192232268);
    sub_19206C4B8();
    sub_192031E74(&qword_1EADED2A0, &qword_1EADF00F0, &qword_192232308, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE30);
  }

  return result;
}

unint64_t sub_19206D208()
{
  result = qword_1EADECDB8;
  if (!qword_1EADECDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0078, &qword_192232280);
    sub_19206D2C0();
    sub_192031E74(&qword_1EADED298, &qword_1EADF00D0, &qword_1922322E8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECDB8);
  }

  return result;
}

unint64_t sub_19206D2C0()
{
  result = qword_1EADECDC0;
  if (!qword_1EADECDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0080, &qword_192232288);
    sub_19206D378();
    sub_192031E74(&qword_1ED74A558, &qword_1EADEFD70, &qword_192231780, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECDC0);
  }

  return result;
}

unint64_t sub_19206D378()
{
  result = qword_1EADECDC8;
  if (!qword_1EADECDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0088, &qword_192232290);
    sub_19206D430();
    sub_192031E74(&qword_1ED74A558, &qword_1EADEFD70, &qword_192231780, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECDC8);
  }

  return result;
}

unint64_t sub_19206D430()
{
  result = qword_1EADECDD8;
  if (!qword_1EADECDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0090, &qword_192232298);
    sub_19206D4E8();
    sub_192031E74(&qword_1ED74A558, &qword_1EADEFD70, &qword_192231780, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECDD8);
  }

  return result;
}

unint64_t sub_19206D4E8()
{
  result = qword_1EADECDE8;
  if (!qword_1EADECDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0098, &qword_1922322A0);
    sub_19206D5A0();
    sub_192031E74(&qword_1ED74A558, &qword_1EADEFD70, &qword_192231780, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECDE8);
  }

  return result;
}

unint64_t sub_19206D5A0()
{
  result = qword_1EADECE00;
  if (!qword_1EADECE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF00A0, &qword_1922322A8);
    sub_19206D658();
    sub_192031E74(&qword_1EADED2B0, &qword_1EADF00C8, &unk_1922322D8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE00);
  }

  return result;
}

unint64_t sub_19206D658()
{
  result = qword_1EADECE18;
  if (!qword_1EADECE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF00A8, &qword_1922322B0);
    sub_1921022DC();
    sub_192031E74(&qword_1ED74A1B8, &qword_1EADF00C0, &qword_1922322D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE18);
  }

  return result;
}

unint64_t sub_19206D710()
{
  result = qword_1EADED310;
  if (!qword_1EADED310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF00B8, &unk_1922322C0);
    sub_19206D79C();
    sub_19206ABD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED310);
  }

  return result;
}

unint64_t sub_19206D79C()
{
  result = qword_1EADED328;
  if (!qword_1EADED328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0030, &qword_192232208);
    sub_192031E74(&qword_1EADED2C8, &qword_1EADF0038, &qword_192232240, MEMORY[0x1E697FDF8]);
    sub_192031E74(&qword_1ED74BAD0, &qword_1EADEFD68, &qword_1922360C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED328);
  }

  return result;
}

unint64_t sub_19206D880()
{
  result = qword_1ED74A508;
  if (!qword_1ED74A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A508);
  }

  return result;
}

unint64_t sub_19206D8D8()
{
  result = qword_1EADED250;
  if (!qword_1EADED250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED250);
  }

  return result;
}

unint64_t sub_19206D94C()
{
  result = qword_1ED74A648;
  if (!qword_1ED74A648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF19E0, &qword_19223E848);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF19D8, &qword_19223E840);
    sub_19206DA18();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A648);
  }

  return result;
}

unint64_t sub_19206DA18()
{
  result = qword_1ED74A560;
  if (!qword_1ED74A560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF19D8, &qword_19223E840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A560);
  }

  return result;
}

unint64_t sub_19206DA7C()
{
  result = qword_1ED74A108;
  if (!qword_1ED74A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A108);
  }

  return result;
}

uint64_t sub_19206DAE0(uint64_t *a1)
{
  sub_19206DA7C();

  return sub_1922261F0();
}

void *sub_19206DB40@<X0>(void *a1@<X8>)
{
  sub_19206DB90();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

unint64_t sub_19206DB90()
{
  result = qword_1EADECB50;
  if (!qword_1EADECB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECB50);
  }

  return result;
}

void *keypath_get_58Tm@<X0>(uint64_t (*a1)(void)@<X3>, _BYTE *a3@<X8>)
{
  a1();
  result = sub_1922261E0();
  *a3 = v5;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_19206DD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF19C8, &qword_19223E830);
  MEMORY[0x1EEE9AC00](v33);
  v4 = &v29 - v3;
  v5 = sub_192227220();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF19D0, &qword_19223E838);
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = sub_1922261D0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  if (*(v2 + 8) == 1)
  {
    if (*v2 != 2)
    {
LABEL_3:
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF19D8, &qword_19223E840);
      (*(*(v16 - 8) + 16))(v4, v32, v16);
      swift_storeEnumTagMultiPayload();
      v17 = sub_19206DA18();
      v35 = v16;
      v36 = v17;
      swift_getOpaqueTypeConformance2();
      return sub_1922266E0();
    }
  }

  else
  {

    sub_192227FA0();
    v19 = sub_192226D00();
    v29 = v6;
    v20 = v4;
    v21 = v10;
    v22 = v8;
    v23 = v5;
    v24 = v19;
    sub_1922257A0();

    v5 = v23;
    v8 = v22;
    v10 = v21;
    v4 = v20;
    v6 = v29;
    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v25 = sub_19216E594(v15, 0);
    (*(v12 + 8))(v14, v11, v25);
    if (v35 != 2)
    {
      goto LABEL_3;
    }
  }

  sub_192227250();
  (*(v6 + 104))(v30, *MEMORY[0x1E69814D8], v5);
  sub_1922272F0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF19D8, &qword_19223E840);
  v27 = sub_19206DA18();
  sub_192227100();

  v28 = v31;
  (*(v31 + 16))(v4, v10, v8);
  swift_storeEnumTagMultiPayload();
  v35 = v26;
  v36 = v27;
  swift_getOpaqueTypeConformance2();
  sub_1922266E0();
  return (*(v28 + 8))(v10, v8);
}

uint64_t getEnumTagSinglePayload for ControlTemplateButton.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_19206E290()
{
  result = qword_1ED74A748;
  if (!qword_1ED74A748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF13A0, &unk_19223ABB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1398, &qword_19223ABB0);
    sub_19206C9FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A748);
  }

  return result;
}

unsigned __int8 *sub_19206E384@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 0xD)
  {
    result = sub_192228990();
    __break(1u);
  }

  else
  {
    *a2 = byte_19223F13C[v2];
  }

  return result;
}

uint64_t sub_19206E3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v28 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1380, &qword_19223AB98);
  v25 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v24 - v3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1388, &qword_19223ABA0);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1390, &qword_19223ABA8);
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = sub_1922261D0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  if (*(v2 + 8) == 1)
  {
    LOBYTE(v30) = *v2;
  }

  else
  {

    sub_192227FA0();
    v15 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v16 = sub_192049898(v14, 0);
    (*(v11 + 8))(v13, v10, v16);
  }

  IsAccessory = CHSWidgetFamilyIsAccessory();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1398, &qword_19223ABB0);
  v19 = sub_19206C9FC();
  if (IsAccessory)
  {
    sub_1922270F0();
    v20 = v24;
    (*(v24 + 16))(v6, v9, v7);
    swift_storeEnumTagMultiPayload();
    v30 = v18;
    v31 = v19;
    swift_getOpaqueTypeConformance2();
    v30 = v18;
    v31 = v19;
    swift_getOpaqueTypeConformance2();
    sub_1922266E0();
    return (*(v20 + 8))(v9, v7);
  }

  else
  {
    sub_192227050();
    v22 = v25;
    v23 = v29;
    (*(v25 + 16))(v6, v4, v29);
    swift_storeEnumTagMultiPayload();
    v30 = v18;
    v31 = v19;
    swift_getOpaqueTypeConformance2();
    v30 = v18;
    v31 = v19;
    swift_getOpaqueTypeConformance2();
    sub_1922266E0();
    return (*(v22 + 8))(v4, v23);
  }
}

uint64_t sub_19206E848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19206E8C4();

  return MEMORY[0x1EEDDB138](a1, a2, a3, a4, a5, v10);
}

unint64_t sub_19206E8C4()
{
  result = qword_1ED74A1A0;
  if (!qword_1ED74A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A1A0);
  }

  return result;
}

unint64_t sub_19206E938()
{
  result = qword_1EADECD68;
  if (!qword_1EADECD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1468, &qword_19223B6F0);
    sub_19206E9F0();
    sub_192031E74(&qword_1EADECD28, &qword_1EADF1438, &qword_19223B450, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD68);
  }

  return result;
}

unint64_t sub_19206E9F0()
{
  result = qword_1EADECE58;
  if (!qword_1EADECE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1430, &qword_19223B448);
    sub_192031E74(&qword_1EADECD28, &qword_1EADF1438, &qword_19223B450, MEMORY[0x1E697FDF8]);
    sub_19206CAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE58);
  }

  return result;
}

uint64_t sub_19206EAA8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 9);
  v4 = sub_19217AB64();
  LOBYTE(v3) = sub_19206CB1C(v3, v4);

  return sub_19206CB50((v3 & 1) == 0);
}

unint64_t sub_19206EB4C()
{
  result = qword_1EADED320;
  if (!qword_1EADED320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0850, &qword_192235418);
    sub_192031E74(&qword_1EADEDD20, &qword_1EADF0858, &qword_192235420, MEMORY[0x1E697FDF8]);
    sub_192031E74(qword_1ED749BA0, &qword_1EADF0860, &qword_1922355B8, MEMORY[0x1E6980758]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED320);
  }

  return result;
}

uint64_t sub_19206EC30(uint64_t a1)
{
  v2 = sub_19206EC6C();

  return MEMORY[0x1EEDE0700](a1, v2);
}

unint64_t sub_19206EC6C()
{
  result = qword_1ED74A180;
  if (!qword_1ED74A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A180);
  }

  return result;
}

unint64_t sub_19206ECC4()
{
  result = qword_1ED74A188;
  if (!qword_1ED74A188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A188);
  }

  return result;
}

uint64_t sub_19206ED18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0850, &qword_192235418);
  sub_192051870(v2, a2 + *(v5 + 36));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0858, &qword_192235420);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, a1, v6);
}

uint64_t WidgetAccentedDesaturatedViewModifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF12F0, &qword_192239EE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19206F028();
  sub_192228B70();
  if (!v2)
  {
    v9 = sub_192228770();
    (*(v6 + 8))(v8, v5);
    KeyPath = swift_getKeyPath();
    v11 = swift_getKeyPath();
    *a2 = KeyPath;
    *(a2 + 8) = 0;
    *(a2 + 16) = v11;
    *(a2 + 24) = 0;
    *(a2 + 25) = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_19206EF7C()
{
  result = qword_1EADEE480;
  if (!qword_1EADEE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE480);
  }

  return result;
}

unint64_t sub_19206EFD4()
{
  result = qword_1EADEE488;
  if (!qword_1EADEE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE488);
  }

  return result;
}

unint64_t sub_19206F028()
{
  result = qword_1EADEE490;
  if (!qword_1EADEE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE490);
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_19206F0AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 26))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_19206F118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19206F194();

  return MEMORY[0x1EEDDB138](a1, a2, a3, a4, a5, v10);
}

unint64_t sub_19206F194()
{
  result = qword_1EADEE700[0];
  if (!qword_1EADEE700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADEE700);
  }

  return result;
}

unint64_t sub_19206F208()
{
  result = qword_1EADECD70;
  if (!qword_1EADECD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1318, &qword_19223A128);
    sub_19206F294();
    sub_19206F320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD70);
  }

  return result;
}

unint64_t sub_19206F294()
{
  result = qword_1EADECE60;
  if (!qword_1EADECE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1308, &qword_192239F48);
    sub_19206F320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE60);
  }

  return result;
}

unint64_t sub_19206F320()
{
  result = qword_1EADECD30;
  if (!qword_1EADECD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1310, &qword_192239F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD30);
  }

  return result;
}

uint64_t WidgetAccentedDesaturatedViewModifier.body(content:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1300, &qword_192239F40);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1308, &qword_192239F48);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v34 - v9;
  v10 = sub_1922261D0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v15 = *(v1 + 8);
  v16 = v1[2];
  v17 = *(v1 + 24);
  v18 = *(v1 + 25);
  if (v17 == 1)
  {
    v46 = v1[2];
    if (v16 != 1)
    {
LABEL_3:
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1310, &qword_192239F50);
      (*(*(v19 - 8) + 16))(v5, a1, v19);
      swift_storeEnumTagMultiPayload();
      sub_19206F294();
      sub_19206F320();
      return sub_1922266E0();
    }
  }

  else
  {
    v21 = v1[2];
    v37 = *(v1 + 24);
    v36 = v14;
    v34 = v18;
    v35 = v15;
    sub_19216E0E0(v21, 0);
    sub_192227FA0();
    v22 = sub_192226D00();
    v38 = a1;
    v23 = v22;
    sub_1922257A0();

    a1 = v38;
    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v24 = sub_192049898(v16, 0);
    (*(v11 + 8))(v13, v10, v24);
    LOBYTE(v18) = v34;
    LOBYTE(v15) = v35;
    v14 = v36;
    LOBYTE(v17) = v37;
    if (v46 != 1)
    {
      goto LABEL_3;
    }
  }

  v41 = v14;
  v42 = v15;
  v43 = v16;
  v44 = v17;
  v45 = v18;
  v25 = sub_19216DF74();
  if (v25)
  {
    v26 = -0.21265;
  }

  else
  {
    v26 = 0.21265;
  }

  if (v25)
  {
    v27 = -0.71533;
  }

  else
  {
    v27 = 0.71533;
  }

  if (v25)
  {
    v28 = -0.072205;
  }

  else
  {
    v28 = 0.072205;
  }

  if (v25)
  {
    v29 = 1.0;
  }

  else
  {
    v29 = 0.0;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1310, &qword_192239F50);
  v31 = v39;
  (*(*(v30 - 8) + 16))(v39, a1, v30);
  v32 = v31 + *(v6 + 36);
  *(v32 + 44) = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0u;
  *v32 = 0u;
  *(v32 + 60) = v26;
  *(v32 + 64) = v27;
  *(v32 + 68) = v28;
  *(v32 + 72) = v29;
  *(v32 + 76) = 0;
  v33 = v40;
  sub_19216E344(v31, v40);
  sub_19216E3B4(v33, v5);
  swift_storeEnumTagMultiPayload();
  sub_19206F294();
  sub_19206F320();
  sub_1922266E0();
  return sub_19216E424(v33);
}

char *sub_19206F820(uint64_t a1)
{
  if (qword_1ED74BCA0 != -1)
  {
LABEL_27:
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_192046E20(a1, off_1ED74BF08);
  v3 = swift_endAccess();
  if (v2)
  {
    (*(**(v2 + 16) + 80))(v3);
    v6 = sub_1920702EC(v4, v5);

    if (!v6)
    {

      return 0;
    }

    if (v6 >> 62)
    {
      v7 = sub_192228340();
      if (v7)
      {
LABEL_6:
        v8 = 0;
        a1 = 0;
        v17 = MEMORY[0x1E69E7CC0];
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x193B0B410](v9, v6);
              v8 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                goto LABEL_25;
              }
            }

            else
            {
              if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_26;
              }

              v10 = *(v6 + 8 * v9 + 32);

              v8 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
LABEL_25:
                __break(1u);
LABEL_26:
                __break(1u);
                goto LABEL_27;
              }
            }

            (*(**(v2 + 16) + 120))(v18, *(v10 + 24), &type metadata for WidgetBackgroundStyle, &type metadata for WidgetBackgroundStyle);

            v11 = v18[0];
            if (LOBYTE(v18[0]) != 3)
            {
              break;
            }

            ++v9;
            if (v8 == v7)
            {
              goto LABEL_30;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v13 = v17;
          }

          else
          {
            v13 = sub_192072EE4(0, *(v17 + 2) + 1, 1, v17);
          }

          v15 = *(v13 + 2);
          v14 = *(v13 + 3);
          if (v15 >= v14 >> 1)
          {
            v13 = sub_192072EE4((v14 > 1), v15 + 1, 1, v13);
          }

          *(v13 + 2) = v15 + 1;
          v17 = v13;
          v13[v15 + 32] = v11;
        }

        while (v8 != v7);
        goto LABEL_30;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    v17 = MEMORY[0x1E69E7CC0];
LABEL_30:

    return v17;
  }

  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC18, &qword_19222D9E0);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_19206FBC4(unint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(BOOL, unint64_t, uint64_t, uint64_t))
{
  if (qword_1ED74BCA0 != -1)
  {
LABEL_27:
    swift_once();
  }

  swift_beginAccess();
  v10 = sub_192046E20(a1, off_1ED74BF08);
  v11 = swift_endAccess();
  if (v10)
  {
    (*(**(v10 + 16) + 80))(v11);
    a2 = sub_1920702EC(v12, v13);

    if (!a2)
    {

      return 0;
    }

    a1 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      v14 = sub_192228340();
      if (v14)
      {
LABEL_6:
        v23 = a5;
        a5 = 0;
        a3 = 0;
        v24 = MEMORY[0x1E69E7CC0];
        do
        {
          v15 = a5;
          while (1)
          {
            if ((a2 & 0xC000000000000001) != 0)
            {
              v16 = MEMORY[0x193B0B410](v15, a2);
              a5 = (v15 + 1);
              if (__OFADD__(v15, 1))
              {
                goto LABEL_25;
              }
            }

            else
            {
              if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_26;
              }

              v16 = a2[v15 + 4];

              a5 = (v15 + 1);
              if (__OFADD__(v15, 1))
              {
LABEL_25:
                __break(1u);
LABEL_26:
                __break(1u);
                goto LABEL_27;
              }
            }

            (*(**(v10 + 16) + 120))(v25, *(v16 + 24), a4, a4);

            v17 = v25[0];
            if (LOBYTE(v25[0]) != 2)
            {
              break;
            }

            ++v15;
            if (a5 == v14)
            {
              goto LABEL_30;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v19 = v24;
          }

          else
          {
            v19 = (v23)(0, *(v24 + 16) + 1, 1);
          }

          v21 = *(v19 + 16);
          v20 = *(v19 + 24);
          if (v21 >= v20 >> 1)
          {
            v19 = v23(v20 > 1, v21 + 1, 1, v19);
          }

          *(v19 + 16) = v21 + 1;
          v24 = v19;
          *(v19 + v21 + 32) = v17 & 1;
        }

        while (a5 != v14);
        goto LABEL_30;
      }
    }

    else
    {
      v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_6;
      }
    }

    v24 = MEMORY[0x1E69E7CC0];
LABEL_30:

    return v24;
  }

  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

char *sub_19206FF74(uint64_t a1)
{
  if (qword_1ED74BCA0 != -1)
  {
LABEL_27:
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_192046E20(a1, off_1ED74BF08);
  v3 = swift_endAccess();
  if (v2)
  {
    (*(**(v2 + 16) + 80))(v3);
    v6 = sub_1920702EC(v4, v5);

    if (!v6)
    {

      return 0;
    }

    if (v6 >> 62)
    {
      v7 = sub_192228340();
      if (v7)
      {
LABEL_6:
        v8 = 0;
        a1 = 0;
        v17 = MEMORY[0x1E69E7CC0];
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x193B0B410](v9, v6);
              v8 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                goto LABEL_25;
              }
            }

            else
            {
              if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_26;
              }

              v10 = *(v6 + 8 * v9 + 32);

              v8 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
LABEL_25:
                __break(1u);
LABEL_26:
                __break(1u);
                goto LABEL_27;
              }
            }

            (*(**(v2 + 16) + 120))(v18, *(v10 + 24), &type metadata for LevelOfDetail, &type metadata for LevelOfDetail);

            v11 = v18[0];
            if (LOBYTE(v18[0]) != 2)
            {
              break;
            }

            ++v9;
            if (v8 == v7)
            {
              goto LABEL_30;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v13 = v17;
          }

          else
          {
            v13 = sub_192073DA4(0, *(v17 + 2) + 1, 1, v17);
          }

          v15 = *(v13 + 2);
          v14 = *(v13 + 3);
          if (v15 >= v14 >> 1)
          {
            v13 = sub_192073DA4((v14 > 1), v15 + 1, 1, v13);
          }

          *(v13 + 2) = v15 + 1;
          v17 = v13;
          v13[v15 + 32] = v11 & 1;
        }

        while (v8 != v7);
        goto LABEL_30;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    v17 = MEMORY[0x1E69E7CC0];
LABEL_30:

    return v17;
  }

  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC08, &qword_19222D9A0);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

void *sub_1920702EC(uint64_t a1, uint64_t a2)
{
  v5 = sub_192224FC0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  v10 = *(v2 + v9);
  if (*(v10 + 16) && (v11 = sub_19204437C(a1, a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
    v14 = MEMORY[0x1E69E7CC0];
    v24 = MEMORY[0x1E69E7CC0];
    v15 = v13;
    sub_192227F60();
    sub_1920C80A8(&qword_1ED74BFF8, 255, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
    sub_192228270();
    while (v23)
    {
      sub_19203BEDC(&v22, &v21);
      v16 = swift_dynamicCast();
      MEMORY[0x193B0AB00](v16);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192227BB0();
      }

      sub_192227C00();
      v14 = v24;
      sub_192228270();
    }

    v18.n128_f64[0] = (*(v6 + 8))(v8, v5);
    v19 = sub_192070550(v14, v18);

    return v19;
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

void *sub_192070550(unint64_t a1, __n128 a2)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v4 = sub_192228340();
  if (!v4)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v6 = sub_1920C3AF0(v4, 0);
  sub_192068A58((v6 + 4), v5, a1, v7);
  v9 = v8;

  result = v6;
  if (v9 != v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1920705E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v39 = a1;
  v32 = a3;
  v4 = *v3;
  v35 = a2;
  v5 = sub_192228240();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - v6;
  v7 = *(v4 + 152);
  v8 = *(v4 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v36 = &v30 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v11 = sub_192228240();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  v15 = *(v10 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - v18;
  (*(**(v39 + 16) + 88))(v38, v17);
  v20 = swift_dynamicCast();
  v21 = *(v15 + 56);
  if (v20)
  {
    v21(v14, 0, 1, v10);
    (*(v15 + 32))(v19, v14, v10);
    v22 = v37;
    (*(v7 + 56))(v19, v8, v7);
    if (!v22)
    {
      v24 = AssociatedTypeWitness;
      v23 = v34;
      v25 = v35;
      if (swift_dynamicCast())
      {
        (*(v15 + 8))(v19, v10);
        v26 = *(v25 - 8);
        (*(v26 + 56))(v23, 0, 1, v25);
        return (*(v26 + 32))(v32, v23, v25);
      }

      (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
      (*(v30 + 8))(v23, v31);
      sub_1922284A0();
      swift_allocError();
      sub_1920BD250(v24, v29);
      swift_willThrow();
    }

    return (*(v15 + 8))(v19, v10);
  }

  else
  {
    v21(v14, 1, 1, v10);
    (*(v12 + 8))(v14, v11);
    sub_1922284A0();
    swift_allocError();
    sub_1920BD250(v10, v28);
    return swift_willThrow();
  }
}

uint64_t sub_192070B0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 128);
  a1[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v5 = *(*(v3 - 8) + 16);

  return v5(boxed_opaque_existential_1, v1 + v2, v3);
}

unint64_t sub_192070BA4(uint64_t a1, unint64_t a2, __n128 a3)
{
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v5 = sub_192228340();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x193B0B410](v6, a2, a3);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a2 + 8 * v6 + 32);
    }

    v8 = v7;
    sub_19202A7A8(0, &unk_1ED74A3A0, 0x1E69943A0);
    v9 = sub_1922281D0();

    if (v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

id sub_192070CB4@<X0>(void *a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v4 = *(v3 + *(type metadata accessor for WidgetArchivableMetadata(0) + 28));
  *a1 = v4;

  return v4;
}

void *sub_192070D1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEECA0, &qword_19222B090);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v39 = &v29 - v3;
  v4 = sub_1922259F0();
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v29 - v8;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    swift_beginAccess();
    v9 = sub_192046E20(a1, off_1ED74BF08);
    v10 = swift_endAccess();
    if (!v9)
    {
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_192228400();
      MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
      v40 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF560, &qword_19222B098);
      sub_1922285A0();
      result = sub_192228620();
      __break(1u);
      return result;
    }

    (*(**(v9 + 16) + 80))(v10);
    v13 = sub_1920702EC(v11, v12);

    if (!v13)
    {

      return 0;
    }

    v14 = v13 & 0xFFFFFFFFFFFFFF8;
    if (!(v13 >> 62))
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v37 = v9;
      if (!v15)
      {
        break;
      }

      goto LABEL_6;
    }

    v15 = sub_192228340();
    v37 = v9;
    if (!v15)
    {
      break;
    }

LABEL_6:
    v16 = 0;
    a1 = 0;
    v35 = (v31 + 56);
    v36 = v13 & 0xC000000000000001;
    v33 = (v31 + 32);
    v34 = (v31 + 48);
    v38 = MEMORY[0x1E69E7CC0];
    v29 = v6;
    v32 = v15;
    while (v36)
    {
      v17 = MEMORY[0x193B0B410](v16, v13);
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      v19 = v13;
      (*(**(v37 + 16) + 120))(*(v17 + 24), v4, v4);
      v20 = v39;
      (*v35)(v39, 0, 1, v4);

      if ((*v34)(v20, 1, v4) == 1)
      {
        sub_192033970(v20, &unk_1EADEECA0, &qword_19222B090);
      }

      else
      {
        v21 = *v33;
        v22 = v20;
        v23 = v30;
        (*v33)(v30, v22, v4);
        v21(v6, v23, v4);
        v24 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_19207144C(0, v24[2] + 1, 1, v24);
        }

        v26 = v24[2];
        v25 = v24[3];
        v38 = v24;
        if (v26 >= v25 >> 1)
        {
          v38 = sub_19207144C((v25 > 1), v26 + 1, 1, v38);
        }

        v27 = v38;
        v38[2] = v26 + 1;
        v6 = v29;
        v21(&v27[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26], v29, v4);
      }

      v13 = v19;
      ++v16;
      if (v18 == v32)
      {
        goto LABEL_27;
      }
    }

    if (v16 >= *(v14 + 16))
    {
      goto LABEL_23;
    }

    v17 = *(v13 + 8 * v16 + 32);

    v18 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v38 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v38;
}

void *sub_192071270(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_192071474(uint64_t (*a1)(uint64_t *), __n128 a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    goto LABEL_15;
  }

  v5 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      v15 = a4 & 0xC000000000000001;
      v7 = a4 & 0xFFFFFFFFFFFFFF8;
      while (v15)
      {
        v8 = a4;
        v9 = MEMORY[0x193B0B410](v6, a4, a2);
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v17 = v9;
        v11 = a1(&v17);

        if (!v4 && (v11 & 1) == 0)
        {
          ++v6;
          a4 = v8;
          if (v10 != v5)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      if (v6 >= *(v7 + 16))
      {
        goto LABEL_14;
      }

      v8 = a4;
      v9 = *(a4 + 8 * v6 + 32);

      v10 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a4;
      v13 = sub_192228340();
      a4 = v12;
      v5 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void *sub_192071630(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEC90, &qword_19222B080);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v39 = &v29 - v3;
  v4 = sub_192226580();
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v29 - v8;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    swift_beginAccess();
    v9 = sub_192046E20(a1, off_1ED74BF08);
    v10 = swift_endAccess();
    if (!v9)
    {
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_192228400();
      MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
      v40 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF570, &qword_19222B088);
      sub_1922285A0();
      result = sub_192228620();
      __break(1u);
      return result;
    }

    (*(**(v9 + 16) + 80))(v10);
    v13 = sub_1920702EC(v11, v12);

    if (!v13)
    {

      return 0;
    }

    v14 = v13 & 0xFFFFFFFFFFFFFF8;
    if (!(v13 >> 62))
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v37 = v9;
      if (!v15)
      {
        break;
      }

      goto LABEL_6;
    }

    v15 = sub_192228340();
    v37 = v9;
    if (!v15)
    {
      break;
    }

LABEL_6:
    v16 = 0;
    a1 = 0;
    v35 = (v31 + 56);
    v36 = v13 & 0xC000000000000001;
    v33 = (v31 + 32);
    v34 = (v31 + 48);
    v38 = MEMORY[0x1E69E7CC0];
    v29 = v6;
    v32 = v15;
    while (v36)
    {
      v17 = MEMORY[0x193B0B410](v16, v13);
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      v19 = v13;
      (*(**(v37 + 16) + 120))(*(v17 + 24), v4, v4);
      v20 = v39;
      (*v35)(v39, 0, 1, v4);

      if ((*v34)(v20, 1, v4) == 1)
      {
        sub_192033970(v20, &unk_1EADEEC90, &qword_19222B080);
      }

      else
      {
        v21 = *v33;
        v22 = v20;
        v23 = v30;
        (*v33)(v30, v22, v4);
        v21(v6, v23, v4);
        v24 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_192071B84(0, v24[2] + 1, 1, v24);
        }

        v26 = v24[2];
        v25 = v24[3];
        v38 = v24;
        if (v26 >= v25 >> 1)
        {
          v38 = sub_192071B84((v25 > 1), v26 + 1, 1, v38);
        }

        v27 = v38;
        v38[2] = v26 + 1;
        v6 = v29;
        v21(&v27[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26], v29, v4);
      }

      v13 = v19;
      ++v16;
      if (v18 == v32)
      {
        goto LABEL_27;
      }
    }

    if (v16 >= *(v14 + 16))
    {
      goto LABEL_23;
    }

    v17 = *(v13 + 8 * v16 + 32);

    v18 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v38 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v38;
}

char *sub_192071BEC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_192071C64(result, v5, 0);
  }

  return result;
}

char *sub_192071C64(char *a1, int64_t a2, char a3)
{
  result = sub_19205D64C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_192071C84()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_192071CD0(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_192071CD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECF0, &qword_19222D8D0);
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

char *sub_192071DDC(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_192071CD0((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

void *sub_192071E20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEC50, &qword_19222B040);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v39 = &v29 - v3;
  v4 = sub_1922265A0();
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v29 - v8;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    swift_beginAccess();
    v9 = sub_192046E20(a1, off_1ED74BF08);
    v10 = swift_endAccess();
    if (!v9)
    {
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_192228400();
      MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
      v40 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF540, &qword_19222B048);
      sub_1922285A0();
      result = sub_192228620();
      __break(1u);
      return result;
    }

    (*(**(v9 + 16) + 80))(v10);
    v13 = sub_1920702EC(v11, v12);

    if (!v13)
    {

      return 0;
    }

    v14 = v13 & 0xFFFFFFFFFFFFFF8;
    if (!(v13 >> 62))
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v37 = v9;
      if (!v15)
      {
        break;
      }

      goto LABEL_6;
    }

    v15 = sub_192228340();
    v37 = v9;
    if (!v15)
    {
      break;
    }

LABEL_6:
    v16 = 0;
    a1 = 0;
    v35 = (v31 + 56);
    v36 = v13 & 0xC000000000000001;
    v33 = (v31 + 32);
    v34 = (v31 + 48);
    v38 = MEMORY[0x1E69E7CC0];
    v29 = v6;
    v32 = v15;
    while (v36)
    {
      v17 = MEMORY[0x193B0B410](v16, v13);
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      v19 = v13;
      (*(**(v37 + 16) + 120))(*(v17 + 24), v4, v4);
      v20 = v39;
      (*v35)(v39, 0, 1, v4);

      if ((*v34)(v20, 1, v4) == 1)
      {
        sub_192033970(v20, &unk_1EADEEC50, &qword_19222B040);
      }

      else
      {
        v21 = *v33;
        v22 = v20;
        v23 = v30;
        (*v33)(v30, v22, v4);
        v21(v6, v23, v4);
        v24 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_192072424(0, v24[2] + 1, 1, v24);
        }

        v26 = v24[2];
        v25 = v24[3];
        v38 = v24;
        if (v26 >= v25 >> 1)
        {
          v38 = sub_192072424((v25 > 1), v26 + 1, 1, v38);
        }

        v27 = v38;
        v38[2] = v26 + 1;
        v6 = v29;
        v21(&v27[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26], v29, v4);
      }

      v13 = v19;
      ++v16;
      if (v18 == v32)
      {
        goto LABEL_27;
      }
    }

    if (v16 >= *(v14 + 16))
    {
      goto LABEL_23;
    }

    v17 = *(v13 + 8 * v16 + 32);

    v18 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v38 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v38;
}

uint64_t storeEnumTagSinglePayload for ContentSizeCategoryKey.CodableContentSizeCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_19207244C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEC40, &qword_19222B030);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v39 = &v29 - v3;
  v4 = sub_192225D50();
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v29 - v8;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    swift_beginAccess();
    v9 = sub_192046E20(a1, off_1ED74BF08);
    v10 = swift_endAccess();
    if (!v9)
    {
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_192228400();
      MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
      v40 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF530, &qword_19222B038);
      sub_1922285A0();
      result = sub_192228620();
      __break(1u);
      return result;
    }

    (*(**(v9 + 16) + 80))(v10);
    v13 = sub_1920702EC(v11, v12);

    if (!v13)
    {

      return 0;
    }

    v14 = v13 & 0xFFFFFFFFFFFFFF8;
    if (!(v13 >> 62))
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v37 = v9;
      if (!v15)
      {
        break;
      }

      goto LABEL_6;
    }

    v15 = sub_192228340();
    v37 = v9;
    if (!v15)
    {
      break;
    }

LABEL_6:
    v16 = 0;
    a1 = 0;
    v35 = (v31 + 56);
    v36 = v13 & 0xC000000000000001;
    v33 = (v31 + 32);
    v34 = (v31 + 48);
    v38 = MEMORY[0x1E69E7CC0];
    v29 = v6;
    v32 = v15;
    while (v36)
    {
      v17 = MEMORY[0x193B0B410](v16, v13);
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      v19 = v13;
      (*(**(v37 + 16) + 120))(*(v17 + 24), v4, v4);
      v20 = v39;
      (*v35)(v39, 0, 1, v4);

      if ((*v34)(v20, 1, v4) == 1)
      {
        sub_192033970(v20, &unk_1EADEEC40, &qword_19222B030);
      }

      else
      {
        v21 = *v33;
        v22 = v20;
        v23 = v30;
        (*v33)(v30, v22, v4);
        v21(v6, v23, v4);
        v24 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1920729A0(0, v24[2] + 1, 1, v24);
        }

        v26 = v24[2];
        v25 = v24[3];
        v38 = v24;
        if (v26 >= v25 >> 1)
        {
          v38 = sub_1920729A0((v25 > 1), v26 + 1, 1, v38);
        }

        v27 = v38;
        v38[2] = v26 + 1;
        v6 = v29;
        v21(&v27[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26], v29, v4);
      }

      v13 = v19;
      ++v16;
      if (v18 == v32)
      {
        goto LABEL_27;
      }
    }

    if (v16 >= *(v14 + 16))
    {
      goto LABEL_23;
    }

    v17 = *(v13 + 8 * v16 + 32);

    v18 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v38 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v38;
}

char *sub_1920729C8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v12 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_192072AC8(uint64_t (*a1)(id *), __n128 a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    goto LABEL_15;
  }

  v5 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      v16 = a4 & 0xC000000000000001;
      v7 = a4 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v16)
        {
          v8 = a4;
          v9 = MEMORY[0x193B0B410](v6, a4, a2);
        }

        else
        {
          if (v6 >= *(v7 + 16))
          {
            goto LABEL_14;
          }

          v8 = a4;
          v9 = *(a4 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v18 = v9;
        v12 = a1(&v18);

        if (!v4 && (v12 & 1) == 0)
        {
          ++v6;
          a4 = v8;
          if (v11 != v5)
          {
            continue;
          }
        }

        return v12 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v13 = a4;
      v14 = sub_192228340();
      a4 = v13;
      v5 = v14;
    }

    while (v14);
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_192072C88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

char *sub_192072CD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF2C0, &qword_19222CB50);
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

char *sub_192072DE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF2D8, &qword_19222CBB8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_192072EF8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6, char a7, uint64_t a8, __n128 a9)
{
  v50 = a3;
  v49 = &v50;
  result = sub_192071474(sub_192071BAC, a9, v48, a6);
  if ((result & 1) != 0 || !a4)
  {
    return result;
  }

  v16 = 0;
  v17 = *(a4 + 16);
  v18 = (a4 + 32);
  while (v17 != v16)
  {
    v19 = v18[v16++];
    if (v19 == (a5 & 1))
    {
      return result;
    }
  }

  if (v17)
  {
    v46 = a2;
    v47 = a5;
    v53 = MEMORY[0x1E69E7CC0];
    sub_192071C64(0, v17, 0);
    v20 = v53;
    do
    {
      v21 = *v18;
      v50 = 0;
      v51 = 0xE000000000000000;
      v52 = v21;
      result = sub_1922285A0();
      v22 = v50;
      v23 = v51;
      v53 = v20;
      v25 = v20[2];
      v24 = v20[3];
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        result = sub_192071C64((v24 > 1), v25 + 1, 1);
        v20 = v53;
      }

      v20[2] = v26;
      v27 = &v20[2 * v25];
      v27[4] = v22;
      v27[5] = v23;
      ++v18;
      --v17;
    }

    while (v17);
    a5 = v47;
    a2 = v46;
    if (v26 > 1)
    {
      goto LABEL_13;
    }

LABEL_15:
    if (!v26)
    {
      __break(1u);
      return result;
    }

    v33 = v20[4];
    v32 = v20[5];

    goto LABEL_17;
  }

  v20 = MEMORY[0x1E69E7CC0];
  v26 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v26 <= 1)
  {
    goto LABEL_15;
  }

LABEL_13:
  v50 = 91;
  v51 = 0xE100000000000000;
  v53 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  v28 = a7;
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
  v29 = sub_1922278A0();
  v31 = v30;

  MEMORY[0x193B0A990](v29, v31);
  a7 = v28;

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v33 = v50;
  v32 = v51;
LABEL_17:
  if (a7)
  {
    v34 = 0x64657269736564;
  }

  else
  {
    v34 = 7824750;
  }

  if (a7)
  {
    v35 = 0xE700000000000000;
  }

  else
  {
    v35 = 0xE300000000000000;
  }

  if (a7)
  {
    v36 = 0x6C62616C69617661;
  }

  else
  {
    v36 = 6581359;
  }

  v50 = 0;
  v51 = 0xE000000000000000;
  if (a7)
  {
    v37 = 0xE900000000000065;
  }

  else
  {
    v37 = 0xE300000000000000;
  }

  sub_192228400();

  v50 = a1;
  v51 = a2;

  MEMORY[0x193B0A990](10272, 0xE200000000000000);
  MEMORY[0x193B0A990](v36, v37);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v33, v32);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v34, v35);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  LOBYTE(v53) = a5 & 1;
  v38 = sub_192227990();
  MEMORY[0x193B0A990](v38);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v39 = v50;
  v40 = v51;
  swift_beginAccess();
  v41 = *(a8 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 16) = v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v41 = sub_192071CD0(0, *(v41 + 2) + 1, 1, v41);
    *(a8 + 16) = v41;
  }

  v44 = *(v41 + 2);
  v43 = *(v41 + 3);
  if (v44 >= v43 >> 1)
  {
    v41 = sub_192071CD0((v43 > 1), v44 + 1, 1, v41);
  }

  *(v41 + 2) = v44 + 1;
  v45 = &v41[16 * v44];
  *(v45 + 4) = v39;
  *(v45 + 5) = v40;
  *(a8 + 16) = v41;
  return swift_endAccess();
}

uint64_t sub_192073380(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6, char a7, uint64_t a8, __n128 a9)
{
  v51 = a3;
  v50 = &v51;
  result = sub_192071474(sub_192071BAC, a9, v49, a6);
  if ((result & 1) != 0 || !a4)
  {
    return result;
  }

  v16 = 0;
  v17 = a5 & 1;
  v18 = *(a4 + 16);
  v19 = (a4 + 32);
  while (v18 != v16)
  {
    v20 = v19[v16++];
    if (v20 == (a5 & 1))
    {
      return result;
    }
  }

  v48 = a1;
  if (v18)
  {
    v47 = a2;
    v54 = MEMORY[0x1E69E7CC0];
    sub_192071C64(0, v18, 0);
    v21 = v54;
    do
    {
      v22 = *v19;
      v51 = 0;
      v52 = 0xE000000000000000;
      v53 = v22;
      result = sub_1922285A0();
      v23 = v51;
      v24 = v52;
      v54 = v21;
      v26 = v21[2];
      v25 = v21[3];
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        result = sub_192071C64((v25 > 1), v26 + 1, 1);
        v21 = v54;
      }

      v21[2] = v27;
      v28 = &v21[2 * v26];
      v28[4] = v23;
      v28[5] = v24;
      ++v19;
      --v18;
    }

    while (v18);
    v17 = a5 & 1;
    a2 = v47;
    if (v27 > 1)
    {
      goto LABEL_13;
    }

LABEL_15:
    if (!v27)
    {
      __break(1u);
      return result;
    }

    v29 = a2;
    v34 = v21[4];
    v33 = v21[5];

    goto LABEL_17;
  }

  v21 = MEMORY[0x1E69E7CC0];
  v27 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v27 <= 1)
  {
    goto LABEL_15;
  }

LABEL_13:
  v29 = a2;
  v51 = 91;
  v52 = 0xE100000000000000;
  v54 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
  v30 = sub_1922278A0();
  v32 = v31;

  MEMORY[0x193B0A990](v30, v32);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v34 = v51;
  v33 = v52;
LABEL_17:
  if (a7)
  {
    v35 = 0x64657269736564;
  }

  else
  {
    v35 = 7824750;
  }

  if (a7)
  {
    v36 = 0xE700000000000000;
  }

  else
  {
    v36 = 0xE300000000000000;
  }

  if (a7)
  {
    v37 = 0x6C62616C69617661;
  }

  else
  {
    v37 = 6581359;
  }

  v51 = 0;
  v52 = 0xE000000000000000;
  if (a7)
  {
    v38 = 0xE900000000000065;
  }

  else
  {
    v38 = 0xE300000000000000;
  }

  sub_192228400();

  v51 = v48;
  v52 = v29;

  MEMORY[0x193B0A990](10272, 0xE200000000000000);
  MEMORY[0x193B0A990](v37, v38);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v34, v33);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v35, v36);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  LOBYTE(v54) = v17;
  v39 = sub_192227990();
  MEMORY[0x193B0A990](v39);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v40 = v51;
  v41 = v52;
  swift_beginAccess();
  v42 = *(a8 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 16) = v42;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = sub_192071CD0(0, *(v42 + 2) + 1, 1, v42);
    *(a8 + 16) = v42;
  }

  v45 = *(v42 + 2);
  v44 = *(v42 + 3);
  if (v45 >= v44 >> 1)
  {
    v42 = sub_192071CD0((v44 > 1), v45 + 1, 1, v42);
  }

  *(v42 + 2) = v45 + 1;
  v46 = &v42[16 * v45];
  *(v46 + 4) = v40;
  *(v46 + 5) = v41;
  *(a8 + 16) = v42;
  return swift_endAccess();
}

uint64_t sub_1920737F4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, unint64_t a6, int a7, uint64_t a8, __n128 a9)
{
  v61 = a3;
  v60 = &v61;
  result = sub_192071474(sub_192071BAC, a9, v59, a6);
  if (result)
  {
    return result;
  }

  if (!a4)
  {
    return result;
  }

  v61 = a5;
  v16 = MEMORY[0x1EEE9AC00](result);
  v53[2] = &v61;
  result = sub_192072AC8(sub_192073D64, v16, v53, a4);
  if (result)
  {
    return result;
  }

  v58 = a1;
  if (a4 >> 62)
  {
    result = sub_192228340();
    v17 = result;
  }

  else
  {
    v17 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v64 = MEMORY[0x1E69E7CC0];
    result = sub_192071C64(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
      __break(1u);
      goto LABEL_43;
    }

    v54 = a7;
    v55 = a2;
    v56 = a5;
    v57 = a8;
    v18 = v64;
    if ((a4 & 0xC000000000000001) != 0)
    {
      v19 = 0;
      do
      {
        v20 = MEMORY[0x193B0B410](v19, a4);
        v61 = 0;
        v62 = 0xE000000000000000;
        v63 = v20;
        sub_19202A7A8(0, &unk_1ED74A3A0, 0x1E69943A0);
        sub_1922285A0();
        result = swift_unknownObjectRelease();
        v21 = v61;
        v22 = v62;
        v64 = v18;
        v24 = v18[2];
        v23 = v18[3];
        if (v24 >= v23 >> 1)
        {
          result = sub_192071C64((v23 > 1), v24 + 1, 1);
          v18 = v64;
        }

        ++v19;
        v18[2] = v24 + 1;
        v25 = &v18[2 * v24];
        v25[4] = v21;
        v25[5] = v22;
      }

      while (v17 != v19);
    }

    else
    {
      v26 = (a4 + 32);
      sub_19202A7A8(0, &unk_1ED74A3A0, 0x1E69943A0);
      do
      {
        v27 = *v26;
        v61 = 0;
        v62 = 0xE000000000000000;
        v63 = v27;
        result = sub_1922285A0();
        v29 = v61;
        v28 = v62;
        v64 = v18;
        v31 = v18[2];
        v30 = v18[3];
        if (v31 >= v30 >> 1)
        {
          result = sub_192071C64((v30 > 1), v31 + 1, 1);
          v18 = v64;
        }

        v18[2] = v31 + 1;
        v32 = &v18[2 * v31];
        v32[4] = v29;
        v32[5] = v28;
        ++v26;
        --v17;
      }

      while (v17);
    }

    a5 = v56;
    a8 = v57;
    a2 = v55;
    LOBYTE(a7) = v54;
  }

  v33 = v18[2];
  if (v33 <= 1)
  {
    if (v33)
    {
      v38 = v18[4];
      v37 = v18[5];

      goto LABEL_23;
    }

LABEL_43:
    __break(1u);
    return result;
  }

  v61 = 91;
  v62 = 0xE100000000000000;
  v64 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
  v34 = sub_1922278A0();
  v36 = v35;

  MEMORY[0x193B0A990](v34, v36);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v38 = v61;
  v37 = v62;
LABEL_23:
  v39 = (a7 & 1) == 0;
  if (a7)
  {
    v40 = 0x64657269736564;
  }

  else
  {
    v40 = 7824750;
  }

  if (v39)
  {
    v41 = 0xE300000000000000;
  }

  else
  {
    v41 = 0xE700000000000000;
  }

  if (v39)
  {
    v42 = 6581359;
  }

  else
  {
    v42 = 0x6C62616C69617661;
  }

  v61 = 0;
  v62 = 0xE000000000000000;
  if (v39)
  {
    v43 = 0xE300000000000000;
  }

  else
  {
    v43 = 0xE900000000000065;
  }

  sub_192228400();

  v61 = v58;
  v62 = a2;

  MEMORY[0x193B0A990](10272, 0xE200000000000000);
  MEMORY[0x193B0A990](v42, v43);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v38, v37);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v40, v41);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  v64 = a5;
  sub_19202A7A8(0, &unk_1ED74A3A0, 0x1E69943A0);
  v44 = a5;
  v45 = sub_192227990();
  MEMORY[0x193B0A990](v45);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v46 = v61;
  v47 = v62;
  swift_beginAccess();
  v48 = *(a8 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 16) = v48;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v48 = sub_192071CD0(0, *(v48 + 2) + 1, 1, v48);
    *(a8 + 16) = v48;
  }

  v51 = *(v48 + 2);
  v50 = *(v48 + 3);
  if (v51 >= v50 >> 1)
  {
    v48 = sub_192071CD0((v50 > 1), v51 + 1, 1, v48);
  }

  *(v48 + 2) = v51 + 1;
  v52 = &v48[16 * v51];
  *(v52 + 4) = v46;
  *(v52 + 5) = v47;
  *(a8 + 16) = v48;
  return swift_endAccess();
}

unint64_t sub_192073DBC()
{
  result = qword_1EADED278;
  if (!qword_1EADED278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED278);
  }

  return result;
}

unint64_t sub_192073E24()
{
  result = qword_1ED74A070;
  if (!qword_1ED74A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A070);
  }

  return result;
}

unint64_t sub_192073E7C()
{
  result = qword_1ED74A078;
  if (!qword_1ED74A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A078);
  }

  return result;
}

uint64_t WidgetEnvironment.Storage.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_19202CFFC(a1, v10, &unk_1EADEF330, &unk_19222CD40);
  if (!v11)
  {
    sub_192033970(v10, &unk_1EADEF330, &unk_19222CD40);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v3 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  v6 = *&v9[v5];

  v7 = sub_1920740C8(v4, v6);

  return v7 & 1;
}

uint64_t sub_1920740C8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v23 = result;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v24 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = *(result + 48) + 24 * v12;
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    v16 = *(*(result + 56) + 8 * v12);

    v17 = v16;
    v18 = sub_19204437C(v14, v15);
    v20 = v19;

    if ((v20 & 1) == 0)
    {

      return 0;
    }

    sub_19202A7A8(0, &qword_1ED749A88, 0x1E695DFB8);
    v21 = *(*(a2 + 56) + 8 * v18);
    v22 = sub_1922281D0();

    result = v23;
    v7 = v24;
    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v24 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_192074274(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v12 = v8;

      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

BOOL sub_192074324(uint64_t *a1)
{
  v2 = *a1;
  v3 = **(v1 + 16);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return _s9WidgetKit0A13LocalizationsC2eeoiySbAC_ACtFZ_0(v2, v3) & 1;
  }
}

uint64_t sub_19207437C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_192074428(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1922289A0() & 1;
  }
}

unint64_t sub_1920744D4()
{
  result = qword_1ED74AA60;
  if (!qword_1ED74AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AA60);
  }

  return result;
}

unint64_t sub_19207452C()
{
  result = qword_1ED74AA68;
  if (!qword_1ED74AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AA68);
  }

  return result;
}

uint64_t sub_192074584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v56 = a2;
  v57 = a4;
  v58 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v45 - v7;
  v8 = sub_192226F10();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1922265A0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v47 = a3;
  sub_192226E80();
  v55 = v18;
  sub_192074964(v15, v18);
  v19 = *(v11 + 8);
  v51 = v10;
  v19(v15, v10);
  v52 = v19;
  v53 = v11 + 8;
  v45 = *(v4 + 160);
  v20 = v58;
  v45(v58, v18);
  sub_192226E80();
  v21 = v46;
  sub_192074964(v15, v46);
  v19(v15, v10);
  v22 = v48;
  (*(v49 + 16))(v48, v20, v50);
  v23 = sub_19207583C(v22);
  v24 = (*(v4 + 152))(v23, v21);
  v26 = v25;
  v28 = v27;
  v29 = v21;
  v30 = (v45)(v20, v21);
  v32 = v31;
  v33 = v28 & 0x100;
  if ((v28 & 0x100) != 0)
  {
    v26 = 0;
  }

  v34 = v33 >> 8;
  v35 = BYTE1(v33) | v28;
  if (v33)
  {
    v24 = 0;
  }

  v36 = v54;
  sub_192226EA0();
  v37 = sub_192075A34(v24, v34, v26, v35 & 1, v56, v30, v32 & 1, v36);
  sub_192033970(v36, &qword_1EADEF290, &qword_19222CA80);
  v38 = sub_192076CDC();
  v39 = sub_192076F7C();
  v40 = CTFontDescriptorCreateWithTextStyleAndAttributes();

  v41 = sub_19207723C();
  v43 = v51;
  v42 = v52;
  v52(v29, v51);
  sub_19207723C();

  sub_192226D70();
  return v42(v55, v43);
}

uint64_t sub_192074964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEC50, &qword_19222B040);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = sub_1922265A0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - v19;
  v21 = (*(v2 + 144))(a1, v18);
  (*(v2 + 128))(v21);
  v22 = v12[6];
  if (v22(v10, 1, v11) == 1)
  {
    v23 = sub_192033970(v10, &unk_1EADEEC50, &qword_19222B040);
  }

  else
  {
    v33 = a2;
    v24 = v10;
    v25 = v12[4];
    v25(v16, v24, v11);
    v26 = sub_192074FF4(v20, v16);
    v27 = v12[1];
    if (v26)
    {
      v27(v20, v11);
      return (v25)(v33, v16, v11);
    }

    v23 = (v27)(v16, v11);
    a2 = v33;
  }

  (*(v2 + 136))(v23);
  if (v22(v7, 1, v11) == 1)
  {
    sub_192033970(v7, &unk_1EADEEC50, &qword_19222B040);
    return (v12[4])(a2, v20, v11);
  }

  else
  {
    v29 = v12[4];
    v30 = v34;
    v29(v34, v7, v11);
    v31 = sub_192075418(v20, v30);
    v32 = v12[1];
    if (v31)
    {
      v32(v20, v11);
      return (v29)(a2, v30, v11);
    }

    else
    {
      v32(v30, v11);
      return (v29)(a2, v20, v11);
    }
  }
}

uint64_t sub_192074CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_192226590();
  result = sub_192074DF4(a1, v4);
  if ((v6 & 1) != 0 || ((v7 = *(v4 + 16), v8 = result + 1, result < v7) ? (v9 = v8 == v7) : (v9 = 1), v9))
  {

    v10 = sub_1922265A0();
    v11 = *(*(v10 - 8) + 16);

    return v11(a2, a1, v10);
  }

  else if (v8 >= v7)
  {
    __break(1u);
  }

  else
  {
    v12 = sub_1922265A0();
    (*(*(v12 - 8) + 16))(a2, v4 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80)) + *(*(v12 - 8) + 72) * v8, v12);
  }

  return result;
}

uint64_t sub_192074DF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_1922265A0() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_1920C80A8(&qword_1ED749B80, 255, MEMORY[0x1E697F6A0], MEMORY[0x1E697F6B8]);
  v7 = 0;
  while ((sub_192227910() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_192074F18@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1922265A0();
  v7 = *(v4 - 8);
  (*(v7 + 104))(a2, v3, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

BOOL sub_192074FF4(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_1922265A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a1, v3, v8);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = *MEMORY[0x1E697F658];
  if (v13 != *MEMORY[0x1E697F658])
  {
    if (v13 == *MEMORY[0x1E697F690])
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x1E697F698])
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x1E697F680])
    {
      goto LABEL_7;
    }

    if (v13 == *MEMORY[0x1E697F650])
    {
      v14 = 4;
    }

    else if (v13 == *MEMORY[0x1E697F660])
    {
      v14 = 5;
    }

    else if (v13 == *MEMORY[0x1E697F630])
    {
      v14 = 6;
    }

    else if (v13 == *MEMORY[0x1E697F670])
    {
      v14 = 7;
    }

    else if (v13 == *MEMORY[0x1E697F668])
    {
      v14 = 8;
    }

    else if (v13 == *MEMORY[0x1E697F678])
    {
      v14 = 9;
    }

    else if (v13 == *MEMORY[0x1E697F640])
    {
      v14 = 10;
    }

    else
    {
      if (v13 != *MEMORY[0x1E697F648])
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  (v11)(v6, v20, v3);
  v16 = v12(v6, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x1E697F690])
  {
    v17 = 1;
  }

  else if (v16 == *MEMORY[0x1E697F698])
  {
    v17 = 2;
  }

  else
  {
    if (v16 != *MEMORY[0x1E697F680])
    {
      if (v16 == *MEMORY[0x1E697F650])
      {
        v17 = 4;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F660])
      {
        v17 = 5;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F630])
      {
        v17 = 6;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F670])
      {
        v17 = 7;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F668])
      {
        v17 = 8;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F678])
      {
        v17 = 9;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F640])
      {
        v17 = 10;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F648])
      {
        v17 = 11;
        return v14 < v17;
      }

      (*(v4 + 8))(v6, v3);
    }

    v17 = 3;
  }

  return v14 < v17;
}

BOOL sub_192075418(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_1922265A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a2, v3, v8);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = *MEMORY[0x1E697F658];
  if (v13 != *MEMORY[0x1E697F658])
  {
    if (v13 == *MEMORY[0x1E697F690])
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x1E697F698])
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x1E697F680])
    {
      goto LABEL_7;
    }

    if (v13 == *MEMORY[0x1E697F650])
    {
      v14 = 4;
    }

    else if (v13 == *MEMORY[0x1E697F660])
    {
      v14 = 5;
    }

    else if (v13 == *MEMORY[0x1E697F630])
    {
      v14 = 6;
    }

    else if (v13 == *MEMORY[0x1E697F670])
    {
      v14 = 7;
    }

    else if (v13 == *MEMORY[0x1E697F668])
    {
      v14 = 8;
    }

    else if (v13 == *MEMORY[0x1E697F678])
    {
      v14 = 9;
    }

    else if (v13 == *MEMORY[0x1E697F640])
    {
      v14 = 10;
    }

    else
    {
      if (v13 != *MEMORY[0x1E697F648])
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  (v11)(v6, v20, v3);
  v16 = v12(v6, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x1E697F690])
  {
    v17 = 1;
  }

  else if (v16 == *MEMORY[0x1E697F698])
  {
    v17 = 2;
  }

  else
  {
    if (v16 != *MEMORY[0x1E697F680])
    {
      if (v16 == *MEMORY[0x1E697F650])
      {
        v17 = 4;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F660])
      {
        v17 = 5;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F630])
      {
        v17 = 6;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F670])
      {
        v17 = 7;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F668])
      {
        v17 = 8;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F678])
      {
        v17 = 9;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F640])
      {
        v17 = 10;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F648])
      {
        v17 = 11;
        return v14 < v17;
      }

      (*(v4 + 8))(v6, v3);
    }

    v17 = 3;
  }

  return v14 < v17;
}

uint64_t sub_19207583C(uint64_t a1)
{
  v2 = sub_192226F10();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == *MEMORY[0x1E6980EE8])
  {
    return 0;
  }

  if (v4 == *MEMORY[0x1E6980F00])
  {
    return 1;
  }

  if (v4 == *MEMORY[0x1E6980F08])
  {
    return 2;
  }

  if (v4 == *MEMORY[0x1E6980F10])
  {
    return 3;
  }

  if (v4 == *MEMORY[0x1E6980F38])
  {
    return 4;
  }

  if (v4 == *MEMORY[0x1E6980EF0])
  {
    return 5;
  }

  if (v4 == *MEMORY[0x1E6980EF8])
  {
    return 6;
  }

  if (v4 == *MEMORY[0x1E6980F18])
  {
    return 7;
  }

  if (v4 == *MEMORY[0x1E6980F30])
  {
    return 8;
  }

  if (v4 == *MEMORY[0x1E6980F20])
  {
    return 9;
  }

  if (v4 == *MEMORY[0x1E6980F28])
  {
    return 10;
  }

  (*(v3 + 8))(a1, v2);
  return 12;
}

uint64_t sub_192075A34(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v9 = v8;
  v63 = a8;
  v61 = a7;
  v62 = a2;
  v55 = a3;
  v56 = a6;
  v58 = a4;
  v57 = a1;
  v11 = sub_192225D00();
  v65 = *(v11 - 8);
  v66 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v64 = &v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC8, &qword_192242DC0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v54 - v16;
  v18 = sub_192226DA0();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = (*(v8 + 176))(v20);
  sub_19202CFFC(a5, v17, &qword_1EADEFEC8, &qword_192242DC0);
  v24 = *(v19 + 48);
  if (v24(v17, 1, v18) == 1)
  {
    (*(v19 + 104))(v22, *MEMORY[0x1E6980E20], v18);
    result = v24(v17, 1, v18);
    v26 = v22;
    if (result != 1)
    {
      result = sub_192033970(v17, &qword_1EADEFEC8, &qword_192242DC0);
    }
  }

  else
  {
    result = (*(v19 + 32))(v22, v17, v18);
    v26 = v22;
  }

  if (*MEMORY[0x1E69658E0])
  {
    v27 = v18;
    v28 = *MEMORY[0x1E69658E0];
    v60 = v26;
    v29 = sub_1920765C0();
    type metadata accessor for CFString(0);
    v70 = v30;
    *&v69 = v29;
    sub_19203BEDC(&v69, v68);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v23;
    sub_1920767A8(v68, v28, isUniquelyReferenced_nonNull_native);

    v32 = v67;
    v33 = MEMORY[0x1E69E7DE0];
    if ((v61 & 1) == 0)
    {
      v34 = sub_192198CD8();
      v35 = *MEMORY[0x1E6965970];
      v70 = v33;
      *&v69 = v34;
      sub_19203BEDC(&v69, v68);
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v32;
      sub_1920767A8(v68, v35, v36);
      v32 = v67;
    }

    v37 = (*(v9 + 168))();
    v38 = *MEMORY[0x1E6965898];
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFED0, &unk_192231E40);
    *&v69 = v32;
    sub_19203BEDC(&v69, v68);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v37;
    sub_1920767A8(v68, v38, v39);
    v40 = v67;
    if (v62)
    {
      v41 = v64;
    }

    else
    {
      v42 = *MEMORY[0x1E6965848];
      v70 = v33;
      *&v69 = v57;
      sub_19203BEDC(&v69, v68);
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v40;
      sub_1920767A8(v68, v42, v43);
      v40 = v67;
      v41 = v64;
      if ((v58 & 1) == 0)
      {
        v44 = *MEMORY[0x1E69657F8];
        v70 = v33;
        *&v69 = v55;
        sub_19203BEDC(&v69, v68);
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v67 = v40;
        sub_1920767A8(v68, v44, v45);
        v40 = v67;
      }
    }

    sub_19202CFFC(v63, v41, &qword_1EADEF290, &qword_19222CA80);
    v47 = v65;
    v46 = v66;
    if ((*(v65 + 48))(v41, 1, v66) == 1)
    {
      sub_192033970(v41, &qword_1EADEF290, &qword_19222CA80);
LABEL_20:
      sub_192076C84();
      v53 = sub_192227830();

      (*(v19 + 8))(v60, v27);
      return v53;
    }

    v48 = v59;
    (*(v47 + 16))(v59, v41, v46);
    v49 = (*(v47 + 88))(v48, v46);
    if (v49 != *MEMORY[0x1E697E9F8])
    {
      if (v49 == *MEMORY[0x1E697E9F0])
      {
        v50 = 1;
LABEL_19:
        (*(v47 + 8))(v41, v46);
        v51 = *MEMORY[0x1E69657F0];
        v70 = MEMORY[0x1E69E6530];
        *&v69 = v50;
        sub_19203BEDC(&v69, v68);
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v67 = v40;
        sub_1920767A8(v68, v51, v52);
        goto LABEL_20;
      }

      (*(v47 + 8))(v59, v46);
    }

    v50 = 0;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

unint64_t sub_192076094()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
  inited = swift_initStackObject();
  v1 = *MEMORY[0x1E6965870];
  *(inited + 32) = *MEMORY[0x1E6965870];
  *(inited + 16) = xmmword_19222B480;
  *(inited + 64) = MEMORY[0x1E69E6530];
  *(inited + 40) = 0x8000;
  v2 = v1;
  v3 = sub_19207614C(inited);
  swift_setDeallocating();
  sub_192076558(inited + 32);
  return v3;
}

unint64_t sub_19207614C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09E8, &qword_192236200);
    v3 = sub_1922286C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_19202CFFC(v4, &v11, &qword_1EADEF190, &qword_19222C030);
      v5 = v11;
      result = sub_192076274(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_19203BEDC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_192076274(uint64_t a1)
{
  sub_192228AD0();
  type metadata accessor for CFString(0);
  sub_19205E134(&qword_1ED74B7C0, type metadata accessor for CFString, &unk_19222B3D0);
  sub_192225580();
  v2 = sub_192228B30();

  return sub_19207644C(a1, v2);
}

uint64_t sub_192076370(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_19207644C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_19205E134(&qword_1ED74B7C0, type metadata accessor for CFString, &unk_19222B3D0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_192225570();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_192076558(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF190, &qword_19222C030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1920765C0()
{
  v1 = v0;
  v2 = sub_192226DA0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  result = (*(v3 + 88))(v6, v2);
  if (result == *MEMORY[0x1E6980E20])
  {
    result = *MEMORY[0x1E69658B8];
    if (*MEMORY[0x1E69658B8])
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x1E6980E10])
  {
    result = *MEMORY[0x1E69658D0];
    if (*MEMORY[0x1E69658D0])
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  if (result != *MEMORY[0x1E6980E28])
  {
    goto LABEL_10;
  }

  result = *MEMORY[0x1E69658C8];
  if (!*MEMORY[0x1E69658C8])
  {
    __break(1u);
LABEL_10:
    if (result == *MEMORY[0x1E6980E08])
    {
      result = *MEMORY[0x1E69658C0];
      if (*MEMORY[0x1E69658C0])
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (*MEMORY[0x1E69658B8])
    {
      v8 = *(v3 + 8);
      v9 = *MEMORY[0x1E69658B8];
      v8(v6, v2);
      return v9;
    }

    __break(1u);
    return result;
  }

LABEL_12:

  return result;
}

_OWORD *sub_1920767A8(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_192076274(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_19213EF6C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1920768E8(v13, a3 & 1);
    v8 = sub_192076274(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_192228A40();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return sub_19203BEDC(a1, v19);
  }

  else
  {
    sub_192076C10(v8, a2, a1, v18);

    return a2;
  }
}

void sub_1920768E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09E8, &qword_192236200);
  v6 = sub_1922286A0();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_19203BEDC(v21, v32);
      }

      else
      {
        sub_19202A98C(v21, v32);
        v22 = v20;
      }

      sub_192228AD0();
      type metadata accessor for CFString(0);
      sub_192076BC8(&qword_1ED74B7C0, type metadata accessor for CFString, &unk_19222B3D0);
      sub_192225580();
      v23 = sub_192228B30();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      sub_19203BEDC(v32, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

uint64_t sub_192076BC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_192076C10(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_19203BEDC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_192076C84()
{
  result = qword_1ED74B7B8;
  if (!qword_1ED74B7B8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B7B8);
  }

  return result;
}

id sub_192076CDC()
{
  v1 = v0;
  v2 = sub_192226F10();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E6980EE8])
  {
    v8 = MEMORY[0x1E6965B20];
  }

  else if (v7 == *MEMORY[0x1E6980F00])
  {
    v8 = MEMORY[0x1E6965B28];
  }

  else if (v7 == *MEMORY[0x1E6980F08])
  {
    v8 = MEMORY[0x1E6965B30];
  }

  else if (v7 == *MEMORY[0x1E6980F10])
  {
    v8 = MEMORY[0x1E6965B38];
  }

  else if (v7 == *MEMORY[0x1E6980F38])
  {
    v8 = MEMORY[0x1E6965AE0];
  }

  else if (v7 == *MEMORY[0x1E6980EF0])
  {
    v8 = MEMORY[0x1E6965B18];
  }

  else if (v7 == *MEMORY[0x1E6980EF8])
  {
    v8 = MEMORY[0x1E6965AB0];
  }

  else if (v7 == *MEMORY[0x1E6980F18])
  {
    v8 = MEMORY[0x1E6965AB8];
  }

  else if (v7 == *MEMORY[0x1E6980F30])
  {
    v8 = MEMORY[0x1E6965AD0];
  }

  else if (v7 == *MEMORY[0x1E6980F20])
  {
    v8 = MEMORY[0x1E6965AC0];
  }

  else
  {
    if (v7 != *MEMORY[0x1E6980F28])
    {
      v11 = *(v3 + 8);
      v12 = *MEMORY[0x1E6965AB0];
      v11(v6, v2);
      return v12;
    }

    v8 = MEMORY[0x1E6965AC8];
  }

  v9 = *v8;

  return v9;
}

id sub_192076F7C()
{
  v1 = v0;
  v2 = sub_1922265A0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E697F658])
  {
    v8 = MEMORY[0x1E69656D0];
  }

  else if (v7 == *MEMORY[0x1E697F690])
  {
    v8 = MEMORY[0x1E69656C0];
  }

  else if (v7 == *MEMORY[0x1E697F698])
  {
    v8 = MEMORY[0x1E69656B8];
  }

  else if (v7 == *MEMORY[0x1E697F680])
  {
    v8 = MEMORY[0x1E69656B0];
  }

  else if (v7 == *MEMORY[0x1E697F650])
  {
    v8 = MEMORY[0x1E69656C8];
  }

  else if (v7 == *MEMORY[0x1E697F660])
  {
    v8 = MEMORY[0x1E69656D8];
  }

  else if (v7 == *MEMORY[0x1E697F630])
  {
    v8 = MEMORY[0x1E69656E0];
  }

  else if (v7 == *MEMORY[0x1E697F670])
  {
    v8 = MEMORY[0x1E6965690];
  }

  else if (v7 == *MEMORY[0x1E697F668])
  {
    v8 = MEMORY[0x1E6965688];
  }

  else if (v7 == *MEMORY[0x1E697F678])
  {
    v8 = MEMORY[0x1E6965698];
  }

  else if (v7 == *MEMORY[0x1E697F640])
  {
    v8 = MEMORY[0x1E69656A0];
  }

  else
  {
    if (v7 != *MEMORY[0x1E697F648])
    {
      v11 = *(v3 + 8);
      v12 = *MEMORY[0x1E69656B0];
      v11(v6, v2);
      return v12;
    }

    v8 = MEMORY[0x1E69656A8];
  }

  v9 = *v8;

  return v9;
}

CTFontDescriptorRef sub_19207723C()
{
  v1 = v0;
  if (qword_1ED74A010 != -1)
  {
    swift_once();
    v1 = v0;
  }

  if (byte_1ED74C7A8 == 2 || (byte_1ED74C7A8 & 1) == 0)
  {

    return v1;
  }

  else
  {
    original = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
    inited = swift_initStackObject();
    v3 = *MEMORY[0x1E69657E0];
    *(inited + 32) = *MEMORY[0x1E69657E0];
    *(inited + 16) = xmmword_19222B480;
    *(inited + 64) = MEMORY[0x1E69E63B0];
    *(inited + 40) = 0x3FD51EB851EB851FLL;
    v4 = v3;
    sub_19207614C(inited);
    swift_setDeallocating();
    sub_192033970(inited + 32, &qword_1EADEF190, &qword_19222C030);
    type metadata accessor for CFString(0);
    sub_192076C84();
    v5 = sub_192227830();

    CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(original, v5);

    return CopyWithAttributes;
  }
}

uint64_t sub_1920773C0()
{
  if (sub_192077438())
  {
    goto LABEL_6;
  }

  if (qword_1ED74BAE8 != -1)
  {
    swift_once();
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
LABEL_6:
    result = CTFontHasExuberatedLineHeight();
  }

  else
  {
    result = 2;
  }

  byte_1ED74C7A8 = result;
  return result;
}

unint64_t sub_192077438()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = sub_192227930();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1922282B0();
    swift_unknownObjectRelease();
    sub_192033970(v8, &unk_1EADEF330, &unk_19222CD40);
    v4 = [v0 standardUserDefaults];
    v5 = sub_192227930();
    v6 = [v4 BOOLForKey_];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    sub_192033970(v8, &unk_1EADEF330, &unk_19222CD40);
    if (qword_1ED74BAE8 != -1)
    {
      swift_once();
    }

    return dyld_program_sdk_at_least() ^ 1;
  }

  return v6;
}

uint64_t sub_1920775C4()
{
  result = getWKSystemVersionSDK_Dawn();
  qword_1ED74BAF0 = result;
  return result;
}

double WidgetEnvironment.subscript.setter(uint64_t a1, void *a2)
{
  sub_19207762C(a1, a2);

  return result;
}

void sub_19207762C(uint64_t a1, void *a2)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v6 = *v2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v7 = type metadata accessor for WidgetEnvironment.Storage();
    v8 = objc_allocWithZone(v7);
    v9 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v8[v9] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v10 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v11 = *&v6[v10];
    swift_beginAccess();
    *&v8[v9] = v11;

    v13.receiver = v8;
    v13.super_class = v7;
    v12 = objc_msgSendSuper2(&v13, sel_init);

    *v2 = v12;
  }

  sub_19207772C(a1, a2);
}

void sub_19207772C(uint64_t a1, void *a2)
{
  if (qword_1ED74BCA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = sub_192046E20(a2, off_1ED74BF08);
  v5 = swift_endAccess();
  if (v4)
  {
    v6 = (*(**(v4 + 16) + 80))(v5);
    v8 = v6;
    v10 = v9;
    v12 = v11;
    if (a1)
    {
      MEMORY[0x1EEE9AC00](v6);
      sub_192227C40();
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      swift_getWitnessTable();
      v13 = sub_192227A90();
    }

    else
    {
      v13 = 0;
    }

    sub_192047008(v13, v8, v10, v12, v7);
  }

  else
  {
    sub_192228400();
    MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
    sub_192228580();
    sub_192228970();
    sub_192228620();
    __break(1u);
  }
}

void sub_1920779C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v16 = *(*a3 + *MEMORY[0x1E69E6CE8] + 8);
  v9 = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a1, v9);
  v11 = (*(**(a2 + 16) + 128))(v15);
  if (v4)
  {

    __swift_destroy_boxed_opaque_existential_1(v15);
    *a4 = 0;
  }

  else
  {
    v12 = v11;
    v17 = a4;
    __swift_destroy_boxed_opaque_existential_1(v15);
    type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
    v13 = sub_192228580();
    swift_allocObject();
    v14 = sub_192042954(a3, a1, v12, a2, v13);
    *v17 = v14;
  }
}

uint64_t getEnumTagSinglePayload for WidgetRenderScheme(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_192077C0C(char a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t))
{
  if ((a1 & 1) == 0)
  {
    result = MEMORY[0x1E69E7CC0];
    if ((a1 & 2) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = a2(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v6 = *(result + 16);
  v5 = *(result + 24);
  if (v6 >= v5 >> 1)
  {
    result = a2(v5 > 1, v6 + 1, 1, result);
  }

  *(result + 16) = v6 + 1;
  *(result + v6 + 32) = 0;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    v7 = result;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v7;
    }

    else
    {
      result = a2(0, *(v7 + 16) + 1, 1, v7);
    }

    v9 = *(result + 16);
    v8 = *(result + 24);
    if (v9 >= v8 >> 1)
    {
      result = a2(v8 > 1, v9 + 1, 1, result);
    }

    *(result + 16) = v9 + 1;
    *(result + v9 + 32) = 1;
  }

  return result;
}

unsigned __int8 *sub_192077D38@<X0>(unsigned __int8 *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  if (v2 == 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2 + 1;
  }

  *a2 = v3;
  return result;
}

id TimelineRequest.__allocating_init(widget:environment:fileHandle:)(void *a1, void **a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_192077DB8(a1, a2, a3);

  return v8;
}

id sub_192077DB8(void *a1, void **a2, uint64_t a3)
{
  v4 = v3;
  v6 = *a2;
  *&v4[OBJC_IVAR____TtC9WidgetKit15TimelineRequest_widget] = a1;
  KeyPath = swift_getKeyPath();
  v8 = a1;
  v9 = v6;
  v10 = v9;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v11 = type metadata accessor for WidgetEnvironment.Storage();
    v12 = objc_allocWithZone(v11);
    v13 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v12[v13] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v14 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v15 = *&v9[v14];
    swift_beginAccess();
    *&v12[v13] = v15;

    v27.receiver = v12;
    v27.super_class = v11;
    v10 = objc_msgSendSuper2(&v27, sel_init);
  }

  sub_19204C8C0(0, KeyPath);

  v16 = swift_getKeyPath();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v17 = type metadata accessor for WidgetEnvironment.Storage();
    v18 = objc_allocWithZone(v17);
    v19 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v18[v19] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v20 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v21 = *&v10[v20];
    swift_beginAccess();
    *&v18[v19] = v21;

    v26.receiver = v18;
    v26.super_class = v17;
    v22 = objc_msgSendSuper2(&v26, sel_init);

    v10 = v22;
  }

  sub_19204C8C0(0, v16);

  *&v4[OBJC_IVAR____TtC9WidgetKit15TimelineRequest_environment] = v10;
  *&v4[OBJC_IVAR____TtC9WidgetKit15TimelineRequest_fileHandle] = a3;
  v25.receiver = v4;
  v25.super_class = type metadata accessor for TimelineRequest();
  return objc_msgSendSuper2(&v25, sel_init);
}

uint64_t ViewableTimelineEntry.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_192225150();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_19207804C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A70, &qword_192236280);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 24 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 24 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;

        v23 = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1920781D4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_192228310() + 1) & ~v5;
    do
    {
      sub_192228AD0();

      sub_1922279B0();
      v9 = sub_192228B30();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = v11 + 24 * v3;
        v13 = (v11 + 24 * v6);
        if (v3 != v6 || v12 >= v13 + 24)
        {
          v14 = *v13;
          *(v12 + 16) = *(v13 + 2);
          *v12 = v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

double sub_192078470(unint64_t a1, char a2, uint64_t a3, void (**a4)(void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  if (a1 >> 62)
  {
    if (sub_192228340())
    {
      v8 = sub_192228340();
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v12 = v8;
      v13 = 2;
      v9 = swift_allocObject();
      *(v9 + 16) = a1;
      *(v9 + 24) = a2 & 1;
      *(v9 + 32) = sub_1920B3B6C;
      *(v9 + 40) = v7;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1920B3B6C;
      *(v10 + 24) = v7;

      _Block_copy(a4);

      sub_192031418(&v12, sub_192078A98, v9, sub_1921C940C, v10);

      goto LABEL_7;
    }
  }

  _Block_copy(a4);
  a4[2](a4, 0);
LABEL_7:

  return result;
}

uint64_t sub_192078614()
{

  return swift_deallocObject();
}

void *sub_19207866C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_19207879C(v5, 0);
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

  result = sub_1922284E0();
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
        v10 = sub_192227A00();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_19207879C(v10, 0);
        result = sub_1922283F0();
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

void *sub_19207879C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0540, &qword_192234A98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_192078810(uint64_t a1, unint64_t a2)
{
  v3 = sub_19207866C(a1, a2);
  sub_19207885C(&unk_1F06A7760);
  return v3;
}

uint64_t sub_19207885C(uint64_t result)
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

  result = sub_19212A8C8(result, v11, 1, v3);
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

void sub_192078948(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for TimelineRequest();
  v13 = sub_192227B60();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a6;
  v14[5] = a7;
  v16[4] = sub_1921C8CEC;
  v16[5] = v14;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1921C9404;
  v16[3] = &block_descriptor_240;
  v15 = _Block_copy(v16);

  [a1 getTimelinesWithRequests:v13 isPreview:a5 & 1 completion:v15];
  _Block_release(v15);
}

void sub_192078B10(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9WidgetKit15TimelineRequest_widget);
  v4 = sub_192227930();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC9WidgetKit15TimelineRequest_environment);
  v6 = sub_192227930();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9WidgetKit15TimelineRequest_fileHandle);
  v8 = sub_192227930();
  [a1 encodeObject:v7 forKey:v8];
}

Swift::Void __swiftcall WidgetEnvironment.Storage.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_1920C80A8(&qword_1ED74B598, v2, type metadata accessor for WidgetEnvironment.Storage, &protocol conformance descriptor for WidgetEnvironment.Storage);
    v3 = with.super.isa;
    sub_192227FF0();
  }

  else
  {
    sub_192224F70();
    swift_allocObject();
    sub_192224F60();
    sub_192224F40();
    sub_1920C80A8(&qword_1ED74B598, v4, type metadata accessor for WidgetEnvironment.Storage, &protocol conformance descriptor for WidgetEnvironment.Storage);
    v5 = sub_192224F50();
    v7 = v6;
    v8 = sub_192225050();
    v9 = sub_192227930();
    [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

    sub_192039140(v5, v7);
  }
}

uint64_t sub_192078E78(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF1218, &qword_192239710);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192046078();
  sub_192228B90();
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  sub_1920460CC(&qword_1ED74A658, MEMORY[0x1E69940B8]);
  sub_1922288C0();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_availableLocalizations);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
    sub_19204611C(&qword_1ED74BB10, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1922288C0();
    v10[14] = 2;
    sub_192228870();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1920790E8()
{
  result = qword_1ED74A8D8;
  if (!qword_1ED74A8D8)
  {
    type metadata accessor for WidgetDescriptorConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A8D8);
  }

  return result;
}

uint64_t sub_192079140(uint64_t a1)
{
  result = type metadata accessor for WidgetDescriptor(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1920791AC()
{
  result = qword_1ED74C608;
  if (!qword_1ED74C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74C608);
  }

  return result;
}

uint64_t type metadata accessor for WidgetDescriptorConfiguration(uint64_t a1)
{
  result = qword_1ED74A8A0;
  if (!qword_1ED74A8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_192079348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double WidgetConfiguration.preferredBackgroundStyle(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v8 = v5;
  sub_1920793F8(KeyPath, &v8, a2, a3);

  return result;
}

double sub_1920793F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, v9);
  v12 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a3;
  *(v13 + 3) = v7;
  *(v13 + 4) = a4;
  *(v13 + 5) = a1;
  (*(v8 + 32))(&v13[v12], v11, v7);

  sub_1920797E8(sub_19207F4BC, v13, a3, a4);

  return result;
}

uint64_t sub_192079588()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t WidgetConfiguration.configurationDisplayName(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_192079D80(0xD000000000000018, 0x800000019224EE60, a1, a2, a3 & 1, a4);
  sub_19207A2A8(v8, v9, a5, a6, &unk_1922468A8);
}

uint64_t sub_1920796E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{

  v8 = sub_192226FC0();
  v10 = v9;
  v12 = v11;
  a7(v8, v9);
  sub_19207A338(v8, v10, v12 & 1);
}

double sub_1920797E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1920791AC();

  sub_192226630();

  return result;
}

uint64_t sub_1920798A8()
{

  return swift_deallocObject();
}

double WidgetConfiguration.privateSupportedFamilies(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = a1;
  sub_1920793F8(KeyPath, &v8, a2, a3);

  return result;
}

uint64_t WidgetConfiguration.supportedFamilies(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v13 = a2;
    v6 = a3;
    v14 = MEMORY[0x1E69E7CC0];
    sub_19207A250(0, v3, 0);
    v4 = v14;
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      v9 = qword_192246938[v8];
      v11 = *(v14 + 16);
      v10 = *(v14 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_19207A250((v10 > 1), v11 + 1, 1);
      }

      *(v14 + 16) = v11 + 1;
      *(v14 + 8 * v11 + 32) = v9;
      --v3;
    }

    while (v3);
    a3 = v6;
    a2 = v13;
  }

  WidgetConfiguration.privateSupportedFamilies(_:)(v4, a2, a3);
}

char *sub_192079A60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF480, &qword_19222D870);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t StaticConfiguration.init<A>(kind:provider:content:)@<X0>(uint64_t (*a1)@<X0>(char **a1@<X8>)@<X0>, uint64_t (*a2)@<X0>(char **a1@<X8>)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)@<X0>(char **a1@<X8>)@<X8>, uint64_t a10)
{
  v15 = *(a7 - 8);
  v16 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v17 = (*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = a6;
  *(v18 + 3) = a7;
  *(v18 + 4) = a8;
  *(v18 + 5) = a10;
  *(v18 + 6) = a1;
  *(v18 + 7) = a2;
  *(v18 + 8) = 0;
  *(v18 + 9) = 0;
  (*(v15 + 32))(v18 + v16, a3, a7);
  v19 = (v18 + v17);
  *v19 = a4;
  v19[1] = a5;
  *a9 = sub_1920DAD98;
  a9[1] = v18;
  a9[2] = a1;
  a9[3] = a2;
  a9[4] = 0;
  a9[5] = 0;
}

uint64_t sub_192079CA4()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_192079D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v8 = sub_1922264E0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  sub_192226F80();
  (*(v9 + 16))(v11, v14, v8);
  v15 = (*(v9 + 88))(v11, v8);
  if (v15 == *MEMORY[0x1E697F338])
  {
    (*(v9 + 8))(v14, v8);
    (*(v9 + 96))(v11, v8);
    return *v11;
  }

  if (v15 != *MEMORY[0x1E697F340])
  {
    if (v15 != *MEMORY[0x1E697F330])
    {
      (*(v9 + 8))(v11, v8);
    }

    v22 = 0;
    v23 = 0xE000000000000000;
    sub_192228400();

    v22 = 0xD000000000000022;
    v23 = 0x800000019224BAB0;
    MEMORY[0x193B0A990](a1, a2);
    goto LABEL_14;
  }

  (*(v9 + 96))(v11, v8);
  if (v11[40])
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_192228400();

    v22 = 0xD000000000000014;
    v23 = 0x800000019224BB10;
    MEMORY[0x193B0A990](a1, a2);
    MEMORY[0x193B0A990](0xD000000000000012, 0x800000019224BB30);
LABEL_14:
    result = sub_192228620();
    __break(1u);
    return result;
  }

  v17 = *(v11 + 4);
  if (v17)
  {
    v18 = *(v11 + 4);
  }

  else
  {
    v18 = [objc_opt_self() mainBundle];
    v17 = 0;
  }

  v19 = v17;
  v20 = sub_192224EF0();

  (*(v9 + 8))(v14, v8);
  return v20;
}

double sub_19207A148(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v9 = a1;
  sub_1920793F8(KeyPath, &v9, a2, a3);

  return result;
}

double WidgetConfiguration.enableContentMarginsForFirstParty(_:)(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = a1;
  sub_1920793F8(KeyPath, &v8, a2, a3);

  return result;
}

char *sub_19207A250(char *a1, int64_t a2, char a3)
{
  result = sub_192079A60(a1, a2, a3, *v3);
  *v3 = result;
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

double sub_19207A2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyPath = swift_getKeyPath();
  v11[0] = a1;
  v11[1] = a2;

  sub_1920793F8(KeyPath, v11, a3, a4);

  return result;
}

void sub_19207A338(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_19207A364()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF09C0, &unk_192235EE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF09B8, &qword_192235EE0);
  sub_19207A51C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_19207A464()
{
  result = qword_1ED749F80;
  if (!qword_1ED749F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF09B0, &qword_192235ED8);
    sub_19213ADD0();
    sub_192031E74(&qword_1ED74A1B8, &qword_1EADF00C0, &qword_1922322D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749F80);
  }

  return result;
}

unint64_t sub_19207A51C()
{
  result = qword_1ED749F78;
  if (!qword_1ED749F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF09B8, &qword_192235EE0);
    sub_19207A464();
    sub_192031E74(&qword_1ED74A0B8, &qword_1EADF09D8, &qword_1922360B8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749F78);
  }

  return result;
}

unint64_t sub_19207A5D4()
{
  result = qword_1ED749F90;
  if (!qword_1ED749F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF09A0, &qword_192235EC8);
    sub_19207A660();
    sub_19206D880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749F90);
  }

  return result;
}

unint64_t sub_19207A660()
{
  result = qword_1ED749F98;
  if (!qword_1ED749F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0998, &qword_192235EC0);
    sub_19207A6EC();
    sub_19207ACE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749F98);
  }

  return result;
}

unint64_t sub_19207A6EC()
{
  result = qword_1ED749FA0;
  if (!qword_1ED749FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0990, &qword_192235EB8);
    sub_19207A778();
    sub_19207AC94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749FA0);
  }

  return result;
}

unint64_t sub_19207A778()
{
  result = qword_1ED749FA8;
  if (!qword_1ED749FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0988, &qword_192235EB0);
    sub_19207A804();
    sub_19207AC40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749FA8);
  }

  return result;
}

unint64_t sub_19207A804()
{
  result = qword_1ED749FB0;
  if (!qword_1ED749FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0980, &qword_192235EA8);
    sub_19207A890();
    sub_19207ABEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749FB0);
  }

  return result;
}

unint64_t sub_19207A890()
{
  result = qword_1ED749FB8;
  if (!qword_1ED749FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0978, &qword_192235EA0);
    sub_19207A91C();
    sub_19207AB98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749FB8);
  }

  return result;
}

unint64_t sub_19207A91C()
{
  result = qword_1ED749FC8;
  if (!qword_1ED749FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0970, &qword_192235E98);
    sub_19207A9A8();
    sub_19207AB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749FC8);
  }

  return result;
}

unint64_t sub_19207A9A8()
{
  result = qword_1ED749FE8;
  if (!qword_1ED749FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0968, &qword_192235E90);
    sub_19207AA60();
    sub_192031E74(&qword_1ED74AF18, &qword_1EADF09D0, &qword_192235F60, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749FE8);
  }

  return result;
}

unint64_t sub_19207AA60()
{
  result = qword_1ED749FF0;
  if (!qword_1ED749FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0960, &qword_192235E88);
    sub_192031E74(&qword_1ED74A4A0, &qword_1EADF09C8, &qword_192235F28, MEMORY[0x1E697FDF8]);
    sub_192031E74(&qword_1ED74BAD0, &qword_1EADEFD68, &qword_1922360C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749FF0);
  }

  return result;
}

unint64_t sub_19207AB44()
{
  result = qword_1ED74AE88;
  if (!qword_1ED74AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AE88);
  }

  return result;
}

unint64_t sub_19207AB98()
{
  result = qword_1ED74A048;
  if (!qword_1ED74A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A048);
  }

  return result;
}

unint64_t sub_19207ABEC()
{
  result = qword_1ED74A060;
  if (!qword_1ED74A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A060);
  }

  return result;
}

unint64_t sub_19207AC40()
{
  result = qword_1ED74A050;
  if (!qword_1ED74A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A050);
  }

  return result;
}

unint64_t sub_19207AC94()
{
  result = qword_1ED74A058;
  if (!qword_1ED74A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A058);
  }

  return result;
}

unint64_t sub_19207ACE8()
{
  result = qword_1ED74AE20[0];
  if (!qword_1ED74AE20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED74AE20);
  }

  return result;
}

unint64_t sub_19207AD50()
{
  result = qword_1ED74A0D0;
  if (!qword_1ED74A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A0D0);
  }

  return result;
}

void sub_19207ADEC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v68 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0B60, &qword_192236FC8);
  MEMORY[0x1EEE9AC00](v66);
  v6 = &v58 - v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0B68, &unk_192236FD0);
  MEMORY[0x1EEE9AC00](v67);
  v8 = &v58 - v7;
  v64 = type metadata accessor for ContentMarginsContext(0);
  MEMORY[0x1EEE9AC00](v64);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1922261D0();
  v69 = *(v11 - 8);
  *&v70 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v65 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  *&v71 = &v58 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v58 - v19;
  if (xmmword_1ED74CC80)
  {
    v62 = v8;
    v20 = qword_1ED74CC90;
    v60 = *xmmword_1ED74CC80;
    v78 = xmmword_1ED74CC80;
    v81 = *(v3 + 8);
    v21 = *v3;
    v80 = *v3;
    v22 = v81;
    v63 = a2;
    v61 = v6;
    if (v81 == 1)
    {

      sub_19202CFFC(&v80, &v73, &qword_1EADF0B70, &qword_192236FE0);
      v23 = v21;
    }

    else
    {

      sub_19202CFFC(&v80, &v73, &qword_1EADF0B70, &qword_192236FE0);
      sub_192227FA0();
      v24 = sub_192226D00();
      sub_1922257A0();

      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      v23 = v21;
      swift_getAtKeyPath();
      sub_192033970(&v80, &qword_1EADF0B70, &qword_192236FE0);
      (*(v69 + 8))(v13, v70);
      v21 = v73;
    }

    v25 = v72;
    (*(*(v20 + 8) + 8))(v21, v60);

    sub_19202CFFC(v25, v71, &qword_1EADEEE20, &qword_19222B670);
    if (v22)
    {
      v26 = v23;
    }

    else
    {

      sub_192227FA0();
      v27 = sub_192226D00();
      sub_1922257A0();

      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      sub_192033970(&v80, &qword_1EADF0B70, &qword_192236FE0);
      (*(v69 + 8))(v13, v70);
      v23 = v73;
    }

    v79 = *(v3 + 24);
    v28 = *(v3 + 16);
    v78 = v28;
    v60 = v23;
    if (v79 == 1)
    {
      v59 = v28;
    }

    else
    {

      sub_192227FA0();
      v29 = sub_192226D00();
      sub_1922257A0();

      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      sub_192033970(&v78, &qword_1EADF0B78, &qword_192236FE8);
      (*(v69 + 8))(v13, v70);
      v59 = v73;
    }

    v77 = *(v3 + 40);
    v30 = *(v3 + 32);
    v76 = v30;
    if (v77 != 1)
    {

      sub_192227FA0();
      v31 = sub_192226D00();
      sub_1922257A0();

      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      sub_192033970(&v76, &qword_1EADF0B80, &qword_192236FF0);
      (*(v69 + 8))(v13, v70);
      LOBYTE(v30) = v73;
    }

    v32 = type metadata accessor for WidgetDescriptor(0);
    v33 = *(v32 - 8);
    (*(v33 + 56))(v10, 1, 1, v32);
    v34 = v64;
    v35 = *(v64 + 20);
    v36 = *(v64 + 32);
    *(&v74 + 1) = &type metadata for FeatureFlags.Widgets;
    v37 = sub_19202DBA4();
    v75 = v37;
    LOBYTE(v73) = 5;
    v38 = sub_192225420();
    __swift_destroy_boxed_opaque_existential_1(&v73);
    v10[v36] = v38 & 1;
    v39 = v34[9];
    *(&v74 + 1) = &type metadata for FeatureFlags.Widgets;
    v75 = v37;
    LOBYTE(v73) = 15;
    LOBYTE(v37) = sub_192225420();
    __swift_destroy_boxed_opaque_existential_1(&v73);
    v10[v39] = v37 & 1;
    sub_19207C51C(v71, v10);
    *&v10[v35] = v60;
    *&v10[v34[6]] = v59;
    v10[v34[7]] = v30 & 1;
    sub_19207C58C(v10, &v73);
    if (v75)
    {
      v40 = v73;
      v70 = v73;
      v71 = v74;
      v41 = *(&v73 + 1);
      v43 = *(&v74 + 1);
      v42 = v74;
    }

    else
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v70 = v73;
      v71 = v74;
    }

    v44 = sub_192226D10();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0B88, &qword_192236FF8);
    v46 = v61;
    (*(*(v45 - 8) + 16))(v61, v68, v45);
    v47 = v46 + *(v66 + 36);
    *v47 = v44;
    *(v47 + 8) = v40;
    *(v47 + 16) = v41;
    *(v47 + 24) = v42;
    *(v47 + 32) = v43;
    *(v47 + 40) = 0;
    KeyPath = swift_getKeyPath();
    v49 = v62;
    sub_19204E300(v46, v62, &qword_1EADF0B60, &qword_192236FC8);
    v50 = v49 + *(v67 + 36);
    *v50 = KeyPath;
    v51 = v70;
    *(v50 + 24) = v71;
    *(v50 + 8) = v51;
    v52 = swift_getKeyPath();
    v53 = v65;
    sub_19204E300(v72, v65, &qword_1EADEEE20, &qword_19222B670);
    if ((*(v33 + 48))(v53, 1, v32) == 1)
    {
      sub_192033970(v53, &qword_1EADEEE20, &qword_19222B670);
      v54 = 0;
    }

    else
    {
      v54 = *(v53 + *(v32 + 100));
      sub_19207D490(v53, type metadata accessor for WidgetDescriptor);
    }

    v55 = v49;
    v56 = v63;
    sub_19204E300(v55, v63, &qword_1EADF0B68, &unk_192236FD0);
    v57 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0B90, &qword_192237050) + 36);
    *v57 = v52;
    *(v57 + 8) = v54;
    sub_19207D490(v10, type metadata accessor for ContentMarginsContext);
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for ContentMarginsContext(uint64_t a1)
{
  result = qword_1ED749EA8;
  if (!qword_1ED749EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19207B79C(uint64_t a1)
{
  if (!qword_1ED749F40)
  {
    type metadata accessor for WidgetDescriptor(255);
    v1 = sub_192228240();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED749F40);
    }
  }
}

void sub_19207B7F4(uint64_t a1)
{
  sub_19207B79C(319);
  if (v1 <= 0x3F)
  {
    sub_19207B8AC(319);
    if (v2 <= 0x3F)
    {
      sub_19202A7A8(319, &qword_1ED74BD10, 0x1E69943F0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19207B8AC(uint64_t a1)
{
  if (!qword_1ED749DC8[0])
  {
    sub_19202A7A8(255, &qword_1ED74BB40, 0x1E6994370);
    v1 = sub_192228240();
    if (!v2)
    {
      atomic_store(v1, qword_1ED749DC8);
    }
  }
}

uint64_t sub_19207B920@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v64);
  v9 = (&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for WidgetDescriptor(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v57 - v15;
  v17 = (*(a3 + 24))(a2, a3, v14);
  v18 = *(v17 + 16);
  if (v18)
  {
    v57 = a4;
    v19 = 0;
    v58 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v73 = v17 + v58;
    v62 = a1;
    v63 = MEMORY[0x1E69E7CC0];
    v20 = v11;
    v21 = v17;
    v71 = v18;
    v59 = v10;
    v61 = v20;
    v65 = v17;
    while (1)
    {
      if (v19 >= *(v21 + 16))
      {
        __break(1u);
LABEL_43:
        if (qword_1ED74C6B0 != -1)
        {
          swift_once();
        }

        v53 = sub_1922258B0();
        __swift_project_value_buffer(v53, qword_1ED74CCC8);
        v54 = sub_192225890();
        v55 = sub_192227F90();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 134349056;
          *(v56 + 4) = v21;
          _os_log_impl(&dword_192028000, v54, v55, "Unrecognized family: %{public}ld", v56, 0xCu);
          MEMORY[0x193B0C7F0](v56, -1, -1);
        }

        sub_192228620();
        __break(1u);
LABEL_48:
        result = sub_192228990();
        __break(1u);
        return result;
      }

      v22 = *(v20 + 72);
      sub_19207C0C0(v73 + v22 * v19, v16, type metadata accessor for WidgetDescriptor);
      if (a1)
      {
        sub_19207C0C0(v16, v9, type metadata accessor for ViewSource);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          sub_192036A20(v9, type metadata accessor for ViewSource);
        }

        else
        {
          if (!EnumCaseMultiPayload)
          {
            v24 = v10;
            v25 = *v9;
            v26 = v9[1];
            v27 = v9[4];
            v67 = v9[3];
            v68 = v27;
            v28 = v9[7];
            v69 = v9[5];
            v70 = v28;
            v72 = a1;
            v29 = [v72 kind];
            v30 = sub_192227960();
            v32 = v31;

            v66 = v26;
            if (v25 == v30 && v26 == v32)
            {

              v21 = v65;
              v10 = v24;
              goto LABEL_15;
            }

            v34 = sub_1922289A0();

            v21 = v65;
            v10 = v24;
            if (v34)
            {
LABEL_15:
              v35 = *&v16[*(v10 + 28)];
              v36 = *(v35 + 16);
              if (v36)
              {
                v75 = MEMORY[0x1E69E7CC0];
                sub_19207C250(0, v36, 0);
                v37 = v75;
                v38 = (v35 + 32);
                while (1)
                {
                  v39 = *v38++;
                  v21 = v39;
                  v40 = v39 - 1;
                  if ((v39 - 1) >= 0xE || ((0x2FFFu >> v40) & 1) == 0)
                  {
                    goto LABEL_43;
                  }

                  v41 = byte_1922432A0[v40];
                  v75 = v37;
                  v43 = *(v37 + 16);
                  v42 = *(v37 + 24);
                  if (v43 >= v42 >> 1)
                  {
                    sub_19207C250((v42 > 1), v43 + 1, 1);
                    v37 = v75;
                  }

                  *(v37 + 16) = v43 + 1;
                  *(v37 + v43 + 32) = v41;
                  if (!--v36)
                  {
                    v10 = v59;
                    v21 = v65;
                    goto LABEL_24;
                  }
                }
              }

              v37 = MEMORY[0x1E69E7CC0];
LABEL_24:
              v18 = v71;
              InternalWidgetFamily.init(_:)([v72 family], &v74);
              a1 = v62;
              if (v74 > 0xCuLL)
              {
                goto LABEL_48;
              }

              v44 = *(v37 + 16);
              v45 = (v37 + 32);
              do
              {
                if (!v44)
                {

                  sub_19207C280(v68, v69);

                  sub_192036A20(v16, type metadata accessor for WidgetDescriptor);
                  v20 = v61;
                  goto LABEL_5;
                }

                v46 = *v45++;
                --v44;
              }

              while (qword_192243238[v74] != v46);

              sub_19207C280(v68, v69);

              sub_19207C284(v16, v60);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v47 = v63;
              }

              else
              {
                v47 = sub_19207C2E8(0, v63[2] + 1, 1, v63);
              }

              v49 = v47[2];
              v48 = v47[3];
              if (v49 >= v48 >> 1)
              {
                v47 = sub_19207C2E8((v48 > 1), v49 + 1, 1, v47);
              }

              v47[2] = v49 + 1;
              v63 = v47;
              sub_19207C284(v60, v47 + v58 + v49 * v22);
              v20 = v61;
            }

            else
            {
              sub_192036A20(v16, type metadata accessor for WidgetDescriptor);

              sub_19207C280(v68, v69);

              v20 = v61;
              a1 = v62;
            }

            v18 = v71;
            goto LABEL_5;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

          v18 = v71;

          v33 = sub_1922253B0();
          (*(*(v33 - 8) + 8))(v9, v33);
        }
      }

      sub_192036A20(v16, type metadata accessor for WidgetDescriptor);
LABEL_5:
      if (++v19 == v18)
      {

        a4 = v57;
        v50 = v63;
        if (!v63[2])
        {
          goto LABEL_40;
        }

LABEL_38:
        sub_19207C0C0(v50 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), a4, type metadata accessor for WidgetDescriptor);
        v51 = 0;
        goto LABEL_41;
      }
    }
  }

  v50 = MEMORY[0x1E69E7CC0];
  v20 = v11;
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_38;
  }

LABEL_40:
  v51 = 1;
LABEL_41:

  return (*(v20 + 56))(a4, v51, 1, v10);
}

uint64_t sub_19207C0C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_Say9WidgetKit20IntentRecommendationVySo8INIntentCGGIego_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

char *sub_19207C164(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v12 = MEMORY[0x1E69E7CC0];
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

char *sub_19207C250(char *a1, int64_t a2, char a3)
{
  result = sub_19207C164(a1, a2, a3, *v3, &qword_1EADEEAF8, &qword_19222AF38);
  *v3 = result;
  return result;
}

uint64_t sub_19207C284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19207C324(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ViewSource(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19207C3DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19207C460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ViewSource(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19207C51C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19207C58C@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v88 = a2;
  v3 = type metadata accessor for ContentMarginsContext(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v87 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v87 - v13;
  v15 = sub_19207CFF0();
  v87 = v8;
  if (v15)
  {
    sub_19207C3DC(a1, v14);
    v16 = type metadata accessor for WidgetDescriptor(0);
    if ((*(*(v16 - 8) + 48))(v14, 1, v16) == 1)
    {
      sub_192033970(v14, &qword_1EADEEE20, &qword_19222B670);
      v17 = 1;
    }

    else
    {
      v18 = v14[*(v16 + 100)];
      sub_1920369C0(v14, type metadata accessor for WidgetDescriptor);
      v17 = v18 ^ 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (*(a1 + v3[7]))
  {
    v19 = &selRef_contentMargins;
  }

  else
  {
    v19 = &selRef_backgroundRemovedContentMargins;
  }

  v20 = *(a1 + v3[6]);
  v21 = [v20 margins];
  [v21 *v19];
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = *(a1 + v3[5]);
  if (!v28)
  {
    result = sub_19207D258();
    if ((result & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_16:
    v33 = v25;
    goto LABEL_48;
  }

  v29 = [v28 extensionIdentity];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  sub_192225510();
  swift_endAccess();

  v30 = sub_192227A10();

  result = sub_19207D258();
  if ((result & 1) == 0)
  {
    goto LABEL_19;
  }

  if (v30 & 1) == 0 || (*(a1 + v3[8]))
  {
    goto LABEL_16;
  }

  sub_19207C3DC(a1, v11);
  v32 = type metadata accessor for WidgetDescriptor(0);
  if ((*(*(v32 - 8) + 48))(v11, 1, v32) == 1)
  {
    sub_192033970(v11, &qword_1EADEEE20, &qword_19222B670);
    goto LABEL_19;
  }

  v34 = v11[*(v32 + 104)];
  result = sub_1920369C0(v11, type metadata accessor for WidgetDescriptor);
  if (v34 != 2 && (v34 & 1) != 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v35 = sub_192192560(v28, a1);
  v36 = v35;
  if ((v17 & 1) == 0)
  {
    v94 = 0;
    v38 = v5;
    if (*(a1 + v3[8]))
    {
LABEL_27:
      v39 = 0;
      v37 = 1;
      goto LABEL_28;
    }

LABEL_23:
    if (*(a1 + v3[9]))
    {
      goto LABEL_27;
    }

    if (qword_1EADECBD0 != -1)
    {
      swift_once();
    }

    v40 = qword_1EADECBD8;

    v41 = sub_192191CEC();
    v43 = sub_1921B01A8(v41, v42, v40);

    if (v43)
    {
      goto LABEL_27;
    }

    if (v36)
    {
LABEL_50:
      [v20 scaleFactor];
      v37 = 0;
      v23 = v23 * v83;
      v39 = 1;
      goto LABEL_28;
    }

    v84 = v87;
    sub_19207C3DC(a1, v87);
    v85 = type metadata accessor for WidgetDescriptor(0);
    if ((*(*(v85 - 8) + 48))(v84, 1, v85) == 1)
    {
      sub_192033970(v84, &qword_1EADEEE20, &qword_19222B670);
    }

    else
    {
      v86 = *(v84 + *(v85 + 104));
      sub_1920369C0(v84, type metadata accessor for WidgetDescriptor);
      if (v86 != 2 && (v86 & 1) != 0)
      {
        goto LABEL_50;
      }
    }

    v37 = 0;
    v39 = 0;
    goto LABEL_28;
  }

  v37 = 1;
  v94 = (v35 & 1) == 0;
  v38 = v5;
  if ((*(a1 + v3[8]) & 1) == 0)
  {
    goto LABEL_23;
  }

  v39 = 0;
LABEL_28:
  v91.f64[0] = sub_192192EB4(a1, &v94, v37, v23);
  v91.f64[1] = v44;
  v92 = v45;
  v93 = v46;
  *&v23 = *&sub_1921931A0(a1, &v91);
  v25 = v47;
  v33 = v48;
  v27 = v49;
  if (qword_1ED749978 != -1)
  {
    swift_once();
  }

  v50 = qword_1ED74C728;
  v51 = sub_192227F80();
  if (os_log_type_enabled(v50, v51))
  {
    if (qword_1ED7497F8 != -1)
    {
      swift_once();
    }

    v52 = sub_1922258B0();
    __swift_project_value_buffer(v52, qword_1ED74C6F0);
    sub_192193564(a1, v38, type metadata accessor for ContentMarginsContext);
    v53 = sub_192225890();
    v54 = sub_192227F80();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v89[0] = v56;
      *v55 = 136446210;
      v57 = sub_192191E04();
      v58 = v38;
      v60 = v59;
      sub_1920369C0(v58, type metadata accessor for ContentMarginsContext);
      v61 = sub_19202B8CC(v57, v60, v89);

      *(v55 + 4) = v61;
      _os_log_impl(&dword_192028000, v53, v54, "Margins input: %{public}s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x193B0C7F0](v56, -1, -1);
      MEMORY[0x193B0C7F0](v55, -1, -1);
    }

    else
    {

      sub_1920369C0(v38, type metadata accessor for ContentMarginsContext);
    }

    v62 = sub_192225890();
    v63 = sub_192227F80();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 67240192;
      *(v64 + 4) = v36 & 1;
      _os_log_impl(&dword_192028000, v62, v63, "needsLegacyBackgroundAndContentMargins: %{BOOL,public}d", v64, 8u);
      MEMORY[0x193B0C7F0](v64, -1, -1);
    }

    v65 = sub_192225890();
    v66 = sub_192227F80();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 67240192;
      *(v67 + 4) = v37;
      _os_log_impl(&dword_192028000, v65, v66, "exemptFromLegacyScaledContentMargins: %{BOOL,public}d", v67, 8u);
      MEMORY[0x193B0C7F0](v67, -1, -1);
    }

    v68 = sub_192225890();
    v69 = sub_192227F80();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 67240192;
      *(v70 + 4) = v39;
      _os_log_impl(&dword_192028000, v68, v69, "needsLegacyScaledMargins: %{BOOL,public}d", v70, 8u);
      MEMORY[0x193B0C7F0](v70, -1, -1);
    }

    v71 = sub_192225890();
    v72 = sub_192227F80();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v90 = v74;
      *v73 = 136446210;
      *v89 = v23;
      v89[1] = v25;
      v89[2] = v33;
      v89[3] = v27;
      v75 = sub_192227990();
      v77 = sub_19202B8CC(v75, v76, &v90);

      *(v73 + 4) = v77;
      _os_log_impl(&dword_192028000, v71, v72, "finalEffectiveMargins: %{public}s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x193B0C7F0](v74, -1, -1);
      MEMORY[0x193B0C7F0](v73, -1, -1);
    }

    v78 = v94;
    v79 = sub_192225890();
    v80 = sub_192227F80();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 67240192;
      *(v81 + 4) = v78;
      _os_log_impl(&dword_192028000, v79, v80, "applyContentMargins: %{BOOL,public}d", v81, 8u);
      MEMORY[0x193B0C7F0](v81, -1, -1);
    }
  }

  result = swift_beginAccess();
  v17 = v94;
LABEL_48:
  v82 = v88;
  *v88 = v23;
  *(v82 + 1) = v25;
  *(v82 + 2) = v33;
  *(v82 + 3) = v27;
  *(v82 + 32) = v17 & 1;
  return result;
}

uint64_t sub_19207CFF0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for WidgetDescriptor(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19207C3DC(v1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_192033970(v4, &qword_1EADEEE20, &qword_19222B670);
    if (qword_1ED74BAE8 != -1)
    {
      swift_once();
    }

    LOBYTE(v9) = dyld_program_sdk_at_least();
  }

  else
  {
    sub_19207C284(v4, v8);
    v9 = v8[*(v5 + 172)];
    if (v9 == 2)
    {
      if (qword_1ED74BAE8 != -1)
      {
        swift_once();
      }

      LOBYTE(v9) = dyld_program_sdk_at_least();
    }

    sub_19207D1F8(v8, type metadata accessor for WidgetDescriptor);
  }

  return v9 & 1;
}

uint64_t sub_19207D1F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19207D258()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for WidgetDescriptor(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19207C3DC(v1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_192033970(v4, &qword_1EADEEE20, &qword_19222B670);
    if (qword_1ED749EF8 != -1)
    {
      swift_once();
    }

    LOBYTE(v9) = dyld_program_sdk_at_least();
  }

  else
  {
    sub_19207C284(v4, v8);
    v9 = v8[*(v5 + 180)];
    if (v9 == 2)
    {
      if (qword_1ED749EF8 != -1)
      {
        swift_once();
      }

      LOBYTE(v9) = dyld_program_sdk_at_least();
    }

    sub_19207D1F8(v8, type metadata accessor for WidgetDescriptor);
  }

  return v9 & 1;
}

uint64_t sub_19207D460()
{
  result = getWKSystemVersionSDK_Luck();
  qword_1ED749F00 = result;
  return result;
}

uint64_t sub_19207D490(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *keypath_get_5Tm@<X0>(uint64_t (*a1)(void)@<X3>, _BYTE *a3@<X8>)
{
  a1();
  result = sub_1922261E0();
  *a3 = v5;
  return result;
}

unint64_t sub_19207D56C()
{
  result = qword_1ED749F70;
  if (!qword_1ED749F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749F70);
  }

  return result;
}

double sub_19207D60C@<D0>(_OWORD *a1@<X8>)
{
  sub_19207D65C();
  sub_1922261E0();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

unint64_t sub_19207D65C()
{
  result = qword_1ED74A0F8;
  if (!qword_1ED74A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A0F8);
  }

  return result;
}

double sub_19207D6B0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_19207D708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2638, &qword_192245520);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2640, &qword_192245528);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v18 - v7);
  v9 = sub_1922261D0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  if (*(v2 + 8) == 1)
  {
    v21 = *v2;
    if (v13 != 8)
    {
LABEL_3:
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2648, &qword_192245530);
      (*(*(v14 - 8) + 16))(v5, v19, v14);
      swift_storeEnumTagMultiPayload();
      sub_19207DAD8();
      sub_192031E74(&qword_1ED74AEA8, &qword_1EADF2648, &qword_192245530, MEMORY[0x1E697FDF8]);
      return sub_1922266E0();
    }
  }

  else
  {

    sub_192227FA0();
    v16 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v17 = sub_192049898(v13, 0);
    (*(v10 + 8))(v12, v9, v17);
    if (v21 != 8)
    {
      goto LABEL_3;
    }
  }

  v18 = sub_192227240();
  MEMORY[0x1EEE9AC00](v18);
  *(&v18 - 2) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2648, &qword_192245530);
  sub_192031E74(&qword_1ED74AEA8, &qword_1EADF2648, &qword_192245530, MEMORY[0x1E697FDF8]);
  sub_192226CE0();
  *v8 = v18;
  sub_19220535C(v8, v5);
  swift_storeEnumTagMultiPayload();
  sub_19207DAD8();
  sub_1922266E0();
  return sub_1922053CC(v8);
}

unint64_t sub_19207DAD8()
{
  result = qword_1ED74AEC8;
  if (!qword_1ED74AEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2640, &qword_192245528);
    sub_192031E74(&qword_1ED74AE90, &qword_1EADF2650, &qword_192245538, MEMORY[0x1E697CCA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AEC8);
  }

  return result;
}

id sub_19207DB90(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_192224FE0();
  v13[0] = 0;
  v5 = [v2 initWithURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_192225020();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_192224F90();

    swift_willThrow();
    v11 = sub_192225020();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_19207DCDC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  v10 = sub_192225020();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  sub_192051870(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_192033970(v9, &qword_1EADEEE10, &unk_19222B630);
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v13, v16, v10);
    v17 = objc_allocWithZone(MEMORY[0x1E69635D0]);
    v25 = sub_19207DB90(v13);
    (*(v11 + 8))(v16, v10);
    v22 = v25;
    if (v25)
    {
      goto LABEL_9;
    }
  }

  type metadata accessor for BundleStub(0);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v18 = sub_192225510();
  v20 = v19;
  swift_endAccess();
  v21 = objc_allocWithZone(MEMORY[0x1E69635D0]);
  v22 = sub_192034E34(v18, v20);
  if (!v22)
  {
    goto LABEL_5;
  }

LABEL_9:
  v26 = v22;
  v27 = [v26 bundleIdentifier];
  if (!v27)
  {

LABEL_5:
    v23 = type metadata accessor for BundleStub(0);
    return (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
  }

  v28 = type metadata accessor for BundleStub(0);
  v29 = *(a1 + *(v28 + 20));
  v30 = LSBundleRecord.safeBundleVersion.getter();
  v32 = v31;
  v33 = [v26 URL];

  sub_192224FF0();
  v34 = *(v11 + 56);
  v34(v6, 0, 1, v10);
  v34(a2, 1, 1, v10);
  *&a2[*(v28 + 20)] = v29;
  sub_19203CF50(v6, a2);
  v35 = &a2[*(v28 + 24)];
  *v35 = v30;
  v35[1] = v32;
  return (*(*(v28 - 8) + 56))(a2, 0, 1, v28);
}

uint64_t LSBundleRecord.safeBundleVersion.getter()
{
  v1 = [v0 infoDictionary];
  v2 = sub_192227930();
  sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  v3 = [v1 objectForKey:v2 ofClass:swift_getObjCClassFromMetadata()];

  if (v3)
  {
    sub_1922282B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_192033970(v8, &unk_1EADEF330, &unk_19222CD40);
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_19207E25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFBE8, &qword_192230900);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for BundleStub(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_19207DCDC(a1, v9);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) != 1)
  {
    sub_19207E490(v9, v16);
    v19 = v16;
LABEL_6:
    sub_19207E490(v19, a2);
    v18 = 0;
    return (*(v11 + 56))(a2, v18, 1, v10);
  }

  sub_192033970(v9, &qword_1EADEFBE8, &qword_192230900);
  sub_192184380(a1, v6);
  if (v17(v6, 1, v10) != 1)
  {
    sub_19207E490(v6, v13);
    v19 = v13;
    goto LABEL_6;
  }

  sub_192033970(v6, &qword_1EADEFBE8, &qword_192230900);
  v18 = 1;
  return (*(v11 + 56))(a2, v18, 1, v10);
}

uint64_t sub_19207E490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleStub(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19207E4F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFBE8, &qword_192230900);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for BundleStub(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19207E25C(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_192033970(v4, &qword_1EADEFBE8, &qword_192230900);
    sub_1921BAABC();
    result = swift_allocError();
    *v10 = 0xD00000000000001DLL;
    v10[1] = 0x800000019224D780;
  }

  else
  {
    sub_19205573C(v4, v8, type metadata accessor for BundleStub);
    v11 = *(v5 + 24);
    v12 = *&v8[v11];
    v13 = *&v8[v11 + 8];
    v14 = (a1 + v11);
    v15 = v12 == *v14 && v13 == v14[1];
    if (v15 || (sub_1922289A0() & 1) != 0)
    {
      sub_192055674(v8, type metadata accessor for BundleStub);
      return 0;
    }

    else
    {
      sub_1921BAABC();
      v16 = swift_allocError();
      *v17 = 0xD000000000000046;
      v17[1] = 0x800000019224D7A0;
      sub_192055674(v8, type metadata accessor for BundleStub);
      return v16;
    }
  }

  return result;
}

uint64_t IntentConfiguration.init<A>(kind:intent:provider:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t (**a8)@<X0>(char **a1@<X8>)@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = sub_19207EA6C(a6, a1, a2, a6);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *(a9 - 8);
  v20 = (*(v19 + 80) + 88) & ~*(v19 + 80);
  v21 = (*(v19 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = a6;
  *(v22 + 3) = a7;
  *(v22 + 4) = a9;
  *(v22 + 5) = a10;
  *(v22 + 6) = a11;
  *(v22 + 7) = v25;
  *(v22 + 8) = v14;
  *(v22 + 9) = v16;
  *(v22 + 10) = v18;
  (*(v19 + 32))(v22 + v20, a3, a9);
  v23 = (v22 + v21);
  *v23 = a4;
  v23[1] = a5;
  *a8 = sub_1920845E0;
  a8[1] = v22;
  a8[2] = v25;
  a8[3] = v14;
  a8[4] = v16;
  a8[5] = v18;
}

uint64_t sub_19207E8C4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t WidgetConfiguration.description(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_192079D80(0x7470697263736564, 0xEB000000006E6F69, a1, a2, a3 & 1, a4);
  sub_19207A2A8(v8, v9, a5, a6, &unk_192246888);
}

uint64_t sub_19207EA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = [v5 _className];

  sub_192227960();
  return a2;
}

uint64_t IntentConfiguration.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v2[2];
  v19 = v2[1];
  v20 = v7;
  v18 = *v2;
  v8 = v19;
  v9 = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = *(a1 + 16);
  *(v10 + 32) = *(a1 + 32);
  v11 = v2[1];
  *(v10 + 40) = *v2;
  *(v10 + 56) = v11;
  *(v10 + 72) = v2[2];
  v12 = v18;
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *v6 = v8;
  *(v6 + 1) = v9;
  *(v6 + 4) = sub_1921EF7F8;
  *(v6 + 5) = v10;
  *(v6 + 6) = sub_192084724;
  *(v6 + 7) = v13;
  swift_storeEnumTagMultiPayload();

  (*(*(a1 - 8) + 16))(v17, &v18, a1);

  return sub_19207ED1C(v6, v16);
}

uint64_t sub_19207EC9C()
{

  return swift_deallocObject();
}

uint64_t sub_19207ECE4()
{

  return swift_deallocObject();
}

uint64_t sub_19207ED1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WidgetDescriptor(0);
  v8 = (a2 + v7[5]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7[6]);
  *v9 = 0;
  v9[1] = 0;
  v10 = v7[7];
  if (qword_1ED74C448 != -1)
  {
    swift_once();
  }

  *(a2 + v10) = qword_1ED74ABB8;
  *(a2 + v7[8]) = &unk_1F06A78B0;
  v11 = v7[9];
  v12 = MEMORY[0x1E69E7CC0];
  *(a2 + v11) = sub_19207F034(MEMORY[0x1E69E7CC0]);
  v13 = MEMORY[0x1E69E7CD0];
  *(a2 + v7[10]) = MEMORY[0x1E69E7CD0];
  *(a2 + v7[11]) = 0;
  v14 = (a2 + v7[12]);
  *v14 = 0;
  v14[1] = 0;
  *(a2 + v7[13]) = 0;
  v15 = (a2 + v7[14]);
  *v15 = 0;
  v15[1] = 0;
  *(a2 + v7[15]) = 0;
  *(a2 + v7[16]) = v13;
  *(a2 + v7[17]) = 0;
  *(a2 + v7[18]) = 0;
  *(a2 + v7[19]) = 1;
  *(a2 + v7[20]) = 0;
  *(a2 + v7[21]) = v12;
  *(a2 + v7[23]) = 0;
  *(a2 + v7[26]) = 2;
  v16 = (a2 + v7[27]);

  *v16 = sub_19207F13C();
  v16[1] = v17;
  *(a2 + v7[28]) = 0;
  *(a2 + v7[29]) = 0;
  *(a2 + v7[30]) = 0;
  *(a2 + v7[31]) = 0;
  *(a2 + v7[32]) = 0;
  *(a2 + v7[33]) = 0;
  *(a2 + v7[34]) = 0;
  *(a2 + v7[35]) = 0;
  *(a2 + v7[36]) = 0;
  *(a2 + v7[37]) = 0;
  v18 = (a2 + v7[38]);
  *v18 = 0;
  v18[1] = 0;
  *(a2 + v7[39]) = 0;
  v19 = (a2 + v7[40]);
  *v19 = 0;
  v19[1] = 0;
  *(a2 + v7[41]) = 0;
  v20 = (a2 + v7[42]);
  *v20 = 0;
  v20[1] = 0;
  *(a2 + v7[43]) = 2;
  *(a2 + v7[44]) = 2;
  *(a2 + v7[45]) = 2;
  sub_192038FB8(a1, a2);
  if (qword_1ED74BAE8 != -1)
  {
    swift_once();
  }

  *(a2 + v7[22]) = dyld_program_sdk_at_least();
  sub_192038FB8(a1, v6);
  v21 = swift_getEnumCaseMultiPayload() == 3;
  v22 = v7[24];
  sub_19207D1F8(v6, type metadata accessor for ViewSource);
  *(a2 + v22) = v21;
  v23 = dyld_program_sdk_at_least();
  result = sub_19207D1F8(a1, type metadata accessor for ViewSource);
  *(a2 + v7[25]) = v23 ^ 1;
  return result;
}

void *sub_19207F034(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A18, &qword_192236230);
  v3 = sub_1922286C0();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1920B733C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1920B733C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19207F13C()
{
  program_sdk_version = dyld_get_program_sdk_version();
  v4 = sub_192228910();
  MEMORY[0x193B0A990](46, 0xE100000000000000);
  v1 = sub_192228910();
  MEMORY[0x193B0A990](v1);

  result = v4;
  if (program_sdk_version)
  {
    v3 = sub_192228910();
    MEMORY[0x193B0A990](v3);

    MEMORY[0x193B0A990](46, 0xE100000000000000);

    return v4;
  }

  return result;
}

uint64_t sub_19207F244()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEB80, &qword_19222AF60);
  v1 = *(type metadata accessor for WidgetDescriptor(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_19222B480;
  sub_19207F348(v0, v3 + v2);
  sub_1920791AC();
  sub_192226620();
}

uint64_t sub_19207F348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_19207F3B4(uint64_t *result, uint64_t (*a2)(unint64_t))
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v5 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v2 = sub_19207F4A8(v2);
    }

    for (i = 0; i != v3; ++i)
    {
      if (i >= v2[2])
      {
        __break(1u);
        goto LABEL_9;
      }

      v7 = *(type metadata accessor for WidgetDescriptor(0) - 8);
      result = a2(v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * i);
    }

    *v5 = v2;
  }

  return result;
}

uint64_t sub_19207F4F8(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v7 - v4, v5, v2);
  return swift_setAtWritableKeyPath();
}

uint64_t sub_19207F638(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_19207C2E8(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for WidgetDescriptor(0);
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t StaticConfiguration.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  *v5 = v8;
  v5[1] = v9;
  v5[2] = v10;
  v5[3] = v11;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = v6;
  v5[7] = v7;
  swift_storeEnumTagMultiPayload();

  return sub_19207ED1C(v5, a1);
}

double ControlPicker.init<A, B, C, D, E, F, G>(kind:displayName:preferredSize:intentUpdatableProperty:title:value:affordances:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>, uint64_t x2_0@<X2>, uint64_t x3_0@<X3>, uint64_t x6_0@<X6>, uint64_t x7_0@<X7>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a19, uint64_t a20)
{
  v22 = *a3;
  v23 = *(*a4 + *MEMORY[0x1E69E77B0] + 8);
  v24 = sub_192224D10();
  v39 = v25;
  v40 = v24;
  v48 = v22;
  sub_1921A1298(a4, a12, a13, a14, v47);

  v27 = sub_192224BA0();
  if (a8)
  {
    v28 = a9;
  }

  else
  {
    v28 = 0;
  }

  v29 = type metadata accessor for KeyPathPickerBox(0, *(*(v23 + *MEMORY[0x1E695A680] + 8) + *MEMORY[0x1E695A610] + 8), a13, v26);
  v30 = sub_1920818CC();
  WitnessTable = swift_getWitnessTable();
  sub_192080134(a1, a2, &type metadata for EmptyConfiguration, v40, v39, x2_0, x3_0, &v48, v49, v47, 3, v27, x6_0, x7_0, a6, a7, a8, v28, &type metadata for EmptyConfiguration, a10, a11, v29, v30, a19, a20, WitnessTable);

  v32 = v57;
  *(a5 + 128) = v56;
  *(a5 + 144) = v32;
  v33 = v59;
  *(a5 + 160) = v58;
  *(a5 + 176) = v33;
  v34 = v53;
  *(a5 + 64) = v52;
  *(a5 + 80) = v34;
  v35 = v55;
  *(a5 + 96) = v54;
  *(a5 + 112) = v35;
  v36 = v49[1];
  *a5 = v49[0];
  *(a5 + 16) = v36;
  result = *&v50;
  v38 = v51;
  *(a5 + 32) = v50;
  *(a5 + 48) = v38;
  *(a5 + 192) = 1;
  return result;
}

uint64_t sub_19207FAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_19207FAEC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v62 = a8;
  v73 = a6;
  v74 = a7;
  *&v72 = a3;
  *(&v72 + 1) = a4;
  *&v71 = a1;
  *(&v71 + 1) = a2;
  v75 = a9;
  v81 = a18;
  v68 = a16;
  v67 = a15;
  v66 = a14;
  v64 = a13;
  v19 = *(a17 - 8);
  v20 = *(v19 + 64);
  v61 = a11;
  v60 = a10;
  v21 = MEMORY[0x1EEE9AC00](a1);
  v22 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *(v19 + 16);
  v80(v22, v23, a17, v21);
  v24 = *(v19 + 80);
  v25 = ((v24 + 32) & ~v24) + v20;
  v79 = (v24 + 32) & ~v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a17;
  *(v26 + 24) = a18;
  v27 = *(v19 + 32);
  v70 = v26;
  v27(v26 + ((v24 + 32) & ~v24), v22, a17);
  v28 = v80;
  (v80)(v22, a5, a17);
  v29 = swift_allocObject();
  v30 = v81;
  *(v29 + 16) = a17;
  *(v29 + 24) = v30;
  v69 = v29;
  v27(v29 + v79, v22, a17);
  v78 = a5;
  v28(v22, a5, a17);
  v65 = v25;
  v31 = (v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = v24;
  v32 = swift_allocObject();
  v33 = v81;
  *(v32 + 16) = a17;
  *(v32 + 24) = v33;
  v76 = v27;
  v27(v32 + v79, v22, a17);
  v63 = v32;
  v34 = (v32 + v31);
  v35 = v60;
  *v34 = v62;
  v34[1] = v35;
  v59[1] = v19 + 32;
  if (v61)
  {
    v36 = v61;
    (v80)(v22, v78, a17);
    v37 = swift_allocObject();
    v38 = v81;
    *(v37 + 16) = a17;
    *(v37 + 24) = v38;
    v39 = v79;
    v76(v37 + v79, v22, a17);
    v40 = (v37 + v31);
    *v40 = v36;
    v40[1] = a12;
    v61 = &unk_192237560;
    v62 = v37;
  }

  else
  {
    v61 = 0;
    v62 = 0;
    v39 = v79;
  }

  v41 = v78;
  (v80)(v22, v78, a17);
  v42 = (v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v44 = v81;
  *(v43 + 16) = a17;
  *(v43 + 24) = v44;
  v60 = v43;
  v45 = v76;
  v76(v43 + v39, v22, a17);
  v46 = (v43 + v42);
  v47 = v66;
  *v46 = v64;
  v46[1] = v47;
  (v80)(v22, v41, a17);
  v48 = swift_allocObject();
  v49 = v81;
  *(v48 + 16) = a17;
  *(v48 + 24) = v49;
  v45(v48 + v39, v22, a17);
  v50 = (v48 + v42);
  v51 = v68;
  *v50 = v67;
  v50[1] = v51;
  v45(v22, v78, a17);
  v52 = swift_allocObject();
  *(v52 + 16) = a17;
  *(v52 + 24) = v49;
  v45(v52 + v39, v22, a17);
  v83 = v71;
  v84 = v72;
  LOBYTE(v85) = 0;
  *(&v85 + 1) = v73;
  v86.n128_u64[0] = v74;
  v86.n128_u64[1] = &unk_192237520;
  *&v87 = v63;
  *(&v87 + 1) = v61;
  *&v88 = v62;
  *(&v88 + 1) = &unk_192237530;
  *&v89 = v60;
  *(&v89 + 1) = &unk_192237540;
  *&v90 = v48;
  *(&v90 + 1) = &unk_192237550;
  *&v91 = v52;
  BYTE8(v91) = 0;
  *&v92 = &unk_192237500;
  *(&v92 + 1) = v70;
  *&v93 = &unk_192237510;
  *(&v93 + 1) = v69;
  v94[0] = v71;
  v94[1] = v72;
  v95 = 0;
  v96 = v73;
  v97 = v74;
  v98 = &unk_192237520;
  v99 = v63;
  v100 = v61;
  v101 = v62;
  v102 = &unk_192237530;
  v103 = v60;
  v104 = &unk_192237540;
  v105 = v48;
  v106 = &unk_192237550;
  v107 = v52;
  v108 = 0;
  *v109 = v114[0];
  *&v109[3] = *(v114 + 3);
  v110 = &unk_192237500;
  v111 = v70;
  v112 = &unk_192237510;
  v113 = v69;
  sub_1920800B4(&v83, &v82);
  sub_192080104(v94);
  v53 = v92;
  v54 = v75;
  *(v75 + 128) = v91;
  *(v54 + 144) = v53;
  *(v54 + 160) = v93;
  v55 = v88;
  *(v54 + 64) = v87;
  *(v54 + 80) = v55;
  v56 = v90;
  *(v54 + 96) = v89;
  *(v54 + 112) = v56;
  v57 = v84;
  *v54 = v83;
  *(v54 + 16) = v57;
  result = v86;
  *(v54 + 32) = v85;
  *(v54 + 48) = result;
  return result;
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

uint64_t get_enum_tag_for_layout_string_So8INIntentC7SwiftUI7AnyViewVs5Error_pIegHgozo_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_192080134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v78 = a6;
  v83 = a5;
  v82 = a4;
  v95 = a26;
  v98 = a25;
  v91 = a24;
  v93 = a21;
  v92 = a20;
  v88 = a18;
  v87 = a17;
  v100 = a16;
  v85 = a15;
  v99 = a14;
  v84 = a13;
  v86 = a12;
  v94 = a22;
  v97 = *(a22 - 8);
  v89 = a11;
  v96 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_192224FB0();
  MEMORY[0x1EEE9AC00](v34 - 8);
  v35 = *a8;
  *(a9 + 192) = 0;
  v90 = a1;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  v101 = a2;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = a3;

  if (a7)
  {
    v36 = v78;
  }

  else
  {
    sub_192224BC0();
    v36 = sub_192227980();
    a7 = v37;
  }

  *(a9 + 152) = v36;
  *(a9 + 160) = a7;
  *(a9 + 168) = v35;
  v38 = v83;
  *(a9 + 176) = v82;
  *(a9 + 184) = v38;
  v83 = sub_192224BB0();
  v82 = v39;
  v40 = *(v97 + 16);
  v81 = v33;
  v41 = v94;
  v40(v33, v96);
  v42 = swift_allocObject();
  v43 = v92;
  v42[2] = a19;
  v42[3] = v43;
  v44 = v43;
  v45 = v93;
  v42[4] = v93;
  v42[5] = v41;
  v46 = v45;
  v47 = v91;
  v42[6] = a23;
  v42[7] = v47;
  v48 = v47;
  v49 = v95;
  v42[8] = v98;
  v42[9] = v49;
  v50 = swift_allocObject();
  v50[2] = a19;
  v50[3] = v44;
  v79 = a19;
  v50[4] = v46;
  v50[5] = v41;
  v80 = a23;
  v50[6] = a23;
  v50[7] = v48;
  v51 = v98;
  v52 = v95;
  v50[8] = v98;
  v50[9] = v52;
  v53 = v99;
  v50[10] = v84;
  v50[11] = v53;
  v54 = swift_allocObject();
  v55 = v92;
  v54[2] = a19;
  v54[3] = v55;
  v56 = v93;
  v54[4] = v93;
  v54[5] = v41;
  v54[6] = a23;
  v57 = v91;
  v54[7] = v91;
  v54[8] = v51;
  v58 = v85;
  v54[9] = v52;
  v54[10] = v58;
  v54[11] = v100;
  v59 = swift_allocObject();
  v59[2] = v79;
  v59[3] = v55;
  v60 = v94;
  v59[4] = v56;
  v59[5] = v60;
  v59[6] = v80;
  v59[7] = v57;
  v59[8] = v98;
  v59[9] = v52;
  v61 = v87;
  v62 = v88;
  v59[10] = v87;
  v59[11] = v62;

  sub_19202D088(v61, v62);
  v76 = v59;
  v75 = v50;
  v63 = v90;
  v64 = v101;
  sub_19207FAEC(v90, v101, v83, v82, v81, sub_19214BBE0, v42, sub_19214BBF4, v102, v75, 0, 0, sub_19214BC34, v54, sub_19214BC70, v76, v60, v52);
  v65 = v89;
  v66 = v86;
  *a9 = v89;
  *(a9 + 8) = v66;
  *(a9 + 128) = &type metadata for ControlPickerTemplateProvider;
  *(a9 + 136) = &off_1F06AFD68;
  v67 = swift_allocObject();
  *(a9 + 104) = v67;
  v68 = v66;
  sub_19203831C(v61, v62);

  v69 = v102[9];
  v67[9] = v102[8];
  v67[10] = v69;
  v67[11] = v102[10];
  v70 = v102[5];
  v67[5] = v102[4];
  v67[6] = v70;
  v71 = v102[7];
  v67[7] = v102[6];
  v67[8] = v71;
  v72 = v102[1];
  v67[1] = v102[0];
  v67[2] = v72;
  v73 = v102[3];
  v67[3] = v102[2];
  v67[4] = v73;
  result = (*(v97 + 8))(v96, v60);
  *(a9 + 144) = 0;
  *(a9 + 56) = v63;
  *(a9 + 64) = v64;
  *(a9 + 72) = 0;
  *(a9 + 80) = 0;
  *(a9 + 88) = v65;
  *(a9 + 96) = v68;
  return result;
}

uint64_t sub_192080714()
{

  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1920807AC()
{

  return swift_deallocObject();
}

uint64_t sub_1920807E4()
{
  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_192080828(uint64_t a1)
{
  result = type metadata accessor for WidgetDescriptor(0);
  *(a1 + *(result + 144)) = 1;
  return result;
}