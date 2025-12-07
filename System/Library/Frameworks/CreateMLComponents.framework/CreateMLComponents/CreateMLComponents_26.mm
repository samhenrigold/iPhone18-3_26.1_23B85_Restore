uint64_t sub_237E9B714(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    v1 = sub_237EF90F0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_237E9B7C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = *(v5 + 64);
  if (v6)
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = v8 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload((a1 + v7 + 8) & ~v7, v6, v4);
  }

  v11 = v9 + ((v8 + v7 + ((v8 + v7 + ((v7 + 8 + ((((((v8 + ((v7 + 8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v7)) & ~v7)) & ~v7);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v14 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v14 < 2)
    {
LABEL_22:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 8) & ~v7, v6, v4);
      }

      return 0;
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_22;
  }

LABEL_14:
  v15 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v15 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    switch(v11)
    {
      case 2:
        LODWORD(v11) = *a1;
        break;
      case 3:
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v11) = *a1;
        break;
      default:
        LODWORD(v11) = *a1;
        break;
    }
  }

  return v6 + (v11 | v15) + 1;
}

void sub_237E9B968(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  v11 = (v10 + v9 + ((v10 + v9 + ((v9 + 8 + ((((((v10 + ((v9 + 8) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v9)) & ~v9)) & ~v9;
  if (!v8)
  {
    ++v10;
  }

  v12 = v10 + v11;
  v13 = 8 * (v10 + v11);
  v14 = a3 >= v8;
  v15 = a3 - v8;
  if (v15 != 0 && v14)
  {
    if (v12 <= 3)
    {
      v19 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v16 = v20;
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

  if (v8 >= a2)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_26;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_26;
        }

        break;
      case 3:
LABEL_39:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_25;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          v22 = &a1[v9 + 8] & ~v9;

          __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v17 = ~v8 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> v13) + 1;
      if (v12)
      {
        v21 = v17 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v12 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v18;
        break;
      case 2:
        *&a1[v12] = v18;
        break;
      case 3:
        goto LABEL_39;
      case 4:
        *&a1[v12] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237E9BBCC(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    v1 = sub_237EF90F0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_237E9BC64(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = *(v5 + 64);
  if (v7)
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = v8 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    return __swift_getEnumTagSinglePayload(a1, v7, v4);
  }

  v11 = v9 + ((v8 + *(v6 + 80) + ((v8 + *(v6 + 80)) & ~*(v6 + 80))) & ~*(v6 + 80));
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v14 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v14 < 2)
    {
LABEL_22:
      if (v7)
      {
        return __swift_getEnumTagSinglePayload(a1, v7, v4);
      }

      return 0;
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_22;
  }

LABEL_14:
  v15 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v15 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    switch(v11)
    {
      case 2:
        LODWORD(v11) = *a1;
        break;
      case 3:
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v11) = *a1;
        break;
      default:
        LODWORD(v11) = *a1;
        break;
    }
  }

  return v7 + (v11 | v15) + 1;
}

void sub_237E9BDC4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = (v9 + *(v7 + 80) + ((v9 + *(v7 + 80)) & ~*(v7 + 80))) & ~*(v7 + 80);
  if (!v8)
  {
    ++v9;
  }

  v11 = v9 + v10;
  v12 = 8 * (v9 + v10);
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v8 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_26;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_26;
        }

        break;
      case 3:
LABEL_39:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_25;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v16 = ~v8 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_39;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237E9BFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = type metadata accessor for TreeInnerNode(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for TreeLeaf(319, v4, v5, v7);
    if (v9 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237E9C07C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = (v5 + v4 + ((v5 + v4 + ((v4 + 8 + ((((((v5 + ((v4 + 8) & ~v4) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v4)) & ~v4)) & ~v4;
  v7 = (v5 + v4 + ((v5 + v4) & ~v4)) & ~v4;
  if (*(v3 + 84))
  {
    v8 = *(v3 + 64);
  }

  else
  {
    v8 = v5 + 1;
  }

  v9 = v7 + v8;
  if (v9 <= v6 + v8)
  {
    v10 = v6 + v8;
  }

  else
  {
    v10 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v15 = ((a2 + ~(-1 << v12) - 254) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v15 < 2)
    {
LABEL_26:
      v17 = *(a1 + v10);
      if (v17 >= 2)
      {
        return (v17 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_26;
  }

LABEL_18:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    switch(v11)
    {
      case 2:
        LODWORD(v11) = *a1;
        break;
      case 3:
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v11) = *a1;
        break;
      default:
        LODWORD(v11) = *a1;
        break;
    }
  }

  return (v11 | v16) + 255;
}

void sub_237E9C22C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = (v7 + v6 + ((v7 + v6 + ((v6 + 8 + ((((((v7 + ((v6 + 8) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v6)) & ~v6)) & ~v6;
  v9 = (v7 + v6 + ((v7 + v6) & ~v6)) & ~v6;
  if (*(v5 + 84))
  {
    v10 = *(v5 + 64);
  }

  else
  {
    v10 = v7 + 1;
  }

  v11 = v9 + v10;
  if (v11 <= v8 + v10)
  {
    v11 = v8 + v10;
  }

  v12 = v11 + 1;
  v13 = 8 * (v11 + 1);
  if (a3 < 0xFF)
  {
    v14 = 0;
  }

  else if (v12 <= 3)
  {
    v17 = ((a3 + ~(-1 << v13) - 254) >> v13) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (a2 > 0xFE)
  {
    v15 = a2 - 255;
    if (v12 < 4)
    {
      v16 = (v15 >> v13) + 1;
      if (v11 != -1)
      {
        v19 = v15 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v12 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v11 + 1);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v12] = v16;
        break;
      case 2:
        *&a1[v12] = v16;
        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = v16;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v14)
    {
      case 1:
        a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      case 2:
        *&a1[v12] = 0;
        goto LABEL_28;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v11] = -a2;
        }

        break;
    }
  }
}

void *OUTLINED_FUNCTION_17_55()
{

  return sub_237EF9970();
}

uint64_t OUTLINED_FUNCTION_19_48(uint64_t a1, uint64_t a2)
{

  return sub_237EF9A50();
}

void sub_237E9C6A8(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_237E9CB40(319, &qword_27DEB62B0, type metadata accessor for L2NormRegularizer);
    if (v2 <= 0x3F)
    {
      sub_237E9CB40(319, &qword_27DEB62B8, type metadata accessor for OptimizerState);
      if (v3 <= 0x3F)
      {
        sub_237E9CB40(319, &qword_27DEB62C0, type metadata accessor for OptimizerStatistics);
        if (v4 <= 0x3F)
        {
          sub_237E9CB40(319, &qword_27DEB62C8, type metadata accessor for DenseVector);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_237E9C7E8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_237E9C93C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((((v9 + 7) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
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
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
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
    if (((((((((v9 + 7) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((((v9 + 7) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_237E9CB40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_237C65348();
    v7 = a3(a1, MEMORY[0x277D839F8], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_237E9CBA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a2 + 32;
    do
    {
      v6 = v4 + 1;
      v7 = *(v5 + 8 * v4) + *(v5 + 8 * v4);
      v8 = sub_237E9CC48(v11, v4, v4);
      *v9 = v7 + *v9;
      result = (v8)(v11, 0);
      v4 = v6;
    }

    while (v2 != v6);
  }

  return result;
}

uint64_t (*sub_237E9CC48(uint64_t (**a1)(), uint64_t a2, uint64_t a3))()
{
  result = __swift_coroFrameAllocStub(0x30uLL);
  v8 = result;
  *a1 = result;
  if (v3[2])
  {
    v9 = a3 * *v3;
    if ((a3 * *v3) >> 64 == v9 >> 63)
    {
      if (!__OFADD__(v9, a2))
      {
        sub_237DDE918(result, v9 + a2);
        *(v8 + 5) = v10;
        return sub_237E9CD34;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v3[1];
  v13 = a2 * v12;
  if ((a2 * v12) >> 64 != (a2 * v12) >> 63)
  {
    goto LABEL_10;
  }

  if (!__OFADD__(v13, a3))
  {
    sub_237DDE918(result, v13 + a3);
    *(v8 + 4) = v14;
    return sub_237D8212C;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_237E9CD34(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

void sub_237E9CD80(uint64_t a1, int *a2, double a3)
{
  v8 = OUTLINED_FUNCTION_1_115();
  v10 = v9(v8);
  v11 = sub_237E613EC(v10, 0.0);
  v12 = a2[13];

  *(v3 + v12) = v11;
  v13 = sub_237E613EC(v10, 0.0);
  v14 = a2[12];

  *(v3 + v14) = v13;
  v15 = v3 + a2[10];
  *(v15 + 64) = a3;
  *(v15 + 56) = 0;

  *v15 = a1;

  *(v15 + 8) = v13;
  if ((v10 * v10) >> 64 == (v10 * v10) >> 63)
  {
    v16 = sub_237E613EC(v10 * v10, 0.0);

    *(v15 + 16) = v10;
    *(v15 + 24) = v10;
    *(v15 + 32) = 1;
    *(v15 + 40) = v16;
    sub_237E9CF28(a2);
    if (!v4)
    {
      v17 = *(v15 + 8);
      v18 = sub_237C65348();
      DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237E9DA74, 0, v17, MEMORY[0x277D839F8], MEMORY[0x277D839F8], v18);
      *(v15 + 48) = v23;
      OUTLINED_FUNCTION_0_96();
      if (v19 == v20)
      {
        sub_237DC6AD0();
        v21 = swift_allocError();
        OUTLINED_FUNCTION_2_113(v21, v22);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_237E9CF28(uint64_t a1)
{
  v3 = (v1 + *(a1 + 40));
  result = (*(*(a1 + 24) + 56))(v3, *(a1 + 16));
  v5 = v1 + *(a1 + 44);
  v6 = *(v5 + 8);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v5 + 8) = v8;
  v9 = *(v5 + 16);
  v7 = __OFADD__(v9, 1);
  v10 = v9 + 1;
  if (v7)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(v5 + 16) = v10;
  if ((~v3[7] & 0x7FF0000000000000) != 0)
  {
    v12 = *(v1 + *(a1 + 36));
    sub_237EA229C(v3, v12);
    return sub_237E9CBA4(v3, v12);
  }

  else
  {
    sub_237DC6AD0();
    swift_allocError();
    *v11 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_237E9D040(const void *a1, int *a2)
{
  v5 = OUTLINED_FUNCTION_1_115();
  v7 = v6(v5);
  v8 = (v2 + a2[10]);
  sub_237E9DA04(a1, &v14);

  memcpy(v8, a1, 0x49uLL);
  v9 = sub_237E613EC(v7, 0.0);
  v10 = a2[13];

  *(v2 + v10) = v9;
  v11 = sub_237E613EC(v7, 0.0);
  v12 = a2[12];

  *(v2 + v12) = v11;
  return result;
}

void sub_237E9D124(uint64_t a1)
{
  sub_237E9D224(a1);
  if (!v2)
  {
    sub_237E9D434(a1);
    sub_237E9CF28(a1);
    v4 = v1 + *(a1 + 40);
    v5 = *(v4 + 8);
    v6 = sub_237C65348();
    DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237E9DA74, 0, v5, MEMORY[0x277D839F8], MEMORY[0x277D839F8], v6);
    *(v4 + 48) = v14;
    OUTLINED_FUNCTION_0_96();
    if (v7 != v8)
    {
      v11 = *(a1 + 44);
      v12 = *(v1 + v11);
      v8 = __OFADD__(v12, 1);
      v13 = v12 + 1;
      if (v8)
      {
        __break(1u);
      }

      else
      {
        *(v1 + v11) = v13;
      }
    }

    else
    {
      sub_237DC6AD0();
      v9 = swift_allocError();
      OUTLINED_FUNCTION_2_113(v9, v10);
    }
  }
}

uint64_t sub_237E9D224(uint64_t a1)
{
  v3 = v1;
  v5 = v1 + *(a1 + 40);
  v6 = *(v5 + 40);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_237E9D898(v6);
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  result = v8 * v7;
  if ((v8 * v7) >> 64 != (v8 * v7) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result < 0xFFFFFFFF80000000)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  cblas_dscal_NEWLAPACK();
  *(v5 + 40) = v6;
  v22 = v2;
  v10 = *(v5 + 8);
  v11 = *(a1 + 48);

  *(v3 + v11) = v10;
  v13 = *(v5 + 32);
  v24 = v8;
  v25 = v7;
  v26 = v13;
  v27 = v6;
  MEMORY[0x28223BE20](v12);
  v20[1] = *(a1 + 16);
  v21 = v3;

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB62D8, &unk_237F1D540);
  v15 = v22;
  DenseMatrix.withUnsafeMutableMatrixPointer<A>(_:)(sub_237E9D8AC, v20, v14, MEMORY[0x277D839B0]);

  if (!v15)
  {
    *(v5 + 72) = v23;
    v16 = *(v3 + v11);
    v17 = *(a1 + 52);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8, &qword_237F1ABB0);
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237E9D8CC, v16, v18, MEMORY[0x277D84F78] + 8);
    v19 = *(v3 + v17);

    *v5 = v19;
  }

  return result;
}

void *sub_237E9D434(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  v3 = sub_237C65348();
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237E9D658, 0, v2, MEMORY[0x277D839F8], MEMORY[0x277D839F8], v3);
  if (v8 <= 4.93038066e-32)
  {
    v5 = 0;
LABEL_6:
    sub_237DC6AD0();
    swift_allocError();
    *v6 = v5;
    return swift_willThrow();
  }

  result = DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237E9D6F0, 0, v2, MEMORY[0x277D839F8], MEMORY[0x277D839B0], v3);
  if (v7 != 1)
  {
    v5 = 1;
    goto LABEL_6;
  }

  return result;
}

void *sub_237E9D548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = a1;
  type metadata accessor for NewtonOptimizer(0, a3, a4, a4);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8, &qword_237F1ABB0);
  return DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237E9D8E8, v6, v4, MEMORY[0x277D839B0]);
}

BOOL sub_237E9D5E0@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_237EBE2B8(a4, a1, a2);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_237E9D678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getAtKeyPath();
}

uint64_t sub_237E9D6F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  if ((a2 * a3) >> 64 == (a2 * a3) >> 63)
  {
    v4 = 0;
    v5 = 8 * a3 * a2;
    while (v5 != v4 && (~*(result + v4) & 0x7FF0000000000000) != 0)
    {
      v4 += 8 * a3;
    }

    *a4 = v5 == v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237E9D744@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  memcpy(__dst, (v2 + v4), 0x49uLL);
  memcpy(a2, (v2 + v4), 0x49uLL);
  return sub_237E9DA04(__dst, &v6);
}

unint64_t sub_237E9D844()
{
  result = qword_27DEB62D0;
  if (!qword_27DEB62D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB62D0);
  }

  return result;
}

char *sub_237E9D904(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C0, &unk_237F07370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_237E9DA04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2A08, qword_237F15D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_113(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t PreprocessingUpdatableSupervisedEstimator.init(_:_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_22_3();
  (*(v10 + 32))(a5);
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = a3;
  v13[3] = a4;
  type metadata accessor for PreprocessingUpdatableSupervisedEstimator(0, v13);
  OUTLINED_FUNCTION_27_32();
  return v11();
}

uint64_t PreprocessingUpdatableSupervisedEstimator.makeTransformer()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = a1[3];
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v11 = *(v10 + 40);
  v24 = *(v11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v16 = a1[2];
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  PreprocessingUpdatableSupervisedEstimator.preprocessor.getter(a1, v19 - v18);
  PreprocessingUpdatableSupervisedEstimator.estimator.getter(a1, v9);
  (*(v11 + 16))(v3, v11);
  (*(v5 + 8))(v9, v3);
  v21 = a1[4];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return ComposedTransformer.init(_:_:)(v20, v15, v16, AssociatedTypeWitness, v21, AssociatedConformanceWitness, v25);
}

uint64_t PreprocessingUpdatableSupervisedEstimator.preprocessed<A>(from:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7[12] = a6;
  v7[13] = v6;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  v7[14] = a4[4];
  v7[15] = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_237EF8A60();
  v7[16] = v10;
  v7[17] = a4[5];
  v7[18] = a4[3];
  v11 = swift_getAssociatedTypeWitness();
  v7[19] = v11;
  v12 = sub_237EF9640();
  v7[20] = v12;
  WitnessTable = swift_getWitnessTable();
  v7[21] = WitnessTable;
  OUTLINED_FUNCTION_1_5();
  v14 = swift_getWitnessTable();
  v7[22] = v14;
  v7[2] = v10;
  v7[3] = v12;
  v7[4] = WitnessTable;
  v7[5] = v14;
  v7[23] = sub_237EF9380();
  v7[24] = swift_getWitnessTable();
  v15 = sub_237EF9340();
  v7[25] = v15;
  OUTLINED_FUNCTION_6_1(v15);
  v7[26] = v16;
  v7[27] = OUTLINED_FUNCTION_27_0();
  v7[28] = *(v12 - 8);
  v7[29] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v7[30] = v17;
  v7[31] = OUTLINED_FUNCTION_27_0();
  v7[32] = type metadata accessor for AnnotatedFeature(255, AssociatedTypeWitness, v11, v18);
  v7[33] = sub_237EF9640();
  v7[34] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v7[35] = v19;
  v7[36] = OUTLINED_FUNCTION_27_0();
  v20 = sub_237EF9340();
  v7[37] = v20;
  OUTLINED_FUNCTION_6_1(v20);
  v7[38] = v21;
  v7[39] = OUTLINED_FUNCTION_27_0();
  v7[40] = swift_getAssociatedTypeWitness();
  v22 = sub_237EF9640();
  v7[41] = v22;
  OUTLINED_FUNCTION_6_1(v22);
  v7[42] = v23;
  v7[43] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_237E9E264()
{
  v1 = v0[38];
  v22 = v0[37];
  v23 = v0[39];
  v25 = v0[36];
  v2 = v0[17];
  v3 = v0[18];
  v21 = v2;
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[11];
  v24 = v0[10];
  MEMORY[0x2383E08A0](v7, v6);
  v8 = swift_task_alloc();
  *v8 = v5;
  v8[1] = v3;
  v8[2] = v7;
  v8[3] = v4;
  v8[4] = v2;
  v8[5] = v6;
  KeyPath = swift_getKeyPath();

  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = v3;
  v10[4] = v7;
  v10[5] = v4;
  v10[6] = v21;
  v10[7] = v6;
  v10[8] = KeyPath;
  v0[44] = swift_getWitnessTable();
  sub_237EF9860();

  v11 = *(v1 + 8);
  v0[45] = v11;
  v0[46] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v23, v22);
  PreprocessingUpdatableSupervisedEstimator.preprocessor.getter(v24, v25);
  v12 = swift_task_alloc();
  v0[47] = v12;
  OUTLINED_FUNCTION_1_5();
  WitnessTable = swift_getWitnessTable();
  *v12 = v0;
  v12[1] = sub_237E9E46C;
  v14 = v0[43];
  v15 = v0[41];
  v17 = v0[14];
  v16 = v0[15];
  v18 = v0[8];
  v19 = v0[9];

  return Transformer.applied<A>(to:eventHandler:)(v14, v18, v19, v16, v15, v17, WitnessTable);
}

uint64_t sub_237E9E46C()
{
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *v6 = *v1;
  v5[48] = v0;

  v7 = v4[36];
  v8 = v4[35];
  v9 = v4[15];
  if (!v0)
  {
    v5[49] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_237E9E5E4()
{
  v18 = v0[45];
  v25 = v0[42];
  v26 = v0[41];
  v27 = v0[43];
  v30 = v0[39];
  v15 = v0[37];
  v28 = v0[31];
  v22 = v0[30];
  v29 = v0[29];
  v17 = v0[28];
  v21 = v0[27];
  v24 = v0[26];
  v23 = v0[25];
  v19 = v0[23];
  v20 = v0[24];
  v16 = v0[20];
  v1 = v0[17];
  v2 = v0[18];
  v0[6] = v0[49];
  v3 = v0[15];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  MEMORY[0x2383E08A0](v6, v5);
  v7 = swift_task_alloc();
  *v7 = v3;
  v7[1] = v2;
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v1;
  v7[5] = v5;
  KeyPath = swift_getKeyPath();

  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = v2;
  v9[4] = v6;
  v9[5] = v4;
  v9[6] = v1;
  v9[7] = v5;
  v9[8] = KeyPath;
  sub_237EF9860();

  v18(v30, v15);
  sub_237EFA000();
  (*(v17 + 8))(v29, v16);

  MEMORY[0x2383E08A0](v19, v20);
  (*(v22 + 8))(v28, v19);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v6;
  v10[5] = v4;
  v10[6] = v1;
  v10[7] = v5;
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = v2;
  v11[4] = v6;
  v11[5] = v4;
  v11[6] = v1;
  v11[7] = v5;
  v11[8] = sub_237E9EF1C;
  v11[9] = v10;
  swift_getWitnessTable();
  sub_237EF9860();

  (*(v24 + 8))(v21, v23);
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  v12 = sub_237EF92D0();
  (*(v25 + 8))(v27, v26);

  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_237E9E9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_40();
  OUTLINED_FUNCTION_19_18();
  (*(v10[42] + 8))(v10[43], v10[41]);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_15_19();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_237E9EA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v14 - v7;
  (*(v9 + 16))(&v14 - v7, a1, AssociatedTypeWitness, v6);
  v10 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for AnnotatedFeature(0, AssociatedTypeWitness, v10, v11);
  return AnnotatedFeature.feature.setter(v8, v12);
}

uint64_t sub_237E9EBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for AnnotatedFeature(0, AssociatedTypeWitness, v6, v7);
  return a4(v8);
}

uint64_t sub_237E9EC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v14 - v7;
  (*(v9 + 16))(&v14 - v7, a1, AssociatedTypeWitness, v6);
  v10 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for AnnotatedFeature(0, v10, AssociatedTypeWitness, v11);
  return AnnotatedFeature.annotation.setter(v8, v12);
}

uint64_t sub_237E9ED64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v20 - v12;
  v14 = swift_getAssociatedTypeWitness();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v20 - v16;
  (*(v18 + 16))(&v20 - v16, a1, v14, v15);
  (*(v11 + 16))(v13, a2, AssociatedTypeWitness);
  return AnnotatedFeature.init(feature:annotation:)(v17, v13, v14, AssociatedTypeWitness, a7);
}

uint64_t sub_237E9EF2C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t PreprocessingUpdatableSupervisedEstimator.fitted<A>(toPreprocessed:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[8] = v4;
  v1[9] = v0;
  v1[6] = v2;
  v1[7] = v5;
  v1[4] = v6;
  v1[5] = v7;
  v1[2] = v8;
  v1[3] = v9;
  v1[10] = *(v2 + 16);
  OUTLINED_FUNCTION_22_3();
  v1[11] = OUTLINED_FUNCTION_27_0();
  v1[12] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[13] = v10;
  v1[14] = OUTLINED_FUNCTION_27_0();
  v1[15] = *(*(v3 + 40) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[16] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v1[17] = v12;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_237E9F180()
{
  OUTLINED_FUNCTION_12_2();
  PreprocessingUpdatableSupervisedEstimator.estimator.getter(v0[6], v0[14]);
  OUTLINED_FUNCTION_15_0();
  v12 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_237E9F2A8;
  v3 = v0[19];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  return v12(v3, v10, v8, v9, v6, v7, v5, v4);
}

uint64_t sub_237E9F2A8()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v5 = v4[14];
  v6 = v4[13];
  v7 = v4[12];
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;
  *(v10 + 168) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E9F3FC()
{
  v14 = *(v0 + 80);
  v1 = OUTLINED_FUNCTION_22_41();
  v2(v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_31_18(AssociatedConformanceWitness, v4, v5, v6, v7, v8, v9, v10, v13, v14);

  OUTLINED_FUNCTION_3_0();

  return v11();
}

uint64_t PreprocessingUpdatableSupervisedEstimator.fitted<A, B>(toPreprocessed:validateOn:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[11] = v20;
  v1[12] = v0;
  v1[9] = v4;
  v1[10] = v19;
  v1[7] = v2;
  v1[8] = v5;
  v1[5] = v6;
  v1[6] = v7;
  v1[3] = v8;
  v1[4] = v9;
  v1[2] = v10;
  v1[13] = *(v2 + 16);
  OUTLINED_FUNCTION_22_3();
  v1[14] = OUTLINED_FUNCTION_27_0();
  v1[15] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[16] = v11;
  v1[17] = OUTLINED_FUNCTION_27_0();
  v1[18] = *(*(v3 + 40) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[19] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v1[20] = v13;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

void sub_237E9F650()
{
  OUTLINED_FUNCTION_2_0();
  PreprocessingUpdatableSupervisedEstimator.estimator.getter(v0[7], v0[17]);
  OUTLINED_FUNCTION_15_0();
  v3 = v1 + *v1;
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_237E9F78C;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237E9F78C()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v5 = v4[17];
  v6 = v4[16];
  v7 = v4[15];
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;
  *(v10 + 192) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E9F8E0()
{
  v14 = *(v0 + 104);
  v1 = OUTLINED_FUNCTION_22_41();
  v2(v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_31_18(AssociatedConformanceWitness, v4, v5, v6, v7, v8, v9, v10, v13, v14);

  OUTLINED_FUNCTION_3_0();

  return v11();
}

uint64_t PreprocessingUpdatableSupervisedEstimator.fitted<A>(to:eventHandler:)(uint64_t a1)
{
  OUTLINED_FUNCTION_30_40();
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_14_66();
  v2[6] = v3;
  v2[7] = v1;
  v2[4] = v4;
  v2[5] = v5;
  v2[3] = v6;
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  OUTLINED_FUNCTION_10_53(v7);
  OUTLINED_FUNCTION_15_19();

  return PreprocessingUpdatableSupervisedEstimator.preprocessed<A>(from:eventHandler:)(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_237E9FA70()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v4;
  *(v2 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_3_0();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_237E9FB8C()
{
  OUTLINED_FUNCTION_39_0();
  v1 = v0[10];
  sub_237EF8B90();
  if (v1)
  {

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    v0[2] = v0[9];
    v4 = swift_task_alloc();
    v0[11] = v4;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = swift_getAssociatedTypeWitness();
    type metadata accessor for AnnotatedFeature(255, AssociatedTypeWitness, v6, v7);
    sub_237EF92C0();
    OUTLINED_FUNCTION_2_114();
    swift_getWitnessTable();
    *v4 = v0;
    v4[1] = sub_237E9FD10;

    return PreprocessingUpdatableSupervisedEstimator.fitted<A>(toPreprocessed:eventHandler:)();
  }
}

uint64_t sub_237E9FD10()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E9FE08()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237E9FE64()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableSupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_30_40();
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_14_66();
  v19[10] = a18;
  v19[11] = v18;
  v19[8] = v20;
  v19[9] = v21;
  v19[6] = v22;
  v19[7] = v23;
  v19[4] = v24;
  v19[5] = v25;
  v26 = swift_task_alloc();
  v19[12] = v26;
  *v26 = v19;
  v26[1] = sub_237E9FF88;
  OUTLINED_FUNCTION_15_19();

  return PreprocessingUpdatableSupervisedEstimator.preprocessed<A>(from:eventHandler:)(v27, v28, v29, v30, v31, v32);
}

uint64_t sub_237E9FF88()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v4;
  *(v2 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_3_0();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_237EA00A4()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[14];
  sub_237EF8B90();
  if (v1)
  {

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_237EA0190;
    v5 = v0[10];
    v6 = v0[8];
    v7 = v0[9];
    v8 = v0[6];
    v9 = v0[7];
    v10 = v0[5];

    return PreprocessingUpdatableSupervisedEstimator.preprocessed<A>(from:eventHandler:)(v10, v8, v9, v6, v7, v5);
  }
}

uint64_t sub_237EA0190()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v4;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237EA0290()
{
  OUTLINED_FUNCTION_39_0();
  v1 = v0[17];
  sub_237EF8B90();
  if (v1)
  {

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    v4 = v0[16];
    v0[2] = v0[13];
    v0[3] = v4;
    v5 = swift_task_alloc();
    v0[18] = v5;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v7 = swift_getAssociatedTypeWitness();
    type metadata accessor for AnnotatedFeature(255, AssociatedTypeWitness, v7, v8);
    sub_237EF92C0();
    OUTLINED_FUNCTION_2_114();
    swift_getWitnessTable();
    *v5 = v0;
    v5[1] = sub_237EA0440;

    return PreprocessingUpdatableSupervisedEstimator.fitted<A, B>(toPreprocessed:validateOn:eventHandler:)();
  }
}

uint64_t sub_237EA0440()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237EA0538()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237EA05A0()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237EA05FC()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableSupervisedEstimator.update<A>(_:withPreprocessed:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v1[6] = v7;
  v1[7] = v8;
  v1[14] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[15] = v9;
  v1[16] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_237EA0714()
{
  v1 = v0[10];
  v2 = v0[6];
  PreprocessingUpdatableSupervisedEstimator.estimator.getter(v1, v0[16]);
  v3 = v1[2];
  v4 = v1[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = v1[4];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[2] = v3;
  v0[3] = AssociatedTypeWitness;
  v0[4] = v6;
  v0[5] = AssociatedConformanceWitness;
  v8 = *(type metadata accessor for ComposedTransformer(0, (v0 + 2)) + 52);
  OUTLINED_FUNCTION_15_0();
  v18 = (v9 + *v9);
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_237EA08D8;
  v11 = v0[14];
  v12 = v0[11];
  v13 = v0[12];
  v14 = v0[8];
  v15 = v0[9];
  v16 = v0[7];

  return v18(v2 + v8, v16, v14, v15, v12, v13, v11, v4);
}

uint64_t sub_237EA08D8()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v6 = v5[16];
  v7 = v5[15];
  v8 = v5[14];
  v9 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v10 = v9;
  *(v3 + 144) = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v14();
  }
}

uint64_t PreprocessingUpdatableSupervisedEstimator.update<A>(_:with:eventHandler:)(uint64_t a1)
{
  OUTLINED_FUNCTION_30_40();
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_14_66();
  v2[10] = v3;
  v2[11] = v1;
  v2[8] = v4;
  v2[9] = v5;
  v2[7] = v6;
  v2[12] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v2[13] = v7;
  v2[14] = OUTLINED_FUNCTION_27_0();
  v8 = swift_task_alloc();
  v2[15] = v8;
  *v8 = v2;
  OUTLINED_FUNCTION_10_53(v8);
  OUTLINED_FUNCTION_15_19();

  return PreprocessingUpdatableSupervisedEstimator.preprocessed<A>(from:eventHandler:)(v9, v10, v11, v12, v13, v14);
}

uint64_t sub_237EA0B4C()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 128) = v6;
  *(v3 + 136) = v0;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_237EA0C88(uint64_t a1)
{
  v2 = v1[17];
  sub_237EF8B90();
  if (v2)
  {

    OUTLINED_FUNCTION_3_0();

    return v3();
  }

  else
  {
    v5 = v1[16];
    v6 = v1[10];
    v24 = v1[7];
    PreprocessingUpdatableSupervisedEstimator.estimator.getter(v6, v1[14]);
    v1[6] = v5;
    v7 = v6[2];
    v8 = v6[5];
    OUTLINED_FUNCTION_27_32();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v10 = v6[4];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v1[2] = v7;
    v1[3] = AssociatedTypeWitness;
    v1[4] = v10;
    v1[5] = AssociatedConformanceWitness;
    v12 = *(type metadata accessor for ComposedTransformer(0, (v1 + 2)) + 52);
    OUTLINED_FUNCTION_15_0();
    v23 = (v13 + *v13);
    v14 = swift_task_alloc();
    v1[18] = v14;
    v15 = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_27_32();
    v16 = swift_getAssociatedTypeWitness();
    type metadata accessor for AnnotatedFeature(255, v15, v16, v17);
    v18 = sub_237EF92C0();
    OUTLINED_FUNCTION_2_114();
    WitnessTable = swift_getWitnessTable();
    *v14 = v1;
    v14[1] = sub_237EA0F24;
    v20 = v1[12];
    v21 = v1[8];
    v22 = v1[9];

    return (v23)(v24 + v12, v1 + 6, v21, v22, v18, WitnessTable, v20, v8);
  }
}

uint64_t sub_237EA0F24()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  v3[19] = v0;

  (*(v3[13] + 8))(v3[14], v3[12]);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237EA104C()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237EA10B4()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableSupervisedEstimator.encode(_:to:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a3[5] + 8);
  v6 = a3[2];
  v7 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = a3[4];
  v13[0] = v6;
  v13[1] = AssociatedTypeWitness;
  v13[2] = v9;
  v13[3] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for ComposedTransformer(0, v13);
  return (*(v5 + 56))(a1 + *(v10 + 52), a2, v7, v5);
}

uint64_t PreprocessingUpdatableSupervisedEstimator.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v21 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v24 = v10 - v9;
  v12 = *(*(v11 + 40) + 8);
  v13 = *(v11 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v20 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_34_2();
  result = (*(v12 + 64))(a1, v13, v12);
  if (!v25)
  {
    (*(v21 + 16))(v24, v3, v23);
    (*(v20 + 32))(v5, v4, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return OUTLINED_FUNCTION_21_38(v24, AssociatedConformanceWitness, a3);
  }

  return result;
}

uint64_t PreprocessingUpdatableSupervisedEstimator.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[5];
  v6 = a3[2];
  v7 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = a3[4];
  v13[0] = v6;
  v13[1] = AssociatedTypeWitness;
  v13[2] = v9;
  v13[3] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for ComposedTransformer(0, v13);
  return (*(v5 + 32))(a1 + *(v10 + 52), a2, v7, v5);
}

uint64_t PreprocessingUpdatableSupervisedEstimator.decodeWithOptimizer(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v21 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v24 = v10 - v9;
  v12 = *(v11 + 40);
  v13 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_34_2();
  result = (*(v12 + 40))(a1, v13, v12);
  if (!v26)
  {
    (*(v21 + 16))(v24, v3, v23);
    (*(v16 + 32))(v5, v4, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return OUTLINED_FUNCTION_21_38(v24, AssociatedConformanceWitness, a3);
  }

  return result;
}

uint64_t sub_237EA16E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_237C6A904;

  return PreprocessingUpdatableSupervisedEstimator.update<A>(_:with:eventHandler:)(a1);
}

uint64_t sub_237EA17F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_237C6B728;

  return PreprocessingUpdatableSupervisedEstimator.fitted<A>(to:eventHandler:)(a1);
}

uint64_t sub_237EA18D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v26 = swift_task_alloc();
  *(v18 + 16) = v26;
  *v26 = v18;
  v26[1] = sub_237C6B728;

  return PreprocessingUpdatableSupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, v31, a6, a7, a8, v30, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t Transformer.appending<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  (*(v14 + 16))(v13 - v12, v15, a1);
  OUTLINED_FUNCTION_27_32();
  v16();
  return PreprocessingUpdatableSupervisedEstimator.init(_:_:)(a1, a2, a3, a4, a5);
}

uint64_t sub_237EA1B68(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237EA1BC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_237EA1D90(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
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
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

double sub_237EA20AC@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 32) = a1[2];
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  v4 = MEMORY[0x277D84F90];
  *(a3 + 64) = MEMORY[0x277D84F90];
  *(a3 + 72) = v4;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = v4;
  *(a3 + 112) = 0x7FF8000000000000;
  result = 0.0;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0x3FF0000000000000;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
  *(a3 + 208) = v4;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  *(a3 + 232) = 0;
  *(a3 + 240) = v4;
  *(a3 + 248) = v4;
  *(a3 + 256) = v4;
  *(a3 + 264) = v4;
  *(a3 + 272) = v4;
  *(a3 + 280) = v4;
  *(a3 + 288) = 0;
  *(a3 + 48) = a2;
  *(a3 + 56) = 11;
  return result;
}

double sub_237EA2120@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 32) = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  v5 = MEMORY[0x277D84F90];
  *(a3 + 144) = 0;
  *(a3 + 64) = 11;
  *(a3 + 72) = v5;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 80) = v5;
  *(a3 + 104) = 0;
  *(a3 + 112) = v5;
  *(a3 + 120) = 0x7FF8000000000000;
  result = 0.0;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0x3FF0000000000000;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
  *(a3 + 208) = 0;
  *(a3 + 216) = v5;
  *(a3 + 224) = 0;
  *(a3 + 232) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = v5;
  *(a3 + 256) = v5;
  *(a3 + 264) = v5;
  *(a3 + 272) = v5;
  *(a3 + 280) = v5;
  *(a3 + 288) = v5;
  *(a3 + 296) = 0;
  *(a3 + 48) = v4;
  *(a3 + 56) = a2;
  return result;
}

double sub_237EA21A0@<D0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(a3, __src, 0x48uLL);
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  v5 = MEMORY[0x277D84F90];
  *(a3 + 88) = MEMORY[0x277D84F90];
  *(a3 + 96) = v5;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = v5;
  *(a3 + 136) = 0x7FF8000000000000;
  result = 0.0;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 208) = 0;
  *(a3 + 216) = 0;
  *(a3 + 200) = 0x3FF0000000000000;
  *(a3 + 224) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 232) = v5;
  *(a3 + 256) = 0;
  *(a3 + 264) = v5;
  *(a3 + 272) = v5;
  *(a3 + 280) = v5;
  *(a3 + 288) = v5;
  *(a3 + 296) = v5;
  *(a3 + 304) = v5;
  *(a3 + 312) = 0;
  *(a3 + 72) = a2;
  *(a3 + 80) = 11;
  return result;
}

uint64_t sub_237EA2238(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(result + 16);
    if (v2 >= v3)
    {
      v4 = *(result + 16);
    }

    else
    {
      v4 = *(a2 + 16);
    }

    if (v4 >= v2 - 1)
    {
      v4 = v2 - 1;
    }

    if (v3 == v4)
    {
      __break(1u);
    }

    else
    {
      v5 = (result + 32);
      v6 = (a2 + 32);
      v7 = 0.0;
      do
      {
        v8 = *v5++;
        v9 = fabs(v8);
        v10 = *v6++;
        v7 = v7 + v9 * (v10 * v9);
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void sub_237EA229C(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = result[1];
    if (v2 <= *(v4 + 16))
    {
      v6 = *result;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237E643FC(v4, v7, v8, v9);
        v4 = v10;
      }

      v11 = 0;
      v12 = a2 + 32;
      v13 = v6 + 32;
      v14 = *(v6 + 16);
      while (v2 != v11)
      {
        if (v14 == v11)
        {
          goto LABEL_13;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_5_92(*(v12 + 8 * v11), *(v13 + 8 * v11));
        if (v2 == v15)
        {
          result[1] = v4;
          return;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
    }

    __break(1u);
  }
}

void sub_237EA2358()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 80);
  if ((v1 * v2) >> 64 != (v1 * v2) >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = sub_237E613EC(v1 * v2, 0.0);

  *(v0 + 208) = v1;
  *(v0 + 216) = v2;
  *(v0 + 224) = 1;
  *(v0 + 232) = v3;
  v4 = sub_237E613EC(v1 * v2, 0.0);

  *(v0 + 240) = v1;
  *(v0 + 248) = v2;
  *(v0 + 256) = 1;
  *(v0 + 264) = v4;
  if (v1 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_237C62CCC(v1, 0.0);
  v6 = v5;

  *(v0 + 272) = v6;
  if ((v2 & 0x8000000000000000) == 0)
  {
    sub_237C62CCC(v2, 0.0);
    v8 = v7;

    *(v0 + 280) = v8;
    sub_237C62CCC(v2, 0.0);
    v10 = v9;

    *(v0 + 288) = v10;

    *(v0 + 296) = MEMORY[0x277D84F90];
    sub_237C62CCC(v1, 0.0);
    v12 = v11;

    *(v0 + 304) = v12;
    *(v0 + 312) = 0;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_237EA2484()
{
  v1 = *(v0 + 72);
  sub_237EA229C((v0 + 88), v1);
  v2 = *(v0 + 96);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 200);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237E643FC(v2, v5, v6, v7);
      v2 = v8;
    }

    v9 = 0;
    v10 = *(v2 + 16);
    while (v9 < v10)
    {
      *(v2 + 8 * v9 + 32) = v4 * *(v2 + 8 * v9 + 32);
      if (v3 == ++v9)
      {
        *(v0 + 96) = v2;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    sub_237EA2238(*(v0 + 88), v1);
    *(v0 + 144) = *(v0 + 200) * (v11 + *(v0 + 144));
  }
}

uint64_t sub_237EA2540(uint64_t a1)
{
  v2 = v1;
  v24 = *MEMORY[0x277D85DE8];
  memcpy(__dst, v1, sizeof(__dst));
  v4 = *(v1 + 72);
  v6 = *(v1 + 144);
  v5 = *(v1 + 152);
  v7 = *(v1 + 88);
  v8 = *(v2 + 96);
  memcpy(&__src[3], v2, 0x48uLL);
  *(&__src[8] + 1) = v6;
  __src[0] = xmmword_237F1D6A0;
  __src[1] = xmmword_237F1D6B0;
  BYTE10(__src[16]) = 1;
  *(&__src[2] + 1) = 20;
  *(&__src[7] + 1) = v4;
  *&__src[8] = v7;
  *&__src[9] = a1;
  if (v5 < 0.000000001 || v5 > 25.0)
  {
    __break(1u);
    goto LABEL_13;
  }

  *&__src[16] = 0x4038FFFFFFFBB47DLL;
  if (v5 + (v5 + -0.000000001) * 4.0 < 0.000000001)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *&__src[15] = 0x3E112E0BE826D695;
  *(&__src[15] + 1) = v5 + (v5 + -0.000000001) * 4.0;
  swift_retain_n();
  sub_237D81F2C(__dst, v21);
  v10 = sub_237C65348();

  v11 = DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EAB79C, a1, v8, MEMORY[0x277D839F8], MEMORY[0x277D839F8], v10);
  if (v21[0] >= 1.0e-10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(&__src[10] + 1) = 0x3E112E0BE826D695;
  *&__src[11] = v6;
  *(&__src[11] + 1) = v21[0];
  *&__src[12] = 0x3E112E0BE826D695;
  *(&__src[12] + 1) = v6;
  *&__src[13] = v21[0];
  *(&__src[13] + 1) = v5;
  __src[14] = v6;
  memset(&__src[18], 0, 17);
  *&__src[21] = 0;
  BYTE8(__src[21]) = 0;
  __src[20] = 0x7FF8000000000000uLL;
  *(&__src[19] + 1) = MEMORY[0x277D84F90];
  *&__src[17] = v7;
  *(&__src[17] + 1) = v8;
  WORD4(__src[16]) = 256;
  *(&__src[9] + 8) = vmulq_n_f64(xmmword_237F1D6A0, v21[0]);
  BYTE8(__src[22]) = 0;
  __src[23] = 0uLL;
  *&__src[22] = v5;
  *&__src[2] = *(v2 + 200);
  *(v2 + 152) = sub_237EA3A78(v11);
  v14 = *(v2 + 176);
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  *(v2 + 176) = v17;
  v18 = *(v2 + 184);
  v16 = __OFADD__(v18, v13);
  v19 = v18 + v13;
  if (v16)
  {
    goto LABEL_16;
  }

  *(v2 + 184) = v19;
  if ((v12 & 1) == 0)
  {
    *(v2 + 160) = 1;
  }

  memcpy(v21, __src, sizeof(v21));
  return sub_237C9A114(v21, &qword_27DEB64F0, &qword_237F1DAB8);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_237EA2810(uint64_t a1, double a2)
{
  v4 = a2;
  v3[2] = &v4;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8, &qword_237F1ABB0);
  DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7E4, v3, v2, MEMORY[0x277D84F78] + 8);
}

void sub_237EA289C()
{
  v2 = v0[21];
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_33;
  }

  v5 = v0;
  v6 = v0[10];
  if (!v6)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v4 == 0x8000000000000000 && v6 == -1)
  {
    goto LABEL_36;
  }

  v8 = v1;
  v9 = v4 % v6;
  v10 = v0[33];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 264) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_237E643FC(v10, v12, v13, v14);
    v10 = v15;
    *(v5 + 264) = v15;
  }

  v16 = *(v5 + 240);
  if (*(v5 + 256))
  {
    v17 = v9 * v16;
    if ((v9 * v16) >> 64 != (v9 * v16) >> 63)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v18 = 1;
  }

  else
  {
    v18 = *(v5 + 248);
    v17 = v9;
  }

  sub_237EA2E7C(v10 + 32 + 8 * v17, v16, v18, v5);
  *(v5 + 264) = v10;
  v19 = *(v5 + 232);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 232) = v19;
  if ((v20 & 1) == 0)
  {
    sub_237E643FC(v19, v21, v22, v23);
    v19 = v24;
    *(v5 + 232) = v24;
  }

  v25 = *(v5 + 208);
  if (*(v5 + 224))
  {
    v26 = v9 * v25;
    if ((v9 * v25) >> 64 != (v9 * v25) >> 63)
    {
LABEL_38:
      __break(1u);
      return;
    }

    v27 = 1;
  }

  else
  {
    v27 = *(v5 + 216);
    v26 = v9;
  }

  v28 = sub_237EA2ED4(v19 + 32 + 8 * v26, v25, v27, v5);
  *(v5 + 232) = v19;
  v29 = *(v5 + 296);
  MEMORY[0x28223BE20](v28);
  v48 = v5;
  v49 = v9;
  v30 = sub_237C65348();

  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EAB6A8, v47, v29, MEMORY[0x277D839F8], MEMORY[0x277D839F8], v30);
  v31 = v8;

  v32 = *&v50[3];
  v33 = *(v5 + 280);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643FC(v33, v34, v35, v36);
    v33 = v37;
  }

  if (v9 < 0)
  {
    goto LABEL_34;
  }

  if (v9 >= *(v33 + 16))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v33 + 8 * v9 + 32) = 1.0 / v32;
  *(v5 + 280) = v33;
  v38 = *(v5 + 96);

  *(v5 + 272) = v38;
  MEMORY[0x28223BE20](v39);
  v48 = v5;
  v49 = v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8, &qword_237F1ABB0);
  v41 = MEMORY[0x277D84F78];
  DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB6C4, v47, v40, MEMORY[0x277D84F78] + 8);
  memcpy(v51, v5, 0x139uLL);
  if (!sub_237EA38B0())
  {
    if (v51[19] < 1.0)
    {
      *(v5 + 152) = fmin(v51[19] * 1.25, 1.0);
    }

    goto LABEL_30;
  }

  v42 = *&v51[34];
  v43 = *(*&v51[34] + 16);
  if (v43)
  {
    v44 = sub_237EF89B0();
    *(v44 + 16) = v43;
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  v50[0] = v44 + 32;
  v50[1] = v43;
  v50[2] = 1;
  sub_237EAAD58(v50, v42);
  *(v44 + 16) = v43;
  sub_237EA2540(v44);

  if (!v31)
  {
LABEL_30:
    v45 = *(v5 + 272);
    sub_237EA2810(v45, -*(v5 + 152));
    v46 = v45;

    *(v5 + 296) = v46;
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7CC, v46, v40, v41 + 8);
  }
}

void *sub_237EA2C78()
{
  v1 = *(v0 + 296);
  v2 = MEMORY[0x277D839F8];
  v3 = sub_237C65348();
  KeyPath = swift_getKeyPath();
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EAB68C, KeyPath, v1, v2, v2, v3);

  if (v8 <= 4.93038066e-32)
  {
    v6 = 0;
LABEL_6:
    sub_237DC6AD0();
    swift_allocError();
    *v7 = v6;
    return swift_willThrow();
  }

  result = DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EAB5E0, 0, v1, MEMORY[0x277D839F8], MEMORY[0x277D839B0], v3);
  if (LOBYTE(v8) != 1)
  {
    v6 = 1;
    goto LABEL_6;
  }

  return result;
}

double sub_237EA2DC0(double a1, double a2, double a3, double a4)
{
  v4 = a4 - (a2 - a1 + a2 - a1) + a3;
  v5 = (a2 - a1) * 3.0 - a4 - (a3 + a3);
  if (a2 >= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 1.0;
  v8 = 0.0;
  if (a1 >= a2)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = 32;
  do
  {
    v11 = (v7 + v8) * 0.5;
    v12 = v11 * (v11 * (v5 + v4 * v11) + a3) + a1;
    if (v12 < v6)
    {
      v9 = (v7 + v8) * 0.5;
    }

    if (v7 - v8 < 0.000001)
    {
      break;
    }

    if (v12 < v6)
    {
      v6 = v11 * (v11 * (v5 + v4 * v11) + a3) + a1;
    }

    if (v11 * (v5 + v5 + v4 * 3.0 * v11) + a3 <= 0.0)
    {
      v8 = (v7 + v8) * 0.5;
    }

    else
    {
      v7 = (v7 + v8) * 0.5;
    }

    --v10;
  }

  while (v10);
  return v9;
}

uint64_t sub_237EA2E7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v4 = 0;
    while (1)
    {
      v5 = *(a4 + 296);
      if (v4 >= *(v5 + 16))
      {
        break;
      }

      if ((v4 * a3) >> 64 != (v4 * a3) >> 63)
      {
        goto LABEL_9;
      }

      *(result + 8 * v4 * a3) = *(v5 + 8 * v4 + 32);
      if (a2 == ++v4)
      {
        return result;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_237EA2ED4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (a2)
  {
    for (i = 4; ; ++i)
    {
      v5 = i - 4;
      v6 = *(a4 + 96);
      if ((i - 4) >= *(v6 + 16))
      {
        break;
      }

      v7 = *(a4 + 304);
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_10;
      }

      if ((v5 * a3) >> 64 != (v5 * a3) >> 63)
      {
        goto LABEL_11;
      }

      *(result + 8 * v5 * a3) = *(v6 + 8 * i) - *(v7 + 8 * i);
      if (!--a2)
      {
        return result;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_237EA2F44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  v8 = *(a4 + 208);
  if ((*(a4 + 224) & 1) == 0)
  {
    v9 = *(a4 + 216);
    goto LABEL_5;
  }

  if ((a5 * v8) >> 64 == (a5 * v8) >> 63)
  {
    v9 = 1;
    a5 *= v8;
LABEL_5:
    v10 = *(a4 + 232) + 8 * a5;

    sub_237EA3000(v7, a2, a3, v10 + 32, v8, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_237EA3000(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != a5)
  {
    goto LABEL_25;
  }

  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
    __break(1u);
    goto LABEL_23;
  }

  v6 = a2 * a6;
  if ((a2 * a6) >> 64 != (a2 * a6) >> 63)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000050, 0x8000000237EFEBF0);
    v14 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v14);

    MEMORY[0x2383E0710](0x20646E6120, 0xE500000000000000);
    v15 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v15);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    result = sub_237EF9740("Fatal error", 11, 2, 0, 0xE000000000000000, "LinearAlgebra/UnsafeVectorOperations.swift", 42, 2, 78);
    __break(1u);
    return result;
  }

  if (!a3 || !a6)
  {
    goto LABEL_24;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0.0;
  v10 = a2 * a3;
  while (1)
  {
    v11 = v10 >= v8;
    if (a3 > 0)
    {
      v11 = v8 >= a2 * a3;
      v10 = a2 * a3;
    }

    if (v11)
    {
      break;
    }

    v12 = v8 + a3;
    if (__OFADD__(v8, a3))
    {
      v12 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    if (a6 <= 0)
    {
      if (v6 >= v7)
      {
        return result;
      }
    }

    else if (v7 >= v6)
    {
      return result;
    }

    v13 = *(a4 + 8 * v7);
    if (__OFADD__(v7, a6))
    {
      v7 = ((v7 + a6) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v7 += a6;
    }

    v9 = v9 + *(result + 8 * v8) * v13;
    v8 = v12;
  }

  return result;
}

void sub_237EA31E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a4 + 80) >= *(a4 + 168))
  {
    v5 = *(a4 + 168);
  }

  else
  {
    v5 = *(a4 + 80);
  }

  if (v5 < 0)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v5)
  {
    v8 = 0;
    do
    {
      v9 = *(a4 + 80);
      v10 = a5 + v9;
      if (__OFADD__(a5, v9))
      {
        goto LABEL_70;
      }

      v11 = __OFSUB__(v10, v8);
      v12 = v10 - v8;
      if (v11)
      {
        goto LABEL_71;
      }

      if (!v9)
      {
        goto LABEL_72;
      }

      if (v12 == 0x8000000000000000 && v9 == -1)
      {
        goto LABEL_75;
      }

      v14 = v12 % v9;
      v15 = *(a4 + 240);
      if (*(a4 + 256))
      {
        v16 = v14 * v15;
        if ((v14 * v15) >> 64 != (v14 * v15) >> 63)
        {
          goto LABEL_76;
        }

        v17 = 1;
      }

      else
      {
        v17 = *(a4 + 248);
        v16 = v12 % v9;
      }

      v18 = *(a4 + 264) + 32 + 8 * v16;
      sub_237E61C54(v14, *(a4 + 280));
      v20 = v19;

      sub_237EA3000(v18, v15, v17, a1, a2, a3);
      v22 = v21;
      v23 = *(a4 + 288);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a4 + 288) = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_237E643FC(v23, v25, v26, v27);
        v23 = v28;
        *(a4 + 288) = v28;
      }

      if (v14 < 0)
      {
        goto LABEL_73;
      }

      if (v14 >= *(v23 + 16))
      {
        goto LABEL_74;
      }

      *(v23 + 8 * v14 + 32) = v20 * v22;

      v29 = *(a4 + 208);
      if (*(a4 + 224))
      {
        v30 = v14 * v29;
        if ((v14 * v29) >> 64 != (v14 * v29) >> 63)
        {
          goto LABEL_77;
        }

        v31 = 1;
      }

      else
      {
        v31 = *(a4 + 216);
        v30 = v14;
      }

      ++v8;
      v32 = *(a4 + 232) + 32 + 8 * v30;
      sub_237E61C54(v14, *(a4 + 288));
      v34 = -v33;

      sub_237EA35FC(v32, v29, v31, a1, a2, a3, v34);
    }

    while (v5 != v8);
  }

  v35 = *(a4 + 208);
  if (*(a4 + 224))
  {
    v36 = a5 * v35;
    if ((a5 * v35) >> 64 != (a5 * v35) >> 63)
    {
LABEL_82:
      __break(1u);
      return;
    }

    v37 = 1;
  }

  else
  {
    v37 = *(a4 + 216);
    v36 = a5;
  }

  sub_237EA37E4(*(a4 + 232) + 32 + 8 * v36, v35, v37);
  if (a5 < 0)
  {
    goto LABEL_79;
  }

  v39 = *(a4 + 280);
  if (*(v39 + 16) <= a5)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  sub_237EA384C(a1, a2, a3, 1.0 / (v38 * *(v39 + 8 * a5 + 32)));
  if (*(a4 + 80) >= *(a4 + 168))
  {
    v40 = *(a4 + 168);
  }

  else
  {
    v40 = *(a4 + 80);
  }

  if (v40 < 0)
  {
    goto LABEL_81;
  }

  if (v40)
  {
    v41 = v40;
    while (v40 >= v41)
    {
      v42 = *(a4 + 80);
      v43 = a5 + v42;
      if (__OFADD__(a5, v42))
      {
        goto LABEL_61;
      }

      v11 = __OFSUB__(v43, --v41);
      v44 = v43 - v41;
      if (v11)
      {
        goto LABEL_62;
      }

      if (!v42)
      {
        goto LABEL_63;
      }

      if (v44 == 0x8000000000000000 && v42 == -1)
      {
        goto LABEL_67;
      }

      v46 = a5;
      v47 = v44 % v42;
      if (v44 % v42 < 0)
      {
        goto LABEL_64;
      }

      v48 = *(a4 + 280);
      if (v47 >= *(v48 + 16))
      {
        goto LABEL_65;
      }

      v49 = *(v48 + 8 * v47 + 32);
      v50 = *(a4 + 208);
      if (*(a4 + 224))
      {
        v51 = v47 * v50;
        if ((v47 * v50) >> 64 != (v47 * v50) >> 63)
        {
          goto LABEL_68;
        }

        v52 = 1;
      }

      else
      {
        v52 = *(a4 + 216);
        v51 = v47;
      }

      v53 = *(a4 + 232) + 32 + 8 * v51;

      sub_237EA3000(v53, v50, v52, a1, a2, a3);
      v55 = v54;

      v56 = *(a4 + 240);
      if (*(a4 + 256))
      {
        v57 = v47 * v56;
        if ((v47 * v56) >> 64 != (v47 * v56) >> 63)
        {
          goto LABEL_69;
        }

        v58 = 1;
      }

      else
      {
        v58 = *(a4 + 248);
        v57 = v47;
      }

      v59 = *(a4 + 288);
      if (v47 >= *(v59 + 16))
      {
        goto LABEL_66;
      }

      v60 = *(a4 + 264) + 32 + 8 * v57;
      v61 = *(v59 + 8 * v47 + 32) - v49 * v55;

      sub_237EA35FC(v60, v56, v58, a1, a2, a3, v61);

      a5 = v46;
      if (!v41)
      {
        return;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }
}

uint64_t sub_237EA35FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  if (a5 != a2)
  {
    goto LABEL_25;
  }

  if ((a5 * a6) >> 64 != (a5 * a6) >> 63)
  {
    __break(1u);
    goto LABEL_23;
  }

  v7 = a5 * a3;
  if ((a5 * a3) >> 64 != (a5 * a3) >> 63)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000041, 0x8000000237F018D0);
    v14 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v14);

    MEMORY[0x2383E0710](0x20646E6120, 0xE500000000000000);
    v15 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v15);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    result = sub_237EF9740("Fatal error", 11, 2, 0, 0xE000000000000000, "LinearAlgebra/UnsafeVectorOperations.swift", 42, 2, 53);
    __break(1u);
    return result;
  }

  if (!a3 || !a6)
  {
    goto LABEL_24;
  }

  v8 = 0;
  v9 = 0;
  v10 = a5 * a6;
  while (1)
  {
    v11 = v10 >= v9;
    if (a6 > 0)
    {
      v11 = v9 >= a5 * a6;
      v10 = a5 * a6;
    }

    if (v11)
    {
      break;
    }

    v12 = v9 + a6;
    if (__OFADD__(v9, a6))
    {
      v12 = (a6 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    if (a3 <= 0)
    {
      if (v7 >= v8)
      {
        return result;
      }
    }

    else if (v8 >= v7)
    {
      return result;
    }

    v13 = *(result + 8 * v8);
    if (__OFADD__(v8, a3))
    {
      v8 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v8 += a3;
    }

    *(a4 + 8 * v9) = *(a4 + 8 * v9) + v13 * a7;
    v9 = v12;
  }

  return result;
}

uint64_t sub_237EA37E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 * a3;
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v4 = 0;
  for (i = 0.0; ; i = i + v7 * v7)
  {
    v6 = v3 >= v4;
    if (a3 > 0)
    {
      v6 = v4 >= v3;
    }

    if (v6)
    {
      break;
    }

    v7 = *(result + 8 * v4);
    if (__OFADD__(v4, a3))
    {
      v4 = ((v4 + a3) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v4 += a3;
    }
  }

  return result;
}

uint64_t sub_237EA384C(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a2 * a3;
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = 0;
  while (1)
  {
    v6 = v4 >= v5;
    if (a3 > 0)
    {
      v6 = v5 >= v4;
    }

    if (v6)
    {
      break;
    }

    *(result + 8 * v5) = *(result + 8 * v5) * a4;
    if (__OFADD__(v5, a3))
    {
      v5 = ((v5 + a3) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v5 += a3;
    }
  }

  return result;
}

BOOL sub_237EA38B0()
{
  if ((*(v0 + 312) & 1) != 0 || !*(v0 + 168) || *(v0 + 192) < *(v0 + 144))
  {
    return 1;
  }

  v2 = *(v0 + 96);
  v3 = *(v0 + 304);
  v4 = sub_237C65348();
  v5 = MEMORY[0x277D839F8];
  v6 = DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EAB79C, v3, v2, MEMORY[0x277D839F8], MEMORY[0x277D839F8], v4);
  MEMORY[0x28223BE20](v6);
  KeyPath = swift_getKeyPath();
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EAB784, KeyPath, v2, v5, v5, v4);

  MEMORY[0x28223BE20](v8);
  v9 = swift_getKeyPath();
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EAB784, v9, v3, v5, v5, v4);

  return v10 * 0.9 * v10 < v10 * v10;
}

double sub_237EA3A78(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 368);
  if (v3 >= *(v1 + 40))
  {
LABEL_43:
    if (qword_27DEAD0C8 != -1)
    {
      goto LABEL_52;
    }

    goto LABEL_44;
  }

  v4 = *(v1 + 216);
  v56 = (v1 + 272);
  while (1)
  {
    v5 = *(v2 + 128);
    v6 = *(v2 + 144);
    v59 = *&v6;
    v58 = v4;
    MEMORY[0x28223BE20](a1);
    v55 = &v58;

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8, &qword_237F1ABB0);
    v8 = MEMORY[0x277D84F78];
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7E4, v54, v7, MEMORY[0x277D84F78] + 8);
    v9 = *&v59;
    v59 = v5;
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7CC, v9, v7, v8 + 8);
    v10 = v56;

    v11 = v59;

    *(v2 + 272) = v11;
    v12 = memcpy(__dst, (v2 + 48), 0x48uLL);
    MEMORY[0x28223BE20](v12);
    v55 = __dst;
    MEMORY[0x28223BE20](v13);
    v53[2] = v10;
    v53[3] = sub_237EAB754;
    v53[4] = v14;
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB76C, v53, v7, v8 + 8);
    *(v2 + 368) = v3 + 1;
    v15 = *(v2 + 376);
    if (__OFADD__(v15, 1))
    {
      break;
    }

    *(v2 + 376) = v15 + 1;
    v16 = *(v2 + 120);
    sub_237EA229C(v10, v16);
    v17 = sub_237EA2238(*(v2 + 272), v16);
    v19 = v18 + *(v2 + 328);
    *(v2 + 224) = v19;
    v20 = *(v2 + 32);
    if (v20 != 1.0)
    {
      v19 = v19 * v20;
      *(v2 + 224) = v19;
      v59 = v20;
      MEMORY[0x28223BE20](v17);
      v55 = &v59;
      DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7E4, v54, v7, MEMORY[0x277D84F78] + 8);
    }

    v21 = *(v2 + 280);
    v22 = sub_237C65348();
    DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EAB79C, v6, v21, MEMORY[0x277D839F8], MEMORY[0x277D839F8], v22);
    v23 = v59;
    *(v2 + 232) = v59;
    *&v24 = *(v2 + 152);
    v57 = v24;
    v25 = v4 * *&v24;
    v26 = *(v2 + 136) + v4 * *&v24;
    if (sub_237EA4088(v26))
    {
      *(v2 + 352) = v4;
      return v4;
    }

    if ((*(v2 + 265) & 1) == 0)
    {
      goto LABEL_18;
    }

    if (v19 <= v26 && *(v2 + 160) <= v23)
    {
      *(v2 + 265) = 0;
LABEL_18:
      *&a1 = COERCE_DOUBLE(sub_237EA42D0());
      if (v36)
      {
        v35 = *(v2 + 168);
        *(v2 + 266) = 0;
      }

      else
      {
        v35 = *&a1;
      }

      goto LABEL_23;
    }

    v27 = *(v2 + 176);
    if (v19 > v27 || v26 >= v19)
    {
      goto LABEL_18;
    }

    v29 = *&v57;
    v30 = *(v2 + 192);
    v31 = *(v2 + 184) - *&v57;
    *(v2 + 176) = v27 - *&v57 * *(v2 + 168);
    *(v2 + 184) = v31;
    v32.f64[0] = v29 * v30;
    v32.f64[1] = v29;
    *(v2 + 200) = vsubq_f64(*(v2 + 200), v32);
    *(v2 + 224) = v19 - v25;
    *(v2 + 232) = v23 - v29;
    *&a1 = COERCE_DOUBLE(sub_237EA42D0());
    if (v33)
    {
      v34 = *(v2 + 168);
      *(v2 + 266) = 0;
      v35 = v34;
    }

    else
    {
      v35 = *&a1;
      v34 = *(v2 + 168);
    }

    v37 = *(v2 + 152);
    v38.f64[0] = v34 * v37;
    v38.f64[1] = v37;
    *(v2 + 176) = vaddq_f64(*(v2 + 176), v38);
    v38.f64[0] = v37 * *(v2 + 192);
    v38.f64[1] = v37;
    *(v2 + 200) = vaddq_f64(*(v2 + 200), v38);
LABEL_23:
    v39 = *(v2 + 264);
    if (v39 == 1)
    {
      v40 = *(v2 + 192);
      v41 = *(v2 + 168);
      v42 = vabdd_f64(v40, v41);
      v43 = *(v2 + 256);
      *(v2 + 256) = v42;
      if (v40 >= v41)
      {
        v44 = v41;
      }

      else
      {
        v44 = v40;
      }

      if (v41 > v40)
      {
        v45 = v41;
      }

      else
      {
        v45 = v40;
      }

      if (v44 > v45)
      {
        goto LABEL_51;
      }

      v46 = v41 + (v40 - v41) * 0.5;
      if (v43 * 1.33333333 <= v42)
      {
        v35 = v46;
      }
    }

    else
    {
      v41 = *(v2 + 168);
      v45 = v35 + (v35 - v41) * 4.0;
      v44 = v41;
      if (v41 > v45)
      {
        goto LABEL_50;
      }
    }

    *(v2 + 240) = v44;
    *(v2 + 248) = v45;
    v47 = *(v2 + 24);
    if (v35 <= v47)
    {
      v35 = *(v2 + 24);
    }

    if (*(v2 + 16) < v35)
    {
      v35 = *(v2 + 16);
    }

    if ((v39 & (v45 - v44 <= v47)) != 0)
    {
      v4 = v41;
    }

    else
    {
      v4 = v35;
    }

    *(v2 + 216) = v4;
    v3 = *(v2 + 368);
    if (v3 >= *(v2 + 40))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  swift_once();
LABEL_44:
  v48 = sub_237EF7DB0();
  __swift_project_value_buffer(v48, qword_27DEE2458);
  v49 = sub_237EF7D90();
  v50 = sub_237EF8F80();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_237C51000, v49, v50, "The optimizer reached the function evaluation limit when adjusting the step size.", v51, 2u);
    MEMORY[0x2383E2DF0](v51, -1, -1);
  }

  v4 = *(v2 + 168);
  *(v2 + 352) = v4;
  *(v2 + 360) = 1;
  return v4;
}

BOOL sub_237EA4038(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  if ((a2 * a3) >> 64 == (a2 * a3) >> 63)
  {
    v3 = 0;
    v4 = 8 * a3 * a2;
    while (v4 != v3 && (~*(result + v3) & 0x7FF0000000000000) != 0)
    {
      v3 += 8 * a3;
    }

    return v4 == v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237EA4088(double a1)
{
  v2 = v1;
  if (*(v1 + 264) == 1 && ((v3 = *(v1 + 216), v3 <= *(v1 + 240)) || *(v1 + 248) <= v3) || *(v1 + 266) != 1)
  {
    if (qword_27DEAD0C8 != -1)
    {
      swift_once();
    }

    v7 = sub_237EF7DB0();
    __swift_project_value_buffer(v7, qword_27DEE2458);
    v8 = sub_237EF7D90();
    v9 = sub_237EF8F80();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_19;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Failed to find a suitable step size. Tolerances may be too small or dataset may be poorly scaled. This typically happens when the number of features is much larger than the number of training examples. Consider pruning features manually or increasing the regularization value.";
    goto LABEL_18;
  }

  v4 = *(v1 + 216);
  if (*(v1 + 16) <= v4 && *(v1 + 224) <= a1 && *(v1 + 232) <= *(v1 + 152))
  {
LABEL_27:
    v12 = 1;
    goto LABEL_20;
  }

  v5 = *(v1 + 24);
  if ((v4 > v5 || *(v1 + 224) <= a1 && *(v1 + 152) > *(v1 + 232)) && (!*(v1 + 264) || *(v1 + 248) - *(v1 + 240) > v5))
  {
    if (*(v1 + 224) > a1 || fabs(*(v1 + 232)) > -*(v1 + 160))
    {
      return 0;
    }

    goto LABEL_27;
  }

  if (qword_27DEAD0C8 != -1)
  {
    swift_once();
  }

  v13 = sub_237EF7DB0();
  __swift_project_value_buffer(v13, qword_27DEE2458);
  v8 = sub_237EF7D90();
  v9 = sub_237EF8F80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Reached the minimum allowed step size.";
LABEL_18:
    _os_log_impl(&dword_237C51000, v8, v9, v11, v10, 2u);
    MEMORY[0x2383E2DF0](v10, -1, -1);
  }

LABEL_19:

  v12 = 0;
LABEL_20:
  *(v2 + 360) = v12;
  return 1;
}

uint64_t sub_237EA42D0()
{
  v1 = *(v0 + 216) - *(v0 + 168);
  v2 = *(v0 + 184);
  if (v2 * v1 >= 1.0e-10)
  {
    return 0;
  }

  v4 = v0;
  v5 = *(v0 + 176);
  v7 = *(v0 + 224);
  v6 = *(v0 + 232);
  v8 = (v5 - v7) / v1;
  v9 = v6 + v2 + v8 * 3.0;
  v10 = fabs(v9);
  v11 = fabs(v2);
  v12 = fabs(v6);
  if (v11 > v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (v10 > v13)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  if (v5 >= v7)
  {
    v17 = sub_237EF8C00();
    if ((sub_237EF8C00() ^ v17))
    {
      *(v4 + 264) = 1;
      memcpy(v24, v4, sizeof(v24));
      v18 = sub_237EA4548(v9, v14);
    }

    else
    {
      if (v12 < v11)
      {
        memcpy(v24, v4, sizeof(v24));
        v16 = sub_237EA45C8(v9, v14);
        v15 = 1;
        goto LABEL_17;
      }

      memcpy(v24, v4, sizeof(v24));
      v18 = sub_237EA46AC();
    }

    v16 = v18;
    v15 = 0;
    goto LABEL_17;
  }

  v15 = 1;
  *(v0 + 264) = 1;
  memcpy(v24, v0, sizeof(v24));
  v16 = sub_237EA44B8(v9, v14, v8);
LABEL_17:
  sub_237EA4764();
  v19 = *(v4 + 248);
  if (v16 < v19)
  {
    v19 = v16;
  }

  if (*(v4 + 240) > v19)
  {
    v19 = *(v4 + 240);
  }

  if (v15 && *(v4 + 264))
  {
    v20 = *(v4 + 192);
    v21 = *(v4 + 168);
    v22 = v21 + (v20 - v21) * 0.666666667;
    if (v22 > v19)
    {
      v23 = v21 + (v20 - v21) * 0.666666667;
    }

    else
    {
      v23 = v19;
    }

    if (v19 >= v22)
    {
      v19 = v21 + (v20 - v21) * 0.666666667;
    }

    if (v21 >= v20)
    {
      v19 = v23;
    }
  }

  return *&v19;
}

double sub_237EA44B8(double a1, double a2, double a3)
{
  v4 = v3[21];
  v5 = v3[23];
  v6 = v3[27];
  v7 = v3[29];
  v8 = sqrt(a1 / a2 * (a1 / a2) - v5 / a2 * (v7 / a2)) * a2;
  v9 = -v8;
  if (v6 >= v4)
  {
    v9 = v8;
  }

  result = v4 + (v6 - v4) * ((v9 - v5 + a1) / (v7 + v9 + v9 - v5));
  v11 = v4 + (v6 - v4) * (v5 / (v5 + a3) * 0.5);
  v12 = vabdd_f64(result, v4);
  v13 = vabdd_f64(v11, v4);
  v14 = (v11 + result) * 0.5;
  if (v12 >= v13)
  {
    return v14;
  }

  return result;
}

double sub_237EA4548(double a1, double a2)
{
  v3 = v2[21];
  v4 = v2[23];
  v5 = v2[27];
  v6 = v2[29];
  v7 = sqrt(a1 / a2 * (a1 / a2) - v4 / a2 * (v6 / a2)) * a2;
  v8 = -v7;
  if (v3 >= v5)
  {
    v8 = v7;
  }

  result = v5 + (v3 - v5) * ((v8 - v6 + a1) / (v4 + v8 + v8 - v6));
  if (vabdd_f64(v5 + (v3 - v5) * (v6 / (v6 - v4)), v5) >= vabdd_f64(result, v5))
  {
    return v5 + (v3 - v5) * (v6 / (v6 - v4));
  }

  return result;
}

double sub_237EA45C8(double a1, double a2)
{
  v3 = *(v2 + 168);
  v4 = *(v2 + 184);
  v5 = *(v2 + 216);
  v6 = *(v2 + 232);
  v7 = a1 / a2 * (a1 / a2) - v4 / a2 * (v6 / a2);
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = sqrt(v7) * a2;
  v9 = -v8;
  if (v3 >= v5)
  {
    v9 = v8;
  }

  if (fabs(v8) > 1.0e-10 || (v10 = (v9 - v6 + a1) / (v9 + v4 - v6 + v9), v10 >= 0.0))
  {
    if (v3 >= v5)
    {
      result = *(v2 + 240);
    }

    else
    {
      result = *(v2 + 248);
    }
  }

  else
  {
    result = v5 + (v3 - v5) * v10;
  }

  v12 = v5 + (v3 - v5) * (v6 / (v6 - v4));
  v13 = vabdd_f64(v5, result);
  v14 = vabdd_f64(v5, v12);
  if (*(v2 + 264))
  {
    v15 = v13 < v14;
  }

  else
  {
    v15 = v14 < v13;
  }

  if (!v15)
  {
    return v12;
  }

  return result;
}

double sub_237EA46AC()
{
  v1 = *(v0 + 216);
  if (*(v0 + 264))
  {
    v2 = *(v0 + 232);
    v3 = *(v0 + 192);
    v4 = *(v0 + 208);
    v5 = v3 - v1;
    v6 = v2 + v4 + (*(v0 + 224) - *(v0 + 200)) * 3.0 / (v3 - v1);
    v7 = fabs(v6);
    v8 = fabs(v4);
    v9 = fabs(v2);
    if (v8 <= v9)
    {
      v8 = v9;
    }

    if (v7 <= v8)
    {
      v7 = v8;
    }

    v10 = v7 * sqrt(v6 / v7 * (v6 / v7) - v4 / v7 * (v2 / v7));
    if (v3 >= v1)
    {
      v11 = v10;
    }

    else
    {
      v11 = -v10;
    }

    return v1 + v5 * ((v6 + v11 - v2) / (v4 + v11 + v11 - v2));
  }

  else if (*(v0 + 168) >= v1)
  {
    return *(v0 + 240);
  }

  else
  {
    return *(v0 + 248);
  }
}

void sub_237EA4764()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 176);
  if (v2 >= v1)
  {
    v3 = *(v0 + 232);
    v4 = sub_237EF8C00();
    v5 = *(v0 + 184);
    if ((sub_237EF8C00() ^ v4))
    {
      *(v0 + 192) = *(v0 + 168);
      *(v0 + 200) = v2;
      *(v0 + 208) = v5;
    }

    *(v0 + 168) = *(v0 + 216);
    *(v0 + 176) = v1;
    *(v0 + 184) = v3;
  }

  else
  {
    *(v0 + 192) = *(v0 + 216);
    *(v0 + 200) = v1;
    *(v0 + 208) = *(v0 + 232);
  }
}

void *sub_237EA47F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[7] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a1;
  v8[6] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8, &qword_237F1ABB0);
  return DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB6E0, v8, v6, MEMORY[0x277D84F78] + 8);
}

void *sub_237EA4880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a10)
{
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a7;
  v12[6] = a8;
  v12[7] = a10;
  v12[8] = a1;
  v12[9] = a2;
  v12[10] = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB62D8, &unk_237F1D540);
  return DenseMatrix.withUnsafeMutableMatrixPointer<A>(_:)(sub_237EAB710, v12, v10, MEMORY[0x277D84F78] + 8);
}

void sub_237EA491C(double a1)
{
  v2 = v1;
  if (*(v1 + 136) >= a1)
  {
    if (qword_27DEAD0C8 != -1)
    {
      swift_once();
    }

    v8 = sub_237EF7DB0();
    __swift_project_value_buffer(v8, qword_27DEE2458);
    sub_237EAAFB8(v1, v9, &qword_27DEB6360, &qword_237F1D748);
    v4 = sub_237EF7D90();
    v5 = sub_237EF8F80();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = *(v2 + 168);
      sub_237C9A114(v2, &qword_27DEB6360, &qword_237F1D748);
      v7 = "The optimizer failed to converge after %ld iterations.";
      goto LABEL_10;
    }

LABEL_11:
    sub_237C9A114(v2, &qword_27DEB6360, &qword_237F1D748);
    goto LABEL_12;
  }

  if (qword_27DEAD0C8 != -1)
  {
    swift_once();
  }

  v3 = sub_237EF7DB0();
  __swift_project_value_buffer(v3, qword_27DEE2458);
  sub_237EAAFB8(v1, v9, &qword_27DEB6360, &qword_237F1D748);
  v4 = sub_237EF7D90();
  v5 = sub_237EF8F70();
  if (!os_log_type_enabled(v4, v5))
  {
    goto LABEL_11;
  }

  v6 = swift_slowAlloc();
  *v6 = 134217984;
  *(v6 + 4) = *(v2 + 168);
  sub_237C9A114(v2, &qword_27DEB6360, &qword_237F1D748);
  v7 = "The optimizer converged after %ld iterations.";
LABEL_10:
  _os_log_impl(&dword_237C51000, v4, v5, v7, v6, 0xCu);
  MEMORY[0x2383E2DF0](v6, -1, -1);
LABEL_12:
}

void LinearSupportVectorClassifier.Configuration.init()(uint64_t a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  *(a1 + 8) = 10;
  *(a1 + 16) = 0x3F847AE147AE147BLL;
  *(a1 + 24) = 1;
}

double LinearSupportVectorClassifier.configuration.getter@<D0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

double LinearSupportVectorClassifier.configuration.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *v1 = *a1;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  return result;
}

uint64_t LinearSupportVectorClassifier.labels.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t LinearSupportVectorClassifier.init(labels:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = *(a2 + 24);
  sub_237EF8260();
  v12 = sub_237EF8C70();

  if (v12 == 2)
  {
    *a4 = v8;
    *(a4 + 8) = v9;
    *(a4 + 16) = v10;
    *(a4 + 24) = v11;
    *(a4 + 32) = a1;
  }

  else
  {
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000047, 0x8000000237F017C0);
    sub_237EF8C70();

    v14 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v14);

    MEMORY[0x2383E0710](0x736C6562616C20, 0xE700000000000000);
    v15 = sub_237C84150();
    OUTLINED_FUNCTION_45_0(&type metadata for PipelineDataError, v15);
    *v16 = 0xD00000000000001DLL;
    *(v16 + 8) = 0x8000000237F1D6C0;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0xE000000000000000;
    *(v16 + 32) = 5;
    return swift_willThrow();
  }

  return result;
}

void LinearSupportVectorClassifier.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_19_49();
  v233 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v221 = v15;
  v222 = v16;
  v238 = v17;
  v220 = v18;
  v294 = *MEMORY[0x277D85DE8];
  v19 = *v6;
  v229 = *(v6 + 8);
  v20 = *(v6 + 16);
  v226 = *(v6 + 24);
  v225 = *(v6 + 32);
  v21 = v13[3];
  v252 = v13[2];
  v227 = v21;
  v253 = v21;
  v22 = v13[4];
  v23 = v13[5];
  v235 = v252;
  v236 = v22;
  v254 = v11;
  v255 = v22;
  v24 = v13[6];
  v25 = v13[7];
  v256 = v23;
  v237 = v23;
  v257 = v24;
  v27 = v13[8];
  v26 = v13[9];
  v258 = v25;
  v259 = v27;
  v260 = v26;
  v261 = v9;
  KeyPath = swift_getKeyPath();
  v251[2] = v12;
  v251[3] = v23;
  v228 = v24;
  v251[4] = v24;
  v251[5] = v25;
  v231 = v27;
  v232 = v25;
  v251[6] = v27;
  v251[7] = v26;
  v224 = v26;
  v251[8] = v10;
  v251[9] = KeyPath;
  OUTLINED_FUNCTION_8_8();
  v29 = sub_237EF7E90();
  v234 = v12;
  v230 = v10;
  v31 = sub_237C8FFEC(sub_237CF9EA4, v251, v12, v29, MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v30);

  v239 = v31;
  v32 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  v34 = v32;
  v35 = v235;
  v36 = v236;
  v37 = v237;
  sub_237EDB96C(v247, &v239, v34, v235, WitnessTable, v236, v237);
  if (v7)
  {

    goto LABEL_11;
  }

  v213 = v14;

  v233 = &v210;
  v218 = v247[1];
  v219 = v247[0];
  v217 = v248;
  v223 = v249;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_9_51();
  v40 = v227;
  v39 = v228;
  *(v41 - 80) = v35;
  *(v41 - 72) = v40;
  *(v41 - 64) = v234;
  *(v41 - 56) = v36;
  v42 = v37;
  *(v41 - 48) = v37;
  *(v41 - 40) = v39;
  v44 = v231;
  v43 = v232;
  *(v41 - 32) = v232;
  *(v41 - 24) = v44;
  v45 = v224;
  v46 = v230;
  *(v41 - 16) = v224;
  *(v41 - 8) = v46;
  swift_getKeyPath();
  OUTLINED_FUNCTION_22_42();
  v233 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_9_51();
  v49 = v234;
  *(v50 - 64) = v234;
  *(v50 - 56) = v42;
  *(v50 - 48) = v39;
  *(v50 - 40) = v43;
  *(v50 - 32) = v44;
  *(v50 - 24) = v45;
  v51 = v230;
  *(v50 - 16) = v230;
  *(v50 - 8) = v52;
  v55 = sub_237C8FFEC(sub_237CFA07C, v53, v49, v40, MEMORY[0x277D84A98], v51, MEMORY[0x277D84AC0], v54);
  v238 = 0;

  v268[0] = v55;
  v56 = sub_237EF8A60();
  sub_237EF8260();
  OUTLINED_FUNCTION_1_2();
  v57 = swift_getWitnessTable();
  v58 = sub_237E5E22C(v268, v40, v56, v39, v45, v57);
  v233 = &v210;
  v268[0] = v55;
  MEMORY[0x28223BE20](v58);
  v59 = v234;
  *(&v210 - 12) = v235;
  *(&v210 - 11) = v40;
  v61 = v236;
  v60 = v237;
  *(&v210 - 10) = v59;
  *(&v210 - 9) = v61;
  *(&v210 - 8) = v60;
  *(&v210 - 7) = v39;
  v62 = v231;
  *(&v210 - 6) = v232;
  *(&v210 - 5) = v62;
  v206 = v45;
  v207 = v51;
  v230 = v63;
  v208 = v63;
  v209 = v64;
  v216 = v64;
  OUTLINED_FUNCTION_1_24();
  v65 = swift_getWitnessTable();
  v66 = v238;
  sub_237C9339C(sub_237DDB740, (&v210 - 14), v56, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v65);
  v68 = v67;

  v69 = v218;
  v268[0] = v219;
  v268[1] = v218;
  LOBYTE(v268[2]) = v217;
  v268[3] = v223;

  sub_237EF8260();
  v215 = v68;
  v70 = v68;
  LOBYTE(v68) = v226;
  sub_237D80DD0(v268, v70, v226, v283);
  *&v262[0] = v19;
  *&v262[1] = v229;
  v262[2] = v20;
  v263 = v68;
  v264 = v225;
  memcpy(v267, v283, 0x48uLL);
  sub_237EA5FB4(v268, v267);
  v71 = sub_237E613EC(v69, 0.0);
  v72 = v268[1];
  sub_237EA2358();
  v273 = 1.0;

  v269 = v71;
  if (v72 < 0)
  {
    goto LABEL_108;
  }

  sub_237C62CCC(v72, 0.0);
  v74 = v73;

  v270 = v74;
  memcpy(v293, v268, sizeof(v293));
  OUTLINED_FUNCTION_26_31();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_4_93();
  *(v76 - 16) = v293;
  MEMORY[0x28223BE20](v77);
  v206 = &v269;
  v207 = sub_237D81F94;
  v208 = v78;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8, &qword_237F1ABB0);
  v234 = &v269;
  DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAADBC, (&v210 - 6), v233, MEMORY[0x277D84F78] + 8);
  if (__OFADD__(v276, 1))
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
  }

  ++v276;
  if (__OFADD__(v277, 1))
  {
    goto LABEL_110;
  }

  ++v277;
  OUTLINED_FUNCTION_36_2();
  if (!(v105 ^ v81 | v164))
  {
    LOBYTE(v82) = 0;
    goto LABEL_9;
  }

  v83 = fabs(v80);
  MEMORY[0x28223BE20](v79);
  v84 = MEMORY[0x277D839F8];
  v208 = MEMORY[0x277D839F8];
  v85 = sub_237C65348();
  v209 = v85;
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_33();
  DenseVector.withUnsafeVectorPointer<A>(_:)(v86, v87, v88, v89, v90, v91);

  OUTLINED_FUNCTION_42_19(v267[0]);
  v279 = v83;
  sub_237EA2484();
  v82 = &v210;
  v92 = v270;
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_13_54();
  *(v94 - 16) = v84;
  *(v94 - 8) = v85;
  swift_getKeyPath();
  v95 = OUTLINED_FUNCTION_25_39();
  v214 = v85;
  DenseVector.withUnsafeVectorPointer<A>(_:)(v95, v96, v97, v98, v99, v85);

  v100 = v267[0] / v83;
  v271 = v100;
  OUTLINED_FUNCTION_44_21();
  if (!(v105 ^ v81 | v164))
  {
LABEL_9:

    sub_237D81F64(v283);

    v101 = sub_237DC6AD0();
    OUTLINED_FUNCTION_45_0(&type metadata for OptimizationError, v101);
    *v102 = v82;
    swift_willThrow();

LABEL_10:
    OUTLINED_FUNCTION_34_18(v267);
    sub_237C9A114(v267, &qword_27DEB6360, &qword_237F1D748);
    goto LABEL_11;
  }

  v211 = 0.8;
  v103 = v228;
  v104 = v232;
  while (1)
  {
    v105 = v275 >= v229 || v100 < v20;
    if (v105 || (v274 & 1) != 0)
    {
      break;
    }

    if (v275)
    {
      sub_237EA289C();
      if (v66)
      {
        goto LABEL_95;
      }

      OUTLINED_FUNCTION_34_18(v287);
      sub_237EA2C78();
      v106 = v288;
      v240 = v292;
      v107 = v289;
      v108 = v290;
      v109 = *&v287[12];
      v110 = v287[9];
      v111 = v291;
      v278 = v288;

      v112 = sub_237C9A114(&v240, &qword_27DEB25E8, &qword_237F1ABB0);
      v113 = 0;
      v212 = v109;
      v281 = v109;
      v282 = 0;
      v238 = v110;
      v114 = v110 + 32;
      v115 = 1;
LABEL_21:
      if (v115)
      {
        memcpy(v286, v268, sizeof(v286));
        OUTLINED_FUNCTION_26_31();
        MEMORY[0x28223BE20](v116);
        OUTLINED_FUNCTION_4_93();
        OUTLINED_FUNCTION_32_31(v117);
        MEMORY[0x28223BE20](v118);
        OUTLINED_FUNCTION_20_35();
        v119 = v233;
        *(v120 - 32) = v234;
        *(v120 - 24) = sub_237EAB754;
        *(v120 - 16) = v121;
        DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB76C, v122, v119, MEMORY[0x277D84F78] + 8);
        v81 = __OFADD__(v107++, 1);
        if (v81)
        {
          goto LABEL_103;
        }

        v276 = v107;
        v81 = __OFADD__(v108++, 1);
        if (v81)
        {
          goto LABEL_104;
        }

        v277 = v108;
        v123 = v272;
        OUTLINED_FUNCTION_3_99();
        if (!(v105 ^ v81 | v164))
        {
          goto LABEL_89;
        }

        v124 = *(v238 + 16);
        *&v125 = v270;
        if (v124)
        {
          if (v124 > *(*&v270 + 16))
          {
            goto LABEL_106;
          }

          v126 = v269;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_237E643FC(v125, v127, v128, v129);
            v125 = v130;
          }

          v131 = 0;
          v132 = v126 + 32;
          v133 = *(v238 + 16);
          v134 = *(v126 + 16);
          do
          {
            if (v133 == v131)
            {
              goto LABEL_92;
            }

            if (v134 == v131)
            {
              goto LABEL_93;
            }

            if (v131 >= *(v125 + 16))
            {
              goto LABEL_94;
            }

            OUTLINED_FUNCTION_5_92(*(v114 + 8 * v131), *(v132 + 8 * v131));
          }

          while (v124 != v135);
          v270 = *&v125;
        }

        if (!*(v125 + 16))
        {
          goto LABEL_44;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237E643FC(v125, v136, v137, v138);
          v125 = v139;
        }

        v140 = 0;
        v141 = *(v125 + 16);
        while (v140 < v141)
        {
          OUTLINED_FUNCTION_21_51();
          if (v164)
          {
            v270 = *&v125;
LABEL_44:
            if (*(v238 + 16))
            {
              OUTLINED_FUNCTION_7_76();
              if (v142 != v143)
              {
                v144 = 0.0;
                do
                {
                  v144 = OUTLINED_FUNCTION_6_78(v144);
                }

                while (!v164);
                goto LABEL_51;
              }

LABEL_107:
              __break(1u);
LABEL_108:
              __break(1u);
              goto LABEL_109;
            }

            v144 = 0.0;
LABEL_51:
            v145 = v111 * (v123 + v144);
            v272 = v145;
            if (v113)
            {
              v146 = v106 > v145;
            }

            else
            {
              v146 = 1;
            }

            if (!v146 || v113 >= 3)
            {
              goto LABEL_68;
            }

            v148 = v280;
            OUTLINED_FUNCTION_20_48();
            v149 = v214;
            v112 = DenseVector.withUnsafeVectorPointer<A>(_:)(v150, v151, v152, v153, v154, v214);
            if (v267[0] <= 0.0)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_20_48();
            DenseVector.withUnsafeVectorPointer<A>(_:)(v155, v156, v157, v158, v159, v149);
            v162 = OUTLINED_FUNCTION_35_22(v160, v161, v267[0]);
            if (v162 == v8)
            {
              goto LABEL_68;
            }

            v163 = v162;
            v164 = v162 < 0.1 || v113 == 2;
            if (v164)
            {
              v282 = 1;
            }

            if (v106 <= v145 && v162 >= v211)
            {
LABEL_68:
              v115 = 0;
            }

            else
            {
              v273 = v162 * v273;
              sub_237EA2810(v148, v8 - v162);
              v165 = v233;
              DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB084, v148, v233, MEMORY[0x277D84F78] + 8);

              v267[0] = v163;
              MEMORY[0x28223BE20](v166);
              OUTLINED_FUNCTION_27();
              *(v167 - 16) = v267;
              v112 = DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB0B4, v168, v165, MEMORY[0x277D84F78] + 8);
              v115 = 1;
            }

            v81 = __OFADD__(v113++, 1);
            if (v81)
            {
              goto LABEL_105;
            }

            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:

        sub_237D81F64(v283);
        goto LABEL_101;
      }

      v175 = MEMORY[0x277D839F8];
      v176 = v214;
    }

    else
    {
      v169 = *(*&v92 + 16);
      if (v169)
      {
        v170 = sub_237EF89B0();
        v171 = v170;
        *(v170 + 16) = v169;
        v172 = *(*&v92 + 16);
        v173 = 32;
        v174 = v169;
        do
        {
          if (!v172)
          {
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
            goto LABEL_107;
          }

          *(v170 + v173) = -*(*&v92 + v173);
          --v172;
          v173 += 8;
          --v174;
        }

        while (v174);
      }

      else
      {
        v171 = MEMORY[0x277D84F90];
      }

      *(v171 + 16) = v169;
      sub_237EA2540(v171);
      if (v66)
      {

        sub_237D81F64(v283);

LABEL_101:

        goto LABEL_10;
      }

      v178 = v270;
      v267[0] = v270;
      v262[0] = -v273;
      MEMORY[0x28223BE20](v177);
      v208 = v262;

      v179 = MEMORY[0x277D84F78];
      v180 = v233;
      DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7E4, &v206, v233, MEMORY[0x277D84F78] + 8);
      v181 = v267[0];

      v280 = *&v181;
      v182 = *&v181;
      v183 = v234;
      DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB0D0, v182, v180, v179 + 8);
      v278 = v272;

      v281 = v178;
      memcpy(v285, v268, sizeof(v285));
      OUTLINED_FUNCTION_26_31();
      MEMORY[0x28223BE20](v184);
      OUTLINED_FUNCTION_4_93();
      OUTLINED_FUNCTION_32_31(v185);
      MEMORY[0x28223BE20](v186);
      OUTLINED_FUNCTION_20_35();
      *(v187 - 32) = v183;
      *(v187 - 24) = sub_237EAB754;
      *(v187 - 16) = v188;
      DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB76C, v189, v180, v179 + 8);
      if (__OFADD__(v276, 1))
      {
        goto LABEL_112;
      }

      ++v276;
      v175 = MEMORY[0x277D839F8];
      v176 = v214;
      if (__OFADD__(v277, 1))
      {
        goto LABEL_113;
      }

      ++v277;
      if ((~*&v272 & 0x7FF0000000000000) == 0)
      {
LABEL_89:

        sub_237D81F64(v283);

        v201 = sub_237DC6AD0();
        OUTLINED_FUNCTION_45_0(&type metadata for OptimizationError, v201);
        *v202 = 0;
        goto LABEL_90;
      }

      sub_237EA2484();
    }

    MEMORY[0x28223BE20](v112);
    OUTLINED_FUNCTION_13_54();
    *(v190 - 16) = v175;
    *(v190 - 8) = v176;
    swift_getKeyPath();
    v191 = OUTLINED_FUNCTION_25_39();
    DenseVector.withUnsafeVectorPointer<A>(_:)(v191, v192, v193, v194, v195, v196);

    v271 = v267[0] / v279;
    OUTLINED_FUNCTION_36_2();
    if (!(v105 ^ v81 | v164))
    {

      sub_237D81F64(v283);

      v204 = sub_237DC6AD0();
      OUTLINED_FUNCTION_45_0(&type metadata for OptimizationError, v204);
      *v205 = 1;
LABEL_90:
      swift_willThrow();
      goto LABEL_10;
    }

    if (__OFADD__(v275, 1))
    {
      goto LABEL_111;
    }

    ++v275;
    v244[0] = v19;
    v244[1] = v229;
    *&v244[2] = v20;
    v245 = v226;
    v246 = v225;
    OUTLINED_FUNCTION_34_18(v267);
    v266[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6360, &qword_237F1D748);
    OUTLINED_FUNCTION_2_115();
    OUTLINED_FUNCTION_38_19();
    v266[4] = sub_237C96710(v197, v198, v199, v200);
    OUTLINED_FUNCTION_43_22();
    v266[0] = swift_allocObject();
    OUTLINED_FUNCTION_34_18((v266[0] + 16));
    v241[0] = v219;
    v241[1] = v218;
    v242 = v217;
    v243 = v223;
    memset(v265, 0, 40);
    sub_237EAAFB8(v267, v262, &qword_27DEB6360, &qword_237F1D748);
    sub_237EA606C(v266, v230, v216, v241, v215, v265, v221, v222, v213);
    v103 = v228;
    v104 = v232;
    v92 = v267[12];
    v100 = v267[17];
    __swift_destroy_boxed_opaque_existential_1(v266);
  }

  OUTLINED_FUNCTION_34_18(v284);
  v203 = v284[11];

  sub_237EA491C(v20);
  v244[0] = v203;
  if (v283[7])
  {
    sub_237E6F7F0(v244, v283[7]);
    sub_237D81F64(v283);
    v203 = v244[0];
  }

  else
  {
    sub_237D81F64(v283);
  }

  memcpy(v250, v234, 0x49uLL);
  OUTLINED_FUNCTION_34_18(v267);
  sub_237EAAFB8(v250, v262, &qword_27DEB2A08, qword_237F15D10);
  sub_237C9A114(v267, &qword_27DEB6360, &qword_237F1D748);
  v209 = v224;
  v207 = v104;
  v208 = v231;
  v206 = v103;
  sub_237D070B8(v203, v250, v230, v216, v220);
