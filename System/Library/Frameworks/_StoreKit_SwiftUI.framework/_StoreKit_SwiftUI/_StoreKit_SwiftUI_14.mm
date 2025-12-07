unint64_t sub_23BAC4214()
{
  result = qword_27E19F3D8;
  if (!qword_27E19F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F3D8);
  }

  return result;
}

unint64_t sub_23BAC42D8()
{
  result = qword_27E19F3F0;
  if (!qword_27E19F3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F3E0, &unk_23BBF8200);
    sub_23BAC43BC(&qword_27E19F260, &qword_27E19F258, &qword_23BBF7D28, sub_23BABC36C);
    sub_23B97B518(&qword_27E19F130, &qword_27E19F128, &unk_23BBF8210, MEMORY[0x277CE0858]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F3F0);
  }

  return result;
}

uint64_t sub_23BAC43BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BAC4438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19F3F8, &unk_23BBF8220);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BAC44A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23BAC4508(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_23BAC4560(uint64_t a1)
{
  sub_23BAC57FC(319, &qword_27E19F480, type metadata accessor for SubscriptionStoreContentConfiguration);
  if (v3 <= 0x3F)
  {
    v10 = 0;
    v13 = v2;
    v4 = *(a1 + 32);
    v9[0] = *(a1 + 16);
    v9[1] = v4;
    v5 = type metadata accessor for SubscriptionStoreContainerContext(319, v9);
    if (v6 <= 0x3F)
    {
      v11 = 0;
      v14 = v5;
      sub_23BAC4D3C(319);
      if (v8 <= 0x3F)
      {
        v12 = 0;
        v15 = v7;
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BAC4624(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_23BBDCDB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0xFD)
  {
    v11 = 253;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = v11 - 1;
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

  v15 = *(*(v8 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v16 = v8;
  v17 = *(v9 + 80) & 0xF8 | 7;
  v18 = v17 | *(v6 + 80);
  v19 = *(v6 + 64) + v17;
  if (v14 < a2)
  {
    v20 = ((17 - (((-81 - v17) | v17) - (((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + (v19 & ~v17))) - ((-9 - v18) | v18)) & 0xFFFFFFFFFFFFFFF8) + 48;
    v21 = v20 & 0xFFFFFFF8;
    if ((v20 & 0xFFFFFFF8) != 0)
    {
      v22 = 2;
    }

    else
    {
      v22 = a2 - v14 + 1;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    switch(v24)
    {
      case 1:
        v25 = *(a1 + v20);
        if (!v25)
        {
          break;
        }

        goto LABEL_28;
      case 2:
        v25 = *(a1 + v20);
        if (v25)
        {
          goto LABEL_28;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BAC4908);
      case 4:
        v25 = *(a1 + v20);
        if (!v25)
        {
          break;
        }

LABEL_28:
        v27 = v25 - 1;
        if (v21)
        {
          v27 = 0;
          v28 = *a1;
        }

        else
        {
          v28 = 0;
        }

        return v14 + (v28 | v27) + 1;
      default:
        break;
    }
  }

  if ((v14 & 0x80000000) != 0)
  {
    v30 = (a1 + v18 + 8) & ~v18;
    if (v7 >= v13)
    {

      return __swift_getEnumTagSinglePayload(v30, v7, v5);
    }

    else
    {
      v31 = (v17 + ((((((((v19 + v30) & ~v17) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v17;
      if (v10 < 0xFD)
      {
        v33 = *(((v15 + v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v33 >= 2)
        {
          v34 = (v33 + 2147483646) & 0x7FFFFFFF;
        }

        else
        {
          v34 = -1;
        }

        if ((v34 + 1) >= 2)
        {
          EnumTagSinglePayload = v34;
        }

        else
        {
          EnumTagSinglePayload = 0;
        }
      }

      else
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, v10, v16);
      }

      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v29 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v29) = -1;
    }

    return (v29 + 1);
  }
}

void sub_23BAC491C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_23BBDCDB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0xFD)
  {
    v13 = 253;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 - 1 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13 - 1;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v11 + 80) & 0xF8;
  v17 = v16 | 7;
  v18 = v16 | 7 | *(v8 + 80);
  v19 = *(v8 + 64) + (v16 | 7);
  v20 = *(*(v10 - 8) + 64);
  v21 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v22 = ((v16 + 87) & ~(v16 | 7)) + v21;
  v23 = ((((v18 + 8) & ~v18) + (v19 & ~(v16 | 7)) + v22 + 9) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v15 >= a3)
  {
    v26 = 0;
  }

  else
  {
    if (((((v18 + 8) & ~v18) + (v19 & ~v17) + v22 + 9) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v24 = a3 - v15 + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }
  }

  if (a2 > v15)
  {
    if (((((v18 + 8) & ~v18) + (v19 & ~v17) + v22 + 9) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v27 = a2 - v15;
    }

    else
    {
      v27 = 1;
    }

    if (((((v18 + 8) & ~v18) + (v19 & ~v17) + v22 + 9) & 0xFFFFFFF8) != 0xFFFFFFD0)
    {
      v28 = ~v15 + a2;
      bzero(a1, v23);
      *a1 = v28;
    }

    switch(v26)
    {
      case 1:
        *(a1 + v23) = v27;
        return;
      case 2:
        *(a1 + v23) = v27;
        return;
      case 3:
        goto LABEL_74;
      case 4:
        *(a1 + v23) = v27;
        return;
      default:
        return;
    }
  }

  v29 = ~v17;
  switch(v26)
  {
    case 1:
      *(a1 + v23) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    case 2:
      *(a1 + v23) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    case 3:
LABEL_74:
      __break(1u);
      JUMPOUT(0x23BAC4D04);
    case 4:
      *(a1 + v23) = 0;
      goto LABEL_37;
    default:
LABEL_37:
      if (!a2)
      {
        return;
      }

LABEL_38:
      if ((v15 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v30 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v30 = (a2 - 1);
        }

        *a1 = v30;
        return;
      }

      v31 = (a1 + v18 + 8) & ~v18;
      if (v9 >= v14)
      {
        v36 = a2;
        v12 = v9;
        v10 = v7;
      }

      else
      {
        v32 = ((v19 + v31) & v29);
        if (v14 < a2)
        {
          if (v22 <= 2)
          {
            v33 = ~(-1 << (8 * (v22 + 1)));
          }

          else
          {
            v33 = -1;
          }

          v34 = v33 & (~v14 + a2);
          if (v22 <= 2)
          {
            v35 = v22 + 1;
          }

          else
          {
            v35 = 4;
          }

          bzero(v32, (v22 + 1));
          switch(v35)
          {
            case 2:
              *v32 = v34;
              break;
            case 3:
              *v32 = v34;
              v32[2] = BYTE2(v34);
              break;
            case 4:
              goto LABEL_62;
            default:
              goto LABEL_66;
          }

          return;
        }

        v32 = ((v17 + ((((((v32 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & v29);
        if (v13 - 1 < a2)
        {
          v34 = a2 - v13;
          bzero(v32, ((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
          if (v21 <= 3)
          {
LABEL_66:
            *v32 = v34;
          }

          else
          {
LABEL_62:
            *v32 = v34;
          }

          return;
        }

        v37 = a2 - v13;
        if (a2 >= v13)
        {
          bzero(v32, ((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
          if (v21 <= 3)
          {
            *v32 = v37;
          }

          else
          {
            *v32 = v37;
          }

          return;
        }

        v36 = (a2 + 1);
        if (v12 < 0xFD)
        {
          v38 = &v32[v20 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFC)
          {
            *v38 = 0;
            *(v38 + 8) = 0;
            *v38 = a2 - 253;
          }

          else
          {
            *(v38 + 8) = a2 + 3;
          }

          return;
        }

        v31 = v32;
      }

      __swift_storeEnumTagSinglePayload(v31, v36, v12, v10);
      return;
  }
}

void sub_23BAC4D3C(uint64_t a1)
{
  if (!qword_27E19F488[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197878, &qword_23BBE38D0);
    v1 = sub_23BBDBF98();
    if (!v2)
    {
      atomic_store(v1, qword_27E19F488);
    }
  }
}

void sub_23BAC4DA0(uint64_t a1)
{
  sub_23BAC57FC(319, &qword_27E19F480, type metadata accessor for SubscriptionStoreContentConfiguration);
  if (v3 <= 0x3F)
  {
    v8 = 0;
    v10 = v2;
    v4 = *(a1 + 32);
    v7[0] = *(a1 + 16);
    v7[1] = v4;
    v5 = type metadata accessor for SubscriptionStoreContainerContext(319, v7);
    if (v6 <= 0x3F)
    {
      v9 = 0;
      v11 = v5;
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BAC4E4C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_23BBDCDB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0xFD)
  {
    v11 = 253;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = v11 - 1;
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

  v15 = *(*(v8 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v16 = v8;
  v17 = *(v9 + 80) & 0xF8 | 7;
  v18 = v17 | *(v6 + 80);
  v19 = *(v6 + 64) + v17;
  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v20 = (((-81 - v17) | v17) - (((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + (v19 & ~v17)) + ((-9 - v18) | v18) - 12) ^ 0xFFFFFFFFFFFFFFFELL;
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((a2 - v14 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    if (v24 < 2)
    {
LABEL_31:
      if ((v14 & 0x80000000) != 0)
      {
        v29 = (a1 + v18 + 8) & ~v18;
        if (v7 >= v13)
        {

          return __swift_getEnumTagSinglePayload(v29, v7, v5);
        }

        else
        {
          v30 = (v17 + ((((((((v19 + v29) & ~v17) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v17;
          if (v10 < 0xFD)
          {
            v32 = *(((v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
            if (v32 >= 2)
            {
              v33 = (v32 + 2147483646) & 0x7FFFFFFF;
            }

            else
            {
              v33 = -1;
            }

            if ((v33 + 1) >= 2)
            {
              EnumTagSinglePayload = v33;
            }

            else
            {
              EnumTagSinglePayload = 0;
            }
          }

          else
          {
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, v10, v16);
          }

          if (EnumTagSinglePayload >= 2)
          {
            return EnumTagSinglePayload - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v28 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
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
    goto LABEL_31;
  }

LABEL_21:
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

    switch(v26)
    {
      case 2:
        v27 = *a1;
        break;
      case 3:
        v27 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v27 = *a1;
        break;
      default:
        v27 = *a1;
        break;
    }
  }

  else
  {
    v27 = 0;
  }

  return v14 + (v27 | v25) + 1;
}

void sub_23BAC517C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_23BBDCDB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0xFD)
  {
    v13 = 253;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 - 1 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13 - 1;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v11 + 80) & 0xF8;
  v17 = v16 | 7;
  v18 = v16 | 7 | *(v8 + 80);
  v19 = *(v8 + 64) + (v16 | 7);
  v20 = *(*(v10 - 8) + 64);
  v21 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v22 = ((v16 + 87) & ~(v16 | 7)) + v21;
  v23 = v22 + (v19 & ~(v16 | 7)) + ((v18 + 8) & ~v18) + 3;
  v24 = 8 * v23;
  if (a3 <= v15)
  {
    v25 = 0;
  }

  else if (v23 <= 3)
  {
    v29 = ((a3 - v15 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v29))
    {
      v25 = 4;
    }

    else
    {
      if (v29 < 0x100)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2;
      }

      if (v29 >= 2)
      {
        v25 = v30;
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else
  {
    v25 = 1;
  }

  if (v15 < a2)
  {
    v26 = ~v15 + a2;
    if (v23 < 4)
    {
      v27 = (v26 >> v24) + 1;
      if (v22 + (v19 & ~v17) + ((v18 + 8) & ~v18) != -3)
      {
        v31 = v26 & ~(-1 << v24);
        bzero(a1, v23);
        if (v23 == 3)
        {
          *a1 = v31;
          a1[2] = BYTE2(v31);
        }

        else if (v23 == 2)
        {
          *a1 = v31;
        }

        else
        {
          *a1 = v26;
        }
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v26;
      v27 = 1;
    }

    switch(v25)
    {
      case 1:
        a1[v23] = v27;
        return;
      case 2:
        *&a1[v23] = v27;
        return;
      case 3:
        goto LABEL_76;
      case 4:
        *&a1[v23] = v27;
        return;
      default:
        return;
    }
  }

  v28 = ~v17;
  switch(v25)
  {
    case 1:
      a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 2:
      *&a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 3:
LABEL_76:
      __break(1u);
      JUMPOUT(0x23BAC55D4);
    case 4:
      *&a1[v23] = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (!a2)
      {
        return;
      }

LABEL_33:
      if ((v15 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v32 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v32 = (a2 - 1);
        }

        *a1 = v32;
        return;
      }

      v33 = &a1[v18 + 8] & ~v18;
      if (v9 >= v14)
      {
        v38 = a2;
        v12 = v9;
        v10 = v7;
      }

      else
      {
        v34 = ((v19 + v33) & v28);
        if (v14 < a2)
        {
          if (v22 <= 2)
          {
            v35 = ~(-1 << (8 * (v22 + 1)));
          }

          else
          {
            v35 = -1;
          }

          v36 = v35 & (~v14 + a2);
          if (v22 <= 2)
          {
            v37 = v22 + 1;
          }

          else
          {
            v37 = 4;
          }

          bzero(v34, (v22 + 1));
          switch(v37)
          {
            case 2:
              *v34 = v36;
              break;
            case 3:
              *v34 = v36;
              v34[2] = BYTE2(v36);
              break;
            case 4:
              goto LABEL_64;
            default:
              goto LABEL_68;
          }

          return;
        }

        v34 = ((v17 + ((((((v34 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & v28);
        if (v13 - 1 < a2)
        {
          v36 = a2 - v13;
          bzero(v34, ((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
          if (v21 <= 3)
          {
LABEL_68:
            *v34 = v36;
          }

          else
          {
LABEL_64:
            *v34 = v36;
          }

          return;
        }

        v39 = a2 - v13;
        if (a2 >= v13)
        {
          bzero(v34, ((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
          if (v21 <= 3)
          {
            *v34 = v39;
          }

          else
          {
            *v34 = v39;
          }

          return;
        }

        v38 = (a2 + 1);
        if (v12 < 0xFD)
        {
          v40 = &v34[v20 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFC)
          {
            *v40 = 0;
            *(v40 + 8) = 0;
            *v40 = a2 - 253;
          }

          else
          {
            *(v40 + 8) = a2 + 3;
          }

          return;
        }

        v33 = v34;
      }

      __swift_storeEnumTagSinglePayload(v33, v38, v12, v10);
      return;
  }
}

void sub_23BAC560C(uint64_t a1)
{
  sub_23BAC57FC(319, &qword_27E19F590, type metadata accessor for SubscriptionStoreContentConfiguration.Section);
  if (v3 <= 0x3F)
  {
    type metadata accessor for SubscriptionStoreControlConfiguration(319, *(a1 + 24), *(a1 + 40), v2);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BAC56D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for SubscriptionStoreControlConfiguration(0, *(a3 + 24), *(a3 + 40), a4);
    v10 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_23BAC5774(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SubscriptionStoreControlConfiguration(0, *(a4 + 24), *(a4 + 40), a4);
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23BAC57FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23BBDD2A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23BAC5850()
{
  v0 = OUTLINED_FUNCTION_2_30();
  type metadata accessor for NestedSubscriptionOptionContentView.LeafView(v0, v1);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F3E0, &unk_23BBF8200);
  v2 = OUTLINED_FUNCTION_2_30();
  v4 = type metadata accessor for NestedSubscriptionOptionContentView(v2, v3);
  OUTLINED_FUNCTION_9_19(v4);
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  sub_23BBDACE8();
  v5 = OUTLINED_FUNCTION_2_30();
  type metadata accessor for NestedSubscriptionOptionContentView.LinkGroupView(v5, v6);
  v7 = OUTLINED_FUNCTION_2_30();
  type metadata accessor for NestedSubscriptionOptionContentView.TabGroupView(v7, v8);
  sub_23BBDACE8();
  sub_23BBDACE8();
  sub_23BBDACE8();
  sub_23BBDACE8();
  sub_23BBDBE28();
  OUTLINED_FUNCTION_7_29();
  swift_getWitnessTable();
  sub_23B9ECF44();
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_25();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_29();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  return swift_getWitnessTable();
}

uint64_t sub_23BAC5ABC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[5];
  v4 = OUTLINED_FUNCTION_12_20();
  v6 = type metadata accessor for NestedSubscriptionOptionContentView.TabGroupView(v4, v5);
  v7 = v0 + ((*(*(v6 - 8) + 80) + 48) & ~*(*(v6 - 8) + 80));

  v8 = &v7[*(v6 + 52)];
  (*(*(v2 - 8) + 8))(v8, v2);
  v9 = OUTLINED_FUNCTION_12_20();
  v11 = &v8[*(type metadata accessor for SubscriptionStoreContainerContext(v9, v10) + 52)];

  if (*(v11 + 6))
  {
  }

  v13 = *(type metadata accessor for SubscriptionStoreControlConfiguration(0, v1, v3, v12) + 60);
  v14 = type metadata accessor for Subscription(0);
  if (!__swift_getEnumTagSinglePayload(&v11[v13], 1, v14))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_4_1();
    (*(v15 + 8))(&v11[v13]);
  }

  v16 = &v7[*(v6 + 56)];
  if (*(v16 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return swift_deallocObject();
}

uint64_t sub_23BAC5C80()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8[0] = v0[2];
  v1 = v8[0];
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v5 = *(type metadata accessor for NestedSubscriptionOptionContentView.TabGroupView(0, v8) - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_23BAC26C8(v6, v1, v2, v3, v4);
}

unint64_t sub_23BAC5D24()
{
  result = qword_27E19F5D0;
  if (!qword_27E19F5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5C0, &qword_23BBF83A8);
    sub_23BAC43BC(&qword_27E19F5D8, &qword_27E19F5E0, &qword_23BBF83B8, sub_23BAC5DDC);
    sub_23BAC5E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F5D0);
  }

  return result;
}

unint64_t sub_23BAC5DDC()
{
  result = qword_27E19F5E8;
  if (!qword_27E19F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F5E8);
  }

  return result;
}

unint64_t sub_23BAC5E30()
{
  result = qword_27E19F5F0;
  if (!qword_27E19F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F5F0);
  }

  return result;
}

unint64_t sub_23BAC5E84()
{
  result = qword_27E19F5F8;
  if (!qword_27E19F5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5C8, &qword_23BBF83B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F5F8);
  }

  return result;
}

unint64_t sub_23BAC5F00()
{
  result = qword_27E19F600;
  if (!qword_27E19F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F600);
  }

  return result;
}

uint64_t sub_23BAC5F54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F3E0, &unk_23BBF8200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BAC6114(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F3E0, &unk_23BBF8200);
  v10 = v1;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v5 = type metadata accessor for NestedSubscriptionOptionContentView(255, &v10);
  OUTLINED_FUNCTION_9_19(v5);
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_48();
  sub_23BBDD648();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0, &qword_23BBF8390);
  v7 = sub_23B97B518(&qword_27E19F5A8, &qword_27E19F5A0, &qword_23BBF8390, MEMORY[0x277D83FB8]);
  v10 = v6;
  v11 = v1;
  v12 = v2;
  v13 = v7;
  v14 = v3;
  v15 = v4;
  v8 = type metadata accessor for StoreContentNavigation(255, &v10);
  OUTLINED_FUNCTION_9_19(v8);
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_2_5();
  return swift_getWitnessTable();
}

uint64_t sub_23BAC6214(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5B8, &qword_23BBF83A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5B0, &qword_23BBF8398);
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  type metadata accessor for NestedSubscriptionOptionContentView(255, v4);
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDD648();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_2_5();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_8_28()
{
  *(v4 - 120) = v3;
  *(v4 - 112) = v1;
  *(v4 - 104) = v0;
  *(v4 - 96) = v2;
  return 255;
}

uint64_t OUTLINED_FUNCTION_9_19(uint64_t a1)
{

  return swift_getTupleTypeMetadata2();
}

uint64_t sub_23BAC643C()
{
  sub_23BAA8AEC();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BAC6478@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BAC643C();
  *a1 = result;
  return result;
}

uint64_t sub_23BAC650C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F628, &qword_23BBF8520);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  KeyPath = swift_getKeyPath();
  if (a2)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B620, &qword_23BBED028);
    v13 = swift_allocObject();
    *(v13 + 16) = sub_23BAC676C;
    *(v13 + 24) = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F630, &unk_23BBF8550);
  (*(*(v14 - 8) + 16))(v10, a1, v14);
  v15 = &v10[*(v8 + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  sub_23BAC66C4(v10, a4);
  return sub_23B9794F0(a2, a3);
}

uint64_t sub_23BAC6694@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BAC643C();
  *a1 = result;
  return result;
}

uint64_t sub_23BAC66C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F628, &qword_23BBF8520);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BAC6734()
{

  return swift_deallocObject();
}

unint64_t sub_23BAC67A8()
{
  result = qword_27E19F638;
  if (!qword_27E19F638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F628, &qword_23BBF8520);
    sub_23B97B518(&qword_27E19F640, &qword_27E19F630, &unk_23BBF8550, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E19B638, &qword_27E19B640, &unk_23BC02150, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F638);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlatterStyleVariant(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BAC6958);
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

uint64_t sub_23BAC69A0(uint64_t a1, __n128 a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197F40, &qword_23BBE4A08);
      sub_23BAC73D4();
    }
  }

  else
  {
    sub_23BBDBD28();
  }

  return sub_23BBD9DF8();
}

uint64_t sub_23BAC6A58()
{
  v0 = sub_23BAC717C();
  OUTLINED_FUNCTION_1_39(&_s22PlatterStyleOptionsKeyON, v1, v0);
  return v3 & 1;
}

uint64_t sub_23BAC6A90()
{
  v0 = sub_23BAC717C();
  OUTLINED_FUNCTION_1_39(&_s22PlatterStyleOptionsKeyON, v1, v0);
  return (v3 >> 2) & 1;
}

double sub_23BAC6AC8(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;
  sub_23BBDB9B8();

  return result;
}

uint64_t sub_23BAC6B80(uint64_t a1)
{
  if (sub_23BBDC2A8())
  {
    return 2;
  }

  if (qword_27E1977E0 != -1)
  {
    OUTLINED_FUNCTION_0_37(&qword_27E1977E0);
  }

  if (byte_27E1A04D0 != 3)
  {
    return byte_27E1A04D0 == 1;
  }

  storekit_dyld_fall_2024_os_versions();
  return dyld_program_sdk_at_least();
}

uint64_t sub_23BAC6BF4@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_2();
  *a1 = result;
  return result;
}

uint64_t sub_23BAC6C28@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BB05F40(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_23BAC6C58@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23B9A0014(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_23BAC6C88@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BB05F58(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_23BAC6CC0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BB05F88(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_23BAC6CF4@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BB05FEC(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_23BAC6D40@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BB0604C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_23BAC6DA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_23BB05E90(a2);
  *a1 = result;
  return result;
}

unint64_t sub_23BAC6DD4()
{
  result = qword_27E19F650;
  if (!qword_27E19F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F650);
  }

  return result;
}

unint64_t sub_23BAC6E2C()
{
  result = qword_27E19F658;
  if (!qword_27E19F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F658);
  }

  return result;
}

unint64_t sub_23BAC6E84()
{
  result = qword_27E19F660;
  if (!qword_27E19F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F660);
  }

  return result;
}

unint64_t sub_23BAC6EDC()
{
  result = qword_27E19F668;
  if (!qword_27E19F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F668);
  }

  return result;
}

unint64_t sub_23BAC6F34()
{
  result = qword_27E19F670;
  if (!qword_27E19F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F670);
  }

  return result;
}

uint64_t sub_23BAC6F88(uint64_t a1)
{
  result = sub_23BBDC2A8();
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  byte_27E19F648 = v2;
  return result;
}

uint64_t sub_23BAC6FB4@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27E1977D0 != -1)
  {
    result = swift_once();
  }

  *a1 = byte_27E19F648;
  return result;
}

uint64_t sub_23BAC7010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BAC6F34();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23BAC7074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BAC6DD4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23BAC70D8()
{
  v0 = sub_23BAC72B4();
  OUTLINED_FUNCTION_1_39(&_s26AutomaticPlatterVariantKeyON, v1, v0);
  return v3;
}

uint64_t sub_23BAC7148()
{
  v0 = sub_23BAC717C();
  OUTLINED_FUNCTION_1_39(&_s22PlatterStyleOptionsKeyON, v1, v0);
  return v3;
}

unint64_t sub_23BAC717C()
{
  result = qword_27E19F678;
  if (!qword_27E19F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F678);
  }

  return result;
}

uint64_t sub_23BAC720C()
{
  v0 = sub_23BAC717C();
  OUTLINED_FUNCTION_1_39(&_s22PlatterStyleOptionsKeyON, v1, v0);
  return (v3 >> 1) & 1;
}

uint64_t sub_23BAC7244()
{
  v0 = sub_23BAC717C();
  OUTLINED_FUNCTION_1_39(&_s22PlatterStyleOptionsKeyON, v1, v0);
  return (v3 >> 3) & 1;
}

uint64_t sub_23BAC727C()
{
  v0 = sub_23BAC717C();
  OUTLINED_FUNCTION_1_39(&_s22PlatterStyleOptionsKeyON, v1, v0);
  return (v3 >> 4) & 1;
}

unint64_t sub_23BAC72B4()
{
  result = qword_27E19F680;
  if (!qword_27E19F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F680);
  }

  return result;
}

_BYTE *sub_23BAC7318(_BYTE *result)
{
  v1 = result;
  if (qword_27E1977E0 != -1)
  {
    result = OUTLINED_FUNCTION_0_37(&qword_27E1977E0);
  }

  if (byte_27E1A04D0 == 1 || byte_27E1A04D0 == 3 && (storekit_dyld_fall_2024_os_versions(), result = dyld_program_sdk_at_least(), result))
  {
    *v1 |= 0x10u;
  }

  return result;
}

unint64_t sub_23BAC73D4()
{
  result = qword_27E197F48;
  if (!qword_27E197F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197F40, &qword_23BBE4A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197F48);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_37(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_1_39(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_23BBDA958();
}

uint64_t sub_23BAC74C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*v1 != *(v1 + 24))
  {
    goto LABEL_4;
  }

  if (*(v1 + 16))
  {
    if ((*(v1 + 40) & 1) == 0)
    {
LABEL_4:
      v4 = *(v1 + 48);
      v5 = *(v1 + 56);
      v6 = OUTLINED_FUNCTION_27();
      sub_23BAC7DFC(v6, v7, v3, v8);
      v9 = OUTLINED_FUNCTION_27();
      sub_23BA9379C(v9, v10, v3, v4, v5, v11);
      v12 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    if (*(v1 + 8) == *(v1 + 32))
    {
      v13 = *(v1 + 40);
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      goto LABEL_4;
    }
  }

  v12 = 1;
LABEL_10:
  v14 = type metadata accessor for SubscriptionStoreControlOption(0);

  return __swift_storeEnumTagSinglePayload(a1, v12, 1, v14);
}

uint64_t sub_23BAC75E4()
{
  OUTLINED_FUNCTION_40();
  sub_23BBDA098();
  sub_23BAC98DC(&qword_27E199DF0, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
  OUTLINED_FUNCTION_27();
  sub_23BBDD438();
  OUTLINED_FUNCTION_27();
  sub_23BBDD4A8();
  if (v10[4] == v10[0])
  {
    v1 = sub_23BBD9F58();
    v2 = v0;
    v3 = 1;
  }

  else
  {
    v4 = sub_23BBDD558();
    v6 = v5;
    v7 = sub_23BBD9F58();
    OUTLINED_FUNCTION_4_1();
    (*(v8 + 16))(v0, v6, v7);
    v4(v10, 0);
    v2 = v0;
    v3 = 0;
    v1 = v7;
  }

  return __swift_storeEnumTagSinglePayload(v2, v3, 1, v1);
}

uint64_t sub_23BAC774C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  v9 = v8;
  if (v7)
  {
    sub_23BAC987C(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a4, v10, 1, v9);
}

uint64_t sub_23BAC781C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

double sub_23BAC78F4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_23B9F4E64(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_23BAC7954@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  if (a2() == *(a1 + 16) && (v8 & 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    a3();
    v9 = 0;
  }

  v10 = a4(0);

  return __swift_storeEnumTagSinglePayload(a5, v9, 1, v10);
}

double SubscriptionOfferViewStyleConfiguration.subscriptions.getter()
{
  if (*(v0 + *(type metadata accessor for SubscriptionOfferViewStyleConfiguration(0) + 40) + 16) == 1)
  {
  }

  return result;
}

uint64_t SubscriptionOfferViewStyleConfiguration.subscriptionGroupDisplayName.getter()
{
  v1 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_3_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  OUTLINED_FUNCTION_13_0(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = (v0 + *(type metadata accessor for SubscriptionOfferViewStyleConfiguration(0) + 40));
  if (*(v12 + 16) == 1)
  {
    v13 = *v12;
    if (*(v13 + 16))
    {
      (*(v3 + 16))(v7, v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v1);
      sub_23BBDC8F8();
      (*(v3 + 8))(v7, v1);
      v14 = sub_23BBDCB58();
      if (__swift_getEnumTagSinglePayload(v11, 1, v14) != 1)
      {
        v15 = sub_23BBDCA68();
        (*(*(v14 - 8) + 8))(v11, v14);
        return v15;
      }

      sub_23B979910(v11, &qword_27E197B90, &qword_23BBE3F90);
    }
  }

  return 0;
}

double sub_23BAC7C28@<D0>(uint64_t a1@<X8>)
{
  sub_23BAC9698();
  sub_23BBDA958();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_23BAC7CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  OUTLINED_FUNCTION_3_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  (*(v8 + 16))(v11 - v10, a1, a2);
  v12 = sub_23BBDC0D8();
  result = (*(v8 + 8))(a1, a2);
  *a4 = v12;
  return result;
}

uint64_t type metadata accessor for SubscriptionOfferViewStyleConfiguration(uint64_t a1)
{
  result = qword_27E19F688;
  if (!qword_27E19F688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BAC7DFC(uint64_t result, uint64_t a2, char a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = *a4 <= result;
  if (*a4 == result)
  {
    LOBYTE(v4) = *(a4 + 16);
    if ((a3 & 1) == 0)
    {
      goto LABEL_7;
    }

    if (a4[2])
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (v5)
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_7:
  if (v4)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = a4[1];
  if (v6 > a2)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = a4[3];
  v7 = v6 <= result;
  if (v6 == result)
  {
    LOBYTE(v6) = *(a4 + 40);
    if (a3)
    {
LABEL_18:
      if ((v6 & 1) == 0)
      {
LABEL_22:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_20;
    }

    if (a4[5])
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v6 = a4[4];
    v7 = v6 <= a2;
    if (v6 > a2)
    {
      return result;
    }

    __break(1u);
  }

  if (v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t SubscriptionOfferViewStyleConfiguration.activeOffer.getter()
{
  v2 = OUTLINED_FUNCTION_40();
  v3 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(v2);
  return sub_23B99FCE0(v1 + *(v3 + 32), v0, &unk_27E19FEF0, &unk_23BBE3E40);
}

uint64_t SubscriptionOfferViewStyleConfiguration.icon.getter()
{
  v2 = OUTLINED_FUNCTION_40();
  *v0 = *(v1 + *(type metadata accessor for SubscriptionOfferViewStyleConfiguration(v2) + 36));
}

id SubscriptionOfferViewStyleConfiguration.state.getter()
{
  v2 = OUTLINED_FUNCTION_40();
  v3 = v1 + *(type metadata accessor for SubscriptionOfferViewStyleConfiguration(v2) + 40);
  v4 = *v3;
  v5 = *(v3 + 8);
  *v0 = *v3;
  *(v0 + 8) = v5;
  v6 = *(v3 + 16);
  *(v0 + 16) = v6;

  return sub_23BA1D218(v4, v5, v6);
}

double SubscriptionOfferViewStyleConfiguration.subscriptionStatus.getter()
{
  type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);

  return result;
}

uint64_t SubscriptionOfferViewStyleConfiguration.visibleSubscription.getter()
{
  v2 = OUTLINED_FUNCTION_40();
  v3 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(v2);
  return sub_23B99FCE0(v1 + *(v3 + 48), v0, &qword_27E1987F0, &unk_23BBE5E10);
}

uint64_t SubscriptionOfferViewStyleConfiguration.visibleSubscription.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SubscriptionOfferViewStyleConfiguration(0) + 48);

  return sub_23B9FF5CC(a1, v3);
}

Swift::Void __swiftcall SubscriptionOfferViewStyleConfiguration.subscribe()()
{
  v1 = (v0 + *(type metadata accessor for SubscriptionOfferViewStyleConfiguration(0) + 28));
  if (*v1)
  {
    (*v1)();
  }
}

Swift::Void __swiftcall SubscriptionOfferViewStyleConfiguration.displayDetails()()
{
  v1 = (v0 + *(type metadata accessor for SubscriptionOfferViewStyleConfiguration(0) + 24));
  if (*v1)
  {
    (*v1)();
  }
}

uint64_t sub_23BAC80E0(double a1)
{
  sub_23BBDC8A8();
  OUTLINED_FUNCTION_3_2();
  v50 = v3;
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v49 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  OUTLINED_FUNCTION_13_0(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  v52 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0, &unk_23BBE5E10);
  OUTLINED_FUNCTION_13_0(v14);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v18 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_3_2();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v47 - v25;
  v27 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);
  sub_23B99FCE0(v1 + v27[12], v17, &qword_27E1987F0, &unk_23BBE5E10);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_23B979910(v17, &qword_27E1987F0, &unk_23BBE5E10);
LABEL_19:
    v35 = 0;
    return v35 & 1;
  }

  (*(v20 + 32))(v26, v17, v18);
  if (*(v1 + v27[7]))
  {
    sub_23B99FCE0(v1 + v27[8], v13, &unk_27E19FEF0, &unk_23BBE3E40);
    v28 = sub_23BBDCC88();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v28);
    sub_23B979910(v13, &unk_27E19FEF0, &unk_23BBE3E40);
    if (EnumTagSinglePayload == 1)
    {
      v30 = v52;
      sub_23B99FCE0(v1, v52, qword_27E197A68, qword_23BBE3D90);
      v31 = type metadata accessor for Subscription(0);
      v32 = v26;
      if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
      {
        sub_23B979910(v30, qword_27E197A68, qword_23BBE3D90);
        v33 = 0;
        v34 = 0;
      }

      else
      {
        (*(v20 + 16))(v23, v30, v18);
        sub_23BA1D2DC(v30);
        v33 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
        v34 = v36;
        (*(v20 + 8))(v23, v18);
      }

      v37 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      if (v34)
      {
        if (v33 == v37 && v34 == v38)
        {

LABEL_22:
          v42 = v48;
          sub_23BBDCD28();
          v43 = v49;
          sub_23BBDC868();
          sub_23BAC98DC(&qword_27E1987F8, MEMORY[0x277CDD168], MEMORY[0x277CDD170]);
          v44 = v51;
          v45 = sub_23BBDCF38();
          v46 = *(v50 + 8);
          v46(v43, v44);
          v46(v42, v44);
          (*(v20 + 8))(v32, v18);
          v35 = v45 ^ 1;
          return v35 & 1;
        }

        v40 = sub_23BBDDA88();

        if (v40)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    (*(v20 + 8))(v26, v18);
    goto LABEL_19;
  }

  (*(v20 + 8))(v26, v18);
  v35 = 1;
  return v35 & 1;
}

double sub_23BAC8630@<D0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v2 = sub_23BAC97E0();
  v3 = swift_allocObject();
  result = 0.0;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  *a1 = sub_23BAC97DC;
  a1[1] = 0;
  a1[2] = &type metadata for AutomaticSubscriptionOfferViewStyle;
  a1[3] = v2;
  a1[4] = v3;
  return result;
}

double sub_23BAC869C@<D0>(uint64_t a1@<X8>)
{
  sub_23BAC8630(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t View.subscriptionOfferViewStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  v17 = type metadata accessor for SubscriptionOfferViewStyleModifier(0, v14, v16, v15);
  OUTLINED_FUNCTION_3_2();
  v19 = v18;
  OUTLINED_FUNCTION_7_0();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v25 - v22;
  (*(v9 + 16))(v13, a1, a3, v21);
  (*(v9 + 32))(v23, v13, a3);
  MEMORY[0x23EEB43C0](v23, a2, v17, a4);
  return (*(v19 + 8))(v23, v17);
}

uint64_t sub_23BAC88D4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198850, &qword_23BBE5EC0);
  OUTLINED_FUNCTION_10_2();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_12:
    v9 = a1 + v12;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  OUTLINED_FUNCTION_10_2();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[8];
    goto LABEL_12;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0, &unk_23BBE5E10);
    v12 = a3[12];
    goto LABEL_12;
  }

  v15 = *(a1 + a3[9]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

void sub_23BAC8A64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198850, &qword_23BBE5EC0);
    OUTLINED_FUNCTION_10_2();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
      OUTLINED_FUNCTION_10_2();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[8];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(a1 + a4[9]) = (a2 - 1);
          return;
        }

        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0, &unk_23BBE5E10);
        v14 = a4[12];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_23BAC8BDC(uint64_t a1)
{
  sub_23BAC8DC8(319, &qword_27E197B28, type metadata accessor for Subscription, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23BAC8DC8(319, &qword_27E19F698, type metadata accessor for SubscriptionComparator.Compared, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23BA55588(319);
      if (v3 <= 0x3F)
      {
        sub_23BAC8DC8(319, &qword_27E197B58, MEMORY[0x277CDD2B8], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23BAC8DC8(319, qword_27E19F6A0, MEMORY[0x277CDD258], MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            sub_23BAC8DC8(319, &qword_27E198828, MEMORY[0x277CDD330], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_23BAC8DC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23BAC8E48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SubscriptionOfferViewStyleModifier(255, a1[1], a1[3], a4);
  sub_23BBDA358();
  OUTLINED_FUNCTION_2_31();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t sub_23BAC8EB4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
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

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_23BAC9000(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
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
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x23BAC9204);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}

uint64_t sub_23BAC9270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v22 = a3;
  v5 = *(a2 + 16);
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](a1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F728, &qword_23BBF8AA8);
  v9 = sub_23BBDA358();
  v20 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  swift_getKeyPath();
  (*(v6 + 16))(v8, v3, v5);
  memset(v31, 0, sizeof(v31));
  v32 = 0;
  sub_23BBAE988(v8, v31, v5, *(a2 + 24), v28);
  v30 = v29;
  v25 = v28[0];
  v26 = v28[1];
  v27 = v29;
  WitnessTable = swift_getWitnessTable();
  sub_23BBDB748();

  sub_23B979910(&v30, &qword_27E19C2A8, &qword_23BBEEF30);
  v16 = sub_23B97B518(&qword_27E19F730, &qword_27E19F728, &qword_23BBF8AA8, MEMORY[0x277CE0868]);
  v23 = WitnessTable;
  v24 = v16;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v17 = *(v20 + 8);
  v17(v11, v9);
  sub_23B9D2D88();
  return (v17)(v14, v9);
}

uint64_t sub_23BAC9594(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F748, &unk_23BBF8B40);
  MEMORY[0x28223BE20](v2);
  sub_23BAC987C(a1, &v5 - v3, type metadata accessor for SubscriptionOfferViewStyleConfiguration);
  sub_23BBDAFF8();
  sub_23B97B518(&qword_27E19F750, &qword_27E19F748, &unk_23BBF8B40, &unk_23BC051B8);
  return sub_23BBDC0D8();
}

unint64_t sub_23BAC9698()
{
  result = qword_27E19F738;
  if (!qword_27E19F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F738);
  }

  return result;
}

uint64_t sub_23BAC96FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SubscriptionOfferViewStyleModifier(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_2_31();
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F728, &qword_23BBF8AA8);
  sub_23BBDA358();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E19F730, &qword_27E19F728, &qword_23BBF8AA8, MEMORY[0x277CE0868]);
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

unint64_t sub_23BAC97E0()
{
  result = qword_27E19F740;
  if (!qword_27E19F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F740);
  }

  return result;
}

uint64_t sub_23BAC9834()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23BAC987C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23BAC98DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BAC9940@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B9ADC9C();
  *a1 = result;
  return result;
}

void ProminentPickerSubscriptionStoreControlStyle.makeBody(configuration:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B99B814(a1, v6, type metadata accessor for SubscriptionStoreControlStyleConfiguration);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198858, &unk_23BBE5F30);
  *(a2 + v7[14]) = 1;
  v8 = v7[15];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860, &qword_23BBEE680);
  __swift_storeEnumTagSinglePayload(a2 + v8, 1, 1, v9);
  v10 = a2 + v7[16];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  v11 = a2 + v7[17];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a2 + v7[18];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198868, &qword_23BBEE720) + 48));
  sub_23B99B870(v6, a2, type metadata accessor for SubscriptionStoreControlStyleConfiguration);
  *v13 = sub_23BAC9C84;
  v13[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198870, &qword_23BBE5FE0);
  v14 = swift_storeEnumTagMultiPayload();
  v15 = (a2 + v7[13]);
  *v15 = sub_23BAC9D88;
  v15[1] = 0;
  LOBYTE(v7) = sub_23B9ADB38(v14);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F758, &qword_23BBF8C10);
  OUTLINED_FUNCTION_1_25();
  *v17 = KeyPath;
  *(v17 + 8) = v7;
  v18 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F760, &qword_23BBF8C40);
  OUTLINED_FUNCTION_1_25();
  *v19 = v18;
  v19[1] = sub_23BAC7318;
  v19[2] = 0;
  v20 = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F768, &qword_23BBF8C48);
  OUTLINED_FUNCTION_1_25();
  *v22 = v20;
  v22[1] = sub_23B99B524;
  v22[2] = v21;
  v23 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F770, &qword_23BBF8C78);
  OUTLINED_FUNCTION_1_25();
  *v24 = v23;
  v24[1] = sub_23BB3EA68;
  v24[2] = 0;
}

uint64_t sub_23BAC9C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B99B814(a1, v6, type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption);
  sub_23B99B870(v6, a2, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1988C8, &qword_23BBE91F0);
  v8 = a2 + *(v7 + 40);
  result = swift_getKeyPath();
  *v8 = result;
  *(v8 + 8) = 0;
  v10 = (a2 + *(v7 + 36));
  *v10 = sub_23B9D11BC;
  v10[1] = 0;
  return result;
}

uint64_t sub_23BAC9D88(uint64_t a1)
{
  v2 = sub_23BBDABB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SubscriptionStoreButton(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23B99B814(a1, v8, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v9 = &v8[v6[5]];
  v9[48] = 0;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *v9 = 0u;
  v10 = &v8[v6[6]];
  *v10 = swift_getKeyPath();
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 16) = 0;
  v11 = &v8[v6[7]];
  KeyPath = swift_getKeyPath();
  v17[15] = 0;
  *v11 = KeyPath;
  v11[73] = 0;
  v13 = &v8[v6[8]];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = &v8[v6[9]];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  sub_23BBDABA8();
  sub_23B99B770(&qword_27E1988B8, type metadata accessor for SubscriptionStoreButton, &protocol conformance descriptor for SubscriptionStoreButton);
  sub_23B99B770(&qword_27E1988C0, MEMORY[0x277CDDF40], MEMORY[0x277CDDF38]);
  sub_23BBDB6E8();
  v15 = (*(v3 + 8))(v5, v2);
  return sub_23B99B7B8(v8, v15);
}

uint64_t sub_23BACA010@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B9ADC9C();
  *a1 = result;
  return result;
}

unint64_t sub_23BACA0BC()
{
  result = qword_27E19F778;
  if (!qword_27E19F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F778);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ProminentPickerSubscriptionStoreControlStyle(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x23BACA1ACLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23BACA1E8()
{
  result = qword_27E19F780;
  if (!qword_27E19F780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F770, &qword_23BBF8C78);
    sub_23BACA2FC(&qword_27E19F788, &qword_27E19F768, &qword_23BBF8C48, sub_23BACA2CC);
    sub_23B97B518(&qword_27E19F7B0, &qword_27E19F7B8, &qword_23BBF8D00, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F780);
  }

  return result;
}

uint64_t sub_23BACA2FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_23B97B518(&qword_27E198898, &qword_27E1988A0, &unk_23BBE7DB0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BACA3AC()
{
  result = qword_27E19F798;
  if (!qword_27E19F798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F758, &qword_23BBF8C10);
    sub_23B97B518(&qword_27E198890, &qword_27E198858, &unk_23BBE5F30, &protocol conformance descriptor for SubscriptionStorePicker<A, B>);
    sub_23B97B518(&qword_27E19F7A0, &qword_27E19F7A8, &unk_23BBF8CF0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F798);
  }

  return result;
}

uint64_t sub_23BACA4AC@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = v1;
  v28 = a1;
  v27 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199750, &unk_23BBF5AC0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = sub_23BBD9E48();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v17 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - v19;
  sub_23BACAD84(v2, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *(v13 + 32);
    v21(v20, v10, v11);
  }

  else
  {
    sub_23BBDD5A8();
    v22 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();

    (*(v4 + 8))(v7, v27);
    v21 = *(v13 + 32);
  }

  v21(v17, v20, v11);
  v23 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v24 = swift_allocObject();
  result = (v21)(v24 + v23, v17, v11);
  v26 = v28;
  *v28 = sub_23BA064F8;
  v26[1] = v24;
  return result;
}

double sub_23BACA778()
{
  v1 = *(v0 + OBJC_IVAR____TtCV17_StoreKit_SwiftUIP33_EE95366FFCD0D5209ACAB988B114293118UIKitDismissButton11Coordinator_action);

  v1(v2);

  return result;
}

uint64_t sub_23BACA880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ADF0, &unk_23BBEB7B0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23BACA8E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ADF0, &unk_23BBEB7B0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for EnvironmentActionUIKitDismissButton(uint64_t a1)
{
  result = qword_27E19F7C8;
  if (!qword_27E19F7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BACA98C(uint64_t a1)
{
  sub_23BACA9F8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23BACA9F8(uint64_t a1)
{
  if (!qword_27E19AE08)
  {
    sub_23BBD9E48();
    v1 = sub_23BBD9C18();
    if (!v2)
    {
      atomic_store(v1, &qword_27E19AE08);
    }
  }
}

id sub_23BACAA6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIKitDismissButton.Coordinator();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCV17_StoreKit_SwiftUIP33_EE95366FFCD0D5209ACAB988B114293118UIKitDismissButton11Coordinator_action];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_23BACAAE0()
{
  v0 = [objc_opt_self() buttonWithType_];

  return v0;
}

void sub_23BACAB24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F7E0, qword_23BBF8F80);
  sub_23BBDB158();
  v7 = &v8[OBJC_IVAR____TtCV17_StoreKit_SwiftUIP33_EE95366FFCD0D5209ACAB988B114293118UIKitDismissButton11Coordinator_action];
  *v7 = a3;
  *(v7 + 1) = a4;

  sub_23BBDB158();
  [a1 addTarget:v8 action:sel_didTrigger forControlEvents:0x2000];
}

id sub_23BACAC30@<X0>(void *a1@<X8>)
{
  result = sub_23BACAA6C(*v1, v1[1]);
  *a1 = result;
  return result;
}

uint64_t sub_23BACAC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BACAEE8();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23BACACF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BACAEE8();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23BACAD5C(uint64_t a1)
{
  sub_23BACAEE8();
  sub_23BBDAC88();
  __break(1u);
}

uint64_t sub_23BACAD84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199750, &unk_23BBF5AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BACADF4()
{
  v1 = sub_23BBD9E48();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_23BACAE90()
{
  result = qword_27E19F7D8;
  if (!qword_27E19F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F7D8);
  }

  return result;
}

unint64_t sub_23BACAEE8()
{
  result = qword_27E19F7E8[0];
  if (!qword_27E19F7E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E19F7E8);
  }

  return result;
}

void sub_23BACAF3C(uint64_t a1)
{
  sub_23BA9B938(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_23BA96AC4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BACAFE4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 33) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
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

    switch(v14)
    {
      case 1:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v15 = *(a1 + v9);
        if (v15)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BACB134);
      case 4:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

LABEL_22:
        v17 = v15 - 1;
        if (v11)
        {
          v17 = 0;
          LODWORD(v11) = *a1;
        }

        return v8 + (v11 | v17) + 1;
      default:
        break;
    }
  }

  if ((v6 & 0x80000000) != 0)
  {
    return __swift_getEnumTagSinglePayload((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 25) & ~v7, v6, v4);
  }

  v18 = *a1;
  if (*a1 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

void sub_23BACB148(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 33) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 33) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 33) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 33) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        return;
      case 2:
        *&a1[v11] = v16;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x23BACB32CLL);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        if ((v8 & 0x80000000) != 0)
        {
          v19 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 25) & ~v10;

          __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v18 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v18 = (a2 - 1);
          }

          *a1 = v18;
        }
      }

      return;
  }
}

uint64_t sub_23BACB3B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = a2[2];
  v12 = *(a2 + 24);
  *a6 = a1;
  *(a6 + 8) = v9;
  *(a6 + 16) = v10;
  *(a6 + 24) = v11;
  *(a6 + 32) = v12;
  v13 = type metadata accessor for ProductChangeCountTracker(0, a4, a5, a4);
  (*(*(a4 - 8) + 32))(a6 + *(v13 + 40), a3, a4);
  v14 = (a6 + *(v13 + 44));
  result = sub_23BA97E1C(0);
  *v14 = result;
  v14[1] = v16;
  return result;
}

uint64_t sub_23BACB460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a2;
  OUTLINED_FUNCTION_3_2();
  v59 = v5;
  v60 = *(v6 + 64);
  MEMORY[0x28223BE20](v7);
  v58 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  OUTLINED_FUNCTION_3_2();
  v51 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v15 + 24);
  v17 = type metadata accessor for SubscriptionStoreEntitlementLoadingView(0, v10, v50, v16);
  OUTLINED_FUNCTION_3_2();
  v61 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v48 - v20;
  v48 = &v48 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199C88, qword_23BBEB260);
  v55 = v22;
  OUTLINED_FUNCTION_6_18();
  WitnessTable = swift_getWitnessTable();
  v54 = WitnessTable;
  v53 = sub_23BACBB24();
  *&v64 = v17;
  *(&v64 + 1) = v22;
  v65 = WitnessTable;
  v66 = v53;
  v56 = MEMORY[0x277CE0E40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_3_2();
  v57 = v25;
  MEMORY[0x28223BE20](v26);
  v49 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v52 = &v48 - v29;
  v30 = *v3;
  v64 = *(v3 + *(a1 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D960, &qword_23BBF30A0);
  sub_23BBDBF68();
  v31 = sub_23BACB900(v63, v30);
  v32 = *(v3 + 16);
  v33 = *(v3 + 24);
  v34 = *(v3 + 32);
  *&v64 = *(v3 + 8);
  BYTE8(v64) = v32;
  v65 = v33;
  LOBYTE(v66) = v34;
  (*(v51 + 16))(v14, v3 + *(a1 + 40), v10);
  v35 = v50;
  sub_23B9CA3FC(v31, &v64, v14, v10, v50, v21);
  *&v64 = v30;
  v37 = v58;
  v36 = v59;
  (*(v59 + 16))(v58, v3, a1);
  v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v10;
  *(v39 + 24) = v35;
  (*(v36 + 32))(v39 + v38, v37, a1);

  v40 = v48;
  v41 = v49;
  v43 = v54;
  v42 = v55;
  v44 = v53;
  sub_23BBDBC18();

  (*(v61 + 8))(v40, v17);
  *&v64 = v17;
  *(&v64 + 1) = v42;
  v65 = v43;
  v66 = v44;
  swift_getOpaqueTypeConformance2();
  v45 = v52;
  sub_23B9D2D88();
  v46 = *(v57 + 8);
  v46(v41, OpaqueTypeMetadata2);
  sub_23B9D2D88();
  return (v46)(v45, OpaqueTypeMetadata2);
}

uint64_t sub_23BACB900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Subscription(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v26 = MEMORY[0x277D84F90];
    sub_23BA92C48(0, v12, 0, v6, v7, v8, v9);
    v13 = v26;
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = a2 + v14;
    v16 = *(v5 + 72);
    do
    {
      sub_23BA54F2C(v15, v11);
      v21 = &v11[*(v4 + 24)];
      *v21 = a1;
      v21[8] = 0;
      v26 = v13;
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_23BA92C48(v22 > 1, v23 + 1, 1, v17, v18, v19, v20);
        v13 = v26;
      }

      *(v13 + 16) = v23 + 1;
      sub_23BA1D1B4(v11, v13 + v14 + v23 * v16);
      v15 += v16;
      --v12;
    }

    while (v12);
  }

  return v13;
}

void sub_23BACBA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProductChangeCountTracker(0, a2, a3, a4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D960, &qword_23BBF30A0);
  sub_23BBDBF68();
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_23BBDBF78();
  }
}

unint64_t sub_23BACBB24()
{
  result = qword_27E19F870;
  if (!qword_27E19F870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199C88, qword_23BBEB260);
    sub_23BACBBA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F870);
  }

  return result;
}

unint64_t sub_23BACBBA8()
{
  result = qword_27E19F878;
  if (!qword_27E19F878)
  {
    type metadata accessor for Subscription(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F878);
  }

  return result;
}

uint64_t sub_23BACBC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for ProductChangeCountTracker(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));

  (*(*(v5 - 8) + 8))(v7 + v6[12], v5);

  return swift_deallocObject();
}

void sub_23BACBD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for ProductChangeCountTracker(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  sub_23BACBA7C(v9, v5, v6, v7);
}

uint64_t sub_23BACBD84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SubscriptionStoreEntitlementLoadingView(255, *a1, a1[1], a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199C88, qword_23BBEB260);
  OUTLINED_FUNCTION_6_18();
  swift_getWitnessTable();
  sub_23BACBB24();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23BACBE14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BBDCCC8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  sub_23BBDCCD8();
  v10 = *(v4 + 104);
  v10(v6, *MEMORY[0x277CDD2D0], v3);
  v11 = sub_23BBDCCB8();
  v12 = *(v4 + 8);
  v12(v6, v3);
  v12(v9, v3);
  if ((v11 & 1) != 0 && !(sub_23BBDCCE8() % 7))
  {
    v10(v9, *MEMORY[0x277CDD2D8], v3);
    sub_23BBDCCE8();
    sub_23BBDCCF8();
    return (v12)(v9, v3);
  }

  else
  {
    v13 = sub_23BBDCD08();
    return (*(*(v13 - 8) + 16))(a1, v1, v13);
  }
}

void sub_23BACC004()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F890, &unk_23BBF9140);
  OUTLINED_FUNCTION_13_0(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  v12 = sub_23BBDC298();
  OUTLINED_FUNCTION_3_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v18 = (v17 - v16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199810, &qword_23BBE8398);
  OUTLINED_FUNCTION_13_0(v19);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v20);
  v22 = (&v50 - v21);
  sub_23BA1D88C(v1, &v53);
  if (v54 == 2)
  {
    v30 = _s34StructuredScrollViewBackgroundModeOMa(0);
    if (v5)
    {
LABEL_10:
      OUTLINED_FUNCTION_17_0();
      swift_storeEnumTagMultiPayload();
      v31 = v7;
      v32 = 0;
LABEL_12:
      v33 = v30;
LABEL_13:
      __swift_storeEnumTagSinglePayload(v31, v32, 1, v33);
      goto LABEL_22;
    }

LABEL_11:
    v31 = v7;
    v32 = 1;
    goto LABEL_12;
  }

  if (v54 == 1)
  {
    v30 = _s34StructuredScrollViewBackgroundModeOMa(0);
    if (v5)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v54)
  {
    sub_23B98473C(&v53, v52);
    sub_23BA160B0(v52, &v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19F898, &unk_23BBF9150);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_20_2();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v12);
      v37 = *(v14 + 32);
      v37(v18, v11, v12);
      v37(v7, v18, v12);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
      sub_23BA0E8F8(v11, &qword_27E19F890, &unk_23BBF9140);
      __swift_project_boxed_opaque_existential_1(v52, v52[3]);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x28223BE20](v39);
      OUTLINED_FUNCTION_3_1();
      (*(v42 + 16))(v41 - v40);
      *v7 = sub_23BBD9DF8();
    }

    v38 = _s34StructuredScrollViewBackgroundModeOMa(0);
    OUTLINED_FUNCTION_17_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_20_2();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v38);
    __swift_destroy_boxed_opaque_existential_1(v52);
    goto LABEL_22;
  }

  if ((v5 & 1) == 0)
  {
    v33 = _s34StructuredScrollViewBackgroundModeOMa(0);
    v31 = v7;
    v32 = 1;
    goto LABEL_13;
  }

  if (v3)
  {
    *v22 = v3;
    v23 = _s34StructuredScrollViewBackgroundModeOMa(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_20_2();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
    sub_23BAAE44C(v22, v7);
    OUTLINED_FUNCTION_20_2();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v23);
  }

  else
  {
    v46 = _s34StructuredScrollViewBackgroundModeOMa(0);
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v46);
    sub_23BBDC278();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_20_2();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v46);
    if (__swift_getEnumTagSinglePayload(v22, 1, v46) != 1)
    {
      sub_23BA0E8F8(v22, &qword_27E199810, &qword_23BBE8398);
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_9_1();
}

double static SubscriptionStoreControlBackground.automatic.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double static SubscriptionStoreControlBackground.gradientMaterial.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 1;
  *(a1 + 24) = xmmword_23BBE4070;
  return result;
}

double static SubscriptionStoreControlBackground.gradientMaterialOnScroll.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 2;
  *(a1 + 24) = xmmword_23BBE7BC0;
  return result;
}

uint64_t View.subscriptionStoreControlBackground<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_8_29(a1, a2, a3, a4, a5, a6, a7, a8, v18, v20[0], v20[1], v20[2], v20[3], v20[4]);
  OUTLINED_FUNCTION_1_4();
  v9 = (*(v8 + 16))();
  v16 = OUTLINED_FUNCTION_16_12(v9, v10, &type metadata for SubscriptionStoreControlBackgroundStyleModifier, v11, v12, v13, v14, v15, v19, v20[0]);
  MEMORY[0x23EEB43C0](v16);
  return sub_23BACC510(v20);
}

uint64_t View.subscriptionStoreControlBackground(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_20_11(a1, a2, a3);
  v10 = OUTLINED_FUNCTION_15_19(v3, v4, &type metadata for SubscriptionStoreControlBackgroundStyleModifier, v5, v6, v7, v8, v9, v12, v13[0]);
  MEMORY[0x23EEB43C0](v10);
  return sub_23BACC510(v13);
}

void View.subscriptionStorePickerItemBackground<A>(_:)()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  sub_23BACC70C();
  v6 = OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_3_2();
  v8 = v7;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_27();
  v10 = OUTLINED_FUNCTION_19_15();
  v11(v10);
  sub_23BB8B350(v4, v2, v0);
  v12 = OUTLINED_FUNCTION_17_12();
  MEMORY[0x23EEB43C0](v12);
  (*(v8 + 8))(v0, v6);
  OUTLINED_FUNCTION_9_1();
}

unint64_t sub_23BACC70C()
{
  result = qword_27E19F880;
  if (!qword_27E19F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F880);
  }

  return result;
}

void View.subscriptionStorePickerItemBackground<A, B>(_:in:)()
{
  OUTLINED_FUNCTION_10_0();
  v32 = v3;
  v5 = v4;
  v7 = v6;
  v12 = OUTLINED_FUNCTION_10_16(v8, v9, v10, v11);
  OUTLINED_FUNCTION_13_0(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_27();
  OUTLINED_FUNCTION_3_2();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v19 = v18 - v17;
  v33 = v1;
  v34 = v0;
  v35 = v7;
  v36 = v5;
  v20 = OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_3_2();
  v22 = v21;
  OUTLINED_FUNCTION_7_0();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v31 - v25;
  (*(v15 + 16))(v19, v31[0], v1, v24);
  OUTLINED_FUNCTION_1_4();
  (*(v27 + 16))(v2, v31[1], v0);
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v0);
  sub_23BB8B3C4(v2, v1, v0, v7, v5, v26);
  MEMORY[0x23EEB43C0](v26, v31[3], v20, v32);
  (*(v22 + 8))(v26, v20);
  OUTLINED_FUNCTION_9_1();
}

uint64_t StoreContent.subscriptionStoreControlBackground<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_8_29(a1, a2, a3, a4, a5, a6, a7, a8, v22, v24[0], v24[1], v24[2], v24[3], v24[4]);
  OUTLINED_FUNCTION_1_4();
  (*(v8 + 16))();
  v9 = sub_23BACC9C0();
  v15 = OUTLINED_FUNCTION_16_12(v9, v10, &type metadata for SubscriptionStoreControlBackgroundStyleModifier, v11, v9, v12, v13, v14, v23, v24[0]);
  sub_23BB6B068(v15, v16, v17, v18, v19, v20);
  return sub_23BACC510(v24);
}

unint64_t sub_23BACC9C0()
{
  result = qword_27E19F888;
  if (!qword_27E19F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F888);
  }

  return result;
}

