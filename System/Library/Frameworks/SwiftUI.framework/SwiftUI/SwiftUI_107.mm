uint64_t type metadata completion function for AnimatedValueKeyframe.InterpolationParameters.Mode(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AnimatedValueKeyframe.InterpolationParameters.Mode(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 0x18uLL)
  {
    v5 = 24;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));

    return v3;
  }

  v10 = a2[v5];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v5 <= 3)
    {
      v12 = v5;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_25;
      }

      v13 = *a2;
    }

    else if (v12 == 2)
    {
      v13 = *a2;
    }

    else if (v12 == 3)
    {
      v13 = *a2 | (a2[2] << 16);
    }

    else
    {
      v13 = *a2;
    }

    v14 = (v13 | (v11 << (8 * v5))) + 3;
    v10 = v13 + 3;
    if (v5 < 4)
    {
      v10 = v14;
    }
  }

LABEL_25:
  switch(v10)
  {
    case 2u:
      (*(v4 + 16))(__dst);
      *(v3 + v5) = 2;
      return v3;
    case 1u:
      (*(v4 + 16))(__dst);
      *(v3 + v5) = 1;
      return v3;
    case 0u:
      *__dst = *a2;
      __dst[2] = *(a2 + 2);
      *(__dst + v5) = 0;
      return v3;
  }

  return memcpy(__dst, a2, v5 + 1);
}

unsigned __int8 *destroy for AnimatedValueKeyframe.InterpolationParameters.Mode(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 0x18)
  {
    v2 = 24;
  }

  v3 = result[v2];
  v4 = v3 - 3;
  if (v3 >= 3)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        goto LABEL_17;
      }

      v6 = *result;
    }

    else if (v5 == 2)
    {
      v6 = *result;
    }

    else if (v5 == 3)
    {
      v6 = *result | (result[2] << 16);
    }

    else
    {
      v6 = *result;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 3;
    v3 = v6 + 3;
    if (v2 < 4)
    {
      v3 = v7;
    }
  }

LABEL_17:
  if (v3 - 1 <= 1)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  return result;
}

void *initializeWithCopy for AnimatedValueKeyframe.InterpolationParameters.Mode(void *result, void *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 0x18uLL)
  {
    v4 = 24;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = *(a2 + v4);
  v6 = v5 - 3;
  if (v5 >= 3)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_18;
      }

      v8 = *a2;
    }

    else if (v7 == 2)
    {
      v8 = *a2;
    }

    else if (v7 == 3)
    {
      v8 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v8 = *a2;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 3;
    v5 = v8 + 3;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_18:
  if (v5 == 2)
  {
    v10 = result;
    (*(v3 + 16))();
    result = v10;
    v11 = 2;
    goto LABEL_24;
  }

  if (v5 == 1)
  {
    v10 = result;
    (*(v3 + 16))();
    result = v10;
    v11 = 1;
LABEL_24:
    *(v10 + v4) = v11;
    return result;
  }

  if (v5)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    *result = *a2;
    result[2] = a2[2];
    *(result + v4) = 0;
  }

  return result;
}

void *assignWithCopy for AnimatedValueKeyframe.InterpolationParameters.Mode(void *result, void *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 0x18uLL)
  {
    v4 = 24;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  v5 = 8 * v4;
  v6 = *(result + v4);
  v7 = v6 - 3;
  if (v6 >= 3)
  {
    if (v4 <= 3)
    {
      v8 = v4;
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_19;
      }

      v9 = *result;
    }

    else if (v8 == 2)
    {
      v9 = *result;
    }

    else if (v8 == 3)
    {
      v9 = *result | (*(result + 2) << 16);
    }

    else
    {
      v9 = *result;
    }

    v10 = (v9 | (v7 << v5)) + 3;
    v6 = v9 + 3;
    if (v4 < 4)
    {
      v6 = v10;
    }
  }

LABEL_19:
  if (v6 - 1 <= 1)
  {
    v11 = result;
    v12 = a2;
    (*(v3 + 8))();
    a2 = v12;
    result = v11;
  }

  v13 = *(a2 + v4);
  v14 = v13 - 3;
  if (v13 >= 3)
  {
    if (v4 <= 3)
    {
      v15 = v4;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_35;
      }

      v16 = *a2;
    }

    else if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v16 = *a2;
    }

    v17 = (v16 | (v14 << v5)) + 3;
    v13 = v16 + 3;
    if (v4 < 4)
    {
      v13 = v17;
    }
  }

LABEL_35:
  if (v13 == 2)
  {
    v19 = result;
    (*(v3 + 16))();
    result = v19;
    v20 = 2;
    goto LABEL_41;
  }

  if (v13 == 1)
  {
    v19 = result;
    (*(v3 + 16))();
    result = v19;
    v20 = 1;
LABEL_41:
    *(v19 + v4) = v20;
    return result;
  }

  if (v13)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    v18 = *a2;
    result[2] = a2[2];
    *result = v18;
    *(result + v4) = 0;
  }

  return result;
}

void *initializeWithTake for AnimatedValueKeyframe.InterpolationParameters.Mode(void *result, void *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 0x18uLL)
  {
    v4 = 24;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = *(a2 + v4);
  v6 = v5 - 3;
  if (v5 >= 3)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_18;
      }

      v8 = *a2;
    }

    else if (v7 == 2)
    {
      v8 = *a2;
    }

    else if (v7 == 3)
    {
      v8 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v8 = *a2;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 3;
    v5 = v8 + 3;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_18:
  if (v5 == 2)
  {
    v10 = result;
    (*(v3 + 32))();
    result = v10;
    v11 = 2;
    goto LABEL_24;
  }

  if (v5 == 1)
  {
    v10 = result;
    (*(v3 + 32))();
    result = v10;
    v11 = 1;
LABEL_24:
    *(v10 + v4) = v11;
    return result;
  }

  if (v5)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    *result = *a2;
    result[2] = a2[2];
    *(result + v4) = 0;
  }

  return result;
}

void *assignWithTake for AnimatedValueKeyframe.InterpolationParameters.Mode(void *result, void *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 0x18uLL)
  {
    v4 = 24;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  v5 = 8 * v4;
  v6 = *(result + v4);
  v7 = v6 - 3;
  if (v6 >= 3)
  {
    if (v4 <= 3)
    {
      v8 = v4;
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_19;
      }

      v9 = *result;
    }

    else if (v8 == 2)
    {
      v9 = *result;
    }

    else if (v8 == 3)
    {
      v9 = *result | (*(result + 2) << 16);
    }

    else
    {
      v9 = *result;
    }

    v10 = (v9 | (v7 << v5)) + 3;
    v6 = v9 + 3;
    if (v4 < 4)
    {
      v6 = v10;
    }
  }

LABEL_19:
  if (v6 - 1 <= 1)
  {
    v11 = result;
    v12 = a2;
    (*(v3 + 8))();
    a2 = v12;
    result = v11;
  }

  v13 = *(a2 + v4);
  v14 = v13 - 3;
  if (v13 >= 3)
  {
    if (v4 <= 3)
    {
      v15 = v4;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_35;
      }

      v16 = *a2;
    }

    else if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v16 = *a2;
    }

    v17 = (v16 | (v14 << v5)) + 3;
    v13 = v16 + 3;
    if (v4 < 4)
    {
      v13 = v17;
    }
  }

LABEL_35:
  if (v13 == 2)
  {
    v18 = result;
    (*(v3 + 32))();
    result = v18;
    v19 = 2;
    goto LABEL_41;
  }

  if (v13 == 1)
  {
    v18 = result;
    (*(v3 + 32))();
    result = v18;
    v19 = 1;
LABEL_41:
    *(v18 + v4) = v19;
    return result;
  }

  if (v13)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    *result = *a2;
    result[2] = a2[2];
    *(result + v4) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnimatedValueKeyframe.InterpolationParameters.Mode(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 24;
  if (*(v3 + 64) > 0x18uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = 252 - (1u >> (8 * v4));
  if (v4 >= 4)
  {
    v5 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_27;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void storeEnumTagSinglePayload for AnimatedValueKeyframe.InterpolationParameters.Mode(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x18)
  {
    v5 = 24;
  }

  v6 = 252 - (1u >> (8 * v5));
  if (v5 >= 4)
  {
    v6 = 252;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_21;
  }

LABEL_17:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_37:
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_37;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_41:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v8)
  {
    a1[v7] = v14;
  }
}

uint64_t getEnumTag for AnimatedValueKeyframe.InterpolationParameters.Mode(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 24;
  if (*(v2 + 64) > 0x18uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 3;
  if (v4 >= 3)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 3;
    LODWORD(v4) = v7 + 3;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void destructiveInjectEnumTag for AnimatedValueKeyframe.InterpolationParameters.Mode(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x18uLL)
  {
    v3 = 24;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 2)
  {
    v4 = a2 - 3;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 3;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 3;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

void type metadata accessor for CapsuleSlider<ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CapsuleSlider<ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>>>)
  {
    type metadata accessor for ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>();
    v6 = type metadata accessor for CapsuleSlider(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for CapsuleSlider<ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>>)
  {
    type metadata accessor for LabelStyleWritingModifier<IconOnlyLabelStyle>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>>);
    }
  }
}

void type metadata accessor for LabelStyleWritingModifier<IconOnlyLabelStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LabelStyleWritingModifier<IconOnlyLabelStyle>)
  {
    v2 = lazy protocol witness table accessor for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle();
    v4 = type metadata accessor for LabelStyleWritingModifier(a1, &type metadata for IconOnlyLabelStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LabelStyleWritingModifier<IconOnlyLabelStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle()
{
  result = lazy protocol witness table cache variable for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle;
  if (!lazy protocol witness table cache variable for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IconOnlyLabelStyle, &type metadata for IconOnlyLabelStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for SliderStyleConfiguration.Label;
    v5[1] = lazy protocol witness table accessor for type CapsuleSlider<ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>>> and conformance CapsuleSlider<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<IconOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>, type metadata accessor for LabelStyleWritingModifier<IconOnlyLabelStyle>, protocol conformance descriptor for LabelStyleWritingModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CapsuleSlider<ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>>> and conformance CapsuleSlider<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void *View.toolbarBackground<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  (*(v12 + 16))(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v13 = AnyShapeStyle.init<A>(_:)();
  v39 = 1;
  v38 = 1;
  v14 = *(a2 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v26 = a3;
    v27 = a5;
    v28 = v6;
    v37 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = v37;
    v16 = a2 + 32;
    do
    {
      outlined init with copy of ToolbarPlacement(v16, &v33);
      outlined init with copy of ToolbarPlacement.Storage(&v33, &v29);
      if (*(&v30 + 1) == 7)
      {
        outlined destroy of ToolbarPlacement(&v33);
        v17 = 0;
        v18 = 0uLL;
        v19 = 0uLL;
      }

      else
      {
        outlined destroy of ToolbarPlacement.Storage(&v29);
        v18 = v33;
        v19 = v34;
        v17 = v35;
      }

      v37 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        v25 = v18;
        v24 = v19;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v19 = v24;
        v18 = v25;
        v15 = v37;
      }

      *(v15 + 16) = v21 + 1;
      v22 = v15 + 40 * v21;
      *(v22 + 32) = v18;
      *(v22 + 48) = v19;
      *(v22 + 64) = v17;
      v16 += 40;
      --v14;
    }

    while (v14);
    a5 = v27;
    a3 = v26;
  }

  LOBYTE(v29) = 3;
  *(&v29 + 1) = 0;
  *&v30 = v13;
  BYTE8(v30) = 4;
  *&v31 = 0;
  BYTE8(v31) = v39;
  *v32 = 0;
  v32[8] = v38;
  *&v32[9] = 770;
  v32[11] = 3;
  *&v32[16] = v15;
  v32[24] = 2;
  MEMORY[0x18D00A570](&v29, a3, &type metadata for ToolbarAppearanceModifier, a5);
  v35 = v31;
  v36[0] = *v32;
  *(v36 + 9) = *&v32[9];
  v33 = v29;
  v34 = v30;
  return outlined destroy of ToolbarAppearanceModifier(&v33);
}

void *View.toolbarBackground(_:for:)(char a1, uint64_t a2, uint64_t a3)
{
  v29 = 1;
  v28 = 1;
  v5 = *(a2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v27 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v27;
    v8 = a2 + 32;
    do
    {
      outlined init with copy of ToolbarPlacement(v8, &v23);
      outlined init with copy of ToolbarPlacement.Storage(&v23, &v19);
      if (*(&v20 + 1) == 7)
      {
        outlined destroy of ToolbarPlacement(&v23);
        v9 = 0;
        v10 = 0uLL;
        v11 = 0uLL;
      }

      else
      {
        outlined destroy of ToolbarPlacement.Storage(&v19);
        v10 = v23;
        v11 = v24;
        v9 = v25;
      }

      v27 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        v16 = v11;
        v17 = v10;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v11 = v16;
        v10 = v17;
        v6 = v27;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 40 * v13;
      *(v14 + 32) = v10;
      *(v14 + 48) = v11;
      *(v14 + 64) = v9;
      v8 += 40;
      --v5;
    }

    while (v5);
    a3 = v18;
  }

  LOBYTE(v19) = 3;
  *(&v19 + 1) = 0;
  *&v20 = 0;
  BYTE8(v20) = 0x30100u >> (8 * a1);
  *&v21 = 0;
  BYTE8(v21) = v29;
  *v22 = 0;
  v22[8] = v28;
  *&v22[9] = 770;
  v22[11] = 3;
  *&v22[16] = v6;
  v22[24] = 1;
  MEMORY[0x18D00A570](&v19, a3, &type metadata for ToolbarAppearanceModifier);
  v25 = v21;
  v26[0] = *v22;
  *(v26 + 9) = *&v22[9];
  v23 = v19;
  v24 = v20;
  return outlined destroy of ToolbarAppearanceModifier(&v23);
}

void *View.toolbarColorScheme(_:for:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v28 = 1;
  v27 = 1;
  v5 = *(a2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v26 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v26;
    v8 = a2 + 32;
    do
    {
      outlined init with copy of ToolbarPlacement(v8, &v22);
      outlined init with copy of ToolbarPlacement.Storage(&v22, &v18);
      if (*(&v19 + 1) == 7)
      {
        outlined destroy of ToolbarPlacement(&v22);
        v9 = 0;
        v10 = 0uLL;
        v11 = 0uLL;
      }

      else
      {
        outlined destroy of ToolbarPlacement.Storage(&v18);
        v10 = v22;
        v11 = v23;
        v9 = v24;
      }

      v26 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        v16 = v11;
        v17 = v10;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v11 = v16;
        v10 = v17;
        v6 = v26;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 40 * v13;
      *(v14 + 32) = v10;
      *(v14 + 48) = v11;
      *(v14 + 64) = v9;
      v8 += 40;
      --v5;
    }

    while (v5);
  }

  LOBYTE(v18) = 3;
  *(&v18 + 1) = 0;
  *&v19 = 0;
  BYTE8(v19) = 4;
  *&v20 = 0;
  BYTE8(v20) = v28;
  *v21 = 0;
  v21[8] = v27;
  v21[9] = v4;
  *&v21[10] = 771;
  *&v21[16] = v6;
  v21[24] = 2;
  MEMORY[0x18D00A570](&v18, a3, &type metadata for ToolbarAppearanceModifier);
  v24 = v20;
  v25[0] = *v21;
  *(v25 + 9) = *&v21[9];
  v22 = v18;
  v23 = v19;
  return outlined destroy of ToolbarAppearanceModifier(&v22);
}

void *View.toolbarForegroundStyle<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  (*(v12 + 16))(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v13 = AnyShapeStyle.init<A>(_:)();
  v39 = 1;
  v38 = 1;
  v14 = *(a2 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v26 = a3;
    v27 = a5;
    v28 = v6;
    v37 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = v37;
    v16 = a2 + 32;
    do
    {
      outlined init with copy of ToolbarPlacement(v16, &v33);
      outlined init with copy of ToolbarPlacement.Storage(&v33, &v29);
      if (*(&v30 + 1) == 7)
      {
        outlined destroy of ToolbarPlacement(&v33);
        v17 = 0;
        v18 = 0uLL;
        v19 = 0uLL;
      }

      else
      {
        outlined destroy of ToolbarPlacement.Storage(&v29);
        v18 = v33;
        v19 = v34;
        v17 = v35;
      }

      v37 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        v25 = v18;
        v24 = v19;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v19 = v24;
        v18 = v25;
        v15 = v37;
      }

      *(v15 + 16) = v21 + 1;
      v22 = v15 + 40 * v21;
      *(v22 + 32) = v18;
      *(v22 + 48) = v19;
      *(v22 + 64) = v17;
      v16 += 40;
      --v14;
    }

    while (v14);
    a5 = v27;
    a3 = v26;
  }

  LOBYTE(v29) = 3;
  *(&v29 + 1) = v13;
  *&v30 = 0;
  BYTE8(v30) = 4;
  *&v31 = 0;
  BYTE8(v31) = v39;
  *v32 = 0;
  v32[8] = v38;
  *&v32[9] = 770;
  v32[11] = 3;
  *&v32[16] = v15;
  v32[24] = 2;
  MEMORY[0x18D00A570](&v29, a3, &type metadata for ToolbarAppearanceModifier, a5);
  v35 = v31;
  v36[0] = *v32;
  *(v36 + 9) = *&v32[9];
  v33 = v29;
  v34 = v30;
  return outlined destroy of ToolbarAppearanceModifier(&v33);
}

double View.avoidNavigationBarToToolbarConversion()(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

uint64_t EnvironmentValues.allowsNavigationBarToToolbarConversion.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey>, &type metadata for EnvironmentValues.AllowsToolbarConversionKey, &protocol witness table for EnvironmentValues.AllowsToolbarConversionKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey>, &type metadata for EnvironmentValues.AllowsToolbarConversionKey, &protocol witness table for EnvironmentValues.AllowsToolbarConversionKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.allowsNavigationBarToToolbarConversion : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey>, &type metadata for EnvironmentValues.AllowsToolbarConversionKey, &protocol witness table for EnvironmentValues.AllowsToolbarConversionKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey>, &type metadata for EnvironmentValues.AllowsToolbarConversionKey, &protocol witness table for EnvironmentValues.AllowsToolbarConversionKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.allowsNavigationBarToToolbarConversion : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey>, &type metadata for EnvironmentValues.AllowsToolbarConversionKey, &protocol witness table for EnvironmentValues.AllowsToolbarConversionKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t FocusedValues.toolbarVisibility.setter(uint64_t result)
{
  if (result != 3)
  {
    if ((*(v1 + 8) & 2) != 0)
    {
      if (one-time initialization token for scene == -1)
      {
LABEL_6:
        type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(0, &lazy cache variable for type metadata for FocusedValuePropertyKey<FocusedValues.__Key_toolbarVisibility>, &type metadata for FocusedValues.__Key_toolbarVisibility, &protocol witness table for FocusedValues.__Key_toolbarVisibility, type metadata accessor for FocusedValuePropertyKey);
        lazy protocol witness table accessor for type FocusedValuePropertyKey<FocusedValues.__Key_toolbarVisibility> and conformance FocusedValuePropertyKey<A>();

        return PropertyList.subscript.setter();
      }
    }

    else if (one-time initialization token for view == -1)
    {
      goto LABEL_6;
    }

    swift_once();
    goto LABEL_6;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarBackgroundVisibility.Role and conformance ToolbarBackgroundVisibility.Role()
{
  result = lazy protocol witness table cache variable for type ToolbarBackgroundVisibility.Role and conformance ToolbarBackgroundVisibility.Role;
  if (!lazy protocol witness table cache variable for type ToolbarBackgroundVisibility.Role and conformance ToolbarBackgroundVisibility.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarBackgroundVisibility.Role, &type metadata for ToolbarBackgroundVisibility.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarBackgroundVisibility.Role and conformance ToolbarBackgroundVisibility.Role);
  }

  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t (*a8)(void, uint64_t, uint64_t))
{
  v12 = result;
  if (a3)
  {
    v13 = a4[3];
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = a4[2];
  if (v14 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v14;
  }

  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  a5(0);
  v17 = *(a8(0, a6, a7) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  result = _swift_stdlib_malloc_size_1(v20);
  if (!v18)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v19) == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_29;
  }

  v20[2] = v15;
  v20[3] = 2 * ((result - v19) / v18);
LABEL_19:
  v22 = *(a8(0, a6, a7) - 8);
  if (v12)
  {
    if (v20 < a4 || (v23 = (*(v22 + 80) + 32) & ~*(v22 + 80), v20 + v23 >= a4 + v23 + *(v22 + 72) * v15))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v20 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v20;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  if (a3)
  {
    v13 = a4[3];
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = a4[2];
  if (v14 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    a5(0);
    v17 = swift_allocObject();
    v18 = _swift_stdlib_malloc_size_1(v17);
    v19 = v18 - 32;
    if (v18 < 32)
    {
      v19 = v18 - 1;
    }

    v17[2] = v15;
    v17[3] = 2 * (v19 >> 5);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (v12)
  {
    if (v17 != a4 || v17 + 4 >= &a4[4 * v15 + 4])
    {
      memmove(v17 + 4, a4 + 4, 32 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(0, a6, a7, a8, type metadata accessor for BackgroundTaskEntry);
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    a8(0, a5, a6, a7);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size_1(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  v18 = 40 * v12;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[v18])
    {
      memmove(v16, v17, v18);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, v18);
  }

  return v14;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    a5(0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size_1(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 29;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 2);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[4 * v9])
    {
      memmove(v14, v15, 4 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 4 * v9);
  }

  return v11;
}

void type metadata accessor for _ContiguousArrayStorage<[Text]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<[Text]>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for [Text], MEMORY[0x1E6981148], MEMORY[0x1E69E62F8]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<[Text]>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<BackgroundTaskEntry<AppRefreshBackgroundTask>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<BackgroundTaskEntry<AppRefreshBackgroundTask>>)
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(255, &lazy cache variable for type metadata for BackgroundTaskEntry<AppRefreshBackgroundTask>, &type metadata for AppRefreshBackgroundTask, &protocol witness table for AppRefreshBackgroundTask, type metadata accessor for BackgroundTaskEntry);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<BackgroundTaskEntry<AppRefreshBackgroundTask>>);
    }
  }
}

void type metadata accessor for (Float, Float, Float, Float)(__n128 a1)
{
  if (!lazy cache variable for type metadata for (Float, Float, Float, Float))
  {
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (Float, Float, Float, Float));
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<ProxyCodable<Color>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ProxyCodable<Color>>)
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(255, &lazy cache variable for type metadata for ProxyCodable<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981578], MEMORY[0x1E697DEE0]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<ProxyCodable<Color>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(name: String, value: String)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(name: String, value: String)>)
  {
    type metadata accessor for (key: Int, value: DragReorderableLayoutCoordinator.ChildFrame)(255, &lazy cache variable for type metadata for (name: String, value: String), MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], "name value ");
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(name: String, value: String)>);
    }
  }
}