LABEL_11:
  OUTLINED_FUNCTION_18_46();
}

void sub_237EA5FB4(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = __dst[1];
  v5 = sub_237E613EC(__dst[1], 0.5 / *v2);
  v6 = __OFSUB__(v4, 1);
  v7 = v4 - 1;
  if (v6)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643FC(v8, v9, v10, v11);
    v8 = v12;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if (v7 < *(v8 + 16))
  {
    *(v8 + 8 * v7 + 32) = 0;
    sub_237EA21A0(__dst, v8, a1);
    sub_237D81F2C(__dst, &v13);
    return;
  }

LABEL_9:
  __break(1u);
}

void *sub_237EA606C(void *result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a7)
  {
    v12 = result;
    v97 = *a4;
    v96 = a4[1];
    HIDWORD(v95) = *(a4 + 16);
    v94 = a4[3];
    v81 = a6[1];
    v82 = *a6;
    v80 = a6[2];
    v83 = *(a6 + 3);
    v13 = *(v9 + 8);
    v14 = *(v9 + 16);
    v16 = result[3];
    v15 = result[4];
    v17 = __swift_project_boxed_opaque_existential_1(result, v16);
    v18 = *(v15 + 32);

    v91 = v17;
    v79 = v15 + 32;
    if (v18(v16, v15) >= 5 && v18(v16, v15) % 10 && (v19 = v15, v20 = v12[3], v21 = v12[4], __swift_project_boxed_opaque_existential_1(v12, v20), __dst[0] = v14, v22 = v21, v15 = v19, (sub_237E6A680(__dst, v20, v22) & 1) == 0))
    {
      return sub_237C5EE40(a7, a8);
    }

    else
    {
      v74 = v15;
      v77 = v13;
      v86 = a7;
      v88 = a8;
      v107 = MEMORY[0x277D84F98];
      v23 = v12[3];
      v24 = v12[4];
      __swift_project_boxed_opaque_existential_1(v12, v23);
      (*(v24 + 24))(__src, v23, v24);
      memcpy(__dst, __src, 0x49uLL);
      v25 = __dst[0];

      sub_237C9A114(__dst, &qword_27DEB2A08, qword_237F15D10);
      v105 = v25;
      v85 = a9[3];
      sub_237EF8260();
      sub_237EF8260();
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8, &qword_237F1ABB0);
      v26 = sub_237C65348();
      v28 = a9[6];
      v27 = a9[7];
      v30 = a9[8];
      v29 = a9[9];
      v31 = sub_237C96710(qword_27DEB64F8, &qword_27DEB25E8, &qword_237F1ABB0, &protocol conformance descriptor for DenseVector<A>);
      sub_237D07114(&v105, a2, a3, v84, v110, v28, v27, v30, v29, v31);
      if (HIDWORD(v95))
      {
        v32 = v97;
      }

      else
      {
        v32 = v96;
      }

      v111 = v94 + 32;
      v112 = v97;
      v113 = v96;
      v114 = v32;
      v115 = BYTE4(v95);
      LOBYTE(v104) = BYTE4(v95);
      OUTLINED_FUNCTION_24_39();
      v41 = sub_237EA7F48(v33, v34, v35, v36, v37, v38, v39, v40, v69, v30, v29);
      if (v99)
      {
        v49 = sub_237C5EE40(v86, v88);
        OUTLINED_FUNCTION_46_20(v49, v50, v51, v52, v53, v54, v55, v56, v70, *(&v70 + 1), v71, v72, v73, v74, v16, v77, v79, v80, v81, v82, v83, *(&v83 + 1), v84, v85, v86, v88, v18, v91, a2, a3, v94, v95, v96, v97, a5, v99, v100, v101, v102, v103, *(&v103 + 1), v97, v96, v104, v94, a5, v105, MEMORY[0x277D839F8], v85, MEMORY[0x277CBFDC0], v26, __src[4], __src[5], __src[6], __src[7]);
        OUTLINED_FUNCTION_3_11();
        (*(v57 + 8))(v110);
      }

      else
      {
        if (v83)
        {
          __dst[10] = v83 + 32;
          __dst[11] = v82;
          if (v80)
          {
            v58 = v82;
          }

          else
          {
            v58 = v81;
          }

          __dst[12] = v81;
          __dst[13] = v58;
          v109 = v80 & 1;
          v100 = v82;
          v101 = v81;
          LOBYTE(v102) = v80 & 1;
          v103 = v83;
          OUTLINED_FUNCTION_24_39();
          v41 = sub_237EA8244(v59, v60, v61, v62, v63, v64, v65, v66, v70, v30, v29);
        }

        OUTLINED_FUNCTION_46_20(v41, v42, v43, v44, v45, v46, v47, v48, v70, *(&v70 + 1), v71, v72, v73, v74, v16, v77, v79, v80, v81, v82, v83, *(&v83 + 1), v84, v85, v86, v88, v18, v91, a2, a3, v94, v95, v96, v97, v26, 0, v100, v101, v102, v103, *(&v103 + 1), v97, v96, v104, v94, a5, v105, MEMORY[0x277D839F8], v85, MEMORY[0x277CBFDC0], v26, __src[4], __src[5], __src[6], __src[7]);
        OUTLINED_FUNCTION_3_11();
        (*(v67 + 8))(v110);
        v68 = v90(v76, v75);
        __src[0] = 0xD00000000000001DLL;
        __src[1] = 0x8000000237F1D6C0;
        __src[2] = v68;
        __src[3] = v78;
        LOBYTE(__src[4]) = 0;
        __src[5] = v107;
        sub_237EF8260();
        v87(__src);
        sub_237C5EE40(v87, v89);
        swift_bridgeObjectRelease_n();
      }
    }
  }

  return result;
}