uint64_t StoreContent.subscriptionStoreControlBackground(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_20_11(a1, a2, a3);
  v3 = sub_23BACC9C0();
  v9 = OUTLINED_FUNCTION_15_19(v3, v4, &type metadata for SubscriptionStoreControlBackgroundStyleModifier, v5, v3, v6, v7, v8, v16, v17[0]);
  sub_23BB6B068(v9, v10, v11, v12, v13, v14);
  return sub_23BACC510(v17);
}

void StoreContent.subscriptionStorePickerItemBackground<A>(_:)()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  sub_23BACC70C();
  v6 = OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_3_2();
  v8 = v7;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_27();
  v10 = OUTLINED_FUNCTION_19_15();
  v11(v10);
  sub_23BB8B350(v4, v2, v0);
  OUTLINED_FUNCTION_0_38();
  swift_getWitnessTable();
  v12 = OUTLINED_FUNCTION_17_12();
  sub_23BB6B068(v12, v13, v14, v15, v16, v17);
  (*(v8 + 8))(v0, v6);
  OUTLINED_FUNCTION_9_1();
}

void StoreContent.subscriptionStorePickerItemBackground<A, B>(_:in:)()
{
  OUTLINED_FUNCTION_10_0();
  v33 = v3;
  v5 = v4;
  v7 = v6;
  v12 = OUTLINED_FUNCTION_10_16(v8, v9, v10, v11);
  OUTLINED_FUNCTION_13_0(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_27();
  OUTLINED_FUNCTION_3_2();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v19 = v18 - v17;
  v34 = v1;
  v35 = v0;
  v36 = v7;
  v37 = v5;
  v20 = OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_3_2();
  v22 = v21;
  OUTLINED_FUNCTION_7_0();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v32 - v25;
  (*(v15 + 16))(v19, v32[0], v1, v24);
  OUTLINED_FUNCTION_1_4();
  (*(v27 + 16))(v2, v32[1], v0);
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v0);
  sub_23BB8B3C4(v2, v1, v0, v7, v5, v26);
  OUTLINED_FUNCTION_0_38();
  WitnessTable = swift_getWitnessTable();
  sub_23BB6B068(v26, v32[3], v20, v33, WitnessTable, v32[2]);
  (*(v22 + 8))(v26, v20);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BACCDD0(void *a1)
{
  sub_23BBDA358();
  sub_23BACC9C0();
  return OUTLINED_FUNCTION_1_40();
}

uint64_t sub_23BACCE1C(void *a1)
{
  sub_23BBDA358();
  sub_23BACC9C0();
  return OUTLINED_FUNCTION_1_40();
}

uint64_t sub_23BACCE64(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  v3 = sub_23BACC70C();
  v5[0] = v1;
  v5[1] = MEMORY[0x277CE0B08];
  v5[2] = v2;
  v5[3] = v3;
  type metadata accessor for SubscriptionStorePickerItemBackgroundStyleModifier(255, v5);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_38();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_1_40();
}

uint64_t sub_23BACCED4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = *(a1 + 8);
  v3[1] = v1;
  type metadata accessor for SubscriptionStorePickerItemBackgroundStyleModifier(255, v3);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_38();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_1_40();
}

