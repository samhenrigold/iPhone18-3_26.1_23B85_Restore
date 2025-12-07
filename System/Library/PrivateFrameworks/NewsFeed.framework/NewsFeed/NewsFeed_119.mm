uint64_t sub_1D6634DE4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x7265696669646F6DLL;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE900000000000073;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a1 = 0x696669746E656469;
      a2 = 0xEA00000000007265;
      goto LABEL_20;
    }

LABEL_11:

    goto LABEL_20;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v10 = a1;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    a1 = 0x7265696669646F6DLL;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10 == 1)
  {
    a2 = 0xE900000000000073;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6634F10(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x6973736572707865;
      }

      if (v9)
      {
        a2 = 0xEA00000000006E6FLL;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x6973736572707865;
  }

  if (v10)
  {
    a2 = 0xEA00000000006E6FLL;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D663500C(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v28 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x726F7463656C6573;
      v10 = a1;
      v11 = 0xE800000000000000;
      v12 = 0xD000000000000018;
      v13 = 0x80000001D73BAF80;
      if (a1 != 5)
      {
        v12 = 1885433183;
        v13 = 0xE400000000000000;
      }

      v14 = 0x615272656E726F63;
      v15 = 0xEC00000073756964;
      if (a1 != 3)
      {
        v14 = 0x776F64616873;
        v15 = 0xE600000000000000;
      }

      if (a1 <= 4u)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = 0xE500000000000000;
      v17 = 0x6168706C61;
      if (a1 != 1)
      {
        v17 = 0x73726564726F62;
        v16 = 0xE700000000000000;
      }

      if (a1)
      {
        v9 = v17;
        v11 = v16;
      }

      if (a1 <= 2u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v10 <= 2)
      {
        a2 = v11;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_37;
    }

LABEL_20:

    goto LABEL_37;
  }

  v28 = 544366966;
  if (a3)
  {
    goto LABEL_20;
  }

  v18 = 1885433183;
  v19 = a1;
  v20 = 0xE400000000000000;
  if (a1 == 5)
  {
    v18 = 0xD000000000000018;
    v20 = 0x80000001D73BAF80;
  }

  v21 = 0x615272656E726F63;
  v22 = 0xEC00000073756964;
  if (a1 != 3)
  {
    v21 = 0x776F64616873;
    v22 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v18 = v21;
    v20 = v22;
  }

  v23 = 0xE800000000000000;
  v24 = 0x726F7463656C6573;
  v25 = 0xE500000000000000;
  v26 = 0x6168706C61;
  if (a1 != 1)
  {
    v26 = 0x73726564726F62;
    v25 = 0xE700000000000000;
  }

  if (a1)
  {
    v24 = v26;
    v23 = v25;
  }

  if (a1 <= 2u)
  {
    a1 = v24;
  }

  else
  {
    a1 = v18;
  }

  if (v19 <= 2)
  {
    a2 = v23;
  }

  else
  {
    a2 = v20;
  }

LABEL_37:
  MEMORY[0x1DA6F9910](a1, a2);

  return v28;
}

uint64_t sub_1D6635254(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v24 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x656C797473;
      v10 = a1;
      v11 = 0xE500000000000000;
      v12 = 0xE400000000000000;
      v13 = 1702521203;
      v14 = 0x656D7473756A6461;
      v15 = 0xEB0000000073746ELL;
      if (a1 != 3)
      {
        v14 = 1885433183;
        v15 = 0xE400000000000000;
      }

      if (a1 != 2)
      {
        v13 = v14;
        v12 = v15;
      }

      if (a1)
      {
        v9 = 0x6F6974616D696E61;
        v11 = 0xE90000000000006ELL;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v10 <= 1)
      {
        a2 = v11;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_29;
  }

  v24 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v16 = 1702521203;
  v17 = a1;
  v18 = 0xE400000000000000;
  v19 = 0x656D7473756A6461;
  v20 = 0xEB0000000073746ELL;
  if (a1 != 3)
  {
    v19 = 1885433183;
    v20 = 0xE400000000000000;
  }

  if (a1 != 2)
  {
    v16 = v19;
    v18 = v20;
  }

  v21 = 0xE500000000000000;
  v22 = 0x656C797473;
  if (a1)
  {
    v22 = 0x6F6974616D696E61;
    v21 = 0xE90000000000006ELL;
  }

  if (a1 <= 1u)
  {
    a1 = v22;
  }

  else
  {
    a1 = v16;
  }

  if (v17 <= 1)
  {
    a2 = v21;
  }

  else
  {
    a2 = v18;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v24;
}

uint64_t sub_1D6635414(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v11 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:

    goto LABEL_12;
  }

  v11 = 544366966;
  if (a3)
  {
    goto LABEL_5;
  }

LABEL_6:
  v9 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0xD000000000000014;
  }

  if (v9)
  {
    a2 = 0x80000001D73C1570;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v11;
}

uint64_t sub_1D66354EC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v11 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_13;
    }
  }

  else
  {
    v11 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x6F69746172;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v9 == 1)
    {
      a2 = 0xE500000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a1 = 1937207154;
    a2 = 0xE400000000000000;
  }

LABEL_13:
  MEMORY[0x1DA6F9910](a1, a2);

  return v11;
}

uint64_t sub_1D66355C8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x6168706C61;
      }

      if (v9)
      {
        a2 = 0xE500000000000000;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x6168706C61;
  }

  if (v10)
  {
    a2 = 0xE500000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D66356B4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x726F6C6F63;
      v10 = a1;
      v11 = 0xE500000000000000;
      v12 = 0x615272656E726F63;
      v13 = 0xEC00000073756964;
      if (a1 != 2)
      {
        v12 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x65736E4965676465;
        v11 = 0xEA00000000007374;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v10 <= 1)
      {
        a2 = v11;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v14 = 1885433183;
  v15 = a1;
  v16 = 0xE400000000000000;
  if (a1 == 2)
  {
    v14 = 0x615272656E726F63;
    v16 = 0xEC00000073756964;
  }

  v17 = 0xE500000000000000;
  v18 = 0x726F6C6F63;
  if (a1)
  {
    v18 = 0x65736E4965676465;
    v17 = 0xEA00000000007374;
  }

  if (a1 <= 1u)
  {
    a1 = v18;
  }

  else
  {
    a1 = v14;
  }

  if (v15 <= 1)
  {
    a2 = v17;
  }

  else
  {
    a2 = v16;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D6635844(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v26 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0xE700000000000000;
      v13 = 0x736E6F6974706FLL;
      v14 = 0xE600000000000000;
      v15 = 0x73776F726874;
      if (a1 != 4)
      {
        v15 = 1885433183;
        v14 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v13 = v15;
        v12 = v14;
      }

      v16 = 0xE800000000000000;
      v17 = 0x6E6572646C696863;
      if (a1 != 1)
      {
        v17 = 0x726F7463656C6573;
        v16 = 0xE900000000000073;
      }

      if (a1)
      {
        v9 = v17;
        v10 = v16;
      }

      if (a1 <= 2u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v11 <= 2)
      {
        a2 = v10;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_33;
    }

LABEL_18:

    goto LABEL_33;
  }

  v26 = 544366966;
  if (a3)
  {
    goto LABEL_18;
  }

  v18 = 1885433183;
  v19 = a1;
  v20 = 0xE400000000000000;
  if (a1 == 4)
  {
    v18 = 0x73776F726874;
    v20 = 0xE600000000000000;
  }

  if (a1 == 3)
  {
    v18 = 0x736E6F6974706FLL;
    v20 = 0xE700000000000000;
  }

  v21 = 0x696669746E656469;
  v22 = 0xEA00000000007265;
  v23 = 0xE800000000000000;
  v24 = 0x6E6572646C696863;
  if (a1 != 1)
  {
    v24 = 0x726F7463656C6573;
    v23 = 0xE900000000000073;
  }

  if (a1)
  {
    v21 = v24;
    v22 = v23;
  }

  if (a1 <= 2u)
  {
    a1 = v21;
  }

  else
  {
    a1 = v18;
  }

  if (v19 <= 2)
  {
    a2 = v22;
  }

  else
  {
    a2 = v20;
  }

LABEL_33:
  MEMORY[0x1DA6F9910](a1, a2);

  return v26;
}

uint64_t sub_1D6635A4C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v18 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0xEA00000000007265;
      v10 = 0x696669746E656469;
      v11 = a1;
      v12 = 2019912806;
      if (a1 != 2)
      {
        v12 = 1885433183;
      }

      if (a1)
      {
        v10 = 0x6E656D6574617473;
        v9 = 0xEA00000000007374;
      }

      if (a1 <= 1u)
      {
        a1 = v10;
      }

      else
      {
        a1 = v12;
      }

      if (v11 <= 1)
      {
        a2 = v9;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v18 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v13 = 2019912806;
  v14 = a1;
  if (a1 != 2)
  {
    v13 = 1885433183;
  }

  v15 = 0x696669746E656469;
  v16 = 0xEA00000000007265;
  if (a1)
  {
    v15 = 0x6E656D6574617473;
    v16 = 0xEA00000000007374;
  }

  if (a1 <= 1u)
  {
    a1 = v15;
  }

  else
  {
    a1 = v13;
  }

  if (v14 <= 1)
  {
    a2 = v16;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v18;
}

uint64_t sub_1D6635BC4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 7107189;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE300000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x746E65746E6F63;
        a2 = 0xE700000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 7107189;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE300000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE700000000000000;
    a1 = 0x746E65746E6F63;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6635CEC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v24 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x5373726566657270;
      v10 = 0xED0000656372756FLL;
      v11 = a1;
      v12 = 0xE700000000000000;
      v13 = 0x676E6964646170;
      v14 = 0x615272656E726F63;
      v15 = 0xEC00000073756964;
      if (a1 != 3)
      {
        v14 = 1885433183;
        v15 = 0xE400000000000000;
      }

      if (a1 != 2)
      {
        v13 = v14;
        v12 = v15;
      }

      if (a1)
      {
        v9 = 1953394534;
        v10 = 0xE400000000000000;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v11 <= 1)
      {
        a2 = v10;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_29;
  }

  v24 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v16 = 1953394534;
  v17 = a1;
  v18 = 0xE400000000000000;
  v19 = 0xE700000000000000;
  v20 = 0x676E6964646170;
  v21 = 0x615272656E726F63;
  v22 = 0xEC00000073756964;
  if (a1 != 3)
  {
    v21 = 1885433183;
    v22 = 0xE400000000000000;
  }

  if (a1 != 2)
  {
    v20 = v21;
    v19 = v22;
  }

  if (!a1)
  {
    v16 = 0x5373726566657270;
    v18 = 0xED0000656372756FLL;
  }

  if (a1 <= 1u)
  {
    a1 = v16;
  }

  else
  {
    a1 = v20;
  }

  if (v17 <= 1)
  {
    a2 = v18;
  }

  else
  {
    a2 = v19;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v24;
}

uint64_t sub_1D6635EC4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (!v8)
  {
    v15 = 544366966;
    if ((a3 & 1) == 0)
    {
      v9 = 1702521203;
      v10 = a1;
      v11 = 0xE400000000000000;
      v12 = 0xE500000000000000;
      v13 = 0x656C616373;
      if (a1 != 2)
      {
        v13 = 1885433183;
        v12 = 0xE400000000000000;
      }

      if (!a1)
      {
        v9 = 0x656C797473;
        v11 = 0xE500000000000000;
      }

      goto LABEL_13;
    }

LABEL_8:

    goto LABEL_19;
  }

  v15 = v7;
  MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  if (a3)
  {
    goto LABEL_8;
  }

  v9 = 0x656C797473;
  v10 = a1;
  v11 = 0xE500000000000000;
  v12 = 0xE500000000000000;
  v13 = 0x656C616373;
  if (a1 != 2)
  {
    v13 = 1885433183;
    v12 = 0xE400000000000000;
  }

  if (a1)
  {
    v9 = 1702521203;
    v11 = 0xE400000000000000;
  }

LABEL_13:
  if (v10 <= 1)
  {
    a1 = v9;
  }

  else
  {
    a1 = v13;
  }

  if (v10 <= 1)
  {
    a2 = v11;
  }

  else
  {
    a2 = v12;
  }

LABEL_19:
  MEMORY[0x1DA6F9910](a1, a2);

  return v15;
}

uint64_t sub_1D6636014(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x656C616373;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE500000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x746867696577;
        a2 = 0xE600000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x656C616373;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE500000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE600000000000000;
    a1 = 0x746867696577;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D663613C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x746867696577;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE600000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x656C616373;
        a2 = 0xE500000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x746867696577;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE600000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE500000000000000;
    a1 = 0x656C616373;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6636264(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v15 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_15;
    }
  }

  else
  {
    v15 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 1702521203;
  v10 = a1;
  v11 = 0xE400000000000000;
  v12 = 0xE500000000000000;
  v13 = 0x656C616373;
  if (a1 != 2)
  {
    v13 = 1885433183;
    v12 = 0xE400000000000000;
  }

  if (a1)
  {
    v9 = 0x746867696577;
    v11 = 0xE600000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v9;
  }

  else
  {
    a1 = v13;
  }

  if (v10 <= 1)
  {
    a2 = v11;
  }

  else
  {
    a2 = v12;
  }

LABEL_15:
  MEMORY[0x1DA6F9910](a1, a2);

  return v15;
}

uint64_t sub_1D6636360(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v11 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_13;
    }
  }

  else
  {
    v11 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x656C616373;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v9 == 1)
    {
      a2 = 0xE500000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a1 = 1953394534;
    a2 = 0xE400000000000000;
  }

LABEL_13:
  MEMORY[0x1DA6F9910](a1, a2);

  return v11;
}

uint64_t sub_1D663643C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x746867696568;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE600000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x6874646977;
        a2 = 0xE500000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x746867696568;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE600000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE500000000000000;
    a1 = 0x6874646977;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6636564(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      a2 = 0xED00006E6F697373;
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x6572707845736872;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 != 1)
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x657270784573686CLL;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x6572707845736872;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xED00006E6F697373;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a1 = 0x657270784573686CLL;
    a2 = 0xED00006E6F697373;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D66366B8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v24 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0x7470697263736564;
      v13 = 0xEB000000006E6F69;
      v14 = 0xE700000000000000;
      v15 = 0x73676E69727473;
      if (a1 != 3)
      {
        v15 = 1885433183;
        v14 = 0xE400000000000000;
      }

      if (a1 != 2)
      {
        v12 = v15;
        v13 = v14;
      }

      if (a1)
      {
        v9 = 1701667182;
        v10 = 0xE400000000000000;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v11 <= 1)
      {
        a2 = v10;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_29;
  }

  v24 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v16 = 1701667182;
  v17 = a1;
  v18 = 0xE400000000000000;
  v19 = 0x7470697263736564;
  v20 = 0xEB000000006E6F69;
  v21 = 0xE700000000000000;
  v22 = 0x73676E69727473;
  if (a1 != 3)
  {
    v22 = 1885433183;
    v21 = 0xE400000000000000;
  }

  if (a1 != 2)
  {
    v19 = v22;
    v20 = v21;
  }

  if (!a1)
  {
    v16 = 0x696669746E656469;
    v18 = 0xEA00000000007265;
  }

  if (a1 <= 1u)
  {
    a1 = v16;
  }

  else
  {
    a1 = v19;
  }

  if (v17 <= 1)
  {
    a2 = v18;
  }

  else
  {
    a2 = v20;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v24;
}

uint64_t sub_1D6636880(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v25 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0xEA00000000007265;
      v10 = 0x696669746E656469;
      v11 = a1;
      v12 = 0xE800000000000000;
      v13 = 0x6E6572646C696863;
      v14 = 2019912806;
      if (a1 != 4)
      {
        v14 = 1885433183;
      }

      if (a1 != 3)
      {
        v13 = v14;
        v12 = 0xE400000000000000;
      }

      v15 = 0xE500000000000000;
      v16 = 0x65706F6373;
      if (a1 != 1)
      {
        v16 = 0x636E657265666572;
        v15 = 0xEA00000000007365;
      }

      if (a1)
      {
        v10 = v16;
        v9 = v15;
      }

      if (a1 <= 2u)
      {
        a1 = v10;
      }

      else
      {
        a1 = v13;
      }

      if (v11 <= 2)
      {
        a2 = v9;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_33;
    }

LABEL_18:

    goto LABEL_33;
  }

  v25 = 544366966;
  if (a3)
  {
    goto LABEL_18;
  }

  v17 = 2019912806;
  v18 = a1;
  v19 = 0xE400000000000000;
  if (a1 != 4)
  {
    v17 = 1885433183;
    v19 = 0xE400000000000000;
  }

  if (a1 == 3)
  {
    v17 = 0x6E6572646C696863;
    v19 = 0xE800000000000000;
  }

  v20 = 0x696669746E656469;
  v21 = 0xEA00000000007265;
  v22 = 0xE500000000000000;
  v23 = 0x65706F6373;
  if (a1 != 1)
  {
    v23 = 0x636E657265666572;
    v22 = 0xEA00000000007365;
  }

  if (a1)
  {
    v20 = v23;
    v21 = v22;
  }

  if (a1 <= 2u)
  {
    a1 = v20;
  }

  else
  {
    a1 = v17;
  }

  if (v18 <= 2)
  {
    a2 = v21;
  }

  else
  {
    a2 = v19;
  }

LABEL_33:
  MEMORY[0x1DA6F9910](a1, a2);

  return v25;
}

