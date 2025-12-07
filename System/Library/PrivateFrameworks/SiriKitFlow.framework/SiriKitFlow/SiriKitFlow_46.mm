void *sub_1DCFB2BDC(_OWORD *a1, unsigned __int8 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  if (((v7 + 8) & ~v7) + *(v6 + 64) <= 0x38)
  {
    v8 = 56;
  }

  else
  {
    v8 = ((v7 + 8) & ~v7) + *(v6 + 64);
  }

  v9 = a2[v8];
  if (v8 <= 3)
  {
    v10 = 250 - (1u >> (8 * v8));
  }

  else
  {
    v10 = 250;
  }

  if (v10 <= (v9 ^ 0xFF))
  {
    if (v9 >= 5)
    {
      if (v8 <= 3)
      {
        v12 = v8;
      }

      else
      {
        v12 = 4;
      }

      switch(v12)
      {
        case 1:
          v13 = *a2;
          goto LABEL_20;
        case 2:
          v13 = *a2;
          goto LABEL_20;
        case 3:
          v13 = *a2 | (a2[2] << 16);
          goto LABEL_20;
        case 4:
          v13 = *a2;
LABEL_20:
          v9 = (v13 | ((v9 - 5) << (8 * v8))) + 5;
          if (v8 >= 4)
          {
            v9 = v13 + 5;
          }

          break;
        default:
          break;
      }
    }

    v14 = ~v7;
    switch(v9)
    {
      case 0u:
        v15 = *(a2 + 1);
        *a1 = *a2;
        a1[1] = v15;
        a1[2] = *(a2 + 2);
        *(a1 + 6) = *(a2 + 6);
        *(a1 + v8) = 0;
        goto LABEL_36;
      case 1u:
        *a1 = *a2;
        (*(v6 + 32))((a1 + v7 + 8) & v14, &a2[v7 + 8] & v14, AssociatedTypeWitness);
        v16 = 1;
        goto LABEL_35;
      case 2u:
        *a1 = *a2;
        (*(v6 + 32))((a1 + v7 + 8) & v14, &a2[v7 + 8] & v14, AssociatedTypeWitness);
        v16 = 2;
        goto LABEL_35;
      case 3u:
        v17 = a2[40];
        if (v17 >= 2)
        {
          v17 = *a2 + 2;
        }

        if (v17 == 1)
        {
          *a1 = *a2;
          *(a1 + 8) = a2[8];
          *(a1 + 40) = 1;
        }

        else
        {
          v18 = *(a2 + 1);
          *a1 = *a2;
          a1[1] = v18;
          if (v17)
          {
            *(a1 + 25) = *(a2 + 25);
          }

          else
          {
            *(a1 + 4) = *(a2 + 4);
            *(a1 + 40) = 0;
          }
        }

        v16 = 3;
        goto LABEL_35;
      case 4u:
        *a1 = *a2;
        *(a1 + 8) = a2[8];
        v16 = 4;
LABEL_35:
        *(a1 + v8) = v16;
LABEL_36:
        result = a1;
        break;
      default:
        goto LABEL_8;
    }
  }

  else
  {
LABEL_8:

    return memcpy(a1, a2, v8 + 1);
  }

  return result;
}

unsigned __int8 *sub_1DCFB2E9C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = ~v7;
  if (((v7 + 8) & ~v7) + *(v6 + 64) <= 0x38)
  {
    v9 = 56;
  }

  else
  {
    v9 = ((v7 + 8) & ~v7) + *(*(AssociatedTypeWitness - 8) + 64);
  }

  v10 = 8 * v9;
  v11 = 250 - (1u >> (8 * v9));
  v12 = a1[v9];
  if (v9 > 3)
  {
    v11 = 250;
  }

  v13 = a2[v9];
  v14 = v13 ^ 0xFF;
  if (v11 > (v12 ^ 0xFF))
  {
    if (v11 <= v14)
    {
      if (v13 >= 5)
      {
        if (v9 <= 3)
        {
          v15 = v9;
        }

        else
        {
          v15 = 4;
        }

        switch(v15)
        {
          case 1:
            v16 = *a2;
            goto LABEL_33;
          case 2:
            v16 = *a2;
            goto LABEL_33;
          case 3:
            v16 = *a2 | (a2[2] << 16);
            goto LABEL_33;
          case 4:
            v16 = *a2;
LABEL_33:
            v13 = (v16 | ((v13 - 5) << v10)) + 5;
            v22 = v16 + 5;
            if (v9 >= 4)
            {
              v13 = v22;
            }

            break;
          default:
            break;
        }
      }

      switch(v13)
      {
        case 0u:
          goto LABEL_82;
        case 1u:
          goto LABEL_93;
        case 2u:
          goto LABEL_87;
        case 3u:
          goto LABEL_88;
        case 4u:
          goto LABEL_86;
        default:
          break;
      }
    }

LABEL_83:

    return memcpy(a1, a2, v9 + 1);
  }

  if (v11 > v14)
  {
    if (v12 >= 5)
    {
      if (v9 <= 3)
      {
        v17 = v9;
      }

      else
      {
        v17 = 4;
      }

      switch(v17)
      {
        case 1:
          v18 = *a1;
          goto LABEL_37;
        case 2:
          v18 = *a1;
          goto LABEL_37;
        case 3:
          v18 = *a1 | (a1[2] << 16);
          goto LABEL_37;
        case 4:
          v18 = *a1;
LABEL_37:
          v12 = (v18 | ((v12 - 5) << v10)) + 5;
          v23 = v18 + 5;
          if (v9 >= 4)
          {
            v12 = v23;
          }

          break;
        default:
          break;
      }
    }

    switch(v12)
    {
      case 0u:

        v25 = *(a1 + 6);
        goto LABEL_50;
      case 1u:
      case 2u:

        (*(v6 + 8))(&a1[v7 + 8] & v8, AssociatedTypeWitness);
        goto LABEL_83;
      case 3u:
        v24 = a1[40];
        if (v24 >= 2)
        {
          v24 = *a1 + 2;
        }

        if (v24 == 1)
        {
          goto LABEL_48;
        }

        if (!v24)
        {
          if (*(a1 + 3))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(a1);
          }

          v25 = *(a1 + 4);
LABEL_50:
        }

        break;
      case 4u:
LABEL_48:

        break;
      default:
        goto LABEL_83;
    }

    goto LABEL_83;
  }

  if (a1 != a2)
  {
    v19 = v12 - 5;
    if (v12 >= 5)
    {
      if (v9 <= 3)
      {
        v20 = v9;
      }

      else
      {
        v20 = 4;
      }

      switch(v20)
      {
        case 1:
          v21 = *a1;
          goto LABEL_54;
        case 2:
          v21 = *a1;
          goto LABEL_54;
        case 3:
          v21 = *a1 | (a1[2] << 16);
          goto LABEL_54;
        case 4:
          v21 = *a1;
LABEL_54:
          if (v9 < 4)
          {
            v21 |= v19 << v10;
          }

          v12 = v21 + 5;
          break;
        default:
          break;
      }
    }

    switch(v12)
    {
      case 0u:

        v27 = *(a1 + 6);
        goto LABEL_68;
      case 1u:
      case 2u:

        (*(v6 + 8))(&a1[v7 + 8] & v8, AssociatedTypeWitness);
        break;
      case 3u:
        v26 = a1[40];
        if (v26 >= 2)
        {
          v26 = *a1 + 2;
        }

        if (v26 == 1)
        {
          goto LABEL_66;
        }

        if (!v26)
        {
          if (*(a1 + 3))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(a1);
          }

          v27 = *(a1 + 4);
LABEL_68:
        }

        break;
      case 4u:
LABEL_66:

        break;
      default:
        break;
    }

    v28 = a2[v9];
    v29 = v28 - 5;
    if (v28 >= 5)
    {
      if (v9 <= 3)
      {
        v30 = v9;
      }

      else
      {
        v30 = 4;
      }

      switch(v30)
      {
        case 1:
          v31 = *a2;
          goto LABEL_78;
        case 2:
          v31 = *a2;
          goto LABEL_78;
        case 3:
          v31 = *a2 | (a2[2] << 16);
          goto LABEL_78;
        case 4:
          v31 = *a2;
LABEL_78:
          if (v9 < 4)
          {
            v28 = (v31 | (v29 << v10)) + 5;
          }

          else
          {
            v28 = v31 + 5;
          }

          break;
        default:
          break;
      }
    }

    switch(v28)
    {
      case 0u:
LABEL_82:
        v32 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v32;
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 6) = *(a2 + 6);
        a1[v9] = 0;
        return a1;
      case 1u:
LABEL_93:
        *a1 = *a2;
        (*(v6 + 32))(&a1[v7 + 8] & v8, &a2[v7 + 8] & v8, AssociatedTypeWitness);
        v34 = 1;
        break;
      case 2u:
LABEL_87:
        *a1 = *a2;
        (*(v6 + 32))(&a1[v7 + 8] & v8, &a2[v7 + 8] & v8, AssociatedTypeWitness);
        v34 = 2;
        break;
      case 3u:
LABEL_88:
        v35 = a2[40];
        if (v35 >= 2)
        {
          v35 = *a2 + 2;
        }

        if (v35 == 1)
        {
          *a1 = *a2;
          a1[8] = a2[8];
          a1[40] = 1;
        }

        else
        {
          v36 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v36;
          if (v35)
          {
            *(a1 + 25) = *(a2 + 25);
          }

          else
          {
            *(a1 + 4) = *(a2 + 4);
            a1[40] = 0;
          }
        }

        v34 = 3;
        break;
      case 4u:
LABEL_86:
        *a1 = *a2;
        a1[8] = a2[8];
        v34 = 4;
        break;
      default:
        goto LABEL_83;
    }

    a1[v9] = v34;
  }

  return a1;
}

uint64_t sub_1DCFB34A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = ((*(v5 + 80) + 8) & ~*(v5 + 80)) + *(v5 + 64);
  v7 = 56;
  if (v6 > 0x38)
  {
    v7 = v6;
  }

  v8 = 250 - (1u >> (8 * v7));
  if (v7 > 3)
  {
    v8 = 250;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 - 1 >= a2)
  {
    goto LABEL_24;
  }

  v9 = v7 + 1;
  v10 = 8 * (v7 + 1);
  if ((v7 + 1) > 3)
  {
    goto LABEL_8;
  }

  v13 = ((~(-1 << v10) + a2 - v8 + 1) >> v10) + 1;
  if (HIWORD(v13))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_16;
    }

LABEL_24:
    v15 = *(a1 + v7);
    if (v8 <= (v15 ^ 0xFFu))
    {
      v16 = 0;
    }

    else
    {
      v16 = 256 - v15;
    }

    if (v16 >= 2)
    {
      return v16 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v13 > 0xFF)
  {
    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if (v13 < 2)
  {
    goto LABEL_24;
  }

LABEL_8:
  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_24;
  }

LABEL_16:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    switch(v9)
    {
      case 2:
        LODWORD(v9) = *a1;
        break;
      case 3:
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v9) = *a1;
        break;
      default:
        LODWORD(v9) = *a1;
        break;
    }
  }

  return (v9 | v14) + v8;
}

void sub_1DCFB3670(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = ((*(v7 + 80) + 8) & ~*(v7 + 80)) + *(v7 + 64);
  v9 = 56;
  if (v8 > 0x38)
  {
    v9 = v8;
  }

  if (v9 <= 3)
  {
    v10 = 250 - (1u >> (8 * v9));
  }

  else
  {
    v10 = 250;
  }

  v11 = v9 + 1;
  v12 = 8 * (v9 + 1);
  if (v10 - 1 >= a3)
  {
    v13 = 0;
  }

  else if (v11 <= 3)
  {
    v16 = ((~(-1 << v12) + a3 - v10 + 1) >> v12) + 1;
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

  if (v10 - 1 >= a2)
  {
    switch(v13)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_49:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          v19 = a2 - v10;
          if (a2 >= v10)
          {
            if (v11 < 4)
            {
              if (v9 != -1)
              {
                v20 = v19 & ~(-1 << v12);
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
                  *a1 = v19;
                }
              }
            }

            else
            {
              bzero(a1, v9 + 1);
              *a1 = v19;
            }
          }

          else
          {
            a1[v9] = ~a2;
          }
        }

        break;
    }
  }

  else
  {
    v14 = a2 - v10;
    if (v11 < 4)
    {
      v15 = (v14 >> v12) + 1;
      if (v9 != -1)
      {
        v18 = v14 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v18;
          a1[2] = BYTE2(v18);
        }

        else if (v11 == 2)
        {
          *a1 = v18;
        }

        else
        {
          *a1 = v14;
        }
      }
    }

    else
    {
      bzero(a1, v9 + 1);
      *a1 = v14;
      v15 = 1;
    }

    switch(v13)
    {
      case 1:
        a1[v11] = v15;
        break;
      case 2:
        *&a1[v11] = v15;
        break;
      case 3:
        goto LABEL_49;
      case 4:
        *&a1[v11] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCFB3924(uint64_t a1, uint64_t a2)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = ((*(v3 + 80) + 8) & ~*(v3 + 80)) + *(v3 + 64);
  if (v4 <= 0x38)
  {
    v4 = 56;
  }

  v5 = *(a1 + v4) | 0xFFFFFF00;
  if (v4 <= 3)
  {
    v6 = (1u >> (8 * v4)) - 251;
  }

  else
  {
    v6 = -251;
  }

  if (v6 < v5)
  {
    return -v5;
  }

  else
  {
    return 0;
  }
}

void sub_1DCFB39EC(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = ((*(v5 + 80) + 8) & ~*(v5 + 80)) + *(v5 + 64);
  if (v6 <= 0x38)
  {
    v6 = 56;
  }

  v7 = 250 - (1u >> (8 * v6));
  if (v6 > 3)
  {
    v7 = 250;
  }

  if (v7 >= a2)
  {
    if (a2)
    {
      a1[v6] = -a2;
    }
  }

  else
  {
    v8 = (v6 + 1);
    v9 = -1 << (8 * (v6 + 1));
    if (v8 <= 3)
    {
      v10 = ~v9;
    }

    else
    {
      v10 = -1;
    }

    if (v8)
    {
      v11 = (~v7 + a2) & v10;
      if (v8 <= 3)
      {
        v12 = v8;
      }

      else
      {
        v12 = 4;
      }

      bzero(a1, v8);
      switch(v12)
      {
        case 2:
          *a1 = v11;
          break;
        case 3:
          *a1 = v11;
          a1[2] = BYTE2(v11);
          break;
        case 4:
          *a1 = v11;
          break;
        default:
          *a1 = v11;
          break;
      }
    }
  }
}

uint64_t SiriKitParameterMetadata.__allocating_init(parameterName:shouldResolve:confirmationStates:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  result = swift_allocObject();
  *(result + 32) = a1;
  *(result + 40) = a2;
  *(result + 24) = a3;
  *(result + 16) = a4;
  return result;
}

uint64_t SiriKitParameterMetadata.debugDescription.getter()
{
  sub_1DD0DEC1C();
  OUTLINED_FUNCTION_0_121();
  MEMORY[0x1E12A6780](*(v0 + 32), *(v0 + 40));
  OUTLINED_FUNCTION_0_121();
  if (*(v0 + 24))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 24))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E12A6780](v1, v2);

  MEMORY[0x1E12A6780](0xD000000000000016, 0x80000001DD128C90);
  v3 = MEMORY[0x1E12A6960](*(v0 + 16), &type metadata for SiriKitConfirmationState);
  MEMORY[0x1E12A6780](v3);

  MEMORY[0x1E12A6780](32032, 0xE200000000000000);
  return 0;
}

uint64_t SiriKitParameterMetadata.parameterName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t static SiriKitParameterMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1DCC0D324(*(a1 + 16), *(a2 + 16)) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return 1;
  }

  return sub_1DD0DF0AC();
}

void static SiriKitPlatformErrorCase.fromParse(_:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_16();
  v8 = (v7 - v6);
  sub_1DCB29E58(a1, v7 - v6);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1DCB29EBC(v8);
LABEL_19:
    v24 = 3;
    goto LABEL_20;
  }

  v10 = *v8;
  v9 = v8[1];
  v25[0] = *v8;
  v25[1] = v9;
  sub_1DCD00AE8();
  sub_1DCD00B3C();
  if ((sub_1DD0DDF3C() & 1) == 0)
  {

    goto LABEL_19;
  }

  if (("" & 0x2000000000000000) != 0)
  {
    v11 = ("" >> 40) & 0xF0000;
  }

  else
  {
    v11 = 1835008;
  }

  if (("" & 0x1000000000000000) != 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = 7;
  }

  v13 = sub_1DCFB4334(v11 | v12, v10, v9);
  v14 = MEMORY[0x1E12A66E0](v13);
  v16 = v15;

  v17 = sub_1DCFB43D8(v14, v16);
  if (v17 == 3)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v18 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v18, qword_1EDE57E00);

    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25[0] = v22;
      *v21 = 136315138;

      v23 = sub_1DCB10E9C(v10, v9, v25);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_1DCAFC000, v19, v20, "Unknown platform error invocation identifier: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1E12A8390](v22, -1, -1);
      MEMORY[0x1E12A8390](v21, -1, -1);
    }

    else
    {
    }

    goto LABEL_19;
  }

  v24 = v17;

LABEL_20:
  *a2 = v24;
}

uint64_t SiriKitPlatformErrorCase.makePluginActionToRenderError()@<X0>(void *a1@<X8>)
{
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_16();
  v7 = (v6 - v5);
  v8 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  v14 = "supportedForPersonalRequests";
  v15 = 0xD00000000000002ALL;
  if (*v1 != 1)
  {
    v15 = 0xD000000000000011;
    v14 = "eTooOldForPersonalRequests";
  }

  if (*v1)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0xD00000000000002CLL;
  }

  if (*v1)
  {
    v17 = v14;
  }

  else
  {
    v17 = "com.apple.mobilecal";
  }

  MEMORY[0x1E12A6780](v16, v17 | 0x8000000000000000);

  *v7 = 0xD00000000000001CLL;
  v7[1] = 0x80000001DD128D00;
  v7[2] = 0;
  swift_storeEnumTagMultiPayload();
  v18 = v13 + v8[7];
  *(v18 + 32) = 0;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  sub_1DCB29E58(v7, v13 + v8[5]);
  *(v13 + v8[6]) = MEMORY[0x1E69E7CC0];
  sub_1DD0DB03C();
  sub_1DCB29EBC(v7);
  *(v13 + v8[8]) = 0;
  return PluginAction.init(flowHandlerId:input:)(0xD000000000000020, 0x80000001DD110140, v13, a1);
}

unint64_t SiriKitPlatformErrorCase.invocationId.getter()
{
  v1 = "supportedForPersonalRequests";
  v2 = 0xD00000000000002ALL;
  if (*v0 != 1)
  {
    v2 = 0xD000000000000011;
    v1 = "eTooOldForPersonalRequests";
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xD00000000000002CLL;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = "com.apple.mobilecal";
  }

  MEMORY[0x1E12A6780](v3, v4 | 0x8000000000000000);

  return 0xD00000000000001CLL;
}

unint64_t sub_1DCFB4334(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_1DD0DE1EC();

    return v4;
  }

  return result;
}

unint64_t sub_1DCFB43D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD0DEE9C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t SiriKitPlatformErrorCase.identifier.getter()
{
  v1 = 0xD000000000000011;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000002ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002CLL;
  }
}

uint64_t SiriKitPlatformErrorCase.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

unint64_t sub_1DCFB4514()
{
  result = qword_1ECCAB750;
  if (!qword_1ECCAB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB750);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriKitPlatformErrorCase(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t SiriKitReliabilityCodes.flowStatusReason.getter()
{
  v1 = *v0;
  if (v1 > 0x7C)
  {
    return 31;
  }

  else
  {
    return dword_1DD107230[v1];
  }
}

SiriKitFlow::SiriKitReliabilityCodes_optional __swiftcall SiriKitReliabilityCodes.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD0DF0FC();

  v5 = 0;
  v6 = 107;
  switch(v3)
  {
    case 0:
      goto LABEL_126;
    case 1:
      v5 = 1;
      goto LABEL_126;
    case 2:
      v5 = 2;
      goto LABEL_126;
    case 3:
      v5 = 3;
      goto LABEL_126;
    case 4:
      v5 = 4;
      goto LABEL_126;
    case 5:
      v5 = 5;
      goto LABEL_126;
    case 6:
      v5 = 6;
      goto LABEL_126;
    case 7:
      v5 = 7;
      goto LABEL_126;
    case 8:
      v5 = 8;
      goto LABEL_126;
    case 9:
      v5 = 9;
      goto LABEL_126;
    case 10:
      v5 = 10;
      goto LABEL_126;
    case 11:
      v5 = 11;
      goto LABEL_126;
    case 12:
      v5 = 12;
      goto LABEL_126;
    case 13:
      v5 = 13;
      goto LABEL_126;
    case 14:
      v5 = 14;
      goto LABEL_126;
    case 15:
      v5 = 15;
      goto LABEL_126;
    case 16:
      v5 = 16;
      goto LABEL_126;
    case 17:
      v5 = 17;
      goto LABEL_126;
    case 18:
      v5 = 18;
      goto LABEL_126;
    case 19:
      v5 = 19;
      goto LABEL_126;
    case 20:
      v5 = 20;
      goto LABEL_126;
    case 21:
      v5 = 21;
      goto LABEL_126;
    case 22:
      v5 = 22;
      goto LABEL_126;
    case 23:
      v5 = 23;
      goto LABEL_126;
    case 24:
      v5 = 24;
      goto LABEL_126;
    case 25:
      v5 = 25;
      goto LABEL_126;
    case 26:
      v5 = 26;
      goto LABEL_126;
    case 27:
      v5 = 27;
      goto LABEL_126;
    case 28:
      v5 = 28;
      goto LABEL_126;
    case 29:
      v5 = 29;
      goto LABEL_126;
    case 30:
      v5 = 30;
      goto LABEL_126;
    case 31:
      v5 = 31;
      goto LABEL_126;
    case 32:
      v5 = 32;
      goto LABEL_126;
    case 33:
      v5 = 33;
      goto LABEL_126;
    case 34:
      v5 = 34;
      goto LABEL_126;
    case 35:
      v5 = 35;
      goto LABEL_126;
    case 36:
      v5 = 36;
      goto LABEL_126;
    case 37:
      v5 = 37;
      goto LABEL_126;
    case 38:
      v5 = 38;
      goto LABEL_126;
    case 39:
      v5 = 39;
      goto LABEL_126;
    case 40:
      v5 = 40;
      goto LABEL_126;
    case 41:
      v5 = 41;
      goto LABEL_126;
    case 42:
      v5 = 42;
      goto LABEL_126;
    case 43:
      v5 = 43;
      goto LABEL_126;
    case 44:
      v5 = 44;
      goto LABEL_126;
    case 45:
      v5 = 45;
      goto LABEL_126;
    case 46:
      v5 = 46;
      goto LABEL_126;
    case 47:
      v5 = 47;
      goto LABEL_126;
    case 48:
      v5 = 48;
      goto LABEL_126;
    case 49:
      v5 = 49;
      goto LABEL_126;
    case 50:
      v5 = 50;
      goto LABEL_126;
    case 51:
      v5 = 51;
      goto LABEL_126;
    case 52:
      v5 = 52;
      goto LABEL_126;
    case 53:
      v5 = 53;
      goto LABEL_126;
    case 54:
      v5 = 54;
      goto LABEL_126;
    case 55:
      v5 = 55;
      goto LABEL_126;
    case 56:
      v5 = 56;
      goto LABEL_126;
    case 57:
      v5 = 57;
      goto LABEL_126;
    case 58:
      v5 = 58;
      goto LABEL_126;
    case 59:
      v5 = 59;
      goto LABEL_126;
    case 60:
      v5 = 60;
      goto LABEL_126;
    case 61:
      v5 = 61;
      goto LABEL_126;
    case 62:
      v5 = 62;
      goto LABEL_126;
    case 63:
      v5 = 63;
      goto LABEL_126;
    case 64:
      v5 = 64;
      goto LABEL_126;
    case 65:
      v5 = 65;
      goto LABEL_126;
    case 66:
      v5 = 66;
      goto LABEL_126;
    case 67:
      v5 = 67;
      goto LABEL_126;
    case 68:
      v5 = 68;
      goto LABEL_126;
    case 69:
      v5 = 69;
      goto LABEL_126;
    case 70:
      v5 = 70;
      goto LABEL_126;
    case 71:
      v5 = 71;
      goto LABEL_126;
    case 72:
      v5 = 72;
      goto LABEL_126;
    case 73:
      v5 = 73;
      goto LABEL_126;
    case 74:
      v5 = 74;
      goto LABEL_126;
    case 75:
      v5 = 75;
      goto LABEL_126;
    case 76:
      v5 = 76;
      goto LABEL_126;
    case 77:
      v5 = 77;
      goto LABEL_126;
    case 78:
      v5 = 78;
      goto LABEL_126;
    case 79:
      v5 = 79;
      goto LABEL_126;
    case 80:
      v5 = 80;
      goto LABEL_126;
    case 81:
      v5 = 81;
      goto LABEL_126;
    case 82:
      v5 = 82;
      goto LABEL_126;
    case 83:
      v5 = 83;
      goto LABEL_126;
    case 84:
      v5 = 84;
      goto LABEL_126;
    case 85:
      v5 = 85;
      goto LABEL_126;
    case 86:
      v5 = 86;
      goto LABEL_126;
    case 87:
      v5 = 87;
      goto LABEL_126;
    case 88:
      v5 = 88;
      goto LABEL_126;
    case 89:
      v5 = 89;
      goto LABEL_126;
    case 90:
      v5 = 90;
      goto LABEL_126;
    case 91:
      v5 = 91;
      goto LABEL_126;
    case 92:
      v5 = 92;
      goto LABEL_126;
    case 93:
      v5 = 93;
      goto LABEL_126;
    case 94:
      v5 = 94;
      goto LABEL_126;
    case 95:
      v5 = 95;
      goto LABEL_126;
    case 96:
      v5 = 96;
      goto LABEL_126;
    case 97:
      v5 = 97;
      goto LABEL_126;
    case 98:
      v5 = 98;
      goto LABEL_126;
    case 99:
      v5 = 99;
      goto LABEL_126;
    case 100:
      v5 = 100;
      goto LABEL_126;
    case 101:
      v5 = 101;
      goto LABEL_126;
    case 102:
      v5 = 102;
      goto LABEL_126;
    case 103:
      v5 = 103;
      goto LABEL_126;
    case 104:
      v5 = 104;
      goto LABEL_126;
    case 105:
      v5 = 105;
      goto LABEL_126;
    case 106:
      v5 = 106;
LABEL_126:
      v6 = v5;
      break;
    case 107:
      break;
    case 108:
      v6 = 108;
      break;
    case 109:
      v6 = 109;
      break;
    case 110:
      v6 = 110;
      break;
    case 111:
      v6 = 111;
      break;
    case 112:
      v6 = 112;
      break;
    case 113:
      v6 = 113;
      break;
    case 114:
      v6 = 114;
      break;
    case 115:
      v6 = 115;
      break;
    case 116:
      v6 = 116;
      break;
    case 117:
      v6 = 117;
      break;
    case 118:
      v6 = 118;
      break;
    case 119:
      v6 = 119;
      break;
    case 120:
      v6 = 120;
      break;
    case 121:
      v6 = 121;
      break;
    case 122:
      v6 = 122;
      break;
    case 123:
      v6 = 123;
      break;
    case 124:
      v6 = 124;
      break;
    default:
      v6 = 125;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1DCFB4AD8()
{
  result = qword_1ECCAB758[0];
  if (!qword_1ECCAB758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCAB758);
  }

  return result;
}

uint64_t sub_1DCFB4B50@<X0>(uint64_t *a1@<X8>)
{
  result = SiriKitReliabilityCodes.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1DCFB4B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_50();
  v39[0] = v21;
  v41 = v22;
  v42 = v23;
  v40 = v24;
  v39[1] = OUTLINED_FUNCTION_21_49(v25, v26, v27, v28);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v39 - v31;
  v33 = sub_1DCFB5A20();
  type metadata accessor for Input(255);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v35 = *(TupleTypeMetadata3 + 48);
  v36 = *(TupleTypeMetadata3 + 64);
  sub_1DCC333DC(v40, v32);
  v37 = v42;
  *&v32[v35] = v41;
  *&v32[v36] = v37;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_22_42(v33 + *(v38 + 136));
  sub_1DD0DCF8C();
}

void sub_1DCFB4D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_50();
  v34 = v22;
  v35 = v23;
  v33 = v24;
  type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(0, *(v21 + 80), *(v21 + 88), v25);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v33 - v28;
  v30 = sub_1DCFB5A20();
  sub_1DCAFF9E8(v33, v29);
  v31 = v35;
  *(v29 + 5) = v34;
  *(v29 + 6) = v31;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_22_42(v30 + *(v32 + 136));
  sub_1DD0DCF8C();
}

void AppResolutionFlowStrategy.makeAppResolutionUnsuccessfulResponse(intent:reason:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v28);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &a9 - v31;
  v33 = sub_1DD0DD2DC();
  OUTLINED_FUNCTION_9();
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38, v39);
  (*(v35 + 16))(&a9 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v33);
  v40 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v41 = swift_allocObject();
  (*(v35 + 32))(v41 + v40, &a9 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), v33);
  v42 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v32, v43, v44, v42);
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = &unk_1DD107440;
  v45[5] = v41;
  v45[6] = v25;
  v45[7] = v23;
  sub_1DD0DCF8C();
}

