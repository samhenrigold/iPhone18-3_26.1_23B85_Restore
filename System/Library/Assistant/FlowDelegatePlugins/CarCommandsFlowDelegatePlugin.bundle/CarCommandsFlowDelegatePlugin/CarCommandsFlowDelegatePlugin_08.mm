uint64_t sub_D98D4(char a1)
{
  if (a1)
  {
    return 0x64656B636F6CLL;
  }

  else
  {
    return 0x656D614E726163;
  }
}

BOOL sub_D9908()
{
  sub_85234();
  v2._rawValue = &off_1D2C38;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  return v1 != 0;
}

BOOL sub_D9944()
{
  sub_85234();
  v2._rawValue = &off_1D2C70;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  return v1 != 0;
}

BOOL sub_D9980()
{
  sub_85234();
  v2._rawValue = &off_1D2DB0;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  return v1 != 0;
}

uint64_t sub_D99BC(char a1)
{
  if (a1)
  {
    return 0x656D614E726163;
  }

  else
  {
    return 0x6174536B6E757274;
  }
}

unint64_t sub_D99FC()
{
  sub_85234();
  v2._rawValue = &off_1D3158;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_D9A3C(char a1)
{
  result = 1684955490;
  switch(a1)
  {
    case 1:
      result = 0x6E6769736C6C6163;
      break;
    case 2:
      result = 0x6C656E6E616863;
      break;
    case 3:
      result = 0x636E657571657266;
      break;
    case 4:
      result = 1701667182;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_D9ADC()
{
  sub_85234();
  v2._rawValue = &off_1D2CF8;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_D9B1C(char a1)
{
  if (!a1)
  {
    return 0x656D614E726163;
  }

  if (a1 == 1)
  {
    return 0x64656C62616E65;
  }

  return 0xD00000000000001FLL;
}

uint64_t sub_D9B78(char a1)
{
  if (a1)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0x656D614E726163;
  }
}

unint64_t sub_D9BB4()
{
  sub_85234();
  v2._rawValue = &off_1D2E38;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_D9BF4(char a1)
{
  result = 0x5A6574616D696C63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

unint64_t sub_D9CE0()
{
  sub_85234();
  v2._rawValue = &off_1D2EE8;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_D9D20(char a1)
{
  if (!a1)
  {
    return 0xD000000000000015;
  }

  if (a1 == 1)
  {
    return 1952540019;
  }

  return 0xD000000000000011;
}

uint64_t sub_D9D7C(unsigned __int8 a1, unsigned __int8 a2)
{
  switch(a1 >> 4)
  {
    case 1:
      if ((a2 & 0xF0) != 0x10)
      {
        return 0;
      }

      goto LABEL_32;
    case 2:
      if ((a2 & 0xF0) != 0x20)
      {
        return 0;
      }

      goto LABEL_32;
    case 3:
      if ((a2 & 0xF0) != 0x30)
      {
        return 0;
      }

      v11 = (a1 & 1) == 0;
      v12 = 0x656D614E726163;
      v13 = 0x64656B636F6CLL;
      if (a1)
      {
        v4 = 0x64656B636F6CLL;
      }

      else
      {
        v4 = 0x656D614E726163;
      }

      v14 = 0xE700000000000000;
      v15 = 0xE600000000000000;
      goto LABEL_49;
    case 4:
      if ((a2 & 0xF0) != 0x40)
      {
        return 0;
      }

      v3 = (a1 & 1) == 0;
      if (a1)
      {
        v4 = 0xD00000000000001FLL;
      }

      else
      {
        v4 = 0x656D614E726163;
      }

      if (v3)
      {
        v5 = 0xE700000000000000;
      }

      else
      {
        v5 = 0x800000000017EF60;
      }

      if (a2)
      {
        v6 = 0xD00000000000001FLL;
      }

      else
      {
        v6 = 0x656D614E726163;
      }

      if (a2)
      {
        v7 = 0x800000000017EF60;
      }

      else
      {
        v7 = 0xE700000000000000;
      }

      goto LABEL_58;
    case 5:
      if ((a2 & 0xF0) != 0x50)
      {
        return 0;
      }

      v22 = a1 & 0xF;
      v23 = a2 & 0xF;

      return sub_E3144(v22, v23);
    case 6:
      if ((a2 & 0xF0) != 0x60)
      {
        return 0;
      }

      v11 = (a1 & 1) == 0;
      v12 = 0x6174536B6E757274;
      v13 = 0x656D614E726163;
      if (a1)
      {
        v4 = 0x656D614E726163;
      }

      else
      {
        v4 = 0x6174536B6E757274;
      }

      v14 = 0xEB00000000737574;
      v15 = 0xE700000000000000;
LABEL_49:
      if (v11)
      {
        v5 = v14;
      }

      else
      {
        v5 = v15;
      }

      if (a2)
      {
        v6 = v13;
      }

      else
      {
        v6 = v12;
      }

      if (a2)
      {
        v7 = v15;
      }

      else
      {
        v7 = v14;
      }

LABEL_58:
      if (v4 != v6 || v5 != v7)
      {
        goto LABEL_74;
      }

      goto LABEL_76;
    case 7:
      if ((a2 & 0xF0) != 0x70)
      {
        return 0;
      }

      v16 = 1684955490;
      v17 = 0xE400000000000000;
      v18 = a1 & 0xF;
      v19 = 1684955490;
      switch(v18)
      {
        case 1:
          v17 = 0xE800000000000000;
          v19 = 0x6E6769736C6C6163;
          break;
        case 2:
          v17 = 0xE700000000000000;
          v19 = 0x6C656E6E616863;
          break;
        case 3:
          v19 = 0x636E657571657266;
          v17 = 0xE900000000000079;
          break;
        case 4:
          v19 = 1701667182;
          break;
        default:
          break;
      }

      v33 = 0xE400000000000000;
      switch(a2 & 0xF)
      {
        case 1:
          v33 = 0xE800000000000000;
          v16 = 0x6E6769736C6C6163;
          break;
        case 2:
          v33 = 0xE700000000000000;
          v16 = 0x6C656E6E616863;
          break;
        case 3:
          v16 = 0x636E657571657266;
          v33 = 0xE900000000000079;
          break;
        case 4:
          v16 = 1701667182;
          break;
        default:
          break;
      }

      if (v19 != v16 || v17 != v33)
      {
        goto LABEL_74;
      }

      goto LABEL_76;
    case 8:
      if ((a2 & 0xF0) != 0x80)
      {
        return 0;
      }

      v26 = sub_D9BF4(a1 & 0xF);
      v28 = v27;
      if (v26 != sub_D9BF4(a2 & 0xF) || v28 != v29)
      {
LABEL_74:
        v31 = sub_16AE54();

        return v31 & 1;
      }

LABEL_76:

      return 1;
    case 9:
      if ((a2 & 0xF0) != 0x90)
      {
        return 0;
      }

      v8 = a1 & 0xF;
      v9 = a2 & 0xF;

      return sub_E342C(v8, v9);
    case 10:
      v25 = a2 == 162;
      if (a1 == 161)
      {
        v25 = a2 == 161;
      }

      if (a1 == 160)
      {
        return a2 == 160;
      }

      else
      {
        return v25;
      }

    default:
      if (a2 >= 0x10u)
      {
        return 0;
      }

LABEL_32:
      if (a1)
      {
        v20 = 0x736C616E676973;
      }

      else
      {
        v20 = 0x656D614E726163;
      }

      if (a2)
      {
        v21 = 0x736C616E676973;
      }

      else
      {
        v21 = 0x656D614E726163;
      }

      if (v20 == v21)
      {
        swift_bridgeObjectRelease_n();
        return 1;
      }

      else
      {
        v32 = sub_16AE54();
        swift_bridgeObjectRelease_n();
        return v32 & 1;
      }
  }
}

uint64_t sub_DA248@<X0>(_BYTE *a1@<X8>)
{
  result = sub_83D98();
  *a1 = result;
  return result;
}

uint64_t sub_DA280()
{
  v1 = sub_85228();
  result = sub_D95C4(v1);
  *v0 = result;
  v0[1] = 0xE700000000000000;
  return result;
}

BOOL sub_DA2B8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_D9908();
  *a1 = result;
  return result;
}

BOOL sub_DA308@<W0>(_BYTE *a1@<X8>)
{
  result = sub_D9944();
  *a1 = result;
  return result;
}

BOOL sub_DA33C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_D9980();
  *a1 = result;
  return result;
}

uint64_t sub_DA394@<X0>(_BYTE *a1@<X8>)
{
  result = sub_83D98();
  *a1 = result;
  return result;
}

uint64_t sub_DA3CC()
{
  v1 = sub_85228();
  result = sub_D98D4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_DA3F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x16)
  {
    if (a2 + 234 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 234) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 235;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 4) & 0xFFFFFFEF | (16 * ((*a1 >> 3) & 1))) ^ 0x1F;
  if (v5 >= 0x15)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *sub_DA48C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 234 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 234) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x16)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x15)
  {
    v6 = ((a2 - 22) >> 8) + 1;
    *result = a2 - 22;
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
        JUMPOUT(0xDA564);
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
          *result = 8 * (((-a2 & 0x10) != 0) - 2 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_DA58C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x9F)
  {
    return v1 >> 4;
  }

  else
  {
    return (v1 & 7) + 10;
  }
}

_BYTE *sub_DA5B8(_BYTE *result, unsigned int a2)
{
  if (a2 < 0xA)
  {
    v2 = *result & 7 | (16 * a2);
  }

  else
  {
    v2 = (a2 + 6) & 7 | 0xA0;
  }

  *result = v2;
  return result;
}

uint64_t sub_DA614@<X0>(_BYTE *a1@<X8>)
{
  result = sub_83D98();
  *a1 = result;
  return result;
}

uint64_t sub_DA64C()
{
  v1 = sub_85228();
  result = sub_D99BC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_DA698@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D99FC();
  *a1 = result;
  return result;
}

uint64_t sub_DA6C8()
{
  v1 = sub_85228();
  result = sub_D9A3C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_DA714@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D9ADC();
  *a1 = result;
  return result;
}

uint64_t sub_DA744()
{
  v1 = sub_85228();
  result = sub_D9B1C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_DA790@<X0>(_BYTE *a1@<X8>)
{
  result = sub_83D98();
  *a1 = result;
  return result;
}

uint64_t sub_DA7C8()
{
  v1 = sub_85228();
  result = sub_D9B78(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_DA814@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D9BB4();
  *a1 = result;
  return result;
}

unint64_t sub_DA844()
{
  v1 = sub_85228();
  result = sub_D9BF4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_DA890@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D9CE0();
  *a1 = result;
  return result;
}

uint64_t sub_DA8C0()
{
  v1 = sub_85228();
  result = sub_D9D20(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_DA914(unsigned __int8 *a1, int a2)
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

  return sub_122F4(a1);
}

_BYTE *sub_DA960(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0xDA9FCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_DAA3C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0xDAB08);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_DAB3C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xDAC08);
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

_BYTE *sub_DAC58(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xDAD20);
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
          result = sub_85250(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_DAD6C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xDAE34);
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
          result = sub_85250(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_DAE6C()
{
  result = qword_1EB648;
  if (!qword_1EB648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB648);
  }

  return result;
}

unint64_t sub_DAEC4()
{
  result = qword_1EB650;
  if (!qword_1EB650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB650);
  }

  return result;
}

unint64_t sub_DAF1C()
{
  result = qword_1EB658;
  if (!qword_1EB658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB658);
  }

  return result;
}

unint64_t sub_DAF74()
{
  result = qword_1EB660;
  if (!qword_1EB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB660);
  }

  return result;
}

unint64_t sub_DAFCC()
{
  result = qword_1EB668;
  if (!qword_1EB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB668);
  }

  return result;
}

unint64_t sub_DB024()
{
  result = qword_1EB670;
  if (!qword_1EB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB670);
  }

  return result;
}

unint64_t sub_DB07C()
{
  result = qword_1EB678;
  if (!qword_1EB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB678);
  }

  return result;
}

unint64_t sub_DB0D4()
{
  result = qword_1EB680;
  if (!qword_1EB680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB680);
  }

  return result;
}

unint64_t sub_DB12C()
{
  result = qword_1EB688;
  if (!qword_1EB688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB688);
  }

  return result;
}

unint64_t sub_DB184()
{
  result = qword_1EB690;
  if (!qword_1EB690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB690);
  }

  return result;
}

unint64_t sub_DB1DC()
{
  result = qword_1EB698;
  if (!qword_1EB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB698);
  }

  return result;
}

void sub_DB268()
{
}

uint64_t type metadata accessor for CarCommandsGetDoorLockStatusCATsSimple(uint64_t a1)
{
  result = qword_1EB6A0;
  if (!qword_1EB6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_DB30C(char a1, char a2, char a3, char a4, char a5, char a6, char a7, uint64_t a8)
{
  *(v9 + 63) = v11;
  *(v9 + 16) = a8;
  *(v9 + 24) = v8;
  *(v9 + 62) = a7;
  *(v9 + 61) = a6;
  *(v9 + 60) = a5;
  *(v9 + 59) = a4;
  *(v9 + 58) = a3;
  *(v9 + 57) = a2;
  *(v9 + 56) = a1;
  return _swift_task_switch(sub_DB354);
}

uint64_t sub_DB354()
{
  v34 = *(v0 + 63);
  v1 = *(v0 + 62);
  v2 = *(v0 + 61);
  v3 = *(v0 + 60);
  v4 = *(v0 + 59);
  v5 = *(v0 + 58);
  v6 = *(v0 + 57);
  v7 = *(v0 + 56);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v8 = swift_allocObject();
  *(v0 + 32) = v8;
  *(v8 + 16) = xmmword_175690;
  *(v8 + 32) = 0xD000000000000015;
  *(v8 + 40) = 0x800000000018B7F0;
  *(v8 + 48) = v7;
  sub_DB854();
  *(v9 + 72) = v10;
  *(v9 + 80) = 0xD000000000000016;
  *(v9 + 88) = v11;
  *(v9 + 96) = v6;
  sub_DB854();
  *(v12 + 120) = v13;
  *(v12 + 128) = 0xD000000000000014;
  *(v12 + 136) = v14;
  *(v12 + 144) = v5;
  sub_DB854();
  *(v15 + 168) = v16;
  *(v15 + 176) = 0xD000000000000015;
  *(v15 + 184) = v17;
  *(v15 + 192) = v4;
  sub_DB854();
  *(v18 + 216) = v19;
  *(v18 + 224) = 0xD000000000000020;
  *(v18 + 232) = v20;
  *(v18 + 240) = v3;
  sub_DB854();
  *(v21 + 264) = v22;
  *(v21 + 272) = 0xD00000000000001ELL;
  *(v21 + 280) = v23;
  *(v21 + 288) = v2;
  sub_DB854();
  *(v24 + 312) = v25;
  *(v24 + 320) = 0xD00000000000001FLL;
  *(v24 + 328) = v26;
  *(v24 + 336) = v1;
  sub_DB854();
  v27[45] = v28;
  v27[46] = 0xD000000000000015;
  v27[47] = v29;
  if (v34)
  {
    v30 = 0;
    v31 = 0;
    *(v8 + 392) = 0;
    *(v8 + 400) = 0;
  }

  else
  {
    v30 = *(v0 + 16);
    v31 = &type metadata for Double;
  }

  *(v8 + 384) = v30;
  *(v8 + 408) = v31;
  v35 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v32 = swift_task_alloc();
  *(v0 + 40) = v32;
  *v32 = v0;
  v32[1] = sub_6D128;

  return v35(0xD000000000000032, 0x800000000018B900, v8);
}

uint64_t sub_DB5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v11 - 8);
  sub_57A0(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_5810(a1);
  return v13;
}

uint64_t sub_DB74C(uint64_t a1, uint64_t a2)
{
  sub_16A164();
  sub_5B1C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16A0E4();
  (*(v5 + 8))(a2, v2);
  return v9;
}

id sub_DB860()
{
  v1 = [*(v0 + 16) currentSession];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 configuration];

    v2 = [v3 rightHandDrive];
  }

  return v2;
}

