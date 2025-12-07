void sub_1ADFFFCD4(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 > v7)
  {
    v7 = v8;
  }

  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 > v7)
  {
    v7 = v9;
  }

  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v10 > v7)
  {
    v7 = v10;
  }

  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 > v7)
  {
    v7 = v11;
  }

  v12 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v12 > v7)
  {
    v7 = v12;
  }

  v13 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v13 <= v7)
  {
    v13 = v7;
  }

  v14 = v13 + 1;
  if (a3 < 0xF8)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 + ~(-1 << (8 * v14)) - 247) >> (8 * v14)) + 1;
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

  if (a2 > 0xF7)
  {
    v16 = a2 - 248;
    if (v14 >= 4)
    {
      bzero(a1, v13 + 1);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v17 = (v16 >> (8 * v14)) + 1;
    if (v13 != -1)
    {
      v20 = v16 & ~(-1 << (8 * v14));
      bzero(a1, v14);
      if (v14 != 3)
      {
        if (v14 == 2)
        {
          *a1 = v20;
          if (v15 > 1)
          {
LABEL_49:
            if (v15 == 2)
            {
              *&a1[v14] = v17;
            }

            else
            {
              *&a1[v14] = v17;
            }

            return;
          }
        }

        else
        {
          *a1 = v16;
          if (v15 > 1)
          {
            goto LABEL_49;
          }
        }

LABEL_46:
        if (v15)
        {
          a1[v14] = v17;
        }

        return;
      }

      *a1 = v20;
      a1[2] = BYTE2(v20);
    }

    if (v15 > 1)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (v15 <= 1)
  {
    if (v15)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

LABEL_35:
      a1[v13] = -a2;
      return;
    }

LABEL_34:
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (v15 == 2)
  {
    *&a1[v14] = 0;
    goto LABEL_34;
  }

  *&a1[v14] = 0;
  if (a2)
  {
    goto LABEL_35;
  }
}

uint64_t sub_1AE00000C(_OWORD *a1)
{
  v1 = a1[2];
  v7[0] = a1[1];
  v7[1] = v1;
  v2 = a1[4];
  v7[2] = a1[3];
  v7[3] = v2;
  v3 = a1[6];
  v7[4] = a1[5];
  v7[5] = v3;
  v4 = a1[8];
  v7[6] = a1[7];
  v7[7] = v4;
  result = type metadata accessor for TaggedValue_8.TaggedEnum(319, v7);
  if (v6 <= 0x3F)
  {
    v8 = 0;
    *&v7[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AE00009C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[3] - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(a3[5] - 8);
  if (*(*(a3[4] - 8) + 64) > v3)
  {
    v3 = *(*(a3[4] - 8) + 64);
  }

  if (*(v5 + 64) > v3)
  {
    v3 = *(v5 + 64);
  }

  v6 = *(a3[6] - 8);
  if (*(v6 + 64) > v3)
  {
    v3 = *(v6 + 64);
  }

  v7 = *(a3[7] - 8);
  if (*(v7 + 64) > v3)
  {
    v3 = *(v7 + 64);
  }

  v8 = *(a3[8] - 8);
  if (*(v8 + 64) > v3)
  {
    v3 = *(v8 + 64);
  }

  v9 = *(a3[9] - 8);
  if (*(v9 + 64) > v3)
  {
    v3 = *(v9 + 64);
  }

  v10 = 16;
  if (v3 > 0x10)
  {
    v10 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_39;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v15 = ((a2 + ~(-1 << v12) - 247) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v15 < 2)
    {
LABEL_39:
      v17 = *(a1 + v10);
      if (v17 >= 9)
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
    goto LABEL_39;
  }

LABEL_28:
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

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return (v11 | v16) + 248;
}

void sub_1AE00028C(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  v6 = *(a4[4] - 8);
  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  v7 = *(a4[5] - 8);
  if (*(v7 + 64) > v5)
  {
    v5 = *(v7 + 64);
  }

  v8 = *(a4[7] - 8);
  if (*(*(a4[6] - 8) + 64) > v5)
  {
    v5 = *(*(a4[6] - 8) + 64);
  }

  if (*(v8 + 64) > v5)
  {
    v5 = *(v8 + 64);
  }

  v9 = *(a4[8] - 8);
  if (*(v9 + 64) > v5)
  {
    v5 = *(v9 + 64);
  }

  v10 = *(a4[9] - 8);
  if (*(v10 + 64) > v5)
  {
    v5 = *(v10 + 64);
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v11 = v5 + 1;
  if (a3 < 0xF8)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 + ~(-1 << (8 * v11)) - 247) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (a2 > 0xF7)
  {
    v13 = a2 - 248;
    if (v11 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_53;
      }

      goto LABEL_50;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v5 != -1)
    {
      v17 = v13 & ~(-1 << (8 * v11));
      bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v17;
          if (v12 > 1)
          {
LABEL_53:
            if (v12 == 2)
            {
              *&a1[v11] = v14;
            }

            else
            {
              *&a1[v11] = v14;
            }

            return;
          }
        }

        else
        {
          *a1 = v13;
          if (v12 > 1)
          {
            goto LABEL_53;
          }
        }

LABEL_50:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_39:
      a1[v5] = -a2;
      return;
    }

LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_38;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_39;
  }
}

void sub_1AE000534(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v6 <= 0x3F)
            {
              swift_checkMetadataState();
              if (v7 <= 0x3F)
              {
                swift_checkMetadataState();
                if (v8 <= 0x3F)
                {
                  sub_1ADFFB9A4();
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

uint64_t sub_1AE000654(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v4 <= 0x3F)
      {
        result = swift_getAssociatedTypeWitness();
        if (v5 <= 0x3F)
        {
          result = swift_getAssociatedTypeWitness();
          if (v6 <= 0x3F)
          {
            result = swift_getAssociatedTypeWitness();
            if (v7 <= 0x3F)
            {
              result = swift_getAssociatedTypeWitness();
              if (v8 <= 0x3F)
              {
                result = swift_getAssociatedTypeWitness();
                if (v9 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AE000828(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 > v5)
  {
    v5 = v6;
  }

  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 > v5)
  {
    v5 = v7;
  }

  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 > v5)
  {
    v5 = v8;
  }

  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 > v5)
  {
    v5 = v9;
  }

  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v10 > v5)
  {
    v5 = v10;
  }

  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 > v5)
  {
    v5 = v11;
  }

  v12 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v12 <= v5)
  {
    v13 = v5;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_38;
  }

  v14 = v13 + 1;
  v15 = 8 * (v13 + 1);
  if ((v13 + 1) <= 3)
  {
    v18 = ((a2 + ~(-1 << v15) - 246) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    }

    if (v18 < 2)
    {
LABEL_38:
      v20 = *(a1 + v13);
      if (v20 >= 0xA)
      {
        return (v20 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_38;
  }

LABEL_27:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return (v14 | v19) + 247;
}

void sub_1AE000B18(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 > v7)
  {
    v7 = v8;
  }

  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 > v7)
  {
    v7 = v9;
  }

  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v10 > v7)
  {
    v7 = v10;
  }

  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 > v7)
  {
    v7 = v11;
  }

  v12 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v12 > v7)
  {
    v7 = v12;
  }

  v13 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v13 > v7)
  {
    v7 = v13;
  }

  v14 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v14 <= v7)
  {
    v14 = v7;
  }

  v15 = v14 + 1;
  if (a3 < 0xF7)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 + ~(-1 << (8 * v15)) - 246) >> (8 * v15)) + 1;
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

  if (a2 > 0xF6)
  {
    v17 = a2 - 247;
    if (v15 >= 4)
    {
      bzero(a1, v14 + 1);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_51;
      }

      goto LABEL_48;
    }

    v18 = (v17 >> (8 * v15)) + 1;
    if (v14 != -1)
    {
      v21 = v17 & ~(-1 << (8 * v15));
      bzero(a1, v15);
      if (v15 != 3)
      {
        if (v15 == 2)
        {
          *a1 = v21;
          if (v16 > 1)
          {
LABEL_51:
            if (v16 == 2)
            {
              *&a1[v15] = v18;
            }

            else
            {
              *&a1[v15] = v18;
            }

            return;
          }
        }

        else
        {
          *a1 = v17;
          if (v16 > 1)
          {
            goto LABEL_51;
          }
        }

LABEL_48:
        if (v16)
        {
          a1[v15] = v18;
        }

        return;
      }

      *a1 = v21;
      a1[2] = BYTE2(v21);
    }

    if (v16 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  if (v16 <= 1)
  {
    if (v16)
    {
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      a1[v14] = -a2;
      return;
    }

LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (v16 == 2)
  {
    *&a1[v15] = 0;
    goto LABEL_36;
  }

  *&a1[v15] = 0;
  if (a2)
  {
    goto LABEL_37;
  }
}

uint64_t sub_1AE000E88(_OWORD *a1)
{
  v1 = a1[2];
  v7[0] = a1[1];
  v7[1] = v1;
  v2 = a1[4];
  v7[2] = a1[3];
  v7[3] = v2;
  v3 = a1[6];
  v7[4] = a1[5];
  v7[5] = v3;
  v4 = a1[8];
  v7[6] = a1[7];
  v7[7] = v4;
  v7[8] = a1[9];
  result = type metadata accessor for TaggedValue_9.TaggedEnum(319, v7);
  if (v6 <= 0x3F)
  {
    v8 = 0;
    *&v7[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AE000F20(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[3] - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(a3[4] - 8);
  if (*(v5 + 64) > v3)
  {
    v3 = *(v5 + 64);
  }

  v6 = *(a3[6] - 8);
  if (*(*(a3[5] - 8) + 64) > v3)
  {
    v3 = *(*(a3[5] - 8) + 64);
  }

  if (*(v6 + 64) > v3)
  {
    v3 = *(v6 + 64);
  }

  v7 = *(a3[7] - 8);
  if (*(v7 + 64) > v3)
  {
    v3 = *(v7 + 64);
  }

  v8 = *(a3[8] - 8);
  if (*(v8 + 64) > v3)
  {
    v3 = *(v8 + 64);
  }

  v9 = *(a3[9] - 8);
  if (*(v9 + 64) > v3)
  {
    v3 = *(v9 + 64);
  }

  v10 = *(a3[10] - 8);
  if (*(v10 + 64) > v3)
  {
    v3 = *(v10 + 64);
  }

  v11 = 16;
  if (v3 > 0x10)
  {
    v11 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_41;
  }

  v12 = v11 + 1;
  v13 = 8 * (v11 + 1);
  if ((v11 + 1) <= 3)
  {
    v16 = ((a2 + ~(-1 << v13) - 246) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_41;
      }

      goto LABEL_30;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_41;
      }

      goto LABEL_30;
    }

    if (v16 < 2)
    {
LABEL_41:
      v18 = *(a1 + v11);
      if (v18 >= 0xA)
      {
        return (v18 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_41;
  }

LABEL_30:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return (v12 | v17) + 247;
}

void sub_1AE001130(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  v6 = *(a4[4] - 8);
  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  v7 = *(a4[5] - 8);
  if (*(v7 + 64) > v5)
  {
    v5 = *(v7 + 64);
  }

  v8 = *(a4[6] - 8);
  if (*(v8 + 64) > v5)
  {
    v5 = *(v8 + 64);
  }

  v9 = *(a4[8] - 8);
  if (*(*(a4[7] - 8) + 64) > v5)
  {
    v5 = *(*(a4[7] - 8) + 64);
  }

  if (*(v9 + 64) > v5)
  {
    v5 = *(v9 + 64);
  }

  v10 = *(a4[9] - 8);
  if (*(v10 + 64) > v5)
  {
    v5 = *(v10 + 64);
  }

  v11 = *(a4[10] - 8);
  if (*(v11 + 64) > v5)
  {
    v5 = *(v11 + 64);
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v12 = v5 + 1;
  if (a3 < 0xF7)
  {
    v13 = 0;
  }

  else if (v12 <= 3)
  {
    v16 = ((a3 + ~(-1 << (8 * v12)) - 246) >> (8 * v12)) + 1;
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

  if (a2 > 0xF6)
  {
    v14 = a2 - 247;
    if (v12 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    }

    v15 = (v14 >> (8 * v12)) + 1;
    if (v5 != -1)
    {
      v18 = v14 & ~(-1 << (8 * v12));
      bzero(a1, v12);
      if (v12 != 3)
      {
        if (v12 == 2)
        {
          *a1 = v18;
          if (v13 > 1)
          {
LABEL_55:
            if (v13 == 2)
            {
              *&a1[v12] = v15;
            }

            else
            {
              *&a1[v12] = v15;
            }

            return;
          }
        }

        else
        {
          *a1 = v14;
          if (v13 > 1)
          {
            goto LABEL_55;
          }
        }

LABEL_52:
        if (v13)
        {
          a1[v12] = v15;
        }

        return;
      }

      *a1 = v18;
      a1[2] = BYTE2(v18);
    }

    if (v13 > 1)
    {
      goto LABEL_55;
    }

    goto LABEL_52;
  }

  if (v13 <= 1)
  {
    if (v13)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_41:
      a1[v5] = -a2;
      return;
    }

LABEL_40:
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (v13 == 2)
  {
    *&a1[v12] = 0;
    goto LABEL_40;
  }

  *&a1[v12] = 0;
  if (a2)
  {
    goto LABEL_41;
  }
}

void sub_1AE0013F8(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v6 <= 0x3F)
            {
              swift_checkMetadataState();
              if (v7 <= 0x3F)
              {
                swift_checkMetadataState();
                if (v8 <= 0x3F)
                {
                  swift_checkMetadataState();
                  if (v9 <= 0x3F)
                  {
                    sub_1ADFFB9A4();
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
}

uint64_t sub_1AE001530(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v4 <= 0x3F)
      {
        result = swift_getAssociatedTypeWitness();
        if (v5 <= 0x3F)
        {
          result = swift_getAssociatedTypeWitness();
          if (v6 <= 0x3F)
          {
            result = swift_getAssociatedTypeWitness();
            if (v7 <= 0x3F)
            {
              result = swift_getAssociatedTypeWitness();
              if (v8 <= 0x3F)
              {
                result = swift_getAssociatedTypeWitness();
                if (v9 <= 0x3F)
                {
                  result = swift_getAssociatedTypeWitness();
                  if (v10 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AE001734(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 > v5)
  {
    v5 = v6;
  }

  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 > v5)
  {
    v5 = v7;
  }

  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 > v5)
  {
    v5 = v8;
  }

  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 > v5)
  {
    v5 = v9;
  }

  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v10 > v5)
  {
    v5 = v10;
  }

  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 > v5)
  {
    v5 = v11;
  }

  v12 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v12 > v5)
  {
    v5 = v12;
  }

  v13 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v13 <= v5)
  {
    v14 = v5;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_40;
  }

  v15 = v14 + 1;
  v16 = 8 * (v14 + 1);
  if ((v14 + 1) <= 3)
  {
    v19 = ((a2 + ~(-1 << v16) - 245) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_40;
      }

      goto LABEL_29;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_40;
      }

      goto LABEL_29;
    }

    if (v19 < 2)
    {
LABEL_40:
      v21 = *(a1 + v14);
      if (v21 >= 0xB)
      {
        return (v21 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_40;
  }

LABEL_29:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 > 3)
    {
      LODWORD(v15) = 4;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        LODWORD(v15) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v15) = *a1;
      }
    }

    else if (v15 == 1)
    {
      LODWORD(v15) = *a1;
    }

    else
    {
      LODWORD(v15) = *a1;
    }
  }

  return (v15 | v20) + 246;
}

void sub_1AE001A5C(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 > v7)
  {
    v7 = v8;
  }

  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 > v7)
  {
    v7 = v9;
  }

  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v10 > v7)
  {
    v7 = v10;
  }

  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 > v7)
  {
    v7 = v11;
  }

  v12 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v12 > v7)
  {
    v7 = v12;
  }

  v13 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v13 > v7)
  {
    v7 = v13;
  }

  v14 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v14 > v7)
  {
    v7 = v14;
  }

  v15 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v15 <= v7)
  {
    v15 = v7;
  }

  v16 = v15 + 1;
  if (a3 < 0xF6)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 + ~(-1 << (8 * v16)) - 245) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
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
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (a2 > 0xF5)
  {
    v18 = a2 - 246;
    if (v16 >= 4)
    {
      bzero(a1, v15 + 1);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_53;
      }

      goto LABEL_50;
    }

    v19 = (v18 >> (8 * v16)) + 1;
    if (v15 != -1)
    {
      v22 = v18 & ~(-1 << (8 * v16));
      bzero(a1, v16);
      if (v16 != 3)
      {
        if (v16 == 2)
        {
          *a1 = v22;
          if (v17 > 1)
          {
LABEL_53:
            if (v17 == 2)
            {
              *&a1[v16] = v19;
            }

            else
            {
              *&a1[v16] = v19;
            }

            return;
          }
        }

        else
        {
          *a1 = v18;
          if (v17 > 1)
          {
            goto LABEL_53;
          }
        }

LABEL_50:
        if (v17)
        {
          a1[v16] = v19;
        }

        return;
      }

      *a1 = v22;
      a1[2] = BYTE2(v22);
    }

    if (v17 > 1)
    {
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  if (v17 <= 1)
  {
    if (v17)
    {
      a1[v16] = 0;
      if (!a2)
      {
        return;
      }

LABEL_39:
      a1[v15] = -a2;
      return;
    }

LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (v17 == 2)
  {
    *&a1[v16] = 0;
    goto LABEL_38;
  }

  *&a1[v16] = 0;
  if (a2)
  {
    goto LABEL_39;
  }
}

unint64_t sub_1AE001EA8(uint64_t a1)
{
  v1 = bswap64(sub_1AE23BFCC());
  if ((v1 & 0xF000) != 0x7000)
  {
    __break(1u);
  }

  return v1 & 0xFFF | (v1 >> 16 << 12);
}

unint64_t sub_1AE001F28(unint64_t a1, unint64_t a2, unint64_t a3)
{
  if (HIWORD(a1) || a2 > 0xFFF || a3 >> 62)
  {
    __break(1u);
  }

  return bswap64(a2 | (a1 << 16) | 0x7000);
}

unint64_t sub_1AE001FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BC900[0];
  if (!qword_1EB5BC900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5BC900);
  }

  return result;
}

void sub_1AE002018(void x0_0, uint64_t a1)
{
  v4 = v2[1];
  v7 = *v2;
  v8 = v4;
  sub_1ADDD86D8(v7, v4);
  sub_1ADE1E638(&v7, *(a1 + 16), *(a1 + 24));
  v5 = v7;
  v6 = v8;

  sub_1ADDCC35C(v5, v6);
}

void Ref.subscript.getter(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v5 = v3[1];
  v9 = v6;
  v10 = v5;

  sub_1ADDD86D8(v6, v5);
  sub_1ADE1E638(&v9, *(a2 + 16), *(a2 + 24));

  v7 = v9;
  v8 = v10;

  sub_1ADDCC35C(v7, v8);
}

void (*Ref.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v10 = *v3;
  v9 = v3[1];
  v11 = *(a2 + 32);
  v7[4] = v10;
  v12 = v7 + 4;
  v7[5] = v9;
  v7[6] = v11;

  sub_1ADDD86D8(v10, v9);
  sub_1ADEAE30C(v8, v12, *(a3 + 16), *(a3 + 24));
  v8[7] = v13;
  return sub_1ADEBA858;
}

void Ref.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[1];
  v12 = *v4;
  v13 = v8;
  v9 = *(a4 + 8);
  sub_1ADDD86D8(v12, v8);
  v9(&v12, *(a2 + 16), *(a2 + 24), a3, a4);
  v10 = v12;
  v11 = v13;

  sub_1ADDCC35C(v10, v11);
}

{
  v8 = v4[1];
  v12 = *v4;
  v13 = v8;
  v9 = *(a4 + 16);
  sub_1ADDD86D8(v12, v8);
  v9(&v12, *(a2 + 16), *(a2 + 24), a3, a4);
  v10 = v12;
  v11 = v13;

  sub_1ADDCC35C(v10, v11);
}

void sub_1AE002310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + a3 - 24);
  v6 = *(a2 + a3 - 8);
  v7 = type metadata accessor for Ref(0, *(a2 + a3 - 32), *(a2 + a3 - 16), a4);
  Ref.subscript.getter(a2, v7, v5, v6);
}

void sub_1AE002384(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 24);
  v8 = *(a3 + a4 - 16);
  v9 = *(a3 + a4 - 8);
  v12 = *a2;
  v13 = a2[1];
  sub_1ADDD86D8(*a2, v13);
  v11 = type metadata accessor for Ref(0, v6, v8, v10);
  sub_1AE003D3C(a1, a3, v11, v7, v9);

  sub_1ADDCC35C(v12, v13);
}

uint64_t Ref.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AE003D3C(a1, a2, a3, a4, a5);
  (*(*(a4 - 8) + 8))(a2, a4);
  v9 = *(*(*(a3 + 16) - 8) + 8);

  return v9(a1);
}

uint64_t (*Ref.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x38uLL);
  }

  v11 = v10;
  *a1 = v10;
  v12 = *v5;
  v13 = v5[1];
  v11[4] = *v5;
  v11[5] = v13;
  v14 = *(a5 + 32);
  sub_1ADDD86D8(v12, v13);
  v11[6] = v14(v11, v11 + 4, *(a3 + 16), *(a3 + 24), a4, a5);
  return sub_1AE002598;
}

void sub_1AE002598(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);
  sub_1ADDCC35C(*(v1 + 32), *(v1 + 40));

  free(v1);
}

void sub_1AE0025EC(void x0_0, uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = type metadata accessor for Ref(0, *(a1 + a2 - 32), *(a1 + a2 - 16), a3);
  Ref.subscript.getter(v4, v5);
}

void sub_1AE002654(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = *a2;
  v9 = a2[1];
  v12 = *a2;

  sub_1ADDD86D8(v8, v9);
  v11 = type metadata accessor for Ref(0, v5, v6, v10);
  sub_1AE003E60(a1, v7, v11);

  sub_1ADDCC35C(v12, v9);
}

uint64_t Ref.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE003E60(a1, a2, a3);

  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

uint64_t Ref.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1[2];
  if (v8)
  {
    v13 = v5;
    v11 = *v5;
    v12 = v13[1];
    v15 = *a1;
    v14 = a1[1];
    v22 = v15;
    v23 = v14;
    v24 = v8;
    *&v21 = v11;
    *(&v21 + 1) = v12;
    sub_1AE003EE4(v15, v14, v8);
    sub_1ADDD86D8(v11, v12);
    v17 = type metadata accessor for Capsule.ObservableDifference(0, a3, a4, v16);
    Capsule.ObservableDifference.subscript.getter(&v21, v17, *(a2 + 16), *(a2 + 24), a5);
    sub_1ADDCC35C(v21, *(&v21 + 1));

    return sub_1AE003F24(v15, v14, v8);
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v20 = *(*(AssociatedTypeWitness - 8) + 56);

    return v20(a5, 1, 1, AssociatedTypeWitness);
  }
}

void Ref.id.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1ADDCC35C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
}

