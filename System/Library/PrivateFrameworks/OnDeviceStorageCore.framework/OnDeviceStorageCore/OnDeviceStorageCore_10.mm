uint64_t ColumnDefinition.OnConflict.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x4B4341424C4C4F52;
  v3 = 1279869254;
  v4 = 0x45524F4E4749;
  if (v1 != 3)
  {
    v4 = 0x4543414C504552;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x54524F4241;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

OnDeviceStorageCore::ColumnDefinition::OnConflict_optional __swiftcall ColumnDefinition.OnConflict.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DB265018()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB2650EC(uint64_t a1)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB2651AC(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB265288(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x4B4341424C4C4F52;
  v5 = 0xE400000000000000;
  v6 = 1279869254;
  v7 = 0xE600000000000000;
  v8 = 0x45524F4E4749;
  if (v2 != 3)
  {
    v8 = 0x4543414C504552;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x54524F4241;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

id sub_1DB265328()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1DB23CB20(0xD000000000000048, 0x80000001DB2D6D70, 0);
  qword_1EE14C860 = result;
  return result;
}

uint64_t ColumnDefinition.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ColumnDefinition.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 40);
  *(a1 + 16) = v4;
  return sub_1DB262884(v2, v3, v4);
}

uint64_t ColumnDefinition.references.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[6];
  v9 = v1[5];
  v10 = v2;
  v11 = v1[7];
  v3 = v11;
  v4 = v1[4];
  v8[0] = v1[3];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1DB267B2C(v8, &v7);
}

__n128 ColumnDefinition.init(name:primaryKey:type:nullable:defaultValue:references:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *(a6 + 16);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = v8;
  *(a8 + 18) = v9;
  *(a8 + 19) = a5;
  *(a8 + 24) = *a6;
  *(a8 + 40) = v10;
  v11 = *(a7 + 48);
  *(a8 + 80) = *(a7 + 32);
  *(a8 + 96) = v11;
  *(a8 + 112) = *(a7 + 64);
  result = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = result;
  return result;
}

uint64_t sub_1DB265534@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = 0uLL;
  if (!a2)
  {
LABEL_10:
    v7 = 3;
    goto LABEL_11;
  }

  v6 = result;
  if ((result != 1280070990 || a2 != 0xE400000000000000) && (sub_1DB2BB924() & 1) == 0)
  {
    if (v6 == 1163219540 && a2 == 0xE400000000000000 || (sub_1DB2BB924() & 1) != 0)
    {

      v4 = xmmword_1DB2C77D0;
    }

    else if (v6 == 0x45534C4146 && a2 == 0xE500000000000000 || (sub_1DB2BB924() & 1) != 0)
    {

      v4 = xmmword_1DB2C77C0;
    }

    else if (v6 == 0x5F544E4552525543 && a2 == 0xEC000000454D4954 || (sub_1DB2BB924() & 1) != 0)
    {

      v4 = xmmword_1DB2CD1D0;
    }

    else if (v6 == 0xD000000000000011 && 0x80000001DB2D46C0 == a2 || (sub_1DB2BB924() & 1) != 0)
    {

      v4 = xmmword_1DB2CD1C0;
    }

    else
    {
      if ((v6 != 0x5F544E4552525543 || a2 != 0xEC00000045544144) && (sub_1DB2BB924() & 1) == 0)
      {
        sub_1DB265784(v6, a2, &v8);

        v4 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      v4 = xmmword_1DB2C77A0;
    }

    goto LABEL_10;
  }

  v7 = 3;
  v4 = 0uLL;
LABEL_11:
  *a3 = v4;
  *(a3 + 16) = v7;
  return result;
}

void sub_1DB265784(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1EE13EC50 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE13EC58;
  v7 = sub_1DB2BAD64();
  v8 = [v6 firstMatchInString:v7 options:0 range:{0, sub_1DB2BAE94()}];

  if (v8)
  {
    goto LABEL_4;
  }

  if (qword_1EE13EC60 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE13EC68;
  v16 = sub_1DB2BAD64();
  v8 = [v15 firstMatchInString:v16 options:0 range:{0, sub_1DB2BAE94()}];

  if (v8)
  {
LABEL_4:
    v9 = sub_1DB2BAD64();
    v10 = 1;
    v11 = [v8 rangeAtIndex_];
    v13 = [v9 substringWithRange_];

    sub_1DB2BAD94();
    sub_1DB143508();
    a1 = sub_1DB2BB3D4();
    a2 = v14;
  }

  else
  {
    if (qword_1EE13EC40 != -1)
    {
      swift_once();
    }

    v17 = qword_1EE13EC48;
    v18 = sub_1DB2BAD64();
    v19 = [v17 firstMatchInString:v18 options:0 range:{0, sub_1DB2BAE94()}];

    if (v19)
    {
      v20 = sub_1DB2BAD64();
      v21 = [v19 rangeAtIndex_];
      v23 = [v20 substringWithRange_];

      a1 = sub_1DB2BAD94();
      a2 = v24;

      v10 = 2;
    }

    else
    {

      v10 = 0;
    }
  }

  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v10;
}

unint64_t LiteralValue.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      v3 = sub_1DB2B995C(39, 0xE100000000000000, v1, v2);
      MEMORY[0x1E1283490](v3);

      return 88;
    }

    else
    {
      v4 = 1280070990;
      if (v1 ^ 4 | v2)
      {
        v5 = 0xD000000000000011;
      }

      else
      {
        v5 = 0x5F544E4552525543;
      }

      if (v1 ^ 3 | v2)
      {
        v6 = v5;
      }

      else
      {
        v6 = 0x5F544E4552525543;
      }

      if (v1 ^ 1 | v2)
      {
        v7 = 0x45534C4146;
      }

      else
      {
        v7 = 1163219540;
      }

      if (v1 | v2)
      {
        v4 = v7;
      }

      if (v1 <= 2)
      {
        return v4;
      }

      else
      {
        return v6;
      }
    }
  }

  else if (*(v0 + 16))
  {
    return sub_1DB2B995C(39, 0xE100000000000000, *v0, *(v0 + 8));
  }

  else
  {
  }

  return v1;
}

id sub_1DB265D78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1DB23CB20(a2, a3, 0);
  *a4 = result;
  return result;
}

OnDeviceStorageCore::IndexDefinition::Order_optional __swiftcall IndexDefinition.Order.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

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

uint64_t IndexDefinition.Order.rawValue.getter()
{
  if (*v0)
  {
    return 1129530692;
  }

  else
  {
    return 4412225;
  }
}

uint64_t sub_1DB265E94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1129530692;
  }

  else
  {
    v3 = 4412225;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1129530692;
  }

  else
  {
    v5 = 4412225;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
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
    v8 = sub_1DB2BB924();
  }

  return v8 & 1;
}

uint64_t sub_1DB265F2C()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB265FA0(uint64_t a1)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB266000(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB266070@<X0>(char *a2@<X8>)
{
  v3 = sub_1DB2BB6F4();

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

void sub_1DB2660D0(uint64_t *a1@<X8>)
{
  v2 = 4412225;
  if (*v1)
  {
    v2 = 1129530692;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void *sub_1DB266100(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2)
{
  if (qword_1EE13E9B8 != -1)
  {
LABEL_27:
    swift_once();
  }

  v4 = qword_1EE14C870;
  v5 = sub_1DB2BAD64();
  v6 = [v4 matchesInString:v5 options:0 range:{0, sub_1DB2BAE94()}];

  sub_1DB268248();
  v7 = sub_1DB2BB0C4();

  if (v7 >> 62)
  {
    v8 = sub_1DB2BB694();
    if (v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_4:
      v9 = 0;
      v38 = v7 & 0xFFFFFFFFFFFFFF8;
      v39 = v7 & 0xC000000000000001;
      v10 = MEMORY[0x1E69E7CC8];
      v36 = v8;
      v37 = v7;
      v35 = isUniquelyReferenced_nonNull_native;
      while (1)
      {
        if (v39)
        {
          v12 = MEMORY[0x1E1283AD0](v9, v7);
        }

        else
        {
          if (v9 >= *(v38 + 16))
          {
            goto LABEL_24;
          }

          v12 = *(v7 + 8 * v9 + 32);
        }

        v13 = v12;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v40 = v9 + 1;

        v14 = a2;
        v15 = sub_1DB2BAD64();
        v16 = v13;
        v17 = [v13 rangeAtIndex_];
        v19 = [v15 substringWithRange_];

        v20 = sub_1DB2BAD94();
        v22 = v21;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = sub_1DB141B30(v20, v22);
        v25 = v10[2];
        v26 = (v23 & 1) == 0;
        v27 = v25 + v26;
        if (__OFADD__(v25, v26))
        {
          goto LABEL_25;
        }

        a2 = v23;
        if (v10[3] >= v27)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v23)
            {
              goto LABEL_5;
            }
          }

          else
          {
            sub_1DB29EB44();
            if (a2)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          sub_1DB29DC44(v27, isUniquelyReferenced_nonNull_native);
          v28 = sub_1DB141B30(v20, v22);
          if ((a2 & 1) != (v29 & 1))
          {
            result = sub_1DB2BB984();
            __break(1u);
            return result;
          }

          v24 = v28;
          if (a2)
          {
LABEL_5:

            v11 = v10;
            *(v10[7] + v24) = 1;

            goto LABEL_6;
          }
        }

        v11 = v10;
        v10[(v24 >> 6) + 8] |= 1 << v24;
        v30 = (v10[6] + 16 * v24);
        *v30 = v20;
        v30[1] = v22;
        *(v10[7] + v24) = 1;

        v31 = v10[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_26;
        }

        v10[2] = v33;
LABEL_6:
        v10 = v11;
        ++v9;
        isUniquelyReferenced_nonNull_native = v35;
        a2 = v14;
        v7 = v37;
        if (v40 == v36)
        {
          goto LABEL_30;
        }
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC8];
LABEL_30:

  return v10;
}

uint64_t IndexDefinition.table.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IndexDefinition.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IndexDefinition.where.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1DB2664FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DB2BB4F4();
  MEMORY[0x1E1283490](0x616E207865646E49, 0xEC0000002720656DLL);
  MEMORY[0x1E1283490](a1, a2);
  MEMORY[0x1E1283490](0x626174206E6F2027, 0xEC0000002720656CLL);
  MEMORY[0x1E1283490](a3, a4);
  MEMORY[0x1E1283490](0xD00000000000001CLL, 0x80000001DB2D6DC0);
  v10 = sub_1DB2BB8F4();
  v11 = v8;
  MEMORY[0x1E1283490](0x7463617261686320, 0xEB00000000737265);

  MEMORY[0x1E1283490](v10, v11);

  return 0;
}

uint64_t ForeignKeyError.from.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ForeignKeyError.to.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ForeignKeyError.description.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  v5 = *v0;

  MEMORY[0x1E1283490](23328, 0xE200000000000000);
  v3 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v3);

  MEMORY[0x1E1283490](0x203E3D205DLL, 0xE500000000000000);
  MEMORY[0x1E1283490](v1, v2);
  return v5;
}

void sub_1DB26678C()
{
  v1 = 0;
  v2 = 0;
  v3 = 0x52434E494F545541;
  if (!*v0)
  {
    v3 = 0;
  }

  v4 = 0xED0000544E454D45;
  if (!*v0)
  {
    v4 = 0;
  }

  v21 = v3;
  v22 = v4;
  v5 = v0[1];
  v20 = xmmword_1DB2C5DD0;
  if (v5 != 5)
  {
    strcpy(v19, "ON CONFLICT ");
    BYTE5(v19[1]) = 0;
    HIWORD(v19[1]) = -5120;
    if (v5 <= 1)
    {
      if (v5)
      {
        v6 = 0x54524F4241;
      }

      else
      {
        v6 = 0x4B4341424C4C4F52;
      }

      if (v5)
      {
        v7 = 0xE500000000000000;
      }

      else
      {
        v7 = 0xE800000000000000;
      }
    }

    else if (v5 == 2)
    {
      v7 = 0xE400000000000000;
      v6 = 1279869254;
    }

    else
    {
      if (v5 == 3)
      {
        v6 = 0x45524F4E4749;
      }

      else
      {
        v6 = 0x4543414C504552;
      }

      if (v5 == 3)
      {
        v7 = 0xE600000000000000;
      }

      else
      {
        v7 = 0xE700000000000000;
      }
    }

    MEMORY[0x1E1283490](v6, v7, xmmword_1DB2C5DD0);

    v1 = v19[0];
    v2 = v19[1];
  }

  v8 = 0;
  v23 = v1;
  v24 = v2;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_23:
  if (v8 <= 3)
  {
    v10 = 3;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10 + 1;
  v12 = 16 * v8 + 40;
  while (1)
  {
    if (v8 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28D28, &unk_1DB2CD1F8);
      swift_arrayDestroy();
      v19[0] = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
      sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
      sub_1DB2BAD24();

      return;
    }

    if (v11 == ++v8)
    {
      break;
    }

    v13 = v12 + 16;
    v14 = *(&v19[2] + v12);
    v12 += 16;
    if (v14)
    {
      v15 = *(&v19[-1] + v13);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1DB1572F0(0, *(v9 + 2) + 1, 1, v9);
      }

      v17 = *(v9 + 2);
      v16 = *(v9 + 3);
      if (v17 >= v16 >> 1)
      {
        v9 = sub_1DB1572F0((v16 > 1), v17 + 1, 1, v9);
      }

      *(v9 + 2) = v17 + 1;
      v18 = &v9[16 * v17];
      *(v18 + 4) = v15;
      *(v18 + 5) = v14;
      goto LABEL_23;
    }
  }

  __break(1u);
}

uint64_t sub_1DB266A48()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v27 = xmmword_1DB2CD1E0;
  result = sub_1DB2B995C(34, 0xE100000000000000, v1, v2);
  v28 = result;
  v29 = v10;
  if (v3)
  {
    v11 = sub_1DB2B995C(34, 0xE100000000000000, v4, v3);
    MEMORY[0x1E1283490](v11);

    result = MEMORY[0x1E1283490](41, 0xE100000000000000);
    v4 = 40;
    v12 = 0xE100000000000000;
  }

  else
  {
    v12 = 0;
  }

  v30 = v4;
  v31 = v12;
  if (!v6)
  {
    v32 = v5;
    v33 = 0;
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  result = MEMORY[0x1E1283490](v5, v6);
  v32 = 0x5441445055204E4FLL;
  v33 = 0xEA00000000002045;
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  result = MEMORY[0x1E1283490](v7, v8);
  v7 = 0x54454C4544204E4FLL;
  v13 = 0xEA00000000002045;
LABEL_9:
  v14 = 0;
  v34 = v7;
  v35 = v13;
  v15 = MEMORY[0x1E69E7CC0];
LABEL_10:
  if (v14 <= 5)
  {
    v16 = 5;
  }

  else
  {
    v16 = v14;
  }

  v17 = v16 + 1;
  v18 = 16 * v14 + 40;
  while (1)
  {
    if (v14 == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28D28, &unk_1DB2CD1F8);
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
      sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
      v25 = sub_1DB2BAD24();

      return v25;
    }

    if (v17 == ++v14)
    {
      break;
    }

    v19 = v18 + 16;
    v20 = *&v26[v18];
    v18 += 16;
    if (v20)
    {
      v21 = *&v26[v19 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DB1572F0(0, *(v15 + 16) + 1, 1, v15);
        v15 = result;
      }

      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_1DB1572F0((v22 > 1), v23 + 1, 1, v15);
        v15 = result;
      }

      *(v15 + 16) = v23 + 1;
      v24 = v15 + 16 * v23;
      *(v24 + 32) = v21;
      *(v24 + 40) = v20;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB266CFC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v28 = (v7 - 1) & v7;
LABEL_14:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(result + 56) + v12);
    v18 = v15 == 0;

    if (!v15)
    {
      return v18;
    }

    v19 = sub_1DB141B30(v16, v15);
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      return v18;
    }

    if (*(*(a2 + 56) + v19))
    {
      v22 = 1129530692;
    }

    else
    {
      v22 = 4412225;
    }

    if (*(*(a2 + 56) + v19))
    {
      v23 = 0xE400000000000000;
    }

    else
    {
      v23 = 0xE300000000000000;
    }

    if (v17)
    {
      v24 = 1129530692;
    }

    else
    {
      v24 = 4412225;
    }

    if (v17)
    {
      v25 = 0xE400000000000000;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    if (v22 == v24 && v23 == v25)
    {

      result = v13;
      v7 = v28;
    }

    else
    {
      v27 = sub_1DB2BB924();

      result = v13;
      v7 = v28;
      if ((v27 & 1) == 0)
      {
        return v18;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v28 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s19OnDeviceStorageCore12LiteralValueO2eeoiySbAC_ACtFZ_0(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v7 == 2)
      {
        v14 = *a1;
        if (v3 != v6 || v2 != v5)
        {
          v10 = sub_1DB2BB924();
          sub_1DB262884(v6, v5, 2u);
          sub_1DB262884(v3, v2, 2u);
          sub_1DB26289C(v3, v2, 2u);
          v11 = v6;
          v12 = v5;
          v13 = 2;
          goto LABEL_22;
        }

        sub_1DB262884(v14, v2, 2u);
        sub_1DB262884(v3, v2, 2u);
        sub_1DB26289C(v3, v2, 2u);
        v19 = v3;
        v20 = v2;
        v21 = 2;
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    if (v3 > 2)
    {
      if (v3 ^ 3 | v2)
      {
        if (v3 ^ 4 | v2)
        {
          if (v7 != 3 || v6 != 5 || v5)
          {
            goto LABEL_56;
          }

          sub_1DB26289C(*a1, v2, 3u);
          v19 = 5;
        }

        else
        {
          if (v7 != 3 || v6 != 4 || v5)
          {
            goto LABEL_56;
          }

          sub_1DB26289C(*a1, v2, 3u);
          v19 = 4;
        }
      }

      else
      {
        if (v7 != 3 || v6 != 3 || v5)
        {
          goto LABEL_56;
        }

        sub_1DB26289C(*a1, v2, 3u);
        v19 = 3;
      }
    }

    else if (v3 | v2)
    {
      if (!(v3 ^ 1 | v2))
      {
        if (v7 != 3 || v6 != 1 || v5)
        {
          goto LABEL_56;
        }

        sub_1DB26289C(*a1, v2, 3u);
        v18 = 1;
        sub_1DB26289C(1, 0, 3u);
        return v18;
      }

      if (v7 != 3 || v6 != 2 || v5)
      {
        goto LABEL_56;
      }

      sub_1DB26289C(*a1, v2, 3u);
      v19 = 2;
    }

    else
    {
      if (v7 != 3 || v5 | v6)
      {
        goto LABEL_56;
      }

      sub_1DB26289C(*a1, v2, 3u);
      v19 = 0;
    }

    v20 = 0;
    v21 = 3;
LABEL_55:
    sub_1DB26289C(v19, v20, v21);
    return 1;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_1DB2BB924();
        sub_1DB262884(v6, v5, 0);
        sub_1DB262884(v3, v2, 0);
        sub_1DB26289C(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
LABEL_22:
        sub_1DB26289C(v11, v12, v13);
        return v10 & 1;
      }

      sub_1DB262884(v8, v2, 0);
      sub_1DB262884(v3, v2, 0);
      sub_1DB26289C(v3, v2, 0);
      v19 = v3;
      v20 = v2;
      v21 = 0;
      goto LABEL_55;
    }

LABEL_56:
    sub_1DB262884(*a2, *(a2 + 8), v7);
    sub_1DB262884(v3, v2, v4);
    sub_1DB26289C(v3, v2, v4);
    sub_1DB26289C(v6, v5, v7);
    return 0;
  }

  if (v7 != 1)
  {
    goto LABEL_56;
  }

  if (v3 != v6 || v2 != v5)
  {
    v10 = sub_1DB2BB924();
    sub_1DB262884(v6, v5, 1u);
    sub_1DB262884(v3, v2, 1u);
    sub_1DB26289C(v3, v2, 1u);
    v11 = v6;
    v12 = v5;
    v13 = 1;
    goto LABEL_22;
  }

  v18 = 1;
  sub_1DB262884(*a1, v2, 1u);
  sub_1DB262884(v3, v2, 1u);
  sub_1DB26289C(v3, v2, 1u);
  sub_1DB26289C(v3, v2, 1u);
  return v18;
}

BOOL _s19OnDeviceStorageCore15IndexDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a1[5];
  v6 = a1[7];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = a1[6];
  v11 = *(a2 + 56);
  v17 = *(a2 + 64);
  v18 = a1[8];
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1DB2BB924() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v4 != v9)
    {
      return 0;
    }

LABEL_10:
    if (sub_1DB1375FC(v5, v10))
    {
      if (v6)
      {
        if (!v11 || (v16 != v15 || v6 != v11) && (sub_1DB2BB924() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v11)
      {
        return 0;
      }

      if (v18)
      {
        if (!v17)
        {
          return 0;
        }

        v14 = sub_1DB266CFC(v18, v17);

        return (v14 & 1) != 0;
      }

      if (!v17)
      {
        return 1;
      }
    }

    return 0;
  }

  v12 = sub_1DB2BB924();
  result = 0;
  if ((v12 & 1) != 0 && ((v4 ^ v9) & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}

BOOL _s19OnDeviceStorageCore16ColumnDefinitionV10PrimaryKeyV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 == 5)
  {
    return v4 == 5;
  }

  return v4 != 5 && (sub_1DB236900(v3, v4) & 1) != 0;
}

