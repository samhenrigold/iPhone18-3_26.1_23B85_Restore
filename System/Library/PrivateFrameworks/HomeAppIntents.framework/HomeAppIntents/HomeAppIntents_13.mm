uint64_t sub_25285217C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 1701602409;
    }

    else
    {
      v3 = 0x657669746361;
    }

    if (v2 == 1)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }

    v5 = a2;
    if (a2)
    {
LABEL_9:
      if (v5 == 1)
      {
        v6 = 1701602409;
      }

      else
      {
        v6 = 0x657669746361;
      }

      if (v5 == 1)
      {
        v7 = 0xE400000000000000;
      }

      else
      {
        v7 = 0xE600000000000000;
      }

      if (v3 != v6)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v4 = 0xE800000000000000;
    v3 = 0x6576697463616E69;
    v5 = a2;
    if (a2)
    {
      goto LABEL_9;
    }
  }

  v7 = 0xE800000000000000;
  if (v3 != 0x6576697463616E69)
  {
LABEL_21:
    v8 = sub_2528C1060();
    goto LABEL_22;
  }

LABEL_19:
  if (v4 != v7)
  {
    goto LABEL_21;
  }

  v8 = 1;
LABEL_22:

  return v8 & 1;
}

uint64_t sub_252852270(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6465736F6C63;
    }

    else
    {
      v5 = 1852141679;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    if (a1 == 2)
    {
      v4 = 1852141679;
      goto LABEL_12;
    }

    if (a1 == 3)
    {
      v4 = 1936682083;
LABEL_12:
      v5 = v4 | 0x676E6900000000;
      goto LABEL_14;
    }

    v5 = 0x646570706F7473;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6465736F6C63;
    }

    else
    {
      v9 = 1852141679;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v5 != v9)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v6 = 0x676E69736F6C63;
    if (a2 != 3)
    {
      v6 = 0x646570706F7473;
    }

    if (a2 == 2)
    {
      v7 = 0x676E696E65706FLL;
    }

    else
    {
      v7 = v6;
    }

    v8 = 0xE700000000000000;
    if (v5 != v7)
    {
      goto LABEL_31;
    }
  }

  if (v3 != v8)
  {
LABEL_31:
    v10 = sub_2528C1060();
    goto LABEL_32;
  }

  v10 = 1;
LABEL_32:

  return v10 & 1;
}