uint64_t sub_23BACCF3C()
{
  sub_23BACC9C0();
  v0 = OUTLINED_FUNCTION_9_20();
  v2 = type metadata accessor for ModifiedStoreContent(v0, v1);
  return OUTLINED_FUNCTION_2_32(v2);
}

uint64_t sub_23BACCF88()
{
  sub_23BACC9C0();
  v0 = OUTLINED_FUNCTION_9_20();
  v2 = type metadata accessor for ModifiedStoreContent(v0, v1);
  return OUTLINED_FUNCTION_2_32(v2);
}

uint64_t sub_23BACCFD0()
{
  sub_23BACC70C();
  v0 = OUTLINED_FUNCTION_9_20();
  type metadata accessor for SubscriptionStorePickerItemBackgroundStyleModifier(v0, v1);
  OUTLINED_FUNCTION_0_38();
  swift_getWitnessTable();
  v2 = OUTLINED_FUNCTION_9_20();
  v4 = type metadata accessor for ModifiedStoreContent(v2, v3);
  return OUTLINED_FUNCTION_2_32(v4);
}

uint64_t sub_23BACD044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_9_20();
  type metadata accessor for SubscriptionStorePickerItemBackgroundStyleModifier(v4, v5);
  OUTLINED_FUNCTION_0_38();
  swift_getWitnessTable();
  v6 = OUTLINED_FUNCTION_9_20();
  v8 = type metadata accessor for ModifiedStoreContent(v6, v7);
  return OUTLINED_FUNCTION_2_32(v8);
}