uint64_t _s19OnDeviceStorageCore16ColumnDefinitionV10ForeignKeyV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v18 = a1[9];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[7];
  v15 = a2[6];
  v16 = a1[6];
  v13 = a2[8];
  v14 = a1[8];
  v17 = a2[9];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1DB2BB924() & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_1DB2BB924() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v4 != v10 || v5 != v9) && (sub_1DB2BB924() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v16 != v15 || v6 != v11) && (sub_1DB2BB924() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v18)
  {
    if (v17 && (v14 == v13 && v18 == v17 || (sub_1DB2BB924() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v17)
  {
    return 1;
  }

  return 0;
}

uint64_t _s19OnDeviceStorageCore16ColumnDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = *(a1 + 8);
  v9 = *(a1 + 18);
  v31 = *(a1 + 19);
  v29 = a1[4];
  v30 = a1[3];
  v28 = *(a1 + 40);
  v10 = *(a1 + 6);
  v64 = *(a1 + 5);
  v65 = v10;
  v66 = *(a1 + 7);
  v11 = *(a1 + 4);
  v62 = *(a1 + 3);
  v63 = v11;
  v12 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 8);
  v15 = *(a2 + 18);
  v16 = *(a2 + 19);
  v17 = a2[3];
  v18 = a2[4];
  v19 = *(a2 + 40);
  v20 = *(a2 + 7);
  v70 = *(a2 + 6);
  v71 = v20;
  v21 = *(a2 + 5);
  v68 = *(a2 + 4);
  v69 = v21;
  v67 = *(a2 + 3);
  if ((v4 != v12 || v5 != v13) && (sub_1DB2BB924() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (v8 == 2)
  {
    if (v14 != 2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v14 == 2 || ((v6 ^ v14) & 1) != 0)
    {
      goto LABEL_14;
    }

    if (v7 == 5)
    {
      if (v14 >> 8 != 5)
      {
        goto LABEL_14;
      }
    }

    else if (v14 >> 8 == 5 || (sub_1DB236900(v7, BYTE1(v14)) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v22 = sub_1DB2367AC(v9, v15);
  v23 = 0;
  if ((v22 & 1) != 0 && ((v31 ^ v16) & 1) == 0)
  {
    *&v44 = v30;
    *(&v44 + 1) = v29;
    LOBYTE(v45) = v28;
    *&v39 = v17;
    *(&v39 + 1) = v18;
    LOBYTE(v40) = v19;
    sub_1DB262884(v30, v29, v28);
    sub_1DB262884(v17, v18, v19);
    v24 = _s19OnDeviceStorageCore12LiteralValueO2eeoiySbAC_ACtFZ_0(&v44, &v39);
    sub_1DB26289C(v39, *(&v39 + 1), v40);
    sub_1DB26289C(v44, *(&v44 + 1), v45);
    if (v24)
    {
      v25 = v62;
      v58 = v63;
      v59 = v64;
      v60 = v65;
      v61 = v66;
      v26 = v67;
      v56 = v70;
      v57 = v71;
      v54 = v68;
      v55 = v69;
      if (*(&v62 + 1))
      {
        v44 = v62;
        v45 = v63;
        v46 = v64;
        v47 = v65;
        v48 = v66;
        v41 = v64;
        v42 = v65;
        v43 = v66;
        v39 = v62;
        v40 = v63;
        if (*(&v67 + 1))
        {
          v35 = v68;
          v36 = v69;
          v37 = v70;
          v38 = v71;
          v34 = v67;
          v23 = _s19OnDeviceStorageCore16ColumnDefinitionV10ForeignKeyV2eeoiySbAE_AEtFZ_0(&v39, &v34);
          v32[2] = v36;
          v32[3] = v37;
          v32[4] = v38;
          v32[0] = v34;
          v32[1] = v35;
          sub_1DB267B2C(&v62, v33);
          sub_1DB267B2C(&v67, v33);
          sub_1DB267B2C(&v44, v33);
          sub_1DB268294(v32);
          v33[2] = v41;
          v33[3] = v42;
          v33[4] = v43;
          v33[0] = v39;
          v33[1] = v40;
          sub_1DB268294(v33);
          v34 = v25;
          v35 = v58;
          v36 = v59;
          v37 = v60;
          v38 = v61;
          sub_1DB1445E0(&v34, &qword_1ECC28D20, &unk_1DB2CD150);
          return v23 & 1;
        }

        v36 = v46;
        v37 = v47;
        v38 = v48;
        v34 = v44;
        v35 = v45;
        sub_1DB267B2C(&v62, v33);
        sub_1DB267B2C(&v67, v33);
        sub_1DB267B2C(&v44, v33);
        sub_1DB268294(&v34);
      }

      else
      {
        if (!*(&v67 + 1))
        {
          v44 = v62;
          v45 = v63;
          v46 = v64;
          v47 = v65;
          v48 = v66;
          sub_1DB267B2C(&v62, &v39);
          sub_1DB267B2C(&v67, &v39);
          sub_1DB1445E0(&v44, &qword_1ECC28D20, &unk_1DB2CD150);
          v23 = 1;
          return v23 & 1;
        }

        sub_1DB267B2C(&v62, &v44);
        sub_1DB267B2C(&v67, &v44);
      }

      v44 = v25;
      v45 = v58;
      v46 = v59;
      v47 = v60;
      v48 = v61;
      v49 = v26;
      v50 = v54;
      v51 = v55;
      v52 = v56;
      v53 = v57;
      sub_1DB1445E0(&v44, &qword_1ECC28D70, &qword_1DB2CDAA0);
      v23 = 0;
      return v23 & 1;
    }

LABEL_14:
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t _s19OnDeviceStorageCore16ObjectDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a1 + 48);
  v16 = *(a2 + 56);
  v17 = *(a1 + 56);
  if ((sub_1DB236684(*a1, *a2) & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_1DB2BB924() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v9 && v5 == v10)
  {
    if (v6 != v11)
    {
      return 0;
    }

LABEL_11:
    if (v17)
    {
      if (!v16 || (v15 != v14 || v17 != v16) && (sub_1DB2BB924() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v16)
    {
      return 0;
    }

    return 1;
  }

  v12 = sub_1DB2BB924();
  result = 0;
  if ((v12 & 1) != 0 && v6 == v11)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1DB267B2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28D20, &unk_1DB2CD150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DB267BA0()
{
  result = qword_1ECC28D30;
  if (!qword_1ECC28D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28D30);
  }

  return result;
}

unint64_t sub_1DB267BF8()
{
  result = qword_1ECC28D38;
  if (!qword_1ECC28D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28D38);
  }

  return result;
}

unint64_t sub_1DB267C94()
{
  result = qword_1ECC28D50;
  if (!qword_1ECC28D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28D50);
  }

  return result;
}

unint64_t sub_1DB267D30()
{
  result = qword_1ECC28D68;
  if (!qword_1ECC28D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28D68);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DB267DA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB267DF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB267E60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1DB267EA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ColumnDefinition.PrimaryKey(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ColumnDefinition.PrimaryKey(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1DB2680B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1DB268100(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB268164(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1DB2681AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DB2681F0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1DB268248()
{
  result = qword_1EE13E530;
  if (!qword_1EE13E530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE13E530);
  }

  return result;
}

uint64_t sub_1DB2682C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DB26830C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

OnDeviceStorageCore::LogMessage::StringInterpolation __swiftcall LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)(OnDeviceStorageCore::LogMessage::StringInterpolation literalCapacity, Swift::Int interpolationCount)
{
  v3 = v2;
  if (__OFADD__(literalCapacity.components._rawValue, interpolationCount))
  {
    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    v2->components._rawValue = MEMORY[0x1E69E7CC0];
    literalCapacity.components._rawValue = sub_1DB156674(0, (literalCapacity.components._rawValue + interpolationCount) & ~((literalCapacity.components._rawValue + interpolationCount) >> 63), 0, v4);
    v3->components._rawValue = literalCapacity.components._rawValue;
  }

  return literalCapacity;
}

Swift::Void __swiftcall LogMessage.StringInterpolation.appendLiteral(_:)(Swift::String a1)
{
  v2 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v2 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v11 = MEMORY[0x1E69E6158];
    v10 = a1;
    v12 = 0u;
    v13 = 0u;

    sub_1DB156864(&v10, &v12);
    v14 = 0;
    v3 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_1DB156674(0, *(v3 + 2) + 1, 1, v3);
      *v1 = v3;
    }

    v6 = *(v3 + 2);
    v5 = *(v3 + 3);
    if (v6 >= v5 >> 1)
    {
      v3 = sub_1DB156674((v5 > 1), v6 + 1, 1, v3);
    }

    *(v3 + 2) = v6 + 1;
    v7 = &v3[40 * v6];
    v8 = v12;
    v9 = v13;
    v7[64] = v14;
    *(v7 + 2) = v8;
    *(v7 + 3) = v9;
    *v1 = v3;
  }
}

OnDeviceStorageCore::LogMessage __swiftcall LogMessage.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274E0, &unk_1DB2BFDE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB2BCC40;
  v7[3] = MEMORY[0x1E69E6158];
  v7[0] = countAndFlagsBits;
  v7[1] = object;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  result.components._rawValue = sub_1DB156864(v7, v5 + 32);
  *(v5 + 64) = 0;
  *v4 = v5;
  return result;
}

uint64_t LogMessage.ValueTreatment.hashValue.getter()
{
  v1 = *v0;
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](v1);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB26870C@<X0>(uint64_t a2@<X8>)
{
  sub_1DB2BAD44();
  sub_1DB26A114();
  v3 = sub_1DB2BAFC4();
  v5 = v4;
  swift_getObjectType();
  v8[0] = sub_1DB2BBB14();
  v8[1] = v6;
  MEMORY[0x1E1283490](7876666, 0xE300000000000000);
  MEMORY[0x1E1283490](v3, v5);

  v8[3] = MEMORY[0x1E69E6158];
  swift_unknownObjectRelease();
  *a2 = 0u;
  *(a2 + 16) = 0u;
  result = sub_1DB156864(v8, a2);
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_1DB2687EC(char a1)
{
  v2 = v1;
  v4 = sub_1DB2BAC94();
  v39 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DB2BAB44();
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB2BA824();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - v15;
  sub_1DB1567F4(v2, &v44);
  if (!v45)
  {
    sub_1DB1445E0(&v44, &qword_1ECC26F30, &unk_1DB2BFA90);
    return 0x296C6C756E28;
  }

  sub_1DB144640(&v44, &v46);
  v17 = *(v2 + 32);
  LOBYTE(v44) = a1 & 1;
  BYTE1(v44) = v17;
  sub_1DB1444CC(&v46, &v44 + 8);
  if ((a1 & 1) == 0)
  {
    goto LABEL_13;
  }

  if (BYTE1(v44))
  {
    if (BYTE1(v44) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v44 + 1);
      __swift_destroy_boxed_opaque_existential_1(&v46);
      return 0x657461766972705BLL;
    }

    else
    {
      sub_1DB144640((&v44 + 8), &v42);
      v20 = __swift_project_boxed_opaque_existential_1(&v42, v43);
      MEMORY[0x1EEE9AC00](v20);
      (*(v22 + 16))(&v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      v23 = sub_1DB2BADF4();
      v25 = sub_1DB2B73AC(v23, v24);
      v27 = v26;
      sub_1DB26A7A0(&qword_1ECC28568, MEMORY[0x1E6966640], MEMORY[0x1E6966638]);
      sub_1DB2BAB34();
      sub_1DB226094(v25, v27);
      sub_1DB26A520(v25, v27, v6);
      sub_1DB207494(v25, v27);
      sub_1DB2BAB24();
      (*(v39 + 8))(v6, v4);
      v41 = sub_1DB269370(v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
      sub_1DB26A700(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60);
      v28 = sub_1DB2BAD24();
      sub_1DB207494(v25, v27);

      (*(v40 + 8))(v9, v7);
      __swift_destroy_boxed_opaque_existential_1(&v42);
      __swift_destroy_boxed_opaque_existential_1(&v46);
      return v28;
    }
  }

  if (swift_dynamicCast())
  {
    (*(v11 + 32))(v14, v16, v10);
    v19 = _s10Foundation3URLV19OnDeviceStorageCoreE13datatypeValueSSvg_0();
    (*(v11 + 8))(v14, v10);
    __swift_destroy_boxed_opaque_existential_1(&v44 + 1);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(&v46);
    return v19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27448, &qword_1DB2BFA70);
  if (!swift_dynamicCast())
  {
LABEL_13:
    v33 = __swift_project_boxed_opaque_existential_1(&v46, v47);
    MEMORY[0x1EEE9AC00](v33);
    (*(v35 + 16))(&v38 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = sub_1DB2BADF4();
    sub_1DB1445E0(&v44, &qword_1ECC28DB8, &qword_1DB2CDE88);
    goto LABEL_14;
  }

  v29 = v42;
  if (os_variant_has_internal_content())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE0, &qword_1DB2CE000);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1DB2BCC40;
    v31 = sub_1DB2BA7B4();
    *(v30 + 56) = sub_1DB26A754();
    *(v30 + 64) = sub_1DB26A7A0(&qword_1ECC28DC8, sub_1DB26A754, MEMORY[0x1E69E81C8]);
    *(v30 + 32) = v31;
    v32 = sub_1DB2BADC4();
    MEMORY[0x1E1284A10](v29);
    __swift_destroy_boxed_opaque_existential_1(&v44 + 1);
    __swift_destroy_boxed_opaque_existential_1(&v46);
    return v32;
  }

  else
  {
    v36 = sub_1DB2BA7B4();
    v37 = sub_1DB268F20(v36);

    MEMORY[0x1E1284A10](v29);
    __swift_destroy_boxed_opaque_existential_1(&v44 + 1);
    __swift_destroy_boxed_opaque_existential_1(&v46);
    return v37;
  }
}

uint64_t sub_1DB268F20(void *a1)
{
  v34 = 8315;
  v35 = 0xE200000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE0, &qword_1DB2CE000);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB2BD5A0;
  v3 = [a1 domain];
  v4 = sub_1DB2BAD94();
  v6 = v5;

  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1DB156A2C();
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  v7 = [a1 code];
  v8 = MEMORY[0x1E69E65A8];
  *(v2 + 96) = MEMORY[0x1E69E6530];
  *(v2 + 104) = v8;
  *(v2 + 72) = v7;
  sub_1DB143508();
  v9 = sub_1DB2BB3C4();
  v11 = v10;

  v36 = v9;
  v37 = v11;
  v12 = [a1 userInfo];
  v13 = sub_1DB2BACD4();

  v14 = sub_1DB2BAD94();
  if (*(v13 + 16))
  {
    v16 = sub_1DB141B30(v14, v15);
    v18 = v17;

    if (v18)
    {
      sub_1DB1444CC(*(v13 + 56) + 32 * v16, &v34);

      sub_1DB26A754();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_7;
      }

      v34 = 0;
      v35 = 0xE000000000000000;
      sub_1DB2BB4F4();

      v34 = 0xD000000000000014;
      v35 = 0x80000001DB2D6E50;
      v19 = sub_1DB268F20(v33);
      MEMORY[0x1E1283490](v19);

      MEMORY[0x1E1283490](32032, 0xE200000000000000);
      MEMORY[0x1E1283490](v34, v35);
    }
  }

  else
  {
  }

LABEL_7:
  v20 = [a1 userInfo];
  v21 = sub_1DB2BACD4();

  v22 = sub_1DB2BAD94();
  if (!*(v21 + 16))
  {

    goto LABEL_19;
  }

  v24 = sub_1DB141B30(v22, v23);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_19:

    goto LABEL_20;
  }

  sub_1DB1444CC(*(v21 + 56) + 32 * v24, &v34);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28DD0, &unk_1DB2CDE90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    MEMORY[0x1E1283490](32032, 0xE200000000000000);
    return v36;
  }

  result = MEMORY[0x1E1283490](0xD00000000000001DLL, 0x80000001DB2D6E30);
  if (!(v33 >> 62))
  {
    v28 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_12;
    }

LABEL_22:

    MEMORY[0x1E1283490](23840, 0xE200000000000000);
    goto LABEL_20;
  }

  result = sub_1DB2BB694();
  v28 = result;
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (v28 >= 1)
  {
    v29 = 0;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1E1283AD0](v29);
      }

      else
      {
        v30 = *(v33 + 8 * v29 + 32);
      }

      v31 = v30;
      ++v29;
      v34 = sub_1DB268F20(v30);
      v35 = v32;
      MEMORY[0x1E1283490](32, 0xE100000000000000);
      MEMORY[0x1E1283490](v34, v35);
    }

    while (v28 != v29);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void *sub_1DB269370(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DB2BAB44();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB26A7A0(&qword_1ECC28DD8, MEMORY[0x1E6966420], MEMORY[0x1E6966430]);
  v8 = sub_1DB2BB024();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1DB138470(0, v8 & ~(v8 >> 63), 0);
  v9 = v38;
  (*(v5 + 16))(v7, a1, v4);
  result = sub_1DB2BB014();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v11 = v37;
    if (v8)
    {
      v33 = v1;
      v12 = v36;
      *&v35 = *(v36 + 16);
      v34 = xmmword_1DB2BCC40;
      v13 = v37;
      while (v35 != v13)
      {
        if (v11 < 0)
        {
          goto LABEL_21;
        }

        if (v13 >= *(v12 + 16))
        {
          goto LABEL_22;
        }

        v14 = *(v12 + 32 + v13);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE0, &qword_1DB2CE000);
        v15 = swift_allocObject();
        *(v15 + 16) = v34;
        *(v15 + 56) = MEMORY[0x1E69E7508];
        *(v15 + 64) = MEMORY[0x1E69E7558];
        *(v15 + 32) = v14;
        result = sub_1DB2BADC4();
        v38 = v9;
        v18 = *(v9 + 16);
        v17 = *(v9 + 24);
        if (v18 >= v17 >> 1)
        {
          v32 = result;
          v20 = v16;
          sub_1DB138470((v17 > 1), v18 + 1, 1);
          v16 = v20;
          result = v32;
          v9 = v38;
        }

        *(v9 + 16) = v18 + 1;
        v19 = v9 + 16 * v18;
        *(v19 + 32) = result;
        *(v19 + 40) = v16;
        ++v13;
        if (!--v8)
        {
          v37 = v13;
          v2 = v33;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v13 = v37;
LABEL_12:
      v21 = v36;
      v22 = *(v36 + 16);
      if (v13 == v22)
      {
LABEL_13:

        return v9;
      }

      v35 = xmmword_1DB2BCC40;
      while (v13 < v22)
      {
        v23 = v13 + 1;
        v24 = *(v21 + 32 + v13);
        v37 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE0, &qword_1DB2CE000);
        v25 = swift_allocObject();
        *(v25 + 16) = v35;
        *(v25 + 56) = MEMORY[0x1E69E7508];
        *(v25 + 64) = MEMORY[0x1E69E7558];
        *(v25 + 32) = v24;
        result = sub_1DB2BADC4();
        v38 = v9;
        v28 = *(v9 + 16);
        v27 = *(v9 + 24);
        if (v28 >= v27 >> 1)
        {
          *&v34 = result;
          v30 = v2;
          v31 = v26;
          sub_1DB138470((v27 > 1), v28 + 1, 1);
          v26 = v31;
          v2 = v30;
          result = v34;
          v9 = v38;
        }

        *(v9 + 16) = v28 + 1;
        v29 = v9 + 16 * v28;
        *(v29 + 32) = result;
        *(v29 + 40) = v26;
        v22 = *(v21 + 16);
        v13 = v37;
        if (v37 == v22)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB269754@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274E0, &unk_1DB2BFDE0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB2BCC40;
  sub_1DB1567F4(a1, v8);
  *(v6 + 48) = 0u;
  *(v6 + 32) = 0u;
  result = sub_1DB156864(v8, v6 + 32);
  *(v6 + 64) = a2;
  *a3 = v6;
  return result;
}

uint64_t static LogMessage.identity(_:)@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274E0, &unk_1DB2BFDE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB2BCC40;
  swift_unknownObjectRetain();
  result = sub_1DB26870C(v3 + 32);
  *a2 = v3;
  return result;
}

uint64_t static LogMessage.describe(contentsOf:withRedaction:separator:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(swift_allocObject() + 16) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27468, &unk_1DB2CDBD0);
  sub_1DB156944();
  v4 = sub_1DB2BAD24();

  return v4;
}

uint64_t sub_1DB26992C@<X0>(char a2@<W1>, uint64_t *a3@<X8>)
{
  *(swift_allocObject() + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28D80, &unk_1DB2CDBE0);
  sub_1DB26A19C();

  v4 = sub_1DB2BAD24();
  v6 = v5;

  *a3 = v4;
  a3[1] = v6;
  return result;
}

char *static LogMessage.values(of:withRedaction:)(char *result, char a2)
{
  v3 = 0;
  v4 = *(result + 2);
  v5 = result + 32;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  while (2)
  {
    if (v4 == v3)
    {
      return v6;
    }

    if (v3 >= v4)
    {
      __break(1u);
    }

    else
    {
      v7 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        v8 = *&v5[8 * v3];
        v9 = *(v8 + 16);
        ++v3;
        if (!v9)
        {
          continue;
        }

        v3 = v7;
        v10 = v8 + 32;

        while (1)
        {
          sub_1DB26A0AC(v10, v23);
          sub_1DB1567F4(v23, &v19);
          if (v20)
          {
            sub_1DB144640(&v19, &v21);
            if ((a2 & 1) == 0 || !v23[32])
            {
              sub_1DB1444CC(&v21, &v19);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_1DB158300(0, *(v6 + 2) + 1, 1, v6);
              }

              v18 = *(v6 + 2);
              v17 = *(v6 + 3);
              if (v18 >= v17 >> 1)
              {
                v6 = sub_1DB158300((v17 > 1), v18 + 1, 1, v6);
              }

              __swift_destroy_boxed_opaque_existential_1(&v21);
              sub_1DB26A0E4(v23);
              *(v6 + 2) = v18 + 1;
              v11 = &v6[32 * v18];
              v12 = &v19;
              goto LABEL_8;
            }

            __swift_destroy_boxed_opaque_existential_1(&v21);
          }

          else
          {
            sub_1DB1445E0(&v19, &qword_1ECC26F30, &unk_1DB2BFA90);
          }

          v13 = sub_1DB2687EC(1);
          v22 = MEMORY[0x1E69E6158];
          *&v21 = v13;
          *(&v21 + 1) = v14;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1DB158300(0, *(v6 + 2) + 1, 1, v6);
          }

          v16 = *(v6 + 2);
          v15 = *(v6 + 3);
          if (v16 >= v15 >> 1)
          {
            v6 = sub_1DB158300((v15 > 1), v16 + 1, 1, v6);
          }

          sub_1DB26A0E4(v23);
          *(v6 + 2) = v16 + 1;
          v11 = &v6[32 * v16];
          v12 = &v21;
LABEL_8:
          sub_1DB144640(v12, v11 + 2);
          v10 += 40;
          if (!--v9)
          {

            goto LABEL_2;
          }
        }
      }
    }

    break;
  }

  __break(1u);
  return result;
}

__n128 sub_1DB269C48(uint64_t a1, char a2)
{
  sub_1DB1567F4(a1, v11);
  v12 = 0u;
  v13 = 0u;
  sub_1DB156864(v11, &v12);
  v14 = a2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1DB156674(0, *(v4 + 2) + 1, 1, v4);
    *v2 = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1DB156674((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[40 * v7];
  result = v12;
  v10 = v13;
  v8[64] = v14;
  *(v8 + 2) = result;
  *(v8 + 3) = v10;
  *v2 = v4;
  return result;
}

__n128 LogMessage.StringInterpolation.appendInterpolation(identity:)(uint64_t a1)
{
  v2 = v1;
  swift_unknownObjectRetain();
  sub_1DB2BAD44();
  sub_1DB26A114();
  v3 = sub_1DB2BAFC4();
  v5 = v4;
  swift_getObjectType();
  v16.n128_u64[0] = sub_1DB2BBB14();
  v16.n128_u64[1] = v6;
  MEMORY[0x1E1283490](7876666, 0xE300000000000000);
  MEMORY[0x1E1283490](v3, v5);

  v15 = MEMORY[0x1E69E6158];
  swift_unknownObjectRelease();
  v14 = v16;
  v16 = 0u;
  v17 = 0u;
  sub_1DB156864(&v14, &v16);
  v18 = 0;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1DB156674(0, *(v7 + 2) + 1, 1, v7);
    *v2 = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1DB156674((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[40 * v10];
  result = v16;
  v13 = v17;
  v11[64] = v18;
  *(v11 + 2) = result;
  *(v11 + 3) = v13;
  *v2 = v7;
  return result;
}

char *sub_1DB269ED8@<X0>(char *result@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    *a3 = MEMORY[0x1E69E7CC0];
    result = sub_1DB156674(0, &result[a2] & ~(&result[a2] >> 63), 0, v4);
    *a3 = result;
  }

  return result;
}

uint64_t LogMessage.description.getter()
{
  v0 = os_variant_has_internal_content() ^ 1;
  *(swift_allocObject() + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28D80, &unk_1DB2CDBE0);
  sub_1DB26A19C();

  v1 = sub_1DB2BAD24();

  return v1;
}

uint64_t sub_1DB26A018@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274E0, &unk_1DB2BFDE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB2BCC40;
  v7[3] = MEMORY[0x1E69E6158];
  v7[0] = v3;
  v7[1] = v4;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  result = sub_1DB156864(v7, v5 + 32);
  *(v5 + 64) = 0;
  *a2 = v5;
  return result;
}

unint64_t sub_1DB26A114()
{
  result = qword_1ECC28D78;
  if (!qword_1ECC28D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28D78);
  }

  return result;
}

uint64_t sub_1DB26A168@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DB2687EC(*(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DB26A19C()
{
  result = qword_1EE13F658;
  if (!qword_1EE13F658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28D80, &unk_1DB2CDBE0);
    sub_1DB26A700(&qword_1EE13F6B0, &qword_1ECC28D88, &qword_1DB2CDBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F658);
  }

  return result;
}

unint64_t sub_1DB26A23C()
{
  result = qword_1ECC28D90;
  if (!qword_1ECC28D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28D90);
  }

  return result;
}

unint64_t sub_1DB26A2A0()
{
  result = qword_1ECC28D98;
  if (!qword_1ECC28D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28D98);
  }

  return result;
}

