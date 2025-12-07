uint64_t assignWithCopy for AccessibilityListCoreCellModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = a1 + 8;
  if (a1 != a2)
  {
    outlined destroy of AccessibilityScrollableContext(a1 + 8);
    v5 = *(a2 + 78);
    if (v5 == 2)
    {
      v6 = *(a2 + 32);
      *(a1 + 32) = v6;
      *(a1 + 40) = *(a2 + 40);
      (**(v6 - 8))(v3, a2 + 8);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 52) = *(a2 + 52);
      *(a1 + 56) = *(a2 + 56);
    }

    else if (v5 == 1)
    {
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 12) = *(a2 + 12);
      *(a1 + 16) = *(a2 + 16);
    }

    else
    {
      v7 = *(a2 + 32);
      *(a1 + 32) = v7;
      *(a1 + 40) = *(a2 + 40);
      (**(v7 - 8))(v3, a2 + 8);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 60) = *(a2 + 60);
      *(a1 + 64) = *(a2 + 64);
      v8 = *(a2 + 72);
      *(a1 + 76) = *(a2 + 76);
      *(a1 + 72) = v8;
    }

    *(a1 + 78) = v5;
  }

  return a1;
}

__n128 __swift_memcpy79_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

__n128 assignWithTake for AccessibilityListCoreCellModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    outlined destroy of AccessibilityScrollableContext(a1 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 71) = *(a2 + 71);
    result = *(a2 + 8);
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityListCoreCellModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[79])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityListCoreCellModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 78) = 0;
    *(result + 76) = 0;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 79) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 79) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithCopy for AccessibilityButtonModifier.Attachment(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (v5)
    {
      v6 = *(a2 + 16);
      v7 = *(a2 + 24);
      v8 = *(a2 + 32);
      outlined copy of Environment<AppIntentExecutor?>.Content(v6, v7, v8);
      v9 = *(a1 + 16);
      v10 = *(a1 + 24);
      v11 = *(a1 + 32);
      *(a1 + 16) = v6;
      *(a1 + 24) = v7;
      *(a1 + 32) = v8;
      outlined consume of Environment<AppIntentExecutor?>.Content(v9, v10, v11);
      v12 = *(a2 + 40);
      v13 = *(a1 + 40);
      *(a1 + 40) = v12;
      v14 = v12;

      v15 = *(a2 + 56);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v15;
    }

    else
    {
      outlined destroy of AppIntentAction(a1 + 16);
      v23 = *(a2 + 32);
      v22 = *(a2 + 48);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v23;
      *(a1 + 48) = v22;
    }
  }

  else if (v5)
  {
    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
    v18 = *(a2 + 32);
    outlined copy of Environment<AppIntentExecutor?>.Content(v16, v17, v18);
    *(a1 + 16) = v16;
    *(a1 + 24) = v17;
    *(a1 + 32) = v18;
    v19 = *(a2 + 40);
    *(a1 + 40) = v19;
    v20 = *(a2 + 56);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = v20;
    v21 = v19;
  }

  else
  {
    v24 = *(a2 + 16);
    v25 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v25;
    *(a1 + 16) = v24;
  }

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for AccessibilityButtonModifier.Attachment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 40);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 40);
  if (!v5)
  {
    outlined destroy of AppIntentAction(a1 + 16);
LABEL_5:
    v10 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v10;
    *(a1 + 48) = *(a2 + 48);
    goto LABEL_6;
  }

  v6 = *(a2 + 32);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  outlined consume of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

LABEL_6:
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityButtonModifier.Attachment(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for AccessibilityButtonModifier.Attachment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityToggleModifier.RepresentationModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 48 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*(v11 + 24) < 0xFFFFFFFFuLL)
    {
      v18 = *v11;
      v19 = *(v11 + 32);
      *(v10 + 16) = *(v11 + 16);
      *(v10 + 32) = v19;
      *v10 = v18;
      return v3;
    }

    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    outlined copy of Environment<AppIntentExecutor?>.Content(*v11, v13, v14);
    *v10 = v12;
    *(v10 + 8) = v13;
    *(v10 + 16) = v14;
    v15 = *(v11 + 24);
    *(v10 + 24) = v15;
    v16 = *(v11 + 40);
    *(v10 + 32) = *(v11 + 32);
    *(v10 + 40) = v16;
    v17 = v15;
  }

  return v3;
}

uint64_t initializeWithTake for AccessibilityToggleModifier.RepresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = v8[1];
  v9 = v8[2];
  *v7 = *v8;
  v7[1] = v10;
  v7[2] = v9;
  return a1;
}

uint64_t assignWithTake for AccessibilityToggleModifier.RepresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*(v7 + 24) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  if (*(v8 + 24) < 0xFFFFFFFFuLL)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v7, *(v7 + 8), *(v7 + 16));

LABEL_5:
    v14 = *v8;
    v15 = *(v8 + 32);
    *(v7 + 16) = *(v8 + 16);
    *(v7 + 32) = v15;
    *v7 = v14;
    return a1;
  }

  v9 = *(v8 + 16);
  v10 = *v7;
  v11 = *(v7 + 8);
  v12 = *(v7 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  outlined consume of Environment<AppIntentExecutor?>.Content(v10, v11, v12);
  v13 = *(v7 + 24);
  *(v7 + 24) = *(v8 + 24);

  *(v7 + 32) = *(v8 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityToggleModifier.RepresentationModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
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
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double storeEnumTagSinglePayload for AccessibilityToggleModifier.RepresentationModifier(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD0)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 48);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFE)
    {
      result = 0.0;
      *(v19 + 16) = 0u;
      *(v19 + 32) = 0u;
      *v19 = 0u;
      *v19 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t type metadata completion function for AccessibilityAdjustableModifier(_OWORD *a1)
{
  v1 = a1[2];
  v4[0] = a1[1];
  v4[1] = v1;
  v4[2] = a1[3];
  result = type metadata accessor for AccessibilityAdjustableModifier.Configuration(319, v4);
  if (v3 <= 0x3F)
  {
    *&v4[0] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityAdjustableModifier.Configuration(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  v8 = *(v6 + 80);
  if ((v8 & 0x1000F8) != 0 || (((((((v7 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    v4 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  else
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(v4, a2, v7);
    }

    else
    {
      (*(v6 + 16))(v4, a2, v5);
      (*(v6 + 56))(v4, 0, 1, v5);
    }

    v11 = a2 + v7;
    *(v4 + v7) = *(a2 + v7);
    v12 = (v4 + v7) & 0xFFFFFFFFFFFFFFF8;
    v13 = v11 & 0xFFFFFFFFFFFFFFF8;
    v14 = (v11 & 0xFFFFFFFFFFFFFFF8) + 8;
    if (*v14 < 0xFFFFFFFFuLL)
    {
      *(v12 + 8) = *v14;
    }

    else
    {
      v15 = *(v14 + 8);
      *(v12 + 8) = *v14;
      *(v12 + 16) = v15;
    }

    v16 = (v12 + 31) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v13 + 31) & 0xFFFFFFFFFFFFFFF8;
    if (*v17 < 0xFFFFFFFFuLL)
    {
      *v16 = *v17;
    }

    else
    {
      v18 = *(v17 + 8);
      *v16 = *v17;
      *(v16 + 8) = v18;
    }

    v19 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v17 + 23) & 0xFFFFFFFFFFFFFFF8);
    v21 = v20[1];
    *v19 = *v20;
    v19[1] = v21;
    v22 = ((v19 + 23) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
    v24 = v23[1];
    *v22 = *v23;
    v22[1] = v24;
  }

  return v4;
}

double destroy for AccessibilityAdjustableModifier.Configuration(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1, v3))
  {
    (*(v4 + 8))(a1, v3);
  }

  v5 = *(v4 + 64) + a1;
  if (!*(v4 + 84))
  {
    ++v5;
  }

  v6 = v5 & 0xFFFFFFFFFFFFFFF8;
  if (*((v5 & 0xFFFFFFFFFFFFFFF8) + 8) >= 0xFFFFFFFFuLL)
  {
  }

  if (*((v6 + 31) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for AccessibilityLabelModifier<A>.ChildModifier(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  *(a1 + 8) = swift_getWitnessTable(a4, a2, a3);
  result = swift_getWitnessTable(a5, a2);
  *(a1 + 16) = result;
  return result;
}

uint64_t partial apply for closure #1 in AccessibilityToggleModifier.RepresentationModifier.body(content:)(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for AccessibilityToggleModifier.RepresentationModifier(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return closure #1 in AccessibilityToggleModifier.RepresentationModifier.body(content:)(a1, v8, v3, v4, v5, v6);
}

uint64_t outlined init with copy of AppIntentAction?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t assignWithTake for AccessibilityButtonModifier.Configuration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 40);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 40);
  if (!v5)
  {
    outlined destroy of AppIntentAction(a1 + 16);
LABEL_5:
    v10 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v10;
    *(a1 + 48) = *(a2 + 48);
    return a1;
  }

  v6 = *(a2 + 32);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  outlined consume of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t objectdestroy_128Tm()
{

  if (*(v0 + 72))
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in AccessibilityDefaultActionRepresentableConfiguration.body(content:)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = 2;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityPlaybackButtonModifier.Configuration(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 2, v7))
    {
      v9 = type metadata accessor for PlaybackButton.State(0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 2, v7);
    }

    v11 = *(a3 + 36);
    v12 = *(a3 + 40);
    v13 = a1 + v11;
    v14 = a2 + v11;
    *v13 = *v14;
    v13[16] = v14[16];
    v15 = a1 + v12;
    v16 = a2 + v12;
    type metadata accessor for ClosedRange<Date>(0);
    v18 = v17;
    v19 = *(v17 - 8);
    if ((*(v19 + 48))(v16, 1, v17))
    {
      type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
      memcpy(v15, v16, *(*(v20 - 8) + 64));
    }

    else
    {
      v21 = *(v8 + 16);
      v21(v15, v16, v7);
      v21(&v15[*(v18 + 36)], &v16[*(v18 + 36)], v7);
      (*(v19 + 56))(v15, 0, 1, v18);
    }
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    v3 = type metadata accessor for Date();
    result = swift_getWitnessTable(MEMORY[0x1E6969548], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

uint64_t destroy for AccessibilityPlaybackButtonModifier.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v11 = *(v4 - 8);
  if (!(*(v11 + 48))(a1, 2, v4))
  {
    (*(v11 + 8))(a1, v4);
  }

  v5 = a1 + *(a2 + 40);
  type metadata accessor for ClosedRange<Date>(0);
  v7 = v6;
  result = (*(*(v6 - 8) + 48))(v5, 1, v6);
  if (!result)
  {
    v10 = *(v11 + 8);
    v10(v5, v4);
    v9 = v5 + *(v7 + 36);

    return (v10)(v9, v4);
  }

  return result;
}

char *initializeWithCopy for AccessibilityPlaybackButtonModifier.Configuration(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = type metadata accessor for PlaybackButton.State(0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 2, v6);
  }

  v9 = *(a3 + 36);
  v10 = *(a3 + 40);
  v11 = &a1[v9];
  v12 = &a2[v9];
  *v11 = *v12;
  v11[16] = v12[16];
  v13 = &a1[v10];
  v14 = &a2[v10];
  type metadata accessor for ClosedRange<Date>(0);
  v16 = v15;
  v17 = *(v15 - 8);
  if ((*(v17 + 48))(v14, 1, v15))
  {
    type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    memcpy(v13, v14, *(*(v18 - 8) + 64));
  }

  else
  {
    v19 = *(v7 + 16);
    v19(v13, v14, v6);
    v19(&v13[*(v16 + 36)], &v14[*(v16 + 36)], v6);
    (*(v17 + 56))(v13, 0, 1, v16);
  }

  return a1;
}

char *assignWithCopy for AccessibilityPlaybackButtonModifier.Configuration(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 2, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = type metadata accessor for PlaybackButton.State(0);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 24))(a1, a2, v6);
LABEL_7:
  v12 = *(a3 + 36);
  v13 = &a1[v12];
  v14 = &a2[v12];
  v15 = *v14;
  v13[16] = v14[16];
  *v13 = v15;
  v16 = *(a3 + 40);
  v17 = &a1[v16];
  v18 = &a2[v16];
  type metadata accessor for ClosedRange<Date>(0);
  v20 = v19;
  v21 = *(v19 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v17, 1, v19);
  v24 = v22(v18, 1, v20);
  if (!v23)
  {
    if (!v24)
    {
      v28 = *(v7 + 24);
      v28(v17, v18, v6);
      v28(&v17[*(v20 + 36)], &v18[*(v20 + 36)], v6);
      return a1;
    }

    outlined destroy of LinkDestination(v17, type metadata accessor for ClosedRange<Date>);
    goto LABEL_12;
  }

  if (v24)
  {
LABEL_12:
    type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    memcpy(v17, v18, *(*(v26 - 8) + 64));
    return a1;
  }

  v25 = *(v7 + 16);
  v25(v17, v18, v6);
  v25(&v17[*(v20 + 36)], &v18[*(v20 + 36)], v6);
  (*(v21 + 56))(v17, 0, 1, v20);
  return a1;
}

uint64_t outlined destroy of LinkDestination(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *initializeWithTake for AccessibilityPlaybackButtonModifier.Configuration(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = type metadata accessor for PlaybackButton.State(0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 2, v6);
  }

  v9 = *(a3 + 36);
  v10 = *(a3 + 40);
  v11 = &a1[v9];
  v12 = &a2[v9];
  *v11 = *v12;
  v11[16] = v12[16];
  v13 = &a1[v10];
  v14 = &a2[v10];
  type metadata accessor for ClosedRange<Date>(0);
  v16 = v15;
  v17 = *(v15 - 8);
  if ((*(v17 + 48))(v14, 1, v15))
  {
    type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    memcpy(v13, v14, *(*(v18 - 8) + 64));
  }

  else
  {
    v19 = *(v7 + 32);
    v19(v13, v14, v6);
    v19(&v13[*(v16 + 36)], &v14[*(v16 + 36)], v6);
    (*(v17 + 56))(v13, 0, 1, v16);
  }

  return a1;
}

char *assignWithTake for AccessibilityPlaybackButtonModifier.Configuration(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 2, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = type metadata accessor for PlaybackButton.State(0);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 40))(a1, a2, v6);
LABEL_7:
  v12 = *(a3 + 36);
  v13 = *(a3 + 40);
  v14 = &a1[v12];
  v15 = &a2[v12];
  *v14 = *v15;
  v14[16] = v15[16];
  v16 = &a1[v13];
  v17 = &a2[v13];
  type metadata accessor for ClosedRange<Date>(0);
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 48);
  v22 = v21(v16, 1, v18);
  v23 = v21(v17, 1, v19);
  if (!v22)
  {
    if (!v23)
    {
      v27 = *(v7 + 40);
      v27(v16, v17, v6);
      v27(&v16[*(v19 + 36)], &v17[*(v19 + 36)], v6);
      return a1;
    }

    outlined destroy of LinkDestination(v16, type metadata accessor for ClosedRange<Date>);
    goto LABEL_12;
  }

  if (v23)
  {
LABEL_12:
    type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    memcpy(v16, v17, *(*(v25 - 8) + 64));
    return a1;
  }

  v24 = *(v7 + 32);
  v24(v16, v17, v6);
  v24(&v16[*(v19 + 36)], &v17[*(v19 + 36)], v6);
  (*(v20 + 56))(v16, 0, 1, v19);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityPlaybackButtonModifier(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AccessibilityPlaybackButtonModifier.Configuration(0, *(a3 + 16), *(a3 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  if ((v7 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v7 + 16) & ~v7));
  }

  else
  {
    v8 = v6;
    v9 = type metadata accessor for Date();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(a2, 2, v9))
    {
      v11 = type metadata accessor for PlaybackButton.State(0);
      memcpy(a1, a2, *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(a1, a2, v9);
      (*(v10 + 56))(a1, 0, 2, v9);
    }

    v13 = *(v8 + 36);
    v14 = a1 + v13;
    v15 = a2 + v13;
    *v14 = *v15;
    v14[16] = v15[16];
    v16 = *(v8 + 40);
    v17 = a1 + v16;
    v18 = a2 + v16;
    type metadata accessor for ClosedRange<Date>(0);
    v20 = v19;
    v21 = *(v19 - 8);
    if ((*(v21 + 48))(v18, 1, v19))
    {
      type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
      memcpy(v17, v18, *(*(v22 - 8) + 64));
    }

    else
    {
      v23 = *(v10 + 16);
      v23(v17, v18, v9);
      v23(&v17[*(v20 + 36)], &v18[*(v20 + 36)], v9);
      (*(v21 + 56))(v17, 0, 1, v20);
    }
  }

  return a1;
}

uint64_t destroy for AccessibilityPlaybackButtonModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v12 = *(v4 - 8);
  if (!(*(v12 + 48))(a1, 2, v4))
  {
    (*(v12 + 8))(a1, v4);
  }

  v6 = a1 + *(type metadata accessor for AccessibilityPlaybackButtonModifier.Configuration(0, *(a2 + 16), *(a2 + 24), v5) + 40);
  type metadata accessor for ClosedRange<Date>(0);
  v8 = v7;
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (!result)
  {
    v11 = *(v12 + 8);
    v11(v6, v4);
    v10 = v6 + *(v8 + 36);

    return (v11)(v10, v4);
  }

  return result;
}

char *initializeWithCopy for AccessibilityPlaybackButtonModifier(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = type metadata accessor for PlaybackButton.State(0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 2, v6);
  }

  v10 = type metadata accessor for AccessibilityPlaybackButtonModifier.Configuration(0, *(a3 + 16), *(a3 + 24), v9);
  v11 = *(v10 + 36);
  v12 = &a1[v11];
  v13 = &a2[v11];
  *v12 = *v13;
  v12[16] = v13[16];
  v14 = *(v10 + 40);
  v15 = &a1[v14];
  v16 = &a2[v14];
  type metadata accessor for ClosedRange<Date>(0);
  v18 = v17;
  v19 = *(v17 - 8);
  if ((*(v19 + 48))(v16, 1, v17))
  {
    type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    memcpy(v15, v16, *(*(v20 - 8) + 64));
  }

  else
  {
    v21 = *(v7 + 16);
    v21(v15, v16, v6);
    v21(&v15[*(v18 + 36)], &v16[*(v18 + 36)], v6);
    (*(v19 + 56))(v15, 0, 1, v18);
  }

  return a1;
}

char *assignWithCopy for AccessibilityPlaybackButtonModifier(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 2, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v12 = type metadata accessor for PlaybackButton.State(0);
    memcpy(a1, a2, *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 24))(a1, a2, v6);
LABEL_7:
  v13 = type metadata accessor for AccessibilityPlaybackButtonModifier.Configuration(0, *(a3 + 16), *(a3 + 24), v11);
  v14 = *(v13 + 36);
  v15 = &a1[v14];
  v16 = &a2[v14];
  v17 = v16[16];
  *v15 = *v16;
  v15[16] = v17;
  v18 = *(v13 + 40);
  v19 = &a1[v18];
  v20 = &a2[v18];
  type metadata accessor for ClosedRange<Date>(0);
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = *(v23 + 48);
  v25 = v24(v19, 1, v21);
  v26 = v24(v20, 1, v22);
  if (!v25)
  {
    if (!v26)
    {
      v30 = *(v7 + 24);
      v30(v19, v20, v6);
      v30(&v19[*(v22 + 36)], &v20[*(v22 + 36)], v6);
      return a1;
    }

    outlined destroy of LinkDestination(v19, type metadata accessor for ClosedRange<Date>);
    goto LABEL_12;
  }

  if (v26)
  {
LABEL_12:
    type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    memcpy(v19, v20, *(*(v28 - 8) + 64));
    return a1;
  }

  v27 = *(v7 + 16);
  v27(v19, v20, v6);
  v27(&v19[*(v22 + 36)], &v20[*(v22 + 36)], v6);
  (*(v23 + 56))(v19, 0, 1, v22);
  return a1;
}

char *initializeWithTake for AccessibilityPlaybackButtonModifier(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = type metadata accessor for PlaybackButton.State(0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 2, v6);
  }

  v10 = type metadata accessor for AccessibilityPlaybackButtonModifier.Configuration(0, *(a3 + 16), *(a3 + 24), v9);
  v11 = *(v10 + 36);
  v12 = &a1[v11];
  v13 = &a2[v11];
  *v12 = *v13;
  v12[16] = v13[16];
  v14 = *(v10 + 40);
  v15 = &a1[v14];
  v16 = &a2[v14];
  type metadata accessor for ClosedRange<Date>(0);
  v18 = v17;
  v19 = *(v17 - 8);
  if ((*(v19 + 48))(v16, 1, v17))
  {
    type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    memcpy(v15, v16, *(*(v20 - 8) + 64));
  }

  else
  {
    v21 = *(v7 + 32);
    v21(v15, v16, v6);
    v21(&v15[*(v18 + 36)], &v16[*(v18 + 36)], v6);
    (*(v19 + 56))(v15, 0, 1, v18);
  }

  return a1;
}

char *assignWithTake for AccessibilityPlaybackButtonModifier(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 2, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v12 = type metadata accessor for PlaybackButton.State(0);
    memcpy(a1, a2, *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 40))(a1, a2, v6);
LABEL_7:
  v13 = type metadata accessor for AccessibilityPlaybackButtonModifier.Configuration(0, *(a3 + 16), *(a3 + 24), v11);
  v14 = *(v13 + 36);
  v15 = &a1[v14];
  v16 = &a2[v14];
  *v15 = *v16;
  v15[16] = v16[16];
  v17 = *(v13 + 40);
  v18 = &a1[v17];
  v19 = &a2[v17];
  type metadata accessor for ClosedRange<Date>(0);
  v21 = v20;
  v22 = *(v20 - 8);
  v23 = *(v22 + 48);
  v24 = v23(v18, 1, v20);
  v25 = v23(v19, 1, v21);
  if (!v24)
  {
    if (!v25)
    {
      v29 = *(v7 + 40);
      v29(v18, v19, v6);
      v29(&v18[*(v21 + 36)], &v19[*(v21 + 36)], v6);
      return a1;
    }

    outlined destroy of LinkDestination(v18, type metadata accessor for ClosedRange<Date>);
    goto LABEL_12;
  }

  if (v25)
  {
LABEL_12:
    type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    memcpy(v18, v19, *(*(v27 - 8) + 64));
    return a1;
  }

  v26 = *(v7 + 32);
  v26(v18, v19, v6);
  v26(&v18[*(v21 + 36)], &v19[*(v21 + 36)], v6);
  (*(v22 + 56))(v18, 0, 1, v21);
  return a1;
}

__n128 __swift_memcpy179_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 175) = *(a2 + 175);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

void destroy for AccessibilityImageModifier(void *a1)
{

  v2 = a1[3];
  if (v2 >> 1 != 0xFFFFFFFF)
  {
    v3 = a1[1];
    v4 = a1[2];
    v5 = a1[4];

    outlined consume of AccessibilityImageLabel(v3, v4, v2, v5);
  }
}

uint64_t initializeWithCopy for AccessibilityImageModifier(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = a2[3];

  if (v5 >> 1 == 0xFFFFFFFF)
  {
    v6 = *(a2 + 3);
    *v4 = *(a2 + 1);
    *(a1 + 24) = v6;
  }

  else
  {
    v7 = a2[1];
    v8 = a2[2];
    v9 = a2[4];
    outlined copy of AccessibilityImageLabel(v7, v8, v5, v9);
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v5;
    *(a1 + 32) = v9;
  }

  *(a1 + 40) = *(a2 + 20);
  return a1;
}

uint64_t *assignWithCopy for AccessibilityImageModifier(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[3];
  v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
  if (a1[3] >> 1 == 0xFFFFFFFF)
  {
    if (v5 == 0x1FFFFFFFELL)
    {
      v6 = *(a2 + 1);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 1) = v6;
    }

    else
    {
      v8 = a2[1];
      v9 = a2[2];
      v10 = a2[4];
      outlined copy of AccessibilityImageLabel(v8, v9, a2[3], v10);
      a1[1] = v8;
      a1[2] = v9;
      a1[3] = v4;
      a1[4] = v10;
    }
  }

  else if (v5 == 0x1FFFFFFFELL)
  {
    outlined destroy of AccessibilityImageLabel((a1 + 1));
    v7 = *(a2 + 3);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 3) = v7;
  }

  else
  {
    v11 = a2[1];
    v12 = a2[2];
    v13 = a2[4];
    outlined copy of AccessibilityImageLabel(v11, v12, a2[3], v13);
    v14 = a1[1];
    v15 = a1[2];
    v16 = a1[3];
    v17 = a1[4];
    a1[1] = v11;
    a1[2] = v12;
    a1[3] = v4;
    a1[4] = v13;
    outlined consume of AccessibilityImageLabel(v14, v15, v16, v17);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  return a1;
}

