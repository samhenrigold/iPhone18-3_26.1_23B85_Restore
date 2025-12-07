uint64_t sub_22F212A2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000023;
  v3 = "alysis";
  v4 = a1;
  if (a1 == 4)
  {
    v5 = 0xD000000000000023;
  }

  else
  {
    v5 = 0xD00000000000001CLL;
  }

  if (a1 == 4)
  {
    v6 = "ntitiesSimulation";
  }

  else
  {
    v6 = "Graph.EventLabeling";
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000031;
  }

  else
  {
    v7 = v5;
  }

  if (v4 == 3)
  {
    v6 = "ibrarySimulation";
  }

  v8 = 0xD000000000000030;
  if (v4 == 1)
  {
    v8 = 0xD000000000000023;
    v9 = "com.apple.PhotosGraph";
  }

  else
  {
    v9 = "Graph.MemoriesMusic";
  }

  if (!v4)
  {
    v8 = 0xD000000000000015;
    v9 = "alysis";
  }

  if (v4 > 2)
  {
    v10 = v6;
  }

  else
  {
    v7 = v8;
    v10 = v9;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD000000000000031;
      v3 = "ibrarySimulation";
    }

    else if (a2 == 4)
    {
      v3 = "ntitiesSimulation";
    }

    else
    {
      v2 = 0xD00000000000001CLL;
      v3 = "Graph.EventLabeling";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = "com.apple.PhotosGraph";
    }

    else
    {
      v2 = 0xD000000000000030;
      v3 = "Graph.MemoriesMusic";
    }
  }

  else
  {
    v2 = 0xD000000000000015;
  }

  if (v7 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22F742040();
  }

  return v11 & 1;
}

