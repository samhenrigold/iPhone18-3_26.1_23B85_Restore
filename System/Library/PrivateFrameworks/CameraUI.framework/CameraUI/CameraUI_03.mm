uint64_t sub_1A38B779C@<X0>(void *a1@<X8>)
{
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ChromeTopBar.ExpandableGroup(0);
  sub_1A388F6D8(v1 + *(v10 + 60), v9, &qword_1EB0FCE78, &unk_1A3A6F1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A3A30090();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A3A31C30();
    v13 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

unint64_t sub_1A38B79A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 32;
LABEL_7:
  v4 = *(v3 + 8 * v2);
  if (v4 < 0x23 || *(v4 + 16) != 2)
  {
    goto LABEL_6;
  }

  if (v4 == &unk_1F1653D10)
  {
    return 1;
  }

  result = sub_1A38A8F64(*(v3 + 8 * v2));
  v6 = 0;
  v7 = 0;
LABEL_13:
  v8 = v6;
  if (v7 >= *(v4 + 16))
  {
    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
    return result;
  }

  v9 = 8 * v7;
  v10 = *(v4 + 32 + v9);
  v11 = *(&unk_1F1653D10 + v9 + 32);
  switch(v10)
  {
    case 0:
      if (v11)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 1:
      if (v11 != 1)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 2:
      if (v11 != 2)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 3:
      if (v11 != 3)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 4:
      if (v11 != 4)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 5:
      if (v11 != 5)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 6:
      if (v11 != 6)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 7:
      if (v11 != 7)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 8:
      if (v11 != 8)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 9:
      if (v11 != 9)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 10:
      if (v11 != 10)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 11:
      if (v11 != 11)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 12:
      if (v11 != 12)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 13:
      if (v11 != 13)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 14:
      if (v11 != 14)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 15:
      if (v11 != 15)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 16:
      if (v11 != 16)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 17:
      if (v11 != 17)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 18:
      if (v11 != 18)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 19:
      if (v11 != 19)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 20:
      if (v11 != 20)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 21:
      if (v11 != 21)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 22:
      if (v11 != 22)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 23:
      if (v11 != 23)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 24:
      if (v11 != 24)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 25:
      if (v11 != 25)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 26:
      if (v11 != 26)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 27:
      if (v11 == 27)
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    case 28:
      if (v11 != 28)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 29:
      if (v11 != 29)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 30:
      if (v11 != 30)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 31:
      if (v11 != 31)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 32:
      if (v11 != 32)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 33:
      if (v11 != 33)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 34:
      if (v11 != 34)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    default:
      if (v11 < 0x23)
      {
        goto LABEL_5;
      }

      v12 = *(v10 + 16);
      if (v12 != *(v11 + 16))
      {
        goto LABEL_5;
      }

      if (v12)
      {
        v13 = v10 == v11;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        goto LABEL_12;
      }

      v32 = v3;
      v34 = v10 + 32;
      v14 = *(v4 + 32 + v9);
      sub_1A38A8F64(v11);
      v35 = v14;
      result = sub_1A38A8F64(v14);
      v15 = 0;
      break;
  }

LABEL_92:
  if (v15 >= *(v35 + 16))
  {
    goto LABEL_252;
  }

  if (v15 >= *(v11 + 16))
  {
    goto LABEL_253;
  }

  v16 = *(v34 + 8 * v15);
  v17 = *(v11 + 32 + 8 * v15);
  switch(v16)
  {
    case 0:
      if (v17)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 1:
      if (v17 != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 2:
      if (v17 != 2)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 3:
      if (v17 != 3)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 4:
      if (v17 != 4)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 5:
      if (v17 != 5)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 6:
      if (v17 != 6)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 7:
      if (v17 != 7)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 8:
      if (v17 != 8)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 9:
      if (v17 != 9)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 10:
      if (v17 != 10)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 11:
      if (v17 != 11)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 12:
      if (v17 != 12)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 13:
      if (v17 != 13)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 14:
      if (v17 != 14)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 15:
      if (v17 != 15)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 16:
      if (v17 != 16)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 17:
      if (v17 != 17)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 18:
      if (v17 != 18)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 19:
      if (v17 != 19)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 20:
      if (v17 != 20)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 21:
      if (v17 != 21)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 22:
      if (v17 != 22)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 23:
      if (v17 != 23)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 24:
      if (v17 != 24)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 25:
      if (v17 != 25)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 26:
      if (v17 != 26)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 27:
      if (v17 == 27)
      {
        goto LABEL_91;
      }

      goto LABEL_4;
    case 28:
      if (v17 != 28)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 29:
      if (v17 != 29)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 30:
      if (v17 != 30)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 31:
      if (v17 != 31)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 32:
      if (v17 != 32)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 33:
      if (v17 != 33)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    case 34:
      if (v17 != 34)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    default:
      if (v17 < 0x23)
      {
        goto LABEL_4;
      }

      v18 = *(v16 + 16);
      if (v18 != *(v17 + 16))
      {
        goto LABEL_4;
      }

      if (v18)
      {
        v19 = v16 == v17;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        goto LABEL_91;
      }

      v30 = v16 + 32;
      v31 = *(v16 + 16);
      v29 = v1;
      v20 = *(v34 + 8 * v15);
      sub_1A38A8F64(v17);
      v33 = v20;
      result = sub_1A38A8F64(v20);
      v22 = v17 + 32;
      v21 = v30;
      v23 = v31;
      v24 = 0;
      break;
  }

  while (2)
  {
    if (v24 >= *(v33 + 16))
    {
      goto LABEL_254;
    }

    if (v24 >= *(v17 + 16))
    {
      goto LABEL_255;
    }

    v25 = *(v22 + 8 * v24);
    switch(*(v21 + 8 * v24))
    {
      case 0:
        if (!v25)
        {
          goto LABEL_171;
        }

        goto LABEL_3;
      case 1:
        if (v25 != 1)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 2:
        if (v25 != 2)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 3:
        if (v25 != 3)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 4:
        if (v25 != 4)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 5:
        if (v25 != 5)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 6:
        if (v25 != 6)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 7:
        if (v25 != 7)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 8:
        if (v25 != 8)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 9:
        if (v25 != 9)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0xALL:
        if (v25 != 10)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0xBLL:
        if (v25 != 11)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0xCLL:
        if (v25 != 12)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0xDLL:
        if (v25 != 13)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0xELL:
        if (v25 != 14)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0xFLL:
        if (v25 != 15)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0x10:
        if (v25 != 16)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0x11:
        if (v25 != 17)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0x12:
        if (v25 != 18)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0x13:
        if (v25 != 19)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0x14:
        if (v25 != 20)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0x15:
        if (v25 != 21)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0x16:
        if (v25 != 22)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0x17:
        if (v25 != 23)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0x18:
        if (v25 != 24)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0x19:
        if (v25 != 25)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0x1ALL:
        if (v25 != 26)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0x1BLL:
        if (v25 == 27)
        {
          goto LABEL_171;
        }

        goto LABEL_3;
      case 0x1CLL:
        if (v25 != 28)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0x1DLL:
        if (v25 != 29)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0x1ELL:
        if (v25 != 30)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0x1FLL:
        if (v25 != 31)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0x20:
        if (v25 != 32)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0x21:
        if (v25 != 33)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      case 0x22:
        if (v25 != 34)
        {
          goto LABEL_3;
        }

        goto LABEL_171;
      default:
        if (v25 >= 0x23)
        {
          v27 = *(v22 + 8 * v24);
          v28 = *(v21 + 8 * v24);
          sub_1A38A8F64(v27);
          sub_1A38A8F64(v28);
          v26 = sub_1A39FCD24(v28, v27);
          sub_1A3890F2C(v27);
          result = sub_1A3890F2C(v28);
          v22 = v17 + 32;
          v21 = v30;
          v23 = v31;
          if (v26)
          {
LABEL_171:
            if (v23 != ++v24)
            {
              continue;
            }

            sub_1A3890F2C(v17);
            result = sub_1A3890F2C(v33);
            v1 = v29;
LABEL_91:
            if (++v15 != v12)
            {
              goto LABEL_92;
            }

            sub_1A3890F2C(v11);
            result = sub_1A3890F2C(v35);
            v3 = v32;
LABEL_12:
            v6 = 1;
            v7 = 1;
            if (v8)
            {
              sub_1A3890F2C(v4);
              return 1;
            }

            goto LABEL_13;
          }
        }

LABEL_3:
        sub_1A3890F2C(v17);
        sub_1A3890F2C(v33);
        v1 = v29;
LABEL_4:
        sub_1A3890F2C(v11);
        sub_1A3890F2C(v35);
        v3 = v32;
LABEL_5:
        sub_1A3890F2C(v4);
LABEL_6:
        if (++v2 != v1)
        {
          goto LABEL_7;
        }

        return 0;
    }
  }
}

uint64_t sub_1A38B8228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v33 = a5;
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v6 = sub_1A3A2FEE0();
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + *(type metadata accessor for ChromeTopBar.ExpandableGroup(0) + 56);
  v10 = *v9;
  v11 = *(v9 + 8);
  sub_1A3A2EA60();
  v12 = v10;
  if ((v11 & 1) == 0)
  {
    sub_1A3A31C30();
    v13 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v34 + 8))(v8, v6);
    v12 = v35;
  }

  swift_getKeyPath(byte_1A3A6DDE8);
  v35 = v12;
  sub_1A38BC290(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(v12 + 48) != 1)
  {

    goto LABEL_12;
  }

  swift_getKeyPath(byte_1A3A6E288);
  v35 = v12;
  sub_1A3A2F080();

  v14 = *(v12 + 1168);

  if (v14)
  {
LABEL_12:
    sub_1A3A2EA60();
    v16 = v6;
    if ((v11 & 1) == 0)
    {
      sub_1A3A31C30();
      v21 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v34 + 8))(v8, v6);
    }

    sub_1A38EDFE0(0x23uLL, 0, 0, 1);
    goto LABEL_15;
  }

  sub_1A3A2EA60();
  v15 = v10;
  v16 = v6;
  if ((v11 & 1) == 0)
  {
    sub_1A3A31C30();
    v17 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v34 + 8))(v8, v6);
    v15 = v35;
  }

  swift_getKeyPath(byte_1A3A6DDE8);
  v35 = v15;
  sub_1A3A2F080();

  if (*(v15 + 48) != 255)
  {
    swift_getKeyPath(byte_1A3A6DDE8);
    v35 = v15;
    sub_1A3A2F080();

    v18 = v15[3];
    v19 = v15[4];
    v20 = *(v15 + 48);
    v29 = v15[5];
    sub_1A38BCF64(v18, v19, v29, v20);
    sub_1A38EEF8C(0, 0, 0, 255);
    if (v20 == 1)
    {
      v22 = v33;
      if (v18 == 35)
      {
        v27 = 35;
      }

      else
      {
        sub_1A38F6EF8(v18, 0x23uLL);
        v27 = v18;
      }

      sub_1A38BC250(v27, v19, v29, 1);

      goto LABEL_16;
    }

    if (v20 != 255)
    {
      sub_1A38BC250(v18, v19, v29, v20);
    }
  }

LABEL_15:

  v22 = v33;
LABEL_16:
  sub_1A3A2EA60();
  if ((v11 & 1) == 0)
  {
    sub_1A3A31C30();
    v23 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v34 + 8))(v8, v16);
    v10 = v35;
  }

  v24 = v10[153];
  v25 = v10[154];
  __swift_project_boxed_opaque_existential_1(v10 + 150, v24);
  (*(v25 + 8))(v30, v31, v32, v22, v10, v24, v25);
}

uint64_t sub_1A38B87D8(uint64_t a1)
{
  v2 = sub_1A3A30090();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1A3A2FD30();
}

uint64_t sub_1A38B88A4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ChromeTopBar.CollapsedGroup(0);
  v96 = *(v3 - 8);
  v4 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A3A30090();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v85 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v97 = &v85 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v99 = (&v85 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v85 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v85 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD170, &qword_1A3A6E310);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v85 - v23;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD178, &qword_1A3A6E318);
  MEMORY[0x1EEE9AC00](v98);
  v101 = &v85 - v25;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD180, &qword_1A3A6E320);
  MEMORY[0x1EEE9AC00](v100);
  v103 = &v85 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD188, &qword_1A3A6E328);
  MEMORY[0x1EEE9AC00](v27);
  v33 = MEMORY[0x1EEE9AC00](v28);
  v110 = *v1;
  if (*(v110 + 16))
  {
    v89 = &v85 - v31;
    v90 = v32;
    v91 = v30;
    v92 = v29;
    v95 = a1;
    sub_1A38BB600(type metadata accessor for ChromeTopBar.CollapsedGroup, v21);
    v34 = v7[2];
    v88 = v7 + 2;
    v87 = v34;
    v34(v18, v21, v6);
    v108 = v7[11];
    v109 = v7 + 11;
    v35 = v108(v18, v6);
    v36 = *MEMORY[0x1E697F690];
    v37 = *MEMORY[0x1E697F698];
    v38 = *MEMORY[0x1E697F680];
    v39 = 0x4008000000000000;
    v107 = *MEMORY[0x1E697F658];
    v105 = v36;
    v93 = v11;
    if (v35 != v107 && v35 != v36 && v35 != v37 && v35 != v38)
    {
      if (v35 == *MEMORY[0x1E697F650])
      {
        v39 = 0x400D5C28F5C28F5CLL;
      }

      else if (v35 == *MEMORY[0x1E697F660])
      {
        v39 = 0x401151EB851EB852;
      }

      else
      {
        v39 = 0x4014000000000000;
        if (v35 != *MEMORY[0x1E697F630] && v35 != *MEMORY[0x1E697F670] && v35 != *MEMORY[0x1E697F668] && v35 != *MEMORY[0x1E697F678] && v35 != *MEMORY[0x1E697F640] && v35 != *MEMORY[0x1E697F648])
        {
          v57 = 312;
          goto LABEL_49;
        }
      }
    }

    v104 = v37;
    HIDWORD(v86) = v38;
    v42 = v7[1];
    v94 = v7 + 1;
    v106 = v42;
    v42(v21, v6);
    *v24 = sub_1A3A2FF40();
    *(v24 + 1) = v39;
    v24[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD190, &unk_1A3A6E330);
    *&v111[0] = v110;
    KeyPath = swift_getKeyPath("0ZiG");
    sub_1A38BD254(v1, &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeTopBar.CollapsedGroup);
    v44 = (*(v96 + 80) + 16) & ~*(v96 + 80);
    v45 = swift_allocObject();
    sub_1A38BD2BC(v5, v45 + v44, type metadata accessor for ChromeTopBar.CollapsedGroup);
    sub_1A3A2EA50();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC8E8, &qword_1A3A6D270);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD198, &qword_1A3A6E358);
    v48 = sub_1A38A08F8(&qword_1ED9966C0, &qword_1EB0FC8E8, &qword_1A3A6D270, MEMORY[0x1E69E6338]);
    v49 = sub_1A3890E54();
    v50 = sub_1A38BF420();
    sub_1A3A31200(v111, KeyPath, sub_1A38BF3A0, v45, v46, v47, v48, v49, v50);
    v51 = v99;
    sub_1A38BB600(type metadata accessor for ChromeTopBar.CollapsedGroup, v99);
    v52 = v97;
    v53 = v87;
    v87(v97, v51, v6);
    v54 = v108(v52, v6);
    if (v54 == v107)
    {
      v55 = v93;
    }

    else
    {
      v55 = v93;
      if (v54 != v105)
      {
        v56 = HIDWORD(v86);
        if (v54 != v104 && v54 != HIDWORD(v86) && v54 != *MEMORY[0x1E697F650] && v54 != *MEMORY[0x1E697F660] && v54 != *MEMORY[0x1E697F630] && v54 != *MEMORY[0x1E697F670] && v54 != *MEMORY[0x1E697F668] && v54 != *MEMORY[0x1E697F678] && v54 != *MEMORY[0x1E697F640] && v54 != *MEMORY[0x1E697F648])
        {
          v57 = 266;
LABEL_49:
          result = sub_1A3A32070("Fatal error", 11, 2, 0xD00000000000001DLL, 0x80000001A3AA1DE0, "CameraUI/ChromeViewSpec.swift", 29, 2, v57, 0);
LABEL_51:
          __break(1u);
          return result;
        }

LABEL_35:
        v106(v51, v6);
        v58 = sub_1A3A31480();
        sub_1A3A2FBF0(v111, 0, 1, 0, 1, v58, v59);
        v60 = v101;
        sub_1A388F670(v24, v101, &qword_1EB0FD170, &qword_1A3A6E310);
        v61 = (v60 + *(v98 + 36));
        v62 = v111[5];
        v61[4] = v111[4];
        v61[5] = v62;
        v61[6] = v111[6];
        v63 = v111[1];
        *v61 = v111[0];
        v61[1] = v63;
        v64 = v111[3];
        v61[2] = v111[2];
        v61[3] = v64;
        v65 = v60;
        v66 = v103;
        sub_1A388F670(v65, v103, &qword_1EB0FD178, &qword_1A3A6E318);
        *(v66 + *(v100 + 36)) = 1;
        v67 = sub_1A3A30600();
        sub_1A38BB600(type metadata accessor for ChromeTopBar.CollapsedGroup, v55);
        v68 = v102;
        v53(v102, v55, v6);
        v69 = v108(v68, v6);
        if (v69 == v107 || v69 == v105 || v69 == v104 || v69 == v56 || v69 == *MEMORY[0x1E697F650] || v69 == *MEMORY[0x1E697F660] || v69 == *MEMORY[0x1E697F630] || v69 == *MEMORY[0x1E697F670] || v69 == *MEMORY[0x1E697F668] || v69 == *MEMORY[0x1E697F678] || v69 == *MEMORY[0x1E697F640] || v69 == *MEMORY[0x1E697F648])
        {
          v106(v55, v6);
          sub_1A3A2F520();
          v71 = v70;
          v73 = v72;
          v75 = v74;
          v77 = v76;
          v78 = v90;
          sub_1A388F670(v66, v90, &qword_1EB0FD180, &qword_1A3A6E320);
          v79 = v92;
          v80 = v78 + *(v92 + 36);
          *v80 = v67;
          *(v80 + 8) = v71;
          *(v80 + 16) = v73;
          *(v80 + 24) = v75;
          *(v80 + 32) = v77;
          *(v80 + 40) = 0;
          v81 = v78;
          v82 = v89;
          sub_1A388F670(v81, v89, &qword_1EB0FD188, &qword_1A3A6E328);
          v83 = v82;
          v84 = v95;
          sub_1A388F670(v83, v95, &qword_1EB0FD188, &qword_1A3A6E328);
          return (*(v91 + 56))(v84, 0, 1, v79);
        }

        result = sub_1A3A32070("Fatal error", 11, 2, 0xD00000000000001DLL, 0x80000001A3AA1DE0, "CameraUI/ChromeTopBar.swift", 27, 2, 490, 0);
        goto LABEL_51;
      }
    }

    v56 = HIDWORD(v86);
    goto LABEL_35;
  }

  v40 = *(v30 + 56);

  return v40(a1, 1, 1, v33);
}

uint64_t sub_1A38B95AC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v57 = type metadata accessor for ChromeTopBar.ControlView(0);
  MEMORY[0x1EEE9AC00](v57);
  v6 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD1B8, &qword_1A3A6E368);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v54 = &v49[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD1B0, &qword_1A3A6E360);
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v49[-v12];
  v13 = sub_1A3A2FEE0();
  v56 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for ChromeElementIcon(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49[-v19];
  v21 = *a1;
  v22 = *(a2 + 48);
  v23 = *(a2 + 56);
  sub_1A3A2EA60();
  v24 = v22;
  v50 = v23;
  if ((v23 & 1) == 0)
  {
    sub_1A3A31C30();
    v25 = sub_1A3A305C0();
    sub_1A3A2F270();

    v26 = v55;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v56 + 8))(v26, v13);
    v24 = v61;
  }

  v51 = v13;
  type metadata accessor for ChromeElementModel();
  v27 = 1;
  sub_1A39AE314(v21, 0, 1, v24, v20);

  swift_storeEnumTagMultiPayload();
  v28 = sub_1A397F430(v20, v17);
  sub_1A38BDFA4(v17, type metadata accessor for ChromeElementIcon);
  sub_1A38BDFA4(v20, type metadata accessor for ChromeElementIcon);
  if ((v28 & 1) == 0)
  {
    v29 = *(a2 + 8);
    v30 = *(a2 + 16);
    sub_1A38A8F64(v21);
    sub_1A3A2EA60();
    if (sub_1A38B9CFC(v21))
    {
      v31 = *(a2 + 24);
      v32 = *(a2 + 32);
      sub_1A365F488(v31, v32);
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    v33 = v51;
    v34 = *(a2 + 40);
    KeyPath = swift_getKeyPath(byte_1A3A6DE58);
    *&v6[*(v57 + 36)] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
    swift_storeEnumTagMultiPayload();
    *v6 = v21;
    *(v6 + 1) = v29;
    *(v6 + 2) = v30;
    *(v6 + 3) = v31;
    *(v6 + 4) = v32;
    v6[40] = v34;
    type metadata accessor for ChromeViewModel(0);
    sub_1A38BC290(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    *(v6 + 6) = sub_1A3A2F650();
    v6[56] = v36 & 1;
    if (v21 == 15)
    {
      v37 = v54;
    }

    else
    {
      v37 = v54;
      if (v21 != 16)
      {
        v61 = sub_1A39FDA64(v21);
        v62 = v38;
        sub_1A3A2EA50();
        MEMORY[0x1A58F7770](0x6E6F74747542, 0xE600000000000000);
      }
    }

    sub_1A38BC290(&qword_1ED996AC0, type metadata accessor for ChromeTopBar.ControlView, &unk_1A3A6E400);
    sub_1A3A30B70();

    sub_1A38BDFA4(v6, type metadata accessor for ChromeTopBar.ControlView);
    if (v21 == 4)
    {
      sub_1A3A2EA60();
      if ((v50 & 1) == 0)
      {
        sub_1A3A31C30();
        v39 = sub_1A3A305C0();
        sub_1A3A2F270();

        v40 = v55;
        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v56 + 8))(v40, v33);
        v22 = v61;
      }

      swift_getKeyPath(byte_1A3A6E3A0);
      v61 = v22;
      sub_1A3A2F080();

      v41 = *(v22 + 608);
    }

    else
    {
      v41 = 0;
    }

    v42 = swift_getKeyPath("\bZiG");
    v43 = swift_allocObject();
    *(v43 + 16) = v41;
    v44 = v53;
    sub_1A388F670(v37, v53, &qword_1EB0FD1B8, &qword_1A3A6E368);
    v45 = &v44[*(v59 + 36)];
    *v45 = v42;
    v45[1] = sub_1A38BF6A0;
    v45[2] = v43;
    v46 = v44;
    v47 = v52;
    sub_1A388F670(v46, v52, &qword_1EB0FD1B0, &qword_1A3A6E360);
    sub_1A388F670(v47, v60, &qword_1EB0FD1B0, &qword_1A3A6E360);
    v27 = 0;
  }

  return (*(v58 + 56))(v60, v27, 1, v59);
}

uint64_t sub_1A38B9CFC(unint64_t a1)
{
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 24))
  {
    v10 = *(v1 + 48);
    v11 = *(v1 + 56);
    sub_1A3A2EA60();
    if ((v11 & 1) == 0)
    {
      sub_1A3A31C30();
      v12 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v4 + 8))(v6, v3);
      v10 = v20;
    }

    swift_getKeyPath(byte_1A3A6E070);
    v20 = v10;
    sub_1A38BC290(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    if (!*(v10 + 1192))
    {
      __break(1u);
      return result;
    }

    sub_1A3A2EA60();
    v14 = sub_1A38BC058(a1);

    (*(v14 + 56))(v15);

    v16 = &v9[*(v7 + 48)];
    v17 = *v16;
    v18 = v16[1];
    sub_1A365F488(*v16, v18);
    sub_1A38BDFA4(v9, type metadata accessor for ChromeElementState);
    if (v17)
    {
      sub_1A3671090(v17, v18);
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1A38B9FA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v71 = type metadata accessor for ChromeElementIcon(0);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1A3A2FB90();
  v67 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v66 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChromeTopBar.ControlView(0);
  v56 = *(v5 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD218, &qword_1A3A6E450);
  v8 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v58 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD220, &qword_1A3A6E458);
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v54 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD228, &qword_1A3A6E460);
  MEMORY[0x1EEE9AC00](v69);
  v59 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v54 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v68 = &v54 - v16;
  v17 = sub_1A3A2FEE0();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v57);
  v22 = (&v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v2 + 48);
  v24 = *(v2 + 56);
  sub_1A3A2EA60();
  if ((v24 & 1) == 0)
  {
    sub_1A3A31C30();
    v25 = sub_1A3A305C0();
    v55 = v17;
    v26 = v8;
    v27 = v25;
    sub_1A3A2F270();

    v8 = v26;
    v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v18 + 8))(v20, v55);
    v23 = v75;
  }

  v28 = *v2;
  swift_getKeyPath(byte_1A3A6E070);
  v75 = v23;
  sub_1A38BC290(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(v23 + 1192))
  {
    sub_1A3A2EA60();
    v30 = sub_1A38BC058(v28);

    (*(v30 + 56))(v31);

    sub_1A38BD254(v2, v7, type metadata accessor for ChromeTopBar.ControlView);
    v32 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v33 = swift_allocObject();
    v34 = sub_1A38BD2BC(v7, v33 + v32, type metadata accessor for ChromeTopBar.ControlView);
    MEMORY[0x1EEE9AC00](v34);
    *(&v54 - 2) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD230, &qword_1A3A6E468);
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD238, &qword_1A3A6E470);
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD240, &qword_1A3A6E478);
    v37 = sub_1A38BFBDC();
    v38 = sub_1A38C0114();
    v75 = v35;
    v76 = v36;
    v77 = v37;
    v78 = v38;
    swift_getOpaqueTypeConformance2();
    v39 = v58;
    sub_1A3A30FE0();
    v40 = v66;
    sub_1A3A2FB80();
    v41 = sub_1A38A08F8(&qword_1EB0FD2A8, &qword_1EB0FD218, &qword_1A3A6E450, MEMORY[0x1E697D680]);
    v42 = sub_1A38BC290(&qword_1ED9966C8, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    v44 = v61;
    v43 = v62;
    v45 = v70;
    sub_1A3A30960();
    (*(v67 + 8))(v40, v45);
    (*(v8 + 8))(v39, v43);
    v46 = v22[3];
    v73 = v22[2];
    v74 = v46;
    v75 = v43;
    v76 = v45;
    v77 = v41;
    v78 = v42;
    swift_getOpaqueTypeConformance2();
    sub_1A389FD78();
    v47 = v59;
    v48 = v65;
    sub_1A3A30A90();
    (*(v64 + 8))(v44, v48);
    v49 = v63;
    sub_1A3A2FA70();
    sub_1A388F740(v47, &qword_1EB0FD228, &qword_1A3A6E460);
    v50 = v22[5];
    v75 = v22[4];
    v76 = v50;
    v51 = v68;
    sub_1A3A2FA20();
    sub_1A388F740(v49, &qword_1EB0FD228, &qword_1A3A6E460);
    v52 = *(v57 + 36);
    v53 = v72;
    swift_storeEnumTagMultiPayload();
    sub_1A397F430(v22 + v52, v53);
    sub_1A38BDFA4(v53, type metadata accessor for ChromeElementIcon);
    sub_1A3A2FA40();
    sub_1A388F740(v51, &qword_1EB0FD228, &qword_1A3A6E460);
    return sub_1A38BDFA4(v22, type metadata accessor for ChromeElementState);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A38BA8D0(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = MEMORY[0x1A58F7350](0.5, 1.0, 0.0);
  }

  else
  {
    v1 = sub_1A3A314E0();
  }

  MEMORY[0x1EEE9AC00](v1);
  sub_1A3A2F8A0();
}