double sub_1AE002938@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, _OWORD *a3@<X8>)
{
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  *&v17 = sub_1ADDCC6B4(a2);
  *(&v17 + 1) = v11;
  v12 = sub_1ADDD8E0C(v17);
  v14 = v13;
  sub_1AE23BEEC();
  sub_1ADDCC35C(v12, v14);
  v15 = *(v7 + 8);
  v15(a1, v6);
  v15(v10, v6);
  result = *&v17;
  *a3 = v17;
  return result;
}

double Ref.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  (*(a3 + 48))(&v8, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  result = *&v8;
  *a4 = v8;
  return result;
}

double _s9Coherence3RefV__2idACyxGAA7CapsuleVABCyqd___G_xAA9CRKeyPathVSgtcAA4CRDTRd__lufC_0@<D0>(uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = *a3;
  v9 = a3[1];

  sub_1ADEAFD1C(a2, a4, &v11);

  (*(*(a4 - 8) + 8))(a2, a4);
  sub_1ADDE158C(v8, v9);
  result = *&v11;
  *a5 = v11;
  return result;
}

void Ref.init<A>(_:_:)(uint64_t *a2@<X1>, uint64_t *a3@<X8>, uint64_t x2_0@<X2>, uint64_t a4@<X3>)
{
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v14[0] = *a2;
  v8 = v14[0];
  v14[1] = v9;
  v14[2] = v10;
  v14[3] = v11;
  v14[4] = v12;

  sub_1ADEAEE48(v14, x2_0, a4, v13);

  sub_1ADDD86D8(v8, v9);
  sub_1ADDCC35C(v8, v9);
  sub_1ADDCC35C(v10, v11);

  *a3 = v8;
  a3[1] = v9;
}

uint64_t Ref.visitReferences(_:)(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v9[0] = v4;
  v9[1] = v5;
  return (*(v7 + 16))(v9, *(a2 + 16), *(a2 + 24), v6, v7);
}

void Ref.copy(renamingReferences:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v8 = *v4;
  v9 = v4[1];
  v21 = *v4;
  v22 = v9;
  WitnessTable = swift_getWitnessTable();
  (*(WitnessTable + 48))(&v19, a2, WitnessTable);
  v11 = v19;
  v12 = v20;
  v13 = *a1;
  if (*(*a1 + 16) && (v14 = sub_1ADDDE7CC(v19, v20), (v15 & 1) != 0))
  {
    v16 = (*(v13 + 56) + 16 * v14);
    v17 = *v16;
    v18 = v16[1];
    sub_1ADDD86D8(*v16, v18);
    sub_1ADDCC35C(v11, v12);
    *a4 = v17;
    a4[1] = v18;
  }

  else
  {
    sub_1ADDCC35C(v11, v12);
    *a4 = v8;
    a4[1] = v9;
    sub_1ADDD86D8(v8, v9);
  }
}

uint64_t Ref.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    a1 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v6 = a1;

  Ref.copy(renamingReferences:)(&v6, a2, a3);
}

uint64_t Ref.ObservableDifference.contents.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v1;
  }

  v5 = 0xF000000000000000;
  if (v3 >> 60 != 15)
  {
    v5 = v1[1];
  }

  *a1 = v4;
  a1[1] = v5;
  return sub_1ADDE0F78(v2, v3);
}

uint64_t Ref.ObservableDifference.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1[2];
  v9 = v5[1];
  if (v8)
  {
    v10 = v9 >> 60 == 15;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v12 = *(*(AssociatedTypeWitness - 8) + 56);

    return v12(a5, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v16 = *v5;
    v18 = *a1;
    v17 = a1[1];
    v22 = v18;
    v23 = v17;
    v24 = v8;
    *&v21 = v16;
    *(&v21 + 1) = v9;
    sub_1AE003EE4(v18, v17, v8);
    sub_1ADDE0F78(v16, v9);
    v20 = type metadata accessor for Capsule.ObservableDifference(0, a3, a4, v19);
    Capsule.ObservableDifference.subscript.getter(&v21, v20, *(a2 + 16), *(a2 + 24), a5);
    sub_1ADDCC35C(v21, *(&v21 + 1));

    return sub_1AE003F24(v18, v17, v8);
  }
}

BOOL Ref.ObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *v1;
  v4 = xmmword_1AE2427C0;
  v5 = v2;
  return static Ref.ObservableDifference.== infix(_:_:)(&v5, &v4);
}

BOOL static Ref.ObservableDifference.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = *(a2 + 8);
  if (v2 >> 60 != 15)
  {
    if (v4 >> 60 != 15)
    {
      v9[0] = *a1;
      v9[1] = v2;
      v8[0] = v5;
      v8[1] = v4;
      sub_1ADDE0F78(v5, v4);
      sub_1ADDE0F78(v3, v2);
      sub_1ADDE0F78(v5, v4);
      sub_1ADDE0F78(v3, v2);
      v6 = static Ref.== infix(_:_:)(v9, v8);
      sub_1ADDE158C(v3, v2);
      sub_1ADDE158C(v5, v4);
      sub_1ADDE158C(v5, v4);
      sub_1ADDE158C(v3, v2);
      return v6;
    }

    goto LABEL_5;
  }

  if (v4 >> 60 != 15)
  {
LABEL_5:
    sub_1ADDE0F78(*a2, *(a2 + 8));
    sub_1ADDE0F78(v3, v2);
    sub_1ADDE158C(v3, v2);
    sub_1ADDE158C(v5, v4);
    return 0;
  }

  sub_1ADDE158C(*a1, v2);
  sub_1ADDE158C(v5, v4);
  return 1;
}

BOOL static Ref.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1ADDD86D8(*a1, v4);
  v6 = *a2;
  v5 = a2[1];
  sub_1ADDD86D8(v6, v5);
  sub_1ADDD86D8(v3, v4);
  sub_1ADDD86D8(v6, v5);
  v7 = sub_1ADDD6F8C(v3, v4, v6, v5);
  sub_1ADDCC35C(v6, v5);
  sub_1ADDCC35C(v3, v4);
  sub_1ADDCC35C(v6, v5);
  sub_1ADDCC35C(v3, v4);
  return v7;
}

double sub_1AE00327C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AE2427C0;
  return result;
}

void Ref.observableDifference(from:with:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v21 = a2;
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  v22 = *(v10 - 8);
  v23 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = *a1;
  v14 = a1[1];
  v15 = *v4;
  v16 = v4[1];
  sub_1ADDD86D8(*v4, v16);
  sub_1ADDD86D8(v13, v14);
  v17 = sub_1ADDD6F8C(v15, v16, v13, v14);
  sub_1ADDCC35C(v13, v14);
  sub_1ADDCC35C(v15, v16);
  if (v17)
  {
    sub_1AE003F64(v21, v25);
    v18 = v26;
    if (v26)
    {
      v19 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v24[0] = v15;
      v24[1] = v16;
      (*(v19 + 8))(v24, v7, v8, v18, v19);
      __swift_destroy_boxed_opaque_existential_1(v25);
      if ((*(*(AssociatedTypeWitness - 8) + 48))(v12, 1, AssociatedTypeWitness) != 1)
      {
        (*(v22 + 8))(v12, v23);
        *a4 = v15;
        a4[1] = v16;
        sub_1ADDD86D8(v15, v16);
        return;
      }
    }

    else
    {
      sub_1AE003FD4(v25);
      (*(*(AssociatedTypeWitness - 8) + 56))(v12, 1, 1, AssociatedTypeWitness);
    }

    (*(v22 + 8))(v12, v23);
    v20 = xmmword_1AE250CD0;
  }

  else
  {
    v20 = xmmword_1AE2427C0;
  }

  *a4 = v20;
}

uint64_t Ref.hashValue.getter()
{
  sub_1AE23E31C();
  sub_1AE23BECC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE003568(uint64_t a1)
{
  sub_1AE23E31C();
  Ref.hash(into:)(v2);
  return sub_1AE23E34C();
}

void Ref.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a1 + 72);
  if (!v6)
  {
    v21 = 0x80000001AE25FB70;
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    v23 = 0xD000000000000017;
LABEL_23:
    *v22 = v23;
    *(v22 + 8) = v21;
    *(v22 + 16) = 0;
    swift_willThrow();

    return;
  }

  v7 = v4;
  v10 = *(a1 + 57);
  v36 = a4;
  if (v10 < 3 || ((v11 = *(v6 + 16), (~v11 & 0xF000000000000007) != 0) ? (v12 = ((v11 >> 59) & 0x1E | (v11 >> 2) & 1) == 16) : (v12 = 0), !v12))
  {
    v13 = *(v6 + 16);
    if ((~v13 & 0xF000000000000007) != 0 && ((v13 >> 59) & 0x1E | (v13 >> 2) & 1) == 7)
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v14 = &unk_1ED966F48;
    }

    swift_beginAccess();
    v15 = v14[8];
    v16 = v14[9];
    v17 = v14[10];
    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    if (v15)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0;
    }

    if (v15)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0xC000000000000000;
    }

    swift_retain_n();
    sub_1ADE56F74(v15, v16, v17);
    sub_1ADDE94BC(v18, v19, v20, &v34);
    if (v7)
    {

      return;
    }

    v24 = v34;
    v25 = v35;
    v26 = *(a1 + 16);
    if (v26)
    {
      goto LABEL_25;
    }

LABEL_35:
    __break(1u);
    return;
  }

  v29 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v30 = *(a1 + 40);
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = v29 >= v31;
  }

  else
  {
    v32 = 1;
  }

  if (v32)
  {
    v21 = 0x80000001AE25FC60;
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    v23 = 0xD000000000000013;
    goto LABEL_23;
  }

  v33 = v30 + 16 * v29;
  v24 = *(v33 + 32);
  v25 = *(v33 + 40);

  sub_1ADDD86D8(v24, v25);
  v26 = *(a1 + 16);
  if (!v26)
  {
    goto LABEL_35;
  }

LABEL_25:
  v34 = v24;
  v35 = v25;
  v27 = *(*v26 + 200);

  sub_1ADDD86D8(v24, v25);
  v27(a2, &v34, a1, 0, a2, a3);
  sub_1ADDCC35C(v34, v35);

  if (v7)
  {
    sub_1ADDCC35C(v24, v25);
  }

  else
  {
    v28 = v36;
    *v36 = v24;
    v28[1] = v25;
  }
}

void Ref.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = *v5;
  v7 = v5[1];
  v9 = sub_1ADE71C08(a1, a2, a3);
  if (!v4)
  {
    v10 = v9;
    v11 = *(a1 + 104);

    if (v11 >= 3)
    {
      v16 = sub_1ADE66644(v8, v7);
      swift_beginAccess();
      sub_1AE1B75D8(v16);
    }

    else
    {
      sub_1ADDD86D8(v8, v7);
      sub_1ADDCC35C(0, 0xC000000000000000);
      v12 = MEMORY[0x1E69E7CC0];

      sub_1ADDD86D8(v8, v7);

      sub_1ADDCC35C(v8, v7);
      swift_beginAccess();
      v13 = *(*(v10 + 24) + 16);
      if ((~v13 & 0xF000000000000007) != 0 && ((v13 >> 59) & 0x1E | (v13 >> 2) & 1) == 7)
      {
        inited = *((v13 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_Reference._StorageClass();
        inited = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_Reference._StorageClass();
        swift_allocObject();
        inited = sub_1ADDE4C34(inited);
      }

      swift_beginAccess();
      v17 = inited[8];
      v18 = inited[9];
      v19 = inited[10];
      inited[8] = v12;
      inited[9] = v8;
      inited[10] = v7;
      sub_1ADE73D6C(v17, v18, v19);
      sub_1AE1B76EC(inited);
      v20 = *(*(v10 + 24) + 16);
      if ((~v20 & 0xF000000000000007) != 0 && ((v20 >> 59) & 0x1E | (v20 >> 2) & 1) == 7)
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_Reference._StorageClass();
        v21 = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_Reference._StorageClass();
        swift_allocObject();
        v21 = sub_1ADDE4C34(v21);
      }

      swift_beginAccess();
      *(v21 + 24) = 0;
      *(v21 + 32) = 1;
      sub_1AE1B76EC(v21);
    }

    swift_endAccess();
  }
}

uint64_t Ref.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1ADDD86D8(v2, v3);
  sub_1AE23E3BC();
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_1ADE57060(v4, v5, v6);
  sub_1AE23E06C();
  sub_1ADDCC35C(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t Ref.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1ADF4E010(a1, v12);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1AE23E38C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v5 = __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_1ADE56FBC(v5, v6, v7);
    sub_1AE23E03C();
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    *a2 = v9;
    a2[1] = v10;
  }

  return result;
}

uint64_t sub_1AE003D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + 16);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v13 = v5[1];
  (*(v15 + 16))(v12, v10);
  v18[0] = v14;
  v18[1] = v13;
  v16 = *(a5 + 24);
  sub_1ADDD86D8(v14, v13);
  return v16(v12, v18, v9, *(a3 + 24), a4, a5);
}

double sub_1AE003E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v6 = v3[1];
  v9[0] = v7;
  v9[1] = v6;

  sub_1ADDD86D8(v7, v6);
  sub_1ADECCBCC(a1, v9, *(a3 + 16), *(a3 + 24));

  return result;
}

double sub_1AE003EE4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1ADDD86D8(a1, a2);
  }

  return result;
}

uint64_t sub_1AE003F24(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1ADDCC35C(result, a2);
  }

  return result;
}

uint64_t sub_1AE003F64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA40, &unk_1AE24EC50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AE003FD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA40, &unk_1AE24EC50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AE004064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9Coherence3RefV20ObservableDifferenceOyx_G(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE0040C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE00411C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_1AE00416C(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_1AE0041C0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v2)
  {
    v14 = *v2;
  }

  else
  {
    v15 = v9;
    type metadata accessor for CRRegisterRef(0, v10, *(a2 + 24), v11);
    sub_1AE0062C4(a2);
    if (qword_1ED966C80 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v15, qword_1EB5D74D0);
    sub_1ADED0548(v16, v7);
    v14 = swift_allocObject();
    sub_1ADDD25B8(v13, v7);
  }

  v17 = *(*v14 + 184);

  v18 = v17(a1);

  return v18;
}

double CRRegister.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_1ADDFCC74(a1, a2, a3);
  if (!v4)
  {
    v10 = v6;
    v9 = *(a2 + 16);
    v8 = *(a2 + 24);

    sub_1ADE6BB04(&v10, v9, v8);
  }

  return result;
}

uint64_t sub_1AE004674@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED966C80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FinalizedTimestamp(0);
  v3 = __swift_project_value_buffer(v2, qword_1EB5D74D0);

  return sub_1ADED0548(v3, a1);
}

uint64_t sub_1AE0046EC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1ADDD25B8(a1, a2);
  return v4;
}

uint64_t sub_1AE00473C()
{
  v0 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  sub_1ADDE1760();
  sub_1ADE12F48(v2);
  v6 = swift_allocObject();
  sub_1ADDD25B8(v5, v2);
  return v6;
}

uint64_t sub_1AE004854(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for FinalizedTimestamp(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Proto_CRDT._StorageClass();
  inited = swift_initStaticObject();
  type metadata accessor for Proto_Register._StorageClass();
  v9 = swift_initStaticObject();
  sub_1ADE12F48(v8);
  v10 = a1;
  v11 = sub_1ADDF66A8(v8);
  v12 = *&v8[*(v6 + 28)];
  sub_1ADE173B8(v8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = swift_allocObject();
    v9 = sub_1ADDE8D20(v9);
  }

  swift_beginAccess();
  *(v9 + 16) = v11;
  *(v9 + 24) = v12;
  *(v9 + 32) = 0;
  v13 = *(a1 + 112);
  v14 = *(a1 + 120);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v15 = sub_1AE0054D4(v3, a1);
  if (v2)
  {
  }

  else
  {
    v19 = sub_1ADE71C08(v15, v16, v17);
    swift_beginAccess();
    v20 = *(v19 + 24);
    *(a1 + 112) = v13;

    *(a1 + 120) = v14;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      v9 = sub_1ADDE8D20(v9);
    }

    v10 = inited;
    swift_beginAccess();
    *(v9 + 40) = v20;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = swift_allocObject();
      v22 = *(v10 + 16);
      *(v21 + 16) = v22;
      sub_1ADE5215C(v22);

      v10 = v21;
    }

    v23 = swift_allocObject();
    *(v23 + 16) = v9;
    v24 = *(v10 + 16);
    *(v10 + 16) = v23;
    sub_1ADE52174(v24);
  }

  return v10;
}

uint64_t sub_1AE004B00()
{
  (*(*(*(*v0 + 192) - 8) + 8))(v0 + *(*v0 + 208));
  v1 = v0 + *(*v0 + 216);

  return sub_1ADE173B8(v1);
}

uint64_t sub_1AE004C00(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 208);
  swift_beginAccess();
  v5 = *(v3 + 192);
  v6 = *(v5 - 8);
  (*(v6 + 24))(v1 + v4, a1, v5);
  swift_endAccess();
  return (*(v6 + 8))(a1, v5);
}

uint64_t sub_1AE004CE4(uint64_t a1)
{
  v3 = *(*v1 + 216);
  swift_beginAccess();
  sub_1ADFAFFE4(a1, v1 + v3);
  swift_endAccess();
  return sub_1ADE173B8(a1);
}

uint64_t sub_1AE004D58@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 224);
  swift_beginAccess();
  return sub_1ADED0548(v1 + v3, a1);
}

uint64_t sub_1AE004DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1AE004E14(a1, a2, a3);
  return v6;
}

uint64_t sub_1AE004E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(*v3 + 192) - 8) + 32))(v3 + *(*v3 + 208), a1);
  sub_1ADE172E4(a2, v3 + *(*v3 + 216));
  sub_1ADE172E4(a3, v3 + *(*v3 + 224));
  return v3;
}

uint64_t sub_1AE004EE0()
{
  v1 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1ADDE1760();
  sub_1ADE12F48(v6);
  v10 = *(*v0 + 224);
  swift_beginAccess();
  sub_1ADED0548(v0 + v10, v3);
  v11 = swift_allocObject();
  sub_1AE004E14(v9, v6, v3);
  return v11;
}