unint64_t sub_1DB26A2F8()
{
  result = qword_1ECC28DA0;
  if (!qword_1ECC28DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28DA0);
  }

  return result;
}

unint64_t sub_1DB26A350()
{
  result = qword_1ECC28DA8;
  if (!qword_1ECC28DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28DA8);
  }

  return result;
}

unint64_t sub_1DB26A3A8()
{
  result = qword_1ECC28DB0;
  if (!qword_1ECC28DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28DB0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB26A45C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1DB26A4B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1DB26A520(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1DB2BAC94();
      sub_1DB26A7A0(&qword_1ECC28568, MEMORY[0x1E6966640], MEMORY[0x1E6966638]);
      return sub_1DB2BAB14();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1DB26A7E8(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1DB26A7E8(v5, v6);
  }

  sub_1DB2BAC94();
  sub_1DB26A7A0(&qword_1ECC28568, MEMORY[0x1E6966640], MEMORY[0x1E6966638]);
  return sub_1DB2BAB14();
}

uint64_t sub_1DB26A700(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB26A754()
{
  result = qword_1ECC28DC0;
  if (!qword_1ECC28DC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC28DC0);
  }

  return result;
}

uint64_t sub_1DB26A7A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DB26A7E8(uint64_t a1, uint64_t a2)
{
  result = sub_1DB2BA6E4();
  if (!result || (result = sub_1DB2BA714(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1DB2BA704();
      sub_1DB2BAC94();
      sub_1DB26A7A0(&qword_1ECC28568, MEMORY[0x1E6966640], MEMORY[0x1E6966638]);
      return sub_1DB2BAB14();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

OnDeviceStorageCore::LogMessageLevel_optional __swiftcall LogMessageLevel.init(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v4 = v1;
  v5 = name._countAndFlagsBits == 0x6775626564 && name._object == 0xE500000000000000;
  if (v5 || (sub_1DB2BB924() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 1868983913 && object == 0xE400000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x676E696E726177 && object == 0xE700000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x726F727265 && object == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v8 = sub_1DB2BB924();

    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = 4;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t LogMessageLevel.name.getter()
{
  v1 = 0x6775626564;
  if (*v0 == 2)
  {
    v1 = 1868983913;
  }

  v2 = 0x726F727265;
  if (*v0)
  {
    v2 = 0x676E696E726177;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

OnDeviceStorageCore::LogMessageLevel_optional __swiftcall LogMessageLevel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1DB26AAF0()
{
  result = qword_1ECC28DE0;
  if (!qword_1ECC28DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28DE0);
  }

  return result;
}

unint64_t sub_1DB26ABA0()
{
  result = qword_1ECC28DE8;
  if (!qword_1ECC28DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28DF0, &qword_1DB2CDF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28DE8);
  }

  return result;
}

uint64_t OSLogger.init(subsystem:category:)@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  if (qword_1EE13FF58 != -1)
  {
    a1 = swift_once();
  }

  v4 = *(off_1EE13FF60 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v4 + 24));
  sub_1DB15E330((v4 + 16), &v6);
  os_unfair_lock_unlock((v4 + 24));

  *a3 = v6;
  return result;
}

uint64_t sub_1DB26AD14()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  sub_1DB2BAE84();
  return sub_1DB2BBA54();
}

uint64_t sub_1DB26AD7C(uint64_t a1)
{
  sub_1DB2BAE84();

  return sub_1DB2BAE84();
}

uint64_t sub_1DB26ADCC(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  sub_1DB2BAE84();
  return sub_1DB2BBA54();
}

uint64_t sub_1DB26AE30(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DB2BB924(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DB2BB924();
    }
  }

  return result;
}

uint64_t sub_1DB26AED4()
{
  type metadata accessor for OSLogRegistry();
  v0 = swift_allocObject();
  v1 = sub_1DB142D18(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28E00, &unk_1DB2CE1E0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v1;
  *(v0 + 16) = result;
  off_1EE13FF60 = v0;
  return result;
}

id sub_1DB26AF4C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *a1;
  v13 = *(*a1 + 16);

  if (v13 && (v14 = sub_1DB141BA8(a2, a3, a4, a5), (v15 & 1) != 0))
  {
    v16 = v14;

    v17 = *(*(v12 + 56) + 8 * v16);
    *a6 = v17;
    return v17;
  }

  else
  {
    sub_1DB26B38C();

    v19 = sub_1DB2BB324();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    sub_1DB142BA0(v19, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *a1 = v21;
    *a6 = v19;
  }

  return result;
}

uint64_t sub_1DB26B088()
{

  return swift_deallocClassInstance();
}

uint64_t OSLogger.Subsystem.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void *sub_1DB26B0F0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

Swift::Void __swiftcall OSLogger.log(contentsOf:withLevel:)(Swift::OpaquePointer contentsOf, OnDeviceStorageCore::LogMessageLevel withLevel)
{
  v3 = *v2;
  if (*withLevel - 1 >= 2)
  {
    if (*withLevel)
    {
      v4 = sub_1DB2BB254();
    }

    else
    {
      v4 = sub_1DB2BB264();
    }
  }

  else
  {
    v4 = sub_1DB2BB274();
  }

  v5 = v4;
  if (os_log_type_enabled(v3, v4))
  {
    v6 = os_variant_has_internal_content() ^ 1;
    *(swift_allocObject() + 16) = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27468, &unk_1DB2CDBD0);
    sub_1DB156944();
    v7 = sub_1DB2BAD24();
    v9 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE0, &qword_1DB2CE000);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DB2BCC40;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1DB156A2C();
    *(v10 + 32) = v7;
    *(v10 + 40) = v9;
    sub_1DB2BAA04("%{public}@", 10, 2, &dword_1DB132000, v3, v5, v10);
  }
}

unint64_t sub_1DB26B288()
{
  result = qword_1ECC28DF8;
  if (!qword_1ECC28DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28DF8);
  }

  return result;
}

unint64_t sub_1DB26B338()
{
  result = qword_1EE13FF68;
  if (!qword_1EE13FF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FF68);
  }

  return result;
}

unint64_t sub_1DB26B38C()
{
  result = qword_1EE13F660;
  if (!qword_1EE13F660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE13F660);
  }

  return result;
}

uint64_t sub_1DB26B3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
  v15[0] = a1;
  v15[1] = a2;
  v15[4] = sub_1DB26F5E0();
  v15[2] = a3;
  v14[3] = MEMORY[0x1E69E6158];
  v14[4] = &protocol witness table for String;
  v14[0] = a4;
  v14[1] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v15, inited + 32);
  sub_1DB164980(v14, inited + 72);

  sub_1DB2B57D4(inited, 1, 61, 0xE100000000000000, a6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1DB26B520(uint64_t a1, uint64_t a2)
{
  sub_1DB26DC3C(a1, a2);
  if (!v3)
  {
    v7 = sub_1DB26F214(v6);

    sub_1DB2BB4F4();

    v8 = sub_1DB2B995C(34, 0xE100000000000000, a1, a2);
    MEMORY[0x1E1283490](v8);

    MEMORY[0x1E1283490](41, 0xE100000000000000);
    type metadata accessor for Statement();
    swift_allocObject();

    sub_1DB253534(v9, 0xD000000000000012, 0x80000001DB2D6ED0);
    v10 = sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

    sub_1DB254F54();
    v12 = v11;

    sub_1DB2A0774(v10, v12, v2, a1, a2, v7);
    v2 = v13;

    swift_bridgeObjectRelease_n();
  }

  return v2;
}

uint64_t sub_1DB26B6F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  if (qword_1EE13F240 != -1)
  {
    swift_once();
  }

  result = sub_1DB275CE8(qword_1EE13F248, unk_1EE13F250, qword_1EE13F258, v10, v11);
  if (!v5)
  {
    v14 = v13;
    v58 = result;
    if (qword_1EE13F220 != -1)
    {
      swift_once();
    }

    sub_1DB275CE8(qword_1EE13F228, unk_1EE13F230, qword_1EE13F238, v10, v11);
    if (qword_1EE13F200 != -1)
    {
      swift_once();
    }

    v56 = sub_1DB275CD0(qword_1EE13F208, unk_1EE13F210, qword_1EE13F218, v10, v11);
    if (qword_1EE13F1E0 != -1)
    {
      swift_once();
    }

    v15 = sub_1DB277674(qword_1EE13F1E8, unk_1EE13F1F0, qword_1EE13F1F8, v10, v11);
    if ((v16 & 1) != 0 || v15 < 1 || (sub_1DB26EA48(a2, a3), !v17))
    {
      v25 = 2;
    }

    else
    {
      v18 = qword_1EE13E9A0;

      if (v18 != -1)
      {
        swift_once();
      }

      v52 = qword_1EE14C860;
      v19 = sub_1DB2BAD64();
      v20 = [v52 firstMatchInString:v19 options:0 range:{0, sub_1DB2BAE94()}];

      if (v20)
      {
        v53 = v20;
        v21 = [v20 rangeAtIndex_];
        v23 = v22;
        if (v21 == sub_1DB2BA594())
        {

          v24 = 5;
        }

        else
        {
          v47 = sub_1DB2BAD64();

          v41 = [v47 substringWithRange_];

          v42 = sub_1DB2BAD94();
          v50 = v43;

          sub_1DB264B0C(v42, v50, &v60);
          v24 = v60;
        }

        v51 = v24;
        v48 = [v53 rangeAtIndex_];
        v44 = sub_1DB2BA594();

        v25 = (v48 != v44) | (v51 << 8);
      }

      else
      {
        v25 = 2;
        swift_bridgeObjectRelease_n();
      }
    }

    sub_1DB2643CC(&v67);
    v26 = v67;
    if (qword_1EE13F1C0 != -1)
    {
      swift_once();
    }

    v27 = sub_1DB277034(qword_1EE13F1C8, unk_1EE13F1D0, qword_1EE13F1D8, v10, v11);
    result = sub_1DB265534(v27, v28, &v65);
    v29 = v65;
    v30 = v66;
    v31 = 0uLL;
    if (*(a4 + 16))
    {
      v57 = v65;
      result = sub_1DB141B30(v58, v14);
      if (v32)
      {
        v33 = *(*(a4 + 56) + 8 * result);
        v34 = 0uLL;
        v35 = 0uLL;
        v36 = 0uLL;
        v37 = 0uLL;
        v38 = v58;
        v29 = v57;
        v31 = 0uLL;
        if (*(v33 + 16))
        {
          v39 = *(v33 + 48);
          v60 = *(v33 + 32);
          v61 = v39;
          v40 = *(v33 + 80);
          v62 = *(v33 + 64);
          v63 = v40;
          v64 = *(v33 + 96);
          *v54 = v61;
          v55 = v60;
          *v46 = v40;
          v49 = v62;
          v45 = v64;
          result = sub_1DB26F644(&v60, v59);
          v37 = v45;
          v36 = *v46;
          v35 = v49;
          v34 = *v54;
          v31 = v55;
          v29 = v57;
          v38 = v58;
        }
      }

      else
      {
        v34 = 0uLL;
        v35 = 0uLL;
        v36 = 0uLL;
        v37 = 0uLL;
        v38 = v58;
        v29 = v57;
        v31 = 0uLL;
      }
    }

    else
    {
      v34 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
      v38 = v58;
    }

    *a5 = v38;
    *(a5 + 8) = v14;
    *(a5 + 16) = v25;
    *(a5 + 18) = v26;
    *(a5 + 19) = v56 == 0;
    *(a5 + 24) = v29;
    *(a5 + 40) = v30;
    *(a5 + 48) = v31;
    *(a5 + 64) = v34;
    *(a5 + 80) = v35;
    *(a5 + 96) = v36;
    *(a5 + 112) = v37;
  }

  return result;
}

char *sub_1DB26BCB4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = a4;
  v9 = *a3;
  v10 = *(v4 + 16);
  v11 = &type metadata for Table;
  v48 = &type metadata for Table;
  v12 = sub_1DB26F468();
  v49 = v12;
  v47[0] = swift_allocObject();
  sub_1DB26C254(v6, v47[0] + 16);
  if (a2)
  {
    __swift_project_boxed_opaque_existential_1(v47, &type metadata for Table);
    if (qword_1EE13EE98 != -1)
    {
      swift_once();
    }

    sub_1DB26B3DC(qword_1EE13EEA0, *algn_1EE13EEA8, qword_1EE13EEB0, a1, a2, v38);
    *v35 = *v38;
    *&v35[8] = *&v38[8];
    *(&v42 + 1) = &type metadata for Table;
    *&v43 = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v41);
    QueryType.where(_:)(v35, &type metadata for Table, v12, boxed_opaque_existential_0);

    __swift_destroy_boxed_opaque_existential_1(v47);
    sub_1DB1355D0(&v41, v47);
    v11 = v48;
    v12 = v49;
  }

  if (v9 != 4)
  {
    __swift_project_boxed_opaque_existential_1(v47, v11);
    if (qword_1EE13EE78 != -1)
    {
      swift_once();
    }

    v14 = 0x656C626174;
    v15 = 0xE400000000000000;
    v16 = 2003134838;
    if (v9 != 2)
    {
      v16 = 0x72656767697274;
      v15 = 0xE700000000000000;
    }

    if (v9)
    {
      v14 = 0x7865646E69;
    }

    if (v9 <= 1)
    {
      v17 = v14;
    }

    else
    {
      v17 = v16;
    }

    if (v9 <= 1)
    {
      v18 = 0xE500000000000000;
    }

    else
    {
      v18 = v15;
    }

    sub_1DB26B3DC(qword_1EE13EE80, *algn_1EE13EE88, qword_1EE13EE90, v17, v18, v38);

    *v35 = *v38;
    *&v35[8] = *&v38[8];
    *(&v42 + 1) = v11;
    *&v43 = v12;
    v19 = __swift_allocate_boxed_opaque_existential_0(&v41);
    QueryType.where(_:)(v35, v11, v12, v19);

    __swift_destroy_boxed_opaque_existential_1(v47);
    sub_1DB1355D0(&v41, v47);
    v11 = v48;
    v12 = v49;
  }

  __swift_project_boxed_opaque_existential_1(v47, v11);
  (*(*(v12 + 8) + 24))(&v41, v11);
  v20 = v41;
  v21 = v42;
  type metadata accessor for Statement();
  swift_initStackObject();

  sub_1DB253534(v22, v20, *(&v20 + 1));
  if (v5)
  {

    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    v23 = sub_1DB255E8C(v21);

    v25 = sub_1DB29611C(v47);
    v26 = swift_allocObject();
    *(v26 + 16) = v23;
    *(v26 + 24) = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28FF0, &qword_1DB2CE1F0);
    inited = swift_initStackObject();
    *(inited + 16) = sub_1DB26F4BC;
    *(inited + 24) = v26;

    sub_1DB296FF8(v25, v46);
    v28 = v46[0];
    if (v46[0])
    {
      v10 = MEMORY[0x1E69E7CC0];
      do
      {
        v45[0] = v28;
        v45[1] = v46[1];
        sub_1DB26C434(v45, &v41);

        if (v42)
        {
          *v38 = v41;
          *&v38[16] = v42;
          v39 = v43;
          v40 = v44;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1DB157900(0, *(v10 + 2) + 1, 1, v10);
          }

          v30 = *(v10 + 2);
          v29 = *(v10 + 3);
          if (v30 >= v29 >> 1)
          {
            v10 = sub_1DB157900((v29 > 1), v30 + 1, 1, v10);
          }

          v36 = v39;
          v37 = v40;
          v31 = *v38;
          *v35 = *v38;
          *&v35[16] = *&v38[16];
          *(v10 + 2) = v30 + 1;
          v32 = &v10[64 * v30];
          v33 = *&v35[16];
          v34 = v37;
          *(v32 + 4) = v36;
          *(v32 + 5) = v34;
          *(v32 + 2) = v31;
          *(v32 + 3) = v33;
        }

        else
        {
          *v38 = v41;
          *&v38[16] = v42;
          v39 = v43;
          v40 = v44;
          sub_1DB1445E0(v38, &qword_1ECC28FF8, &qword_1DB2CE1F8);
        }

        sub_1DB296FF8(v25, v46);
        v28 = v46[0];
      }

      while (v46[0]);
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    swift_bridgeObjectRelease_n();

    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  return v10;
}

uint64_t sub_1DB26C254@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  Connection.sqliteVersion.getter(&v30);
  v4 = v30 < 3;
  if (v30 == 3 && (v4 = v31 < 33, v31 == 33))
  {
    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (!v4)
  {
LABEL_4:
    if (a1)
    {
      if (qword_1EE13ECB8 != -1)
      {
        swift_once();
      }

      v5 = &xmmword_1EE13ECC0;
    }

    else
    {
      if (qword_1EE13ED78 != -1)
      {
        swift_once();
      }

      v5 = &xmmword_1EE13ED80;
    }

    goto LABEL_20;
  }

  if (a1)
  {
    if (qword_1ECC26C20 != -1)
    {
      swift_once();
    }

    v5 = &xmmword_1ECC28EC0;
  }

  else
  {
    if (qword_1ECC26C18 != -1)
    {
      swift_once();
    }

    v5 = &xmmword_1ECC28E08;
  }

LABEL_20:
  v6 = v5[9];
  v26 = v5[8];
  v27 = v6;
  v28 = v5[10];
  v29 = *(v5 + 22);
  v7 = v5[5];
  v22 = v5[4];
  v23 = v7;
  v8 = v5[7];
  v24 = v5[6];
  v25 = v8;
  v9 = v5[1];
  v18 = *v5;
  v19 = v9;
  v10 = v5[3];
  v20 = v5[2];
  v21 = v10;
  v11 = v27;
  *(a2 + 128) = v26;
  *(a2 + 144) = v11;
  *(a2 + 160) = v28;
  *(a2 + 176) = v29;
  v12 = v23;
  *(a2 + 64) = v22;
  *(a2 + 80) = v12;
  v13 = v25;
  *(a2 + 96) = v24;
  *(a2 + 112) = v13;
  v14 = v19;
  *a2 = v18;
  *(a2 + 16) = v14;
  v15 = v21;
  *(a2 + 32) = v20;
  *(a2 + 48) = v15;
  return sub_1DB175954(&v18, v17);
}

uint64_t sub_1DB26C434@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (qword_1EE13EE78 != -1)
  {
    swift_once();
  }

  result = sub_1DB275CE8(qword_1EE13EE80, *algn_1EE13EE88, qword_1EE13EE90, v4, v5);
  if (!v2)
  {
    v8 = result;
    v9 = v7;

    v10 = sub_1DB2BB6F4();

    if (v10 >= 4)
    {
      sub_1DB2BB4F4();

      MEMORY[0x1E1283490](v8, v9);

      sub_1DB15B09C(0xD000000000000018, 0x80000001DB2D6F70);

      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    else
    {

      if (qword_1EE13EE98 != -1)
      {
        swift_once();
      }

      v11 = sub_1DB275CE8(qword_1EE13EEA0, *algn_1EE13EEA8, qword_1EE13EEB0, v4, v5);
      v13 = v12;
      v14 = v11;
      if (qword_1EE13EE38 != -1)
      {
        swift_once();
      }

      v15 = sub_1DB275CE8(qword_1EE13EE40, *algn_1EE13EE48, qword_1EE13EE50, v4, v5);
      v17 = v16;
      if (qword_1EE13EE58 != -1)
      {
        swift_once();
      }

      v18 = sub_1DB277674(qword_1EE13EE60, *algn_1EE13EE68, qword_1EE13EE70, v4, v5);
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = v18;
      }

      if (qword_1EE13EC98 != -1)
      {
        swift_once();
      }

      result = sub_1DB277034(qword_1EE13ECA0, *algn_1EE13ECA8, qword_1EE13ECB0, v4, v5);
      *a2 = v10;
      *(a2 + 8) = v14;
      *(a2 + 16) = v13;
      *(a2 + 24) = v15;
      *(a2 + 32) = v17;
      *(a2 + 40) = v20;
      *(a2 + 48) = result;
      *(a2 + 56) = v21;
    }
  }

  return result;
}