uint64_t sub_22F212B98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF6867756F6E4574;
  if (a1 > 4u)
  {
    v3 = 0x800000022F78E480;
    v4 = 0xD000000000000020;
    v10 = 0x800000022F78E4B0;
    v11 = 0xD00000000000001FLL;
    if (a1 == 8)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v10 = 0x800000022F78E4D0;
    }

    if (a1 != 7)
    {
      v4 = v11;
      v3 = v10;
    }

    v7 = 0x800000022F78E440;
    v8 = 0xD000000000000022;
    if (a1 != 5)
    {
      v8 = 0x457265696C74756FLL;
      v7 = 0xED0000797469746ELL;
    }

    v9 = a1 <= 6u;
  }

  else
  {
    v3 = 0x800000022F78E3F0;
    v4 = 0xD000000000000019;
    v5 = 0x746E656D6F4D6F6ELL;
    v6 = 0xE900000000000073;
    if (a1 != 3)
    {
      v5 = 0xD000000000000010;
      v6 = 0x800000022F78E420;
    }

    if (a1 != 2)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0x800000022F78E3C0;
    v8 = 0xD000000000000017;
    if (a1)
    {
      v8 = 0x6E65636552746F6ELL;
      v7 = 0xEF6867756F6E4574;
    }

    v9 = a1 <= 1u;
  }

  if (v9)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  if (v9)
  {
    v13 = v7;
  }

  else
  {
    v13 = v3;
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        if (v12 != 0x6E65636552746F6ELL)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v2 = 0x800000022F78E3C0;
        if (v12 != 0xD000000000000017)
        {
          goto LABEL_53;
        }
      }

      goto LABEL_51;
    }

    if (a2 == 2)
    {
      v2 = 0x800000022F78E3F0;
      if (v12 != 0xD000000000000019)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    if (a2 == 3)
    {
      v2 = 0xE900000000000073;
      if (v12 != 0x746E656D6F4D6F6ELL)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    v14 = "notEnoughMoments";
LABEL_44:
    v2 = (v14 - 32) | 0x8000000000000000;
    if (v12 != 0xD000000000000010)
    {
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  if (a2 > 6u)
  {
    if (a2 == 7)
    {
      v2 = 0x800000022F78E480;
      if (v12 != 0xD000000000000020)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    if (a2 != 8)
    {
      v2 = 0x800000022F78E4D0;
      if (v12 != 0xD00000000000001FLL)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    v14 = "lifespanNotFound";
    goto LABEL_44;
  }

  if (a2 == 5)
  {
    v2 = 0x800000022F78E440;
    if (v12 != 0xD000000000000022)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v2 = 0xED0000797469746ELL;
    if (v12 != 0x457265696C74756FLL)
    {
LABEL_53:
      v15 = sub_22F742040();
      goto LABEL_54;
    }
  }

LABEL_51:
  if (v13 != v2)
  {
    goto LABEL_53;
  }

  v15 = 1;
LABEL_54:

  return v15 & 1;
}

uint64_t sub_22F212EAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 2037672259;
    }

    else
    {
      v5 = 1701736270;
    }

    v6 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x7972746E756F43;
    if (a1 != 3)
    {
      v4 = 0xD000000000000010;
      v3 = 0x800000022F78E820;
    }

    if (a1 == 2)
    {
      v5 = 0x6574617453;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 2037672259;
    }

    else
    {
      v11 = 1701736270;
    }

    v10 = 0xE400000000000000;
    if (v5 != v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v7 = 0x7972746E756F43;
    v8 = 0x800000022F78E820;
    if (a2 == 3)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v9 = 0x6574617453;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE500000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_32;
    }
  }

  if (v6 != v10)
  {
LABEL_32:
    v12 = sub_22F742040();
    goto LABEL_33;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_22F213018(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB0000000073746ELL;
  v3 = 0x656C617669757165;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6E612D6F69647561;
    }

    else
    {
      v5 = 0x612D6C6D78656C66;
    }

    if (v4 == 2)
    {
      v6 = 0xEE00736973796C61;
    }

    else
    {
      v6 = 0xEF736973796C616ELL;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x73636972796CLL;
    }

    else
    {
      v5 = 0x656C617669757165;
    }

    if (v4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xEB0000000073746ELL;
    }
  }

  v7 = 0x6E612D6F69647561;
  v8 = 0xEE00736973796C61;
  if (a2 != 2)
  {
    v7 = 0x612D6C6D78656C66;
    v8 = 0xEF736973796C616ELL;
  }

  if (a2)
  {
    v3 = 0x73636972796CLL;
    v2 = 0xE600000000000000;
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
    v11 = sub_22F742040();
  }

  return v11 & 1;
}

uint64_t sub_22F213188(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE300000000000000;
    v12 = 0xE700000000000000;
    v13 = 0x79616C506E6163;
    if (a1 != 2)
    {
      v13 = 0xD000000000000010;
      v12 = 0x800000022F78D720;
    }

    v14 = 0x64656C6C61636572;
    if (a1)
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v14 = 6580597;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x656D614E676E6F73;
    v5 = 0xE800000000000000;
    v6 = 0x7364726F7779656BLL;
    if (a1 != 7)
    {
      v6 = 0x734449676174;
      v5 = 0xE600000000000000;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0xE600000000000000;
    v8 = 0x6E6564646968;
    if (a1 != 4)
    {
      v8 = 0x614E747369747261;
      v7 = 0xEA0000000000656DLL;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x79616C506E6163)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0x800000022F78D720;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE800000000000000;
      if (v9 != 0x64656C6C61636572)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE300000000000000;
      if (v9 != 6580597)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x6E6564646968)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xEA0000000000656DLL;
      if (v9 != 0x614E747369747261)
      {
LABEL_52:
        v16 = sub_22F742040();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xE800000000000000;
    if (v9 != 0x656D614E676E6F73)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xE800000000000000;
    if (v9 != 0x7364726F7779656BLL)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xE600000000000000;
    if (v9 != 0x734449676174)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_22F213440(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7465737265707573;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x696F41706F74;
    }

    else
    {
      v4 = 1701670760;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E69727275636572;
    }

    else
    {
      v4 = 0x7465737265707573;
    }

    if (v3)
    {
      v5 = 0xED00007069725467;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x696F41706F74;
  if (a2 != 2)
  {
    v8 = 1701670760;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x6E69727275636572;
    v6 = 0xED00007069725467;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22F742040();
  }

  return v11 & 1;
}

uint64_t sub_22F213584(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 0xD00000000000001CLL;
    }

    if (v3 == 2)
    {
      v4 = "minimumFailureCadenceSeconds";
    }

    else
    {
      v4 = "failureBackoffMultiplier";
    }
  }

  else
  {
    if (a1)
    {
      v4 = "minimumSuccessCadenceSeconds";
    }

    else
    {
      v4 = "";
    }

    v5 = 0xD00000000000001CLL;
  }

  v6 = "minimumFailureCadenceSeconds";
  v7 = 0xD000000000000018;
  if (a2 != 2)
  {
    v7 = 0xD00000000000001CLL;
    v6 = "failureBackoffMultiplier";
  }

  if (a2)
  {
    v2 = "minimumSuccessCadenceSeconds";
  }

  if (a2 <= 1u)
  {
    v8 = 0xD00000000000001CLL;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v5 == v8 && (v4 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_22F742040();
  }

  return v10 & 1;
}

double sub_22F2136B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = sub_22F740E20();
  v6(a2, v7, v8, a4);

  return result;
}

void sub_22F213728(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB12E0, &unk_22F7716E0);
    v2 = sub_22F741DF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_22F107D08(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_22F107D08(v29, v30);
    v14 = sub_22F741A70();
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_22F107D08(v30, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_22F2139E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1380, &unk_22F771790);
    v2 = sub_22F741DF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_22F13A100(*(a1 + 56) + 32 * v12, v29);
        *&v28 = v14;
        *(&v28 + 1) = v15;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v16 = v28;
        sub_22F107D08(v27, &v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2780, &qword_22F77AD28);
        swift_dynamicCast();
        sub_22F107D08(&v23, v25);
        sub_22F107D08(v25, v26);
        sub_22F107D08(v26, &v24);
        v17 = sub_22F1229E8(v16, *(&v16 + 1));
        if (v18)
        {
          *(v2[6] + 16 * v17) = v16;
          v8 = v17;

          v9 = (v2[7] + 32 * v8);
          __swift_destroy_boxed_opaque_existential_0(v9);
          sub_22F107D08(&v24, v9);
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
          *(v2[6] + 16 * v17) = v16;
          sub_22F107D08(&v24, (v2[7] + 32 * v17));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_22F213C6C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB12E0, &unk_22F7716E0);
    v2 = sub_22F741DF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = v13[1];
    v15 = *(*(a1 + 56) + 8 * v12);
    *&v32[0] = *v13;
    *(&v32[0] + 1) = v14;

    v15;
    swift_dynamicCast();
    sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_22F107D08(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_22F107D08(v31, v32);
    v16 = sub_22F741A70();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_22F107D08(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_22F213F3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2768, &qword_22F77AD20);
    v2 = sub_22F741DF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = *(*(a1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));

    swift_dynamicCast();
    v13 = sub_22F741A70();
    v14 = -1 << *(v2 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v16);
        if (v20 != -1)
        {
          v9 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v21;
    *(v10 + 16) = v22;
    *(v10 + 32) = v23;
    *(*(v2 + 56) + 8 * v9) = v12;
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_22F214198(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2768, &qword_22F77AD20);
    v2 = sub_22F741DF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = *(*(a1 + 56) + 8 * (__clz(__rbit64(v5)) | (v8 << 6)));

    swift_dynamicCast();
    v13 = sub_22F741A70();
    v14 = -1 << *(v2 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v16);
        if (v20 != -1)
        {
          v9 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v21;
    *(v10 + 16) = v22;
    *(v10 + 32) = v23;
    *(*(v2 + 56) + 8 * v9) = v12;
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_22F2143F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB12E0, &unk_22F7716E0);
    v2 = sub_22F741DF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_22F13A100(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_22F107D08(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_22F107D08(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_22F107D08(v31, v32);
    v16 = sub_22F741A70();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_22F107D08(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_22F2146C0(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0AE0, &qword_22F770C68);
    v2 = sub_22F741DF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1048, &qword_22F78B5C0);
  v4 = v1 + 64;
  v5 = 1 << *(v1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v1 + 64);
  v40 = v1;
  v8 = v5 + 63;
  if (v3 == MEMORY[0x277D837D0])
  {
    v25 = v8 >> 6;

    v26 = 0;
    while (v7)
    {
      v31 = v26;
LABEL_35:
      v32 = *(*(v1 + 56) + 8 * (__clz(__rbit64(v7)) | (v31 << 6)));
      v7 &= v7 - 1;

      v33 = v32;
      swift_dynamicCast();
      v34 = sub_22F123310(v41, v42);
      if (v35)
      {
        v27 = (*(v2 + 48) + 16 * v34);
        *v27 = v41;
        v27[1] = v42;
        v28 = v34;

        v29 = *(v2 + 56);
        v30 = *(v29 + 8 * v28);
        *(v29 + 8 * v28) = v33;
      }

      else
      {
        if (*(v2 + 16) >= *(v2 + 24))
        {
          goto LABEL_43;
        }

        *(v2 + 64 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
        v36 = (*(v2 + 48) + 16 * v34);
        *v36 = v41;
        v36[1] = v42;
        *(*(v2 + 56) + 8 * v34) = v33;
        v37 = *(v2 + 16);
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_44;
        }

        *(v2 + 16) = v39;
      }

      v26 = v31;
      v1 = v40;
    }

    while (1)
    {
      v31 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v31 >= v25)
      {
LABEL_39:

        return;
      }

      v7 = *(v4 + 8 * v31);
      ++v26;
      if (v7)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v15 = *(*(v1 + 56) + 8 * (__clz(__rbit64(v7)) | (v11 << 6)));

      v16 = v15;
      swift_dynamicCast();
      sub_22F742170();
      sub_22F742190();
      if (v42)
      {
        sub_22F740D60();
      }

      v17 = sub_22F7421D0();
      v18 = -1 << *(v2 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_41;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v2 + 48) + 16 * v12);
      *v13 = v41;
      v13[1] = v42;
      *(*(v2 + 56) + 8 * v12) = v16;
      ++*(v2 + 16);
      v1 = v40;
    }

    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_39;
      }

      v7 = *(v4 + 8 * v14);
      ++v11;
      if (v7)
      {
        v11 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_22F214A98(uint64_t a1)
{
  v2 = sub_22F73FE50();
  v3 = *(v2 - 8);
  v45 = v2;
  v46 = v3;
  MEMORY[0x28223BE20](v2);
  v44 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2760, &qword_22F77AD18);
  MEMORY[0x28223BE20](v43);
  v42 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v41 = v39 - v7;
  v47 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2768, &qword_22F77AD20);
    v8 = sub_22F741DF0();
  }

  else
  {
    v8 = MEMORY[0x277D84F98];
  }

  v9 = v47 + 64;
  v10 = 1 << *(v47 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v47 + 64);
  v13 = (v10 + 63) >> 6;
  v39[1] = v46 + 16;
  v39[0] = v46 + 32;
  v14 = v8 + 64;

  v15 = 0;
  v40 = v8;
  while (v12)
  {
LABEL_15:
    v19 = __clz(__rbit64(v12)) | (v15 << 6);
    v21 = v46;
    v20 = v47;
    v22 = v41;
    v23 = v45;
    (*(v46 + 16))(v41, *(v47 + 48) + *(v46 + 72) * v19, v45);
    v24 = *(*(v20 + 56) + 8 * v19);
    v25 = v43;
    *&v22[*(v43 + 48)] = v24;
    v26 = v22;
    v27 = v42;
    sub_22F21EF98(v26, v42);
    v28 = *(v25 + 48);
    (*(v21 + 32))(v44, v27, v23);

    swift_dynamicCast();
    v29 = *(v27 + v28);
    v51 = v48;
    v30 = v40;
    v31 = sub_22F741A70();
    v32 = -1 << *(v30 + 32);
    v33 = v31 & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v32) >> 6;
      while (++v34 != v36 || (v35 & 1) == 0)
      {
        v37 = v34 == v36;
        if (v34 == v36)
        {
          v34 = 0;
        }

        v35 |= v37;
        v38 = *(v14 + 8 * v34);
        if (v38 != -1)
        {
          v16 = __clz(__rbit64(~v38)) + (v34 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v16 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v12 &= v12 - 1;
    *(v14 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v17 = *(v30 + 48) + 40 * v16;
    *v17 = v48;
    *(v17 + 16) = v49;
    *(v17 + 32) = v50;
    *(*(v30 + 56) + 8 * v16) = v29;
    ++*(v30 + 16);
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v13)
    {

      return;
    }

    v12 = *(v9 + 8 * v18);
    ++v15;
    if (v12)
    {
      v15 = v18;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_22F214E90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1380, &unk_22F771790);
    v2 = sub_22F741DF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_22F139EC4(*(a1 + 56) + 48 * v12, v29);
        *&v28 = v14;
        *(&v28 + 1) = v15;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v27[2] = v29[2];
        v16 = v28;
        sub_22F139F28(v27, v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2758, &qword_22F77AD10);
        swift_dynamicCast();
        sub_22F107D08(&v23, v25);
        sub_22F107D08(v25, v26);
        sub_22F107D08(v26, &v24);
        v17 = sub_22F1229E8(v16, *(&v16 + 1));
        if (v18)
        {
          *(v2[6] + 16 * v17) = v16;
          v8 = v17;

          v9 = (v2[7] + 32 * v8);
          __swift_destroy_boxed_opaque_existential_0(v9);
          sub_22F107D08(&v24, v9);
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
          *(v2[6] + 16 * v17) = v16;
          sub_22F107D08(&v24, (v2[7] + 32 * v17));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_22F215124(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB12E0, &unk_22F7716E0);
    v2 = sub_22F741DF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_22F139EC4(*(a1 + 56) + 48 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    *&v32[5] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v33[2] = v35[2];
    v24[3] = v34;

    swift_dynamicCast();
    sub_22F139F28(v33, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2758, &qword_22F77AD10);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_22F107D08(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_22F107D08(v32, v24);
    v16 = sub_22F741A70();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v25;
    *(v10 + 16) = v26;
    *(v10 + 32) = v27;
    sub_22F107D08(v24, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_22F215428(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1380, &unk_22F771790);
    v2 = sub_22F741DF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_22F107D08(&v22, v24);
        sub_22F107D08(v24, v25);
        sub_22F107D08(v25, &v23);
        v16 = sub_22F1229E8(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          sub_22F107D08(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_22F107D08(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_22F215680(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = sub_22F10B47C(*(a1 + 16), 0);
  v9 = sub_22F120B40();
  sub_22F0FF590(v12);
  if (v9 != v7)
  {
    __break(1u);
LABEL_4:

    v8 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EE0, &unk_22F7889B0);
  v10 = swift_allocObject();
  result = sub_22F740830();
  if (a3 < 1 || a4 < 1)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v8;
    *(v10 + 24) = a2 & 1;
    *(v10 + 32) = a3;
    *(v10 + 40) = a4;
    return v10;
  }

  return result;
}

void sub_22F215784(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v11 = MEMORY[0x277D84F90];
    sub_22F146954(0, v3, 0);
    v5 = 0;
    while (v5 < *(v2 + 16))
    {

      sub_22F21588C(v6, a1);
      v8 = v7;

      v10 = *(v11 + 16);
      v9 = *(v11 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_22F146954((v9 > 1), v10 + 1, 1);
      }

      ++v5;
      *(v11 + 16) = v10 + 1;
      *(v11 + 8 * v10 + 32) = v8;
      if (v3 == v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_22F21588C(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2)
{
  v2 = *(isUniquelyReferenced_nonNull_native + 16);
  if (v2)
  {
    v4 = 0;
    v5 = isUniquelyReferenced_nonNull_native + 40;
    v6 = MEMORY[0x277D84F90];
    v15 = isUniquelyReferenced_nonNull_native + 40;
    do
    {
      v16 = v6;
      v7 = (v5 + 16 * v4);
      for (i = v4; ; ++i)
      {
        if (i >= v2)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }

        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        v10 = *(v7 - 1);
        v9 = *v7;
        v17[0] = v10;
        v17[1] = v9;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        v14[2] = v17;

        if (sub_22F1C0E04(sub_22F15A388, v14, a2))
        {
          break;
        }

        v7 += 2;
        if (v4 == v2)
        {
          return;
        }
      }

      v6 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_22F146454(0, *(v6 + 16) + 1, 1);
        v6 = v18;
      }

      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_22F146454((v11 > 1), v12 + 1, 1);
        v6 = v18;
      }

      *(v6 + 16) = v12 + 1;
      v13 = v6 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      v5 = v15;
    }

    while (v4 != v2);
  }
}

void sub_22F215A34(uint64_t a1, uint64_t a2, float (*a3)(void *, uint64_t *, __n128), uint64_t a4)
{
  v5 = v4;
  v49 = a3;
  v50 = a4;
  v53 = a1;
  v7 = sub_22F73FE50();
  MEMORY[0x28223BE20](v7);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v4 + 16);
  v47 = v11;
  v48 = v10;

  if (a2)
  {
    sub_22F215784(a2);
    v13 = v12;

    v9 = v13;
  }

  v14 = 0;
  v15 = *(v9 + 16);
  v16 = MEMORY[0x277D84F90];
  while (v15 != v14)
  {
    if (v14 >= *(v9 + 16))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return;
    }

    v17 = *(v9 + 8 * v14++ + 32);
    if (*(v17 + 16) >= 2uLL)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54[0] = v16;
      v19 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22F146954(0, *(v16 + 16) + 1, 1);
        v16 = v54[0];
      }

      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22F146954((v20 > 1), v21 + 1, 1);
        v16 = v54[0];
      }

      *(v16 + 16) = v21 + 1;
      *(v16 + 8 * v21 + 32) = v17;
      v5 = v19;
    }
  }

  v55 = v16;
  v22 = *(v16 + 16);

  if (v22)
  {
    sub_22F2165F0(v16, v51);
    v23 = v55;
    v25 = (v55 + 16);
    v24 = *(v55 + 16);
    if (v24)
    {
      v26 = MEMORY[0x277D84F90];
      v52 = qword_27DAB25B8;
      while (v26[2] < v53)
      {
        if (*(v5 + 24))
        {
          swift_beginAccess();
          v27 = vcvts_n_f32_u32(sub_22F20F3F4(0x1000001uLL), 0x18uLL) + 0.0;
          swift_endAccess();
          sub_22F20F4CC(v27);
          v29 = v28;
        }

        else
        {
          swift_beginAccess();
          v29 = sub_22F20F35C(v24);
          swift_endAccess();
        }

        if ((v29 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v29 >= *v25)
        {
          goto LABEL_38;
        }

        v30 = v23;
        v31 = *(v23 + 8 * v29 + 32);
        v32 = *(v31 + 16);
        swift_beginAccess();
        if (!v32)
        {
          goto LABEL_39;
        }

        v33 = sub_22F20F35C(v32);
        v34 = swift_endAccess();
        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (v33 >= *(v31 + 16))
        {
          goto LABEL_41;
        }

        v35 = v5;
        v36 = v31 + 16 * v33;
        v38 = *(v36 + 32);
        v37 = *(v36 + 40);
        v54[0] = v38;
        v54[1] = v37;
        MEMORY[0x28223BE20](v34);
        *(&v47 - 2) = v54;

        sub_22F3A06C8(sub_22F21F1C8, (&v47 - 4), v31);
        if (*(v39 + 16))
        {
          sub_22F216850(v38, v37, v39, v49, v50);
          v41 = v40;
          v43 = v42;

          if (v43)
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_22F13F03C(0, v26[2] + 1, 1, v26);
            }

            v45 = v26[2];
            v44 = v26[3];
            if (v45 >= v44 >> 1)
            {
              v26 = sub_22F13F03C((v44 > 1), v45 + 1, 1, v26);
            }

            v26[2] = v45 + 1;
            v46 = &v26[4 * v45];
            v46[4] = v38;
            v46[5] = v37;
            v46[6] = v41;
            v46[7] = v43;

            v23 = v55;
          }

          else
          {

            v23 = v30;
          }
        }

        else
        {

          sub_22F215FC0(v29);

          v23 = v55;
        }

        v25 = (v23 + 16);
        v24 = *(v23 + 16);
        v5 = v35;
        if (!v24)
        {
          break;
        }
      }
    }

    (*(v47 + 8))(v51, v48);
  }

  else
  {
  }
}

uint64_t sub_22F215F34(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22F2F2C80(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_22F215FC0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22F2F2C94(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 5, 8 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void sub_22F216048(uint64_t a1, uint64_t a2, float (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v56 = a3;
  v57 = a4;
  v59 = a1;
  v7 = sub_22F73FE50();
  v8 = *(v7 - 8);
  v53 = v7;
  v54 = v8;
  MEMORY[0x28223BE20](v7);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v49 - v11;
  if (a2)
  {
    sub_22F215784(a2);
    v13 = v12;
  }

  else
  {
    v13 = *(v4 + 16);
  }

  v14 = 0;
  v15 = *(v13 + 16);
  v16 = MEMORY[0x277D84F90];
  while (v15 != v14)
  {
    if (v14 >= *(v13 + 16))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

    v17 = *(v13 + 8 * v14++ + 32);
    if (*(v17 + 16))
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60[0] = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22F146954(0, *(v16 + 16) + 1, 1);
        v16 = v60[0];
      }

      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_22F146954((v19 > 1), v20 + 1, 1);
        v16 = v60[0];
      }

      *(v16 + 16) = v20 + 1;
      *(v16 + 8 * v20 + 32) = v17;
    }
  }

  v21 = *(v16 + 16);
  v58 = (v16 + 16);
  if (v21 >= 2)
  {
    sub_22F2165F0(v16, v55);
    v22 = *(v16 + 16);
    if (v22)
    {
      v50 = (v54 + 32);
      v51 = (v54 + 8);
      v23 = MEMORY[0x277D84F90];
      v24 = v16;
      while (v23[2] < v59)
      {
        v61 = v24;
        if (*(v5 + 24))
        {
          swift_beginAccess();

          v25 = vcvts_n_f32_u32(sub_22F20F3F4(0x1000001uLL), 0x18uLL) + 0.0;
          swift_endAccess();
          sub_22F20F4CC(v25);
        }

        else
        {
          swift_beginAccess();

          v27 = sub_22F20F35C(v22);
          swift_endAccess();
          v26 = v27;
        }

        v28 = sub_22F215FC0(v26);
        v29 = *(v28 + 16);
        swift_beginAccess();
        if (!v29)
        {
          goto LABEL_37;
        }

        v30 = sub_22F20F35C(v29);
        swift_endAccess();
        if ((v30 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v30 >= *(v28 + 16))
        {
          goto LABEL_39;
        }

        v31 = v28 + 16 * v30;
        v33 = *(v31 + 32);
        v32 = *(v31 + 40);

        v60[0] = v33;
        v60[1] = v32;
        v35 = v61;
        MEMORY[0x28223BE20](v34);
        *(&v49 - 2) = v60;
        v36 = sub_22F2D0160(sub_22F21F008, (&v49 - 4), v35);

        v61 = v36;
        if (v36[2])
        {
          sub_22F216AB8(v33, v32, &v61, v56, v57);
          v38 = v37;
          v40 = v39;

          if (v40)
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_22F13F03C(0, v23[2] + 1, 1, v23);
            }

            v47 = v23[2];
            v46 = v23[3];
            v49 = v47 + 1;
            if (v47 >= v46 >> 1)
            {
              v23 = sub_22F13F03C((v46 > 1), v47 + 1, 1, v23);
            }

            v23[2] = v49;
            v48 = &v23[4 * v47];
            v48[4] = v33;
            v48[5] = v32;
            v48[6] = v38;
            v48[7] = v40;
          }

          v22 = *v58;
          if (!*v58)
          {
            break;
          }
        }

        else
        {

          MEMORY[0x28223BE20](v41);
          *(&v49 - 2) = v60;
          v42 = sub_22F2D0160(sub_22F21F038, (&v49 - 4), v24);

          v43 = v52;
          sub_22F2165F0(v42, v52);
          v44 = v55;
          v45 = v53;
          (*v51)(v55, v53);
          (*v50)(v44, v43, v45);

          v22 = v42[2];
          v58 = v42 + 2;
          v24 = v42;
          if (!v22)
          {
            break;
          }
        }
      }
    }

    (*(v54 + 8))(v55, v53);
  }

  else
  {
  }
}

void sub_22F2165F0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22F73FE50();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  while (v8 != v7)
  {
    if (v7 >= v8)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_19;
    }

    v11 = *(a1 + 32 + 8 * v7++);
    if (*(v11 + 16))
    {
      v21 = a2;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22F146954(0, *(v9 + 16) + 1, 1);
        v9 = v23;
      }

      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_22F146954((v13 > 1), v14 + 1, 1);
        v9 = v23;
      }

      *(v9 + 16) = v14 + 1;
      *(v9 + 8 * v14 + 32) = v11;
      v7 = v10;
      a2 = v21;
    }
  }

  v15 = *(v9 + 16);
  v16 = 0.0;
  sub_22F73FE30();
  if (!v15)
  {

    (*(v22 + 32))(a2, v6, v4);
    return;
  }

  v17 = *(v9 + 16);
  if (!v17)
  {
LABEL_16:

    sub_22F73FDC0();
    (*(v22 + 8))(v6, v4);
    return;
  }

  v18 = 0;
  while (v18 < *(v9 + 16))
  {
    v19 = v18 + 1;
    v16 = v16 + *(*(v9 + 32 + 8 * v18) + 16);
    sub_22F73FE80();
    v18 = v19;
    if (v17 == v19)
    {
      goto LABEL_16;
    }
  }

LABEL_20:
  __break(1u);
}

void sub_22F216850(uint64_t a1, uint64_t a2, uint64_t a3, float (*a4)(void *, uint64_t *, __n128), uint64_t a5)
{
  v29[0] = a1;
  v29[1] = a2;
  if (!a4 || (v6 = *(v5 + 32), v6 < 2))
  {
    v20 = *(a3 + 16);
    swift_beginAccess();
    if (v20)
    {
      v21 = sub_22F20F35C(v20);
      swift_endAccess();
      if (v21 < v20)
      {

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  v9 = *(a3 + 16);
  if (v6 < v9)
  {
    swift_beginAccess();
    sub_22F21F088(a4, a5);

    sub_22F35A224();
    swift_endAccess();
    sub_22F39A078();
    v11 = v10;
    v13 = v12;
    v9 = v14 >> 1;
    v15 = v12 < (v14 >> 1);
    if (v12 != v14 >> 1)
    {
      goto LABEL_5;
    }

LABEL_13:
    sub_22F107E14(a4, a5);
    swift_unknownObjectRelease();
    return;
  }

  v11 = a3 + 32;
  sub_22F21F088(a4, a5);

  v13 = 0;
  v15 = v9 > 0;
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (!v15)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v16 = (v11 + 16 * v13);
  v17 = *v16;
  v18 = v16[1];
  swift_unknownObjectRetain();
  v27 = v17;
  v28 = v18;

  v19 = (a4)(v29, &v27);

  if (v13 + 1 != v9)
  {
    v22 = ~v13 + v9;
    v23 = v16 + 3;
    do
    {
      v24 = *v23;
      v27 = *(v23 - 1);
      v28 = v24;

      v25 = (a4)(v29, &v27);
      if (v19 < v25)
      {
      }

      else
      {
        v26 = v25;

        v19 = v26;
      }

      v23 += 2;
      --v22;
    }

    while (v22);
  }

  sub_22F107E14(a4, a5);
  swift_unknownObjectRelease_n();
}

void sub_22F216AB8(uint64_t a1, uint64_t a2, uint64_t *a3, float (*a4)(void, void), uint64_t a5)
{
  v6 = v5;
  v53 = sub_22F73FE50();
  MEMORY[0x28223BE20](v53);
  v52 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66[0] = a1;
  v66[1] = a2;
  v14 = *(v6 + 40);
  if (v14 < 0)
  {
    goto LABEL_48;
  }

  if (!v14)
  {
    v60 = 0;
    return;
  }

  v15 = 0;
  v16 = 0;
  v54 = 0;
  v60 = 0;
  v59 = *(v6 + 24);
  v51 = (v12 + 8);
  if (a4)
  {
    v17 = v14 == 1;
  }

  else
  {
    v17 = 1;
  }

  v18 = v17;
  v58 = v18;
  v19 = 0.0;
  v55 = v14;
  v56 = a3;
  v57 = a5;
  while (1)
  {
    v64 = v15;
    v23 = *a3;
    v63 = v16;
    if (v59)
    {
      break;
    }

    v28 = a4;
    v29 = v23;
    v30 = *(v23 + 16);
    swift_beginAccess();
    if (!v30)
    {
      goto LABEL_45;
    }

    sub_22F740840();
    sub_22F21F158(&qword_27DAB26C0, MEMORY[0x277D3C700], MEMORY[0x277D3C708]);
    v31 = sub_22F740D30();
    v27 = (v31 * v30) >> 64;
    if (v30 > v31 * v30)
    {
      v32 = -v30 % v30;
      if (v32 > v31 * v30)
      {
        do
        {
          v33 = sub_22F740D30();
        }

        while (v32 > v33 * v30);
        v27 = (v33 * v30) >> 64;
      }
    }

    swift_endAccess();
    v23 = v29;
    a4 = v28;
LABEL_21:
    if (v27 >= *(v23 + 16))
    {
      goto LABEL_42;
    }

    v34 = a4;
    v61 = v23;
    v35 = *(v23 + 8 * v27 + 32);
    v36 = *(v35 + 16);
    swift_beginAccess();
    if (!v36)
    {
      goto LABEL_43;
    }

    v62 = v27;
    sub_22F740840();
    sub_22F21F158(&qword_27DAB26C0, MEMORY[0x277D3C700], MEMORY[0x277D3C708]);

    v37 = sub_22F740D30();
    v38 = (v37 * v36) >> 64;
    if (v36 > v37 * v36)
    {
      v39 = -v36 % v36;
      if (v39 > v37 * v36)
      {
        do
        {
          v40 = sub_22F740D30();
        }

        while (v39 > v40 * v36);
        v38 = (v40 * v36) >> 64;
      }
    }

    swift_endAccess();
    if (v38 >= *(v35 + 16))
    {
      goto LABEL_44;
    }

    v41 = v35 + 16 * v38;
    v42 = *(v41 + 32);
    v43 = *(v41 + 40);

    v65[0] = v42;
    v65[1] = v43;
    if (v58)
    {

      v60 = v43;
      return;
    }

    v44 = v57;

    a4 = v34;
    v45 = v34(v66, v65);
    if ((v64 & (v45 < v19)) == 1)
    {
      v46 = v61;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a3 = v56;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v46 = sub_22F2F2C94(v46);
      }

      if (v62 >= v46[2])
      {
        goto LABEL_46;
      }

      v48 = &v46[v62];
      sub_22F215F34(v38);
      v49 = v62;

      *a3 = v46;
      if (v49 >= v46[2])
      {
        goto LABEL_47;
      }

      if (*(v48[4] + 16))
      {

        sub_22F107E14(a4, v44);
      }

      else
      {
        sub_22F215FC0(v49);
        sub_22F107E14(a4, v44);
      }

      v21 = v55;
      v22 = v63;
      if (!*(*a3 + 16))
      {
        return;
      }
    }

    else
    {
      v20 = v45;

      sub_22F107E14(v34, v44);
      v19 = v20;
      v60 = v43;
      v54 = v42;
      v21 = v55;
      a3 = v56;
      v22 = v63;
    }

    v16 = v22 + 1;
    v15 = 1;
    if (v16 == v21)
    {
      return;
    }
  }

  v24 = v52;
  sub_22F2165F0(v23, v52);
  swift_beginAccess();
  v25 = vcvts_n_f32_u32(sub_22F20F3F4(0x1000001uLL), 0x18uLL) + 0.0;
  swift_endAccess();
  sub_22F20F4CC(v25);
  v27 = v26;
  (*v51)(v24, v53);
  if ((v27 & 0x8000000000000000) == 0)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t TimeIndex.CreationOptions.init(subdomains:wedgeOfYearSize:positivesOversamplingFactor:negativesOversamplingFactor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

PhotosGraph::TimeIndex::Subdomain_optional __swiftcall TimeIndex.Subdomain.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F741E30();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TimeIndex.Subdomain.rawValue.getter()
{
  v1 = *v0;
  v2 = 1918985593;
  v3 = 0x6557664F74726170;
  v4 = 0x616559664F796164;
  if (v1 != 4)
  {
    v4 = 0x6144664F74726170;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F73616573;
  if (v1 != 1)
  {
    v5 = 0x59664F6567646577;
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

double sub_22F2171DC(uint64_t a1)
{
  sub_22F740D60();

  return result;
}

void sub_22F2172E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1918985593;
  v5 = 0xEA00000000006B65;
  v6 = 0x6557664F74726170;
  v7 = 0x616559664F796164;
  v8 = 0xE900000000000072;
  if (v2 != 4)
  {
    v7 = 0x6144664F74726170;
    v8 = 0xE900000000000079;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6E6F73616573;
  if (v2 != 1)
  {
    v10 = 0x59664F6567646577;
    v9 = 0xEB00000000726165;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_22F2173B8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22F217408()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F7727B0;
  *(v0 + 32) = sub_22F740E20();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_22F740E20();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_22F740E20();
  *(v0 + 72) = v3;
  result = sub_22F740E20();
  *(v0 + 80) = result;
  *(v0 + 88) = v5;
  off_27DAB26F8 = v0;
  return result;
}

uint64_t sub_22F2174AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F770DE0;
  *(v0 + 32) = sub_22F740E20();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_22F740E20();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_22F740E20();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_22F740E20();
  *(v0 + 88) = v4;
  result = sub_22F740E20();
  *(v0 + 96) = result;
  *(v0 + 104) = v6;
  off_27DAB2700 = v0;
  return result;
}

uint64_t sub_22F217564()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F770DF0;
  *(v0 + 32) = sub_22F740E20();
  *(v0 + 40) = v1;
  result = sub_22F740E20();
  *(v0 + 48) = result;
  *(v0 + 56) = v3;
  off_27DAB2708 = v0;
  return result;
}

void *static TimeIndex.create(using:with:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *a2;
  v82 = a2[1];
  v5 = a2[2];
  v87 = a2[3];
  if (qword_27DAAFDA8 != -1)
  {
    swift_once();
  }

  v6 = qword_27DAD0E90;
  *&v7 = CACurrentMediaTime();
  sub_22F1B560C("CreateTimeIndex", 15, 2u, v7, 0, v6, v105);
  v8 = *(v4 + 16);
  v86 = v4;
  if (v8)
  {
    v9 = sub_22F10B4C8(v8, 0);
    v10 = sub_22F11B9DC(&aBlock, v9 + 32, v8, v4);
    v11 = aBlock;

    sub_22F0FF590(v11);
    if (v10 == v8)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v9 = MEMORY[0x277D84F90];
LABEL_7:
  aBlock = v9;
  sub_22F21DF28(&aBlock, &unk_2843DAF18);
  if (!v3)
  {
    v12 = aBlock;
    v13 = *(aBlock + 2);
    if (!v13)
    {

      sub_22F21DFCC();
      swift_allocError();
      *(v20 + 8) = 0;
      *(v20 + 16) = 0;
      *v20 = 0;
      *(v20 + 24) = 3;
      swift_willThrow();
      sub_22F1B2BBC(1);

      return v5;
    }

    v81 = v5;
    v106 = MEMORY[0x277D84F98];
    v14 = aBlock + 32;
    v15 = aBlock + 32;
    do
    {
      v17 = v13;
      v18 = v13-- != 0;
      if (!v18)
      {
        break;
      }

      v19 = *v15;
      if (v19 <= 2 && v19 != 1 && v19 != 2)
      {

        break;
      }

      v16 = sub_22F742040();

      ++v15;
    }

    while ((v16 & 1) == 0);
    v91 = v12;
    v21 = *(v12 + 2);
    v22 = v14;
    do
    {
      v24 = v21;
      v18 = v21-- != 0;
      if (!v18)
      {
        break;
      }

      v25 = *v22;
      if (v25 >= 4 && v25 != 5)
      {

        break;
      }

      v23 = sub_22F742040();

      ++v22;
    }

    while ((v23 & 1) == 0);
    v26 = *(v91 + 16);
    v27 = v14;
    do
    {
      v29 = v26;
      v18 = v26-- != 0;
      if (!v18)
      {
        break;
      }

      v30 = *v27;
      if (v30 == 2)
      {

        break;
      }

      v28 = sub_22F742040();

      ++v27;
    }

    while ((v28 & 1) == 0);
    sub_22F120634(0, &qword_2810A8FC8, off_27887B108);
    v90 = [swift_getObjCClassFromMetadata(v31) nodesInGraph_];
    if (v17 || v24 || v29)
    {
      v35 = swift_allocObject();
      *(v35 + 16) = v24 != 0;
      *(v35 + 17) = v29 != 0;
      *(v35 + 18) = v17 != 0;
      *(v35 + 24) = v86;
      *(v35 + 32) = v82;
      *(v35 + 40) = v81;
      *(v35 + 48) = v87;
      *(v35 + 56) = &v106;
      *(v35 + 64) = v83;
      v36 = swift_allocObject();
      v34 = sub_22F21EC18;
      *(v36 + 16) = sub_22F21EC18;
      *(v36 + 24) = v35;
      v103 = sub_22F1F68E8;
      v104 = v36;
      aBlock = MEMORY[0x277D85DD0];
      v100 = 1107296256;
      v101 = sub_22F107E24;
      v102 = &block_descriptor_14_0;
      v37 = _Block_copy(&aBlock);

      [v90 enumerateUsingBlock_];
      _Block_release(v37);
      LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

      if ((v37 & 1) == 0)
      {
        v86 = 0;
        v29 = 0;
        goto LABEL_40;
      }

      __break(1u);
    }

    else
    {
      v29 = swift_allocObject();
      *(v29 + 16) = &v106;
      v32 = swift_allocObject();
      *(v32 + 16) = sub_22F21E020;
      *(v32 + 24) = v29;
      v103 = sub_22F21E028;
      v104 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v100 = 1107296256;
      v101 = sub_22F2136B4;
      v102 = &block_descriptor_9;
      v33 = _Block_copy(&aBlock);

      [v90 enumerateUUIDsUsingBlock_];
      _Block_release(v33);
      LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

      if ((v33 & 1) == 0)
      {
        v86 = sub_22F21E020;
        v34 = 0;
        v35 = 0;
LABEL_40:
        v38 = *(v91 + 16);
        v39 = v14;
        while (v38)
        {
          v41 = *v39;
          if (v41 <= 2 && *v39 && v41 != 2)
          {

LABEL_49:
            sub_22F21E068(v90, &v106);
            break;
          }

          v40 = sub_22F742040();

          ++v39;
          --v38;
          if (v40)
          {
            goto LABEL_49;
          }
        }

        v82 = v29;
        v84 = v34;
        v42 = *(v91 + 16);
        v43 = v14;
        while (v42)
        {
          v45 = *v43;
          if (v45 > 2 && v45 != 4 && v45 != 5)
          {

LABEL_59:
            sub_22F21E448(a1, &v106);
            break;
          }

          v44 = sub_22F742040();

          ++v43;
          --v42;
          if (v44)
          {
            goto LABEL_59;
          }
        }

        v46 = *(v91 + 16);
        while (v46)
        {
          v48 = *v14;
          if (v48 > 4)
          {

LABEL_65:
            sub_22F21E7A4(v90, &v106);
            break;
          }

          v47 = sub_22F742040();

          ++v14;
          --v46;
          if (v47)
          {
            goto LABEL_65;
          }
        }

        v29 = v84;
        a1 = v35;
        v98 = MEMORY[0x277D84F98];
        aBlock = MEMORY[0x277D84F98];
        v96 = MEMORY[0x277D84F98];
        v97 = MEMORY[0x277D84F98];
        v94 = MEMORY[0x277D84F98];
        v95 = MEMORY[0x277D84F98];
        if (qword_27DAAFDC8 == -1)
        {
LABEL_67:
          v49 = off_27DAB26F8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2718, &unk_22F7889A0);
          v50 = swift_allocObject();
          v51 = v49[2];
          swift_bridgeObjectRetain_n();
          v52 = sub_22F1515F8(v49);

          v53 = *(v52 + 16);

          if (v51 == v53)
          {
            *(v50 + 16) = v49;
            if (qword_27DAAFDD0 != -1)
            {
              swift_once();
            }

            v54 = off_27DAB2700;
            v55 = swift_allocObject();
            v56 = v54[2];
            swift_bridgeObjectRetain_n();
            v57 = sub_22F1515F8(v54);

            v58 = *(v57 + 16);

            if (v56 == v58)
            {
              v85 = v29;
              v80 = v55;
              *(v55 + 16) = v54;
              if (qword_27DAAFDD8 != -1)
              {
                swift_once();
              }

              v59 = off_27DAB2708;
              v60 = swift_allocObject();
              v61 = v59[2];
              swift_bridgeObjectRetain_n();
              v62 = sub_22F1515F8(v59);

              v5 = *(v62 + 16);

              if (v61 == v5)
              {
                *(v60 + 16) = v59;
                v92 = MEMORY[0x277D84F98];
                v93 = MEMORY[0x277D84F98];
                v63 = v49[2];
                v64 = v54[2];

                sub_22F21B13C(v65, v91, &aBlock, &v95, &v97, v50, &v98, v63, v80, &v96, v64, v60, &v94, &v92, &v93);

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2730, &qword_22F77AA28);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_22F777170;
                *(inited + 32) = 0;
                sub_22F213F3C(aBlock);
                *(inited + 40) = sub_22F215680(v69, 1, v81, v87);
                *(inited + 48) = 1;
                sub_22F214198(v98);
                *(inited + 56) = sub_22F215680(v70, 1, v81, v87);
                *(inited + 64) = 2;
                sub_22F213F3C(v97);
                *(inited + 72) = sub_22F215680(v71, 1, v81, v87);
                *(inited + 80) = 3;
                sub_22F214198(v94);
                *(inited + 88) = sub_22F215680(v72, 1, v81, v87);
                *(inited + 96) = 4;
                sub_22F213F3C(v95);
                *(inited + 104) = sub_22F215680(v73, 1, v81, v87);
                *(inited + 112) = 5;
                sub_22F214198(v96);
                *(inited + 120) = sub_22F215680(v74, 1, v81, v87);
                v88 = sub_22F14F5D0(inited);
                swift_setDeallocating();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2738, &qword_22F77AA30);
                swift_arrayDestroy();

                v76 = sub_22F151AB8(v75);

                v77 = v93;

                v78 = sub_22F21E940(v91);

                v79 = v92;
                type metadata accessor for TimeIndex();
                v5 = swift_allocObject();
                v5[2] = v76;
                v5[3] = v77;
                v5[4] = v78;
                v5[5] = v79;
                v5[6] = v88;

                sub_22F1B2BBC(0);

                sub_22F107E14(v86, v82);
                sub_22F107E14(v85, a1);
                return v5;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2720, &qword_22F77AA20);
              sub_22F16BC6C(&qword_27DAB2728, &qword_27DAB2720, &qword_22F77AA20, &unk_22F78B258);
              swift_allocError();
              swift_willThrow();

              swift_deallocPartialClassInstance();

              sub_22F1B2BBC(1);

              sub_22F107E14(v86, v82);
              v66 = v85;
LABEL_78:
              sub_22F107E14(v66, a1);
              return v5;
            }

            v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2720, &qword_22F77AA20);
            sub_22F16BC6C(&qword_27DAB2728, &qword_27DAB2720, &qword_22F77AA20, &unk_22F78B258);
            swift_allocError();
            swift_willThrow();
          }

          else
          {

            v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2720, &qword_22F77AA20);
            sub_22F16BC6C(&qword_27DAB2728, &qword_27DAB2720, &qword_22F77AA20, &unk_22F78B258);
            swift_allocError();
            swift_willThrow();
          }

          swift_deallocPartialClassInstance();

          sub_22F1B2BBC(1);

          sub_22F107E14(v86, v82);
          v66 = v29;
          goto LABEL_78;
        }

LABEL_83:
        swift_once();
        goto LABEL_67;
      }
    }

    __break(1u);
    goto LABEL_83;
  }

  __break(1u);
  return result;
}

unint64_t sub_22F218970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  type metadata accessor for TimeIndex.MomentData();
  v9 = swift_allocObject();
  *(v9 + 32) = 0;
  v10 = MEMORY[0x277D84F90];
  *(v9 + 40) = 1;
  *(v9 + 48) = v10;
  *(v9 + 56) = 0;
  *(v9 + 64) = 1;
  *(v9 + 72) = v10;
  *(v9 + 80) = 0;
  *(v9 + 88) = 1;
  *(v9 + 96) = v10;
  *(v9 + 104) = 0;
  *(v9 + 112) = 1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *a5;
  *a5 = 0x8000000000000000;
  result = sub_22F13142C(v9, a1, isUniquelyReferenced_nonNull_native);
  *a5 = v13;
  return result;
}

void sub_22F218A38(void *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v115 = a7;
  v119 = a5;
  v129 = a3;
  LODWORD(v130) = a4;
  v141[1] = *MEMORY[0x277D85DE8];
  v11 = sub_22F73F270();
  v127 = *(v11 - 8);
  v128 = v11;
  MEMORY[0x28223BE20](v11);
  v133 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22F73F990();
  v131 = *(v13 - 8);
  v132 = v13;
  MEMORY[0x28223BE20](v13);
  v116 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v121 = &v114 - v16;
  v17 = sub_22F73F7D0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22F73F9B0();
  v125 = *(v21 - 8);
  v126 = v21;
  MEMORY[0x28223BE20](v21);
  v138 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E0, &unk_22F77C6B0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v114 - v24;
  v137 = sub_22F73FA10();
  v139 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v27 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v134 = &v114 - v29;
  v140 = sub_22F73F690();
  v136 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v118 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v117 = &v114 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v114 - v34;
  *&v37 = MEMORY[0x28223BE20](v36).n128_u64[0];
  v39 = &v114 - v38;
  v135 = a1;
  v40 = [a1 localIdentifier];
  if (!v40)
  {
    sub_22F740E20();
    v40 = sub_22F740DF0();
  }

  sub_22F120634(0, &qword_2810A8EA8, 0x277CD98F8);
  v42 = [swift_getObjCClassFromMetadata(v41) uuidFromLocalIdentifier_];

  if (v42)
  {
    v43 = sub_22F740E20();
    v45 = v44;

    type metadata accessor for TimeIndex.MomentData();
    v46 = swift_allocObject();
    *(v46 + 32) = 0;
    v47 = MEMORY[0x277D84F90];
    *(v46 + 40) = 1;
    *(v46 + 48) = v47;
    *(v46 + 56) = 0;
    *(v46 + 64) = 1;
    *(v46 + 72) = v47;
    *(v46 + 80) = 0;
    *(v46 + 88) = 1;
    *(v46 + 96) = v47;
    *(v46 + 104) = 0;
    *(v46 + 112) = 1;
    v114 = v43;
    *(v46 + 16) = v43;
    *(v46 + 24) = v45;
    v124 = v45;

    v48 = v135;
    v49 = [v135 universalStartDate];
    sub_22F73F640();

    sub_22F73F620();
    *(v46 + 104) = v50;
    *(v46 + 112) = 0;
    v51 = [v48 localStartDate];
    sub_22F73F640();

    sub_22F73F590();
    v53 = v52;
    v54 = v52;
    v55 = *(v136 + 8);
    v123 = v136 + 8;
    v122 = v55;
    v55(v35, v140);
    if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v53 > -9.22337204e18)
    {
      if (v53 < 9.22337204e18)
      {
        sub_22F73F9F0();
        v56 = v139;
        v57 = v137;
        if ((*(v139 + 48))(v25, 1, v137) == 1)
        {
          v122(v39, v140);

          sub_22F120ADC(v25, &qword_27DAB24E0, &unk_22F77C6B0);
          return;
        }

        v120 = v39;
        v58 = v134;
        (*(v56 + 32))(v134, v25, v57);
        (*(v18 + 104))(v20, *MEMORY[0x277CC9830], v17);
        sub_22F73F7E0();
        (*(v18 + 8))(v20, v17);
        (*(v56 + 16))(v27, v58, v57);
        sub_22F73F980();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
        v59 = v131;
        v60 = (*(v131 + 80) + 32) & ~*(v131 + 80);
        v61 = v60 + *(v131 + 72);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_22F771340;
        v63 = *MEMORY[0x277CC9988];
        v64 = *(v59 + 104);
        v65 = v132;
        v64(v62 + v60, v63, v132);
        v66 = v129 | v130;
        if ((v129 | v130))
        {
          v67 = v121;
          v64(v121, *MEMORY[0x277CC9998], v65);
          v62 = sub_22F13F014(1, 2, 1, v62);
          *(v62 + 16) = 2;
          (*(v59 + 32))(v62 + v61, v67, v65);
        }

        v39 = v133;
        sub_22F151AEC(v62);

        sub_22F73F860();

        v68 = sub_22F73F1F0();
        v48 = v124;
        if (v69)
        {
          if (qword_27DAAFD58 == -1)
          {
LABEL_13:
            v70 = sub_22F740B90();
            __swift_project_value_buffer(v70, qword_27DAD0E40);
            v71 = v118;
            v72 = v140;
            (*(v136 + 16))(v118, v120, v140);

            v73 = sub_22F740B70();
            v74 = sub_22F7415E0();

            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              v141[0] = v76;
              *v75 = 136315394;
              v77 = sub_22F145F20(v114, v48, v141);

              *(v75 + 4) = v77;
              *(v75 + 12) = 2080;
              sub_22F21F158(&qword_2810AC6F8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
              v78 = sub_22F742010();
              v80 = v79;
              v81 = v71;
              v82 = v122;
              v122(v81, v72);
              v83 = sub_22F145F20(v78, v80, v141);

              *(v75 + 14) = v83;
              _os_log_impl(&dword_22F0FC000, v73, v74, "Failed to extract year date component for moment (%s) with universalDate: %s", v75, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x2319033A0](v76, -1, -1);
              MEMORY[0x2319033A0](v75, -1, -1);

              (*(v127 + 8))(v133, v128);
              (*(v125 + 8))(v138, v126);
              (*(v139 + 8))(v134, v137);
              v82(v120, v72);
              return;
            }

            v108 = v71;
LABEL_28:
            v112 = v122;
            v122(v108, v72);
            (*(v127 + 8))(v39, v128);
            (*(v125 + 8))(v138, v126);
            (*(v139 + 8))(v134, v137);
            v112(v120, v72);
            return;
          }

LABEL_46:
          swift_once();
          goto LABEL_13;
        }

        v84 = v139;
        if (v119)
        {
          *(v46 + 32) = v68;
          *(v46 + 40) = 0;
        }

        if ((v66 & 1) == 0)
        {

          v109 = v140;
LABEL_26:
          v110 = [v135 identifier];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v141[0] = *a10;
          *a10 = 0x8000000000000000;
          sub_22F13142C(v46, v110, isUniquelyReferenced_nonNull_native);
          *a10 = v141[0];
          (*(v127 + 8))(v39, v128);
          (*(v125 + 8))(v138, v126);
          (*(v84 + 8))(v134, v137);
          v122(v120, v109);
          return;
        }

        v130 = v68;
        v85 = sub_22F73F210();
        if (v86 & 1) != 0 || (v87 = v85, v88 = v121, v89 = v132, v64(v121, *MEMORY[0x277CC9968], v132), v90 = v116, v64(v116, v63, v89), v91 = sub_22F73F7F0(), v93 = v92, v94 = *(v131 + 8), v94(v90, v89), v95 = v89, v48 = v124, v94(v88, v95), (v93))
        {
          if (qword_27DAAFD58 != -1)
          {
            swift_once();
          }

          v96 = sub_22F740B90();
          __swift_project_value_buffer(v96, qword_27DAD0E40);
          v97 = v117;
          v72 = v140;
          (*(v136 + 16))(v117, v120, v140);

          v98 = sub_22F740B70();
          v99 = sub_22F7415E0();

          if (os_log_type_enabled(v98, v99))
          {
            v100 = swift_slowAlloc();
            v101 = swift_slowAlloc();
            v141[0] = v101;
            *v100 = 136315394;
            v102 = sub_22F145F20(v114, v48, v141);

            *(v100 + 4) = v102;
            *(v100 + 12) = 2080;
            sub_22F21F158(&qword_2810AC6F8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            v103 = sub_22F742010();
            v105 = v104;
            v106 = v122;
            v122(v97, v72);
            v107 = sub_22F145F20(v103, v105, v141);

            *(v100 + 14) = v107;
            _os_log_impl(&dword_22F0FC000, v98, v99, "Failed to extract month and day of year components for moment (%s) with universalDate: %s", v100, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x2319033A0](v101, -1, -1);
            MEMORY[0x2319033A0](v100, -1, -1);

            (*(v127 + 8))(v133, v128);
            (*(v125 + 8))(v138, v126);
            (*(v139 + 8))(v134, v137);
            v106(v120, v72);
            return;
          }

          v108 = v97;
          goto LABEL_28;
        }

        if (v87 >= 3)
        {
          v84 = v139;
          if (!(v130 % 400) || (v130 & 3) == 0 && v130 % 100 || (v113 = __OFADD__(v91, 1), ++v91, !v113))
          {
LABEL_38:
            *(v46 + 80) = v91;
            *(v46 + 88) = 0;
            if (__OFSUB__(v91, 1))
            {
              __break(1u);
            }

            else
            {
              v109 = v140;
              if (v115)
              {
                if (v91 != 0x8000000000000001 || v115 != -1)
                {
                  *(v46 + 56) = (v91 - 1) / v115;
                  *(v46 + 64) = 0;
                  goto LABEL_26;
                }

LABEL_49:
                __break(1u);
              }
            }

            __break(1u);
            goto LABEL_49;
          }

          __break(1u);
        }

        v84 = v139;
        goto LABEL_38;
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_45;
  }
}

void sub_22F219AC0(uint64_t *a1, char **a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v7 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a2;
  v24 = *a2;
  *a2 = 0x8000000000000000;
  v12 = sub_22F1229E8(v8, v7);
  v13 = *(v10 + 2);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
LABEL_15:
    v10 = sub_22F13E1A8(0, *(v10 + 2) + 1, 1, v10);
    *(v7 + 8 * v12) = v10;
    goto LABEL_11;
  }

  v16 = v11;
  if (*(v10 + 3) >= v15)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22F135844();
      v10 = v24;
    }
  }

  else
  {
    sub_22F127C90(v15, isUniquelyReferenced_nonNull_native);
    v10 = v24;
    v17 = sub_22F1229E8(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
      sub_22F7420C0();
      __break(1u);
      return;
    }

    v12 = v17;
  }

  *a2 = v10;

  v19 = *a2;
  if (v16)
  {
  }

  else
  {
    sub_22F1534CC();
  }

  v7 = *(v19 + 7);
  v10 = *(v7 + 8 * v12);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 8 * v12) = v10;
  if ((v20 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v22 = *(v10 + 2);
  v21 = *(v10 + 3);
  if (v22 >= v21 >> 1)
  {
    v10 = sub_22F13E1A8((v21 > 1), v22 + 1, 1, v10);
    *(v7 + 8 * v12) = v10;
  }

  *(v10 + 2) = v22 + 1;
  v23 = &v10[16 * v22];
  *(v23 + 4) = a3;
  *(v23 + 5) = a4;
}

uint64_t sub_22F219D7C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void, uint64_t, uint64_t))
{
  v11 = *a2;
  if (sub_22F15EAD4(*a2, *(v6 + 16)) & 1) != 0 && *(*(v6 + 48) + 16) && (sub_22F122EF8(v11), (v12))
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a4;
    *(v13 + 24) = v6;

    swift_retain_n();
    v14 = a6(a1, 0, a5, v13);

    return v14;
  }

  else
  {
    sub_22F21DFCC();
    swift_allocError();
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *v16 = v11;
    *(v16 + 24) = 2;
    return swift_willThrow();
  }
}

uint64_t sub_22F219EAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 40);
  if (*(v5 + 16))
  {
    result = sub_22F1229E8(result, a2);
    if (v8)
    {
      if (*(v5 + 16))
      {
        return sub_22F1229E8(a3, a4);
      }
    }
  }

  return result;
}