void LinearSupportVectorClassifier.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_19_49();
  v315 = v30;
  v321 = v33;
  v322 = v32;
  v35 = v34;
  v37 = v36;
  v301 = v38;
  v302 = v39;
  v307 = v40;
  v317 = v41;
  v300 = v42;
  v377 = *MEMORY[0x277D85DE8];
  v43 = *v29;
  v305 = *(v29 + 8);
  v44 = *(v29 + 16);
  v304 = *(v29 + 24);
  v303 = *(v29 + 32);
  v45 = v36[3];
  v333 = v36[2];
  v309 = v45;
  v334 = v45;
  v335 = v34;
  v336 = v32;
  v46 = v36[5];
  v319 = v36[4];
  v320 = v333;
  v337 = v319;
  v338 = v46;
  v318 = v46;
  v48 = v36[7];
  v339 = v36[6];
  v47 = v339;
  v340 = v48;
  v50 = v36[9];
  v341 = v36[8];
  v49 = v341;
  v342 = v50;
  v343 = v33;
  v344 = a29;
  KeyPath = swift_getKeyPath();
  v313 = v50;
  v332[2] = v35;
  v332[3] = v322;
  v332[4] = v46;
  v332[5] = v47;
  v311 = a29;
  v312 = v47;
  v308 = v48;
  v332[6] = v48;
  v310 = v49;
  v332[7] = v49;
  v332[8] = v50;
  v332[9] = v321;
  v332[10] = a29;
  v332[11] = KeyPath;
  v52 = v319;
  v53 = sub_237EF7E90();
  v316 = v35;
  v55 = sub_237C8FFEC(sub_237DDE678, v332, v35, v53, MEMORY[0x277D84A98], v321, MEMORY[0x277D84AC0], v54);

  *&v350[0] = v55;
  v306 = v53;
  v56 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  v315 = v56;
  v57 = v56;
  v58 = v320;
  v59 = v318;
  sub_237EDB96C(v351, v350, v57, v320, WitnessTable, v319, v318);
  if (v30)
  {

    goto LABEL_4;
  }

  v294 = v37;

  v298 = &v287;
  v296 = v351[1];
  v297 = v351[0];
  v295 = LOBYTE(v351[2]);
  v299 = v351[3];
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_8_85();
  *(v61 - 96) = v58;
  v63 = v309;
  v62 = v310;
  v64 = v316;
  *(v61 - 88) = v309;
  *(v61 - 80) = v64;
  *(v61 - 72) = v322;
  *(v61 - 64) = v52;
  v66 = v312;
  v65 = v313;
  *(v61 - 56) = v59;
  *(v61 - 48) = v66;
  v67 = v308;
  *(v61 - 40) = v308;
  *(v61 - 32) = v62;
  v68 = v321;
  *(v61 - 24) = v65;
  *(v61 - 16) = v68;
  v69 = v311;
  *(v61 - 8) = v311;
  swift_getKeyPath();
  OUTLINED_FUNCTION_22_42();
  v298 = v70;
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_8_85();
  v72 = v322;
  *(v73 - 80) = v316;
  *(v73 - 72) = v72;
  v74 = v318;
  *(v73 - 64) = v318;
  *(v73 - 56) = v66;
  *(v73 - 48) = v67;
  *(v73 - 40) = v62;
  *(v73 - 32) = v65;
  *(v73 - 24) = v68;
  *(v73 - 16) = v69;
  *(v73 - 8) = v75;
  v78 = sub_237C8FFEC(sub_237DDC108, v76, v72, v306, MEMORY[0x277D84A98], v69, MEMORY[0x277D84AC0], v77);

  *&v350[0] = v78;
  v80 = v319;
  v79 = v320;
  sub_237EDB96C(v351, v350, v315, v320, WitnessTable, v319, v74);

  WitnessTable = &v287;
  v292 = v351[1];
  v293 = v351[0];
  v291 = LOBYTE(v351[2]);
  v315 = v351[3];
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_8_85();
  *(v82 - 96) = v79;
  *(v82 - 88) = v63;
  v83 = v316;
  v84 = v322;
  *(v82 - 80) = v316;
  *(v82 - 72) = v84;
  *(v82 - 64) = v80;
  *(v82 - 56) = v74;
  v85 = v313;
  v86 = v308;
  *(v82 - 48) = v312;
  *(v82 - 40) = v86;
  v87 = v310;
  *(v82 - 32) = v310;
  *(v82 - 24) = v85;
  v88 = v321;
  v89 = v311;
  *(v82 - 16) = v321;
  *(v82 - 8) = v89;
  v90 = swift_getKeyPath();
  WitnessTable = &v287;
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_8_85();
  *(v91 - 80) = v83;
  *(v91 - 72) = v84;
  v92 = v312;
  *(v91 - 64) = v74;
  *(v91 - 56) = v92;
  *(v91 - 48) = v86;
  *(v91 - 40) = v87;
  v93 = v313;
  *(v91 - 32) = v313;
  *(v91 - 24) = v88;
  *(v91 - 16) = v89;
  *(v91 - 8) = v94;
  v95 = v309;
  v98 = sub_237C8FFEC(sub_237DDE678, v96, v83, v309, MEMORY[0x277D84A98], v88, MEMORY[0x277D84AC0], v97);
  v306 = 0;

  v351[0] = v98;
  v99 = v95;
  v100 = sub_237EF8A60();
  sub_237EF8260();
  OUTLINED_FUNCTION_1_2();
  v101 = swift_getWitnessTable();
  v102 = v92;
  v103 = sub_237E5E22C(v351, v99, v100, v92, v93, v101);
  v105 = v104;
  if (sub_237E5E170(v103, v104, v99, v102, v93) != 2)
  {

    v351[0] = 0;
    v351[1] = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000051, 0x8000000237F01810);
    v144 = sub_237E5E170(v103, v105, v99, v312, v313);

    *&v350[0] = v144;
    v145 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v145);

    MEMORY[0x2383E0710](0xD000000000000011, 0x8000000237F01870);
    v146 = v351[0];
    v147 = v351[1];
    v148 = sub_237C84150();
    OUTLINED_FUNCTION_45_0(&type metadata for PipelineDataError, v148);
    *v149 = 0xD00000000000001DLL;
    *(v149 + 8) = 0x8000000237F1D6C0;
    *(v149 + 16) = v146;
    *(v149 + 24) = v147;
    *(v149 + 32) = 5;
    swift_willThrow();
    goto LABEL_4;
  }

  v289 = &v287;
  v351[0] = v98;
  MEMORY[0x28223BE20](2);
  v287 = v98;
  v106 = v319;
  v107 = v320;
  *(&v287 - 14) = v320;
  *(&v287 - 13) = v99;
  v317 = v105;
  v108 = v322;
  *(&v287 - 12) = v316;
  *(&v287 - 11) = v108;
  v109 = v318;
  *(&v287 - 10) = v106;
  *(&v287 - 9) = v109;
  v110 = v308;
  *(&v287 - 8) = v312;
  *(&v287 - 7) = v110;
  v111 = v313;
  *(&v287 - 6) = v310;
  *(&v287 - 5) = v111;
  v298 = v103;
  OUTLINED_FUNCTION_1_24();
  v290 = COERCE_DOUBLE(swift_getWitnessTable());
  v112 = v306;
  sub_237C9339C(sub_237DDC134, (&v287 - 16), v100, MEMORY[0x277D83B88], MEMORY[0x277D84A98], *&v290);
  WitnessTable = v113;
  v288 = v112;

  OUTLINED_FUNCTION_22_42();
  v289 = v114;
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_8_85();
  *(v116 - 96) = v107;
  *(v116 - 88) = v99;
  v117 = v316;
  v118 = v322;
  *(v116 - 80) = v316;
  *(v116 - 72) = v118;
  *(v116 - 64) = v106;
  *(v116 - 56) = v109;
  v119 = v109;
  v120 = v311;
  v121 = v312;
  v122 = v308;
  *(v116 - 48) = v312;
  *(v116 - 40) = v122;
  v123 = v310;
  v306 = v100;
  v124 = v313;
  *(v116 - 32) = v310;
  *(v116 - 24) = v124;
  v125 = v321;
  *(v116 - 16) = v321;
  *(v116 - 8) = v120;
  swift_getKeyPath();
  OUTLINED_FUNCTION_22_42();
  v287 = v126;
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_8_85();
  *(v128 - 80) = v117;
  *(v128 - 72) = v118;
  *(v128 - 64) = v119;
  *(v128 - 56) = v121;
  *(v128 - 48) = v122;
  *(v128 - 40) = v123;
  *(v128 - 32) = v124;
  *(v128 - 24) = v125;
  v129 = v311;
  *(v128 - 16) = v311;
  *(v128 - 8) = v130;
  v131 = v288;
  v134 = sub_237C8FFEC(sub_237DDE678, v132, v118, v309, MEMORY[0x277D84A98], v129, MEMORY[0x277D84AC0], v133);
  v289 = v131;

  OUTLINED_FUNCTION_22_42();
  v288 = v135;
  v307 = v134;
  v323 = v134;
  MEMORY[0x28223BE20](v136);
  v137 = v309;
  *(&v287 - 14) = v320;
  *(&v287 - 13) = v137;
  *(&v287 - 12) = v117;
  *(&v287 - 11) = v118;
  v139 = v317;
  v138 = v318;
  *(&v287 - 10) = v319;
  *(&v287 - 9) = v138;
  *(&v287 - 8) = v121;
  *(&v287 - 7) = v122;
  v140 = v313;
  *(&v287 - 6) = v123;
  *(&v287 - 5) = v140;
  v283 = v321;
  v284 = v129;
  v285 = v298;
  v286 = v139;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  v142 = v289;
  sub_237C9339C(sub_237EAB0EC, (&v287 - 16), v306, MEMORY[0x277D83B88], v141, *&v290);
  if (v142)
  {

    goto LABEL_4;
  }

  v311 = v143;

  v150 = v296;
  v351[0] = v297;
  v351[1] = v296;
  LOBYTE(v351[2]) = v295;
  v351[3] = v299;

  v151 = WitnessTable;
  sub_237EF8260();
  v152 = v304;
  sub_237D80DD0(v351, v151, v304, v366);
  *&v345[0] = v43;
  *&v345[1] = v305;
  v345[2] = v44;
  v346 = v152;
  v347 = v303;
  memcpy(v350, v366, 0x48uLL);
  sub_237EA5FB4(v351, v350);
  v153 = sub_237E613EC(v150, 0.0);
  v154 = v351[1];
  sub_237EA2358();
  v356 = 1.0;

  v352 = v153;
  if (v154 < 0)
  {
    goto LABEL_108;
  }

  sub_237C62CCC(v154, 0.0);
  v156 = v155;

  v353 = v156;
  v157 = memcpy(v376, v351, sizeof(v376));
  MEMORY[0x28223BE20](v157);
  OUTLINED_FUNCTION_4_93();
  *(v158 - 16) = v376;
  MEMORY[0x28223BE20](v159);
  v283 = &v352;
  v284 = sub_237EAB754;
  v285 = v160;
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8, &qword_237F1ABB0);
  v321 = &v352;
  DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB76C, (&v287 - 6), v316, MEMORY[0x277D84F78] + 8);
  if (__OFADD__(v359, 1))
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
  }

  v359 = (v359 + 1);
  if (__OFADD__(v360, 1))
  {
    goto LABEL_110;
  }

  ++v360;
  OUTLINED_FUNCTION_36_2();
  if (!(v188 ^ v163 | v243) || (v164 = fabs(v162), MEMORY[0x28223BE20](v161), v165 = MEMORY[0x277D839F8], v285 = MEMORY[0x277D839F8], v166 = sub_237C65348(), v286 = v166, swift_getKeyPath(), OUTLINED_FUNCTION_31_28(), OUTLINED_FUNCTION_29_33(), DenseVector.withUnsafeVectorPointer<A>(_:)(v167, v168, v169, v170, v171, v172), , OUTLINED_FUNCTION_42_19(v350[0]), v362 = v164, sub_237EA2484(), v173 = v353, MEMORY[0x28223BE20](v174), OUTLINED_FUNCTION_13_54(), *(v175 - 16) = v165, *(v175 - 8) = v166, swift_getKeyPath(), OUTLINED_FUNCTION_31_28(), OUTLINED_FUNCTION_29_33(), DenseVector.withUnsafeVectorPointer<A>(_:)(v176, v177, v178, v179, v180, v181), , v182 = v350[0] / v164, v354 = v182, OUTLINED_FUNCTION_44_21(), !(v188 ^ v163 | v243)))
  {

    sub_237D81F64(v366);

    v183 = sub_237DC6AD0();
    OUTLINED_FUNCTION_45_0(&type metadata for OptimizationError, v183);
    *v184 = 0;
    swift_willThrow();

    goto LABEL_16;
  }

  v307 = v166;

  v290 = 0.8;
  v185 = v312;
  v186 = v313;
  v187 = v310;
  while (1)
  {
    v188 = v358 >= v305 || v182 < v44;
    if (v188 || (v357 & 1) != 0)
    {
      goto LABEL_98;
    }

    if (v358)
    {
      break;
    }

    v248 = *(*&v173 + 16);
    if (v248)
    {
      v249 = sub_237EF89B0();
      v250 = v249;
      *(v249 + 16) = v248;
      v251 = *(*&v173 + 16);
      v252 = 32;
      v253 = v248;
      do
      {
        if (!v251)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
          goto LABEL_107;
        }

        *(v249 + v252) = -*(*&v173 + v252);
        --v251;
        v252 += 8;
        --v253;
      }

      while (v253);
    }

    else
    {
      v250 = MEMORY[0x277D84F90];
    }

    *(v250 + 16) = v248;
    sub_237EA2540(v250);

    v255 = v353;
    v350[0] = v353;
    v345[0] = -v356;
    MEMORY[0x28223BE20](v254);
    v285 = v345;

    v256 = MEMORY[0x277D84F78];
    v257 = v316;
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7E4, &v283, v316, MEMORY[0x277D84F78] + 8);
    v258 = v350[0];

    v363 = *&v258;
    v259 = *&v258;
    v260 = v321;
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7CC, v259, v257, v256 + 8);
    v361 = v355;

    v364 = *&v255;
    memcpy(v368, v351, sizeof(v368));
    OUTLINED_FUNCTION_26_31();
    MEMORY[0x28223BE20](v261);
    OUTLINED_FUNCTION_4_93();
    OUTLINED_FUNCTION_32_31(v262);
    MEMORY[0x28223BE20](v263);
    OUTLINED_FUNCTION_20_35();
    *(v264 - 32) = v260;
    *(v264 - 24) = sub_237EAB754;
    *(v264 - 16) = v265;
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB76C, v266, v257, v256 + 8);
    if (__OFADD__(v359, 1))
    {
      goto LABEL_112;
    }

    v359 = (v359 + 1);
    if (__OFADD__(v360, 1))
    {
      goto LABEL_113;
    }

    ++v360;
    if ((~*&v355 & 0x7FF0000000000000) == 0)
    {
LABEL_92:

      sub_237D81F64(v366);

      v277 = sub_237DC6AD0();
      OUTLINED_FUNCTION_45_0(&type metadata for OptimizationError, v277);
      *v278 = 0;
LABEL_93:
      swift_willThrow();
LABEL_16:
      OUTLINED_FUNCTION_33_25(v350);
      sub_237C9A114(v350, &qword_27DEB6360, &qword_237F1D748);
      goto LABEL_4;
    }

    sub_237EA2484();