unint64_t type metadata accessor for PlatformListCell & UIFocusItem()
{
  result = lazy cache variable for type metadata for PlatformListCell & UIFocusItem;
  if (!lazy cache variable for type metadata for PlatformListCell & UIFocusItem)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PlatformListCell & UIFocusItem);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(offset: Int, element: ToolbarStorage.Item)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(offset: Int, element: ToolbarStorage.Item)>)
  {
    type metadata accessor for (offset: Int, element: ToolbarStorage.Item)(255, &lazy cache variable for type metadata for (offset: Int, element: ToolbarStorage.Item), type metadata accessor for ToolbarStorage.Item);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(offset: Int, element: ToolbarStorage.Item)>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<UIKitProxyFocusItem>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<UIKitProxyFocusItem>)
  {
    type metadata accessor for DropDelegate(255, &lazy cache variable for type metadata for UIKitProxyFocusItem, &protocol descriptor for UIKitProxyFocusItem, 0);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<UIKitProxyFocusItem>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(offset: Int, element: AccessibilityNode)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(offset: Int, element: AccessibilityNode)>)
  {
    type metadata accessor for (offset: Int, element: ToolbarStorage.Item)(255, &lazy cache variable for type metadata for (offset: Int, element: AccessibilityNode), type metadata accessor for AccessibilityNode);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(offset: Int, element: AccessibilityNode)>);
    }
  }
}

void type metadata accessor for (offset: Int, element: ToolbarStorage.Item)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(String, Any)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>)
  {
    type metadata accessor for (Badge, Spacer)(255, &lazy cache variable for type metadata for (String, Any), MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<BackgroundTaskEntry<UnidentifiedURLSessionBackgroundTask>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<BackgroundTaskEntry<UnidentifiedURLSessionBackgroundTask>>)
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(255, &lazy cache variable for type metadata for BackgroundTaskEntry<UnidentifiedURLSessionBackgroundTask>, &type metadata for UnidentifiedURLSessionBackgroundTask, &protocol witness table for UnidentifiedURLSessionBackgroundTask, type metadata accessor for BackgroundTaskEntry);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<BackgroundTaskEntry<UnidentifiedURLSessionBackgroundTask>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<BackgroundTaskEntry<URLSessionBackgroundTask>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<BackgroundTaskEntry<URLSessionBackgroundTask>>)
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(255, &lazy cache variable for type metadata for BackgroundTaskEntry<URLSessionBackgroundTask>, &type metadata for URLSessionBackgroundTask, &protocol witness table for URLSessionBackgroundTask, type metadata accessor for BackgroundTaskEntry);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<BackgroundTaskEntry<URLSessionBackgroundTask>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<Attribute<TableRowList>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Attribute<TableRowList>>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for Attribute<TableRowList>, &type metadata for TableRowList, MEMORY[0x1E698D388]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Attribute<TableRowList>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<ScrapedContentTree<ScrapeableContent.Item>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ScrapedContentTree<ScrapeableContent.Item>>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for ScrapedContentTree<ScrapeableContent.Item>, MEMORY[0x1E697F290], type metadata accessor for ScrapedContentTree);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrapedContentTree<ScrapeableContent.Item>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<ScrapedContentTree<ScrapeableContent.Item>.Node>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ScrapedContentTree<ScrapeableContent.Item>.Node>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for ScrapedContentTree<ScrapeableContent.Item>.Node, MEMORY[0x1E697F290], type metadata accessor for ScrapedContentTree.Node);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrapedContentTree<ScrapeableContent.Item>.Node>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<HitTestTrace<ResponderBasedHitTestTracing>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<HitTestTrace<ResponderBasedHitTestTracing>>)
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(255, &lazy cache variable for type metadata for HitTestTrace<ResponderBasedHitTestTracing>, &type metadata for ResponderBasedHitTestTracing, &protocol witness table for ResponderBasedHitTestTracing, type metadata accessor for HitTestTrace);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<HitTestTrace<ResponderBasedHitTestTracing>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type FocusedValuePropertyKey<FocusedValues.__Key_toolbarVisibility> and conformance FocusedValuePropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type FocusedValuePropertyKey<FocusedValues.__Key_toolbarVisibility> and conformance FocusedValuePropertyKey<A>;
  if (!lazy protocol witness table cache variable for type FocusedValuePropertyKey<FocusedValues.__Key_toolbarVisibility> and conformance FocusedValuePropertyKey<A>)
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(255, &lazy cache variable for type metadata for FocusedValuePropertyKey<FocusedValues.__Key_toolbarVisibility>, &type metadata for FocusedValues.__Key_toolbarVisibility, &protocol witness table for FocusedValues.__Key_toolbarVisibility, type metadata accessor for FocusedValuePropertyKey);
    result = swift_getWitnessTable(protocol conformance descriptor for FocusedValuePropertyKey<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusedValuePropertyKey<FocusedValues.__Key_toolbarVisibility> and conformance FocusedValuePropertyKey<A>);
  }

  return result;
}

void type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey>, &type metadata for EnvironmentValues.AllowsToolbarConversionKey, &protocol witness table for EnvironmentValues.AllowsToolbarConversionKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Attribute<AccessibilityRotorEntryList>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Attribute<AccessibilityRotorEntryList>>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for Attribute<AccessibilityRotorEntryList>, &type metadata for AccessibilityRotorEntryList, MEMORY[0x1E698D388]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Attribute<AccessibilityRotorEntryList>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<SliderMark<Double>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<SliderMark<Double>>)
  {
    _sSNy12CoreGraphics7CGFloatVGMaTm_0(255, &lazy cache variable for type metadata for SliderMark<Double>, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], type metadata accessor for SliderMark);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<SliderMark<Double>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<SliderTick<Double>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<SliderTick<Double>>)
  {
    _sSNy12CoreGraphics7CGFloatVGMaTm_0(255, &lazy cache variable for type metadata for SliderTick<Double>, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], type metadata accessor for SliderTick);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<SliderTick<Double>>);
    }
  }
}

void _sSNy12CoreGraphics7CGFloatVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<String?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<String?>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<String?>);
    }
  }
}

void type metadata accessor for (UIViewController, TabEntry)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (UIViewController, TabEntry))
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UIViewController, TabEntry));
    }
  }
}

uint64_t specialized PlatformListViewBase<>.backgroundHost.getter(void (*a1)(double))
{
  type metadata accessor for UIBackgroundConfiguration?(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v3);
  v6 = type metadata accessor for UIBackgroundConfiguration();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    outlined destroy of UIBackgroundConfiguration?(v5);
    return 0;
  }

  v8 = UIBackgroundConfiguration.customView.getter();
  outlined destroy of UIBackgroundConfiguration?(v5);
  result = 0;
  if (v8)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>(0);
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for ResolvedMultiDatePicker(char *a1, char *a2)
{
  v4 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *a2;
  *a1 = *a2;
  if ((v5 & 0x20000) != 0)
  {
    a1 = (v6 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = v4;
    v8 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v8;
    v9 = *(v4 + 24);
    v10 = type metadata accessor for Date();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);

    if (v12(&a2[v9], 1, v10))
    {
      type metadata accessor for Date?(0);
      memcpy(&a1[v9], &a2[v9], *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&a1[v9], &a2[v9], v10);
      (*(v11 + 56))(&a1[v9], 0, 1, v10);
    }

    v14 = *(v7 + 28);
    if (v12(&a2[v14], 1, v10))
    {
      type metadata accessor for Date?(0);
      memcpy(&a1[v14], &a2[v14], *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&a1[v14], &a2[v14], v10);
      (*(v11 + 56))(&a1[v14], 0, 1, v10);
    }
  }

  return a1;
}

uint64_t destroy for ResolvedMultiDatePicker(uint64_t a1)
{

  v2 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Date();
  v9 = *(v4 - 8);
  v5 = *(v9 + 48);
  if (!v5(a1 + v3, 1, v4))
  {
    (*(v9 + 8))(a1 + v3, v4);
  }

  v6 = *(v2 + 28);
  result = (v5)(a1 + v6, 1, v4);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(a1 + v6, v4);
  }

  return result;
}

char *initializeWithCopy for ResolvedMultiDatePicker(char *a1, char *a2)
{
  v4 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v4;
  *(a1 + 2) = *(a2 + 2);
  v13 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v5 = *(v13 + 24);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);

  if (v8(&a2[v5], 1, v6))
  {
    type metadata accessor for Date?(0);
    memcpy(&a1[v5], &a2[v5], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  v10 = *(v13 + 28);
  if (v8(&a2[v10], 1, v6))
  {
    type metadata accessor for Date?(0);
    memcpy(&a1[v10], &a2[v10], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(&a1[v10], &a2[v10], v6);
    (*(v7 + 56))(&a1[v10], 0, 1, v6);
  }

  return a1;
}

char *assignWithCopy for ResolvedMultiDatePicker(char *a1, char *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);

  v4 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v5 = *(v4 + 24);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 1, v6);
  v10 = v8(&a2[v5], 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(&a1[v5], &a2[v5], v6);
      (*(v7 + 56))(&a1[v5], 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(&a1[v5], v6);
LABEL_6:
    type metadata accessor for Date?(0);
    memcpy(&a1[v5], &a2[v5], *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 24))(&a1[v5], &a2[v5], v6);
LABEL_7:
  v12 = *(v4 + 28);
  v13 = v8(&a1[v12], 1, v6);
  v14 = v8(&a2[v12], 1, v6);
  if (!v13)
  {
    if (!v14)
    {
      (*(v7 + 24))(&a1[v12], &a2[v12], v6);
      return a1;
    }

    (*(v7 + 8))(&a1[v12], v6);
    goto LABEL_12;
  }

  if (v14)
  {
LABEL_12:
    type metadata accessor for Date?(0);
    memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
    return a1;
  }

  (*(v7 + 16))(&a1[v12], &a2[v12], v6);
  (*(v7 + 56))(&a1[v12], 0, 1, v6);
  return a1;
}

uint64_t initializeWithTake for ResolvedMultiDatePicker(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v5 = *(v4 + 24);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(a2 + v5, 1, v6))
  {
    type metadata accessor for Date?(0);
    memcpy((a1 + v5), (a2 + v5), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1 + v5, a2 + v5, v6);
    (*(v7 + 56))(a1 + v5, 0, 1, v6);
  }

  v10 = *(v4 + 28);
  if (v8(a2 + v10, 1, v6))
  {
    type metadata accessor for Date?(0);
    memcpy((a1 + v10), (a2 + v10), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1 + v10, a2 + v10, v6);
    (*(v7 + 56))(a1 + v10, 0, 1, v6);
  }

  return a1;
}

char *assignWithTake for ResolvedMultiDatePicker(char *a1, char *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);

  v4 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v5 = *(v4 + 24);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 1, v6);
  v10 = v8(&a2[v5], 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(&a1[v5], &a2[v5], v6);
      (*(v7 + 56))(&a1[v5], 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(&a1[v5], v6);
LABEL_6:
    type metadata accessor for Date?(0);
    memcpy(&a1[v5], &a2[v5], *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 40))(&a1[v5], &a2[v5], v6);
LABEL_7:
  v12 = *(v4 + 28);
  v13 = v8(&a1[v12], 1, v6);
  v14 = v8(&a2[v12], 1, v6);
  if (!v13)
  {
    if (!v14)
    {
      (*(v7 + 40))(&a1[v12], &a2[v12], v6);
      return a1;
    }

    (*(v7 + 8))(&a1[v12], v6);
    goto LABEL_12;
  }

  if (v14)
  {
LABEL_12:
    type metadata accessor for Date?(0);
    memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
    return a1;
  }

  (*(v7 + 32))(&a1[v12], &a2[v12], v6);
  (*(v7 + 56))(&a1[v12], 0, 1, v6);
  return a1;
}

uint64_t type metadata completion function for ResolvedMultiDatePicker(uint64_t a1)
{
  result = type metadata accessor for MultiDatePickerStyleConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for MultiDatePickerStyleConfiguration(char *a1, char *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v7 = a1;
    v8 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v8;
    v9 = *(a3 + 24);
    v10 = type metadata accessor for Date();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);

    if (v12(&a2[v9], 1, v10))
    {
      type metadata accessor for Date?(0);
      memcpy(&v7[v9], &a2[v9], *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v7[v9], &a2[v9], v10);
      (*(v11 + 56))(&v7[v9], 0, 1, v10);
    }

    v14 = *(a3 + 28);
    if (v12(&a2[v14], 1, v10))
    {
      type metadata accessor for Date?(0);
      memcpy(&v7[v14], &a2[v14], *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v7[v14], &a2[v14], v10);
      (*(v11 + 56))(&v7[v14], 0, 1, v10);
    }
  }

  return v7;
}

uint64_t destroy for MultiDatePickerStyleConfiguration(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = type metadata accessor for Date();
  v10 = *(v5 - 8);
  v6 = *(v10 + 48);
  if (!v6(a1 + v4, 1, v5))
  {
    (*(v10 + 8))(a1 + v4, v5);
  }

  v7 = *(a2 + 28);
  result = (v6)(a1 + v7, 1, v5);
  if (!result)
  {
    v9 = *(v10 + 8);

    return v9(a1 + v7, v5);
  }

  return result;
}

char *initializeWithCopy for MultiDatePickerStyleConfiguration(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  *(a1 + 2) = *(a2 + 2);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);

  if (v9(&a2[v6], 1, v7))
  {
    type metadata accessor for Date?(0);
    memcpy(&a1[v6], &a2[v6], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  v11 = *(a3 + 28);
  if (v9(&a2[v11], 1, v7))
  {
    type metadata accessor for Date?(0);
    memcpy(&a1[v11], &a2[v11], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v11], &a2[v11], v7);
    (*(v8 + 56))(&a1[v11], 0, 1, v7);
  }

  return a1;
}

char *assignWithCopy for MultiDatePickerStyleConfiguration(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);

  v6 = *(a3 + 24);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (v10)
  {
    if (!v11)
    {
      (*(v8 + 16))(&a1[v6], &a2[v6], v7);
      (*(v8 + 56))(&a1[v6], 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    (*(v8 + 8))(&a1[v6], v7);
LABEL_6:
    type metadata accessor for Date?(0);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 24))(&a1[v6], &a2[v6], v7);
LABEL_7:
  v13 = *(a3 + 28);
  v14 = v9(&a1[v13], 1, v7);
  v15 = v9(&a2[v13], 1, v7);
  if (!v14)
  {
    if (!v15)
    {
      (*(v8 + 24))(&a1[v13], &a2[v13], v7);
      return a1;
    }

    (*(v8 + 8))(&a1[v13], v7);
    goto LABEL_12;
  }

  if (v15)
  {
LABEL_12:
    type metadata accessor for Date?(0);
    memcpy(&a1[v13], &a2[v13], *(*(v16 - 8) + 64));
    return a1;
  }

  (*(v8 + 16))(&a1[v13], &a2[v13], v7);
  (*(v8 + 56))(&a1[v13], 0, 1, v7);
  return a1;
}

uint64_t initializeWithTake for MultiDatePickerStyleConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(a2 + v6, 1, v7))
  {
    type metadata accessor for Date?(0);
    memcpy((a1 + v6), (a2 + v6), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v11 = *(a3 + 28);
  if (v9(a2 + v11, 1, v7))
  {
    type metadata accessor for Date?(0);
    memcpy((a1 + v11), (a2 + v11), *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v11, a2 + v11, v7);
    (*(v8 + 56))(a1 + v11, 0, 1, v7);
  }

  return a1;
}

char *assignWithTake for MultiDatePickerStyleConfiguration(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);

  v6 = *(a3 + 24);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (v10)
  {
    if (!v11)
    {
      (*(v8 + 32))(&a1[v6], &a2[v6], v7);
      (*(v8 + 56))(&a1[v6], 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    (*(v8 + 8))(&a1[v6], v7);
LABEL_6:
    type metadata accessor for Date?(0);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 40))(&a1[v6], &a2[v6], v7);
LABEL_7:
  v13 = *(a3 + 28);
  v14 = v9(&a1[v13], 1, v7);
  v15 = v9(&a2[v13], 1, v7);
  if (!v14)
  {
    if (!v15)
    {
      (*(v8 + 40))(&a1[v13], &a2[v13], v7);
      return a1;
    }

    (*(v8 + 8))(&a1[v13], v7);
    goto LABEL_12;
  }

  if (v15)
  {
LABEL_12:
    type metadata accessor for Date?(0);
    memcpy(&a1[v13], &a2[v13], *(*(v16 - 8) + 64));
    return a1;
  }

  (*(v8 + 32))(&a1[v13], &a2[v13], v7);
  (*(v8 + 56))(&a1[v13], 0, 1, v7);
  return a1;
}

void type metadata completion function for MultiDatePickerStyleConfiguration(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t MultiDatePickerValue.Init.base.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ResolvedMultiDatePicker(0);
  Value = AGGraphGetValue();

  return outlined init with copy of ResolvedMultiDatePicker(Value, a1);
}

uint64_t MultiDatePickerValue.Init.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ResolvedMultiDatePicker(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v2 + *(a1 + 36), v11, v13);
  MultiDatePickerValue.Init.base.getter(v10);
  outlined init with take of MultiDatePickerStyleConfiguration(v10, v7);
  return MultiDatePickerValue.init(style:configuration:)(v15, v7, v11, *(a1 + 24), a2);
}