uint64_t sub_22F219F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B20, &unk_22F788B60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = *(v3 + 24);
  if (*(v10 + 16) && (v11 = sub_22F1229E8(a1, a2), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = sub_22F73FE50();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v9, v14 + *(v16 + 72) * v13, v15);
    (*(v16 + 56))(v9, 0, 1, v15);
    return (*(v16 + 32))(a3, v9, v15);
  }

  else
  {
    v18 = sub_22F73FE50();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v9, 1, 1, v18);
    sub_22F73FE00();
    result = (*(v19 + 48))(v9, 1, v18);
    if (result != 1)
    {
      return sub_22F120ADC(v9, &qword_27DAB0B20, &unk_22F788B60);
    }
  }

  return result;
}

uint64_t sub_22F21A174(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 40);
  if (*(v5 + 16))
  {
    result = sub_22F1229E8(result, a2);
    if (v8)
    {
      if (*(v5 + 16))
      {
        return sub_22F1229E8(a3, a4);
      }
    }
  }

  return result;
}

void sub_22F21A20C()
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490);
  MEMORY[0x28223BE20](v20);
  v2 = &v19 - v1;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_22F741B00();

  v23 = 0xD000000000000014;
  v24 = 0x800000022F792360;
  v3 = MEMORY[0x231900D40](*(v0 + 32), MEMORY[0x277D837D0]);
  MEMORY[0x231900B10](v3);

  MEMORY[0x231900B10](2570, 0xE200000000000000);
  v4 = *(v0 + 24);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v10 << 6);
    v13 = *(v4 + 56);
    v14 = (*(v4 + 48) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    v17 = sub_22F73FE50();
    (*(*(v17 - 8) + 16))(&v2[*(v20 + 48)], v13 + *(*(v17 - 8) + 72) * v12, v17);
    *v2 = v16;
    *(v2 + 1) = v15;
    v21 = v16;
    v22 = v15;
    swift_bridgeObjectRetain_n();
    MEMORY[0x231900B10](8250, 0xE200000000000000);
    v18 = sub_22F73FDB0();
    MEMORY[0x231900B10](v18);

    MEMORY[0x231900B10](10, 0xE100000000000000);
    MEMORY[0x231900B10](v21, v22);

    sub_22F120ADC(v2, &qword_27DAB1060, &unk_22F771490);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_22F21A47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = objc_allocWithZone(PGGraphSeasonNodeCollection);
  v14 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
  v15 = [v13 initWithGraph:a6 elementIdentifiers:v14];

  v16 = [v15 elementIdentifiers];
  v17 = [a5 targetsForSources_];

  v18 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph:a6 elementIdentifiers:v17];
  v19 = swift_allocObject();
  v19[2] = a7;
  v19[3] = a2;
  v19[4] = a3;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22F21F14C;
  *(v20 + 24) = v19;
  v23[4] = sub_22F15A9A4;
  v23[5] = v20;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_22F107F34;
  v23[3] = &block_descriptor_121;
  v21 = _Block_copy(v23);

  [v18 enumerateIdentifiersAsCollectionsWithBlock_];

  _Block_release(v21);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22F21A6B8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = *a4;
  if (*(*a4 + 16))
  {
    result = sub_22F122B68(result);
    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * result);
      swift_beginAccess();
      v11 = *(v10 + 48);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v10 + 48) = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_22F13E1A8(0, *(v11 + 2) + 1, 1, v11);
        *(v10 + 48) = v11;
      }

      v14 = *(v11 + 2);
      v13 = *(v11 + 3);
      if (v14 >= v13 >> 1)
      {
        v11 = sub_22F13E1A8((v13 > 1), v14 + 1, 1, v11);
      }

      *(v11 + 2) = v14 + 1;
      v15 = &v11[16 * v14];
      *(v15 + 4) = a5;
      *(v15 + 5) = a6;
      *(v10 + 48) = v11;
      swift_endAccess();
    }
  }

  return result;
}