LABEL_88:
    MEMORY[0x28223BE20](v194);
    OUTLINED_FUNCTION_13_54();
    v267 = v307;
    *(v268 - 16) = MEMORY[0x277D839F8];
    *(v268 - 8) = v267;
    swift_getKeyPath();
    OUTLINED_FUNCTION_31_28();
    OUTLINED_FUNCTION_39_20();
    DenseVector.withUnsafeVectorPointer<A>(_:)(v269, v270, v271, v272, v273, v267);

    v354 = v350[0] / v362;
    OUTLINED_FUNCTION_36_2();
    if (!(v188 ^ v163 | v243))
    {

      sub_237D81F64(v366);

      v280 = sub_237DC6AD0();
      OUTLINED_FUNCTION_45_0(&type metadata for OptimizationError, v280);
      *v281 = 1;
      goto LABEL_93;
    }

    v274 = v315;
    v275 = v317;
    if (__OFADD__(v358, 1))
    {
      goto LABEL_111;
    }

    ++v358;
    v328[0] = v43;
    v328[1] = v305;
    *&v328[2] = v44;
    v329 = v304;
    v330 = v303;
    OUTLINED_FUNCTION_33_25(v350);
    v349[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6360, &qword_237F1D748);
    OUTLINED_FUNCTION_2_115();
    v349[4] = sub_237C96710(qword_27DEB6368, &qword_27DEB6360, &qword_237F1D748, v276);
    OUTLINED_FUNCTION_43_22();
    v349[0] = swift_allocObject();
    OUTLINED_FUNCTION_33_25((v349[0] + 16));
    v325[0] = v297;
    v325[1] = v296;
    v326 = v295;
    v327 = v299;
    v348[0] = v293;
    v348[1] = v292;
    v348[2] = v291;
    v348[3] = v274;
    v348[4] = v311;
    sub_237EAAFB8(v350, v345, &qword_27DEB6360, &qword_237F1D748);

    sub_237EF8260();
    sub_237EA606C(v349, v298, v275, v325, WitnessTable, v348, v301, v302, v294);
    v185 = v312;
    v173 = v350[12];
    v182 = v350[17];
    OUTLINED_FUNCTION_37_25();
    __swift_destroy_boxed_opaque_existential_1(v349);
  }

  sub_237EA289C();
  OUTLINED_FUNCTION_33_25(v370);
  sub_237EA2C78();
  v189 = v371;
  v324 = v375;
  v187 = v372;
  v190 = v373;
  v191 = v370[12];
  v192 = v370[9];
  v193 = v374;
  v361 = v371;

  v194 = sub_237C9A114(&v324, &qword_27DEB25E8, &qword_237F1ABB0);
  v186 = 0;
  v306 = v191;
  v364 = v191;
  v365 = 0;
  v322 = v192;
  v185 = v192 + 32;
  v195 = 1;
