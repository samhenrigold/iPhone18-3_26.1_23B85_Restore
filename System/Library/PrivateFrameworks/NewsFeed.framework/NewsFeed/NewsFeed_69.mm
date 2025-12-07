uint64_t sub_1D61834B4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6183530(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D61835AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D61835F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6183650(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D6183698(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1D61836F0(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), , v4 = sub_1D7264A5C(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v20 = ~v5;
    v7 = 0x6D6F74746F62;
    v8 = 7105633;
    v9 = 0xE700000000000000;
    v10 = 0xE600000000000000;
    while (1)
    {
      v11 = *(*(a2 + 48) + v6);
      if (v11 <= 1)
      {
        if (*(*(a2 + 48) + v6))
        {
          v12 = 0x676E696461656CLL;
        }

        else
        {
          v12 = 7368564;
        }

        if (*(*(a2 + 48) + v6))
        {
          v13 = 0xE700000000000000;
        }

        else
        {
          v13 = 0xE300000000000000;
        }
      }

      else if (v11 == 2)
      {
        v13 = 0xE800000000000000;
        v12 = 0x676E696C69617274;
      }

      else
      {
        if (v11 == 3)
        {
          v12 = v7;
        }

        else
        {
          v12 = 7105633;
        }

        if (v11 == 3)
        {
          v13 = 0xE600000000000000;
        }

        else
        {
          v13 = 0xE300000000000000;
        }
      }

      if (a1 == 3)
      {
        v8 = v7;
      }

      else
      {
        v10 = 0xE300000000000000;
      }

      if (a1 == 2)
      {
        v8 = 0x676E696C69617274;
        v10 = 0xE800000000000000;
      }

      if (a1)
      {
        v14 = 0x676E696461656CLL;
      }

      else
      {
        v14 = 7368564;
      }

      if (!a1)
      {
        v9 = 0xE300000000000000;
      }

      v15 = a1 <= 1u ? v14 : v8;
      v16 = a1 <= 1u ? v9 : v10;
      if (v12 == v15 && v13 == v16)
      {
        break;
      }

      v17 = v7;
      v18 = sub_1D72646CC();

      if ((v18 & 1) == 0)
      {
        v6 = (v6 + 1) & v20;
        v7 = v17;
        v8 = 7105633;
        v9 = 0xE700000000000000;
        v10 = 0xE600000000000000;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v18 & 1;
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1D6183980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1D7264A0C();
  switch(a2)
  {
    case 1:
      MEMORY[0x1DA6FC0B0](1);
      break;
    case 2:
      MEMORY[0x1DA6FC0B0](2);
      break;
    case 3:
      MEMORY[0x1DA6FC0B0](3);
      break;
    default:
      MEMORY[0x1DA6FC0B0](0);
      sub_1D7264A2C();
      if (a2)
      {
        sub_1D72621EC();
      }

      break;
  }

  v7 = sub_1D7264A5C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11;
    v13 = v11[1];
    switch(v13)
    {
      case 1:
        if (a2 == 1)
        {
          v17 = *v11;
          v18 = 1;
          goto LABEL_43;
        }

        v14 = a2;
        v13 = 1;
        goto LABEL_24;
      case 2:
        if (a2 == 2)
        {
          v17 = *v11;
          v18 = 2;
          goto LABEL_43;
        }

        v14 = a2;
        v13 = 2;
        goto LABEL_24;
      case 3:
        if (a2 == 3)
        {
          v17 = *v11;
          v18 = 3;
          goto LABEL_43;
        }

        v14 = a2;
        v13 = 3;
LABEL_24:
        sub_1D5B7CD94(a1, v14);
        sub_1D5C39250(v12, v13);
LABEL_25:
        sub_1D5C39250(a1, v14);
        goto LABEL_26;
    }

    v14 = a2;
    if ((a2 - 1) < 3)
    {
      goto LABEL_23;
    }

    if (!v13)
    {
      sub_1D5B7CD94(*v11, 0);
      sub_1D5B7CD94(a1, a2);
      sub_1D5B7CD94(v12, 0);
      sub_1D5B7CD94(a1, a2);
      sub_1D5C39250(v12, 0);
      sub_1D5C39250(a1, a2);
      v14 = a2;
      if (!a2)
      {
        return 1;
      }

      goto LABEL_25;
    }

    if (!a2)
    {
      sub_1D5B7CD94(a1, 0);
      v14 = 0;
LABEL_23:
      sub_1D5B7CD94(v12, v13);
      goto LABEL_24;
    }

    if (v12 == a1 && v13 == a2)
    {
      break;
    }

    v16 = sub_1D72646CC();
    sub_1D5B7CD94(v12, v13);
    sub_1D5B7CD94(a1, a2);
    sub_1D5C39250(v12, v13);
    sub_1D5C39250(a1, a2);
    if (v16)
    {
      return 1;
    }

LABEL_26:
    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  sub_1D5B7CD94(a1, a2);
  sub_1D5B7CD94(a1, a2);
  v17 = a1;
  v18 = a2;
LABEL_43:
  sub_1D5C39250(v17, v18);
  sub_1D5C39250(a1, a2);
  return 1;
}

uint64_t sub_1D6183C84(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1D7264A0C(), FormatOptionType.rawValue.getter(), sub_1D72621EC(), , v4 = sub_1D7264A5C(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v22 = ~v5;
    while (1)
    {
      v7 = *(*(a2 + 48) + v6);
      if (v7 > 5)
      {
        if (*(*(a2 + 48) + v6) > 8u)
        {
          if (v7 == 9)
          {
            v9 = 0xE500000000000000;
            v8 = 0x6F65646976;
          }

          else if (v7 == 10)
          {
            v9 = 0xE400000000000000;
            v8 = 1953394534;
          }

          else
          {
            v8 = 0x616C506F65646976;
            v9 = 0xEB00000000726579;
          }
        }

        else if (v7 == 6)
        {
          v9 = 0xE300000000000000;
          v8 = 7107189;
        }

        else
        {
          v9 = 0xE500000000000000;
          if (v7 == 7)
          {
            v8 = 0x726F6C6F63;
          }

          else
          {
            v8 = 0x6567616D69;
          }
        }
      }

      else if (*(*(a2 + 48) + v6) > 2u)
      {
        if (v7 == 3)
        {
          v9 = 0xE500000000000000;
          v8 = 0x74616F6C66;
        }

        else if (v7 == 4)
        {
          v9 = 0xE700000000000000;
          v8 = 0x72656765746E69;
        }

        else
        {
          v9 = 0xE600000000000000;
          v8 = 0x676E69727473;
        }
      }

      else if (*(*(a2 + 48) + v6))
      {
        if (v7 == 1)
        {
          v8 = 1702125924;
        }

        else
        {
          v8 = 1836412517;
        }

        v9 = 0xE400000000000000;
      }

      else
      {
        v9 = 0xE700000000000000;
        v8 = 0x6E61656C6F6F62;
      }

      v10 = 0x616C506F65646976;
      if (a1 == 10)
      {
        v10 = 1953394534;
      }

      v11 = 0xEB00000000726579;
      if (a1 == 10)
      {
        v11 = 0xE400000000000000;
      }

      if (a1 == 9)
      {
        v10 = 0x6F65646976;
        v11 = 0xE500000000000000;
      }

      v12 = 0x726F6C6F63;
      if (a1 != 7)
      {
        v12 = 0x6567616D69;
      }

      v13 = 0xE500000000000000;
      if (a1 == 6)
      {
        v12 = 7107189;
        v13 = 0xE300000000000000;
      }

      if (a1 <= 8u)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x72656765746E69;
      if (a1 != 4)
      {
        v14 = 0x676E69727473;
      }

      v15 = 0xE600000000000000;
      if (a1 == 4)
      {
        v15 = 0xE700000000000000;
      }

      if (a1 == 3)
      {
        v14 = 0x74616F6C66;
        v15 = 0xE500000000000000;
      }

      v16 = 1836412517;
      if (a1 == 1)
      {
        v16 = 1702125924;
      }

      v17 = 0xE400000000000000;
      if (!a1)
      {
        v16 = 0x6E61656C6F6F62;
        v17 = 0xE700000000000000;
      }

      if (a1 <= 2u)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = a1 <= 5u ? v14 : v10;
      v19 = a1 <= 5u ? v15 : v11;
      if (v8 == v18 && v9 == v19)
      {
        break;
      }

      v20 = sub_1D72646CC();

      if ((v20 & 1) == 0)
      {
        v6 = (v6 + 1) & v22;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v20 & 1;
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

unint64_t sub_1D6184038(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = a2;
  v19 = a1;
  v20 = a2;
  sub_1D7264A0C();
  FormatItemKind.hash(into:)(v18);
  v6 = sub_1D7264A5C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = *(a3 + 48) + 16 * v8;
    v11 = *v10;
    v12 = *(v10 + 8);
    switch(v12)
    {
      case 0uLL:
        if (v4)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 0);
        sub_1D5CBA0FC(a1, 0);
        v16 = v11;
        v17 = 0;
        goto LABEL_50;
      case 1uLL:
        if (v4 != 1)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 1uLL);
        sub_1D5CBA0FC(a1, 1uLL);
        sub_1D5CBA0FC(v11, 1uLL);
        return v4;
      case 2uLL:
        if (v4 != 2)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 2uLL);
        sub_1D5CBA0FC(a1, 2uLL);
        v16 = v11;
        v17 = 2;
        goto LABEL_50;
      case 3uLL:
        if (v4 != 3)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 3uLL);
        sub_1D5CBA0FC(a1, 3uLL);
        v16 = v11;
        v17 = 3;
        goto LABEL_50;
      case 4uLL:
        if (v4 != 4)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 4uLL);
        v16 = a1;
        v17 = 4;
        goto LABEL_50;
      case 5uLL:
        if (v4 != 5)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 5uLL);
        v16 = a1;
        v17 = 5;
        goto LABEL_50;
      case 6uLL:
        if (v4 != 6)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 6uLL);
        v16 = a1;
        v17 = 6;
        goto LABEL_50;
      case 7uLL:
        if (v4 != 7)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 7uLL);
        v16 = a1;
        v17 = 7;
        goto LABEL_50;
      case 8uLL:
        if (v4 != 8)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 8uLL);
        v16 = a1;
        v17 = 8;
        goto LABEL_50;
      case 9uLL:
        if (v4 != 9)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 9uLL);
        v16 = a1;
        v17 = 9;
        goto LABEL_50;
      case 0xAuLL:
        if (v4 != 10)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 0xAuLL);
        v16 = a1;
        v17 = 10;
        goto LABEL_50;
      case 0xBuLL:
        if (v4 != 11)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 0xBuLL);
        v16 = a1;
        v17 = 11;
        goto LABEL_50;
      case 0xCuLL:
        if (v4 != 12)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 0xCuLL);
        v16 = a1;
        v17 = 12;
        goto LABEL_50;
      case 0xDuLL:
        if (v4 != 13)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 0xDuLL);
        v16 = a1;
        v17 = 13;
        goto LABEL_50;
      case 0xEuLL:
        if (v4 != 14)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 0xEuLL);
        v16 = a1;
        v17 = 14;
        goto LABEL_50;
      case 0xFuLL:
        if (v4 != 15)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 0xFuLL);
        v16 = a1;
        v17 = 15;
        goto LABEL_50;
      default:
        if (v4 < 0x10)
        {
LABEL_38:
          sub_1D5CBA110(*v10, *(v10 + 8));
          sub_1D5CBA110(v11, v12);
          sub_1D5CBA110(a1, v4);
          sub_1D5CBA0FC(v11, v12);
          sub_1D5CBA0FC(a1, v4);
          sub_1D5CBA0FC(v11, v12);
          goto LABEL_39;
        }

        if (v11 != a1 || v12 != v4)
        {
          v14 = sub_1D72646CC();
          sub_1D5CBA110(v11, v12);
          sub_1D5CBA110(a1, v4);
          sub_1D5CBA0FC(v11, v12);
          sub_1D5CBA0FC(a1, v4);
          if (v14)
          {
            return 1;
          }

LABEL_39:
          v8 = (v8 + 1) & v9;
          if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        sub_1D5CBA110(a1, v4);
        sub_1D5CBA110(a1, v4);
        sub_1D5CBA0FC(a1, v4);
        v16 = a1;
        v17 = v4;
LABEL_50:
        sub_1D5CBA0FC(v16, v17);
        return 1;
    }
  }
}