void sub_1DB26C774(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1DB2BB4F4();

  *&v74 = 0xD000000000000012;
  *(&v74 + 1) = 0x80000001DB2D6EF0;
  v7 = sub_1DB2B995C(34, 0xE100000000000000, a1, a2);
  MEMORY[0x1E1283490](v7);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  type metadata accessor for Statement();
  swift_initStackObject();

  sub_1DB253534(v8, 0xD000000000000012, 0x80000001DB2D6EF0);
  if (v3)
  {

    return;
  }

  v9 = MEMORY[0x1E69E7CC0];
  v10 = sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  sub_1DB254F54();
  v12 = v11;
  v62 = v4;
  sub_1DB143044();
  *&v63 = 0xD000000000000019;
  *(&v63 + 1) = 0x80000001DB2D1D60;
  v13 = v10;
  v58 = v9;
  v60 = v10;
  v61 = a2;
  v59 = a1;
  v66 = v12;
  while (1)
  {
    v14 = *(v13 + 24);
    if (qword_1EE13F098 != -1)
    {
      swift_once();
    }

    sub_1DB2BB294();
    if ((BYTE8(v74) & 1) != 0 || v74 != v14)
    {
      sub_1DB2BB2C4(&v68);
      if ((v68 & 1) == 0)
      {
LABEL_62:

        return;
      }
    }

    else
    {
      v15 = *(v13 + 16);
      os_unfair_lock_lock((v15 + 24));
      sub_1DB14A424((v15 + 16), &v74);
      os_unfair_lock_unlock((v15 + 24));
      if (v74 != 1)
      {
        goto LABEL_62;
      }
    }

    Statement.row.getter(&v74);
    v16 = v74;
    swift_retain_n();
    if (*(&v16 + 1) >= 1)
    {
      v17 = 0;
      v18 = 0;
      v19 = (MEMORY[0x1E69E7CC0] + 32);
      v67 = MEMORY[0x1E69E7CC0];
      v20 = v66;
      v21 = v9;
      while (1)
      {
        os_unfair_lock_lock((v16 + 24));
        if (v17 == 0x80000000)
        {
          __break(1u);
LABEL_64:
          __break(1u);
          os_unfair_lock_unlock(v22);

          return;
        }

        v23 = sqlite3_column_type(*(v16 + 16), v17);
        os_unfair_lock_unlock((v16 + 24));
        if (v23 > 2)
        {
          break;
        }

        if (v23 == 1)
        {
          os_unfair_lock_lock((v16 + 24));
          v31 = COERCE_DOUBLE(sqlite3_column_int64(*(v16 + 16), v17));
          os_unfair_lock_unlock((v16 + 24));
          v34 = MEMORY[0x1E69E7360];
          v35 = &protocol witness table for Int64;
          if (v18)
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v23 != 2)
          {
            goto LABEL_31;
          }

          os_unfair_lock_lock((v16 + 24));
          v33 = sqlite3_column_double(*(v16 + 16), v17);
          os_unfair_lock_unlock((v16 + 24));
          v31 = v33;
          v34 = MEMORY[0x1E69E63B0];
          v35 = &protocol witness table for Double;
          if (v18)
          {
            goto LABEL_48;
          }
        }

LABEL_38:
        v38 = v67[3];
        if (((v38 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
          goto LABEL_66;
        }

        v64 = v35;
        v65 = v21;
        v39 = v38 & 0xFFFFFFFFFFFFFFFELL;
        if (v39 <= 1)
        {
          v40 = 1;
        }

        else
        {
          v40 = v39;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
        v41 = swift_allocObject();
        v42 = (_swift_stdlib_malloc_size(v41) - 32) / 40;
        v41[2] = v40;
        v41[3] = 2 * v42;
        v43 = (v41 + 4);
        v44 = v67[3] >> 1;
        if (v67[2])
        {
          v45 = v67 + 4;
          if (v41 != v67 || v43 >= v45 + 40 * v44)
          {
            memmove(v41 + 4, v45, 40 * v44);
          }

          v67[2] = 0;
        }

        v19 = (v43 + 40 * v44);
        v18 = (v42 & 0x7FFFFFFFFFFFFFFFLL) - v44;

        v67 = v41;
        v21 = v65;
        v20 = v66;
        v35 = v64;
LABEL_48:
        v46 = __OFSUB__(v18--, 1);
        if (v46)
        {
          goto LABEL_64;
        }

        ++v17;
        *v19 = v31;
        *(v19 + 1) = v21;
        v19[2] = 0.0;
        *(v19 + 3) = v34;
        *(v19 + 4) = v35;
        v19 += 5;
        if (*(&v16 + 1) == v17)
        {
          goto LABEL_52;
        }
      }

      if (v23 == 3)
      {
        os_unfair_lock_lock((v16 + 24));
        if (!sqlite3_column_text(*(v16 + 16), v17))
        {
          goto LABEL_67;
        }

        v31 = COERCE_DOUBLE(sub_1DB2BAF14());
        v21 = v36;
        os_unfair_lock_unlock((v16 + 24));
        v34 = MEMORY[0x1E69E6158];
        v35 = &protocol witness table for String;
        if (v18)
        {
          goto LABEL_48;
        }

        goto LABEL_38;
      }

      if (v23 != 5)
      {
        if (v23 == 4)
        {
          v24 = v21;
          v25 = sub_1DB138CA8();
          os_unfair_lock_lock((v16 + 24));
          v26 = *(v16 + 16);
          v27 = sqlite3_column_blob(v26, v17);
          if (v27 && (v28 = v27, (v29 = sqlite3_column_bytes(v26, v17)) != 0))
          {
            v30 = v29;
            if (v29 <= 0)
            {
              v31 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
              v31 = COERCE_DOUBLE(swift_allocObject());
              v32 = _swift_stdlib_malloc_size(*&v31);
              *(*&v31 + 16) = v30;
              *(*&v31 + 24) = 2 * v32 - 64;
            }

            memcpy((*&v31 + 32), v28, v30);
          }

          else
          {
            v31 = MEMORY[0x1E69E7CC0];
          }

          v21 = v24;
          os_unfair_lock_unlock((v16 + 24));
          v34 = &type metadata for Blob;
          v35 = v25;
          v20 = v66;
          if (v18)
          {
            goto LABEL_48;
          }

          goto LABEL_38;
        }

LABEL_31:
        *&v68 = 0;
        *(&v68 + 1) = 0xE000000000000000;
        sub_1DB2BB4F4();

        v68 = v63;
        LODWORD(v73[0]) = v23;
        v37 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v37);
        v20 = v66;

        sub_1DB15B09C(v68, *(&v68 + 1));
      }

      v31 = 0.0;
      v21 = 0;
      v34 = 0;
      v35 = 0;
      if (v18)
      {
        goto LABEL_48;
      }

      goto LABEL_38;
    }

    v18 = 0;
    v67 = MEMORY[0x1E69E7CC0];
    v20 = v66;
    v21 = v9;
LABEL_52:

    v47 = v67;
    v48 = v67[3];
    v13 = v60;
    if (v48 >= 2)
    {
      break;
    }

LABEL_55:

    v73[0] = v20;
    v73[1] = v47;

    sub_1DB26D8F4(v73, v59, v61, v62, &v74);

    if (*(&v74 + 1))
    {
      v70 = v76;
      v71 = v77;
      v72 = v78;
      v68 = v74;
      v69 = v75;
      v9 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_1DB1581D8(0, *(v58 + 2) + 1, 1, v58);
      }

      v51 = v58;
      v53 = *(v58 + 2);
      v52 = *(v58 + 3);
      if (v53 >= v52 >> 1)
      {
        v51 = sub_1DB1581D8((v52 > 1), v53 + 1, 1, v58);
      }

      *(v51 + 2) = v53 + 1;
      v58 = v51;
      v54 = &v51[72 * v53];
      *(v54 + 2) = v68;
      v55 = v69;
      v56 = v70;
      v57 = v71;
      *(v54 + 12) = v72;
      *(v54 + 4) = v56;
      *(v54 + 5) = v57;
      *(v54 + 3) = v55;
    }

    else
    {
      v9 = v21;
      v70 = v76;
      v71 = v77;
      v72 = v78;
      v68 = v74;
      v69 = v75;
      sub_1DB1445E0(&v68, &qword_1ECC29000, &qword_1DB2CE200);
    }
  }

  v49 = v48 >> 1;
  v46 = __OFSUB__(v49, v18);
  v50 = v49 - v18;
  if (!v46)
  {
    v47 = v67;
    v67[2] = v50;
    goto LABEL_55;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
}

char *sub_1DB26CFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 1;
  result = sub_1DB26BCB4(a1, a2, &v17, 0);
  if (!v3)
  {
    v6 = 0;
    v7 = *(result + 2);
    v8 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v9 = (v6 << 6) + 88;
    while (v7 != v6)
    {
      if (v6 >= *(result + 2))
      {
        __break(1u);
        return result;
      }

      v10 = v9 + 64;
      ++v6;
      v11 = *&result[v9];
      v9 += 64;
      if (v11)
      {
        v12 = result;
        v13 = *&result[v10 - 72];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DB1572F0(0, *(v8 + 2) + 1, 1, v8);
        }

        v15 = *(v8 + 2);
        v14 = *(v8 + 3);
        if (v15 >= v14 >> 1)
        {
          v8 = sub_1DB1572F0((v14 > 1), v15 + 1, 1, v8);
        }

        result = v12;
        *(v8 + 2) = v15 + 1;
        v16 = &v8[16 * v15];
        *(v16 + 4) = v13;
        *(v16 + 5) = v11;
        goto LABEL_3;
      }
    }

    if (*(v8 + 2))
    {
      a3 = *(v8 + 4);
    }

    else
    {
      a3 = 0;
    }
  }

  return a3;
}

void sub_1DB26D124(uint64_t a1, uint64_t a2)
{
  sub_1DB2BB4F4();

  v65 = 0xD000000000000012;
  v66 = 0x80000001DB2D6F50;
  v6 = sub_1DB2B995C(34, 0xE100000000000000, a1, a2);
  MEMORY[0x1E1283490](v6);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  type metadata accessor for Statement();
  swift_initStackObject();

  sub_1DB253534(v7, 0xD000000000000012, 0x80000001DB2D6F50);
  if (v2)
  {

    return;
  }

  v8 = MEMORY[0x1E69E7CC0];
  v9 = sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  sub_1DB254F54();
  v11 = v10;
  v58 = v9;
  sub_1DB143044();
  v56 = v8;
  v57 = v11;
  while (1)
  {
    v12 = *(v9 + 24);
    if (qword_1EE13F098 != -1)
    {
      swift_once();
    }

    sub_1DB2BB294();
    if ((v66 & 1) != 0 || v65 != v12)
    {
      sub_1DB2BB2C4(&v63);
      if ((v63 & 1) == 0)
      {
LABEL_63:

        return;
      }
    }

    else
    {
      v13 = *(v9 + 16);
      os_unfair_lock_lock((v13 + 24));
      sub_1DB256240((v13 + 16), &v65);
      os_unfair_lock_unlock((v13 + 24));
      if (v65 != 1)
      {
        goto LABEL_63;
      }
    }

    Statement.row.getter(&v65);
    v15 = v65;
    v14 = v66;
    swift_retain_n();
    if (v14 >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = (MEMORY[0x1E69E7CC0] + 32);
      v62 = MEMORY[0x1E69E7CC0];
      v19 = v3;
      while (1)
      {
        os_unfair_lock_lock((v15 + 24));
        if (v16 == 0x80000000)
        {
          __break(1u);
LABEL_65:
          __break(1u);
          os_unfair_lock_unlock(v20);

          return;
        }

        v21 = sqlite3_column_type(*(v15 + 16), v16);
        os_unfair_lock_unlock((v15 + 24));
        if (v21 > 2)
        {
          break;
        }

        if (v21 == 1)
        {
          os_unfair_lock_lock((v15 + 24));
          v27 = COERCE_DOUBLE(sqlite3_column_int64(*(v15 + 16), v16));
          os_unfair_lock_unlock((v15 + 24));
          v30 = MEMORY[0x1E69E7360];
          v31 = &protocol witness table for Int64;
          if (v17)
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v21 != 2)
          {
            goto LABEL_31;
          }

          os_unfair_lock_lock((v15 + 24));
          v29 = sqlite3_column_double(*(v15 + 16), v16);
          os_unfair_lock_unlock((v15 + 24));
          v27 = v29;
          v30 = MEMORY[0x1E69E63B0];
          v31 = &protocol witness table for Double;
          if (v17)
          {
            goto LABEL_48;
          }
        }

LABEL_38:
        v34 = *(v62 + 3);
        if (((v34 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
          goto LABEL_67;
        }

        v61 = v31;
        v59 = v19;
        v35 = v34 & 0xFFFFFFFFFFFFFFFELL;
        if (v35 <= 1)
        {
          v36 = 1;
        }

        else
        {
          v36 = v35;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
        v37 = swift_allocObject();
        v38 = (_swift_stdlib_malloc_size(v37) - 32) / 40;
        *(v37 + 2) = v36;
        *(v37 + 3) = 2 * v38;
        v39 = (v37 + 32);
        v40 = *(v62 + 3) >> 1;
        if (*(v62 + 2))
        {
          v41 = v62 + 32;
          if (v37 != v62 || v39 >= v41 + 40 * v40)
          {
            memmove(v37 + 32, v41, 40 * v40);
          }

          *(v62 + 2) = 0;
        }

        v18 = (v39 + 40 * v40);
        v17 = (v38 & 0x7FFFFFFFFFFFFFFFLL) - v40;

        v62 = v37;
        v19 = v59;
        v31 = v61;
LABEL_48:
        v42 = __OFSUB__(v17--, 1);
        if (v42)
        {
          goto LABEL_65;
        }

        ++v16;
        *v18 = v27;
        *(v18 + 1) = v19;
        v18[2] = 0.0;
        *(v18 + 3) = v30;
        *(v18 + 4) = v31;
        v18 += 5;
        if (v14 == v16)
        {
          goto LABEL_52;
        }
      }

      if (v21 == 3)
      {
        os_unfair_lock_lock((v15 + 24));
        if (!sqlite3_column_text(*(v15 + 16), v16))
        {
          goto LABEL_68;
        }

        v27 = COERCE_DOUBLE(sub_1DB2BAF14());
        v19 = v32;
        os_unfair_lock_unlock((v15 + 24));
        v30 = MEMORY[0x1E69E6158];
        v31 = &protocol witness table for String;
        if (v17)
        {
          goto LABEL_48;
        }

        goto LABEL_38;
      }

      if (v21 != 5)
      {
        if (v21 == 4)
        {
          v60 = sub_1DB138CA8();
          os_unfair_lock_lock((v15 + 24));
          v22 = *(v15 + 16);
          v23 = sqlite3_column_blob(v22, v16);
          if (v23 && (v24 = v23, (v25 = sqlite3_column_bytes(v22, v16)) != 0))
          {
            v26 = v25;
            if (v25 <= 0)
            {
              v27 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
              v27 = COERCE_DOUBLE(swift_allocObject());
              v28 = _swift_stdlib_malloc_size(*&v27);
              *(*&v27 + 16) = v26;
              *(*&v27 + 24) = 2 * v28 - 64;
            }

            memcpy((*&v27 + 32), v24, v26);
          }

          else
          {
            v27 = MEMORY[0x1E69E7CC0];
          }

          os_unfair_lock_unlock((v15 + 24));
          v30 = &type metadata for Blob;
          v31 = v60;
          if (v17)
          {
            goto LABEL_48;
          }

          goto LABEL_38;
        }

LABEL_31:
        v63 = 0;
        v64 = 0xE000000000000000;
        sub_1DB2BB4F4();

        v63 = 0xD000000000000019;
        v64 = 0x80000001DB2D1D60;
        v33 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v33);

        sub_1DB15B09C(v63, v64);
      }

      v27 = 0.0;
      v19 = 0;
      v30 = 0;
      v31 = 0;
      if (v17)
      {
        goto LABEL_48;
      }

      goto LABEL_38;
    }

    v17 = 0;
    v62 = MEMORY[0x1E69E7CC0];
    v19 = v3;
LABEL_52:

    v43 = *(v62 + 3);
    if (v43 >= 2)
    {
      break;
    }

LABEL_55:
    v3 = v19;

    v46 = qword_1EE13EA08;

    if (v46 != -1)
    {
      swift_once();
    }

    v47 = sub_1DB277034(qword_1EE13EA10, *algn_1EE13EA18, qword_1EE13EA20, v57, v62);
    v9 = v58;
    v49 = v48;
    v50 = v47;

    if (v49)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_1DB1572F0(0, *(v56 + 2) + 1, 1, v56);
      }

      v51 = v50;
      v52 = v56;
      v54 = *(v56 + 2);
      v53 = *(v56 + 3);
      if (v54 >= v53 >> 1)
      {
        v52 = sub_1DB1572F0((v53 > 1), v54 + 1, 1, v56);
        v51 = v50;
      }

      *(v52 + 2) = v54 + 1;
      v56 = v52;
      v55 = &v52[16 * v54];
      *(v55 + 4) = v51;
      *(v55 + 5) = v49;
    }
  }

  v44 = v43 >> 1;
  v42 = __OFSUB__(v44, v17);
  v45 = v44 - v17;
  if (!v42)
  {
    *(v62 + 2) = v45;
    goto LABEL_55;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}

uint64_t sub_1DB26D8F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  if (qword_1EE13E9E8 != -1)
  {
    swift_once();
  }

  result = sub_1DB275CE8(qword_1EE13E9F0, *algn_1EE13E9F8, qword_1EE13EA00, v10, v11);
  if (!v5)
  {
    v14 = result;
    v15 = v13;
    if (sub_1DB23D950(0x5F6574696C7173, 0xE700000000000000, result, v13))
    {

      *(a5 + 64) = 0;
      *(a5 + 32) = 0u;
      *(a5 + 48) = 0u;
      *a5 = 0u;
      *(a5 + 16) = 0u;
    }

    else
    {
      if (qword_1EE13E9C8 != -1)
      {
        swift_once();
      }

      v39 = sub_1DB275CD0(qword_1EE13E9D0, *algn_1EE13E9D8, qword_1EE13E9E0, v10, v11);
      sub_1DB26D124(v14, v15);
      v17 = v16;
      v18 = sub_1DB26CFB8(v14, v15, a4);
      v20 = v19;
      if (v19)
      {
        v21 = v18;
        v22 = qword_1EE13E9B0;

        if (v22 != -1)
        {
          swift_once();
        }

        v23 = qword_1EE14C868;
        v24 = sub_1DB2BAD64();
        v25 = v21;
        v26 = v24;
        v38 = v25;
        v27 = [v23 firstMatchInString:v24 options:0 range:{0, sub_1DB2BAE94()}];

        if (v27)
        {
          v36 = v27;
          v28 = sub_1DB2BAD64();
          v29 = [v36 rangeAtIndex_];
          v31 = [v28 substringWithRange_];

          v37 = sub_1DB2BAD94();
          v35 = v32;

          v33 = v35;
        }

        else
        {

          v37 = 0;
          v33 = 0;
        }

        v34 = sub_1DB266100(v38, v20);
        swift_bridgeObjectRelease_n();
        v18 = v37;
      }

      else
      {
        v34 = 0;
        v33 = 0;
      }

      *a5 = a2;
      *(a5 + 8) = a3;
      *(a5 + 16) = v14;
      *(a5 + 24) = v15;
      *(a5 + 32) = v39 == 1;
      *(a5 + 40) = v17;
      *(a5 + 48) = v18;
      *(a5 + 56) = v33;
      *(a5 + 64) = v34;
    }
  }

  return result;
}

void sub_1DB26DC3C(uint64_t a1, uint64_t a2)
{
  sub_1DB2BB4F4();

  *&v70[0] = 0xD000000000000018;
  *(&v70[0] + 1) = 0x80000001DB2D6FB0;
  v6 = sub_1DB2B995C(34, 0xE100000000000000, a1, a2);
  MEMORY[0x1E1283490](v6);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  type metadata accessor for Statement();
  swift_initStackObject();

  sub_1DB253534(v7, 0xD000000000000018, 0x80000001DB2D6FB0);
  if (v2)
  {

    return;
  }

  v8 = MEMORY[0x1E69E7CC0];
  v9 = sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  sub_1DB254F54();
  v11 = v10;
  sub_1DB143044();
  v58 = *(v9 + 24);
  *&v60 = 0xD000000000000019;
  *(&v60 + 1) = 0x80000001DB2D1D60;
  v12 = v8;
  v56 = v9;
  v57 = v11;
  while (1)
  {
    if (qword_1EE13F098 != -1)
    {
      swift_once();
    }

    sub_1DB2BB294();
    if ((BYTE8(v70[0]) & 1) != 0 || *&v70[0] != v58)
    {
      sub_1DB2BB2C4(&v64);
      if ((v64 & 1) == 0)
      {
LABEL_59:

        return;
      }
    }

    else
    {
      v13 = *(v9 + 16);
      os_unfair_lock_lock((v13 + 24));
      sub_1DB256240((v13 + 16), v70);
      os_unfair_lock_unlock((v13 + 24));
      if (LOBYTE(v70[0]) != 1)
      {
        goto LABEL_59;
      }
    }

    v59 = v12;
    Statement.row.getter(v70);
    v14 = v70[0];
    swift_retain_n();
    if (*(&v14 + 1) >= 1)
    {
      v15 = 0;
      v16 = 0;
      v17 = (MEMORY[0x1E69E7CC0] + 32);
      v18 = MEMORY[0x1E69E7CC0];
      v19 = v3;
      while (1)
      {
        os_unfair_lock_lock((v14 + 24));
        if (v15 == 0x80000000)
        {
          __break(1u);
LABEL_62:
          __break(1u);
          os_unfair_lock_unlock(v20);

          return;
        }

        v21 = sqlite3_column_type(*(v14 + 16), v15);
        os_unfair_lock_unlock((v14 + 24));
        if (v21 > 2)
        {
          break;
        }

        if (v21 == 1)
        {
          os_unfair_lock_lock((v14 + 24));
          v28 = COERCE_DOUBLE(sqlite3_column_int64(*(v14 + 16), v15));
          os_unfair_lock_unlock((v14 + 24));
          v31 = MEMORY[0x1E69E7360];
          v32 = &protocol witness table for Int64;
          if (v16)
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v21 != 2)
          {
            goto LABEL_30;
          }

          os_unfair_lock_lock((v14 + 24));
          v30 = sqlite3_column_double(*(v14 + 16), v15);
          os_unfair_lock_unlock((v14 + 24));
          v28 = v30;
          v31 = MEMORY[0x1E69E63B0];
          v32 = &protocol witness table for Double;
          if (v16)
          {
            goto LABEL_47;
          }
        }

LABEL_37:
        v35 = v18[3];
        if (((v35 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
          goto LABEL_64;
        }

        v63 = v32;
        v61 = v19;
        v36 = v35 & 0xFFFFFFFFFFFFFFFELL;
        if (v36 <= 1)
        {
          v37 = 1;
        }

        else
        {
          v37 = v36;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
        v38 = swift_allocObject();
        v39 = (_swift_stdlib_malloc_size(v38) - 32) / 40;
        v38[2] = v37;
        v38[3] = 2 * v39;
        v40 = v18;
        v41 = (v38 + 4);
        v42 = v40[3] >> 1;
        if (v40[2])
        {
          v43 = v40 + 4;
          v44 = v40;
          if (v38 != v40 || v41 >= v43 + 40 * v42)
          {
            memmove(v38 + 4, v43, 40 * v42);
          }

          v44[2] = 0;
        }

        v17 = (v41 + 40 * v42);
        v16 = (v39 & 0x7FFFFFFFFFFFFFFFLL) - v42;

        v18 = v38;
        v19 = v61;
        v32 = v63;
LABEL_47:
        v45 = __OFSUB__(v16--, 1);
        if (v45)
        {
          goto LABEL_62;
        }

        ++v15;
        *v17 = v28;
        *(v17 + 1) = v19;
        v17[2] = 0.0;
        *(v17 + 3) = v31;
        *(v17 + 4) = v32;
        v17 += 5;
        if (*(&v14 + 1) == v15)
        {
          goto LABEL_51;
        }
      }

      if (v21 == 3)
      {
        os_unfair_lock_lock((v14 + 24));
        if (!sqlite3_column_text(*(v14 + 16), v15))
        {
          goto LABEL_65;
        }

        v28 = COERCE_DOUBLE(sub_1DB2BAF14());
        v19 = v33;
        os_unfair_lock_unlock((v14 + 24));
        v31 = MEMORY[0x1E69E6158];
        v32 = &protocol witness table for String;
        if (v16)
        {
          goto LABEL_47;
        }

        goto LABEL_37;
      }

      if (v21 != 5)
      {
        if (v21 == 4)
        {
          v22 = v18;
          v62 = sub_1DB138CA8();
          os_unfair_lock_lock((v14 + 24));
          v23 = *(v14 + 16);
          v24 = sqlite3_column_blob(v23, v15);
          if (v24 && (v25 = v24, (v26 = sqlite3_column_bytes(v23, v15)) != 0))
          {
            v27 = v26;
            if (v26 <= 0)
            {
              v28 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
              v28 = COERCE_DOUBLE(swift_allocObject());
              v29 = _swift_stdlib_malloc_size(*&v28);
              *(*&v28 + 16) = v27;
              *(*&v28 + 24) = 2 * v29 - 64;
            }

            memcpy((*&v28 + 32), v25, v27);
          }

          else
          {
            v28 = MEMORY[0x1E69E7CC0];
          }

          v18 = v22;
          os_unfair_lock_unlock((v14 + 24));
          v31 = &type metadata for Blob;
          v32 = v62;
          if (v16)
          {
            goto LABEL_47;
          }

          goto LABEL_37;
        }

LABEL_30:
        *&v64 = 0;
        *(&v64 + 1) = 0xE000000000000000;
        sub_1DB2BB4F4();

        v64 = v60;
        LODWORD(v69[0]) = v21;
        v34 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v34);

        sub_1DB15B09C(v64, *(&v64 + 1));
      }

      v19 = 0;
      v28 = 0.0;
      v31 = 0;
      v32 = 0;
      if (v16)
      {
        goto LABEL_47;
      }

      goto LABEL_37;
    }

    v16 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    v19 = v3;
LABEL_51:

    v46 = v18[3];
    v47 = v18;
    v12 = v59;
    if (v46 >= 2)
    {
      break;
    }

LABEL_54:

    v69[0] = v57;
    v69[1] = v47;

    sub_1DB26E3F8(v69, v70);

    v66 = v70[2];
    v67 = v70[3];
    v68 = v70[4];
    v64 = v70[0];
    v65 = v70[1];
    v9 = v56;
    v3 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1DB157A0C(0, *(v59 + 2) + 1, 1, v59);
    }

    v51 = *(v12 + 2);
    v50 = *(v12 + 3);
    if (v51 >= v50 >> 1)
    {
      v12 = sub_1DB157A0C((v50 > 1), v51 + 1, 1, v12);
    }

    *(v12 + 2) = v51 + 1;
    v52 = &v12[80 * v51];
    *(v52 + 2) = v64;
    v53 = v65;
    v54 = v66;
    v55 = v68;
    *(v52 + 5) = v67;
    *(v52 + 6) = v55;
    *(v52 + 3) = v53;
    *(v52 + 4) = v54;
  }

  v48 = v46 >> 1;
  v45 = __OFSUB__(v48, v16);
  v49 = v48 - v16;
  if (!v45)
  {
    *(v47 + 16) = v49;
    goto LABEL_54;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
}

uint64_t sub_1DB26E3F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (qword_1ECC26C28 != -1)
  {
    swift_once();
  }

  result = sub_1DB275CE8(qword_1ECC28F78, unk_1ECC28F80, qword_1ECC28F88, v4, v5);
  if (!v2)
  {
    v8 = v7;
    v28 = result;
    if (qword_1ECC26C30 != -1)
    {
      swift_once();
    }

    v9 = sub_1DB275CE8(qword_1ECC28F90, *algn_1ECC28F98, qword_1ECC28FA0, v4, v5);
    v11 = v10;
    v27 = v9;
    if (qword_1ECC26C38 != -1)
    {
      swift_once();
    }

    v12 = sub_1DB277034(qword_1ECC28FA8, unk_1ECC28FB0, qword_1ECC28FB8, v4, v5);
    v14 = v13;
    if (qword_1ECC26C40 != -1)
    {
      swift_once();
    }

    if (sub_1DB275CE8(qword_1ECC28FC0, *algn_1ECC28FC8, qword_1ECC28FD0, v4, v5) == 0x4F49544341204F4ELL && v15 == 0xE90000000000004ELL)
    {

      v16 = 0;
      v17 = 0;
    }

    else
    {
      v26 = v14;
      v18 = sub_1DB2BB924();

      if (v18)
      {
        v16 = 0;
        v17 = 0;
      }

      else
      {
        v16 = sub_1DB275CE8(qword_1ECC28FC0, *algn_1ECC28FC8, qword_1ECC28FD0, v4, v5);
        v17 = v19;
      }

      v14 = v26;
    }

    v25 = v16;
    if (qword_1ECC26C48 != -1)
    {
      swift_once();
    }

    v20 = sub_1DB275CE8(qword_1ECC28FD8, unk_1ECC28FE0, qword_1ECC28FE8, v4, v5);
    if (v20 == 0x4F49544341204F4ELL && v21 == 0xE90000000000004ELL)
    {

      result = 0;
      v22 = 0;
    }

    else
    {
      v24 = v17;
      v23 = sub_1DB2BB924();

      if (v23)
      {
        result = 0;
        v22 = 0;
      }

      else
      {
        result = sub_1DB275CE8(qword_1ECC28FD8, unk_1ECC28FE0, qword_1ECC28FE8, v4, v5);
      }

      v17 = v24;
    }

    *a2 = v28;
    a2[1] = v8;
    a2[2] = v27;
    a2[3] = v11;
    a2[4] = v12;
    a2[5] = v14;
    a2[6] = v25;
    a2[7] = v17;
    a2[8] = result;
    a2[9] = v22;
  }

  return result;
}