LABEL_25:
  if ((v195 & 1) == 0)
  {
    v186 = v313;
    v187 = v310;
    goto LABEL_88;
  }

  memcpy(v369, v351, sizeof(v369));
  OUTLINED_FUNCTION_26_31();
  MEMORY[0x28223BE20](v196);
  OUTLINED_FUNCTION_4_93();
  OUTLINED_FUNCTION_32_31(v197);
  MEMORY[0x28223BE20](v198);
  OUTLINED_FUNCTION_20_35();
  *(v199 - 32) = v321;
  *(v199 - 24) = sub_237EAB754;
  *(v199 - 16) = v200;
  DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB76C, v201, v316, MEMORY[0x277D84F78] + 8);
  v163 = __OFADD__(v187, 1);
  v187 = (v187 + 1);
  if (v163)
  {
    goto LABEL_103;
  }

  v359 = v187;
  v163 = __OFADD__(v190++, 1);
  if (v163)
  {
    goto LABEL_104;
  }

  v360 = v190;
  v202 = v355;
  OUTLINED_FUNCTION_3_99();
  if (!(v188 ^ v163 | v243))
  {
    goto LABEL_92;
  }

  v203 = *(v322 + 16);
  *&v204 = v353;
  if (v203)
  {
    if (v203 > *(*&v353 + 16))
    {
      goto LABEL_106;
    }

    v205 = v352;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237E643FC(v204, v206, v207, v208);
      v204 = v209;
    }

    v210 = 0;
    v211 = v205 + 32;
    v212 = *(v322 + 16);
    v213 = *(v205 + 16);
    do
    {
      if (v212 == v210)
      {
        goto LABEL_95;
      }

      if (v213 == v210)
      {
        goto LABEL_96;
      }

      if (v210 >= *(v204 + 16))
      {
        goto LABEL_97;
      }

      OUTLINED_FUNCTION_5_92(*(v185 + 8 * v210), *(v211 + 8 * v210));
    }

    while (v203 != v214);
    v353 = *&v204;
  }

  if (!*(v204 + 16))
  {
    goto LABEL_48;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643FC(v204, v215, v216, v217);
    v204 = v218;
  }

  v219 = 0;
  v220 = *(v204 + 16);
  while (v219 < v220)
  {
    OUTLINED_FUNCTION_21_51();
    if (v243)
    {
      v353 = *&v204;
LABEL_48:
      if (*(v322 + 16))
      {
        OUTLINED_FUNCTION_7_76();
        if (v221 != v222)
        {
          v223 = 0.0;
          do
          {
            v223 = OUTLINED_FUNCTION_6_78(v223);
          }

          while (!v243);
          goto LABEL_55;
        }

LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      v223 = 0.0;
LABEL_55:
      v224 = v193 * (v202 + v223);
      v355 = v224;
      if (v186)
      {
        v225 = v189 > v224;
      }

      else
      {
        v225 = 1;
      }

      if (!v225 || v186 >= 3)
      {
        goto LABEL_73;
      }

      v227 = v363;
      OUTLINED_FUNCTION_31_28();
      OUTLINED_FUNCTION_20_48();
      v228 = v307;
      v194 = DenseVector.withUnsafeVectorPointer<A>(_:)(v229, v230, v231, v232, v233, v307);
      if (v350[0] <= 0.0)
      {
        goto LABEL_73;
      }

      OUTLINED_FUNCTION_31_28();
      OUTLINED_FUNCTION_20_48();
      DenseVector.withUnsafeVectorPointer<A>(_:)(v234, v235, v236, v237, v238, v228);
      v241 = OUTLINED_FUNCTION_35_22(v239, v240, v350[0]);
      if (v241 == v31)
      {
        goto LABEL_73;
      }

      v242 = v241;
      v243 = v241 < 0.1 || v186 == 2;
      if (v243)
      {
        v365 = 1;
      }

      if (v189 <= v224 && v241 >= v290)
      {
LABEL_73:
        v195 = 0;
      }

      else
      {
        v356 = v241 * v356;
        sub_237EA2810(v227, v31 - v241);
        v244 = v316;
        DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7B4, v227, v316, MEMORY[0x277D84F78] + 8);

        v350[0] = v242;
        MEMORY[0x28223BE20](v245);
        OUTLINED_FUNCTION_27();
        *(v246 - 16) = v350;
        v194 = DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7E4, v247, v244, MEMORY[0x277D84F78] + 8);
        v195 = 1;
      }

      v163 = __OFADD__(v186++, 1);
      if (v163)
      {
        goto LABEL_105;
      }

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:

  OUTLINED_FUNCTION_33_25(v367);
  v279 = v367[11];

  sub_237EA491C(v44);
  v328[0] = v279;
  if (v366[7])
  {
    sub_237E6F7F0(v328, v366[7]);
    sub_237D81F64(v366);
    v279 = v328[0];
  }

  else
  {
    sub_237D81F64(v366);
  }

  v282 = v300;
  memcpy(v331, v321, 0x49uLL);
  OUTLINED_FUNCTION_33_25(v350);
  sub_237EAAFB8(v331, v345, &qword_27DEB2A08, qword_237F15D10);
  sub_237C9A114(v350, &qword_27DEB6360, &qword_237F1D748);
  v285 = v187;
  v286 = v186;
  v283 = v185;
  v284 = v308;
  sub_237D070B8(v279, v331, v298, v317, v282);
LABEL_4:
  OUTLINED_FUNCTION_18_46();
}