uint64_t sub_1D6636A70(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x737569646172;
      v10 = a1;
      v11 = 0xE600000000000000;
      v12 = 0x6F756E69746E6F63;
      v13 = 0xEA00000000007375;
      if (a1 != 2)
      {
        v12 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x7372656E726F63;
        v11 = 0xE700000000000000;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v10 <= 1)
      {
        a2 = v11;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v14 = 1885433183;
  v15 = a1;
  v16 = 0xE400000000000000;
  if (a1 == 2)
  {
    v14 = 0x6F756E69746E6F63;
    v16 = 0xEA00000000007375;
  }

  v17 = 0xE600000000000000;
  v18 = 0x737569646172;
  if (a1)
  {
    v18 = 0x7372656E726F63;
    v17 = 0xE700000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v18;
  }

  else
  {
    a1 = v14;
  }

  if (v15 <= 1)
  {
    a2 = v17;
  }

  else
  {
    a2 = v16;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D6636BF0(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x6F756E69746E6F63;
      }

      if (v9)
      {
        a2 = 0xEA00000000007375;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x6F756E69746E6F63;
  }

  if (v10)
  {
    a2 = 0xEA00000000007375;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6636CEC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x6574656D61726170;
      }

      if (v9)
      {
        a2 = 0xEA00000000007372;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x6574656D61726170;
  }

  if (v10)
  {
    a2 = 0xEA00000000007372;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6636DE8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v19 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_19;
    }
  }

  else
  {
    v19 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 1701667182;
  v10 = a1;
  v11 = 0xE400000000000000;
  v12 = 0xE800000000000000;
  v13 = 0x6C616E7265746E69;
  v14 = 0xE500000000000000;
  v15 = 0x726F6C6F63;
  if (a1 != 4)
  {
    v15 = 1885433183;
    v14 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v13 = v15;
    v12 = v14;
  }

  v16 = 0xE600000000000000;
  v17 = 0x6769666E6F63;
  if (a1 != 1)
  {
    v17 = 1819044198;
    v16 = 0xE400000000000000;
  }

  if (a1)
  {
    v9 = v17;
    v11 = v16;
  }

  if (a1 <= 2u)
  {
    a1 = v9;
  }

  else
  {
    a1 = v13;
  }

  if (v10 <= 2)
  {
    a2 = v11;
  }

  else
  {
    a2 = v12;
  }

LABEL_19:
  MEMORY[0x1DA6F9910](a1, a2);

  return v19;
}

uint64_t sub_1D6636F18(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x736567616B636170;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE800000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a1 = 0x696669746E656469;
      a2 = 0xEA00000000007265;
      goto LABEL_20;
    }

LABEL_11:

    goto LABEL_20;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v10 = a1;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    a1 = 0x736567616B636170;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10 == 1)
  {
    a2 = 0xE800000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D663703C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v21 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0xEA00000000007265;
      v10 = 0x696669746E656469;
      v11 = a1;
      v12 = 0xE800000000000000;
      v13 = 0x6E6572646C696863;
      v14 = 2019912806;
      if (a1 != 3)
      {
        v14 = 1885433183;
      }

      if (a1 != 2)
      {
        v13 = v14;
        v12 = 0xE400000000000000;
      }

      if (a1)
      {
        v10 = 0x6E656D6574617473;
        v9 = 0xEA00000000007374;
      }

      if (a1 <= 1u)
      {
        a1 = v10;
      }

      else
      {
        a1 = v13;
      }

      if (v11 <= 1)
      {
        a2 = v9;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_29;
  }

  v21 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v15 = 2019912806;
  v16 = a1;
  v17 = 0xE400000000000000;
  if (a1 != 3)
  {
    v15 = 1885433183;
    v17 = 0xE400000000000000;
  }

  if (a1 == 2)
  {
    v15 = 0x6E6572646C696863;
    v17 = 0xE800000000000000;
  }

  v18 = 0x696669746E656469;
  v19 = 0xEA00000000007265;
  if (a1)
  {
    v18 = 0x6E656D6574617473;
    v19 = 0xEA00000000007374;
  }

  if (a1 <= 1u)
  {
    a1 = v18;
  }

  else
  {
    a1 = v15;
  }

  if (v16 <= 1)
  {
    a2 = v19;
  }

  else
  {
    a2 = v17;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v21;
}

uint64_t sub_1D66371F4(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v14 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_15;
    }
  }

  else
  {
    v14 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 1701667182;
  v10 = a1;
  v11 = 0xE400000000000000;
  v12 = 1702521203;
  if (a1 != 2)
  {
    v12 = 1885433183;
  }

  if (a1)
  {
    v9 = 0xD000000000000010;
    v11 = 0x80000001D73BD6B0;
  }

  if (a1 <= 1u)
  {
    a1 = v9;
  }

  else
  {
    a1 = v12;
  }

  if (v10 <= 1)
  {
    a2 = v11;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_15:
  MEMORY[0x1DA6F9910](a1, a2);

  return v14;
}

uint64_t sub_1D66372F4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v19 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_19;
    }
  }

  else
  {
    v19 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 1702521203;
  v10 = a1;
  v11 = 0xE400000000000000;
  v12 = 0xE600000000000000;
  v13 = 0x737469617274;
  v14 = 0x7475626972747461;
  v15 = 0xEA00000000007365;
  if (a1 != 4)
  {
    v14 = 1885433183;
    v15 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v13 = v14;
    v12 = v15;
  }

  v16 = 0xE700000000000000;
  v17 = 0x676E696C616373;
  if (a1 != 1)
  {
    v17 = 0x746867696577;
    v16 = 0xE600000000000000;
  }

  if (a1)
  {
    v9 = v17;
    v11 = v16;
  }

  if (a1 <= 2u)
  {
    a1 = v9;
  }

  else
  {
    a1 = v13;
  }

  if (v10 <= 2)
  {
    a2 = v11;
  }

  else
  {
    a2 = v12;
  }

LABEL_19:
  MEMORY[0x1DA6F9910](a1, a2);

  return v19;
}

uint64_t sub_1D6637434(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v28 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0xE400000000000000;
      v13 = 2019912806;
      if (a1 != 5)
      {
        v13 = 1885433183;
        v12 = 0xE400000000000000;
      }

      v14 = 0xE600000000000000;
      v15 = 0x73776F726874;
      if (a1 != 3)
      {
        v15 = 0x776F726874;
        v14 = 0xE500000000000000;
      }

      if (a1 <= 4u)
      {
        v13 = v15;
        v12 = v14;
      }

      v16 = 0xE500000000000000;
      v17 = 0x7365736163;
      if (a1 != 1)
      {
        v17 = 0x746C7561666564;
        v16 = 0xE700000000000000;
      }

      if (a1)
      {
        v9 = v17;
        v10 = v16;
      }

      if (a1 <= 2u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v11 <= 2)
      {
        a2 = v10;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_37;
    }

LABEL_20:

    goto LABEL_37;
  }

  v28 = 544366966;
  if (a3)
  {
    goto LABEL_20;
  }

  v18 = 2019912806;
  v19 = a1;
  v20 = 0xE400000000000000;
  if (a1 != 5)
  {
    v18 = 1885433183;
    v20 = 0xE400000000000000;
  }

  v21 = 0xE600000000000000;
  v22 = 0x73776F726874;
  v23 = 0xE500000000000000;
  if (a1 != 3)
  {
    v22 = 0x776F726874;
    v21 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v18 = v22;
    v20 = v21;
  }

  v24 = 0x696669746E656469;
  v25 = 0xEA00000000007265;
  v26 = 0x7365736163;
  if (a1 != 1)
  {
    v26 = 0x746C7561666564;
    v23 = 0xE700000000000000;
  }

  if (a1)
  {
    v24 = v26;
    v25 = v23;
  }

  if (a1 <= 2u)
  {
    a1 = v24;
  }

  else
  {
    a1 = v18;
  }

  if (v19 <= 2)
  {
    a2 = v25;
  }

  else
  {
    a2 = v20;
  }

LABEL_37:
  MEMORY[0x1DA6F9910](a1, a2);

  return v28;
}