uint64_t sub_1DB26E840()
{
  v18 = 0;
  v2 = sub_1DB26BCB4(0, 0, &v18, 0);
  if (v0)
  {
    return v1;
  }

  v3 = v2;
  v4 = *(v2 + 2);
  if (!v4)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1DB138600(0, v4, 0);
  v6 = 0;
  v1 = v17;
  v7 = (v3 + 48);
  v15 = v3;
  while (v6 < *(v3 + 2))
  {
    v9 = *(v7 - 1);
    v8 = *v7;

    swift_bridgeObjectRetain_n();

    v16 = sub_1DB26B520(v9, v8);
    sub_1DB26C774(v9, v8);
    v11 = v10;

    v13 = *(v17 + 16);
    v12 = *(v17 + 24);
    if (v13 >= v12 >> 1)
    {
      result = sub_1DB138600((v12 > 1), v13 + 1, 1);
    }

    ++v6;
    *(v17 + 16) = v13 + 1;
    v14 = (v17 + 32 * v13);
    v14[4] = v9;
    v14[5] = v8;
    v14[6] = v16;
    v14[7] = v11;
    v7 += 8;
    v3 = v15;
    if (v4 == v6)
    {

      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB26EA48(uint64_t a1, uint64_t a2)
{
  v25 = 0;
  v6 = sub_1DB26BCB4(a1, a2, &v25, 0);
  if (!v3)
  {
    v7 = v6;
    v24 = 0;
    v8 = sub_1DB26BCB4(a1, a2, &v24, 1);
    result = sub_1DB141944(v8);
    v10 = 0;
    v11 = v7;
    v12 = *(v7 + 2);
    v13 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v14 = (v10 << 6) + 88;
    while (v12 != v10)
    {
      if (v10 >= *(v11 + 2))
      {
        __break(1u);
        return result;
      }

      v15 = v14 + 64;
      ++v10;
      v16 = *&v11[v14];
      v14 += 64;
      if (v16)
      {
        v17 = *&v11[v15 - 72];

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1DB1572F0(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v18 = *(v13 + 16);
        v19 = *(v13 + 24);
        v20 = v18 + 1;
        if (v18 >= v19 >> 1)
        {
          v22 = v13;
          v23 = *(v13 + 16);
          result = sub_1DB1572F0((v19 > 1), v18 + 1, 1, v22);
          v18 = v23;
          v13 = result;
        }

        *(v13 + 16) = v20;
        v21 = v13 + 16 * v18;
        *(v21 + 32) = v17;
        *(v21 + 40) = v16;
        goto LABEL_5;
      }
    }

    if (*(v13 + 16))
    {
      v2 = *(v13 + 32);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t SchemaReader.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DB26ED10()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 1701869940, 0xE400000000000000);
  qword_1EE13EE80 = result;
  *algn_1EE13EE88 = v1;
  qword_1EE13EE90 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26ED54()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 1701667182, 0xE400000000000000);
  qword_1EE13EEA0 = result;
  *algn_1EE13EEA8 = v1;
  qword_1EE13EEB0 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26ED98()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 0x656D616E5F6C6274, 0xE800000000000000);
  qword_1EE13EE40 = result;
  *algn_1EE13EE48 = v1;
  qword_1EE13EE50 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26EDE4()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 0x65676170746F6F72, 0xE800000000000000);
  qword_1EE13EE60 = result;
  *algn_1EE13EE68 = v1;
  qword_1EE13EE70 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26EE30()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 7106931, 0xE300000000000000);
  qword_1EE13ECA0 = result;
  *algn_1EE13ECA8 = v1;
  qword_1EE13ECB0 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26EE74()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 1701667182, 0xE400000000000000);
  qword_1EE13F248 = result;
  unk_1EE13F250 = v1;
  qword_1EE13F258 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26EEB8()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 1701869940, 0xE400000000000000);
  qword_1EE13F228 = result;
  unk_1EE13F230 = v1;
  qword_1EE13F238 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26EEFC()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 0x6C6C756E746F6ELL, 0xE700000000000000);
  qword_1EE13F208 = result;
  unk_1EE13F210 = v1;
  qword_1EE13F218 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26EF48()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 0x6C61765F746C6664, 0xEA00000000006575);
  qword_1EE13F1C8 = result;
  unk_1EE13F1D0 = v1;
  qword_1EE13F1D8 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26EF98()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 27504, 0xE200000000000000);
  qword_1EE13F1E8 = result;
  unk_1EE13F1F0 = v1;
  qword_1EE13F1F8 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26EFD8()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 1701667182, 0xE400000000000000);
  qword_1EE13EA10 = result;
  *algn_1EE13EA18 = v1;
  qword_1EE13EA20 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26F01C()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 1701667182, 0xE400000000000000);
  qword_1EE13E9F0 = result;
  *algn_1EE13E9F8 = v1;
  qword_1EE13EA00 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26F060()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 0x657571696E75, 0xE600000000000000);
  qword_1EE13E9D0 = result;
  *algn_1EE13E9D8 = v1;
  qword_1EE13E9E0 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26F0A8()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 0x656C626174, 0xE500000000000000);
  qword_1ECC28F78 = result;
  unk_1ECC28F80 = v1;
  qword_1ECC28F88 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26F0F0()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 1836020326, 0xE400000000000000);
  qword_1ECC28F90 = result;
  *algn_1ECC28F98 = v1;
  qword_1ECC28FA0 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26F134()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 28532, 0xE200000000000000);
  qword_1ECC28FA8 = result;
  unk_1ECC28FB0 = v1;
  qword_1ECC28FB8 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26F174()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 0x74616470755F6E6FLL, 0xE900000000000065);
  qword_1ECC28FC0 = result;
  *algn_1ECC28FC8 = v1;
  qword_1ECC28FD0 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26F1C4()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 0x74656C65645F6E6FLL, 0xE900000000000065);
  qword_1ECC28FD8 = result;
  unk_1ECC28FE0 = v1;
  qword_1ECC28FE8 = MEMORY[0x1E69E7CC0];
  return result;
}

void *sub_1DB26F214(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; i += 5)
  {
    v8 = i[3];
    v36 = i[2];
    v37 = v8;
    v38 = i[4];
    v9 = i[1];
    v34 = *i;
    v35 = v9;
    v10 = v9;
    sub_1DB26F644(&v34, v33);

    v12 = sub_1DB141B30(v10, *(&v10 + 1));
    v13 = v1[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      break;
    }

    v16 = v11;
    if (v1[3] < v15)
    {
      sub_1DB29D990(v15, 1);
      v1 = v39;
      v17 = sub_1DB141B30(v10, *(&v10 + 1));
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

      v12 = v17;
    }

    if (v16)
    {

      v19 = v1[7];
      v20 = *(v19 + 8 * v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v19 + 8 * v12) = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_1DB157A0C(0, *(v20 + 2) + 1, 1, v20);
        *(v19 + 8 * v12) = v20;
      }

      v23 = *(v20 + 2);
      v22 = *(v20 + 3);
      if (v23 >= v22 >> 1)
      {
        v20 = sub_1DB157A0C((v22 > 1), v23 + 1, 1, v20);
        *(v19 + 8 * v12) = v20;
      }

      *(v20 + 2) = v23 + 1;
      v4 = &v20[80 * v23];
      *(v4 + 2) = v34;
      v5 = v35;
      v6 = v36;
      v7 = v38;
      *(v4 + 5) = v37;
      *(v4 + 6) = v7;
      *(v4 + 3) = v5;
      *(v4 + 4) = v6;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274C0, &qword_1DB2BFDC0);
      v24 = swift_allocObject();
      v25 = v36;
      v26 = v37;
      v27 = v34;
      v24[3] = v35;
      v24[4] = v25;
      v28 = v38;
      v24[5] = v26;
      v24[6] = v28;
      v24[1] = xmmword_1DB2BCC40;
      v24[2] = v27;
      v1[(v12 >> 6) + 8] |= 1 << v12;
      *(v1[6] + 16 * v12) = v10;
      *(v1[7] + 8 * v12) = v24;
      v29 = v1[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_18;
      }

      v1[2] = v31;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1DB2BB984();
  __break(1u);
  return result;
}

unint64_t sub_1DB26F468()
{
  result = qword_1EE13F300;
  if (!qword_1EE13F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F300);
  }

  return result;
}

unint64_t sub_1DB26F5E0()
{
  result = qword_1EE1400C0[0];
  if (!qword_1EE1400C0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC280D8, &unk_1DB2C4B30);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1400C0);
  }

  return result;
}

uint64_t ExpressionType<>.distinct.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (*(a2 + 32))();
  MEMORY[0x1E1283490](v6);

  v7 = (*(a2 + 40))(a1, a2);
  swift_getAssociatedTypeWitness();

  return Expression.init(_:_:)(0x54434E4954534944, 0xE900000000000020, v7, a3);
}

{
  v6 = (*(a2 + 32))();
  MEMORY[0x1E1283490](v6);

  v7 = (*(a2 + 40))(a1, a2);
  swift_getAssociatedTypeWitness();

  return Expression.init(_:_:)(0x54434E4954534944, 0xE900000000000020, v7, a3);
}

uint64_t ExpressionType<>.count.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v7[3] = a1;
  v7[4] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v2, a1);
  sub_1DB203564();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t ExpressionType<>.max.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *x8_0@<X8>)
{
  return sub_1DB26F9B8(a1, a2, 7889261, x8_0);
}

{
  return sub_1DB26FB90(a1, a2, 7889261, x8_0);
}

uint64_t ExpressionType<>.min.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *x8_0@<X8>)
{
  return sub_1DB26F9B8(a1, a2, 7235949, x8_0);
}

{
  return sub_1DB26FB90(a1, a2, 7235949, x8_0);
}

uint64_t ExpressionType<>.sum.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *x8_0@<X8>)
{
  return sub_1DB26F9B8(a1, a2, 7173491, x8_0);
}

{
  return sub_1DB26FB90(a1, a2, 7173491, x8_0);
}

uint64_t sub_1DB26F9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  v10 = *(a2 + 8);
  v13[3] = a1;
  v13[4] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v6, a1);
  swift_getAssociatedTypeWitness();
  sub_1DB2BB364();
  sub_1DB2B9D5C(v13, a5, 0xE300000000000000, x8_0);

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1DB26FAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *, uint64_t, uint64_t))
{
  v12 = *(a2 + 8);
  v15[3] = a1;
  v15[4] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v7, a1);
  a7(v15, a5, a6);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1DB26FB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a6@<X5>, void *x8_0@<X8>)
{
  v11 = *(a2 + 8);
  v14[3] = a1;
  v14[4] = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v7, a1);
  swift_getAssociatedTypeWitness();
  sub_1DB2B9D5C(v14, a6, 0xE300000000000000, x8_0);

  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1DB26FC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *, uint64_t, uint64_t))
{
  v13 = *(a2 + 8);
  v16[3] = a1;
  v16[4] = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v8, a1);
  a8(v16, a6, a7);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t count(_:)(void (*a1)(void *__return_ptr, void *, void *))
{
  memset(v4, 0, sizeof(v4));
  memset(v3, 0, sizeof(v3));
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v5[4] = sub_1DB219960();
  a1(v5, v4, v3);
  sub_1DB203564();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t QueryType.insert(_:userInfo:otherSetters:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v9 = type metadata accessor for SQLiteEncoder();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  *(v10 + 24) = v11;
  *(v10 + 32) = a2;
  *(v10 + 40) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17[3] = v9;
  v17[4] = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder, &unk_1DB2CE710);
  v17[0] = v10;

  sub_1DB2BACE4();
  if (v6)
  {

    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
    swift_beginAccess();
    v18 = *(v10 + 16);

    sub_1DB141A38(v13);
    QueryType.insert(_:)(v18, a4, a5, x8_0);
  }
}

uint64_t QueryType.insert(or:encodable:userInfo:otherSetters:)(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = type metadata accessor for SQLiteEncoder();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  *(v11 + 24) = v12;
  *(v11 + 32) = a3;
  *(v11 + 40) = 0;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v15[3] = v10;
  v15[4] = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder, &unk_1DB2CE710);
  v15[0] = v11;

  sub_1DB2BACE4();
  if (v6)
  {

    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = v9;
    swift_beginAccess();

    sub_1DB141A38(v14);
    QueryType.insert(or:_:)();
  }
}

uint64_t QueryType.insertMany(_:userInfo:otherSetters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v62 = v7;
  if (!v7)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_21:
    swift_getKeyPath();
    v26 = v10[2];
    if (v26)
    {
      v77[0] = v8;
      sub_1DB1387C0(0, v26, 0);
      v27 = v77[0];
      v28 = v10 + 4;
      do
      {
        v82 = *v28;

        swift_getAtKeyPath();

        v29 = v71[0];
        v77[0] = v27;
        v31 = *(v27 + 16);
        v30 = *(v27 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1DB1387C0((v30 > 1), v31 + 1, 1);
          v27 = v77[0];
        }

        *(v27 + 16) = v31 + 1;
        *(v27 + 8 * v31 + 32) = v29;
        ++v28;
        --v26;
      }

      while (v26);
    }

    else
    {

      v27 = MEMORY[0x1E69E7CC0];
    }

    v70 = v6;
    v32 = sub_1DB21FF14(v27);

    v33 = *(v32 + 16);

    if (v33 == 1)
    {
      v34 = v10;
      v35 = *(a5 + 16);
      v35(v71, a4, a5);
      v36 = v72;
      v37 = v74;
      v67 = v73;
      v69 = v71[2];
      v38 = v76;
      v65 = v75;

      sub_1DB17181C(v71);
      v35(v77, a4, a5);
      v40 = v79;
      v39 = v80;
      v41 = v81;
      sub_1DB1757B0(v79, v80, v81);
      sub_1DB17181C(v77);
      *(a6 + 112) = 0u;
      *(a6 + 128) = 0;
      *(a6 + 96) = 0u;
      *a6 = v69;
      *(a6 + 8) = v36;
      *(a6 + 16) = v67;
      *(a6 + 24) = v37;
      *(a6 + 32) = v65;
      *(a6 + 40) = v38;
      *(a6 + 48) = 5;
      *(a6 + 56) = 0;
      *(a6 + 64) = v34;
      *(a6 + 72) = v40;
      *(a6 + 80) = v39;
      *(a6 + 88) = v41;
      result = sub_1DB1445E0(a6 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
      *(a6 + 96) = 0u;
      *(a6 + 112) = 0u;
      *(a6 + 128) = 0;
      *(a6 + 136) = 1;
      return result;
    }

    v42 = MEMORY[0x1E69E7CC0];
    v43 = v62;
    if (!v62)
    {
LABEL_49:
      QueryType.insertMany(_:)();
    }

    v83 = MEMORY[0x1E69E7CC0];
    sub_1DB1386A0(0, v62, 0);
    v44 = v83;
    v45 = a1 + 32;
    while (1)
    {
      v63 = v43;
      sub_1DB164980(v45, v77);
      v46 = type metadata accessor for SQLiteEncoder();
      v47 = swift_allocObject();
      *(v47 + 16) = v42;
      *(v47 + 24) = v42;
      *(v47 + 32) = a2;
      *(v47 + 40) = 1;
      __swift_project_boxed_opaque_existential_1(v77, v78);
      v72 = v46;
      v73 = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder, &unk_1DB2CE710);
      v71[0] = v47;

      sub_1DB2BACE4();
      if (v70)
      {
        goto LABEL_27;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      result = swift_beginAccess();
      v48 = *(v47 + 16);
      v49 = *(a3 + 16);
      v50 = *(v48 + 16);
      v51 = v50 + v49;
      if (__OFADD__(v50, v49))
      {
        goto LABEL_54;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && (v52 = *(v48 + 24) >> 1, v52 >= v51))
      {
        if (!v49)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v50 <= v51)
        {
          v55 = v50 + v49;
        }

        else
        {
          v55 = v50;
        }

        result = sub_1DB158410(result, v55, 1, v48);
        v48 = result;
        v52 = *(result + 24) >> 1;
        if (!v49)
        {
LABEL_45:

          goto LABEL_46;
        }
      }

      if (v52 - *(v48 + 16) < v49)
      {
        goto LABEL_55;
      }

      swift_arrayInitWithCopy();

      v53 = *(v48 + 16);
      v21 = __OFADD__(v53, v49);
      v54 = v53 + v49;
      if (v21)
      {
        goto LABEL_56;
      }

      *(v48 + 16) = v54;
LABEL_46:
      v70 = 0;

      __swift_destroy_boxed_opaque_existential_1(v77);
      v83 = v44;
      v57 = *(v44 + 16);
      v56 = *(v44 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_1DB1386A0((v56 > 1), v57 + 1, 1);
        v44 = v83;
      }

      *(v44 + 16) = v57 + 1;
      *(v44 + 8 * v57 + 32) = v48;
      v45 += 40;
      v43 = v63 - 1;
      v42 = MEMORY[0x1E69E7CC0];
      if (v63 == 1)
      {
        goto LABEL_49;
      }
    }
  }

  v82 = MEMORY[0x1E69E7CC0];
  sub_1DB1386A0(0, v7, 0);
  v10 = v82;
  v11 = a1 + 32;
  while (1)
  {
    v68 = v7;
    sub_1DB164980(v11, v77);
    v12 = type metadata accessor for SQLiteEncoder();
    v13 = swift_allocObject();
    *(v13 + 16) = v8;
    *(v13 + 24) = v8;
    *(v13 + 32) = a2;
    *(v13 + 40) = 0;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    v72 = v12;
    v73 = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder, &unk_1DB2CE710);
    v71[0] = v13;

    sub_1DB2BACE4();
    if (v6)
    {
LABEL_27:

      __swift_destroy_boxed_opaque_existential_1(v71);
      __swift_destroy_boxed_opaque_existential_1(v77);
    }

    __swift_destroy_boxed_opaque_existential_1(v71);
    result = swift_beginAccess();
    v15 = *(v13 + 16);
    v16 = *(a3 + 16);
    v17 = *(v15 + 16);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v19 = *(v15 + 24) >> 1, v19 >= v18))
    {
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v23 = v17 + v16;
      }

      else
      {
        v23 = v17;
      }

      result = sub_1DB158410(result, v23, 1, v15);
      v15 = result;
      v19 = *(result + 24) >> 1;
      if (!v16)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    if (v19 - *(v15 + 16) < v16)
    {
      goto LABEL_52;
    }

    swift_arrayInitWithCopy();

    v20 = *(v15 + 16);
    v21 = __OFADD__(v20, v16);
    v22 = v20 + v16;
    if (v21)
    {
      goto LABEL_53;
    }

    *(v15 + 16) = v22;