uint64_t sub_237EA7D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t *a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v14 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_237E5E354(v17, v18, v19, a2, v20, v21);
  if (v23)
  {
    (*(v14 + 16))(v16, a1, a2);
    v24 = sub_237EF85D0();
    v26 = v25;
    sub_237C84150();
    v27 = swift_allocError();
    *v28 = 0xD00000000000001DLL;
    *(v28 + 8) = 0x8000000237F1D6C0;
    *(v28 + 16) = v24;
    *(v28 + 24) = v26;
    *(v28 + 32) = 3;
    result = swift_willThrow();
    *a11 = v27;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

void LinearSupportVectorClassifier.encode(_:to:)(void *__src, uint64_t a2, _OWORD *a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = a3[2];
  v6[0] = a3[1];
  v6[1] = v4;
  v5 = a3[4];
  v6[2] = a3[3];
  v6[3] = v5;
  type metadata accessor for LinearSupportVectorClassifierModel(0, v6);
  sub_237D08AB0();
}

void *sub_237EA7F48(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v14 = *(a3 + 32);
  memcpy(__dst, a2, 0x61uLL);
  v15 = sub_237C65348();
  v26[0] = MEMORY[0x277D839F8];
  v26[1] = a6;
  v26[2] = MEMORY[0x277CBFDC0];
  v26[3] = v15;
  v27 = a9;
  v28 = a10;
  v29 = a11;
  v16 = type metadata accessor for LinearSupportVectorClassifierModel(0, v26);
  result = sub_237D08544(a1, v16);
  if (!v11)
  {
    v18 = result;
    MEMORY[0x28223BE20](result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5180, &qword_237F1AB80);
    sub_237C96710(&qword_280C8CCD0, &qword_27DEB5180, &qword_237F1AB80, MEMORY[0x277D842F0]);
    KeyPath = swift_getKeyPath();

    sub_237EF8260();
    sub_237E64964(v18, v14, sub_237E6442C, 0, KeyPath);
    v21 = v20;

    v22 = sub_237CAE03C(v21);
    MEMORY[0x28223BE20](v22);
    v23 = swift_getKeyPath();

    sub_237E64964(v18, v14, sub_237E6442C, 0, v23);

    v24 = sub_237CAE474();
    sub_237CB0CC4(v18, v14, sub_237E6442C, 0, v24);
    v25 = sub_237CB0030();
    sub_237C9A114(v31, qword_27DEB2000, &qword_237F0FD88);
    __dst[3] = MEMORY[0x277D839F8];
    *__dst = v25;
    return sub_237E60F7C(__dst, 0xD000000000000011, 0x8000000237EFB8A0);
  }

  return result;
}

void *sub_237EA8244(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v14 = *(a3 + 32);
  memcpy(__dst, a2, 0x61uLL);
  v15 = sub_237C65348();
  v26[0] = MEMORY[0x277D839F8];
  v26[1] = a6;
  v26[2] = MEMORY[0x277CBFDC0];
  v26[3] = v15;
  v27 = a9;
  v28 = a10;
  v29 = a11;
  v16 = type metadata accessor for LinearSupportVectorClassifierModel(0, v26);
  result = sub_237D08544(a1, v16);
  if (!v11)
  {
    v18 = result;
    MEMORY[0x28223BE20](result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5180, &qword_237F1AB80);
    sub_237C96710(&qword_280C8CCD0, &qword_27DEB5180, &qword_237F1AB80, MEMORY[0x277D842F0]);
    KeyPath = swift_getKeyPath();

    sub_237EF8260();
    sub_237E64964(v18, v14, sub_237E6442C, 0, KeyPath);
    v21 = v20;

    v22 = sub_237CAE03C(v21);
    MEMORY[0x28223BE20](v22);
    v23 = swift_getKeyPath();

    sub_237E64964(v18, v14, sub_237E6442C, 0, v23);

    v24 = sub_237CAE474();
    sub_237CB0CC4(v18, v14, sub_237E6442C, 0, v24);
    v25 = sub_237CB0030();
    sub_237C9A114(v31, qword_27DEB2000, &qword_237F0FD88);
    __dst[3] = MEMORY[0x277D839F8];
    *__dst = v25;
    return sub_237E60F7C(__dst, 0xD000000000000013, 0x8000000237EFDDD0);
  }

  return result;
}

uint64_t sub_237EA8540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LinearSupportVectorClassifier.fitted<A>(to:eventHandler:)(a2, a3, a4, a7, a5, a6);
  v8 = *(v7 + 8);

  return v8();
}

uint64_t LinearSupportVectorClassifier.makeTransformer()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = MEMORY[0x277D84F90];
  v3 = a1[6];
  v4 = a1[9];
  sub_237EF8260();
  OUTLINED_FUNCTION_38_19();
  v8 = sub_237E5E16C(v5, v6, v7, v4);
  v19 = v9;
  v20 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA8, &qword_237F15D00);
  v12 = a1[7];
  v11 = a1[8];
  OUTLINED_FUNCTION_8_8();
  v17 = sub_237C96710(v13, v14, v15, v16);
  return sub_237D07114(&v22, v20, v19, v10, a2, v3, v12, v11, v4, v17);
}