uint64_t MultiDatePickerValue.init(style:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = a5 + *(type metadata accessor for MultiDatePickerValue(0, a3, a4, v9) + 36);

  return outlined init with take of MultiDatePickerStyleConfiguration(a2, v10);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance MultiDatePickerValue<A>.Init@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = type metadata accessor for MultiDatePickerValue(0, *(a1 + 16), *(a1 + 24), a3);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 1, 1, v4);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedMultiDatePicker(int *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v2;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v3 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v3;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for MultiDatePickerValue<AutomaticMultiDatePickerStyle>(0, &lazy cache variable for type metadata for MultiDatePickerValue<AutomaticMultiDatePickerStyle>, type metadata accessor for MultiDatePickerValue);
  type metadata accessor for MultiDatePickerValue<AutomaticMultiDatePickerStyle>(0, &lazy cache variable for type metadata for MultiDatePickerValue<AutomaticMultiDatePickerStyle>.Init, type metadata accessor for MultiDatePickerValue.Init);
  lazy protocol witness table accessor for type MultiDatePickerValue<AutomaticMultiDatePickerStyle>.Init and conformance MultiDatePickerValue<A>.Init();
  v5 = Attribute.init<A>(body:value:flags:update:)();
  return off_1EFFB3020(&v5, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedMultiDatePicker(int *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for MultiDatePickerValue<AutomaticMultiDatePickerStyle>(0, &lazy cache variable for type metadata for MultiDatePickerValue<AutomaticMultiDatePickerStyle>, type metadata accessor for MultiDatePickerValue);
  type metadata accessor for MultiDatePickerValue<AutomaticMultiDatePickerStyle>(0, &lazy cache variable for type metadata for MultiDatePickerValue<AutomaticMultiDatePickerStyle>.Init, type metadata accessor for MultiDatePickerValue.Init);
  lazy protocol witness table accessor for type MultiDatePickerValue<AutomaticMultiDatePickerStyle>.Init and conformance MultiDatePickerValue<A>.Init();
  v4 = Attribute.init<A>(body:value:flags:update:)();
  return off_1EFFB3028(&v4, a2);
}

void type metadata accessor for MultiDatePickerValue<AutomaticMultiDatePickerStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *, _UNKNOWN **))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for AutomaticMultiDatePickerStyle, &protocol witness table for AutomaticMultiDatePickerStyle);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MultiDatePickerValue<AutomaticMultiDatePickerStyle>.Init and conformance MultiDatePickerValue<A>.Init()
{
  result = lazy protocol witness table cache variable for type MultiDatePickerValue<AutomaticMultiDatePickerStyle>.Init and conformance MultiDatePickerValue<A>.Init;
  if (!lazy protocol witness table cache variable for type MultiDatePickerValue<AutomaticMultiDatePickerStyle>.Init and conformance MultiDatePickerValue<A>.Init)
  {
    type metadata accessor for MultiDatePickerValue<AutomaticMultiDatePickerStyle>(255, &lazy cache variable for type metadata for MultiDatePickerValue<AutomaticMultiDatePickerStyle>.Init, type metadata accessor for MultiDatePickerValue.Init);
    result = swift_getWitnessTable(protocol conformance descriptor for MultiDatePickerValue<A>.Init, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultiDatePickerValue<AutomaticMultiDatePickerStyle>.Init and conformance MultiDatePickerValue<A>.Init);
  }

  return result;
}

uint64_t type metadata completion function for MultiDatePickerValue.Init(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for MultiDatePickerValue(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MultiDatePickerStyleConfiguration(319);
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MultiDatePickerValue(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  if (*(v9 + 84))
  {
    v11 = *(v9 + 64);
  }

  else
  {
    v11 = *(v9 + 64) + 1;
  }

  v12 = v10 | 7 | *(v6 + 80);
  if (v12 == 7 && ((*(v6 + 80) | *(v9 + 80)) & 0x100000) == 0 && ((((-25 - v10) | v10) - (v11 + v10)) | v10) - ((((v10 | 7) + v7) & ~(v10 | 7)) + v11) >= 0xFFFFFFFFFFFFFFE7)
  {
    v17 = v8;
    v27 = v11 + v10;
    v18 = ~v10;
    (*(v6 + 16))(a1, a2, v5);
    v28 = a1;
    v19 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v20;
    v19[1] = v20[1];
    v19[2] = v20[2];
    v21 = ((v19 + v10 + 24) & ~v10);
    v22 = ((v20 + v10 + 24) & ~v10);
    v23 = *(v9 + 48);

    if (v23(v22, 1, v17))
    {
      memcpy(v21, v22, v11);
    }

    else
    {
      (*(v9 + 16))(v21, v22, v17);
      (*(v9 + 56))(v21, 0, 1, v17);
    }

    v24 = &v21[v27];
    v25 = &v22[v27];
    if (v23((v25 & v18), 1, v17))
    {
      memcpy((v24 & v18), (v25 & v18), v11);
    }

    else
    {
      (*(v9 + 16))(v24 & v18, v25 & v18, v17);
      (*(v9 + 56))(v24 & v18, 0, 1, v17);
    }

    return v28;
  }

  else
  {
    v15 = *a2;
    *a1 = *a2;
    v16 = v15 + ((v12 + 16) & ~v12);
  }

  return v16;
}

uint64_t destroy for MultiDatePickerValue(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *(v3 + 56);
  v5 = type metadata accessor for Date();
  v16 = *(v5 - 8);
  v6 = *(v16 + 80);
  v7 = v4 + a1 + (v6 | 7);
  v8 = ~v6;
  v9 = v7 & ~v6 & 0xFFFFFFFFFFFFFFF8;

  v10 = (v6 + v9 + 24) & ~v6;
  v11 = *(v16 + 48);
  if (!v11(v10, 1, v5))
  {
    (*(v16 + 8))(v10, v5);
  }

  v12 = *(v16 + 64);
  if (*(v16 + 84))
  {
    v13 = v10 + v6 + v12;
  }

  else
  {
    v13 = v10 + v6 + v12 + 1;
  }

  result = (v11)(v13 & v8, 1, v5);
  if (!result)
  {
    v15 = *(v16 + 8);

    return v15(v13 & v8, v5);
  }

  return result;
}

uint64_t initializeWithCopy for MultiDatePickerValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v24 = a1;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  *v11 = *v12;
  v11[1] = v12[1];
  v11[2] = v12[2];
  v13 = ~v9;
  v14 = ((v11 + v9 + 24) & ~v9);
  v15 = ((v12 + v9 + 24) & ~v9);
  v16 = *(v8 + 48);

  if (v16(v15, 1, v7))
  {
    v17 = *(v8 + 84);
    v18 = *(v8 + 64);
    if (v17)
    {
      v19 = *(v8 + 64);
    }

    else
    {
      v19 = v18 + 1;
    }

    memcpy(v14, v15, v19);
  }

  else
  {
    (*(v8 + 16))(v14, v15, v7);
    (*(v8 + 56))(v14, 0, 1, v7);
    v17 = *(v8 + 84);
    v18 = *(v8 + 64);
  }

  if (v17)
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 + 1;
  }

  v21 = &v14[v9 + v20];
  v22 = &v15[v9 + v20];
  if (v16((v22 & v13), 1, v7))
  {
    memcpy((v21 & v13), (v22 & v13), v20);
  }

  else
  {
    (*(v8 + 16))(v21 & v13, v22 & v13, v7);
    (*(v8 + 56))(v21 & v13, 0, 1, v7);
  }

  return v24;
}

uint64_t assignWithCopy for MultiDatePickerValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v28 = a1;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  *v11 = *v12;

  v11[1] = v12[1];

  v11[2] = v12[2];

  v13 = ~v9;
  v14 = ((v11 + v9 + 24) & ~v9);
  v15 = ((v12 + v9 + 24) & ~v9);
  v16 = *(v8 + 48);
  v17 = v16(v14, 1, v7);
  v18 = v16(v15, 1, v7);
  if (v17)
  {
    if (!v18)
    {
      (*(v8 + 16))(v14, v15, v7);
      (*(v8 + 56))(v14, 0, 1, v7);
      goto LABEL_12;
    }

    v19 = *(v8 + 84);
    v20 = *(v8 + 64);
  }

  else
  {
    if (!v18)
    {
      (*(v8 + 24))(v14, v15, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v14, v7);
    v19 = *(v8 + 84);
    v20 = *(v8 + 64);
  }

  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = v20 + 1;
  }

  memcpy(v14, v15, v21);
LABEL_12:
  if (*(v8 + 84))
  {
    v22 = *(v8 + 64);
  }

  else
  {
    v22 = *(v8 + 64) + 1;
  }

  v23 = &v14[v9 + v22];
  v24 = &v15[v9 + v22];
  v25 = v16((v23 & v13), 1, v7);
  v26 = v16((v24 & v13), 1, v7);
  if (!v25)
  {
    if (!v26)
    {
      (*(v8 + 24))(v23 & v13, v24 & v13, v7);
      return v28;
    }

    (*(v8 + 8))(v23 & v13, v7);
    goto LABEL_20;
  }

  if (v26)
  {
LABEL_20:
    memcpy((v23 & v13), (v24 & v13), v22);
    return v28;
  }

  (*(v8 + 16))(v23 & v13, v24 & v13, v7);
  (*(v8 + 56))(v23 & v13, 0, 1, v7);
  return v28;
}

uint64_t initializeWithTake for MultiDatePickerValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v25 = a1;
  v11 = (v10 + a1) & ~(v9 | 7);
  v12 = (v10 + a2) & ~(v9 | 7);
  v13 = *(v12 + 0x10);
  *v11 = *v12;
  *(v11 + 16) = v13;
  v14 = ~v9;
  v15 = ((v9 + 24 + v11) & ~v9);
  v16 = ((v9 + 24 + v12) & ~v9);
  v17 = *(v8 + 48);
  if (v17(v16, 1, v7))
  {
    v18 = *(v8 + 84);
    v19 = *(v8 + 64);
    if (v18)
    {
      v20 = *(v8 + 64);
    }

    else
    {
      v20 = v19 + 1;
    }

    memcpy(v15, v16, v20);
  }

  else
  {
    (*(v8 + 32))(v15, v16, v7);
    (*(v8 + 56))(v15, 0, 1, v7);
    v18 = *(v8 + 84);
    v19 = *(v8 + 64);
  }

  if (v18)
  {
    v21 = v19;
  }

  else
  {
    v21 = v19 + 1;
  }

  v22 = &v15[v9 + v21];
  v23 = &v16[v9 + v21];
  if (v17((v23 & v14), 1, v7))
  {
    memcpy((v22 & v14), (v23 & v14), v21);
  }

  else
  {
    (*(v8 + 32))(v22 & v14, v23 & v14, v7);
    (*(v8 + 56))(v22 & v14, 0, 1, v7);
  }

  return v25;
}

uint64_t assignWithTake for MultiDatePickerValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v28 = a1;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  *v11 = *v12;

  v11[1] = v12[1];

  v11[2] = v12[2];

  v13 = ~v9;
  v14 = ((v11 + v9 + 24) & ~v9);
  v15 = ((v12 + v9 + 24) & ~v9);
  v16 = *(v8 + 48);
  v17 = v16(v14, 1, v7);
  v18 = v16(v15, 1, v7);
  if (v17)
  {
    if (!v18)
    {
      (*(v8 + 32))(v14, v15, v7);
      (*(v8 + 56))(v14, 0, 1, v7);
      goto LABEL_12;
    }

    v19 = *(v8 + 84);
    v20 = *(v8 + 64);
  }

  else
  {
    if (!v18)
    {
      (*(v8 + 40))(v14, v15, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v14, v7);
    v19 = *(v8 + 84);
    v20 = *(v8 + 64);
  }

  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = v20 + 1;
  }

  memcpy(v14, v15, v21);
LABEL_12:
  if (*(v8 + 84))
  {
    v22 = *(v8 + 64);
  }

  else
  {
    v22 = *(v8 + 64) + 1;
  }

  v23 = &v14[v9 + v22];
  v24 = &v15[v9 + v22];
  v25 = v16((v23 & v13), 1, v7);
  v26 = v16((v24 & v13), 1, v7);
  if (!v25)
  {
    if (!v26)
    {
      (*(v8 + 40))(v23 & v13, v24 & v13, v7);
      return v28;
    }

    (*(v8 + 8))(v23 & v13, v7);
    goto LABEL_20;
  }

  if (v26)
  {
LABEL_20:
    memcpy((v23 & v13), (v24 & v13), v22);
    return v28;
  }

  (*(v8 + 32))(v23 & v13, v24 & v13, v7);
  (*(v8 + 56))(v23 & v13, 0, 1, v7);
  return v28;
}

uint64_t getEnumTagSinglePayload for MultiDatePickerValue(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v9 + 80);
  if (v11)
  {
    v16 = *(*(v8 - 8) + 64);
  }

  else
  {
    v16 = *(*(v8 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v15 | 7;
  v18 = (v15 | 7) + *(v6 + 64);
  v19 = v15 + 24;
  if (a2 <= v14)
  {
    goto LABEL_37;
  }

  v20 = (v18 & ~v17) + v16 + ((v16 + v15 + (v19 & ~v15)) & ~v15);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((a2 - v14 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v24 < 2)
    {
LABEL_37:
      if (v7 >= v13)
      {
        v29 = *(v6 + 48);

        return v29(a1, v7, v5);
      }

      else if ((v12 & 0x80000000) != 0)
      {
        v30 = (*(v10 + 48))((v19 + ((a1 + v18) & ~v17)) & ~v15);
        if (v30 >= 2)
        {
          return v30 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v28 = *(((a1 + v18) & ~v17) + 8);
        if (v28 >= 0xFFFFFFFF)
        {
          LODWORD(v28) = -1;
        }

        return (v28 + 1);
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_37;
  }

LABEL_24:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = v20;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v14 + (v27 | v25) + 1;
}

void storeEnumTagSinglePayload for MultiDatePickerValue(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v34 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(type metadata accessor for Date() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = *(v11 + 80);
  if (v13)
  {
    v15 = v13 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = v16;
  }

  v18 = (v14 | 7) + *(v8 + 64);
  if (v13)
  {
    v19 = *(v11 + 64);
  }

  else
  {
    v19 = *(v11 + 64) + 1;
  }

  v20 = ((v19 + v14 + ((v14 + 24) & ~v14)) & ~v14) + v19;
  v21 = v20 + (v18 & ~(v14 | 7));
  if (a3 <= v17)
  {
    goto LABEL_27;
  }

  if (v21 > 3)
  {
    v10 = 1;
    if (v17 >= a2)
    {
      goto LABEL_16;
    }

LABEL_28:
    v24 = ~v17 + a2;
    if (v21 >= 4)
    {
      bzero(a1, v21);
      *a1 = v24;
      v25 = 1;
      if (v10 > 1)
      {
        goto LABEL_30;
      }

LABEL_65:
      if (v10)
      {
        a1[v21] = v25;
      }

      return;
    }

    v25 = (v24 >> (8 * v21)) + 1;
    if (v21)
    {
      v30 = v24 & ~(-1 << (8 * v21));
      bzero(a1, v21);
      if (v21 != 3)
      {
        if (v21 == 2)
        {
          *a1 = v30;
          if (v10 <= 1)
          {
            goto LABEL_65;
          }
        }

        else
        {
          *a1 = v24;
          if (v10 <= 1)
          {
            goto LABEL_65;
          }
        }

LABEL_30:
        if (v10 == 2)
        {
          *&a1[v21] = v25;
        }

        else
        {
          *&a1[v21] = v25;
        }

        return;
      }

      *a1 = v30;
      a1[2] = BYTE2(v30);
    }

    if (v10 <= 1)
    {
      goto LABEL_65;
    }

    goto LABEL_30;
  }

  v22 = ((a3 - v17 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
  if (!HIWORD(v22))
  {
    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v10 = v23;
    }

    else
    {
      v10 = 0;
    }

LABEL_27:
    if (v17 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v10 = 4;
  if (v17 < a2)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v21] = 0;
  }

  else if (v10)
  {
    a1[v21] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 >= v16)
  {
    v31 = *(v34 + 56);

    v31(a1, a2, v9, v7);
  }

  else
  {
    v26 = (&a1[v18] & ~(v14 | 7));
    if (v16 >= a2)
    {
      if ((v15 & 0x80000000) != 0)
      {
        v26 = ((v26 + v14 + 24) & ~v14);
        if (v15 >= a2)
        {
          v33 = *(v12 + 56);

          v33(v26, (a2 + 1));
        }

        else
        {
          if (v19 <= 3)
          {
            v32 = ~(-1 << (8 * v19));
          }

          else
          {
            v32 = -1;
          }

          if (v19)
          {
            v28 = v32 & (~v15 + a2);
            if (v19 <= 3)
            {
              v29 = v19;
            }

            else
            {
              v29 = 4;
            }

            bzero(v26, v19);
            if (v29 <= 2)
            {
              if (v29 == 1)
              {
                goto LABEL_46;
              }

              goto LABEL_80;
            }

            goto LABEL_81;
          }
        }
      }

      else if ((a2 & 0x80000000) != 0)
      {
        v26[1] = 0;
        v26[2] = 0;
        *v26 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v26[1] = (a2 - 1);
      }
    }

    else
    {
      if (v20 <= 3)
      {
        v27 = ~(-1 << (8 * v20));
      }

      else
      {
        v27 = -1;
      }

      if (v20)
      {
        v28 = v27 & (~v16 + a2);
        if (v20 <= 3)
        {
          v29 = ((v19 + v14 + ((v14 + 24) & ~v14)) & ~v14) + v19;
        }

        else
        {
          v29 = 4;
        }

        bzero(v26, v20);
        if (v29 <= 2)
        {
          if (v29 == 1)
          {
LABEL_46:
            *v26 = v28;
            return;
          }

LABEL_80:
          *v26 = v28;
          return;
        }

LABEL_81:
        if (v29 == 3)
        {
          *v26 = v28;
          *(v26 + 2) = BYTE2(v28);
        }

        else
        {
          *v26 = v28;
        }
      }
    }
  }
}

unint64_t instantiation function for generic protocol witness table for MultiDatePickerStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MultiDatePickerStyleConfiguration.Label and conformance MultiDatePickerStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined init with copy of ResolvedMultiDatePicker(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedMultiDatePicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t View.itemProvider(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a1;
    v5 = a2;
    v6 = swift_allocObject();
    a2 = v5;
    v7 = v6;
    a1 = v4;
    *(v7 + 16) = v4;
    *(v7 + 24) = a2;
    v8 = _sSo14NSItemProviderCSgIego_ACIegr_TRTA_0;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  outlined copy of AppIntentExecutor?(a1, a2);
  View._trait<A>(_:_:)();
  return outlined consume of TriggerSubmitAction?(v8, v7);
}

void type metadata accessor for _TraitWritingModifier<ItemProviderTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<ItemProviderTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<ItemProviderTraitKey>);
    }
  }
}

uint64_t type metadata completion function for ActiveControlLabelWrapper(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ActiveControlLabelWrapper(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 & 0xFFFFFFFFFFFFFFF8) + 17 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = *(a2 + v5);
    v10 = (v3 + v5) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    outlined copy of Environment<Bool>.Content();
    *(v10 + 8) = v12;
    *(v10 + 16) = v13;
  }

  return v3;
}

uint64_t destroy for ActiveControlLabelWrapper(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (*(v3 + 56) + a1) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);

  return outlined consume of Environment<Bool>.Content(v5, v6);
}

uint64_t initializeWithCopy for ActiveControlLabelWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v9 = v7 & 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 8);
  LOBYTE(v5) = *(v8 + 16);
  outlined copy of Environment<Bool>.Content();
  *(v9 + 8) = v10;
  *(v9 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for ActiveControlLabelWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v9 = v7 & 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 8);
  LOBYTE(v5) = *(v8 + 16);
  outlined copy of Environment<Bool>.Content();
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  *(v9 + 8) = v10;
  *(v9 + 16) = v5;
  outlined consume of Environment<Bool>.Content(v11, v12);
  return a1;
}

uint64_t initializeWithTake for ActiveControlLabelWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = v9;
  return a1;
}

uint64_t assignWithTake for ActiveControlLabelWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  LOBYTE(v8) = *(v8 + 16);
  v10 = *(v7 + 8);
  v11 = *(v7 + 16);
  *(v7 + 8) = v9;
  *(v7 + 16) = v8;
  outlined consume of Environment<Bool>.Content(v10, v11);
  return a1;
}