uint64_t sub_1A38BA97C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = type metadata accessor for ChromeTopBar.ControlView(0);
  v46 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = v4;
  v48 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1A3A2FB10();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD240, &qword_1A3A6E478);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v46 - v6;
  v7 = sub_1A3A30090();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v46 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD2B0, &qword_1A3A6E4B8);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD258, &qword_1A3A6E480);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v46 - v20;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD238, &qword_1A3A6E470);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v46 - v22;
  sub_1A38BB200(*a1);
  v23 = sub_1A3A31480();
  sub_1A3A2FBF0(v57, 0, 1, 0, 1, v23, v24);
  (*(v15 + 32))(v21, v17, v14);
  v25 = &v21[*(v19 + 44)];
  v26 = v57[5];
  *(v25 + 4) = v57[4];
  *(v25 + 5) = v26;
  *(v25 + 6) = v57[6];
  v27 = v57[1];
  *v25 = v57[0];
  *(v25 + 1) = v27;
  v28 = v57[3];
  *(v25 + 2) = v57[2];
  *(v25 + 3) = v28;
  sub_1A38BB600(type metadata accessor for ChromeTopBar.ControlView, v13);
  (*(v8 + 16))(v10, v13, v7);
  v29 = (*(v8 + 88))(v10, v7);
  if (v29 == *MEMORY[0x1E697F658] || v29 == *MEMORY[0x1E697F690] || v29 == *MEMORY[0x1E697F698] || v29 == *MEMORY[0x1E697F680] || v29 == *MEMORY[0x1E697F650] || v29 == *MEMORY[0x1E697F660] || v29 == *MEMORY[0x1E697F630] || v29 == *MEMORY[0x1E697F670] || v29 == *MEMORY[0x1E697F668] || v29 == *MEMORY[0x1E697F678] || v29 == *MEMORY[0x1E697F640] || v29 == *MEMORY[0x1E697F648])
  {
    (*(v8 + 8))(v13, v7);
    sub_1A3A31480();
    v30 = 1;
    sub_1A3A2F780();
    v31 = v53;
    sub_1A388F670(v21, v53, &qword_1EB0FD258, &qword_1A3A6E480);
    v32 = (v31 + *(v52 + 36));
    v33 = v57[8];
    *v32 = v57[7];
    v32[1] = v33;
    v32[2] = v57[9];
    v34 = a1[3];
    if (v34)
    {
      v35 = a1[4];
      v36 = v49;
      sub_1A3A2FB00();
      v37 = v48;
      sub_1A38BD254(a1, v48, type metadata accessor for ChromeTopBar.ControlView);
      v38 = (*(v46 + 80) + 16) & ~*(v46 + 80);
      v39 = (v47 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
      v40 = swift_allocObject();
      sub_1A38BD2BC(v37, v40 + v38, type metadata accessor for ChromeTopBar.ControlView);
      v41 = (v40 + v39);
      *v41 = v34;
      v41[1] = v35;
      sub_1A38BC290(&qword_1ED996B98, MEMORY[0x1E697C220], MEMORY[0x1E697C218]);
      sub_1A3A2EA60();
      v42 = v54;
      v43 = v51;
      sub_1A3A31240();

      (*(v50 + 8))(v36, v43);
      v30 = 0;
    }

    else
    {
      v42 = v54;
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD2A0, &qword_1A3A6E4B0);
    (*(*(v44 - 8) + 56))(v42, v30, 1, v44);
    sub_1A3A2F660();
    sub_1A38BFBDC();
    sub_1A38C0114();
    sub_1A3A30C40();
    sub_1A388F740(v42, &qword_1EB0FD240, &qword_1A3A6E478);
    return sub_1A388F740(v31, &qword_1EB0FD238, &qword_1A3A6E470);
  }

  else
  {
    result = sub_1A3A32070("Fatal error", 11, 2, 0xD00000000000001DLL, 0x80000001A3AA1DE0, "CameraUI/ChromeViewSpec.swift", 29, 2, 266, 0);
    __break(1u);
  }

  return result;
}

uint64_t sub_1A38BB200(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD260, &qword_1A3A6E488);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v23 - v5);
  v7 = sub_1A3A2FEE0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v25 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 56);
  sub_1A3A2EA60();
  if ((v14 & 1) == 0)
  {
    sub_1A3A31C30();
    v24 = v7;
    v15 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v24);
    v13 = v26;
  }

  swift_getKeyPath(byte_1A3A6E070);
  v26 = v13;
  sub_1A38BC290(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(v13 + 1192))
  {
    sub_1A3A2EA60();
    v17 = sub_1A38BC058(a1);

    v19 = v25;
    (*(v17 + 56))(v18);

    sub_1A38BB810(a1, v2, v19, v6);
    sub_1A3A30DA0();
    v20 = sub_1A3A30E10();

    v22 = (v6 + *(v4 + 36));
    *v22 = v20;
    v22[1] = 0x4000000000000000;
    v22[2] = 0;
    v22[3] = 0;
    MEMORY[0x1EEE9AC00](v21);
    *(&v23 - 2) = a1;
    *(&v23 - 1) = v2;
    type metadata accessor for ChromeElementIcon(0);
    sub_1A38BFD80();
    sub_1A38BC290(&qword_1ED996630, type metadata accessor for ChromeElementIcon, &unk_1A3A7B6F8);
    sub_1A3A30BD0();
    sub_1A388F740(v6, &qword_1EB0FD260, &qword_1A3A6E488);
    return sub_1A38BDFA4(v19, type metadata accessor for ChromeElementState);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A38BB600@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v5 = sub_1A3A2FEE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v13 = (a1)(0, v10);
  sub_1A388F6D8(v2 + *(v13 + 36), v12, &qword_1EB0FCE78, &unk_1A3A6F1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1A3A30090();
    return (*(*(v14 - 8) + 32))(a2, v12, v14);
  }

  else
  {
    sub_1A3A31C30();
    v16 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1A38BB810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v32 = a3;
  v37 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD2B8, &qword_1A3A75B00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  v33 = sub_1A3A30090();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD290, &qword_1A3A6E4A0);
  MEMORY[0x1EEE9AC00](v36);
  v12 = &v31 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD2C0, &qword_1A3A6E4C0);
  MEMORY[0x1EEE9AC00](v34);
  v14 = &v31 - v13;
  v15 = sub_1A3A2FEE0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ChromeElementIcon(0);
  MEMORY[0x1EEE9AC00](v35);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 5 || a1 == 2)
  {
    v21 = *(a2 + 48);
    v22 = *(a2 + 56);
    sub_1A3A2EA60();
    if ((v22 & 1) == 0)
    {
      sub_1A3A31C30();
      v23 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v16 + 8))(v18, v15);
      v21 = v38;
    }

    type metadata accessor for ChromeElementModel();
    sub_1A39AE314(a1, 0, 0, v21, v20);

    sub_1A38BD254(v20, v14, type metadata accessor for ChromeElementIcon);
    swift_storeEnumTagMultiPayload();
    sub_1A38BC290(&qword_1ED996630, type metadata accessor for ChromeElementIcon, &unk_1A3A7B6F8);
    sub_1A38BFF4C();
    sub_1A3A301F0();
    return sub_1A38BDFA4(v20, type metadata accessor for ChromeElementIcon);
  }

  else
  {
    v25 = type metadata accessor for ChromeElementState(0);
    v26 = *(v32 + *(v25 + 40));
    sub_1A38BD254(v32 + *(v25 + 36), v12, type metadata accessor for ChromeElementIcon);
    v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD298, &qword_1A3A6E4A8) + 36)] = v26;
    sub_1A38BB600(type metadata accessor for ChromeTopBar.ControlView, v10);
    sub_1A391163C(v10);
    (*(v31 + 8))(v10, v33);
    v27 = sub_1A3A306B0();
    (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
    v28 = sub_1A3A30760();
    sub_1A388F740(v8, &qword_1EB0FD2B8, &qword_1A3A75B00);
    KeyPath = swift_getKeyPath(byte_1A3A6E4C8);
    v30 = &v12[*(v36 + 36)];
    *v30 = KeyPath;
    v30[1] = v28;
    sub_1A388F6D8(v12, v14, &qword_1EB0FD290, &qword_1A3A6E4A0);
    swift_storeEnumTagMultiPayload();
    sub_1A38BC290(&qword_1ED996630, type metadata accessor for ChromeElementIcon, &unk_1A3A7B6F8);
    sub_1A38BFF4C();
    sub_1A3A301F0();
    return sub_1A388F740(v12, &qword_1EB0FD290, &qword_1A3A6E4A0);
  }
}

uint64_t sub_1A38BBDD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1A3A2FEE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 48);
  LOBYTE(a2) = *(a2 + 56);
  sub_1A3A2EA60();
  if ((a2 & 1) == 0)
  {
    sub_1A3A31C30();
    v11 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v10 = v13[1];
  }

  type metadata accessor for ChromeElementModel();
  sub_1A39AE314(a1, 11, 0, v10, a3);
}

uint64_t sub_1A38BBF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 40) == 1)
  {
    v4 = MEMORY[0x1A58F7350](a1, 0.5, 1.0, 0.0);
  }

  else
  {
    v4 = sub_1A3A314E0();
  }

  MEMORY[0x1EEE9AC00](v4);
  sub_1A3A2F8A0();
}

uint64_t sub_1A38BC00C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A3A31460();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDE8, &qword_1A3A6DB48);
  return sub_1A38ABB00(v1, a1 + *(v4 + 44));
}

uint64_t sub_1A38BC058(unint64_t a1)
{
  v2 = v1;
  v11 = a1;
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (*(v4 + 16) && (v5 = sub_1A3A1B72C(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    sub_1A3A2EA60();
  }

  else
  {
    swift_endAccess();
    v7 = (*(v2 + 16))(&v11);
    swift_beginAccess();
    sub_1A38A8F64(a1);
    sub_1A3A2EA60();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + 32);
    *(v2 + 32) = 0x8000000000000000;
    sub_1A3A179F0(v7, a1, isUniquelyReferenced_nonNull_native);
    sub_1A3890F2C(a1);
    *(v2 + 32) = v10;
    swift_endAccess();
  }

  return v7;
}

uint64_t sub_1A38BC160@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath(byte_1A3A6E260, a2);
  sub_1A38BC290(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2F080();

  *a3 = *(v4 + 65);
  return result;
}

uint64_t sub_1A38BC250(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1A3890EFC(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1A38BC290(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A38BC2D8@<X0>(void *a1@<X1>, double *a2@<X8>)
{
  v4 = sub_1A3A30220();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  v18[0] = *a1;
  v18[1] = v8;
  sub_1A3A30350();
  sub_1A3A2F810();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v10;
  *(a2 + 1) = v12;
  *(a2 + 2) = v14;
  *(a2 + 3) = v16;
  return result;
}

char *sub_1A38BC40C(char *result)
{
  v1 = *(result + 2);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x1E69E7CC0] + 32);
    v6 = result + 32;
    while (1)
    {
      v7 = v6[v3];
      if (v4)
      {
        result = sub_1A3A2EA50();
        v8 = __OFSUB__(v4--, 1);
        if (v8)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v9 = *(v2 + 3);
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF70, &qword_1A3A6DFE0);
        v12 = swift_allocObject();
        v13 = _swift_stdlib_malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 17;
        }

        v15 = v14 >> 4;
        *(v12 + 2) = v11;
        *(v12 + 3) = 2 * (v14 >> 4);
        v16 = v12 + 32;
        v17 = *(v2 + 3) >> 1;
        v5 = &v12[16 * v17 + 32];
        v18 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
        if (*(v2 + 2))
        {
          v19 = v2 + 32;
          if (v12 != v2 || v16 >= &v19[16 * v17])
          {
            memmove(v16, v19, 16 * v17);
          }

          sub_1A3A2EA50();
          *(v2 + 2) = 0;
        }

        else
        {
          sub_1A3A2EA50();
        }

        v2 = v12;
        v8 = __OFSUB__(v18, 1);
        v4 = v18 - 1;
        if (v8)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 1) = v7;
      v5 += 16;
      if (v1 == ++v3)
      {
        goto LABEL_23;
      }
    }
  }

  v4 = 0;
LABEL_23:
  v20 = *(v2 + 3);
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v8 = __OFSUB__(v21, v4);
    v22 = v21 - v4;
    if (v8)
    {
      goto LABEL_29;
    }

    *(v2 + 2) = v22;
  }

  return v2;
}

void *sub_1A38BC59C(void *result)
{
  v1 = result[2];
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x1E69E7CC0] + 32);
    v6 = result + 4;
    v20 = result[2];
    while (1)
    {
      v7 = v6[v3];
      if (v4)
      {
        result = sub_1A38A8F64(v6[v3]);
        goto LABEL_20;
      }

      v8 = v2[3];
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_29;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD1D8, &qword_1A3A6E3D8);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v13 = v12 - 32;
      if (v12 < 32)
      {
        v13 = v12 - 17;
      }

      v14 = v13 >> 4;
      v11[2] = v10;
      v11[3] = 2 * v14;
      v15 = v2[3] >> 1;
      v5 = &v11[2 * v15 + 4];
      v4 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v15;
      if (!v2[2])
      {
        sub_1A38A8F64(v7);

        v2 = v11;
        goto LABEL_20;
      }

      if (v11 < v2 || v11 + 4 >= &v2[2 * v15 + 4])
      {
        sub_1A38A8F64(v7);
      }

      else
      {
        sub_1A38A8F64(v7);
        if (v11 == v2)
        {
          goto LABEL_19;
        }
      }

      memmove(v11 + 4, v2 + 4, 16 * v15);
LABEL_19:
      v2[2] = 0;

      v2 = v11;
      v1 = v20;
LABEL_20:
      v16 = __OFSUB__(v4--, 1);
      if (v16)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return result;
      }

      *v5 = v3;
      v5[1] = v7;
      v5 += 2;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v17 = v2[3];
  if (v17 >= 2)
  {
    v18 = v17 >> 1;
    v16 = __OFSUB__(v18, v4);
    v19 = v18 - v4;
    if (v16)
    {
      goto LABEL_30;
    }

    v2[2] = v19;
  }

  return v2;
}

void sub_1A38BC75C(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD1C8, &qword_1A3A6E3C8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = (&v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - v5;
  v7 = MEMORY[0x1E69E7CC0];
  v40 = *(a1 + 16);
  if (v40)
  {
    v43 = v4;
    v8 = *(v4 + 80);
    v37 = v8;
    v38 = (v8 + 32) & ~v8;
    v9 = MEMORY[0x1E69E7CC0] + v38;
    v10 = 0;
    v11 = 0;
    v12 = *(type metadata accessor for ChromeMenu(0) - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v39 = *(v12 + 72);
    v14 = v7;
    while (1)
    {
      v15 = v41;
      v16 = *(v42 + 48);
      *v41 = v10;
      sub_1A38BD254(v13, v15 + v16, type metadata accessor for ChromeMenu);
      v17 = v6;
      sub_1A388F670(v15, v6, &qword_1EB0FD1C8, &qword_1A3A6E3C8);
      if (v11)
      {
        v44 = v14;
      }

      else
      {
        v18 = v14[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD1D0, &qword_1A3A6E3D0);
        v21 = *(v43 + 72);
        v22 = v38;
        v44 = swift_allocObject();
        v23 = _swift_stdlib_malloc_size(v44);
        if (!v21)
        {
          goto LABEL_35;
        }

        v24 = v23 - v22;
        if (v23 - v22 == 0x8000000000000000 && v21 == -1)
        {
          goto LABEL_36;
        }

        v26 = v24 / v21;
        v27 = v44;
        *(v44 + 2) = v20;
        v27[3] = 2 * (v24 / v21);
        v28 = v27 + v22;
        v29 = v14[3] >> 1;
        v30 = v29 * v21;
        if (v14[2])
        {
          if (v27 < v14 || v28 >= v14 + v38 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v14)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v14[2] = 0;
        }

        v9 = &v28[v30];
        v11 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v29;
      }

      v32 = v43;
      v6 = v17;
      v33 = __OFSUB__(v11--, 1);
      if (v33)
      {
        break;
      }

      ++v10;
      sub_1A388F670(v17, v9, &qword_1EB0FD1C8, &qword_1A3A6E3C8);
      v9 += *(v32 + 72);
      v13 += v39;
      v7 = v44;
      v14 = v44;
      if (v40 == v10)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = 0;
LABEL_29:
  v34 = v7[3];
  if (v34 >= 2)
  {
    v35 = v34 >> 1;
    v33 = __OFSUB__(v35, v11);
    v36 = v35 - v11;
    if (v33)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v7[2] = v36;
  }
}

void *sub_1A38BCAB8(void *result)
{
  v1 = result[2];
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0] + 32;
    v6 = result + 4;
    v26 = result[2];
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = *(v6 + 2);
      v9 = *(v6 + 4);
      v29 = *(v6 + 3);
      v30 = v9;
      v31 = v6[10];
      v10 = *(v6 + 1);
      v28[0] = *v6;
      v28[1] = v10;
      v28[2] = v8;
      v35 = v29;
      v36 = v9;
      v33 = v10;
      v34 = v8;
      v37 = v31;
      v32 = v28[0];
      if (v4)
      {
        result = sub_1A38BEE70(v28, v27);
        v2 = v7;
        v11 = __OFSUB__(v4--, 1);
        if (v11)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v12 = v7[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_31;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD1E0, &qword_1A3A6E3E0);
        v2 = swift_allocObject();
        v15 = (_swift_stdlib_malloc_size(v2) - 32) / 96;
        v2[2] = v14;
        v2[3] = 2 * v15;
        v16 = v7[3] >> 1;
        v5 = &v2[12 * v16 + 4];
        v17 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v16;
        if (v7[2])
        {
          v18 = v2 < v7 || v2 + 4 >= &v7[12 * v16 + 4];
          if (!v18 && v2 == v7)
          {
            sub_1A38BEE70(v28, v27);
          }

          else
          {
            sub_1A38BEE70(v28, v27);
            memmove(v2 + 4, v7 + 4, 96 * v16);
          }

          v7[2] = 0;

          v1 = v26;
          v11 = __OFSUB__(v17, 1);
          v4 = v17 - 1;
          if (v11)
          {
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            return result;
          }
        }

        else
        {
          sub_1A38BEE70(v28, v27);

          v11 = __OFSUB__(v17, 1);
          v4 = v17 - 1;
          if (v11)
          {
            goto LABEL_30;
          }
        }
      }

      *v5 = v3;
      v19 = v34;
      v20 = v35;
      v21 = v36;
      *(v5 + 88) = v37;
      v22 = v32;
      *(v5 + 24) = v33;
      *(v5 + 8) = v22;
      *(v5 + 72) = v21;
      *(v5 + 56) = v20;
      *(v5 + 40) = v19;
      v5 += 96;
      v6 += 11;
      ++v3;
      v7 = v2;
      if (v1 == v3)
      {
        goto LABEL_26;
      }
    }
  }

  v4 = 0;
LABEL_26:
  v23 = v2[3];
  if (v23 >= 2)
  {
    v24 = v23 >> 1;
    v11 = __OFSUB__(v24, v4);
    v25 = v24 - v4;
    if (v11)
    {
      goto LABEL_32;
    }

    v2[2] = v25;
  }

  return v2;
}

uint64_t objectdestroy_22Tm()
{
  v1 = type metadata accessor for ChromeTopBar(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v2 + 40);
  if (v3 != 255)
  {
    sub_1A3890EFC(*(v2 + 16), *(v2 + 24), *(v2 + 32), v3);
  }

  v4 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A3A30090();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1A38BCE7C()
{
  result = qword_1ED996800;
  if (!qword_1ED996800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996800);
  }

  return result;
}

uint64_t sub_1A38BCF64(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1A38BCF78(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1A38BCF78(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
    return sub_1A38A8F64(result);
  }

  if (a4 == 1)
  {
    return sub_1A38BCF98(result);
  }

  return result;
}

unint64_t sub_1A38BCF98(unint64_t result)
{
  if (result != 35)
  {
    return sub_1A38A8F64(result);
  }

  return result;
}

unint64_t sub_1A38BCFA8()
{
  result = qword_1ED996808[0];
  if (!qword_1ED996808[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED996808);
  }

  return result;
}

uint64_t objectdestroy_7Tm()
{

  return swift_deallocObject();
}

void sub_1A38BD0D8(uint64_t a1)
{
  sub_1A38BF170(319, &qword_1ED9967B0, &qword_1EB0FCDD8, &qword_1A3A6DA78, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    sub_1A38BF170(319, qword_1ED996878, &qword_1EB0FC8E8, &qword_1A3A6D270, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1A38AB898(319, &qword_1ED9967B8, type metadata accessor for ChromeViewModel);
      if (v3 <= 0x3F)
      {
        sub_1A38AB898(319, qword_1ED9967C0, MEMORY[0x1E697F6A0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A38BD254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A38BD2BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A38BD324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for ChromeTopBar.GroupsView(0) - 8);
  v8 = (v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80)));

  return sub_1A38B00CC(a1, a2, v8, a3);
}

unint64_t sub_1A38BD3DC()
{
  result = qword_1EB0FCF58;
  if (!qword_1EB0FCF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCF50, &qword_1A3A6DF68);
    sub_1A38BD460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCF58);
  }

  return result;
}

unint64_t sub_1A38BD460()
{
  result = qword_1ED9968C0;
  if (!qword_1ED9968C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCF60, &qword_1A3A6DF70);
    sub_1A38BD4E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9968C0);
  }

  return result;
}

unint64_t sub_1A38BD4E4()
{
  result = qword_1ED9968C8;
  if (!qword_1ED9968C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCF68, &qword_1A3A6DF78);
    sub_1A38BC290(qword_1ED9968D0, type metadata accessor for ChromeTopBar.ExpandableGroup, &unk_1A3A6E000);
    sub_1A38A08F8(&qword_1ED9966F8, &qword_1EB0FC9F0, &qword_1A3A6D300, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9968C8);
  }

  return result;
}

void sub_1A38BD638(uint64_t a1)
{
  sub_1A38BF170(319, &qword_1ED9967B0, &qword_1EB0FCDD8, &qword_1A3A6DA78, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    sub_1A38BD8D4(319, &qword_1ED996940, &type metadata for ChromeElement, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1A38BD87C();
      if (v3 <= 0x3F)
      {
        sub_1A38BD8D4(319, &qword_1ED996950, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1A38BD8D4(319, qword_1ED996958, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1A38AB898(319, &qword_1ED9967B8, type metadata accessor for ChromeViewModel);
            if (v6 <= 0x3F)
            {
              sub_1A38AB898(319, qword_1ED9967C0, MEMORY[0x1E697F6A0]);
              if (v7 <= 0x3F)
              {
                sub_1A38BD8D4(319, &qword_1EB0FCF80, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A38BD87C()
{
  if (!qword_1ED996948)
  {
    v0 = sub_1A3A30330();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED996948);
    }
  }
}

void sub_1A38BD8D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A38BD924()
{
  result = qword_1EB0FCF88;
  if (!qword_1EB0FCF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCF90, &qword_1A3A6DFF8);
    sub_1A38A08F8(&qword_1EB0FCF98, &qword_1EB0FCF38, &qword_1A3A6DF30, &unk_1A3A7BE94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCF88);
  }

  return result;
}

uint64_t sub_1A38BDA1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, a2, v8);
}

unint64_t sub_1A38BDAB4()
{
  result = qword_1ED9969C0;
  if (!qword_1ED9969C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC8E8, &qword_1A3A6D270);
    sub_1A38BDB38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9969C0);
  }

  return result;
}

unint64_t sub_1A38BDB38()
{
  result = qword_1ED9969C8;
  if (!qword_1ED9969C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9969C8);
  }

  return result;
}

uint64_t objectdestroy_135Tm()
{
  v1 = type metadata accessor for ChromeTopBar.ExpandableGroup(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = *(v2 + 48);
  if (v3 != 255)
  {
    sub_1A3890EFC(*(v2 + 24), *(v2 + 32), *(v2 + 40), v3);
  }

  sub_1A3890EFC(*(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88));
  v4 = v2 + v1[9];
  v5 = sub_1A3A30430();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v4, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78, &qword_1A3A6EC40);

  v8 = v2 + v1[10];
  if (!v7(v8, 1, v5))
  {
    (*(v6 + 8))(v8, v5);
  }

  v9 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1A3A30090();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  sub_1A3670FF4(*(v2 + v1[16]), *(v2 + v1[16] + 8));
  sub_1A3670FF4(*(v2 + v1[17]), *(v2 + v1[17] + 8));

  return swift_deallocObject();
}

uint64_t sub_1A38BDE4C(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for ChromeTopBar.ExpandableGroup(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A38B73F0(a1, a2, v6);
}

unint64_t sub_1A38BDECC()
{
  result = qword_1ED9969D0;
  if (!qword_1ED9969D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCDD8, &qword_1A3A6DA78);
    sub_1A38BDF50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9969D0);
  }

  return result;
}

unint64_t sub_1A38BDF50()
{
  result = qword_1ED9969D8;
  if (!qword_1ED9969D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9969D8);
  }

  return result;
}