uint64_t sub_1AE00505C(uint64_t a1)
{
  v4 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 104) >= 2u)
  {
    v37 = v2;
    v35 = type metadata accessor for Proto_CRDT._StorageClass();
    inited = swift_initStaticObject();
    v38 = type metadata accessor for Proto_Register._StorageClass();
    v11 = swift_initStaticObject();
    sub_1ADE12F48(v9);
    v12 = sub_1ADDF66A8(v9);
    v13 = *&v9[*(v4 + 20)];
    sub_1ADE173B8(v9);
    v14 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      v14 = sub_1ADDE8D20(v11);
    }

    swift_beginAccess();
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    *(v14 + 32) = 0;
    sub_1AE004D58(v9);
    v15 = sub_1ADDF66A8(v9);
    v16 = *&v9[*(v4 + 20)];
    sub_1ADE173B8(v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      v11 = sub_1ADDE8D20(v11);
    }

    swift_beginAccess();
    *(v11 + 16) = v15;
    *(v11 + 24) = v16;
    *(v11 + 32) = 0;
    v4 = *(a1 + 112);
    v17 = *(a1 + 120);
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    v18 = v37;
    v19 = sub_1AE0054D4(v1, a1);
    if (v18)
    {
    }

    else
    {
      v23 = sub_1ADE71C08(v19, v20, v21);
      swift_beginAccess();
      v24 = *(v23 + 24);
      *(a1 + 112) = v4;

      *(a1 + 120) = v17;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        swift_allocObject();
        v11 = sub_1ADDE8D20(v11);
      }

      v4 = inited;
      swift_beginAccess();
      *(v11 + 40) = v24;

      swift_beginAccess();
      if (*(v14 + 48))
      {
        v26 = *(v14 + 48);
      }

      else
      {
        v26 = v4;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = swift_allocObject();
        v28 = *(v26 + 16);
        *(v27 + 16) = v28;
        sub_1ADE5215C(v28);

        v26 = v27;
      }

      v29 = swift_allocObject();
      *(v29 + 16) = v11;
      v30 = *(v26 + 16);
      *(v26 + 16) = v29;
      sub_1ADE52174(v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        swift_allocObject();
        v14 = sub_1ADDE8D20(v14);
      }

      swift_beginAccess();
      *(v14 + 48) = v26;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = swift_allocObject();
        v32 = *(v4 + 16);
        *(v31 + 16) = v32;
        sub_1ADE5215C(v32);

        v4 = v31;
      }

      v33 = swift_allocObject();
      *(v33 + 16) = v14;
      v34 = *(v4 + 16);
      *(v4 + 16) = v33;
      sub_1ADE52174(v34);
    }
  }

  else
  {
    sub_1ADE42E40(v5, v6, v7);
    swift_allocError();
    *v10 = 0xD00000000000003CLL;
    *(v10 + 8) = 0x80000001AE262020;
    *(v10 + 16) = 3;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1AE0054D4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - v7;
  v9(v6);
  (*(*(*(*(v3 + 200) + 8) + 8) + 16))(a2, v4);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AE005604()
{
  (*(*(*(*v0 + 192) - 8) + 8))(v0 + *(*v0 + 208));
  sub_1ADE173B8(v0 + *(*v0 + 216));
  v1 = v0 + *(*v0 + 224);

  return sub_1ADE173B8(v1);
}

uint64_t sub_1AE0056B4()
{
  (*(*(*(*v0 + 192) - 8) + 8))(v0 + *(*v0 + 208));
  sub_1ADE173B8(v0 + *(*v0 + 216));
  sub_1ADE173B8(v0 + *(*v0 + 224));
  return v0;
}

uint64_t CRRegister.setValue(in:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = *(a3 + 16);
  v58 = *(v61 - 8);
  v59 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - v20;
  v62 = *v3;
  CRRegister.timestamp.getter(&v56 - v20);
  v22 = *(v8 + 20);
  v23 = *(a1 + v22);
  if (v23 != *&v21[v22])
  {
    sub_1ADE173B8(v21);
LABEL_11:
    v62 = *v4;
    CRRegister.timestamp.getter(v10);
    v37 = *&v10[*(v8 + 20)];
    if (v37 == v23)
    {
      v38 = sub_1ADF5EB00(v10);
      sub_1ADE173B8(v10);
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      sub_1ADE173B8(v10);
      if (v37 >= v23)
      {
        return 0;
      }
    }

    v40 = *(a3 + 24);
    v41 = v61;
    type metadata accessor for CRRegisterRefBase(0, v61, v40, v39);
    v43 = v18;
    if ((sub_1AE23DFAC() & 1) == 0 || !*v4 || (type metadata accessor for CRGroupedRegisterRef(0, v41, v40, v42), (v44 = swift_dynamicCastClass()) == 0))
    {
      type metadata accessor for CRGroupedRegisterRef(0, v41, v40, v42);
      v49 = v60;
      (*(v58 + 16))(v60, v59, v41);
      sub_1ADED0548(a1, v43);
      if (qword_1ED96AC50 != -1)
      {
        swift_once();
      }

      sub_1ADDD0F70();
      v50 = v57;
      sub_1AE23BFBC();
      *(v50 + *(v8 + 20)) = 0;
      v51 = swift_allocObject();
      v52 = v49;
      v53 = v43;
      v54 = v50;
      goto LABEL_27;
    }

    v45 = v44;
    v46 = *(*v44 + 216);
    swift_beginAccess();

    sub_1ADFAFFE4(a1, v45 + v46);
    swift_endAccess();
    if (qword_1ED96AC50 == -1)
    {
LABEL_19:
      sub_1ADDD0F70();
      sub_1AE23BFBC();
      *(v43 + *(v8 + 20)) = 0;
      v47 = *(*v45 + 224);
      swift_beginAccess();
      sub_1ADFAF2E4(v43, v45 + v47);
      swift_endAccess();
      v48 = *(*v45 + 208);
      swift_beginAccess();
      (*(v58 + 24))(v45 + v48, v59, v61);
      swift_endAccess();

      return 1;
    }

LABEL_30:
    swift_once();
    goto LABEL_19;
  }

  v24 = sub_1AE23BF8C();
  sub_1ADE173B8(v21);
  if ((v24 & 1) == 0)
  {
    goto LABEL_11;
  }

  v26 = *(a3 + 24);
  v27 = v61;
  type metadata accessor for CRRegisterRefBase(0, v61, v26, v25);
  if ((sub_1AE23DFAC() & 1) == 0 || !*v4 || (type metadata accessor for CRGroupedRegisterRef(0, v27, v26, v28), (v29 = swift_dynamicCastClass()) == 0))
  {
    v45 = type metadata accessor for CRGroupedRegisterRef(0, v27, v26, v28);
    (*(v58 + 16))(v60, v59, v27);
    sub_1ADED0548(a1, v18);
    v62 = *v4;
    sub_1AE005FDC(v13);
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    sub_1ADDD0F70();
    v43 = v57;
    sub_1AE23BFBC();
    v55 = *&v13[*(v8 + 20)];
    sub_1ADE173B8(v13);
    if (!__OFADD__(v55, 1))
    {
      *(v43 + *(v8 + 20)) = v55 + 1;
      v51 = swift_allocObject();
      v52 = v60;
      v53 = v18;
      v54 = v43;
LABEL_27:
      sub_1AE004E14(v52, v53, v54);

      *v4 = v51;
      return 1;
    }

    __break(1u);
    goto LABEL_30;
  }

  v30 = v29;
  v31 = *(*v29 + 224);
  swift_beginAccess();
  v32 = v57;
  sub_1ADED0548(v30 + v31, v57);
  v33 = qword_1ED96AC50;

  if (v33 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v34 = *(v32 + *(v8 + 20));
  result = sub_1ADE173B8(v32);
  if (!__OFADD__(v34, 1))
  {
    *&v18[*(v8 + 20)] = v34 + 1;
    swift_beginAccess();
    sub_1ADFAF2E4(v18, v30 + v31);
    swift_endAccess();
    v36 = *(*v30 + 208);
    swift_beginAccess();
    (*(v58 + 24))(v30 + v36, v59, v61);
    swift_endAccess();

    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE005FDC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = *v1;
  if (v7)
  {
    (*(*v7 + 144))(v4);
    v8 = type metadata accessor for FinalizedTimestamp(0);
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
    return sub_1ADE172E4(v6, a1);
  }

  else
  {
    v10 = type metadata accessor for FinalizedTimestamp(0);
    v11 = *(v10 - 8);
    (*(v11 + 56))(v6, 1, 1, v10);
    if (qword_1ED966C80 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v10, qword_1EB5D74D0);
    sub_1ADED0548(v12, a1);
    result = (*(v11 + 48))(v6, 1, v10);
    if (result != 1)
    {
      return sub_1ADE1727C(v6);
    }
  }

  return result;
}

uint64_t sub_1AE0061C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4[1] = *a1;
  result = CRRegister.projectedValue.getter(v4);
  *a2 = v4[0];
  return result;
}

uint64_t sub_1AE006208(uint64_t *a1)
{
  v1 = *a1;

  v2 = CRRegister.projectedValue.modify();
  *v3 = v1;

  return (v2)(&v5, 0);
}

void sub_1AE00633C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - v7;
  (*(v9 + 16))(&v12 - v7, v6);
  v11 = type metadata accessor for CRRegister(0, v4, v5, v10);
  CRRegister.value.setter(v8, v11);
}

uint64_t (*CRRegister.value.modify(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x78uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[4] = a2;
  v6[5] = v2;
  v8 = *(a2 + 16);
  v6[6] = v8;
  v9 = *(v8 - 8);
  v6[7] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[8] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[9] = v11;
  v12 = type metadata accessor for FinalizedTimestamp(0);
  v7[10] = v12;
  v13 = *(*(v12 - 8) + 64);
  if (v5)
  {
    v7[11] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v7[11] = malloc(v13);
    v14 = malloc(v13);
  }

  v7[12] = v14;
  sub_1ADE02740(a2);
  sub_1ADE02898(a2, v15, v16, v17);
  v18 = *v2;
  v7[13] = v18;
  if (v18)
  {
    v19 = *(*v18 + 112);

    v7[14] = v19(v7);
    return sub_1AE0065E8;
  }

  else
  {
    sub_1AE0062C4(a2);
    return sub_1AE006794;
  }
}

void sub_1AE0065E8(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 112))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    CRRegister.timestamp.getter(*(v3 + 88));
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    v4 = *(v3 + 88);
    v5 = *(v3 + 80);
    sub_1ADDD0F70();
    sub_1AE23BFBC();
    v6 = *(v4 + *(v5 + 20));
    sub_1ADE173B8(v4);
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return;
    }

    v9 = *(v3 + 96);
    v10 = *(v3 + 104);
    *(v9 + *(v5 + 20)) = v8;
    (*(*v10 + 128))(v9, v7);
  }

  v11 = *(v3 + 88);
  v13 = *(v3 + 64);
  v12 = *(v3 + 72);
  free(*(v3 + 96));
  free(v11);
  free(v12);
  free(v13);

  free(v3);
}

void sub_1AE006794(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (a2)
  {
    (*(v4[7] + 8))(v4[9], v4[6], a3, a4);
  }

  else
  {
    v5 = v4[11];
    v7 = v4[8];
    v6 = v4[9];
    v8 = v4[6];
    v9 = v4[7];
    type metadata accessor for CRRegisterRef(0, v8, *(v4[4] + 24), a4);
    (*(v9 + 16))(v7, v6, v8);
    CRRegister.timestamp.getter(v5);
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    v10 = v4[11];
    v11 = v4[10];
    sub_1ADDD0F70();
    sub_1AE23BFBC();
    v12 = *(v10 + *(v11 + 20));
    sub_1ADE173B8(v10);
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return;
    }

    v14 = v4[12];
    v16 = v4[8];
    v15 = v4[9];
    v17 = v4[6];
    v18 = v4[7];
    v19 = v4[5];
    *(v14 + *(v11 + 20)) = v13;
    v20 = swift_allocObject();
    sub_1ADDD25B8(v16, v14);

    *v19 = v20;
    (*(v18 + 8))(v15, v17);
  }

  v21 = v4[11];
  v23 = v4[8];
  v22 = v4[9];
  free(v4[12]);
  free(v21);
  free(v22);
  free(v23);

  free(v4);
}

void (*CRRegister.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  CRRegister.value.getter(a2);
  return sub_1AE006ACC;
}

void sub_1AE006ACC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_1ADE031A0(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_1ADE031A0((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CRRegister.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*(*v14 + 16))
  {
    v22 = *v3;
    CRRegister.value.getter(a2);
    v15 = *(a2 + 24);
    (*(*(v15 + 8) + 24))(a1, v7);
    (*(v8 + 8))(v10, v7);
    v16 = a3;
    v17 = v13;
    v18 = v7;
    v19 = v15;
  }

  else
  {
    v22 = *v3;
    CRRegister.value.getter(a2);
    v19 = *(a2 + 24);
    v16 = a3;
    v17 = v13;
    v18 = v7;
  }

  return CRRegister.init(_:)(v17, v18, v19, v16);
}

uint64_t CRRegister.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v7 = v5;

  CRRegister.copy(renamingReferences:)(&v7, a2, a3);
}

uint64_t CRRegister.init<A>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = sub_1AE23D7CC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  (*(v10 + 16))(&v16 - v12, a2, v9, v11);
  v16 = a4;
  WitnessTable = swift_getWitnessTable();
  CRRegister.init(_:)(v13, v9, WitnessTable, &v17);

  result = (*(v10 + 8))(a2, v9);
  *a5 = v17;
  return result;
}

uint64_t CRRegister.init(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v11);
  CRRegister.init(_:)(v13, a3, a4, &v16);

  result = (*(v10 + 8))(a2, a3);
  *a5 = v16;
  return result;
}

uint64_t CRRegister.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  (*(v8 + 16))(&v14 - v10, a1, v7, v9);
  v14 = a3;
  WitnessTable = swift_getWitnessTable();
  CRRegister.init(_:)(v11, v7, WitnessTable, &v15);
  result = (*(v8 + 8))(a1, v7);
  *a4 = v15;
  return result;
}

uint64_t CRRegister.init(defaultState:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*(*(v9 + 8) + 8) + 40))(v6);
  if (!v2)
  {
    result = (*(v5 + 8))(v8, a1);
    *a2 = 0;
  }

  return result;
}

uint64_t CRRegister.init(_:clock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 - 8);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 || ((*(*(*(a4 + 8) + 8) + 48))(a3, v15.n128_f64[0]) & 1) == 0)
  {
    (*(v13 + 16))(v17, a1, a3, v15);
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    sub_1ADDD0F70();
    sub_1AE23BFBC();
    *&v12[*(v10 + 20)] = a2;
    sub_1ADDD22FC(v17, v12, a3, a4, &v21);
    result = (*(v13 + 8))(a1, a3);
    v19 = v21;
  }

  else
  {
    result = (*(v13 + 8))(a1, a3);
    v19 = 0;
  }

  *a5 = v19;
  return result;
}

void CRRegister.merge(_:)(uint64_t *a1@<X0>, __int16 *a2@<X8>)
{
  v3 = v2;
  v57 = a2;
  v5 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v52 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v52 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v52 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v52 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v52 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v52 - v29;
  v31 = *a1;
  v59 = *v3;
  CRRegister.timestamp.getter(&v52 - v29);
  v58 = v31;
  CRRegister.timestamp.getter(v27);
  v32 = *(v5 + 20);
  v33 = *&v30[v32];
  v34 = *&v27[v32];
  if (v33 == v34)
  {
    v35 = sub_1ADF5EB00(v30);
  }

  else
  {
    v35 = v33 < v34;
  }

  sub_1ADE173B8(v27);
  sub_1ADE173B8(v30);
  if (v35)
  {
    goto LABEL_5;
  }

  v59 = *v3;
  CRRegister.timestamp.getter(v24);
  v58 = v31;
  CRRegister.timestamp.getter(v21);
  if (*&v24[*(v5 + 20)] == *&v21[*(v5 + 20)])
  {
    v37 = sub_1AE23BF8C();
    sub_1ADE173B8(v21);
    sub_1ADE173B8(v24);
    if (v37)
    {
      v59 = *v3;
      v38 = v55;
      sub_1AE005FDC(v55);
      v58 = v31;
      v39 = v56;
      sub_1AE005FDC(v56);
      v40 = *(v5 + 20);
      v41 = *(v38 + v40);
      v42 = *(v39 + v40);
      v43 = v41 == v42 ? sub_1ADF5EB00(v38) : v41 < v42;
      sub_1ADE173B8(v39);
      sub_1ADE173B8(v38);
      if (v43)
      {
LABEL_5:

        *v3 = v31;
        if (qword_1EB5B9910 != -1)
        {
          swift_once();
        }

        v36 = &word_1EB5D750B;
        goto LABEL_25;
      }
    }
  }

  else
  {
    sub_1ADE173B8(v21);
    sub_1ADE173B8(v24);
  }

  v59 = *v3;
  CRRegister.timestamp.getter(v14);
  v58 = v31;
  CRRegister.timestamp.getter(v11);
  if (*&v14[*(v5 + 20)] != *&v11[*(v5 + 20)])
  {
    sub_1ADE173B8(v11);
    v48 = v14;
LABEL_21:
    sub_1ADE173B8(v48);
    goto LABEL_22;
  }

  v44 = sub_1AE23BF8C();
  sub_1ADE173B8(v11);
  sub_1ADE173B8(v14);
  if ((v44 & 1) == 0)
  {
    goto LABEL_22;
  }

  v59 = *v3;
  v45 = v54;
  sub_1AE005FDC(v54);
  v58 = v31;
  v46 = v53;
  sub_1AE005FDC(v53);
  if (*(v45 + *(v5 + 20)) != *(v46 + *(v5 + 20)))
  {
    sub_1ADE173B8(v46);
    v48 = v45;
    goto LABEL_21;
  }

  v47 = sub_1AE23BF8C();
  sub_1ADE173B8(v46);
  sub_1ADE173B8(v45);
  if (v47)
  {
    if (qword_1ED9670C0 != -1)
    {
      swift_once();
    }

    v36 = &word_1ED96F220;
    goto LABEL_25;
  }

LABEL_22:
  if (qword_1EB5B9908 != -1)
  {
    swift_once();
  }

  v36 = &word_1EB5D7508;
LABEL_25:
  v49 = *v36;
  v50 = *(v36 + 2);
  v51 = v57;
  *v57 = v49;
  *(v51 + 2) = v50;
}

uint64_t CRRegister.newRefs(from:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v49 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v44 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v44 - v23;
  v25 = *a1;
  v26 = *v3;
  v27 = *(*(a2 + 24) + 8);
  v28 = *(v27 + 80);
  v47 = v6;
  if (v28(v6, v27, v22))
  {
    v44 = a2;
    v51 = v26;
    CRRegister.timestamp.getter(v24);
    v50 = v25;
    CRRegister.timestamp.getter(v20);
    v29 = *(v8 + 20);
    v30 = *&v20[v29];
    v31 = *&v24[v29];
    if (v30 == v31)
    {
      v32 = sub_1ADF5EB00(v20);
    }

    else
    {
      v32 = v30 < v31;
    }

    sub_1ADE173B8(v20);
    sub_1ADE173B8(v24);
    if (v32)
    {
      goto LABEL_6;
    }

    v51 = v26;
    CRRegister.timestamp.getter(v17);
    v50 = v25;
    CRRegister.timestamp.getter(v14);
    if (*&v17[*(v8 + 20)] == *&v14[*(v8 + 20)])
    {
      v37 = sub_1AE23BF8C();
      sub_1ADE173B8(v14);
      sub_1ADE173B8(v17);
      if (v37)
      {
        v51 = v26;
        v38 = v45;
        sub_1AE005FDC(v45);
        v50 = v25;
        v39 = v46;
        sub_1AE005FDC(v46);
        v40 = *(v8 + 20);
        v41 = *(v39 + v40);
        v42 = *(v38 + v40);
        v43 = v41 == v42 ? sub_1ADF5EB00(v39) : v41 < v42;
        sub_1ADE173B8(v39);
        sub_1ADE173B8(v38);
        if (v43)
        {
LABEL_6:
          v51 = v26;
          v33 = v48;
          CRRegister.value.getter(v44);
          v34 = v47;
          v35 = sub_1ADECE30C(v47, v27);
          (*(v49 + 8))(v33, v34);
          return v35;
        }
      }
    }

    else
    {
      sub_1ADE173B8(v14);
      sub_1ADE173B8(v17);
    }
  }

  return MEMORY[0x1E69E7CD0];
}

Swift::Bool __swiftcall CRRegister.needToFinalizeTimestamps()()
{
  v2 = v0;
  v3 = *(v0 + 16);
  v4 = *(v3 - 8);
  v5 = (MEMORY[0x1EEE9AC00])();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  if (v8)
  {
    (*(*v8 + 96))(v5);
    LOBYTE(v8) = (*(*(*(v2 + 24) + 8) + 56))(v3);
    (*(v4 + 8))(v7, v3);
  }

  return v8 & 1;
}

void CRRegister.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v11[0] = *v2;

  v6 = CRRegister.needToFinalizeTimestamps()();

  if (v6)
  {
    sub_1ADE02898(a2, v7, v8, v9);
    if (*v3)
    {
      v10 = (*(**v3 + 112))(v11);
      (*(*(*(a2 + 24) + 8) + 64))(a1, *(a2 + 16));
      v10(v11, 0);
    }
  }
}

uint64_t CRRegister.description.getter(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  CRRegister.value.getter(v1);
  v2 = sub_1AE23CD6C();
  MEMORY[0x1B26FB670](v2);

  MEMORY[0x1B26FB670](93, 0xE100000000000000);
  return 0x7473696765525243;
}