uint64_t getEnumTagSinglePayload for ActiveControlLabelWrapper(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 17;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = a1[v6];
    if (v17 >= 2)
    {
      return v17 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for ActiveControlLabelWrapper(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = (v9 & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        a1[v9] = a2 + 1;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, (v9 & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void type metadata accessor for _EnvironmentKeyTransformModifier<ColorScheme>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ColorScheme>)
  {
    v0 = type metadata accessor for _EnvironmentKeyTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ColorScheme>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ColorScheme> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ColorScheme> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ColorScheme> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<ColorScheme>();
    result = swift_getWitnessTable(MEMORY[0x1E6980B30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ColorScheme> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, ScrollEdgeEffectTagModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, ScrollEdgeEffectTagModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, ScrollEdgeEffectTagModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, ScrollEdgeEffectTagModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content> and conformance PlatformItemLabelView<A, B, C>();
    v5[1] = &protocol witness table for ScrollEdgeEffectTagModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, ScrollEdgeEffectTagModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, ScrollEdgeEffectTagModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, ScrollEdgeEffectTagModifier>)
  {
    type metadata accessor for PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, ScrollEdgeEffectTagModifier>);
    }
  }
}

void type metadata accessor for _TraitWritingModifier<SidebarDimmingIgnoresSafeAreaTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<SidebarDimmingIgnoresSafeAreaTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<SidebarDimmingIgnoresSafeAreaTraitKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<SidebarDimmingIgnoresSafeAreaTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<SidebarDimmingIgnoresSafeAreaTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<SidebarDimmingIgnoresSafeAreaTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<SidebarDimmingIgnoresSafeAreaTraitKey>();
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<SidebarDimmingIgnoresSafeAreaTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t static InsetGroupedListStyle._makeView<A>(value:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a2[3];
  v39 = a2[2];
  v40 = v7;
  v41 = a2[4];
  v42 = *(a2 + 20);
  v8 = a2[1];
  v37 = *a2;
  v38 = v8;
  v30 = v6;
  v26 = &type metadata for InsetGroupedListStyle;
  *&v27 = a3;
  *(&v27 + 1) = &protocol witness table for InsetGroupedListStyle;
  *&v28 = a4;
  type metadata accessor for _ListValue(255, &v26);
  type metadata accessor for _GraphValue();
  v9 = _GraphValue.value.getter();
  memset(v35, 0, sizeof(v35));
  v36 = 1;
  v10 = lazy protocol witness table accessor for type InsetGroupedListStyleContext and conformance InsetGroupedListStyleContext();
  InsettableGroupedListBodyRule.init(base:insetMode:context:)(v9, v35, v11, &type metadata for InsetGroupedListStyle, &type metadata for InsetGroupedListStyleContext, a3, &protocol witness table for InsetGroupedListStyle, v10, &v26, a4);
  v12 = v26;
  v13 = v29;
  v14 = BYTE1(v29);
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>>(255);
  v16 = v15;
  v18 = type metadata accessor for SelectionManagerBox(255, a3, a4, v17);
  v19 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>> and conformance <> ModifiedContent<A, B>();
  v24 = v28;
  v25 = v27;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v18);
  v26 = v16;
  *&v27 = v18;
  *(&v27 + 1) = v19;
  *&v28 = WitnessTable;
  v21 = type metadata accessor for InsettableGroupedListBody(0, &v26);
  v30 = v12;
  v32 = v24;
  v31 = v25;
  v33 = v13;
  v34 = v14;
  v26 = &type metadata for InsetGroupedListStyle;
  *&v27 = &type metadata for InsetGroupedListStyleContext;
  *(&v27 + 1) = a3;
  *&v28 = &protocol witness table for InsetGroupedListStyle;
  *(&v28 + 1) = v10;
  v29 = a4;
  v22 = type metadata accessor for InsettableGroupedListBodyRule(0, &v26);
  swift_getWitnessTable(")t\tb,3\b", v22);
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable(protocol conformance descriptor for InsettableGroupedListBody<A, B>, v21);
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t UIKitCalendarView.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with take of MultiDatePickerStyleConfiguration(a1, a2);
  v3 = type metadata accessor for UIKitCalendarView(0);
  v4 = v3[5];
  *(a2 + v4) = swift_getKeyPath();
  v5 = MEMORY[0x1E697DCB8];
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v6 = v3[6];
  *(a2 + v6) = swift_getKeyPath();
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], v5);
  swift_storeEnumTagMultiPayload();
  v7 = v3[7];
  *(a2 + v7) = swift_getKeyPath();
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], v5);
  swift_storeEnumTagMultiPayload();
  v8 = a2 + v3[8];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a2 + v3[9];
  result = swift_getKeyPath();
  *v9 = result;
  *(v9 + 8) = 0;
  return result;
}

void UIKitCalendarView.fontDesign.getter(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for UIKitCalendarView(0);
  v4 = specialized Environment.wrappedValue.getter(*(v1 + *(v3 + 36)), *(v1 + *(v3 + 36) + 8));
  v5 = v4;
  v14 = v4;
  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    while (!__OFSUB__(v6--, 1))
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x18D00E9C0](v6, v5);
LABEL_8:
        type metadata accessor for AnyDynamicFontModifier<Font.DesignModifier>(0);
        v8 = swift_dynamicCastClass();
        v9 = v8 == 0;

        if (v8 || !v6)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_13;
        }

        if (v6 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {

          goto LABEL_8;
        }

LABEL_14:
        __break(1u);
LABEL_15:
        v4 = __CocoaSet.count.getter();
        v6 = v4;
        if (!v4)
        {
          goto LABEL_16;
        }
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_16:
  v9 = 1;
LABEL_17:
  MEMORY[0x1EEE9AC00](v4);
  v13[2] = &v14;
  v10 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_So16UIViewControllerCTg5(partial apply for specialized closure #1 in BidirectionalCollection.last(where:), v13, v6, v9);

  if (v10)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.DesignModifier>(0);
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = *(v11 + 16);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  *a1 = v12;
}

void protocol witness for View.body.getter in conformance UIKitCalendarView(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>(0);
  v6 = *(v5 + 40);
  outlined init with copy of MultiDatePickerStyleConfiguration(v2, a2);
  v7 = type metadata accessor for UIKitCalendarViewRepresentable(0);
  specialized Environment.wrappedValue.getter((a2 + v7[5]));
  specialized Environment.wrappedValue.getter((a2 + v7[6]));
  specialized Environment.wrappedValue.getter((a2 + v7[7]));
  v8 = specialized Environment.wrappedValue.getter(*(v2 + *(a1 + 32)), *(v2 + *(a1 + 32) + 8));
  UIKitCalendarView.fontDesign.getter(&v10);
  v9 = v10;
  *(a2 + v7[8]) = v8;
  *(a2 + v7[9]) = v9;
  *(a2 + v6) = 2;
}

uint64_t @objc UIKitCalendarViewRepresentable.Coordinator.multiDateSelection(_:didSelectDate:)(void *a1, double a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(char *))
{
  v9 = type metadata accessor for DateComponents();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a4;
  v14 = a1;
  a6(v12);

  return (*(v10 + 8))(v12, v9);
}

uint64_t type metadata completion function for UIKitCalendarViewRepresentable.Coordinator(uint64_t a1)
{
  result = type metadata accessor for MultiDatePickerStyleConfiguration(319);
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

uint64_t outlined destroy of MultiDatePickerStyleConfiguration(uint64_t a1)
{
  v2 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void UIKitCalendarViewRepresentable.updateUIView(_:context:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DateInterval();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v61 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v58 - v20;
  v65 = *(a2 + 40);
  v22 = type metadata accessor for UIKitCalendarViewRepresentable(0);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  [a1 setLocale_];

  v24 = Calendar._bridgeToObjectiveC()().super.isa;
  [a1 setCalendar_];

  v66 = v22;
  v25 = TimeZone._bridgeToObjectiveC()().super.isa;
  v26 = a1;
  [a1 setTimeZone_];

  v27 = v14;
  v28 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v29 = *(v28 + 24);
  v67 = v3;
  outlined init with copy of Date?(v3 + v29, v12);
  v30 = *(v27 + 48);
  v31 = v30(v12, 1, v13);
  v59 = v18;
  if (v31 == 1)
  {
    _s10Foundation4DateVSgWOhTm_0(v12, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v32 = v27;
    v33 = &selRef_bundleIdentifier;
  }

  else
  {
    (*(v27 + 32))(v21, v12, v13);
    (*(v27 + 16))(v18, v21, v13);
    v32 = v27;
    v34 = [a1 availableDateRange];
    v35 = v62;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    DateInterval.start.setter();
    v36 = DateInterval._bridgeToObjectiveC()().super.isa;
    (*(v63 + 8))(v35, v64);
    [a1 setAvailableDateRange_];

    (*(v32 + 8))(v21, v13);
    v26 = a1;
    v33 = &selRef_bundleIdentifier;
  }

  v37 = v67;
  v38 = v61;
  outlined init with copy of Date?(v67 + *(v28 + 28), v61);
  if (v30(v38, 1, v13) == 1)
  {
    _s10Foundation4DateVSgWOhTm_0(v38, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  }

  else
  {
    v39 = v60;
    (*(v32 + 32))(v60, v38, v13);
    (*(v32 + 16))(v59, v39, v13);
    v40 = [v26 availableDateRange];
    v41 = v62;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    DateInterval.end.setter();
    v42 = DateInterval._bridgeToObjectiveC()().super.isa;
    (*(v63 + 8))(v41, v64);
    [v26 v33[402]];

    (*(v32 + 8))(v39, v13);
  }

  v43 = v66;
  v44 = *(v66 + 32);
  if (*(v37 + v44))
  {
    v45 = *(v37 + v44);
  }

  else
  {
    v45 = static Color.blue.getter();
  }

  type metadata accessor for UIColor();

  v46 = UIColor.init(_:)(v45);
  [v26 setTintColor_];

  v47 = objc_allocWithZone(MEMORY[0x1E69DC748]);
  v48 = [v47 initWithDelegate_];
  v68 = *v37;
  v69 = *(v37 + 8);
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Binding<Set<DateComponents>>, type metadata accessor for Set<DateComponents>, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v70);
  v49 = v70;
  v50 = *(v70 + 16);
  if (!v50)
  {
    goto LABEL_13;
  }

  v51 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation14DateComponentsV_Tt1g5(*(v70 + 16), 0);
  v52 = *(type metadata accessor for DateComponents() - 8);
  specialized Sequence._copySequenceContents(initializing:)(&v68, &v51[(*(v52 + 80) + 32) & ~*(v52 + 80)], v50, v49, v53);
  v55 = v54;
  outlined consume of Set<UIPress>.Iterator._Variant(v68);
  if (v55 != v50)
  {
    __break(1u);
LABEL_13:
  }

  type metadata accessor for DateComponents();
  v56 = Array._bridgeToObjectiveC()().super.isa;

  [v48 setSelectedDates_];

  [v26 setSelectionBehavior_];
  v57 = **(&unk_1E7238140 + *(v37 + *(v43 + 36)));
  [v26 setFontDesign_];
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance UIKitCalendarViewRepresentable()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC760]);

  return [v0 init];
}

uint64_t protocol witness for UIViewRepresentable.makeCoordinator() in conformance UIKitCalendarViewRepresentable@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of MultiDatePickerStyleConfiguration(v1, v5);
  v6 = type metadata accessor for UIKitCalendarViewRepresentable.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  outlined init with copy of MultiDatePickerStyleConfiguration(v5, v7 + OBJC_IVAR____TtCV7SwiftUIP33_1CD2D554D5FF79B0EC2610FA354BC03430UIKitCalendarViewRepresentable11Coordinator_configuration);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = outlined destroy of MultiDatePickerStyleConfiguration(v5);
  *a1 = v8;
  return result;
}

void specialized closure #1 in BidirectionalCollection.last(where:)(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x18D00E9C0](v4);
    goto LABEL_5;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:
    *a3 = v6;
    return;
  }

  __break(1u);
}

uint64_t specialized UIKitCalendarViewRepresentable.Coordinator.multiDateSelection(_:didSelectDate:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for DateComponents();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12 = (v2 + OBJC_IVAR____TtCV7SwiftUIP33_1CD2D554D5FF79B0EC2610FA354BC03430UIKitCalendarViewRepresentable11Coordinator_configuration);
  (*(v5 + 16))(v7, a1, v4, v9);
  v17 = *v12;
  v15 = *(v12 + 1);
  v18 = v15;
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Binding<Set<DateComponents>>, type metadata accessor for Set<DateComponents>, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v19);
  specialized Set._Variant.insert(_:)(v11, v7, v13);
  (*(v5 + 8))(v11, v4);
  v16 = v19;
  dispatch thunk of AnyLocation.set(_:transaction:)();
}

uint64_t specialized UIKitCalendarViewRepresentable.Coordinator.multiDateSelection(_:didDeselectDate:)(uint64_t a1)
{
  v3 = MEMORY[0x1E6968278];
  v4 = MEMORY[0x1E69E6720];
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for DateComponents?, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - v6;
  v11 = *(v1 + OBJC_IVAR____TtCV7SwiftUIP33_1CD2D554D5FF79B0EC2610FA354BC03430UIKitCalendarViewRepresentable11Coordinator_configuration);
  v9 = *(v1 + OBJC_IVAR____TtCV7SwiftUIP33_1CD2D554D5FF79B0EC2610FA354BC03430UIKitCalendarViewRepresentable11Coordinator_configuration + 8);
  v12 = v9;
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Binding<Set<DateComponents>>, type metadata accessor for Set<DateComponents>, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v13);
  specialized Set._Variant.remove(_:)(a1, v7);
  _s10Foundation4DateVSgWOhTm_0(v7, &lazy cache variable for type metadata for DateComponents?, v3, v4);
  v10 = v13;
  dispatch thunk of AnyLocation.set(_:transaction:)();
}

void type metadata accessor for Set<DateComponents>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for Set<DateComponents>)
  {
    type metadata accessor for DateComponents();
    lazy protocol witness table accessor for type DateComponents and conformance DateComponents(v2);
    v3 = type metadata accessor for Set();
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for Set<DateComponents>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DateComponents and conformance DateComponents(double a1)
{
  result = lazy protocol witness table cache variable for type DateComponents and conformance DateComponents;
  if (!lazy protocol witness table cache variable for type DateComponents and conformance DateComponents)
  {
    v4 = type metadata accessor for DateComponents();
    result = swift_getWitnessTable(MEMORY[0x1E6968288], v4, v1, v2);
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents and conformance DateComponents);
  }

  return result;
}

uint64_t _s10Foundation4DateVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for DateComponents?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for UIKitCalendarView(char *a1, char *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v6 = a1;
    v7 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v7;
    v31 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
    v8 = *(v31 + 24);
    v9 = type metadata accessor for Date();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(&a2[v8], 1, v9))
    {
      type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(&v6[v8], &a2[v8], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v6[v8], &a2[v8], v9);
      (*(v10 + 56))(&v6[v8], 0, 1, v9);
    }

    v13 = *(v31 + 28);
    if (v11(&a2[v13], 1, v9))
    {
      type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(&v6[v13], &a2[v13], *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v6[v13], &a2[v13], v9);
      (*(v10 + 56))(&v6[v13], 0, 1, v9);
    }

    v15 = a3[5];
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = type metadata accessor for Locale();
      (*(*(v16 - 8) + 16))(&v6[v15], &a2[v15], v16);
    }

    else
    {
      *&v6[v15] = *&a2[v15];
    }

    swift_storeEnumTagMultiPayload();
    v17 = a3[6];
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = type metadata accessor for Calendar();
      (*(*(v18 - 8) + 16))(&v6[v17], &a2[v17], v18);
    }

    else
    {
      *&v6[v17] = *&a2[v17];
    }

    swift_storeEnumTagMultiPayload();
    v19 = a3[7];
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = type metadata accessor for TimeZone();
      (*(*(v20 - 8) + 16))(&v6[v19], &a2[v19], v20);
    }

    else
    {
      *&v6[v19] = *&a2[v19];
    }

    swift_storeEnumTagMultiPayload();
    v21 = a3[8];
    v22 = &v6[v21];
    v23 = &a2[v21];
    v24 = *v23;
    v25 = v23[8];
    outlined copy of Environment<Color?>.Content(*v23);
    *v22 = v24;
    v22[8] = v25;
    v26 = a3[9];
    v27 = &v6[v26];
    v28 = &a2[v26];
    v29 = *v28;
    LOBYTE(v22) = v28[8];
    outlined copy of ResolvedTableRowIDs.Storage(*v28, v22);
    *v27 = v29;
    v27[8] = v22;
  }

  return v6;
}

uint64_t destroy for UIKitCalendarView(uint64_t a1, int *a2)
{

  v4 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v5 = *(v4 + 24);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(a1 + v5, 1, v6))
  {
    (*(v7 + 8))(a1 + v5, v6);
  }

  v9 = *(v4 + 28);
  if (!v8(a1 + v9, 1, v6))
  {
    (*(v7 + 8))(a1 + v9, v6);
  }

  v10 = a2[5];
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Locale();
    (*(*(v11 - 8) + 8))(a1 + v10, v11);
  }

  else
  {
  }

  v12 = a2[6];
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for Calendar();
    (*(*(v13 - 8) + 8))(a1 + v12, v13);
  }

  else
  {
  }

  v14 = a2[7];
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for TimeZone();
    (*(*(v15 - 8) + 8))(a1 + v14, v15);
  }

  else
  {
  }

  outlined consume of Environment<Color?>.Content(*(a1 + a2[8]));
  v16 = a1 + a2[9];
  v17 = *v16;
  v18 = *(v16 + 8);

  return outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v17, v18);
}

char *initializeWithCopy for UIKitCalendarView(char *a1, char *a2, int *a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  *(a1 + 2) = *(a2 + 2);
  v29 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v6 = *(v29 + 24);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);

  if (v9(&a2[v6], 1, v7))
  {
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v6], &a2[v6], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  v11 = *(v29 + 28);
  if (v9(&a2[v11], 1, v7))
  {
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v11], &a2[v11], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v11], &a2[v11], v7);
    (*(v8 + 56))(&a1[v11], 0, 1, v7);
  }

  v13 = a3[5];
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for Locale();
    (*(*(v14 - 8) + 16))(&a1[v13], &a2[v13], v14);
  }

  else
  {
    *&a1[v13] = *&a2[v13];
  }

  swift_storeEnumTagMultiPayload();
  v15 = a3[6];
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for Calendar();
    (*(*(v16 - 8) + 16))(&a1[v15], &a2[v15], v16);
  }

  else
  {
    *&a1[v15] = *&a2[v15];
  }

  swift_storeEnumTagMultiPayload();
  v17 = a3[7];
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = type metadata accessor for TimeZone();
    (*(*(v18 - 8) + 16))(&a1[v17], &a2[v17], v18);
  }

  else
  {
    *&a1[v17] = *&a2[v17];
  }

  swift_storeEnumTagMultiPayload();
  v19 = a3[8];
  v20 = &a1[v19];
  v21 = &a2[v19];
  v22 = *v21;
  v23 = v21[8];
  outlined copy of Environment<Color?>.Content(*v21);
  *v20 = v22;
  v20[8] = v23;
  v24 = a3[9];
  v25 = &a1[v24];
  v26 = &a2[v24];
  v27 = *v26;
  LOBYTE(v20) = v26[8];
  outlined copy of ResolvedTableRowIDs.Storage(*v26, v20);
  *v25 = v27;
  v25[8] = v20;
  return a1;
}

char *assignWithCopy for UIKitCalendarView(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);

  v6 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&a1[v7], 1, v8);
  v12 = v10(&a2[v7], 1, v8);
  if (v11)
  {
    if (!v12)
    {
      (*(v9 + 16))(&a1[v7], &a2[v7], v8);
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    (*(v9 + 8))(&a1[v7], v8);
LABEL_6:
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v7], &a2[v7], *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 24))(&a1[v7], &a2[v7], v8);
LABEL_7:
  v14 = *(v6 + 28);
  v15 = v10(&a1[v14], 1, v8);
  v16 = v10(&a2[v14], 1, v8);
  if (v15)
  {
    if (!v16)
    {
      (*(v9 + 16))(&a1[v14], &a2[v14], v8);
      (*(v9 + 56))(&a1[v14], 0, 1, v8);
      if (a1 == a2)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

LABEL_13:
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v14], &a2[v14], *(*(v17 - 8) + 64));
    if (a1 == a2)
    {
      goto LABEL_24;
    }

    goto LABEL_14;
  }

  if (v16)
  {
    (*(v9 + 8))(&a1[v14], v8);
    goto LABEL_13;
  }

  (*(v9 + 24))(&a1[v14], &a2[v14], v8);
  if (a1 == a2)
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = a3[5];
  v19 = MEMORY[0x1E6969770];
  v20 = MEMORY[0x1E697DCB8];
  _s10Foundation4DateVSgWOhTm_0(&a1[v18], &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Locale>.Content, v19, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = type metadata accessor for Locale();
    (*(*(v21 - 8) + 16))(&a1[v18], &a2[v18], v21);
  }

  else
  {
    *&a1[v18] = *&a2[v18];
  }

  swift_storeEnumTagMultiPayload();
  v22 = a3[6];
  v23 = MEMORY[0x1E6969AE8];
  v24 = MEMORY[0x1E697DCB8];
  _s10Foundation4DateVSgWOhTm_0(&a1[v22], &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, v23, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = type metadata accessor for Calendar();
    (*(*(v25 - 8) + 16))(&a1[v22], &a2[v22], v25);
  }

  else
  {
    *&a1[v22] = *&a2[v22];
  }

  swift_storeEnumTagMultiPayload();
  v26 = a3[7];
  v27 = MEMORY[0x1E6969BC0];
  v28 = MEMORY[0x1E697DCB8];
  _s10Foundation4DateVSgWOhTm_0(&a1[v26], &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, v27, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = type metadata accessor for TimeZone();
    (*(*(v29 - 8) + 16))(&a1[v26], &a2[v26], v29);
  }

  else
  {
    *&a1[v26] = *&a2[v26];
  }

  swift_storeEnumTagMultiPayload();