uint64_t sub_23BACD0B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BACD10C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_40()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_2_32(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t *OUTLINED_FUNCTION_8_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a13 = a3;
  a14 = a5;

  return __swift_allocate_boxed_opaque_existential_1(&a10);
}

uint64_t OUTLINED_FUNCTION_10_16@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  *(v5 - 144) = a5;
  *(v5 - 136) = a3;
  *(v5 - 160) = a1;
  *(v5 - 152) = a2;

  return sub_23BBDD648();
}

uint64_t OUTLINED_FUNCTION_20_11(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_23BA1D88C(a1, va);
}

uint64_t OUTLINED_FUNCTION_22_11()
{

  return type metadata accessor for SubscriptionStorePickerItemBackgroundStyleModifier(0, v0 - 112);
}

uint64_t sub_23BACD2D8()
{
  sub_23BA23FE0();
  sub_23BBDA958();
  return v1;
}

uint64_t View.subscriptionStoreOptionGroupStyle<A>(_:)()
{
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v2);
  type metadata accessor for SubscriptionStoreOptionGroupStyleModifier(0, v3, v5, v4);
  OUTLINED_FUNCTION_6_21();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_3_30();
  v10(v9);
  v11 = OUTLINED_FUNCTION_8_30();
  v12(v11);
  v13 = OUTLINED_FUNCTION_5_28();
  MEMORY[0x23EEB43C0](v13);
  return (*(v7 + 8))(v1, v0);
}

uint64_t StoreContent.subscriptionStoreOptionGroupStyle<A>(_:)()
{
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v2);
  type metadata accessor for SubscriptionStoreOptionGroupStyleModifier(0, v3, v5, v4);
  OUTLINED_FUNCTION_6_21();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_3_30();
  v10(v9);
  v11 = OUTLINED_FUNCTION_8_30();
  v12(v11);
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  v13 = OUTLINED_FUNCTION_5_28();
  sub_23BB6B068(v13, v14, v15, v16, v17, v18);
  return (*(v7 + 8))(v1, v0);
}

_BYTE *sub_23BACD6AC(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x23BACD748);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23BACD788(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SubscriptionStoreOptionGroupStyleModifier(255, a1[1], a1[3], a4);
  sub_23BBDA358();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t sub_23BACD7F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for SubscriptionStoreOptionGroupStyleModifier(255, a1[1], a1[3], a4);
  OUTLINED_FUNCTION_0_39();
  v8[0] = v4;
  v8[1] = v6;
  v8[2] = v5;
  v8[3] = swift_getWitnessTable();
  type metadata accessor for ModifiedStoreContent(255, v8);
  return swift_getWitnessTable();
}

_BYTE *sub_23BACD878(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BACD940);
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
          result = OUTLINED_FUNCTION_7_30(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BACD974(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
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

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_23BACDAC0(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
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
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x23BACDCC4);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}

unint64_t sub_23BACDCF0()
{
  result = qword_27E19F920;
  if (!qword_27E19F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F920);
  }

  return result;
}

uint64_t sub_23BACDD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BACDCF0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23BACDDEC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F938, &qword_23BBF94F8);
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F940, &unk_23BBF9500);
  v10 = (a3 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = sub_23BACE678;
  v10[2] = v7;
  return result;
}

uint64_t sub_23BACDED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v22 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F928, &qword_23BBF93D8);
  v7 = sub_23BBDA358();
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  swift_getKeyPath();
  (*(v5 + 16))(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = *(a2 + 16);
  (*(v5 + 32))(v14 + v13, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  WitnessTable = swift_getWitnessTable();
  sub_23BBDB9B8();

  v16 = sub_23B97B518(&qword_27E19F930, &qword_27E19F928, &qword_23BBF93D8, MEMORY[0x277CE08A0]);
  v23 = WitnessTable;
  v24 = v16;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v17 = *(v20 + 8);
  v17(v9, v7);
  sub_23B9D2D88();
  return (v17)(v12, v7);
}

uint64_t sub_23BACE1F4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  result = (*(a4 + 8))(&v6, a3, a4);
  *a1 = v6;
  return result;
}

uint64_t sub_23BACE25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for SubscriptionStoreOptionGroupStyleModifier(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_23BACE330(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for SubscriptionStoreOptionGroupStyleModifier(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_23BACE1F4(a1, v9, v6, v7);
}

uint64_t sub_23BACE3CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SubscriptionStoreOptionGroupStyleModifier(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F928, &qword_23BBF93D8);
  sub_23BBDA358();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E19F930, &qword_27E19F928, &qword_23BBF93D8, MEMORY[0x277CE08A0]);
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for SubscriptionStoreOptionGroupStyleValue(unsigned __int8 *a1, unsigned int a2)
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
      if (v4)
      {
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 4;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStoreOptionGroupStyleValue(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BACE614);
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

_BYTE *sub_23BACE678(_BYTE *result)
{
  v2 = *(v1 + 16);
  if (v2 != 3)
  {
    *result = v2;
  }

  return result;
}

unint64_t sub_23BACE690()
{
  result = qword_27E19F948;
  if (!qword_27E19F948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F940, &unk_23BBF9500);
    sub_23B97B518(qword_27E19F950, &qword_27E19F938, &qword_23BBF94F8, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E19F930, &qword_27E19F928, &qword_23BBF93D8, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F948);
  }

  return result;
}

uint64_t sub_23BACE83C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = a4 + *(type metadata accessor for StoreListWrapperView(0, a2, a3, a3) + 36);
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0;
  return a1();
}

uint64_t sub_23BACE8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32[3] = a2;
  v3 = *(a1 + 24);
  v32[0] = *(a1 + 16);
  v4 = sub_23BBDC398();
  v5 = OUTLINED_FUNCTION_8_31(v4);
  OUTLINED_FUNCTION_7_31();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_4();
  v6 = sub_23BBDA358();
  v41 = v2;
  v42 = v5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_4_26();
  v39 = OpaqueTypeConformance2;
  v40 = sub_23BAD1EA8(v8, v9, MEMORY[0x277CDE458]);
  v32[1] = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for AutoEnablingScrollView(0, v6, WitnessTable, v11);
  OUTLINED_FUNCTION_7();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = v32 - v16;
  v18 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v32 - v25;
  v34 = v32[0];
  v35 = v3;
  v36 = v32[2];
  v27 = sub_23BBDB368();
  sub_23BA75FE8(v27, 1, sub_23BAD1E90, v6, WitnessTable, v17, v33);
  OUTLINED_FUNCTION_14_5();
  v31 = swift_getWitnessTable();
  sub_23B9C2924(v28);
  sub_23BBDBB18();
  (*(v14 + 8))(v17, v12);
  v37 = v31;
  v38 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  sub_23B9D2D88();
  v29 = *(v20 + 8);
  v29(v23, v18);
  sub_23B9D2D88();
  return (v29)(v26, v18);
}

uint64_t sub_23BACEC08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a2;
  v43 = a1;
  v47 = a4;
  v5 = sub_23BBDB148();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BBDAE28();
  MEMORY[0x28223BE20](v7 - 8);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_23BBDC238();
  v9 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_23BBDC398();
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  WitnessTable = swift_getWitnessTable();
  v53 = v12;
  v54 = WitnessTable;
  v39 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v16 = &v32 - v15;
  sub_23BBDB2B8();
  v17 = sub_23BBDA358();
  v42 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v38 = &v32 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FAB0, &qword_23BBF97A8);
  sub_23BBDC248();
  *(swift_allocObject() + 16) = xmmword_23BBE7F10;
  *v11 = xmmword_23BBF9510;
  (*(v9 + 104))(v11, *MEMORY[0x277CDF100], v33);
  sub_23BBDC258();
  sub_23BBDAB58();
  v48 = v34;
  v49 = a3;
  v50 = v43;
  sub_23BACF330(v22);
  sub_23BBDC388();
  v23 = v44;
  sub_23BBDB138();
  v24 = WitnessTable;
  sub_23BBDB968();
  (*(v45 + 8))(v23, v46);
  (*(v41 + 8))(v14, v12);
  KeyPath = swift_getKeyPath();
  v53 = v12;
  v54 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = OpaqueTypeMetadata2;
  sub_23B9968C4(KeyPath, OpaqueTypeMetadata2, OpaqueTypeConformance2);

  (*(v40 + 8))(v16, v27);
  v28 = sub_23BAD1EA8(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v51 = OpaqueTypeConformance2;
  v52 = v28;
  swift_getWitnessTable();
  v29 = v38;
  sub_23B9D2D88();
  v30 = *(v42 + 8);
  v30(v19, v17);
  sub_23B9D2D88();
  return (v30)(v29, v17);
}