uint64_t sub_2528523DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x6964696D75686564;
  v5 = 0xEA00000000007966;
  v6 = 1869903201;
  if (a1 != 4)
  {
    v6 = 1701736302;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28271;
  if (a1 != 1)
  {
    v8 = 0x79666964696D7568;
    v7 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 6710895;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEA00000000007966;
      if (v9 != 0x6964696D75686564)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (a2 == 4)
      {
        if (v9 != 1869903201)
        {
          goto LABEL_34;
        }
      }

      else if (v9 != 1701736302)
      {
LABEL_34:
        v12 = sub_2528C1060();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE200000000000000;
      if (v9 != 28271)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE800000000000000;
      if (v9 != 0x79666964696D7568)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v11 = 0xE300000000000000;
    if (v9 != 6710895)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_252852588(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1701670760;
    }

    else
    {
      v4 = 6710895;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 2036430689;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x746867696ELL;
  }

  else
  {
    v4 = 0x6572656767697274;
    v3 = 0xE900000000000064;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1701670760;
    }

    else
    {
      v9 = 6710895;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x746867696ELL;
    if (a2 != 3)
    {
      v6 = 0x6572656767697274;
      v5 = 0xE900000000000064;
    }

    if (a2 == 2)
    {
      v7 = 2036430689;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_2528C1060();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2528526EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 1952540008;
  v5 = 1819242339;
  if (a1 != 4)
  {
    v5 = 1869903201;
  }

  if (a1 != 3)
  {
    v4 = v5;
  }

  v6 = 0xE300000000000000;
  v7 = 6710895;
  if (a1 != 1)
  {
    v7 = 28271;
    v6 = 0xE200000000000000;
  }

  if (a1)
  {
    v3 = v6;
  }

  else
  {
    v7 = 1701736302;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (a2 > 2u)
  {
    v10 = 0xE400000000000000;
    if (a2 == 3)
    {
      if (v8 != 1952540008)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      if (v8 != 1819242339)
      {
        goto LABEL_34;
      }
    }

    else if (v8 != 1869903201)
    {
LABEL_34:
      v11 = sub_2528C1060();
      goto LABEL_35;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0xE300000000000000;
      if (v8 != 6710895)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v10 = 0xE200000000000000;
      if (v8 != 28271)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v10 = 0xE400000000000000;
    if (v8 != 1701736302)
    {
      goto LABEL_34;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_34;
  }

  v11 = 1;
LABEL_35:

  return v11 & 1;
}

uint64_t sub_25285286C(char a1, unsigned __int8 a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0x656D75736572;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    v3 = 0xE600000000000000;
    v4 = a2;
    if (a2)
    {
LABEL_6:
      if (v4 == 1)
      {
        v5 = 0x656D75736572;
      }

      else
      {
        v5 = 0x6C65636E6163;
      }

      v6 = 0xE600000000000000;
      if (v2 != v5)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v2 = 0x6573756170;
    v4 = a2;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v6 = 0xE500000000000000;
  if (v2 != 0x6573756170)
  {
LABEL_15:
    v7 = sub_2528C1060();
    goto LABEL_16;
  }

LABEL_13:
  if (v3 != v6)
  {
    goto LABEL_15;
  }

  v7 = 1;
LABEL_16:

  return v7 & 1;
}

uint64_t sub_252852964(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x726577736E61;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656369746F6ELL;
    }

    else
    {
      v4 = 0x686372616573;
    }

    v5 = 0xE600000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x6B6E694C70656564;
    }

    else
    {
      v4 = 0x726577736E61;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x656369746F6ELL;
  if (a2 != 2)
  {
    v7 = 0x686372616573;
  }

  if (a2)
  {
    v2 = 0x6B6E694C70656564;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2528C1060();
  }

  return v10 & 1;
}

uint64_t sub_252852A94(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656DLL;
  v3 = 0x614E656369766564;
  v4 = a1;
  v5 = 1701670760;
  v6 = 1836019570;
  if (a1 != 4)
  {
    v6 = 1701736314;
  }

  if (a1 != 3)
  {
    v5 = v6;
  }

  v7 = 0x7954656369766564;
  v8 = 0xEA00000000006570;
  if (a1 != 1)
  {
    v7 = 0x70756F7267;
    v8 = 0xE500000000000000;
  }

  if (!a1)
  {
    v7 = 0x614E656369766564;
    v8 = 0xEA0000000000656DLL;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (a2 > 2u)
  {
    v2 = 0xE400000000000000;
    if (a2 == 3)
    {
      if (v9 != 1701670760)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      if (v9 != 1836019570)
      {
        goto LABEL_31;
      }
    }

    else if (v9 != 1701736314)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEA00000000006570;
        if (v9 != 0x7954656369766564)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE500000000000000;
      v3 = 0x70756F7267;
    }

    if (v9 != v3)
    {
LABEL_31:
      v11 = sub_2528C1060();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v10 != v2)
  {
    goto LABEL_31;
  }

  v11 = 1;
LABEL_32:

  return v11 & 1;
}

uint64_t sub_252852C2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000746C7573;
  v3 = 0x6552656369766564;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x697461676976616ELL;
    }

    else
    {
      v5 = 0x726F727265;
    }

    if (v4 == 2)
    {
      v6 = 0xEA00000000006E6FLL;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x736552656E656373;
    }

    else
    {
      v5 = 0x6552656369766564;
    }

    if (v4)
    {
      v6 = 0xEB00000000746C75;
    }

    else
    {
      v6 = 0xEC000000746C7573;
    }
  }

  v7 = 0x697461676976616ELL;
  v8 = 0xEA00000000006E6FLL;
  if (a2 != 2)
  {
    v7 = 0x726F727265;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x736552656E656373;
    v2 = 0xEB00000000746C75;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2528C1060();
  }

  return v11 & 1;
}

uint64_t sub_252852D84(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "ult";
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      v6 = "17-A590-755E1AAC02AE";
      v7 = "73-8FBD-0E8978A33403";
      v8 = a1 == 6;
    }

    else
    {
      v6 = "60-AD68-D91053B75F44";
      v7 = "7E-BE63-1D00B1500545";
      v8 = a1 == 4;
    }

    if (v8)
    {
      v5 = v6;
    }

    else
    {
      v5 = v7;
    }
  }

  else
  {
    v3 = "73-A058-C5E64BC487B2";
    if (a1 != 2)
    {
      v3 = "CE-986D-63B28F62C9E3";
    }

    v4 = "13-AA62-01754F256DD5";
    if (!a1)
    {
      v4 = "ult";
    }

    if (a1 <= 1u)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v9 = "3E68745D-F0E1-4B73-8FBD-0E8978A33403";
      }

      else
      {
        v9 = "7FADD792-61A4-4340-A849-215882E2F008";
      }
    }

    else if (a2 == 4)
    {
      v9 = "430C9F25-44E0-4F7E-BE63-1D00B1500545";
    }

    else
    {
      v9 = "63489665-5E39-4C17-A590-755E1AAC02AE";
    }

    goto LABEL_30;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v9 = "563F7D20-6AFC-44CE-986D-63B28F62C9E3";
    }

    else
    {
      v9 = "7A5BD1AB-6478-4560-AD68-D91053B75F44";
    }

LABEL_30:
    v2 = (v9 - 32);
    goto LABEL_31;
  }

  if (a2)
  {
    v2 = "13-AA62-01754F256DD5";
  }

LABEL_31:
  if ((v5 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2528C1060();
  }

  return v10 & 1;
}

uint64_t sub_252852F2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  sub_25282EFBC(0, v1, 0);
  v2 = v29;
  v3 = a1 + 56;
  result = sub_2528C0E00();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v27 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v28 = *(v6 + 36);
    v11 = v6;
    result = AttributeKind.rawValue.getter();
    v13 = v2;
    v30 = v2;
    v14 = *(v2 + 16);
    v15 = *(v13 + 24);
    if (v14 >= v15 >> 1)
    {
      v24 = v12;
      v25 = result;
      sub_25282EFBC((v15 > 1), v14 + 1, 1);
      v12 = v24;
      result = v25;
      v13 = v30;
    }

    *(v13 + 16) = v14 + 1;
    v16 = v13 + 16 * v14;
    *(v16 + 32) = result;
    *(v16 + 40) = v12;
    v8 = 1 << *(v11 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v17 = *(v3 + 8 * v10);
    if ((v17 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    v6 = v11;
    v2 = v13;
    if (v28 != *(v11 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v5 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v27;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 64 + 8 * v10);
      v9 = v27;
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_25271A63C(v5, v28, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_25271A63C(v5, v28, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

char *sub_252853180(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 32);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v17 = *v5;
    sub_2528BEA50();
    sub_2528BEA50();
    a1(&v18, &v17);
    if (v3)
    {

      return v6;
    }

    v8 = v18;
    v9 = *(v18 + 16);
    v10 = *(v6 + 2);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= *(v6 + 3) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = sub_252737BC0(result, v12, 1, v6);
      v6 = result;
      if (*(v8 + 16))
      {
LABEL_15:
        if ((*(v6 + 3) >> 1) - *(v6 + 2) < v9)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = *(v6 + 2);
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_25;
          }

          *(v6 + 2) = v15;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_4:
    ++v5;
    if (!--v4)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_252853334(void (*a1)(uint64_t *__return_ptr, uint64_t *, double), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return;
  }

  v5 = (a3 + 64);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = *(v5 - 2);
    v8 = *(v5 - 1);
    v9 = *(v5 - 3);
    v10 = *v5;
    v22 = *(v5 - 4);
    v23 = v9;
    v24 = v7;
    v25 = v8;
    v26 = v10;
    v11 = sub_252760C18(v22, v9, v7, v8, v10);
    a1(&v27, &v22, v11);
    if (v3)
    {
      sub_25272C15C(v22, v23, v24, v25, v26);

      return;
    }

    sub_25272C15C(v22, v23, v24, v25, v26);
    v12 = v27;
    v13 = *(v27 + 16);
    v14 = *(v6 + 2);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v15 <= *(v6 + 3) >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v17 = v14 + v13;
      }

      else
      {
        v17 = v14;
      }

      v6 = sub_252737E74(isUniquelyReferenced_nonNull_native, v17, 1, v6);
      if (*(v12 + 16))
      {
LABEL_15:
        if ((*(v6 + 3) >> 1) - *(v6 + 2) < v13)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v18 = *(v6 + 2);
          v19 = __OFADD__(v18, v13);
          v20 = v18 + v13;
          if (v19)
          {
            goto LABEL_25;
          }

          *(v6 + 2) = v20;
        }

        goto LABEL_4;
      }
    }

    if (v13)
    {
      goto LABEL_23;
    }

LABEL_4:
    v5 += 40;
    if (!--v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_252853528(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a1;
  v34 = a2;
  v6 = sub_2528BFF00();
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v32 = v7;
  v30 = v7 + 16;
  v31 = (v7 + 8);
  v35 = a3;

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  v28 = v6;
  for (i = v9; ; v9 = i)
  {
    v37 = v16;
    if (!v13)
    {
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= v14)
        {
          goto LABEL_26;
        }

        v13 = *(v10 + 8 * v17);
        ++v15;
        if (v13)
        {
          v15 = v17;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

LABEL_11:
    (*(v32 + 16))(v9, *(v35 + 56) + *(v32 + 72) * (__clz(__rbit64(v13)) | (v15 << 6)), v6);
    v33(&v38, v9);
    if (v4)
    {
      break;
    }

    v36 = 0;
    (*v31)(v9, v6);
    v18 = v38;
    v19 = *(v38 + 16);
    v16 = v37;
    v20 = v37[2];
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v21 <= v16[3] >> 1)
    {
      if (!*(v18 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v23 = v20 + v19;
      }

      else
      {
        v23 = v20;
      }

      v16 = sub_252738010(isUniquelyReferenced_nonNull_native, v23, 1, v16);
      if (!*(v18 + 16))
      {
LABEL_4:

        if (v19)
        {
          goto LABEL_29;
        }

        goto LABEL_5;
      }
    }

    v24 = (v16[3] >> 1) - v16[2];
    type metadata accessor for DeviceEntity(0);
    if (v24 < v19)
    {
      goto LABEL_30;
    }

    swift_arrayInitWithCopy();

    if (v19)
    {
      v25 = v16[2];
      v26 = __OFADD__(v25, v19);
      v27 = v25 + v19;
      if (v26)
      {
        goto LABEL_31;
      }

      v16[2] = v27;
    }

LABEL_5:
    v13 &= v13 - 1;
    v4 = v36;
    v6 = v28;
  }

  (*v31)(v9, v6);

LABEL_26:
}

uint64_t sub_25285383C(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 32);
    while (1)
    {
      v8 = *v7++;
      v10 = v8;
      a1(&v9, &v10);
      if (v3)
      {
        break;
      }

      sub_2527360E0(v9);
      if (!--v6)
      {
        return v11;
      }
    }
  }

  return result;
}

void sub_252853924(void (*a1)(uint64_t *__return_ptr, uint64_t *, double), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(a3 + 16);
  if (!v6)
  {
    return;
  }

  v7 = (a3 + 64);
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = *(v7 - 2);
    v10 = *(v7 - 1);
    v11 = *(v7 - 3);
    v12 = *v7;
    v24 = *(v7 - 4);
    v25 = v11;
    v26 = v9;
    v27 = v10;
    v28 = v12;
    v13 = sub_252760C18(v24, v11, v9, v10, v12);
    a1(&v29, &v24, v13);
    if (v5)
    {
      sub_25272C15C(v24, v25, v26, v27, v28);

      return;
    }

    sub_25272C15C(v24, v25, v26, v27, v28);
    v14 = v29;
    v15 = *(v29 + 16);
    v16 = *(v8 + 16);
    if (__OFADD__(v16, v15))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native() && v16 + v15 <= *(v8 + 24) >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v8 = a4();
      if (*(v14 + 16))
      {
LABEL_12:
        v17 = (*(v8 + 24) >> 1) - *(v8 + 16);
        a5(0);
        if (v17 < v15)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v18 = *(v8 + 16);
          v19 = __OFADD__(v18, v15);
          v20 = v18 + v15;
          if (v19)
          {
            goto LABEL_22;
          }

          *(v8 + 16) = v20;
        }

        goto LABEL_4;
      }
    }

    if (v15)
    {
      goto LABEL_20;
    }

LABEL_4:
    v7 += 40;
    if (!--v6)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_252853B20(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a1;
  v34 = a2;
  v6 = sub_2528BECF0();
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v32 = v7;
  v30 = v7 + 16;
  v31 = (v7 + 8);
  v35 = a3;

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  v28 = v6;
  for (i = v9; ; v9 = i)
  {
    v37 = v16;
    if (!v13)
    {
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= v14)
        {
          goto LABEL_26;
        }

        v13 = *(v10 + 8 * v17);
        ++v15;
        if (v13)
        {
          v15 = v17;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

LABEL_11:
    (*(v32 + 16))(v9, *(v35 + 48) + *(v32 + 72) * (__clz(__rbit64(v13)) | (v15 << 6)), v6);
    v33(&v38, v9);
    if (v4)
    {
      break;
    }

    v36 = 0;
    (*v31)(v9, v6);
    v18 = v38;
    v19 = *(v38 + 16);
    v16 = v37;
    v20 = v37[2];
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v21 <= v16[3] >> 1)
    {
      if (!*(v18 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v23 = v20 + v19;
      }

      else
      {
        v23 = v20;
      }

      v16 = sub_252738010(isUniquelyReferenced_nonNull_native, v23, 1, v16);
      if (!*(v18 + 16))
      {
LABEL_4:

        if (v19)
        {
          goto LABEL_29;
        }

        goto LABEL_5;
      }
    }

    v24 = (v16[3] >> 1) - v16[2];
    type metadata accessor for DeviceEntity(0);
    if (v24 < v19)
    {
      goto LABEL_30;
    }

    swift_arrayInitWithCopy();

    if (v19)
    {
      v25 = v16[2];
      v26 = __OFADD__(v25, v19);
      v27 = v25 + v19;
      if (v26)
      {
        goto LABEL_31;
      }

      v16[2] = v27;
    }

LABEL_5:
    v13 &= v13 - 1;
    v4 = v36;
    v6 = v28;
  }

  (*v31)(v9, v6);

LABEL_26:
}

void *sub_252853E34(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = *(type metadata accessor for ZoneEntity(0) - 8);
  v7 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v20 = *(v6 + 72);
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    result = a1(&v22, v7);
    if (v3)
    {

      return v8;
    }

    v10 = v22;
    v11 = *(v22 + 16);
    v12 = v8[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v13 <= v8[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      v8 = sub_252737E4C(isUniquelyReferenced_nonNull_native, v15, 1, v8);
      if (*(v10 + 16))
      {
LABEL_15:
        v16 = (v8[3] >> 1) - v8[2];
        result = sub_2528BECF0();
        if (v16 < v11)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v11)
        {
          v17 = v8[2];
          v18 = __OFADD__(v17, v11);
          v19 = v17 + v11;
          if (v18)
          {
            goto LABEL_25;
          }

          v8[2] = v19;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_4:
    v7 += v20;
    if (!--v4)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_25285403C(void (*a1)(uint64_t *__return_ptr, uint64_t *, double), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return;
  }

  v5 = (a3 + 64);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = *(v5 - 2);
    v8 = *(v5 - 1);
    v9 = *(v5 - 3);
    v10 = *v5;
    v22 = *(v5 - 4);
    v23 = v9;
    v24 = v7;
    v25 = v8;
    v26 = v10;
    v11 = sub_252760C18(v22, v9, v7, v8, v10);
    a1(&v27, &v22, v11);
    if (v3)
    {
      sub_25272C15C(v22, v23, v24, v25, v26);

      return;
    }

    sub_25272C15C(v22, v23, v24, v25, v26);
    v12 = v27;
    v13 = *(v27 + 16);
    v14 = v6[2];
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v15 <= v6[3] >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v17 = v14 + v13;
      }

      else
      {
        v17 = v14;
      }

      v6 = sub_252737A38(isUniquelyReferenced_nonNull_native, v17, 1, v6);
      if (*(v12 + 16))
      {
LABEL_15:
        if ((v6[3] >> 1) - v6[2] < v13)
        {
          goto LABEL_24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC740, &qword_2528D4330);
        swift_arrayInitWithCopy();

        if (v13)
        {
          v18 = v6[2];
          v19 = __OFADD__(v18, v13);
          v20 = v18 + v13;
          if (v19)
          {
            goto LABEL_25;
          }

          v6[2] = v20;
        }

        goto LABEL_4;
      }
    }

    if (v13)
    {
      goto LABEL_23;
    }

LABEL_4:
    v5 += 40;
    if (!--v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t static ShowDeviceResultIntent.createShowDeviceResultIntent(deviceResults:snapshot:matterSnapshot:attributes:attributeKind:devices:sourceIntentType:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t *a8@<X8>)
{
  v13 = *a5;
  v14 = *a7;
  ShowDeviceResultIntent.init()(a8);
  if ((v14 & 1) == 0)
  {
    sub_252859458(a1, a2, &v37);
    sub_2528BE7A0();
    if (v13 == 63)
    {
      goto LABEL_8;
    }

    LOBYTE(v37) = v13;
    goto LABEL_7;
  }

  sub_252859C3C(a1, a2, a3, &v37);
  sub_2528BE7A0();
  sub_2528BE790();
  if (v37 != 4)
  {
    v15 = sub_252852964(v37, 1u);
    if (v15)
    {
      MEMORY[0x28223BE20](v15);
      v36[2] = a2;
      v36[3] = a6;
      v37 = sub_252853180(sub_252760634, v36, a1);
      sub_2528BE7A0();
      v37 = a1;

LABEL_7:
      sub_2528BE7A0();
    }
  }

LABEL_8:
  sub_25285A33C(a4, &v37);
  v16 = v37;
  if (v37 != 2)
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v17 = sub_2528C08B0();
    __swift_project_value_buffer(v17, qword_27F5025C8);
    v18 = sub_2528C0890();
    v19 = sub_2528C0D10();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37 = v21;
      *v20 = 136315138;
      if (v16)
      {
        v22 = 0xD000000000000010;
      }

      else
      {
        v22 = 6449010;
      }

      if (v16)
      {
        v23 = 0x80000002528E51C0;
      }

      else
      {
        v23 = 0xE300000000000000;
      }

      v24 = sub_2527389AC(v22, v23, &v37);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_252711000, v18, v19, "Setting SecondaryAccessoryControlDestinationin in ShowDeviceResultIntent: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x2530A8D80](v21, -1, -1);
      MEMORY[0x2530A8D80](v20, -1, -1);
    }

    LOBYTE(v37) = v16 & 1;
    sub_2528BE7A0();
  }

  v25 = _s14HomeAppIntents22ShowDeviceResultIntentV019getSuccessAndFailedE3IDs4fromShySSG07successeL0_AF06failedeL0tSayAA0eF0VG_tFZ_0(a1);
  v26 = v25;
  v28 = v27;
  v29 = *(v25 + 16);
  if (v29)
  {
    v30 = sub_252865988(*(v25 + 16), 0);
    v31 = sub_252868828(&v37, v30 + 4, v29, v26);
    sub_25271A648(v37);
    if (v31 == v29)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  v30 = MEMORY[0x277D84F90];
LABEL_24:
  v37 = v30;
  sub_2528BE7A0();
  v32 = *(v28 + 16);
  if (!v32)
  {
LABEL_27:

    v33 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v33 = sub_252865988(*(v28 + 16), 0);
  v34 = sub_252868828(&v37, v33 + 4, v32, v28);
  sub_25271A648(v37);
  if (v34 != v32)
  {
    __break(1u);
    goto LABEL_27;
  }

LABEL_28:
  v37 = v33;
  return sub_2528BE7A0();
}

uint64_t static ShowDeviceResultIntent.mergedDeviceIdsToDisplay(devicesToDisplay:snapshot:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_252854664;

  return sub_25286A4D0(a1, a2);
}

uint64_t sub_252854664(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t SecondaryAccessoryControlDestination.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 6449010;
  }
}

uint64_t sub_252854798()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F4FF9F8);
  __swift_project_value_buffer(v0, qword_27F4FF9F8);
  return sub_2528BEC20();
}

void (*ShowDeviceResultIntent.userSpecificity.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

void (*ShowDeviceResultIntent.destination.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

void (*ShowDeviceResultIntent.successDeviceIDs.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

void (*ShowDeviceResultIntent.failedDeviceIDs.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

void (*ShowDeviceResultIntent.failedDeviceIDsToIgnore.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

void (*ShowDeviceResultIntent.attributeType.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

void (*ShowDeviceResultIntent.oldDeviceResults.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

void (*ShowDeviceResultIntent.newDeviceResults.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2528BE780();
  return sub_25272EE48;
}

void *ShowDeviceResultIntent.successDeviceUUIDs.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_2528BECF0();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v19 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2528BE790();
  v6 = v20;
  if (!v20)
  {
    return 0;
  }

  v18 = *(v20 + 16);
  if (!v18)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_15:

    return v11;
  }

  v7 = 0;
  v8 = (v17 + 48);
  v9 = (v17 + 32);
  v10 = v20 + 40;
  v11 = MEMORY[0x277D84F90];
  v16 = v20;
  while (v7 < *(v6 + 16))
  {

    sub_2528BECA0();

    if ((*v8)(v2, 1, v3) == 1)
    {
      result = sub_2527213D8(v2, &qword_27F4FC628, &qword_2528C4750);
    }

    else
    {
      v12 = *v9;
      (*v9)(v19, v2, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_252737E4C(0, v11[2] + 1, 1, v11);
      }

      v14 = v11[2];
      v13 = v11[3];
      if (v14 >= v13 >> 1)
      {
        v11 = sub_252737E4C((v13 > 1), v14 + 1, 1, v11);
      }

      v11[2] = v14 + 1;
      result = (v12)(v11 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v14, v19, v3);
      v6 = v16;
    }

    ++v7;
    v10 += 16;
    if (v18 == v7)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void *ShowDeviceResultIntent.failedDeviceUUIDs.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_2528BECF0();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v19 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2528BE790();
  v6 = v20;
  if (!v20)
  {
    return 0;
  }

  v18 = *(v20 + 16);
  if (!v18)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_15:

    return v11;
  }

  v7 = 0;
  v8 = (v17 + 48);
  v9 = (v17 + 32);
  v10 = v20 + 40;
  v11 = MEMORY[0x277D84F90];
  v16 = v20;
  while (v7 < *(v6 + 16))
  {

    sub_2528BECA0();

    if ((*v8)(v2, 1, v3) == 1)
    {
      result = sub_2527213D8(v2, &qword_27F4FC628, &qword_2528C4750);
    }

    else
    {
      v12 = *v9;
      (*v9)(v19, v2, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_252737E4C(0, v11[2] + 1, 1, v11);
      }

      v14 = v11[2];
      v13 = v11[3];
      if (v14 >= v13 >> 1)
      {
        v11 = sub_252737E4C((v13 > 1), v14 + 1, 1, v11);
      }

      v11[2] = v14 + 1;
      result = (v12)(v11 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v14, v19, v3);
      v6 = v16;
    }

    ++v7;
    v10 += 16;
    if (v18 == v7)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void *ShowDeviceResultIntent.failedDeviceUUIDsToIgnore.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_2528BECF0();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v19 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2528BE790();
  v6 = v20;
  if (!v20)
  {
    return 0;
  }

  v18 = *(v20 + 16);
  if (!v18)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_15:

    return v11;
  }

  v7 = 0;
  v8 = (v17 + 48);
  v9 = (v17 + 32);
  v10 = v20 + 40;
  v11 = MEMORY[0x277D84F90];
  v16 = v20;
  while (v7 < *(v6 + 16))
  {

    sub_2528BECA0();

    if ((*v8)(v2, 1, v3) == 1)
    {
      result = sub_2527213D8(v2, &qword_27F4FC628, &qword_2528C4750);
    }

    else
    {
      v12 = *v9;
      (*v9)(v19, v2, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_252737E4C(0, v11[2] + 1, 1, v11);
      }

      v14 = v11[2];
      v13 = v11[3];
      if (v14 >= v13 >> 1)
      {
        v11 = sub_252737E4C((v13 > 1), v14 + 1, 1, v11);
      }

      v11[2] = v14 + 1;
      result = (v12)(v11 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v14, v19, v3);
      v6 = v16;
    }

    ++v7;
    v10 += 16;
    if (v18 == v7)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void (*ShowDeviceResultIntent.secondaryAccessoryControlDestination.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

uint64_t ShowDeviceResultIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v84 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9B8, &unk_2528D3400);
  MEMORY[0x28223BE20](v1 - 8);
  v73 = &v65 - v2;
  v86 = sub_2528BE950();
  v3 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v81 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v65 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v65 - v12;
  v14 = sub_2528BEC40();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFA50, &unk_2528D44A0);
  sub_2528BEC20();
  v77 = *(v15 + 56);
  v78 = v14;
  v79 = v15 + 56;
  v77(v13, 1, 1, v14);
  v87 = 0;
  v18 = sub_2528BE630();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v80 = v20;
  v21 = v19 + 56;
  v20(v10, 1, 1, v18);
  v20(v8, 1, 1, v18);
  v83 = *MEMORY[0x277CBA308];
  v22 = *(v3 + 104);
  v85 = v3 + 104;
  v82 = v22;
  v23 = v81;
  v22(v81);
  sub_25286BB08();
  *v84 = sub_2528BE7D0();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE780, &qword_2528CD970);
  sub_2528BEC20();
  v24 = v77;
  v77(v13, 1, 1, v14);
  LOBYTE(v87) = 4;
  v74 = v18;
  v25 = v80;
  v76 = v21;
  v80(v10, 1, 1, v18);
  v67 = v8;
  v25(v8, 1, 1, v18);
  v26 = v86;
  v82(v23, v83, v86);
  sub_2527233F0();
  v75 = v17;
  v84[1] = sub_2528BE7D0();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFA60, &qword_2528D44B0);
  sub_2528BEC20();
  v24(v13, 1, 1, v78);
  v87 = 0;
  v70 = sub_2528C0940();
  v27 = *(v70 - 8);
  v69 = *(v27 + 56);
  v72 = v27 + 56;
  v28 = v73;
  v69(v73, 1, 1, v70);
  v66 = v10;
  v29 = v74;
  v80(v10, 1, 1, v74);
  v30 = v82;
  v82(v23, v83, v26);
  v31 = sub_2528BE800();
  v32 = v84;
  v84[2] = v31;
  sub_2528BEC20();
  v68 = v13;
  v34 = v77;
  v33 = v78;
  v77(v13, 1, 1, v78);
  v87 = 0;
  v69(v28, 1, 1, v70);
  v35 = v66;
  v36 = v80;
  v80(v66, 1, 1, v29);
  v37 = v83;
  v30(v81, v83, v86);
  v38 = v73;
  v32[3] = sub_2528BE800();
  sub_2528BEC20();
  v34(v13, 1, 1, v33);
  v87 = 0;
  v69(v38, 1, 1, v70);
  v39 = v74;
  v36(v35, 1, 1, v74);
  v40 = v86;
  v82(v81, v37, v86);
  v41 = v68;
  v42 = sub_2528BE800();
  v43 = v84;
  v84[4] = v42;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFA68, &qword_2528D44B8);
  sub_2528BEC20();
  v77(v41, 1, 1, v78);
  LOBYTE(v87) = 63;
  v44 = v35;
  v45 = v80;
  v80(v35, 1, 1, v39);
  v46 = v67;
  v45(v67, 1, 1, v39);
  v47 = v40;
  v48 = v82;
  v82(v81, v83, v47);
  sub_25272E944();
  v49 = v68;
  v43[5] = sub_2528BE7D0();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFA70, &qword_2528D44C0);
  sub_2528BEC20();
  v50 = v49;
  v51 = v49;
  v53 = v77;
  v52 = v78;
  v77(v50, 1, 1, v78);
  v87 = 0;
  v54 = v80;
  v80(v44, 1, 1, v39);
  v54(v46, 1, 1, v39);
  v55 = v83;
  v48(v81, v83, v86);
  v72 = sub_25280D0D0();
  v84[6] = sub_2528BE7F0();
  sub_2528BEC20();
  v53(v51, 1, 1, v52);
  v87 = 0;
  v56 = v74;
  v57 = v80;
  v80(v44, 1, 1, v74);
  v58 = v46;
  v57(v46, 1, 1, v56);
  v59 = v81;
  v82(v81, v55, v86);
  v60 = sub_2528BE7F0();
  v61 = v84;
  v84[7] = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF358, &unk_2528D2D60);
  sub_2528BEC20();
  v77(v51, 1, 1, v78);
  LOBYTE(v87) = 2;
  v57(v44, 1, 1, v56);
  v57(v58, 1, 1, v56);
  v82(v59, v83, v86);
  sub_252816A44();
  v61[8] = sub_2528BE7D0();
  v62 = *(type metadata accessor for ShowDeviceResultIntent(0) + 52);
  v63 = sub_2528BF400();
  return (*(*(v63 - 8) + 56))(v61 + v62, 1, 1, v63);
}

uint64_t ShowDeviceResultIntent.init(userSpecificity:destination:successDeviceIDs:failedDeviceIDs:failedDeviceIDsToIgnore:attributeType:oldDeviceResults:newDeviceResults:secondaryAccessoryControlDestination:sourceStateSnapshot:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, unsigned __int8 *a10, uint64_t a11)
{
  v91 = a8;
  v90 = a7;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v86 = a1;
  v111 = a9;
  v92 = a11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9B8, &unk_2528D3400);
  MEMORY[0x28223BE20](v13 - 8);
  v97 = &v78 - v14;
  v110 = sub_2528BE950();
  v112 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v106 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v78 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v78 - v23;
  v25 = sub_2528BEC40();
  v103 = v25;
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *a2;
  v84 = *a6;
  v85 = *a10;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFA50, &unk_2528D44A0);
  sub_2528BEC20();
  v29 = *(v26 + 56);
  v104 = v26 + 56;
  v107 = v29;
  v29(v24, 1, 1, v25);
  v113 = 0;
  v30 = sub_2528BE630();
  v109 = v30;
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v33 = v31 + 56;
  v32(v21, 1, 1, v30);
  v32(v19, 1, 1, v30);
  v108 = *MEMORY[0x277CBA308];
  v105 = *(v112 + 104);
  v112 += 104;
  v34 = v110;
  v105(v106);
  sub_25286BB08();
  v35 = v19;
  v82 = sub_2528BE7D0();
  *v111 = v82;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE780, &qword_2528CD970);
  sub_2528BEC20();
  v36 = v103;
  v107(v24, 1, 1, v103);
  LOBYTE(v113) = 4;
  v98 = v21;
  v37 = v21;
  v38 = v109;
  v101 = v33;
  v102 = v32;
  v32(v37, 1, 1, v109);
  v100 = v35;
  v32(v35, 1, 1, v38);
  v39 = v106;
  (v105)(v106, v108, v34);
  sub_2527233F0();
  v40 = v24;
  v81 = sub_2528BE7D0();
  v41 = v111;
  v111[1] = v81;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFA60, &qword_2528D44B0);
  sub_2528BEC20();
  v42 = v107;
  v107(v24, 1, 1, v36);
  v113 = 0;
  v95 = sub_2528C0940();
  v43 = *(v95 - 8);
  v94 = *(v43 + 56);
  v96 = v43 + 56;
  v44 = v97;
  v94(v97, 1, 1, v95);
  v45 = v102;
  v102(v98, 1, 1, v109);
  (v105)(v39, v108, v110);
  v93 = v28;
  v80 = sub_2528BE800();
  v41[2] = v80;
  sub_2528BEC20();
  v46 = v103;
  v42(v40, 1, 1, v103);
  v113 = 0;
  v94(v44, 1, 1, v95);
  v47 = v98;
  v45(v98, 1, 1, v109);
  v48 = v105;
  v49 = v106;
  v50 = v108;
  (v105)(v106, v108, v110);
  v79 = sub_2528BE800();
  v111[3] = v79;
  sub_2528BEC20();
  v107(v40, 1, 1, v46);
  v113 = 0;
  v94(v97, 1, 1, v95);
  v102(v47, 1, 1, v109);
  v51 = v49;
  v52 = v110;
  v48(v51, v50, v110);
  v53 = v47;
  v99 = sub_2528BE800();
  v54 = v111;
  v111[4] = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFA68, &qword_2528D44B8);
  sub_2528BEC20();
  v107(v40, 1, 1, v103);
  LOBYTE(v113) = 63;
  v55 = v47;
  v56 = v109;
  v57 = v102;
  v102(v55, 1, 1, v109);
  v57(v100, 1, 1, v56);
  v58 = v52;
  v59 = v105;
  (v105)(v106, v108, v58);
  sub_25272E944();
  v78 = v40;
  v60 = v53;
  v97 = sub_2528BE7D0();
  v54[5] = v97;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFA70, &qword_2528D44C0);
  sub_2528BEC20();
  v61 = v103;
  v62 = v107;
  v107(v40, 1, 1, v103);
  v113 = 0;
  v63 = v109;
  v64 = v102;
  v102(v60, 1, 1, v109);
  v64(v100, 1, 1, v63);
  v65 = v108;
  (v59)(v106, v108, v110);
  v94 = sub_25280D0D0();
  v66 = v78;
  v67 = v98;
  v96 = sub_2528BE7F0();
  v111[6] = v96;
  sub_2528BEC20();
  v68 = v66;
  v62(v66, 1, 1, v61);
  v113 = 0;
  v69 = v109;
  v70 = v102;
  v102(v67, 1, 1, v109);
  v71 = v100;
  v70(v100, 1, 1, v69);
  v72 = v106;
  (v105)(v106, v65, v110);
  v95 = sub_2528BE7F0();
  v111[7] = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF358, &unk_2528D2D60);
  sub_2528BEC20();
  v107(v68, 1, 1, v103);
  LOBYTE(v113) = 2;
  v70(v67, 1, 1, v69);
  v70(v71, 1, 1, v69);
  (v105)(v72, v108, v110);
  sub_252816A44();
  v73 = sub_2528BE7D0();
  v74 = v111;
  v111[8] = v73;
  v75 = *(type metadata accessor for ShowDeviceResultIntent(0) + 52);
  v76 = sub_2528BF400();
  (*(*(v76 - 8) + 56))(v74 + v75, 1, 1, v76);
  v113 = v86;
  sub_2528BE7A0();
  LOBYTE(v113) = v83;
  sub_2528BE7A0();
  v113 = v87;
  sub_2528BE7A0();
  v113 = v88;
  sub_2528BE7A0();
  v113 = v89;
  sub_2528BE7A0();
  LOBYTE(v113) = v84;
  sub_2528BE7A0();
  v113 = v90;
  sub_2528BE7A0();
  v113 = v91;
  sub_2528BE7A0();
  LOBYTE(v113) = v85;
  sub_2528BE7A0();
  return sub_25286BBA8(v92, v74 + v75);
}