void sub_1DCFB5148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v11);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v20 - v14;
  v16 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v15, v17, v18, v16);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a8;
  v19[5] = 0;
  v19[6] = a3;
  v19[7] = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFB5248()
{
  v1 = *(v0 + 56);
  v2 = type metadata accessor for AceOutput(0);
  v1[3] = v2;
  v1[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v1);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v4 = v2[7];
  v5 = type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_7_5(boxed_opaque_existential_1Tm + v4, v6, v7, v5);
  v8 = v2[9];
  v9 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_7_5(boxed_opaque_existential_1Tm + v8, v10, v11, v9);
  v12 = v2[8];
  v13 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_2();
  (*(v14 + 104))(boxed_opaque_existential_1Tm + v12, v13);
  boxed_opaque_existential_1Tm[15] = 0;
  *(boxed_opaque_existential_1Tm + 13) = 0u;
  *(boxed_opaque_existential_1Tm + 11) = 0u;
  sub_1DCB6C5E8(v0 + 16, (boxed_opaque_existential_1Tm + 11));
  *(boxed_opaque_existential_1Tm + v2[10]) = 0;
  *boxed_opaque_existential_1Tm = MEMORY[0x1E69E7CC0];
  *(boxed_opaque_existential_1Tm + 1) = 0u;
  *(boxed_opaque_existential_1Tm + 3) = 0u;
  *(boxed_opaque_existential_1Tm + 5) = 0u;
  *(boxed_opaque_existential_1Tm + 7) = 0u;
  boxed_opaque_existential_1Tm[9] = 0;
  *(boxed_opaque_existential_1Tm + 80) = 3;
  OUTLINED_FUNCTION_29();

  return v15();
}

uint64_t sub_1DCFB53B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCEA7F3C();
}

uint64_t sub_1DCFB5450()
{
  OUTLINED_FUNCTION_70();
  v0 = sub_1DD0DD2DC();
  OUTLINED_FUNCTION_20_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v2[1] = sub_1DCB4AD3C;

  return sub_1DCFB53B0();
}

uint64_t sub_1DCFB55BC(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  v4 = v2;
  if (v5 <= 0x3F)
  {
    v4 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(319, v2, *(a1 + 88), v3);
    if (v6 <= 0x3F)
    {
      inited = swift_initClassMetadata2();
      if (inited)
      {
        return inited;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

void sub_1DCFB56BC()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v25 = v2;
  v3 = *v0;
  v4 = *(v3 + 80);
  v9 = OUTLINED_FUNCTION_21_49(v5, v6, v7, v8);
  OUTLINED_FUNCTION_9();
  v11 = v10;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v24 - v16;
  v18 = *(v3 + 136);
  swift_beginAccess();
  v24[4] = v11;
  (*(v11 + 16))(v17, &v1[v18], v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 8)
  {
    v20 = xmmword_1DD102E90;
LABEL_7:
    *v25 = v20;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload != 5)
    {
      v24[3] = v4;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v23 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v23, qword_1EDE57E00);
      sub_1DD0DCF8C();
    }

    v20 = *v17;
    goto LABEL_7;
  }

  v21 = v17[8];
  v22 = v25;
  *v25 = *v17 | 0x8000000000000000;
  *(v22 + 1) = v21;
LABEL_11:
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCFB5A20()
{
  OUTLINED_FUNCTION_65();
  v0 = swift_allocObject();
  sub_1DCFB5A90();
  return v0;
}

uint64_t *sub_1DCFB5A90()
{
  OUTLINED_FUNCTION_65();
  v6 = *v1;
  v7 = *(*v1 + 80);
  (*(*(v7 - 8) + 32))(v1 + *(*v1 + 96), v8, v7);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v5, v1 + *(v9 + 104));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v4, v1 + *(v10 + 112));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v3, v1 + *(v11 + 120));
  OUTLINED_FUNCTION_66();
  type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(0, v7, *(v6 + 88), v12);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66();
  v14 = (v1 + *(v13 + 128));
  *v14 = v2;
  v14[1] = v0;
  return v1;
}

void sub_1DCFB5BF4()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v5 = *(*v0 + 80);
  v6 = *(*v0 + 88);
  v10 = OUTLINED_FUNCTION_21_49(v2, v7, v8, v9);
  OUTLINED_FUNCTION_9();
  v12 = v11;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = (&v48 - v19);
  v21 = *(v4 + 136);
  swift_beginAccess();
  (*(v12 + 16))(v20, v1 + v21, v10);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v22 = *v20;
    (*(v6 + 32))(&v51, v3, v5, v6);
    if (v51)
    {
      if (v51 == 1)
      {
        v50 = v22;
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
        }

        v49 = v3;
        v23 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v23, qword_1EDE57E00);
        v24 = sub_1DD0DD8EC();
        v25 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = OUTLINED_FUNCTION_50_0();
          *v26 = 0;
          _os_log_impl(&dword_1DCAFC000, v24, v25, "AppResolutionFlow strategy indicated it wants to handle the input. Moving to execute.", v26, 2u);
          OUTLINED_FUNCTION_80();
        }

        type metadata accessor for Input(255);
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v28 = *(TupleTypeMetadata3 + 48);
        v29 = *(TupleTypeMetadata3 + 64);
        sub_1DCFBFF98(v49, v17, type metadata accessor for Input);
        *&v17[v28] = v50;
        *&v17[v29] = 0;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_28_34();
        v30 = OUTLINED_FUNCTION_27_37();
        v31(v30);
        swift_endAccess();
      }

      else
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
        }

        v43 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v43, qword_1EDE57E00);
        v44 = sub_1DD0DD8EC();
        v45 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v44, v45))
        {
          *OUTLINED_FUNCTION_50_0() = 0;
          OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v46, v47, "AppResolutionFlow strategy indicated it wants to ignore the input. Ignoring...");
          OUTLINED_FUNCTION_80();
        }
      }
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v37 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v37, qword_1EDE57E00);
      v38 = sub_1DD0DD8EC();
      v39 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = OUTLINED_FUNCTION_50_0();
        *v40 = 0;
        _os_log_impl(&dword_1DCAFC000, v38, v39, "AppResolutionFlow strategy indicated it wants to cancel. Cancelling.", v40, 2u);
        OUTLINED_FUNCTION_80();
      }

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_28_34();
      v41 = OUTLINED_FUNCTION_27_37();
      v42(v41);
      swift_endAccess();
    }
  }

  else
  {
    (*(v12 + 8))(v20, v10);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v32 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v32, qword_1EDE57E00);
    v33 = sub_1DD0DD8EC();
    v34 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v33, v34))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v35, v36, "AppResolutionFlow received input but is not waiting for any. Ignoring...");
      OUTLINED_FUNCTION_80();
    }
  }

  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCFB613C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCFB615C, 0, 0);
}

uint64_t sub_1DCFB6244()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCFB6380(uint64_t a1)
{
  v2 = v1;
  v81 = a1;
  v3 = *v1;
  v77 = type metadata accessor for ExecuteResponse(0);
  MEMORY[0x1EEE9AC00](v77, v4);
  v78 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  v76 = *(v82 - 8);
  v6 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v82, v7);
  v79 = &v70 - v8;
  v9 = type metadata accessor for Input(0);
  v71 = *(v9 - 8);
  v10 = *(v71 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v73 = &v70 - v15;
  v16 = v3[11];
  v80 = v3[10];
  v75 = v16;
  v18 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(0, v80, v16, v17);
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v72 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v70 - v24;
  v26 = v3[17];
  swift_beginAccess();
  v74 = v19;
  (*(v19 + 16))(v25, &v2[v26], v18);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v27 = v75;
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v72 = *&v25[*(TupleTypeMetadata3 + 48)];
      v74 = *&v25[*(TupleTypeMetadata3 + 64)];
      v29 = v73;
      sub_1DCC333DC(v25, v73);
      v78 = *(*v2 + 96);
      v77 = *(v9 + 20);
      sub_1DCFBFF98(v29, v13, type metadata accessor for Input);
      v30 = v76;
      (*(v76 + 16))(v79, v81, v82);
      v31 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v32 = (v10 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
      v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
      v34 = (*(v30 + 80) + v33 + 8) & ~*(v30 + 80);
      v35 = (v6 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      *(v36 + 16) = v80;
      *(v36 + 24) = v27;
      sub_1DCC333DC(v13, v36 + v31);
      *(v36 + v32) = v2;
      *(v36 + v33) = v72;
      (*(v30 + 32))(v36 + v34, v79, v82);
      *(v36 + v35) = v74;
      sub_1DD0DCF8C();
    case 2u:
      v49 = *(v25 + 5);
      v48 = *(v25 + 6);
      sub_1DCAFF9E8(v25, v83);
      v50 = v76;
      v51 = v79;
      v52 = v82;
      (*(v76 + 16))(v79, v81, v82);
      v53 = (*(v50 + 80) + 16) & ~*(v50 + 80);
      v54 = swift_allocObject();
      (*(v50 + 32))(v54 + v53, v51, v52);
      v55 = swift_allocObject();
      *(v55 + 16) = sub_1DCFC64C8;
      *(v55 + 24) = v54;
      sub_1DCFB785C(v49, v83, v48, sub_1DCFC64CC, v55);
    case 4u:
      v39 = *v25;
      v38 = *(v25 + 1);
      v40 = v25[56];
      sub_1DCAFF9E8(v25 + 1, v83);
      v41 = v76 + 16;
      v42 = v79;
      v43 = v82;
      (*(v76 + 16))(v79, v81, v82);
      v44 = (*(v41 + 64) + 16) & ~*(v41 + 64);
      v45 = (v41 + 16);
      if (v40 == 1)
      {
        v46 = swift_allocObject();
        (*v45)(v46 + v44, v42, v43);
        v47 = swift_allocObject();
        *(v47 + 16) = sub_1DCFBFCF8;
        *(v47 + 24) = v46;
        sub_1DCFB7D44(v39, v38, v83, sub_1DCFC64CC, v47);
      }

      v68 = swift_allocObject();
      (*v45)(v68 + v44, v42, v43);
      v69 = swift_allocObject();
      *(v69 + 16) = sub_1DCFC64C8;
      *(v69 + 24) = v68;
      sub_1DCFB82E4(v39, v38, v83, sub_1DCFBFCF0, v69);
    case 5u:
      (*(v74 + 8))(v25, v18);
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v56 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v56, qword_1EDE57E00);
      v57 = sub_1DD0DD8EC();
      v58 = sub_1DD0DE6DC();
      if (!os_log_type_enabled(v57, v58))
      {
        goto LABEL_18;
      }

      v59 = swift_slowAlloc();
      *v59 = 0;
      v60 = "AppResolution is complete. Exiting...";
      break;
    case 8u:
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v61 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v61, qword_1EDE57E00);
      v57 = sub_1DD0DD8EC();
      v58 = sub_1DD0DE6DC();
      if (!os_log_type_enabled(v57, v58))
      {
        goto LABEL_18;
      }

      v59 = swift_slowAlloc();
      *v59 = 0;
      v60 = "AppResolution is cancelled. Exiting...";
      break;
    default:
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v37 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v37, qword_1EDE57E00);
      sub_1DD0DCF8C();
  }

  _os_log_impl(&dword_1DCAFC000, v57, v58, v60, v59, 2u);
  MEMORY[0x1E12A8390](v59, -1, -1);
LABEL_18:

  v62 = v77;
  v63 = *(v77 + 36);
  v64 = type metadata accessor for PluginAction(0);
  v65 = v78;
  __swift_storeEnumTagSinglePayload(&v78[v63], 1, 1, v64);
  *v65 = 1;
  *(v65 + 1) = 0;
  v65[16] = 0;
  *(v65 + 4) = 0;
  *(v65 + 5) = 0;
  *(v65 + 3) = 0;
  v65[48] = -4;
  v66 = &v65[*(v62 + 40)];
  *v66 = 0u;
  *(v66 + 1) = 0u;
  return sub_1DD0DE46C();
}

uint64_t sub_1DCFB6FA0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GuardFlow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26A8, &unk_1DD0E62D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DCC7E584;
  *(v6 + 24) = v5;
  *(inited + 32) = sub_1DCFC0260;
  *(inited + 40) = v6;

  return GuardFlow.__allocating_init(withGuards:)(inited);
}

void sub_1DCFB7080(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, char *a6)
{
  v54 = a6;
  v55 = a4;
  v53 = a2;
  v9 = *a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v49 - v14;
  v17 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.AppResolutionError(0, *(v9 + 80), *(v9 + 88), v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v49 - v20;
  sub_1DCB09910(a1, v57, qword_1ECCA9360, &qword_1DD107640);
  if (v58 == 1)
  {
    v50 = a5;
    v51 = v12;
    v54 = v15;
    v22 = *&v57[0];
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v52 = v18;
    v23 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v23, qword_1EDE57E00);
    v24 = v22;
    v25 = sub_1DD0DD8EC();
    v26 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v49[0] = a3;
      v28 = v27;
      v56[0] = swift_slowAlloc();
      v49[1] = v22;
      v29 = v56[0];
      *v28 = 136315138;
      swift_getErrorValue();
      v30 = sub_1DD0DF18C();
      v32 = v10;
      v33 = sub_1DCB10E9C(v30, v31, v56);

      *(v28 + 4) = v33;
      v10 = v32;
      _os_log_impl(&dword_1DCAFC000, v25, v26, "Unable to extract app resolution state from parse: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1E12A8390](v29, -1, -1);
      MEMORY[0x1E12A8390](v28, -1, -1);
    }

    v34 = v54;
    v35 = v50;
    v36 = type metadata accessor for Input(0);
    sub_1DCFBFF98(v53 + *(v36 + 20), v21, type metadata accessor for Parse);
    swift_storeEnumTagMultiPayload();
    swift_getWitnessTable();
    v37 = swift_allocError();
    (*(v52 + 16))(v38, v21, v17);
    (*(v11 + 16))(v34, v35, v10);
    v39 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v40 = swift_allocObject();
    v41 = v10;
    v42 = v40;
    (*(v11 + 32))(v40 + v39, v34, v41);
    v43 = swift_allocObject();
    *(v43 + 16) = sub_1DCFC64C8;
    *(v43 + 24) = v42;
    sub_1DCFB7690(v55, v37, sub_1DCFC64CC, v43);
  }

  sub_1DCAFF9E8(v57, v56);
  (*(v11 + 16))(v15, a5, v10);
  v44 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v45 = swift_allocObject();
  v46 = v10;
  v47 = v45;
  (*(v11 + 32))(v45 + v44, v15, v46);
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1DCFC64C8;
  *(v48 + 24) = v47;
  sub_1DCFB785C(v55, v56, v54, sub_1DCFC64CC, v48);
}

uint64_t sub_1DCFB75EC(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = type metadata accessor for ExecuteResponse(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DCFBFF98(a1, v7, type metadata accessor for ExecuteResponse);
  return a2(v7);
}

void sub_1DCFB7690(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFB77A4()
{
  v1 = OUTLINED_FUNCTION_70();
  v2 = type metadata accessor for ExecuteResponse(v1);
  v3 = OUTLINED_FUNCTION_20_0(v2);
  MEMORY[0x1EEE9AC00](v3, v4);
  sub_1DCFBFF98(v0, &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExecuteResponse);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  sub_1DD0DE46C();
  OUTLINED_FUNCTION_7_74();
  return sub_1DCFBFF48();
}

void sub_1DCFB785C(void *a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v28 = a1;
  v11 = *v5;
  v12 = *(v11 + 88);
  v13 = *(v11 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v30 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v15);
  v27 = type metadata accessor for ExecuteResponse(0);
  MEMORY[0x1EEE9AC00](v27, v16);
  v18 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(0, v13, v12, v17);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v23 = v26 - v22;
  if (a3)
  {
    v26[0] = v23;
    v26[1] = v21;
    v26[2] = v20;
    v26[3] = a4;
    v26[4] = a5;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1DD0DCF8C();
  }

  (*(v12 + 48))(v13, v12);
  sub_1DCB17CA0(a2, v31);
  v24 = swift_allocObject();
  v25 = v28;
  v24[2] = v6;
  v24[3] = v25;
  v24[4] = a4;
  v24[5] = a5;
  sub_1DCAFF9E8(v31, (v24 + 6));
  swift_getAssociatedConformanceWitness();
  sub_1DD0DCF8C();
}

void sub_1DCFB7D44(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v13 = a5;
  v11[4] = a3;
  v11[5] = a2;
  v6 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(0, *(*v5 + 80), *(*v5 + 88), a4);
  v11[2] = *(v6 - 8);
  v11[3] = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v11[1] = v11 - v8;
  v12 = type metadata accessor for ExecuteResponse(0);
  MEMORY[0x1EEE9AC00](v12, v9);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v10 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v10, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCFB82E4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *), uint64_t a5)
{
  v6 = v5;
  v38 = a4;
  v39 = a5;
  v34 = a2;
  v9 = *v5;
  v32[0] = type metadata accessor for SiriKitEventPayload(0);
  v11 = MEMORY[0x1EEE9AC00](v32[0], v10);
  v32[1] = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v32[2] = v32 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v37 = v32 - v17;
  v36 = type metadata accessor for ExecuteResponse(0);
  MEMORY[0x1EEE9AC00](v36, v18);
  v19 = *(v9 + 88);
  v33 = *(v9 + 80);
  v21 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(0, v33, v19, v20);
  v35 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (v32 - v23);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v25 = sub_1DD0DD29C();
  if (!v25 || (*&v40 = v25, v41 = a1, sub_1DD0DD1FC(), sub_1DCB252F0(qword_1ECCA2290, MEMORY[0x1E69CE208], MEMORY[0x1E69CE210]), v26 = sub_1DD0DDF7C(), , (v26 & 1) == 0))
  {
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v27 = sub_1DD0DD2AC();
    if (!v27 || (*&v40 = v27, v41 = a1, sub_1DD0DD1FC(), sub_1DCB252F0(qword_1ECCA2290, MEMORY[0x1E69CE208], MEMORY[0x1E69CE210]), v28 = sub_1DD0DDF7C(), , (v28 & 1) == 0))
    {
      v29 = swift_allocObject();
      v30 = v38;
      v31 = v39;
      v29[2] = v6;
      v29[3] = v30;
      v29[4] = v31;
      v29[5] = a1;
      sub_1DD0DCF8C();
    }
  }

  *v24 = a1;
  v24[1] = 0;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1DD0DCF8C();
}

void sub_1DCFB89A4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(_BYTE *), uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v30 = a4;
  v31 = a5;
  v8 = sub_1DD0DD2FC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAB868, &qword_1DD107648);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v29 - v15);
  sub_1DCB09910(a1, &v29 - v15, qword_1ECCAB868, &qword_1DD107648);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = a3;
    v17 = v30;
    v18 = v31;
    v19 = *v16;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v20 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v20, qword_1EDE57E00);
    v21 = v19;
    v22 = sub_1DD0DD8EC();
    v23 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136315138;
      swift_getErrorValue();
      v26 = sub_1DD0DF18C();
      v28 = sub_1DCB10E9C(v26, v27, &v32);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1DCAFC000, v22, v23, "ExecuteAppResolution error: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1E12A8390](v25, -1, -1);
      MEMORY[0x1E12A8390](v24, -1, -1);
    }

    sub_1DCFB7690(v29, v19, v17, v18);
  }

  (*(v9 + 32))(v12, v16, v8);
  sub_1DCFB8CA8(a3, v29, v12, v30, v31);
}

void sub_1DCFB8CA8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *), uint64_t a5)
{
  v62 = a2;
  v66 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v58 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v54 = &v52 - v13;
  v14 = sub_1DD0DD2DC();
  v60 = *(v14 - 8);
  v61 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v59 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DD0DD2FC();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v64 = (&v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v52 - v23;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v57 = sub_1DD0DD8FC();
  v25 = __swift_project_value_buffer(v57, qword_1EDE57E00);
  v26 = *(v18 + 16);
  v65 = a3;
  v63 = v26;
  v26(v24, a3, v17);
  v53 = v25;
  v27 = sub_1DD0DD8EC();
  v28 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v56 = a5;
    v30 = v29;
    v52 = swift_slowAlloc();
    v67 = v52;
    *v30 = 136315138;
    sub_1DCB252F0(&qword_1EDE46328, MEMORY[0x1E69CE260], MEMORY[0x1E69CE268]);
    v31 = sub_1DD0DF03C();
    v55 = a4;
    v33 = v32;
    (*(v18 + 8))(v24, v17);
    v34 = sub_1DCB10E9C(v31, v33, &v67);
    a4 = v55;

    *(v30 + 4) = v34;
    _os_log_impl(&dword_1DCAFC000, v27, v28, "AppResolutionFlow routeAppResolutionResult %s", v30, 0xCu);
    v35 = v52;
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x1E12A8390](v35, -1, -1);
    v36 = v30;
    a5 = v56;
    MEMORY[0x1E12A8390](v36, -1, -1);
  }

  else
  {

    (*(v18 + 8))(v24, v17);
  }

  v37 = v64;
  v63(v64, v65, v17);
  v38 = (*(v18 + 88))(v37, v17);
  if (v38 == *MEMORY[0x1E69CE248])
  {
    (*(v18 + 96))(v37, v17);
    sub_1DCFB97C0(*v37, v66, a4, a5);
  }

  if (v38 == *MEMORY[0x1E69CE250])
  {
    (*(v18 + 96))(v37, v17);
    sub_1DCFB9A18(*v37, v66, a4, a5);
  }

  if (v38 == *MEMORY[0x1E69CE258])
  {
    (*(v18 + 96))(v37, v17);
    sub_1DCFB9DDC(*v37, v66, v62, a4, a5);
  }

  if (v38 == *MEMORY[0x1E69CE240])
  {
    (*(v18 + 96))(v37, v17);
    v39 = v59;
    (*(v60 + 32))(v59, v37, v61);
    sub_1DCFB9480(v66, v39, a4, a5);
  }

  v40 = v57;
  v41 = *(v57 - 8);
  v42 = v54;
  (*(v41 + 16))(v54, v53, v57);
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v40);
  v43 = v42;
  v44 = v58;
  sub_1DCB09910(v43, v58, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (__swift_getEnumTagSinglePayload(v44, 1, v40) == 1)
  {
    sub_1DCB16DB0(v58, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v45 = sub_1DD0DD8EC();
    v46 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v67 = v48;
      *v47 = 136315650;
      v49 = sub_1DD0DEC3C();
      v51 = sub_1DCB10E9C(v49, v50, &v67);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2048;
      *(v47 + 14) = 283;
      *(v47 + 22) = 2080;
      *(v47 + 24) = sub_1DCB10E9C(0xD000000000000020, 0x80000001DD114970, &v67);
      _os_log_impl(&dword_1DCAFC000, v45, v46, "FatalError at %s:%lu - %s", v47, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v48, -1, -1);
      MEMORY[0x1E12A8390](v47, -1, -1);
    }

    (*(v41 + 8))(v58, v57);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000020, 0x80000001DD114970);
}