uint64_t sub_23BACF254(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9D2D88();
  sub_23B9D2D88();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_23BACF330(double a1)
{
  sub_23BBDAE28();
  sub_23BAD1EA8(&qword_27E19FAB8, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  return sub_23BBDDC28();
}

uint64_t sub_23BACF3B4@<X0>(char a1@<W0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, _BYTE *a6@<X8>, uint64_t a7@<X3>)
{
  v11 = type metadata accessor for StoreListItemWrapperView(0, a4, a5, a7);
  v12 = &a6[v11[11]];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = &a6[v11[12]];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  v13[40] = 0;
  v14 = v11[13];
  *&a6[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0, &qword_23BBE6D50);
  swift_storeEnumTagMultiPayload();
  v15 = &a6[v11[14]];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = &a6[v11[15]];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  *a6 = a1;
  result = a3();
  a6[v11[10]] = a2;
  return result;
}

uint64_t sub_23BACF4E0(uint64_t a1)
{
  if (sub_23BACF524(a1))
  {

    return sub_23BBDC318();
  }

  else
  {

    return sub_23BBDC328();
  }
}

BOOL sub_23BACF524(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 48);
  v9 = *v7;
  v8 = *(v7 + 8);
  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  v12 = *(v7 + 32);
  if (*(v7 + 40) == 1)
  {
    v17[1] = *v7;
    v17[2] = v8;
    v18 = v11;
    v19 = v10;
    v20 = v12;
  }

  else
  {

    sub_23BBDD5A8();
    v13 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    v14 = sub_23B9AD3D4(v9, v8, v11, v10, v12, 0);
    (*(v4 + 8))(v6, v3, v14);
  }

  v15 = v18;

  return v15 == &type metadata for LargeProductViewStyle;
}

uint64_t sub_23BACF6E0(uint64_t a1)
{
  if (sub_23BACF524(a1))
  {

    return sub_23BBDAB48();
  }

  else
  {
    sub_23B9A6AA4();

    return sub_23BBDAB78();
  }
}

uint64_t sub_23BACF734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v55 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v54 = v4;
  MEMORY[0x28223BE20](v5);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(a1 + 16);
  sub_23BBDA358();
  sub_23BBDA358();
  type metadata accessor for ListItemVerticalPaddingModifier(255);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  v56 = *(a1 + 24);
  v78 = v56;
  v79 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v77 = MEMORY[0x277CDF918];
  v7 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_34();
  v10 = sub_23BAD1EA8(v8, v9, &unk_23BBF97F0);
  v74 = v7;
  v75 = v10;
  swift_getWitnessTable();
  v11 = sub_23BBDC078();
  OUTLINED_FUNCTION_7();
  v60 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FA60, &qword_23BBF9718);
  v16 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v61 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FA68, &unk_23BBF9720);
  v21 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v62 = v22;
  MEMORY[0x28223BE20](v23);
  v58 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v59 = &v52 - v26;
  sub_23BACF6E0(a1);
  v64 = v57;
  v65 = v56;
  v66 = v2;
  sub_23BBDC068();
  if (*v2 == 1)
  {
    v27 = &v2[*(a1 + 48)];
    v29 = *v27;
    v28 = *(v27 + 1);
    v30 = *(v27 + 2);
    v31 = *(v27 + 3);
    v32 = *(v27 + 4);
    if (v27[40] == 1)
    {
      *&v67 = *v27;
      *(&v67 + 1) = v28;
      *&v68 = v30;
      *(&v68 + 1) = v31;
      v69 = v32;
    }

    else
    {
      v57 = *(v27 + 2);

      LODWORD(v56) = sub_23BBDD5A8();
      v33 = sub_23BBDB338();
      sub_23BBD9978();

      v34 = v53;
      sub_23BBDA918();
      swift_getAtKeyPath();
      v35 = sub_23B9AD3D4(v29, v28, v57, v31, v32, 0);
      (*(v54 + 8))(v34, v55, v35);
    }

    v80 = v67;
    v81 = v68;
    v82 = v69;
    sub_23BB6BC6C();

    *&v67 = v82;
    sub_23BAD1B40(&v67);
  }

  v36 = swift_getWitnessTable();
  sub_23BAD066C();
  (*(v60 + 8))(v15, v11);
  OUTLINED_FUNCTION_0_12();
  v41 = sub_23B97B518(v37, v38, v39, v40);
  v72 = v36;
  v73 = v41;
  OUTLINED_FUNCTION_8_2();
  v42 = swift_getWitnessTable();
  v43 = v58;
  sub_23BBDBB78();
  (*(v61 + 8))(v20, v16);
  OUTLINED_FUNCTION_3_31();
  v48 = sub_23B97B518(v44, v45, v46, v47);
  v70 = v42;
  v71 = v48;
  swift_getWitnessTable();
  v49 = v59;
  sub_23B9D2D88();
  v50 = *(v62 + 8);
  v50(v43, v21);
  sub_23B9D2D88();
  return (v50)(v49, v21);
}

uint64_t sub_23BACFDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a4;
  v74 = sub_23BBDB588();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0, &unk_23BBE3BE0);
  MEMORY[0x28223BE20](v8 - 8);
  v71 = &v58 - v9;
  v60 = sub_23BBDA928();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ListItemVerticalPaddingModifier(0);
  MEMORY[0x28223BE20](v11);
  v62 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23BBDA358();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - v15;
  v17 = sub_23BBDA358();
  v65 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  v67 = v20;
  v70 = v11;
  v63 = sub_23BBDA358();
  v69 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v66 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v68 = &v58 - v23;
  v25 = type metadata accessor for StoreListItemWrapperView(0, a2, a3, v24);
  sub_23BACF4E0(v25);
  sub_23BBDBB18();
  sub_23BBDB388();
  v80 = a3;
  v81 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v64 = v19;
  v61 = WitnessTable;
  sub_23BBDBBB8();
  (*(v14 + 8))(v16, v13);
  v27 = a1 + *(v25 + 48);
  v29 = *(v27 + 8);
  v28 = *(v27 + 16);
  if (*(v27 + 40) == 1)
  {

    v30 = v60;
    v31 = v59;
    v32 = v58;
  }

  else
  {
    v33 = *v27;
    v34 = *(v27 + 32);
    v35 = *(v27 + 24);

    sub_23BBDD5A8();
    v36 = sub_23BBDB338();
    sub_23BBD9978();

    v32 = v58;
    sub_23BBDA918();
    swift_getAtKeyPath();
    v37 = sub_23B9AD3D4(v33, v29, v28, v35, v34, 0);
    v31 = v59;
    v30 = v60;
    (*(v59 + 8))(v32, v60, v37);
  }

  v38 = a1 + *(v25 + 56);
  v39 = v70;
  if ((*(v38 + 8) & 1) == 0)
  {
    v40 = *v38;

    sub_23BBDD5A8();
    v41 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v40, 0);
    (*(v31 + 8))(v32, v30);
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8, &qword_23BBF9750);
  v43 = v62;
  __swift_storeEnumTagSinglePayload(v62, 1, 1, v42);
  v44 = v43 + *(v39 + 20);
  *v44 = swift_getKeyPath();
  *(v44 + 8) = 0;
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    v45 = 0x4024000000000000;
  }

  else if (swift_dynamicCastMetatype())
  {
    v45 = 0x4034000000000000;
  }

  else
  {
    v45 = 0x4014000000000000;
  }

  v46 = v73;
  (*(v72 + 104))(v73, *MEMORY[0x277CE0AA8], v74);
  v47 = v71;
  sub_23BAD0B1C(v45, 0, v46, v71, -INFINITY, INFINITY);

  sub_23B974994(v47, v43);
  v48 = v43 + *(v39 + 24);
  *v48 = v45;
  *(v48 + 8) = 0;
  v78 = v61;
  v79 = MEMORY[0x277CDF918];
  v49 = v67;
  v50 = swift_getWitnessTable();
  v51 = v66;
  v52 = v64;
  MEMORY[0x23EEB43C0](v43, v49, v39, v50);
  sub_23BAD1E34(v43);
  (*(v65 + 8))(v52, v49);
  v53 = sub_23BAD1EA8(&qword_27E19FA58, type metadata accessor for ListItemVerticalPaddingModifier, &unk_23BBF97F0);
  v76 = v50;
  v77 = v53;
  v54 = v63;
  swift_getWitnessTable();
  v55 = v68;
  sub_23B9D2D88();
  v56 = *(v69 + 8);
  v56(v51, v54);
  sub_23B9D2D88();
  return (v56)(v55, v54);
}

uint64_t sub_23BAD066C()
{
  sub_23B9A6AA4();
  sub_23BBDAB78();
  sub_23BBDA9C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FA88, &qword_23BBF9730);
  sub_23BAD1BB0();
  return sub_23BBDBB88();
}

uint64_t sub_23BAD0734@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_23BBDB148();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BBDC168();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FAA8, &unk_23BBF9740);
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FAA0, &qword_23BBF9738);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  if (a1)
  {
    sub_23BBDC158();
    sub_23BBDB118();
    v19 = sub_23BAD1EA8(&qword_27E19CC80, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    sub_23BBDB968();
    (*(v23 + 8))(v5, v24);
    (*(v7 + 8))(v9, v6);
    if (qword_27E197648 != -1)
    {
      swift_once();
    }

    v27 = v6;
    v28 = v19;
    swift_getOpaqueTypeConformance2();
    sub_23BBDBA28();

    (*(v25 + 8))(v12, v10);
    sub_23BBDA338();
    sub_23BAD1D50(v15);
    v20 = v26;
    sub_23BAD1DB8(v18, v26);
    return __swift_storeEnumTagSinglePayload(v20, 0, 1, v13);
  }

  else
  {
    v22 = v26;

    return __swift_storeEnumTagSinglePayload(v22, 1, 1, v13);
  }
}

uint64_t sub_23BAD0B1C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = sub_23BBDB588();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979F8, &unk_23BBE3BF0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v26 - v18;
  if (a2)
  {
    (*(v13 + 8))(a3, v12, v17);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8, &qword_23BBF9750);
    v21 = v19;
    v22 = 1;
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8, &qword_23BBF9750);
    v24 = &v19[*(v23 + 48)];
    v26[1] = a1;
    (*(v13 + 16))(v15, a3, v12);
    sub_23B974940();
    sub_23BBD9D18();
    (*(v13 + 8))(a3, v12);
    *v24 = a5;
    v24[1] = a6;
    v21 = v19;
    v22 = 0;
    v20 = v23;
  }

  __swift_storeEnumTagSinglePayload(v21, v22, 1, v20);
  return sub_23B974A04(v19, a4);
}

__n128 sub_23BAD0D28@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BBDB3F8();
  v10 = type metadata accessor for ListItemVerticalPaddingModifier(0);
  v11 = v2 + *(v10 + 20);
  v12 = *v11;
  if (*(v11 + 8) == 1)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v24.n128_u64[0] = v5;
    v13 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v12, 0);
    (*(v6 + 8))(v8, v24.n128_u64[0]);
    if ((v25 & 1) == 0)
    {
LABEL_3:
      if ((*(v2 + *(v10 + 24) + 8) & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  sub_23B975308();
  if ((v14 & 1) == 0)
  {
LABEL_8:
    sub_23BBD9B18();
    v15 = 0;
    *(&v17 + 1) = v16;
    v19.n128_u64[1] = v18;
    v23 = v17;
    v24 = v19;
    goto LABEL_9;
  }

LABEL_7:
  v23 = 0u;
  v24 = 0u;
  v15 = 1;
LABEL_9:
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FAD0, &qword_23BBF9840);
  (*(*(v20 - 8) + 16))(a2, a1, v20);
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FAD8, qword_23BBF9848) + 36);
  *v21 = v9;
  result = v24;
  *(v21 + 24) = v23;
  *(v21 + 8) = result;
  *(v21 + 40) = v15;
  return result;
}