id sub_DB8D8(void *a1)
{
  if ((sub_DBEB8(a1) & 1) == 0)
  {
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v13 = sub_16A584();
    sub_9DA0(v13, qword_1E65C0);
    sub_16A9A4();
    sub_DBEA4();
    sub_DBE80();
    v20 = 44;
    v21 = 0x1000000000000041;
    goto LABEL_18;
  }

  v1 = sub_DBD9C();
  if (!v1)
  {
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v22 = sub_16A584();
    sub_9DA0(v22, qword_1E65C0);
    sub_16A9A4();
    sub_DBEA4();
    sub_DBE80();
    v20 = 49;
LABEL_18:
    sub_386D8(v14, v15, v16, v17, v18, v19, v20, v21, v24);
    return 0;
  }

  v2 = v1;
  v3 = [v1 supportsVehicleData];
  sub_16ACF4(39);

  if (v3)
  {
    v4._countAndFlagsBits = 1702195828;
  }

  else
  {
    v4._countAndFlagsBits = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v4._object = v5;
  sub_16A744(v4);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v6 = sub_16A584();
  sub_9DA0(v6, qword_1E65C0);
  sub_16A9A4();
  sub_DBE80();
  sub_386D8(v7, v8, v9, v10, v11, v12, 53, 37, 0x800000000018BBE0);

  return v3;
}

uint64_t sub_DBB34(void *a1)
{
  if ((sub_DBEB8(a1) & 1) == 0)
  {
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v12 = sub_16A584();
    sub_9DA0(v12, qword_1E65C0);
    sub_16A9A4();
    sub_DBE90();
    sub_DBE70();
    v19 = 63;
    v20 = 0x1000000000000039;
    goto LABEL_14;
  }

  v1 = sub_DBD9C();
  if (!v1)
  {
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v21 = sub_16A584();
    sub_9DA0(v21, qword_1E65C0);
    sub_16A9A4();
    sub_DBE90();
    sub_DBE70();
    v19 = 68;
LABEL_14:
    sub_386D8(v13, v14, v15, v16, v17, v18, v19, v20, v22);
    return 3;
  }

  v2 = v1;
  v3 = [v1 transportType];
  sub_16ACF4(41);
  v23._countAndFlagsBits = 39;
  v23._object = 0x800000000018BAD0;
  sub_16A744(v23);
  type metadata accessor for CARTransportType(0);
  sub_16AD84();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v4 = sub_16A584();
  sub_9DA0(v4, qword_1E65C0);
  sub_16A9A4();
  sub_DBE70();
  sub_386D8(v5, v6, v7, v8, v9, v10, 73, 0, 0xE000000000000000);

  if (v3 >= 4)
  {
    return 3;
  }

  else
  {
    return 0x2010003u >> (8 * v3);
  }
}

id sub_DBD9C()
{
  v1 = *(v0 + 16);
  [v1 waitForSessionInitialization];
  v2 = [v1 currentSession];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 configuration];

  return v4;
}

uint64_t sub_DBE14()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_DBEB8(void *a1)
{
  sub_D084(a1, a1[3]);

  return sub_168B24();
}

id sub_DBEF4()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 96);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      sub_48134(&qword_1E5908);
    }

    v4 = sub_DCF5C(v3);
    v5 = *(v0 + 96);
    *(v0 + 96) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_DC144()
{
  sub_D2DC();
  v0[2] = v1;
  v2 = sub_1693E4();
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_DC200);
}

uint64_t sub_DC200()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_DD34C();
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  v6 = sub_153A70(v1);
  if (v6)
  {
    v7 = v6;

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    v11 = v0[2];
    v10 = v0[3];
    type metadata accessor for CarCommandsError(0);
    sub_DD390(&qword_1E92F0, 255, type metadata accessor for CarCommandsError, &unk_17A85C);
    swift_allocError();
    v5(v12, v11, v10);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_DC3AC()
{
  v0 = sub_16A164();
  __chkstk_darwin(v0 - 8);
  sub_A138();
  v1 = sub_5758(&qword_1EB8E0, &qword_176340);
  sub_37404();
  v3 = v2;
  v5 = __chkstk_darwin(v4);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20[-1] - v8;
  if (qword_1E5908 != -1)
  {
    sub_48134(&qword_1E5908);
  }

  v10 = qword_1F0C70;
  v20[3] = type metadata accessor for WalletService();
  v20[4] = &off_1D7C28;
  v20[0] = v10;
  type metadata accessor for CarCommandsCATs(0);

  sub_16A154();
  sub_16A094();
  sub_163EB4();

  sub_D13C(v20);
  sub_1693F4();
  type metadata accessor for FeatureFlagHelper();
  v11 = swift_allocObject();
  v12 = sub_168E34();
  sub_483C8(v12);

  v13 = sub_168E24();
  type metadata accessor for SnippetManager();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = sub_DD098(v20, v11, 32, v13, v14);

  v20[0] = v15;
  type metadata accessor for GetLockStatusHandleIntentFlowStrategy(0);
  sub_DD390(&qword_1EB8E8, 255, type metadata accessor for GetLockStatusHandleIntentFlowStrategy, &unk_170510);
  sub_1687E4();

  sub_168884();
  (*(v3 + 16))(v7, v9, v1);
  v16 = sub_5758(&qword_1EB8F0, &qword_176348);
  sub_483C8(v16);
  v17 = sub_168914();
  (*(v3 + 8))(v9, v1);
  return v17;
}

uint64_t sub_DC6AC()
{
  sub_D13C((v0 + 16));
  sub_D13C((v0 + 56));

  return v0;
}

uint64_t sub_DC6DC()
{
  sub_DC6AC();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_DC734(uint64_t a1, uint64_t a2)
{
  result = sub_DD390(&qword_1EB8C8, a2, type metadata accessor for GetLockStatusRCHFlowStrategy, &unk_1761D0);
  *(a1 + 8) = result;
  return result;
}

void *sub_DC78C()
{
  v1 = sub_16A164();
  __chkstk_darwin(v1 - 8);
  sub_A138();
  v2 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v3 = sub_16A094();
  v0[5] = v2;
  v0[6] = &off_1DA7E8;
  v0[2] = v3;
  v4 = sub_168E34();
  sub_483C8(v4);
  v5 = sub_168E24();
  v0[10] = v4;
  v0[11] = &protocol witness table for ResponseFactory;
  v0[7] = v5;
  v0[12] = 0;
  return v0;
}

uint64_t sub_DC870()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_DC144();
}

uint64_t sub_DC904()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_6F850;

  return sub_4010C();
}

uint64_t sub_DC9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  LockStatusRCHFlowStrategy = type metadata accessor for GetLockStatusRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, LockStatusRCHFlowStrategy, a5);
}

uint64_t sub_DCAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  LockStatusRCHFlowStrategy = type metadata accessor for GetLockStatusRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, LockStatusRCHFlowStrategy, a5);
}

uint64_t sub_DCB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  LockStatusRCHFlowStrategy = type metadata accessor for GetLockStatusRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, LockStatusRCHFlowStrategy, a5);
}

uint64_t sub_DCC40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_6F428;

  return sub_43204();
}

uint64_t sub_DCD18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_79DCC;

  return sub_45DE8();
}

uint64_t sub_DCEAC(uint64_t a1, uint64_t a2)
{
  result = sub_DD390(&qword_1EB8D0, a2, type metadata accessor for GetLockStatusRCHFlowStrategy, &unk_176278);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_DCF04(uint64_t a1, uint64_t a2)
{
  result = sub_DD390(&qword_1EAC40, a2, type metadata accessor for GetLockStatusRCHFlowStrategy, &unk_1762C0);
  *(a1 + 8) = result;
  return result;
}

id sub_DCF5C(uint64_t a1)
{
  v2 = type metadata accessor for WalletService();
  v15[3] = v2;
  v15[4] = &off_1D7C28;
  v15[0] = a1;
  v3 = type metadata accessor for SEGetCarLockStatusIntentHandler();
  v4 = objc_allocWithZone(v3);
  sub_2F8D0(v15, v2);
  sub_37404();
  __chkstk_darwin(v5);
  sub_A138();
  v8 = (v7 - v6);
  (*(v9 + 16))(v7 - v6);
  v10 = *v8;
  v14[3] = v2;
  v14[4] = &off_1D7C28;
  v14[0] = v10;
  sub_10824(v14, v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SEGetCarLockStatusIntentHandler_carKeyService);
  v13.receiver = v4;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "init");
  sub_D13C(v14);
  sub_D13C(v15);
  return v11;
}

uint64_t sub_DD098(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_16A164();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for FeatureFlagHelper();
  v27[3] = v8;
  v27[4] = &off_1D9AF0;
  v27[0] = a2;
  type metadata accessor for GetLockStatusHandleIntentFlowStrategy(0);
  v9 = swift_allocObject();
  v10 = sub_2F8D0(v27, v8);
  __chkstk_darwin(v10);
  v12 = (v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v26[3] = v8;
  v26[4] = &off_1D9AF0;
  v26[0] = v14;
  v15 = (v9 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetLockStatusHandleIntentFlowStrategy_commonPatterns);
  v16 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v17 = sub_16A094();
  v15[3] = v16;
  v15[4] = &off_1DA7E8;
  *v15 = v17;
  *(v9 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetLockStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(a1, v25);
  sub_10824(v26, v24);
  v18 = sub_2F8D0(v24, v24[3]);
  __chkstk_darwin(v18);
  (*(v20 + 16))(v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1668CC();
  v22 = v21;
  sub_D13C(a1);
  sub_D13C(v26);
  sub_D13C(v24);
  sub_D13C(v27);
  return v22;
}

unint64_t sub_DD34C()
{
  result = qword_1E6A18;
  if (!qword_1E6A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E6A18);
  }

  return result;
}

uint64_t sub_DD390(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for CarCommandsCATsSimple(uint64_t a1)
{
  result = qword_1EB8F8;
  if (!qword_1EB8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_DD464()
{
  sub_85234();
  v1._rawValue = &off_1D31F0;
  v3._object = v0;
  sub_16ADE4(v1, v3);
  sub_852C4();
  return sub_E2110();
}

BOOL sub_DD4A8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_DD464();
  *a1 = result;
  return result;
}

uint64_t sub_DD4F0()
{
  sub_1696C();
  sub_3024C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  sub_E20C0(v1);
  sub_E1600();
  sub_E1FF8();
  *v0 = v2;
  v0[1] = sub_E1FF4;
  sub_E20A8();
  v3 = sub_E2174(18);

  return v4(v3);
}

unint64_t sub_DD5AC()
{
  sub_85234();
  v2._rawValue = &off_1D3228;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_DD5EC(uint64_t a1, uint64_t a2)
{
  result = sub_E2064();
  switch(v3)
  {
    case 1:
      result = 0x614C64656B636F6CLL;
      break;
    case 2:
      result = 0x4C676E696B636F6CLL;
      break;
    case 3:
      result = 0x64656B636F6C6E75;
      break;
    case 4:
      result = 0x6E696B636F6C6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_DD6D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_DD5AC();
  *a1 = result;
  return result;
}

uint64_t sub_DD704()
{
  v1 = sub_85228();
  result = sub_DD5EC(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t sub_DD72C()
{
  sub_D2DC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v3);
  v1[4] = sub_D3C8();
  v4 = sub_D388();

  return _swift_task_switch(v4);
}

uint64_t sub_DD7B0()
{
  sub_31520();
  v16 = v2;
  sub_D3A4();
  sub_E2128();
  v3 = sub_5758(&qword_1E63D8, &unk_16DDC0);
  v4 = sub_E2188(v3);
  v5 = sub_E211C(v4);
  v6 = sub_AE798(v5, xmmword_16D9A0);
  sub_E2134(v6, v7, &qword_1E6300, &qword_16ECE0);
  v8 = sub_16A0C4();
  sub_AE7CC(v8);
  if (v9)
  {
    sub_D188(v1, &qword_1E6300, &qword_16ECE0);
    sub_E208C();
  }

  else
  {
    sub_E214C();
    sub_AE7F8();
    sub_93D80();
    v10();
  }

  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v11 = swift_task_alloc();
  sub_E21AC(v11);
  sub_E15AC();
  sub_E1FF8();
  *v0 = v12;
  sub_E21A0();
  sub_E20A8();
  v13 = sub_E2098(22);

  return v14(v13);
}

uint64_t sub_DD8F8()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_9F020();

    return v9(v8);
  }
}

BOOL sub_DDA28()
{
  sub_85234();
  v1._rawValue = &off_1D32C0;
  v3._object = v0;
  sub_16ADE4(v1, v3);
  sub_852C4();
  return sub_E2110();
}

BOOL sub_DDA6C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_DDA28();
  *a1 = result;
  return result;
}

uint64_t sub_DDAB8()
{
  sub_1696C();
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  sub_E20C0(v1);
  sub_E1558();
  sub_E1FF8();
  *v0 = v2;
  v0[1] = sub_E1FF4;
  v3 = sub_E20F4();
  v5 = v4 | 0xEE006F4E00000000;

  return v7(v3, v5);
}

BOOL sub_DDB68()
{
  sub_85234();
  v1._rawValue = &off_1D32F8;
  v3._object = v0;
  sub_16ADE4(v1, v3);
  sub_852C4();
  return sub_E2110();
}

BOOL sub_DDBAC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_DDB68();
  *a1 = result;
  return result;
}

uint64_t sub_DDC04()
{
  sub_1696C();
  sub_3024C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  sub_E20C0(v1);
  sub_E1504();
  sub_E1FF8();
  *v0 = v2;
  v0[1] = sub_E1FF4;
  sub_E20A8();
  v3 = sub_E2174(29);

  return v4(v3);
}

unint64_t sub_DDCC0()
{
  sub_85234();
  v2._rawValue = &off_1D3330;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_DDD00(char a1)
{
  if (!a1)
  {
    return 0x4C656D614E726163;
  }

  if (a1 == 1)
  {
    return 0x4C7972616D697270;
  }

  return 0x7261646E6F636573;
}

unint64_t sub_DDD8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_DDCC0();
  *a1 = result;
  return result;
}

uint64_t sub_DDDBC()
{
  v1 = sub_85228();
  result = sub_DDD00(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_DDDE4()
{
  sub_D2DC();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 96) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  v8 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v8);
  *(v1 + 64) = sub_D3C8();
  v9 = sub_D388();

  return _swift_task_switch(v9);
}

uint64_t sub_DDE74()
{
  v1 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v2 = swift_allocObject();
  *(v0 + 72) = v2;
  v3 = sub_AE798(v2, xmmword_176370);
  sub_E2134(v3, v4, &qword_1E6300, &qword_16ECE0);
  v5 = sub_16A0C4();
  if (sub_E2008(v5) == 1)
  {
    sub_D188(*(v0 + 64), &qword_1E6300, &qword_16ECE0);
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
  }

  else
  {
    *(v2 + 72) = v1;
    sub_10888((v2 + 48));
    sub_AE7F8();
    sub_93D80();
    v6();
  }

  v7 = *(v0 + 24);
  *(v2 + 80) = 0xD000000000000011;
  *(v2 + 88) = 0x800000000017E650;
  if (v7)
  {
    v8 = sub_169FD4();
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  v10 = *(v0 + 32);
  *(v2 + 96) = v9;
  *(v2 + 120) = v8;
  strcpy((v2 + 128), "remainingFuel");
  *(v2 + 142) = -4864;
  if (v10)
  {
    v11 = sub_16A004();
    v12 = v10;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  v13 = *(v0 + 40);
  *(v2 + 144) = v12;
  *(v2 + 168) = v11;
  *(v2 + 176) = 0x6E696E69616D6572;
  *(v2 + 184) = 0xEF65677261684367;
  if (v13)
  {
    v14 = sub_16A004();
    v15 = v13;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    *(v2 + 200) = 0;
    *(v2 + 208) = 0;
  }

  v16 = *(v0 + 48);
  v17 = *(v0 + 96);
  *(v2 + 192) = v15;
  *(v2 + 216) = v14;
  *(v2 + 224) = 0x676E696772616863;
  *(v2 + 232) = 0xE800000000000000;
  *(v2 + 240) = v17;
  *(v2 + 264) = &type metadata for Bool;
  *(v2 + 272) = 0x75466F54656D6974;
  *(v2 + 280) = 0xEA00000000006C6CLL;
  v18 = 0;
  if (v16)
  {
    v18 = sub_16A054();
  }

  else
  {
    *(v2 + 296) = 0;
    *(v2 + 304) = 0;
  }

  *(v2 + 288) = v16;
  *(v2 + 312) = v18;
  sub_E21B8();

  v19 = swift_task_alloc();
  *(v0 + 80) = v19;
  sub_E14B0();
  sub_E1FF8();
  *v19 = v20;
  v19[1] = sub_DE170;

  return v22(0xD000000000000016, 0x800000000018C030, v2, &type metadata for CarCommandsCATsSimple.PowerLevelDialogIds);
}

uint64_t sub_DE170()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_9F020();

    return v9(v8);
  }
}

uint64_t sub_DE2A0()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

unint64_t sub_DE304()
{
  sub_85234();
  v2._rawValue = &off_1D3398;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_DE344(uint64_t a1, uint64_t a2)
{
  result = sub_E2064();
  switch(v3)
  {
    case 1:
      result = 0x664F6C616E676973;
      break;
    case 2:
      result = 0x6E4F6C616E676973;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_DE428@<X0>(_BYTE *a1@<X8>)
{
  result = sub_DE304();
  *a1 = result;
  return result;
}

uint64_t sub_DE458()
{
  v1 = sub_85228();
  result = sub_DE344(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t sub_DE480()
{
  sub_D2DC();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v4);
  *(v1 + 32) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_DE508()
{
  sub_31520();
  v18 = v4;
  sub_D3A4();
  sub_E2128();
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v5 = swift_allocObject();
  v6 = sub_E211C(v5);
  v7 = sub_AE798(v6, xmmword_16D3A0);
  sub_E2134(v7, v8, &qword_1E6300, &qword_16ECE0);
  v9 = sub_16A0C4();
  sub_AE7CC(v9);
  if (v10)
  {
    sub_D188(v1, &qword_1E6300, &qword_16ECE0);
    sub_E208C();
  }

  else
  {
    sub_E214C();
    sub_AE7F8();
    sub_93D80();
    v11();
  }

  v12 = *(v2 + 64);
  *(v3 + 80) = 0x6C62697369567369;
  *(v3 + 88) = 0xE900000000000065;
  *(v3 + 120) = &type metadata for Bool;
  *(v3 + 96) = v12;
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v13 = swift_task_alloc();
  sub_E21AC(v13);
  sub_E145C();
  sub_E1FF8();
  *v0 = v14;
  sub_E21A0();
  sub_E20A8();
  v15 = sub_E2098(24);

  return v16(v15);
}

unint64_t sub_DE688()
{
  sub_85234();
  v2._rawValue = &off_1D3430;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_DE6C8(uint64_t a1, uint64_t a2)
{
  result = sub_E2064();
  switch(v3)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x65704F6B6E757274;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_DE790@<X0>(_BYTE *a1@<X8>)
{
  result = sub_DE688();
  *a1 = result;
  return result;
}

uint64_t sub_DE7C0()
{
  v1 = sub_85228();
  result = sub_DE6C8(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t sub_DE7E8()
{
  sub_D2DC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v3);
  v1[4] = sub_D3C8();
  v4 = sub_D388();

  return _swift_task_switch(v4);
}

uint64_t sub_DE86C()
{
  sub_31520();
  v16 = v2;
  sub_D3A4();
  sub_E2128();
  v3 = sub_5758(&qword_1E63D8, &unk_16DDC0);
  v4 = sub_E2188(v3);
  v5 = sub_E211C(v4);
  v6 = sub_AE798(v5, xmmword_16D9A0);
  sub_E2134(v6, v7, &qword_1E6300, &qword_16ECE0);
  v8 = sub_16A0C4();
  sub_AE7CC(v8);
  if (v9)
  {
    sub_D188(v1, &qword_1E6300, &qword_16ECE0);
    sub_E208C();
  }

  else
  {
    sub_E214C();
    sub_AE7F8();
    sub_93D80();
    v10();
  }

  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v11 = swift_task_alloc();
  sub_E21AC(v11);
  sub_E1408();
  sub_E1FF8();
  *v0 = v12;
  sub_E21A0();
  sub_E20A8();
  v13 = sub_E2098(23);

  return v14(v13);
}

BOOL sub_DE9B4()
{
  sub_85234();
  v1._rawValue = &off_1D34B0;
  v3._object = v0;
  sub_16ADE4(v1, v3);
  sub_852C4();
  return sub_E2110();
}

BOOL sub_DE9EC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_DE9B4();
  *a1 = result;
  return result;
}

uint64_t sub_DEA20()
{
  sub_1696C();
  sub_3024C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  sub_E20C0(v1);
  sub_E13B4();
  sub_E1FF8();
  *v0 = v2;
  v0[1] = sub_E1FF4;
  sub_E20A8();
  v3 = sub_E2174(19);

  return v4(v3);
}

BOOL sub_DEADC()
{
  sub_85234();
  v1._rawValue = &off_1D34E8;
  v3._object = v0;
  sub_16ADE4(v1, v3);
  sub_852C4();
  return sub_E2110();
}

BOOL sub_DEB14@<W0>(_BYTE *a1@<X8>)
{
  result = sub_DEADC();
  *a1 = result;
  return result;
}

uint64_t sub_DEB48()
{
  sub_1696C();
  sub_3024C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  sub_E20C0(v1);
  sub_E1360();
  sub_E1FF8();
  *v0 = v2;
  v0[1] = sub_E1FF4;
  sub_E20A8();
  v3 = sub_E2174(18);

  return v4(v3);
}

BOOL sub_DEC04()
{
  sub_85234();
  v1._rawValue = &off_1D3520;
  v3._object = v0;
  sub_16ADE4(v1, v3);
  sub_852C4();
  return sub_E2110();
}

BOOL sub_DEC3C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_DEC04();
  *a1 = result;
  return result;
}

uint64_t sub_DEC70()
{
  sub_1696C();
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  sub_E20C0(v1);
  sub_E130C();
  sub_E1FF8();
  *v0 = v2;
  v0[1] = sub_E1FF4;
  v3 = sub_E20F4();
  v5 = v4 | 0xEF73655900000000;

  return v7(v3, v5);
}

uint64_t sub_DED20()
{
  sub_D2DC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v3);
  v1[4] = sub_D3C8();
  v4 = sub_D388();

  return _swift_task_switch(v4);
}

uint64_t sub_DEDA4()
{
  sub_31520();
  v14 = v2;
  sub_D3A4();
  sub_E2128();
  v3 = sub_5758(&qword_1E63D8, &unk_16DDC0);
  v4 = sub_E2188(v3);
  v5 = sub_E211C(v4);
  v6 = sub_E2028(v5, xmmword_16D9A0);
  sub_E2134(v6, v7, &qword_1E6300, &qword_16ECE0);
  v8 = sub_16A0C4();
  sub_AE7CC(v8);
  if (v9)
  {
    sub_D188(v0, &qword_1E6300, &qword_16ECE0);
    sub_E208C();
  }

  else
  {
    sub_E214C();
    sub_AE7F8();
    sub_93D80();
    v10();
  }

  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  *(v1 + 48) = v11;
  *v11 = v1;
  v11[1] = sub_DD8F8;
  sub_E20B4();

  return v13(0xD000000000000017);
}

uint64_t sub_DEEF0()
{
  sub_D2DC();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 81) = v3;
  *(v1 + 80) = v4;
  *(v1 + 16) = v5;
  v6 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v6);
  *(v1 + 40) = swift_task_alloc();
  *(v1 + 48) = swift_task_alloc();
  v7 = sub_D388();

  return _swift_task_switch(v7);
}

uint64_t sub_DEF94()
{
  sub_31520();
  v21 = v1;
  sub_D3A4();
  v2 = v0[2];
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  v0[7] = v3;
  v4 = sub_E2028(v3, xmmword_176380);
  sub_E2134(v4, v5, &qword_1E6300, &qword_16ECE0);
  v6 = sub_16A0C4();
  if (sub_E2008(v6) == 1)
  {
    sub_D188(v0[6], &qword_1E6300, &qword_16ECE0);
    sub_E208C();
  }

  else
  {
    sub_E214C();
    sub_AE7F8();
    sub_93D80();
    v7();
  }

  v8 = v0[5];
  v9 = v0[3];
  *(v3 + 80) = 0x656D614E726163;
  *(v3 + 88) = 0xE700000000000000;
  sub_2F868(v9, v8, &qword_1E6300, &qword_16ECE0);
  v10 = sub_E2048();
  v11 = v0[5];
  if (v10 == 1)
  {
    sub_D188(v0[5], &qword_1E6300, &qword_16ECE0);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v2;
    sub_10888((v3 + 96));
    sub_AE7F8();
    sub_93D80();
    v12();
  }

  sub_E20CC();
  *(v3 + 128) = v14;
  *(v3 + 136) = v13;
  *(v3 + 144) = v15;
  *(v3 + 168) = &type metadata for Bool;
  *(v3 + 176) = v11;
  *(v3 + 184) = 0x800000000018BD80;
  *(v3 + 216) = &type metadata for Bool;
  *(v3 + 192) = v16;
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  sub_D3E0();
  v0[8] = v17;
  *v17 = v18;
  v17[1] = sub_DF1D4;
  sub_E2164();

  return v19();
}

uint64_t sub_DF1D4()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_9F020();

    return v9(v8);
  }
}

uint64_t sub_DF310()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_DF380(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  v3 = sub_D388();
  return _swift_task_switch(v3);
}

uint64_t sub_DF3AC()
{
  sub_31520();
  v10 = v1;
  sub_D3A4();
  v2 = *(v0 + 48);
  v3 = sub_5758(&qword_1E63D8, &unk_16DDC0);
  v4 = sub_E2188(v3);
  *(v4 + 32) = 0xD000000000000012;
  *(v4 + 40) = 0x80000000001807C0;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 48) = v2;
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v4;
  *(v4 + 16) = v5;
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 32) = v6;
  *v6 = v7;
  v6[1] = sub_DF4C0;

  return v9(0xD00000000000001BLL, 0x800000000018BF50, v4);
}

uint64_t sub_DF4C0()
{
  sub_1696C();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v6 = *v2;
  sub_D254();
  *v7 = v6;
  *(v4 + 40) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v8);
  }

  else
  {

    v9 = *(v6 + 8);

    return v9(v1);
  }
}