uint64_t CRRegister.actionUndoingDifference(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v6 = *(a2 + 16);
  v7 = sub_1AE23D7CC();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v45 - v8;
  v9 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v45 - v23;
  v25 = *a1;
  v26 = *v3;
  v52 = *v3;
  CRRegister.timestamp.getter(&v45 - v23);
  v51 = v25;
  CRRegister.timestamp.getter(v21);
  v27 = *(v9 + 20);
  v28 = *&v24[v27];
  v29 = *&v21[v27];
  if (v28 == v29)
  {
    v30 = sub_1ADF5EB00(v24);
  }

  else
  {
    v30 = v28 < v29;
  }

  sub_1ADE173B8(v21);
  sub_1ADE173B8(v24);
  if ((v30 & 1) == 0)
  {
    v52 = v26;
    CRRegister.timestamp.getter(v18);
    v51 = v25;
    CRRegister.timestamp.getter(v15);
    if (*&v18[*(v9 + 20)] == *&v15[*(v9 + 20)])
    {
      v34 = sub_1AE23BF8C();
      sub_1ADE173B8(v15);
      sub_1ADE173B8(v18);
      if (v34)
      {
        v52 = v26;
        v35 = v45;
        sub_1AE005FDC(v45);
        v51 = v25;
        v36 = v46;
        sub_1AE005FDC(v46);
        v37 = *(v9 + 20);
        v38 = *(v36 + v37);
        v39 = *(v35 + v37);
        v40 = v38 == v39 ? sub_1ADF5EB00(v36) : v38 < v39;
        sub_1ADE173B8(v36);
        sub_1ADE173B8(v35);
        if ((v40 & 1) == 0)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_1ADE173B8(v15);
      sub_1ADE173B8(v18);
    }

    v52 = v25;
    v41 = v47;
    v42 = v50;
    CRRegister.value.getter(v50);
    (*(*(v6 - 8) + 56))(v41, 0, 1, v6);
    v32 = *(v42 + 24);
    (*(v48 + 32))(a3, v41, v49);
    v33 = 0;
    goto LABEL_12;
  }

LABEL_5:
  v32 = *(v50 + 24);
  v33 = 1;
LABEL_12:
  v43 = type metadata accessor for CRRegister.MutatingAction(0, v6, v32, v31);
  return (*(*(v43 - 8) + 56))(a3, v33, 1, v43);
}

uint64_t CRRegister.apply(_:)(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = *(a2 + 16);
  v4 = sub_1AE23D7CC();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - v5;
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v13 = type metadata accessor for CRRegister.MutatingAction(255, v3, *(a2 + 24), v12);
  v14 = sub_1AE23D7CC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - v16;
  v18 = *(v13 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v28 - v21;
  (*(v15 + 16))(v17, v32, v14, v20);
  if ((*(v18 + 48))(v17, 1, v13) == 1)
  {
    return (*(v15 + 8))(v17, v14);
  }

  (*(v18 + 32))(v22, v17, v13);
  v25 = v30;
  v24 = v31;
  (*(v30 + 16))(v6, v22, v31);
  v26 = v29;
  if ((*(v29 + 48))(v6, 1, v3) == 1)
  {
    (*(v18 + 8))(v22, v13);
    return (*(v25 + 8))(v6, v24);
  }

  else
  {
    (*(v26 + 32))(v11, v6, v3);
    v27 = v28;
    (*(v26 + 16))(v28, v11, v3);
    CRRegister.value.setter(v27, a2);
    (*(v26 + 8))(v11, v3);
    return (*(v18 + 8))(v22, v13);
  }
}

uint64_t CRRegister.hasDelta(from:)(uint64_t *a1)
{
  v3 = type metadata accessor for FinalizedTimestamp(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - v8;
  v10 = *a1;
  v16[1] = *v1;
  CRRegister.timestamp.getter(v16 - v8);
  v16[0] = v10;
  CRRegister.timestamp.getter(v6);
  v11 = *(v4 + 28);
  v12 = *&v6[v11];
  v13 = *&v9[v11];
  if (v12 == v13)
  {
    v14 = sub_1ADF5EB00(v6);
  }

  else
  {
    v14 = v12 < v13;
  }

  sub_1ADE173B8(v6);
  sub_1ADE173B8(v9);
  return v14 & 1;
}

uint64_t CRRegister.delta(_:from:)@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for FinalizedTimestamp(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - v10;
  v12 = *a1;
  v13 = *v2;
  v19[1] = v12;
  CRRegister.timestamp.getter(v19 - v10);
  v19[0] = v13;
  CRRegister.timestamp.getter(v8);
  v14 = *(v6 + 28);
  v15 = *&v11[v14];
  v16 = *&v8[v14];
  if (v15 == v16)
  {
    v17 = sub_1ADF5EB00(v11);
  }

  else
  {
    v17 = v15 < v16;
  }

  sub_1ADE173B8(v8);
  result = sub_1ADE173B8(v11);
  if (v17)
  {
  }

  else
  {
    v13 = 1;
  }

  *a2 = v13;
  return result;
}

uint64_t CRRegister.merge(delta:)(uint64_t *a1)
{
  v2 = *a1;
  CRRegister.merge(_:)(&v2, &v3);
  return 1;
}

uint64_t CRRegister.observableDifference(from:with:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v47 = a2;
  v48 = v9;
  MEMORY[0x1EEE9AC00](a1);
  v46 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v40 - v12;
  v42 = *(*(v13 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v43 = *(v15 - 8);
  v44 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v40 - v16;
  v17 = type metadata accessor for FinalizedTimestamp(0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v40 - v23;
  v25 = *a1;
  v26 = *v4;
  v27 = *(*(AssociatedTypeWitness - 8) + 56);
  v49 = a4;
  v27(a4, 1, 1, AssociatedTypeWitness, v22);
  v51 = v25;
  CRRegister.timestamp.getter(v24);
  v50 = v26;
  CRRegister.timestamp.getter(v20);
  v28 = *(v18 + 28);
  v29 = *&v20[v28];
  v30 = *&v24[v28];
  if (v29 == v30)
  {
    v31 = sub_1ADF5EB00(v20);
  }

  else
  {
    v31 = v29 < v30;
  }

  sub_1ADE173B8(v20);
  result = sub_1ADE173B8(v24);
  if ((v31 & 1) == 0)
  {
    v51 = v26;
    v33 = v45;
    CRRegister.value.getter(a3);
    v50 = v25;
    v34 = v46;
    CRRegister.value.getter(a3);
    v35 = v41;
    (*(v42 + 40))(v34, v47, v8);
    v36 = *(v48 + 8);
    v36(v34, v8);
    v36(v33, v8);
    v38 = v43;
    v37 = v44;
    v39 = v49;
    (*(v43 + 8))(v49, v44);
    return (*(v38 + 32))(v39, v35, v37);
  }

  return result;
}

uint64_t CRRegister.minEncodingVersion.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *v1;
  CRRegister.value.getter(v7);
  (*(*(*(*(a1 + 24) + 8) + 8) + 24))(v3);
  return (*(v4 + 8))(v6, v3);
}

uint64_t static CRRegister.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v16 = *a1;
  v17 = *a2;
  v22 = v16;
  CRRegister.timestamp.getter(&v21 - v14);
  v21 = v17;
  CRRegister.timestamp.getter(v12);
  if (*&v15[*(v4 + 20)] != *&v12[*(v4 + 20)])
  {
    sub_1ADE173B8(v12);
    sub_1ADE173B8(v15);
    goto LABEL_6;
  }

  v18 = sub_1AE23BF8C();
  sub_1ADE173B8(v12);
  sub_1ADE173B8(v15);
  if ((v18 & 1) == 0)
  {
LABEL_6:
    v19 = 0;
    return v19 & 1;
  }

  v22 = v16;
  sub_1AE005FDC(v9);
  v21 = v17;
  sub_1AE005FDC(v6);
  if (*&v9[*(v4 + 20)] == *&v6[*(v4 + 20)])
  {
    v19 = sub_1AE23BF8C();
  }

  else
  {
    v19 = 0;
  }

  sub_1ADE173B8(v6);
  sub_1ADE173B8(v9);
  return v19 & 1;
}

void CRRegister.MutatingAction.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v28 - v14;
  if (*(a1 + 64))
  {
    v28 = v13;
    v29 = a4;
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    sub_1ADDE78C8();
    v18 = *(v17 + 16);
    if (v18 >> 60)
    {
      v19 = 1;
    }

    else
    {
      v19 = (v18 & 0xF000000000000007) == 0xF000000000000007;
    }

    if (v19)
    {
      type metadata accessor for Proto_Register._StorageClass();
      v21 = swift_initStaticObject();
    }

    else
    {
      v21 = *(v18 + 16);
    }

    swift_beginAccess();
    v22 = *(v21 + 40);

    if (v22)
    {
      sub_1ADDE78C8();
      v24 = *(v23 + 16);
      if (v24 >> 60 || (v24 & 0xF000000000000007) == 0xF000000000000007)
      {
        type metadata accessor for Proto_Register._StorageClass();
        v25 = swift_initStaticObject();
      }

      else
      {
        v25 = *(v24 + 16);
      }

      swift_beginAccess();
      v26 = *(v25 + 40);
      if (v26)
      {
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v26 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v27 = sub_1ADE0262C(v26, a1);

      (*(*(*(a3 + 8) + 8) + 8))(v27, a2);

      if (!v4)
      {
        (*(*(a2 - 8) + 56))(v15, 0, 1, a2);
        (*(v28 + 32))(v29, v15, v9);
      }
    }

    else
    {

      (*(*(a2 - 8) + 56))(v29, 1, 1, a2);
    }
  }

  else
  {
    sub_1ADE42E40(v10, v11, v12);
    swift_allocError();
    *v20 = 0xD000000000000014;
    *(v20 + 8) = 0x80000001AE25FB50;
    *(v20 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t CRRegister.MutatingAction.encode(to:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = sub_1AE23D7CC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ADDFCC74(v14, v15, v16);
  if (!v2)
  {
    v18 = result;
    v27 = 0;
    (*(v7 + 16))(v9, v28, v6);
    if ((*(v10 + 48))(v9, 1, v5) == 1)
    {
      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      v19 = (*(v10 + 32))(v13, v9, v5);
      MEMORY[0x1EEE9AC00](v19);
      v20 = *(a2 + 24);
      *(&v26 - 4) = v5;
      *(&v26 - 3) = v20;
      *(&v26 - 2) = v13;
      *(&v26 - 1) = a1;

      v21 = v27;
      v22 = sub_1ADE6B938(sub_1ADE74060);
      if (v21)
      {
      }

      else
      {
        v23 = v22;
        swift_beginAccess();
        v24 = *(*(v18 + 24) + 16);
        if (v24 >> 60 || (v24 & 0xF000000000000007) == 0xF000000000000007)
        {
          type metadata accessor for Proto_Register._StorageClass();
          inited = swift_initStaticObject();
        }

        else
        {
          inited = *(v24 + 16);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_Register._StorageClass();
          swift_allocObject();
          inited = sub_1ADDE8D20(inited);
        }

        swift_beginAccess();
        *(inited + 40) = v23;

        sub_1AE1B783C(inited);
        swift_endAccess();
      }

      return (*(v10 + 8))(v13, v5);
    }
  }

  return result;
}

uint64_t CRRegister<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_1AE23E3BC();
  v13[6] = v9;
  CRRegister.value.getter(a2);
  __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_1AE23E06C();
  (*(v6 + 8))(v8, v5);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1AE0099D4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FinalizedTimestamp(319);
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

uint64_t sub_1AE009AA4(uint64_t a1)
{
  result = sub_1AE23D7CC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t CRTaggedValue.init(tag:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  v8 = type metadata accessor for CRTaggedValue(0, a3, a4, a4);
  v9 = *(*(a3 - 8) + 32);
  v10 = a5 + *(v8 + 36);

  return v9(v10, a2, a3);
}

uint64_t CRTaggedValue.observableDifference(from:with:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v29 = a2;
  v30 = a4;
  v7 = *(a3 + 16);
  v8 = *(*(a3 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  if (*v4 == *a1)
  {
    v28 = v15;
    (*(v8 + 40))(&a1[*(a3 + 36)], v29, v7, v8, v16);
    if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
    {
      (*(v28 + 8))(v12, v10);
      return (*(v13 + 56))(v30, 1, 1, AssociatedTypeWitness);
    }

    else
    {
      v23 = *(v13 + 32);
      v23(v18, v12, AssociatedTypeWitness);
      v24 = v30;
      v23(v30, v18, AssociatedTypeWitness);
      return (*(v13 + 56))(v24, 0, 1, AssociatedTypeWitness);
    }
  }

  else
  {
    v20 = swift_conformsToProtocol2();
    if (v20)
    {
      v21 = *(v20 + 8);
      *(&v32 + 1) = AssociatedTypeWitness;
      v33 = v20;
      v22 = v20;
      __swift_allocate_boxed_opaque_existential_1(&v31);
      v21(AssociatedTypeWitness, v22);
    }

    else
    {
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BA3B8, &qword_1AE242400);
    v25 = v30;
    v26 = swift_dynamicCast();
    return (*(v13 + 56))(v25, v26 ^ 1u, 1, AssociatedTypeWitness);
  }
}

void CRTaggedValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v30 - v15;
  v17 = *(v11 + 72);
  if (v17)
  {
    v18 = *(v17 + 16);
    v31 = v14;
    v32 = v3;
    if ((~v18 & 0xF000000000000007) != 0 && ((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0xB)
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v19 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    v20 = *(v17 + 16);
    if ((~v20 & 0xF000000000000007) != 0 && ((v20 >> 59) & 0x1E | (v20 >> 2) & 1) == 0xB)
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v21 = &unk_1EB5B9140;
    }

    v30 = v19[2];
    swift_beginAccess();
    if (v21[3])
    {
      inited = v21[3];
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v24 = sub_1ADE0262C(inited, a1);
    v25 = v32;
    (*(*(*(a3 + 8) + 8) + 8))(v24, a2);

    if (!v25)
    {
      v26 = *(v7 + 32);
      v26(v9, v16, a2);
      v27 = v31;
      *v31 = v30;
      v29 = type metadata accessor for CRTaggedValue(0, a2, a3, v28);
      v26(&v27[*(v29 + 36)], v9, a2);
    }
  }

  else
  {
    sub_1ADE42E40(v11, v12, v13);
    swift_allocError();
    *v23 = 0xD000000000000017;
    *(v23 + 8) = 0x80000001AE25FB70;
    *(v23 + 16) = 0;
    swift_willThrow();
  }
}

double CRTaggedValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADE71C08(a1, a2, a3);
  if (!v4)
  {
    v7 = v5;
    v8 = *v3;
    swift_beginAccess();
    v9 = *(*(v7 + 24) + 16);
    if ((~v9 & 0xF000000000000007) != 0 && ((v9 >> 59) & 0x1E | (v9 >> 2) & 1) == 11)
    {
      inited = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      type metadata accessor for Proto_TaggedValue._StorageClass();
      inited = swift_initStaticObject();
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_TaggedValue._StorageClass();
      swift_allocObject();
      inited = sub_1ADDE5178(inited);
    }

    swift_beginAccess();
    *(inited + 16) = v8;
    sub_1AE1B7530(inited);
    v12 = swift_endAccess();
    MEMORY[0x1EEE9AC00](v12);
    v13 = sub_1ADE6B938(sub_1AE00A804);
    swift_beginAccess();
    v14 = *(*(v7 + 24) + 16);
    if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 0xB)
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      type metadata accessor for Proto_TaggedValue._StorageClass();
      v15 = swift_initStaticObject();
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_TaggedValue._StorageClass();
      swift_allocObject();
      v15 = sub_1ADDE5178(v15);
    }

    swift_beginAccess();
    *(v15 + 24) = v13;

    sub_1AE1B7530(v15);
    swift_endAccess();
  }

  return result;
}

uint64_t static CRTaggedValue<>.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for CRTaggedValue(0, a3, a4, a4);
  return sub_1AE23CCBC() & 1;
}

uint64_t CRTaggedValue<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](*v2);
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE00A768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1AE23E31C();
  CRTaggedValue<>.hash(into:)(v6, a2, v4);
  return sub_1AE23E34C();
}

uint64_t sub_1AE00A804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[5];
  type metadata accessor for CRTaggedValue(0, v5, v6, a4);
  return (*(*(*(v6 + 8) + 8) + 16))(v7, v5);
}

uint64_t sub_1AE00A87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AE00A8FC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AE00A97C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_1AE00AADC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 8] & ~v8;

  v18(v19);
}

void sub_1AE00AD5C()
{
  v1 = *(*v0 + 80);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Capsule(255, v1, AssociatedConformanceWitness, v3);
  v4 = sub_1AE23D21C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v48 - v6;
  v7 = sub_1AE23BFEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v10;
  v69 = v4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v66 = sub_1AE23D7CC();
  v12 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  swift_beginAccess();
  v49 = v0;
  v18 = v0[14];
  v19 = *(v18 + 64);
  v50 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v53 = v5 + 16;
  v54 = v8 + 16;
  v52 = v8 + 32;
  v24 = (v5 + 32);
  v64 = (v12 + 32);
  v65 = TupleTypeMetadata2 - 8;
  v59 = v8;
  v60 = v5;
  v62 = (v8 + 8);
  v63 = (v5 + 8);
  v61 = v18;

  v25 = 0;
  v56 = v14;
  v57 = TupleTypeMetadata2;
  v55 = v17;
  v51 = (v5 + 32);
  if (v22)
  {
    while (1)
    {
      v26 = v25;
LABEL_12:
      v29 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v30 = v29 | (v26 << 6);
      v31 = v61;
      v33 = v58;
      v32 = v59;
      v34 = v67;
      (*(v59 + 16))(v58, *(v61 + 48) + *(v59 + 72) * v30, v67);
      v35 = v60;
      v36 = *(v31 + 56) + *(v60 + 72) * v30;
      v38 = v68;
      v37 = v69;
      (*(v60 + 16))(v68, v36, v69);
      v39 = *(v57 + 48);
      v40 = *(v32 + 32);
      v14 = v56;
      v41 = v34;
      TupleTypeMetadata2 = v57;
      v40(v56, v33, v41);
      v42 = v38;
      v24 = v51;
      (*(v35 + 32))(&v14[v39], v42, v37);
      v43 = 0;
      v28 = v26;
      v17 = v55;
LABEL_13:
      v44 = *(TupleTypeMetadata2 - 8);
      (*(v44 + 56))(v14, v43, 1, TupleTypeMetadata2);
      (*v64)(v17, v14, v66);
      if ((*(v44 + 48))(v17, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v45 = v68;
      v46 = v69;
      (*v24)(v68, &v17[*(TupleTypeMetadata2 + 48)], v69);
      sub_1AE23D20C();
      (*v63)(v45, v46);
      (*v62)(v17, v67);
      v25 = v28;
      if (!v22)
      {
        goto LABEL_5;
      }
    }

    v47 = v49;

    MEMORY[0x1B26FDB50](v47 + 15);
    swift_defaultActor_destroy();
  }

  else
  {
LABEL_5:
    if (v23 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    else
    {
      v27 = v23;
    }

    v28 = v27 - 1;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v23)
      {
        v22 = 0;
        v43 = 1;
        goto LABEL_13;
      }

      v22 = *(v50 + 8 * v26);
      ++v25;
      if (v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1AE00B2D0()
{
  sub_1AE00AD5C();

  return swift_defaultActor_deallocate();
}

void sub_1AE00B314(uint64_t *a1)
{
  v3 = *(*v1 + 80);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Capsule(255, v3, AssociatedConformanceWitness, v5);
  v75 = sub_1AE23D1CC();
  v6 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v54 - v7;
  v8 = sub_1AE23D21C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v54 - v10;
  v11 = sub_1AE23BFEC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v14;
  v82 = v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v78 = sub_1AE23D7CC();
  v16 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v22 = *a1;
  v72 = a1[1];
  v73 = v22;
  v23 = a1[2];
  v70 = a1[3];
  v71 = v23;
  v69 = a1[4];
  swift_beginAccess();
  v24 = v1[14];
  v25 = *(v24 + 64);
  v55 = v24 + 64;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v54 = (v26 + 63) >> 6;
  v77 = TupleTypeMetadata2 - 8;
  v58 = v12 + 16;
  v57 = v9 + 16;
  v56 = v12 + 32;
  v79 = (v9 + 32);
  v76 = (v16 + 32);
  v68 = (v6 + 8);
  v64 = v9;
  v67 = (v9 + 8);
  v63 = v12;
  v66 = (v12 + 8);
  v65 = v24;

  v29 = 0;
  v61 = TupleTypeMetadata2;
  v60 = v18;
  v59 = v21;
  if (v28)
  {
    while (1)
    {
      v30 = v29;
LABEL_12:
      v33 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v34 = v33 | (v30 << 6);
      v35 = v65;
      v36 = v63;
      v37 = v62;
      v38 = v81;
      (*(v63 + 16))(v62, *(v65 + 48) + *(v63 + 72) * v34, v81);
      v39 = v64;
      v40 = *(v35 + 56) + *(v64 + 72) * v34;
      v41 = v80;
      v42 = v82;
      (*(v64 + 16))(v80, v40, v82);
      v43 = v61;
      v44 = *(v61 + 48);
      v45 = *(v36 + 32);
      v18 = v60;
      v45(v60, v37, v38);
      v46 = *(v39 + 32);
      TupleTypeMetadata2 = v43;
      v46(&v18[v44], v41, v42);
      v47 = 0;
      v32 = v30;
      v21 = v59;
LABEL_13:
      v48 = *(TupleTypeMetadata2 - 8);
      (*(v48 + 56))(v18, v47, 1, TupleTypeMetadata2);
      (*v76)(v21, v18, v78);
      if ((*(v48 + 48))(v21, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v49 = v80;
      v50 = v82;
      (*v79)(v80, &v21[*(TupleTypeMetadata2 + 48)], v82);
      v83 = v73;
      v84 = v72;
      v52 = v70;
      v51 = v71;
      v85 = v71;
      v86 = v70;
      v87 = v69;
      sub_1ADDD86D8(v73, v72);
      sub_1ADDD86D8(v51, v52);

      v53 = v74;
      sub_1AE23D1FC();
      (*v68)(v53, v75);
      (*v67)(v49, v50);
      (*v66)(v21, v81);
      v29 = v32;
      if (!v28)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v54 <= v29 + 1)
    {
      v31 = v29 + 1;
    }

    else
    {
      v31 = v54;
    }

    v32 = v31 - 1;
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v54)
      {
        v28 = 0;
        v47 = 1;
        goto LABEL_13;
      }

      v28 = *(v55 + 8 * v30);
      ++v29;
      if (v28)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1AE00B9F0(uint64_t a1)
{
  v40 = a1;
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 96);
  v41 = *(*v1 + 88);
  v42 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = v2;
  type metadata accessor for Capsule(255, v2, AssociatedConformanceWitness, v5);
  v6 = sub_1AE23D1CC();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v33 - v7;
  v37 = sub_1AE23D21C();
  v8 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = &v33 - v9;
  v10 = sub_1AE23BFEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = *(v11 + 16);
  v18(v13, v16, v10);
  v19 = v10;
  v20 = v16;
  v21 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v22 = swift_allocObject();
  v23 = v41;
  v22[2] = v38;
  v22[3] = v23;
  v22[4] = v42;
  v22[5] = v17;
  v24 = v22 + v21;
  v25 = v20;
  v26 = v19;
  (*(v11 + 32))(v24, v13, v19);
  v27 = v37;
  v28 = v40;
  sub_1AE23D1DC();
  v18(v13, v25, v26);
  v29 = *(v27 - 8);
  v30 = v39;
  (*(v29 + 16))(v39, v28, v27);
  (*(v29 + 56))(v30, 0, 1, v27);
  swift_beginAccess();
  sub_1AE00C950();
  sub_1AE23CB1C();
  sub_1AE23CB8C();
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    (*(v42 + 24))(&v43, v41);
    swift_unknownObjectRelease();
    if (v44 != 1)
    {
      v31 = v34;
      sub_1AE23D1FC();
      (*(v35 + 8))(v31, v36);
    }
  }

  return (*(v11 + 8))(v25, v26);
}

double sub_1AE00BEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  v9 = sub_1AE23BFEC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - v13;
  v15 = sub_1AE23D1BC();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v10 + 16))(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
  v17 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a4;
  *(v18 + 5) = a5;
  *(v18 + 6) = v20;
  *(v18 + 7) = v16;
  (*(v10 + 32))(&v18[v17], &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  sub_1AE217F10(0, 0, v14, &unk_1AE251478, v18);

  return result;
}

uint64_t sub_1AE00C140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AE00C164, 0, 0);
}

uint64_t sub_1AE00C164()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AE00C228, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1AE00C228()
{
  sub_1AE00C2C0(*(v0 + 56));

  return MEMORY[0x1EEE6DFA0](sub_1AE00C298, 0, 0);
}

uint64_t sub_1AE00C2C0(uint64_t a1)
{
  v3 = *(*v1 + 80);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Capsule(255, v3, AssociatedConformanceWitness, v5);
  v6 = sub_1AE23D21C();
  v7 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_1AE23BFEC();
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 16))(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10, v11);
  (*(*(v6 - 8) + 56))(v9, 1, 1, v6);
  swift_beginAccess();
  sub_1AE00C950();
  sub_1AE23CB1C();
  sub_1AE23CB8C();
  return swift_endAccess();
}

uint64_t sub_1AE00C4CC()
{
  v1 = *(*v0 + 80);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Capsule(255, v1, AssociatedConformanceWitness, v3);
  v4 = sub_1AE23D1EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v9 - v6);
  swift_checkMetadataState();
  *v7 = 1;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8640], v4);
  return sub_1AE23D24C();
}

double sub_1AE00C64C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 80);
  v21 = *(*a2 + 96);
  v6 = *(v4 + 88);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Capsule(255, v5, AssociatedConformanceWitness, v8);
  v9 = sub_1AE23D21C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v20 - v14;
  v16 = sub_1AE23D1BC();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a1, v9);
  v17 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = v5;
  *(v18 + 5) = v6;
  *(v18 + 6) = v21;
  *(v18 + 7) = a2;
  (*(v10 + 32))(&v18[v17], v12, v9);

  sub_1AE217C10(0, 0, v15, &unk_1AE251488, v18);

  return result;
}

uint64_t sub_1AE00C8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AE00C8D4, a4, 0);
}

uint64_t sub_1AE00C8D4()
{
  sub_1AE00B9F0(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1AE00C950()
{
  result = qword_1ED96A718;
  if (!qword_1ED96A718)
  {
    sub_1AE23BFEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A718);
  }

  return result;
}

double sub_1AE00C9A8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(sub_1AE23BFEC() - 8);
  v7 = v1[5];
  v8 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return sub_1AE00BEFC(a1, v7, v8, v3, v4, v5);
}

uint64_t sub_1AE00CA40(uint64_t a1)
{
  v4 = *(sub_1AE23BFEC() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[7];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1ADE74240;

  return sub_1AE00C140(a1, v6, v7, v8, v1 + v5);
}

uint64_t *sub_1AE00CB5C(uint64_t a1)
{
  v2 = *v1;
  swift_defaultActor_initialize();
  v3 = sub_1AE23BFEC();
  v4 = *(v2 + 80);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Capsule(255, v4, AssociatedConformanceWitness, v6);
  v7 = sub_1AE23D21C();
  swift_getTupleTypeMetadata2();
  v8 = sub_1AE23D05C();
  v9 = sub_1AE00C950();
  v10 = sub_1ADDEAF38(v8, v3, v7, v9);

  v1[14] = v10;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t *sub_1AE00CC84(uint64_t a1)
{
  type metadata accessor for AsyncUpdatesActor(0, v1[10], v1[11], v1[12]);
  swift_allocObject();
  return sub_1AE00CB5C(a1);
}

uint64_t sub_1AE00CCD4(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Capsule(255, v5, AssociatedConformanceWitness, v7);
  v8 = *(sub_1AE23D21C() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[7];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1ADE744B8;

  return sub_1AE00C8B4(a1, v10, v11, v12, v1 + v9);
}

void (*CROrderedDictionary.index(where:)(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3))(char *, char *, uint64_t)
{
  v48 = a1;
  v49 = a2;
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v63 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v37 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v37 - v13;
  v14 = swift_getTupleTypeMetadata2();
  v55 = sub_1AE23D7CC();
  v15 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v53 = (&v37 - v18);
  v19 = v3[1];
  v60 = *v3;
  v61 = v19;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B26FB780](v62, a3, WitnessTable);
  v60 = v62[0];
  v61 = v62[1];
  sub_1AE23DC9C();
  sub_1AE23DC6C();
  v21 = v14;
  v22 = sub_1AE23DC8C();
  v51 = (v15 + 32);
  v52 = v22;
  v23 = v37;
  v50 = v21 - 8;
  v44 = v5 - 8;
  v43 = v6 - 8;
  v42 = (v63 + 16);
  v45 = (v63 + 8);
  v47 = v9;
  v40 = v21;
  v41 = v5;
  while (1)
  {
    v24 = v54;
    sub_1AE23DC7C();
    v25 = v53;
    (*v51)(v53, v24, v55);
    v26 = (*(*(v21 - 8) + 48))(v25, 1, v21);
    if (v26 == 1)
    {
      v29 = 0;
      goto LABEL_7;
    }

    v38 = v26;
    v39 = *v25;
    v56 = v25 + *(v21 + 48);
    v63 = *(TupleTypeMetadata2 + 48);
    v58 = *(v5 - 8);
    v57 = *(v58 + 32);
    v27 = v46;
    v57(v46);
    v28 = *(v6 - 8);
    v29 = *(v28 + 32);
    v29(&v27[v63], &v56[v63], v6);
    v56 = *(TupleTypeMetadata2 + 48);
    (v57)(v23, v27, v5);
    v30 = v47;
    v29(&v56[v23], &v27[v63], v6);
    (*v42)(v30, v23, TupleTypeMetadata2);
    v31 = *(TupleTypeMetadata2 + 48);
    v32 = v30;
    v33 = v59;
    v34 = v48(v30, &v30[v31]);
    v59 = v33;
    if (v33)
    {
      break;
    }

    v35 = v34;
    (*v45)(v23, TupleTypeMetadata2);
    (*(v28 + 8))(&v32[v31], v6);
    v5 = v41;
    (*(v58 + 8))(v32, v41);
    v21 = v40;
    if (v35)
    {
      v29 = v39;
LABEL_7:

      return v29;
    }
  }

  (*v45)(v23, TupleTypeMetadata2);

  (*(v28 + 8))(&v30[v31], v6);
  (*(v58 + 8))(v30, v41);
  return v29;
}

uint64_t CROrderedDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  sub_1AE017788(a1, a2, a3);
  v6 = *(*(*(a3 + 24) - 8) + 8);

  return v6(a1);
}

BOOL CROrderedDictionary.contains(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1AE23D7CC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-1] - v7;
  v17 = *(v2 + 8);
  v14[0] = *(a2 + 16);
  v14[1] = v4;
  v9 = *(a2 + 48);
  v15 = *(a2 + 32);
  v16 = v9;
  type metadata accessor for CRDictionary(0, v14);
  CRDictionary.subscript.getter(v10, v8);
  v11 = (*(*(v4 - 8) + 48))(v8, 1, v4) != 1;
  (*(v6 + 8))(v8, v5);
  return v11;
}