uint64_t sub_23BAD0FB8(uint64_t a1)
{
  v1 = MEMORY[0x277D839B0];
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    sub_23BAD216C(319, &qword_27E197E40, v1, MEMORY[0x277CDF468]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_23BAD216C(319, &qword_27E1991A0, &type metadata for AnyProductViewStyle, MEMORY[0x277CDF468]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_23B9C68B0(319);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_23BAD216C(319, &qword_27E198D38, &type metadata for InterfaceIdiom, MEMORY[0x277CDF468]);
      if (v9 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_23BAD1120(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_23BBDA308() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v12 = *(v9 + 80) & 0xF8 | 7;
    v13 = ((v10 + ((v12 + ((((v11 + 1) & ~v11) + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8) + 65) & ~v12) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v13 <= 3)
    {
      v14 = ((a2 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    switch(v16)
    {
      case 1:
        v17 = a1[v13];
        if (!a1[v13])
        {
          break;
        }

        goto LABEL_24;
      case 2:
        v17 = *&a1[v13];
        if (*&a1[v13])
        {
          goto LABEL_24;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BAD1360);
      case 4:
        v17 = *&a1[v13];
        if (!v17)
        {
          break;
        }

LABEL_24:
        v19 = v13 > 3;
        if (v13 <= 3)
        {
          v20 = (v17 - 1) << (8 * v13);
        }

        else
        {
          v20 = 0;
        }

        if (v19)
        {
          v24 = *a1;
        }

        else
        {
          v24 = *a1;
        }

        return v8 + (v24 | v20) + 1;
      default:
        break;
    }
  }

  if (v7 > 0xFE)
  {

    return __swift_getEnumTagSinglePayload(&a1[v11 + 1] & ~v11, v7, v5);
  }

  else
  {
    v21 = *a1;
    v22 = v21 >= 2;
    v23 = (v21 + 2147483646) & 0x7FFFFFFF;
    if (v22)
    {
      return (v23 + 1);
    }

    else
    {
      return 0;
    }
  }
}

void sub_23BAD1374(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_23BBDA308() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((v14 + ((((v13 + 1) & ~v13) + *(v8 + 64)) & 0xFFFFFFFFFFFFFFF8) + 65) & ~v14) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v18 = 0;
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  if (v10 < a2)
  {
    v19 = ~v10 + a2;
    bzero(a1, v15);
    if (v15 <= 3)
    {
      v20 = (v19 >> 8) + 1;
    }

    else
    {
      v20 = 1;
    }

    if (v15 > 3)
    {
      *a1 = v19;
    }

    else
    {
      *a1 = v19;
    }

    switch(v18)
    {
      case 1:
        *(a1 + v15) = v20;
        return;
      case 2:
        *(a1 + v15) = v20;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v15) = v20;
        return;
      default:
        return;
    }
  }

  switch(v18)
  {
    case 1:
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 2:
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x23BAD1604);
    case 4:
      *(a1 + v15) = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (a2)
      {
LABEL_33:
        if (v9 > 0xFE)
        {

          __swift_storeEnumTagSinglePayload((a1 + v13 + 1) & ~v13, a2, v9, v7);
        }

        else
        {
          *a1 = a2 + 1;
        }
      }

      return;
  }
}

void sub_23BAD162C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_23BAD216C(319, &qword_27E1991A0, &type metadata for AnyProductViewStyle, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BAD16D8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 41;
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

    switch(v12)
    {
      case 1:
        v13 = a1[v8];
        if (!a1[v8])
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v13 = *&a1[v8];
        if (*&a1[v8])
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BAD1824);
      case 4:
        v13 = *&a1[v8];
        if (!v13)
        {
          break;
        }

LABEL_22:
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
      default:
        break;
    }
  }

  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 40);
  if (v17 > 1)
  {
    return (v17 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

double sub_23BAD1838(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v8 >= a3)
  {
    v14 = 0;
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
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 41);
    if (v10 <= 3)
    {
      v17 = (v15 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v17;
        return result;
      case 2:
        *&a1[v10] = v17;
        return result;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v17;
        return result;
      default:
        return result;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x23BAD1A38);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v7 < 0xFE)
        {
          v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFE)
          {
            result = 0.0;
            *(v18 + 24) = 0u;
            *(v18 + 8) = 0u;
            *(v18 + 40) = 0;
            *v18 = (a2 - 255);
          }

          else
          {
            *(v18 + 40) = -a2;
          }
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return result;
  }
}

uint64_t type metadata accessor for ListItemVerticalPaddingModifier(uint64_t a1)
{
  result = qword_27E19FAC0;
  if (!qword_27E19FAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BAD1B40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FA80, &qword_23BBFD310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23BAD1BB0()
{
  result = qword_27E19FA90;
  if (!qword_27E19FA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FA88, &qword_23BBF9730);
    sub_23BAD1C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FA90);
  }

  return result;
}

unint64_t sub_23BAD1C34()
{
  result = qword_27E19FA98;
  if (!qword_27E19FA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FAA0, &qword_23BBF9738);
    sub_23BBDC168();
    sub_23BAD1EA8(&qword_27E19CC80, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    swift_getOpaqueTypeConformance2();
    sub_23BAD1EA8(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FA98);
  }

  return result;
}

uint64_t sub_23BAD1D50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FAA0, &qword_23BBF9738);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BAD1DB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FAA0, &qword_23BBF9738);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BAD1E34(uint64_t a1)
{
  v2 = type metadata accessor for ListItemVerticalPaddingModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BAD1EA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BAD1F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0, &unk_23BBE3BE0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23BAD1FD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0, &unk_23BBE3BE0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_23BAD2088(uint64_t a1)
{
  sub_23B974D48(319);
  if (v1 <= 0x3F)
  {
    sub_23BAD216C(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_23BAD216C(319, &qword_27E197EF0, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23BAD216C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_23BAD21BC(void *a1)
{
  sub_23BBDA358();
  sub_23BBDA358();
  type metadata accessor for ListItemVerticalPaddingModifier(255);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_8_2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_34();
  sub_23BAD1EA8(v1, v2, &unk_23BBF97F0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC078();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FA60, &qword_23BBF9718);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FA68, &unk_23BBF9720);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_12();
  sub_23B97B518(v3, &qword_27E19FA60, &qword_23BBF9718, v4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_31();
  sub_23B97B518(v5, &qword_27E19FA68, &unk_23BBF9720, v6);
  return swift_getWitnessTable();
}

uint64_t sub_23BAD239C()
{
  v0 = sub_23BBDC398();
  OUTLINED_FUNCTION_8_31(v0);
  OUTLINED_FUNCTION_7_31();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_4();
  v1 = sub_23BBDA358();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_4_26();
  sub_23BAD1EA8(v2, v3, MEMORY[0x277CDE458]);
  OUTLINED_FUNCTION_8_2();
  swift_getWitnessTable();
  v4 = OUTLINED_FUNCTION_4();
  type metadata accessor for AutoEnablingScrollView(v4, v1, v5, v6);
  sub_23BBDA358();
  OUTLINED_FUNCTION_14_5();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_23BAD24D8()
{
  result = qword_27E19FAE0;
  if (!qword_27E19FAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FAD8, qword_23BBF9848);
    sub_23B97B518(&qword_27E19FAE8, &qword_27E19FAD0, &qword_23BBF9840, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FAE0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_31(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t sub_23BAD2624@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v29 = a3;
  v30 = a2;
  v28 = a1;
  v3 = *a1;
  v4 = *(*a1 + *MEMORY[0x277D84568]);
  OUTLINED_FUNCTION_3_2();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v10 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v23 - v13;
  v26 = *(v6 + 16);
  v26(&v23 - v13, v12);
  v15 = *(v6 + 80);
  v27 = v6;
  v24 = (v15 + 48) & ~v15;
  v16 = (v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  v25 = *(v3 + *MEMORY[0x277D84568] + 8);
  *(v17 + 4) = v25;
  *(v17 + 5) = v4;
  v18 = *(v6 + 32);
  v18(&v17[(v15 + 48) & ~v15], v14, v4);
  v19 = v28;
  *&v17[v16] = v28;
  (v26)(v10, v30, v4);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  v21 = v24;
  *(v20 + 4) = v25;
  *(v20 + 5) = v4;
  v18(&v20[v21], v10, v4);
  *&v20[v16] = v19;

  sub_23BBDC128();
  return (*(v27 + 8))(v30, v4);
}

void *sub_23BAD2888@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v39 = a6;
  v40 = a2;
  v36 = a3;
  v37 = a4;
  v35 = a1;
  v38 = a7;
  OUTLINED_FUNCTION_3_2();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v34 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v31 - v16;
  v32 = *(v10 + 16);
  v32(&v31 - v16, v7, v18, v15);
  v19 = *(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  v21 = *(a5 + 16);
  v22 = v39;
  *(v20 + 4) = v21;
  *(v20 + 5) = v22;
  v23 = v40;
  *(v20 + 6) = v35;
  *(v20 + 7) = v23;
  v35 = *(v10 + 32);
  v35(&v20[(v19 + 64) & ~v19], v17, a5);
  v24 = v34;
  (v32)(v34, v33, a5);
  v25 = (v19 + 48) & ~v19;
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  v27 = v39;
  *(v26 + 4) = v21;
  *(v26 + 5) = v27;
  v35(&v26[v25], v24, a5);
  v28 = &v26[(v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8];
  v29 = v37;
  *v28 = v36;
  v28[1] = v29;

  return sub_23BBDC128();
}

uint64_t sub_23BAD2AB8@<X0>(uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = swift_readAtKeyPath();
  (*(*(*(v4 + *MEMORY[0x277D84568] + 8) - 8) + 16))(a3);
  return v5(&v7, 0);
}

uint64_t sub_23BAD2B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v9 - v6, v5);
  return swift_setAtReferenceWritableKeyPath();
}

uint64_t sub_23BAD2C74(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23BBDC138();
  MEMORY[0x23EEB48C0](v11);
  a3(v10);
  return (*(v8 + 8))(v10, a6);
}

uint64_t sub_23BAD2D6C()
{
  v1 = *(v0 + 32);
  sub_23BBDC138();
  OUTLINED_FUNCTION_20_1();
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_2_35();
  (*(v4 + 8))(v0 + v3 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_23BAD2E5C()
{
  v1 = v0[4];
  v2 = *(sub_23BBDC138() - 8);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0 + ((*(v2 + 80) + 64) & ~*(v2 + 80));

  return sub_23BAD2C74(v3, v4, v5, v6, v7, v1);
}

uint64_t sub_23BAD2EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x28223BE20](a1);
  v8(v7);
  sub_23BBDC138();
  return sub_23BBDC0F8();
}

uint64_t sub_23BAD2F88()
{
  v1 = *(v0 + 32);
  sub_23BBDC138();
  OUTLINED_FUNCTION_20_1();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_3_32();

  OUTLINED_FUNCTION_2_35();
  (*(v4 + 8))(v0 + ((v3 + 48) & ~v3) + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_23BAD3070(uint64_t a1)
{
  v3 = v1[4];
  v4 = *(sub_23BBDC138() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_23BAD2EEC(a1, v6, v7, v1 + v5, v9, v10, v3);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_3_2();
  v3 = v2;
  v4 = *(v2 + 80);
  OUTLINED_FUNCTION_3_32();
  (*(v3 + 8))(v0 + ((v4 + 48) & ~v4), v1);

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_3_32()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_23BAD330C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBDC208();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23BAD3368(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBDC208();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SubscriptionOptionSectionAccessorySubview(uint64_t a1)
{
  result = qword_27E19FAF0;
  if (!qword_27E19FAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BAD3400(uint64_t a1)
{
  result = sub_23BBDC208();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BAD34B8()
{
  sub_23BA23F8C();
  sub_23BBDA298();
  return v1;
}

uint64_t sub_23BAD34F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDC208();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_23BAD3568(uint64_t a1)
{
  *(a1 + 8) = sub_23BAD35EC(&qword_27E19FB00, type metadata accessor for SubscriptionOptionSectionAccessorySubview, &unk_23BBF989C);
  result = sub_23BAD35EC(qword_27E19E330, type metadata accessor for SubscriptionOptionSectionAccessorySubview, &unk_23BBF98F0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23BAD35EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_23BAD3644(char a1)
{
  sub_23BA23F8C();
  sub_23BBDA2A8();
  return result;
}

double sub_23BAD3680(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = a1 & 1;
  sub_23BB1106C(KeyPath, &v8, a2, a3);

  return result;
}

uint64_t sub_23BAD36F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BAD34B8();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionOptionSectionAccessorySubview.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BAD3828);
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

unint64_t sub_23BAD3864()
{
  result = qword_27E19FB08;
  if (!qword_27E19FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FB08);
  }

  return result;
}

uint64_t sub_23BAD38B8(char a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199920, qword_23BBF9A40);
  v5 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  v10 = v13 - v9;
  v14 = a1;
  sub_23BAD3A20();
  sub_23BBDB768();
  v11 = sub_23BAD3A74();
  v13[1] = a3;
  v13[2] = v11;
  swift_getWitnessTable();
  sub_23BBDBB68();
  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_23BAD3A20()
{
  result = qword_27E19FB10;
  if (!qword_27E19FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FB10);
  }

  return result;
}

unint64_t sub_23BAD3A74()
{
  result = qword_27E1999D8;
  if (!qword_27E1999D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199920, qword_23BBF9A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1999D8);
  }

  return result;
}

uint64_t sub_23BAD3AF0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 65))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BAD3B10(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = (a2 - 1);
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

  *(result + 65) = v3;
  return result;
}

void sub_23BAD3B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_31_3();
  v7 = v6;
  v98 = v8;
  v99 = v9;
  v11 = v10;
  v96 = v12;
  v97 = v13;
  v100 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DE8, &qword_23BBF9BF0);
  OUTLINED_FUNCTION_13_0(v15);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v88 - v17;
  v94 = sub_23BBD9F58();
  OUTLINED_FUNCTION_7();
  v92 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v93 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FB38, &qword_23BBF9C08);
  OUTLINED_FUNCTION_13_0(v23);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v24);
  v26 = &v88 - v25;
  v27 = sub_23BBDA098();
  OUTLINED_FUNCTION_7();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_1();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FB30, &qword_23BBF9BF8);
  OUTLINED_FUNCTION_13_0(v34);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v35);
  v37 = &v88 - v36;
  v38 = type metadata accessor for StructuredScrollViewContentLayout.Components(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3_1();
  v42 = v41 - v40;
  v95 = *(v29 + 16);
  v95(v33, v11, v27);
  sub_23BAD41EC(v33, v37);
  if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
  {
    sub_23B979910(v37, &qword_27E19FB30, &qword_23BBF9BF8);
    goto LABEL_34;
  }

  sub_23BAD7C14(v37, v42);
  v90 = *v7;
  if (*(v7 + 8))
  {
    v91 = 1;
    v43 = 0.0;
    v44 = 1;
LABEL_21:
    OUTLINED_FUNCTION_11_18();
    v102 = 0;
    sub_23BBD9F18();
    if (v44 || v70 > v90)
    {
      goto LABEL_28;
    }

    v71 = v90 - v70 + *(v7 + 16);
    sub_23B99FCE0(v42, v18, &qword_27E199DE8, &qword_23BBF9BF0);
    v72 = v94;
    if (__swift_getEnumTagSinglePayload(v18, 1, v94) == 1)
    {
      sub_23B979910(v18, &qword_27E199DE8, &qword_23BBF9BF0);
      v73 = v71;
    }

    else
    {
      v74 = v18;
      v75 = v92;
      (*(v92 + 32))(v93, v74, v72);
      OUTLINED_FUNCTION_11_18();
      v102 = 0;
      sub_23BBD9F18();
      v73 = v76;
      (*(v75 + 8))(v93, v94);
    }

    if (v73 >= v71 + 0.2)
    {
LABEL_28:
      if (v91)
      {
        OUTLINED_FUNCTION_11_18();
        OUTLINED_FUNCTION_21_13(v83, v81, v82);
        v43 = v84;
      }

      v85 = v43 - *(v7 + 16);
      if (!v44)
      {
        sub_23BAD7C78(v42);
        goto LABEL_34;
      }

      v86 = v99;
      sub_23B9B9CD0(&v101, v85);
      sub_23BAD7C78(v42);
      v87 = *(type metadata accessor for StructuredScrollViewContentLayout.Cache(0) + 20);
      sub_23B979910(v86 + v87, &qword_27E19FB38, &qword_23BBF9C08);
      v95(v86 + v87, v11, v27);
      v79 = v86 + v87;
      v80 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_11_18();
      v102 = 0;
      sub_23BBD9F18();
      sub_23BAD7C78(v42);
      v77 = v99;

      *v77 = MEMORY[0x277D84FA0];
      v78 = *(type metadata accessor for StructuredScrollViewContentLayout.Cache(0) + 20);
      sub_23B979910(v77 + v78, &qword_27E19FB38, &qword_23BBF9C08);
      v79 = v77 + v78;
      v80 = 1;
    }

    __swift_storeEnumTagSinglePayload(v79, v80, 1, v27);
LABEL_34:
    OUTLINED_FUNCTION_30_4();
    return;
  }

  v88 = v18;
  v89 = v11;
  v45 = *(v7 + 16);
  v46 = *(v7 + 32);
  v47 = type metadata accessor for StructuredScrollViewContentLayout.Cache(0);
  v48 = v99;
  sub_23B99FCE0(v99 + *(v47 + 20), v26, &qword_27E19FB38, &qword_23BBF9C08);
  v91 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v27);
  v50 = OUTLINED_FUNCTION_19_16();
  sub_23B979910(v50, v51, v52);
  if (EnumTagSinglePayload == 1)
  {
    v44 = 0;
    v43 = 0.0;
    v11 = v89;
    v18 = v88;
    goto LABEL_21;
  }

  v53 = 0;
  v54 = *v48;
  v55 = *v48;
  v56 = 1 << *(*v48 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v59 = *(v55 + 56);
  v58 = v55 + 56;
  v60 = v90 - (v45 + v46);
  v61 = v57 & v59;
  v62 = (v56 + 63) >> 6;
  v11 = v89;
  v18 = v88;
  while (v61)
  {
    v63 = v53;
LABEL_16:
    v64 = __clz(__rbit64(v61));
    v61 &= v61 - 1;
    if (vabdd_f64(*(*(v54 + 48) + ((v63 << 9) | (8 * v64))), v60) < 0.001)
    {
      OUTLINED_FUNCTION_11_18();
      OUTLINED_FUNCTION_21_13(v67, v65, v66);
      v43 = v68;
      v91 = 0;
      v44 = v68 >= v60;
      v69 = v90;
      if (v68 >= v60)
      {
        v69 = 0.0;
      }

      v90 = v69;
      goto LABEL_21;
    }
  }

  while (1)
  {
    v63 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v63 >= v62)
    {
      v44 = 0;
      v91 = 1;
      v43 = 0.0;
      goto LABEL_21;
    }

    v61 = *(v58 + 8 * v63);
    ++v53;
    if (v61)
    {
      v53 = v63;
      goto LABEL_16;
    }
  }

  __break(1u);
}

double sub_23BAD41EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a1;
  v115 = a2;
  v3 = sub_23BBD9F58();
  v137 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v110 = &v110 - v7;
  MEMORY[0x28223BE20](v8);
  v139 = &v110 - v9;
  v10 = sub_23BBDA098();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E140, &qword_23BBF9C00);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v110 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DE8, &qword_23BBF9BF0);
  MEMORY[0x28223BE20](v18 - 8);
  v128 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v127 = &v110 - v21;
  MEMORY[0x28223BE20](v22);
  v126 = &v110 - v23;
  MEMORY[0x28223BE20](v24);
  v125 = &v110 - v25;
  MEMORY[0x28223BE20](v26);
  v124 = &v110 - v27;
  MEMORY[0x28223BE20](v28);
  v112 = &v110 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v110 - v31;
  v33 = type metadata accessor for StructuredScrollViewContentLayout.Components(0);
  MEMORY[0x28223BE20](v33);
  v35 = &v110 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v3);
  v135 = v33[5];
  __swift_storeEnumTagSinglePayload(&v35[v135], 1, 1, v3);
  v134 = v33[7];
  __swift_storeEnumTagSinglePayload(&v35[v134], 1, 1, v3);
  v113 = v33;
  v36 = v33[8];
  v140 = v35;
  v133 = v36;
  __swift_storeEnumTagSinglePayload(&v35[v36], 1, 1, v3);
  v129 = v32;
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v3);
  v37 = *(v11 + 16);
  v38 = v10;
  v37(v13, v121, v10);
  v37(v17, v13, v10);
  v39 = *(v15 + 44);
  v40 = sub_23BA8955C(&qword_27E199DF0, MEMORY[0x277CDF820]);
  sub_23BBDD438();
  v41 = *(v11 + 8);
  v114 = v11 + 8;
  v111 = v41;
  v42 = (v41)(v13, v10);
  v138 = (v137 + 16);
  v141 = (v137 + 32);
  v120 = " the structured scroll view.";
  v119 = " background components";
  v118 = "ent background components";
  v117 = "cate\nbottom content components";
  v116 = "ground components";
  v123 = (v137 + 8);
  v122 = "11Coordinator";
  v42.n128_u64[0] = 136446466;
  v130 = v42;
  v131 = v10;
  v132 = v5;
  v136 = v40;
  v137 = v39;
  while (1)
  {
    sub_23BBDD4A8();
    if (*&v17[v39] == v142)
    {
      break;
    }

    v43 = sub_23BBDD558();
    v44 = v139;
    (*v138)(v139);
    v43(&v142, 0);
    sub_23BBDD4B8();
    v45 = *v141;
    (*v141)(v5, v44, v3);
    sub_23BAD3A20();
    sub_23BBD9F68();
    switch(v142)
    {
      case 1:
        v78 = v125;
        sub_23B99FCE0(&v140[v135], v125, &qword_27E199DE8, &qword_23BBF9BF0);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78, 1, v3);
        sub_23B979910(v78, &qword_27E199DE8, &qword_23BBF9BF0);
        if (EnumTagSinglePayload != 1)
        {
          if (qword_27E1976D0 != -1)
          {
            swift_once();
          }

          v80 = type metadata accessor for SKLogger(0);
          __swift_project_value_buffer(v80, qword_27E1BFC88);
          v81 = sub_23BBDD5A8();
          v82 = sub_23BBD9988();
          if (os_log_type_enabled(v82, v81))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v142 = v84;
            *v83 = v130.n128_u32[0];
            *(v83 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v142);
            *(v83 + 12) = 2082;
            *(v83 + 14) = sub_23BA5AB90(0xD000000000000051, v117 | 0x8000000000000000, &v142);
            _os_log_impl(&dword_23B970000, v82, v81, "%{public}s%{public}s", v83, 0x16u);
            swift_arrayDestroy();
            v85 = v84;
            v5 = v132;
            MEMORY[0x23EEB6DC0](v85, -1, -1);
            v86 = v83;
            v38 = v131;
            MEMORY[0x23EEB6DC0](v86, -1, -1);
          }
        }

        v65 = v140;
        v66 = v135;
        goto LABEL_34;
      case 2:
        v67 = v129;
        v68 = v126;
        sub_23B99FCE0(v129, v126, &qword_27E199DE8, &qword_23BBF9BF0);
        if (__swift_getEnumTagSinglePayload(v68, 1, v3) == 1)
        {
          sub_23B979910(v67, &qword_27E199DE8, &qword_23BBF9BF0);
          sub_23B979910(v68, &qword_27E199DE8, &qword_23BBF9BF0);
          v39 = v137;
        }

        else
        {
          sub_23B979910(v68, &qword_27E199DE8, &qword_23BBF9BF0);
          if (qword_27E1976D0 != -1)
          {
            swift_once();
          }

          v94 = type metadata accessor for SKLogger(0);
          __swift_project_value_buffer(v94, qword_27E1BFC88);
          v95 = sub_23BBDD5A8();
          v96 = sub_23BBD9988();
          v97 = os_log_type_enabled(v96, v95);
          v39 = v137;
          if (v97)
          {
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            v142 = v99;
            *v98 = v130.n128_u32[0];
            *(v98 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v142);
            *(v98 + 12) = 2082;
            *(v98 + 14) = sub_23BA5AB90(0xD00000000000004ELL, v118 | 0x8000000000000000, &v142);
            _os_log_impl(&dword_23B970000, v96, v95, "%{public}s%{public}s", v98, 0x16u);
            swift_arrayDestroy();
            v100 = v99;
            v5 = v132;
            MEMORY[0x23EEB6DC0](v100, -1, -1);
            v101 = v98;
            v38 = v131;
            MEMORY[0x23EEB6DC0](v101, -1, -1);
          }

          v67 = v129;
          sub_23B979910(v129, &qword_27E199DE8, &qword_23BBF9BF0);
        }

        v45(v67, v5, v3);
        __swift_storeEnumTagSinglePayload(v67, 0, 1, v3);
        continue;
      case 3:
        v69 = v127;
        sub_23B99FCE0(&v140[v134], v127, &qword_27E199DE8, &qword_23BBF9BF0);
        v70 = __swift_getEnumTagSinglePayload(v69, 1, v3);
        sub_23B979910(v69, &qword_27E199DE8, &qword_23BBF9BF0);
        if (v70 != 1)
        {
          if (qword_27E1976D0 != -1)
          {
            swift_once();
          }

          v71 = type metadata accessor for SKLogger(0);
          __swift_project_value_buffer(v71, qword_27E1BFC88);
          v72 = sub_23BBDD5A8();
          v73 = sub_23BBD9988();
          if (os_log_type_enabled(v73, v72))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v142 = v75;
            *v74 = v130.n128_u32[0];
            *(v74 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v142);
            *(v74 + 12) = 2082;
            *(v74 + 14) = sub_23BA5AB90(0xD000000000000059, v119 | 0x8000000000000000, &v142);
            _os_log_impl(&dword_23B970000, v73, v72, "%{public}s%{public}s", v74, 0x16u);
            swift_arrayDestroy();
            v76 = v75;
            v5 = v132;
            MEMORY[0x23EEB6DC0](v76, -1, -1);
            v77 = v74;
            v38 = v131;
            MEMORY[0x23EEB6DC0](v77, -1, -1);
          }
        }

        v65 = v140;
        v66 = v134;
        goto LABEL_34;
      case 4:
        v56 = v128;
        sub_23B99FCE0(&v140[v133], v128, &qword_27E199DE8, &qword_23BBF9BF0);
        v57 = __swift_getEnumTagSinglePayload(v56, 1, v3);
        sub_23B979910(v56, &qword_27E199DE8, &qword_23BBF9BF0);
        if (v57 != 1)
        {
          if (qword_27E1976D0 != -1)
          {
            swift_once();
          }

          v58 = type metadata accessor for SKLogger(0);
          __swift_project_value_buffer(v58, qword_27E1BFC88);
          v59 = sub_23BBDD5A8();
          v60 = sub_23BBD9988();
          if (os_log_type_enabled(v60, v59))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v142 = v62;
            *v61 = v130.n128_u32[0];
            *(v61 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v142);
            *(v61 + 12) = 2082;
            *(v61 + 14) = sub_23BA5AB90(0xD000000000000056, v120 | 0x8000000000000000, &v142);
            _os_log_impl(&dword_23B970000, v60, v59, "%{public}s%{public}s", v61, 0x16u);
            swift_arrayDestroy();
            v63 = v62;
            v5 = v132;
            MEMORY[0x23EEB6DC0](v63, -1, -1);
            v64 = v61;
            v38 = v131;
            MEMORY[0x23EEB6DC0](v64, -1, -1);
          }
        }

        v65 = v140;
        v66 = v133;
LABEL_34:
        sub_23B979910(v65 + v66, &qword_27E199DE8, &qword_23BBF9BF0);
        v45((v65 + v66), v5, v3);
        __swift_storeEnumTagSinglePayload(v65 + v66, 0, 1, v3);
        v39 = v137;
        break;
      case 5:
        if (qword_27E1976D0 != -1)
        {
          swift_once();
        }

        v87 = type metadata accessor for SKLogger(0);
        __swift_project_value_buffer(v87, qword_27E1BFC88);
        v88 = sub_23BBDD5A8();
        v89 = sub_23BBD9988();
        if (os_log_type_enabled(v89, v88))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v142 = v91;
          *v90 = v130.n128_u32[0];
          *(v90 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v142);
          *(v90 + 12) = 2082;
          *(v90 + 14) = sub_23BA5AB90(0xD00000000000006CLL, v122 | 0x8000000000000000, &v142);
          _os_log_impl(&dword_23B970000, v89, v88, "%{public}s%{public}s", v90, 0x16u);
          swift_arrayDestroy();
          v92 = v91;
          v5 = v132;
          MEMORY[0x23EEB6DC0](v92, -1, -1);
          v93 = v90;
          v38 = v131;
          MEMORY[0x23EEB6DC0](v93, -1, -1);
        }

        (*v123)(v5, v3);
        break;
      default:
        v46 = v124;
        sub_23B99FCE0(v140, v124, &qword_27E199DE8, &qword_23BBF9BF0);
        v47 = __swift_getEnumTagSinglePayload(v46, 1, v3);
        v39 = v137;
        sub_23B979910(v46, &qword_27E199DE8, &qword_23BBF9BF0);
        if (v47 != 1)
        {
          if (qword_27E1976D0 != -1)
          {
            swift_once();
          }

          v48 = type metadata accessor for SKLogger(0);
          __swift_project_value_buffer(v48, qword_27E1BFC88);
          v49 = sub_23BBDD5A8();
          v50 = sub_23BBD9988();
          if (os_log_type_enabled(v50, v49))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v142 = v52;
            *v51 = v130.n128_u32[0];
            *(v51 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v142);
            *(v51 + 12) = 2082;
            *(v51 + 14) = sub_23BA5AB90(0xD000000000000046, v116 | 0x8000000000000000, &v142);
            _os_log_impl(&dword_23B970000, v50, v49, "%{public}s%{public}s", v51, 0x16u);
            swift_arrayDestroy();
            v53 = v52;
            v5 = v132;
            MEMORY[0x23EEB6DC0](v53, -1, -1);
            v54 = v51;
            v38 = v131;
            MEMORY[0x23EEB6DC0](v54, -1, -1);
          }
        }

        v55 = v140;
        sub_23B979910(v140, &qword_27E199DE8, &qword_23BBF9BF0);
        v45(v55, v5, v3);
        __swift_storeEnumTagSinglePayload(v55, 0, 1, v3);
        break;
    }
  }

  v111(v121, v38);
  sub_23B979910(v17, &qword_27E19E140, &qword_23BBF9C00);
  v102 = v112;
  sub_23BAD7D44(v129, v112);
  if (__swift_getEnumTagSinglePayload(v102, 1, v3) == 1)
  {
    sub_23B979910(v102, &qword_27E199DE8, &qword_23BBF9BF0);
    v103 = v140;
    sub_23B979910(v140, &qword_27E199DE8, &qword_23BBF9BF0);
    sub_23B979910(v103 + v135, &qword_27E199DE8, &qword_23BBF9BF0);
    sub_23B979910(v103 + v134, &qword_27E199DE8, &qword_23BBF9BF0);
    sub_23B979910(v103 + v133, &qword_27E199DE8, &qword_23BBF9BF0);
    __swift_storeEnumTagSinglePayload(v115, 1, 1, v113);
  }

  else
  {
    v105 = *v141;
    v106 = v110;
    (*v141)(v110, v102, v3);
    v107 = v113;
    v108 = v140;
    v105(&v140[v113[6]], v106, v3);
    v109 = v115;
    sub_23BAD7DB4(v108, v115);
    __swift_storeEnumTagSinglePayload(v109, 0, 1, v107);
    sub_23BAD7C78(v108);
  }

  return result;
}