uint64_t ShowDeviceResultIntent.perform()(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA8, &unk_2528C5CB0);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  v2[20] = swift_task_alloc();
  v3 = sub_2528BF400();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v2[23] = *(v4 + 64);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v2[27] = swift_task_alloc();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8);
  v2[28] = v5;
  v2[29] = *(v5 + 64);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v6 = sub_2528BE8B0();
  v2[32] = v6;
  v2[33] = *(v6 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = type metadata accessor for ShowDeviceResultIntent(0);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252857514, 0, 0);
}

uint64_t sub_252857514()
{
  v55 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 304);
  v6 = *(v0 + 136);
  v7 = sub_2528C08B0();
  *(v0 + 344) = __swift_project_value_buffer(v7, qword_27F5025C8);
  sub_25286F980(v6, v2, type metadata accessor for ShowDeviceResultIntent);
  sub_25286F980(v6, v1, type metadata accessor for ShowDeviceResultIntent);
  sub_25286F980(v6, v3, type metadata accessor for ShowDeviceResultIntent);
  sub_25286F980(v6, v4, type metadata accessor for ShowDeviceResultIntent);
  sub_25286F980(v6, v5, type metadata accessor for ShowDeviceResultIntent);
  v8 = sub_2528C0890();
  v9 = sub_2528C0D10();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 328);
  v12 = *(v0 + 336);
  v13 = *(v0 + 312);
  v14 = *(v0 + 320);
  v15 = *(v0 + 304);
  if (v10)
  {
    v50 = *(v0 + 312);
    v16 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = v53;
    *v16 = 136316162;
    log = v8;
    sub_2528BE790();
    v51 = v9;
    *(v0 + 72) = *(v0 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFA78, &qword_2528D44E0);
    v17 = sub_2528C0DB0();
    v19 = v18;
    sub_25286FA3C(v12, type metadata accessor for ShowDeviceResultIntent);

    v20 = sub_2527389AC(v17, v19, &v54);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    sub_2528BE790();
    *(v0 + 88) = *(v0 + 80);
    v21 = sub_2528C0DB0();
    v23 = v22;
    sub_25286FA3C(v11, type metadata accessor for ShowDeviceResultIntent);

    v24 = sub_2527389AC(v21, v23, &v54);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2080;
    sub_2528BE790();
    *(v0 + 104) = *(v0 + 96);
    v25 = sub_2528C0DB0();
    v27 = v26;
    sub_25286FA3C(v14, type metadata accessor for ShowDeviceResultIntent);

    v28 = sub_2527389AC(v25, v27, &v54);

    *(v16 + 24) = v28;
    *(v16 + 32) = 2080;
    sub_2528BE790();
    *(v0 + 120) = *(v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFA80, &qword_2528D44E8);
    v29 = sub_2528C0DB0();
    v31 = v30;
    sub_25286FA3C(v50, type metadata accessor for ShowDeviceResultIntent);

    v32 = sub_2527389AC(v29, v31, &v54);

    *(v16 + 34) = v32;
    *(v16 + 42) = 2080;
    sub_2528BE790();
    v33 = *(v0 + 401);
    v34 = 0x80000002528E51C0;
    v35 = 6449010;
    if (v33)
    {
      v35 = 0xD000000000000010;
    }

    else
    {
      v34 = 0xE300000000000000;
    }

    if (v33 == 2)
    {
      v36 = 0;
    }

    else
    {
      v36 = v35;
    }

    if (v33 == 2)
    {
      v37 = 0xE000000000000000;
    }

    else
    {
      v37 = v34;
    }

    sub_25286FA3C(*(v0 + 304), type metadata accessor for ShowDeviceResultIntent);
    v38 = sub_2527389AC(v36, v37, &v54);

    *(v16 + 44) = v38;
    _os_log_impl(&dword_252711000, log, v51, "Show Device Result Intent perform() called - successDeviceIDs: %s failedDeviceIDs: %s failedDeviceIDsToIgnore: %s userSpecificity: %s secondaryAccessoryControlDestination: %s", v16, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v53, -1, -1);
    MEMORY[0x2530A8D80](v16, -1, -1);
  }

  else
  {

    sub_25286FA3C(v15, type metadata accessor for ShowDeviceResultIntent);
    sub_25286FA3C(v13, type metadata accessor for ShowDeviceResultIntent);
    sub_25286FA3C(v14, type metadata accessor for ShowDeviceResultIntent);
    sub_25286FA3C(v11, type metadata accessor for ShowDeviceResultIntent);
    sub_25286FA3C(v12, type metadata accessor for ShowDeviceResultIntent);
  }

  v39 = *(v0 + 272);
  v40 = *(v0 + 256);
  v41 = *(v0 + 264);
  v42 = *(v0 + 208);
  v43 = *(v0 + 216);
  sub_2528BE790();
  *(v0 + 402) = *(v0 + 400);
  sub_2528BE790();
  *(v0 + 352) = *(v0 + 16);
  sub_2528BE790();
  *(v0 + 360) = *(v0 + 24);
  sub_25286FE38(&qword_27F4FCDF0, type metadata accessor for ShowDeviceResultIntent, &protocol conformance descriptor for ShowDeviceResultIntent);
  sub_2528BE5B0();
  sub_2528BE8A0();
  (*(v41 + 8))(v39, v40);
  v44 = type metadata accessor for HomeEntity(0);
  (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
  v45 = sub_2528C05D0();
  (*(*(v45 - 8) + 56))(v42, 1, 1, v45);
  v46 = swift_task_alloc();
  *(v0 + 368) = v46;
  *v46 = v0;
  v46[1] = sub_252857B50;
  v47 = *(v0 + 208);
  v48 = *(v0 + 216);

  return sub_25277ECE4(v48, 0, 0, v47);
}

uint64_t sub_252857B50(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 208);
  *(*v1 + 376) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v2, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_252857CAC, 0, 0);
}

uint64_t sub_252857CAC()
{
  v1 = v0[9].i64[1];
  sub_2527D38F8(v0[23].i64[1], v1);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[10].i64[1];
    v4 = v0[11].i64[0];
    v6 = v0[9].i64[1];
    v5 = v0[10].i64[0];

    sub_2527213D8(v6, &qword_27F4FCDA8, &unk_2528C5CB0);
    (*(v4 + 56))(v5, 1, 1, v3);
LABEL_5:
    sub_2527213D8(v0[10].i64[0], &qword_27F4FCD98, &qword_2528C6200);
    v15 = sub_2528C0890();
    v16 = sub_2528C0CF0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_252711000, v15, v16, "No snapshot found for current home", v17, 2u);
      MEMORY[0x2530A8D80](v17, -1, -1);
    }

    v18 = v0[15].i64[1];

    sub_2527D66B0();
    swift_allocError();
    swift_willThrow();
    sub_2527213D8(v18, &qword_27F4FCE00, &qword_2528C5D20);

    v19 = v0->i64[1];

    return v19();
  }

  v7 = v0[10].i64[1];
  v8 = v0[11].i64[0];
  v10 = v0[9].i64[1];
  v9 = v0[10].i64[0];
  v11 = *(v2 + 48);
  v12 = *(v8 + 16);
  v12(v9, v10 + v11, v7);
  sub_25286FA3C(v10 + v11, type metadata accessor for HomeEntity.SnapshotPair);
  (*(v8 + 56))(v9, 0, 1, v7);
  v13 = sub_2528BECF0();
  (*(*(v13 - 8) + 8))(v10, v13);
  v14 = (*(v8 + 48))(v9, 1, v7);
  v41 = v0[22];
  if (v14 == 1)
  {

    goto LABEL_5;
  }

  v40 = v0[25].i8[2];
  v21 = v0[15].i64[1];
  v36 = v0[14].i64[0];
  v22 = v0[12].i64[0];
  v23 = v0[12].i64[1];
  v24 = v0[11].i64[0];
  v34 = v0[15].i64[0];
  v35 = v0[11].i64[1];
  v25 = v0[10].i64[1];
  v33 = v12;
  v26 = v0[9].i64[0];
  v39 = v21;
  v38 = vceqzq_s64(v0[22]);
  v37 = *(v24 + 32);
  v37(v23, v0[10].i64[0], v25);
  v27 = sub_2528C0C40();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  v33(v22, v23, v25);
  sub_25272006C(v21, v34, &qword_27F4FCE00, &qword_2528C5D20);
  v28 = (*(v24 + 80) + 65) & ~*(v24 + 80);
  v29 = (v35 + *(v36 + 80) + v28) & ~*(v36 + 80);
  v30 = swift_allocObject();
  v30[1].i64[0] = 0;
  v30[1].i64[1] = 0;
  v31 = MEMORY[0x277D84F90];
  v30[2].i64[0] = MEMORY[0x277D84F90];
  v30[2].i8[8] = 0;
  v30[3] = vbslq_s8(v38, vdupq_n_s64(v31), v41);
  v30[4].i8[0] = v40;
  v37(v30->i64 + v28, v22, v25);
  sub_25274AA0C(v34, v30->i64 + v29, &qword_27F4FCE00, &qword_2528C5D20);
  sub_2527D3E74(0, 0, v26, &unk_2528CD990, v30);

  (*(v24 + 8))(v23, v25);
  sub_2527213D8(v39, &qword_27F4FCE00, &qword_2528C5D20);
  v32 = swift_task_alloc();
  v0[24].i64[0] = v32;
  *v32 = v0;
  v32[1] = sub_2528582D4;

  return sub_252858878();
}

uint64_t sub_2528582D4(uint64_t a1)
{
  *(*v1 + 392) = a1;

  return MEMORY[0x2822009F8](sub_2528583D4, 0, 0);
}

uint64_t sub_2528583D4()
{
  v23 = v0;
  v1 = *(v0[49] + 16);

  if (v1)
  {
    sub_2528BE670();

    v2 = v0[1];
  }

  else
  {
    v3 = v0[36];
    v4 = v0[17];
    sub_25286F980(v4, v0[37], type metadata accessor for ShowDeviceResultIntent);
    sub_25286F980(v4, v3, type metadata accessor for ShowDeviceResultIntent);
    v5 = sub_2528C0890();
    v6 = sub_2528C0CF0();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[36];
    v9 = v0[37];
    if (v7)
    {
      v10 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22[0] = v21;
      *v10 = 136315394;
      v20 = v6;
      sub_2528BE790();
      v0[5] = v0[4];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFA78, &qword_2528D44E0);
      v11 = sub_2528C0DB0();
      v13 = v12;
      sub_25286FA3C(v9, type metadata accessor for ShowDeviceResultIntent);

      v14 = sub_2527389AC(v11, v13, v22);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      sub_2528BE790();
      v0[7] = v0[6];
      v15 = sub_2528C0DB0();
      v17 = v16;
      sub_25286FA3C(v8, type metadata accessor for ShowDeviceResultIntent);

      v18 = sub_2527389AC(v15, v17, v22);

      *(v10 + 14) = v18;
      _os_log_impl(&dword_252711000, v5, v20, "Provided UUIDs did not match any devices in home. SuccessDeviceIDS: %s | failedDeviceIDs: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A8D80](v21, -1, -1);
      MEMORY[0x2530A8D80](v10, -1, -1);
    }

    else
    {

      sub_25286FA3C(v8, type metadata accessor for ShowDeviceResultIntent);
      sub_25286FA3C(v9, type metadata accessor for ShowDeviceResultIntent);
    }

    type metadata accessor for HomeAppIntentError(0);
    sub_25286FE38(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v2 = v0[1];
  }

  return v2();
}

uint64_t sub_252858878()
{
  v1[4] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v1[5] = swift_task_alloc();
  v2 = sub_2528BECF0();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  v3 = swift_task_alloc();
  v1[10] = v3;
  v4 = swift_task_alloc();
  v1[11] = v4;
  *v4 = v1;
  v4[1] = sub_252858A18;

  return sub_252863570(v3);
}

uint64_t sub_252858A18()
{

  return MEMORY[0x2822009F8](sub_252858B14, 0, 0);
}

uint64_t sub_252858B14()
{
  sub_2528BEEB0();
  v0[12] = MEMORY[0x2530A6500]();
  v0[13] = sub_2528BEEE0();
  v0[14] = sub_2528BEED0();
  v0[15] = sub_25286FE38(&qword_27F4FF398, MEMORY[0x277D153D0], MEMORY[0x277D153D8]);
  v2 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_252858BF4, v2, v1);
}

uint64_t sub_252858BF4()
{

  *(v0 + 128) = sub_2528BEE90();

  return MEMORY[0x2822009F8](sub_252858C70, 0, 0);
}

uint64_t sub_252858C70()
{
  *(v0 + 136) = sub_2528BEED0();
  v2 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_252858D04, v2, v1);
}

uint64_t sub_252858D04()
{

  sub_2528BEE50();

  return MEMORY[0x2822009F8](sub_252858D80, 0, 0);
}