LABEL_24:
  v30 = a3[8];
  v31 = &a1[v30];
  v32 = &a2[v30];
  v33 = *v32;
  v34 = v32[8];
  outlined copy of Environment<Color?>.Content(*v32);
  v35 = *v31;
  *v31 = v33;
  v31[8] = v34;
  outlined consume of Environment<Color?>.Content(v35);
  v36 = a3[9];
  v37 = &a1[v36];
  v38 = &a2[v36];
  v39 = *v38;
  v40 = v38[8];
  outlined copy of ResolvedTableRowIDs.Storage(*v38, v40);
  v41 = *v37;
  v42 = v37[8];
  *v37 = v39;
  v37[8] = v40;
  outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v41, v42);
  return a1;
}

uint64_t initializeWithTake for UIKitCalendarView(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(a2 + v7, 1, v8))
  {
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy((a1 + v7), (a2 + v7), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  v12 = *(v6 + 28);
  if (v10(a2 + v12, 1, v8))
  {
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy((a1 + v12), (a2 + v12), *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a1 + v12, a2 + v12, v8);
    (*(v9 + 56))(a1 + v12, 0, 1, v8);
  }

  v14 = a3[5];
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  v16 = v15;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = type metadata accessor for Locale();
    (*(*(v17 - 8) + 32))(a1 + v14, a2 + v14, v17);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v14), (a2 + v14), *(*(v16 - 8) + 64));
  }

  v18 = a3[6];
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
  v20 = v19;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = type metadata accessor for Calendar();
    (*(*(v21 - 8) + 32))(a1 + v18, a2 + v18, v21);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v18), (a2 + v18), *(*(v20 - 8) + 64));
  }

  v22 = a3[7];
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
  v24 = v23;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = type metadata accessor for TimeZone();
    (*(*(v25 - 8) + 32))(a1 + v22, a2 + v22, v25);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v22), (a2 + v22), *(*(v24 - 8) + 64));
  }

  v26 = a3[8];
  v27 = a3[9];
  v28 = a1 + v26;
  v29 = a2 + v26;
  *v28 = *v29;
  *(v28 + 8) = *(v29 + 8);
  v30 = a1 + v27;
  v31 = a2 + v27;
  *v30 = *v31;
  *(v30 + 8) = *(v31 + 8);
  return a1;
}

char *assignWithTake for UIKitCalendarView(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);

  v6 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&a1[v7], 1, v8);
  v12 = v10(&a2[v7], 1, v8);
  if (v11)
  {
    if (!v12)
    {
      (*(v9 + 32))(&a1[v7], &a2[v7], v8);
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    (*(v9 + 8))(&a1[v7], v8);
LABEL_6:
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v7], &a2[v7], *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 40))(&a1[v7], &a2[v7], v8);
LABEL_7:
  v14 = *(v6 + 28);
  v15 = v10(&a1[v14], 1, v8);
  v16 = v10(&a2[v14], 1, v8);
  if (v15)
  {
    if (!v16)
    {
      (*(v9 + 32))(&a1[v14], &a2[v14], v8);
      (*(v9 + 56))(&a1[v14], 0, 1, v8);
      if (a1 == a2)
      {
        goto LABEL_23;
      }

      goto LABEL_14;
    }

LABEL_13:
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v14], &a2[v14], *(*(v17 - 8) + 64));
    if (a1 == a2)
    {
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  if (v16)
  {
    (*(v9 + 8))(&a1[v14], v8);
    goto LABEL_13;
  }

  (*(v9 + 40))(&a1[v14], &a2[v14], v8);
  if (a1 == a2)
  {
    goto LABEL_23;
  }

LABEL_14:
  v18 = a3[5];
  v19 = MEMORY[0x1E6969770];
  v20 = MEMORY[0x1E697DCB8];
  _s10Foundation4DateVSgWOhTm_0(&a1[v18], &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Locale>.Content, v19, v20);
  v22 = v21;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = type metadata accessor for Locale();
    (*(*(v23 - 8) + 32))(&a1[v18], &a2[v18], v23);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v18], &a2[v18], *(*(v22 - 8) + 64));
  }

  v24 = a3[6];
  v25 = MEMORY[0x1E6969AE8];
  v26 = MEMORY[0x1E697DCB8];
  _s10Foundation4DateVSgWOhTm_0(&a1[v24], &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, v25, v26);
  v28 = v27;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = type metadata accessor for Calendar();
    (*(*(v29 - 8) + 32))(&a1[v24], &a2[v24], v29);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v24], &a2[v24], *(*(v28 - 8) + 64));
  }

  v30 = a3[7];
  v31 = MEMORY[0x1E6969BC0];
  v32 = MEMORY[0x1E697DCB8];
  _s10Foundation4DateVSgWOhTm_0(&a1[v30], &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, v31, v32);
  v34 = v33;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = type metadata accessor for TimeZone();
    (*(*(v35 - 8) + 32))(&a1[v30], &a2[v30], v35);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v30], &a2[v30], *(*(v34 - 8) + 64));
  }

LABEL_23:
  v36 = a3[8];
  v37 = &a1[v36];
  v38 = &a2[v36];
  v39 = *v38;
  LOBYTE(v38) = v38[8];
  v40 = *v37;
  *v37 = v39;
  v37[8] = v38;
  outlined consume of Environment<Color?>.Content(v40);
  v41 = a3[9];
  v42 = &a1[v41];
  v43 = &a2[v41];
  v44 = *v43;
  LOBYTE(v43) = v43[8];
  v45 = *v42;
  v46 = v42[8];
  *v42 = v44;
  v42[8] = v43;
  outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v45, v46);
  return a1;
}

void type metadata completion function for UIKitCalendarView(uint64_t a1)
{
  type metadata accessor for MultiDatePickerStyleConfiguration(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DateComponents?(319, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for DateComponents?(319, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for DateComponents?(319, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
        if (v4 <= 0x3F)
        {
          swift_initStructMetadata();
        }
      }
    }
  }
}

void type metadata accessor for LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>)
  {
    v2 = type metadata accessor for UIKitCalendarViewRepresentable(255);
    v4 = type metadata accessor for LabeledContent(a1, &type metadata for MultiDatePickerStyleConfiguration.Label, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>);
    }
  }
}

uint64_t outlined init with copy of MultiDatePickerStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for AnyDynamicFontModifier<Font.DesignModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnyDynamicFontModifier<Font.DesignModifier>)
  {
    lazy protocol witness table accessor for type Font.DesignModifier and conformance Font.DesignModifier();
    v1 = type metadata accessor for AnyDynamicFontModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.DesignModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.DesignModifier and conformance Font.DesignModifier()
{
  result = lazy protocol witness table cache variable for type Font.DesignModifier and conformance Font.DesignModifier;
  if (!lazy protocol witness table cache variable for type Font.DesignModifier and conformance Font.DesignModifier)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980DB0], MEMORY[0x1E6980DB8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Font.DesignModifier and conformance Font.DesignModifier);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for UIKitCalendarViewRepresentable(char *a1, char *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = (v5 + ((v4 + 16) & ~v4));
  }

  else
  {
    v7 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v7;
    v24 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
    v8 = *(v24 + 24);
    v9 = type metadata accessor for Date();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(&a2[v8], 1, v9))
    {
      type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(&a1[v8], &a2[v8], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&a1[v8], &a2[v8], v9);
      (*(v10 + 56))(&a1[v8], 0, 1, v9);
    }

    v13 = *(v24 + 28);
    if (v11(&a2[v13], 1, v9))
    {
      type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(&a1[v13], &a2[v13], *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&a1[v13], &a2[v13], v9);
      (*(v10 + 56))(&a1[v13], 0, 1, v9);
    }

    v15 = a3[5];
    v16 = type metadata accessor for Locale();
    (*(*(v16 - 8) + 16))(&a1[v15], &a2[v15], v16);
    v17 = a3[6];
    v18 = type metadata accessor for Calendar();
    (*(*(v18 - 8) + 16))(&a1[v17], &a2[v17], v18);
    v19 = a3[7];
    v20 = type metadata accessor for TimeZone();
    (*(*(v20 - 8) + 16))(&a1[v19], &a2[v19], v20);
    v21 = a3[9];
    *&a1[a3[8]] = *&a2[a3[8]];
    a1[v21] = a2[v21];
  }

  return a1;
}

double destroy for UIKitCalendarViewRepresentable(uint64_t a1, int *a2)
{

  v4 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v5 = *(v4 + 24);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(a1 + v5, 1, v6))
  {
    (*(v7 + 8))(a1 + v5, v6);
  }

  v9 = *(v4 + 28);
  if (!v8(a1 + v9, 1, v6))
  {
    (*(v7 + 8))(a1 + v9, v6);
  }

  v10 = a2[5];
  v11 = type metadata accessor for Locale();
  (*(*(v11 - 8) + 8))(a1 + v10, v11);
  v12 = a2[6];
  v13 = type metadata accessor for Calendar();
  (*(*(v13 - 8) + 8))(a1 + v12, v13);
  v14 = a2[7];
  v15 = type metadata accessor for TimeZone();
  (*(*(v15 - 8) + 8))(a1 + v14, v15);

  return result;
}

char *initializeWithCopy for UIKitCalendarViewRepresentable(char *a1, char *a2, int *a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  *(a1 + 2) = *(a2 + 2);
  v21 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v6 = *(v21 + 24);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);

  if (v9(&a2[v6], 1, v7))
  {
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v6], &a2[v6], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  v11 = *(v21 + 28);
  if (v9(&a2[v11], 1, v7))
  {
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v11], &a2[v11], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v11], &a2[v11], v7);
    (*(v8 + 56))(&a1[v11], 0, 1, v7);
  }

  v13 = a3[5];
  v14 = type metadata accessor for Locale();
  (*(*(v14 - 8) + 16))(&a1[v13], &a2[v13], v14);
  v15 = a3[6];
  v16 = type metadata accessor for Calendar();
  (*(*(v16 - 8) + 16))(&a1[v15], &a2[v15], v16);
  v17 = a3[7];
  v18 = type metadata accessor for TimeZone();
  (*(*(v18 - 8) + 16))(&a1[v17], &a2[v17], v18);
  v19 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  a1[v19] = a2[v19];

  return a1;
}

char *assignWithCopy for UIKitCalendarViewRepresentable(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);

  v6 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&a1[v7], 1, v8);
  v12 = v10(&a2[v7], 1, v8);
  if (v11)
  {
    if (!v12)
    {
      (*(v9 + 16))(&a1[v7], &a2[v7], v8);
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    (*(v9 + 8))(&a1[v7], v8);
LABEL_6:
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v7], &a2[v7], *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 24))(&a1[v7], &a2[v7], v8);
LABEL_7:
  v14 = *(v6 + 28);
  v15 = v10(&a1[v14], 1, v8);
  v16 = v10(&a2[v14], 1, v8);
  if (!v15)
  {
    if (!v16)
    {
      (*(v9 + 24))(&a1[v14], &a2[v14], v8);
      goto LABEL_13;
    }

    (*(v9 + 8))(&a1[v14], v8);
    goto LABEL_12;
  }

  if (v16)
  {
LABEL_12:
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v14], &a2[v14], *(*(v17 - 8) + 64));
    goto LABEL_13;
  }

  (*(v9 + 16))(&a1[v14], &a2[v14], v8);
  (*(v9 + 56))(&a1[v14], 0, 1, v8);
LABEL_13:
  v18 = a3[5];
  v19 = type metadata accessor for Locale();
  (*(*(v19 - 8) + 24))(&a1[v18], &a2[v18], v19);
  v20 = a3[6];
  v21 = type metadata accessor for Calendar();
  (*(*(v21 - 8) + 24))(&a1[v20], &a2[v20], v21);
  v22 = a3[7];
  v23 = type metadata accessor for TimeZone();
  (*(*(v23 - 8) + 24))(&a1[v22], &a2[v22], v23);
  *&a1[a3[8]] = *&a2[a3[8]];

  a1[a3[9]] = a2[a3[9]];
  return a1;
}

uint64_t initializeWithTake for UIKitCalendarViewRepresentable(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(a2 + v7, 1, v8))
  {
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy((a1 + v7), (a2 + v7), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  v12 = *(v6 + 28);
  if (v10(a2 + v12, 1, v8))
  {
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy((a1 + v12), (a2 + v12), *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a1 + v12, a2 + v12, v8);
    (*(v9 + 56))(a1 + v12, 0, 1, v8);
  }

  v14 = a3[5];
  v15 = type metadata accessor for Locale();
  (*(*(v15 - 8) + 32))(a1 + v14, a2 + v14, v15);
  v16 = a3[6];
  v17 = type metadata accessor for Calendar();
  (*(*(v17 - 8) + 32))(a1 + v16, a2 + v16, v17);
  v18 = a3[7];
  v19 = type metadata accessor for TimeZone();
  (*(*(v19 - 8) + 32))(a1 + v18, a2 + v18, v19);
  v20 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v20) = *(a2 + v20);
  return a1;
}

char *assignWithTake for UIKitCalendarViewRepresentable(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);

  v6 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&a1[v7], 1, v8);
  v12 = v10(&a2[v7], 1, v8);
  if (v11)
  {
    if (!v12)
    {
      (*(v9 + 32))(&a1[v7], &a2[v7], v8);
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    (*(v9 + 8))(&a1[v7], v8);
LABEL_6:
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v7], &a2[v7], *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 40))(&a1[v7], &a2[v7], v8);
LABEL_7:
  v14 = *(v6 + 28);
  v15 = v10(&a1[v14], 1, v8);
  v16 = v10(&a2[v14], 1, v8);
  if (!v15)
  {
    if (!v16)
    {
      (*(v9 + 40))(&a1[v14], &a2[v14], v8);
      goto LABEL_13;
    }

    (*(v9 + 8))(&a1[v14], v8);
    goto LABEL_12;
  }

  if (v16)
  {
LABEL_12:
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v14], &a2[v14], *(*(v17 - 8) + 64));
    goto LABEL_13;
  }

  (*(v9 + 32))(&a1[v14], &a2[v14], v8);
  (*(v9 + 56))(&a1[v14], 0, 1, v8);
LABEL_13:
  v18 = a3[5];
  v19 = type metadata accessor for Locale();
  (*(*(v19 - 8) + 40))(&a1[v18], &a2[v18], v19);
  v20 = a3[6];
  v21 = type metadata accessor for Calendar();
  (*(*(v21 - 8) + 40))(&a1[v20], &a2[v20], v21);
  v22 = a3[7];
  v23 = type metadata accessor for TimeZone();
  (*(*(v23 - 8) + 40))(&a1[v22], &a2[v22], v23);
  *&a1[a3[8]] = *&a2[a3[8]];

  a1[a3[9]] = a2[a3[9]];
  return a1;
}

uint64_t type metadata completion function for UIKitCalendarViewRepresentable(uint64_t a1)
{
  result = type metadata accessor for MultiDatePickerStyleConfiguration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Locale();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Calendar();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for TimeZone();
        if (v5 <= 0x3F)
        {
          swift_initStructMetadata();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>, LabelsHiddenModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>, LabelsHiddenModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>, LabelsHiddenModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>, LabelsHiddenModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable> and conformance <> LabeledContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type LabelsHiddenModifier and conformance LabelsHiddenModifier();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>, LabelsHiddenModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>, LabelsHiddenModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>, LabelsHiddenModifier>)
  {
    type metadata accessor for LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>, LabelsHiddenModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable> and conformance <> LabeledContent<A, B>()
{
  result = lazy protocol witness table cache variable for type LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable> and conformance <> LabeledContent<A, B>;
  if (!lazy protocol witness table cache variable for type LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable> and conformance <> LabeledContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>(255);
    v4[0] = &protocol witness table for MultiDatePickerStyleConfiguration.Label;
    v4[1] = &protocol witness table for UIKitCalendarViewRepresentable;
    result = swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable> and conformance <> LabeledContent<A, B>);
  }

  return result;
}

double (*_LayoutScaleModifier.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance ScrollTransitionProgress;
}

double static _LayoutScaleModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a4@<X8>)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a2[1];
  v6 = a2[3];
  v50 = a2[2];
  v51 = v6;
  v52 = a2[4];
  v7 = a2[1];
  v48 = *a2;
  v49 = v7;
  v42 = v48;
  v43 = v5;
  v8 = *a1;
  v53 = *(a2 + 20);
  LODWORD(v36) = v8;
  v44 = v50;
  v9 = lazy protocol witness table accessor for type _LayoutScaleModifier and conformance _LayoutScaleModifier();
  (*(v9 + 48))(&v36, &v42);
  v10 = v36;
  v44 = v50;
  v45 = v51;
  v46 = v52;
  v47 = v53;
  v42 = v48;
  v43 = v49;
  v11 = v49;
  swift_beginAccess();
  *&v34[0] = __PAIR64__(*(v11 + 16), v10);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ViewInputs(&v48, &v36);
  lazy protocol witness table accessor for type ScaledEnvironment and conformance ScaledEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v12 = BYTE4(v50);
  if ((BYTE4(v50) & 0x20) != 0)
  {
    v38 = v50;
    v39 = v51;
    v40 = v52;
    v41 = v53;
    v36 = v48;
    v37 = v49;
    *&v36 = __PAIR64__(_ViewInputs.position.getter(), v10);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for CGPoint(0);
    lazy protocol witness table accessor for type ScaledOrigin and conformance ScaledOrigin();
    Attribute.init<A>(body:value:flags:update:)();
    _ViewInputs.position.setter();
    v38 = v50;
    v39 = v51;
    v40 = v52;
    v41 = v53;
    v36 = v48;
    v37 = v49;
    *&v36 = __PAIR64__(_ViewInputs.animatedPosition()(), v10);
    Attribute.init<A>(body:value:flags:update:)();
    _ViewInputs.containerPosition.setter();
    *&v36 = __PAIR64__(DWORD2(v52), v10);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type ScaledSize and conformance ScaledSize();
    Attribute.init<A>(body:value:flags:update:)();
    _ViewInputs.size.setter();
    v38 = v50;
    v39 = v51;
    v40 = v52;
    v41 = v53;
    v36 = v48;
    v37 = v49;
    *&v36 = __PAIR64__(_ViewInputs.position.getter(), v10);
    DWORD2(v36) = HIDWORD(v51);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type ScaledTransform and conformance ScaledTransform();
    Attribute.init<A>(body:value:flags:update:)();
    _ViewInputs.transform.setter();
  }

  v34[2] = v44;
  v34[3] = v45;
  v34[4] = v46;
  v35 = v47;
  v34[0] = v42;
  v34[1] = v43;
  v30 = v44;
  v31 = v45;
  v32 = v46;
  v33 = v47;
  v28 = v42;
  v29 = v43;
  v13 = outlined init with copy of _ViewInputs(v34, &v36);
  a3(&v26, v13, &v28);
  v38 = v30;
  v39 = v31;
  v40 = v32;
  v41 = v33;
  v36 = v28;
  v37 = v29;
  outlined destroy of _ViewInputs(&v36);
  *&v28 = v51;
  DWORD2(v28) = DWORD2(v51);
  v14 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  v15 = MEMORY[0x1E698D3F8];
  if (v14)
  {
    _DisplayList_Identity.init()();
    v16 = v28;
    v30 = v50;
    v31 = v51;
    v32 = v52;
    v33 = v53;
    v28 = v48;
    v29 = v49;
    _ViewInputs.pushIdentity(_:)();
    v30 = v50;
    v31 = v51;
    v32 = v52;
    v33 = v53;
    v28 = v48;
    v29 = v49;
    v17 = _ViewInputs.animatedPosition()();
    v30 = v50;
    v31 = v51;
    v32 = v52;
    v33 = v53;
    v28 = v48;
    v29 = v49;
    v18 = _ViewInputs.animatedCGSize()();
    v30 = v50;
    v31 = v51;
    v32 = v52;
    v33 = v53;
    v28 = v48;
    v29 = v49;
    v19 = _ViewInputs.containerPosition.getter();
    v20 = PreferencesOutputs.subscript.getter();
    v21 = *v15;
    if ((v20 & 0x100000000) == 0)
    {
      v21 = v20;
    }

    *&v28 = __PAIR64__(v10, v16);
    *(&v28 + 1) = __PAIR64__(v18, v17);
    *&v29 = __PAIR64__(v21, v19);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type ScaledDisplayList and conformance ScaledDisplayList();
    Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v28) = 0;
    PreferencesOutputs.subscript.setter();
  }

  if ((v12 & 2) != 0)
  {
    v22 = _ViewOutputs.layoutComputer.getter();
    v23 = *v15;
    if ((v22 & 0x100000000) == 0)
    {
      v23 = v22;
    }

    *&v28 = __PAIR64__(v23, v10);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type ScaledLayoutComputer and conformance ScaledLayoutComputer();
    Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v28) = 0;
    _ViewOutputs.layoutComputer.setter();
  }

  v30 = v44;
  v31 = v45;
  v32 = v46;
  v33 = v47;
  v28 = v42;
  v29 = v43;
  outlined destroy of _ViewInputs(&v28);
  *a4 = v26;
  result = v27;
  a4[1] = v27;
  return result;
}