uint64_t sub_1D6637650(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x746E65746E6F63;
      v10 = a1;
      v11 = 0xE700000000000000;
      v12 = 0x726F7463656C6573;
      v13 = 0xE900000000000073;
      if (a1 != 2)
      {
        v12 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x656C797473;
        v11 = 0xE500000000000000;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v10 <= 1)
      {
        a2 = v11;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v14 = 1885433183;
  v15 = a1;
  v16 = 0xE400000000000000;
  if (a1 == 2)
  {
    v14 = 0x726F7463656C6573;
    v16 = 0xE900000000000073;
  }

  v17 = 0xE700000000000000;
  v18 = 0x746E65746E6F63;
  if (a1)
  {
    v18 = 0x656C797473;
    v17 = 0xE500000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v18;
  }

  else
  {
    a1 = v14;
  }

  if (v15 <= 1)
  {
    a2 = v17;
  }

  else
  {
    a2 = v16;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D66377D0(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x726F6C6F63;
      v10 = a1;
      v11 = 0xE500000000000000;
      v12 = 0x6F72506168706C61;
      v13 = 0xEE00726F73736563;
      if (a1 != 2)
      {
        v12 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x646F4D646E656C62;
        v11 = 0xE900000000000065;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v10 <= 1)
      {
        a2 = v11;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v14 = 1885433183;
  v15 = a1;
  v16 = 0xE400000000000000;
  if (a1 == 2)
  {
    v14 = 0x6F72506168706C61;
    v16 = 0xEE00726F73736563;
  }

  v17 = 0xE500000000000000;
  v18 = 0x726F6C6F63;
  if (a1)
  {
    v18 = 0x646F4D646E656C62;
    v17 = 0xE900000000000065;
  }

  if (a1 <= 1u)
  {
    a1 = v18;
  }

  else
  {
    a1 = v14;
  }

  if (v15 <= 1)
  {
    a2 = v17;
  }

  else
  {
    a2 = v16;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D6637968(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v10 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_9;
    }
  }

  else
  {
    v10 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 1802723693;
  }

  a2 = 0xE400000000000000;
LABEL_9:
  MEMORY[0x1DA6F9910](a1, a2);

  return v10;
}

uint64_t sub_1D6637A20(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v17 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_17;
    }
  }

  else
  {
    v17 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 1701667182;
  v10 = a1;
  v11 = 0xE400000000000000;
  v12 = 0xE400000000000000;
  v13 = 1702521203;
  v14 = 0xE700000000000000;
  v15 = 0x676E696C616373;
  if (a1 != 3)
  {
    v15 = 1885433183;
    v14 = 0xE400000000000000;
  }

  if (a1 != 2)
  {
    v13 = v15;
    v12 = v14;
  }

  if (a1)
  {
    v9 = 7107189;
    v11 = 0xE300000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v9;
  }

  else
  {
    a1 = v13;
  }

  if (v10 <= 1)
  {
    a2 = v11;
  }

  else
  {
    a2 = v12;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v17;
}

uint64_t sub_1D6637B34(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x61746E6563726570;
      }

      if (v9)
      {
        a2 = 0xEA00000000006567;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x61746E6563726570;
  }

  if (v10)
  {
    a2 = 0xEA00000000006567;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6637C30(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v15 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_15;
    }
  }

  else
  {
    v15 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 1701667182;
  v10 = a1;
  v11 = 0xE400000000000000;
  v12 = 0x726F7463656C6573;
  v13 = 0xE900000000000073;
  if (a1 != 2)
  {
    v12 = 1885433183;
    v13 = 0xE400000000000000;
  }

  if (a1)
  {
    v9 = 0x65756C6176;
    v11 = 0xE500000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v9;
  }

  else
  {
    a1 = v12;
  }

  if (v10 <= 1)
  {
    a2 = v11;
  }

  else
  {
    a2 = v13;
  }

LABEL_15:
  MEMORY[0x1DA6F9910](a1, a2);

  return v15;
}

uint64_t sub_1D6637D34(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v10 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_9;
    }
  }

  else
  {
    v10 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 1937335659;
  }

  a2 = 0xE400000000000000;
LABEL_9:
  MEMORY[0x1DA6F9910](a1, a2);

  return v10;
}

uint64_t sub_1D6637DEC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (!v8)
  {
    v19 = 544366966;
    if ((a3 & 1) == 0)
    {
      v9 = 1952867692;
      v10 = a1;
      v11 = 0xE400000000000000;
      v12 = 0xE600000000000000;
      v13 = 0x6D6F74746F62;
      v16 = 0xE500000000000000;
      v17 = 0x7468676972;
      if (a1 != 3)
      {
        v17 = 1885433183;
        v16 = 0xE400000000000000;
      }

      if (a1 != 2)
      {
        v13 = v17;
        v12 = v16;
      }

      if (!a1)
      {
        v9 = 7368564;
        v11 = 0xE300000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_23;
  }

  v19 = v7;
  MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  if (a3)
  {
    goto LABEL_10;
  }

  v9 = 7368564;
  v10 = a1;
  v11 = 0xE300000000000000;
  v12 = 0xE600000000000000;
  v13 = 0x6D6F74746F62;
  v14 = 0xE500000000000000;
  v15 = 0x7468676972;
  if (a1 != 3)
  {
    v15 = 1885433183;
    v14 = 0xE400000000000000;
  }

  if (a1 != 2)
  {
    v13 = v15;
    v12 = v14;
  }

  if (a1)
  {
    v9 = 1952867692;
    v11 = 0xE400000000000000;
  }

LABEL_17:
  if (v10 <= 1)
  {
    a1 = v9;
  }

  else
  {
    a1 = v13;
  }

  if (v10 <= 1)
  {
    a2 = v11;
  }

  else
  {
    a2 = v12;
  }

LABEL_23:
  MEMORY[0x1DA6F9910](a1, a2);

  return v19;
}

uint64_t sub_1D6637F70(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v14 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_15;
    }
  }

  else
  {
    v14 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 1701667182;
  v10 = a1;
  v11 = 0xE700000000000000;
  v12 = 0x676E696C616373;
  if (a1 != 2)
  {
    v12 = 1885433183;
    v11 = 0xE400000000000000;
  }

  if (a1)
  {
    v9 = 1702521203;
  }

  if (a1 <= 1u)
  {
    a1 = v9;
  }

  else
  {
    a1 = v12;
  }

  if (v10 <= 1)
  {
    a2 = 0xE400000000000000;
  }

  else
  {
    a2 = v11;
  }

LABEL_15:
  MEMORY[0x1DA6F9910](a1, a2);

  return v14;
}

uint64_t sub_1D6638068(char a1, uint64_t (*a2)(void))
{
  v3 = a2();
  if (v4)
  {
    v7 = v3;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  }

  else
  {
    v7 = 544366966;
  }

  if (a1)
  {
    v5 = 0x6D756D6978616DLL;
  }

  else
  {
    v5 = 0x6D756D696E696DLL;
  }

  MEMORY[0x1DA6F9910](v5, 0xE700000000000000);

  return v7;
}

uint64_t sub_1D6638110(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v10 = a4();
  if (!v11)
  {
    v14 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    a1 = a6(a1);
    a2 = v12;
    goto LABEL_6;
  }

  v14 = v10;
  MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  if ((a3 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:

LABEL_6:
  MEMORY[0x1DA6F9910](a1, a2);

  return v14;
}

uint64_t sub_1D66381CC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x6E656E6F706D6F63;
      }

      if (v9)
      {
        a2 = 0xEA00000000007374;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x6E656E6F706D6F63;
  }

  if (v10)
  {
    a2 = 0xEA00000000007374;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D66382C8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x7865646E69;
      }

      if (v9)
      {
        a2 = 0xE500000000000000;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x7865646E69;
  }

  if (v10)
  {
    a2 = 0xE500000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D66383B4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x726F6C6F63;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE500000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x656C797473;
        a2 = 0xE500000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x726F6C6F63;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE500000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE500000000000000;
    a1 = 0x656C797473;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D66384DC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (!v8)
  {
    v15 = 544366966;
    if ((a3 & 1) == 0)
    {
      v9 = 1701734764;
      v10 = a1;
      v11 = 0xE400000000000000;
      v12 = 0xE600000000000000;
      v13 = 0x6E6D756C6F63;
      if (a1 != 2)
      {
        v13 = 1885433183;
        v12 = 0xE400000000000000;
      }

      if (!a1)
      {
        v9 = 0x68746150656C6966;
        v11 = 0xE800000000000000;
      }

      goto LABEL_13;
    }

LABEL_8:

    goto LABEL_19;
  }

  v15 = v7;
  MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  if (a3)
  {
    goto LABEL_8;
  }

  v9 = 0x68746150656C6966;
  v10 = a1;
  v11 = 0xE800000000000000;
  v12 = 0xE600000000000000;
  v13 = 0x6E6D756C6F63;
  if (a1 != 2)
  {
    v13 = 1885433183;
    v12 = 0xE400000000000000;
  }

  if (a1)
  {
    v9 = 1701734764;
    v11 = 0xE400000000000000;
  }

LABEL_13:
  if (v10 <= 1)
  {
    a1 = v9;
  }

  else
  {
    a1 = v13;
  }

  if (v10 <= 1)
  {
    a2 = v11;
  }

  else
  {
    a2 = v12;
  }

LABEL_19:
  MEMORY[0x1DA6F9910](a1, a2);

  return v15;
}

uint64_t sub_1D6638634(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      a2 = 0xEA0000000000646ELL;
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x756F72676B636162;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 != 1)
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x756F726765726F66;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x756F72676B636162;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xEA0000000000646ELL;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a1 = 0x756F726765726F66;
    a2 = 0xEA0000000000646ELL;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6638774(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v22 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0x6C65537865676572;
      v13 = 0xEE0073726F746365;
      v14 = 0xE800000000000000;
      v15 = 0x6E6572646C696863;
      if (a1 != 3)
      {
        v15 = 1885433183;
        v14 = 0xE400000000000000;
      }

      if (a1 != 2)
      {
        v12 = v15;
        v13 = v14;
      }

      if (a1)
      {
        v9 = 0x726F7463656C6573;
        v10 = 0xE900000000000073;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v11 <= 1)
      {
        a2 = v10;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_29;
  }

  v22 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v16 = 1885433183;
  v17 = a1;
  v18 = 0xE400000000000000;
  if (a1 == 3)
  {
    v16 = 0x6E6572646C696863;
    v18 = 0xE800000000000000;
  }

  if (a1 == 2)
  {
    v16 = 0x6C65537865676572;
    v18 = 0xEE0073726F746365;
  }

  v19 = 0x696669746E656469;
  v20 = 0xEA00000000007265;
  if (a1)
  {
    v19 = 0x726F7463656C6573;
    v20 = 0xE900000000000073;
  }

  if (a1 <= 1u)
  {
    a1 = v19;
  }

  else
  {
    a1 = v16;
  }

  if (v17 <= 1)
  {
    a2 = v20;
  }

  else
  {
    a2 = v18;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v22;
}

uint64_t sub_1D663895C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v24 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 6579570;
      v10 = a1;
      v11 = 0xE300000000000000;
      v12 = 0xE400000000000000;
      v13 = 1702194274;
      v14 = 0xE500000000000000;
      v15 = 0x6168706C61;
      if (a1 != 3)
      {
        v15 = 1885433183;
        v14 = 0xE400000000000000;
      }

      if (a1 != 2)
      {
        v13 = v15;
        v12 = v14;
      }

      if (a1)
      {
        v9 = 0x6E65657267;
        v11 = 0xE500000000000000;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v10 <= 1)
      {
        a2 = v11;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_29;
  }

  v24 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v16 = 1702194274;
  v17 = a1;
  v18 = 0xE400000000000000;
  v19 = 0xE500000000000000;
  v20 = 0x6168706C61;
  if (a1 != 3)
  {
    v20 = 1885433183;
    v19 = 0xE400000000000000;
  }

  if (a1 != 2)
  {
    v16 = v20;
    v18 = v19;
  }

  v21 = 0xE300000000000000;
  v22 = 6579570;
  if (a1)
  {
    v22 = 0x6E65657267;
    v21 = 0xE500000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v22;
  }

  else
  {
    a1 = v16;
  }

  if (v17 <= 1)
  {
    a2 = v21;
  }

  else
  {
    a2 = v18;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v24;
}

uint64_t sub_1D6638AEC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0xE600000000000000;
      v13 = 0x7365756C6176;
      if (a1 != 2)
      {
        v13 = 1885433183;
        v12 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x6567617373656DLL;
        v10 = 0xE700000000000000;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v11 <= 1)
      {
        a2 = v10;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v14 = 1885433183;
  v15 = a1;
  v16 = 0xE400000000000000;
  if (a1 == 2)
  {
    v14 = 0x7365756C6176;
    v16 = 0xE600000000000000;
  }

  v17 = 0x696669746E656469;
  v18 = 0xEA00000000007265;
  if (a1)
  {
    v17 = 0x6567617373656DLL;
    v18 = 0xE700000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v17;
  }

  else
  {
    a1 = v14;
  }

  if (v15 <= 1)
  {
    a2 = v18;
  }

  else
  {
    a2 = v16;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D6638C6C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v20 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x656C746974;
      v10 = a1;
      v11 = 0xE500000000000000;
      v12 = 0x656C797473;
      v13 = 0xE500000000000000;
      v14 = 0x736D657469;
      if (a1 != 3)
      {
        v14 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1 != 2)
      {
        v12 = v14;
        v11 = v13;
      }

      if (a1)
      {
        v9 = 0x6567616D69;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v10 <= 1)
      {
        a2 = 0xE500000000000000;
      }

      else
      {
        a2 = v11;
      }

      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_29;
  }

  v20 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v15 = 1885433183;
  v16 = a1;
  v17 = 0xE400000000000000;
  if (a1 == 3)
  {
    v15 = 0x736D657469;
    v17 = 0xE500000000000000;
  }

  if (a1 == 2)
  {
    v15 = 0x656C797473;
    v17 = 0xE500000000000000;
  }

  v18 = 0x656C746974;
  if (a1)
  {
    v18 = 0x6567616D69;
  }

  if (a1 <= 1u)
  {
    a1 = v18;
  }

  else
  {
    a1 = v15;
  }

  if (v16 <= 1)
  {
    a2 = 0xE500000000000000;
  }

  else
  {
    a2 = v17;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v20;
}

uint64_t sub_1D6638E04(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v22 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0x656D7473756A6461;
      v13 = 0xEB0000000073746ELL;
      v14 = 2019912806;
      if (a1 != 3)
      {
        v14 = 1885433183;
      }

      if (a1 != 2)
      {
        v12 = v14;
        v13 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 1702521203;
        v10 = 0xE400000000000000;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v11 <= 1)
      {
        a2 = v10;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_29;
  }

  v22 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v15 = 1702521203;
  v16 = a1;
  v17 = 0xE400000000000000;
  v18 = 0x656D7473756A6461;
  v19 = 0xEB0000000073746ELL;
  v20 = 2019912806;
  if (a1 != 3)
  {
    v20 = 1885433183;
  }

  if (a1 != 2)
  {
    v18 = v20;
    v19 = 0xE400000000000000;
  }

  if (!a1)
  {
    v15 = 0x696669746E656469;
    v17 = 0xEA00000000007265;
  }

  if (a1 <= 1u)
  {
    a1 = v15;
  }

  else
  {
    a1 = v18;
  }

  if (v16 <= 1)
  {
    a2 = v17;
  }

  else
  {
    a2 = v19;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v22;
}

uint64_t sub_1D6638FBC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v26 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0xE700000000000000;
      v13 = 0x736E6F6974706FLL;
      v14 = 0x726F7463656C6573;
      v15 = 0xE900000000000073;
      if (a1 != 4)
      {
        v14 = 1885433183;
        v15 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v13 = v14;
        v12 = v15;
      }

      v16 = 0x6564496B636F6C62;
      v17 = 0xEF7265696669746ELL;
      if (a1 != 1)
      {
        v16 = 0x73776F726874;
        v17 = 0xE600000000000000;
      }

      if (a1)
      {
        v9 = v16;
        v10 = v17;
      }

      if (a1 <= 2u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v11 <= 2)
      {
        a2 = v10;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_33;
    }

LABEL_18:

    goto LABEL_33;
  }

  v26 = 544366966;
  if (a3)
  {
    goto LABEL_18;
  }

  v18 = 1885433183;
  v19 = a1;
  v20 = 0xE400000000000000;
  if (a1 == 4)
  {
    v18 = 0x726F7463656C6573;
    v20 = 0xE900000000000073;
  }

  if (a1 == 3)
  {
    v18 = 0x736E6F6974706FLL;
    v20 = 0xE700000000000000;
  }

  v21 = 0x696669746E656469;
  v22 = 0xEA00000000007265;
  v23 = 0x6564496B636F6C62;
  v24 = 0xEF7265696669746ELL;
  if (a1 != 1)
  {
    v23 = 0x73776F726874;
    v24 = 0xE600000000000000;
  }

  if (a1)
  {
    v21 = v23;
    v22 = v24;
  }

  if (a1 <= 2u)
  {
    a1 = v21;
  }

  else
  {
    a1 = v18;
  }

  if (v19 <= 2)
  {
    a2 = v22;
  }

  else
  {
    a2 = v20;
  }

LABEL_33:
  MEMORY[0x1DA6F9910](a1, a2);

  return v26;
}

uint64_t sub_1D66391DC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v24 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0x726F7463656C6573;
      v13 = 0xE900000000000073;
      v14 = 0xE700000000000000;
      v15 = 0x736E6F6974706FLL;
      if (a1 != 4)
      {
        v15 = 1885433183;
        v14 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v12 = v15;
        v13 = v14;
      }

      v16 = 0x6465646E65747865;
      if (a1 != 1)
      {
        v16 = 0x6E6572646C696863;
      }

      if (a1)
      {
        v9 = v16;
        v10 = 0xE800000000000000;
      }

      if (a1 <= 2u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v11 <= 2)
      {
        a2 = v10;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_33;
    }

LABEL_18:

    goto LABEL_33;
  }

  v24 = 544366966;
  if (a3)
  {
    goto LABEL_18;
  }

  v17 = 1885433183;
  v18 = a1;
  v19 = 0xE400000000000000;
  if (a1 == 4)
  {
    v17 = 0x736E6F6974706FLL;
    v19 = 0xE700000000000000;
  }

  if (a1 == 3)
  {
    v17 = 0x726F7463656C6573;
    v19 = 0xE900000000000073;
  }

  v20 = 0x696669746E656469;
  v21 = 0xEA00000000007265;
  v22 = 0x6465646E65747865;
  if (a1 != 1)
  {
    v22 = 0x6E6572646C696863;
  }

  if (a1)
  {
    v20 = v22;
    v21 = 0xE800000000000000;
  }

  if (a1 <= 2u)
  {
    a1 = v20;
  }

  else
  {
    a1 = v17;
  }

  if (v18 <= 2)
  {
    a2 = v21;
  }

  else
  {
    a2 = v19;
  }

LABEL_33:
  MEMORY[0x1DA6F9910](a1, a2);

  return v24;
}

uint64_t sub_1D66393EC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v18 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x656C746974;
      v10 = a1;
      v11 = 0xE600000000000000;
      v12 = 0x6E6F69746361;
      if (a1 != 2)
      {
        v12 = 1885433183;
        v11 = 0xE400000000000000;
      }

      if (a1)
      {
        v9 = 0x6567616D69;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v10 <= 1)
      {
        a2 = 0xE500000000000000;
      }

      else
      {
        a2 = v11;
      }

      goto LABEL_25;
    }

LABEL_14:

    goto LABEL_25;
  }

  v18 = 544366966;
  if (a3)
  {
    goto LABEL_14;
  }

  v13 = 1885433183;
  v14 = a1;
  v15 = 0xE400000000000000;
  if (a1 == 2)
  {
    v13 = 0x6E6F69746361;
    v15 = 0xE600000000000000;
  }

  v16 = 0x656C746974;
  if (a1)
  {
    v16 = 0x6567616D69;
  }

  if (a1 <= 1u)
  {
    a1 = v16;
  }

  else
  {
    a1 = v13;
  }

  if (v14 <= 1)
  {
    a2 = 0xE500000000000000;
  }

  else
  {
    a2 = v15;
  }

LABEL_25:
  MEMORY[0x1DA6F9910](a1, a2);

  return v18;
}

uint64_t sub_1D6639554(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v21 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x73726F6C6F63;
      v10 = a1;
      v11 = 0xE600000000000000;
      v12 = 0x6F69746365726964;
      v13 = 0xE600000000000000;
      v14 = 0x74657366666FLL;
      if (a1 != 3)
      {
        v14 = 1885433183;
        v13 = 0xE400000000000000;
      }

      if (a1 == 2)
      {
        v13 = 0xE90000000000006ELL;
      }

      else
      {
        v12 = v14;
      }

      if (a1)
      {
        v9 = 0x6E6F697461636F6CLL;
        v11 = 0xE900000000000073;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v10 <= 1)
      {
        a2 = v11;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_30;
    }

LABEL_17:

    goto LABEL_30;
  }

  v21 = 544366966;
  if (a3)
  {
    goto LABEL_17;
  }

  v15 = 1885433183;
  v16 = a1;
  v17 = 0xE400000000000000;
  if (a1 == 3)
  {
    v15 = 0x74657366666FLL;
    v17 = 0xE600000000000000;
  }

  if (a1 == 2)
  {
    v15 = 0x6F69746365726964;
    v17 = 0xE90000000000006ELL;
  }

  v18 = 0xE600000000000000;
  v19 = 0x73726F6C6F63;
  if (a1)
  {
    v19 = 0x6E6F697461636F6CLL;
    v18 = 0xE900000000000073;
  }

  if (a1 <= 1u)
  {
    a1 = v19;
  }

  else
  {
    a1 = v15;
  }

  if (v16 <= 1)
  {
    a2 = v18;
  }

  else
  {
    a2 = v17;
  }

LABEL_30:
  MEMORY[0x1DA6F9910](a1, a2);

  return v21;
}

uint64_t sub_1D663970C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x6574656D61726170;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xEA00000000007372;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x65756C6176;
        a2 = 0xE500000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x6574656D61726170;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xEA00000000007372;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE500000000000000;
    a1 = 0x65756C6176;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6639844(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v15 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_15;
    }
  }

  else
  {
    v15 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 1701080941;
  v10 = a1;
  v11 = 0xE400000000000000;
  v12 = 0xE800000000000000;
  v13 = 0x6E6F697469736F70;
  if (a1 != 2)
  {
    v13 = 1885433183;
    v12 = 0xE400000000000000;
  }

  if (a1)
  {
    v9 = 0x746E65746E6F63;
    v11 = 0xE700000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v9;
  }

  else
  {
    a1 = v13;
  }

  if (v10 <= 1)
  {
    a2 = v11;
  }

  else
  {
    a2 = v12;
  }

LABEL_15:
  MEMORY[0x1DA6F9910](a1, a2);

  return v15;
}

uint64_t sub_1D6639948(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a1;
  v3 = a2();
  if (v4)
  {
    v7 = v3;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  }

  else
  {
    v7 = 544366966;
  }

  v5 = sub_1D68823EC(v2);
  MEMORY[0x1DA6F9910](v5);

  return v7;
}

uint64_t sub_1D66399C8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v26 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x737569646172;
      v10 = a1;
      v11 = 0xE600000000000000;
      v12 = 0xE500000000000000;
      v13 = 0x726F6C6F63;
      v14 = 0xE600000000000000;
      v15 = 0x6E6F69746F6DLL;
      if (a1 != 4)
      {
        v15 = 1885433183;
        v14 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v13 = v15;
        v12 = v14;
      }

      v16 = 0xE700000000000000;
      v17 = 0x7974696361706FLL;
      if (a1 != 1)
      {
        v17 = 0x74657366666FLL;
        v16 = 0xE600000000000000;
      }

      if (a1)
      {
        v9 = v17;
        v11 = v16;
      }

      if (a1 <= 2u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v10 <= 2)
      {
        a2 = v11;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_33;
    }

LABEL_18:

    goto LABEL_33;
  }

  v26 = 544366966;
  if (a3)
  {
    goto LABEL_18;
  }

  v18 = 1885433183;
  v19 = a1;
  v20 = 0xE400000000000000;
  if (a1 == 4)
  {
    v18 = 0x6E6F69746F6DLL;
    v20 = 0xE600000000000000;
  }

  if (a1 == 3)
  {
    v18 = 0x726F6C6F63;
    v20 = 0xE500000000000000;
  }

  v21 = 0xE600000000000000;
  v22 = 0x737569646172;
  v23 = 0xE700000000000000;
  v24 = 0x7974696361706FLL;
  if (a1 != 1)
  {
    v24 = 0x74657366666FLL;
    v23 = 0xE600000000000000;
  }

  if (a1)
  {
    v22 = v24;
    v21 = v23;
  }

  if (a1 <= 2u)
  {
    a1 = v22;
  }

  else
  {
    a1 = v18;
  }

  if (v19 <= 2)
  {
    a2 = v21;
  }

  else
  {
    a2 = v20;
  }

LABEL_33:
  MEMORY[0x1DA6F9910](a1, a2);

  return v26;
}

uint64_t sub_1D6639BA8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x6874646977;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE500000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x746867696568;
        a2 = 0xE600000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x6874646977;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE500000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE600000000000000;
    a1 = 0x746867696568;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6639CD0(unint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v22 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0xEA00000000007265;
      v10 = 0x696669746E656469;
      v11 = a1;
      v12 = 0x6E65646E65706564;
      v13 = 0xEA00000000007963;
      v14 = 0xD000000000000012;
      v15 = 0x80000001D73D2730;
      if (a1 != 3)
      {
        v14 = 1885433183;
        v15 = 0xE400000000000000;
      }

      if (a1 != 2)
      {
        v12 = v14;
        v13 = v15;
      }

      if (a1)
      {
        v10 = 0x65756C6176;
        v9 = 0xE500000000000000;
      }

      if (a1 <= 1u)
      {
        a1 = v10;
      }

      else
      {
        a1 = v12;
      }

      if (v11 <= 1)
      {
        a2 = v9;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_29;
  }

  v22 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v16 = 1885433183;
  v17 = a1;
  v18 = 0xE400000000000000;
  if (a1 == 3)
  {
    v16 = 0xD000000000000012;
    v18 = 0x80000001D73D2730;
  }

  if (a1 == 2)
  {
    v16 = 0x6E65646E65706564;
    v18 = 0xEA00000000007963;
  }

  v19 = 0x696669746E656469;
  v20 = 0xEA00000000007265;
  if (a1)
  {
    v19 = 0x65756C6176;
    v20 = 0xE500000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v19;
  }

  else
  {
    a1 = v16;
  }

  if (v17 <= 1)
  {
    a2 = v20;
  }

  else
  {
    a2 = v18;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v22;
}

uint64_t sub_1D6639EA0(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x656C616373;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE500000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a1 = 0x74616C736E617274;
      a2 = 0xE900000000000065;
      goto LABEL_20;
    }

LABEL_11:

    goto LABEL_20;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v10 = a1;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    a1 = 0x656C616373;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10 == 1)
  {
    a2 = 0xE500000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D6639FBC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x696669746E656469;
      }

      if (v9)
      {
        a2 = 0xEA00000000007265;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x696669746E656469;
  }

  if (v10)
  {
    a2 = 0xEA00000000007265;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D663A0B8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v24 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x7365676465;
      v10 = a1;
      v11 = 0x74746150656E696CLL;
      v12 = 0xEB000000006E7265;
      if (a1 != 5)
      {
        v11 = 1885433183;
        v12 = 0xE400000000000000;
      }

      v13 = 0xE500000000000000;
      v14 = 0x7465736E69;
      if (a1 != 3)
      {
        v14 = 0x706143656E696CLL;
        v13 = 0xE700000000000000;
      }

      if (a1 <= 4u)
      {
        v11 = v14;
        v12 = v13;
      }

      v15 = 0x726F6C6F63;
      if (a1 != 1)
      {
        v15 = 0x6874646977;
      }

      if (a1)
      {
        v9 = v15;
      }

      if (a1 <= 2u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v11;
      }

      if (v10 <= 2)
      {
        a2 = 0xE500000000000000;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_37;
    }

LABEL_20:

    goto LABEL_37;
  }

  v24 = 544366966;
  if (a3)
  {
    goto LABEL_20;
  }

  v16 = 1885433183;
  v17 = a1;
  v18 = 0xE400000000000000;
  if (a1 == 5)
  {
    v16 = 0x74746150656E696CLL;
    v18 = 0xEB000000006E7265;
  }

  v19 = 0xE500000000000000;
  v20 = 0x7465736E69;
  if (a1 != 3)
  {
    v20 = 0x706143656E696CLL;
    v19 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v16 = v20;
    v18 = v19;
  }

  v21 = 0x7365676465;
  v22 = 0x726F6C6F63;
  if (a1 != 1)
  {
    v22 = 0x6874646977;
  }

  if (a1)
  {
    v21 = v22;
  }

  if (a1 <= 2u)
  {
    a1 = v21;
  }

  else
  {
    a1 = v16;
  }

  if (v17 <= 2)
  {
    a2 = 0xE500000000000000;
  }

  else
  {
    a2 = v18;
  }