uint64_t *assignWithTake for AccessibilityImageModifier(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a1[3];
  if (v4 >> 1 != 0xFFFFFFFF)
  {
    v5 = a2[3];
    if (v5 >> 1 != 0xFFFFFFFF)
    {
      v6 = a2[4];
      v7 = a1[1];
      v8 = a1[2];
      v9 = a1[4];
      *(a1 + 1) = *(a2 + 1);
      a1[3] = v5;
      a1[4] = v6;
      outlined consume of AccessibilityImageLabel(v7, v8, v4, v9);
      goto LABEL_6;
    }

    outlined destroy of AccessibilityImageLabel((a1 + 1));
  }

  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
LABEL_6:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityImageModifier(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t storeEnumTagSinglePayload for AccessibilityImageModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityImageModifier(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AccessibilityImageModifier and conformance AccessibilityImageModifier();
  result = lazy protocol witness table accessor for type AccessibilityImageModifier and conformance AccessibilityImageModifier();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityImageModifier and conformance AccessibilityImageModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityImageModifier and conformance AccessibilityImageModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityImageModifier and conformance AccessibilityImageModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityImageModifier, &type metadata for AccessibilityImageModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityImageModifier and conformance AccessibilityImageModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityImageModifier and conformance AccessibilityImageModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityImageModifier and conformance AccessibilityImageModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityImageModifier, &type metadata for AccessibilityImageModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityImageModifier and conformance AccessibilityImageModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityImageModifier and conformance AccessibilityImageModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityImageModifier and conformance AccessibilityImageModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityImageModifier, &type metadata for AccessibilityImageModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityImageModifier and conformance AccessibilityImageModifier);
  }

  return result;
}

uint64_t outlined init with take of LinkDestination(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of LinkDestination.Configuration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for RelationshipModifier<String>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type Map<AccessibilityImageModifier, AccessibilityAttachment> and conformance Map<A, B>()
{
  result = lazy protocol witness table cache variable for type Map<AccessibilityImageModifier, AccessibilityAttachment> and conformance Map<A, B>;
  if (!lazy protocol witness table cache variable for type Map<AccessibilityImageModifier, AccessibilityAttachment> and conformance Map<A, B>)
  {
    type metadata accessor for RelationshipModifier<String>(255, &lazy cache variable for type metadata for Map<AccessibilityImageModifier, AccessibilityAttachment>, &type metadata for AccessibilityImageModifier, MEMORY[0x1E697FFF0], MEMORY[0x1E698D398]);
    result = swift_getWitnessTable(MEMORY[0x1E698D3A0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Map<AccessibilityImageModifier, AccessibilityAttachment> and conformance Map<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityPlaybackButtonModifier.ValueStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = v4 - 3;
  if (v3 >= 3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 >= 3)
  {
    return v6 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AccessibilityPlaybackButtonModifier.ValueStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 5;
    }
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityStaticTextModifier.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v7;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 60) = *(a2 + 60);
  v8 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v8;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 177) = *(a2 + 177);
  *(a1 + 178) = *(a2 + 178);

  return a1;
}

uint64_t assignWithCopy for AccessibilityStaticTextModifier.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  v10 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v10;
  v11 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v11;
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  v12 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v12;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 177) = *(a2 + 177);
  *(a1 + 178) = *(a2 + 178);
  return a1;
}

uint64_t assignWithTake for AccessibilityStaticTextModifier.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 60) = *(a2 + 60);
  v8 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v8;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 177) = *(a2 + 177);
  *(a1 + 178) = *(a2 + 178);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityStaticTextModifier.Configuration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 179))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityStaticTextModifier.Configuration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 178) = 0;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 179) = 1;
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

    *(result + 179) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *destroy for AccessibilityBadgedViewModifier(uint64_t *result)
{
  v1 = result[2];
  if (v1 >> 1 != 0xFFFFFFFF)
  {
    return outlined consume of BadgeLabel(*result, result[1], v1);
  }

  return result;
}

uint64_t *initializeWithCopy for AccessibilityBadgedViewModifier(uint64_t *result, uint64_t *a2)
{
  v2 = a2[2];
  if (v2 >> 1 == 0xFFFFFFFF)
  {
    v3 = *(a2 + 1);
    *result = *a2;
    *(result + 1) = v3;
  }

  else
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = a2[3];
    v7 = result;
    outlined copy of BadgeLabel(*a2, v5, v2);
    *v7 = v4;
    v7[1] = v5;
    v7[2] = v2;
    v7[3] = v6;
    return v7;
  }

  return result;
}

uint64_t *assignWithCopy for AccessibilityBadgedViewModifier(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[2];
  v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
  if (a1[2] >> 1 == 0xFFFFFFFF)
  {
    if (v4 == 0x1FFFFFFFELL)
    {
      v5 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v5;
    }

    else
    {
      v8 = *a2;
      v9 = a2[1];
      v10 = a2[3];
      outlined copy of BadgeLabel(*a2, v9, v3);
      *a1 = v8;
      a1[1] = v9;
      a1[2] = v3;
      a1[3] = v10;
    }
  }

  else if (v4 == 0x1FFFFFFFELL)
  {
    outlined destroy of BadgeLabel(a1);
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
  }

  else
  {
    v11 = *a2;
    v12 = a2[1];
    v13 = a2[3];
    outlined copy of BadgeLabel(*a2, v12, v3);
    v14 = *a1;
    v15 = a1[1];
    v16 = a1[2];
    *a1 = v11;
    a1[1] = v12;
    a1[2] = v3;
    a1[3] = v13;
    outlined consume of BadgeLabel(v14, v15, v16);
  }

  return a1;
}

_OWORD *assignWithTake for AccessibilityBadgedViewModifier(_OWORD *result, uint64_t a2)
{
  v2 = *(result + 2);
  if (v2 >> 1 == 0xFFFFFFFF)
  {
    v3 = *(a2 + 16);
    *result = *a2;
    result[1] = v3;
  }

  else
  {
    v4 = *(a2 + 16);
    if (v4 >> 1 == 0xFFFFFFFF)
    {
      v5 = result;
      outlined destroy of BadgeLabel(result);
      v7 = *(a2 + 16);
      *v5 = *a2;
      v5[1] = v7;
    }

    else
    {
      v8 = *(a2 + 24);
      v9 = *result;
      v10 = *(result + 1);
      *result = *a2;
      *(result + 2) = v4;
      *(result + 3) = v8;
      v5 = result;
      outlined consume of BadgeLabel(v9, v10, v2);
    }

    return v5;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityBadgedViewModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16) >> 1;
  v4 = -2 - v3;
  if (-2 - v3 < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityBadgedViewModifier(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * ~a2;
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t View.onHover(perform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x18D00A570](v4, a3, &type metadata for _HoverRegionModifier);
}

uint64_t HoverResponder.updatePhase(_:)(uint64_t result, uint64_t a2, int a3)
{
  v5 = *(v3 + 216);
  v4 = *(v3 + 224);
  v6 = *(v3 + 232);
  v7 = *(v3 + 480);
  if (v6)
  {
    if (((v7 ^ a3) & 1) == 0)
    {
      return result;
    }

    goto LABEL_3;
  }

  if ((a3 | v7))
  {
    if (a3 & v7)
    {
      return result;
    }

LABEL_3:
    *(v3 + 464) = *&result;
    *(v3 + 472) = *&a2;
    v8 = a3 & 1;
    *(v3 + 480) = a3 & 1;
    v9 = result;
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    *(v11 + 24) = v4;
    *(v11 + 32) = v6;
    *(v11 + 40) = v9;
    *(v11 + 48) = *&a2;
    *(v11 + 56) = v8;
    outlined copy of TransferableDropAction<A>.UserActionStorage<A>(v5, v4);
    outlined copy of TransferableDropAction<A>.UserActionStorage<A>(v5, v4);
    static Update.enqueueAction(reason:_:)();

    *&result = COERCE_DOUBLE(outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v5, v4));
    return result;
  }

  if (*(v3 + 464) != *&result || *(v3 + 472) != *&a2)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t implicit closure #1 in static _HoverRegionModifier._makeView(modifier:inputs:body:)(int a1)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type _HoverRegionModifier.HoverBehavior and conformance _HoverRegionModifier.HoverBehavior();
  return Attribute.init<A>(body:value:flags:update:)();
}

void protocol witness for static Rule.initialValue.getter in conformance _HoverRegionModifier.Callback(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
}

double protocol witness for Rule.value.getter in conformance _HoverRegionModifier.Callback@<D0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = 1;

  return result;
}

uint64_t closure #1 in _HoverRegionModifier.HoverBehavior.value.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlatformItemList.Item(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  PlatformItemList.mergedContentItem.getter(*a1, &v18 - v11);

  v13 = *(v12 + 64);
  v14 = *(v12 + 65);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v13, v14);
  *(v12 + 64) = a2;
  *(v12 + 65) = a3;
  outlined init with copy of PlatformItemList.Item(v12, v9);
  _sSay7SwiftUI13ViewResponderCGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_18CD63400;
  outlined init with take of PlatformItemList.Item(v9, v16 + v15);
  *a1 = v16;
  return outlined destroy of PlatformItemList.Item(v12);
}

double protocol witness for Rule.value.getter in conformance _HoverRegionModifier.HoverBehavior@<D0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in _HoverRegionModifier.HoverBehavior.value.getter;
  *(v6 + 24) = v5;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a1[1] = v6;

  return result;
}

Swift::Void __swiftcall HoverResponderChild.updateValue()()
{
  v1 = v0;
  v44 = *MEMORY[0x1E69E9840];
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;
  v6 = Value[1];
  v7 = AGGraphGetValue();
  v9 = v8;
  v10 = *v7;
  v11 = *(v7 + 8);
  v39 = *(v7 + 32);
  v36 = *(v7 + 16);

  v12 = AGGraphGetValue();
  v37 = v12[1];
  v38 = *v12;
  if ((v4 & 1) != 0 || ((v9 & 1) == 0 ? (v14 = (v13 & 1) == 0) : (v14 = 0), !v14 || (_sSay7SwiftUI13ViewResponderCGMaTm_0(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]), !AGGraphGetOutputValue())))
  {
    *&v40 = v10;
    *(&v40 + 1) = v11;
    *v41 = v36;
    *&v41[16] = v39;

    ViewTransform.appendPosition(_:)(__PAIR128__(v6, v5));
    v15 = *v1;
    v42 = v38;
    v43[0] = v37;
    *(v15 + 288) = MEMORY[0x18D00B390]();
    *(v15 + 296) = v16;
    v17 = *v41;
    *(v15 + 240) = v40;
    *(v15 + 256) = v17;
    *(v15 + 272) = *&v41[16];
  }

  v18 = AGGraphGetValue();
  v20 = *v18;
  v19 = *(v18 + 8);
  v21 = *(v18 + 16);
  if ((v22 & 1) != 0 || (_sSay7SwiftUI13ViewResponderCGMaTm_0(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]), !AGGraphGetOutputValue()))
  {
    v23 = *v1;
    v24 = *(*v1 + 216);
    v25 = *(*v1 + 224);
    *(v23 + 216) = v20;
    *(v23 + 224) = v19;
    *(v23 + 232) = v21;
    outlined copy of TransferableDropAction<A>.UserActionStorage<A>(v20, v19);
    outlined copy of TransferableDropAction<A>.UserActionStorage<A>(v20, v19);
    outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v24, v25);
  }

  else
  {
    outlined copy of TransferableDropAction<A>.UserActionStorage<A>(v20, v19);
  }

  v26 = *v1;
  outlined init with copy of HoverResponderChild.CoordinateSpaceStorage((v1 + 1), &v40);
  if (v41[25])
  {
    v27 = AGGraphGetValue();
    outlined init with copy of CoordinateSpace(v27, &v42);
  }

  else
  {
    v42 = v40;
    v43[0] = *v41;
    *(v43 + 9) = *&v41[9];
  }

  swift_beginAccess();
  outlined assign with take of CoordinateSpace(&v42, v26 + 304);
  swift_endAccess();
  static Semantics.v5.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    outlined init with copy of HoverResponderChild(v1, &v40);
    v28 = *AGGraphGetValue();
    outlined destroy of HoverResponderChild(&v40);
    *(v26 + 481) = v28;
  }

  v29 = AGGraphGetValue();
  v30 = v29[1];
  v42 = *v29;
  v43[0] = v30;
  AGGraphGetValue();
  v31 = AGGraphGetValue();
  v32 = *(v31 + 8);
  *&v40 = *v31;
  *(&v40 + 1) = v32;
  v33 = *(v31 + 32);
  *v41 = *(v31 + 16);
  *&v41[16] = v33;
  swift_beginAccess();
  type metadata accessor for ContentResponderHelper<TrivialContentResponder>();

  ContentResponderHelper.update(data:size:position:transform:parent:)();
  swift_endAccess();

  _sSay7SwiftUI13ViewResponderCGMaTm_0(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
  AGGraphGetValue();
  if (v34)
  {

    MultiViewResponder.children.setter();
  }

  if (AGGraphGetOutputValue())
  {

    outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v20, v19);
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_18CD69590;
    *(v35 + 32) = v26;
    *&v40 = v35;

    AGGraphSetOutputValue();

    outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v20, v19);
  }
}

uint64_t protocol witness for static RemovableAttribute.willRemove(attribute:) in conformance HoverResponderChild()
{
  AGGraphGetAttributeInfo();
  swift_retain_n();
  static Update.enqueueAction(reason:_:)();
}

uint64_t closure #1 in HoverResponder.updatePhase(_:)(uint64_t (*a1)(BOOL, uint64_t), uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    return a1((a6 & 1) == 0, a2);
  }

  else
  {
    return (a1)(a4, a5, a6 & 1);
  }
}

uint64_t HoverResponder.hitTestPolicy(options:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  v8 = *a1;
  type metadata accessor for DefaultLayoutViewResponder();
  v5 = method lookup function for ViewResponder();
  result = v5(&v9, &v8);
  v7 = v9;
  if (v9 != 1)
  {
    if (*(v2 + 481))
    {
      if ((v4 & 0x40) != 0)
      {
        v7 = 0;
      }
    }

    else
    {
      result = static HitTestPassThroughFeature.isEnabled.getter();
      if (result)
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }
    }
  }

  *a2 = v7;
  return result;
}

uint64_t HoverResponder.containsGlobalPoints(_:cacheKey:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, double *a4@<X8>)
{
  v7 = *a3;
  v13[0] = *a3;
  HoverResponder.hitTestPolicy(options:)(v13, &v14);
  if (v14 == 1)
  {
    result = MultiViewResponder.children.getter();
    *a4 = 0.0;
    a4[1] = 0.0;
    *(a4 + 2) = result;
  }

  else
  {
    v14 = v7;
    MultiViewResponder.children.getter();
    swift_beginAccess();
    type metadata accessor for ContentResponderHelper<TrivialContentResponder>();
    ContentResponderHelper.containsGlobalPoints(_:cacheKey:options:children:)();
    swift_endAccess();

    v14 = v7;
    type metadata accessor for DefaultLayoutViewResponder();
    v9 = method lookup function for ViewResponder();
    LOBYTE(v13[0]) = BYTE4(a2) & 1;
    v9(v13, a1, a2 | ((BYTE4(a2) & 1) << 32), &v14);
    v10 = v13[0];
    v11 = *&v13[1];

    *a4 |= v10;
    v12 = a4[1];
    if (v12 <= v11)
    {
      v12 = v11;
    }

    a4[1] = v12;
  }

  return result;
}

uint64_t HoverResponder.__ivar_destroyer()
{
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(*(v0 + 216), *(v0 + 224));

  outlined destroy of CoordinateSpace(v0 + 304);
}

double HoverResponder.__deallocating_deinit()
{
  v0 = DefaultLayoutViewResponder.deinit();
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v1, v2);

  outlined destroy of CoordinateSpace(v0 + 304);

  swift_deallocClassInstance();
  return result;
}

uint64_t *assignWithCopy for HoverResponderChild(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 + 1;
  *a1 = *a2;
  v5 = a1 + 1;

  if (a1 != a2)
  {
    outlined destroy of HoverResponderChild.CoordinateSpaceStorage(a1 + 1);
    if (*(a2 + 49))
    {
      v6 = *v4;
      v7 = *(v4 + 1);
      *(a1 + 34) = *(v4 + 26);
      *v5 = v6;
      *(a1 + 3) = v7;
    }

    else if (*(a2 + 48))
    {
      v8 = *v4;
      v9 = *(v4 + 1);
      *(a1 + 33) = *(v4 + 25);
      *v5 = v8;
      *(a1 + 3) = v9;
      *(a1 + 49) = 0;
    }

    else
    {
      v10 = a2[4];
      a1[4] = v10;
      a1[5] = a2[5];
      (**(v10 - 8))(a1 + 1, v4);
      *(a1 + 24) = 0;
    }
  }

  *(a1 + 13) = *(a2 + 13);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 15) = *(a2 + 15);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  return a1;
}

__n128 __swift_memcpy76_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t *assignWithTake for HoverResponderChild(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  if (a1 != a2)
  {
    outlined destroy of HoverResponderChild.CoordinateSpaceStorage(a1 + 1);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 34) = *(a2 + 34);
  }

  *(a1 + 52) = *(a2 + 52);
  *(a1 + 68) = *(a2 + 68);
  return a1;
}

uint64_t getEnumTagSinglePayload for HoverResponderChild(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 76))
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

uint64_t storeEnumTagSinglePayload for HoverResponderChild(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 76) = 1;
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

    *(result + 76) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *destroy for HoverResponderChild.CoordinateSpaceStorage(void *a1)
{
  v1 = *(a1 + 41);
  if (v1 >= 2)
  {
    v1 = *a1 + 2;
  }

  if (v1 != 1)
  {
    v2 = *(a1 + 40);
    if (v2 >= 2)
    {
      v2 = *a1 + 2;
    }

    if (!v2)
    {
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  return a1;
}

__n128 initializeWithCopy for HoverResponderChild.CoordinateSpaceStorage(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 41);
  if (v2 >= 2)
  {
    v2 = *a2 + 2;
  }

  if (v2 == 1)
  {
    *a1 = *a2;
    *(a1 + 41) = 1;
  }

  else
  {
    v3 = *(a2 + 40);
    if (v3 >= 2)
    {
      v3 = *a2 + 2;
    }

    if (v3 == 1)
    {
      *a1 = *a2;
      *(a1 + 40) = 1;
      *(a1 + 41) = 0;
    }

    else if (v3)
    {
      v7 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v7;
      result = *(a2 + 25);
      *(a1 + 25) = result;
      *(a1 + 41) = 0;
    }

    else
    {
      v4 = *(a2 + 24);
      *(a1 + 24) = v4;
      (**(v4 - 8))();
      *(a1 + 40) = 0;
      *(a1 + 41) = 0;
    }
  }

  return result;
}

uint64_t assignWithCopy for HoverResponderChild.CoordinateSpaceStorage(uint64_t result, __int128 *a2)
{
  if (result != a2)
  {
    v2 = *(result + 41);
    if (v2 >= 2)
    {
      v2 = *result + 2;
    }

    if (v2 != 1)
    {
      v3 = *(result + 40);
      if (v3 >= 2)
      {
        v3 = *result + 2;
      }

      if (!v3)
      {
        v4 = result;
        v5 = a2;
        __swift_destroy_boxed_opaque_existential_1(result);
        a2 = v5;
        result = v4;
      }
    }

    v6 = *(a2 + 41);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      *result = *a2;
      v7 = 1;
    }

    else
    {
      v8 = *(a2 + 40);
      if (v8 >= 2)
      {
        v8 = *a2 + 2;
      }

      if (v8 == 1)
      {
        v7 = 0;
        *result = *a2;
        *(result + 40) = 1;
      }

      else if (v8)
      {
        v7 = 0;
        v11 = *a2;
        v12 = a2[1];
        *(result + 25) = *(a2 + 25);
        *result = v11;
        *(result + 16) = v12;
      }

      else
      {
        v9 = *(a2 + 3);
        *(result + 24) = v9;
        *(result + 32) = *(a2 + 4);
        v10 = result;
        (**(v9 - 8))();
        result = v10;
        v7 = 0;
        *(v10 + 40) = 0;
      }
    }

    *(result + 41) = v7;
  }

  return result;
}

uint64_t assignWithTake for HoverResponderChild.CoordinateSpaceStorage(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(result + 41);
    if (v2 >= 2)
    {
      v2 = *result + 2;
    }

    if (v2 != 1)
    {
      v3 = *(result + 40);
      if (v3 >= 2)
      {
        v3 = *result + 2;
      }

      if (!v3)
      {
        v4 = result;
        v5 = a2;
        __swift_destroy_boxed_opaque_existential_1(result);
        a2 = v5;
        result = v4;
      }
    }

    v6 = *(a2 + 41);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      *result = *a2;
      LOBYTE(v7) = 1;
    }

    else
    {
      v7 = *(a2 + 40);
      if (v7 >= 2)
      {
        v7 = *a2 + 2;
      }

      if (v7 == 1)
      {
        LOBYTE(v7) = 0;
        *result = *a2;
        *(result + 40) = 1;
      }

      else if (v7)
      {
        LOBYTE(v7) = 0;
        v9 = *(a2 + 16);
        *result = *a2;
        *(result + 16) = v9;
        *(result + 25) = *(a2 + 25);
      }

      else
      {
        v8 = *(a2 + 16);
        *result = *a2;
        *(result + 16) = v8;
        *(result + 32) = *(a2 + 32);
        *(result + 40) = 0;
      }
    }

    *(result + 41) = v7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HoverResponderChild.CoordinateSpaceStorage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HoverResponderChild.CoordinateSpaceStorage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for HoverResponderChild.CoordinateSpaceStorage(uint64_t a1)
{
  result = *(a1 + 41);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for HoverResponderChild.CoordinateSpaceStorage(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 41) = a2;
  return result;
}

void type metadata accessor for ContentResponderHelper<TrivialContentResponder>()
{
  if (!lazy cache variable for type metadata for ContentResponderHelper<TrivialContentResponder>)
  {
    v0 = type metadata accessor for ContentResponderHelper();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ContentResponderHelper<TrivialContentResponder>);
    }
  }
}

uint64_t _s7SwiftUI14HoverResponderC11updatePhaseyyAA0cF0OFyycfU_TA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);
  if (*(v0 + 32))
  {
    return v1(v2 ^ 1);
  }

  else
  {
    return (v1)(*(v0 + 40), *(v0 + 48), v2);
  }
}

unint64_t lazy protocol witness table accessor for type _HoverRegionModifier.HoverBehavior and conformance _HoverRegionModifier.HoverBehavior()
{
  result = lazy protocol witness table cache variable for type _HoverRegionModifier.HoverBehavior and conformance _HoverRegionModifier.HoverBehavior;
  if (!lazy protocol witness table cache variable for type _HoverRegionModifier.HoverBehavior and conformance _HoverRegionModifier.HoverBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _HoverRegionModifier.HoverBehavior, &type metadata for _HoverRegionModifier.HoverBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _HoverRegionModifier.HoverBehavior and conformance _HoverRegionModifier.HoverBehavior);
  }

  return result;
}

uint64_t View.accessibilityRoleDescription(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3 & 1;
  v7[3] = a4;
  return View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E69800A0], v7, 1, a5, MEMORY[0x1E69800A0], a6, MEMORY[0x1E6980098]);
}

{
  if (a2)
  {
    v7 = a6;

    v8 = Text.init(_:tableName:bundle:comment:)();
    a6 = v7;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14 & 1;
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v15 = 0;
    v13 = 0;
  }

  v17[0] = v9;
  v17[1] = v11;
  v17[2] = v15;
  v17[3] = v13;
  View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E69800A0], v17, 1, a5, MEMORY[0x1E69800A0], a6, MEMORY[0x1E6980098]);
  return outlined consume of Text?(v9, v11, v15, v13);
}