unint64_t lazy protocol witness table accessor for type _LayoutScaleModifier and conformance _LayoutScaleModifier()
{
  result = lazy protocol witness table cache variable for type _LayoutScaleModifier and conformance _LayoutScaleModifier;
  if (!lazy protocol witness table cache variable for type _LayoutScaleModifier and conformance _LayoutScaleModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _LayoutScaleModifier, &type metadata for _LayoutScaleModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _LayoutScaleModifier and conformance _LayoutScaleModifier);
  }

  return result;
}

double (*protocol witness for Animatable.animatableData.modify in conformance _LayoutScaleModifier(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance _LayoutScaleModifier;
}

void ScaledEnvironment.value.getter(void *a2@<X8>)
{
  v3 = *AGGraphGetValue();
  Value = AGGraphGetValue();
  v6 = *Value;
  v5 = Value[1];
  *a2 = v6;
  a2[1] = v5;
  if (v3 == 0.0)
  {
  }

  else
  {

    EnvironmentValues.pixelLength.getter();
    AGGraphGetValue();
    EnvironmentValues.defaultPixelLength.setter();
  }
}

double ScaledOrigin.value.getter(unint64_t a1)
{
  v1 = *AGGraphGetValue();
  type metadata accessor for CGPoint(0);
  v2 = *AGGraphGetValue();
  if (v1 != 0.0)
  {
    return v2 * (1.0 / *AGGraphGetValue());
  }

  return v2;
}

double ScaledSize.value.getter@<D0>(_OWORD *a2@<X8>)
{
  if (*AGGraphGetValue() == 0.0)
  {

    static ViewSize.zero.getter();
  }

  else
  {
    Value = AGGraphGetValue();
    v5 = Value[1];
    v11 = *Value;
    v12 = v5;
    v9 = 1.0 / *AGGraphGetValue();
    v6 = ViewSize.value.modify();
    *v7 = vmulq_n_f64(*v7, v9);
    v6(&v10, 0);
    ViewSize.proposal.getter();
    _ProposedSize.scaled(by:)();
    ViewSize.proposal.setter();
    result = *&v11;
    v8 = v12;
    *a2 = v11;
    a2[1] = v8;
  }

  return result;
}

void ScaledTransform.value.getter(uint64_t a3@<X8>)
{
  if (*AGGraphGetValue() == 0.0)
  {
    static CGFloat.leastNonzeroScaleFactor.getter();
    v5 = v4;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  Value = AGGraphGetValue();
  v7 = *(Value + 8);
  *a3 = *Value;
  *(a3 + 8) = v7;
  v8 = *(Value + 32);
  *(a3 + 16) = *(Value + 16);
  *(a3 + 32) = v8;
  type metadata accessor for CGPoint(0);

  AGGraphGetValue();
  ViewTransform.appendPosition(_:scale:)();
  CGAffineTransformMakeScale(&v9, 1.0 / v5, 1.0 / v5);
  ViewTransform.appendAffineTransform(_:inverse:)(&v9, 0);
}

void ScaledLayoutComputer.updateValue()()
{
  AGGraphGetValue();
  if (*(v0 + 4) == *MEMORY[0x1E698D3F8])
  {
    static LayoutComputer.defaultValue.getter();
  }

  else
  {
    AGGraphGetValue();
  }

  lazy protocol witness table accessor for type ScaledLayoutComputer and conformance ScaledLayoutComputer();
  lazy protocol witness table accessor for type ScaledLayoutComputer.Engine and conformance ScaledLayoutComputer.Engine();
  StatefulRule<>.update<A>(to:)();
}

void ScaledLayoutComputer.Engine.sizeThatFits(_:)()
{
  if (*v0 != 0.0)
  {

    _ProposedSize.scaled(by:)();
    LayoutComputer.sizeThatFits(_:)();
  }
}

void *ScaledDisplayList.value.getter()
{
  if (*(v1 + 20) == *MEMORY[0x1E698D3F8])
  {
    DisplayList.init()();
    a = v17.a;
    b_low = LOWORD(v17.b);
    b_high = HIDWORD(v17.b);
    if (*(*&v17.a + 16))
    {
LABEL_3:
      type metadata accessor for CGPoint(0);
      AGGraphGetValue();
      AGGraphGetValue();
      if (*AGGraphGetValue() == 0.0)
      {
        static CGFloat.leastNonzeroScaleFactor.getter();
      }

      else
      {
        v5 = *AGGraphGetValue();
      }

      CGAffineTransformMakeScale(&v17, v5, v5);
      tx = v17.tx;
      ty = v17.ty;
      v11 = *&v17.c;
      v12 = *&v17.a;
      v10 = swift_allocObject();
      *(v10 + 16) = v12;
      *(v10 + 32) = v11;
      *(v10 + 48) = tx;
      *(v10 + 56) = ty;
      *(v10 + 88) = 0;
      *&v17.a = v10;
      *&v17.b = 0x900000000;
      v17.c = a;
      *&v17.d = b_low | (b_high << 32) | 0x40000000;
      type metadata accessor for CGSize(0);
      AGGraphGetValue();
      DisplayList.Version.init(forUpdate:)();
      DisplayList.Item.init(_:frame:identity:version:)();
      LOBYTE(v17.a) = 0;
      DisplayList.Item.canonicalize(options:)();
      v15[2] = *&v13.tx;
      v16[0] = *v14;
      *(v16 + 12) = *&v14[12];
      v15[0] = *&v13.a;
      v15[1] = *&v13.c;
      outlined init with copy of DisplayList.Item(v15, &v17);
      DisplayList.init(_:)();
      v17 = v13;
      v18[0] = *v14;
      *(v18 + 12) = *&v14[12];
      return outlined destroy of DisplayList.Item(&v17);
    }
  }

  else
  {
    Value = AGGraphGetValue();
    a = *Value;
    b_low = *(Value + 8);
    b_high = *(Value + 12);

    if (*(*&a + 16))
    {
      goto LABEL_3;
    }
  }

  return DisplayList.init()();
}

unint64_t lazy protocol witness table accessor for type ScaledEnvironment and conformance ScaledEnvironment()
{
  result = lazy protocol witness table cache variable for type ScaledEnvironment and conformance ScaledEnvironment;
  if (!lazy protocol witness table cache variable for type ScaledEnvironment and conformance ScaledEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScaledEnvironment, &unk_1EFFCACB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScaledEnvironment and conformance ScaledEnvironment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScaledLayoutComputer and conformance ScaledLayoutComputer()
{
  result = lazy protocol witness table cache variable for type ScaledLayoutComputer and conformance ScaledLayoutComputer;
  if (!lazy protocol witness table cache variable for type ScaledLayoutComputer and conformance ScaledLayoutComputer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScaledLayoutComputer, &unk_1EFFCAC30, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScaledLayoutComputer and conformance ScaledLayoutComputer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScaledLayoutComputer and conformance ScaledLayoutComputer;
  if (!lazy protocol witness table cache variable for type ScaledLayoutComputer and conformance ScaledLayoutComputer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScaledLayoutComputer, &unk_1EFFCAC30, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScaledLayoutComputer and conformance ScaledLayoutComputer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScaledDisplayList and conformance ScaledDisplayList()
{
  result = lazy protocol witness table cache variable for type ScaledDisplayList and conformance ScaledDisplayList;
  if (!lazy protocol witness table cache variable for type ScaledDisplayList and conformance ScaledDisplayList)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScaledDisplayList, &unk_1EFF8A740, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScaledDisplayList and conformance ScaledDisplayList);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScaledOrigin and conformance ScaledOrigin()
{
  result = lazy protocol witness table cache variable for type ScaledOrigin and conformance ScaledOrigin;
  if (!lazy protocol witness table cache variable for type ScaledOrigin and conformance ScaledOrigin)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScaledOrigin, &unk_1EFFCABB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScaledOrigin and conformance ScaledOrigin);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScaledSize and conformance ScaledSize()
{
  result = lazy protocol witness table cache variable for type ScaledSize and conformance ScaledSize;
  if (!lazy protocol witness table cache variable for type ScaledSize and conformance ScaledSize)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScaledSize, &unk_1EFFCAB30, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScaledSize and conformance ScaledSize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScaledTransform and conformance ScaledTransform()
{
  result = lazy protocol witness table cache variable for type ScaledTransform and conformance ScaledTransform;
  if (!lazy protocol witness table cache variable for type ScaledTransform and conformance ScaledTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScaledTransform, &unk_1EFFCAAA8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScaledTransform and conformance ScaledTransform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScaledLayoutComputer.Engine and conformance ScaledLayoutComputer.Engine()
{
  result = lazy protocol witness table cache variable for type ScaledLayoutComputer.Engine and conformance ScaledLayoutComputer.Engine;
  if (!lazy protocol witness table cache variable for type ScaledLayoutComputer.Engine and conformance ScaledLayoutComputer.Engine)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScaledLayoutComputer.Engine, &unk_1EFF8A6C0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScaledLayoutComputer.Engine and conformance ScaledLayoutComputer.Engine);
  }

  return result;
}

void *assignWithCopy for ScaledLayoutComputer.Engine(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  return a1;
}

void *assignWithTake for ScaledLayoutComputer.Engine(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  return a1;
}

char *initializeBufferWithCopyOfBuffer for CollapsibleWheelDatePickerStyle(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    type metadata accessor for Environment<Locale>.Content(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Locale();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
    v9 = a3[5];
    type metadata accessor for Environment<Calendar>.Content(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = type metadata accessor for Calendar();
      (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
    }

    else
    {
      *&a1[v9] = *&a2[v9];
    }

    swift_storeEnumTagMultiPayload();
    v11 = a3[6];
    type metadata accessor for Environment<TimeZone>.Content(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = type metadata accessor for TimeZone();
      (*(*(v12 - 8) + 16))(&a1[v11], &a2[v11], v12);
    }

    else
    {
      *&a1[v11] = *&a2[v11];
    }

    swift_storeEnumTagMultiPayload();
    v13 = a3[7];
    v14 = &a1[v13];
    v15 = &a2[v13];
    *v14 = *v15;
    *(v14 + 1) = *(v15 + 1);
  }

  return a1;
}

void type metadata accessor for Environment<Locale>.Content(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double destroy for CollapsibleWheelDatePickerStyle(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Environment<Locale>.Content(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for Locale();
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  else
  {
  }

  v5 = *(a2 + 20);
  type metadata accessor for Environment<Calendar>.Content(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Calendar();
    (*(*(v6 - 8) + 8))(a1 + v5, v6);
  }

  else
  {
  }

  v7 = *(a2 + 24);
  type metadata accessor for Environment<TimeZone>.Content(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for TimeZone();
    (*(*(v8 - 8) + 8))(a1 + v7, v8);
  }

  else
  {
  }

  return result;
}

char *initializeWithCopy for CollapsibleWheelDatePickerStyle(char *a1, char *a2, int *a3)
{
  type metadata accessor for Environment<Locale>.Content(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Locale();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
  }

  swift_storeEnumTagMultiPayload();
  v7 = a3[5];
  type metadata accessor for Environment<Calendar>.Content(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for Calendar();
    (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
  }

  else
  {
    *&a1[v7] = *&a2[v7];
  }

  swift_storeEnumTagMultiPayload();
  v9 = a3[6];
  type metadata accessor for Environment<TimeZone>.Content(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for TimeZone();
    (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
  }

  else
  {
    *&a1[v9] = *&a2[v9];
  }

  swift_storeEnumTagMultiPayload();
  v11 = a3[7];
  v12 = &a1[v11];
  v13 = &a2[v11];
  *v12 = *v13;
  *(v12 + 1) = *(v13 + 1);

  return a1;
}

char *assignWithCopy for CollapsibleWheelDatePickerStyle(char *a1, char *a2, int *a3)
{
  if (a1 != a2)
  {
    outlined destroy of Environment<Locale>.Content(a1, type metadata accessor for Environment<Locale>.Content);
    type metadata accessor for Environment<Locale>.Content(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = type metadata accessor for Locale();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
    v7 = a3[5];
    outlined destroy of Environment<Locale>.Content(&a1[v7], type metadata accessor for Environment<Calendar>.Content);
    type metadata accessor for Environment<Calendar>.Content(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = type metadata accessor for Calendar();
      (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
    }

    else
    {
      *&a1[v7] = *&a2[v7];
    }

    swift_storeEnumTagMultiPayload();
    v9 = a3[6];
    outlined destroy of Environment<Locale>.Content(&a1[v9], type metadata accessor for Environment<TimeZone>.Content);
    type metadata accessor for Environment<TimeZone>.Content(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = type metadata accessor for TimeZone();
      (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
    }

    else
    {
      *&a1[v9] = *&a2[v9];
    }

    swift_storeEnumTagMultiPayload();
  }

  v11 = a3[7];
  v12 = &a1[v11];
  v13 = &a2[v11];
  *v12 = *v13;
  *(v12 + 1) = *(v13 + 1);

  return a1;
}

char *initializeWithTake for CollapsibleWheelDatePickerStyle(char *a1, char *a2, int *a3)
{
  type metadata accessor for Environment<Locale>.Content(0);
  v7 = v6;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for Locale();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v7 - 8) + 64));
  }

  v9 = a3[5];
  type metadata accessor for Environment<Calendar>.Content(0);
  v11 = v10;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for Calendar();
    (*(*(v12 - 8) + 32))(&a1[v9], &a2[v9], v12);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v9], &a2[v9], *(*(v11 - 8) + 64));
  }

  v13 = a3[6];
  type metadata accessor for Environment<TimeZone>.Content(0);
  v15 = v14;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for TimeZone();
    (*(*(v16 - 8) + 32))(&a1[v13], &a2[v13], v16);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v13], &a2[v13], *(*(v15 - 8) + 64));
  }

  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

char *assignWithTake for CollapsibleWheelDatePickerStyle(char *a1, char *a2, int *a3)
{
  if (a1 != a2)
  {
    outlined destroy of Environment<Locale>.Content(a1, type metadata accessor for Environment<Locale>.Content);
    type metadata accessor for Environment<Locale>.Content(0);
    v7 = v6;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = type metadata accessor for Locale();
      (*(*(v8 - 8) + 32))(a1, a2, v8);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v7 - 8) + 64));
    }

    v9 = a3[5];
    outlined destroy of Environment<Locale>.Content(&a1[v9], type metadata accessor for Environment<Calendar>.Content);
    type metadata accessor for Environment<Calendar>.Content(0);
    v11 = v10;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = type metadata accessor for Calendar();
      (*(*(v12 - 8) + 32))(&a1[v9], &a2[v9], v12);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v9], &a2[v9], *(*(v11 - 8) + 64));
    }

    v13 = a3[6];
    outlined destroy of Environment<Locale>.Content(&a1[v13], type metadata accessor for Environment<TimeZone>.Content);
    type metadata accessor for Environment<TimeZone>.Content(0);
    v15 = v14;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = type metadata accessor for TimeZone();
      (*(*(v16 - 8) + 32))(&a1[v13], &a2[v13], v16);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v13], &a2[v13], *(*(v15 - 8) + 64));
    }
  }

  v17 = a3[7];
  v18 = &a1[v17];
  v19 = &a2[v17];
  *v18 = *v19;
  *(v18 + 1) = *(v19 + 1);

  return a1;
}

uint64_t type metadata accessor for CollapsibleWheelDatePickerStyle(uint64_t a1)
{
  result = type metadata singleton initialization cache for CollapsibleWheelDatePickerStyle;
  if (!type metadata singleton initialization cache for CollapsibleWheelDatePickerStyle)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CollapsibleWheelDatePickerStyle(uint64_t a1)
{
  type metadata accessor for Environment<Locale>.Content(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<Calendar>.Content(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Environment<TimeZone>.Content(319);
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

id one-time initialization function for dateFormatter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  static CollapsibleWheelDatePickerStyle.dateFormatter = v0;
  return result;
}

uint64_t CollapsibleWheelDatePickerStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v58 = a2;
  v52 = type metadata accessor for DatePickerStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>);
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - v6;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?(0, v5);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  v13 = type metadata accessor for CollapsibleWheelDatePickerStyle(0);
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  type metadata accessor for Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>(0, v17);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v50 - v22;
  outlined init with copy of CollapsibleWheelDatePickerStyle(v2, &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CollapsibleWheelDatePickerStyle);
  v24 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v25 = swift_allocObject();
  outlined init with take of CollapsibleWheelDatePickerStyle(&v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  *v23 = 4;
  v26 = &v23[*(v19 + 44)];
  *v26 = partial apply for closure #1 in CollapsibleWheelDatePickerStyle.makeBody(configuration:);
  v26[1] = v25;
  v27 = v53;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  closure #2 in CollapsibleWheelDatePickerStyle.makeBody(configuration:)(v2, v27, &v23[*(v19 + 48)]);
  v28 = v2 + *(v14 + 36);
  v29 = *v28;
  v30 = *(v28 + 8);
  v60 = v29;
  v61 = v30;
  _s7SwiftUI5ColorVSgMaTm_0(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (v59 == 1)
  {
    v31 = v51;
    outlined init with copy of CollapsibleWheelDatePickerStyle(v27, v51, type metadata accessor for DatePickerStyleConfiguration);
    outlined init with copy of CollapsibleWheelDatePickerStyle(v31, v7, type metadata accessor for Binding<Date>);
    v32 = v52;
    v33 = *(v52 + 24);
    type metadata accessor for DatePicker<DatePickerStyleConfiguration.Label>(0, v34, v35, v36);
    v38 = v37;
    outlined init with copy of CollapsibleWheelDatePickerStyle(v31 + v33, &v7[*(v37 + 36)], type metadata accessor for Date?);
    outlined init with copy of CollapsibleWheelDatePickerStyle(v31 + *(v32 + 28), &v7[*(v38 + 40)], type metadata accessor for Date?);
    *&v7[*(v38 + 44)] = *(v31 + *(v32 + 32));
    outlined destroy of Environment<Locale>.Content(v31, type metadata accessor for DatePickerStyleConfiguration);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>(0, v39, v40, v41);
    *&v7[*(v42 + 36)] = 769;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>(v7, v12);
    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  (*(v55 + 56))(v12, v43, 1, v56);
  v44 = v54;
  outlined init with copy of CollapsibleWheelDatePickerStyle(v23, v54, type metadata accessor for Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>);
  v45 = v57;
  outlined init with copy of CollapsibleWheelDatePickerStyle(v12, v57, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?);
  v46 = v58;
  outlined init with copy of CollapsibleWheelDatePickerStyle(v44, v58, type metadata accessor for Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>);
  type metadata accessor for (Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?)(0, v47);
  outlined init with copy of CollapsibleWheelDatePickerStyle(v45, v46 + *(v48 + 48), type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?);
  outlined destroy of Environment<Locale>.Content(v12, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?);
  outlined destroy of Environment<Locale>.Content(v23, type metadata accessor for Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>);
  outlined destroy of Environment<Locale>.Content(v45, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?);
  return outlined destroy of Environment<Locale>.Content(v44, type metadata accessor for Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>);
}

double closure #1 in CollapsibleWheelDatePickerStyle.makeBody(configuration:)(uint64_t a1)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  return result;
}

void *closure #1 in closure #1 in CollapsibleWheelDatePickerStyle.makeBody(configuration:)(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for CollapsibleWheelDatePickerStyle(0) + 28) + 8);
  _s7SwiftUI5ColorVSgMaTm_0(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  result = State.wrappedValue.getter();
  if (v1)
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

__n128 closure #2 in CollapsibleWheelDatePickerStyle.makeBody(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  CollapsibleWheelDatePickerStyle.formattedDate(_:)(a2);
  v5 = a1 + *(type metadata accessor for CollapsibleWheelDatePickerStyle(0) + 28);
  LOBYTE(v9) = *v5;
  v10 = *(v5 + 8);
  _s7SwiftUI5ColorVSgMaTm_0(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (v7 == 1)
  {
    static Color.accentColor.getter();
  }

  else
  {
    static Color.secondary.getter();
  }

  View.defaultForegroundColor(_:)();

  View.defaultForegroundColor(_:)();
  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  result = v12;
  *(a3 + 40) = v12;
  *(a3 + 56) = v13;
  *(a3 + 64) = 2;
  return result;
}

uint64_t CollapsibleWheelDatePickerStyle.formattedDate(_:)(uint64_t a1)
{
  v26 = a1;
  v27 = type metadata accessor for Date();
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v24 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TimeZone();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Calendar();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for dateFormatter != -1)
  {
    swift_once();
  }

  v13 = static CollapsibleWheelDatePickerStyle.dateFormatter;
  specialized Environment.wrappedValue.getter(v12);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v10 + 8))(v12, v9);
  [v13 setLocale_];

  type metadata accessor for CollapsibleWheelDatePickerStyle(0);
  specialized Environment.wrappedValue.getter(v8);
  v15 = Calendar._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  [v13 setCalendar_];

  specialized Environment.wrappedValue.getter(v4);
  v16 = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v22 + 8))(v4, v23);
  [v13 setTimeZone_];

  LODWORD(v16) = ~*(v26 + *(type metadata accessor for DatePickerStyleConfiguration(0) + 32));
  [v13 setTimeStyle_];
  [v13 setDateStyle_];
  type metadata accessor for Binding<Date>(0);
  v17 = v24;
  MEMORY[0x18D00ACC0]();
  v18 = Date._bridgeToObjectiveC()().super.isa;
  (*(v25 + 8))(v17, v27);
  v19 = [v13 stringFromDate_];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v20;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>(255, a2, a3, a4);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>)
  {
    type metadata accessor for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>(255, a2, a3, a4);
    type metadata accessor for DatePickerStyleModifier<WheelDatePickerStyle>(255, &lazy cache variable for type metadata for _LabeledContentStyleModifier<HiddenLabeledContentStyle>, lazy protocol witness table accessor for type HiddenLabeledContentStyle and conformance HiddenLabeledContentStyle, &type metadata for HiddenLabeledContentStyle, type metadata accessor for _LabeledContentStyleModifier);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>)
  {
    type metadata accessor for DatePicker<DatePickerStyleConfiguration.Label>(255, a2, a3, a4);
    type metadata accessor for DatePickerStyleModifier<WheelDatePickerStyle>(255, &lazy cache variable for type metadata for DatePickerStyleModifier<WheelDatePickerStyle>, lazy protocol witness table accessor for type WheelDatePickerStyle and conformance WheelDatePickerStyle, &type metadata for WheelDatePickerStyle, type metadata accessor for DatePickerStyleModifier);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>);
    }
  }
}