void sub_1DCFB9480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a4;
  v35 = a1;
  v33 = *v4;
  v8 = sub_1DD0DD2DC();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v30 - v15;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v17 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v17, qword_1EDE57E00);
  v18 = *(v9 + 16);
  v36 = a2;
  v18(v16, a2, v8);
  v19 = sub_1DD0DD8EC();
  v20 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32 = a3;
    v22 = v21;
    v31 = swift_slowAlloc();
    v37 = v31;
    *v22 = 136315138;
    v18(v13, v16, v8);
    v23 = sub_1DD0DE02C();
    v25 = v24;
    (*(v9 + 8))(v16, v8);
    v26 = sub_1DCB10E9C(v23, v25, &v37);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_1DCAFC000, v19, v20, "AppResolutionFlow executeResolutionUnsuccessful: %s", v22, 0xCu);
    v27 = v31;
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1E12A8390](v27, -1, -1);
    v28 = v22;
    a3 = v32;
    MEMORY[0x1E12A8390](v28, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v16, v8);
  }

  v29 = swift_allocObject();
  v29[2] = v5;
  v29[3] = a3;
  v29[4] = v34;
  sub_1DD0DCF8C();
}

void sub_1DCFB97C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCFB9A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v11 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v11, qword_1EDE57E00);

  v12 = sub_1DD0DD8EC();
  v13 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v12, v13))
  {
    v30 = a2;
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31[0] = v29;
    *v14 = 136315138;
    v15 = sub_1DD0DD1FC();
    v16 = MEMORY[0x1E12A69A0](a1, v15);
    v18 = v10;
    v19 = a4;
    v20 = sub_1DCB10E9C(v16, v17, v31);

    *(v14 + 4) = v20;
    a4 = v19;
    v10 = v18;
    v5 = v4;
    _os_log_impl(&dword_1DCAFC000, v12, v13, "AppResolutionFlow sending prompt for disambiguation for apps %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1E12A8390](v29, -1, -1);
    v21 = v14;
    a2 = v30;
    MEMORY[0x1E12A8390](v21, -1, -1);
  }

  if (sub_1DCB08B14(a1))
  {
    v22 = sub_1DCB08B14(a1);
    v31[0] = a1;
    v31[1] = 0;
    v31[2] = v22;
    v32 = 2;
    v33 = 0;
    v34 = 1;
    v23 = swift_allocObject();
    v23[2] = v5;
    v23[3] = a1;
    v23[4] = a3;
    v23[5] = a4;
    v23[6] = a2;
    swift_bridgeObjectRetain_n();
    sub_1DD0DCF8C();
  }

  v24 = sub_1DD0DD8EC();
  v25 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1DCAFC000, v24, v25, "AppResolutionFlow executeAppNeedsDisambiguation called with no Apps", v26, 2u);
    MEMORY[0x1E12A8390](v26, -1, -1);
  }

  type metadata accessor for SiriKitServerAssistedAppResolutionFlow.AppResolutionError(0, *(v10 + 80), *(v10 + 88), v27);
  swift_getWitnessTable();
  v28 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  sub_1DCFB7690(a2, v28, a3, a4);
}

void sub_1DCFB9DDC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *), uint64_t a5)
{
  v6 = *v5;
  v7 = type metadata accessor for ExecuteResponse(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(0, *(v6 + 80), *(v6 + 88), v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v12 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v12, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCFBA164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFBA210(char *a1, void (*a2)(void))
{
  v4 = *a1;
  v5 = type metadata accessor for ExecuteResponse(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(0, *(v4 + 80), *(v4 + 88), v9);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v27 - v13;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v15 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v15, qword_1EDE57E00);
  v16 = sub_1DD0DD8EC();
  v17 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v5;
    v19 = a2;
    v20 = v18;
    *v18 = 0;
    _os_log_impl(&dword_1DCAFC000, v16, v17, "AppResolutionFlow successfully sent unsuccessful response.", v18, 2u);
    v21 = v20;
    a2 = v19;
    v5 = v27;
    MEMORY[0x1E12A8390](v21, -1, -1);
  }

  swift_storeEnumTagMultiPayload();
  v22 = *(*a1 + 136);
  swift_beginAccess();
  (*(v11 + 40))(&a1[v22], v14, v10);
  swift_endAccess();
  v23 = *(v5 + 36);
  v24 = type metadata accessor for PluginAction(0);
  __swift_storeEnumTagSinglePayload(&v8[v23], 1, 1, v24);
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  *(v8 + 4) = 0;
  *(v8 + 5) = 0;
  *(v8 + 3) = 0;
  v8[48] = -4;
  v25 = &v8[*(v5 + 40)];
  *v25 = 0u;
  *(v25 + 1) = 0u;
  a2(v8);
  return sub_1DCFBFF48();
}

uint64_t sub_1DCFBA4F0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v6;
  v13 = type metadata accessor for ExecuteResponse(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(0, *(v12 + 80), *(v12 + 88), v17);
  v52 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v47 - v20;
  sub_1DCB09910(a1, v54, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  if (v55 != 1)
  {
    sub_1DCAFF9E8(v54, v53);
    __swift_project_boxed_opaque_existential_1((v6 + *(*v6 + 120)), *(v6 + *(*v6 + 120) + 24));
    v40 = swift_allocObject();
    v40[2] = v6;
    v40[3] = a2;
    v40[4] = a3;
    v40[5] = a4;
    v40[6] = a5;
    sub_1DD0DCF8C();
  }

  v51 = a3;
  v22 = *&v54[0];
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v23 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v23, qword_1EDE57E00);
  v24 = v22;
  v25 = sub_1DD0DD8EC();
  v26 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v49 = v27;
    v50 = swift_slowAlloc();
    v53[0] = v50;
    *v27 = 136315138;
    swift_getErrorValue();
    v48 = v25;
    v28 = sub_1DD0DF18C();
    LOBYTE(v27) = v26;
    v30 = v22;
    v31 = v18;
    v32 = v13;
    v33 = a2;
    v34 = sub_1DCB10E9C(v28, v29, v53);

    v35 = v49;
    *(v49 + 1) = v34;
    a2 = v33;
    v13 = v32;
    v18 = v31;
    v22 = v30;
    v36 = v27;
    v37 = v48;
    v38 = v35;
    _os_log_impl(&dword_1DCAFC000, v48, v36, "Unexpected error while trying to produce output: %s", v35, 0xCu);
    v39 = v50;
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x1E12A8390](v39, -1, -1);
    MEMORY[0x1E12A8390](v38, -1, -1);
  }

  else
  {
  }

  *v21 = v22;
  v21[8] = 0;
  swift_storeEnumTagMultiPayload();
  v41 = *(*v6 + 136);
  swift_beginAccess();
  v42 = v22;
  (*(v52 + 40))(v6 + v41, v21, v18);
  swift_endAccess();
  v43 = *(v13 + 36);
  v44 = type metadata accessor for PluginAction(0);
  __swift_storeEnumTagSinglePayload(&v16[v43], 1, 1, v44);
  *v16 = 1;
  *(v16 + 1) = 0;
  v16[16] = 0;
  *(v16 + 4) = 0;
  *(v16 + 5) = 0;
  *(v16 + 3) = 0;
  v16[48] = -4;
  v45 = &v16[*(v13 + 40)];
  *v45 = 0u;
  *(v45 + 1) = 0u;
  a2(v16);

  return sub_1DCFBFF48();
}

void sub_1DCFBA990(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, void *a6)
{
  v7 = sub_1DD0DD2FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11[15] = 28;
  *&v11[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)] = a3;
  (*(v8 + 104))(&v11[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69CE248], v7);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFBAB54(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v50 = a4;
  v11 = type metadata accessor for SiriKitEventPayload(0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v45 - v21;
  v23 = *a1;
  sub_1DCB09910(a3, v52, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  if (v53 == 1)
  {
    return sub_1DCB16DB0(v52, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  }

  sub_1DCAFF9E8(v52, v54);
  v25 = v55;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  if (sub_1DCB651D0(v25))
  {
    v47 = v11;
    v48 = a2;
    v49 = v6;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v26 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v26, qword_1EDE57E00);

    v27 = sub_1DD0DD8EC();
    v28 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v52[0] = v46;
      *v29 = 136315394;
      v51 = v23;
      v30 = ActivityType.rawValue.getter();
      v32 = sub_1DCB10E9C(v30, v31, v52);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_1DCB10E9C(v50, a5, v52);
      _os_log_impl(&dword_1DCAFC000, v27, v28, "AppResolutionFlow logging Task step: %s for Task type: %s", v29, 0x16u);
      v33 = v46;
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v33, -1, -1);
      MEMORY[0x1E12A8390](v29, -1, -1);
    }

    v34 = v49;
    v35 = *(*v49 + 104);
    v36 = sub_1DD0DD2FC();
    (*(*(v36 - 8) + 16))(v22, v48, v36);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v36);
    v37 = v55;
    v38 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    (*(v38 + 8))(v52, v37, v38);
    if ((sub_1DCE0669C(v23, 10) & 1) == 0)
    {
      v39 = v34 + v35;
      if (sub_1DCE0669C(v23, 10))
      {
        v40 = 25;
      }

      else
      {
        v40 = v23;
      }

      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60) + 112);
      *v18 = v40;
      *(v18 + 1) = 0x54746E6572727543;
      *(v18 + 2) = 0xEB000000006B7361;
      v18[24] = 29;
      sub_1DCB09910(v52, (v18 + 32), &unk_1ECCA3280, &unk_1DD0E23D0);
      *(v18 + 9) = 0;
      sub_1DCB09910(v22, &v18[v41], &qword_1ECCA2278, &qword_1DD0E4830);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for SiriKitEvent(0);
      sub_1DCFBFF98(v18, v15, type metadata accessor for SiriKitEventPayload);
      v42 = SiriKitEvent.__allocating_init(_:builder:)(v15, 0);
      sub_1DCFBFF48();
      v43 = *(v39 + 24);
      v44 = *(v39 + 32);
      __swift_project_boxed_opaque_existential_1((v34 + v35), v43);
      (*(v44 + 8))(v42, v43, v44);
    }

    sub_1DCB16DB0(v52, &unk_1ECCA3280, &unk_1DD0E23D0);
    sub_1DCB16DB0(v22, &qword_1ECCA2278, &qword_1DD0E4830);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v54);
}

void sub_1DCFBB064(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, void *a6)
{
  v12 = sub_1DD0DD2FC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = (&v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = 27;
  *v16 = a3;
  (*(v13 + 104))(v16, *MEMORY[0x1E69CE250], v12);

  sub_1DCFBAB54(&v19, v16, a1, 0x54746E6572727543, 0xEB000000006B7361);

  (*(v13 + 8))(v16, v12);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a6;
  v17[4] = a4;
  v17[5] = a5;
  sub_1DD0DCF8C();
}

void sub_1DCFBB228()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v34 = v3;
  v35 = v2;
  v5 = v4;
  v6 = *v4;
  v7 = type metadata accessor for ExecuteResponse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(0, *(v6 + 80), *(v6 + 88), v12);
  OUTLINED_FUNCTION_9();
  v15 = v14;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v33 - v18);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v20 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v20, qword_1EDE57E00);
  v21 = sub_1DD0DD8EC();
  v22 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_50_0();
    v33 = v7;
    *v23 = 0;
    _os_log_impl(&dword_1DCAFC000, v21, v22, v1, v23, 2u);
    v7 = v33;
    OUTLINED_FUNCTION_80();
  }

  v24 = v35;
  *v19 = v35;
  swift_storeEnumTagMultiPayload();
  v25 = *(*v5 + 136);
  OUTLINED_FUNCTION_22_42(&v5[v25]);
  v26 = *(v15 + 40);
  v27 = v24;
  v26(&v5[v25], v19, v13);
  swift_endAccess();
  v28 = *(v7 + 36);
  v29 = type metadata accessor for PluginAction(0);
  OUTLINED_FUNCTION_7_5(&v11[v28], v30, v31, v29);
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  *(v11 + 4) = 0;
  *(v11 + 5) = 0;
  *(v11 + 3) = 0;
  v11[48] = -4;
  v32 = &v11[*(v7 + 40)];
  *v32 = 0u;
  *(v32 + 1) = 0u;
  v34(v11);
  OUTLINED_FUNCTION_7_74();
  sub_1DCFBFF48();
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCFBB49C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(0, *(*a2 + 80), *(*a2 + 88), a4);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v19 - v13;
  if ((*a1 & 1) == 0)
  {
    *v14 = a3;
    *(v14 + 1) = a4;
    sub_1DCB17CA0(a5, (v14 + 16));
    v14[56] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1DD0DCF8C();
  }

  sub_1DCC22514();
  v15 = swift_allocError();
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 2;
  *v14 = v15;
  v14[8] = 1;
  swift_storeEnumTagMultiPayload();
  v17 = *(*a2 + 136);
  swift_beginAccess();
  (*(v11 + 40))(a2 + v17, v14, v10);
  return swift_endAccess();
}

void sub_1DCFBB658(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a5;
  v9[4] = a3;
  v9[5] = a4;
  sub_1DD0DCF8C();
}

void sub_1DCFBB710(char *a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v17[1] = a4;
  v17[2] = a3;
  v5 = *a1;
  v6 = type metadata accessor for ExecuteResponse(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(0, *(v5 + 80), *(v5 + 88), v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (v17 - v11);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v13 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v13, qword_1EDE57E00);
  v14 = sub_1DD0DD8EC();
  v15 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1DCAFC000, v14, v15, "AppResolutionFlow successfully sent app resolution success response.", v16, 2u);
    MEMORY[0x1E12A8390](v16, -1, -1);
  }

  *v12 = a2;
  v12[1] = 0;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1DD0DCF8C();
}

void sub_1DCFBB9E4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v10 = sub_1DD0DD2FC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 6;
  v15 = *MEMORY[0x1E69CE228];
  v16 = sub_1DD0DD2DC();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  (*(v11 + 104))(v14, *MEMORY[0x1E69CE240], v10);
  sub_1DCFBAB54(&v19, v14, a1, 0x54746E6572727543, 0xEB000000006B7361);

  (*(v11 + 8))(v14, v10);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a5;
  v17[4] = a3;
  v17[5] = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFBBBE4(char *a1, void *a2, void (*a3)(char *))
{
  v23 = a3;
  v5 = *a1;
  v6 = type metadata accessor for ExecuteResponse(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(0, *(v5 + 80), *(v5 + 88), v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v23 - v15;
  *v16 = a2;
  v16[8] = 1;
  swift_storeEnumTagMultiPayload();
  v17 = *(*a1 + 136);
  swift_beginAccess();
  v18 = a2;
  (*(v13 + 40))(&a1[v17], v16, v12);
  swift_endAccess();
  v19 = *(v7 + 44);
  v20 = type metadata accessor for PluginAction(0);
  __swift_storeEnumTagSinglePayload(&v10[v19], 1, 1, v20);
  *v10 = 1;
  *(v10 + 1) = 0;
  v10[16] = 0;
  *(v10 + 4) = 0;
  *(v10 + 5) = 0;
  *(v10 + 3) = 0;
  v10[48] = -4;
  v21 = &v10[*(v7 + 48)];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v23(v10);
  return sub_1DCFBFF48();
}

uint64_t sub_1DCFBBE08(void *a1, char a2, char *a3, void (*a4)(char *), uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v49 = a5;
  v11 = *a3;
  v48 = type metadata accessor for ExecuteResponse(0);
  MEMORY[0x1EEE9AC00](v48, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(0, *(v11 + 80), *(v11 + 88), v15);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - v20;
  if ((a2 & 1) == 0)
  {
    return a6(v19);
  }

  v47 = a4;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v22 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v22, qword_1EDE57E00);
  v23 = a1;
  v24 = sub_1DD0DD8EC();
  v25 = sub_1DD0DE6EC();
  sub_1DCB79378(a1, 1);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v45 = v26;
    v46 = swift_slowAlloc();
    v50[0] = v46;
    *v26 = 136315138;
    swift_getErrorValue();
    v27 = sub_1DD0DF18C();
    v29 = v16;
    v30 = a1;
    v31 = v25;
    v32 = v17;
    v33 = sub_1DCB10E9C(v27, v28, v50);

    v34 = v45;
    *(v45 + 1) = v33;
    v17 = v32;
    v35 = v31;
    a1 = v30;
    v16 = v29;
    v36 = v34;
    _os_log_impl(&dword_1DCAFC000, v24, v35, "Unexpected error while trying to publish output: %s", v34, 0xCu);
    v37 = v46;
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x1E12A8390](v37, -1, -1);
    MEMORY[0x1E12A8390](v36, -1, -1);
  }

  *v21 = a1;
  v21[8] = 0;
  swift_storeEnumTagMultiPayload();
  v38 = *(*a3 + 136);
  swift_beginAccess();
  v39 = a1;
  (*(v17 + 40))(&a3[v38], v21, v16);
  swift_endAccess();
  v40 = v48;
  v41 = *(v48 + 36);
  v42 = type metadata accessor for PluginAction(0);
  __swift_storeEnumTagSinglePayload(&v14[v41], 1, 1, v42);
  *v14 = 1;
  *(v14 + 1) = 0;
  v14[16] = 0;
  *(v14 + 4) = 0;
  *(v14 + 5) = 0;
  *(v14 + 3) = 0;
  v14[48] = -4;
  v43 = &v14[*(v40 + 40)];
  *v43 = 0u;
  *(v43 + 1) = 0u;
  v47(v14);
  return sub_1DCFBFF48();
}

uint64_t *sub_1DCFBC1B4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 96), v2);
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v3 + 104)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v4 + 112)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v5 + 120)));
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();
  v7 = *(v6 + 136);
  type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(0, v2, *(v1 + 88), v8);
  OUTLINED_FUNCTION_13_1();
  (*(v9 + 8))(v0 + v7);
  return v0;
}

uint64_t sub_1DCFBC2F0()
{
  sub_1DCFBC1B4();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCFBC378(uint64_t a1)
{
  v4 = "\b";
  result = type metadata accessor for Input(319);
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout3();
    v5 = &v3;
    v6 = &unk_1DD107550;
    v7 = &unk_1DD107538;
    v8 = &unk_1DD107568;
    v9 = &unk_1DD107580;
    v10 = &unk_1DD107598;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *sub_1DCFBC45C(char *a1, char **a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a3 - 8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 1u:
      v15 = sub_1DD0DB04C();
      (*(*(v15 - 8) + 16))(a1, a2, v15);
      v16 = type metadata accessor for Input(0);
      v17 = v16[5];
      v18 = &a1[v17];
      v19 = a2 + v17;
      v20 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v21 = sub_1DD0DC76C();
          (*(*(v21 - 8) + 16))(v18, v19, v21);
          goto LABEL_37;
        case 1u:
          v34 = sub_1DD0DC76C();
          (*(*(v34 - 8) + 16))(v18, v19, v34);
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v18[*(v35 + 48)] = *&v19[*(v35 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v28 = *(v19 + 1);
          *v18 = *v19;
          *(v18 + 1) = v28;
          *(v18 + 2) = *(v19 + 2);

          goto LABEL_37;
        case 3u:
          *v18 = *v19;
          swift_unknownObjectRetain();
          goto LABEL_37;
        case 4u:
          v26 = sub_1DD0DB1EC();
          (*(*(v26 - 8) + 16))(v18, v19, v26);
          goto LABEL_37;
        case 5u:
          v36 = *v19;
          *v18 = *v19;
          v37 = v36;
          goto LABEL_37;
        case 6u:
          v38 = sub_1DD0DB4BC();
          (*(*(v38 - 8) + 16))(v18, v19, v38);
          v39 = type metadata accessor for USOParse(0);
          v40 = v39[5];
          v41 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v19[v40], 1, v41))
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v18[v40], &v19[v40], *(*(v42 - 8) + 64));
          }

          else
          {
            (*(*(v41 - 8) + 16))(&v18[v40], &v19[v40], v41);
            __swift_storeEnumTagSinglePayload(&v18[v40], 0, 1, v41);
          }

          v73 = v39[6];
          v74 = &v18[v73];
          v75 = &v19[v73];
          v76 = *(v75 + 1);
          *v74 = *v75;
          *(v74 + 1) = v76;
          v77 = v39[7];
          v78 = &v18[v77];
          v79 = &v19[v77];
          v78[4] = v79[4];
          *v78 = *v79;

          goto LABEL_37;
        case 7u:
          v29 = sub_1DD0DB4BC();
          (*(*(v29 - 8) + 16))(v18, v19, v29);
          v30 = type metadata accessor for USOParse(0);
          v31 = v30[5];
          v32 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v19[v31], 1, v32))
          {
            v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v18[v31], &v19[v31], *(*(v33 - 8) + 64));
          }

          else
          {
            (*(*(v32 - 8) + 16))(&v18[v31], &v19[v31], v32);
            __swift_storeEnumTagSinglePayload(&v18[v31], 0, 1, v32);
          }

          v53 = v30[6];
          v54 = &v18[v53];
          v55 = &v19[v53];
          v56 = *(v55 + 1);
          *v54 = *v55;
          *(v54 + 1) = v56;
          v57 = v30[7];
          v58 = &v18[v57];
          v59 = &v19[v57];
          v58[4] = v59[4];
          *v58 = *v59;
          v60 = type metadata accessor for LinkParse(0);
          v61 = v60[5];
          v62 = &v18[v61];
          v63 = &v19[v61];
          v64 = *(v63 + 1);
          *v62 = *v63;
          *(v62 + 1) = v64;
          v65 = v60[6];
          v66 = &v18[v65];
          v67 = &v19[v65];
          v68 = *(v67 + 1);
          *v66 = *v67;
          *(v66 + 1) = v68;
          v69 = v60[7];
          v70 = &v18[v69];
          v71 = &v19[v69];
          v72 = *(v71 + 1);
          *v70 = *v71;
          *(v70 + 1) = v72;

          goto LABEL_37;
        case 8u:
          v43 = sub_1DD0DD12C();
          (*(*(v43 - 8) + 16))(v18, v19, v43);
          v44 = type metadata accessor for NLRouterParse(0);
          v45 = *(v44 + 20);
          v46 = &v18[v45];
          v47 = &v19[v45];
          v48 = *(v47 + 1);
          *v46 = *v47;
          *(v46 + 1) = v48;
          v49 = *(v44 + 24);
          v104 = v44;
          __dst = &v18[v49];
          v50 = &v19[v49];
          v51 = type metadata accessor for USOParse(0);

          if (__swift_getEnumTagSinglePayload(v50, 1, v51))
          {
            v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dst, v50, *(*(v52 - 8) + 64));
          }

          else
          {
            v80 = sub_1DD0DB4BC();
            (*(*(v80 - 8) + 16))(__dst, v50, v80);
            v81 = v51[5];
            v103 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v50[v81], 1, v103))
            {
              v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dst[v81], &v50[v81], *(*(v82 - 8) + 64));
            }

            else
            {
              (*(*(v103 - 8) + 16))(&__dst[v81], &v50[v81]);
              __swift_storeEnumTagSinglePayload(&__dst[v81], 0, 1, v103);
            }

            v83 = v51[6];
            v84 = &__dst[v83];
            v85 = &v50[v83];
            v86 = *(v85 + 1);
            *v84 = *v85;
            *(v84 + 1) = v86;
            v87 = v51[7];
            v88 = &__dst[v87];
            v89 = &v50[v87];
            v88[4] = v89[4];
            *v88 = *v89;

            __swift_storeEnumTagSinglePayload(__dst, 0, 1, v51);
          }

          v90 = *(v104 + 28);
          v91 = *&v19[v90];
          *&v18[v90] = v91;
          v92 = v91;
          goto LABEL_37;
        case 9u:
          v27 = sub_1DD0DD08C();
          (*(*(v27 - 8) + 16))(v18, v19, v27);
LABEL_37:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v18, v19, *(*(v20 - 8) + 64));
          break;
      }

      *&a1[v16[6]] = *(a2 + v16[6]);
      v93 = v16[7];
      v94 = &a1[v93];
      v95 = a2 + v93;
      v96 = *(a2 + v93 + 24);

      if (v96)
      {
        v97 = *(v95 + 4);
        *(v94 + 3) = v96;
        *(v94 + 4) = v97;
        (**(v96 - 8))(v94, v95, v96);
      }

      else
      {
        v98 = *(v95 + 1);
        *v94 = *v95;
        *(v94 + 1) = v98;
        *(v94 + 4) = *(v95 + 4);
      }

      a1[v16[8]] = *(a2 + v16[8]);
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v100 = *(TupleTypeMetadata3 + 48);
      v101 = *(a2 + v100);
      *&a1[v100] = v101;
      *&a1[*(TupleTypeMetadata3 + 64)] = *(a2 + *(TupleTypeMetadata3 + 64));
      v102 = v101;
      sub_1DD0DCF8C();
    case 2u:
      v7 = *(a2 + 3);
      *(a1 + 24) = v7;
      (**(v7 - 8))(a1, a2);
      v8 = a2[5];
      v9 = a2[6];
      *(a1 + 5) = v8;
      *(a1 + 6) = v9;
      v10 = v8;
      sub_1DD0DCF8C();
    case 3u:
      v11 = *a2;
      *a1 = *a2;
      v12 = v11;
      goto LABEL_42;
    case 4u:
      v6 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v6;
      *(a1 + 40) = *(a2 + 5);
      sub_1DD0DCF8C();
    case 5u:
      v23 = *a2;
      v22 = a2[1];
      sub_1DCBF4C98(v23, v22);
      *a1 = v23;
      *(a1 + 1) = v22;
      goto LABEL_42;
    case 6u:
      v24 = *a2;
      v25 = *a2;
      *a1 = v24;
      a1[8] = *(a2 + 8);