uint64_t View.accessibilityRoleDescription(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11 & 1;
  v15[0] = v8;
  v15[1] = v9;
  v15[2] = v11 & 1;
  v15[3] = v13;
  View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E69800A0], v15, 1, a5, MEMORY[0x1E69800A0], a6, MEMORY[0x1E6980098]);
  outlined consume of Text.Storage(v8, v10, v12);
}

{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  return View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E69800A0], v7, 1, a5, MEMORY[0x1E69800A0], a6, MEMORY[0x1E6980098]);
}

uint64_t View.accessibilityRoleDescription<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13 & 1;
  v17[0] = v10;
  v17[1] = v11;
  v17[2] = v13 & 1;
  v17[3] = v15;
  View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E69800A0], v17, 1, a2, MEMORY[0x1E69800A0], a4, MEMORY[0x1E6980098]);
  outlined consume of Text.Storage(v10, v12, v14);
}

{
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in View.accessibilityRoleDescription<A>(_:), v13, MEMORY[0x1E69E73E0], MEMORY[0x1E6981148], v7, &v14);
  v8 = v14;
  v9 = v15;
  v10 = v16;
  v11 = v17;
  v18[0] = v14;
  v18[1] = v15;
  v18[2] = v16;
  v18[3] = v17;
  View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E69800A0], v18, 1, a2, MEMORY[0x1E69800A0], a4, MEMORY[0x1E6980098]);
  return outlined consume of Text?(v8, v9, v10, v11);
}

uint64_t ModifiedContent<>.accessibilityRoleDescription(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3 & 1;
  v7[3] = a4;
  return ModifiedContent<>.update<A>(_:replacing:isEnabled:)(MEMORY[0x1E69800A0], v7, 1, a5, MEMORY[0x1E69800A0], MEMORY[0x1E6980098], a6);
}

uint64_t closure #1 in View.accessibilityRoleDescription<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = Text.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t ModifiedContent<>.accessibilityRoleDescription(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  return ModifiedContent<>.update<A>(_:replacing:isEnabled:)(MEMORY[0x1E69800A0], v7, 1, a5, MEMORY[0x1E69800A0], MEMORY[0x1E6980098], a6);
}

double closure #1 in ModifiedContent<>.accessibilityTextLayoutProperties(_:)(uint64_t a1, __int128 *a2)
{
  v4 = a2[7];
  v24 = a2[6];
  v25 = v4;
  v26 = a2[8];
  v27 = *(a2 + 144);
  v5 = a2[3];
  v20 = a2[2];
  v21 = v5;
  v6 = a2[5];
  v22 = a2[4];
  v23 = v6;
  v7 = a2[1];
  v18 = *a2;
  v19 = v7;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v8 = *(a1 + 240);
  v28[6] = *(a1 + 224);
  v28[7] = v8;
  v28[8] = *(a1 + 256);
  v29 = *(a1 + 272);
  v9 = *(a1 + 176);
  v28[2] = *(a1 + 160);
  v28[3] = v9;
  v10 = *(a1 + 208);
  v28[4] = *(a1 + 192);
  v28[5] = v10;
  v11 = *(a1 + 144);
  v28[0] = *(a1 + 128);
  v28[1] = v11;
  outlined init with copy of AccessibilityTextLayoutProperties(a2, v17);
  outlined destroy of AccessibilityTextLayoutProperties?(v28);
  v12 = v25;
  *(a1 + 224) = v24;
  *(a1 + 240) = v12;
  *(a1 + 256) = v26;
  *(a1 + 272) = v27;
  v13 = v21;
  *(a1 + 160) = v20;
  *(a1 + 176) = v13;
  v14 = v23;
  *(a1 + 192) = v22;
  *(a1 + 208) = v14;
  result = *&v18;
  v16 = v19;
  *(a1 + 128) = v18;
  *(a1 + 144) = v16;
  return result;
}

uint64_t View.accessibility(roleDescription:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3 & 1;
  v7[3] = a4;
  return View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E69800A0], v7, 1, a5, MEMORY[0x1E69800A0], a6, MEMORY[0x1E6980098]);
}

uint64_t ModifiedContent<>.accessibility(roleDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3 & 1;
  v7[3] = a4;
  return ModifiedContent<>.update<A>(_:replacing:isEnabled:)(MEMORY[0x1E69800A0], v7, 1, a5, MEMORY[0x1E69800A0], MEMORY[0x1E6980098], a6);
}

uint64_t outlined destroy of AccessibilityTextLayoutProperties?(uint64_t a1)
{
  type metadata accessor for AccessibilityTextLayoutProperties?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for AccessibilityTextLayoutProperties?()
{
  if (!lazy cache variable for type metadata for AccessibilityTextLayoutProperties?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?);
    }
  }
}

double List.init(selection:content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v29 = a5;
  v30 = a4;
  v31 = a3;
  v26 = a1;
  v27 = a2;
  type metadata accessor for SelectionManagerBox(255, a6, a8, a4);
  v15 = type metadata accessor for Binding();
  v28 = type metadata accessor for Optional();
  v16 = *(v28 - 8);
  v17 = MEMORY[0x1EEE9AC00](v28);
  v19 = &v26 - v18;
  (*(*(v15 - 8) + 56))(a9, 1, 1, v15, v17);
  v37 = a6;
  v38 = a7;
  v39 = a8;
  v40 = a10;
  v20 = type metadata accessor for List(0, &v37);
  *(a9 + *(v20 + 56)) = 0;
  v21 = a9 + *(v20 + 60);
  *v21 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  v37 = a1;
  v22 = v27;
  v38 = v27;
  v39 = v31;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = a10;
  type metadata accessor for Set();
  type metadata accessor for Binding();
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in List.init(selection:content:), v32, MEMORY[0x1E69E73E0], v15, v23, v19);
  v24 = (*(v16 + 40))(a9, v19, v28);
  v30(v24);
  return outlined consume of Binding<[A1]>?<A, B, C><A1>(v26, v22);
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier>)
  {
    type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4_4>, MEMORY[0x1E697E508], MEMORY[0x1E697E500], MEMORY[0x1E697EC20]);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier>)
  {
    type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4_4> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4_4> and conformance _SemanticFeature<A>, MEMORY[0x1E697EC40]);
    v5[1] = lazy protocol witness table accessor for type RefreshScopeModifier and conformance RefreshScopeModifier();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4_4> and conformance _SemanticFeature<A>(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4_4>, MEMORY[0x1E697E508], MEMORY[0x1E697E500], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    v9[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t closure #1 in List.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, uint64_t a6@<X8>)
{
  v67 = a4;
  v63 = a2;
  v69 = a1;
  v70 = a6;
  v74 = a3;
  v75 = a5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v68 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v10 = &v46 - v9;
  v74 = a3;
  v75 = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = lazy protocol witness table accessor for type ListContainerContext and conformance ListContainerContext();
  v74 = OpaqueTypeMetadata2;
  v75 = &type metadata for ListContainerContext;
  v47 = OpaqueTypeMetadata2;
  v76 = OpaqueTypeConformance2;
  v77 = v12;
  v49 = OpaqueTypeConformance2;
  v13 = v12;
  v48 = v12;
  v62 = swift_getOpaqueTypeMetadata2();
  v66 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v57 = &v46 - v14;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier>(255);
  v15 = type metadata accessor for ModifiedContent();
  v65 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v46 - v16;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier>(255);
  v61 = v17;
  v56 = v15;
  v18 = type metadata accessor for ModifiedContent();
  v64 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v46 - v19;
  v74 = OpaqueTypeMetadata2;
  v75 = &type metadata for ListContainerContext;
  v76 = OpaqueTypeConformance2;
  v77 = v13;
  v20 = swift_getOpaqueTypeConformance2();
  v54 = v20;
  refreshed = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v73[0] = v20;
  v73[1] = refreshed;
  v22 = MEMORY[0x1E697E858];
  v59 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v15, v73);
  v50 = WitnessTable;
  v24 = lazy protocol witness table accessor for type StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>, lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier);
  v72[0] = WitnessTable;
  v72[1] = v24;
  v51 = swift_getWitnessTable(v22, v18, v72);
  v74 = v18;
  v75 = v51;
  v52 = MEMORY[0x1E6981320];
  v25 = swift_getOpaqueTypeMetadata2();
  v53 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v46 - v26;
  v28 = type metadata accessor for ModifiedContent();
  v55 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v46 - v32;
  v74 = v63;
  v75 = a3;
  v76 = v67;
  v77 = a5;
  type metadata accessor for List(0, &v74);
  View.configuredForLazyContainerContent()();
  v34 = v57;
  v35 = v47;
  View.containerContext<A>(_:)();
  (*(v68 + 8))(v10, v35);
  type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4_4>, MEMORY[0x1E697E508], MEMORY[0x1E697E500], MEMORY[0x1E697EC20]);
  v37 = v36;
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4_4> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4_4> and conformance _SemanticFeature<A>, MEMORY[0x1E697EC30]);
  v38 = v60;
  v39 = v62;
  View.refreshScope<A>(if:)(v37, v62, v37);
  (*(v66 + 8))(v34, v39);
  LOBYTE(v74) = 2;
  v40 = v58;
  v41 = v56;
  MEMORY[0x18D00A570](&v74, v56, v61, v50);
  (*(v65 + 8))(v38, v41);
  v42 = v51;
  View.resetScrollInputs()();
  (*(v64 + 8))(v40, v18);
  v74 = v18;
  v75 = v42;
  v43 = swift_getOpaqueTypeConformance2();
  View.resetContentMargin(placements:)(&outlined read-only object #0 of List.placementsToReset.getter, v25, v43);
  (*(v53 + 8))(v27, v25);
  v71[0] = v43;
  v71[1] = &protocol witness table for ResetContentMarginModifier;
  swift_getWitnessTable(v59, v28, v71);
  static ViewBuilder.buildExpression<A>(_:)();
  v44 = *(v55 + 8);
  v44(v30, v28);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v44)(v33, v28);
}

uint64_t closure #2 in List.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v70 = a2;
  v71 = a1;
  v72 = a7;
  v73 = a3;
  v74 = a5;
  type metadata accessor for SelectionManagerBox(255, a3, a5, a4);
  v69 = type metadata accessor for Binding();
  v66 = type metadata accessor for Optional();
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v67 = &OpaqueTypeMetadata2 - v11;
  type metadata accessor for ResolvedList(255, a3, a5, v12);
  type metadata accessor for StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier>(255);
  v13 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier>();
  v14 = type metadata accessor for ModifiedContent();
  type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(255, &lazy cache variable for type metadata for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>, &type metadata for AutomaticTextFieldLabelDisplayMode, &protocol witness table for AutomaticTextFieldLabelDisplayMode, type metadata accessor for TextFieldLabelDisplayModeModifier);
  v15 = type metadata accessor for ModifiedContent();
  v16 = type metadata accessor for ModifiedContent();
  HasLazyStackBehaviorInScrollableAxis = lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v89[0] = &protocol witness table for ResolvedList<A>;
  v89[1] = HasLazyStackBehaviorInScrollableAxis;
  v18 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v13, v89);
  v20 = lazy protocol witness table accessor for type StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier>, lazy protocol witness table accessor for type ListPresentationPredicate and conformance ListPresentationPredicate, lazy protocol witness table accessor for type ListPresentationSizingModifier and conformance ListPresentationSizingModifier);
  v88[0] = WitnessTable;
  v88[1] = v20;
  v87[0] = swift_getWitnessTable(v18, v14, v88);
  v87[1] = &protocol witness table for TextFieldLabelDisplayModeModifier<A>;
  v86[0] = swift_getWitnessTable(v18, v15, v87);
  v86[1] = &protocol witness table for Fix_53164375;
  v21 = swift_getWitnessTable(v18, v16, v86);
  *&v77 = v16;
  *(&v77 + 1) = v21;
  v64 = MEMORY[0x1E69813B8];
  v65 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v77 = a4;
  *(&v77 + 1) = a6;
  v22 = swift_getOpaqueTypeMetadata2();
  *&v77 = a4;
  *(&v77 + 1) = a6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = lazy protocol witness table accessor for type ListContainerContext and conformance ListContainerContext();
  *&v77 = v22;
  *(&v77 + 1) = &type metadata for ListContainerContext;
  *&v78 = OpaqueTypeConformance2;
  *(&v78 + 1) = v24;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier>(255);
  v25 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier>(255);
  v26 = type metadata accessor for ModifiedContent();
  *&v77 = v22;
  *(&v77 + 1) = &type metadata for ListContainerContext;
  *&v78 = OpaqueTypeConformance2;
  *(&v78 + 1) = v24;
  v27 = swift_getOpaqueTypeConformance2();
  refreshed = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v85[0] = v27;
  v85[1] = refreshed;
  v29 = swift_getWitnessTable(v18, v25, v85);
  v30 = lazy protocol witness table accessor for type StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>, lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier);
  v84[0] = v29;
  v84[1] = v30;
  v31 = swift_getWitnessTable(v18, v26, v84);
  *&v77 = v26;
  *(&v77 + 1) = v31;
  swift_getOpaqueTypeMetadata2();
  v32 = type metadata accessor for ModifiedContent();
  v33 = lazy protocol witness table accessor for type ListStyleContent and conformance ListStyleContent();
  *&v77 = v26;
  *(&v77 + 1) = v31;
  v83[0] = swift_getOpaqueTypeConformance2();
  v83[1] = &protocol witness table for ResetContentMarginModifier;
  v34 = swift_getWitnessTable(v18, v32, v83);
  *&v77 = &type metadata for ListStyleContent;
  *(&v77 + 1) = v32;
  *&v78 = v33;
  *(&v78 + 1) = v34;
  type metadata accessor for StaticSourceWriter(255, &v77);
  v35 = type metadata accessor for ModifiedContent();
  type metadata accessor for NavigableListModifier(255, v73, v74, v36);
  v37 = type metadata accessor for ModifiedContent();
  *&v77 = v16;
  *(&v77 + 1) = v65;
  v82[0] = swift_getOpaqueTypeConformance2();
  v82[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v81[0] = swift_getWitnessTable(v18, v35, v82);
  v81[1] = &protocol witness table for NavigableListModifier<A>;
  v38 = swift_getWitnessTable(v18, v37, v81);
  v65 = v37;
  *&v77 = v37;
  *(&v77 + 1) = v38;
  OpaqueTypeMetadata2 = v38;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ViewInputFlagModifier<ProvidesContextMenuInteraction>(255);
  v39 = v66;
  v64 = type metadata accessor for ModifiedContent();
  v40 = type metadata accessor for ModifiedContent();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &OpaqueTypeMetadata2 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = &OpaqueTypeMetadata2 - v46;
  v48 = v67;
  v49 = v68;
  (*(v68 + 16))(v67, v70, v39, v45);
  v50 = *(v69 - 8);
  v51 = v69;
  if ((*(v50 + 48))(v48, 1) == 1)
  {
    (*(v49 + 8))(v48, v39);
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    v77 = 0u;
  }

  else
  {
    v53 = v73;
    v52 = v74;
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
    v55 = type metadata accessor for ToAnyListSelection(0, v53, v52, v54);
    swift_getWitnessTable(protocol conformance descriptor for ToAnyListSelection<A>, v55);
    Binding.projecting<A>(_:)();
    (*(v50 + 8))(v48, v51);
  }

  v76[2] = v65;
  v76[3] = OpaqueTypeMetadata2;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = _s7SwiftUI19NavigationStateHostCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type ViewInputFlagModifier<ProvidesContextMenuInteraction> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<ProvidesContextMenuInteraction>, MEMORY[0x1E697FD30]);
  v76[0] = v56;
  v76[1] = v57;
  v58 = MEMORY[0x1E697E858];
  v59 = v64;
  v60 = swift_getWitnessTable(MEMORY[0x1E697E858], v64, v76);
  View.optionalSelectionContainer<A>(_:)(&v77, v59, &type metadata for AnyListSelection, v60, &protocol witness table for AnyListSelection, v43);
  outlined destroy of Binding<AnyListSelection>?(&v77);
  v75[0] = v60;
  v75[1] = &protocol witness table for PrimitiveSelectionContainerModifier;
  swift_getWitnessTable(v58, v40, v75);
  static ViewBuilder.buildExpression<A>(_:)();
  v61 = *(v41 + 8);
  v61(v43, v40);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v61)(v47, v40);
}

void List.init<A, B>(_:selection:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t List.init<A, B>(_:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _UNKNOWN **a10, uint64_t a11, uint64_t a12, _UNKNOWN **a13, uint64_t a14)
{
  v14 = *a2;
  v29 = a8;
  v30 = a10;
  v31 = a11;
  v32 = a12;
  v33 = a13;
  v34 = a14;
  v35 = a1;
  v36 = a2;
  v37 = a6;
  v38 = a7;
  v15 = *(*(v14 + *MEMORY[0x1E69E77B0] + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = a10;
  v41 = &type metadata for OutlineSubgroupChildren;
  v42 = a13;
  v43 = &protocol witness table for OutlineSubgroupChildren;
  v17 = type metadata accessor for DisclosureGroup(255, &v40);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = v15;
  v41 = AssociatedTypeWitness;
  v42 = a10;
  v43 = a10;
  v44 = v17;
  v45 = a12;
  v46 = AssociatedConformanceWitness;
  v19 = type metadata accessor for OutlineGroup(0, &v40);
  v39[0] = a13;
  v39[1] = a13;
  v39[2] = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroup<A, B>, v17);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> OutlineGroup<A, B, C, D, E>, v19, v39);
  List.init(selection:content:)(a3, a4, a5, partial apply for closure #1 in List.init<A, B>(_:children:selection:rowContent:), v28, a8, v19, a11, a9, WitnessTable);

  return (*(*(v15 - 1) + 1))(a1, v15);
}

uint64_t partial apply for closure #1 in List.init<A, B>(_:children:selection:rowContent:)@<X0>(uint64_t a1@<X8>)
{
  return partial apply for closure #1 in List.init<A, B>(_:children:selection:rowContent:)(&unk_1EFFB7578, partial apply for closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:), a1);
}

{
  return partial apply for closure #1 in List.init<A, B>(_:children:selection:rowContent:)(&unk_1EFFB7500, partial apply for closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:), a1);
}

void List.init<A, B>(_:children:selection:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  List.init<A, B, C>(_:id:selection:rowContent:)(a1, a2, a3, a4, a5);
}

void List.init<A, B, C>(_:id:selection:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  List.init<A, B, C>(_:id:selection:rowContent:)(a1, a2, a3, a4, a5);
}

{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t List.init<A, B, C>(_:id:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, _UNKNOWN **a11, uint64_t a12, uint64_t a13, uint64_t a14, _UNKNOWN **a15)
{
  v15 = *a2;
  v16 = *a3;
  v30 = a10;
  v31 = a11;
  v32 = a12;
  v33 = a13;
  v34 = a14;
  v35 = a15;
  v36 = a1;
  v37 = a2;
  v38 = a3;
  v39 = a7;
  v40 = a8;
  v17 = *MEMORY[0x1E69E77B0] + 8;
  v18 = *(*(v16 + v17) + 16);
  v19 = *(v15 + v17);
  v42 = a11;
  v43 = &type metadata for OutlineSubgroupChildren;
  v44 = a15;
  v45 = &protocol witness table for OutlineSubgroupChildren;
  v20 = type metadata accessor for DisclosureGroup(255, &v42);
  v42 = v18;
  v43 = v19;
  v44 = a11;
  v45 = a11;
  v46 = v20;
  v47 = a13;
  v48 = a14;
  v21 = type metadata accessor for OutlineGroup(0, &v42);
  v41[0] = a15;
  v41[1] = a15;
  v41[2] = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroup<A, B>, v20);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> OutlineGroup<A, B, C, D, E>, v21, v41);
  List.init(selection:content:)(a4, a5, a6, partial apply for closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:), v29, a10, v21, a12, a9, WitnessTable);

  return (*(*(v18 - 1) + 1))(a1, v18);
}

uint64_t partial apply for closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)@<X0>(uint64_t a1@<X8>)
{
  return partial apply for closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)(&unk_1EFFB7550, partial apply for closure #1 in closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:), a1);
}

{
  return partial apply for closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)(&unk_1EFFB74D8, partial apply for closure #1 in closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:), a1);
}

{
  return partial apply for closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)(&unk_1EFFB7370, partial apply for closure #1 in closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:), a1);
}

{
  return partial apply for closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)(&unk_1EFFB7320, partial apply for closure #1 in closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:), a1);
}

void List.init<A, B, C>(_:id:children:selection:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

double List.init<A>(_:selection:rowContent:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v23 = a8;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a1;
  v28 = a2;
  v29 = a6;
  v30 = a7;
  v16 = MEMORY[0x1E69E6530];
  type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  v31[1] = v17;
  v31[2] = v16;
  v32 = type metadata accessor for HStack();
  v33 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v34 = MEMORY[0x1E69E6540];
  v18 = type metadata accessor for ForEach();
  v31[0] = swift_getWitnessTable(MEMORY[0x1E69817F8], v32);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69819D0], v18, v31);
  List.init(selection:content:)(a3, a4, a5, partial apply for closure #1 in List.init<A>(_:selection:rowContent:), v22, a8, v18, a11, a9, WitnessTable);

  return result;
}

double partial apply for closure #1 in List.init<A>(_:selection:rowContent:)()
{
  return partial apply for closure #1 in List.init<A>(_:selection:rowContent:)(&unk_1EFFB7528, partial apply for closure #1 in closure #1 in List.init<A>(_:selection:rowContent:));
}

{
  return partial apply for closure #1 in List.init<A>(_:selection:rowContent:)(&unk_1EFFB7460, partial apply for closure #1 in closure #1 in List.init<A>(_:selection:rowContent:));
}