unint64_t sub_22F21A7BC(unint64_t result, uint64_t a2, uint64_t *a3, void *a4)
{
  v4 = *a3;
  if (*(*a3 + 16))
  {
    result = sub_22F122B68(result);
    if (v5)
    {
      v6 = *(*(v4 + 56) + 8 * result);
      v7 = sub_22F740E20();
      v9 = v8;
      swift_beginAccess();
      v10 = *(v6 + 72);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 72) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_22F13E1A8(0, *(v10 + 2) + 1, 1, v10);
        *(v6 + 72) = v10;
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        v10 = sub_22F13E1A8((v12 > 1), v13 + 1, 1, v10);
      }

      *(v10 + 2) = v13 + 1;
      v14 = &v10[16 * v13];
      *(v14 + 4) = v7;
      *(v14 + 5) = v9;
      *(v6 + 72) = v10;
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_22F21A8C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [objc_msgSend(a1 graph)];
  swift_unknownObjectRelease();
  v9 = [v8 concreteGraph];

  if (v9)
  {
    v10 = [a1 elementIdentifiers];
    v11 = [v9 adjacencyWithSources:v10 relation:a2];

    swift_unknownObjectRetain();
    v12 = [v11 transposed];
    swift_unknownObjectRelease();

    v13 = objc_allocWithZone(PGGraphPartOfDayNodeCollection);
    v14 = [v12 sources];
    v15 = [v13 initWithGraph:v9 elementIdentifiers:v14];

    v16 = swift_allocObject();
    v16[2] = v12;
    v16[3] = v9;
    v16[4] = a3;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_22F21F098;
    *(v17 + 24) = v16;
    aBlock[4] = sub_22F21F1C0;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F2136B4;
    aBlock[3] = &block_descriptor_73;
    v18 = _Block_copy(aBlock);
    v19 = v12;
    swift_unknownObjectRetain();

    [v15 enumerateNamesUsingBlock_];

    _Block_release(v18);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if ((v15 & 1) == 0)
    {
      *a4 = v19;
      a4[1] = v9;
      return result;
    }

    __break(1u);
  }

  result = sub_22F741D40();
  __break(1u);
  return result;
}

uint64_t sub_22F21ABBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = objc_allocWithZone(PGGraphPartOfDayNodeCollection);
  v14 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
  v15 = [v13 initWithGraph:a6 elementIdentifiers:v14];

  v16 = [v15 elementIdentifiers];
  v17 = [a5 targetsForSources_];

  v18 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph:a6 elementIdentifiers:v17];
  v19 = swift_allocObject();
  v19[2] = a7;
  v19[3] = a2;
  v19[4] = a3;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22F21F0A4;
  *(v20 + 24) = v19;
  v23[4] = sub_22F15A3B8;
  v23[5] = v20;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_22F107F34;
  v23[3] = &block_descriptor_82;
  v21 = _Block_copy(v23);

  [v18 enumerateIdentifiersAsCollectionsWithBlock_];

  _Block_release(v21);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22F21ADF8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = *a4;
  if (*(*a4 + 16))
  {
    result = sub_22F122B68(result);
    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * result);
      swift_beginAccess();
      v11 = *(v10 + 96);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v10 + 96) = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_22F13E1A8(0, *(v11 + 2) + 1, 1, v11);
        *(v10 + 96) = v11;
      }

      v14 = *(v11 + 2);
      v13 = *(v11 + 3);
      if (v14 >= v13 >> 1)
      {
        v11 = sub_22F13E1A8((v13 > 1), v14 + 1, 1, v11);
      }

      *(v11 + 2) = v14 + 1;
      v15 = &v11[16 * v14];
      *(v15 + 4) = a5;
      *(v15 + 5) = a6;
      *(v10 + 96) = v11;
      swift_endAccess();
    }
  }

  return result;
}

uint64_t TimeIndex.deinit()
{

  return v0;
}

uint64_t TimeIndex.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_22F21AFB8(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void *, __n128)@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  v9[2] = v10;

  sub_22F3A06C8(a3, v9, v6);
  if (!*(v8 + 16))
  {

    v8 = 0;
  }

  *a4 = v8;
}

uint64_t sub_22F21B034(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return (sub_22F742040() ^ 1) & 1;
  }
}

void sub_22F21B094(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v10 = *i;
      v11[0] = *(i - 1);
      v11[1] = v10;

      sub_22F219AC0(v11, a2, a3, a4);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return;
      }
    }
  }
}