uint64_t sub_1D618449C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = a1, v4 = sub_1D695471C(*(a2 + 40), a1), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      if (v8 <= 2)
      {
        if (*(*(a2 + 48) + v6))
        {
          if (v8 == 1)
          {
            v9 = 1852138867;
          }

          else
          {
            v9 = 0x6E657A6F7266;
          }

          if (v8 == 1)
          {
            v10 = 0xE400000000000000;
          }

          else
          {
            v10 = 0xE600000000000000;
          }
        }

        else
        {
          v10 = 0xE600000000000000;
          v9 = 0x657669746361;
        }
      }

      else if (*(*(a2 + 48) + v6) > 4u)
      {
        v10 = 0xE800000000000000;
        if (v8 == 5)
        {
          v11 = 0x6C6F6F706572;
        }

        else
        {
          v11 = 0x646E61707865;
        }

        v9 = v11 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      }

      else
      {
        if (v8 == 3)
        {
          v9 = 0x656546664F646E65;
        }

        else
        {
          v9 = 0x646568636163;
        }

        if (v8 == 3)
        {
          v10 = 0xE900000000000064;
        }

        else
        {
          v10 = 0xE600000000000000;
        }
      }

      v12 = 0x64656C6F6F706572;
      if (v3 != 5)
      {
        v12 = 0x6465646E61707865;
      }

      v13 = 0xE800000000000000;
      v14 = 0x656546664F646E65;
      if (v3 != 3)
      {
        v14 = 0x646568636163;
      }

      v15 = 0xE900000000000064;
      if (v3 != 3)
      {
        v15 = 0xE600000000000000;
      }

      if (v3 <= 4u)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = 0x6E657A6F7266;
      if (v3 == 1)
      {
        v16 = 1852138867;
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE600000000000000;
      }

      if (!v3)
      {
        v16 = 0x657669746361;
        v17 = 0xE600000000000000;
      }

      v18 = v3 <= 2u ? v16 : v12;
      v19 = v3 <= 2u ? v17 : v13;
      if (v9 == v18 && v10 == v19)
      {
        break;
      }

      v20 = sub_1D72646CC();

      if ((v20 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v20 & 1;
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

BOOL sub_1D6184708(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_1D72649FC();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1D61847B0(char a1, uint64_t a2)
{
  if (*(a2 + 16) && ((sub_1D7264A0C(), (a1 & 1) == 0) ? (v4 = 0x746C7561666564) : (v4 = 0x656E696C66666FLL), sub_1D72621EC(), , v5 = sub_1D7264A5C(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(a2 + 48) + v7) ? 0x656E696C66666FLL : 0x746C7561666564;
      if (v9 == v4)
      {
        break;
      }

      v10 = sub_1D72646CC();
      swift_bridgeObjectRelease_n();
      if ((v10 & 1) == 0)
      {
        v7 = (v7 + 1) & v8;
        if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v10 & 1;
    }

    swift_bridgeObjectRelease_n();
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1D61848F8(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_1D7264A0C();
    sub_1D72621EC();

    v4 = sub_1D7264A5C();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        if (*(*(a2 + 48) + v6))
        {
          if (*(*(a2 + 48) + v6) == 1)
          {
            v8 = 0xE700000000000000;
            v9 = 0x64657269707865;
            v10 = a1;
            if (!a1)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v8 = 0xE800000000000000;
            v9 = 0x64656C6261736964;
            v10 = a1;
            if (!a1)
            {
LABEL_18:
              v12 = 0xE600000000000000;
              if (v9 != 0x657669746361)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }
          }
        }

        else
        {
          v8 = 0xE600000000000000;
          v9 = 0x657669746361;
          v10 = a1;
          if (!a1)
          {
            goto LABEL_18;
          }
        }

        if (v10 == 1)
        {
          v11 = 0x64657269707865;
        }

        else
        {
          v11 = 0x64656C6261736964;
        }

        if (v10 == 1)
        {
          v12 = 0xE700000000000000;
        }

        else
        {
          v12 = 0xE800000000000000;
        }

        if (v9 != v11)
        {
          goto LABEL_20;
        }

LABEL_19:
        if (v8 == v12)
        {

          v13 = 1;
          return v13 & 1;
        }

LABEL_20:
        v13 = sub_1D72646CC();

        if ((v13 & 1) == 0)
        {
          v6 = (v6 + 1) & v7;
          if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
          {
            continue;
          }
        }

        return v13 & 1;
      }
    }
  }

  v13 = 0;
  return v13 & 1;
}

uint64_t sub_1D6184B08(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1D7264A0C(), FormatSlotTransformPolicy.rawValue.getter(), sub_1D72621EC(), , v4 = sub_1D7264A5C(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v22 = ~v5;
    while (1)
    {
      v7 = *(*(a2 + 48) + v6);
      if (v7 > 5)
      {
        if (*(*(a2 + 48) + v6) > 8u)
        {
          if (v7 == 9)
          {
            v9 = 0xE400000000000000;
            v8 = 1953656691;
          }

          else if (v7 == 10)
          {
            v9 = 0xE800000000000000;
            v8 = 0x65746164696C6176;
          }

          else
          {
            v9 = 0xE500000000000000;
            v8 = 0x7974706D65;
          }
        }

        else if (v7 == 6)
        {
          v8 = 0x7453656C7A7A7570;
          v9 = 0xEF63697473697461;
        }

        else if (v7 == 7)
        {
          v9 = 0xE800000000000000;
          v8 = 0x726F7463656C6573;
        }

        else
        {
          v9 = 0xE600000000000000;
          v8 = 0x7265746C6966;
        }
      }

      else if (*(*(a2 + 48) + v6) > 2u)
      {
        if (v7 == 3)
        {
          v9 = 0xE700000000000000;
          v8 = 0x65726975716572;
        }

        else if (v7 == 4)
        {
          v8 = 0x6F43657269707865;
          v9 = 0xED0000746E65746ELL;
        }

        else
        {
          v9 = 0xE300000000000000;
          v8 = 6775156;
        }
      }

      else if (*(*(a2 + 48) + v6))
      {
        if (v7 == 1)
        {
          v8 = 0x74696D696CLL;
        }

        else
        {
          v8 = 0x6C616E6F73726570;
        }

        if (v7 == 1)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xEB00000000657A69;
        }
      }

      else
      {
        v9 = 0xE600000000000000;
        v8 = 0x657571696E75;
      }

      v10 = 0x65746164696C6176;
      if (a1 == 10)
      {
        v11 = 0xE800000000000000;
      }

      else
      {
        v10 = 0x7974706D65;
        v11 = 0xE500000000000000;
      }

      if (a1 == 9)
      {
        v10 = 1953656691;
        v11 = 0xE400000000000000;
      }

      v12 = 0x726F7463656C6573;
      if (a1 == 7)
      {
        v13 = 0xE800000000000000;
      }

      else
      {
        v12 = 0x7265746C6966;
        v13 = 0xE600000000000000;
      }

      if (a1 == 6)
      {
        v12 = 0x7453656C7A7A7570;
        v13 = 0xEF63697473697461;
      }

      if (a1 <= 8u)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x6F43657269707865;
      if (a1 != 4)
      {
        v14 = 6775156;
      }

      v15 = 0xED0000746E65746ELL;
      if (a1 != 4)
      {
        v15 = 0xE300000000000000;
      }

      if (a1 == 3)
      {
        v14 = 0x65726975716572;
        v15 = 0xE700000000000000;
      }

      v16 = 0x6C616E6F73726570;
      if (a1 == 1)
      {
        v16 = 0x74696D696CLL;
      }

      v17 = 0xEB00000000657A69;
      if (a1 == 1)
      {
        v17 = 0xE500000000000000;
      }

      if (!a1)
      {
        v16 = 0x657571696E75;
        v17 = 0xE600000000000000;
      }

      if (a1 <= 2u)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = a1 <= 5u ? v14 : v10;
      v19 = a1 <= 5u ? v15 : v11;
      if (v8 == v18 && v9 == v19)
      {
        break;
      }

      v20 = sub_1D72646CC();

      if ((v20 & 1) == 0)
      {
        v6 = (v6 + 1) & v22;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v20 & 1;
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1D6184F28(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1D6953BC0(*(a2 + 40), a1), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      if (v8 <= 2)
      {
        if (*(*(a2 + 48) + v6))
        {
          if (v8 == 1)
          {
            v9 = 0x726564616568;
          }

          else
          {
            v9 = 0x7265746F6F66;
          }

          v10 = 0xE600000000000000;
        }

        else
        {
          v10 = 0xE600000000000000;
          v9 = 0x74756F79616CLL;
        }
      }

      else if (*(*(a2 + 48) + v6) > 4u)
      {
        if (v8 == 5)
        {
          v10 = 0xE700000000000000;
          v9 = 0x7972617262696CLL;
        }

        else
        {
          v9 = 0x756F72676B636162;
          v10 = 0xEA0000000000646ELL;
        }
      }

      else
      {
        if (v8 == 3)
        {
          v9 = 0x6C6C6177796170;
        }

        else
        {
          v9 = 0x656D656874;
        }

        if (v8 == 3)
        {
          v10 = 0xE700000000000000;
        }

        else
        {
          v10 = 0xE500000000000000;
        }
      }

      v11 = 0x756F72676B636162;
      if (a1 == 5)
      {
        v11 = 0x7972617262696CLL;
      }

      v12 = 0xEA0000000000646ELL;
      if (a1 == 5)
      {
        v12 = 0xE700000000000000;
      }

      v13 = 0x6C6C6177796170;
      if (a1 != 3)
      {
        v13 = 0x656D656874;
      }

      v14 = 0xE500000000000000;
      if (a1 == 3)
      {
        v14 = 0xE700000000000000;
      }

      if (a1 <= 4u)
      {
        v11 = v13;
        v12 = v14;
      }

      v15 = 0x7265746F6F66;
      if (a1 == 1)
      {
        v15 = 0x726564616568;
      }

      if (!a1)
      {
        v15 = 0x74756F79616CLL;
      }

      v16 = a1 <= 2u ? v15 : v11;
      v17 = a1 <= 2u ? 0xE600000000000000 : v12;
      if (v9 == v16 && v10 == v17)
      {
        break;
      }

      v18 = sub_1D72646CC();

      if ((v18 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v18 & 1;
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1D61851A4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v19 = a1;
  v20 = a2;
  sub_1D7264A0C();
  FeedItem.Kind.hash(into:)(v18);
  v6 = sub_1D7264A5C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = *(a3 + 48) + 16 * v8;
    v11 = *v10;
    v12 = *(v10 + 8);
    switch(v12)
    {
      case 0uLL:
        if (a2)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 0;
        goto LABEL_55;
      case 1uLL:
        if (a2 != 1)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 1;
        goto LABEL_55;
      case 2uLL:
        if (a2 != 2)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 2;
        goto LABEL_55;
      case 3uLL:
        if (a2 != 3)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 3;
        goto LABEL_55;
      case 4uLL:
        if (a2 != 4)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 4;
        goto LABEL_55;
      case 5uLL:
        if (a2 != 5)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 5;
        goto LABEL_55;
      case 6uLL:
        if (a2 != 6)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 6;
        goto LABEL_55;
      case 7uLL:
        if (a2 != 7)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 7;
        goto LABEL_55;
      case 8uLL:
        if (a2 != 8)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 8;
        goto LABEL_55;
      case 9uLL:
        if (a2 != 9)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 9;
        goto LABEL_55;
      case 0xAuLL:
        if (a2 != 10)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 10;
        goto LABEL_55;
      case 0xBuLL:
        if (a2 != 11)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 11;
        goto LABEL_55;
      case 0xCuLL:
        if (a2 != 12)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 12;
        goto LABEL_55;
      case 0xDuLL:
        if (a2 != 13)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 13;
        goto LABEL_55;
      case 0xEuLL:
        if (a2 != 14)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 14;
        goto LABEL_55;
      case 0xFuLL:
        if (a2 != 15)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 15;
        goto LABEL_55;
      case 0x10uLL:
        if (a2 != 16)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 16;
        goto LABEL_55;
      case 0x11uLL:
        if (a2 != 17)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 17;
        goto LABEL_55;
      default:
        if (a2 < 0x12)
        {
          sub_1D5BF2DDC(*v10, *(v10 + 8));
LABEL_42:
          sub_1D5BF2DDC(a1, a2);
          sub_1D5BF6680(v11, v12);
          sub_1D5BF6680(a1, a2);
          goto LABEL_43;
        }

        if (v11 != a1 || v12 != a2)
        {
          v14 = sub_1D72646CC();
          sub_1D5BF2DDC(a1, a2);
          sub_1D5BF2DDC(v11, v12);
          sub_1D5BF6680(v11, v12);
          sub_1D5BF6680(a1, a2);
          if (v14)
          {
            return 1;
          }

LABEL_43:
          v8 = (v8 + 1) & v9;
          if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        sub_1D5BF2DDC(a1, a2);
        sub_1D5BF2DDC(a1, a2);
        v16 = a1;
        v17 = a2;
LABEL_55:
        sub_1D5BF6680(v16, v17);
        sub_1D5BF6680(a1, a2);
        return 1;
    }
  }
}

BOOL sub_1D6185530(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](a1);
  v4 = sub_1D7264A5C();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1D61855FC(char a1, uint64_t a2)
{
  if (*(a2 + 16) && ((v4 = 1685217635, sub_1D7264A0C(), (a1 & 1) == 0) ? (v5 = 0xE400000000000000) : (v4 = 0x746C7561666564, v5 = 0xE700000000000000), sub_1D72621EC(), , v6 = sub_1D7264A5C(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(a2 + 48) + v8) ? 0x746C7561666564 : 1685217635;
      v11 = *(*(a2 + 48) + v8) ? 0xE700000000000000 : 0xE400000000000000;
      if (v10 == v4 && v11 == v5)
      {
        break;
      }

      v13 = sub_1D72646CC();

      if ((v13 & 1) == 0)
      {
        v8 = (v8 + 1) & v9;
        if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1D6185778(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = 0xE900000000000065;
  v5 = 0x7469617274726F70;
  sub_1D7264A0C();
  sub_1D6E23ADC(v3);
  sub_1D72621EC();

  if ((v3 & 0x100) != 0)
  {
    v5 = 0x70616373646E616CLL;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  sub_1D72621EC();

  v6 = sub_1D7264A5C();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v28 = ~v7;
  v9 = 0x7258656E6F685069;
  while (2)
  {
    v10 = (*(a2 + 48) + 2 * v8);
    v11 = v10[1];
    v12 = 0xE800000000000000;
    v13 = v9;
    switch(*v10)
    {
      case 1:
        goto LABEL_10;
      case 2:
        v12 = 0xEB0000000078614DLL;
LABEL_10:
        v13 = 0x7358656E6F685069;
        break;
      case 3:
        v13 = 0x4553656E6F685069;
        break;
      case 4:
        v13 = 0x3131656E6F685069;
        break;
      case 5:
        v13 = 0x3131656E6F685069;
        goto LABEL_32;
      case 6:
        v13 = 0x3131656E6F685069;
        goto LABEL_48;
      case 7:
        v13 = 0x3231656E6F685069;
        break;
      case 8:
        v13 = 0x3231656E6F685069;
        goto LABEL_37;
      case 9:
        v13 = 0x3231656E6F685069;
        goto LABEL_32;
      case 0xA:
        v13 = 0x3231656E6F685069;
        goto LABEL_48;
      case 0xB:
        v13 = 0x3331656E6F685069;
        break;
      case 0xC:
        v13 = 0x3331656E6F685069;
LABEL_37:
        v12 = 0xEC000000696E694DLL;
        break;
      case 0xD:
        v13 = 0x3331656E6F685069;
        goto LABEL_32;
      case 0xE:
        v13 = 0x3331656E6F685069;
        goto LABEL_48;
      case 0xF:
        v13 = 0x3431656E6F685069;
        break;
      case 0x10:
        v13 = 0x3431656E6F685069;
        goto LABEL_28;
      case 0x11:
        v13 = 0x3431656E6F685069;
        goto LABEL_32;
      case 0x12:
        v13 = 0x3431656E6F685069;
        goto LABEL_48;
      case 0x13:
        v13 = 0x3531656E6F685069;
        break;
      case 0x14:
        v13 = 0x3531656E6F685069;
        goto LABEL_28;
      case 0x15:
        v13 = 0x3531656E6F685069;
        goto LABEL_32;
      case 0x16:
        v13 = 0x3531656E6F685069;
        goto LABEL_48;
      case 0x17:
        v13 = 0x3631656E6F685069;
        break;
      case 0x18:
        v13 = 0x3631656E6F685069;
LABEL_28:
        v12 = 0xEC00000073756C50;
        break;
      case 0x19:
        v13 = 0x3631656E6F685069;
LABEL_32:
        v12 = 0xEB000000006F7250;
        break;
      case 0x1A:
        v13 = 0x3631656E6F685069;
LABEL_48:
        v12 = 0xEE0078614D6F7250;
        break;
      case 0x1B:
        v12 = 0xE400000000000000;
        v13 = 1684099177;
        break;
      case 0x1C:
        v12 = 0xE700000000000000;
        v13 = 0x72694164615069;
        break;
      case 0x1D:
        v13 = 0x696E694D64615069;
        break;
      case 0x1E:
        v14 = 895430705;
        goto LABEL_40;
      case 0x1F:
        v12 = 0xEA00000000003131;
        goto LABEL_41;
      case 0x20:
        v14 = 962540081;
LABEL_40:
        v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_41:
        v13 = 0x5F6F725064615069;
        break;
      case 0x21:
        v12 = 0xE300000000000000;
        v13 = 6513005;
        break;
      case 0x22:
        v13 = 0x6465727265666E69;
        break;
      default:
        break;
    }

    v15 = 0xE800000000000000;
    v16 = v9;
    switch(v3)
    {
      case 1:
        goto LABEL_51;
      case 2:
        v15 = 0xEB0000000078614DLL;
LABEL_51:
        if (v13 != 0x7358656E6F685069)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 3:
        if (v13 != 0x4553656E6F685069)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 4:
        if (v13 != 0x3131656E6F685069)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 5:
        v19 = 0x3131656E6F685069;
        goto LABEL_82;
      case 6:
        v18 = 0x3131656E6F685069;
        goto LABEL_108;
      case 7:
        if (v13 != 0x3231656E6F685069)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 8:
        v17 = 0x3231656E6F685069;
        goto LABEL_88;
      case 9:
        v19 = 0x3231656E6F685069;
        goto LABEL_82;
      case 10:
        v18 = 0x3231656E6F685069;
        goto LABEL_108;
      case 11:
        if (v13 != 0x3331656E6F685069)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 12:
        v17 = 0x3331656E6F685069;
LABEL_88:
        v20 = 1768843597;
        goto LABEL_89;
      case 13:
        v19 = 0x3331656E6F685069;
        goto LABEL_82;
      case 14:
        v18 = 0x3331656E6F685069;
        goto LABEL_108;
      case 15:
        if (v13 != 0x3431656E6F685069)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 16:
        v17 = 0x3431656E6F685069;
        goto LABEL_78;
      case 17:
        v19 = 0x3431656E6F685069;
        goto LABEL_82;
      case 18:
        v18 = 0x3431656E6F685069;
        goto LABEL_108;
      case 19:
        if (v13 != 0x3531656E6F685069)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 20:
        v17 = 0x3531656E6F685069;
        goto LABEL_78;
      case 21:
        v19 = 0x3531656E6F685069;
        goto LABEL_82;
      case 22:
        v18 = 0x3531656E6F685069;
        goto LABEL_108;
      case 23:
        if (v13 != 0x3631656E6F685069)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 24:
        v17 = 0x3631656E6F685069;
LABEL_78:
        v20 = 1937075280;
LABEL_89:
        v15 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v13 != v17)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 25:
        v19 = 0x3631656E6F685069;
LABEL_82:
        v15 = 0xEB000000006F7250;
        if (v13 != v19)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 26:
        v18 = 0x3631656E6F685069;
LABEL_108:
        v15 = 0xEE0078614D6F7250;
        if (v13 != v18)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 27:
        v15 = 0xE400000000000000;
        if (v13 != 1684099177)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 28:
        v15 = 0xE700000000000000;
        if (v13 != 0x72694164615069)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 29:
        v9 = 0x696E694D64615069;
        goto LABEL_104;
      case 30:
        v21 = 895430705;
        goto LABEL_93;
      case 31:
        v15 = 0xEA00000000003131;
        goto LABEL_94;
      case 32:
        v21 = 962540081;
LABEL_93:
        v15 = v21 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_94:
        if (v13 != 0x5F6F725064615069)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 33:
        v15 = 0xE300000000000000;
        if (v13 != 6513005)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 34:
        if (v13 != 0x6465727265666E69)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      default:
LABEL_104:
        if (v13 != v9)
        {
          goto LABEL_109;
        }

LABEL_105:
        if (v12 == v15)
        {
        }

        else
        {
LABEL_109:
          v22 = sub_1D72646CC();

          if ((v22 & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        if (v11)
        {
          v23 = 0x70616373646E616CLL;
        }

        else
        {
          v23 = 0x7469617274726F70;
        }

        if (v11)
        {
          v24 = 0xE900000000000065;
        }

        else
        {
          v24 = 0xE800000000000000;
        }

        if (v23 != v5 || v24 != v4)
        {
          v26 = sub_1D72646CC();

          if (v26)
          {
            return 1;
          }

LABEL_7:
          v8 = (v8 + 1) & v28;
          v9 = v16;
          if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
    }
  }
}

BOOL sub_1D6186018(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v3);
  v4 = sub_1D7264A5C();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1D61860E4(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), , v4 = sub_1D7264A5C(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v18 = ~v5;
    v7 = a1;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      v9 = 0xD00000000000001CLL;
      if (v8 == 1)
      {
        v10 = "unusedProperties";
      }

      else
      {
        v9 = 0xD000000000000028;
        v10 = "duplicateNewsroomIdentifiers";
      }

      v11 = v8 == 0;
      if (*(*(a2 + 48) + v6))
      {
        v12 = v9;
      }

      else
      {
        v12 = 0xD000000000000010;
      }

      v13 = "bility-news-plus-via-hardware";
      if (!v11)
      {
        v13 = v10;
      }

      if (a1)
      {
        v14 = a1 == 1 ? 0xD00000000000001CLL : 0xD000000000000028;
        v15 = a1 == 1 ? "unusedProperties" : "duplicateNewsroomIdentifiers";
      }

      else
      {
        v14 = 0xD000000000000010;
        v15 = "bility-news-plus-via-hardware";
      }

      if (v12 == v14 && (v13 | 0x8000000000000000) == (v15 | 0x8000000000000000))
      {
        break;
      }

      v16 = sub_1D72646CC();

      if ((v16 & 1) == 0)
      {
        v6 = (v6 + 1) & v18;
        a1 = v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v16 & 1;
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1D61862E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for WebEmbedDataVisualization(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v38 - v23);
  if (*(a2 + 16))
  {
    sub_1D7264A0C();
    sub_1D61880A0(a1, v24);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v43 = v16;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D6188104(v24, v7);
      sub_1D72621EC();
      sub_1D5B88B00(v7, type metadata accessor for GenericDataVisualization);
    }

    else
    {
      v44 = *v24;
      SportsDataVisualization.identifier.getter();
      sub_1D72621EC();
    }

    v26 = sub_1D7264A5C();
    v27 = -1 << *(a2 + 32);
    v28 = v26 & ~v27;
    v40 = a2 + 56;
    if ((*(a2 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
    {
      v38 = v7;
      v39 = ~v27;
      v41 = *(v9 + 72);
      v42 = v20;
      while (1)
      {
        sub_1D61880A0(*(a2 + 48) + v41 * v28, v20);
        v29 = v43;
        sub_1D61880A0(v20, v43);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D6188104(v29, v7);
          v45 = 0x3A636972656E6567;
          v46 = 0xE90000000000003ALL;
          MEMORY[0x1DA6F9910](*v7, v7[1]);
          v31 = v45;
          v30 = v46;
          sub_1D5B88B00(v7, type metadata accessor for GenericDataVisualization);
        }

        else
        {
          v44 = *v29;
          v45 = 0x3A3A7374726F7073;
          v46 = 0xE800000000000000;
          v32 = SportsDataVisualization.identifier.getter();
          MEMORY[0x1DA6F9910](v32);

          v31 = v45;
          v30 = v46;
        }

        sub_1D61880A0(a1, v12);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D6188104(v12, v7);
          v45 = 0x3A636972656E6567;
          v46 = 0xE90000000000003ALL;
          MEMORY[0x1DA6F9910](*v7, v7[1]);
          v34 = v45;
          v33 = v46;
          sub_1D5B88B00(v7, type metadata accessor for GenericDataVisualization);
          if (v31 != v34)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v44 = *v12;
          v45 = 0x3A3A7374726F7073;
          v46 = 0xE800000000000000;
          v35 = SportsDataVisualization.identifier.getter();
          MEMORY[0x1DA6F9910](v35);

          v7 = v38;

          v33 = v46;
          if (v31 != v45)
          {
            goto LABEL_15;
          }
        }

        if (v30 == v33)
        {

          sub_1D5B88B00(v42, type metadata accessor for WebEmbedDataVisualization);
          v36 = 1;
          return v36 & 1;
        }

LABEL_15:
        v36 = sub_1D72646CC();

        v20 = v42;
        sub_1D5B88B00(v42, type metadata accessor for WebEmbedDataVisualization);
        if ((v36 & 1) == 0)
        {
          v28 = (v28 + 1) & v39;
          if ((*(v40 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
          {
            continue;
          }
        }

        return v36 & 1;
      }
    }
  }

  v36 = 0;
  return v36 & 1;
}

uint64_t sub_1D61867BC(char a1, uint64_t a2)
{
  if (*(a2 + 16) && ((v4 = 0xE900000000000065, v5 = 0x7469617274726F70, sub_1D7264A0C(), (a1 & 1) == 0) ? (v4 = 0xE800000000000000) : (v5 = 0x70616373646E616CLL), sub_1D72621EC(), , v6 = sub_1D7264A5C(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(a2 + 48) + v8) ? 0x70616373646E616CLL : 0x7469617274726F70;
      v11 = *(*(a2 + 48) + v8) ? 0xE900000000000065 : 0xE800000000000000;
      if (v10 == v5 && v11 == v4)
      {
        break;
      }

      v13 = sub_1D72646CC();

      if ((v13 & 1) == 0)
      {
        v8 = (v8 + 1) & v9;
        if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1D6186944(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = a1;
    sub_1D7264A0C();
    sub_1D6BCA4C4(v3);
    sub_1D72621EC();

    v4 = sub_1D7264A5C();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v30 = ~v5;
      v7 = 0x6576694C7261656ELL;
      v8 = 0x656E6F7074736F70;
      while (1)
      {
        v9 = *(*(a2 + 48) + v6);
        if (v9 <= 4)
        {
          if (v9 == 3)
          {
            v11 = 0x6B61657262;
          }

          else
          {
            v11 = v8;
          }

          if (v9 == 3)
          {
            v12 = 0xE500000000000000;
          }

          else
          {
            v12 = 0xE900000000000064;
          }

          if (v9 == 2)
          {
            v11 = 0x6572676F72506E69;
            v12 = 0xEA00000000007373;
          }

          if (*(*(a2 + 48) + v6))
          {
            v13 = v7;
          }

          else
          {
            v13 = 0x656D6167657270;
          }

          if (*(*(a2 + 48) + v6))
          {
            v14 = 0xE800000000000000;
          }

          else
          {
            v14 = 0xE700000000000000;
          }

          if (*(*(a2 + 48) + v6) <= 1u)
          {
            v10 = v13;
          }

          else
          {
            v10 = v11;
          }

          if (*(*(a2 + 48) + v6) <= 1u)
          {
            v15 = v14;
          }

          else
          {
            v15 = v12;
          }
        }

        else if (*(*(a2 + 48) + v6) > 7u)
        {
          if (v9 == 8)
          {
            v15 = 0xE500000000000000;
            v10 = 0x6C616E6966;
          }

          else
          {
            v15 = 0xE700000000000000;
            if (v9 == 9)
            {
              v10 = 0x74696566726F66;
            }

            else
            {
              v10 = 0x6E776F6E6B6E75;
            }
          }
        }

        else
        {
          if (v9 == 5)
          {
            v10 = 0x65646E6570737573;
            goto LABEL_33;
          }

          if (v9 == 6)
          {
            v10 = 0x656C6C65636E6163;
LABEL_33:
            v15 = 0xE900000000000064;
            goto LABEL_37;
          }

          v15 = 0xE700000000000000;
          v10 = 0x646579616C6564;
        }

LABEL_37:
        v16 = 0x74696566726F66;
        if (v3 != 9)
        {
          v16 = 0x6E776F6E6B6E75;
        }

        v17 = 0xE700000000000000;
        if (v3 == 8)
        {
          v16 = 0x6C616E6966;
          v17 = 0xE500000000000000;
        }

        v18 = 0x656C6C65636E6163;
        if (v3 == 6)
        {
          v19 = 0xE900000000000064;
        }

        else
        {
          v18 = 0x646579616C6564;
          v19 = 0xE700000000000000;
        }

        if (v3 == 5)
        {
          v18 = 0x65646E6570737573;
          v19 = 0xE900000000000064;
        }

        if (v3 <= 7u)
        {
          v16 = v18;
          v17 = v19;
        }

        if (v3 == 3)
        {
          v20 = 0x6B61657262;
        }

        else
        {
          v20 = v8;
        }

        if (v3 == 3)
        {
          v21 = 0xE500000000000000;
        }

        else
        {
          v21 = 0xE900000000000064;
        }

        if (v3 == 2)
        {
          v20 = 0x6572676F72506E69;
          v21 = 0xEA00000000007373;
        }

        if (v3)
        {
          v22 = v7;
        }

        else
        {
          v22 = 0x656D6167657270;
        }

        if (v3)
        {
          v23 = 0xE800000000000000;
        }

        else
        {
          v23 = 0xE700000000000000;
        }

        if (v3 <= 1u)
        {
          v20 = v22;
          v21 = v23;
        }

        if (v3 <= 4u)
        {
          v24 = v20;
        }

        else
        {
          v24 = v16;
        }

        if (v3 <= 4u)
        {
          v25 = v21;
        }

        else
        {
          v25 = v17;
        }

        if (v10 == v24 && v15 == v25)
        {

          v28 = 1;
          return v28 & 1;
        }

        v26 = v8;
        v27 = v7;
        v28 = sub_1D72646CC();

        if ((v28 & 1) == 0)
        {
          v6 = (v6 + 1) & v30;
          v7 = v27;
          v8 = v26;
          if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
          {
            continue;
          }
        }

        return v28 & 1;
      }
    }
  }

  v28 = 0;
  return v28 & 1;
}

uint64_t sub_1D6186CE4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), , v4 = sub_1D7264A5C(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v25 = ~v5;
    v7 = 0x64657375636F66;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      v9 = v8 == 2 ? 0x6867696C68676968 : 0x64657463656C6573;
      v10 = v8 == 2 ? 0xEB00000000646574 : 0xE800000000000000;
      v11 = *(*(a2 + 48) + v6) ? v7 : 0x64656C6261736964;
      v12 = *(*(a2 + 48) + v6) ? 0xE700000000000000 : 0xE800000000000000;
      v13 = *(*(a2 + 48) + v6) <= 1u ? v11 : v9;
      v14 = *(*(a2 + 48) + v6) <= 1u ? v12 : v10;
      v15 = a1;
      v16 = a1 == 2 ? 0x6867696C68676968 : 0x64657463656C6573;
      v17 = a1 == 2 ? 0xEB00000000646574 : 0xE800000000000000;
      v18 = a1 ? v7 : 0x64656C6261736964;
      v19 = a1 ? 0xE700000000000000 : 0xE800000000000000;
      v20 = a1 <= 1u ? v18 : v16;
      v21 = a1 <= 1u ? v19 : v17;
      if (v13 == v20 && v14 == v21)
      {
        break;
      }

      v22 = v7;
      v23 = sub_1D72646CC();

      if ((v23 & 1) == 0)
      {
        v6 = (v6 + 1) & v25;
        a1 = v15;
        v7 = v22;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v23 & 1;
    }

    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1D6186F50(unint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1D7264A0C();
  if (a2)
  {
    v6 = qword_1D72A7AC0[a1];
  }

  else
  {
    MEMORY[0x1DA6FC0B0](2);
    v6 = a1;
  }

  MEMORY[0x1DA6FC0B0](v6);
  v8 = sub_1D7264A5C();
  v9 = -1 << *(a3 + 32);
  v10 = v8 & ~v9;
  if ((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(a3 + 48) + 16 * v10;
      v13 = *v12;
      if (*(v12 + 8) == 1)
      {
        if (v13 > 1)
        {
          if (v13 == 2)
          {
            if ((a2 & (a1 == 2)) != 0)
            {
              return 1;
            }
          }

          else if ((a2 & (a1 > 2)) != 0)
          {
            return 1;
          }
        }

        else if (v13)
        {
          if ((a2 & (a1 == 1)) != 0)
          {
            return 1;
          }
        }

        else if ((a2 & (a1 == 0)) != 0)
        {
          return 1;
        }
      }

      else if ((a2 & 1) == 0 && v13 == a1)
      {
        return 1;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return 0;
}

uint64_t sub_1D61870B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v5 = a3;
  sub_1D7264A0C();
  sub_1D6BE3D70(v17, a1, a2, v5);
  v8 = sub_1D7264A5C();
  v9 = a4 + 56;
  v10 = -1 << *(a4 + 32);
  v11 = v8 & ~v10;
  if ((*(a4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(a4 + 48);
    while (1)
    {
      v14 = v13 + 24 * v11;
      switch(*(v14 + 16))
      {
        case 1:
          if (v5 != 1)
          {
            goto LABEL_5;
          }

          goto LABEL_30;
        case 2:
          if (v5 == 2)
          {
            goto LABEL_30;
          }

          goto LABEL_5;
        case 3:
          if (v5 == 3)
          {
            goto LABEL_30;
          }

          goto LABEL_5;
        case 4:
          if (v5 == 4)
          {
            goto LABEL_30;
          }

          goto LABEL_5;
        case 5:
          if (v5 == 5)
          {
            goto LABEL_30;
          }

          goto LABEL_5;
        case 6:
          if (v5 == 6)
          {
            goto LABEL_30;
          }

          goto LABEL_5;
        case 7:
          if (v5 == 7)
          {
            goto LABEL_30;
          }

          goto LABEL_5;
        case 8:
          if (v5 == 8)
          {
            goto LABEL_30;
          }

          goto LABEL_5;
        case 9:
          if (v5 == 9)
          {
            goto LABEL_30;
          }

          goto LABEL_5;
        case 0xA:
          if (v5 == 10)
          {
            goto LABEL_30;
          }

          goto LABEL_5;
        case 0xB:
          if (v5 == 11)
          {
            goto LABEL_30;
          }

          goto LABEL_5;
        case 0xC:
          if (v5 == 12)
          {
            goto LABEL_30;
          }

          goto LABEL_5;
        default:
          if (v5)
          {
            goto LABEL_5;
          }

LABEL_30:
          v15 = *v14 == a1 && *(v14 + 8) == a2;
          if (v15 || (sub_1D72646CC() & 1) != 0)
          {
            return 1;
          }

LABEL_5:
          v11 = (v11 + 1) & v12;
          if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
          {
            return 0;
          }

          break;
      }
    }
  }

  return 0;
}

uint64_t sub_1D61872AC(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), , v4 = sub_1D7264A5C(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      if (v8 > 2)
      {
        if (v8 == 3)
        {
          v10 = 0xE600000000000000;
          v9 = 0x73656D656874;
        }

        else
        {
          if (v8 == 4)
          {
            v9 = 0x6C6C6177796170;
          }

          else
          {
            v9 = 0x756F72676B636162;
          }

          if (v8 == 4)
          {
            v10 = 0xE700000000000000;
          }

          else
          {
            v10 = 0xEB0000000073646ELL;
          }
        }
      }

      else if (*(*(a2 + 48) + v6))
      {
        if (v8 == 1)
        {
          v9 = 0x73726564616568;
        }

        else
        {
          v9 = 0x737265746F6F66;
        }

        v10 = 0xE700000000000000;
      }

      else
      {
        v10 = 0xE700000000000000;
        v9 = 0x7374756F79616CLL;
      }

      v11 = 0x756F72676B636162;
      if (a1 == 4)
      {
        v11 = 0x6C6C6177796170;
      }

      v12 = 0xEB0000000073646ELL;
      if (a1 == 4)
      {
        v12 = 0xE700000000000000;
      }

      if (a1 == 3)
      {
        v11 = 0x73656D656874;
        v12 = 0xE600000000000000;
      }

      v13 = 0x737265746F6F66;
      if (a1 == 1)
      {
        v13 = 0x73726564616568;
      }

      if (!a1)
      {
        v13 = 0x7374756F79616CLL;
      }

      v14 = a1 <= 2u ? v13 : v11;
      v15 = a1 <= 2u ? 0xE700000000000000 : v12;
      if (v9 == v14 && v10 == v15)
      {
        break;
      }

      v16 = sub_1D72646CC();

      if ((v16 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v16 & 1;
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t FeedSubscriptionPaidAccess.init(paidAccessChecker:tag:)@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = [a1 purchaseProvider];
  if ([swift_unknownObjectRetain_n() tagType] == 3)
  {
    v7 = [a2 asSection];
    if (!v7 || (v8 = [v7 parentID], swift_unknownObjectRelease(), !v8))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_7;
    }
  }

  else
  {
    v8 = [a2 identifier];
  }

  v9 = sub_1D726207C();
  v11 = v10;

  v12 = [v6 purchasedTagIDs];
  v13 = sub_1D7262B0C();

  LOBYTE(v12) = sub_1D5BE240C(v9, v11, v13);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v12)
  {
    goto LABEL_30;
  }

LABEL_7:
  v14 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v14, v14 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (!*(&v35 + 1))
  {
    sub_1D5B88B00(&v36, sub_1D5BE1404);
    goto LABEL_15;
  }

  sub_1D5BAFAD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v15 = 0;
    v17 = 0;
    goto LABEL_16;
  }

  v15 = v33;
  v16 = [v33 integerValue];
  if (v16 == -1)
  {

LABEL_27:
    v20 = [objc_msgSend(a1 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    v21 = [a2 identifier];
    if (!v21)
    {
      sub_1D726207C();
      v21 = sub_1D726203C();
    }

    v22 = [v20 containsTagID_];

    if ((v22 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_30:
    v23 = [a1 purchaseProvider];
    if ([swift_unknownObjectRetain() tagType] == 3)
    {
      v24 = [a2 asSection];
      if (!v24 || (v25 = [v24 parentID], swift_unknownObjectRelease(), !v25))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
        result = swift_unknownObjectRelease();
        goto LABEL_38;
      }
    }

    else
    {
      v25 = [a2 identifier];
    }

    v28 = sub_1D726207C();
    v30 = v29;

    v31 = [v23 purchasedTagIDs];
    v32 = sub_1D7262B0C();

    LOBYTE(v31) = sub_1D5BE240C(v28, v30, v32);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease_n();
    if (v31)
    {
      v27 = 1;
      goto LABEL_39;
    }

LABEL_38:
    v27 = 2;
    goto LABEL_39;
  }

  v17 = v16;
LABEL_16:
  if (objc_getAssociatedObject(v14, ~v17))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (!*(&v35 + 1))
  {
    sub_1D5B88B00(&v36, sub_1D5BE1404);
LABEL_24:

    if ((v17 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  sub_1D5BAFAD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v18 = v33;
  v19 = [v18 integerValue];

  if ((v19 ^ v17))
  {
    goto LABEL_27;
  }

LABEL_34:
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease_n();
  v27 = 0;
LABEL_39:
  *a3 = v27;
  return result;
}

NewsFeed::FeedSubscriptionPaidAccess_optional __swiftcall FeedSubscriptionPaidAccess.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedSubscriptionPaidAccess.rawValue.getter()
{
  v1 = 0x6574726143614C61;
  if (*v0 != 1)
  {
    v1 = 0x646E754264696170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6373627553746F6ELL;
  }
}

uint64_t sub_1D6187BF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6574726143614C61;
  if (v2 != 1)
  {
    v4 = 0x646E754264696170;
    v3 = 0xEA0000000000656CLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6373627553746F6ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED00006465626972;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6574726143614C61;
  if (*a2 != 1)
  {
    v8 = 0x646E754264696170;
    v7 = 0xEA0000000000656CLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6373627553746F6ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED00006465626972;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6187D08()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6187DBC(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6187E5C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6187F18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006465626972;
  v4 = 0xE800000000000000;
  v5 = 0x6574726143614C61;
  if (v2 != 1)
  {
    v5 = 0x646E754264696170;
    v4 = 0xEA0000000000656CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6373627553746F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D618803C()
{
  result = qword_1EC8847C0;
  if (!qword_1EC8847C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8847C0);
  }

  return result;
}

uint64_t sub_1D61880A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedDataVisualization(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6188104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericDataVisualization(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D6188168()
{
  result = qword_1EDF138B0;
  if (!qword_1EDF138B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF138B0);
  }

  return result;
}

uint64_t FormatSlotDefinitionCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 8);
  if (*(v5 + 16) && (v6 = sub_1D5B69D90(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for FormatSlotDefinition(0);
    v17 = *(v10 - 8);
    sub_1D5CAF694(v9 + *(v17 + 72) * v8, a3);
    v11 = *(v17 + 56);
    v12 = a3;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v15 = type metadata accessor for FormatSlotDefinition(0);
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a3;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t FormatSlotDefinitionCollection.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D5CAAC54(0);
  sub_1D5CAACF4(&qword_1EDF04E68, &qword_1EDF0ED20, &protocol conformance descriptor for FormatSlotDefinition, MEMORY[0x1E69E6300]);
  sub_1D726476C();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

NewsFeed::FormatSlotDefinitionCollection __swiftcall FormatSlotDefinitionCollection.init()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1D5C4C26C(MEMORY[0x1E69E7CC0]);
  *v1 = v2;
  v1[1] = v3;
  result.slotsByIdentifier._rawValue = v4;
  result.slots._rawValue = v3;
  return result;
}

unint64_t sub_1D6188428@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1D5C4C26C(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D618846C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatSlotDefinition(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D61884D0(uint64_t a1)
{
  if (!qword_1EC8847C8)
  {
    type metadata accessor for FormatSlotDefinition(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8847C8);
    }
  }
}

uint64_t _s8NewsFeed25FormatMediaTimingFunctionO2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = *(a2 + 32);
  if ((v6 & 1) == 0)
  {
    if ((a2[4] & 1) == 0)
    {
      v18 = sub_1D6DD65C0(*a1, *a2);
      sub_1D618909C(v3, v2, v5, v4, 0);
      sub_1D618909C(v8, v7, v10, v9, 0);
      return v18 & 1;
    }

    goto LABEL_11;
  }

  if ((a2[4] & 1) == 0)
  {

LABEL_11:
    sub_1D618903C(v8, v7, v10, v9, v11);
    sub_1D618909C(v3, v2, v5, v4, v6);
    v19 = v8;
    v20 = v7;
    v21 = v10;
    v22 = v9;
    v23 = v11;
LABEL_13:
    sub_1D618909C(v19, v20, v21, v22, v23);
    return 0;
  }

  sub_1D618903C(*a2, a2[1], v10, v9, 1);
  sub_1D618903C(v3, v2, v5, v4, 1);
  sub_1D618903C(v8, v7, v10, v9, 1);
  sub_1D618903C(v3, v2, v5, v4, 1);
  sub_1D633A310(v3, v8);
  if ((v12 & 1) == 0 || (sub_1D633A310(v2, v7), (v13 & 1) == 0) || (sub_1D633A310(v5, v10), (v14 & 1) == 0))
  {
    sub_1D618909C(v3, v2, v5, v4, 1);
    sub_1D618909C(v8, v7, v10, v9, 1);
    sub_1D618909C(v8, v7, v10, v9, 1);
    v19 = v3;
    v20 = v2;
    v21 = v5;
    v22 = v4;
    v23 = 1;
    goto LABEL_13;
  }

  sub_1D633A310(v4, v9);
  v16 = v15;
  sub_1D618909C(v3, v2, v5, v4, 1);
  sub_1D618909C(v8, v7, v10, v9, 1);
  sub_1D618909C(v8, v7, v10, v9, 1);
  sub_1D618909C(v3, v2, v5, v4, 1);
  result = 1;
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D61887F0(uint64_t a1)
{
  result = sub_1D6188818();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6188818()
{
  result = qword_1EC8847D0;
  if (!qword_1EC8847D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8847D0);
  }

  return result;
}

unint64_t sub_1D618886C(void *a1)
{
  a1[1] = sub_1D61888A4();
  a1[2] = sub_1D61888F8();
  result = sub_1D618894C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61888A4()
{
  result = qword_1EDF0C0D0;
  if (!qword_1EDF0C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0C0D0);
  }

  return result;
}

unint64_t sub_1D61888F8()
{
  result = qword_1EDF0C0D8;
  if (!qword_1EDF0C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0C0D8);
  }

  return result;
}

unint64_t sub_1D618894C()
{
  result = qword_1EC8847D8;
  if (!qword_1EC8847D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8847D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatRadialGradientCircleRadius(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for FormatRadialGradientCircleRadius(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void *sub_1D6188A58(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 32);
  if (v4 == 255)
  {
    v20 = MEMORY[0x1E69E7CC0];

    return sub_1D7073500(v20);
  }

  else
  {
    v38 = v2;
    v39 = v3;
    v5 = *a2;
    if (v4)
    {
      v6 = a2[1];
      v34 = a2[2];
      v35 = a2[3];
      v7 = MEMORY[0x1E69E6F90];
      sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v7);
      sub_1D5EA74B8(0);
      v10 = *(*(v9 - 8) + 72);
      v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D7279960;
      v13 = v12 + v11;
      sub_1D711F844(1701869908, 0xE400000000000000, 0x206C6F72746E6F43, 0xEE0073746E696F50, (v12 + v11));
      v14 = type metadata accessor for FormatInspectionItem(0);
      v15 = *(*(v14 - 8) + 56);
      v15(v13, 0, 1, v14);

      v16 = sub_1D711B070(0x3120746E696F50, 0xE700000000000000, v5, (v13 + v10));
      (v15)(v13 + v10, 0, 1, v14, v16);

      v17 = sub_1D711B070(0x3220746E696F50, 0xE700000000000000, v6, (v13 + 2 * v10));
      (v15)(v13 + 2 * v10, 0, 1, v14, v17);

      v18 = sub_1D711B070(0x3320746E696F50, 0xE700000000000000, v34, (v13 + 3 * v10));
      (v15)(v13 + 3 * v10, 0, 1, v14, v18);

      v19 = sub_1D711B070(0x3420746E696F50, 0xE700000000000000, v35, (v13 + 4 * v10));
      (v15)(v13 + 4 * v10, 0, 1, v14, v19);
      sub_1D6795150(0x4620676E696D6954, 0xEF6E6F6974636E75, 0, 0, v12, v36);
    }

    else
    {
      v22 = MEMORY[0x1E69E6F90];
      sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v22);
      sub_1D5EA74B8(0);
      v24 = *(*(v23 - 8) + 72);
      v25 = (*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1D7270C10;
      v27 = (v26 + v25);
      sub_1D711F844(1701869908, 0xE400000000000000, 1701667150, 0xE400000000000000, v27);
      v28 = type metadata accessor for FormatInspectionItem(0);
      v29 = *(*(v28 - 8) + 56);
      v29(v27, 0, 1, v28);
      v30 = sub_1D711F844(1701667150, 0xE400000000000000, *&aLinear_3[8 * v5], qword_1D72A7D30[v5], &v27[v24]);
      (v29)(&v27[v24], 0, 1, v28, v30);
      sub_1D6795150(0x4620676E696D6954, 0xEF6E6F6974636E75, 0, 0, v26, v36);
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(inited + 56) = &type metadata for FormatInspectionGroup;
    *(inited + 64) = &off_1F518B2C0;
    v31 = swift_allocObject();
    *(inited + 32) = v31;
    *(v31 + 48) = v37;
    v32 = v36[1];
    *(v31 + 16) = v36[0];
    *(v31 + 32) = v32;
    v33 = sub_1D7073500(inited);
    swift_setDeallocating();
    sub_1D5F10AA0(inited + 32);
    return v33;
  }
}

uint64_t sub_1D618903C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

double sub_1D618909C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

NewsFeed::NotificationsCommandState_optional __swiftcall NotificationsCommandState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NotificationsCommandState.rawValue.getter()
{
  v1 = 0x6465696E6564;
  if (*v0 != 1)
  {
    v1 = 0x7A69726F68747561;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265746544746F6ELL;
  }
}

uint64_t sub_1D61891C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6465696E6564;
  if (v2 != 1)
  {
    v4 = 0x7A69726F68747561;
    v3 = 0xEA00000000006465;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7265746544746F6ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED000064656E696DLL;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6465696E6564;
  if (*a2 != 1)
  {
    v8 = 0x7A69726F68747561;
    v7 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7265746544746F6ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED000064656E696DLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

unint64_t sub_1D61892D0()
{
  result = qword_1EC8847E0;
  if (!qword_1EC8847E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8847E0);
  }

  return result;
}

uint64_t sub_1D6189324()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D61893D4(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6189470(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6189528(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000064656E696DLL;
  v4 = 0xE600000000000000;
  v5 = 0x6465696E6564;
  if (v2 != 1)
  {
    v5 = 0x7A69726F68747561;
    v4 = 0xEA00000000006465;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7265746544746F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D6189598(uint64_t a1)
{
  v2 = sub_1D61895F4();

  return MEMORY[0x1EEE48380](a1, v2);
}

unint64_t sub_1D61895F4()
{
  result = qword_1EC8847E8;
  if (!qword_1EC8847E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8847E8);
  }

  return result;
}

uint64_t FormatVideoProperties.looping.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 24);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

uint64_t sub_1D6189668(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D5E04CC4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t FormatVideoProperties.preventDisplaySleep.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

uint64_t FormatVideoProperties.muted.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 72);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

uint64_t FormatVideoProperties.shouldPlayInBackground.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 96);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

void sub_1D61896E0(uint64_t a1@<X8>)
{
  v4 = *(v1 + 1);
  v3 = *(v1 + 2);
  v5 = v1[24];
  v17 = v1[25];
  v7 = *(v1 + 4);
  v6 = *(v1 + 5);
  v8 = v1[48];
  v20 = *(v1 + 8);
  v21 = *(v1 + 7);
  v22 = v1[72];
  v16 = v1[73];
  v18 = v1[74];
  v23 = **(&unk_1E84CE0B8 + *v1);
  if (v5 == 255)
  {
    v9 = 1;
    if (v8 == 255)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v24 = v4;
    v25 = v3;
    v26 = v5 & 1;
    sub_1D5E04CC4(v4, v3, v5 & 1);
    sub_1D725A7EC();
    v9 = FormatBoolean.value(contextLayoutOptions:)(v27);
    sub_1D5D2F2C4(v24, v3, v5 & 1);
    if (v2)
    {
LABEL_10:

      return;
    }

    if (v8 == 255)
    {
LABEL_4:
      v10 = 1;
      goto LABEL_8;
    }
  }

  v24 = v7;
  v25 = v6;
  v26 = v8 & 1;
  sub_1D5E04CC4(v7, v6, v8 & 1);
  sub_1D725A7EC();
  v10 = FormatBoolean.value(contextLayoutOptions:)(v27);
  sub_1D5D2F2C4(v24, v6, v8 & 1);
  if (v2)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (v22 == 255)
  {
    v11 = 1;
  }

  else
  {
    v24 = v21;
    v25 = v20;
    v26 = v22 & 1;
    sub_1D5E04CC4(v21, v20, v22 & 1);
    sub_1D725A7EC();
    v11 = FormatBoolean.value(contextLayoutOptions:)(v27);
    sub_1D5D2F2C4(v21, v20, v22 & 1);
    if (v2)
    {
      goto LABEL_10;
    }
  }

  if (v16 == 12)
  {
    v12 = 11;
  }

  else
  {
    v12 = v16;
  }

  LOBYTE(v24) = v12;
  v13 = sub_1D6B58370(&v24);
  v14 = qword_1D72A8158[v18];
  *a1 = v23;
  *(a1 + 8) = v9 & 1;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v10 & 1;
  *(a1 + 25) = v11 & 1;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  v15 = v13;
}

BOOL _s8NewsFeed21FormatVideoPropertiesV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = a1[24];
  v6 = a1[25];
  v7 = *(a1 + 4);
  v8 = *(a1 + 5);
  v9 = a1[48];
  v11 = *(a1 + 7);
  v10 = *(a1 + 8);
  v12 = a1[72];
  v13 = a1[73];
  v14 = a1[74];
  v15 = *(a1 + 10);
  v16 = *(a1 + 11);
  v17 = a1[96];
  v18 = *a2;
  v20 = *(a2 + 1);
  v19 = *(a2 + 2);
  v21 = a2[24];
  v124 = a2[25];
  v122 = *(a2 + 4);
  v123 = *(a2 + 5);
  v22 = a2[48];
  v24 = *(a2 + 7);
  v23 = *(a2 + 8);
  v25 = a2[72];
  v26 = a2[73];
  v27 = a2[74];
  v29 = *(a2 + 10);
  v28 = *(a2 + 11);
  v30 = a2[96];
  if (v2 == 3)
  {
    v102 = v13;
    v103 = v12;
    v104 = v11;
    v105 = v10;
    v100 = v14;
    v101 = v27;
    v98 = v30;
    v99 = v29;
    v106 = v28;
    if (v18 != 3)
    {
      return 0;
    }

LABEL_3:
    if (v5 != 255)
    {
      goto LABEL_4;
    }

LABEL_29:
    v119 = v22;
    v121 = v6;
    v107 = v17;
    v109 = v16;
    v96 = v15;
    v117 = v25;
    v113 = v24;
    v115 = v23;
    v111 = v26;
    sub_1D6189668(v4, v3, 255);
    if (v21 == 255)
    {
      sub_1D6189668(v20, v19, 255);
      sub_1D60107F0(v4, v3, 255);
      goto LABEL_36;
    }

    sub_1D6189668(v20, v19, v21);
LABEL_31:
    sub_1D60107F0(v4, v3, v5);
    v39 = v20;
    v40 = v19;
    v41 = v21;
LABEL_32:
    sub_1D60107F0(v39, v40, v41);
    return 0;
  }

  if (v18 == 3)
  {
    return 0;
  }

  v95 = v7;
  v97 = v8;
  v114 = v24;
  v116 = v23;
  v112 = v26;
  v108 = v17;
  v110 = v16;
  v118 = v25;
  v120 = v22;
  v94 = v9;
  v32 = v15;
  if (v2)
  {
    if (v2 == 1)
    {
      v33 = 0x7341657A69736572;
    }

    else
    {
      v33 = 0xD000000000000010;
    }

    if (v2 == 1)
    {
      v34 = 0xEC00000074636570;
    }

    else
    {
      v34 = 0x80000001D73BA2F0;
    }
  }

  else
  {
    v34 = 0xE600000000000000;
    v33 = 0x657A69736572;
  }

  v35 = 0x7341657A69736572;
  v36 = 0x80000001D73BA2F0;
  if (v18 == 1)
  {
    v36 = 0xEC00000074636570;
  }

  else
  {
    v35 = 0xD000000000000010;
  }

  if (v18)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0x657A69736572;
  }

  if (v18)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0xE600000000000000;
  }

  v102 = v13;
  v103 = v12;
  v104 = v11;
  v105 = v10;
  v100 = v14;
  v101 = v27;
  v98 = v30;
  v99 = v29;
  v106 = v28;
  if (v33 != v37 || v34 != v38)
  {
    v42 = sub_1D72646CC();

    v16 = v110;
    v15 = v32;
    v17 = v108;
    v26 = v112;
    v24 = v114;
    v23 = v116;
    v25 = v118;
    v22 = v120;
    v7 = v95;
    v8 = v97;
    v9 = v94;
    if ((v42 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_3;
  }

  v16 = v110;
  v15 = v32;
  v17 = v108;
  v26 = v112;
  v24 = v114;
  v23 = v116;
  v25 = v118;
  v22 = v120;
  v7 = v95;
  v8 = v97;
  v9 = v94;
  if (v5 == 255)
  {
    goto LABEL_29;
  }

LABEL_4:
  v128 = v4;
  v129 = v3;
  v130 = v5;
  if (v21 == 255)
  {
    sub_1D6189668(v4, v3, v5);
    sub_1D6189668(v20, v19, 255);
    sub_1D6189668(v4, v3, v5);
    sub_1D5D2F2C4(v4, v3, v5 & 1);
    goto LABEL_31;
  }

  v119 = v22;
  v121 = v6;
  v107 = v17;
  v109 = v16;
  v96 = v15;
  v117 = v25;
  v113 = v24;
  v115 = v23;
  v111 = v26;
  v125 = v20;
  v126 = v19;
  v127 = v21 & 1;
  sub_1D6189668(v4, v3, v5);
  sub_1D6189668(v20, v19, v21);
  sub_1D6189668(v4, v3, v5);
  v31 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v128, &v125);
  sub_1D5D2F2C4(v125, v126, v127);
  sub_1D5D2F2C4(v128, v129, v130);
  sub_1D60107F0(v4, v3, v5);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  if (v121 == 2)
  {
    v43 = v8;
    v44 = v7;
    v45 = v119;
    if (v124 != 2)
    {
      return 0;
    }

LABEL_38:
    if (v9 != 255)
    {
      goto LABEL_39;
    }

LABEL_59:
    v58 = v43;
    v59 = v44;
    sub_1D6189668(v44, v43, 255);
    v46 = v106;
    v48 = v122;
    v47 = v123;
    if (v45 == 255)
    {
      sub_1D6189668(v122, v123, 255);
      sub_1D60107F0(v59, v58, 255);
      goto LABEL_66;
    }

    sub_1D6189668(v122, v123, v45);
    goto LABEL_64;
  }

  if (v124 == 2)
  {
    return 0;
  }

  if (v121)
  {
    v54 = 0x74696E4972657375;
  }

  else
  {
    v54 = 1869903201;
  }

  if (v121)
  {
    v55 = 0xED00006465746169;
  }

  else
  {
    v55 = 0xE400000000000000;
  }

  if (v124)
  {
    v56 = 0x74696E4972657375;
  }

  else
  {
    v56 = 1869903201;
  }

  if (v124)
  {
    v57 = 0xED00006465746169;
  }

  else
  {
    v57 = 0xE400000000000000;
  }

  if (v54 != v56 || v55 != v57)
  {
    v60 = sub_1D72646CC();

    v43 = v8;
    v44 = v7;
    v45 = v119;
    if ((v60 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_38;
  }

  v43 = v8;
  v44 = v7;
  v45 = v119;
  if (v9 == 255)
  {
    goto LABEL_59;
  }

LABEL_39:
  v128 = v44;
  v129 = v43;
  v130 = v9;
  v46 = v106;
  v48 = v122;
  v47 = v123;
  if (v45 == 255)
  {
    v58 = v43;
    v59 = v44;
    sub_1D6189668(v44, v43, v9);
    sub_1D6189668(v122, v123, 255);
    sub_1D6189668(v59, v58, v9);
    sub_1D5D2F2C4(v59, v58, v9 & 1);
LABEL_64:
    sub_1D60107F0(v59, v58, v9);
    v39 = v48;
    v40 = v47;
    v41 = v45;
    goto LABEL_32;
  }

  v125 = v122;
  v126 = v123;
  v127 = v45 & 1;
  v49 = v45;
  v50 = v43;
  v51 = v44;
  sub_1D6189668(v44, v43, v9);
  sub_1D6189668(v122, v123, v49);
  sub_1D6189668(v51, v50, v9);
  v52 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v128, &v125);
  sub_1D5D2F2C4(v125, v126, v127);
  sub_1D5D2F2C4(v128, v129, v130);
  sub_1D60107F0(v51, v50, v9);
  if ((v52 & 1) == 0)
  {
    return 0;
  }

LABEL_66:
  if (v103 == 255)
  {
    sub_1D6189668(v104, v105, 255);
    v61 = v117;
    if (v117 == 255)
    {
      sub_1D6189668(v113, v115, 255);
      v63 = sub_1D60107F0(v104, v105, 255);
      goto LABEL_75;
    }

    v65 = v113;
    v64 = v115;
    sub_1D6189668(v113, v115, v117);
    v66 = v105;
    v67 = v104;
    goto LABEL_73;
  }

  v128 = v104;
  v129 = v105;
  v130 = v103;
  v61 = v117;
  if (v117 == 255)
  {
    sub_1D6189668(v104, v105, v103);
    v65 = v113;
    v64 = v115;
    sub_1D6189668(v113, v115, 255);
    sub_1D6189668(v104, v105, v103);
    sub_1D5D2F2C4(v104, v105, v103 & 1);
    v66 = v105;
    v67 = v104;
LABEL_73:
    sub_1D60107F0(v67, v66, v103);
    v39 = v65;
    v40 = v64;
    v41 = v61;
    goto LABEL_32;
  }

  v125 = v113;
  v126 = v115;
  v127 = v117 & 1;
  sub_1D6189668(v104, v105, v103);
  sub_1D6189668(v113, v115, v117);
  sub_1D6189668(v104, v105, v103);
  v62 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v128, &v125);
  sub_1D5D2F2C4(v125, v126, v127);
  sub_1D5D2F2C4(v128, v129, v130);
  v63 = sub_1D60107F0(v104, v105, v103);
  if ((v62 & 1) == 0)
  {
    return 0;
  }

LABEL_75:
  if (v102 == 12)
  {
    v68 = v96;
    v69 = v109;
    v70 = v107;
    if (v111 != 12)
    {
      return 0;
    }
  }

  else
  {
    if (v111 == 12)
    {
      return 0;
    }

    LOBYTE(v128) = v102;
    LOBYTE(v125) = v111;
    v71 = FormatImageGravity.rawValue.getter(v63);
    v73 = v72;
    if (v71 == FormatImageGravity.rawValue.getter(v71) && v73 == v74)
    {

      v68 = v96;
      v69 = v109;
      v70 = v107;
    }

    else
    {
      v75 = sub_1D72646CC();

      v68 = v96;
      v69 = v109;
      v70 = v107;
      if ((v75 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v100 == 3)
  {
    if (v101 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v101 == 3)
    {
      return 0;
    }

    v76 = 0x65636E61766461;
    if (v100)
    {
      if (v100 == 1)
      {
        v77 = 0xE500000000000000;
        v78 = 0x6573756170;
      }

      else
      {
        v77 = 0xE400000000000000;
        v78 = 1701736302;
      }
    }

    else
    {
      v77 = 0xE700000000000000;
      v78 = 0x65636E61766461;
    }

    if (v101)
    {
      v79 = v46;
      if (v101 == 1)
      {
        v80 = 0xE500000000000000;
        v76 = 0x6573756170;
      }

      else
      {
        v80 = 0xE400000000000000;
        v76 = 1701736302;
      }
    }

    else
    {
      v79 = v46;
      v80 = 0xE700000000000000;
    }

    v81 = v69;
    v82 = v68;
    if (v78 == v76 && v77 == v80)
    {

      v46 = v79;
      v68 = v82;
      v69 = v81;
    }

    else
    {
      v83 = sub_1D72646CC();

      v46 = v79;
      v68 = v82;
      v69 = v81;
      if ((v83 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v70 != 255)
  {
    v128 = v68;
    v129 = v69;
    v130 = v70;
    v84 = v98;
    if (v98 != 255)
    {
      v125 = v99;
      v126 = v46;
      v127 = v98 & 1;
      v85 = v68;
      v86 = v69;
      sub_1D6189668(v68, v69, v70);
      sub_1D6189668(v99, v46, v98);
      sub_1D6189668(v85, v86, v70);
      v87 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v128, &v125);
      sub_1D5D2F2C4(v125, v126, v127);
      sub_1D5D2F2C4(v128, v129, v130);
      sub_1D60107F0(v85, v86, v70);
      return (v87 & 1) != 0;
    }

    v92 = v70;
    v88 = v68;
    v93 = v69;
    sub_1D6189668(v68, v69, v70);
    v90 = v99;
    sub_1D6189668(v99, v46, 255);
    sub_1D6189668(v88, v93, v70);
    sub_1D5D2F2C4(v88, v93, v70 & 1);
    v91 = v93;
    goto LABEL_108;
  }

  v88 = v68;
  v89 = v69;
  sub_1D6189668(v68, v69, 255);
  v84 = v98;
  if (v98 != 255)
  {
    v90 = v99;
    sub_1D6189668(v99, v46, v98);
    v91 = v89;
    v92 = -1;
LABEL_108:
    sub_1D60107F0(v88, v91, v92);
    v39 = v90;
    v40 = v46;
    v41 = v84;
    goto LABEL_32;
  }

  sub_1D6189668(v99, v46, 255);
  sub_1D60107F0(v88, v89, 255);
  return 1;
}

unint64_t sub_1D618A46C(uint64_t a1)
{
  result = sub_1D618A494();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D618A494()
{
  result = qword_1EC8847F0;
  if (!qword_1EC8847F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8847F0);
  }

  return result;
}

unint64_t sub_1D618A4E8(void *a1)
{
  a1[1] = sub_1D618A520();
  a1[2] = sub_1D618A574();
  result = sub_1D618A5C8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D618A520()
{
  result = qword_1EDF0DE88;
  if (!qword_1EDF0DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DE88);
  }

  return result;
}

unint64_t sub_1D618A574()
{
  result = qword_1EC8847F8;
  if (!qword_1EC8847F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8847F8);
  }

  return result;
}

unint64_t sub_1D618A5C8()
{
  result = qword_1EC884800;
  if (!qword_1EC884800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884800);
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D618A648(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 97))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1D618A694(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 24) = ~a2;
    }
  }

  return result;
}

uint64_t FeedRefreshTrigger.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D618A794()
{
  result = qword_1EC884808;
  if (!qword_1EC884808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884808);
  }

  return result;
}

uint64_t sub_1D618A8C4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *a3 = result | 0x1000000000000000;
  return result;
}

uint64_t sub_1D618A94C@<X0>(char a1@<W2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *a3 = result | 0x1000000000000000;
  return result;
}

BOOL sub_1D618A9C8(unint64_t *a1, char a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = 0;
  v8 = v5;
  v9 = v6 | 0x1000000000000000;
  LOBYTE(a3) = static FormatColor.== infix(_:_:)(&v9, &v8);

  return (a3 & 1) == 0;
}

unint64_t sub_1D618AA4C(uint64_t a1)
{
  result = sub_1D618AA74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D618AA74()
{
  result = qword_1EC884810;
  if (!qword_1EC884810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884810);
  }

  return result;
}

unint64_t sub_1D618AAC8(uint64_t a1)
{
  result = sub_1D618AAF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D618AAF0()
{
  result = qword_1EC884818;
  if (!qword_1EC884818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884818);
  }

  return result;
}

unint64_t sub_1D618AB44(uint64_t a1)
{
  result = sub_1D618AB6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D618AB6C()
{
  result = qword_1EDF208C8;
  if (!qword_1EDF208C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF208C8);
  }

  return result;
}

uint64_t static FeedLocation.topOfFeed(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8, v9);
  v11 = &v19 - v10;
  type metadata accessor for FeedCursorTracker(255, a2, a3, v12);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = swift_allocBox();
  v16 = v15;
  v17 = *(TupleTypeMetadata2 + 48);
  (*(*(a2 - 8) + 16))(v15, a1, a2);
  (*(a3 + 48))(a2, a3);
  result = FeedCursorTracker.__allocating_init(context:)(v11);
  *(v16 + v17) = result;
  *a4 = v14;
  return result;
}

uint64_t FeedLocation.serviceConfig.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = v6 >> 60;
  if ((v6 >> 60) <= 4)
  {
    if (v7 <= 1)
    {
      v18 = *(a1 + 16);
      if (!v7)
      {
        type metadata accessor for FeedCursorTracker(255, v18, *(a1 + 24), a3);
      }

      v19 = swift_projectBox();
      v21 = *(v18 - 8);
      (*(v21 + 16))(a4, v19, v18);
      v15 = *(v21 + 56);
      v16 = a4;
      v17 = 0;
      goto LABEL_14;
    }

    if (v7 != 2)
    {
      if (v7 != 3)
      {
        MEMORY[0x1EEE9AC00](a1, a2);
        v9 = *(v8 + 16);
        type metadata accessor for FeedCursor(255, v9, *(v8 + 24), v10);
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v12 = swift_projectBox();
        v13 = *(v9 - 8);
        (*(v13 + 16))(a4, v12 + *(TupleTypeMetadata + 48), v9);
        return (*(v13 + 56))(a4, 0, 1, v9);
      }

      goto LABEL_7;
    }

LABEL_9:
    v20 = *(*(a1 + 16) - 8);
    (*(v20 + 16))(a4, *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + *(**((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 256), *(a1 + 16), a3);
    v15 = *(v20 + 56);
    v16 = a4;
    v17 = 0;
    goto LABEL_14;
  }

  if ((v7 - 6) >= 2)
  {
    if (v7 != 5)
    {
      return FeedLocation.serviceConfig.getter(a1, a2, a3, a4);
    }

    goto LABEL_9;
  }

LABEL_7:
  v15 = *(*(*(a1 + 16) - 8) + 56);
  v16 = a4;
  v17 = 1;
LABEL_14:

  return v15(v16, v17, 1);
}

double static FeedLocation.container(_:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1 & 0x7FFFFFFFFFFFFFFFLL;
  if (a1 < 0)
  {
    v4 = 0x7000000000000000;
  }

  else
  {
    v4 = 0x2000000000000000;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *a2 = v4 | v5;

  return result;
}

BOOL static FeedLocation.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v5 = &v68[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v13 = &v68[-1] - v12;
  v14 = *v8;
  v15 = *v9;
  v16 = *v8 >> 60;
  if (v16 > 3)
  {
    if (v16 <= 5)
    {
      if (v16 == 4)
      {
        MEMORY[0x1EEE9AC00](v8, v9);
        strcpy(&v67 - 48, "cursor serviceConfig strategy trigger ");
        v25 = v24;
        v27 = v26;
        v68[0] = type metadata accessor for FeedCursor(255, v24, v26, v26);
        v68[1] = v25;
        v68[2] = &type metadata for FeedRefreshStrategy;
        v68[3] = &type metadata for FeedRefreshTrigger;
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v29 = swift_projectBox();
        if (v15 >> 60 == 4)
        {
          v30 = v27;
          v31 = *(TupleTypeMetadata + 64);
          v32 = *(v29 + v31);
          v33 = *(TupleTypeMetadata + 80);
          v34 = *(v29 + v33);
          v35 = *v29;
          v36 = v25;
          v37 = v30;
          v38 = swift_projectBox();
          v39 = *v38;
          v40 = *(v38 + v31);
          v41 = *(v38 + v33);
          type metadata accessor for FeedCursor(0, v36, v37, v42);

          if (static FeedCursor.== infix(_:_:)(v35, v39))
          {
            v43 = sub_1D6DE4138(v32, v40);

            if (v43)
            {
              return (v34 ^ v41 ^ 1) & 1;
            }
          }

          else
          {
          }
        }
      }

      else if (v15 >> 60 == 5)
      {
        v62 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v63 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        type metadata accessor for FeedCursor(0, v10, v11, v11);
        v19 = static FeedCursor.== infix(_:_:)(v62, v63);
        return v19 & 1;
      }
    }

    else if (v16 == 6)
    {
      if (v15 >> 60 == 6)
      {
        v44 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v45 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        type metadata accessor for FeedCursorReference(0, v10, v11, v11);
        v19 = static FeedCursorReference.== infix(_:_:)(v44, v45);
        return v19 & 1;
      }
    }

    else if (v16 == 7)
    {
      if (v15 >> 60 == 7)
      {
        v17 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v18 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        type metadata accessor for FeedDeferredCursor(0, v10, v11, v11);
        v19 = static FeedDeferredCursor.== infix(_:_:)(v17, v18);
        return v19 & 1;
      }
    }

    else if (v15 >> 60 == 8)
    {
      v61 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v68[0] = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v69 = v61;
      return static FeedLocation.== infix(_:_:)(v68, &v69, v10);
    }

    return 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      if (v15 >> 60 != 2)
      {
        return 0;
      }

      v21 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v22 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      type metadata accessor for FeedCursor(0, v10, v11, v11);

      v23 = static FeedCursor.== infix(_:_:)(v21, v22);
    }

    else
    {
      if (v15 >> 60 != 3)
      {
        return 0;
      }

      v58 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v59 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      type metadata accessor for FeedCursorReference(0, v10, v11, v11);

      v23 = static FeedCursorReference.== infix(_:_:)(v58, v59);
    }

    v60 = v23;

    return v60 & 1;
  }

  if (!v16)
  {
    return !(v15 >> 60);
  }

  if (v15 >> 60 != 1)
  {
    return 0;
  }

  v46 = v10;
  v47 = v11;
  v48 = swift_projectBox();
  v49 = swift_projectBox();
  v50 = *(v3 + 16);
  v50(v13, v48, v46);
  v50(v5, v49, v46);
  v51 = *(v47 + 80);
  v52 = v51(v46, v47);
  v54 = v53;
  v67 = v46;
  if (v52 == v51(v46, v47) && v54 == v55)
  {
    v57 = 1;
  }

  else
  {
    v57 = sub_1D72646CC();
  }

  v64 = *(v3 + 8);
  v65 = v5;
  v66 = v67;
  v64(v65, v67);
  v64(v13, v66);
  return v57 & 1;
}

uint64_t FeedLocation.feedMode.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D618B838(*v2, *(a1 + 16), *(a1 + 24), v11);
  sub_1D618C048(v11, v8);
  v4 = v9;
  if (v9)
  {
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    FeedServiceContextType.feedMode.getter(v4, v5, &v7);
    sub_1D618C168(v11);
    LOBYTE(v4) = v7;
    result = __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_1D618C168(v11);
    result = sub_1D618C168(v8);
  }

  *a2 = v4;
  return result;
}

void sub_1D618B838(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D726393C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v30 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1 >> 60;
  if ((a1 >> 60) > 4)
  {
    if ((v21 - 6) >= 2)
    {
      if (v21 == 5)
      {
        v31 = *(a3 + 48);
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        *(a4 + 24) = swift_getAssociatedTypeWitness();
        *(a4 + 32) = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_1(a4);
        v31(a2, a3);
        return;
      }

      v22 = v16;
      v32 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v23 = type metadata accessor for FeedLocation(0, a2, a3, v18);
      FeedLocation.serviceConfig.getter(v23, v24, v25, v12);
      if ((*(v13 + 48))(v12, 1, a2) != 1)
      {
        v31 = *(a3 + 48);
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        *(a4 + 24) = swift_getAssociatedTypeWitness();
        *(a4 + 32) = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_1(a4);
        v31(a2, a3);
        (*(v13 + 8))(v12, a2);
        return;
      }

      (*(v9 + 8))(v12, v22);
    }

    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  if (v21 <= 1)
  {
    if (!v21)
    {
      type metadata accessor for FeedCursorTracker(255, a2, a3, v18);
    }

    v29 = swift_projectBox();
    (*(v13 + 16))(v20, v29, a2);
    goto LABEL_20;
  }

  if (v21 == 2)
  {
    v31 = *(a3 + 48);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    *(a4 + 24) = swift_getAssociatedTypeWitness();
    *(a4 + 32) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(a4);

    v31(a2, a3);
    goto LABEL_13;
  }

  if (v21 != 3)
  {
    MEMORY[0x1EEE9AC00](v16, v17);
    strcpy(&v30 - 48, "cursor serviceConfig strategy trigger ");
    v32 = type metadata accessor for FeedCursor(255, a2, a3, v26);
    v33 = a2;
    v34 = &type metadata for FeedRefreshStrategy;
    v35 = &type metadata for FeedRefreshTrigger;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v28 = swift_projectBox();
    (*(v13 + 16))(v20, v28 + *(TupleTypeMetadata + 48), a2);
LABEL_20:
    v31 = *(a3 + 48);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    *(a4 + 24) = swift_getAssociatedTypeWitness();
    *(a4 + 32) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(a4);
    v31(a2, a3);
    (*(v13 + 8))(v20, a2);
    return;
  }

  FeedCursorReference.serviceContext.getter(a4);
LABEL_13:
}

uint64_t sub_1D618C048(uint64_t a1, uint64_t a2)
{
  sub_1D618C0AC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D618C0AC(uint64_t a1)
{
  if (!qword_1EDF14028)
  {
    sub_1D618C104();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF14028);
    }
  }
}

unint64_t sub_1D618C104()
{
  result = qword_1EDF14030;
  if (!qword_1EDF14030)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF14030);
  }

  return result;
}

uint64_t sub_1D618C168(uint64_t a1)
{
  sub_1D618C0AC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FeedLocation.name.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2 >> 60;
  if (v4 > 3)
  {
    if (v4 <= 5)
    {
      if (v4 != 4)
      {
        v22 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v23 = 0x28646E61707865;
        v6 = *(v22 + 16);
        v7 = *(v22 + 24);
        goto LABEL_20;
      }

      MEMORY[0x1EEE9AC00](a1, a2);
      type metadata accessor for FeedCursor(255, *(v12 + 16), *(v12 + 24), v13);
      swift_getTupleTypeMetadata();
      v14 = *swift_projectBox();
      v23 = 0;

      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x2868736572666572, 0xE800000000000000);
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);

      MEMORY[0x1DA6F9910](v15, v16);

      MEMORY[0x1DA6F9910](0x657461727473202CLL, 0xEB000000003D7967);
      sub_1D7263F9C();
      MEMORY[0x1DA6F9910](10537, 0xE200000000000000);
    }

    else
    {
      if (v4 == 6)
      {
        sub_1D7263D4C();

        v23 = 0xD000000000000010;
        v17 = sub_1D6C08E2C();
        v19 = v18;

        MEMORY[0x1DA6F9910](v17, v19);

LABEL_21:
        MEMORY[0x1DA6F9910](41, 0xE100000000000000);
        return v23;
      }

      if (v4 == 7)
      {
        v5 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v23 = 0x6465727265666564;
        v6 = *(v5 + 16);
        v7 = *(v5 + 24);
LABEL_20:
        MEMORY[0x1DA6F9910](v6, v7);
        goto LABEL_21;
      }

      v23 = 0x28796669646F6DLL;
      v21 = FeedLocation.name.getter(a1, a2);
      MEMORY[0x1DA6F9910](v21);
    }

    return v23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v9 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v23 = 0x28726F73727563;
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
    }

    else
    {
      v23 = 0x636E657265666572;
      v10 = sub_1D6C08E2C();
      v11 = v20;
    }

    MEMORY[0x1DA6F9910](v10, v11);

    MEMORY[0x1DA6F9910](41, 0xE100000000000000);

    return v23;
  }

  if (v4)
  {
    return 0x646568636163;
  }

  else
  {
    return 0x656546664F706F74;
  }
}

void sub_1D618C5E0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D618C668(uint64_t a1)
{
  v2 = sub_1D618C8B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D618C6A4(uint64_t a1)
{
  v2 = sub_1D618C8B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D618C6E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D618C854(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D618C8B0();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_1D72642BC();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

void sub_1D618C854(uint64_t a1)
{
  if (!qword_1EC884820)
  {
    sub_1D618C8B0();
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC884820);
    }
  }
}

unint64_t sub_1D618C8B0()
{
  result = qword_1EC884828;
  if (!qword_1EC884828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884828);
  }

  return result;
}

unint64_t sub_1D618C918()
{
  result = qword_1EC884830;
  if (!qword_1EC884830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884830);
  }

  return result;
}

unint64_t sub_1D618C970()
{
  result = qword_1EC884838;
  if (!qword_1EC884838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884838);
  }

  return result;
}

unint64_t sub_1D618C9C8()
{
  result = qword_1EC884840;
  if (!qword_1EC884840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884840);
  }

  return result;
}

void sub_1D618CA38(void *a1, unint64_t a2)
{
  sub_1D618D7E0(0, &qword_1EC884848, sub_1D618D0FC, &type metadata for SportsTaxonomyGraphResourceRootNode.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v20 - v8;
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v12 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v24 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v25[0] = v12;
      *(v25 + 10) = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x2A);
      sub_1D618D150(&v24, v20);
      sub_1D6FA088C(a1);
      sub_1D618D1AC(&v24);
      return;
    }

    v14 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
    v15 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = v14[24];
    v17 = v14[25];
    v18 = v14[26];

    if (v17)
    {
      v19 = 256;
    }

    else
    {
      v19 = 0;
    }

    sub_1D6DB2B74(a1, v15, v19 | (v18 << 16) | v16);
  }

  else
  {
    if (v10)
    {
      v13 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v21 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v22 = v13;
      v23 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v26 = v21;
      v27[0] = v13;
      sub_1D5E422A8(&v26, v20);
      sub_1D618D200(v27, v20);
      sub_1D67EDA78(a1);
      sub_1D5BFB68C(&v26);
      sub_1D618D288(v27);
      return;
    }

    v11 = *(a2 + 16);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D618D0FC();

    sub_1D7264B5C();
    v20[0] = v11;
    sub_1D5B49DA8(0, &qword_1EDF04B08, &type metadata for SportsTaxonomyGraphResourceNode, MEMORY[0x1E69E62F8]);
    sub_1D618D308();
    sub_1D726443C();
    (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1D618CCF8(uint64_t a1)
{
  v2 = sub_1D618D848();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D618CD34(uint64_t a1)
{
  v2 = sub_1D618D848();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D618CD70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1953460082;
  }

  else
  {
    v3 = 0x6E6F6974636573;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1953460082;
  }

  else
  {
    v5 = 0x6E6F6974636573;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D618CE10()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D618CE8C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D618CEF4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D618CF6C(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D618CFCC(uint64_t *a1@<X8>)
{
  v2 = 1953460082;
  if (!*v1)
  {
    v2 = 0x6E6F6974636573;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D618D0B4@<X0>(unint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D618D3F8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1D618D0FC()
{
  result = qword_1EDF06F80;
  if (!qword_1EDF06F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06F80);
  }

  return result;
}

uint64_t sub_1D618D200(uint64_t a1, uint64_t a2)
{
  sub_1D5B49DA8(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D618D288(uint64_t a1)
{
  sub_1D5B49DA8(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D618D308()
{
  result = qword_1EC884850;
  if (!qword_1EC884850)
  {
    sub_1D5B49DA8(255, &qword_1EDF04B08, &type metadata for SportsTaxonomyGraphResourceNode, MEMORY[0x1E69E62F8]);
    sub_1D618D3A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884850);
  }

  return result;
}

unint64_t sub_1D618D3A4()
{
  result = qword_1EC884858;
  if (!qword_1EC884858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884858);
  }

  return result;
}

unint64_t sub_1D618D3F8(void *a1)
{
  sub_1D618D7E0(0, &qword_1EDF038F8, sub_1D618D848, &type metadata for SportsTaxonomyGraphResourceNode.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v19 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D618D848();
  v10 = v9;
  sub_1D7264B0C();
  if (!v1)
  {
    sub_1D618D89C();
    sub_1D726427C();
    if (LOBYTE(v19[0]) == 2)
    {
      sub_1D5B68374(a1, v19);
      sub_1D6FA0CA0(v19, &v20);
      (*(v5 + 8))(v8, v4);
      v13 = swift_allocObject();
      v14 = v21[0];
      *(v13 + 16) = v20;
      *(v13 + 32) = v14;
      *(v13 + 42) = *(v21 + 10);
      v10 = v13 | 0x8000000000000000;
    }

    else if (v19[0])
    {
      v10 = swift_allocObject();
      sub_1D5B68374(a1, v19);
      v15 = sub_1D6B49254(v19);
      (*(v5 + 8))(v8, v4);
      *(v10 + 16) = v15;
    }

    else
    {
      v11 = swift_allocObject();
      sub_1D5B68374(a1, v19);
      v16 = sub_1D6DB2FE8(v19);
      v18 = v17;
      (*(v5 + 8))(v8, v4);
      *(v11 + 16) = v16;
      *(v11 + 24) = v18 & 1;
      *(v11 + 25) = BYTE1(v18) & 1;
      *(v11 + 26) = BYTE2(v18) & 1;
      v10 = v11 | 0xC000000000000000;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

void sub_1D618D7E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D618D848()
{
  result = qword_1EDF09068[0];
  if (!qword_1EDF09068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF09068);
  }

  return result;
}

unint64_t sub_1D618D89C()
{
  result = qword_1EDF09048;
  if (!qword_1EDF09048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09048);
  }

  return result;
}

unint64_t sub_1D618D914()
{
  result = qword_1EC884860;
  if (!qword_1EC884860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884860);
  }

  return result;
}

unint64_t sub_1D618D96C()
{
  result = qword_1EC884868;
  if (!qword_1EC884868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884868);
  }

  return result;
}

unint64_t sub_1D618D9C4()
{
  result = qword_1EDF09058;
  if (!qword_1EDF09058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09058);
  }

  return result;
}

unint64_t sub_1D618DA1C()
{
  result = qword_1EDF09060;
  if (!qword_1EDF09060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09060);
  }

  return result;
}

unint64_t sub_1D618DA70()
{
  result = qword_1EDF09050;
  if (!qword_1EDF09050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09050);
  }

  return result;
}

uint64_t type metadata accessor for FormatOptionsNodeStatementResult(uint64_t a1)
{
  result = qword_1EDF1EF78;
  if (!qword_1EDF1EF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D618DB38(uint64_t a1)
{
  sub_1D5B56458();
  if (v1 <= 0x3F)
  {
    sub_1D60077D8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_1D618DCB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D725CE3C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 104;
  v8 = v2[6];
  v9 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v8);
  (*(v9 + 48))(v28, v8, v9);
  v10 = v28[0];
  sub_1D618EA78(v28);
  v11 = v2[6];
  v12 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v11);
  (*(v12 + 48))(v29, v11, v12);
  v13 = v29[1];
  sub_1D618EA78(v29);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7688], v3);
  v14 = sub_1D725CE2C();
  (*(v4 + 8))(v7, v3);
  sub_1D5DF6790(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v16 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v17 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  v18 = v16;
  *(inited + 40) = sub_1D72633CC();
  v19 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v17;
  *(inited + 72) = v19;
  *(inited + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(inited + 80) = v14;
  v20 = v19;
  v21 = v14;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4(0);
  swift_arrayDestroy();
  v22 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v23 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v24 = sub_1D7261D2C();

  v25 = [v22 initWithString:v23 attributes:v24];

  return v25;
}

id sub_1D618DFEC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3[6];
  v6 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v5);
  (*(v6 + 48))(v24, v5, v6);
  v7 = v24[0];
  sub_1D618EA78(v24);
  if (a3)
  {
    v8 = v3[6];
    v9 = v3[7];
    __swift_project_boxed_opaque_existential_1(v3 + 3, v8);
    (*(v9 + 48))(v23, v8, v9);
    v10 = v23[2];
    sub_1D618EA78(v23);
  }

  else
  {
    v10 = v7;
  }

  sub_1D5DF6790(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v12 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v13 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  v14 = v12;
  *(inited + 40) = sub_1D72633CC();
  v15 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v13;
  *(inited + 72) = v15;
  *(inited + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(inited + 80) = v10;
  v16 = v15;
  v17 = v10;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4(0);
  swift_arrayDestroy();
  v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v19 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v20 = sub_1D7261D2C();

  v21 = [v18 initWithString:v19 attributes:v20];

  return v21;
}

void sub_1D618E264(void *a1, char a2)
{
  v4 = v2[6];
  v5 = v2[7];
  if (a2)
  {
    __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
    (*(v5 + 48))(v8, v4, v5);
    v6 = v8[2];
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
    (*(v5 + 48))(v8, v4, v5);
    v6 = v8[0];
  }

  v7 = v6;
  sub_1D618EA78(v8);
  [a1 setTintColor_];
}

void sub_1D618E334(void *a1, char a2)
{
  v4 = v2[6];
  v5 = v2[7];
  if (a2)
  {
    __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
    (*(v5 + 48))(v13, v4, v5);
    v6 = v13[3];
    sub_1D618EA78(v13);
    [a1 setBackgroundColor_];

    v7 = [a1 layer];
    sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
    v8 = sub_1D72633CC();
    [v8 pointSize];
    v10 = v9;

    [v7 setCornerRadius_];
    v11 = [a1 layer];
    [v11 setCornerCurve_];
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
    (*(v5 + 48))(v13, v4, v5);
    v12 = v13[1];
    sub_1D618EA78(v13);
    [a1 setBackgroundColor_];

    v11 = [a1 layer];
    [v11 setCornerRadius_];
  }
}

id sub_1D618E538(void *a1, char a2)
{
  v3 = v2;
  [a1 setContentMode_];
  if (a2)
  {
    v6 = sub_1D726203C();
    v7 = [objc_opt_self() systemImageNamed_];

    if (v7)
    {
      v8 = [objc_opt_self() configurationWithPointSize:7 weight:13.0];
      v9 = [v7 imageWithConfiguration_];

      v10 = [v9 imageWithRenderingMode_];
    }

    sub_1D725FBBC();
    v11 = v3[6];
    v12 = v3[7];
    __swift_project_boxed_opaque_existential_1(v3 + 3, v11);
    (*(v12 + 48))(v15, v11, v12);
    v13 = v15[2];
    sub_1D618EA78(v15);
    [a1 setTintColor_];
  }

  else
  {
    sub_1D725FBBC();
  }

  return [a1 setHidden_];
}

uint64_t sub_1D618E6E8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

double sub_1D618E784()
{
  sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  v0 = sub_1D72633CC();
  [v0 pointSize];
  v2 = v1;

  return v2 * 0.0625;
}

double sub_1D618E814()
{
  sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  v0 = sub_1D72633CC();
  [v0 pointSize];
  v2 = v1;

  return v2 * 0.0625 * 8.0;
}

void sub_1D618E904(void *a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 56);
  __swift_project_boxed_opaque_existential_1((*v1 + 24), v3);
  (*(v4 + 48))(v6, v3, v4);
  v5 = v6[0];
  sub_1D618EA78(v6);
  [a1 setTintColor_];
}

id sub_1D618E9BC(void *a1)
{
  v2 = [a1 layer];
  [v2 setCornerCurve_];

  return [a1 setBackgroundColor_];
}

double sub_1D618EACC()
{
  sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  v0 = sub_1D72633CC();
  [v0 pointSize];
  v2 = v1;

  return v2 / 12.0 * 8.0;
}

uint64_t FormatType.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void FormatType.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void FormatType.definition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 80);
  *(a1 + 48) = v8;
  sub_1D618EC0C(v2, v3, v4, v5, v6, v7, v8);
}

void sub_1D618EC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if ((a7 >> 6) > 1u)
  {
    if (a7 >> 6 == 2)
    {

      goto LABEL_5;
    }
  }

  else
  {
    if (!(a7 >> 6))
    {

LABEL_5:

      return;
    }

    sub_1D618ECBC(a3, a4, a5, a6, a7 & 1);
  }
}

uint64_t sub_1D618ECBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }
}

uint64_t FormatType.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _s8NewsFeed10FormatTypeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  v10 = *(a1 + 80);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v16 = *(a2 + 48);
  v15 = *(a2 + 56);
  v44 = *(a2 + 64);
  v43 = *(a2 + 72);
  v17 = *(a2 + 80);
  if (*a1 != *a2 || a1[1] != *(a2 + 8))
  {
    v39 = a1[9];
    v41 = *(a2 + 32);
    v37 = *(a2 + 40);
    v38 = *(a2 + 48);
    v35 = a1[7];
    v36 = a1[8];
    v18 = a1[6];
    v19 = a1[5];
    v20 = a1[4];
    v21 = *(a2 + 56);
    v22 = *(a2 + 80);
    v23 = *(a1 + 80);
    v24 = a1[2];
    v25 = a1[3];
    v26 = *(a2 + 24);
    v27 = *(a2 + 16);
    v28 = sub_1D72646CC();
    v12 = v27;
    v11 = v26;
    v4 = v25;
    v2 = v24;
    v10 = v23;
    v17 = v22;
    v15 = v21;
    v3 = v20;
    v5 = v19;
    v6 = v18;
    v7 = v35;
    v8 = v36;
    v14 = v37;
    v16 = v38;
    v9 = v39;
    v13 = v41;
    if ((v28 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (v4)
  {
    if (v11)
    {
      if (v2 == v12 && v4 == v11)
      {
        goto LABEL_9;
      }

      v40 = v15;
      v29 = v13;
      v30 = v3;
      v42 = v17;
      v31 = v10;
      v32 = sub_1D72646CC();
      v10 = v31;
      v17 = v42;
      v3 = v30;
      v13 = v29;
      v15 = v40;
      if (v32)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v33 = 0;
    return v33 & 1;
  }

  if (v11)
  {
    goto LABEL_11;
  }

LABEL_9:
  v52 = v3;
  v53 = v5;
  v54 = v6;
  v55 = v7;
  v56 = v8;
  v57 = v9;
  v58 = v10;
  v45 = v13;
  v46 = v14;
  v47 = v16;
  v48 = v15;
  v49 = v44;
  v50 = v43;
  v51 = v17;
  sub_1D618EC0C(v3, v5, v6, v7, v8, v9, v10);
  sub_1D618EC0C(v13, v14, v16, v15, v44, v43, v17);
  v33 = _s8NewsFeed20FormatTypeDefinitionO2eeoiySbAC_ACtFZ_0(&v52, &v45);
  sub_1D60CF6F4(v45, v46, v47, v48, v49, v50, v51);
  sub_1D60CF6F4(v52, v53, v54, v55, v56, v57, v58);
  return v33 & 1;
}

unint64_t sub_1D618EF6C(uint64_t a1)
{
  result = sub_1D5B4C700();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D618EFB4(void *a1, uint64_t a2)
{
  v19 = a1;
  sub_1D6191428(0, &qword_1EDF3C0D8, MEMORY[0x1E69D70D8]);
  v18 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v17 - v7);
  v9 = *(a2 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D6997900(0, v9, 0);
    v10 = v21;
    v11 = (a2 + 32);
    v17 = v5 + 32;
    while (1)
    {
      v12 = *v11++;
      v20 = v12;
      sub_1D5CFEC98(v12);
      sub_1D618F188(v19, v8);
      v13 = v12;
      if (v2)
      {
        break;
      }

      sub_1D5CFED88(v13);
      v21 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D6997900((v14 > 1), v15 + 1, 1);
        v10 = v21;
      }

      *(v10 + 16) = v15 + 1;
      (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v8, v18);
      if (!--v9)
      {
        return v10;
      }
    }

    sub_1D5CFED88(v13);
  }

  return v10;
}

void sub_1D618F188(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v3;
  v7 = sub_1D725A30C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v199[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v199[-v15];
  v17 = *v2;
  switch((*v2 >> 59) & 0x1E | (*v2 >> 2) & 1)
  {
    case 1uLL:
      v93 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6191428(0, &qword_1EDF3C0F8, MEMORY[0x1E69D7078]);
      (*(*(v94 - 8) + 104))(a2, **(&unk_1E84CE0E8 + v93), v94);
      v28 = MEMORY[0x1E69D7080];
      goto LABEL_78;
    case 2uLL:
      v205 = a2;
      v73 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v74 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v201 = a1;
      v75 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);

      v76 = v75();
      v77 = sub_1D5E02AFC(v76, v73);
      if (v3)
      {

        goto LABEL_63;
      }

      v176 = *&v77;

      v201 = a1;
      v177 = v75();
      v178 = sub_1D5E02AFC(v177, v74);

      a2 = v205;
      *v205 = v176;
      *(a2 + 1) = v178;
      v28 = MEMORY[0x1E69D7090];
      goto LABEL_78;
    case 3uLL:
      v80 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v201 = a1;
      v81 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);

      v82 = v81();
      v83 = sub_1D5E02AFC(v82, v80);
      if (v3)
      {
        goto LABEL_70;
      }

      v84 = *&v83;

      *a2 = v84;
      v85 = *MEMORY[0x1E69D7240];
      v86 = sub_1D725A13C();
      (*(*(v86 - 8) + 104))(a2, v85, v86);
      v87 = MEMORY[0x1E69D72D8];
      goto LABEL_48;
    case 4uLL:
      v48 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v201 = a1;
      v49 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);

      v50 = v49();
      v51 = sub_1D5E02AFC(v50, v48);
      if (v3)
      {
        goto LABEL_70;
      }

      v52 = *&v51;

      *a2 = v52;
      v53 = *MEMORY[0x1E69D7240];
      v54 = sub_1D725A13C();
      (*(*(v54 - 8) + 104))(a2, v53, v54);
      v47 = MEMORY[0x1E69D72D8];
      goto LABEL_12;
    case 5uLL:
      v108 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v201 = a1;
      v109 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);

      v110 = v109();
      v111 = sub_1D5E02AFC(v110, v108);
      if (v3)
      {
        goto LABEL_70;
      }

      v112 = *&v111;

      *a2 = v112;
      v28 = MEMORY[0x1E69D70C0];
      goto LABEL_78;
    case 6uLL:
      v128 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v201 = a1;
      v129 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);

      v130 = v129();
      v131 = sub_1D5E02AFC(v130, v128);
      if (v3)
      {
        goto LABEL_70;
      }

      v132 = *&v131;

      *a2 = v132;
      v28 = MEMORY[0x1E69D70B8];
      goto LABEL_78;
    case 7uLL:
      v88 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v201 = a1;
      v89 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);

      v90 = v89();
      v91 = sub_1D5E02AFC(v90, v88);
      if (v3)
      {
        goto LABEL_70;
      }

      v92 = *&v91;

      *a2 = v92;
      v28 = MEMORY[0x1E69D70D0];
      goto LABEL_78;
    case 8uLL:
      v150 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v201 = a1;
      v151 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);

      v152 = v151();
      v153 = sub_1D5E02AFC(v152, v150);
      if (v3)
      {
        goto LABEL_70;
      }

      v154 = *&v153;

      *a2 = v154;
      v28 = MEMORY[0x1E69D70C8];
      goto LABEL_78;
    case 9uLL:
      v59 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      if (!*((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
        v201 = a1;
        v181 = off_1F51AF338[0];
        type metadata accessor for FormatNodeContext(0);

        v182 = v181();
        v183 = sub_1D5E02AFC(v182, v59);
        if (!v3)
        {
          v184 = *&v183;

          *a2 = v184;
          v64 = MEMORY[0x1E69D7330];
          goto LABEL_77;
        }

LABEL_70:

        return;
      }

      if (*((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18) != 1)
      {
        v201 = a1;
        v185 = off_1F51AF338[0];
        type metadata accessor for FormatNodeContext(0);

        v186 = v185();
        v187 = sub_1D5E02AFC(v186, v59);
        if (!v3)
        {
          v192 = *&v187;

          *a2 = v192;
          v193 = *MEMORY[0x1E69D7350];
          v194 = sub_1D725A34C();
          (*(*(v194 - 8) + 104))(a2, v193, v194);
          v64 = MEMORY[0x1E69D7360];
          goto LABEL_77;
        }

        goto LABEL_70;
      }

      v201 = a1;
      v60 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);

      v61 = v60();
      v62 = sub_1D5E02AFC(v61, v59);
      if (v3)
      {
        goto LABEL_70;
      }

      v63 = *&v62;

      *a2 = v63;
      v64 = MEMORY[0x1E69D7368];
LABEL_77:
      v195 = *v64;
      v196 = sub_1D725A35C();
      (*(*(v196 - 8) + 104))(a2, v195, v196);
      v28 = MEMORY[0x1E69D7008];
LABEL_78:
      v197 = *v28;
      sub_1D6191428(0, &qword_1EDF3C0D8, MEMORY[0x1E69D70D8]);
      (*(*(v198 - 8) + 104))(a2, v197, v198);
      return;
    case 0xAuLL:
      v141 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v201 = a1;
      v142 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);

      v143 = v142();
      v144 = sub_1D5E02AFC(v143, v141);
      if (v3)
      {
        goto LABEL_70;
      }

      v145 = *&v144;

      *a2 = v145;
      v146 = *MEMORY[0x1E69D7240];
      v147 = sub_1D725A13C();
      (*(*(v147 - 8) + 104))(a2, v146, v147);
      v87 = MEMORY[0x1E69D72E0];
LABEL_48:
      v148 = *v87;
      v149 = sub_1D725A29C();
      (*(*(v149 - 8) + 104))(a2, v148, v149);
      v28 = MEMORY[0x1E69D6FC0];
      goto LABEL_78;
    case 0xBuLL:
      v40 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v201 = a1;
      v41 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);

      v42 = v41();
      v43 = sub_1D5E02AFC(v42, v40);
      if (v3)
      {
        goto LABEL_70;
      }

      v44 = *&v43;

      *a2 = v44;
      v45 = *MEMORY[0x1E69D7240];
      v46 = sub_1D725A13C();
      (*(*(v46 - 8) + 104))(a2, v45, v46);
      v47 = MEMORY[0x1E69D72E0];
LABEL_12:
      v55 = *v47;
      v56 = sub_1D725A29C();
      (*(*(v56 - 8) + 104))(a2, v55, v56);
      v28 = MEMORY[0x1E69D6FD0];
      goto LABEL_78;
    case 0xCuLL:
      v57 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6191428(0, &qword_1EDF3C0F8, MEMORY[0x1E69D7078]);
      (*(*(v58 - 8) + 104))(a2, **(&unk_1E84CE0E8 + v57), v58);
      v28 = MEMORY[0x1E69D6FF0];
      goto LABEL_78;
    case 0xDuLL:
      v118 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v119 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v120 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x20);

      v121 = sub_1D6E8DD40(v119, v120);
      v123 = v122;

      v124 = sub_1D725A0DC();
      v125 = MEMORY[0x1E69D7238];
      if (!v118)
      {
        v125 = MEMORY[0x1E69D7230];
      }

      (*(*(v124 - 8) + 104))(a2, *v125, v124);
      sub_1D5ED83AC(0);
      v127 = (a2 + *(v126 + 48));
      *v127 = v121;
      v127[1] = v123;
      v28 = MEMORY[0x1E69D7020];
      goto LABEL_78;
    case 0xEuLL:
      v201 = *v2;

      v38 = sub_1D6190840(v37, a1);
      if (v3)
      {
        goto LABEL_63;
      }

      v39 = v38;

      *a2 = v39;
      v28 = MEMORY[0x1E69D6FF8];
      goto LABEL_78;
    case 0xFuLL:
      v201 = *v2;

      v79 = sub_1D6190840(v78, a1);
      if (v3)
      {
        goto LABEL_63;
      }

      v179 = v79;

      *a2 = v179;
      v28 = MEMORY[0x1E69D70A8];
      goto LABEL_78;
    case 0x10uLL:
      v29 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v30 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v31 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x20);

      v32 = sub_1D6E8DD40(v29, v30);
      v34 = v33;
      v201 = v17;
      v35 = sub_1D6190840(v31, a1);
      if (v4)
      {
        goto LABEL_57;
      }

      v36 = v35;

      *a2 = v32;
      a2[1] = v34;
      a2[2] = v36;
      v28 = MEMORY[0x1E69D7018];
      goto LABEL_78;
    case 0x11uLL:
      v95 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v96 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v97 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x20);

      v98 = sub_1D6E8DD40(v95, v96);
      v100 = v99;
      v201 = v17;
      v101 = sub_1D6190840(v97, a1);
      if (v4)
      {
        goto LABEL_57;
      }

      v102 = v101;

      *a2 = v98;
      a2[1] = v100;
      a2[2] = v102;
      v28 = MEMORY[0x1E69D7040];
      goto LABEL_78;
    case 0x12uLL:
      v133 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v134 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v135 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x20);

      v136 = sub_1D6E8DD40(v133, v134);
      v138 = v137;
      v201 = v17;
      v139 = sub_1D6190840(v135, a1);
      if (v4)
      {
        goto LABEL_57;
      }

      v140 = v139;

      *a2 = v136;
      a2[1] = v138;
      a2[2] = v140;
      v28 = MEMORY[0x1E69D7000];
      goto LABEL_78;
    case 0x13uLL:
      v162 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v163 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v164 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x20);

      v165 = sub_1D6E8DD40(v162, v163);
      v167 = v166;
      v201 = v17;
      v168 = sub_1D6190840(v164, a1);
      if (v4)
      {
LABEL_57:

        return;
      }

      v180 = v168;

      *a2 = v165;
      a2[1] = v167;
      a2[2] = v180;
      v28 = MEMORY[0x1E69D7030];
      goto LABEL_78;
    case 0x14uLL:
      v103 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v201 = a1;
      v104 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);

      v105 = v104();
      v106 = sub_1D5E03020(v105, v103);
      if (v3)
      {
        goto LABEL_70;
      }

      v107 = v106;

      *a2 = v107;
      v28 = MEMORY[0x1E69D6FE8];
      goto LABEL_78;
    case 0x15uLL:
      v113 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v201 = a1;
      v114 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);

      v115 = v114();
      v116 = sub_1D5E03020(v115, v113);
      if (v3)
      {
        goto LABEL_70;
      }

      v117 = v116;

      *a2 = v117;
      v28 = MEMORY[0x1E69D6FE0];
      goto LABEL_78;
    case 0x16uLL:
      v205 = v14;
      v155 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v200 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      if (v155)
      {
        v201 = v17;

        v157 = sub_1D6190840(v156, a1);
        if (!v3)
        {
          v158 = v157;

          *a2 = v158;
          v159 = MEMORY[0x1E69D7328];
          if (!v200)
          {
            v159 = MEMORY[0x1E69D7320];
          }

          v160 = v205;
          (*(v8 + 104))(v11, *v159, v205);
          sub_1D6191398(0);
          (*(v8 + 32))(a2 + *(v161 + 48), v11, v160);
          v28 = MEMORY[0x1E69D7028];
          goto LABEL_78;
        }
      }

      else
      {
        v201 = v17;

        v175 = sub_1D6190840(v174, a1);
        if (!v3)
        {
          v188 = v175;

          *a2 = v188;
          v189 = MEMORY[0x1E69D7328];
          if (!v200)
          {
            v189 = MEMORY[0x1E69D7320];
          }

          v190 = v205;
          (*(v8 + 104))(v16, *v189, v205);
          sub_1D6191398(0);
          (*(v8 + 32))(a2 + *(v191 + 48), v16, v190);
          v28 = MEMORY[0x1E69D7010];
          goto LABEL_78;
        }
      }

LABEL_63:

      return;
    case 0x17uLL:
      v169 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v170 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v171 = swift_allocObject();
      v171[2] = v169;
      v171[3] = v170;
      v171[4] = a1;
      *a2 = sub_1D6191408;
      a2[1] = v171;
      v172 = *MEMORY[0x1E69D70A0];
      sub_1D6191428(0, &qword_1EDF3C0D8, MEMORY[0x1E69D70D8]);
      (*(*(v173 - 8) + 104))(a2, v172, v173);

      goto LABEL_59;
    case 0x18uLL:
      v67 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v66 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v69 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v68 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v70 = swift_allocObject();
      v70[2] = v67;
      v70[3] = v66;
      v70[4] = v69;
      v70[5] = v68;
      v70[6] = a1;
      *a2 = sub_1D619134C;
      a2[1] = v70;
      v71 = *MEMORY[0x1E69D70B0];
      sub_1D6191428(0, &qword_1EDF3C0D8, MEMORY[0x1E69D70D8]);
      (*(*(v72 - 8) + 104))(a2, v71, v72);

LABEL_59:

      return;
    case 0x19uLL:
      v65 = __ROR8__(v17 + 0x3FFFFFFFFFFFFFFCLL, 3);
      if (v65 > 1)
      {
        if (v65 == 2)
        {
          v28 = MEMORY[0x1E69D6FB8];
        }

        else
        {
          v28 = MEMORY[0x1E69D6FD8];
        }
      }

      else if (v65)
      {
        v28 = MEMORY[0x1E69D7098];
      }

      else
      {
        v28 = MEMORY[0x1E69D7088];
      }

      goto LABEL_78;
    default:
      v18 = *(v17 + 24);
      v19 = *(v17 + 32);
      v20 = *(v17 + 40);
      v201 = *(v17 + 16);
      v202 = v18;
      v203 = v19;
      v204 = v20;

      v21 = sub_1D6BA4A00();
      v23 = v22;
      v25 = v24;
      v27 = v26;

      if (v3)
      {
        return;
      }

      *a2 = v21;
      a2[1] = v23;
      a2[2] = v25;
      a2[3] = v27;
      v28 = MEMORY[0x1E69D7048];
      goto LABEL_78;
  }
}

void *sub_1D61905D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1D6191428(0, &qword_1EDF3C0D8, MEMORY[0x1E69D70D8]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = (v26 - v14);
  v16 = sub_1D6B4D028(a1, a4, a2, a3);
  if (v4)
  {
    return v5;
  }

  v18 = v16;
  v19 = *(v16 + 16);
  if (!v19)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v29 = v11;
  v31 = MEMORY[0x1E69E7CC0];
  result = sub_1D6997900(0, v19, 0);
  v20 = 0;
  v5 = v31;
  v27 = v18;
  v28 = v12;
  v26[1] = v12 + 32;
  while (v20 < *(v18 + 16))
  {
    v21 = v19;
    v22 = *(v18 + 8 * v20 + 32);
    v30 = v22;
    sub_1D5CFEC98(v22);
    sub_1D618F188(a4, v15);
    v23 = a4;
    sub_1D5CFED88(v22);
    v31 = v5;
    v25 = *(v5 + 16);
    v24 = *(v5 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_1D6997900((v24 > 1), v25 + 1, 1);
      v5 = v31;
    }

    ++v20;
    *(v5 + 16) = v25 + 1;
    result = (*(v28 + 32))(v5 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, v15, v29);
    v19 = v21;
    a4 = v23;
    v18 = v27;
    if (v21 == v20)
    {

      return v5;
    }
  }

  __break(1u);
  return result;
}

id sub_1D6190840(uint64_t a1, void *a2)
{
  v5 = sub_1D725A19C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles;
  swift_beginAccess();
  v11 = *v10;
  v12 = *(v10 + 8);

  sub_1D6FBAAA4(a1, a2, v11, v12);
  v14 = v13;

  if (!v2)
  {
    if (v14 && (~*(v14 + 56) & 0xF000000000000007) != 0)
    {
      v23 = *(v14 + 56);

      v11 = sub_1D5F4FDC4(a2);
    }

    else
    {
      v11 = [objc_opt_self() systemFontOfSize_];
    }

    sub_1D7259EDC();
    sub_1D725A18C();
    v16 = v15;
    if (qword_1EDF34BB8 != -1)
    {
      swift_once();
    }

    sub_1D7264C3C();
    if (v23 == 1)
    {
      [v11 pointSize];
      v18 = v17;
      sub_1D7264C3C();
      v19 = round(v16 * (v18 * 4.0) * 0.25);
      if (!v23)
      {
        v19 = v18;
      }

      v20 = [v11 fontWithSize_];

      v11 = v20;
    }

    (*(v6 + 8))(v9, v5);
  }

  return v11;
}

uint64_t _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch((*a1 >> 59) & 0x1E | (*a1 >> 2) & 1)
  {
    case 1uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 1)
      {
        goto LABEL_95;
      }

      goto LABEL_41;
    case 2uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 2)
      {
        goto LABEL_95;
      }

      v5 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v4 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v11 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v10 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      sub_1D5CFEC98(*a2);
      sub_1D5CFEC98(v2);
      goto LABEL_31;
    case 3uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 3)
      {
        goto LABEL_95;
      }

      goto LABEL_59;
    case 4uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 4)
      {
        goto LABEL_95;
      }

      goto LABEL_59;
    case 5uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 5)
      {
        goto LABEL_95;
      }

      goto LABEL_59;
    case 6uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 6)
      {
        goto LABEL_95;
      }

      goto LABEL_59;
    case 7uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 7)
      {
        goto LABEL_95;
      }

      goto LABEL_59;
    case 8uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) == 8)
      {
        goto LABEL_59;
      }

      goto LABEL_95;
    case 9uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 9)
      {
        goto LABEL_95;
      }

      v12 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v13 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v14 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v57 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v58) = v12;
      v54 = v13;
      LOBYTE(v55) = v14;
      sub_1D5CFEC98(v3);
      sub_1D5CFEC98(v2);
      v15 = _s8NewsFeed11FormatRatioO2eeoiySbAC_ACtFZ_0(&v57, &v54);
      goto LABEL_62;
    case 0xAuLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0xA)
      {
        goto LABEL_95;
      }

      goto LABEL_59;
    case 0xBuLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0xB)
      {
        goto LABEL_95;
      }

LABEL_59:
      v36 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v37 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D5CFEC98(*a2);
      sub_1D5CFEC98(v2);

      sub_1D633A310(v36, v37);
      goto LABEL_60;
    case 0xCuLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0xC)
      {
        goto LABEL_95;
      }

LABEL_41:
      v26 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v27 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D5CFEC98(*a2);
      sub_1D5CFEC98(v2);
      v15 = sub_1D6DE1B58(v27, v26);
      goto LABEL_62;
    case 0xDuLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0xD)
      {
        goto LABEL_95;
      }

      v32 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v31 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v33 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v35 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v34 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      LOBYTE(v57) = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v58 = v32;
      v59 = v31;
      LOBYTE(v54) = v33;
      v55 = v35;
      v56 = v34;
      sub_1D5CFEC98(v3);
      sub_1D5CFEC98(v2);
      v15 = _s8NewsFeed22FormatResizeConstraintV2eeoiySbAC_ACtFZ_0(&v57, &v54);
      goto LABEL_62;
    case 0xEuLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0xE)
      {
        goto LABEL_95;
      }

      goto LABEL_35;
    case 0xFuLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0xF)
      {
        goto LABEL_95;
      }

LABEL_35:
      v24 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v25 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D5CFEC98(*a2);
      sub_1D5CFEC98(v2);

      v15 = _s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(v24, v25);

      goto LABEL_62;
    case 0x10uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) == 0x10)
      {
        goto LABEL_69;
      }

      goto LABEL_95;
    case 0x11uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0x11)
      {
        goto LABEL_95;
      }

      goto LABEL_69;
    case 0x12uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0x12)
      {
        goto LABEL_95;
      }

      goto LABEL_69;
    case 0x13uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0x13)
      {
        goto LABEL_95;
      }