uint64_t sub_1A38BDFA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A38BE068(uint64_t a1)
{
  v3 = *(type metadata accessor for ChromeTopBar.ExpandableGroup(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A38B6638(a1, v4);
}

uint64_t sub_1A38BE124(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_1A38BE1AC()
{
  result = qword_1ED9969E0;
  if (!qword_1ED9969E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9969E0);
  }

  return result;
}

unint64_t sub_1A38BE200()
{
  result = qword_1EB0FD070;
  if (!qword_1EB0FD070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCFD0, &qword_1A3A6E0A0);
    sub_1A38BE2B8();
    sub_1A38A08F8(&qword_1ED9966F8, &qword_1EB0FC9F0, &qword_1A3A6D300, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD070);
  }

  return result;
}

unint64_t sub_1A38BE2B8()
{
  result = qword_1EB0FD078;
  if (!qword_1EB0FD078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCFC8, &qword_1A3A6E098);
    sub_1A38BE370();
    sub_1A38A08F8(&qword_1EB0FD098, &qword_1EB0FD0A0, &qword_1A3A6E1E0, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD078);
  }

  return result;
}

unint64_t sub_1A38BE370()
{
  result = qword_1EB0FD080;
  if (!qword_1EB0FD080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD068, &qword_1A3A6E138);
    sub_1A38BC290(&qword_1ED9969E8, type metadata accessor for ChromeTopBar.CollapsedGroup, &unk_1A3A6E2C0);
    sub_1A38A08F8(&qword_1EB0FD088, &qword_1EB0FD090, &qword_1A3A80F10, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD080);
  }

  return result;
}

unint64_t sub_1A38BE458()
{
  result = qword_1ED9969F0;
  if (!qword_1ED9969F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9969F0);
  }

  return result;
}

unint64_t sub_1A38BE4AC()
{
  result = qword_1EB0FD0A8;
  if (!qword_1EB0FD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD0A8);
  }

  return result;
}

unint64_t sub_1A38BE500()
{
  result = qword_1EB0FD0B0;
  if (!qword_1EB0FD0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCFF0, &qword_1A3A6E0C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCFE0, &qword_1A3A6E0B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCFD8, &qword_1A3A6E0A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCFD0, &qword_1A3A6E0A0);
    sub_1A38BE200();
    sub_1A38BE458();
    swift_getOpaqueTypeConformance2();
    sub_1A38BE4AC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A38A08F8(&qword_1EB0FD0B8, &qword_1EB0FD0C0, &qword_1A3A6E1E8, "=x@K");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD0B0);
  }

  return result;
}

unint64_t sub_1A38BE6A4()
{
  result = qword_1EB0FD0C8;
  if (!qword_1EB0FD0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD060, &qword_1A3A6E130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD050, &qword_1A3A6E120);
    sub_1A38BE79C();
    swift_getOpaqueTypeConformance2();
    sub_1A38BC290(&qword_1ED9966D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD0C8);
  }

  return result;
}

unint64_t sub_1A38BE79C()
{
  result = qword_1EB0FD0D0;
  if (!qword_1EB0FD0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD050, &qword_1A3A6E120);
    sub_1A38BE828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD0D0);
  }

  return result;
}

unint64_t sub_1A38BE828()
{
  result = qword_1EB0FD0D8;
  if (!qword_1EB0FD0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD048, &qword_1A3A6E118);
    sub_1A38BE8B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD0D8);
  }

  return result;
}

unint64_t sub_1A38BE8B4()
{
  result = qword_1EB0FD0E0;
  if (!qword_1EB0FD0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD040, &qword_1A3A6E110);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD030, &qword_1A3A6E100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD028, &qword_1A3A6E0F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD020, &qword_1A3A6E0F0);
    sub_1A3A2FBC0();
    sub_1A38BEA8C();
    sub_1A38BC290(&qword_1EB0FC480, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    swift_getOpaqueTypeConformance2();
    sub_1A38BE4AC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A38A08F8(&qword_1EB0FD0B8, &qword_1EB0FD0C0, &qword_1A3A6E1E8, "=x@K");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD0E0);
  }

  return result;
}

unint64_t sub_1A38BEA8C()
{
  result = qword_1EB0FD0E8;
  if (!qword_1EB0FD0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD020, &qword_1A3A6E0F0);
    sub_1A38BEB44();
    sub_1A38A08F8(&qword_1ED9966F8, &qword_1EB0FC9F0, &qword_1A3A6D300, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD0E8);
  }

  return result;
}

unint64_t sub_1A38BEB44()
{
  result = qword_1EB0FD0F0;
  if (!qword_1EB0FD0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD018, &qword_1A3A6E0E8);
    sub_1A38BEBFC();
    sub_1A38A08F8(&qword_1EB0FD118, &qword_1EB0FD120, &qword_1A3A6E1F8, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD0F0);
  }

  return result;
}

unint64_t sub_1A38BEBFC()
{
  result = qword_1EB0FD0F8;
  if (!qword_1EB0FD0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD010, &qword_1A3A6E0E0);
    sub_1A38BEC88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD0F8);
  }

  return result;
}

unint64_t sub_1A38BEC88()
{
  result = qword_1EB0FD100;
  if (!qword_1EB0FD100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD008, &qword_1A3A6E0D8);
    sub_1A38A08F8(&qword_1EB0FD108, &qword_1EB0FD110, &qword_1A3A6E1F0, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD100);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_1A38BEFB8(uint64_t a1)
{
  sub_1A38BD8D4(319, &qword_1ED996940, &type metadata for ChromeElement, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1A38BF120();
    if (v2 <= 0x3F)
    {
      sub_1A38BF170(319, qword_1ED996A70, &qword_1EB0FD160, qword_1A3A81580, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1A38AB898(319, &qword_1ED9967B8, type metadata accessor for ChromeViewModel);
        if (v4 <= 0x3F)
        {
          sub_1A38AB898(319, qword_1ED9967C0, MEMORY[0x1E697F6A0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1A38BF120()
{
  result = qword_1ED996A68;
  if (!qword_1ED996A68)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ED996A68);
  }

  return result;
}

void sub_1A38BF170(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1A38BF1D4()
{
  result = qword_1EB0FD168;
  if (!qword_1EB0FD168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCFC0, &qword_1A3A6E068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCFA8, &qword_1A3A6E058);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCDD8, &qword_1A3A6DA78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCFA0, &qword_1A3A6E050);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC8E8, &qword_1A3A6D270);
    sub_1A38A08F8(&qword_1EB0FCFB8, &qword_1EB0FCFA0, &qword_1A3A6E050, MEMORY[0x1E6981810]);
    sub_1A38BDAB4();
    swift_getOpaqueTypeConformance2();
    sub_1A38BDECC();
    swift_getOpaqueTypeConformance2();
    sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8, &qword_1A3A6D2E0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD168);
  }

  return result;
}

uint64_t sub_1A38BF3A0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ChromeTopBar.CollapsedGroup(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A38B95AC(a1, v6, a2);
}

unint64_t sub_1A38BF420()
{
  result = qword_1EB0FD1A0;
  if (!qword_1EB0FD1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD198, &qword_1A3A6E358);
    sub_1A38BF4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD1A0);
  }

  return result;
}

unint64_t sub_1A38BF4A4()
{
  result = qword_1EB0FD1A8;
  if (!qword_1EB0FD1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD1B0, &qword_1A3A6E360);
    sub_1A38BF55C();
    sub_1A38A08F8(qword_1ED996AC8, &qword_1EB0FD1C0, &qword_1A3A6F350, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD1A8);
  }

  return result;
}

unint64_t sub_1A38BF55C()
{
  result = qword_1ED996AB8;
  if (!qword_1ED996AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD1B8, &qword_1A3A6E368);
    sub_1A38BC290(&qword_1ED996AC0, type metadata accessor for ChromeTopBar.ControlView, &unk_1A3A6E400);
    sub_1A38BC290(&qword_1ED9966D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996AB8);
  }

  return result;
}

uint64_t sub_1A38BF668(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_106Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0, &unk_1A3A743A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void sub_1A38BF78C(uint64_t a1)
{
  sub_1A38BF120();
  if (v1 <= 0x3F)
  {
    sub_1A38BF170(319, qword_1ED996A70, &qword_1EB0FD160, qword_1A3A81580, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A38AB898(319, &qword_1ED9967B8, type metadata accessor for ChromeViewModel);
      if (v3 <= 0x3F)
      {
        sub_1A38AB898(319, qword_1ED9967C0, MEMORY[0x1E697F6A0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A38BF8BC()
{
  result = qword_1EB0FD1E8;
  if (!qword_1EB0FD1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD1F0, &qword_1A3A6E3F8);
    sub_1A38BF940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD1E8);
  }

  return result;
}

unint64_t sub_1A38BF940()
{
  result = qword_1EB0FD1F8;
  if (!qword_1EB0FD1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD188, &qword_1A3A6E328);
    sub_1A38BF9CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD1F8);
  }

  return result;
}

unint64_t sub_1A38BF9CC()
{
  result = qword_1EB0FD200;
  if (!qword_1EB0FD200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD180, &qword_1A3A6E320);
    sub_1A38BFA58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD200);
  }

  return result;
}

unint64_t sub_1A38BFA58()
{
  result = qword_1EB0FD208;
  if (!qword_1EB0FD208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD178, &qword_1A3A6E318);
    sub_1A38A08F8(&qword_1EB0FD210, &qword_1EB0FD170, &qword_1A3A6E310, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD208);
  }

  return result;
}

uint64_t sub_1A38BFB58(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_1A38BFBDC()
{
  result = qword_1EB0FD248;
  if (!qword_1EB0FD248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD238, &qword_1A3A6E470);
    sub_1A38BFC68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD248);
  }

  return result;
}

unint64_t sub_1A38BFC68()
{
  result = qword_1EB0FD250;
  if (!qword_1EB0FD250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD258, &qword_1A3A6E480);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD260, &qword_1A3A6E488);
    type metadata accessor for ChromeElementIcon(255);
    sub_1A38BFD80();
    sub_1A38BC290(&qword_1ED996630, type metadata accessor for ChromeElementIcon, &unk_1A3A7B6F8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD250);
  }

  return result;
}

unint64_t sub_1A38BFD80()
{
  result = qword_1EB0FD268;
  if (!qword_1EB0FD268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD260, &qword_1A3A6E488);
    sub_1A38BFE0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD268);
  }

  return result;
}

unint64_t sub_1A38BFE0C()
{
  result = qword_1EB0FD270;
  if (!qword_1EB0FD270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD278, &qword_1A3A6E490);
    sub_1A38BFE90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD270);
  }

  return result;
}

unint64_t sub_1A38BFE90()
{
  result = qword_1EB0FD280;
  if (!qword_1EB0FD280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD288, &qword_1A3A6E498);
    sub_1A38BC290(&qword_1ED996630, type metadata accessor for ChromeElementIcon, &unk_1A3A7B6F8);
    sub_1A38BFF4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD280);
  }

  return result;
}

unint64_t sub_1A38BFF4C()
{
  result = qword_1ED996B70;
  if (!qword_1ED996B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD290, &qword_1A3A6E4A0);
    sub_1A38C0004();
    sub_1A38A08F8(&qword_1ED9966A8, &qword_1EB0FC678, &qword_1A3A82E70, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996B70);
  }

  return result;
}

unint64_t sub_1A38C0004()
{
  result = qword_1ED996B78;
  if (!qword_1ED996B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD298, &qword_1A3A6E4A8);
    sub_1A38BC290(&qword_1ED996630, type metadata accessor for ChromeElementIcon, &unk_1A3A7B6F8);
    sub_1A38C00C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996B78);
  }

  return result;
}

unint64_t sub_1A38C00C0()
{
  result = qword_1ED996B80;
  if (!qword_1ED996B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996B80);
  }

  return result;
}

unint64_t sub_1A38C0114()
{
  result = qword_1ED996B88;
  if (!qword_1ED996B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD240, &qword_1A3A6E478);
    sub_1A38A08F8(&qword_1ED996B90, &qword_1EB0FD2A0, &qword_1A3A6E4B0, MEMORY[0x1E697E238]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996B88);
  }

  return result;
}

uint64_t sub_1A38C01C4(uint64_t a1)
{
  v3 = *(type metadata accessor for ChromeTopBar.ControlView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_1A38BBF50(a1, v1 + v4, v6, v7);
}

unint64_t sub_1A38C02E0()
{
  result = qword_1EB0FD2C8;
  if (!qword_1EB0FD2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD228, &qword_1A3A6E460);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD218, &qword_1A3A6E450);
    sub_1A3A2FB90();
    sub_1A38A08F8(&qword_1EB0FD2A8, &qword_1EB0FD218, &qword_1A3A6E450, MEMORY[0x1E697D680]);
    sub_1A38BC290(&qword_1ED9966C8, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    swift_getOpaqueTypeConformance2();
    sub_1A38BC290(&qword_1ED9966D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD2C8);
  }

  return result;
}

uint64_t sub_1A38C049C@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = sub_1A3A30090();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v59 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD2E0, &qword_1A3A6E590);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v59 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD2E8, &qword_1A3A6E598);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD2F0, &qword_1A3A6E5A0);
  MEMORY[0x1EEE9AC00](v59);
  v16 = &v59 - v15;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD2F8, &qword_1A3A6E5A8);
  MEMORY[0x1EEE9AC00](v60);
  v18 = &v59 - v17;
  sub_1A38C0ADC(v8);
  (*(v3 + 16))(v5, v8, v2);
  v19 = (*(v3 + 88))(v5, v2);
  v20 = 0x4020000000000000;
  if (v19 == *MEMORY[0x1E697F658] || v19 == *MEMORY[0x1E697F690] || v19 == *MEMORY[0x1E697F698] || v19 == *MEMORY[0x1E697F680])
  {
    goto LABEL_15;
  }

  if (v19 == *MEMORY[0x1E697F650])
  {
    v20 = 0x4022A8F5C28F5C29;
LABEL_15:
    (*(v3 + 8))(v8, v2);
    *v11 = sub_1A3A300B0();
    *(v11 + 1) = v20;
    v11[16] = 0;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD300, &qword_1A3A6E5B0);
    sub_1A38C0CE4(v1, &v11[*(v21 + 44)]);
    v22 = sub_1A3A30620();
    sub_1A38C2A30();
    sub_1A3A2F520();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    sub_1A388F670(v11, v14, &qword_1EB0FD2E0, &qword_1A3A6E590);
    v31 = &v14[*(v12 + 36)];
    *v31 = v22;
    *(v31 + 1) = v24;
    *(v31 + 2) = v26;
    *(v31 + 3) = v28;
    *(v31 + 4) = v30;
    v31[40] = 0;
    v32 = sub_1A3A30630();
    sub_1A38C2EC4();
    sub_1A3A2F520();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    sub_1A388F670(v14, v16, &qword_1EB0FD2E8, &qword_1A3A6E598);
    v41 = &v16[*(v59 + 36)];
    *v41 = v32;
    *(v41 + 1) = v34;
    *(v41 + 2) = v36;
    *(v41 + 3) = v38;
    *(v41 + 4) = v40;
    v41[40] = 0;
    v42 = sub_1A3A31480();
    sub_1A3A2FBF0(v62, 0, 1, 0, 1, v42, v43);
    sub_1A388F670(v16, v18, &qword_1EB0FD2F0, &qword_1A3A6E5A0);
    v44 = &v18[*(v60 + 36)];
    v45 = v62[5];
    *(v44 + 4) = v62[4];
    *(v44 + 5) = v45;
    *(v44 + 6) = v62[6];
    v46 = v62[1];
    *v44 = v62[0];
    *(v44 + 1) = v46;
    v47 = v62[3];
    *(v44 + 2) = v62[2];
    *(v44 + 3) = v47;
    sub_1A3A31590();
    v49 = v48;
    v51 = v50;
    type metadata accessor for ChromeViewModel(0);
    sub_1A38C7218(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    v52 = sub_1A3A2F650();
    v54 = v53;
    v55 = v18;
    v56 = v61;
    sub_1A388F670(v55, v61, &qword_1EB0FD2F8, &qword_1A3A6E5A8);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD308, &qword_1A3A6E5B8);
    v58 = v56 + *(result + 36);
    *v58 = 3;
    *(v58 + 8) = v49;
    *(v58 + 16) = v51;
    *(v58 + 24) = 1;
    *(v58 + 32) = v52;
    *(v58 + 40) = v54 & 1;
    return result;
  }

  if (v19 == *MEMORY[0x1E697F660])
  {
    v20 = 0x402488B439581062;
    goto LABEL_15;
  }

  v20 = 0x4028000000000000;
  if (v19 == *MEMORY[0x1E697F630] || v19 == *MEMORY[0x1E697F670] || v19 == *MEMORY[0x1E697F668] || v19 == *MEMORY[0x1E697F678] || v19 == *MEMORY[0x1E697F640] || v19 == *MEMORY[0x1E697F648])
  {
    goto LABEL_15;
  }

  result = sub_1A3A32070("Fatal error", 11, 2, 0xD00000000000001DLL, 0x80000001A3AA1DE0, "CameraUI/ChromeViewSpec.swift", 29, 2, 352, 0);
  __break(1u);
  return result;
}

uint64_t sub_1A38C0ADC@<X0>(void *a1@<X8>)
{
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TopBarMenu(0);
  sub_1A388F6D8(v1 + *(v10 + 32), v9, &qword_1EB0FCE78, &unk_1A3A6F1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A3A30090();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A3A31C30();
    v13 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A38C0CE4@<X0>(unint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v135 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD320, &qword_1A3A6E610);
  v131 = *(v3 - 8);
  v132 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v121 = &v113 - v4;
  v5 = sub_1A3A2FEE0();
  v115 = *(v5 - 8);
  v116 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v114 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD328, &qword_1A3A6E618);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v134 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v133 = &v113 - v10;
  v11 = type metadata accessor for TopBarMenu(0);
  v123 = *(v11 - 8);
  v12 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v124 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A3A30090();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v118 = (&v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v113 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v113 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD330, &qword_1A3A6E620);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v113 - v23;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD338, &qword_1A3A6E628);
  MEMORY[0x1EEE9AC00](v125);
  v128 = &v113 - v25;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD340, &qword_1A3A6E630);
  MEMORY[0x1EEE9AC00](v127);
  v130 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v126 = &v113 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v136 = &v113 - v30;
  v31 = sub_1A3A31490();
  v33 = v32;
  v129 = a1;
  sub_1A38C0ADC(v21);
  v34 = v14;
  (*(v14 + 16))(v18, v21, v13);
  v35 = (*(v14 + 88))(v18, v13);
  v36 = 0x4030000000000000;
  if (v35 != *MEMORY[0x1E697F658] && v35 != *MEMORY[0x1E697F690] && v35 != *MEMORY[0x1E697F698] && v35 != *MEMORY[0x1E697F680])
  {
    if (v35 == *MEMORY[0x1E697F650])
    {
      v36 = 0x4031547AE147AE14;
    }

    else if (v35 == *MEMORY[0x1E697F660])
    {
      v36 = 0x4032445A1CAC0831;
    }

    else
    {
      v36 = 0x4034000000000000;
      if (v35 != *MEMORY[0x1E697F630] && v35 != *MEMORY[0x1E697F670] && v35 != *MEMORY[0x1E697F668] && v35 != *MEMORY[0x1E697F678] && v35 != *MEMORY[0x1E697F640] && v35 != *MEMORY[0x1E697F648])
      {
        result = sub_1A3A32070("Fatal error", 11, 2, 0xD00000000000001DLL, 0x80000001A3AA1DE0, "CameraUI/ChromeViewSpec.swift", 29, 2, 332, 0);
        __break(1u);
        return result;
      }
    }
  }

  v37 = *(v34 + 8);
  v119 = v34 + 8;
  v120 = v13;
  v117 = v37;
  v37(v21, v13);
  *v24 = v31;
  *(v24 + 1) = v33;
  *(v24 + 2) = 0;
  v24[24] = 1;
  *(v24 + 4) = v36;
  v24[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD348, &qword_1A3A6E638);
  v38 = v129;
  v122 = *v129;
  *&v145 = sub_1A38BC59C(v122);
  KeyPath = swift_getKeyPath(byte_1A3A6E640);
  v40 = v124;
  sub_1A38C6F08(v38, v124, type metadata accessor for TopBarMenu);
  v41 = (*(v123 + 80) + 16) & ~*(v123 + 80);
  v42 = swift_allocObject();
  sub_1A38C7DC0(v40, v42 + v41, type metadata accessor for TopBarMenu);
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1A38C6F70;
  *(v43 + 24) = v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD350, &qword_1A3A6E660);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD358, &qword_1A3A6E668);
  v46 = sub_1A38A08F8(&qword_1EB0FD360, &qword_1EB0FD350, &qword_1A3A6E660, MEMORY[0x1E69E6338]);
  v47 = sub_1A38C7028();
  sub_1A3A31200(&v145, KeyPath, sub_1A38C6FF8, v43, v44, v45, v46, MEMORY[0x1E69E6540], v47);
  v48 = sub_1A3A31480();
  sub_1A3A2FBF0(v153, 0, 1, 0, 1, v48, v49);
  v50 = v128;
  sub_1A388F670(v24, v128, &qword_1EB0FD330, &qword_1A3A6E620);
  v51 = (v50 + *(v125 + 36));
  v52 = v153[5];
  v51[4] = v153[4];
  v51[5] = v52;
  v51[6] = v153[6];
  v53 = v153[1];
  *v51 = v153[0];
  v51[1] = v53;
  v54 = v153[3];
  v51[2] = v153[2];
  v51[3] = v54;
  LOBYTE(KeyPath) = sub_1A3A30600();
  sub_1A3A2F520();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v50;
  v64 = v126;
  sub_1A388F670(v63, v126, &qword_1EB0FD338, &qword_1A3A6E628);
  v65 = v64 + *(v127 + 36);
  *v65 = KeyPath;
  *(v65 + 8) = v56;
  *(v65 + 16) = v58;
  *(v65 + 24) = v60;
  *(v65 + 32) = v62;
  *(v65 + 40) = 0;
  sub_1A388F670(v64, v136, &qword_1EB0FD340, &qword_1A3A6E630);
  v66 = *(v38 + 32);
  LOBYTE(v64) = *(v38 + 40);
  sub_1A3A2EA60();
  if ((v64 & 1) == 0)
  {
    sub_1A3A31C30();
    v67 = sub_1A3A305C0();
    sub_1A3A2F270();

    v68 = v114;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v115 + 8))(v68, v116);
    v66 = v145;
  }

  v69 = sub_1A38C23D4(v122, v66);
  v71 = v70;

  v72 = v133;
  if (v71)
  {
    *&v145 = v69;
    *(&v145 + 1) = v71;
    sub_1A389FD78();
    v73 = sub_1A3A308E0();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = sub_1A3A30620();
    sub_1A3A2F520();
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v89 = v77 & 1;
    LOBYTE(v145) = v77 & 1;
    LOBYTE(v137) = 0;
    v90 = v118;
    sub_1A38C0ADC(v118);
    sub_1A3912000(v90);
    v117(v90, v120);
    sub_1A3A30740();
    sub_1A391A414(v91);
    v92 = CEKFontOfSizeWeightStyle();
    v93 = sub_1A3A307B0();
    v94 = swift_getKeyPath("8WiG");
    *&v137 = v73;
    *(&v137 + 1) = v75;
    LOBYTE(v138) = v89;
    *(&v138 + 1) = v79;
    LOBYTE(v139) = v80;
    *(&v139 + 1) = v82;
    *&v140 = v84;
    *(&v140 + 1) = v86;
    *&v141 = v88;
    BYTE8(v141) = 0;
    *&v142 = v94;
    *(&v142 + 1) = v93;
    if (qword_1EB0FC100 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD3A8, &qword_1A3A6E6C0);
    sub_1A38C7280();
    v95 = v121;
    sub_1A3A30CC0();
    v147 = v139;
    v148 = v140;
    v149 = v141;
    v150 = v142;
    v145 = v137;
    v146 = v138;
    sub_1A388F740(&v145, &qword_1EB0FD3A8, &qword_1A3A6E6C0);
    v96 = swift_getKeyPath("\bWiG");
    v97 = v95 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD3C0, &qword_1A3A6E6F8) + 36);
    *v97 = v96;
    *(v97 + 8) = 2;
    *(v97 + 16) = 0;
    v98 = swift_getKeyPath(byte_1A3A6E700);
    v99 = v95 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD3C8, &qword_1A3A6E730) + 36);
    *v99 = v98;
    *(v99 + 8) = 1;
    sub_1A3A30DD0();
    v100 = sub_1A3A30E10();

    *(v95 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD3D0, &qword_1A3A6E738) + 36)) = v100;
    LOBYTE(v98) = sub_1A3A30600();
    sub_1A3A2F520();
    v101 = v132;
    v102 = v95 + *(v132 + 36);
    *v102 = v98;
    *(v102 + 8) = v103;
    *(v102 + 16) = v104;
    *(v102 + 24) = v105;
    *(v102 + 32) = v106;
    *(v102 + 40) = 0;
    sub_1A388F670(v95, v72, &qword_1EB0FD320, &qword_1A3A6E610);
    (*(v131 + 56))(v72, 0, 1, v101);
  }

  else
  {
    (*(v131 + 56))(v133, 1, 1, v132);
  }

  v107 = v136;
  v108 = v130;
  sub_1A388F6D8(v136, v130, &qword_1EB0FD340, &qword_1A3A6E630);
  v109 = v134;
  sub_1A388F6D8(v72, v134, &qword_1EB0FD328, &qword_1A3A6E618);
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0;
  v110 = v135;
  *v135 = 0u;
  v110[1] = 0u;
  v110[2] = 0u;
  v110[3] = 0u;
  v110[4] = 0u;
  v110[5] = 0u;
  v110[6] = 0u;
  *(v110 + 112) = 0;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD398, &qword_1A3A6E680);
  sub_1A388F6D8(v108, v110 + *(v111 + 48), &qword_1EB0FD340, &qword_1A3A6E630);
  sub_1A388F6D8(v109, v110 + *(v111 + 64), &qword_1EB0FD328, &qword_1A3A6E618);
  sub_1A388F6D8(&v137, &v145, &qword_1EB0FD3A0, &qword_1A3A6E688);
  sub_1A388F740(v72, &qword_1EB0FD328, &qword_1A3A6E618);
  sub_1A388F740(v107, &qword_1EB0FD340, &qword_1A3A6E630);
  sub_1A388F740(v109, &qword_1EB0FD328, &qword_1A3A6E618);
  sub_1A388F740(v108, &qword_1EB0FD340, &qword_1A3A6E630);
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0;
  return sub_1A388F740(&v145, &qword_1EB0FD3A0, &qword_1A3A6E688);
}