uint64_t sub_22F21B13C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  v159 = a7;
  v158 = a6;
  v166 = a5;
  v165 = a4;
  v164 = a3;
  v161 = a14;
  v163 = a13;
  v162 = a12;
  v157 = a10;
  v156 = a9;
  v18 = sub_22F73FE50();
  MEMORY[0x28223BE20](v18);
  v167 = v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v160 = v144 - v21;
  MEMORY[0x28223BE20](v22);
  v26 = v144 - v25;
  v27 = a1 + 64;
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a1 + 64);
  v31 = (v28 + 63) >> 6;
  v154 = a2;
  v32 = (a2 + 32);
  v33 = v23;
  v145 = v32;
  v168 = (v24 + 8);
  v151 = a11;
  v152 = a8;
  v149 = (v24 + 16);
  v144[2] = v24 + 32;
  v148 = v24;
  v144[1] = v24 + 40;

  v34 = 0;
  v172 = v33;
  v170 = v26;
  v147 = a1 + 64;
  v146 = v31;
  v153 = a1;
  v150 = a15;
  if (v30)
  {
LABEL_8:
    while (1)
    {
      v155 = v30;
      v36 = *(*(a1 + 56) + ((v34 << 9) | (8 * __clz(__rbit64(v30)))));

      sub_22F73FE40();
      v37 = *(v36 + 24);
      v174 = *(v36 + 16);
      v38 = *(v154 + 16);
      v169 = v36;
      if (v38)
      {
        break;
      }

LABEL_64:
      if (*(v36 + 112))
      {
        sub_22F21DFCC();
        swift_allocError();
        *v142 = v174;
        v143 = 1;
        v174 = v37;
        v37 = 0;
LABEL_93:
        *(v142 + 8) = v174;
        *(v142 + 16) = v37;
        *(v142 + 24) = v143;
        swift_willThrow();
        (*v168)(v26, v172);
      }

      v108 = *(v36 + 104);
      sub_22F73FE20();

      v109 = v161;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111 = *v109;
      v175 = v111;
      v112 = sub_22F1229E8(v174, v37);
      v114 = v111[2];
      v115 = (v113 & 1) == 0;
      v95 = __OFADD__(v114, v115);
      v116 = v114 + v115;
      a1 = v153;
      if (v95)
      {
        goto LABEL_101;
      }

      v117 = v113;
      if (v111[3] >= v116)
      {
        v119 = v150;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v139 = v112;
          sub_22F1341D8();
          v112 = v139;
        }
      }

      else
      {
        sub_22F12572C(v116, isUniquelyReferenced_nonNull_native);
        v112 = sub_22F1229E8(v174, v37);
        v119 = v150;
        if ((v117 & 1) != (v118 & 1))
        {
          goto LABEL_106;
        }
      }

      v120 = v170;
      v121 = v175;
      if (v117)
      {
        *(v175[7] + 8 * v112) = v108;
      }

      else
      {
        v175[(v112 >> 6) + 8] |= 1 << v112;
        v122 = (v121[6] + 16 * v112);
        *v122 = v174;
        v122[1] = v37;
        *(v121[7] + 8 * v112) = v108;
        v123 = v121[2];
        v95 = __OFADD__(v123, 1);
        v124 = v123 + 1;
        if (v95)
        {
          goto LABEL_103;
        }

        v121[2] = v124;
      }

      *v161 = v121;
      (*v149)(v160, v120, v172);
      v125 = swift_isUniquelyReferenced_nonNull_native();
      v175 = *v119;
      v126 = v175;
      v127 = sub_22F1229E8(v174, v37);
      v129 = v126[2];
      v130 = (v128 & 1) == 0;
      v95 = __OFADD__(v129, v130);
      v131 = v129 + v130;
      if (v95)
      {
        goto LABEL_102;
      }

      v132 = v128;
      if (v126[3] >= v131)
      {
        if ((v125 & 1) == 0)
        {
          v140 = v127;
          sub_22F135E28();
          v127 = v140;
        }
      }

      else
      {
        sub_22F128740(v131, v125);
        v127 = sub_22F1229E8(v174, v37);
        if ((v132 & 1) != (v133 & 1))
        {
          goto LABEL_106;
        }
      }

      v26 = v170;
      v134 = v175;
      if (v132)
      {
        v135 = v172;
        (*(v148 + 40))(v175[7] + *(v148 + 72) * v127, v160, v172);
      }

      else
      {
        v175[(v127 >> 6) + 8] |= 1 << v127;
        v136 = (v134[6] + 16 * v127);
        *v136 = v174;
        v136[1] = v37;
        (*(v148 + 32))(v134[7] + *(v148 + 72) * v127, v160, v172);
        v137 = v134[2];
        v95 = __OFADD__(v137, 1);
        v138 = v137 + 1;
        if (v95)
        {
          goto LABEL_104;
        }

        v134[2] = v138;
        v135 = v172;
      }

      v30 = (v155 - 1) & v155;
      *v119 = v134;
      (*v168)(v26, v135);

      v27 = v147;
      v31 = v146;
      v33 = v135;
      if (!v30)
      {
        goto LABEL_4;
      }
    }

    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v39 = v145;
    v173 = v37;
    while (1)
    {
      v49 = *v39++;
      v48 = v49;
      if (v49 > 2)
      {
        if (v48 == 3)
        {
          v84 = *(v36 + 72);
          if (!*(v84 + 16))
          {
            sub_22F21DFCC();
            swift_allocError();
            v143 = 0;
            *v142 = 3;
            goto LABEL_93;
          }

          v86 = v167;
          sub_22F26AF34(v85);
          sub_22F73FE10();
          v87 = v86;
          v33 = v172;
          v37 = v173;
          (*v168)(v87, v172);

          v45 = v84;
          v46 = &v178;
        }

        else
        {
          if (v48 == 4)
          {
            if (*(v36 + 88))
            {
              sub_22F21DFCC();
              swift_allocError();
              v143 = 0;
              *v142 = 4;
              goto LABEL_93;
            }

            v62 = *(v36 + 80);
            sub_22F73FE20();
            v63 = v165;
            v64 = swift_isUniquelyReferenced_nonNull_native();
            v175 = *v63;
            v65 = v175;
            *v63 = 0x8000000000000000;
            v55 = sub_22F13A8F4(v62);
            v67 = v65[2];
            v68 = (v66 & 1) == 0;
            v69 = v67 + v68;
            if (__OFADD__(v67, v68))
            {
              goto LABEL_97;
            }

            v70 = v66;
            if (v65[3] >= v69)
            {
              if ((v64 & 1) == 0)
              {
                sub_22F135E50();
                v65 = v175;
              }
            }

            else
            {
              sub_22F128768(v69, v64);
              v65 = v175;
              v71 = sub_22F13A8F4(v62);
              if ((v70 & 1) != (v72 & 1))
              {
                goto LABEL_105;
              }

              v55 = v71;
            }

            v99 = v165;
            *v165 = v65;

            v93 = *v99;
            if ((v70 & 1) == 0)
            {
              v93[(v55 >> 6) + 8] |= 1 << v55;
              *(v93[6] + 8 * v55) = v62;
              *(v93[7] + 8 * v55) = MEMORY[0x277D84F90];
              v100 = v93[2];
              v95 = __OFADD__(v100, 1);
              v96 = v100 + 1;
              if (v95)
              {
                goto LABEL_100;
              }

LABEL_54:
              v93[2] = v96;
            }

LABEL_55:
            v101 = v93[7];
            v102 = *(v101 + 8 * v55);
            v103 = swift_isUniquelyReferenced_nonNull_native();
            *(v101 + 8 * v55) = v102;
            if ((v103 & 1) == 0)
            {
              v102 = sub_22F13E1A8(0, *(v102 + 2) + 1, 1, v102);
              *(v101 + 8 * v55) = v102;
            }

            v105 = *(v102 + 2);
            v104 = *(v102 + 3);
            if (v105 >= v104 >> 1)
            {
              v102 = sub_22F13E1A8((v104 > 1), v105 + 1, 1, v102);
              *(v101 + 8 * v55) = v102;
            }

            v26 = v170;
            *(v102 + 2) = v105 + 1;
            v106 = &v102[16 * v105];
            v37 = v173;
            *(v106 + 4) = v174;
            *(v106 + 5) = v37;

            v33 = v172;
            v36 = v169;
            goto LABEL_13;
          }

          v40 = v33;
          v88 = *(v36 + 96);
          if (!*(v88 + 16))
          {
            v107 = v167;
            goto LABEL_62;
          }

          v90 = v167;
          sub_22F26AF34(v89);
          sub_22F73FE10();
          v91 = v90;
          v37 = v173;
          (*v168)(v91, v33);

          v45 = v88;
          v46 = &v176;
        }
      }

      else
      {
        if (!v48)
        {
          if (*(v36 + 40))
          {
            sub_22F21DFCC();
            swift_allocError();
            v143 = 0;
            *v142 = 0;
            goto LABEL_93;
          }

          v73 = *(v36 + 32);
          sub_22F73FE20();
          v74 = v164;
          v75 = swift_isUniquelyReferenced_nonNull_native();
          v175 = *v74;
          v76 = v175;
          *v74 = 0x8000000000000000;
          v55 = sub_22F13A8F4(v73);
          v78 = v76[2];
          v79 = (v77 & 1) == 0;
          v80 = v78 + v79;
          if (__OFADD__(v78, v79))
          {
            goto LABEL_95;
          }

          v81 = v77;
          if (v76[3] >= v80)
          {
            if ((v75 & 1) == 0)
            {
              sub_22F135E50();
              v76 = v175;
            }
          }

          else
          {
            sub_22F128768(v80, v75);
            v76 = v175;
            v82 = sub_22F13A8F4(v73);
            if ((v81 & 1) != (v83 & 1))
            {
              goto LABEL_105;
            }

            v55 = v82;
          }

          v92 = v164;
          *v164 = v76;

          v93 = *v92;
          if ((v81 & 1) == 0)
          {
            v93[(v55 >> 6) + 8] |= 1 << v55;
            *(v93[6] + 8 * v55) = v73;
            *(v93[7] + 8 * v55) = MEMORY[0x277D84F90];
            v94 = v93[2];
            v95 = __OFADD__(v94, 1);
            v96 = v94 + 1;
            if (v95)
            {
              goto LABEL_99;
            }

            goto LABEL_54;
          }

          goto LABEL_55;
        }

        if (v48 != 1)
        {
          if (*(v36 + 64))
          {
            sub_22F21DFCC();
            swift_allocError();
            v143 = 0;
            *v142 = 2;
            goto LABEL_93;
          }

          v50 = *(v36 + 56);
          sub_22F73FE20();
          v51 = v166;
          v52 = swift_isUniquelyReferenced_nonNull_native();
          v175 = *v51;
          v53 = v175;
          *v51 = 0x8000000000000000;
          v55 = sub_22F13A8F4(v50);
          v56 = v53[2];
          v57 = (v54 & 1) == 0;
          v58 = v56 + v57;
          if (__OFADD__(v56, v57))
          {
            goto LABEL_96;
          }

          v59 = v54;
          if (v53[3] >= v58)
          {
            if ((v52 & 1) == 0)
            {
              sub_22F135E50();
              v53 = v175;
            }
          }

          else
          {
            sub_22F128768(v58, v52);
            v53 = v175;
            v60 = sub_22F13A8F4(v50);
            if ((v59 & 1) != (v61 & 1))
            {
              goto LABEL_105;
            }

            v55 = v60;
          }

          v97 = v166;
          *v166 = v53;

          v93 = *v97;
          if ((v59 & 1) == 0)
          {
            v93[(v55 >> 6) + 8] |= 1 << v55;
            *(v93[6] + 8 * v55) = v50;
            *(v93[7] + 8 * v55) = MEMORY[0x277D84F90];
            v98 = v93[2];
            v95 = __OFADD__(v98, 1);
            v96 = v98 + 1;
            if (v95)
            {
              goto LABEL_98;
            }

            goto LABEL_54;
          }

          goto LABEL_55;
        }

        v40 = v33;
        v41 = *(v36 + 48);
        if (!*(v41 + 16))
        {
          v107 = v167;
LABEL_62:
          sub_22F73FE30();
          sub_22F73FE10();
          v33 = v40;
          (*v168)(v107, v40);
          goto LABEL_13;
        }

        v43 = v167;
        sub_22F26AF34(v42);
        sub_22F73FE10();
        v44 = v43;
        v37 = v173;
        (*v168)(v44, v33);

        v45 = v41;
        v46 = &v177;
      }

      v47 = v171;
      sub_22F21B094(v45, *(v46 - 32), v174, v37);
      v171 = v47;

LABEL_13:
      if (!--v38)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_4:
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v35 >= v31)
    {
    }

    v30 = *(v27 + 8 * v35);
    ++v34;
    if (v30)
    {
      v34 = v35;
      goto LABEL_8;
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
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  sub_22F7420C0();
  __break(1u);
LABEL_106:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

void sub_22F21BEBC(unsigned __int8 *__src, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *__dst, uint64_t a5)
{
  v5 = __dst;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a3 - a2;
  if (a2 - __src < a3 - a2)
  {
    if (__dst != __src || __dst >= a2)
    {
      memmove(__dst, __src, v9);
    }

    v11 = &v5[v9];
    if (v9 < 1)
    {
      v7 = v8;
      if (v8 != v5)
      {
        goto LABEL_234;
      }

      goto LABEL_233;
    }

    if (v7 < v6)
    {
      v85 = &v5[v9];
      v12 = a5 + 32;
      v79 = v6;
LABEL_8:
      v87 = v7;
      v13 = *(a5 + 16);
      if (!v13)
      {
        goto LABEL_244;
      }

      v81 = v8;
      v14 = 0;
      v15 = *v87;
      __srca = v5;
      v16 = *v5;
      while (1)
      {
        v17 = *(v12 + v14);
        if (v17 > 2)
        {
          if (v17 == 3)
          {
            v20 = 0x6557664F74726170;
            v21 = 0xEA00000000006B65;
            if (v15 > 2)
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (v17 == 4)
            {
              v20 = 0x616559664F796164;
            }

            else
            {
              v20 = 0x6144664F74726170;
            }

            if (v17 == 4)
            {
              v21 = 0xE900000000000072;
            }

            else
            {
              v21 = 0xE900000000000079;
            }

            if (v15 > 2)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          v18 = 0x59664F6567646577;
          if (v17 == 1)
          {
            v18 = 0x6E6F73616573;
          }

          v19 = 0xEB00000000726165;
          if (v17 == 1)
          {
            v19 = 0xE600000000000000;
          }

          if (*(v12 + v14))
          {
            v20 = v18;
          }

          else
          {
            v20 = 1918985593;
          }

          if (*(v12 + v14))
          {
            v21 = v19;
          }

          else
          {
            v21 = 0xE400000000000000;
          }

          if (v15 > 2)
          {
LABEL_35:
            v24 = 0xE900000000000079;
            v26 = 0x616559664F796164;
            if (v15 == 4)
            {
              v24 = 0xE900000000000072;
            }

            else
            {
              v26 = 0x6144664F74726170;
            }

            v22 = v15 == 3;
            if (v15 == 3)
            {
              v23 = 0x6557664F74726170;
            }

            else
            {
              v23 = v26;
            }

            v25 = 0xEA00000000006B65;
            goto LABEL_42;
          }
        }

        if (!v15)
        {
          v27 = 0xE400000000000000;
          if (v20 != 1918985593)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }

        v22 = v15 == 1;
        if (v15 == 1)
        {
          v23 = 0x6E6F73616573;
        }

        else
        {
          v23 = 0x59664F6567646577;
        }

        v24 = 0xEB00000000726165;
        v25 = 0xE600000000000000;
LABEL_42:
        if (v22)
        {
          v27 = v25;
        }

        else
        {
          v27 = v24;
        }

        if (v20 != v23)
        {
          goto LABEL_47;
        }

LABEL_46:
        if (v21 == v27)
        {

LABEL_55:
          v29 = 0;
          while (2)
          {
            if (v13 == v29)
            {
              goto LABEL_239;
            }

            v30 = *(v12 + v29);
            if (v30 > 2)
            {
              if (v30 == 3)
              {
                v33 = 0x6557664F74726170;
                v34 = 0xEA00000000006B65;
                if (v16 <= 2)
                {
                  goto LABEL_69;
                }
              }

              else
              {
                if (v30 == 4)
                {
                  v33 = 0x616559664F796164;
                }

                else
                {
                  v33 = 0x6144664F74726170;
                }

                if (v30 == 4)
                {
                  v34 = 0xE900000000000072;
                }

                else
                {
                  v34 = 0xE900000000000079;
                }

                if (v16 <= 2)
                {
                  goto LABEL_69;
                }
              }
            }

            else
            {
              v31 = 0x59664F6567646577;
              if (v30 == 1)
              {
                v31 = 0x6E6F73616573;
              }

              v32 = 0xEB00000000726165;
              if (v30 == 1)
              {
                v32 = 0xE600000000000000;
              }

              if (*(v12 + v29))
              {
                v33 = v31;
              }

              else
              {
                v33 = 1918985593;
              }

              if (*(v12 + v29))
              {
                v34 = v32;
              }

              else
              {
                v34 = 0xE400000000000000;
              }

              if (v16 <= 2)
              {
LABEL_69:
                if (v16)
                {
                  v35 = v16 == 1;
                  if (v16 == 1)
                  {
                    v36 = 0x6E6F73616573;
                  }

                  else
                  {
                    v36 = 0x59664F6567646577;
                  }

                  v37 = 0xEB00000000726165;
                  v38 = 0xE600000000000000;
                  goto LABEL_89;
                }

                v40 = 0xE400000000000000;
                if (v33 != 1918985593)
                {
LABEL_94:
                  v41 = sub_22F742040();

                  if (v41)
                  {
                    goto LABEL_102;
                  }

                  if (v13 == ++v29)
                  {
                    goto LABEL_243;
                  }

                  continue;
                }

LABEL_93:
                if (v34 == v40)
                {

LABEL_102:
                  if (v14 >= v29)
                  {
                    v42 = __srca;
                    v45 = v79;
                    v44 = v81;
                    v43 = v87;
                    if (v81 < __srca)
                    {
                      v5 = __srca + 1;
                      goto LABEL_110;
                    }

                    v5 = __srca + 1;
                    if (v81 >= (__srca + 1))
                    {
LABEL_110:
                      *v44 = *v42;
                    }
                  }

                  else
                  {
                    v42 = v87;
                    v43 = v87 + 1;
                    v45 = v79;
                    v44 = v81;
                    v5 = __srca;
                    if (v81 < v87 || v81 >= v43)
                    {
                      goto LABEL_110;
                    }
                  }

                  v8 = v44 + 1;
                  if (v5 < v85)
                  {
                    v7 = v43;
                    if (v43 < v45)
                    {
                      goto LABEL_8;
                    }
                  }

                  v7 = v8;
                  v11 = v85;
                  if (v8 == v5)
                  {
                    goto LABEL_233;
                  }

                  goto LABEL_234;
                }

                goto LABEL_94;
              }
            }

            break;
          }

          v37 = 0xE900000000000079;
          v39 = 0x616559664F796164;
          if (v16 == 4)
          {
            v37 = 0xE900000000000072;
          }

          else
          {
            v39 = 0x6144664F74726170;
          }

          v35 = v16 == 3;
          if (v16 == 3)
          {
            v36 = 0x6557664F74726170;
          }

          else
          {
            v36 = v39;
          }

          v38 = 0xEA00000000006B65;
LABEL_89:
          if (v35)
          {
            v40 = v38;
          }

          else
          {
            v40 = v37;
          }

          if (v33 != v36)
          {
            goto LABEL_94;
          }

          goto LABEL_93;
        }

LABEL_47:
        v28 = sub_22F742040();

        if (v28)
        {
          goto LABEL_55;
        }

        if (v13 == ++v14)
        {
          goto LABEL_240;
        }
      }
    }

    v7 = v8;
LABEL_232:
    if (v7 != v5)
    {
      goto LABEL_234;
    }

LABEL_233:
    if (v7 >= v11)
    {
      goto LABEL_234;
    }

    return;
  }

  if (__dst != a2 || __dst >= a3)
  {
    memmove(__dst, a2, a3 - a2);
  }

  v11 = &v5[v10];
  if (v10 < 1 || v7 <= v8)
  {
    goto LABEL_232;
  }

  v46 = a5 + 32;
  __srcb = v5;
  while (2)
  {
    v47 = v7 - 1;
    v88 = v7;
    v77 = v7 - 1;
LABEL_124:
    v48 = *(a5 + 16);
    if (!v48)
    {
      goto LABEL_245;
    }

    v49 = 0;
    v86 = v11;
    v50 = *(v11 - 1);
    v78 = v11 - 1;
    v80 = v6;
    v51 = *v47;
    while (1)
    {
      v52 = *(v46 + v49);
      if (v52 > 2)
      {
        if (v52 == 3)
        {
          v55 = 0x6557664F74726170;
          v56 = 0xEA00000000006B65;
          if (v50 > 2)
          {
            goto LABEL_151;
          }
        }

        else
        {
          if (v52 == 4)
          {
            v55 = 0x616559664F796164;
          }

          else
          {
            v55 = 0x6144664F74726170;
          }

          if (v52 == 4)
          {
            v56 = 0xE900000000000072;
          }

          else
          {
            v56 = 0xE900000000000079;
          }

          if (v50 > 2)
          {
            goto LABEL_151;
          }
        }
      }

      else
      {
        v53 = 0x59664F6567646577;
        if (v52 == 1)
        {
          v53 = 0x6E6F73616573;
        }

        v54 = 0xEB00000000726165;
        if (v52 == 1)
        {
          v54 = 0xE600000000000000;
        }

        if (*(v46 + v49))
        {
          v55 = v53;
        }

        else
        {
          v55 = 1918985593;
        }

        if (*(v46 + v49))
        {
          v56 = v54;
        }

        else
        {
          v56 = 0xE400000000000000;
        }

        if (v50 > 2)
        {
LABEL_151:
          v59 = 0xE900000000000079;
          v61 = 0x616559664F796164;
          if (v50 == 4)
          {
            v59 = 0xE900000000000072;
          }

          else
          {
            v61 = 0x6144664F74726170;
          }

          v57 = v50 == 3;
          if (v50 == 3)
          {
            v58 = 0x6557664F74726170;
          }

          else
          {
            v58 = v61;
          }

          v60 = 0xEA00000000006B65;
LABEL_158:
          if (v57)
          {
            v62 = v60;
          }

          else
          {
            v62 = v59;
          }

          if (v55 != v58)
          {
            goto LABEL_163;
          }

          goto LABEL_162;
        }
      }

      if (v50)
      {
        v57 = v50 == 1;
        if (v50 == 1)
        {
          v58 = 0x6E6F73616573;
        }

        else
        {
          v58 = 0x59664F6567646577;
        }

        v59 = 0xEB00000000726165;
        v60 = 0xE600000000000000;
        goto LABEL_158;
      }

      v62 = 0xE400000000000000;
      if (v55 != 1918985593)
      {
        goto LABEL_163;
      }

LABEL_162:
      if (v56 == v62)
      {
        break;
      }

LABEL_163:
      v63 = sub_22F742040();

      if (v63)
      {
        goto LABEL_171;
      }

      if (v48 == ++v49)
      {
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        __break(1u);
        return;
      }
    }

LABEL_171:
    v64 = 0;
    while (2)
    {
      if (v48 == v64)
      {
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
        goto LABEL_241;
      }

      v65 = *(v46 + v64);
      if (v65 > 2)
      {
        if (v65 == 3)
        {
          v68 = 0x6557664F74726170;
          v69 = 0xEA00000000006B65;
          if (v51 <= 2)
          {
            goto LABEL_185;
          }
        }

        else
        {
          if (v65 == 4)
          {
            v68 = 0x616559664F796164;
          }

          else
          {
            v68 = 0x6144664F74726170;
          }

          if (v65 == 4)
          {
            v69 = 0xE900000000000072;
          }

          else
          {
            v69 = 0xE900000000000079;
          }

          if (v51 <= 2)
          {
            goto LABEL_185;
          }
        }

        goto LABEL_198;
      }

      v66 = 0x59664F6567646577;
      if (v65 == 1)
      {
        v66 = 0x6E6F73616573;
      }

      v67 = 0xEB00000000726165;
      if (v65 == 1)
      {
        v67 = 0xE600000000000000;
      }

      if (*(v46 + v64))
      {
        v68 = v66;
      }

      else
      {
        v68 = 1918985593;
      }

      if (*(v46 + v64))
      {
        v69 = v67;
      }

      else
      {
        v69 = 0xE400000000000000;
      }

      if (v51 > 2)
      {
LABEL_198:
        v72 = 0xE900000000000079;
        v74 = 0x616559664F796164;
        if (v51 == 4)
        {
          v72 = 0xE900000000000072;
        }

        else
        {
          v74 = 0x6144664F74726170;
        }

        v70 = v51 == 3;
        if (v51 == 3)
        {
          v71 = 0x6557664F74726170;
        }

        else
        {
          v71 = v74;
        }

        v73 = 0xEA00000000006B65;
LABEL_205:
        if (v70)
        {
          v75 = v73;
        }

        else
        {
          v75 = v72;
        }

        if (v68 != v71)
        {
          goto LABEL_210;
        }

        break;
      }

LABEL_185:
      if (v51)
      {
        v70 = v51 == 1;
        if (v51 == 1)
        {
          v71 = 0x6E6F73616573;
        }

        else
        {
          v71 = 0x59664F6567646577;
        }

        v72 = 0xEB00000000726165;
        v73 = 0xE600000000000000;
        goto LABEL_205;
      }

      v75 = 0xE400000000000000;
      if (v68 != 1918985593)
      {
LABEL_210:
        v76 = sub_22F742040();

        if (v76)
        {
          goto LABEL_218;
        }

        if (v48 == ++v64)
        {
          goto LABEL_242;
        }

        continue;
      }

      break;
    }

    if (v69 != v75)
    {
      goto LABEL_210;
    }

LABEL_218:
    v6 = v80 - 1;
    if (v49 < v64)
    {
      v5 = __srcb;
      v11 = v86;
      if (v80 < v88 || v6 >= v88)
      {
        *v6 = *v77;
      }

      if (v86 > __srcb)
      {
        v7 = v77;
        if (v77 > v8)
        {
          continue;
        }
      }

      v7 = v77;
    }

    else
    {
      v5 = __srcb;
      v7 = v88;
      v47 = v77;
      if (v80 < v86 || v6 >= v86)
      {
        *v6 = *v78;
      }

      v11 = v78;
      if (v78 > __srcb)
      {
        goto LABEL_124;
      }

      v11 = v78;
    }

    break;
  }

  if (v7 == v5)
  {
    goto LABEL_233;
  }

LABEL_234:
  memmove(v7, v5, v11 - v5);
}

void sub_22F21C8E4(uint64_t *a1, unsigned __int8 *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v7 = a1;
  v8 = *a1;

  v21 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v21 = sub_22F3F5F98(v21);
  }

  v18 = v7;
  *v7 = v21;
  v9 = (v21 + 16);
  v10 = *(v21 + 2);
  if (v10 < 2)
  {
LABEL_9:

    *v18 = v21;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v7 = &v21[16 * v10];
      v12 = *v7;
      v13 = &v9[2 * v10];
      v14 = *v13;
      v15 = v13[1];

      sub_22F21BEBC((v11 + v12), (v11 + v14), (v11 + v15), a2, a4);

      if (v5)
      {
        *v18 = v21;

        return;
      }

      if (v15 < v12)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v9;
      if (v10 - 2 >= *v9)
      {
        goto LABEL_12;
      }

      *v7 = v12;
      v7[1] = v15;
      v17 = v16 - v10;
      if (v16 < v10)
      {
        goto LABEL_13;
      }

      v10 = v16 - 1;
      memmove(v13, v13 + 2, 16 * v17);
      *v9 = v10;
      if (v10 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v21;
    __break(1u);
  }
}

void sub_22F21CA70(unsigned __int8 **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v7 = a3[1];
  v155 = MEMORY[0x277D84F90];
  if (v7 < 1)
  {
    swift_bridgeObjectRetain_n();
    goto LABEL_289;
  }

  v146 = v5;
  v8 = v7;
  v153 = a5 + 32;
  swift_bridgeObjectRetain_n();
  v9 = v8;
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v10++;
    v140 = v11;
    v144 = v12;
    if (v10 >= v9)
    {
      goto LABEL_120;
    }

    v135 = v9;
    v13 = v12[*a3];
    v137 = *a3;
    v147 = sub_22F212614(v10[*a3], a5);
    if (v14)
    {
      goto LABEL_325;
    }

    v141 = sub_22F212614(v13, a5);
    if (v15)
    {
      goto LABEL_326;
    }

LABEL_10:
    if (v10 != (v135 - 1))
    {
      v18 = *(a5 + 16);
      if (!v18)
      {
        goto LABEL_299;
      }

      v19 = 0;
      __dst = v10 + 1;
      v11 = v10[v137 + 1];
      v20 = v10[v137];
      while (1)
      {
        v21 = *(v153 + v19);
        if (v21 > 2)
        {
          if (v21 == 3)
          {
            v24 = 0x6557664F74726170;
            v25 = 0xEA00000000006B65;
          }

          else
          {
            if (v21 == 4)
            {
              v24 = 0x616559664F796164;
            }

            else
            {
              v24 = 0x6144664F74726170;
            }

            if (v21 == 4)
            {
              v25 = 0xE900000000000072;
            }

            else
            {
              v25 = 0xE900000000000079;
            }
          }
        }

        else
        {
          if (v21 == 1)
          {
            v22 = 0x6E6F73616573;
          }

          else
          {
            v22 = 0x59664F6567646577;
          }

          if (v21 == 1)
          {
            v23 = 0xE600000000000000;
          }

          else
          {
            v23 = 0xEB00000000726165;
          }

          if (*(v153 + v19))
          {
            v24 = v22;
          }

          else
          {
            v24 = 1918985593;
          }

          if (*(v153 + v19))
          {
            v25 = v23;
          }

          else
          {
            v25 = 0xE400000000000000;
          }
        }

        if (v11 > 2)
        {
          v28 = 0xE900000000000079;
          v29 = 0x616559664F796164;
          if (v11 == 4)
          {
            v28 = 0xE900000000000072;
          }

          else
          {
            v29 = 0x6144664F74726170;
          }

          if (v11 == 3)
          {
            v30 = 0x6557664F74726170;
          }

          else
          {
            v30 = v29;
          }

          if (v11 == 3)
          {
            v27 = 0xEA00000000006B65;
          }

          else
          {
            v27 = v28;
          }

          if (v24 != v30)
          {
            goto LABEL_57;
          }
        }

        else if (v11)
        {
          if (v11 == 1)
          {
            v26 = 0x6E6F73616573;
          }

          else
          {
            v26 = 0x59664F6567646577;
          }

          if (v11 == 1)
          {
            v27 = 0xE600000000000000;
          }

          else
          {
            v27 = 0xEB00000000726165;
          }

          if (v24 != v26)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v27 = 0xE400000000000000;
          if (v24 != 1918985593)
          {
            goto LABEL_57;
          }
        }

        if (v25 == v27)
        {

LABEL_61:
          v11 = 0;
          while (2)
          {
            if (v18 == v11)
            {
              goto LABEL_294;
            }

            v32 = *(v153 + v11);
            if (v32 > 2)
            {
              if (v32 == 3)
              {
                v35 = 0x6557664F74726170;
                v36 = 0xEA00000000006B65;
                if (v20 > 2)
                {
                  goto LABEL_93;
                }

                goto LABEL_83;
              }

              if (v32 == 4)
              {
                v35 = 0x616559664F796164;
              }

              else
              {
                v35 = 0x6144664F74726170;
              }

              if (v32 == 4)
              {
                v36 = 0xE900000000000072;
              }

              else
              {
                v36 = 0xE900000000000079;
              }

              if (v20 <= 2)
              {
                goto LABEL_83;
              }

LABEL_93:
              v39 = 0xE900000000000079;
              v40 = 0x616559664F796164;
              if (v20 == 4)
              {
                v39 = 0xE900000000000072;
              }

              else
              {
                v40 = 0x6144664F74726170;
              }

              if (v20 == 3)
              {
                v41 = 0x6557664F74726170;
              }

              else
              {
                v41 = v40;
              }

              if (v20 == 3)
              {
                v38 = 0xEA00000000006B65;
              }

              else
              {
                v38 = v39;
              }

              if (v35 == v41)
              {
                goto LABEL_105;
              }

              goto LABEL_106;
            }

            v33 = 0x6E6F73616573;
            if (v32 == 1)
            {
              v34 = 0xE600000000000000;
            }

            else
            {
              v33 = 0x59664F6567646577;
              v34 = 0xEB00000000726165;
            }

            if (*(v153 + v11))
            {
              v35 = v33;
            }

            else
            {
              v35 = 1918985593;
            }

            if (*(v153 + v11))
            {
              v36 = v34;
            }

            else
            {
              v36 = 0xE400000000000000;
            }

            if (v20 > 2)
            {
              goto LABEL_93;
            }

LABEL_83:
            if (!v20)
            {
              v38 = 0xE400000000000000;
              if (v35 == 1918985593)
              {
                goto LABEL_105;
              }

              goto LABEL_106;
            }

            if (v20 == 1)
            {
              v37 = 0x6E6F73616573;
            }

            else
            {
              v37 = 0x59664F6567646577;
            }

            if (v20 == 1)
            {
              v38 = 0xE600000000000000;
            }

            else
            {
              v38 = 0xEB00000000726165;
            }

            if (v35 != v37)
            {
              goto LABEL_106;
            }

LABEL_105:
            if (v36 != v38)
            {
LABEL_106:
              v42 = sub_22F742040();

              if (v42)
              {
                goto LABEL_9;
              }

              if (v18 == ++v11)
              {
                goto LABEL_296;
              }

              continue;
            }

            break;
          }

LABEL_9:
          v16 = __dst;
          v17 = v19 >= v11;
          v10 = __dst;
          v11 = v140;
          if ((((v147 < v141) ^ v17) & 1) == 0)
          {
            goto LABEL_110;
          }

          goto LABEL_10;
        }

LABEL_57:
        v31 = sub_22F742040();

        if (v31)
        {
          goto LABEL_61;
        }

        if (v18 == ++v19)
        {
          goto LABEL_295;
        }
      }
    }

    v16 = v135;
LABEL_110:
    if (v147 < v141)
    {
      v43 = v144;
      if (v16 >= v144)
      {
        if (v144 < v16)
        {
          v44 = v16 - 1;
          while (1)
          {
            if (v43 != v44)
            {
              v46 = *a3;
              if (!*a3)
              {
                goto LABEL_323;
              }

              v47 = *(v46 + v43);
              *(v46 + v43) = v44[v46];
              v44[v46] = v47;
            }

            if (++v43 >= v44--)
            {
              goto LABEL_119;
            }
          }
        }

        goto LABEL_119;
      }

LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_322:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_323:
      swift_bridgeObjectRelease_n();
      __break(1u);
      goto LABEL_324;
    }

LABEL_119:
    v10 = v16;
LABEL_120:
    v48 = a3[1];
    if (v10 >= v48)
    {
      goto LABEL_235;
    }

    if (__OFSUB__(v10, v144))
    {
      goto LABEL_316;
    }

    if (&v10[-v144] >= a4)
    {
      goto LABEL_235;
    }

    v49 = v144 + a4;
    if (__OFADD__(v144, a4))
    {
      goto LABEL_317;
    }

    if (v49 >= v48)
    {
      v49 = a3[1];
    }

    if (v49 < v144)
    {
LABEL_318:
      __break(1u);
      goto LABEL_319;
    }

    if (v10 == v49)
    {
      v50 = v144;
      goto LABEL_236;
    }

    v138 = v49;
    v51 = *(a5 + 16);
    if (!v51)
    {
      goto LABEL_320;
    }

    v52 = *a3;
    v53 = v10;
    v139 = *a3;
LABEL_133:
    v54 = v53[v52];
    v142 = v53;
    v55 = v53;
LABEL_134:
    v56 = 0;
    v148 = v55 - 1;
    __dsta = v55;
    v57 = v55[v52 - 1];
    v11 = v54;
LABEL_135:
    v58 = *(a5 + v56 + 32);
    if (v58 > 2)
    {
      if (v58 == 3)
      {
        v61 = 0x6557664F74726170;
        v62 = 0xEA00000000006B65;
      }

      else
      {
        if (v58 == 4)
        {
          v61 = 0x616559664F796164;
        }

        else
        {
          v61 = 0x6144664F74726170;
        }

        if (v58 == 4)
        {
          v62 = 0xE900000000000072;
        }

        else
        {
          v62 = 0xE900000000000079;
        }
      }
    }

    else
    {
      if (v58 == 1)
      {
        v59 = 0x6E6F73616573;
      }

      else
      {
        v59 = 0x59664F6567646577;
      }

      if (v58 == 1)
      {
        v60 = 0xE600000000000000;
      }

      else
      {
        v60 = 0xEB00000000726165;
      }

      if (*(a5 + v56 + 32))
      {
        v61 = v59;
      }

      else
      {
        v61 = 1918985593;
      }

      if (*(a5 + v56 + 32))
      {
        v62 = v60;
      }

      else
      {
        v62 = 0xE400000000000000;
      }
    }

    v63 = 0xE900000000000079;
    v64 = 0x616559664F796164;
    if (v11 == 4)
    {
      v63 = 0xE900000000000072;
    }

    else
    {
      v64 = 0x6144664F74726170;
    }

    if (v11 == 3)
    {
      v64 = 0x6557664F74726170;
      v63 = 0xEA00000000006B65;
    }

    if (v11 == 1)
    {
      v65 = 0x6E6F73616573;
    }

    else
    {
      v65 = 0x59664F6567646577;
    }

    if (v11 == 1)
    {
      v66 = 0xE600000000000000;
    }

    else
    {
      v66 = 0xEB00000000726165;
    }

    if (!v11)
    {
      v65 = 1918985593;
      v66 = 0xE400000000000000;
    }

    v67 = v11 <= 2 ? v65 : v64;
    v68 = v11 <= 2 ? v66 : v63;
    if (v61 != v67 || v62 != v68)
    {
      break;
    }

LABEL_181:
    v11 = 0;
    while (1)
    {
      v70 = *(a5 + v11 + 32);
      if (v70 <= 2)
      {
        break;
      }

      if (v70 == 3)
      {
        v73 = 0x6557664F74726170;
        v74 = 0xEA00000000006B65;
        if (v57 > 2)
        {
          goto LABEL_213;
        }
      }

      else
      {
        if (v70 == 4)
        {
          v73 = 0x616559664F796164;
        }

        else
        {
          v73 = 0x6144664F74726170;
        }

        if (v70 == 4)
        {
          v74 = 0xE900000000000072;
        }

        else
        {
          v74 = 0xE900000000000079;
        }

        if (v57 > 2)
        {
          goto LABEL_213;
        }
      }

LABEL_203:
      if (v57)
      {
        if (v57 == 1)
        {
          v75 = 0x6E6F73616573;
        }

        else
        {
          v75 = 0x59664F6567646577;
        }

        if (v57 == 1)
        {
          v76 = 0xE600000000000000;
        }

        else
        {
          v76 = 0xEB00000000726165;
        }

        if (v73 != v75)
        {
          goto LABEL_226;
        }

        goto LABEL_225;
      }

      v76 = 0xE400000000000000;
      if (v73 == 1918985593)
      {
        goto LABEL_225;
      }

LABEL_226:
      v80 = sub_22F742040();

      if (v80)
      {
        goto LABEL_230;
      }

      if (v51 == ++v11)
      {
        goto LABEL_293;
      }
    }

    v71 = 0x6E6F73616573;
    if (v70 != 1)
    {
      v71 = 0x59664F6567646577;
    }

    v72 = 0xE600000000000000;
    if (v70 != 1)
    {
      v72 = 0xEB00000000726165;
    }

    if (*(a5 + v11 + 32))
    {
      v73 = v71;
    }

    else
    {
      v73 = 1918985593;
    }

    if (*(a5 + v11 + 32))
    {
      v74 = v72;
    }

    else
    {
      v74 = 0xE400000000000000;
    }

    if (v57 <= 2)
    {
      goto LABEL_203;
    }

LABEL_213:
    v77 = 0xE900000000000079;
    v78 = 0x616559664F796164;
    if (v57 == 4)
    {
      v77 = 0xE900000000000072;
    }

    else
    {
      v78 = 0x6144664F74726170;
    }

    if (v57 == 3)
    {
      v79 = 0x6557664F74726170;
    }

    else
    {
      v79 = v78;
    }

    if (v57 == 3)
    {
      v76 = 0xEA00000000006B65;
    }

    else
    {
      v76 = v77;
    }

    if (v73 != v79)
    {
      goto LABEL_226;
    }

LABEL_225:
    if (v74 != v76)
    {
      goto LABEL_226;
    }

LABEL_230:
    if (v56 >= v11)
    {
      v52 = v139;
      goto LABEL_132;
    }

    v52 = v139;
    if (!v139)
    {
      goto LABEL_321;
    }

    v54 = __dsta[v139];
    __dsta[v139] = v148[v139];
    v148[v139] = v54;
    v55 = v148;
    if (v148 != v144)
    {
      goto LABEL_134;
    }

LABEL_132:
    v53 = v142 + 1;
    if (v142 + 1 != v138)
    {
      goto LABEL_133;
    }

    v10 = v138;
    v11 = v140;
LABEL_235:
    v50 = v144;
LABEL_236:
    if (v10 < v50)
    {
      goto LABEL_315;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_22F13D970(0, *(v11 + 16) + 1, 1, v11);
    }

    v82 = *(v11 + 16);
    v81 = *(v11 + 24);
    v83 = v82 + 1;
    if (v82 >= v81 >> 1)
    {
      v11 = sub_22F13D970((v81 > 1), v82 + 1, 1, v11);
    }

    *(v11 + 16) = v83;
    v84 = (v11 + 32);
    v85 = (v11 + 32 + 16 * v82);
    *v85 = v144;
    *(v85 + 1) = v10;
    __dstb = *a1;
    if (!*a1)
    {
LABEL_324:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      __break(1u);
LABEL_327:
      swift_bridgeObjectRelease_n();
      __break(1u);
      return;
    }

    if (v82)
    {
      v143 = v10;
      v149 = (v11 + 32);
      while (1)
      {
        v86 = v83 - 1;
        if (v83 >= 4)
        {
          break;
        }

        if (v83 == 3)
        {
          v87 = *(v11 + 32);
          v88 = *(v11 + 40);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_257:
          if (v90)
          {
            goto LABEL_305;
          }

          v103 = (v11 + 16 * v83);
          v105 = *v103;
          v104 = *(v103 + 1);
          v106 = __OFSUB__(v104, v105);
          v107 = v104 - v105;
          v108 = v106;
          if (v106)
          {
            goto LABEL_307;
          }

          v109 = &v84[16 * v86];
          v111 = *v109;
          v110 = *(v109 + 1);
          v97 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v97)
          {
            goto LABEL_310;
          }

          if (__OFADD__(v107, v112))
          {
            goto LABEL_312;
          }

          if (v107 + v112 >= v89)
          {
            if (v89 < v112)
            {
              v86 = v83 - 2;
            }

            goto LABEL_280;
          }

          goto LABEL_270;
        }

        if (v83 < 2)
        {
          goto LABEL_313;
        }

        v113 = (v11 + 16 * v83);
        v115 = *v113;
        v114 = *(v113 + 1);
        v97 = __OFSUB__(v114, v115);
        v107 = v114 - v115;
        v108 = v97;
LABEL_270:
        if (v108)
        {
          goto LABEL_309;
        }

        v116 = &v84[16 * v86];
        v118 = *v116;
        v117 = *(v116 + 1);
        v97 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v97)
        {
          goto LABEL_311;
        }

        if (v119 < v107)
        {
          goto LABEL_3;
        }

LABEL_280:
        if (v86 - 1 >= v83)
        {
          __break(1u);
LABEL_299:
          __break(1u);
LABEL_300:
          __break(1u);
LABEL_301:
          __break(1u);
LABEL_302:
          __break(1u);
LABEL_303:
          __break(1u);
LABEL_304:
          __break(1u);
LABEL_305:
          __break(1u);
LABEL_306:
          __break(1u);
LABEL_307:
          __break(1u);
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
LABEL_314:
          __break(1u);
LABEL_315:
          __break(1u);
LABEL_316:
          __break(1u);
LABEL_317:
          __break(1u);
          goto LABEL_318;
        }

        v124 = *a3;
        if (!*a3)
        {
          goto LABEL_322;
        }

        v125 = v11;
        v126 = &v84[16 * v86 - 16];
        v127 = *v126;
        v128 = v86;
        v129 = &v84[16 * v86];
        v130 = *v129;
        v131 = *(v129 + 1);

        sub_22F21BEBC((v124 + v127), (v124 + v130), (v124 + v131), __dstb, a5);
        if (v146)
        {

          goto LABEL_292;
        }

        if (v131 < v127)
        {
          goto LABEL_300;
        }

        v132 = *(v125 + 2);
        if (v128 > v132)
        {
          goto LABEL_301;
        }

        *v126 = v127;
        *(v126 + 1) = v131;
        if (v128 >= v132)
        {
          goto LABEL_302;
        }

        v83 = v132 - 1;
        memmove(v129, v129 + 16, 16 * (v132 - 1 - v128));
        v11 = v125;
        *(v125 + 2) = v132 - 1;
        v10 = v143;
        v84 = v149;
        if (v132 <= 2)
        {
          goto LABEL_3;
        }
      }

      v91 = &v84[16 * v83];
      v92 = *(v91 - 8);
      v93 = *(v91 - 7);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_303;
      }

      v96 = *(v91 - 6);
      v95 = *(v91 - 5);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_304;
      }

      v98 = (v11 + 16 * v83);
      v100 = *v98;
      v99 = *(v98 + 1);
      v97 = __OFSUB__(v99, v100);
      v101 = v99 - v100;
      if (v97)
      {
        goto LABEL_306;
      }

      v97 = __OFADD__(v89, v101);
      v102 = v89 + v101;
      if (v97)
      {
        goto LABEL_308;
      }

      if (v102 >= v94)
      {
        v120 = &v84[16 * v86];
        v122 = *v120;
        v121 = *(v120 + 1);
        v97 = __OFSUB__(v121, v122);
        v123 = v121 - v122;
        if (v97)
        {
          goto LABEL_314;
        }

        if (v89 < v123)
        {
          v86 = v83 - 2;
        }

        goto LABEL_280;
      }

      goto LABEL_257;
    }