LABEL_42:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v13 = *(v5 + 64);

      result = memcpy(a1, a2, v13);
      break;
  }

  return result;
}

void sub_1DCFBCF20(uint64_t a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      goto LABEL_37;
    case 1u:
      v4 = sub_1DD0DB04C();
      (*(*(v4 - 8) + 8))(a1, v4);
      v5 = type metadata accessor for Input(0);
      v6 = (a1 + *(v5 + 20));
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v7 = sub_1DD0DC76C();
          goto LABEL_17;
        case 1u:
          v13 = sub_1DD0DC76C();
          (*(*(v13 - 8) + 8))(v6, v13);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

          break;
        case 2u:

          goto LABEL_27;
        case 3u:
          swift_unknownObjectRelease();
          break;
        case 4u:
          v7 = sub_1DD0DB1EC();
          goto LABEL_17;
        case 5u:
          v14 = *v6;
          goto LABEL_33;
        case 6u:
          v15 = sub_1DD0DB4BC();
          (*(*(v15 - 8) + 8))(v6, v15);
          v16 = *(type metadata accessor for USOParse(0) + 20);
          v17 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v6 + v16, 1, v17))
          {
            (*(*(v17 - 8) + 8))(v6 + v16, v17);
          }

          goto LABEL_27;
        case 7u:
          v10 = sub_1DD0DB4BC();
          (*(*(v10 - 8) + 8))(v6, v10);
          v11 = *(type metadata accessor for USOParse(0) + 20);
          v12 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v6 + v11, 1, v12))
          {
            (*(*(v12 - 8) + 8))(v6 + v11, v12);
          }

          type metadata accessor for LinkParse(0);

LABEL_27:

          break;
        case 8u:
          v18 = sub_1DD0DD12C();
          (*(*(v18 - 8) + 8))(v6, v18);
          v19 = type metadata accessor for NLRouterParse(0);

          v20 = v6 + *(v19 + 24);
          v21 = type metadata accessor for USOParse(0);
          if (!__swift_getEnumTagSinglePayload(v20, 1, v21))
          {
            v22 = sub_1DD0DB4BC();
            (*(*(v22 - 8) + 8))(v20, v22);
            v23 = *(v21 + 20);
            v24 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v20 + v23, 1, v24))
            {
              (*(*(v24 - 8) + 8))(v20 + v23, v24);
            }
          }

          v14 = *(v6 + *(v19 + 28));
LABEL_33:

          break;
        case 9u:
          v7 = sub_1DD0DD08C();
LABEL_17:
          (*(*(v7 - 8) + 8))(v6, v7);
          break;
        default:
          break;
      }

      v25 = (a1 + *(v5 + 28));
      if (v25[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
      }

      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);

      goto LABEL_37;
    case 2u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);

LABEL_37:

      return;
    case 3u:
      v3 = *a1;

      goto LABEL_6;
    case 4u:

      __swift_destroy_boxed_opaque_existential_1Tm((a1 + 16));
      return;
    case 5u:
      v8 = *a1;
      v9 = *(a1 + 8);

      sub_1DCC2315C(v8, v9);
      return;
    case 6u:
      v3 = *a1;

LABEL_6:

      break;
    default:
      return;
  }
}

void *sub_1DCFBD520(char *a1, uint64_t a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 1u:
      v15 = sub_1DD0DB04C();
      (*(*(v15 - 8) + 16))(a1, a2, v15);
      v16 = type metadata accessor for Input(0);
      v17 = v16[5];
      v18 = &a1[v17];
      v19 = (a2 + v17);
      v20 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v21 = sub_1DD0DC76C();
          (*(*(v21 - 8) + 16))(v18, v19, v21);
          goto LABEL_35;
        case 1u:
          v34 = sub_1DD0DC76C();
          (*(*(v34 - 8) + 16))(v18, v19, v34);
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v18[*(v35 + 48)] = *&v19[*(v35 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v28 = *(v19 + 1);
          *v18 = *v19;
          *(v18 + 1) = v28;
          *(v18 + 2) = *(v19 + 2);

          goto LABEL_35;
        case 3u:
          *v18 = *v19;
          swift_unknownObjectRetain();
          goto LABEL_35;
        case 4u:
          v26 = sub_1DD0DB1EC();
          (*(*(v26 - 8) + 16))(v18, v19, v26);
          goto LABEL_35;
        case 5u:
          v36 = *v19;
          *v18 = *v19;
          v37 = v36;
          goto LABEL_35;
        case 6u:
          v38 = sub_1DD0DB4BC();
          (*(*(v38 - 8) + 16))(v18, v19, v38);
          v39 = type metadata accessor for USOParse(0);
          v40 = v39[5];
          v41 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v19[v40], 1, v41))
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v18[v40], &v19[v40], *(*(v42 - 8) + 64));
          }

          else
          {
            (*(*(v41 - 8) + 16))(&v18[v40], &v19[v40], v41);
            __swift_storeEnumTagSinglePayload(&v18[v40], 0, 1, v41);
          }

          v73 = v39[6];
          v74 = &v18[v73];
          v75 = &v19[v73];
          v76 = *(v75 + 1);
          *v74 = *v75;
          *(v74 + 1) = v76;
          v77 = v39[7];
          v78 = &v18[v77];
          v79 = &v19[v77];
          v78[4] = v79[4];
          *v78 = *v79;

          goto LABEL_35;
        case 7u:
          v29 = sub_1DD0DB4BC();
          (*(*(v29 - 8) + 16))(v18, v19, v29);
          v30 = type metadata accessor for USOParse(0);
          v31 = v30[5];
          v32 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v19[v31], 1, v32))
          {
            v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v18[v31], &v19[v31], *(*(v33 - 8) + 64));
          }

          else
          {
            (*(*(v32 - 8) + 16))(&v18[v31], &v19[v31], v32);
            __swift_storeEnumTagSinglePayload(&v18[v31], 0, 1, v32);
          }

          v53 = v30[6];
          v54 = &v18[v53];
          v55 = &v19[v53];
          v56 = *(v55 + 1);
          *v54 = *v55;
          *(v54 + 1) = v56;
          v57 = v30[7];
          v58 = &v18[v57];
          v59 = &v19[v57];
          v58[4] = v59[4];
          *v58 = *v59;
          v60 = type metadata accessor for LinkParse(0);
          v61 = v60[5];
          v62 = &v18[v61];
          v63 = &v19[v61];
          v64 = *(v63 + 1);
          *v62 = *v63;
          *(v62 + 1) = v64;
          v65 = v60[6];
          v66 = &v18[v65];
          v67 = &v19[v65];
          v68 = *(v67 + 1);
          *v66 = *v67;
          *(v66 + 1) = v68;
          v69 = v60[7];
          v70 = &v18[v69];
          v71 = &v19[v69];
          v72 = *(v71 + 1);
          *v70 = *v71;
          *(v70 + 1) = v72;

          goto LABEL_35;
        case 8u:
          v43 = sub_1DD0DD12C();
          (*(*(v43 - 8) + 16))(v18, v19, v43);
          v44 = type metadata accessor for NLRouterParse(0);
          v45 = *(v44 + 20);
          v46 = &v18[v45];
          v47 = &v19[v45];
          v48 = *(v47 + 1);
          *v46 = *v47;
          *(v46 + 1) = v48;
          v49 = *(v44 + 24);
          v104 = v44;
          __dst = &v18[v49];
          v50 = &v19[v49];
          v51 = type metadata accessor for USOParse(0);

          if (__swift_getEnumTagSinglePayload(v50, 1, v51))
          {
            v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dst, v50, *(*(v52 - 8) + 64));
          }

          else
          {
            v80 = sub_1DD0DB4BC();
            (*(*(v80 - 8) + 16))(__dst, v50, v80);
            v81 = v51[5];
            v103 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v50[v81], 1, v103))
            {
              v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dst[v81], &v50[v81], *(*(v82 - 8) + 64));
            }

            else
            {
              (*(*(v103 - 8) + 16))(&__dst[v81], &v50[v81]);
              __swift_storeEnumTagSinglePayload(&__dst[v81], 0, 1, v103);
            }

            v83 = v51[6];
            v84 = &__dst[v83];
            v85 = &v50[v83];
            v86 = *(v85 + 1);
            *v84 = *v85;
            *(v84 + 1) = v86;
            v87 = v51[7];
            v88 = &__dst[v87];
            v89 = &v50[v87];
            v88[4] = v89[4];
            *v88 = *v89;

            __swift_storeEnumTagSinglePayload(__dst, 0, 1, v51);
          }

          v90 = *(v104 + 28);
          v91 = *&v19[v90];
          *&v18[v90] = v91;
          v92 = v91;
          goto LABEL_35;
        case 9u:
          v27 = sub_1DD0DD08C();
          (*(*(v27 - 8) + 16))(v18, v19, v27);
LABEL_35:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v18, v19, *(*(v20 - 8) + 64));
          break;
      }

      *&a1[v16[6]] = *(a2 + v16[6]);
      v93 = v16[7];
      v94 = &a1[v93];
      v95 = a2 + v93;
      v96 = *(a2 + v93 + 24);

      if (v96)
      {
        v97 = *(v95 + 32);
        *(v94 + 3) = v96;
        *(v94 + 4) = v97;
        (**(v96 - 8))(v94, v95, v96);
      }

      else
      {
        v98 = *(v95 + 16);
        *v94 = *v95;
        *(v94 + 1) = v98;
        *(v94 + 4) = *(v95 + 32);
      }

      a1[v16[8]] = *(a2 + v16[8]);
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v100 = *(TupleTypeMetadata3 + 48);
      v101 = *(a2 + v100);
      *&a1[v100] = v101;
      *&a1[*(TupleTypeMetadata3 + 64)] = *(a2 + *(TupleTypeMetadata3 + 64));
      v102 = v101;
      sub_1DD0DCF8C();
    case 2u:
      v7 = *(a2 + 24);
      *(a1 + 24) = v7;
      (**(v7 - 8))(a1, a2);
      v8 = *(a2 + 40);
      v9 = *(a2 + 48);
      *(a1 + 5) = v8;
      *(a1 + 6) = v9;
      v10 = v8;
      sub_1DD0DCF8C();
    case 3u:
      v11 = *a2;
      *a1 = *a2;
      v12 = v11;
      goto LABEL_40;
    case 4u:
      v6 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 1) = v6;
      *(a1 + 40) = *(a2 + 40);
      sub_1DD0DCF8C();
    case 5u:
      v23 = *a2;
      v22 = *(a2 + 8);
      sub_1DCBF4C98(v23, v22);
      *a1 = v23;
      *(a1 + 1) = v22;
      goto LABEL_40;
    case 6u:
      v24 = *a2;
      v25 = *a2;
      *a1 = v24;
      a1[8] = *(a2 + 8);
LABEL_40:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v13 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v13);
      break;
  }

  return result;
}

char *sub_1DCFBDFA4(char *a1, unint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 - 8);
    (*(v5 + 8))(a1, a3);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 1u:
        v13 = sub_1DD0DB04C();
        (*(*(v13 - 8) + 16))(a1, a2, v13);
        v14 = type metadata accessor for Input(0);
        v15 = v14[5];
        v16 = &a1[v15];
        v17 = a2 + v15;
        v18 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v19 = sub_1DD0DC76C();
            (*(*(v19 - 8) + 16))(v16, v17, v19);
            goto LABEL_36;
          case 1u:
            v31 = sub_1DD0DC76C();
            (*(*(v31 - 8) + 16))(v16, v17, v31);
            v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v16[*(v32 + 48)] = *&v17[*(v32 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v16 = *v17;
            *(v16 + 1) = *(v17 + 1);
            *(v16 + 2) = *(v17 + 2);

            goto LABEL_36;
          case 3u:
            *v16 = *v17;
            swift_unknownObjectRetain();
            goto LABEL_36;
          case 4u:
            v24 = sub_1DD0DB1EC();
            (*(*(v24 - 8) + 16))(v16, v17, v24);
            goto LABEL_36;
          case 5u:
            v33 = *v17;
            *v16 = *v17;
            v34 = v33;
            goto LABEL_36;
          case 6u:
            v35 = sub_1DD0DB4BC();
            (*(*(v35 - 8) + 16))(v16, v17, v35);
            v36 = type metadata accessor for USOParse(0);
            v37 = v36[5];
            v38 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v17[v37], 1, v38))
            {
              v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v16[v37], &v17[v37], *(*(v39 - 8) + 64));
            }

            else
            {
              (*(*(v38 - 8) + 16))(&v16[v37], &v17[v37], v38);
              __swift_storeEnumTagSinglePayload(&v16[v37], 0, 1, v38);
            }

            v66 = v36[6];
            v67 = &v16[v66];
            v68 = &v17[v66];
            *v67 = *v68;
            *(v67 + 1) = *(v68 + 1);
            v69 = v36[7];
            v70 = &v16[v69];
            v71 = &v17[v69];
            v72 = *v71;
            v70[4] = v71[4];
            *v70 = v72;

            goto LABEL_36;
          case 7u:
            v26 = sub_1DD0DB4BC();
            (*(*(v26 - 8) + 16))(v16, v17, v26);
            v27 = type metadata accessor for USOParse(0);
            v28 = v27[5];
            v29 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v17[v28], 1, v29))
            {
              v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v16[v28], &v17[v28], *(*(v30 - 8) + 64));
            }

            else
            {
              (*(*(v29 - 8) + 16))(&v16[v28], &v17[v28], v29);
              __swift_storeEnumTagSinglePayload(&v16[v28], 0, 1, v29);
            }

            v49 = v27[6];
            v50 = &v16[v49];
            v51 = &v17[v49];
            *v50 = *v51;
            *(v50 + 1) = *(v51 + 1);
            v52 = v27[7];
            v53 = &v16[v52];
            v54 = &v17[v52];
            v55 = *v54;
            v53[4] = v54[4];
            *v53 = v55;
            v56 = type metadata accessor for LinkParse(0);
            v57 = v56[5];
            v58 = &v16[v57];
            v59 = &v17[v57];
            *v58 = *v59;
            *(v58 + 1) = *(v59 + 1);
            v60 = v56[6];
            v61 = &v16[v60];
            v62 = &v17[v60];
            *v61 = *v62;
            *(v61 + 1) = *(v62 + 1);
            v63 = v56[7];
            v64 = &v16[v63];
            v65 = &v17[v63];
            *v64 = *v65;
            *(v64 + 1) = *(v65 + 1);

            goto LABEL_36;
          case 8u:
            v40 = sub_1DD0DD12C();
            (*(*(v40 - 8) + 16))(v16, v17, v40);
            v41 = type metadata accessor for NLRouterParse(0);
            v42 = *(v41 + 20);
            v43 = &v16[v42];
            v44 = &v17[v42];
            *v43 = *v44;
            *(v43 + 1) = *(v44 + 1);
            v45 = *(v41 + 24);
            v97 = v41;
            __dst = &v16[v45];
            v46 = &v17[v45];
            v47 = type metadata accessor for USOParse(0);

            if (__swift_getEnumTagSinglePayload(v46, 1, v47))
            {
              v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dst, v46, *(*(v48 - 8) + 64));
            }

            else
            {
              v73 = sub_1DD0DB4BC();
              (*(*(v73 - 8) + 16))(__dst, v46, v73);
              v74 = v47[5];
              v96 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v46[v74], 1, v96))
              {
                v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dst[v74], &v46[v74], *(*(v75 - 8) + 64));
              }

              else
              {
                (*(*(v96 - 8) + 16))(&__dst[v74], &v46[v74]);
                __swift_storeEnumTagSinglePayload(&__dst[v74], 0, 1, v96);
              }

              v76 = v47[6];
              v77 = &__dst[v76];
              v78 = &v46[v76];
              *v77 = *v78;
              *(v77 + 1) = *(v78 + 1);
              v79 = v47[7];
              v80 = &__dst[v79];
              v81 = &v46[v79];
              v82 = *v81;
              v80[4] = v81[4];
              *v80 = v82;

              __swift_storeEnumTagSinglePayload(__dst, 0, 1, v47);
            }

            v83 = *(v97 + 28);
            v84 = *&v17[v83];
            *&v16[v83] = v84;
            v85 = v84;
            goto LABEL_36;
          case 9u:
            v25 = sub_1DD0DD08C();
            (*(*(v25 - 8) + 16))(v16, v17, v25);
LABEL_36:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v16, v17, *(*(v18 - 8) + 64));
            break;
        }

        *&a1[v14[6]] = *(a2 + v14[6]);
        v86 = v14[7];
        v87 = &a1[v86];
        v88 = a2 + v86;
        v89 = *(a2 + v86 + 24);

        if (v89)
        {
          *(v87 + 3) = v89;
          *(v87 + 4) = *(v88 + 4);
          (**(v89 - 8))(v87, v88, v89);
        }

        else
        {
          v90 = *v88;
          v91 = *(v88 + 1);
          *(v87 + 4) = *(v88 + 4);
          *v87 = v90;
          *(v87 + 1) = v91;
        }

        a1[v14[8]] = *(a2 + v14[8]);
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v93 = *(TupleTypeMetadata3 + 48);
        v94 = *(a2 + v93);
        *&a1[v93] = v94;
        *&a1[*(TupleTypeMetadata3 + 64)] = *(a2 + *(TupleTypeMetadata3 + 64));
        v95 = v94;
        sub_1DD0DCF8C();
      case 2u:
        v6 = a2[3];
        *(a1 + 3) = v6;
        *(a1 + 4) = a2[4];
        (**(v6 - 8))(a1, a2);
        v7 = a2[5];
        *(a1 + 5) = v7;
        *(a1 + 6) = a2[6];
        v8 = v7;
        sub_1DD0DCF8C();
      case 3u:
        v9 = *a2;
        *a1 = *a2;
        v10 = v9;
        goto LABEL_41;
      case 4u:
        *a1 = *a2;
        *(a1 + 1) = a2[1];
        *(a1 + 5) = a2[5];
        *(a1 + 6) = a2[6];
        sub_1DD0DCF8C();
      case 5u:
        v21 = *a2;
        v20 = a2[1];
        sub_1DCBF4C98(v21, v20);
        *a1 = v21;
        *(a1 + 1) = v20;
        goto LABEL_41;
      case 6u:
        v22 = *a2;
        v23 = *a2;
        *a1 = v22;
        a1[8] = *(a2 + 8);
LABEL_41:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v11 = *(v5 + 64);

        return memcpy(a1, a2, v11);
    }
  }

  return a1;
}

_BYTE *sub_1DCFBEAD8(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1DD0DB04C();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    v7 = type metadata accessor for Input(0);
    v8 = v7[5];
    v9 = &a1[v8];
    v10 = &a2[v8];
    v11 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v12 = sub_1DD0DC76C();
        (*(*(v12 - 8) + 32))(v9, v10, v12);
        goto LABEL_26;
      case 1u:
        v22 = sub_1DD0DC76C();
        (*(*(v22 - 8) + 32))(v9, v10, v22);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v9[*(v23 + 48)] = *&v10[*(v23 + 48)];
        goto LABEL_26;
      case 4u:
        v25 = sub_1DD0DB1EC();
        (*(*(v25 - 8) + 32))(v9, v10, v25);
        goto LABEL_26;
      case 6u:
        v26 = sub_1DD0DB4BC();
        (*(*(v26 - 8) + 32))(v9, v10, v26);
        v27 = type metadata accessor for USOParse(0);
        v28 = v27[5];
        v29 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v10[v28], 1, v29))
        {
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v9[v28], &v10[v28], *(*(v30 - 8) + 64));
        }

        else
        {
          (*(*(v29 - 8) + 32))(&v9[v28], &v10[v28], v29);
          __swift_storeEnumTagSinglePayload(&v9[v28], 0, 1, v29);
        }

        *&v9[v27[6]] = *&v10[v27[6]];
        v43 = v27[7];
        v44 = &v9[v43];
        v45 = &v10[v43];
        v44[4] = v45[4];
        *v44 = *v45;
        goto LABEL_26;
      case 7u:
        v31 = sub_1DD0DB4BC();
        (*(*(v31 - 8) + 32))(v9, v10, v31);
        v32 = type metadata accessor for USOParse(0);
        v33 = v32[5];
        v34 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v10[v33], 1, v34))
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v9[v33], &v10[v33], *(*(v35 - 8) + 64));
        }

        else
        {
          (*(*(v34 - 8) + 32))(&v9[v33], &v10[v33], v34);
          __swift_storeEnumTagSinglePayload(&v9[v33], 0, 1, v34);
        }

        *&v9[v32[6]] = *&v10[v32[6]];
        v46 = v32[7];
        v47 = &v9[v46];
        v48 = &v10[v46];
        v47[4] = v48[4];
        *v47 = *v48;
        v49 = type metadata accessor for LinkParse(0);
        *&v9[v49[5]] = *&v10[v49[5]];
        *&v9[v49[6]] = *&v10[v49[6]];
        *&v9[v49[7]] = *&v10[v49[7]];
        goto LABEL_26;
      case 8u:
        v15 = sub_1DD0DD12C();
        (*(*(v15 - 8) + 32))(v9, v10, v15);
        v16 = type metadata accessor for NLRouterParse(0);
        *&v9[*(v16 + 20)] = *&v10[*(v16 + 20)];
        v61 = v16;
        v17 = *(v16 + 24);
        v18 = &v9[v17];
        v19 = &v10[v17];
        v20 = type metadata accessor for USOParse(0);
        if (__swift_getEnumTagSinglePayload(v19, 1, v20))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v18, v19, *(*(v21 - 8) + 64));
        }

        else
        {
          v36 = sub_1DD0DB4BC();
          v60 = v18;
          (*(*(v36 - 8) + 32))(v18, v19, v36);
          v37 = v20[5];
          v38 = sub_1DD0DB3EC();
          v59 = v37;
          v39 = &v19[v37];
          v40 = v38;
          if (__swift_getEnumTagSinglePayload(v39, 1, v38))
          {
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            v42 = v60;
            memcpy(&v60[v59], &v19[v59], *(*(v41 - 8) + 64));
          }

          else
          {
            v58 = v40;
            (*(*(v40 - 8) + 32))(&v60[v59], &v19[v59], v40);
            v42 = v60;
            __swift_storeEnumTagSinglePayload(&v60[v59], 0, 1, v58);
          }

          *(v42 + v20[6]) = *&v19[v20[6]];
          v50 = v20[7];
          v51 = v42 + v50;
          v52 = &v19[v50];
          *(v51 + 4) = v52[4];
          *v51 = *v52;
          __swift_storeEnumTagSinglePayload(v42, 0, 1, v20);
        }

        *&v9[*(v61 + 28)] = *&v10[*(v61 + 28)];
        goto LABEL_26;
      case 9u:
        v24 = sub_1DD0DD08C();
        (*(*(v24 - 8) + 32))(v9, v10, v24);
LABEL_26:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v9, v10, *(*(v11 - 8) + 64));
        break;
    }

    *&a1[v7[6]] = *&a2[v7[6]];
    v53 = v7[7];
    v54 = &a1[v53];
    v55 = &a2[v53];
    v56 = *(v55 + 1);
    *v54 = *v55;
    *(v54 + 1) = v56;
    *(v54 + 4) = *(v55 + 4);
    a1[v7[8]] = a2[v7[8]];
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    *&a1[*(TupleTypeMetadata3 + 48)] = *&a2[*(TupleTypeMetadata3 + 48)];
    *&a1[*(TupleTypeMetadata3 + 64)] = *&a2[*(TupleTypeMetadata3 + 64)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v13 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v13);
  }
}

_BYTE *sub_1DCFBF2CC(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 - 8);
  (*(v5 + 8))(a1, a3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1DD0DB04C();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    v7 = type metadata accessor for Input(0);
    v8 = v7[5];
    v9 = &a1[v8];
    v10 = &a2[v8];
    v11 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v12 = sub_1DD0DC76C();
        (*(*(v12 - 8) + 32))(v9, v10, v12);
        goto LABEL_27;
      case 1u:
        v22 = sub_1DD0DC76C();
        (*(*(v22 - 8) + 32))(v9, v10, v22);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v9[*(v23 + 48)] = *&v10[*(v23 + 48)];
        goto LABEL_27;
      case 4u:
        v25 = sub_1DD0DB1EC();
        (*(*(v25 - 8) + 32))(v9, v10, v25);
        goto LABEL_27;
      case 6u:
        v26 = sub_1DD0DB4BC();
        (*(*(v26 - 8) + 32))(v9, v10, v26);
        v27 = type metadata accessor for USOParse(0);
        v28 = v27[5];
        v29 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v10[v28], 1, v29))
        {
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v9[v28], &v10[v28], *(*(v30 - 8) + 64));
        }

        else
        {
          (*(*(v29 - 8) + 32))(&v9[v28], &v10[v28], v29);
          __swift_storeEnumTagSinglePayload(&v9[v28], 0, 1, v29);
        }

        *&v9[v27[6]] = *&v10[v27[6]];
        v43 = v27[7];
        v44 = &v9[v43];
        v45 = &v10[v43];
        v44[4] = v45[4];
        *v44 = *v45;
        goto LABEL_27;
      case 7u:
        v31 = sub_1DD0DB4BC();
        (*(*(v31 - 8) + 32))(v9, v10, v31);
        v32 = type metadata accessor for USOParse(0);
        v33 = v32[5];
        v34 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v10[v33], 1, v34))
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v9[v33], &v10[v33], *(*(v35 - 8) + 64));
        }

        else
        {
          (*(*(v34 - 8) + 32))(&v9[v33], &v10[v33], v34);
          __swift_storeEnumTagSinglePayload(&v9[v33], 0, 1, v34);
        }

        *&v9[v32[6]] = *&v10[v32[6]];
        v46 = v32[7];
        v47 = &v9[v46];
        v48 = &v10[v46];
        v47[4] = v48[4];
        *v47 = *v48;
        v49 = type metadata accessor for LinkParse(0);
        *&v9[v49[5]] = *&v10[v49[5]];
        *&v9[v49[6]] = *&v10[v49[6]];
        *&v9[v49[7]] = *&v10[v49[7]];
        goto LABEL_27;
      case 8u:
        v15 = sub_1DD0DD12C();
        (*(*(v15 - 8) + 32))(v9, v10, v15);
        v16 = type metadata accessor for NLRouterParse(0);
        *&v9[*(v16 + 20)] = *&v10[*(v16 + 20)];
        v61 = v16;
        v17 = *(v16 + 24);
        v18 = &v9[v17];
        v19 = &v10[v17];
        v20 = type metadata accessor for USOParse(0);
        if (__swift_getEnumTagSinglePayload(v19, 1, v20))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v18, v19, *(*(v21 - 8) + 64));
        }

        else
        {
          v36 = sub_1DD0DB4BC();
          v60 = v18;
          (*(*(v36 - 8) + 32))(v18, v19, v36);
          v37 = v20[5];
          v38 = sub_1DD0DB3EC();
          v59 = v37;
          v39 = &v19[v37];
          v40 = v38;
          if (__swift_getEnumTagSinglePayload(v39, 1, v38))
          {
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            v42 = v60;
            memcpy(&v60[v59], &v19[v59], *(*(v41 - 8) + 64));
          }

          else
          {
            v58 = v40;
            (*(*(v40 - 8) + 32))(&v60[v59], &v19[v59], v40);
            v42 = v60;
            __swift_storeEnumTagSinglePayload(&v60[v59], 0, 1, v58);
          }

          *(v42 + v20[6]) = *&v19[v20[6]];
          v50 = v20[7];
          v51 = v42 + v50;
          v52 = &v19[v50];
          *(v51 + 4) = v52[4];
          *v51 = *v52;
          __swift_storeEnumTagSinglePayload(v42, 0, 1, v20);
        }

        *&v9[*(v61 + 28)] = *&v10[*(v61 + 28)];
        goto LABEL_27;
      case 9u:
        v24 = sub_1DD0DD08C();
        (*(*(v24 - 8) + 32))(v9, v10, v24);