uint64_t sub_DF5F8()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_DF654()
{
  sub_1696C();
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_E1FF4;
  sub_E20B4();
  v3 = sub_E20E8(34);

  return v4(v3);
}

unint64_t sub_DF6FC()
{
  sub_85234();
  v2._rawValue = &off_1D3558;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_DF73C(uint64_t a1, uint64_t a2)
{
  result = sub_E2064();
  switch(v3)
  {
    case 1:
    case 2:
      result = 0x4F6574616D696C63;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_DF810@<X0>(_BYTE *a1@<X8>)
{
  result = sub_DF6FC();
  *a1 = result;
  return result;
}

uint64_t sub_DF840()
{
  v1 = sub_85228();
  result = sub_DF73C(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t sub_DF868()
{
  sub_D2DC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v3);
  v1[4] = sub_D3C8();
  v4 = sub_D388();

  return _swift_task_switch(v4);
}

uint64_t sub_DF8EC()
{
  sub_31520();
  v16 = v2;
  sub_D3A4();
  sub_E2128();
  v3 = sub_5758(&qword_1E63D8, &unk_16DDC0);
  v4 = sub_E2188(v3);
  v5 = sub_E211C(v4);
  v6 = sub_AE798(v5, xmmword_16D9A0);
  sub_E2134(v6, v7, &qword_1E6300, &qword_16ECE0);
  v8 = sub_16A0C4();
  sub_AE7CC(v8);
  if (v9)
  {
    sub_D188(v1, &qword_1E6300, &qword_16ECE0);
    sub_E208C();
  }

  else
  {
    sub_E214C();
    sub_AE7F8();
    sub_93D80();
    v10();
  }

  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v11 = swift_task_alloc();
  sub_E21AC(v11);
  sub_E12B8();
  sub_E1FF8();
  *v0 = v12;
  sub_E21A0();
  sub_E20A8();
  v13 = sub_E2098(25);

  return v14(v13);
}

uint64_t sub_DFA34()
{
  sub_85234();
  v2._rawValue = &off_1D35F0;
  v5._object = v0;
  sub_16ADE4(v2, v5);
  sub_852C4();
  if (v1 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v1)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_DFA7C(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_DFAD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_DFA34();
  *a1 = result;
  return result;
}

unint64_t sub_DFB08()
{
  v1 = sub_85228();
  result = sub_DFA7C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_DFB30()
{
  sub_1696C();
  sub_3024C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  sub_E20C0(v1);
  sub_E1264();
  sub_E1FF8();
  *v0 = v2;
  v0[1] = sub_7971C;
  sub_E20A8();
  v3 = sub_E2174(32);

  return v4(v3);
}

uint64_t sub_DFBEC()
{
  sub_1696C();
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_E1FF4;
  sub_E20B4();
  v3 = sub_E20E8(24);

  return v4(v3);
}

uint64_t sub_DFC94()
{
  sub_D2DC();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 88) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v6);
  *(v1 + 48) = swift_task_alloc();
  *(v1 + 56) = swift_task_alloc();
  v7 = sub_D388();

  return _swift_task_switch(v7);
}

uint64_t sub_DFD34()
{
  sub_31520();
  v17 = v1;
  sub_D3A4();
  v2 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  *(v0 + 64) = v3;
  v4 = sub_E2028(v3, xmmword_16EE50);
  sub_E2134(v4, v5, &qword_1E6300, &qword_16ECE0);
  v6 = sub_16A0C4();
  if (sub_E2008(v6) == 1)
  {
    sub_D188(*(v0 + 56), &qword_1E6300, &qword_16ECE0);
    sub_E208C();
  }

  else
  {
    sub_E214C();
    sub_AE7F8();
    sub_93D80();
    v7();
  }

  v8 = *(v0 + 88);
  *(v3 + 80) = 0x664F7265626D756ELL;
  *(v3 + 88) = 0xEF7379654B726143;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  else
  {
    v9 = *(v0 + 24);
    v10 = &type metadata for Double;
  }

  v11 = *(v0 + 48);
  v12 = *(v0 + 32);
  *(v3 + 96) = v9;
  *(v3 + 120) = v10;
  *(v3 + 128) = 0x656D614E726163;
  *(v3 + 136) = 0xE700000000000000;
  sub_2F868(v12, v11, &qword_1E6300, &qword_16ECE0);
  if (sub_E2048() == 1)
  {
    sub_D188(*(v0 + 48), &qword_1E6300, &qword_16ECE0);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v2;
    sub_10888((v3 + 144));
    sub_AE7F8();
    sub_93D80();
    v13();
  }

  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v14 = swift_task_alloc();
  *(v0 + 72) = v14;
  *v14 = v0;
  v14[1] = sub_DFF84;
  sub_E20B4();

  return v16(0xD000000000000029);
}

uint64_t sub_DFF84()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_9F020();

    return v9(v8);
  }
}

uint64_t sub_E00C0()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_E0130()
{
  sub_D2DC();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 80) = v3;
  *(v1 + 16) = v4;
  v5 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v5);
  *(v1 + 40) = swift_task_alloc();
  *(v1 + 48) = swift_task_alloc();
  v6 = sub_D388();

  return _swift_task_switch(v6);
}

uint64_t sub_E01D0()
{
  sub_31520();
  v15 = v1;
  sub_D3A4();
  v2 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  *(v3 + 16) = xmmword_16EE50;
  strcpy((v3 + 32), "parameterName");
  *(v3 + 46) = -4864;
  sub_E2134(v3, v4, &qword_1E6300, &qword_16ECE0);
  v5 = sub_16A0C4();
  if (sub_E2008(v5) == 1)
  {
    sub_D188(*(v0 + 48), &qword_1E6300, &qword_16ECE0);
    sub_E208C();
  }

  else
  {
    sub_E214C();
    sub_AE7F8();
    sub_93D80();
    v6();
  }

  v7 = *(v0 + 40);
  v8 = *(v0 + 24);
  strcpy((v3 + 80), "parameterValue");
  *(v3 + 95) = -18;
  sub_2F868(v8, v7, &qword_1E6300, &qword_16ECE0);
  if (sub_E2048() == 1)
  {
    sub_D188(*(v0 + 40), &qword_1E6300, &qword_16ECE0);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v2;
    sub_10888((v3 + 96));
    sub_AE7F8();
    sub_93D80();
    v9();
  }

  v10 = *(v0 + 80);
  *(v3 + 128) = 0xD000000000000013;
  *(v3 + 136) = 0x8000000000181140;
  *(v3 + 168) = &type metadata for Bool;
  *(v3 + 144) = v10;
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 64) = v11;
  *v11 = v12;
  v11[1] = sub_E0418;
  sub_E2164();

  return v13();
}

uint64_t sub_E0418()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_9F020();

    return v9(v8);
  }
}

uint64_t sub_E0554()
{
  sub_1696C();
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_E1FF4;
  sub_E20B4();
  v3 = sub_E20E8(46);

  return v4(v3);
}

uint64_t sub_E05FC()
{
  sub_D2DC();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v4);
  v1[5] = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_E0684()
{
  sub_D3A4();
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v1 = swift_allocObject();
  v0[6] = v1;
  *(v1 + 16) = xmmword_16D3A0;
  strcpy((v1 + 32), "parameterName");
  *(v1 + 46) = -4864;
  sub_E2134(v1, v2, &qword_1E6300, &qword_16ECE0);
  v3 = sub_16A0C4();
  if (sub_E2008(v3) == 1)
  {
    sub_D188(v0[5], &qword_1E6300, &qword_16ECE0);
    sub_E208C();
  }

  else
  {
    sub_E214C();
    sub_AE7F8();
    sub_93D80();
    v4();
  }

  v5 = v0[3];
  *(v1 + 80) = 0x736D657469;
  *(v1 + 88) = 0xE500000000000000;
  *(v1 + 120) = sub_5758(&qword_1EB948, &qword_176490);
  *(v1 + 96) = v5;
  sub_E21B8();

  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_E0858;

  return v8(0xD000000000000027, 0x800000000018ABC0, v1);
}

uint64_t sub_E0858()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_9F020();

    return v9(v8);
  }
}

uint64_t sub_E0988()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_E09EC()
{
  sub_1696C();
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_E1FF4;
  sub_E20B4();
  v3 = sub_E20E8(37);

  return v4(v3);
}

uint64_t sub_E0A94()
{
  sub_1696C();
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_E1FF4;
  sub_E20B4();
  v3 = sub_E20E8(22);

  return v4(v3);
}