uint64_t sub_1A38C1A98@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v44 = a1;
  v47 = a3;
  v4 = type metadata accessor for TopBarMenu(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD378, &qword_1A3A6E670);
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v41 - v9;
  v10 = sub_1A3A2FEE0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v43);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  sub_1A3A2EA60();
  if ((v17 & 1) == 0)
  {
    sub_1A3A31C30();
    v41 = v10;
    v18 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v41);
    v16 = v48;
  }

  swift_getKeyPath(byte_1A3A6E508);
  v48 = v16;
  sub_1A38C7218(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(v16 + 1192))
  {
    sub_1A3A2EA60();
    v20 = sub_1A38BC058(v44);

    (*(v20 + 56))(v21);

    v22 = &v15[*(v43 + 48)];
    v23 = *v22;
    v24 = v22[1];
    sub_1A38C048C(*v22, v24);
    sub_1A38C6E54(v15, type metadata accessor for ChromeElementState);
    if (v23)
    {
      v25 = v23(0);
      sub_1A3671090(v23, v24);
      sub_1A38BC75C(v25);
      v27 = v26;

      v48 = v27;
      KeyPath = swift_getKeyPath(byte_1A3A6E740);
      sub_1A38C6F08(a2, v7, type metadata accessor for TopBarMenu);
      v29 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v30 = swift_allocObject();
      sub_1A38C7DC0(v7, v30 + v29, type metadata accessor for TopBarMenu);
      v31 = swift_allocObject();
      *(v31 + 16) = sub_1A38C74E8;
      *(v31 + 24) = v30;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD3D8, &qword_1A3A6E760);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD388, &qword_1A3A6E678);
      v34 = sub_1A38A08F8(&qword_1EB0FD3E0, &qword_1EB0FD3D8, &qword_1A3A6E760, MEMORY[0x1E69E6338]);
      v35 = sub_1A38C7130();
      v36 = v42;
      sub_1A3A31200(&v48, KeyPath, sub_1A38C7570, v31, v32, v33, v34, MEMORY[0x1E69E6540], v35);
      v38 = v45;
      v37 = v46;
      v39 = v47;
      (*(v45 + 32))(v47, v36, v46);
      v40 = 0;
    }

    else
    {
      v40 = 1;
      v37 = v46;
      v39 = v47;
      v38 = v45;
    }

    return (*(v38 + 56))(v39, v40, 1, v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A38C201C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1A3A2FF20();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = sub_1A3A2FEE0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A38C6F08(a1, a3, type metadata accessor for ChromeMenu);
  v15 = a2[2];
  v16 = a2[3];
  v17 = *a2;
  v32 = a2[1];
  v33 = v15;
  v18 = a2[4];
  v19 = *(a2 + 40);
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  if ((v19 & 1) == 0)
  {
    sub_1A3A31C30();
    v20 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v12 + 8))(v14, v11);
    v18 = v37;
  }

  v21 = sub_1A38C75D8(v17, v18);

  KeyPath = swift_getKeyPath(byte_1A3A6E768);
  v23 = type metadata accessor for TopBarMenu.TopBarMenuRow(0);
  *(a3 + v23[10]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
  swift_storeEnumTagMultiPayload();
  v24 = v33;
  *(a3 + v23[5]) = v32;
  v25 = (a3 + v23[6]);
  *v25 = v24;
  v25[1] = v16;
  *(a3 + v23[7]) = v21 & 1;
  v26 = a3 + v23[9];
  type metadata accessor for ChromeViewModel(0);
  sub_1A38C7218(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  *v26 = sub_1A3A2F650();
  *(v26 + 8) = v27 & 1;
  sub_1A3A2FF10();
  v28 = v35;
  v29 = v36;
  (*(v35 + 16))(v34, v10, v36);
  sub_1A38C7218(&qword_1ED996708, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
  v30 = sub_1A3A2F7F0();
  (*(v28 + 8))(v10, v29);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD388, &qword_1A3A6E678);
  *(a3 + *(result + 36)) = v30;
  return result;
}

uint64_t sub_1A38C23D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChromeMenu(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 19;
  v41 = &v42;
  v11 = sub_1A38EDEDC(sub_1A38AA264, v40, a1);
  if (v11)
  {
    v39 = v5;
  }

  else
  {
    v42 = &unk_1F1653CE0;
    MEMORY[0x1EEE9AC00](v11);
    *(&v36 - 2) = &v42;
    v19 = sub_1A38EDEDC(sub_1A38AB6D4, (&v36 - 4), a1);
    if ((v19 & 1) == 0)
    {
      goto LABEL_17;
    }

    v39 = v5;
    swift_getKeyPath(byte_1A3A6E5C0);
    v42 = a2;
    sub_1A38C7218(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    if (*(a2 + 1144))
    {
      goto LABEL_17;
    }
  }

  swift_getKeyPath(byte_1A3A6E508);
  v12 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
  v42 = a2;
  sub_1A38C7218(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  v38 = v12;
  sub_1A3A2F080();

  if (!*(a2 + 1192))
  {
    __break(1u);
    return result;
  }

  sub_1A3A2EA60();
  v14 = sub_1A38BC058(0x13uLL);

  (*(v14 + 56))(v15);

  v16 = &v10[*(v8 + 48)];
  v18 = *v16;
  v17 = v16[1];
  sub_1A38C048C(*v16, v17);
  v19 = sub_1A38C6E54(v10, type metadata accessor for ChromeElementState);
  if (v18)
  {
    v20 = v18(0);
    sub_1A3671090(v18, v17);
    if (*(v20 + 16))
    {
      sub_1A38C6F08(v20 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), v7, type metadata accessor for ChromeMenu);

      v21 = *&v7[*(v4 + 28)];
      sub_1A3A2EA50();
      sub_1A38C6E54(v7, type metadata accessor for ChromeMenu);
      v22 = *(v21 + 16) + 1;
      v23 = v21 + 24;
      while (--v22)
      {
        v24 = v23 + 88;
        v25 = *(v23 + 56);
        v23 += 88;
        if (v25)
        {
          v37 = *(v24 - 80);
          v26 = *(v24 - 56);
          sub_1A3A2EA60();
          v39 = v26;
          sub_1A3A2EA60();
          sub_1A3A2EA60();
          sub_1A3A2EA60();
          sub_1A3A2EA60();

          swift_getKeyPath(byte_1A3A6E5E8);
          v42 = a2;
          sub_1A3A2F080();

          if (*(a2 + 1064))
          {
            v27 = sub_1A3A31810();
            v28 = CAMLocalizedFrameworkString(v27, 0);

            sub_1A3A31850();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD310, &unk_1A3A73030);
            v29 = swift_allocObject();
            *(v29 + 16) = xmmword_1A3A681C0;
            v30 = v37();
            v32 = v31;
            *(v29 + 56) = MEMORY[0x1E69E6158];
            *(v29 + 64) = sub_1A38C6EB4();
            *(v29 + 32) = v30;
            *(v29 + 40) = v32;
            v33 = sub_1A3A31820();

            goto LABEL_19;
          }

          goto LABEL_17;
        }
      }
    }
  }

LABEL_17:
  v42 = &unk_1F1653D10;
  MEMORY[0x1EEE9AC00](v19);
  *(&v36 - 2) = &v42;
  if ((sub_1A38EDEDC(sub_1A38AB6D4, (&v36 - 4), a1) & 1) == 0)
  {
    return 0;
  }

  v34 = sub_1A3A31810();
  v35 = CAMLocalizedFrameworkString(v34, 0);

  sub_1A3A31850();
  v33 = sub_1A3A31820();
LABEL_19:

  return v33;
}

uint64_t sub_1A38C2A30()
{
  v27 = sub_1A3A30090();
  v1 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v26 = (&v25 - v5);
  v6 = sub_1A3A2FEE0();
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);
  sub_1A3A2EA60();
  v12 = v10;
  if ((v11 & 1) == 0)
  {
    sub_1A3A31C30();
    v13 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v25 + 8))(v8, v6);
    v12 = v28;
  }

  v14 = sub_1A38C68F8(v9, v12);

  if (v14 > 1)
  {
    goto LABEL_8;
  }

  sub_1A3A2EA60();
  if ((v11 & 1) == 0)
  {
    sub_1A3A31C30();
    v15 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v25 + 8))(v8, v6);
    v10 = v28;
  }

  sub_1A38C23D4(v9, v10);
  v17 = v16;

  if (v17)
  {

LABEL_8:
    v19 = v26;
    sub_1A38C0ADC(v26);
    v20 = v27;
    (*(v1 + 16))(v3, v19, v27);
    v21 = (*(v1 + 88))(v3, v20);
    v24 = v21 == *MEMORY[0x1E697F658] || v21 == *MEMORY[0x1E697F690] || v21 == *MEMORY[0x1E697F698] || v21 == *MEMORY[0x1E697F680];
    if (v24 || v21 == *MEMORY[0x1E697F650] || v21 == *MEMORY[0x1E697F660] || v21 == *MEMORY[0x1E697F630] || v21 == *MEMORY[0x1E697F670] || v21 == *MEMORY[0x1E697F668] || v21 == *MEMORY[0x1E697F678] || v21 == *MEMORY[0x1E697F640] || v21 == *MEMORY[0x1E697F648])
    {
      return (*(v1 + 8))(v19, v20);
    }

    else
    {
      result = sub_1A3A32070("Fatal error", 11, 2, 0xD00000000000001DLL, 0x80000001A3AA1DE0, "CameraUI/ChromeViewSpec.swift", 29, 2, 332, 0);
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A38C2EC4()
{
  v1 = sub_1A3A30090();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v32 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v33 = (&v32 - v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v32 - v9);
  v11 = sub_1A3A2FEE0();
  v34 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v0;
  v15 = *(v0 + 32);
  v16 = *(v0 + 40);
  sub_1A3A2EA60();
  v17 = v15;
  if ((v16 & 1) == 0)
  {
    sub_1A3A31C30();
    v18 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v34 + 8))(v13, v11);
    v17 = v37;
  }

  sub_1A38C23D4(v14, v17);
  v20 = v19;

  if (v20)
  {

    sub_1A38C0ADC(v10);
    v22 = v35;
    v21 = v36;
    (*(v35 + 16))(v7, v10, v36);
    v23 = (*(v22 + 88))(v7, v21);
    v26 = v23 == *MEMORY[0x1E697F658] || v23 == *MEMORY[0x1E697F690] || v23 == *MEMORY[0x1E697F698] || v23 == *MEMORY[0x1E697F680];
    if (!v26 && v23 != *MEMORY[0x1E697F650] && v23 != *MEMORY[0x1E697F660] && v23 != *MEMORY[0x1E697F630] && v23 != *MEMORY[0x1E697F670] && v23 != *MEMORY[0x1E697F668] && v23 != *MEMORY[0x1E697F678] && v23 != *MEMORY[0x1E697F640] && v23 != *MEMORY[0x1E697F648])
    {
      result = sub_1A3A32070("Fatal error", 11, 2, 0xD00000000000001DLL, 0x80000001A3AA1DE0, "CameraUI/ChromeViewSpec.swift", 29, 2, 371, 0);
LABEL_42:
      __break(1u);
      return result;
    }

    return (*(v22 + 8))(v10, v21);
  }

  sub_1A3A2EA60();
  if ((v16 & 1) == 0)
  {
    sub_1A3A31C30();
    v28 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v34 + 8))(v13, v11);
    v15 = v37;
  }

  v29 = sub_1A38C68F8(v14, v15);

  if (v29 >= 2)
  {
    v10 = v33;
    sub_1A38C0ADC(v33);
    v22 = v35;
    v21 = v36;
    v30 = v32;
    (*(v35 + 16))(v32, v10, v36);
    v31 = (*(v22 + 88))(v30, v21);
    if (v31 != *MEMORY[0x1E697F658] && v31 != *MEMORY[0x1E697F690] && v31 != *MEMORY[0x1E697F698] && v31 != *MEMORY[0x1E697F680] && v31 != *MEMORY[0x1E697F650] && v31 != *MEMORY[0x1E697F660] && v31 != *MEMORY[0x1E697F630] && v31 != *MEMORY[0x1E697F670] && v31 != *MEMORY[0x1E697F668] && v31 != *MEMORY[0x1E697F678] && v31 != *MEMORY[0x1E697F640] && v31 != *MEMORY[0x1E697F648])
    {
      result = sub_1A3A32070("Fatal error", 11, 2, 0xD00000000000001DLL, 0x80000001A3AA1DE0, "CameraUI/ChromeViewSpec.swift", 29, 2, 332, 0);
      goto LABEL_42;
    }

    return (*(v22 + 8))(v10, v21);
  }

  return result;
}

uint64_t sub_1A38C34F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD428, &qword_1A3A6E800);
  v80 = *(v3 - 8);
  v81 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v84 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v83 = &v61 - v6;
  v75 = sub_1A3A304C0();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1A3A2FB90();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1A3A2FEE0();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TopBarMenu.TopBarMenuRow(0);
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD430, &qword_1A3A6E808);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v61 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD438, &qword_1A3A6E810);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v18 = &v61 - v17;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD440, &qword_1A3A6E818);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v82 = &v61 - v21;
  sub_1A38C6F08(a1, &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TopBarMenu.TopBarMenuRow);
  v22 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v65 = v22 + v13;
  v23 = swift_allocObject();
  v66 = v22;
  v72 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A38C7DC0(v72, v23 + v22, type metadata accessor for TopBarMenu.TopBarMenuRow);
  v85 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD450, &qword_1A3A6E820);
  sub_1A38A08F8(&qword_1EB0FD458, &qword_1EB0FD450, &qword_1A3A6E820, MEMORY[0x1E69817F8]);
  sub_1A3A30FE0();
  v24 = (a1 + *(v11 + 44));
  v25 = *v24;
  LOBYTE(v22) = *(v24 + 8);
  sub_1A3A2EA60();
  if ((v22 & 1) == 0)
  {
    sub_1A3A31C30();
    v26 = sub_1A3A305C0();
    sub_1A3A2F270();

    v27 = v62;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v63 + 8))(v27, v64);
    v25 = v87;
  }

  swift_getKeyPath("HViG");
  *&v87 = v25;
  sub_1A38C7218(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  sub_1A3A31480();
  sub_1A3A2F780();
  v28 = &v16[*(v14 + 36)];
  v29 = v88;
  *v28 = v87;
  *(v28 + 1) = v29;
  *(v28 + 2) = v89;
  v30 = v69;
  sub_1A3A2FB80();
  v31 = sub_1A38C7EBC();
  v32 = sub_1A38C7218(&qword_1ED9966C8, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v33 = v71;
  sub_1A3A30960();
  (*(v70 + 8))(v30, v33);
  sub_1A388F740(v16, &qword_1EB0FD430, &qword_1A3A6E808);
  v34 = v73;
  sub_1A3A304A0();
  v86[0] = v14;
  v86[1] = v33;
  v86[2] = v31;
  v86[3] = v32;
  swift_getOpaqueTypeConformance2();
  v35 = v82;
  v36 = v68;
  sub_1A3A30B00();
  (*(v74 + 8))(v34, v75);
  (*(v67 + 8))(v18, v36);
  v37 = type metadata accessor for ChromeMenu(0);
  v86[0] = sub_1A38BCAB8(*(a1 + *(v37 + 28)));
  KeyPath = swift_getKeyPath(" ViG");
  v39 = v72;
  sub_1A38C6F08(a1, v72, type metadata accessor for TopBarMenu.TopBarMenuRow);
  v40 = swift_allocObject();
  sub_1A38C7DC0(v39, v40 + v66, type metadata accessor for TopBarMenu.TopBarMenuRow);
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1A38C8224;
  *(v41 + 24) = v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD478, &qword_1A3A7C1F0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD480, &qword_1A3A6E878);
  v44 = sub_1A38A08F8(&qword_1EB0FD488, &qword_1EB0FD478, &qword_1A3A7C1F0, MEMORY[0x1E69E6338]);
  v45 = sub_1A38C8B44(&qword_1EB0FD490, &qword_1EB0FD480, &qword_1A3A6E878, sub_1A38C8310);
  v46 = v83;
  sub_1A3A31200(v86, KeyPath, sub_1A38C82AC, v41, v42, v43, v44, MEMORY[0x1E69E6540], v45);
  v47 = v77;
  v48 = *(v77 + 16);
  v49 = v76;
  v50 = v35;
  v51 = v78;
  v48(v76, v50, v78);
  v53 = v80;
  v52 = v81;
  v54 = *(v80 + 16);
  v54(v84, v46, v81);
  v55 = v79;
  v48(v79, v49, v51);
  v56 = &v55[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD4E0, &qword_1A3A6E8A0) + 48)];
  v57 = v84;
  v54(v56, v84, v52);
  v58 = *(v53 + 8);
  v58(v83, v52);
  v59 = *(v47 + 8);
  v59(v82, v51);
  v58(v57, v52);
  return (v59)(v49, v51);
}

uint64_t sub_1A38C3FF8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1A3A2FF40();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD5F8, &qword_1A3A6E998);
  return sub_1A38C404C(a1, a2 + *(v4 + 44));
}

uint64_t sub_1A38C404C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD600, &qword_1A3A6E9A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD608, &qword_1A3A6E9A8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD610, &qword_1A3A6E9B0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  *v9 = sub_1A3A305D0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD618, &qword_1A3A6E9B8);
  sub_1A38C42B8(a1, &v9[*(v17 + 44)]);
  sub_1A388F6D8(v15, v12, &qword_1EB0FD608, &qword_1A3A6E9A8);
  sub_1A388F6D8(v9, v6, &qword_1EB0FD600, &qword_1A3A6E9A0);
  sub_1A388F6D8(v12, a2, &qword_1EB0FD608, &qword_1A3A6E9A8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD620, &qword_1A3A6E9C0);
  sub_1A388F6D8(v6, a2 + *(v18 + 48), &qword_1EB0FD600, &qword_1A3A6E9A0);
  v19 = a2 + *(v18 + 64);
  *v19 = 0;
  *(v19 + 8) = 0;
  sub_1A388F740(v9, &qword_1EB0FD600, &qword_1A3A6E9A0);
  sub_1A388F740(v15, &qword_1EB0FD608, &qword_1A3A6E9A8);
  sub_1A388F740(v6, &qword_1EB0FD600, &qword_1A3A6E9A0);
  return sub_1A388F740(v12, &qword_1EB0FD608, &qword_1A3A6E9A8);
}

uint64_t sub_1A38C42B8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD628, &qword_1A3A6E9C8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  v16 = sub_1A3907C58(a1[1], a1[2]);
  sub_1A38C4498(v16, v17, v15);

  v18 = sub_1A38C47E8(*a1);
  sub_1A38C4498(v18, v19, v12);

  sub_1A388F6D8(v15, v9, &qword_1EB0FD628, &qword_1A3A6E9C8);
  sub_1A388F6D8(v12, v6, &qword_1EB0FD628, &qword_1A3A6E9C8);
  sub_1A388F6D8(v9, a2, &qword_1EB0FD628, &qword_1A3A6E9C8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD630, &qword_1A3A6E9D0);
  sub_1A388F6D8(v6, a2 + *(v20 + 48), &qword_1EB0FD628, &qword_1A3A6E9C8);
  sub_1A388F740(v12, &qword_1EB0FD628, &qword_1A3A6E9C8);
  sub_1A388F740(v15, &qword_1EB0FD628, &qword_1A3A6E9C8);
  sub_1A388F740(v6, &qword_1EB0FD628, &qword_1A3A6E9C8);
  return sub_1A388F740(v9, &qword_1EB0FD628, &qword_1A3A6E9C8);
}

uint64_t sub_1A38C4498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v38 = sub_1A3A30090();
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD638, &qword_1A3A6E9D8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v36 - v8;
  v42 = a1;
  v43 = a2;
  sub_1A389FD78();
  sub_1A3A2EA50();
  v9 = sub_1A3A308E0();
  v11 = v10;
  v13 = v12;
  sub_1A3A30DD0();
  v14 = sub_1A3A30860();
  v36 = v16;
  v37 = v15;
  v18 = v17;

  sub_1A389F1B4(v9, v11, v13 & 1);

  sub_1A3A30740();
  v20 = v19;
  sub_1A38C6590(v7);
  sub_1A3912000(v7);
  (*(v5 + 8))(v7, v38);
  sub_1A391A414(v20);
  v21 = CEKFontOfSizeWeightStyle();
  sub_1A3A307B0();
  v22 = v37;
  v23 = sub_1A3A308A0();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_1A389F1B4(v14, v22, v18 & 1);

  v42 = v23;
  v43 = v25;
  LOBYTE(v9) = v27 & 1;
  v44 = v27 & 1;
  v45 = v29;
  v30 = v39;
  sub_1A3A30A80();
  v31 = v40;
  sub_1A389F1B4(v23, v25, v9);

  KeyPath = swift_getKeyPath("\bWiG");
  v33 = v30 + *(v31 + 36);
  *v33 = KeyPath;
  *(v33 + 8) = 2;
  *(v33 + 16) = 0;
  if (qword_1EB0FC100 != -1)
  {
    swift_once();
  }

  sub_1A38C8D3C();
  v34 = v41;
  sub_1A3A30CC0();
  sub_1A388F740(v30, &qword_1EB0FD638, &qword_1A3A6E9D8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD628, &qword_1A3A6E9C8);
  *(v34 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1A38C47E8(unint64_t a1)
{
  if (a1 > 0x22)
  {
    if ((sub_1A39FCD24(&unk_1F1653CE0, a1) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = sub_1A3A31810();
    v6 = CAMLocalizedFrameworkString(v5, 0);

    v7 = sub_1A3A31850();
    return v7;
  }

  if (((1 << a1) & 0x7CFF7FFFFLL) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);

  return sub_1A3907C58(v2, v3);
}

uint64_t sub_1A38C48EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a1;
  v69 = a4;
  v67 = sub_1A3A30050();
  v68 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1A3A2FB90();
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TopBarMenu.TopBarMenuRow(0);
  v10 = *(v9 - 8);
  v64 = v9 - 8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD4C0, &qword_1A3A6E898);
  v55 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v14 = &v50 - v13;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD4B8, &qword_1A3A6E890);
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v16 = &v50 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD4E8, &qword_1A3A6E8A8);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v52 = &v50 - v17;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD4B0, &qword_1A3A6E888) - 8;
  MEMORY[0x1EEE9AC00](v54);
  v19 = &v50 - v18;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD4A0, &qword_1A3A6E880);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v50 - v20;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD480, &qword_1A3A6E878);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v50 - v21;
  sub_1A38C6F08(a3, v12, type metadata accessor for TopBarMenu.TopBarMenuRow);
  v22 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v23 = (v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_1A38C7DC0(v12, v24 + v22, type metadata accessor for TopBarMenu.TopBarMenuRow);
  v25 = v24 + v23;
  v26 = *(a2 + 48);
  *(v25 + 32) = *(a2 + 32);
  *(v25 + 48) = v26;
  *(v25 + 64) = *(a2 + 64);
  *(v25 + 80) = *(a2 + 80);
  v27 = *(a2 + 16);
  *v25 = *a2;
  *(v25 + 16) = v27;
  v72 = a2;
  v73 = a3;
  sub_1A38BEE70(a2, v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD4F0, &qword_1A3A6E8B0);
  sub_1A38C86B0();
  sub_1A3A30FE0();
  v28 = v8;
  sub_1A3A2FB80();
  v29 = sub_1A38A08F8(&qword_1EB0FD4C8, &qword_1EB0FD4C0, &qword_1A3A6E898, MEMORY[0x1E697D680]);
  v30 = sub_1A38C7218(&qword_1ED9966C8, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v31 = v16;
  v32 = v53;
  v33 = v60;
  sub_1A3A30960();
  (*(v61 + 8))(v28, v33);
  v34 = v14;
  v35 = v32;
  v36 = v50;
  (*(v55 + 8))(v34, v35);
  v70 = a2;
  v71 = a3;
  v74[0] = v35;
  v74[1] = v33;
  v74[2] = v29;
  v74[3] = v30;
  v37 = 1;
  swift_getOpaqueTypeConformance2();
  v38 = v52;
  v39 = v58;
  sub_1A3A30BD0();
  (*(v59 + 8))(v31, v39);
  v40 = *(a3 + *(v64 + 36));
  v41 = v51;
  if ((v40 & (v65 > 0)) != 0)
  {
    v37 = 2;
  }

  (*(v56 + 32))(v19, v38, v57);
  v42 = &v19[*(v54 + 44)];
  *v42 = v37;
  v42[8] = 0;
  v43 = sub_1A3A300C0();
  sub_1A388F670(v19, v36, &qword_1EB0FD4B0, &qword_1A3A6E888);
  *(v36 + *(v41 + 36)) = v43;
  if (*(a2 + 48))
  {
    v44 = v66;
    sub_1A3A30020();
    v45 = v67;
  }

  else
  {
    v74[0] = MEMORY[0x1E69E7CC0];
    sub_1A38C7218(&qword_1ED996BA8, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD510, &qword_1A3A6E8C0);
    sub_1A38A08F8(&qword_1ED996BB0, &qword_1EB0FD510, &qword_1A3A6E8C0, MEMORY[0x1E69E6328]);
    v44 = v66;
    v46 = v67;
    sub_1A3A31E80();
    v45 = v46;
  }

  sub_1A38C8310();
  v47 = v62;
  sub_1A3A30B50();
  (*(v68 + 8))(v44, v45);
  v48 = sub_1A388F740(v36, &qword_1EB0FD4A0, &qword_1A3A6E880);
  (*a2)(v48);

  sub_1A3A2FA40();
  return sub_1A388F740(v47, &qword_1EB0FD480, &qword_1A3A6E878);
}

double sub_1A38C5240@<D0>(uint64_t (**a1)(uint64_t)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*a1)();
  v8 = v7;
  v9 = (a1[2])();
  v11 = v10;
  *a3 = sub_1A3A2FF40();
  *(a3 + 8) = 0x3FF0000000000000;
  *(a3 + 16) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD518, &qword_1A3A6E8C8);
  sub_1A38C5358(a2, a1, v6, v8, v9, v11, (a3 + *(v12 + 44)));

  sub_1A3A31490();
  sub_1A3A2F780();
  v13 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD4F0, &qword_1A3A6E8B0) + 36));
  *v13 = v15;
  v13[1] = v16;
  result = *&v17;
  v13[2] = v17;
  return result;
}