uint64_t CROrderedDictionary.insert(value:forKey:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v39 = a1;
  v49 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a4 + 16);
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(a4 + 32);
  v42 = *(&v51 + 1);
  v43 = v51;
  v46 = type metadata accessor for CROrderedSetElement(0, v8, v51, *(&v51 + 1));
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v41 = &v39 - v11;
  v12 = *(a4 + 24);
  v13 = sub_1AE23D7CC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  *&v20 = v8;
  *(&v20 + 1) = v12;
  v52[1] = v51;
  v52[0] = v20;
  v52[2] = *(a4 + 48);
  v21 = type metadata accessor for CRDictionary(0, v52);
  *&v51 = v4;
  v47 = a2;
  CRDictionary.subscript.getter(v22, v19);
  v23 = *(v12 - 8);
  v24 = (*(v23 + 48))(v19, 1, v12);
  v25 = *(v14 + 8);
  result = v25(v19, v13);
  if (v24 == 1)
  {
    (*(v23 + 16))(v16, v39, v12);
    (*(v23 + 56))(v16, 0, 1, v12);
    v27 = v51;
    v28 = v47;
    sub_1ADFAEA78(v16, v47, v21);
    v25(v16, v13);
    v29 = v46;
    v31 = type metadata accessor for CRSequence(0, v46, &off_1F23C8BA0, v30);
    sub_1ADE108AC(v31, v32, v33, v34);
    v35 = v45;
    (*(v40 + 16))(v45, v28, v8);
    *&v52[0] = *v27;
    v36 = v48;
    sub_1ADE16998(v48);
    *(v36 + *(type metadata accessor for Replica(0) + 20)) = 0;
    *(v36 + *(v49 + 20)) = 0;
    v37 = v41;
    sub_1ADE0C8B4(v35, v36, v8, v43, v42, v41);
    CRSequence.insert(_:at:)(v37, v50, v31, v38);
    return (*(v44 + 8))(v37, v29);
  }

  return result;
}

uint64_t sub_1AE00D9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v6 = *(a3 + 24);
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v23[0] = *(a3 + 16);
  v23[1] = v6;
  v14 = *(a3 + 48);
  v24 = *(a3 + 32);
  v25 = v14;
  v15 = type metadata accessor for CRDictionary(0, v23);
  v22 = v3;
  CRDictionary.subscript.getter(v16, v13);
  v17 = *(v6 - 8);
  v18 = (*(v17 + 48))(v13, 1, v6);
  v19 = *(v8 + 8);
  result = v19(v13, v7);
  if (v18 != 1)
  {
    (*(v17 + 16))(v10, v21, v6);
    (*(v17 + 56))(v10, 0, 1, v6);
    sub_1ADFAEA78(v10, a1, v15);
    return v19(v10, v7);
  }

  return result;
}

Swift::Void __swiftcall CROrderedDictionary.move(from:to:)(Swift::Int from, Swift::Int to)
{
  v4 = v2;
  v7 = *(v2 + 16);
  v43 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](from);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v15 = *(v4 + 32);
  v40 = *(v4 + 40);
  v41 = v15;
  v16 = type metadata accessor for CROrderedSetElement(0, v7, v15, v40);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v35 - v22;
  if (from == to)
  {
    return;
  }

  if (__OFSUB__(to, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (to - 1 == from)
  {
    return;
  }

  v35 = to - 1;
  v36 = v21;
  v37 = v9;
  v44 = *v3;
  v24 = type metadata accessor for CRSequence(0, v16, &off_1F23C8BA0, v20);
  v39 = v10;
  v25 = v24;
  CRSequence.subscript.getter(from);
  CRSequence.remove(at:)(from);
  v38 = v3;
  v44 = *v3;
  sub_1ADE16998(v14);
  *&v14[*(type metadata accessor for Replica(0) + 20)] = 0;
  v26 = *(v39 + 20);
  v27 = *&v23[*(v16 + 44) + v26];
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (from >= to)
  {
    v30 = to;
  }

  else
  {
    v30 = v35;
  }

  *&v14[v26] = v29;
  v31 = v37;
  (*(v43 + 16))(v37, v23, v7);
  v32 = v42;
  sub_1ADDF8030(v14, v42, type metadata accessor for Timestamp);
  sub_1ADE0C8B4(v31, v32, v7, v41, v40, v18);
  CRSequence.insert(_:at:)(v18, v30, v25, v33);
  v34 = *(v36 + 8);
  v34(v18, v16);
  sub_1AE017AB8(v14);
  v34(v23, v16);
}

void CROrderedDictionary.moveOrInsert(value:forKey:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v42 = a1;
  v7 = *(a4 + 24);
  v8 = sub_1AE23D7CC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = *(a4 + 16);
  v15 = *(a4 + 32);
  v17 = *(a4 + 48);
  v16 = *(a4 + 56);
  v45[0] = v14;
  v45[1] = v7;
  v40 = v15;
  v46 = v15;
  v47 = v17;
  v48 = v16;
  v18 = type metadata accessor for CRDictionary(0, v45);
  v43 = a2;
  v44 = v4;
  v37 = v18;
  CRDictionary.subscript.getter(v19, v13);
  v20 = *(v7 - 8);
  v21 = (*(v20 + 48))(v13, 1, v7);
  v22 = *(v9 + 8);
  v39 = v8;
  v23 = v8;
  v24 = v22;
  v25 = (v22)(v13, v23);
  if (v21 == 1)
  {
    CROrderedDictionary.insert(value:forKey:at:)(v42, v43, v41, a4);
  }

  else
  {
    v36 = &v36;
    v45[0] = *v44;
    MEMORY[0x1EEE9AC00](v25);
    *&v26 = v14;
    *(&v26 + 1) = v7;
    v27 = v40;
    *(&v36 - 4) = v26;
    *(&v36 - 3) = v27;
    *(&v36 - 4) = v17;
    *(&v36 - 3) = v16;
    v28 = v43;
    *(&v36 - 2) = v43;
    v29 = type metadata accessor for CROrderedSetElement(255, v14, v27, *(&v27 + 1));
    v31 = type metadata accessor for CRSequence(0, v29, &off_1F23C8BA0, v30);

    swift_getWitnessTable();
    v32 = sub_1AE1644B0(sub_1AE017F88, (&v36 - 10), v31);
    v34 = v33;

    if ((v34 & 1) == 0)
    {
      CROrderedDictionary.move(from:to:)(v32, v41);
      v35 = v38;
      (*(v20 + 16))(v38, v42, v7);
      (*(v20 + 56))(v35, 0, 1, v7);
      sub_1ADFAEA78(v35, v28, v37);
      v24(v35, v39);
    }
  }
}

uint64_t CROrderedDictionary.append(value:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v50 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a3 + 16);
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v51 = *(a3 + 32);
  v45 = v51;
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(&v51 + 1);
  v47 = type metadata accessor for CROrderedSetElement(0, v7, v51, *(&v51 + 1));
  v43 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v42 = &v39 - v10;
  v11 = *(a3 + 24);
  v12 = sub_1AE23D7CC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  *&v19 = v7;
  *(&v19 + 1) = v11;
  v52[1] = v51;
  v52[0] = v19;
  v52[2] = *(a3 + 48);
  v20 = type metadata accessor for CRDictionary(0, v52);
  *&v51 = v3;
  v48 = a2;
  CRDictionary.subscript.getter(v21, v18);
  v22 = *(v11 - 8);
  v23 = (*(v22 + 48))(v18, 1, v11);
  v24 = *(v13 + 8);
  result = v24(v18, v12);
  if (v23 == 1)
  {
    (*(v22 + 16))(v15, v40, v11);
    (*(v22 + 56))(v15, 0, 1, v11);
    v26 = v51;
    v27 = v48;
    sub_1ADFAEA78(v15, v48, v20);
    v24(v15, v12);
    v28 = v47;
    v30 = type metadata accessor for CRSequence(0, v47, &off_1F23C8BA0, v29);
    sub_1ADE108AC(v30, v31, v32, v33);
    v34 = v46;
    (*(v41 + 16))(v46, v27, v7);
    *&v52[0] = *v26;
    v35 = v49;
    sub_1ADE16998(v49);
    *(v35 + *(type metadata accessor for Replica(0) + 20)) = 0;
    *(v35 + *(v50 + 20)) = 0;
    v36 = v42;
    sub_1ADE0C8B4(v34, v35, v7, v45, v44, v42);
    CRSequence.append(_:)(v36, v30, v37, v38);
    return (*(v43 + 8))(v36, v28);
  }

  return result;
}

void CROrderedDictionary.moveOrAppend(value:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v6 = *(a3 + 24);
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = *(a3 + 16);
  v14 = *(a3 + 32);
  v16 = *(a3 + 48);
  v15 = *(a3 + 56);
  v48 = v13;
  v49 = v6;
  v45 = v14;
  v50 = v14;
  v51 = v16;
  v52 = v15;
  v44 = v15;
  v17 = type metadata accessor for CRDictionary(0, &v48);
  v18 = v3;
  v47 = a2;
  v41 = v17;
  CRDictionary.subscript.getter(v19, v12);
  v40 = *(v6 - 8);
  v20 = (*(v40 + 48))(v12, 1, v6);
  v21 = *(v8 + 8);
  v43 = v8 + 8;
  v21(v12, v7);
  if (v20 == 1)
  {
    CROrderedDictionary.append(value:forKey:)(v46, v47, a3);
  }

  else
  {
    v38 = v21;
    v22 = v18;
    v23 = v18[1];
    v48 = *v18;
    v49 = v23;
    v24 = CROrderedDictionary.count.getter(a3);
    v39 = &v37;
    v48 = *v22;
    MEMORY[0x1EEE9AC00](v24);
    *&v25 = v13;
    *(&v25 + 1) = v6;
    v26 = v45;
    *(&v37 - 4) = v25;
    *(&v37 - 3) = v26;
    v27 = v44;
    *(&v37 - 4) = v16;
    *(&v37 - 3) = v27;
    v28 = v47;
    *(&v37 - 2) = v47;
    v29 = type metadata accessor for CROrderedSetElement(255, v13, v26, *(&v26 + 1));
    v31 = type metadata accessor for CRSequence(0, v29, &off_1F23C8BA0, v30);

    swift_getWitnessTable();
    v32 = sub_1AE1644B0(sub_1AE017F88, (&v37 - 10), v31);
    v34 = v33;

    if ((v34 & 1) == 0)
    {
      CROrderedDictionary.move(from:to:)(v32, v24);
      v35 = v40;
      v36 = v42;
      (*(v40 + 16))(v42, v46, v6);
      (*(v35 + 56))(v36, 0, 1, v6);
      sub_1ADFAEA78(v36, v28, v41);
      v38(v36, v7);
    }
  }
}

void *sub_1AE00E9E4(uint64_t a1, void *a2)
{
  v88 = a1;
  v4 = *v2;
  v57 = v2[1];
  if (qword_1ED967F98 != -1)
  {
    swift_once();
  }

  v5 = off_1ED967FA0;
  v84 = v4;
  v6 = a2[2];
  v8 = a2[4];
  v7 = a2[5];
  v9 = type metadata accessor for CROrderedSetElement(255, v6, v8, v7);
  v11 = type metadata accessor for CRSequence(0, v9, &off_1F23C8BA0, v10);

  sub_1AE1650E8(v88, v85);
  if (v58)
  {
    goto LABEL_7;
  }

  v51 = a2;
  v53 = v6;
  v54 = v7;
  v58 = v8;
  v55 = v11;
  v12 = v88;
  v56 = v4;

  v52 = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Proto_OrderedSet._StorageClass();
    swift_allocObject();
    v13 = sub_1AE1D0514(v5);

    v5 = v13;
  }

  v50 = v5;
  v79 = v85[4];
  v80 = v85[5];
  v81 = v86;
  v75 = v85[0];
  v76 = v85[1];
  v77 = v85[2];
  v78 = v85[3];
  swift_beginAccess();
  v83 = v5[24];
  v14 = *(v5 + 11);
  v82[4] = *(v5 + 10);
  v82[5] = v14;
  v15 = *(v5 + 7);
  v82[0] = *(v5 + 6);
  v82[1] = v15;
  v16 = *(v5 + 9);
  v82[2] = *(v5 + 8);
  v82[3] = v16;
  v17 = v76;
  *(v5 + 6) = v75;
  *(v5 + 7) = v17;
  v18 = v77;
  v19 = v78;
  v20 = v79;
  v21 = v80;
  v5[24] = v81;
  *(v5 + 10) = v20;
  *(v5 + 11) = v21;
  *(v5 + 8) = v18;
  *(v5 + 9) = v19;
  sub_1ADDCEDE0(v82, &qword_1EB5BCC28, &unk_1AE251820);
  v74 = v57;
  v22 = *(v12 + 16);

  v49 = sub_1AE16CC2C(v22);
  *&v65 = v56;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B26FB7B0](&v60, v55, WitnessTable);
  v70 = v60;
  v23 = swift_allocObject();
  v24 = v51;
  v57 = v51[3];
  v25 = v57;
  v26 = v53;
  v5 = v54;
  v23[2] = v53;
  v23[3] = v25;
  v23[4] = v58;
  v23[5] = v5;
  v28 = v24[6];
  v27 = v24[7];
  v23[6] = v28;
  v23[7] = v27;
  sub_1AE23DA5C();
  swift_getWitnessTable();
  sub_1AE23DCFC();

  v70 = v72;
  v71 = v73;
  *&v65 = v26;
  *(&v65 + 1) = v57;
  *&v66 = v58;
  *(&v66 + 1) = v5;
  *&v67 = v28;
  *(&v67 + 1) = v27;
  v29 = type metadata accessor for CRDictionary(0, &v65);
  v30 = v88;
  v31 = sub_1AE23DB7C();
  v32 = swift_getWitnessTable();
  sub_1ADFAD9A8(v49, v30, &v70, v29, v31, v32, v87);

  sub_1AE017EE4(v70, v71, *(&v71 + 1));
  if (v52)
  {
LABEL_7:
  }

  else
  {
    v52 = v27;

    v5 = v50;
    v47 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();
      v34 = sub_1AE1D0514(v50);

      v5 = v34;
    }

    v36 = v54;
    v35 = v55;
    v37 = v58;
    v62 = v87[2];
    v63 = v87[3];
    v64 = v87[4];
    v60 = v87[0];
    v61 = v87[1];
    swift_beginAccess();
    v38 = *(v5 + 2);
    v39 = *(v5 + 3);
    v40 = *(v5 + 5);
    v68 = *(v5 + 4);
    v69 = v40;
    v66 = v38;
    v67 = v39;
    v65 = *(v5 + 1);
    v41 = v64;
    *(v5 + 1) = v60;
    *(v5 + 4) = v63;
    *(v5 + 5) = v41;
    v42 = v62;
    *(v5 + 2) = v61;
    *(v5 + 3) = v42;
    sub_1ADDCEDE0(&v65, &qword_1EB5BCC30, &qword_1AE2580D0);
    v59[0] = v56;
    MEMORY[0x1EEE9AC00](v56);
    v46[2] = v53;
    v46[3] = v57;
    v46[4] = v37;
    v46[5] = v36;
    v46[6] = v47;
    v46[7] = v52;
    v46[8] = v30;

    v43 = sub_1AE165268(sub_1AE017F28, v46, v35, &type metadata for Proto_Timestamp);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();
      v44 = sub_1AE1D0514(v5);

      v5 = v44;
    }

    swift_beginAccess();
    v5[25] = v43;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();
      v45 = sub_1AE1D0514(v5);

      v5 = v45;
    }

    swift_beginAccess();
    v5[26] = 1;
    *(v5 + 216) = 1;
  }

  return v5;
}

void sub_1AE00F014(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];
      sub_1ADDD86D8(*v10, v12);
      sub_1ADDE0110(v13, v11, v12);
      sub_1ADDCC35C(v13[0], v13[1]);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

Swift::Void __swiftcall CROrderedDictionary.remove(at:)(Swift::Int at)
{
  v26 = at;
  v3 = *(v1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](at);
  v23 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v6 + 32);
  v7 = v6;
  v22 = v6;
  v8 = type metadata accessor for CROrderedSetElement(0, v3, v25, *(&v25 + 1));
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v21 = *(v7 + 24);
  v24 = sub_1AE23D7CC();
  v12 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v14 = &v20 - v13;
  v28 = *v2;
  v20 = type metadata accessor for CRSequence(0, v8, &off_1F23C8BA0, v15);
  v16 = v26;
  CRSequence.subscript.getter(v26);
  v17 = v23;
  (*(v4 + 16))(v23, v11, v3);
  (*(v9 + 8))(v11, v8);
  *&v18 = v3;
  *(&v18 + 1) = v21;
  v27[1] = v25;
  v27[0] = v18;
  v27[2] = *(v22 + 48);
  v19 = type metadata accessor for CRDictionary(0, v27);
  CRDictionary.removeValue(forKey:)(v17, v19, v14);
  (*(v4 + 8))(v17, v3);
  (*(v12 + 8))(v14, v24);
  CRSequence.remove(at:)(v16);
}