LABEL_27:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v9, v10, *(*(v11 - 8) + 64));
        break;
    }

    *&a1[v7[6]] = *&a2[v7[6]];
    v53 = v7[7];
    v54 = &a1[v53];
    v55 = &a2[v53];
    v56 = *(v55 + 1);
    *v54 = *v55;
    *(v54 + 1) = v56;
    *(v54 + 4) = *(v55 + 4);
    a1[v7[8]] = a2[v7[8]];
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    *&a1[*(TupleTypeMetadata3 + 48)] = *&a2[*(TupleTypeMetadata3 + 48)];
    *&a1[*(TupleTypeMetadata3 + 64)] = *&a2[*(TupleTypeMetadata3 + 64)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(v5 + 64);

  return memcpy(a1, a2, v13);
}

uint64_t sub_1DCFBFBD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCFB613C(a1);
}

uint64_t sub_1DCFBFC98(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void sub_1DCFBFCFC()
{
  v2 = OUTLINED_FUNCTION_70();
  v3 = *(type metadata accessor for Input(v2) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970) - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1DCFB7080(v0, v1 + v4, v9, v10, v1 + v8, v11);
}

uint64_t objectdestroy_19Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  OUTLINED_FUNCTION_13_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCFBFEB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  OUTLINED_FUNCTION_20_0(v0);
  return sub_1DCFB77A4();
}

uint64_t sub_1DCFBFF48()
{
  v1 = OUTLINED_FUNCTION_70();
  v2(v1);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1DCFBFF98(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t objectdestroy_68Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_74Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroy_77Tm()
{

  OUTLINED_FUNCTION_18_3();

  return swift_deallocObject();
}

uint64_t objectdestroy_56Tm_0(void (*a1)(void))
{

  a1(*(v1 + 40));
  OUTLINED_FUNCTION_18_3();

  return swift_deallocObject();
}

uint64_t objectdestroy_59Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  OUTLINED_FUNCTION_18_3();

  return swift_deallocObject();
}

uint64_t sub_1DCFC0268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for Parse(319);
    if (v6 <= 0x3F)
    {
      result = sub_1DD0DD2DC();
      if (v7 <= 0x3F)
      {
        swift_initEnumMetadataMultiPayload();
        return 0;
      }
    }
  }

  return result;
}

unint64_t *sub_1DCFC036C(unint64_t *a1, id *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v12 = sub_1DD0DD2DC();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
LABEL_74:
      swift_storeEnumTagMultiPayload();
      return a1;
    case 1:
      v10 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v11 = sub_1DD0DC76C();
          (*(*(v11 - 8) + 16))(a1, a2, v11);
          goto LABEL_44;
        case 1u:
          v41 = sub_1DD0DC76C();
          (*(*(v41 - 8) + 16))(a1, a2, v41);
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *(a1 + *(v42 + 48)) = *(a2 + *(v42 + 48));
          sub_1DD0DCF8C();
        case 2u:
          v35 = a2[1];
          *a1 = *a2;
          a1[1] = v35;
          a1[2] = a2[2];

          goto LABEL_44;
        case 3u:
          *a1 = *a2;
          swift_unknownObjectRetain();
          goto LABEL_44;
        case 4u:
          v33 = sub_1DD0DB1EC();
          (*(*(v33 - 8) + 16))(a1, a2, v33);
          goto LABEL_44;
        case 5u:
          v43 = *a2;
          *a1 = *a2;
          v44 = v43;
          goto LABEL_44;
        case 6u:
          v45 = sub_1DD0DB4BC();
          (*(*(v45 - 8) + 16))(a1, a2, v45);
          v46 = type metadata accessor for USOParse(0);
          v47 = v46[5];
          v48 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(a2 + v47, 1, v48))
          {
            v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(a1 + v47, a2 + v47, *(*(v49 - 8) + 64));
          }

          else
          {
            (*(*(v48 - 8) + 16))(a1 + v47, a2 + v47, v48);
            __swift_storeEnumTagSinglePayload(a1 + v47, 0, 1, v48);
          }

          v81 = v46[6];
          v82 = (a1 + v81);
          v83 = (a2 + v81);
          v84 = v83[1];
          *v82 = *v83;
          v82[1] = v84;
          v85 = v46[7];
          v86 = a1 + v85;
          v87 = a2 + v85;
          v86[4] = v87[4];
          *v86 = *v87;

          goto LABEL_44;
        case 7u:
          v36 = sub_1DD0DB4BC();
          (*(*(v36 - 8) + 16))(a1, a2, v36);
          v37 = type metadata accessor for USOParse(0);
          v38 = v37[5];
          v39 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(a2 + v38, 1, v39))
          {
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(a1 + v38, a2 + v38, *(*(v40 - 8) + 64));
          }

          else
          {
            (*(*(v39 - 8) + 16))(a1 + v38, a2 + v38, v39);
            __swift_storeEnumTagSinglePayload(a1 + v38, 0, 1, v39);
          }

          v61 = v37[6];
          v62 = (a1 + v61);
          v63 = (a2 + v61);
          v64 = v63[1];
          *v62 = *v63;
          v62[1] = v64;
          v65 = v37[7];
          v66 = a1 + v65;
          v67 = a2 + v65;
          v66[4] = v67[4];
          *v66 = *v67;
          v68 = type metadata accessor for LinkParse(0);
          v69 = v68[5];
          v70 = (a1 + v69);
          v71 = (a2 + v69);
          v72 = v71[1];
          *v70 = *v71;
          v70[1] = v72;
          v73 = v68[6];
          v74 = (a1 + v73);
          v75 = (a2 + v73);
          v76 = v75[1];
          *v74 = *v75;
          v74[1] = v76;
          v77 = v68[7];
          v78 = (a1 + v77);
          v79 = (a2 + v77);
          v80 = v79[1];
          *v78 = *v79;
          v78[1] = v80;

          goto LABEL_44;
        case 8u:
          v50 = sub_1DD0DD12C();
          (*(*(v50 - 8) + 16))(a1, a2, v50);
          v51 = type metadata accessor for NLRouterParse(0);
          v52 = v51[5];
          v53 = (a1 + v52);
          v54 = (a2 + v52);
          v55 = v54[1];
          *v53 = *v54;
          v53[1] = v55;
          v56 = v51[6];
          v57 = a1 + v56;
          v58 = a2 + v56;
          v59 = type metadata accessor for USOParse(0);

          if (__swift_getEnumTagSinglePayload(v58, 1, v59))
          {
            v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v57, v58, *(*(v60 - 8) + 64));
          }

          else
          {
            v88 = sub_1DD0DB4BC();
            (*(*(v88 - 8) + 16))(v57, v58, v88);
            v89 = v59[5];
            v90 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v58[v89], 1, v90))
            {
              v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v57[v89], &v58[v89], *(*(v91 - 8) + 64));
            }

            else
            {
              (*(*(v90 - 8) + 16))(&v57[v89], &v58[v89], v90);
              __swift_storeEnumTagSinglePayload(&v57[v89], 0, 1, v90);
            }

            v92 = v59[6];
            v93 = &v57[v92];
            v94 = &v58[v92];
            v95 = *(v94 + 1);
            *v93 = *v94;
            *(v93 + 1) = v95;
            v96 = v59[7];
            v97 = &v57[v96];
            v98 = &v58[v96];
            v97[4] = v98[4];
            *v97 = *v98;

            __swift_storeEnumTagSinglePayload(v57, 0, 1, v59);
          }

          v99 = v51[7];
          v100 = *(a2 + v99);
          *(a1 + v99) = v100;
          v101 = v100;
          goto LABEL_44;
        case 9u:
          v34 = sub_1DD0DD08C();
          (*(*(v34 - 8) + 16))(a1, a2, v34);
LABEL_44:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v10 - 8) + 64));
          break;
      }

      goto LABEL_74;
    case 0:
      v9 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(0, *(a3 + 16), *(a3 + 24), v8);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          *a1 = *a2;
          sub_1DD0DCF8C();
        case 1u:
          v22 = sub_1DD0DB04C();
          (*(*(v22 - 8) + 16))(a1, a2, v22);
          v23 = type metadata accessor for Input(0);
          v24 = v23[5];
          v25 = a1 + v24;
          v26 = a2 + v24;
          v27 = type metadata accessor for Parse(0);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v28 = sub_1DD0DC76C();
              (*(*(v28 - 8) + 16))(v25, v26, v28);
              goto LABEL_68;
            case 1u:
              v108 = sub_1DD0DC76C();
              (*(*(v108 - 8) + 16))(v25, v26, v108);
              v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
              *&v25[*(v109 + 48)] = *&v26[*(v109 + 48)];
              sub_1DD0DCF8C();
            case 2u:
              v104 = *(v26 + 1);
              *v25 = *v26;
              *(v25 + 1) = v104;
              *(v25 + 2) = *(v26 + 2);

              goto LABEL_68;
            case 3u:
              *v25 = *v26;
              swift_unknownObjectRetain();
              goto LABEL_68;
            case 4u:
              v102 = sub_1DD0DB1EC();
              (*(*(v102 - 8) + 16))(v25, v26, v102);
              goto LABEL_68;
            case 5u:
              v110 = *v26;
              *v25 = *v26;
              v111 = v110;
              goto LABEL_68;
            case 6u:
              v112 = sub_1DD0DB4BC();
              (*(*(v112 - 8) + 16))(v25, v26, v112);
              v183 = type metadata accessor for USOParse(0);
              v113 = v183[5];
              v179 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v26[v113], 1, v179))
              {
                v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v25[v113], &v26[v113], *(*(v114 - 8) + 64));
              }

              else
              {
                (*(*(v179 - 8) + 16))(&v25[v113], &v26[v113]);
                __swift_storeEnumTagSinglePayload(&v25[v113], 0, 1, v179);
              }

              v144 = v183[6];
              v145 = &v25[v144];
              v146 = &v26[v144];
              v147 = *(v146 + 1);
              *v145 = *v146;
              *(v145 + 1) = v147;
              v148 = v183[7];
              v149 = &v25[v148];
              v150 = &v26[v148];
              v149[4] = v150[4];
              *v149 = *v150;

              goto LABEL_68;
            case 7u:
              v105 = sub_1DD0DB4BC();
              (*(*(v105 - 8) + 16))(v25, v26, v105);
              v182 = type metadata accessor for USOParse(0);
              v106 = v182[5];
              v178 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v26[v106], 1, v178))
              {
                v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v25[v106], &v26[v106], *(*(v107 - 8) + 64));
              }

              else
              {
                (*(*(v178 - 8) + 16))(&v25[v106], &v26[v106]);
                __swift_storeEnumTagSinglePayload(&v25[v106], 0, 1, v178);
              }

              v126 = v182[6];
              v127 = &v25[v126];
              v128 = &v26[v126];
              v181 = *(v128 + 1);
              *v127 = *v128;
              *(v127 + 1) = v181;
              v129 = v182[7];
              v130 = &v25[v129];
              v131 = &v26[v129];
              v130[4] = v131[4];
              *v130 = *v131;
              v132 = type metadata accessor for LinkParse(0);
              v133 = v132[5];
              v134 = &v25[v133];
              v135 = &v26[v133];
              v185 = *(v135 + 1);
              *v134 = *v135;
              *(v134 + 1) = v185;
              v136 = v132[6];
              v137 = &v25[v136];
              v138 = &v26[v136];
              v139 = *(v138 + 1);
              *v137 = *v138;
              *(v137 + 1) = v139;
              v140 = v132[7];
              v141 = &v25[v140];
              v142 = &v26[v140];
              v143 = *(v142 + 1);
              *v141 = *v142;
              *(v141 + 1) = v143;

              goto LABEL_68;
            case 8u:
              v115 = sub_1DD0DD12C();
              (*(*(v115 - 8) + 16))(v25, v26, v115);
              v116 = type metadata accessor for NLRouterParse(0);
              v117 = *(v116 + 20);
              v118 = &v25[v117];
              v119 = &v26[v117];
              v120 = *(v119 + 1);
              *v118 = *v119;
              *(v118 + 1) = v120;
              v176 = v25;
              v177 = v116;
              v121 = *(v116 + 24);
              v184 = &v25[v121];
              v122 = &v26[v121];
              v123 = type metadata accessor for USOParse(0);

              v180 = v122;
              if (__swift_getEnumTagSinglePayload(v122, 1, v123))
              {
                v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
                memcpy(v184, v122, *(*(v124 - 8) + 64));
                v125 = v176;
              }

              else
              {
                v151 = sub_1DD0DB4BC();
                (*(*(v151 - 8) + 16))(v184, v122, v151);
                v175 = v123;
                v152 = *(v123 + 20);
                v153 = sub_1DD0DB3EC();
                if (__swift_getEnumTagSinglePayload(&v180[v152], 1, v153))
                {
                  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&v184[v152], &v180[v152], *(*(v154 - 8) + 64));
                }

                else
                {
                  (*(*(v153 - 8) + 16))(&v184[v152], &v180[v152], v153);
                  __swift_storeEnumTagSinglePayload(&v184[v152], 0, 1, v153);
                }

                v125 = v176;
                v155 = *(v175 + 24);
                v156 = &v184[v155];
                v157 = &v180[v155];
                v158 = *(v157 + 1);
                *v156 = *v157;
                *(v156 + 1) = v158;
                v159 = *(v175 + 28);
                v160 = &v184[v159];
                v161 = &v180[v159];
                v160[4] = v161[4];
                *v160 = *v161;

                __swift_storeEnumTagSinglePayload(v184, 0, 1, v175);
              }

              v162 = *(v177 + 28);
              v163 = *&v26[v162];
              *(v125 + v162) = v163;
              v164 = v163;
              goto LABEL_68;
            case 9u:
              v103 = sub_1DD0DD08C();
              (*(*(v103 - 8) + 16))(v25, v26, v103);
LABEL_68:
              swift_storeEnumTagMultiPayload();
              break;
            default:
              memcpy(v25, v26, *(*(v27 - 8) + 64));
              break;
          }

          *(a1 + v23[6]) = *(a2 + v23[6]);
          v165 = v23[7];
          v166 = a1 + v165;
          v167 = a2 + v165;
          v168 = *(a2 + v165 + 24);

          if (v168)
          {
            v169 = *(v167 + 4);
            *(v166 + 3) = v168;
            *(v166 + 4) = v169;
            (**(v168 - 8))(v166, v167, v168);
          }

          else
          {
            v170 = *(v167 + 1);
            *v166 = *v167;
            *(v166 + 1) = v170;
            *(v166 + 4) = *(v167 + 4);
          }

          *(a1 + v23[8]) = *(a2 + v23[8]);
          swift_getAssociatedTypeWitness();
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          v172 = *(TupleTypeMetadata3 + 48);
          v173 = *(a2 + v172);
          *(a1 + v172) = v173;
          *(a1 + *(TupleTypeMetadata3 + 64)) = *(a2 + *(TupleTypeMetadata3 + 64));
          v174 = v173;
          sub_1DD0DCF8C();
        case 2u:
          v16 = *(a2 + 3);
          *(a1 + 3) = v16;
          (**(v16 - 8))(a1, a2);
          v17 = a2[5];
          v18 = a2[6];
          a1[5] = v17;
          a1[6] = v18;
          v19 = v17;
          sub_1DD0DCF8C();
        case 3u:
          v20 = *a2;
          *a1 = *a2;
          v21 = v20;
          goto LABEL_73;
        case 4u:
          v15 = a2[1];
          *a1 = *a2;
          a1[1] = v15;
          *(a1 + 5) = *(a2 + 5);
          sub_1DD0DCF8C();
        case 5u:
          v30 = *a2;
          v29 = a2[1];
          sub_1DCBF4C98(v30, v29);
          *a1 = v30;
          a1[1] = v29;
          goto LABEL_73;
        case 6u:
          v31 = *a2;
          v32 = *a2;
          *a1 = v31;
          *(a1 + 8) = *(a2 + 8);
LABEL_73:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v9 - 8) + 64));
          break;
      }

      goto LABEL_74;
  }

  v13 = *(v6 + 64);

  return memcpy(a1, a2, v13);
}

void sub_1DCFC162C(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v6 = sub_1DD0DD2DC();
LABEL_8:
      v7 = *(*(v6 - 8) + 8);

      v7(a1, v6);
      break;
    case 1:
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v6 = sub_1DD0DC76C();
          goto LABEL_8;
        case 1u:
          v18 = sub_1DD0DC76C();
          (*(*(v18 - 8) + 8))(a1, v18);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
LABEL_68:

          return;
        case 2u:

          goto LABEL_35;
        case 3u:

          swift_unknownObjectRelease();
          return;
        case 4u:
          v6 = sub_1DD0DB1EC();
          goto LABEL_8;
        case 5u:
LABEL_11:
          v8 = *a1;
          goto LABEL_43;
        case 6u:
          v19 = sub_1DD0DB4BC();
          (*(*(v19 - 8) + 8))(a1, v19);
          v20 = *(type metadata accessor for USOParse(0) + 20);
          v21 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(a1 + v20, 1, v21))
          {
            (*(*(v21 - 8) + 8))(a1 + v20, v21);
          }

          goto LABEL_35;
        case 7u:
          v15 = sub_1DD0DB4BC();
          (*(*(v15 - 8) + 8))(a1, v15);
          v16 = *(type metadata accessor for USOParse(0) + 20);
          v17 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(a1 + v16, 1, v17))
          {
            (*(*(v17 - 8) + 8))(a1 + v16, v17);
          }

          type metadata accessor for LinkParse(0);

LABEL_35:

          break;
        case 8u:
          v22 = sub_1DD0DD12C();
          (*(*(v22 - 8) + 8))(a1, v22);
          v23 = type metadata accessor for NLRouterParse(0);

          v24 = a1 + *(v23 + 24);
          v25 = type metadata accessor for USOParse(0);
          if (!__swift_getEnumTagSinglePayload(v24, 1, v25))
          {
            v26 = sub_1DD0DB4BC();
            (*(*(v26 - 8) + 8))(v24, v26);
            v27 = *(v25 + 20);
            v28 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v24 + v27, 1, v28))
            {
              (*(*(v28 - 8) + 8))(v24 + v27, v28);
            }
          }

          v8 = *(a1 + *(v23 + 28));
LABEL_43:

LABEL_22:

          break;
        case 9u:
          v6 = sub_1DD0DD08C();
          goto LABEL_8;
        default:
          return;
      }

      break;
    case 0:
      type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(0, *(a2 + 16), *(a2 + 24), v5);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_68;
        case 1u:
          v9 = sub_1DD0DB04C();
          (*(*(v9 - 8) + 8))(a1, v9);
          v10 = type metadata accessor for Input(0);
          v11 = (a1 + *(v10 + 20));
          type metadata accessor for Parse(0);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v12 = sub_1DD0DC76C();
              goto LABEL_48;
            case 1u:
              v32 = sub_1DD0DC76C();
              (*(*(v32 - 8) + 8))(v11, v32);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

              break;
            case 2u:

              goto LABEL_58;
            case 3u:
              swift_unknownObjectRelease();
              break;
            case 4u:
              v12 = sub_1DD0DB1EC();
              goto LABEL_48;
            case 5u:
              v33 = *v11;
              goto LABEL_64;
            case 6u:
              v34 = sub_1DD0DB4BC();
              (*(*(v34 - 8) + 8))(v11, v34);
              v35 = *(type metadata accessor for USOParse(0) + 20);
              v36 = sub_1DD0DB3EC();
              if (!__swift_getEnumTagSinglePayload(v11 + v35, 1, v36))
              {
                (*(*(v36 - 8) + 8))(v11 + v35, v36);
              }

              goto LABEL_58;
            case 7u:
              v29 = sub_1DD0DB4BC();
              (*(*(v29 - 8) + 8))(v11, v29);
              v30 = *(type metadata accessor for USOParse(0) + 20);
              v31 = sub_1DD0DB3EC();
              if (!__swift_getEnumTagSinglePayload(v11 + v30, 1, v31))
              {
                (*(*(v31 - 8) + 8))(v11 + v30, v31);
              }

              type metadata accessor for LinkParse(0);

LABEL_58:

              break;
            case 8u:
              v37 = sub_1DD0DD12C();
              (*(*(v37 - 8) + 8))(v11, v37);
              v38 = type metadata accessor for NLRouterParse(0);

              v39 = v11 + *(v38 + 24);
              v40 = type metadata accessor for USOParse(0);
              if (!__swift_getEnumTagSinglePayload(v39, 1, v40))
              {
                v41 = sub_1DD0DB4BC();
                (*(*(v41 - 8) + 8))(v39, v41);
                v42 = *(v40 + 20);
                v43 = sub_1DD0DB3EC();
                if (!__swift_getEnumTagSinglePayload(v39 + v42, 1, v43))
                {
                  (*(*(v43 - 8) + 8))(v39 + v42, v43);
                }
              }

              v33 = *(v11 + *(v38 + 28));
LABEL_64:

              break;
            case 9u:
              v12 = sub_1DD0DD08C();
LABEL_48:
              (*(*(v12 - 8) + 8))(v11, v12);
              break;
            default:
              break;
          }

          v44 = (a1 + *(v10 + 28));
          if (v44[3])
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v44);
          }

          swift_getAssociatedTypeWitness();
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);

          goto LABEL_68;
        case 2u:
          __swift_destroy_boxed_opaque_existential_1Tm(a1);

          goto LABEL_68;
        case 3u:
          goto LABEL_11;
        case 4u:

          __swift_destroy_boxed_opaque_existential_1Tm((a1 + 16));
          break;
        case 5u:
          v13 = *a1;
          v14 = *(a1 + 8);

          sub_1DCC2315C(v13, v14);
          break;
        case 6u:
          v8 = *a1;

          goto LABEL_22;
        default:
          return;
      }

      break;
  }
}