LABEL_37:
  MEMORY[0x1DA6F9910](a1, a2);

  return v24;
}

uint64_t sub_1D663A2E8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v26 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0xE700000000000000;
      v13 = 0x736E6F6974706FLL;
      if (a1 != 5)
      {
        v13 = 1885433183;
        v12 = 0xE400000000000000;
      }

      v14 = 0xE600000000000000;
      v15 = 0x73656C797473;
      if (a1 != 3)
      {
        v15 = 0x7365707974;
        v14 = 0xE500000000000000;
      }

      if (a1 <= 4u)
      {
        v13 = v15;
        v12 = v14;
      }

      v16 = 0xE400000000000000;
      v17 = 1701667182;
      if (a1 != 1)
      {
        v17 = 0x7470697263736564;
        v16 = 0xEB000000006E6F69;
      }

      if (a1)
      {
        v9 = v17;
        v10 = v16;
      }

      if (a1 <= 2u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v11 <= 2)
      {
        a2 = v10;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_37;
    }

LABEL_20:

    goto LABEL_37;
  }

  v26 = 544366966;
  if (a3)
  {
    goto LABEL_20;
  }

  v18 = 1701667182;
  v19 = a1;
  v20 = 0xE400000000000000;
  v21 = 0xE700000000000000;
  v22 = 0x736E6F6974706FLL;
  if (a1 != 5)
  {
    v22 = 1885433183;
    v21 = 0xE400000000000000;
  }

  v23 = 0xE600000000000000;
  v24 = 0x73656C797473;
  if (a1 != 3)
  {
    v24 = 0x7365707974;
    v23 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v22 = v24;
    v21 = v23;
  }

  if (a1 != 1)
  {
    v18 = 0x7470697263736564;
    v20 = 0xEB000000006E6F69;
  }

  if (!a1)
  {
    v18 = 0x696669746E656469;
    v20 = 0xEA00000000007265;
  }

  if (a1 <= 2u)
  {
    a1 = v18;
  }

  else
  {
    a1 = v22;
  }

  if (v19 <= 2)
  {
    a2 = v20;
  }

  else
  {
    a2 = v21;
  }

LABEL_37:
  MEMORY[0x1DA6F9910](a1, a2);

  return v26;
}

uint64_t sub_1D663A520(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 121;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE100000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a2 = 0xE100000000000000;
      a1 = 120;
      goto LABEL_20;
    }

LABEL_11:

    goto LABEL_20;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v10 = a1;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    a1 = 121;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10 == 1)
  {
    a2 = 0xE100000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D663A61C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v22 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0xE700000000000000;
      v13 = 0x736E6F6974706FLL;
      v14 = 0x726F7463656C6573;
      v15 = 0xE900000000000073;
      if (a1 != 3)
      {
        v14 = 1885433183;
        v15 = 0xE400000000000000;
      }

      if (a1 != 2)
      {
        v13 = v14;
        v12 = v15;
      }

      if (a1)
      {
        v9 = 0x6E6572646C696863;
        v10 = 0xE800000000000000;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v11 <= 1)
      {
        a2 = v10;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_29;
  }

  v22 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v16 = 1885433183;
  v17 = a1;
  v18 = 0xE400000000000000;
  if (a1 == 3)
  {
    v16 = 0x726F7463656C6573;
    v18 = 0xE900000000000073;
  }

  if (a1 == 2)
  {
    v16 = 0x736E6F6974706FLL;
    v18 = 0xE700000000000000;
  }

  v19 = 0x696669746E656469;
  v20 = 0xEA00000000007265;
  if (a1)
  {
    v19 = 0x6E6572646C696863;
    v20 = 0xE800000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v19;
  }

  else
  {
    a1 = v16;
  }

  if (v17 <= 1)
  {
    a2 = v20;
  }

  else
  {
    a2 = v18;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v22;
}

uint64_t sub_1D663A7EC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v15 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_15;
    }
  }

  else
  {
    v15 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 1701667182;
  v10 = a1;
  v11 = 0xE400000000000000;
  v12 = 0x6974696E69666564;
  v13 = 0xEA00000000006E6FLL;
  if (a1 != 2)
  {
    v12 = 1885433183;
    v13 = 0xE400000000000000;
  }

  if (a1)
  {
    v9 = 0x7470697263736564;
    v11 = 0xEB000000006E6F69;
  }

  if (a1 <= 1u)
  {
    a1 = v9;
  }

  else
  {
    a1 = v12;
  }

  if (v10 <= 1)
  {
    a2 = v11;
  }

  else
  {
    a2 = v13;
  }

LABEL_15:
  MEMORY[0x1DA6F9910](a1, a2);

  return v15;
}

uint64_t sub_1D663A8FC(unsigned __int8 a1, uint64_t (*a2)(void))
{
  v3 = 0x7370756F7267;
  v4 = a2();
  if (!v5)
  {
    v9 = 544366966;
    v6 = a1;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = 0xE600000000000000;
    goto LABEL_11;
  }

  v9 = v4;
  MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  v6 = a1;
  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 == 1)
  {
    v3 = 0x736D657469;
  }

  else
  {
    v3 = 0x7974697669746361;
  }

  if (v6 == 1)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xED0000736D657449;
  }

LABEL_11:
  MEMORY[0x1DA6F9910](v3, v7);

  return v9;
}

uint64_t sub_1D663A9DC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x69747265706F7270;
      }

      if (v9)
      {
        a2 = 0xEA00000000007365;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x69747265706F7270;
  }

  if (v10)
  {
    a2 = 0xEA00000000007365;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D663AAD8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x6D6954616964656DLL;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xEB00000000676E69;
        }

        else
        {
          a2 = 0xE400000000000000;
        }

        goto LABEL_20;
      }

LABEL_19:
      a1 = 0x6F6974616D696E61;
      a2 = 0xEA0000000000736ELL;
      goto LABEL_20;
    }

LABEL_11:

    goto LABEL_20;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v10 = a1;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    a1 = 0x6D6954616964656DLL;
  }

  else
  {
    a1 = 1885433183;
  }

  if (v10 == 1)
  {
    a2 = 0xEB00000000676E69;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_20:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D663AC0C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v22 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x6874615079656BLL;
      v10 = a1;
      v11 = 0xE700000000000000;
      v12 = 0xE800000000000000;
      v13 = 0x6576697469646461;
      v14 = 0x6D6954616964656DLL;
      v15 = 0xEB00000000676E69;
      if (a1 != 3)
      {
        v14 = 1885433183;
        v15 = 0xE400000000000000;
      }

      if (a1 != 2)
      {
        v13 = v14;
        v12 = v15;
      }

      if (a1)
      {
        v9 = 0x6974616C756D7563;
        v11 = 0xEA00000000006576;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v10 <= 1)
      {
        a2 = v11;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_29;
  }

  v22 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v16 = 1885433183;
  v17 = a1;
  v18 = 0xE400000000000000;
  if (a1 == 3)
  {
    v16 = 0x6D6954616964656DLL;
    v18 = 0xEB00000000676E69;
  }

  if (a1 == 2)
  {
    v16 = 0x6576697469646461;
    v18 = 0xE800000000000000;
  }

  v19 = 0xE700000000000000;
  v20 = 0x6874615079656BLL;
  if (a1)
  {
    v20 = 0x6974616C756D7563;
    v19 = 0xEA00000000006576;
  }

  if (a1 <= 1u)
  {
    a1 = v20;
  }

  else
  {
    a1 = v16;
  }

  if (v17 <= 1)
  {
    a2 = v19;
  }

  else
  {
    a2 = v18;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v22;
}

uint64_t sub_1D663ADE4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x74616D726F66;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE600000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x676E69646E6962;
        a2 = 0xE700000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x74616D726F66;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE600000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE700000000000000;
    a1 = 0x676E69646E6962;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D663AF14(char a1, uint64_t (*a2)(void))
{
  v3 = a2();
  if (v4)
  {
    v8 = v3;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  }

  else
  {
    v8 = 544366966;
  }

  if (a1)
  {
    v5 = 0x6E6572646C696863;
  }

  else
  {
    v5 = 0x6574617473;
  }

  if (a1)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1DA6F9910](v5, v6);

  return v8;
}

uint64_t sub_1D663AFC4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        a1 = 1885433183;
      }

      else
      {
        a1 = 0x74696E55776F6873;
      }

      if (v9)
      {
        a2 = 0xE800000000000000;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_17;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_10;
  }

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    a1 = 1885433183;
  }

  else
  {
    a1 = 0x74696E55776F6873;
  }

  if (v10)
  {
    a2 = 0xE800000000000000;
  }

  else
  {
    a2 = 0xE400000000000000;
  }

LABEL_17:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D663B0B8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v25 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0x72756769666E6F63;
      v13 = 0xED00006E6F697461;
      v14 = 0xD000000000000011;
      v15 = 0x80000001D73D2810;
      if (a1 != 4)
      {
        v14 = 1885433183;
        v15 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = 1701667182;
      if (a1 != 1)
      {
        v16 = 1684957547;
      }

      if (a1)
      {
        v9 = v16;
        v10 = 0xE400000000000000;
      }

      if (a1 <= 2u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v12;
      }

      if (v11 <= 2)
      {
        a2 = v10;
      }

      else
      {
        a2 = v13;
      }

      goto LABEL_33;
    }

LABEL_18:

    goto LABEL_33;
  }

  v25 = 544366966;
  if (a3)
  {
    goto LABEL_18;
  }

  v17 = 1701667182;
  v18 = a1;
  v19 = 0xE400000000000000;
  v20 = 0x72756769666E6F63;
  v21 = 0xED00006E6F697461;
  v22 = 0xD000000000000011;
  v23 = 0x80000001D73D2810;
  if (a1 != 4)
  {
    v22 = 1885433183;
    v23 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v20 = v22;
    v21 = v23;
  }

  if (a1 != 1)
  {
    v17 = 1684957547;
    v19 = 0xE400000000000000;
  }

  if (!a1)
  {
    v17 = 0x696669746E656469;
    v19 = 0xEA00000000007265;
  }

  if (a1 <= 2u)
  {
    a1 = v17;
  }

  else
  {
    a1 = v20;
  }

  if (v18 <= 2)
  {
    a2 = v19;
  }

  else
  {
    a2 = v21;
  }

LABEL_33:
  MEMORY[0x1DA6F9910](a1, a2);

  return v25;
}

uint64_t sub_1D663B2B8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v11 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if (a3)
    {
LABEL_3:

      goto LABEL_13;
    }
  }

  else
  {
    v11 = 544366966;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x6373654464656566;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v9 == 1)
    {
      a2 = 0xEE00726F74706972;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a1 = 1684366694;
    a2 = 0xE400000000000000;
  }

LABEL_13:
  MEMORY[0x1DA6F9910](a1, a2);

  return v11;
}

uint64_t sub_1D663B3A4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x736E656B6F74;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xE600000000000000;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x74616D726F66;
        a2 = 0xE600000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x736E656B6F74;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xE600000000000000;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE600000000000000;
    a1 = 0x74616D726F66;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D663B4CC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v22 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0x696669746E656469;
      v10 = 0xEA00000000007265;
      v11 = a1;
      v12 = 0xE500000000000000;
      v13 = 0x656C797473;
      v14 = 0x726F7463656C6573;
      v15 = 0xE900000000000073;
      if (a1 != 3)
      {
        v14 = 1885433183;
        v15 = 0xE400000000000000;
      }

      if (a1 != 2)
      {
        v13 = v14;
        v12 = v15;
      }

      if (a1)
      {
        v9 = 0x746E65746E6F63;
        v10 = 0xE700000000000000;
      }

      if (a1 <= 1u)
      {
        a1 = v9;
      }

      else
      {
        a1 = v13;
      }

      if (v11 <= 1)
      {
        a2 = v10;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_29;
  }

  v22 = 544366966;
  if (a3)
  {
    goto LABEL_16;
  }

  v16 = 1885433183;
  v17 = a1;
  v18 = 0xE400000000000000;
  if (a1 == 3)
  {
    v16 = 0x726F7463656C6573;
    v18 = 0xE900000000000073;
  }

  if (a1 == 2)
  {
    v16 = 0x656C797473;
    v18 = 0xE500000000000000;
  }

  v19 = 0x696669746E656469;
  v20 = 0xEA00000000007265;
  if (a1)
  {
    v19 = 0x746E65746E6F63;
    v20 = 0xE700000000000000;
  }

  if (a1 <= 1u)
  {
    a1 = v19;
  }

  else
  {
    a1 = v16;
  }

  if (v17 <= 1)
  {
    a2 = v20;
  }

  else
  {
    a2 = v18;
  }

LABEL_29:
  MEMORY[0x1DA6F9910](a1, a2);

  return v22;
}

uint64_t sub_1D663B694(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          a1 = 0x6973736572707865;
        }

        else
        {
          a1 = 1885433183;
        }

        if (v9 == 1)
        {
          a2 = 0xEA00000000006E6FLL;
        }

        else
        {
          a2 = 0xE400000000000000;
        }
      }

      else
      {
        a1 = 0x726F6C6F63;
        a2 = 0xE500000000000000;
      }

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 544366966;
  if (a3)
  {
    goto LABEL_11;
  }

  v11 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      a1 = 0x6973736572707865;
    }

    else
    {
      a1 = 1885433183;
    }

    if (v11 == 1)
    {
      a2 = 0xEA00000000006E6FLL;
    }

    else
    {
      a2 = 0xE400000000000000;
    }
  }

  else
  {
    a2 = 0xE500000000000000;
    a1 = 0x726F6C6F63;
  }

LABEL_12:
  MEMORY[0x1DA6F9910](a1, a2);

  return v12;
}

uint64_t sub_1D663B7CC(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  v7 = a4();
  if (v8)
  {
    v26 = v7;
    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    if ((a3 & 1) == 0)
    {
      v9 = 0xE900000000000065;
      v10 = 0x6C79745365746164;
      v11 = a1;
      v12 = 0xE700000000000000;
      v13 = 0x747865746E6F63;
      v14 = 0xE800000000000000;
      v15 = 0x656E6F5A656D6974;
      if (a1 != 4)
      {
        v15 = 1885433183;
        v14 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v13 = v15;
        v12 = v14;
      }

      v16 = 0x6C797453656D6974;
      v17 = 0xE800000000000000;
      if (a1 == 1)
      {
        v17 = 0xE900000000000065;
      }

      else
      {
        v16 = 0x6574616C706D6574;
      }

      if (a1)
      {
        v10 = v16;
        v9 = v17;
      }

      if (a1 <= 2u)
      {
        a1 = v10;
      }

      else
      {
        a1 = v13;
      }

      if (v11 <= 2)
      {
        a2 = v9;
      }

      else
      {
        a2 = v12;
      }

      goto LABEL_34;
    }

LABEL_19:

    goto LABEL_34;
  }

  v26 = 544366966;
  if (a3)
  {
    goto LABEL_19;
  }

  v18 = 1885433183;
  v19 = a1;
  v20 = 0xE400000000000000;
  if (a1 == 4)
  {
    v18 = 0x656E6F5A656D6974;
    v20 = 0xE800000000000000;
  }

  if (a1 == 3)
  {
    v18 = 0x747865746E6F63;
    v20 = 0xE700000000000000;
  }

  v21 = 0x6C79745365746164;
  v22 = 0xE900000000000065;
  v23 = 0x6C797453656D6974;
  v24 = 0xE900000000000065;
  if (a1 != 1)
  {
    v23 = 0x6574616C706D6574;
    v24 = 0xE800000000000000;
  }

  if (a1)
  {
    v21 = v23;
    v22 = v24;
  }

  if (a1 <= 2u)
  {
    a1 = v21;
  }

  else
  {
    a1 = v18;
  }

  if (v19 <= 2)
  {
    a2 = v22;
  }

  else
  {
    a2 = v20;
  }

LABEL_34:
  MEMORY[0x1DA6F9910](a1, a2);

  return v26;
}