LABEL_69:
      v42 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v43 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v44 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10) && *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      if (!v44 && (sub_1D72646CC() & 1) == 0)
      {
        goto LABEL_95;
      }

      sub_1D5CFEC98(v3);
      sub_1D5CFEC98(v2);

      v45 = _s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(v42, v43);

      sub_1D5CFED88(v2);
      sub_1D5CFED88(v3);
      if (v45)
      {
        goto LABEL_75;
      }

      goto LABEL_97;
    case 0x14uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0x14)
      {
        goto LABEL_95;
      }

      goto LABEL_49;
    case 0x15uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0x15)
      {
        goto LABEL_95;
      }

LABEL_49:
      v28 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v29 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D5CFEC98(*a2);
      sub_1D5CFEC98(v2);

      v30 = sub_1D633D10C(v28, v29);
LABEL_60:
      v15 = v30;
      goto LABEL_61;
    case 0x16uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0x16 || *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        goto LABEL_95;
      }

      v38 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v39 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v40 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v41 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      sub_1D5CFEC98(*a2);
      sub_1D5CFEC98(v2);
      LOBYTE(v38) = _s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(v38, v41);
      sub_1D5CFED88(v2);
      sub_1D5CFED88(v3);
      if (v38 & 1) == 0 || ((v39 ^ v40))
      {
        goto LABEL_97;
      }

      goto LABEL_75;
    case 0x17uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0x17)
      {
        goto LABEL_95;
      }

      v47 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v46 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v48 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v49 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      sub_1D5CFEC98(*a2);
      sub_1D5CFEC98(v2);

      v15 = sub_1D6B4CF98(v47, v46, v48, v49);