uint64_t sub_1A38C5358@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v168 = a6;
  v146 = a5;
  v191 = a4;
  v177 = a3;
  v188 = a1;
  v174 = a7;
  v9 = sub_1A3A2FC90();
  v148 = *(v9 - 8);
  v149 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v147 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD520, &unk_1A3A75AE0);
  v170 = *(v11 - 8);
  v171 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v150 = &v144 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD528, &qword_1A3A6E8D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v173 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v172 = &v144 - v16;
  v178 = sub_1A3A30090();
  v187 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v176 = (&v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD530, &qword_1A3A6E8D8);
  v162 = *(v18 - 8);
  v163 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v153 = &v144 - v19;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD538, &qword_1A3A6E8E0) - 8;
  MEMORY[0x1EEE9AC00](v155);
  v152 = &v144 - v20;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD540, &qword_1A3A6E8E8) - 8;
  MEMORY[0x1EEE9AC00](v160);
  v157 = &v144 - v21;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD548, &qword_1A3A6E8F0);
  MEMORY[0x1EEE9AC00](v159);
  v154 = &v144 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD550, &qword_1A3A6E8F8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v156 = &v144 - v24;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD558, &qword_1A3A6E900);
  MEMORY[0x1EEE9AC00](v161);
  v158 = &v144 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD560, &qword_1A3A6E908);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v165 = &v144 - v27;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD568, &qword_1A3A6E910) - 8;
  MEMORY[0x1EEE9AC00](v166);
  v169 = &v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v164 = &v144 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v189 = &v144 - v32;
  v33 = sub_1A3A30EC0();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v144 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1A3A2F1E0();
  v38 = *(v37 - 8);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = (&v144 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v41 = 0x662E656C63726963;
  v41[1] = 0xEB000000006C6C69;
  (*(v38 + 104))(v41, *MEMORY[0x1E69C1D38], v37, v39);
  sub_1A3A2F200();
  (*(v38 + 8))(v41, v37);
  (*(v34 + 104))(v36, *MEMORY[0x1E6981630], v33);
  v186 = sub_1A3A30F00();

  (*(v34 + 8))(v36, v33);
  sub_1A3A31480();
  sub_1A3A2F780();
  v179 = v217;
  LODWORD(v37) = v218;
  v181 = v219;
  LODWORD(v33) = v220;
  v184 = v222;
  v185 = v221;
  v183 = sub_1A3A30650();
  sub_1A3A2F520();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v180 = v37;
  LOBYTE(v198) = v37;
  v182 = v33;
  LOBYTE(v192) = v33;
  v211 = 0;
  v151 = a2;
  v190 = *(a2 + 48);
  v167 = *(a2 + 49);
  *&v198 = a3;
  *(&v198 + 1) = v191;
  v175 = sub_1A389FD78();
  sub_1A3A2EA50();
  v50 = sub_1A3A308E0();
  v52 = v51;
  LOBYTE(v34) = v53;
  sub_1A3A30740();
  v55 = v54;
  v56 = v176;
  sub_1A38C6590(v176);
  sub_1A391163C(v56);
  v57 = *(v187 + 8);
  v187 += 8;
  v145 = v57;
  v57(v56, v178);
  sub_1A391A414(v55);
  v58 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
  sub_1A3A307B0();
  v59 = sub_1A3A308A0();
  v61 = v60;
  v63 = v62;
  v65 = v64;

  sub_1A389F1B4(v50, v52, v34 & 1);

  v66 = v177;
  if (sub_1A3A318C0() <= 3)
  {
    v67 = 1;
  }

  else
  {
    v67 = 2;
  }

  KeyPath = swift_getKeyPath("\bWiG");
  *&v198 = v59;
  *(&v198 + 1) = v61;
  LOBYTE(v199) = v63 & 1;
  *(&v199 + 1) = v65;
  *v200 = KeyPath;
  *&v200[8] = v67;
  v200[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD570, &unk_1A3A7C360);
  sub_1A38C8770();
  v69 = v153;
  sub_1A3A30A80();
  sub_1A389F1B4(v59, v61, v63 & 1);

  v70 = v152;
  v71 = &v152[*(v155 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCCA8, &qword_1A3A6D9A0);
  sub_1A3A2FC60();
  *v71 = swift_getKeyPath("hUiG");
  (*(v162 + 32))(v70, v69, v163);
  v72 = sub_1A3A314F0();
  v73 = v70;
  v74 = v157;
  sub_1A388F670(v73, v157, &qword_1EB0FD538, &qword_1A3A6E8E0);
  v75 = (v74 + *(v160 + 44));
  *v75 = v72;
  v75[1] = v66;
  v75[2] = v191;
  v76 = v154;
  sub_1A388F670(v74, v154, &qword_1EB0FD540, &qword_1A3A6E8E8);
  *(v76 + *(v159 + 36)) = v190;
  v77 = v151;
  v78 = v151[9];
  v79 = sub_1A3A2EA50();
  *&v198 = v78(v79);
  *(&v198 + 1) = v80;
  sub_1A38C8828();
  v81 = v156;
  sub_1A3A30A90();

  sub_1A388F740(v76, &qword_1EB0FD548, &qword_1A3A6E8F0);
  v82 = swift_getKeyPath("8UiG");
  v83 = v158;
  v84 = sub_1A388F670(v81, v158, &qword_1EB0FD550, &qword_1A3A6E8F8);
  v85 = v83 + *(v161 + 36);
  *v85 = v82;
  *(v85 + 8) = 1;
  v87 = v188[1];
  v86 = v188[2];
  v88 = v77;
  v89 = (*v77)(v84);
  v91 = v90;
  v92 = (v88[2])();
  if (v93)
  {
    v94 = v92;
  }

  else
  {
    v94 = 0;
  }

  if (v93)
  {
    v95 = v93;
  }

  else
  {
    v95 = 0xE000000000000000;
  }

  *&v198 = v89;
  *(&v198 + 1) = v91;
  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](v94, v95);

  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x6E6F74747542, 0xE600000000000000);

  v96 = v198;
  *&v198 = v87;
  *(&v198 + 1) = v86;
  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](v96, *(&v96 + 1));

  sub_1A38C8A60();
  v97 = v165;
  sub_1A3A30B70();
  v98 = v168;

  sub_1A388F740(v83, &qword_1EB0FD558, &qword_1A3A6E900);
  v99 = v164;
  sub_1A388F670(v97, v164, &qword_1EB0FD560, &qword_1A3A6E908);
  *(v99 + *(v166 + 44)) = 256;
  sub_1A388F670(v99, v189, &qword_1EB0FD568, &qword_1A3A6E910);
  if (!v98)
  {
    goto LABEL_13;
  }

  v100 = *v188;
  sub_1A3A2EA50();
  if (sub_1A3A018A8(v100, 0x15uLL))
  {

LABEL_13:
    v101 = v172;
    (*(v170 + 56))(v172, 1, 1, v171);
    goto LABEL_15;
  }

  *&v198 = v146;
  *(&v198 + 1) = v98;
  v102 = sub_1A3A308E0();
  v104 = v103;
  v106 = v105;
  sub_1A3A30740();
  v108 = v107;
  v109 = v176;
  sub_1A38C6590(v176);
  sub_1A3912000(v109);
  v110 = v145;
  v145(v109, v178);
  sub_1A391A414(v108);
  v111 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
  sub_1A3A307B0();
  v175 = sub_1A3A308A0();
  v168 = v112;
  LODWORD(v165) = v113;
  v166 = v114;

  sub_1A389F1B4(v102, v104, v106 & 1);

  sub_1A38C6590(v109);
  sub_1A391163C(v109);
  v115 = v178;
  v110(v109, v178);
  sub_1A38C6590(v109);
  sub_1A3912000(v109);
  v110(v109, v115);
  LOBYTE(v104) = v165;
  v116 = v175;
  v117 = v168;
  v118 = sub_1A3A30850();
  v120 = v119;
  v122 = v121;
  sub_1A389F1B4(v116, v117, v104 & 1);

  v123 = v147;
  sub_1A3A2FC60();
  v124 = sub_1A3A30890();
  v126 = v125;
  LOBYTE(v117) = v127;
  v129 = v128;
  sub_1A389F1B4(v118, v120, v122 & 1);

  (*(v148 + 8))(v123, v149);
  v130 = sub_1A3A314F0();
  v211 = v117 & 1;
  *&v192 = v124;
  *(&v192 + 1) = v126;
  LOBYTE(v193) = v117 & 1;
  *(&v193 + 1) = v129;
  *&v194[0] = v130;
  *(&v194[0] + 1) = v177;
  *&v194[1] = v191;
  BYTE8(v194[1]) = v190;
  sub_1A3A2EA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD5D8, &qword_1A3A6E990);
  sub_1A38C8BF8();
  v131 = v150;
  sub_1A3A30AD0();
  v198 = v192;
  v199 = v193;
  *v200 = v194[0];
  *&v200[9] = *(v194 + 9);
  sub_1A388F740(&v198, &qword_1EB0FD5D8, &qword_1A3A6E990);
  v101 = v172;
  sub_1A388F670(v131, v172, &qword_1EB0FD520, &unk_1A3A75AE0);
  (*(v170 + 56))(v101, 0, 1, v171);
LABEL_15:
  if (v167)
  {
    v132 = 1.0;
  }

  else
  {
    v132 = 0.0;
  }

  v133 = v169;
  sub_1A388F6D8(v189, v169, &qword_1EB0FD568, &qword_1A3A6E910);
  v134 = v173;
  sub_1A388F6D8(v101, v173, &qword_1EB0FD528, &qword_1A3A6E8D0);
  *&v192 = v186;
  *(&v192 + 1) = v179;
  LOBYTE(v193) = v180;
  *(&v193 + 1) = *v214;
  DWORD1(v193) = *&v214[3];
  *(&v193 + 1) = v181;
  LOBYTE(v194[0]) = v182;
  *(v194 + 1) = *v213;
  DWORD1(v194[0]) = *&v213[3];
  *(&v194[0] + 1) = v185;
  *&v194[1] = v184;
  BYTE8(v194[1]) = v183;
  HIDWORD(v194[1]) = *&v212[3];
  *(&v194[1] + 9) = *v212;
  *&v195 = v43;
  *(&v195 + 1) = v45;
  *&v196 = v47;
  *(&v196 + 1) = v49;
  LOBYTE(v197) = 0;
  BYTE1(v197) = v190;
  *(&v197 + 2) = v215;
  WORD3(v197) = v216;
  *(&v197 + 1) = v132;
  v135 = v193;
  v136 = v174;
  *v174 = v192;
  v136[1] = v135;
  v137 = v194[0];
  v138 = v194[1];
  v139 = v197;
  v136[5] = v196;
  v136[6] = v139;
  v140 = v195;
  v136[3] = v138;
  v136[4] = v140;
  v136[2] = v137;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD5C8, &qword_1A3A6E980);
  sub_1A388F6D8(v133, v136 + v141[12], &qword_1EB0FD568, &qword_1A3A6E910);
  sub_1A388F6D8(v134, v136 + v141[16], &qword_1EB0FD528, &qword_1A3A6E8D0);
  v142 = v136 + v141[20];
  *v142 = 0;
  v142[8] = 0;
  sub_1A388F6D8(&v192, &v198, &qword_1EB0FD5D0, &qword_1A3A6E988);
  sub_1A388F740(v101, &qword_1EB0FD528, &qword_1A3A6E8D0);
  sub_1A388F740(v189, &qword_1EB0FD568, &qword_1A3A6E910);
  sub_1A388F740(v134, &qword_1EB0FD528, &qword_1A3A6E8D0);
  sub_1A388F740(v133, &qword_1EB0FD568, &qword_1A3A6E910);
  *&v198 = v186;
  *(&v198 + 1) = v179;
  LOBYTE(v199) = v180;
  *(&v199 + 1) = *v214;
  DWORD1(v199) = *&v214[3];
  *(&v199 + 1) = v181;
  v200[0] = v182;
  *&v200[1] = *v213;
  *&v200[4] = *&v213[3];
  *&v200[8] = v185;
  *&v200[16] = v184;
  v200[24] = v183;
  *v201 = *v212;
  *&v201[3] = *&v212[3];
  v202 = v43;
  v203 = v45;
  v204 = v47;
  v205 = v49;
  v206 = 0;
  v207 = v190;
  v208 = v215;
  v209 = v216;
  v210 = v132;
  return sub_1A388F740(&v198, &qword_1EB0FD5D0, &qword_1A3A6E988);
}

uint64_t sub_1A38C6590@<X0>(void *a1@<X8>)
{
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TopBarMenu.TopBarMenuRow(0);
  sub_1A388F6D8(v1 + *(v10 + 40), v9, &qword_1EB0FCE78, &unk_1A3A6F1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A3A30090();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A3A31C30();
    v13 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A38C6798@<X0>(uint64_t (**a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  (*a1)();
  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](32, 0xE100000000000000);

  if (sub_1A3A018A8(*a2, 0x15uLL))
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  else
  {
    v8 = a1[2]();
    if (v9)
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }

    if (v9)
    {
      v7 = v9;
    }

    else
    {
      v7 = 0xE000000000000000;
    }
  }

  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](v6, v7);

  sub_1A389FD78();
  result = sub_1A3A308E0();
  *a3 = result;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12 & 1;
  *(a3 + 24) = v13;
  return result;
}

uint64_t sub_1A38C68A4@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD420, &qword_1A3A6E7F8);
  return sub_1A38C34F0(v1, (a1 + *(v3 + 36)));
}

uint64_t sub_1A38C68F8(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v40 = type metadata accessor for ChromeElementState(0);
  *&v3 = MEMORY[0x1EEE9AC00](v40).n128_u64[0];
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0;
  v6 = *(a1 + 16);
  v41 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
  v7 = (a1 + 32);
  while (1)
  {
    if (!v6)
    {
      return v5;
    }

    v11 = *v7;
    swift_getKeyPath(byte_1A3A6E508, v3);
    v12 = v42;
    v44 = v42;
    sub_1A38A8F64(v11);
    sub_1A38C7218(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    v13 = *(v12 + 1192);
    if (!v13)
    {
      break;
    }

    v45 = v11;
    swift_beginAccess();
    v14 = *(v13 + 32);
    v15 = *(v14 + 16);
    sub_1A3A2EA60();
    if (!v15 || (v16 = sub_1A3A1B72C(v11), (v17 & 1) == 0))
    {
      swift_endAccess();
      v18 = (*(v13 + 16))(&v45);
      swift_beginAccess();
      sub_1A38A8F64(v11);
      sub_1A3A2EA60();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = *(v13 + 32);
      v20 = v43;
      *(v13 + 32) = 0x8000000000000000;
      v22 = sub_1A3A1B72C(v11);
      v23 = v20[2];
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_25;
      }

      v26 = v21;
      if (v20[3] >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v29 = v43;
          if ((v21 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_1A3A17ED4();
          v29 = v43;
          if ((v26 & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        sub_1A3A16B64(v25, isUniquelyReferenced_nonNull_native);
        v27 = sub_1A3A1B72C(v11);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_28;
        }

        v22 = v27;
        v29 = v43;
        if ((v26 & 1) == 0)
        {
LABEL_18:
          v29[(v22 >> 6) + 8] |= 1 << v22;
          *(v29[6] + 8 * v22) = v11;
          *(v29[7] + 8 * v22) = v18;
          v30 = v29[2];
          v10 = __OFADD__(v30, 1);
          v31 = v30 + 1;
          if (v10)
          {
            goto LABEL_26;
          }

          v29[2] = v31;
          goto LABEL_20;
        }
      }

      *(v29[7] + 8 * v22) = v18;

      sub_1A3890F2C(v11);
LABEL_20:
      *(v13 + 32) = v29;
      swift_endAccess();
      goto LABEL_21;
    }

    v18 = *(*(v14 + 56) + 8 * v16);
    swift_endAccess();
    sub_1A3A2EA60();
LABEL_21:

    v33 = v39;
    (*(v18 + 56))(v32);

    v34 = (v33 + *(v40 + 48));
    v36 = *v34;
    v35 = v34[1];
    sub_1A38C048C(*v34, v35);
    sub_1A38C6E54(v33, type metadata accessor for ChromeElementState);
    if (v36)
    {
      v8 = v36(0);
      sub_1A3890F2C(v11);
      sub_1A3671090(v36, v35);
      v9 = *(v8 + 16);
    }

    else
    {
      sub_1A3890F2C(v11);
      v9 = 0;
    }

    ++v7;
    --v6;
    v10 = __OFADD__(v5, v9);
    v5 += v9;
    if (v10)
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_28:
  result = sub_1A3A32220();
  __break(1u);
  return result;
}

void sub_1A38C6CE8(uint64_t a1)
{
  sub_1A38C6DE8();
  if (v1 <= 0x3F)
  {
    sub_1A38BF120();
    if (v2 <= 0x3F)
    {
      sub_1A38AB898(319, &qword_1ED9967B8, type metadata accessor for ChromeViewModel);
      if (v3 <= 0x3F)
      {
        sub_1A38AB898(319, qword_1ED9967C0, MEMORY[0x1E697F6A0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A38C6DE8()
{
  if (!qword_1ED996940)
  {
    v0 = sub_1A3A31A40();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED996940);
    }
  }
}

uint64_t sub_1A38C6E54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A38C6EB4()
{
  result = qword_1EB0FD318;
  if (!qword_1EB0FD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD318);
  }

  return result;
}

uint64_t sub_1A38C6F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A38C6F70@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TopBarMenu(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A38C1A98(a1, v6, a2);
}

unint64_t sub_1A38C7028()
{
  result = qword_1EB0FD368;
  if (!qword_1EB0FD368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD358, &qword_1A3A6E668);
    sub_1A38C70AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD368);
  }

  return result;
}

unint64_t sub_1A38C70AC()
{
  result = qword_1EB0FD370;
  if (!qword_1EB0FD370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD378, &qword_1A3A6E670);
    sub_1A38C7130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD370);
  }

  return result;
}

unint64_t sub_1A38C7130()
{
  result = qword_1EB0FD380;
  if (!qword_1EB0FD380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD388, &qword_1A3A6E678);
    sub_1A38C7218(&qword_1EB0FD390, type metadata accessor for TopBarMenu.TopBarMenuRow, &unk_1A3A6E7A8);
    sub_1A38A08F8(&qword_1ED9966F8, &qword_1EB0FC9F0, &qword_1A3A6D300, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD380);
  }

  return result;
}

uint64_t sub_1A38C7218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A38C7280()
{
  result = qword_1EB0FD3B0;
  if (!qword_1EB0FD3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD3A8, &qword_1A3A6E6C0);
    sub_1A38C7338();
    sub_1A38A08F8(&qword_1ED9966A8, &qword_1EB0FC678, &qword_1A3A82E70, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD3B0);
  }

  return result;
}

unint64_t sub_1A38C7338()
{
  result = qword_1ED996BA0;
  if (!qword_1ED996BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD3B8, &qword_1A3A7B940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996BA0);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for TopBarMenu(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A3A30090();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A38C74E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TopBarMenu(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1A38C201C(a1, v6, a2);
}

uint64_t sub_1A38C7570(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD1C8, &qword_1A3A6E3C8);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_1A38C75D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChromeElementState(0);
  *&v5 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(a1 + 16);
  if (!v44)
  {
    return 1;
  }

  v8 = 0;
  v45 = a1 + 32;
  v46 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
  while (1)
  {
    v9 = *(v45 + 8 * v8);
    swift_getKeyPath(byte_1A3A6E508, v5);
    v49 = a2;
    sub_1A38A8F64(v9);
    sub_1A38C7218(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    v10 = *(a2 + 1192);
    if (!v10)
    {
      goto LABEL_30;
    }

    v50 = v9;
    swift_beginAccess();
    v11 = *(v10 + 32);
    v12 = *(v11 + 16);
    sub_1A3A2EA60();
    if (v12)
    {
      v13 = sub_1A3A1B72C(v9);
      if (v14)
      {
        v15 = *(*(v11 + 56) + 8 * v13);
        swift_endAccess();
        sub_1A3A2EA60();
        sub_1A3890F2C(v9);
        goto LABEL_21;
      }
    }

    v47 = v8;
    v16 = v7;
    v17 = a2;
    v18 = v4;
    swift_endAccess();
    v15 = (*(v10 + 16))(&v50);
    swift_beginAccess();
    sub_1A3A2EA60();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v10 + 32);
    v20 = v48;
    *(v10 + 32) = 0x8000000000000000;
    v22 = sub_1A3A1B72C(v9);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      result = sub_1A3A32220();
      __break(1u);
      return result;
    }

    v26 = v21;
    if (v20[3] >= v25)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v29 = v48;
        if ((v21 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_1A3A17ED4();
        v29 = v48;
        if ((v26 & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_1A3A16B64(v25, isUniquelyReferenced_nonNull_native);
      v27 = sub_1A3A1B72C(v9);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_31;
      }

      v22 = v27;
      v29 = v48;
      if ((v26 & 1) == 0)
      {
LABEL_18:
        v29[(v22 >> 6) + 8] |= 1 << v22;
        *(v29[6] + 8 * v22) = v9;
        *(v29[7] + 8 * v22) = v15;
        v30 = v29[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_29;
        }

        v29[2] = v32;
        goto LABEL_20;
      }
    }

    *(v29[7] + 8 * v22) = v15;

    sub_1A3890F2C(v9);
LABEL_20:
    *(v10 + 32) = v29;
    swift_endAccess();
    v4 = v18;
    a2 = v17;
    v7 = v16;
    v8 = v47;
LABEL_21:

    (*(v15 + 56))(v33);

    v34 = &v7[*(v4 + 48)];
    v35 = *v34;
    v36 = v34[1];
    sub_1A38C048C(*v34, v36);
    sub_1A38C6E54(v7, type metadata accessor for ChromeElementState);
    if (v35)
    {
      break;
    }

LABEL_4:
    if (++v8 == v44)
    {
      return 1;
    }
  }

  v37 = v35(0);
  sub_1A3671090(v35, v36);
  v38 = 0;
  v39 = *(v37 + 16);
  do
  {
    if (v39 == v38)
    {

      goto LABEL_4;
    }

    v40 = type metadata accessor for ChromeMenu(0);
    v41 = v37 + ((*(*(v40 - 8) + 80) + 32) & ~*(*(v40 - 8) + 80)) + *(*(v40 - 8) + 72) * v38++;
  }

  while (*(*(v41 + *(v40 + 28)) + 16) < 3uLL);

  return 0;
}

void sub_1A38C7A38(uint64_t a1)
{
  type metadata accessor for ChromeMenu(319);
  if (v1 <= 0x3F)
  {
    sub_1A38BF120();
    if (v2 <= 0x3F)
    {
      sub_1A38AB898(319, &qword_1ED9967B8, type metadata accessor for ChromeViewModel);
      if (v3 <= 0x3F)
      {
        sub_1A38AB898(319, qword_1ED9967C0, MEMORY[0x1E697F6A0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A38C7B48()
{
  result = qword_1EB0FD3F8;
  if (!qword_1EB0FD3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD308, &qword_1A3A6E5B8);
    sub_1A38C7BD4();
    sub_1A38A8EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD3F8);
  }

  return result;
}

unint64_t sub_1A38C7BD4()
{
  result = qword_1EB0FD400;
  if (!qword_1EB0FD400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD2F8, &qword_1A3A6E5A8);
    sub_1A38C7C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD400);
  }

  return result;
}

unint64_t sub_1A38C7C60()
{
  result = qword_1EB0FD408;
  if (!qword_1EB0FD408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD2F0, &qword_1A3A6E5A0);
    sub_1A38C7CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD408);
  }

  return result;
}

unint64_t sub_1A38C7CEC()
{
  result = qword_1EB0FD410;
  if (!qword_1EB0FD410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD2E8, &qword_1A3A6E598);
    sub_1A38A08F8(&qword_1EB0FD418, &qword_1EB0FD2E0, &qword_1A3A6E590, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD410);
  }

  return result;
}

uint64_t sub_1A38C7DC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A38C7E28()
{
  v1 = type metadata accessor for TopBarMenu.TopBarMenuRow(0);
  v2 = *(v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  memset(v4, 0, sizeof(v4));
  v5 = 0;
  return v2(v4);
}

unint64_t sub_1A38C7EBC()
{
  result = qword_1EB0FD460;
  if (!qword_1EB0FD460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD430, &qword_1A3A6E808);
    sub_1A38A08F8(&qword_1EB0FD468, &qword_1EB0FD470, &qword_1A3A6E850, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD460);
  }

  return result;
}

uint64_t objectdestroy_53Tm()
{
  v1 = type metadata accessor for TopBarMenu.TopBarMenuRow(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  if (*v2 >= 0x23uLL)
  {
  }

  v3 = &v2[*(type metadata accessor for ChromeMenu(0) + 24)];
  type metadata accessor for ChromeElementIcon(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {

          if (*(v3 + 3))
          {
          }
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v3);
      }

      goto LABEL_22;
    }

    if (EnumCaseMultiPayload != 2)
    {

      goto LABEL_22;
    }

LABEL_21:

    goto LABEL_22;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
      }

      goto LABEL_22;
    }

LABEL_18:

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 4)
  {

    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD448, &unk_1A3A75AB0) + 64);
    v6 = sub_1A3A30090();
    (*(*(v6 - 8) + 8))(&v3[v5], v6);
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 5)
  {
    goto LABEL_18;
  }

LABEL_22:

  v7 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A3A30090();
    (*(*(v8 - 8) + 8))(&v2[v7], v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A38C8224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for TopBarMenu.TopBarMenuRow(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1A38C48EC(a1, a2, v8, a3);
}

uint64_t sub_1A38C82AC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 7);
  v7[2] = *(a1 + 5);
  v7[3] = v4;
  v7[4] = *(a1 + 9);
  v8 = a1[11];
  v5 = *(a1 + 3);
  v7[0] = *(a1 + 1);
  v7[1] = v5;
  return v2(v3, v7);
}

unint64_t sub_1A38C8310()
{
  result = qword_1EB0FD498;
  if (!qword_1EB0FD498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD4A0, &qword_1A3A6E880);
    sub_1A38C839C();
    sub_1A38C858C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD498);
  }

  return result;
}

unint64_t sub_1A38C839C()
{
  result = qword_1EB0FD4A8;
  if (!qword_1EB0FD4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD4B0, &qword_1A3A6E888);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD4B8, &qword_1A3A6E890);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD4C0, &qword_1A3A6E898);
    sub_1A3A2FB90();
    sub_1A38A08F8(&qword_1EB0FD4C8, &qword_1EB0FD4C0, &qword_1A3A6E898, MEMORY[0x1E697D680]);
    sub_1A38C7218(&qword_1ED9966C8, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A38C8538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD4A8);
  }

  return result;
}