void List.init<A>(_:selection:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t List.init<A, B>(_:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _UNKNOWN **a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, _UNKNOWN **a11, uint64_t a12)
{
  v37 = a8;
  v34 = a5;
  v33 = a4;
  v41 = a3;
  v39 = a1;
  v42 = a9;
  v31 = a10;
  v18 = *a2;
  v36 = a2;
  v32 = v18;
  v35 = a6;
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  v40 = type metadata accessor for Optional();
  v19 = *(v40 - 8);
  v20 = MEMORY[0x1EEE9AC00](v40);
  v38 = &v31 - v21;
  (*(v19 + 16))(v20);
  v44 = a6;
  v45 = a7;
  v22 = v31;
  v46 = a8;
  v47 = v31;
  v48 = a11;
  v49 = a12;
  v50 = a1;
  v51 = a2;
  v52 = v33;
  v53 = a5;
  v23 = *(*(v32 + *MEMORY[0x1E69E77B0] + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = a7;
  v56 = &type metadata for OutlineSubgroupChildren;
  v57 = a11;
  v58 = &protocol witness table for OutlineSubgroupChildren;
  v25 = type metadata accessor for DisclosureGroup(255, &v55);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v55 = v23;
  v56 = AssociatedTypeWitness;
  v57 = a7;
  v58 = a7;
  v59 = v25;
  v60 = v22;
  v61 = AssociatedConformanceWitness;
  v27 = type metadata accessor for OutlineGroup(0, &v55);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroup<A, B>, v25);
  v54[0] = a11;
  v54[1] = a11;
  v54[2] = WitnessTable;
  v29 = swift_getWitnessTable(protocol conformance descriptor for <> OutlineGroup<A, B, C, D, E>, v27, v54);
  List.init(selection:content:)(v38, partial apply for closure #1 in List.init<A, B>(_:children:selection:rowContent:), v43, v35, v27, v37, v29, v42);

  (*(v19 + 8))(v41, v40);
  return (*(*(v23 - 1) + 1))(v39, v23);
}

uint64_t closure #1 in List.init<A, B>(_:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _UNKNOWN **a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _UNKNOWN **a10, void *a11, uint64_t a12, uint64_t a13)
{
  v48 = a5;
  v49 = a7;
  v44 = a1;
  v45 = a4;
  v52 = a9;
  v50 = a3;
  v51 = a13;
  v46 = a12;
  v47 = a2;
  v15 = *(*(*a2 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v16 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v38 - v17;
  v38 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = AssociatedTypeWitness;
  v54 = a6;
  v55 = &type metadata for OutlineSubgroupChildren;
  v56 = a10;
  v57 = &protocol witness table for OutlineSubgroupChildren;
  v19 = type metadata accessor for DisclosureGroup(255, &v54);
  v43 = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v54 = v15;
  v55 = AssociatedTypeWitness;
  v56 = a6;
  v57 = a6;
  v21 = a6;
  v58 = v19;
  v59 = a8;
  v60 = AssociatedConformanceWitness;
  v22 = type metadata accessor for OutlineGroup(0, &v54);
  v40 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v39 = &v38 - v27;
  v28 = v42;
  (*(v16 + 16))(v42, v44, v15, v26);
  v29 = swift_allocObject();
  v30 = v49;
  v29[2] = v48;
  v29[3] = v15;
  v29[4] = v21;
  v29[5] = v30;
  v29[6] = a8;
  v29[7] = a10;
  v31 = v38;
  v32 = v50;
  v29[8] = v38;
  v29[9] = v32;
  v29[10] = v45;
  v33 = v47;

  OutlineGroup<>.init<A>(_:children:content:)(v28, v33, v51, v29, v41, v21, a8, a10, v24, v31);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroup<A, B>, v43);
  v53[0] = a10;
  v53[1] = a10;
  v53[2] = WitnessTable;
  swift_getWitnessTable(protocol conformance descriptor for <> OutlineGroup<A, B, C, D, E>, v22, v53);
  v35 = v39;
  static ViewBuilder.buildExpression<A>(_:)();
  v36 = *(v40 + 8);
  v36(v24, v22);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v36)(v35, v22);
}

uint64_t closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  v14(v11);
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(v7 + 8);
  v15(v9, a6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v13, a6);
}

{
  v7 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  v14(v11);
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(v7 + 8);
  v15(v9, a6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v13, a6);
}

uint64_t List.init<A, B, C>(_:id:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _UNKNOWN **a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, _UNKNOWN **a13)
{
  v41 = a6;
  v38 = a5;
  v44 = a4;
  v42 = a1;
  v45 = a9;
  v36 = a12;
  v35 = a11;
  v40 = a10;
  v37 = *a2;
  v46 = a3;
  v34 = *a3;
  v39 = a7;
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  v43 = type metadata accessor for Optional();
  v19 = *(v43 - 8);
  v20 = MEMORY[0x1EEE9AC00](v43);
  v22 = &v33 - v21;
  (*(v19 + 16))(&v33 - v21, a4, v20);
  v48 = a7;
  v49 = a8;
  v23 = v35;
  v50 = a10;
  v51 = v35;
  v24 = v36;
  v52 = v36;
  v53 = a13;
  v54 = a1;
  v55 = a2;
  v56 = v46;
  v57 = v38;
  v58 = a6;
  v25 = *MEMORY[0x1E69E77B0] + 8;
  v26 = *(*(v34 + v25) + 16);
  v27 = *(v37 + v25);
  v60 = a8;
  v61 = &type metadata for OutlineSubgroupChildren;
  v62 = a13;
  v63 = &protocol witness table for OutlineSubgroupChildren;
  v28 = type metadata accessor for DisclosureGroup(255, &v60);
  v60 = v26;
  v61 = v27;
  v62 = a8;
  v63 = a8;
  v64 = v28;
  v65 = v23;
  v66 = v24;
  v29 = type metadata accessor for OutlineGroup(0, &v60);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroup<A, B>, v28);
  v59[0] = a13;
  v59[1] = a13;
  v59[2] = WitnessTable;
  v31 = swift_getWitnessTable(protocol conformance descriptor for <> OutlineGroup<A, B, C, D, E>, v29, v59);
  List.init(selection:content:)(v22, partial apply for closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:), v47, v39, v29, v40, v31, v45);

  (*(v19 + 8))(v44, v43);
  return (*(*(v26 - 1) + 1))(v42, v26);
}

uint64_t closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _UNKNOWN **a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v52 = a6;
  v53 = a8;
  v50 = a5;
  v51 = a2;
  v46 = a4;
  v47 = a1;
  v55 = a9;
  v54 = a14;
  v48 = a13;
  v42 = a12;
  v49 = a3;
  v15 = *(*(*a3 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v41 - v17;
  v41 = &v41 - v17;
  v21 = *(v19 + v20 + 8);
  v57 = v22;
  v58 = &type metadata for OutlineSubgroupChildren;
  v59 = v23;
  v60 = &protocol witness table for OutlineSubgroupChildren;
  v45 = type metadata accessor for DisclosureGroup(255, &v57);
  v57 = v15;
  v58 = v21;
  v59 = a7;
  v60 = a7;
  v61 = v45;
  v62 = a10;
  v63 = a11;
  v24 = type metadata accessor for OutlineGroup(0, &v57);
  v44 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v43 = &v41 - v29;
  (*(v16 + 16))(v18, v47, v15, v28);
  v30 = swift_allocObject();
  v31 = v53;
  v30[2] = v52;
  v30[3] = v15;
  v30[4] = v21;
  v30[5] = a7;
  v32 = a7;
  v30[6] = v31;
  v30[7] = a10;
  v33 = v42;
  v30[8] = a11;
  v30[9] = v33;
  v34 = v50;
  v35 = v51;
  v30[10] = v46;
  v30[11] = v34;

  v36 = v49;

  OutlineGroup<>.init<A>(_:id:children:content:)(v41, v35, v36, v54, v30, v32, a10, a11, v26, v33);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroup<A, B>, v45);
  v56[0] = v33;
  v56[1] = v33;
  v56[2] = WitnessTable;
  swift_getWitnessTable(protocol conformance descriptor for <> OutlineGroup<A, B, C, D, E>, v24, v56);
  v38 = v43;
  static ViewBuilder.buildExpression<A>(_:)();
  v39 = *(v44 + 8);
  v39(v26, v24);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v39)(v38, v24);
}

uint64_t partial apply for closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)(*(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 16), *(v3 + 24), *(v3 + 32), a3, *(v3 + 40), *(v3 + 48), *(v3 + 56), a1, a2);
}

{
  return closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)(*(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 16), *(v3 + 24), *(v3 + 32), a3, *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), a1, a2);
}

uint64_t closure #1 in closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  v15(v12);
  static ViewBuilder.buildExpression<A>(_:)();
  v16 = *(v8 + 8);
  v16(v10, a7);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v16)(v14, a7);
}

{
  v8 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  v15(v12);
  static ViewBuilder.buildExpression<A>(_:)();
  v16 = *(v8 + 8);
  v16(v10, a7);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v16)(v14, a7);
}

uint64_t List.init<A, B>(_:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v25 = a7;
  v26 = a1;
  v31 = a5;
  v32 = a6;
  v29 = a3;
  v30 = a4;
  v27 = a9;
  v28 = a2;
  v24 = a13;
  v16 = *(a8 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v17);
  v33 = a7;
  v34 = a8;
  v35 = a10;
  v36 = a11;
  v37 = a12;
  v38 = a13;
  v39 = a14;
  KeyPath = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  List.init<A, B, C>(_:id:selection:rowContent:)(v19, KeyPath, v28, v29, v30, v31, v32, v25, v27, a8, a10, a11, a12, AssociatedConformanceWitness, v24);
  return (*(v16 + 8))(v26, a8);
}

uint64_t List.init<A, B, C>(_:id:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = *a2;
  v27 = a8;
  v28 = a10;
  v29 = a11;
  v30 = a12;
  v31 = a13;
  v32 = a14;
  v33 = a15;
  v34 = a1;
  v35 = a2;
  v36 = a6;
  v37 = a7;
  v18 = *(v17 + *MEMORY[0x1E69E77B0] + 8);
  v38[1] = a10;
  v38[2] = v18;
  v39 = type metadata accessor for HStack();
  v40 = a13;
  v41 = a14;
  v19 = type metadata accessor for ForEach();
  v38[0] = swift_getWitnessTable(MEMORY[0x1E69817F8], v39);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69819D0], v19, v38);
  List.init(selection:content:)(a3, a4, a5, partial apply for closure #1 in List.init<A, B, C>(_:id:selection:rowContent:), v26, a8, v19, a12, a9, WitnessTable);

  return (*(*(a10 - 8) + 8))(a1, a10);
}

uint64_t partial apply for closure #1 in List.init<A, B, C>(_:id:selection:rowContent:)()
{
  return partial apply for closure #1 in List.init<A, B, C>(_:id:selection:rowContent:)(&unk_1EFFB74B0, partial apply for closure #1 in closure #1 in List.init<A, B, C>(_:id:selection:rowContent:), closure #1 in List.init<A, B, C>(_:id:selection:rowContent:));
}

{
  return partial apply for closure #1 in List.init<A, B, C>(_:id:selection:rowContent:)(&unk_1EFFB7488, partial apply for closure #1 in closure #1 in List.init<A, B, C>(_:id:selection:rowContent:), closure #1 in List.init<A, B, C>(_:id:selection:rowContent:));
}

uint64_t List.init<A, B>(_:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v37 = a8;
  v38 = a1;
  v40 = a3;
  v41 = a4;
  v42 = a2;
  v39 = a9;
  v35 = a7;
  v36 = a12;
  v31 = a11;
  v33 = a10;
  v34 = a5;
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  v16 = type metadata accessor for Optional();
  v32 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - v18;
  v20 = *(a6 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v24, a1, a6, v22);
  v43 = a5;
  v44 = a6;
  v25 = v37;
  v45 = a7;
  v46 = v37;
  v26 = v33;
  v47 = v33;
  v48 = a11;
  v49 = v36;
  KeyPath = swift_getKeyPath();
  (*(v17 + 16))(v19, v42, v16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  List.init<A, B, C>(_:id:selection:rowContent:)(v24, KeyPath, v19, v40, v41, v34, a6, v35, v39, v25, v26, AssociatedConformanceWitness, v31);
  (*(v17 + 8))(v42, v32);
  return (*(v20 + 8))(v38, a6);
}

uint64_t List.init<A, B, C>(_:id:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v33 = a8;
  v32 = a7;
  v36 = a4;
  v38 = a3;
  v39 = a9;
  v30 = a12;
  v34 = a10;
  v31 = *a2;
  v35 = a6;
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  v37 = type metadata accessor for Optional();
  v18 = *(v37 - 8);
  v19 = MEMORY[0x1EEE9AC00](v37);
  v21 = &v30 - v20;
  (*(v18 + 16))(&v30 - v20, a3, v19);
  v22 = v32;
  v41 = a6;
  v42 = v32;
  v43 = v33;
  v44 = a10;
  v23 = v30;
  v45 = a11;
  v46 = v30;
  v47 = a13;
  v48 = a1;
  v24 = a1;
  v49 = a2;
  v50 = v36;
  v51 = a5;
  v25 = *(v31 + *MEMORY[0x1E69E77B0] + 8);
  v26 = type metadata accessor for HStack();
  v52[1] = v22;
  v52[2] = v25;
  v52[3] = v26;
  v52[4] = a11;
  v52[5] = v23;
  v27 = type metadata accessor for ForEach();
  v52[0] = swift_getWitnessTable(MEMORY[0x1E69817F8], v26);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69819D0], v27, v52);
  List.init(selection:content:)(v21, partial apply for closure #1 in List.init<A, B, C>(_:id:selection:rowContent:), v40, v35, v27, v34, WitnessTable, v39);

  (*(v18 + 8))(v38, v37);
  return (*(*(v22 - 8) + 8))(v24, v22);
}

uint64_t closure #1 in List.init<A, B, C>(_:id:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v43 = a8;
  v44 = a4;
  v35 = a7;
  v41 = a5;
  v42 = a3;
  v39 = a2;
  v40 = a1;
  v46 = a9;
  v45 = a14;
  v15 = *(a6 - 8);
  v36 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v17;
  v19 = *(v18 + *MEMORY[0x1E69E77B0] + 8);
  v37 = type metadata accessor for HStack();
  v47[1] = a6;
  v47[2] = v19;
  v47[3] = v37;
  v47[4] = a10;
  v47[5] = a11;
  v20 = type metadata accessor for ForEach();
  v38 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v34 - v25;
  (*(v15 + 16))(v17, v40, a6, v24);
  v27 = swift_allocObject();
  v27[2] = v41;
  v27[3] = a6;
  v28 = v35;
  v27[4] = v19;
  v27[5] = v28;
  v29 = v44;
  v27[6] = v43;
  v27[7] = a10;
  v30 = v36;
  v27[8] = a11;
  v27[9] = v30;
  v27[10] = v42;
  v27[11] = v29;

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69817F8], v37);
  ForEach<>.init(_:id:content:)();
  v47[0] = WitnessTable;
  swift_getWitnessTable(MEMORY[0x1E69819D0], v20, v47);
  static ViewBuilder.buildExpression<A>(_:)();
  v31 = *(v38 + 8);
  v31(v22, v20);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v31)(v26, v20);
}

uint64_t closure #1 in closure #1 in List.init<A, B, C>(_:id:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v29 = a8;
  v30 = a3;
  v26 = a6;
  v27 = a2;
  v28 = a1;
  v32 = a9;
  v31 = a13;
  v16 = type metadata accessor for HStack();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v25 - v21;
  v33 = a4;
  v34 = a5;
  v35 = v26;
  v36 = a7;
  v37 = v29;
  v38 = a10;
  v39 = a11;
  v40 = a12;
  v41 = v27;
  v42 = v30;
  v43 = v28;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  swift_getWitnessTable(MEMORY[0x1E69817F8], v16);
  static ViewBuilder.buildExpression<A>(_:)();
  v23 = *(v17 + 8);
  v23(v19, v16);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v23)(v22, v16);
}

uint64_t closure #1 in closure #1 in closure #1 in List.init<A, B, C>(_:id:selection:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  v16(v15, v12);
  static ViewBuilder.buildExpression<A>(_:)();
  v17 = *(v8 + 8);
  v17(v10, a7);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v17)(v14, a7);
}

uint64_t List.init<A>(_:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v29 = a4;
  v30 = a5;
  v31 = a3;
  v32 = a9;
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - v19;
  (*(v17 + 16))(&v29 - v19, a3, v16, v18);
  v34 = a6;
  v35 = a7;
  v36 = a8;
  v37 = a10;
  v38 = a1;
  v39 = a2;
  v40 = v29;
  v41 = v30;
  v21 = MEMORY[0x1E69E6530];
  type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  v23 = v22;
  v24 = type metadata accessor for HStack();
  v25 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v42[1] = v23;
  v42[2] = v21;
  v42[3] = v24;
  v42[4] = v25;
  v42[5] = MEMORY[0x1E69E6540];
  v26 = type metadata accessor for ForEach();
  v42[0] = swift_getWitnessTable(MEMORY[0x1E69817F8], v24);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69819D0], v26, v42);
  List.init(selection:content:)(v20, partial apply for closure #1 in List.init<A>(_:selection:rowContent:), v33, a6, v26, a8, WitnessTable, v32);

  return (*(v17 + 8))(v31, v16);
}

double closure #1 in List.init<A>(_:selection:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a8;
  v16[6] = a3;
  v16[7] = a4;
  v17 = type metadata accessor for HStack();

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69817F8], v17);
  ForEach<>.init(_:content:)();
  v24 = v28;
  v25 = v29;
  v26 = v30;
  v27 = v31;
  v19 = MEMORY[0x1E69E6530];
  type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  *&v32 = v20;
  *(&v32 + 1) = v19;
  *&v33 = v17;
  *(&v33 + 1) = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  *&v34 = MEMORY[0x1E69E6540];
  v21 = type metadata accessor for ForEach();
  v23 = WitnessTable;
  swift_getWitnessTable(MEMORY[0x1E69819D0], v21, &v23);
  static ViewBuilder.buildExpression<A>(_:)();

  v28 = v32;
  v29 = v33;
  v30 = v34;
  v31 = v35;
  static ViewBuilder.buildExpression<A>(_:)();

  return result;
}

uint64_t closure #1 in closure #1 in List.init<A>(_:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v25 = a6;
  v26 = a8;
  v27 = a9;
  v15 = type metadata accessor for HStack();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v24 - v20;
  v28 = a4;
  v29 = a5;
  v30 = v25;
  v31 = a7;
  v32 = a2;
  v33 = a3;
  v34 = a1;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  swift_getWitnessTable(MEMORY[0x1E69817F8], v15);
  static ViewBuilder.buildExpression<A>(_:)();
  v22 = *(v16 + 8);
  v22(v18, v15);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v22)(v21, v15);
}

uint64_t closure #1 in closure #1 in closure #1 in List.init<A>(_:selection:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v14(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(v6 + 8);
  v15(v8, a5);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v12, a5);
}

uint64_t List<>.init<A, B>(_:children:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _UNKNOWN **a5@<X4>, uint64_t a6@<X5>, _UNKNOWN **a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *(*(*a2 + *MEMORY[0x1E69E77B0] + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = a5;
  v29 = &type metadata for OutlineSubgroupChildren;
  v30 = a7;
  v31 = &protocol witness table for OutlineSubgroupChildren;
  v16 = type metadata accessor for DisclosureGroup(255, &v28);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = v14;
  v29 = AssociatedTypeWitness;
  v30 = a5;
  v31 = a5;
  v32 = v16;
  v33 = a6;
  v34 = AssociatedConformanceWitness;
  v18 = type metadata accessor for OutlineGroup(0, &v28);
  v27[0] = a7;
  v27[1] = a7;
  v27[2] = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroup<A, B>, v16);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> OutlineGroup<A, B, C, D, E>, v18, v27);
  v28 = MEMORY[0x1E69E73E0];
  v29 = v18;
  v30 = MEMORY[0x1E69E73F0];
  v31 = WitnessTable;
  v20 = type metadata accessor for List(0, &v28);
  *(a9 + v20[14]) = 0;
  v21 = a9 + v20[15];
  *v21 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 24) = 0;
  *(a9 + 16) = 0;
  closure #1 in List<>.init<A, B>(_:children:rowContent:)(a1, a2, a3, a4, a5, a6, a7, a8, a9 + v20[13]);

  return (*(*(v14 - 1) + 1))(a1, v14);
}

uint64_t closure #1 in List<>.init<A, B>(_:children:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _UNKNOWN **a5@<X4>, uint64_t a6@<X5>, _UNKNOWN **a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v37 = a8;
  v45 = a3;
  v46 = a4;
  v43 = a1;
  v44 = a2;
  v47 = a9;
  v12 = *(*(*a2 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v37 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = AssociatedTypeWitness;
  v49 = a5;
  v50 = &type metadata for OutlineSubgroupChildren;
  v51 = a7;
  v52 = &protocol witness table for OutlineSubgroupChildren;
  v16 = type metadata accessor for DisclosureGroup(255, &v49);
  v42 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v49 = v12;
  v50 = AssociatedTypeWitness;
  v18 = a5;
  v51 = a5;
  v52 = a5;
  v53 = v16;
  v54 = a6;
  v19 = a6;
  v55 = AssociatedConformanceWitness;
  v20 = type metadata accessor for OutlineGroup(0, &v49);
  v39 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v38 = &v37 - v25;
  v26 = v40;
  (*(v13 + 16))(v40, v43, v12, v24);
  v27 = swift_allocObject();
  v27[2] = v12;
  v27[3] = a5;
  v27[4] = a6;
  v27[5] = a7;
  v28 = a7;
  v29 = v37;
  v30 = v45;
  v31 = v46;
  v27[6] = v37;
  v27[7] = v30;
  v27[8] = v31;
  v32 = v44;

  OutlineGroup<>.init<A>(_:children:content:)(v26, v32, partial apply for closure #1 in closure #1 in List<>.init<A, B>(_:children:rowContent:), v27, v41, v18, v19, v28, v22, v29);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroup<A, B>, v42);
  v48[0] = v28;
  v48[1] = v28;
  v48[2] = WitnessTable;
  swift_getWitnessTable(protocol conformance descriptor for <> OutlineGroup<A, B, C, D, E>, v20, v48);
  v34 = v38;
  static ViewBuilder.buildExpression<A>(_:)();
  v35 = *(v39 + 8);
  v35(v22, v20);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v35)(v34, v20);
}

uint64_t closure #1 in closure #1 in List<>.init<A, B>(_:children:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13(v10);
  static ViewBuilder.buildExpression<A>(_:)();
  v14 = *(v6 + 8);
  v14(v8, a5);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v14)(v12, a5);
}

{
  v6 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13(v10);
  static ViewBuilder.buildExpression<A>(_:)();
  v14 = *(v6 + 8);
  v14(v8, a5);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v14)(v12, a5);
}

uint64_t List<>.init<A, B, C>(_:id:children:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _UNKNOWN **a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _UNKNOWN **a10)
{
  v16 = *MEMORY[0x1E69E77B0] + 8;
  v17 = *(*(*a3 + v16) + 16);
  v18 = *(*a2 + v16);
  v29 = a6;
  v30 = &type metadata for OutlineSubgroupChildren;
  v31 = a10;
  v32 = &protocol witness table for OutlineSubgroupChildren;
  v19 = type metadata accessor for DisclosureGroup(255, &v29);
  v29 = v17;
  v30 = v18;
  v31 = a6;
  v32 = a6;
  v33 = v19;
  v34 = a7;
  v35 = a8;
  v20 = type metadata accessor for OutlineGroup(0, &v29);
  v28[0] = a10;
  v28[1] = a10;
  v28[2] = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroup<A, B>, v19);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> OutlineGroup<A, B, C, D, E>, v20, v28);
  v29 = MEMORY[0x1E69E73E0];
  v30 = v20;
  v31 = MEMORY[0x1E69E73F0];
  v32 = WitnessTable;
  v22 = type metadata accessor for List(0, &v29);
  *(a9 + v22[14]) = 0;
  v23 = a9 + v22[15];
  *v23 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 24) = 0;
  *(a9 + 16) = 0;
  closure #1 in List<>.init<A, B, C>(_:id:children:rowContent:)(a1, a2, a3, a4, a5, a6, a7, a8, a9 + v22[13], a10);

  return (*(*(v17 - 1) + 1))(a1, v17);
}

uint64_t closure #1 in List<>.init<A, B, C>(_:id:children:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _UNKNOWN **a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v44 = a1;
  v45 = a5;
  v47 = a2;
  v48 = a9;
  v40 = a10;
  v41 = a4;
  v46 = a3;
  v13 = *(*(*a3 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v38 - v15;
  v39 = &v38 - v15;
  v19 = *(v17 + v18 + 8);
  v50 = v20;
  v51 = &type metadata for OutlineSubgroupChildren;
  v52 = v21;
  v53 = &protocol witness table for OutlineSubgroupChildren;
  v43 = type metadata accessor for DisclosureGroup(255, &v50);
  v50 = v13;
  v51 = v19;
  v52 = a6;
  v53 = a6;
  v54 = v43;
  v55 = a7;
  v38 = a7;
  v56 = a8;
  v22 = type metadata accessor for OutlineGroup(0, &v50);
  v42 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v38 - v27;
  (*(v14 + 16))(v16, v44, v13, v26);
  v29 = swift_allocObject();
  v29[2] = v13;
  v29[3] = v19;
  v29[4] = a6;
  v29[5] = a7;
  v30 = a8;
  v29[6] = a8;
  v32 = v40;
  v31 = v41;
  v29[7] = v40;
  v29[8] = v31;
  v29[9] = v45;
  v33 = v47;

  v34 = v46;

  OutlineGroup<>.init<A>(_:id:children:content:)(v39, v33, v34, partial apply for closure #1 in closure #1 in List<>.init<A, B, C>(_:id:children:rowContent:), v29, a6, v38, v30, v24, v32);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroup<A, B>, v43);
  v49[0] = v32;
  v49[1] = v32;
  v49[2] = WitnessTable;
  swift_getWitnessTable(protocol conformance descriptor for <> OutlineGroup<A, B, C, D, E>, v22, v49);
  static ViewBuilder.buildExpression<A>(_:)();
  v36 = *(v42 + 8);
  v36(v24, v22);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v36)(v28, v22);
}

uint64_t List<>.init<A, B>(_:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v23 = a2;
  v24 = a3;
  v21 = a1;
  v22 = a9;
  v14 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v15);
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  KeyPath = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  List<>.init<A, B, C>(_:id:rowContent:)(v17, KeyPath, v23, v24, a4, a5, a6, AssociatedConformanceWitness, v22, a7);
  return (*(v14 + 8))(v21, a4);
}