void LinearSupportVectorClassifier.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_19_49();
  v255 = v9;
  v256 = v10;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v294 = *MEMORY[0x277D85DE8];
  v21 = *v7;
  v22 = *(v7 + 8);
  v23 = *(v7 + 16);
  v24 = *(v7 + 24);
  v25 = *(v7 + 32);
  v26 = sub_237EF8B90();
  if (v8)
  {
    goto LABEL_6;
  }

  v239 = v16;
  v240 = v25;
  v241 = v24;
  v242 = v22;
  v238 = v18;
  v245 = v20;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9_51();
  v28 = v14[2];
  v27 = v14[3];
  *(v29 - 80) = v28;
  *(v29 - 72) = *&v27;
  v248 = *&v27;
  v252 = v14[4];
  v30 = v252;
  v253 = v28;
  v32 = v14[6];
  v254 = v14[5];
  v31 = v254;
  *(v29 - 64) = v12;
  *(v29 - 56) = v30;
  v33 = v14[7];
  v34 = v14[8];
  *(v29 - 48) = v31;
  *(v29 - 40) = v32;
  v35 = v14[9];
  *(v29 - 32) = v33;
  *(v29 - 24) = v34;
  v36 = v256;
  *(v29 - 16) = v35;
  *(v29 - 8) = v36;
  v250 = 0;
  KeyPath = swift_getKeyPath();
  v251 = &v232;
  MEMORY[0x28223BE20](KeyPath);
  v231[2] = v12;
  v231[3] = v254;
  v249 = v32;
  v231[4] = v32;
  v231[5] = v33;
  v246 = v34;
  v247 = v33;
  v231[6] = v34;
  v231[7] = v35;
  v244 = v35;
  v231[8] = v36;
  v231[9] = v38;
  v40 = v252;
  v39 = v253;
  v41 = sub_237EF7E90();
  v237 = v14;
  v243 = v12;
  v42 = v250;
  v44 = sub_237C8FFEC(sub_237CFA07C, v231, v12, v41, MEMORY[0x277D84A98], v36, MEMORY[0x277D84AC0], v43);

  *v266 = v44;
  v45 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  v47 = v254;
  sub_237EDB96C(v268, v266, v45, v39, WitnessTable, v40, v254);
  if (v42)
  {

LABEL_6:
    OUTLINED_FUNCTION_18_46();
    return;
  }

  v250 = v231;
  v234 = v268[1];
  v235 = v268[0];
  v233 = LOBYTE(v268[2]);
  v251 = v268[3];
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_9_51();
  v49 = v248;
  v50 = v249;
  *(v51 - 80) = v39;
  *(v51 - 72) = v49;
  v52 = v243;
  *(v51 - 64) = v243;
  *(v51 - 56) = v40;
  *(v51 - 48) = v47;
  *(v51 - 40) = v50;
  v54 = v246;
  v53 = v247;
  *(v51 - 32) = v247;
  *(v51 - 24) = v54;
  v55 = v244;
  v56 = v256;
  *(v51 - 16) = v244;
  *(v51 - 8) = v56;
  swift_getKeyPath();
  OUTLINED_FUNCTION_22_42();
  v250 = v57;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_9_51();
  *(v59 - 64) = v52;
  *(v59 - 56) = v47;
  *(v59 - 48) = v50;
  *(v59 - 40) = v53;
  *(v59 - 32) = v54;
  *(v59 - 24) = v55;
  *(v59 - 16) = v56;
  *(v59 - 8) = v60;
  v61 = v248;
  v64 = sub_237C8FFEC(sub_237CFA07C, v62, v52, *&v248, MEMORY[0x277D84A98], v56, MEMORY[0x277D84AC0], v63);
  v236 = 0;

  OUTLINED_FUNCTION_22_42();
  v255 = v65;
  v250 = v64;
  v257 = v64;
  MEMORY[0x28223BE20](v66);
  v67 = v252;
  v231[-12] = v253;
  *&v231[-11] = v61;
  v231[-10] = v52;
  v231[-9] = v67;
  v68 = v249;
  v231[-8] = v47;
  v231[-7] = v68;
  v69 = v246;
  v231[-6] = v247;
  v231[-5] = v69;
  v231[-4] = v55;
  v231[-3] = v56;
  v70 = v245;
  v229 = v245;
  v71 = sub_237EF8A60();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  OUTLINED_FUNCTION_1_24();
  v73 = swift_getWitnessTable();
  v74 = v236;
  sub_237C9339C(sub_237EAB180, &v231[-14], v71, MEMORY[0x277D83B88], v72, v73);
  if (v74)
  {

    goto LABEL_6;
  }

  v76 = v75;
  v77 = *&v61;

  v78 = v234;
  v268[0] = v235;
  v268[1] = v234;
  LOBYTE(v268[2]) = v233;
  v268[3] = v251;
  sub_237EF8260();

  v256 = v76;
  v79 = v76;
  LOBYTE(v76) = v241;
  sub_237D80DD0(v268, v79, v241, v278);
  *v265 = v21;
  *&v265[1] = v242;
  *&v265[2] = v23;
  LOBYTE(v265[3]) = v76;
  *&v265[4] = v240;
  memcpy(v266, v278, sizeof(v266));
  sub_237EA5FB4(v268, v266);
  v80 = v70;
  v82 = v70[3];
  v81 = v80[4];
  v80 += 3;
  v83 = *(v80 + 7);
  v85 = v80 + 8;
  v84 = v80[8];
  v86 = *(v80 + 2);
  v281 = *(v80 + 1);
  v282 = v86;
  v283 = v80[6];
  v279 = v84;
  v254 = v80;
  v280 = *(v80 + 72);
  if (v82)
  {
    v87 = v82[2];
    if (v87 == v78)
    {
      memcpy(v265, v269, 0x49uLL);
      *v266 = v82;
      *&v266[8] = v81;
      v88 = *(v254 + 2);
      *&v266[16] = *(v254 + 1);
      *&v266[32] = v88;
      *&v266[48] = *(v254 + 6);
      *&v266[56] = v83;
      *&v266[64] = *v85;
      v267 = *(v85 + 8);
      sub_237EAAFB8(v266, v264, &qword_27DEB2A08, qword_237F15D10);
      sub_237C9A114(v265, &qword_27DEB2A08, qword_237F15D10);
      *&v269[0] = v82;
      *(&v269[0] + 1) = v81;
      v269[1] = v281;
      v269[2] = v282;
      *&v269[3] = v283;
      *(&v269[3] + 1) = v83;
      *&v269[4] = v279;
      BYTE8(v269[4]) = v280;
      sub_237EA2358();
      MEMORY[0x28223BE20](v89);
      v229 = MEMORY[0x277D839F8];
      v90 = sub_237C65348();
      v230 = v90;
      swift_getKeyPath();
      OUTLINED_FUNCTION_38_19();
      OUTLINED_FUNCTION_39_20();
      DenseVector.withUnsafeVectorPointer<A>(_:)(v91, v92, v93, v94, v95, v90);

      v274 = 1.0 / (fabs(v83) + v264[0] + 1.0);
      goto LABEL_22;
    }

    sub_237D81F64(v278);

    OUTLINED_FUNCTION_17_56();
    sub_237C9A114(v266, &qword_27DEB6360, &qword_237F1D748);
    v109 = sub_237E5E170(v245[1], v245[2], v77, v249, v244);
    if (!__OFSUB__(v109, 1))
    {
      v110 = v235;
      if (v109 != 1)
      {
        v111 = v87 / (v109 - 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
        v112 = swift_allocObject();
        *(v112 + 16) = xmmword_237F04760;
        v113 = *&v234;
        *(v112 + 32) = v110;
        *(v112 + 40) = v113;

        v265[0] = 0;
        v265[1] = 0xE000000000000000;
        sub_237EF9330();

        v265[0] = 0xD000000000000017;
        v265[1] = 0x8000000237F00E30;
        *&v264[0] = v111;
        v114 = sub_237EF9AB0();
        MEMORY[0x2383E0710](v114);

        MEMORY[0x2383E0710](0xD000000000000015, 0x8000000237F00E50);
        v264[0] = v113;
        v115 = sub_237EF9AB0();
        MEMORY[0x2383E0710](v115);

        MEMORY[0x2383E0710](46, 0xE100000000000000);
        v116 = v265[0];
        v117 = v265[1];
        v118 = sub_237C84150();
        OUTLINED_FUNCTION_45_0(&type metadata for PipelineDataError, v118);
        *v119 = v112;
        *(v119 + 8) = v116;
        *(v119 + 16) = v117;
        *(v119 + 24) = 0;
        *(v119 + 32) = 6;
        swift_willThrow();
        goto LABEL_6;
      }

LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v96 = sub_237E613EC(v78, 0.0);
  v97 = v268[1];
  sub_237EA2358();
  *&v269[4] = 0x3FF0000000000000;

  *&v269[0] = v96;
  if (v97 < 0)
  {
    __break(1u);
    goto LABEL_96;
  }

  sub_237C62CCC(v97, 0.0);
  v99 = v98;

  *(&v269[0] + 1) = v99;
  v100 = memcpy(v293, v268, sizeof(v293));
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_4_93();
  *(v101 - 16) = v293;
  MEMORY[0x28223BE20](v102);
  v231[-4] = v269;
  v231[-3] = sub_237EAB754;
  v229 = v103;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8, &qword_237F1ABB0);
  DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB76C, &v231[-6], v104, MEMORY[0x277D84F78] + 8);
  if (__OFADD__(v271, 1))
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  ++v271;
  if (__OFADD__(v272, 1))
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  ++v272;
  OUTLINED_FUNCTION_36_2();
  if (!(v139 ^ v107 | v208))
  {
    v108 = 0;
LABEL_20:
    sub_237D81F64(v278);

    v136 = sub_237DC6AD0();
    OUTLINED_FUNCTION_45_0(&type metadata for OptimizationError, v136);
    *v137 = v108;
    swift_willThrow();

    OUTLINED_FUNCTION_17_56();
    sub_237C9A114(v266, &qword_27DEB6360, &qword_237F1D748);
    goto LABEL_6;
  }

  v120 = fabs(v106);
  MEMORY[0x28223BE20](v105);
  v121 = MEMORY[0x277D839F8];
  v229 = MEMORY[0x277D839F8];
  v122 = sub_237C65348();
  v230 = v122;
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_41();
  OUTLINED_FUNCTION_39_20();
  DenseVector.withUnsafeVectorPointer<A>(_:)(v123, v124, v125, v126, v127, v122);

  v128 = 1.0 / (v120 + *v266 + 1.0);
  v274 = v128;
  sub_237EA2484();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_13_54();
  *(v130 - 16) = v121;
  *(v130 - 8) = v122;
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_41();
  OUTLINED_FUNCTION_39_20();
  DenseVector.withUnsafeVectorPointer<A>(_:)(v131, v132, v133, v134, v135, v122);

  *&v269[3] = *v266 / v128;
  OUTLINED_FUNCTION_36_2();
  if (!(v139 ^ v107 | v208))
  {
    v108 = 1;
    goto LABEL_20;
  }

LABEL_22:
  v138 = v251;
  v139 = v270 >= *&v242 || *&v269[3] < v23;
  if (v139 || (BYTE8(v269[4]) & 1) != 0)
  {

    sub_237D81F64(v278);

    OUTLINED_FUNCTION_17_56();
    sub_237C9A114(v266, &qword_27DEB6360, &qword_237F1D748);
    goto LABEL_6;
  }

  v252 = v269;
  if (!v270)
  {
    v140 = *(&v269[0] + 1);
    v141 = *(*(&v269[0] + 1) + 16);
    if (v141)
    {
      v142 = sub_237EF89B0();
      *(v142 + 16) = v141;
    }

    else
    {
      v142 = MEMORY[0x277D84F90];
    }

    *v266 = v142 + 32;
    *&v266[8] = v141;
    *&v266[16] = 1;
    sub_237EAAD58(v266, v140);
    *(v142 + 16) = v141;
    sub_237EA2540(v142);

    v143 = *(&v269[0] + 1);
    v144 = *(&v269[0] + 1);
    sub_237EA2810(*(&v269[0] + 1), -*&v269[4]);
    v145 = v144;

    v275 = v145;
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8, &qword_237F1ABB0);
    v147 = MEMORY[0x277D84F78];
    OUTLINED_FUNCTION_38_19();
    v148 = v252;
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(v149, v150, v151, v152);
    v273 = *(&v269[3] + 1);

    v276 = v143;
    v153 = memcpy(v285, v268, sizeof(v285));
    MEMORY[0x28223BE20](v153);
    OUTLINED_FUNCTION_4_93();
    *(v154 - 16) = v285;
    MEMORY[0x28223BE20](v155);
    OUTLINED_FUNCTION_20_35();
    *(v156 - 32) = v148;
    *(v156 - 24) = sub_237EAB754;
    *(v156 - 16) = v157;
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB76C, v158, v146, v147 + 8);
    if (__OFADD__(v271, 1))
    {
      __break(1u);
    }

    else
    {
      ++v271;
      if (!__OFADD__(v272, 1))
      {
        ++v272;
        if ((~*(&v269[3] + 1) & 0x7FF0000000000000) == 0)
        {
          sub_237D81F64(v278);

          v159 = sub_237DC6AD0();
          OUTLINED_FUNCTION_45_0(&type metadata for OptimizationError, v159);
          *v160 = 0;
          goto LABEL_88;
        }

        sub_237EA2484();
        goto LABEL_86;
      }
    }

    __break(1u);
    goto LABEL_106;
  }

  sub_237EA289C();
  OUTLINED_FUNCTION_27_33(v287);
  sub_237EA2C78();
  v161 = v288;
  v258 = v292;
  v162 = v289;
  v163 = v290;
  v164 = v287[12];
  v165 = v287[9];
  v166 = v291;
  v273 = v288;

  isUniquelyReferenced_nonNull_native = sub_237C9A114(&v258, &qword_27DEB25E8, &qword_237F1ABB0);
  v168 = 0;
  v276 = v164;
  v277 = 0;
  v253 = v165;
  v249 = v164;
  v250 = (v165 + 32);
  v248 = 0.8;
  v169 = 1;
  v170 = 0;
  v171 = v252;
  while ((v169 & 1) != 0)
  {
    memcpy(v286, v268, sizeof(v286));
    OUTLINED_FUNCTION_26_31();
    MEMORY[0x28223BE20](v172);
    OUTLINED_FUNCTION_4_93();
    OUTLINED_FUNCTION_32_31(v173);
    MEMORY[0x28223BE20](v174);
    v231[-4] = v171;
    v231[-3] = sub_237EAB754;
    v229 = v175;
    v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8, &qword_237F1ABB0);
    v177 = v170;
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB76C, &v231[-6], v176, MEMORY[0x277D84F78] + 8);
    v107 = __OFADD__(v162++, 1);
    if (v107)
    {
      goto LABEL_100;
    }

    v271 = v162;
    v107 = __OFADD__(v163++, 1);
    if (v107)
    {
      goto LABEL_101;
    }

    v272 = v163;
    v178 = *(&v269[3] + 1);
    OUTLINED_FUNCTION_3_99();
    if (!(v139 ^ v107 | v208))
    {
      sub_237D81F64(v278);

      v225 = sub_237DC6AD0();
      OUTLINED_FUNCTION_45_0(&type metadata for OptimizationError, v225);
      *v226 = 0;
      swift_willThrow();
      goto LABEL_34;
    }

    sub_237EA229C(v171, v253);
    v179 = *(&v269[0] + 1);
    v180 = *(*(&v269[0] + 1) + 16);
    if (!v180)
    {
      goto LABEL_51;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_237E643FC(v179, v181, v182, v183);
      v179 = isUniquelyReferenced_nonNull_native;
    }

    v184 = 0;
    v185 = *(v179 + 16);
    do
    {
      if (v184 >= v185)
      {
        __break(1u);
        goto LABEL_93;
      }

      *(v179 + 8 * v184 + 32) = v166 * *(v179 + 8 * v184 + 32);
      ++v184;
    }

    while (v180 != v184);
    *(&v269[0] + 1) = v179;
LABEL_51:
    if (*(v253 + 16))
    {
      OUTLINED_FUNCTION_7_76();
      if (v186 != v187)
      {
        v188 = 0.0;
        do
        {
          v188 = OUTLINED_FUNCTION_6_78(v188);
        }

        while (!v208);
        goto LABEL_58;
      }

LABEL_103:
      __break(1u);
    }

    v188 = 0.0;
LABEL_58:
    v189 = v166 * (v178 + v188);
    *(&v269[3] + 1) = v189;
    if (v168)
    {
      v190 = v161 > v189;
    }

    else
    {
      v190 = 1;
    }

    if (!v190 || v168 >= 3)
    {
      v169 = 0;
    }

    else
    {
      v192 = v275;
      v193 = sub_237C65348();
      OUTLINED_FUNCTION_30_41();
      OUTLINED_FUNCTION_20_48();
      isUniquelyReferenced_nonNull_native = DenseVector.withUnsafeVectorPointer<A>(_:)(v194, v195, v196, v197, v198, v193);
      if (*v266 <= 0.0)
      {
        v169 = 0;
LABEL_79:
        v171 = v252;
      }

      else
      {
        OUTLINED_FUNCTION_30_41();
        OUTLINED_FUNCTION_20_48();
        DenseVector.withUnsafeVectorPointer<A>(_:)(v199, v200, v201, v202, v203, v193);
        v206 = OUTLINED_FUNCTION_35_22(v204, v205, *v266);
        if (v206 == 1.0)
        {
          goto LABEL_77;
        }

        v207 = v206;
        v208 = v206 < 0.1 || v168 == 2;
        if (v208)
        {
          v277 = 1;
        }

        if (v161 <= v189 && v206 >= v248)
        {
LABEL_77:
          v169 = 0;
          goto LABEL_79;
        }

        *&v269[4] = v206 * *&v269[4];
        sub_237EA2810(v192, 1.0 - v206);
        v209 = v252;
        DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7B4, v192, v176, MEMORY[0x277D84F78] + 8);

        *v266 = v207;
        MEMORY[0x28223BE20](v210);
        OUTLINED_FUNCTION_27();
        *(v211 - 16) = v266;
        v171 = v209;
        isUniquelyReferenced_nonNull_native = DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7E4, v212, v176, MEMORY[0x277D84F78] + 8);
        v170 = v177;
        v169 = 1;
      }
    }

    v107 = __OFADD__(v168++, 1);
    if (v107)
    {
      goto LABEL_102;
    }
  }

  v138 = v251;
LABEL_86:
  v255 = *(&v269[0] + 1);
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v229 = MEMORY[0x277D839F8];
  v213 = sub_237C65348();
  v230 = v213;
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_41();
  OUTLINED_FUNCTION_20_48();
  DenseVector.withUnsafeVectorPointer<A>(_:)(v214, v215, v216, v217, v218, v213);

  *&v269[3] = *v266 / v274;
  OUTLINED_FUNCTION_36_2();
  if (!(v139 ^ v107 | v208))
  {
    sub_237D81F64(v278);

    v219 = sub_237DC6AD0();
    OUTLINED_FUNCTION_45_0(&type metadata for OptimizationError, v219);
    *v220 = 1;
LABEL_88:
    swift_willThrow();
LABEL_34:
    OUTLINED_FUNCTION_17_56();
    sub_237C9A114(v266, &qword_27DEB6360, &qword_237F1D748);
    goto LABEL_6;
  }

  if (!__OFADD__(v270, 1))
  {
    ++v270;
    v264[0] = v21;
    v264[1] = v242;
    v264[2] = v23;
    LOBYTE(v264[3]) = v241;
    v264[4] = v240;
    OUTLINED_FUNCTION_17_56();
    v263[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6360, &qword_237F1D748);
    OUTLINED_FUNCTION_2_115();
    v263[4] = sub_237C96710(v221, &qword_27DEB6360, &qword_237F1D748, v222);
    OUTLINED_FUNCTION_43_22();
    v263[0] = swift_allocObject();
    OUTLINED_FUNCTION_27_33((v263[0] + 16));
    v223 = v245[1];
    v224 = v245[2];
    v259[0] = v235;
    v259[1] = v234;
    v260 = v233;
    v261 = v138;
    memset(v262, 0, 40);
    sub_237EAAFB8(v266, v265, &qword_27DEB6360, &qword_237F1D748);
    sub_237EA606C(v263, v223, v224, v259, v256, v262, v238, v239, v237);

    __swift_destroy_boxed_opaque_existential_1(v263);
    OUTLINED_FUNCTION_27_33(v284);
    v171 = v284[11];

    sub_237EA491C(v23);
    v259[0] = v171;
    if (v278[7])
    {
      sub_237E6F7F0(v259, v278[7]);
      sub_237D81F64(v278);
      v171 = v259[0];
    }

    else
    {
LABEL_93:
      sub_237D81F64(v278);
    }

    v227 = v245;

    *v227 = v171;
    memcpy(v262, v252, 0x49uLL);
    OUTLINED_FUNCTION_27_33(v265);
    sub_237EAAFB8(v262, v264, &qword_27DEB2A08, qword_237F15D10);
    sub_237C9A114(v265, &qword_27DEB6360, &qword_237F1D748);
    memcpy(v263, v262, 0x49uLL);
    v228 = v254;
    memcpy(v264, v254, 0x49uLL);
    sub_237C9A114(v264, qword_27DEB0300, &qword_237F0ADD0);
    memcpy(v228, v263, 0x49uLL);
    goto LABEL_6;
  }

LABEL_106:
  __break(1u);
}

uint64_t sub_237EA9D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X7>, uint64_t *a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v28 = a4;
  v12 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 8);
  v17 = *(v15 + 16);
  sub_237EF8260();
  sub_237EF8260();
  v18 = sub_237E5E354(a1, v16, v17, a2, a3, a7);
  v20 = v19;

  if (v20)
  {
    (*(v12 + 16))(v14, a1, a2);
    v22 = sub_237EF85D0();
    v24 = v23;
    sub_237C84150();
    v25 = swift_allocError();
    *v26 = 0xD00000000000001DLL;
    *(v26 + 8) = 0x8000000237F1D6C0;
    *(v26 + 16) = v22;
    *(v26 + 24) = v24;
    *(v26 + 32) = 3;
    result = swift_willThrow();
    *a9 = v25;
  }

  else
  {
    *v28 = v18;
  }

  return result;
}

void LinearSupportVectorClassifier.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = *(a1 + 24);
  memcpy(__dst, (a1 + 32), sizeof(__dst));
  if (v7)
  {
    *v16 = *a1;
    *&v16[16] = *(a1 + 16);
    *&v16[24] = v7;
    memcpy(&v16[32], (a1 + 32), 0x41uLL);
    v8 = a3[2];
    v15[0] = a3[1];
    v15[1] = v8;
    v9 = a3[4];
    v15[2] = a3[3];
    v15[3] = v9;
    type metadata accessor for LinearSupportVectorClassifierModel(0, v15);
    sub_237D08AB0();
    if (!v3)
    {
      *v16 = v7;
      memcpy(&v16[8], __dst, 0x41uLL);
      v10 = *(a2 + 24);
      v11 = *(a2 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(a2, v10);
      v12 = *(v11 + 16);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2A08, qword_237F15D10);
      v14 = sub_237D91558(&qword_27DEB2A10, MEMORY[0x277D83A08], &unk_237F1A778);
      v12(v16, v13, v14, v10, v11);
    }
  }

  else
  {
    sub_237EF9740("Fatal error", 11, 2, 0xD000000000000028, 0x8000000237EFFE00, "CreateMLComponents/LinearSupportVectorClassifier.swift", 54, 2, 317);
    __break(1u);
  }
}

void LinearSupportVectorClassifier.decodeWithOptimizer(from:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v20 = a3;
  sub_237D08F3C(a1, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9], v9, v10, v11, v12, v13, v14, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5]);
  if (!v3)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2A08, qword_237F15D10);
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
    v15 = *(v7 + 16);
    v8 = sub_237D91558(&qword_27DEB2A20, MEMORY[0x277D83A30], &unk_237F1A738);
    v15(v18, v5, v5, v8, v6, v7);
    memcpy(v16, v18, 0x49uLL);
    memcpy(__dst, &__src[24], 0x49uLL);
    sub_237C9A114(__dst, qword_27DEB0300, &qword_237F0ADD0);
    memcpy(&__src[24], v16, 0x49uLL);
    memcpy(v20, __src, 0x61uLL);
  }
}

uint64_t sub_237EAA29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LinearSupportVectorClassifier.update<A>(_:with:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
  v8 = *(v7 + 8);

  return v8();
}