LABEL_16:

    __swift_destroy_boxed_opaque_existential_1(v77);
    v82 = v10;
    v25 = v10[2];
    v24 = v10[3];
    if (v25 >= v24 >> 1)
    {
      sub_1DB1386A0((v24 > 1), v25 + 1, 1);
      v10 = v82;
    }

    v10[2] = v25 + 1;
    v10[v25 + 4] = v15;
    v11 += 40;
    --v7;
    v8 = MEMORY[0x1E69E7CC0];
    if (v68 == 1)
    {
      goto LABEL_21;
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
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t QueryType.insertMany(or:encodables:userInfo:otherSetters:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v60 = *a1;
  v8 = *(a2 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  v64 = v8;
  if (!v8)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_21:
    swift_getKeyPath();
    v27 = v11[2];
    if (v27)
    {
      v79[0] = v9;
      sub_1DB1387C0(0, v27, 0);
      v28 = v79[0];
      v29 = v11 + 4;
      do
      {
        v84 = *v29;

        swift_getAtKeyPath();

        v30 = v73[0];
        v79[0] = v28;
        v32 = *(v28 + 16);
        v31 = *(v28 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1DB1387C0((v31 > 1), v32 + 1, 1);
          v28 = v79[0];
        }

        *(v28 + 16) = v32 + 1;
        *(v28 + 8 * v32 + 32) = v30;
        ++v29;
        --v27;
      }

      while (v27);
    }

    else
    {

      v28 = MEMORY[0x1E69E7CC0];
    }

    v72 = v7;
    v33 = sub_1DB21FF14(v28);

    v34 = *(v33 + 16);

    if (v34 == 1)
    {
      v35 = v11;
      v36 = *(a6 + 16);
      v36(v73, a5, a6);
      v37 = v74;
      v38 = v76;
      v69 = v75;
      v71 = v73[2];
      v39 = v78;
      v67 = v77;

      sub_1DB17181C(v73);
      v36(v79, a5, a6);
      v41 = v81;
      v40 = v82;
      v42 = v83;
      sub_1DB1757B0(v81, v82, v83);
      sub_1DB17181C(v79);
      *(a7 + 112) = 0u;
      *(a7 + 128) = 0;
      *(a7 + 96) = 0u;
      *a7 = v71;
      *(a7 + 8) = v37;
      *(a7 + 16) = v69;
      *(a7 + 24) = v38;
      *(a7 + 32) = v67;
      *(a7 + 40) = v39;
      *(a7 + 48) = v60;
      *(a7 + 56) = 0;
      *(a7 + 64) = v35;
      *(a7 + 72) = v41;
      *(a7 + 80) = v40;
      *(a7 + 88) = v42;
      result = sub_1DB1445E0(a7 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
      *(a7 + 96) = 0u;
      *(a7 + 112) = 0u;
      *(a7 + 128) = 0;
      *(a7 + 136) = 1;
      return result;
    }

    v43 = MEMORY[0x1E69E7CC0];
    v44 = v64;
    if (!v64)
    {
LABEL_49:
      QueryType.insertMany(_:)();
    }

    v85 = MEMORY[0x1E69E7CC0];
    sub_1DB1386A0(0, v64, 0);
    v45 = v85;
    v46 = a2 + 32;
    while (1)
    {
      v65 = v44;
      sub_1DB164980(v46, v79);
      v47 = type metadata accessor for SQLiteEncoder();
      v48 = swift_allocObject();
      *(v48 + 16) = v43;
      *(v48 + 24) = v43;
      *(v48 + 32) = a3;
      *(v48 + 40) = 1;
      __swift_project_boxed_opaque_existential_1(v79, v80);
      v74 = v47;
      v75 = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder, &unk_1DB2CE710);
      v73[0] = v48;

      sub_1DB2BACE4();
      if (v72)
      {
        goto LABEL_27;
      }

      __swift_destroy_boxed_opaque_existential_1(v73);
      result = swift_beginAccess();
      v49 = *(v48 + 16);
      v50 = *(a4 + 16);
      v51 = *(v49 + 16);
      v52 = v51 + v50;
      if (__OFADD__(v51, v50))
      {
        goto LABEL_54;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && (v53 = *(v49 + 24) >> 1, v53 >= v52))
      {
        if (!v50)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v51 <= v52)
        {
          v56 = v51 + v50;
        }

        else
        {
          v56 = v51;
        }

        result = sub_1DB158410(result, v56, 1, v49);
        v49 = result;
        v53 = *(result + 24) >> 1;
        if (!v50)
        {
LABEL_45:

          goto LABEL_46;
        }
      }

      if (v53 - *(v49 + 16) < v50)
      {
        goto LABEL_55;
      }

      swift_arrayInitWithCopy();

      v54 = *(v49 + 16);
      v22 = __OFADD__(v54, v50);
      v55 = v54 + v50;
      if (v22)
      {
        goto LABEL_56;
      }

      *(v49 + 16) = v55;
LABEL_46:
      v72 = 0;

      __swift_destroy_boxed_opaque_existential_1(v79);
      v85 = v45;
      v58 = *(v45 + 16);
      v57 = *(v45 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_1DB1386A0((v57 > 1), v58 + 1, 1);
        v45 = v85;
      }

      *(v45 + 16) = v58 + 1;
      *(v45 + 8 * v58 + 32) = v49;
      v46 += 40;
      v44 = v65 - 1;
      v43 = MEMORY[0x1E69E7CC0];
      if (v65 == 1)
      {
        goto LABEL_49;
      }
    }
  }

  v84 = MEMORY[0x1E69E7CC0];
  sub_1DB1386A0(0, v8, 0);
  v11 = v84;
  v12 = a2 + 32;
  while (1)
  {
    v70 = v8;
    sub_1DB164980(v12, v79);
    v13 = type metadata accessor for SQLiteEncoder();
    v14 = swift_allocObject();
    *(v14 + 16) = v9;
    *(v14 + 24) = v9;
    *(v14 + 32) = a3;
    *(v14 + 40) = 0;
    __swift_project_boxed_opaque_existential_1(v79, v80);
    v74 = v13;
    v75 = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder, &unk_1DB2CE710);
    v73[0] = v14;

    sub_1DB2BACE4();
    if (v7)
    {
LABEL_27:

      __swift_destroy_boxed_opaque_existential_1(v73);
      __swift_destroy_boxed_opaque_existential_1(v79);
    }

    __swift_destroy_boxed_opaque_existential_1(v73);
    result = swift_beginAccess();
    v16 = *(v14 + 16);
    v17 = *(a4 + 16);
    v18 = *(v16 + 16);
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v20 = *(v16 + 24) >> 1, v20 >= v19))
    {
      if (!v17)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v24 = v18 + v17;
      }

      else
      {
        v24 = v18;
      }

      result = sub_1DB158410(result, v24, 1, v16);
      v16 = result;
      v20 = *(result + 24) >> 1;
      if (!v17)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    if (v20 - *(v16 + 16) < v17)
    {
      goto LABEL_52;
    }

    swift_arrayInitWithCopy();

    v21 = *(v16 + 16);
    v22 = __OFADD__(v21, v17);
    v23 = v21 + v17;
    if (v22)
    {
      goto LABEL_53;
    }

    *(v16 + 16) = v23;
LABEL_16:

    __swift_destroy_boxed_opaque_existential_1(v79);
    v84 = v11;
    v26 = v11[2];
    v25 = v11[3];
    if (v26 >= v25 >> 1)
    {
      sub_1DB1386A0((v25 > 1), v26 + 1, 1);
      v11 = v84;
    }

    v11[2] = v26 + 1;
    v11[v26 + 4] = v16;
    v12 += 40;
    --v8;
    v9 = MEMORY[0x1E69E7CC0];
    if (v70 == 1)
    {
      goto LABEL_21;
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
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t QueryType.upsert(_:userInfo:otherSetters:onConflictOf:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v10 = type metadata accessor for SQLiteEncoder();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  *(v11 + 24) = v12;
  *(v11 + 32) = a2;
  *(v11 + 40) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19[3] = v10;
  v19[4] = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder, &unk_1DB2CE710);
  v19[0] = v11;

  sub_1DB2BACE4();
  if (v7)
  {

    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
    swift_beginAccess();
    v20 = *(v11 + 16);

    sub_1DB141A38(v14);
    QueryType.upsert(_:onConflictOf:)(v20, a4, a5, a6, x8_0);
  }
}

uint64_t QueryType.upsert(_:userInfo:otherSetters:onConflictOf:set:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = type metadata accessor for SQLiteEncoder();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  *(v11 + 24) = v12;
  *(v11 + 32) = a2;
  *(v11 + 40) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15[3] = v10;
  v15[4] = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder, &unk_1DB2CE710);
  v15[0] = v11;

  sub_1DB2BACE4();
  if (v7)
  {

    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    swift_beginAccess();
    v15[6] = *(v11 + 16);

    sub_1DB141A38(v14);
    QueryType.upsert(_:onConflictOf:set:)();
  }
}

uint64_t QueryType.upsert(_:userInfo:otherSetters:onConflict:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v10 = type metadata accessor for SQLiteEncoder();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  *(v11 + 24) = v12;
  *(v11 + 32) = a2;
  *(v11 + 40) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19[3] = v10;
  v19[4] = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder, &unk_1DB2CE710);
  v19[0] = v11;

  sub_1DB2BACE4();
  if (v7)
  {

    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
    swift_beginAccess();
    v20 = *(v11 + 16);

    sub_1DB141A38(v14);
    QueryType.upsert(_:onConflict:)(v20, a4, a5, a6, x8_0);
  }
}

uint64_t QueryType.upsertMany(_:userInfo:otherSetters:onConflict:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t x8_0@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DB2BCC40;
  sub_1DB201088(a4, v15 + 32);

  sub_1DB141760(v16);
  QueryType.upsertMany(_:userInfo:otherSetters:onConflict:)(a1, a2, a3, v15, a6, a7, x8_0);
}

uint64_t QueryType.upsertMany(_:userInfo:otherSetters:onConflict:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  v64 = v8;
  if (!v8)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_21:
    swift_getKeyPath();
    v27 = v11[2];
    if (v27)
    {
      v79[0] = v9;
      sub_1DB1387C0(0, v27, 0);
      v28 = v79[0];
      v29 = v11 + 4;
      do
      {
        v84 = *v29;

        swift_getAtKeyPath();

        v30 = v73[0];
        v79[0] = v28;
        v32 = *(v28 + 16);
        v31 = *(v28 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1DB1387C0((v31 > 1), v32 + 1, 1);
          v28 = v79[0];
        }

        *(v28 + 16) = v32 + 1;
        *(v28 + 8 * v32 + 32) = v30;
        ++v29;
        --v27;
      }

      while (v27);
    }

    else
    {

      v28 = MEMORY[0x1E69E7CC0];
    }

    v72 = v7;
    v33 = sub_1DB21FF14(v28);

    v34 = *(v33 + 16);

    if (v34 == 1)
    {
      v35 = v11;
      v36 = *(a6 + 16);
      v36(v73, a5, a6);
      v37 = v74;
      v38 = v76;
      v69 = v75;
      v71 = v73[2];
      v39 = v78;
      v67 = v77;

      sub_1DB17181C(v73);
      v36(v79, a5, a6);
      v41 = v81;
      v40 = v82;
      v42 = v83;
      sub_1DB1757B0(v81, v82, v83);
      sub_1DB17181C(v79);
      *(a7 + 112) = 0u;
      *(a7 + 128) = 0;
      *(a7 + 96) = 0u;
      *a7 = v71;
      *(a7 + 8) = v37;
      *(a7 + 16) = v69;
      *(a7 + 24) = v38;
      *(a7 + 32) = v67;
      *(a7 + 40) = v39;
      *(a7 + 48) = 5;
      *(a7 + 56) = a4;
      *(a7 + 64) = v35;
      *(a7 + 72) = v41;
      *(a7 + 80) = v40;
      *(a7 + 88) = v42;

      result = sub_1DB1445E0(a7 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
      *(a7 + 96) = 0u;
      *(a7 + 112) = 0u;
      *(a7 + 128) = 0;
      *(a7 + 136) = 1;
      return result;
    }

    v43 = MEMORY[0x1E69E7CC0];
    v44 = v64;
    if (!v64)
    {
LABEL_49:
      QueryType.insertMany(_:)();
    }

    v85 = MEMORY[0x1E69E7CC0];
    sub_1DB1386A0(0, v64, 0);
    v45 = v85;
    v46 = a1 + 32;
    while (1)
    {
      v65 = v44;
      sub_1DB164980(v46, v79);
      v47 = type metadata accessor for SQLiteEncoder();
      v48 = swift_allocObject();
      *(v48 + 16) = v43;
      *(v48 + 24) = v43;
      *(v48 + 32) = a2;
      *(v48 + 40) = 1;
      __swift_project_boxed_opaque_existential_1(v79, v80);
      v74 = v47;
      v75 = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder, &unk_1DB2CE710);
      v73[0] = v48;

      sub_1DB2BACE4();
      if (v72)
      {
        goto LABEL_27;
      }

      __swift_destroy_boxed_opaque_existential_1(v73);
      result = swift_beginAccess();
      v49 = *(v48 + 16);
      v50 = *(a3 + 16);
      v51 = *(v49 + 16);
      v52 = v51 + v50;
      if (__OFADD__(v51, v50))
      {
        goto LABEL_54;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && (v53 = *(v49 + 24) >> 1, v53 >= v52))
      {
        if (!v50)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v51 <= v52)
        {
          v56 = v51 + v50;
        }

        else
        {
          v56 = v51;
        }

        result = sub_1DB158410(result, v56, 1, v49);
        v49 = result;
        v53 = *(result + 24) >> 1;
        if (!v50)
        {
LABEL_45:

          goto LABEL_46;
        }
      }

      if (v53 - *(v49 + 16) < v50)
      {
        goto LABEL_55;
      }

      swift_arrayInitWithCopy();

      v54 = *(v49 + 16);
      v22 = __OFADD__(v54, v50);
      v55 = v54 + v50;
      if (v22)
      {
        goto LABEL_56;
      }

      *(v49 + 16) = v55;
LABEL_46:
      v72 = 0;

      __swift_destroy_boxed_opaque_existential_1(v79);
      v85 = v45;
      v58 = *(v45 + 16);
      v57 = *(v45 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_1DB1386A0((v57 > 1), v58 + 1, 1);
        v45 = v85;
      }

      *(v45 + 16) = v58 + 1;
      *(v45 + 8 * v58 + 32) = v49;
      v46 += 40;
      v44 = v65 - 1;
      v43 = MEMORY[0x1E69E7CC0];
      if (v65 == 1)
      {
        goto LABEL_49;
      }
    }
  }

  v84 = MEMORY[0x1E69E7CC0];
  sub_1DB1386A0(0, v8, 0);
  v11 = v84;
  v12 = a1 + 32;
  while (1)
  {
    v70 = v8;
    sub_1DB164980(v12, v79);
    v13 = type metadata accessor for SQLiteEncoder();
    v14 = swift_allocObject();
    *(v14 + 16) = v9;
    *(v14 + 24) = v9;
    *(v14 + 32) = a2;
    *(v14 + 40) = 0;
    __swift_project_boxed_opaque_existential_1(v79, v80);
    v74 = v13;
    v75 = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder, &unk_1DB2CE710);
    v73[0] = v14;

    sub_1DB2BACE4();
    if (v7)
    {
LABEL_27:

      __swift_destroy_boxed_opaque_existential_1(v73);
      __swift_destroy_boxed_opaque_existential_1(v79);
    }

    __swift_destroy_boxed_opaque_existential_1(v73);
    result = swift_beginAccess();
    v16 = *(v14 + 16);
    v17 = *(a3 + 16);
    v18 = *(v16 + 16);
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v20 = *(v16 + 24) >> 1, v20 >= v19))
    {
      if (!v17)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v24 = v18 + v17;
      }

      else
      {
        v24 = v18;
      }

      result = sub_1DB158410(result, v24, 1, v16);
      v16 = result;
      v20 = *(result + 24) >> 1;
      if (!v17)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    if (v20 - *(v16 + 16) < v17)
    {
      goto LABEL_52;
    }

    swift_arrayInitWithCopy();

    v21 = *(v16 + 16);
    v22 = __OFADD__(v21, v17);
    v23 = v21 + v17;
    if (v22)
    {
      goto LABEL_53;
    }

    *(v16 + 16) = v23;
LABEL_16:

    __swift_destroy_boxed_opaque_existential_1(v79);
    v84 = v11;
    v26 = v11[2];
    v25 = v11[3];
    if (v26 >= v25 >> 1)
    {
      sub_1DB1386A0((v25 > 1), v26 + 1, 1);
      v11 = v84;
    }

    v11[2] = v26 + 1;
    v11[v26 + 4] = v16;
    v12 += 40;
    --v8;
    v9 = MEMORY[0x1E69E7CC0];
    if (v70 == 1)
    {
      goto LABEL_21;
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
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t QueryType.update(_:userInfo:otherSetters:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v9 = type metadata accessor for SQLiteEncoder();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  *(v10 + 24) = v11;
  *(v10 + 32) = a2;
  *(v10 + 40) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17[3] = v9;
  v17[4] = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder, &unk_1DB2CE710);
  v17[0] = v10;

  sub_1DB2BACE4();
  if (v6)
  {

    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
    swift_beginAccess();
    v18 = *(v10 + 16);

    sub_1DB141A38(v13);
    QueryType.update(_:)(v18, a4, a5, x8_0);
  }
}

uint64_t Row.decode<A>(userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v5 = v3[1];
  type metadata accessor for SQLiteDecoder();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v8;
  v7[5] = a1;
  sub_1DB27ABD0(qword_1ECC29010, type metadata accessor for SQLiteDecoder, &unk_1DB2CE6C8);

  return sub_1DB2BB1C4();
}

uint64_t Row.decoder(userInfo:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = type metadata accessor for SQLiteDecoder();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v9;
  v8[5] = a1;
  a2[3] = v7;
  a2[4] = sub_1DB27ABD0(qword_1ECC29010, type metadata accessor for SQLiteDecoder, &unk_1DB2CE6C8);
  *a2 = v8;
}

uint64_t static Row.setters<A>(for:userInfo:forcingNilValueSetters:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for SQLiteEncoder();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  *(v10 + 24) = v11;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  v13[3] = v9;
  v13[4] = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder, &unk_1DB2CE710);
  v13[0] = v10;

  sub_1DB2BACE4();
  if (v5)
  {

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    swift_beginAccess();
    a5 = *(v10 + 16);
  }

  return a5;
}