uint64_t CROrderedDictionary.merge(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v125 = a3;
  v169 = sub_1AE23BFFC();
  v124 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v168 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCA88, &qword_1AE251490);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v121 = &v119 - v8;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCA90, &qword_1AE251498);
  MEMORY[0x1EEE9AC00](v123);
  v10 = &v119 - v9;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7C0, &unk_1AE2514A0);
  MEMORY[0x1EEE9AC00](v151);
  v158 = &v119 - v11;
  v12 = *(a2 + 16);
  v167 = *(a2 + 32);
  v163 = *(&v167 + 1);
  v13 = v12;
  v14 = type metadata accessor for CROrderedSetElement(255, v12, v167, *(&v167 + 1));
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v157 = sub_1AE23D7CC();
  v120 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v156 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v155 = (&v119 - v18);
  v122 = sub_1AE23C12C();
  v128 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v146 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v133 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA480, &qword_1AE25AAE0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v140 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v161 = &v119 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v160 = &v119 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v134 = &v119 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v132 = &v119 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v138 = &v119 - v33;
  v34 = type metadata accessor for Timestamp(0);
  v127 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v135 = &v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v137 = &v119 - v37;
  v38 = *(a2 + 24);
  v153 = sub_1AE23D7CC();
  v143 = *(v153 - 1);
  MEMORY[0x1EEE9AC00](v153);
  v152 = &v119 - v39;
  v162 = v14;
  v126 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v166 = &v119 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v164 = &v119 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v139 = &v119 - v45;
  v46 = a1[1];
  *&v173[0] = *a1;
  v49 = type metadata accessor for CRSequence(0, v47, &off_1F23C8BA0, v48);

  v50 = v170;
  CRSequence.merge(_:)(v173, v49, &v175);

  v174 = v46;
  *&v51 = v13;
  *(&v51 + 1) = v38;
  v173[1] = v167;
  v173[0] = v51;
  v173[2] = *(a2 + 48);
  v149 = type metadata accessor for CRDictionary(0, v173);
  CRDictionary.merge(_:)(&v174, v149, v173);

  LOWORD(v174) = v173[0];
  BYTE2(v174) = BYTE2(v173[0]);
  v52 = &v174;
  MergeResult.merge(_:)(v52);
  v174 = sub_1AE23C9CC();
  *&v173[0] = *v50;
  CRSequence.count.getter();
  v165 = v13;
  v159 = v34;
  v131 = sub_1AE23CB1C();
  sub_1AE23CA3C();
  v53 = v162;
  *&v173[0] = *v50;
  *&v167 = v49;
  v54 = v49;
  v55 = v139;
  v56 = sub_1ADDEF6DC(v54);
  v171 = 0;
  v172 = v56;
  v154 = v56;
  if (sub_1AE23D0AC())
  {
    v148 = sub_1AE23D11C();
    v57 = 0;
    v147 = (v126 + 16);
    v145 = (v126 + 32);
    v144 = v38 - 8;
    ++v143;
    v141 = (v127 + 48);
    v130 = (v142 + 2);
    v129 = (v127 + 56);
    v142 = (v126 + 8);
    v136 = v38;
    while (1)
    {
      v58 = v148;
      swift_getWitnessTable();
      v59 = sub_1ADE5E0E4(v173, &v171, v58);
      (*v147)(v55);
      result = (v59)(v173, 0);
      v61 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        __break(1u);
        return result;
      }

      v171 = v57 + 1;
      v62 = v164;
      (*v145)(v164, v55, v53);
      v63 = v152;
      CRDictionary.subscript.getter(v64, v152);
      if ((*(*(v38 - 8) + 48))(v63, 1, v38) != 1)
      {
        break;
      }

      (*v142)(v62, v53);
      (*v143)(v63, v153);
LABEL_4:
      ++v57;
      if (v61 == sub_1AE23D0AC())
      {
        goto LABEL_21;
      }
    }

    (*v143)(v63, v153);
    v65 = v138;
    v66 = v159;
    sub_1AE23CB7C();
    v67 = *v141;
    if ((*v141)(v65, 1, v66) == 1)
    {
      sub_1ADDCEDE0(v65, &qword_1EB5BA480, &qword_1AE25AAE0);
      goto LABEL_13;
    }

    v68 = v137;
    sub_1AE017B14(v65, v137);
    v69 = &v62[*(v162 + 44)];
    v70 = *(v66 + 20);
    v71 = *(v68 + v70);
    v72 = *(v69 + v70);
    v73 = v71 < v72;
    if (v71 == v72 && (v74 = *(type metadata accessor for Replica(0) + 20), v75 = *(v68 + v74), v76 = *(v69 + v74), v73 = v75 < v76, v75 == v76))
    {
      v77 = sub_1ADF5EB00(v68);
      v38 = v136;
      if ((v77 & 1) == 0)
      {
LABEL_12:
        sub_1AE017AB8(v137);
LABEL_13:
        v78 = v134;
        v79 = v164;
        sub_1AE23CB7C();
        if (v67(v78, 1, v66) == 1)
        {
          sub_1ADDCEDE0(v78, &qword_1EB5BA480, &qword_1AE25AAE0);
          (*v130)(v133, v79, v165);
          v53 = v162;
          v80 = v132;
          sub_1ADDF8030(&v79[*(v162 + 44)], v132, type metadata accessor for Timestamp);
          (*v129)(v80, 0, 1, v66);
          v38 = v136;
          sub_1AE23CB8C();
          (*v142)(v79, v53);
        }

        else
        {
          v53 = v162;
          (*v142)(v79, v162);
          sub_1ADDCEDE0(v78, &qword_1EB5BA480, &qword_1AE25AAE0);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v38 = v136;
      if (!v73)
      {
        goto LABEL_12;
      }
    }

    v81 = v164;
    (*v130)(v133, v164, v165);
    v82 = v132;
    sub_1ADDF8030(v69, v132, type metadata accessor for Timestamp);
    (*v129)(v82, 0, 1, v66);
    sub_1AE23CB8C();
    sub_1AE017AB8(v137);
    v53 = v162;
    (*v142)(v81, v162);
LABEL_20:
    v55 = v139;
    goto LABEL_4;
  }

LABEL_21:

  sub_1AE23C11C();
  *&v173[0] = *v170;
  v171 = sub_1ADDEF6DC(v167);
  v83 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B26FB780](&v172, v83, WitnessTable);

  v171 = v172;
  sub_1AE23DC9C();
  sub_1AE23DC6C();
  v154 = sub_1AE23DC8C();
  v153 = (v120 + 32);
  v152 = TupleTypeMetadata2 - 8;
  v149 = (v126 + 32);
  v148 = (v127 + 56);
  v85 = (v127 + 48);
  v147 = (v126 + 8);
  v150 = TupleTypeMetadata2;
  while (1)
  {
    v86 = v156;
    sub_1AE23DC7C();
    v87 = v155;
    (*v153)(v155, v86, v157);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v87, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v164 = *v87;
    v88 = v87 + *(TupleTypeMetadata2 + 48);
    v89 = v166;
    (*v149)(v166, v88, v53);
    v90 = v160;
    v91 = v159;
    sub_1AE23CB7C();
    v92 = &v89[*(v53 + 44)];
    v93 = v161;
    sub_1ADDF8030(v92, v161, type metadata accessor for Timestamp);
    (*v148)(v93, 0, 1, v91);
    v94 = *(v151 + 48);
    v95 = v158;
    sub_1ADDCEE40(v90, v158, &qword_1EB5BA480, &qword_1AE25AAE0);
    sub_1ADDCEE40(v93, v95 + v94, &qword_1EB5BA480, &qword_1AE25AAE0);
    v96 = *v85;
    if ((*v85)(v95, 1, v91) == 1)
    {
      sub_1ADDCEDE0(v93, &qword_1EB5BA480, &qword_1AE25AAE0);
      sub_1ADDCEDE0(v90, &qword_1EB5BA480, &qword_1AE25AAE0);
      if (v96(v95 + v94, 1, v91) == 1)
      {
        sub_1ADDCEDE0(v95, &qword_1EB5BA480, &qword_1AE25AAE0);
        v53 = v162;
        TupleTypeMetadata2 = v150;
        goto LABEL_23;
      }

      goto LABEL_30;
    }

    v97 = v140;
    sub_1ADDCEE40(v95, v140, &qword_1EB5BA480, &qword_1AE25AAE0);
    if (v96(v95 + v94, 1, v91) == 1)
    {
      sub_1ADDCEDE0(v161, &qword_1EB5BA480, &qword_1AE25AAE0);
      sub_1ADDCEDE0(v160, &qword_1EB5BA480, &qword_1AE25AAE0);
      sub_1AE017AB8(v97);
LABEL_30:
      v98 = v95;
      v99 = &qword_1EB5BB7C0;
      v100 = &unk_1AE2514A0;
      goto LABEL_36;
    }

    v101 = v135;
    sub_1AE017B14(v95 + v94, v135);
    v102 = v97;
    if (*(v97 + *(v91 + 20)) == *(v101 + *(v91 + 20)))
    {
      v103 = type metadata accessor for Replica(0);
      if (*(v97 + *(v103 + 20)) == *(v101 + *(v103 + 20)))
      {
        v104 = sub_1AE23BF8C();
        sub_1AE017AB8(v101);
        sub_1ADDCEDE0(v161, &qword_1EB5BA480, &qword_1AE25AAE0);
        sub_1ADDCEDE0(v160, &qword_1EB5BA480, &qword_1AE25AAE0);
        sub_1AE017AB8(v102);
        sub_1ADDCEDE0(v158, &qword_1EB5BA480, &qword_1AE25AAE0);
        v53 = v162;
        TupleTypeMetadata2 = v150;
        if (v104)
        {
          goto LABEL_23;
        }

        goto LABEL_37;
      }
    }

    sub_1AE017AB8(v101);
    sub_1ADDCEDE0(v161, &qword_1EB5BA480, &qword_1AE25AAE0);
    sub_1ADDCEDE0(v160, &qword_1EB5BA480, &qword_1AE25AAE0);
    sub_1AE017AB8(v97);
    v98 = v158;
    v99 = &qword_1EB5BA480;
    v100 = &qword_1AE25AAE0;
LABEL_36:
    sub_1ADDCEDE0(v98, v99, v100);
    v53 = v162;
    TupleTypeMetadata2 = v150;
LABEL_37:
    sub_1AE23C08C();
LABEL_23:
    (*v147)(v166, v53);
  }

  v105 = v128;
  v106 = *(v128 + 16);
  v107 = v121;
  v108 = v122;
  v106(v121, v146, v122);
  v106(v10, v107, v108);
  sub_1AE017B78(&qword_1ED967148, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
  sub_1AE23D46C();
  v109 = *(v105 + 8);
  v128 = v105 + 8;
  v166 = v109;
  (v109)(v107, v108);
  v110 = (v124 + 8);
  v111 = v168;
  while (1)
  {
    sub_1AE23D41C();
    sub_1AE017B78(&qword_1ED967158, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
    v112 = v169;
    v113 = sub_1AE23CCBC();
    (*v110)(v111, v112);
    if (v113)
    {
      break;
    }

    sub_1AE017B78(qword_1EB5BCA98, MEMORY[0x1E6969B50], MEMORY[0x1E6969B68]);
    sub_1AE23CBDC();
    v114 = sub_1AE23D51C();
    v116 = *v115;
    v114(v173, 0);
    CRSequence.remove(at:)(v116);
  }

  sub_1ADDCEDE0(v10, &qword_1EB5BCA90, &qword_1AE251498);
  (v166)(v146, v108);
  v117 = v176;
  v118 = v125;
  *v125 = v175;
  *(v118 + 2) = v117;
}

uint64_t CROrderedDictionary.newRefs(from:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  v23 = v2[1];
  v22 = v5;
  v7 = *(a2 + 32);
  v8 = *(a2 + 56);

  v18 = *(a2 + 16);
  v17 = v18;
  v19 = v7;
  v20 = *(a2 + 40);
  v16 = v20;
  v21 = v8;
  v9 = type metadata accessor for CRDictionary(0, &v18);
  v10 = CRDictionary.newRefs(from:)(&v22, v9);

  *&v18 = v10;
  v23 = v6;
  v22 = v4;
  v11 = type metadata accessor for CROrderedSetElement(255, v17, v7, v16);
  v13 = type metadata accessor for CRSequence(0, v11, &off_1F23C8BA0, v12);
  v14 = CRSequence.newRefs(from:)(&v22, v13);

  sub_1AE00F014(v14);
  return v18;
}

id CROrderedDictionary.count.getter(uint64_t *a1)
{
  v1 = type metadata accessor for CROrderedSetElement(255, a1[2], a1[4], a1[5]);
  type metadata accessor for CRSequence(0, v1, &off_1F23C8BA0, v2);
  return CRSequence.count.getter();
}

Swift::Bool __swiftcall CROrderedDictionary.needToFinalizeTimestamps()()
{
  v2 = v0;
  v3 = *v1;
  v16 = v1[1];
  v4 = *(v0 + 32);
  v5 = *(v0 + 56);

  v11 = *(v2 + 16);
  v12 = v11;
  v13 = v4;
  v10 = *(v2 + 40);
  v14 = v10;
  v15 = v5;
  type metadata accessor for CRDictionary(0, &v12);
  LOBYTE(v5) = CRDictionary.needToFinalizeTimestamps()();

  if (v5)
  {
    return 1;
  }

  else
  {
    *&v12 = v3;
    v7 = type metadata accessor for CROrderedSetElement(255, v11, v4, v10);
    type metadata accessor for CRSequence(0, v7, &off_1F23C8BA0, v8);

    v6 = CRSequence.needToFinalizeTimestamps()();
  }

  return v6;
}

void CROrderedDictionary.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 24);
  v5 = *(a2 + 16);
  v11 = *(a2 + 32);
  v6 = type metadata accessor for CROrderedSetElement(255, v5, *(a2 + 32), *(a2 + 40));
  v8 = type metadata accessor for CRSequence(0, v6, &off_1F23C8BA0, v7);
  CRSequence.finalizeTimestamps(_:)(a1, v8);
  *&v9 = v5;
  *(&v9 + 1) = *v4;
  v12[0] = v9;
  v12[1] = v11;
  v12[2] = *(a2 + 48);
  v10 = type metadata accessor for CRDictionary(0, v12);
  CRDictionary.finalizeTimestamps(_:)(a1, v10);
}

uint64_t CROrderedDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v25 = a3;
  v5 = *(a2 + 24);
  v6 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v29 = &v25 - v7;
  v8 = *(a2 + 16);
  v28 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a2 + 32);
  v12 = type metadata accessor for CROrderedSetElement(0, v8, v27, *(&v27 + 1));
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v16 = *v3;
  v26 = v3[1];
  *&v31[0] = v16;
  type metadata accessor for CRSequence(0, v12, &off_1F23C8BA0, v17);
  v18 = CRSequence.count.getter();
  result = v30;
  if (v18 <= v30)
  {
    __break(1u);
  }

  else
  {
    v33 = v16;
    CRSequence.subscript.getter(v30);
    v20 = v28;
    (*(v28 + 16))(v11, v15, v8);
    (*(v13 + 8))(v15, v12);
    v32 = v26;
    *&v21 = v8;
    *(&v21 + 1) = v5;
    v31[0] = v21;
    v31[1] = v27;
    v31[2] = *(a2 + 48);
    type metadata accessor for CRDictionary(0, v31);
    v22 = v29;
    CRDictionary.subscript.getter(v23, v29);
    v24 = *(v5 - 8);
    result = (*(v24 + 48))(v22, 1, v5);
    if (result != 1)
    {
      (*(v20 + 8))(v11, v8);
      return (*(v24 + 32))(v25, v22, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t CROrderedDictionary.remove(atOffsets:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4C0, &unk_1AE2514B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v57 = v56 - v5;
  v56[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4C8, &unk_1AE24C640);
  MEMORY[0x1EEE9AC00](v56[0]);
  v7 = v56 - v6;
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v68 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(a2 + 32);
  v74 = type metadata accessor for CROrderedSetElement(0, v8, v67, *(&v67 + 1));
  v12 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v66 = v56 - v13;
  v70 = a2;
  v14 = *(a2 + 24);
  v65 = sub_1AE23D7CC();
  v58 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = v56 - v15;
  v73 = sub_1AE23BFFC();
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA490, &qword_1AE2514C0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = v56 - v19;
  v56[1] = a1;
  sub_1AE23C01C();
  v21 = *(v18 + 44);
  v22 = sub_1AE23C12C();
  v23 = sub_1AE017B78(&qword_1ED967148, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
  ++v71;
  v62 = (v9 + 16);
  v61 = (v12 + 8);
  v60 = (v9 + 8);
  v69 = v8;
  *&v24 = v8;
  *(&v24 + 1) = v14;
  v59 = v24;
  ++v58;
  v63 = v22;
  while (1)
  {
    v25 = v72;
    sub_1AE23D46C();
    sub_1AE017B78(&qword_1ED967158, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
    v26 = v73;
    v27 = sub_1AE23CCBC();
    (*v71)(v25, v26);
    if (v27)
    {
      break;
    }

    v28 = sub_1AE23D51C();
    v30 = *v29;
    v28(v76, 0);
    sub_1AE23D47C();
    v31 = v74;
    v77 = *v75;
    type metadata accessor for CRSequence(0, v74, &off_1F23C8BA0, v32);
    v33 = v20;
    v34 = v23;
    v35 = v66;
    CRSequence.subscript.getter(v30);
    v36 = v21;
    v38 = v68;
    v37 = v69;
    (*v62)(v68, v35, v69);
    v39 = v35;
    v23 = v34;
    v20 = v33;
    (*v61)(v39, v31);
    v76[0] = v59;
    v76[1] = v67;
    v76[2] = *(v70 + 48);
    v40 = type metadata accessor for CRDictionary(0, v76);
    v41 = v64;
    CRDictionary.removeValue(forKey:)(v38, v40, v64);
    v42 = v38;
    v21 = v36;
    (*v60)(v42, v37);
    (*v58)(v41, v65);
  }

  sub_1ADDCEDE0(v20, &qword_1EB5BA490, &qword_1AE2514C0);
  v43 = v57;
  sub_1AE23C10C();
  v44 = sub_1AE23C0EC();
  v45 = *(v44 - 8);
  (*(v45 + 16))(v7, v43, v44);
  v46 = *(v56[0] + 36);
  sub_1AE017B78(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
  sub_1AE23D46C();
  (*(v45 + 8))(v43, v44);
  v47 = v74;
  sub_1AE23D41C();
  if (*&v7[v46] != *&v76[0])
  {
    sub_1AE017B78(&qword_1EB5BB4E0, MEMORY[0x1E6969B30], MEMORY[0x1E6969B38]);
    do
    {
      sub_1AE23CBDC();
      v48 = sub_1AE23D51C();
      v50 = *v49;
      v51 = v49[1];
      v48(v76, 0);
      v53 = type metadata accessor for CRSequence(0, v47, &off_1F23C8BA0, v52);
      CRSequence.removeSubrange(_:)(v50, v51, v53, v54);
      sub_1AE23D41C();
    }

    while (*&v7[v46] != *&v76[0]);
  }

  return sub_1ADDCEDE0(v7, &qword_1EB5BB4C8, &unk_1AE24C640);
}

void sub_1AE011700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v80 = a4;
  v79 = a3;
  v99 = *(a5 + 16);
  v15 = v99;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v100 = &v72 - v17;
  v76 = a8;
  v18 = *(a8 + 8);
  v73 = a9;
  v19 = *(a9 + 8);
  *&v103 = a6;
  *(&v103 + 1) = a7;
  *&v104 = v18;
  *(&v104 + 1) = v19;
  v75 = sub_1AE23DA9C();
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v72 - v20;
  v81 = a6;
  *&v103 = a6;
  *(&v103 + 1) = a7;
  v82 = a7;
  v78 = v18;
  *&v104 = v18;
  *(&v104 + 1) = v19;
  v77 = v19;
  v97 = sub_1AE23DA8C();
  v83 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v72 - v21;
  v95 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = a5;
  v93 = v15;
  v98 = *(a5 + 32);
  v94 = type metadata accessor for CROrderedSetElement(0, v15, v98, *(&v98 + 1));
  v25 = *(v94 - 1);
  MEMORY[0x1EEE9AC00](v94);
  v27 = &v72 - v26;
  v84 = *(&v15 + 1);
  v28 = sub_1AE23D7CC();
  v72 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v91 = &v72 - v30;
  v85 = a1;
  if (a1 == a2)
  {
    goto LABEL_6;
  }

  v31 = v85;
  if (a2 < v85)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v85 >= a2)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v89 = *v102;
  v88 = type metadata accessor for CRSequence(0, v94, &off_1F23C8BA0, v29);
  v87 = (v95 + 16);
  v86 = (v25 + 8);
  v32 = (v95 + 8);
  v33 = (v72 + 8);
  v34 = v31;
  do
  {
    v35 = v34 + 1;
    v106 = v89;
    CRSequence.subscript.getter(v34);
    v36 = a2;
    v37 = v28;
    v38 = v93;
    (*v87)(v24, v27, v93);
    (*v86)(v27, v94);
    v103 = v99;
    v104 = v98;
    v105 = *(v92 + 48);
    v39 = type metadata accessor for CRDictionary(0, &v103);
    v40 = v27;
    v41 = v91;
    CRDictionary.removeValue(forKey:)(v24, v39, v91);
    v42 = v38;
    v28 = v37;
    a2 = v36;
    (*v32)(v24, v42);
    v43 = v41;
    v27 = v40;
    (*v33)(v43, v28);
    v34 = v35;
  }

  while (v36 != v35);
LABEL_6:
  v90 = v28;
  v44 = v94;
  v88 = type metadata accessor for CRSequence(0, v94, &off_1F23C8BA0, v29);
  v45 = v102;
  sub_1ADE108AC(v88, v46, v47, v48);
  MEMORY[0x1EEE9AC00](v49);
  v50 = v98;
  *(&v72 - 6) = v99;
  v51 = v81;
  v52 = v82;
  *(&v72 - 10) = v81;
  *(&v72 - 9) = v52;
  *(&v72 - 4) = v50;
  v53 = *(v92 + 56);
  v92 = *(v92 + 48);
  *(&v72 - 6) = v92;
  *(&v72 - 5) = v53;
  v89 = v53;
  v54 = v76;
  v55 = v73;
  *(&v72 - 4) = v76;
  *(&v72 - 3) = v55;
  *(&v72 - 2) = v45;
  *&v103 = sub_1ADE08EB0(sub_1AE017E68, (&v72 - 14), v51, v44, MEMORY[0x1E69E73E0], v54, MEMORY[0x1E69E7410], v56);
  v57 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  CRSequence.replaceSubrange<A>(_:with:)(v85, a2, &v103, v88, v57, WitnessTable);

  sub_1AE23E25C();
  sub_1AE23DA6C();
  v59 = v100;
  sub_1AE23DA7C();
  v60 = *(*(TupleTypeMetadata2 - 8) + 48);
  v61 = v60(v59, 1);
  v62 = v93;
  v63 = v84;
  v64 = v95;
  v65 = v91;
  if (v61 != 1)
  {
    v94 = *(v95 + 32);
    v88 = v84 - 8;
    v95 += 32;
    v66 = (v64 + 8);
    v67 = (v72 + 8);
    do
    {
      v68 = *(TupleTypeMetadata2 + 48);
      (v94)(v24, v59, v62);
      v69 = v62;
      v70 = *(v63 - 8);
      (*(v70 + 32))(v65, &v100[v68], v63);
      (*(v70 + 56))(v65, 0, 1, v63);
      v62 = v69;
      v59 = v100;
      v103 = v99;
      v104 = v98;
      *&v105 = v92;
      *(&v105 + 1) = v89;
      v71 = type metadata accessor for CRDictionary(0, &v103);
      sub_1ADFAEA78(v65, v24, v71);
      (*v66)(v24, v62);
      (*v67)(v65, v90);
      sub_1AE23DA7C();
    }

    while ((v60)(v59, 1, TupleTypeMetadata2) != 1);
  }

  (*(v83 + 8))(v96, v97);
}

uint64_t CROrderedDictionary.observableDifference(from:with:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = a1[1];
  v6 = *v4;
  v7 = v4[1];
  v9[2] = *a1;
  v9[3] = v5;
  v9[0] = v6;
  v9[1] = v7;
  return sub_1AE01415C(v9, a2, a3, a4);
}

uint64_t CROrderedDictionary.hasDelta(from:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  v7 = v2[1];
  v17[0] = *v2;
  v20 = v4;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = type metadata accessor for CROrderedSetElement(255, v8, v9, v10);
  type metadata accessor for CRSequence(0, v11, &off_1F23C8BA0, v12);
  v13 = sub_1AE164BF0(&v20);
  swift_retain_n();
  swift_retain_n();

  if (v13 && v7 == v5)
  {

    v14 = 0;
  }

  else
  {
    v19 = v5;
    v20 = v7;
    v15 = *(a2 + 24);

    v17[0] = v8;
    v17[1] = v15;
    v17[2] = v9;
    v17[3] = v10;
    v18 = *(a2 + 48);
    type metadata accessor for CRDictionary(0, v17);
    LOBYTE(v15) = CRDictionary.hasDelta(from:)(&v19);

    if (v15)
    {

      v14 = 1;
    }

    else
    {
      v17[0] = v6;
      v20 = v4;
      v14 = CRSequence.hasDelta(from:)(&v20);
    }
  }

  return v14 & 1;
}

void CROrderedDictionary.actionUndoingDifference(from:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *v3;
  v25 = v3[1];
  v24 = v7;
  v9 = *(a2 + 32);
  v10 = *(a2 + 56);

  v20 = *(a2 + 16);
  v19 = v20;
  v21 = v9;
  v22 = *(a2 + 40);
  v18 = v22;
  v23 = v10;
  v11 = type metadata accessor for CRDictionary(0, &v20);
  CRDictionary.actionUndoingDifference(from:)(&v24, v11, &v20);

  v12 = v20;
  v25 = v8;
  v24 = v6;
  v13 = type metadata accessor for CROrderedSetElement(255, v19, v9, v18);
  type metadata accessor for CRSequence(0, v13, &off_1F23C8BA0, v14);
  CRSequence.actionUndoingDifference(from:)(&v24, &v20);

  v15 = v20;
  if (v12 | v20)
  {
    v16 = v12;
  }

  else
  {
    v16 = 1;
  }

  if (v12 | v20)
  {
    v17 = *(&v12 + 1);
  }

  else
  {
    v17 = 0;
  }

  *a3 = v16;
  a3[1] = v17;
  a3[2] = v15;
}

void CROrderedDictionary.apply(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 != 1)
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v15[0] = v4;
    sub_1ADF5C694(v2, v5, v4);
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v9 = type metadata accessor for CROrderedSetElement(255, v6, v7, v8);
    v11 = type metadata accessor for CRSequence(0, v9, &off_1F23C8BA0, v10);
    v12 = v4;
    LOBYTE(v11) = sub_1AE16501C(v15, v11);

    if (v11)
    {
      v17 = v2;
      v18 = v5;
      sub_1ADE42C78(v2, v5);
      v13 = *(a2 + 24);
      v15[0] = v6;
      v15[1] = v13;
      v15[2] = v7;
      v15[3] = v8;
      v16 = *(a2 + 48);
      v14 = type metadata accessor for CRDictionary(0, v15);
      CRDictionary.apply(_:)(&v17, v14);
      sub_1ADE24060(v2, v5, v4);
      sub_1ADE42CB8(v17, v18);
    }

    else
    {

      sub_1ADE24060(v2, v5, v4);
    }
  }
}

BOOL CROrderedDictionary.isDefaultState.getter()
{
  v1 = *(v0 + 8);
  swift_beginAccess();
  return !*(*(v1 + 32) + 16) && *(*(v1 + 24) + 16) == 0;
}

uint64_t CROrderedDictionary.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  *&v54 = a1;
  v46 = a3;
  v6 = *(a2 + 16);
  v49 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v53 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v48 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v44 - v14;
  v16 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  v22 = *v3;
  v50 = v4[1];
  v23 = *(a2 + 48);
  v24 = *(a2 + 56);
  v59 = *(a2 + 32);
  v51 = v59;
  v45 = v23;
  v58 = v24;
  CROrderedDictionary.init()(v6, v9, v59, *(&v59 + 1), v23, v24, v65);
  v25 = *(*v54 + 16);
  v47 = v13;
  v57 = (v13 + 48);
  v26 = v49;
  v56 = (v49 + 4);
  v27 = v48;
  v55 = (v48 + 4);
  if (v25)
  {
    *&v60 = v22;
    *(&v60 + 1) = v50;
    v50 = a2;
    CROrderedDictionary.makeIterator()(a2, v64);
    v49 = v26 + 1;
    v48 = v27 + 1;
    ++v47;
    v28 = v45;
    v29 = v52;
    v30 = v54;
    while (1)
    {
      *&v60 = v6;
      *(&v60 + 1) = v9;
      v61 = v59;
      v62 = v28;
      v63 = v58;
      v31 = type metadata accessor for CROrderedDictionary.Iterator(0, &v60);
      CROrderedDictionary.Iterator.next()(v31, v21);
      if ((*v57)(v21, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v32 = *(TupleTypeMetadata2 + 48);
      (*v56)(v15, v21, v6);
      (*v55)(&v15[v32], &v21[v32], v9);
      (*(*(v28 + 8) + 24))(v30, v9);
      v33 = v9;
      v34 = v53;
      (*(*(v51 + 8) + 24))(v30, v6);
      CROrderedDictionary.append(value:forKey:)(v29, v34, v50);
      v35 = v34;
      v9 = v33;
      (*v49)(v35, v6);
      (*v48)(v29, v33);
      (*v47)(v15, TupleTypeMetadata2);
    }
  }

  else
  {
    *&v60 = v22;
    *(&v60 + 1) = v50;
    CROrderedDictionary.makeIterator()(a2, v64);
    v36 = v47 + 1;
    *&v37 = v6;
    *(&v37 + 1) = v9;
    v54 = v37;
    v38 = v45;
    while (1)
    {
      v60 = v54;
      v61 = v59;
      v62 = v38;
      v63 = v58;
      v39 = type metadata accessor for CROrderedDictionary.Iterator(0, &v60);
      CROrderedDictionary.Iterator.next()(v39, v18);
      if ((*v57)(v18, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v40 = *(TupleTypeMetadata2 + 48);
      (*v56)(v15, v18, v6);
      (*v55)(&v15[v40], &v18[v40], v9);
      CROrderedDictionary.append(value:forKey:)(&v15[v40], v15, a2);
      (*v36)(v15, TupleTypeMetadata2);
    }
  }

  v42 = v46;
  v43 = v65[1];
  *v46 = v65[0];
  v42[1] = v43;
  return result;
}

uint64_t CROrderedDictionary.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v7 = v5;

  CROrderedDictionary.copy(renamingReferences:)(&v7, a2, a3);
}

void CROrderedDictionary.init(_:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  CROrderedDictionary.init()(a2, a3, a4, a5, a6, a7, v11);

  v10 = v11[1];
  *a8 = v11[0];
  a8[1] = v10;
}

void CROrderedDictionary.init(defaultState:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  CROrderedDictionary.init()(a1, a2, a3, a4, a5, a6, v9);
  v8 = v9[1];
  *a7 = v9[0];
  a7[1] = v8;
}

uint64_t CROrderedDictionary.merge(_:)(void *a1, uint64_t a2, double a3)
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return CROrderedDictionary.merge(_:)(v5, a2, &v6);
}

uint64_t sub_1AE012B90@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Timestamp(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, a1, a3, v17);
  v24[3] = *a2;
  v21 = type metadata accessor for CROrderedSetElement(255, a3, a4, a5);
  type metadata accessor for CRSequence(0, v21, &off_1F23C8BA0, v22);
  sub_1ADE16998(v15);
  *&v15[*(type metadata accessor for Replica(0) + 20)] = 0;
  *&v15[*(v13 + 28)] = 0;
  return sub_1ADE0C8B4(v19, v15, a3, a4, a5, a6);
}

void CROrderedDictionary.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *(a2 + 24);
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - v9;
  v11 = *(v4 + 16);
  v12 = *(v4 + 32);
  v13 = *(v4 + 48);
  v14 = *(v4 + 56);
  v26[0] = v11;
  v26[1] = v6;
  v25[0] = v12;
  v27 = v12;
  v28 = v13;
  v29 = v14;
  v15 = type metadata accessor for CRDictionary(0, v26);
  CRDictionary.removeValue(forKey:)(a1, v15, v10);
  LODWORD(v4) = (*(*(v6 - 8) + 48))(v10, 1, v6);
  v16 = (*(v8 + 8))(v10, v7);
  if (v4 != 1)
  {
    v26[0] = *v3;
    MEMORY[0x1EEE9AC00](v16);
    *&v17 = v11;
    *(&v17 + 1) = v6;
    v18 = v25[0];
    v25[-4] = v17;
    v25[-3] = v18;
    *&v25[-2] = v13;
    *(&v25[-2] + 1) = v14;
    *&v25[-1] = a1;
    v19 = type metadata accessor for CROrderedSetElement(255, v11, v18, *(&v18 + 1));
    v21 = type metadata accessor for CRSequence(0, v19, &off_1F23C8BA0, v20);

    swift_getWitnessTable();
    v22 = sub_1AE1644B0(sub_1AE017BC0, &v25[-5], v21);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      CRSequence.remove(at:)(v22);
    }
  }
}