uint64_t sub_252858D80()
{
  v43 = v0;
  sub_2528BE790();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  sub_2528BE790();
  v2 = *(v0 + 144);
  v39 = v0;
  if (v2 <= 1)
  {
    if (*(v0 + 144))
    {
      goto LABEL_17;
    }
  }

  else if (v2 != 2 && v2 != 3)
  {
    goto LABEL_18;
  }

  v3 = sub_2528C1060();

  if (v3)
  {
    goto LABEL_18;
  }

  sub_2528BE790();
  v4 = *(v0 + 24);
  if (!v4)
  {
    goto LABEL_18;
  }

  if (!*(v4 + 16))
  {
LABEL_17:

    goto LABEL_18;
  }

  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v5 = sub_2528C08B0();
  __swift_project_value_buffer(v5, qword_27F5025C8);

  v6 = sub_2528C0890();
  v7 = sub_2528C0D10();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v42[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_2527389AC(0xD00000000000002BLL, 0x80000002528E65C0, v42);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2527389AC(0xD000000000000017, 0x80000002528E6710, v42);
    *(v8 + 22) = 2080;
    v10 = MEMORY[0x2530A81A0](v4, MEMORY[0x277D837D0]);
    v12 = sub_2527389AC(v10, v11, v42);

    *(v8 + 24) = v12;
    _os_log_impl(&dword_252711000, v6, v7, "%s-%s Found failed device IDs - adding to display %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v9, -1, -1);
    MEMORY[0x2530A8D80](v8, -1, -1);
  }

  sub_2527377CC(v4);
LABEL_18:
  v41 = *(v1 + 16);
  if (v41)
  {
    v13 = 0;
    v14 = *(v0 + 56);
    v15 = (v14 + 48);
    v38 = v14;
    v40 = (v14 + 32);
    v16 = v1 + 40;
    v17 = MEMORY[0x277D84F90];
    while (v13 < *(v1 + 16))
    {
      v19 = *(v0 + 40);
      v18 = *(v0 + 48);

      sub_2528BECA0();

      if ((*v15)(v19, 1, v18) == 1)
      {
        sub_2527213D8(*(v0 + 40), &qword_27F4FC628, &qword_2528C4750);
      }

      else
      {
        v20 = *v40;
        (*v40)(*(v0 + 64), *(v0 + 40), *(v0 + 48));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_252737E4C(0, *(v17 + 2) + 1, 1, v17);
        }

        v22 = *(v17 + 2);
        v21 = *(v17 + 3);
        if (v22 >= v21 >> 1)
        {
          v17 = sub_252737E4C((v21 > 1), v22 + 1, 1, v17);
        }

        v0 = v39;
        v23 = *(v39 + 64);
        v24 = *(v39 + 48);
        *(v17 + 2) = v22 + 1;
        v20(&v17[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v22], v23, v24);
      }

      ++v13;
      v16 += 16;
      if (v41 == v13)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_40:
    swift_once();
    goto LABEL_33;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_30:

  if (*(v17 + 2))
  {
    v26 = *(v0 + 72);
    v25 = *(v0 + 80);
    v27 = swift_task_alloc();
    *(v27 + 16) = v25;
    v28 = sub_2527A5FA8(sub_25286FCF0, v27, v17);

    v29 = sub_252865220(v25, v26, v17);

    v42[0] = v28;
    sub_252735F6C(v29);
    sub_2527213D8(v26, &qword_27F4FCDB8, &unk_2528C5CC0);
    v30 = v42[0];
    goto LABEL_36;
  }

  if (qword_27F4FBB40 != -1)
  {
    goto LABEL_40;
  }

LABEL_33:
  v31 = sub_2528C08B0();
  __swift_project_value_buffer(v31, qword_27F5025C8);
  v32 = sub_2528C0890();
  v33 = sub_2528C0CF0();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v42[0] = v35;
    *v34 = 136315394;
    *(v34 + 4) = sub_2527389AC(0xD00000000000002BLL, 0x80000002528E65C0, v42);
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_2527389AC(0xD000000000000017, 0x80000002528E6710, v42);
    _os_log_impl(&dword_252711000, v32, v33, "%s-%s No device IDs found", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v35, -1, -1);
    MEMORY[0x2530A8D80](v34, -1, -1);
  }

  sub_2527213D8(*(v0 + 72), &qword_27F4FCDB8, &unk_2528C5CC0);
  v30 = MEMORY[0x277D84F90];
LABEL_36:
  sub_2527213D8(*(v0 + 80), &qword_27F4FCD98, &qword_2528C6200);

  v36 = *(v0 + 8);

  return v36(v30);
}

void sub_252859458(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v64 = a2;
  v6 = sub_252807840(sub_25286FDA0, v63, a1);
  sub_25285AB14(a1, v66);
  v7 = v66[0];
  if (LOBYTE(v66[0]) != 4)
  {
    goto LABEL_50;
  }

  if (v6)
  {
    if (qword_27F4FBB40 != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_4;
  }

  v61 = a2;
  v62 = a3;
  v12 = a1[2];
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
LABEL_24:
    v23 = *(v13 + 2);
    if (v23)
    {
      v66[0] = MEMORY[0x277D84F90];
      sub_25282F064(0, v23, 0);
      v24 = v66[0];
      v25 = v13 + 40;
      do
      {
        sub_2528BEA50();
        sub_2528BEA50();
        sub_2528BE6B0();

        v26 = v65;
        v66[0] = v24;
        v28 = *(v24 + 16);
        v27 = *(v24 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_25282F064((v27 > 1), v28 + 1, 1);
          v24 = v66[0];
        }

        *(v24 + 16) = v28 + 1;
        *(v24 + v28 + 32) = v26;
        v25 += 16;
        --v23;
      }

      while (v23);
    }

    else
    {

      v24 = MEMORY[0x277D84F90];
    }

    v29 = sub_252743F64(v24);

    if (*(v29 + 16) == 1 && (sub_2527D387C(v29, v66), LOBYTE(v66[0]) <= 0x3Fu) && ((1 << SLOBYTE(v66[0])) & 0x80900808) != 0)
    {
      if (qword_27F4FBB40 != -1)
      {
        swift_once();
      }

      v30 = sub_2528C08B0();
      __swift_project_value_buffer(v30, qword_27F5025C8);

      v31 = sub_2528C0890();
      v32 = sub_2528C0D10();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v66[0] = v34;
        *v33 = 136315138;
        sub_25274A51C();
        v35 = sub_2528C0C80();
        v37 = v36;

        v38 = sub_2527389AC(v35, v37, v66);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_252711000, v31, v32, "Found attribute that prefers answer sheet: %s - Showing Answer Sheet", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        MEMORY[0x2530A8D80](v34, -1, -1);
        MEMORY[0x2530A8D80](v33, -1, -1);
      }

      else
      {
      }

      v7 = 0;
      a3 = v62;
    }

    else
    {
      if (qword_27F4FBB40 != -1)
      {
        swift_once();
      }

      v39 = sub_2528C08B0();
      __swift_project_value_buffer(v39, qword_27F5025C8);

      v40 = sub_2528C0890();
      v41 = sub_2528C0D10();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v66[0] = v43;
        *v42 = 136315138;
        v44 = sub_252852F2C(v29);

        v45 = MEMORY[0x2530A81A0](v44, MEMORY[0x277D837D0]);
        v47 = v46;

        v48 = sub_2527389AC(v45, v47, v66);

        *(v42 + 4) = v48;
        _os_log_impl(&dword_252711000, v40, v41, "Found Attribute Kinds from Read Results: %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
        MEMORY[0x2530A8D80](v43, -1, -1);
        MEMORY[0x2530A8D80](v42, -1, -1);
      }

      else
      {
      }

      MEMORY[0x28223BE20](v49);
      v60[2] = v61;
      v50 = sub_2528070FC(sub_25286FDC0, v60, a1);
      v51 = sub_252743D54(v50);

      v52 = sub_2528C0890();
      v53 = sub_2528C0D10();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v66[0] = v55;
        *v54 = 134218242;
        *(v54 + 4) = *(v51 + 16);
        *(v54 + 12) = 2080;
        sub_2528BECF0();
        sub_25286FE38(&qword_27F4FBD88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v56 = sub_2528C0C80();
        v58 = sub_2527389AC(v56, v57, v66);

        *(v54 + 14) = v58;
        _os_log_impl(&dword_252711000, v52, v53, "showIntentDestinationFromRead - Found %ld deviceIDs: %s", v54, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v55);
        MEMORY[0x2530A8D80](v55, -1, -1);
        MEMORY[0x2530A8D80](v54, -1, -1);
      }

      a3 = v62;
      v59 = *(v51 + 16);

      if (v59 == 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = 3;
      }
    }

    goto LABEL_50;
  }

  v14 = a1 + 5;
  while (1)
  {
    sub_2528BEA50();
    sub_2528BEA50();
    sub_2528BE6B0();

    v15 = v66[0];
    v16 = *(v66[0] + 16);
    a3 = *(v13 + 2);
    v17 = &a3[v16];
    if (__OFADD__(a3, v16))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v17 <= *(v13 + 3) >> 1)
    {
      if (*(v15 + 16))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (a3 <= v17)
      {
        v19 = &a3[v16];
      }

      else
      {
        v19 = a3;
      }

      v13 = sub_252737C04(isUniquelyReferenced_nonNull_native, v19, 1, v13);
      if (*(v15 + 16))
      {
LABEL_20:
        if ((*(v13 + 3) >> 1) - *(v13 + 2) < v16)
        {
          goto LABEL_53;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v20 = *(v13 + 2);
          v21 = __OFADD__(v20, v16);
          v22 = v20 + v16;
          if (v21)
          {
            goto LABEL_54;
          }

          *(v13 + 2) = v22;
        }

        goto LABEL_10;
      }
    }

    if (v16)
    {
      goto LABEL_52;
    }

LABEL_10:
    v14 += 2;
    if (!--v12)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  swift_once();
LABEL_4:
  v8 = sub_2528C08B0();
  __swift_project_value_buffer(v8, qword_27F5025C8);
  v9 = sub_2528C0890();
  v10 = sub_2528C0D10();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_252711000, v9, v10, "All Devices are Read Only - Showing Answer Sheet", v11, 2u);
    MEMORY[0x2530A8D80](v11, -1, -1);
  }

  v7 = 0;
LABEL_50:
  *a3 = v7;
}

void sub_252859C3C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v44 = a2;
  v45 = a3;
  v47 = a4;
  v5 = type metadata accessor for DeviceEntity(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - v8;
  v10 = a1[2];
  v48 = a1;
  v11 = a1 + 5;
  v51 = v10;
  v12 = v10 + 1;
  do
  {
    if (!--v12)
    {
      goto LABEL_32;
    }

    v13 = v11 + 2;
    sub_2528BEA50();
    sub_2528BEA50();
    sub_2528BE6B0();
    sub_2528BE6B0();
    sub_25286FA3C(v9, type metadata accessor for DeviceEntity);
    v56 = v52[0];
    v55 = 2;
    v14 = _s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(&v56, &v55);

    v11 = v13;
  }

  while ((v14 & 1) != 0);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE6B0();

  v50 = v52[0];
  v49 = *(v52[0] + 16);
  if (!v49)
  {
LABEL_15:

    v29 = v48;
    sub_25285B298(v48, v52);
    v30 = v52[0];
    if (LOBYTE(v52[0]) == 4)
    {
      v31 = v29 + 5;
      v32 = MEMORY[0x277D84F90];
      v33 = v46;
      do
      {
        sub_2528BEA50();
        sub_2528BEA50();
        sub_2528BE6B0();
        sub_2528BE6B0();

        sub_25286FA3C(v33, type metadata accessor for DeviceEntity);
        v34 = LOWORD(v52[0]) >> 14;
        v35 = HIBYTE(LOWORD(v52[0])) & 0x3F;
        if (v34 != 1)
        {
          LOBYTE(v35) = v52[0];
        }

        if (v34)
        {
          v36 = v35;
        }

        else
        {
          v36 = v52[0];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_252737D2C(0, *(v32 + 2) + 1, 1, v32);
        }

        v38 = *(v32 + 2);
        v37 = *(v32 + 3);
        if (v38 >= v37 >> 1)
        {
          v32 = sub_252737D2C((v37 > 1), v38 + 1, 1, v32);
        }

        *(v32 + 2) = v38 + 1;
        v32[v38 + 32] = v36;
        v31 += 2;
        --v51;
      }

      while (v51);
      v39 = sub_252743F98(v32);

      v40 = *(v39 + 16);

      if (v40 > 1)
      {
LABEL_32:
        v30 = 2;
      }

      else
      {
        v41 = v48;
        sub_25285B670(v48, v52);
        v30 = v52[0];
        if (LOBYTE(v52[0]) == 4)
        {
          MEMORY[0x28223BE20](v42);
          v43 = v45;
          *(&v44 - 2) = v44;
          *(&v44 - 1) = v43;
          if (sub_252807840(sub_25286FED4, (&v44 - 4), v41))
          {
            v30 = 2;
          }

          else
          {
            v30 = 1;
          }
        }
      }
    }

    *v47 = v30;
    return;
  }

  v15 = 0;
  v16 = v50 + 40;
  while (v15 < *(v50 + 16))
  {
    sub_2528BEA50();
    sub_2528BEA50();
    sub_2528BE6B0();
    v23 = v52[0];
    v24 = v52[1];
    v25 = v52[2];
    v26 = v52[3];
    v27 = v53;
    v28 = v54;
    if (v54)
    {

      v17 = v23;
      v18 = v24;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v22 = v28;
LABEL_7:
      sub_25276925C(v17, v18, v19, v20, v21, v22);
      goto LABEL_8;
    }

    if ((v53 & 0xFE) != 0x58)
    {

      v17 = v23;
      v18 = v24;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v22 = 0;
      goto LABEL_7;
    }

    if ((v23 & 1) == 0)
    {

      goto LABEL_32;
    }

LABEL_8:
    ++v15;
    v16 += 16;
    if (v49 == v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_25285A09C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v25 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  sub_2528BE6B0();
  v9 = v27;
  v10 = *(v27 + 16);
  if (v10)
  {
    v22 = a1;
    v23 = v3;
    v24 = a3;
    v27 = MEMORY[0x277D84F90];
    sub_25282F064(0, v10, 0);
    v11 = v27;
    v12 = v9 + 40;
    do
    {
      sub_2528BEA50();
      sub_2528BEA50();
      sub_2528BE6B0();

      v13 = v26;
      v27 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_25282F064((v14 > 1), v15 + 1, 1);
        v11 = v27;
      }

      *(v11 + 16) = v15 + 1;
      *(v11 + v15 + 32) = v13;
      v12 += 16;
      --v10;
    }

    while (v10);

    a3 = v24;
    a1 = v22;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v16 = sub_2528BF400();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v8, a1, v16);
  v18 = (*(v17 + 56))(v8, 0, 1, v16);
  MEMORY[0x28223BE20](v18);
  *(&v21 - 2) = v11;
  *(&v21 - 1) = v8;
  v19 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_252756620, (&v21 - 4), v25);

  result = sub_2527213D8(v8, &qword_27F4FCD98, &qword_2528C6200);
  *a3 = v19;
  return result;
}

uint64_t sub_25285A33C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = sub_25277B234(13, a1);
  if (result)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = a1 + 32;
      do
      {
        ++v6;
        if (AttributeKind.rawValue.getter() == 0x7265776F70 && v7 == 0xE500000000000000)
        {
          goto LABEL_4;
        }

        v9 = sub_2528C1060();

        if (v9)
        {
          goto LABEL_5;
        }

        if (AttributeKind.rawValue.getter() == 0x726F6C6F63 && v10 == 0xE500000000000000)
        {
LABEL_4:
        }

        else
        {
          v11 = sub_2528C1060();

          if ((v11 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

LABEL_5:
        --v5;
      }

      while (v5);
    }

    v12 = 0;
  }

  else
  {
LABEL_14:
    v12 = 2;
  }

  *a2 = v12;
  return result;
}

uint64_t sub_25285A464()
{
  v0 = sub_2528BFD50();
  v46 = *(v0 - 8);
  v47 = v0;
  MEMORY[0x28223BE20](v0);
  v45 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_2528BFDB0();
  v51 = *(v58 - 8);
  v2 = MEMORY[0x28223BE20](v58);
  v57 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v56 = &v43 - v4;
  v60 = sub_2528C01F0();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v55 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2528C0620();
  v7 = *(v6 - 8);
  v52 = v6;
  v53 = v7;
  MEMORY[0x28223BE20](v6);
  v54 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2528BECF0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DeviceEntity(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2528BF9D0();
  v16 = *(v49 - 8);
  v17 = MEMORY[0x28223BE20](v49);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v48 = &v43 - v20;
  v21 = sub_2528BF370();
  sub_2528BE6B0();
  sub_252819FA8(v12);
  sub_25286FA3C(v15, type metadata accessor for DeviceEntity);
  if (*(v21 + 16) && (v22 = sub_252785C40(v12), (v23 & 1) != 0))
  {
    v24 = *(v21 + 56) + *(v16 + 72) * v22;
    v25 = *(v16 + 16);
    v26 = v16;
    v27 = v49;
    v25(v19, v24, v49);
    (*(v10 + 8))(v12, v9);

    v44 = v26;
    (*(v26 + 32))(v48, v19, v27);
    v28 = v54;
    sub_2528BF8A0();
    v29 = sub_2528C05F0();
    result = (*(v53 + 8))(v28, v52);
    v31 = 0;
    v53 = *(v29 + 16);
    v54 = v29;
    ++v51;
    v52 = v59 + 16;
    v50 = v59 + 8;
    v32 = v51;
    while (1)
    {
      if (v53 == v31)
      {

        v41 = v45;
        v42 = v48;
        sub_2528BF640();
        v40 = sub_2528BFD40();
        (*(v46 + 8))(v41, v47);
        (*(v44 + 8))(v42, v49);
        return v40 & 1;
      }

      if (v31 >= *(v54 + 2))
      {
        break;
      }

      v33 = v59;
      v34 = v55;
      (*(v59 + 16))(v55, &v54[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v31++], v60);
      v35 = v56;
      sub_2528C0190();
      v36 = v57;
      sub_2528BFDA0();
      sub_25286FE38(&qword_27F4FFC88, MEMORY[0x277D16090], MEMORY[0x277D16098]);
      v37 = v58;
      v38 = sub_2528C0DD0();
      v39 = *v32;
      (*v32)(v36, v37);
      v39(v35, v37);
      result = (*(v33 + 8))(v34, v60);
      if (v38)
      {
        (*(v44 + 8))(v48, v49);

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
LABEL_9:
    v40 = 0;
    return v40 & 1;
  }

  return result;
}

void sub_25285AB14(void *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for DeviceEntity(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1[2] != 1)
  {
    goto LABEL_15;
  }

  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE6B0();

  sub_2528BE6B0();
  sub_25286FA3C(v6, type metadata accessor for DeviceEntity);
  v7 = v18;
  v8 = v18 >> 14;
  v9 = HIBYTE(v18) & 0x3F;
  if (v8 != 1)
  {
    LOBYTE(v9) = v18;
  }

  if (v8)
  {
    v7 = v9;
  }

  v17[13] = v7;
  if (DeviceType.SingleDeviceType.rawValue.getter() != 0x74736F6D72656874 || v10 != 0xEA00000000007461)
  {
    v11 = sub_2528C1060();

    if (v11)
    {
      goto LABEL_10;
    }

LABEL_15:
    v16 = 4;
    goto LABEL_16;
  }

LABEL_10:
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v12 = sub_2528C08B0();
  __swift_project_value_buffer(v12, qword_27F5025C8);
  v13 = sub_2528C0890();
  v14 = sub_2528C0D10();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_252711000, v13, v14, "Single Thermostat always prefers accessory controls - Showing Accessory Controls", v15, 2u);
    MEMORY[0x2530A8D80](v15, -1, -1);
  }

  v16 = 1;
LABEL_16:
  *a2 = v16;
}

void sub_25285AD40(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v47 = a3;
  v4 = sub_2528BECF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DeviceEntity(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v46 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  MEMORY[0x28223BE20](v15);
  v44 = &v37 - v18;
  v41 = *a1;
  sub_2528BE6B0();
  v19 = *(v11 + 7);

  sub_25286FA3C(v11, type metadata accessor for DeviceEntity);
  v20 = 1 << *(v19 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v19 + 56);
  v23 = (v20 + 63) >> 6;
  v24 = (v5 + 48);
  v39 = v5;
  v43 = (v5 + 32);

  v25 = 0;
  v48 = MEMORY[0x277D84F90];
  while (1)
  {
    v26 = v25;
    if (!v22)
    {
      break;
    }

LABEL_8:
    v22 &= v22 - 1;

    sub_2528BECA0();

    if ((*v24)(v17, 1, v4) == 1)
    {
      sub_2527213D8(v17, &qword_27F4FC628, &qword_2528C4750);
    }

    else
    {
      v38 = *v43;
      v38(v40, v17, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_252737E4C(0, v48[2] + 1, 1, v48);
      }

      v28 = v48[2];
      v27 = v48[3];
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v37 = v28 + 1;
        v31 = sub_252737E4C((v27 > 1), v28 + 1, 1, v48);
        v29 = v37;
        v48 = v31;
      }

      v30 = v48;
      v48[2] = v29;
      v38(v30 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v28, v40, v4);
    }
  }

  while (1)
  {
    v25 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      return;
    }

    if (v25 >= v23)
    {
      break;
    }

    v22 = *(v19 + 56 + 8 * v25);
    ++v26;
    if (v22)
    {
      goto LABEL_8;
    }
  }

  MEMORY[0x28223BE20](v32);
  v33 = v44;
  *(&v37 - 2) = v45;
  sub_2527A6CF4(sub_25286FDE0, v48, v33);

  v34 = v46;
  sub_25272006C(v33, v46, &qword_27F4FC628, &qword_2528C4750);
  v35 = *v24;
  if ((*v24)(v34, 1, v4) == 1)
  {
    v36 = v42;
    sub_2528BE6B0();
    sub_252819FA8(v47);
    sub_25286FA3C(v36, type metadata accessor for DeviceEntity);
    sub_2527213D8(v33, &qword_27F4FC628, &qword_2528C4750);
    if (v35(v34, 1, v4) != 1)
    {
      sub_2527213D8(v34, &qword_27F4FC628, &qword_2528C4750);
    }
  }

  else
  {
    sub_2527213D8(v33, &qword_27F4FC628, &qword_2528C4750);
    (*v43)(v47, v34, v4);
  }
}