uint64_t static LinearSupportVectorClassifier.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    v4 = *(a2 + 24) ^ *(a1 + 24) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_237EAA45C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79746C616E6570 && a2 == 0xE700000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000237EFF3E0 == a2;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x8000000237EFFE30 == a2;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x616546656C616373 && a2 == 0xED00007365727574)
      {

        return 3;
      }

      else
      {
        v9 = sub_237EF9D40();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_237EAA5C8(char a1)
{
  result = 0x79746C616E6570;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x616546656C616373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237EAA69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237EAA45C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237EAA6E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C8CFF4();
  *a1 = result;
  return result;
}

uint64_t sub_237EAA72C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237EAA780(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t LinearSupportVectorClassifier.Configuration.encode(to:)(void *a1, _OWORD *a2)
{
  v4 = a2[2];
  v16[0] = a2[1];
  v16[1] = v4;
  v5 = a2[4];
  v16[2] = a2[3];
  v16[3] = v5;
  type metadata accessor for LinearSupportVectorClassifier.Configuration.CodingKeys(255, v16);
  OUTLINED_FUNCTION_15_50();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_8();
  v6 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  v15 = *(v2 + 8);
  v14[1] = *(v2 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_8_8();
  sub_237EFA1B0();
  LOBYTE(v16[0]) = 0;
  v12 = v17;
  sub_237EF9A30();
  if (!v12)
  {
    LOBYTE(v16[0]) = 1;
    sub_237EF9A50();
    LOBYTE(v16[0]) = 2;
    sub_237EF9A30();
    LOBYTE(v16[0]) = 3;
    sub_237EF9A20();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t LinearSupportVectorClassifier.Configuration.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x2383E2240](*&v1);
  MEMORY[0x2383E2210](v2);
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  MEMORY[0x2383E2240](*&v4);
  return sub_237EFA140();
}

uint64_t LinearSupportVectorClassifier.Configuration.hashValue.getter()
{
  sub_237EFA120();
  LinearSupportVectorClassifier.Configuration.hash(into:)();
  return sub_237EFA170();
}

uint64_t LinearSupportVectorClassifier.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v28 = a9;
  v27[0] = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  v27[4] = a6;
  v27[5] = a7;
  v27[6] = a8;
  v27[7] = a10;
  type metadata accessor for LinearSupportVectorClassifier.Configuration.CodingKeys(255, v27);
  OUTLINED_FUNCTION_15_50();
  swift_getWitnessTable();
  v12 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = v27 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA190();
  if (!v10)
  {
    v18 = v14;
    v19 = v28;
    LOBYTE(v27[0]) = 0;
    OUTLINED_FUNCTION_9_65();
    sub_237EF9930();
    v21 = v20;
    LOBYTE(v27[0]) = 1;
    OUTLINED_FUNCTION_9_65();
    v22 = sub_237EF9950();
    LOBYTE(v27[0]) = 2;
    OUTLINED_FUNCTION_9_65();
    sub_237EF9930();
    v24 = v23;
    LOBYTE(v27[0]) = 3;
    OUTLINED_FUNCTION_9_65();
    v26 = sub_237EF9920();
    (*(v18 + 8))(v17, v12);
    *v19 = v21;
    *(v19 + 8) = v22;
    *(v19 + 16) = v24;
    *(v19 + 24) = v26 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237EAACA8(uint64_t a1)
{
  sub_237EFA120();
  LinearSupportVectorClassifier.Configuration.hash(into:)();
  return sub_237EFA170();
}

uint64_t *sub_237EAAD58(uint64_t *result, uint64_t a2)
{
  v2 = result[1];
  if (v2 < 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (v2)
  {
    v3 = 0;
    v4 = *result;
    v5 = result[2];
    v6 = *(a2 + 16);
    while (v6 != v3)
    {
      if ((v3 * v5) >> 64 != (v3 * v5) >> 63)
      {
        goto LABEL_9;
      }

      *(v4 + 8 * v3 * v5) = -*(a2 + 32 + 8 * v3);
      if (v2 == ++v3)
      {
        return result;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_237EAADF0(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v4 = 0;
    while (1)
    {
      v5 = v4 * a3;
      if ((v4 * a3) >> 64 != (v4 * a3) >> 63)
      {
        break;
      }

      ++v4;
      *(result + 8 * v5) = *(result + 8 * v5) * a4;
      if (a2 == v4)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_8;
  }

  return result;
}

double sub_237EAAE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v5 = sub_237C65348();
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EAB5C4, v7, a4, MEMORY[0x277D839F8], MEMORY[0x277D839F8], v5);
  return *&v7[5];
}

void *sub_237EAAEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v8 = sub_237C65348();
  return DenseVector.withUnsafeVectorPointer<A>(_:)(a5, v10, a4, MEMORY[0x277D839F8], MEMORY[0x277D84F78] + 8, v8);
}

uint64_t sub_237EAAF40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a5 * a6) >> 64 != (a5 * a6) >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0.0;
  while (8 * a6 * a5 != v6 && 8 * a3 * a2 != v7)
  {
    v8 = v8 + *(a4 + v6) * *(result + v7);
    v7 += 8 * a3;
    v6 += 8 * a6;
  }

  return result;
}

uint64_t sub_237EAAFB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_237EAB03C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>)
{
  v7 = sub_237EAAE54(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

uint64_t sub_237EAB13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_237EAB1FC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237EAB254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EAB290(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_237EAB2D0(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_237EAB330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EAB36C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_237EAB3B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_237EAB418(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237EAB598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = sub_237EAAF40(a1, a2, a3, a4, a5, a6);
  if (!v7)
  {
    *a7 = v10;
  }

  return result;
}

BOOL sub_237EAB5E0@<W0>(_BOOL8 a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_237EA4038(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

double sub_237EAB610@<D0>(double *a5@<X8>)
{
  swift_getAtKeyPath();
  result = v7;
  *a5 = v7;
  return result;
}

uint64_t sub_237EAB660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = sub_237EA2F44(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = v9;
  }

  return result;
}

double OUTLINED_FUNCTION_5_92(double a1, double a2)
{
  v4 = v3 + 8 * v2;
  result = *(v4 + 32) + (a1 + a1) * a2;
  *(v4 + 32) = result;
  return result;
}

void *OUTLINED_FUNCTION_16_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_237EAAEC8(a1, a2, a3, a4, sub_237EAB538);
}

void *OUTLINED_FUNCTION_17_56()
{

  return memcpy((v0 + 824), (v0 + 1144), 0x139uLL);
}

double OUTLINED_FUNCTION_21_51()
{
  v3 = v1 + 8 * v0;
  result = v2 * *(v3 + 32);
  *(v3 + 32) = result;
  return result;
}

void *OUTLINED_FUNCTION_27_33(void *a1)
{

  return memcpy(a1, (v1 + 1144), 0x139uLL);
}

void *OUTLINED_FUNCTION_33_25(void *a1)
{

  return memcpy(a1, (v1 + 1376), 0x139uLL);
}

void *OUTLINED_FUNCTION_34_18(void *a1)
{

  return memcpy(a1, (v1 + 1320), 0x139uLL);
}

double OUTLINED_FUNCTION_35_22(double a1, double a2, double a3)
{

  return sub_237EA2DC0(v4, v5, a3, v6);
}

uint64_t OUTLINED_FUNCTION_37_25()
{
  v2 = v0[122];
  v3 = v0[123];
  v4 = v0[124];
  v5 = v0[125];

  return sub_237EAB13C(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_46_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  a52 = v58;
  a53 = v56;
  a54 = v57;
  a55 = v55;

  return type metadata accessor for LinearSupportVectorClassifierModel(0, &a48);
}

uint64_t FullyConnectedNetworkRegressor.makeTransformer()@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = v2[1];
  v13[0] = *v2;
  v13[1] = v5;
  v6 = v2[3];
  v8 = *v2;
  v7 = v2[1];
  v13[2] = v2[2];
  v13[3] = v6;
  v12[0] = v8;
  v12[1] = v7;
  v9 = v2[3];
  v12[2] = v2[2];
  v12[3] = v9;
  sub_237C8F200(v13, &v11);
  return sub_237E43D20(v12, MEMORY[0x277D84F90], 0, a1[2], a1[3], a1[4], a2);
}

uint64_t FullyConnectedNetworkRegressor.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 360) = a6;
  *(v8 + 368) = a7;
  *(v8 + 344) = a4;
  *(v8 + 352) = a5;
  *(v8 + 328) = a2;
  *(v8 + 336) = a3;
  *(v8 + 320) = a1;
  v11 = sub_237EF6B10();
  *(v8 + 376) = v11;
  *(v8 + 384) = *(v11 - 8);
  *(v8 + 392) = OUTLINED_FUNCTION_27_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0, &unk_237F11860);
  *(v8 + 400) = v12;
  *(v8 + 408) = *(v12 - 8);
  *(v8 + 416) = OUTLINED_FUNCTION_27_0();
  *(v8 + 424) = *(a5 + 16);
  *(v8 + 432) = *(a5 + 24);
  v13 = sub_237EF7E90();
  *(v8 + 440) = v13;
  *(v8 + 448) = *(v13 - 8);
  *(v8 + 456) = OUTLINED_FUNCTION_27_0();
  *(v8 + 464) = type metadata accessor for AnnotatedFeature(255, v13, MEMORY[0x277D83A90], v14);
  sub_237EF90F0();
  *(v8 + 472) = OUTLINED_FUNCTION_27_0();
  *(v8 + 480) = *(a6 - 8);
  *(v8 + 488) = OUTLINED_FUNCTION_27_0();
  v15 = v7[1];
  *(v8 + 16) = *v7;
  *(v8 + 32) = v15;
  v16 = v7[3];
  *(v8 + 48) = v7[2];
  *(v8 + 64) = v16;

  return MEMORY[0x2822009F8](sub_237EABDE4, 0, 0);
}

uint64_t sub_237EABDE4()
{
  (*(*(v0 + 480) + 16))(*(v0 + 488), *(v0 + 328), *(v0 + 360));
  v1 = sub_237EF8A90();
  *(v0 + 496) = v1;
  *(v0 + 264) = v1;
  v2 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  if (sub_237EF8EC0())
  {

    sub_237C84150();
    swift_allocError();
    *v4 = 0xD000000000000026;
    *(v4 + 8) = 0x8000000237F01940;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_1_116();

    OUTLINED_FUNCTION_3_0();
LABEL_8:

    return v39();
  }

  v5 = *(v0 + 424);
  v6 = *(v0 + 432);
  v7 = *(v0 + 352);
  v8 = *(v0 + 320);
  v68 = *(v7 + 32);
  v64 = type metadata accessor for FullyConnectedNetworkRegressorModel(0, v5, v6, v68);
  v9 = *(v64 + 48);
  v69 = WitnessTable;
  v70 = v2;
  v71 = *(v8 + v9);
  if (*(v71 + 16))
  {
    v10 = v5;
    v66 = v7;
  }

  else
  {
    v12 = *(v0 + 464);
    v11 = *(v0 + 472);
    *(v0 + 312) = v1;
    sub_237EF8E80();
    result = __swift_getEnumTagSinglePayload(v11, 1, v12);
    if (result == 1)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v14 = *(v0 + 464);
    v15 = *(v0 + 472);
    v17 = *(v0 + 448);
    v16 = *(v0 + 456);
    v18 = *(v0 + 440);
    (*(v17 + 16))(v16, v15, v18);
    (*(*(v14 - 8) + 8))(v15, v14);
    v19 = sub_237EF7E20();
    (*(v17 + 8))(v16, v18);

    *(v8 + v9) = v19;
    v10 = *(v0 + 424);
    v6 = *(v0 + 432);
    v66 = *(v0 + 352);
    v71 = v19;
  }

  v65 = v10;
  v20 = *(v0 + 440);
  v22 = *(v0 + 360);
  v21 = *(v0 + 368);
  v23 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v23;
  v24 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v24;
  *(v0 + 272) = v1;
  v25 = swift_task_alloc();
  *v25 = v10;
  v25[1] = v22;
  v25[2] = v6;
  v25[3] = v68;
  v25[4] = v21;
  KeyPath = swift_getKeyPath();

  v27 = swift_task_alloc();
  v27[2] = v22;
  v27[3] = v68;
  v27[4] = v21;
  v27[5] = KeyPath;
  sub_237C9339C(sub_237E86888, v27, v70, v20, MEMORY[0x277D84A98], v69);
  v29 = v28;

  *(v0 + 280) = v29;
  v30 = sub_237EF8A60();
  v31 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_24();
  v32 = swift_getWitnessTable();
  sub_237D13CC4(v0 + 280, v71, v66, v30, v65, v31, v32, v6, v68);
  v33 = *(v0 + 424);
  v34 = *(v0 + 432);
  v67 = *(v0 + 400);
  v36 = *(v0 + 360);
  v35 = *(v0 + 368);

  v37 = swift_task_alloc();
  v37[2] = v33;
  v37[3] = v36;
  v37[4] = v34;
  v37[5] = v68;
  v37[6] = v35;
  v37[7] = v0 + 16;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  v40 = sub_237C8FFEC(sub_237EAC9A0, v37, v36, v67, v38, v35, MEMORY[0x277D84950], v0 + 288);
  v41 = *(v0 + 416);
  v42 = *(v0 + 320);

  *(v0 + 296) = v40;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B8, &unk_237F1C880);
  v44 = sub_237C90604();
  sub_237E86418(v43, v44, v41);

  result = sub_237E444D0(v41, v64);
  v45 = *(v64 + 52);
  v46 = *(v42 + v45);
  v47 = __OFADD__(v46, 1);
  v48 = v46 + 1;
  *(v0 + 504) = v48;
  if (v47)
  {
    __break(1u);
    goto LABEL_18;
  }

  v49 = *(v0 + 336);
  *(v42 + v45) = v48;
  v50 = *(v0 + 392);
  if (!v49)
  {
    v60 = *(v0 + 408);
    v59 = *(v0 + 416);
    v61 = *(v0 + 400);
    v62 = *(v0 + 376);
    v63 = *(v0 + 384);

    (*(v63 + 8))(v50, v62);
    (*(v60 + 8))(v59, v61);
    OUTLINED_FUNCTION_1_116();

    OUTLINED_FUNCTION_3_0();
    goto LABEL_8;
  }

  v52 = *(v0 + 336);
  v51 = *(v0 + 344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8, &qword_237F118D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  strcpy((inited + 32), "training_loss");
  *(inited + 46) = -4864;
  sub_237C70604(v52, v51);
  sub_237EF6A90();
  *(inited + 48) = *(v0 + 552);
  sub_237C758C4();
  *(v0 + 512) = sub_237EF8230();
  v54 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v54;
  v55 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v55;
  *(v0 + 304) = v1;
  v56 = swift_task_alloc();
  *(v0 + 520) = v56;
  *v56 = v0;
  v56[1] = sub_237EAC500;
  v57 = *(v0 + 352);
  v58 = *(v0 + 320);

  return sub_237E859F8(v58, v0 + 304, v57, v70, v69);
}

uint64_t sub_237EAC500(double a1, double a2)
{
  v6 = *v3;
  *(*v3 + 528) = v2;

  if (v2)
  {
    v7 = sub_237EAC81C;
  }

  else
  {
    *(v6 + 536) = a2;
    *(v6 + 544) = a1;
    v7 = sub_237EAC63C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_237EAC63C()
{
  v19 = v0;
  v1 = v0[68];
  v2 = v0[67];
  v4 = *(v0 + 63);
  v3 = *(v0 + 64);
  v5 = *(v0 + 51);
  v14 = *(v0 + 50);
  v15 = *(v0 + 52);
  v6 = *(v0 + 48);
  v12 = *(v0 + 47);
  v13 = *(v0 + 49);
  v8 = *(v0 + 42);
  v7 = *(v0 + 43);
  swift_isUniquelyReferenced_nonNull_native();
  sub_237C91610(0x676E696E69617274, 0xEE00726F7272655FLL, v1);
  swift_isUniquelyReferenced_nonNull_native();
  sub_237C91610(0xD000000000000012, 0x8000000237EFCC20, v2);
  v9 = sub_237C908A4(v3);

  v16[0] = 0xD00000000000001ELL;
  v16[1] = 0x8000000237F01920;
  v16[2] = v4;
  v16[3] = v4;
  v17 = 0;
  v18 = v9;
  v8(v16);
  sub_237C5EE40(v8, v7);

  (*(v6 + 8))(v13, v12);
  (*(v5 + 8))(v15, v14);
  OUTLINED_FUNCTION_1_116();

  OUTLINED_FUNCTION_3_0();

  return v10();
}

uint64_t sub_237EAC81C()
{
  v2 = v0[51];
  v1 = v0[52];
  v4 = v0[49];
  v3 = v0[50];
  v5 = v0[47];
  v6 = v0[48];
  sub_237C5EE40(v0[42], v0[43]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_3_0();

  return v7();
}

uint64_t sub_237EAC914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X7>, uint64_t a6@<X8>)
{
  v10 = type metadata accessor for FullyConnectedNetworkRegressor(0, a2, a3, a4);
  result = sub_237E86090(a1, v10, a6);
  if (v6)
  {
    *a5 = v6;
  }

  return result;
}

uint64_t sub_237EAC9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237C90C10;

  return FullyConnectedNetworkRegressor.update<A>(_:with:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t sub_237EACAA8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void SupervisedTemporalEstimator.fitted<A, B>(to:)()
{
  OUTLINED_FUNCTION_0_97();
  OUTLINED_FUNCTION_34_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_1(v0);
  *v1 = v2;
  v1[1] = sub_237C606BC;
  OUTLINED_FUNCTION_2_116();
  OUTLINED_FUNCTION_6_79();

  __asm { BRAA            X8, X16 }
}

void SupervisedTemporalEstimator.fitted<A, B, C>(to:validateOn:)()
{
  OUTLINED_FUNCTION_1_117();
  OUTLINED_FUNCTION_7_77(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_9_1(v1);
  *v2 = v3;
  v2[1] = sub_237C5FFA4;
  OUTLINED_FUNCTION_2_116();
  OUTLINED_FUNCTION_49_0();

  __asm { BRAA            X8, X16 }
}

void UpdatableSupervisedTemporalEstimator.update<A, B>(_:with:)()
{
  OUTLINED_FUNCTION_0_97();
  OUTLINED_FUNCTION_34_12();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C606BC;
  OUTLINED_FUNCTION_6_79();

  __asm { BRAA            X8, X16 }
}

void dispatch thunk of SupervisedTemporalEstimator.fitted<A, B>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_0_97();
  OUTLINED_FUNCTION_34_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_1(v0);
  *v1 = v2;
  v1[1] = sub_237C606BC;
  OUTLINED_FUNCTION_2_116();
  OUTLINED_FUNCTION_5_93();
  OUTLINED_FUNCTION_49_0();

  __asm { BRAA            X8, X16 }
}

uint64_t dispatch thunk of SupervisedTemporalEstimator.fitted<A, B, C>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_1_117();
  OUTLINED_FUNCTION_7_77(a13);
  v19 = (v13 + *v13);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_9_1(v14);
  *v15 = v16;
  v15[1] = sub_237C5FFA4;
  v17 = OUTLINED_FUNCTION_2_116();

  return v19(v17);
}

void dispatch thunk of UpdatableSupervisedTemporalEstimator.update<A, B>(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_0_97();
  OUTLINED_FUNCTION_34_12();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C606BC;
  OUTLINED_FUNCTION_5_93();
  OUTLINED_FUNCTION_49_0();

  __asm { BRAA            X8, X16 }
}

uint64_t PreprocessingTemporalEstimator.init(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_22_3();
  (*(v12 + 32))(a6);
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v13 = type metadata accessor for PreprocessingTemporalEstimator(0, v15);
  return (*(*(a3 - 8) + 32))(a6 + *(v13 + 52), a1, a3);
}

uint64_t PreprocessingTemporalEstimator.preprocessed<A>(from:eventHandler:)()
{
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  v1[11] = v4;
  v1[12] = v0;
  v1[9] = v5;
  v1[10] = v6;
  v1[7] = v7;
  v1[8] = v2;
  v1[5] = v8;
  v1[6] = v9;
  v1[13] = *(v2 + 16);
  OUTLINED_FUNCTION_1_1();
  v1[14] = v10;
  v1[15] = OUTLINED_FUNCTION_27_0();
  v1[16] = *(v3 + 32);
  v1[17] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v1[18] = v11;
  v1[19] = swift_task_alloc();
  v12 = swift_task_alloc();
  v1[20] = v12;
  v1[21] = OUTLINED_FUNCTION_8_29(v12, v13, v14, v15, MEMORY[0x277D83390]);
  OUTLINED_FUNCTION_1_1();
  v1[22] = v16;
  v1[23] = OUTLINED_FUNCTION_27_0();
  sub_237EF90F0();
  v1[24] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v1[25] = v17;
  v18 = OUTLINED_FUNCTION_27_0();
  v1[26] = v18;
  v1[27] = OUTLINED_FUNCTION_8_29(v18, v19, v20, v21, MEMORY[0x277D833C8]);
  OUTLINED_FUNCTION_15_0();
  v1[28] = v22;
  v1[29] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_237EAD7A0()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[9];
  v4 = v0[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[30] = AssociatedTypeWitness;
  v0[31] = type metadata accessor for PreprocessedFeatureSequence(0, AssociatedTypeWitness, v6, v7);
  v0[2] = sub_237EF8110();
  (*(v2 + 16))(v1, v4, v3);
  sub_237EF86F0();
  v8 = v0[24];
  v9 = v0[21];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    v10 = v0[29];
    OUTLINED_FUNCTION_13_17();
    (*(v11 + 8))(v10);

    v12 = OUTLINED_FUNCTION_28_11();

    return v13(v12);
  }

  else
  {
    v15 = v0[15];
    v16 = v0[8];
    (*(v0[22] + 32))(v0[23], v0[24], v0[21]);
    PreprocessingTemporalEstimator.preprocessor.getter(v16, v15);
    OUTLINED_FUNCTION_15_0();
    v20 = (v17 + *v17);
    v18 = swift_task_alloc();
    v0[32] = v18;
    *v18 = v0;
    v19 = OUTLINED_FUNCTION_2_117(v18);

    return v20(v19);
  }
}

uint64_t sub_237EADA44()
{
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  v3[33] = v0;

  if (v0)
  {
    (*(v3[14] + 8))(v3[15], v3[13]);

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_15_19();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    v12 = v3[19];
    v11 = v3[20];
    v13 = v3[17];
    v14 = v3[18];
    (*(v3[14] + 8))(v3[15], v3[13]);
    (*(v14 + 16))(v12, v11, v13);
    v15 = swift_task_alloc();
    v3[34] = v15;
    swift_getAssociatedConformanceWitness();
    *v15 = v5;
    v15[1] = sub_237EADC44;
    OUTLINED_FUNCTION_15_19();

    return PreprocessedFeatureSequence.init<A>(_:)(v16, v17, v18, v19, v20);
  }
}

uint64_t sub_237EADC44()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 280) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_237EADD48()
{
  v0[4] = v0[3];
  v1 = v0[22];
  v17 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  sub_237EF8A60();
  sub_237EF8260();
  sub_237EF8A20();

  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v17, v2);
  v6 = v0[24];
  v7 = v0[21];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    v8 = v0[29];
    OUTLINED_FUNCTION_13_17();
    (*(v9 + 8))(v8);

    OUTLINED_FUNCTION_28_11();
    OUTLINED_FUNCTION_18_3();

    __asm { BRAA            X2, X16 }
  }

  v12 = v0[15];
  v13 = v0[8];
  (*(v0[22] + 32))(v0[23], v0[24], v0[21]);
  PreprocessingTemporalEstimator.preprocessor.getter(v13, v12);
  OUTLINED_FUNCTION_15_0();
  v14 = swift_task_alloc();
  v0[32] = v14;
  *v14 = v0;
  OUTLINED_FUNCTION_2_117(v14);
  OUTLINED_FUNCTION_18_3();

  __asm { BRAA            X8, X16 }
}

uint64_t PreprocessingTemporalEstimator.fitted(toPreprocessed:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v4;
  v1[6] = v5;
  v1[3] = v6;
  v1[4] = v7;
  v1[9] = *(v2 + 16);
  OUTLINED_FUNCTION_22_3();
  v1[10] = OUTLINED_FUNCTION_27_0();
  v1[11] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_27_0();
  v1[14] = *(v3 + 40);
  v1[15] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v1[16] = v9;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_237EAE124()
{
  OUTLINED_FUNCTION_19_18();
  v1 = v0[7];
  v2 = v0[4];
  PreprocessingTemporalEstimator.estimator.getter(v1, v0[13]);
  v0[2] = v2;
  OUTLINED_FUNCTION_15_0();
  v8 = v3 + *v3;
  v4 = swift_task_alloc();
  v0[19] = v4;
  v0[20] = *(v1 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for PreprocessedFeatureSequence(255, AssociatedTypeWitness, v6, v7);
  sub_237EF8A60();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_237EAE304;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237EAE304()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = v4[13];
  v6 = v4[12];
  v7 = v4[11];
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;
  *(v10 + 168) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_237EAE45C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v11 = v0[20];
  v5 = v0[10];
  v10 = v0[9];
  v6 = v0[3];
  PreprocessingTemporalEstimator.preprocessor.getter(v0[7], v5);
  (*(v4 + 32))(v2, v1, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ComposedTemporalTransformer.init(_:_:)(v5, v2, v10, v3, v11, AssociatedConformanceWitness, v6);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  __asm { BRAA            X1, X16 }
}

uint64_t PreprocessingTemporalEstimator.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_19_18();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = swift_task_alloc();
  v1[7] = v6;
  *v6 = v1;
  v6[1] = sub_237EAE654;

  return PreprocessingTemporalEstimator.preprocessed<A>(from:eventHandler:)();
}

uint64_t sub_237EAE654()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v4;
  *(v2 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_3_0();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_237EAE774()
{
  OUTLINED_FUNCTION_12_2();
  v1 = *(v0 + 72);
  sub_237EF8B90();
  if (v1)
  {

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = sub_237D1AA1C;

    return PreprocessingTemporalEstimator.fitted(toPreprocessed:eventHandler:)();
  }
}

uint64_t PreprocessingTemporalEstimator.encode(_:to:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[5];
  v6 = a3[2];
  v7 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = a3[4];
  v13[0] = v6;
  v13[1] = AssociatedTypeWitness;
  v13[2] = v9;
  v13[3] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for ComposedTemporalTransformer(0, v13);
  return (*(v5 + 32))(a1 + *(v10 + 52), a2, v7, v5);
}

uint64_t PreprocessingTemporalEstimator.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v32 = a3;
  v33 = v6;
  OUTLINED_FUNCTION_1_1();
  v31 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v34 = v10 - v9;
  v12 = *(v11 + 40);
  v13 = *(v11 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v30 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v29 - v21;
  v23 = v3;
  v24 = v35;
  result = (*(v12 + 40))(a1, v13, v12, v20);
  if (!v24)
  {
    v26 = v33;
    (*(v31 + 16))(v34, v23, v33);
    (*(v30 + 32))(v18, v22, AssociatedTypeWitness);
    v27 = *(a2 + 32);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return ComposedTemporalTransformer.init(_:_:)(v34, v18, v26, AssociatedTypeWitness, v27, AssociatedConformanceWitness, v32);
  }

  return result;
}

uint64_t sub_237EAEB70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6A904;

  return PreprocessingTemporalEstimator.fitted<A>(to:eventHandler:)();
}

uint64_t Transformer.appending<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v32 = a5;
  v33 = a4;
  v31 = a1;
  OUTLINED_FUNCTION_1_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_1_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v23 = type metadata accessor for TransformerToTemporalAdaptor(0, v21, v22, v22);
  OUTLINED_FUNCTION_22_3();
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v30 - v26;
  (*(v16 + 16))(v20, v6, a2, v25);
  TransformerToTemporalAdaptor.init(_:)(v20, a2, v27);
  (*(v10 + 16))(v14, v31, a3);
  WitnessTable = swift_getWitnessTable();
  return PreprocessingTemporalEstimator.init(_:_:)(v14, v23, a3, WitnessTable, v33, v32);
}

uint64_t TemporalTransformer.appending<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v29 = a5;
  v30 = a4;
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v19 = type metadata accessor for EstimatorToTemporalAdaptor(0, v16, v18, v17);
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v20);
  v22 = &v29 - v21;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5();
  (*(v26 + 16))(v25 - v24, v6, a2);
  (*(v11 + 16))(v15, a1, a3);
  EstimatorToTemporalAdaptor.init(_:)(v15, a3, v22);
  WitnessTable = swift_getWitnessTable();
  return PreprocessingTemporalEstimator.init(_:_:)(v22, a2, v19, v30, WitnessTable, v29);
}

uint64_t sub_237EAF1C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}