unint64_t sub_1A38C8538()
{
  result = qword_1EB0FD4D0;
  if (!qword_1EB0FD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD4D0);
  }

  return result;
}

unint64_t sub_1A38C858C()
{
  result = qword_1EB0FD4D8;
  if (!qword_1EB0FD4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD4D8);
  }

  return result;
}

uint64_t sub_1A38C85E0()
{
  v1 = type metadata accessor for TopBarMenu.TopBarMenuRow(0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + *(v1 + 24) + v3);
  v5 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v5 + 48);
  v9[2] = *(v5 + 32);
  v9[3] = v6;
  v9[4] = *(v5 + 64);
  v10 = *(v5 + 80);
  v7 = *(v5 + 16);
  v9[0] = *v5;
  v9[1] = v7;
  return v4(v9);
}

unint64_t sub_1A38C86B0()
{
  result = qword_1EB0FD4F8;
  if (!qword_1EB0FD4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD4F0, &qword_1A3A6E8B0);
    sub_1A38A08F8(&qword_1EB0FD500, &qword_1EB0FD508, &qword_1A3A6E8B8, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD4F8);
  }

  return result;
}

unint64_t sub_1A38C8770()
{
  result = qword_1ED996BB8;
  if (!qword_1ED996BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD570, &unk_1A3A7C360);
    sub_1A38A08F8(&qword_1ED996BC0, &qword_1EB0FD578, &unk_1A3A7B890, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996BB8);
  }

  return result;
}

unint64_t sub_1A38C8828()
{
  result = qword_1EB0FD580;
  if (!qword_1EB0FD580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD548, &qword_1A3A6E8F0);
    sub_1A38C88B4();
    sub_1A38C00C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD580);
  }

  return result;
}

unint64_t sub_1A38C88B4()
{
  result = qword_1EB0FD588;
  if (!qword_1EB0FD588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD540, &qword_1A3A6E8E8);
    sub_1A38C896C();
    sub_1A38A08F8(&qword_1EB0FD598, &qword_1EB0FD5A0, &qword_1A3A6E948, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD588);
  }

  return result;
}

unint64_t sub_1A38C896C()
{
  result = qword_1EB0FD590;
  if (!qword_1EB0FD590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD538, &qword_1A3A6E8E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD570, &unk_1A3A7C360);
    sub_1A38C8770();
    swift_getOpaqueTypeConformance2();
    sub_1A38A08F8(&qword_1ED996738, &qword_1EB0FCCA8, &qword_1A3A6D9A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD590);
  }

  return result;
}

unint64_t sub_1A38C8A60()
{
  result = qword_1EB0FD5A8;
  if (!qword_1EB0FD5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD558, &qword_1A3A6E900);
    sub_1A38C8B44(&qword_1EB0FD5B0, &qword_1EB0FD550, &qword_1A3A6E8F8, sub_1A38C8828);
    sub_1A38A08F8(&qword_1EB0FD5B8, &qword_1EB0FD5C0, &qword_1A3A7C7C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD5A8);
  }

  return result;
}

uint64_t sub_1A38C8B44(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1A38C7218(&qword_1ED9966D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A38C8BF8()
{
  result = qword_1EB0FD5E0;
  if (!qword_1EB0FD5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD5D8, &qword_1A3A6E990);
    sub_1A38C8C84();
    sub_1A38C00C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD5E0);
  }

  return result;
}

unint64_t sub_1A38C8C84()
{
  result = qword_1EB0FD5E8;
  if (!qword_1EB0FD5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD5F0, &unk_1A3A75AF0);
    sub_1A38A08F8(&qword_1EB0FD598, &qword_1EB0FD5A0, &qword_1A3A6E948, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD5E8);
  }

  return result;
}

unint64_t sub_1A38C8D3C()
{
  result = qword_1EB0FD640;
  if (!qword_1EB0FD640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD638, &qword_1A3A6E9D8);
    swift_getOpaqueTypeConformance2();
    sub_1A38A08F8(&qword_1ED996BC0, &qword_1EB0FD578, &unk_1A3A7B890, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD640);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlOrientationRotationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ControlOrientationRotationType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A38C8F84()
{
  v1 = 0xE700000000000000;
  v2 = 0x6E776F6E6B6E55;
  v3 = 1701079383;
  if (*v0 != 2)
  {
    v3 = 1701602644;
  }

  if (*v0)
  {
    v2 = 0x6469577265707553;
    v1 = 0xE900000000000065;
  }

  if (*v0 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  if (*v0 <= 1u)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x1A58F7770](v4, v5);

  return 0xD00000000000001DLL;
}

unint64_t sub_1A38C904C()
{
  result = qword_1EB0FD650;
  if (!qword_1EB0FD650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD658, qword_1A3A6EA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD650);
  }

  return result;
}

unint64_t sub_1A38C90B4()
{
  result = qword_1EB0FD660;
  if (!qword_1EB0FD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD660);
  }

  return result;
}

unint64_t sub_1A38C9108(unint64_t result)
{
  if (result >= 4)
  {
    sub_1A3A31F20();
    MEMORY[0x1A58F7770](0xD000000000000021, 0x80000001A3AA1EE0);
    type metadata accessor for CAMConstituentDeviceType(0);
    sub_1A3A32060();
    result = sub_1A3A32070("Fatal error", 11, 2, 0, 0xE000000000000000, "CameraUI/ChromeConstituentDeviceType.swift", 42, 2, 37, 0);
    __break(1u);
  }

  return result;
}

void sub_1A38C91D4(uint64_t a1, void *a2)
{
  swift_getObjectType();
  v3 = sub_1A3A2F2A0();
  v48 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = sub_1A3A2EF40();
    if (sub_1A3A2EF30() == v17)
    {
      v18 = v48;
      v19 = v3;
      (*(v48 + 16))(v14, &v16[OBJC_IVAR____TtC8CameraUI20CAMDockKitController_logger], v3);
      v20 = a2;
      v21 = sub_1A3A2F280();
      v22 = sub_1A3A31C40();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 67109120;
        *(v23 + 4) = sub_1A3A2EF50();

        _os_log_impl(&dword_1A3640000, v21, v22, "system event triggered: shutter with payload %u", v23, 8u);
        MEMORY[0x1A58FAC10](v23, -1, -1);
      }

      else
      {

        v21 = v20;
      }

      (*(v18 + 8))(v14, v19);
      v29 = sub_1A3A2EF50();
      if (v29 == sub_1A3A2EEF0())
      {
        v30 = swift_unknownObjectWeakLoadStrong();
        if (v30)
        {
          [v30 accessoryShutterButtonPressed];
          goto LABEL_20;
        }
      }

      else
      {
        v39 = sub_1A3A2EF50();
        if (v39 == sub_1A3A2EF00())
        {
          v40 = swift_unknownObjectWeakLoadStrong();
          if (v40)
          {
            [v40 accessoryShutterButtonReleased];
            goto LABEL_20;
          }
        }
      }

      goto LABEL_27;
    }

    if (sub_1A3A2EF10() == v17)
    {
      v24 = v48;
      (*(v48 + 16))(v11, &v16[OBJC_IVAR____TtC8CameraUI20CAMDockKitController_logger], v3);
      v25 = sub_1A3A2F280();
      v26 = sub_1A3A31C40();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1A3640000, v25, v26, "system event triggered: flip", v27, 2u);
        MEMORY[0x1A58FAC10](v27, -1, -1);
      }

      (*(v24 + 8))(v11, v3);
      v28 = swift_unknownObjectWeakLoadStrong();
      if (v28)
      {
        [v28 accessoryFlipButtonReleased];
LABEL_20:

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_27;
    }

    v31 = sub_1A3A2EF20();
    v32 = *(v48 + 16);
    v33 = &v16[OBJC_IVAR____TtC8CameraUI20CAMDockKitController_logger];
    if (v31 == v17)
    {
      v34 = v3;
      v32(v8, v33, v3);
      v35 = a2;
      v36 = sub_1A3A2F280();
      v37 = sub_1A3A31C40();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 67109120;
        *(v38 + 4) = sub_1A3A2EF50();

        _os_log_impl(&dword_1A3640000, v36, v37, "system event triggered: zoom with payload %u", v38, 8u);
        MEMORY[0x1A58FAC10](v38, -1, -1);
      }

      else
      {

        v36 = v35;
      }

      v44 = v48;

      (*(v44 + 8))(v8, v34);
      v45 = sub_1A3A2EF50();
      if ((v45 & 0x8000) == 0)
      {
        v46 = v45;
        v47 = swift_unknownObjectWeakLoadStrong();
        if (v47)
        {
          [v47 accessoryZoomInByDisplayZoomValue_];
          goto LABEL_20;
        }

LABEL_27:

        return;
      }

      __break(1u);
    }

    else
    {
      v32(v5, v33, v3);
      v41 = sub_1A3A2F280();
      v42 = sub_1A3A31C20();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1A3640000, v41, v42, "Remote control accessory unknown button pressed, ignoring", v43, 2u);
        MEMORY[0x1A58FAC10](v43, -1, -1);
      }

      else
      {
      }

      (*(v48 + 8))(v5, v3);
    }
  }
}

uint64_t sub_1A38C9850(void *a1)
{
  v2 = sub_1A3A31650();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A3A31670();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A38C9AFC();
  v10 = sub_1A3A31C70();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1A38C9B48;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3904E20;
  aBlock[3] = &block_descriptor;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  sub_1A3A31660();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A38C9B68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD668, qword_1A3A741D0);
  sub_1A38C9BC0();
  sub_1A3A31E80();
  MEMORY[0x1A58F7B00](0, v9, v5, v13);
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A38C9AFC()
{
  result = qword_1ED996BC8[0];
  if (!qword_1ED996BC8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ED996BC8);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A3A2EA60();
}

unint64_t sub_1A38C9B68()
{
  result = qword_1ED997B90;
  if (!qword_1ED997B90)
  {
    sub_1A3A31650();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997B90);
  }

  return result;
}

unint64_t sub_1A38C9BC0()
{
  result = qword_1ED997BA0;
  if (!qword_1ED997BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD668, qword_1A3A741D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997BA0);
  }

  return result;
}

uint64_t sub_1A38C9C24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v211 = a1;
  v3 = type metadata accessor for ChromeBottomBar(0);
  v185 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v225 = v4;
  v223 = &v177 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_1A3A2FAE0();
  v182 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v181 = &v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_1A3A2FEE0();
  v213 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v212 = &v177 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v217 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD680, &qword_1A3A6ECE8);
  MEMORY[0x1EEE9AC00](*(&v217 + 1));
  v215 = (&v177 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v177 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD688, &qword_1A3A6ECF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v177 - v12;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD690, &qword_1A3A6ECF8);
  v177 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v216 = (&v177 - v14);
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD698, &qword_1A3A6ED00);
  v180 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v178 = &v177 - v15;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD6A0, &qword_1A3A6ED08);
  v184 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v224 = &v177 - v16;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD6A8, &qword_1A3A6ED10);
  v188 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v186 = &v177 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD6B0, &qword_1A3A6ED18);
  v191 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v189 = &v177 - v19;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD6B8, &qword_1A3A6ED20);
  v193 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v218 = &v177 - v20;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD6C0, &qword_1A3A6ED28);
  v196 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v194 = &v177 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD6C8, &qword_1A3A6ED30);
  v197 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v220 = &v177 - v23;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD6D0, &qword_1A3A6ED38);
  v202 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v25 = &v177 - v24;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD6D8, &qword_1A3A6ED40);
  v204 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v201 = &v177 - v26;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD6E0, &qword_1A3A6ED48);
  MEMORY[0x1EEE9AC00](v200);
  v28 = &v177 - v27;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD6E8, &qword_1A3A6ED50);
  MEMORY[0x1EEE9AC00](v205);
  v209 = &v177 - v29;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD6F0, &qword_1A3A6ED58);
  MEMORY[0x1EEE9AC00](v206);
  v210 = &v177 - v30;
  *v13 = sub_1A3A300B0();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD6F8, &unk_1A3A6ED60);
  sub_1A38CBCCC(v2, &v13[*(v31 + 44)]);
  *&v217 = v11;
  v13[*(v11 + 36)] = 0;
  v32 = sub_1A38CE8F0();
  v226 = v2;
  v207 = v28;
  v199 = v25;
  v198 = v22;
  v219 = v3;
  v192 = v18;
  if ((v32 & 1) == 0)
  {
    v47 = 1;
    goto LABEL_15;
  }

  v33 = v2 + *(v3 + 52);
  v34 = *v33;
  v35 = *(v33 + 8);
  sub_1A3A2EA60();
  v36 = v34;
  if ((v35 & 1) == 0)
  {
    sub_1A3A31C30();
    v37 = sub_1A3A305C0();
    sub_1A3A2F270();

    v38 = v212;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v213 + 8))(v38, v214);
    v36 = v231;
  }

  swift_getKeyPath(byte_1A3A6ED90);
  *&v231 = v36;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v40 = *(v36 + 24);
  v39 = *(v36 + 32);
  v41 = *(v36 + 40);
  v42 = *(v36 + 48);
  sub_1A38BCF64(v40, v39, v41, *(v36 + 48));

  if (v42 != 1)
  {
    if (v42 == 255)
    {
LABEL_11:
      sub_1A3A2EA60();
      if ((v35 & 1) == 0)
      {
        sub_1A3A31C30();
        v48 = sub_1A3A305C0();
        sub_1A3A2F270();

        v49 = v212;
        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v213 + 8))(v49, v214);
        v34 = v231;
      }

      swift_getKeyPath("@RiG");
      *&v231 = v34;
      sub_1A3A2F080();

      v50 = *(v34 + 400);
      v51 = *(v34 + 408);

      v2 = v226;
      sub_1A38CF414(v10, v50, v51);
      v47 = 0;
      goto LABEL_14;
    }

    v43 = v40;
    v44 = v39;
    v45 = v41;
    v46 = v42;
LABEL_10:
    sub_1A38BC250(v43, v44, v45, v46);
    goto LABEL_11;
  }

  if (v40 == 35)
  {
    v43 = 35;
    v44 = v39;
    v45 = v41;
    v46 = 1;
    goto LABEL_10;
  }

  v47 = 1;
  sub_1A38BC250(v40, v39, v41, 1);
  v2 = v226;
LABEL_14:
  v3 = v219;
LABEL_15:
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD700, &qword_1A3A76730);
  v53 = 1;
  (*(*(v52 - 8) + 56))(v10, v47, 1, v52);
  sub_1A3A2F660();
  v54 = sub_1A38DC800();
  v55 = sub_1A38DC8E4();
  sub_1A3A30AE0();
  sub_1A388F740(v10, &qword_1EB0FD680, &qword_1A3A6ECE8);
  sub_1A388F740(v13, &qword_1EB0FD688, &qword_1A3A6ECF0);
  if ((sub_1A38CE8F0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v56 = v2 + *(v3 + 52);
  v57 = *v56;
  v58 = *(v56 + 8);
  sub_1A3A2EA60();
  v59 = v57;
  if ((v58 & 1) == 0)
  {
    sub_1A3A31C30();
    v60 = sub_1A3A305C0();
    sub_1A3A2F270();

    v61 = v212;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v213 + 8))(v61, v214);
    v59 = v231;
  }

  swift_getKeyPath(byte_1A3A6ED90);
  *&v231 = v59;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v62 = *(v59 + 24);
  v63 = *(v59 + 32);
  v64 = *(v59 + 40);
  v65 = *(v59 + 48);
  sub_1A38BCF64(v62, v63, v64, *(v59 + 48));

  if (v65 != 1)
  {
    if (v65 != 255)
    {
      sub_1A38BC250(v62, v63, v64, v65);
    }

    v53 = 1;
    goto LABEL_22;
  }

  if (v62 == 35)
  {
    v53 = 1;
    sub_1A38BC250(35, v63, v64, 1);
LABEL_22:
    v2 = v226;
    v3 = v219;
    goto LABEL_23;
  }

  sub_1A38BC250(v62, v63, v64, 1);
  sub_1A3A2EA60();
  v2 = v226;
  v3 = v219;
  if ((v58 & 1) == 0)
  {
    sub_1A3A31C30();
    v173 = sub_1A3A305C0();
    sub_1A3A2F270();

    v174 = v212;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v213 + 8))(v174, v214);
    v57 = v231;
  }

  swift_getKeyPath("@RiG");
  *&v231 = v57;
  sub_1A3A2F080();

  v175 = *(v57 + 400);
  v176 = *(v57 + 408);

  sub_1A38CF414(v215, v175, v176);
  v53 = 0;
LABEL_23:
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD700, &qword_1A3A76730);
  v67 = v215;
  (*(*(v66 - 8) + 56))(v215, v53, 1, v66);
  sub_1A3A2F660();
  v68 = *(&v217 + 1);
  v231 = v217;
  v232 = v54;
  v233 = v55;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v70 = v178;
  v71 = v179;
  v72 = v216;
  sub_1A3A30C40();
  sub_1A388F740(v67, &qword_1EB0FD680, &qword_1A3A6ECE8);
  (*(v177 + 8))(v72, v71);
  v73 = v181;
  sub_1A3A2FAD0();
  v231 = *(v2 + *(v3 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD720, &unk_1A3A6ED80);
  sub_1A3A30F90();
  *&v231 = v71;
  *(&v231 + 1) = v68;
  v232 = OpaqueTypeConformance2;
  v233 = v55;
  *(&v217 + 1) = swift_getOpaqueTypeConformance2();
  v74 = v222;
  sub_1A3A30A60();
  (*(v182 + 8))(v73, v183);
  (*(v180 + 8))(v70, v74);
  v75 = v223;
  sub_1A38DF4FC(v226, v223, type metadata accessor for ChromeBottomBar);
  v76 = sub_1A3A31AA0();
  v77 = sub_1A3A31A90();
  v78 = *(v185 + 80);
  v79 = (v78 + 32) & ~v78;
  v80 = v79 + v225;
  v81 = swift_allocObject();
  v82 = MEMORY[0x1E69E85E0];
  *(v81 + 16) = v77;
  *(v81 + 24) = v82;
  sub_1A38DEDBC(v75, v81 + v79, type metadata accessor for ChromeBottomBar);
  sub_1A38DF4FC(v226, v75, type metadata accessor for ChromeBottomBar);
  v183 = v76;
  v83 = sub_1A3A31A90();
  v182 = v80;
  v84 = swift_allocObject();
  *(v84 + 16) = v83;
  *(v84 + 24) = v82;
  v185 = v79;
  sub_1A38DEDBC(v75, v84 + v79, type metadata accessor for ChromeBottomBar);
  sub_1A3A311C0();
  v229 = v231;
  LOBYTE(v230) = v232;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
  MEMORY[0x1A58F7010](&v228, v85);
  LOBYTE(v76) = v228;

  LOBYTE(v227) = v76;
  *&v217 = type metadata accessor for ChromeBottomBar;
  sub_1A38DF4FC(v226, v75, type metadata accessor for ChromeBottomBar);
  v86 = (v78 + 16) & ~v78;
  v225 += v86;
  v87 = swift_allocObject();
  v216 = type metadata accessor for ChromeBottomBar;
  sub_1A38DEDBC(v75, v87 + v86, type metadata accessor for ChromeBottomBar);
  *&v231 = v222;
  *(&v231 + 1) = MEMORY[0x1E69E6530];
  v232 = *(&v217 + 1);
  v233 = MEMORY[0x1E69E6550];
  v88 = swift_getOpaqueTypeConformance2();
  v89 = v186;
  v90 = v187;
  v91 = v224;
  sub_1A3A30CA0();

  (*(v184 + 8))(v91, v90);
  v92 = v226;
  LOBYTE(v229) = sub_1A38CE8F0() & 1;
  sub_1A38DF4FC(v92, v75, type metadata accessor for ChromeBottomBar);
  v93 = swift_allocObject();
  sub_1A38DEDBC(v75, v93 + v86, type metadata accessor for ChromeBottomBar);
  *&v231 = v90;
  *(&v231 + 1) = MEMORY[0x1E69E6370];
  v232 = v88;
  v94 = MEMORY[0x1E69E6388];
  v233 = MEMORY[0x1E69E6388];
  *(&v217 + 1) = MEMORY[0x1E6981440];
  v95 = swift_getOpaqueTypeConformance2();
  v96 = v189;
  v97 = v190;
  sub_1A3A30CA0();

  (*(v188 + 8))(v89, v97);
  v98 = v226;
  LOBYTE(v229) = sub_1A38CFAC8() & 1;
  sub_1A38DF4FC(v98, v75, v217);
  v222 = v78;
  v99 = swift_allocObject();
  v224 = v86;
  sub_1A38DEDBC(v75, v99 + v86, v216);
  *&v231 = v97;
  v100 = MEMORY[0x1E69E6370];
  *(&v231 + 1) = MEMORY[0x1E69E6370];
  v232 = v95;
  v233 = v94;
  v101 = swift_getOpaqueTypeConformance2();
  v102 = v192;
  *(&v217 + 1) = v101;
  sub_1A3A30CA0();

  (*(v191 + 8))(v96, v102);
  v103 = v98 + *(v219 + 52);
  v104 = *v103;
  v105 = *(v103 + 8);
  sub_1A3A2EA60();
  v106 = v104;
  if ((v105 & 1) == 0)
  {
    sub_1A3A31C30();
    v107 = sub_1A3A305C0();
    sub_1A3A2F270();

    v108 = v212;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v213 + 8))(v108, v214);
    v106 = v231;
  }

  swift_getKeyPath(byte_1A3A6ED90);
  *&v231 = v106;
  v190 = sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v109 = *(v106 + 3);
  v110 = *(v106 + 4);
  v111 = *(v106 + 5);
  v112 = v106[48];
  sub_1A38BCF64(v109, v110, v111, v106[48]);

  LODWORD(v191) = v105;
  v189 = v104;
  if (v112 != 1)
  {
    if (v112 != 255)
    {
      sub_1A38BC250(v109, v110, v111, v112);
    }

    v109 = 35;
  }

  *&v229 = v109;
  v215 = type metadata accessor for ChromeBottomBar;
  v113 = v226;
  v114 = v223;
  sub_1A38DF4FC(v226, v223, type metadata accessor for ChromeBottomBar);
  v115 = swift_allocObject();
  v216 = type metadata accessor for ChromeBottomBar;
  sub_1A38DEDBC(v114, &v224[v115], type metadata accessor for ChromeBottomBar);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD728, &qword_1A3A6EDB8);
  *&v231 = v102;
  *(&v231 + 1) = v100;
  v232 = *(&v217 + 1);
  v233 = MEMORY[0x1E69E6388];
  *&v217 = MEMORY[0x1E6981440];
  v117 = swift_getOpaqueTypeConformance2();
  v118 = sub_1A38DCA00();
  v119 = v194;
  v120 = v195;
  v219 = v116;
  *(&v217 + 1) = v118;
  v121 = v218;
  sub_1A3A30CA0();

  sub_1A3890F1C(v109);
  (*(v193 + 8))(v121, v120);
  LOBYTE(v229) = sub_1A38D06A0() & 1;
  v122 = v113;
  v123 = v215;
  sub_1A38DF4FC(v122, v114, v215);
  v124 = swift_allocObject();
  sub_1A38DEDBC(v114, &v224[v124], v216);
  *&v231 = v120;
  *(&v231 + 1) = v116;
  v232 = v117;
  v233 = v118;
  v218 = swift_getOpaqueTypeConformance2();
  v125 = v221;
  sub_1A3A30CA0();

  (*(v196 + 8))(v119, v125);
  v126 = v226;
  sub_1A38DF4FC(v226, v114, v123);
  v127 = sub_1A3A31A90();
  v128 = swift_allocObject();
  *(v128 + 16) = v127;
  v129 = MEMORY[0x1E69E85E0];
  *(v128 + 24) = MEMORY[0x1E69E85E0];
  v130 = v185;
  v131 = v216;
  sub_1A38DEDBC(v114, v128 + v185, v216);
  sub_1A38DF4FC(v126, v114, v123);
  v132 = sub_1A3A31A90();
  v133 = swift_allocObject();
  *(v133 + 16) = v132;
  *(v133 + 24) = v129;
  sub_1A38DEDBC(v114, v133 + v130, v131);
  sub_1A3A311C0();
  v134 = v232;
  v229 = v231;
  v230 = v232;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD730, &qword_1A3A6EDC0);
  MEMORY[0x1A58F7010](&v228, v135);
  v136 = v228;

  sub_1A3890F1C(v134);
  v227 = v136;
  sub_1A38DF4FC(v126, v114, v215);
  v137 = swift_allocObject();
  sub_1A38DEDBC(v114, &v224[v137], v131);
  *&v231 = v221;
  *(&v231 + 1) = MEMORY[0x1E69E6370];
  v232 = v218;
  v233 = MEMORY[0x1E69E6388];
  v138 = swift_getOpaqueTypeConformance2();
  v139 = v199;
  v140 = v198;
  v141 = v220;
  sub_1A3A30CA0();

  sub_1A3890F1C(v136);
  (*(v197 + 8))(v141, v140);
  v142 = v189;
  sub_1A3A2EA60();
  if ((v191 & 1) == 0)
  {
    sub_1A3A31C30();
    v143 = sub_1A3A305C0();
    sub_1A3A2F270();

    v144 = v212;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v213 + 8))(v144, v214);
    v142 = v231;
  }

  swift_getKeyPath("pRiG");
  *&v231 = v142;
  sub_1A3A2F080();

  v145 = v142[102];
  v146 = v142[103];
  v147 = v142[104];
  sub_1A38DCB50(v145, v146, v147);

  v148 = v201;
  if (v145)
  {
  }

  else
  {
    v146 = 0;
    v147 = 0;
  }

  *&v229 = v146;
  *(&v229 + 1) = v147;
  v149 = v223;
  sub_1A38DF4FC(v226, v223, type metadata accessor for ChromeBottomBar);
  v150 = swift_allocObject();
  sub_1A38DEDBC(v149, &v224[v150], type metadata accessor for ChromeBottomBar);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD738, &qword_1A3A6EDF0);
  *&v231 = v140;
  *(&v231 + 1) = v219;
  v232 = v138;
  v233 = *(&v217 + 1);
  swift_getOpaqueTypeConformance2();
  sub_1A38DCC10();
  v151 = v203;
  sub_1A3A30CA0();

  (*(v202 + 8))(v139, v151);
  if (sub_1A38D14F8())
  {
    v152 = 0;
  }

  else
  {
    v152 = sub_1A3A314E0();
  }

  v153 = v207;
  v154 = sub_1A38D1650();
  (*(v204 + 32))(v153, v148, v208);
  v155 = v153 + *(v200 + 36);
  *v155 = v152;
  *(v155 + 8) = v154 & 1;
  if (sub_1A38D14F8())
  {
    v156 = 0;
  }

  else
  {
    v156 = sub_1A3A314E0();
  }

  v157 = sub_1A38D1AD0();
  v158 = v153;
  v159 = v209;
  sub_1A388F670(v158, v209, &qword_1EB0FD6E0, &qword_1A3A6ED48);
  v160 = v159 + *(v205 + 36);
  *v160 = v156;
  *(v160 + 8) = v157 & 1;
  v161 = sub_1A3A314E0();
  sub_1A38D2024();
  v163 = v162;
  v164 = v159;
  v165 = v210;
  sub_1A388F670(v164, v210, &qword_1EB0FD6E8, &qword_1A3A6ED50);
  v166 = (v165 + *(v206 + 36));
  *v166 = v161;
  v166[1] = v163;
  v167 = sub_1A3A314E0();
  sub_1A38D22D8();
  v169 = v168;
  v170 = v211;
  sub_1A388F670(v165, v211, &qword_1EB0FD6F0, &qword_1A3A6ED58);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD740, &qword_1A3A6EDF8);
  v172 = (v170 + *(result + 36));
  *v172 = v167;
  v172[1] = v169;
  return result;
}