double sub_23BAD53FC(uint64_t a1, int a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a2;
  v52[1] = a1;
  v7 = sub_23BBD9F58();
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v52[0] = v52 - v11;
  v12 = sub_23BBDA098();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v54 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FB40, &qword_23BBF9C10) - 8;
  MEMORY[0x28223BE20](v57);
  v16 = v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FB48, &qword_23BBF9C18);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FB50, &qword_23BBF9C20);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = v52 - v26;
  (*(v13 + 16))(v19, a6, v12, v25);
  v28 = *(v13 + 32);
  v28(v27, v19, v12);
  v29 = &v27[*(v21 + 44)];
  *v29 = sub_23BAD7990;
  v29[1] = 0;
  v56 = v27;
  sub_23B99FCE0(v27, v23, &qword_27E19FB50, &qword_23BBF9C20);
  v28(v54, v23, v12);
  sub_23BA8955C(&qword_27E19E138, MEMORY[0x277CDF810]);
  sub_23BBDD188();
  v30 = &v23[*(v21 + 44)];
  v31 = *v30;
  v32 = v30[1];
  v33 = &v16[*(v57 + 44)];
  v57 = v31;
  *v33 = v31;
  *(v33 + 1) = v32;
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E140, &qword_23BBF9C00) + 36);
  sub_23BA8955C(&qword_27E199DF0, MEMORY[0x277CDF820]);
  v35 = (v55 + 2);
  v36 = (v55 + 1);
  v55 += 4;
  v37 = 0.0;
  v38 = 0.0;
  while (1)
  {
    sub_23BBDD4A8();
    if (*&v16[v34] == v59[0])
    {
      break;
    }

    v39 = sub_23BBDD558();
    (*v35)(v9);
    v39(v59, 0);
    sub_23BBDD4B8();
    if ((v57)(v9))
    {
      v40 = v52[0];
      (*v55)(v52[0], v9, v7);
      sub_23BAD3A20();
      sub_23BBD9F68();
      if (LOBYTE(v59[0]))
      {
        LOBYTE(v59[0]) = v53 & 1;
        v58 = 1;
        sub_23BBD9F18();
        v42 = v41;
        v44 = v43;
        (*v36)(v40, v7);
      }

      else
      {
        LOBYTE(v59[0]) = v53 & 1;
        v58 = 1;
        sub_23BBD9F18();
        v42 = v45;
        v44 = v46;
        LOBYTE(v59[0]) = 0;
        v58 = 0;
        sub_23BBD9F18();
        v48 = v47;
        v50 = v49;
        (*v36)(v40, v7);
        if (v44 < v50)
        {
          v42 = v48;
          v44 = v50;
        }
      }

      if (v37 <= v42)
      {
        v37 = v42;
      }

      v38 = v38 + v44;
    }

    else
    {
      (*v36)(v9, v7);
    }
  }

  sub_23B979910(v56, &qword_27E19FB50, &qword_23BBF9C20);
  sub_23B979910(v16, &qword_27E19FB40, &qword_23BBF9C10);
  return v37;
}

void sub_23BAD59D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_31_3();
  a27 = v29;
  a28 = v30;
  v270 = v28;
  v272 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FB20, &qword_23BBF9BE0);
  v41 = OUTLINED_FUNCTION_13_0(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3_5();
  v275 = *&v42;
  MEMORY[0x28223BE20](v43);
  v45 = v247 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FB28, &qword_23BBF9BE8);
  v47 = OUTLINED_FUNCTION_13_0(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_20_12(v50);
  v269 = sub_23BBDA228();
  OUTLINED_FUNCTION_7();
  v271 = v51;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_6_3();
  v267 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DE8, &qword_23BBF9BF0);
  v60 = OUTLINED_FUNCTION_13_0(v59);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v66);
  v68 = v247 - v67;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_20_12(v72);
  v73 = sub_23BBD9F58();
  OUTLINED_FUNCTION_7();
  v273 = v74;
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v81);
  v83 = v247 - v82;
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_18_3();
  v274 = v85;
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_20_12(v87);
  v88 = sub_23BBDA098();
  OUTLINED_FUNCTION_7();
  v90 = v89;
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_3_1();
  v94 = v93 - v92;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FB30, &qword_23BBF9BF8);
  OUTLINED_FUNCTION_13_0(v95);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v96);
  v98 = v247 - v97;
  v99 = type metadata accessor for StructuredScrollViewContentLayout.Components(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_3_1();
  v103 = v102 - v101;
  v105 = *(v90 + 16);
  v104 = v90 + 16;
  v105(v94, *&v272, v88);
  sub_23BAD41EC(v94, v98);
  if (__swift_getEnumTagSinglePayload(v98, 1, v99) != 1)
  {
    sub_23BAD7C14(v98, v103);
    OUTLINED_FUNCTION_24_11(v103 + *(v99 + 32), &qword_27E199DE8, &qword_23BBF9BF0, &a18);
    OUTLINED_FUNCTION_6_22(v104);
    v109 = v103;
    v268 = v99;
    if (v243)
    {
      sub_23B979910(v104, &qword_27E199DE8, &qword_23BBF9BF0);
      v112 = v270;
    }

    else
    {
      v110 = v273;
      v111 = v259;
      (*(v273 + 32))(v259, v104, v73);
      v112 = v270;
      v113 = *(v270 + 16);
      OUTLINED_FUNCTION_14_18();
      v272 = v39 - v113;
      sub_23BBDC3F8();
      v283.origin.x = OUTLINED_FUNCTION_3_33();
      v283.size.height = v33;
      CGRectGetWidth(v283);
      v284.origin.x = OUTLINED_FUNCTION_3_33();
      v284.size.height = v33;
      CGRectGetHeight(v284);
      v37 = v39;
      v39 = v35;
      v35 = v33;
      OUTLINED_FUNCTION_2_36();
      sub_23BBD9F28();
      (*(v110 + 8))(v111, v73);
    }

    v114 = v265;
    v115 = *(v112 + 8);
    if (v115)
    {
      v116 = 10.0;
    }

    else
    {
      v116 = *v112;
    }

    v285.origin.x = OUTLINED_FUNCTION_0_40();
    Height = CGRectGetHeight(v285);
    v263 = v103;
    if (Height < v116 + 0.2 || (v286.origin.x = OUTLINED_FUNCTION_0_40(), CGRectGetHeight(v286) == round(v116)))
    {
      v118 = *(v112 + 64) | v115;
      sub_23B99FCE0(v109, v114, &qword_27E199DE8, &qword_23BBF9BF0);
      OUTLINED_FUNCTION_6_22(v114);
      if (v243)
      {
        sub_23B979910(v114, &qword_27E199DE8, &qword_23BBF9BF0);
        v119 = v268;
        v120 = v273;
        (*(v273 + 16))(v260, v109 + *(v268 + 24), v73);
        sub_23B99FCE0(v109 + *(v119 + 28), v261, &qword_27E199DE8, &qword_23BBF9BF0);
        if (sub_23BAD742C() == 2)
        {
          v287.origin.x = OUTLINED_FUNCTION_0_40();
          CGRectGetHeight(v287);
          OUTLINED_FUNCTION_27_4();
        }

        else
        {
          OUTLINED_FUNCTION_27_4();
          v132 = OUTLINED_FUNCTION_0_40();
          if (v118)
          {
            CGRectGetHeight(*&v132);
          }

          else
          {
            CGRectGetHeight(*&v132);
          }
        }

        v175 = v112;
        v176 = *(v112 + 48);
        v297.origin.x = OUTLINED_FUNCTION_0_40();
        CGRectGetWidth(v297);
        OUTLINED_FUNCTION_2_36();
        OUTLINED_FUNCTION_22_12();
        v177 = v260;
        sub_23BBD9F08();
        MEMORY[0x23EEB2A20](v176);
        sub_23BBDA208();
        sub_23BA87130();
        OUTLINED_FUNCTION_12_21(v178);
        v298.origin.x = OUTLINED_FUNCTION_0_40();
        CGRectGetMinX(v298);
        v299.origin.x = OUTLINED_FUNCTION_0_40();
        CGRectGetWidth(v299);
        v300.origin.x = OUTLINED_FUNCTION_0_40();
        CGRectGetMaxY(v300);
        OUTLINED_FUNCTION_2_36();
        OUTLINED_FUNCTION_22_12();
        sub_23BBD9F28();
        v179 = *(v120 + 8);
        v179(v177, v73);
        v171 = v261;
        OUTLINED_FUNCTION_6_22(v261);
        if (!v243)
        {
          OUTLINED_FUNCTION_14_18();
          v275 = *(v175 + 32);
          v183 = v254;
          (*(v120 + 32))(v254, v171, v73);
          v301.origin.x = v35;
          v301.origin.y = v37;
          v301.size.width = v33;
          v301.size.height = v33;
          CGRectGetMinX(v301);
          v302.origin.x = OUTLINED_FUNCTION_3_33();
          v302.size.height = v33;
          CGRectGetMaxY(v302);
          sub_23BBDC408();
          v303.origin.x = OUTLINED_FUNCTION_3_33();
          v303.size.height = v33;
          CGRectGetWidth(v303);
          sub_23BBDA218();
          OUTLINED_FUNCTION_2_36();
          OUTLINED_FUNCTION_13_23();
          sub_23BBD9F28();
          v179(v183, v73);
          v184 = OUTLINED_FUNCTION_26_7();
          v185(v184);
          goto LABEL_40;
        }

        v180 = OUTLINED_FUNCTION_26_7();
        v181(v180);
      }

      else
      {
        v121 = v114;
        v122 = *(v273 + 32);
        v122(v274, v121, v73);
        v123 = *(v112 + 16);
        v259 = *(v112 + 32);
        v277 = 0u;
        v278 = 0u;
        v279 = v35;
        v280 = v33;
        v281 = v123;
        v124 = sub_23BAD742C();
        if (v124 == 2)
        {
          v282 = 0;
          v276 = 0;
          OUTLINED_FUNCTION_22_12();
          sub_23BBD9F18();
          v126 = v125;
          v128 = v127;
          *&v278 = v125;
          v282 = 0;
          v276 = 0;
          OUTLINED_FUNCTION_22_12();
          sub_23BBD9F18();
          if (v33 - (v129 - v123) >= v128)
          {
            v265 = v126;
            v264 = v128;
          }

          else
          {
            v282 = 0;
            v276 = 0;
            OUTLINED_FUNCTION_22_12();
            sub_23BBD9F18();
            v265 = v130;
            v264 = v131;
          }
        }

        else
        {
          sub_23BAD742C();
          sub_23BAD757C();
          v264 = *(&v278 + 1);
          v265 = v278;
        }

        v140 = v267;
        LOBYTE(v277) = 0;
        v282 = 0;
        sub_23BBD9F08();
        v260 = *(v270 + 48);
        MEMORY[0x23EEB2A20]();
        sub_23BBDA208();
        sub_23BA87130();
        OUTLINED_FUNCTION_12_21(v141);
        v288.origin.x = OUTLINED_FUNCTION_0_40();
        CGRectGetMinX(v288);
        v289.origin.x = OUTLINED_FUNCTION_0_40();
        CGRectGetWidth(v289);
        v290.origin.x = OUTLINED_FUNCTION_25_7();
        v247[0] = *&v290.size.height;
        CGRectGetMinY(v290);
        v275 = v123;
        v142 = v271;
        v143 = OUTLINED_FUNCTION_9_21();
        v144 = v269;
        v270 = v145;
        v261 = v146;
        v146(v143, v140, v269);
        sub_23BBDA208();
        sub_23BBDA218();
        v147 = *(v142 + 8);
        v271 = v142 + 8;
        v272 = *&v147;
        v147(v140, v144);
        OUTLINED_FUNCTION_28_4();
        OUTLINED_FUNCTION_24_11(v263 + *(v148 + 20), &qword_27E199DE8, &qword_23BBF9BF0, &a12);
        v149 = v262;
        OUTLINED_FUNCTION_8_1();
        __swift_storeEnumTagSinglePayload(v150, v151, v152, v73);
        sub_23BAD7CD4(v140, v149);
        OUTLINED_FUNCTION_2_36();
        v153 = v274;
        sub_23BBD9F18();
        OUTLINED_FUNCTION_2_36();
        OUTLINED_FUNCTION_8_32();
        sub_23BBD9F28();
        OUTLINED_FUNCTION_24_11(v149, &qword_27E19FB28, &qword_23BBF9BE8, &a13);
        sub_23BAD7D44(v153, v45);
        for (i = (v273 + 8); ; (*i)(v83, v73))
        {
          sub_23BAD7D44(v45, v68);
          OUTLINED_FUNCTION_8_1();
          __swift_storeEnumTagSinglePayload(v155, v156, v157, v73);
          OUTLINED_FUNCTION_6_22(v68);
          if (v243)
          {
            break;
          }

          v122(v83, v68, v73);
          OUTLINED_FUNCTION_2_36();
          OUTLINED_FUNCTION_8_32();
          sub_23BBD9F28();
        }

        sub_23B979910(v45, &qword_27E19FB20, &qword_23BBF9BE0);
        sub_23B979910(v262, &qword_27E19FB28, &qword_23BBF9BE8);
        OUTLINED_FUNCTION_28_4();
        v273 = *(v158 + 24);
        OUTLINED_FUNCTION_2_36();
        v159 = v263;
        v160 = v258;
        sub_23BBD9F08();
        MEMORY[0x23EEB2A20](v260);
        sub_23BBDA208();
        sub_23BA87130();
        v162 = OUTLINED_FUNCTION_12_21(v161);
        if (v243)
        {
          v164 = v162;
        }

        else
        {
          v164 = v163;
        }

        v265 = *&v164;
        v291.origin.x = OUTLINED_FUNCTION_3_33();
        v165 = *v247;
        *&v291.size.height = v247[0];
        CGRectGetMinX(v291);
        v292.origin.x = OUTLINED_FUNCTION_3_33();
        v292.size.height = v165;
        CGRectGetWidth(v292);
        v293.origin.x = OUTLINED_FUNCTION_3_33();
        v293.size.height = v165;
        CGRectGetMinY(v293);
        sub_23BBDA218();
        v166 = v266;
        v167 = v269;
        v261(v266, v160, v269);
        sub_23BBDA208();
        sub_23BBDA218();
        v168 = v272;
        (*&v272)(v166, v167);
        OUTLINED_FUNCTION_2_36();
        sub_23BBD9F28();
        OUTLINED_FUNCTION_28_4();
        v170 = v159 + *(v169 + 28);
        v171 = v257;
        sub_23B99FCE0(v170, v257, &qword_27E199DE8, &qword_23BBF9BF0);
        OUTLINED_FUNCTION_6_22(v171);
        if (!v243)
        {
          v122(v256, v171, v73);
          v294.origin.x = OUTLINED_FUNCTION_3_33();
          v294.size.height = v165;
          CGRectGetMinX(v294);
          v295.origin.x = OUTLINED_FUNCTION_3_33();
          v295.size.height = v165;
          CGRectGetMinY(v295);
          v172 = v267;
          sub_23BBDA218();
          sub_23BBDC3F8();
          v296.origin.x = OUTLINED_FUNCTION_3_33();
          v296.size.height = v165;
          CGRectGetWidth(v296);
          sub_23BBDA218();
          OUTLINED_FUNCTION_2_36();
          OUTLINED_FUNCTION_13_23();
          v173 = v256;
          sub_23BBD9F28();
          v174 = *i;
          (*i)(v173, v73);
          (*&v168)(v160, v167);
          (*&v168)(v172, v167);
          v174(v274, v73);
LABEL_40:
          v186 = v263;
LABEL_41:
          sub_23BAD7C78(v186);
          goto LABEL_42;
        }

        (*&v168)(v160, v167);
        (*&v168)(v267, v167);
        (*i)(v274, v73);
      }

      v182 = v263;
LABEL_38:
      sub_23BAD7C78(v182);
      v106 = &qword_27E199DE8;
      v107 = &qword_23BBF9BF0;
      v108 = v171;
      goto LABEL_39;
    }

    v136 = v250;
    sub_23B99FCE0(v103, v250, &qword_27E199DE8, &qword_23BBF9BF0);
    LODWORD(v274) = __swift_getEnumTagSinglePayload(v136, 1, v73);
    if (v274 == 1)
    {
      sub_23B979910(v136, &qword_27E199DE8, &qword_23BBF9BF0);
      v137 = 0;
      v138 = v271;
      v139 = v269;
    }

    else
    {
      v187 = v273 + 32;
      v188 = *(v273 + 32);
      v188();
      v304.origin.x = OUTLINED_FUNCTION_0_40();
      CGRectGetWidth(v304);
      v189 = v251;
      sub_23BAD71F4(0, v251);
      v190 = v189;
      MEMORY[0x23EEB2A20](*(v112 + 48));
      sub_23BBDA208();
      sub_23BA87130();
      OUTLINED_FUNCTION_12_21(v191);
      v305.origin.x = OUTLINED_FUNCTION_0_40();
      CGRectGetMinX(v305);
      v306.origin.x = OUTLINED_FUNCTION_0_40();
      CGRectGetWidth(v306);
      v272 = v39;
      v307.origin.x = OUTLINED_FUNCTION_25_7();
      CGRectGetMinY(v307);
      v192 = v271;
      v193 = OUTLINED_FUNCTION_9_21();
      v194 = v189;
      v195 = v269;
      v196(v193, v194, v269);
      sub_23BBDA208();
      sub_23BBDA218();
      v267 = *(v192 + 8);
      v267(v190, v195);
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_24_11(v103 + *(v197 + 20), &qword_27E199DE8, &qword_23BBF9BF0, &a12);
      v198 = v252;
      OUTLINED_FUNCTION_8_1();
      __swift_storeEnumTagSinglePayload(v199, v200, v201, v73);
      sub_23BAD7CD4(v190, v198);
      OUTLINED_FUNCTION_2_36();
      v202 = v255;
      sub_23BBD9F18();
      OUTLINED_FUNCTION_2_36();
      sub_23BBD9F28();
      OUTLINED_FUNCTION_24_11(v198, &qword_27E19FB28, &qword_23BBF9BE8, &a13);
      sub_23BAD7D44(v202, *&v275);
      v203 = (v187 - 24);
      v204 = v247[3];
      while (1)
      {
        sub_23BAD7D44(*&v275, v204);
        OUTLINED_FUNCTION_8_1();
        __swift_storeEnumTagSinglePayload(v205, v206, v207, v73);
        OUTLINED_FUNCTION_6_22(v204);
        if (v243)
        {
          break;
        }

        (v188)(v83, v204, v73);
        OUTLINED_FUNCTION_2_36();
        OUTLINED_FUNCTION_8_32();
        sub_23BBD9F28();
        (*v203)(v83, v73);
      }

      sub_23B979910(*&v275, &qword_27E19FB20, &qword_23BBF9BE0);
      sub_23B979910(v252, &qword_27E19FB28, &qword_23BBF9BE8);
      v208 = v251;
      sub_23BBDA218();
      v137 = v209;
      v139 = v269;
      v267(v208, v269);
      (*v203)(v255, v73);
      v138 = v271;
      v37 = v39;
      v39 = v272;
      v109 = v263;
    }

    v210 = v273;
    v211 = v268;
    v308.origin.x = OUTLINED_FUNCTION_0_40();
    CGRectGetWidth(v308);
    LOBYTE(v277) = 0;
    v282 = 1;
    v212 = v253;
    sub_23BBD9F08();
    v213 = v270;
    MEMORY[0x23EEB2A20](*(v270 + 48));
    sub_23BBDA208();
    sub_23BA87130();
    OUTLINED_FUNCTION_12_21(v214);
    v309.origin.x = OUTLINED_FUNCTION_0_40();
    CGRectGetMinX(v309);
    v310.origin.x = OUTLINED_FUNCTION_0_40();
    CGRectGetWidth(v310);
    *v247 = v33;
    v215 = v39;
    v216 = v37;
    v217 = v35;
    v218 = v33;
    if (v274 == 1)
    {
      CGRectGetMaxY(*&v215);
      v219 = OUTLINED_FUNCTION_9_21();
      v220(v219, v212, v139);
      sub_23BBDA208();
      sub_23BBDA218();
      OUTLINED_FUNCTION_14_18();
      v235 = *(v138 + 8);
      v235(v212, v139);
      OUTLINED_FUNCTION_2_36();
      OUTLINED_FUNCTION_23_7(v221, v225, v226, v227, 1.0, v222, v223, v224);
      v171 = v249;
      sub_23B99FCE0(v109 + *(v211 + 28), v249, &qword_27E199DE8, &qword_23BBF9BF0);
      OUTLINED_FUNCTION_6_22(v171);
      if (!v243)
      {
        v228 = v247[2];
        v229 = OUTLINED_FUNCTION_19_16();
        v230(v229);
        v311.origin.x = OUTLINED_FUNCTION_3_33();
        v231 = *v247;
        *&v311.size.height = v247[0];
        CGRectGetMinX(v311);
        v312.origin.x = OUTLINED_FUNCTION_3_33();
        v312.size.height = v231;
        CGRectGetMaxY(v312);
        sub_23BBDC408();
        v313.origin.x = OUTLINED_FUNCTION_3_33();
        v313.size.height = v231;
        CGRectGetWidth(v313);
        sub_23BBDA218();
LABEL_54:
        OUTLINED_FUNCTION_2_36();
        OUTLINED_FUNCTION_13_23();
        sub_23BBD9F28();
        (*(v210 + 8))(v228, v73);
        v235(v212, v139);
        v186 = v109;
        goto LABEL_41;
      }
    }

    else
    {
      CGRectGetMinY(*&v215);
      v232 = *(v213 + 32);
      v274 = *(v213 + 16);
      v275 = *&v232;
      v233 = OUTLINED_FUNCTION_9_21();
      v234(v233, v212, v139);
      sub_23BBDA208();
      OUTLINED_FUNCTION_14_18();
      sub_23BBDA218();
      v273 = v137;
      v235 = *(v138 + 8);
      v235(v212, v139);
      OUTLINED_FUNCTION_2_36();
      OUTLINED_FUNCTION_23_7(v236, v240, v241, v242, 0.0, v237, v238, v239);
      v171 = v248;
      sub_23B99FCE0(v109 + *(v211 + 28), v248, &qword_27E199DE8, &qword_23BBF9BF0);
      OUTLINED_FUNCTION_6_22(v171);
      if (!v243)
      {
        v228 = v247[1];
        v244 = OUTLINED_FUNCTION_19_16();
        v245(v244);
        v314.origin.x = OUTLINED_FUNCTION_3_33();
        v246 = *v247;
        *&v314.size.height = v247[0];
        CGRectGetMinX(v314);
        v315.origin.x = OUTLINED_FUNCTION_3_33();
        v315.size.height = v246;
        CGRectGetMinY(v315);
        sub_23BBDC3F8();
        v316.origin.x = OUTLINED_FUNCTION_3_33();
        v316.size.height = v246;
        CGRectGetWidth(v316);
        sub_23BBDA218();
        goto LABEL_54;
      }
    }

    v235(v212, v139);
    v182 = v109;
    goto LABEL_38;
  }

  v106 = &qword_27E19FB30;
  v107 = &qword_23BBF9BF8;
  v108 = v98;
LABEL_39:
  sub_23B979910(v108, v106, v107);
LABEL_42:
  OUTLINED_FUNCTION_30_4();
}