uint64_t CROrderedDictionary.map<A>(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a1;
  v48 = a2;
  v36 = *(a3 + 24);
  v6 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v35 - v7;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(a3 + 32);
  v15 = type metadata accessor for CROrderedSetElement(255, v8, v50, *(&v50 + 1));
  v16 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v35 - v17;
  v20 = *v4;
  v19 = v4[1];
  v58 = sub_1AE23C9DC();
  *&v55[0] = v20;
  *(&v55[0] + 1) = v19;
  v49 = v19;
  v52 = a3;
  CROrderedDictionary.count.getter(a3);
  v46 = sub_1AE23D11C();
  sub_1AE23D02C();
  *&v55[0] = v20;
  v22 = type metadata accessor for CRSequence(0, v15, &off_1F23C8BA0, v21);

  CRSequence.makeIterator()(v22, v57);

  v45 = type metadata accessor for CRSequence.Iterator(0, v15, &off_1F23C8BA0, v23);
  CRSequence.Iterator.next()(v45, v18);
  v24 = *(v15 - 8);
  v25 = *(v24 + 48);
  v53 = v15;
  v44 = v24 + 48;
  v43 = v25;
  if (v25(v18, 1, v15) == 1)
  {
LABEL_6:

    return v58;
  }

  else
  {
    v38 = v14;
    v42 = *(v9 + 16);
    v26 = v36;
    v41 = v36 - 8;
    v27 = v35;
    v37 = (v9 + 8);
    v40 = (v24 + 8);
    *&v28 = v8;
    *(&v28 + 1) = v36;
    v39 = v28;
    v29 = v53;
    while (1)
    {
      v30 = v51;
      v42(v51, v18, v8);
      (*v40)(v18, v29);
      v56 = v49;
      v55[0] = v39;
      v55[1] = v50;
      v55[2] = *(v52 + 48);
      type metadata accessor for CRDictionary(0, v55);
      CRDictionary.subscript.getter(v31, v27);
      v32 = *(v26 - 8);
      result = (*(v32 + 48))(v27, 1, v26);
      if (result == 1)
      {
        break;
      }

      (*v37)(v30, v8);
      v34 = v54;
      v47(v27);
      if (v34)
      {

        return (*(v32 + 8))(v27, v26);
      }

      v54 = 0;
      (*(v32 + 8))(v27, v26);
      sub_1AE23D0CC();
      CRSequence.Iterator.next()(v45, v18);
      v29 = v53;
      if (v43(v18, 1, v53) == 1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CROrderedDictionary._map<A>(_:)(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a1;
  v38 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v7 = *(v6 + 24);
  v43 = *(v6 + 16);
  v32[0] = v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v33 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v32 - v12;
  v14 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v42 = v32 - v15;
  v16 = *v4;
  v17 = v4[1];
  v50 = sub_1AE23C9DC();
  v45 = v16;
  v46 = v17;
  v41 = CROrderedDictionary.count.getter(a3);
  v32[1] = sub_1AE23D11C();
  sub_1AE23D02C();
  v45 = v16;
  v46 = v17;
  v18 = v43;
  v19 = v32[0];
  CROrderedDictionary.makeIterator()(a3, &v49);
  v41 = (v33 + 6);
  v20 = *(a3 + 32);
  v39 = *(a3 + 48);
  v40 = v20;
  v35 = v19 - 8;
  v36 = v18 - 8;
  v34 = (v33 + 2);
  for (++v33; ; (*v33)(v13, TupleTypeMetadata2))
  {
    v45 = v18;
    v46 = v19;
    v47 = v40;
    v48 = v39;
    v21 = type metadata accessor for CROrderedDictionary.Iterator(0, &v45);
    v22 = v42;
    CROrderedDictionary.Iterator.next()(v21, v42);
    if ((*v41)(v22, 1, TupleTypeMetadata2) == 1)
    {

      return v50;
    }

    v23 = *(TupleTypeMetadata2 + 48);
    v24 = *(v18 - 8);
    (*(v24 + 32))(v13, v22, v18);
    v25 = *(v19 - 8);
    v26 = &v22[v23];
    v27 = v19;
    (*(v25 + 32))(&v13[v23], v26, v19);
    (*v34)(v10, v13, TupleTypeMetadata2);
    v28 = *(TupleTypeMetadata2 + 48);
    v29 = v44;
    v37(v10, &v10[v28]);
    v44 = v29;
    if (v29)
    {
      break;
    }

    v30 = &v10[v28];
    v19 = v27;
    (*(v25 + 8))(v30, v27);
    v18 = v43;
    (*(v24 + 8))(v10, v43);
    sub_1AE23D0CC();
  }

  (*v33)(v13, TupleTypeMetadata2);

  (*(v25 + 8))(&v10[v28], v27);
  return (*(v24 + 8))(v10, v43);
}

uint64_t CROrderedDictionary.insertionCount.getter(_OWORD *a1)
{
  v6 = *(v1 + 8);
  v2 = a1[2];
  v5[0] = a1[1];
  v5[1] = v2;
  v5[2] = a1[3];
  v3 = type metadata accessor for CRDictionary(0, v5);
  return CRDictionary.insertionCount.getter(v3);
}

uint64_t sub_1AE01396C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1[1];
  v6 = *a2;
  v11 = *a1;
  v12 = v5;
  v7 = *(a2 + a3 - 32);
  v10[0] = *(a2 + a3 - 48);
  v10[1] = v7;
  v10[2] = *(a2 + a3 - 16);
  v8 = type metadata accessor for CROrderedDictionary(0, v10);
  return CROrderedDictionary.subscript.getter(v6, v8, a4);
}

id sub_1AE0139DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v6 = *(a3 + a4 - 32);
  v9[0] = *(a3 + a4 - 48);
  v9[1] = v6;
  v9[2] = *(a3 + a4 - 16);
  v7 = type metadata accessor for CROrderedDictionary(0, v9);
  return sub_1AE017788(a1, v5, v7);
}

void (*CROrderedDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2, __n128 a3)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(a3 + 24);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(v12);
    v13 = malloc(v12);
  }

  v9[6] = v13;
  CROrderedDictionary.subscript.getter(a2, a3, v13);
  return sub_1AE013B78;
}

void sub_1AE013B78(uint64_t **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = (*a1)[5];
  v5 = (*a1)[6];
  v6 = (*a1)[3];
  v7 = (*a1)[4];
  v8 = (*a1)[1];
  v9 = **a1;
  if (a2)
  {
    (*(v7 + 16))((*a1)[5], v5, v6, a3);
    sub_1AE017788(v4, v9, v8);
    v10 = *(v7 + 8);
    v10(v4, v6);
    v10(v5, v6);
  }

  else
  {
    sub_1AE017788((*a1)[6], v9, v8);
    (*(v7 + 8))(v5, v6);
  }

  free(v5);
  free(v4);

  free(v3);
}

uint64_t CROrderedDictionary.delta(_:from:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t CROrderedDictionary.merge(delta:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;

  CROrderedDictionary.merge(_:)(v5, a2, &v6);

  return 1;
}

uint64_t sub_1AE013D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static CRDT.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

double CROrderedDictionary.encode(to:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  sub_1ADDFCC74(a1, a2, a3);
  if (!v4)
  {
    v15[0] = v6;
    v15[1] = v7;
    v9 = a2[2];
    v10 = a2[3];
    v11 = a2[4];
    v12 = a2[5];
    v14 = a2[6];
    v13 = a2[7];

    sub_1ADE6BC94(v15, v9, v10, v11, v12, v14, v13);
  }

  return result;
}

uint64_t CROrderedDictionary.ObservableDifference.removed.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  v5 = sub_1AE23C12C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CROrderedDictionary.ObservableDifference.added.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 76);
  v5 = sub_1AE23C12C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1AE01407C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  v20[0] = a5;
  v20[1] = a6;
  v20[2] = a7;
  v20[3] = a8;
  v20[4] = a10;
  v20[5] = a11;
  v15 = type metadata accessor for CROrderedDictionary.ObservableDifference(0, v20);
  v16 = v15[17];
  v17 = sub_1AE23C12C();
  v18 = *(*(v17 - 8) + 32);
  v18(&a9[v16], a2, v17);
  *&a9[v15[18]] = a3;
  return (v18)(&a9[v15[19]], a4, v17);
}

uint64_t sub_1AE01415C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v314 = a4;
  v8 = *(a3 + 48);
  v9 = *(a3 + 24);
  v321 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v317 = sub_1AE23D7CC();
  v311 = *(v317 - 8);
  MEMORY[0x1EEE9AC00](v317);
  v320 = &v300 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v319 = &v300 - v13;
  v322 = AssociatedTypeWitness;
  v310 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v316 = &v300 - v15;
  v328 = v9;
  v313 = v8;
  v17 = type metadata accessor for CRDictionaryElement(255, v9, v8, v16);
  v326 = sub_1AE23D7CC();
  v309 = *(v326 - 8);
  MEMORY[0x1EEE9AC00](v326);
  v339 = &v300 - v18;
  v332 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v338 = &v300 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v344 = &v300 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v330 = &v300 - v24;
  v25 = *(a3 + 16);
  v335 = v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v341 = sub_1AE23D7CC();
  v308 = *(v341 - 8);
  MEMORY[0x1EEE9AC00](v341);
  v346 = &v300 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v347 = &v300 - v28;
  v327 = a3;
  v312 = *(a3 + 32);
  v374 = *(&v312 + 1);
  v305 = v312;
  v29 = type metadata accessor for CROrderedSetElement(0, v25, v312, *(&v312 + 1));
  v358 = *(v29 - 8);
  v30 = *(v358 + 64);
  MEMORY[0x1EEE9AC00](v29);
  *&v367 = &v300 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v364 = (&v300 - v32);
  v307 = sub_1AE23C12C();
  v306 = *(v307 - 8);
  MEMORY[0x1EEE9AC00](v307);
  v304 = &v300 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v303 = &v300 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v345 = &v300 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v349 = &v300 - v39;
  v373 = v25;
  v337 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v343 = &v300 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v300 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = (&v300 - v46);
  MEMORY[0x1EEE9AC00](v48);
  v369 = &v300 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v371 = &v300 - v51;
  v350 = swift_getTupleTypeMetadata2();
  v361 = sub_1AE23D7CC();
  v52 = *(v361 - 8);
  MEMORY[0x1EEE9AC00](v361);
  v331 = (&v300 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v54);
  v351 = (&v300 - v55);
  MEMORY[0x1EEE9AC00](v56);
  v360 = (&v300 - v57);
  MEMORY[0x1EEE9AC00](v58);
  v61 = (&v300 - v60);
  v62 = *a1;
  v340 = *(a1 + 8);
  v63 = *v4;
  v315 = *(v4 + 8);
  v323 = a2;
  v64 = *(a2 + 24);
  v372 = v29;
  if (!v64)
  {
    goto LABEL_84;
  }

  while (1)
  {
    v387 = v62;
    v382 = v63;
    v65 = v62;
    v66 = v372;
    v67 = type metadata accessor for CRSequence(0, v372, &off_1F23C8BA0, v59);
    *&v365 = v63;
    swift_retain_n();
    v302 = v65;
    swift_retain_n();
    CRSequence.observableDifference(from:with:)(&v382, v67, &v383);

    v357 = v47;
    v329 = v383;
    v318 = v30;
    if (!v383)
    {
      type metadata accessor for _NSRange(255);
      type metadata accessor for CRSequenceStorage(255, v66, &off_1F23C8BA0, v68);
      sub_1AE23D7CC();
      swift_getTupleTypeMetadata3();
      v329 = sub_1AE23D05C();
    }

    v69 = v350;
    v391 = sub_1AE23C9CC();
    v390 = sub_1AE23C9CC();
    *&v383 = v365;
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x1B26FB780](&v387, v67, WitnessTable);

    v382 = v387;
    v300 = sub_1AE23DC9C();
    sub_1AE23DC6C();
    v366 = v67;
    v301 = WitnessTable;
    v71 = sub_1AE23DC8C();
    v359 = (v52 + 4);
    v63 = (v337 + 16);
    v370 = (v358 + 8);
    v348 = v71;
    while (1)
    {
      v72 = v360;
      sub_1AE23DC7C();
      v73 = *v359;
      (*v359)(v61, v72, v361);
      v74 = *(v69 - 8);
      v75 = *(v74 + 48);
      v76 = (v74 + 48);
      if (v75(v61, 1, v69) == 1)
      {
        break;
      }

      v77 = *v61;
      v78 = *(v69 + 48);
      (*v63)(v371, v61 + v78, v373);
      (*v370)(v61 + v78, v372);
      v387 = v77;
      v388 = 0;
      sub_1AE23CB1C();
      sub_1AE23CB8C();
    }

    v355 = v76;
    v353 = v73;

    sub_1AE23C11C();
    sub_1AE23C11C();
    type metadata accessor for _NSRange(255);
    type metadata accessor for CRSequenceStorage(255, v372, &off_1F23C8BA0, v79);
    sub_1AE23D7CC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v81 = v329;
    v82 = sub_1AE23D0AC();
    v83 = v335;
    v362 = v63;
    if (v82 < 1)
    {

      v351 = MEMORY[0x1E69E7CC0];
      v164 = v347;
      v165 = v311;
      goto LABEL_153;
    }

    v354 = v75;
    v382 = sub_1AE23C9EC();
    v380 = sub_1AE23C9EC();

    v84 = sub_1AE23D0AC();
    v85 = v370;
    v356 = v44;
    v336 = TupleTypeMetadata3;
    if (v84)
    {
      v363 = 0;
      v86 = 0;
      v325 = v81 + 32;
      v368 = (v337 + 8);
      v324 = (v358 + 16);
      while (1)
      {
        v87 = sub_1AE23D08C();
        sub_1AE23D00C();
        if ((v87 & 1) == 0)
        {
          goto LABEL_210;
        }

        if (__OFADD__(v86, 1))
        {
          goto LABEL_211;
        }

        v88 = (v325 + 32 * v86);
        v89 = *v88;
        v90 = v88[1];
        v91 = *v88 + v90;
        if (__OFADD__(*v88, v90))
        {
          goto LABEL_212;
        }

        if (v91 < v89)
        {
          goto LABEL_213;
        }

        v93 = v88[2];
        v92 = v88[3];
        v333 = v86 + 1;
        v334 = v93;
        v352 = v92;
        if (v89 != v91)
        {
          break;
        }

        v94 = v92;
LABEL_20:
        v100 = v324;
        v101 = v352;
        if (v352)
        {
          v102 = v373;
          v103 = sub_1AE16A958();
          v352 = v101;

          v104 = v372;
          if (sub_1AE23D0AC())
          {
            v105 = 0;
            do
            {
              v106 = sub_1AE23D08C();
              sub_1AE23D00C();
              if (v106)
              {
                (*(v358 + 16))(v367, v103 + ((*(v358 + 80) + 32) & ~*(v358 + 80)) + *(v358 + 72) * v105, v104);
                v107 = v105 + 1;
                if (__OFADD__(v105, 1))
                {
                  goto LABEL_194;
                }
              }

              else
              {
                result = sub_1AE23DAAC();
                if (v318 != 8)
                {
                  goto LABEL_228;
                }

                *&v383 = result;
                (*v100)(v367, &v383, v104);
                swift_unknownObjectRelease();
                v107 = v105 + 1;
                if (__OFADD__(v105, 1))
                {
                  goto LABEL_194;
                }
              }

              v108 = v367;
              (*v63)(v369, v367, v102);
              v104 = v372;
              (*v370)(v108, v372);
              sub_1AE23D38C();
              v109 = v371;
              sub_1AE23D33C();
              v110 = v109;
              v63 = v362;
              (*v368)(v110, v102);
              ++v105;
            }

            while (v107 != sub_1AE23D0AC());
          }

          v112 = v352;

          v85 = v370;
        }

        v113 = __OFSUB__(v363, v334);
        v363 -= v334;
        if (v113)
        {
          goto LABEL_214;
        }

        v81 = v329;
        v114 = sub_1AE23D0AC();
        v86 = v333;
        v44 = v356;
        if (v333 == v114)
        {
          goto LABEL_34;
        }
      }

      if (v89 >= v91)
      {
        goto LABEL_215;
      }

      v95 = v373;
      v96 = v92;
      while (1)
      {
        v97 = v89 + v363;
        if (__OFADD__(v89, v363))
        {
          break;
        }

        ++v89;
        *&v383 = v365;
        v98 = v364;
        CRSequence.subscript.getter(v97);
        (*v63)(v369, v98, v95);
        sub_1AE23D38C();
        v99 = v371;
        sub_1AE23D33C();
        (*v368)(v99, v95);
        (*v85)(v98, v372);
        if (!--v90)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
      goto LABEL_207;
    }

LABEL_34:

    v389 = sub_1AE23C9CC();
    v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCC20, &qword_1AE251818);
    v379 = sub_1AE23C9CC();
    if (!sub_1AE23D0AC())
    {
      break;
    }

    v352 = 0;
    v30 = 0;
    v115 = 0;
    v318 = v81 + 32;
    v368 = (v337 + 8);
    v369 = MEMORY[0x1E69E7CC0];
    v61 = v351;
    while (1)
    {
      v116 = sub_1AE23D08C();
      result = sub_1AE23D00C();
      if ((v116 & 1) == 0)
      {
        goto LABEL_216;
      }

      if (__OFADD__(v115, 1))
      {
        goto LABEL_217;
      }

      v117 = (v318 + 32 * v115);
      v29 = *v117;
      v47 = v117[1];
      v118 = v47 + *v117;
      if (__OFADD__(*v117, v47))
      {
        goto LABEL_218;
      }

      if (v118 < v29)
      {
        goto LABEL_219;
      }

      v120 = v117[2];
      v119 = v117[3];
      v358 = v29;
      v325 = v115 + 1;
      v333 = v120;
      v363 = v119;
      if (v29 != v118)
      {
        break;
      }

      result = v119;
LABEL_42:
      v121 = v363;
      if (v363)
      {
        *&v383 = sub_1AE16A958();
        v122 = sub_1AE23D11C();
        v324 = v121;
        v123 = swift_getWitnessTable();
        MEMORY[0x1B26FB780](&v387, v122, v123);
        v376 = v387;
        sub_1AE23DC9C();
        sub_1AE23DC6C();
        v124 = v350;
        v363 = sub_1AE23DC8C();
        v125 = v358;
        while (1)
        {
          v129 = v360;
          sub_1AE23DC7C();
          v353(v61, v129, v361);
          if (v354(v61, 1, v124) == 1)
          {
            break;
          }

          v130 = *v61;
          v131 = *(v124 + 48);
          v132 = *v63;
          (*v63)(v44, v61 + v131, v373);
          (*v370)(v61 + v131, v372);
          if (sub_1AE23D37C())
          {
            v133 = v125 + v30;
            v134 = v369;
            if (__OFADD__(v125, v30))
            {
              goto LABEL_200;
            }

            v135 = &v130[v133];
            if (__OFADD__(v133, v130))
            {
              goto LABEL_202;
            }

            v136 = v373;
            v132(v371, v44, v373);
            v387 = *(v134 + 2);
            v388 = 0;
            v137 = v374;
            sub_1AE23CB1C();
            sub_1AE23CB8C();
            v138 = v379;
            v139 = *(v379 + 16);
            *&v140 = -1;
            *(&v140 + 1) = -1;
            v367 = v140;
            if (v139)
            {
              v141 = sub_1ADDFFB6C(v44, v136, v137);
              v125 = v358;
              if (v142)
              {
                v367 = *(*(v138 + 56) + 16 * v141);
              }
            }

            else
            {
              v125 = v358;
            }

            v113 = __OFADD__(v125, v130);
            v143 = &v130[v125];
            v144 = v369;
            if (v113)
            {
              goto LABEL_204;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v144 = sub_1ADE55D60(0, *(v144 + 2) + 1, 1, v144);
            }

            v146 = *(v144 + 2);
            v145 = *(v144 + 3);
            if (v146 < v145 >> 1)
            {
              v369 = v144;
            }

            else
            {
              v369 = sub_1ADE55D60((v145 > 1), v146 + 1, 1, v144);
            }

            v126 = v356;
            (*v368)(v356, v373);
            v127 = v369;
            *(v369 + 2) = v146 + 1;
            v128 = &v127[32 * v146];
            v44 = v126;
            *(v128 + 2) = v367;
            *(v128 + 6) = v135;
            *(v128 + 7) = v143;
            v124 = v350;
          }

          else
          {
            if (__OFADD__(v130, v125))
            {
              goto LABEL_201;
            }

            sub_1AE23C08C();
            (*v368)(v44, v373);
          }

          v113 = __OFSUB__(v30--, 1);
          if (v113)
          {
            goto LABEL_195;
          }
        }

        v147 = v324;
      }

      v113 = __OFSUB__(v352, v333);
      v352 = (v352 - v333);
      if (v113)
      {
        goto LABEL_220;
      }

      v148 = sub_1AE23D0AC();
      v115 = v325;
      if (v325 == v148)
      {
        goto LABEL_89;
      }
    }

    if (v29 >= v118)
    {
      goto LABEL_226;
    }

    *&v367 = v382;
    v149 = v119;
    while (1)
    {
      v150 = v352 + v29;
      if (__OFADD__(v29, v352))
      {
        goto LABEL_196;
      }

      *&v383 = v365;
      v151 = v373;
      v52 = v364;
      CRSequence.subscript.getter(v352 + v29);
      v152 = *v63;
      v153 = v357;
      (*v63)(v357, v52, v151);
      (*v370)(v52, v372);
      if ((sub_1AE23D37C() & 1) == 0)
      {
        sub_1AE23C08C();
        result = (*v368)(v153, v373);
        v44 = v356;
        v61 = v351;
        goto LABEL_69;
      }

      v154 = v30 + v358;
      if (__OFADD__(v30, v358))
      {
        goto LABEL_205;
      }

      v155 = v357;
      sub_1AE23CB7C();
      if ((BYTE8(v383) & 1) == 0)
      {
        break;
      }

      v156 = v373;
      v152(v371, v155, v373);
      *&v383 = v150;
      *(&v383 + 1) = v154;
      LOBYTE(v384) = 0;
      sub_1AE23CB1C();
      sub_1AE23CB8C();
      result = (*v368)(v155, v156);
      v61 = v351;
LABEL_80:
      v113 = __OFADD__(v30++, 1);
      v44 = v356;
      if (v113)
      {
        goto LABEL_206;
      }

      v63 = v362;
LABEL_69:
      ++v29;
      v47 = (v47 - 1);
      if (!v47)
      {
        goto LABEL_42;
      }
    }

    v44 = v383;
    v62 = v369;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v351;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v44 & 0x8000000000000000) != 0)
      {
        goto LABEL_83;
      }