uint64_t sub_1A38CBCCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD760, &qword_1A3A6EFB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v107 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v105 = (&v93 - v6);
  v95 = sub_1A3A2FEE0();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD768, &qword_1A3A6EFB8);
  MEMORY[0x1EEE9AC00](v96);
  v108 = &v93 - v8;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD770, &qword_1A3A6EFC0);
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v93 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD778, &qword_1A3A6EFC8);
  v101 = *(v10 - 8);
  v102 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v93 - v11;
  v97 = type metadata accessor for ChromeBottomBar(0);
  v12 = *(v97 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD780, &qword_1A3A6EFD0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v104 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v103 = &v93 - v17;
  sub_1A38DF4FC(a1, &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
  sub_1A3A31AA0();
  v18 = sub_1A3A31A90();
  v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v18;
  *(v20 + 24) = v21;
  sub_1A38DEDBC(&v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for ChromeBottomBar);
  v109 = a1;
  sub_1A38DF4FC(a1, &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
  v22 = sub_1A3A31A90();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v21;
  sub_1A38DEDBC(&v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v19, type metadata accessor for ChromeBottomBar);
  sub_1A3A311C0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
  MEMORY[0x1A58F7010](&v110, v24);
  LODWORD(v22) = v110;

  v25 = v108;

  if (v22 == 1)
  {
    v26 = v109;
    sub_1A38DF4FC(v109, &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
    v27 = sub_1A3A31A90();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = MEMORY[0x1E69E85E0];
    sub_1A38DEDBC(&v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v19, type metadata accessor for ChromeBottomBar);
    sub_1A38DF4FC(v26, &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
    v29 = sub_1A3A31A90();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = MEMORY[0x1E69E85E0];
    sub_1A38DEDBC(&v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v19, type metadata accessor for ChromeBottomBar);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD728, &qword_1A3A6EDB8);
    sub_1A3A311C0();
    v31 = v112;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD730, &qword_1A3A6EDC0);
    MEMORY[0x1A58F7010](&v110, v32);
    v33 = v110;

    sub_1A3890F1C(v31);
    if (v33 == 35)
    {
      v34 = 1;
      v35 = v109;
      v36 = v102;
      v37 = v103;
      v38 = v101;
      goto LABEL_10;
    }

    sub_1A3890F1C(v33);
    v25 = v108;
  }

  *v25 = 4;
  v39 = &v25[*(v96 + 36)];
  *v39 = sub_1A3A31480();
  v39[1] = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD788, &qword_1A3A6EFD8);
  v35 = v109;
  sub_1A38D25AC(v109, v39 + *(v41 + 44));
  v42 = sub_1A3A30630();
  sub_1A3A2F520();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD790, &qword_1A3A6EFE0) + 36);
  *v51 = v42;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  v52 = sub_1A3A30620();
  sub_1A3A2F520();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD798, &qword_1A3A6EFE8) + 36);
  *v61 = v52;
  *(v61 + 1) = v54;
  *(v61 + 2) = v56;
  *(v61 + 3) = v58;
  *(v61 + 4) = v60;
  v61[40] = 0;
  v62 = sub_1A3A30600();
  v63 = v35 + *(v97 + 52);
  v64 = *v63;
  LOBYTE(v39) = *(v63 + 8);
  sub_1A3A2EA60();
  v65 = v25;
  if ((v39 & 1) == 0)
  {
    sub_1A3A31C30();
    v66 = sub_1A3A305C0();
    sub_1A3A2F270();

    v67 = v93;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v94 + 8))(v67, v95);
    v64 = v111;
  }

  swift_getKeyPath(byte_1A3A6EFF0);
  v111 = v64;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v68 = *(v64 + 416);

  v37 = v103;
  if (!v68)
  {
    sub_1A3911D18(v69, v70);
  }

  sub_1A3A2F520();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = v65;
  v80 = v99;
  sub_1A388F670(v79, v99, &qword_1EB0FD768, &qword_1A3A6EFB8);
  v81 = v80 + *(v100 + 36);
  *v81 = v62;
  *(v81 + 8) = v72;
  *(v81 + 16) = v74;
  *(v81 + 24) = v76;
  *(v81 + 32) = v78;
  *(v81 + 40) = 0;
  sub_1A38CC760();
  sub_1A38DD0DC();
  v82 = v98;
  sub_1A3A308F0();
  sub_1A388F740(v80, &qword_1EB0FD770, &qword_1A3A6EFC0);
  v38 = v101;
  v83 = v82;
  v36 = v102;
  (*(v101 + 32))(v37, v83, v102);
  v34 = 0;
LABEL_10:
  (*(v38 + 56))(v37, v34, 1, v36);
  v84 = sub_1A3A31470();
  v85 = v105;
  *v105 = v84;
  *(v85 + 8) = v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD7B0, &qword_1A3A6F018);
  sub_1A38CCBBC(v35, v85 + *(v87 + 44));
  v88 = v104;
  sub_1A388F6D8(v37, v104, &qword_1EB0FD780, &qword_1A3A6EFD0);
  v89 = v107;
  sub_1A388F6D8(v85, v107, &qword_1EB0FD760, &qword_1A3A6EFB0);
  v90 = v106;
  sub_1A388F6D8(v88, v106, &qword_1EB0FD780, &qword_1A3A6EFD0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD7B8, &qword_1A3A6F020);
  sub_1A388F6D8(v89, v90 + *(v91 + 48), &qword_1EB0FD760, &qword_1A3A6EFB0);
  sub_1A388F740(v85, &qword_1EB0FD760, &qword_1A3A6EFB0);
  sub_1A388F740(v37, &qword_1EB0FD780, &qword_1A3A6EFD0);
  sub_1A388F740(v89, &qword_1EB0FD760, &qword_1A3A6EFB0);
  return sub_1A388F740(v88, &qword_1EB0FD780, &qword_1A3A6EFD0);
}

uint64_t sub_1A38CC760()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ChromeBottomBar(0) + 52);
  v6 = *v5;
  v7 = *(v5 + 8);
  sub_1A3A2EA60();
  v8 = v6;
  if ((v7 & 1) == 0)
  {
    sub_1A3A31C30();
    v9 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v8 = v25;
  }

  swift_getKeyPath(byte_1A3A6EE38);
  v25 = v8;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v10 = *(v8 + 80);
  sub_1A3A2EA60();

  swift_getKeyPath(byte_1A3A6EE60);
  v25 = v10;
  sub_1A38DF31C(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel, &unk_1A3A82618);
  sub_1A3A2F080();

  v11 = v10[31];
  v12 = v10[32];
  v13 = v10[33];
  v14 = v10[34];

  sub_1A3A2EA60();
  v15 = v6;
  if ((v7 & 1) == 0)
  {
    sub_1A3A31C30();
    v16 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v15 = v25;
  }

  swift_getKeyPath(byte_1A3A6F410);
  v25 = v15;
  sub_1A3A2F080();

  v17 = v15[65];
  v18 = v15[66];
  v19 = v15[67];
  v20 = v15[68];

  v26.origin.x = v11;
  v26.origin.y = v12;
  v26.size.width = v13;
  v26.size.height = v14;
  v27.origin.x = v17;
  v27.origin.y = v18;
  v27.size.width = v19;
  v27.size.height = v20;
  if (!CGRectIntersectsRect(v26, v27))
  {
    return 0;
  }

  sub_1A3A2EA60();
  if ((v7 & 1) == 0)
  {
    sub_1A3A31C30();
    v21 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v6 = v25;
  }

  swift_getKeyPath("pMiG");
  v25 = v6;
  sub_1A3A2F080();

  v22 = *(v6 + 1179);

  return v22;
}

uint64_t sub_1A38CCBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD7C0, &qword_1A3A6F028);
  MEMORY[0x1EEE9AC00](v133);
  v136 = &v113[-v3];
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD7C8, &qword_1A3A6F030);
  MEMORY[0x1EEE9AC00](v135);
  v138 = &v113[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v134 = &v113[-v6];
  MEMORY[0x1EEE9AC00](v7);
  v137 = &v113[-v8];
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD7D0, &qword_1A3A6F038);
  MEMORY[0x1EEE9AC00](v129);
  v130 = &v113[-v9];
  v126 = sub_1A3A2FF20();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v123 = &v113[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v124 = &v113[-v12];
  v13 = sub_1A3A2FEE0();
  v141 = *(v13 - 8);
  v142 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v140 = &v113[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD7D8, &qword_1A3A6F040);
  MEMORY[0x1EEE9AC00](v116);
  v143 = &v113[-v15];
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD7E0, &qword_1A3A6F048);
  MEMORY[0x1EEE9AC00](v119);
  v121 = &v113[-v16];
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD7E8, &qword_1A3A6F050);
  MEMORY[0x1EEE9AC00](v128);
  v120 = &v113[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v122 = &v113[-v19];
  v127 = type metadata accessor for ChromeBottomBar(0);
  v20 = *(v127 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v22 = &v113[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD7F0, &qword_1A3A6F058);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v132 = &v113[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v131 = &v113[-v26];
  sub_1A38DF4FC(a1, v22, type metadata accessor for ChromeBottomBar);
  v27 = sub_1A3A31AA0();
  v28 = sub_1A3A31A90();
  v29 = *(v20 + 80);
  v30 = (v29 + 32) & ~v29;
  v31 = swift_allocObject();
  v32 = MEMORY[0x1E69E85E0];
  *(v31 + 16) = v28;
  *(v31 + 24) = v32;
  v33 = v32;
  sub_1A38DEDBC(v22, v31 + v30, type metadata accessor for ChromeBottomBar);
  sub_1A38DF4FC(a1, v22, type metadata accessor for ChromeBottomBar);
  v118 = v27;
  v34 = sub_1A3A31A90();
  v117 = v21;
  v115 = v29;
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = v33;
  sub_1A38DEDBC(v22, v35 + v30, type metadata accessor for ChromeBottomBar);
  sub_1A3A311C0();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
  MEMORY[0x1A58F7010](&v144, v36);
  LODWORD(v34) = v144;

  if (v34 == 1)
  {
    sub_1A38CDC98(v143);
    KeyPath = swift_getKeyPath("8PiG");
    v38 = (a1 + *(v127 + 52));
    v39 = *v38;
    v40 = *(v38 + 8);
    sub_1A3A2EA60();
    v41 = v39;
    LODWORD(v127) = v40;
    if ((v40 & 1) == 0)
    {
      sub_1A3A31C30();
      v42 = sub_1A3A305C0();
      sub_1A3A2F270();

      v43 = v140;
      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v141 + 8))(v43, v142);
      v41 = v145;
    }

    v44 = swift_allocObject();
    *(v44 + 16) = 0x77656956746F6F52;
    *(v44 + 24) = 0xE800000000000000;
    v45 = swift_allocObject();
    *(v45 + 16) = v41;
    *(v45 + 24) = KeyPath;
    v46 = &v143[*(v116 + 36)];
    *v46 = sub_1A38DFB80;
    v46[1] = v44;
    v46[2] = sub_1A38C0498;
    v46[3] = v45;
    sub_1A3A2EA60();
    v47 = v39;
    if ((v127 & 1) == 0)
    {
      sub_1A3A31C30();
      v48 = sub_1A3A305C0();
      sub_1A3A2F270();

      v49 = v140;
      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v141 + 8))(v49, v142);
      v47 = v145;
    }

    swift_getKeyPath(byte_1A3A6EFF0);
    v145 = v47;
    sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    v114 = *(v47 + 416);

    sub_1A38DF4FC(a1, v22, type metadata accessor for ChromeBottomBar);
    v50 = sub_1A3A31A90();
    v51 = swift_allocObject();
    *(v51 + 16) = v50;
    *(v51 + 24) = MEMORY[0x1E69E85E0];
    sub_1A38DEDBC(v22, v51 + v30, type metadata accessor for ChromeBottomBar);
    v116 = a1;
    sub_1A38DF4FC(a1, v22, type metadata accessor for ChromeBottomBar);
    v52 = sub_1A3A31A90();
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    *(v53 + 24) = MEMORY[0x1E69E85E0];
    sub_1A38DEDBC(v22, v53 + v30, type metadata accessor for ChromeBottomBar);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD728, &qword_1A3A6EDB8);
    sub_1A3A311C0();
    v54 = v146;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD730, &qword_1A3A6EDC0);
    MEMORY[0x1A58F7010](&v144, v55);
    v56 = v144;

    sub_1A3890F1C(v54);
    if (v56 != 35)
    {
      sub_1A3890F1C(v56);
    }

    v57 = sub_1A3912724(v114, v56 != 35);
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v64 = sub_1A3A30610();
    v65 = v121;
    sub_1A388F670(v143, v121, &qword_1EB0FD7D8, &qword_1A3A6F040);
    v66 = &v65[*(v119 + 36)];
    *v66 = v64;
    v66[1] = v57;
    *(v66 + 2) = v59;
    *(v66 + 3) = v61;
    *(v66 + 4) = v63;
    *(v66 + 40) = 0;
    v67 = v124;
    sub_1A3A2FF10();
    v68 = v125;
    v69 = v126;
    (*(v125 + 16))(v123, v67, v126);
    sub_1A38DF31C(&qword_1ED996708, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
    v70 = sub_1A3A2F7F0();
    (*(v68 + 8))(v67, v69);
    v71 = v120;
    sub_1A388F670(v65, v120, &qword_1EB0FD7E0, &qword_1A3A6F048);
    *&v71[*(v128 + 36)] = v70;
    v72 = v122;
    sub_1A388F670(v71, v122, &qword_1EB0FD7E8, &qword_1A3A6F050);
    sub_1A388F6D8(v72, v130, &qword_1EB0FD7E8, &qword_1A3A6F050);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD7F8, &qword_1A3A6F088);
    sub_1A38DD1B0();
    sub_1A38DD690();
    v73 = v131;
    sub_1A3A301F0();
    sub_1A388F740(v72, &qword_1EB0FD7E8, &qword_1A3A6F050);
    v74 = v136;
    v75 = v127;
  }

  else
  {
    v76 = swift_getKeyPath("8PiG");
    v77 = (a1 + *(v127 + 52));
    v39 = *v77;
    v75 = *(v77 + 8);
    sub_1A3A2EA60();
    v78 = v39;
    if ((v75 & 1) == 0)
    {
      sub_1A3A31C30();
      v79 = sub_1A3A305C0();
      sub_1A3A2F270();

      v80 = v140;
      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v141 + 8))(v80, v142);
      v78 = v145;
    }

    v81 = swift_allocObject();
    *(v81 + 16) = 0x77656956746F6F52;
    *(v81 + 24) = 0xE800000000000000;
    v82 = swift_allocObject();
    *(v82 + 16) = v78;
    *(v82 + 24) = v76;
    v83 = v130;
    *v130 = sub_1A38DD194;
    v83[1] = v81;
    v83[2] = sub_1A38BC24C;
    v83[3] = v82;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD7F8, &qword_1A3A6F088);
    sub_1A38DD1B0();
    sub_1A38DD690();
    v73 = v131;
    sub_1A3A301F0();
    v74 = v136;
  }

  sub_1A38CE4E0(v74);
  v84 = sub_1A3A30620();
  v85 = v84;
  sub_1A3911E3C(v84);
  sub_1A3A2F520();
  v86 = v74 + *(v133 + 36);
  *v86 = v85;
  *(v86 + 1) = v87;
  *(v86 + 2) = v88;
  *(v86 + 3) = v89;
  *(v86 + 4) = v90;
  v86[40] = 0;
  v91 = sub_1A3A30630();
  sub_1A3A2EA60();
  if ((v75 & 1) == 0)
  {
    sub_1A3A31C30();
    v92 = sub_1A3A305C0();
    sub_1A3A2F270();

    v93 = v140;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v141 + 8))(v93, v142);
    v39 = v145;
  }

  swift_getKeyPath(byte_1A3A6EFF0);
  v145 = v39;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v94 = *(v39 + 416);

  if (!v94)
  {
    sub_1A3911D18(v95, v96);
  }

  sub_1A3A2F520();
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v105 = v134;
  sub_1A388F670(v74, v134, &qword_1EB0FD7C0, &qword_1A3A6F028);
  v106 = &v105[*(v135 + 36)];
  *v106 = v91;
  *(v106 + 1) = v98;
  *(v106 + 2) = v100;
  *(v106 + 3) = v102;
  *(v106 + 4) = v104;
  v106[40] = 0;
  v107 = v137;
  sub_1A388F670(v105, v137, &qword_1EB0FD7C8, &qword_1A3A6F030);
  v108 = v132;
  sub_1A388F6D8(v73, v132, &qword_1EB0FD7F0, &qword_1A3A6F058);
  v109 = v138;
  sub_1A388F6D8(v107, v138, &qword_1EB0FD7C8, &qword_1A3A6F030);
  v110 = v139;
  sub_1A388F6D8(v108, v139, &qword_1EB0FD7F0, &qword_1A3A6F058);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD880, &qword_1A3A6F0C8);
  sub_1A388F6D8(v109, v110 + *(v111 + 48), &qword_1EB0FD7C8, &qword_1A3A6F030);
  sub_1A388F740(v107, &qword_1EB0FD7C8, &qword_1A3A6F030);
  sub_1A388F740(v73, &qword_1EB0FD7F0, &qword_1A3A6F058);
  sub_1A388F740(v109, &qword_1EB0FD7C8, &qword_1A3A6F030);
  return sub_1A388F740(v108, &qword_1EB0FD7F0, &qword_1A3A6F058);
}

uint64_t sub_1A38CDC98@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v52 = sub_1A3A2FEE0();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for ChromeBottomBar(0);
  v55 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v62 = v3;
  v63 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A3A302F0();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A3A304C0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD850, &unk_1A3A6F0A8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v50 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD838, &qword_1A3A6F0A0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD888, &qword_1A3A6F0D0);
  v53 = *(v17 - 8);
  v54 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD830, &qword_1A3A6F098);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v50 - v21;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD818, &qword_1A3A6F090);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v50 - v23;
  *v13 = sub_1A3A31480();
  v13[1] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD890, &qword_1A3A6F0D8);
  sub_1A38D6138(v1, (v13 + *(v25 + 44)));
  v64 = v1;
  if (sub_1A38D14F8())
  {
    v26 = sub_1A3A2F7B0();
  }

  else
  {
    sub_1A3A31590();
    v70 = v27;
    v71 = v28;
    v72 = 0x4020000000000000;
    v65 = 0x3FF0000000000000;
    v66 = v27;
    v67 = v28;
    v68 = 0x4020000000000000;
    v69 = 0;
    sub_1A38BCFA8();
    v26 = sub_1A3A2F7E0();
  }

  v29 = v26;
  sub_1A388F670(v13, v16, &qword_1EB0FD850, &unk_1A3A6F0A8);
  *&v16[*(v14 + 36)] = v29;
  sub_1A3A304B0();
  v30 = sub_1A38DD5AC();
  sub_1A3A30B00();
  (*(v8 + 8))(v10, v7);
  sub_1A388F740(v16, &qword_1EB0FD838, &qword_1A3A6F0A0);
  sub_1A3A302D0();
  v31 = v63;
  v32 = v64;
  sub_1A38DF4FC(v64, v63, type metadata accessor for ChromeBottomBar);
  v33 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v34 = swift_allocObject();
  sub_1A38DEDBC(v31, v34 + v33, type metadata accessor for ChromeBottomBar);
  v69 = v14;
  v70 = v30;
  swift_getOpaqueTypeConformance2();
  v35 = v54;
  sub_1A3A30AB0();

  (*(v56 + 8))(v6, v57);
  (*(v53 + 8))(v19, v35);
  v36 = sub_1A3A31480();
  v38 = v37;
  v39 = v59;
  v40 = &v59[*(v58 + 36)];
  sub_1A38D8388(v32, v40);
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD860, &qword_1A3A6F0B8) + 36));
  *v41 = v36;
  v41[1] = v38;
  sub_1A388F670(v22, v39, &qword_1EB0FD830, &qword_1A3A6F098);
  v42 = v32 + *(v60 + 52);
  v43 = *v42;
  LOBYTE(v38) = *(v42 + 8);
  sub_1A3A2EA60();
  if ((v38 & 1) == 0)
  {
    sub_1A3A31C30();
    v44 = sub_1A3A305C0();
    sub_1A3A2F270();

    v45 = v50;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v51 + 8))(v45, v52);
    v43 = v69;
  }

  swift_getKeyPath(byte_1A3A6EED8);
  v69 = v43;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v46 = *(v43 + 1152);

  LOBYTE(v69) = v46;
  v47 = v63;
  sub_1A38DF4FC(v64, v63, type metadata accessor for ChromeBottomBar);
  v48 = swift_allocObject();
  sub_1A38DEDBC(v47, v48 + v33, type metadata accessor for ChromeBottomBar);
  sub_1A38DD3FC();
  sub_1A3A30CA0();

  return sub_1A388F740(v39, &qword_1EB0FD818, &qword_1A3A6F090);
}