uint64_t sub_23BAD71F4@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v4 = sub_23BBDA228();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v24 = a2 & 1;
  v23 = 1;
  sub_23BBD9F08();
  v11 = *(v5 + 16);
  v11(v7, v10, v4);
  sub_23BBDA208();
  sub_23BBDA218();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v22 = 0;
  v21 = 0;
  sub_23BBD9F18();
  v14 = v13;
  sub_23BBDA218();
  if (v15 >= v14)
  {
    return (*(v5 + 32))(v18, v10, v4);
  }

  v11(v7, v10, v4);
  sub_23BBDA208();
  sub_23BBDA218();
  v12(v7, v4);
  v20 = 0;
  v19 = 0;
  sub_23BBD9F08();
  return (v12)(v10, v4);
}

uint64_t sub_23BAD742C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DE8, &qword_23BBF9BF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  sub_23B99FCE0(v1, &v11 - v3, &qword_27E199DE8, &qword_23BBF9BF0);
  v5 = sub_23BBD9F58();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_23B979910(v4, &qword_27E199DE8, &qword_23BBF9BF0);
    v6 = 0.0;
  }

  else
  {
    sub_23BBD9F48();
    v6 = v7;
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  type metadata accessor for StructuredScrollViewContentLayout.Components(0);
  sub_23BBD9F48();
  if (v6 == v8)
  {
    return 0;
  }

  sub_23BBD9F48();
  if (v6 >= v10)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_23BAD757C()
{
  v1 = *(v0 + 48);
  sub_23BBD9F18();
  v3 = v2 - v1;
  *v0 = v4;
  *(v0 + 8) = v3;
  v5 = *(v0 + 40);
  v6 = v5 - v3;
  sub_23BBD9F18();
  v8 = v7;
  *(v0 + 16) = v9;
  *(v0 + 24) = v7;
  if (v6 < v7)
  {
    sub_23BBD9F18();
    v11 = v10 - v1;
    *v0 = v12;
    *(v0 + 8) = v11;
    v6 = v5 - v11;
  }

  if (v6 > v8)
  {
    sub_23BBD9F18();
    *v0 = v14;
    *(v0 + 8) = v13 - v1;
  }
}

uint64_t sub_23BAD76E0@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84FA0];
  type metadata accessor for StructuredScrollViewContentLayout.Cache(0);
  sub_23BBDA098();
  OUTLINED_FUNCTION_8_1();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_23BAD773C(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FB38, &qword_23BBF9C08);
  OUTLINED_FUNCTION_13_0(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  v7 = sub_23BBDA098();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  v14 = *(type metadata accessor for StructuredScrollViewContentLayout.Cache(0) + 20);
  sub_23B99FCE0(a1 + v14, v6, &qword_27E19FB38, &qword_23BBF9C08);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_23B979910(v6, &qword_27E19FB38, &qword_23BBF9C08);
  }

  (*(v9 + 32))(v13, v6, v7);
  sub_23BA8955C(&qword_27E19FB58, MEMORY[0x277CDF808]);
  v16 = sub_23BBDCF38();
  result = (*(v9 + 8))(v13, v7);
  if ((v16 & 1) == 0)
  {

    *a1 = MEMORY[0x277D84FA0];
    sub_23B979910(a1 + v14, &qword_27E19FB38, &qword_23BBF9C08);
    OUTLINED_FUNCTION_8_1();
    return __swift_storeEnumTagSinglePayload(v17, v18, v19, v7);
  }

  return result;
}

uint64_t sub_23BAD7938()
{
  v0 = sub_23BBDA3E8();
  __swift_allocate_value_buffer(v0, qword_27E1BFD70);
  __swift_project_value_buffer(v0, qword_27E1BFD70);
  sub_23BBDA3D8();
  return sub_23BBDA3C8();
}

BOOL sub_23BAD7990()
{
  sub_23BAD3A20();
  sub_23BBD9F68();
  return (v1 & 0xFD) == 0;
}

uint64_t sub_23BAD79E4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E1977D8 != -1)
  {
    swift_once();
  }

  v2 = sub_23BBDA3E8();
  v3 = __swift_project_value_buffer(v2, qword_27E1BFD70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void (*sub_23BAD7B1C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23BBD9AA8();
  return sub_23B97E318;
}

unint64_t sub_23BAD7B94()
{
  result = qword_27E19FB18;
  if (!qword_27E19FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FB18);
  }

  return result;
}

uint64_t sub_23BAD7C14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StructuredScrollViewContentLayout.Components(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BAD7C78(uint64_t a1)
{
  v2 = type metadata accessor for StructuredScrollViewContentLayout.Components(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BAD7CD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DE8, &qword_23BBF9BF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BAD7D44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DE8, &qword_23BBF9BF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BAD7DB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StructuredScrollViewContentLayout.Components(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BAD7E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DE8, &qword_23BBF9BF0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_23BBD9F58();
    v8 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23BAD7F08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DE8, &qword_23BBF9BF0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_23BBD9F58();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_23BAD7FB8(uint64_t a1)
{
  sub_23BAD8498(319, &qword_27E19FB70, MEMORY[0x277CDF6F8]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v4 = sub_23BBD9F58();
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for StructuredScrollViewContentLayout.Component(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StructuredScrollViewContentLayout.Component(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x23BAD81C8);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BAD8214(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FB38, &qword_23BBF9C08);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23BAD82BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FB38, &qword_23BBF9C08);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23BAD8348(uint64_t a1)
{
  sub_23BAD83E8(319);
  if (v1 <= 0x3F)
  {
    sub_23BAD8498(319, &qword_27E19FB98, MEMORY[0x277CDF7F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BAD83E8(uint64_t a1)
{
  if (!qword_27E19FB88)
  {
    sub_23BAD8444();
    v1 = sub_23BBDD3D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27E19FB88);
    }
  }
}

unint64_t sub_23BAD8444()
{
  result = qword_27E19FB90;
  if (!qword_27E19FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FB90);
  }

  return result;
}

void sub_23BAD8498(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23BBDD648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23BAD84F0()
{
  result = qword_27E19FBA0;
  if (!qword_27E19FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FBA0);
  }

  return result;
}

double OUTLINED_FUNCTION_21_13(double a1, uint64_t a2, int a3)
{
  v7 = *(v5 - 204);
  *(v5 - 160) = v7 & 1;
  v8 = *(v5 - 200);

  return sub_23BAD53FC(v3, a3, a1, v8, v7 & 1, v4);
}

uint64_t OUTLINED_FUNCTION_23_7(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_23BBD9F28();
}

uint64_t OUTLINED_FUNCTION_24_11@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a4 - 256);

  return sub_23B99FCE0(a1, v5, a2, a3);
}

void sub_23BAD8734()
{
  type metadata accessor for PositionProxy(0);
  sub_23BBD9E88();
  if ((v1 & 1) == 0 && v0 > 0.0)
  {
    sub_23BBDAD18();
    sub_23BBD9E78();
  }
}

uint64_t sub_23BAD87F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  *a6 = a2;
  *(a6 + 1) = a3;
  v16 = type metadata accessor for PositionReader(0, a4, a5, a4);
  v17 = v16[9];
  v18 = sub_23BBDAD18();
  result = (*(*(v18 - 8) + 32))(&a6[v17], a1, v18);
  v20 = &a6[v16[10]];
  *v20 = a7;
  v20[1] = a8;
  v21 = &a6[v16[11]];
  *v21 = a9;
  v21[1] = a10;
  return result;
}

uint64_t type metadata accessor for PositionProxy(uint64_t a1)
{
  result = qword_27E19FBA8;
  if (!qword_27E19FBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BAD8924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BBD9E98();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_23BBDAD18();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23BAD89D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23BBD9E98();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_23BBDAD18();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_23BAD8A78(uint64_t a1)
{
  result = sub_23BBD9E98();
  if (v2 <= 0x3F)
  {
    result = sub_23BBDAD18();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23BAD8B0C(uint64_t a1)
{
  result = sub_23B975E04();
  if (v2 <= 0x3F)
  {
    result = sub_23BBDAD18();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BAD8BB4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23BBDAD18();
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23BAD8C50(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_23BBDAD18();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

double sub_23BAD8D14(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = *(a1 + 24);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 24) = v7;
  (*(v2 + 32))(v6 + v5, &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v10 = sub_23BBDA068();
  v11 = v8;
  sub_23BBDA078();
  OUTLINED_FUNCTION_0_41();
  swift_getWitnessTable();
  sub_23B9D2D88();

  v10 = v12;
  v11 = v13;
  sub_23B9D2D88();

  return result;
}

uint64_t sub_23BAD8EBC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v31 = a5;
  v9 = type metadata accessor for PositionProxy(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a3 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  v29 = *a2;
  v19 = sub_23BBD9E98();
  (*(*(v19 - 8) + 16))(v12, a1, v19);
  v21 = type metadata accessor for PositionReader(0, a3, a4, v20);
  v22 = v21[9];
  v23 = v10[7];
  v24 = sub_23BBDAD18();
  (*(*(v24 - 8) + 16))(&v12[v23], &a2[v22], v24);
  v25 = v21[11];
  *&v12[v10[8]] = *&a2[v21[10]];
  *&v12[v10[9]] = *&a2[v25];
  v29(v12);
  sub_23BAD92A8(v12);
  sub_23B9D2D88();
  v26 = *(v30 + 8);
  v26(v15, a3);
  sub_23B9D2D88();
  return (v26)(v18, a3);
}

uint64_t sub_23BAD9120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for PositionReader(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);

  v7 = v5[11];
  v8 = sub_23BBDAD18();
  (*(*(v8 - 8) + 8))(v4 + v6 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_23BAD920C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for PositionReader(0, v6, v7, a2) - 8);
  v9 = (v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));

  return sub_23BAD8EBC(a1, v9, v6, v7, a3);
}

uint64_t sub_23BAD92A8(uint64_t a1)
{
  v2 = type metadata accessor for PositionProxy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BAD9304(void *a1)
{
  sub_23BBDA078();
  OUTLINED_FUNCTION_0_41();

  return swift_getWitnessTable();
}

uint64_t sub_23BAD9368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FC38, qword_23BBF9D70);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23BAD9408(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FC38, qword_23BBF9D70);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SubscriptionStoreDefaultMarketingView(uint64_t a1)
{
  result = qword_27E19FC40;
  if (!qword_27E19FC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BAD94DC(uint64_t a1)
{
  sub_23B985190(319, &qword_27E19FC50, &qword_27E19FC58, &unk_23BBF9DC8);
  if (v1 <= 0x3F)
  {
    sub_23B985190(319, &qword_27E1998F0, qword_27E199868, &qword_23BBE84A0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BAD9590(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_23BAD95D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23BAD961C()
{
  v1 = sub_23BBDA928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {

    if (!v6)
    {
      goto LABEL_5;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v7 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    v8 = sub_23BADA264(v5, v6, 0);
    (*(v2 + 8))(v4, v1, v8);
    v5 = v11[0];
    if (!v11[1])
    {
LABEL_5:
      v9 = [objc_opt_self() mainBundle];
      v5 = sub_23BAD97BC();
    }
  }

  return v5;
}

uint64_t sub_23BAD97BC()
{
  result = sub_23BADA274(v0, &selRef_localizedInfoDictionary);
  if (result || (result = sub_23BADA274(v0, &selRef_infoDictionary)) != 0)
  {
    v2 = result;
    result = *MEMORY[0x277CBEC40];
    if (*MEMORY[0x277CBEC40])
    {
      v3 = sub_23BBDD018();
      sub_23B9F3F60(v3, v4, v2, &v24);

      if (v25)
      {
        if (OUTLINED_FUNCTION_1_41(v5, v6, v7, MEMORY[0x277D837D0], v8, v9, v10, v11, v21, v23, v24))
        {

          return v21;
        }
      }

      else
      {
        sub_23B9EA92C(&v24, &unk_27E19FEE0, qword_23BBEA8D0);
      }

      result = *MEMORY[0x277CBED50];
      if (*MEMORY[0x277CBED50])
      {
        v12 = sub_23BBDD018();
        sub_23B9F3F60(v12, v13, v2, &v24);

        if (v25)
        {
          if (OUTLINED_FUNCTION_1_41(v14, v15, v16, MEMORY[0x277D837D0], v17, v18, v19, v20, v21, v23, v24))
          {
            return v22;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          sub_23B9EA92C(&v24, &unk_27E19FEE0, qword_23BBEA8D0);
          return 0;
        }
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}