uint64_t sub_25285B298@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for DeviceEntity(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  v11 = a1[2];
  if (v11 < 2)
  {
    if (v11)
    {
      sub_2528BEA50();
      sub_2528BEA50();
      sub_2528BE6B0();

      sub_2528BE6B0();
      result = sub_25286FA3C(v7, type metadata accessor for DeviceEntity);
      v19 = v36 >> 14;
      v20 = BYTE1(v36) & 0x3F;
      if (v19 != 1)
      {
        v20 = v36;
      }

      if (!v19)
      {
        v20 = v36;
      }

      if (v20 != 33)
      {
        LOBYTE(v36) = v20;
        LOBYTE(v35) = 25;
        v21 = DeviceType.SingleDeviceType.rawValue.getter();
        v23 = v22;
        if (v21 == DeviceType.SingleDeviceType.rawValue.getter() && v23 == v24)
        {

LABEL_34:
          v26 = 1;
          goto LABEL_36;
        }

        v29 = sub_2528C1060();

        if (v29)
        {
          goto LABEL_34;
        }
      }
    }

LABEL_35:
    v26 = 4;
    goto LABEL_36;
  }

  v30 = a1;
  v31 = a2;
  v12 = 0;
  v13 = a1 + 4;
  v14 = MEMORY[0x277D84F90];
  do
  {
    v15 = v12;
    while (1)
    {
      if (v15 >= v11)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        __break(1u);
        return result;
      }

      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_38;
      }

      v32 = *&v13[2 * v15];
      sub_2528BEA50();
      sub_2528BEA50();
      sub_2528BE6B0();
      sub_2528BE6B0();
      sub_25286FA3C(v10, type metadata accessor for DeviceEntity);
      v34 = v35;
      v33 = 25;
      if (_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(&v34, &v33))
      {
        break;
      }

      ++v15;
      if (v12 == v11)
      {
        v25 = *(v14 + 16);
        goto LABEL_24;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v36 = v14;
    if ((result & 1) == 0)
    {
      result = sub_25282F094(0, *(v14 + 16) + 1, 1);
      v14 = v36;
    }

    v16 = v32;
    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    v25 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      result = sub_25282F094((v17 > 1), v18 + 1, 1);
      v16 = v32;
      v14 = v36;
    }

    *(v14 + 16) = v25;
    *(v14 + 16 * v18 + 32) = v16;
  }

  while (v12 != v11);
LABEL_24:

  if (v25 <= 1)
  {
    a2 = v31;
    v27 = v30 + 5;
    while (1)
    {
      sub_2528BEA50();
      sub_2528BEA50();
      sub_2528BE6B0();
      sub_2528BE6B0();

      result = sub_25286FA3C(v10, type metadata accessor for DeviceEntity);
      v28 = v36 >> 14;
      if (v28)
      {
        if (v28 != 1 || (v36 & 0x3FFF) != 0x1E19)
        {
          goto LABEL_35;
        }
      }

      else if (v36 != 25)
      {
        goto LABEL_35;
      }

      v27 += 2;
      if (!--v11)
      {
        goto LABEL_34;
      }
    }
  }

  v26 = 2;
  a2 = v31;
LABEL_36:
  *a2 = v26;
  return result;
}

void sub_25285B670(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for DeviceEntity(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  if (v22)
  {
    v21 = a2;
    v7 = 0;
    v23 = a1 + 32;
    while (1)
    {
      sub_2528BEA50();
      sub_2528BEA50();
      sub_2528BE6B0();
      sub_2528BE6B0();
      sub_25286FA3C(v6, type metadata accessor for DeviceEntity);
      LOBYTE(v8) = v24;
      if (v24 >> 14 == 1)
      {
        v8 = BYTE1(v24) & 0x3F;
      }

      LOBYTE(v24) = v8;
      if (DeviceType.SingleDeviceType.rawValue.getter() == 0x6C7562746867696CLL && v9 == 0xE900000000000062)
      {
      }

      else
      {
        v10 = sub_2528C1060();

        if ((v10 & 1) == 0)
        {

LABEL_18:
          v20 = 4;
          goto LABEL_19;
        }
      }

      sub_2528BE6B0();
      v11 = v24;
      v12 = *(v24 + 16);
      if (v12)
      {
        v13 = 0;
        v14 = v24 + 40;
        while (v13 < *(v11 + 16))
        {
          sub_2528BEA50();
          sub_2528BEA50();
          sub_2528BE6B0();

          if (v29)
          {
            sub_25276925C(v24, v25, v26, v27, v28, v29);
          }

          else if ((v28 & 0xFE) != 0x58)
          {
            v15 = v24;
            v16 = v25;
            v17 = v26;
            v18 = v27;
            v19 = v28;

            sub_25276925C(v15, v16, v17, v18, v19, 0);
            goto LABEL_18;
          }

          ++v13;
          v14 += 16;
          if (v12 == v13)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
        return;
      }

LABEL_3:
      ++v7;

      if (v7 == v22)
      {
        v20 = 2;
LABEL_19:
        a2 = v21;
        goto LABEL_21;
      }
    }
  }

  v20 = 2;
LABEL_21:
  *a2 = v20;
}

uint64_t sub_25285B930(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t))
{
  v91 = a3;
  v95 = sub_2528BFDB0();
  v72 = *(v95 - 8);
  v3 = MEMORY[0x28223BE20](v95);
  v94 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v93 = &v72 - v5;
  v98 = sub_2528C01F0();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v92 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_2528C0620();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_2528BFD50();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  MEMORY[0x28223BE20](v9 - 8);
  v87 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF0, &unk_2528C6AB0);
  MEMORY[0x28223BE20](v11 - 8);
  v90 = &v72 - v12;
  v13 = sub_2528BFB20();
  v88 = *(v13 - 8);
  v89 = v13;
  MEMORY[0x28223BE20](v13);
  v79 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7A8, &unk_2528C4860);
  MEMORY[0x28223BE20](v15 - 8);
  v83 = &v72 - v16;
  v17 = sub_2528BF240();
  v81 = *(v17 - 8);
  v82 = v17;
  MEMORY[0x28223BE20](v17);
  v80 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_2528BECF0();
  v19 = *(v97 - 8);
  v20 = MEMORY[0x28223BE20](v97);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v72 - v23;
  v25 = type metadata accessor for DeviceEntity(0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v72 - v29;
  v31 = sub_2528BF9D0();
  v85 = *(v31 - 8);
  v86 = v31;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v84 = &v72 - v35;
  v36 = sub_2528BF370();
  sub_2528BE6B0();
  sub_252819FA8(v24);
  sub_25286FA3C(v30, type metadata accessor for DeviceEntity);
  if (!*(v36 + 16) || (v37 = sub_252785C40(v24), (v38 & 1) == 0))
  {

    v64 = *(v19 + 8);
    v64(v24, v97);
    v65 = v87;
    sub_25272006C(v91, v87, &qword_27F4FCDB8, &unk_2528C5CC0);
    v66 = sub_2528C00D0();
    v67 = *(v66 - 8);
    if ((*(v67 + 48))(v65, 1, v66) == 1)
    {
      sub_2527213D8(v65, &qword_27F4FCDB8, &unk_2528C5CC0);
      v68 = v90;
      (*(v88 + 56))(v90, 1, 1, v89);
    }

    else
    {
      sub_2528BE6B0();
      sub_252819FA8(v22);
      sub_25286FA3C(v28, type metadata accessor for DeviceEntity);
      v68 = v90;
      sub_2528C0080();
      v64(v22, v97);
      (*(v67 + 8))(v65, v66);
      v70 = v88;
      v69 = v89;
      if ((*(v88 + 48))(v68, 1, v89) != 1)
      {
        v71 = v79;
        (*(v70 + 32))(v79, v68, v69);
        v63 = sub_2528BFAA0();
        (*(v70 + 8))(v71, v69);
        return v63 & 1;
      }
    }

    sub_2527213D8(v68, &qword_27F4FCEF0, &unk_2528C6AB0);
    v63 = 0;
    return v63 & 1;
  }

  v40 = v85;
  v39 = v86;
  (*(v85 + 16))(v34, *(v36 + 56) + *(v85 + 72) * v37, v86);
  (*(v19 + 8))(v24, v97);

  v41 = v84;
  (*(v40 + 32))(v84, v34, v39);
  v42 = v80;
  sub_2528BF460();
  v43 = v83;
  sub_2528BF1F0();
  (*(v81 + 8))(v42, v82);
  v44 = sub_2528BFDE0();
  LODWORD(v42) = (*(*(v44 - 8) + 48))(v43, 1, v44);
  sub_2527213D8(v43, &qword_27F4FC7A8, &unk_2528C4860);
  if (v42 == 1 || (v45 = v76, sub_2528BF640(), v46 = sub_2528BFD40(), (*(v77 + 8))(v45, v78), (v46 & 1) == 0))
  {
    (*(v40 + 8))(v41, v39);
    v63 = 0;
    return v63 & 1;
  }

  v47 = v73;
  sub_2528BF8A0();
  v48 = sub_2528C05F0();
  (*(v74 + 8))(v47, v75);
  v49 = *(v48 + 16);
  if (!v49)
  {

    v63 = 0;
LABEL_17:
    (*(v40 + 8))(v41, v39);
    return v63 & 1;
  }

  v50 = 0;
  v91 = *(v96 + 16);
  v51 = v48 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
  v52 = *(v96 + 72);
  v87 = v48;
  v88 = v52;
  v96 += 16;
  v89 = (v96 - 8);
  v90 = (v72 + 8);
  v53 = v92;
  while (1)
  {
    v97 = v50;
    v91(v53, v51, v98);
    v54 = v93;
    sub_2528C0190();
    v55 = v94;
    sub_2528BFDA0();
    sub_25286FE38(&qword_27F4FFC88, MEMORY[0x277D16090], MEMORY[0x277D16098]);
    v56 = v95;
    v57 = sub_2528C0DD0();
    v58 = *v90;
    (*v90)(v55, v56);
    v59 = v54;
    v60 = v97;
    v58(v59, v56);
    result = (*v89)(v53, v98);
    v62 = __OFADD__(v60, v57 & 1);
    v50 = v60 + (v57 & 1);
    if (v62)
    {
      break;
    }

    v51 += v88;
    if (!--v49)
    {

      v63 = v50 == 1;
      v40 = v85;
      v39 = v86;
      v41 = v84;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25285C4A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(void))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - v13;
  v15 = a5(v12);
  if (*(v15 + 16) && (v16 = sub_252785C40(a1), (v17 & 1) != 0))
  {
    v18 = v16;
    v19 = *(v15 + 56);
    v20 = a6(0);
    v21 = *(v20 - 8);
    (*(v21 + 16))(v14, v19 + *(v21 + 72) * v18, v20);

    v22 = 1;
    (*(v21 + 56))(v14, 0, 1, v20);
  }

  else
  {

    v23 = a6(0);
    (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
    v22 = 0;
  }

  sub_2527213D8(v14, a3, a4);
  return v22;
}

uint64_t sub_25285C68C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2528BFFE0();
  v7[2] = a2;
  sub_25281A6A8(sub_25286FC60, v7, v3);
  v5 = v4;

  return v5 & 1;
}

uint64_t sub_25285C748(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25271F3AC;

  return ShowDeviceResultIntent.perform()(a1);
}

uint64_t sub_25285C7E4(uint64_t a1)
{
  v2 = sub_25286FE38(&qword_27F4FCDF0, type metadata accessor for ShowDeviceResultIntent, &protocol conformance descriptor for ShowDeviceResultIntent);

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t SourceIntentType.hashValue.getter()
{
  v1 = *v0;
  sub_2528C1130();
  MEMORY[0x2530A87A0](v1);
  return sub_2528C1180();
}

uint64_t sub_25285C8DC()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FFA10);
  __swift_project_value_buffer(v0, qword_27F4FFA10);
  return sub_2528BE9D0();
}

uint64_t sub_25285C978()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC40, &unk_2528D4CE0);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2C0, &qword_2528C7DC0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17E0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v5 = sub_252790FDC(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FFA28 = v5;
  return result;
}

HomeAppIntents::SecondaryAccessoryControlDestination_optional __swiftcall SecondaryAccessoryControlDestination.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

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

uint64_t sub_25285CB5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 6449010;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0x80000002528E51C0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 6449010;
  }

  if (*a2)
  {
    v6 = 0x80000002528E51C0;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2528C1060();
  }

  return v8 & 1;
}

uint64_t sub_25285CC00()
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_25285CC80(uint64_t a1)
{
  sub_2528C0A40();
}

uint64_t sub_25285CCEC(uint64_t a1)
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_25285CD68@<X0>(char *a2@<X8>)
{
  v3 = sub_2528C0F30();

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

  *a2 = v5;
  return result;
}

void sub_25285CDC8(unint64_t *a1@<X8>)
{
  v2 = 0x80000002528E51C0;
  v3 = 6449010;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25285CE3C(uint64_t a1)
{
  v2 = sub_252816A44();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_25285CEAC(uint64_t a1)
{
  v2 = sub_25286EC90();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_25285CF08()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FFA30);
  __swift_project_value_buffer(v0, qword_27F4FFA30);
  return sub_2528BE9D0();
}

uint64_t sub_25285CFA4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_25285D048()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC38, &unk_2528D4CD0);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2B0, &qword_2528C7DB0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17F0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v4[5 * v1] = 5;
  sub_2528BE8C0();
  v5 = sub_2527911C4(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FFA48 = v5;
  return result;
}