uint64_t sub_1D663B9D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  sub_1D66B2474(0);
  v12 = v11;
  v13 = (v7 + *(v11 + 44));
  v15 = *v13;
  v14 = v13[1];
  v16 = a4 & 1;
  v35 = a4 & 1;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = v35;
  *(v17 + 40) = v15;
  *(v17 + 48) = v14;

  sub_1D5C75A4C(a2, a3, a4 & 1);
  sub_1D66B2508(0);
  sub_1D5B58B84(&qword_1EC8871A8, sub_1D66B2508, MEMORY[0x1E69E6F60]);
  v18 = sub_1D72647CC();
  v35 = a4 & 1;
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = v35;
  v20 = (v7 + *(v12 + 36));
  v21 = v20[3];
  v22 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v33 = sub_1D66F97DC;
  v34 = v19;
  v28 = a5;
  v29 = a6;
  v30 = sub_1D66F97C4;
  v31 = v17;
  sub_1D5C75A4C(a2, a3, v16);
  LOBYTE(v21) = sub_1D5D2F7A4(a1, sub_1D615B49C, v32, sub_1D615B4A4, v27, v21, v22);

  return v21 & 1;
}

uint64_t sub_1D663BC38(uint64_t result, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (result)
    {
      v5 = a2;
      v6 = a3;
      v7 = a4;
      sub_1D5C30060(0, a2, a3, a4, type metadata accessor for FormatObject);
      v8 = sub_1D726276C();
      a2 = v5;
      a3 = v6;
      a4 = v7;
      v9 = v8;
      *(v8 + 16) = v4;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    sub_1D5C30060(0, a2, a3, a4, type metadata accessor for FormatObject);
    return v9;
  }

  return result;
}

uint64_t sub_1D663BD7C(uint64_t result, uint64_t (*a2)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      a2(0);
      v4 = sub_1D726276C();
      *(v4 + 16) = v3;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    a2(0);
    return v4;
  }

  return result;
}