uint64_t List<>.init<A, B, C>(_:id:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v26 = a5;
  v27 = v17;
  v28 = type metadata accessor for HStack();
  v29 = a7;
  v30 = a8;
  v18 = type metadata accessor for ForEach();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69817F8], v28);
  v19 = swift_getWitnessTable(MEMORY[0x1E69819D0], v18, &WitnessTable);
  v26 = MEMORY[0x1E69E73E0];
  v27 = v18;
  v28 = MEMORY[0x1E69E73F0];
  v29 = v19;
  v20 = type metadata accessor for List(0, &v26);
  *(a9 + v20[14]) = 0;
  v21 = a9 + v20[15];
  *v21 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 24) = 0;
  *(a9 + 16) = 0;
  closure #1 in List<>.init<A, B, C>(_:id:rowContent:)(a1, a2, a3, a4, a5, a6, a7, a8, a9 + v20[13], a10);

  return (*(*(a5 - 8) + 8))(a1, a5);
}

uint64_t closure #1 in List<>.init<A, B, C>(_:id:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v32 = a6;
  v37 = a3;
  v38 = a4;
  v34 = a1;
  v35 = a2;
  v39 = a9;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[1] = v15;
  v17 = *(v16 + *MEMORY[0x1E69E77B0] + 8);
  v33 = type metadata accessor for HStack();
  v40[1] = a5;
  v40[2] = v17;
  v40[3] = v33;
  v40[4] = a7;
  v40[5] = a8;
  v18 = a8;
  v19 = type metadata accessor for ForEach();
  v36 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v31 - v24;
  (*(v13 + 16))(v15, v34, a5, v23);
  v26 = swift_allocObject();
  v26[2] = a5;
  v26[3] = v17;
  v26[4] = v32;
  v26[5] = a7;
  v26[6] = v18;
  v26[7] = a10;
  v27 = v38;
  v26[8] = v37;
  v26[9] = v27;

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69817F8], v33);
  ForEach<>.init(_:id:content:)();
  v40[0] = WitnessTable;
  swift_getWitnessTable(MEMORY[0x1E69819D0], v19, v40);
  static ViewBuilder.buildExpression<A>(_:)();
  v28 = *(v36 + 8);
  v28(v21, v19);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v28)(v25, v19);
}

uint64_t closure #1 in closure #1 in List<>.init<A, B, C>(_:id:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v25 = a3;
  v26 = a8;
  v24 = a7;
  v27 = a9;
  v15 = type metadata accessor for HStack();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v24 - v20;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = v24;
  v32 = v26;
  v33 = a10;
  v34 = a2;
  v35 = v25;
  v36 = a1;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  swift_getWitnessTable(MEMORY[0x1E69817F8], v15);
  static ViewBuilder.buildExpression<A>(_:)();
  v22 = *(v16 + 8);
  v22(v18, v15);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v22)(v21, v15);
}

uint64_t closure #1 in closure #1 in closure #1 in List<>.init<A, B, C>(_:id:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v15(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  v16 = *(v7 + 8);
  v16(v9, a6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v16)(v13, a6);
}

double List<>.init<A>(_:rowContent:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = MEMORY[0x1E69E6530];
  type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  v25 = v15;
  v26 = v14;
  v27 = type metadata accessor for HStack();
  v28 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v29 = MEMORY[0x1E69E6540];
  v16 = type metadata accessor for ForEach();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69817F8], v27);
  v17 = swift_getWitnessTable(MEMORY[0x1E69819D0], v16, &WitnessTable);
  v25 = MEMORY[0x1E69E73E0];
  v26 = v16;
  v27 = MEMORY[0x1E69E73F0];
  v28 = v17;
  v18 = type metadata accessor for List(0, &v25);
  *(&v30 + *(v18 + 56)) = 0;
  v19 = &v30 + *(v18 + 60);
  *v19 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v19 + 1) = 0;
  v19[16] = 0;
  v30 = 0uLL;
  BYTE8(v31) = 0;
  *&v31 = 0;
  closure #1 in List<>.init<A>(_:rowContent:)(a1, a2, a3, a4, a5, a6);

  v20 = v35;
  *(a7 + 64) = v34;
  *(a7 + 80) = v20;
  *(a7 + 96) = v36;
  *(a7 + 112) = v37;
  v21 = v31;
  *a7 = v30;
  *(a7 + 16) = v21;
  result = *&v32;
  v23 = v33;
  *(a7 + 32) = v32;
  *(a7 + 48) = v23;
  return result;
}

double closure #1 in List<>.init<A>(_:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a3;
  v10[5] = a4;
  v11 = type metadata accessor for HStack();

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69817F8], v11);
  ForEach<>.init(_:content:)();
  v18 = v22;
  v19 = v23;
  v20 = v24;
  v21 = v25;
  v13 = MEMORY[0x1E69E6530];
  type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  *&v26 = v14;
  *(&v26 + 1) = v13;
  *&v27 = v11;
  *(&v27 + 1) = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  *&v28 = MEMORY[0x1E69E6540];
  v15 = type metadata accessor for ForEach();
  v17 = WitnessTable;
  swift_getWitnessTable(MEMORY[0x1E69819D0], v15, &v17);
  static ViewBuilder.buildExpression<A>(_:)();

  v22 = v26;
  v23 = v27;
  v24 = v28;
  v25 = v29;
  static ViewBuilder.buildExpression<A>(_:)();

  return result;
}

uint64_t closure #1 in closure #1 in List<>.init<A>(_:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for HStack();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19[-v15];
  v20 = a4;
  v21 = a5;
  v22 = a2;
  v23 = a3;
  v24 = a1;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  swift_getWitnessTable(MEMORY[0x1E69817F8], v10);
  static ViewBuilder.buildExpression<A>(_:)();
  v17 = *(v11 + 8);
  v17(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v17)(v16, v10);
}

uint64_t closure #1 in closure #1 in closure #1 in List<>.init<A>(_:rowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v13(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)();
  v14 = *(v5 + 8);
  v14(v7, a4);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v14)(v11, a4);
}

uint64_t List.init<A, B>(_:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _UNKNOWN **a10, uint64_t a11, uint64_t a12, uint64_t a13, _UNKNOWN **a14, uint64_t a15)
{
  v30 = a8;
  v31 = a10;
  v32 = a11;
  v33 = a12;
  v34 = a13;
  v35 = a14;
  v36 = a15;
  v37 = a1;
  v38 = a2;
  v39 = a6;
  v40 = a7;
  v15 = type metadata accessor for Binding();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = a10;
  v43 = &type metadata for OutlineSubgroupChildren;
  v44 = a14;
  v45 = &protocol witness table for OutlineSubgroupChildren;
  v17 = type metadata accessor for DisclosureGroup(255, &v42);
  v49[0] = a12;
  v49[1] = a13;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981950], v15, v49);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = v15;
  v43 = AssociatedTypeWitness;
  v44 = a10;
  v45 = a10;
  v46 = v17;
  v47 = WitnessTable;
  v48 = AssociatedConformanceWitness;
  v20 = type metadata accessor for OutlineGroup(0, &v42);
  v41[0] = a14;
  v41[1] = a14;
  v41[2] = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroup<A, B>, v17);
  v21 = swift_getWitnessTable(protocol conformance descriptor for <> OutlineGroup<A, B, C, D, E>, v20, v41);
  List.init(selection:content:)(a3, a4, a5, partial apply for closure #1 in List.init<A, B>(_:children:selection:rowContent:), v29, a8, v20, a11, a9, v21);

  return (*(*(v15 - 8) + 8))(a1, v15);
}

uint64_t partial apply for closure #1 in List.init<A, B>(_:children:selection:rowContent:)()
{
  return partial apply for closure #1 in List.init<A, B, C>(_:id:selection:rowContent:)(&unk_1EFFB7398, partial apply for closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:), closure #1 in List.init<A, B>(_:children:selection:rowContent:));
}

{
  return partial apply for closure #1 in List.init<A, B, C>(_:id:selection:rowContent:)(&unk_1EFFB7348, partial apply for closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:), closure #1 in List.init<A, B>(_:children:selection:rowContent:));
}

uint64_t List.init<A, B, C>(_:id:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, _UNKNOWN **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _UNKNOWN **a16)
{
  v16 = *a2;
  v30 = a10;
  v31 = a11;
  v32 = a12;
  v33 = a13;
  v34 = a14;
  v35 = a15;
  v36 = a16;
  v37 = a1;
  v38 = a2;
  v39 = a3;
  v40 = a7;
  v41 = a8;
  v17 = type metadata accessor for Binding();
  v18 = *(v16 + *MEMORY[0x1E69E77B0] + 8);
  v43 = a11;
  v44 = &type metadata for OutlineSubgroupChildren;
  v45 = a16;
  v46 = &protocol witness table for OutlineSubgroupChildren;
  v19 = type metadata accessor for DisclosureGroup(255, &v43);
  v50[0] = a13;
  v50[1] = a14;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981950], v17, v50);
  v43 = v17;
  v44 = v18;
  v45 = a11;
  v46 = a11;
  v47 = v19;
  v48 = WitnessTable;
  v49 = a15;
  v21 = type metadata accessor for OutlineGroup(0, &v43);
  v42[0] = a16;
  v42[1] = a16;
  v42[2] = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroup<A, B>, v19);
  v22 = swift_getWitnessTable(protocol conformance descriptor for <> OutlineGroup<A, B, C, D, E>, v21, v42);
  List.init(selection:content:)(a4, a5, a6, partial apply for closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:), v29, a10, v21, a12, a9, v22);

  return (*(*(v17 - 8) + 8))(a1, v17);
}

uint64_t List.init<A, B>(_:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _UNKNOWN **a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, _UNKNOWN **a12, uint64_t a13)
{
  v41 = a8;
  v42 = a5;
  v36 = a4;
  v45 = a3;
  v38 = a1;
  v46 = a9;
  v34 = a11;
  v19 = *a2;
  v39 = a2;
  v35 = v19;
  v40 = a6;
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  v44 = type metadata accessor for Optional();
  v37 = *(v44 - 8);
  v20 = MEMORY[0x1EEE9AC00](v44);
  v43 = &v33 - v21;
  (*(v22 + 16))(v20);
  v48 = a6;
  v49 = a7;
  v50 = a8;
  v51 = a10;
  v23 = v34;
  v52 = v34;
  v53 = a12;
  v54 = a13;
  v55 = a1;
  v56 = a2;
  v57 = v36;
  v58 = a5;
  v24 = type metadata accessor for Binding();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60 = a7;
  v61 = &type metadata for OutlineSubgroupChildren;
  v62 = a12;
  v63 = &protocol witness table for OutlineSubgroupChildren;
  v26 = type metadata accessor for DisclosureGroup(255, &v60);
  v67[0] = a10;
  v67[1] = v23;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981950], v24, v67);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = v24;
  v61 = AssociatedTypeWitness;
  v62 = a7;
  v63 = a7;
  v64 = v26;
  v65 = WitnessTable;
  v66 = AssociatedConformanceWitness;
  v29 = type metadata accessor for OutlineGroup(0, &v60);
  v30 = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroup<A, B>, v26);
  v59[0] = a12;
  v59[1] = a12;
  v59[2] = v30;
  v31 = swift_getWitnessTable(protocol conformance descriptor for <> OutlineGroup<A, B, C, D, E>, v29, v59);
  List.init(selection:content:)(v43, partial apply for closure #1 in List.init<A, B>(_:children:selection:rowContent:), v47, v40, v29, v41, v31, v46);

  (*(v37 + 8))(v45, v44);
  return (*(*(v24 - 8) + 8))(v38, v24);
}

uint64_t closure #1 in List.init<A, B>(_:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _UNKNOWN **a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, _UNKNOWN **a11, void *a12, uint64_t a13, uint64_t a14)
{
  v60 = a5;
  v61 = a7;
  v58 = a2;
  v59 = a4;
  v57 = a1;
  v64 = a9;
  v62 = a3;
  v63 = a14;
  v50 = a10;
  v52 = a11;
  v16 = *a2;
  v56 = a13;
  v55 = *(*(v16 + *MEMORY[0x1E69E6CE8] + 8) + 16);
  v17 = type metadata accessor for Binding();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v53 = &v46 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = a6;
  v67 = &type metadata for OutlineSubgroupChildren;
  v68 = a11;
  v69 = &protocol witness table for OutlineSubgroupChildren;
  v21 = type metadata accessor for DisclosureGroup(255, &v66);
  v51 = v21;
  v73[0] = a8;
  v73[1] = a10;
  v22 = a8;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981950], v17, v73);
  v49 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v66 = v17;
  v67 = AssociatedTypeWitness;
  v68 = a6;
  v69 = a6;
  v25 = a6;
  v47 = a6;
  v70 = v21;
  v71 = WitnessTable;
  v72 = AssociatedConformanceWitness;
  v26 = type metadata accessor for OutlineGroup(0, &v66);
  v54 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v48 = &v46 - v31;
  v32 = v53;
  (*(v18 + 16))(v53, v57, v17, v30);
  v33 = swift_allocObject();
  v34 = v59;
  v35 = v55;
  v33[2] = v60;
  v33[3] = v35;
  v36 = v61;
  v33[4] = v25;
  v33[5] = v36;
  v37 = v22;
  v33[6] = v22;
  v38 = v50;
  v39 = v52;
  v33[7] = v50;
  v33[8] = v39;
  v40 = v62;
  v33[9] = a12;
  v33[10] = v40;
  v33[11] = v34;
  v41 = v58;

  OutlineGroup<>.init<A, B>(_:children:content:)(v32, v41, v63, v33, v49, v47, v39, v37, v28, v38, a12);
  v42 = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroup<A, B>, v51);
  v65[0] = v39;
  v65[1] = v39;
  v65[2] = v42;
  swift_getWitnessTable(protocol conformance descriptor for <> OutlineGroup<A, B, C, D, E>, v26, v65);
  v43 = v48;
  static ViewBuilder.buildExpression<A>(_:)();
  v44 = *(v54 + 8);
  v44(v28, v26);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v44)(v43, v26);
}

uint64_t List.init<A, B, C>(_:id:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _UNKNOWN **a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _UNKNOWN **a14)
{
  v40 = a6;
  v36 = a5;
  v43 = a4;
  v41 = a1;
  v45 = a2;
  v44 = a9;
  v34 = a13;
  v33 = a12;
  v39 = a10;
  v35 = *a2;
  v32 = *a3;
  v38 = a7;
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  v42 = type metadata accessor for Optional();
  v19 = *(v42 - 8);
  v20 = MEMORY[0x1EEE9AC00](v42);
  v37 = &v32 - v21;
  (*(v19 + 16))(v20);
  v47 = a7;
  v48 = a8;
  v49 = a10;
  v50 = a11;
  v22 = v33;
  v23 = v34;
  v51 = v33;
  v52 = v34;
  v53 = a14;
  v54 = a1;
  v55 = v45;
  v56 = a3;
  v57 = v36;
  v58 = a6;
  v24 = type metadata accessor for Binding();
  v25 = *(v35 + *MEMORY[0x1E69E77B0] + 8);
  v60 = a8;
  v61 = &type metadata for OutlineSubgroupChildren;
  v62 = a14;
  v63 = &protocol witness table for OutlineSubgroupChildren;
  v26 = type metadata accessor for DisclosureGroup(255, &v60);
  v67[0] = a11;
  v67[1] = v22;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981950], v24, v67, v32);
  v60 = v24;
  v61 = v25;
  v62 = a8;
  v63 = a8;
  v64 = v26;
  v65 = WitnessTable;
  v66 = v23;
  v28 = type metadata accessor for OutlineGroup(0, &v60);
  v29 = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroup<A, B>, v26);
  v59[0] = a14;
  v59[1] = a14;
  v59[2] = v29;
  v30 = swift_getWitnessTable(protocol conformance descriptor for <> OutlineGroup<A, B, C, D, E>, v28, v59);
  List.init(selection:content:)(v37, partial apply for closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:), v46, v38, v28, v39, v30, v44);

  (*(v19 + 8))(v43, v42);
  return (*(*(v24 - 8) + 8))(v41, v24);
}

uint64_t closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _UNKNOWN **a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, _UNKNOWN **a13, uint64_t a14, uint64_t a15)
{
  v55 = a8;
  v57 = a6;
  v58 = a4;
  v59 = a5;
  v52 = a1;
  v56 = a2;
  v61 = a9;
  v60 = a15;
  v53 = a14;
  v46 = a10;
  v16 = *a2;
  v54 = a3;
  v17 = *a3;
  v48 = a13;
  v51 = *(*(v17 + *MEMORY[0x1E69E6CE8] + 8) + 16);
  v18 = type metadata accessor for Binding();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v43 - v20;
  v45 = &v43 - v20;
  v22 = *(v16 + *MEMORY[0x1E69E77B0] + 8);
  v63 = a7;
  v64 = &type metadata for OutlineSubgroupChildren;
  v65 = a13;
  v66 = &protocol witness table for OutlineSubgroupChildren;
  v23 = type metadata accessor for DisclosureGroup(255, &v63);
  v49 = v23;
  v70[0] = a10;
  v70[1] = a11;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981950], v18, v70);
  v63 = v18;
  v64 = v22;
  v65 = a7;
  v66 = a7;
  v44 = a7;
  v67 = v23;
  v68 = WitnessTable;
  v69 = a12;
  v25 = type metadata accessor for OutlineGroup(0, &v63);
  v50 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v47 = &v43 - v30;
  (*(v19 + 16))(v21, v52, v18, v29);
  v31 = swift_allocObject();
  v32 = v51;
  v31[2] = v57;
  v31[3] = v32;
  v31[4] = v22;
  v31[5] = a7;
  v33 = v56;
  v34 = v46;
  v31[6] = v55;
  v31[7] = v34;
  v31[8] = a11;
  v31[9] = a12;
  v35 = v48;
  v36 = v58;
  v37 = v59;
  v31[10] = v48;
  v31[11] = v36;
  v31[12] = v37;

  v38 = v54;

  OutlineGroup<>.init<A, B>(_:id:children:content:)(v45, v33, v38, v60, v31, v44, a12, v35, v27, v34, a11);
  v39 = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroup<A, B>, v49);
  v62[0] = v35;
  v62[1] = v35;
  v62[2] = v39;
  swift_getWitnessTable(protocol conformance descriptor for <> OutlineGroup<A, B, C, D, E>, v25, v62);
  v40 = v47;
  static ViewBuilder.buildExpression<A>(_:)();
  v41 = *(v50 + 8);
  v41(v27, v25);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v41)(v40, v25);
}

uint64_t List<>.init<A, B>(_:children:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _UNKNOWN **a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _UNKNOWN **a8@<X7>, uint64_t a9@<X8>, void *a10)
{
  v16 = type metadata accessor for Binding();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = a5;
  v34 = &type metadata for OutlineSubgroupChildren;
  v35 = a8;
  v36 = &protocol witness table for OutlineSubgroupChildren;
  v18 = type metadata accessor for DisclosureGroup(255, &v33);
  v40[0] = a6;
  v40[1] = a7;
  v19 = a7;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981950], v16, v40);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = v16;
  v34 = AssociatedTypeWitness;
  v35 = a5;
  v36 = a5;
  v37 = v18;
  v38 = WitnessTable;
  v39 = AssociatedConformanceWitness;
  v22 = type metadata accessor for OutlineGroup(0, &v33);
  v32[0] = a8;
  v32[1] = a8;
  v32[2] = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroup<A, B>, v18);
  v23 = swift_getWitnessTable(protocol conformance descriptor for <> OutlineGroup<A, B, C, D, E>, v22, v32);
  v33 = MEMORY[0x1E69E73E0];
  v34 = v22;
  v35 = MEMORY[0x1E69E73F0];
  v36 = v23;
  v24 = type metadata accessor for List(0, &v33);
  *(a9 + v24[14]) = 0;
  v25 = a9 + v24[15];
  *v25 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 24) = 0;
  *(a9 + 16) = 0;
  closure #1 in List<>.init<A, B>(_:children:rowContent:)(a1, a2, a3, a4, a5, a6, v19, a8, a9 + v24[13], a10);

  return (*(*(v16 - 8) + 8))(a1, v16);
}

uint64_t closure #1 in List<>.init<A, B>(_:children:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _UNKNOWN **a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _UNKNOWN **a8@<X7>, uint64_t a9@<X8>, void *a10)
{
  v45 = a8;
  v43 = a7;
  v40 = a6;
  v51 = a4;
  v52 = a3;
  v49 = a1;
  v50 = a2;
  v53 = a9;
  v48 = *(*(*a2 + *MEMORY[0x1E69E6CE8] + 8) + 16);
  v13 = type metadata accessor for Binding();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v39 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = a5;
  v56 = &type metadata for OutlineSubgroupChildren;
  v57 = a8;
  v58 = &protocol witness table for OutlineSubgroupChildren;
  v17 = type metadata accessor for DisclosureGroup(255, &v55);
  v44 = v17;
  v18 = v40;
  v62[0] = v40;
  v62[1] = a7;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981950], v13, v62);
  v42 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v55 = v13;
  v56 = AssociatedTypeWitness;
  v57 = a5;
  v58 = a5;
  v21 = a5;
  v39 = a5;
  v59 = v17;
  v60 = WitnessTable;
  v61 = AssociatedConformanceWitness;
  v22 = type metadata accessor for OutlineGroup(0, &v55);
  v47 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v41 = &v39 - v27;
  v28 = v46;
  (*(v14 + 16))(v46, v49, v13, v26);
  v29 = swift_allocObject();
  v29[2] = v48;
  v29[3] = v21;
  v30 = v18;
  v31 = v43;
  v29[4] = v18;
  v29[5] = v31;
  v32 = v45;
  v29[6] = v45;
  v29[7] = a10;
  v33 = v51;
  v29[8] = v52;
  v29[9] = v33;
  v34 = v50;

  OutlineGroup<>.init<A, B>(_:children:content:)(v28, v34, partial apply for closure #1 in closure #1 in List<>.init<A, B>(_:children:rowContent:), v29, v42, v39, v32, v30, v24, v31, a10);
  v35 = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroup<A, B>, v44);
  v54[0] = v32;
  v54[1] = v32;
  v54[2] = v35;
  swift_getWitnessTable(protocol conformance descriptor for <> OutlineGroup<A, B, C, D, E>, v22, v54);
  v36 = v41;
  static ViewBuilder.buildExpression<A>(_:)();
  v37 = *(v47 + 8);
  v37(v24, v22);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v37)(v36, v22);
}

uint64_t List<>.init<A, B, C>(_:id:children:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _UNKNOWN **a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, _UNKNOWN **a11)
{
  v17 = *a2;
  v18 = type metadata accessor for Binding();
  v19 = *(v17 + *MEMORY[0x1E69E77B0] + 8);
  v32 = a6;
  v33 = &type metadata for OutlineSubgroupChildren;
  v34 = a11;
  v35 = &protocol witness table for OutlineSubgroupChildren;
  v20 = type metadata accessor for DisclosureGroup(255, &v32);
  v39[0] = a7;
  v39[1] = a8;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981950], v18, v39);
  v32 = v18;
  v33 = v19;
  v34 = a6;
  v35 = a6;
  v36 = v20;
  v37 = WitnessTable;
  v38 = a10;
  v22 = type metadata accessor for OutlineGroup(0, &v32);
  v31[0] = a11;
  v31[1] = a11;
  v31[2] = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroup<A, B>, v20);
  v23 = swift_getWitnessTable(protocol conformance descriptor for <> OutlineGroup<A, B, C, D, E>, v22, v31);
  v32 = MEMORY[0x1E69E73E0];
  v33 = v22;
  v34 = MEMORY[0x1E69E73F0];
  v35 = v23;
  v24 = type metadata accessor for List(0, &v32);
  *(a9 + v24[14]) = 0;
  v25 = a9 + v24[15];
  *v25 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 24) = 0;
  *(a9 + 16) = 0;
  closure #1 in List<>.init<A, B, C>(_:id:children:rowContent:)(a1, a2, a3, a4, a5, a6, a7, a8, a9 + v24[13], a10, a11);

  return (*(*(v18 - 8) + 8))(a1, v18);
}