LABEL_61:

LABEL_62:
      sub_1D5CFED88(v2);
      sub_1D5CFED88(v3);
      return v15 & 1;
    case 0x18uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0x18)
      {
        goto LABEL_95;
      }

      v5 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v4 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v7 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v6 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v9 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v8 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v11 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v10 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      goto LABEL_26;
    case 0x19uLL:
      v16 = __ROR8__(v2 + 0x3FFFFFFFFFFFFFFCLL, 3);
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0x19 || v3 != 0xC000000000000014)
          {
            goto LABEL_95;
          }

          sub_1D5CFED88(*a1);
          v18 = 0xC000000000000014;
        }

        else
        {
          if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0x19 || v3 != 0xC00000000000001CLL)
          {
            goto LABEL_95;
          }

          sub_1D5CFED88(*a1);
          v18 = 0xC00000000000001CLL;
        }

        goto LABEL_100;
      }

      if (v16)
      {
        if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0x19 || v3 != 0xC00000000000000CLL)
        {
          goto LABEL_95;
        }

        sub_1D5CFED88(*a1);
        v18 = 0xC00000000000000CLL;
LABEL_100:
        sub_1D5CFED88(v18);
        v15 = 1;
        return v15 & 1;
      }

      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) == 0x19 && v3 == 0xC000000000000004)
      {
        sub_1D5CFED88(*a1);
        v18 = 0xC000000000000004;
        goto LABEL_100;
      }