uint64_t sub_1D663BE60(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1D5C34074(0, &qword_1EDF43B90, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
      result = sub_1D726276C();
      *(result + 16) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1D663BF10(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    v2 = result;
    result = sub_1D726276C();
    *(result + 16) = v2;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D663BF74(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
      result = sub_1D726276C();
      *(result + 16) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1D663BFF8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_1D5B5BF78(0, &qword_1EDF01CF0, sub_1D5D29154, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = &type metadata for FormatCodingKeys;
  *(inited + 64) = sub_1D5C30408();
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  sub_1D5C30618(v3, v4);

  sub_1D5D291B8(inited);
  return a1;
}

uint64_t sub_1D663C0BC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 16);
  sub_1D5B5BF78(0, &qword_1EDF01CF0, sub_1D5D29154, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = a3(0);
  *(inited + 64) = sub_1D5B58B84(a4, a5, &unk_1D7321584);
  *(inited + 32) = v11;
  *(inited + 40) = v12;
  *(inited + 48) = v13;
  a6(v11, v12, v13);

  sub_1D5D291B8(inited);
  return a1;
}

uint64_t _s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_27;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v8 = *(a1 + 48);
  swift_beginAccess();
  v9 = *(a2 + 48);

  v10 = sub_1D635AC6C(v8, v9);

  if ((v10 & 1) == 0)
  {
    goto LABEL_27;
  }

  v11 = *(a1 + 56);
  v12 = *(a2 + 56);
  if ((~v11 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(*(a1 + 56));
    sub_1D5D04BD4(v12);
    if ((~v12 & 0xF000000000000007) == 0)
    {
      sub_1D5C8500C(v11);
      goto LABEL_19;
    }

LABEL_17:
    sub_1D5C8500C(v11);
    sub_1D5C8500C(v12);
    goto LABEL_27;
  }

  *&v166 = *(a1 + 56);
  if ((~v12 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v11);
    sub_1D5D04BD4(v12);
    sub_1D5D04BD4(v11);

    goto LABEL_17;
  }

  *v188 = v12;
  sub_1D5D04BD4(v11);
  sub_1D5D04BD4(v12);
  sub_1D5D04BD4(v11);
  v13 = static FormatFont.== infix(_:_:)(&v166, v188);

  sub_1D5C8500C(v11);
  if ((v13 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_19:
  v14 = *(a1 + 112);
  v15 = *(a1 + 144);
  v202 = *(a1 + 128);
  v203 = v15;
  v16 = *(a1 + 144);
  v17 = *(a1 + 176);
  v204 = *(a1 + 160);
  v205 = v17;
  v18 = *(a1 + 80);
  v199[0] = *(a1 + 64);
  v199[1] = v18;
  v19 = *(a1 + 112);
  v21 = *(a1 + 64);
  v20 = *(a1 + 80);
  v200 = *(a1 + 96);
  v201 = v19;
  v22 = *(a2 + 64);
  v23 = *(a2 + 80);
  v24 = *(a2 + 96);
  v206[3] = *(a2 + 112);
  v206[2] = v24;
  v25 = *(a2 + 96);
  v26 = *(a2 + 64);
  v206[1] = *(a2 + 80);
  v206[0] = v22;
  v28 = *(a2 + 144);
  v27 = *(a2 + 160);
  v29 = v27;
  v206[7] = *(a2 + 176);
  v206[6] = v27;
  v31 = *(a2 + 112);
  v30 = *(a2 + 128);
  v206[5] = *(a2 + 144);
  v206[4] = v30;
  v32 = *(a1 + 144);
  v170 = *(a1 + 128);
  *v171 = v32;
  v33 = *(a1 + 176);
  *&v171[16] = *(a1 + 160);
  *&v171[32] = v33;
  v34 = *(a1 + 80);
  v166 = *(a1 + 64);
  v167 = v34;
  v35 = *(a1 + 112);
  v168 = *(a1 + 96);
  v169 = v35;
  v172 = v31;
  *&v171[80] = v25;
  *&v171[64] = v23;
  *&v171[48] = v26;
  *&v173[48] = *(a2 + 176);
  *&v173[32] = v29;
  *&v173[16] = v28;
  *v173 = v30;
  v207[3] = v14;
  v207[2] = v200;
  v207[1] = v20;
  v207[0] = v21;
  v207[7] = *(a1 + 176);
  v207[6] = v204;
  v207[5] = v16;
  v207[4] = v202;
  if (sub_1D5CFD0B8(v207) == 1)
  {
    *&v188[64] = *v173;
    *&v188[80] = *&v173[16];
    v189 = *&v173[32];
    v190 = *&v173[48];
    *v188 = *&v171[48];
    *&v188[16] = *&v171[64];
    *&v188[32] = *&v171[80];
    *&v188[48] = v172;
    if (sub_1D5CFD0B8(v188) == 1)
    {
      v157 = v170;
      v158 = *v171;
      v159 = *&v171[16];
      v160 = *&v171[32];
      v153 = v166;
      v154 = v167;
      v155 = v168;
      v156 = v169;
      v36 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v199, &v140, &qword_1EDF34688, &type metadata for FormatFill, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v206, &v140, &qword_1EDF34688, &type metadata for FormatFill, v36, sub_1D5C34D84);
      sub_1D66615F8(&v153, &qword_1EDF34688, &type metadata for FormatFill, v36, sub_1D5C34D84);
      goto LABEL_30;
    }

    v38 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v199, &v153, &qword_1EDF34688, &type metadata for FormatFill, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v206, &v153, &qword_1EDF34688, &type metadata for FormatFill, v38, sub_1D5C34D84);
LABEL_25:
    v195 = *v173;
    v196 = *&v173[16];
    v197 = *&v173[32];
    v198 = *&v173[48];
    v191 = *&v171[48];
    v192 = *&v171[64];
    v193 = *&v171[80];
    v194 = v172;
    *&v188[64] = v170;
    *&v188[80] = *v171;
    v189 = *&v171[16];
    v190 = *&v171[32];
    *v188 = v166;
    *&v188[16] = v167;
    *&v188[32] = v168;
    *&v188[48] = v169;
    v39 = &unk_1EC88A048;
    v40 = &qword_1EDF34688;
    v41 = &type metadata for FormatFill;
    v42 = v188;
LABEL_26:
    sub_1D5D35558(v42, v39, v40, v41, sub_1D66F49B8);
    goto LABEL_27;
  }

  v157 = v170;
  v158 = *v171;
  v159 = *&v171[16];
  v160 = *&v171[32];
  v153 = v166;
  v154 = v167;
  v155 = v168;
  v156 = v169;
  v142 = v168;
  v143 = v169;
  v140 = v166;
  v141 = v167;
  v146 = *&v171[16];
  v147 = *&v171[32];
  v144 = v170;
  v145 = *v171;
  *&v188[48] = v172;
  *&v188[32] = *&v171[80];
  *&v188[16] = *&v171[64];
  *v188 = *&v171[48];
  v190 = *&v173[48];
  v189 = *&v173[32];
  *&v188[80] = *&v173[16];
  *&v188[64] = *v173;
  if (sub_1D5CFD0B8(v188) == 1)
  {
    v131 = v170;
    v132 = *v171;
    v133 = *&v171[16];
    v134 = *&v171[32];
    v127 = v166;
    v128 = v167;
    v129 = v168;
    v130 = v169;
    v37 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v199, &v117, &qword_1EDF34688, &type metadata for FormatFill, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v206, &v117, &qword_1EDF34688, &type metadata for FormatFill, v37, sub_1D5C34D84);
    sub_1D5D355B8(&v153, &v117, &qword_1EDF34688, &type metadata for FormatFill, v37, sub_1D5C34D84);
    sub_1D5CFD368(&v127);
    goto LABEL_25;
  }

  v131 = *v173;
  v132 = *&v173[16];
  v133 = *&v173[32];
  v134 = *&v173[48];
  v127 = *&v171[48];
  v128 = *&v171[64];
  v129 = *&v171[80];
  v130 = v172;
  v45 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(v199, &v117, &qword_1EDF34688, &type metadata for FormatFill, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(v206, &v117, &qword_1EDF34688, &type metadata for FormatFill, v45, sub_1D5C34D84);
  sub_1D5D355B8(&v153, &v117, &qword_1EDF34688, &type metadata for FormatFill, v45, sub_1D5C34D84);
  v46 = _s8NewsFeed10FormatFillO2eeoiySbAC_ACtFZ_0(&v140, &v127);
  v113 = v131;
  v114 = v132;
  v115 = v133;
  v116 = v134;
  v109 = v127;
  v110 = v128;
  v111 = v129;
  v112 = v130;
  sub_1D5CFD368(&v109);
  v121 = v144;
  v122 = v145;
  v123 = v146;
  v124 = v147;
  v117 = v140;
  v118 = v141;
  v119 = v142;
  v120 = v143;
  sub_1D5CFD368(&v117);
  v131 = v170;
  v132 = *v171;
  v133 = *&v171[16];
  v134 = *&v171[32];
  v127 = v166;
  v128 = v167;
  v129 = v168;
  v130 = v169;
  sub_1D66615F8(&v127, &qword_1EDF34688, &type metadata for FormatFill, v45, sub_1D5C34D84);
  if ((v46 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_30:
  v47 = *(a1 + 192);
  v48 = *(a2 + 192);
  if (v47)
  {
    if (!v48)
    {
      goto LABEL_27;
    }

    sub_1D633C9E8(v47, v48);
    v50 = v49;

    if ((v50 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v48)
  {
    goto LABEL_27;
  }

  v51 = (a1 + 200);
  v52 = *(a1 + 248);
  v111 = *(a1 + 232);
  v112 = v52;
  v113 = *(a1 + 264);
  LOBYTE(v114) = *(a1 + 280);
  v53 = *(a1 + 216);
  v109 = *(a1 + 200);
  v110 = v53;
  v54 = *(a2 + 248);
  v119 = *(a2 + 232);
  v120 = v54;
  v121 = *(a2 + 264);
  LOBYTE(v122) = *(a2 + 280);
  v55 = *(a2 + 216);
  v117 = *(a2 + 200);
  v118 = v55;
  v56 = *(a1 + 216);
  v57 = *(a1 + 248);
  v185 = *(a1 + 232);
  v186 = v57;
  v187 = *(a1 + 264);
  v58 = *(a1 + 200);
  v184 = v56;
  v183 = v58;
  v59 = v114;
  *&v188[23] = *(a2 + 216);
  *&v188[39] = *(a2 + 232);
  *&v188[55] = *(a2 + 248);
  *&v188[71] = *(a2 + 264);
  *&v188[7] = *(a2 + 200);
  v60 = v122;
  if (v114 == 254)
  {
    if (v122 == 254)
    {
      v61 = *(a1 + 248);
      v168 = *(a1 + 232);
      v169 = v61;
      v170 = *(a1 + 264);
      v62 = *(a1 + 216);
      v166 = *v51;
      v167 = v62;
      v171[0] = -2;
      v63 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(&v109, &v153, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(&v117, &v153, &qword_1EDF33718, &type metadata for FormatShadow, v63, sub_1D5C34D84);
      sub_1D66615F8(&v166, &qword_1EDF33718, &type metadata for FormatShadow, v63, sub_1D5C34D84);
      goto LABEL_43;
    }

    v67 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(&v109, &v166, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(&v117, &v166, &qword_1EDF33718, &type metadata for FormatShadow, v67, sub_1D5C34D84);
    goto LABEL_41;
  }

  v64 = *(a1 + 248);
  v168 = *(a1 + 232);
  v169 = v64;
  v170 = *(a1 + 264);
  v65 = *(a1 + 216);
  v166 = *v51;
  v167 = v65;
  v171[0] = v114;
  LOBYTE(v158) = v114;
  v155 = v168;
  v156 = v64;
  v157 = v170;
  v153 = v166;
  v154 = v65;
  if (v122 == 254)
  {
    v142 = v168;
    v143 = v169;
    v144 = v170;
    LOBYTE(v145) = v171[0];
    v140 = v166;
    v141 = v167;
    v66 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(&v109, &v127, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(&v117, &v127, &qword_1EDF33718, &type metadata for FormatShadow, v66, sub_1D5C34D84);
    sub_1D5D355B8(&v166, &v127, &qword_1EDF33718, &type metadata for FormatShadow, v66, sub_1D5C34D84);
    sub_1D601144C(&v140);
LABEL_41:
    v168 = v185;
    v169 = v186;
    v170 = v187;
    v166 = v183;
    v167 = v184;
    *&v171[33] = *&v188[32];
    *&v171[49] = *&v188[48];
    *&v171[65] = *&v188[64];
    *&v171[1] = *v188;
    v171[0] = v59;
    *&v171[80] = *&v188[79];
    *&v171[17] = *&v188[16];
    v171[88] = v60;
    v39 = &qword_1EC8822D8;
    v40 = &qword_1EDF33718;
    v41 = &type metadata for FormatShadow;
    v42 = &v166;
    goto LABEL_26;
  }

  v68 = *(a2 + 248);
  v142 = *(a2 + 232);
  v143 = v68;
  v144 = *(a2 + 264);
  v69 = *(a2 + 216);
  v140 = *(a2 + 200);
  v141 = v69;
  LOBYTE(v145) = v122;
  v70 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(&v109, &v127, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(&v117, &v127, &qword_1EDF33718, &type metadata for FormatShadow, v70, sub_1D5C34D84);
  sub_1D5D355B8(&v166, &v127, &qword_1EDF33718, &type metadata for FormatShadow, v70, sub_1D5C34D84);
  v71 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v153, &v140);
  v125[2] = v142;
  v125[3] = v143;
  v125[4] = v144;
  v126 = v145;
  v125[0] = v140;
  v125[1] = v141;
  sub_1D601144C(v125);
  v129 = v155;
  v130 = v156;
  v131 = v157;
  LOBYTE(v132) = v158;
  v127 = v153;
  v128 = v154;
  sub_1D601144C(&v127);
  v142 = v185;
  v143 = v186;
  v144 = v187;
  v140 = v183;
  v141 = v184;
  LOBYTE(v145) = v59;
  sub_1D66615F8(&v140, &qword_1EDF33718, &type metadata for FormatShadow, v70, sub_1D5C34D84);
  if ((v71 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_43:
  v72 = *(a1 + 288);
  v73 = *(a2 + 288);
  if (v72)
  {
    if (!v73 || (sub_1D6349160(v72, v73) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v73)
  {
    goto LABEL_27;
  }

  v74 = *(a1 + 440);
  v75 = *(a1 + 472);
  *&v171[80] = *(a1 + 456);
  v172 = v75;
  v76 = *(a1 + 376);
  v77 = *(a1 + 408);
  *&v171[16] = *(a1 + 392);
  *&v171[32] = v77;
  v79 = *(a1 + 408);
  v78 = *(a1 + 424);
  v80 = v78;
  *&v171[64] = *(a1 + 440);
  *&v171[48] = v78;
  v81 = *(a1 + 312);
  v82 = *(a1 + 344);
  v168 = *(a1 + 328);
  v169 = v82;
  v84 = *(a1 + 344);
  v83 = *(a1 + 360);
  v85 = v83;
  *v171 = *(a1 + 376);
  v170 = v83;
  v86 = *(a1 + 312);
  v166 = *(a1 + 296);
  v167 = v86;
  v87 = *(a2 + 472);
  v180 = *(a2 + 456);
  v181 = v87;
  v88 = *(a2 + 408);
  v176 = *(a2 + 392);
  v177 = v88;
  v89 = *(a2 + 440);
  v178 = *(a2 + 424);
  v179 = v89;
  v90 = *(a2 + 376);
  v174 = *(a2 + 360);
  v175 = v90;
  v91 = *(a2 + 296);
  *&v173[24] = *(a2 + 312);
  v92 = *(a2 + 344);
  *&v173[40] = *(a2 + 328);
  *&v173[56] = v92;
  *&v173[8] = v91;
  v93 = *(a1 + 472);
  v193 = *&v171[80];
  v194 = v93;
  v189 = *&v171[16];
  v190 = v79;
  v192 = v74;
  v191 = v80;
  *&v188[32] = v168;
  *&v188[48] = v84;
  *&v188[80] = v76;
  *&v188[64] = v85;
  *v173 = *(a1 + 488);
  v182 = *(a2 + 488);
  LOWORD(v195) = *(a1 + 488);
  *&v188[16] = v81;
  *v188 = v166;
  if (sub_1D5D39FB4(v188) == 1)
  {
    v163 = v180;
    v164 = v181;
    v165 = v182;
    v159 = v176;
    v160 = v177;
    v161 = v178;
    v162 = v179;
    v155 = *&v173[40];
    v156 = *&v173[56];
    v157 = v174;
    v158 = v175;
    v153 = *&v173[8];
    v154 = *&v173[24];
    if (sub_1D5D39FB4(&v153) != 1)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v150 = *&v171[80];
    v151 = v172;
    v152 = *v173;
    v146 = *&v171[16];
    v147 = *&v171[32];
    v148 = *&v171[48];
    v149 = *&v171[64];
    v142 = v168;
    v143 = v169;
    v144 = v170;
    v145 = *v171;
    v140 = v166;
    v141 = v167;
    v163 = v180;
    v164 = v181;
    v165 = v182;
    v159 = v176;
    v160 = v177;
    v161 = v178;
    v162 = v179;
    v155 = *&v173[40];
    v156 = *&v173[56];
    v157 = v174;
    v158 = v175;
    v153 = *&v173[8];
    v154 = *&v173[24];
    if (sub_1D5D39FB4(&v153) == 1)
    {
      goto LABEL_27;
    }

    v137 = v180;
    v138 = v181;
    v139 = v182;
    v133 = v176;
    v134 = v177;
    v135 = v178;
    v136 = v179;
    v129 = *&v173[40];
    v130 = *&v173[56];
    v131 = v174;
    v132 = v175;
    v127 = *&v173[8];
    v128 = *&v173[24];
    if ((_s8NewsFeed20FormatParagraphStyleV2eeoiySbAC_ACtFZ_0(&v140, &v127) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (*(a1 + 504))
  {
    if ((*(a2 + 504) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if ((*(a2 + 504) & 1) != 0 || *(a1 + 496) != *(a2 + 496))
  {
    goto LABEL_27;
  }

  v94 = *(a1 + 512);
  v95 = *(a2 + 512);
  if (v94)
  {
    if (!v95)
    {
      goto LABEL_27;
    }

    sub_1D633A310(v94, v95);
    v97 = v96;

    if ((v97 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v95)
    {
      goto LABEL_27;
    }
  }

  v98 = *(a1 + 520);
  v99 = *(a1 + 528);
  v100 = *(a2 + 520);
  v101 = *(a2 + 528);
  if (v98 == 9)
  {
    sub_1D62B5D18(*(a1 + 520), *(a1 + 528));
    sub_1D62B5D18(v100, v101);
    if (v100 != 9)
    {
LABEL_74:
      sub_1D62B5D00(v98, v99);
      sub_1D62B5D00(v100, v101);
      goto LABEL_27;
    }

    sub_1D62B5D00(v98, v99);
  }

  else
  {
    *&v166 = *(a1 + 520);
    *(&v166 + 1) = v99;
    if (v100 == 9)
    {
LABEL_73:
      sub_1D62B5D18(v98, v99);
      sub_1D62B5D18(v100, v101);
      sub_1D62B5D18(v98, v99);
      sub_1D5C84FF4(v99);
      goto LABEL_74;
    }

    LOBYTE(v153) = v100;
    *(&v153 + 1) = v101;
    sub_1D62B5D18(v98, v99);
    sub_1D62B5D18(v100, v101);
    sub_1D62B5D18(v98, v99);
    v102 = _s8NewsFeed15FormatUnderlineV2eeoiySbAC_ACtFZ_0(&v166, &v153);
    sub_1D5C84FF4(*(&v153 + 1));
    sub_1D5C84FF4(*(&v166 + 1));
    sub_1D62B5D00(v98, v99);
    if (!v102)
    {
      goto LABEL_27;
    }
  }

  v98 = *(a1 + 536);
  v99 = *(a1 + 544);
  v100 = *(a2 + 536);
  v101 = *(a2 + 544);
  if (v98 != 9)
  {
    *&v166 = *(a1 + 536);
    *(&v166 + 1) = v99;
    if (v100 != 9)
    {
      LOBYTE(v153) = v100;
      *(&v153 + 1) = v101;
      sub_1D62B5D18(v98, v99);
      sub_1D62B5D18(v100, v101);
      sub_1D62B5D18(v98, v99);
      v103 = _s8NewsFeed15FormatUnderlineV2eeoiySbAC_ACtFZ_0(&v166, &v153);
      sub_1D5C84FF4(*(&v153 + 1));
      sub_1D5C84FF4(*(&v166 + 1));
      sub_1D62B5D00(v98, v99);
      if (!v103)
      {
        goto LABEL_27;
      }

      goto LABEL_76;
    }

    goto LABEL_73;
  }

  sub_1D62B5D18(*(a1 + 536), *(a1 + 544));
  sub_1D62B5D18(v100, v101);
  if (v100 != 9)
  {
    goto LABEL_74;
  }

  sub_1D62B5D00(v98, v99);
LABEL_76:
  v104 = *(a1 + 552);
  v105 = *(a2 + 552);
  if (v104 == 2)
  {
    if (v105 != 2)
    {
      goto LABEL_27;
    }
  }

  else if (v105 == 2 || ((v105 ^ v104) & 1) != 0)
  {
    goto LABEL_27;
  }

  v106 = *(a1 + 560);
  v107 = *(a2 + 560);
  if (v106)
  {
    if (v107)
    {

      sub_1D633A310(v106, v107);
      v43 = v108;

      return v43 & 1;
    }
  }

  else if (!v107)
  {

    v43 = 1;
    return v43 & 1;
  }

LABEL_27:
  v43 = 0;
  return v43 & 1;
}

BOOL sub_1D663D3A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v5 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a2 + 48);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else
  {
    v8 = (v7 ^ v6) & 1;
    if (v7 == 2 || v8 != 0)
    {
      return 0;
    }
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v10 = *(a1 + 64);
  v11 = *(a2 + 64);
  result = (v10 | v11) == 0;
  if (v10)
  {
    if (v11)
    {

      v13 = sub_1D663D3A4(v10, v11);

      return v13;
    }
  }

  return result;
}

BOOL _s8NewsFeed024FormatAnimationNodeBasicD0C2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  *&__src[0] = *(a1 + 16);
  *(&__src[0] + 1) = v4;
  *&__src[1] = v5;
  *(&__src[1] + 1) = v6;
  *&__src[2] = v7;
  *(&__src[2] + 1) = v8;
  LOBYTE(__src[3]) = v9;
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  v15 = *(a2 + 64);
  *&__dst[0] = *(a2 + 16);
  *(&__dst[0] + 1) = v10;
  *&__dst[1] = v11;
  *(&__dst[1] + 1) = v12;
  *&__dst[2] = v13;
  *(&__dst[2] + 1) = v14;
  LOBYTE(__dst[3]) = v15;
  sub_1D62B753C(*&__src[0], v4, v5, v6, v7, v8, v9);
  sub_1D62B753C(*&__dst[0], v10, v11, v12, v13, v14, v15);
  v16 = _s8NewsFeed26FormatAnimationNodeKeyPathO2eeoiySbAC_ACtFZ_0(__src, __dst);
  sub_1D62B4A44(*&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), __dst[3]);
  sub_1D62B4A44(*&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), __src[3]);
  if (!v16)
  {
    return 0;
  }

  v18 = *(a1 + 72);
  v17 = *(a1 + 80);
  v19 = *(a1 + 88);
  v21 = *(a2 + 72);
  v20 = *(a2 + 80);
  v22 = *(a2 + 88);
  if (v19 == 255)
  {
    sub_1D6189668(*(a1 + 72), *(a1 + 80), 255);
    if (v22 != 255)
    {
      goto LABEL_14;
    }

    sub_1D6189668(v21, v20, 255);
    sub_1D60107F0(v18, v17, 255);
  }

  else
  {
    *&__src[0] = *(a1 + 72);
    *(&__src[0] + 1) = v17;
    LOBYTE(__src[1]) = v19;
    if (v22 == 255)
    {
LABEL_12:
      sub_1D6189668(v18, v17, v19);
      sub_1D6189668(v21, v20, 255);
      sub_1D6189668(v18, v17, v19);
      sub_1D5D2F2C8(v18, v17, v19 & 1);
LABEL_15:
      sub_1D60107F0(v18, v17, v19);
      sub_1D60107F0(v21, v20, v22);
      return 0;
    }

    *&__dst[0] = v21;
    *(&__dst[0] + 1) = v20;
    LOBYTE(__dst[1]) = v22 & 1;
    sub_1D6189668(v18, v17, v19);
    sub_1D6189668(v21, v20, v22);
    sub_1D6189668(v18, v17, v19);
    v23 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(__src, __dst);
    sub_1D5D2F2C8(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
    sub_1D5D2F2C8(*&__src[0], *(&__src[0] + 1), __src[1]);
    sub_1D60107F0(v18, v17, v19);
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *(a1 + 96);
  v17 = *(a1 + 104);
  v19 = *(a1 + 112);
  v21 = *(a2 + 96);
  v20 = *(a2 + 104);
  v22 = *(a2 + 112);
  if (v19 != 255)
  {
    *&__src[0] = *(a1 + 96);
    *(&__src[0] + 1) = v17;
    LOBYTE(__src[1]) = v19;
    if (v22 != 255)
    {
      *&__dst[0] = v21;
      *(&__dst[0] + 1) = v20;
      LOBYTE(__dst[1]) = v22 & 1;
      sub_1D6189668(v18, v17, v19);
      sub_1D6189668(v21, v20, v22);
      sub_1D6189668(v18, v17, v19);
      v24 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(__src, __dst);
      sub_1D5D2F2C8(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
      sub_1D5D2F2C8(*&__src[0], *(&__src[0] + 1), __src[1]);
      sub_1D60107F0(v18, v17, v19);
      if ((v24 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_19;
    }

    goto LABEL_12;
  }

  sub_1D6189668(*(a1 + 96), *(a1 + 104), 255);
  if (v22 != 255)
  {
LABEL_14:
    sub_1D6189668(v21, v20, v22);
    goto LABEL_15;
  }

  sub_1D6189668(v21, v20, 255);
  sub_1D60107F0(v18, v17, 255);
LABEL_19:
  v27 = *(a1 + 200);
  v28 = *(a1 + 232);
  v88[6] = *(a1 + 216);
  v89[0] = v28;
  *(v89 + 9) = *(a1 + 241);
  v29 = *(a1 + 136);
  v30 = *(a1 + 168);
  v88[2] = *(a1 + 152);
  v88[3] = v30;
  v31 = *(a1 + 184);
  v88[5] = v27;
  v88[4] = v31;
  v32 = *(a1 + 120);
  v88[1] = v29;
  v88[0] = v32;
  v33 = *(a2 + 200);
  v34 = *(a2 + 232);
  v90[6] = *(a2 + 216);
  v91[0] = v34;
  *(v91 + 9) = *(a2 + 241);
  v35 = *(a2 + 136);
  v36 = *(a2 + 168);
  v90[2] = *(a2 + 152);
  v90[3] = v36;
  v37 = *(a2 + 184);
  v90[5] = v33;
  v90[4] = v37;
  v38 = *(a2 + 120);
  v90[1] = v35;
  v90[0] = v38;
  v39 = *(a1 + 200);
  v40 = *(a1 + 232);
  __src[6] = *(a1 + 216);
  __src[7] = v40;
  *(&__src[7] + 9) = *(a1 + 241);
  v41 = *(a1 + 136);
  v42 = *(a1 + 168);
  __src[2] = *(a1 + 152);
  __src[3] = v42;
  v43 = *(a1 + 184);
  __src[5] = v39;
  __src[4] = v43;
  __src[0] = *(a1 + 120);
  __src[1] = v41;
  *(&__src[16] + 9) = *(a2 + 241);
  v44 = *(a2 + 200);
  v45 = *(a2 + 232);
  __src[15] = *(a2 + 216);
  __src[16] = v45;
  v46 = *(a2 + 136);
  v47 = *(a2 + 168);
  __src[11] = *(a2 + 152);
  __src[12] = v47;
  v48 = *(a2 + 184);
  __src[14] = v44;
  __src[13] = v48;
  v49 = *(a2 + 120);
  __src[10] = v46;
  __src[9] = v49;
  v50 = *(a1 + 200);
  v51 = *(a1 + 232);
  v92[6] = *(a1 + 216);
  v93[0] = v51;
  *(v93 + 9) = *(a1 + 241);
  v52 = *(a1 + 136);
  v53 = *(a1 + 168);
  v92[2] = *(a1 + 152);
  v92[3] = v53;
  v92[4] = *(a1 + 184);
  v92[5] = v50;
  v92[0] = *(a1 + 120);
  v92[1] = v52;
  if (sub_1D60486AC(v92) == 1)
  {
    __dst[6] = __src[15];
    __dst[7] = __src[16];
    *(&__dst[7] + 9) = *(&__src[16] + 9);
    __dst[2] = __src[11];
    __dst[3] = __src[12];
    __dst[4] = __src[13];
    __dst[5] = __src[14];
    __dst[0] = __src[9];
    __dst[1] = __src[10];
    if (sub_1D60486AC(__dst) == 1)
    {
      v85 = __src[6];
      v86[0] = __src[7];
      *(v86 + 9) = *(&__src[7] + 9);
      v81 = __src[2];
      v82 = __src[3];
      v83 = __src[4];
      v84 = __src[5];
      v79 = __src[0];
      v80 = __src[1];
      v54 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v88, &v70, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v90, &v70, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v54, sub_1D5C34D84);
      sub_1D66615F8(&v79, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v54, sub_1D5C34D84);
      return 1;
    }

    v56 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v88, &v79, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v90, &v79, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v56, sub_1D5C34D84);
  }

  else
  {
    v85 = __src[6];
    v86[0] = __src[7];
    *(v86 + 9) = *(&__src[7] + 9);
    v81 = __src[2];
    v82 = __src[3];
    v83 = __src[4];
    v84 = __src[5];
    v79 = __src[0];
    v80 = __src[1];
    v76 = __src[6];
    v77[0] = __src[7];
    *(v77 + 9) = *(&__src[7] + 9);
    v72 = __src[2];
    v73 = __src[3];
    v74 = __src[4];
    v75 = __src[5];
    v70 = __src[0];
    v71 = __src[1];
    __dst[6] = __src[15];
    __dst[7] = __src[16];
    *(&__dst[7] + 9) = *(&__src[16] + 9);
    __dst[2] = __src[11];
    __dst[3] = __src[12];
    __dst[4] = __src[13];
    __dst[5] = __src[14];
    __dst[0] = __src[9];
    __dst[1] = __src[10];
    if (sub_1D60486AC(__dst) != 1)
    {
      v68 = __src[15];
      v69[0] = __src[16];
      *(v69 + 9) = *(&__src[16] + 9);
      v64 = __src[11];
      v65 = __src[12];
      v66 = __src[13];
      v67 = __src[14];
      v62 = __src[9];
      v63 = __src[10];
      v57 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v88, v60, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v90, v60, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v57, sub_1D5C34D84);
      sub_1D5D355B8(&v79, v60, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v57, sub_1D5C34D84);
      v25 = _s8NewsFeed17FormatMediaTimingV2eeoiySbAC_ACtFZ_0(&v70, &v62);
      v58[6] = v68;
      v59[0] = v69[0];
      *(v59 + 9) = *(v69 + 9);
      v58[2] = v64;
      v58[3] = v65;
      v58[4] = v66;
      v58[5] = v67;
      v58[0] = v62;
      v58[1] = v63;
      sub_1D62B49F0(v58);
      v60[6] = v76;
      v61[0] = v77[0];
      *(v61 + 9) = *(v77 + 9);
      v60[2] = v72;
      v60[3] = v73;
      v60[4] = v74;
      v60[5] = v75;
      v60[0] = v70;
      v60[1] = v71;
      sub_1D62B49F0(v60);
      v68 = __src[6];
      v69[0] = __src[7];
      *(v69 + 9) = *(&__src[7] + 9);
      v64 = __src[2];
      v65 = __src[3];
      v66 = __src[4];
      v67 = __src[5];
      v62 = __src[0];
      v63 = __src[1];
      sub_1D66615F8(&v62, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v57, sub_1D5C34D84);
      return v25;
    }

    v68 = __src[6];
    v69[0] = __src[7];
    *(v69 + 9) = *(&__src[7] + 9);
    v64 = __src[2];
    v65 = __src[3];
    v66 = __src[4];
    v67 = __src[5];
    v62 = __src[0];
    v63 = __src[1];
    v55 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v88, v60, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v90, v60, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v55, sub_1D5C34D84);
    sub_1D5D355B8(&v79, v60, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v55, sub_1D5C34D84);
    sub_1D62B49F0(&v62);
  }

  memcpy(__dst, __src, 0x119uLL);
  sub_1D5D35558(__dst, &qword_1EC889AE0, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, sub_1D66F49B8);
  return 0;
}

uint64_t _s8NewsFeed025FormatAnimationNodeSpringD0C2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  *&__src[0] = *(a1 + 16);
  *(&__src[0] + 1) = v4;
  *&__src[1] = v5;
  *(&__src[1] + 1) = v6;
  *&__src[2] = v7;
  *(&__src[2] + 1) = v8;
  LOBYTE(__src[3]) = v9;
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  v15 = *(a2 + 64);
  *&__dst[0] = *(a2 + 16);
  *(&__dst[0] + 1) = v10;
  *&__dst[1] = v11;
  *(&__dst[1] + 1) = v12;
  *&__dst[2] = v13;
  *(&__dst[2] + 1) = v14;
  LOBYTE(__dst[3]) = v15;
  sub_1D62B753C(*&__src[0], v4, v5, v6, v7, v8, v9);
  sub_1D62B753C(*&__dst[0], v10, v11, v12, v13, v14, v15);
  v16 = _s8NewsFeed26FormatAnimationNodeKeyPathO2eeoiySbAC_ACtFZ_0(__src, __dst);
  sub_1D62B4A44(*&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), __dst[3]);
  sub_1D62B4A44(*&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), __src[3]);
  if (!v16)
  {
    goto LABEL_16;
  }

  v18 = *(a1 + 72);
  v17 = *(a1 + 80);
  v19 = *(a1 + 88);
  v21 = *(a2 + 72);
  v20 = *(a2 + 80);
  v22 = *(a2 + 88);
  if (v19 == 255)
  {
    sub_1D6189668(*(a1 + 72), *(a1 + 80), 255);
    if (v22 != 255)
    {
LABEL_14:
      sub_1D6189668(v21, v20, v22);
      goto LABEL_15;
    }

    sub_1D6189668(v21, v20, 255);
    sub_1D60107F0(v18, v17, 255);
  }

  else
  {
    *&__src[0] = *(a1 + 72);
    *(&__src[0] + 1) = v17;
    LOBYTE(__src[1]) = v19;
    if (v22 == 255)
    {
LABEL_12:
      sub_1D6189668(v18, v17, v19);
      sub_1D6189668(v21, v20, 255);
      sub_1D6189668(v18, v17, v19);
      sub_1D5D2F2C8(v18, v17, v19 & 1);
LABEL_15:
      sub_1D60107F0(v18, v17, v19);
      sub_1D60107F0(v21, v20, v22);
      goto LABEL_16;
    }

    *&__dst[0] = v21;
    *(&__dst[0] + 1) = v20;
    LOBYTE(__dst[1]) = v22 & 1;
    sub_1D6189668(v18, v17, v19);
    sub_1D6189668(v21, v20, v22);
    sub_1D6189668(v18, v17, v19);
    v23 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(__src, __dst);
    sub_1D5D2F2C8(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
    sub_1D5D2F2C8(*&__src[0], *(&__src[0] + 1), __src[1]);
    sub_1D60107F0(v18, v17, v19);
    if ((v23 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v18 = *(a1 + 96);
  v17 = *(a1 + 104);
  v19 = *(a1 + 112);
  v21 = *(a2 + 96);
  v20 = *(a2 + 104);
  v22 = *(a2 + 112);
  if (v19 == 255)
  {
    sub_1D6189668(*(a1 + 96), *(a1 + 104), 255);
    if (v22 == 255)
    {
      sub_1D6189668(v21, v20, 255);
      sub_1D60107F0(v18, v17, 255);
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  *&__src[0] = *(a1 + 96);
  *(&__src[0] + 1) = v17;
  LOBYTE(__src[1]) = v19;
  if (v22 == 255)
  {
    goto LABEL_12;
  }

  *&__dst[0] = v21;
  *(&__dst[0] + 1) = v20;
  LOBYTE(__dst[1]) = v22 & 1;
  sub_1D6189668(v18, v17, v19);
  sub_1D6189668(v21, v20, v22);
  sub_1D6189668(v18, v17, v19);
  v24 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(__src, __dst);
  sub_1D5D2F2C8(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
  sub_1D5D2F2C8(*&__src[0], *(&__src[0] + 1), __src[1]);
  sub_1D60107F0(v18, v17, v19);
  if ((v24 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v27 = *(a1 + 120);
  v25 = *(a2 + 120);
  if (v27)
  {
    if (!v25)
    {
      return v25 & 1;
    }

    sub_1D633A310(v27, v25);
    v29 = v28;

    if ((v29 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v25)
    {
      goto LABEL_16;
    }
  }

  v30 = *(a1 + 128);
  v25 = *(a2 + 128);
  if (v30)
  {
    if (!v25)
    {
      return v25 & 1;
    }

    sub_1D633A310(v30, v25);
    v32 = v31;

    if ((v32 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v25)
    {
      goto LABEL_16;
    }
  }

  v33 = *(a1 + 136);
  v25 = *(a2 + 136);
  if (v33)
  {
    if (!v25)
    {
      return v25 & 1;
    }

    sub_1D633A310(v33, v25);
    v35 = v34;

    if ((v35 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v25)
    {
      goto LABEL_16;
    }
  }

  v36 = *(a1 + 144);
  v25 = *(a2 + 144);
  if (v36)
  {
    if (!v25)
    {
      return v25 & 1;
    }

    sub_1D633A310(v36, v25);
    v38 = v37;

    if ((v38 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

  if (!v25)
  {

LABEL_43:
    v39 = *(a1 + 232);
    v40 = *(a1 + 264);
    v99[6] = *(a1 + 248);
    v100[0] = v40;
    *(v100 + 9) = *(a1 + 273);
    v41 = *(a1 + 168);
    v42 = *(a1 + 200);
    v99[2] = *(a1 + 184);
    v99[3] = v42;
    v43 = *(a1 + 216);
    v99[5] = v39;
    v99[4] = v43;
    v44 = *(a1 + 152);
    v99[1] = v41;
    v99[0] = v44;
    v45 = *(a2 + 232);
    v46 = *(a2 + 264);
    v101[6] = *(a2 + 248);
    v102[0] = v46;
    *(v102 + 9) = *(a2 + 273);
    v47 = *(a2 + 168);
    v48 = *(a2 + 200);
    v101[2] = *(a2 + 184);
    v101[3] = v48;
    v49 = *(a2 + 216);
    v101[5] = v45;
    v101[4] = v49;
    v50 = *(a2 + 152);
    v101[1] = v47;
    v101[0] = v50;
    v51 = *(a1 + 232);
    v52 = *(a1 + 264);
    __src[6] = *(a1 + 248);
    __src[7] = v52;
    *(&__src[7] + 9) = *(a1 + 273);
    v53 = *(a1 + 168);
    v54 = *(a1 + 200);
    __src[2] = *(a1 + 184);
    __src[3] = v54;
    v55 = *(a1 + 216);
    __src[5] = v51;
    __src[4] = v55;
    __src[0] = *(a1 + 152);
    __src[1] = v53;
    *(&__src[16] + 9) = *(a2 + 273);
    v56 = *(a2 + 232);
    v57 = *(a2 + 264);
    __src[15] = *(a2 + 248);
    __src[16] = v57;
    v58 = *(a2 + 168);
    v59 = *(a2 + 200);
    __src[11] = *(a2 + 184);
    __src[12] = v59;
    v60 = *(a2 + 216);
    __src[14] = v56;
    __src[13] = v60;
    v61 = *(a2 + 152);
    __src[10] = v58;
    __src[9] = v61;
    v62 = *(a1 + 232);
    v63 = *(a1 + 264);
    v103[6] = *(a1 + 248);
    v104[0] = v63;
    *(v104 + 9) = *(a1 + 273);
    v64 = *(a1 + 168);
    v65 = *(a1 + 200);
    v103[2] = *(a1 + 184);
    v103[3] = v65;
    v103[4] = *(a1 + 216);
    v103[5] = v62;
    v103[0] = *(a1 + 152);
    v103[1] = v64;
    if (sub_1D60486AC(v103) == 1)
    {
      __dst[6] = __src[15];
      __dst[7] = __src[16];
      *(&__dst[7] + 9) = *(&__src[16] + 9);
      __dst[2] = __src[11];
      __dst[3] = __src[12];
      __dst[4] = __src[13];
      __dst[5] = __src[14];
      __dst[0] = __src[9];
      __dst[1] = __src[10];
      if (sub_1D60486AC(__dst) == 1)
      {
        v96 = __src[6];
        v97[0] = __src[7];
        *(v97 + 9) = *(&__src[7] + 9);
        v92 = __src[2];
        v93 = __src[3];
        v94 = __src[4];
        v95 = __src[5];
        v90 = __src[0];
        v91 = __src[1];
        v25 = MEMORY[0x1E69E6720];
        sub_1D5D355B8(v99, &v81, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
        sub_1D5D355B8(v101, &v81, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v25, sub_1D5C34D84);
        sub_1D66615F8(&v90, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v25, sub_1D5C34D84);
        LOBYTE(v25) = 1;
        return v25 & 1;
      }

      v67 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v99, &v90, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v101, &v90, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v67, sub_1D5C34D84);
    }

    else
    {
      v96 = __src[6];
      v97[0] = __src[7];
      *(v97 + 9) = *(&__src[7] + 9);
      v92 = __src[2];
      v93 = __src[3];
      v94 = __src[4];
      v95 = __src[5];
      v90 = __src[0];
      v91 = __src[1];
      v87 = __src[6];
      v88[0] = __src[7];
      *(v88 + 9) = *(&__src[7] + 9);
      v83 = __src[2];
      v84 = __src[3];
      v85 = __src[4];
      v86 = __src[5];
      v81 = __src[0];
      v82 = __src[1];
      __dst[6] = __src[15];
      __dst[7] = __src[16];
      *(&__dst[7] + 9) = *(&__src[16] + 9);
      __dst[2] = __src[11];
      __dst[3] = __src[12];
      __dst[4] = __src[13];
      __dst[5] = __src[14];
      __dst[0] = __src[9];
      __dst[1] = __src[10];
      if (sub_1D60486AC(__dst) != 1)
      {
        v79 = __src[15];
        v80[0] = __src[16];
        *(v80 + 9) = *(&__src[16] + 9);
        v75 = __src[11];
        v76 = __src[12];
        v77 = __src[13];
        v78 = __src[14];
        v73 = __src[9];
        v74 = __src[10];
        v68 = MEMORY[0x1E69E6720];
        sub_1D5D355B8(v99, v71, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
        sub_1D5D355B8(v101, v71, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v68, sub_1D5C34D84);
        sub_1D5D355B8(&v90, v71, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v68, sub_1D5C34D84);
        LOBYTE(v25) = _s8NewsFeed17FormatMediaTimingV2eeoiySbAC_ACtFZ_0(&v81, &v73);
        v69[6] = v79;
        v70[0] = v80[0];
        *(v70 + 9) = *(v80 + 9);
        v69[2] = v75;
        v69[3] = v76;
        v69[4] = v77;
        v69[5] = v78;
        v69[0] = v73;
        v69[1] = v74;
        sub_1D62B49F0(v69);
        v71[6] = v87;
        v72[0] = v88[0];
        *(v72 + 9) = *(v88 + 9);
        v71[2] = v83;
        v71[3] = v84;
        v71[4] = v85;
        v71[5] = v86;
        v71[0] = v81;
        v71[1] = v82;
        sub_1D62B49F0(v71);
        v79 = __src[6];
        v80[0] = __src[7];
        *(v80 + 9) = *(&__src[7] + 9);
        v75 = __src[2];
        v76 = __src[3];
        v77 = __src[4];
        v78 = __src[5];
        v73 = __src[0];
        v74 = __src[1];
        sub_1D66615F8(&v73, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v68, sub_1D5C34D84);
        return v25 & 1;
      }

      v79 = __src[6];
      v80[0] = __src[7];
      *(v80 + 9) = *(&__src[7] + 9);
      v75 = __src[2];
      v76 = __src[3];
      v77 = __src[4];
      v78 = __src[5];
      v73 = __src[0];
      v74 = __src[1];
      v66 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v99, v71, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v101, v71, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v66, sub_1D5C34D84);
      sub_1D5D355B8(&v90, v71, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v66, sub_1D5C34D84);
      sub_1D62B49F0(&v73);
    }

    memcpy(__dst, __src, 0x119uLL);
    sub_1D5D35558(__dst, &qword_1EC889AE0, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, sub_1D66F49B8);
  }

LABEL_16:
  LOBYTE(v25) = 0;
  return v25 & 1;
}

BOOL _s8NewsFeed024FormatAnimationNodeGroupD0C2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D633DB70(*(a1 + 16), *(a2 + 16));
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 104);
  v6 = *(a1 + 136);
  v68[6] = *(a1 + 120);
  v69[0] = v6;
  *(v69 + 9) = *(a1 + 145);
  v7 = *(a1 + 40);
  v8 = *(a1 + 72);
  v68[2] = *(a1 + 56);
  v68[3] = v8;
  v9 = *(a1 + 88);
  v68[5] = v5;
  v68[4] = v9;
  v10 = *(a1 + 24);
  v68[1] = v7;
  v68[0] = v10;
  v11 = *(a2 + 104);
  v12 = *(a2 + 136);
  v70[6] = *(a2 + 120);
  v71[0] = v12;
  *(v71 + 9) = *(a2 + 145);
  v13 = *(a2 + 40);
  v14 = *(a2 + 72);
  v70[2] = *(a2 + 56);
  v70[3] = v14;
  v15 = *(a2 + 88);
  v70[5] = v11;
  v70[4] = v15;
  v16 = *(a2 + 24);
  v70[1] = v13;
  v70[0] = v16;
  v17 = *(a1 + 104);
  v18 = *(a1 + 136);
  __src[6] = *(a1 + 120);
  __src[7] = v18;
  *(&__src[7] + 9) = *(a1 + 145);
  v19 = *(a1 + 40);
  v20 = *(a1 + 72);
  __src[2] = *(a1 + 56);
  __src[3] = v20;
  v21 = *(a1 + 88);
  __src[5] = v17;
  __src[4] = v21;
  __src[0] = *(a1 + 24);
  __src[1] = v19;
  *(&__src[16] + 9) = *(a2 + 145);
  v22 = *(a2 + 104);
  v23 = *(a2 + 136);
  __src[15] = *(a2 + 120);
  __src[16] = v23;
  v24 = *(a2 + 40);
  v25 = *(a2 + 72);
  __src[11] = *(a2 + 56);
  __src[12] = v25;
  v26 = *(a2 + 88);
  __src[14] = v22;
  __src[13] = v26;
  v27 = *(a2 + 24);
  __src[10] = v24;
  __src[9] = v27;
  v28 = *(a1 + 104);
  v29 = *(a1 + 136);
  v72[6] = *(a1 + 120);
  v73[0] = v29;
  *(v73 + 9) = *(a1 + 145);
  v30 = *(a1 + 40);
  v31 = *(a1 + 72);
  v72[2] = *(a1 + 56);
  v72[3] = v31;
  v72[4] = *(a1 + 88);
  v72[5] = v28;
  v72[0] = *(a1 + 24);
  v72[1] = v30;
  if (sub_1D60486AC(v72) != 1)
  {
    v65 = __src[6];
    v66[0] = __src[7];
    *(v66 + 9) = *(&__src[7] + 9);
    v61 = __src[2];
    v62 = __src[3];
    v63 = __src[4];
    v64 = __src[5];
    v59 = __src[0];
    v60 = __src[1];
    v56 = __src[6];
    v57[0] = __src[7];
    *(v57 + 9) = *(&__src[7] + 9);
    v52 = __src[2];
    v53 = __src[3];
    v54 = __src[4];
    v55 = __src[5];
    v50 = __src[0];
    v51 = __src[1];
    __dst[6] = __src[15];
    __dst[7] = __src[16];
    *(&__dst[7] + 9) = *(&__src[16] + 9);
    __dst[2] = __src[11];
    __dst[3] = __src[12];
    __dst[4] = __src[13];
    __dst[5] = __src[14];
    __dst[0] = __src[9];
    __dst[1] = __src[10];
    if (sub_1D60486AC(__dst) != 1)
    {
      v48 = __src[15];
      v49[0] = __src[16];
      *(v49 + 9) = *(&__src[16] + 9);
      v44 = __src[11];
      v45 = __src[12];
      v46 = __src[13];
      v47 = __src[14];
      v42 = __src[9];
      v43 = __src[10];
      v36 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v68, v40, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v70, v40, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v36, sub_1D5C34D84);
      sub_1D5D355B8(&v59, v40, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v36, sub_1D5C34D84);
      v33 = _s8NewsFeed17FormatMediaTimingV2eeoiySbAC_ACtFZ_0(&v50, &v42);
      v38[6] = v48;
      v39[0] = v49[0];
      *(v39 + 9) = *(v49 + 9);
      v38[2] = v44;
      v38[3] = v45;
      v38[4] = v46;
      v38[5] = v47;
      v38[0] = v42;
      v38[1] = v43;
      sub_1D62B49F0(v38);
      v40[6] = v56;
      v41[0] = v57[0];
      *(v41 + 9) = *(v57 + 9);
      v40[2] = v52;
      v40[3] = v53;
      v40[4] = v54;
      v40[5] = v55;
      v40[0] = v50;
      v40[1] = v51;
      sub_1D62B49F0(v40);
      v48 = __src[6];
      v49[0] = __src[7];
      *(v49 + 9) = *(&__src[7] + 9);
      v44 = __src[2];
      v45 = __src[3];
      v46 = __src[4];
      v47 = __src[5];
      v42 = __src[0];
      v43 = __src[1];
      sub_1D66615F8(&v42, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v36, sub_1D5C34D84);
      return v33;
    }

    v48 = __src[6];
    v49[0] = __src[7];
    *(v49 + 9) = *(&__src[7] + 9);
    v44 = __src[2];
    v45 = __src[3];
    v46 = __src[4];
    v47 = __src[5];
    v42 = __src[0];
    v43 = __src[1];
    v34 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v68, v40, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v70, v40, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v34, sub_1D5C34D84);
    sub_1D5D355B8(&v59, v40, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v34, sub_1D5C34D84);
    sub_1D62B49F0(&v42);
    goto LABEL_9;
  }

  __dst[6] = __src[15];
  __dst[7] = __src[16];
  *(&__dst[7] + 9) = *(&__src[16] + 9);
  __dst[2] = __src[11];
  __dst[3] = __src[12];
  __dst[4] = __src[13];
  __dst[5] = __src[14];
  __dst[0] = __src[9];
  __dst[1] = __src[10];
  if (sub_1D60486AC(__dst) != 1)
  {
    v35 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v68, &v59, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v70, &v59, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v35, sub_1D5C34D84);
LABEL_9:
    memcpy(__dst, __src, 0x119uLL);
    sub_1D5D35558(__dst, &qword_1EC889AE0, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, sub_1D66F49B8);
    return 0;
  }

  v65 = __src[6];
  v66[0] = __src[7];
  *(v66 + 9) = *(&__src[7] + 9);
  v61 = __src[2];
  v62 = __src[3];
  v63 = __src[4];
  v64 = __src[5];
  v59 = __src[0];
  v60 = __src[1];
  v32 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(v68, &v50, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(v70, &v50, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v32, sub_1D5C34D84);
  sub_1D66615F8(&v59, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v32, sub_1D5C34D84);
  return 1;
}

uint64_t _s8NewsFeed24FormatAnimationNodeStyleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_29;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (*(a1 + 64))
  {
    if (!*(a2 + 64))
    {
      goto LABEL_29;
    }
  }

  else
  {
    v8 = 0;
    if (*(a2 + 64))
    {
      return v8 & 1;
    }

    if (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56))
    {
      return v8 & 1;
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 72);
  swift_beginAccess();
  v11 = *(a2 + 72);
  if (v10)
  {
    if (!v11)
    {
      goto LABEL_29;
    }

    sub_1D633DB70(v12, v11);
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v11)
  {
    goto LABEL_29;
  }

  v15 = *(a2 + 80) | (*(a2 + 84) << 32);
  if (*(a1 + 84) == 255)
  {
    if (BYTE4(v15) == 255)
    {
LABEL_27:
      swift_beginAccess();
      v16 = *(a1 + 88);
      swift_beginAccess();
      v17 = *(a2 + 88);

      sub_1D6353A1C(v16, v17);
      v8 = v18;

      return v8 & 1;
    }

LABEL_29:
    v8 = 0;
    return v8 & 1;
  }

  if (BYTE4(v15) == 255)
  {
    goto LABEL_29;
  }

  if (!*(a1 + 84))
  {
    if (BYTE4(v15))
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if (*(a1 + 84) == 1)
  {
    if (BYTE4(v15) != 1)
    {
      goto LABEL_29;
    }

LABEL_36:
    if (*(a1 + 80) != *(a2 + 80))
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (*(a1 + 80))
  {
    if (*(a1 + 80) == 1)
    {
      v8 = 0;
      if (BYTE4(v15) == 2 && *(a2 + 80) == 1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v8 = 0;
      if (BYTE4(v15) == 2 && *(a2 + 80) == 2)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v8 = 0;
    if (BYTE4(v15) == 2 && !*(a2 + 80))
    {
      goto LABEL_27;
    }
  }

  return v8 & 1;
}

uint64_t _s8NewsFeed23FormatWebEmbedNodeStyleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_22;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_22;
  }

  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = *(a1 + 64);
  v12 = *(a2 + 48);
  v11 = *(a2 + 56);
  v13 = *(a2 + 64);
  if (v10 <= 0xFD)
  {
    v27 = *(a1 + 48);
    v28 = v8;
    v29 = v10;
    if (v13 > 0xFD)
    {
      goto LABEL_20;
    }

    v24 = v12;
    v25 = v11;
    v26 = v13;
    sub_1D5ED34B0(v9, v8, v10);
    sub_1D5ED34B0(v12, v11, v13);
    sub_1D5ED34B0(v9, v8, v10);
    v14 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v27, &v24);
    sub_1D5ED34A0(v24, v25, v26);
    sub_1D5ED34A0(v27, v28, v29);
    sub_1D5ED348C(v9, v8, v10);
    if ((v14 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    sub_1D5ED34B0(*(a1 + 48), *(a1 + 56), *(a1 + 64));
    sub_1D5ED34B0(v12, v11, v13);
    if (v13 <= 0xFD)
    {
      goto LABEL_21;
    }

    sub_1D5ED348C(v9, v8, v10);
  }

  v9 = *(a1 + 72);
  v8 = *(a1 + 80);
  v10 = *(a1 + 88);
  v12 = *(a2 + 72);
  v11 = *(a2 + 80);
  v13 = *(a2 + 88);
  if (v10 > 0xFD)
  {
    sub_1D5ED34B0(*(a1 + 72), *(a1 + 80), *(a1 + 88));
    sub_1D5ED34B0(v12, v11, v13);
    if (v13 > 0xFD)
    {
      sub_1D5ED348C(v9, v8, v10);
      goto LABEL_25;
    }

LABEL_21:
    sub_1D5ED348C(v9, v8, v10);
    sub_1D5ED348C(v12, v11, v13);
    goto LABEL_22;
  }

  v27 = *(a1 + 72);
  v28 = v8;
  v29 = v10;
  if (v13 > 0xFD)
  {
LABEL_20:
    sub_1D5ED34B0(v9, v8, v10);
    sub_1D5ED34B0(v12, v11, v13);
    sub_1D5ED34B0(v9, v8, v10);
    sub_1D5ED34A0(v9, v8, v10);
    goto LABEL_21;
  }

  v24 = v12;
  v25 = v11;
  v26 = v13;
  sub_1D5ED34B0(v9, v8, v10);
  sub_1D5ED34B0(v12, v11, v13);
  sub_1D5ED34B0(v9, v8, v10);
  v17 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v27, &v24);
  sub_1D5ED34A0(v24, v25, v26);
  sub_1D5ED34A0(v27, v28, v29);
  sub_1D5ED348C(v9, v8, v10);
  if ((v17 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  v18 = *(a1 + 89);
  v19 = *(a2 + 89);
  if (v18 != 2)
  {
    v15 = 0;
    if (v19 == 2 || ((v19 ^ v18) & 1) != 0)
    {
      return v15 & 1;
    }

    goto LABEL_30;
  }

  if (v19 != 2)
  {
LABEL_22:
    v15 = 0;
    return v15 & 1;
  }

LABEL_30:
  v20 = *(a1 + 90);
  v21 = *(a2 + 90);
  if (v20 == 2)
  {
    if (v21 == 2)
    {
LABEL_35:
      swift_beginAccess();
      v22 = *(a1 + 96);
      swift_beginAccess();
      v23 = *(a2 + 96);

      v15 = sub_1D6352518(v22, v23);

      return v15 & 1;
    }

    goto LABEL_22;
  }

  v15 = 0;
  if (v21 != 2 && ((v21 ^ v20) & 1) == 0)
  {
    goto LABEL_35;
  }

  return v15 & 1;
}

BOOL _s8NewsFeed28FormatSupplementaryNodeStyleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 48);
  v9 = *(a2 + 48);
  if (v8 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v9 == 2 || ((v9 ^ v8) & 1) != 0)
    {
      return result;
    }
  }

  swift_beginAccess();
  v11 = *(a1 + 56);
  swift_beginAccess();
  v12 = *(a2 + 56);

  v13 = sub_1D6351B68(v11, v12);

  if (!v13)
  {
    return 0;
  }

  v14 = *(a1 + 64);
  v15 = *(a1 + 72) | (*(a1 + 74) << 16);
  v16 = *(a2 + 64);
  v17 = *(a2 + 72) | (*(a2 + 74) << 16);
  if (*(a1 + 74) == 255)
  {
    sub_1D62B7DCC(*(a1 + 64), *(a1 + 72) | (*(a1 + 74) << 16));
    sub_1D62B7DCC(v16, v17);
    if (BYTE2(v17) == 255)
    {
      sub_1D62B6F70(v14, v15);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v24 = *(a1 + 64);
  v25 = v15;
  v26 = BYTE2(v15);
  if (BYTE2(v17) == 255)
  {
    sub_1D62B7DCC(v14, v15);
    sub_1D62B7DCC(v16, v17);
    sub_1D62B7DCC(v14, v15);
    sub_1D610CA74(v14, v15, SBYTE2(v15), sub_1D60CF6A8, sub_1D60CF6DC);
LABEL_22:
    sub_1D62B6F70(v14, v15);
    sub_1D62B6F70(v16, v17);
    return 0;
  }

  v21 = v16;
  v22 = v17;
  v23 = BYTE2(v17);
  sub_1D62B7DCC(v14, v15);
  sub_1D62B7DCC(v16, v17);
  sub_1D62B7DCC(v14, v15);
  v18 = _s8NewsFeed31FormatSupplementaryNodePinTraitO2eeoiySbAC_ACtFZ_0(&v24, &v21);
  sub_1D610CA74(v21, v22, v23, sub_1D60CF6A8, sub_1D60CF6DC);
  sub_1D610CA74(v24, v25, v26, sub_1D60CF6A8, sub_1D60CF6DC);
  sub_1D62B6F70(v14, v15);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v19 = *(a1 + 75);
  v20 = *(a2 + 75);
  result = v20 == 3 && v19 == 3;
  if (v19 != 3 && v20 != 3)
  {
    if (v19 == 2)
    {
      if (v20 == 2)
      {
        return 1;
      }
    }

    else if (v20 != 2)
    {
      return ((v20 ^ v19) & 1) == 0;
    }

    return 0;
  }

  return result;
}

uint64_t _s8NewsFeed19FormatMicaNodeStyleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_23;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_23;
  }

  swift_beginAccess();
  v8 = *(a1 + 48);
  swift_beginAccess();
  v9 = *(a2 + 48);

  v10 = sub_1D6353D90(v8, v9);

  if ((v10 & 1) == 0)
  {
    goto LABEL_23;
  }

  v11 = *(a1 + 56);
  v12 = *(a2 + 56);
  if (v11)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    sub_1D633A310(v11, v12);
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v12)
    {
      goto LABEL_23;
    }
  }

  v15 = *(a1 + 64);
  v16 = *(a2 + 64);
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_23;
    }

    sub_1D633C9E8(v15, v16);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (v16)
  {
    goto LABEL_23;
  }

  v22 = *(a1 + 72);
  v21 = *(a1 + 80);
  v23 = *(a1 + 88);
  v25 = *(a2 + 72);
  v24 = *(a2 + 80);
  v26 = *(a2 + 88);
  if (v23 <= 0xFD)
  {
    *&v67 = *(a1 + 72);
    *(&v67 + 1) = v21;
    LOBYTE(v68) = v23;
    if (v26 <= 0xFD)
    {
      *v79 = v25;
      *&v79[8] = v24;
      v79[16] = v26;
      sub_1D5ED34B0(v22, v21, v23);
      sub_1D5ED34B0(v25, v24, v26);
      sub_1D5ED34B0(v22, v21, v23);
      v27 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v67, v79);
      sub_1D5ED34A0(*v79, *&v79[8], v79[16]);
      sub_1D5ED34A0(v67, *(&v67 + 1), v68);
      sub_1D5ED348C(v22, v21, v23);
      if ((v27 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_32;
    }

    sub_1D5ED34B0(v22, v21, v23);
    sub_1D5ED34B0(v25, v24, v26);
    sub_1D5ED34B0(v22, v21, v23);
    sub_1D5ED34A0(v22, v21, v23);
LABEL_30:
    sub_1D5ED348C(v22, v21, v23);
    sub_1D5ED348C(v25, v24, v26);
    v19 = 0;
    return v19 & 1;
  }

  sub_1D5ED34B0(*(a1 + 72), *(a1 + 80), *(a1 + 88));
  sub_1D5ED34B0(v25, v24, v26);
  if (v26 <= 0xFD)
  {
    goto LABEL_30;
  }

  sub_1D5ED348C(v22, v21, v23);
LABEL_32:
  v28 = *(a1 + 112);
  v29 = *(a1 + 144);
  v86 = *(a1 + 128);
  v87 = v29;
  v30 = *(a1 + 144);
  v88 = *(a1 + 160);
  v31 = *(a1 + 112);
  v85[0] = *(a1 + 96);
  v85[1] = v31;
  v32 = *(a2 + 112);
  v33 = *(a2 + 144);
  v91 = *(a2 + 128);
  v92 = v33;
  v34 = *(a2 + 144);
  v93 = *(a2 + 160);
  v35 = *(a2 + 112);
  v90[0] = *(a2 + 96);
  v90[1] = v35;
  v82 = v86;
  v83 = v30;
  v84 = *(a1 + 160);
  v80 = v85[0];
  v81 = v28;
  *&v79[23] = v32;
  *&v79[39] = v91;
  *&v79[55] = v34;
  *&v79[71] = *(a2 + 160);
  v89 = *(a1 + 176);
  v94 = *(a2 + 176);
  v36 = v89;
  *&v79[7] = v90[0];
  v37 = v94;
  if (v89 == 254)
  {
    if (v94 == 254)
    {
      v38 = *(a1 + 144);
      v69 = *(a1 + 128);
      v70 = v38;
      v71 = *(a1 + 160);
      v39 = *(a1 + 112);
      v67 = *(a1 + 96);
      v68 = v39;
      v72 = -2;
      v40 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v85, &v61, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v90, &v61, &qword_1EDF33718, &type metadata for FormatShadow, v40, sub_1D5C34D84);
      sub_1D66615F8(&v67, &qword_1EDF33718, &type metadata for FormatShadow, v40, sub_1D5C34D84);
      goto LABEL_40;
    }

    v44 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v85, &v67, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v90, &v67, &qword_1EDF33718, &type metadata for FormatShadow, v44, sub_1D5C34D84);
LABEL_38:
    v69 = v82;
    v70 = v83;
    v71 = v84;
    v67 = v80;
    v68 = v81;
    v75 = *&v79[32];
    v76 = *&v79[48];
    *v77 = *&v79[64];
    v73 = *v79;
    v72 = v36;
    *&v77[15] = *&v79[79];
    v74 = *&v79[16];
    v78 = v37;
    sub_1D5D35558(&v67, &qword_1EC8822D8, &qword_1EDF33718, &type metadata for FormatShadow, sub_1D66F49B8);
    v19 = 0;
    return v19 & 1;
  }

  v41 = *(a1 + 144);
  v69 = *(a1 + 128);
  v70 = v41;
  v71 = *(a1 + 160);
  v42 = *(a1 + 112);
  v67 = *(a1 + 96);
  v68 = v42;
  v72 = v89;
  v66 = v89;
  v63 = v69;
  v64 = v41;
  v65 = v71;
  v61 = v67;
  v62 = v42;
  if (v94 == 254)
  {
    v57 = v69;
    v58 = v70;
    v59 = v71;
    v60 = v72;
    v55 = v67;
    v56 = v68;
    v43 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v85, v53, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v90, v53, &qword_1EDF33718, &type metadata for FormatShadow, v43, sub_1D5C34D84);
    sub_1D5D355B8(&v67, v53, &qword_1EDF33718, &type metadata for FormatShadow, v43, sub_1D5C34D84);
    sub_1D601144C(&v55);
    goto LABEL_38;
  }

  v45 = *(a2 + 144);
  v57 = *(a2 + 128);
  v58 = v45;
  v59 = *(a2 + 160);
  v46 = *(a2 + 112);
  v55 = *(a2 + 96);
  v56 = v46;
  v60 = v94;
  v47 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(v85, v53, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(v90, v53, &qword_1EDF33718, &type metadata for FormatShadow, v47, sub_1D5C34D84);
  sub_1D5D355B8(&v67, v53, &qword_1EDF33718, &type metadata for FormatShadow, v47, sub_1D5C34D84);
  v48 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v61, &v55);
  v51[2] = v57;
  v51[3] = v58;
  v51[4] = v59;
  v52 = v60;
  v51[0] = v55;
  v51[1] = v56;
  sub_1D601144C(v51);
  v53[2] = v63;
  v53[3] = v64;
  v53[4] = v65;
  v54 = v66;
  v53[0] = v61;
  v53[1] = v62;
  sub_1D601144C(v53);
  v57 = v82;
  v58 = v83;
  v59 = v84;
  v55 = v80;
  v56 = v81;
  v60 = v36;
  sub_1D66615F8(&v55, &qword_1EDF33718, &type metadata for FormatShadow, v47, sub_1D5C34D84);
  if (v48)
  {
LABEL_40:
    v49 = *(a1 + 177);
    v50 = *(a2 + 177);
    if (v49 == 2)
    {
      if (v50 == 2)
      {
        v19 = 1;
        return v19 & 1;
      }
    }

    else if (v50 != 2)
    {
      v19 = v50 ^ v49 ^ 1;
      return v19 & 1;
    }
  }

LABEL_23:
  v19 = 0;
  return v19 & 1;
}