uint64_t closure #1 in List<>.init<A, B, C>(_:id:children:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _UNKNOWN **a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, _UNKNOWN **a11)
{
  v46 = a8;
  v54 = a5;
  v55 = a4;
  v51 = a1;
  v52 = a3;
  v53 = a2;
  v56 = a9;
  v14 = *a2;
  v15 = *a3;
  v47 = a11;
  v50 = *(*(v15 + *MEMORY[0x1E69E6CE8] + 8) + 16);
  v16 = type metadata accessor for Binding();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - v18;
  v45 = &v42 - v18;
  v20 = *(v14 + *MEMORY[0x1E69E77B0] + 8);
  v58 = a6;
  v59 = &type metadata for OutlineSubgroupChildren;
  v60 = a11;
  v61 = &protocol witness table for OutlineSubgroupChildren;
  v21 = type metadata accessor for DisclosureGroup(255, &v58);
  v48 = v21;
  v65[0] = a7;
  v65[1] = a8;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981950], v16, v65);
  v58 = v16;
  v59 = v20;
  v23 = v20;
  v60 = a6;
  v61 = a6;
  v44 = a6;
  v62 = v21;
  v63 = WitnessTable;
  v43 = a10;
  v64 = a10;
  v24 = type metadata accessor for OutlineGroup(0, &v58);
  v49 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v42 - v29;
  (*(v17 + 16))(v19, v51, v16, v28);
  v31 = swift_allocObject();
  v31[2] = v50;
  v31[3] = v23;
  v31[4] = a6;
  v31[5] = a7;
  v32 = a7;
  v33 = v46;
  v31[6] = v46;
  v31[7] = a10;
  v34 = v47;
  v36 = v54;
  v35 = v55;
  v31[8] = v47;
  v31[9] = v35;
  v31[10] = v36;
  v37 = v53;

  v38 = v52;

  OutlineGroup<>.init<A, B>(_:id:children:content:)(v45, v37, v38, partial apply for closure #1 in closure #1 in List<>.init<A, B, C>(_:id:children:rowContent:), v31, v44, v43, v34, v26, v32, v33);
  v39 = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroup<A, B>, v48);
  v57[0] = v34;
  v57[1] = v34;
  v57[2] = v39;
  swift_getWitnessTable(protocol conformance descriptor for <> OutlineGroup<A, B, C, D, E>, v24, v57);
  static ViewBuilder.buildExpression<A>(_:)();
  v40 = *(v49 + 8);
  v40(v26, v24);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v40)(v30, v24);
}

char *initializeBufferWithCopyOfBuffer for List(char *__dst, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v7 & 0xF8 | 7;
  if (*(v6 + 84))
  {
    v10 = *(v6 + 64);
  }

  else
  {
    v10 = v8 + 1;
  }

  if (v10 <= v8)
  {
    v11 = *(v6 + 64);
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + (((v7 & 0xF8) + 23) & ~v9) + 1;
  v14 = *(*(a3 + 24) - 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 64) + 7;
  v17 = (*(v14 + 80) | v7) & 0x100000;
  if ((v15 | v9) == 7 && v17 == 0 && ((((v16 + ((v13 + v15) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17 <= 0x18)
  {
    v47 = *(a3 + 24);
    v21 = *((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v21 < 0xFFFFFFFF)
    {
      v26 = a2;
      memcpy(__dst, a2, v13);
      v28 = ~v15;
      v27 = v47;
LABEL_54:
      v34 = &__dst[v15 + 17 + v12] & v28;
      v35 = (v26 + v15 + v12 + 17) & v28;
      (*(v14 + 16))(v34, v35, v27);
      v36 = ((v16 + v34) & 0xFFFFFFFFFFFFFFF8);
      v37 = (v16 + v35) & 0xFFFFFFFFFFFFFFF8;
      v38 = *v37;
      v37 += 15;
      *v36 = v38;
      v39 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
      v40 = *(v37 & 0xFFFFFFFFFFFFFFF8);
      v41 = *((v37 & 0xFFFFFFFFFFFFFFF8) + 8);
      LOBYTE(v34) = *((v37 & 0xFFFFFFFFFFFFFFF8) + 16);
      outlined copy of TransferableDropAction<A>.UserActionStorage<A>(v40, v41);
      *v39 = v40;
      *(v39 + 8) = v41;
      *(v39 + 16) = v34;
      return __dst;
    }

    v43 = v5;
    v44 = *(v6 + 84);
    *__dst = *a2;
    *((__dst + 15) & 0xFFFFFFFFFFFFFFF8) = v21;
    __src = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(__src + v12);

    if (v22 < 3)
    {
      v24 = __src;
      v29 = (__dst + 23);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = v12;
      }

      else
      {
        v23 = 4;
      }

      if (v23 > 1)
      {
        v24 = __src;
        if (v23 == 2)
        {
          v25 = *__src;
        }

        else if (v23 == 3)
        {
          v25 = *__src | (*(__src + 2) << 16);
        }

        else
        {
          v25 = *__src;
        }

        v29 = (__dst + 23);
        if (v12 >= 4)
        {
          goto LABEL_36;
        }

LABEL_32:
        v22 = (v25 | ((v22 - 3) << (8 * v12))) + 3;
        goto LABEL_37;
      }

      v24 = __src;
      v29 = (__dst + 23);
      if (v23)
      {
        v25 = *__src;
        if (v12 >= 4)
        {
LABEL_36:
          v22 = v25 + 3;
          goto LABEL_37;
        }

        goto LABEL_32;
      }
    }

LABEL_37:
    v30 = (v29 & 0xFFFFFFFFFFFFFFF8);
    if (v22 == 2)
    {
      (*(v6 + 16))(v29 & 0xFFFFFFFFFFFFFFF8, v24, v43);
      v31 = v8 + 1;
      *(v30 + v12) = 2;
      v26 = a2;
      v28 = ~v15;
      v27 = v47;
      v32 = v44;
    }

    else if (v22 == 1)
    {
      if ((*(v6 + 48))(v24, 1, v43))
      {
        memcpy(v30, __src, v10);
      }

      else
      {
        (*(v6 + 16))(v30, __src, v43);
        (*(v6 + 56))(v30, 0, 1, v43);
      }

      v26 = a2;
      *(v30 + v12) = 1;
      v28 = ~v15;
      v27 = v47;
      v32 = v44;
      v31 = v8 + 1;
    }

    else
    {
      v26 = a2;
      *v30 = *v24;
      *(v30 + v12) = 0;

      v28 = ~v15;
      v27 = v47;
      v32 = v44;
      v31 = v8 + 1;
    }

    v33 = 8;
    if (v8 > 8)
    {
      v33 = v8;
    }

    if (v31 <= v8)
    {
      v31 = v8;
    }

    if (v31 <= 8)
    {
      v31 = 8;
    }

    if (v32)
    {
      v12 = v33;
    }

    else
    {
      v12 = v31;
    }

    goto LABEL_54;
  }

  v20 = *a2;
  *__dst = *a2;
  __dst = (v20 + (((v15 | v9) + 16) & ~(v15 | v9)));

  return __dst;
}

void *initializeWithTake for List(void *__dst, void *__src, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 84);
  v10 = *(v7 + 80) & 0xF8;
  v11 = v10 | 7;
  v12 = (v10 + 23) & ~(v10 | 7);
  v13 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v13 < 0xFFFFFFFF)
  {
    if (v9)
    {
      v25 = *(v7 + 64);
    }

    else
    {
      v25 = v8 + 1;
    }

    if (v25 > v8)
    {
      v8 = v25;
    }

    if (v8 <= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v8;
    }

    memcpy(__dst, __src, v20 + v12 + 1);
    goto LABEL_42;
  }

  *__dst = *__src;
  v15 = v9 == 0;
  v16 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = v14;
  v17 = ((v16 + v11 + 8) & ~v11);
  v18 = ((v13 + v11 + 8) & ~v11);
  if (v15)
  {
    v19 = v8 + 1;
  }

  else
  {
    v19 = v8;
  }

  if (v19 > v8)
  {
    v8 = v19;
  }

  if (v8 <= 8)
  {
    v20 = 8;
  }

  else
  {
    v20 = v8;
  }

  v21 = *(v18 + v20);
  v22 = v21 - 3;
  if (v21 >= 3)
  {
    if (v20 <= 3)
    {
      v23 = v20;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *v18;
      }

      else if (v23 == 3)
      {
        v24 = *v18 | (*(v18 + 2) << 16);
      }

      else
      {
        v24 = *v18;
      }

LABEL_31:
      v26 = (v24 | (v22 << (8 * v20))) + 3;
      v21 = v24 + 3;
      if (v20 < 4)
      {
        v21 = v26;
      }

      goto LABEL_33;
    }

    if (v23)
    {
      v24 = *v18;
      goto LABEL_31;
    }
  }

LABEL_33:
  if (v21 == 2)
  {
    (*(v7 + 32))(v17, v18, v6);
    v27 = 2;
LABEL_41:
    *(v17 + v20) = v27;
    goto LABEL_42;
  }

  if (v21 == 1)
  {
    if ((*(v7 + 48))(v18, 1, v6))
    {
      memcpy(v17, v18, v19);
    }

    else
    {
      (*(v7 + 32))(v17, v18, v6);
      (*(v7 + 56))(v17, 0, 1, v6);
    }

    v27 = 1;
    goto LABEL_41;
  }

  *v17 = *v18;
  *(v17 + v20) = 0;
LABEL_42:
  v28 = *(*(a3 + 24) - 8);
  v29 = v28 + 32;
  v30 = *(v28 + 80);
  v31 = v20 + v12 + v30 + 1;
  v32 = (__dst + v31) & ~v30;
  v33 = (__src + v31) & ~v30;
  (*(v28 + 32))(v32, v33);
  v34 = *(v29 + 32) + 7;
  v35 = ((v34 + v32) & 0xFFFFFFFFFFFFFFF8);
  v36 = ((v34 + v33) & 0xFFFFFFFFFFFFFFF8);
  *v35 = *v36;
  v37 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = *(v38 + 16);
  *v37 = *v38;
  *(v37 + 16) = v39;
  return __dst;
}

uint64_t *assignWithTake for List(uint64_t *__dst, uint64_t *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80) & 0xF8;
  v10 = v9 | 7;
  v11 = ~(v9 | 7);
  v58 = (v9 + 23) & v11;
  v12 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v12 < 0xFFFFFFFFuLL)
  {
    if (v14 >= 0xFFFFFFFF)
    {
      v15 = v7 == 0;
      *__dst = *__src;
      *v12 = *v13;
      v16 = ((v12 + v10 + 8) & v11);
      v17 = ((v13 + v10 + 8) & v11);
      if (v15)
      {
        v18 = v8 + 1;
      }

      else
      {
        v18 = v8;
      }

      if (v18 <= v8)
      {
        v25 = v8;
      }

      else
      {
        v25 = v18;
      }

      if (v25 <= 8)
      {
        v20 = 8;
      }

      else
      {
        v20 = v25;
      }

      v26 = *(v17 + v20);
      v27 = v26 - 3;
      if (v26 < 3)
      {
        goto LABEL_98;
      }

      if (v20 <= 3)
      {
        v28 = v20;
      }

      else
      {
        v28 = 4;
      }

      if (v28 > 1)
      {
        if (v28 == 2)
        {
LABEL_93:
          v29 = *v17;
          goto LABEL_96;
        }

LABEL_37:
        if (v28 == 3)
        {
          v29 = *v17 | (*(v17 + 2) << 16);
        }

        else
        {
          v29 = *v17;
        }

LABEL_96:
        v41 = (v29 | (v27 << (8 * v20))) + 3;
        v26 = v29 + 3;
        if (v20 < 4)
        {
          v26 = v41;
        }

LABEL_98:
        if (v26 == 2)
        {
          (*(v6 + 32))(v16, v17, v5);
          v42 = 2;
        }

        else
        {
          if (v26 != 1)
          {
            *v16 = *v17;
            v16[v20] = 0;
LABEL_107:
            v38 = v58;
            v39 = a3;
            goto LABEL_108;
          }

          if ((*(v6 + 48))(v17, 1, v5))
          {
            memcpy(v16, v17, v18);
          }

          else
          {
            (*(v6 + 32))(v16, v17, v5);
            (*(v6 + 56))(v16, 0, 1, v5);
          }

          v42 = 1;
        }

        v16[v20] = v42;
        goto LABEL_107;
      }

LABEL_94:
      if (!v28)
      {
        goto LABEL_98;
      }

      v29 = *v17;
      goto LABEL_96;
    }

    if (v7)
    {
      v36 = *(v6 + 64);
    }

    else
    {
      v36 = v8 + 1;
    }

    if (v36 <= v8)
    {
      v36 = *(v6 + 64);
    }

    if (v36 <= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v36;
    }

    goto LABEL_75;
  }

  if (v14 >= 0xFFFFFFFF)
  {
    *__dst = *__src;

    *v12 = *v13;

    v15 = v7 == 0;
    v16 = ((v12 + v10 + 8) & v11);
    v17 = ((v13 + v10 + 8) & v11);
    if (v15)
    {
      v18 = v8 + 1;
    }

    else
    {
      v18 = v8;
    }

    if (v18 <= v8)
    {
      v19 = v8;
    }

    else
    {
      v19 = v18;
    }

    if (v19 <= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v19;
    }

    if (v16 == v17)
    {
      goto LABEL_107;
    }

    v21 = v16[v20];
    v22 = v21 - 3;
    if (v21 >= 3)
    {
      if (v20 <= 3)
      {
        v23 = v20;
      }

      else
      {
        v23 = 4;
      }

      if (v23 <= 1)
      {
        if (!v23)
        {
          goto LABEL_82;
        }

        v24 = *v16;
      }

      else if (v23 == 2)
      {
        v24 = *v16;
      }

      else if (v23 == 3)
      {
        v24 = *v16 | (v16[2] << 16);
      }

      else
      {
        v24 = *v16;
      }

      v40 = (v24 | (v22 << (8 * v20))) + 3;
      v21 = v24 + 3;
      if (v20 < 4)
      {
        v21 = v40;
      }
    }

LABEL_82:
    if (v21 != 2)
    {
      if (v21 != 1)
      {

LABEL_87:
        v26 = *(v17 + v20);
        v27 = v26 - 3;
        if (v26 < 3)
        {
          goto LABEL_98;
        }

        if (v20 <= 3)
        {
          v28 = v20;
        }

        else
        {
          v28 = 4;
        }

        if (v28 > 1)
        {
          if (v28 == 2)
          {
            goto LABEL_93;
          }

          goto LABEL_37;
        }

        goto LABEL_94;
      }

      if ((*(v6 + 48))(v16, 1, v5))
      {
        goto LABEL_87;
      }
    }

    (*(v6 + 8))(v16, v5);
    goto LABEL_87;
  }

  v15 = v7 == 0;
  v30 = ((v12 + v10 + 8) & v11);
  if (v15)
  {
    v31 = v8 + 1;
  }

  else
  {
    v31 = v8;
  }

  if (v31 <= v8)
  {
    v31 = v8;
  }

  if (v31 <= 8)
  {
    v20 = 8;
  }

  else
  {
    v20 = v31;
  }

  v32 = *(v30 + v20);
  v33 = v32 - 3;
  if (v32 >= 3)
  {
    if (v20 <= 3)
    {
      v34 = v20;
    }

    else
    {
      v34 = 4;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v35 = *v30;
      }

      else if (v34 == 3)
      {
        v35 = *((v12 + v10 + 8) & v11) | (*(((v12 + v10 + 8) & v11) + 2) << 16);
      }

      else
      {
        v35 = *v30;
      }

LABEL_68:
      v37 = (v35 | (v33 << (8 * v20))) + 3;
      v32 = v35 + 3;
      if (v20 < 4)
      {
        v32 = v37;
      }

      goto LABEL_70;
    }

    if (v34)
    {
      v35 = *v30;
      goto LABEL_68;
    }
  }

LABEL_70:
  if (v32 == 2)
  {
    goto LABEL_73;
  }

  if (v32 != 1)
  {

    goto LABEL_75;
  }

  if (!(*(v6 + 48))(v30, 1, v5))
  {
LABEL_73:
    (*(v6 + 8))(v30, v5);
  }

LABEL_75:
  v38 = v58;
  memcpy(__dst, __src, v20 + v58 + 1);
  v39 = a3;
LABEL_108:
  v43 = *(*(v39 + 24) - 8);
  v44 = v43 + 40;
  v45 = *(v43 + 80);
  v46 = v20 + v38 + v45 + 1;
  v47 = (__dst + v46) & ~v45;
  v48 = (__src + v46) & ~v45;
  (*(v43 + 40))(v47, v48);
  v49 = *(v44 + 24) + 7;
  v50 = v49 + v47;
  v51 = ((v49 + v48) & 0xFFFFFFFFFFFFFFF8);
  v50 &= 0xFFFFFFFFFFFFFFF8;
  *v50 = *v51;
  v52 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
  v54 = *(v53 + 16);
  v55 = *v52;
  v56 = *(v52 + 8);
  *v52 = *v53;
  *(v52 + 16) = v54;
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v55, v56);
  return __dst;
}

uint64_t partial apply for closure #1 in closure #1 in List<>.init<A, B, C>(_:id:children:rowContent:)(uint64_t a1)
{
  return closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:)(a1, v1[9], v1[10], v1[2], v1[3], v1[4]);
}

{
  return partial apply for closure #1 in closure #1 in List<>.init<A, B>(_:children:rowContent:)(a1, closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:));
}

uint64_t partial apply for closure #1 in closure #1 in List<>.init<A, B>(_:children:rowContent:)(uint64_t a1)
{
  return partial apply for closure #1 in closure #1 in List<>.init<A, B>(_:children:rowContent:)(a1, closure #1 in closure #1 in List<>.init<A, B>(_:children:rowContent:));
}

{
  return closure #1 in closure #1 in List<>.init<A, B>(_:children:rowContent:)(a1, v1[7], v1[8], v1[2], v1[3]);
}

uint64_t partial apply for closure #1 in closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)(uint64_t a1)
{
  return closure #1 in closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:)(a1, v1[11], v1[12], v1[2], v1[3], v1[4], v1[5]);
}

{
  return partial apply for closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:)(a1, closure #1 in closure #1 in List.init<A, B, C>(_:id:children:selection:rowContent:));
}

uint64_t partial apply for closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:)(uint64_t a1)
{
  return partial apply for closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:)(a1, closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:));
}

{
  return closure #1 in closure #1 in List.init<A, B>(_:children:selection:rowContent:)(a1, v1[9], v1[10], v1[2], v1[3], v1[4]);
}

uint64_t partial apply for closure #1 in closure #1 in List.init<A>(_:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return partial apply for closure #1 in closure #1 in List.init<A>(_:selection:rowContent:)(a1, partial apply for closure #1 in closure #1 in closure #1 in List.init<A>(_:selection:rowContent:), a2);
}

{
  return partial apply for closure #1 in closure #1 in List.init<A>(_:selection:rowContent:)(a1, partial apply for closure #1 in closure #1 in closure #1 in List.init<A>(_:selection:rowContent:), a2);
}

uint64_t partial apply for closure #1 in closure #1 in List.init<A, B, C>(_:id:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return partial apply for closure #1 in closure #1 in List.init<A, B, C>(_:id:selection:rowContent:)(a1, partial apply for closure #1 in closure #1 in closure #1 in List.init<A, B, C>(_:id:selection:rowContent:), a2);
}

{
  return partial apply for closure #1 in closure #1 in List.init<A, B, C>(_:id:selection:rowContent:)(a1, partial apply for closure #1 in closure #1 in closure #1 in List.init<A, B, C>(_:id:selection:rowContent:), a2);
}

double View.listRowSeparator(_:edges:)(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 17) = a2;
  View.transformTrait<A>(_:transform:)();

  return result;
}

_BYTE *partial apply for closure #1 in View.listRowSeparator(_:edges:)(_BYTE *result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  if ((v3 & 1) == 0)
  {
    if ((*(v1 + 17) & 2) == 0)
    {
      return result;
    }

LABEL_5:
    result[16] = v2;
    return result;
  }

  *result = v2;
  if ((v3 & 2) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

double View.listRowSeparatorTint(_:edges:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  View.transformTrait<A>(_:transform:)();

  return result;
}

void closure #1 in View.listRowSeparatorTint(_:edges:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    *(a1 + 8) = a2;
  }

  if ((a3 & 2) != 0)
  {

    *(a1 + 24) = a2;
  }
}

uint64_t assignWithCopy for ListSeparatorConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for ListSeparatorConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for ListSeparatorConfiguration(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ListSeparatorConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t specialized static ListSeparatorConfiguration.Appearance.== infix(_:_:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  if (a2)
  {
    if (a4)
    {
      if (a2 == a4)
      {
        return 1;
      }

      v4 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

      if (v4)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t specialized static ListSeparatorConfiguration.== infix(_:_:)(char a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  if (a1 != a5)
  {
    return 0;
  }

  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    if (a2 != a6)
    {
      v8 = a8;
      v9 = a4;
      v10 = a7;
      v11 = a3;

      v12 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

      a3 = v11;
      a7 = v10;
      a4 = v9;
      a8 = v8;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a3 == a7)
  {
    if (a4)
    {
      if (a8)
      {
        if (a4 == a8)
        {
          return 1;
        }

        v14 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

        if (v14)
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }
  }

  return 0;
}

void EditMenuBridge.presentedMenu.didset(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu);
  v10 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 8);
  v11 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 16);
  v12 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 24);
  v13 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 32);
  v14 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 40);
  v15 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 48);
  if (v7 == 1)
  {
    if (v14 == 1)
    {
      outlined copy of ActiveEditMenu?(v9, *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 8), v11, v12, v13, 1, v15);
      outlined copy of ActiveEditMenu?(v2, v3, v5, v4, v6, 1, v8);

      outlined consume of ActiveEditMenu?(v2, v3, v5, v4, v6, 1, v8);
      return;
    }

    v18 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 32);
    v20 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 16);
    v21 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu);
    v19 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 24);
    v16 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 48);
    outlined copy of ActiveEditMenu?(v9, v10, v11, v12, v13, v14, v15);
    outlined copy of ActiveEditMenu?(v2, v3, v5, v4, v6, 1, v8);
  }

  else
  {
    v18 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 32);
    v20 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 16);
    v21 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu);
    v19 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 24);
    if (v14 != 1)
    {
      v17 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 48);
      outlined copy of ActiveEditMenu?(v9, v10, v11, v12, v13, v14, v15);
      outlined copy of ActiveEditMenu?(v2, v3, v5, v4, v6, v7, v8);
      outlined copy of ActiveEditMenu?(v2, v3, v5, v4, v6, v7, v8);
      outlined consume of ActiveEditMenu?(v21, v10, v20, v19, v18, v14, v17);

      outlined consume of ActiveEditMenu?(v2, v3, v5, v4, v6, v7, v8);
      if (v2 == v21)
      {
        return;
      }

      goto LABEL_10;
    }

    v16 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 48);
    outlined copy of ActiveEditMenu?(v9, v10, v11, v12, v13, 1, v15);
    outlined copy of ActiveEditMenu?(v2, v3, v5, v4, v6, v7, v8);
    outlined copy of ActiveEditMenu?(v2, v3, v5, v4, v6, v7, v8);
  }

  outlined consume of ActiveEditMenu?(v2, v3, v5, v4, v6, v7, v8);
  outlined consume of ActiveEditMenu?(v21, v10, v20, v19, v18, v14, v16);