LABEL_77:
      if (v44 >= *(v62 + 2))
      {
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        sub_1AE23DAAC();
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        result = sub_1AE23DAAC();
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
        return result;
      }

      v158 = v62;
      v159 = &v62[32 * v44];
      *(v159 + 5) = v154;
      result = (*v368)(v357, v373);
      v369 = v158;
      if (v44 >= *(v158 + 2))
      {
        goto LABEL_209;
      }

      *(v159 + 4) = v150;
      goto LABEL_80;
    }

    v62 = sub_1ADF79A2C(v62);
    if ((v44 & 0x8000000000000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    *&v383 = v63;
    v387 = v62;
    type metadata accessor for CRSequence(0, v29, &off_1F23C8BA0, v59);
    v160 = sub_1AE164BF0(&v387);

    if (v160 && v315 == v340)
    {
      v161 = *(v327 + 56);
      *&v162 = v373;
      *(&v162 + 1) = v328;
      v384 = v312;
      v383 = v162;
      v385 = v313;
      v386 = v161;
      v163 = type metadata accessor for CROrderedDictionary.ObservableDifference(0, &v383);
      return (*(*(v163 - 8) + 56))(v314, 1, 1, v163);
    }
  }

  v369 = MEMORY[0x1E69E7CC0];
LABEL_89:

  v377 = MEMORY[0x1E69E7CC0];
  v378 = MEMORY[0x1E69E7CC0];
  v166 = v369;
  v167 = *(v369 + 2);
  if (!v167)
  {
    *&v367 = MEMORY[0x1E69E7CC0];
    v368 = MEMORY[0x1E69E7CC0];
    v351 = MEMORY[0x1E69E7CC0];
    v205 = v360;
    v202 = v366;
    goto LABEL_149;
  }

  swift_beginAccess();
  swift_beginAccess();
  v168 = 0;
  v169 = *(v166 + 2);
  v170 = MEMORY[0x1E69E7CC0];
  result = MEMORY[0x1E69E7CC0];
  while (2)
  {
    if (v168 >= v169)
    {
      goto LABEL_221;
    }

    v171 = &v166[32 * v168];
    v172 = *(v171 + 5);
    v173 = *(result + 16);
    if (v173)
    {
      v174 = 0;
      v175 = (result + 32);
      v176 = *(result + 16);
      while (1)
      {
        v177 = *v175++;
        if (v172 >= v177)
        {
          v113 = __OFADD__(v174++, 1);
          if (v113)
          {
            goto LABEL_197;
          }
        }

        if (!--v176)
        {
          goto LABEL_100;
        }
      }
    }

    v174 = 0;
LABEL_100:
    v178 = *(v170 + 2);
    if (v178)
    {
      v179 = (v170 + 32);
      v180 = *(v170 + 2);
      do
      {
        v181 = *v179++;
        if (v181 < v172)
        {
          v113 = __OFSUB__(v174--, 1);
          if (v113)
          {
            goto LABEL_198;
          }
        }
      }

      while (--v180);
    }

    v369 = v166;
    v182 = *(v171 + 6);
    v183 = 0;
    if (v173)
    {
      v184 = (result + 32);
      do
      {
        v185 = *v184++;
        if (v182 >= v185)
        {
          v113 = __OFADD__(v183++, 1);
          if (v113)
          {
            goto LABEL_199;
          }
        }
      }

      while (--v173);
    }

    if (v178)
    {
      v186 = (v170 + 32);
      do
      {
        v187 = *v186++;
        if (v187 < v182)
        {
          v113 = __OFSUB__(v183--, 1);
          if (v113)
          {
            goto LABEL_203;
          }
        }
      }

      while (--v178);
    }

    v188 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    v189 = v170;
    if (result)
    {
      v190 = v188;
    }

    else
    {
      result = sub_1ADE55D4C(0, *(v188 + 16) + 1, 1, v188);
      v190 = result;
    }

    v192 = *(v190 + 16);
    v191 = *(v190 + 24);
    if (v192 >= v191 >> 1)
    {
      result = sub_1ADE55D4C((v191 > 1), v192 + 1, 1, v190);
      v190 = result;
    }

    *(v190 + 16) = v192 + 1;
    *(v190 + 8 * v192 + 32) = v182;
    if (v168 >= *(v369 + 2))
    {
      goto LABEL_222;
    }

    *&v367 = v190;
    v193 = *(v171 + 5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v189 = sub_1ADE55D4C(0, *(v170 + 2) + 1, 1, v170);
    }

    v368 = v189;
    v195 = *(v189 + 2);
    v194 = *(v189 + 3);
    if (v195 >= v194 >> 1)
    {
      v368 = sub_1ADE55D4C((v194 > 1), v195 + 1, 1, v368);
    }

    v196 = v368;
    *(v368 + 2) = v195 + 1;
    v170 = v196;
    *&v196[8 * v195 + 32] = v193;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v369 = sub_1ADF79A2C(v369);
    }

    v169 = *(v369 + 2);
    result = v367;
    if (v168 >= v169)
    {
      goto LABEL_223;
    }

    v197 = &v369[32 * v168];
    v198 = *(v197 + 5);
    v113 = __OFADD__(v198, v174);
    v199 = v198 + v174;
    if (v113)
    {
      goto LABEL_224;
    }

    *(v197 + 5) = v199;
    v200 = *(v197 + 6);
    v113 = __OFADD__(v200, v183);
    v201 = v200 + v183;
    if (v113)
    {
      goto LABEL_225;
    }

    ++v168;
    *(v197 + 6) = v201;
    v166 = v369;
    if (v168 != v167)
    {
      continue;
    }

    break;
  }

  v377 = v170;
  v378 = result;
  v203 = (v369 + 48);
  v204 = MEMORY[0x1E69E7CC0];
  v205 = v360;
  do
  {
    v210 = *(v203 - 1);
    v211 = *v203;
    if (v210 != *v203)
    {
      v113 = __OFSUB__(v211, 1);
      v212 = v211 - 1;
      if (v113)
      {
        goto LABEL_227;
      }

      if (v210 != v212)
      {
        v365 = *v203;
        v213 = *(v203 - 2);
        result = swift_isUniquelyReferenced_nonNull_native();
        *&v383 = v204;
        if ((result & 1) == 0)
        {
          result = sub_1ADE6F3BC(0, *(v204 + 16) + 1, 1);
          v204 = v383;
        }

        v206 = v365;
        v208 = *(v204 + 16);
        v207 = *(v204 + 24);
        if (v208 >= v207 >> 1)
        {
          result = sub_1ADE6F3BC((v207 > 1), v208 + 1, 1);
          v206 = v365;
          v204 = v383;
        }

        *(v204 + 16) = v208 + 1;
        v209 = v204 + 32 * v208;
        *(v209 + 32) = v213;
        *(v209 + 40) = v210;
        *(v209 + 48) = v206;
        v205 = v360;
      }
    }

    v203 += 4;
    --v169;
  }

  while (v169);
  v351 = v204;
  v202 = v366;
LABEL_149:

  *&v383 = v302;
  MEMORY[0x1B26FB780](&v387, v202, v301);

  v375 = v387;
  sub_1AE23DC6C();
  sub_1AE23DC7C();
  v214 = v331;
  v215 = v353;
  v353(v331, v205, v361);
  v216 = v350;
  v217 = v354(v214, 1, v350);
  v218 = v374;
  v219 = v371;
  v220 = v372;
  if (v217 != 1)
  {
    v366 = *v63;
    do
    {
      v369 = *v331;
      v221 = v220;
      v222 = v205;
      v223 = v218;
      v224 = v215;
      v225 = *(v216 + 48);
      (v366)(v219, v331 + v225, v373);
      v226 = v331 + v225;
      v215 = v224;
      v218 = v223;
      v205 = v222;
      v220 = v221;
      (*v370)(v226, v221);
      v387 = v369;
      v388 = 0;
      sub_1AE23CB1C();
      sub_1AE23CB8C();
      sub_1AE23DC7C();
      v227 = v331;
      v215(v331, v205, v361);
    }

    while (v354(v227, 1, v216) != 1);
  }

  v164 = v347;
  v165 = v311;
  v83 = v335;
LABEL_153:
  v389 = sub_1AE23C9CC();
  v228 = v315;
  swift_beginAccess();
  v229 = *(v228 + 40);
  v230 = *(v229 + 64);
  v369 = (v229 + 64);
  v231 = 1 << *(v229 + 32);
  v232 = -1;
  if (v231 < 64)
  {
    v232 = ~(-1 << v231);
  }

  v233 = v232 & v230;
  v359 = ((v231 + 63) >> 6);
  v234 = TupleTypeMetadata2;
  v368 = (TupleTypeMetadata2 - 8);
  v361 = v332 + 16;
  v372 = (v337 + 32);
  v235 = (v332 + 32);
  *&v367 = v308 + 32;
  v366 = (v332 + 48);
  *&v365 = v332 + 8;
  v364 = (v337 + 8);
  v358 = v321 + 40;
  v357 = (v310 + 48);
  v356 = (v310 + 32);
  v355 = (v310 + 16);
  v354 = (v310 + 56);
  v353 = (v310 + 8);
  v352 = (v165 + 8);
  v360 = (v309 + 8);
  v363 = v229;

  v236 = 0;
  v237 = v346;
  v370 = v235;
  while (2)
  {
    if (!v233)
    {
      if (v359 <= v236 + 1)
      {
        v239 = (v236 + 1);
      }

      else
      {
        v239 = v359;
      }

      v240 = v239 - 1;
      while (1)
      {
        v238 = v236 + 1;
        if (__OFADD__(v236, 1))
        {
          goto LABEL_193;
        }

        if (v238 >= v359)
        {
          v233 = 0;
          v254 = 1;
          v236 = v240;
          goto LABEL_168;
        }

        v233 = *&v369[8 * v238];
        ++v236;
        if (v233)
        {
          v236 = v238;
          goto LABEL_167;
        }
      }
    }

    v238 = v236;
LABEL_167:
    v241 = __clz(__rbit64(v233));
    v233 &= v233 - 1;
    v242 = v241 | (v238 << 6);
    v243 = v363;
    v244 = v337;
    v245 = v371;
    v246 = v373;
    (*(v337 + 16))(v371, *(v363 + 48) + *(v337 + 72) * v242, v373);
    v247 = *(v243 + 56);
    v248 = v332;
    v249 = v330;
    (*(v332 + 16))(v330, v247 + *(v332 + 72) * v242, v83);
    v250 = *(v234 + 48);
    v251 = *(v244 + 32);
    v252 = v346;
    v251(v346, v245, v246);
    v253 = *(v248 + 32);
    v237 = v252;
    v235 = v370;
    v253(&v252[v250], v249, v83);
    v254 = 0;
    v164 = v347;
LABEL_168:
    v255 = *(v234 - 8);
    (*(v255 + 56))(v237, v254, 1, v234);
    (*v367)(v164, v237, v341);
    if ((*(v255 + 48))(v164, 1, v234) != 1)
    {
      v256 = *(v234 + 48);
      v257 = v343;
      (*v372)(v343, v164, v373);
      v258 = *v235;
      v259 = &v164[v256];
      v260 = v344;
      (*v235)(v344, v259, v83);
      swift_beginAccess();

      v261 = v339;
      sub_1AE23CB7C();

      if ((*v366)(v261, 1, v83) == 1)
      {
        (*v365)(v260, v83);
        (*v364)(v257, v373);
        (*v360)(v261, v326);
        v234 = TupleTypeMetadata2;
        v237 = v346;
        v164 = v347;
        continue;
      }

      v258(v338, v261, v83);
      sub_1AE23CB7C();
      if (BYTE8(v383) == 1)
      {
        result = sub_1AE23CB7C();
        v164 = v347;
        if (v381)
        {
          goto LABEL_229;
        }

        v262 = v380;
        v263 = v328;
        v264 = v335;
        v265 = v338;
      }

      else
      {
        v262 = v383;
        v263 = v328;
        v264 = v335;
        v265 = v338;
        v164 = v347;
      }

      v266 = v264;
      v267 = *(v264 + 36);
      v268 = v344;
      if (sub_1AE23CCBC())
      {
        v269 = v268 + v267;
        v270 = v319;
        (*(v321 + 40))(v269, v323, v263);
        v271 = v322;
        if ((*v357)(v270, 1, v322) == 1)
        {
          v272 = *v365;
          v273 = v265;
          v83 = v266;
          (*v365)(v273, v266);
          v272(v268, v266);
          (*v364)(v343, v373);
          (*v352)(v270, v317);
        }

        else
        {
          v277 = v316;
          (*v356)(v316, v270, v271);
          v278 = v320;
          (*v355)(v320, v277, v271);
          (*v354)(v278, 0, 1, v271);
          *&v383 = v262;
          sub_1AE23CB1C();
          sub_1AE23CB8C();
          v279 = v277;
          v164 = v347;
          v280 = v335;
          (*v353)(v279, v271);
          v281 = *v365;
          (*v365)(v265, v280);
          v281(v268, v280);
          (*v364)(v343, v373);
          v83 = v280;
        }

        goto LABEL_185;
      }

      v274 = *(type metadata accessor for FinalizedTimestamp(0) + 20);
      v275 = *(v268 + v274);
      v276 = *&v265[v274];
      if (v275 == v276)
      {
        if ((sub_1ADF5EB00(v268) & 1) == 0)
        {
          goto LABEL_184;
        }

LABEL_183:
        (*(v321 + 40))(v268 + v267, v323, v328);
        *&v383 = v262;
        sub_1AE23CB1C();
        sub_1AE23CB8C();
      }

      else if (v275 < v276)
      {
        goto LABEL_183;
      }

LABEL_184:
      v282 = *v365;
      v283 = v265;
      v83 = v266;
      (*v365)(v283, v266);
      v282(v268, v266);
      (*v364)(v343, v373);
LABEL_185:
      v234 = TupleTypeMetadata2;
      v237 = v346;
      v235 = v370;
      continue;
    }

    break;
  }

  if (sub_1AE23C04C() > 0 || sub_1AE23CA7C() > 0 || v351[2] || sub_1AE23C04C() >= 1)
  {
    v284 = v389;
    v285 = *(v306 + 32);
    v286 = v303;
    v287 = v307;
    v285(v303, v345, v307);
    v288 = v304;
    v285(v304, v349, v287);
    v289 = *(v327 + 56);
    v290 = v313;
    v291 = v314;
    v292 = v284;
    v293 = v373;
    v294 = v328;
    sub_1AE01407C(v292, v286, v351, v288, v373, v328, v305, v374, v314, v313, v289);
    *&v383 = v293;
    *(&v383 + 1) = v294;
    v384 = v312;
    v385 = v290;
    v386 = v289;
    v295 = type metadata accessor for CROrderedDictionary.ObservableDifference(0, &v383);
    (*(*(v295 - 8) + 56))(v291, 0, 1, v295);
    goto LABEL_191;
  }

LABEL_207:
  v296 = *(v306 + 8);
  v297 = v307;
  v296(v345, v307);
  v296(v349, v297);
  v298 = *(v327 + 56);
  *&v383 = v373;
  *(&v383 + 1) = v328;
  v384 = v312;
  v385 = v313;
  v386 = v298;
  v299 = type metadata accessor for CROrderedDictionary.ObservableDifference(0, &v383);
  (*(*(v299 - 8) + 56))(v314, 1, 1, v299);

LABEL_191:
}

uint64_t CROrderedDictionary.MergeableDelta.merge(delta:)(uint64_t *a1, _OWORD *a2)
{
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;

  v4 = a2[2];
  v7[0] = a2[1];
  v7[1] = v4;
  v7[2] = a2[3];
  v5 = type metadata accessor for CROrderedDictionary(0, v7);
  CROrderedDictionary.merge(_:)(v8, v5, v7);

  return 1;
}

double CROrderedDictionary.MergeableDelta.visitReferences(_:)(void *a1, _OWORD *a2)
{
  v5 = v2[1];
  v10 = *v2;
  v11 = v5;

  v6 = a2[2];
  v9[0] = a2[1];
  v9[1] = v6;
  v9[2] = a2[3];
  v7 = type metadata accessor for CROrderedDictionary(0, v9);
  CROrderedDictionary.visitReferences(_:)(a1, v7);

  return result;
}

void CROrderedDictionary.MergeableDelta.init(from:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  CROrderedDictionary.init(from:)(a1, a2, a3, a4, a5, a6, a7, v11);
  if (!v8)
  {
    v10 = v11[1];
    *a8 = v11[0];
    a8[1] = v10;
  }
}

double CROrderedDictionary.MergeableDelta.encode(to:)(uint64_t a1, _OWORD *a2)
{
  v5 = v2[1];
  v11 = *v2;
  v12 = v5;

  v6 = a2[2];
  v10[0] = a2[1];
  v10[1] = v6;
  v10[2] = a2[3];
  v7 = type metadata accessor for CROrderedDictionary(0, v10);
  CROrderedDictionary.encode(to:)(a1, v7, v8);

  return result;
}