LABEL_95:
      sub_1D5CFEC98(v3);
      sub_1D5CFEC98(v2);
LABEL_96:
      sub_1D5CFED88(v2);
      sub_1D5CFED88(v3);
LABEL_97:
      v15 = 0;
      return v15 & 1;
    default:
      if ((v3 >> 59) & 0x1E | (v3 >> 2) & 1)
      {
        goto LABEL_95;
      }

      v5 = *(v2 + 32);
      v4 = *(v2 + 40);
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      v11 = *(v3 + 32);
      v10 = *(v3 + 40);
LABEL_26:
      sub_1D5CFEC98(*a2);
      sub_1D5CFEC98(v2);
      sub_1D633A310(v7, v9);
      if ((v19 & 1) == 0)
      {
        goto LABEL_96;
      }

      sub_1D633A310(v6, v8);
      if ((v20 & 1) == 0)
      {
        goto LABEL_96;
      }

LABEL_31:
      sub_1D633A310(v5, v11);
      if ((v21 & 1) == 0)
      {
        goto LABEL_96;
      }

      sub_1D633A310(v4, v10);
      v23 = v22;
      sub_1D5CFED88(v2);
      sub_1D5CFED88(v3);
      if ((v23 & 1) == 0)
      {
        goto LABEL_97;
      }