unint64_t *sub_1DCFC208C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v11 = sub_1DD0DD2DC();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
LABEL_72:
      swift_storeEnumTagMultiPayload();
      return a1;
    case 1:
      v9 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v10 = sub_1DD0DC76C();
          (*(*(v10 - 8) + 16))(a1, a2, v10);
          goto LABEL_42;
        case 1u:
          v40 = sub_1DD0DC76C();
          (*(*(v40 - 8) + 16))(a1, a2, v40);
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *(a1 + *(v41 + 48)) = *(a2 + *(v41 + 48));
          sub_1DD0DCF8C();
        case 2u:
          v34 = a2[1];
          *a1 = *a2;
          a1[1] = v34;
          a1[2] = a2[2];

          goto LABEL_42;
        case 3u:
          *a1 = *a2;
          swift_unknownObjectRetain();
          goto LABEL_42;
        case 4u:
          v32 = sub_1DD0DB1EC();
          (*(*(v32 - 8) + 16))(a1, a2, v32);
          goto LABEL_42;
        case 5u:
          v42 = *a2;
          *a1 = *a2;
          v43 = v42;
          goto LABEL_42;
        case 6u:
          v44 = sub_1DD0DB4BC();
          (*(*(v44 - 8) + 16))(a1, a2, v44);
          v45 = type metadata accessor for USOParse(0);
          v46 = v45[5];
          v47 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(a2 + v46, 1, v47))
          {
            v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(a1 + v46, a2 + v46, *(*(v48 - 8) + 64));
          }

          else
          {
            (*(*(v47 - 8) + 16))(a1 + v46, a2 + v46, v47);
            __swift_storeEnumTagSinglePayload(a1 + v46, 0, 1, v47);
          }

          v80 = v45[6];
          v81 = (a1 + v80);
          v82 = (a2 + v80);
          v83 = v82[1];
          *v81 = *v82;
          v81[1] = v83;
          v84 = v45[7];
          v85 = a1 + v84;
          v86 = a2 + v84;
          v85[4] = v86[4];
          *v85 = *v86;

          goto LABEL_42;
        case 7u:
          v35 = sub_1DD0DB4BC();
          (*(*(v35 - 8) + 16))(a1, a2, v35);
          v36 = type metadata accessor for USOParse(0);
          v37 = v36[5];
          v38 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(a2 + v37, 1, v38))
          {
            v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(a1 + v37, a2 + v37, *(*(v39 - 8) + 64));
          }

          else
          {
            (*(*(v38 - 8) + 16))(a1 + v37, a2 + v37, v38);
            __swift_storeEnumTagSinglePayload(a1 + v37, 0, 1, v38);
          }

          v60 = v36[6];
          v61 = (a1 + v60);
          v62 = (a2 + v60);
          v63 = v62[1];
          *v61 = *v62;
          v61[1] = v63;
          v64 = v36[7];
          v65 = a1 + v64;
          v66 = a2 + v64;
          v65[4] = v66[4];
          *v65 = *v66;
          v67 = type metadata accessor for LinkParse(0);
          v68 = v67[5];
          v69 = (a1 + v68);
          v70 = (a2 + v68);
          v71 = v70[1];
          *v69 = *v70;
          v69[1] = v71;
          v72 = v67[6];
          v73 = (a1 + v72);
          v74 = (a2 + v72);
          v75 = v74[1];
          *v73 = *v74;
          v73[1] = v75;
          v76 = v67[7];
          v77 = (a1 + v76);
          v78 = (a2 + v76);
          v79 = v78[1];
          *v77 = *v78;
          v77[1] = v79;

          goto LABEL_42;
        case 8u:
          v49 = sub_1DD0DD12C();
          (*(*(v49 - 8) + 16))(a1, a2, v49);
          v50 = type metadata accessor for NLRouterParse(0);
          v51 = v50[5];
          v52 = (a1 + v51);
          v53 = (a2 + v51);
          v54 = v53[1];
          *v52 = *v53;
          v52[1] = v54;
          v55 = v50[6];
          v56 = a1 + v55;
          v57 = a2 + v55;
          v58 = type metadata accessor for USOParse(0);

          if (__swift_getEnumTagSinglePayload(v57, 1, v58))
          {
            v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v56, v57, *(*(v59 - 8) + 64));
          }

          else
          {
            v87 = sub_1DD0DB4BC();
            (*(*(v87 - 8) + 16))(v56, v57, v87);
            v88 = v58[5];
            v89 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v57[v88], 1, v89))
            {
              v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v56[v88], &v57[v88], *(*(v90 - 8) + 64));
            }

            else
            {
              (*(*(v89 - 8) + 16))(&v56[v88], &v57[v88], v89);
              __swift_storeEnumTagSinglePayload(&v56[v88], 0, 1, v89);
            }

            v91 = v58[6];
            v92 = &v56[v91];
            v93 = &v57[v91];
            v94 = *(v93 + 1);
            *v92 = *v93;
            *(v92 + 1) = v94;
            v95 = v58[7];
            v96 = &v56[v95];
            v97 = &v57[v95];
            v96[4] = v97[4];
            *v96 = *v97;

            __swift_storeEnumTagSinglePayload(v56, 0, 1, v58);
          }

          v98 = v50[7];
          v99 = *(a2 + v98);
          *(a1 + v98) = v99;
          v100 = v99;
          goto LABEL_42;
        case 9u:
          v33 = sub_1DD0DD08C();
          (*(*(v33 - 8) + 16))(a1, a2, v33);
LABEL_42:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v9 - 8) + 64));
          break;
      }

      goto LABEL_72;
    case 0:
      v8 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(0, *(a3 + 16), *(a3 + 24), v7);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          *a1 = *a2;
          sub_1DD0DCF8C();
        case 1u:
          v21 = sub_1DD0DB04C();
          (*(*(v21 - 8) + 16))(a1, a2, v21);
          v22 = type metadata accessor for Input(0);
          v23 = v22[5];
          v24 = a1 + v23;
          v25 = a2 + v23;
          v26 = type metadata accessor for Parse(0);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v27 = sub_1DD0DC76C();
              (*(*(v27 - 8) + 16))(v24, v25, v27);
              goto LABEL_66;
            case 1u:
              v107 = sub_1DD0DC76C();
              (*(*(v107 - 8) + 16))(v24, v25, v107);
              v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
              *&v24[*(v108 + 48)] = *&v25[*(v108 + 48)];
              sub_1DD0DCF8C();
            case 2u:
              v103 = *(v25 + 1);
              *v24 = *v25;
              *(v24 + 1) = v103;
              *(v24 + 2) = *(v25 + 2);

              goto LABEL_66;
            case 3u:
              *v24 = *v25;
              swift_unknownObjectRetain();
              goto LABEL_66;
            case 4u:
              v101 = sub_1DD0DB1EC();
              (*(*(v101 - 8) + 16))(v24, v25, v101);
              goto LABEL_66;
            case 5u:
              v109 = *v25;
              *v24 = *v25;
              v110 = v109;
              goto LABEL_66;
            case 6u:
              v111 = sub_1DD0DB4BC();
              (*(*(v111 - 8) + 16))(v24, v25, v111);
              v182 = type metadata accessor for USOParse(0);
              v112 = v182[5];
              v178 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v25[v112], 1, v178))
              {
                v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v24[v112], &v25[v112], *(*(v113 - 8) + 64));
              }

              else
              {
                (*(*(v178 - 8) + 16))(&v24[v112], &v25[v112]);
                __swift_storeEnumTagSinglePayload(&v24[v112], 0, 1, v178);
              }

              v143 = v182[6];
              v144 = &v24[v143];
              v145 = &v25[v143];
              v146 = *(v145 + 1);
              *v144 = *v145;
              *(v144 + 1) = v146;
              v147 = v182[7];
              v148 = &v24[v147];
              v149 = &v25[v147];
              v148[4] = v149[4];
              *v148 = *v149;

              goto LABEL_66;
            case 7u:
              v104 = sub_1DD0DB4BC();
              (*(*(v104 - 8) + 16))(v24, v25, v104);
              v181 = type metadata accessor for USOParse(0);
              v105 = v181[5];
              v177 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v25[v105], 1, v177))
              {
                v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v24[v105], &v25[v105], *(*(v106 - 8) + 64));
              }

              else
              {
                (*(*(v177 - 8) + 16))(&v24[v105], &v25[v105]);
                __swift_storeEnumTagSinglePayload(&v24[v105], 0, 1, v177);
              }

              v125 = v181[6];
              v126 = &v24[v125];
              v127 = &v25[v125];
              v180 = *(v127 + 1);
              *v126 = *v127;
              *(v126 + 1) = v180;
              v128 = v181[7];
              v129 = &v24[v128];
              v130 = &v25[v128];
              v129[4] = v130[4];
              *v129 = *v130;
              v131 = type metadata accessor for LinkParse(0);
              v132 = v131[5];
              v133 = &v24[v132];
              v134 = &v25[v132];
              v184 = *(v134 + 1);
              *v133 = *v134;
              *(v133 + 1) = v184;
              v135 = v131[6];
              v136 = &v24[v135];
              v137 = &v25[v135];
              v138 = *(v137 + 1);
              *v136 = *v137;
              *(v136 + 1) = v138;
              v139 = v131[7];
              v140 = &v24[v139];
              v141 = &v25[v139];
              v142 = *(v141 + 1);
              *v140 = *v141;
              *(v140 + 1) = v142;

              goto LABEL_66;
            case 8u:
              v114 = sub_1DD0DD12C();
              (*(*(v114 - 8) + 16))(v24, v25, v114);
              v115 = type metadata accessor for NLRouterParse(0);
              v116 = *(v115 + 20);
              v117 = &v24[v116];
              v118 = &v25[v116];
              v119 = *(v118 + 1);
              *v117 = *v118;
              *(v117 + 1) = v119;
              v175 = v24;
              v176 = v115;
              v120 = *(v115 + 24);
              v183 = &v24[v120];
              v121 = &v25[v120];
              v122 = type metadata accessor for USOParse(0);

              v179 = v121;
              if (__swift_getEnumTagSinglePayload(v121, 1, v122))
              {
                v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
                memcpy(v183, v121, *(*(v123 - 8) + 64));
                v124 = v175;
              }

              else
              {
                v150 = sub_1DD0DB4BC();
                (*(*(v150 - 8) + 16))(v183, v121, v150);
                v174 = v122;
                v151 = *(v122 + 20);
                v152 = sub_1DD0DB3EC();
                if (__swift_getEnumTagSinglePayload(&v179[v151], 1, v152))
                {
                  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&v183[v151], &v179[v151], *(*(v153 - 8) + 64));
                }

                else
                {
                  (*(*(v152 - 8) + 16))(&v183[v151], &v179[v151], v152);
                  __swift_storeEnumTagSinglePayload(&v183[v151], 0, 1, v152);
                }

                v124 = v175;
                v154 = *(v174 + 24);
                v155 = &v183[v154];
                v156 = &v179[v154];
                v157 = *(v156 + 1);
                *v155 = *v156;
                *(v155 + 1) = v157;
                v158 = *(v174 + 28);
                v159 = &v183[v158];
                v160 = &v179[v158];
                v159[4] = v160[4];
                *v159 = *v160;

                __swift_storeEnumTagSinglePayload(v183, 0, 1, v174);
              }

              v161 = *(v176 + 28);
              v162 = *&v25[v161];
              *(v124 + v161) = v162;
              v163 = v162;
              goto LABEL_66;
            case 9u:
              v102 = sub_1DD0DD08C();
              (*(*(v102 - 8) + 16))(v24, v25, v102);
LABEL_66:
              swift_storeEnumTagMultiPayload();
              break;
            default:
              memcpy(v24, v25, *(*(v26 - 8) + 64));
              break;
          }

          *(a1 + v22[6]) = *(a2 + v22[6]);
          v164 = v22[7];
          v165 = a1 + v164;
          v166 = a2 + v164;
          v167 = *(a2 + v164 + 24);

          if (v167)
          {
            v168 = *(v166 + 4);
            *(v165 + 3) = v167;
            *(v165 + 4) = v168;
            (**(v167 - 8))(v165, v166, v167);
          }

          else
          {
            v169 = *(v166 + 1);
            *v165 = *v166;
            *(v165 + 1) = v169;
            *(v165 + 4) = *(v166 + 4);
          }

          *(a1 + v22[8]) = *(a2 + v22[8]);
          swift_getAssociatedTypeWitness();
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          v171 = *(TupleTypeMetadata3 + 48);
          v172 = *(a2 + v171);
          *(a1 + v171) = v172;
          *(a1 + *(TupleTypeMetadata3 + 64)) = *(a2 + *(TupleTypeMetadata3 + 64));
          v173 = v172;
          sub_1DD0DCF8C();
        case 2u:
          v15 = *(a2 + 3);
          *(a1 + 3) = v15;
          (**(v15 - 8))(a1, a2);
          v16 = a2[5];
          v17 = a2[6];
          a1[5] = v16;
          a1[6] = v17;
          v18 = v16;
          sub_1DD0DCF8C();
        case 3u:
          v19 = *a2;
          *a1 = *a2;
          v20 = v19;
          goto LABEL_71;
        case 4u:
          v14 = a2[1];
          *a1 = *a2;
          a1[1] = v14;
          *(a1 + 5) = *(a2 + 5);
          sub_1DD0DCF8C();
        case 5u:
          v29 = *a2;
          v28 = a2[1];
          sub_1DCBF4C98(v29, v28);
          *a1 = v29;
          a1[1] = v28;
          goto LABEL_71;
        case 6u:
          v30 = *a2;
          v31 = *a2;
          *a1 = v30;
          *(a1 + 8) = *(a2 + 8);
LABEL_71:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          break;
      }

      goto LABEL_72;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

unint64_t *sub_1DCFC330C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v6 = *(a3 - 8);
  (*(v6 + 8))(a1, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v12 = sub_1DD0DD2DC();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
LABEL_73:
      swift_storeEnumTagMultiPayload();
      return a1;
    case 1:
      v10 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v11 = sub_1DD0DC76C();
          (*(*(v11 - 8) + 16))(a1, a2, v11);
          goto LABEL_43;
        case 1u:
          v38 = sub_1DD0DC76C();
          (*(*(v38 - 8) + 16))(a1, a2, v38);
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *(a1 + *(v39 + 48)) = *(a2 + *(v39 + 48));
          sub_1DD0DCF8C();
        case 2u:
          *a1 = *a2;
          a1[1] = a2[1];
          a1[2] = a2[2];

          goto LABEL_43;
        case 3u:
          *a1 = *a2;
          swift_unknownObjectRetain();
          goto LABEL_43;
        case 4u:
          v31 = sub_1DD0DB1EC();
          (*(*(v31 - 8) + 16))(a1, a2, v31);
          goto LABEL_43;
        case 5u:
          v40 = *a2;
          *a1 = *a2;
          v41 = v40;
          goto LABEL_43;
        case 6u:
          v42 = sub_1DD0DB4BC();
          (*(*(v42 - 8) + 16))(a1, a2, v42);
          v43 = type metadata accessor for USOParse(0);
          v44 = v43[5];
          v45 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(a2 + v44, 1, v45))
          {
            v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(a1 + v44, a2 + v44, *(*(v46 - 8) + 64));
          }

          else
          {
            (*(*(v45 - 8) + 16))(a1 + v44, a2 + v44, v45);
            __swift_storeEnumTagSinglePayload(a1 + v44, 0, 1, v45);
          }

          v74 = v43[6];
          v75 = (a1 + v74);
          v76 = (a2 + v74);
          *v75 = *v76;
          v75[1] = v76[1];
          v77 = v43[7];
          v78 = a1 + v77;
          v79 = a2 + v77;
          v80 = *v79;
          v78[4] = v79[4];
          *v78 = v80;

          goto LABEL_43;
        case 7u:
          v33 = sub_1DD0DB4BC();
          (*(*(v33 - 8) + 16))(a1, a2, v33);
          v34 = type metadata accessor for USOParse(0);
          v35 = v34[5];
          v36 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(a2 + v35, 1, v36))
          {
            v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(a1 + v35, a2 + v35, *(*(v37 - 8) + 64));
          }

          else
          {
            (*(*(v36 - 8) + 16))(a1 + v35, a2 + v35, v36);
            __swift_storeEnumTagSinglePayload(a1 + v35, 0, 1, v36);
          }

          v57 = v34[6];
          v58 = (a1 + v57);
          v59 = (a2 + v57);
          *v58 = *v59;
          v58[1] = v59[1];
          v60 = v34[7];
          v61 = a1 + v60;
          v62 = a2 + v60;
          v63 = *v62;
          v61[4] = v62[4];
          *v61 = v63;
          v64 = type metadata accessor for LinkParse(0);
          v65 = v64[5];
          v66 = (a1 + v65);
          v67 = (a2 + v65);
          *v66 = *v67;
          v66[1] = v67[1];
          v68 = v64[6];
          v69 = (a1 + v68);
          v70 = (a2 + v68);
          *v69 = *v70;
          v69[1] = v70[1];
          v71 = v64[7];
          v72 = (a1 + v71);
          v73 = (a2 + v71);
          *v72 = *v73;
          v72[1] = v73[1];

          goto LABEL_43;
        case 8u:
          v47 = sub_1DD0DD12C();
          (*(*(v47 - 8) + 16))(a1, a2, v47);
          v48 = type metadata accessor for NLRouterParse(0);
          v49 = v48[5];
          v50 = (a1 + v49);
          v51 = (a2 + v49);
          *v50 = *v51;
          v50[1] = v51[1];
          v52 = v48[6];
          v53 = a1 + v52;
          v54 = a2 + v52;
          v55 = type metadata accessor for USOParse(0);

          if (__swift_getEnumTagSinglePayload(v54, 1, v55))
          {
            v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v53, v54, *(*(v56 - 8) + 64));
          }

          else
          {
            v81 = sub_1DD0DB4BC();
            (*(*(v81 - 8) + 16))(v53, v54, v81);
            v82 = v55[5];
            v83 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v54[v82], 1, v83))
            {
              v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v53[v82], &v54[v82], *(*(v84 - 8) + 64));
            }

            else
            {
              (*(*(v83 - 8) + 16))(&v53[v82], &v54[v82], v83);
              __swift_storeEnumTagSinglePayload(&v53[v82], 0, 1, v83);
            }

            v85 = v55[6];
            v86 = &v53[v85];
            v87 = &v54[v85];
            *v86 = *v87;
            *(v86 + 1) = *(v87 + 1);
            v88 = v55[7];
            v89 = &v53[v88];
            v90 = &v54[v88];
            v91 = *v90;
            v89[4] = v90[4];
            *v89 = v91;

            __swift_storeEnumTagSinglePayload(v53, 0, 1, v55);
          }

          v92 = v48[7];
          v93 = *(a2 + v92);
          *(a1 + v92) = v93;
          v94 = v93;
          goto LABEL_43;
        case 9u:
          v32 = sub_1DD0DD08C();
          (*(*(v32 - 8) + 16))(a1, a2, v32);
LABEL_43:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v10 - 8) + 64));
          break;
      }

      goto LABEL_73;
    case 0:
      v9 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(0, *(a3 + 16), *(a3 + 24), v8);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          *a1 = *a2;
          sub_1DD0DCF8C();
        case 1u:
          v20 = sub_1DD0DB04C();
          (*(*(v20 - 8) + 16))(a1, a2, v20);
          v21 = type metadata accessor for Input(0);
          v22 = v21[5];
          v23 = a1 + v22;
          v24 = a2 + v22;
          v25 = type metadata accessor for Parse(0);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v26 = sub_1DD0DC76C();
              (*(*(v26 - 8) + 16))(v23, v24, v26);
              goto LABEL_67;
            case 1u:
              v100 = sub_1DD0DC76C();
              (*(*(v100 - 8) + 16))(v23, v24, v100);
              v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
              *&v23[*(v101 + 48)] = *&v24[*(v101 + 48)];
              sub_1DD0DCF8C();
            case 2u:
              *v23 = *v24;
              *(v23 + 1) = *(v24 + 1);
              *(v23 + 2) = *(v24 + 2);

              goto LABEL_67;
            case 3u:
              *v23 = *v24;
              swift_unknownObjectRetain();
              goto LABEL_67;
            case 4u:
              v95 = sub_1DD0DB1EC();
              (*(*(v95 - 8) + 16))(v23, v24, v95);
              goto LABEL_67;
            case 5u:
              v102 = *v24;
              *v23 = *v24;
              v103 = v102;
              goto LABEL_67;
            case 6u:
              v104 = sub_1DD0DB4BC();
              (*(*(v104 - 8) + 16))(v23, v24, v104);
              v172 = type metadata accessor for USOParse(0);
              v105 = v172[5];
              v169 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v24[v105], 1, v169))
              {
                v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v23[v105], &v24[v105], *(*(v106 - 8) + 64));
              }

              else
              {
                (*(*(v169 - 8) + 16))(&v23[v105], &v24[v105]);
                __swift_storeEnumTagSinglePayload(&v23[v105], 0, 1, v169);
              }

              v134 = v172[6];
              v135 = &v23[v134];
              v136 = &v24[v134];
              *v135 = *v136;
              *(v135 + 1) = *(v136 + 1);
              v137 = v172[7];
              v138 = &v23[v137];
              v139 = &v24[v137];
              v140 = *v139;
              v138[4] = v139[4];
              *v138 = v140;

              goto LABEL_67;
            case 7u:
              v97 = sub_1DD0DB4BC();
              (*(*(v97 - 8) + 16))(v23, v24, v97);
              v171 = type metadata accessor for USOParse(0);
              v98 = v171[5];
              v168 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v24[v98], 1, v168))
              {
                v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v23[v98], &v24[v98], *(*(v99 - 8) + 64));
              }

              else
              {
                (*(*(v168 - 8) + 16))(&v23[v98], &v24[v98]);
                __swift_storeEnumTagSinglePayload(&v23[v98], 0, 1, v168);
              }

              v117 = v171[6];
              v118 = &v23[v117];
              v119 = &v24[v117];
              *v118 = *v119;
              *(v118 + 1) = *(v119 + 1);
              v120 = v171[7];
              v121 = &v23[v120];
              v122 = &v24[v120];
              v123 = *v122;
              v121[4] = v122[4];
              *v121 = v123;
              v124 = type metadata accessor for LinkParse(0);
              v125 = v124[5];
              v126 = &v23[v125];
              v127 = &v24[v125];
              *v126 = *v127;
              *(v126 + 1) = *(v127 + 1);
              v128 = v124[6];
              v129 = &v23[v128];
              v130 = &v24[v128];
              *v129 = *v130;
              *(v129 + 1) = *(v130 + 1);
              v131 = v124[7];
              v132 = &v23[v131];
              v133 = &v24[v131];
              *v132 = *v133;
              *(v132 + 1) = *(v133 + 1);

              goto LABEL_67;
            case 8u:
              v107 = sub_1DD0DD12C();
              (*(*(v107 - 8) + 16))(v23, v24, v107);
              v108 = type metadata accessor for NLRouterParse(0);
              v109 = *(v108 + 20);
              v110 = &v23[v109];
              v111 = &v24[v109];
              *v110 = *v111;
              *(v110 + 1) = *(v111 + 1);
              v166 = v23;
              v167 = v108;
              v112 = *(v108 + 24);
              v173 = &v23[v112];
              v113 = &v24[v112];
              v114 = type metadata accessor for USOParse(0);

              v170 = v113;
              if (__swift_getEnumTagSinglePayload(v113, 1, v114))
              {
                v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
                memcpy(v173, v113, *(*(v115 - 8) + 64));
                v116 = v166;
              }

              else
              {
                v141 = sub_1DD0DB4BC();
                (*(*(v141 - 8) + 16))(v173, v113, v141);
                v165 = v114;
                v142 = *(v114 + 20);
                v143 = sub_1DD0DB3EC();
                if (__swift_getEnumTagSinglePayload(&v170[v142], 1, v143))
                {
                  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&v173[v142], &v170[v142], *(*(v144 - 8) + 64));
                }

                else
                {
                  (*(*(v143 - 8) + 16))(&v173[v142], &v170[v142], v143);
                  __swift_storeEnumTagSinglePayload(&v173[v142], 0, 1, v143);
                }

                v116 = v166;
                v145 = *(v165 + 24);
                v146 = &v173[v145];
                v147 = &v170[v145];
                *v146 = *v147;
                *(v146 + 1) = *(v147 + 1);
                v148 = *(v165 + 28);
                v149 = &v173[v148];
                v150 = &v170[v148];
                v151 = *v150;
                v149[4] = v150[4];
                *v149 = v151;

                __swift_storeEnumTagSinglePayload(v173, 0, 1, v165);
              }

              v152 = *(v167 + 28);
              v153 = *&v24[v152];
              *(v116 + v152) = v153;
              v154 = v153;
              goto LABEL_67;
            case 9u:
              v96 = sub_1DD0DD08C();
              (*(*(v96 - 8) + 16))(v23, v24, v96);
LABEL_67:
              swift_storeEnumTagMultiPayload();
              break;
            default:
              memcpy(v23, v24, *(*(v25 - 8) + 64));
              break;
          }

          *(a1 + v21[6]) = *(a2 + v21[6]);
          v155 = v21[7];
          v156 = a1 + v155;
          v157 = a2 + v155;
          v158 = *(a2 + v155 + 24);

          if (v158)
          {
            *(v156 + 3) = v158;
            *(v156 + 4) = *(v157 + 4);
            (**(v158 - 8))(v156, v157, v158);
          }

          else
          {
            v159 = *v157;
            v160 = *(v157 + 1);
            *(v156 + 4) = *(v157 + 4);
            *v156 = v159;
            *(v156 + 1) = v160;
          }

          *(a1 + v21[8]) = *(a2 + v21[8]);
          swift_getAssociatedTypeWitness();
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          v162 = *(TupleTypeMetadata3 + 48);
          v163 = *(a2 + v162);
          *(a1 + v162) = v163;
          *(a1 + *(TupleTypeMetadata3 + 64)) = *(a2 + *(TupleTypeMetadata3 + 64));
          v164 = v163;
          sub_1DD0DCF8C();
        case 2u:
          v15 = a2[3];
          a1[3] = v15;
          a1[4] = a2[4];
          (**(v15 - 8))(a1, a2);
          v16 = a2[5];
          a1[5] = v16;
          a1[6] = a2[6];
          v17 = v16;
          sub_1DD0DCF8C();
        case 3u:
          v18 = *a2;
          *a1 = *a2;
          v19 = v18;
          goto LABEL_72;
        case 4u:
          *a1 = *a2;
          a1[1] = a2[1];
          a1[5] = a2[5];
          a1[6] = a2[6];
          sub_1DD0DCF8C();
        case 5u:
          v28 = *a2;
          v27 = a2[1];
          sub_1DCBF4C98(v28, v27);
          *a1 = v28;
          a1[1] = v27;
          goto LABEL_72;
        case 6u:
          v29 = *a2;
          v30 = *a2;
          *a1 = v29;
          *(a1 + 8) = *(a2 + 8);
LABEL_72:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v9 - 8) + 64));
          break;
      }

      goto LABEL_73;
  }

  v13 = *(v6 + 64);

  return memcpy(a1, a2, v13);
}