uint64_t sub_E0B3C()
{
  sub_1696C();
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_E1FF4;
  sub_E20B4();
  v3 = sub_E20E8(32);

  return v4(v3);
}

uint64_t sub_E0BE4()
{
  sub_D2DC();
  *(v1 + 65) = v2;
  *(v1 + 64) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v0;
  v5 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v5);
  *(v1 + 32) = sub_D3C8();
  v6 = sub_D388();

  return _swift_task_switch(v6);
}

uint64_t sub_E0C70()
{
  sub_31520();
  v19 = v3;
  sub_D3A4();
  sub_E2128();
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v4 = swift_allocObject();
  v5 = sub_E211C(v4);
  v6 = sub_AE798(v5, xmmword_16EE50);
  sub_E2134(v6, v7, &qword_1E6300, &qword_16ECE0);
  v8 = sub_16A0C4();
  sub_AE7CC(v8);
  if (v9)
  {
    sub_D188(v0, &qword_1E6300, &qword_16ECE0);
    sub_E208C();
  }

  else
  {
    sub_E214C();
    sub_AE7F8();
    sub_93D80();
    v10();
  }

  sub_E20CC();
  *(v2 + 80) = v12;
  *(v2 + 88) = v11;
  *(v2 + 96) = v13;
  *(v2 + 120) = &type metadata for Bool;
  *(v2 + 128) = v0;
  *(v2 + 136) = 0x800000000018BD80;
  *(v2 + 168) = &type metadata for Bool;
  *(v2 + 144) = v14;
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  sub_D3E0();
  *(v1 + 48) = v15;
  *v15 = v16;
  v15[1] = sub_E0E00;
  sub_E2164();

  return v17();
}

uint64_t sub_E0E00()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_9F020();

    return v9(v8);
  }
}

uint64_t sub_E0F30()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_E0F94()
{
  swift_allocObject();
  sub_93D80();
  return sub_E0FE4(v0, v1, v2);
}

uint64_t sub_E0FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v12 = sub_D414(v11);
  __chkstk_darwin(v12);
  sub_2F868(a1, &v16 - v13, &qword_1E5B48, &unk_16DDB0);
  (*(v7 + 16))(v10, a2, v3);
  v14 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_D188(a1, &qword_1E5B48, &unk_16DDB0);
  return v14;
}

uint64_t sub_E115C(uint64_t a1, uint64_t a2)
{
  sub_16A164();
  sub_5B1C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16A0E4();
  (*(v5 + 8))(a2, v2);
  return v9;
}

unint64_t sub_E1264()
{
  result = qword_1EB950;
  if (!qword_1EB950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB950);
  }

  return result;
}

unint64_t sub_E12B8()
{
  result = qword_1EB958;
  if (!qword_1EB958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB958);
  }

  return result;
}

unint64_t sub_E130C()
{
  result = qword_1EB960;
  if (!qword_1EB960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB960);
  }

  return result;
}

unint64_t sub_E1360()
{
  result = qword_1EB968;
  if (!qword_1EB968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB968);
  }

  return result;
}

unint64_t sub_E13B4()
{
  result = qword_1EB970;
  if (!qword_1EB970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB970);
  }

  return result;
}

unint64_t sub_E1408()
{
  result = qword_1EB978;
  if (!qword_1EB978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB978);
  }

  return result;
}

unint64_t sub_E145C()
{
  result = qword_1EB980;
  if (!qword_1EB980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB980);
  }

  return result;
}

unint64_t sub_E14B0()
{
  result = qword_1EB988;
  if (!qword_1EB988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB988);
  }

  return result;
}

unint64_t sub_E1504()
{
  result = qword_1EB990;
  if (!qword_1EB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990);
  }

  return result;
}

unint64_t sub_E1558()
{
  result = qword_1EB998;
  if (!qword_1EB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998);
  }

  return result;
}

unint64_t sub_E15AC()
{
  result = qword_1EB9A0;
  if (!qword_1EB9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9A0);
  }

  return result;
}

unint64_t sub_E1600()
{
  result = qword_1EB9A8;
  if (!qword_1EB9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CarCommandsCATsSimple.PowerLevelDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xE1770);
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

_BYTE *storeEnumTagSinglePayload for CarCommandsCATsSimple.TrunkStatusDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xE1884);
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

_BYTE *sub_E18DC(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0xE1978);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_E19B0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xE1A7CLL);
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

_BYTE *storeEnumTagSinglePayload for CarCommandsCATsSimple.DisambiguationLabelsDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xE1B80);
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

unint64_t sub_E1BBC()
{
  result = qword_1EB9B0;
  if (!qword_1EB9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9B0);
  }

  return result;
}

unint64_t sub_E1C14()
{
  result = qword_1EB9B8;
  if (!qword_1EB9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9B8);
  }

  return result;
}

unint64_t sub_E1C6C()
{
  result = qword_1EB9C0;
  if (!qword_1EB9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9C0);
  }

  return result;
}

unint64_t sub_E1CC4()
{
  result = qword_1EB9C8;
  if (!qword_1EB9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9C8);
  }

  return result;
}

unint64_t sub_E1D1C()
{
  result = qword_1EB9D0;
  if (!qword_1EB9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9D0);
  }

  return result;
}

unint64_t sub_E1D74()
{
  result = qword_1EB9D8;
  if (!qword_1EB9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9D8);
  }

  return result;
}

unint64_t sub_E1DCC()
{
  result = qword_1EB9E0;
  if (!qword_1EB9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9E0);
  }

  return result;
}

unint64_t sub_E1E24()
{
  result = qword_1EB9E8;
  if (!qword_1EB9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9E8);
  }

  return result;
}

unint64_t sub_E1E7C()
{
  result = qword_1EB9F0;
  if (!qword_1EB9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9F0);
  }

  return result;
}

unint64_t sub_E1ED4()
{
  result = qword_1EB9F8;
  if (!qword_1EB9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9F8);
  }

  return result;
}

unint64_t sub_E1F2C()
{
  result = qword_1EBA00;
  if (!qword_1EBA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA00);
  }

  return result;
}

unint64_t sub_E1F84()
{
  result = qword_1EBA08;
  if (!qword_1EBA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA08);
  }

  return result;
}

uint64_t sub_E2008(uint64_t a1)
{

  return sub_9E2C(v1, 1, a1);
}

__n128 *sub_E2028(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656C746954707061;
  result[2].n128_u64[1] = 0xE800000000000000;
  return result;
}

uint64_t sub_E2048()
{

  return sub_9E2C(v1, 1, v0);
}

double sub_E208C()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t sub_E2134(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2F868(v4, v5, a3, a4);
}

uint64_t *sub_E214C()
{
  *(v1 + 72) = v0;

  return sub_10888((v1 + 48));
}

uint64_t sub_E2188(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t type metadata accessor for CarCommandsGetSignalActivationStatusCATsSimple(uint64_t a1)
{
  result = qword_1EBA10;
  if (!qword_1EBA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E2258(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 81) = a3;
  *(v5 + 80) = a2;
  *(v5 + 16) = a1;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  *(v5 + 40) = swift_task_alloc();
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_E230C);
}

uint64_t sub_E230C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  *(v3 + 16) = xmmword_176380;
  *(v3 + 32) = 0x656D614E726163;
  *(v3 + 40) = 0xE700000000000000;
  sub_4EA90(v2, v1, &qword_1E6300, &qword_16ECE0);
  v4 = sub_16A0C4();
  if (sub_9E2C(v1, 1, v4) == 1)
  {
    sub_4EAF4(*(v0 + 48), &qword_1E6300, &qword_16ECE0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    sub_10888((v3 + 48));
    sub_4EB50();
    (*(v5 + 32))();
  }

  v6 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = *(v0 + 81);
  v9 = *(v0 + 80);
  *(v3 + 80) = 0x6E4F6C616E676973;
  *(v3 + 88) = 0xE800000000000000;
  *(v3 + 96) = v9;
  *(v3 + 120) = &type metadata for Bool;
  *(v3 + 128) = 0x6C62697369567369;
  *(v3 + 136) = 0xE900000000000065;
  *(v3 + 144) = v8;
  *(v3 + 168) = &type metadata for Bool;
  strcpy((v3 + 176), "appIdentifer");
  *(v3 + 189) = 0;
  *(v3 + 190) = -5120;
  sub_4EA90(v7, v6, &qword_1E6300, &qword_16ECE0);
  if (sub_9E2C(v6, 1, v4) == 1)
  {
    sub_4EAF4(*(v0 + 40), &qword_1E6300, &qword_16ECE0);
    *(v3 + 192) = 0u;
    *(v3 + 208) = 0u;
  }

  else
  {
    *(v3 + 216) = v4;
    sub_10888((v3 + 192));
    sub_4EB50();
    (*(v10 + 32))();
  }

  v13 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *v11 = v0;
  v11[1] = sub_4E5D8;

  return v13(0xD00000000000003ALL, 0x800000000018C110, v3);
}

uint64_t sub_E262C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v11 - 8);
  sub_4EA90(a1, &v15 - v12, &qword_1E5B48, &unk_16DDB0);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_4EAF4(a1, &qword_1E5B48, &unk_16DDB0);
  return v13;
}

uint64_t sub_E27A8(uint64_t a1, uint64_t a2)
{
  sub_16A164();
  sub_5B1C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16A0E4();
  (*(v5 + 8))(a2, v2);
  return v9;
}

unint64_t sub_E28B0@<X0>(void *a1@<X8>)
{
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = sub_E2B94(0xD00000000000001ALL, 0x800000000018C150);
  if (!v3)
  {
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v4 = sub_16A584();
    sub_9DA0(v4, qword_1E65C0);
    v5 = sub_16A9A4();
    sub_386D8(v5, 2uLL, 0xD00000000000009ALL, 0x800000000018C170, 0xD00000000000001DLL, 0x800000000018C210, 23, 0xD00000000000004BLL, 0x800000000018C230);
    v3 = [objc_opt_self() standardUserDefaults];
  }

  v6 = v3;
  result = sub_E2BF8();
  a1[3] = result;
  a1[4] = &off_1D8EA8;
  *a1 = v6;
  return result;
}

id sub_E2A74(uint64_t a1, uint64_t a2)
{
  v3 = sub_16A644();
  v4 = [v2 BOOLForKey:v3];

  return v4;
}

void sub_E2ADC(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_16A644();
  [v3 setBool:a1 & 1 forKey:v5];
}

id sub_E2B94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_16A644();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

unint64_t sub_E2BF8()
{
  result = qword_1EBA60;
  if (!qword_1EBA60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA60);
  }

  return result;
}