LABEL_10:
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void EditMenuBridge.presentMenu(_:)(unsigned int *a1)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = *(a1 + 3);
  v71 = *(a1 + 32);
  v6 = *(a1 + 5);
  v7 = v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8 = *(v7 + 8);
  ObjectType = swift_getObjectType();
  v10 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v8 + 16) + 8));
  swift_unknownObjectRelease();
  if (!v10)
  {
    return;
  }

  v69 = v2;
  v11 = OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_interaction;
  v12 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_interaction);
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_interaction);
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E69DC9E0]) initWithDelegate_];
    [v10 swiftui:v13 addManagedInteraction:?];
    v14 = *(v1 + v11);
    *(v1 + v11) = v13;

    v12 = 0;
  }

  v68 = v3;
  v15 = v12;
  AGGraphClearUpdate();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_32;
  }

  v16 = *(v7 + 8);
  v17 = swift_getObjectType();
  (*(*(v16 + 8) + 8))(v17);
  swift_unknownObjectRelease();
  ViewGraph.transform.getter();

  AGGraphSetUpdate();
  v77 = v73;
  v78 = v74;
  v79 = v75;
  type metadata accessor for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>(0, &lazy cache variable for type metadata for CGRect?, type metadata accessor for CGRect, MEMORY[0x1E69E6720]);
  Anchor.convert(to:)();

  if (v84)
  {

    return;
  }

  v65 = v13;
  v66 = v10;
  v18 = v5;
  v19 = v80;
  v20 = v81;
  v21 = v4;
  v22 = v6;
  v24 = v82;
  v23 = v83;
  v25 = v80;
  v26 = v81;
  v27 = v82;
  v28 = v83;
  LODWORD(v73) = v69;
  v63 = v22;
  v64 = v21;
  *(&v73 + 1) = v21;
  *&v74 = v68;
  v62 = v18;
  *(&v74 + 1) = v18;
  LOBYTE(v75) = v71;
  *(&v75 + 1) = v22;
  v29 = EditMenuBridge.attributedString(from:in:)(&v73);
  v67 = v1;
  v30 = (v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu);
  v31 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu);
  v32 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 40);
  v33 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 48);
  if (v32 != 1)
  {
    v45 = *(v30 + 1);
    v46 = *(v30 + 2);
    v70 = *(v30 + 4);
    v72 = *(v30 + 3);
    *v30 = v31;
    v30[1] = v19;
    v30[2] = v20;
    v30[3] = v24;
    v30[4] = v23;
    *(v30 + 5) = v29;
    *(v30 + 6) = v33;
    v47 = v29;
    swift_retain_n();
    outlined copy of ActiveEditMenu?(v31, v45, v46, v72, v70, v32, v33);
    outlined consume of ActiveEditMenu?(v31, v45, v46, v72, v70, v32, v33);
    *&v73 = v31;
    *(&v73 + 1) = v45;
    *&v74 = v46;
    *(&v74 + 1) = v72;
    *&v75 = v70;
    *(&v75 + 1) = v32;
    v76 = v33;
    EditMenuBridge.presentedMenu.didset(&v73);
    outlined consume of ActiveEditMenu?(v31, v45, v46, v72, v70, v32, v33);
    [v65 reloadVisibleMenu];

LABEL_25:
    v44 = v66;
    goto LABEL_26;
  }

  v60 = *(v30 + 1);
  v61 = *(v30 + 4);
  v34 = *(v30 + 1);
  *v30 = v69;
  v30[1] = v19;
  v30[2] = v20;
  v30[3] = v24;
  v30[4] = v23;
  *(v30 + 5) = v29;
  *(v30 + 6) = v64;
  v35 = v29;

  v59 = v35;
  outlined copy of ActiveEditMenu?(v31, v34, v60, *(&v60 + 1), v61, 1, v33);
  outlined consume of ActiveEditMenu?(v31, v34, v60, *(&v60 + 1), v61, 1, v33);
  *&v73 = v31;
  *(&v73 + 1) = v34;
  v74 = v60;
  *&v75 = v61;
  *(&v75 + 1) = 1;
  v76 = v33;
  EditMenuBridge.presentedMenu.didset(&v73);
  outlined consume of ActiveEditMenu?(v31, v34, v60, *(&v60 + 1), v61, 1, v33);
  if (v64)
  {
    v36 = (v67 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_lastEditMenuPresentation);
    v37 = *(v67 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_lastEditMenuPresentation);
    v38 = *(v67 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_lastEditMenuPresentation + 8);
    v39 = *(v67 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_lastEditMenuPresentation + 16);
    v40 = *(v67 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_lastEditMenuPresentation + 24);
    v41 = *(v67 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_lastEditMenuPresentation + 32);
    v42 = *(v67 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_lastEditMenuPresentation + 40);
    *v36 = v69;
    v36[1] = v64;
    v36[2] = v68;
    v36[3] = v62;
    v36[4] = v71;
    v36[5] = v63;

    outlined consume of EditMenuPresentation?(v37, v38, v39, v40, v41, v42);
    if (*(v30 + 5) != 1)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIEditMenuConfiguration, 0x1E69DC9D8);
      LODWORD(v77) = *v30;
      lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity();
      AnyHashable.init<A>(_:)();
      v85.origin.x = v25;
      v85.origin.y = v26;
      v85.size.width = v27;
      v85.size.height = v28;
      CGRectGetWidth(v85);
      v86.origin.x = v25;
      v86.origin.y = v26;
      v86.size.width = v27;
      v86.size.height = v28;
      CGRectGetHeight(v86);
      v43 = UIEditMenuConfiguration.init(identifier:sourcePoint:)();
      [v65 presentEditMenuWithConfiguration_];

      v44 = v59;
LABEL_26:

      return;
    }

    goto LABEL_33;
  }

  v87.origin.x = v25;
  v87.origin.y = v26;
  v87.size.width = v27;
  v87.size.height = v28;
  Width = CGRectGetWidth(v87);
  v88.origin.x = v25;
  v88.origin.y = v26;
  v88.size.width = v27;
  v88.size.height = v28;
  Height = CGRectGetHeight(v88);
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v50 = *(v7 + 8);
  v51 = swift_getObjectType();
  v52 = ViewGraphDelegate.uiView.getter(v51, *(*(v50 + 16) + 8));
  swift_unknownObjectRelease();
  if (!v52)
  {
    goto LABEL_24;
  }

  [v52 convertPoint:0 toView:{Width * 0.5 + v25, Height * 0.5 + v26}];
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_35:
    __break(1u);
    return;
  }

  v53 = *(v7 + 8);
  v54 = swift_getObjectType();
  v55 = (*(v53 + 24))(v54, v53);
  swift_unknownObjectRelease();
  if (!v55)
  {
    goto LABEL_23;
  }

  type metadata accessor for ViewResponder();
  if (!swift_dynamicCastClass())
  {

    return;
  }

  *&v73 = 0;
  LOBYTE(v77) = 1;
  v56 = ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)();

  if (!v56)
  {
LABEL_23:

    goto LABEL_24;
  }

  type metadata accessor for EditMenuResponder(0);
  ResponderNode.firstAncestor<A>(ofType:)();

  if (!v73)
  {
LABEL_24:

    goto LABEL_25;
  }

  v57 = EditMenuBridge.configurationFromResponder(_:)(v73);
  if (v57)
  {
    v58 = v57;
    [v65 presentEditMenuWithConfiguration_];
  }

  else
  {
  }
}

void closure #1 in EditMenuBridge.outermostResponder()(uint64_t *a2@<X1>, char *a3@<X8>)
{
  type metadata accessor for EditMenuResponder(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    *a2 = v6;

    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
}

uint64_t EditMenuBridge.configurationFromResponder(_:)(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 40) == 1)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    type metadata accessor for UIKitEditMenuConfiguration();
    lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity();
    AnyHashable.init<A>(_:)();
    v3 = UIEditMenuConfiguration.init(identifier:sourcePoint:)();
    *(v3 + OBJC_IVAR____TtC7SwiftUI26UIKitEditMenuConfiguration_responder) = v2;

    return v3;
  }

  return result;
}

uint64_t EditMenuBridge.attributedString(from:in:)(uint64_t a1)
{
  v3 = type metadata accessor for ResolvableStringResolutionContext();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 8))
  {
    return 0;
  }

  v6 = v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 8);
    v11 = *(v10 + 8);

    v11(ObjectType, v10);
    swift_unknownObjectRelease();
    GraphHost.environment.getter();

    v14[0] = v14[1];
    ResolvableStringResolutionContext.init(environment:maximumWidth:)();
    v12 = ResolvedStyledText.resolvedContent(in:)();
    outlined destroy of MenuVisitor(v5, MEMORY[0x1E6980B68]);
    if (v12)
    {
      dispatch thunk of ResolvedStyledText.drawingScale(size:)();
      v13 = NSAttributedString.scaled(by:)();

      return v13;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void closure #1 in EditMenuBridge.editMenuInteraction(_:menuFor:suggestedActions:)(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() generalPasteboard];
  type metadata accessor for PlatformItemList?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18CD69590;
  *(v4 + 32) = a2;
  type metadata accessor for NSItemProviderWriting();
  v5 = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setObjects_];
}

void EditMenuBridge.share()()
{
  v1 = (v0 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu);
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 40);
  if (v2 == 1 || v2 == 0)
  {
    return;
  }

  v4 = *v1;
  v5 = v1[3];
  v35 = v1[2];
  v36 = v1[1];
  v6 = v1[4];
  v7 = v1[6];
  v8 = v0 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  v11 = v2;
  outlined copy of ActiveEditMenu?(v4, v36, v35, v5, v6, v2, v7);
  v12 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v9 + 16) + 8));
  swift_unknownObjectRelease();
  if (!v12)
  {

    v25 = v4;
    v27 = v35;
    v26 = v36;
    v28 = v5;
    v29 = v6;
    v30 = v2;
    v31 = v7;
    goto LABEL_18;
  }

  v33 = v7;
  type metadata accessor for PlatformItemList?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18CD63400;
  *(v13 + 56) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
  *(v13 + 32) = v11;
  v14 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
  v32 = v11;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v14 initWithActivityItems:isa applicationActivities:0];

  type metadata accessor for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UIActivityType>, type metadata accessor for UIActivityType, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_18CD63400;
  v18 = *MEMORY[0x1E69CDB18];
  *(v17 + 32) = *MEMORY[0x1E69CDB18];
  type metadata accessor for UIActivityType(0);
  v19 = v18;
  v20 = Array._bridgeToObjectiveC()().super.isa;

  [v16 setExcludedActivityTypes_];

  v21 = [v16 popoverPresentationController];
  if (v21)
  {
    v22 = v21;
    [v21 setSourceView_];
    [v22 setSourceRect_];
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_22:
    __break(1u);
    return;
  }

  v23 = *(v8 + 8);
  v24 = swift_getObjectType();
  v34 = ViewGraphDelegate.uiViewController.getter(v24, *(*(v23 + 16) + 8));
  swift_unknownObjectRelease();
  if (v34)
  {
    [v34 presentViewController:v16 animated:1 completion:0];

    outlined consume of ActiveEditMenu?(v4, v36, v35, v5, v6, v2, v33);

    return;
  }

  v25 = v4;
  v26 = v36;
  v27 = v35;
  v28 = v5;
  v29 = v6;
  v30 = v2;
  v31 = v33;
LABEL_18:

  outlined consume of ActiveEditMenu?(v25, v26, v27, v28, v29, v30, v31);
}

void closure #2 in EditMenuBridge.editMenuInteraction(_:menuFor:suggestedActions:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void EditMenuBridge.lookup()()
{
  v1 = (v0 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu);
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 40);
  if (v2 == 1 || v2 == 0)
  {
    return;
  }

  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v34 = v1[6];
  v9 = (v0 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    __break(1u);
    goto LABEL_24;
  }

  v32 = v9;
  v10 = v9[1];
  ObjectType = swift_getObjectType();
  v12 = v2;
  outlined copy of ActiveEditMenu?(v4, v5, v7, v6, v8, v2, v34);
  v13 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v10 + 16) + 8));
  swift_unknownObjectRelease();
  if (!v13)
  {

    v26 = v4;
    v27 = v5;
    v28 = v7;
    v29 = v6;
    v30 = v8;
    goto LABEL_20;
  }

  v31 = v12;
  v14 = [v12 string];
  if (!v14)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = MEMORY[0x18D00C850](v15);
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E69DCE50]) initWithTerm_];

  v17 = [v16 popoverPresentationController];
  v18 = v4;
  v19 = v8;
  v20 = v6;
  v21 = v7;
  v22 = v5;
  if (v17)
  {
    v23 = v17;
    [v17 setSourceView_];
    [v23 setSourceRect_];
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_24:
    __break(1u);
    return;
  }

  v24 = v32[1];
  v25 = swift_getObjectType();
  v33 = ViewGraphDelegate.uiViewController.getter(v25, *(*(v24 + 16) + 8));
  swift_unknownObjectRelease();
  if (v33)
  {
    [v33 presentViewController:v16 animated:1 completion:0];

    outlined consume of ActiveEditMenu?(v18, v22, v21, v20, v19, v2, v34);

    return;
  }

  v26 = v18;
  v27 = v22;
  v28 = v21;
  v29 = v20;
  v30 = v19;
LABEL_20:

  outlined consume of ActiveEditMenu?(v26, v27, v28, v29, v30, v2, v34);
}

double closure #1 in EditMenuBridge.editMenuInteraction(_:willPresentMenuFor:animator:)(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_lastEditMenuPresentation + 24))
  {

    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

void closure #1 in EditMenuBridge.editMenuInteraction(_:willDismissMenuFor:animator:)(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_lastEditMenuPresentation);
  if (*(a1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_lastEditMenuPresentation + 24))
  {

    dispatch thunk of AnyLocation.set(_:transaction:)();

    v2 = v1[3];
  }

  else
  {
    v2 = 0;
  }

  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[4];
  v7 = v1[5];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  outlined consume of EditMenuPresentation?(v3, v4, v5, v2, v6, v7);
}

void @objc EditMenuBridge.editMenuInteraction(_:willPresentMenuFor:animator:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id))
{
  v9 = a3;
  v10 = a4;
  swift_unknownObjectRetain();
  v11 = a1;
  a6(v10);

  swift_unknownObjectRelease();
}

uint64_t specialized EditMenuBridge.editMenuInteraction(_:menuFor:suggestedActions:)(void *a1)
{
  v3 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = (v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu);
  v9 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 40);
  if (v9 == 1)
  {
    return v7;
  }

  v10 = v4;
  v11 = *v8;
  v12 = v8[1];
  v14 = v8[2];
  v13 = v8[3];
  v83 = v8[4];
  v84 = v13;
  v15 = v8[6];
  v16 = MEMORY[0x1E69E7CC0];
  v91 = MEMORY[0x1E69E7CC0];
  type metadata accessor for UIKitEditMenuConfiguration();
  v17 = swift_dynamicCastClass();
  v85 = v15;
  if (v17)
  {
    if (*(v17 + OBJC_IVAR____TtC7SwiftUI26UIKitEditMenuConfiguration_responder))
    {
      v18 = v12;
      v19 = a1;

      v82 = v18;
      outlined copy of ActiveEditMenu?(v11, v18, v14, v84, v83, v9, v85);
      type metadata accessor for PlatformItemList?(0, &lazy cache variable for type metadata for PlatformItemList?, &type metadata for PlatformItemList, MEMORY[0x1E69E6720]);
      static Update.ensure<A>(_:)();
      if (v90)
      {
        v20 = v90;
      }

      else
      {
        v20 = v16;
      }

      if (*(v20 + 16))
      {
        v81 = v11;
        *&v90 = v16;
        v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(v16);
        v22 = MEMORY[0x1E69E7CC8];
        v6[8] = 0;
        *(v6 + 2) = v22;
        *(v6 + 3) = v21;
        *(v6 + 4) = v16;
        *(v6 + 5) = v22;
        v6[48] = 0;
        type metadata accessor for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
        v23 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
        v24 = (*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_18CD63400;
        if (one-time initialization token for empty != -1)
        {
          swift_once();
        }

        v26 = __swift_project_value_buffer(v23, static MenuVisitor.MenuStackGroup.empty);
        outlined init with copy of MenuVisitor.MenuStackGroup(v26, v25 + v24);
        *(v6 + 7) = v25;
        v27 = *(v10 + 32);
        v28 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
        (*(*(v28 - 8) + 56))(&v6[v27], 1, 1, v28);
        *v6 = 0;
        MenuVisitor.visit(_:uniqueNames:)(v20, &v90);

        v29 = *(v6 + 4);

        outlined destroy of MenuVisitor(v6, type metadata accessor for MenuVisitor);

        v11 = v81;
        v12 = v82;
      }

      else
      {

        v29 = MEMORY[0x1E69E7CC0];
        v12 = v82;
      }

      goto LABEL_35;
    }

    goto LABEL_15;
  }

  if (!v15)
  {
LABEL_15:
    v32 = v9;
    v29 = MEMORY[0x1E69E7CC0];
LABEL_35:
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    v92.value.super.isa = 0;
    v92.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v72, v71, 0, v92, 0, 0xFFFFFFFFFFFFFFFFLL, v29, v74);
    v7 = v73;
    outlined consume of ActiveEditMenu?(v11, v12, v14, v84, v83, v9, v85);
    return v7;
  }

  v82 = v12;
  v80 = v14;
  if (v9)
  {

    v30 = v9;
    v31 = v30;
  }

  else
  {
    v33 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

    v31 = [v33 init];
    v30 = 0;
  }

  v81 = v11;
  v34 = v30;
  v35 = static Text.System.uiCopy.getter();
  v37 = v36;
  v39 = v38;
  v79 = v1;
  v40 = v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v42 = *(v40 + 8);
  v43 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
  ObjectType = swift_getObjectType();
  (*(*(v42 + 8) + 8))(ObjectType);
  swift_unknownObjectRelease();
  GraphHost.environment.getter();

  v89 = v90;
  v87 = 0;
  v88 = 0;
  MEMORY[0x18D009CB0](&v86, v45);
  Text.resolveString(in:with:idiom:)();
  outlined consume of Text.Storage(v35, v37, v39 & 1);

  *(swift_allocObject() + 16) = v31;
  v46 = v31;
  v78 = v43;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  MEMORY[0x18D00CC30]();
  if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v29 = v91;
  result = swift_unknownObjectWeakLoadStrong();
  v11 = v81;
  v12 = v82;
  if (!result)
  {
    goto LABEL_38;
  }

  v47 = *(v40 + 8);
  v48 = swift_getObjectType();
  v49 = ViewGraphDelegate.uiViewController.getter(v48, *(*(v47 + 16) + 8));
  swift_unknownObjectRelease();
  if (!v49)
  {

    v14 = v80;
    goto LABEL_35;
  }

  v77 = v46;

  v50 = static Text.System.shareEllipses.getter();
  v52 = v51;
  v54 = v53;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_39;
  }

  v76 = v40;
  v55 = *(v40 + 8);
  v56 = swift_getObjectType();
  (*(*(v55 + 8) + 8))(v56);
  swift_unknownObjectRelease();
  GraphHost.environment.getter();

  v89 = v90;
  v87 = 0;
  v88 = 0;
  MEMORY[0x18D009CB0](&v86, v57);
  Text.resolveString(in:with:idiom:)();
  outlined consume of Text.Storage(v50, v52, v54 & 1);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  MEMORY[0x18D00CC30]();
  if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v29 = v91;
  v58 = v77;
  v59 = [v77 string];
  v14 = v80;
  v11 = v81;
  if (!v59)
  {
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = MEMORY[0x18D00C850](v60);
  }

  v61 = [objc_opt_self() dictionaryHasDefinitionForTerm_];

  if (!v61)
  {

    goto LABEL_35;
  }

  v62 = static Text.System.uiLookUp.getter();
  v64 = v63;
  v66 = v65;
  v67 = v76;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v68 = *(v67 + 8);
    v69 = swift_getObjectType();
    (*(*(v68 + 8) + 8))(v69);
    swift_unknownObjectRelease();
    GraphHost.environment.getter();

    v89 = v90;
    v87 = 0;
    v88 = 0;
    MEMORY[0x18D009CB0](&v86, v70);
    Text.resolveString(in:with:idiom:)();
    outlined consume of Text.Storage(v62, v64, v66 & 1);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    MEMORY[0x18D00CC30]();
    if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v29 = v91;
    goto LABEL_35;
  }

LABEL_40:
  __break(1u);
  return result;
}

double specialized EditMenuBridge.editMenuInteraction(_:willPresentMenuFor:animator:)(void *a1)
{
  type metadata accessor for UIKitEditMenuConfiguration();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    if (!*(v3 + OBJC_IVAR____TtC7SwiftUI26UIKitEditMenuConfiguration_responder))
    {
      return result;
    }

    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = 1;
    v7 = a1;

    static Update.enqueueAction(reason:_:)();
  }

  else
  {
    *(swift_allocObject() + 16) = v1;
    v8 = v1;
    static Update.enqueueAction(reason:_:)();
  }

  return result;
}

void specialized EditMenuBridge.editMenuInteraction(_:willDismissMenuFor:animator:)(void *a1)
{
  type metadata accessor for UIKitEditMenuConfiguration();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    if (!*(v3 + OBJC_IVAR____TtC7SwiftUI26UIKitEditMenuConfiguration_responder))
    {
      goto LABEL_6;
    }

    LOBYTE(v16[0]) = 17;
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = 0;
    v6 = a1;

    static Update.enqueueAction(reason:_:)();
  }

  else
  {
    LOBYTE(v16[0]) = 17;
    *(swift_allocObject() + 16) = v1;
    v7 = v1;
    static Update.enqueueAction(reason:_:)();
  }

LABEL_6:
  v8 = &v1[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu];
  v9 = *&v1[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu];
  v10 = *&v1[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 8];
  v11 = *&v1[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 16];
  v12 = *&v1[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 24];
  v13 = *&v1[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 32];
  v14 = *&v1[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 40];
  v15 = *&v1[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 48];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(v8 + 40) = xmmword_18CD6A6D0;
  outlined copy of ActiveEditMenu?(v9, v10, v11, v12, v13, v14, v15);
  outlined consume of ActiveEditMenu?(v9, v10, v11, v12, v13, v14, v15);
  v16[0] = v9;
  v16[1] = v10;
  v16[2] = v11;
  v16[3] = v12;
  v16[4] = v13;
  v16[5] = v14;
  v16[6] = v15;
  EditMenuBridge.presentedMenu.didset(v16);

  outlined consume of ActiveEditMenu?(v9, v10, v11, v12, v13, v14, v15);
}

uint64_t outlined init with copy of MenuVisitor.MenuStackGroup(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for NSItemProviderWriting()
{
  result = lazy cache variable for type metadata for NSItemProviderWriting;
  if (!lazy cache variable for type metadata for NSItemProviderWriting)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSItemProviderWriting);
  }

  return result;
}

double outlined copy of EditMenuPresentation?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t protocol witness for static Rule.initialValue.getter in conformance ToolbarItem<A, B>.MakeView@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>();
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t closure #1 in ToolbarMakeEntries.init<A, B>(placement:toolbarItem:viewList:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for ToolbarItem(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

double protocol witness for static Rule.initialValue.getter in conformance ToString<A>@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18CD633F0;
  return result;
}

double protocol witness for Rule.value.getter in conformance PreferenceTransform@<D0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  type metadata accessor for [ToolbarStorage.Entry](0, &lazy cache variable for type metadata for [ToolbarStorage.Entry], type metadata accessor for ToolbarStorage.Entry, MEMORY[0x1E69E62F8]);
  v2 = *AGGraphGetValue();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in PreferenceTransform.value.getter;
  *(v4 + 24) = v3;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet) -> ();
  a1[1] = v4;

  return result;
}

uint64_t ToolbarItem<>.init(id:placement:showsByDefault:isEmpty:defaultItemKind:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char *a6@<X5>, void (*a7)(uint64_t)@<X6>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v16 = *a6;
  v17 = type metadata accessor for ToolbarItem(0, MEMORY[0x1E69E6158], a9, a10);
  v18 = v17[15];
  *(a8 + v18) = 5;
  *a8 = a1;
  a8[1] = a2;
  v19 = outlined init with copy of ToolbarItemPlacement(a3, (a8 + 2));
  *(a8 + v17[13]) = a4;
  *(a8 + v17[14]) = a5;
  *(a8 + v18) = v16;
  a7(v19);

  return outlined destroy of ToolbarItemPlacement(a3);
}

uint64_t ToolbarItem<>.init(id:placement:showsByDefault:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  outlined init with copy of ToolbarItemPlacement(a3, v18);
  v17 = 5;
  ToolbarItem<>.init(id:placement:showsByDefault:isEmpty:defaultItemKind:content:)(a1, a2, v18, a4, 0, &v17, a5, a8, a6, a7);
  return outlined destroy of ToolbarItemPlacement(a3);
}

uint64_t *initializeBufferWithCopyOfBuffer for ToolbarItem(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = v8 | *(v4 + 80) & 0xF8;
  if (((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || (((((-8 - v5) | 7) - v8 - 41) | v8) - v9 - 3 >= 0xFFFFFFFFFFFFFFE7 ? (v11 = v10 > 7) : (v11 = 1), v11))
  {
    v17 = *a2;
    *v3 = *a2;
    v3 = (v17 + (((v10 | 7) + 16) & ~(v10 | 7)));
  }

  else
  {
    v12 = ~v8;
    (*(v4 + 16))(a1);
    v14 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*(v15 + 40) == 1)
    {
      v16 = *(v15 + 24);
      *(v14 + 24) = v16;
      *(v14 + 32) = *(v15 + 32);
      (**(v16 - 8))((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8, v15);
      *(v14 + 40) = 1;
    }

    else
    {
      v18 = *v15;
      v19 = *(v15 + 16);
      *(v14 + 25) = *(v15 + 25);
      *v14 = v18;
      *(v14 + 16) = v19;
    }

    v20 = (v14 + v8 + 41) & v12;
    v21 = (v15 + v8 + 41) & v12;
    (*(v7 + 16))(v20, v21, v6);
    v22 = (v20 + v9);
    *v22 = *(v21 + v9);
    v22[1] = *(v21 + v9 + 1);
    v22[2] = *(v21 + v9 + 2);
  }

  return v3;
}

uint64_t initializeWithTake for ToolbarItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 25);
  v11 = v9[1];
  *v8 = *v9;
  v8[1] = v11;
  *(v8 + 25) = v10;
  v12 = *(*(a3 + 24) - 8);
  v13 = v12 + 32;
  v14 = *(v12 + 80);
  v15 = (v8 + v14 + 41) & ~v14;
  v16 = (v9 + v14 + 41) & ~v14;
  (*(v12 + 32))(v15, v16);
  v17 = *(v13 + 32);
  v18 = (v17 + v15);
  v19 = (v17 + v16);
  *v18 = *v19;
  v18[1] = v19[1];
  v18[2] = v19[2];
  return a1;
}