uint64_t static Row.columns<A>(for:in:userInfo:includingNilValueColumns:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *&v51 = a2;
  v9 = type metadata accessor for SQLiteEncoder();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  v12 = v10 + 16;
  *(v10 + 24) = v11;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  v60 = v9;
  v13 = v10;
  v61 = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder, &unk_1DB2CE710);
  *&v59 = v13;

  sub_1DB2BACE4();
  if (v6)
  {

    __swift_destroy_boxed_opaque_existential_1(&v59);
    return v13;
  }

  __swift_destroy_boxed_opaque_existential_1(&v59);
  sub_1DB1446A4(v51, &v59, &qword_1ECC279E8, &unk_1DB2C3AE0);
  if (!v60)
  {
    sub_1DB1445E0(&v59, &qword_1ECC279E8, &unk_1DB2C3AE0);
    swift_beginAccess();
    v28 = *v12;
    v29 = *(v28 + 16);
    if (v29)
    {
      v49 = v13;
      v58[0] = v11;

      sub_1DB1384B0(0, v29, 0);
      v13 = v11;
      v30 = v28 + 32;
      do
      {
        sub_1DB164AE0(v30, &v59);
        sub_1DB164980(&v59, v62);
        sub_1DB164B3C(&v59);
        v58[0] = v13;
        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1DB1384B0((v31 > 1), v32 + 1, 1);
        }

        v33 = v63;
        v34 = v64;
        v35 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
        MEMORY[0x1EEE9AC00](v35);
        v37 = v48 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v38 + 16))(v37);
        sub_1DB16412C(v32, v37, v58, v33, v34);
        __swift_destroy_boxed_opaque_existential_1(v62);
        v13 = v58[0];
        v30 += 80;
        --v29;
      }

      while (v29);

      return v13;
    }

    return MEMORY[0x1E69E7CC0];
  }

  sub_1DB1355D0(&v59, v62);
  swift_beginAccess();
  v15 = *v12;
  v16 = *(*v12 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  v48[1] = 0;
  v49 = v13;
  if (v16)
  {
    v56 = MEMORY[0x1E69E7CC0];

    sub_1DB1387F0(0, v16, 0);
    v18 = v17;
    *&v51 = v15;
    v19 = v15 + 32;
    do
    {
      v20 = v17;
      sub_1DB164AE0(v19, &v59);
      v21 = v60;
      v22 = v61;
      __swift_project_boxed_opaque_existential_1(&v59, v60);
      (*(v22 + 24))(&v52, v21, v22);
      v23 = v52;
      v24 = v53;

      sub_1DB164B3C(&v59);
      v56 = v18;
      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1DB1387F0((v25 > 1), v26 + 1, 1);
        v18 = v56;
      }

      *(v18 + 16) = v26 + 1;
      v27 = (v18 + 24 * v26);
      v27[4] = v23;
      v27[5] = v24;
      v17 = v20;
      v27[6] = v20;
      v19 += 80;
      --v16;
    }

    while (v16);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  sub_1DB164980(v62, &v59);
  v39 = *(v18 + 16);
  if (!v39)
  {

    __swift_destroy_boxed_opaque_existential_1(&v59);

    __swift_destroy_boxed_opaque_existential_1(v62);
    return MEMORY[0x1E69E7CC0];
  }

  v65 = v17;
  result = sub_1DB1384B0(0, v39, 0);
  v40 = 0;
  v13 = v65;
  v41 = (v18 + 40);
  v50 = v39;
  while (v40 < *(v18 + 16))
  {
    v42 = *(v41 - 1);
    v43 = v60;
    v44 = v61;
    v51 = *v41;
    __swift_project_boxed_opaque_existential_1(&v59, v60);
    v52 = v42;
    v53 = v51;
    QueryType.namespace<A>(_:)(&v52, v43, MEMORY[0x1E69E7CA8] + 8, v44);
    v65 = v13;
    v46 = *(v13 + 16);
    v45 = *(v13 + 24);
    if (v46 >= v45 >> 1)
    {
      sub_1DB1384B0((v45 > 1), v46 + 1, 1);
      v13 = v65;
    }

    ++v40;
    v47 = v56;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v55 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
    v52 = v47;
    v53 = v57;
    *(v13 + 16) = v46 + 1;
    result = sub_1DB1355D0(&v52, v13 + 40 * v46 + 32);
    v41 = (v41 + 24);
    if (v50 == v40)
    {

      __swift_destroy_boxed_opaque_existential_1(&v59);
      __swift_destroy_boxed_opaque_existential_1(v62);
      return v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB272814(uint64_t a1, char a2)
{
  result = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(result + 16) = a1;
  *(result + 24) = v5;
  *(result + 32) = a2;
  return result;
}

uint64_t sub_1DB272918()
{
  v1 = *(v0 + 16);
  v2 = sub_1DB2BBAA4();
  v4 = sub_1DB2B995C(34, 0xE100000000000000, v2, v3);
  v6 = v5;

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E0, &unk_1DB2CE7A0);
  v8 = sub_1DB1688F0(&qword_1EE13EF70, &qword_1ECC280E0, &unk_1DB2CE7A0, &protocol conformance descriptor for Expression<A>);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB2BCC40;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0;
  swift_beginAccess();
  v10 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1DB158410(0, *(v10 + 2) + 1, 1, v10);
    *(v1 + 16) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1DB158410((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[80 * v13];
  v15 = MEMORY[0x1E69E7CC0];
  *(v14 + 4) = v4;
  *(v14 + 5) = v6;
  *(v14 + 6) = v15;
  *(v14 + 7) = v7;
  *(v14 + 8) = v8;
  *(v14 + 9) = 63;
  *(v14 + 10) = 0xE100000000000000;
  *(v14 + 11) = v9;
  *(v14 + 12) = v7;
  *(v14 + 13) = v8;
  *(v1 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_1DB272B00(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1DB2BBAA4();
  v6 = sub_1DB2B995C(34, 0xE100000000000000, v4, v5);
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28108, &unk_1DB2C4B50);
  v10 = sub_1DB1688F0(&qword_1ECC28CF8, &qword_1ECC28108, &unk_1DB2C4B50, &protocol conformance descriptor for Expression<A>);
  swift_beginAccess();
  v11 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1DB158410(0, *(v11 + 2) + 1, 1, v11);
    *(v3 + 16) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1DB158410((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[80 * v14];
  *(v15 + 4) = v6;
  *(v15 + 5) = v8;
  *(v15 + 6) = MEMORY[0x1E69E7CC0];
  *(v15 + 7) = v9;
  *(v15 + 8) = v10;
  *(v15 + 9) = a1;
  v16 = MEMORY[0x1E69E6530];
  *(v15 + 5) = v18;
  *(v15 + 12) = v16;
  *(v15 + 13) = &protocol witness table for Int;
  *(v3 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_1DB272CBC(char a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1DB2BBAA4();
  v6 = sub_1DB2B995C(34, 0xE100000000000000, v4, v5);
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
  v10 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
  swift_beginAccess();
  v11 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1DB158410(0, *(v11 + 2) + 1, 1, v11);
    *(v3 + 16) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1DB158410((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[80 * v14];
  *(v15 + 4) = v6;
  *(v15 + 5) = v8;
  *(v15 + 6) = MEMORY[0x1E69E7CC0];
  *(v15 + 7) = v9;
  *(v15 + 8) = v10;
  v15[72] = a1 & 1;
  v16 = MEMORY[0x1E69E6370];
  *(v15 + 11) = *&v18[15];
  *(v15 + 12) = v16;
  *(v15 + 73) = *v18;
  *(v15 + 13) = &protocol witness table for Bool;
  *(v3 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_1DB272E88(float a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1DB2BBAA4();
  v6 = sub_1DB2B995C(34, 0xE100000000000000, v4, v5);
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28128, &unk_1DB2C4B60);
  v10 = sub_1DB1688F0(&qword_1ECC29160, &qword_1ECC28128, &unk_1DB2C4B60, &protocol conformance descriptor for Expression<A>);
  swift_beginAccess();
  v11 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1DB158410(0, *(v11 + 2) + 1, 1, v11);
    *(v3 + 16) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1DB158410((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[80 * v14];
  *(v15 + 4) = v6;
  *(v15 + 5) = v8;
  *(v15 + 6) = MEMORY[0x1E69E7CC0];
  *(v15 + 7) = v9;
  *(v15 + 8) = v10;
  *(v15 + 9) = a1;
  v16 = MEMORY[0x1E69E63B0];
  *(v15 + 5) = v18;
  *(v15 + 12) = v16;
  *(v15 + 13) = &protocol witness table for Double;
  *(v3 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_1DB27305C(double a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1DB2BBAA4();
  v6 = sub_1DB2B995C(34, 0xE100000000000000, v4, v5);
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28128, &unk_1DB2C4B60);
  v10 = sub_1DB1688F0(&qword_1ECC29160, &qword_1ECC28128, &unk_1DB2C4B60, &protocol conformance descriptor for Expression<A>);
  swift_beginAccess();
  v11 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1DB158410(0, *(v11 + 2) + 1, 1, v11);
    *(v3 + 16) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1DB158410((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[80 * v14];
  *(v15 + 4) = v6;
  *(v15 + 5) = v8;
  *(v15 + 6) = MEMORY[0x1E69E7CC0];
  *(v15 + 7) = v9;
  *(v15 + 8) = v10;
  *(v15 + 9) = a1;
  v16 = MEMORY[0x1E69E63B0];
  *(v15 + 5) = v18;
  *(v15 + 12) = v16;
  *(v15 + 13) = &protocol witness table for Double;
  *(v3 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_1DB27322C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = sub_1DB2BBAA4();
  v7 = sub_1DB2B995C(34, 0xE100000000000000, v5, v6);
  v9 = v8;

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
  v11 = sub_1DB1688F0(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30, &protocol conformance descriptor for Expression<A>);
  swift_beginAccess();
  v12 = *(v4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1DB158410(0, *(v12 + 2) + 1, 1, v12);
    *(v4 + 16) = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1DB158410((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[80 * v15];
  *(v16 + 4) = v7;
  *(v16 + 5) = v9;
  *(v16 + 6) = MEMORY[0x1E69E7CC0];
  *(v16 + 7) = v10;
  *(v16 + 8) = v11;
  *(v16 + 9) = a1;
  v17 = MEMORY[0x1E69E6158];
  *(v16 + 10) = a2;
  *(v16 + 12) = v17;
  *(v16 + 13) = &protocol witness table for String;
  *(v4 + 16) = v12;
  return swift_endAccess();
}

uint64_t sub_1DB2733F0(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1DB272B00(result);
  }

  if (*(v2 + 32) == 1)
  {
    v3 = *(v2 + 16);
    v4 = sub_1DB2BBAA4();
    v6 = sub_1DB2B995C(34, 0xE100000000000000, v4, v5);
    v8 = v7;

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28118, &unk_1DB2CE7C0);
    v10 = sub_1DB1688F0(&qword_1ECC29158, &qword_1ECC28118, &unk_1DB2CE7C0, &protocol conformance descriptor for Expression<A>);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DB2BCC40;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0;
    swift_beginAccess();
    v12 = *(v3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 16) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1DB158410(0, *(v12 + 2) + 1, 1, v12);
      *(v3 + 16) = v12;
    }

    v14 = *(v12 + 2);
    v15 = *(v12 + 3);
    v16 = v14 + 1;
    if (v14 >= v15 >> 1)
    {
      v22 = v14 + 1;
      v19 = v12;
      v20 = *(v12 + 2);
      v21 = sub_1DB158410((v15 > 1), v14 + 1, 1, v19);
      v14 = v20;
      v16 = v22;
      v12 = v21;
    }

    *(v12 + 2) = v16;
    v17 = &v12[80 * v14];
    v18 = MEMORY[0x1E69E7CC0];
    *(v17 + 4) = v6;
    *(v17 + 5) = v8;
    *(v17 + 6) = v18;
    *(v17 + 7) = v9;
    *(v17 + 8) = v10;
    *(v17 + 9) = 63;
    *(v17 + 10) = 0xE100000000000000;
    *(v17 + 11) = v11;
    *(v17 + 12) = v9;
    *(v17 + 13) = v10;
    *(v3 + 16) = v12;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1DB2735FC(uint64_t result)
{
  if (result != 2)
  {
    return sub_1DB272CBC(result & 1);
  }

  if (*(v1 + 32) == 1)
  {
    v2 = *(v1 + 16);
    v3 = sub_1DB2BBAA4();
    v5 = sub_1DB2B995C(34, 0xE100000000000000, v3, v4);
    v7 = v6;

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    v9 = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DB2BCC40;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0;
    swift_beginAccess();
    v11 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1DB158410(0, *(v11 + 2) + 1, 1, v11);
      *(v2 + 16) = v11;
    }

    v13 = *(v11 + 2);
    v14 = *(v11 + 3);
    v15 = v13 + 1;
    if (v13 >= v14 >> 1)
    {
      v21 = v13 + 1;
      v18 = v11;
      v19 = *(v11 + 2);
      v20 = sub_1DB158410((v14 > 1), v13 + 1, 1, v18);
      v13 = v19;
      v15 = v21;
      v11 = v20;
    }

    *(v11 + 2) = v15;
    v16 = &v11[80 * v13];
    v17 = MEMORY[0x1E69E7CC0];
    *(v16 + 4) = v5;
    *(v16 + 5) = v7;
    *(v16 + 6) = v17;
    *(v16 + 7) = v8;
    *(v16 + 8) = v9;
    *(v16 + 9) = 63;
    *(v16 + 10) = 0xE100000000000000;
    *(v16 + 11) = v10;
    *(v16 + 12) = v8;
    *(v16 + 13) = v9;
    *(v2 + 16) = v11;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1DB273814(uint64_t result)
{
  if ((result & 0x100000000) == 0)
  {
    return sub_1DB272E88(*&result);
  }

  if (*(v1 + 32) == 1)
  {
    v2 = *(v1 + 16);
    v3 = sub_1DB2BBAA4();
    v5 = sub_1DB2B995C(34, 0xE100000000000000, v3, v4);
    v7 = v6;

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28138, &unk_1DB2CE7B0);
    v9 = sub_1DB1688F0(&qword_1ECC29150, &qword_1ECC28138, &unk_1DB2CE7B0, &protocol conformance descriptor for Expression<A>);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DB2BCC40;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0;
    swift_beginAccess();
    v11 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1DB158410(0, *(v11 + 2) + 1, 1, v11);
      *(v2 + 16) = v11;
    }

    v13 = *(v11 + 2);
    v14 = *(v11 + 3);
    v15 = v13 + 1;
    if (v13 >= v14 >> 1)
    {
      v21 = v13 + 1;
      v18 = v11;
      v19 = *(v11 + 2);
      v20 = sub_1DB158410((v14 > 1), v13 + 1, 1, v18);
      v13 = v19;
      v15 = v21;
      v11 = v20;
    }

    *(v11 + 2) = v15;
    v16 = &v11[80 * v13];
    v17 = MEMORY[0x1E69E7CC0];
    *(v16 + 4) = v5;
    *(v16 + 5) = v7;
    *(v16 + 6) = v17;
    *(v16 + 7) = v8;
    *(v16 + 8) = v9;
    *(v16 + 9) = 63;
    *(v16 + 10) = 0xE100000000000000;
    *(v16 + 11) = v10;
    *(v16 + 12) = v8;
    *(v16 + 13) = v9;
    *(v2 + 16) = v11;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1DB273A28(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1DB27305C(*&result);
  }

  if (*(v2 + 32) == 1)
  {
    v3 = *(v2 + 16);
    v4 = sub_1DB2BBAA4();
    v6 = sub_1DB2B995C(34, 0xE100000000000000, v4, v5);
    v8 = v7;

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28138, &unk_1DB2CE7B0);
    v10 = sub_1DB1688F0(&qword_1ECC29150, &qword_1ECC28138, &unk_1DB2CE7B0, &protocol conformance descriptor for Expression<A>);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DB2BCC40;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0;
    swift_beginAccess();
    v12 = *(v3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 16) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1DB158410(0, *(v12 + 2) + 1, 1, v12);
      *(v3 + 16) = v12;
    }

    v14 = *(v12 + 2);
    v15 = *(v12 + 3);
    v16 = v14 + 1;
    if (v14 >= v15 >> 1)
    {
      v22 = v14 + 1;
      v19 = v12;
      v20 = *(v12 + 2);
      v21 = sub_1DB158410((v15 > 1), v14 + 1, 1, v19);
      v14 = v20;
      v16 = v22;
      v12 = v21;
    }

    *(v12 + 2) = v16;
    v17 = &v12[80 * v14];
    v18 = MEMORY[0x1E69E7CC0];
    *(v17 + 4) = v6;
    *(v17 + 5) = v8;
    *(v17 + 6) = v18;
    *(v17 + 7) = v9;
    *(v17 + 8) = v10;
    *(v17 + 9) = 63;
    *(v17 + 10) = 0xE100000000000000;
    *(v17 + 11) = v11;
    *(v17 + 12) = v9;
    *(v17 + 13) = v10;
    *(v3 + 16) = v12;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1DB273C38(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return sub_1DB27322C(result, a2);
  }

  if (*(v2 + 32) == 1)
  {
    v3 = *(v2 + 16);
    v4 = sub_1DB2BBAA4();
    v6 = sub_1DB2B995C(34, 0xE100000000000000, v4, v5);
    v8 = v7;

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E0, &unk_1DB2CE7A0);
    v10 = sub_1DB1688F0(&qword_1EE13EF70, &qword_1ECC280E0, &unk_1DB2CE7A0, &protocol conformance descriptor for Expression<A>);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DB2BCC40;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0;
    swift_beginAccess();
    v12 = *(v3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 16) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1DB158410(0, *(v12 + 2) + 1, 1, v12);
      *(v3 + 16) = v12;
    }

    v14 = *(v12 + 2);
    v15 = *(v12 + 3);
    v16 = v14 + 1;
    if (v14 >= v15 >> 1)
    {
      v22 = v14 + 1;
      v19 = v12;
      v20 = *(v12 + 2);
      v21 = sub_1DB158410((v15 > 1), v14 + 1, 1, v19);
      v14 = v20;
      v16 = v22;
      v12 = v21;
    }

    *(v12 + 2) = v16;
    v17 = &v12[80 * v14];
    v18 = MEMORY[0x1E69E7CC0];
    *(v17 + 4) = v6;
    *(v17 + 5) = v8;
    *(v17 + 6) = v18;
    *(v17 + 7) = v9;
    *(v17 + 8) = v10;
    *(v17 + 9) = 63;
    *(v17 + 10) = 0xE100000000000000;
    *(v17 + 11) = v11;
    *(v17 + 12) = v9;
    *(v17 + 13) = v10;
    *(v3 + 16) = v12;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1DB273E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v105[2] = a4;
  v8 = sub_1DB2BADE4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v105[0] = v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1DB2BA944();
  v106 = *(v109 - 8);
  v10 = MEMORY[0x1EEE9AC00](v109);
  v108 = v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v105 - v12;
  v14 = sub_1DB2BA904();
  v107 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v110 = v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v105 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v22;
  v23 = *(v22 + 16);
  v105[1] = a1;
  v23(v21, a1, a3);
  v24 = swift_dynamicCast();
  v111 = v21;
  v112 = a3;
  if (v24)
  {
    v109 = v115;
    v110 = v114;
    v25 = *(v5 + 16);
    v26 = sub_1DB2BBAA4();
    v28 = sub_1DB2B995C(34, 0xE100000000000000, v26, v27);
    v30 = v29;

    v31 = sub_1DB2074E8();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28168, &unk_1DB2C4B80);
    v33 = sub_1DB1688F0(&qword_1ECC281E0, &qword_1ECC28168, &unk_1DB2C4B80, &protocol conformance descriptor for Expression<A>);
    swift_beginAccess();
    v34 = *(v25 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v25 + 16) = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_1DB158410(0, *(v34 + 2) + 1, 1, v34);
      *(v25 + 16) = v34;
    }

    v37 = *(v34 + 2);
    v36 = *(v34 + 3);
    if (v37 >= v36 >> 1)
    {
      v34 = sub_1DB158410((v36 > 1), v37 + 1, 1, v34);
    }

    *(v34 + 2) = v37 + 1;
    v38 = &v34[80 * v37];
    *(v38 + 4) = v28;
    *(v38 + 5) = v30;
    *(v38 + 6) = MEMORY[0x1E69E7CC0];
    *(v38 + 7) = v32;
    v39 = v109;
    v40 = v110;
    *(v38 + 8) = v33;
    *(v38 + 9) = v40;
    *(v38 + 10) = v39;
    *(v38 + 12) = MEMORY[0x1E6969080];
    *(v38 + 13) = v31;
    *(v25 + 16) = v34;
    swift_endAccess();
  }

  else if (swift_dynamicCast())
  {
    v41 = v107;
    (*(v107 + 32))(v110, v19, v14);
    v42 = *(v5 + 16);
    v43 = sub_1DB2BBAA4();
    v45 = sub_1DB2B995C(34, 0xE100000000000000, v43, v44);
    v108 = v46;
    v109 = v45;

    if (qword_1ECC26C50 != -1)
    {
      swift_once();
    }

    v47 = qword_1ECC29568;
    v48 = sub_1DB2BA8C4();
    v49 = [v47 stringFromDate_];

    v50 = sub_1DB2BAD94();
    v106 = v51;

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
    v53 = sub_1DB1688F0(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30, &protocol conformance descriptor for Expression<A>);
    swift_beginAccess();
    v54 = *(v42 + 16);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    *(v42 + 16) = v54;
    if ((v55 & 1) == 0)
    {
      v54 = sub_1DB158410(0, *(v54 + 2) + 1, 1, v54);
      *(v42 + 16) = v54;
    }

    v57 = *(v54 + 2);
    v56 = *(v54 + 3);
    if (v57 >= v56 >> 1)
    {
      v54 = sub_1DB158410((v56 > 1), v57 + 1, 1, v54);
    }

    *(v54 + 2) = v57 + 1;
    v58 = &v54[80 * v57];
    v59 = v108;
    *(v58 + 4) = v109;
    *(v58 + 5) = v59;
    *(v58 + 6) = MEMORY[0x1E69E7CC0];
    *(v58 + 7) = v52;
    *(v58 + 8) = v53;
    *(v58 + 9) = v50;
    v60 = MEMORY[0x1E69E6158];
    *(v58 + 10) = v106;
    *(v58 + 12) = v60;
    *(v58 + 13) = &protocol witness table for String;
    *(v42 + 16) = v54;
    swift_endAccess();
    (*(v41 + 8))(v110, v14);
  }

  else
  {
    v61 = v109;
    if (swift_dynamicCast())
    {
      v62 = v106;
      (*(v106 + 32))(v108, v13, v61);
      v63 = *(v5 + 16);
      v64 = sub_1DB2BBAA4();
      v110 = sub_1DB2B995C(34, 0xE100000000000000, v64, v65);
      v107 = v66;

      v67 = _s10Foundation4UUIDV19OnDeviceStorageCoreE13datatypeValueSSvg_0();
      v69 = v68;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
      v71 = sub_1DB1688F0(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30, &protocol conformance descriptor for Expression<A>);
      swift_beginAccess();
      v72 = *(v63 + 16);
      v73 = swift_isUniquelyReferenced_nonNull_native();
      *(v63 + 16) = v72;
      if ((v73 & 1) == 0)
      {
        v72 = sub_1DB158410(0, *(v72 + 2) + 1, 1, v72);
        *(v63 + 16) = v72;
      }

      v75 = *(v72 + 2);
      v74 = *(v72 + 3);
      if (v75 >= v74 >> 1)
      {
        v72 = sub_1DB158410((v74 > 1), v75 + 1, 1, v72);
      }

      *(v72 + 2) = v75 + 1;
      v76 = &v72[80 * v75];
      v77 = v107;
      *(v76 + 4) = v110;
      *(v76 + 5) = v77;
      *(v76 + 6) = MEMORY[0x1E69E7CC0];
      *(v76 + 7) = v70;
      *(v76 + 8) = v71;
      *(v76 + 9) = v67;
      v78 = MEMORY[0x1E69E6158];
      *(v76 + 10) = v69;
      *(v76 + 12) = v78;
      *(v76 + 13) = &protocol witness table for String;
      *(v63 + 16) = v72;
      swift_endAccess();
      (*(v62 + 8))(v108, v109);
    }

    else
    {
      sub_1DB2BA5F4();
      swift_allocObject();
      sub_1DB2BA5E4();
      v79 = v116;
      v80 = sub_1DB2BA5D4();
      v82 = v81;

      if (v79)
      {
        return (*(v113 + 8))(v21, a3);
      }

      v116 = 0;
      sub_1DB2BADD4();
      v109 = v82;
      v110 = v80;
      v84 = sub_1DB2BADB4();
      v86 = v85;
      v87 = *(v5 + 16);
      v88 = sub_1DB2BBAA4();
      v108 = sub_1DB2B995C(34, 0xE100000000000000, v88, v89);
      v91 = v90;

      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E0, &unk_1DB2CE7A0);
      v93 = sub_1DB1688F0(&qword_1EE13EF70, &qword_1ECC280E0, &unk_1DB2CE7A0, &protocol conformance descriptor for Expression<A>);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
      v94 = swift_allocObject();
      v95 = v94;
      *(v94 + 16) = xmmword_1DB2BCC40;
      if (v86)
      {
        v96 = &protocol witness table for String;
        v97 = MEMORY[0x1E69E6158];
      }

      else
      {
        v84 = 0;
        v97 = 0;
        v96 = 0;
        *(v94 + 48) = 0;
      }

      *(v94 + 32) = v84;
      *(v94 + 40) = v86;
      *(v94 + 56) = v97;
      *(v94 + 64) = v96;
      swift_beginAccess();
      v98 = *(v87 + 16);
      v99 = swift_isUniquelyReferenced_nonNull_native();
      *(v87 + 16) = v98;
      if ((v99 & 1) == 0)
      {
        v98 = sub_1DB158410(0, *(v98 + 2) + 1, 1, v98);
        *(v87 + 16) = v98;
      }

      v100 = v109;
      v102 = *(v98 + 2);
      v101 = *(v98 + 3);
      if (v102 >= v101 >> 1)
      {
        v98 = sub_1DB158410((v101 > 1), v102 + 1, 1, v98);
      }

      *(v98 + 2) = v102 + 1;
      v103 = &v98[80 * v102];
      v104 = MEMORY[0x1E69E7CC0];
      *(v103 + 4) = v108;
      *(v103 + 5) = v91;
      *(v103 + 6) = v104;
      *(v103 + 7) = v92;
      *(v103 + 8) = v93;
      *(v103 + 9) = 63;
      *(v103 + 10) = 0xE100000000000000;
      *(v103 + 11) = v95;
      *(v103 + 12) = v92;
      *(v103 + 13) = v93;
      *(v87 + 16) = v98;
      swift_endAccess();
      sub_1DB207494(v110, v100);
    }
  }

  return (*(v113 + 8))(v111, v112);
}

uint64_t sub_1DB274898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32[1] = *v4;
  v33 = a4;
  v8 = sub_1DB2BB364();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v32 - v11;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  if ((*(v13 + 48))(v12, 1, a3) == 1)
  {
    result = (*(v9 + 8))(v12, v8);
    if (*(v4 + 32) == 1)
    {
      v17 = *(v4 + 16);
      v18 = sub_1DB2BBAA4();
      v20 = sub_1DB2B995C(34, 0xE100000000000000, v18, v19);
      v22 = v21;

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E0, &unk_1DB2CE7A0);
      v24 = sub_1DB1688F0(&qword_1EE13EF70, &qword_1ECC280E0, &unk_1DB2CE7A0, &protocol conformance descriptor for Expression<A>);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1DB2BCC40;
      *(v25 + 32) = 0u;
      *(v25 + 48) = 0u;
      *(v25 + 64) = 0;
      swift_beginAccess();
      v26 = *(v17 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 16) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_1DB158410(0, *(v26 + 2) + 1, 1, v26);
        *(v17 + 16) = v26;
      }

      v29 = *(v26 + 2);
      v28 = *(v26 + 3);
      if (v29 >= v28 >> 1)
      {
        v26 = sub_1DB158410((v28 > 1), v29 + 1, 1, v26);
      }

      *(v26 + 2) = v29 + 1;
      v30 = &v26[80 * v29];
      v31 = MEMORY[0x1E69E7CC0];
      *(v30 + 4) = v20;
      *(v30 + 5) = v22;
      *(v30 + 6) = v31;
      *(v30 + 7) = v23;
      *(v30 + 8) = v24;
      *(v30 + 9) = 63;
      *(v30 + 10) = 0xE100000000000000;
      *(v30 + 11) = v25;
      *(v30 + 12) = v23;
      *(v30 + 13) = v24;
      *(v17 + 16) = v26;
      return swift_endAccess();
    }
  }

  else
  {
    (*(v13 + 32))(v15, v12, a3);
    sub_1DB273E40(v15, a2, a3, v33);
    return (*(v13 + 8))(v15, a3);
  }

  return result;
}

uint64_t sub_1DB274C40(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1DB2BBAA4();
  v6 = sub_1DB2B995C(34, 0xE100000000000000, v4, v5);
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v10 = sub_1DB1688F0(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40, &protocol conformance descriptor for Expression<A>);
  swift_beginAccess();
  v11 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1DB158410(0, *(v11 + 2) + 1, 1, v11);
    *(v3 + 16) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1DB158410((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[80 * v14];
  *(v15 + 4) = v6;
  *(v15 + 5) = v8;
  *(v15 + 6) = MEMORY[0x1E69E7CC0];
  *(v15 + 7) = v9;
  *(v15 + 8) = v10;
  *(v15 + 9) = a1;
  v16 = MEMORY[0x1E69E7360];
  *(v15 + 5) = v18;
  *(v15 + 12) = v16;
  *(v15 + 13) = &protocol witness table for Int64;
  *(v3 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_1DB274EB4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DB2757FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer(0, a2, a3, a4);
  v5 = *(v4 + 40);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = v4;
  *(v6 + 24) = v7;
  *(v6 + 32) = v5;

  swift_getWitnessTable();
  return sub_1DB2BB8D4();
}

uint64_t sub_1DB2758A4()
{

  return swift_deallocClassInstance();
}

__n128 sub_1DB2759D8(__n128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  result = *a1;
  *(v2 + 24) = *a1;
  return result;
}

uint64_t sub_1DB275A1C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29140, &unk_1DB2CE790);
  sub_1DB1688F0(&qword_1ECC29148, &qword_1ECC29140, &unk_1DB2CE790, MEMORY[0x1E69E5D90]);
  v0 = sub_1DB2BB034();

  return v0;
}

uint64_t sub_1DB275B14()
{

  v0 = sub_1DB2BBAA4();
  v2 = sub_1DB28B23C(v0, v1);

  return v2 & 1;
}

uint64_t sub_1DB275BF8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_1DB2BBAA4();
  v5 = sub_1DB2B995C(34, 0xE100000000000000, v3, v4);
  v7 = v6;

  v8 = sub_1DB275DDC(v5, v7, MEMORY[0x1E69E7CC0], v1, v2);

  return v8 & 1;
}

uint64_t sub_1DB275CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  swift_bridgeObjectRetain_n();

  v11 = sub_1DB277034(a1, a2, a3, a4, a5);
  v13 = v12;

  if (v5 || v13)
  {
  }

  else
  {
    sub_1DB1F88FC();
    swift_allocError();
    *v15 = a1;
    *(v15 + 8) = a2;
    *(v15 + 16) = 0;
    *(v15 + 24) = 3;
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_1DB275DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_bridgeObjectRetain_n();

  v11 = sub_1DB277694(a1, a2, a3, a4, a5);

  if (v5 || v11 != 2)
  {
  }

  else
  {
    sub_1DB1F88FC();
    swift_allocError();
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = 0;
    *(v12 + 24) = 3;
    swift_willThrow();
  }

  return v11 & 1;
}

uint64_t sub_1DB275ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_bridgeObjectRetain_n();

  v11 = sub_1DB277C64(a1, a2, a3, a4, a5, MEMORY[0x1E69E7360]);
  v13 = v12;

  if (v5 || (v13 & 1) == 0)
  {
  }

  else
  {
    sub_1DB1F88FC();
    swift_allocError();
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = 0;
    *(v14 + 24) = 3;
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_1DB275FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_bridgeObjectRetain_n();

  sub_1DB277C64(a1, a2, a3, a4, a5, MEMORY[0x1E69E63B0]);
  v12 = v11;

  if (v5 || (v12 & 1) == 0)
  {
  }

  sub_1DB1F88FC();
  swift_allocError();
  *v13 = a1;
  *(v13 + 8) = a2;
  *(v13 + 16) = 0;
  *(v13 + 24) = 3;
  return swift_willThrow();
}

uint64_t sub_1DB2760B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  swift_bridgeObjectRetain_n();

  sub_1DB278884(a1, a2, a4, a5, &v15);

  if (v6)
  {
  }

  v13 = v16;
  if (v16 >> 60 == 15)
  {
    sub_1DB2351B8(v15, v16);
    sub_1DB1F88FC();
    swift_allocError();
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = 0;
    *(v14 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    *a6 = v15;
    a6[1] = v13;
  }

  return result;
}

uint64_t sub_1DB2761D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29130, &qword_1DB2CE780);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  swift_bridgeObjectRetain_n();

  sub_1DB2782C0(a1, a2, a4, a5, MEMORY[0x1E6969530], sub_1DB2B7BA8, v14);

  if (v6)
  {
  }

  v16 = sub_1DB2BA904();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_1DB1445E0(v14, &qword_1ECC29130, &qword_1DB2CE780);
    sub_1DB1F88FC();
    swift_allocError();
    *v18 = a1;
    *(v18 + 8) = a2;
    *(v18 + 16) = 0;
    *(v18 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    return (*(v17 + 32))(a6, v14, v16);
  }
}

uint64_t sub_1DB2763E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29138, &qword_1DB2CE788);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  swift_bridgeObjectRetain_n();

  sub_1DB2782C0(a1, a2, a4, a5, MEMORY[0x1E69695A8], static UUID.fromDatatypeValue(_:), v14);

  if (v6)
  {
  }

  v16 = sub_1DB2BA944();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_1DB1445E0(v14, &qword_1ECC29138, &qword_1DB2CE788);
    sub_1DB1F88FC();
    swift_allocError();
    *v18 = a1;
    *(v18 + 8) = a2;
    *(v18 + 16) = 0;
    *(v18 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    return (*(v17 + 32))(a6, v14, v16);
  }
}

uint64_t sub_1DB2765F0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_1DB2BBAA4();
  v5 = sub_1DB2B995C(34, 0xE100000000000000, v3, v4);
  v7 = v6;

  v8 = sub_1DB275ED0(v5, v7, MEMORY[0x1E69E7CC0], v1, v2);

  return v8;
}

uint64_t sub_1DB2766C8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_1DB2BBAA4();
  v5 = sub_1DB2B995C(34, 0xE100000000000000, v3, v4);
  v7 = v6;

  sub_1DB275FBC(v5, v7, MEMORY[0x1E69E7CC0], v1, v2);
}

double sub_1DB2767C4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_1DB2BBAA4();
  v5 = sub_1DB2B995C(34, 0xE100000000000000, v3, v4);
  v7 = v6;

  sub_1DB275FBC(v5, v7, MEMORY[0x1E69E7CC0], v1, v2);
  v9 = v8;

  return v9;
}

uint64_t sub_1DB2768A4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_1DB2BBAA4();
  v5 = sub_1DB2B995C(34, 0xE100000000000000, v3, v4);
  v7 = v6;

  v8 = sub_1DB275CE8(v5, v7, MEMORY[0x1E69E7CC0], v1, v2);

  return v8;
}

uint64_t sub_1DB276984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v68 = a4;
  v73 = a5;
  v74 = a3;
  v75 = *v5;
  v76 = a2;
  v7 = sub_1DB2BADE4();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB2BA944();
  v72 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v63 - v13;
  v15 = sub_1DB2BA904();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v63 - v20;
  if (swift_dynamicCastMetatype())
  {
    v22 = v5[3];
    v23 = v5[4];
    v24 = sub_1DB2BBAA4();
    v26 = sub_1DB2B995C(34, 0xE100000000000000, v24, v25);
    v28 = v27;

    v29 = v78;
    sub_1DB2760B4(v26, v28, v22, v23, &v77);
    if (!v29)
    {

      return swift_dynamicCast();
    }

    goto LABEL_6;
  }

  v66 = v14;
  v67 = v21;
  v64 = v19;
  v65 = v16;
  v63 = v12;
  if (swift_dynamicCastMetatype())
  {
    v30 = v5[3];
    v31 = v5[4];
    v32 = sub_1DB2BBAA4();
    v34 = sub_1DB2B995C(34, 0xE100000000000000, v32, v33);
    v36 = v35;

    v37 = v67;
    v38 = v78;
    sub_1DB2761D0(v34, v36, v30, v31, v67);
    if (!v38)
    {

      (*(v65 + 32))(v64, v37, v15);
      return swift_dynamicCast();
    }

    goto LABEL_6;
  }

  v40 = v9;
  v41 = swift_dynamicCastMetatype();
  v42 = v5[4];
  v67 = v5[3];
  v43 = sub_1DB2BBAA4();
  v45 = sub_1DB2B995C(34, 0xE100000000000000, v43, v44);
  v47 = v46;

  if (v41)
  {
    v48 = v66;
    v49 = v78;
    sub_1DB2763E0(v45, v47, v67, v42, v66);
    if (!v49)
    {

      (*(v72 + 32))(v63, v48, v40);
      return swift_dynamicCast();
    }

LABEL_6:
  }

  v50 = a1;
  v51 = v78;
  sub_1DB277034(v45, v47, MEMORY[0x1E69E7CC0], v67, v42);
  if (v51)
  {
    goto LABEL_6;
  }

  v53 = v52;

  if (!v53)
  {
    v58 = sub_1DB2BB564();
    swift_allocError();
    v60 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10);
    *v60 = v50;

    sub_1DB2BB554();
    v61 = MEMORY[0x1E69E6AF8];
    goto LABEL_18;
  }

  v54 = v69;
  sub_1DB2BADD4();
  v55 = sub_1DB2BADA4();
  v57 = v56;

  (*(v70 + 8))(v54, v71);
  if (v57 >> 60 == 15)
  {
    v58 = sub_1DB2BB564();
    swift_allocError();
    v60 = v59;

    sub_1DB2BB554();
    v61 = MEMORY[0x1E69E6B00];
LABEL_18:
    (*(*(v58 - 8) + 104))(v60, *v61, v58);
    return swift_willThrow();
  }

  sub_1DB2BA5C4();
  swift_allocObject();
  sub_1DB2BA5B4();
  sub_1DB2BA5A4();

  return sub_1DB2351B8(v55, v57);
}

uint64_t sub_1DB277034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = *(a4 + 16);
  swift_bridgeObjectRetain_n();

  if (v10)
  {
    v11 = sub_1DB141B30(a1, a2);
    if (v12)
    {
      v13 = v11;

      swift_bridgeObjectRelease_n();
      v14 = *(*(a4 + 56) + 8 * v13);
      if ((v14 & 0x8000000000000000) == 0)
      {
        if (v14 < *(a5 + 2))
        {
          sub_1DB1446A4(&a5[40 * v14 + 32], v64, &qword_1ECC26E28, &unk_1DB2C2D70);
          goto LABEL_35;
        }

        goto LABEL_45;
      }

LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

  v15 = sub_1DB27B458(a4, a1, a2);
  v17 = v16;
  v19 = v18;
  v60 = v5;
  v20 = ~v18;

  v61 = a2;
  if (!v20)
  {

    v48 = *(a4 + 16);
    if (v48)
    {
      v49 = sub_1DB1383EC(*(a4 + 16), 0);
      v50 = sub_1DB14A440();
      v5 = v64[0];
      a5 = v64[2];

      sub_1DB149FCC(v64[0]);
      if (v50 != v48)
      {
        __break(1u);
LABEL_32:

        sub_1DB29A590(&v63, v57, v58, v59 & 1, a4);

        if ((v63 & 0x8000000000000000) == 0)
        {
          if (v63 < *(a5 + 2))
          {
            sub_1DB1446A4(&a5[40 * v63 + 32], v64, &qword_1ECC26E28, &unk_1DB2C2D70);
            sub_1DB27C004(v57, v58, v59);
LABEL_35:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
            if (swift_dynamicCast())
            {
              return v62;
            }

            else
            {
              return 0;
            }
          }

          goto LABEL_47;
        }

LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    else
    {
      v49 = MEMORY[0x1E69E7CC0];
    }

    v5 = v60;
    v64[0] = v49;
    sub_1DB2A2FBC(v64);
    if (!v60)
    {
      v51 = v64[0];
      sub_1DB1F88FC();
      swift_allocError();
      *v52 = a1;
      *(v52 + 8) = v61;
      *(v52 + 16) = v51;
      *(v52 + 24) = 1;
      return swift_willThrow();
    }

    goto LABEL_49;
  }

  v57 = v15;
  v21 = sub_1DB29FCC4(v15, v17, v19 & 1, a4);
  if (v23)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    MEMORY[0x1E1284A10](v5);

    __break(1u);
    return result;
  }

  v24 = *(a4 + 36);
  if (v24 != v22)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v25 = 1 << *(a4 + 32);
  if (v25 < v21)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v58 = v17;
  v59 = v19;
  v74[0] = v21;
  v74[1] = v22;
  v75 = 0;
  v76 = v25;
  v77 = v24;
  v78 = 0;
  sub_1DB29FBE0(v74, a4, &v65);

  v26 = sub_1DB27B66C(&v65, a1, a2);
  v55 = v27;
  v56 = v26;
  v54 = v28;
  v29 = ~v28;

  v72 = v65;
  v73 = v66;
  sub_1DB1445E0(&v72, &qword_1ECC29120, &qword_1DB2CE768);
  v70 = v67;
  v71 = v68;
  sub_1DB1445E0(&v70, &qword_1ECC29120, &qword_1DB2CE768);
  v79 = v69;
  sub_1DB1445E0(&v79, &qword_1ECC29128, &unk_1DB2CE770);
  if (!v29)
  {
    goto LABEL_32;
  }

  v30 = 1 << *(a4 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(a4 + 64);
  v33 = (v30 + 63) >> 6;

  v34 = 0;
  v53 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    while (1)
    {
      v35 = v34;
LABEL_18:
      v36 = (*(a4 + 48) + ((v35 << 10) | (16 * __clz(__rbit64(v32)))));
      v38 = *v36;
      v37 = v36[1];
      v32 &= v32 - 1;
      v64[0] = 46;
      v64[1] = 0xE100000000000000;

      MEMORY[0x1E1283490](a1, a2);
      v39 = sub_1DB2BAF94();

      if (v39)
      {
        v40 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DB138470(0, *(v53 + 16) + 1, 1);
          v40 = v53;
        }

        v42 = *(v40 + 16);
        v41 = *(v40 + 24);
        v43 = v42 + 1;
        if (v42 >= v41 >> 1)
        {
          sub_1DB138470((v41 > 1), v42 + 1, 1);
          v43 = v42 + 1;
          v40 = v53;
        }

        *(v40 + 16) = v43;
        v53 = v40;
        v44 = v40 + 16 * v42;
        *(v44 + 32) = v38;
        *(v44 + 40) = v37;
      }

      else
      {
      }

      v34 = v35;
      a2 = v61;
      if (!v32)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
LABEL_15:
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v35 >= v33)
    {
      break;
    }

    v32 = *(a4 + 64 + 8 * v35);
    ++v34;
    if (v32)
    {
      goto LABEL_18;
    }
  }

  v64[0] = v53;

  sub_1DB2A2FBC(v64);
  if (v5)
  {
    goto LABEL_49;
  }

  v45 = v64[0];
  sub_1DB1F88FC();
  swift_allocError();
  *v46 = a1;
  *(v46 + 8) = a2;
  *(v46 + 16) = v45;
  *(v46 + 24) = 2;
  swift_willThrow();
  sub_1DB27C004(v56, v55, v54);
  return sub_1DB27C004(v57, v58, v59);
}

unint64_t sub_1DB277694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 + 16);
  swift_bridgeObjectRetain_n();

  if (v10)
  {
    v11 = sub_1DB141B30(a1, a2);
    if (v12)
    {
      v13 = v11;

      swift_bridgeObjectRelease_n();
      return sub_1DB27A860(*(*(a4 + 56) + 8 * v13), a4, a5);
    }
  }

  v15 = sub_1DB27B458(a4, a1, a2);
  v17 = v16;
  v19 = v18;
  v62 = v5;
  v20 = ~v18;

  if (!v20)
  {

    v48 = *(a4 + 16);
    if (v48)
    {
      v49 = sub_1DB1383EC(*(a4 + 16), 0);
      v61 = sub_1DB14A440();
      v5 = v63[0];

      sub_1DB149FCC(v63[0]);
      if (v61 != v48)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    else
    {
      v49 = MEMORY[0x1E69E7CC0];
    }

    v63[0] = v49;
    v5 = v62;
    sub_1DB2A2FBC(v63);
    if (!v62)
    {
      v51 = v63[0];
      sub_1DB1F88FC();
      swift_allocError();
      *v52 = a1;
      *(v52 + 8) = a2;
      *(v52 + 16) = v51;
      *(v52 + 24) = 1;
      return swift_willThrow();
    }

LABEL_41:
    MEMORY[0x1E1284A10](v5);

    __break(1u);
    return result;
  }

  v21 = sub_1DB29FCC4(v15, v17, v19 & 1, a4);
  if (v23)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v24 = *(a4 + 36);
  if (v24 != v22)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v25 = 1 << *(a4 + 32);
  if (v25 < v21)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v58 = v17;
  v59 = v15;
  v73[0] = v21;
  v73[1] = v22;
  v74 = 0;
  v75 = v25;
  v76 = v24;
  v77 = 0;
  sub_1DB29FBE0(v73, a4, &v64);

  v26 = sub_1DB27B66C(&v64, a1, a2);
  v56 = v27;
  v57 = v26;
  v55 = v28;
  v29 = ~v28;

  v71 = v64;
  v72 = v65;
  sub_1DB1445E0(&v71, &qword_1ECC29120, &qword_1DB2CE768);
  v69 = v66;
  v70 = v67;
  sub_1DB1445E0(&v69, &qword_1ECC29120, &qword_1DB2CE768);
  v78 = v68;
  sub_1DB1445E0(&v78, &qword_1ECC29128, &unk_1DB2CE770);
  if (v29)
  {
    v53 = v19;
    v30 = 1 << *(a4 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(a4 + 64);
    v33 = (v30 + 63) >> 6;

    v34 = 0;
    v54 = MEMORY[0x1E69E7CC0];
    v35 = v5;
    v60 = a2;
    if (v32)
    {
      while (1)
      {
        v36 = v34;
LABEL_16:
        v37 = (*(a4 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v32)))));
        v38 = *v37;
        v39 = v37[1];
        v32 &= v32 - 1;
        v63[0] = 46;
        v63[1] = 0xE100000000000000;

        MEMORY[0x1E1283490](a1, a2);
        v40 = sub_1DB2BAF94();

        if (v40)
        {
          v41 = v54;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DB138470(0, *(v54 + 16) + 1, 1);
            v41 = v54;
          }

          v43 = *(v41 + 16);
          v42 = *(v41 + 24);
          v44 = v43 + 1;
          if (v43 >= v42 >> 1)
          {
            sub_1DB138470((v42 > 1), v43 + 1, 1);
            v44 = v43 + 1;
            v41 = v54;
          }

          *(v41 + 16) = v44;
          v54 = v41;
          v45 = v41 + 16 * v43;
          *(v45 + 32) = v38;
          *(v45 + 40) = v39;
        }

        else
        {
        }

        v34 = v36;
        a2 = v60;
        v35 = v5;
        if (!v32)
        {
          goto LABEL_13;
        }
      }
    }

    while (1)
    {
LABEL_13:
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v36 >= v33)
      {
        break;
      }

      v32 = *(a4 + 64 + 8 * v36);
      ++v34;
      if (v32)
      {
        goto LABEL_16;
      }
    }

    v63[0] = v54;

    v5 = v35;
    sub_1DB2A2FBC(v63);
    if (v35)
    {
      goto LABEL_41;
    }

    v46 = v63[0];
    sub_1DB1F88FC();
    swift_allocError();
    *v47 = a1;
    *(v47 + 8) = a2;
    *(v47 + 16) = v46;
    *(v47 + 24) = 2;
    swift_willThrow();
    sub_1DB27C004(v57, v56, v55);
    return sub_1DB27C004(v59, v58, v53);
  }

  else
  {

    sub_1DB29A590(v63, v15, v17, v19 & 1, a4);

    v50 = sub_1DB27A860(v63[0], a4, a5);
    result = sub_1DB27C004(v15, v17, v19);
    if (!v5)
    {
      return v50;
    }
  }

  return result;
}