HomeAppIntents::UserSpecificity_optional __swiftcall UserSpecificity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t UserSpecificity.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x614E656369766564;
  v3 = 1701670760;
  v4 = 1836019570;
  if (v1 != 4)
  {
    v4 = 1701736314;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7954656369766564;
  if (v1 != 1)
  {
    v5 = 0x70756F7267;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25285D39C(uint64_t a1)
{
  sub_2528C0A40();
}

void sub_25285D488(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x614E656369766564;
  v4 = 1701670760;
  v5 = 1836019570;
  if (v2 != 4)
  {
    v5 = 1701736314;
  }

  if (v2 != 3)
  {
    v4 = v5;
  }

  v6 = 0xEA00000000006570;
  v7 = 0x7954656369766564;
  if (v2 != 1)
  {
    v7 = 0x70756F7267;
    v6 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = v7;
  }

  else
  {
    v6 = 0xEA0000000000656DLL;
  }

  if (*v1 <= 2u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (*v1 <= 2u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  *a1 = v8;
  a1[1] = v9;
}

uint64_t sub_25285D568@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_25285D610(uint64_t a1)
{
  v2 = sub_25286BB08();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_25285D680(uint64_t a1)
{
  v2 = sub_25286F100();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t ShowDeviceResultIntent.getDeviceTitle(from:)(uint64_t a1)
{
  v2 = v1;
  v74 = a1;
  v3 = sub_2528C00D0();
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x28223BE20](v3);
  v79 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2528BF400();
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x28223BE20](v5);
  v81 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v72 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v72 - v14;
  v16 = sub_2528BECF0();
  v89 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v85 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v86 = &v72 - v20;
  MEMORY[0x28223BE20](v19);
  v87 = &v72 - v21;
  sub_2528BE790();
  if (!v90)
  {
    return 0;
  }

  v73 = v90;
  sub_2528BE790();
  v22 = v90;
  v80 = v2;
  v84 = v10;
  if (v90)
  {
    v83 = v90[2];
    if (v83)
    {
      v23 = 0;
      v24 = (v89 + 48);
      v25 = (v89 + 32);
      v26 = (v90 + 5);
      v88 = MEMORY[0x277D84F90];
      v82 = v90;
      while (v23 < *(v22 + 16))
      {
        v10 = *v26;

        sub_2528BECA0();

        if ((*v24)(v15, 1, v16) == 1)
        {
          sub_2527213D8(v15, &qword_27F4FC628, &qword_2528C4750);
        }

        else
        {
          v27 = *v25;
          (*v25)(v87, v15, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v88 = sub_252737E4C(0, *(v88 + 2) + 1, 1, v88);
          }

          v29 = *(v88 + 2);
          v28 = *(v88 + 3);
          v10 = (v29 + 1);
          if (v29 >= v28 >> 1)
          {
            v88 = sub_252737E4C((v28 > 1), v29 + 1, 1, v88);
          }

          v30 = v88;
          v31 = v89;
          *(v88 + 2) = v10;
          v27(&v30[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v29], v87, v16);
          v22 = v82;
        }

        ++v23;
        v26 += 2;
        if (v83 == v23)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_70;
    }

    v88 = MEMORY[0x277D84F90];
LABEL_17:
  }

  else
  {
    v88 = MEMORY[0x277D84F90];
  }

  sub_2528BE790();
  v32 = v90;
  if (!v90)
  {
    v87 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  v33 = v90[2];
  if (!v33)
  {
    v87 = MEMORY[0x277D84F90];
LABEL_32:

LABEL_33:
    sub_2528BE790();
    v43 = v90;
    if (v90)
    {
      v86 = v90[2];
      if (v86)
      {
        v44 = 0;
        v45 = (v89 + 48);
        v46 = (v89 + 32);
        v47 = (v90 + 5);
        v48 = MEMORY[0x277D84F90];
        while (v44 < *(v43 + 16))
        {
          v10 = *v47;

          v49 = v84;
          sub_2528BECA0();

          if ((*v45)(v49, 1, v16) == 1)
          {
            sub_2527213D8(v49, &qword_27F4FC628, &qword_2528C4750);
          }

          else
          {
            v50 = *v46;
            (*v46)(v85, v49, v16);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = sub_252737E4C(0, *(v48 + 2) + 1, 1, v48);
            }

            v52 = *(v48 + 2);
            v51 = *(v48 + 3);
            v10 = (v52 + 1);
            if (v52 >= v51 >> 1)
            {
              v48 = sub_252737E4C((v51 > 1), v52 + 1, 1, v48);
            }

            *(v48 + 2) = v10;
            v50(&v48[((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v52], v85, v16);
          }

          ++v44;
          v47 += 2;
          if (v86 == v44)
          {
            goto LABEL_47;
          }
        }

        goto LABEL_71;
      }

      v48 = MEMORY[0x277D84F90];
LABEL_47:
    }

    else
    {
      v48 = MEMORY[0x277D84F90];
    }

    v53 = sub_252743D54(v87);

    v54 = sub_252743D54(v48);

    if (*(v54 + 16) <= *(v53 + 16) >> 3)
    {
      v90 = v53;
      sub_252865B58(v54);

      v55 = v90;
    }

    else
    {
      v55 = sub_2528678F0(v54, v53);
    }

    v56 = v79;
    v57 = *(v55 + 16);
    if (v57)
    {
      v58 = sub_252865A5C(*(v55 + 16), 0, &qword_27F4FC828, &qword_2528C48D8, MEMORY[0x277CC95F0]);
      v59 = sub_252868D18(&v90, &v58[(*(v89 + 80) + 32) & ~*(v89 + 80)], v57, v55, MEMORY[0x277CC95F0]);
      sub_25271A648(v90);
      if (v59 == v57)
      {
        goto LABEL_55;
      }

      __break(1u);
    }

    v58 = MEMORY[0x277D84F90];
LABEL_55:
    sub_2528BEE70();
    sub_2528BEE80();
    sub_2528BE790();
    if (v90 == 4)
    {
      v60 = 0;
    }

    else
    {
      v60 = sub_252852964(v90, 3u);
    }

    v61 = v81;
    v16 = _s14HomeAppIntents22ShowDeviceResultIntentV23getUserSpecificityTitle4from07successE5UUIDs06failedeN013stateSnapshot06matterQ019includeDotSeparatorSSSgSayAA0iJ0OG_Say10Foundation4UUIDVGAR0A9DataModel05StateQ0VAS06MatterzQ0VSbtFZ_0(v73, v88, v58, v81, v56, v60 & 1);
    v10 = v62;

    (*(v77 + 8))(v56, v78);
    (*(v75 + 8))(v61, v76);
    if (qword_27F4FBB40 == -1)
    {
      goto LABEL_59;
    }

    goto LABEL_72;
  }

  v34 = 0;
  v35 = (v89 + 48);
  v36 = (v89 + 32);
  v37 = (v90 + 5);
  v87 = MEMORY[0x277D84F90];
  v83 = v90;
  while (v34 < *(v32 + 16))
  {
    v10 = *v37;

    sub_2528BECA0();

    if ((*v35)(v13, 1, v16) == 1)
    {
      sub_2527213D8(v13, &qword_27F4FC628, &qword_2528C4750);
    }

    else
    {
      v38 = *v36;
      (*v36)(v86, v13, v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = sub_252737E4C(0, *(v87 + 2) + 1, 1, v87);
      }

      v40 = *(v87 + 2);
      v39 = *(v87 + 3);
      v10 = (v40 + 1);
      if (v40 >= v39 >> 1)
      {
        v87 = sub_252737E4C((v39 > 1), v40 + 1, 1, v87);
      }

      v41 = v86;
      v42 = v87;
      *(v87 + 2) = v10;
      v38(&v42[((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v40], v41, v16);
      v32 = v83;
    }

    ++v34;
    v37 += 2;
    if (v33 == v34)
    {
      goto LABEL_32;
    }
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  swift_once();
LABEL_59:
  v63 = sub_2528C08B0();
  __swift_project_value_buffer(v63, qword_27F5025C8);

  v64 = sub_2528C0890();
  v65 = sub_2528C0D10();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v90 = v67;
    *v66 = 136315138;
    if (v10)
    {
      v68 = v16;
    }

    else
    {
      v68 = 7104878;
    }

    if (v10)
    {
      v69 = v10;
    }

    else
    {
      v69 = 0xE300000000000000;
    }

    v70 = sub_2527389AC(v68, v69, &v90);

    *(v66 + 4) = v70;
    _os_log_impl(&dword_252711000, v64, v65, "Attempting to set intentDeepLinkManager.deviceResultTitle as %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    MEMORY[0x2530A8D80](v67, -1, -1);
    MEMORY[0x2530A8D80](v66, -1, -1);
  }

  return v16;
}

uint64_t ShowDeviceResultIntent.deepLinkURL.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF3A0, &unk_2528D2DC0);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25285E234, 0, 0);
}

uint64_t sub_25285E234()
{
  v21 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  __swift_project_value_buffer(v1, qword_27F5025C8);
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2527389AC(0xD00000000000002BLL, 0x80000002528E65C0, &v20);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_2527389AC(0x6B6E694C70656564, 0xEB000000004C5255, &v20);
    _os_log_impl(&dword_252711000, v2, v3, "%s-%s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v5, -1, -1);
    MEMORY[0x2530A8D80](v4, -1, -1);
  }

  sub_2528BE790();
  v6 = *(v0 + 96);
  if (v6 <= 1)
  {
    if (*(v0 + 96))
    {
      v19 = swift_task_alloc();
      *(v0 + 56) = v19;
      *v19 = v0;
      v19[1] = sub_25285E87C;
      v18 = *(v0 + 32);
LABEL_22:

      return sub_25285EDC4(v18);
    }

    v9 = swift_task_alloc();
    *(v0 + 40) = v9;
    *v9 = v0;
    v9[1] = sub_25285E6A0;

    return sub_2528603F8();
  }

  else
  {
    if (v6 != 2)
    {
      if (v6 == 3)
      {
        v7 = swift_task_alloc();
        *(v0 + 72) = v7;
        *v7 = v0;
        v7[1] = sub_25285E990;

        return sub_25286079C();
      }

      v14 = sub_2528C0890();
      v15 = sub_2528C0CF0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_252711000, v14, v15, "No destination found from ShowDeviceResultIntent - navigating by Deep Link", v16, 2u);
        MEMORY[0x2530A8D80](v16, -1, -1);
      }

      v17 = swift_task_alloc();
      *(v0 + 88) = v17;
      *v17 = v0;
      v17[1] = sub_25285EAA4;
      v18 = *(v0 + 16);
      goto LABEL_22;
    }

    v10 = *(v0 + 32);
    v11 = *(v0 + 16);
    v12 = sub_2528BEC50();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    sub_25274AA0C(v10, v11, &qword_27F4FF3A0, &unk_2528D2DC0);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_25285E6A0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_25285EC98;
  }

  else
  {
    v2 = sub_25285E7B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25285E7B4()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_2528BEC50();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  sub_25274AA0C(v1, v2, &qword_27F4FF3A0, &unk_2528D2DC0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25285E87C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_25285ECFC;
  }

  else
  {
    v2 = sub_25286FF5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25285E990()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_25285ED60;
  }

  else
  {
    v2 = sub_25286FF5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25285EAA4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_25285EBF0, 0, 0);
  }
}

uint64_t sub_25285EBF0()
{
  v1 = *(v0 + 16);
  v2 = sub_2528BEC50();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25285EC98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25285ECFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25285ED60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25285EDC4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2528C0050();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_2528C0180();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  v2[10] = swift_task_alloc();
  v5 = sub_2528BF400();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF3A0, &unk_2528D2DC0);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25285EFC4, 0, 0);
}

uint64_t sub_25285EFC4()
{
  v14 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  v0[17] = __swift_project_value_buffer(v1, qword_27F5025C8);
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2527389AC(0xD00000000000002BLL, 0x80000002528E65C0, &v13);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_2527389AC(0xD00000000000001BLL, 0x80000002528E6630, &v13);
    _os_log_impl(&dword_252711000, v2, v3, "%s-%s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v5, -1, -1);
    MEMORY[0x2530A8D80](v4, -1, -1);
  }

  v6 = v0[16];
  v7 = sub_2528BEC50();
  v0[18] = v7;
  v8 = *(v7 - 8);
  v0[19] = v8;
  v10 = v8 + 56;
  v9 = *(v8 + 56);
  v0[20] = v9;
  v0[21] = v10 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v6, 1, 1, v7);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_25285F234;

  return sub_252858878();
}

uint64_t sub_25285F234(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return MEMORY[0x2822009F8](sub_25285F334, 0, 0);
}

uint64_t sub_25285F334()
{
  if (*(v0[23] + 16))
  {
    sub_2528BEEB0();
    v0[24] = MEMORY[0x2530A6500]();
    v0[25] = sub_2528BEEE0();
    v0[26] = sub_2528BEED0();
    v0[27] = sub_25286FE38(&qword_27F4FF398, MEMORY[0x277D153D0], MEMORY[0x277D153D8]);
    v2 = sub_2528C0BD0();

    return MEMORY[0x2822009F8](sub_25285F678, v2, v1);
  }

  else
  {

    v3 = v0[18];
    v4 = v0[19];
    v5 = v0[14];
    sub_25272006C(v0[16], v5, &qword_27F4FF3A0, &unk_2528D2DC0);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      sub_2527213D8(v0[14], &qword_27F4FF3A0, &unk_2528D2DC0);
      v6 = sub_2528C0890();
      v7 = sub_2528C0CF0();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_252711000, v6, v7, "No deep link generated", v8, 2u);
        MEMORY[0x2530A8D80](v8, -1, -1);
      }

      sub_25286F9E8();
      swift_allocError();
      *v9 = 0;
      swift_willThrow();
      sub_2527213D8(v0[16], &qword_27F4FF3A0, &unk_2528D2DC0);

      v10 = v0[1];
    }

    else
    {
      v11 = v0[18];
      v12 = v0[19];
      v13 = v0[14];
      v14 = v0[2];
      sub_2527213D8(v0[16], &qword_27F4FF3A0, &unk_2528D2DC0);
      (*(v12 + 32))(v14, v13, v11);

      v10 = v0[1];
    }

    return v10();
  }
}

uint64_t sub_25285F678()
{

  *(v0 + 224) = sub_2528BEE90();

  return MEMORY[0x2822009F8](sub_25285F6F4, 0, 0);
}

uint64_t sub_25285F6F4()
{
  *(v0 + 232) = sub_2528BEED0();
  v2 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_25285F788, v2, v1);
}

uint64_t sub_25285F788()
{

  sub_2528BEE40();

  return MEMORY[0x2822009F8](sub_25285F804, 0, 0);
}

uint64_t sub_25285F804()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_2527213D8(v3, &qword_27F4FCD98, &qword_2528C6200);
    v4 = v0[18];
    v5 = v0[19];
    v6 = v0[14];
    sub_25272006C(v0[16], v6, &qword_27F4FF3A0, &unk_2528D2DC0);
    if ((*(v5 + 48))(v6, 1, v4) == 1)
    {
      sub_2527213D8(v0[14], &qword_27F4FF3A0, &unk_2528D2DC0);
      v7 = sub_2528C0890();
      v8 = sub_2528C0CF0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_252711000, v7, v8, "No deep link generated", v9, 2u);
        MEMORY[0x2530A8D80](v9, -1, -1);
      }

      sub_25286F9E8();
      swift_allocError();
      *v10 = 0;
      swift_willThrow();
      sub_2527213D8(v0[16], &qword_27F4FF3A0, &unk_2528D2DC0);

      v11 = v0[1];
    }

    else
    {
      v15 = v0[18];
      v16 = v0[19];
      v17 = v0[14];
      v18 = v0[2];
      sub_2527213D8(v0[16], &qword_27F4FF3A0, &unk_2528D2DC0);
      (*(v16 + 32))(v18, v17, v15);

      v11 = v0[1];
    }

    return v11();
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    v12 = swift_task_alloc();
    v0[30] = v12;
    *v12 = v0;
    v12[1] = sub_25285FB5C;
    v13 = v0[13];

    return sub_25286099C(v13);
  }
}

uint64_t sub_25285FB5C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_252860224;
  }

  else
  {
    v2 = sub_25285FC70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25285FC70()
{
  *(v0 + 256) = *(v0 + 248);
  sub_2528BE790();
  *(v0 + 289) = *(v0 + 288);
  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v1[1] = sub_25285FD40;
  v2 = *(v0 + 184);
  v3 = *(v0 + 104);

  return sub_25283980C(v2, (v0 + 289), v3);
}

uint64_t sub_25285FD40(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = a2;

  return MEMORY[0x2822009F8](sub_25285FE60, 0, 0);
}

uint64_t sub_25285FE60()
{
  v27 = v0[32];
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  (*(v2 + 104))(v1, *MEMORY[0x277D164F8], v3);
  sub_2528C0040();
  (*(v2 + 8))(v1, v3);
  sub_2528C0170();
  sub_2528C0160();
  if (v27)
  {
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[11];
    (*(v0[8] + 8))(v0[9], v0[7]);
    (*(v5 + 8))(v4, v6);
LABEL_7:
    sub_2527213D8(v0[16], &qword_27F4FF3A0, &unk_2528D2DC0);

    v21 = v0[1];
    goto LABEL_8;
  }

  v7 = v0[20];
  v8 = v0[18];
  v10 = v0[15];
  v9 = v0[16];
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[11];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v12 + 8))(v11, v13);
  sub_2527213D8(v9, &qword_27F4FF3A0, &unk_2528D2DC0);
  v7(v10, 0, 1, v8);
  sub_25274AA0C(v10, v9, &qword_27F4FF3A0, &unk_2528D2DC0);
  v14 = v0[18];
  v15 = v0[19];
  v16 = v0[14];
  sub_25272006C(v0[16], v16, &qword_27F4FF3A0, &unk_2528D2DC0);
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    sub_2527213D8(v0[14], &qword_27F4FF3A0, &unk_2528D2DC0);
    v17 = sub_2528C0890();
    v18 = sub_2528C0CF0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_252711000, v17, v18, "No deep link generated", v19, 2u);
      MEMORY[0x2530A8D80](v19, -1, -1);
    }

    sub_25286F9E8();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
    goto LABEL_7;
  }

  v23 = v0[18];
  v24 = v0[19];
  v25 = v0[14];
  v26 = v0[2];
  sub_2527213D8(v0[16], &qword_27F4FF3A0, &unk_2528D2DC0);
  (*(v24 + 32))(v26, v25, v23);

  v21 = v0[1];
LABEL_8:

  return v21();
}

uint64_t sub_252860224()
{
  v1 = *(v0 + 248);
  v2 = v1;
  v3 = sub_2528C0890();
  v4 = sub_2528C0CF0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 248);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_252711000, v3, v4, "Error preparing device results for Accessory Controls Animation: %@", v7, 0xCu);
    sub_2527213D8(v8, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v8, -1, -1);
    MEMORY[0x2530A8D80](v7, -1, -1);
  }

  else
  {
  }

  *(v0 + 256) = 0;
  sub_2528BE790();
  *(v0 + 289) = *(v0 + 288);
  v11 = swift_task_alloc();
  *(v0 + 264) = v11;
  *v11 = v0;
  v11[1] = sub_25285FD40;
  v12 = *(v0 + 184);
  v13 = *(v0 + 104);

  return sub_25283980C(v12, (v0 + 289), v13);
}

uint64_t sub_252860418()
{
  v9 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  __swift_project_value_buffer(v1, qword_27F5025C8);
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2527389AC(0xD00000000000002BLL, 0x80000002528E65C0, &v8);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_2527389AC(0xD000000000000011, 0x80000002528E65F0, &v8);
    _os_log_impl(&dword_252711000, v2, v3, "%s-%s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v5, -1, -1);
    MEMORY[0x2530A8D80](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_252860604;

  return sub_252858878();
}

uint64_t sub_252860604(uint64_t a1)
{

  return MEMORY[0x2822009F8](sub_25286070C, 0, 0);
}

uint64_t sub_25286070C()
{
  sub_25286F9E8();
  swift_allocError();
  *v1 = 1;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2528607B8()
{
  v10 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  __swift_project_value_buffer(v1, qword_27F5025C8);
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2527389AC(0xD00000000000002BLL, 0x80000002528E65C0, v9);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_2527389AC(0xD000000000000011, 0x80000002528E6610, v9);
    _os_log_impl(&dword_252711000, v2, v3, "%s-%s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v5, -1, -1);
    MEMORY[0x2530A8D80](v4, -1, -1);
  }

  sub_25286F9E8();
  swift_allocError();
  *v6 = 1;
  swift_willThrow();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_25286099C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD670, &qword_2528D3570);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v3 = sub_2528BF9D0();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  type metadata accessor for DeviceEntity(0);
  v2[12] = swift_task_alloc();
  v4 = sub_2528BECF0();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252860B40, 0, 0);
}

uint64_t sub_252860B40()
{
  sub_2528BE790();
  v1 = v0[2];
  v0[17] = v1;
  if (v1)
  {
    if (*(v1 + 16))
    {
      v3 = v0[15];
      v2 = v0[16];
      v4 = v0[13];
      v5 = v0[14];
      v6 = v0[12];
      sub_2528BEA50();
      sub_2528BEA50();
      sub_2528BE6B0();

      sub_252819FA8(v3);
      sub_25286FA3C(v6, type metadata accessor for DeviceEntity);
      (*(v5 + 32))(v2, v3, v4);
      sub_2528BE790();
      v7 = v0[3];
      v0[18] = v7;
      if (v7)
      {
        if (*(v1 + 16) == 1 && *(v7 + 16) == 1)
        {
          v8 = swift_task_alloc();
          v0[19] = v8;
          *v8 = v0;
          v8[1] = sub_252860D9C;
          v9 = v0[16];
          v10 = v0[4];

          return sub_25286150C(v9, v10);
        }

        (*(v0[14] + 8))(v0[16], v0[13]);
      }

      else
      {
        (*(v0[14] + 8))(v0[16], v0[13]);
      }
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_252860D9C(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_252860E9C, 0, 0);
}

uint64_t sub_252860E9C()
{
  v1 = *(v0 + 160);
  if (!v1)
  {
    (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));

LABEL_7:

    v10 = *(v0 + 8);

    return v10();
  }

  sub_2528618CC(*(v0 + 136), *(v0 + 160), *(v0 + 32), *(v0 + 56));
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);

  v5 = *(v3 + 48);
  v6 = v5(v4, 1, v2);
  v7 = *(v0 + 144);
  if (v6 == 1)
  {
    v8 = *(v0 + 56);
    (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));

    v9 = v8;
LABEL_6:
    sub_2527213D8(v9, &qword_27F4FD670, &qword_2528D3570);
    goto LABEL_7;
  }

  v12 = *(v0 + 48);
  v13 = *(v0 + 32);
  v14 = *(*(v0 + 72) + 32);
  v14(*(v0 + 88), *(v0 + 56), *(v0 + 64));
  sub_2528618CC(v7, v1, v13, v12);
  v15 = v14;
  v16 = *(v0 + 64);
  v17 = *(v0 + 48);

  if (v5(v17, 1, v16) == 1)
  {
    v18 = *(v0 + 128);
    v19 = *(v0 + 104);
    v20 = *(v0 + 112);
    v21 = *(v0 + 88);
    v22 = *(v0 + 64);
    v23 = *(v0 + 72);
    v24 = *(v0 + 48);

    (*(v23 + 8))(v21, v22);
    (*(v20 + 8))(v18, v19);
    v9 = v24;
    goto LABEL_6;
  }

  v15(*(v0 + 80), *(v0 + 48), *(v0 + 64));
  *(v0 + 168) = sub_2528BEDC0();
  *(v0 + 176) = sub_2528C0C20();
  *(v0 + 184) = sub_2528C0C10();
  v26 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_252861274, v26, v25);
}

uint64_t sub_252861274()
{

  *(v0 + 192) = sub_2528BEDB0();

  return MEMORY[0x2822009F8](sub_2528612E8, 0, 0);
}

uint64_t sub_2528612E8(uint64_t a1)
{
  *(v1 + 200) = sub_2528C0C10();
  v3 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_252861374, v3, v2);
}

uint64_t sub_252861374()
{
  v1 = *(v0 + 192);

  sub_2528BEDA0();

  return MEMORY[0x2822009F8](sub_2528613F8, 0, 0);
}

uint64_t sub_2528613F8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);

  v8 = *(v7 + 8);
  v8(v5, v6);
  v8(v4, v6);
  (*(v3 + 8))(v1, v2);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_25286150C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2528BF9D0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2528615D8, 0, 0);
}