void *sub_1A38CE4E0@<X0>(void *a1@<X8>)
{
  v28 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD978, &qword_1A3A6F1F8);
  MEMORY[0x1EEE9AC00](v27);
  v25 = &v23 - v2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD980, &qword_1A3A6F200);
  MEMORY[0x1EEE9AC00](v26);
  v4 = &v23 - v3;
  v5 = type metadata accessor for ChromeBottomBar(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1A38DF4FC(v1, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
  sub_1A3A31AA0();
  v8 = sub_1A3A31A90();
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v8;
  *(v10 + 24) = v11;
  sub_1A38DEDBC(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ChromeBottomBar);
  v24 = v1;
  sub_1A38DF4FC(v1, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
  v12 = sub_1A3A31A90();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = MEMORY[0x1E69E85E0];
  sub_1A38DEDBC(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v9, type metadata accessor for ChromeBottomBar);
  sub_1A3A311C0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
  MEMORY[0x1A58F7010](v30, v14);
  v15 = LOBYTE(v30[0]);

  if (v15 == 1)
  {
    v16 = sub_1A3A30DB0();
    sub_1A3A31480();
    sub_1A3A2F780();
    v17 = v30[1];
    v18 = v31;
    v19 = v32;
    v20 = v33;
    LOBYTE(v30[0]) = v31;
    v29 = v33;
    *v4 = v16;
    *(v4 + 1) = v17;
    v4[16] = v18;
    *(v4 + 3) = v19;
    v4[32] = v20;
    *(v4 + 40) = v34;
    v4[56] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD988, &qword_1A3A6F208);
    sub_1A38DDDF4();
    sub_1A38DDF04();
    return sub_1A3A301F0();
  }

  else
  {
    v22 = v25;
    sub_1A38D306C(v25);
    sub_1A388F6D8(v22, v4, &qword_1EB0FD978, &qword_1A3A6F1F8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD988, &qword_1A3A6F208);
    sub_1A38DDDF4();
    sub_1A38DDF04();
    sub_1A3A301F0();
    return sub_1A388F740(v22, &qword_1EB0FD978, &qword_1A3A6F1F8);
  }
}

uint64_t sub_1A38CE8F0()
{
  v1 = type metadata accessor for ModeWheelGestureState(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v79 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v82 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD758, &qword_1A3A6EF30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v83 = &v76 - v7;
  v8 = sub_1A3A2F540();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v76 - v13;
  v80 = type metadata accessor for ChromeBottomBar(0);
  v81 = v0;
  v15 = v0 + *(v80 + 60);
  v16 = *v15;
  v17 = *(v15 + 8);
  sub_1A3A2EA60();
  v77 = v4;
  v78 = v3;
  if ((v17 & 1) == 0)
  {
    sub_1A3A31C30();
    v18 = sub_1A3A305C0();
    sub_1A3A2F270();

    v19 = v82;
    sub_1A3A2FED0();
    swift_getAtKeyPath();
    v20 = j__swift_release(v16);
    (*(v4 + 8))(v19, v3, v20);
    v16 = v84;
  }

  if (v16)
  {
    swift_getKeyPath("@QiG");
    v84 = v16;
    sub_1A38DF31C(&qword_1ED996CF8, type metadata accessor for ChromeScenePhaseModel, &unk_1A3A78C78);
    sub_1A3A2F080();

    v21 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
    swift_beginAccess();
    v22 = v16 + v21;
    v23 = v83;
    (*(v9 + 16))(v83, v22, v8);

    (*(v9 + 56))(v23, 0, 1, v8);
    (*(v9 + 32))(v14, v23, v8);
  }

  else
  {
    v24 = v83;
    (*(v9 + 56))(v83, 1, 1, v8);
    type metadata accessor for ChromeScenePhase(0);
    sub_1A39A1420(v14);
    if ((*(v9 + 48))(v24, 1, v8) != 1)
    {
      sub_1A388F740(v24, &qword_1EB0FD758, &qword_1A3A6EF30);
    }
  }

  (*(v9 + 104))(v11, *MEMORY[0x1E697BE38], v8);
  v25 = sub_1A3A2F530();
  v26 = *(v9 + 8);
  v26(v11, v8);
  v26(v14, v8);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

  v27 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD678, &unk_1A3A6EC48);
  v28 = v81;
  v29 = v79;
  sub_1A3A30F90();
  v30 = *(v29 + 2);
  sub_1A38DF564(v29, type metadata accessor for ModeWheelGestureState);
  if (v30)
  {
    return 0;
  }

  v31 = v28 + *(v27 + 52);
  v32 = *v31;
  v33 = *(v31 + 8);
  sub_1A3A2EA60();
  v34 = v32;
  v36 = v77;
  v35 = v78;
  if ((v33 & 1) == 0)
  {
    sub_1A3A31C30();
    v37 = sub_1A3A305C0();
    sub_1A3A2F270();

    v38 = v82;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v36 + 8))(v38, v35);
    v34 = v86;
  }

  swift_getKeyPath(" QiG");
  v86 = v34;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(v34 + 1068) == 1)
  {
    goto LABEL_25;
  }

  v39 = *(sub_1A395BE78(v34) + 16);

  if (!v39)
  {
    goto LABEL_25;
  }

  swift_getKeyPath(byte_1A3A6EF88);
  v86 = v34;
  sub_1A3A2F080();

  v40 = *(v34 + 608);

  if (v40)
  {
    return 0;
  }

  sub_1A3A2EA60();
  v41 = v32;
  if ((v33 & 1) == 0)
  {
    sub_1A3A31C30();
    v42 = sub_1A3A305C0();
    sub_1A3A2F270();

    v43 = v82;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v36 + 8))(v43, v35);
    v41 = v86;
  }

  swift_getKeyPath(byte_1A3A6EEB0);
  v86 = v41;
  sub_1A3A2F080();

  v44 = *(v41 + 1154);

  if (v44)
  {
    return 0;
  }

  sub_1A3A2EA60();
  v45 = v32;
  if ((v33 & 1) == 0)
  {
    sub_1A3A31C30();
    v46 = sub_1A3A305C0();
    sub_1A3A2F270();

    v47 = v82;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v36 + 8))(v47, v35);
    v45 = v86;
  }

  swift_getKeyPath(byte_1A3A6EED8);
  v86 = v45;
  sub_1A3A2F080();

  v48 = *(v45 + 1152);

  if (v48)
  {
    return 0;
  }

  sub_1A3A2EA60();
  v49 = v32;
  if ((v33 & 1) == 0)
  {
    sub_1A3A31C30();
    v50 = sub_1A3A305C0();
    sub_1A3A2F270();

    v51 = v82;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v36 + 8))(v51, v35);
    v49 = v86;
  }

  swift_getKeyPath("pQiG");
  v86 = v49;
  sub_1A3A2F080();

  v52 = *(v49 + 584);
  if (!v52)
  {

    v55 = v80;
    v54 = v81;
    v56 = (v81 + *(v80 + 24));
    v57 = *v56;
    v58 = *(v56 + 1);
    LOBYTE(v86) = v57;
    v87 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
    sub_1A3A30F90();
    if (v85)
    {
      return 0;
    }

    v59 = (v54 + *(v55 + 28));
    v60 = *v59;
    v61 = *(v59 + 1);
    LOBYTE(v86) = v60;
    v87 = v61;
    sub_1A3A30F90();
    if (v85)
    {
      return 0;
    }

    v62 = (v54 + *(v55 + 32));
    v63 = *v62;
    v64 = *(v62 + 1);
    LOBYTE(v86) = v63;
    v87 = v64;
    sub_1A3A30F90();
    if (v85)
    {
      return 0;
    }

    sub_1A3A2EA60();
    if ((v33 & 1) == 0)
    {
      sub_1A3A31C30();
      v65 = sub_1A3A305C0();
      sub_1A3A2F270();

      v66 = v82;
      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v36 + 8))(v66, v35);
      v32 = v86;
    }

    swift_getKeyPath(byte_1A3A6ED90);
    v86 = v32;
    sub_1A3A2F080();

    v68 = *(v32 + 24);
    v67 = *(v32 + 32);
    v69 = *(v32 + 40);
    v70 = *(v32 + 48);
    sub_1A38BCF64(v68, v67, v69, *(v32 + 48));

    if (v70 == 255)
    {
      return 1;
    }

    if (v70 == 1)
    {
      if (v68 == 24)
      {
        v75 = 24;
      }

      else
      {
        if (v68 != 25)
        {
          if (v68 == 35)
          {
            v71 = 35;
          }

          else
          {
            v71 = v68;
          }

          v72 = v67;
          v73 = v69;
          v74 = 1;
          goto LABEL_44;
        }

        v75 = 25;
      }

      sub_1A38BC250(v75, v67, v69, 1);
      return 0;
    }

    v71 = v68;
    v72 = v67;
    v73 = v69;
    v74 = v70;
LABEL_44:
    sub_1A38BC250(v71, v72, v73, v74);
    return 1;
  }

  if (v52 == 2 || v52 == 1)
  {
LABEL_25:

    return 0;
  }

  v86 = *(v49 + 584);
  result = sub_1A3A321F0();
  __break(1u);
  return result;
}

uint64_t sub_1A38CF414@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = v3;
  v34 = a1;
  v7 = type metadata accessor for ChromeBottomBar(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A3A30220();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1A3A2F630();
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD748, &qword_1A3A818F0);
  v17 = *(v16 - 8);
  v32 = v16;
  v33 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v28 = &v27 - v18;
  v35 = 0x77656956746F6F52;
  v36 = 0xE800000000000000;
  sub_1A3A30350();
  sub_1A3A2F5C0();
  sub_1A38DF4FC(v4, v10, type metadata accessor for ChromeBottomBar);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  sub_1A38DEDBC(v10, v20 + v19, type metadata accessor for ChromeBottomBar);
  v21 = (v20 + ((v19 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = a2;
  v21[1] = a3;
  sub_1A38DF31C(&qword_1ED996CD0, MEMORY[0x1E697BEA8], MEMORY[0x1E697BEA0]);
  sub_1A38DF31C(&qword_1ED996CD8, MEMORY[0x1E697BE90], MEMORY[0x1E697BE98]);
  v22 = v30;
  sub_1A3A31250();

  (*(v31 + 8))(v15, v22);
  sub_1A38DF4FC(v29, v10, type metadata accessor for ChromeBottomBar);
  v23 = swift_allocObject();
  sub_1A38DEDBC(v10, v23 + v19, type metadata accessor for ChromeBottomBar);
  sub_1A38A08F8(&qword_1ED996CE0, &qword_1EB0FD748, &qword_1A3A818F0, MEMORY[0x1E697E8D0]);
  v24 = v32;
  v25 = v28;
  sub_1A3A31240();

  return (*(v33 + 8))(v25, v24);
}

void sub_1A38CF870(uint64_t a1, _BYTE *a2)
{
  v3 = type metadata accessor for ModeWheelGestureState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  if (*a2 == 1)
  {
    if (qword_1EB0FC210 != -1)
    {
      v11 = v7;
      swift_once();
      v7 = v11;
    }

    v10 = __swift_project_value_buffer(v7, qword_1EB101B38);
    sub_1A38DF4FC(v10, v9, type metadata accessor for ModeWheelGestureState);
    type metadata accessor for ChromeBottomBar(0);
    sub_1A38DF4FC(v9, v5, type metadata accessor for ModeWheelGestureState);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD678, &unk_1A3A6EC48);
    sub_1A3A30FA0();
    sub_1A38DF564(v9, type metadata accessor for ModeWheelGestureState);
  }
}

void sub_1A38CF9E0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if ((*a2 & 1) == 0)
  {
    v3 = (a3 + *(type metadata accessor for ChromeBottomBar(0) + 48));
    v4 = v3[1];
    v10[0] = *v3;
    v10[1] = v4;
    v6 = *v3;
    v5 = v3[1];
    v10[2] = v3[2];
    v7 = v6;
    v8 = v5;
    v9 = v3[2];
    sub_1A388F6D8(v10, v11, &qword_1EB0FD750, &qword_1A3A6EE30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD750, &qword_1A3A6EE30);
    sub_1A3A30FA0();
    v11[0] = v7;
    v11[1] = v8;
    v11[2] = v9;
    sub_1A388F740(v11, &qword_1EB0FD750, &qword_1A3A6EE30);
  }
}

uint64_t sub_1A38CFAC8()
{
  v1 = type metadata accessor for ChromeBottomBar(0);
  v60 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v61 = v2;
  v62 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD758, &qword_1A3A6EF30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v65 = &v56 - v8;
  v9 = sub_1A3A2F540();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  v59 = v1;
  v15 = *(v1 + 60);
  v63 = v0;
  v16 = *(v0 + v15);
  v17 = *(v0 + v15 + 8);
  sub_1A3A2EA60();
  v58 = v3;
  v57 = v4;
  v56 = v6;
  if ((v17 & 1) == 0)
  {
    sub_1A3A31C30();
    v18 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    v19 = j__swift_release(v16);
    (*(v4 + 8))(v6, v3, v19);
    v16 = v68;
  }

  if (v16)
  {
    swift_getKeyPath("@QiG");
    *&v68 = v16;
    sub_1A38DF31C(&qword_1ED996CF8, type metadata accessor for ChromeScenePhaseModel, &unk_1A3A78C78);
    sub_1A3A2F080();

    v20 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
    swift_beginAccess();
    v21 = v16 + v20;
    v22 = v65;
    (*(v10 + 16))(v65, v21, v9);

    (*(v10 + 56))(v22, 0, 1, v9);
    (*(v10 + 32))(v14, v22, v9);
  }

  else
  {
    v23 = v65;
    (*(v10 + 56))(v65, 1, 1, v9);
    type metadata accessor for ChromeScenePhase(0);
    sub_1A39A1420(v14);
    if ((*(v10 + 48))(v23, 1, v9) != 1)
    {
      sub_1A388F740(v23, &qword_1EB0FD758, &qword_1A3A6EF30);
    }
  }

  v24 = v64;
  (*(v10 + 104))(v64, *MEMORY[0x1E697BE38], v9);
  v25 = sub_1A3A2F530();
  v26 = *(v10 + 8);
  v26(v24, v9);
  v26(v14, v9);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

  v28 = v62;
  v27 = v63;
  sub_1A38DF4FC(v63, v62, type metadata accessor for ChromeBottomBar);
  sub_1A3A31AA0();
  v29 = sub_1A3A31A90();
  v30 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v31 = swift_allocObject();
  v32 = MEMORY[0x1E69E85E0];
  *(v31 + 16) = v29;
  *(v31 + 24) = v32;
  sub_1A38DEDBC(v28, v31 + v30, type metadata accessor for ChromeBottomBar);
  sub_1A38DF4FC(v27, v28, type metadata accessor for ChromeBottomBar);
  v33 = sub_1A3A31A90();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = v32;
  sub_1A38DEDBC(v28, v34 + v30, type metadata accessor for ChromeBottomBar);
  sub_1A3A311C0();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
  MEMORY[0x1A58F7010](&v66, v35);
  v36 = v66;

  if (v36)
  {
    return 0;
  }

  v37 = v59;
  v38 = (v27 + *(v59 + 48));
  v39 = v38[1];
  v68 = *v38;
  v69 = v39;
  v70 = v38[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD750, &qword_1A3A6EE30);
  sub_1A3A30F90();
  if (v67)
  {
    return 0;
  }

  v40 = v27 + *(v37 + 52);
  v41 = *v40;
  v42 = *(v40 + 8);
  sub_1A3A2EA60();
  v43 = v41;
  v44 = v58;
  v45 = v57;
  v46 = v56;
  if ((v42 & 1) == 0)
  {
    sub_1A3A31C30();
    v47 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v45 + 8))(v46, v44);
    v43 = v68;
  }

  swift_getKeyPath(byte_1A3A6EEB0, v56, v57, v58);
  *&v68 = v43;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v48 = *(v43 + 1154);

  if (v48)
  {
    return 0;
  }

  sub_1A3A2EA60();
  v49 = v41;
  if ((v42 & 1) == 0)
  {
    sub_1A3A31C30();
    v50 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v45 + 8))(v46, v44);
    v49 = v68;
  }

  swift_getKeyPath(byte_1A3A6EED8);
  *&v68 = v49;
  sub_1A3A2F080();

  v51 = *(v49 + 1152);

  if (v51)
  {
    return 0;
  }

  sub_1A3A2EA60();
  if ((v42 & 1) == 0)
  {
    sub_1A3A31C30();
    v53 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v45 + 8))(v46, v44);
    v41 = v68;
  }

  swift_getKeyPath("pQiG");
  *&v68 = v41;
  sub_1A3A2F080();

  v54 = *(v41 + 584);
  if (v54 >= 3)
  {
    *&v68 = *(v41 + 584);
    result = sub_1A3A321F0();
    __break(1u);
  }

  else
  {
    v55 = 1u >> (v54 & 7);

    return v55;
  }

  return result;
}

void sub_1A38D0458(uint64_t a1, _BYTE *a2)
{
  v3 = type metadata accessor for ModeWheelGestureState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  if ((*a2 & 1) == 0)
  {
    if (qword_1EB0FC210 != -1)
    {
      v11 = v7;
      swift_once();
      v7 = v11;
    }

    v10 = __swift_project_value_buffer(v7, qword_1EB101B38);
    sub_1A38DF4FC(v10, v9, type metadata accessor for ModeWheelGestureState);
    type metadata accessor for ChromeBottomBar(0);
    sub_1A38DF4FC(v9, v5, type metadata accessor for ModeWheelGestureState);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD678, &unk_1A3A6EC48);
    sub_1A3A30FA0();
    sub_1A38DF564(v9, type metadata accessor for ModeWheelGestureState);
  }
}

uint64_t sub_1A38D05C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + *(type metadata accessor for ChromeBottomBar(0) + 48));
  v4 = v3[1];
  v11[0] = *v3;
  v11[1] = v4;
  v6 = *v3;
  v5 = v3[1];
  v11[2] = v3[2];
  v8 = v6;
  v9 = v5;
  v10 = v3[2];
  sub_1A388F6D8(v11, v12, &qword_1EB0FD750, &qword_1A3A6EE30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD750, &qword_1A3A6EE30);
  sub_1A3A30FA0();
  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  return sub_1A388F740(v12, &qword_1EB0FD750, &qword_1A3A6EE30);
}

uint64_t sub_1A38D06A0()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ChromeBottomBar(0) + 52));
  v6 = *v5;
  v7 = *(v5 + 8);
  sub_1A3A2EA60();
  if ((v7 & 1) == 0)
  {
    sub_1A3A31C30();
    v8 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v6 = v15;
  }

  swift_getKeyPath(byte_1A3A6ED90);
  v15 = v6;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v9 = *(v6 + 24);
  v10 = *(v6 + 32);
  v11 = *(v6 + 40);
  v12 = *(v6 + 48);
  sub_1A38BCF64(v9, v10, v11, *(v6 + 48));

  if (v12 == 255)
  {
    return 0;
  }

  if (v12 != 1 || v9 != 35)
  {
    sub_1A38BC250(v9, v10, v11, v12);
    return 0;
  }

  return v12;
}

void sub_1A38D08B4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_1A3A2FEE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a2;
  v10 = a3 + *(type metadata accessor for ChromeBottomBar(0) + 52);
  v11 = *v10;
  v12 = *(v10 + 8);
  sub_1A3A2EA60();
  if ((v12 & 1) == 0)
  {
    sub_1A3A31C30();
    v13 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v11 = v17;
  }

  v14 = v11[153];
  v15 = v11[154];
  __swift_project_boxed_opaque_existential_1(v11 + 150, v14);
  (*(v15 + 8))(v9, 0, 0, 20, v11, v14, v15);

  if ((v9 & 1) == 0)
  {
    v16[7] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78, &qword_1A3A6EC40);
    sub_1A3A30300();
  }
}

double sub_1A38D0A94(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v5 = sub_1A3A2FEE0();
  v48 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD758, &qword_1A3A6EF30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - v9;
  v11 = sub_1A3A2F540();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v46 = *a2;
  v17 = type metadata accessor for ChromeBottomBar(0);
  v18 = (a3 + *(v17 + 20));
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v49) = v19;
  v50 = v20;
  LOBYTE(v51) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A3A30FA0();
  v42 = v17;
  v43 = a3;
  v21 = a3 + *(v17 + 60);
  v22 = *v21;
  LOBYTE(a3) = *(v21 + 8);
  sub_1A3A2EA60();
  v44 = v7;
  v45 = v5;
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v23 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    v24 = j__swift_release(v22);
    (*(v48 + 8))(v7, v5, v24);
    v22 = v49;
  }

  if (v22)
  {
    swift_getKeyPath("@QiG");
    v49 = v22;
    sub_1A38DF31C(&qword_1ED996CF8, type metadata accessor for ChromeScenePhaseModel, &unk_1A3A78C78);
    sub_1A3A2F080();

    v25 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
    swift_beginAccess();
    (*(v12 + 16))(v10, v22 + v25, v11);

    (*(v12 + 56))(v10, 0, 1, v11);
    (*(v12 + 32))(v16, v10, v11);
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    type metadata accessor for ChromeScenePhase(0);
    sub_1A39A1420(v16);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_1A388F740(v10, &qword_1EB0FD758, &qword_1A3A6EF30);
    }
  }

  v26 = v47;
  (*(v12 + 104))(v47, *MEMORY[0x1E697BE30], v11);
  sub_1A38DF31C(&qword_1ED996CF0, MEMORY[0x1E697BE48], MEMORY[0x1E697BE50]);
  v27 = sub_1A3A31790();
  v28 = *(v12 + 8);
  v28(v26, v11);
  v28(v16, v11);
  if ((v27 & 1) == 0 || v46 != 35)
  {
    v30 = v43 + *(v42 + 52);
    v31 = *v30;
    v32 = *(v30 + 8);
    sub_1A3A2EA60();
    v33 = v31;
    v35 = v44;
    v34 = v45;
    v36 = v48;
    if ((v32 & 1) == 0)
    {
      sub_1A3A31C30();
      v37 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v36 + 8))(v35, v34);
      v33 = v51;
    }

    swift_getKeyPath(byte_1A3A6ED90);
    v51 = v33;
    sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    if (*(v33 + 48) != 1)
    {
      goto LABEL_12;
    }

    swift_getKeyPath(byte_1A3A6EE88);
    v51 = v33;
    sub_1A3A2F080();

    v38 = *(v33 + 1168);

    if ((v38 & 1) == 0)
    {
      sub_1A3A2EA60();
      if ((v32 & 1) == 0)
      {
        sub_1A3A31C30();
        v39 = sub_1A3A305C0();
        sub_1A3A2F270();

        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v36 + 8))(v35, v34);
      }

      v40 = v46;
      sub_1A38BCF98(v46);
      sub_1A38EDFE0(v40, 0, 0, 1);
LABEL_12:
    }
  }

  return result;
}

double sub_1A38D1194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[0] = type metadata accessor for ChromeBottomBar(0);
  v4 = *(v20[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v20[0]);
  sub_1A38DF4FC(a3, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
  sub_1A3A31AA0();
  v6 = sub_1A3A31A90();
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_1A38DEDBC(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ChromeBottomBar);
  sub_1A38DF4FC(a3, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
  v10 = sub_1A3A31A90();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  sub_1A38DEDBC(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v7, type metadata accessor for ChromeBottomBar);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD728, &qword_1A3A6EDB8);
  sub_1A3A311C0();
  v12 = v24;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD730, &qword_1A3A6EDC0);
  MEMORY[0x1A58F7010](&v21, v13);
  v14 = v21;

  sub_1A3890F1C(v12);
  if (v14 != 35)
  {
    sub_1A3890F1C(v14);
    v16 = (a3 + *(v20[0] + 20));
    v17 = *v16;
    v18 = *(v16 + 1);
    LOBYTE(v22) = v17;
    v23 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
    v19 = sub_1A3A30F90();
    if ((v21 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v19);
      v20[-2] = a3;
      sub_1A3A314E0();
      sub_1A3A2F8A0();
    }
  }

  return result;
}

uint64_t sub_1A38D147C(uint64_t a1)
{
  type metadata accessor for ChromeBottomBar(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  return sub_1A3A30FA0();
}

uint64_t sub_1A38D14F8()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ChromeBottomBar(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v7 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A3670FF4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1A38D1650()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ChromeBottomBar(0) + 52);
  v6 = *v5;
  v7 = *(v5 + 8);
  sub_1A3A2EA60();
  v8 = v6;
  if ((v7 & 1) == 0)
  {
    sub_1A3A31C30();
    v9 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v8 = v23;
  }

  type metadata accessor for ChromeElementModel();
  v11 = sub_1A39B11D4(12, 2, v8, v10);

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  sub_1A3A2EA60();
  v12 = v6;
  if ((v7 & 1) == 0)
  {
    sub_1A3A31C30();
    v13 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v12 = v23;
  }

  swift_getKeyPath(byte_1A3A6EEB0);
  v23 = v12;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v14 = *(v12 + 1154);

  if (v14)
  {
    return 0;
  }

  sub_1A3A2EA60();
  v15 = v6;
  if ((v7 & 1) == 0)
  {
    sub_1A3A31C30();
    v16 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v15 = v23;
  }

  swift_getKeyPath(byte_1A3A6EED8);
  v23 = v15;
  sub_1A3A2F080();

  v17 = *(v15 + 1152);

  if (v17)
  {
    return 0;
  }

  sub_1A3A2EA60();
  if ((v7 & 1) == 0)
  {
    sub_1A3A31C30();
    v19 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v6 = v23;
  }

  swift_getKeyPath("pQiG");
  v23 = v6;
  sub_1A3A2F080();

  v20 = *(v6 + 584);
  if (v20 >= 3)
  {
    v23 = *(v6 + 584);
    result = sub_1A3A321F0();
    __break(1u);
  }

  else
  {
    v21 = 1u >> (v20 & 7);

    return v21;
  }

  return result;
}

uint64_t sub_1A38D1AD0()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ChromeBottomBar(0) + 52);
  v6 = *v5;
  v7 = *(v5 + 8);
  sub_1A3A2EA60();
  v8 = v6;
  if ((v7 & 1) == 0)
  {
    sub_1A3A31C30();
    v9 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v8 = v26;
  }

  type metadata accessor for ChromeElementModel();
  v11 = sub_1A39B11D4(8, 2, v8, v10);

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  sub_1A3A2EA60();
  v12 = v6;
  if ((v7 & 1) == 0)
  {
    sub_1A3A31C30();
    v13 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v12 = v26;
  }

  swift_getKeyPath(byte_1A3A6EE88);
  v26 = v12;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v14 = *(v12 + 1168);

  if (v14)
  {
    return 0;
  }

  sub_1A3A2EA60();
  v15 = v6;
  if ((v7 & 1) == 0)
  {
    sub_1A3A31C30();
    v16 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v15 = v26;
  }

  swift_getKeyPath(byte_1A3A6EEB0);
  v26 = v15;
  sub_1A3A2F080();

  v17 = *(v15 + 1154);

  if (v17)
  {
    return 0;
  }

  sub_1A3A2EA60();
  v18 = v6;
  if ((v7 & 1) == 0)
  {
    sub_1A3A31C30();
    v19 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v18 = v26;
  }

  swift_getKeyPath(byte_1A3A6EED8);
  v26 = v18;
  sub_1A3A2F080();

  v20 = *(v18 + 1152);

  if (v20)
  {
    return 0;
  }

  sub_1A3A2EA60();
  if ((v7 & 1) == 0)
  {
    sub_1A3A31C30();
    v22 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v6 = v26;
  }

  swift_getKeyPath("pQiG");
  v26 = v6;
  sub_1A3A2F080();

  v23 = *(v6 + 584);
  if (v23 >= 3)
  {
    v26 = *(v6 + 584);
    result = sub_1A3A321F0();
    __break(1u);
  }

  else
  {
    v24 = 1u >> (v23 & 7);

    return v24;
  }

  return result;
}

uint64_t sub_1A38D2024()
{
  v1 = v0;
  v2 = sub_1A3A2FEE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChromeBottomBar(0);
  v7 = (v1 + *(v6 + 52));
  v8 = *v7;
  v9 = *(v7 + 8);
  sub_1A3A2EA60();
  if ((v9 & 1) == 0)
  {
    sub_1A3A31C30();
    v10 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v8 = v23;
  }

  swift_getKeyPath(byte_1A3A6ED90);
  *&v23 = v8;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v12 = *(v8 + 24);
  v11 = *(v8 + 32);
  v13 = *(v8 + 40);
  v14 = *(v8 + 48);
  sub_1A38BCF64(v12, v11, v13, *(v8 + 48));

  if (v14 != 1)
  {
    if (v14 == 255)
    {
LABEL_9:
      v19 = (v1 + *(v6 + 48));
      v20 = v19[1];
      v23 = *v19;
      v24 = v20;
      v25 = v19[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD750, &qword_1A3A6EE30);
      sub_1A3A30F90();
      return sub_1A38D14F8();
    }

    v15 = v12;
    v16 = v11;
    v17 = v13;
    v18 = v14;
LABEL_8:
    sub_1A38BC250(v15, v16, v17, v18);
    goto LABEL_9;
  }

  if (v12 == 35)
  {
    v15 = 35;
    v16 = v11;
    v17 = v13;
    v18 = 1;
    goto LABEL_8;
  }

  return sub_1A38BC250(v12, v11, v13, 1);
}

uint64_t sub_1A38D22D8()
{
  v1 = v0;
  v2 = sub_1A3A2FEE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChromeBottomBar(0);
  v7 = (v1 + *(v6 + 52));
  v8 = *v7;
  v9 = *(v7 + 8);
  sub_1A3A2EA60();
  if ((v9 & 1) == 0)
  {
    sub_1A3A31C30();
    v10 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v8 = v23;
  }

  swift_getKeyPath(byte_1A3A6ED90);
  *&v23 = v8;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v12 = *(v8 + 24);
  v11 = *(v8 + 32);
  v13 = *(v8 + 40);
  v14 = *(v8 + 48);
  sub_1A38BCF64(v12, v11, v13, *(v8 + 48));

  if (v14 == 1)
  {
    if (v12 != 35)
    {
      sub_1A38BC250(v12, v11, v13, 1);
      goto LABEL_11;
    }

    v15 = 35;
    v16 = v11;
    v17 = v13;
    v18 = 1;
  }

  else
  {
    if (v14 == 255)
    {
      goto LABEL_11;
    }

    v15 = v12;
    v16 = v11;
    v17 = v13;
    v18 = v14;
  }

  sub_1A38BC250(v15, v16, v17, v18);
LABEL_11:
  v19 = (v1 + *(v6 + 48));
  v20 = v19[1];
  v23 = *v19;
  v24 = v20;
  v25 = v19[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD750, &qword_1A3A6EE30);
  sub_1A3A30F90();
  return sub_1A38D14F8();
}