void type metadata accessor for DatePicker<DatePickerStyleConfiguration.Label>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for DatePicker<DatePickerStyleConfiguration.Label>)
  {
    v4 = type metadata accessor for DatePicker(0, &type metadata for DatePickerStyleConfiguration.Label, &protocol witness table for DatePickerStyleConfiguration.Label, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for DatePicker<DatePickerStyleConfiguration.Label>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type WheelDatePickerStyle and conformance WheelDatePickerStyle()
{
  result = lazy protocol witness table cache variable for type WheelDatePickerStyle and conformance WheelDatePickerStyle;
  if (!lazy protocol witness table cache variable for type WheelDatePickerStyle and conformance WheelDatePickerStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WheelDatePickerStyle, &type metadata for WheelDatePickerStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WheelDatePickerStyle and conformance WheelDatePickerStyle);
  }

  return result;
}

void type metadata accessor for DatePickerStyleModifier<WheelDatePickerStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>);
    v2 = type metadata accessor for Optional();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?);
    }
  }
}

void type metadata accessor for Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>(255, &lazy cache variable for type metadata for ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, type metadata accessor for LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>> and conformance <> ModifiedContent<A, B>();
    v7 = type metadata accessor for Button(a1, v4, v5, v6);
    if (!v8)
    {
      atomic_store(v7, &lazy cache variable for type metadata for Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for DatePickerStyleModifier<WheelDatePickerStyle>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, MEMORY[0x1E697FD28]);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>)
  {
    type metadata accessor for ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>(255, &lazy cache variable for type metadata for ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>);
    v3 = v2;
    type metadata accessor for ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>(255, &lazy cache variable for type metadata for ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>);
    v6 = type metadata accessor for LabeledContent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Color?>(255);
    v3 = type metadata accessor for ModifiedContent();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>(255, &lazy cache variable for type metadata for ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, type metadata accessor for LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> LabeledContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> LabeledContent<A, B>()
{
  result = lazy protocol witness table cache variable for type LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> LabeledContent<A, B>;
  if (!lazy protocol witness table cache variable for type LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> LabeledContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, &type metadata for DatePickerStyleConfiguration.Label, &protocol witness table for DatePickerStyleConfiguration.Label);
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, MEMORY[0x1E6981148], MEMORY[0x1E6981138]);
    result = swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> LabeledContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>(255, a2);
    v8 = v7;
    v9[0] = a4;
    v9[1] = _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_2(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Color?>, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of CollapsibleWheelDatePickerStyle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollapsibleWheelDatePickerStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double partial apply for closure #1 in CollapsibleWheelDatePickerStyle.makeBody(configuration:)()
{
  v1 = *(type metadata accessor for CollapsibleWheelDatePickerStyle(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in CollapsibleWheelDatePickerStyle.makeBody(configuration:)(v2);
}

void type metadata accessor for (Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?)(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for (Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?))
  {
    type metadata accessor for Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>(255, a2);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?(255, v2);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?));
    }
  }
}

uint64_t outlined init with copy of CollapsibleWheelDatePickerStyle(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Environment<Locale>.Content(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FocusBridge.focusDidChange_PhoneWatch(rootResponder:)(uint64_t a1)
{
  result = FocusBridge.canAcceptFocus.getter();
  if (result)
  {
    memset(v20, 0, 48);
    v20[3] = xmmword_18CD6A6D0;
    if (a1)
    {
      MEMORY[0x1EEE9AC00](result);
      MEMORY[0x1EEE9AC00](v3);
      dispatch thunk of ResponderNode.visit(applying:)();
    }

    FocusBridge.focusedItem.getter(v19);
    outlined init with copy of FocusItem?(v20, v16);
    if (v16[5] || v16[6] != 1)
    {
      outlined init with take of FocusItem(v16, v17);
    }

    else
    {
      memset(v17, 0, sizeof(v17));
      *v18 = 0u;
      *&v18[16] = xmmword_18CD6A6D0;
    }

    FocusBridge.focusedItem.setter(v17);
    FocusBridge.focusedItem.getter(v17);
    v5 = *&v18[8];
    v4 = *&v18[16];
    outlined destroy of FocusItem?(v17);
    if (v5 || v4 != 1)
    {
      FocusBridge.focusedItem.getter(v17);
      v7 = FocusBridge.host.getter();
      v9 = v8;
      v11 = v10;
      outlined init with copy of FocusItem?(v17, v16);
      v12 = swift_allocObject();
      outlined init with take of FocusItem?(v16, (v12 + 2));
      v12[10] = v7;
      v12[11] = v9;
      v12[12] = v11;
      v13 = v7;
      onNextMainRunLoop(do:)();
    }

    else
    {
      outlined init with copy of FocusItem?(v19, v17);
      if (*&v18[8] != __PAIR128__(1, 0))
      {
        v6 = FocusItem.platformResponder.getter();
        outlined destroy of FocusItem(v17);
        if (v6)
        {

          outlined init with copy of FocusItem?(v19, v17);
          if (*&v18[8] == __PAIR128__(1, 0))
          {
            outlined destroy of FocusItem?(v17);
          }

          else
          {
            v14 = FocusItem.platformResponder.getter();
            outlined destroy of FocusItem(v17);
            if (v14)
            {
LABEL_21:
              [v14 resignFirstResponder];

              goto LABEL_16;
            }
          }

          v15 = FocusBridge.host.getter();
          if (v15)
          {
            v14 = v15;
            goto LABEL_21;
          }
        }

LABEL_16:
        outlined destroy of FocusItem?(v19);
        return outlined destroy of FocusItem?(v20);
      }
    }

    outlined destroy of FocusItem?(v17);
    goto LABEL_16;
  }

  return result;
}

uint64_t closure #1 in FocusBridge.focusDidChange_PhoneWatch(rootResponder:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  (*(a2 + 16))(v11, *a1);
  if (v11[5])
  {
    v6 = 0;
  }

  else
  {
    v6 = v11[6] == 1;
  }

  if (v6)
  {
    result = outlined destroy of FocusItem?(v11);
  }

  else
  {
    outlined init with take of FocusItem(v11, v12);
    if (FocusItem.isFocusable.getter())
    {
      v7 = FocusItem.platformResponder.getter();
      if (v7 || (v7 = FocusBridge.host.getter()) != 0)
      {
        v8 = v7;
        v9 = [v7 isFirstResponder];

        if (v9)
        {
          outlined destroy of FocusItem?(a3);
          result = outlined init with take of FocusItem(v12, a3);
          *a4 = 2;
          return result;
        }
      }
    }

    result = outlined destroy of FocusItem(v12);
  }

  *a4 = 0;
  return result;
}

void closure #2 in FocusBridge.focusDidChange_PhoneWatch(rootResponder:)(uint64_t a1, void *a2)
{
  outlined init with copy of FocusItem?(a1, v5);
  if (v5[5])
  {
    v3 = 0;
  }

  else
  {
    v3 = v5[6] == 1;
  }

  if (v3)
  {
    outlined destroy of FocusItem?(v5);
    if (!a2)
    {
      return;
    }

    goto LABEL_9;
  }

  v4 = FocusItem.platformResponder.getter();
  outlined destroy of FocusItem(v5);
  if (v4)
  {
LABEL_10:
    [v4 becomeFirstResponder];

    return;
  }

  if (a2)
  {
LABEL_9:
    v4 = a2;
    goto LABEL_10;
  }
}

unint64_t lazy protocol witness table accessor for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions()
{
  result = lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions;
  if (!lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _PlatformViewRepresentableLayoutOptions, &type metadata for _PlatformViewRepresentableLayoutOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions;
  if (!lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _PlatformViewRepresentableLayoutOptions, &type metadata for _PlatformViewRepresentableLayoutOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions;
  if (!lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _PlatformViewRepresentableLayoutOptions, &type metadata for _PlatformViewRepresentableLayoutOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions;
  if (!lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _PlatformViewRepresentableLayoutOptions, &type metadata for _PlatformViewRepresentableLayoutOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions);
  }

  return result;
}

uint64_t type metadata completion function for OrnamentModifierLegacy(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for OrnamentModifierLegacy(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 7;
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((((((v7 + ((v6 + 17) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  else
  {
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 16);
    v12 = (a1 + v6 + 17) & ~v6;
    v13 = (a2 + v6 + 17) & ~v6;
    v14 = *(v5 + 16);

    v14(v12, v13, v4);
    v15 = ((v7 + v12) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((v7 + v13) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v16;
    v17 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v18;
    *((v17 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v18 + 23) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t destroy for OrnamentModifierLegacy(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 17) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t initializeWithCopy for OrnamentModifierLegacy(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(v5 - 8) + 16;
  v8 = *(*(v5 - 8) + 80);
  v9 = (v8 + 17 + a1) & ~v8;
  v10 = (a2 + v8 + 17) & ~v8;

  v6(v9, v10, v5);
  v11 = *(v7 + 48) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for OrnamentModifierLegacy(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = a2[1];

  *(a1 + 16) = *(a2 + 16);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (v8 + 17 + a1) & ~v8;
  v10 = (a2 + v8 + 17) & ~v8;
  (*(v6 + 24))(v9, v10);
  v11 = *(v7 + 40) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v14[1] = v15[1];
  *((v14 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for OrnamentModifierLegacy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (v6 + 17 + a1) & ~v6;
  v8 = (v6 + 17 + a2) & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 7;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + v8) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for OrnamentModifierLegacy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 40;
  v8 = *(v6 + 80);
  v9 = (v8 + 17 + a1) & ~v8;
  v10 = (v8 + 17 + a2) & ~v8;
  (*(v6 + 40))(v9, v10);
  v11 = *(v7 + 24) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v14[1] = v15[1];
  *((v14 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for OrnamentModifierLegacy(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 17) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for OrnamentModifierLegacy(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = &result[v8 + 17] & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result[16] = 0;
        *result = a2 & 0x7FFFFFFF;
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = a2 - 1;
      }

      return result;
    }
  }

  if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t type metadata completion function for OrnamentModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for OrnamentModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || v6 - ((-51 - v5) | v5) > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
    v10 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
    v11 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v12 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
    v14 = *v13;
    *(v12 + 8) = *(v13 + 8);
    *v12 = v14;
    *(v12 + 9) = *(v13 + 9);
    v15 = (v12 + v5 + 10) & ~v5;
    v16 = (v13 + v5 + 10) & ~v5;
    (*(v4 + 16))(v15, v16);
    *(v15 + v6) = *(v16 + v6);
  }

  return v3;
}

unint64_t initializeWithCopy for OrnamentModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  v5 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *v7;
  *(v6 + 8) = *(v7 + 8);
  *v6 = v8;
  *(v6 + 9) = *(v7 + 9);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 16;
  v11 = *(v9 + 80);
  v12 = (v11 + 10 + v6) & ~v11;
  v13 = (v11 + 10 + v7) & ~v11;
  (*(v9 + 16))(v12, v13);
  *(*(v10 + 48) + v12) = *(*(v10 + 48) + v13);
  return a1;
}

unint64_t assignWithCopy for OrnamentModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  *(v4 + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v4 + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v5 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  v6 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v5[1] = v6[1];
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  *(v7 + 9) = *(v8 + 9);
  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (v12 + 10 + v7) & ~v12;
  v14 = (v12 + 10 + v8) & ~v12;
  (*(v10 + 24))(v13, v14);
  *(*(v11 + 40) + v13) = *(*(v11 + 40) + v14);
  return a1;
}

unint64_t initializeWithTake for OrnamentModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  v5 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *v7;
  *(v6 + 8) = *(v7 + 8);
  *v6 = v8;
  *(v6 + 9) = *(v7 + 9);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 32;
  v11 = *(v9 + 80);
  v12 = (v11 + 10 + v6) & ~v11;
  v13 = (v11 + 10 + v7) & ~v11;
  (*(v9 + 32))(v12, v13);
  *(*(v10 + 32) + v12) = *(*(v10 + 32) + v13);
  return a1;
}

unint64_t assignWithTake for OrnamentModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  *(v4 + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v4 + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v5 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  v6 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v5[1] = v6[1];
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  *(v7 + 9) = *(v8 + 9);
  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v12 + 10 + v7) & ~v12;
  v14 = (v12 + 10 + v8) & ~v12;
  (*(v10 + 40))(v13, v14);
  *(*(v11 + 24) + v13) = *(*(v11 + 24) + v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for OrnamentModifier(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 > v7)
  {
    v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 50) & ~v6) + 1;
    v10 = 8 * v9;
    if (v9 > 3)
    {
      goto LABEL_7;
    }

    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 >= 2)
    {
LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }
  }

LABEL_25:
  v14 = ((((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v5 > 0xFE)
  {
    return (*(v4 + 48))((v14 + v6 + 10) & ~v6);
  }

  v15 = *(v14 + 9);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

void storeEnumTagSinglePayload for OrnamentModifier(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 50) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 50) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v7 > 0xFE)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 10) & ~v9);
  }

  else
  {
    *(v19 + 9) = a2 + 1;
  }
}

uint64_t OrnamentModifierLegacy.isPresented.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v4);
  return v4;
}

double OrnamentModifierLegacy.body(content:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v16[-2] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2, v6);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = *(a2 + 16);
  (*(v4 + 32))(v8 + v7, &v16[-2] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  swift_getWitnessTable(protocol conformance descriptor for OrnamentModifierLegacy<A>, a2);
  v9 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for _PreferenceTransformModifier<OrnamentPresentation.Key>();
  v10 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v9);
  v12 = lazy protocol witness table accessor for type _PreferenceTransformModifier<OrnamentPresentation.Key> and conformance _PreferenceTransformModifier<A>();
  v16[0] = WitnessTable;
  v16[1] = v12;
  swift_getWitnessTable(MEMORY[0x1E697E858], v10, v16);
  EnvironmentReader.init(_:)();
  v15 = v17;
  v13 = type metadata accessor for EnvironmentReader();
  swift_getWitnessTable(MEMORY[0x1E697ED40], v13);
  static ViewBuilder.buildExpression<A>(_:)();

  v17 = v18;
  static ViewBuilder.buildExpression<A>(_:)();

  return result;
}

double closure #1 in OrnamentModifierLegacy.body(content:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25[1] = a5;
  v9 = type metadata accessor for OrnamentModifierLegacy(0, a3, a4, a4);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v25 - v13;
  v16 = *a1;
  v15 = a1[1];
  (*(v10 + 16))(v25 - v13, a2, v9, v12);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  (*(v10 + 32))(v18 + v17, v14, v9);
  v19 = (v18 + ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = v16;
  v19[1] = v15;

  swift_getWitnessTable(protocol conformance descriptor for OrnamentModifierLegacy<A>, v9);
  v20 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v20);
  View.transformPreference<A>(_:_:)();

  v27 = v28;
  type metadata accessor for _PreferenceTransformModifier<OrnamentPresentation.Key>();
  v22 = type metadata accessor for ModifiedContent();
  v23 = lazy protocol witness table accessor for type _PreferenceTransformModifier<OrnamentPresentation.Key> and conformance _PreferenceTransformModifier<A>();
  v26[0] = WitnessTable;
  v26[1] = v23;
  swift_getWitnessTable(MEMORY[0x1E697E858], v22, v26);
  static ViewBuilder.buildExpression<A>(_:)();

  v28 = v29;
  static ViewBuilder.buildExpression<A>(_:)();

  return result;
}

uint64_t closure #1 in closure #1 in OrnamentModifierLegacy.body(content:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OrnamentModifierLegacy(0, v16, v17, v15);
  result = OrnamentModifierLegacy.isPresented.getter();
  if (result)
  {
    v29 = Namespace.wrappedValue.getter();
    (*(v12 + 16))(v14, a2 + v18[9], a5);
    v20 = AnyView.init<A>(_:)();
    v21 = Namespace.wrappedValue.getter();
    v22 = v18[11];
    v28 = *(a2 + v18[10]);
    v27 = *(a2 + v22);
    v24 = implicit closure #1 in closure #1 in closure #1 in OrnamentModifierLegacy.body(content:)(a2, a5, a6, v23);
    v31 = 0;
    v32[0] = v20;
    v32[1] = v21;
    v33 = 1;
    v35 = v27;
    v34 = v28;
    v36 = 0;
    v37 = 0;
    v38 = a3;
    v39 = a4;
    v40 = v24;
    v41 = v25;
    v42 = 1;
    v43 = 0;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *a1;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, v29, isUniquelyReferenced_nonNull_native);
    *a1 = v30;
  }

  return result;
}

uint64_t (*implicit closure #1 in closure #1 in closure #1 in OrnamentModifierLegacy.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for OrnamentModifierLegacy(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return partial apply for implicit closure #2 in implicit closure #1 in closure #1 in closure #1 in OrnamentModifierLegacy.body(content:);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance OrnamentModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for OrnamentModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

double protocol witness for static PreferenceKey.defaultValue.getter in conformance OrnamentPresentation.Key@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static OrnamentPresentation.Key.defaultValue;

  return result;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance OrnamentPresentation.Key(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v6);

  *a1 = v6;
  return result;
}

double partial apply for closure #1 in OrnamentModifierLegacy.body(content:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for OrnamentModifierLegacy(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return closure #1 in OrnamentModifierLegacy.body(content:)(a1, v9, v6, v7, a3);
}

void type metadata accessor for _PreferenceTransformModifier<OrnamentPresentation.Key>()
{
  if (!lazy cache variable for type metadata for _PreferenceTransformModifier<OrnamentPresentation.Key>)
  {
    v0 = type metadata accessor for _PreferenceTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceTransformModifier<OrnamentPresentation.Key>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<OrnamentPresentation.Key> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<OrnamentPresentation.Key> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<OrnamentPresentation.Key> and conformance _PreferenceTransformModifier<A>)
  {
    type metadata accessor for _PreferenceTransformModifier<OrnamentPresentation.Key>();
    result = swift_getWitnessTable(MEMORY[0x1E6980918], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<OrnamentPresentation.Key> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in OrnamentModifierLegacy.body(content:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for OrnamentModifierLegacy(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = (v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return closure #1 in closure #1 in OrnamentModifierLegacy.body(content:)(a1, v4 + v9, v11, v12, v6, v7);
}

double destroy for OrnamentPresentation(uint64_t a1)
{

  if (*(a1 + 104) != 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for OrnamentPresentation(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = a2[7];
  *(a1 + 64) = *(a2 + 32);
  *(a1 + 72) = a2[9];
  *(a1 + 80) = *(a2 + 5);
  v5 = a2[13];
  *(a1 + 96) = a2[12];

  if (v5 != 1)
  {
  }

  *(a1 + 104) = v5;
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t assignWithCopy for OrnamentPresentation(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = a2[1];
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = a2[3];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = a2[6];
  v4 = a2[7];
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v4;
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 72) = a2[9];

  *(a1 + 80) = a2[10];

  v5 = a2[12];
  *(a1 + 88) = a2[11];
  *(a1 + 96) = v5;

  v6 = (a1 + 104);
  v7 = a2[13];
  if (*(a1 + 104) == 1)
  {
    if (v7 != 1)
    {
      *v6 = v7;

      goto LABEL_9;
    }

    v8 = 1;
  }

  else
  {
    if (v7 != 1)
    {
      *v6 = v7;

      goto LABEL_9;
    }

    outlined destroy of Transaction(a1 + 104);
    v8 = a2[13];
  }

  *v6 = v8;
LABEL_9:
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t assignWithTake for OrnamentPresentation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  v4 = (a1 + 104);
  v5 = *(a2 + 104);
  if (*(a1 + 104) != 1)
  {
    if (v5 != 1)
    {
      *v4 = v5;

      goto LABEL_6;
    }

    outlined destroy of Transaction(a1 + 104);
    v5 = 1;
  }

  *v4 = v5;
LABEL_6:
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for OrnamentPresentation(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t storeEnumTagSinglePayload for OrnamentPresentation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(_BYTE *__return_ptr, _BYTE *), uint64_t a3, int a4, void *a5)
{
  v78 = a4;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  while (1)
  {
    v21 = v8;
    v22 = v10;
    if (!v8)
    {
      break;
    }

LABEL_15:
    v60 = (v21 - 1) & v21;
    v26 = __clz(__rbit64(v21)) | (v22 << 6);
    v27 = *(*(a1 + 48) + 8 * v26);
    v28 = *(a1 + 56) + 120 * v26;
    v29 = *(v28 + 48);
    v31 = *v28;
    v30 = *(v28 + 16);
    v64 = *(v28 + 32);
    v65 = v29;
    v62 = v31;
    v63 = v30;
    v33 = *(v28 + 80);
    v32 = *(v28 + 96);
    v34 = *(v28 + 64);
    v69 = *(v28 + 112);
    v67 = v33;
    v68 = v32;
    v66 = v34;
    v35 = *(v28 + 80);
    *&v61[72] = *(v28 + 64);
    *&v61[88] = v35;
    *&v61[104] = *(v28 + 96);
    v61[120] = *(v28 + 112);
    v36 = *(v28 + 16);
    *&v61[8] = *v28;
    *&v61[24] = v36;
    v37 = *(v28 + 48);
    *&v61[40] = *(v28 + 32);
    *&v61[56] = v37;
    *v61 = v27;
    outlined init with copy of OrnamentPresentation(&v62, &v70);
    a2(v77, v61);
    v74 = *&v61[64];
    v75 = *&v61[80];
    v76[0] = *&v61[96];
    *(v76 + 9) = *&v61[105];
    v70 = *v61;
    v71 = *&v61[16];
    v72 = *&v61[32];
    v73 = *&v61[48];
    outlined destroy of (key: Namespace.ID, value: OrnamentPresentation)(&v70);
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
    v24 = v22;
LABEL_16:
    v74 = *&v77[64];
    v75 = *&v77[80];
    v76[0] = *&v77[96];
    *(v76 + 9) = *&v77[105];
    v70 = *v77;
    v71 = *&v77[16];
    v72 = *&v77[32];
    v73 = *&v77[48];
    if (_s7SwiftUI27ScrollableCollectionSubviewVSgWOg(&v70) == 1)
    {
      outlined consume of Set<UIPress>.Iterator._Variant(a1);

      return;
    }

    v38 = *v77;
    *&v61[64] = *&v77[72];
    *&v61[80] = *&v77[88];
    *&v61[96] = *&v77[104];
    v61[112] = v77[120];
    *v61 = *&v77[8];
    *&v61[16] = *&v77[24];
    *&v61[32] = *&v77[40];
    *&v61[48] = *&v77[56];
    v39 = a5;
    v40 = *a5;
    v41 = specialized __RawDictionaryStorage.find<A>(_:)(*v77);
    v43 = *(v40 + 16);
    v44 = (v42 & 1) == 0;
    v45 = __OFADD__(v43, v44);
    v46 = v43 + v44;
    if (v45)
    {
      goto LABEL_31;
    }

    v47 = v42;
    if (*(v40 + 24) >= v46)
    {
      if (v78)
      {
        if (v42)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v56 = v41;
        specialized _NativeDictionary.copy()();
        v41 = v56;
        v39 = a5;
        if (v47)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v46, v78 & 1);
      v41 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
      if ((v47 & 1) != (v48 & 1))
      {
        goto LABEL_33;
      }

      if (v47)
      {
LABEL_5:
        v11 = *(*v39 + 56) + 120 * v41;
        v12 = *(v11 + 48);
        v14 = *v11;
        v13 = *(v11 + 16);
        v64 = *(v11 + 32);
        v65 = v12;
        v62 = v14;
        v63 = v13;
        v16 = *(v11 + 80);
        v15 = *(v11 + 96);
        v17 = *(v11 + 64);
        v69 = *(v11 + 112);
        v67 = v16;
        v68 = v15;
        v66 = v17;
        v18 = *&v61[80];
        *(v11 + 64) = *&v61[64];
        *(v11 + 80) = v18;
        *(v11 + 96) = *&v61[96];
        *(v11 + 112) = v61[112];
        v19 = *&v61[16];
        *v11 = *v61;
        *(v11 + 16) = v19;
        v20 = *&v61[48];
        *(v11 + 32) = *&v61[32];
        *(v11 + 48) = v20;
        outlined destroy of OrnamentPresentation(&v62);
        goto LABEL_6;
      }
    }

    v49 = *v39;
    *(*v39 + 8 * (v41 >> 6) + 64) |= 1 << v41;
    *(v49[6] + 8 * v41) = v38;
    v50 = v49[7] + 120 * v41;
    v51 = *&v61[16];
    *v50 = *v61;
    *(v50 + 16) = v51;
    v52 = *&v61[48];
    *(v50 + 32) = *&v61[32];
    *(v50 + 48) = v52;
    *(v50 + 112) = v61[112];
    v53 = *&v61[96];
    *(v50 + 80) = *&v61[80];
    *(v50 + 96) = v53;
    *(v50 + 64) = *&v61[64];
    v54 = v49[2];
    v45 = __OFADD__(v54, 1);
    v55 = v54 + 1;
    if (v45)
    {
      goto LABEL_32;
    }

    v49[2] = v55;
LABEL_6:
    v78 = 1;
    v10 = v24;
    v8 = v60;
  }

  if (v9 <= v10 + 1)
  {
    v23 = v10 + 1;
  }

  else
  {
    v23 = v9;
  }

  v24 = v23 - 1;
  v25 = v10;
  while (1)
  {
    v22 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v22 >= v9)
    {
      _s7SwiftUI9NamespaceV2IDV_AA20OrnamentPresentationVtSgWOi0_(&v70);
      v60 = 0;
      *&v77[64] = v74;
      *&v77[80] = v75;
      *&v77[96] = v76[0];
      *&v77[105] = *(v76 + 9);
      *v77 = v70;
      *&v77[16] = v71;
      *&v77[32] = v72;
      *&v77[48] = v73;
      goto LABEL_16;
    }

    v21 = *(v5 + 8 * v22);
    ++v25;
    if (v21)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
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
  while (1)
  {
    v52 = v9;
    v53 = v11;
    v140 = a4;
    if (!v9)
    {
      break;
    }

LABEL_15:
    v104 = (v52 - 1) & v52;
    v57 = __clz(__rbit64(v52)) | (v53 << 6);
    v58 = *(*(a1 + 48) + 4 * v57);
    v59 = *(a1 + 56) + 248 * v57;
    v60 = *(v59 + 48);
    v62 = *v59;
    v61 = *(v59 + 16);
    v108 = *(v59 + 32);
    v109 = v60;
    v106 = v62;
    v107 = v61;
    v63 = *(v59 + 112);
    v65 = *(v59 + 64);
    v64 = *(v59 + 80);
    v112 = *(v59 + 96);
    v113 = v63;
    v110 = v65;
    v111 = v64;
    v66 = *(v59 + 176);
    v68 = *(v59 + 128);
    v67 = *(v59 + 144);
    v116 = *(v59 + 160);
    v117 = v66;
    v114 = v68;
    v115 = v67;
    v70 = *(v59 + 208);
    v69 = *(v59 + 224);
    v71 = *(v59 + 192);
    v121 = *(v59 + 240);
    v119 = v70;
    v120 = v69;
    v118 = v71;
    *&v122[196] = *(v59 + 192);
    *&v122[212] = *(v59 + 208);
    *&v122[228] = *(v59 + 224);
    *&v122[244] = *(v59 + 240);
    *&v122[132] = *(v59 + 128);
    *&v122[148] = *(v59 + 144);
    *&v122[164] = *(v59 + 160);
    *&v122[180] = *(v59 + 176);
    *&v122[68] = *(v59 + 64);
    *&v122[84] = *(v59 + 80);
    *&v122[100] = *(v59 + 96);
    *&v122[116] = *(v59 + 112);
    *&v122[4] = *v59;
    *&v122[20] = *(v59 + 16);
    *&v122[36] = *(v59 + 32);
    *&v122[52] = *(v59 + 48);
    *v105 = v58;
    *&v105[196] = *&v122[192];
    *&v105[212] = *&v122[208];
    *&v105[228] = *&v122[224];
    *&v105[240] = *&v122[236];
    *&v105[132] = *&v122[128];
    *&v105[148] = *&v122[144];
    *&v105[164] = *&v122[160];
    *&v105[180] = *&v122[176];
    *&v105[68] = *&v122[64];
    *&v105[84] = *&v122[80];
    *&v105[100] = *&v122[96];
    *&v105[116] = *&v122[112];
    *&v105[4] = *v122;
    *&v105[20] = *&v122[16];
    *&v105[36] = *&v122[32];
    *&v105[52] = *&v122[48];
    outlined init with copy of AlertStorage(&v106, &v123);
    a2(v139, v105);
    v136 = *&v105[208];
    v137 = *&v105[224];
    v138 = *&v105[240];
    v131 = *&v105[128];
    v132 = *&v105[144];
    v133 = *&v105[160];
    v134 = *&v105[176];
    v135 = *&v105[192];
    v127 = *&v105[64];
    v128 = *&v105[80];
    v129 = *&v105[96];
    v130 = *&v105[112];
    v123 = *v105;
    v124 = *&v105[16];
    v125 = *&v105[32];
    v126 = *&v105[48];
    outlined destroy of (key: ViewIdentity, value: AlertStorage)(&v123);
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
    v103 = v53;
LABEL_16:
    v136 = *&v139[208];
    v137 = *&v139[224];
    v138 = *&v139[240];
    v131 = *&v139[128];
    v132 = *&v139[144];
    v133 = *&v139[160];
    v134 = *&v139[176];
    v135 = *&v139[192];
    v127 = *&v139[64];
    v128 = *&v139[80];
    v129 = *&v139[96];
    v130 = *&v139[112];
    v123 = *v139;
    v124 = *&v139[16];
    v125 = *&v139[32];
    v126 = *&v139[48];
    if (getEnumTag for AccessibilityActionCategory.Category(&v123) == 1)
    {
      outlined consume of Set<UIPress>.Iterator._Variant(a1);

      return;
    }

    v72 = *v139;
    *&v105[192] = *&v139[200];
    *&v105[208] = *&v139[216];
    *&v105[224] = *&v139[232];
    *&v105[240] = *&v139[248];
    *&v105[128] = *&v139[136];
    *&v105[144] = *&v139[152];
    *&v105[160] = *&v139[168];
    *&v105[176] = *&v139[184];
    *&v105[64] = *&v139[72];
    *&v105[80] = *&v139[88];
    *&v105[96] = *&v139[104];
    *&v105[112] = *&v139[120];
    *v105 = *&v139[8];
    *&v105[16] = *&v139[24];
    *&v105[32] = *&v139[40];
    *&v105[48] = *&v139[56];
    v73 = a5;
    v74 = *a5;
    v75 = specialized __RawDictionaryStorage.find<A>(_:)(*v139);
    v77 = *(v74 + 16);
    v78 = (v76 & 1) == 0;
    v79 = __OFADD__(v77, v78);
    v80 = v77 + v78;
    if (v79)
    {
      goto LABEL_30;
    }

    v81 = v76;
    if (*(v74 + 24) < v80)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v80, v140 & 1);
      v75 = specialized __RawDictionaryStorage.find<A>(_:)(v72);
      if ((v81 & 1) != (v82 & 1))
      {
        goto LABEL_32;
      }

LABEL_22:
      if (v81)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }

    if (v140)
    {
      goto LABEL_22;
    }

    v99 = v75;
    specialized _NativeDictionary.copy()();
    v75 = v99;
    v73 = a5;
    if (v81)
    {
LABEL_5:
      v12 = *v73;
      v13 = 248 * v75;
      v14 = *(*v73 + 56) + 248 * v75;
      v15 = *(v14 + 48);
      v17 = *v14;
      v16 = *(v14 + 16);
      v108 = *(v14 + 32);
      v109 = v15;
      v106 = v17;
      v107 = v16;
      v18 = *(v14 + 112);
      v20 = *(v14 + 64);
      v19 = *(v14 + 80);
      v112 = *(v14 + 96);
      v113 = v18;
      v110 = v20;
      v111 = v19;
      v21 = *(v14 + 176);
      v23 = *(v14 + 128);
      v22 = *(v14 + 144);
      v116 = *(v14 + 160);
      v117 = v21;
      v114 = v23;
      v115 = v22;
      v25 = *(v14 + 208);
      v24 = *(v14 + 224);
      v26 = *(v14 + 192);
      v121 = *(v14 + 240);
      v119 = v25;
      v120 = v24;
      v118 = v26;
      outlined init with copy of AlertStorage(&v106, v122);
      outlined destroy of AlertStorage(v105);
      v27 = *(v12 + 56) + v13;
      v28 = *(v27 + 192);
      v29 = *(v27 + 208);
      v30 = *(v27 + 224);
      *&v122[240] = *(v27 + 240);
      *&v122[208] = v29;
      *&v122[224] = v30;
      *&v122[192] = v28;
      v31 = *(v27 + 128);
      v32 = *(v27 + 144);
      v33 = *(v27 + 176);
      *&v122[160] = *(v27 + 160);
      *&v122[176] = v33;
      *&v122[128] = v31;
      *&v122[144] = v32;
      v34 = *(v27 + 64);
      v35 = *(v27 + 80);
      v36 = *(v27 + 112);
      *&v122[96] = *(v27 + 96);
      *&v122[112] = v36;
      *&v122[64] = v34;
      *&v122[80] = v35;
      v38 = *v27;
      v37 = *(v27 + 16);
      v39 = *(v27 + 48);
      *&v122[32] = *(v27 + 32);
      *&v122[48] = v39;
      *v122 = v38;
      *&v122[16] = v37;
      v40 = v106;
      v41 = v107;
      v42 = v109;
      *(v27 + 32) = v108;
      *(v27 + 48) = v42;
      *v27 = v40;
      *(v27 + 16) = v41;
      v43 = v110;
      v44 = v111;
      v45 = v113;
      *(v27 + 96) = v112;
      *(v27 + 112) = v45;
      *(v27 + 64) = v43;
      *(v27 + 80) = v44;
      v46 = v114;
      v47 = v115;
      v48 = v117;
      *(v27 + 160) = v116;
      *(v27 + 176) = v48;
      *(v27 + 128) = v46;
      *(v27 + 144) = v47;
      v49 = v118;
      v50 = v119;
      v51 = v120;
      *(v27 + 240) = v121;
      *(v27 + 208) = v50;
      *(v27 + 224) = v51;
      *(v27 + 192) = v49;
      outlined destroy of AlertStorage(v122);
      goto LABEL_6;
    }

LABEL_23:
    v83 = *v73;
    *(*v73 + 8 * (v75 >> 6) + 64) |= 1 << v75;
    *(v83[6] + 4 * v75) = v72;
    v84 = v83[7] + 248 * v75;
    v85 = *v105;
    v86 = *&v105[16];
    v87 = *&v105[48];
    *(v84 + 32) = *&v105[32];
    *(v84 + 48) = v87;
    *v84 = v85;
    *(v84 + 16) = v86;
    v88 = *&v105[64];
    v89 = *&v105[80];
    v90 = *&v105[112];
    *(v84 + 96) = *&v105[96];
    *(v84 + 112) = v90;
    *(v84 + 64) = v88;
    *(v84 + 80) = v89;
    v91 = *&v105[128];
    v92 = *&v105[144];
    v93 = *&v105[176];
    *(v84 + 160) = *&v105[160];
    *(v84 + 176) = v93;
    *(v84 + 128) = v91;
    *(v84 + 144) = v92;
    v94 = *&v105[192];
    v95 = *&v105[208];
    v96 = *&v105[224];
    *(v84 + 240) = *&v105[240];
    *(v84 + 208) = v95;
    *(v84 + 224) = v96;
    *(v84 + 192) = v94;
    v97 = v83[2];
    v79 = __OFADD__(v97, 1);
    v98 = v97 + 1;
    if (v79)
    {
      goto LABEL_31;
    }

    v83[2] = v98;
LABEL_6:
    a4 = 1;
    v11 = v103;
    v9 = v104;
  }

  if (v10 <= v11 + 1)
  {
    v54 = v11 + 1;
  }

  else
  {
    v54 = v10;
  }

  v55 = v54 - 1;
  v56 = v11;
  while (1)
  {
    v53 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v53 >= v10)
    {
      v103 = v55;
      _s7SwiftUI12ViewIdentityV_AA12AlertStorageVtSgWOi0_(&v123);
      v104 = 0;
      *&v139[192] = v135;
      *&v139[208] = v136;
      *&v139[224] = v137;
      *&v139[240] = v138;
      *&v139[128] = v131;
      *&v139[144] = v132;
      *&v139[160] = v133;
      *&v139[176] = v134;
      *&v139[64] = v127;
      *&v139[80] = v128;
      *&v139[96] = v129;
      *&v139[112] = v130;
      *v139 = v123;
      *&v139[16] = v124;
      *&v139[32] = v125;
      *&v139[48] = v126;
      goto LABEL_16;
    }

    v52 = *(v6 + 8 * v53);
    ++v56;
    if (v52)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t outlined destroy of (key: Namespace.ID, value: OrnamentPresentation)(uint64_t a1)
{
  type metadata accessor for (key: Namespace.ID, value: OrnamentPresentation)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (key: Namespace.ID, value: OrnamentPresentation)()
{
  if (!lazy cache variable for type metadata for (key: Namespace.ID, value: OrnamentPresentation))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: Namespace.ID, value: OrnamentPresentation));
    }
  }
}

double _s7SwiftUI9NamespaceV2IDV_AA20OrnamentPresentationVtSgWOi0_(_OWORD *a1)
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

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance NavigationAuthority.ListKeyViewInputKey(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<NavigationEnabled>(0, &lazy cache variable for type metadata for NavigationState.ListKey?, &type metadata for NavigationState.ListKey, MEMORY[0x1E69E6720]);

  return static WeakAttribute.== infix(_:_:)();
}