uint64_t sub_2528615D8(uint64_t a1)
{
  v2 = sub_2528BF370();
  if (*(v2 + 16) && (v3 = sub_252785C40(v1[2]), (v4 & 1) != 0))
  {
    v6 = v1[6];
    v5 = v1[7];
    v7 = v1[4];
    v8 = v1[5];
    (*(v8 + 16))(v6, *(v2 + 56) + *(v8 + 72) * v3, v7);

    (*(v8 + 32))(v5, v6, v7);
    v9 = swift_task_alloc();
    v1[8] = v9;
    *v9 = v1;
    v9[1] = sub_252861744;

    return MEMORY[0x28216F568]();
  }

  else
  {

    v10 = v1[1];

    return v10(0);
  }
}

uint64_t sub_252861744(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_252861844, 0, 0);
}

uint64_t sub_252861844()
{
  (*(v0[5] + 8))(v0[7], v0[4]);
  v1 = v0[9];

  v2 = v0[1];

  return v2(v1);
}

void sub_2528618CC(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v232 = a3;
  v225 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC00, &qword_2528D4C70);
  MEMORY[0x28223BE20](v6 - 8);
  v181 = &v171 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC08, &qword_2528D4C78);
  MEMORY[0x28223BE20](v8 - 8);
  v180 = &v171 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC10, &unk_2528D4C80);
  MEMORY[0x28223BE20](v10 - 8);
  v179 = &v171 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6B0, &qword_2528C8928);
  MEMORY[0x28223BE20](v12 - 8);
  v178 = &v171 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF940, &qword_2528D4200);
  MEMORY[0x28223BE20](v14 - 8);
  v186 = &v171 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF948, &qword_2528D4208);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v185 = &v171 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v197 = &v171 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC18, &unk_2528D4C90);
  MEMORY[0x28223BE20](v20 - 8);
  v196 = &v171 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCBD8, &qword_2528C58F8);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v195 = &v171 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v194 = &v171 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC20, &qword_2528D4CA0);
  MEMORY[0x28223BE20](v26 - 8);
  v193 = &v171 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v177 = &v171 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v190 = &v171 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v184 = &v171 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v192 = &v171 - v36;
  MEMORY[0x28223BE20](v35);
  v191 = &v171 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC28, &qword_2528D4CA8);
  MEMORY[0x28223BE20](v38 - 8);
  v182 = &v171 - v39;
  v40 = sub_2528BF300();
  v175 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v176 = (&v171 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v189 = sub_2528C0620();
  v188 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v183 = &v171 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_2528BF350();
  v216 = *(v228 - 8);
  v43 = MEMORY[0x28223BE20](v228);
  v227 = &v171 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v215 = &v171 - v45;
  v217 = sub_2528BFDE0();
  v221 = *(v217 - 8);
  v46 = MEMORY[0x28223BE20](v217);
  v229 = &v171 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v219 = &v171 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC30, &unk_2528D4CB0);
  v50 = MEMORY[0x28223BE20](v49 - 8);
  v231 = &v171 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v226 = &v171 - v52;
  v205 = sub_2528BECF0();
  v204 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v54 = &v171 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DeviceEntity(0);
  v56 = MEMORY[0x28223BE20](v55 - 8);
  v200 = &v171 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v59 = &v171 - v58;
  v60 = sub_2528BF9D0();
  v61 = MEMORY[0x28223BE20](v60);
  v63 = &v171 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v66 = (&v171 - v65);
  if (a1[2])
  {
    v199 = v64;
    v172 = v40;
    v187 = a4;
    v68 = a1[4];
    v67 = a1[5];
    sub_2528BEA50();
    v198 = v67;
    sub_2528BEA50();
    v69 = sub_2528BF370();
    v206 = v68;
    sub_2528BE6B0();
    sub_252819FA8(v54);
    sub_25286FA3C(v59, type metadata accessor for DeviceEntity);
    if (*(v69 + 16) && (v70 = sub_252785C40(v54), (v71 & 1) != 0))
    {
      v72 = v199;
      (*(v199 + 16))(v63, *(v69 + 56) + *(v199 + 72) * v70, v60);
      (*(v204 + 8))(v54, v205);

      v73 = v66;
      (*(v72 + 32))(v66, v63, v60);
      v232 = sub_2527913AC(MEMORY[0x277D84F90]);
      sub_2528BE6B0();
      v74 = v238;
      v75 = *(v238 + 16);
      v171 = v60;
      v173 = v66;
      if (v75)
      {
        v76 = 0;
        v203 = v238 + 32;
        v218 = v221 + 16;
        v230 = (v221 + 32);
        v222 = (v216 + 32);
        v223 = (v221 + 8);
        v213 = v216 + 40;
        v202 = v238;
        v201 = v75;
        while (1)
        {
          if (v76 >= *(v74 + 16))
          {
LABEL_51:
            __break(1u);
LABEL_52:
            sub_25286FA9C();
            sub_2528C10A0();
            __break(1u);
            return;
          }

          v210 = v76;
          v78 = (v203 + 16 * v76);
          v80 = *v78;
          v79 = v78[1];
          sub_2528BEA50();
          sub_2528BEA50();
          v211 = v79;
          sub_2528BE6B0();
          v82 = *(&v238 + 1);
          v81 = v238;
          v83 = v239;
          v84 = v240;
          LOBYTE(v85) = v241;
          v86 = v242;
          v243 = v241;
          v209 = v240;
          v208 = v239;
          v207 = v238;
          if (!v242)
          {
            break;
          }

          v74 = v202;
          v77 = v201;
LABEL_7:
          v76 = v210 + 1;

          sub_25276925C(v207, *(&v207 + 1), v208, v209, v243, v86);
          if (v76 == v77)
          {
            goto LABEL_46;
          }
        }

        v174 = v80;
        v234 = v238;
        v235 = v239;
        v236 = v240;
        v237 = v241;
        sub_252760C18(v238, *(&v238 + 1), v239, v240, v241);
        v87 = v200;
        sub_2528BE6B0();
        sub_2528BE6B0();
        sub_25286FA3C(v87, type metadata accessor for DeviceEntity);
        v244 = v233[0];
        v88 = v212;
        v89 = sub_2527E7218(&v244, v73);
        if (!v88)
        {
          v90 = v89;
          v212 = 0;
          sub_25276925C(v81, v82, v83, v84, v85, 0);
          v84 = 0;
          v220 = v90;
          v82 = v90 + 64;
          v91 = 1 << *(v90 + 32);
          if (v91 < 64)
          {
            v92 = ~(-1 << v91);
          }

          else
          {
            v92 = -1;
          }

          v93 = v92 & *(v90 + 64);
          v214 = (v91 + 63) >> 6;
          v85 = v231;
          v83 = v217;
          v224 = v90 + 64;
          v73 = &unk_2528D4CC0;
          while (v93)
          {
            v94 = v73;
            v95 = v84;
LABEL_27:
            v98 = __clz(__rbit64(v93));
            v93 &= v93 - 1;
            v99 = v98 | (v95 << 6);
            v100 = v220;
            v101 = v221;
            v102 = v219;
            (*(v221 + 16))(v219, *(v220 + 48) + *(v221 + 72) * v99, v83);
            sub_25272BF98(*(v100 + 56) + 32 * v99, &v234);
            v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD4B0, v94);
            v73 = v94;
            v104 = *(v103 + 48);
            v105 = *(v101 + 32);
            v85 = v231;
            v106 = v102;
            v107 = v83;
            v105(v231, v106, v83);
            sub_25272C298(&v234, (v85 + v104));
            (*(*(v103 - 8) + 56))(v85, 0, 1, v103);
LABEL_28:
            v108 = v226;
            sub_25274AA0C(v85, v226, &qword_27F4FFC30, &unk_2528D4CB0);
            v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD4B0, v73);
            if ((*(*(v109 - 8) + 48))(v108, 1, v109) == 1)
            {

              v86 = 0;
              v73 = v173;
              v74 = v202;
              v77 = v201;
              goto LABEL_7;
            }

            v110 = *(v109 + 48);
            v81 = v229;
            v83 = v107;
            (*v230)(v229, v108, v107);
            sub_25272C298((v108 + v110), &v234);
            v111 = sub_2528C0D80();
            if (v111)
            {
              v112 = v111;
              v113 = v236;
              v114 = __swift_project_boxed_opaque_existential_0(&v234, v236);
              v233[3] = v113;
              boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v233);
              (*(*(v113 - 8) + 16))(boxed_opaque_existential_0Tm, v114, v113);
              v116 = v215;
              sub_2528BF340();
              v117 = *v222;
              (*v222)(v227, v116, v228);
              v118 = v232;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v233[0] = v118;
              v121 = sub_252786E74(v112);
              v122 = *(v118 + 16);
              v123 = (v120 & 1) == 0;
              v124 = v122 + v123;
              if (__OFADD__(v122, v123))
              {
                __break(1u);
LABEL_50:
                __break(1u);
                goto LABEL_51;
              }

              v125 = v120;
              if (*(v118 + 24) >= v124)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_2527E2AE8();
                }

                v128 = v217;
              }

              else
              {
                sub_2527E05A4(v124, isUniquelyReferenced_nonNull_native);
                v126 = sub_252786E74(v112);
                if ((v125 & 1) != (v127 & 1))
                {
                  goto LABEL_52;
                }

                v121 = v126;
                v128 = v217;
              }

              v232 = v233[0];
              if (v125)
              {
                (*(v216 + 40))(*(v233[0] + 56) + *(v216 + 72) * v121, v227, v228);

                v83 = v128;
                (*v223)(v229, v128);
              }

              else
              {
                *(v233[0] + 8 * (v121 >> 6) + 64) |= 1 << v121;
                *(*(v232 + 48) + 8 * v121) = v112;
                v117((*(v232 + 56) + *(v216 + 72) * v121), v227, v228);
                v83 = v128;
                (*v223)(v229, v128);
                v129 = *(v232 + 16);
                v130 = __OFADD__(v129, 1);
                v131 = v129 + 1;
                if (v130)
                {
                  goto LABEL_50;
                }

                *(v232 + 16) = v131;
              }

              v85 = v231;
              v82 = v224;
              v73 = &unk_2528D4CC0;
            }

            else
            {
              (*v223)(v81, v107);
              v85 = v231;
              v82 = v224;
            }

            __swift_destroy_boxed_opaque_existential_0Tm(&v234);
          }

          if (v214 <= v84 + 1)
          {
            v96 = v84 + 1;
          }

          else
          {
            v96 = v214;
          }

          v97 = v96 - 1;
          while (1)
          {
            v95 = v84 + 1;
            if (__OFADD__(v84, 1))
            {
              break;
            }

            if (v95 >= v214)
            {
              v107 = v83;
              v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD4B0, v73);
              (*(*(v132 - 8) + 56))(v85, 1, 1, v132);
              v93 = 0;
              v84 = v97;
              goto LABEL_28;
            }

            v93 = *(v82 + 8 * v95);
            ++v84;
            if (v93)
            {
              v94 = v73;
              v84 = v95;
              goto LABEL_27;
            }
          }

          __break(1u);
        }

        sub_25276925C(v81, v82, v83, v84, v85, 0);
        (*(v199 + 8))(v73, v171);

        sub_25276925C(v81, v82, v83, v84, v85, 0);
      }

      else
      {
LABEL_46:

        v133 = v176;
        *v176 = v232;
        v134 = *MEMORY[0x277D15A00];
        v135 = sub_2528BF360();
        (*(*(v135 - 8) + 104))(v133, v134, v135);
        (*(v175 + 104))(v133, *MEMORY[0x277D159E8], v172);
        v136 = v182;
        sub_2528BF8A0();
        v137 = *(v188 + 56);
        v231 = (v188 + 56);
        v232 = v137;
        v137(v136, 0, 1, v189);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC490, &unk_2528C9050);
        v138 = sub_2528BF3E0();
        v139 = *(v138 - 8);
        v140 = *(v139 + 72);
        v141 = (*(v139 + 80) + 32) & ~*(v139 + 80);
        v142 = swift_allocObject();
        *(v142 + 16) = xmmword_2528C17E0;
        v143 = v142 + v141;
        v144 = *(v139 + 104);
        v144(v143, *MEMORY[0x277D15A30], v138);
        v144(v143 + v140, *MEMORY[0x277D15A38], v138);
        sub_252744570(v142);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v145 = v225;
        v146 = v183;
        sub_2528C0600();
        v147 = *(v204 + 56);
        v148 = v205;
        v147(v191, 1, 1, v205);
        v147(v192, 1, 1, v148);
        v149 = sub_2528C0200();
        (*(*(v149 - 8) + 56))(v193, 1, 1, v149);
        v150 = sub_2528BEC90();
        v151 = *(*(v150 - 8) + 56);
        v151(v194, 1, 1, v150);
        v151(v195, 1, 1, v150);
        v152 = sub_2528BFC00();
        (*(*(v152 - 8) + 56))(v196, 1, 1, v152);
        v153 = sub_2528BF240();
        v154 = *(*(v153 - 8) + 56);
        v154(v197, 1, 1, v153);
        v155 = sub_2528BFA80();
        (*(*(v155 - 8) + 56))(v186, 1, 1, v155);
        v147(v184, 1, 1, v148);
        v147(v190, 1, 1, v148);
        v154(v185, 1, 1, v153);
        v156 = v189;
        (*(v188 + 16))(v136, v146, v189);
        (v232)(v136, 0, 1, v156);
        v157 = sub_2528BFD50();
        v158 = v178;
        (*(*(v157 - 8) + 56))(v178, 1, 1, v157);
        v159 = sub_2528C0210();
        v160 = v179;
        (*(*(v159 - 8) + 56))(v179, 1, 1, v159);
        v161 = sub_2528BEDF0();
        v162 = v180;
        (*(*(v161 - 8) + 56))(v180, 1, 1, v161);
        v163 = v177;
        v147(v177, 1, 1, v148);
        v164 = sub_2528BF880();
        v165 = v181;
        (*(*(v164 - 8) + 56))(v181, 1, 1, v164);
        v166 = v185;
        v167 = v184;
        v168 = v186;
        sub_2528BF570();

        sub_2527213D8(v165, &qword_27F4FFC00, &qword_2528D4C70);
        sub_2527213D8(v163, &qword_27F4FC628, &qword_2528C4750);
        sub_2527213D8(v162, &qword_27F4FFC08, &qword_2528D4C78);
        sub_2527213D8(v160, &qword_27F4FFC10, &unk_2528D4C80);
        sub_2527213D8(v158, &qword_27F4FD6B0, &qword_2528C8928);
        sub_2527213D8(v182, &qword_27F4FFC28, &qword_2528D4CA8);
        sub_2527213D8(v166, &qword_27F4FF948, &qword_2528D4208);
        sub_2527213D8(v190, &qword_27F4FC628, &qword_2528C4750);
        sub_2527213D8(v167, &qword_27F4FC628, &qword_2528C4750);
        sub_2527213D8(v168, &qword_27F4FF940, &qword_2528D4200);
        sub_2527213D8(v197, &qword_27F4FF948, &qword_2528D4208);
        sub_2527213D8(v196, &qword_27F4FFC18, &unk_2528D4C90);
        sub_2527213D8(v195, &qword_27F4FCBD8, &qword_2528C58F8);
        sub_2527213D8(v194, &qword_27F4FCBD8, &qword_2528C58F8);
        sub_2527213D8(v193, &qword_27F4FFC20, &qword_2528D4CA0);
        sub_2527213D8(v192, &qword_27F4FC628, &qword_2528C4750);
        sub_2527213D8(v191, &qword_27F4FC628, &qword_2528C4750);
        (*(v188 + 8))(v183, v189);
        v169 = v199;
        v170 = v171;
        (*(v199 + 8))(v173, v171);
        (*(v169 + 56))(v187, 0, 1, v170);
      }
    }

    else
    {

      (*(v204 + 8))(v54, v205);
      (*(v199 + 56))(v187, 1, 1, v60);
    }
  }

  else
  {
    (*(v64 + 56))(a4, 1, 1, v60);
  }
}

uint64_t sub_252863570(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA8, &unk_2528C5CB0);
  v2[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB0, &qword_2528D2DB0);
  v2[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  v2[8] = swift_task_alloc();
  v3 = sub_2528BF400();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252863754, 0, 0);
}

uint64_t sub_252863754()
{
  v25 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[3];
  v5 = type metadata accessor for ShowDeviceResultIntent(0);
  sub_25272006C(v4 + *(v5 + 52), v3, &qword_27F4FCD98, &qword_2528C6200);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[7];
    v7 = v0[6];
    sub_2527213D8(v0[8], &qword_27F4FCD98, &qword_2528C6200);
    v8 = type metadata accessor for HomeEntity(0);
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = sub_2528C05D0();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_252863B3C;
    v11 = v0[6];
    v12 = v0[7];

    return sub_25277ECE4(v12, 0, 0, v11);
  }

  else
  {
    v14 = *(v0[10] + 32);
    v14(v0[12], v0[8], v0[9]);
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v15 = sub_2528C08B0();
    __swift_project_value_buffer(v15, qword_27F5025C8);
    v16 = sub_2528C0890();
    v17 = sub_2528C0D10();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_2527389AC(0xD00000000000002BLL, 0x80000002528E65C0, &v24);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_2527389AC(0x616E536574617473, 0xED0000746F687370, &v24);
      _os_log_impl(&dword_252711000, v16, v17, "%s-%s Using source state snapshot", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A8D80](v19, -1, -1);
      MEMORY[0x2530A8D80](v18, -1, -1);
    }

    v20 = v0[9];
    v21 = v0[10];
    v22 = v0[2];
    v14(v22, v0[12], v20);
    (*(v21 + 56))(v22, 0, 1, v20);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_252863B3C(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  *(*v1 + 112) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v2, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_252863C98, 0, 0);
}