char *sub_1DCFC467C(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v18 = sub_1DD0DD2DC();
      (*(*(v18 - 8) + 32))(a1, a2, v18);
LABEL_56:
      swift_storeEnumTagMultiPayload();
      return a1;
    case 1:
      v16 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v17 = sub_1DD0DC76C();
          (*(*(v17 - 8) + 32))(a1, a2, v17);
          goto LABEL_49;
        case 1u:
          v28 = sub_1DD0DC76C();
          (*(*(v28 - 8) + 32))(a1, a2, v28);
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&a1[*(v29 + 48)] = *&a2[*(v29 + 48)];
          goto LABEL_49;
        case 4u:
          v31 = sub_1DD0DB1EC();
          (*(*(v31 - 8) + 32))(a1, a2, v31);
          goto LABEL_49;
        case 6u:
          v32 = sub_1DD0DB4BC();
          (*(*(v32 - 8) + 32))(a1, a2, v32);
          v33 = type metadata accessor for USOParse(0);
          v34 = v33[5];
          v35 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&a2[v34], 1, v35))
          {
            v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&a1[v34], &a2[v34], *(*(v36 - 8) + 64));
          }

          else
          {
            (*(*(v35 - 8) + 32))(&a1[v34], &a2[v34], v35);
            __swift_storeEnumTagSinglePayload(&a1[v34], 0, 1, v35);
          }

          *&a1[v33[6]] = *&a2[v33[6]];
          v64 = v33[7];
          v65 = &a1[v64];
          v66 = &a2[v64];
          v65[4] = v66[4];
          *v65 = *v66;
          goto LABEL_49;
        case 7u:
          v37 = sub_1DD0DB4BC();
          (*(*(v37 - 8) + 32))(a1, a2, v37);
          v38 = type metadata accessor for USOParse(0);
          v39 = v38[5];
          v40 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&a2[v39], 1, v40))
          {
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&a1[v39], &a2[v39], *(*(v41 - 8) + 64));
          }

          else
          {
            (*(*(v40 - 8) + 32))(&a1[v39], &a2[v39], v40);
            __swift_storeEnumTagSinglePayload(&a1[v39], 0, 1, v40);
          }

          *&a1[v38[6]] = *&a2[v38[6]];
          v67 = v38[7];
          v68 = &a1[v67];
          v69 = &a2[v67];
          v68[4] = v69[4];
          *v68 = *v69;
          v70 = type metadata accessor for LinkParse(0);
          *&a1[v70[5]] = *&a2[v70[5]];
          *&a1[v70[6]] = *&a2[v70[6]];
          *&a1[v70[7]] = *&a2[v70[7]];
          goto LABEL_49;
        case 8u:
          v21 = sub_1DD0DD12C();
          (*(*(v21 - 8) + 32))(a1, a2, v21);
          v22 = type metadata accessor for NLRouterParse(0);
          *&a1[v22[5]] = *&a2[v22[5]];
          v23 = v22[6];
          v24 = &a1[v23];
          v25 = &a2[v23];
          v26 = type metadata accessor for USOParse(0);
          if (__swift_getEnumTagSinglePayload(v25, 1, v26))
          {
            v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v24, v25, *(*(v27 - 8) + 64));
          }

          else
          {
            v60 = sub_1DD0DB4BC();
            (*(*(v60 - 8) + 32))(v24, v25, v60);
            v61 = v26[5];
            v62 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v25[v61], 1, v62))
            {
              v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v24[v61], &v25[v61], *(*(v63 - 8) + 64));
            }

            else
            {
              (*(*(v62 - 8) + 32))(&v24[v61], &v25[v61], v62);
              __swift_storeEnumTagSinglePayload(&v24[v61], 0, 1, v62);
            }

            *&v24[v26[6]] = *&v25[v26[6]];
            v82 = v26[7];
            v83 = &v24[v82];
            v84 = &v25[v82];
            v83[4] = v84[4];
            *v83 = *v84;
            __swift_storeEnumTagSinglePayload(v24, 0, 1, v26);
          }

          *&a1[v22[7]] = *&a2[v22[7]];
          goto LABEL_49;
        case 9u:
          v30 = sub_1DD0DD08C();
          (*(*(v30 - 8) + 32))(a1, a2, v30);
LABEL_49:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v16 - 8) + 64));
          break;
      }

      goto LABEL_56;
    case 0:
      v8 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(0, *(a3 + 16), *(a3 + 24), v7);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v9 = sub_1DD0DB04C();
        (*(*(v9 - 8) + 32))(a1, a2, v9);
        v10 = type metadata accessor for Input(0);
        v11 = v10[5];
        v12 = &a1[v11];
        v13 = &a2[v11];
        v14 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v15 = sub_1DD0DC76C();
            (*(*(v15 - 8) + 32))(v12, v13, v15);
            goto LABEL_54;
          case 1u:
            v50 = sub_1DD0DC76C();
            (*(*(v50 - 8) + 32))(v12, v13, v50);
            v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v12[*(v51 + 48)] = *&v13[*(v51 + 48)];
            goto LABEL_54;
          case 4u:
            v53 = sub_1DD0DB1EC();
            (*(*(v53 - 8) + 32))(v12, v13, v53);
            goto LABEL_54;
          case 6u:
            v54 = sub_1DD0DB4BC();
            (*(*(v54 - 8) + 32))(v12, v13, v54);
            v99 = type metadata accessor for USOParse(0);
            v55 = v99[5];
            v96 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v13[v55], 1, v96))
            {
              v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v12[v55], &v13[v55], *(*(v56 - 8) + 64));
            }

            else
            {
              (*(*(v96 - 8) + 32))(&v12[v55], &v13[v55]);
              __swift_storeEnumTagSinglePayload(&v12[v55], 0, 1, v96);
            }

            *&v12[v99[6]] = *&v13[v99[6]];
            v75 = v99[7];
            v76 = &v12[v75];
            v77 = &v13[v75];
            v76[4] = v77[4];
            *v76 = *v77;
            goto LABEL_54;
          case 7u:
            v57 = sub_1DD0DB4BC();
            (*(*(v57 - 8) + 32))(v12, v13, v57);
            v100 = type metadata accessor for USOParse(0);
            v58 = v100[5];
            v97 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v13[v58], 1, v97))
            {
              v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v12[v58], &v13[v58], *(*(v59 - 8) + 64));
            }

            else
            {
              (*(*(v97 - 8) + 32))(&v12[v58], &v13[v58]);
              __swift_storeEnumTagSinglePayload(&v12[v58], 0, 1, v97);
            }

            *&v12[v100[6]] = *&v13[v100[6]];
            v78 = v100[7];
            v79 = &v12[v78];
            v80 = &v13[v78];
            v79[4] = v80[4];
            *v79 = *v80;
            v81 = type metadata accessor for LinkParse(0);
            *&v12[v81[5]] = *&v13[v81[5]];
            *&v12[v81[6]] = *&v13[v81[6]];
            *&v12[v81[7]] = *&v13[v81[7]];
            goto LABEL_54;
          case 8u:
            v42 = sub_1DD0DD12C();
            (*(*(v42 - 8) + 32))(v12, v13, v42);
            v43 = type metadata accessor for NLRouterParse(0);
            *&v12[*(v43 + 20)] = *&v13[*(v43 + 20)];
            v94 = v43;
            v44 = *(v43 + 24);
            v98 = &v12[v44];
            v45 = &v13[v44];
            v46 = type metadata accessor for USOParse(0);
            v95 = v45;
            v47 = v45;
            v48 = v46;
            if (__swift_getEnumTagSinglePayload(v47, 1, v46))
            {
              v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(v98, v95, *(*(v49 - 8) + 64));
            }

            else
            {
              v71 = sub_1DD0DB4BC();
              (*(*(v71 - 8) + 32))(v98, v95, v71);
              v93 = v48;
              v72 = *(v48 + 20);
              v73 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v95[v72], 1, v73))
              {
                v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v98[v72], &v95[v72], *(*(v74 - 8) + 64));
              }

              else
              {
                (*(*(v73 - 8) + 32))(&v98[v72], &v95[v72], v73);
                __swift_storeEnumTagSinglePayload(&v98[v72], 0, 1, v73);
              }

              *&v98[*(v93 + 24)] = *&v95[*(v93 + 24)];
              v85 = *(v93 + 28);
              v86 = &v98[v85];
              v87 = &v95[v85];
              v86[4] = v87[4];
              *v86 = *v87;
              __swift_storeEnumTagSinglePayload(v98, 0, 1, v93);
            }

            *&v12[*(v94 + 28)] = *&v13[*(v94 + 28)];
            goto LABEL_54;
          case 9u:
            v52 = sub_1DD0DD08C();
            (*(*(v52 - 8) + 32))(v12, v13, v52);
LABEL_54:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v12, v13, *(*(v14 - 8) + 64));
            break;
        }

        *&a1[v10[6]] = *&a2[v10[6]];
        v88 = v10[7];
        v89 = &a1[v88];
        v90 = &a2[v88];
        v91 = *(v90 + 1);
        *v89 = *v90;
        *(v89 + 1) = v91;
        *(v89 + 4) = *(v90 + 4);
        a1[v10[8]] = a2[v10[8]];
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        *&a1[*(TupleTypeMetadata3 + 48)] = *&a2[*(TupleTypeMetadata3 + 48)];
        *&a1[*(TupleTypeMetadata3 + 64)] = *&a2[*(TupleTypeMetadata3 + 64)];
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(a1, a2, *(*(v8 - 8) + 64));
      }

      goto LABEL_56;
  }

  v19 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v19);
}

char *sub_1DCFC5578(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v6 = *(a3 - 8);
  (*(v6 + 8))(a1, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v19 = sub_1DD0DD2DC();
      (*(*(v19 - 8) + 32))(a1, a2, v19);
LABEL_57:
      swift_storeEnumTagMultiPayload();
      return a1;
    case 1:
      v17 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v18 = sub_1DD0DC76C();
          (*(*(v18 - 8) + 32))(a1, a2, v18);
          goto LABEL_50;
        case 1u:
          v29 = sub_1DD0DC76C();
          (*(*(v29 - 8) + 32))(a1, a2, v29);
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&a1[*(v30 + 48)] = *&a2[*(v30 + 48)];
          goto LABEL_50;
        case 4u:
          v32 = sub_1DD0DB1EC();
          (*(*(v32 - 8) + 32))(a1, a2, v32);
          goto LABEL_50;
        case 6u:
          v33 = sub_1DD0DB4BC();
          (*(*(v33 - 8) + 32))(a1, a2, v33);
          v34 = type metadata accessor for USOParse(0);
          v35 = v34[5];
          v36 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&a2[v35], 1, v36))
          {
            v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&a1[v35], &a2[v35], *(*(v37 - 8) + 64));
          }

          else
          {
            (*(*(v36 - 8) + 32))(&a1[v35], &a2[v35], v36);
            __swift_storeEnumTagSinglePayload(&a1[v35], 0, 1, v36);
          }

          *&a1[v34[6]] = *&a2[v34[6]];
          v65 = v34[7];
          v66 = &a1[v65];
          v67 = &a2[v65];
          v66[4] = v67[4];
          *v66 = *v67;
          goto LABEL_50;
        case 7u:
          v38 = sub_1DD0DB4BC();
          (*(*(v38 - 8) + 32))(a1, a2, v38);
          v39 = type metadata accessor for USOParse(0);
          v40 = v39[5];
          v41 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&a2[v40], 1, v41))
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&a1[v40], &a2[v40], *(*(v42 - 8) + 64));
          }

          else
          {
            (*(*(v41 - 8) + 32))(&a1[v40], &a2[v40], v41);
            __swift_storeEnumTagSinglePayload(&a1[v40], 0, 1, v41);
          }

          *&a1[v39[6]] = *&a2[v39[6]];
          v68 = v39[7];
          v69 = &a1[v68];
          v70 = &a2[v68];
          v69[4] = v70[4];
          *v69 = *v70;
          v71 = type metadata accessor for LinkParse(0);
          *&a1[v71[5]] = *&a2[v71[5]];
          *&a1[v71[6]] = *&a2[v71[6]];
          *&a1[v71[7]] = *&a2[v71[7]];
          goto LABEL_50;
        case 8u:
          v22 = sub_1DD0DD12C();
          (*(*(v22 - 8) + 32))(a1, a2, v22);
          v23 = type metadata accessor for NLRouterParse(0);
          *&a1[v23[5]] = *&a2[v23[5]];
          v24 = v23[6];
          v25 = &a1[v24];
          v26 = &a2[v24];
          v27 = type metadata accessor for USOParse(0);
          if (__swift_getEnumTagSinglePayload(v26, 1, v27))
          {
            v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v25, v26, *(*(v28 - 8) + 64));
          }

          else
          {
            v61 = sub_1DD0DB4BC();
            (*(*(v61 - 8) + 32))(v25, v26, v61);
            v62 = v27[5];
            v63 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v26[v62], 1, v63))
            {
              v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v25[v62], &v26[v62], *(*(v64 - 8) + 64));
            }

            else
            {
              (*(*(v63 - 8) + 32))(&v25[v62], &v26[v62], v63);
              __swift_storeEnumTagSinglePayload(&v25[v62], 0, 1, v63);
            }

            *&v25[v27[6]] = *&v26[v27[6]];
            v83 = v27[7];
            v84 = &v25[v83];
            v85 = &v26[v83];
            v84[4] = v85[4];
            *v84 = *v85;
            __swift_storeEnumTagSinglePayload(v25, 0, 1, v27);
          }

          *&a1[v23[7]] = *&a2[v23[7]];
          goto LABEL_50;
        case 9u:
          v31 = sub_1DD0DD08C();
          (*(*(v31 - 8) + 32))(a1, a2, v31);
LABEL_50:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v17 - 8) + 64));
          break;
      }

      goto LABEL_57;
    case 0:
      v9 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(0, *(a3 + 16), *(a3 + 24), v8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_1DD0DB04C();
        (*(*(v10 - 8) + 32))(a1, a2, v10);
        v11 = type metadata accessor for Input(0);
        v12 = v11[5];
        v13 = &a1[v12];
        v14 = &a2[v12];
        v15 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v16 = sub_1DD0DC76C();
            (*(*(v16 - 8) + 32))(v13, v14, v16);
            goto LABEL_55;
          case 1u:
            v51 = sub_1DD0DC76C();
            (*(*(v51 - 8) + 32))(v13, v14, v51);
            v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v13[*(v52 + 48)] = *&v14[*(v52 + 48)];
            goto LABEL_55;
          case 4u:
            v54 = sub_1DD0DB1EC();
            (*(*(v54 - 8) + 32))(v13, v14, v54);
            goto LABEL_55;
          case 6u:
            v55 = sub_1DD0DB4BC();
            (*(*(v55 - 8) + 32))(v13, v14, v55);
            v100 = type metadata accessor for USOParse(0);
            v56 = v100[5];
            v97 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v14[v56], 1, v97))
            {
              v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v13[v56], &v14[v56], *(*(v57 - 8) + 64));
            }

            else
            {
              (*(*(v97 - 8) + 32))(&v13[v56], &v14[v56]);
              __swift_storeEnumTagSinglePayload(&v13[v56], 0, 1, v97);
            }

            *&v13[v100[6]] = *&v14[v100[6]];
            v76 = v100[7];
            v77 = &v13[v76];
            v78 = &v14[v76];
            v77[4] = v78[4];
            *v77 = *v78;
            goto LABEL_55;
          case 7u:
            v58 = sub_1DD0DB4BC();
            (*(*(v58 - 8) + 32))(v13, v14, v58);
            v101 = type metadata accessor for USOParse(0);
            v59 = v101[5];
            v98 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v14[v59], 1, v98))
            {
              v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v13[v59], &v14[v59], *(*(v60 - 8) + 64));
            }

            else
            {
              (*(*(v98 - 8) + 32))(&v13[v59], &v14[v59]);
              __swift_storeEnumTagSinglePayload(&v13[v59], 0, 1, v98);
            }

            *&v13[v101[6]] = *&v14[v101[6]];
            v79 = v101[7];
            v80 = &v13[v79];
            v81 = &v14[v79];
            v80[4] = v81[4];
            *v80 = *v81;
            v82 = type metadata accessor for LinkParse(0);
            *&v13[v82[5]] = *&v14[v82[5]];
            *&v13[v82[6]] = *&v14[v82[6]];
            *&v13[v82[7]] = *&v14[v82[7]];
            goto LABEL_55;
          case 8u:
            v43 = sub_1DD0DD12C();
            (*(*(v43 - 8) + 32))(v13, v14, v43);
            v44 = type metadata accessor for NLRouterParse(0);
            *&v13[*(v44 + 20)] = *&v14[*(v44 + 20)];
            v95 = v44;
            v45 = *(v44 + 24);
            v99 = &v13[v45];
            v46 = &v14[v45];
            v47 = type metadata accessor for USOParse(0);
            v96 = v46;
            v48 = v46;
            v49 = v47;
            if (__swift_getEnumTagSinglePayload(v48, 1, v47))
            {
              v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(v99, v96, *(*(v50 - 8) + 64));
            }

            else
            {
              v72 = sub_1DD0DB4BC();
              (*(*(v72 - 8) + 32))(v99, v96, v72);
              v94 = v49;
              v73 = *(v49 + 20);
              v74 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v96[v73], 1, v74))
              {
                v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v99[v73], &v96[v73], *(*(v75 - 8) + 64));
              }

              else
              {
                (*(*(v74 - 8) + 32))(&v99[v73], &v96[v73], v74);
                __swift_storeEnumTagSinglePayload(&v99[v73], 0, 1, v74);
              }

              *&v99[*(v94 + 24)] = *&v96[*(v94 + 24)];
              v86 = *(v94 + 28);
              v87 = &v99[v86];
              v88 = &v96[v86];
              v87[4] = v88[4];
              *v87 = *v88;
              __swift_storeEnumTagSinglePayload(v99, 0, 1, v94);
            }

            *&v13[*(v95 + 28)] = *&v14[*(v95 + 28)];
            goto LABEL_55;
          case 9u:
            v53 = sub_1DD0DD08C();
            (*(*(v53 - 8) + 32))(v13, v14, v53);
LABEL_55:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v13, v14, *(*(v15 - 8) + 64));
            break;
        }

        *&a1[v11[6]] = *&a2[v11[6]];
        v89 = v11[7];
        v90 = &a1[v89];
        v91 = &a2[v89];
        v92 = *(v91 + 1);
        *v90 = *v91;
        *(v90 + 1) = v92;
        *(v90 + 4) = *(v91 + 4);
        a1[v11[8]] = a2[v11[8]];
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        *&a1[*(TupleTypeMetadata3 + 48)] = *&a2[*(TupleTypeMetadata3 + 48)];
        *&a1[*(TupleTypeMetadata3 + 64)] = *&a2[*(TupleTypeMetadata3 + 64)];
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(a1, a2, *(*(v9 - 8) + 64));
      }

      goto LABEL_57;
  }

  v20 = *(v6 + 64);

  return memcpy(a1, a2, v20);
}

uint64_t SiriKitSnippets.PunchOutSnippetModel.init(label:punchOutURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0) + 20);

  return sub_1DCFC6540(a3, v5);
}

uint64_t sub_1DCFC6540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCFC6628(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656449707061 && a2 == 0xED00007265696669)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DCFC66F4(char a1)
{
  if (a1)
  {
    return 0x746E656449707061;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_1DCFC673C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCFC6628(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCFC6764(uint64_t a1)
{
  v2 = sub_1DCFC6904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFC67A0(uint64_t a1)
{
  v2 = sub_1DCFC6904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriKitSnippets.AppLaunchSnippetModel.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB8F0, &qword_1DD1076B8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_57_1(v2, v2[3]);
  v5 = sub_1DCFC6904();
  OUTLINED_FUNCTION_28_35(&type metadata for SiriKitSnippets.AppLaunchSnippetModel.CodingKeys, v6, v5);
  OUTLINED_FUNCTION_6_77();
  sub_1DD0DEFBC();
  if (!v0)
  {
    OUTLINED_FUNCTION_10_78();
    OUTLINED_FUNCTION_6_77();
    sub_1DD0DEF8C();
  }

  v7 = OUTLINED_FUNCTION_24_38();
  v8(v7);
  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCFC6904()
{
  result = qword_1ECCAB8F8;
  if (!qword_1ECCAB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB8F8);
  }

  return result;
}

void SiriKitSnippets.AppLaunchSnippetModel.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB900, &qword_1DD1076C0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_57_1(v3, v3[3]);
  v8 = sub_1DCFC6904();
  OUTLINED_FUNCTION_61_2(&type metadata for SiriKitSnippets.AppLaunchSnippetModel.CodingKeys, v9, v8);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    OUTLINED_FUNCTION_7_75();
    v10 = sub_1DD0DEF0C();
    v12 = v11;
    OUTLINED_FUNCTION_10_78();
    OUTLINED_FUNCTION_7_75();
    v13 = sub_1DD0DEEDC();
    v14 = OUTLINED_FUNCTION_19_48(v13);
    v15(v14);
    *v5 = v10;
    v5[1] = v12;
    v5[2] = v16;
    v5[3] = v0;

    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  OUTLINED_FUNCTION_19_19();
}

uint64_t SiriKitSnippets.PunchOutSnippetModel.punchOutURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0) + 20);

  return sub_1DCFC6B84(v3, a1);
}

uint64_t sub_1DCFC6B84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCFC6BF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74754F68636E7570 && a2 == 0xEB000000004C5255)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DCFC6CBC(char a1)
{
  if (a1)
  {
    return 0x74754F68636E7570;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_1DCFC6D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCFC6BF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCFC6D28(uint64_t a1)
{
  v2 = sub_1DCFC6F30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFC6D64(uint64_t a1)
{
  v2 = sub_1DCFC6F30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriKitSnippets.PunchOutSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB908, &qword_1DD1076C8);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13[-v8];
  OUTLINED_FUNCTION_57_1(a1, a1[3]);
  sub_1DCFC6F30();
  sub_1DD0DF24C();
  v13[15] = 0;
  sub_1DD0DEFBC();
  if (!v1)
  {
    type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0);
    OUTLINED_FUNCTION_10_78();
    sub_1DD0DAECC();
    OUTLINED_FUNCTION_4_112();
    sub_1DCFC7220(v10, v11, MEMORY[0x1E6968FB8]);
    sub_1DD0DEFAC();
  }

  return (*(v5 + 8))(v9, v3);
}

unint64_t sub_1DCFC6F30()
{
  result = qword_1ECCAB910;
  if (!qword_1ECCAB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB910);
  }

  return result;
}

void SiriKitSnippets.PunchOutSnippetModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_20_3();
  v24 = v23;
  v45[1] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v45 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB920, &qword_1DD1076D0);
  OUTLINED_FUNCTION_9();
  v45[2] = v31;
  v45[3] = v30;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v32, v33);
  v34 = type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v35, v36);
  OUTLINED_FUNCTION_16();
  v39 = (v38 - v37);
  OUTLINED_FUNCTION_57_1(v24, v24[3]);
  sub_1DCFC6F30();
  sub_1DD0DF23C();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    v45[0] = v34;
    *v39 = sub_1DD0DEF0C();
    v39[1] = v40;
    sub_1DD0DAECC();
    OUTLINED_FUNCTION_10_78();
    OUTLINED_FUNCTION_4_112();
    sub_1DCFC7220(v41, v42, MEMORY[0x1E6968FD0]);
    sub_1DD0DEEFC();
    v43 = OUTLINED_FUNCTION_16_57();
    v44(v43);
    sub_1DCFC6540(v29, v39 + *(v45[0] + 20));
    sub_1DCFC8174();
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    sub_1DCFC9320(v39, type metadata accessor for SiriKitSnippets.PunchOutSnippetModel);
  }

  OUTLINED_FUNCTION_19_19();
}

uint64_t sub_1DCFC7220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static SiriKitSnippets.ConfirmationSnippetModel.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DD0DF0AC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_33_1();

      return sub_1DD0DF0AC();
    }
  }

  return result;
}