uint64_t sub_1DB277C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a4 + 16);
  swift_bridgeObjectRetain_n();

  if (v11)
  {
    v12 = sub_1DB141B30(a1, a2);
    if (v13)
    {
      v14 = v12;

      swift_bridgeObjectRelease_n();
      v15 = *(*(a4 + 56) + 8 * v14);
      if ((v15 & 0x8000000000000000) == 0)
      {
        if (v15 < *(a5 + 16))
        {
          sub_1DB1446A4(a5 + 40 * v15 + 32, v66, &qword_1ECC26E28, &unk_1DB2C2D70);
          goto LABEL_35;
        }

        goto LABEL_45;
      }

LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

  v57 = a5;

  v16 = sub_1DB27B458(a4, a1, a2);
  v18 = v17;
  v20 = v19;
  v62 = v6;
  v21 = ~v19;

  v63 = a2;
  if (!v21)
  {

    v49 = *(a4 + 16);
    if (v49)
    {
      v50 = sub_1DB1383EC(*(a4 + 16), 0);
      v51 = sub_1DB14A440();
      v6 = v66[0];

      sub_1DB149FCC(v66[0]);
      if (v51 != v49)
      {
        __break(1u);
LABEL_32:

        sub_1DB29A590(&v65, v59, v60, v61 & 1, a4);

        if ((v65 & 0x8000000000000000) == 0)
        {
          if (v65 < *(v57 + 16))
          {
            sub_1DB1446A4(v57 + 40 * v65 + 32, v66, &qword_1ECC26E28, &unk_1DB2C2D70);
            sub_1DB27C004(v59, v60, v61);
LABEL_35:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
            if (swift_dynamicCast())
            {
              return v64;
            }

            else
            {
              return 0;
            }
          }

          goto LABEL_47;
        }

LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    else
    {
      v50 = MEMORY[0x1E69E7CC0];
    }

    v6 = v62;
    v66[0] = v50;
    sub_1DB2A2FBC(v66);
    if (!v62)
    {
      v52 = v66[0];
      sub_1DB1F88FC();
      swift_allocError();
      *v53 = a1;
      *(v53 + 8) = v63;
      *(v53 + 16) = v52;
      *(v53 + 24) = 1;
      return swift_willThrow();
    }

    goto LABEL_49;
  }

  v59 = v16;
  v22 = sub_1DB29FCC4(v16, v18, v20 & 1, a4);
  if (v24)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    MEMORY[0x1E1284A10](v6);

    __break(1u);
    return result;
  }

  v25 = *(a4 + 36);
  if (v25 != v23)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v26 = 1 << *(a4 + 32);
  if (v26 < v22)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v60 = v18;
  v61 = v20;
  v76[0] = v22;
  v76[1] = v23;
  v77 = 0;
  v78 = v26;
  v79 = v25;
  v80 = 0;
  sub_1DB29FBE0(v76, a4, &v67);

  v27 = sub_1DB27B66C(&v67, a1, a2);
  v56 = v28;
  v55 = v29;
  v30 = ~v29;

  v74 = v67;
  v75 = v68;
  sub_1DB1445E0(&v74, &qword_1ECC29120, &qword_1DB2CE768);
  v72 = v69;
  v73 = v70;
  sub_1DB1445E0(&v72, &qword_1ECC29120, &qword_1DB2CE768);
  v81 = v71;
  sub_1DB1445E0(&v81, &qword_1ECC29128, &unk_1DB2CE770);
  if (!v30)
  {
    goto LABEL_32;
  }

  v54 = v27;
  v31 = 1 << *(a4 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(a4 + 64);
  v34 = (v31 + 63) >> 6;

  v35 = 0;
  v58 = MEMORY[0x1E69E7CC0];
  if (v33)
  {
    while (1)
    {
      v36 = v35;
LABEL_18:
      v37 = (*(a4 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v33)))));
      v39 = *v37;
      v38 = v37[1];
      v33 &= v33 - 1;
      v66[0] = 46;
      v66[1] = 0xE100000000000000;

      MEMORY[0x1E1283490](a1, a2);
      v40 = sub_1DB2BAF94();

      if (v40)
      {
        v41 = v58;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DB138470(0, *(v58 + 16) + 1, 1);
          v41 = v58;
        }

        v43 = *(v41 + 16);
        v42 = *(v41 + 24);
        v44 = v43 + 1;
        if (v43 >= v42 >> 1)
        {
          sub_1DB138470((v42 > 1), v43 + 1, 1);
          v44 = v43 + 1;
          v41 = v58;
        }

        *(v41 + 16) = v44;
        v58 = v41;
        v45 = v41 + 16 * v43;
        *(v45 + 32) = v39;
        *(v45 + 40) = v38;
      }

      else
      {
      }

      v35 = v36;
      a2 = v63;
      if (!v33)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
LABEL_15:
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v36 >= v34)
    {
      break;
    }

    v33 = *(a4 + 64 + 8 * v36);
    ++v35;
    if (v33)
    {
      goto LABEL_18;
    }
  }

  v66[0] = v58;

  sub_1DB2A2FBC(v66);
  if (v6)
  {
    goto LABEL_49;
  }

  v46 = v66[0];
  sub_1DB1F88FC();
  swift_allocError();
  *v47 = a1;
  *(v47 + 8) = a2;
  *(v47 + 16) = v46;
  *(v47 + 24) = 2;
  swift_willThrow();
  sub_1DB27C004(v54, v56, v55);
  return sub_1DB27C004(v59, v60, v61);
}