LABEL_3:
    v9 = a3[1];
    if (v10 >= v9)
    {
      goto LABEL_297;
    }
  }

  v69 = sub_22F742040();

  if (v69)
  {
    goto LABEL_181;
  }

  if (v51 != ++v56)
  {
    goto LABEL_135;
  }

  __break(1u);
LABEL_293:
  __break(1u);
LABEL_294:
  __break(1u);
LABEL_295:
  __break(1u);
LABEL_296:
  __break(1u);
LABEL_297:
  v155 = v11;
  v6 = a5;
LABEL_289:
  v133 = *a1;
  if (!*a1)
  {
    goto LABEL_327;
  }

  sub_22F21C8E4(&v155, v133, a3, v6);

LABEL_292:
  swift_bridgeObjectRelease_n();
}

void sub_22F21D964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 == a2)
  {
    return;
  }

  v46 = *(a5 + 16);
  if (v46)
  {
    v47 = a5 + 32;
    v5 = 0xEB00000000726165;
    v6 = *a4;
    v7 = 0x59664F6567646577;
    v8 = 0x6E6F73616573;
    v43 = *a4;
LABEL_6:
    v9 = *(v6 + a3);
    v41 = a3;
LABEL_7:
    v10 = 0;
    v44 = a3 - 1;
    v45 = a3;
    v11 = *(v6 + a3 - 1);
    v12 = v9;
    while (1)
    {
      v13 = *(v47 + v10);
      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v16 = 0x6557664F74726170;
          v17 = 0xEA00000000006B65;
        }

        else
        {
          if (v13 == 4)
          {
            v16 = 0x616559664F796164;
          }

          else
          {
            v16 = 0x6144664F74726170;
          }

          if (v13 == 4)
          {
            v17 = 0xE900000000000072;
          }

          else
          {
            v17 = 0xE900000000000079;
          }
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = v8;
        }

        else
        {
          v14 = v7;
        }

        if (v13 == 1)
        {
          v15 = 0xE600000000000000;
        }

        else
        {
          v15 = v5;
        }

        if (*(v47 + v10))
        {
          v16 = v14;
        }

        else
        {
          v16 = 1918985593;
        }

        if (*(v47 + v10))
        {
          v17 = v15;
        }

        else
        {
          v17 = 0xE400000000000000;
        }
      }

      v18 = 0xE900000000000079;
      v19 = 0x616559664F796164;
      if (v12 == 4)
      {
        v18 = 0xE900000000000072;
      }

      else
      {
        v19 = 0x6144664F74726170;
      }

      if (v12 == 3)
      {
        v19 = 0x6557664F74726170;
        v18 = 0xEA00000000006B65;
      }

      if (v12 == 1)
      {
        v20 = v8;
      }

      else
      {
        v20 = v7;
      }

      v21 = v5;
      if (v12 == 1)
      {
        v5 = 0xE600000000000000;
      }

      if (!v12)
      {
        v20 = 1918985593;
        v5 = 0xE400000000000000;
      }

      v22 = v12 <= 2 ? v20 : v19;
      v23 = v12 <= 2 ? v5 : v18;
      v24 = v7;
      v25 = v8;
      if (v16 == v22 && v17 == v23)
      {
        break;
      }

      v26 = sub_22F742040();

      if (v26)
      {
        goto LABEL_53;
      }

      ++v10;
      v5 = v21;
      v7 = v24;
      v8 = v25;
      if (v46 == v10)
      {
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }
    }