LABEL_75:
      v15 = 1;
      return v15 & 1;
  }
}

unint64_t sub_1D61912C0(uint64_t a1)
{
  result = sub_1D5CA6224();
  *(a1 + 8) = result;
  return result;
}

unint64_t *sub_1D61912FC(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x19)
  {
    *result = ((a2 << 59) | (4 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 25)) | 0xC000000000000004;
  }

  return result;
}

void sub_1D6191398(uint64_t a1)
{
  if (!qword_1EDF1A718)
  {
    sub_1D5C14A38();
    sub_1D725A30C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1A718);
    }
  }
}

void sub_1D6191428(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5EB5218();
    v7 = a3(a1, &type metadata for FormatLayout, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t static FormatOptionBindingModifier.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (!v3)
  {
    if (!v4)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  return sub_1D633A250(v3, v4);
}

unint64_t sub_1D61914E0(uint64_t a1)
{
  result = sub_1D6191508();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6191508()
{
  result = qword_1EC884870;
  if (!qword_1EC884870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884870);
  }

  return result;
}

uint64_t sub_1D619155C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (!v3)
  {
    if (!v4)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  return sub_1D633A250(v3, v4);
}

unint64_t sub_1D61915B0(void *a1)
{
  a1[1] = sub_1D5C6A6CC();
  a1[2] = sub_1D5C6A720();
  result = sub_1D61915E8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61915E8()
{
  result = qword_1EC884878;
  if (!qword_1EC884878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884878);
  }

  return result;
}

uint64_t sub_1D6191664()
{
  sub_1D61917C8(v0 + OBJC_IVAR____TtC8NewsFeed29WebEmbedImageGeneratorContext_request);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WebEmbedImageGeneratorContext(uint64_t a1)
{
  result = qword_1EDF09F08;
  if (!qword_1EDF09F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D619172C(uint64_t a1)
{
  result = type metadata accessor for WebEmbedImageRequest(319);
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

uint64_t sub_1D61917C8(uint64_t a1)
{
  v2 = type metadata accessor for WebEmbedImageRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DebugFormatWorkspaceReference(uint64_t a1)
{
  result = qword_1EC884880;
  if (!qword_1EC884880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6191898(uint64_t a1)
{
  result = type metadata accessor for DebugFormatCacheFile(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t FormatWebEmbedNodeStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double FormatWebEmbedNodeStyle.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

uint64_t FormatWebEmbedNodeStyle.class.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatWebEmbedNodeStyle.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 64);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatWebEmbedNodeStyle.errorCornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 88);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

double sub_1D6191AA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 96) = v2;

  return result;
}

double FormatWebEmbedNodeStyle.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;

  return result;
}

uint64_t FormatWebEmbedNodeStyle.__allocating_init(identifier:class:cornerRadius:errorCornerRadius:ignoresSmartInvertColors:showsLoadingSpinner:selectors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, char a7, char a8, uint64_t a9)
{
  v14 = swift_allocObject();
  v16 = *a5;
  v15 = a5[1];
  LOBYTE(a5) = *(a5 + 16);
  v17 = *a6;
  v18 = a6[1];
  LOBYTE(a6) = *(a6 + 16);
  swift_beginAccess();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = v16;
  *(v14 + 56) = v15;
  *(v14 + 64) = a5;
  *(v14 + 72) = v17;
  *(v14 + 80) = v18;
  *(v14 + 88) = a6;
  *(v14 + 89) = a7;
  *(v14 + 90) = a8;
  swift_beginAccess();
  *(v14 + 96) = a9;
  return v14;
}

uint64_t FormatWebEmbedNodeStyle.init(identifier:class:cornerRadius:errorCornerRadius:ignoresSmartInvertColors:showsLoadingSpinner:selectors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, char a7, char a8, uint64_t a9)
{
  v13 = *a5;
  v14 = a5[1];
  v15 = *(a5 + 16);
  v16 = *a6;
  v17 = a6[1];
  v18 = *(a6 + 16);
  swift_beginAccess();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 48) = v13;
  *(v9 + 56) = v14;
  *(v9 + 64) = v15;
  *(v9 + 72) = v16;
  *(v9 + 80) = v17;
  *(v9 + 88) = v18;
  *(v9 + 89) = a7;
  *(v9 + 90) = a8;
  swift_beginAccess();
  *(v9 + 96) = a9;
  return v9;
}

uint64_t sub_1D6191D50(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v152 = v1[4];
  v153 = v1[2];
  v157 = v1[5];
  v158 = v1[3];
  v4 = v1[6];
  v5 = v1[7];
  v6 = *(v2 + 64);
  v7 = v4;
  v8 = v5;
  v9 = *(v2 + 64);
  if (v6 >= 0xFE)
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    sub_1D5ED34B0(v7, v8, v9);
  }

  v149 = v9;
  v150 = v8;
  v151 = v7;
  v10 = v2[9];
  v11 = v2[10];
  v12 = *(v2 + 88);
  v155 = v11;
  v156 = v10;
  v154 = *(v2 + 88);
  if (v12 >= 0xFE)
  {
    v155 = *(a1 + 80);
    v156 = *(a1 + 72);
    v154 = *(a1 + 88);
    sub_1D5ED34B0(v156, v155, v154);
  }

  v13 = *(v2 + 89);
  if (v13 == 2)
  {
    LOBYTE(v13) = *(a1 + 89);
  }

  v148 = v13;
  v14 = *(v2 + 90);
  if (v14 == 2)
  {
    LOBYTE(v14) = *(a1 + 90);
  }

  v147 = v14;
  swift_beginAccess();
  v15 = v2[12];
  swift_beginAccess();
  v16 = *(a1 + 96);
  v180 = MEMORY[0x1E69E7CC8];
  v17 = *(v15 + 16);
  if (__OFADD__(v17, *(v16 + 16)))
  {
    goto LABEL_95;
  }

  v168 = *(v16 + 16);

  sub_1D5ED34B0(v4, v5, v6);
  sub_1D5ED34B0(v10, v11, v12);
  sub_1D61938C8(0);

  sub_1D7261DAC();
  v171 = sub_1D698F4BC(0, v17, 0, MEMORY[0x1E69E7CC0]);
  v18 = *(v15 + 16);
  v160 = v16;
  if (v18)
  {
    v19 = 0;
    v20 = (v15 + 32);
    v21 = v18 - 1;
    while (1)
    {
      v23 = v20[1];
      v22 = v20[2];
      v24 = *v20;
      *&v179[11] = *(v20 + 43);
      v178 = v23;
      *v179 = v22;
      v177 = v24;
      v25 = v24;
      sub_1D619392C(&v177, &v174);
      sub_1D619392C(&v177, &v174);
      v26 = v180;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v172[0] = v26;
      v28 = sub_1D6D8CB60();
      v30 = v26[2];
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }

      v34 = v29;
      if (v26[3] < v33)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }

      v44 = v28;
      sub_1D6D82674();
      v28 = v44;
      if (v34)
      {
LABEL_18:
        v36 = *&v172[0];
        v37 = (*(*&v172[0] + 56) + (v28 << 6));
        v39 = v37[1];
        v38 = v37[2];
        v40 = *v37;
        *&v176[11] = *(v37 + 43);
        v175 = v39;
        *v176 = v38;
        v174 = v40;
        v41 = v177;
        v42 = v178;
        v43 = *v179;
        *(v37 + 43) = *&v179[11];
        v37[1] = v42;
        v37[2] = v43;
        *v37 = v41;
        sub_1D6193964(&v174);
        goto LABEL_22;
      }

LABEL_20:
      v36 = *&v172[0];
      *(*&v172[0] + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v36[6] + 16 * v28) = v25;
      v45 = (v36[7] + (v28 << 6));
      v46 = *&v179[11];
      v48 = v178;
      v47 = *v179;
      *v45 = v177;
      v45[1] = v48;
      v45[2] = v47;
      *(v45 + 43) = v46;
      v49 = v36[2];
      v32 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v32)
      {
        goto LABEL_91;
      }

      v36[2] = v50;

LABEL_22:
      v180 = v36;

      sub_1D6193964(&v177);
      v52 = *(v171 + 2);
      v51 = *(v171 + 3);
      if (v52 >= v51 >> 1)
      {
        v171 = sub_1D698F4BC((v51 > 1), v52 + 1, 1, v171);
      }

      *(v171 + 2) = v52 + 1;
      *&v171[16 * v52 + 32] = v25;
      if (v21 == v19)
      {
        goto LABEL_27;
      }

      ++v19;
      v20 += 4;
      if (v19 >= *(v15 + 16))
      {
        goto LABEL_87;
      }
    }

    sub_1D6D6E138(v33, isUniquelyReferenced_nonNull_native);
    v28 = sub_1D6D8CB60();
    if ((v34 & 1) != (v35 & 1))
    {
      goto LABEL_96;
    }

LABEL_17:
    if (v34)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

LABEL_27:
  v53 = sub_1D698F4BC(0, v168, 0, MEMORY[0x1E69E7CC0]);
  v54 = *(v16 + 16);
  if (!v54)
  {
    goto LABEL_68;
  }

  v55 = 0;
  v56 = v54 - 1;
  v57 = 32;
  v159 = v54 - 1;
  do
  {
    v59 = *(v16 + v57 + 16);
    v58 = *(v16 + v57 + 32);
    v60 = *(v16 + v57);
    *&v179[11] = *(v16 + v57 + 43);
    v178 = v59;
    *v179 = v58;
    v177 = v60;
    v61 = v60;
    v62 = v180;
    if (v180[2])
    {
      sub_1D619392C(&v177, &v174);
      v63 = sub_1D6D8CB60();
      if (v64)
      {
        v166 = v57;
        v167 = v53;
        v65 = (v62[7] + (v63 << 6));
        v66 = *(v65 + 43);
        v67 = v65[2];
        v68 = *v65;
        v175 = v65[1];
        *v176 = v67;
        v174 = v68;
        *&v176[11] = v66;
        v69 = v175;
        v70 = v67;
        v72 = *(&v175 + 1);
        v71 = v175;
        v73 = v67;
        if (v67 > 0xFDu)
        {
          v72 = *(&v178 + 1);
          v71 = v178;
          v73 = v179[0];
          sub_1D5ED34B0(v178, *(&v178 + 1), v179[0]);
        }

        v163 = v73;
        v164 = v72;
        v165 = v71;
        v74 = *&v176[8];
        v75 = *&v176[16];
        v76 = v176[24];
        v77 = *&v176[8];
        v78 = *&v176[16];
        v169 = v176[24];
        if (v176[24] > 0xFDu)
        {
          v77 = *&v179[8];
          v78 = *&v179[16];
          v169 = v179[24];
          sub_1D5ED34B0(*&v179[8], *&v179[16], v179[24]);
        }

        if (v176[25] == 2)
        {
          v79 = v179[25];
        }

        else
        {
          v79 = v176[25];
        }

        v80 = v176[26];
        if (v176[26] == 2)
        {
          v80 = v179[26];
        }

        v161 = v80;
        v162 = v79;
        v81 = v174;
        sub_1D5ED34B0(v69, *(&v69 + 1), v70);
        sub_1D5ED34B0(v74, v75, v76);

        sub_1D619392C(&v174, v172);
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v83 = sub_1D6D8CB60();
        v85 = v62[2];
        v86 = (v84 & 1) == 0;
        v32 = __OFADD__(v85, v86);
        v87 = v85 + v86;
        if (v32)
        {
          goto LABEL_93;
        }

        v88 = v84;
        if (v62[3] >= v87)
        {
          v57 = v166;
          v53 = v167;
          v56 = v159;
          if ((v82 & 1) == 0)
          {
            v120 = v83;
            sub_1D6D82674();
            v83 = v120;
            if (v88)
            {
              goto LABEL_54;
            }

            goto LABEL_63;
          }
        }

        else
        {
          sub_1D6D6E138(v87, v82);
          v83 = sub_1D6D8CB60();
          v57 = v166;
          v53 = v167;
          v56 = v159;
          if ((v88 & 1) != (v89 & 1))
          {
            goto LABEL_96;
          }
        }

        if (v88)
        {
LABEL_54:
          v106 = v62;
          v107 = v62[7] + (v83 << 6);
          v109 = *(v107 + 16);
          v108 = *(v107 + 32);
          v110 = *v107;
          *&v173[11] = *(v107 + 43);
          v172[1] = v109;
          *v173 = v108;
          v172[0] = v110;
          *v107 = v81;
          *(v107 + 16) = v165;
          *(v107 + 24) = v164;
          *(v107 + 32) = v163;
          *(v107 + 40) = v77;
          *(v107 + 48) = v78;
          *(v107 + 56) = v169;
          *(v107 + 57) = v162;
          *(v107 + 58) = v161;
          sub_1D6193964(v172);
          goto LABEL_65;
        }

LABEL_63:
        v106 = v62;
        v62[(v83 >> 6) + 8] |= 1 << v83;
        *(v62[6] + 16 * v83) = v81;
        v121 = v62[7] + (v83 << 6);
        *v121 = v81;
        *(v121 + 16) = v165;
        *(v121 + 24) = v164;
        *(v121 + 32) = v163;
        *(v121 + 40) = v77;
        *(v121 + 48) = v78;
        *(v121 + 56) = v169;
        *(v121 + 57) = v162;
        *(v121 + 58) = v161;
        v122 = v62[2];
        v32 = __OFADD__(v122, 1);
        v123 = v122 + 1;
        if (v32)
        {
          goto LABEL_94;
        }

        v62[2] = v123;

LABEL_65:
        sub_1D6193964(&v174);
        sub_1D6193964(&v177);
        v180 = v106;
        v16 = v160;
        if (v56 == v55)
        {
          goto LABEL_68;
        }

        goto LABEL_66;
      }
    }

    else
    {
      sub_1D619392C(&v177, &v174);
    }

    sub_1D619392C(&v177, &v174);
    v90 = swift_isUniquelyReferenced_nonNull_native();
    *&v172[0] = v62;
    v91 = sub_1D6D8CB60();
    v93 = v62[2];
    v94 = (v92 & 1) == 0;
    v32 = __OFADD__(v93, v94);
    v95 = v93 + v94;
    if (v32)
    {
      goto LABEL_90;
    }

    v96 = v92;
    if (v62[3] < v95)
    {
      sub_1D6D6E138(v95, v90);
      v91 = sub_1D6D8CB60();
      if ((v96 & 1) != (v97 & 1))
      {
        goto LABEL_96;
      }

LABEL_50:
      if (v96)
      {
        goto LABEL_51;
      }

      goto LABEL_56;
    }

    if (v90)
    {
      goto LABEL_50;
    }

    v111 = v91;
    sub_1D6D82674();
    v91 = v111;
    if (v96)
    {
LABEL_51:
      v98 = *&v172[0];
      v99 = (*(*&v172[0] + 56) + (v91 << 6));
      v101 = v99[1];
      v100 = v99[2];
      v102 = *v99;
      *&v176[11] = *(v99 + 43);
      v175 = v101;
      *v176 = v100;
      v174 = v102;
      v103 = v177;
      v104 = v178;
      v105 = *v179;
      *(v99 + 43) = *&v179[11];
      v99[1] = v104;
      v99[2] = v105;
      *v99 = v103;
      sub_1D6193964(&v174);
      goto LABEL_58;
    }

LABEL_56:
    v98 = *&v172[0];
    *(*&v172[0] + 8 * (v91 >> 6) + 64) |= 1 << v91;
    *(v98[6] + 16 * v91) = v61;
    v112 = (v98[7] + (v91 << 6));
    v113 = *&v179[11];
    v115 = v178;
    v114 = *v179;
    *v112 = v177;
    v112[1] = v115;
    v112[2] = v114;
    *(v112 + 43) = v113;
    v116 = v98[2];
    v32 = __OFADD__(v116, 1);
    v117 = v116 + 1;
    if (v32)
    {
      goto LABEL_92;
    }

    v98[2] = v117;

LABEL_58:
    v180 = v98;
    v118 = *(v53 + 2);
    v119 = *(v53 + 3);

    if (v118 >= v119 >> 1)
    {
      v53 = sub_1D698F4BC((v119 > 1), v118 + 1, 1, v53);
    }

    sub_1D6193964(&v177);
    *(v53 + 2) = v118 + 1;
    *&v53[16 * v118 + 32] = v61;
    if (v56 == v55)
    {
      goto LABEL_68;
    }

LABEL_66:
    ++v55;
    v57 += 64;
  }

  while (v55 < *(v16 + 16));
  __break(1u);
LABEL_68:

  *&v177 = v53;

  sub_1D6985DAC(v124);
  v125 = *(v177 + 16);
  if (v125)
  {
    v126 = 0;
    v127 = v177 + 40;
    v128 = MEMORY[0x1E69E7CC0];
    v170 = v177 + 40;
LABEL_70:
    v129 = v53;
    v130 = v180;
    v131 = v127 + 16 * v126;
    v132 = v126;
    while (v132 < v125)
    {
      v126 = v132 + 1;
      if (__OFADD__(v132, 1))
      {
        goto LABEL_89;
      }

      if (v130[2])
      {

        v133 = sub_1D6D8CB60();
        if (v134)
        {
          v135 = (v130[7] + (v133 << 6));
          v136 = *(v135 + 43);
          v137 = v135[2];
          v138 = *v135;
          v178 = v135[1];
          *v179 = v137;
          v177 = v138;
          *&v179[11] = v136;
          sub_1D619392C(&v177, &v174);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v128 = sub_1D698D6C8(0, *(v128 + 2) + 1, 1, v128);
          }

          v53 = v129;
          v127 = v170;
          v140 = *(v128 + 2);
          v139 = *(v128 + 3);
          if (v140 >= v139 >> 1)
          {
            v128 = sub_1D698D6C8((v139 > 1), v140 + 1, 1, v128);
          }

          *(v128 + 2) = v140 + 1;
          v141 = &v128[64 * v140];
          v142 = v177;
          v143 = v178;
          v144 = *v179;
          *(v141 + 75) = *&v179[11];
          *(v141 + 3) = v143;
          *(v141 + 4) = v144;
          *(v141 + 2) = v142;
          if (v126 != v125)
          {
            goto LABEL_70;
          }

          goto LABEL_85;
        }
      }

      ++v132;
      v131 += 16;
      if (v126 == v125)
      {
        goto LABEL_85;
      }
    }

    goto LABEL_88;
  }

  v128 = MEMORY[0x1E69E7CC0];
LABEL_85:

  v145 = swift_allocObject();
  swift_beginAccess();
  *(v145 + 16) = v153;
  *(v145 + 24) = v158;
  *(v145 + 32) = v152;
  *(v145 + 40) = v157;
  *(v145 + 48) = v151;
  *(v145 + 56) = v150;
  *(v145 + 64) = v149;
  *(v145 + 72) = v156;
  *(v145 + 80) = v155;
  *(v145 + 88) = v154;
  *(v145 + 89) = v148;
  *(v145 + 90) = v147;
  swift_beginAccess();
  *(v145 + 96) = v128;
  return v145;
}

void sub_1D61928B4(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 96);
  v5 = *(v4 + 16);

  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1D698D6C8(0, v5, 0, MEMORY[0x1E69E7CC0]);
  v74 = sub_1D698D558(0, v5, 0, v6);
  v77 = *(v4 + 16);
  if (v77)
  {
    v68 = v7;
    v72 = v2;
    v8 = 0;
    while (1)
    {
      v9 = (v4 + 32 + (v8 << 6));
      v11 = v9[1];
      v10 = v9[2];
      v12 = *v9;
      *(v82 + 11) = *(v9 + 43);
      v81 = v11;
      v82[0] = v10;
      v80 = v12;
      v13 = v12;
      sub_1D619392C(&v80, &v83);
      if (qword_1EDF2AB18 != -1)
      {
        swift_once();
      }

      v83 = v13;

      v14 = sub_1D6844380(&v83);

      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = 0;
        v17 = 32;
        while (1)
        {
          if (v16 >= *(v14 + 16))
          {
            __break(1u);
            goto LABEL_43;
          }

          v19 = *(v14 + v17 + 16);
          v18 = *(v14 + v17 + 32);
          v20 = *(v14 + v17);
          v88 = *(v14 + v17 + 48);
          v87[1] = v19;
          v87[2] = v18;
          v87[0] = v20;
          v21 = v19;
          sub_1D5E3B610(v87, &v83);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v16;
          sub_1D5E3B66C(v87);
          v17 += 56;
          if (v15 == v16)
          {
            goto LABEL_10;
          }
        }

        sub_1D5E3B66C(v87);
        if (v21 <= 1)
        {
          v29 = *(v68 + 2);
          v28 = *(v68 + 3);
          if (v29 >= v28 >> 1)
          {
            v68 = sub_1D698D6C8((v28 > 1), v29 + 1, 1, v68);
          }

          *(v68 + 2) = v29 + 1;
          v30 = &v68[64 * v29];
          v31 = v80;
          v32 = v81;
          v33 = v82[0];
          *(v30 + 75) = *(v82 + 11);
          *(v30 + 3) = v32;
          *(v30 + 4) = v33;
          *(v30 + 2) = v31;
        }

        else
        {
          v83 = v80;
          v84 = v81;
          v85[0] = v82[0];
          *(v85 + 11) = *(v82 + 11);
          sub_1D619392C(&v80, v79);
          v23 = v74[2];
          v22 = v74[3];
          if (v23 >= v22 >> 1)
          {
            v74 = sub_1D698D558((v22 > 1), v23 + 1, 1, v74);
          }

          sub_1D6193964(&v80);
          v74[2] = v23 + 1;
          v24 = &v74[9 * v23];
          v25 = v85[1];
          v26 = v83;
          v27 = v84;
          *(v24 + 4) = v85[0];
          *(v24 + 5) = v25;
          *(v24 + 2) = v26;
          *(v24 + 3) = v27;
          v24[12] = v21;
        }
      }

      else
      {
LABEL_10:
        sub_1D6193964(&v80);
      }

      if (++v8 == v77)
      {
        break;
      }

      if (v8 >= *(v4 + 16))
      {
        goto LABEL_44;
      }
    }

    v2 = v72;
    v7 = v68;
  }

  else
  {
  }

  sub_1D6193994(0);
  v34 = sub_1D72626AC();

  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = v35 - 1;
    for (i = 32; ; i += 72)
    {
      v83 = *(v34 + i);
      v38 = *(v34 + i + 16);
      v39 = *(v34 + i + 32);
      v40 = *(v34 + i + 48);
      v86 = *(v34 + i + 64);
      v85[0] = v39;
      v85[1] = v40;
      v84 = v38;
      sub_1D6193A44(&v83, &v80);
      v42 = *(v7 + 2);
      v41 = *(v7 + 3);
      if (v42 >= v41 >> 1)
      {
        v7 = sub_1D698D6C8((v41 > 1), v42 + 1, 1, v7);
      }

      *(v7 + 2) = v42 + 1;
      v43 = &v7[64 * v42];
      v44 = v83;
      v45 = v84;
      v46 = v85[0];
      *(v43 + 75) = *(v85 + 11);
      *(v43 + 3) = v45;
      *(v43 + 4) = v46;
      *(v43 + 2) = v44;
      if (!v36)
      {
        break;
      }

      --v36;
    }
  }

  v47 = *(v7 + 2);

  v67 = v47;
  if (v47)
  {
    v48 = 0;
    v49 = (v7 + 90);
    v69 = v7;
    while (v48 < *(v7 + 2))
    {
      v51 = *(v49 - 42);
      v52 = *(v49 - 34);
      v53 = *(v49 - 26);
      v76 = *(v49 - 10);
      v78 = *(v49 - 18);
      v75 = *(v49 - 2);
      v54 = *(v49 - 1);
      v70 = *v49;
      v55 = swift_allocObject();
      swift_beginAccess();
      v57 = *(v2 + 16);
      v56 = *(v2 + 24);
      swift_beginAccess();
      *(v55 + 16) = v57;
      *(v55 + 24) = v56;
      v58 = *(v2 + 40);
      v59 = v2;
      *(v55 + 32) = *(v2 + 32);
      *(v55 + 40) = v58;
      v71 = v52;
      v73 = v51;
      v60 = v51;
      v61 = v52;
      v62 = v53;
      if (v53 >= 0xFE)
      {
        v60 = *(v2 + 48);
        v61 = *(v2 + 56);
        v62 = *(v2 + 64);
        sub_1D5ED34B0(v60, v61, v62);
      }

      *(v55 + 48) = v60;
      *(v55 + 56) = v61;
      v64 = v76;
      v63 = v78;
      v65 = v75;
      *(v55 + 64) = v62;
      if (v75 >= 0xFE)
      {
        v63 = *(v59 + 72);
        v64 = *(v59 + 80);
        v65 = *(v59 + 88);
        sub_1D5ED34B0(v63, v64, v65);
      }

      *(v55 + 72) = v63;
      *(v55 + 80) = v64;
      *(v55 + 88) = v65;
      if (v54 == 2)
      {
        LOBYTE(v54) = *(v59 + 89);
      }

      *(v55 + 89) = v54;
      v66 = v70;
      if (v70 == 2)
      {
        v66 = *(v59 + 90);
      }

      ++v48;
      *(v55 + 90) = v66;
      swift_beginAccess();
      v50 = *(v59 + 96);

      sub_1D5ED34B0(v73, v71, v53);
      sub_1D5ED34B0(v78, v76, v75);

      swift_beginAccess();
      *(v55 + 96) = v50;
      v49 += 64;
      v2 = v55;
      v7 = v69;
      if (v67 == v48)
      {
        goto LABEL_41;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {
LABEL_41:
  }
}

uint64_t sub_1D6192EC8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[3];
  v3 = v0[5];
  v13 = v0[4];
  v14 = v0[2];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[9];
  v7 = v0[10];
  v15 = *(v1 + 89);
  v8 = *(v1 + 64);
  v9 = *(v1 + 88);
  swift_beginAccess();
  v10 = v1[12];
  v11 = swift_allocObject();
  swift_beginAccess();
  *(v11 + 16) = v14;
  *(v11 + 24) = v2;
  *(v11 + 32) = v13;
  *(v11 + 40) = v3;
  *(v11 + 48) = v4;
  *(v11 + 56) = v5;
  *(v11 + 64) = v8;
  *(v11 + 72) = v6;
  *(v11 + 80) = v7;
  *(v11 + 88) = v9;
  *(v11 + 89) = v15;
  swift_beginAccess();
  *(v11 + 96) = v10;

  sub_1D5ED34B0(v4, v5, v8);
  sub_1D5ED34B0(v6, v7, v9);

  return v11;
}

uint64_t FormatWebEmbedNodeStyle.deinit()
{

  sub_1D5ED348C(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_1D5ED348C(*(v0 + 72), *(v0 + 80), *(v0 + 88));

  return v0;
}

uint64_t FormatWebEmbedNodeStyle.__deallocating_deinit()
{

  sub_1D5ED348C(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_1D5ED348C(*(v0 + 72), *(v0 + 80), *(v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t FormatWebEmbedNodeStyle.Selector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatWebEmbedNodeStyle.Selector.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatWebEmbedNodeStyle.Selector.errorCornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 56);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t _s8NewsFeed23FormatWebEmbedNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a1[5];
  v6 = *(a1 + 56);
  v23 = *(a1 + 58);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  v26 = *(a2 + 40);
  v27 = a1[6];
  v11 = *(a2 + 56);
  v24 = *(a2 + 57);
  v25 = *(a1 + 57);
  v22 = *(a2 + 58);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v4 > 0xFD)
  {
    sub_1D5ED34B0(v2, v3, v4);
    sub_1D5ED34B0(v8, v7, v9);
    if (v9 > 0xFD)
    {
      sub_1D5ED348C(v2, v3, v4);
      goto LABEL_11;
    }

LABEL_9:
    sub_1D5ED348C(v2, v3, v4);
    v12 = v8;
    v13 = v7;
    v14 = v9;
LABEL_17:
    sub_1D5ED348C(v12, v13, v14);
    return 0;
  }

  v31 = v2;
  v32 = v3;
  v33 = v4;
  if (v9 > 0xFD)
  {
    sub_1D5ED34B0(v2, v3, v4);
    sub_1D5ED34B0(v8, v7, v9);
    sub_1D5ED34B0(v2, v3, v4);
    sub_1D5ED34A0(v2, v3, v4);
    goto LABEL_9;
  }

  v28 = v8;
  v29 = v7;
  v30 = v9;
  sub_1D5ED34B0(v2, v3, v4);
  sub_1D5ED34B0(v8, v7, v9);
  sub_1D5ED34B0(v2, v3, v4);
  v15 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v31, &v28);
  sub_1D5ED34A0(v28, v29, v30);
  sub_1D5ED34A0(v31, v32, v33);
  sub_1D5ED348C(v2, v3, v4);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v16 = v5;
  if (v6 > 0xFD)
  {
    v17 = v27;
    sub_1D5ED34B0(v5, v27, v6);
    v18 = v26;
    v19 = v10;
    sub_1D5ED34B0(v26, v10, v11);
    if (v11 > 0xFD)
    {
      sub_1D5ED348C(v16, v27, v6);
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v17 = v27;
  v31 = v5;
  v32 = v27;
  v33 = v6;
  v19 = v10;
  if (v11 > 0xFD)
  {
    sub_1D5ED34B0(v5, v27, v6);
    v18 = v26;
    sub_1D5ED34B0(v26, v10, v11);
    sub_1D5ED34B0(v16, v27, v6);
    sub_1D5ED34A0(v16, v27, v6);
LABEL_16:
    sub_1D5ED348C(v16, v17, v6);
    v12 = v18;
    v13 = v19;
    v14 = v11;
    goto LABEL_17;
  }

  v28 = v26;
  v29 = v10;
  v30 = v11;
  sub_1D5ED34B0(v5, v27, v6);
  sub_1D5ED34B0(v26, v10, v11);
  sub_1D5ED34B0(v5, v27, v6);
  v21 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v31, &v28);
  sub_1D5ED34A0(v28, v29, v30);
  sub_1D5ED34A0(v31, v32, v33);
  sub_1D5ED348C(v5, v27, v6);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  if (v25 == 2)
  {
    if (v24 == 2)
    {
      goto LABEL_26;
    }

    return 0;
  }

  result = 0;
  if (v24 != 2 && ((v24 ^ v25) & 1) == 0)
  {
LABEL_26:
    if (v23 == 2)
    {
      if (v22 == 2)
      {
        return 1;
      }
    }

    else if (v22 != 2 && ((v22 ^ v23) & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D619351C(uint64_t a1)
{
  result = sub_1D6193654(&qword_1EC884890, &protocol conformance descriptor for FormatWebEmbedNodeStyle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6193560(uint64_t a1)
{
  *(a1 + 16) = sub_1D6193654(&qword_1EDF26D80, &protocol conformance descriptor for FormatWebEmbedNodeStyle);
  result = sub_1D6193654(&qword_1EDF0D2F0, &protocol conformance descriptor for FormatWebEmbedNodeStyle);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1D61935C8(void *a1)
{
  a1[1] = sub_1D6193654(&qword_1EDF26D80, &protocol conformance descriptor for FormatWebEmbedNodeStyle);
  a1[2] = sub_1D6193654(&qword_1EDF0D2F0, &protocol conformance descriptor for FormatWebEmbedNodeStyle);
  result = sub_1D6193654(&qword_1EC884898, &protocol conformance descriptor for FormatWebEmbedNodeStyle);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6193654(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatWebEmbedNodeStyle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6193694(uint64_t a1)
{
  result = sub_1D61936BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61936BC()
{
  result = qword_1EC8848A0;
  if (!qword_1EC8848A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8848A0);
  }

  return result;
}

unint64_t sub_1D6193710(uint64_t a1)
{
  *(a1 + 8) = sub_1D5CCC7A8();
  result = sub_1D5CCC7FC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6193740(void *a1)
{
  a1[1] = sub_1D5CCC7A8();
  a1[2] = sub_1D5CCC7FC();
  result = sub_1D6193778();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6193778()
{
  result = qword_1EC8848A8;
  if (!qword_1EC8848A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8848A8);
  }

  return result;
}

__n128 __swift_memcpy59_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D619381C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 59))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6193864(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 59) = 1;
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

    *(result + 59) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D61938C8(uint64_t a1)
{
  if (!qword_1EDF05848)
  {
    sub_1D601014C();
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF05848);
    }
  }
}

void sub_1D6193994(uint64_t a1)
{
  if (!qword_1EDF0A930)
  {
    v2 = sub_1D61939F0();
    v4 = type metadata accessor for FormatNodeStyleSelectorOrder(a1, &type metadata for FormatWebEmbedNodeStyle.Selector, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDF0A930);
    }
  }
}

unint64_t sub_1D61939F0()
{
  result = qword_1EDF0D2F8;
  if (!qword_1EDF0D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D2F8);
  }

  return result;
}

uint64_t sub_1D6193A44(uint64_t a1, uint64_t a2)
{
  sub_1D6193994(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1D6193AA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 112);
  v47[6] = *(a1 + 96);
  v47[7] = v3;
  v47[8] = *(a1 + 128);
  v48 = *(a1 + 144);
  v4 = *(a1 + 48);
  v47[2] = *(a1 + 32);
  v47[3] = v4;
  v5 = *(a1 + 80);
  v47[4] = *(a1 + 64);
  v47[5] = v5;
  v6 = *(a1 + 16);
  v47[0] = *a1;
  v47[1] = v6;
  v7 = MEMORY[0x1E69E6F90];
  sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7279970;
  sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v7);
  sub_1D5EA74B8(0);
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7273AE0;
  v13 = (v12 + v11);
  v39 = v10;
  if (a2)
  {
    v14 = *(a2 + 40);
    v38 = *(a2 + 32);
    v15 = sub_1D6192EC8();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 64) = 0x2000000000000000;

    v17 = sub_1D601118C;
  }

  else
  {
    v17 = sub_1D70DD9D8;
    v16 = 0;
    v38 = 0;
    v14 = 0xE000000000000000;
  }

  v18 = type metadata accessor for FormatInspectionItem(0);
  v19 = (v13 + *(v18 + 24));
  *v19 = v17;
  v19[1] = v16;
  v20 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  *(v12 + v11) = v38;
  v13[2] = 0;
  v13[3] = 0;
  v13[1] = v14;
  v21 = v13 + *(v18 + 28);
  *v21 = 0;
  *(v21 + 1) = 0;
  v21[16] = -1;
  v22 = *(*(v18 - 8) + 56);
  (v22)(v13, 0, 1, v18);
  sub_1D6795150(0x6C4320656C797453, 0xEB00000000737361, 0, 0, v12, v43);
  swift_setDeallocating();
  sub_1D6180C78(v13);
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v23 = swift_allocObject();
  *(inited + 32) = v23;
  *(v23 + 48) = v44;
  v24 = v43[1];
  *(v23 + 16) = v43[0];
  *(v23 + 32) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D7279970;
  v26 = v25 + v11;
  v27 = sub_1D711F844(1701869908, 0xE400000000000000, 0x65626D4520626557, 0xE900000000000064, (v25 + v11));
  v22(v25 + v11, 0, 1, v18, v27);
  if (a2)
  {
    sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, *(a2 + 89), (v26 + v39));
    (v22)(v26 + v39, 0, 1, v18);
    v28 = *(a2 + 90);
  }

  else
  {
    v28 = 2;
    sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, 2u, (v26 + v39));
    (v22)(v26 + v39, 0, 1, v18);
  }

  v29 = (v26 + 2 * v39);
  sub_1D711E9F0(0xD000000000000015, 0x80000001D73CCE10, v28, v29);
  (v22)(v29, 0, 1, v18);
  sub_1D6795150(2003134806, 0xE400000000000000, 0, 0, v25, v45);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 96) = &type metadata for FormatInspectionGroup;
  *(inited + 104) = &off_1F518B2C0;
  v30 = swift_allocObject();
  *(inited + 72) = v30;
  *(v30 + 48) = v46;
  v31 = v45[1];
  *(v30 + 16) = v45[0];
  *(v30 + 32) = v31;
  if (a2)
  {
    v32 = *(a2 + 48);
    v33 = *(a2 + 56);
    v34 = *(a2 + 64);
    sub_1D5ED34B0(v32, v33, v34);
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v34 = -2;
  }

  v40 = v32;
  v41 = v33;
  v42 = v34;
  v35 = sub_1D6D9893C(v47, &v40);
  sub_1D5ED348C(v40, v41, v42);
  *(inited + 136) = &type metadata for FormatInspection;
  *(inited + 144) = &off_1F51E3FD0;
  *(inited + 112) = v35;
  v36 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  return v36;
}