uint64_t type metadata accessor for CarCommandsChangeStationByFrequencyCATsSimple(uint64_t a1)
{
  result = qword_1EBA68;
  if (!qword_1EBA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E2D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v11 - 8);
  sub_57A0(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_5810(a1);
  return v13;
}

uint64_t sub_E2E98(uint64_t a1, uint64_t a2)
{
  sub_16A164();
  sub_5B1C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16A0E4();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_E2FAC(char a1)
{
  sub_EAC54();
  if (v1 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_93F70(v1, 0xE700000000000000, v2);
  }

  swift_bridgeObjectRelease_n();
  return v3 & 1;
}

uint64_t sub_E3024(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  sub_EAC54();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_EAB2C(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_E30B0()
{
  sub_D434();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 0xD00000000000001FLL;
  }

  else
  {
    v4 = 0x656D614E726163;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = v1;
  }

  if (v0)
  {
    v6 = 0xD00000000000001FLL;
  }

  else
  {
    v6 = 0x656D614E726163;
  }

  if (v0)
  {
    v7 = v1;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_EAB2C(v4, v0, v6);
  }

  return v9 & 1;
}

uint64_t sub_E3144(char a1, uint64_t a2)
{
  v2 = 0x656D614E726163;
  if (a1)
  {
    sub_EAC60();
    if (v4 == 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    if (v4 == 1)
    {
      v9 = v5;
    }

    else
    {
      v9 = (v3 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
    v8 = 0x656D614E726163;
  }

  if (a2)
  {
    sub_EAC60();
    sub_D434();
    if (v11 == 1)
    {
      v2 = v13;
    }

    else
    {
      v2 = v14;
    }

    if (v11 == 1)
    {
      v15 = v12;
    }

    else
    {
      v15 = v10;
    }
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  if (v8 == v2 && v9 == v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_EAB2C(v8, a2, v2);
  }

  return v17 & 1;
}

uint64_t sub_E3200(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xEB00000000737574;
  }

  sub_EAC54();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_EAB2C(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_E3298(uint64_t a1, uint64_t a2)
{
  sub_EAE0C();
  switch(v4)
  {
    case 1:
      v2 = 0xE800000000000000;
      break;
    case 2:
      v2 = 0xE700000000000000;
      break;
    case 3:
      v2 = 0xE900000000000079;
      break;
    default:
      break;
  }

  sub_EADF4();
  switch(v8)
  {
    case 1:
      v3 = 0xE800000000000000;
      v7 = 0x6E6769736C6C6163;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v7 = 0x6C656E6E616863;
      break;
    case 3:
      v7 = 0x636E657571657266;
      v3 = 0xE900000000000079;
      break;
    case 4:
      v7 = 1701667182;
      break;
    default:
      break;
  }

  if (v5 == v7 && v2 == v3)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_EAB2C(v5, v6, v7);
  }

  return v10 & 1;
}

uint64_t sub_E342C(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 1952540019;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2 == 1)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0x800000000017F060;
    }
  }

  else
  {
    v4 = 0x800000000017F040;
    v3 = 0xD000000000000015;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 1952540019;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0x800000000017F060;
    }
  }

  else
  {
    v6 = 0x800000000017F040;
    v5 = 0xD000000000000015;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_E3500(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6D72616C41726163;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x6D72616C41726163;
  switch(v4)
  {
    case 1:
      v5 = 0x616D696C43726163;
      v3 = 0xEA00000000006574;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x6B636F4C726163;
      break;
    case 3:
      v5 = 0x6B6E757254726163;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x616D696C43726163;
      v6 = 0xEA00000000006574;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x6B636F4C726163;
      break;
    case 3:
      v2 = 0x6B6E757254726163;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_E3660(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x656C746974;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x646E616D6D6F63;
    }

    else
    {
      v4 = 0x4449707061;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x656C746974;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x646E616D6D6F63;
    }

    else
    {
      v2 = 0x4449707061;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_E3744(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x7265707075;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7265707075;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x656C6464696DLL;
      break;
    case 2:
      v5 = 0x7265776F6CLL;
      break;
    case 3:
      v5 = 0x646E417265707075;
      v3 = 0xED00007265776F4CLL;
      break;
    case 4:
      v5 = 0x6E41656C6464696DLL;
      v3 = 0xEE007265776F4C64;
      break;
    case 5:
      v5 = 0x726F707075736E75;
      v3 = 0xEB00000000646574;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x656C6464696DLL;
      break;
    case 2:
      v2 = 0x7265776F6CLL;
      break;
    case 3:
      v2 = 0x646E417265707075;
      v6 = 0xED00007265776F4CLL;
      break;
    case 4:
      v2 = 0x6E41656C6464696DLL;
      v6 = 0xEE007265776F4C64;
      break;
    case 5:
      v2 = 0x726F707075736E75;
      v6 = 0xEB00000000646574;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_E3938(uint64_t a1, uint64_t a2)
{
  sub_EAE0C();
  switch(v4)
  {
    case 1:
      sub_851F8();
      v2 = 0xEA00000000006E6FLL;
      break;
    case 3:
      sub_EAE40();
      break;
    case 4:
      sub_EABBC();
      break;
    case 5:
      v2 = 0xE500000000000000;
      break;
    default:
      break;
  }

  sub_EADF4();
  switch(v8)
  {
    case 1:
      sub_EAC30();
      v3 = 0xEA00000000006E6FLL;
      break;
    case 2:
      v7 = 1769105779;
      break;
    case 3:
      v3 = 0xE500000000000000;
      sub_EAD18();
      break;
    case 4:
      sub_EABA8();
      break;
    case 5:
      v3 = 0xE500000000000000;
      v7 = 0x726568746FLL;
      break;
    default:
      break;
  }

  if (v5 == v7 && v2 == v3)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_EAB2C(v5, v6, v7);
  }

  return v10 & 1;
}

uint64_t sub_E3AA8(char a1, uint64_t a2)
{
  v3 = 0xE200000000000000;
  v4 = 28271;
  switch(a1)
  {
    case 1:
      v3 = 0xE300000000000000;
      v4 = sub_EAC04();
      break;
    case 2:
      v3 = 0xE600000000000000;
      v4 = sub_EACF8();
      break;
    case 3:
      v3 = 0xE800000000000000;
      v4 = sub_EAB04();
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 28271;
  switch(a2)
  {
    case 1:
      v5 = 0xE300000000000000;
      v6 = 6710895;
      break;
    case 2:
      v5 = 0xE600000000000000;
      sub_EACC8();
      break;
    case 3:
      v5 = 0xE800000000000000;
      sub_EAB18();
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C(v4, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_E3BBC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7562617;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7562617;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_E3CB8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x7473756A6461;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x7473756A6461;
  switch(v4)
  {
    case 1:
      v5 = 0x74736575516B7361;
      v3 = 0xEB000000006E6F69;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x65736F6C63;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1953069157;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1801678700;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 1852141679;
      break;
    case 6:
      v3 = 0xE400000000000000;
      v5 = 1802658160;
      break;
    case 7:
      v3 = 0xE700000000000000;
      v5 = 0x66664F6E727574;
      break;
    case 8:
      v5 = 0x6E4F6E727574;
      break;
    case 9:
      v3 = 0xE400000000000000;
      v5 = 1702257011;
      break;
    case 10:
      v5 = 0x61636F4C646E6573;
      v3 = 0xEC0000006E6F6974;
      break;
    case 11:
      v5 = 0x6B636F6C6E75;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x74736575516B7361;
      v6 = 0xEB000000006E6F69;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x65736F6C63;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1953069157;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1801678700;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v2 = 1852141679;
      break;
    case 6:
      v6 = 0xE400000000000000;
      v2 = 1802658160;
      break;
    case 7:
      v6 = 0xE700000000000000;
      v2 = 0x66664F6E727574;
      break;
    case 8:
      v2 = 0x6E4F6E727574;
      break;
    case 9:
      v6 = 0xE400000000000000;
      v2 = 1702257011;
      break;
    case 10:
      v2 = 0x61636F4C646E6573;
      v6 = 0xEC0000006E6F6974;
      break;
    case 11:
      v2 = 0x6B636F6C6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_E3FC4(uint64_t a1)
{
  sub_EAD18();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x656E6F687069;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v4 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = v3;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x656E6F687069;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2 == 1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v5 == v3 && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_EAB2C(v5, v2, v3);
  }

  return v9 & 1;
}

uint64_t sub_E40B8(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_EAC54();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_EAB2C(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_E4140(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6563696F76;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6563696F76;
  switch(v4)
  {
    case 1:
      v5 = sub_EAC44(21);
      break;
    case 2:
      v5 = sub_EABBC();
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x656D756C6F76;
      break;
    case 4:
      v5 = sub_EAE8C();
      v3 = 0xE900000000000065;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = sub_93B08();
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      sub_EAC10();
      break;
    case 2:
      sub_EABA8();
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x656D756C6F76;
      break;
    case 4:
      sub_EAE6C();
      v6 = 0xE900000000000065;
      break;
    case 5:
      v6 = 0xE700000000000000;
      sub_EAAF0();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_E42AC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x737569736C6563;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x737569736C6563;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x6E69766C656BLL;
      break;
    case 2:
      v5 = 0x65686E6572686166;
      v3 = 0xEA00000000007469;
      break;
    case 3:
      v5 = sub_EAC44(21);
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x6E69766C656BLL;
      break;
    case 2:
      v2 = 0x65686E6572686166;
      v6 = 0xEA00000000007469;
      break;
    case 3:
      sub_EAC10();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_E43FC(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xEB00000000656D75;
  }

  sub_EAC54();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_EAB2C(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_E4494(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEE00676E69747465;
  v3 = 0x535F6E6F6D6D6F63;
  v4 = a1;
  v5 = "common_Measurement";
  v6 = "common_RadioStation";
  v7 = 0x535F6E6F6D6D6F63;
  v8 = 0xEE00676E69747465;
  v9 = "common_UserEntity";
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v8 = 0x800000000017E350;
      v7 = 0xD000000000000013;
      break;
    case 3:
      v7 = 0x415F6E6F6D6D6F63;
      v8 = 0xEA00000000007070;
      break;
    case 4:
      v8 = 0x800000000017E370;
      v7 = 0xD000000000000012;
      break;
    case 5:
      v8 = 0xE700000000000000;
      v7 = sub_93B08();
      break;
    default:
      v7 = 0xD000000000000011;
      v8 = 0x800000000017E320;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v2 = (v6 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000013;
      break;
    case 3:
      v3 = 0x415F6E6F6D6D6F63;
      v2 = 0xEA00000000007070;
      break;
    case 4:
      v2 = (v5 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000012;
      break;
    case 5:
      v2 = 0xE700000000000000;
      sub_EAAF0();
      break;
    default:
      v3 = 0xD000000000000011;
      v2 = (v9 - 32) | 0x8000000000000000;
      break;
  }

  if (v7 == v3 && v8 == v2)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_EAB50(v7, a2, v3);
  }

  return v11 & 1;
}

uint64_t sub_E4670(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x726564756F6CLL;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x726564756F6CLL;
  switch(v4)
  {
    case 1:
      v5 = 0x7942726564756F6CLL;
      v3 = 0xEF746E6563726550;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x74736564756F6CLL;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x72657465697571;
      break;
    case 4:
      v5 = sub_EAC44(16);
      break;
    case 5:
      v3 = 0xE800000000000000;
      v5 = 0x7473657465697571;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x7942726564756F6CLL;
      v6 = 0xEF746E6563726550;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x74736564756F6CLL;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x72657465697571;
      break;
    case 4:
      sub_EAC10();
      break;
    case 5:
      v6 = 0xE800000000000000;
      v2 = 0x7473657465697571;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_E485C(uint64_t a1, uint64_t a2)
{
  sub_EAE0C();
  switch(v4)
  {
    case 2:
      sub_851F8();
      v2 = 0xEA00000000006E6FLL;
      break;
    case 3:
      sub_EAE40();
      break;
    case 4:
      sub_EABBC();
      break;
    default:
      break;
  }

  sub_EADF4();
  switch(v8)
  {
    case 1:
      v7 = 1769105779;
      break;
    case 2:
      sub_EAC30();
      v3 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v3 = 0xE500000000000000;
      sub_EAD18();
      break;
    case 4:
      sub_EABA8();
      break;
    default:
      break;
  }

  if (v5 == v7 && v2 == v3)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_EAB2C(v5, v6, v7);
  }

  return v10 & 1;
}

uint64_t sub_E49B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_EAB2C(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_E4A38(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6C61756E616DLL;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v4 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0x6974616D6F747561;
    v6 = 0xE900000000000063;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6C61756E616DLL;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (a2 == 1)
    {
      v2 = 0xE600000000000000;
    }

    else
    {
      v2 = 0xE700000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB50(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_E4B24(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x7265646C6F63;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x7265646C6F63;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v6 = 1684828003;
      goto LABEL_5;
    case 2:
      v5 = 0x72656D726177;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v6 = 1836212599;
LABEL_5:
      v5 = v6 | 0x74736500000000;
      break;
    default:
      break;
  }

  v7 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE700000000000000;
      v8 = 1684828003;
      goto LABEL_10;
    case 2:
      v2 = 0x72656D726177;
      break;
    case 3:
      v7 = 0xE700000000000000;
      v8 = 1836212599;
LABEL_10:
      v2 = v8 | 0x74736500000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_EAB2C(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_E4C60(char a1)
{
  if (a1)
  {
    v1 = 0xE400000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  sub_EAC54();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_EAB2C(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_E4CE0(uint64_t a1, uint64_t a2)
{
  sub_EAE0C();
  switch(v4)
  {
    case 1:
      v2 = 0xE500000000000000;
      break;
    case 2:
      v2 = 0xEC000000726F6F6CLL;
      break;
    case 3:
      v2 = 0xEA0000000000646CLL;
      break;
    case 4:
      sub_EAC44(18);
      break;
    default:
      break;
  }

  sub_EADF4();
  switch(v8)
  {
    case 1:
      v3 = 0xE500000000000000;
      v7 = 0x726F6F6C66;
      break;
    case 2:
      v7 = 0x46646E4165636166;
      v3 = 0xEC000000726F6F6CLL;
      break;
    case 3:
      v7 = 0x65696873646E6977;
      v3 = 0xEA0000000000646CLL;
      break;
    case 4:
      sub_EAC10();
      break;
    default:
      break;
  }

  if (v5 == v7 && v2 == v3)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_EAB2C(v5, v6, v7);
  }

  return v10 & 1;
}

uint64_t sub_E4E6C()
{
  sub_EAE18();
  v3 = 7105633;
  switch(v4)
  {
    case 1:
      v0 = 0xE600000000000000;
      v3 = 0x726576697264;
      break;
    case 2:
      v3 = 0x65676E6573736170;
      v0 = 0xE900000000000072;
      break;
    case 3:
      v0 = 0xE500000000000000;
      v3 = sub_EAE00() & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
      break;
    case 4:
      v3 = sub_EAE00() | 0x66654C7400000000;
      goto LABEL_10;
    case 5:
      v3 = sub_EAE00() | 0x6769527400000000;
      v0 = 0xEA00000000007468;
      break;
    case 6:
      v0 = 0xE800000000000000;
      v3 = 0x7466654C72616572;
      break;
    case 7:
      v3 = 0x6867695272616572;
LABEL_10:
      v0 = 0xE900000000000074;
      break;
    case 8:
      v0 = 0xE400000000000000;
      v3 = 1918985586;
      break;
    case 9:
      v3 = sub_EABD0();
      v0 = 0xEC0000007466654CLL;
      break;
    case 10:
      v3 = sub_EABD0();
      v0 = 0xED00007468676952;
      break;
    case 11:
      v0 = 0xE800000000000000;
      v3 = sub_EABD0();
      break;
    case 12:
      v0 = 0xE700000000000000;
      v3 = sub_93B08();
      break;
    default:
      break;
  }

  v5 = 0xE300000000000000;
  switch(v1)
  {
    case 1:
      v5 = 0xE600000000000000;
      v2 = 0x726576697264;
      break;
    case 2:
      v2 = 0x65676E6573736170;
      v5 = 0xE900000000000072;
      break;
    case 3:
      v5 = 0xE500000000000000;
      sub_EACE8();
      break;
    case 4:
      v2 = 0x66654C746E6F7266;
      goto LABEL_24;
    case 5:
      v2 = 0x676952746E6F7266;
      v5 = 0xEA00000000007468;
      break;
    case 6:
      v5 = 0xE800000000000000;
      v2 = 0x7466654C72616572;
      break;
    case 7:
      v2 = 0x6867695272616572;
LABEL_24:
      v5 = 0xE900000000000074;
      break;
    case 8:
      v5 = 0xE400000000000000;
      v2 = 1918985586;
      break;
    case 9:
      sub_EAB94();
      v5 = 0xEC0000007466654CLL;
      break;
    case 10:
      sub_EAB94();
      v5 = 0xED00007468676952;
      break;
    case 11:
      v5 = 0xE800000000000000;
      sub_EAB94();
      break;
    case 12:
      v5 = 0xE700000000000000;
      sub_EAAF0();
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_EAB2C(v3, v1, v2);
  }

  return v7 & 1;
}

uint64_t sub_E5160(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  sub_EAC54();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_EAB2C(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_E51EC()
{
  sub_EAE18();
  v3 = 7105633;
  switch(v4)
  {
    case 1:
      v0 = 0xE500000000000000;
      v3 = sub_EAE00() & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
      break;
    case 2:
      v0 = 0xE400000000000000;
      v3 = 1918985586;
      break;
    case 3:
      v0 = 0xE700000000000000;
      v3 = sub_93B08();
      break;
    default:
      break;
  }

  v5 = 0xE300000000000000;
  switch(v1)
  {
    case 1:
      v5 = 0xE500000000000000;
      sub_EACE8();
      break;
    case 2:
      v5 = 0xE400000000000000;
      v2 = 1918985586;
      break;
    case 3:
      v5 = 0xE700000000000000;
      sub_EAAF0();
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_EAB2C(v3, v1, v2);
  }

  return v7 & 1;
}

uint64_t sub_E5300(char a1)
{
  if (a1)
  {
    v1 = "appDisambiguationTitle";
  }

  else
  {
    v1 = "climateStoppingLabel";
  }

  v2 = v1 | 0x8000000000000000;
  sub_EAC54();
  if (v9)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = v3 == v5 && v2 == (v8 | 0x8000000000000000);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_EAB2C(v3, v4, v5);
  }

  return v10 & 1;
}

uint64_t sub_E5394()
{
  sub_EAAD0();
  v4 = v3;
  v5 = "climateStoppingLabel";
  v6 = v2;
  v7 = v0;
  v8 = "climateStartingLabel";
  switch(v4)
  {
    case 1:
      v6 = sub_EAD08() & 0xFFFFFFFFFFFFLL | 0x4F65000000000000;
      v7 = 0xEF6C6562614C6666;
      break;
    case 2:
      sub_EAD08();
      v7 = 19566;
      sub_EAC20();
      break;
    case 3:
      v6 = 0xD000000000000014;
      v9 = "l";
      goto LABEL_6;
    case 4:
      v6 = 0xD000000000000014;
      v9 = "climateStartingLabel";
LABEL_6:
      v7 = v9 | 0x8000000000000000;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      sub_EACB8();
      v2 = v10 & 0xFFFFFFFFFFFFLL | 0x4F65000000000000;
      v0 = 0xEF6C6562614C6666;
      break;
    case 2:
      sub_EACB8();
      v0 = 19566;
      sub_9FDC();
      break;
    case 3:
      v2 = 0xD000000000000014;
      v11 = v8 - 32;
      goto LABEL_12;
    case 4:
      v2 = 0xD000000000000014;
      v11 = v5 - 32;
LABEL_12:
      v0 = v11 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v6 == v2 && v7 == v0)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_EAB50(v6, v1, v2);
  }

  return v13 & 1;
}

uint64_t sub_E5514()
{
  sub_EAAD0();
  v4 = v3;
  v5 = "signalStoppingLabel";
  v6 = v2;
  v7 = v0;
  v8 = "signalStartingLabel";
  switch(v4)
  {
    case 1:
      v7 = 19558;
      sub_EAC20();
      break;
    case 2:
      sub_EAE2C();
      break;
    case 3:
      v6 = 0xD000000000000013;
      v9 = "alOffLabel";
      goto LABEL_6;
    case 4:
      v6 = 0xD000000000000013;
      v9 = "signalStartingLabel";
LABEL_6:
      v7 = v9 | 0x8000000000000000;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 19558;
      sub_9FDC();
      break;
    case 2:
      sub_A234();
      break;
    case 3:
      v2 = 0xD000000000000013;
      v10 = v8 - 32;
      goto LABEL_12;
    case 4:
      v2 = 0xD000000000000013;
      v10 = v5 - 32;
LABEL_12:
      v0 = v10 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v6 == v2 && v7 == v0)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_EAB50(v6, v1, v2);
  }

  return v12 & 1;
}

uint64_t sub_E569C()
{
  sub_EAAD0();
  v4 = v3;
  v5 = "trunkOpeningLabel";
  v6 = v2;
  v7 = v0;
  v8 = "trunkClosedLabel";
  switch(v4)
  {
    case 1:
      v6 = 0xD000000000000010;
      v7 = 0x800000000017F1D0;
      break;
    case 2:
      v7 = 19566;
      sub_EAC20();
      break;
    case 3:
      v7 = 0x800000000017F1F0;
      v6 = 0xD000000000000011;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v2 = 0xD000000000000010;
      v0 = (v8 - 32) | 0x8000000000000000;
      break;
    case 2:
      v0 = 19566;
      sub_9FDC();
      break;
    case 3:
      v0 = (v5 - 32) | 0x8000000000000000;
      sub_A1A8();
      v2 = v9 | 1;
      break;
    default:
      break;
  }

  if (v6 == v2 && v7 == v0)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_EAB50(v6, v1, v2);
  }

  return v11 & 1;
}

uint64_t sub_E57F8()
{
  sub_EAAD0();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x4C7972616D697270;
    }

    else
    {
      v5 = 0x7261646E6F636573;
    }

    if (v4 == 1)
    {
      v6 = v0;
    }

    else
    {
      v6 = 0xEE006C6562614C79;
    }
  }

  else
  {
    v5 = v3;
    v6 = v0;
  }

  if (v2)
  {
    v3 = v2 == 1 ? 0x4C7972616D697270 : 0x7261646E6F636573;
    if (v2 != 1)
    {
      v0 = 0xEE006C6562614C79;
    }
  }

  if (v5 == v3 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB50(v5, v2, v3);
  }

  return v8 & 1;
}

uint64_t sub_E58E4()
{
  sub_EAAD0();
  v4 = v3;
  v5 = v2;
  v6 = v0;
  switch(v4)
  {
    case 1:
      v5 = sub_EACF8() & 0xFFFFFFFFFFFFLL | 0x614C000000000000;
      v6 = 0xEB000000006C6562;
      break;
    case 2:
      v5 = 0x4C676E696B636F6CLL;
      v6 = v0;
      break;
    case 3:
      sub_EAB04();
      sub_EAE2C();
      break;
    case 4:
      v6 = 19559;
      sub_EAC20();
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      sub_EACC8();
      v2 = v7 & 0xFFFFFFFFFFFFLL | 0x614C000000000000;
      v0 = 0xEB000000006C6562;
      break;
    case 2:
      v2 = 0x4C676E696B636F6CLL;
      break;
    case 3:
      sub_EAB18();
      sub_A234();
      break;
    case 4:
      v0 = 19559;
      sub_9FDC();
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_EAB50(v5, v1, v2);
  }

  return v9 & 1;
}

uint64_t sub_E5A58(uint64_t a1)
{
  sub_EACE8();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 1918985586;
    }

    else
    {
      v5 = 7105633;
    }

    if (v4 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = v3;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1918985586;
    }

    else
    {
      v3 = 7105633;
    }

    if (v2 == 1)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v5 == v3 && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_EAB2C(v5, v2, v3);
  }

  return v9 & 1;
}

uint64_t sub_E5B1C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x616964656DLL;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x616964656DLL;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v6 = sub_EAD08();
      goto LABEL_4;
    case 2:
      v5 = 0x6574736F72666564;
      v3 = 0xE900000000000072;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1701996916;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v6 = 0x6C6369686576;
LABEL_4:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 2036625250;
      break;
    case 6:
      v5 = 0x7465536F69647561;
      v3 = 0xED000073676E6974;
      break;
    case 7:
      v5 = 0x6979616C50776F6ELL;
      v3 = 0xEA0000000000676ELL;
      break;
    case 8:
      v3 = 0xE400000000000000;
      v5 = 1701736302;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE700000000000000;
      sub_EACB8();
      goto LABEL_14;
    case 2:
      v2 = 0x6574736F72666564;
      v7 = 0xE900000000000072;
      break;
    case 3:
      v7 = 0xE400000000000000;
      v2 = 1701996916;
      break;
    case 4:
      v7 = 0xE700000000000000;
      v8 = 0x6C6369686576;
LABEL_14:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 5:
      v7 = 0xE400000000000000;
      v2 = 2036625250;
      break;
    case 6:
      v2 = 0x7465536F69647561;
      v7 = 0xED000073676E6974;
      break;
    case 7:
      v2 = 0x6979616C50776F6ELL;
      v7 = 0xEA0000000000676ELL;
      break;
    case 8:
      v7 = 0xE400000000000000;
      v2 = 1701736302;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_EAB2C(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_E5D70(char a1, uint64_t a2)
{
  v3 = 0xE200000000000000;
  v4 = 28006;
  switch(a1)
  {
    case 1:
      v4 = 28001;
      break;
    case 2:
      v4 = 28024;
      break;
    case 3:
      v3 = 0xE300000000000000;
      v4 = 6447460;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v4 = 0x6261646D66;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v4 = sub_93B08();
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 28006;
  switch(a2)
  {
    case 1:
      v6 = 28001;
      break;
    case 2:
      v6 = 28024;
      break;
    case 3:
      v5 = 0xE300000000000000;
      v6 = 6447460;
      break;
    case 4:
      v5 = 0xE500000000000000;
      v6 = 0x6261646D66;
      break;
    case 5:
      v5 = 0xE700000000000000;
      sub_EAAF0();
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C(v4, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_E5F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_EAA7C(a4, a5, a6);
  sub_16A7A4();
  sub_16A7A4();
  if (v15 == v13 && v16 == v14)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_EAB50(v15, v9, v13);
  }

  return v11 & 1;
}

uint64_t sub_E6024()
{

  v0 = 0;
  while (v0 != 30)
  {
    v1 = *(&off_1D0038 + v0++ + 32);
    if (sub_E902C())
    {
      goto LABEL_6;
    }
  }

  v1 = 29;
LABEL_6:

  return v1;
}

BOOL sub_E60A8(char a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = (a2 + 32);
  sub_D434();
  v22 = v7;
  do
  {
    v8 = v4;
    if (v4-- == 0)
    {
      break;
    }

    v10 = 0xE600000000000000;
    v11 = 0x64656B636F6CLL;
    switch(*v5)
    {
      case 1:
        v10 = 0xE800000000000000;
        v12 = 0x696873616C66;
        goto LABEL_12;
      case 2:
        v11 = 0x746E656C6973;
        break;
      case 3:
        v10 = 0xE800000000000000;
        v12 = 0x69646E756F73;
LABEL_12:
        v11 = v12 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
        break;
      case 4:
        v10 = 0xE800000000000000;
        v11 = sub_EAB04();
        break;
      case 5:
        v10 = 0xE400000000000000;
        v11 = 1802658160;
        break;
      case 6:
        v10 = 0xE700000000000000;
        v11 = sub_93B08();
        break;
      case 7:
        v11 = 0x61635F7075746573;
        v10 = 0xED000079616C7072;
        break;
      case 8:
        v10 = 0xE300000000000000;
        v11 = 7827308;
        break;
      case 9:
        v10 = 0xE400000000000000;
        v11 = 1751607656;
        break;
      case 0xA:
        sub_A1A8();
        v11 = v14 + 1;
        v10 = 0x800000000017E3D0;
        break;
      case 0xB:
        sub_A1A8();
        v11 = v13 + 3;
        v10 = 0x800000000017E3F0;
        break;
      case 0xC:
        v11 = sub_851F8();
        v10 = 0xEE006574754D6E6FLL;
        break;
      case 0xD:
        v11 = 0xD000000000000010;
        v10 = v22;
        break;
      default:
        break;
    }

    v15 = 0xE600000000000000;
    v16 = 0x64656B636F6CLL;
    switch(a1)
    {
      case 1:
        v15 = 0xE800000000000000;
        v17 = 0x696873616C66;
        goto LABEL_27;
      case 2:
        v16 = 0x746E656C6973;
        break;
      case 3:
        v15 = 0xE800000000000000;
        v17 = 0x69646E756F73;
LABEL_27:
        v16 = v17 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
        break;
      case 4:
        v15 = 0xE800000000000000;
        sub_EAB18();
        break;
      case 5:
        v15 = 0xE400000000000000;
        v16 = 1802658160;
        break;
      case 6:
        v15 = 0xE700000000000000;
        sub_EAAF0();
        break;
      case 7:
        v16 = 0x61635F7075746573;
        v15 = 0xED000079616C7072;
        break;
      case 8:
        v15 = 0xE300000000000000;
        v16 = 7827308;
        break;
      case 9:
        v15 = 0xE400000000000000;
        v16 = 1751607656;
        break;
      case 10:
        sub_A1A8();
        v16 = v19 + 1;
        v15 = 0x800000000017E3D0;
        break;
      case 11:
        sub_A1A8();
        v16 = v18 + 3;
        v15 = 0x800000000017E3F0;
        break;
      case 12:
        sub_EAC30();
        v15 = 0xEE006574754D6E6FLL;
        break;
      case 13:
        v16 = 0xD000000000000010;
        v15 = v22;
        break;
      default:
        break;
    }

    if (v11 == v16 && v10 == v15)
    {

      return v8 != 0;
    }

    sub_EAC80(v11, v6, v16);
    sub_93E14();

    ++v5;
  }

  while ((v2 & 1) == 0);
  return v8 != 0;
}

BOOL sub_E6420(char a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = (a2 + 32);
  do
  {
    v6 = v4;
    if (v4-- == 0)
    {
      break;
    }

    v8 = 0xE500000000000000;
    v9 = 0x6563696F76;
    switch(*v5)
    {
      case 1:
        v9 = 0xD000000000000015;
        v8 = 0x800000000017E7D0;
        break;
      case 2:
        v8 = 0xE600000000000000;
        v9 = 0x7265676E6972;
        break;
      case 3:
        v8 = 0xE600000000000000;
        v9 = 0x656D756C6F76;
        break;
      case 4:
        v9 = sub_EAE8C();
        v8 = 0xE900000000000065;
        break;
      case 5:
        v8 = 0xE700000000000000;
        v9 = sub_93B08();
        break;
      default:
        break;
    }

    v10 = 0xE500000000000000;
    v11 = 0x6563696F76;
    switch(a1)
    {
      case 1:
        v11 = 0xD000000000000015;
        v10 = 0x800000000017E7D0;
        break;
      case 2:
        v10 = 0xE600000000000000;
        v11 = 0x7265676E6972;
        break;
      case 3:
        v10 = 0xE600000000000000;
        v11 = 0x656D756C6F76;
        break;
      case 4:
        sub_EAE6C();
        v10 = 0xE900000000000065;
        break;
      case 5:
        v10 = 0xE700000000000000;
        sub_EAAF0();
        break;
      default:
        break;
    }

    if (v9 == v11 && v8 == v10)
    {

      return v6 != 0;
    }

    sub_EAC80(v9, a2, v11);
    sub_93E14();

    ++v5;
  }

  while ((v2 & 1) == 0);
  return v6 != 0;
}

BOOL sub_E65F4(unsigned __int8 a1, uint64_t a2)
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

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_E6624(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  v4 = a1;
  do
  {
    v5 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v7 = *v3++;
    sub_76D10();
    isa = sub_16AAB4(qword_177030[v7]).super.super.isa;
    v9 = sub_16AAB4(qword_177030[v4]).super.super.isa;
    sub_37740();
    v10 = sub_16AAD4();
  }

  while ((v10 & 1) == 0);
  return v5 != 0;
}

BOOL sub_E66C0(char a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = (a2 + 32);
  sub_D434();
  v23 = v6;
  v24 = v7;
  sub_D434();
  v21 = v9;
  v22 = v10;
  do
  {
    v11 = v4;
    if (v4-- == 0)
    {
      break;
    }

    v13 = 0xE700000000000000;
    v14 = 0x656D614E726163;
    switch(*v5)
    {
      case 1:
        v14 = sub_EAE80();
        v13 = v22;
        break;
      case 2:
        v14 = sub_EAE80();
        v13 = 0x800000000017EDE0;
        break;
      case 3:
        v14 = 0xD000000000000018;
        v13 = 0x800000000017EE00;
        break;
      case 4:
        v14 = 0xD000000000000018;
        v13 = v23;
        break;
      case 5:
        v14 = sub_EAE80();
        v13 = v24;
        break;
      case 6:
        v14 = 0xD000000000000019;
        v13 = 0x800000000017EE60;
        break;
      case 7:
        v14 = 0xD000000000000010;
        v13 = 0x800000000017EE80;
        break;
      case 8:
        break;
      case 9:
        v13 = 0xEB00000000657079;
        v14 = 0x5474616553726163;
        break;
      case 0xA:
        v14 = 0x6D6572757361656DLL;
        v15 = 1433693797;
        goto LABEL_16;
      case 0xB:
        v14 = 0x74617265706D6574;
        v15 = 1432711797;
LABEL_16:
        v13 = v15 | 0xEF74696E00000000;
        break;
      case 0xC:
        v14 = 0x4D746E6556726163;
        v13 = 0xEB0000000065646FLL;
        break;
      default:
        v14 = 0xD000000000000015;
        v13 = v21;
        break;
    }

    v16 = 0xE700000000000000;
    v17 = 0x656D614E726163;
    switch(a1)
    {
      case 1:
        v17 = 0xD000000000000017;
        v16 = v22;
        break;
      case 2:
        v17 = 0xD000000000000017;
        v16 = 0x800000000017EDE0;
        break;
      case 3:
        v17 = 0xD000000000000018;
        v16 = 0x800000000017EE00;
        break;
      case 4:
        v17 = 0xD000000000000018;
        v16 = v23;
        break;
      case 5:
        v17 = 0xD000000000000017;
        v16 = v24;
        break;
      case 6:
        v17 = 0xD000000000000019;
        v16 = 0x800000000017EE60;
        break;
      case 7:
        v17 = 0xD000000000000010;
        v16 = 0x800000000017EE80;
        break;
      case 8:
        break;
      case 9:
        v16 = 0xEB00000000657079;
        v17 = 0x5474616553726163;
        break;
      case 10:
        v17 = 0x6D6572757361656DLL;
        v18 = 1433693797;
        goto LABEL_30;
      case 11:
        v17 = 0x74617265706D6574;
        v18 = 1432711797;
LABEL_30:
        v16 = v18 | 0xEF74696E00000000;
        break;
      case 12:
        v17 = 0x4D746E6556726163;
        v16 = 0xEB0000000065646FLL;
        break;
      default:
        v17 = 0xD000000000000015;
        v16 = v21;
        break;
    }

    if (v14 == v17 && v13 == v16)
    {

      return v11 != 0;
    }

    sub_EAC80(v14, v8, v17);
    sub_93E14();

    ++v5;
  }

  while ((v2 & 1) == 0);
  return v11 != 0;
}

BOOL sub_E6A8C(char a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = (a2 + 32);
  sub_D434();
  v22 = v7;
  do
  {
    v8 = v4;
    if (v4-- == 0)
    {
      break;
    }

    v10 = 0xEE0065636E657473;
    v11 = 0x6978456B63656863;
    switch(*v5)
    {
      case 1:
        v10 = 0xE600000000000000;
        v12 = 1650552421;
        goto LABEL_27;
      case 2:
        v11 = 0x6573616572636564;
        goto LABEL_22;
      case 3:
        v11 = 0xD000000000000015;
        v10 = 0x800000000017E250;
        break;
      case 4:
        v10 = 0xE700000000000000;
        v11 = 0x656C6261736964;
        break;
      case 5:
        v11 = 0x7461636F4C746567;
        v13 = 7237481;
        goto LABEL_19;
      case 6:
        sub_EAEA0();
        v11 = v14 + 2309;
LABEL_22:
        v10 = 0xEA00000000007942;
        break;
      case 7:
        v11 = 0xD000000000000015;
        v10 = v22;
        break;
      case 8:
        v10 = 0xE600000000000000;
        v11 = 0x627265566F6ELL;
        break;
      case 9:
        v10 = 0xE400000000000000;
        v11 = 1852141679;
        break;
      case 0xA:
        v10 = 0xE400000000000000;
        v11 = 2036427888;
        break;
      case 0xB:
        v10 = 0xE700000000000000;
        v11 = 0x74736575716572;
        break;
      case 0xC:
        v10 = 0xE400000000000000;
        v11 = 1851876211;
        break;
      case 0xD:
        v10 = 0xE300000000000000;
        v11 = 7628147;
        break;
      case 0xE:
        v11 = 0x757361654D746573;
        v10 = 0xEE00746E656D6572;
        break;
      case 0xF:
        v10 = 0xE900000000000072;
        v11 = 0x65626D754E746573;
        break;
      case 0x10:
        v11 = 0x6B63614270696B73;
        v10 = 0xEC00000064726177;
        break;
      case 0x11:
        v11 = 0x77726F4670696B73;
        v13 = 6582881;
LABEL_19:
        v10 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 0x12:
        v11 = 0x736972616D6D7573;
        v10 = 0xE900000000000065;
        break;
      case 0x13:
        v10 = 0xE600000000000000;
        v12 = 1734831988;
LABEL_27:
        v11 = v12 & 0xFFFF0000FFFFFFFFLL | 0x656C00000000;
        break;
      case 0x14:
        v10 = 0xE700000000000000;
        v11 = sub_93B08();
        break;
      default:
        break;
    }

    v15 = 0x6978456B63656863;
    v16 = 0xEE0065636E657473;
    switch(a1)
    {
      case 1:
        v16 = 0xE600000000000000;
        v17 = 1650552421;
        goto LABEL_51;
      case 2:
        v15 = 0x6573616572636564;
        goto LABEL_46;
      case 3:
        v15 = 0xD000000000000015;
        v16 = 0x800000000017E250;
        break;
      case 4:
        v16 = 0xE700000000000000;
        v15 = 0x656C6261736964;
        break;
      case 5:
        v15 = 0x7461636F4C746567;
        v18 = 7237481;
        goto LABEL_43;
      case 6:
        sub_EAEA0();
        v15 = v19 + 2309;
LABEL_46:
        v16 = 0xEA00000000007942;
        break;
      case 7:
        v15 = 0xD000000000000015;
        v16 = v22;
        break;
      case 8:
        v16 = 0xE600000000000000;
        v15 = 0x627265566F6ELL;
        break;
      case 9:
        v16 = 0xE400000000000000;
        v15 = 1852141679;
        break;
      case 10:
        v16 = 0xE400000000000000;
        v15 = 2036427888;
        break;
      case 11:
        v16 = 0xE700000000000000;
        v15 = 0x74736575716572;
        break;
      case 12:
        v16 = 0xE400000000000000;
        v15 = 1851876211;
        break;
      case 13:
        v16 = 0xE300000000000000;
        v15 = 7628147;
        break;
      case 14:
        v15 = 0x757361654D746573;
        v16 = 0xEE00746E656D6572;
        break;
      case 15:
        v16 = 0xE900000000000072;
        v15 = 0x65626D754E746573;
        break;
      case 16:
        v15 = 0x6B63614270696B73;
        v16 = 0xEC00000064726177;
        break;
      case 17:
        v15 = 0x77726F4670696B73;
        v18 = 6582881;
LABEL_43:
        v16 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 18:
        v15 = 0x736972616D6D7573;
        v16 = 0xE900000000000065;
        break;
      case 19:
        v16 = 0xE600000000000000;
        v17 = 1734831988;
LABEL_51:
        v15 = v17 & 0xFFFF0000FFFFFFFFLL | 0x656C00000000;
        break;
      case 20:
        v16 = 0xE700000000000000;
        sub_EAAF0();
        break;
      default:
        break;
    }

    if (v11 == v15 && v10 == v16)
    {

      return v8 != 0;
    }

    sub_EAC80(v11, v6, v15);
    sub_93E14();

    ++v5;
  }

  while ((v2 & 1) == 0);
  return v8 != 0;
}

BOOL sub_E6FD0(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xE200000000000000;
    v8 = 28271;
    switch(*v4)
    {
      case 1:
        v7 = 0xE300000000000000;
        v8 = 6710895;
        break;
      case 2:
        v7 = 0xE600000000000000;
        v8 = 0x64656B636F6CLL;
        break;
      case 3:
        v7 = 0xE800000000000000;
        v8 = 0x64656B636F6C6E75;
        break;
      default:
        break;
    }

    v9 = 0xE200000000000000;
    v10 = 28271;
    switch(a1)
    {
      case 1:
        v9 = 0xE300000000000000;
        v10 = 6710895;
        break;
      case 2:
        v9 = 0xE600000000000000;
        v10 = 0x64656B636F6CLL;
        break;
      case 3:
        v9 = 0xE800000000000000;
        v10 = 0x64656B636F6C6E75;
        break;
      default:
        break;
    }

    if (v8 == v10 && v7 == v9)
    {

      return v5 != 0;
    }

    v12 = sub_16AE54();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

BOOL sub_E7154(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(a2 + 16);
  v6 = (a2 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v9 = a3(*v6);
    v11 = v10;
    if (v9 == a3(a1) && v11 == v12)
    {

      return v7 != 0;
    }

    v14 = sub_16AE54();

    ++v6;
  }

  while ((v14 & 1) == 0);
  return v7 != 0;
}

BOOL sub_E7224(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xE600000000000000;
    v8 = 0x7473756A6461;
    switch(*v4)
    {
      case 1:
        v8 = 0x74736575516B7361;
        v7 = 0xEB000000006E6F69;
        break;
      case 2:
        v7 = 0xE500000000000000;
        v8 = 0x65736F6C63;
        break;
      case 3:
        v7 = 0xE400000000000000;
        v8 = 1953069157;
        break;
      case 4:
        v7 = 0xE400000000000000;
        v8 = 1801678700;
        break;
      case 5:
        v7 = 0xE400000000000000;
        v8 = 1852141679;
        break;
      case 6:
        v7 = 0xE400000000000000;
        v8 = 1802658160;
        break;
      case 7:
        v7 = 0xE700000000000000;
        v8 = 0x66664F6E727574;
        break;
      case 8:
        v8 = 0x6E4F6E727574;
        break;
      case 9:
        v7 = 0xE400000000000000;
        v8 = 1702257011;
        break;
      case 0xA:
        v8 = 0x61636F4C646E6573;
        v7 = 0xEC0000006E6F6974;
        break;
      case 0xB:
        v8 = 0x6B636F6C6E75;
        break;
      default:
        break;
    }

    v9 = 0xE600000000000000;
    v10 = 0x7473756A6461;
    switch(a1)
    {
      case 1:
        v10 = 0x74736575516B7361;
        v9 = 0xEB000000006E6F69;
        break;
      case 2:
        v9 = 0xE500000000000000;
        v10 = 0x65736F6C63;
        break;
      case 3:
        v9 = 0xE400000000000000;
        v10 = 1953069157;
        break;
      case 4:
        v9 = 0xE400000000000000;
        v10 = 1801678700;
        break;
      case 5:
        v9 = 0xE400000000000000;
        v10 = 1852141679;
        break;
      case 6:
        v9 = 0xE400000000000000;
        v10 = 1802658160;
        break;
      case 7:
        v9 = 0xE700000000000000;
        v10 = 0x66664F6E727574;
        break;
      case 8:
        v10 = 0x6E4F6E727574;
        break;
      case 9:
        v9 = 0xE400000000000000;
        v10 = 1702257011;
        break;
      case 10:
        v10 = 0x61636F4C646E6573;
        v9 = 0xEC0000006E6F6974;
        break;
      case 11:
        v10 = 0x6B636F6C6E75;
        break;
      default:
        break;
    }

    if (v8 == v10 && v7 == v9)
    {

      return v5 != 0;
    }

    v12 = sub_16AE54();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_E7578()
{
  sub_5758(&qword_1EBC08, &qword_176FB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_16D3A0;
  if (qword_1E5918 != -1)
  {
    swift_once();
  }

  v1 = qword_1F0CE0;
  v2 = sub_5758(&qword_1EBC70, &qword_176FE8);
  *(v0 + 56) = v2;
  v3 = sub_EAA28(&qword_1EBC78, &qword_1EBC70, &qword_176FE8);
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_1E5910;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_1F0CD8;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  *(v0 + 72) = v5;
  sub_169654();
  swift_allocObject();

  result = sub_169634();
  qword_1F0CE8 = result;
  return result;
}

uint64_t sub_E76D8()
{
  sub_5758(&qword_1EBC10, &qword_176FB8);
  swift_allocObject();
  result = sub_1696C4();
  qword_1F0CF0 = result;
  return result;
}

uint64_t sub_E7748()
{
  sub_5758(&qword_1EBC20, &qword_176FC0);
  swift_allocObject();
  sub_EAE80();
  result = sub_1696C4();
  qword_1F0CF8 = result;
  return result;
}

uint64_t sub_E77AC()
{
  sub_5758(&qword_1EBC30, &qword_176FC8);
  swift_allocObject();
  result = sub_1696C4();
  qword_1F0D00 = result;
  return result;
}

uint64_t sub_E781C()
{
  sub_5758(&qword_1EBC40, &qword_176FD0);
  swift_allocObject();
  result = sub_1696C4();
  qword_1F0D08 = result;
  return result;
}

uint64_t sub_E788C()
{
  sub_5758(&qword_1EBC50, &qword_176FD8);
  swift_allocObject();
  result = sub_1696C4();
  qword_1F0D10 = result;
  return result;
}

uint64_t sub_E78F4()
{
  sub_5758(&qword_1EBC60, &qword_176FE0);
  swift_allocObject();
  result = sub_1696C4();
  qword_1F0D18 = result;
  return result;
}

uint64_t sub_E7970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_5758(&qword_1EBC70, &qword_176FE8);
  swift_allocObject();
  result = sub_1696C4();
  *a4 = result;
  return result;
}

uint64_t sub_E79DC()
{
  sub_5758(&qword_1EBC08, &qword_176FB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_175690;
  if (qword_1E5920 != -1)
  {
    swift_once();
  }

  v1 = qword_1F0CE8;
  *(v0 + 56) = sub_169654();
  *(v0 + 64) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 32) = v1;
  v2 = qword_1E5928;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1F0CF0;
  *(v0 + 96) = sub_EAD58();
  *(v0 + 104) = sub_EAD40(&qword_1EBC18);
  *(v0 + 72) = v3;
  v4 = qword_1E5930;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_1F0CF8;
  *(v0 + 136) = sub_EAD58();
  *(v0 + 144) = sub_EAD40(&qword_1EBC28);
  *(v0 + 112) = v5;
  v6 = qword_1E5938;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_1F0D00;
  *(v0 + 176) = sub_EAD58();
  *(v0 + 184) = sub_EAD40(&qword_1EBC38);
  *(v0 + 152) = v7;
  v8 = qword_1E5940;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_1F0D08;
  *(v0 + 216) = sub_EAD58();
  *(v0 + 224) = sub_EAD40(&qword_1EBC48);
  *(v0 + 192) = v9;
  v10 = qword_1E5948;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_1F0D10;
  *(v0 + 256) = sub_EAD58();
  *(v0 + 264) = sub_EAD40(&qword_1EBC58);
  *(v0 + 232) = v11;
  v12 = qword_1E5950;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_1F0D18;
  *(v0 + 296) = sub_EAD58();
  *(v0 + 304) = sub_EAD40(&qword_1EBC68);
  *(v0 + 272) = v13;
  v14 = qword_1E5958;

  if (v14 != -1)
  {
    sub_EABE4(&qword_1E5958);
  }

  v15 = qword_1F0D20;
  *(v0 + 336) = sub_EAD58();
  *(v0 + 344) = sub_EAD40(&qword_1EBC78);
  *(v0 + 312) = v15;
  sub_1696B4();
  swift_allocObject();

  result = sub_1696A4();
  qword_1F0D28 = result;
  return result;
}

uint64_t sub_E7DB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv3Intent_domainOntologyNode;
  if (qword_1E5960 != -1)
  {
    swift_once();
  }

  *(v1 + v3) = qword_1F0D28;
  v4 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv3Intent_intent;
  sub_169D24();
  sub_10AFC();
  (*(v5 + 32))(v1 + v4, a1);

  return v1;
}

uint64_t sub_E7ED8(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  type metadata accessor for CarCommandsNLv3Intent(0);
  sub_EAB6C();
  sub_EAA7C(v3, v4, &unk_176F40);
  sub_37740();
  sub_169944();
  return v6;
}

uint64_t sub_E8000(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  type metadata accessor for CarCommandsNLv3Intent(0);
  sub_EAB6C();
  sub_EAA7C(v3, v4, &unk_176F40);
  sub_37740();
  sub_169944();
  return v6;
}

uint64_t sub_E80BC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a1;
  v104 = a2;
  v5 = sub_5758(&qword_1EBC90, &qword_176FF8);
  sub_D414(v5);
  sub_CA380();
  __chkstk_darwin(v6);
  v97 = &v89 - v7;
  v8 = sub_5758(&qword_1EBC98, &unk_177000);
  sub_D414(v8);
  sub_CA380();
  __chkstk_darwin(v9);
  sub_EACD8(&v89 - v10);
  v94 = sub_169894();
  sub_9F48();
  v96 = v11;
  __chkstk_darwin(v12);
  sub_A138();
  sub_EACD8(v14 - v13);
  v15 = sub_169D24();
  sub_9F48();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_A138();
  v21 = v20 - v19;
  v22 = sub_5758(&qword_1E5F60, &qword_16D388);
  sub_D414(v22);
  sub_CA380();
  __chkstk_darwin(v23);
  v25 = &v89 - v24;
  v26 = sub_5758(&qword_1EBCA0, &qword_177010);
  v27 = sub_D414(v26);
  v28 = __chkstk_darwin(v27);
  v30 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  sub_EACD8(&v89 - v31);
  v32 = sub_169924();
  sub_9F48();
  v92 = v33;
  __chkstk_darwin(v34);
  sub_A138();
  v91 = v36 - v35;
  (*(v17 + 16))(v21, v3 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv3Intent_intent, v15);
  sub_169D14();
  (*(v17 + 8))(v21, v15);
  v37 = sub_169974();
  sub_EAEC0(v25);
  if (v50)
  {
    sub_109A0(v25, &qword_1E5F60, &qword_16D388);
LABEL_17:
    v109 = 0;
    v107 = 0u;
    v108 = 0u;
    v55 = v98;
LABEL_18:
    sub_109A0(&v107, &qword_1EBCA8, &qword_177018);
    sub_3CFE4();
    sub_5370(v56, v57, v58, v32);
LABEL_19:
    sub_109A0(v55, &qword_1EBCA0, &qword_177010);
    sub_169844();
    goto LABEL_20;
  }

  v38 = sub_169964();
  result = (*(*(v37 - 8) + 8))(v25, v37);
  v40 = *(v38 + 16);
  if (!v40)
  {
LABEL_16:

    goto LABEL_17;
  }

  v90 = a3;
  v41 = 0;
  v42 = v38 + 32;
  v101 = v38;
  v102 = (v92 + 8);
  v43 = &qword_1EBCB0;
  v44 = &unk_177020;
  v100 = v40;
  while (1)
  {
    if (v41 >= *(v38 + 16))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

    sub_10824(v42, v106);
    sub_10824(v106, v105);
    sub_5758(v43, v44);
    if (!swift_dynamicCast())
    {
      sub_3CFE4();
      sub_5370(v52, v53, v54, v32);
      sub_109A0(v30, &qword_1EBCA0, &qword_177010);
      goto LABEL_15;
    }

    v45 = v44;
    v46 = v43;
    sub_5370(v30, 0, 1, v32);
    v47 = sub_169904();
    v49 = v48;
    v99 = *v102;
    v99(v30, v32);
    v50 = v47 == v103 && v49 == v104;
    if (v50)
    {
      break;
    }

    v51 = sub_16AE54();

    v43 = v46;
    v44 = v45;
    v40 = v100;
    v38 = v101;
    if (v51)
    {

      goto LABEL_23;
    }

LABEL_15:
    ++v41;
    result = sub_D13C(v106);
    v42 += 40;
    if (v40 == v41)
    {
      goto LABEL_16;
    }
  }

LABEL_23:
  sub_D124(v106, &v107);
  v63 = v97;
  v55 = v98;
  if (!*(&v108 + 1))
  {
    goto LABEL_18;
  }

  sub_5758(&qword_1EBCB0, &unk_177020);
  v64 = swift_dynamicCast();
  sub_5370(v55, v64 ^ 1u, 1, v32);
  if (sub_9E2C(v55, 1, v32) == 1)
  {
    goto LABEL_19;
  }

  (*(v92 + 32))(v91, v55, v32);
  result = sub_169914();
  v65 = result;
  v66 = *(result + 16);
  if (v66)
  {
    v67 = 0;
    v104 = result + ((*(v96 + 80) + 32) & ~*(v96 + 80));
    v103 = v96 + 16;
    LODWORD(v101) = enum case for TerminalElement.OriginDetail.matchingSpan(_:);
    v68 = v96;
    while (1)
    {
      if (v67 >= *(v65 + 16))
      {
        goto LABEL_39;
      }

      v69 = v93;
      v70 = v94;
      (*(v68 + 16))(v93, v104 + *(v68 + 72) * v67, v94);
      sub_169884();
      (*(v68 + 8))(v69, v70);
      v71 = sub_169874();
      sub_EAEC0(v63);
      if (v50)
      {
        break;
      }

      v76 = v63;
      v77 = v95;
      sub_169864();
      (*(*(v71 - 8) + 8))(v76, v71);
      v78 = sub_169854();
      v79 = sub_9E2C(v77, 1, v78);
      if (v79 == 1)
      {
        goto LABEL_32;
      }

      v80 = *(v78 - 8);
      v81 = (*(v80 + 88))(v77, v78);
      if (v81 == v101)
      {
        v84 = sub_EAD28();
        v85(v84);

        (*(v80 + 96))(v77, v78);
        v86 = sub_169844();
        sub_10AFC();
        v88 = v90;
        (*(v87 + 32))(v90, v77, v86);
        v59 = v88;
        v60 = 0;
        v61 = 1;
        v62 = v86;
        return sub_5370(v59, v60, v61, v62);
      }

      result = (*(v80 + 8))(v77, v78);
LABEL_35:
      ++v67;
      v63 = v97;
      if (v66 == v67)
      {
        goto LABEL_36;
      }
    }

    sub_109A0(v63, &qword_1EBC90, &qword_176FF8);
    sub_169854();
    v77 = v95;
    sub_3CFE4();
    sub_5370(v72, v73, v74, v75);
LABEL_32:
    result = sub_109A0(v77, &qword_1EBC98, &unk_177000);
    goto LABEL_35;
  }

LABEL_36:

  v82 = sub_EAD28();
  v83(v82);
  sub_169844();
LABEL_20:
  sub_3CFE4();
  return sub_5370(v59, v60, v61, v62);
}

uint64_t sub_E89D8()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv3Intent_intent;
  sub_169D24();
  sub_10AFC();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for CarCommandsNLv3Intent(uint64_t a1)
{
  result = qword_1EBAE0;
  if (!qword_1EBAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E8AD0(uint64_t a1)
{
  result = sub_169D24();
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

uint64_t sub_E8B6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv3Intent_intent;
  v5 = sub_169D24();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_E8BFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.traversableIntentNode.getter(a1, WitnessTable);
}

uint64_t sub_E8C60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.traversableOntologyNode.getter(a1, WitnessTable);
}

uint64_t sub_E8CB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.description.getter(a1, WitnessTable);
}

uint64_t sub_E8D08()
{
  v0 = sub_E7FDC();
  if (!v1)
  {
    return sub_E7FDC();
  }

  if (v0 == 0x726143796DLL && v1 == 0xE500000000000000)
  {
  }

  else
  {
    v3 = sub_16AE54();

    if ((v3 & 1) == 0)
    {
      return sub_E7FDC();
    }
  }

  return 0;
}

uint64_t sub_E8D8C()
{
  v0 = sub_5758(&qword_1EBC88, &qword_176FF0);
  sub_D414(v0);
  sub_CA380();
  __chkstk_darwin(v1);
  v3 = &v19 - v2;
  v4 = sub_E8D08();
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v4;
  v7 = v5;
  if (qword_1E5958 != -1)
  {
    sub_EABE4(&qword_1E5958);
  }

  v8 = sub_1696D4();
  sub_E80BC(v8, v9, v3);

  v10 = sub_169844();
  if (sub_9E2C(v3, 1, v10) == 1)
  {

    sub_109A0(v3, &qword_1EBC88, &qword_176FF0);
LABEL_11:
    sub_E7E6C();
    return sub_37740();
  }

  sub_169834();
  v12 = v11;
  (*(*(v10 - 8) + 8))(v3, v10);
  if (!v12)
  {

    goto LABEL_11;
  }

  v19 = 0;
  v20 = 0xE000000000000000;

  sub_16ACF4(37);

  sub_D434();
  v19 = 0xD000000000000013;
  v20 = v13;
  v21._countAndFlagsBits = sub_37740();
  sub_16A744(v21);

  v22._countAndFlagsBits = 0x72616320726F6620;
  v22._object = 0xEE00203A656D614ELL;
  sub_16A744(v22);
  v23._countAndFlagsBits = v6;
  v23._object = v7;
  sub_16A744(v23);

  v14 = v19;
  v15 = v20;
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v16 = sub_16A584();
  sub_9DA0(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_386D8(v17, 1uLL, 0xD000000000000077, 0x800000000018C3D0, 0x4449707061, 0xE500000000000000, 127, v14, v15);

  return sub_37740();
}

BOOL sub_E902C()
{
  v0 = sub_E7F70();
  v1 = sub_E7F94();
  v2 = sub_E7FB8();
  v3 = sub_E7E90();
  v4 = &off_1D00F0;
  v5 = _swiftEmptyArrayStorage;
  v6 = &off_1D00C8;
  switch(_swiftEmptyArrayStorage)
  {
    case 0u:
      v4 = &off_1D0208;
      v6 = &off_1D01E0;
      v5 = &off_1D0230;
      goto LABEL_26;
    case 1u:
      if (v0 == 39)
      {
        return 0;
      }

      if (sub_77154(v0) == 7496035 && v9 == 0xE300000000000000)
      {

        if (v1 != 12)
        {
LABEL_38:
          if (sub_494D4(v1) != 0x7473756A6461 || v15 != 0xE600000000000000)
          {
            v17 = sub_16AE54();

            if (v17)
            {
              goto LABEL_73;
            }

            if (sub_494D4(v1) != 0x6E4F6E727574 || v18 != 0xE600000000000000)
            {
              v20 = sub_16AE54();

              if (v20)
              {
                goto LABEL_73;
              }

              if (sub_494D4(v1) != 0x66664F6E727574 || v21 != 0xE700000000000000)
              {
                v23 = sub_16AE54();

                if ((v23 & 1) == 0)
                {
LABEL_77:
                  if (sub_494D4(v1) != 1801678700 || v32 != 0xE400000000000000)
                  {
                    v34 = sub_16AE54();

                    if (v34)
                    {
                      return 1;
                    }

                    if (sub_494D4(v1) != 0x6B636F6C6E75 || v35 != 0xE600000000000000)
                    {
                      v37 = sub_16AE54();

                      return v37 & 1;
                    }
                  }

LABEL_87:

                  return 1;
                }

LABEL_73:
                switch(v2)
                {
                  case 2:
                    goto LABEL_87;
                  case 4:
                    goto LABEL_77;
                  default:
                    v30 = sub_16AE54();

                    if ((v30 & 1) == 0)
                    {
                      switch(v2)
                      {
                        case 3:
                          goto LABEL_87;
                        default:
                          v31 = sub_16AE54();

                          if ((v31 & 1) == 0)
                          {
                            goto LABEL_77;
                          }

                          return 1;
                      }
                    }

                    return 1;
                }
              }
            }
          }

          goto LABEL_73;
        }

        return 0;
      }

      v11 = sub_16AE54();

      result = 0;
      if ((v11 & 1) != 0 && v1 != 12)
      {
        goto LABEL_38;
      }

      return result;
    case 2u:
      goto LABEL_26;
    case 3u:
      v4 = &off_1D0280;
      v6 = &off_1D0258;
      goto LABEL_26;
    case 4u:
      v4 = &off_1D01B8;
      v6 = &off_1D0190;
      goto LABEL_26;
    case 5u:
      v4 = &off_1D0320;
      v6 = &off_1D02F8;
      goto LABEL_26;
    case 6u:
      v4 = &off_1D0140;
      v6 = &off_1D0118;
      v5 = &off_1D0168;
      goto LABEL_26;
    case 7u:
      v4 = &off_1D02D0;
      v6 = &off_1D02A8;
      goto LABEL_26;
    case 9u:
      if (v0 == 39)
      {
        goto LABEL_28;
      }

      if (sub_77154(v0) == 7496035 && v12 == 0xE300000000000000)
      {

        if (v1 == 12)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v14 = sub_16AE54();

        v5 = _swiftEmptyArrayStorage;
        v6 = &off_1D0078;
        v4 = &off_1D00A0;
        if ((v14 & 1) == 0 || v1 == 12)
        {
LABEL_27:
          if (v1 == 12)
          {
LABEL_28:

            goto LABEL_69;
          }

          goto LABEL_61;
        }
      }

      if (sub_494D4(v1) == 0x7473756A6461 && v24 == 0xE600000000000000)
      {
        goto LABEL_69;
      }

      v26 = sub_16AE54();

      if (v26)
      {
        return 0;
      }

      v4 = &off_1D00A0;
      v5 = _swiftEmptyArrayStorage;
      v6 = &off_1D0078;
LABEL_61:
      if (v5[2])
      {
        if (v2 == 4)
        {

LABEL_68:

LABEL_69:

          return 0;
        }

        v27 = sub_E6FD0(v2, v5);

        if (!v27)
        {
          goto LABEL_68;
        }
      }

      else
      {
      }

      v28 = sub_E7154(v0, v6, sub_77154);

      if (v28)
      {
        v29 = sub_E7224(v1, v4);

        return v29;
      }

      goto LABEL_69;
    case 0xAu:
      v4 = &off_1D0348;
      v6 = &off_1D0078;
      goto LABEL_26;
    case 0xDu:
      v4 = &off_1D03E8;
      v6 = &off_1D03C0;
      v5 = &off_1D0410;
      goto LABEL_26;
    case 0x10u:
      v4 = &off_1D0398;
      v6 = &off_1D0370;
      goto LABEL_26;
    case 0x1Bu:
      return v0 != 39 || v3 != 21;
    default:
      v5 = _swiftEmptyArrayStorage;
      v6 = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage;
LABEL_26:
      if (v0 != 39)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
  }
}

uint64_t sub_E9774()
{

  v0 = sub_169644();
  v2 = v1;

  if (v0 == 0x616D6D6F43726163 && v2 == 0xEB0000000073646ELL)
  {

    return 1;
  }

  else
  {
    v4 = sub_16AE54();

    return v4 & 1;
  }
}

uint64_t sub_E98A0()
{
  v0 = sub_E7F70();
  if (v0 == 1 || v0 == 16)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_E98F0()
{
  v0 = sub_E7F94();
  result = 2;
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
      return result;
    case 7:
      result = 0;
      break;
    case 8:
      result = 1;
      break;
    default:
      result = 0x2020001u >> (8 * sub_E7EB4());
      break;
  }

  return result;
}

uint64_t sub_E99E8()
{
  sub_E7F94();
  sub_EAEB4();
  if (v5)
  {
    return 2;
  }

  sub_EAEE0(v3);
  sub_93B6C();
  if (v5)
  {
    v8 = v7 == 0xE400000000000000;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
LABEL_15:

    return 1;
  }

  sub_EAD70(v6);
  sub_93E14();
  if (v1)
  {
    return 1;
  }

  v9 = sub_494D4(v0);
  if (v9 == 0x6E4F6E727574 && v10 == 0xE600000000000000)
  {
  }

  else
  {
    sub_93E2C(v9, v10, 0x6E4F6E727574);
    sub_EADB8();
    if ((v2 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v12 = 0xE200000000000000;
  v13 = sub_EAE60();
  switch(v14)
  {
    case 1:
      v12 = 0xE300000000000000;
      v13 = sub_EAC04();
      break;
    case 2:
      goto LABEL_15;
    case 3:
      v12 = 0xE800000000000000;
      v13 = sub_EAB04();
      break;
    case 4:
      goto LABEL_22;
    default:
      break;
  }

  sub_EAC9C(v13, v12);
  sub_EADB8();
  if (v2)
  {
    return 1;
  }

LABEL_22:
  v15 = sub_494D4(v0);
  if (v15 == 0x66664F6E727574 && v16 == 0xE700000000000000)
  {
  }

  else
  {
    v18 = sub_93F70(v15, v16, 0x66664F6E727574);

    if ((v18 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v19 = 0xE600000000000000;
  sub_EAE54();
  switch(v20)
  {
    case 1:
      v19 = 0xE300000000000000;
      sub_EAC04();
      break;
    case 2:
      break;
    case 3:
      goto LABEL_15;
    case 4:
      goto LABEL_33;
    default:
      v19 = 0xE200000000000000;
      break;
  }

  sub_EAB18();
  v23 = sub_93FA0(v21, v19, v22);

  if (v23)
  {
    return 1;
  }

LABEL_33:
  v24 = sub_494D4(v0);
  if (v24 == 0x6B636F6C6E75 && v25 == 0xE600000000000000)
  {
LABEL_44:
  }

  else
  {
    v27 = sub_93E2C(v24, v25, 0x6B636F6C6E75);

    if ((v27 & 1) == 0)
    {
      v28 = sub_494D4(v0);
      if (v28 == 0x6E4F6E727574 && v29 == 0xE600000000000000)
      {
      }

      else
      {
        v31 = sub_93E2C(v28, v29, 0x6E4F6E727574);

        if ((v31 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      v32 = 0xE600000000000000;
      sub_EAE54();
      switch(v33)
      {
        case 1:
          v32 = 0xE300000000000000;
          sub_EAC04();
          break;
        case 2:
          break;
        case 3:
          goto LABEL_44;
        case 4:
          goto LABEL_51;
        default:
          v32 = 0xE200000000000000;
          break;
      }

      sub_EAB18();
      v36 = sub_93FA0(v34, v32, v35);

      if (v36)
      {
        return 0;
      }

LABEL_51:
      v37 = sub_494D4(v0);
      if (v37 == 0x66664F6E727574 && v38 == 0xE700000000000000)
      {
      }

      else
      {
        v40 = sub_93F70(v37, v38, 0x66664F6E727574);

        if ((v40 & 1) == 0)
        {
          return 2;
        }
      }

      v41 = 0xE200000000000000;
      v42 = sub_EAE60();
      switch(v43)
      {
        case 1:
          v41 = 0xE300000000000000;
          v42 = sub_EAC04();
          break;
        case 2:
          goto LABEL_44;
        case 3:
          v41 = 0xE800000000000000;
          v42 = sub_EAB04();
          break;
        case 4:
          return 2;
        default:
          break;
      }

      v44 = sub_EAC9C(v42, v41);

      if (v44)
      {
        return 0;
      }

      return 2;
    }
  }

  return 0;
}

uint64_t sub_E9DD0()
{
  sub_E7F94();
  sub_EAEB4();
  if (v4)
  {
    return 0;
  }

  sub_EAEE0(v2);
  sub_93B6C();
  if (v4)
  {
    v7 = v6 == 0xE400000000000000;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    goto LABEL_14;
  }

  sub_EAD70(v5);
  sub_93E14();
  if ((v1 & 1) == 0)
  {
    sub_494D4(v0);
    sub_93B6C();
    if (v4)
    {
      v9 = v8 == 0xE500000000000000;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      sub_93BC4();
      sub_16AE54();
      sub_93E14();
      return 2;
    }

LABEL_14:
  }

  return 2;
}

Class sub_EA21C()
{
  sub_E7F94();
  sub_EAEB4();
  if (v6)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_E7F70();
  if (v2 == 39)
  {
    return 0;
  }

  v4 = v2;
  sub_494D4(v1);
  sub_93B6C();
  v6 = v6 && v5 == 0xEB000000006E6F69;
  if (v6)
  {
  }

  else
  {
    sub_93BC4();
    v7 = sub_16AE54();

    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v8 = sub_77154(v4);
  if (v8 == 7496035 && v9 == 0xE300000000000000)
  {

    goto LABEL_18;
  }

  v11 = sub_EAD94(v8);

  if (v11)
  {
LABEL_18:
    v12 = 1;
    goto LABEL_19;
  }

LABEL_16:
  v12 = 0;
LABEL_19:
  sub_76D10();
  return sub_16AAA4(v12).super.super.isa;
}

Class sub_EA354()
{
  v0 = sub_E7F94();
  v1 = 0;
  result = 0;
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
      return result;
    case 7:
      goto LABEL_6;
    case 8:
      v1 = 1;
      goto LABEL_6;
    default:
      v3 = sub_E7EB4();
      if ((v3 - 2) < 2)
      {
        return 0;
      }

      v1 = v3 == 0;
LABEL_6:
      sub_76D10();
      return sub_16AAA4(v1).super.super.isa;
  }
}

Class sub_EA420()
{
  sub_E7F94();
  sub_EAEB4();
  if (v6)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_E7F70();
  if (v2 == 39)
  {
    return 0;
  }

  v4 = v2;
  sub_494D4(v1);
  sub_93B6C();
  v6 = v6 && v5 == 0xE600000000000000;
  if (v6 || ((sub_93BC4(), sub_93E2C(v7, v8, v9), sub_93E14(), sub_EADD0(), sub_93B6C(), v6) ? (v11 = v10 == 0xE700000000000000) : (v11 = 0), v11))
  {
  }

  else
  {
    sub_93BC4();
    v15 = sub_93F70(v12, v13, v14);

    if ((v15 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v16 = sub_77154(v4);
  if (v16 == 7496035 && v17 == 0xE300000000000000)
  {

    goto LABEL_22;
  }

  v19 = sub_EAD94(v16);

  if (v19)
  {
LABEL_22:
    v20 = 1;
    goto LABEL_23;
  }

LABEL_20:
  v20 = 0;
LABEL_23:
  sub_76D10();
  return sub_16AAA4(v20).super.super.isa;
}

uint64_t sub_EA588()
{
  sub_5758(&qword_1E76A0, &qword_172B00);
  sub_3CFE4();

  return sub_5370(v0, v1, v2, v3);
}

uint64_t sub_EA668@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_E7EB4();
  if ((v2 - 1) < 2)
  {
    v3 = &enum case for ConfirmationResponse.rejected(_:);
LABEL_5:
    v4 = *v3;
    v5 = sub_169004();
    sub_10AFC();
    (*(v6 + 104))(a1, v4, v5);
    v7 = a1;
    v8 = 0;
    v9 = 1;
    v10 = v5;
    goto LABEL_7;
  }

  if (!v2)
  {
    v3 = &enum case for ConfirmationResponse.confirmed(_:);
    goto LABEL_5;
  }

  sub_169004();
  sub_3CFE4();
LABEL_7:

  return sub_5370(v7, v8, v9, v10);
}

uint64_t sub_EA730(unsigned int *a1)
{
  v2 = sub_5758(&qword_1E6048, &qword_16D890);
  sub_D414(v2);
  sub_CA380();
  __chkstk_darwin(v3);
  v5 = &v19 - v4;
  v6 = sub_169004();
  sub_9F48();
  v8 = v7;
  v10 = __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  sub_EA668(v5);
  sub_EAEC0(v5);
  if (v15)
  {
    sub_109A0(v5, &qword_1E6048, &qword_16D890);
    v16 = 0;
  }

  else
  {
    (*(v8 + 32))(v14, v5, v6);
    (*(v8 + 104))(v12, *a1, v6);
    v16 = sub_168FF4();
    v17 = *(v8 + 8);
    v17(v12, v6);
    v17(v14, v6);
  }

  return v16 & 1;
}

uint64_t sub_EAA28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_37130(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_EAA7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_EAB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_16AE54();
}

uint64_t sub_EAB50(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_16AE54();
}

uint64_t sub_EABE4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_EAC80(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_16AE54();
}

uint64_t sub_EAC9C(uint64_t a1, uint64_t a2)
{

  return sub_16AE54();
}

uint64_t sub_EAD40(unint64_t *a1)
{

  return sub_EAA28(a1, v1, v2);
}

uint64_t sub_EAD58()
{

  return sub_5758(v0, v1);
}

uint64_t sub_EAD70(uint64_t a1)
{

  return sub_16AE54();
}

uint64_t sub_EAD94(uint64_t a1)
{

  return sub_16AE54();
}

uint64_t sub_EADB8()
{
}

uint64_t sub_EADD0()
{

  return sub_494D4(v0);
}

uint64_t sub_EAEE0(char a1)
{
  sub_E7FB8();

  return sub_494D4(a1);
}

uint64_t sub_EAF2C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_5758(&qword_1EA368, &unk_1741F0);
    v9 = &a1[*(a3 + 24)];

    return sub_9E2C(v9, a2, v8);
  }
}

_BYTE *sub_EAFCC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v7 = sub_5758(&qword_1EA368, &unk_1741F0);
    v8 = &v5[*(a4 + 24)];

    return sub_5370(v8, a2, a2, v7);
  }

  return result;
}