LABEL_53:
    v27 = 0;
    v28 = v21;
    v29 = 0xE600000000000000;
    while (1)
    {
      v30 = *(v47 + v27);
      if (v30 > 2)
      {
        if (v30 == 3)
        {
          v32 = 0x6557664F74726170;
          v33 = 0xEA00000000006B65;
          if (v11 > 2)
          {
            goto LABEL_86;
          }
        }

        else
        {
          if (v30 == 4)
          {
            v32 = 0x616559664F796164;
          }

          else
          {
            v32 = 0x6144664F74726170;
          }

          if (v30 == 4)
          {
            v33 = 0xE900000000000072;
          }

          else
          {
            v33 = 0xE900000000000079;
          }

          if (v11 > 2)
          {
            goto LABEL_86;
          }
        }
      }

      else
      {
        if (v30 == 1)
        {
          v31 = v25;
        }

        else
        {
          v31 = v24;
        }

        if (v30 != 1)
        {
          v29 = v28;
        }

        if (*(v47 + v27))
        {
          v32 = v31;
        }

        else
        {
          v32 = 1918985593;
        }

        if (*(v47 + v27))
        {
          v33 = v29;
        }

        else
        {
          v33 = 0xE400000000000000;
        }

        if (v11 > 2)
        {
LABEL_86:
          v36 = 0xE900000000000079;
          v37 = 0x616559664F796164;
          if (v11 == 4)
          {
            v36 = 0xE900000000000072;
          }

          else
          {
            v37 = 0x6144664F74726170;
          }

          if (v11 == 3)
          {
            v38 = 0x6557664F74726170;
          }

          else
          {
            v38 = v37;
          }

          if (v11 == 3)
          {
            v35 = 0xEA00000000006B65;
          }

          else
          {
            v35 = v36;
          }

          if (v32 != v38)
          {
            goto LABEL_99;
          }

          goto LABEL_98;
        }
      }

      if (v11)
      {
        if (v11 == 1)
        {
          v34 = v25;
        }

        else
        {
          v34 = v24;
        }

        if (v11 == 1)
        {
          v35 = 0xE600000000000000;
        }

        else
        {
          v35 = v28;
        }

        if (v32 != v34)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v35 = 0xE400000000000000;
        if (v32 != 1918985593)
        {
          goto LABEL_99;
        }
      }

LABEL_98:
      if (v33 == v35)
      {

LABEL_103:
        v5 = v21;
        v6 = v43;
        v7 = v24;
        v8 = v25;
        if (v10 >= v27)
        {
LABEL_5:
          a3 = v41 + 1;
          if (v41 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        if (!v43)
        {
          goto LABEL_109;
        }

        v9 = *(v43 + v45);
        *(v43 + v45) = *(v43 + v44);
        *(v43 + v44) = v9;
        a3 = v44;
        if (v44 == a1)
        {
          goto LABEL_5;
        }

        goto LABEL_7;
      }

LABEL_99:
      v39 = sub_22F742040();

      if (v39)
      {
        goto LABEL_103;
      }

      ++v27;
      v28 = v21;
      v29 = 0xE600000000000000;
      if (v46 == v27)
      {
        goto LABEL_107;
      }
    }
  }

LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
}