uint64_t assignWithTake for ToolbarItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  if (v8 != v9)
  {
    outlined destroy of ToolbarItemPlacement.Role(v8);
    v10 = *(v9 + 25);
    v11 = v9[1];
    *v8 = *v9;
    v8[1] = v11;
    *(v8 + 25) = v10;
  }

  v12 = *(*(a3 + 24) - 8);
  v13 = v12 + 40;
  v14 = *(v12 + 80);
  v15 = (v8 + v14 + 41) & ~v14;
  v16 = (v9 + v14 + 41) & ~v14;
  (*(v12 + 40))(v15, v16);
  v17 = *(v13 + 24);
  v18 = (v15 + v17);
  v19 = (v16 + v17);
  *v18 = *v19;
  v18[1] = v19[1];
  v18[2] = v19[2];
  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarItem(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v4 + 64);
  v9 = *(v6 + 80);
  v10 = *(v6 + 64);
  if (v5 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v4 + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_30;
  }

  v13 = v10 + ((v9 + ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v9) + 3;
  v14 = 8 * v13;
  if (v13 != 3 && v10 + ((v9 + ((v8 + 7) & 0xFFFFFFF8) + 41) & ~v9) < 0xFFFFFFFD)
  {
    goto LABEL_10;
  }

  v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
  if (HIWORD(v16))
  {
    v15 = *(a1 + v13);
    if (v15)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v16 <= 0xFF)
    {
      if (v16 < 2)
      {
        goto LABEL_30;
      }

LABEL_10:
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_30;
      }

LABEL_17:
      v17 = (v15 - 1) << v14;
      if (v13 > 3)
      {
        v17 = 0;
      }

      if (v10 + ((v9 + ((v8 + 7) & 0xFFFFFFF8) + 41) & ~v9) == -3)
      {
        v19 = 0;
      }

      else
      {
        if (v13 <= 3)
        {
          v18 = v10 + ((v9 + ((v8 + 7) & 0xFFFFFFF8) + 41) & ~v9) + 3;
        }

        else
        {
          v18 = 4;
        }

        if (v18 > 2)
        {
          if (v18 == 3)
          {
            v19 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v19 = *a1;
          }
        }

        else if (v18 == 1)
        {
          v19 = *a1;
        }

        else
        {
          v19 = *a1;
        }
      }

      return v11 + (v19 | v17) + 1;
    }

    v15 = *(a1 + v13);
    if (*(a1 + v13))
    {
      goto LABEL_17;
    }
  }

LABEL_30:
  if (v5 == v11)
  {
    return (*(v4 + 48))();
  }

  v21 = (((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + v9 + 41) & ~v9;
  if (v7 == v11)
  {
    return (*(v6 + 48))(v21);
  }

  v22 = *(v21 + v10);
  if (v22 < 2)
  {
    return 0;
  }

  return ((v22 + 2147483646) & 0x7FFFFFFF) + 1;
}

char *storeEnumTagSinglePayload for ToolbarItem(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v6 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  v13 = v11 + ((v10 + ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v10) + 3;
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v11 + ((v10 + ((v9 + 7) & 0xFFFFFFF8) + 41) & ~v10) != -3)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_50:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
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
  if (v6 == v12)
  {
    v24 = *(v5 + 56);

    return v24();
  }

  else
  {
    result = (((&result[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + v10 + 41) & ~v10);
    if (v8 == v12)
    {
      v25 = *(v7 + 56);

      return v25(result);
    }

    else
    {
      result[v11] = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithCopy for ToolbarMakeEntries(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 72);
  v5 = *(a1 + 72);
  *(a1 + 72) = v4;
  v6 = v4;

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  return a1;
}

uint64_t assignWithTake for ToolbarMakeEntries(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarMakeEntries(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolbarMakeEntries(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined assign with take of ToolbarStorage.GroupItem.GroupSubItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double GroupedListStyle.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

void static GroupedListStyle._sectionInset(_:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = 0;
}

uint64_t static GroupedListStyle._makeView<A>(value:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2[3];
  v20 = a2[2];
  v21 = v6;
  v22 = a2[4];
  v23 = *(a2 + 20);
  v7 = a2[1];
  v18 = *a2;
  v19 = v7;
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>>(255);
  v14 = v9;
  v15 = type metadata accessor for SelectionManagerBox(255, a3, a4, v8);
  v16 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>> and conformance <> ModifiedContent<A, B>();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v15);
  v10 = type metadata accessor for InsettableGroupedListBody(0, &v14);
  v14 = &type metadata for GroupedListStyle;
  v15 = a3;
  v16 = &protocol witness table for GroupedListStyle;
  WitnessTable = a4;
  type metadata accessor for _ListValue(255, &v14);
  type metadata accessor for _GraphValue();
  LODWORD(v14) = _GraphValue.value.getter();
  v12 = type metadata accessor for GroupedListStyle.Body(0, a3, a4, v11);
  swift_getWitnessTable(protocol conformance descriptor for GroupedListStyle.Body<A>, v12);
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable(protocol conformance descriptor for InsettableGroupedListBody<A, B>, v10);
  return static View.makeDebuggableView(view:inputs:)();
}

void type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>>)
  {
    type metadata accessor for StyleContextWriter<GroupedListStyleContext>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>>);
    }
  }
}

void type metadata accessor for StyleContextWriter<GroupedListStyleContext>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StyleContextWriter<GroupedListStyleContext>)
  {
    lazy protocol witness table accessor for type GroupedListStyleContext and conformance GroupedListStyleContext();
    v1 = type metadata accessor for StyleContextWriter();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StyleContextWriter<GroupedListStyleContext>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GroupedListStyleContext and conformance GroupedListStyleContext()
{
  result = lazy protocol witness table cache variable for type GroupedListStyleContext and conformance GroupedListStyleContext;
  if (!lazy protocol witness table cache variable for type GroupedListStyleContext and conformance GroupedListStyleContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GroupedListStyleContext, &type metadata for GroupedListStyleContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GroupedListStyleContext and conformance GroupedListStyleContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupedListStyleContext and conformance GroupedListStyleContext;
  if (!lazy protocol witness table cache variable for type GroupedListStyleContext and conformance GroupedListStyleContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GroupedListStyleContext, &type metadata for GroupedListStyleContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GroupedListStyleContext and conformance GroupedListStyleContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for ListStyleContent;
    v5[1] = lazy protocol witness table accessor for type StyleContextWriter<GroupedListStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<GroupedListStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<GroupedListStyleContext>, MEMORY[0x1E697F4D0]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t static GroupedListStyle._makeViewList<A>(value:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>>(255);
  v12 = v7;
  v13 = type metadata accessor for SelectionManagerBox(255, a3, a4, v6);
  v14 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>> and conformance <> ModifiedContent<A, B>();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v13);
  v8 = type metadata accessor for InsettableGroupedListBody(0, &v12);
  v12 = &type metadata for GroupedListStyle;
  v13 = a3;
  v14 = &protocol witness table for GroupedListStyle;
  WitnessTable = a4;
  type metadata accessor for _ListValue(255, &v12);
  type metadata accessor for _GraphValue();
  LODWORD(v12) = _GraphValue.value.getter();
  v10 = type metadata accessor for GroupedListStyle.Body(0, a3, a4, v9);
  swift_getWitnessTable(protocol conformance descriptor for GroupedListStyle.Body<A>, v10);
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable(protocol conformance descriptor for InsettableGroupedListBody<A, B>, v8);
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t GroupedListStyle.Body.base.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[0] = &type metadata for GroupedListStyle;
  v8[1] = a2;
  v8[2] = &protocol witness table for GroupedListStyle;
  v8[3] = a3;
  v5 = type metadata accessor for _ListValue(0, v8);
  Value = AGGraphGetValue();
  return (*(*(v5 - 8) + 16))(a4, Value, v5);
}

uint64_t GroupedListStyle.Body.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1;
  v9 = type metadata accessor for SelectionManagerBox(255, a2, a3, a4);
  type metadata accessor for Binding();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23[-v12];
  v27[0] = &type metadata for GroupedListStyle;
  v27[1] = a2;
  v27[2] = &protocol witness table for GroupedListStyle;
  v27[3] = a3;
  v14 = type metadata accessor for _ListValue(0, v27);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v23[-v16];
  GroupedListStyle.Body.base.getter(a2, a3, &v23[-v16]);
  (*(v11 + 32))(v13, &v17[*(v15 + 60)], v10);
  GroupedListStyle.Body.insetMode.getter(a2, a3, v27);
  v24 = a2;
  v25 = a3;
  v26 = v7;
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>>(0);
  v19 = v18;
  v20 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>> and conformance <> ModifiedContent<A, B>();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v9);
  return InsettableGroupedListBody.init(selection:insetMode:content:)(v13, v27, partial apply for closure #1 in GroupedListStyle.Body.value.getter, v19, v9, v20, WitnessTable, a5);
}

uint64_t GroupedListStyle.Body.insetMode.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[0] = &type metadata for GroupedListStyle;
  v18[1] = a2;
  v18[2] = &protocol witness table for GroupedListStyle;
  v18[3] = a3;
  v7 = type metadata accessor for _ListValue(0, v18);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  GroupedListStyle.Body.base.getter(a2, a3, &v16 - v9);
  v11 = *(v10 + 1);
  v16 = *v10;
  v17 = v11;
  v12 = v10[32];
  result = (*(v8 + 8))(v10, v7);
  v15 = v16;
  v14 = v17;
  if (v12 == 1)
  {
    type metadata accessor for _SemanticFeature<Semantics_v2>();
    lazy protocol witness table accessor for type StyleContextWriter<GroupedListStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>, type metadata accessor for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697EC30]);
    result = static SemanticFeature.isEnabled.getter();
    v14 = 0uLL;
    v15 = (result & 1) == 0;
  }

  *a4 = v15;
  *(a4 + 16) = v14;
  *(a4 + 32) = 0;
  *(a4 + 33) = v12;
  return result;
}

uint64_t closure #1 in GroupedListStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = &type metadata for GroupedListStyle;
  v10[1] = a2;
  v10[2] = &protocol witness table for GroupedListStyle;
  v10[3] = a3;
  v5 = type metadata accessor for _ListValue(0, v10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  GroupedListStyle.Body.base.getter(a2, a3, v10 - v7);
  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance GroupedListStyle.Body<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>>(255);
  v5 = v4;
  v7 = type metadata accessor for SelectionManagerBox(255, *(a1 + 16), *(a1 + 24), v6);
  v10[0] = v5;
  v10[1] = v7;
  v10[2] = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<GroupedListStyleContext>> and conformance <> ModifiedContent<A, B>();
  v10[3] = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v7);
  v8 = type metadata accessor for InsettableGroupedListBody(0, v10);
  return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
}

uint64_t storeEnumTagSinglePayload for GroupedListStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GroupedListStyleContext(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GroupedListStyleContext and conformance GroupedListStyleContext();
  *(a1 + 8) = result;
  return result;
}

BOOL protocol witness for static StyleContext.accepts<A>(_:at:) in conformance GroupedListStyleContext(uint64_t a1, uint64_t a2, ValueMetadata *a3, ValueMetadata *a4)
{
  lazy protocol witness table accessor for type GroupedListStyleContext and conformance GroupedListStyleContext();

  return specialized static ListStyleContext.accepts<A>(_:at:)(a4, a3);
}

uint64_t protocol witness for static StyleContext.acceptsAny<A>(_:) in conformance GroupedListStyleContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v8)
  {
    memcpy(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v6);
  }

  return static StyleContext.acceptsAny<A>(_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type StyleContextWriter<GroupedListStyleContext> and conformance StyleContextWriter<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()();
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

uint64_t ModifiedContent<>.accessibilitySortPriority(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = a3;
  v5 = 0;
  return ModifiedContent<>.update<A>(_:replacing:isEnabled:)(MEMORY[0x1E6980040], &v4, 1, a1, MEMORY[0x1E6980040], MEMORY[0x1E6980038], a2);
}

unint64_t Array<A>.sortedSupplementaryItems()(unint64_t a1)
{
  v6 = specialized _copySequenceToContiguousArray<A>(_:)(a1);
  specialized MutableCollection<>.sort(by:)(&v6);
  v1 = v6;
  v2 = *(v6 + 16);
  if (v2)
  {
    v6 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = 40;
    do
    {
      v4 = *(v1 + v3);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 16;
      --v2;
    }

    while (v2);

    return v6;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t CGRect.compare(to:layoutDirection:)(unsigned __int8 *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v16 = *a1;
  MinY = CGRectGetMinY(*&a2);
  v34.origin.x = a6;
  v34.origin.y = a7;
  v34.size.width = a8;
  v34.size.height = a9;
  if (MinY >= CGRectGetMidY(v34) || (v35.origin.x = a6, v35.origin.y = a7, v35.size.width = a8, v35.size.height = a9, v18 = CGRectGetMidY(v35), v36.origin.x = a2, v36.origin.y = a3, v36.size.width = a4, v36.size.height = a5, v18 >= CGRectGetMaxY(v36)))
  {
    v37.origin.x = a6;
    v37.origin.y = a7;
    v37.size.width = a8;
    v37.size.height = a9;
    v19 = CGRectGetMinY(v37);
    v38.origin.x = a2;
    v38.origin.y = a3;
    v38.size.width = a4;
    v38.size.height = a5;
    if (v19 >= CGRectGetMidY(v38))
    {
      goto LABEL_16;
    }

    v39.origin.x = a2;
    v39.origin.y = a3;
    v39.size.width = a4;
    v39.size.height = a5;
    MidY = CGRectGetMidY(v39);
    v40.origin.x = a6;
    v40.origin.y = a7;
    v40.size.width = a8;
    v40.size.height = a9;
    if (MidY >= CGRectGetMaxY(v40))
    {
      goto LABEL_16;
    }
  }

  if (v16 == 2)
  {
    goto LABEL_16;
  }

  v41.origin.x = a6;
  v41.origin.y = a7;
  v41.size.width = a8;
  v41.size.height = a9;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  if (CGRectGetMinX(v42) < MinX)
  {
    v43.origin.x = a6;
    v43.origin.y = a7;
    v43.size.width = a8;
    v43.size.height = a9;
    MaxX = CGRectGetMaxX(v43);
    v44.origin.x = a2;
    v44.origin.y = a3;
    v44.size.width = a4;
    v44.size.height = a5;
    if (CGRectGetMaxX(v44) < MaxX)
    {
      return v16 & 1;
    }
  }

  v45.origin.x = a6;
  v45.origin.y = a7;
  v45.size.width = a8;
  v45.size.height = a9;
  v24 = CGRectGetMinX(v45);
  v46.origin.x = a2;
  v46.origin.y = a3;
  v46.size.width = a4;
  v46.size.height = a5;
  if (v24 < CGRectGetMinX(v46))
  {
    v47.origin.x = a6;
    v47.origin.y = a7;
    v47.size.width = a8;
    v47.size.height = a9;
    v25 = CGRectGetMaxX(v47);
    v48.origin.x = a2;
    v48.origin.y = a3;
    v48.size.width = a4;
    v48.size.height = a5;
    if (v25 < CGRectGetMaxX(v48))
    {
      return (v16 & 1) == 0;
    }
  }

  v49.origin.x = a6;
  v49.origin.y = a7;
  v49.size.width = a8;
  v49.size.height = a9;
  v32 = CGRectGetWidth(v49) * 0.5 + a6;
  v50.origin.x = a6;
  v50.origin.y = a7;
  v50.size.width = a8;
  v50.size.height = a9;
  Height = CGRectGetHeight(v50);
  v51.origin.x = a2;
  v51.origin.y = a3;
  v51.size.width = a4;
  v51.size.height = a5;
  v30 = CGRectGetWidth(v51) * 0.5 + a2;
  v52.origin.x = a2;
  v52.origin.y = a3;
  v52.size.width = a4;
  v52.size.height = a5;
  v26 = CGRectGetHeight(v52) * 0.5 + a3;
  if (v32 == v30 && Height * 0.5 + a7 == v26)
  {
    return 2;
  }

LABEL_16:
  v53.origin.x = a6;
  v53.origin.y = a7;
  v53.size.width = a8;
  v53.size.height = a9;
  v28 = CGRectGetMinY(v53);
  v54.origin.x = a2;
  v54.origin.y = a3;
  v54.size.width = a4;
  v54.size.height = a5;
  if (v28 < CGRectGetMinY(v54))
  {
    return 1;
  }

  v55.origin.x = a6;
  v55.origin.y = a7;
  v55.size.width = a8;
  v55.size.height = a9;
  MaxY = CGRectGetMaxY(v55);
  v56.origin.x = a2;
  v56.origin.y = a3;
  v56.size.width = a4;
  v56.size.height = a5;
  return MaxY < CGRectGetMaxY(v56);
}

void specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  type metadata accessor for _ContiguousArrayStorage<(offset: Int, element: AccessibilityNode)>(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v40 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AnimationTimelineSchedule.Entries(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 80);
  outlined init with copy of AnimationTimelineSchedule.Entries(a1, v11);
  v13 = *(v9 + 28);
  v14 = v11;
  if (v11[v13 + 8])
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v15 = 0;
    v43 = v12;
    v16 = MEMORY[0x1E69E7CC0];
    v44 = (v12 + 32) & ~v12;
    v21 = MEMORY[0x1E69E7CC0] + v44;
    v22 = *(v6 + 16);
    v46 = (v6 + 56);
    v47 = v22;
    v45 = (v6 + 48);
    v48 = v6 + 16;
    v23 = (v6 + 32);
    v41 = v11;
    v42 = v6;
    v22(v4, v11, v5);
    while (1)
    {
      (*v46)(v4, 0, 1, v5);
      static Date.+= infix(_:_:)();
      if ((*v45)(v4, 1, v5) == 1)
      {
        break;
      }

      v25 = *v23;
      (*v23)(v49, v4, v5);
      if (v15)
      {
        v24 = v16;
        v19 = __OFSUB__(v15--, 1);
        if (v19)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v26 = v16[3];
        if (((v26 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v27 = v26 & 0xFFFFFFFFFFFFFFFELL;
        if (v27 <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = v27;
        }

        type metadata accessor for _ContiguousArrayStorage<(offset: Int, element: AccessibilityNode)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date>, MEMORY[0x1E6969530], MEMORY[0x1E69E6F90]);
        v29 = *(v6 + 72);
        v30 = v44;
        v24 = swift_allocObject();
        v31 = _swift_stdlib_malloc_size_1(v24);
        if (!v29)
        {
          goto LABEL_35;
        }

        v32 = v31 - v30;
        if (v31 - v30 == 0x8000000000000000 && v29 == -1)
        {
          goto LABEL_36;
        }

        v34 = v32 / v29;
        v24[2] = v28;
        v24[3] = 2 * (v32 / v29);
        v35 = v24 + v30;
        v36 = v16[3] >> 1;
        v37 = v36 * v29;
        if (v16[2])
        {
          if (v24 < v16 || v35 >= v16 + v44 + v37)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v24 != v16)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v16[2] = 0;
        }

        v21 = &v35[v37];
        v39 = (v34 & 0x7FFFFFFFFFFFFFFFLL) - v36;

        v14 = v41;
        v6 = v42;
        v19 = __OFSUB__(v39, 1);
        v15 = v39 - 1;
        if (v19)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }

      v25(v21, v49, v5);
      v21 += *(v6 + 72);
      v16 = v24;
      v47(v4, v14, v5);
    }
  }

  outlined destroy of AnimationTimelineSchedule.Entries(v14);
  outlined destroy of Date?(v4);
  v17 = v16[3];
  if (v17 >= 2)
  {
    v18 = v17 >> 1;
    v19 = __OFSUB__(v18, v15);
    v20 = v18 - v15;
    if (v19)
    {
LABEL_37:
      __break(1u);
    }

    else
    {
      v16[2] = v20;
    }
  }
}

{
  outlined init with copy of AccessibilityAttachment?(a1, v28, &lazy cache variable for type metadata for EnumeratedSequence<SubviewsCollection>, MEMORY[0x1E69E6E48], type metadata accessor for EnumeratedSequence<SubviewsCollection>);
  v1 = SubviewsCollection.endIndex.getter();
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0] + 32;
    while (1)
    {
      _VariadicView_Children.subscript.getter();
      v7 = SubviewsCollection.index(after:)(v4);
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v4 = v7;
      if (!v5)
      {
        v9 = v2[3];
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        type metadata accessor for _ContiguousArrayStorage<(offset: Int, element: AccessibilityNode)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(offset: Int, element: Subview)>, type metadata accessor for (offset: Int, element: Subview), MEMORY[0x1E69E6F90]);
        v12 = swift_allocObject();
        v13 = (_swift_stdlib_malloc_size_1(v12) - 32) / 112;
        v12[2] = v11;
        v12[3] = 2 * v13;
        v14 = (v12 + 4);
        v15 = v2[3] >> 1;
        if (v2[2])
        {
          if (v12 != v2 || v14 >= &v2[14 * v15 + 4])
          {
            memmove(v12 + 4, v2 + 4, 112 * v15);
          }

          v2[2] = 0;
        }

        v6 = v14 + 112 * v15;
        v5 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;

        v2 = v12;
      }

      v17 = __OFSUB__(v5--, 1);
      if (v17)
      {
        goto LABEL_27;
      }

      *v6 = v3;
      *(v6 + 104) = v27;
      *(v6 + 40) = v23;
      *(v6 + 24) = v22;
      *(v6 + 8) = v21;
      *(v6 + 88) = v26;
      *(v6 + 72) = v25;
      *(v6 + 56) = v24;
      v6 += 112;
      ++v3;
      if (v4 == SubviewsCollection.endIndex.getter())
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

  v5 = 0;
  v8 = 0;
  v4 = 0;
LABEL_22:
  v29 = v4;
  v30 = v8;
  outlined destroy of AccessibilityAttachment?(v28, &lazy cache variable for type metadata for EnumeratedSequence<SubviewsCollection>.Iterator, MEMORY[0x1E69E6E40], type metadata accessor for EnumeratedSequence<SubviewsCollection>);
  v18 = v2[3];
  if (v18 >= 2)
  {
    v19 = v18 >> 1;
    v17 = __OFSUB__(v19, v5);
    v20 = v19 - v5;
    if (v17)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v2[2] = v20;
  }
}

unint64_t specialized _copySequenceToContiguousArray<A>(_:)(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = MEMORY[0x18D00E9C0](v4, v1);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = __CocoaSet.count.getter();
          v2 = result;
          goto LABEL_3;
        }

        result = *(v1 + 8 * v4 + 32);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v10 = v3[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v11 = v2;
        v12 = result;
        v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        type metadata accessor for _ContiguousArrayStorage<(offset: Int, element: AccessibilityNode)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(offset: Int, element: AccessibilityNode)>, type metadata accessor for (offset: Int, element: AccessibilityNode), MEMORY[0x1E69E6F90]);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size_1(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        result = v12;
        v2 = v11;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = result;
      v7 += 2;
      ++v4;
      if (v9 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v5 = v3;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for (offset: Int, element: AccessibilityNode)(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v2 / 2;
      }

      v8[0] = (v6 + 32);
      v8[1] = (v2 / 2);
      v7 = v6;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v5, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for IndexPath();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for IndexPath() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v5 = v3;
      v6 = v2 / 2;
      if (v2 <= 1)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFF8;
      v9[0] = ((v7 & 0xFFFFFFFFFFFFFF8) + 32);
      v9[1] = v6;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v5, v4);
      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v5 = v3;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for PlatformListCell & UIFocusItem();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v2 / 2;
      }

      v8[0] = (v6 + 32);
      v8[1] = (v2 / 2);
      v7 = v6;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v5, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}