uint64_t sub_1DCFC7364(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562614C736579 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562614C6F6ELL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DCFC742C(char a1)
{
  if (a1)
  {
    return 0x6C6562614C6F6ELL;
  }

  else
  {
    return 0x6C6562614C736579;
  }
}

uint64_t sub_1DCFC746C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCFC7364(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCFC7494(uint64_t a1)
{
  v2 = sub_1DCFC7634();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFC74D0(uint64_t a1)
{
  v2 = sub_1DCFC7634();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriKitSnippets.ConfirmationSnippetModel.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB930, &qword_1DD1076D8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_57_1(v2, v2[3]);
  v5 = sub_1DCFC7634();
  OUTLINED_FUNCTION_28_35(&type metadata for SiriKitSnippets.ConfirmationSnippetModel.CodingKeys, v6, v5);
  OUTLINED_FUNCTION_6_77();
  sub_1DD0DEFBC();
  if (!v0)
  {
    OUTLINED_FUNCTION_10_78();
    OUTLINED_FUNCTION_6_77();
    sub_1DD0DEFBC();
  }

  v7 = OUTLINED_FUNCTION_24_38();
  v8(v7);
  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCFC7634()
{
  result = qword_1ECCAB938;
  if (!qword_1ECCAB938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB938);
  }

  return result;
}

void SiriKitSnippets.ConfirmationSnippetModel.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB940, &qword_1DD1076E0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_57_1(v3, v3[3]);
  v8 = sub_1DCFC7634();
  OUTLINED_FUNCTION_61_2(&type metadata for SiriKitSnippets.ConfirmationSnippetModel.CodingKeys, v9, v8);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    OUTLINED_FUNCTION_7_75();
    v10 = sub_1DD0DEF0C();
    v12 = v11;
    OUTLINED_FUNCTION_10_78();
    OUTLINED_FUNCTION_7_75();
    v13 = sub_1DD0DEF0C();
    v14 = OUTLINED_FUNCTION_19_48(v13);
    v15(v14);
    *v5 = v10;
    v5[1] = v12;
    v5[2] = v16;
    v5[3] = v0;

    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  OUTLINED_FUNCTION_19_19();
}

uint64_t sub_1DCFC7814(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E75614C707061 && a2 == 0xEF6E6F7474754268;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74754F68636E7570 && a2 == 0xEE006E6F74747542;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x80000001DD128E20 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD0DF0AC();

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

uint64_t sub_1DCFC793C(char a1)
{
  if (!a1)
  {
    return 0x636E75614C707061;
  }

  if (a1 == 1)
  {
    return 0x74754F68636E7570;
  }

  return 0xD000000000000013;
}

uint64_t sub_1DCFC79E4(uint64_t a1)
{
  v2 = sub_1DCFC82C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFC7A20(uint64_t a1)
{
  v2 = sub_1DCFC82C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCFC7A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCFC7814(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCFC7A8C(uint64_t a1)
{
  v2 = sub_1DCFC8120();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFC7AC8(uint64_t a1)
{
  v2 = sub_1DCFC8120();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCFC7B04(uint64_t a1)
{
  v2 = sub_1DCFC81CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFC7B40(uint64_t a1)
{
  v2 = sub_1DCFC81CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCFC7B7C(uint64_t a1)
{
  v2 = sub_1DCFC8274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFC7BB8(uint64_t a1)
{
  v2 = sub_1DCFC8274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriKitSnippets.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v62 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB948, &qword_1DD1076E8);
  OUTLINED_FUNCTION_9();
  v60 = v5;
  v61 = v4;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_34_0();
  v58 = v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB950, &qword_1DD1076F0);
  OUTLINED_FUNCTION_9();
  v57 = v9;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_34_0();
  v56 = v12;
  v55 = type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB958, &qword_1DD1076F8);
  OUTLINED_FUNCTION_9();
  v54 = v19;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_15_3();
  type metadata accessor for SiriKitSnippets(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_16();
  v26 = (v25 - v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB960, &qword_1DD107700);
  OUTLINED_FUNCTION_9();
  v63 = v28;
  v64 = v27;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v53 - v31;
  OUTLINED_FUNCTION_57_1(v3, v3[3]);
  sub_1DCFC8120();
  sub_1DD0DF24C();
  OUTLINED_FUNCTION_0_123();
  sub_1DCFC8174();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v40 = *v26;
    v41 = v26[1];
    v43 = v26[2];
    v42 = v26[3];
    LOBYTE(v65) = 0;
    sub_1DCFC82C8();
    v44 = v64;
    OUTLINED_FUNCTION_26_36();
    sub_1DD0DEF7C();
    v65 = v40;
    v66 = v41;
    v67 = v43;
    v68 = v42;
    sub_1DCFC831C();
    sub_1DD0DEFFC();
    (*(v54 + 8))(v1, v18);
    (*(v63 + 8))(v32, v44);

LABEL_6:

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v46 = *v26;
    v45 = v26[1];
    v48 = v26[2];
    v47 = v26[3];
    LOBYTE(v65) = 2;
    sub_1DCFC81CC();
    v49 = v58;
    v50 = v64;
    OUTLINED_FUNCTION_26_36();
    sub_1DD0DEF7C();
    v65 = v46;
    v66 = v45;
    v67 = v48;
    v68 = v47;
    sub_1DCFC8220();
    v51 = v61;
    sub_1DD0DEFFC();
    OUTLINED_FUNCTION_11_68();
    v52(v49, v51);
    (*(v63 + 8))(v32, v50);

    goto LABEL_6;
  }

  sub_1DCFC8BCC();
  LOBYTE(v65) = 1;
  sub_1DCFC8274();
  v34 = v56;
  OUTLINED_FUNCTION_26_36();
  sub_1DD0DEF7C();
  OUTLINED_FUNCTION_5_110();
  sub_1DCFC7220(v35, v36, &protocol conformance descriptor for SiriKitSnippets.PunchOutSnippetModel);
  v37 = v59;
  sub_1DD0DEFFC();
  (*(v57 + 8))(v34, v37);
  sub_1DCFC9320(v17, type metadata accessor for SiriKitSnippets.PunchOutSnippetModel);
  v38 = OUTLINED_FUNCTION_17_49();
  v39(v38);
LABEL_7:
  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCFC8120()
{
  result = qword_1ECCAB968;
  if (!qword_1ECCAB968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB968);
  }

  return result;
}

uint64_t sub_1DCFC8174()
{
  OUTLINED_FUNCTION_21();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_33_1();
  v3(v2);
  return v0;
}

unint64_t sub_1DCFC81CC()
{
  result = qword_1ECCAB970;
  if (!qword_1ECCAB970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB970);
  }

  return result;
}

unint64_t sub_1DCFC8220()
{
  result = qword_1ECCAB978;
  if (!qword_1ECCAB978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB978);
  }

  return result;
}

unint64_t sub_1DCFC8274()
{
  result = qword_1ECCAB980;
  if (!qword_1ECCAB980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB980);
  }

  return result;
}

unint64_t sub_1DCFC82C8()
{
  result = qword_1ECCAB990;
  if (!qword_1ECCAB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB990);
  }

  return result;
}

unint64_t sub_1DCFC831C()
{
  result = qword_1ECCAB998;
  if (!qword_1ECCAB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB998);
  }

  return result;
}

void SiriKitSnippets.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v88 = v3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB9A0, &qword_1DD107708);
  OUTLINED_FUNCTION_9();
  v89 = v4;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_34_0();
  v87 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB9A8, &qword_1DD107710);
  OUTLINED_FUNCTION_9();
  v83 = v9;
  v84 = v8;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_34_0();
  v86 = v12;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB9B0, &qword_1DD107718);
  OUTLINED_FUNCTION_9();
  v81 = v13;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_34_0();
  v85 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB9B8, &unk_1DD107720);
  OUTLINED_FUNCTION_9();
  v90 = v18;
  v91 = v17;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v77 - v21;
  v23 = type metadata accessor for SiriKitSnippets(0);
  OUTLINED_FUNCTION_2();
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = &v77 - v31;
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = &v77 - v35;
  MEMORY[0x1EEE9AC00](v34, v37);
  v39 = &v77 - v38;
  v40 = v2[3];
  v93 = v2;
  OUTLINED_FUNCTION_57_1(v2, v40);
  sub_1DCFC8120();
  sub_1DD0DF23C();
  if (v0)
  {
    goto LABEL_10;
  }

  v77 = v36;
  v78 = v28;
  v79 = v32;
  v80 = v39;
  v41 = v91;
  v96 = v23;
  v42 = sub_1DD0DEF5C();
  sub_1DCB547F8(v42, 0);
  if (v45 == v46 >> 1)
  {
LABEL_9:
    v58 = sub_1DD0DECAC();
    swift_allocError();
    v60 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D8, &qword_1DD0F0640);
    *v60 = v96;
    sub_1DD0DEECC();
    sub_1DD0DEC8C();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x1E69E6AF8], v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_11_68();
    v61(v22, v41);
LABEL_10:
    v62 = v93;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    OUTLINED_FUNCTION_19_19();
    return;
  }

  if (v45 < (v46 >> 1))
  {
    v47 = v22;
    v48 = *(v44 + v45);
    sub_1DCB54800(v45 + 1, v46 >> 1, v43, v44, v45, v46);
    v50 = v49;
    v52 = v51;
    swift_unknownObjectRelease();
    v53 = v50 == v52 >> 1;
    v54 = v89;
    if (!v53)
    {
      v22 = v47;
      goto LABEL_9;
    }

    v55 = v47;
    if (v48)
    {
      if (v48 != 1)
      {
        LOBYTE(v94) = 2;
        sub_1DCFC81CC();
        v64 = v87;
        OUTLINED_FUNCTION_21_50(&type metadata for SiriKitSnippets.ConfirmationSnippetCodingKeys, &v94);
        sub_1DCFC8B78();
        v65 = v82;
        OUTLINED_FUNCTION_26_36();
        sub_1DD0DEF4C();
        swift_unknownObjectRelease();
        (*(v54 + 8))(v64, v65);
        OUTLINED_FUNCTION_11_68();
        v73(v55, v41);
        v74 = v95;
        v75 = v78;
        *v78 = v94;
        v75[1] = v74;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_0_123();
        sub_1DCFC8BCC();
        v76 = v93;
LABEL_15:
        OUTLINED_FUNCTION_0_123();
        sub_1DCFC8BCC();
        v62 = v76;
        goto LABEL_11;
      }

      LOBYTE(v94) = 1;
      sub_1DCFC8274();
      OUTLINED_FUNCTION_21_50(&type metadata for SiriKitSnippets.PunchOutButtonCodingKeys, &v94);
      type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0);
      OUTLINED_FUNCTION_5_110();
      sub_1DCFC7220(v56, v57, &protocol conformance descriptor for SiriKitSnippets.PunchOutSnippetModel);
      sub_1DD0DEF4C();
      swift_unknownObjectRelease();
      v66 = OUTLINED_FUNCTION_17_49();
      v67(v66);
      OUTLINED_FUNCTION_11_68();
      v68(v47, v41);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_123();
    }

    else
    {
      LOBYTE(v94) = 0;
      sub_1DCFC82C8();
      OUTLINED_FUNCTION_21_50(&type metadata for SiriKitSnippets.AppLaunchButtonCodingKeys, &v94);
      sub_1DCFC8C24();
      sub_1DD0DEF4C();
      v63 = v90;
      swift_unknownObjectRelease();
      v69 = OUTLINED_FUNCTION_25_33();
      v70(v69);
      (*(v63 + 8))(v47, v41);
      v71 = *(&v94 + 1);
      v72 = v77;
      *v77 = v94;
      v72[1] = v71;
      *(v72 + 1) = v95;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_123();
    }

    sub_1DCFC8BCC();
    v76 = v93;
    goto LABEL_15;
  }

  __break(1u);
}

unint64_t sub_1DCFC8B78()
{
  result = qword_1ECCAB9C0;
  if (!qword_1ECCAB9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB9C0);
  }

  return result;
}

uint64_t sub_1DCFC8BCC()
{
  OUTLINED_FUNCTION_21();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_33_1();
  v3(v2);
  return v0;
}

unint64_t sub_1DCFC8C24()
{
  result = qword_1ECCAB9D0;
  if (!qword_1ECCAB9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB9D0);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for SiriKitSnippets(char *a1, char *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  if (EnumCaseMultiPayload == 1)
  {
    v7 = *(type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0) + 20);
    v8 = sub_1DD0DAECC();

    if (__swift_getEnumTagSinglePayload(&a2[v7], 1, v8))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
      memcpy(&a1[v7], &a2[v7], *(*(v9 - 8) + 64));
    }

    else
    {
      (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
      __swift_storeEnumTagSinglePayload(&a1[v7], 0, 1, v8);
    }
  }

  else
  {
    v10 = *(a2 + 2);
    v11 = *(a2 + 3);
    *(a1 + 2) = v10;
    *(a1 + 3) = v11;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t destroy for SiriKitSnippets(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
LABEL_4:
  }

  if (result != 1)
  {
    if (result)
    {
      return result;
    }

    goto LABEL_4;
  }

  v4 = *(type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0) + 20);
  v5 = sub_1DD0DAECC();
  result = __swift_getEnumTagSinglePayload(a1 + v4, 1, v5);
  if (!result)
  {
    v6 = *(*(v5 - 8) + 8);

    return v6(a1 + v4, v5);
  }

  return result;
}

char *initializeWithCopy for SiriKitSnippets(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  if (EnumCaseMultiPayload == 1)
  {
    v7 = *(type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0) + 20);
    v8 = sub_1DD0DAECC();

    if (__swift_getEnumTagSinglePayload(&a2[v7], 1, v8))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
      memcpy(&a1[v7], &a2[v7], *(*(v9 - 8) + 64));
    }

    else
    {
      (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
      __swift_storeEnumTagSinglePayload(&a1[v7], 0, 1, v8);
    }
  }

  else
  {
    v10 = *(a2 + 2);
    v11 = *(a2 + 3);
    *(a1 + 2) = v10;
    *(a1 + 3) = v11;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for SiriKitSnippets(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DCFC9320(a1, type metadata accessor for SiriKitSnippets);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    if (EnumCaseMultiPayload == 1)
    {
      v6 = *(type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0) + 20);
      v7 = sub_1DD0DAECC();

      if (__swift_getEnumTagSinglePayload(&a2[v6], 1, v7))
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
        memcpy(&a1[v6], &a2[v6], *(*(v8 - 8) + 64));
      }

      else
      {
        (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
        __swift_storeEnumTagSinglePayload(&a1[v6], 0, 1, v7);
      }
    }

    else
    {
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = *(a2 + 3);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1DCFC9320(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

char *initializeWithTake for SiriKitSnippets(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    v6 = *(type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0) + 20);
    v7 = sub_1DD0DAECC();
    if (__swift_getEnumTagSinglePayload(&a2[v6], 1, v7))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
      memcpy(&a1[v6], &a2[v6], *(*(v8 - 8) + 64));
    }

    else
    {
      (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
      __swift_storeEnumTagSinglePayload(&a1[v6], 0, 1, v7);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }
}

char *assignWithTake for SiriKitSnippets(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCFC9320(a1, type metadata accessor for SiriKitSnippets);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    v6 = *(type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0) + 20);
    v7 = sub_1DD0DAECC();
    if (__swift_getEnumTagSinglePayload(&a2[v6], 1, v7))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
      memcpy(&a1[v6], &a2[v6], *(*(v8 - 8) + 64));
    }

    else
    {
      (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
      __swift_storeEnumTagSinglePayload(&a1[v6], 0, 1, v7);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_1DCFC9644(uint64_t a1)
{
  result = type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for SiriKitSnippets.PunchOutSnippetModel(char *a1, char *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 20);
  v7 = sub_1DD0DAECC();

  if (__swift_getEnumTagSinglePayload(&a2[v6], 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
    memcpy(&a1[v6], &a2[v6], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
    __swift_storeEnumTagSinglePayload(&a1[v6], 0, 1, v7);
  }

  return a1;
}

uint64_t destroy for SiriKitSnippets.PunchOutSnippetModel(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = sub_1DD0DAECC();
  result = __swift_getEnumTagSinglePayload(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(*(v5 - 8) + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

char *initializeWithCopy for SiriKitSnippets.PunchOutSnippetModel(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 20);
  v7 = sub_1DD0DAECC();

  if (__swift_getEnumTagSinglePayload(&a2[v6], 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
    memcpy(&a1[v6], &a2[v6], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
    __swift_storeEnumTagSinglePayload(&a1[v6], 0, 1, v7);
  }

  return a1;
}

char *assignWithCopy for SiriKitSnippets.PunchOutSnippetModel(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = *(a3 + 20);
  v7 = sub_1DD0DAECC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&a1[v6], 1, v7);
  v9 = __swift_getEnumTagSinglePayload(&a2[v6], 1, v7);
  if (!EnumTagSinglePayload)
  {
    v10 = *(v7 - 8);
    if (!v9)
    {
      (*(v10 + 24))(&a1[v6], &a2[v6], v7);
      return a1;
    }

    (*(v10 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v9)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
    memcpy(&a1[v6], &a2[v6], *(*(v11 - 8) + 64));
    return a1;
  }

  (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
  __swift_storeEnumTagSinglePayload(&a1[v6], 0, 1, v7);
  return a1;
}

char *initializeWithTake for SiriKitSnippets.PunchOutSnippetModel(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_1DD0DAECC();
  if (__swift_getEnumTagSinglePayload(&a2[v5], 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
    memcpy(&a1[v5], &a2[v5], *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
    __swift_storeEnumTagSinglePayload(&a1[v5], 0, 1, v6);
  }

  return a1;
}

char *assignWithTake for SiriKitSnippets.PunchOutSnippetModel(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a3 + 20);
  v8 = sub_1DD0DAECC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&a1[v7], 1, v8);
  v10 = __swift_getEnumTagSinglePayload(&a2[v7], 1, v8);
  if (!EnumTagSinglePayload)
  {
    v11 = *(v8 - 8);
    if (!v10)
    {
      (*(v11 + 40))(&a1[v7], &a2[v7], v8);
      return a1;
    }

    (*(v11 + 8))(&a1[v7], v8);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
    memcpy(&a1[v7], &a2[v7], *(*(v12 - 8) + 64));
    return a1;
  }

  (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
  __swift_storeEnumTagSinglePayload(&a1[v7], 0, 1, v8);
  return a1;
}

void sub_1DCFC9D9C(uint64_t a1)
{
  sub_1DCFC9E34(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_1DCFC9E34(uint64_t a1)
{
  if (!qword_1ECCABA08)
  {
    sub_1DD0DAECC();
    v1 = sub_1DD0DE97C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECCABA08);
    }
  }
}

void *sub_1DCFC9E8C()
{
  OUTLINED_FUNCTION_21();
  *v3 = *v2;
  v1[1] = v2[1];

  v1[2] = *(v0 + 16);
  v1[3] = *(v0 + 24);

  return v1;
}

void *sub_1DCFC9EF8()
{
  OUTLINED_FUNCTION_21();
  v3 = v2[1];
  *v1 = *v2;
  v1[1] = v3;

  v4 = *(v0 + 24);
  v1[2] = *(v0 + 16);
  v1[3] = v4;

  return v1;
}

_BYTE *storeEnumTagSinglePayload for SiriKitSnippets.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DCFCA048(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1DCFCA114(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCFCA1F4()
{
  result = qword_1ECCABA10;
  if (!qword_1ECCABA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA10);
  }

  return result;
}

unint64_t sub_1DCFCA24C()
{
  result = qword_1ECCABA18;
  if (!qword_1ECCABA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA18);
  }

  return result;
}

unint64_t sub_1DCFCA2A4()
{
  result = qword_1ECCABA20;
  if (!qword_1ECCABA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA20);
  }

  return result;
}

unint64_t sub_1DCFCA2FC()
{
  result = qword_1ECCABA28;
  if (!qword_1ECCABA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA28);
  }

  return result;
}

unint64_t sub_1DCFCA354()
{
  result = qword_1ECCABA30;
  if (!qword_1ECCABA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA30);
  }

  return result;
}

unint64_t sub_1DCFCA3AC()
{
  result = qword_1ECCABA38;
  if (!qword_1ECCABA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA38);
  }

  return result;
}

unint64_t sub_1DCFCA404()
{
  result = qword_1ECCABA40;
  if (!qword_1ECCABA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA40);
  }

  return result;
}

unint64_t sub_1DCFCA45C()
{
  result = qword_1ECCABA48;
  if (!qword_1ECCABA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA48);
  }

  return result;
}

unint64_t sub_1DCFCA4B4()
{
  result = qword_1ECCABA50;
  if (!qword_1ECCABA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA50);
  }

  return result;
}

unint64_t sub_1DCFCA50C()
{
  result = qword_1ECCABA58;
  if (!qword_1ECCABA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA58);
  }

  return result;
}

unint64_t sub_1DCFCA564()
{
  result = qword_1ECCABA60;
  if (!qword_1ECCABA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA60);
  }

  return result;
}

unint64_t sub_1DCFCA5BC()
{
  result = qword_1ECCABA68;
  if (!qword_1ECCABA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA68);
  }

  return result;
}

unint64_t sub_1DCFCA614()
{
  result = qword_1ECCABA70;
  if (!qword_1ECCABA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA70);
  }

  return result;
}

unint64_t sub_1DCFCA66C()
{
  result = qword_1ECCABA78;
  if (!qword_1ECCABA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA78);
  }

  return result;
}

unint64_t sub_1DCFCA6C4()
{
  result = qword_1ECCABA80;
  if (!qword_1ECCABA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA80);
  }

  return result;
}

unint64_t sub_1DCFCA71C()
{
  result = qword_1ECCABA88;
  if (!qword_1ECCABA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA88);
  }

  return result;
}

unint64_t sub_1DCFCA774()
{
  result = qword_1ECCABA90;
  if (!qword_1ECCABA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA90);
  }

  return result;
}

unint64_t sub_1DCFCA7CC()
{
  result = qword_1ECCABA98;
  if (!qword_1ECCABA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABA98);
  }

  return result;
}

unint64_t sub_1DCFCA824()
{
  result = qword_1ECCABAA0;
  if (!qword_1ECCABAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABAA0);
  }

  return result;
}

unint64_t sub_1DCFCA87C()
{
  result = qword_1ECCABAA8;
  if (!qword_1ECCABAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABAA8);
  }

  return result;
}

unint64_t sub_1DCFCA8D4()
{
  result = qword_1ECCABAB0;
  if (!qword_1ECCABAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABAB0);
  }

  return result;
}

uint64_t sub_1DCFCAA94()
{
  result = qword_1ECCABAB8;
  if (!qword_1ECCABAB8)
  {
    sub_1DD0DCB5C();
  }

  return result;
}

uint64_t sub_1DCFCAAEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DD128E40 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DCFCABB8(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_1DCFCABF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCFCAAEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCFCAC20(uint64_t a1)
{
  v2 = sub_1DCFCACCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFCAC5C(uint64_t a1)
{
  v2 = sub_1DCFCACCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DCFCACCC()
{
  result = qword_1ECCABAC8;
  if (!qword_1ECCABAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABAC8);
  }

  return result;
}

uint64_t SiriKitUIModel.LocationAccessCarPlayPromptModel.titlePrompt.getter()
{
  v1 = *v0;

  return v1;
}

double SiriKitUIModel.LocationAccessCarPlayPromptModel.buttonAllowOnce.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

void SiriKitUIModel.LocationAccessCarPlayPromptModel.buttonAllowWhileUsingApp.getter(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1DCB3E244(v2, v3, v4, v5);
}

double SiriKitUIModel.LocationAccessCarPlayPromptModel.buttonDontAllow.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  *a1 = v1[10];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

uint64_t sub_1DCFCAE50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F7250656C746974 && a2 == 0xEB0000000074706DLL;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C416E6F74747562 && a2 == 0xEF65636E4F776F6CLL;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x80000001DD128E60 == a2;
      if (v7 || (sub_1DD0DF0AC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6F446E6F74747562 && a2 == 0xEF776F6C6C41746ELL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD0DF0AC();

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

unint64_t sub_1DCFCAFC4(char a1)
{
  result = 0x6F7250656C746974;
  switch(a1)
  {
    case 1:
      result = 0x6C416E6F74747562;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x6F446E6F74747562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCFCB074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCFCAE50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCFCB09C(uint64_t a1)
{
  v2 = sub_1DCFCB37C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFCB0D8(uint64_t a1)
{
  v2 = sub_1DCFCB37C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriKitUIModel.LocationAccessCarPlayPromptModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_20_3();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABAD8, &qword_1DD108200);
  OUTLINED_FUNCTION_9();
  v30 = v29;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_4_1();
  v36 = v23[6];
  v34 = v23[9];
  v35 = v23[7];
  v33 = v23[8];
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1DCFCB37C();
  sub_1DD0DF24C();
  sub_1DD0DEFBC();
  if (!v24)
  {
    sub_1DCFCB3D0();

    sub_1DD0DEFFC();

    sub_1DCB3E244(v36, v35, v33, v34);
    OUTLINED_FUNCTION_9_76();
    sub_1DD0DEFAC();
    sub_1DCCEA1B0(v36, v35);

    OUTLINED_FUNCTION_9_76();
    sub_1DD0DEFFC();
  }

  (*(v30 + 8))(v25, v28);
  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCFCB37C()
{
  result = qword_1ECCABAE0;
  if (!qword_1ECCABAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABAE0);
  }

  return result;
}

unint64_t sub_1DCFCB3D0()
{
  result = qword_1ECCABAE8;
  if (!qword_1ECCABAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABAE8);
  }

  return result;
}

void SiriKitUIModel.LocationAccessCarPlayPromptModel.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABAF0, &qword_1DD108208);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DCFCB37C();
  sub_1DD0DF23C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    LOBYTE(v26) = 0;
    v22 = sub_1DD0DEF0C();
    v23 = v7;
    LOBYTE(v25[0]) = 1;
    sub_1DCFCB768();
    OUTLINED_FUNCTION_1_130();
    sub_1DD0DEF4C();
    v18 = v26;
    v8 = v28;
    v20 = v29;
    v21 = v27;
    LOBYTE(v25[0]) = 2;
    OUTLINED_FUNCTION_1_130();
    sub_1DD0DEEFC();
    v16 = v26;
    v17 = v27;
    v14 = v8;
    v15 = v28;
    v9 = v29;
    OUTLINED_FUNCTION_1_130();
    sub_1DD0DEF4C();
    v10 = OUTLINED_FUNCTION_5_111();
    v11(v10);
    v19 = v41;
    v12 = v43;
    v13 = v42;
    v24 = v40;
    v25[0] = v22;
    v25[1] = v23;
    v25[2] = v18;
    v25[3] = v21;
    v25[4] = v14;
    v25[5] = v20;
    v25[6] = v16;
    v25[7] = v17;
    v25[8] = v15;
    v25[9] = v9;
    v25[10] = v40;
    v25[11] = v41;
    v25[12] = v42;
    v25[13] = v43;
    memcpy(v4, v25, 0x70uLL);
    sub_1DCFCB7BC(v25, &v26);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    v26 = v22;
    v27 = v23;
    v28 = v18;
    v29 = v21;
    v30 = v14;
    v31 = v20;
    v32 = v16;
    v33 = v17;
    v34 = v15;
    v35 = v9;
    v36 = v24;
    v37 = v19;
    v38 = v13;
    v39 = v12;
    sub_1DCFCB7F4(&v26);
  }

  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCFCB768()
{
  result = qword_1ECCABAF8;
  if (!qword_1ECCABAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABAF8);
  }

  return result;
}

uint64_t SiriKitUIModel.SiriNeedsLocationAccessErrorModel.titleError.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SiriKitUIModel.SiriNeedsLocationAccessErrorModel.buttonLabel.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1DCFCB8B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x727245656C746974 && a2 == 0xEA0000000000726FLL;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614C6E6F74747562 && a2 == 0xEB000000006C6562)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DCFCB988(char a1)
{
  if (a1)
  {
    return 0x614C6E6F74747562;
  }

  else
  {
    return 0x727245656C746974;
  }
}

uint64_t sub_1DCFCB9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCFCB8B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCFCB9FC(uint64_t a1)
{
  v2 = sub_1DCFCBBFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFCBA38(uint64_t a1)
{
  v2 = sub_1DCFCBBFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DCFCBAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_20_3();
  v34 = v25;
  v27 = v26;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  OUTLINED_FUNCTION_9();
  v35 = v31;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_4_1();
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  v34();
  sub_1DD0DF24C();
  sub_1DD0DEFBC();
  if (!v23)
  {
    sub_1DD0DEFBC();
  }

  (*(v35 + 8))(v24, v30);
  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCFCBBFC()
{
  result = qword_1ECCABB08;
  if (!qword_1ECCABB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB08);
  }

  return result;
}

void sub_1DCFCBC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_20_3();
  v25 = v24;
  v27 = v26;
  v47 = v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
  OUTLINED_FUNCTION_9();
  v46 = v32;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v46 - v35;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  v25();
  sub_1DD0DF23C();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  else
  {
    v38 = v46;
    v37 = v47;
    v39 = sub_1DD0DEF0C();
    v41 = v40;
    v42 = sub_1DD0DEF0C();
    v44 = v43;
    v45 = *(v38 + 8);
    v46 = v42;
    v45(v36, v31);
    *v37 = v39;
    v37[1] = v41;
    v37[2] = v46;
    v37[3] = v44;

    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  OUTLINED_FUNCTION_19_19();
}