void sub_22F21DDE0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  v5 = sub_22F742000();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_22F741200();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_22F21CA70(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_22F21D964(0, v4, 1, a1, a2);
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_22F21DF28(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_22F3F6558(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_22F21DDE0(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

unint64_t sub_22F21DFCC()
{
  result = qword_27DAB2710;
  if (!qword_27DAB2710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2710);
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F21E068(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22F771350;
  *(v4 + 32) = [objc_opt_self() dateOfMoment];
  *(v4 + 40) = [objc_opt_self() seasonOfDate];
  v5 = objc_allocWithZone(MEMORY[0x277D22C00]);
  sub_22F120634(0, &qword_2810A9218, 0x277D22C90);
  v6 = sub_22F741160();

  v7 = [v5 initWithSteps_];

  v8 = v7;
  v9 = [objc_msgSend(a1 graph)];
  swift_unknownObjectRelease();
  v10 = [v9 concreteGraph];

  if (v10)
  {
    v11 = [a1 elementIdentifiers];
    v12 = [v10 adjacencyWithSources:v11 relation:v8];

    swift_unknownObjectRetain();
    v13 = [v12 transposed];
    swift_unknownObjectRelease();

    v14 = objc_allocWithZone(PGGraphSeasonNodeCollection);
    v15 = [v13 sources];
    v16 = [v14 initWithGraph:v10 elementIdentifiers:v15];

    v17 = swift_allocObject();
    v17[2] = v13;
    v17[3] = v10;
    v17[4] = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_22F21F140;
    *(v18 + 24) = v17;
    aBlock[4] = sub_22F21F1C0;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F2136B4;
    aBlock[3] = &block_descriptor_111;
    v19 = _Block_copy(aBlock);
    v20 = v13;
    swift_unknownObjectRetain();

    [v16 enumerateNamesUsingBlock_];

    swift_unknownObjectRelease();
    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  result = sub_22F741D40();
  __break(1u);
  return result;
}

uint64_t sub_22F21E448(uint64_t a1, uint64_t a2)
{
  sub_22F120634(0, &qword_27DAB2770, off_27887B490);
  v5 = [swift_getObjCClassFromMetadata(v4) nodesInGraph_];
  v6 = [v5 momentNodes];

  v7 = [v6 elementIdentifiers];
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_22F21F0B0;
  *(v9 + 24) = v8;
  v23 = sub_22F21F0D4;
  v24 = v9;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_22F3618B8;
  v22 = &block_descriptor_91;
  v10 = _Block_copy(&v19);

  [v7 enumerateIdentifiersWithBlock_];

  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_22F120634(0, &qword_27DAB2778, off_27887B480);
  v13 = [swift_getObjCClassFromMetadata(v12) nodesInGraph_];
  v14 = [v13 momentNodes];

  v15 = [v14 elementIdentifiers];
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22F21F0DC;
  *(v17 + 24) = v16;
  v23 = sub_22F21F1BC;
  v24 = v17;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_22F3618B8;
  v22 = &block_descriptor_101;
  v18 = _Block_copy(&v19);

  [v15 enumerateIdentifiersWithBlock_];

  _Block_release(v18);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_22F21E7A4(void *a1, uint64_t a2)
{
  v5 = objc_opt_self();
  v6 = [v5 significantPartOfDayOfMoment];
  sub_22F21A8C4(a1, v6, a2, v15);

  if (!v2)
  {
    v7 = v15[0];
    v8 = v15[1];
    v9 = objc_allocWithZone(PGGraphMomentNodeCollection);
    v10 = [v7 targets];
    v11 = [v9 initWithGraph:v8 elementIdentifiers:v10];

    v12 = [a1 collectionBySubtracting_];
    if ([v12 count] < 1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = [v5 partOfDayOfMoment];
      sub_22F21A8C4(v12, v13, a2, v15);
      v14 = v15[0];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

char *sub_22F21E940(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v3 = MEMORY[0x277D84F90];
LABEL_37:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v5 = *v2++;
    v4 = v5;
    if (v5 > 2)
    {
      if (v4 == 3)
      {
        if (qword_27DAAFDD8 != -1)
        {
          swift_once();
        }

        v6 = off_27DAB2708;
      }

      else
      {
        if (v4 == 4)
        {
          v6 = &unk_2843DAEB8;
          goto LABEL_23;
        }

        if (qword_27DAAFDD0 != -1)
        {
          swift_once();
        }

        v6 = off_27DAB2700;
      }
    }

    else
    {
      if (!v4)
      {
        v6 = &unk_2843DAE88;
        goto LABEL_23;
      }

      if (v4 != 1)
      {
        v6 = &unk_2843DAEE8;
        goto LABEL_23;
      }

      if (qword_27DAAFDC8 != -1)
      {
        swift_once();
      }

      v6 = off_27DAB26F8;
    }

LABEL_23:
    v7 = v6[2];
    v8 = *(v3 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= *(v3 + 3) >> 1)
    {
      if (v6[2])
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v3 = sub_22F13E1A8(isUniquelyReferenced_nonNull_native, v11, 1, v3);
      if (v6[2])
      {
LABEL_32:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v7)
        {
          goto LABEL_43;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v12 = *(v3 + 2);
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_44;
          }

          *(v3 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_42;
    }

LABEL_4:
    if (!--v1)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  v3 = sub_22F13E1A8(0, *(v3 + 2) + 1, 1, v3);
LABEL_38:
  v16 = *(v3 + 2);
  v15 = *(v3 + 3);
  if (v16 >= v15 >> 1)
  {
    v3 = sub_22F13E1A8((v15 > 1), v16 + 1, 1, v3);
  }

  *(v3 + 2) = v16 + 1;
  v17 = &v3[16 * v16];
  *(v17 + 4) = 0x6D617473656D6954;
  *(v17 + 5) = 0xE900000000000070;
  return v3;
}

unint64_t sub_22F21ECB8()
{
  result = qword_27DAB2740;
  if (!qword_27DAB2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2740);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph9TimeIndexC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_22F21EEDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22F21EF24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_22F21EF6C(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_22F21EF98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2760, &qword_22F77AD18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F21F088(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_65Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F21F158(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void __swiftcall MusicBagContents.init(personalMixIdentifersToNames:jobConfiguration:cacheRefreshConfiguration:songQueryBatchSize:songEquivalentQueryBatchSize:)(PhotosGraph::MusicBagContents *__return_ptr retstr, Swift::OpaquePointer personalMixIdentifersToNames, PhotosGraph::JobConfiguration *jobConfiguration, PhotosGraph::CacheRefreshConfiguration cacheRefreshConfiguration, Swift::Int songQueryBatchSize, Swift::Int songEquivalentQueryBatchSize)
{
  v6 = *(&jobConfiguration->musicForTimeFrontfill.value.minimumSuccessCadenceSeconds + 7);
  *&retstr->jobConfiguration.musicForTimeBackfill.value.maximumFailureCadenceSeconds = *&jobConfiguration->musicForTimeBackfill.value.maximumFailureCadenceSeconds;
  *(&retstr->jobConfiguration.musicForTimeFrontfill.value.minimumSuccessCadenceSeconds + 7) = v6;
  *(&retstr->jobConfiguration.musicForTimeFrontfill.value.failureBackoffMultiplier + 7) = *(&jobConfiguration->musicForTimeFrontfill.value.failureBackoffMultiplier + 7);
  v7 = *&jobConfiguration->musicForTime.minimumFailureCadenceSeconds;
  *&retstr->jobConfiguration.musicForPerformer.maximumFailureCadenceSeconds = *&jobConfiguration->musicForPerformer.maximumFailureCadenceSeconds;
  *&retstr->jobConfiguration.musicForTime.minimumFailureCadenceSeconds = v7;
  v8 = *&jobConfiguration->musicForTimeBackfill.value.minimumFailureCadenceSeconds;
  *&retstr->jobConfiguration.musicForTime.maximumFailureCadenceSeconds = *&jobConfiguration->musicForTime.maximumFailureCadenceSeconds;
  *&retstr->jobConfiguration.musicForTimeBackfill.value.minimumFailureCadenceSeconds = v8;
  v9 = *&jobConfiguration->musicForMoment.minimumFailureCadenceSeconds;
  *&retstr->jobConfiguration.musicForTopic.is_nil = *&jobConfiguration->musicForTopic.is_nil;
  *&retstr->jobConfiguration.musicForMoment.minimumFailureCadenceSeconds = v9;
  v10 = *&jobConfiguration->musicForPerformer.minimumFailureCadenceSeconds;
  *&retstr->jobConfiguration.musicForMoment.maximumFailureCadenceSeconds = *&jobConfiguration->musicForMoment.maximumFailureCadenceSeconds;
  *&retstr->jobConfiguration.musicForPerformer.minimumFailureCadenceSeconds = v10;
  v11 = *&jobConfiguration->musicForYou.failureBackoffMultiplier;
  *&retstr->jobConfiguration.musicForYou.minimumSuccessCadenceSeconds = *&jobConfiguration->musicForYou.minimumSuccessCadenceSeconds;
  *&retstr->jobConfiguration.musicForYou.failureBackoffMultiplier = v11;
  v12 = *&jobConfiguration->musicForTopic.value.failureBackoffMultiplier;
  *&retstr->jobConfiguration.musicForTopic.value.minimumSuccessCadenceSeconds = *&jobConfiguration->musicForTopic.value.minimumSuccessCadenceSeconds;
  v13 = *cacheRefreshConfiguration.batchSize;
  v14 = *(cacheRefreshConfiguration.batchSize + 8);
  retstr->personalMixIdentifersToNames = personalMixIdentifersToNames;
  LOBYTE(retstr->cacheRefreshConfiguration.minimumRefreshCadenceSeconds) = LOBYTE(jobConfiguration[1].musicForYou.minimumSuccessCadenceSeconds);
  *&retstr->jobConfiguration.musicForTopic.value.failureBackoffMultiplier = v12;
  retstr->cacheRefreshConfiguration.batchSize = v13;
  retstr->songQueryBatchSize = v14;
  retstr->songEquivalentQueryBatchSize = songQueryBatchSize;
  retstr[1].personalMixIdentifersToNames._rawValue = songEquivalentQueryBatchSize;
}

int64x2_t static JobConfiguration.JobCadence.defaultJobCadence()@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0x40F5180000000000uLL);
  *a1 = result;
  a1[1].i64[0] = 2;
  a1[1].i64[1] = 0x4132750000000000;
  return result;
}

uint64_t sub_22F21F314(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t, uint64_t))
{

  v5 = a1(v4);
  if (qword_2810AB5D8 != -1)
  {
    swift_once();
  }

  v7 = a2(v6, v5);

  return v7;
}

Swift::String_optional __swiftcall MusicBagContents.personalMixName(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *v1;
  if (qword_2810AB5D8 != -1)
  {
    swift_once();
  }

  if (*(off_2810AB5E0 + 2) && (sub_22F1229E8(countAndFlagsBits, object), (v5 & 1) != 0) || !*(v4 + 16) || (v6 = sub_22F1229E8(countAndFlagsBits, object), (v7 & 1) == 0))
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v8 = *(*(v4 + 56) + 16 * v6);

    v10 = v8;
  }

  result.value._object = v9;
  result.value._countAndFlagsBits = v10;
  return result;
}

Swift::String_optional __swiftcall MusicBagContents.personalMixIdentifier(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *v1;
  if (qword_2810AB5D8 != -1)
  {
LABEL_33:
    swift_once();
  }

  v5 = 0;
  v6 = off_2810AB5E0;
  v7 = 1 << *(off_2810AB5E0 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = off_2810AB5E0 + 64;
  v10 = v8 & *(off_2810AB5E0 + 8);
  v11 = (v7 + 63) >> 6;
  do
  {
    if (!v10)
    {
      while (1)
      {
        v12 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
          goto LABEL_32;
        }

        if (v12 >= v11)
        {
          break;
        }

        v10 = *&v9[8 * v12];
        ++v5;
        if (v10)
        {
          v5 = v12;
          goto LABEL_10;
        }
      }

      v19 = 0;
      v20 = 1 << *(v4 + 32);
      v21 = -1;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      v22 = v21 & *(v4 + 64);
      v23 = (v20 + 63) >> 6;
      while (v22)
      {
LABEL_25:
        v25 = (v19 << 10) | (16 * __clz(__rbit64(v22)));
        v26 = (*(v4 + 48) + v25);
        v15 = *v26;
        v16 = v26[1];
        v27 = (*(v4 + 56) + v25);
        if (*v27 != countAndFlagsBits || v27[1] != object)
        {
          v22 &= v22 - 1;
          if ((sub_22F742040() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_16;
      }

      while (1)
      {
        v24 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v24 >= v23)
        {
          goto LABEL_15;
        }

        v22 = *(v4 + 64 + 8 * v24);
        ++v19;
        if (v22)
        {
          v19 = v24;
          goto LABEL_25;
        }
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_10:
    v13 = (v6[7] + ((v5 << 10) | (16 * __clz(__rbit64(v10)))));
    if (*v13 == countAndFlagsBits && v13[1] == object)
    {
      break;
    }

    v10 &= v10 - 1;
  }

  while ((sub_22F742040() & 1) == 0);
LABEL_15:
  v15 = 0;
  v16 = 0;
LABEL_16:
  v17 = v15;
  v18 = v16;
  result.value._object = v18;
  result.value._countAndFlagsBits = v17;
  return result;
}

uint64_t MusicBagContents.yearlySummaryPlaylistNames()()
{

  v1 = sub_22F144294(v0);
  if (qword_2810AB5D8 != -1)
  {
    swift_once();
  }

  v3 = sub_22F1E8F80(v2, v1);

  sub_22F1E7F04(&unk_2843DA9D8);
  sub_22F1DF3B0(&unk_2843DA9F8);
  return v3;
}

uint64_t sub_22F21F70C()
{
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

double sub_22F21F7B8(uint64_t a1)
{
  sub_22F740D60();

  return result;
}

uint64_t sub_22F21F850(uint64_t a1)
{
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

unint64_t sub_22F21F8F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22F223648(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22F21F928(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001CLL;
  v3 = "";
  v4 = "minimumFailureCadenceSeconds";
  v5 = 0xD000000000000018;
  if (*v1 != 2)
  {
    v5 = 0xD00000000000001CLL;
    v4 = "failureBackoffMultiplier";
  }

  if (*v1)
  {
    v3 = "minimumSuccessCadenceSeconds";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_22F21F994()
{
  v1 = 0xD000000000000018;
  if (*v0 != 2)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0 <= 1u)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_22F21F9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F223648(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F21FA24(uint64_t a1)
{
  v2 = sub_22F2226E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F21FA60(uint64_t a1)
{
  v2 = sub_22F2226E4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t JobConfiguration.JobCadence.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2790, &qword_22F77AD30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v63 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2798, &qword_22F77AD38);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v63 - v10;
  v12 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_22F2226E4();
  sub_22F742200();
  if (v2)
  {

    (*(v9 + 56))(v7, 1, 1, v8);
    sub_22F120ADC(v7, &qword_27DAB2790, &qword_22F77AD30);
    v13 = 1209600.0;
    v14 = 86400.0;
    v15 = 2;
    v16 = 86400.0;
LABEL_95:
    *a2 = v16;
    *(a2 + 8) = v14;
    *(a2 + 16) = v15;
    *(a2 + 24) = v13;
    return __swift_destroy_boxed_opaque_existential_0(v64);
  }

  (*(v9 + 56))(v7, 0, 1, v8);
  (*(v9 + 32))(v11, v7, v8);
  LOBYTE(v65[0]) = 0;
  v17 = sub_22F741E90();
  if (v18)
  {
    LOBYTE(v65[0]) = 0;
    v19 = sub_22F741E50();
    if (v20)
    {
      v65[0] = 0;
      v21 = sub_22F222738(v19, v20, v65);

      if (v21)
      {
        v16 = *v65;
      }

      else
      {
        v16 = 86400.0;
      }
    }

    else
    {
      v16 = 86400.0;
    }
  }

  else
  {
    v16 = v17;
  }

  LOBYTE(v65[0]) = 1;
  v22 = sub_22F741E90();
  if (v23)
  {
    LOBYTE(v65[0]) = 1;
    v24 = sub_22F741E50();
    if (v25)
    {
      v65[0] = 0;
      v26 = sub_22F222738(v24, v25, v65);

      if (v26)
      {
        v14 = *v65;
      }

      else
      {
        v14 = 86400.0;
      }
    }

    else
    {
      v14 = 86400.0;
    }
  }

  else
  {
    v14 = v22;
  }

  LOBYTE(v65[0]) = 2;
  v27 = sub_22F741E90();
  if ((v28 & 1) == 0)
  {
    v15 = v27;
    goto LABEL_89;
  }

  LOBYTE(v65[0]) = 2;
  result = sub_22F741E50();
  if (!v30)
  {
    v15 = 2;
    goto LABEL_89;
  }

  v31 = HIBYTE(v30) & 0xF;
  v32 = result & 0xFFFFFFFFFFFFLL;
  if ((v30 & 0x2000000000000000) != 0)
  {
    v33 = HIBYTE(v30) & 0xF;
  }

  else
  {
    v33 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {

    goto LABEL_88;
  }

  if ((v30 & 0x1000000000000000) != 0)
  {
    sub_22F29C288(result, v30, 10);
    v15 = v59;
    v61 = v60;

    if ((v61 & 1) == 0)
    {
LABEL_89:
      LOBYTE(v65[0]) = 3;
      v53 = sub_22F741E90();
      if (v54)
      {
        LOBYTE(v65[0]) = 3;
        v55 = sub_22F741E50();
        if (v56)
        {
          v65[0] = 0;
          v57 = sub_22F222738(v55, v56, v65);

          (*(v9 + 8))(v11, v8);
          v13 = *v65;
          if (!v57)
          {
            v13 = 1209600.0;
          }
        }

        else
        {
          (*(v9 + 8))(v11, v8);
          v13 = 1209600.0;
        }
      }

      else
      {
        v58 = v53;
        (*(v9 + 8))(v11, v8);
        v13 = v58;
      }

      goto LABEL_95;
    }

LABEL_88:
    v15 = 2;
    goto LABEL_89;
  }

  if ((v30 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v30 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_22F741B80();
      v32 = v62;
    }

    v34 = *result;
    if (v34 == 43)
    {
      if (v32 >= 1)
      {
        if (--v32)
        {
          if (result)
          {
            v15 = 0;
            v41 = (result + 1);
            while (1)
            {
              v42 = *v41 - 48;
              if (v42 > 9)
              {
                goto LABEL_86;
              }

              v43 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                goto LABEL_86;
              }

              v15 = v43 + v42;
              if (__OFADD__(v43, v42))
              {
                goto LABEL_86;
              }

              ++v41;
              if (!--v32)
              {
                goto LABEL_87;
              }
            }
          }

          goto LABEL_77;
        }

        goto LABEL_86;
      }

      goto LABEL_103;
    }

    if (v34 != 45)
    {
      if (v32)
      {
        if (result)
        {
          v15 = 0;
          while (1)
          {
            v47 = *result - 48;
            if (v47 > 9)
            {
              goto LABEL_86;
            }

            v48 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              goto LABEL_86;
            }

            v15 = v48 + v47;
            if (__OFADD__(v48, v47))
            {
              goto LABEL_86;
            }

            ++result;
            if (!--v32)
            {
              goto LABEL_87;
            }
          }
        }

        goto LABEL_77;
      }

LABEL_86:
      v15 = 0;
      LOBYTE(v32) = 1;
      goto LABEL_87;
    }

    if (v32 >= 1)
    {
      if (--v32)
      {
        if (result)
        {
          v15 = 0;
          v35 = (result + 1);
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              goto LABEL_86;
            }

            v37 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              goto LABEL_86;
            }

            v15 = v37 - v36;
            if (__OFSUB__(v37, v36))
            {
              goto LABEL_86;
            }

            ++v35;
            if (!--v32)
            {
              goto LABEL_87;
            }
          }
        }

LABEL_77:
        v15 = 0;
LABEL_78:
        LOBYTE(v32) = 0;
LABEL_87:
        v66 = v32;
        v52 = v32;

        if ((v52 & 1) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_88;
      }

      goto LABEL_86;
    }

    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v65[0] = result;
  v65[1] = v30 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v31)
      {
        v15 = 0;
        v49 = v65;
        while (1)
        {
          v50 = *v49 - 48;
          if (v50 > 9)
          {
            break;
          }

          v51 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v51 + v50;
          if (__OFADD__(v51, v50))
          {
            break;
          }

          ++v49;
          if (!--v31)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_86;
    }

    if (v31)
    {
      v32 = v31 - 1;
      if (v31 != 1)
      {
        v15 = 0;
        v38 = v65 + 1;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v40 - v39;
          if (__OFSUB__(v40, v39))
          {
            break;
          }

          ++v38;
          if (!--v32)
          {
            goto LABEL_87;
          }
        }
      }

      goto LABEL_86;
    }

    goto LABEL_102;
  }

  if (v31)
  {
    v32 = v31 - 1;
    if (v31 != 1)
    {
      v15 = 0;
      v44 = v65 + 1;
      while (1)
      {
        v45 = *v44 - 48;
        if (v45 > 9)
        {
          break;
        }

        v46 = 10 * v15;
        if ((v15 * 10) >> 64 != (10 * v15) >> 63)
        {
          break;
        }

        v15 = v46 + v45;
        if (__OFADD__(v46, v45))
        {
          break;
        }

        ++v44;
        if (!--v32)
        {
          goto LABEL_87;
        }
      }
    }

    goto LABEL_86;
  }

LABEL_104:
  __break(1u);
  return result;
}

uint64_t JobConfiguration.JobCadence.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB27A0, &qword_22F77AD40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *v1;
  v13 = *(v1 + 16);
  v11 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2226E4();
  result = sub_22F742210();
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = 0;
  result = sub_22F741FC0();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = 1;
  sub_22F741FC0();
  v15 = 2;
  result = sub_22F741FC0();
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11 < 9.22337204e18)
  {
    v14 = 3;
    sub_22F741FC0();
    return (*(v5 + 8))(v7, v4);
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_22F2205A8()
{
  result = 0x726F46636973756DLL;
  v2 = *v0;
  if (v2 > 2)
  {
    v3 = 0xD000000000000015;
    if (v2 == 5)
    {
      v3 = 0xD000000000000014;
    }

    v4 = 0xD000000000000011;
    if (v2 != 3)
    {
      v4 = 0x726F46636973756DLL;
    }

    if (*v0 <= 4u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t sub_22F220680@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F223694(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F2206B4(uint64_t a1)
{
  v2 = sub_22F222BFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F2206F0(uint64_t a1)
{
  v2 = sub_22F222BFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JobConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB27A8, &qword_22F77AD48);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + 2);
  v42 = *(v1 + 3);
  v43 = v11;
  v48 = *(v1 + 64);
  v12 = v1[9];
  v40 = v1[10];
  v41 = v12;
  v39 = v1[11];
  *&v11 = v1[13];
  v38 = v1[12];
  v37 = v11;
  v13 = v1[14];
  v36 = v1[15];
  v15 = v1[16];
  v14 = v1[17];
  v16 = v1[18];
  v35 = v1[19];
  v17 = v1[20];
  v33 = *(v1 + 23);
  v34 = *(v1 + 21);
  v32 = *(v1 + 200);
  v18 = *(v1 + 13);
  v30 = *(v1 + 14);
  v31 = v18;
  v19 = *(v1 + 240);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F222BFC();
  v20 = v3;
  sub_22F742210();
  *&v45 = v7;
  *(&v45 + 1) = v8;
  *&v46 = v9;
  *(&v46 + 1) = v10;
  v49 = 0;
  sub_22F222C50();
  v21 = v44;
  sub_22F741FE0();
  if (v21)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v22 = v39;
  v23 = v38;
  v24 = v40;
  v25 = v41;
  v26 = v36;
  v44 = v15;
  v27 = v37;
  v28 = v35;
  v45 = v43;
  v46 = v42;
  v47 = v48;
  v49 = 1;
  sub_22F741F70();
  *&v45 = v25;
  *(&v45 + 1) = v24;
  *&v46 = v22;
  *(&v46 + 1) = v23;
  v49 = 2;
  sub_22F741FE0();
  *&v45 = v27;
  *(&v45 + 1) = v13;
  *&v46 = v26;
  *(&v46 + 1) = v44;
  v49 = 3;
  sub_22F741FE0();
  *&v45 = v14;
  *(&v45 + 1) = v16;
  *&v46 = v28;
  *(&v46 + 1) = v17;
  v49 = 4;
  sub_22F741FE0();
  v45 = v34;
  v46 = v33;
  v47 = v32;
  v49 = 5;
  sub_22F741F70();
  v45 = v31;
  v46 = v30;
  v47 = v19;
  v49 = 6;
  sub_22F741F70();
  return (*(v4 + 8))(v6, v20);
}