uint64_t sub_252863C98()
{
  v36 = v0;
  v1 = v0[4];
  sub_2527D38F8(v0[14], v1);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[5];
    sub_2527213D8(v0[4], &qword_27F4FCDA8, &unk_2528C5CB0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
LABEL_4:
    sub_2527213D8(v0[5], &qword_27F4FCDB0, &qword_2528D2DB0);
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v15 = sub_2528C08B0();
    __swift_project_value_buffer(v15, qword_27F5025C8);
    v16 = sub_2528C0890();
    v17 = sub_2528C0D10();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_2527389AC(0xD00000000000002BLL, 0x80000002528E65C0, &v35);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_2527389AC(0x616E536574617473, 0xED0000746F687370, &v35);
      _os_log_impl(&dword_252711000, v16, v17, "%s-%s Using currentStateSnapshot", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A8D80](v19, -1, -1);
      MEMORY[0x2530A8D80](v18, -1, -1);
    }

    sub_2528BEEB0();
    v0[15] = MEMORY[0x2530A6500]();
    v0[16] = sub_2528BEEE0();
    v0[17] = sub_2528BEED0();
    v0[18] = sub_25286FE38(&qword_27F4FF398, MEMORY[0x277D153D0], MEMORY[0x277D153D8]);
    v21 = sub_2528C0BD0();

    return MEMORY[0x2822009F8](sub_252864350, v21, v20);
  }

  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v8 + *(v2 + 48);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
  v11 = *(v10 + 48);
  (*(v6 + 16))(v7, v9, v5);
  v12 = type metadata accessor for HomeEntity.SnapshotPair(0);
  sub_25272006C(v9 + *(v12 + 20), v7 + v11, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_25286FA3C(v9, type metadata accessor for HomeEntity.SnapshotPair);
  v13 = *(v10 - 8);
  (*(v13 + 56))(v7, 0, 1, v10);
  v14 = sub_2528BECF0();
  (*(*(v14 - 8) + 8))(v8, v14);
  if ((*(v13 + 48))(v7, 1, v10) == 1)
  {
    goto LABEL_4;
  }

  v22 = v0[5];
  v23 = *(v10 + 48);
  v24 = *(v0[10] + 32);
  v24(v0[11], v22, v0[9]);
  sub_2527213D8(v22 + v23, &qword_27F4FCDB8, &unk_2528C5CC0);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v25 = sub_2528C08B0();
  __swift_project_value_buffer(v25, qword_27F5025C8);
  v26 = sub_2528C0890();
  v27 = sub_2528C0D10();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35 = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_2527389AC(0xD00000000000002BLL, 0x80000002528E65C0, &v35);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_2527389AC(0x616E536574617473, 0xED0000746F687370, &v35);
    _os_log_impl(&dword_252711000, v26, v27, "%s-%s Using gathered snapshot", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v29, -1, -1);
    MEMORY[0x2530A8D80](v28, -1, -1);
  }

  v30 = v0[10];
  v31 = v0[9];
  v32 = v0[2];
  v24(v32, v0[11], v31);
  (*(v30 + 56))(v32, 0, 1, v31);

  v33 = v0[1];

  return v33();
}

uint64_t sub_252864350()
{

  *(v0 + 152) = sub_2528BEE90();

  return MEMORY[0x2822009F8](sub_2528643CC, 0, 0);
}

uint64_t sub_2528643CC()
{
  *(v0 + 160) = sub_2528BEED0();
  v2 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_252864460, v2, v1);
}

uint64_t sub_252864460()
{

  sub_2528BEE40();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252864528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2528BF3B0();
  if (*(v4 + 16) && (v5 = sub_252785C40(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = sub_2528C0020();
    v10 = *(v9 - 8);
    (*(v10 + 16))(a2, v8 + *(v10 + 72) * v7, v9);

    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  else
  {

    v12 = sub_2528C0020();
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }
}

void sub_252864688(uint64_t a1, uint64_t a2)
{
  v4 = sub_2528BECF0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v32 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v14 = a2 + 56;
    v15 = 1 << *(a2 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a2 + 56);
    v37 = v5 + 32;
    v38 = (v15 + 63) >> 6;
    v41 = a1 + 56;
    v42 = v5 + 16;
    v43 = (v5 + 8);

    v18 = 0;
    v32 = a2 + 56;
    v33 = v13;
    v36 = a2;
    v34 = v5;
    v19 = v38;
    if (v17)
    {
      while (1)
      {
        v20 = v18;
LABEL_10:
        v21 = *(v5 + 72);
        v22 = *(a2 + 48) + v21 * (__clz(__rbit64(v17)) | (v20 << 6));
        v39 = *(v5 + 16);
        v40 = v21;
        v39(v13, v22, v4);
        (*(v5 + 32))(v11, v13, v4);
        v23 = *(a1 + 16);
        v35 = v43 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v24 = v11;
        if (!v23)
        {
          break;
        }

        sub_25286FE38(&qword_27F4FBD88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v25 = sub_2528C0900();
        v26 = -1 << *(a1 + 32);
        v27 = v25 & ~v26;
        if (((*(v41 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          break;
        }

        v28 = a1;
        v17 &= v17 - 1;
        v29 = ~v26;
        while (1)
        {
          v39(v8, *(v28 + 48) + v27 * v40, v4);
          sub_25286FE38(&qword_27F4FC680, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v30 = sub_2528C0930();
          v31 = *v43;
          (*v43)(v8, v4);
          if (v30)
          {
            break;
          }

          v27 = (v27 + 1) & v29;
          if (((*(v41 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            v31(v24, v4);
            goto LABEL_18;
          }
        }

        v11 = v24;
        v31(v24, v4);
        v18 = v20;
        a2 = v36;
        a1 = v28;
        v13 = v33;
        v5 = v34;
        v14 = v32;
        v19 = v38;
        if (!v17)
        {
          goto LABEL_7;
        }
      }

      (*v43)(v11, v4);
LABEL_18:
    }

    else
    {
LABEL_7:
      while (1)
      {
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v20 >= v19)
        {
          goto LABEL_18;
        }

        v17 = *(v14 + 8 * v20);
        ++v18;
        if (v17)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_252864A58@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v87 = a2;
  v86 = a1;
  v88 = a3;
  v3 = sub_2528BFF90();
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v75 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v73 = &v71 - v7;
  MEMORY[0x28223BE20](v6);
  v74 = &v71 - v8;
  v9 = sub_2528C0130();
  v81 = *(v9 - 8);
  v82 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v80 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v78 = &v71 - v13;
  MEMORY[0x28223BE20](v12);
  v79 = &v71 - v14;
  v15 = sub_2528BF9D0();
  v84 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v83 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v71 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v71 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v71 - v24;
  v26 = sub_2528BF400();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v85 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v71 - v30;
  sub_25272006C(v87, v25, &qword_27F4FCD98, &qword_2528C6200);
  if ((*(v27 + 48))(v25, 1, v26) != 1)
  {
    (*(v27 + 32))(v31, v25, v26);
    v35 = sub_2528BF370();
    v36 = v86;
    if (*(v35 + 16) && (v37 = sub_252785C40(v86), (v38 & 1) != 0))
    {
      v39 = v84;
      v40 = *(v35 + 56) + *(v84 + 72) * v37;
      v41 = v15;
      v72 = v15;
      v42 = *(v84 + 16);
      v42(v20, v40, v41);

      v43 = v20;
      v44 = v72;
      (*(v39 + 32))(v22, v43, v72);
      v45 = v83;
      v42(v83, v22, v44);
      v46 = v85;
      (*(v27 + 16))(v85, v31, v26);
      DeviceEntity.init(staticService:snapshot:)(v45, v46, v88);
      (*(v39 + 8))(v22, v44);
    }

    else
    {

      v47 = sub_2528BF3D0();
      if (*(v47 + 16))
      {
        v48 = sub_252785C40(v36);
        if (v49)
        {
          v51 = v81;
          v50 = v82;
          v52 = *(v47 + 56) + *(v81 + 72) * v48;
          v87 = *(v81 + 16);
          v53 = v78;
          v87(v78, v52, v82);

          v54 = v79;
          (*(v51 + 32))(v79, v53, v50);
          v55 = v80;
          v87(v80, v54, v50);
          v56 = v85;
          (*(v27 + 16))(v85, v31, v26);
          v57 = v88;
          DeviceEntity.init(staticCameraProfile:snapshot:)(v55, v56, v88);
          (*(v51 + 8))(v54, v50);
          (*(v27 + 8))(v31, v26);
          v58 = type metadata accessor for DeviceEntity(0);
          return (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
        }
      }

      v60 = sub_2528BF3A0();
      v61 = v88;
      if (!*(v60 + 16) || (v62 = sub_252785C40(v36), (v63 & 1) == 0))
      {

        (*(v27 + 8))(v31, v26);
        v32 = type metadata accessor for DeviceEntity(0);
        v33 = *(*(v32 - 8) + 56);
        v34 = v61;
        return v33(v34, 1, 1, v32);
      }

      v65 = v76;
      v64 = v77;
      v66 = *(v60 + 56) + *(v76 + 72) * v62;
      v87 = *(v76 + 16);
      v67 = v73;
      v87(v73, v66, v77);

      v68 = v74;
      (*(v65 + 32))(v74, v67, v64);
      v69 = v75;
      v87(v75, v68, v64);
      v70 = v85;
      (*(v27 + 16))(v85, v31, v26);
      DeviceEntity.init(staticMediaProfile:snapshot:)(v69, v70, v88);
      (*(v65 + 8))(v68, v64);
    }

    return (*(v27 + 8))(v31, v26);
  }

  sub_2527213D8(v25, &qword_27F4FCD98, &qword_2528C6200);
  v32 = type metadata accessor for DeviceEntity(0);
  v33 = *(*(v32 - 8) + 56);
  v34 = v88;
  return v33(v34, 1, 1, v32);
}

uint64_t sub_252865220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_2528C00D0();
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - v11;
  v13 = sub_2528BF400();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25272006C(a1, v12, &qword_27F4FCD98, &qword_2528C6200);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2527213D8(v12, &qword_27F4FCD98, &qword_2528C6200);
    return MEMORY[0x277D84F90];
  }

  (*(v14 + 32))(v16, v12, v13);
  sub_25272006C(v23, v6, &qword_27F4FCDB8, &unk_2528C5CC0);
  v17 = v24;
  if ((*(v24 + 48))(v6, 1, v7) == 1)
  {
    sub_2527213D8(v6, &qword_27F4FCDB8, &unk_2528C5CC0);
    (*(v14 + 8))(v16, v13);
    return MEMORY[0x277D84F90];
  }

  (*(v17 + 32))(v9, v6, v7);
  v19 = sub_2528C0070();
  MEMORY[0x28223BE20](v19);
  *(&v22 - 4) = v22;
  *(&v22 - 3) = v9;
  *(&v22 - 2) = v16;
  sub_252853528(sub_25286FD0C, (&v22 - 6), v19);
  v21 = v20;

  (*(v17 + 8))(v9, v7);
  (*(v14 + 8))(v16, v13);
  return v21;
}

uint64_t sub_2528655B4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v30 = a5;
  v5 = sub_2528BF400();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2528BFF00();
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF0, &unk_2528C6AB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = sub_2528BFB20();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v20 = &v23 - v19;
  sub_2528C0080();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2527213D8(v13, &qword_27F4FCEF0, &unk_2528C6AB0);
    v21 = type metadata accessor for DeviceEntity(0);
    return (*(*(v21 - 8) + 56))(v30, 1, 1, v21);
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    (*(v15 + 16))(v18, v20, v14);
    (*(v8 + 16))(v10, v27, v24);
    (*(v25 + 16))(v7, v28, v26);
    DeviceEntity.init(staticEndpoint:staticMatterDevice:snapshot:)(v18, v10, v7, v30);
    return (*(v15 + 8))(v20, v14);
  }
}

void *sub_252865914(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC780, &unk_2528D4C50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_252865988(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC858, &qword_2528C4910);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_252865A5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_252865B58(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_2528BECF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_252865D74(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_2527213D8(v5, &qword_27F4FC628, &qword_2528C4750);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_252865D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2528BECF0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_25286FE38(&qword_27F4FBD88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v31 = a1;
  v10 = sub_2528C0900();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_25286FE38(&qword_27F4FC680, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v19 = sub_2528C0930();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_252740300();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_252866348(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_25286601C@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *v2;
  sub_2528C1130();
  sub_2528C0A40();

  result = sub_2528C1180();
  v6 = -1 << *(v4 + 32);
  v7 = result & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = a1;
    while (1)
    {
      v10 = *(*(v4 + 48) + v7);
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v12 = 0xE400000000000000;
          v11 = 1701670760;
        }

        else
        {
          if (v10 == 4)
          {
            v11 = 1836019570;
          }

          else
          {
            v11 = 1701736314;
          }

          v12 = 0xE400000000000000;
        }
      }

      else if (*(*(v4 + 48) + v7))
      {
        if (v10 == 1)
        {
          v11 = 0x7954656369766564;
        }

        else
        {
          v11 = 0x70756F7267;
        }

        if (v10 == 1)
        {
          v12 = 0xEA00000000006570;
        }

        else
        {
          v12 = 0xE500000000000000;
        }
      }

      else
      {
        v11 = 0x614E656369766564;
        v12 = 0xEA0000000000656DLL;
      }

      v13 = 1836019570;
      if (v9 != 4)
      {
        v13 = 1701736314;
      }

      if (v9 == 3)
      {
        v13 = 1701670760;
      }

      v14 = 0xEA00000000006570;
      v15 = 0x7954656369766564;
      if (v9 != 1)
      {
        v15 = 0x70756F7267;
        v14 = 0xE500000000000000;
      }

      if (!v9)
      {
        v15 = 0x614E656369766564;
        v14 = 0xEA0000000000656DLL;
      }

      v16 = v9 <= 2 ? v15 : v13;
      v17 = v9 <= 2 ? v14 : 0xE400000000000000;
      if (v11 == v16 && v12 == v17)
      {
        break;
      }

      v18 = sub_2528C1060();

      if (v18)
      {
        goto LABEL_38;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

LABEL_38:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v21;
    v23 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_252740BBC();
      v20 = v23;
    }

    *a2 = *(*(v20 + 48) + v7);
    result = sub_252866650(v7);
    *v21 = v23;
  }

  else
  {
LABEL_36:
    *a2 = 6;
  }

  return result;
}

uint64_t sub_252866348(int64_t a1)
{
  v3 = sub_2528BECF0();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    sub_2528BEA50();
    v13 = sub_2528C0E10();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_25286FE38(&qword_27F4FBD88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v24 = sub_2528C0900();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_252866650(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_2528BEA50();
    v8 = sub_2528C0E10();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_2528C1130();
        sub_2528C0A40();

        v10 = sub_2528C1180() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2528668B4(uint64_t a1)
{
  v2 = sub_2528C0020();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = *(a1 + 16);
  v10 = sub_25286FE38(&qword_27F4FFC70, MEMORY[0x277D164A0], MEMORY[0x277D164A8]);
  result = MEMORY[0x2530A82F0](v9, v2, v10);
  v12 = 0;
  v23 = a1;
  v24 = result;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v22[1] = v3 + 16;
  if ((v17 & v13) != 0)
  {
    do
    {
      v20 = v12;
LABEL_9:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v3 + 16))(v8, *(v23 + 56) + *(v3 + 72) * (v21 | (v20 << 6)), v2);
      sub_252866AC8(v6, v8);
      result = (*(v3 + 8))(v6, v2);
    }

    while (v18);
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return v24;
    }

    v18 = *(v14 + 8 * v20);
    ++v12;
    if (v18)
    {
      v12 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252866AC8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2528C0020();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_25286FE38(&qword_27F4FFC70, MEMORY[0x277D164A0], MEMORY[0x277D164A8]);
  v33 = a2;
  v11 = sub_2528C0900();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_25286FE38(&qword_27F4FFC78, MEMORY[0x277D164A0], MEMORY[0x277D164B0]);
      v21 = sub_2528C0930();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_252866DA8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_252866DA8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2528C0020();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v11 <= v10)
  {
    v12 = v10 + 1;
    if (a3)
    {
      sub_252867594(v12);
    }

    else
    {
      sub_252867278(v12);
    }

    v13 = *v3;
    sub_25286FE38(&qword_27F4FFC70, MEMORY[0x277D164A0], MEMORY[0x277D164A8]);
    v14 = sub_2528C0900();
    v15 = v13 + 56;
    v31 = v13;
    v16 = -1 << *(v13 + 32);
    a2 = v14 & ~v16;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v17 = ~v16;
      v20 = *(v7 + 16);
      v19 = v7 + 16;
      v18 = v20;
      v21 = *(v19 + 56);
      do
      {
        v18(v9, *(v31 + 48) + v21 * a2, v6);
        sub_25286FE38(&qword_27F4FFC78, MEMORY[0x277D164A0], MEMORY[0x277D164B0]);
        v22 = sub_2528C0930();
        (*(v19 - 8))(v9, v6);
        if (v22)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v17;
      }

      while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_252867040();
  }

  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

void *sub_252867040()
{
  v1 = v0;
  v2 = sub_2528C0020();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC80, &unk_2528D4D08);
  v6 = *v0;
  v7 = sub_2528C0E30();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_252867278(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2528C0020();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC80, &unk_2528D4D08);
  v7 = sub_2528C0E40();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_25286FE38(&qword_27F4FFC70, MEMORY[0x277D164A0], MEMORY[0x277D164A8]);
      result = sub_2528C0900();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_252867594(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2528C0020();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC80, &unk_2528D4D08);
  result = sub_2528C0E40();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_25286FE38(&qword_27F4FFC70, MEMORY[0x277D164A0], MEMORY[0x277D164A8]);
      result = sub_2528C0900();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_2528678F0(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v65 - v9);
  v11 = sub_2528BECF0();
  v12 = MEMORY[0x28223BE20](v11);
  v85 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v65 - v15);
  MEMORY[0x28223BE20](v14);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v66 = v10;
  v68 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_2527213D8(v30, &qword_27F4FC628, &qword_2528C4750);
      v59 = a1;
      goto LABEL_53;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_25286FE38(&qword_27F4FBD88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v32 = sub_2528C0900();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v16, *(a2 + 48) + v84 * v24, v11);
    v35 = sub_25286FE38(&qword_27F4FC680, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v36 = sub_2528C0930();
    v87 = *v88;
    v87(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x28223BE20](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_2527213D8(v24, &qword_27F4FC628, &qword_2528C4750);
        a2 = sub_2528308F4(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = sub_2528C0900();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v16, *(v52 + 48) + v54 * v84, v11);
        v55 = sub_2528C0930();
        v87(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v16, *(v52 + 48) + v54 * v84, v11);
            v57 = sub_2528C0930();
            v87(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;
    sub_2528BEA50();
    v80 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v80;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v82, v62);
  a2 = sub_252868354(v64, v65, v80, v24, &v89);

  MEMORY[0x2530A8D80](v64, -1, -1);
LABEL_52:
  v59 = v89;
LABEL_53:
  sub_25271A648(v59);
  return a2;
}

uint64_t sub_252868354(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_2528BECF0();
  v13 = MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_2527213D8(v11, &qword_27F4FC628, &qword_2528C4750);
          v45 = v61;
          sub_2528BEA50();
          return sub_2528308F4(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_25286FE38(&qword_27F4FBD88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v35 = sub_2528C0900();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_25286FE38(&qword_27F4FC680, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v43 = sub_2528C0930();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

void *sub_252868828(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_252868980(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_252868A7C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DeviceEntity(0);
  v32 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  v15 = a4 + 8;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[8];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[6];
      v26 = *(v32 + 72);
      sub_25286F980(v25 + v26 * (v24 | (v19 << 6)), v11, type metadata accessor for DeviceEntity);
      sub_25279F090(v11, v14);
      sub_25279F090(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += v26;
      result = v21;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}